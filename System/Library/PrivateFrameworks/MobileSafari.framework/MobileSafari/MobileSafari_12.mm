uint64_t sub_18B9BE600(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR___SFTabOverview_handlers + 64);
    v6 = result;
    sub_18BC1E1A8();

    v5(a1, a2);
  }

  return result;
}

uint64_t sub_18B9BE69C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR___SFTabOverview_handlers + 256);
    v6 = result;
    sub_18BC1E1A8();

    v5(a1, a2);
  }

  return result;
}

uint64_t sub_18B9BE738()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  v29 = v0;
  v7 = sub_18B82FEA0();
  memset(v42, 0, sizeof(v42));
  v43 = xmmword_18BC3FCA0;
  result = swift_storeEnumTagMultiPayload();
  if (*(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x190)))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
    v10 = swift_allocBox();
    v12 = v11;
    v13 = *(v9 + 48);
    sub_18B833990(v42, v11);
    sub_18B7CA054(v6, v12 + v13, &unk_1EA9D92F0);
    *v3 = v10;
    swift_storeEnumTagMultiPayload();
    sub_18BC1E1A8();
    sub_18B9C9958(0x746954656772616CLL, 0xEA0000000000656CLL, v3);

    sub_18B988BAC(v3, &unk_1EA9D92F0);
    sub_18B988BAC(v6, &unk_1EA9D92F0);
    sub_18B833D9C(v42);
    type metadata accessor for TabOverview.LargeTitleView();
    v14 = swift_dynamicCastClassUnconditional();
    v15 = *(v14 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);
    type metadata accessor for TabOverviewLargeTitleView();
    v16 = swift_dynamicCastClassUnconditional();
    v38[0] = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
    v17 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 64);
    v19 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 16);
    v18 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 32);
    v38[3] = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 48);
    v38[4] = v17;
    v38[1] = v19;
    v38[2] = v18;
    v21 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 96);
    v20 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 112);
    v22 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 80);
    *(v39 + 9) = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 121);
    v38[6] = v21;
    v39[0] = v20;
    v38[5] = v22;
    v23 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 112);
    v36 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 96);
    v37[0] = v23;
    *(v37 + 9) = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 121);
    v24 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 48);
    v32 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 32);
    v33 = v24;
    v25 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 80);
    v34 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 64);
    v35 = v25;
    v26 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 16);
    v30 = *(v16 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
    v31 = v26;
    v27 = v15;
    sub_18B9A2574(v38, v44);
    sub_18B9BE330(&v30, v29);
    v44[6] = v36;
    v45[0] = v37[0];
    *(v45 + 9) = *(v37 + 9);
    v44[2] = v32;
    v44[3] = v33;
    v44[4] = v34;
    v44[5] = v35;
    v44[0] = v30;
    v44[1] = v31;
    sub_18B9A2574(v44, v40);
    sub_18B9A2438(v44);
    sub_18B9A25AC(v44);

    v40[6] = v36;
    v41[0] = v37[0];
    *(v41 + 9) = *(v37 + 9);
    v40[2] = v32;
    v40[3] = v33;
    v40[4] = v34;
    v40[5] = v35;
    v40[0] = v30;
    v40[1] = v31;
    sub_18B9A25AC(v40);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_18B9BEA84()
{
  v1 = *(v0 + OBJC_IVAR___SFTabOverview_contentBelowSearchBarView);
  [v1 setUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18BC42C20;
  *(inited + 32) = v1;
  v3 = *(v0 + OBJC_IVAR___SFTabOverview_searchBarContainerView);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR___SFTabOverview_overlayContainerView);
  *(inited + 48) = v4;
  v5 = *(v0 + OBJC_IVAR___SFTabOverview_transitionContainerView);
  *(inited + 56) = v5;
  v6 = inited & 0xC000000000000001;
  v7 = v1;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  if ((inited & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x18CFFD010](0, inited);
  }

  else
  {
    v11 = v7;
  }

  v12 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
  v13 = v11;
  v14 = sub_18B82FEA0();
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v13 setBounds_];
  [*(v0 + v12) bounds];
  x = v77.origin.x;
  y = v77.origin.y;
  width = v77.size.width;
  height = v77.size.height;
  MidX = CGRectGetMidX(v77);
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  [v13 setCenter_];

  if (v6)
  {
    v28 = MEMORY[0x18CFFD010](1, inited);
  }

  else
  {
    v28 = *(inited + 40);
  }

  v29 = v28;
  v30 = sub_18B82FEA0();
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  [v29 setBounds_];
  [*(v0 + v12) bounds];
  v39 = v79.origin.x;
  v40 = v79.origin.y;
  v41 = v79.size.width;
  v42 = v79.size.height;
  v43 = CGRectGetMidX(v79);
  v80.origin.x = v39;
  v80.origin.y = v40;
  v80.size.width = v41;
  v80.size.height = v42;
  [v29 setCenter_];

  if (v6)
  {
    v44 = MEMORY[0x18CFFD010](2, inited);
  }

  else
  {
    v44 = *(inited + 48);
  }

  v45 = v44;
  v46 = sub_18B82FEA0();
  [v46 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  [v45 setBounds_];
  [*(v0 + v12) bounds];
  v55 = v81.origin.x;
  v56 = v81.origin.y;
  v57 = v81.size.width;
  v58 = v81.size.height;
  v59 = CGRectGetMidX(v81);
  v82.origin.x = v55;
  v82.origin.y = v56;
  v82.size.width = v57;
  v82.size.height = v58;
  [v45 setCenter_];

  if (v6)
  {
    v60 = MEMORY[0x18CFFD010](3, inited);
  }

  else
  {
    v60 = *(inited + 56);
  }

  v61 = v60;
  v62 = sub_18B82FEA0();
  [v62 bounds];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;

  [v61 setBounds_];
  [*(v0 + v12) bounds];
  v71 = v83.origin.x;
  v72 = v83.origin.y;
  v73 = v83.size.width;
  v74 = v83.size.height;
  v75 = CGRectGetMidX(v83);
  v84.origin.x = v71;
  v84.origin.y = v72;
  v84.size.width = v73;
  v84.size.height = v74;
  [v61 setCenter_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [v8 bounds];
  [v8 setBounds_];
  [v8 center];
  return [v8 setCenter_];
}

uint64_t sub_18B9BEEE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = sub_18B82FEA0();
  v18 = a1;
  sub_18B7F44EC(a1, v25);
  result = swift_storeEnumTagMultiPayload();
  if (*(v8 + *((*MEMORY[0x1E69E7D40] & *v8) + 0x190)))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
    v11 = swift_allocBox();
    v13 = v12;
    v14 = *(v10 + 48);
    sub_18B833990(v25, v12);
    sub_18B7CA054(v7, v13 + v14, &unk_1EA9D92F0);
    *v4 = v11;
    swift_storeEnumTagMultiPayload();
    sub_18BC1E1A8();
    sub_18B9C9958(0x79616C7265766FLL, 0xE700000000000000, v4);

    sub_18B988BAC(v4, &unk_1EA9D92F0);
    sub_18B988BAC(v7, &unk_1EA9D92F0);
    sub_18B833D9C(v25);
    type metadata accessor for TabOverview.OverlayView();
    v15 = swift_dynamicCastClassUnconditional();
    sub_18B7F44EC(v18, v24);
    if (swift_dynamicCast())
    {
      v25[1] = v20;
      v25[2] = v21;
      v25[3] = v22;
      v25[4] = v23;
      v25[0] = v19;
      v16 = *(v15 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);
      type metadata accessor for ContentUnavailableView();
      swift_dynamicCastClassUnconditional();
      *(&v20 + 1) = sub_18BC1FCD8();
      *&v21 = MEMORY[0x1E69DC1D0];
      __swift_allocate_boxed_opaque_existential_0Tm(&v19);
      v17 = v16;
      sub_18BA11D38();
      sub_18BC21478();

      sub_18B9D5014(v25);
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_18B9BF1DC(char *a1)
{
  sub_18B83713C(&a1[OBJC_IVAR___SFTabOverview_content], *&a1[OBJC_IVAR___SFTabOverview_searchState], *&a1[OBJC_IVAR___SFTabOverview_searchState + 8], &v6);
  v2 = &a1[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration];
  v3 = *&a1[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 16];
  v8 = *&a1[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration];
  v9[0] = v3;
  *(v9 + 9) = *&a1[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 25];
  v4 = v7[0];
  *v2 = v6;
  *(v2 + 1) = v4;
  *(v2 + 25) = *(v7 + 9);
  sub_18B836E74(&v8);

  return [a1 layoutIfNeeded];
}

void sub_18B9BF278(uint64_t a1)
{
  v2 = sub_18B82FEA0();
  v15 = sub_18B9CAE54(a1);

  if (v15)
  {
    type metadata accessor for TabOverview.ItemView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for TabOverviewItemView();
      v5 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);
      [v4 transform];
      CGAffineTransformDecompose(&v16, &transform);
      v6 = sub_18BC21588();
      v7 = sub_18BC20B98();
      [v5 _setVelocity_forKey_];

      v8 = sub_18BC21588();
      v9 = sub_18BC20B98();
      [v5 _setTargetVelocity_forKey_];

      v10 = *MEMORY[0x1E69DDA98];
      if (*MEMORY[0x1E69DDA98])
      {
        v11 = swift_allocObject();
        *(v11 + 16) = v5;
        *&transform.tx = sub_18B9D5004;
        *&transform.ty = v11;
        *&transform.a = MEMORY[0x1E69E9820];
        *&transform.b = 1107296256;
        *&transform.c = sub_18B7B0DB0;
        *&transform.d = &block_descriptor_549;
        v12 = _Block_copy(&transform);
        v13 = v5;
        v14 = v10;

        [v14 _performBlockAfterCATransactionCommits_];
        _Block_release(v12);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_18B9BF514(void *a1)
{
  v2 = sub_18BC21588();
  v3 = sub_18BC20B98();
  [a1 _setVelocity_forKey_];

  v4 = sub_18BC21588();
  v5 = sub_18BC20B98();
  [a1 _setTargetVelocity_forKey_];
}

id sub_18B9BF5FC(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = sub_18B82FEA0();
  v6 = [v5 *a3];

  return v6;
}

BOOL sub_18B9BF64C(uint64_t a1, uint64_t a2)
{
  if (sub_18BC1EDF8())
  {
    return *&v2[OBJC_IVAR___SFTabOverview_searchState + 8] != 0;
  }

  sub_18B7CA054(a2, v16, &qword_1EA9D5220);
  v6 = v17;
  if (v17)
  {
    v7 = __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_18BC21FB8();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for TabOverview();
  v15.receiver = v2;
  v15.super_class = v13;
  v14 = objc_msgSendSuper2(&v15, sel_canPerformAction_withSender_, a1, v12);
  swift_unknownObjectRelease();
  return v14;
}

id sub_18B9BF880()
{
  v1 = v0;
  v2 = sub_18B82FEA0();
  [v2 adjustedContentInset];
  v49 = v4;
  v50 = v3;
  v47 = v6;
  v48 = v5;
  [v2 bounds];
  v8 = v7;
  v10 = v9;
  v45 = v12;
  v46 = v11;
  sub_18B7E0E4C();
  v43 = v14;
  v44 = v13;
  v41 = v16;
  v42 = v15;
  [v2 contentSize];
  v18 = v17;
  v20 = v19;
  [v2 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [v2 isTracking];

  v53 = v50;
  v54 = v49;
  v55 = v48;
  v56 = v47;
  v57 = v8;
  v58 = v10;
  v59 = v46;
  v60 = v45;
  v61 = v44;
  v62 = v43;
  v63 = v42;
  v64 = v41;
  v65 = v18;
  v66 = v20;
  v67 = v22;
  v68 = v24;
  v69 = v26;
  v70 = v28;
  v71 = v29;
  sub_18B829B78();
  v31 = v30;
  v33 = v32;
  v34 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
  result = [*(v1 + OBJC_IVAR___SFTabOverview____lazy_storage___collectionView) contentOffset];
  if (v37 != v31 || v36 != v33)
  {
    v39 = *(v1 + v34);
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    v40 = v39;
    sub_18B9CA280(v51, v31, v33);

    return sub_18B988BAC(v51, &unk_1EA9D5060);
  }

  return result;
}

uint64_t sub_18B9BFA20(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for RetargetableTransitionCoordinator();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 24) = MEMORY[0x1E69E7CC0];
  *(v5 + 32) = v6;
  *(v5 + 40) = 1;
  *(v5 + 16) = a2;
  v9[3] = v4;
  v9[4] = &off_1EFF27FD8;
  v9[0] = v5;
  sub_18B7D8090(a2);
  sub_18BC1E1A8();
  sub_18B861588(a1, v9);
  sub_18B988BAC(v9, &unk_1EA9D5060);
  v7 = *(v5 + 16);
  swift_retain_n();
  sub_18B7D8090(v7);
  sub_18B7EAA64(sub_18B9D4FF4, v5, sub_18B9D4FFC, v5, v7);

  sub_18B7EBAE8(v7);
  *(v5 + 40) = 0;
}

uint64_t sub_18B9BFB44(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_18BC21FD8();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_18B9BFB88()
{
  v1 = sub_18BC1EE48();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v40 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v43 = v0;
  v9 = sub_18B82FEA0();
  memset(v44, 0, sizeof(v44));
  v45 = xmmword_18BC42B60;
  result = swift_storeEnumTagMultiPayload();
  if (*(v9 + *((*MEMORY[0x1E69E7D40] & *v9) + 0x190)))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
    v12 = swift_allocBox();
    v14 = v13;
    v15 = *(v11 + 48);
    sub_18B833990(v44, v13);
    sub_18B7CA054(v8, v14 + v15, &unk_1EA9D92F0);
    *v5 = v12;
    swift_storeEnumTagMultiPayload();
    sub_18BC1E1A8();
    sub_18B9C9958(0x6142686372616573, 0xE900000000000072, v5);

    sub_18B988BAC(v5, &unk_1EA9D92F0);
    sub_18B988BAC(v8, &unk_1EA9D92F0);
    sub_18B833D9C(v44);
    type metadata accessor for TabOverview.SearchBarContainerView();
    v16 = swift_dynamicCastClassUnconditional();
    v17 = *(v16 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);
    type metadata accessor for SearchBar();
    v18 = swift_dynamicCastClassUnconditional();
    v19 = swift_allocObject();
    v20 = v43;
    swift_unknownObjectWeakInit();
    v21 = &v18[OBJC_IVAR____TtC12MobileSafari9SearchBar_didBeginSearching];
    *v21 = sub_18B9D4E7C;
    v21[1] = v19;
    v22 = v17;

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = &v18[OBJC_IVAR____TtC12MobileSafari9SearchBar_didEndEditing];
    *v24 = sub_18B9D4E84;
    v24[1] = v23;

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = &v18[OBJC_IVAR____TtC12MobileSafari9SearchBar_didEndSearching];
    *v26 = sub_18B9D4E8C;
    v26[1] = v25;

    v27 = v40;
    sub_18BC1EE38();
    sub_18BC1EE28();
    (*(v41 + 8))(v27, v42);
    v28 = *&v18[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField];
    v29 = sub_18BC20B98();

    [v28 setPlaceholder_];

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = &v18[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchQueryDidChange];
    *v31 = sub_18B9D4E94;
    v31[1] = v30;

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = &v18[OBJC_IVAR____TtC12MobileSafari9SearchBar_shouldBeginSearching];
    *v33 = sub_18B9D4E9C;
    v33[1] = v32;

    v34 = *(v20 + OBJC_IVAR___SFTabOverview_searchState + 8);
    v35 = OBJC_IVAR____TtC12MobileSafari9SearchBar_showsDoneButton;
    v18[OBJC_IVAR____TtC12MobileSafari9SearchBar_showsDoneButton] = v34 != 0;
    if (v34)
    {
      sub_18BB871BC();
    }

    else
    {
      sub_18BB871D0();
    }

    v36 = objc_opt_self();
    sub_18B7B0AC0(0, &qword_1EA9D4700);
    v37 = sub_18BC20D88();

    [v36 deactivateConstraints_];

    if (v18[v35] == 1)
    {
      sub_18BB871D0();
    }

    else
    {
      sub_18BB871BC();
    }

    v38 = sub_18BC20D88();

    [v36 activateConstraints_];

    [v18 setNeedsLayout];
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18B9C0158()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*&Strong[OBJC_IVAR___SFTabOverview_searchState + 8])
    {
    }

    else
    {
      type metadata accessor for AnimationSettings();
      memset(v3, 0, sizeof(v3));
      inited = swift_initStaticObject();
      sub_18B9C0F34(0, 0xE000000000000000, v3, inited);

      sub_18B988BAC(v3, &unk_1EA9D53A0);
    }
  }
}

void sub_18B9C0210()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___SFTabOverview_searchState + 8);
    if (v2)
    {
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *(Strong + OBJC_IVAR___SFTabOverview_searchState) & 0xFFFFFFFFFFFFLL;
      }

      if (!v3)
      {
        sub_18B86FFDC(1);
      }
    }
  }
}

void sub_18B9C0294()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*&Strong[OBJC_IVAR___SFTabOverview_searchState + 8])
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
      v2 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
      v5 = MEMORY[0x1E69E6370];
      v6 = v2;
      v4[0] = 0;
      sub_18B8550A8(v4, 0xD000000000000014, 0x800000018BC62740);
      type metadata accessor for AnimationSettings();
      inited = swift_initStaticObject();
      sub_18B9C0F34(0, 0, &v6, inited);

      sub_18B988BAC(&v6, &unk_1EA9D53A0);
    }

    else
    {
    }
  }
}

void sub_18B9C0394(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*&Strong[OBJC_IVAR___SFTabOverview_searchState + 8])
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      v6 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
      v8 = MEMORY[0x1E69E6370];
      v9 = v6;
      v7[0] = 0;
      sub_18B8550A8(v7, 0xD000000000000014, 0x800000018BC62740);
      if (qword_1EA9D2200 != -1)
      {
        swift_once();
      }

      sub_18B9C0F34(a1, a2, &v9, qword_1EA9F7A90);

      sub_18B988BAC(&v9, &unk_1EA9D53A0);
    }

    else
    {
    }
  }
}

uint64_t sub_18B9C04C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR___SFTabOverview_handlers + 288);
    v2 = Strong;
    sub_18BC1E1A8();

    v3 = v1();
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_18B9C0554()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  *&v36 = v0;
  v7 = sub_18B82FEA0();
  memset(v43, 0, 24);
  *&v43[24] = xmmword_18BC42B70;
  result = swift_storeEnumTagMultiPayload();
  if (*(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x190)))
  {
    *&v35 = "searchBarIsCollapsed";
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
    v10 = swift_allocBox();
    v12 = v11;
    v13 = *(v9 + 48);
    sub_18B833990(v43, v11);
    sub_18B7CA054(v6, v12 + v13, &unk_1EA9D92F0);
    *v3 = v10;
    swift_storeEnumTagMultiPayload();
    sub_18BC1E1A8();
    sub_18B9C9958(0xD000000000000013, v35 | 0x8000000000000000, v3);

    sub_18B988BAC(v3, &unk_1EA9D92F0);
    sub_18B988BAC(v6, &unk_1EA9D92F0);
    sub_18B833D9C(v43);
    type metadata accessor for TabOverview.SearchBarBackgroundContainerView();
    v14 = swift_dynamicCastClassUnconditional();
    v32 = OBJC_IVAR____TtCC12MobileSafari11TabOverview32SearchBarBackgroundContainerView_backgroundView;
    v15 = *(v14 + OBJC_IVAR____TtCC12MobileSafari11TabOverview32SearchBarBackgroundContainerView_backgroundView);
    v16 = v36 + OBJC_IVAR___SFTabOverview_configuration;
    swift_beginAccess();
    if (*(v16 + 104) == 1)
    {
      v17 = qword_1EA9D2240;
      v18 = v15;
      if (v17 != -1)
      {
        swift_once();
      }

      v45 = xmmword_1EA9F7C30;
      v46 = *&qword_1EA9F7C40;
      *&v43[32] = xmmword_1EA9F7C10;
      v44 = xmmword_1EA9F7C20;
      *v43 = xmmword_1EA9F7BF0;
      *&v43[16] = unk_1EA9F7C00;
      v19 = qword_1EA9F7C50;
      v47 = qword_1EA9F7C50;
      v20 = byte_1EA9F7C48;
      v35 = xmmword_1EA9F7C20;
      v36 = xmmword_1EA9F7C30;
      v21 = *(&xmmword_1EA9F7C10 + 1);
      v22 = xmmword_1EA9F7BF0;
      v33 = *&v43[8];
      v34 = *&v43[24];
      sub_18B9D4798(v43, v39);
      v23 = 4;
    }

    else
    {
      v24 = qword_1EA9D2238;
      v25 = v15;
      if (v24 != -1)
      {
        swift_once();
      }

      v45 = xmmword_1EA9F7BC8;
      v46 = *&qword_1EA9F7BD8;
      *&v43[32] = xmmword_1EA9F7BA8;
      v44 = xmmword_1EA9F7BB8;
      *v43 = xmmword_1EA9F7B88;
      *&v43[16] = unk_1EA9F7B98;
      v19 = qword_1EA9F7BE8;
      v47 = qword_1EA9F7BE8;
      v20 = byte_1EA9F7BE0;
      v23 = qword_1EA9F7BD8;
      v35 = xmmword_1EA9F7BB8;
      v36 = xmmword_1EA9F7BC8;
      v21 = *(&xmmword_1EA9F7BA8 + 1);
      v22 = xmmword_1EA9F7B88;
      v33 = *&v43[8];
      v34 = *&v43[24];
      sub_18B9D4798(v43, v39);
    }

    *(v39 + 8) = v33;
    *(&v39[1] + 8) = v34;
    *&v39[0] = v22;
    *(&v39[2] + 1) = v21;
    v39[3] = v35;
    v39[4] = v36;
    *&v40 = v23;
    BYTE8(v40) = v20;
    v41 = v19;
    v47 = v19;
    v45 = v36;
    v46 = v40;
    *v43 = v39[0];
    *&v43[16] = v39[1];
    *&v43[32] = v39[2];
    v44 = v35;
    sub_18B9FA178(v43);
    sub_18B9D47F4(v39);

    v26 = *(v16 + 56);
    v38[0] = *(v16 + 40);
    v38[1] = v26;
    v27 = *(v16 + 88);
    v38[2] = *(v16 + 72);
    v38[3] = v27;
    if (*(&v38[0] + 1))
    {
      v42[0] = v38[0];
      v28 = *(v16 + 72);
      v42[1] = *(v16 + 56);
      v42[2] = v28;
      v42[3] = *(v16 + 88);
      v29 = *(v14 + v32);
      v29[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_coordinatesGroupBackdropCaptureView] = 0;
      sub_18B7CA054(v38, &v37, &unk_1EA9D50A0);
      v30 = v29;
      sub_18B9FA27C(v42);
      sub_18B988BAC(v38, &unk_1EA9D50A0);
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18B9C09C0(void (*a1)(uint64_t, unint64_t))
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR___SFTabOverview_configuration;
  swift_beginAccess();
  if (*(v4 + 129) == 1)
  {
    v5 = sub_18B82FEA0();
    v6 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x98);
    swift_beginAccess();
    LODWORD(v6) = *(v5 + v6);

    if (v6 == 1)
    {
      v34 = 0;
      v33 = 0u;
      v32 = 0u;
      v31 = 0u;
      v7 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
      *(&v26 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v25) = 0;
      sub_18B7B1AD4(&v25, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v7;
      sub_18BAA7848(v29, 0xD000000000000014, 0x800000018BC62740, isUniquelyReferenced_nonNull_native);
      aBlock = v28;
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      sub_18B861588(&aBlock, &v25);
      sub_18B988BAC(&v25, &unk_1EA9D5060);
      sub_18B8303BC(&aBlock);
      [*(v2 + OBJC_IVAR___SFTabOverview____lazy_storage___collectionView) layoutIfNeeded];
      v9 = sub_18B9BB2C4();
      if (v9)
      {
        v10 = v9;
        v11 = OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField;
        v12 = [*(v9 + OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField) text];
        if (v12)
        {
          v13 = v12;
          v14 = sub_18BC20BD8();
          v16 = v15;
        }

        else
        {
          v14 = 0;
          v16 = 0xE000000000000000;
        }

        a1(v14, v16);

        v17 = *&v10[v11];
        v18 = sub_18BC20B98();

        [v17 setText_];

        v19 = swift_allocObject();
        *(v19 + 16) = v10;
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = sub_18B9D4E6C;
        *(v21 + 24) = v19;
        v22 = swift_allocObject();
        *(v22 + 16) = sub_18B9D53AC;
        *(v22 + 24) = v21;
        *(&v32 + 1) = sub_18B9D53B0;
        *&v33 = v22;
        aBlock = MEMORY[0x1E69E9820];
        *&v31 = 1107296256;
        *(&v31 + 1) = sub_18B7E3BF4;
        *&v32 = &block_descriptor_494;
        v23 = _Block_copy(&aBlock);
        v24 = v10;
        sub_18BC1E1A8();
        sub_18BC1E1A8();

        [v20 performWithoutAnimation_];
        _Block_release(v23);
        LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

        if (v20)
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_18B9C0D70(uint64_t result, uint64_t a2)
{
  v4 = result;
  v6 = *(v2 + OBJC_IVAR___SFTabOverview_searchState);
  v5 = *(v2 + OBJC_IVAR___SFTabOverview_searchState + 8);
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    v9 = 1;
    goto LABEL_15;
  }

  if (v6 != result || v5 != a2)
  {
    result = sub_18BC21FD8();
    if ((result & 1) == 0)
    {
LABEL_10:
      v8 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v8 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        memset(v12, 0, sizeof(v12));
        if (!a2)
        {
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      v9 = 0;
LABEL_15:
      memset(v12 + 8, 0, 56);
      sub_18BC1E3F8();
      *&v12[0] = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
      memset(v11, 0, sizeof(v11));
      sub_18B8550A8(v11, 0xD000000000000014, 0x800000018BC62740);
      if (v9)
      {
        if (a2)
        {
LABEL_17:
          type metadata accessor for AnimationSettings();
          inited = swift_initStaticObject();
LABEL_24:
          sub_18BC1E1A8();
          sub_18B9C0F34(v4, a2, v12, inited);

          return sub_18B988BAC(v12, &unk_1EA9D53A0);
        }
      }

      else
      {

        if (!a2)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      if (qword_1EA9D2200 != -1)
      {
        swift_once();
      }

      inited = qword_1EA9F7A90;
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t sub_18B9C0F34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_18B864B68()[5];
  sub_18BC1E3F8();

  if (v10)
  {
  }

  sub_18BC1E3F8();
  sub_18B9BB0F8(a1, a2);
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BA3FB44(a1, a2);

  sub_18B7CA054(a3, v14, &unk_1EA9D53A0);
  if (*&v14[0])
  {
    v15[0] = v14[0];
    v15[1] = v14[1];
    v15[2] = v14[2];
    v15[3] = v14[3];
    sub_18B9BFA20(v15, a4);
    sub_18B8303BC(v15);
  }

  else
  {
    sub_18B988BAC(v14, &unk_1EA9D53A0);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = (a2 != 0) ^ (v10 != 0);
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a4;
  sub_18BC1E3F8();
  v12 = v5;
  sub_18B7D8090(a4);
  sub_18B7EAA64(sub_18B9D4E58, v11, CGRectMake, 0, a4);
}

uint64_t sub_18B9C10EC(char *a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_18B83713C(&a1[OBJC_IVAR___SFTabOverview_content], *&a1[OBJC_IVAR___SFTabOverview_searchState], *&a1[OBJC_IVAR___SFTabOverview_searchState + 8], &v32);
  v9 = &a1[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration];
  v10 = *&a1[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 16];
  v34 = *&a1[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration];
  v35[0] = v10;
  *(v35 + 9) = *&a1[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 25];
  v11 = v33[0];
  *v9 = v32;
  *(v9 + 1) = v11;
  *(v9 + 25) = *(v33 + 9);
  result = sub_18B836E74(&v34);
  if (a2)
  {
    if (!a4)
    {
      v13 = sub_18B9BB2C4();
      if (v13)
      {
        v14 = OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField;
        v15 = *(v13 + OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField);
        v16 = v13;
        v17 = sub_18BC20B98();
        [v15 setText_];

        [*&v16[v14] resignFirstResponder];
        v18 = *&v16[OBJC_IVAR____TtC12MobileSafari9SearchBar_didEndSearching];
        v19 = sub_18BC1E1A8();
        v18(v19);
      }

      [a1 becomeFirstResponder];
    }

    v20 = sub_18B9BB2C4();
    if (v20)
    {
      v21 = v20;
      v22 = OBJC_IVAR____TtC12MobileSafari9SearchBar_showsDoneButton;
      *(v20 + OBJC_IVAR____TtC12MobileSafari9SearchBar_showsDoneButton) = a4 != 0;
      if (a4)
      {
        sub_18BB871BC();
      }

      else
      {
        sub_18BB871D0();
      }

      v23 = objc_opt_self();
      sub_18B7B0AC0(0, &qword_1EA9D4700);
      v24 = sub_18BC20D88();

      [v23 deactivateConstraints_];

      if (v21[v22] == 1)
      {
        sub_18BB871D0();
      }

      else
      {
        sub_18BB871BC();
      }

      v25 = sub_18BC20D88();

      [v23 activateConstraints_];

      [v21 setNeedsLayout];
    }

    v26 = sub_18B9BB2C4();
    if (v26)
    {
      v27 = v26;
      v28 = sub_18BB874E4();

      [v28 _setActive_];
    }

    *((*(**&a1[OBJC_IVAR___SFTabOverview_gridLayout] + 848))() + 97) = a4 != 0;

    sub_18B8487D0(MEMORY[0x1E69E7CD0], 1);

    if (!(a5 >> 62))
    {
      sub_18BC1E1A8();
      v29 = sub_18B82FEA0();
      v30 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x1B8);
      v31 = *(v29 + v30);
      *(v29 + v30) = a5;
      [*&a1[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView] layoutIfNeeded];
      *(v29 + v30) = v31;

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_18B9C146C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5088);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  v12 = _s7SectionVMa_1();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - v17;
  v33 = a1;
  sub_18B7CA054(a1, v11, &unk_1EA9D92F0);
  v32[1] = v6;
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_18B829704(v11, v18, _s7SectionVMa_1);
    v19 = v18;
    if (*(v1 + OBJC_IVAR___SFTabOverview_headerRegistration))
    {
      v32[0] = *(v1 + OBJC_IVAR___SFTabOverview_headerRegistration + 8);
      v11 = *(v1 + OBJC_IVAR___SFTabOverview_content + 96);
      MEMORY[0x1EEE9AC00](v18);
      v34 = v20;
      swift_unknownObjectRetain();
      sub_18BC1E3F8();
      sub_18BAD1F3C(sub_18B9D4DD0, v11, v5);

      if ((*(v13 + 48))(v5, 1, v12) != 1)
      {
        sub_18B829704(v5, v15, _s7SectionVMa_1);
        v21 = sub_18B82FEA0();
        v36 = 0;
        memset(v35, 0, sizeof(v35));
        if (*(v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x190)))
        {
          v22 = v21;
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
          v24 = swift_allocBox();
          v26 = v25;
          v27 = *(v23 + 48);
          sub_18B833990(v35, v25);
          sub_18B7CA054(v33, v26 + v27, &unk_1EA9D92F0);
          *v8 = v24;
          swift_storeEnumTagMultiPayload();
          sub_18BC1E1A8();
          sub_18B9C9958(0x726564616568, 0xE600000000000000, v8);
          v29 = v28;

          sub_18B988BAC(v8, &unk_1EA9D92F0);
          sub_18B833D9C(v35);
          ObjectType = swift_getObjectType();
          sub_18BB7C584(v29, v15, ObjectType, v32[0]);
          swift_unknownObjectRelease();
          sub_18B815380(v15, _s7SectionVMa_1);
          sub_18B815380(v34, _s7SectionVMa_1);
          return v29;
        }

        __break(1u);
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
      sub_18B988BAC(v5, &qword_1EA9D5088);
      v19 = v34;
    }

    sub_18B815380(v19, _s7SectionVMa_1);
    goto LABEL_11;
  }

LABEL_7:
  sub_18B988BAC(v11, &unk_1EA9D92F0);
LABEL_11:
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18B9C1948(uint64_t a1, uint64_t a2)
{
  if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
  {
    v4 = _s7SectionVMa_1();
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_18B9C19AC()
{
  if (*(v0 + OBJC_IVAR___SFTabOverview_searchState + 8))
  {
    v9 = 0;
    v8 = 0u;
    v7 = 0u;
    v6 = 0u;
    v1 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    v4 = MEMORY[0x1E69E6370];
    v5 = v1;
    v3[0] = 0;
    sub_18B8550A8(v3, 0xD000000000000014, 0x800000018BC62740);
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    sub_18B9C0F34(0, 0, &v5, inited);
    sub_18B988BAC(&v5, &unk_1EA9D53A0);
  }
}

id sub_18B9C1AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_18B9CBA44;
  v16 = &block_descriptor_378;
  v9 = _Block_copy(&v13);
  sub_18BC1E1A8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_18B9CBA94;
  v16 = &block_descriptor_375;
  v10 = _Block_copy(&v13);
  sub_18BC1E1A8();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_18B7B171C(a4);
  sub_18B7B171C(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

uint64_t sub_18B9C1C68(void *a1, double a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20[-v8];
  v10 = *(v3 + OBJC_IVAR___SFTabOverview_searchState + 8);
  if (v10)
  {
    if (!((v10 & 0x2000000000000000) != 0 ? HIBYTE(v10) & 0xF : *(v3 + OBJC_IVAR___SFTabOverview_searchState) & 0xFFFFFFFFFFFFLL))
    {
      v26 = 0;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v18 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
      v21 = MEMORY[0x1E69E6370];
      v22 = v18;
      v20[0] = 0;
      sub_18B8550A8(v20, 0xD000000000000014, 0x800000018BC62740);
      type metadata accessor for AnimationSettings();
      inited = swift_initStaticObject();
      sub_18B9C0F34(0, 0, &v22, inited);
      v16 = &unk_1EA9D53A0;
      v17 = &v22;
      return sub_18B988BAC(v17, v16);
    }
  }

  v12 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x98);
  result = swift_beginAccess();
  if (*(a1 + v12) == 1 && (*(v3 + OBJC_IVAR___SFTabOverview_content + 4) & 1) == 0)
  {
    result = (*(**(v3 + OBJC_IVAR___SFTabOverview_gridLayout) + 1192))(result, a2, a3);
    if (result)
    {
      v14 = *(v3 + OBJC_IVAR___SFTabOverview_handlers + 80);
      v15 = _s4ItemVMa_2();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
      sub_18BC1E1A8();
      v14(v9);

      v16 = &unk_1EA9D4F30;
      v17 = v9;
      return sub_18B988BAC(v17, v16);
    }
  }

  return result;
}

uint64_t sub_18B9C1EE4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___SFTabOverview_content;
  if (*(v2 + OBJC_IVAR___SFTabOverview_content + 32))
  {
    if (*(v4 + 4))
    {
      return result;
    }
  }

  else
  {
    v6 = *(v2 + OBJC_IVAR___SFTabOverview_handlers + 240);
    sub_18BC1E1A8();
    v6(a2);

    if (*(v4 + 4))
    {
      return result;
    }
  }

  return sub_18B9CAFCC(a2);
}

uint64_t sub_18B9C1F78(uint64_t a1)
{
  *(a1 + OBJC_IVAR___SFTabOverview_needsResetLayout) = 0;
  memset(v4, 0, sizeof(v4));
  v2 = OBJC_IVAR___SFTabOverview_targetScrollPositionForNextLayoutPass;
  swift_beginAccess();
  sub_18B7FD070(v4, a1 + v2, &unk_1EA9D53A0);
  return swift_endAccess();
}

uint64_t sub_18B9C1FF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_18BC1E1A8();
  v3(a2);
}

void *sub_18B9C204C(uint64_t a1, void *a2, uint64_t a3)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v37 - v5;
  v45 = _s4ItemVMa_2();
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  result = sub_18B9D3AF8(a2);
  v44 = result[2];
  if (v44)
  {
    v14 = 0;
    v42 = a3 + OBJC_IVAR___SFTabOverview_content;
    v41 = result + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v38 = a3;
    v37 = v6;
    v43 = v7;
    v40 = result;
    while (1)
    {
      if (v14 >= result[2])
      {
        __break(1u);
        return result;
      }

      v15 = *(v7 + 72);
      sub_18B8554D0(&v41[v15 * v14], v12, _s4ItemVMa_2);
      v16 = *(v42 + 184);
      if (*(v16 + 16))
      {
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
        sub_18BC1E3F8();
        sub_18BC20A78();
        v17 = sub_18BC221A8();
        v18 = -1 << *(v16 + 32);
        v19 = v17 & ~v18;
        if ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          while (1)
          {
            sub_18B8554D0(*(v16 + 48) + v19 * v15, v9, _s4ItemVMa_2);
            updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
            sub_18B815380(v9, _s4ItemVMa_2);
            if (updated)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          sub_18B815380(v12, _s4ItemVMa_2);
          v6 = v37;
          v7 = v43;
          goto LABEL_6;
        }

LABEL_13:

        v6 = v37;
      }

      v22 = sub_18B82FEA0();
      sub_18B8554D0(v12, v6, _s4ItemVMa_2);
      swift_storeEnumTagMultiPayload();
      v23 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x150);
      swift_beginAccess();
      v24 = *(v22 + v23);
      if (!*(v24 + 16))
      {
        break;
      }

      sub_18BC1E3F8();
      v25 = sub_18B83B1C8(v6);
      v7 = v43;
      if ((v26 & 1) == 0)
      {

        goto LABEL_4;
      }

      v27 = *(*(v24 + 56) + 8 * v25);
      sub_18BC1E1A8();

      sub_18B988BAC(v6, &unk_1EA9D92F0);

      v28 = *(v27 + 24);
      v29 = v28;

      if (v28)
      {
        type metadata accessor for TabOverview.ItemView();
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v31 = *(v30 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

          type metadata accessor for TabOverviewItemView();
          v32 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);

          v33 = OBJC_IVAR___SFTabThumbnailView_controlsVisibility;
          v34 = *&v32[OBJC_IVAR___SFTabThumbnailView_controlsVisibility];
          *&v32[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = 0;
          if (v34 != 0.0)
          {
            [*&v32[OBJC_IVAR___SFTabThumbnailView_controlsContainerView] setAlpha_];
            v35 = sub_18B7DE654();
            [v35 setValue_];

            v36 = *&v32[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
            if (*&v32[OBJC_IVAR___SFTabThumbnailView_configuration + 24] == 1)
            {
              [v36 setAlpha_];
            }

            else
            {
              [v36 setAlpha_];
            }

            sub_18B815380(v12, _s4ItemVMa_2);

            goto LABEL_6;
          }
        }

        else
        {
        }
      }

LABEL_5:
      sub_18B815380(v12, _s4ItemVMa_2);
LABEL_6:
      result = v40;
      if (++v14 == v44)
      {
      }
    }

    v7 = v43;
LABEL_4:
    sub_18B988BAC(v6, &unk_1EA9D92F0);
    goto LABEL_5;
  }
}

uint64_t sub_18B9C2684(uint64_t a1, void *a2, uint64_t a3)
{
  v32[2] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - v5;
  v7 = _s4ItemVMa_2();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18B9D3AF8(a2);
  v12 = v11[2];
  if (v12)
  {
    v13 = *(v8 + 80);
    v32[1] = v11;
    v14 = v11 + ((v13 + 32) & ~v13);
    v15 = *(v8 + 72);
    while (1)
    {
      sub_18B8554D0(v14, v10, _s4ItemVMa_2);
      v16 = sub_18B82FEA0();
      sub_18B8554D0(v10, v6, _s4ItemVMa_2);
      swift_storeEnumTagMultiPayload();
      v17 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x150);
      swift_beginAccess();
      v18 = *(v16 + v17);
      if (!*(v18 + 16))
      {
        break;
      }

      sub_18BC1E3F8();
      v19 = sub_18B83B1C8(v6);
      if ((v20 & 1) == 0)
      {

        goto LABEL_11;
      }

      v21 = *(*(v18 + 56) + 8 * v19);
      sub_18BC1E1A8();

      sub_18B988BAC(v6, &unk_1EA9D92F0);

      v22 = *(v21 + 24);
      v23 = v22;

      if (v22)
      {
        type metadata accessor for TabOverview.ItemView();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v25 = *(v24 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

          type metadata accessor for TabOverviewItemView();
          v26 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);

          v27 = OBJC_IVAR___SFTabThumbnailView_controlsVisibility;
          v28 = *&v26[OBJC_IVAR___SFTabThumbnailView_controlsVisibility];
          *&v26[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = 0x3FF0000000000000;
          if (v28 != 1.0)
          {
            [*&v26[OBJC_IVAR___SFTabThumbnailView_controlsContainerView] setAlpha_];
            v29 = sub_18B7DE654();
            [v29 setValue_];

            v30 = *&v26[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
            if (*&v26[OBJC_IVAR___SFTabThumbnailView_configuration + 24] == 1)
            {
              [v30 setAlpha_];
            }

            else
            {
              [v30 setAlpha_];
            }

            sub_18B815380(v10, _s4ItemVMa_2);

            goto LABEL_13;
          }
        }

        else
        {
        }
      }

LABEL_12:
      sub_18B815380(v10, _s4ItemVMa_2);
LABEL_13:
      v14 += v15;
      if (!--v12)
      {
      }
    }

LABEL_11:
    sub_18B988BAC(v6, &unk_1EA9D92F0);
    goto LABEL_12;
  }
}

uint64_t sub_18B9C2AAC(void *a1, uint64_t a2)
{
  v4 = _s4ItemVMa_2();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_18B8554D0(a2, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s4ItemVMa_2);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  sub_18B829704(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, _s4ItemVMa_2);
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18B9D4298;
  *(v10 + 24) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_18B7D1EC4;
  *(v11 + 24) = v10;
  aBlock[4] = sub_18B7D1E94;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  aBlock[3] = &block_descriptor_369;
  v12 = _Block_copy(aBlock);
  v13 = a1;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v9 performWithoutAnimation_];
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18B9C2D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_18B82FEA0();
  v8 = sub_18B9CAE54(a2);

  if (v8)
  {
    type metadata accessor for TabOverview.ItemView();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      v8 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);

      v11 = *&v8[OBJC_IVAR___SFTabThumbnailView_controlsVisibility];
      *&v8[OBJC_IVAR___SFTabThumbnailView_controlsVisibility] = 0x3FF0000000000000;
      if (v11 != 1.0)
      {
        sub_18BA15D30();
      }
    }
  }

  v12 = *(a1 + OBJC_IVAR___SFTabOverview_handlers + 80);
  sub_18B8554D0(a2, v6, _s4ItemVMa_2);
  v13 = _s4ItemVMa_2();
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  sub_18BC1E1A8();
  v12(v6);

  return sub_18B988BAC(v6, &unk_1EA9D4F30);
}

uint64_t sub_18B9C2EF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = OBJC_IVAR___SFTabOverview_itemsClosedWithGesture;
  swift_beginAccess();
  v8 = *(v3 + v7);
  sub_18BC1E3F8();
  LOBYTE(a2) = sub_18B9BA24C(a2, v8, _s4ItemVMa_2, _s4ItemVMa_2, _s4ItemVMa_2);

  if (a2)
  {
    *a3 = 2;
    *(a3 + 8) = 0;
  }

  else
  {
    swift_beginAccess();
    memcpy(__dst, (a1 + 168), 0x139uLL);
    result = sub_18B81CA10(__dst);
    if (result == 1 || (v10 = __dst[0], __dst[0] != 1))
    {
      *a3 = 1;
      *(a3 + 8) = 1;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = v10;
    }
  }

  return result;
}

uint64_t sub_18B9C3020()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v39 - v3;
  v5 = _s4ItemVMa_2();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18B82FEA0();
  v10 = sub_18BA58D00();

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
    v39 = v10;
    v40 = OBJC_IVAR___SFTabOverview_gridLayout;
    v13 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v41 = v2;
    v42 = v1;
    v43 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
    v44 = v14;
    while (1)
    {
      sub_18B8554D0(v13, v8, _s4ItemVMa_2);
      v15 = *(v1 + v12);
      sub_18B8554D0(v8, v4, _s4ItemVMa_2);
      swift_storeEnumTagMultiPayload();
      v16 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x150);
      swift_beginAccess();
      v17 = *(v15 + v16);
      if (!*(v17 + 16))
      {
        goto LABEL_4;
      }

      v18 = v15;
      sub_18BC1E3F8();
      v19 = sub_18B83B1C8(v4);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = *(*(v17 + 56) + 8 * v19);
      sub_18BC1E1A8();

      sub_18B988BAC(v4, &unk_1EA9D92F0);

      v22 = *(v21 + 24);
      v23 = v22;
      v14 = v44;

      if (v22)
      {
        type metadata accessor for TabOverview.ItemView();
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          v25 = *(v24 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

          type metadata accessor for TabOverviewItemView();
          v26 = swift_dynamicCastClassUnconditional();
          v27 = *(*(v26 + OBJC_IVAR___SFTabOverviewItemView_thumbnailView) + OBJC_IVAR___SFTabThumbnailView_snapshotRegistration);
          if (v27)
          {
            v28 = v26;
            v29 = *(**(v1 + v40) + 1176);
            sub_18BC1E1A8();
            v29(v45, v28);
            v30 = *v45;
            v31 = v45[1];
            v32 = v27 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
            swift_beginAccess();
            v33 = *v32;
            v34 = *(v32 + 8);
            *v32 = v30;
            *(v32 + 8) = v31;
            if (v30 == v33 && v31 == v34)
            {
            }

            else
            {
              v36 = *(v27 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
              v37 = sub_18BC1E1A8();
              v36(v37);
            }

            v12 = v43;
            sub_18B815380(v8, _s4ItemVMa_2);
            v1 = v42;
          }

          else
          {

            sub_18B815380(v8, _s4ItemVMa_2);
            v12 = v43;
          }

          v14 = v44;
          goto LABEL_6;
        }
      }

LABEL_5:
      sub_18B815380(v8, _s4ItemVMa_2);
LABEL_6:
      v13 += v14;
      if (!--v11)
      {
      }
    }

LABEL_4:
    sub_18B988BAC(v4, &unk_1EA9D92F0);
    goto LABEL_5;
  }
}

void sub_18B9C34B0(uint64_t a1, int a2)
{
  v3 = v2;
  v54 = a2;
  v5 = _s4ItemVMa_2();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - v10;
  v12 = sub_18B82FEA0();
  v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x1D8);
  swift_beginAccess();
  v14 = *(v12 + v13);
  sub_18BC1E1A8();

  swift_beginAccess();
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  v17 = *(v6 + 80);
  v55 = v17;
  v56 = v6;
  v18 = (v17 + 32) & ~v17;
  v19 = v16 + v18;
  v20 = *(v16 + 16);
  if (v15)
  {
    sub_18BC1E1A8();
    sub_18B9D0B20(a1, v16 + v18, v20, (v15 + 16), v15 + 32);
    v22 = v21;

    if (v22)
    {
      return;
    }
  }

  else
  {
    v51 = v3;
    v52 = v9;
    if (!v20)
    {
LABEL_8:

      return;
    }

    v23 = v56[9];
    while (1)
    {
      sub_18B8554D0(v19, v11, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815380(v11, _s4ItemVMa_2);
      if (updated)
      {
        break;
      }

      v19 += v23;
      if (!--v20)
      {
        goto LABEL_8;
      }
    }

    v3 = v51;
    v9 = v52;
  }

  v52 = v9;
  v25 = v55;
  v26 = ~v55;
  if (v54)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FB0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_18BC3E410;
    sub_18B8554D0(a1, v27 + v18, _s4ItemVMa_2);
    v28 = sub_18BA29804(v27);
    swift_setDeallocating();
    sub_18B815380(v27 + v18, _s4ItemVMa_2);
    swift_deallocClassInstance();
    v29 = *&v3[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView];
    sub_18BB07B3C(v28);

    v30 = *MEMORY[0x1E69DDA98];
    if (!*MEMORY[0x1E69DDA98])
    {
      __break(1u);
      return;
    }

    sub_18B8554D0(a1, v11, _s4ItemVMa_2);
    v31 = swift_allocObject();
    *(v31 + 16) = v3;
    sub_18B829704(v11, v31 + ((v25 + 24) & v26), _s4ItemVMa_2);
    aBlock[4] = sub_18B9D4DB0;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7B0DB0;
    aBlock[3] = &block_descriptor_461;
    v32 = _Block_copy(aBlock);
    v33 = v30;
    v34 = v3;

    [v33 _performBlockAfterCATransactionCommits_];
    _Block_release(v32);
  }

  v35 = *&v3[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView];
  v36 = sub_18B9CAE54(a1);

  if (v36)
  {
    type metadata accessor for TabOverview.ItemView();
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      v38 = *(v37 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      v39 = swift_dynamicCastClassUnconditional();
      v56 = *(v39 + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);
      sub_18B8554D0(a1, v11, _s4ItemVMa_2);
      v40 = v3;
      v41 = (v25 + 24) & v26;
      v42 = swift_allocObject();
      *(v42 + 16) = v40;
      sub_18B829704(v11, v42 + v41, _s4ItemVMa_2);
      v43 = a1;
      v44 = v52;
      sub_18B8554D0(v43, v52, _s4ItemVMa_2);
      v45 = swift_allocObject();
      *(v45 + 16) = v40;
      sub_18B829704(v44, v45 + v41, _s4ItemVMa_2);
      v46 = swift_allocObject();
      *(v46 + 16) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE30);
      v47 = swift_allocObject();
      v48 = v56;
      v47[2] = v56;
      v47[3] = sub_18B9D4C4C;
      v47[4] = v42;
      v47[5] = sub_18B9D4C58;
      v47[6] = v45;
      v47[7] = sub_18B9D4C70;
      v47[8] = v46;
      v47[9] = CGRectMake;
      v47[10] = 0;
      v49 = v40;
      v50 = v48;
    }

    else
    {
    }
  }
}

void sub_18B9C3AF4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FB0);
  v3 = *(_s4ItemVMa_2() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18BC3E410;
  sub_18B8554D0(a2, v5 + v4, _s4ItemVMa_2);
  v6 = sub_18BA29804(v5);
  swift_setDeallocating();
  sub_18B815380(v5 + v4, _s4ItemVMa_2);
  swift_deallocClassInstance();
  v7 = sub_18B82FEA0();
  sub_18BB08BC4(v6);
}

uint64_t sub_18B9C3C48(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + OBJC_IVAR___SFTabOverview_itemsWithHiddenThumbnail;
  swift_beginAccess();
  v9 = (v7 + 16);
  v8 = *(v7 + 16);
  if (*(v8 + 16))
  {
    v10 = sub_18BB8B494(a2);
    if (v11)
    {
      v12 = *(*(v8 + 56) + 8 * v10);
      if (v12 < 2)
      {
        sub_18B8554D0(a2, v6, _s4ItemVMa_2);
        sub_18BAD27B8(0, 1, v6);
        (*v7)(a2, 0);
      }

      else
      {
        v13 = v12 - 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *v9;
        *v9 = 0x8000000000000000;
        sub_18BAA7998(v13, a2, isUniquelyReferenced_nonNull_native);
        *v9 = v16;
      }
    }
  }

  return swift_endAccess();
}

void *sub_18B9C3DA0(uint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa_2();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = sub_18B82FEA0();
  v14 = sub_18B9CAE54(a1);

  if (v14)
  {
    type metadata accessor for TabOverview.ItemView();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v32 = *(v15 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      v30 = swift_dynamicCastClassUnconditional();
      sub_18B8554D0(a1, v12, _s4ItemVMa_2);
      v29 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = v2;
      v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v18 = swift_allocObject();
      v31 = v18;
      *(v18 + 16) = v16;
      sub_18B829704(v12, v18 + v17, _s4ItemVMa_2);
      sub_18B8554D0(a1, v10, _s4ItemVMa_2);
      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      sub_18B829704(v10, v19 + v17, _s4ItemVMa_2);
      v20 = v30;
      *(v19 + ((v17 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;
      v21 = a1;
      v22 = v29;
      sub_18B8554D0(v21, v29, _s4ItemVMa_2);
      v23 = swift_allocObject();
      *(v23 + 16) = v16;
      sub_18B829704(v22, v23 + v17, _s4ItemVMa_2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5050);
      v24 = swift_allocObject();
      v24[2] = v20;
      v24[3] = sub_18B9D4B30;
      v24[4] = v31;
      v24[5] = sub_18B9D4BA4;
      v24[6] = v19;
      v24[7] = sub_18B9D4C34;
      v24[8] = v23;
      v24[9] = CGRectMake;
      v24[10] = 0;
      v25 = v16;
      v26 = v32;
      v27 = v25;
      return v24;
    }
  }

  return 0;
}

uint64_t sub_18B9C40C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_18BBE8574(a2);
  return swift_endAccess();
}

void sub_18B9C4124(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_18B82FEA0();
  v10 = sub_18B9CAE54(a2);

  if (v10)
  {
    type metadata accessor for TabOverview.ItemView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      swift_dynamicCastClassUnconditional();
      v8 = a3;
      v9 = sub_18BC215C8();

      if (v9)
      {
        sub_18B9BD7F0(a2);
      }
    }

    else
    {
    }
  }
}

void sub_18B9C4240(uint64_t a1, uint64_t a2)
{
  v3 = sub_18B82FEA0();
  v14 = sub_18B9CAE54(a2);

  if (v14)
  {
    type metadata accessor for TabOverview.ItemView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);
      v6 = v4;
      type metadata accessor for TabOverviewItemView();
      v7 = swift_dynamicCastClassUnconditional();
      v8 = v14;
      v14 = v5;
      [v6 bounds];
      [v7 setBounds_];
      [v6 bounds];
      x = v16.origin.x;
      y = v16.origin.y;
      width = v16.size.width;
      height = v16.size.height;
      MidX = CGRectGetMidX(v16);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      [v7 setCenter_];
    }
  }
}

uint64_t sub_18B9C448C()
{
  sub_18B7CA0E4(v0 + OBJC_IVAR___SFTabOverview_configuration);
  memcpy(v8, (v0 + OBJC_IVAR___SFTabOverview_handlers), sizeof(v8));
  sub_18B854D4C(v8);
  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR___SFTabOverview_content + 144);
  v9[8] = *(v0 + OBJC_IVAR___SFTabOverview_content + 128);
  v9[9] = v1;
  v2 = *(v0 + OBJC_IVAR___SFTabOverview_content + 176);
  v9[10] = *(v0 + OBJC_IVAR___SFTabOverview_content + 160);
  v9[11] = v2;
  v3 = *(v0 + OBJC_IVAR___SFTabOverview_content + 80);
  v9[4] = *(v0 + OBJC_IVAR___SFTabOverview_content + 64);
  v9[5] = v3;
  v4 = *(v0 + OBJC_IVAR___SFTabOverview_content + 112);
  v9[6] = *(v0 + OBJC_IVAR___SFTabOverview_content + 96);
  v9[7] = v4;
  v5 = *(v0 + OBJC_IVAR___SFTabOverview_content + 16);
  v9[0] = *(v0 + OBJC_IVAR___SFTabOverview_content);
  v9[1] = v5;
  v6 = *(v0 + OBJC_IVAR___SFTabOverview_content + 48);
  v9[2] = *(v0 + OBJC_IVAR___SFTabOverview_content + 32);
  v9[3] = v6;
  sub_18B82B2F0(v9);

  sub_18B988BAC(v0 + OBJC_IVAR___SFTabOverview_targetScrollPositionForNextLayoutPass, &unk_1EA9D53A0);

  return MEMORY[0x18CFFF000](v0 + OBJC_IVAR___SFTabOverview_parentScrollView);
}

uint64_t sub_18B9C49A0()
{
  v1 = *v0;
  sub_18B9BCC14();
  v2 = sub_18B82FEA0();
  [v2 stopScrollingAndZooming];

  v3 = *(v1 + OBJC_IVAR___SFTabOverview____lazy_storage___collectionView);
  v4 = sub_18B8649E0();

  *&v4[qword_1EA9D4758] = 0;
}

uint64_t sub_18B9C4A28(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR___SFTabOverview_content + 4) == 1)
  {
    v4 = *(v2 + OBJC_IVAR___SFTabOverview_handlers + 192);
    sub_18BC1E1A8();
    v4(a2);
  }

  return result;
}

double sub_18B9C4AB4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___SFTabOverview_handlers + 160);
  sub_18BC1E1A8();
  LOBYTE(v4) = v4(a2);

  result = 0.0;
  if (v4)
  {
    sub_18B9BF278(a2);
    return 0.1;
  }

  return result;
}

id sub_18B9C4B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_18B7B0AC0(0, &unk_1EA9D4F70);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a2;
  swift_unknownObjectRetain();
  v7 = v3;
  sub_18BC1E3F8();
  return sub_18B9C1AC8(a3, 0, 0, sub_18B9D4328, v6);
}

void sub_18B9C4C4C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = a2;
    v14[4] = v8;
    v19[4] = a7;
    v19[5] = v14;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_18B7B0DB0;
    v19[3] = a8;
    v15 = _Block_copy(v19);
    v16 = a1;
    v17 = a2;
    v18 = v8;

    [a3 addAnimations_];
    _Block_release(v15);
  }
}

id sub_18B9C4D4C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___SFTabOverview_itemsClosedWithGesture;
  swift_beginAccess();
  v5 = *(v2 + v4);
  sub_18BC1E3F8();
  LOBYTE(a2) = sub_18B9BA24C(a2, v5, _s4ItemVMa_2, _s4ItemVMa_2, _s4ItemVMa_2);

  v6 = &OBJC_IVAR___SFTabOverview_closingItemsContainerView;
  if ((a2 & 1) == 0)
  {
    v6 = &OBJC_IVAR___SFTabOverview_contentBelowSearchBarView;
  }

  v7 = *(v2 + *v6);

  return v7;
}

id sub_18B9C4E28(uint64_t a1, uint64_t a2)
{
  sub_18B833990(a2, v7);
  if ((v8 - 1) >= 3)
  {
    if (v8)
    {
      v6 = *(v2 + OBJC_IVAR___SFTabOverview_overlayContainerView);
      sub_18B831014(v7);
      return v6;
    }

    v3 = OBJC_IVAR___SFTabOverview_contentBelowSearchBarView;
  }

  else
  {
    v3 = OBJC_IVAR___SFTabOverview_searchBarContainerView;
  }

  v4 = *(v2 + v3);

  return v4;
}

uint64_t sub_18B9C4EC4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___SFTabOverview_handlers + 96);
  sub_18BC1E1A8();
  v5 = v4(a2);

  return v5;
}

uint64_t sub_18B9C4F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = _s15DropDestinationVMa(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v14 = *(v4 + OBJC_IVAR___SFTabOverview_handlers + 112);
  sub_18B8554D0(a2, v10, _s7SectionVMa_1);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4F80) + 48);
  sub_18B7CA054(a2 + v15, &v10[*(v8 + 28)], &unk_1EA9D4F30);
  sub_18BC1E1A8();
  v14(v4, a3, v10);

  sub_18B815380(v10, _s15DropDestinationVMa);
  v16 = *(v8 + 28);
  sub_18B9D43D4(v13, a2);
  return sub_18B7FD070(&v13[v16], a2 + v15, &unk_1EA9D4F30);
}

uint64_t sub_18B9C5110()
{
  v1 = *(v0 + OBJC_IVAR___SFTabOverview_handlers);
  v2 = sub_18BC1E1A8();
  v1(v2);
}

uint64_t sub_18B9C5174@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (a1 + 168), 0x139uLL);
  result = sub_18B81CA10(__dst);
  v5 = result == 1 || __dst[0] != 1;
  *a2 = v5;
  return result;
}

void sub_18B9C51F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR___SFTabOverview_headerRegistration))
  {
    v5 = *(v3 + OBJC_IVAR___SFTabOverview_headerRegistration + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 24);
    swift_unknownObjectRetain();
    v7(a3, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_18B9C5294(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 == 1)
  {
    v4 = a3;
    v5 = *(v3 + OBJC_IVAR___SFTabOverview_content + 184);
    sub_18BC1E3F8();
    LOBYTE(v4) = sub_18B9BA24C(v4, v5, _s4ItemVMa_2, _s4ItemVMa_2, _s4ItemVMa_2);

    v6 = v4 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_18B9C533C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  sub_18B8554D0(a3, v6, _s4ItemVMa_2);
  swift_beginAccess();
  sub_18B85A4D8(v9, v6);
  sub_18B815380(v9, _s4ItemVMa_2);
  return swift_endAccess();
}

uint64_t sub_18B9C5440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FB0);
  v4 = *(_s4ItemVMa_2() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18BC3E410;
  sub_18B8554D0(a3, v6 + v5, _s4ItemVMa_2);
  v7 = sub_18BA29804(v6);
  swift_setDeallocating();
  sub_18B815380(v6 + v5, _s4ItemVMa_2);
  swift_deallocClassInstance();
  sub_18B9BC608(v7);
}

void (*sub_18B9C5574(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x140uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 312) = v1;
  v5 = OBJC_IVAR___SFTabOverview_configuration;
  swift_beginAccess();
  sub_18B7DFE48(v1 + v5, v4);
  return sub_18B9C560C;
}

void sub_18B9C560C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_18B7DFE48(*a1, v2 + 144);
    sub_18B9BB008(v2 + 144);
    sub_18B7CA0E4(v2);
  }

  else
  {
    sub_18B9BB008(*a1);
  }

  free(v2);
}

uint64_t sub_18B9C5674()
{
  v0 = sub_18B82FEA0();
  v1 = sub_18B8649E0();

  v2 = *&v1[qword_1EA9D4750];
  v3 = [v2 gesturesForFailureRequirements];

  sub_18B7B0AC0(0, &qword_1EA9D4850);
  v4 = sub_18BC20D98();

  return v4;
}

uint64_t sub_18B9C5710@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5048);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - v12;
  if (!*(v1 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement))
  {
    (*(v7 + 56))(v5, 1, 1, v6, v11);
    goto LABEL_6;
  }

  v20[1] = *(v1 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement);
  swift_unknownObjectRetain();
  v14 = swift_dynamicCast();
  (*(v7 + 56))(v5, v14 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_6:
    v16 = &qword_1EA9D5048;
    v17 = v5;
LABEL_7:
    sub_18B988BAC(v17, v16);
    v15 = 1;
    goto LABEL_8;
  }

  sub_18B7CF39C(v5, v13, &unk_1EA9D92F0);
  sub_18B7CF39C(v13, v9, &unk_1EA9D92F0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = &unk_1EA9D92F0;
    v17 = v9;
    goto LABEL_7;
  }

  sub_18B829704(v9, a1, _s4ItemVMa_2);
  v15 = 0;
LABEL_8:
  v18 = _s4ItemVMa_2();
  return (*(*(v18 - 8) + 56))(a1, v15, 1, v18);
}

id sub_18B9C59CC()
{
  type metadata accessor for TabOverviewItemView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_18B9C5A08()
{
  type metadata accessor for TabOverviewItemView();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = v1 + OBJC_IVAR___SFTabOverviewItemView_configuration;
  v5 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration);
  v6 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 32);
  v16[1] = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 16);
  v16[2] = v6;
  v16[0] = v5;
  v19 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration);
  v20 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 2);
  v7 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 20);
  v17 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 4);
  v18[0] = v7;
  v8 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 16);
  *(v18 + 12) = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 32);
  v9 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration);
  v15[1] = v8;
  v15[2] = *(v18 + 12);
  v15[0] = v9;
  v10 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration);
  v11 = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 32);
  v21[1] = *(v1 + OBJC_IVAR___SFTabOverviewItemView_configuration + 16);
  v21[2] = v11;
  v21[0] = v10;
  *v4 = v19;
  *(v4 + 2) = v20;
  *(v4 + 3) = v3;
  v12 = v17;
  *(v4 + 20) = v18[0];
  *(v4 + 4) = v12;
  *(v4 + 32) = *(v18 + 12);
  sub_18B9B0118(v16, v14);
  sub_18B9B0118(v15, v14);
  sub_18B9B0174(v21);
  sub_18BB9DF7C(v15);
  return sub_18B9B0174(v15);
}

uint64_t sub_18B9C5B54()
{
  v1 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18B9C5B9C(char a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_18B9C5A08();
}

void (*sub_18B9C5BF4(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_18BA25C00();
  return sub_18B9C5C68;
}

void sub_18B9C5C68(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_18B9C5A08();
  }

  free(v3);
}

uint64_t sub_18B9C5CC4()
{
  v1 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18B9C5D0C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    [v1 setNeedsLayout];
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = inited;
    v10[3] = sub_18B848FAC;
    v10[4] = v8;
    v18 = sub_18B7E767C;
    v19 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_18B7B0DB0;
    v17 = &block_descriptor_429;
    v11 = _Block_copy(&aBlock);
    v12 = v1;
    sub_18BC1E1A8();

    v18 = CGRectMake;
    v19 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_18B8043A0;
    v17 = &block_descriptor_432;
    v13 = _Block_copy(&aBlock);

    [v9 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v13);
    _Block_release(v11);
  }

  return result;
}

void (*sub_18B9C5F18(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_18B9C5FB0;
}

void sub_18B9C5FB0(uint64_t a1)
{
  v1 = *a1;
  sub_18B9C5D0C(*(*a1 + 32));

  free(v1);
}

id sub_18B9C5FF0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview8ItemView_closeHandler];
  *v9 = CGRectMake;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview8ItemView_unpinHandler];
  *v10 = CGRectMake;
  *(v10 + 1) = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for TabOverview.ItemView();
  v11 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  type metadata accessor for TabOverviewItemView();
  v12 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);
  v13 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v14 = &v12[OBJC_IVAR___SFTabThumbnailView_closeHandler];
  *v14 = sub_18B9D4AE8;
  v14[1] = v13;
  v15 = v11;
  v16 = v12;
  swift_retain_n();

  sub_18BA15E70();

  v17 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = &v17[OBJC_IVAR___SFTabThumbnailView_unpinHandler];
  *v19 = sub_18B9D4B0C;
  v19[1] = v18;
  v20 = v17;
  swift_retain_n();

  sub_18BA15E70();

  return v15;
}

uint64_t sub_18B9C6234(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = _s4ItemVMa_2();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B9C5710(v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_18B988BAC(v5, &unk_1EA9D4F30);
  }

  sub_18B829704(v5, v9, _s4ItemVMa_2);
  v12 = swift_unknownObjectUnownedLoadStrong();
  v13 = *&v12[*a2];
  sub_18BC1E1A8();

  v13(v9);

  return sub_18B815380(v9, _s4ItemVMa_2);
}

uint64_t sub_18B9C660C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, id (*a6)(), void *a7)
{
  aBlock = a2;
  v68 = a3;
  v65 = a2;
  v66 = a3;
  v69 = a4;
  v70 = a5;
  v71 = a6;
  v72 = a7;
  v15 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v54 = *(v15 - 8);
  v64 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v63 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a4;
  v55 = a4;
  v22 = a5;
  v23 = a5;
  v58 = a5;
  v59 = a6;
  v24 = a6;
  v25 = a7;
  v60 = a7;
  sub_18BB8AA48(a1, v18, v19, v20, v22, a6, a7);
  v52 = *(v7 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);
  type metadata accessor for TabOverviewItemView();
  v26 = swift_dynamicCastClassUnconditional();
  v57 = v26;
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v27 = v54;
  v28 = *(v54 + 16);
  v61 = v54 + 16;
  v62 = v28;
  v29 = a1;
  v30 = v15;
  v28(v17, v29, v15);
  v56 = *(v27 + 80);
  v31 = (v56 + 72) & ~v56;
  v53 = v31;
  v32 = swift_allocObject();
  v33 = v66;
  v32[2] = v65;
  v32[3] = v33;
  v32[4] = v21;
  v32[5] = v23;
  v32[6] = v24;
  v32[7] = v25;
  v32[8] = v26;
  v54 = *(v27 + 32);
  v34 = v32 + v31;
  v35 = v17;
  (v54)(v34, v17, v30);
  v36 = objc_opt_self();
  v37 = swift_allocObject();
  v38 = inited;
  v37[2] = inited;
  v37[3] = sub_18B9D4848;
  v37[4] = v32;
  v71 = sub_18B7D80AC;
  v72 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_18B7B0DB0;
  v70 = &block_descriptor_413;
  v39 = _Block_copy(&aBlock);
  v52 = v52;
  sub_18BC1E1A8();

  v71 = CGRectMake;
  v72 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_18B8043A0;
  v70 = &block_descriptor_416;
  v40 = _Block_copy(&aBlock);

  [v36 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v40);
  _Block_release(v39);

  if ([v36 _isInRetargetableAnimationBlock])
  {
    v41 = 0x8000000000000008;
  }

  else
  {
    v41 = 0x8000000000000000;
  }

  v62(v35, v63, v30);
  v42 = v53;
  v43 = swift_allocObject();
  v44 = v66;
  v43[2] = v65;
  v43[3] = v44;
  v45 = v58;
  v46 = v59;
  v43[4] = v55;
  v43[5] = v45;
  v47 = v60;
  v43[6] = v46;
  v43[7] = v47;
  v43[8] = v57;
  (v54)(v43 + v42, v35, v30);
  v48 = v52;
  sub_18B80ECB4(sub_18B9D4A04, v43, v41);

  sub_18B7EBAE8(v41);
}

void sub_18B9C6A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_18BA723D0();
  v16 = *(a2 + *(type metadata accessor for SFFluidCollectionView.LayoutAttributes() + 92));
  v17 = 0.0;
  if (*(v16 + 16))
  {
    v18 = sub_18B831970(0xD00000000000001BLL, 0x800000018BC62720);
    if (v19)
    {
      v17 = *(*(v16 + 56) + 8 * v18);
    }
  }

  [v15 setValue_];
}

unint64_t sub_18B9C6B7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);
  result = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v5 = *(a2 + *(result + 88));
  v6 = 0.0;
  if (*(v5 + 16))
  {
    result = sub_18B831970(0xD000000000000012, 0x800000018BC62700);
    if (v7)
    {
      v6 = *(*(v5 + 56) + 8 * result);
    }
  }

  v8 = *(v3 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility);
  *(v3 + OBJC_IVAR___SFTabThumbnailView_controlsVisibility) = v6;
  if (v6 != v8)
  {
    return sub_18BA15D30();
  }

  return result;
}

void sub_18B9C6C34()
{
  type metadata accessor for TabOverviewItemView();
  v0 = [*(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView) layer];
  [v0 clearHasBeenCommitted];
}

uint64_t sub_18B9C6CD0()
{
}

id sub_18B9C6DA8()
{
  v0 = objc_allocWithZone(type metadata accessor for TabOverviewLargeTitleView());

  return [v0 init];
}

uint64_t sub_18B9C6E4C()
{
  v0 = sub_18BC1FCD8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for ContentUnavailableView();
  sub_18BC1FC98();
  return sub_18BC21488();
}

id sub_18B9C6ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), void *a5, id (*a6)(), void *a7)
{
  sub_18BB8AA48(a1, a2, a3, a4, a5, a6, a7);
  type metadata accessor for ContentUnavailableView();
  v14 = swift_dynamicCastClassUnconditional();
  v15 = *(a1 + *(type metadata accessor for SFFluidCollectionView.LayoutAttributes() + 92));
  v16 = 1.0;
  if (*(v15 + 16))
  {
    v17 = sub_18B831970(0xD000000000000020, 0x800000018BC626D0);
    if (v18)
    {
      v19 = *(*(v15 + 56) + 8 * v17);
      if (v19 > 0.0)
      {
        v20 = COERCE_DOUBLE(sub_18BAD8C40());
        if ((v21 & 1) == 0)
        {
          v16 = SFChromeVisibilityForScrollDistance(v20 - v19);
        }
      }
    }
  }

  return [v14 setAlpha_];
}

id sub_18B9C7064()
{
  type metadata accessor for SearchBar();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setDirectionalLayoutMargins_];
  return v0;
}

unint64_t sub_18B9C70C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), void *a5, id (*a6)(), void *a7)
{
  sub_18BB8AA48(a1, a2, a3, a4, a5, a6, a7);
  type metadata accessor for SearchBar();
  v14 = swift_dynamicCastClassUnconditional();
  result = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v16 = *(a1 + *(result + 88));
  if (!*(v16 + 16) || (result = sub_18B831970(0x48676E6974736572, 0xED00007468676965), (v17 & 1) == 0))
  {
    v22 = &v14[OBJC_IVAR____TtC12MobileSafari9SearchBar_restingHeight];
    v23 = v14[OBJC_IVAR____TtC12MobileSafari9SearchBar_restingHeight + 8];
    *v22 = 0;
    v22[8] = 1;
    if (v23 == 1)
    {
      return result;
    }

    return [v14 setNeedsUpdateConstraints];
  }

  v18 = *(*(v16 + 56) + 8 * result);
  v19 = &v14[OBJC_IVAR____TtC12MobileSafari9SearchBar_restingHeight];
  v20 = *&v14[OBJC_IVAR____TtC12MobileSafari9SearchBar_restingHeight];
  v21 = v14[OBJC_IVAR____TtC12MobileSafari9SearchBar_restingHeight + 8];
  *v19 = v18;
  *(v19 + 8) = 0;
  if ((v21 & 1) != 0 || v18 != v20)
  {
    return [v14 setNeedsUpdateConstraints];
  }

  return result;
}

id sub_18B9C7230(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_18B9C72BC(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_18B9C7634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), void *a5, id (*a6)(), void *a7)
{
  sub_18BB8AA48(a1, a2, a3, a4, a5, a6, a7);
  v15 = *(v7 + OBJC_IVAR____TtCC12MobileSafari11TabOverview32SearchBarBackgroundContainerView_backgroundView);
  if (*(*(a1 + *(type metadata accessor for SFFluidCollectionView.LayoutAttributes() + 92)) + 16))
  {
    sub_18B831970(0xD000000000000010, 0x800000018BC62690);
  }

  UIEdgeInsetsMakeWithEdges();
  return [v15 _setTouchInsets_];
}

id sub_18B9C7744(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18B9C77B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B9C7800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_18B9C7854(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_18B9C7920(uint64_t a1, uint64_t a2)
{
  result = sub_18B812E34(&qword_1EA9D4F10, a2, type metadata accessor for TabOverview);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18B9C7978@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = _s4ItemVMa_2();
    v13 = *(v6 - 8);
    sub_18B8554D0(a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v5, a2, _s4ItemVMa_2);
    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = _s4ItemVMa_2();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

void sub_18B9C7AA4(uint64_t a1)
{
  v3 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v7 = v1[2];
  v9 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = *(v7 + 16);
  if (v8)
  {
    sub_18BC1E1A8();
    v11 = sub_18B9D0B20(a1, v9, v10, (v8 + 16), v8 + 32);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = 0;
  v19 = *(v4 + 72);
  while (1)
  {
    sub_18B8554D0(v9, v6, _s4ItemVMa_2);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B815380(v6, _s4ItemVMa_2);
    if (updated)
    {
      break;
    }

    ++v11;
    v9 += v19;
    if (v10 == v11)
    {
      goto LABEL_17;
    }
  }

LABEL_3:
  v15 = *(*v1 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (*v1 + 40);
    while (1)
    {
      v14 = *(v17 - 1);
      if (v11 >= v14 && v11 < *v17)
      {
        break;
      }

      v17 += 2;
      if (v15 == ++v16)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    __break(1u);
  }

  if (!__OFSUB__(v11, v14))
  {
    MEMORY[0x18CFFA290](v11 - v14);
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_18B9C7C74(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9300);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v72 = &v64 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v71);
  v7 = &v64 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v65 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v64 - v8;
  v9 = _s4ItemVMa_2();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v81 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v64 - v13;
  swift_beginAccess();
  v16 = v2[3];
  result = v2[4];
  v73 = v10;
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = result + v17;
  v19 = *(result + 16);
  if (v16)
  {
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v10 = sub_18B9D0B20(a1, v18, v19, (v16 + 16), v16 + 32);
    v21 = v20;

    *&result = COERCE_DOUBLE();
    if ((v21 & 1) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v83 = *&v17;
  v84 = *&result;
  sub_18BC1E1A8();
  if (v19)
  {
    v10 = 0;
    v22 = *(v73 + 72);
    while (1)
    {
      sub_18B8554D0(v18, v14, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815380(v14, _s4ItemVMa_2);
      if (updated)
      {
        break;
      }

      ++v10;
      v18 += v22;
      if (v19 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:

    __break(1u);
  }

  *&result = COERCE_DOUBLE();
  *&v17 = v83;
LABEL_10:
  v80 = v2[4];
  v24 = *(v80 + 16);
  if (v24 < v10)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v25 = *MEMORY[0x1E695F050];
  v83 = *(MEMORY[0x1E695F050] + 8);
  v84 = v25;
  v26 = *(MEMORY[0x1E695F050] + 24);
  v82 = *(MEMORY[0x1E695F050] + 16);
  if (v10 == v24)
  {
    return result;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v27 = v2[3];
    v68 = v80 + v17;
    v64 = v27;
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    swift_beginAccess();
    v67 = (v65 + 56);
    v66 = (v65 + 48);
    v28 = v10;
    while (1)
    {
      v29 = *(v80 + 16);
      if (v29 < v10 || v29 < v24)
      {
        break;
      }

      if (v24 == v28)
      {
        goto LABEL_32;
      }

      v31 = v81;
      sub_18B8554D0(v68 + *(v73 + 72) * v28, v81, _s4ItemVMa_2);
      v32 = v2[12];
      sub_18B8554D0(v31, v7, _s4ItemVMa_2);
      swift_storeEnumTagMultiPayload();
      if (!*(v32 + 16))
      {
        goto LABEL_35;
      }

      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v33 = sub_18B83B1C8(v7);
      v34 = v72;
      if (v35)
      {
        sub_18B7CA054(*(v32 + 56) + *(v65 + 72) * v33, v72, &unk_1EA9D4F40);
        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      v37 = v70;
      (*v67)(v34, v36, 1, v70);

      *&result = COERCE_DOUBLE((*v66)(v34, 1, v37));
      if (result == 1)
      {
        goto LABEL_36;
      }

      sub_18B988BAC(v7, &unk_1EA9D92F0);
      sub_18B815380(v81, _s4ItemVMa_2);
      v38 = v69;
      sub_18B7CF39C(v34, v69, &unk_1EA9D4F40);
      v39 = (v38 + *(v37 + 96));
      v40 = *v39;
      v41 = v39[1];
      v42 = v39[2];
      v43 = v39[3];
      sub_18B988BAC(v38, &unk_1EA9D4F40);
      v85.origin.y = v83;
      v85.origin.x = v84;
      v85.size.width = v82;
      v85.size.height = v26;
      v87.origin.x = v40;
      v87.origin.y = v41;
      v87.size.width = v42;
      v87.size.height = v43;
      v86 = CGRectUnion(v85, v87);
      x = v86.origin.x;
      y = v86.origin.y;
      width = v86.size.width;
      height = v86.size.height;
      v48 = CGRectGetHeight(v86);
      v49 = (*(*v2 + 456))();
      if (v49)
      {
        v50 = v49;
        [v49 bounds];
        v77 = v51;
        v76 = v52;
        v75 = v53;
        v74 = v54;
        [v50 adjustedContentInset];
        v78 = v48;
        v79 = height;
        v56 = v55;
        v58 = v57;

        v59 = v56;
        v48 = v78;
        height = v79;
        v60 = UIEdgeInsetsInsetRect(v77, v76, v75, v74, v59, v58);
      }

      else
      {
        v60 = 0.0;
        v61 = 0;
        v62 = 0;
        v63 = 0;
      }

      if (CGRectGetHeight(*&v60) >= v48)
      {
        ++v28;
        v83 = y;
        v84 = x;
        v82 = width;
        v26 = height;
        if (v24 != v28)
        {
          continue;
        }
      }

      *&result = COERCE_DOUBLE();
      return result;
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  *&result = COERCE_DOUBLE((*v67)(v72, 1, 1, v70));
LABEL_36:
  __break(1u);
  return result;
}

BOOL sub_18B9C8410(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  swift_beginAccess();
  v13 = *(v4 + 40);
  swift_storeEnumTagMultiPayload();
  v14 = *(v13 + 16);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  if (v14 && (v15 = sub_18B83B1C8(v12), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
    sub_18BC1E3F8();
  }

  else
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  sub_18B988BAC(v12, &unk_1EA9D92F0);
  memset(v47, 0, sizeof(v47));
  v48 = xmmword_18BC42B60;
  v18 = sub_18B85CEA8(v47, v17);

  sub_18B833D9C(v47);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v49.origin.x = a1;
  v49.origin.y = a2;
  v49.size.width = a3;
  v49.size.height = a4;
  MaxY = CGRectGetMaxY(v49);
  v20 = (*(*v5 + 776))();
  v22 = v21;
  v23 = (*(*v5 + 848))(v20);
  v24 = 0.0;
  v25 = 0.0;
  if (*(v23 + 33) == 1 && *(v23 + 96) == 1)
  {
    v25 = *(v23 + 88);
  }

  v27 = (*(*v5 + 456))(v26);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  if (v27)
  {
    v31 = v27;
    [v27 bounds];
    v45 = v33;
    v46 = v32;
    v44 = v34;
    v36 = v35;
    [v31 adjustedContentInset];
    v38 = v37;
    v40 = v39;

    v24 = UIEdgeInsetsInsetRect(v46, v45, v44, v36, v38, v40);
  }

  v41 = v24;
  return MaxY + v22 - v25 < CGRectGetHeight(*(&v28 - 1));
}

void sub_18B9C8778(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v78 = a3;
  LODWORD(v79) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v73 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v73 - v11;
  swift_beginAccess();
  v13 = *(v3 + 96);
  v77 = a1;
  sub_18B8554D0(a1, v8, _s4ItemVMa_2);
  swift_storeEnumTagMultiPayload();
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  v14 = sub_18B83B1C8(v8);
  if ((v15 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    return;
  }

  sub_18B7CA054(*(v13 + 56) + *(v10 + 72) * v14, v12, &unk_1EA9D4F40);
  sub_18B988BAC(v8, &unk_1EA9D92F0);

  v16 = &v12[*(v9 + 96)];
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  v21 = sub_18B988BAC(v12, &unk_1EA9D4F40);
  if ((LOBYTE(v79) & 1) != 0 && ((v22 = (*v4 + 456), v23 = *v22, (v24 = (*v22)(v21)) == 0) ? (v34 = 0.0, v35 = 0, v36 = 0, v37 = 0) : (v25 = v24, [v24 bounds], v79 = v26, v75 = v28, v76 = v27, v74 = v29, objc_msgSend(v25, sel_adjustedContentInset), v31 = v30, v33 = v32, v25, v34 = UIEdgeInsetsInsetRect(v79, v76, v75, v74, v31, v33)), v81.origin.x = v17, v81.origin.y = v18, v81.size.width = v19, v81.size.height = v20, CGRectContainsRect(*&v34, v81)))
  {
    v38 = v23();
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      [v39 adjustedContentInset];
      v49 = v48;
      v51 = v50;

      v52 = UIEdgeInsetsInsetRect(v41, v43, v45, v47, v49, v51);
    }

    else
    {
      v52 = 0.0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
    }

    CGRectGetMinY(*&v52);
  }

  else if ((v78 & 1) != 0 && sub_18B9C8410(v17, v18, v19, v20))
  {
    (*(*v4 + 848))();
  }

  else
  {
    sub_18B9C7C74(v77);
    CGRectGetMidY(v80);
    v56 = (*(*v4 + 456))();
    if (v56)
    {
      v57 = v56;
      [v56 bounds];
      v79 = v58;
      v60 = v59;
      v62 = v61;
      v64 = v63;
      [v57 adjustedContentInset];
      v66 = v65;
      v68 = v67;

      v69 = UIEdgeInsetsInsetRect(v79, v60, v62, v64, v66, v68);
    }

    else
    {
      v69 = 0.0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
    }

    CGRectGetHeight(*&v69);
  }
}

uint64_t sub_18B9C8C7C(uint64_t a1, uint64_t a2, int a3)
{
  v37 = a3;
  v36 = *&a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v32 - v5;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v32 - v7;
  v8 = _s4ItemVMa_2();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = v3[3];
  v13 = v3[4];
  v14 = v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v15 = *(v13 + 16);
  if (v12)
  {
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18B9D0B20(a1, v14, v15, (v12 + 16), v12 + 32);
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      if (v37)
      {
        goto LABEL_4;
      }

LABEL_14:
      sub_18B9C8778(a1, LOBYTE(v36) & 1, (*&v36 >> 8) & 1);
      return *&v29;
    }

    return 0;
  }

  sub_18BC1E1A8();
  if (!v15)
  {
LABEL_11:

    return 0;
  }

  v30 = *(v9 + 72);
  while (1)
  {
    sub_18B8554D0(v14, v11, _s4ItemVMa_2);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B815380(v11, _s4ItemVMa_2);
    if (updated)
    {
      break;
    }

    v14 += v30;
    if (!--v15)
    {
      goto LABEL_11;
    }
  }

  if ((v37 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  swift_beginAccess();
  v18 = v3[12];
  sub_18B8554D0(a1, v6, _s4ItemVMa_2);
  result = swift_storeEnumTagMultiPayload();
  if (*(v18 + 16))
  {
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    result = sub_18B83B1C8(v6);
    if (v20)
    {
      v21 = v36;
      v22 = v33;
      sub_18B7CA054(*(v18 + 56) + *(v32 + 72) * result, v33, &unk_1EA9D4F40);
      sub_18B988BAC(v6, &unk_1EA9D92F0);

      v23 = (v22 + *(v34 + 96));
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      sub_18B988BAC(v22, &unk_1EA9D4F40);
      v38.origin.x = v24;
      v38.origin.y = v25;
      v38.size.width = v26;
      v38.size.height = v27;
      MinY = CGRectGetMinY(v38);
      v39.origin.x = v24;
      v39.origin.y = v25;
      v39.size.width = v26;
      v39.size.height = v27;
      v29 = MinY - CGRectGetHeight(v39) * v21;
      return *&v29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18B9C90A0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v49 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - v11;
  swift_beginAccess();
  v13 = *(v2 + 96);
  v47 = a1;
  sub_18B8554D0(a1, v8, _s4ItemVMa_2);
  result = swift_storeEnumTagMultiPayload();
  if (!*(v13 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  result = sub_18B83B1C8(v8);
  if ((v15 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_18B7CA054(*(v13 + 56) + *(v10 + 72) * result, v12, &unk_1EA9D4F40);
  sub_18B988BAC(v8, &unk_1EA9D92F0);

  v16 = &v12[*(v9 + 96)];
  v17 = *v16;
  v18 = v16[1];
  v20 = v16[2];
  v19 = v16[3];
  sub_18B988BAC(v12, &unk_1EA9D4F40);
  v54.origin.x = v17;
  v54.origin.y = v18;
  v54.size.width = v20;
  v54.size.height = v19;
  MinY = CGRectGetMinY(v54);
  v22 = (*(*v3 + 456))();
  if (v22)
  {
    v23 = v22;
    [v22 bounds];
    v44 = v24;
    v43 = v25;
    v42 = v26;
    v41 = v27;
    [v23 adjustedContentInset];
    v29 = v28;
    v45 = v19;
    v30 = v17;
    v32 = v31;

    v33 = v32;
    v17 = v30;
    v19 = v45;
    v34 = UIEdgeInsetsInsetRect(v44, v43, v42, v41, v29, v33);
  }

  else
  {
    v34 = 0.0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
  }

  v38 = MinY - CGRectGetMinY(*&v34);
  v55.origin.x = v17;
  v55.origin.y = v18;
  v55.size.width = v20;
  v55.size.height = v19;
  v39 = v38 / CGRectGetHeight(v55);
  sub_18B8554D0(v47, v48, _s4ItemVMa_2);
  sub_18B812E34(&qword_1EA9D9230, 255, _s4ItemVMa_2);
  sub_18BC21A68();
  v40 = v46;
  sub_18B7F44EC(v53, (v46 + 1));
  v40[6] = 0x767265764F626174;
  v40[7] = 0xEF6D657449776569;
  *v40 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
  v52 = &_s18ItemScrollPositionON;
  v50 = v39;
  v51 = 1;
  sub_18B8550A8(&v50, 0xD000000000000012, 0x800000018BC62780);
  return sub_18B831014(v53);
}

BOOL sub_18B9C956C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = (*v0 + 848);
  v13 = *v12;
  v14 = *((*v12)(v9) + 96);

  if (v14 != 1)
  {
    return 0;
  }

  v29 = v7;
  v30 = v13;
  v31 = v12;
  v32 = v2;
  v33 = v4;
  swift_beginAccess();
  v15 = v1[5];
  swift_storeEnumTagMultiPayload();
  v16 = *(v15 + 16);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  if (v16 && (v17 = sub_18B83B1C8(v11), (v18 & 1) != 0))
  {
    v19 = *(*(v15 + 56) + 8 * v17);
    sub_18BC1E3F8();
  }

  else
  {
    v19 = MEMORY[0x1E69E7CD0];
  }

  sub_18B988BAC(v11, &unk_1EA9D92F0);
  v37 = 0uLL;
  *v38 = 0;
  v28 = xmmword_18BC42B60;
  *&v38[8] = xmmword_18BC42B60;
  v20 = sub_18B85CEA8(&v37, v19);

  sub_18B833D9C(&v37);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(v1 + 7);
  v37 = *(v1 + 6);
  *v38 = v21;
  *&v38[16] = *(v1 + 8);
  *&v38[25] = *(v1 + 137);
  memset(v35, 0, sizeof(v35));
  v36 = v28;
  v22 = v29;
  swift_storeEnumTagMultiPayload();
  sub_18B7CA054(&v37, v34, &unk_1EA9D50C0);
  v23 = v33;
  sub_18B86F5DC(v35, v22, v33);
  sub_18B988BAC(&v37, &unk_1EA9D50C0);
  sub_18B988BAC(v22, &unk_1EA9D92F0);
  sub_18B833D9C(v35);
  Height = CGRectGetHeight(*(v23 + *(v32 + 96)));
  v25 = v30();
  sub_18B988BAC(v23, &unk_1EA9D4F40);
  v26 = *(v25 + 88);

  return Height < v26;
}

void sub_18B9C9958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  if (!*(v7 + 16))
  {
    goto LABEL_14;
  }

  v8 = sub_18B831970(a1, a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_14;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_endAccess();
  v11 = swift_beginAccess();
  v12 = *(v10 + 32);
  MEMORY[0x1EEE9AC00](v11);
  v29[2] = a3;
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BAD1D18(sub_18B9D4DF0, v29, v12);
  v14 = v13;

  v15 = v14;
  if (v14 || (v16 = sub_18BC1E3F8(), v15 = sub_18BA6189C(v16), , v15))
  {
    swift_beginAccess();
    v17 = v14;
    v18 = sub_18B9CE374(v15);
    swift_endAccess();

    [v15 setHidden_];

    return;
  }

  v31 = 0;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = &v31;
  *(v20 + 24) = v10;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_18B9D4E14;
  *(v21 + 24) = v20;
  aBlock[4] = sub_18B9D53B0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7E3BF4;
  aBlock[3] = &block_descriptor_474;
  v22 = _Block_copy(aBlock);
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v19 performWithoutAnimation_];
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
LABEL_14:
    swift_endAccess();
    __break(1u);
    goto LABEL_15;
  }

  v23 = v31;
  if (!v31)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = &v31[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier];
  swift_beginAccess();
  *v24 = a1;
  v24[1] = a2;
  v25 = v23;

  sub_18BC1E3F8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  if (v31)
  {
    v27 = Strong;
    [Strong addSubview_];

LABEL_11:
    if (v31)
    {
      v31;

      v28 = v31;

      return;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_18B9C9CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5048);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  if (!*(a1 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement))
  {
    (*(v8 + 56))(v6, 1, 1, v7, v9);
    goto LABEL_5;
  }

  v15[1] = *(a1 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement);
  swift_unknownObjectRetain();
  v12 = swift_dynamicCast();
  (*(v8 + 56))(v6, v12 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_5:
    sub_18B988BAC(v6, &qword_1EA9D5048);
    v13 = 0;
    return v13 & 1;
  }

  sub_18B7CF39C(v6, v11, &unk_1EA9D92F0);
  v13 = sub_18B8598D4(v11, a2);
  sub_18B988BAC(v11, &unk_1EA9D92F0);
  return v13 & 1;
}

uint64_t sub_18B9C9F00()
{
  if (*(v0 + 184))
  {
    return 0x207974706D65207BLL;
  }

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v9 = 123;
  v10 = 0xE100000000000000;
  if (*(*(v0 + 48) + 16))
  {
    sub_18BC21AD8();

    strcpy(v8, " insertions: ");
    HIWORD(v8[1]) = -4864;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
    sub_18B7B0B08(&qword_1EA9D9F90, &unk_1EA9D92F0);
    v4 = sub_18BC20FE8();
    MEMORY[0x18CFFC150](v4);

    MEMORY[0x18CFFC150](59, 0xE100000000000000);
    MEMORY[0x18CFFC150](v8[0], v8[1]);
  }

  if (*(v2 + 16))
  {
    strcpy(v8, " removals: ");
    HIDWORD(v8[1]) = -352321536;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
    sub_18B7B0B08(&qword_1EA9D9F90, &unk_1EA9D92F0);
    v5 = sub_18BC20FE8();
    MEMORY[0x18CFFC150](v5);

    MEMORY[0x18CFFC150](59, 0xE100000000000000);
    MEMORY[0x18CFFC150](v8[0], v8[1]);
  }

  if (*(v3 + 16))
  {
    strcpy(v8, " moves: ");
    BYTE1(v8[1]) = 0;
    WORD1(v8[1]) = 0;
    HIDWORD(v8[1]) = -402653184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
    sub_18B7B0B08(&qword_1EA9D9F90, &unk_1EA9D92F0);
    v6 = sub_18BC20FE8();
    MEMORY[0x18CFFC150](v6);

    MEMORY[0x18CFFC150](59, 0xE100000000000000);
    MEMORY[0x18CFFC150](v8[0], v8[1]);
  }

  if (*(*(v0 + 72) + 16))
  {
    strcpy(v8, " reloads: ");
    BYTE3(v8[1]) = 0;
    HIDWORD(v8[1]) = -369098752;
    _s4ItemVMa_2();
    sub_18B812E34(&qword_1EA9D9230, 255, _s4ItemVMa_2);
    v7 = sub_18BC20FE8();
    MEMORY[0x18CFFC150](v7);

    MEMORY[0x18CFFC150](v8[0], v8[1]);
  }

  MEMORY[0x18CFFC150](32032, 0xE200000000000000);
  return v9;
}

uint64_t sub_18B9CA280(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x128);
  if (!*(v3 + v9))
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
    v11 = *(v3 + v9);
    *(v3 + v9) = v10;
    v12 = v10;

    v13 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
    v14 = *((*v8 & *v4) + 0x130);
    v15 = *(v4 + v14);
    *(v4 + v14) = v13;
    v16 = v13;

    v17 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_18BC41E60;
    *(v18 + 32) = v12;
    *(v18 + 40) = v16;
    sub_18B7B0AC0(0, &qword_1EA9D50B0);
    v19 = v12;
    v20 = v16;
    v21 = sub_18BC20D88();

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v60 = sub_18B9D4EA4;
    v61 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = sub_18B7B0DB0;
    v59 = &block_descriptor_507;
    v23 = _Block_copy(&aBlock);

    [v17 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
    _Block_release(v23);

    v24 = swift_allocObject();
    v24[2] = v4;
    v24[3] = v19;
    v24[4] = v20;
    v60 = sub_18B9D4EAC;
    v61 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = sub_18B7B0DB0;
    v59 = &block_descriptor_513;
    v25 = _Block_copy(&aBlock);
    v26 = v19;
    v27 = v20;
    v28 = v4;

    [v17 _performWithoutRetargetingAnimations_];
    _Block_release(v25);
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v4;
  *(v29 + 24) = a2;
  *(v29 + 32) = a3;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18B7CA054(a1, &v54, &unk_1EA9D5060);
  if (v55)
  {
    sub_18B7C3FA4(&v54, &aBlock);
    v31 = *__swift_project_boxed_opaque_existential_1Tm(&aBlock, v59);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_18B9D4F1C;
    *(v32 + 24) = v29;
    swift_beginAccess();
    v33 = *(v31 + 24);
    v34 = v4;
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 24) = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_18B9B5814(0, v33[2] + 1, 1, v33);
      *(v31 + 24) = v33;
    }

    v37 = v33[2];
    v36 = v33[3];
    if (v37 >= v36 >> 1)
    {
      v33 = sub_18B9B5814((v36 > 1), v37 + 1, 1, v33);
    }

    v33[2] = v37 + 1;
    v38 = &v33[2 * v37];
    v38[4] = sub_18B7D1E94;
    v38[5] = v32;
    *(v31 + 24) = v33;
    swift_endAccess();
    v39 = __swift_project_boxed_opaque_existential_1Tm(&aBlock, v59);
    v40 = swift_allocObject();
    *(v40 + 16) = sub_18B9D4F28;
    *(v40 + 24) = v30;
    v41 = *v39;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_18B9D4F30;
    *(v42 + 24) = v40;
    swift_beginAccess();
    v43 = *(v41 + 32);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *(v41 + 32) = v43;
    if ((v44 & 1) == 0)
    {
      v43 = sub_18B9B5814(0, v43[2] + 1, 1, v43);
      *(v41 + 32) = v43;
    }

    v46 = v43[2];
    v45 = v43[3];
    if (v46 >= v45 >> 1)
    {
      v43 = sub_18B9B5814((v45 > 1), v46 + 1, 1, v43);
    }

    v43[2] = v46 + 1;
    v47 = &v43[2 * v46];
    v47[4] = sub_18B9D53B0;
    v47[5] = v42;
    *(v41 + 32) = v43;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  }

  else
  {
    v49 = v4;
    sub_18B988BAC(&v54, &unk_1EA9D5060);
    v50 = objc_opt_self();
    v51 = *(v49 + *((*v8 & *v49) + 0x1B8));
    v60 = sub_18B9D4F1C;
    v61 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = sub_18B7B0DB0;
    v59 = &block_descriptor_520;
    v52 = _Block_copy(&aBlock);
    sub_18BC1E1A8();
    swift_unknownObjectRetain();

    v60 = sub_18B9D4F28;
    v61 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = sub_18B8043A0;
    v59 = &block_descriptor_523;
    v53 = _Block_copy(&aBlock);
    sub_18BC1E1A8();

    [v50 _animateUsingSpringBehavior_tracking_animations_completion_];

    _Block_release(v53);
    _Block_release(v52);
    return swift_unknownObjectRelease();
  }
}

void sub_18B9CA990()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18B9CABD4();
  }
}

id sub_18B9CA9E4(void *a1, double a2, double a3)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *a1;
  v7 = *(a1 + *(v6 + 0x128));
  if (v7)
  {
    [v7 setValue_];
    v6 = *v5 & *a1;
  }

  result = *(a1 + *(v6 + 304));
  if (result)
  {

    return [result setValue_];
  }

  return result;
}

void sub_18B9CAAA8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_18B9CAB04();
    }
  }
}

id sub_18B9CAB04()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x128);
  v3 = *(v0 + v2);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  v5 = *((*v1 & *v0) + 0x130);
  v6 = *(v0 + v5);
  if (v6)
  {
    [v6 invalidate];
    v7 = *(v0 + v5);
  }

  else
  {
    v7 = 0;
  }

  *(v0 + v5) = 0;

  return [v0 _setAutomaticContentOffsetAdjustmentEnabled_];
}

void sub_18B9CABD4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x128));
  if (v2)
  {
    v14 = v2;
    if (([v14 isInvalidated] & 1) != 0 || (v3 = *(v0 + *((*v1 & *v0) + 0x130))) == 0)
    {
      v4 = v14;
    }

    else
    {
      v13 = v3;
      if (([v13 isInvalidated] & 1) == 0)
      {
        v5 = *((*v1 & *v0) + 0x138);
        *(v0 + v5) = 1;
        v6 = objc_opt_self();
        v7 = swift_allocObject();
        v7[2] = v0;
        v7[3] = v14;
        v7[4] = v13;
        v8 = swift_allocObject();
        *(v8 + 16) = sub_18B9D4F80;
        *(v8 + 24) = v7;
        aBlock[4] = sub_18B9D53B0;
        aBlock[5] = v8;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_18B7E3BF4;
        aBlock[3] = &block_descriptor_543;
        v9 = _Block_copy(aBlock);
        v10 = v14;
        v11 = v13;
        v12 = v0;
        sub_18BC1E1A8();

        [v6 performWithoutAnimation_];

        _Block_release(v9);
        LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

        if (v6)
        {
          __break(1u);
        }

        else
        {
          *(v0 + v5) = 0;
        }

        return;
      }

      v4 = v13;
    }
  }
}

void *sub_18B9CAE54(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  sub_18B8554D0(a1, &v14 - v4, _s4ItemVMa_2);
  swift_storeEnumTagMultiPayload();
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x150);
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16))
  {
    sub_18BC1E3F8();
    v8 = sub_18B83B1C8(v5);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      sub_18BC1E1A8();
      sub_18B988BAC(v5, &unk_1EA9D92F0);

      v11 = *(v10 + 24);
      v12 = v11;

      return v11;
    }
  }

  sub_18B988BAC(v5, &unk_1EA9D92F0);
  return 0;
}

uint64_t sub_18B9CAFCC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28[-v8];
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  swift_beginAccess();
  v12 = *(v1 + v11);
  sub_18BC1E3F8();
  v13 = sub_18B9BA24C(a1, v12, _s4ItemVMa_2, _s4ItemVMa_2, _s4ItemVMa_2);

  if (v13)
  {
    v29 = *(v2 + v11);
    sub_18BC1E3F8();
    sub_18B9CDB20(v9);
    sub_18B988BAC(v9, &unk_1EA9D4F30);
    v15 = *(v2 + v11);
    *(v2 + v11) = v29;
    v16 = sub_18BC1E3F8();
    v17 = sub_18B8369E0(v16, v15);

    if (v17)
    {
    }

    else
    {
      sub_18B9CB3CC(v15);
      swift_beginAccess();
      sub_18BC1E1A8();
      sub_18B8487D0(MEMORY[0x1E69E7CD0], 1);
    }

    sub_18B8554D0(a1, v6, _s4ItemVMa_2);
    swift_storeEnumTagMultiPayload();
    v18 = *((*v10 & *v2) + 0x150);
    swift_beginAccess();
    v19 = *(v2 + v18);
    if (*(v19 + 16))
    {
      sub_18BC1E3F8();
      v20 = sub_18B83B1C8(v6);
      if (v21)
      {
        v22 = *(*(v19 + 56) + 8 * v20);
        sub_18BC1E1A8();
        sub_18B988BAC(v6, &unk_1EA9D92F0);

        v23 = *(v22 + 24);
        v24 = v23;

        if (v23)
        {
          (*((*v10 & *v24) + 0xB0))(0);
        }

        goto LABEL_11;
      }
    }

    sub_18B988BAC(v6, &unk_1EA9D92F0);
LABEL_11:
    v25 = v2 + *((*v10 & *v2) + 0x88);
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v26 = *(v25 + 1);
      ObjectType = swift_getObjectType();
      (*(v26 + 56))(v2, a1, ObjectType, v26);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_18B9CB3CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (*(a1 + 16) <= *(v15 + 16) >> 3)
  {
    v26 = v15;
    sub_18BC1E3F8();
    sub_18BC01504(a1);
    v16 = v26;
  }

  else
  {
    sub_18BC1E3F8();
    v16 = sub_18BC02180(a1, v15);
  }

  v17 = *(v16 + 16);
  if (v17 == 1)
  {
    sub_18BA6186C(v16, v9);

LABEL_11:
    v24 = *((*v13 & *v2) + 0xC8);
    swift_beginAccess();
    sub_18B7FD070(v9, v2 + v24, &unk_1EA9D4F30);
    return swift_endAccess();
  }

  if (v17)
  {

    v23 = _s4ItemVMa_2();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    goto LABEL_11;
  }

  v18 = *((*v13 & *v2) + 0xC8);
  swift_beginAccess();
  sub_18B7CA054(v2 + v18, v12, &unk_1EA9D4F30);
  v19 = _s4ItemVMa_2();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v12, 1, v19);
  result = sub_18B988BAC(v12, &unk_1EA9D4F30);
  if (v21 != 1)
  {
    v25[0] = *(v2 + v14);
    v25[3] = v25[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5070);
    sub_18B7B0B08(&qword_1EA9D5078, &qword_1EA9D5070);
    sub_18B812E34(&qword_1EA9D5080, 255, _s4ItemVMa_2);
    result = sub_18BC21138();
    if ((result & 1) == 0)
    {
      (*(v20 + 56))(v6, 1, 1, v19);
      swift_beginAccess();
      sub_18B7FD070(v6, v2 + v18, &unk_1EA9D4F30);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_18B9CB7BC()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0);
  swift_beginAccess();
  memcpy(__dst, v0 + v2, 0x139uLL);
  result = sub_18B81CA10(__dst);
  if (result == 1)
  {
    v4 = (*(v0 + *((*v1 & *v0) + 0x90)) + qword_1EA9D95C8);
    swift_beginAccess();
    v5 = *v4;
    v6 = v4[2];
    v28[1] = v4[1];
    v28[2] = v6;
    v28[0] = v5;
    v7 = sub_18B7B0B08(&qword_1EA9D5108, &unk_1EA9D5110);
    v8 = *((*v1 & *v0) + 0x1D8);
    swift_beginAccess();
    v9 = *(v0 + v8);
    swift_beginAccess();
    v10 = v9[7];
    v23 = v9[6];
    v24 = v10;
    v25[0] = v9[8];
    *(v25 + 9) = *(v9 + 137);
    sub_18B7CA054(v28, v27, &unk_1EA9D4F90);
    sub_18BC1E1A8();
    sub_18B7CA054(&v23, v27, &unk_1EA9D50C0);
    [v0 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    sub_18B7CA054(v28, v27, &unk_1EA9D4F90);
    sub_18B83E780(v28, v28, &__src[8]);
    __src[2] = v23;
    __src[3] = v24;
    __src[4] = v25[0];
    *(&__src[4] + 9) = *(v25 + 9);
    LOBYTE(__src[0]) = 0;
    *(&__src[0] + 1) = v0;
    *&__src[1] = v7;
    *(&__src[1] + 1) = v9;
    *&__src[6] = v12;
    *(&__src[6] + 1) = v14;
    *&__src[7] = v16;
    *(&__src[7] + 1) = v18;
    CGRectMake(__src, v19, v20, v21);
    memcpy(v27, v0 + v2, 0x139uLL);
    memcpy(v0 + v2, __src, 0x139uLL);
    v22 = v0;
    return sub_18B988BAC(v27, &qword_1EA9D5100);
  }

  return result;
}

id sub_18B9CBA44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_18BC1E1A8();
  v3 = v1(v2);

  return v3;
}

id sub_18B9CBA94(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_18B7B0AC0(0, &qword_1EA9D39D0);
  v2 = sub_18BC20D98();
  sub_18BC1E1A8();
  v3 = v1(v2);

  return v3;
}

void *sub_18B9CBB38()
{
  v1 = v0;
  v2 = _s4ItemVMa_4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FC0);
  v6 = *v0;
  v7 = sub_18BC21A78();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_18B8554D0(*(v6 + 48) + v21, v5, _s4ItemVMa_4);
        result = sub_18B829704(v5, *(v8 + 48) + v21, _s4ItemVMa_4);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_18B9CBD44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5020);
  v2 = *v0;
  v3 = sub_18BC21A78();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_18B833990(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18B9CBEBC()
{
  v1 = v0;
  v2 = _s4ItemVMa_2();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4F60);
  v6 = *v0;
  v7 = sub_18BC21A78();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_18B8554D0(*(v6 + 48) + v21, v5, _s4ItemVMa_2);
        result = sub_18B829704(v5, *(v8 + 48) + v21, _s4ItemVMa_2);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_18B9CC0EC()
{
  v1 = v0;
  v2 = _s7SectionVMa_1();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5140);
  v6 = *v0;
  v7 = sub_18BC21A78();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_18B8554D0(*(v6 + 48) + v21, v5, _s7SectionVMa_1);
        result = sub_18B829704(v5, *(v8 + 48) + v21, _s7SectionVMa_1);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_18B9CC31C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v10 = *v3;
  v11 = sub_18BC21A78();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v6;
    result = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 56 + 8 * v14)
    {
      result = memmove(result, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = *(v10 + 56);
    v19 = -1;
    if (v17 < 64)
    {
      v19 = ~(-1 << v17);
    }

    v20 = v19 & v18;
    v21 = (v17 + 63) >> 6;
    if ((v19 & v18) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_17:
        v25 = *(v27 + 72) * (v22 | (v16 << 6));
        sub_18B7CA054(*(v10 + 48) + v25, v9, a1);
        result = sub_18B7CF39C(v9, *(v12 + 48) + v25, a1);
      }

      while (v20);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v26;
        goto LABEL_21;
      }

      v24 = *(v10 + 56 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v12;
  }

  return result;
}

void *sub_18B9CC528()
{
  v1 = v0;
  v2 = sub_18BC1EC08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5040);
  v6 = *v0;
  v7 = sub_18BC21A78();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_18B9CC774()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FD0);
  v2 = *v0;
  v3 = sub_18BC21A78();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18B9CC8B4()
{
  v1 = v0;
  v2 = _s4PageVMa_0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6450);
  v6 = *v0;
  v7 = sub_18BC21A78();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_18B8554D0(*(v6 + 48) + v21, v5, _s4PageVMa_0);
        result = sub_18B829704(v5, *(v8 + 48) + v21, _s4PageVMa_0);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_18B9CCAC0()
{
  v1 = v0;
  v2 = _s4ItemVMa_1();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FC0);
  v6 = *v0;
  v7 = sub_18BC21A78();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_18B8554D0(*(v6 + 48) + v21, v5, _s4ItemVMa_1);
        result = sub_18B829704(v5, *(v8 + 48) + v21, _s4ItemVMa_1);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_18B9CCCCC()
{
  v1 = v0;
  v2 = _s4ItemVMa_0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FB0);
  v6 = *v0;
  v7 = sub_18BC21A78();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_18B8554D0(*(v6 + 48) + v21, v5, _s4ItemVMa_0);
        result = sub_18B829704(v5, *(v8 + 48) + v21, _s4ItemVMa_0);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_18B9CCED8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4FE8);
  v2 = *v0;
  v3 = sub_18BC21A78();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_18BC1E3F8();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_18B9CD05C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18BC21A78();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        *(*(v5 + 48) + 8 * (v15 | (v9 << 6))) = *(*(v3 + 48) + 8 * (v15 | (v9 << 6)));
        result = sub_18BC1E1A8();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_18B9CD19C()
{
  v1 = v0;
  v2 = _s4ItemVMa();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5000);
  v6 = *v0;
  v7 = sub_18BC21A78();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_18B8554D0(*(v6 + 48) + v21, v5, _s4ItemVMa);
        result = sub_18B829704(v5, *(v8 + 48) + v21, _s4ItemVMa);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_18B9CD3A8()
{
  v1 = v0;
  v2 = _s4PageVMa();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5030);
  v6 = *v0;
  v7 = sub_18BC21A78();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_18B8554D0(*(v6 + 48) + v21, v5, _s4PageVMa);
        result = sub_18B829704(v5, *(v8 + 48) + v21, _s4PageVMa);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_18B9CD5B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FD0);
  v2 = *v0;
  v3 = sub_18BC21A78();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_18B9CD708(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_18BC21A78();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_18B9CD870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_18BC1EC08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
  v31 = a1;
  v10 = sub_18BC20A68();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_18B812E34(&qword_1EA9D9FE0, 255, MEMORY[0x1E69695A8]);
      v19 = sub_18BC20AE8();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18B9CC528();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_18B9CF32C(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_18B9CDB20@<X0>(uint64_t a1@<X8>)
{
  v3 = _s4ItemVMa_2();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_18BC22158();
  v24 = v3;
  sub_18BC1EC08();
  sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  v8 = sub_18BC221A8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v21 = v1;
    v22 = v4;
    v23 = a1;
    v11 = ~v9;
    v12 = *(v4 + 72);
    while (1)
    {
      sub_18B8554D0(*(v7 + 48) + v12 * v10, v6, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815380(v6, _s4ItemVMa_2);
      if (updated)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v14 = 1;
        a1 = v23;
        goto LABEL_10;
      }
    }

    v15 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v15;
    v25 = *v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18B9CBEBC();
      v17 = v25;
    }

    v18 = *(v17 + 48) + v12 * v10;
    a1 = v23;
    sub_18B829704(v18, v23, _s4ItemVMa_2);
    sub_18B9CF638(v10, _s4ItemVMa_2, _s4ItemVMa_2, _s4ItemVMa_2);
    v14 = 0;
    *v15 = v25;
LABEL_10:
    v4 = v22;
  }

  else
  {
    v14 = 1;
  }

  return (*(v4 + 56))(a1, v14, 1, v24);
}

uint64_t sub_18B9CDDEC@<X0>(uint64_t a1@<X8>)
{
  v3 = _s4ItemVMa_1();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  v8 = sub_18BC221A8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v19 = v1;
    v20 = v3;
    v21 = a1;
    v11 = ~v9;
    v12 = *(v4 + 72);
    while (1)
    {
      sub_18B8554D0(*(v7 + 48) + v12 * v10, v6, _s4ItemVMa_1);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815380(v6, _s4ItemVMa_1);
      if (updated)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v14 = 1;
        a1 = v21;
        goto LABEL_10;
      }
    }

    v15 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v15;
    v22 = *v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18B9CCAC0();
      v17 = v22;
    }

    a1 = v21;
    sub_18B829704(*(v17 + 48) + v12 * v10, v21, _s4ItemVMa_1);
    sub_18B9D01A0(v10, _s4ItemVMa_1, _s4ItemVMa_1, _s4ItemVMa_1);
    v14 = 0;
    *v15 = v22;
LABEL_10:
    v3 = v20;
  }

  else
  {
    v14 = 1;
  }

  return (*(v4 + 56))(a1, v14, 1, v3);
}

uint64_t sub_18B9CE0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = _s4ItemVMa_4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_18BC22158();
  v24 = v3;
  sub_18BC1EC08();
  sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  v8 = sub_18BC221A8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v21 = v1;
    v22 = v4;
    v23 = a1;
    v11 = ~v9;
    v12 = *(v4 + 72);
    while (1)
    {
      sub_18B8554D0(*(v7 + 48) + v12 * v10, v6, _s4ItemVMa_4);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815380(v6, _s4ItemVMa_4);
      if (updated)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v14 = 1;
        a1 = v23;
        goto LABEL_10;
      }
    }

    v15 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v15;
    v25 = *v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18B9CBB38();
      v17 = v25;
    }

    v18 = *(v17 + 48) + v12 * v10;
    a1 = v23;
    sub_18B829704(v18, v23, _s4ItemVMa_4);
    sub_18B9CF638(v10, _s4ItemVMa_4, _s4ItemVMa_4, _s4ItemVMa_4);
    v14 = 0;
    *v15 = v25;
LABEL_10:
    v4 = v22;
  }

  else
  {
    v14 = 1;
  }

  return (*(v4 + 56))(a1, v14, 1, v24);
}

uint64_t sub_18B9CE374(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    sub_18BC1E3F8();
    v4 = a1;
    v5 = sub_18BC219E8();

    if (v5)
    {
      v6 = sub_18B9CF0D0();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for SFFluidCollectionReusableView();
  v9 = sub_18BC215B8();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_18BC215C8();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18B9CD708(&unk_1EA9D4FF0);
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_18B9CF938(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_18B9CE534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = *v3;
  sub_18BC22158();
  v26 = a1;
  sub_18B83ADFC(v27);
  v11 = sub_18BC221A8();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v22 = v3;
    v23 = v7;
    v24 = v6;
    v25 = a2;
    v14 = ~v12;
    v15 = *(v7 + 72);
    while (1)
    {
      sub_18B7CA054(*(v10 + 48) + v15 * v13, v9, &unk_1EA9D92F0);
      v16 = sub_18B8598D4(v9, v26);
      sub_18B988BAC(v9, &unk_1EA9D92F0);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v17 = 1;
        a2 = v25;
        goto LABEL_10;
      }
    }

    v18 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v18;
    v27[0] = *v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18B9CC31C(&unk_1EA9D92F0, &unk_18BC42990, &unk_1EA9D9F80);
      v20 = v27[0];
    }

    a2 = v25;
    sub_18B7CF39C(*(v20 + 48) + v15 * v13, v25, &unk_1EA9D92F0);
    sub_18B9CFAD8(v13);
    v17 = 0;
    *v18 = v27[0];
LABEL_10:
    v7 = v23;
    v6 = v24;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a2, v17, 1, v6);
}

uint64_t sub_18B9CE784@<X0>(uint64_t a1@<X8>)
{
  v3 = _s4PageVMa_0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  v8 = sub_18BC221A8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v19 = v1;
    v20 = v3;
    v21 = a1;
    v11 = ~v9;
    v12 = *(v4 + 72);
    while (1)
    {
      sub_18B8554D0(*(v7 + 48) + v12 * v10, v6, _s4PageVMa_0);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815380(v6, _s4PageVMa_0);
      if (updated)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v14 = 1;
        a1 = v21;
        goto LABEL_10;
      }
    }

    v15 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v15;
    v22 = *v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18B9CC8B4();
      v17 = v22;
    }

    a1 = v21;
    sub_18B829704(*(v17 + 48) + v12 * v10, v21, _s4PageVMa_0);
    sub_18B9D01A0(v10, _s4PageVMa_0, _s4PageVMa_0, _s4PageVMa_0);
    v14 = 0;
    *v15 = v22;
LABEL_10:
    v3 = v20;
  }

  else
  {
    v14 = 1;
  }

  return (*(v4 + 56))(a1, v14, 1, v3);
}

uint64_t sub_18B9CEA40@<X0>(uint64_t a1@<X8>)
{
  v3 = _s4ItemVMa();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_18BC22158();
  v24 = v3;
  sub_18BC1EC08();
  sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  v8 = sub_18BC221A8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v21 = v1;
    v22 = v4;
    v23 = a1;
    v11 = ~v9;
    v12 = *(v4 + 72);
    while (1)
    {
      sub_18B8554D0(*(v7 + 48) + v12 * v10, v6, _s4ItemVMa);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815380(v6, _s4ItemVMa);
      if (updated)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v14 = 1;
        a1 = v23;
        goto LABEL_10;
      }
    }

    v15 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v15;
    v25 = *v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_18B9CD19C();
      v17 = v25;
    }

    v18 = *(v17 + 48) + v12 * v10;
    a1 = v23;
    sub_18B829704(v18, v23, _s4ItemVMa);
    sub_18B9D0498(v10);
    v14 = 0;
    *v15 = v25;
LABEL_10:
    v4 = v22;
  }

  else
  {
    v14 = 1;
  }

  return (*(v4 + 56))(a1, v14, 1, v24);
}

uint64_t sub_18B9CECD0(uint64_t a1)
{
  v3 = *v1;
  sub_18BC22158();
  MEMORY[0x18CFFD660](a1);
  v4 = sub_18BC221A8();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18B9CD5B4();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_18B9D07B4(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_18B9CEE04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *v4;
  if ((*v4 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v8 = *v4;
    }

    else
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_18BC1E3F8();
    sub_18BC1E1A8();
    v9 = sub_18BC219E8();

    if (v9)
    {
      v10 = sub_18B9CF228(v8, a1, a4);

      return v10;
    }

    return 0;
  }

  sub_18BC22158();
  MEMORY[0x18CFFD660](a1);
  v13 = sub_18BC221A8();
  v14 = -1 << *(v6 + 32);
  v15 = v13 & ~v14;
  if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v16 = ~v14;
  while (*(*(v6 + 48) + 8 * v15) != a1)
  {
    v15 = (v15 + 1) & v16;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v4;
  v20 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18B9CD05C(a2);
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 8 * v15);
  sub_18B9D07B4(v15);
  result = v19;
  *v4 = v20;
  return result;
}

uint64_t sub_18B9CEF94(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_18BC22158();
  sub_18BC20C28();
  v6 = sub_18BC221A8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_18BC21FD8() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18B9CCED8();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_18B9D095C(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_18B9CF0D0()
{
  v1 = v0;

  v2 = sub_18BC219A8();
  v3 = swift_unknownObjectRetain();
  v4 = sub_18BB5F97C(v3, v2);
  v13 = v4;
  sub_18BC1E1A8();
  v5 = sub_18BC215B8();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    type metadata accessor for SFFluidCollectionReusableView();
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_18BC215C8();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_18B9CF938(v7);
  result = sub_18BC215C8();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18B9CF228(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{

  v6 = sub_18BC219A8();
  v7 = swift_unknownObjectRetain();
  v8 = a3(v7, v6);
  v16 = v8;
  sub_18BC22158();
  MEMORY[0x18CFFD660](a2);
  v9 = sub_18BC221A8();
  v10 = v8 + 56;
  v11 = -1 << *(v8 + 32);
  v12 = v9 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v8 + 48);
    while (1)
    {
      v8 = *(v14 + 8 * v12);
      if (v8 == a2)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_18B9D07B4(v12);
  *v3 = v16;
  return v8;
}

void sub_18B9CF32C(int64_t a1)
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    sub_18BC1E1A8();
    v12 = sub_18BC21928();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
        v23 = sub_18BC20A68();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_18B9CF638(int64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v30 = a3;
  v31 = a4;
  v32 = a2(0);
  v6 = *(v32 - 8);
  result = MEMORY[0x1EEE9AC00](v32);
  v9 = &v28 - v8;
  v10 = *v4;
  v11 = *v4 + 56;
  v12 = -1 << *(*v4 + 32);
  v13 = (a1 + 1) & ~v12;
  if (((1 << v13) & *(v11 + 8 * (v13 >> 6))) != 0)
  {
    v14 = ~v12;
    sub_18BC1E1A8();
    v15 = sub_18BC21928();
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) != 0)
    {
      v29 = (v15 + 1) & v14;
      v16 = *(v6 + 72);
      v17 = v14;
      do
      {
        v18 = v11;
        v19 = v16;
        v20 = v16 * v13;
        sub_18B8554D0(*(v10 + 48) + v16 * v13, v9, v30);
        sub_18BC22158();
        v21 = v17;
        sub_18BC1EC08();
        sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
        sub_18BC20A78();
        v22 = sub_18BC221A8();
        sub_18B815380(v9, v31);
        v23 = v22 & v21;
        v17 = v21;
        if (a1 >= v29)
        {
          if (v23 < v29)
          {
            v16 = v19;
            goto LABEL_5;
          }

          v16 = v19;
          if (a1 < v23)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v16 = v19;
          if (v23 < v29 && a1 < v23)
          {
            goto LABEL_5;
          }
        }

        v24 = v16 * a1;
        if (v16 * a1 < v20 || *(v10 + 48) + v16 * a1 >= (*(v10 + 48) + v20 + v16))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v13;
        if (v24 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v13;
        }

LABEL_5:
        v13 = (v13 + 1) & v17;
        v11 = v18;
      }

      while (((*(v18 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }

    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v25 = *(v10 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v27;
    ++*(v10 + 36);
  }

  return result;
}

unint64_t sub_18B9CF938(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_18BC1E1A8();
    v8 = sub_18BC21928();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_18BC215B8();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_18B9CFAD8(int64_t a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v21 - v4;
  v5 = *v1;
  v6 = *v1 + 56;
  v7 = -1 << *(*v1 + 32);
  v8 = (a1 + 1) & ~v7;
  if (((1 << v8) & *(v6 + 8 * (v8 >> 6))) != 0)
  {
    v9 = ~v7;
    sub_18BC1E1A8();
    v10 = sub_18BC21928();
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v23 = v5;
      v24 = v6;
      v11 = (v10 + 1) & v9;
      v12 = *(v3 + 72);
      v22 = v12;
      while (1)
      {
        v13 = v12 * v8;
        v14 = v25;
        sub_18B7CA054(*(v5 + 48) + v12 * v8, v25, &unk_1EA9D92F0);
        sub_18BC22158();
        sub_18B83ADFC(v26);
        v15 = sub_18BC221A8();
        sub_18B988BAC(v14, &unk_1EA9D92F0);
        v16 = v15 & v9;
        if (a1 >= v11)
        {
          if (v16 < v11)
          {
            v12 = v22;
          }

          else
          {
            v12 = v22;
            if (a1 >= v16)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v12 = v22;
          if (v16 >= v11 || a1 >= v16)
          {
LABEL_13:
            v5 = v23;
            v17 = v12 * a1;
            if (v12 * a1 < v13 || *(v23 + 48) + v12 * a1 >= (*(v23 + 48) + v13 + v12))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v8;
            }

            else
            {
              a1 = v8;
              if (v17 != v13)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v8;
              }
            }

            goto LABEL_6;
          }
        }

        v5 = v23;
LABEL_6:
        v8 = (v8 + 1) & v9;
        if (((*(v24 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {

          v6 = v24;
          goto LABEL_21;
        }
      }
    }

LABEL_21:
    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v5 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v20;
    ++*(v5 + 36);
  }
}

void sub_18B9CFDBC(int64_t a1)
{
  v3 = _s4ItemVMa_0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    sub_18BC1E1A8();
    v12 = sub_18BC21928();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = *(v4 + 72);
      v14 = v11;
      v15 = (v12 + 1) & v11;
      v26 = v13;
      do
      {
        v17 = *(v7 + 48);
        v27 = v13 * v10;
        sub_18B8554D0(v17 + v13 * v10, v6, _s4ItemVMa_0);
        sub_18BC22158();
        sub_18BC22178();
        sub_18BC22178();
        sub_18BC1EC08();
        sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
        sub_18BC20A78();
        v18 = *&v6[*(v3 + 28)];
        v28 = v10;
        sub_18BC22178();
        if (v18)
        {
          v19 = v18;
          sub_18BC215D8();
        }

        sub_18BC22178();
        sub_18BC22178();
        if (*&v6[*(v3 + 40) + 8])
        {
          sub_18BC22178();
          sub_18BC20C28();
        }

        else
        {
          sub_18BC22178();
        }

        v13 = v26;
        v20 = sub_18BC221A8();
        sub_18B815380(v6, _s4ItemVMa_0);
        v21 = v20 & v14;
        if (a1 >= v15)
        {
          if (v21 < v15)
          {
            v16 = v28;
            goto LABEL_5;
          }

          v16 = v28;
          if (a1 < v21)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v16 = v28;
          if (v21 < v15 && a1 < v21)
          {
            goto LABEL_5;
          }
        }

        v22 = v13 * a1;
        if (v13 * a1 < v27 || *(v7 + 48) + v13 * a1 >= (*(v7 + 48) + v27 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_22;
        }

        a1 = v16;
        if (v22 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_22:
          a1 = v16;
        }

LABEL_5:
        v10 = (v16 + 1) & v14;
      }

      while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v23 = *(v7 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v25;
    ++*(v7 + 36);
  }
}

void sub_18B9D01A0(int64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v30 = a3;
  v31 = a4;
  v28 = a2(0);
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v27 - v7;
  v9 = *v4;
  v10 = *v4 + 56;
  v11 = -1 << *(*v4 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    sub_18BC1E1A8();
    v14 = sub_18BC21928();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v29 = (v14 + 1) & v13;
      v15 = *(v6 + 72);
      v16 = v13;
      do
      {
        v17 = v10;
        v18 = v15;
        v19 = v15 * v12;
        sub_18B8554D0(*(v9 + 48) + v15 * v12, v8, v30);
        sub_18BC22158();
        sub_18BC1EC08();
        sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
        v20 = v16;
        sub_18BC20A78();
        v21 = sub_18BC221A8();
        sub_18B815380(v8, v31);
        v22 = v21 & v20;
        v16 = v20;
        if (a1 >= v29)
        {
          if (v22 < v29)
          {
            v15 = v18;
            goto LABEL_5;
          }

          v15 = v18;
          if (a1 < v22)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = v18;
          if (v22 < v29 && a1 < v22)
          {
            goto LABEL_5;
          }
        }

        v23 = v15 * a1;
        if (v15 * a1 < v19 || *(v9 + 48) + v15 * a1 >= (*(v9 + 48) + v19 + v15))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v12;
        if (v23 != v19)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v12;
        }

LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v17;
      }

      while (((*(v17 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v24 = *(v9 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v26;
    ++*(v9 + 36);
  }
}

uint64_t sub_18B9D0498(int64_t a1)
{
  v27 = _s4ItemVMa();
  v3 = *(v27 - 8);
  result = MEMORY[0x1EEE9AC00](v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;
    sub_18BC1E1A8();
    v12 = sub_18BC21928();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v26 = (v12 + 1) & v11;
      v13 = *(v3 + 72);
      v14 = v11;
      do
      {
        v15 = v8;
        v16 = v13;
        v17 = v13 * v10;
        sub_18B8554D0(*(v7 + 48) + v13 * v10, v6, _s4ItemVMa);
        sub_18BC22158();
        v18 = v14;
        sub_18BC1EC08();
        sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
        sub_18BC20A78();
        v19 = sub_18BC221A8();
        sub_18B815380(v6, _s4ItemVMa);
        v20 = v19 & v18;
        v14 = v18;
        if (a1 >= v26)
        {
          if (v20 < v26)
          {
            v13 = v16;
            goto LABEL_5;
          }

          v13 = v16;
          if (a1 < v20)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = v16;
          if (v20 < v26 && a1 < v20)
          {
            goto LABEL_5;
          }
        }

        v21 = v13 * a1;
        if (v13 * a1 < v17 || *(v7 + 48) + v13 * a1 >= (*(v7 + 48) + v17 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v10;
        if (v21 != v17)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v14;
        v8 = v15;
      }

      while (((*(v15 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v7 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v24;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_18B9D07B4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_18BC1E1A8();
    v8 = sub_18BC21928();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_18BC22158();
        MEMORY[0x18CFFD660](v10);
        v11 = sub_18BC221A8() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_18B9D095C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_18BC1E1A8();
    v8 = sub_18BC21928();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_18BC22158();
        sub_18BC1E3F8();
        sub_18BC20C28();
        v10 = sub_18BC221A8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_18B9D0B20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = _s4ItemVMa_2();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  result = sub_18BC221A8();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_18BC1F118();
    *&v27 = a4;
    *(&v27 + 1) = a5;
    *&v28 = v16;
    *(&v28 + 1) = v17;
    *&v29 = v18;
    *(&v29 + 1) = v19;
    v30 = 0;
    v20 = sub_18BC1F138();
    if ((v21 & 1) == 0)
    {
      v22 = *(v9 + 72);
      do
      {
        sub_18B8554D0(a2 + v22 * v20, v11, _s4ItemVMa_2);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B815380(v11, _s4ItemVMa_2);
        if (updated)
        {
          break;
        }

        sub_18BC1F158();
        v25[1] = v27;
        v25[2] = v28;
        v25[3] = v29;
        v26 = v30;
        v20 = sub_18BC1F138();
      }

      while ((v24 & 1) == 0);
    }

    return v20;
  }

  return result;
}

uint64_t sub_18B9D0D54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = _s7SectionVMa_1();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  v13 = *(a1 + *(v9 + 20));
  sub_18BC22178();
  result = sub_18BC221A8();
  v15 = 1 << *a4;
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v18 = v17 & result;
    v19 = sub_18BC1F118();
    *&v29 = a4;
    *(&v29 + 1) = a5;
    *&v30 = v18;
    *(&v30 + 1) = v19;
    *&v31 = v20;
    *(&v31 + 1) = v21;
    v32 = 0;
    v22 = sub_18BC1F138();
    if ((v23 & 1) == 0)
    {
      v24 = *(v10 + 72);
      do
      {
        sub_18B8554D0(a2 + v24 * v22, v12, _s7SectionVMa_1);
        if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
        {
          v26 = v12[*(v9 + 20)];
          sub_18B815380(v12, _s7SectionVMa_1);
          if (v13 == v26)
          {
            return v22;
          }
        }

        else
        {
          sub_18B815380(v12, _s7SectionVMa_1);
        }

        sub_18BC1F158();
        v27[1] = v29;
        v27[2] = v30;
        v27[3] = v31;
        v28 = v32;
        v22 = sub_18BC1F138();
      }

      while ((v25 & 1) == 0);
    }

    return v22;
  }

  return result;
}

uint64_t sub_18B9D0FB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v30 - v11;
  sub_18BC22158();
  sub_18B83ADFC(v30);
  result = sub_18BC221A8();
  v14 = 1 << *a4;
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = v16 & result;
    v18 = sub_18BC1F118();
    *&v32 = a4;
    *(&v32 + 1) = a5;
    *&v33 = v17;
    *(&v33 + 1) = v18;
    *&v34 = v19;
    *(&v34 + 1) = v20;
    v35 = 0;
    v21 = sub_18BC1F138();
    v22 = v21;
    if ((v23 & 1) == 0)
    {
      v24 = *(v10 + 72);
      for (i = a2 + v24 * v21; ; i = a2 + v24 * v27)
      {
        sub_18B7CA054(i, v12, &unk_1EA9D92F0);
        v26 = sub_18B8598D4(v12, a1);
        sub_18B988BAC(v12, &unk_1EA9D92F0);
        if (v26)
        {
          break;
        }

        sub_18BC1F158();
        v30[0] = v32;
        v30[1] = v33;
        v30[2] = v34;
        v31 = v35;
        v27 = sub_18BC1F138();
        v22 = v27;
        if (v28)
        {
          break;
        }
      }
    }

    return v22;
  }

  return result;
}

void sub_18B9D1198(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, _OWORD *a5)
{
  v69 = a5;
  v73 = sub_18BC1EDD8();
  v9 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v60 - v12;
  v68 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v60 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_60;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v75 = a3;
  v19 = (a2 - a1) / v17;
  v87 = a1;
  v80 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v63 = (v9 + 8);
      v40 = v38;
      v41 = v75;
      v64 = a4;
      v76 = a1;
      v65 = v39;
      while (2)
      {
        while (1)
        {
          v61 = v38;
          v42 = a2 + v39;
          v77 = a2 + v39;
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v87 = a2;
              v79 = v61;
              goto LABEL_58;
            }

            v44 = v41;
            v62 = v38;
            v45 = v42;
            v75 = v44 + v39;
            v46 = v40 + v39;
            v47 = v74;
            v67 = v44;
            sub_18B8554D0(v40 + v39, v74, _s4ItemVMa_2);
            v48 = v70;
            sub_18B8554D0(v45, v70, _s4ItemVMa_2);
            v49 = v69;
            swift_beginAccess();
            v50 = v49[2];
            v84 = v49[1];
            v85 = v50;
            v86 = v49[3];
            sub_18B7CA054(&v84, v78, &unk_1EA9D4F90);
            v51 = v71;
            sub_18B9C7AA4(v47);
            sub_18B988BAC(&v84, &unk_1EA9D4F90);
            v52 = v49[2];
            v81 = v49[1];
            v82 = v52;
            v83 = v49[3];
            sub_18B7CA054(&v81, v78, &unk_1EA9D4F90);
            v53 = v72;
            sub_18B9C7AA4(v48);
            sub_18B988BAC(&v81, &unk_1EA9D4F90);
            v54 = sub_18BC1ED78();
            v55 = *v63;
            v56 = v53;
            v57 = v73;
            (*v63)(v56, v73);
            v55(v51, v57);
            sub_18B815380(v48, _s4ItemVMa_2);
            sub_18B815380(v74, _s4ItemVMa_2);
            if (v54)
            {
              break;
            }

            v38 = v46;
            v41 = v75;
            v58 = v46;
            if (v67 < v40 || v75 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v77;
              a1 = v76;
              v39 = v65;
            }

            else
            {
              v42 = v77;
              a1 = v76;
              v39 = v65;
              if (v67 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v38;
            v43 = v58 > v64;
            a2 = v66;
            if (!v43)
            {
              goto LABEL_56;
            }
          }

          v41 = v75;
          v59 = v64;
          if (v67 < v66 || v75 >= v66)
          {
            break;
          }

          a2 = v77;
          a1 = v76;
          v38 = v62;
          v39 = v65;
          if (v67 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v59)
          {
            goto LABEL_56;
          }
        }

        a2 = v77;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v76;
        v38 = v62;
        v39 = v65;
        if (v40 > v59)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v87 = a2;
    v79 = v38;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = a4 + v20;
    v79 = a4 + v20;
    if (v20 >= 1 && a2 < v75)
    {
      v65 = (v9 + 8);
      v66 = v17;
      do
      {
        v77 = a2;
        v76 = a1;
        v23 = v74;
        sub_18B8554D0(a2, v74, _s4ItemVMa_2);
        v24 = a4;
        v25 = v70;
        sub_18B8554D0(a4, v70, _s4ItemVMa_2);
        v26 = v69;
        swift_beginAccess();
        v27 = v26[2];
        v84 = v26[1];
        v85 = v27;
        v86 = v26[3];
        sub_18B7CA054(&v84, v78, &unk_1EA9D4F90);
        v28 = v71;
        sub_18B9C7AA4(v23);
        sub_18B988BAC(&v84, &unk_1EA9D4F90);
        v29 = v26[2];
        v81 = v26[1];
        v82 = v29;
        v83 = v26[3];
        sub_18B7CA054(&v81, v78, &unk_1EA9D4F90);
        v30 = v72;
        sub_18B9C7AA4(v25);
        sub_18B988BAC(&v81, &unk_1EA9D4F90);
        v31 = sub_18BC1ED78();
        v32 = *v65;
        v33 = v30;
        v34 = v73;
        (*v65)(v33, v73);
        v32(v28, v34);
        v35 = v24;
        sub_18B815380(v25, _s4ItemVMa_2);
        sub_18B815380(v23, _s4ItemVMa_2);
        if (v31)
        {
          v36 = v66;
          a2 = v77 + v66;
          v37 = v76;
          a4 = v35;
          if (v76 < v77 || v76 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v76 != v77)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v77;
          v36 = v66;
          a4 = v24 + v66;
          v37 = v76;
          if (v76 < v35 || v76 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v76 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v80 = a4;
        }

        a1 = v37 + v36;
        v87 = a1;
      }

      while (a4 < v67 && a2 < v75);
    }
  }

LABEL_58:
  sub_18BA79D5C(&v87, &v80, &v79);
}

uint64_t sub_18B9D1AD4(char **a1, unint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;
  sub_18BC1E1A8();
  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_18BA79D48(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(_s4ItemVMa_2() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = v10 + v15 * v14;
      sub_18BC1E1A8();
      sub_18B9D1198(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_18B9D1C94(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, _OWORD *a5)
{
  v136 = a1;
  v154 = sub_18BC1EDD8();
  v8 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v152 = &v135 - v11;
  v148 = _s4ItemVMa_2();
  v143 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v138 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v147 = &v135 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v166 = &v135 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v157 = &v135 - v18;
  v159 = MEMORY[0x1E69E7CC0];
  v144 = a3;
  v19 = a3[1];
  if (v19 >= 1)
  {
    v151 = (v8 + 8);
    v155 = a5;
    swift_retain_n();
    v20 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    v135 = a4;
    while (1)
    {
      if (v20 + 1 >= v19)
      {
        v38 = v20 + 1;
      }

      else
      {
        v146 = v19;
        v142 = v21;
        v22 = *v144;
        v23 = *v144 + *(v143 + 72) * (v20 + 1);
        v150 = *(v143 + 72);
        v24 = v150;
        v25 = v22;
        v156 = v22;
        v26 = v23;
        v27 = v157;
        sub_18B8554D0(v23, v157, _s4ItemVMa_2);
        sub_18B8554D0(v25 + v24 * v20, v166, _s4ItemVMa_2);
        v28 = v155;
        swift_beginAccess();
        v29 = v28[2];
        v165[0] = v28[1];
        v165[1] = v29;
        v165[2] = v28[3];
        sub_18B7CA054(v165, v158, &unk_1EA9D4F90);
        v137 = v20;
        v30 = v152;
        sub_18B9C7AA4(v27);
        sub_18B988BAC(v165, &unk_1EA9D4F90);
        v31 = v28[2];
        v164[0] = v28[1];
        v164[1] = v31;
        v164[2] = v28[3];
        sub_18B7CA054(v164, v158, &unk_1EA9D4F90);
        v32 = v153;
        v33 = v166;
        sub_18B9C7AA4(v166);
        sub_18B988BAC(v164, &unk_1EA9D4F90);
        LODWORD(v149) = sub_18BC1ED78();
        v34 = *v151;
        v35 = v154;
        (*v151)(v32, v154);
        v141 = v34;
        (v34)(v30, v35);
        sub_18B815380(v33, _s4ItemVMa_2);
        sub_18B815380(v157, _s4ItemVMa_2);
        v36 = v137 + 2;
        v37 = v156 + v150 * (v137 + 2);
        while (1)
        {
          v38 = v146;
          if (v146 == v36)
          {
            break;
          }

          v39 = v157;
          sub_18B8554D0(v37, v157, _s4ItemVMa_2);
          v156 = v26;
          sub_18B8554D0(v26, v166, _s4ItemVMa_2);
          v40 = v155;
          v41 = v155[2];
          v163[0] = v155[1];
          v163[1] = v41;
          v163[2] = v155[3];
          sub_18B7CA054(v163, v158, &unk_1EA9D4F90);
          v42 = v152;
          sub_18B9C7AA4(v39);
          sub_18B988BAC(v163, &unk_1EA9D4F90);
          v43 = v40[2];
          v162[0] = v40[1];
          v162[1] = v43;
          v162[2] = v40[3];
          sub_18B7CA054(v162, v158, &unk_1EA9D4F90);
          v44 = v153;
          v45 = v166;
          sub_18B9C7AA4(v166);
          sub_18B988BAC(v162, &unk_1EA9D4F90);
          LODWORD(v40) = sub_18BC1ED78() & 1;
          v46 = v154;
          v47 = v141;
          v141(v44, v154);
          v47(v42, v46);
          sub_18B815380(v45, _s4ItemVMa_2);
          sub_18B815380(v157, _s4ItemVMa_2);
          ++v36;
          v37 += v150;
          v26 = v156 + v150;
          if ((v149 & 1) != v40)
          {
            v38 = v36 - 1;
            break;
          }
        }

        a4 = v135;
        v21 = v142;
        v20 = v137;
        if (v149)
        {
          if (v38 < v137)
          {
            goto LABEL_116;
          }

          if (v137 < v38)
          {
            v48 = v150 * (v38 - 1);
            v49 = v38 * v150;
            v146 = v38;
            v50 = v137;
            v51 = v137 * v150;
            do
            {
              if (v50 != --v38)
              {
                v52 = *v144;
                if (!*v144)
                {
                  goto LABEL_121;
                }

                sub_18B829704(v52 + v51, v138, _s4ItemVMa_2);
                if (v51 < v48 || v52 + v51 >= v52 + v49)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v51 != v48)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_18B829704(v138, v52 + v48, _s4ItemVMa_2);
              }

              ++v50;
              v48 -= v150;
              v49 -= v150;
              v51 += v150;
            }

            while (v50 < v38);
            a4 = v135;
            v20 = v137;
            v38 = v146;
          }
        }
      }

      v53 = v144[1];
      if (v38 < v53)
      {
        if (__OFSUB__(v38, v20))
        {
          goto LABEL_115;
        }

        if (v38 - v20 < a4)
        {
          if (__OFADD__(v20, a4))
          {
            goto LABEL_117;
          }

          if (v20 + a4 < v53)
          {
            v53 = v20 + a4;
          }

          if (v53 < v20)
          {
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
            goto LABEL_123;
          }

          if (v38 != v53)
          {
            v139 = v53;
            v142 = v21;
            v150 = *v144;
            v54 = v38 - 1;
            v137 = v20;
            v55 = v20 - v38;
            do
            {
              swift_beginAccess();
              v56 = *(v143 + 72);
              v140 = v55;
              v141 = v54;
              v57 = v150 + v56 * v54;
              v149 = -v56;
              v146 = v38;
              v58 = v150 + v56 * v38;
              do
              {
                v156 = v55;
                v59 = v157;
                sub_18B8554D0(v58, v157, _s4ItemVMa_2);
                sub_18B8554D0(v57, v166, _s4ItemVMa_2);
                v60 = v155;
                v61 = v155[2];
                v161[0] = v155[1];
                v161[1] = v61;
                v161[2] = v155[3];
                sub_18B7CA054(v161, v158, &unk_1EA9D4F90);
                v62 = v152;
                sub_18B9C7AA4(v59);
                sub_18B988BAC(v161, &unk_1EA9D4F90);
                v63 = v60[2];
                v160[0] = v60[1];
                v160[1] = v63;
                v160[2] = v60[3];
                sub_18B7CA054(v160, v158, &unk_1EA9D4F90);
                v64 = v153;
                v65 = v166;
                sub_18B9C7AA4(v166);
                sub_18B988BAC(v160, &unk_1EA9D4F90);
                v66 = sub_18BC1ED78();
                v67 = *v151;
                v68 = v64;
                v69 = v154;
                (*v151)(v68, v154);
                v67(v62, v69);
                sub_18B815380(v65, _s4ItemVMa_2);
                sub_18B815380(v157, _s4ItemVMa_2);
                if ((v66 & 1) == 0)
                {
                  break;
                }

                v70 = v156;
                if (!v150)
                {
                  goto LABEL_119;
                }

                v71 = v147;
                sub_18B829704(v58, v147, _s4ItemVMa_2);
                swift_arrayInitWithTakeFrontToBack();
                sub_18B829704(v71, v57, _s4ItemVMa_2);
                v57 += v149;
                v58 += v149;
                v72 = __CFADD__(v70, 1);
                v55 = v70 + 1;
              }

              while (!v72);
              v38 = v146 + 1;
              v54 = v141 + 1;
              v55 = v140 - 1;
            }

            while (v146 + 1 != v139);
            v21 = v142;
            v20 = v137;
            v38 = v139;
          }
        }
      }

      if (v38 < v20)
      {
        goto LABEL_114;
      }

      v139 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_18B858E00(0, *(v21 + 2) + 1, 1, v21);
      }

      v74 = *(v21 + 2);
      v73 = *(v21 + 3);
      v75 = v74 + 1;
      if (v74 >= v73 >> 1)
      {
        v21 = sub_18B858E00((v73 > 1), v74 + 1, 1, v21);
      }

      *(v21 + 2) = v75;
      v76 = v21 + 32;
      v77 = &v21[16 * v74 + 32];
      v78 = v139;
      *v77 = v20;
      *(v77 + 1) = v78;
      v156 = *v136;
      if (!v156)
      {
        goto LABEL_122;
      }

      if (v74)
      {
        v150 = (v21 + 32);
        v142 = v21;
        while (1)
        {
          v79 = v75 - 1;
          if (v75 >= 4)
          {
            break;
          }

          if (v75 == 3)
          {
            v80 = *(v21 + 4);
            v81 = *(v21 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_62:
            if (v83)
            {
              goto LABEL_104;
            }

            v96 = &v21[16 * v75];
            v98 = *v96;
            v97 = *(v96 + 1);
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_106;
            }

            v102 = &v76[16 * v79];
            v104 = *v102;
            v103 = *(v102 + 1);
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_109;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_111;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v79 = v75 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v75 < 2)
          {
            goto LABEL_112;
          }

          v106 = &v21[16 * v75];
          v108 = *v106;
          v107 = *(v106 + 1);
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_77:
          if (v101)
          {
            goto LABEL_108;
          }

          v109 = &v76[16 * v79];
          v111 = *v109;
          v110 = *(v109 + 1);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_110;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }

LABEL_84:
          if (v79 - 1 >= v75)
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          v117 = *v144;
          if (!*v144)
          {
            goto LABEL_120;
          }

          v118 = &v76[16 * v79 - 16];
          v119 = *v118;
          v120 = v79;
          v121 = &v76[16 * v79];
          v122 = *(v121 + 1);
          v123 = *(v143 + 72);
          v124 = v117 + v123 * *v118;
          v125 = v117 + v123 * *v121;
          v126 = v117 + v123 * v122;
          v127 = v155;
          sub_18BC1E1A8();
          v128 = v124;
          v129 = v145;
          sub_18B9D1198(v128, v125, v126, v156, v127);
          v145 = v129;
          if (v129)
          {

            v159 = v142;
            goto LABEL_96;
          }

          if (v122 < v119)
          {
            goto LABEL_99;
          }

          v21 = v142;
          v130 = *(v142 + 2);
          if (v120 > v130)
          {
            goto LABEL_100;
          }

          *v118 = v119;
          *(v118 + 1) = v122;
          if (v120 >= v130)
          {
            goto LABEL_101;
          }

          v75 = v130 - 1;
          memmove(v121, v121 + 16, 16 * (v130 - 1 - v120));
          *(v21 + 2) = v130 - 1;
          v76 = v150;
          if (v130 <= 2)
          {
            goto LABEL_3;
          }
        }

        v84 = &v76[16 * v75];
        v85 = *(v84 - 8);
        v86 = *(v84 - 7);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_102;
        }

        v89 = *(v84 - 6);
        v88 = *(v84 - 5);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_103;
        }

        v91 = &v21[16 * v75];
        v93 = *v91;
        v92 = *(v91 + 1);
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_105;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_107;
        }

        if (v95 >= v87)
        {
          v113 = &v76[16 * v79];
          v115 = *v113;
          v114 = *(v113 + 1);
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_113;
          }

          if (v82 < v116)
          {
            v79 = v75 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_3:
      v19 = v144[1];
      v20 = v139;
      a4 = v135;
      if (v139 >= v19)
      {
        v159 = v21;
        a5 = v155;
        goto LABEL_94;
      }
    }
  }

  swift_retain_n();
LABEL_94:
  v131 = *v136;
  if (*v136)
  {
    sub_18BC1E1A8();
    v132 = v131;
    v133 = v145;
    sub_18B9D1AD4(&v159, v132, v144, a5);
    v145 = v133;

LABEL_96:
  }

  else
  {
LABEL_123:

    __break(1u);
  }

  return result;
}

id sub_18B9D295C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18B82FEA0();
  v5 = sub_18B9CAE54(a1);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for TabOverview.ItemView();
  v6 = swift_dynamicCastClass();
  if (!v6 || (v7 = *(v6 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView), v5, type metadata accessor for TabOverviewItemView(), v8 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView), v7, v5 = *&v8[OBJC_IVAR___SFTabThumbnailView_contentView], v8, (v9 = [v5 window]) == 0) || (v9, (v10 = objc_msgSend(v5, sel_superview)) == 0))
  {

    return 0;
  }

  v11 = v10;
  v12 = *(v2 + OBJC_IVAR___SFTabOverview_content + 144);
  v35[8] = *(v2 + OBJC_IVAR___SFTabOverview_content + 128);
  v35[9] = v12;
  v13 = *(v2 + OBJC_IVAR___SFTabOverview_content + 176);
  v35[10] = *(v2 + OBJC_IVAR___SFTabOverview_content + 160);
  v35[11] = v13;
  v14 = *(v2 + OBJC_IVAR___SFTabOverview_content + 80);
  v35[4] = *(v2 + OBJC_IVAR___SFTabOverview_content + 64);
  v35[5] = v14;
  v15 = *(v2 + OBJC_IVAR___SFTabOverview_content + 112);
  v35[6] = *(v2 + OBJC_IVAR___SFTabOverview_content + 96);
  v35[7] = v15;
  v16 = *(v2 + OBJC_IVAR___SFTabOverview_content + 16);
  v35[0] = *(v2 + OBJC_IVAR___SFTabOverview_content);
  v35[1] = v16;
  v17 = *(v2 + OBJC_IVAR___SFTabOverview_content + 48);
  v35[2] = *(v2 + OBJC_IVAR___SFTabOverview_content + 32);
  v35[3] = v17;
  sub_18B82B150(v35, &v34);
  v18 = sub_18B866D50();
  sub_18B82B2F0(v35);
  v19 = sub_18B9BA054(a1, v18);

  if (v19)
  {
    v33 = xmmword_18BC3DD80;
    v32 = xmmword_18BC42C40;
    tx = 0.0;
    ty = 0.0;
  }

  else
  {
    CGAffineTransformMakeScale(&v34, 0.0, 0.0);
    v32 = *&v34.a;
    v33 = *&v34.c;
    tx = v34.tx;
    ty = v34.ty;
  }

  v23 = v11;
  [v5 center];
  v25 = v24;
  v27 = v26;
  v28 = objc_allocWithZone(MEMORY[0x1E69DCE38]);
  *&v34.a = v32;
  *&v34.c = v33;
  v34.tx = tx;
  v34.ty = ty;
  v29 = [v28 initWithContainer:v23 center:&v34 transform:{v25, v27}];

  v30 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
  v31 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:v5 parameters:v30 target:v29];

  return v31;
}

uint64_t sub_18B9D2C04(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TabOverview.ItemView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);
    type metadata accessor for TabOverviewItemView();
    v6 = swift_dynamicCastClassUnconditional();
    v7 = *(_s4ItemVMa_2() + 20);
    v8 = *(v2 + OBJC_IVAR___SFTabOverview_tabIconPool);
    sub_18BC1E1A8();
    v9 = v5;
    v10 = v2;
    sub_18BB9F21C(a2 + v7, v8);

    v11 = *(v6 + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);
    v12 = OBJC_IVAR___SFTabOverview_tabSnapshotRegistrations;
    swift_beginAccess();
    v13 = *(v10 + v12);
    v14 = *(v13 + 16);
    v15 = v11;
    if (v14)
    {
      sub_18BC1E3F8();
      v16 = sub_18B857EE4(a2 + v7);
      if (v17)
      {
        v18 = *(*(v13 + 56) + 8 * v16);
        sub_18BC1E1A8();
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    sub_18BA1A450(v18);
  }

  return result;
}

void sub_18B9D2D6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v19 - v1;
  swift_beginAccess();
  sub_18B9CDB20(v2);
  sub_18B988BAC(v2, &unk_1EA9D4F30);
  swift_endAccess();
  type metadata accessor for TabOverview.ItemView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);
    type metadata accessor for TabOverviewItemView();
    v5 = swift_dynamicCastClassUnconditional();
    v6 = v4;
    sub_18BB39264(0);
    v7 = OBJC_IVAR___SFTabOverviewItemView_thumbnailView;
    sub_18BA14034(0);
    v8 = *(*(v5 + v7) + OBJC_IVAR___SFTabThumbnailView_snapshotRegistration);
    if (v8)
    {
      v9 = qword_1EA9D2410;
      sub_18BC1E1A8();
      if (v9 != -1)
      {
        swift_once();
      }

      v10 = *&qword_1EA9D8AE0;
      v11 = qword_1EA9D8AE8;
      v12 = v8 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
      swift_beginAccess();
      v13 = *v12;
      v14 = *(v12 + 8);
      *v12 = v10;
      *(v12 + 8) = v11;
      if (v10 != v13 || v11 != v14)
      {
        v16 = *(v8 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
        v17 = sub_18BC1E1A8();
        v16(v17);
      }
    }

    v18 = *(v5 + v7);
    sub_18BA1A450(0);
  }
}

id sub_18B9D2FD0(uint64_t a1)
{
  v2 = sub_18B82FEA0();
  v3 = sub_18B9CAE54(a1);

  if (v3)
  {
    type metadata accessor for TabOverview.ItemView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      v6 = [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView_];

      return v6;
    }
  }

  return 0;
}

void sub_18B9D30B0(uint64_t a1, void *a2)
{
  v4 = sub_18B82FEA0();
  v11 = sub_18B9CAE54(a1);

  if (v11)
  {
    type metadata accessor for TabOverview.ItemView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      v7 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);

      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      aBlock[4] = sub_18B9D4384;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18B7B0DB0;
      aBlock[3] = &block_descriptor_384;
      v9 = _Block_copy(aBlock);
      v10 = v7;

      [a2 addAnimations_];
      _Block_release(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_18B9D324C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___SFTabOverview_handlers + 16);
  sub_18BC1E1A8();
  LOBYTE(a1) = v3(a1);

  return a1 & 1;
}

id sub_18B9D32A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18B82FEA0();
  v5 = sub_18B9CAE54(a1);

  if (v5)
  {
    type metadata accessor for TabOverview.ItemView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      v8 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);
      v9 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
      v10 = *(v2 + OBJC_IVAR___SFTabOverview____lazy_storage___collectionView);
      v11 = *&v8[OBJC_IVAR___SFTabThumbnailView_contentView];
      v12 = v10;
      v13 = v8;
      [v11 center];
      [v13 convertPoint:*(v2 + v9) toCoordinateSpace:?];
      v15 = v14;
      v17 = v16;

      v18 = [objc_allocWithZone(MEMORY[0x1E69DCE38]) initWithContainer:v12 center:{v15, v17}];
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCE28]) init];
      v20 = [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView:v11 parameters:v19 target:v18];

      return v20;
    }
  }

  return 0;
}

id sub_18B9D3458(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___SFTabOverview_handlers + 144);
  sub_18BC1E1A8();
  v4 = v3(v1, a1);

  v5 = objc_allocWithZone(MEMORY[0x1E69DC9C0]);

  return [v5 initWithDropOperation_];
}

uint64_t sub_18B9D34E0(uint64_t a1)
{
  v3 = _s10DropIntentVMa(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4F80);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4F88);
  sub_18B7CA054(a1 + v17[17], v10, &qword_1EA9D4F80);
  v18 = *(v8 + 56);
  sub_18B829704(v10, v16, _s7SectionVMa_1);
  sub_18B7CF39C(&v10[v18], v13, &unk_1EA9D4F30);
  sub_18B8554D0(v16, v6, _s7SectionVMa_1);
  v19 = _s15DropDestinationVMa(0);
  sub_18B7CA054(v13, &v6[*(v19 + 20)], &unk_1EA9D4F30);
  v20 = *(a1 + v17[19]);
  v21 = *(a1 + v17[18]);
  *&v6[v4[7]] = v20;
  *&v6[v4[8]] = v21;
  *&v6[v4[9]] = v1;
  v22 = *&v1[OBJC_IVAR___SFTabOverview_handlers + 128];
  v23 = v20;
  swift_unknownObjectRetain();
  v24 = v1;
  sub_18BC1E1A8();
  v22(v6);

  sub_18B815380(v6, _s10DropIntentVMa);
  sub_18B988BAC(v13, &unk_1EA9D4F30);
  return sub_18B815380(v16, _s7SectionVMa_1);
}

void sub_18B9D37BC(uint64_t a1, void *a2)
{
  v4 = sub_18B82FEA0();
  v18 = sub_18B9CAE54(a1);

  if (v18)
  {
    type metadata accessor for TabOverview.ItemView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      type metadata accessor for TabOverviewItemView();
      v7 = swift_dynamicCastClassUnconditional();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = sub_18B9D438C;
      *(v10 + 24) = v8;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_18B9D53AC;
      *(v11 + 24) = v10;
      v23 = sub_18B9D53B0;
      v24 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_18B7E3BF4;
      v22 = &block_descriptor_398;
      v12 = _Block_copy(&aBlock);
      v13 = v6;
      sub_18BC1E1A8();
      sub_18BC1E1A8();

      [v9 performWithoutAnimation_];
      _Block_release(v12);
      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if (v9)
      {
        __break(1u);
      }

      else
      {
        v14 = swift_allocObject();
        *(v14 + 16) = v7;
        v23 = sub_18B9D43B0;
        v24 = v14;
        aBlock = MEMORY[0x1E69E9820];
        v20 = 1107296256;
        v21 = sub_18B9C1FF8;
        v22 = &block_descriptor_404;
        v15 = _Block_copy(&aBlock);
        v16 = v13;

        [a2 addCompletion_];
        _Block_release(v15);
        v17 = *(v7 + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);
        sub_18BA19388(a2);
      }
    }

    else
    {
    }
  }
}

void *sub_18B9D3AF8(id a1)
{
  v2 = _s4ItemVMa_2();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = (&v34 - v16);
  v39 = MEMORY[0x1E69E7CC0];
  v18 = [a1 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4F68);
  v19 = swift_dynamicCastClass();
  v37 = v3;
  if (v19)
  {
    sub_18B8554D0(v19 + *((*MEMORY[0x1E69E7D40] & *v19) + 0x80), v13, _s4ItemVMa_2);
    swift_unknownObjectRelease();
    sub_18B829704(v13, v17, _s4ItemVMa_2);
    sub_18B8554D0(v17, v10, _s4ItemVMa_2);
    v20 = sub_18B82A46C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v22 = v20[2];
    v21 = v20[3];
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
LABEL_21:
      v20 = sub_18B82A46C(v21 > 1, v23, 1, v20);
    }

    sub_18B815380(v17, _s4ItemVMa_2);
    v20[2] = v23;
    sub_18B829704(v10, v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, _s4ItemVMa_2);
    v39 = v20;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  a1 = [a1 secondaryItemIdentifiers];
  v10 = sub_18BC20FD8();

  v20 = v10 + 56;
  v24 = 1 << v10[32];
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v22 = v25 & *(v10 + 7);
  v23 = (v24 + 63) >> 6;
  sub_18BC1E3F8();
  v3 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v3;
    if (!v22)
    {
      break;
    }

LABEL_12:
    v26 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    sub_18B7F44EC(*(v10 + 6) + 40 * (v26 | (v3 << 6)), v38);
    a1 = sub_18BC21A28();
    sub_18B831014(v38);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27 + *((*MEMORY[0x1E69E7D40] & *v27) + 0x80);
      v35 = v7;
      v29 = v36;
      sub_18B8554D0(v28, v36, _s4ItemVMa_2);

      sub_18B829704(v29, v35, _s4ItemVMa_2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_18B82A46C(0, v17[2] + 1, 1, v17);
      }

      v31 = v17[2];
      v30 = v17[3];
      a1 = (v31 + 1);
      if (v31 >= v30 >> 1)
      {
        v17 = sub_18B82A46C(v30 > 1, v31 + 1, 1, v17);
      }

      v17[2] = a1;
      v32 = v17 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31;
      v7 = v35;
      sub_18B829704(v35, v32, _s4ItemVMa_2);
    }

    else
    {
    }
  }

  while (1)
  {
    v3 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v3 >= v23)
    {
      break;
    }

    v22 = v20[v3];
    ++v21;
    if (v22)
    {
      goto LABEL_12;
    }
  }

  sub_18BA019E4(v17);
  return v39;
}