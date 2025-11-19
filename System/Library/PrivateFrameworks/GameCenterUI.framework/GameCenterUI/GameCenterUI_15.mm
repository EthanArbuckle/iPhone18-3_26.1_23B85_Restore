void sub_24E0D5E98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall GKPlayerGroupView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_traitCollectionDidChange_, isa);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_24E348458();
}

Swift::Void __swiftcall GKPlayerGroupView.layoutSubviews()()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  sub_24E0D5224();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = Strong;
  v3 = [Strong layer];

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 frame];
  OUTLINED_FUNCTION_8_2();

  v10.origin.x = OUTLINED_FUNCTION_7_2();
  [v3 setCornerRadius_];

  v6 = *&v0[OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView];
  if (v6)
  {
    v7 = v6;
    v8 = [v7 layer];
    [v7 frame];
    [v8 setCornerRadius_];
  }
}

id GKPlayerGroupView.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerCount) = 0;
  OUTLINED_FUNCTION_4_22();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView) = 0;
  v2 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v3, v4, v2, v0, ObjectType);
}

id GKPlayerGroupView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GKPlayerGroupView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  OUTLINED_FUNCTION_4_22();
  *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerCount] = 0;
  OUTLINED_FUNCTION_4_22();
  *&v1[OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_24E0D6710()
{
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_iconContainer);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView1);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView2);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView3);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView4);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView5);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView6);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView7);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView1WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView2WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView3WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView4WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView5WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView6WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView7WidthContraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView1LeadingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView1TopConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView2TrailingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView2BottomConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView3LeadingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView3BottomConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView4TrailingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView4TopConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView5LeadingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView5BottomConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView6LeadingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView6TopConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView7LeadingConstraint);
  MEMORY[0x253040FB0](v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerView7BottomConstraint);
  sub_24DE73F0C(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_playerSelectionProxy);
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI17GKPlayerGroupView_groupImageView);
}

id GKPlayerGroupView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

JUMeasurements __swiftcall GKPlayerGroupView.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  [v2 sizeThatFits_];
  v5 = 0.0;
  v6 = v4;
  result.var3 = v5;
  result.var2 = v6;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

id OUTLINED_FUNCTION_5_52(void *a1, double a2)
{
  v5 = v4 * a2;

  return [a1 (v2 + 2450)];
}

id OUTLINED_FUNCTION_6_44()
{

  return [v0 (v2 + 3832)];
}

id OUTLINED_FUNCTION_8_35(void *a1, double a2)
{
  v5 = v4 * a2;

  return [a1 (v2 + 2450)];
}

id OUTLINED_FUNCTION_9_33(void *a1)
{
  v3 = *(v1 + 2352);

  return [a1 v3];
}

id OUTLINED_FUNCTION_11_23()
{

  return [v0 (v2 + 1473)];
}

id OUTLINED_FUNCTION_13_26(void *a1)
{

  return [a1 (v1 + 3832)];
}

id OUTLINED_FUNCTION_17_19()
{

  return [v0 (v1 + 3192)];
}

id OUTLINED_FUNCTION_18_20(void *a1)
{
  v5 = v1 != v2;

  return [a1 (v3 + 1656)];
}

uint64_t OUTLINED_FUNCTION_19_17()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_20_16()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_21_16()
{

  return swift_unknownObjectWeakLoadStrong();
}

id OUTLINED_FUNCTION_22_16(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_23_17(void *a1)
{

  return [a1 (v1 + 2296)];
}

uint64_t OUTLINED_FUNCTION_24_11()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_25_15()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_26_13()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_27_10()
{
}

uint64_t OUTLINED_FUNCTION_28_12()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_32_12()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_33_9()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_34_8()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_24E0D6E9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 360))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_24E0D6EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E0D6F88@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  sub_24E3442D8();
  OUTLINED_FUNCTION_0_14();
  v64 = v3;
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_12_1();
  v62 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v63 = &v53 - v7;
  sub_24E344428();
  OUTLINED_FUNCTION_0_14();
  v60 = v9;
  v61 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v59 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  v67 = &v53 - v13;
  sub_24E344988();
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_1();
  v56 = v17 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v53 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  sub_24E344238();
  OUTLINED_FUNCTION_0_14();
  v57 = v27;
  v58 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12_1();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v54 = &v53 - v32;
  sub_24E344218();
  sub_24DF89628((v1 + 24), v73);
  v55 = v1;
  sub_24DF89628((v1 + 4), v25);
  v33 = *(v15 + 104);
  OUTLINED_FUNCTION_2_60();
  v33();
  sub_24DF89628((v1 + 9), v23);
  OUTLINED_FUNCTION_2_60();
  v33();
  OUTLINED_FUNCTION_2_60();
  v33();
  OUTLINED_FUNCTION_2_60();
  v33();
  v70 = sub_24E344998();
  v71 = MEMORY[0x277D22998];
  __swift_allocate_boxed_opaque_existential_1(v69);
  sub_24E3449A8();
  v34 = v54;
  sub_24E344228();
  v35 = v58;
  v36 = *(v57 + 8);
  v36(v30, v58);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v73[3] = v35;
  v73[4] = MEMORY[0x277D226D0];
  __swift_allocate_boxed_opaque_existential_1(v73);
  v37 = v55;
  sub_24E344228();
  v36(v34, v35);
  v38 = v37;
  v39 = *v37;
  v40 = v37[1];
  v41 = v37[2];
  v42 = v37[3];
  v43 = v59;
  sub_24E344408();
  sub_24E0D7950(v38, v69);
  v44 = swift_allocObject();
  OUTLINED_FUNCTION_3_59(v44);
  sub_24E344418();

  v45 = v61;
  v60 = *(v60 + 8);
  (v60)(v43, v61);
  v46 = v62;
  sub_24E3442B8();
  v47 = v63;
  sub_24E3442C8();
  v48 = v65;
  v49 = *(v64 + 8);
  v49(v46, v65);
  sub_24E0D7950(v38, v69);
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_3_59(v50);
  v68[3] = v48;
  v68[4] = MEMORY[0x277D226E0];
  __swift_allocate_boxed_opaque_existential_1(v68);
  sub_24E3442C8();

  v49(v47, v48);
  v72[3] = v45;
  v72[4] = MEMORY[0x277D22778];
  __swift_allocate_boxed_opaque_existential_1(v72);
  v51 = v67;
  sub_24E344418();
  (v60)(v51, v45);
  __swift_destroy_boxed_opaque_existential_1(v68);
  sub_24E344948();
  v70 = sub_24E344958();
  v71 = MEMORY[0x277D22970];
  __swift_allocate_boxed_opaque_existential_1(v69);
  sub_24E344968();
  MEMORY[0x25303B510](v69, v39, v40, v41, v42);
  return __swift_destroy_boxed_opaque_existential_1(v73);
}

uint64_t sub_24E0D762C()
{
  v0 = sub_24E344208();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_24E3442F8();
  v5 = MEMORY[0x277D226F0];
  v3[3] = v4;
  v3[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_24E3442E8();
  v6 = *MEMORY[0x277D226C8];
  v7 = *(v1 + 104);
  v7(v3, v6, v0);
  sub_24E3441D8();
  v3[3] = v4;
  v3[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_24E3442E8();
  v7(v3, v6, v0);
  return sub_24E3441F8();
}

uint64_t sub_24E0D77D0(uint64_t a1, uint64_t a2)
{
  sub_24DF89628(a2 + 152, v3);
  sub_24E344258();
  return sub_24E344248();
}

uint64_t sub_24E0D7830(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E0D7A40();

  return MEMORY[0x282180C48](a1, a2, v4);
}

unint64_t sub_24E0D7888()
{
  result = qword_27F1E3778;
  if (!qword_27F1E3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3778);
  }

  return result;
}

unint64_t sub_24E0D78E0()
{
  result = qword_27F1E3780;
  if (!qword_27F1E3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3780);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);
  __swift_destroy_boxed_opaque_existential_1(v0 + 168);
  __swift_destroy_boxed_opaque_existential_1(v0 + 208);
  __swift_destroy_boxed_opaque_existential_1(v0 + 248);
  __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  __swift_destroy_boxed_opaque_existential_1(v0 + 336);

  return MEMORY[0x2821FE8E8](v0, 376, 7);
}

unint64_t sub_24E0D7A40()
{
  result = qword_27F1E3788;
  if (!qword_27F1E3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3788);
  }

  return result;
}

uint64_t sub_24E0D7A94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_24E0D7AD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_3_59(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 160), 0x168uLL);
}

void sub_24E0D7B80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_24E0D7BF8(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_currentActionOutcome] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GameCenterSignInActionImplementation();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_24E0D7C84()
{
  v1 = v0;
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController;
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController) || (v7 = OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_currentActionOutcome, *(v1 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_currentActionOutcome)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    sub_24E0D86C8();
    OUTLINED_FUNCTION_1_79();
    *v8 = 0;
    *(v8 + 8) = 2;
    return sub_24E347A98();
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    if (Strong)
    {
      v11 = sub_24E347AD8();
      v12 = [objc_allocWithZone(MEMORY[0x277CECAC8]) init];
      [v12 setDelegate_];
      [v12 setServiceType_];
      [v12 _setShouldForceOperation_];
      v13 = *(v1 + v6);
      *(v1 + v6) = v12;
      v14 = v12;

      *(v1 + v7) = v11;

      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_16_4();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v11;
      aBlock[4] = sub_24E0D873C;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24E0D7B80;
      aBlock[3] = &block_descriptor_20_0;
      v17 = _Block_copy(aBlock);

      [v14 prepareInViewController:Strong completion:v17];
      _Block_release(v17);
    }

    else
    {
      (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
      return sub_24E347AA8();
    }

    return v11;
  }
}

void sub_24E0D7F74(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_24E0D7FE4(a1 & 1, a2);
  }
}

void sub_24E0D7FE4(char a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(v2 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController);
    v13 = Strong;
    if ((a1 & 1) != 0 && v6)
    {
      v7 = v6;
      [v13 presentViewController:v7 animated:1 completion:0];

      v8 = v13;
    }

    else
    {
      sub_24E0D86C8();
      v9 = OUTLINED_FUNCTION_1_79();
      *v10 = a2;
      *(v10 + 8) = 0;
      v11 = v6;
      v12 = a2;
      sub_24E0D80F4(v6, v9);

      v8 = v11;
    }
  }
}

void sub_24E0D80F4(void *a1, void *a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_16_4();
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 24) = v2;
    v9[4] = sub_24E0D871C;
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_24E00B24C;
    v9[3] = &block_descriptor_41;
    v6 = _Block_copy(v9);
    v7 = a2;
    v8 = v2;

    [a1 dismissViewControllerAnimated:1 completion:v6];
    _Block_release(v6);
  }
}

uint64_t sub_24E0D81E4(void *a1, uint64_t a2)
{
  v4 = sub_24E347218();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_currentActionOutcome);
  if (a1)
  {
    if (v9)
    {
      v10 = a1;

      sub_24E347AB8();
    }
  }

  else if (v9)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D21CA8], v4, v6);

    sub_24E347AC8();

    (*(v5 + 8))(v8, v4);
  }

  v11 = *(a2 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController);
  *(a2 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_signInViewController) = 0;

  *(a2 + OBJC_IVAR____TtC12GameCenterUI36GameCenterSignInActionImplementation_currentActionOutcome) = 0;
}

void sub_24E0D835C(void *a1, char a2, void *a3)
{
  if (a2)
  {

    sub_24E0D80F4(a1, 0);
  }

  else
  {
    sub_24E0D86C8();
    v5 = OUTLINED_FUNCTION_1_79();
    *v6 = a3;
    *(v6 + 8) = 1;
    v7 = a3;
    sub_24E0D80F4(a1, v5);
  }
}

void sub_24E0D8480(void *a1)
{
  sub_24E0D86C8();
  v2 = OUTLINED_FUNCTION_1_79();
  *v3 = 1;
  *(v3 + 8) = 2;
  sub_24E0D80F4(a1, v2);
}

id sub_24E0D8598()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameCenterSignInActionImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E0D8650()
{
  result = qword_27F1E3810;
  if (!qword_27F1E3810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3810);
  }

  return result;
}

unint64_t sub_24E0D86C8()
{
  result = qword_27F1E3818;
  if (!qword_27F1E3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3818);
  }

  return result;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI0aB26SignInActionImplementationC06EnableabfG5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t OUTLINED_FUNCTION_1_79()
{

  return swift_allocError();
}

uint64_t type metadata accessor for AchievementsLinkData()
{
  result = qword_280BE0818;
  if (!qword_280BE0818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0D8804()
{
  sub_24E0ADC44();
  if (v0 <= 0x3F)
  {
    sub_24E025CD0(319, &qword_280BE0108, sub_24DFC2C38);
    if (v1 <= 0x3F)
    {
      sub_24DF9E07C();
      if (v2 <= 0x3F)
      {
        sub_24E025CD0(319, &qword_280BE0650, MEMORY[0x277D21F70]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24E0D8978()
{
  result = qword_27F1E3830;
  if (!qword_27F1E3830)
  {
    type metadata accessor for AchievementsLinkData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3830);
  }

  return result;
}

id sub_24E0D89D0()
{
  v0 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v1 = OUTLINED_FUNCTION_1_38();
  v4 = [v2 v3];
  v6 = 1;
  sub_24E0D8DC8(&v6);
  return v4;
}

void sub_24E0D8A24(char a1, double a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView);
  v6 = a1 & 1;
  if (v5)
  {
    v7 = v5;
    sub_24E30A400(v6, a2);
  }

  *(v3 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerRadius) = a2;
  *(v3 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerStyle) = v6;
  [*(v3 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView) setClipsToBounds_];

  sub_24E0983D0();
}

void sub_24E0D8B00(void *a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView;
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView;
    v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_24E0D94E4();
}

void sub_24E0D8B84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow);
  v6 = *(v4 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v7 = a1;

  sub_24E0D8BE4();
}

void sub_24E0D8BE4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow;
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow) || *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor))
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView);
    }

    else
    {
      type metadata accessor for ShadowView();
      v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v4 = v5;
      sub_24E0D8B00(v5);
      v3 = 0;
    }

    v6 = *(v1 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerRadius);
    v7 = *(v1 + OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerStyle);
    v8 = v3;
    v16 = v4;
    sub_24E30A400(v7, v6);
    v9 = [v16 layer];
    [v9 setMaskedCorners_];

    v10 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor);
    [v16 setBackgroundColor_];

    v11 = *v2;
    v12 = *(v2 + 8);
    v13 = *(v2 + 16);
    v14 = *(v2 + 24);
    v15 = v11;
    sub_24E30A46C(v11, v12, v13, v14);
  }

  else
  {

    sub_24E0D8B00(0);
  }
}

uint64_t sub_24E0D8DC8(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style) = *a1;
  v4 = v2;
  return sub_24E0D9514(&v4);
}

id sub_24E0D8E04(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize);
  v4 = *(v2 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize);
  v5 = *(v2 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_24E0DA0C0(v4, v5);
}

void sub_24E0D8E24(id a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView);
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_artworkTintColor))
  {
    if (a1)
    {
      v3 = [a1 imageWithRenderingMode_];
    }

    else
    {
      v3 = 0;
    }

    [v2 setImage_];
  }

  else
  {
    [v2 setImage_];
  }
}

void sub_24E0D8ED8(void *a1, char a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView];
  v7 = [v6 layer];
  [v7 removeAllAnimations];

  if (!*&v3[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_artworkTintColor])
  {
    v8 = a1;
    goto LABEL_5;
  }

  if (a1)
  {
    v8 = [a1 imageWithRenderingMode_];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v14 = v9;
  if (a2)
  {
    [v6 setAlpha_];
    [v6 setImage_];
    type metadata accessor for Animation();
    v10 = sub_24E029998();
    v11 = swift_allocObject();
    *(v11 + 16) = v3;
    aBlock[4] = sub_24E0DA390;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_42;
    v12 = _Block_copy(aBlock);
    v13 = v3;

    [v10 addAnimations_];
    _Block_release(v12);
    [v10 startAnimation];
  }

  else
  {
    [v6 setImage_];
  }
}

void sub_24E0D90D8(id a1, char a2)
{
  if (a1)
  {
    [a1 size];
    sub_24E0D8E04(v5, v6);
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = [*(v2 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView) image];
  if (v7)
  {

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:

  sub_24E0D8ED8(a1, v8);
}

id sub_24E0D9168()
{
  if (qword_27F1DDDE0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F20B808;
  qword_27F20AE58 = qword_27F20B808;

  return v1;
}

char *sub_24E0D91CC()
{
  OUTLINED_FUNCTION_29();
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView) = 0;
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow);
  *v3 = 0u;
  v3[1] = 0u;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isStyleInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isCornerRadiusInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_artworkTintColor) = 0;
  v4 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v5 = OUTLINED_FUNCTION_1_38();
  v8 = [v6 v7];
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView) = v8;
  v9 = (v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize);
  *v9 = v2;
  v9[1] = v1;
  v26 = type metadata accessor for ArtworkView();
  v10 = OUTLINED_FUNCTION_3_60();
  v13 = objc_msgSendSuper2(v11, v12, v10, v0, v26);
  v14 = objc_allocWithZone(type metadata accessor for ShadowView());
  v15 = v13;
  v16 = OUTLINED_FUNCTION_1_38();
  v18 = [v14 v17];
  if (qword_27F1DDD98 != -1)
  {
    swift_once();
  }

  v19 = qword_27F20B7C0;
  v20 = *&v15[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor];
  *&v15[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor] = qword_27F20B7C0;
  v21 = v19;

  [v18 setBackgroundColor_];
  v22 = v15;
  [v22 addSubview_];
  v23 = *&v22[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView];
  *&v22[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView] = v18;
  v24 = v18;

  [v22 setContentMode_];
  [v22 setClipsToBounds_];

  [v22 setEdgesInsettingLayoutMarginsFromSafeArea_];
  [v22 addSubview_];

  return v22;
}

void sub_24E0D9414()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadow);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isStyleInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isCornerRadiusInvalid) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_artworkTintColor) = 0;
  sub_24E348AE8();
  __break(1u);
}

id sub_24E0D94E4()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView];
  if (v1)
  {
    return [v0 insertSubview:v1 belowSubview:*&v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView]];
  }

  return result;
}

uint64_t sub_24E0D9514(char *a1)
{
  v2 = OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style;
  result = sub_24DFD3260(v1[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style], *a1);
  if ((result & 1) == 0)
  {
    switch(v1[v2])
    {
      case 1:
      case 2:
      case 3:
      case 4:
        v4 = sub_24E348C08();

        if (v4)
        {
          goto LABEL_8;
        }

        switch(v1[v2])
        {
          case 4:
            goto LABEL_7;
          default:
            v5 = sub_24E348C08();

            if (v5)
            {
              goto LABEL_8;
            }

            switch(v1[v2])
            {
              case 2:
                goto LABEL_7;
              default:
                v11 = sub_24E348C08();

                if (v11)
                {
                  goto LABEL_8;
                }

                if (qword_27F1DD860 != -1)
                {
                  swift_once();
                }

                v6 = qword_27F20AE58;
                v7 = 1.0;
                break;
            }

            break;
        }

        break;
      default:
LABEL_7:

LABEL_8:
        v6 = [objc_opt_self() clearColor];
        v7 = 0.0;
        break;
    }

    sub_24E098584(v6);
    *&v1[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderWidth] = v7;
    sub_24E0983D0();
    v8 = *&v1[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView];
    if (v8)
    {
      v9 = 1;
      switch(v1[v2])
      {
        case 4:
          break;
        default:
          v9 = sub_24E348C08();
          break;
      }

      v10 = v8;

      [v10 setHidden_];
    }

    v1[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isStyleInvalid] = 1;

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_24E0D9934()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

void sub_24E0D99D0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_internalBackgroundColor) = a1;
  v3 = a1;

  sub_24E0D8BE4();
}

void sub_24E0D9A28()
{
  v1 = [v0 contentMode];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_24E26F7EC(v1, v6, v8);
  v47 = v10;
  v12 = v11;
  type metadata accessor for ContentMode(0);
  if (v1 > 0xC)
  {
    sub_24E348C58();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_5_53();
    if ((v13 & 0x7F) != 0)
    {
      v49.origin.x = OUTLINED_FUNCTION_7_2();
      v14 = CGRectGetMidX(v49) + v47 * -0.5;
    }

    else
    {
      v14 = 0.0;
      OUTLINED_FUNCTION_5_53();
      if ((v15 & 0xA80) == 0)
      {
        v50.origin.x = OUTLINED_FUNCTION_7_2();
        v14 = CGRectGetMaxX(v50) - v47;
      }
    }

    v16 = 0.0;
    OUTLINED_FUNCTION_5_53();
    if ((v17 & 0x19F) != 0)
    {
      v51.origin.x = OUTLINED_FUNCTION_7_2();
      v16 = CGRectGetMidY(v51) + v12 * -0.5;
    }

    else
    {
      OUTLINED_FUNCTION_5_53();
      if ((v18 & 0x620) == 0)
      {
        v52.origin.x = OUTLINED_FUNCTION_7_2();
        v16 = CGRectGetMaxY(v52) - v12;
      }
    }

    v19 = OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isStyleInvalid;
    if ((v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isStyleInvalid] & 1) != 0 || v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isCornerRadiusInvalid] == 1)
    {
      v20 = OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style;
      v21 = 6.0;
      ScaledCornerRadiusForSize = 0.0;
      v23 = 0;
      switch(v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_style])
      {
        case 1:
          ScaledCornerRadiusForSize = GKHomeScreenIconsGetScaledCornerRadiusForSize(v47, v12);
          v23 = 0;
          v21 = ScaledCornerRadiusForSize;
          if (((1 << v0[v20]) & 0xB) == 0)
          {
            goto LABEL_18;
          }

          break;
        case 2:
          v24 = v47;
          if (v47 >= v12)
          {
            v24 = v12;
          }

          ScaledCornerRadiusForSize = v24 * 0.5;
          goto LABEL_18;
        case 3:
          break;
        case 4:
LABEL_18:
          v23 = 1;
          v21 = ScaledCornerRadiusForSize;
          break;
        default:
          v21 = *&v0[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerRadius];
          v23 = v0[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_cornerStyle];
          break;
      }

      sub_24E0D8A24(v23, v21);
      v0[v19] = 0;
      v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isCornerRadiusInvalid] = 0;
    }

    v48.receiver = v0;
    v48.super_class = type metadata accessor for ArtworkView();
    objc_msgSendSuper2(&v48, sel_layoutSubviews);
    v45 = v5;
    v46 = v3;
    v25 = *&v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView];
    v26 = OUTLINED_FUNCTION_7_2();
    [v27 v28];
    if (*&v0[OBJC_IVAR____TtC12GameCenterUI17RoundedCornerView_borderView])
    {
      v29 = OUTLINED_FUNCTION_7_2();
      [v30 v31];
    }

    if (*&v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_shadowView])
    {
      v32 = OUTLINED_FUNCTION_7_2();
      [v33 v34];
    }

    v35 = [v25 layer];
    [v35 setAnchorPoint_];

    v36 = [v25 layer];
    v37 = v36;
    if (v1 == 2)
    {
      v53.origin.x = v14;
      v53.origin.y = v16;
      v53.size.width = v47;
      v53.size.height = v12;
      v38 = 0.0 - CGRectGetMinX(v53);
      OUTLINED_FUNCTION_1_80();
      v44 = v38 / CGRectGetWidth(v54);
      OUTLINED_FUNCTION_1_80();
      v39 = 0.0 - CGRectGetMinY(v55);
      OUTLINED_FUNCTION_1_80();
      v43 = v39 / CGRectGetHeight(v56);
      v57.origin.x = v46;
      v57.origin.y = v45;
      v57.size.width = v7;
      v57.size.height = v9;
      Width = CGRectGetWidth(v57);
      OUTLINED_FUNCTION_1_80();
      v42 = Width / CGRectGetWidth(v58);
      v59.origin.x = v46;
      v59.origin.y = v45;
      v59.size.width = v7;
      v59.size.height = v9;
      Height = CGRectGetHeight(v59);
      OUTLINED_FUNCTION_1_80();
      [v37 setContentsRect_];
    }

    else
    {
      [v36 setContentsRect_];
    }
  }
}

id sub_24E0D9F08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkView();
  return objc_msgSendSuper2(&v2, sel_frame);
}

id sub_24E0D9FB4()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for ArtworkView();
  v14.receiver = v0;
  v14.super_class = v1;
  objc_msgSendSuper2(&v14, sel_frame);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_3_60();
  objc_msgSendSuper2(v11, v12, v10, v0, v1);
  return sub_24E0DA050(v3, v5, v7, v9);
}

id sub_24E0DA050(double a1, double a2, double a3, double a4)
{
  v5 = *&v4[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize];
  v6 = *&v4[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize + 8];
  if (v5 == 0.0 && v6 == 0.0 || (v5 == a3 ? (v7 = v6 == a4) : (v7 = 0), v7))
  {
    [v4 frame];

    return sub_24E0D8E04(v8, v9);
  }

  return result;
}

id sub_24E0DA0C0(double a1, double a2)
{
  if (*&v2[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize] != a1 || *&v2[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageSize + 8] != a2)
  {
    v2[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_isCornerRadiusInvalid] = 1;
    return [v2 setNeedsLayout];
  }

  return result;
}

void sub_24E0DA10C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI11ArtworkView_artworkTintColor);
}

id sub_24E0DA17C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_24E0DA250()
{
  [v0 sizeThatFits_];
  v2 = v1;
  v3 = [*&v0[OBJC_IVAR____TtC12GameCenterUI11ArtworkView_imageView] image];
  if (v3)
  {
    v4 = v3;
    sub_24E3485C8();
  }

  return v2;
}

unint64_t sub_24E0DA314(uint64_t a1)
{
  result = sub_24E0DA33C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24E0DA33C()
{
  result = qword_27F1E3880;
  if (!qword_27F1E3880)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3880);
  }

  return result;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E0DA3FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_24E0DA43C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E0DA4DC(double a1, double a2, CGFloat a3)
{
  v4 = v3;
  v81 = sub_24E344648();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v9);
  v84 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v13);
  v86 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v17);
  sub_24E344688();
  OUTLINED_FUNCTION_0_14();
  v77 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v20);
  v76 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v75 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_5_11(v23);
  v24 = sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v79 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_14();
  v78 = v27;
  swift_getObjectType();
  sub_24E0B7968();
  v28 = a3;
  sub_24E3484F8();
  v80 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_24DF8968C(v3 + 280, &v88);
  if (*(&v89 + 1))
  {
    sub_24DF88BF0(&v88, &v91);
    __swift_project_boxed_opaque_existential_1(&v91, v92);
    if ((sub_24E344098() & 1) == 0 && *(v3 + 192) != 1)
    {
      OUTLINED_FUNCTION_8_8((v3 + 200));
      sub_24E3440D8();
      v95.origin.x = v80;
      v95.origin.y = v31;
      v95.size.width = v33;
      v95.size.height = v35;
      CGRectGetMidX(v95);
      __swift_project_boxed_opaque_existential_1(v3, *(v3 + 24));
      OUTLINED_FUNCTION_17_20();
      OUTLINED_FUNCTION_7_35();
      v74 = v31;
      v67 = *(v79 + 8);
      v67(v78, v24);
      OUTLINED_FUNCTION_8_8((v3 + 200));
      sub_24E348508();
      sub_24E344088();
      __swift_project_boxed_opaque_existential_1((v3 + 80), *(v3 + 104));
      OUTLINED_FUNCTION_17_20();
      OUTLINED_FUNCTION_7_35();
      v67(v78, v24);
      __swift_project_boxed_opaque_existential_1((v3 + 200), *(v3 + 224));
      sub_24E344078();
      CGRectGetMaxY(v96);
      v97.origin.x = OUTLINED_FUNCTION_13_27();
      v97.origin.y = v31;
      v97.size.width = v33;
      v97.size.height = v35;
      CGRectGetWidth(v97);
      OUTLINED_FUNCTION_14_22();
      CGRectGetHeight(v98);
      OUTLINED_FUNCTION_8_8((v3 + 240));
      OUTLINED_FUNCTION_16_22();
      v69 = v68;
      OUTLINED_FUNCTION_8_8(&v91);
      OUTLINED_FUNCTION_16_22();
      v71 = v70;
      __swift_project_boxed_opaque_existential_1((v3 + 152), *(v3 + 176));
      OUTLINED_FUNCTION_17_20();
      OUTLINED_FUNCTION_7_35();
      v73 = v72;
      v67(v78, v24);
      sub_24E32DAB8(MEMORY[0x277D84F90], v69, v71, v73);
      OUTLINED_FUNCTION_14_22();
      CGRectGetMidX(v99);
      OUTLINED_FUNCTION_8_8(&v91);
      sub_24E348508();
      sub_24E344088();
      v100.origin.x = v80;
      v100.origin.y = v74;
      v100.size.width = v33;
      v100.size.height = v35;
      CGRectGetMidX(v100);
      OUTLINED_FUNCTION_8_8((v3 + 240));
      sub_24E348508();
      sub_24E344088();
      v101.origin.x = OUTLINED_FUNCTION_13_27();
      v101.origin.y = v74;
      v101.size.width = v33;
      v101.size.height = v35;
      CGRectGetMinX(v101);
      v102.origin.x = v28;
      v102.origin.y = v74;
      v102.size.width = v33;
      v102.size.height = v35;
      CGRectGetMinY(v102);
      OUTLINED_FUNCTION_14_22();
      CGRectGetHeight(v103);
      sub_24E343FD8();
      return __swift_destroy_boxed_opaque_existential_1(&v91);
    }

    OUTLINED_FUNCTION_12_21();
    __swift_destroy_boxed_opaque_existential_1(&v91);
  }

  else
  {
    OUTLINED_FUNCTION_12_21();
    sub_24DF8C95C(&v88, &qword_27F1DEE30);
  }

  sub_24E344668();
  v36 = *(v3 + 224);
  v37 = v4[29];
  __swift_project_boxed_opaque_existential_1(v4 + 25, v4[28]);
  v92 = v36;
  v93 = *(v37 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v91);
  OUTLINED_FUNCTION_6_45();
  (*(v38 + 16))();
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  (*(v15 + 104))(v82, *MEMORY[0x277D227C8], v86);
  (*(v11 + 104))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE38);
  v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_24E36A270;
  v41 = v40 + v39;
  sub_24E344628();
  sub_24E344638();
  v87[0] = v40;
  sub_24DF8A8A4();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40);
  sub_24DF8A8FC();
  OUTLINED_FUNCTION_5_54();
  *(v43 - 256) = v42;
  sub_24E3487E8();
  sub_24E344678();
  (*(v7 + 8))(v41, v81);
  (*(v11 + 8))(v83, v84);
  (*(v15 + 8))(v82, v86);
  sub_24DF8C95C(&v88, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  sub_24E344698();
  v44 = *(v77 + 8);
  v44();
  __swift_project_boxed_opaque_existential_1(v4 + 30, v4[33]);
  sub_24E3440E8();
  v45 = v4[22];
  v46 = v4[23];
  __swift_project_boxed_opaque_existential_1(v4 + 19, v45);
  sub_24E2548A0(v45, v46);
  sub_24E344198();
  (*(v79 + 8))(v78);
  OUTLINED_FUNCTION_13_27();
  OUTLINED_FUNCTION_14_22();
  CGRectGetWidth(v94);
  sub_24DF8968C((v4 + 35), &v88);
  if (*(&v89 + 1))
  {
    sub_24DF88BF0(&v88, &v91);
    __swift_project_boxed_opaque_existential_1(&v91, v92);
    if (sub_24E344098())
    {
      __swift_destroy_boxed_opaque_existential_1(&v91);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v91, v92);
      OUTLINED_FUNCTION_18_21();
      memset(v87, 0, sizeof(v87));
      v47 = OUTLINED_FUNCTION_4_54();
      v48(v47);
      v49 = OUTLINED_FUNCTION_3_61();
      v50(v49);
      *(OUTLINED_FUNCTION_8_36() + 16) = xmmword_24E367D20;
      sub_24E344618();
      OUTLINED_FUNCTION_5_54();
      OUTLINED_FUNCTION_20_17();
      sub_24E344678();
      v51 = OUTLINED_FUNCTION_11_24();
      v52(v51);
      OUTLINED_FUNCTION_15_21();
      v53();
      v54 = OUTLINED_FUNCTION_10_28();
      v55(v54);
      sub_24DF8C95C(v87, &qword_27F1DEE48);
      __swift_destroy_boxed_opaque_existential_1(&v88);
      sub_24E344698();
      v44();
      __swift_destroy_boxed_opaque_existential_1(&v91);
    }
  }

  else
  {
    sub_24DF8C95C(&v88, &qword_27F1DEE30);
  }

  __swift_project_boxed_opaque_existential_1(v4 + 30, v4[33]);
  OUTLINED_FUNCTION_18_21();
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v56 = OUTLINED_FUNCTION_4_54();
  v57(v56);
  v58 = OUTLINED_FUNCTION_3_61();
  v59(v58);
  v60 = OUTLINED_FUNCTION_8_36();
  *(v60 + 16) = xmmword_24E367D20;
  sub_24E344618();
  v87[0] = v60;
  OUTLINED_FUNCTION_5_54();
  OUTLINED_FUNCTION_20_17();
  sub_24E344678();
  v61 = OUTLINED_FUNCTION_11_24();
  v62(v61);
  OUTLINED_FUNCTION_15_21();
  v63();
  v64 = OUTLINED_FUNCTION_10_28();
  v65(v64);
  sub_24DF8C95C(&v88, &qword_27F1DEE48);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  sub_24E344698();
  v44();
  OUTLINED_FUNCTION_14_22();
  sub_24E344608();
  return (*(v75 + 8))(v85, v76);
}

double sub_24E0DB3D4(double a1)
{
  v2 = v1;
  v4 = sub_24E344478();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24E3444A8();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v30[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277D22788], v4, v14);
  sub_24E344488();
  v17 = *(v2 + 224);
  v18 = *(v2 + 232);
  __swift_project_boxed_opaque_existential_1((v2 + 200), v17);
  v33 = v17;
  v34 = *(*(v18 + 8) + 8);
  __swift_allocate_boxed_opaque_existential_1(&v32);
  OUTLINED_FUNCTION_6_45();
  (*(v19 + 16))();
  sub_24DF89628(v2, v31);
  v30[3] = sub_24E3442F8();
  v30[4] = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v30);
  sub_24E3442E8();
  v36 = sub_24E344888();
  v37 = MEMORY[0x277D22900];
  __swift_allocate_boxed_opaque_existential_1(v35);
  sub_24E344878();
  sub_24E344498();
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_24DF89628(v2 + 40, &v32);
  v20 = sub_24E344838();
  v21 = MEMORY[0x277D228E0];
  v36 = v20;
  v37 = MEMORY[0x277D228E0];
  __swift_allocate_boxed_opaque_existential_1(v35);
  sub_24E344848();
  sub_24E344498();
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_24DF8968C(v2 + 280, &v32);
  if (v33)
  {
    sub_24DF88BF0(&v32, v35);
    __swift_project_boxed_opaque_existential_1(v35, v36);
    if (sub_24E344098() & 1) == 0 && (*(v2 + 192))
    {
      v22 = v36;
      v23 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v33 = v22;
      v34 = *(v23 + 8);
      __swift_allocate_boxed_opaque_existential_1(&v32);
      OUTLINED_FUNCTION_6_45();
      (*(v24 + 16))();
      sub_24E344498();
      __swift_destroy_boxed_opaque_existential_1(&v32);
      sub_24DF89628(v2 + 40, v31);
      v33 = v20;
      v34 = v21;
      __swift_allocate_boxed_opaque_existential_1(&v32);
      sub_24E344848();
      sub_24E344498();
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_24DF8C95C(&v32, &qword_27F1DEE30);
  }

  v25 = *(v2 + 264);
  v26 = *(v2 + 272);
  __swift_project_boxed_opaque_existential_1((v2 + 240), v25);
  v36 = v25;
  v37 = *(v26 + 8);
  __swift_allocate_boxed_opaque_existential_1(v35);
  OUTLINED_FUNCTION_6_45();
  (*(v27 + 16))();
  sub_24E344498();
  __swift_destroy_boxed_opaque_existential_1(v35);
  swift_getObjectType();
  sub_24E0B7968();
  sub_24E348538();
  sub_24E344468();
  (*(v12 + 8))(v16, v10);
  return a1;
}

uint64_t sub_24E0DB88C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 193))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_24E0DB8CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 193) = 1;
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

    *(result + 193) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_24E0DB94C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E0DBA28()
{
  result = qword_27F1E3888;
  if (!qword_27F1E3888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3888);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_35()
{

  return sub_24E344198();
}

uint64_t OUTLINED_FUNCTION_8_36()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_12_21()
{
  *(v3 - 584) = v2;
  *(v3 - 368) = v0;
  *(v3 - 576) = v1;
}

uint64_t OUTLINED_FUNCTION_16_22()
{

  return sub_24E3440E8();
}

uint64_t OUTLINED_FUNCTION_17_20()
{

  return sub_24E2548A0(v0, v1);
}

uint64_t OUTLINED_FUNCTION_18_21()
{

  return sub_24E3440B8();
}

uint64_t OUTLINED_FUNCTION_20_17()
{

  return sub_24E3487E8();
}

uint64_t sub_24E0DBC6C(uint64_t a1, void *a2)
{
  result = sub_24DFD8654(a1);
  v21 = result;
  v4 = 0;
  while (1)
  {
    if (v21 == v4)
    {

      return 0;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v5 = MEMORY[0x25303F560](v4, a1);
LABEL_6:
    v6 = v5;
    v7 = [v5 contact];
    v8 = [v7 identifier];

    v9 = sub_24E347CF8();
    v11 = v10;

    v12 = [a2 contact];
    v13 = [v12 identifier];

    v14 = sub_24E347CF8();
    v16 = v15;

    if (v9 == v14 && v11 == v16)
    {

      return v4;
    }

    v18 = sub_24E348C08();

    if (v18)
    {

      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_20;
    }
  }

  if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a1 + 8 * v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24E0DBE90()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_94();
  sub_24E0DD8EC(v0, v1);
  OUTLINED_FUNCTION_6_42();

  swift_beginAccess();
}

uint64_t sub_24E0DBF54(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24E0DD69C(v3, a1);

  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_62();
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_1_81();
    sub_24E0DD578();
  }

  else
  {
    *(v1 + 16) = a1;
  }
}

uint64_t sub_24E0DC028(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

void (*sub_24E0DC090(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC12GameCenterUI27FriendSuggestionsDataSource___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_94();
  v3[6] = sub_24E0DD8EC(v4, v5);
  sub_24E343538();

  *v3 = v1;
  swift_getKeyPath();
  sub_24E343558();

  v3[7] = sub_24E0DBE40();
  return sub_24E0DC1A4;
}

void sub_24E0DC1A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24E343548();

  free(v1);
}

uint64_t sub_24E0DC238()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_94();
  sub_24E0DD8EC(v0, v1);
  OUTLINED_FUNCTION_6_42();

  swift_beginAccess();
}

uint64_t sub_24E0DC2FC(uint64_t a1)
{
  swift_beginAccess();
  if (sub_24E12D524(*(v1 + 24), a1))
  {
    *(v1 + 24) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_62();
    MEMORY[0x28223BE20](v4);
    OUTLINED_FUNCTION_1_81();
    sub_24E0DD578();
  }
}

uint64_t sub_24E0DC3C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

void *sub_24E0DC428()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_94();
  sub_24E0DD8EC(v1, v2);
  OUTLINED_FUNCTION_6_42();

  v3 = *(v0 + 32);
  v4 = v3;
  return v3;
}

void sub_24E0DC4B0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24E0DC4E0(v1);
}

void sub_24E0DC4E0(void *a1)
{
  v3 = *(v1 + 32);
  v4 = v3;
  LOBYTE(v3) = sub_24E0DD620(v3, a1);

  if (v3)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_62();
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_1_81();
    sub_24E0DD578();
  }

  else
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }
}

void sub_24E0DC5BC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = a2;
  v3 = a2;
}

void *sub_24E0DC5F0()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v0[2] = 0;
  v0[3] = v2;
  v0[4] = 0;
  sub_24E343568();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = objc_allocWithZone(type metadata accessor for FriendSuggestionsDataSource.DataUpdateDelegate());
  v5 = sub_24E0DD35C(sub_24E0DD8C0, v3);
  sub_24E0DC4E0(v5);
  return v1;
}

void sub_24E0DC690(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E346EE8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24E346F08();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 21)
  {
    if (a1 != 4)
    {
      return;
    }

    v26 = sub_24E347CF8();
    v27 = v14;
    sub_24E348918();
    sub_24E12C94C(a2, &v28);
    sub_24DF8BE60(aBlock);
    if (v29)
    {
      if (swift_dynamicCast())
      {
        v16 = v26;
        v15 = v27;
        sub_24DF88A8C(0, &qword_27F1DFCD0);
        v24 = sub_24E348368();
        v17 = swift_allocObject();
        v17[2] = a3;
        v17[3] = v16;
        v17[4] = v15;
        aBlock[4] = sub_24E0DD8C8;
        aBlock[5] = v17;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24E00B24C;
        aBlock[3] = &block_descriptor_43;
        v18 = _Block_copy(aBlock);

        sub_24E346EF8();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_24E0DD8EC(&qword_27F1DFD00, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90);
        sub_24DFCD5F4();
        sub_24E3487E8();
        v19 = v24;
        MEMORY[0x25303EED0](0, v13, v9, v18);
        _Block_release(v18);

        (*(v7 + 8))(v9, v6);
        (*(v11 + 8))(v13, v10);
      }

      return;
    }

LABEL_9:
    sub_24DFA9298(&v28, &qword_27F1E0370);
    return;
  }

  v26 = sub_24E347CF8();
  v27 = v20;
  sub_24E348918();
  sub_24E12C94C(a2, &v28);
  sub_24DF8BE60(aBlock);
  if (!v29)
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v21 = v26;
    v22 = v27;
    sub_24DF88A8C(0, &qword_280BDFA90);
    static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)(v21, v22);
  }
}

uint64_t sub_24E0DCABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_getKeyPath();
    sub_24E0DD8EC(&unk_27F1E38C0, type metadata accessor for FriendSuggestionsDataSource);

    sub_24E343538();

    swift_getKeyPath();
    sub_24E343558();

    swift_beginAccess();
    sub_24E0111D0();
    v7 = *(*(v6 + 24) + 16);
    sub_24E1242A0(v7);
    v8 = *(v6 + 24);
    *(v8 + 16) = v7 + 1;
    v9 = v8 + 16 * v7;
    *(v9 + 32) = a2;
    *(v9 + 40) = a3;
    *(v6 + 24) = v8;
    swift_endAccess();
    swift_getKeyPath();
    sub_24E343548();
  }

  return result;
}

uint64_t sub_24E0DCC54()
{
  if (sub_24E0DBE90())
  {
  }

  else
  {
    sub_24E0DBF54(MEMORY[0x277D84F90]);
    type metadata accessor for GameCenter();
    swift_initStaticObject();
    sub_24E2EFE4C();
    v1 = sub_24DF88A8C(0, &qword_27F1DFCD0);
    swift_retain_n();
    v2 = sub_24E348368();
    v3[3] = v1;
    v3[4] = MEMORY[0x277D225C0];
    v3[0] = v2;
    sub_24E347A78();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }
}

uint64_t sub_24E0DCDA0(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343CC8();
  v6 = a1;
  v7 = sub_24E343F78();
  v8 = sub_24E348258();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24DE53000, v7, v8, "FriendSuggestionsDataSource fetchFriendSuggestionsData - unable to fetch friend suggestions: %@", v9, 0xCu);
    sub_24DFA9298(v10, &unk_27F1DF730);
    MEMORY[0x253040EE0](v10, -1, -1);
    MEMORY[0x253040EE0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_24E0DBF54(MEMORY[0x277D84F90]);
}

void sub_24E0DCF64(void *a1)
{
  v3 = [objc_opt_self() proxyForLocalPlayer];
  v4 = [v3 utilityServicePrivate];

  v5 = [a1 contact];
  v6 = [v5 identifier];

  if (!v6)
  {
    sub_24E347CF8();
    v6 = sub_24E347CB8();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = a1;
  v10[4] = sub_24E0DD934;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24E052CF0;
  v10[3] = &block_descriptor_30;
  v8 = _Block_copy(v10);

  v9 = a1;

  [v4 denyContact:v6 handler:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();
}

uint64_t sub_24E0DD0F4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_24E343F88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_24E343CC8();
    v10 = a1;
    v11 = sub_24E343F78();
    v12 = sub_24E348258();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_24DE53000, v11, v12, "FriendSuggestionsDataSource ignoreFriendSuggestion - Unable to add contact to suggestions denylist: %@", v13, 0xCu);
      sub_24DFA9298(v14, &unk_27F1DF730);
      MEMORY[0x253040EE0](v14, -1, -1);
      MEMORY[0x253040EE0](v13, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
  }

  v18 = sub_24E0DC090(v24);
  if (!*v17)
  {
    return (v18)(v24, 0);
  }

  v19 = v17;
  sub_24E0DD93C(v17, a3);
  v21 = v20;
  result = sub_24DFD8654(*v19);
  if (result < v21)
  {
    __break(1u);
  }

  else
  {
    sub_24E25DDBC(v21, result);
    return (v18)(v24, 0);
  }

  return result;
}

id sub_24E0DD35C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtCC12GameCenterUI27FriendSuggestionsDataSourceP33_F815CB2A6384F01E6B425971DC87B4FC18DataUpdateDelegate_updateBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 daemonProxy];
  [v10 addDataUpdateDelegate_];

  return v9;
}

uint64_t sub_24E0DD424(uint64_t result)
{
  if (result == 21 || result == 4)
  {
    return (*(v1 + OBJC_IVAR____TtCC12GameCenterUI27FriendSuggestionsDataSourceP33_F815CB2A6384F01E6B425971DC87B4FC18DataUpdateDelegate_updateBlock))();
  }

  return result;
}

uint64_t sub_24E0DD578()
{
  OUTLINED_FUNCTION_0_94();
  sub_24E0DD8EC(v0, v1);
  return sub_24E343528();
}

BOOL sub_24E0DD620(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for FriendSuggestionsDataSource.DataUpdateDelegate();
    v5 = a1;
    v6 = a2;
    v2 = sub_24E348628();
  }

  return (v2 & 1) == 0;
}

BOOL sub_24E0DD69C(unint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_24E12D960(a1, a2);
  }

  return !v3;
}

uint64_t sub_24E0DD6D8()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI27FriendSuggestionsDataSource___observationRegistrar;
  sub_24E343578();
  OUTLINED_FUNCTION_0_26();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_24E0DD744()
{
  sub_24E0DD6D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FriendSuggestionsDataSource()
{
  result = qword_27F1E38A0;
  if (!qword_27F1E38A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0DD7F0()
{
  result = sub_24E343578();
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

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E0DD8EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24E0DD93C(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = sub_24E0DBC6C(v4, v5);
  if (v2)
  {
    goto LABEL_45;
  }

  v38 = v6;
  if (v7)
  {
    sub_24DFD8654(v4);
LABEL_45:

    return;
  }

  v36 = 0;
  v37 = a1;
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      if (v4 >> 62)
      {
        v9 = sub_24E348878();
      }

      else
      {
        v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v8 == v9)
      {
        goto LABEL_45;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25303F560](v8, v4);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
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
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 contact];
      v13 = [v12 identifier];

      v14 = sub_24E347CF8();
      v16 = v15;

      v17 = v5;
      v18 = [v5 contact];
      v19 = [v18 identifier];

      v20 = sub_24E347CF8();
      v22 = v21;

      if (v14 == v20 && v16 == v22)
      {
        break;
      }

      v24 = sub_24E348C08();

      if (v24)
      {
        goto LABEL_21;
      }

      v25 = v38;
      if (v38 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x25303F560]();
          v27 = MEMORY[0x25303F560](v8, v4);
        }

        else
        {
          if ((v38 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v28 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38 >= v28)
          {
            goto LABEL_52;
          }

          if (v8 >= v28)
          {
            goto LABEL_53;
          }

          v29 = *(v4 + 32 + 8 * v8);
          v26 = *(v4 + 32 + 8 * v38);
          v27 = v29;
        }

        v30 = v27;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_24E25ACD8(v4);
          v31 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v31) = 0;
        }

        v5 = (v4 & 0xFFFFFFFFFFFFFF8);
        v32 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v38 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v38 + 0x20) = v30;

        if ((v4 & 0x8000000000000000) != 0 || v31)
        {
          v4 = sub_24E25ACD8(v4);
          v5 = (v4 & 0xFFFFFFFFFFFFFF8);
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        if (v8 >= v5[2])
        {
          goto LABEL_50;
        }

        v33 = &v5[v8];
        v34 = v33[4];
        v33[4] = v26;

        v25 = v38;
        *v37 = v4;
      }

      v38 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_49;
      }

      v5 = v17;
LABEL_38:
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_48;
      }
    }

LABEL_21:
    v5 = v17;
    goto LABEL_38;
  }

LABEL_54:
  __break(1u);
}

uint64_t sub_24E0DDD2C(uint64_t a1, void *a2)
{
  result = sub_24DFD8654(a1);
  v19 = result;
  v4 = 0;
  while (1)
  {
    if (v19 == v4)
    {

      return 0;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v5 = MEMORY[0x25303F560](v4, a1);
LABEL_6:
    v6 = v5;
    v7 = [v5 playerID];
    v8 = sub_24E347CF8();
    v10 = v9;

    v11 = [a2 playerID];
    v12 = sub_24E347CF8();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {

      return v4;
    }

    v16 = sub_24E348C08();

    if (v16)
    {

      return v4;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_20;
    }
  }

  if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a1 + 8 * v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24E0DDEC0()
{
  swift_getKeyPath();
  sub_24E0E0D18();
  OUTLINED_FUNCTION_6_42();

  swift_beginAccess();
}

uint64_t sub_24E0DDF64(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24E0E04A8(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_63();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    sub_24E0E0420();
  }

  else
  {
    *(v1 + 16) = a1;
  }
}

void (*sub_24E0DE044(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC12GameCenterUI24FriendRequestsDataSource___observationRegistrar;
  *v3 = v1;
  v3[6] = sub_24E0E0D18();
  sub_24E343538();

  *v3 = v1;
  swift_getKeyPath();
  sub_24E343558();

  v3[7] = sub_24E0DBE40();
  return sub_24E0DE138;
}

void sub_24E0DE138(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24E343548();

  free(v1);
}

uint64_t sub_24E0DE1CC()
{
  swift_getKeyPath();
  sub_24E0E0D18();
  OUTLINED_FUNCTION_6_42();

  return *(v0 + 24);
}

uint64_t sub_24E0DE22C()
{
  OUTLINED_FUNCTION_56_0();
  result = sub_24E0DE1CC();
  *v0 = result & 1;
  return result;
}

uint64_t sub_24E0DE280(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_63();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_24E0E0420();
  }

  return result;
}

void *sub_24E0DE320()
{
  swift_getKeyPath();
  sub_24E0E0D18();
  OUTLINED_FUNCTION_6_42();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_24E0DE388(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24E0DE3B8(v1);
}

void sub_24E0DE3B8(void *a1)
{
  v3 = *(v1 + 32);
  v4 = v3;
  LOBYTE(v3) = sub_24E0E04E4(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_63();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    sub_24E0E0420();
  }

  else
  {
    v7 = *(v1 + 32);
    *(v1 + 32) = a1;
  }
}

void sub_24E0DE4A0()
{
  v0 = sub_24E0DE1CC();
  v1 = sub_24E0DDEC0();
  v2 = v1;
  if ((v0 & 1) != 0 && v1)
  {
    v3 = sub_24DFD8654(v1);
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x25303F560](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ([v5 isFriendInvitationInContacts])
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_24E0DE5D0()
{
  type metadata accessor for GameCenter();
  swift_initStaticObject();
  sub_24E2F0D88();
  v0 = sub_24DF88A8C(0, &qword_27F1DFCD0);
  swift_retain_n();
  v1 = sub_24E348368();
  v3[3] = v0;
  v3[4] = MEMORY[0x277D225C0];
  v3[0] = v1;
  sub_24E347A78();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

void sub_24E0DE6B4(uint64_t *a1)
{
  v1 = sub_24E0DE89C(*a1);
  sub_24E0DDF64(v1);
  sub_24E0DEDD0();
}

uint64_t sub_24E0DE6E4(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343CC8();
  v6 = a1;
  v7 = sub_24E343F78();
  v8 = sub_24E348258();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24DE53000, v7, v8, "Unable to fetch friend requests: %@", v9, 0xCu);
    sub_24E0C60AC(v10);
    MEMORY[0x253040EE0](v10, -1, -1);
    MEMORY[0x253040EE0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_24E0DEDD0();
  return sub_24E0DDF64(MEMORY[0x277D84F90]);
}

id sub_24E0DE89C(uint64_t a1)
{
  sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v51 = v3;
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24DFD8654(a1);
  v6 = v5;
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    v59 = MEMORY[0x277D84F90];
    result = sub_24E12F080(0, v5 & ~(v5 >> 63), 0);
    if (v6 < 0)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v9 = 0;
    v10 = v59;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25303F560](v9, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v12 playerID];
      v14 = sub_24E347CF8();
      v16 = v15;

      v59 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24E12F080((v17 > 1), v18 + 1, 1);
        v10 = v59;
      }

      ++v9;
      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v6 != v9);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v20 = *(sub_24E07F614(v10) + 16);

  if (__OFSUB__(v6, v20))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v6 - v20 > 0)
  {
    v59 = v7;
    v21 = sub_24DFD8654(a1);
    v22 = 0;
    v57 = a1 & 0xC000000000000001;
    v58 = v21;
    v54 = a1 + 32;
    v56 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v22 == v58)
      {
        v44 = v59;
        goto LABEL_42;
      }

      v23 = v57;
      sub_24DFFA844(v22, v57 == 0, a1);
      result = v23 ? MEMORY[0x25303F560](v22, a1) : *(v54 + 8 * v22);
      v24 = result;
      v25 = __OFADD__(v22, 1);
      v26 = v22 + 1;
      if (v25)
      {
        break;
      }

      v55 = v26;
      v27 = 0;
      v28 = 0;
      while (v58 != v27)
      {
        if (v57)
        {
          result = MEMORY[0x25303F560](v27, a1);
        }

        else
        {
          if (v27 >= *(v56 + 16))
          {
            goto LABEL_49;
          }

          result = *(a1 + 8 * v27 + 32);
        }

        v29 = result;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v30 = a1;
        v31 = [result playerID];
        v32 = sub_24E347CF8();
        v34 = v33;

        v35 = [v24 playerID];
        v36 = sub_24E347CF8();
        v38 = v37;

        if (v32 == v36 && v34 == v38)
        {

          v41 = 1;
        }

        else
        {
          v40 = sub_24E348C08();

          v41 = v40 & 1;
        }

        ++v27;
        v25 = __OFADD__(v28, v41);
        v28 += v41;
        a1 = v30;
        if (v25)
        {
          goto LABEL_48;
        }
      }

      if (v28 > 1 && (v42 = [v24 inboxEntry]) != 0)
      {
        v43 = v42;

        v22 = v55;
      }

      else
      {
        sub_24E348A48();
        sub_24E348A78();
        sub_24E348A88();
        sub_24E348A58();
        v22 = v55;
      }
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v44 = a1;
LABEL_42:
  sub_24E343CC8();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v45 = sub_24E343F78();
  v46 = sub_24E348238();
  if (!os_log_type_enabled(v45, v46))
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_46;
  }

  v47 = swift_slowAlloc();
  *v47 = 134218496;
  *(v47 + 4) = sub_24DFD8654(a1);

  *(v47 + 12) = 2048;
  v48 = sub_24DFD8654(a1);
  result = sub_24DFD8654(v44);
  if (!__OFSUB__(v48, result))
  {
    *(v47 + 14) = v48 - result;

    *(v47 + 22) = 2048;
    v49 = sub_24DFD8654(v44);

    *(v47 + 24) = v49;

    _os_log_impl(&dword_24DE53000, v45, v46, "FriendRequestsDataSource.dedupeFriendRequests: gamed returned %ld friend requests. %ld were removed for being duplicates, leaving %ld", v47, 0x20u);
    MEMORY[0x253040EE0](v47, -1, -1);

LABEL_46:
    (*(v51 + 8))(v53, v52);
    return v44;
  }

LABEL_53:
  __break(1u);
  return result;
}

void sub_24E0DEDD0()
{
  v0 = sub_24E0DE320();
  if (v0)
  {
  }

  else
  {
    v1 = swift_allocObject();
    swift_weakInit();
    v2 = objc_allocWithZone(type metadata accessor for FriendRequestsDataSource.FriendRequestDataUpdateDelegate());
    v3 = sub_24E0E0208(sub_24E0E0D00, v1);

    sub_24E0DE3B8(v3);
  }
}

uint64_t sub_24E0DEE78()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E0DE5D0();
  }

  return result;
}

uint64_t sub_24E0DEED0(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24E0DEEF0, 0, 0);
}

uint64_t sub_24E0DEEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(v16 + 48);
  sub_24E0DE3B8(0);
  v18 = [v17 inboxEntry];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 senderDisplayName];
LABEL_5:
    v22 = v20;

    v23 = sub_24E347CF8();
    v25 = v24;

LABEL_6:
    sub_24DF88A8C(0, &qword_280BDFA90);
    static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)(v23, v25);

    goto LABEL_7;
  }

  v21 = [*(v16 + 48) contact];
  if (v21)
  {
    v19 = v21;
    v20 = [v21 _gkCompositeName];
    goto LABEL_5;
  }

  v45 = sub_24E0C5B1C(*(v16 + 48));
  if (v46)
  {
    v23 = v45;
    v25 = v46;
    goto LABEL_6;
  }

LABEL_7:
  v27 = sub_24E0DE044((v16 + 16));
  if (*v26)
  {
    v28 = v26;
    sub_24E0E086C(v26, *(v16 + 48));
    v30 = v29;
    v31 = sub_24DFD8654(*v28);
    if (v31 < v30)
    {
      __break(1u);
      return MEMORY[0x2822008A0](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    sub_24E25DE10(v30, v31);
  }

  (v27)(v16 + 16, 0);
  v39 = [*(v16 + 48) inboxEntry];
  v41 = *(v16 + 48);
  v40 = *(v16 + 56);
  if (v39)
  {

    v42 = swift_task_alloc();
    *(v16 + 64) = v42;
    *(v42 + 16) = v41;
    *(v42 + 24) = v40;
    v31 = swift_task_alloc();
    *(v16 + 72) = v31;
    *v31 = v16;
    v31[1] = sub_24E0DF1D4;
    v43 = MEMORY[0x277D84F78];
    v44 = sub_24E0E0B70;
  }

  else
  {
    v42 = swift_task_alloc();
    *(v16 + 88) = v42;
    *(v42 + 16) = v41;
    *(v42 + 24) = v40;
    v31 = swift_task_alloc();
    *(v16 + 96) = v31;
    *v31 = v16;
    v31[1] = sub_24E0DF2FC;
    v43 = MEMORY[0x277D84F78];
    v44 = sub_24E0E0B68;
  }

  v36 = v44;
  v35 = 0x800000024E3A6E50;
  v38 = v43 + 8;
  v32 = 0;
  v33 = 0;
  v34 = 0xD00000000000001ALL;
  v37 = v42;

  return MEMORY[0x2822008A0](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_24E0DF1D4()
{
  OUTLINED_FUNCTION_9_7();
  v2 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v2 + 80) = v0;

  if (v0)
  {
    v6 = sub_24E0DF40C;
  }

  else
  {

    v6 = sub_24E0DF2E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24E0DF2FC()
{
  OUTLINED_FUNCTION_9_7();
  v2 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
    v6 = sub_24E0DF46C;
  }

  else
  {

    v6 = sub_24E0E0D8C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24E0DF40C()
{
  OUTLINED_FUNCTION_9_7();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E0DF46C()
{
  OUTLINED_FUNCTION_9_7();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E0DF4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 friendServicePrivate];

  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_24E0E0B78;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_37;
  v14 = _Block_copy(aBlock);

  [v11 didAccept:1 friendRequest:a2 handler:v14];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_24E0DF6E8(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E0DE5D0();
  if (a1)
  {
    v6 = a1;
    sub_24E343CC8();
    v7 = a1;
    v8 = sub_24E343F78();
    v9 = sub_24E348258();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_24DE53000, v8, v9, "FriendRequestsDataSource - acceptFriendRequest didAccept call to daemon failed with error: %@", v10, 0xCu);
      sub_24E0C60AC(v11);
      MEMORY[0x253040EE0](v11, -1, -1);
      MEMORY[0x253040EE0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v15[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
    return sub_24E348008();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
    return sub_24E348018();
  }
}

void sub_24E0DF8F4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 friendServicePrivate];

  v12 = [a2 playerID];
  if (!v12)
  {
    sub_24E347CF8();
    v12 = sub_24E347CB8();
  }

  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_24E0E0C54;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_43;
  v15 = _Block_copy(aBlock);

  [v11 acceptFriendInvitationWithPlayerID:v12 completion:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

uint64_t sub_24E0DFB48(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_24E343CC8();
    v7 = a1;
    v8 = sub_24E343F78();
    v9 = sub_24E348258();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_24DE53000, v8, v9, "FriendRequestsDataSource - acceptFriendRequest acceptFriendInvitation call to daemon failed with error: %@", v10, 0xCu);
      sub_24E0C60AC(v11);
      MEMORY[0x253040EE0](v11, -1, -1);
      MEMORY[0x253040EE0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sub_24E0DE5D0();
    v15[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
    return sub_24E348008();
  }

  else
  {
    sub_24E0DE5D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
    return sub_24E348018();
  }
}

void sub_24E0DFD5C(void *a1)
{
  v3 = [a1 inboxEntry];
  if (v3)
  {

    v4 = [objc_opt_self() proxyForLocalPlayer];
    v5 = [v4 friendServicePrivate];

    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = a1;
    OUTLINED_FUNCTION_0_95();
    v16 = 1107296256;
    v17 = sub_24E052CF0;
    v18 = &block_descriptor_28;
    v7 = _Block_copy(&v15);

    v8 = a1;

    [v5 didAccept:0 friendRequest:v8 handler:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = [objc_opt_self() proxyForLocalPlayer];
    v10 = [v9 friendServicePrivate];

    v11 = [a1 playerID];
    if (!v11)
    {
      sub_24E347CF8();
      v11 = sub_24E347CB8();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = a1;
    OUTLINED_FUNCTION_0_95();
    v16 = 1107296256;
    v17 = sub_24E052CF0;
    v18 = &block_descriptor_44;
    v13 = _Block_copy(&v15);

    v14 = a1;

    [v10 ignoreFriendInvitationWithPlayerID:v11 completion:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_24E0DFFB8(void *a1, uint64_t a2, void *a3, const char *a4)
{
  v7 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    sub_24E343CC8();
    v14 = a1;
    v15 = sub_24E343F78();
    v16 = sub_24E348258();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_24DE53000, v15, v16, a4, v17, 0xCu);
      sub_24E0C60AC(v18);
      MEMORY[0x253040EE0](v18, -1, -1);
      MEMORY[0x253040EE0](v17, -1, -1);
    }

    else
    {
    }

    return (*(v9 + 8))(v12, v7);
  }

  else
  {
    v22 = sub_24E0DE044(v28);
    if (*v21)
    {
      v23 = v21;
      sub_24E0E086C(v21, a3);
      v25 = v24;
      result = sub_24DFD8654(*v23);
      if (result < v25)
      {
        __break(1u);
      }

      else
      {
        sub_24E25DE10(v25, result);
        return (v22)(v28, 0);
      }
    }

    else
    {
      return (v22)(v28, 0);
    }
  }

  return result;
}

id sub_24E0E0208(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtCC12GameCenterUI24FriendRequestsDataSourceP33_EC238EB52926426EF919E35F59F47DC431FriendRequestDataUpdateDelegate_updateBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 daemonProxy];
  [v10 addDataUpdateDelegate_];

  return v9;
}

uint64_t sub_24E0E02D0(uint64_t result)
{
  if (result == 3)
  {
    return (*(v1 + OBJC_IVAR____TtCC12GameCenterUI24FriendRequestsDataSourceP33_EC238EB52926426EF919E35F59F47DC431FriendRequestDataUpdateDelegate_updateBlock))();
  }

  return result;
}

BOOL sub_24E0E04A8(unint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_24E12DB34(a1, a2);
  }

  return !v3;
}

BOOL sub_24E0E04E4(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for FriendRequestsDataSource.FriendRequestDataUpdateDelegate();
    v5 = a1;
    v6 = a2;
    v2 = sub_24E348628();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_24E0E0560()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI24FriendRequestsDataSource___observationRegistrar;
  v2 = sub_24E343578();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_24E0E05D0()
{
  sub_24E0E0560();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for FriendRequestsDataSource()
{
  result = qword_27F1E38E0;
  if (!qword_27F1E38E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0E067C()
{
  result = sub_24E343578();
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

id sub_24E0E0748()
{
  *(v0 + 16) = 0;
  result = [objc_opt_self() shared];
  if (result)
  {
    v2 = result;
    v3 = [result inboxContactsOnly];

    *(v0 + 24) = v3;
    *(v0 + 32) = 0;
    sub_24E343568();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24E0E086C(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = sub_24E0DDD2C(v4, v5);
  if (v2)
  {
    goto LABEL_43;
  }

  v35 = v6;
  if (v7)
  {
    sub_24DFD8654(v4);
LABEL_43:

    return;
  }

  v34 = a1;
  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      v9 = v4 >> 62 ? sub_24E348878() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 == v9)
      {
        goto LABEL_43;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25303F560](v8, v4);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
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
          break;
        }

        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 playerID];
      v13 = sub_24E347CF8();
      v15 = v14;

      v16 = v5;
      v17 = [v5 playerID];
      v18 = sub_24E347CF8();
      v20 = v19;

      if (v13 == v18 && v15 == v20)
      {
      }

      else
      {
        v22 = sub_24E348C08();

        if ((v22 & 1) == 0)
        {
          v23 = v35;
          if (v35 != v8)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x25303F560]();
              v25 = MEMORY[0x25303F560](v8, v4);
            }

            else
            {
              if ((v35 & 0x8000000000000000) != 0)
              {
                goto LABEL_49;
              }

              v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v35 >= v26)
              {
                goto LABEL_50;
              }

              if (v8 >= v26)
              {
                goto LABEL_51;
              }

              v27 = *(v4 + 32 + 8 * v8);
              v24 = *(v4 + 32 + 8 * v35);
              v25 = v27;
            }

            v28 = v25;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = sub_24E25ACD8(v4);
              v29 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v29) = 0;
            }

            v5 = (v4 & 0xFFFFFFFFFFFFFF8);
            v30 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v35 + 0x20);
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v35 + 0x20) = v28;

            if ((v4 & 0x8000000000000000) != 0 || v29)
            {
              v4 = sub_24E25ACD8(v4);
              v5 = (v4 & 0xFFFFFFFFFFFFFF8);
              if ((v8 & 0x8000000000000000) != 0)
              {
LABEL_42:
                __break(1u);
                goto LABEL_43;
              }
            }

            else if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (v8 >= v5[2])
            {
              goto LABEL_48;
            }

            v31 = &v5[v8];
            v32 = v31[4];
            v31[4] = v24;

            v23 = v35;
            *v34 = v4;
          }

          v35 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_47;
          }
        }
      }

      v5 = v16;
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_46;
      }
    }
  }

  __break(1u);
}

uint64_t objectdestroy_33Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40);
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_24E0E0C6C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

unint64_t sub_24E0E0D18()
{
  result = qword_27F1E3908;
  if (!qword_27F1E3908)
  {
    type metadata accessor for FriendRequestsDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3908);
  }

  return result;
}

uint64_t sub_24E0E0DD0()
{
  swift_getKeyPath();
  sub_24E0E1A90();
  OUTLINED_FUNCTION_6_42();
}

uint64_t sub_24E0E0E60(uint64_t a1)
{

  v4 = sub_24E0E04A8(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_1_81();
    sub_24E0E177C();
  }

  else
  {
    *(v1 + 16) = a1;
  }
}

uint64_t sub_24E0E0F48(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

void *sub_24E0E0F84()
{
  swift_getKeyPath();
  sub_24E0E1A90();
  OUTLINED_FUNCTION_6_42();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_24E0E0FEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24E0E101C(v1);
}

void sub_24E0E101C(void *a1)
{
  v3 = *(v1 + 24);
  v4 = v3;
  LOBYTE(v3) = sub_24E0E1804(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_1_81();
    sub_24E0E177C();
  }

  else
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;
  }
}

void sub_24E0E1100(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
  v3 = a2;
}

uint64_t sub_24E0E1134()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_24E343568();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = objc_allocWithZone(type metadata accessor for AllFriendsDataSource.FriendDataUpdateDelegate());
  v4 = sub_24E0E1564(sub_24E0E1A5C, v2);
  sub_24E0E101C(v4);
  return v1;
}

uint64_t sub_24E0E11C8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24E0E1220();
  }

  return result;
}

uint64_t sub_24E0E1344()
{

  v2 = sub_24E0833B4(v0);
  sub_24E1D4198(&v2);
  return sub_24E0E0E60(v2);
}

uint64_t sub_24E0E13B0(void *a1)
{
  v2 = sub_24E343F88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E343CC8();
  v6 = a1;
  v7 = sub_24E343F78();
  v8 = sub_24E348258();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_24DE53000, v7, v8, "Unable to fetch friends list: %@", v9, 0xCu);
    sub_24E0C60AC(v10);
    MEMORY[0x253040EE0](v10, -1, -1);
    MEMORY[0x253040EE0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_24E0E0E60(MEMORY[0x277D84F90]);
}

id sub_24E0E1564(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtCC12GameCenterUI20AllFriendsDataSourceP33_761C47502D29AA1BE27B103BF361D03024FriendDataUpdateDelegate_updateBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v12, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 daemonProxy];
  [v10 addDataUpdateDelegate_];

  return v9;
}

uint64_t sub_24E0E162C(uint64_t result)
{
  if (result == 2)
  {
    return (*(v1 + OBJC_IVAR____TtCC12GameCenterUI20AllFriendsDataSourceP33_761C47502D29AA1BE27B103BF361D03024FriendDataUpdateDelegate_updateBlock))();
  }

  return result;
}

BOOL sub_24E0E1804(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    type metadata accessor for AllFriendsDataSource.FriendDataUpdateDelegate();
    v5 = a1;
    v6 = a2;
    v2 = sub_24E348628();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_24E0E1880()
{

  v1 = OBJC_IVAR____TtC12GameCenterUI20AllFriendsDataSource___observationRegistrar;
  v2 = sub_24E343578();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_24E0E18F0()
{
  sub_24E0E1880();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AllFriendsDataSource()
{
  result = qword_27F1E3920;
  if (!qword_27F1E3920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0E199C()
{
  result = sub_24E343578();
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

unint64_t sub_24E0E1A90()
{
  result = qword_27F1E3940;
  if (!qword_27F1E3940)
  {
    type metadata accessor for AllFriendsDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3940);
  }

  return result;
}

GameCenterUI::JetDashboardSectionType_optional __swiftcall JetDashboardSectionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_24E0E1B24()
{
  result = qword_27F1E3950;
  if (!qword_27F1E3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3950);
  }

  return result;
}

uint64_t sub_24E0E1B80@<X0>(uint64_t *a1@<X8>)
{
  result = JetDashboardSectionType.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for JetDashboardSectionType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_24E0E1C88()
{
  result = qword_27F1E3958;
  if (!qword_27F1E3958)
  {
    type metadata accessor for JetDashboardSectionData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3958);
  }

  return result;
}

uint64_t type metadata accessor for JetDashboardSectionData()
{
  result = qword_27F1E3960;
  if (!qword_27F1E3960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0E1D84()
{
  sub_24DF9E030(319, &qword_280BE0128);
  if (v0 <= 0x3F)
  {
    sub_24DFC2AD4(319, &qword_280BE0130, &qword_27F1DF158);
    if (v1 <= 0x3F)
    {
      sub_24DFC2AD4(319, &qword_280BDFB80, &qword_27F1E0F10);
      if (v2 <= 0x3F)
      {
        sub_24DF9E0E0();
        if (v3 <= 0x3F)
        {
          sub_24DF9E030(319, &qword_27F1E3970);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

id sub_24E0E1EB8(uint64_t a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  v7 = type metadata accessor for ExternalUrlAction();
  sub_24DFD8A60();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
  v8 = sub_24E347AD8();
  LODWORD(v6) = *(a1 + *(v7 + 20));
  result = [objc_opt_self() defaultWorkspace];
  v10 = result;
  if (v6 == 1)
  {
    if (result)
    {
      v11 = sub_24E343228();
      [v10 openSensitiveURL:v11 withOptions:0];
LABEL_6:

      (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
      sub_24E347AC8();
      (*(v3 + 8))(v5, v2);
      return v8;
    }

    __break(1u);
  }

  else if (result)
  {
    v11 = sub_24E343228();
    [v10 openURL_];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_24E0E20A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExternalUrlActionImplementation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_24E0E2100()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExternalUrlActionImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E0E215C()
{
  result = qword_27F1DF0A8;
  if (!qword_27F1DF0A8)
  {
    type metadata accessor for ExternalUrlAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1DF0A8);
  }

  return result;
}

_OWORD *sub_24E0E21CC(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2440);
  v2 = swift_allocObject();
  v3 = *a1;
  v4 = a1[1];
  v2[1] = xmmword_24E36A270;
  v2[2] = v3;
  v2[3] = v4;
  *(v2 + 57) = *(a1 + 25);
  sub_24E0E7650(&v11);
  v5 = v12[0];
  v2[5] = v11;
  v2[6] = v5;
  *(v2 + 105) = *(v12 + 9);
  sub_24E0E767C(&v13);
  v6 = v14;
  if (v14)
  {
    v7 = v13;
    sub_24E0E7BB8(a1, v10);
    sub_24E0773DC();
    v2 = v8;
    *(v8 + 16) = 3;
    *(v8 + 128) = v7;
    *(v8 + 136) = v6;
    *(v8 + 144) = v15[0];
    *(v8 + 153) = *(v15 + 9);
  }

  else
  {
    sub_24E0E7BB8(a1, v10);
  }

  return v2;
}

void sub_24E0E22BC()
{
  OUTLINED_FUNCTION_32();
  v42 = v2;
  v43 = v0;
  v45 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v44 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  v15 = v14 - v13;
  v16 = type metadata accessor for PlayerProfileAction();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  OUTLINED_FUNCTION_0_14();
  v41 = v22;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v41 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  OUTLINED_FUNCTION_4_5(v26);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27_6();
  v28 = (v7 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_displayedInPlayerProfile);
  v29 = *(v7 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_displayedInPlayerProfile + 8);
  v30 = *v9;
  v31 = v9[1];
  if (v29 && (v30 == *v28 ? (v32 = v29 == v31) : (v32 = 0), v32 || (sub_24E348C08() & 1) != 0))
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
    sub_24E347328();
    if (__swift_getEnumTagSinglePayload(v1, 1, v33) == 1)
    {
      sub_24DF8BFF4(v1, &unk_27F1EAC90);
    }

    else
    {
      v46[3] = type metadata accessor for ScrollToTopAction();
      v46[4] = sub_24E0E88B4(&qword_27F1E3990, type metadata accessor for ScrollToTopAction);
      __swift_allocate_boxed_opaque_existential_1(v46);
      sub_24E3471C8();
      v39 = v41;
      (*(v41 + 104))(v25, *MEMORY[0x277D21E18], v21);
      sub_24E3473B8();

      (*(v39 + 8))(v25, v21);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_22_0();
      (*(v40 + 8))(v1, v33);
    }
  }

  else
  {
    v41 = v5;
    v34 = 0xEA0000000000656DLL;
    v35 = 0x614E726579616C70;
    if (sub_24E323448(v45) == 1802398060 && v36 == 0xE400000000000000)
    {
    }

    else
    {
      v38 = OUTLINED_FUNCTION_20_18();

      if ((v38 & 1) == 0)
      {
        v35 = 0x49656C69666F7270;
        v34 = 0xEC0000006567616DLL;
      }
    }

    sub_24E0E5630(v45, v35, v34, v42, v15);

    *v20 = v30;
    *(v20 + 8) = v31;
    *(v20 + 16) = 1;
    (*(v11 + 32))(v20 + *(v16 + 24), v15, v44);
    *(v20 + *(v16 + 28)) = 0;
    sub_24E0E7874(v20);
    sub_24E0E885C(v20, type metadata accessor for PlayerProfileAction);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E0E26E8()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  OUTLINED_FUNCTION_4_5(v6);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  sub_24E0E8958(v3, v19 - v8, &unk_27F1DFC70);
  v10 = sub_24E348098();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_24DF8BFF4(v9, &unk_27F1DFC70);
  }

  else
  {
    sub_24E348088();
    OUTLINED_FUNCTION_22_0();
    (*(v12 + 8))(v9, v10);
  }

  v13 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_24E347FF8();
    v16 = v15;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v17 = sub_24E347D58() + 32;

      if (v16 | v14)
      {
        v20[0] = 0;
        v20[1] = 0;
        v18 = v20;
        v20[2] = v14;
        v20[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v19[1] = 7;
      v19[2] = v18;
      v19[3] = v17;
      OUTLINED_FUNCTION_44_5();

      sub_24DF8BFF4(v3, &unk_27F1DFC70);

      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_24DF8BFF4(v3, &unk_27F1DFC70);
  if (v16 | v14)
  {
    v20[4] = 0;
    v20[5] = 0;
    v20[6] = v14;
    v20[7] = v16;
  }

  OUTLINED_FUNCTION_44_5();
LABEL_14:
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E0E293C(const void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27_6();
  sub_24E348098();
  OUTLINED_FUNCTION_8_6();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a3;
  memcpy((v16 + 40), a1, 0x48uLL);
  *(v16 + 112) = v5;
  *(v16 + 120) = a4;
  *(v16 + 128) = a5;

  sub_24E00FD28(a1, v18);

  sub_24E0E26E8();
}

void sub_24E0E2A64()
{
  OUTLINED_FUNCTION_32();
  v64 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for ActivityFeedRelationshipAchievement();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_7_1();
  v10 = (v9 - v8);
  v11 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v63 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v61 = v15 - v14;
  OUTLINED_FUNCTION_18_1();
  v60 = type metadata accessor for GameAchievementsAction();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v62 = (v18 - v17);
  v19 = v4 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships;
  v20 = *(v4 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
  v21 = *(v19 + 8);

  sub_24E150D04(v20, v21);
  v23 = v22;

  v59 = v23;
  if (v23)
  {
    v58 = v11;
    v24 = MEMORY[0x277D84F90];
    v65 = *(v6 + 16);
    v56 = v6;
    if (v65)
    {
      v57 = v2;
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_23_18();
      v26 = v6 + v25;
      v28 = *(v27 + 72);
      v29 = v65;
      do
      {
        OUTLINED_FUNCTION_9_34();
        sub_24E0E88FC(v26, v10, v30);
        v32 = *v10;
        v31 = v10[1];

        OUTLINED_FUNCTION_12_22();
        v34 = *(v24 + 16);
        v33 = *(v24 + 24);
        if (v34 >= v33 >> 1)
        {
          v36 = OUTLINED_FUNCTION_14_2(v33);
          sub_24E12F080(v36, v34 + 1, 1);
        }

        *(v24 + 16) = v34 + 1;
        v35 = v24 + 16 * v34;
        *(v35 + 32) = v32;
        *(v35 + 40) = v31;
        v26 += v28;
        --v29;
      }

      while (v29);
      v37 = v64;
      v2 = v57;
    }

    else
    {
      v37 = v64;
    }

    if (sub_24E323448(v2) == 1802398060 && v38 == 0xE400000000000000)
    {
      OUTLINED_FUNCTION_40_6();
    }

    else
    {
      v40 = OUTLINED_FUNCTION_20_18();

      if ((v40 & 1) == 0)
      {
        if (v65)
        {
          v66 = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_43_4();
          v42 = v65;
          OUTLINED_FUNCTION_23_18();
          v44 = v56 + v43;
          v46 = *(v45 + 72);
          do
          {
            OUTLINED_FUNCTION_9_34();
            sub_24E0E88FC(v44, v10, v47);
            v49 = *v10;
            v48 = v10[1];

            OUTLINED_FUNCTION_12_22();
            v51 = *(v66 + 16);
            v50 = *(v66 + 24);
            if (v51 >= v50 >> 1)
            {
              v53 = OUTLINED_FUNCTION_14_2(v50);
              sub_24E12F080(v53, v51 + 1, 1);
            }

            *(v66 + 16) = v51 + 1;
            v52 = v66 + 16 * v51;
            *(v52 + 32) = v49;
            *(v52 + 40) = v48;
            v44 += v46;
            --v42;
          }

          while (v42);
          v37 = v64;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0338);
        sub_24E00FE20();
        v10 = sub_24E347C78();
        v41 = v54;

        goto LABEL_24;
      }

      OUTLINED_FUNCTION_40_6();
    }

    v41 = 0xEB00000000746E65;
LABEL_24:
    sub_24E0E5630(v2, v10, v41, v37, v61);

    *v62 = v59;
    *(v62 + 1) = v24;
    (*(v63 + 32))(&v62[*(v60 + 24)], v61, v58);
    v55 = &v62[*(v60 + 28)];
    *v55 = 0x72616F6268736164;
    *(v55 + 1) = 0xE900000000000064;
    sub_24E0E7E90(v62);
    sub_24E0E885C(v62, type metadata accessor for GameAchievementsAction);
  }

  OUTLINED_FUNCTION_18();
}

void sub_24E0E2EEC()
{
  OUTLINED_FUNCTION_32();
  v46 = v1;
  v48 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v47 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  v12 = v11 - v10;
  v13 = type metadata accessor for GameLeaderboardsAction();
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27_6();
  v15 = v4 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships;

  v16 = OUTLINED_FUNCTION_19_1();
  sub_24E150D04(v16, v17);
  v49 = v18;

  if (!v49)
  {
    goto LABEL_15;
  }

  v19 = *v15;
  if (*(*v15 + 16))
  {
    v41 = v13;
    v20 = v19[5];
    v43 = v19[4];
    v44 = v7;
    v21 = v19[10];
    v22 = v6[8];
    v24 = *v6;
    v23 = v6[1];
    v26 = sub_24E323448(v48) == 1802398060 && v25 == 0xE400000000000000;
    v45 = v21;
    v42 = v24;
    if (v26)
    {
      v40 = v23;

      swift_bridgeObjectRetain_n();

      v37 = v21;
      v33 = v20;
      v29 = v22;
      v38 = v22;

      v34 = v44;
    }

    else
    {
      v39 = OUTLINED_FUNCTION_20_18();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v27 = v21;
      v28 = v20;
      v29 = v22;
      v30 = v22;

      v31 = v24;
      v32 = v23;
      v33 = v28;
      v34 = v44;
      if ((v39 & 1) == 0)
      {
LABEL_14:
        sub_24E0E5630(v48, v31, v23, v46, v12);

        *v0 = v49;
        *(v0 + 1) = v29;
        *(v0 + 2) = v42;
        *(v0 + 3) = v32;
        *(v0 + 4) = v43;
        *(v0 + 5) = v33;
        (*(v47 + 32))(&v0[*(v41 + 32)], v12, v34);
        sub_24E0E81D4(v0);

        sub_24E0E885C(v0, type metadata accessor for GameLeaderboardsAction);
LABEL_15:
        OUTLINED_FUNCTION_18();
        return;
      }

      v40 = v23;
    }

    v23 = 0x800000024E3A7170;
    v31 = 0xD000000000000016;
    v32 = v40;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E0E326C()
{

  return OUTLINED_FUNCTION_19_1();
}

void sub_24E0E32D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int a6, uint64_t a7)
{
  LODWORD(v358) = a6;
  v342 = a3;
  v13 = sub_24E347458();
  v14 = OUTLINED_FUNCTION_4_5(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_1();
  v323 = v16 - v15;
  OUTLINED_FUNCTION_18_1();
  v17 = sub_24E347478();
  v18 = OUTLINED_FUNCTION_4_5(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v322 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  OUTLINED_FUNCTION_4_5(v21);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  v324 = &v299 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5890);
  OUTLINED_FUNCTION_4_5(v24);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v25);
  v325 = &v299 - v26;
  OUTLINED_FUNCTION_18_1();
  type metadata accessor for ActivityFeedRelationshipAchievement();
  OUTLINED_FUNCTION_0_14();
  v327 = v28;
  v328 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_1();
  v333 = (v30 - v29);
  OUTLINED_FUNCTION_18_1();
  v357 = sub_24E343368();
  OUTLINED_FUNCTION_0_14();
  v348 = v31;
  v33 = MEMORY[0x28223BE20](v32);
  v332 = &v299 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v345 = &v299 - v35;
  *(v7 + 56) = 0u;
  v7[97] = 0;
  *(v7 + 72) = 0u;
  *(v7 + 11) = 0;
  v36 = &v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_compactTitle];
  *v36 = 0;
  v36[1] = 0;
  v351 = v36;
  v37 = &v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_activityIdentifier];
  *v37 = 0;
  v37[1] = 0;
  v350 = v37;
  v340 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_playerSubArtwork;
  *&v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_playerSubArtwork] = 0;
  v38 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cachedCalculatedHeight;
  sub_24E094DD8();
  v39 = sub_24E347C28();
  v338 = v38;
  *&v7[v38] = v39;
  v40 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_impressionMetrics;
  sub_24E3474B8();
  v339 = v40;
  OUTLINED_FUNCTION_8_6();
  v321 = v41;
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  v45 = &v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_mainActionLink];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = a1;
  sub_24DF8BD34(a1, (v7 + 16));
  v7[96] = v358;
  swift_beginAccess();
  v337 = v7 + 56;
  v47 = a2;
  sub_24DF8BDF0(a7, (v7 + 56));
  swift_endAccess();
  v48 = &v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_displayedInPlayerProfile];
  *v48 = v342;
  *(v48 + 1) = a4;
  v335 = v48;
  v49 = v7;
  v50 = &v7[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics];
  v51 = a5[1];
  *v50 = *a5;
  *(v50 + 1) = v51;
  v52 = a5[3];
  *(v50 + 2) = a5[2];
  *(v50 + 3) = v52;
  v336 = v50;

  v53 = sub_24E0E77AC(v47, &selRef_message);
  v341 = v54;
  if (!v54)
  {

    sub_24DF8BFF4(a7, &qword_27F1DEE90);
    sub_24DF8BE60(a1);
    v101 = 0;
    LODWORD(v57) = 0;
LABEL_26:
    v77 = v357;
    v61 = v49;
    goto LABEL_172;
  }

  v55 = v53;
  v56 = a7;
  v57 = [v47 timeStamp];
  if (!v57)
  {

    sub_24DF8BFF4(a7, &qword_27F1DEE90);
    sub_24DF8BE60(v46);
    v101 = 0;
    goto LABEL_26;
  }

  v352 = a4;
  v58 = v47;
  v59 = v55;
  v60 = v345;
  sub_24E343328();

  v61 = v49;
  v62 = &v49[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_title];
  v314 = v59;
  v63 = v341;
  *v62 = v59;
  *(v62 + 1) = v63;

  v64 = sub_24E0E77AC(v58, &selRef_summaryMessage);
  v65 = v351;
  *v351 = v64;
  v65[1] = v66;

  v67 = v357;
  v316 = *(v348 + 16);
  v317 = v348 + 16;
  v316(&v49[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_timestamp], v60);
  v68 = [v58 activityType];
  *&v49[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_brickType] = v68;
  v69 = [v58 layoutType];
  *&v49[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_layoutType] = v69;
  v70 = [v58 scrollId];
  v71 = sub_24E347CF8();
  v73 = v72;

  v74 = v350;
  *v350 = v71;
  v74[1] = v73;

  v334 = v58;
  v75 = sub_24E0E76C0([v58 relationships], &selRef_players, &qword_27F1E39E8);
  v344 = v49;
  v355 = v46;
  v356 = v56;
  if (v75)
  {
    v76 = v75;
    v349 = sub_24DFD8654();
    v61 = 0;
    v346 = v76 & 0xFFFFFFFFFFFFFF8;
    v347 = v76 & 0xC000000000000001;
    v358 = MEMORY[0x277D84F90];
    v77 = v67;
    v343 = v76;
    while (v349 != v61)
    {
      if (v347)
      {
        v78 = MEMORY[0x25303F560](v61, v76);
      }

      else
      {
        if (v61 >= *(v346 + 16))
        {
          goto LABEL_178;
        }

        v78 = *(v76 + 8 * v61 + 32);
      }

      if (__OFADD__(v61, 1))
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:

        v56 = v356;
        v77 = v357;
        v46 = v355;
        v211 = v309;
LABEL_183:

        sub_24DF8BFF4(v56, &qword_27F1DEE90);
        sub_24DF8BE60(v46);
        v265 = OUTLINED_FUNCTION_3_64();
LABEL_145:
        v266(v265, v77);

        goto LABEL_146;
      }

      v79 = v78;
      v80 = sub_24E0E7808(v79, &selRef_identifier);
      if (!v81)
      {

        sub_24DF8BFF4(v356, &qword_27F1DEE90);
        sub_24DF8BE60(v46);
        v148 = OUTLINED_FUNCTION_3_64();
LABEL_66:
        v149(v148, v77);
        goto LABEL_67;
      }

      v82 = v80;
      v83 = v81;
      v84 = v79;
      v85 = sub_24E0E7808(v84, &selRef_name);
      if (!v86)
      {

LABEL_65:

        sub_24DF8BFF4(v356, &qword_27F1DEE90);
        sub_24DF8BE60(v355);
        v148 = OUTLINED_FUNCTION_3_64();
        v77 = v357;
        goto LABEL_66;
      }

      v87 = v85;
      v88 = v86;
      v89 = [v84 playerInternal];
      if (!v89)
      {

        goto LABEL_65;
      }

      v67 = v89;
      v90 = sub_24E0E7808(v84, &selRef_image);
      if (v91)
      {
        v92 = v90;
      }

      else
      {
        v92 = 0;
      }

      v93 = 0xE000000000000000;
      if (v91)
      {
        v93 = v91;
      }

      v353 = v93;
      v354 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_10();
        sub_24E0769D8();
        v358 = v99;
      }

      v95 = *(v358 + 16);
      v94 = *(v358 + 24);
      if (v95 >= v94 >> 1)
      {
        OUTLINED_FUNCTION_14_2(v94);
        sub_24E0769D8();
        v358 = v100;
      }

      v77 = v357;
      v96 = v358;
      *(v358 + 16) = v95 + 1;
      v97 = (v96 + 56 * v95);
      v97[4] = v82;
      v97[5] = v83;
      v97[6] = v87;
      v97[7] = v88;
      v98 = v353;
      v97[8] = v354;
      v97[9] = v98;
      v97[10] = v67;
      ++v61;
      v46 = v355;
      v56 = v356;
      v76 = v343;
    }

    v61 = v344;
  }

  else
  {
    v358 = MEMORY[0x277D84F90];
    v77 = v67;
  }

  v102 = sub_24E0E76C0([v334 relationships], &selRef_games, &qword_27F1E39E0);
  if (!v102)
  {
    v105 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  v103 = v102;
  v104 = sub_24DFD8654();
  OUTLINED_FUNCTION_26_14(v104);
  v105 = MEMORY[0x277D84F90];
  v326 = v103;
  while (v331 != v67)
  {
    v77 = v357;
    if (v330)
    {
      v106 = MEMORY[0x25303F560](v67, v103);
    }

    else
    {
      if (v67 >= *(v329 + 16))
      {
        goto LABEL_180;
      }

      v106 = v103[v67 + 4];
    }

    if (__OFADD__(v67, 1))
    {
      goto LABEL_179;
    }

    v107 = v106;
    v108 = sub_24E0E7808(v107, &selRef_identifier);
    if (!v109)
    {

      sub_24DF8BFF4(v56, &qword_27F1DEE90);
      sub_24DF8BE60(v46);
      v257 = OUTLINED_FUNCTION_3_64();
LABEL_135:
      v258(v257, v77);

      goto LABEL_170;
    }

    v349 = v108;
    v353 = v67;
    v354 = v109;
    v110 = v107;
    v111 = sub_24E0E7808(v110, &selRef_name);
    v57 = v112;
    if (!v112)
    {

      sub_24DF8BFF4(v56, &qword_27F1DEE90);
      sub_24DF8BE60(v46);
      v259 = OUTLINED_FUNCTION_3_64();
      v260(v259, v77);

LABEL_138:

      goto LABEL_171;
    }

    v347 = v111;
    v113 = [v110 adamId];
    if (!v113)
    {

      sub_24DF8BFF4(v56, &qword_27F1DEE90);
      sub_24DF8BE60(v46);
      v257 = OUTLINED_FUNCTION_3_64();
      v77 = v357;
      goto LABEL_135;
    }

    v114 = v113;
    v346 = v57;
    v115 = [v110 icon];
    if (!v115)
    {
      goto LABEL_49;
    }

    v116 = v115;
    sub_24DFAD518(v115);
    if (!v117)
    {

LABEL_49:
      v343 = 0;
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_35_9();
    v118 = [v116 width];
    if (!v118)
    {

      goto LABEL_49;
    }

    v119 = v118;
    v120 = [v116 height];
    if (!v120)
    {

      goto LABEL_49;
    }

    v121 = v120;
    v361[0] = v67;
    v361[1] = v61;
    [v119 floatValue];
    v123 = v122;
    [v121 floatValue];
    v125 = v124;
    v126 = [v116 platform];
    v127 = 0x10203040100uLL >> (8 * v126);
    if (v126 >= 6)
    {
      LOBYTE(v127) = 0;
    }

    v359 = v127;

    v360[0] = 25186;
    v360[1] = 0xE200000000000000;
    type metadata accessor for Artwork();
    swift_allocObject();
    v343 = Artwork.init(template:size:backgroundColor:style:crop:variants:)(v361, 0, &v359, v360, MEMORY[0x277D84F90], v123, v125);

LABEL_50:
    v128 = sub_24E0E7808(v110, &selRef_image);
    if (v129 || (v133 = [v110 icon]) != 0 && (v128 = sub_24E0E7808(v133, &selRef_url), v129))
    {
      v130 = v128;
      v131 = v129;
      v132 = v105;
    }

    else
    {
      v132 = v105;

      v130 = 0;
      v131 = 0xE000000000000000;
    }

    v134 = [v114 stringValue];
    v135 = sub_24E347CF8();
    v137 = v136;

    v138 = v132;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_10();
      sub_24E0769A8();
      v138 = v146;
    }

    v140 = *(v138 + 16);
    v139 = *(v138 + 24);
    v141 = v138;
    if (v140 >= v139 >> 1)
    {
      OUTLINED_FUNCTION_14_2(v139);
      sub_24E0769A8();
      v141 = v147;
    }

    v142 = v343;

    *(v141 + 16) = v140 + 1;
    v105 = v141;
    v143 = (v141 + 72 * v140);
    v144 = v354;
    v46 = v355;
    v143[4] = v349;
    v143[5] = v144;
    v145 = v346;
    v143[6] = v347;
    v143[7] = v145;
    v143[8] = v130;
    v143[9] = v131;
    v143[10] = v135;
    v143[11] = v137;
    v143[12] = v142;
    v67 = v353 + 1;
    v61 = v344;
    v56 = v356;
    v103 = v326;
  }

  v77 = v357;
LABEL_70:
  v150 = sub_24E0E76C0([v334 relationships], &selRef_leaderboards, &qword_27F1E39D8);
  v353 = v105;
  if (!v150)
  {
    v310 = MEMORY[0x277D84F90];
    goto LABEL_114;
  }

  v151 = v150;
  v152 = sub_24DFD8654();
  v153 = 0;
  v307 = v151 & 0xC000000000000001;
  v306 = v151 + 32;
  v310 = MEMORY[0x277D84F90];
  v304 = v151;
  v300 = v152;
  while (1)
  {
    if (v153 == v152)
    {

LABEL_114:
      v223 = sub_24E0E76C0([v334 relationships], &selRef_achievements, &qword_27F1E39D0);
      if (v223)
      {
        v224 = v223;
        v225 = sub_24DFD8654();
        OUTLINED_FUNCTION_26_14(v225);
        v226 = MEMORY[0x277D84F90];
        v326 = (v348 + 8);
        v320 = v224;
        while (v331 != v67)
        {
          if (v330)
          {
            v227 = MEMORY[0x25303F560](v67, v224);
          }

          else
          {
            if (v67 >= *(v329 + 16))
            {
              goto LABEL_187;
            }

            v227 = *(v224 + v67 + 4);
          }

          if (__OFADD__(v67, 1))
          {
            goto LABEL_186;
          }

          v228 = v227;
          v229 = sub_24E0E7808(v228, &selRef_identifier);
          if (!v230)
          {

            sub_24DF8BFF4(v56, &qword_27F1DEE90);
            sub_24DF8BE60(v355);
            v291 = OUTLINED_FUNCTION_14_23();
            v292(v291, v77);

            goto LABEL_146;
          }

          v231 = v230;
          v349 = v229;
          v232 = v228;
          v233 = sub_24E0E7808(v232, &selRef_name);
          if (!v234)
          {

LABEL_160:
            sub_24DF8BFF4(v356, &qword_27F1DEE90);
            sub_24DF8BE60(v355);
            v293 = OUTLINED_FUNCTION_14_23();
            v294(v293, v77);

LABEL_146:

LABEL_170:

            LODWORD(v57) = 0;
LABEL_171:
            v101 = 1;
            goto LABEL_172;
          }

          v235 = v233;
          v354 = v234;
          v236 = sub_24E0E7808(v232, &selRef_image);
          if (!v237)
          {

            goto LABEL_160;
          }

          v238 = v236;
          v346 = v67;
          v347 = v237;
          sub_24E0E77AC(v232, &selRef_achDescription);
          if (!v239)
          {

            sub_24DF8BFF4(v356, &qword_27F1DEE90);
            sub_24DF8BE60(v355);
            v295 = OUTLINED_FUNCTION_14_23();
            goto LABEL_163;
          }

          OUTLINED_FUNCTION_35_9();
          v240 = [v232 timeStamp];
          if (!v240)
          {

            sub_24DF8BFF4(v356, &qword_27F1DEE90);
            sub_24DF8BE60(v355);
            v295 = OUTLINED_FUNCTION_14_23();
            v77 = v357;
LABEL_163:
            v296(v295, v77);

LABEL_67:

            LODWORD(v57) = 0;
            v101 = 1;
LABEL_68:
            v61 = v344;
LABEL_172:
            sub_24DF8BE60(v61 + 16);
            sub_24DF8BFF4(v337, &qword_27F1DEE90);
            if (v101)
            {
              (*(v348 + 8))(v61 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_timestamp, v77);
            }

            if (v57)
            {
            }

            sub_24DF8BFF4(v61 + v339, &qword_27F1E58A0);

            type metadata accessor for ActivityFeedBaseData();
            swift_deallocPartialClassInstance();
            return;
          }

          v241 = v240;
          v343 = v231;
          v242 = v332;
          sub_24E343328();

          v243 = v328;
          v244 = v226;
          v245 = v333;
          (v316)(v333 + *(v328 + 32), v242, v357);
          v246 = [v232 progress];
          v247 = v343;
          *v245 = v349;
          v245[1] = v247;
          v248 = v354;
          v245[2] = v235;
          v245[3] = v248;
          v249 = v347;
          v245[4] = v238;
          v245[5] = v249;
          v245[6] = v67;
          v245[7] = v61;
          *(v245 + *(v243 + 36)) = v246;
          v226 = v244;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_5_10();
            sub_24E0767FC();
            v226 = v255;
          }

          v61 = v344;
          v250 = v346;
          v252 = *(v226 + 16);
          v251 = *(v226 + 24);
          v105 = v353;
          v77 = v357;
          if (v252 >= v251 >> 1)
          {
            OUTLINED_FUNCTION_14_2(v251);
            sub_24E0767FC();
            v226 = v256;
          }

          (*v326)(v332, v77);
          *(v226 + 16) = v252 + 1;
          OUTLINED_FUNCTION_23_18();
          sub_24E00FCC4(v333, v226 + v253 + *(v254 + 72) * v252);
          v67 = v250 + 1;
          v56 = v356;
          v224 = v320;
        }
      }

      else
      {
        v226 = MEMORY[0x277D84F90];
      }

      v269 = (v61 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
      *v269 = v358;
      v269[1] = v105;
      v269[2] = v310;
      v269[3] = v226;

      if ([v334 activityType] - 4 <= 2 && *(v105 + 16))
      {
        memcpy(v361, (v105 + 32), 0x48uLL);
        sub_24E00FD28(v361, v360);

        *&v344[v340] = v361[8];

        sub_24E00FD84(v361);
      }

      else
      {

        *&v344[v340] = 0;
      }

      v270 = *v269;
      v271 = v269[1];
      v272 = v269[2];
      v273 = v269[3];
      v274 = v325;
      (v316)(v325, v345, v77);
      __swift_storeEnumTagSinglePayload(v274, 0, 1, v77);

      v275 = sub_24E1568D8(v314, v341, v270, v271, v272, v273, v274, v342, v352);

      sub_24DF8BFF4(v274, &unk_27F1E5890);
      if (v275)
      {
        v276 = sub_24E3446E8();
        v277 = v275;
        sub_24E3446D8();
        v278 = objc_allocWithZone(v276);
        v279 = sub_24E3446F8();
        v280 = sub_24E3446C8();

        v281 = v344;
        *&v344[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_attributedTitle] = v280;
        v282 = *&v281[OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics + 16];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_24E369E30;
        strcpy((inited + 32), "impressionType");
        *(inited + 47) = -18;
        v284 = MEMORY[0x277D837D0];
        *(inited + 48) = 0x74656C63696863;
        *(inited + 56) = 0xE700000000000000;
        *(inited + 72) = v284;
        *(inited + 80) = 0x6973736572706D69;
        v285 = MEMORY[0x277D83B88];
        *(inited + 88) = 0xEF7865646E496E6FLL;
        *(inited + 96) = v282;
        *(inited + 120) = v285;
        *(inited + 128) = 0x657079546469;
        *(inited + 136) = 0xE600000000000000;
        *(inited + 144) = 0x636974617473;
        *(inited + 152) = 0xE600000000000000;
        *(inited + 168) = v284;
        *(inited + 176) = 1701667182;
        *(inited + 216) = v284;
        *(inited + 184) = 0xE400000000000000;
        *(inited + 192) = 0;
        *(inited + 200) = 0xE000000000000000;
        sub_24E347C28();

        sub_24E347468();
        sub_24E347448();
        v286 = MEMORY[0x277D84F90];
        sub_24E0241AC(MEMORY[0x277D84F90]);
        sub_24E0241AC(v286);
        v287 = v324;
        sub_24E347488();

        sub_24DF8BFF4(v356, &qword_27F1DEE90);
        sub_24DF8BE60(v355);
        (*(v348 + 8))(v345, v77);
        __swift_storeEnumTagSinglePayload(v287, 0, 1, v321);
        v288 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_impressionMetrics;
        swift_beginAccess();
        sub_24DF8BEB4(v287, &v281[v288]);
        swift_endAccess();
        return;
      }

      sub_24DF8BFF4(v356, &qword_27F1DEE90);
      sub_24DF8BE60(v355);
      v289 = OUTLINED_FUNCTION_3_64();
      v290(v289, v77);
      v101 = 1;
      LODWORD(v57) = 1;
      goto LABEL_68;
    }

    v154 = v307;
    sub_24DFFA844(v153, v307 == 0, v151);
    if (v154)
    {
      v155 = MEMORY[0x25303F560](v153, v151);
    }

    else
    {
      v155 = *(v306 + 8 * v153);
    }

    v303 = v153 + 1;
    if (__OFADD__(v153, 1))
    {
      goto LABEL_188;
    }

    v156 = v155;
    v157 = sub_24E0E7808(v156, &selRef_identifier);
    if (!v158)
    {

LABEL_169:
      sub_24DF8BFF4(v56, &qword_27F1DEE90);
      sub_24DF8BE60(v46);
      v297 = OUTLINED_FUNCTION_3_64();
      v298(v297, v77);

      goto LABEL_170;
    }

    v159 = v157;
    v308 = v158;
    v160 = sub_24E0E7808(v156, &selRef_name);
    if (!v161)
    {

LABEL_168:

      goto LABEL_169;
    }

    v301 = v160;
    v302 = v159;
    v305 = v161;
    v309 = v156;
    v162 = sub_24E0E773C(v156);
    if (!v162)
    {

      goto LABEL_168;
    }

    v163 = v162;
    v315 = sub_24DFD8654();
    v164 = 0;
    v312 = v163 & 0xFFFFFFFFFFFFFF8;
    v313 = v163 & 0xC000000000000001;
    v354 = MEMORY[0x277D84F90];
    v311 = v163;
LABEL_80:
    v165 = v334;
    if (v315 != v164)
    {
      break;
    }

    v210 = [v309 leaderboardInternal];
    if (!v210)
    {
      goto LABEL_181;
    }

    v211 = v210;
    v212 = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
    v56 = v356;
    v77 = v357;
    v46 = v355;
    if (!v212)
    {

      goto LABEL_183;
    }

    v213 = v212;
    v214 = [v309 leaderboardType];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_10();
      sub_24E0768C4();
      v310 = v221;
    }

    v67 = *(v310 + 16);
    v215 = *(v310 + 24);
    if (v67 >= v215 >> 1)
    {
      OUTLINED_FUNCTION_14_2(v215);
      sub_24E0768C4();
      v310 = v222;
    }

    v216 = v310;
    *(v310 + 16) = v67 + 1;
    v217 = (v216 + 72 * v67);
    v218 = v308;
    v217[4] = v302;
    v217[5] = v218;
    v152 = v300;
    v151 = v304;
    v219 = v305;
    v217[6] = v301;
    v217[7] = v219;
    v217[8] = 0;
    v217[9] = 0xE000000000000000;
    v220 = v354;
    v217[10] = v214;
    v217[11] = v220;
    v217[12] = v213;
    v61 = v344;
    v105 = v353;
    v153 = v303;
  }

  if (v313)
  {
    v168 = MEMORY[0x25303F560](v164, v163);
    v166 = v355;
    v167 = v356;
  }

  else
  {
    v166 = v355;
    v167 = v356;
    if (v164 >= *(v312 + 16))
    {
      goto LABEL_185;
    }

    v168 = *(v163 + 8 * v164 + 32);
  }

  if (!__OFADD__(v164, 1))
  {
    v169 = [v168 player];
    v57 = v169;
    if (!v169)
    {

      sub_24DF8BFF4(v167, &qword_27F1DEE90);
      sub_24DF8BE60(v166);
      v261 = OUTLINED_FUNCTION_25_16();
      v77 = v357;
      v262(v261, v357);

      goto LABEL_138;
    }

    v170 = [v169 playerInternal];
    if (!v170)
    {

LABEL_141:
      sub_24DF8BFF4(v167, &qword_27F1DEE90);
      sub_24DF8BE60(v166);
      v263 = OUTLINED_FUNCTION_25_16();
      v77 = v357;
      v264(v263, v357);

      goto LABEL_146;
    }

    v349 = v170;
    v171 = v57;
    v172 = sub_24E0E7808(v171, &selRef_identifier);
    if (!v173)
    {

      goto LABEL_141;
    }

    v343 = v172;
    v347 = v173;
    v174 = v171;
    v175 = sub_24E0E7808(v174, &selRef_name);
    if (!v176)
    {

      sub_24DF8BFF4(v167, &qword_27F1DEE90);
      sub_24DF8BE60(v166);
      v265 = OUTLINED_FUNCTION_25_16();
LABEL_144:
      v77 = v357;
      goto LABEL_145;
    }

    v177 = v175;
    v346 = v176;
    v178 = sub_24E0E7808(v174, &selRef_image);
    if (v179)
    {
      v180 = v178;
    }

    else
    {
      v180 = 0;
    }

    if (v179)
    {
      v181 = v179;
    }

    else
    {
      v181 = 0xE000000000000000;
    }

    v182 = sub_24E0E77AC(v168, &selRef_score);
    if (!v183)
    {

      sub_24DF8BFF4(v356, &qword_27F1DEE90);
      sub_24DF8BE60(v355);
      v265 = OUTLINED_FUNCTION_3_64();
      goto LABEL_144;
    }

    v184 = v182;
    v185 = v183;
    v331 = v181;
    v186 = sub_24E0E77AC(v168, &selRef_symbol);
    if (v187)
    {
      v188 = v186;
      v189 = v187;
      if (sub_24E347DD8() != 1)
      {

LABEL_148:

        sub_24DF8BFF4(v356, &qword_27F1DEE90);
        sub_24DF8BE60(v355);
        v267 = OUTLINED_FUNCTION_3_64();
        v77 = v357;
        v268(v267, v357);

        goto LABEL_67;
      }

      v190 = sub_24E16A2D0(v188, v189);

      if (!v190)
      {
        goto LABEL_148;
      }
    }

    v330 = v164;
    v191 = [v168 gained];
    v320 = [v168 rank];
    v192 = sub_24E0E77AC(v168, &selRef_message);
    v326 = v193;
    v194 = sub_24E0E77AC(v168, &selRef_symbol);
    v318 = v195;
    v319 = v194;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v329 = v192;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_5_10();
      sub_24E0768F4();
      v354 = v208;
    }

    v198 = *(v354 + 16);
    v197 = *(v354 + 24);
    if (v198 >= v197 >> 1)
    {
      OUTLINED_FUNCTION_14_2(v197);
      sub_24E0768F4();
      v354 = v209;
    }

    v199 = v354;
    *(v354 + 16) = v198 + 1;
    v200 = v199 + 120 * v198;
    *(v200 + 32) = v184;
    *(v200 + 40) = v185;
    *(v200 + 48) = v191;
    v201 = *(v361 + 3);
    *(v200 + 49) = v361[0];
    *(v200 + 52) = v201;
    v202 = v343;
    *(v200 + 56) = v320;
    *(v200 + 64) = v202;
    v203 = v346;
    *(v200 + 72) = v347;
    *(v200 + 80) = v177;
    *(v200 + 88) = v203;
    *(v200 + 96) = v180;
    v204 = v330;
    v205 = v349;
    *(v200 + 104) = v331;
    *(v200 + 112) = v205;
    v206 = v326;
    *(v200 + 120) = v329;
    *(v200 + 128) = v206;
    v207 = v318;
    *(v200 + 136) = v319;
    *(v200 + 144) = v207;
    v164 = v204 + 1;
    v61 = v344;
    v163 = v311;
    goto LABEL_80;
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
}

uint64_t sub_24E0E547C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_relationships);
  v27 = *(v1 + 16);
  v2 = (v0 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_displayedInPlayerProfile);

  v4 = v2;
  v5 = 0;
  v24 = MEMORY[0x277D84F90];
  v26 = v2;
LABEL_2:
  for (i = 56 * v5; ; i += 56)
  {
    if (v27 == v5)
    {

      return v24;
    }

    if (v5 >= *(v1 + 16))
    {
      break;
    }

    v7 = *(v1 + i + 32);
    v8 = *(v1 + i + 40);
    v10 = *(v1 + i + 48);
    v9 = *(v1 + i + 56);
    v12 = *(v1 + i + 64);
    v11 = *(v1 + i + 72);
    v13 = *(v1 + i + 80);
    v14 = v4[1];
    if (!v14 || (v7 == *v4 ? (v15 = v14 == v8) : (v15 = 0), !v15 && (result = sub_24E348C08(), v4 = v26, (result & 1) == 0)))
    {

      v23 = v13;
      v16 = v24;
      result = swift_isUniquelyReferenced_nonNull_native();
      v28 = v24;
      if ((result & 1) == 0)
      {
        result = sub_24E12F7B8(0, *(v24 + 16) + 1, 1);
        v16 = v24;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = v18 + 1;
      v4 = v26;
      if (v18 >= v17 >> 1)
      {
        v21 = OUTLINED_FUNCTION_14_2(v17);
        v25 = v22;
        result = sub_24E12F7B8(v21, v22, 1);
        v19 = v25;
        v4 = v26;
        v16 = v28;
      }

      ++v5;
      *(v16 + 16) = v19;
      v24 = v16;
      v20 = (v16 + 56 * v18);
      v20[4] = v7;
      v20[5] = v8;
      v20[6] = v10;
      v20[7] = v9;
      v20[8] = v12;
      v20[9] = v11;
      v20[10] = v23;
      goto LABEL_2;
    }

    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_24E0E5630@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v40 = a2;
  v8 = sub_24E347458();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_24E347088();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v42 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v39 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v15 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v15;
  *(inited + 48) = 0x657461676976616ELL;
  *(inited + 56) = 0xE800000000000000;
  v16 = sub_24E347C28();
  v17 = *(a4 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v35 = a1;
    v36 = v11;
    v37 = v10;
    v38 = a5;
    *&v44 = MEMORY[0x277D84F90];
    sub_24E12F700(0, v17, 0);
    v18 = v44;
    v19 = (a4 + 32);
    do
    {
      v20 = v19[1];
      v47 = *v19;
      *v48 = v20;
      *&v48[9] = *(v19 + 25);
      sub_24E0E7BB8(&v47, &v45);
      v21 = sub_24E323A3C();
      sub_24E0E7C14(&v47);
      *&v44 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_24E12F700((v22 > 1), v23 + 1, 1);
        v18 = v44;
      }

      *(v18 + 16) = v23 + 1;
      *(v18 + 8 * v23 + 32) = v21;
      v19 += 3;
      --v17;
    }

    while (v17);
    v11 = v36;
    LOBYTE(a1) = v35;
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3998);
  *&v45 = v18;
  sub_24E024710(&v45, &v44);
  swift_isUniquelyReferenced_nonNull_native();
  v43 = v16;
  sub_24E058328();
  v24 = v43;
  v25 = sub_24E323448(a1);
  v27 = v26;
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v28 = sub_24E347058();
  v29 = __swift_project_value_buffer(v28, qword_27F20AE00);
  v30 = v42;
  MEMORY[0x25303DB90](v40, v41, v25, v27, v24, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
  v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  (*(v12 + 16))(v32 + v31, v30, v11);
  sub_24E347448();
  sub_24E3471D8();
  return (*(v12 + 8))(v30, v11);
}

uint64_t sub_24E0E5A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 336) = a7;
  *(v8 + 176) = a6;
  *(v8 + 184) = a8;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  v9 = sub_24E347208();
  *(v8 + 192) = v9;
  *(v8 + 200) = *(v9 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = type metadata accessor for LaunchGameAction();
  *(v8 + 224) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39A0);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = type metadata accessor for AlertAction();
  *(v8 + 288) = swift_task_alloc();
  v11 = sub_24DF88A8C(0, &unk_27F1DFCF0);
  v12 = swift_task_alloc();
  *(v8 + 296) = v12;
  *v12 = v8;
  v12[1] = sub_24E0E5CDC;

  return MEMORY[0x28217F210](v8 + 152, v11, v11);
}

uint64_t sub_24E0E5CDC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_24E0E667C;
  }

  else
  {
    v4 = sub_24E0E5DEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24E0E5DEC()
{
  v1 = *(v0 + 152);
  if (!v1 || (v2 = [*(v0 + 152) internal], v1, !v2))
  {
    v3 = [objc_opt_self() currentGame];
    v2 = [v3 internal];

    if (!v2)
    {
      v5 = 0;
LABEL_17:
      v43 = *(v0 + 256);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
      sub_24E347328();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v44);
      sub_24DF8BFF4(v43, &unk_27F1EAC90);
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_62();

        return sub_24E3472E8();
      }

      v66 = v5;
      OUTLINED_FUNCTION_17_21();
      v49 = *(v47 + 48);
      v48 = *(v47 + 56);
      v51 = sub_24E323448(*(v0 + 336)) == EnumTagSinglePayload && v50 == 0xE600000000000000;
      v64 = v49;
      if (v51)
      {
        OUTLINED_FUNCTION_5_55();

        sub_24E0E7E34(v0 + 56, v0 + 120);
        sub_24E0E7E34(v0 + 72, v0 + 136);
      }

      else
      {
        v52 = OUTLINED_FUNCTION_41_6();
        swift_bridgeObjectRetain_n();
        sub_24E0E7E34(v0 + 56, v0 + 88);
        sub_24E0E7E34(v0 + 72, v0 + 104);

        v53 = v49;
        v54 = v48;
        if ((v52 & 1) == 0)
        {
LABEL_29:
          v56 = *(v0 + 216);
          v55 = *(v0 + 224);
          v57 = *(v0 + 200);
          v58 = *(v0 + 208);
          v59 = *(v0 + 192);
          sub_24E0E5630(*(v0 + 336), v53, v54, *(v0 + 184), v58);

          v60 = OUTLINED_FUNCTION_36_7();
          *(v55 + 32) = v64;
          *(v55 + 40) = v48;
          *(v55 + 48) = 1;
          (*(v57 + 32))(v55 + *(v56 + 32), v58, v59, v60);
          sub_24E0E8518(v55);

          OUTLINED_FUNCTION_13_28();
LABEL_30:
          OUTLINED_FUNCTION_15_22();

          OUTLINED_FUNCTION_3_43();
          OUTLINED_FUNCTION_62();

          __asm { BRAA            X1, X16 }
        }

        OUTLINED_FUNCTION_5_55();
      }

      v53 = EnumTagSinglePayload;
      v54 = 0xE800000000000000;
      goto LABEL_29;
    }
  }

  *(v0 + 304) = v2;
  v4 = *(v0 + 168);
  v5 = v2;
  v6 = [v5 bundleIdentifier];
  v7 = sub_24E347CF8();
  v9 = v8;

  if (v7 == *v4 && v9 == v4[1])
  {
  }

  else
  {
    v11 = sub_24E348C08();

    if ((v11 & 1) == 0)
    {

      goto LABEL_17;
    }
  }

  v12 = *(v0 + 288);
  v13 = *(v0 + 264);
  v14 = OUTLINED_FUNCTION_42_5();
  v15 = GKGameCenterUIFrameworkBundle();
  OUTLINED_FUNCTION_38_6();
  v16 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  OUTLINED_FUNCTION_35_9();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24E367D20;
  v18 = [v5 name];
  sub_24E347CF8();
  v65 = v5;

  *(v17 + 56) = MEMORY[0x277D837D0];
  v19 = sub_24DF95A7C();
  v20 = OUTLINED_FUNCTION_29_12(v19);
  v22 = v21;

  v23 = OUTLINED_FUNCTION_30_11();
  v24 = GKGameCenterUIFrameworkBundle();
  OUTLINED_FUNCTION_38_6();
  v25 = GKGetLocalizedStringFromTableInBundle();

  v26 = sub_24E347CF8();
  v28 = v27;

  sub_24E3471C8();
  *v12 = v20;
  v12[1] = v22;
  v12[2] = v26;
  v12[3] = v28;
  v12[4] = MEMORY[0x277D84F90];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  *(v0 + 312) = v29;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v13, 1, v29) == 1)
  {
    v30 = *(v0 + 264);
    OUTLINED_FUNCTION_0_96();
    sub_24E0E885C(v31, v32);

    sub_24DF8BFF4(v30, &unk_27F1EAC90);
    v33 = *(v0 + 272);
    sub_24E347218();
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    sub_24DF8BFF4(v33, &qword_27F1E39A0);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_10_29();
  *(v0 + 48) = sub_24E0E88B4(v38, v39);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_11_25(boxed_opaque_existential_1);
  (*(v20 + 104))(v12, *MEMORY[0x277D21E18], v13);
  v41 = swift_task_alloc();
  *(v0 + 320) = v41;
  *v41 = v0;
  OUTLINED_FUNCTION_6_46(v41);
  OUTLINED_FUNCTION_62();

  return MEMORY[0x28217F468]();
}

uint64_t sub_24E0E63E4()
{
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  v5 = *(*v1 + 232);
  v2 = *v1;
  OUTLINED_FUNCTION_4_13();
  *v6 = v2;
  v2[41] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_24E0E6C38;
  }

  else
  {
    v8 = v2[39];
    v9 = v2[33];
    __swift_destroy_boxed_opaque_existential_1((v2 + 2));
    OUTLINED_FUNCTION_22_0();
    (*(v10 + 8))(v9, v8);
    v7 = sub_24E0E6590;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24E0E6590()
{
  v1 = v0[38];
  v2 = v0[36];

  OUTLINED_FUNCTION_0_96();
  sub_24E0E885C(v2, v3);
  v4 = v0[34];
  v5 = sub_24E347218();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  sub_24DF8BFF4(v4, &qword_27F1E39A0);
  OUTLINED_FUNCTION_15_22();

  OUTLINED_FUNCTION_3_43();

  return v6();
}

uint64_t sub_24E0E667C()
{
  v1 = [objc_opt_self() currentGame];
  v2 = [v1 internal];

  if (!v2)
  {
LABEL_8:
    v11 = *(v0 + 256);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
    sub_24E347328();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
    sub_24DF8BFF4(v11, &unk_27F1EAC90);
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_62();

      return sub_24E3472E8();
    }

    OUTLINED_FUNCTION_17_21();
    v42 = *(v41 + 48);
    v43 = *(v41 + 56);
    v45 = sub_24E323448(*(v0 + 336)) == EnumTagSinglePayload && v44 == 0xE600000000000000;
    v63 = v42;
    if (v45)
    {
      OUTLINED_FUNCTION_5_55();

      sub_24E0E7E34(v0 + 56, v0 + 120);
      sub_24E0E7E34(v0 + 72, v0 + 136);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_41_6();
      swift_bridgeObjectRetain_n();
      sub_24E0E7E34(v0 + 56, v0 + 88);
      sub_24E0E7E34(v0 + 72, v0 + 104);

      v47 = v42;
      v48 = v43;
      if ((v46 & 1) == 0)
      {
LABEL_26:
        v54 = *(v0 + 216);
        v55 = *(v0 + 224);
        v57 = *(v0 + 200);
        v56 = *(v0 + 208);
        v58 = *(v0 + 192);
        sub_24E0E5630(*(v0 + 336), v47, v48, *(v0 + 184), v56);

        v59 = OUTLINED_FUNCTION_36_7();
        *(v55 + 32) = v63;
        *(v55 + 40) = v43;
        *(v55 + 48) = 1;
        (*(v57 + 32))(v55 + *(v54 + 32), v56, v58, v59);
        sub_24E0E8518(v55);

        OUTLINED_FUNCTION_13_28();
LABEL_27:
        OUTLINED_FUNCTION_15_22();

        OUTLINED_FUNCTION_3_43();
        OUTLINED_FUNCTION_62();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_5_55();
    }

    v47 = EnumTagSinglePayload;
    v48 = 0xE800000000000000;
    goto LABEL_26;
  }

  *(v0 + 304) = v2;
  v3 = *(v0 + 168);
  v4 = v2;
  v5 = [v4 bundleIdentifier];
  v6 = sub_24E347CF8();
  v8 = v7;

  if (v6 == *v3 && v8 == v3[1])
  {
  }

  else
  {
    v10 = sub_24E348C08();

    if ((v10 & 1) == 0)
    {

      goto LABEL_8;
    }
  }

  v16 = *(v0 + 288);
  v62 = *(v0 + 264);
  v17 = OUTLINED_FUNCTION_42_5();
  v18 = GKGameCenterUIFrameworkBundle();
  OUTLINED_FUNCTION_38_6();
  v19 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  OUTLINED_FUNCTION_35_9();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_24E367D20;
  v21 = [v4 name];
  sub_24E347CF8();

  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = sub_24DF95A7C();
  v23 = OUTLINED_FUNCTION_29_12(v22);
  v25 = v24;

  v26 = OUTLINED_FUNCTION_30_11();
  v27 = GKGameCenterUIFrameworkBundle();
  OUTLINED_FUNCTION_38_6();
  v28 = GKGetLocalizedStringFromTableInBundle();

  v29 = sub_24E347CF8();
  v31 = v30;

  sub_24E3471C8();
  *v16 = v23;
  v16[1] = v25;
  v16[2] = v29;
  v16[3] = v31;
  v16[4] = MEMORY[0x277D84F90];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  *(v0 + 312) = v32;
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v62, 1, v32) == 1)
  {
    v33 = *(v0 + 264);
    OUTLINED_FUNCTION_0_96();
    sub_24E0E885C(v34, v35);

    sub_24DF8BFF4(v33, &unk_27F1EAC90);
    v36 = *(v0 + 272);
    sub_24E347218();
    OUTLINED_FUNCTION_8_6();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    sub_24DF8BFF4(v36, &qword_27F1E39A0);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_10_29();
  *(v0 + 48) = sub_24E0E88B4(v49, v50);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_11_25(boxed_opaque_existential_1);
  (*(v23 + 104))(v4, *MEMORY[0x277D21E18], v62);
  v52 = swift_task_alloc();
  *(v0 + 320) = v52;
  *v52 = v0;
  OUTLINED_FUNCTION_6_46(v52);
  OUTLINED_FUNCTION_62();

  return MEMORY[0x28217F468]();
}

uint64_t sub_24E0E6C38()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[36];
  v4 = v0[33];

  OUTLINED_FUNCTION_0_96();
  sub_24E0E885C(v3, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  OUTLINED_FUNCTION_22_0();
  (*(v6 + 8))(v4, v1);

  v7 = v0[1];

  return v7();
}

void sub_24E0E6D4C()
{
  OUTLINED_FUNCTION_32();
  v9 = sub_24E343028();
  OUTLINED_FUNCTION_0_14();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27_6();
  sub_24E343018();
  sub_24E343008();
  MEMORY[0x253039B20](7824750, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39C0);
  sub_24E342F68();
  *(swift_allocObject() + 16) = xmmword_24E36D920;
  sub_24E342F38();
  sub_24E342F38();
  sub_24E342F38();
  sub_24E342F38();
  sub_24E342F38();
  sub_24E348998();

  v4 = [objc_opt_self() local];
  v5 = [v4 alias];

  v6 = sub_24E347CF8();
  v8 = v7;

  MEMORY[0x25303E950](v6, v8);

  sub_24E342F38();

  sub_24E342F38();
  sub_24E342F88();
  sub_24E342FA8();
  (*(v2 + 8))(v0, v9);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E0E7144()
{
  sub_24DF8BE60(v0 + 16);
  sub_24DF8BFF4(v0 + 56, &qword_27F1DEE90);
  v1 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_timestamp;
  sub_24E343368();
  OUTLINED_FUNCTION_5_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_32_13();
  OUTLINED_FUNCTION_32_13();
  OUTLINED_FUNCTION_32_13();

  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_impressionMetrics, &qword_27F1E58A0);
  OUTLINED_FUNCTION_32_13();

  OUTLINED_FUNCTION_32_13();
  return v0;
}

uint64_t sub_24E0E72AC()
{
  sub_24E0E7144();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ActivityFeedBaseData()
{
  result = qword_27F1E3978;
  if (!qword_27F1E3978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E0E7358()
{
  sub_24E343368();
  if (v0 <= 0x3F)
  {
    sub_24DF9E0E0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24E0E74A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24E0E74E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E0E7540@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E0E8958(v3 + 56, a1, &qword_27F1DEE90);
}

uint64_t sub_24E0E759C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_impressionMetrics;
  swift_beginAccess();
  return sub_24E0E8958(v3 + v4, a1, &qword_27F1E58A0);
}

uint64_t sub_24E0E7650@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics + 8);
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v3;
  *(a1 + 40) = 1;
}

uint64_t sub_24E0E767C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics;
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI20ActivityFeedBaseData_cellMetrics + 32);
  if (v3)
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 40);
    v6 = 2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t sub_24E0E76C0(void *a1, SEL *a2, unint64_t *a3)
{
  v5 = [a1 *a2];

  if (!v5)
  {
    return 0;
  }

  sub_24DF88A8C(0, a3);
  v6 = sub_24E347F08();

  return v6;
}

uint64_t sub_24E0E773C(void *a1)
{
  v1 = [a1 scores];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_24DF88A8C(0, &qword_27F1E39C8);
  v3 = sub_24E347F08();

  return v3;
}

uint64_t sub_24E0E77AC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_24E347CF8();
  }

  return OUTLINED_FUNCTION_19_1();
}

uint64_t sub_24E0E7808(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24E347CF8();

  return v4;
}

uint64_t sub_24E0E7874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-1] - v7;
  v9 = sub_24E347638();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = type metadata accessor for PlayerProfileAction();
  v17[4] = sub_24E0E88B4(&qword_27F1E2E48, type metadata accessor for PlayerProfileAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_24E0E88FC(a1, boxed_opaque_existential_1, type metadata accessor for PlayerProfileAction);
  sub_24E05F70C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    (*(v10 + 8))(v12, v9);
    sub_24DF8BFF4(v8, &unk_27F1EAC90);
  }

  else
  {
    (*(v10 + 16))(v5, v12, v9);
    (*(v3 + 104))(v5, *MEMORY[0x277D21E10], v2);
    sub_24E3473B8();

    (*(v3 + 8))(v5, v2);
    (*(v10 + 8))(v12, v9);
    (*(*(v14 - 8) + 8))(v8, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24E0E7C68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 112);
  v8 = *(v1 + 128);
  v9 = *(v1 + 120);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E0E7D48;

  return sub_24E0E5A70(a1, v4, v5, v6, v1 + 40, v7, v9, v8);
}

uint64_t sub_24E0E7D48()
{
  v1 = *v0;
  OUTLINED_FUNCTION_4_13();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24E0E7E90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-1] - v7;
  v9 = sub_24E347638();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = type metadata accessor for GameAchievementsAction();
  v17[4] = sub_24E0E88B4(&qword_27F1E2698, type metadata accessor for GameAchievementsAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_24E0E88FC(a1, boxed_opaque_existential_1, type metadata accessor for GameAchievementsAction);
  sub_24E05F70C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    (*(v10 + 8))(v12, v9);
    sub_24DF8BFF4(v8, &unk_27F1EAC90);
  }

  else
  {
    (*(v10 + 16))(v5, v12, v9);
    (*(v3 + 104))(v5, *MEMORY[0x277D21E10], v2);
    sub_24E3473B8();

    (*(v3 + 8))(v5, v2);
    (*(v10 + 8))(v12, v9);
    (*(*(v14 - 8) + 8))(v8, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24E0E81D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-1] - v7;
  v9 = sub_24E347638();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = type metadata accessor for GameLeaderboardsAction();
  v17[4] = sub_24E0E88B4(&qword_27F1E39B8, type metadata accessor for GameLeaderboardsAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_24E0E88FC(a1, boxed_opaque_existential_1, type metadata accessor for GameLeaderboardsAction);
  sub_24E05F70C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    (*(v10 + 8))(v12, v9);
    sub_24DF8BFF4(v8, &unk_27F1EAC90);
  }

  else
  {
    (*(v10 + 16))(v5, v12, v9);
    (*(v3 + 104))(v5, *MEMORY[0x277D21E10], v2);
    sub_24E3473B8();

    (*(v3 + 8))(v5, v2);
    (*(v10 + 8))(v12, v9);
    (*(*(v14 - 8) + 8))(v8, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24E0E8518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-1] - v7;
  v9 = sub_24E347638();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = type metadata accessor for LaunchGameAction();
  v17[4] = sub_24E0E88B4(&qword_27F1E39B0, type metadata accessor for LaunchGameAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_24E0E88FC(a1, boxed_opaque_existential_1, type metadata accessor for LaunchGameAction);
  sub_24E05F70C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA8C0);
  sub_24E347328();
  if (__swift_getEnumTagSinglePayload(v8, 1, v14) == 1)
  {
    (*(v10 + 8))(v12, v9);
    sub_24DF8BFF4(v8, &unk_27F1EAC90);
  }

  else
  {
    (*(v10 + 16))(v5, v12, v9);
    (*(v3 + 104))(v5, *MEMORY[0x277D21E10], v2);
    sub_24E3473B8();

    (*(v3 + 8))(v5, v2);
    (*(v10 + 8))(v12, v9);
    (*(*(v14 - 8) + 8))(v8, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24E0E885C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E0E88B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E0E88FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t sub_24E0E8958(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_5_2();
  v4 = OUTLINED_FUNCTION_19_1();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_25(uint64_t a1)
{

  return sub_24E0E88FC(v1, a1, type metadata accessor for AlertAction);
}

uint64_t OUTLINED_FUNCTION_12_22()
{

  return sub_24E0E885C(v0, type metadata accessor for ActivityFeedRelationshipAchievement);
}

uint64_t OUTLINED_FUNCTION_13_28()
{

  return sub_24E0E885C(v0, type metadata accessor for LaunchGameAction);
}

uint64_t OUTLINED_FUNCTION_15_22()
{
}

__n128 OUTLINED_FUNCTION_17_21()
{
  v1 = *(v0 + 168);
  *(v0 + 56) = *(v1 + 16);
  result = *v1;
  *(v0 + 72) = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_18()
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_26_14(uint64_t result)
{
  v1[31] = v2 & 0xC000000000000001;
  v1[32] = result;
  v1[30] = v2 & 0xFFFFFFFFFFFFFF8;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t a1)
{
  v1[8] = a1;
  v1[4] = v2;
  v1[5] = v3;

  return sub_24E347CC8();
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return sub_24E347CB8();
}

uint64_t OUTLINED_FUNCTION_32_13()
{
}

__n128 OUTLINED_FUNCTION_36_7()
{
  *v1 = *(v0 + 56);
  result = *(v0 + 72);
  *(v1 + 16) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_6()
{

  return sub_24E348C08();
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return sub_24E347CB8();
}

char *OUTLINED_FUNCTION_43_4()
{
  v2 = *(v0 - 96);

  return sub_24E12F080(0, v2, 0);
}

uint64_t OUTLINED_FUNCTION_44_5()
{

  return swift_task_create();
}

id sub_24E0E8CBC(void *a1, void *a2)
{
  sub_24E343368();
  OUTLINED_FUNCTION_1_23();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v27 - v18;
  result = [a1 lastPlayedDate];
  if (result)
  {
    v21 = result;
    sub_24E343328();

    v22 = *(v6 + 32);
    v22(v19, v15, v2);
    v23 = [a2 lastPlayedDate];
    if (v23)
    {
      v24 = v23;
      sub_24E343328();

      v22(v12, v9, v2);
      v25 = sub_24E343348();
      v26 = *(v6 + 8);
      v26(v12, v2);
      v26(v19, v2);
      return (v25 == 1);
    }

    else
    {
      (*(v6 + 8))(v19, v2);
      return 0;
    }
  }

  return result;
}

BOOL sub_24E0E8EBC(void *a1, void *a2)
{
  sub_24E342EE8();
  OUTLINED_FUNCTION_1_23();
  v6 = v5;
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 displayNameWithOptions_];
  v12 = sub_24E347CF8();
  v14 = v13;

  v31 = v12;
  v32 = v14;
  sub_24E342E98();
  sub_24DF90C4C();
  v28 = OUTLINED_FUNCTION_1_82();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v10, v2);

  v18 = [a2 displayNameWithOptions_];
  v19 = sub_24E347CF8();
  v21 = v20;

  v31 = v19;
  v32 = v21;
  sub_24E342E98();
  v22 = OUTLINED_FUNCTION_1_82();
  v24 = v23;
  v17(v10, v2);

  v31 = v28;
  v32 = v16;
  v29 = v22;
  v30 = v24;
  v25 = sub_24E348758();

  return v25 == -1;
}

uint64_t OUTLINED_FUNCTION_1_82()
{

  return sub_24E348718();
}

id sub_24E0E90C4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 _gkGameLayerModuleVisualEffect];
  if (!v3)
  {
    sub_24DFEC928();
    sub_24E347F08();
    v3 = sub_24E347EE8();
  }

  [v2 setBackgroundEffects_];

  sub_24E193BDC(0x6579614C656D6167, 0xEE0070756F724772, v2);
  return v2;
}

uint64_t sub_24E0E91B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E0E92A4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24E0E9218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24E0E92A4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24E0E927C()
{
  sub_24E0E92A4();
  sub_24E345E08();
  __break(1u);
}

unint64_t sub_24E0E92A4()
{
  result = qword_27F1E39F0;
  if (!qword_27F1E39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E39F0);
  }

  return result;
}

uint64_t AppStoreContentMetadataPresenter.__allocating_init(sources:gameFilter:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AppStoreContentMetadataPresenter.init(sources:gameFilter:)(a1, a2);
  return v4;
}

void *AppStoreContentMetadataPresenter.init(sources:gameFilter:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ArtworkLoader();
  v2[2] = sub_24E2002B8();
  v6 = [objc_opt_self() local];
  v7 = [v6 internal];

  type metadata accessor for AppStoreContentLookupPresenter();
  OUTLINED_FUNCTION_16_4();
  v8 = swift_allocObject();
  type metadata accessor for ASCLockupBatchPresenter();
  v9 = sub_24E347C28();
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v3[3] = v8;
  v3[4] = a1;
  v3[5] = a2;
  return v3;
}

uint64_t sub_24E0E9444(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  v7 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v8 = *(v4 + 32);
  v9 = *(v8 + 16);
  if (v9)
  {
    v11 = (v8 + 32);
    do
    {
      v12 = *v11++;
      LOBYTE(v27[0]) = v12;
      v13 = sub_24E347CB8();
      v14 = GKGameCenterUIFrameworkBundle();
      v15 = GKGetLocalizedStringFromTableInBundle();

      v16 = sub_24E347CF8();
      v18 = v17;

      sub_24E0E9B14(v27, v16, v18, a1 & 1);

      MEMORY[0x25303EA30](v19);
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      --v9;
    }

    while (v9);
    v7 = v28;
    v6 = a2;
    v5 = a3;
  }

  v27[0] = v7;
  OUTLINED_FUNCTION_21_2();
  *(swift_allocObject() + 16) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3A08);
  sub_24DFB4C28(&qword_27F1E3A10, &qword_27F1E3A00);
  sub_24DFB4C28(&qword_27F1E3A18, &qword_27F1E39F8);
  sub_24E347A28();

  OUTLINED_FUNCTION_16_4();
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v5;
  OUTLINED_FUNCTION_16_4();
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  *(v21 + 24) = v5;
  v22 = sub_24E085260();
  swift_retain_n();
  v23 = sub_24E348368();
  v27[3] = v22;
  v27[4] = MEMORY[0x277D225C0];
  v27[0] = v23;
  sub_24E347A78();

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_24E0E975C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_24E0EAC60();
  v4 = sub_24E347C28();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    do
    {
      memcpy(__dst, v6, 0x80uLL);
      v7 = __dst[0];
      if (__dst[2])
      {
        sub_24E0EACB4(__dst, __src);
        sub_24E0EACEC(&__dst[1], __src);
        swift_isUniquelyReferenced_nonNull_native();
        v35 = v4;
        v8 = sub_24E26AF54(v7);
        if (__OFADD__(v4[2], (v9 & 1) == 0))
        {
          goto LABEL_31;
        }

        v10 = v8;
        v11 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F1E3A28);
        if (sub_24E348AB8())
        {
          v12 = sub_24E26AF54(v7);
          if ((v11 & 1) != (v13 & 1))
          {
            goto LABEL_33;
          }

          v10 = v12;
        }

        memcpy(__src, &__dst[1], 0x70uLL);
        if ((v11 & 1) == 0)
        {
          v4 = v35;
          v35[(v10 >> 6) + 8] |= 1 << v10;
          *(v4[6] + v10) = v7;
          memcpy((v4[7] + 112 * v10), __src, 0x70uLL);
          sub_24E0EA91C(__dst);
          v18 = v4[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_32;
          }

          v4[2] = v20;
          goto LABEL_15;
        }

        v4 = v35;
        v14 = (v35[7] + 112 * v10);
        memcpy(v32, v14, sizeof(v32));
        memmove(v14, &__dst[1], 0x70uLL);
        sub_24E0EAAF0(v32);
      }

      else
      {
        sub_24E0EACB4(__dst, __src);
        v15 = sub_24E26AF54(v7);
        if (v16)
        {
          v17 = v15;
          swift_isUniquelyReferenced_nonNull_native();
          v32[0] = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F1E3A28);
          sub_24E348AB8();
          v4 = v32[0];
          memcpy(__src, (*(v32[0] + 56) + 112 * v17), 0x70uLL);
          sub_24E0EAAF0(__src);
          sub_24E348AD8();
        }
      }

      sub_24E0EA91C(__dst);
LABEL_15:
      v6 += 128;
      --v5;
    }

    while (v5);
  }

  v21 = 0;
  v22 = *(a2 + 16);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v22 == v21)
    {

      *a3 = v23;
      return result;
    }

    if (v21 >= v22)
    {
      break;
    }

    if (__OFADD__(v21, 1))
    {
      goto LABEL_30;
    }

    if (v4[2] && (v24 = sub_24E26AF54(*(a2 + 32 + v21)), (v25 & 1) != 0))
    {
      memcpy(__dst, (v4[7] + 112 * v24), 0x70uLL);
      sub_24E0EAA94(__dst, __src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E077BC4();
        v23 = v27;
      }

      v26 = *(v23 + 16);
      if (v26 >= *(v23 + 24) >> 1)
      {
        sub_24E077BC4();
        v23 = v28;
      }

      *(v23 + 16) = v26 + 1;
      memcpy((v23 + 112 * v26 + 32), __dst, 0x70uLL);
      ++v21;
    }

    else
    {
      ++v21;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_24E348C98();
  __break(1u);
  return result;
}

uint64_t sub_24E0E9B14(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E39F8);
  v9 = sub_24E347AD8();
  LOBYTE(v16[0]) = v8;
  sub_24E167BCC(v16, 1, *(v4 + 40));
  OUTLINED_FUNCTION_21_2();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *(v11 + 32) = v8;
  *(v11 + 33) = a4;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  v13 = sub_24E085260();
  swift_retain_n();

  v14 = sub_24E348368();
  v16[3] = v13;
  v16[4] = MEMORY[0x277D225C0];
  v16[0] = v14;
  sub_24E347A78();

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v9;
}

uint64_t sub_24E0E9C9C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  result = sub_24E347A48();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if (sub_24DFD8654(v12))
      {
        sub_24DFFA844(0, (v12 & 0xC000000000000001) == 0, v12);
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x25303F560](0, v12);
        }

        else
        {
          v14 = *(v12 + 32);
        }

        v15 = v14;
        v16 = [v14 icon];
        if (v16)
        {
          v17 = v16;
          v30 = v15;
          [v16 width];
          [v17 height];
          [v17 width];
          v19 = v18;
          [v17 height];
          v21 = 300.0 / (v19 / v20);
          type metadata accessor for Artwork();
          v22 = [v17 URLTemplate];
          v23 = sub_24E347CF8();
          v25 = v24;

          *&__dst[0] = v23;
          *(&__dst[0] + 1) = v25;
          __src[0] = 25186;
          __src[1] = 0xE200000000000000;
          Artwork.__allocating_init(template:size:backgroundColor:crop:variants:)(__dst, 0, __src, MEMORY[0x277D84F90], 300.0, v21);
          __dst[0] = xmmword_24E377130;
          v29 = sub_24E0ABE8C(__dst, 0, 300.0, v21);

          memset(__dst, 0, 40);
          v26 = swift_allocObject();
          *(v26 + 16) = a2;
          *(v26 + 24) = a4;
          *(v26 + 25) = a5 & 1;
          *(v26 + 32) = 0x4072C00000000000;
          *(v26 + 40) = v21;
          *(v26 + 48) = v17;
          *(v26 + 56) = a6;
          *(v26 + 64) = a7;
          *(v26 + 72) = v30;

          v27 = v17;

          v28 = v30;
          sub_24E200340(v29, 2, 1, __dst, sub_24E0EA94C, v26);

          sub_24DFD8588(__dst);
        }
      }

      else
      {
      }
    }

    LOBYTE(__src[0]) = a4;
    memset(&__src[1], 0, 120);
    sub_24E347AC8();
    memcpy(__dst, __src, sizeof(__dst));
    return sub_24E0EA91C(__dst);
  }

  return result;
}

uint64_t sub_24E0E9FB8(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, void *a13)
{
  result = sub_24E347A48();
  if ((result & 1) == 0)
  {
    if (a6)
    {
      LOBYTE(v55[0]) = a8;
      memset(&v55[1], 0, 112);
      v55[15] = a6;
      v21 = a6;
      sub_24E347AC8();
LABEL_22:
      memcpy(__dst, v55, 0x80uLL);
      return sub_24E0EA91C(__dst);
    }

    if (a9)
    {
      type metadata accessor for ArtworkView();
      v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v23 = [objc_opt_self() clearColor];
      [v22 setBackgroundColor_];

      sub_24E0D90D8(a1, 0);
      sub_24E0D8E04(a2, a3);
      sub_24E220DD8([a10 decoration], __dst);
      sub_24E0D8DC8(__dst);
      v24 = 0;
      v25 = 5;
      a1 = v22;
LABEL_15:
      __dst[0] = a8;
      sub_24E0EA9F4(a1, v24, 0, v25);
      v34 = sub_24E0EA990(a13);
      v36 = sub_24E0EA3E4(v34, v35);
      v38 = v37;

      v39 = sub_24E0EA990(a13);
      __src[0] = a11;
      __src[1] = a12;
      if (v40)
      {
        v41 = v39;
      }

      else
      {
        v41 = 0;
      }

      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = 0xE000000000000000;
      }

      __src[2] = a1;
      __src[3] = v24;
      __src[4] = 0;
      LOBYTE(__src[5]) = v25;
      __src[6] = v36;
      __src[7] = v38;
      __src[8] = v41;
      __src[9] = v42;
      LOBYTE(__src[10]) = 0;
      __src[11] = 0;
      __src[12] = 0xE000000000000000;
      __src[13] = 0;
      memcpy(&v56[7], __src, 0x70uLL);
      LOBYTE(v55[0]) = a8;
      memcpy(v55 + 1, v56, 0x77uLL);
      v55[15] = 0;

      sub_24E0EAA94(__src, __dst);
      sub_24E347AC8();
      sub_24E0EAAF0(__src);
      sub_24E0EAB44(a1, v24, 0, v25);
      goto LABEL_22;
    }

    v26 = [a10 decoration];
    v27 = sub_24E347CF8();
    v29 = v28;
    if (v27 == sub_24E347CF8() && v29 == v30)
    {
    }

    else
    {
      v32 = sub_24E348C08();

      if ((v32 & 1) == 0)
      {
        v43 = sub_24E347CF8();
        v45 = v44;
        if (v43 == sub_24E347CF8() && v45 == v46)
        {
        }

        else
        {
          v48 = sub_24E348C08();

          if ((v48 & 1) == 0)
          {
            v49 = sub_24E347CF8();
            v51 = v50;
            if (v49 == sub_24E347CF8() && v51 == v52)
            {

              v24 = 3;
            }

            else
            {
              v54 = sub_24E348C08();

              if (v54)
              {
                v24 = 3;
              }

              else
              {
                v24 = 2;
              }
            }

            goto LABEL_14;
          }
        }

        v24 = 1;
LABEL_14:
        v33 = a1;
        v25 = 3;
        goto LABEL_15;
      }
    }

    v24 = 0;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_24E0EA3E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v4 = sub_24E347CB8();
    v5 = GKGameCenterUIFrameworkBundle();
    v6 = GKGetLocalizedStringFromTableInBundle();

    sub_24E347CF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24E367D20;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_24DF95A7C();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    v8 = sub_24E347D18();
  }

  else
  {
    v9 = sub_24E347CB8();
    v10 = GKGameCenterUIFrameworkBundle();
    v11 = GKGetLocalizedStringFromTableInBundle();

    v8 = sub_24E347CF8();
  }

  return v8;
}

uint64_t sub_24E0EA784(void *a1, uint64_t a2, char a3)
{
  LOBYTE(v5[0]) = a3;
  memset(&v5[1], 0, 112);
  v5[15] = a1;
  v3 = a1;
  sub_24E347AC8();
  memcpy(__dst, v5, sizeof(__dst));
  return sub_24E0EA91C(__dst);
}

uint64_t AppStoreContentMetadataPresenter.deinit()
{

  return v0;
}

uint64_t AppStoreContentMetadataPresenter.__deallocating_deinit()
{
  AppStoreContentMetadataPresenter.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_24E0EA990(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

id sub_24E0EA9F4(id result, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:

      break;
    case 1:
    case 2:
    case 3:
    case 5:

      result = result;
      break;
    case 4:
      v5 = result;

      goto LABEL_7;
    case 6:

LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

void sub_24E0EAB44(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:

      break;
    case 1:
    case 2:
    case 3:
    case 5:

      goto LABEL_4;
    case 4:
      v5 = a1;

      a1 = v5;

LABEL_4:

      break;
    case 6:

      break;
    default:
      return;
  }
}

unint64_t sub_24E0EAC60()
{
  result = qword_27F1E3A20;
  if (!qword_27F1E3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3A20);
  }

  return result;
}

uint64_t sub_24E0EACEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI9HighlightV5GlyphO(uint64_t a1)
{
  if ((*(a1 + 24) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 24) & 0xF;
  }
}

uint64_t get_enum_tag_for_layout_string_12GameCenterUI9HighlightVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24E0EAD90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 128))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_24E0EADE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24E0EAE68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24E0EAED8(uint64_t a1, uint64_t a2)
{
  v26[1] = a2;
  v3 = sub_24E347218();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  OUTLINED_FUNCTION_0_97();
  type metadata accessor for SwiftUIHostingViewControllerAction();
  sub_24DFD8A60();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = v3;
    if (*(a1 + 16) == 1)
    {
      OUTLINED_FUNCTION_0_97();
      sub_24E345D68();
      (*a1)();
      v14 = sub_24E345D48();
      [v14 setModalPresentationStyle_];
      [v12 presentViewController:v14 animated:1 completion:0];
    }

    else
    {
      OUTLINED_FUNCTION_0_97();
      type metadata accessor for BaseHostingViewController();
      (*a1)();
      v16 = sub_24E0EDDA4(v9);
      v17 = [v16 navigationItem];
      v18 = sub_24E347CB8();
      v19 = GKGameCenterUIFrameworkBundle();
      v20 = GKGetLocalizedStringFromTableInBundle();

      if (!v20)
      {
        sub_24E347CF8();
        v20 = sub_24E347CB8();
      }

      [v17 setTitle_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EACB0);
      sub_24E347328();
      if (v28)
      {
        sub_24DE56CE8(&v27, v29);
        v21 = v30;
        v22 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v22 + 8))(v16, 1, v21, v22);

        __swift_destroy_boxed_opaque_existential_1(v29);
      }

      else
      {
        sub_24E0B9DD0(&v27);
        v23 = [v12 navigationController];
        if (v23)
        {
          v24 = v23;
          [v23 pushViewController:v16 animated:1];
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v13);
    v15 = sub_24E347AA8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v4 + 104))(v6, *MEMORY[0x277D21CA8], v3);
    return sub_24E347AA8();
  }

  return v15;
}

JUMeasurements __swiftcall GKDashboardPlayerPhotoView.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  [v2 sizeThatFits_];
  v5 = 0.0;
  v6 = v4;
  result.var3 = v5;
  result.var2 = v6;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

unint64_t sub_24E0EB35C()
{
  result = qword_27F1E3AB0;
  if (!qword_27F1E3AB0)
  {
    type metadata accessor for ArcadePageAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3AB0);
  }

  return result;
}

uint64_t sub_24E0EB3B4(void **a1)
{
  v2 = sub_24E347218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
  type metadata accessor for ArcadePageAction();
  sub_24DFD8A60();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *a1;
    v10 = objc_allocWithZone(type metadata accessor for AppStoreContentViewController());
    v11 = v9;
    v12 = AppStoreContentViewController.init(gameRecord:)(v9);
    v13 = [v8 navigationController];
    if (v13)
    {
      v14 = v13;
      [v13 pushViewController:v12 animated:1];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    v15 = sub_24E347AA8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E3820);
    (*(v3 + 104))(v5, *MEMORY[0x277D21CA8], v2);
    return sub_24E347AA8();
  }

  return v15;
}

uint64_t ExtendedMarkdownText.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_24E343128();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  (*(v6 + 16))(v5 - v4, v1);
  result = sub_24E3464D8();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t ExtendedMarkdownText.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E0EB6CC(a1, a2);
  sub_24E343128();
  OUTLINED_FUNCTION_5_2();
  v5 = *(v4 + 8);

  return v5(a1, v3);
}

uint64_t sub_24E0EB6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3AC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v56 - v5;
  v7 = sub_24E343088();
  OUTLINED_FUNCTION_0_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v56 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3AD0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v14);
  v73 = &v56 - v15;
  v72 = sub_24E3430F8();
  OUTLINED_FUNCTION_0_14();
  v70 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v71 = v19 - v18;
  v69 = sub_24E3430D8();
  OUTLINED_FUNCTION_0_14();
  v65 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_1();
  v68 = v23 - v22;
  v24 = sub_24E343108();
  OUTLINED_FUNCTION_0_14();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_1();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3AD8);
  v32 = v31 - 8;
  MEMORY[0x28223BE20](v31);
  v34 = &v56 - v33;
  sub_24E343128();
  OUTLINED_FUNCTION_5_2();
  (*(v35 + 16))(a2, a1);
  v64 = a2;
  v36 = v7;
  sub_24E343118();
  (*(v26 + 16))(v34, v30, v24);
  v37 = *(v32 + 44);
  sub_24E0EBF10(&qword_27F1E3AE0, MEMORY[0x277CC8C08]);
  sub_24E3481A8();
  (*(v26 + 8))(v30, v24);
  v38 = v56;
  ++v70;
  v39 = v65++;
  v66 = (v39 + 2);
  v60 = (v9 + 16);
  v61 = (v9 + 32);
  v59 = (v9 + 88);
  v58 = *MEMORY[0x277D0C818];
  v57 = (v9 + 8);
  v67 = v37;
  while (1)
  {
    v40 = v71;
    sub_24E3481B8();
    sub_24E0EBF10(&qword_27F1E3AE8, MEMORY[0x277CC8BF8]);
    v41 = v24;
    v42 = v72;
    v43 = sub_24E347CA8();
    (*v70)(v40, v42);
    if (v43)
    {
      return sub_24DF8BFF4(v34, &qword_27F1E3AD8);
    }

    v44 = sub_24E3481E8();
    v46 = v68;
    v45 = v69;
    (*v66)(v68);
    v44(v75, 0);
    v47 = v41;
    sub_24E3481C8();
    sub_24E3430C8();
    sub_24E343098();
    sub_24E0EBF10(&qword_27F1E3AF0, MEMORY[0x277D0C828]);
    sub_24E3430E8();
    (*v65)(v46, v45);
    if (__swift_getEnumTagSinglePayload(v6, 1, v36) == 1)
    {
      sub_24DF8BFF4(v73, &qword_27F1E3AD0);
      sub_24DF8BFF4(v6, &qword_27F1E3AC8);
      goto LABEL_7;
    }

    v48 = v73;
    v49 = v6;
    (*v61)(v38, v6, v36);
    v50 = v38;
    v51 = v63;
    (*v60)(v63, v50, v36);
    v52 = (*v59)(v51, v36);
    if (v52 != v58)
    {
      break;
    }

    v53 = sub_24E3469D8();
    sub_24E0EBF58();
    v54 = sub_24E343158();
    v74 = v53;
    sub_24E0EBFBC();
    sub_24E343188();
    v54(v75, 0);
    (*v57)(v50, v36);
    sub_24DF8BFF4(v48, &qword_27F1E3AD0);
    v6 = v49;
    v38 = v50;
LABEL_7:
    v24 = v47;
  }

  result = sub_24E348BF8();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ExtendedMarkdownText()
{
  result = qword_27F1E3AB8;
  if (!qword_27F1E3AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E0EBEA4()
{
  result = sub_24E343128();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24E0EBF10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24E0EBF58()
{
  result = qword_27F1E3AF8;
  if (!qword_27F1E3AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3AF8);
  }

  return result;
}

unint64_t sub_24E0EBFBC()
{
  result = qword_27F1E3B00;
  if (!qword_27F1E3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B00);
  }

  return result;
}

uint64_t sub_24E0EC01C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E0EC05C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t OnboardingOverlayView.init(gameBundleID:dismissAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24E346B78();
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  result = sub_24E346B78();
  *(a5 + 48) = v11;
  *(a5 + 56) = v12;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t OnboardingOverlayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B08);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v7 = v1[1];
  v20[0] = *v1;
  v20[1] = v7;
  v8 = v1[3];
  v20[2] = v1[2];
  v21 = v8;
  *v6 = sub_24E345CF8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B10);
  sub_24E0EC3E4(&v6[*(v9 + 44)]);
  v10 = sub_24E345708();
  v11 = sub_24E3461E8();
  v12 = &v6[*(v3 + 36)];
  *v12 = v10;
  v12[8] = v11;
  v19 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346BA8();
  OUTLINED_FUNCTION_2_61();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_0_98(v13);
  OUTLINED_FUNCTION_2_61();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_0_98(v14);
  sub_24E0ECA40(v20, &v18);
  sub_24E0ECA40(v20, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B18);
  sub_24E0ECA78();
  sub_24E0ECB68();
  sub_24E346868();

  sub_24DF8BFF4(v6, &qword_27F1E3B08);
  OUTLINED_FUNCTION_2_61();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_0_98(v15);
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B68) + 36));
  sub_24E345528();
  sub_24E0ECA40(v20, &v18);
  result = sub_24E348078();
  *v16 = &unk_24E3776A0;
  v16[1] = v15;
  return result;
}

uint64_t sub_24E0EC3E4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF930);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  sub_24E345348();
  v9 = &v8[*(v3 + 44)];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF938) + 28);
  v11 = *MEMORY[0x277CDF440];
  v12 = sub_24E345248();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  sub_24E0ED234(v8, v5);
  *a1 = 0;
  *(a1 + 8) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B80);
  sub_24E0ED234(v5, a1 + *(v13 + 48));
  v14 = a1 + *(v13 + 64);
  *v14 = 0;
  *(v14 + 8) = 1;
  sub_24DF8BFF4(v8, &qword_27F1DF930);
  return sub_24DF8BFF4(v5, &qword_27F1DF930);
}

uint64_t sub_24E0EC58C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_24E0EC5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E345FA8();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B58);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B50);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E3B78);
  MEMORY[0x28223BE20](v13);
  v15 = (&v35 - v14);
  v41 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B88();
  if (v44 == 1)
  {
    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    *v15 = v17;
    v15[1] = v16;
    swift_storeEnumTagMultiPayload();
    sub_24DF88BEC(v17);
    sub_24E0ECBF4();
    sub_24E0ECC48();
    return sub_24E345E38();
  }

  else
  {
    v37 = a2;
    v20 = *a1;
    v19 = *(a1 + 8);
    v21 = swift_allocObject();
    v36 = v10;
    v22 = v21;
    v23 = *(a1 + 16);
    v21[1] = *a1;
    v21[2] = v23;
    v24 = *(a1 + 48);
    v21[3] = *(a1 + 32);
    v21[4] = v24;
    v25 = swift_allocObject();
    v26 = *(a1 + 16);
    v25[1] = *a1;
    v25[2] = v26;
    v27 = *(a1 + 48);
    v25[3] = *(a1 + 32);
    v25[4] = v27;
    v44 = v20;
    v45 = v19;
    v46 = sub_24E0ED0EC;
    v47 = v22;
    v48 = 6;
    v49 = sub_24E05BE00;
    v50 = v25;
    sub_24E0ECA40(a1, &v41);
    sub_24E0ECA40(a1, &v41);

    sub_24E345C58();
    v28 = sub_24E0ECD5C();
    sub_24E346748();
    (*(v38 + 8))(v6, v4);
    v29 = v46;
    v30 = v49;

    sub_24DE73FA0(v29);
    sub_24DE73FA0(v30);
    *&v41 = &type metadata for AuthenticationWithOnboardingView;
    *(&v41 + 1) = v4;
    v42 = v28;
    v43 = MEMORY[0x277CDE280];
    swift_getOpaqueTypeConformance2();
    v31 = v40;
    sub_24E3467E8();
    (*(v39 + 8))(v9, v31);
    v32 = sub_24E345708();
    v33 = sub_24E3461E8();
    v34 = &v12[*(v36 + 36)];
    *v34 = v32;
    v34[8] = v33;
    sub_24DE60CC8(v12, v15);
    swift_storeEnumTagMultiPayload();
    sub_24E0ECBF4();
    sub_24E0ECC48();
    sub_24E345E38();
    return sub_24DE60D30(v12);
  }
}

unint64_t sub_24E0ECA78()
{
  result = qword_27F1E3B20;
  if (!qword_27F1E3B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B08);
    sub_24E0ECB04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B20);
  }

  return result;
}

unint64_t sub_24E0ECB04()
{
  result = qword_27F1E3B28;
  if (!qword_27F1E3B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B28);
  }

  return result;
}

unint64_t sub_24E0ECB68()
{
  result = qword_27F1E3B38;
  if (!qword_27F1E3B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B18);
    sub_24E0ECBF4();
    sub_24E0ECC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B38);
  }

  return result;
}

unint64_t sub_24E0ECBF4()
{
  result = qword_27F1E3B40;
  if (!qword_27F1E3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B40);
  }

  return result;
}

unint64_t sub_24E0ECC48()
{
  result = qword_27F1E3B48;
  if (!qword_27F1E3B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B58);
    sub_24E345FA8();
    sub_24E0ECD5C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B48);
  }

  return result;
}

unint64_t sub_24E0ECD5C()
{
  result = qword_27F1E3B60;
  if (!qword_27F1E3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B60);
  }

  return result;
}

uint64_t sub_24E0ECE04(uint64_t a1)
{
  *(v1 + 32) = a1;
  sub_24E348068();
  *(v1 + 40) = sub_24E348058();
  v3 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E0ECE9C, v3, v2);
}

uint64_t sub_24E0ECE9C()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 48);
  *(v0 + 48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0);
  sub_24E346B98();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E0ECF34()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24DF8CD84;

  return sub_24E0ECE04(v0 + 16);
}

unint64_t sub_24E0ECFF8()
{
  result = qword_27F1E3B70;
  if (!qword_27F1E3B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E3B18);
    sub_24E0ECA78();
    sub_24E0ECB68();
    swift_getOpaqueTypeConformance2();
    sub_24E0CA2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E3B70);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_2_61();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_24E0ED16C(uint64_t a1)
{
  v2 = sub_24E345248();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x25303C410](v5);
}

uint64_t sub_24E0ED234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_0_98(uint64_t a1)
{
  v2 = *(v1 - 128);
  *(a1 + 16) = *(v1 - 144);
  *(a1 + 32) = v2;
  result = *(v1 - 112);
  v4 = *(v1 - 96);
  *(a1 + 48) = result;
  *(a1 + 64) = v4;
  return result;
}

uint64_t sub_24E0ED2C4()
{
  type metadata accessor for ReportUserProfileSection();
  result = swift_allocObject();
  *(result + 16) = 276;
  return result;
}

uint64_t sub_24E0ED2F0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = sub_24E347478();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_7_1();
  v69 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v61 - v6;
  v8 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v68 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v16 = sub_24E347458();
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_7_1();
  v70 = v18 - v17;
  v19 = sub_24E347088();
  OUTLINED_FUNCTION_0_14();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_1();
  v25 = v24 - v23;
  sub_24E347208();
  OUTLINED_FUNCTION_0_14();
  v71 = v27;
  v72 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_1();
  v30 = v29 - v28;
  memcpy(v77, __src, sizeof(v77));
  if (sub_24DF8BF80(v77) == 1 || (v77[1] & 1) != 0)
  {
    return 0;
  }

  v65 = v7;
  v66 = __src;
  v63 = v77[0];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98);
  inited = swift_initStackObject();
  v67 = xmmword_24E367D20;
  *(inited + 16) = xmmword_24E367D20;
  v33 = MEMORY[0x277D837D0];
  *(inited + 32) = 0x79546E6F69746361;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 72) = v33;
  *(inited + 48) = 0x74726F706572;
  *(inited + 56) = 0xE600000000000000;
  memcpy(v76, __dst, sizeof(v76));
  sub_24DF8BF98(v76, v75);
  v34 = sub_24E347C28();
  if (qword_27F1DD808 != -1)
  {
    swift_once();
  }

  v35 = sub_24E347058();
  v36 = __swift_project_value_buffer(v35, qword_27F20AE00);
  MEMORY[0x25303DB90](0x464174726F706572, 0xED0000646E656972, 0x6E6F74747562, 0xE600000000000000, v34, v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E5960);
  v37 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v67;
  (*(v21 + 16))(v38 + v37, v25, v19);
  sub_24E347448();
  v62 = v30;
  sub_24E3471D8();
  (*(v21 + 8))(v25, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78);
  v31 = swift_allocObject();
  *(v31 + 16) = v67;
  v39 = sub_24E347CB8();
  v40 = GKGameCenterUIFrameworkBundle();
  v41 = GKGetLocalizedStringFromTableInBundle();

  *&v67 = sub_24E347CF8();
  v43 = v42;

  memset(v75, 0, 64);
  v75[64] = -1;
  v44 = type metadata accessor for ReportFriendAction();
  v74[3] = v44;
  v74[4] = sub_24E0EDC24(&qword_27F1E0AD0, type metadata accessor for ReportFriendAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  (*(v71 + 16))(boxed_opaque_existential_1 + *(v44 + 20), v30, v72);
  v46 = v63;
  *boxed_opaque_existential_1 = v63;
  v47 = v46;
  sub_24E343398();
  v48 = v68;
  (*(v68 + 16))(v12, v15, v8);
  sub_24E0EDC24(&qword_27F1DE1B0, MEMORY[0x277CC95F0]);
  sub_24E348918();
  (*(v48 + 8))(v15, v8);
  v49 = type metadata accessor for DetailData();
  *(v31 + 56) = v49;
  *(v31 + 64) = sub_24E0EDC24(&qword_27F1DEE80, type metadata accessor for DetailData);
  v50 = __swift_allocate_boxed_opaque_existential_1((v31 + 32));
  *(v50 + 25) = 0u;
  v50[27] = 0;
  *(v50 + 23) = 0u;
  v51 = *(v49 + 56);
  v52 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v50 + v51, 1, 1, v52);
  v53 = v50 + *(v49 + 60);
  sub_24DF8BD34(v73, v50);
  *(v50 + 40) = 1;
  v54 = v67;
  v50[6] = v67;
  v50[7] = v43;
  v50[9] = 0;
  v50[10] = 0;
  v50[8] = 0;
  sub_24DF8C8EC(v75, (v50 + 11));
  v50[20] = 0;
  v50[21] = 0;
  *(v50 + 88) = 256;
  *v53 = 0;
  v53[8] = 0;

  sub_24DF8BDF0(v74, (v50 + 23));
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_24E369E30;
  strcpy((v55 + 32), "impressionType");
  *(v55 + 47) = -18;
  *(v55 + 48) = 0x74656C63696863;
  *(v55 + 56) = 0xE700000000000000;
  v56 = MEMORY[0x277D837D0];
  *(v55 + 72) = MEMORY[0x277D837D0];
  *(v55 + 80) = 0x6973736572706D69;
  v57 = MEMORY[0x277D83B88];
  *(v55 + 88) = 0xEF7865646E496E6FLL;
  *(v55 + 96) = 0;
  *(v55 + 120) = v57;
  *(v55 + 128) = 0x657079546469;
  *(v55 + 136) = 0xE600000000000000;
  *(v55 + 144) = 0x636974617473;
  *(v55 + 152) = 0xE600000000000000;
  *(v55 + 168) = v56;
  *(v55 + 176) = 1701667182;
  *(v55 + 216) = v56;
  *(v55 + 184) = 0xE400000000000000;
  *(v55 + 192) = v54;
  *(v55 + 200) = v43;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v58 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v58);
  v59 = v65;
  sub_24E347488();
  sub_24DF8BE60(v73);
  sub_24DF8C95C(v75, &qword_27F1DEE88);
  sub_24DF8C95C(v74, &qword_27F1DEE90);
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v52);
  sub_24DF8BEB4(v59, v50 + v51);
  sub_24DF8C95C(v66, &qword_27F1DEEA0);
  (*(v71 + 8))(v62, v72);
  return v31;
}