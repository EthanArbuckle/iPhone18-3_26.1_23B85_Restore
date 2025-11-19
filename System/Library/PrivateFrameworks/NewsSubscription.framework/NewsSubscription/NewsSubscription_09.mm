uint64_t _s16NewsSubscription20PaywallLayoutOptionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48)))))) & 1) != 0 && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    v4 = *(a2 + 120);
    v5 = *(a1 + 120);
    sub_1D773F004(0, &qword_1EE08FBB8);
    v16 = *(a2 + 104);
    v17 = *(a2 + 88);
    v14 = *(a1 + 104);
    v15 = *(a1 + 88);
    v2 = 0;
    if ((sub_1D78B6244() & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v15, v17), vceqq_f64(v14, v16)), xmmword_1D78C4770)) & 0xF) == 0 && v5 == v4)
    {
      v9 = sub_1D78B5C74();
      v11 = v10;
      if (v9 == sub_1D78B5C74() && v11 == v12)
      {
        v2 = 1;
      }

      else
      {
        v2 = sub_1D78B6724();
      }
    }
  }

  return v2 & 1;
}

uint64_t sub_1D7817DCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D7817E14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7817E84()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView);
  v2 = *(v1 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton);
  v3 = sub_1D78B4844();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = *(v1 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton);
  v5 = sub_1D78B4514();

  swift_allocObject();
  swift_unknownObjectWeakInit();
}

void sub_1D7817FC4()
{
  v0 = type metadata accessor for SubscribeButtonDestination(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = &v4[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel];
      v8 = type metadata accessor for AlacartePaywallViewModel();
      sub_1D7819E74(&v7[*(v8 + 40)], v2, type metadata accessor for SubscribeButtonDestination);
      v9 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v11 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v13 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v12 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v48[2] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v48[3] = v11;
      v48[0] = v13;
      v48[1] = v12;
      v14 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v16 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v15 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v48[6] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v48[7] = v14;
      v48[4] = v16;
      v48[5] = v15;
      v17 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v19 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v18 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v48[10] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v48[11] = v17;
      v48[8] = v19;
      v48[9] = v18;
      v20 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v22 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v21 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v48[14] = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v48[15] = v20;
      v48[12] = v22;
      v48[13] = v21;
      v23 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v44 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v45 = v23;
      v24 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v46 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v47 = v24;
      v25 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v40 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v41 = v25;
      v26 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v42 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v43 = v26;
      v27 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v36 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v37 = v27;
      v28 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v38 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v39 = v28;
      v29 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v32 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v33 = v29;
      v30 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v34 = *(v6 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v35 = v30;
      v31 = *(v9 + 72);
      sub_1D7772AE8(v48, v49);
      v31(v2, &v32, ObjectType, v9);

      sub_1D7819EDC(v2, type metadata accessor for SubscribeButtonDestination);
      v49[12] = v44;
      v49[13] = v45;
      v49[14] = v46;
      v49[15] = v47;
      v49[8] = v40;
      v49[9] = v41;
      v49[10] = v42;
      v49[11] = v43;
      v49[4] = v36;
      v49[5] = v37;
      v49[6] = v38;
      v49[7] = v39;
      v49[0] = v32;
      v49[1] = v33;
      v49[2] = v34;
      v49[3] = v35;
      sub_1D7772B44(v49);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D781820C()
{
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;

      v4 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v8 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v7 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v43[2] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v43[3] = v6;
      v43[0] = v8;
      v43[1] = v7;
      v9 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v11 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v10 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v43[6] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v43[7] = v9;
      v43[4] = v11;
      v43[5] = v10;
      v12 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v14 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v13 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v43[10] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v43[11] = v12;
      v43[8] = v14;
      v43[9] = v13;
      v15 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v17 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v16 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v43[14] = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v43[15] = v15;
      v43[12] = v17;
      v43[13] = v16;
      v18 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v39 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v40 = v18;
      v19 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v41 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v42 = v19;
      v20 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v35 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v36 = v20;
      v21 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v37 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v38 = v21;
      v22 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v31 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v32 = v22;
      v23 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v33 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v34 = v23;
      v24 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v27 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v28 = v24;
      v25 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v29 = *(v3 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v30 = v25;
      v26 = *(v4 + 88);
      sub_1D7772AE8(v43, v44);
      v26(&v27, ObjectType, v4);
      v44[12] = v39;
      v44[13] = v40;
      v44[14] = v41;
      v44[15] = v42;
      v44[8] = v35;
      v44[9] = v36;
      v44[10] = v37;
      v44[11] = v38;
      v44[4] = v31;
      v44[5] = v32;
      v44[6] = v33;
      v44[7] = v34;
      v44[0] = v27;
      v44[1] = v28;
      v44[2] = v29;
      v44[3] = v30;
      sub_1D7772B44(v44);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1D7818420(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlacartePaywallViewModel();
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_subscribeButtonTextProvider + 24);
  v12 = *(a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_subscribeButtonTextProvider + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_subscribeButtonTextProvider), v11);
  v13 = (*(v12 + 8))(v10, v11, v12);
  v14 = a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel;
  v15 = (a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel + v7[10]);
  *v15 = v13;
  v15[1] = v16;
  v17 = (v14 + v7[11]);
  *v17 = v18;
  v17[1] = v19;

  v46 = a2;
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory), *(a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory + 24));
  sub_1D7819E74(v14, v9, type metadata accessor for AlacartePaywallViewModel);
  v20 = *(a3 + 112);
  v48[6] = *(a3 + 96);
  v48[7] = v20;
  v49 = *(a3 + 128);
  v21 = *(a3 + 48);
  v48[2] = *(a3 + 32);
  v48[3] = v21;
  v22 = *(a3 + 80);
  v48[4] = *(a3 + 64);
  v48[5] = v22;
  v23 = *(a3 + 16);
  v48[0] = *a3;
  v48[1] = v23;
  sub_1D77BD654(v9, v48, v50);
  v47 = type metadata accessor for AlacartePaywallViewModel;
  sub_1D7819EDC(v9, type metadata accessor for AlacartePaywallViewModel);
  sub_1D7819E74(v14, v9, type metadata accessor for AlacartePaywallViewModel);
  v24 = *(a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView);
  v43 = *&v24[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView];
  [v43 setAttributedText_];
  v45 = *&v24[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton];
  [v45 setAttributedTitle:v83 forState:0];
  v44 = *&v24[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton];
  v25 = v44;
  [v44 setAttributedTitle:v84 forState:0];
  [v25 setHidden_];
  v26 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v41 = *MEMORY[0x1E69DB670];
  v27 = sub_1D78B3214();
  v28 = [v26 mutableString];
  v42 = v9;
  v29 = sub_1D78B5C44();
  v30 = [v28 rangeOfString_];
  v32 = v31;

  [v26 addAttribute:v41 value:v27 range:{v30, v32}];
  v33 = *&v24[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView];
  v34 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  [v33 setAttributedText_];

  v35 = v42;
  [v33 setHidden_];
  v36 = v51;
  v37 = v52;
  [v24 setFrame_];
  [*&v24[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView] setFrame_];
  [*&v24[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView] setFrame_];
  [v43 setFrame_];
  [v33 setFrame_];
  [v45 setFrame_];
  [v44 setFrame_];
  [*&v24[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline] setFrame_];

  sub_1D7819EDC(v35, v47);
  sub_1D781929C();
  *v48 = v36;
  *(v48 + 1) = v37;
  sub_1D78035B0();
  swift_allocObject();
  v38 = sub_1D78B4104();
  sub_1D7819D48(v50);
  return v38;
}

uint64_t sub_1D78188B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t (*a4)(), uint64_t a5)
{
  v48 = a3;
  v87 = type metadata accessor for AlacartePaywallViewModel();
  MEMORY[0x1EEE9AC00](v87);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D774FE1C();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D78BCAB0;
  v51 = 0.0;
  v52 = -2.68156159e154;
  *&v49[0] = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  v12 = v51;
  v13 = v52;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D775ABD4();
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v14 = a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel;
  v15 = v87;
  v16 = (a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel + *(v87 + 32));
  *v16 = v48;
  v16[1] = a4;
  v17 = v15;
  v18 = (v14 + *(v15 + 36));
  *v18 = 0;
  v18[1] = 0;

  v47 = a2;
  __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory), *(v47 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory + 24));
  sub_1D7819E74(v14, v10, type metadata accessor for AlacartePaywallViewModel);
  v19 = *(a5 + 112);
  v49[6] = *(a5 + 96);
  v49[7] = v19;
  v50 = *(a5 + 128);
  v20 = *(a5 + 48);
  v49[2] = *(a5 + 32);
  v49[3] = v20;
  v21 = *(a5 + 80);
  v49[4] = *(a5 + 64);
  v49[5] = v21;
  v22 = *(a5 + 16);
  v49[0] = *a5;
  v49[1] = v22;
  sub_1D77BD654(v10, v49, &v51);
  v48 = type metadata accessor for AlacartePaywallViewModel;
  sub_1D7819EDC(v10, type metadata accessor for AlacartePaywallViewModel);
  sub_1D7819E74(v14, v10, type metadata accessor for AlacartePaywallViewModel);
  v23 = *(a2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView);
  v44 = *&v23[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView];
  [v44 setAttributedText_];
  v46 = *&v23[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton];
  [v46 setAttributedTitle:v85 forState:0];
  v45 = *&v23[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton];
  v24 = v45;
  [v45 setAttributedTitle:v86 forState:0];
  [v24 setHidden_];
  v25 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v26 = *MEMORY[0x1E69DB670];
  v27 = sub_1D78B3214();
  v28 = v10;
  v29 = v25;
  v30 = [v25 mutableString];
  v43 = v28;
  v31 = sub_1D78B5C44();
  v32 = [v30 rangeOfString_];
  v34 = v33;

  [v29 addAttribute:v26 value:v27 range:{v32, v34}];
  v35 = *&v23[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView];
  v36 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  [v35 setAttributedText_];

  v37 = v43;
  [v35 setHidden_];
  v38 = v53;
  v39 = v54;
  [v23 setFrame_];
  [*&v23[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView] setFrame_];
  [*&v23[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView] setFrame_];
  [v44 setFrame_];
  [v35 setFrame_];
  [v46 setFrame_];
  [v45 setFrame_];
  [*&v23[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline] setFrame_];

  sub_1D7819EDC(v37, v48);
  sub_1D781929C();
  *v49 = v38;
  *(v49 + 1) = v39;
  sub_1D78035B0();
  swift_allocObject();
  v40 = sub_1D78B4104();
  sub_1D7819D48(&v51);
  return v40;
}

uint64_t type metadata accessor for AlacartePaywallViewProvider()
{
  result = qword_1EE0921C0;
  if (!qword_1EE0921C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7818FB8()
{
  result = type metadata accessor for AlacartePaywallViewModel();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D78190D0(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1D781929C()
{
  v1 = (v0 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_styler);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_styler), *(v0 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_styler + 24));
  v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView);
  v4 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView);
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  v7 = *(v6 + 16);
  v8 = v4;
  v7(v28, v5, v6);
  v9 = v28[1];
  sub_1D7784CF4(v28);
  [v8 setBackgroundColor_];

  v10 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView);
  sub_1D78174DC(v10);

  v11 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView);
  sub_1D7817748(v11);

  v12 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView);
  sub_1D781788C(v12);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v13 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton);
  sub_1D7816848(v13);

  v14 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton);
  v15 = [v14 titleLabel];
  if (v15)
  {
    v16 = v15;
    [v15 setLineBreakMode_];
  }

  v17 = [v14 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setTextAlignment_];
  }

  v19 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v20 = *(v3 + OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline);
  v21 = *(*v19 + 40);
  v22 = *(*v19 + 48);
  __swift_project_boxed_opaque_existential_1((*v19 + 16), v21);
  v23 = *(v22 + 16);
  v24 = v20;
  v23(v27, v21, v22);
  v25 = v27[2];
  sub_1D7784CF4(v27);
  v26 = [v25 colorWithAlphaComponent_];

  [v24 setBackgroundColor_];
}

uint64_t sub_1D781953C(__int128 *a1)
{
  v2 = v1;
  v77[1] = swift_getObjectType();
  v4 = type metadata accessor for AlacartePaywallViewModel();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = a1[7];
  v128 = a1[6];
  v129 = v7;
  v130 = *(a1 + 16);
  v8 = a1[3];
  v124 = a1[2];
  v125 = v8;
  v9 = a1[5];
  v126 = a1[4];
  v127 = v9;
  v10 = a1[1];
  v122 = *a1;
  v123 = v10;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v76 = 0x80000001D78D9100;
  v13 = sub_1D78B3134();
  v15 = v14;

  v16 = &v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel];
  v17 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 208];
  v114 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 192];
  v115 = v17;
  v18 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 240];
  v116 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 224];
  v117 = v18;
  v19 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 144];
  v110 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 128];
  v111 = v19;
  v20 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 176];
  v112 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 160];
  v113 = v20;
  v21 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 80];
  v106 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 64];
  v107 = v21;
  v22 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 112];
  v108 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 96];
  v109 = v22;
  v23 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 16];
  v102 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel];
  v103 = v23;
  v24 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 48];
  v104 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallModel + 32];
  v105 = v24;
  v25 = PaywallModel.purchaseIDs.getter();
  v84 = v15;
  v77[0] = v13;
  if (!v25 || (v26 = *(v25 + 16), , !v26))
  {
    v27 = &v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel];
    v28 = &v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel + v4[8]];
    *v28 = v13;
    v28[1] = v15;
    v29 = &v27[v4[9]];
    *v29 = 0;
    *(v29 + 1) = 0;
  }

  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory], *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_layoutAttributesFactory + 24]);
  v30 = OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel;
  sub_1D7819E74(&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_viewModel], v6, type metadata accessor for AlacartePaywallViewModel);
  v92 = v128;
  v93 = v129;
  *&v94 = v130;
  v88 = v124;
  v89 = v125;
  v90 = v126;
  v91 = v127;
  v86 = v122;
  v87 = v123;
  sub_1D77BD654(v6, &v86, &v102);
  v83 = type metadata accessor for AlacartePaywallViewModel;
  sub_1D7819EDC(v6, type metadata accessor for AlacartePaywallViewModel);
  sub_1D7819E74(&v2[v30], v6, type metadata accessor for AlacartePaywallViewModel);
  v85 = v2;
  v31 = *&v2[OBJC_IVAR____TtC16NewsSubscription27AlacartePaywallViewProvider_paywallView];
  v80 = *&v31[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_titleTextView];
  [v80 setAttributedText_];
  v82 = *&v31[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_subscribeButton];
  [v82 setAttributedTitle:v120 forState:0];
  v81 = *&v31[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_webAuthButton];
  v32 = v81;
  [v81 setAttributedTitle:v121 forState:0];
  [v32 setHidden_];
  v33 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v78 = *MEMORY[0x1E69DB670];
  v34 = sub_1D78B3214();
  v35 = [v33 mutableString];
  v36 = sub_1D78B5C44();
  v79 = v6;
  v37 = v4;
  v38 = v36;
  v39 = [v35 rangeOfString_];
  v41 = v40;

  [v33 addAttribute:v78 value:v34 range:{v39, v41}];
  v42 = *&v31[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_descriptionTextView];
  v43 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
  [v42 setAttributedText_];

  v44 = v79;
  [v42 setHidden_];
  v45 = v103;
  [v31 setFrame_];
  [*&v31[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_gradientMaskView] setFrame_];
  [*&v31[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_contentView] setFrame_];
  [v80 setFrame_];
  [v42 setFrame_];
  [v82 setFrame_];
  [v81 setFrame_];
  [*&v31[OBJC_IVAR____TtC16NewsSubscription19AlacartePaywallView_bottomHairline] setFrame_];

  sub_1D7819EDC(v44, v83);
  v46 = v16[13];
  v98 = v16[12];
  v99 = v46;
  v47 = v16[15];
  v100 = v16[14];
  v101 = v47;
  v48 = v16[9];
  v94 = v16[8];
  v95 = v48;
  v49 = v16[11];
  v96 = v16[10];
  v97 = v49;
  v50 = v16[5];
  v90 = v16[4];
  v91 = v50;
  v51 = v16[7];
  v92 = v16[6];
  v93 = v51;
  v52 = v16[1];
  v86 = *v16;
  v87 = v52;
  v53 = v16[3];
  v88 = v16[2];
  v89 = v53;
  v54 = PaywallModel.purchaseIDs.getter();
  v55 = v84;
  if (!v54)
  {
    goto LABEL_8;
  }

  if (!v54[2])
  {

LABEL_8:

    sub_1D781929C();
    v86 = v45;
    sub_1D78035B0();
    swift_allocObject();
    v74 = sub_1D78B4104();
    goto LABEL_9;
  }

  v57 = v54[4];
  v56 = v54[5];

  MEMORY[0x1EEE9AC00](v58);
  v59 = v85;
  v77[-4] = v85;
  v77[-3] = v57;
  v76 = v56;
  sub_1D773F004(0, &qword_1EE08FF20);
  sub_1D78B41F4();

  sub_1D773F004(0, &qword_1EE08FE10);
  v60 = sub_1D78B6104();
  v61 = swift_allocObject();
  v62 = v129;
  *(v61 + 112) = v128;
  *(v61 + 128) = v62;
  *(v61 + 144) = v130;
  v63 = v125;
  *(v61 + 48) = v124;
  *(v61 + 64) = v63;
  v64 = v127;
  *(v61 + 80) = v126;
  *(v61 + 96) = v64;
  v65 = v123;
  *(v61 + 16) = v122;
  *(v61 + 32) = v65;
  sub_1D77CB0EC(&v122, &v86);
  type metadata accessor for CGSize(0);
  sub_1D78B40A4();

  v66 = swift_allocObject();
  v67 = v126;
  *(v66 + 120) = v127;
  v68 = v129;
  *(v66 + 136) = v128;
  *(v66 + 152) = v68;
  v69 = v122;
  *(v66 + 56) = v123;
  v70 = v125;
  *(v66 + 72) = v124;
  *(v66 + 88) = v70;
  *(v66 + 104) = v67;
  v71 = v77[0];
  *(v66 + 16) = v59;
  *(v66 + 24) = v71;
  *(v66 + 32) = v55;
  *(v66 + 168) = v130;
  *(v66 + 40) = v69;
  sub_1D77CB0EC(&v122, &v86);
  v72 = v59;
  v73 = sub_1D78B4014();
  v74 = sub_1D78B4134();

LABEL_9:
  sub_1D7819D48(&v102);
  return v74;
}

uint64_t sub_1D7819D9C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = off_1F526C790;
  type metadata accessor for AlacartePaywallDataProvider();
  return v3(v1, v2);
}

uint64_t sub_1D7819E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7819EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D7819F3C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 104))(a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  return a2 != 0;
}

uint64_t sub_1D7819FDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 400);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D781A024(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 416) = 1;
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
      *(result + 400) = (a2 - 1);
      return result;
    }

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D781A0E0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v35 = a1;
  v2 = sub_1D78B3064();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = sub_1D78B3124();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77F00D4(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  sub_1D78B3094();
  sub_1D781A4C4(v18, v16);
  if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    sub_1D781A528(v18);
    v19 = v16;
LABEL_13:
    sub_1D781A528(v19);
    return 0;
  }

  (*(v10 + 32))(v12, v16, v9);
  result = sub_1D78B3074();
  if (!result)
  {
    (*(v10 + 8))(v12, v9);
    v19 = v18;
    goto LABEL_13;
  }

  v21 = result;
  v30 = v18;
  v31 = v12;
  v32 = v10;
  v33 = v9;
  v29 = v8;
  v22 = *(result + 16);
  if (!v22)
  {
LABEL_11:

    (*(v32 + 8))(v31, v33);
    v19 = v30;
    goto LABEL_13;
  }

  v23 = 0;
  while (v23 < *(v21 + 16))
  {
    (*(v3 + 16))(v6, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v2);
    if (sub_1D78B3044() == v35 && v24 == v34)
    {

LABEL_16:

      v26 = v29;
      (*(v3 + 32))(v29, v6, v2);
      v27 = sub_1D78B3054();
      (*(v32 + 8))(v31, v33);
      sub_1D781A528(v30);
      (*(v3 + 8))(v26, v2);
      return v27;
    }

    v25 = sub_1D78B6724();

    if (v25)
    {
      goto LABEL_16;
    }

    ++v23;
    result = (*(v3 + 8))(v6, v2);
    if (v22 == v23)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D781A4C4(uint64_t a1, uint64_t a2)
{
  sub_1D77F00D4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D781A528(uint64_t a1)
{
  sub_1D77F00D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1D781A598@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (!*a1 || (v145 = *(v2 + 16)) == 0)
  {
    if (qword_1EE0904F0 != -1)
    {
      goto LABEL_141;
    }

    goto LABEL_40;
  }

  v3 = sub_1D78915CC();
  if (!*(v3 + 16))
  {

    goto LABEL_56;
  }

  v4 = *(v3 + 32);

  v5 = sub_1D789172C(v4);

  v135 = v5;
  if (!v5)
  {
LABEL_56:
    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v68 = sub_1D78B4304();
    __swift_project_value_buffer(v68, qword_1EE09C270);
    v44 = sub_1D78B6094();
    v45 = sub_1D78B42E4();
    if (!os_log_type_enabled(v45, v44))
    {
      goto LABEL_61;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "OfferConfigMatcher: No merchandisingItemKeys in AMSMarketingItem best offer, no match found";
    goto LABEL_60;
  }

  v138 = AMSMarketingItem.additionalAMSOffersMerchandisingItemKeysDictionaries.getter();
  v6 = 0;
  v143 = v2 + 32;
  v136 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CD0];
  v141 = v2;
  do
  {
    if (v6 >= *(v2 + 16))
    {
      goto LABEL_137;
    }

    v8 = (v143 + 88 * v6);
    v9 = v8[1];
    v154 = *v8;
    v155 = v9;
    v10 = v8[2];
    v11 = v8[3];
    v12 = v8[4];
    v159 = *(v8 + 10);
    v157 = v11;
    v158 = v12;
    v156 = v10;
    swift_getObjectType();
    sub_1D781B438(&v154, v152);
    v13 = sub_1D78B6174();
    v14 = MEMORY[0x1DA703220](*(v13 + 16), MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
    v15 = v14;
    v16 = *(v13 + 16);
    if (v16)
    {
      v17 = 0;
      v18 = v14 + 56;
      do
      {
        while (1)
        {
          v19 = *(v13 + 32 + 4 * v17++);
          v20 = MEMORY[0x1DA703AA0](*(v15 + 40), v19, 4);
          v21 = -1 << *(v15 + 32);
          v22 = v20 & ~v21;
          if ((*(v18 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
          {
            break;
          }

LABEL_14:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v152[0] = v15;
          sub_1D78A78AC(v19, v22, isUniquelyReferenced_nonNull_native);
          v15 = *&v152[0];
          if (v17 == v16)
          {
            goto LABEL_16;
          }

          v18 = *&v152[0] + 56;
        }

        v23 = ~v21;
        while (*(*(v15 + 48) + 4 * v22) != v19)
        {
          v22 = (v22 + 1) & v23;
          if (((*(v18 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      while (v17 != v16);
LABEL_16:

      v2 = v141;
      v7 = MEMORY[0x1E69E7CD0];
    }

    else
    {
    }

    if (v158)
    {
      v25 = v158;
    }

    else
    {
      v25 = v7;
    }

    v26 = *(v25 + 16);

    if (v26)
    {

      v27 = sub_1D781C17C(v25, v15);

      v28 = *(v27 + 16);

      v29 = v28 != 0;
    }

    else
    {

      v29 = 1;
    }

    ++v6;
    if (*(&v158 + 1))
    {
      v30 = *(&v158 + 1);
    }

    else
    {
      v30 = v7;
    }

    v31 = *(v30 + 16);

    if (v31)
    {
      v32 = sub_1D781C17C(v30, v15);

      v33 = *(v32 + 16);

      if (v33 || !v29)
      {
LABEL_36:
        sub_1D781C340(&v154);
        continue;
      }
    }

    else
    {

      if (!v29)
      {
        goto LABEL_36;
      }
    }

    v34 = v136;
    *&v150[0] = v136;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D77D9994(0, *(v136 + 16) + 1, 1);
      v34 = *&v150[0];
    }

    v36 = *(v34 + 16);
    v35 = *(v34 + 24);
    v37 = v34;
    if (v36 >= v35 >> 1)
    {
      sub_1D77D9994((v35 > 1), v36 + 1, 1);
      v37 = *&v150[0];
    }

    *(v37 + 16) = v36 + 1;
    v136 = v37;
    v38 = v37 + 88 * v36;
    v39 = v155;
    *(v38 + 32) = v154;
    *(v38 + 48) = v39;
    v40 = v156;
    v41 = v157;
    v42 = v158;
    *(v38 + 112) = v159;
    *(v38 + 80) = v41;
    *(v38 + 96) = v42;
    *(v38 + 64) = v40;
  }

  while (v6 != v145);
  v48 = v136;
  v49 = *(v136 + 16);
  if (v49)
  {
    v50 = 0;
    v51 = MEMORY[0x1E69E7CC0];
    do
    {
      v52 = v51;
      v53 = v136 + 32 + 88 * v50;
      v54 = v50;
      while (1)
      {
        if (v54 >= *(v48 + 16))
        {
          goto LABEL_139;
        }

        v55 = *(v53 + 16);
        v154 = *v53;
        v155 = v55;
        v56 = *(v53 + 32);
        v57 = *(v53 + 48);
        v58 = *(v53 + 64);
        v159 = *(v53 + 80);
        v157 = v57;
        v158 = v58;
        v156 = v56;
        v50 = v54 + 1;
        v59 = v155;
        sub_1D781B438(&v154, v152);
        if (sub_1D781C720(v59, v135))
        {
          break;
        }

        sub_1D781C340(&v154);
        v53 += 88;
        ++v54;
        v48 = v136;
        if (v49 == v50)
        {
          v51 = v52;
          goto LABEL_63;
        }
      }

      v60 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v52;
      *&v150[0] = v52;
      if ((v60 & 1) == 0)
      {
        sub_1D77D9994(0, *(v52 + 16) + 1, 1);
        v51 = *&v150[0];
      }

      v62 = *(v51 + 16);
      v61 = *(v51 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1D77D9994((v61 > 1), v62 + 1, 1);
        v51 = *&v150[0];
      }

      *(v51 + 16) = v62 + 1;
      v63 = v51 + 88 * v62;
      v64 = v155;
      *(v63 + 32) = v154;
      *(v63 + 48) = v64;
      v65 = v156;
      v66 = v157;
      v67 = v158;
      *(v63 + 112) = v159;
      *(v63 + 80) = v66;
      *(v63 + 96) = v67;
      *(v63 + 64) = v65;
      v48 = v136;
    }

    while (v49 - 1 != v54);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CC0];
  }

LABEL_63:
  v132 = v51;
  v130 = *(v51 + 16);
  if (!v130)
  {
LABEL_125:
    v129 = MEMORY[0x1E69E7CC0];
LABEL_126:
    *&v154 = v129;

    sub_1D781B494(&v154);

    if (*(v154 + 16))
    {
      v116 = *(v154 + 80);
      v156 = *(v154 + 64);
      v157 = v116;
      v158 = *(v154 + 96);
      v159 = *(v154 + 112);
      v117 = *(v154 + 48);
      v154 = *(v154 + 32);
      v155 = v117;
      sub_1D781B438(&v154, v152);

      if (qword_1EE0904F0 != -1)
      {
        swift_once();
      }

      v118 = sub_1D78B4304();
      __swift_project_value_buffer(v118, qword_1EE09C270);
      v119 = sub_1D78B60A4();
      sub_1D781B438(&v154, v152);
      v120 = sub_1D78B42E4();
      sub_1D781C340(&v154);
      if (os_log_type_enabled(v120, v119))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *&v150[0] = v122;
        *v121 = 136315138;
        v152[2] = v156;
        v152[3] = v157;
        v152[4] = v158;
        v153 = v159;
        v152[0] = v154;
        v152[1] = v155;
        v123 = ConfigurableOfferConfig.description.getter();
        v125 = sub_1D77AD82C(v123, v124, v150);

        *(v121 + 4) = v125;
        _os_log_impl(&dword_1D7739000, v120, v119, "OfferConfigMatcher: Returning offer: %s", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v122);
        MEMORY[0x1DA7043F0](v122, -1, -1);
        MEMORY[0x1DA7043F0](v121, -1, -1);
      }

      v126 = v157;
      *(a2 + 32) = v156;
      *(a2 + 48) = v126;
      *(a2 + 64) = v158;
      *(a2 + 80) = v159;
      result = *&v154;
      v127 = v155;
      *a2 = v154;
      *(a2 + 16) = v127;
      return result;
    }

    if (qword_1EE0904F0 != -1)
    {
      swift_once();
    }

    v128 = sub_1D78B4304();
    __swift_project_value_buffer(v128, qword_1EE09C270);
    v44 = sub_1D78B60A4();
    v45 = sub_1D78B42E4();
    if (!os_log_type_enabled(v45, v44))
    {
      goto LABEL_61;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "OfferConfigMatcher: No matching offer found";
LABEL_60:
    _os_log_impl(&dword_1D7739000, v45, v44, v47, v46, 2u);
    MEMORY[0x1DA7043F0](v46, -1, -1);
    goto LABEL_61;
  }

  v70 = 0;
  v131 = v51 + 32;
  v71 = v138;
  v72 = v138 + 32;
  v129 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    while (1)
    {
      if (v70 >= *(v51 + 16))
      {
        goto LABEL_140;
      }

      v73 = (v131 + 88 * v70);
      v74 = v73[1];
      v154 = *v73;
      v155 = v74;
      v75 = v73[2];
      v76 = v73[3];
      v77 = v73[4];
      v159 = *(v73 + 10);
      v157 = v76;
      v158 = v77;
      v156 = v75;
      v133 = v70 + 1;
      if (!*(&v155 + 1))
      {
        sub_1D781B438(&v154, v152);
        goto LABEL_117;
      }

      v78 = *(*(&v155 + 1) + 16);
      v139 = *(&v155 + 1);
      sub_1D781B438(&v154, v152);

      v79 = v139;
      v137 = v78;
      if (v78)
      {
        break;
      }

LABEL_116:

LABEL_117:
      v106 = v129;
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v151 = v129;
      if ((v107 & 1) == 0)
      {
        sub_1D77D9994(0, *(v129 + 16) + 1, 1);
        v106 = v151;
      }

      v51 = v132;
      v109 = *(v106 + 16);
      v108 = *(v106 + 24);
      v110 = v106;
      if (v109 >= v108 >> 1)
      {
        sub_1D77D9994((v108 > 1), v109 + 1, 1);
        v51 = v132;
        v110 = v151;
      }

      *(v110 + 16) = v109 + 1;
      v129 = v110;
      v111 = v110 + 88 * v109;
      v112 = v155;
      *(v111 + 32) = v154;
      *(v111 + 48) = v112;
      v113 = v156;
      v114 = v157;
      v115 = v158;
      *(v111 + 112) = v159;
      *(v111 + 80) = v114;
      *(v111 + 96) = v115;
      *(v111 + 64) = v113;
      v70 = v133;
      if (v133 == v130)
      {
        goto LABEL_126;
      }
    }

    v80 = 0;
LABEL_70:
    if (v80 >= *(v79 + 16))
    {
      goto LABEL_138;
    }

    v81 = *(v71 + 16);
    if (v81)
    {
      break;
    }

LABEL_114:

    sub_1D781C340(&v154);
    v51 = v132;
    v70 = v133;
    if (v133 == v130)
    {
      goto LABEL_126;
    }
  }

  v82 = *(v139 + 32 + 8 * v80);
  v142 = v80 + 1;

  v83 = 0;
  v146 = v82;
  v140 = v81;
  while (v83 < *(v71 + 16))
  {
    v84 = *(v82 + 16);
    if (!v84)
    {
      goto LABEL_76;
    }

    v85 = *(v72 + 8 * v83);
    if (v84 != *(v85 + 16))
    {
      goto LABEL_76;
    }

    v144 = v83;
    v86 = 1 << *(v85 + 32);
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    else
    {
      v87 = -1;
    }

    v88 = v87 & *(v85 + 64);
    v89 = (v86 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v90 = 0;
    for (i = v89; ; v89 = i)
    {
      if (!v88)
      {
        do
        {
          v105 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            __break(1u);
            goto LABEL_125;
          }

          if (v105 >= v89)
          {

            v80 = v142;
            v72 = v138 + 32;
            v71 = v138;
            v79 = v139;
            if (v142 == v137)
            {
              goto LABEL_116;
            }

            goto LABEL_70;
          }

          v88 = *(v85 + 64 + 8 * v105);
          ++v90;
        }

        while (!v88);
        v90 = v105;
        if (*(v82 + 16))
        {
          goto LABEL_88;
        }

        goto LABEL_108;
      }

      if (!*(v82 + 16))
      {
        goto LABEL_108;
      }

LABEL_88:
      v91 = (*(v85 + 48) + ((v90 << 10) | (16 * __clz(__rbit64(v88)))));
      v93 = *v91;
      v92 = v91[1];

      v94 = sub_1D777BBB4(v93, v92);
      if ((v95 & 1) == 0)
      {

LABEL_74:

        v72 = v138 + 32;
        v71 = v138;
        goto LABEL_75;
      }

      if (!*(v85 + 16))
      {

LABEL_108:

        goto LABEL_74;
      }

      v96 = *(v82 + 56) + 24 * v94;
      v97 = *v96;
      v98 = *(v96 + 8);
      v99 = *(v96 + 16);
      sub_1D781CA54(*v96, v98, *(v96 + 16));
      v100 = sub_1D777BBB4(v93, v92);
      v102 = v101;

      if ((v102 & 1) == 0)
      {

        sub_1D77C5618(v97, v98, v99);
        v82 = v146;
        goto LABEL_74;
      }

      sub_1D777BE08(*(v85 + 56) + 32 * v100, v150);
      sub_1D778D0A0(v150, v152);
      if (v99)
      {
        break;
      }

      sub_1D778D0A0(v152, v150);
      if (!swift_dynamicCast())
      {

        goto LABEL_112;
      }

      v82 = v146;
      if (v148 != v97)
      {
        goto LABEL_108;
      }

LABEL_85:
      v88 &= v88 - 1;
    }

    sub_1D777BE08(v152, v150);

    if (swift_dynamicCast())
    {
      if (v148 == v97 && v98 == v149)
      {
        sub_1D77C5618(v97, v98, 1);

        sub_1D77C5618(v97, v98, 1);
        __swift_destroy_boxed_opaque_existential_1(v152);
        v82 = v146;
      }

      else
      {
        v104 = sub_1D78B6724();
        sub_1D77C5618(v97, v98, 1);

        sub_1D77C5618(v97, v98, 1);
        __swift_destroy_boxed_opaque_existential_1(v152);
        v82 = v146;
        if ((v104 & 1) == 0)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_85;
    }

    sub_1D77C5618(v97, v98, 1);
    __swift_destroy_boxed_opaque_existential_1(v152);

    sub_1D77C5618(v97, v98, 1);
LABEL_112:
    v72 = v138 + 32;
    v71 = v138;
    v82 = v146;
LABEL_75:
    v81 = v140;
    v83 = v144;
LABEL_76:
    if (++v83 == v81)
    {

      goto LABEL_114;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  swift_once();
LABEL_40:
  v43 = sub_1D78B4304();
  __swift_project_value_buffer(v43, qword_1EE09C270);
  v44 = sub_1D78B6094();
  v45 = sub_1D78B42E4();
  if (os_log_type_enabled(v45, v44))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    v47 = "OfferConfigMatcher: No offers in mapping file, no match found";
    goto LABEL_60;
  }

LABEL_61:

  *(a2 + 80) = 0;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1D781B3DC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D781B494(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D781C70C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D781B500(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D781B500(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D78B66D4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D78B5F14();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D781B6D8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1D781B5F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D781B5F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 88 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 24);
      if (v9)
      {
        v9 = *(v9 + 16);
      }

      v10 = *(v8 - 64);
      if (v10 && v9 < *(v10 + 16))
      {
LABEL_4:
        ++a3;
        v5 += 88;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v11 = v8 - 88;
      v17 = *(v8 + 32);
      v18 = *(v8 + 48);
      v19 = *(v8 + 64);
      v20 = *(v8 + 80);
      v15 = *v8;
      v16 = *(v8 + 16);
      v12 = *(v8 - 40);
      *(v8 + 32) = *(v8 - 56);
      *(v8 + 48) = v12;
      *(v8 + 64) = *(v8 - 24);
      *(v8 + 80) = *(v8 - 8);
      v13 = *(v8 - 72);
      *v8 = *(v8 - 88);
      *(v8 + 16) = v13;
      *(v11 + 32) = v17;
      *(v11 + 48) = v18;
      *(v11 + 64) = v19;
      *(v11 + 80) = v20;
      v8 -= 88;
      *v11 = v15;
      *(v11 + 16) = v16;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D781B6D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v91 = *v91;
    if (!v91)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_104:
      v82 = v7 + 16;
      v83 = *(v7 + 2);
      if (v83 >= 2)
      {
        while (*a3)
        {
          v84 = &v7[16 * v83];
          v85 = *v84;
          v86 = &v82[2 * v83];
          v87 = v86[1];
          sub_1D781BD48((*a3 + 88 * *v84), (*a3 + 88 * *v86), (*a3 + 88 * v87), v91);
          if (v4)
          {
          }

          if (v87 < v85)
          {
            goto LABEL_126;
          }

          if (v83 - 2 >= *v82)
          {
            goto LABEL_127;
          }

          *v84 = v85;
          *(v84 + 1) = v87;
          v88 = *v82 - v83;
          if (*v82 < v83)
          {
            goto LABEL_128;
          }

          v83 = *v82 - 1;
          result = memmove(v86, v86 + 2, 16 * v88);
          *v82 = v83;
          if (v83 <= 1)
          {
          }
        }

        goto LABEL_138;
      }
    }

LABEL_134:
    result = sub_1D781C070(v7);
    v7 = result;
    goto LABEL_104;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v8 = v6++;
  if (v6 >= v5)
  {
    goto LABEL_31;
  }

  v9 = *a3;
  v10 = *(*a3 + 88 * v6 + 24);
  if (v10)
  {
    v11 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 + 88 * v8 + 24);
  if (v12)
  {
    v12 = *(v12 + 16);
  }

  v13 = v8 + 2;
  if (v5 > v8 + 2)
  {
    v13 = v5;
  }

  v14 = v13 - v8 - 2;
  v15 = 88 * v8;
  v16 = (v9 + 88 * v8 + 200);
  while (v14)
  {
    v18 = *v16;
    if (*v16)
    {
      v19 = *(v18 + 16);
      if (!v10)
      {
        goto LABEL_13;
      }

LABEL_19:
      v10 = *(v10 + 16);
      goto LABEL_13;
    }

    v19 = 0;
    if (v10)
    {
      goto LABEL_19;
    }

LABEL_13:
    v17 = (v11 >= v12) ^ (v19 < v10);
    --v14;
    v16 += 11;
    ++v6;
    v10 = v18;
    if ((v17 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v6 = v13;
LABEL_21:
  if (v11 >= v12)
  {
    if (v6 < v8)
    {
      goto LABEL_131;
    }

    if (v8 < v6)
    {
      v20 = 88 * v6 - 88;
      v21 = v6;
      v89 = v8;
      do
      {
        if (v8 != --v21)
        {
          v23 = *a3;
          if (!*a3)
          {
            goto LABEL_137;
          }

          v22 = v23 + v20;
          v97 = *(v23 + v15 + 32);
          v99 = *(v23 + v15 + 48);
          v101 = *(v23 + v15 + 64);
          v103 = *(v23 + v15 + 80);
          v93 = *(v23 + v15);
          v95 = *(v23 + v15 + 16);
          result = memmove((v23 + v15), (v23 + v20), 0x58uLL);
          *(v22 + 32) = v97;
          *(v22 + 48) = v99;
          *(v22 + 64) = v101;
          *(v22 + 80) = v103;
          *v22 = v93;
          *(v22 + 16) = v95;
        }

        ++v8;
        v20 -= 88;
        v15 += 88;
      }

      while (v8 < v21);
      v5 = a3[1];
      v8 = v89;
    }
  }

LABEL_31:
  if (v6 >= v5)
  {
    goto LABEL_51;
  }

  if (__OFSUB__(v6, v8))
  {
    goto LABEL_130;
  }

  if (v6 - v8 >= a4)
  {
    goto LABEL_51;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_132;
  }

  if (v8 + a4 < v5)
  {
    v5 = v8 + a4;
  }

  if (v5 < v8)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v6 == v5)
  {
    goto LABEL_51;
  }

  v24 = *a3;
  v25 = *a3 + 88 * v6;
  v26 = v8 - v6;
LABEL_41:
  v27 = v26;
  v28 = v25;
  while (1)
  {
    v29 = *(v28 + 24);
    if (v29)
    {
      v29 = *(v29 + 16);
    }

    v30 = *(v28 - 64);
    if (v30 && v29 < *(v30 + 16))
    {
LABEL_40:
      ++v6;
      v25 += 88;
      --v26;
      if (v6 == v5)
      {
        v6 = v5;
LABEL_51:
        if (v6 < v8)
        {
          goto LABEL_129;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D777AFEC(0, *(v7 + 2) + 1, 1, v7);
          v7 = result;
        }

        v36 = *(v7 + 2);
        v35 = *(v7 + 3);
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          result = sub_1D777AFEC((v35 > 1), v36 + 1, 1, v7);
          v7 = result;
        }

        *(v7 + 2) = v37;
        v38 = &v7[16 * v36];
        *(v38 + 4) = v8;
        *(v38 + 5) = v6;
        v39 = *v91;
        if (!*v91)
        {
          goto LABEL_139;
        }

        if (!v36)
        {
LABEL_3:
          v5 = a3[1];
          if (v6 >= v5)
          {
            goto LABEL_102;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v41 = *(v7 + 4);
            v42 = *(v7 + 5);
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_71:
            if (v44)
            {
              goto LABEL_117;
            }

            v57 = &v7[16 * v37];
            v59 = *v57;
            v58 = *(v57 + 1);
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_120;
            }

            v63 = &v7[16 * v40 + 32];
            v65 = *v63;
            v64 = *(v63 + 1);
            v51 = __OFSUB__(v64, v65);
            v66 = v64 - v65;
            if (v51)
            {
              goto LABEL_123;
            }

            if (__OFADD__(v61, v66))
            {
              goto LABEL_124;
            }

            if (v61 + v66 >= v43)
            {
              if (v43 < v66)
              {
                v40 = v37 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          v67 = &v7[16 * v37];
          v69 = *v67;
          v68 = *(v67 + 1);
          v51 = __OFSUB__(v68, v69);
          v61 = v68 - v69;
          v62 = v51;
LABEL_85:
          if (v62)
          {
            goto LABEL_119;
          }

          v70 = &v7[16 * v40];
          v72 = *(v70 + 4);
          v71 = *(v70 + 5);
          v51 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v51)
          {
            goto LABEL_122;
          }

          if (v73 < v61)
          {
            goto LABEL_3;
          }

LABEL_92:
          v78 = v40 - 1;
          if (v40 - 1 >= v37)
          {
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
            goto LABEL_133;
          }

          if (!*a3)
          {
            goto LABEL_136;
          }

          v79 = *&v7[16 * v78 + 32];
          v80 = *&v7[16 * v40 + 40];
          sub_1D781BD48((*a3 + 88 * v79), (*a3 + 88 * *&v7[16 * v40 + 32]), (*a3 + 88 * v80), v39);
          if (v4)
          {
          }

          if (v80 < v79)
          {
            goto LABEL_113;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D781C070(v7);
          }

          if (v78 >= *(v7 + 2))
          {
            goto LABEL_114;
          }

          v81 = &v7[16 * v78];
          *(v81 + 4) = v79;
          *(v81 + 5) = v80;
          result = sub_1D781BFE4(v40);
          v37 = *(v7 + 2);
          if (v37 <= 1)
          {
            goto LABEL_3;
          }
        }

        v45 = &v7[16 * v37 + 32];
        v46 = *(v45 - 64);
        v47 = *(v45 - 56);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_115;
        }

        v50 = *(v45 - 48);
        v49 = *(v45 - 40);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_116;
        }

        v52 = &v7[16 * v37];
        v54 = *v52;
        v53 = *(v52 + 1);
        v51 = __OFSUB__(v53, v54);
        v55 = v53 - v54;
        if (v51)
        {
          goto LABEL_118;
        }

        v51 = __OFADD__(v43, v55);
        v56 = v43 + v55;
        if (v51)
        {
          goto LABEL_121;
        }

        if (v56 >= v48)
        {
          v74 = &v7[16 * v40 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v51 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v51)
          {
            goto LABEL_125;
          }

          if (v43 < v77)
          {
            v40 = v37 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_71;
      }

      goto LABEL_41;
    }

    if (!v24)
    {
      break;
    }

    v31 = v28 - 88;
    v98 = *(v28 + 32);
    v100 = *(v28 + 48);
    v102 = *(v28 + 64);
    v104 = *(v28 + 80);
    v94 = *v28;
    v96 = *(v28 + 16);
    v32 = *(v28 - 40);
    *(v28 + 32) = *(v28 - 56);
    *(v28 + 48) = v32;
    *(v28 + 64) = *(v28 - 24);
    *(v28 + 80) = *(v28 - 8);
    v33 = *(v28 - 72);
    *v28 = *(v28 - 88);
    *(v28 + 16) = v33;
    *(v31 + 32) = v98;
    *(v31 + 48) = v100;
    *(v31 + 64) = v102;
    *(v31 + 80) = v104;
    v28 -= 88;
    *v31 = v94;
    *(v31 + 16) = v96;
    if (__CFADD__(v27++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_1D781BD48(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 88;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 88;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[88 * v9] <= a4)
    {
      memmove(a4, __dst, 88 * v9);
    }

    v12 = &v4[88 * v9];
    if (v8 < 88)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_37;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *(v6 + 3);
      if (v15)
      {
        v15 = *(v15 + 16);
      }

      v16 = *(v4 + 3);
      if (v16)
      {
        if (v15 < *(v16 + 16))
        {
          break;
        }
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 88;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 88;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 88;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x58uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[88 * v11] <= a4)
  {
    memmove(a4, __src, 88 * v11);
  }

  v12 = &v4[88 * v11];
  if (v10 >= 88 && v6 > v7)
  {
LABEL_23:
    v5 -= 88;
    do
    {
      v17 = *(v12 - 8);
      if (v17)
      {
        v17 = *(v17 + 16);
      }

      v18 = *(v6 - 8);
      if (!v18 || v17 >= *(v18 + 16))
      {
        v20 = v6 - 88;
        if (v5 + 88 != v6)
        {
          memmove(v5, v6 - 88, 0x58uLL);
        }

        if (v12 <= v4 || (v6 -= 88, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      v19 = (v12 - 88);
      if (v5 + 88 != v12)
      {
        memmove(v5, v12 - 88, 0x58uLL);
      }

      v5 -= 88;
      v12 -= 88;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_37:
  v21 = (v12 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v21])
  {
    memmove(v6, v4, 88 * v21);
  }

  return 1;
}

uint64_t sub_1D781BFE4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D781C070(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1D781C084(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D781CA64();
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1D781C17C(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1D781C424(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1D781C394(v11, v6, a2, a1);

    MEMORY[0x1DA7043F0](v11, -1, -1);
  }

  return v9;
}

void *sub_1D781C394(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1D781C424(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D781C424(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 4 * v31);
      result = MEMORY[0x1DA703AA0](*(a4 + 40), v32, 4);
      v33 = -1 << *(a4 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a4 + 48) + 4 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_1D77EDC68(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 4 * (v12 | (v6 << 6)));
      result = MEMORY[0x1DA703AA0](*(a3 + 40), v15, 4);
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 4 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 4 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D781C720(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  v4 = a1;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v31 = v9;
  for (i = v4; ; v4 = i)
  {
    if (!v8)
    {
      do
      {
        v27 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          return result;
        }

        if (v27 >= v9)
        {

          return 1;
        }

        v8 = *(v5 + 8 * v27);
        ++v11;
      }

      while (!v8);
      v11 = v27;
      if (*(v4 + 16))
      {
        goto LABEL_10;
      }

      goto LABEL_32;
    }

    if (!*(v4 + 16))
    {
      goto LABEL_32;
    }

LABEL_10:
    v12 = (*(v3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = *v12;
    v13 = v12[1];

    v15 = sub_1D777BBB4(v14, v13);
    if ((v16 & 1) == 0)
    {

      return 0;
    }

    if (!*(v3 + 16))
    {

LABEL_32:

      return 0;
    }

    v17 = *(v4 + 56) + 24 * v15;
    v18 = v3;
    v19 = *v17;
    v20 = *(v17 + 8);
    v21 = *(v17 + 16);
    sub_1D781CA54(*v17, v20, *(v17 + 16));
    v22 = sub_1D777BBB4(v14, v13);
    v24 = v23;

    if ((v24 & 1) == 0)
    {

      v28 = v19;
      v29 = v20;
      v30 = v21;
      goto LABEL_36;
    }

    sub_1D777BE08(*(v18 + 56) + 32 * v22, v35);
    sub_1D778D0A0(v35, v36);
    if (v21)
    {
      break;
    }

    sub_1D778D0A0(v36, v35);
    result = swift_dynamicCast();
    if (!result)
    {
      goto LABEL_32;
    }

    v3 = v18;
    if (v33 != v19)
    {
      goto LABEL_32;
    }

LABEL_7:
    v8 &= v8 - 1;
    v9 = v31;
  }

  sub_1D777BE08(v36, v35);

  if (swift_dynamicCast())
  {
    if (v33 == v19 && v20 == v34)
    {
      sub_1D77C5618(v19, v20, 1);

      sub_1D77C5618(v19, v20, 1);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      v3 = v18;
    }

    else
    {
      v26 = sub_1D78B6724();
      sub_1D77C5618(v19, v20, 1);

      sub_1D77C5618(v19, v20, 1);
      result = __swift_destroy_boxed_opaque_existential_1(v36);
      v3 = v18;
      if ((v26 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_7;
  }

  sub_1D77C5618(v19, v20, 1);
  __swift_destroy_boxed_opaque_existential_1(v36);

  v28 = v19;
  v29 = v20;
  v30 = 1;
LABEL_36:
  sub_1D77C5618(v28, v29, v30);
  return 0;
}

uint64_t sub_1D781CA54(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1D781CA64()
{
  if (!qword_1EC9CAB60)
  {
    sub_1D777C824();
    v0 = sub_1D78B66F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CAB60);
    }
  }
}

uint64_t type metadata accessor for BundlePaywallRenderModel()
{
  result = qword_1EE092C10;
  if (!qword_1EE092C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D781CB30()
{
  type metadata accessor for BundlePaywallViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1D77404D4(319, &qword_1EE08FBE0, sub_1D781CC04);
    if (v1 <= 0x3F)
    {
      sub_1D77404D4(319, &unk_1EE096460, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D781CC04()
{
  result = qword_1EE08FBE8;
  if (!qword_1EE08FBE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FBE8);
  }

  return result;
}

uint64_t sub_1D781CC74()
{
  result = sub_1D78B5C44();
  qword_1EE08EA60 = result;
  return result;
}

uint64_t ManageSubscriptionsURLProvider.__allocating_init(defaultUrl:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL;
  v4 = sub_1D78B3294();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2 + v3, 1, 1, v4);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl, a1, v4);
  return v2;
}

uint64_t ManageSubscriptionsURLProvider.init(defaultUrl:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL;
  v4 = sub_1D78B3294();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v1 + v3, 1, 1, v4);
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl, a1, v4);
  return v1;
}

Swift::Void __swiftcall ManageSubscriptionsURLProvider.prewarm()()
{
  sub_1D78B3A64();

  sub_1D78B3A44();
}

void sub_1D781CEAC(uint64_t a1)
{
  v2 = sub_1D78B5C44();
  v3 = sub_1D78B5C44();
  v4 = [objc_opt_self() bagForProfile:v2 profileVersion:v3];

  if (qword_1EE08EA58 != -1)
  {
    swift_once();
  }

  v5 = [v4 URLForKey_];
  v6 = [v5 valuePromise];
  v8[4] = sub_1D781D964;
  v8[5] = a1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D789E5B0;
  v8[3] = &block_descriptor_23;
  v7 = _Block_copy(v8);

  [v6 addFinishBlock_];
  _Block_release(v7);
}

void sub_1D781D05C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D7740528(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - v7;
  if (v6)
  {
    sub_1D78B3254();
    v9 = sub_1D78B3294();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    v10 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL;
    swift_beginAccess();
    sub_1D77B44C4(v8, a3 + v10);
    swift_endAccess();
  }

  if (a2)
  {
    v11 = a2;
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v12 = sub_1D78B4304();
    __swift_project_value_buffer(v12, qword_1EE09C1F0);
    v13 = a2;
    v14 = sub_1D78B42E4();
    v15 = sub_1D78B60A4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1D7739000, v14, v15, "ManageSubscriptionsURLProvider fetch error: [%@]", v16, 0xCu);
      sub_1D781D96C(v17, &qword_1EE08FBB0, sub_1D781D9C8);
      MEMORY[0x1DA7043F0](v17, -1, -1);
      MEMORY[0x1DA7043F0](v16, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t ManageSubscriptionsURLProvider.manageSubscriptionsURL()@<X0>(uint64_t a1@<X8>)
{
  sub_1D7740528(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL;
  swift_beginAccess();
  sub_1D776F538(v1 + v6, v5);
  v7 = sub_1D78B3294();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  (*(v8 + 16))(a1, v1 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl, v7);
  result = (v9)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1D781D96C(v5, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

  return result;
}

uint64_t ManageSubscriptionsURLProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl;
  v2 = sub_1D78B3294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D781D96C(v0 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  return v0;
}

uint64_t ManageSubscriptionsURLProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl;
  v2 = sub_1D78B3294();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D781D96C(v0 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL, &unk_1EE096460, MEMORY[0x1E6968FB0]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D781D5C4()
{
  sub_1D78B3A64();

  sub_1D78B3A44();
}

uint64_t sub_1D781D628@<X0>(uint64_t a1@<X8>)
{
  sub_1D7740528(0, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = *v1;
  v7 = OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_fetchedURL;
  swift_beginAccess();
  sub_1D776F538(v6 + v7, v5);
  v8 = sub_1D78B3294();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v5, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v5, v8);
  }

  (*(v9 + 16))(a1, v6 + OBJC_IVAR____TtC16NewsSubscription30ManageSubscriptionsURLProvider_defaultUrl, v8);
  result = (v10)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1D781D96C(v5, &unk_1EE096460, MEMORY[0x1E6968FB0]);
  }

  return result;
}

uint64_t type metadata accessor for ManageSubscriptionsURLProvider()
{
  result = qword_1EE08EA48;
  if (!qword_1EE08EA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D781D850()
{
  sub_1D78B3294();
  if (v0 <= 0x3F)
  {
    sub_1D7740528(319, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D781D96C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7740528(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D781D9C8()
{
  result = qword_1EE08FBB8;
  if (!qword_1EE08FBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FBB8);
  }

  return result;
}

uint64_t sub_1D781DA18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_1D781DAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 184);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = sub_1D77AE39C;
  v12[5] = v10;
  v12[6] = a5;
  v14[4] = sub_1D78212E4;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D781E048;
  v14[3] = &block_descriptor_24;
  v13 = _Block_copy(v14);

  [v11 performEntitlementWithIgnoreCache:0 completion:v13];
  _Block_release(v13);
}

void sub_1D781DC04(unint64_t a1, int a2, id a3, void (*a4)(id), uint64_t a5, void (*a6)(_BOOL8), uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    v11 = a1;
    if (!a1)
    {
      a6(0);
      return;
    }

    v52 = a7;
    v53 = a6;
    if (a1 >> 62)
    {
LABEL_42:
      v46 = a8;
      v47 = sub_1D78B6534();
      a8 = v46;
      v12 = v47;
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v54 = a8;
      v55[0] = MEMORY[0x1E69E7CC0];
      sub_1D77D9874(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_44;
      }

      v14 = 0;
      v13 = v55[0];
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA703700](v14, v11);
        }

        else
        {
          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = [v15 inAppAdamID];
        v18 = [v17 stringValue];

        v19 = sub_1D78B5C74();
        v21 = v20;

        v55[0] = v13;
        v23 = *(v13 + 16);
        v22 = *(v13 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D77D9874((v22 > 1), v23 + 1, 1);
          v13 = v55[0];
        }

        ++v14;
        *(v13 + 16) = v23 + 1;
        v24 = v13 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
      }

      while (v12 != v14);
      a8 = v54;
    }

    v25 = [*(a8 + 32) configuration];
    if (v25)
    {
      v26 = v25;
      if ([v25 respondsToSelector_])
      {
        v27 = [v26 paidBundleConfig];
        swift_unknownObjectRelease();
        v28 = [v27 offeredBundlePurchaseIDs];

        if (v28)
        {
          v29 = sub_1D78B5EB4();

          v30 = v29;
          v31 = *(v29 + 16);
          if (v31)
          {
            v32 = 0;
            v11 = 0;
            v33 = v29 + 40;
            v54 = *(v29 + 16);
            v49 = v31 - 1;
            v34 = MEMORY[0x1E69E7CC0];
            v50 = v29 + 40;
            do
            {
              v51 = v34;
              v35 = (v33 + 16 * v32);
              v36 = v32;
              while (1)
              {
                if (v36 >= *(v30 + 16))
                {
                  __break(1u);
                  goto LABEL_42;
                }

                v37 = v30;
                v39 = *(v35 - 1);
                v38 = *v35;
                v32 = v36 + 1;
                v55[0] = v39;
                v55[1] = v38;
                MEMORY[0x1EEE9AC00](v30);
                v48[2] = v55;

                if (sub_1D781DA18(sub_1D782134C, v48, v13))
                {
                  break;
                }

                v35 += 2;
                ++v36;
                v30 = v37;
                if (v54 == v32)
                {
                  v34 = v51;
                  goto LABEL_39;
                }
              }

              v34 = v51;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v56 = v34;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D77D9874(0, *(v34 + 16) + 1, 1);
                v34 = v56;
              }

              v30 = v37;
              v42 = *(v34 + 16);
              v41 = *(v34 + 24);
              if (v42 >= v41 >> 1)
              {
                sub_1D77D9874((v41 > 1), v42 + 1, 1);
                v30 = v37;
                v34 = v56;
              }

              *(v34 + 16) = v42 + 1;
              v43 = v34 + 16 * v42;
              *(v43 + 32) = v39;
              *(v43 + 40) = v38;
              v33 = v50;
            }

            while (v49 != v36);
          }

          else
          {
            v34 = MEMORY[0x1E69E7CC0];
          }

LABEL_39:

          v45 = *(v34 + 16);

          v44 = v45 != 0;
          goto LABEL_40;
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v44 = 0;
LABEL_40:
      v53(v44);
      return;
    }

LABEL_44:
    __break(1u);
    return;
  }

  v10 = a3;
  a4(a3);
}

uint64_t sub_1D781E048(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_1D773F004(0, &qword_1EE08FCA8);
    v6 = sub_1D78B5EB4();
  }

  v8 = a4;
  v7(v6, a3, a4);
}

id sub_1D781E0F4(unint64_t a1, int a2, void *a3, id *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v136 = a6;
  v135 = a5;
  v124 = sub_1D78B5254();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1D78B52A4();
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v119 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1D78B3394();
  v131 = *(v133 - 8);
  v12 = MEMORY[0x1EEE9AC00](v133);
  v132 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v125 = &v118 - v14;
  sub_1D7744310(0, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v134 = &v118 - v19;
  v143 = a4;
  v20 = [a4[3] cachedSubscription];
  if (objc_getAssociatedObject(v20, v20 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v149 = 0u;
    v150 = 0u;
  }

  aBlock = v149;
  v146 = v150;
  v21 = MEMORY[0x1E69E7CA0];
  v140 = v18;
  if (*(&v150 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0);
    if (swift_dynamicCast())
    {
      v22 = v144;
      v23 = [v144 integerValue];
      if (v23 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_1D782140C(&aBlock, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
  }

  v22 = 0;
  v23 = 0;
LABEL_10:
  if (objc_getAssociatedObject(v20, ~v23))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v149 = 0u;
    v150 = 0u;
  }

  aBlock = v149;
  v146 = v150;
  if (*(&v150 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0);
    if (swift_dynamicCast())
    {
      v24 = v144;
      v25 = [v24 integerValue];

      v26 = v25 - 146;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1D782140C(&aBlock, &qword_1EE08F9C0, v21 + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
  }

LABEL_17:

  v26 = -146;
LABEL_18:
  v27 = [v143[2] isPaidSubscriberFromAppStore];
  if (!a3)
  {
    v129 = 1;
    goto LABEL_27;
  }

  v28 = a1;
  v29 = a3;
  v30 = sub_1D78B31B4();
  v31 = [v30 domain];
  v32 = sub_1D78B5C74();
  v34 = v33;

  if (v32 == sub_1D78B5C74() && v34 == v35)
  {
  }

  else
  {
    v36 = sub_1D78B6724();

    if ((v36 & 1) == 0)
    {

      v38 = 1;
      goto LABEL_26;
    }
  }

  v37 = [v30 code];

  v38 = v37 != 3027;
LABEL_26:
  v129 = v38;
  a1 = v28;
LABEL_27:
  v39 = NewsCoreUserDefaults();
  v40 = [v39 BOOLForKey_];

  if (a1)
  {
    if (a1 >> 62)
    {
      v41 = sub_1D78B6534();
    }

    else
    {
      v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a3)
    {
      v42 = v41 == 0;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42;
    v141 = v43;
  }

  else
  {
    v141 = 0;
  }

  v142 = a3;
  v44 = v26 ^ v23;
  v45 = v40 | a2;
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  v139 = v27 | v44;
  v138 = a1 == 0;
  v137 = qword_1EE09C268;
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v128 = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1D78C0D80;
  *&aBlock = a1;
  sub_1D7744310(0, &qword_1EE08FFC0, sub_1D78213A4, MEMORY[0x1E69E6720]);
  v49 = v48;
  v130 = a1;

  v127 = v49;
  v50 = sub_1D78B5CC4();
  v52 = v51;
  v53 = MEMORY[0x1E69E6158];
  *(v47 + 56) = MEMORY[0x1E69E6158];
  v54 = sub_1D775ABD4();
  *(v47 + 64) = v54;
  *(v47 + 32) = v50;
  *(v47 + 40) = v52;
  if (v45)
  {
    v55 = 1702195828;
  }

  else
  {
    v55 = 0x65736C6166;
  }

  if (v45)
  {
    v56 = 0xE400000000000000;
  }

  else
  {
    v56 = 0xE500000000000000;
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  MEMORY[0x1DA702FF0](v55, v56);

  v57 = aBlock;
  *(v47 + 96) = v53;
  *(v47 + 104) = v54;
  *(v47 + 72) = v57;
  *&aBlock = v142;
  v58 = v142;
  sub_1D7812D44(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
  v126 = v59;
  v60 = sub_1D78B5CC4();
  *(v47 + 136) = v53;
  *(v47 + 144) = v54;
  *(v47 + 112) = v60;
  *(v47 + 120) = v61;
  v62 = v141;
  if (v141)
  {
    v63 = 1702195828;
  }

  else
  {
    v63 = 0x65736C6166;
  }

  v64 = v45;
  if (v141)
  {
    v65 = 0xE400000000000000;
  }

  else
  {
    v65 = 0xE500000000000000;
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  MEMORY[0x1DA702FF0](v63, v65);

  v66 = aBlock;
  *(v47 + 176) = v53;
  *(v47 + 184) = v54;
  *(v47 + 152) = v66;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  v67 = [v143[22] isNetworkReachable];
  v68 = v67 == 0;
  if (v67)
  {
    v69 = 1702195828;
  }

  else
  {
    v69 = 0x65736C6166;
  }

  if (v68)
  {
    v70 = 0xE500000000000000;
  }

  else
  {
    v70 = 0xE400000000000000;
  }

  MEMORY[0x1DA702FF0](v69, v70);

  v71 = aBlock;
  *(v47 + 216) = v53;
  *(v47 + 224) = v54;
  *(v47 + 192) = v71;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v72 = v138 | v62;
  v138 = v64;
  if ((v72 | v64))
  {
    v73 = v140;
    if ((v139 & 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else
  {
    v73 = v140;
    if (v129 & 1 | ((v139 & 1) == 0))
    {
LABEL_79:
      sub_1D78B60A4();
      sub_1D78B42C4();
      v116 = [objc_opt_self() standardUserDefaults];
      v117 = sub_1D78B5C44();
      [v116 setInteger:0 forKey:v117];

      return v135();
    }
  }

  sub_1D78B6094();
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1D78BCB50;
  *&aBlock = v130;

  v75 = sub_1D78B5CC4();
  *(v74 + 56) = v53;
  *(v74 + 64) = v54;
  *(v74 + 32) = v75;
  *(v74 + 40) = v76;
  *&aBlock = v142;
  v77 = v142;
  v78 = sub_1D78B5CC4();
  *(v74 + 96) = v53;
  *(v74 + 104) = v54;
  *(v74 + 72) = v78;
  *(v74 + 80) = v79;
  sub_1D78B42C4();

  v80 = objc_opt_self();
  v81 = [v80 standardUserDefaults];
  v82 = sub_1D78B5C44();
  v83 = [v81 objectForKey_];

  if (v83)
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v149 = 0u;
    v150 = 0u;
  }

  v84 = v133;
  v85 = v134;
  v86 = v131;
  aBlock = v149;
  v146 = v150;
  if (*(&v150 + 1))
  {
    v87 = swift_dynamicCast();
    (*(v86 + 56))(v85, v87 ^ 1u, 1, v84);
  }

  else
  {
    sub_1D782140C(&aBlock, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
    (*(v86 + 56))(v85, 1, 1, v84);
  }

  sub_1D7756DE4(v85, v73);
  v88 = (v86 + 8);
  if ((*(v86 + 48))(v73, 1, v84) == 1)
  {
    sub_1D782140C(v73, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D7744310);
    v89 = [v80 standardUserDefaults];
    v90 = v132;
    sub_1D78B3384();
    v91 = sub_1D78B3324();
    (*v88)(v90, v84);
    v92 = sub_1D78B5C44();
    [v89 setObject:v91 forKey:v92];

LABEL_78:
    sub_1D782140C(v134, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D7744310);
    goto LABEL_79;
  }

  (*(v86 + 32))(v125, v73, v84);
  v93 = v86 + 32;
  v94 = v132;
  sub_1D78B3384();
  sub_1D78B3304();
  v96 = v95;
  v97 = *(v93 - 24);
  v97(v94, v84);
  v98 = [v80 standardUserDefaults];
  v99 = sub_1D78B5C44();
  v100 = [v98 integerForKey_];

  result = [v143[4] configuration];
  if (result)
  {
    v102 = result;
    if ([result respondsToSelector_])
    {
      v103 = [v102 entitlementsCacheRecoveryAttemptDurationInSeconds];
      swift_unknownObjectRelease();
      v97(v125, v133);
      if (v100 <= 0)
      {
        v100 = v103;
      }
    }

    else
    {
      v97(v125, v133);
      swift_unknownObjectRelease();
      if (v100 < 1)
      {
        if (v96 <= 0.0)
        {
          goto LABEL_78;
        }

        goto LABEL_76;
      }
    }

    if (v96 <= v100)
    {
      goto LABEL_78;
    }

LABEL_76:
    sub_1D782140C(v134, &unk_1EE095640, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D7744310);
    sub_1D78B60A4();
    v104 = MEMORY[0x1E69E7CC0];
    sub_1D78B42C4();
    v105 = [v80 standardUserDefaults];
    v106 = v132;
    sub_1D78B3384();
    v107 = sub_1D78B3324();
    v97(v106, v133);
    v108 = sub_1D78B5C44();
    [v105 setObject:v107 forKey:v108];

    sub_1D773F004(0, &qword_1EE08FE10);
    v109 = sub_1D78B6104();
    v110 = swift_allocObject();
    *(v110 + 16) = v143;
    *(v110 + 24) = v138;
    v111 = v136;
    *(v110 + 32) = v135;
    *(v110 + 40) = v111;
    *(v110 + 48) = v141;
    v147 = sub_1D782146C;
    v148 = v110;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v146 = sub_1D775FB6C;
    *(&v146 + 1) = &block_descriptor_12_1;
    v112 = _Block_copy(&aBlock);

    v113 = v119;
    sub_1D78B5274();
    *&aBlock = v104;
    sub_1D7788538();
    sub_1D7744310(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D775F4A4();
    v114 = v121;
    v115 = v124;
    sub_1D78B6324();
    MEMORY[0x1DA7033B0](0, v113, v114, v112);
    _Block_release(v112);

    (*(v123 + 8))(v114, v115);
    return (*(v120 + 8))(v113, v122);
  }

  __break(1u);
  return result;
}

void sub_1D781F2AC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *(a1 + 184);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  v13[4] = sub_1D7821480;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D781E048;
  v13[3] = &block_descriptor_18;
  v12 = _Block_copy(v13);

  [v10 performEntitlementWithIgnoreCache:1 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1D781F3BC(uint64_t a1, int a2, void *a3, char a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, int a8)
{
  v53 = a8;
  v57 = a6;
  v58 = a7;
  v46 = a5;
  v54 = a2;
  v11 = sub_1D78B5254();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D78B52A4();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = objc_opt_self();
  v14 = [v56 standardUserDefaults];
  v55 = "e entitlements cache";
  v15 = sub_1D78B5C44();
  v16 = [v14 objectForKey_];

  if (v16)
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  aBlock = v64;
  v61 = v65;
  if (*(&v65 + 1))
  {
    if (swift_dynamicCast())
    {
      v17 = v59;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D782140C(&aBlock, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
  }

  v17 = 0;
LABEL_9:
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D78C22A0;
  *&aBlock = a1;
  sub_1D7744310(0, &qword_1EE08FFC0, sub_1D78213A4, MEMORY[0x1E69E6720]);

  v19 = sub_1D78B5CC4();
  v21 = v20;
  v22 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v23 = sub_1D775ABD4();
  *(v18 + 64) = v23;
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  if (a4)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (a4)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  MEMORY[0x1DA702FF0](v24, v25);

  v26 = aBlock;
  *(v18 + 96) = v22;
  *(v18 + 104) = v23;
  *(v18 + 72) = v26;
  *&aBlock = v17;
  v27 = sub_1D78B66E4();
  *(v18 + 136) = v22;
  *(v18 + 144) = v23;
  *(v18 + 112) = v27;
  *(v18 + 120) = v28;
  *&aBlock = a3;
  v29 = a3;
  sub_1D7812D44(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
  v30 = sub_1D78B5CC4();
  *(v18 + 176) = v22;
  *(v18 + 184) = v23;
  *(v18 + 152) = v30;
  *(v18 + 160) = v31;
  sub_1D78B60A4();
  sub_1D78B42C4();

  if (a3 && v17 <= 1)
  {
    sub_1D78214A0();
    return v57();
  }

  v32 = NewsCoreUserDefaults();
  v33 = [v32 BOOLForKey_];

  v34 = [v56 standardUserDefaults];
  v35 = sub_1D78B5C44();
  [v34 setInteger:0 forKey:v35];

  if ((v33 & 1) == 0 && (v54 & 1) == 0 && a1 && (v53 & 1) == 0)
  {
    return v57();
  }

  sub_1D773F004(0, &qword_1EE08FE10);
  v37 = sub_1D78B6104();
  v38 = swift_allocObject();
  v38[2] = v46;
  v38[3] = a3;
  v39 = v58;
  v38[4] = v57;
  v38[5] = v39;
  v62 = sub_1D7821494;
  v63 = v38;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v61 = sub_1D775FB6C;
  *(&v61 + 1) = &block_descriptor_24_0;
  v40 = _Block_copy(&aBlock);
  v41 = a3;

  v42 = v47;
  sub_1D78B5274();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1D7788538();
  sub_1D7744310(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  v43 = v49;
  v44 = v52;
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v42, v43, v40);
  _Block_release(v40);

  (*(v51 + 8))(v43, v44);
  return (*(v48 + 8))(v42, v50);
}

uint64_t sub_1D781FAB4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D78B6454();
  MEMORY[0x1DA702FF0](0xD000000000000061, 0x80000001D78D9650);
  v5 = a2;
  sub_1D7812D44(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
  v6 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v6);

  sub_1D781FBB8(0, 0xE000000000000000);

  return a3(v7);
}

uint64_t sub_1D781FBB8(uint64_t a1, uint64_t a2)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  sub_1D7821648();
  sub_1D78B5054();
  swift_allocObject();
  v5 = sub_1D78B5004();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;

  sub_1D78B5024();

  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v2;

  sub_1D78B5044();

  v8 = v2[15];
  v9 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v8);
  (*(v9 + 88))(v5, v8, v9);
}

void sub_1D781FD94(uint64_t a1, uint64_t a2, int a3)
{
  v18 = a3;
  v4 = sub_1D78B5254();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D78B52A4();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = sub_1D773F004(0, &qword_1EE08FE10);
  v11 = sub_1D78B6104();
  v23 = sub_1D7821704;
  v24 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1D775FB6C;
  v22 = &block_descriptor_48_0;
  v12 = _Block_copy(&aBlock);

  sub_1D78B5274();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D7788538();
  sub_1D7744310(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D775F4A4();
  sub_1D78B6324();
  MEMORY[0x1DA7033B0](0, v10, v7, v12);
  _Block_release(v12);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v17);
  v13 = *(a2 + 16);
  v14 = sub_1D78B6104();
  v23 = sub_1D782170C;
  v24 = a2;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1D77814F0;
  v22 = &block_descriptor_51_0;
  v15 = _Block_copy(&aBlock);

  [v13 performEntitlementCheckWithIgnoreCache:v18 & 1 callbackQueue:v14 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1D78200F4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B60A4();
    sub_1D78B42C4();
    if (*(v1 + 240) == 1)
    {
      v2 = *(v1 + 232);
      v4[4] = sub_1D77C005C;
      v4[5] = v1;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 1107296256;
      v4[2] = sub_1D779ECCC;
      v4[3] = &block_descriptor_54;
      v3 = _Block_copy(v4);

      [v2 enqueueBlock_];
      _Block_release(v3);
    }

    else
    {
      sub_1D78B60A4();
      sub_1D78B42C4();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D782029C(unint64_t a1, unint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D779DCD8();
    swift_unknownObjectRelease();
  }

  sub_1D7820318(a2);
  if (a1)
  {
    sub_1D7821714(a1);
  }
}

char *sub_1D7820318(unint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a1 >> 62)
  {
    v2 = sub_1D78B6534();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1D77D9874(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v15;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA703700](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 channelID];
      v9 = sub_1D78B5C74();
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D77D9874((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1D782046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D78BCAB0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D775ABD4();
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;

  sub_1D78B60A4();
  sub_1D78B42C4();

  sub_1D78205BC();
}

void sub_1D78205BC()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v2 = sub_1D78B4874();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 rootViewController];

    if (v4)
    {
      v5 = sub_1D78B60B4();
      v6 = [objc_opt_self() sharedAccount];
      v7 = [v6 activeiTunesAccount];

      v8 = [objc_allocWithZone(MEMORY[0x1E698C7B0]) init];
      v9 = sub_1D78B5C44();
      [v8 setDebugReason_];

      v10 = [objc_allocWithZone(MEMORY[0x1E698CC58]) initWithAccount:v7 presentingViewController:v5 options:0];
      v11 = [v10 performAuthentication];
      v12 = [v11 promiseWithTimeout_];

      v14[4] = sub_1D78216F4;
      v14[5] = v1;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1107296256;
      v14[2] = sub_1D7780F60;
      v14[3] = &block_descriptor_33;
      v13 = _Block_copy(v14);

      [v12 addFinishBlock_];
      _Block_release(v13);
    }
  }
}

id sub_1D78207F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D78BCAB0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D775ABD4();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  sub_1D78B60A4();
  sub_1D78B42C4();

  sub_1D78B60A4();
  sub_1D78B42C4();
  [*(a3 + 24) silentExpireBundleSubscription];
  v7 = *(a3 + 16);

  return [v7 silentExpireInAppSubscriptions];
}

void sub_1D7820998(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1D78B5254();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B52A4();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = objc_opt_self();
    v16 = [v15 sharedAccount];
    [v16 reloadiTunesAccount];

    v17 = [v15 sharedAccount];
    LODWORD(v16) = [v17 isUserSignedIntoiTunes];

    if (v16)
    {
      v18 = *(a3 + 24);
      v19 = swift_allocObject();
      *(v19 + 16) = a3;
      *(v19 + 24) = 0;
      v40 = sub_1D77A2CD4;
      v41 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v37 = 1107296256;
      v38 = sub_1D7781488;
      v39 = &block_descriptor_45_0;
      v20 = _Block_copy(&aBlock);

      [v18 refreshBundleSubscriptionWithCachePolicy:2 hideBundleDetectionUI:0 completion:v20];
      _Block_release(v20);
    }
  }

  else if (a2)
  {
    v33 = v12;
    v34 = v7;
    v35 = v11;
    v21 = a2;
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D78BCAB0;
    aBlock = a2;
    v23 = a2;
    sub_1D773C9B8(0, &qword_1EE08F9F0);
    v24 = sub_1D78B5CC4();
    v26 = v25;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1D775ABD4();
    *(v22 + 32) = v24;
    *(v22 + 40) = v26;
    sub_1D78B42C4();

    v27 = sub_1D78B31B4();
    LOBYTE(v26) = [v27 fc_isAuthenticationUserCancelled];

    if (v26)
    {
    }

    else
    {
      sub_1D773F004(0, &qword_1EE08FE10);
      v28 = sub_1D78B6104();
      v29 = swift_allocObject();
      *(v29 + 16) = a3;
      *(v29 + 24) = a2;
      v40 = sub_1D78216FC;
      v41 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v37 = 1107296256;
      v38 = sub_1D775FB6C;
      v39 = &block_descriptor_39;
      v30 = _Block_copy(&aBlock);
      v31 = a2;

      sub_1D78B5274();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1D7788538();
      sub_1D7744310(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D775F4A4();
      sub_1D78B6324();
      MEMORY[0x1DA7033B0](0, v14, v9, v30);
      _Block_release(v30);

      (*(v34 + 8))(v9, v6);
      (*(v33 + 8))(v14, v35);
    }
  }
}

uint64_t sub_1D7820EF0(void *a1, void *a2)
{
  sub_1D7821FF0();
  sub_1D78B5054();
  swift_allocObject();
  v4 = sub_1D78B5004();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = a2;
  sub_1D78B5034();

  sub_1D78B5044();

  v7 = a1[15];
  v8 = a1[16];
  __swift_project_boxed_opaque_existential_1(a1 + 12, v7);
  (*(v8 + 88))(v4, v7, v8);
}

uint64_t sub_1D7821034(uint64_t a1, void *a2)
{
  sub_1D78B6454();
  MEMORY[0x1DA702FF0](0xD00000000000006BLL, 0x80000001D78D97F0);
  v3 = a2;
  sub_1D7812D44(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
  v4 = sub_1D78B5CC4();
  MEMORY[0x1DA702FF0](v4);

  sub_1D78205BC(0, 0xE000000000000000);
}

id sub_1D782111C(uint64_t a1)
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  [*(a1 + 24) silentExpireBundleSubscription];
  v2 = *(a1 + 16);

  return [v2 silentExpireInAppSubscriptions];
}

uint64_t sub_1D78211D0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D776ABA8(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1D7821230()
{
  sub_1D78211D0();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7821264()
{
  sub_1D779C73C(0, &qword_1EE095240, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4174();
}

uint64_t sub_1D78212F4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D78B6724() & 1;
  }
}

uint64_t sub_1D782134C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D78B6724() & 1;
  }
}

void sub_1D78213A4()
{
  if (!qword_1EE08FFC8)
  {
    sub_1D773F004(255, &qword_1EE08FCA8);
    v0 = sub_1D78B5F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE08FFC8);
    }
  }
}

uint64_t sub_1D782140C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D78214A0()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_1D78B5C44();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1D782140C(v13, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D779C73C);
  }

  v4 = 0;
LABEL_9:
  v5 = [v0 standardUserDefaults];
  v6 = __OFADD__(v4, 1);
  v7 = v4 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v5;
    v9 = sub_1D78B5C44();
    [v8 setInteger:v7 forKey:v9];
  }
}

unint64_t sub_1D7821648()
{
  result = qword_1EC9CAB70;
  if (!qword_1EC9CAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAB70);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7821714(unint64_t a1)
{
  v2 = type metadata accessor for PurchaseAdContext();
  v81 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v80 = v76 - v6;
  sub_1D7744310(0, &qword_1EE090148, sub_1D77F6328, MEMORY[0x1E69E6720]);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = v76 - v11;
  v13 = sub_1D77FF85C(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v84 = v10;
    v85 = v5;
    v87 = v12;
    if (!v14)
    {
LABEL_23:
      v86 = v13;
      v39 = *__swift_project_boxed_opaque_existential_1((v76[0] + 56), *(v76[0] + 80));

      sub_1D78B3854();

      swift_beginAccess();
      a1 = *(v39 + 24);

      sub_1D78B3864();

      v40 = 0;
      v42 = a1 + 64;
      v41 = *(a1 + 64);
      v82 = a1;
      v83 = a1 + 64;
      v43 = 1 << *(a1 + 32);
      v44 = -1;
      if (v43 < 64)
      {
        v44 = ~(-1 << v43);
      }

      v45 = v44 & v41;
      v46 = (v43 + 63) >> 6;
      while (1)
      {
        if (!v45)
        {
          if (v46 <= v40 + 1)
          {
            v52 = v40 + 1;
          }

          else
          {
            v52 = v46;
          }

          v53 = v52 - 1;
          while (1)
          {
            v51 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              break;
            }

            if (v51 >= v46)
            {
              sub_1D77F6328(0);
              v61 = v73;
              (*(*(v73 - 8) + 56))(v10, 1, 1, v73);
              v45 = 0;
              v40 = v53;
              goto LABEL_41;
            }

            v45 = *(v42 + 8 * v51);
            ++v40;
            if (v45)
            {
              v40 = v51;
              goto LABEL_40;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v51 = v40;
LABEL_40:
        v54 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        v55 = v54 | (v51 << 6);
        v56 = (*(v82 + 48) + 16 * v55);
        v58 = *v56;
        v57 = v56[1];
        v59 = v80;
        sub_1D7821E9C(*(v82 + 56) + *(v81 + 72) * v55, v80);
        sub_1D77F6328(0);
        v61 = v60;
        v62 = *(v60 + 48);
        *v10 = v58;
        v10[1] = v57;
        sub_1D77F63C8(v59, v10 + v62);
        (*(*(v61 - 8) + 56))(v10, 0, 1, v61);

        v12 = v87;
LABEL_41:
        sub_1D7821F00(v10, v12);
        sub_1D77F6328(0);
        if ((*(*(v61 - 8) + 48))(v12, 1, v61) == 1)
        {

          __swift_project_boxed_opaque_existential_1((v76[0] + 56), *(v76[0] + 80));
          return sub_1D77F5A40();
        }

        a1 = *v12;
        v63 = *(v12 + 8);
        sub_1D77F63C8(v12 + *(v61 + 48), v5);
        if (!*(v86 + 16))
        {
          goto LABEL_28;
        }

        v64 = sub_1D777BBB4(a1, v63);
        v66 = v65;

        if (v66)
        {
          break;
        }

LABEL_29:
        v13 = sub_1D7821F94(v5);
        v42 = v83;
      }

      v67 = *(*(v86 + 56) + 8 * v64);
      v68 = [v67 inAppAdamID];
      v69 = [v68 stringValue];

      v79 = sub_1D78B5C74();
      v71 = v70;

      v72 = [v67 servicesBundleAdamID];
      v78 = v71;
      if (v72)
      {
        v47 = v72;
        v77 = sub_1D78B5C74();
      }

      else
      {
        v77 = 0;
      }

      v48 = sub_1D78B4244();
      v76[2] = *(v5 + 5);
      v76[3] = v48;
      v76[1] = *(v5 + 2);
      v49 = [v67 chargeCurrencyCode];
      sub_1D78B5C74();
      a1 = v50;

      v5 = v85;
      sub_1D78B4234();

      v10 = v84;
      v12 = v87;
LABEL_28:

      goto LABEL_29;
    }

    v15 = 0;
    v86 = a1 & 0xC000000000000001;
    v82 = a1;
    v83 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_7:
    if (v86)
    {
      v20 = v13;
      v13 = MEMORY[0x1DA703700](v15, a1);
    }

    else
    {
      if (v15 >= *(v83 + 16))
      {
        goto LABEL_50;
      }

      v20 = v13;
      v13 = *(a1 + 8 * v15 + 32);
    }

    v21 = v13;
    v22 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      goto LABEL_49;
    }

    v5 = v14;
    v23 = [v13 appAdamID];
    v12 = [v23 stringValue];

    v24 = sub_1D78B5C74();
    v10 = v25;

    a1 = v21;
    v26 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v26;
    v29 = sub_1D777BBB4(v24, v10);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v13 = (v30 + v31);
    if (!__OFADD__(v30, v31))
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v75 = v13;
    v14 = sub_1D78B6534();
    v13 = v75;
  }

  v12 = v28;
  if (v26[3] >= v13)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v28)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1D782FE7C();
      if (v12)
      {
LABEL_5:

        v16 = v88;
        v17 = v88[7];
        v18 = *(v17 + 8 * v29);
        *(v17 + 8 * v29) = a1;

        v13 = v16;
        goto LABEL_6;
      }
    }

LABEL_18:
    v34 = v88;
    v88[(v29 >> 6) + 8] |= 1 << v29;
    v35 = (v34[6] + 16 * v29);
    *v35 = v24;
    v35[1] = v10;
    *(v34[7] + 8 * v29) = a1;

    v36 = v34[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_52;
    }

    v13 = v34;
    v34[2] = v38;
LABEL_6:
    ++v15;
    v14 = v5;
    v19 = v22 == v5;
    v10 = v84;
    v5 = v85;
    v12 = v87;
    a1 = v82;
    if (v19)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  sub_1D782D3AC(v13, isUniquelyReferenced_nonNull_native);
  v32 = sub_1D777BBB4(v24, v10);
  if ((v12 & 1) == (v33 & 1))
  {
    v29 = v32;
    if (v12)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  result = sub_1D78B6784();
  __break(1u);
  return result;
}

uint64_t sub_1D7821E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseAdContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7821F00(uint64_t a1, uint64_t a2)
{
  sub_1D7744310(0, &qword_1EE090148, sub_1D77F6328, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7821F94(uint64_t a1)
{
  v2 = type metadata accessor for PurchaseAdContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7821FF0()
{
  result = qword_1EC9CAB78;
  if (!qword_1EC9CAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAB78);
  }

  return result;
}

uint64_t objectdestroy_35Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double sub_1D78220F0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v8 = PurchasingSpinner.label.getter();
  v9 = (*(v7 + 8))(v8);

  sub_1D78B6144();
  v11 = v10;
  v13 = v12;
  v14 = [v6 verticalSizeClass];
  v15 = [v6 horizontalSizeClass];
  if (v14 == 1)
  {
    if ((v15 - 1) >= 2)
    {
LABEL_9:

      result = 0.0;
      v17 = v4;
      goto LABEL_10;
    }
  }

  else if (v14 != 2 || v15 != 1)
  {
    goto LABEL_9;
  }

  v16 = [v6 verticalSizeClass];

  v17 = v4 + 50.0;
  result = -50.0;
  if (v16 == 1)
  {
    result = 0.0;
    v17 = 550.0;
  }

LABEL_10:
  v19 = fmax(v13 + 20.0, 80.0);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0x4071300000000000;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v20 = (275.0 - (v11 + 28.5)) * 0.5;
  *(a2 + 32) = v20 + 28.5;
  *(a2 + 40) = (v19 - v13) * 0.5;
  *(a2 + 48) = 0x406C500000000000;
  *(a2 + 56) = v13;
  *(a2 + 64) = v20;
  *(a2 + 72) = xmmword_1D78C4B00;
  *(a2 + 88) = 0x4034000000000000;
  *(a2 + 96) = 0;
  *(a2 + 120) = v19;
  *(a2 + 128) = result;
  *(a2 + 136) = 0;
  *(a2 + 144) = v17;
  *(a2 + 152) = 0x4069000000000000;
  return result;
}

char *DynamicViewControllerFactory.createViewController(for:placement:purchaseContext:dedupingID:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a4;
  v53 = a5;
  v50 = MEMORY[0x1E6968FB0];
  v9 = MEMORY[0x1E69E6720];
  sub_1D774057C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47[-v11];
  v49 = type metadata accessor for PurchaseContext;
  sub_1D774057C(0, qword_1EE096030, type metadata accessor for PurchaseContext, v9);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47[-v14];
  v48 = *a2;
  v16 = [objc_allocWithZone(MEMORY[0x1E698CCF0]) initWithMarketingItem:a1 bag:_s16NewsSubscription8AMSUIBagC3bagSo14AMSBagProtocol_pyFZ_0()];
  swift_unknownObjectRelease();
  v17 = v16;
  [v17 setAnonymousMetrics_];
  v18 = *(v5 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_dynamicViewControllerDelegate);
  [v17 setDelegate_];
  v19 = v17;
  [v19 setModalPresentationStyle_];
  sub_1D7770378(a3, v15);
  v20 = type metadata accessor for PurchaseContext();
  v21 = *(*(v20 - 8) + 56);
  v21(v15, 0, 1, v20);
  v22 = OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_purchaseContext;
  swift_beginAccess();
  v51 = v18;
  sub_1D7781D38(v15, v18 + v22);
  swift_endAccess();
  v24 = *(v5 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder + 24);
  v23 = *(v5 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder), v24);
  v55[0] = v48;
  sub_1D7770378(a3, v15);
  v21(v15, 0, 1, v20);
  v25 = sub_1D78B3294();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  v26 = (*(v23 + 24))(v55, v15, v12, v24, v23);
  sub_1D7823240(v12, &unk_1EE096460, v50);
  sub_1D7823240(v15, qword_1EE096030, v49);
  sub_1D778CA2C(v26);

  v27 = sub_1D78B5BB4();

  [v19 setMetricsOverlay_];

  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D774057C(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D78BCAB0;
  v29 = [v19 metricsOverlay];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1D78B5BC4();
  }

  else
  {
    v31 = 0;
  }

  sub_1D78232B0();
  *(v28 + 56) = v32;
  *(v28 + 64) = sub_1D7823314();
  if (!v31)
  {
    v31 = sub_1D77FF518(MEMORY[0x1E69E7CC0]);
  }

  *(v28 + 32) = v31;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v33 = [objc_opt_self() sharedAccount];
  v34 = [v33 activeiTunesAccount];

  [v19 setAccount_];
  v35 = type metadata accessor for DismissibleDynamicViewController();
  v36 = objc_allocWithZone(v35);
  *&v36[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v37 = &v36[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier];
  v38 = v53;
  *v37 = v52;
  *(v37 + 1) = v38;
  v54.receiver = v36;
  v54.super_class = v35;

  v39 = objc_msgSendSuper2(&v54, sel_initWithRootViewController_, v19);

  v40 = &v39[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate];
  swift_beginAccess();
  *(v40 + 1) = &off_1F5273ED8;
  swift_unknownObjectWeakAssign();
  v41 = v39;
  v42 = [v41 presentationController];
  if (v42)
  {
    v43 = v42;
    [v42 setDelegate_];
  }

  v44 = [v19 view];
  v45 = [objc_opt_self() systemPinkColor];
  [v44 setTintColor_];

  return v41;
}

{
  v6 = v5;
  v54 = a4;
  sub_1D774057C(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - v12;
  v14 = *a2;
  v15 = _s16NewsSubscription8AMSUIBagC3bagSo14AMSBagProtocol_pyFZ_0();
  v16 = objc_allocWithZone(MEMORY[0x1E698CCC8]);
  v17 = sub_1D78B3214();
  v18 = [v16 initWithBag:v15 URL:v17];
  swift_unknownObjectRelease();

  v19 = *(v6 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder + 24);
  v20 = *(v6 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_metricsBuilder), v19);
  if (v14 == 13)
  {
    v21 = (*(v20 + 16))(a1, v19, v20);
    sub_1D778CA2C(v21);

    v22 = sub_1D78B5BB4();

    [v18 setMetricsOverlay_];

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D774057C(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D78BCAB0;
    v24 = [v18 metricsOverlay];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1D78B5BC4();
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v53 = a5;
    v56[0] = v14;
    v27 = sub_1D78B3294();
    v28 = a3;
    v29 = *(v27 - 8);
    (*(v29 + 16))(v13, a1, v27);
    (*(v29 + 56))(v13, 0, 1, v27);
    a3 = v28;
    v30 = (*(v20 + 24))(v56, v28, v13, v19, v20);
    sub_1D7823240(v13, &unk_1EE096460, MEMORY[0x1E6968FB0]);
    sub_1D778CA2C(v30);

    v31 = sub_1D78B5BB4();

    [v18 setMetricsOverlay_];

    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D774057C(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D78BCAB0;
    v32 = [v18 metricsOverlay];
    if (v32)
    {
      v33 = v32;
      v26 = sub_1D78B5BC4();
    }

    else
    {
      v26 = 0;
    }

    a5 = v53;
  }

  sub_1D78232B0();
  *(v23 + 56) = v34;
  *(v23 + 64) = sub_1D7823314();
  if (!v26)
  {
    v26 = sub_1D77FF518(MEMORY[0x1E69E7CC0]);
  }

  *(v23 + 32) = v26;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v35 = sub_1D78B5C44();
  [v18 setMediaClientIdentifier_];

  [v18 setAnonymousMetrics_];
  v36 = *(v6 + OBJC_IVAR____TtC16NewsSubscription28DynamicViewControllerFactory_dynamicViewControllerDelegate);
  [v18 setDelegate_];
  v37 = v18;
  [v37 setModalPresentationStyle_];
  v38 = OBJC_IVAR____TtC16NewsSubscription29DynamicViewControllerDelegate_purchaseContext;
  swift_beginAccess();
  sub_1D782336C(a3, v36 + v38);
  swift_endAccess();
  v39 = [objc_opt_self() sharedAccount];
  v40 = [v39 activeiTunesAccount];

  [v37 setAccount_];
  v41 = type metadata accessor for DismissibleDynamicViewController();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v43 = &v42[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_identifier];
  *v43 = v54;
  *(v43 + 1) = a5;
  v55.receiver = v42;
  v55.super_class = v41;

  v44 = objc_msgSendSuper2(&v55, sel_initWithRootViewController_, v37);

  v45 = &v44[OBJC_IVAR____TtC16NewsSubscription32DismissibleDynamicViewController_dismissDelegate];
  swift_beginAccess();
  *(v45 + 1) = &off_1F5273ED8;
  swift_unknownObjectWeakAssign();
  v46 = v44;
  v47 = [v46 presentationController];
  if (v47)
  {
    v48 = v47;
    [v47 setDelegate_];
  }

  v49 = [v37 view];
  v50 = [objc_opt_self() systemPinkColor];
  [v49 setTintColor_];

  return v46;
}

id DynamicViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7823240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D774057C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D78232B0()
{
  if (!qword_1EC9CAB90)
  {
    v0 = sub_1D78B5BF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CAB90);
    }
  }
}

unint64_t sub_1D7823314()
{
  result = qword_1EC9CAB98;
  if (!qword_1EC9CAB98)
  {
    sub_1D78232B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAB98);
  }

  return result;
}

uint64_t sub_1D782336C(uint64_t a1, uint64_t a2)
{
  sub_1D774057C(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of DynamicViewControllerFactoryType.createViewController(for:placement:purchaseContext:dedupingID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 8))();
}

{
  return (*(a7 + 16))();
}

uint64_t sub_1D7823468()
{
  sub_1D776ABA8(v0 + 16);
  sub_1D776ABA8(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1D78234D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 49))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 48) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 48) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D782352C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1D78235CC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48) >> 6;
  if (!v3)
  {
    sub_1D78B6454();

    v4 = 0x796D2D6572616873;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    sub_1D78B6454();

    v4 = 0x2D796D2D65646968;
LABEL_5:
    v6 = v4;
    MEMORY[0x1DA702FF0](v1, v2);
    return v6;
  }

  sub_1D78B6454();
  MEMORY[0x1DA702FF0](0xD000000000000017, 0x80000001D78D9A10);
  sub_1D78B6504();
  return 0;
}

uint64_t sub_1D7823720()
{
  sub_1D78B6814();
  sub_1D78B5C14();
  return sub_1D78B6844();
}

uint64_t sub_1D7823794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7823A4C();

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D78237E0()
{
  sub_1D78B6814();
  sub_1D78B5C14();
  return sub_1D78B6844();
}

uint64_t sub_1D7823850(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  v6 = sub_1D78235CC();
  v8 = v7;
  if (v6 == sub_1D78235CC() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_1D78B6724();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  if (v3 >> 6 == 1)
  {
    v12 = v3;
  }

  else
  {
    v12 = v2;
  }

  if (v3 >> 6)
  {
    v13 = v12;
  }

  else
  {
    v13 = v3;
  }

  if (v5 >> 6 == 1)
  {
    v14 = v5;
  }

  else
  {
    v14 = v4;
  }

  if (v5 >> 6)
  {
    v15 = v14;
  }

  else
  {
    v15 = v5;
  }

  v11 = v13 ^ v15 ^ 1;
  return v11 & 1;
}

unint64_t sub_1D7823944()
{
  result = qword_1EE093658;
  if (!qword_1EE093658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093658);
  }

  return result;
}

unint64_t sub_1D782399C()
{
  result = qword_1EE093660;
  if (!qword_1EE093660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093660);
  }

  return result;
}

unint64_t sub_1D78239F4()
{
  result = qword_1EE093680;
  if (!qword_1EE093680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093680);
  }

  return result;
}

unint64_t sub_1D7823A4C()
{
  result = qword_1EE093678;
  if (!qword_1EE093678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093678);
  }

  return result;
}

unint64_t sub_1D7823AA4()
{
  result = qword_1EE093670;
  if (!qword_1EE093670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE093670);
  }

  return result;
}

uint64_t sub_1D7823AF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D78B50C4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D7823BB0@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_1D7823C30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1D7823C78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D7823CE8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = [objc_opt_self() sharedAccount];
  v6 = [v5 iTunesAccountName];

  if (v6)
  {
    v7 = sub_1D78B5C74();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [*(v2 + 16) configuration];
  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = v10;
  if (([v10 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v12 = [v11 channelUpsellConfigsByChannelID];
  swift_unknownObjectRelease();
  sub_1D77895D8();
  v13 = sub_1D78B5BC4();

  v14 = [a1 identifier];
  v15 = sub_1D78B5C74();
  v17 = v16;

  if (!*(v13 + 16))
  {

    goto LABEL_20;
  }

  v18 = sub_1D777BBB4(v15, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {

    goto LABEL_20;
  }

  v21 = *(*(v13 + 56) + 8 * v18);

  v22 = [v21 emailSignupConfiguration];

  if (!v22)
  {
LABEL_20:
    sub_1D7824410(a1, v7, v9, v65);
LABEL_21:

    v39 = v65[3];
    *(a2 + 32) = v65[2];
    *(a2 + 48) = v39;
    v40 = v65[5];
    *(a2 + 64) = v65[4];
    *(a2 + 80) = v40;
    v41 = v65[1];
    *a2 = v65[0];
    *(a2 + 16) = v41;
LABEL_22:
    *(a2 + 96) = 0;
    return;
  }

  v23 = [v22 alertTitle];
  v62 = sub_1D78B5C74();
  v59 = v24;

  v25 = &selRef_alertEmailUnavailableMessage;
  if (v9)
  {
    v26 = sub_1D78B5C44();
    v27 = [v26 ea_isLegalEmailAddress];

    if (v27)
    {
      v25 = &selRef_alertEmailAvailableMessage;
    }
  }

  v28 = [v22 *v25];
  v56 = sub_1D78B5C74();
  v30 = v29;

  v31 = [v22 alertAcceptActionTitle];
  v58 = sub_1D78B5C74();
  v61 = v32;

  v33 = [v22 alertDeclineActionTitle];
  v57 = sub_1D78B5C74();
  v60 = v34;

  v35 = [v22 landingPageArticleID];
  v55 = sub_1D78B5C74();
  v37 = v36;

  v38 = [v22 emailSignupStyle];
  if (v38 == 2)
  {

    if (v9)
    {
      sub_1D77BE06C();
      v64 = sub_1D78B62D4();
      v49 = v48;

      *&v65[0] = v56;
      *(&v65[0] + 1) = v30;
      v50 = sub_1D78B62D4();
      v52 = v51;

      v30 = v52;
      v53 = v64;
    }

    else
    {

      v49 = v59;
      v53 = v62;
      v50 = v56;
    }

    LOBYTE(v65[0]) = 0;
    *a2 = v53;
    *(a2 + 8) = v49;
    *(a2 + 16) = v50;
    *(a2 + 24) = v30;
    *(a2 + 32) = v7;
    *(a2 + 40) = v9;
    *(a2 + 48) = v58;
    *(a2 + 56) = v61;
    *(a2 + 64) = v57;
    *(a2 + 72) = v60;
    goto LABEL_22;
  }

  if (v38 != 1)
  {
    if (v38)
    {

      if (qword_1EE08FB98 == -1)
      {
LABEL_28:
        sub_1D78B60A4();
        sub_1D78B42C4();
        sub_1D7824410(a1, v7, v9, v65);

        goto LABEL_21;
      }
    }

    else
    {

      if (qword_1EE08FB98 == -1)
      {
        goto LABEL_28;
      }
    }

    swift_once();
    goto LABEL_28;
  }

  if (v9)
  {
    sub_1D77BE06C();
    v63 = sub_1D78B62D4();
    v54 = v42;

    *&v65[0] = v56;
    *(&v65[0] + 1) = v30;
    v43 = sub_1D78B62D4();
    v45 = v44;

    v46 = v54;
    v30 = v45;
    v47 = v63;
  }

  else
  {

    v46 = v59;
    v47 = v62;
    v43 = v56;
  }

  LOBYTE(v65[0]) = 1;
  *a2 = v55;
  *(a2 + 8) = v37;
  *(a2 + 16) = v47;
  *(a2 + 24) = v46;
  *(a2 + 32) = v43;
  *(a2 + 40) = v30;
  *(a2 + 48) = v7;
  *(a2 + 56) = v9;
  *(a2 + 64) = v58;
  *(a2 + 72) = v61;
  *(a2 + 80) = v57;
  *(a2 + 88) = v60;
  *(a2 + 96) = 1;
}

uint64_t sub_1D7824410@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v11 = sub_1D78B3134();
  v29 = v12;

  v32 = a2;
  v13 = sub_1D7824D14(a2, a3, a1);
  v15 = v14;
  v16 = [v9 bundleForClass_];
  v17 = sub_1D78B3134();
  v30 = v18;
  v31 = v17;

  v19 = [v9 bundleForClass_];
  v20 = sub_1D78B3134();
  v22 = v21;

  if (a3)
  {
    sub_1D77BE06C();
    v23 = sub_1D78B62D4();
    v25 = v24;

    *a4 = v23;
    a4[1] = v25;
    v13 = sub_1D78B62D4();
    v27 = v26;

    v15 = v27;
  }

  else
  {
    *a4 = v11;
    a4[1] = v29;
  }

  a4[2] = v13;
  a4[3] = v15;
  a4[4] = v32;
  a4[5] = a3;
  a4[6] = v31;
  a4[7] = v30;
  a4[8] = v20;
  a4[9] = v22;
}

void sub_1D7824708(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedAccount];
  v5 = [v4 iTunesAccountName];

  if (v5)
  {
    v6 = sub_1D78B5C74();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v31 = sub_1D7824A60(v6, v8, a1);
  v32 = v9;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  v13 = sub_1D78B3134();
  v15 = v14;

  v16 = v6;
  v17 = [v11 bundleForClass_];
  v18 = sub_1D78B3134();
  v29 = v19;
  v30 = v18;

  v20 = [v11 bundleForClass_];
  v21 = sub_1D78B3134();
  v23 = v22;

  if (v8)
  {
    sub_1D77BE06C();
    v13 = sub_1D78B62D4();
    v25 = v24;

    v26 = sub_1D78B62D4();
    v28 = v27;

    v15 = v25;
  }

  else
  {
    v26 = v31;
    v28 = v32;
  }

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v26;
  *(a2 + 24) = v28;
  *(a2 + 32) = v16;
  *(a2 + 40) = v8;
  *(a2 + 48) = v30;
  *(a2 + 56) = v29;
  *(a2 + 64) = v21;
  *(a2 + 72) = v23;
  *(a2 + 96) = 0;
}

uint64_t sub_1D7824A60(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  v6 = sub_1D78B5C44();
  v7 = [v6 ea_isLegalEmailAddress];

  if (!v7)
  {

LABEL_5:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D78BCAB0;
    v20 = [a3 name];
    v21 = sub_1D78B5C74();
    v23 = v22;

    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1D775ABD4();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    goto LABEL_6;
  }

  type metadata accessor for Localized();
  v8 = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D78BCB50;
  v11 = [a3 name];
  v12 = sub_1D78B5C74();
  v14 = v13;

  v15 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D775ABD4();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  *(v10 + 96) = v15;
  *(v10 + 104) = v16;
  *(v10 + 64) = v16;
  *(v10 + 72) = a1;
  *(v10 + 80) = a2;
LABEL_6:
  v24 = sub_1D78B5C94();

  return v24;
}

uint64_t sub_1D7824D14(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = objc_opt_self();

    v8 = [v7 bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D78BCB50;
    v10 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1D775ABD4();
    *(v9 + 64) = v11;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    v12 = [a3 name];
    v13 = sub_1D78B5C74();
    v15 = v14;

    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 72) = v13;
    *(v9 + 80) = v15;
  }

  else
  {
    type metadata accessor for Localized();
    v16 = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D774FE1C();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D78BCAB0;
    v19 = [a3 name];
    v20 = sub_1D78B5C74();
    v22 = v21;

    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D775ABD4();
    *(v18 + 32) = v20;
    *(v18 + 40) = v22;
  }

  v23 = sub_1D78B5C94();

  return v23;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D7824FE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 97))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 96);
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

uint64_t sub_1D782502C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

void __swiftcall SubscriptionOffersModule.createViewController()(UIViewController *__return_ptr retstr)
{
  sub_1D78B37C4();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SubscriptionOffersViewController();

  v2 = sub_1D78B39C4();

  if (v2)
  {
    [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D782519C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  return sub_1D78B38C4();
}

uint64_t SubscriptionOffersModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t SubscriptionOffersModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_1D78252D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_contentView;
  *&v5[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_headerImageView;
  v13 = sub_1D78B5204();
  *&v5[v12] = [objc_allocWithZone(v13) initWithFrame_];
  v14 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_badgeImageView;
  *&v5[v14] = [objc_allocWithZone(v13) initWithFrame_];
  v15 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_titleTextView;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v16 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_descriptionTextView;
  type metadata accessor for UnselectableLinkEnabledTextView();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v17 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_subscribeButton;
  v18 = objc_allocWithZone(sub_1D78B4864());
  *&v5[v17] = sub_1D78B4854();
  v19 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_offersButton;
  v20 = sub_1D78B4524();
  *&v5[v19] = [objc_allocWithZone(v20) initWithFrame_];
  v21 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton;
  *&v5[v21] = [objc_allocWithZone(v20) initWithFrame_];
  v25.receiver = v5;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  [v22 setClipsToBounds_];
  v23 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_contentView;
  [v22 addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];
  [*&v22[v23] addSubview_];

  return v22;
}

void sub_1D7825614()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton);
}

void sub_1D7825784()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_contentView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v3 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_headerImageView;
  v4 = sub_1D78B5204();
  *(v1 + v3) = [objc_allocWithZone(v4) initWithFrame_];
  v5 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_badgeImageView;
  *(v1 + v5) = [objc_allocWithZone(v4) initWithFrame_];
  v6 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_titleTextView;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  v7 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_descriptionTextView;
  type metadata accessor for UnselectableLinkEnabledTextView();
  *(v1 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v8 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_subscribeButton;
  v9 = objc_allocWithZone(sub_1D78B4864());
  *(v1 + v8) = sub_1D78B4854();
  v10 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_offersButton;
  v11 = sub_1D78B4524();
  *(v1 + v10) = [objc_allocWithZone(v11) initWithFrame_];
  v12 = OBJC_IVAR____TtC16NewsSubscription21BundleSoftPaywallView_webAuthButton;
  *(v1 + v12) = [objc_allocWithZone(v11) initWithFrame_];
  sub_1D78B6524();
  __break(1u);
}

uint64_t sub_1D7825988(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7465656853736D61;
    }

    else
    {
      v4 = 0x50676E69646E616CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB00000000656761;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6573616863727570;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xED00007465656853;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x7465656853736D61;
  if (a2 != 2)
  {
    v8 = 0x50676E69646E616CLL;
    v7 = 0xEB00000000656761;
  }

  if (a2)
  {
    v2 = 0x6573616863727570;
    v6 = 0xED00007465656853;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D7825AF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000657079546ELL;
  v3 = 0x6F697463656C6553;
  v4 = a1;
  v5 = 0x616D4579786F7270;
  v6 = 0xEA00000000006C69;
  v7 = 0x6E69616D6F64;
  if (a1 != 4)
  {
    v7 = 0x64496D616574;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = 0xE600000000000000;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6E776F6E6B6E75;
  if (a1 != 1)
  {
    v9 = 0x69616D456C616572;
    v8 = 0xE90000000000006CLL;
  }

  if (!a1)
  {
    v9 = 0x6F697463656C6553;
    v8 = 0xED0000657079546ELL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEA00000000006C69;
      if (v10 != 0x616D4579786F7270)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE600000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x6E69616D6F64)
        {
          goto LABEL_31;
        }
      }

      else if (v10 != 0x64496D616574)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE700000000000000;
        if (v10 != 0x6E776F6E6B6E75)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x69616D456C616572;
      v2 = 0xE90000000000006CLL;
    }

    if (v10 != v3)
    {
LABEL_31:
      v12 = sub_1D78B6724();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v11 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1D7825CD0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6572616873;
    }

    else
    {
      v4 = 1701079400;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x616853746F4E6F64;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xEA00000000006572;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x6572616873;
  if (a2 != 2)
  {
    v8 = 1701079400;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x616853746F4E6F64;
    v6 = 0xEA00000000006572;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D78B6724();
  }

  return v11 & 1;
}

uint64_t sub_1D7825E04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6B6E694C70656564;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001D78CE370;
    v3 = 0xD000000000000016;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000018;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001D78CE390;
    }

    else
    {
      v4 = 0x80000001D78CE3B0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6B6E694C70656564;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0x80000001D78CE3B0;
    v6 = 0xD000000000000018;
    if (a2 == 3)
    {
      v6 = 0xD000000000000015;
      v5 = 0x80000001D78CE390;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001D78CE370;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v4 != v8)
  {
LABEL_36:
    v10 = sub_1D78B6724();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_1D7825F7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006472;
  v3 = 0x6F53656C646E7562;
  v4 = a1;
  if (a1 > 1u)
  {
    v5 = 0x6574726163616C61;
    if (v4 == 2)
    {
      v6 = 0xEC00000074666F53;
    }

    else
    {
      v6 = 0xEC00000064726148;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6148656C646E7562;
    }

    else
    {
      v5 = 0x6F53656C646E7562;
    }

    if (v4)
    {
      v6 = 0xEA00000000006472;
    }

    else
    {
      v6 = 0xEA00000000007466;
    }
  }

  v7 = 0xEC00000074666F53;
  if (a2 != 2)
  {
    v7 = 0xEC00000064726148;
  }

  if (a2)
  {
    v3 = 0x6148656C646E7562;
  }

  else
  {
    v2 = 0xEA00000000007466;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0x6574726163616C61;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D78B6724();
  }

  return v10 & 1;
}

uint64_t sub_1D78260E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0xE500000000000000;
    v12 = 0x6575737369;
    if (a1 != 2)
    {
      v12 = 1684366694;
      v11 = 0xE400000000000000;
    }

    v13 = 0x32656C6369747261;
    if (a1)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v13 = 0x656C6369747261;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6C61727265666572;
    v5 = 0x656C7A7A7570;
    if (a1 != 7)
    {
      v5 = 0x657069636572;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = 0xE600000000000000;
    }

    v6 = 0xE500000000000000;
    v7 = 0x70756F7267;
    if (a1 != 4)
    {
      v7 = 25697;
      v6 = 0xE200000000000000;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x6575737369)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
        if (v8 != 1684366694)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE800000000000000;
      if (v8 != 0x32656C6369747261)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x656C6369747261)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE500000000000000;
      if (v8 != 0x70756F7267)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE200000000000000;
      if (v8 != 25697)
      {
LABEL_52:
        v15 = sub_1D78B6724();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE800000000000000;
    if (v8 != 0x6C61727265666572)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE600000000000000;
    if (a2 == 7)
    {
      if (v8 != 0x656C7A7A7570)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x657069636572)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_1D7826354(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE400000000000000;
    v11 = 0x80000001D78CDEE0;
    v12 = 0xD000000000000014;
    if (a1 == 2)
    {
      v12 = 0xD000000000000015;
    }

    else
    {
      v11 = 0x80000001D78CDF00;
    }

    v13 = 0xD000000000000017;
    if (a1)
    {
      v10 = 0x80000001D78CDEC0;
    }

    else
    {
      v13 = 1702060386;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0x80000001D78CDF60;
    v4 = 0xD000000000000018;
    v5 = 0x80000001D78CDF80;
    if (a1 != 7)
    {
      v5 = 0x80000001D78CDFA0;
    }

    if (a1 != 6)
    {
      v4 = 0xD000000000000016;
      v3 = v5;
    }

    v6 = 0x80000001D78CDF20;
    v7 = 0xD000000000000012;
    if (a1 == 4)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x80000001D78CDF40;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = v6;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = 0x80000001D78CDF00;
        if (v8 != 0xD000000000000014)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      v16 = "issueAssociatedValues";
      goto LABEL_40;
    }

    if (a2)
    {
      v15 = 0x80000001D78CDEC0;
      if (v8 != 0xD000000000000017)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v8 != 1702060386)
      {
        goto LABEL_54;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0x80000001D78CDF60;
        if (v8 != 0xD000000000000018)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (a2 == 7)
        {
          v14 = "puzzleAssociatedValues";
        }

        else
        {
          v14 = "recipeAssociatedValues";
        }

        v15 = (v14 - 32) | 0x8000000000000000;
        if (v8 != 0xD000000000000016)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_52;
    }

    if (a2 == 4)
    {
      v16 = "groupAssociatedValues";
LABEL_40:
      v15 = (v16 - 32) | 0x8000000000000000;
      if (v8 != 0xD000000000000015)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v15 = 0x80000001D78CDF40;
    if (v8 != 0xD000000000000012)
    {
LABEL_54:
      v17 = sub_1D78B6724();
      goto LABEL_55;
    }
  }

LABEL_52:
  if (v9 != v15)
  {
    goto LABEL_54;
  }

  v17 = 1;
LABEL_55:

  return v17 & 1;
}

uint64_t sub_1D78265F0()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D78266C8()
{
  sub_1D78B5D14();
}

uint64_t sub_1D782678C()
{
  sub_1D78B6814();
  sub_1D78B5D14();

  return sub_1D78B6844();
}

uint64_t sub_1D7826860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D782697C();
  *a1 = result;
  return result;
}

void sub_1D7826890(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007466;
  v3 = 0x6F53656C646E7562;
  v4 = 0xEC00000074666F53;
  if (*v1 != 2)
  {
    v4 = 0xEC00000064726148;
  }

  if (*v1)
  {
    v3 = 0x6148656C646E7562;
    v2 = 0xEA00000000006472;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6574726163616C61;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  *a1 = v5;
  a1[1] = v6;
}

unint64_t sub_1D7826928()
{
  result = qword_1EC9CABE8;
  if (!qword_1EC9CABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CABE8);
  }

  return result;
}

uint64_t sub_1D782697C()
{
  v0 = sub_1D78B6594();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t WebAccessAuthenticationErrors.hashValue.getter()
{
  v1 = *v0;
  sub_1D78B6814();
  MEMORY[0x1DA703AC0](v1);
  return sub_1D78B6844();
}

unint64_t sub_1D7826A58()
{
  result = qword_1EC9CABF0;
  if (!qword_1EC9CABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CABF0);
  }

  return result;
}

uint64_t PaywallModule.createViewController(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = sub_1D7826C6C();
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v6 = type metadata accessor for FlexiblePaywallFailsafeViewProvider();
  *(swift_allocObject() + 16) = v4;
  v7 = sub_1D78B39C4();

  if (v7)
  {
    v13[3] = v6;
    v13[4] = &off_1F526D078;
    v13[0] = v7;
    __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
    type metadata accessor for PaywallViewController();
    sub_1D774584C(v13, v12);
    sub_1D774584C(a1, v11);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    sub_1D7741E34(v12, v9 + 24);
    sub_1D7741E34(v11, v9 + 64);

    v10 = sub_1D78B39C4();

    if (v10)
    {
      __swift_destroy_boxed_opaque_existential_1(v13);

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7826CB4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  sub_1D78B38C4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE8);
  sub_1D78B38D4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090F10);
  return sub_1D78B38D4();
}

uint64_t PaywallModule.createPluggableViewController(with:paywallTrackerObserver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 16);
  v8 = sub_1D7826C6C();
  __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  v9 = type metadata accessor for FlexiblePaywallFailsafeViewProvider();
  *(swift_allocObject() + 16) = v7;
  v10 = sub_1D78B39C4();

  if (v10)
  {
    v17[3] = v9;
    v17[4] = &off_1F526D078;
    v17[0] = v10;
    __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
    type metadata accessor for PaywallViewController();
    sub_1D774584C(v17, v16);
    sub_1D774584C(a1, v15);
    v12 = swift_allocObject();
    v12[2] = v8;
    sub_1D7741E34(v16, (v12 + 3));
    sub_1D7741E34(v15, (v12 + 8));
    v12[13] = a2;
    v12[14] = a3;
    swift_unknownObjectRetain();

    v13 = sub_1D78B39C4();

    if (v13)
    {
      __swift_destroy_boxed_opaque_existential_1(v17);

      sub_1D7827248();
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7826F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78B37D4();
  sub_1D78B38C4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE092CE8);
  sub_1D78B38D4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D773CA14(0, &qword_1EE090F10);
  result = sub_1D78B38D4();
  if (a5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D773CA14(0, qword_1EE08EB38);
    return sub_1D78B38D4();
  }

  return result;
}

uint64_t PaywallModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  return v0;
}

uint64_t PaywallModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

unint64_t sub_1D7827248()
{
  result = qword_1EE08ED70;
  if (!qword_1EE08ED70)
  {
    type metadata accessor for PaywallViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE08ED70);
  }

  return result;
}

uint64_t type metadata accessor for PaywallResourceConfigData()
{
  result = qword_1EE092710;
  if (!qword_1EE092710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D782737C()
{
  result = sub_1D78B57B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D78273E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_1D78B57B4();
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7827928(0, &qword_1EE08FAD0, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78278D4();
  sub_1D78B6874();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_1D782798C(&qword_1EE090288);
    sub_1D78B6614();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7827648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D78B6724();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D78276D0(uint64_t a1)
{
  v2 = sub_1D78278D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D782770C(uint64_t a1)
{
  v2 = sub_1D78278D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7827760(void *a1)
{
  sub_1D7827928(0, &qword_1EC9CABF8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D78278D4();
  sub_1D78B6884();
  sub_1D78B57B4();
  sub_1D782798C(&qword_1EC9CAC00);
  sub_1D78B66B4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D78278D4()
{
  result = qword_1EE092760;
  if (!qword_1EE092760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092760);
  }

  return result;
}

void sub_1D7827928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D78278D4();
    v7 = a3(a1, &type metadata for PaywallResourceConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D782798C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D78B57B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D78279E4()
{
  result = qword_1EC9CAC08;
  if (!qword_1EC9CAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAC08);
  }

  return result;
}

unint64_t sub_1D7827A3C()
{
  result = qword_1EE092750;
  if (!qword_1EE092750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092750);
  }

  return result;
}

unint64_t sub_1D7827A94()
{
  result = qword_1EE092758;
  if (!qword_1EE092758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092758);
  }

  return result;
}

unint64_t sub_1D7827AE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1D782DEF4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1D777BC2C(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1D782EC94();
        v11 = v13;
      }

      result = sub_1D782D644(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1D7827BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D778D0A0(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_1D782E03C(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CA0];
    v9 = MEMORY[0x1E69E6720];
    sub_1D78301A8(a1, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D778CE54);
    sub_1D782AFE8(a2, a3, v11);

    return sub_1D78301A8(v11, &qword_1EE08F9C0, v8 + 8, v9, sub_1D778CE54);
  }

  return result;
}

uint64_t sub_1D7827CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1D782E18C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_1D777BBB4(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1D782EF90();
        v16 = v18;
      }

      result = sub_1D782D988(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1D7827DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7749020(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for PurchaseContext();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    v14 = MEMORY[0x1E69E6720];
    sub_1D78301A8(a1, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720], sub_1D7749020);
    sub_1D782B1CC(a2, a3, type metadata accessor for PurchaseContext, sub_1D777044C, type metadata accessor for PurchaseContext, sub_1D782F10C, v9);

    return sub_1D78301A8(v9, qword_1EE096030, type metadata accessor for PurchaseContext, v14, sub_1D7749020);
  }

  else
  {
    sub_1D777044C(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1D782E314(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1D7828040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7749020(0, qword_1EE094360, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for PurchaseAdContext();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    v14 = MEMORY[0x1E69E6720];
    sub_1D78301A8(a1, qword_1EE094360, type metadata accessor for PurchaseAdContext, MEMORY[0x1E69E6720], sub_1D7749020);
    sub_1D782B1CC(a2, a3, type metadata accessor for PurchaseAdContext, sub_1D77F63C8, type metadata accessor for PurchaseAdContext, sub_1D782F374, v9);

    return sub_1D78301A8(v9, qword_1EE094360, type metadata accessor for PurchaseAdContext, v14, sub_1D7749020);
  }

  else
  {
    sub_1D77F63C8(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1D782E4A8(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1D78282C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7749020(0, &qword_1EE094430, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for PaywallShownEntry();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    v14 = MEMORY[0x1E69E6720];
    sub_1D78301A8(a1, &qword_1EE094430, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6720], sub_1D7749020);
    sub_1D782B1CC(a2, a3, type metadata accessor for PaywallShownEntry, sub_1D77B6AEC, type metadata accessor for PaywallShownEntry, sub_1D782F770, v9);

    return sub_1D78301A8(v9, &qword_1EE094430, type metadata accessor for PaywallShownEntry, v14, sub_1D7749020);
  }

  else
  {
    sub_1D77B6AEC(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1D782E7B8(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1D7828540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7749020(0, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1D78B57A4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    v14 = MEMORY[0x1E69B6118];
    v15 = MEMORY[0x1E69E6720];
    sub_1D78301A8(a1, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720], sub_1D7749020);
    sub_1D782B350(a2, a3, v9);

    return sub_1D78301A8(v9, &qword_1EE090290, v14, v15, sub_1D7749020);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D782E94C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_1D7828788@<X0>(uint64_t a1@<X8>)
{
  sub_1D78302F0(0, &qword_1EE08FF60, sub_1D77BD2D4);
  v4 = v3;
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = (&v39 - v5);
  v6 = type metadata accessor for PurchaseContext();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7749020(0, &qword_1EE090170, sub_1D77BD2D4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v39 - v9);
  sub_1D77BD2D4(0);
  v12 = v11;
  v13 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v17 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v47 = v4;
  v48 = v20;
  v40 = v16;
  if (!v21)
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        (*(v13 + 56))(v10, 1, 1, v12);
        v32 = 0;
        goto LABEL_12;
      }

      v21 = *(v17 + 8 * v22);
      ++v19;
      if (v21)
      {
        v43 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v43 = a1;
  v22 = v19;
LABEL_11:
  v42 = (v21 - 1) & v21;
  v26 = __clz(__rbit64(v21)) | (v22 << 6);
  v27 = (*(v18 + 48) + 16 * v26);
  v28 = *v27;
  v29 = v27[1];
  v30 = v45;
  sub_1D7830140(*(v18 + 56) + *(v44 + 72) * v26, v45, type metadata accessor for PurchaseContext);
  v31 = *(v12 + 48);
  *v10 = v28;
  v10[1] = v29;
  sub_1D777044C(v30, v10 + v31);
  (*(v13 + 56))(v10, 0, 1, v12);

  v32 = v42;
  a1 = v43;
  v25 = v22;
LABEL_12:
  *v1 = v18;
  v1[1] = v17;
  v1[2] = v48;
  v1[3] = v25;
  v1[4] = v32;
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1D78301A8(v10, &qword_1EE090170, sub_1D77BD2D4, MEMORY[0x1E69E6720], sub_1D7749020);
    return (*(v46 + 56))(a1, 1, 1, v47);
  }

  v33 = v10;
  v34 = v40;
  sub_1D7830208(v33, v40, sub_1D77BD2D4);
  v35 = v47;
  v36 = *(v47 + 48);
  v37 = v1[5];
  v38 = v41;
  *v41 = v37;
  result = sub_1D7830208(v34, v38 + v36, sub_1D77BD2D4);
  if (__OFADD__(v37, 1))
  {
    goto LABEL_19;
  }

  v1[5] = v37 + 1;
  sub_1D7830270(v38, a1, &qword_1EE08FF60, sub_1D77BD2D4);
  return (*(v46 + 56))(a1, 0, 1, v35);
}

uint64_t sub_1D7828C30@<X0>(uint64_t a1@<X8>)
{
  sub_1D78302F0(0, &qword_1EE08FF30, sub_1D77F6328);
  v4 = v3;
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = (&v39 - v5);
  v6 = type metadata accessor for PurchaseAdContext();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7749020(0, &qword_1EE090148, sub_1D77F6328, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v39 - v9);
  sub_1D77F6328(0);
  v12 = v11;
  v13 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v17 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v47 = v4;
  v48 = v20;
  v40 = v16;
  if (!v21)
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        (*(v13 + 56))(v10, 1, 1, v12);
        v32 = 0;
        goto LABEL_12;
      }

      v21 = *(v17 + 8 * v22);
      ++v19;
      if (v21)
      {
        v43 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v43 = a1;
  v22 = v19;
LABEL_11:
  v42 = (v21 - 1) & v21;
  v26 = __clz(__rbit64(v21)) | (v22 << 6);
  v27 = (*(v18 + 48) + 16 * v26);
  v28 = *v27;
  v29 = v27[1];
  v30 = v45;
  sub_1D7830140(*(v18 + 56) + *(v44 + 72) * v26, v45, type metadata accessor for PurchaseAdContext);
  v31 = *(v12 + 48);
  *v10 = v28;
  v10[1] = v29;
  sub_1D77F63C8(v30, v10 + v31);
  (*(v13 + 56))(v10, 0, 1, v12);

  v32 = v42;
  a1 = v43;
  v25 = v22;
LABEL_12:
  *v1 = v18;
  v1[1] = v17;
  v1[2] = v48;
  v1[3] = v25;
  v1[4] = v32;
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1D78301A8(v10, &qword_1EE090148, sub_1D77F6328, MEMORY[0x1E69E6720], sub_1D7749020);
    return (*(v46 + 56))(a1, 1, 1, v47);
  }

  v33 = v10;
  v34 = v40;
  sub_1D7830208(v33, v40, sub_1D77F6328);
  v35 = v47;
  v36 = *(v47 + 48);
  v37 = v1[5];
  v38 = v41;
  *v41 = v37;
  result = sub_1D7830208(v34, v38 + v36, sub_1D77F6328);
  if (__OFADD__(v37, 1))
  {
    goto LABEL_19;
  }

  v1[5] = v37 + 1;
  sub_1D7830270(v38, a1, &qword_1EE08FF30, sub_1D77F6328);
  return (*(v46 + 56))(a1, 0, 1, v35);
}

uint64_t sub_1D78290D8@<X0>(uint64_t a1@<X8>)
{
  sub_1D783000C(0);
  v4 = v3;
  v47 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PaywallShownEntry();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7749020(0, &qword_1EE090158, sub_1D783003C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v40 - v9);
  sub_1D783003C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v17 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v48 = a1;
  v49 = v20;
  v41 = v16;
  if (!v21)
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        (*(v13 + 56))(v10, 1, 1, v12);
        v32 = 0;
        goto LABEL_12;
      }

      v21 = *(v17 + 8 * v22);
      ++v19;
      if (v21)
      {
        v44 = v4;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v44 = v4;
  v22 = v19;
LABEL_11:
  v43 = (v21 - 1) & v21;
  v26 = __clz(__rbit64(v21)) | (v22 << 6);
  v27 = (*(v18 + 48) + 16 * v26);
  v28 = *v27;
  v29 = v27[1];
  v30 = v46;
  sub_1D7830140(*(v18 + 56) + *(v45 + 72) * v26, v46, type metadata accessor for PaywallShownEntry);
  v31 = *(v12 + 48);
  *v10 = v28;
  v10[1] = v29;
  sub_1D77B6AEC(v30, v10 + v31);
  (*(v13 + 56))(v10, 0, 1, v12);

  v32 = v43;
  v4 = v44;
  v25 = v22;
LABEL_12:
  *v1 = v18;
  v1[1] = v17;
  v1[2] = v49;
  v1[3] = v25;
  v1[4] = v32;
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1D78301A8(v10, &qword_1EE090158, sub_1D783003C, MEMORY[0x1E69E6720], sub_1D7749020);
    return (*(v47 + 56))(v48, 1, 1, v4);
  }

  v33 = v41;
  sub_1D7830208(v10, v41, sub_1D783003C);
  v34 = *(v4 + 48);
  v35 = v1[5];
  v36 = v42;
  *v42 = v35;
  result = sub_1D7830208(v33, v36 + v34, sub_1D783003C);
  v37 = __OFADD__(v35, 1);
  v38 = v35 + 1;
  v39 = v48;
  if (v37)
  {
    goto LABEL_19;
  }

  v1[5] = v38;
  sub_1D7830208(v36, v39, sub_1D783000C);
  return (*(v47 + 56))(v39, 0, 1, v4);
}

uint64_t sub_1D7829548@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_1D78B3394();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78306DC(0, &qword_1EE08E510, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PaywallShownEntry();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7830688();
  sub_1D78B6874();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_1D7749114(&qword_1EE095660, MEMORY[0x1E6969530]);
    sub_1D78B6614();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_1D77B6AEC(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D7829804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D78B6724();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D782988C(uint64_t a1)
{
  v2 = sub_1D7830688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D78298C8(uint64_t a1)
{
  v2 = sub_1D7830688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D782991C(void *a1)
{
  sub_1D78306DC(0, &qword_1EE08E4E8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7830688();
  sub_1D78B6884();
  sub_1D78B3394();
  sub_1D7749114(&unk_1EE08F470, MEMORY[0x1E6969530]);
  sub_1D78B66B4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D7829AC0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D78B3F24();
  sub_1D774DCF0(0);
  swift_allocObject();
  result = sub_1D78B4394();
  *a1 = result;
  return result;
}

void sub_1D7829B50()
{
  sub_1D7749020(0, &qword_1EE0904D8, sub_1D782FFEC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D782FFEC(0);
    v4 = v3;
    v5 = *(v3 - 8);
    if ((*(v5 + 48))(v2, 1, v3) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D78B4384();
      (*(v5 + 8))(v2, v4);
      v6 = sub_1D78B4014();
      sub_1D778CE54(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D78B4084();

      v7 = sub_1D78B4014();
      sub_1D78300CC(0, &qword_1EE0901B0, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E5E28]);
      type metadata accessor for PaywallShownEntriesManager();
      sub_1D78B40A4();

      v8 = sub_1D78B4014();
      sub_1D78B40B4();

      v9 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

uint64_t sub_1D7829E48()
{
  sub_1D7749020(0, &qword_1EE0904D8, sub_1D782FFEC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  sub_1D78B3F24();
  sub_1D78B43A4();

  sub_1D782FFEC(0);
  v4 = v3;
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_1D78B4354();
    (*(v5 + 8))(v2, v4);
    return v7;
  }

  return result;
}

uint64_t sub_1D7829FB8(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallShownEntry();
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D783000C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v71 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v62 - v14);
  sub_1D7749020(0, &unk_1EE08FF38, sub_1D783000C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (&v62 - v17);
  v19 = *a1;

  sub_1D78B3854();

  v20 = -1 << *(v19 + 32);
  v21 = *(v19 + 64);
  v22 = ~v20;
  v23 = -v20;
  v72 = v19;
  v73 = v19 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v74 = v22;
  v75 = 0;
  v76 = v24 & v21;
  v77 = 0;

  sub_1D78290D8(v18);
  v67 = *(v9 + 48);
  v68 = v9 + 48;
  if (v67(v18, 1, v8) == 1)
  {
LABEL_5:
    sub_1D779D528();

    sub_1D78B3864();
  }

  sub_1D783003C(0);
  v27 = v26;
  v65 = v15;
  v66 = v8;
  v63 = v26;
  v64 = v18;
  while (1)
  {
    v30 = *(v8 + 48);
    v31 = v18 + v30;
    v32 = *(v18 + v30);
    v33 = *(v18 + v30 + 8);
    v34 = *(v27 + 48);
    v35 = (v15 + v30);
    *v15 = *v18;
    *v35 = v32;
    v35[1] = v33;
    sub_1D77B6AEC(&v31[v34], v35 + v34);
    v36 = v70;
    sub_1D7830140(v15, v70, sub_1D783000C);
    v37 = (v36 + *(v8 + 48));
    v38 = v27;
    v40 = *v37;
    v39 = v37[1];
    v41 = v15;
    v42 = v71;
    sub_1D7830140(v41, v71, sub_1D783000C);
    v43 = v42 + *(v8 + 48);

    v44 = *(v38 + 48);
    swift_beginAccess();
    v45 = a2;
    v46 = v6;
    sub_1D77B6AEC(v43 + v44, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = *(v45 + 24);
    v48 = v78;
    v49 = v45;
    *(v45 + 24) = 0x8000000000000000;
    v51 = sub_1D777BBB4(v40, v39);
    v52 = v48[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      break;
    }

    v55 = v50;
    if (v48[3] >= v54)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v50)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1D782F770();
        if (v55)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_1D782C68C(v54, isUniquelyReferenced_nonNull_native);
      v56 = sub_1D777BBB4(v40, v39);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_22;
      }

      v51 = v56;
      if (v55)
      {
LABEL_7:

        v28 = v78;
        v6 = v46;
        sub_1D7830360(v46, v78[7] + *(v69 + 72) * v51, type metadata accessor for PaywallShownEntry);
        goto LABEL_8;
      }
    }

    v28 = v78;
    v78[(v51 >> 6) + 8] |= 1 << v51;
    v58 = (v28[6] + 16 * v51);
    *v58 = v40;
    v58[1] = v39;
    v6 = v46;
    sub_1D77B6AEC(v46, v28[7] + *(v69 + 72) * v51);
    v59 = v28[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_21;
    }

    v28[2] = v61;
LABEL_8:
    v27 = v63;
    v29 = *(v63 + 48);
    a2 = v49;
    *(v49 + 24) = v28;

    swift_endAccess();
    v15 = v65;
    sub_1D783006C(v65, sub_1D783000C);
    sub_1D783006C(v37 + v29, type metadata accessor for PaywallShownEntry);
    v18 = v64;
    sub_1D78290D8(v64);
    v8 = v66;
    if (v67(v18, 1, v66) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1D78B6784();
  __break(1u);
  return result;
}

uint64_t sub_1D782A528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  sub_1D78B3854();

  swift_beginAccess();
  v7 = *(v3 + 24);
  if (*(v7 + 16) && (v8 = sub_1D777BBB4(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for PaywallShownEntry();
    v13 = *(v12 - 8);
    sub_1D7830140(v11 + *(v13 + 72) * v10, a3, type metadata accessor for PaywallShownEntry);
    (*(v13 + 56))(a3, 0, 1, v12);
  }

  else
  {
    v14 = type metadata accessor for PaywallShownEntry();
    (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }

  swift_endAccess();

  sub_1D78B3864();
}

uint64_t sub_1D782A6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a1;
  v38 = sub_1D78B5254();
  v41 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B52A4();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PaywallShownEntry();
  v8 = *(v7 - 8);
  v35 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B5264();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7749020(0, &qword_1EE094430, type metadata accessor for PaywallShownEntry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;

  sub_1D78B3854();

  sub_1D7830140(a3, v16, type metadata accessor for PaywallShownEntry);
  (*(v8 + 56))(v16, 0, 1, v7);
  swift_beginAccess();
  v17 = v33;

  v18 = v16;
  v19 = v34;
  sub_1D78282C0(v18, v34, v17);
  swift_endAccess();
  sub_1D773F004(0, &qword_1EE08FE10);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7FA0], v10);
  v31 = sub_1D78B6134();
  (*(v11 + 8))(v13, v10);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v32;
  sub_1D7830140(a3, v32, type metadata accessor for PaywallShownEntry);
  v22 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v19;
  v23[4] = v17;
  sub_1D77B6AEC(v21, v23 + v22);
  aBlock[4] = sub_1D78304DC;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D775FB6C;
  aBlock[3] = &block_descriptor_13;
  v24 = _Block_copy(aBlock);

  v25 = v36;
  sub_1D78B5274();
  v42 = MEMORY[0x1E69E7CC0];
  sub_1D7749114(&qword_1EE090300, MEMORY[0x1E69E7F60]);
  v26 = MEMORY[0x1E69E7F60];
  sub_1D7749020(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7741690(&qword_1EE090030, &qword_1EE090040, v26);
  v28 = v37;
  v27 = v38;
  sub_1D78B6324();
  v29 = v31;
  MEMORY[0x1DA7033B0](0, v25, v28, v24);
  _Block_release(v24);

  (*(v41 + 8))(v28, v27);
  (*(v39 + 8))(v25, v40);

  sub_1D78B3864();
}

void sub_1D782AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7749020(0, &qword_1EE0904D8, sub_1D782FFEC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D78B3F24();
    sub_1D78B43A4();

    sub_1D782FFEC(0);
    v11 = v10;
    v12 = *(v10 - 8);
    if ((*(v12 + 48))(v9, 1, v10) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1D7749020(0, &qword_1EE08E4C0, sub_1D7830544, MEMORY[0x1E69E6F90]);
      sub_1D7830544();
      v14 = v13 - 8;
      v15 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D78BCAB0;
      v17 = (v16 + v15);
      v18 = *(v14 + 56);
      *v17 = a2;
      v17[1] = a3;
      sub_1D7830140(a4, v17 + v18, type metadata accessor for PaywallShownEntry);

      sub_1D77FF970(v16);
      swift_setDeallocating();
      sub_1D783006C(v17, sub_1D7830544);
      swift_deallocClassInstance();
      sub_1D78B4364();

      (*(v12 + 8))(v9, v11);
      v19 = sub_1D78B4014();
      sub_1D78B40D4();
    }
  }
}

double sub_1D782AFE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D777BBB4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D782EDE4();
      v10 = v12;
    }

    sub_1D778D0A0((*(v10 + 56) + 32 * v8), a3);
    sub_1D782D7D8(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D782B134(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D777BBB4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D782F5DC();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1D782DB38(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1D782B1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_1D777BBB4(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    a4(v19 + *(v27 + 72) * v16, a7);
    sub_1D782DD00(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_1D782B350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D777BBB4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D782FBD8();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1D78B57A4();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1D782DD00(v8, v10, MEMORY[0x1E69B6118]);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1D78B57A4();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1D782B4D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D78303C8();
  v31 = a2;
  result = sub_1D78B6554();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1D78B6814();
      MEMORY[0x1DA703AC0](v20);
      result = sub_1D78B6844();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D782B754(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7830484(0, &qword_1EE08FB10);
  v33 = a2;
  result = sub_1D78B6554();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D778D0A0(v24, v34);
      }

      else
      {
        sub_1D777BE08(v24, v34);
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      result = sub_1D78B6844();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D778D0A0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D782BA14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D7830484(0, &unk_1EC9CAC10);
  v37 = a2;
  result = sub_1D78B6554();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      result = sub_1D78B6844();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D782BCD8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PurchaseContext();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1D78300CC(0, &qword_1EE08E550, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6EC8]);
  v40 = a2;
  result = sub_1D78B6554();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1D777044C(v28, v41);
      }

      else
      {
        sub_1D7830140(v28, v41, type metadata accessor for PurchaseContext);
      }

      sub_1D78B6814();
      sub_1D78B5D14();
      result = sub_1D78B6844();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1D777044C(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}