double sub_18B81F588(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 297) = 0u;
  return result;
}

uint64_t sub_18B81F5C0()
{

  return swift_deallocObject();
}

uint64_t sub_18B81F5F8()
{

  return swift_deallocObject();
}

size_t sub_18B81F65C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_18B81F838@<X0>(_OWORD *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = (v1 + *(v3 + 0x1D0));
  swift_beginAccess();
  v5 = v4[1];
  v12[0] = *v4;
  v12[1] = v5;
  v13[0] = v4[2];
  v6 = v13[0];
  *(v13 + 9) = *(v4 + 41);
  v7 = *(v13 + 9);
  *a1 = v12[0];
  a1[1] = v5;
  a1[2] = v6;
  *(a1 + 41) = v7;
  v8 = *(v3 + 96);
  v11[0] = *(v3 + 80);
  v11[1] = v8;
  v11[2] = *(v3 + 112);
  v9 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
  return (*(*(v9 - 8) + 16))(v11, v12, v9);
}

uint64_t sub_18B81F940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B81F9A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B81FA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B81FA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B81FAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B81FB48@<X0>(void *a1@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + 0x1B0);
  swift_beginAccess();
  memcpy(__dst, v1 + v4, 0x139uLL);
  memcpy(a1, v1 + v4, 0x139uLL);
  v5 = *(v3 + 96);
  v8[0] = *(v3 + 80);
  v8[1] = v5;
  v8[2] = *(v3 + 112);
  type metadata accessor for SFFluidCollectionView.Update();
  v6 = sub_18BC21848();
  return (*(*(v6 - 8) + 16))(v8, __dst, v6);
}

uint64_t sub_18B81FC54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id sub_18B81FCD4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBEB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s4ItemVMa_0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if (!*(v9 + 16))
  {
    return 0;
  }

  v10 = sub_18B80CA2C(a1);
  if (v11)
  {
    v12 = *(*(v9 + 56) + 16 * v10);
    sub_18B7EC6E4(a1, v8, _s4ItemVMa_0);
    v13 = v12;
    sub_18BAD2CF8(0, 0, v8);
    return v13;
  }

  if (!*(v9 + 16))
  {
    return 0;
  }

  v15 = sub_18BC21918();
  v16 = sub_18BC097CC(v5, v15, *(v9 + 36), 0, sub_18BB2C098, _s4ItemVMa_0, _s4ItemVMa_0, sub_18BB5D058);
  sub_18B7ED118(v5, _s4ItemVMa_0);
  return v16;
}

uint64_t sub_18B81FEDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 313))
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

id sub_18B81FF24()
{
  v1 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = 0;
  v3[2] = 0;
  *(v3 + 1) = MEMORY[0x1E69E7CC0];
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 6) = MEMORY[0x1E69E7CD0];
  v5 = *(v4 + 48);
  v6 = _s4ItemVMa();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v7 = type metadata accessor for SFTabSwitcherContentInternal(0);
  v8 = objc_allocWithZone(v7);
  sub_18B8162EC(v3, v8 + OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherContentInternal_wrapped, _s7ContentVMa);
  v12.receiver = v8;
  v12.super_class = v7;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  sub_18B8165D8(v3, _s7ContentVMa);
  *&v0[OBJC_IVAR___SFTabSwitcherContent__internal] = v9;
  v11.receiver = v0;
  v11.super_class = SFTabSwitcherContent;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_18B8200DC()
{
  if (sub_18B812A74() && (v2 = v1, ObjectType = swift_getObjectType(), v4 = COERCE_DOUBLE((*(v2 + 184))(v0, ObjectType, v2)), v6 = v5, v8 = v7, swift_unknownObjectRelease(), (v8 & 1) == 0))
  {
    [v0 stopScrollingAndZooming];
    result = [v0 contentOffset];
    if (v16 != v4 || v15 != v6)
    {

      return [v0 setContentOffset_];
    }
  }

  else
  {
    result = sub_18B82096C();
    if (result)
    {
      v10 = sub_18B8210F8();
      v11 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x178));
      v12 = v10 * *v11 + 0.0;
      v14 = v13 * v11[1] + 0.0;
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      sub_18BB49280(v18, v12, v14);
      return sub_18B988BAC(v18, &unk_1EA9D5060);
    }
  }

  return result;
}

id sub_18B820260(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_configuration];
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0x3FD999999999999ALL;
  v9[32] = 0;
  v10 = &v4[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_contentView];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuProvider];
  *v11 = sub_18B8390A8;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_systemSnapshotBackgroundView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v13 = &v4[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_tapHandler];
  *v13 = 0;
  v13[1] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_backgroundView] = 0;
  v14 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_highlightView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_shadowView] = 0;
  v4[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isHovered] = 0;
  v4[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_isTrackingTouchForHighlight] = 0;
  v4[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView11CapsuleView_menuIsShowing] = 0;
  v17.receiver = v4;
  v17.super_class = _s11CapsuleViewCMa();
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18B80C0B8();

  return v15;
}

uint64_t sub_18B8203EC()
{
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  v4[2] = inited;
  v4[3] = sub_18B8206FC;
  v4[4] = v2;
  v13 = sub_18B7D80AC;
  v14 = v4;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_18B7B0DB0;
  v12 = &block_descriptor_29;
  v5 = _Block_copy(&v9);
  v6 = v0;
  sub_18BC1E1A8();

  v13 = CGRectMake;
  v14 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_18B8043A0;
  v12 = &block_descriptor_37_0;
  v7 = _Block_copy(&v9);

  [v3 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v7);
  _Block_release(v5);
}

uint64_t sub_18B8205B0()
{

  return swift_deallocObject();
}

uint64_t sub_18B820624()
{
  v1 = OBJC_IVAR___SFTabOverview_targetScrollPositionForNextLayoutPass;
  swift_beginAccess();
  sub_18B7CA054(v0 + v1, v4, &unk_1EA9D53A0);
  if (*&v4[0])
  {
    v5[0] = v4[0];
    v5[1] = v4[1];
    v5[2] = v4[2];
    v5[3] = v4[3];
    v2 = sub_18B828F20(v5);
    sub_18B8303BC(v5);
  }

  else
  {
    sub_18B988BAC(v4, &unk_1EA9D53A0);
    return 0;
  }

  return v2;
}

id sub_18B82096C()
{
  sub_18B81FB48(__src);
  memcpy(__dst, __src, 0x139uLL);
  if (sub_18B81CA10(__dst) == 1)
  {
    return 0;
  }

  v2 = *&__dst[12];
  v3 = *&__dst[13];
  v4 = *&__dst[14];
  v5 = *&__dst[15];
  [v0 bounds];
  v15.origin.x = v6;
  v15.origin.y = v7;
  v15.size.width = v8;
  v15.size.height = v9;
  v14.origin.x = v2;
  v14.origin.y = v3;
  v14.size.width = v4;
  v14.size.height = v5;
  if (CGRectEqualToRect(v14, v15))
  {
    type metadata accessor for SFFluidCollectionView.Update();
    v1 = 0;
  }

  else
  {
    v1 = [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled];
    type metadata accessor for SFFluidCollectionView.Update();
  }

  v10 = sub_18BC21848();
  (*(*(v10 - 8) + 8))(__src, v10);
  return v1;
}

double sub_18B820C10(void *a1)
{
  v2 = sub_18B8210F8();
  v4 = v3;
  v5 = 0.0;
  if (v2 > 0.0)
  {
    v6 = v2;
    [a1 contentOffset];
    v5 = v7 / v6;
  }

  if (v4 > 0.0)
  {
    [a1 contentOffset];
  }

  return v5;
}

uint64_t sub_18B820C90()
{
  v1 = v0;
  if (*(*(v0 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_configuration + 8) + 40) - 2 >= 2)
  {
    v18 = 0.0;
    if (*(*(v0 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_configuration + 8) + 40))
    {
      v19 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
      swift_beginAccess();
      sub_18B80DBC4(v1 + v19, v26);
      v20 = v27;
      v21 = v28;
      __swift_project_boxed_opaque_existential_1Tm(v26, v27);
      v22 = (*(v21 + 192))(v20, v21);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v18 = -v22;
    }

    goto LABEL_11;
  }

  v2 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v0 + v2, v26);
  v3 = v27;
  v4 = v28;
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  v5 = (*(v4 + 200))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  sub_18B80DBC4(v0 + v2, v26);
  v6 = v27;
  v7 = v28;
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  sub_18BA72188(v6, v7);
  v9 = v8;
  sub_18B80DBC4(v1 + v2, v23);
  v10 = v24;
  v11 = v25;
  __swift_project_boxed_opaque_existential_1Tm(v23, v24);
  v12 = (*(v11 + 184))(v10, v11);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (v12 >= 0.0)
  {
    if (v12 >= v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = v12;
    }

    v15 = v14 * 0.67;
    v16 = -v5;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v17 = 0.0;
    if (v9 > 0.0)
    {
      v17 = v15;
    }

    v18 = v16 - v17;
LABEL_11:
    *(v1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_interactiveInsertionInfo + 8) = v18;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_18B820EF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8);
  result = sub_18BC1EDE8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  if (result >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = *(_s4ItemVMa_0() - 8);
  v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;

  return sub_18B80DF38(v7, a1);
}

void sub_18B820FC8(uint64_t a1)
{
  v3 = _s4PageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR___SFTabSwitcherPage__internal;
  v8 = *(v1 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v6, _s4PageVMa);
  v10 = *(v4 + 44);

  *&v6[v10] = a1;
  v11 = *(v1 + v7);
  v12 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v13 = v11;
  sub_18B81FC54(v6, v11 + v12, _s4PageVMa);
  swift_endAccess();
}

double sub_18B8210F8()
{
  [v0 contentSize];
  v2 = v1;
  [v0 bounds];
  x = v10.origin.x;
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  v7 = v2 - CGRectGetWidth(v10);
  if (v7 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetHeight(v11);
  return v8;
}

__n128 sub_18B82119C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_18BC1EDE8();
  sub_18B812F3C(v2, v6);
  v3 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v3;
  *(a1 + 96) = v6[6];
  v4 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  result = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_18B821348()
{
  v1 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  *&v198 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = v198;
  *(&v198 + 1) = v3;
  *&v199 = v4;
  *(&v199 + 1) = v5;
  *v200 = v6;
  *&v200[8] = v7;
  v8 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v187 = sub_18BC21848();
  v185 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v153 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v155 = &v141 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v180 = &v141 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v189 = &v141 - v15;
  v177 = v3;
  v178 = v2;
  *&v198 = v2;
  *(&v198 + 1) = v3;
  v175 = v5;
  v176 = v4;
  *&v199 = v4;
  *(&v199 + 1) = v5;
  v173 = v7;
  v174 = v6;
  *v200 = v6;
  *&v200[8] = v7;
  v16 = type metadata accessor for SFFluidCollectionView.Element();
  v188 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v164 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v184 = &v141 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v141 - v21;
  v191 = v8;
  v172 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v141 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v141 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v141 - v33;
  *&v36 = MEMORY[0x1EEE9AC00](v35).n128_u64[0];
  v163 = &v141 - v37;
  v38 = &selRef_accessoryButtonAlpha;
  [v0 bounds];
  result = CGRectEqualToRect(v202, *(v0 + *((*v1 & *v0) + 0x158)));
  if ((result & 1) == 0)
  {
    v190 = v34;
    v154 = v31;
    v148 = v28;
    v149 = v25;
    if (qword_1EA9D2280 != -1)
    {
LABEL_48:
      swift_once();
    }

    v40 = sub_18BC1F2C8();
    v41 = __swift_project_value_buffer(v40, qword_1EA9F7E38);
    v171 = v0;
    v42 = v0;
    v152 = v41;
    v43 = sub_18BC1F2A8();
    v44 = sub_18BC21228();

    v45 = os_log_type_enabled(v43, v44);
    v186 = v16;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v195 = v47;
      *v46 = 136446210;
      [v42 *(v38 + 2120)];
      *&v198 = v48;
      *(&v198 + 1) = v49;
      *&v199 = v50;
      *(&v199 + 1) = v51;
      type metadata accessor for CGRect(0);
      v52 = sub_18BC20BF8();
      v54 = sub_18B7EA850(v52, v53, &v195);
      v16 = v22;
      v55 = v186;

      *(v46 + 4) = v54;
      _os_log_impl(&dword_18B7AC000, v43, v44, "Getting layout attributes for elements in %{public}s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      v56 = v47;
      v57 = v55;
      v22 = v16;
      MEMORY[0x18CFFEEE0](v56, -1, -1);
      MEMORY[0x18CFFEEE0](v46, -1, -1);
    }

    else
    {
      v57 = v16;
    }

    v58 = sub_18BC20DE8();
    if (sub_18BC20E28())
    {
      WitnessTable = swift_getWitnessTable();
      v60 = v57;
      v61 = sub_18BB32DD8(v58, v57, WitnessTable);
    }

    else
    {
      v60 = v57;
      v61 = MEMORY[0x1E69E7CD0];
    }

    v201 = v61;
    sub_18B81F838(&v195);
    [v42 *(v38 + 2120)];
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    *&v198 = v178;
    *(&v198 + 1) = v177;
    *&v199 = v176;
    *(&v199 + 1) = v175;
    *v200 = v174;
    *&v200[8] = v173;
    v70 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
    v0 = SFFluidCollectionView.LayoutSnapshot.layoutAttributesForElements(in:)(v70, v63, v65, v67, v69);
    v198 = v195;
    v199 = v196;
    *v200 = v197[0];
    *&v200[9] = *(v197 + 9);
    (*(*(v70 - 1) + 8))(&v198, v70);
    v38 = 0;
    v73 = v0 + 7;
    v72 = v0[7];
    v162 = v0;
    v74 = 1 << *(v0 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v76 = v75 & v72;
    v77 = *MEMORY[0x1E69E7D40] & *v42;
    v147 = *(v77 + 0x150);
    v157 = *(v77 + 256);
    v78 = (v74 + 63) >> 6;
    v179 = v172 + 16;
    v181 = v172 + 32;
    v168 = (v188 + 2);
    ++v188;
    v165 = (v172 + 8);
    v167 = (v172 + 48);
    v150 = (v172 + 56);
    v160 = (v185 + 8);
    v156 = (v185 + 16);
    v151 = (v172 + 40);
    *&v71 = 136446210;
    v145 = v71;
    v79 = v191;
    v158 = v78;
    v159 = v0 + 7;
    v169 = v42;
    v192 = v22;
    if ((v75 & v72) != 0)
    {
      do
      {
LABEL_18:
        while (1)
        {
          v81 = __clz(__rbit64(v76));
          v76 &= v76 - 1;
          v82 = v163;
          v83 = v172;
          v84 = v162[6] + *(v172 + 72) * (v81 | (v38 << 6));
          v166 = *(v172 + 16);
          v166(v163, v84, v79);
          v85 = v190;
          v170 = *(v83 + 32);
          v170(v190, v82, v79);
          v86 = *v168;
          v87 = v192;
          (*v168)(v192, v85, v60);
          v161 = v86;
          v86(v164, v87, v60);
          v88 = swift_getWitnessTable();
          sub_18BC210E8();
          v89 = v184;
          sub_18BC21078();
          v185 = *v188;
          (v185)(v89, v60);
          v90 = v171;
          swift_beginAccess();
          sub_18BC1E3F8();
          *&v195 = v178;
          *(&v195 + 1) = v177;
          *&v196 = v176;
          *(&v196 + 1) = v175;
          *&v197[0] = v174;
          *(&v197[0] + 1) = v173;
          v91 = _s8ItemInfoCMa();
          v182 = v88;
          sub_18BC20A28();

          v0 = v193;
          if (!v193)
          {
            break;
          }

          v22 = v90;
          swift_beginAccess();
          *&v195 = v0;
          sub_18BC1E3F8();
          swift_getWitnessTable();
          v16 = sub_18BC210B8();

          if ((v16 & 1) == 0)
          {
            break;
          }

          v60 = v186;
          (v185)(v192);
          v79 = v191;
          (*v165)(v190, v191);
          v78 = v158;
          v73 = v159;
          v42 = v169;
          if (!v76)
          {
            goto LABEL_14;
          }
        }

        v183 = v91;
        v92 = v192;
        v93 = v180;
        v94 = v169;
        sub_18BB4A40C(v192, v180);
        v95 = *v167;
        v96 = v191;
        if ((*v167)(v93, 1, v191) == 1)
        {
          v97 = v96;
          swift_beginAccess();
          sub_18BC1E1A8();
          sub_18BA705B0(v92, v189);

          v98 = v180;
          if (v95(v180, 1, v97) != 1)
          {
            (*v160)(v98, v187);
          }
        }

        else
        {
          v99 = v189;
          v170(v189, v93, v96);
          (*v150)(v99, 0, 1, v96);
        }

        swift_beginAccess();
        sub_18BC1E3F8();
        v22 = v192;
        sub_18BC20A28();

        v100 = v195;
        if (v195)
        {
          v101 = v155;
          (*v156)(v155, v189, v187);
          v79 = v191;
          if (v95(v101, 1, v191) == 1)
          {
            v166(v154, v190, v79);
            if (v95(v101, 1, v79) == 1)
            {
              sub_18BC1E1A8();
            }

            else
            {
              v123 = v101;
              v124 = *v160;
              sub_18BC1E1A8();
              v124(v123, v187);
            }

            v119 = v186;
            v79 = v191;
            v118 = v154;
          }

          else
          {
            v118 = v154;
            v170(v154, v101, v79);
            sub_18BC1E1A8();
            v119 = v186;
          }

          v125 = *(*v100 + 184);
          swift_beginAccess();
          (*v151)(&v100[v125], v118, v79);
          swift_endAccess();
          v16 = v169;
          v122 = v119;
          v22 = v192;
        }

        else
        {
          v102 = v148;
          v103 = v191;
          v166(v148, v190, v191);
          v104 = sub_18BC1F2A8();
          v146 = sub_18BC21228();
          if (os_log_type_enabled(v104, v146))
          {
            v105 = swift_slowAlloc();
            v142 = v105;
            v106 = swift_slowAlloc();
            v143 = v104;
            v144 = v106;
            *&v195 = v106;
            *v105 = v145;
            v107 = v184;
            v108 = v186;
            v161(v184, v102, v186);
            (*v165)(v102, v103);
            v141 = SFFluidCollectionView.Element.description.getter(v108);
            v109 = v103;
            v111 = v110;
            (v185)(v107, v108);
            v112 = sub_18B7EA850(v141, v111, &v195);

            v113 = v142;
            v114 = v143;
            *(v142 + 1) = v112;
            v115 = v113;
            _os_log_impl(&dword_18B7AC000, v114, v146, "Creating info for %{public}s", v113, 0xCu);
            v116 = v144;
            __swift_destroy_boxed_opaque_existential_1Tm(v144);
            MEMORY[0x18CFFEEE0](v116, -1, -1);
            MEMORY[0x18CFFEEE0](v115, -1, -1);

            v117 = v109;
          }

          else
          {
            (*v165)(v102, v103);

            v117 = v103;
          }

          v120 = v153;
          v121 = v149;
          (*v156)(v153, v189, v187);
          if (v95(v120, 1, v117) == 1)
          {
            v166(v121, v190, v117);
            if (v95(v120, 1, v117) != 1)
            {
              (*v160)(v120, v187);
            }
          }

          else
          {
            v170(v121, v120, v117);
          }

          v16 = v94;
          v100 = sub_18BAC1238(v121);
          v122 = v186;
          v161(v184, v22, v186);
          v193 = v100;
          swift_beginAccess();
          sub_18BC209F8();
          swift_retain_n();
          sub_18BC20A38();
          swift_endAccess();
          v79 = v191;
        }

        v194 = v100;
        swift_beginAccess();
        swift_getWitnessTable();
        sub_18BC210E8();
        sub_18BC21078();
        v0 = v193;
        swift_endAccess();

        (*v160)(v189, v187);
        v60 = v122;
        (v185)(v22, v122);
        (*v165)(v190, v79);
        v78 = v158;
        v73 = v159;
        v42 = v16;
      }

      while (v76);
    }

    while (1)
    {
LABEL_14:
      v80 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v80 >= v78)
      {
        break;
      }

      v76 = v73[v80];
      ++v38;
      if (v76)
      {
        v38 = v80;
        goto LABEL_18;
      }
    }

    v126 = sub_18BC1F2A8();
    v127 = sub_18BC21228();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *&v195 = v129;
      *v128 = 136315138;
      swift_beginAccess();
      sub_18BC1E3F8();
      swift_getWitnessTable();
      v130 = sub_18BC20FE8();
      v132 = v131;

      v133 = sub_18B7EA850(v130, v132, &v195);

      *(v128 + 4) = v133;
      v134 = MEMORY[0x1E69E7D40];
      _os_log_impl(&dword_18B7AC000, v126, v127, "Elements in bounds: %s", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      MEMORY[0x18CFFEEE0](v129, -1, -1);
      MEMORY[0x18CFFEEE0](v128, -1, -1);

      v135 = &selRef_accessoryButtonAlpha;
    }

    else
    {

      v135 = &selRef_accessoryButtonAlpha;
      v134 = MEMORY[0x1E69E7D40];
    }

    swift_beginAccess();
    *(v42 + *((*v134 & *v42) + 0x160)) = v201;
    sub_18BC1E3F8();

    [v42 v135[265]];
    v136 = (v42 + *((*v134 & *v42) + 0x158));
    *v136 = v137;
    v136[1] = v138;
    v136[2] = v139;
    v136[3] = v140;
  }

  return result;
}

BOOL sub_18B82267C()
{
  swift_beginAccess();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  v0 = sub_18B8227A4();

  return v0;
}

void sub_18B8227E8(char *a1)
{
  v3 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = *&a1[OBJC_IVAR___SFTabSwitcherProfile_wrapped];
    v7 = *&a1[OBJC_IVAR___SFTabSwitcherProfile_wrapped + 8];
    v8 = *&a1[OBJC_IVAR___SFTabSwitcherProfile_wrapped + 24];
    v19 = *&a1[OBJC_IVAR___SFTabSwitcherProfile_wrapped + 16];
    v9 = v7;
    sub_18BC1E3F8();
    v10 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v19 = 0;
    v8 = 0;
  }

  v11 = OBJC_IVAR___SFTabSwitcherPage__internal;
  v12 = *(v1 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v13 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v12 + v13, v5, _s4PageVMa);
  v14 = &v5[*(v3 + 64)];
  sub_18B7E9C58(*v14, *(v14 + 1), *(v14 + 2), *(v14 + 3));
  *v14 = v6;
  *(v14 + 1) = v7;
  *(v14 + 2) = v19;
  *(v14 + 3) = v8;
  v15 = *(v1 + v11);
  v16 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v17 = v15;
  sub_18B81FC54(v5, v15 + v16, _s4PageVMa);
  swift_endAccess();
}

uint64_t SFFluidCollectionView.LayoutSnapshot.layoutAttributesForElements(in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  *&v86 = a1[2];
  v10 = v86;
  *(&v86 + 1) = v11;
  *&v87 = v12;
  *(&v87 + 1) = v13;
  v88 = v14;
  v89 = v15;
  v16 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v71 = sub_18BC21848();
  v81 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v72 = v62 - v17;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v65 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v64 = v62 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v78 = v62 - v24;
  *&v86 = v10;
  *(&v86 + 1) = v11;
  *&v87 = v12;
  *(&v87 + 1) = v13;
  v88 = v14;
  v89 = v15;
  v82 = type metadata accessor for SFFluidCollectionView.Element();
  v79 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v77 = v62 - v25;
  v26 = *(v5 + 1);
  v76 = *v5;
  v67 = v26;
  v27 = v5[3];
  v28 = v5[4];
  v29 = sub_18BC20DE8();
  v83 = v16;
  if (sub_18BC20E28())
  {
    v30 = v83;
    WitnessTable = swift_getWitnessTable();
    v32 = sub_18BB32DD8(v29, v30, WitnessTable);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CD0];
  }

  v85 = v32;
  sub_18B82349C(v27, v28, a2, a3, a4, a5);
  v34 = v33;
  *&v86 = v10;
  *(&v86 + 1) = v11;
  *&v87 = v12;
  *(&v87 + 1) = v13;
  v88 = v14;
  v89 = v15;
  v35 = _s14LayoutSnapshotV9RectSliceVMa();
  if (!sub_18BC20E28())
  {
LABEL_27:

    return v85;
  }

  v36 = 0;
  v66 = v34 + 32;
  v75 = v79 + 16;
  v74 = v79 + 8;
  v73 = (v18 + 48);
  v70 = (v18 + 32);
  v69 = (v18 + 8);
  v63 = (v18 + 16);
  v37 = (v81 + 8);
  v62[2] = v34;
  v62[1] = v35;
  while (1)
  {
    v39 = sub_18BC20E08();
    result = sub_18BC20DC8();
    if ((v39 & 1) == 0)
    {
      goto LABEL_29;
    }

    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_30;
    }

    v41 = (v66 + 32 * v36);
    v42 = v41[1];
    v86 = *v41;
    v87 = v42;
    v81 = swift_getWitnessTable();
    sub_18BC210E8();
    swift_getWitnessTable();
    sub_18BC20A28();
    v43 = v84;
    if (v84)
    {
      break;
    }

LABEL_7:
    v36 = v38;
    if (v38 == sub_18BC20E28())
    {
      goto LABEL_27;
    }
  }

  v68 = v36 + 1;
  v44 = 0;
  v45 = v84 + 56;
  v46 = 1 << *(v84 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v84 + 56);
  v49 = (v46 + 63) >> 6;
  v50 = v72;
  v80 = v84;
  if (v48)
  {
    while (2)
    {
      v51 = v44;
LABEL_21:
      v52 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v53 = v79;
      v54 = v77;
      v55 = v82;
      (*(v79 + 16))(v77, *(v43 + 48) + *(v79 + 72) * (v52 | (v51 << 6)), v82);
      v56 = v83;
      sub_18BC20A28();
      (*(v53 + 8))(v54, v55);
      if ((*v73)(v50, 1, v56) == 1)
      {
        (*v37)(v50, v71);
        v44 = v51;
        v43 = v80;
        if (v48)
        {
          continue;
        }
      }

      else
      {
        v57 = v83;
        (*v70)(v78, v50, v83);
        v90.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v57);
        v91.origin.x = a2;
        v91.origin.y = a3;
        v91.size.width = a4;
        v91.size.height = a5;
        if (CGRectIntersectsRect(v90, v91))
        {
          v58 = v83;
          v59 = v78;
          (*v63)(v65, v78, v83);
          swift_getWitnessTable();
          sub_18BC210E8();
          v60 = v64;
          sub_18BC21078();
          v61 = *v69;
          (*v69)(v60, v58);
          v61(v59, v58);
        }

        else
        {
          (*v69)(v78, v83);
        }

        v44 = v51;
        v50 = v72;
        v43 = v80;
        if (v48)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v51 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v51 >= v49)
    {

      v38 = v68;
      goto LABEL_7;
    }

    v48 = *(v45 + 8 * v51);
    ++v44;
    if (v48)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_29:
  result = sub_18BC21B08();
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

id sub_18B823100(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - v8;
  swift_beginAccess();
  sub_18BC1E3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D60);
  sub_18BC20A28();

  if (v30)
  {
    return v30;
  }

  v27 = v7;
  v29 = a2;
  swift_beginAccess();
  v11 = sub_18BC209F8();
  v28 = a1;
  sub_18BB12664(a1, v11, &v31);
  swift_endAccess();
  v12 = v31;
  if (v31)
  {
    AssociatedConformanceWitness = v32;
    ObjectType = swift_getObjectType();
    v30 = v12;
    v26 = v9;
    v15 = *(AssociatedConformanceWitness + 16);
    v16 = v12;
    v15(ObjectType, AssociatedConformanceWitness);
    v9 = v26;
    v17 = [v16 layer];

    [v17 clearHasBeenCommitted];
  }

  else
  {
    v18 = v3[15];
    v19 = v3[16];
    __swift_project_boxed_opaque_existential_1Tm(v3 + 12, v18);
    v20 = (*(v19 + 72))(v18, v19);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = v20;
  }

  v21 = v28;
  (*(v27 + 16))(v9, v28, v6);
  v31 = v16;
  v32 = AssociatedConformanceWitness;
  swift_beginAccess();
  v22 = v16;
  sub_18BC20A38();
  swift_endAccess();
  v23 = v3[15];
  v24 = v3[16];
  __swift_project_boxed_opaque_existential_1Tm(v3 + 12, v23);
  v25 = v3[2];
  sub_18BC1E1A8();
  v25(&v30, v21);

  sub_18B80D714(v22, &v30, v29, v23, v24);

  __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  return v22;
}

void sub_18B82349C(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  _s14LayoutSnapshotV9RectSliceVMa();
  sub_18BC20DE8();
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  v12 = CGRectGetMinX(v25) / a1;
  if (COERCE__INT64(fabs(v12)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v13 = CGRectGetMaxX(v26) / a1;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v14 = v12;
  v15 = v13;
  if (v13 >= v12)
  {
    while (1)
    {
      v27.origin.x = a3;
      v27.origin.y = a4;
      v27.size.width = a5;
      v27.size.height = a6;
      v16 = CGRectGetMinY(v27) / a2;
      if (COERCE__INT64(fabs(v16)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v16 <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (v16 >= 9.22337204e18)
      {
        goto LABEL_27;
      }

      v28.origin.x = a3;
      v28.origin.y = a4;
      v28.size.width = a5;
      v28.size.height = a6;
      v17 = CGRectGetMaxY(v28) / a2;
      if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      if (v17 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v17 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      v18 = v16;
      v19 = v17;
      if (v17 < v16)
      {
        goto LABEL_31;
      }

      v20 = sub_18BC20E78();
      while (1)
      {
        CGRectMake(v20, v21, v22, v23);
        v20 = sub_18BC20E38();
        if (v19 == v18)
        {
          break;
        }

        v24 = __OFADD__(v18++, 1);
        if (v24)
        {
          __break(1u);
          goto LABEL_25;
        }
      }

      if (v14 == v15)
      {
        return;
      }

      v24 = __OFADD__(v14++, 1);
      if (v24)
      {
        __break(1u);
        return;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_38:
  __break(1u);
}

void sub_18B82375C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_18BC20BD8();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_18B8237D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content;
  v3 = *(v2 + 1);
  v4 = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 1) = v3;
  *(a1 + 8) = v4;
  return sub_18BC1E3F8();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_18B82380C(uint64_t a1, uint64_t a2)
{
  v5 = _s4PageVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR___SFTabSwitcherPage__internal;
  v10 = *(v2 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v11 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v10 + v11, v8, _s4PageVMa);
  v12 = &v8[*(v6 + 84)];

  *v12 = a1;
  v12[1] = a2;
  v13 = *(v2 + v9);
  v14 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v15 = v13;
  sub_18B81FC54(v8, v13 + v14, _s4PageVMa);
  swift_endAccess();
}

uint64_t sub_18B82394C()
{
  v1 = v0[2];
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = (*(v2 + 80) + 168) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v1 - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[20];
  v11 = *(v0 + v7);
  v12 = *(v0 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_18B823A58(v8, v9, (v0 + 6), v10, v0 + v3, v0 + v6, v11, v12);
}

uint64_t sub_18B823A58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8)
{
  v12 = *a8;
  v13 = *MEMORY[0x1E69E7D40];
  ObjectType = swift_getObjectType();
  v22[0] = a1;
  (*(*(a2 + 8) + 8))(a3, ObjectType);
  v15 = *((v13 & v12) + 0x58);
  v16 = *(v15 + 48);
  v17 = *((v13 & v12) + 0x50);
  v22[3] = swift_getAssociatedTypeWitness();
  v22[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v22);
  v16(v17, v15);
  sub_18B8250D8(a1, a2, a5, v22, a7);
  v18 = __swift_destroy_boxed_opaque_existential_1Tm(v22);
  result = (*((*MEMORY[0x1E69E7D40] & *a8) + 0x1F8))(v18);
  if (result)
  {
    return [a1 layoutIfNeeded];
  }

  return result;
}

uint64_t sub_18B823C10()
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v121[-v4];
  v8 = *(*((v7 & v6) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v121[-v10];
  v13 = *((v12 & v11) + 0x70);
  v14 = *((v12 & v11) + 0x78);
  v129 = v15;
  *&v16 = v15;
  *(&v16 + 1) = *v17;
  *&v19 = *(v18 + 80);
  v128 = v20;
  *(&v19 + 1) = v20;
  v138 = v16;
  aBlock = v19;
  v159 = v16;
  v137 = v19;
  v140 = v13;
  v160 = v13;
  v161 = v14;
  v139 = v14;
  v21 = type metadata accessor for SFFluidCollectionView.Element();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v132 = &v121[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v121[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v136 = &v121[-v28];
  MEMORY[0x1EEE9AC00](v29);
  v142 = &v121[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v121[-v32];
  *&v35 = MEMORY[0x1EEE9AC00](v34).n128_u64[0];
  v143 = &v121[-v36];
  v37 = [v1 window];
  v38 = v37;
  if (v37)
  {
  }

  v134 = v38;
  v130 = v26;
  v131 = v5;
  v39 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x100);
  swift_beginAccess();
  v40 = *(v1 + v39);
  if ((v40 & 0xC000000000000001) != 0)
  {
    sub_18BC1E3F8();
    sub_18BC21958();
    aBlock = v137;
    v159 = v138;
    v160 = v140;
    v161 = v139;
    _s8ItemInfoCMa();
    swift_getWitnessTable();
    sub_18BC210A8();
    result = v162;
    v151 = v163;
    v43 = v164;
    v44 = v165;
    v45 = v166;
  }

  else
  {
    v46 = -1 << *(v40 + 32);
    v47 = *(v40 + 56);
    v151 = v40 + 56;
    v48 = ~v46;
    v49 = -v46;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v45 = v50 & v47;
    result = sub_18BC1E3F8();
    v43 = v48;
    v44 = 0;
  }

  v135 = v43;
  v51 = (v43 + 64) >> 6;
  v152 = (v22 + 16);
  v155 = (v22 + 8);
  v126 = (v3 + 16);
  v125 = (v3 + 8);
  v124 = (v8 + 32);
  v123 = (v8 + 8);
  v133 = &v159;
  *&v41 = 136642819;
  v141 = v41;
  v144 = v1;
  v52 = v143;
  v150 = result;
  v148 = v51;
  while (result < 0)
  {
    if (!sub_18BC219D8())
    {
      return sub_18B7D2E34();
    }

    aBlock = v137;
    v159 = v138;
    v160 = v140;
    v161 = v139;
    _s8ItemInfoCMa();
    sub_18BC21FA8();
    swift_unknownObjectRelease();
    v58 = v157;
    v55 = v44;
    v57 = v45;
    if (!v157)
    {
      return sub_18B7D2E34();
    }

LABEL_24:
    v153 = v57;
    v59 = *(*v58 + 184);
    swift_beginAccess();
    v60 = *v152;
    v156 = v58;
    (v60)(v52, v58 + v59, v21);
    if (qword_1EA9D2280 != -1)
    {
      swift_once();
    }

    v61 = sub_18BC1F2C8();
    v62 = __swift_project_value_buffer(v61, qword_1EA9F7E38);
    (v60)(v33, v52, v21);
    v63 = sub_18BC1F2A8();
    v64 = sub_18BC21228();
    v65 = os_log_type_enabled(v63, v64);
    v149 = v60;
    v147 = v62;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      *&aBlock = v146;
      *v66 = v141;
      v67 = v142;
      (v60)(v142, v33, v21);
      v145 = v63;
      v68 = *v155;
      (*v155)(v33, v21);
      v69 = v33;
      v70 = SFFluidCollectionView.Element.description.getter(v21);
      v72 = v71;
      v154 = v68;
      v68(v67, v21);
      v73 = v70;
      v33 = v69;
      v52 = v143;
      v74 = sub_18B7EA850(v73, v72, &aBlock);

      *(v66 + 4) = v74;
      v63 = v145;
      _os_log_impl(&dword_18B7AC000, v145, v64, "Laying out %{sensitive}s", v66, 0xCu);
      v75 = v146;
      __swift_destroy_boxed_opaque_existential_1Tm(v146);
      MEMORY[0x18CFFEEE0](v75, -1, -1);
      v76 = v66;
      v1 = v144;
      MEMORY[0x18CFFEEE0](v76, -1, -1);
    }

    else
    {
      v154 = *v155;
      v154(v33, v21);
    }

    v77 = sub_18BAC12A8();
    v78 = v77;
    v79 = sub_18BB54B60(v52);
    result = sub_18BA11234(v21);
    if ((result & 1) == 0 && (*(v156 + *(*v156 + 200)) & 1) == 0)
    {
      if (!v77)
      {
        goto LABEL_37;
      }

      if (v79)
      {
        if (!*(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x190)))
        {
          goto LABEL_66;
        }

        v80 = v78;
        sub_18BC1E1A8();
        sub_18BAC3BFC(v80);

        sub_18BAC12B0(0);

LABEL_37:
        if (v134 || *(*(v156 + *(*v156 + 224)) + 24) >= 1)
        {
          (v149)(v136, v52, v21);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            v82 = v77;
            if (EnumCaseMultiPayload == 2)
            {

              v83 = *v136;
              v84 = v129;
              TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
              v146 = v83;
              v86 = swift_projectBox();
              v87 = *(TupleTypeMetadata2 + 48);
              (*v126)(v131, v86, v84);
              (v149)(v130, v86 + v87, v21);
              v88 = v144;
              v89 = (v144 + *((*MEMORY[0x1E69E7D40] & *v144) + 0xB0));
              swift_beginAccess();
              v90 = *v89;
              if (*v89)
              {
                sub_18B824D48(v90);
                v91 = v88;
                v92 = v130;
                v82 = v90(v91, v131, v130);
                sub_18B7B171C(v90);
                v154(v92, v21);
                (*v125)(v131, v129);
              }

              else
              {
                v154(v130, v21);
                (*v125)(v131, v84);

                v82 = 0;
              }
            }
          }

          else if (EnumCaseMultiPayload)
          {

            v93 = v127;
            v94 = v128;
            (*v124)(v127, v136, v128);
            v82 = sub_18BB4BF4C(v93, v77);
            (*v123)(v93, v94);
          }

          else
          {
            v154(v136, v21);
            v82 = v77;
          }
        }

        else
        {

          v82 = 0;
        }

        v95 = v82;
        sub_18BAC12B0(v82);
        v146 = v95;

        if (!v82)
        {
          if (!v77)
          {
            goto LABEL_11;
          }

          goto LABEL_53;
        }

        if (!v77 || (type metadata accessor for SFFluidCollectionReusableView(), v96 = v78, v97 = v146, v98 = sub_18BC215C8(), v97, v96, (v98 & 1) == 0))
        {
          v99 = v146;
          v100 = [v146 layer];
          [v100 clearHasBeenCommitted];

          (*((*MEMORY[0x1E69E7D40] & *v99) + 0xE8))();
LABEL_53:
          v101 = objc_opt_self();
          v160 = sub_18BB698AC;
          v161 = v156;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v159 = sub_18B7B0DB0;
          *(&v159 + 1) = &block_descriptor_187;
          v102 = _Block_copy(&aBlock);
          sub_18BC1E1A8();

          [v101 _performWithoutRetargetingAnimations_];
          _Block_release(v102);
          if (!v82)
          {

LABEL_11:
            v1 = v144;
            v53 = sub_18BB4E7C4(v52);
LABEL_12:
            v154(v52, v21);

            goto LABEL_13;
          }
        }

        v103 = v132;
        v104 = v149;
        (v149)(v132, v52, v21);
        v105 = sub_18BC1F2A8();
        v106 = sub_18BC21228();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v122 = v106;
          v108 = v107;
          v145 = swift_slowAlloc();
          *&aBlock = v145;
          *v108 = v141;
          v147 = v33;
          v109 = v142;
          (v104)(v142, v103, v21);
          v110 = v154;
          v154(v103, v21);
          v149 = v105;
          v111 = SFFluidCollectionView.Element.description.getter(v21);
          v113 = v112;
          v114 = v109;
          v33 = v147;
          v110(v114, v21);
          v115 = sub_18B7EA850(v111, v113, &aBlock);

          *(v108 + 4) = v115;
          v105 = v149;
          _os_log_impl(&dword_18B7AC000, v149, v122, "Creating view for element %{sensitive}s", v108, 0xCu);
          v116 = v145;
          __swift_destroy_boxed_opaque_existential_1Tm(v145);
          MEMORY[0x18CFFEEE0](v116, -1, -1);
          MEMORY[0x18CFFEEE0](v108, -1, -1);
        }

        else
        {
          v154(v103, v21);
        }

        v1 = v144;
        v78 = v146;
      }

      v53 = sub_18BB4E7C4(v52);
      goto LABEL_59;
    }

    v53 = sub_18BB4E7C4(v52);
    if (!v77)
    {
      goto LABEL_12;
    }

LABEL_59:
    v117 = [v78 superview];
    if (v117 && (v118 = v117, sub_18B7B0AC0(0, &qword_1EA9D46F0), v119 = v53, v120 = sub_18BC215C8(), v118, v119, (v120 & 1) != 0))
    {
    }

    else
    {
      [v53 addSubview_];
    }

    v154(v52, v21);
LABEL_13:
    v44 = v55;
    v45 = v153;
    result = v150;
    v51 = v148;
  }

  v54 = v45;
  v55 = v44;
  if (v45)
  {
LABEL_20:
    v57 = (v54 - 1) & v54;
    v58 = *(*(result + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));
    sub_18BC1E1A8();
    if (!v58)
    {
      return sub_18B7D2E34();
    }

    goto LABEL_24;
  }

  v56 = v44;
  while (1)
  {
    v55 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v55 >= v51)
    {
      return sub_18B7D2E34();
    }

    v54 = *(v151 + 8 * v55);
    ++v56;
    if (v54)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_18B824D48(uint64_t result)
{
  if (result)
  {
    return sub_18BC1E1A8();
  }

  return result;
}

id sub_18B824D94(uint64_t a1)
{
  v3 = _s7SectionVMa_0();
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v4[7];
  v8 = sub_18BC1EC08();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  *v6 = 1;
  v6[v4[8]] = 0;
  *&v6[v4[9]] = MEMORY[0x1E69E7CC0];
  v10 = &v6[v4[10]];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = type metadata accessor for SFTabSwitcherSectionInternal(0);
  v12 = objc_allocWithZone(v11);
  sub_18B8162EC(v6, v12 + OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped, _s7SectionVMa_0);
  v17.receiver = v12;
  v17.super_class = v11;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  sub_18B8165D8(v6, _s7SectionVMa_0);
  *&v1[OBJC_IVAR___SFTabSwitcherSection__internal] = v13;
  v16.receiver = v1;
  v16.super_class = SFTabSwitcherSection;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  (*(v9 + 8))(a1, v8);
  return v14;
}

uint64_t sub_18B824F78(const void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0);
  swift_beginAccess();
  memcpy(__dst, v1 + v3, 0x139uLL);
  memcpy(v1 + v3, a1, 0x139uLL);
  type metadata accessor for SFFluidCollectionView.Update();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 8))(__dst, v4);
}

uint64_t sub_18B8250D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = v5[15];
  v11 = v5[16];
  __swift_project_boxed_opaque_existential_1Tm(v5 + 12, v10);
  v12 = v5[2];
  sub_18BC1E1A8();
  v12(v14, a3);

  sub_18B810470(a1, v14, a4, a5, v10, v11);
  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

uint64_t sub_18B82518C()
{
  sub_18B81F588(__src);
  memcpy(__dst, __src, 0x139uLL);
  sub_18B825ABC(__dst);
  SFFluidCollectionView.LayoutInvalidationContext.init()(__dst);
  v11 = __dst[0];
  v12 = __dst[1];
  v13 = BYTE2(__dst[1]);
  sub_18B8262B4(&v11);
  *(v0 + 91) = 0;
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 90);
  v3 = *(v0 + 88);
  result = sub_18BC1E3F8();
  if (v1)
  {
    v5 = v3 | (v2 << 16);
    swift_beginAccess();
    *(v0 + 80) = 0;
    *(v0 + 90) = 0;
    *(v0 + 88) = 0;

    v6 = v1;
    v7 = v5 & 0x101;
    v8 = BYTE2(v5) & 1;
    sub_18B82F6F4(&v6);
  }

  return result;
}

void sub_18B825434()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  if (*(v0 + *(v3 + 0x1C0) + 2) == 1)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1D8);
    swift_beginAccess();
    v5 = *(**(v1 + v4) + 424);
    v6 = sub_18BC1E1A8();
    v5(v6);

    *(v1 + *((*v2 & *v1) + 0x1C0) + 2) = 0;
    v3 = *v2 & *v1;
  }

  if (*(v1 + *(v3 + 448) + 1) == 1)
  {
    swift_beginAccess();
    sub_18BC1E1A8();
    sub_18B82518C();

    *(v1 + *((*v2 & *v1) + 0x1C0) + 1) = 0;
  }
}

uint64_t sub_18B825614(uint64_t a1)
{
  swift_beginAccess();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  v3 = sub_18B8227A4();

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = v1[15];
    v6 = v1[16];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 12, v5);
    v7 = v1[2];
    sub_18BC1E1A8();
    v7(v9, a1);

    v4 = sub_18B814A2C(v9, v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return v4 & 1;
}

uint64_t sub_18B825744(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v8 = v1[2];
  sub_18BC1E1A8();
  v8(v25, a1);

  swift_beginAccess();
  sub_18BC1E3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D60);
  sub_18BC20A28();

  v9 = v21;
  if (v21)
  {
    v19 = v5;
    v20 = v7;
    v18 = v22;
    v10 = v1[15];
    v11 = v2[16];
    __swift_project_boxed_opaque_existential_1Tm(v2 + 12, v2[15]);
    v12 = v9;
    LOBYTE(v10) = sub_18B86EA9C(v12, v25, v10, v11);

    if (v10)
    {
      v19 = *(v19 + 16);
      (v19)(v20, a1, v4);
      v23 = 0;
      v24 = 0;
      swift_beginAccess();
      sub_18BC209F8();
      sub_18BC20A38();
      swift_endAccess();
      v13 = v2[15];
      v14 = v2[16];
      __swift_project_boxed_opaque_existential_1Tm(v2 + 12, v13);
      v15 = v12;
      sub_18B86ED4C(v15, v25, v13, v14);

      [v15 setHidden_];
      [v15 _removeAllRetargetableAnimations_];
      (v19)(v20, a1, v4);
      v23 = v9;
      v24 = v18;
      swift_beginAccess();
      v16 = v15;
      sub_18BC20A38();
      swift_endAccess();
    }

    else
    {
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v25);
}

void sub_18B825A3C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  a4();
  v7 = sub_18BC20D98();
  v8 = a1;
  a5(v7);
}

uint64_t sub_18B825ABC(const void *a1)
{
  v3 = (v1 + 168);
  swift_beginAccess();
  memcpy(__dst, v3, 0x139uLL);
  memcpy(v3, a1, 0x139uLL);
  type metadata accessor for SFFluidCollectionView.Update();
  v4 = sub_18BC21848();
  return (*(*(v4 - 8) + 8))(__dst, v4);
}

size_t sub_18B825BA0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t SFFluidCollectionView.LayoutInvalidationContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SFFluidCollectionView.Element();
  v3 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    WitnessTable = swift_getWitnessTable();
    v5 = sub_18BB32DD8(v3, v2, WitnessTable);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CD0];
  }

  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  return result;
}

size_t sub_18B825E60(size_t a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9D4C30, &unk_18BC55960, _s4PageVMa_0);
  *v3 = result;
  return result;
}

void sub_18B825EA4(unint64_t a1)
{
  v2 = v1;
  v4 = _s4ItemVMa();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = _s7SectionVMa_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v11;
    v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_16:

    v15 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v26 = OBJC_IVAR___SFTabSwitcherSection__internal;
    v27 = *(v2 + OBJC_IVAR___SFTabSwitcherSection__internal);
    v28 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
    swift_beginAccess();
    v29 = v27 + v28;
    v30 = v37;
    sub_18B8162EC(v29, v37, _s7SectionVMa_0);
    v31 = *(v36 + 28);

    *(v30 + v31) = v15;
    v32 = *(v2 + v26);
    v33 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
    swift_beginAccess();
    v34 = v32;
    sub_18B81FC54(v30, v32 + v33, _s7SectionVMa_0);
    swift_endAccess();

    return;
  }

  v14 = sub_18BC219A8();
  v36 = v11;
  v37 = v13;
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_3:
  v38 = MEMORY[0x1E69E7CC0];
  sub_18B82F920(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v35 = v1;
    v15 = v38;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        v17 = *(MEMORY[0x18CFFD010](i, a1) + OBJC_IVAR___SFTabSwitcherItem__internal);
        v18 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
        swift_beginAccess();
        sub_18B8162EC(v17 + v18, v10, _s4ItemVMa);
        swift_unknownObjectRelease();
        v38 = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_18B82F920(v19 > 1, v20 + 1, 1);
          v15 = v38;
        }

        *(v15 + 16) = v20 + 1;
        sub_18B81F9A8(v10, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, _s4ItemVMa);
      }
    }

    else
    {
      v21 = 32;
      do
      {
        v22 = *(*(a1 + v21) + OBJC_IVAR___SFTabSwitcherItem__internal);
        v23 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
        swift_beginAccess();
        sub_18B8162EC(v22 + v23, v7, _s4ItemVMa);
        v38 = v15;
        v25 = *(v15 + 16);
        v24 = *(v15 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_18B82F920(v24 > 1, v25 + 1, 1);
          v15 = v38;
        }

        *(v15 + 16) = v25 + 1;
        sub_18B81F9A8(v7, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, _s4ItemVMa);
        v21 += 8;
        --v14;
      }

      while (v14);
    }

    v2 = v35;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_18B8262B4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  swift_beginAccess();
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 73) = v4;
  *(v1 + 74) = v5;
}

uint64_t sub_18B826338(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v90 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v73 = &v67 - v5;
  v6 = *((v3 & v2) + 0x50);
  *&v8 = v6;
  *(&v8 + 1) = v4;
  v9 = *((v3 & v2) + 0x78);
  v95 = *((v3 & v2) + 0x70);
  v7 = v95;
  v96 = v9;
  v91 = *(v10 + 96);
  v93 = v8;
  v94 = v91;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  v21 = *((v3 & v2) + 0x150);
  swift_beginAccess();
  v22 = *(v1 + v21);
  *&v93 = v6;
  *(&v93 + 1) = v4;
  v74 = v4;
  v94 = v91;
  v95 = v7;
  v96 = v9;
  v84 = _s8ItemInfoCMa();
  WitnessTable = swift_getWitnessTable();
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v27 = *MEMORY[0x1E69E7D40] & *v1;
  v72 = *(v27 + 0x150);
  v89 = v1;
  v77 = *(v27 + 256);
  v28 = (v24 + 63) >> 6;
  *&v91 = v12 + 16;
  v86 = (v12 + 8);
  v71 = (v90 + 32);
  v70 = (v90 + 8);
  result = sub_18BC1E3F8();
  v30 = 0;
  *&v31 = 136446210;
  v75 = v31;
  v90 = v11;
  v87 = v20;
  v82 = v22;
  while (v26)
  {
LABEL_11:
    v37 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v38 = *(*(v22 + 56) + ((v30 << 9) | (8 * v37)));
    result = sub_18BAC0548();
    if ((result & 1) == 0)
    {
      v39 = *(*v38 + 184);
      swift_beginAccess();
      v40 = *v91;
      (*v91)(v20, v38 + v39, v11);
      v85 = *(*v38 + 200);
      if (*(v38 + v85))
      {
        sub_18BC1E1A8();
      }

      else
      {
        sub_18BC1E3F8();
        sub_18BC1E1A8();
        v41 = sub_18BC210B8();

        if (v41)
        {
          (*v86)(v20, v11);

          goto LABEL_5;
        }
      }

      v88 = v40;
      if (qword_1EA9D2280 != -1)
      {
        swift_once();
      }

      v42 = sub_18BC1F2C8();
      __swift_project_value_buffer(v42, qword_1EA9F7E38);
      v43 = v80;
      v44 = v20;
      v45 = v11;
      v46 = v11;
      v47 = v88;
      v88(v80, v44, v45);
      v48 = sub_18BC1F2A8();
      v76 = sub_18BC21228();
      if (os_log_type_enabled(v48, v76))
      {
        v49 = swift_slowAlloc();
        v67 = v49;
        v69 = swift_slowAlloc();
        v92[0] = v69;
        *v49 = v75;
        v68 = v48;
        v50 = v79;
        v47(v79, v43, v90);
        v51 = *v86;
        (*v86)(v43, v90);
        v52 = SFFluidCollectionView.Element.description.getter(v90);
        v54 = v53;
        v83 = v51;
        v51(v50, v90);
        v55 = sub_18B7EA850(v52, v54, v92);

        v56 = v67;
        *(v67 + 1) = v55;
        v57 = v68;
        v58 = v56;
        _os_log_impl(&dword_18B7AC000, v68, v76, "Removing info for %{public}s", v56, 0xCu);
        v59 = v69;
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x18CFFEEE0](v59, -1, -1);
        v11 = v90;
        MEMORY[0x18CFFEEE0](v58, -1, -1);
      }

      else
      {
        v83 = *v86;
        v83(v43, v46);

        v11 = v46;
      }

      result = sub_18BAC12A8();
      v60 = result;
      if (result)
      {
        if (!*(v89 + *((*MEMORY[0x1E69E7D40] & *v89) + 0x190)))
        {
          goto LABEL_30;
        }

        v61 = result;
        sub_18BC1E1A8();
        sub_18BAC3BFC(v61);

        sub_18BAC12B0(0);
        v11 = v90;
      }

      if (*(v38 + v85) == 1)
      {
        v88(v79, v87, v11);
        v92[4] = 0;
        swift_beginAccess();
        sub_18BC209F8();
        sub_18BC20A38();
        swift_endAccess();
      }

      v92[3] = v38;
      swift_beginAccess();
      swift_getWitnessTable();
      sub_18BC210E8();
      sub_18BC21088();
      swift_endAccess();

      v62 = v78;
      v63 = v87;
      v88(v78, v87, v11);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = v73;
        v33 = v74;
        (*v71)(v73, v62, v74);
        sub_18BB4F0C8(v60, 0, v32);

        v34 = v32;
        v20 = v87;
        v35 = v33;
        v11 = v90;
        (*v70)(v34, v35);
        result = (v83)(v20, v11);
      }

      else
      {
        v64 = v63;
        v65 = v60;
        v66 = v83;
        v83(v64, v11);

        v20 = v87;
        result = (v66)(v62, v11);
      }

LABEL_5:
      v22 = v82;
    }
  }

  while (1)
  {
    v36 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v36 >= v28)
    {
    }

    v26 = *(v23 + 8 * v36);
    ++v30;
    if (v26)
    {
      v30 = v36;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari11TabSwitcherC4PageV7OverlayO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_18B826D24()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SFFluidCollectionView();
  return objc_msgSendSuper2(&v5, sel_contentOffset, v2, v3, v4);
}

uint64_t sub_18B826DD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double sub_18B826E2C(void *a1)
{
  v1 = a1;
  sub_18B826D24();
  v3 = v2;

  return v3;
}

void sub_18B826E70(unint64_t a1)
{
  v2 = v1;
  v4 = _s7SectionVMa_0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v11;
    v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_16:

    v15 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v26 = OBJC_IVAR___SFTabSwitcherPage__internal;
    v27 = *(v2 + OBJC_IVAR___SFTabSwitcherPage__internal);
    v28 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
    swift_beginAccess();
    v29 = v27 + v28;
    v30 = v37;
    sub_18B8162EC(v29, v37, _s4PageVMa);
    v31 = *(v36 + 68);

    *(v30 + v31) = v15;
    v32 = *(v2 + v26);
    v33 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
    swift_beginAccess();
    v34 = v32;
    sub_18B81FC54(v30, v32 + v33, _s4PageVMa);
    swift_endAccess();

    return;
  }

  v14 = sub_18BC219A8();
  v36 = v11;
  v37 = v13;
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_3:
  v38 = MEMORY[0x1E69E7CC0];
  sub_18B828364(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v35 = v1;
    v15 = v38;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        v17 = *(MEMORY[0x18CFFD010](i, a1) + OBJC_IVAR___SFTabSwitcherSection__internal);
        v18 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
        swift_beginAccess();
        sub_18B8162EC(v17 + v18, v10, _s7SectionVMa_0);
        swift_unknownObjectRelease();
        v38 = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_18B828364(v19 > 1, v20 + 1, 1);
          v15 = v38;
        }

        *(v15 + 16) = v20 + 1;
        sub_18B81F9A8(v10, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, _s7SectionVMa_0);
      }
    }

    else
    {
      v21 = 32;
      do
      {
        v22 = *(*(a1 + v21) + OBJC_IVAR___SFTabSwitcherSection__internal);
        v23 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherSectionInternal_wrapped;
        swift_beginAccess();
        sub_18B8162EC(v22 + v23, v7, _s7SectionVMa_0);
        v38 = v15;
        v25 = *(v15 + 16);
        v24 = *(v15 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_18B828364(v24 > 1, v25 + 1, 1);
          v15 = v38;
        }

        *(v15 + 16) = v25 + 1;
        sub_18B81F9A8(v7, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, _s7SectionVMa_0);
        v21 += 8;
        --v14;
      }

      while (v14);
    }

    v2 = v35;
    goto LABEL_17;
  }

  __break(1u);
}

id sub_18B827280(double a1, double a2)
{
  v5 = (*MEMORY[0x1E69E7D40] & *v2);
  sub_18B828408(a1, a2);
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SFFluidCollectionView();
  return objc_msgSendSuper2(&v10, sel_setContentOffset_, a1, a2, v7, v8, v9);
}

id sub_18B827328@<X0>(uint64_t a1@<X8>)
{
  v3 = _s4ItemVMa_2();
  v160 = *(v3 - 8);
  v161 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v159 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v176 = &v123 - v6;
  v165 = _s4ItemVMa();
  v144 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v8 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = _s7SectionVMa_0();
  v152 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s7SectionVMa_1();
  v149 = *(v10 - 8);
  v150 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v151 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EE48();
  v175 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18BC1EC08();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v155 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v123 - v19;
  v21 = _s4PageVMa();
  v22 = *(v21 + 32);
  v141 = v16;
  v23 = *(v16 + 16);
  v139 = v20;
  v167 = v16 + 16;
  v168 = v15;
  v166 = v23;
  v23(v20, &v1[v22], v15);
  v24 = v1[2];
  v143 = v21;
  if (v24 == 1)
  {
    v138 = v1[*(v21 + 40)] ^ 1;
  }

  else
  {
    v138 = 0;
  }

  v162 = v8;
  v25 = *v1;
  v136 = v1[1];
  v137 = v25;
  v26 = [objc_opt_self() isSolariumEnabled];
  v140 = a1;
  if (v26)
  {
    v135 = 0;
    v27 = v1;
    v28 = v143;
  }

  else
  {
    v28 = v143;
    v29 = v1[v143[10]];
    v27 = v1;
    if (v29 != 1)
    {
      if (v1[v143[12]])
      {
        v29 = 2;
      }

      else
      {
        v29 = 0;
      }
    }

    v135 = v29;
  }

  v30 = &v27[v28[14]];
  v31 = *v30;
  v142 = v27;
  if (!v31)
  {
    if (qword_1EA9D2260 != -1)
    {
      swift_once();
    }

    v205 = *&qword_1EA9F7D70;
    v204 = xmmword_1EA9F7D60;
    v203 = xmmword_1EA9F7D50;
    v202 = *&qword_1EA9F7D40;
    v201 = xmmword_1EA9F7D30;
    v129 = *&qword_1EA9F7D70;
    v133 = xmmword_1EA9F7D60;
    v38 = BYTE10(xmmword_1EA9F7D50);
    v36 = BYTE9(xmmword_1EA9F7D50);
    v37 = BYTE8(xmmword_1EA9F7D50);
    v132 = qword_1EA9F7D48;
    v134 = qword_1EA9F7D40;
    v130 = xmmword_1EA9F7D50;
    v131 = *(&xmmword_1EA9F7D30 + 1);
    v128 = xmmword_1EA9F7D30;
    sub_18B828980(&v201, &v189);
    if (v38 != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (v31 == 1)
  {
    if (qword_1EA9D2268 != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_16;
  }

  if (v31 != 2)
  {
    v39 = v30[1];
    v174 = sub_18B7B0AC0(0, &qword_1EA9D52D0);
    sub_18BC1EE38();
    v40 = sub_18BC1EE28();
    v172 = v41;
    v173 = v40;
    v42 = v175[1];
    v42(v14, v12);
    v43 = swift_allocObject();
    *(v43 + 16) = v31;
    *(v43 + 24) = v39;
    sub_18B829694(v31);
    v133 = 0u;
    v131 = sub_18BC215E8();
    v132 = 0x800000018BC68700;
    v44 = sub_18BC20B98();
    v130 = [objc_opt_self() systemImageNamed_];

    v134 = 0xD000000000000015;
    sub_18BC1EE38();
    v45 = sub_18BC1EE28();
    v47 = v46;
    v42(v14, v12);
    v27 = v142;
    v37 = 0;
    v128 = 0;
    *&v48 = v45;
    *(&v48 + 1) = v47;
    v129 = v48;
    v34 = 0x10000;
    goto LABEL_25;
  }

  v131 = 0;
  v132 = 0;
  v134 = 0;
  v130 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v128 = 0;
  v133 = 0u;
  v129 = 0u;
  while (1)
  {
    v49 = v143;
    v50 = v27[v143[15]];
    v126 = v33;
    v127 = v34;
    v125 = v32;
    if (v50 <= 1)
    {
      if (v50)
      {
        if (qword_1EA9D2168 != -1)
        {
          swift_once();
        }

        v51 = &qword_1EA9F7960;
      }

      else
      {
        if (qword_1EA9D2160 != -1)
        {
          swift_once();
        }

        v51 = &qword_1EA9F7958;
      }

LABEL_39:
      v124 = *v51;
      v52 = v124;
      v27 = v142;
      goto LABEL_41;
    }

    if (v50 == 2)
    {
      if (qword_1EA9D2170 != -1)
      {
        swift_once();
      }

      v51 = &qword_1EA9F7968;
      goto LABEL_39;
    }

    v124 = 1;
LABEL_41:
    v53 = *&v27[v49[17]];
    v54 = *(v53 + 16);
    if (!v54)
    {
      break;
    }

    *&v201 = MEMORY[0x1E69E7CC0];
    sub_18B828E80(0, v54, 0);
    v55 = v201;
    v146 = v53 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
    v147 = v54;
    v145 = (v141 + 32);
    v56 = v162;
    v57 = 0;
    v148 = v53;
    while (v57 < *(v53 + 16))
    {
      v58 = v156;
      sub_18B82962C(v146 + *(v152 + 72) * v57, v156, _s7SectionVMa_0);
      v59 = v157;
      v166(v155, v58 + *(v157 + 20), v168);
      v60 = *(v59 + 28);
      v153 = *(v58 + *(v59 + 24));
      v61 = *(v58 + v60);
      v62 = *(v61 + 16);
      v158 = v55;
      v154 = v57;
      if (v62)
      {
        v63 = *(v165 + 32);
        v64 = v61 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
        v65 = *(v144 + 72);
        v66 = MEMORY[0x1E69E7CC0];
        v163 = v65;
        v164 = v63;
        do
        {
          sub_18B82962C(v64, v56, _s4ItemVMa);
          if (v56[v63] == 1)
          {
            sub_18B816638(v56, _s4ItemVMa);
          }

          else
          {
            LODWORD(v174) = *v56;
            v67 = v165;
            v68 = *(v165 + 28);
            v175 = v66;
            v69 = v161;
            v70 = v159;
            v166(&v159[v161[5]], &v56[v68], v168);
            v71 = v67[10];
            v170 = v56[v67[9]];
            v171 = v56[v71];
            v72 = v67[12];
            LODWORD(v172) = v56[v67[11]];
            v173 = *&v56[v72];
            v73 = &v56[v67[13]];
            v75 = *v73;
            v74 = *(v73 + 1);
            v76 = *&v56[v67[14]];
            v77 = &v56[v67[15]];
            v78 = *(v77 + 1);
            v169 = *v77;
            sub_18BC1E3F8();
            sub_18BC1E1A8();
            sub_18BC1E3F8();
            sub_18B816638(v56, _s4ItemVMa);
            *v70 = v174;
            v70[v69[6]] = v170;
            v70[v69[7]] = v171;
            v70[v69[8]] = 0;
            v70[v69[9]] = v172;
            *&v70[v69[10]] = v173;
            v79 = &v70[v69[11]];
            *v79 = v75;
            v79[1] = v74;
            *&v70[v69[12]] = v76;
            v80 = v69[13];
            v66 = v175;
            v81 = v176;
            v82 = &v70[v80];
            *v82 = v169;
            v82[1] = v78;
            sub_18B82983C(v70, v81, _s4ItemVMa_2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v66 = sub_18B82A46C(0, v66[2] + 1, 1, v66);
            }

            v84 = v66[2];
            v83 = v66[3];
            v56 = v162;
            v63 = v164;
            if (v84 >= v83 >> 1)
            {
              v66 = sub_18B82A46C(v83 > 1, v84 + 1, 1, v66);
            }

            v66[2] = v84 + 1;
            sub_18B82983C(v176, v66 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v84, _s4ItemVMa_2);
            v65 = v163;
          }

          v64 += v65;
          --v62;
        }

        while (v62);
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC0];
      }

      v85 = v156;
      v86 = (v156 + *(v157 + 32));
      v87 = *v86;
      v88 = v86[1];
      sub_18BC1E3F8();
      sub_18B816638(v85, _s7SectionVMa_0);
      v89 = v151;
      (*v145)(v151, v155, v168);
      v90 = v150;
      *(v89 + v150[5]) = v153;
      *(v89 + v90[6]) = 0;
      *(v89 + v90[7]) = v66;
      v91 = (v89 + v90[8]);
      *v91 = v87;
      v91[1] = v88;
      v55 = v158;
      *&v201 = v158;
      v93 = *(v158 + 16);
      v92 = *(v158 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_18B828E80(v92 > 1, v93 + 1, 1);
        v89 = v151;
        v55 = v201;
      }

      v57 = v154 + 1;
      *(v55 + 16) = v93 + 1;
      sub_18B82983C(v89, v55 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v93, _s7SectionVMa_1);
      v53 = v148;
      if (v57 == v147)
      {
        v27 = v142;
        v49 = v143;
        v158 = v55;
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_62:
    swift_once();
LABEL_16:
    v205 = unk_1EA9F7DC0;
    v204 = xmmword_1EA9F7DB0;
    v203 = xmmword_1EA9F7DA0;
    v202 = *&qword_1EA9F7D90;
    v201 = xmmword_1EA9F7D80;
    v129 = unk_1EA9F7DC0;
    v133 = xmmword_1EA9F7DB0;
    v35 = BYTE10(xmmword_1EA9F7DA0);
    v36 = BYTE9(xmmword_1EA9F7DA0);
    v37 = BYTE8(xmmword_1EA9F7DA0);
    v132 = qword_1EA9F7D98;
    v134 = qword_1EA9F7D90;
    v130 = xmmword_1EA9F7DA0;
    v131 = *(&xmmword_1EA9F7D80 + 1);
    v128 = xmmword_1EA9F7D80;
    sub_18B828980(&v201, &v189);
    if (v35)
    {
LABEL_17:
      v34 = 0x10000;
      v27 = v142;
      if ((v36 & 1) == 0)
      {
        v33 = 0;
        goto LABEL_26;
      }

LABEL_25:
      v33 = 256;
      goto LABEL_26;
    }

LABEL_22:
    v34 = 0;
    v33 = 0;
    v27 = v142;
    if (v36)
    {
      goto LABEL_25;
    }

LABEL_26:
    v32 = v37;
  }

  v158 = MEMORY[0x1E69E7CC0];
LABEL_60:
  v94 = &v27[v49[18]];
  v95 = *v94;
  v96 = *(v94 + 3);
  v176 = *(v94 + 2);
  v98 = *(v94 + 4);
  v97 = *(v94 + 5);
  v99 = swift_allocObject();
  *(v99 + 16) = v98;
  *(v99 + 24) = v97;
  v100 = &v27[v49[19]];
  v101 = *(v100 + 1);
  v175 = *v100;
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  v102 = v95;
  v103 = sub_18B829974();
  v105 = v104;
  v106 = MEMORY[0x1E69E7CD0];
  *(&v187 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v178) = v137;
  BYTE1(v178) = v136;
  BYTE2(v178) = v138 & 1;
  *(&v178 + 3) = v135;
  memset(v188, 0, sizeof(v188));
  sub_18B988BAC(v188, &qword_1EA9D50D8);
  *(&v178 + 1) = v128;
  *&v179 = v131;
  *(&v179 + 1) = v134;
  *&v180 = v132;
  *(&v180 + 1) = v130;
  *&v181[0] = v126 | v125 | v127;
  *(&v181[1] + 8) = v129;
  *(v181 + 8) = v133;
  *(&v181[2] + 1) = v124;
  *&v182 = v158;
  *(&v182 + 1) = v106;
  *&v183 = v95;
  *(&v183 + 1) = v176;
  *&v184 = v96;
  *(&v184 + 1) = sub_18BBDC2DC;
  *&v185 = v99;
  *(&v185 + 1) = v175;
  *&v186 = v101;
  *(&v186 + 1) = v103;
  *&v187 = v105;
  sub_18B829CB0();
  v197 = v184;
  v198 = v185;
  v199 = v186;
  v200 = v187;
  v193 = v181[1];
  v194 = v181[2];
  v195 = v182;
  v196 = v183;
  v189 = v178;
  v190 = v179;
  v191 = v180;
  v192 = v181[0];
  v209 = v184;
  v210 = v185;
  v211 = v186;
  v212 = v187;
  v205 = v181[1];
  v206 = v181[2];
  v207 = v182;
  v208 = v183;
  v201 = v178;
  v202 = v179;
  v203 = v180;
  v204 = v181[0];
  sub_18B82B150(&v189, &v177);
  sub_18B82B2F0(&v201);
  LOBYTE(v105) = v27[v49[10]];
  LOBYTE(v106) = v27[v49[12]];
  v107 = &v27[v49[16]];
  v108 = *v107;
  v109 = *(v107 + 1);
  v110 = *(v107 + 2);
  v111 = *(v107 + 3);
  v112 = v140;
  (*(v141 + 32))(v140, v139, v168);
  v113 = _s4PageVMa_0();
  v114 = (v112 + v113[5]);
  v115 = v198;
  v114[8] = v197;
  v114[9] = v115;
  v116 = v200;
  v114[10] = v199;
  v114[11] = v116;
  v117 = v194;
  v114[4] = v193;
  v114[5] = v117;
  v118 = v196;
  v114[6] = v195;
  v114[7] = v118;
  v119 = v190;
  *v114 = v189;
  v114[1] = v119;
  v120 = v192;
  v114[2] = v191;
  v114[3] = v120;
  *(v112 + v113[6]) = v105;
  *(v112 + v113[7]) = v106;
  v121 = (v112 + v113[8]);
  *v121 = v108;
  v121[1] = v109;
  v121[2] = v110;
  v121[3] = v111;
  return sub_18B82B844(v108, v109, v110, v111);
}

uint64_t sub_18B828328()
{

  return swift_deallocObject();
}

size_t sub_18B828364(size_t a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9D4C28, &unk_18BC42910, _s7SectionVMa_0);
  *v3 = result;
  return result;
}

void sub_18B8283A8(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_18B827280(a2, a3);
}

void sub_18B828408(double a1, double a2)
{
  [v2 contentOffset];
  if (v6 != a1 || v5 != a2)
  {
    v8 = [v2 layer];
    v9 = [v8 layoutIsActive];

    if ((v9 & 1) == 0)
    {
      [v2 setNeedsLayout];
    }

    if ((*(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x138)) & 1) == 0)
    {

      sub_18B82A0C0();
    }
  }
}

void sub_18B8284EC()
{
  sub_18BC1EC08();
  if (v0 <= 0x3F)
  {
    sub_18B828598();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18B828598()
{
  if (!qword_1EA9D8B30)
  {
    _s4ItemVMa_2();
    v0 = sub_18BC20E78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D8B30);
    }
  }
}

double sub_18B828660()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC20B98();
  v5 = [objc_opt_self() systemImageNamed_];

  sub_18BC1EE38();
  v6 = sub_18BC1EE28();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v3, v0);
  sub_18BC1EE38();
  v10 = sub_18BC1EE28();
  v12 = v11;
  v9(v3, v0);
  LOBYTE(xmmword_1EA9F7D30) = 1;
  *(&xmmword_1EA9F7D30 + 1) = *v16;
  DWORD1(xmmword_1EA9F7D30) = *&v16[3];
  result = 0.0;
  *(&xmmword_1EA9F7D30 + 8) = xmmword_18BC447D0;
  qword_1EA9F7D48 = 0x800000018BC64140;
  *&xmmword_1EA9F7D50 = v5;
  WORD4(xmmword_1EA9F7D50) = 256;
  BYTE10(xmmword_1EA9F7D50) = 0;
  *(&xmmword_1EA9F7D50 + 11) = v14[1];
  HIBYTE(xmmword_1EA9F7D50) = v15;
  *&xmmword_1EA9F7D60 = v6;
  *(&xmmword_1EA9F7D60 + 1) = v8;
  qword_1EA9F7D70 = v10;
  unk_1EA9F7D78 = v12;
  return result;
}

void sub_18B828868()
{
  [v0 accessibilityFluidCollectionViewDidLayout];
  if (*(v0 + OBJC_IVAR___SFTabOverview_needsResetLayout) == 1)
  {
    v1 = *MEMORY[0x1E69DDA98];
    if (*MEMORY[0x1E69DDA98])
    {
      v2 = swift_allocObject();
      *(v2 + 16) = v0;
      v6[4] = sub_18B9D2FBC;
      v6[5] = v2;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_18B7B0DB0;
      v6[3] = &block_descriptor_5;
      v3 = _Block_copy(v6);
      v4 = v1;
      v5 = v0;

      [v4 _performBlockAfterCATransactionCommits_];
      _Block_release(v3);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_18B8289DC()
{
  v1 = _s7SectionVMa_0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s4PageVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v10 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  result = sub_18B8162EC(v9 + v10, v8, _s4PageVMa);
  v12 = 0;
  v13 = *&v8[*(v6 + 76)];
  v14 = *(v13 + 16);
  while (1)
  {
    v15 = v12;
    if (v14 == v12)
    {
LABEL_5:
      sub_18B8165D8(v8, _s4PageVMa);
      return v14 != v15;
    }

    if (v12 >= *(v13 + 16))
    {
      break;
    }

    sub_18B8162EC(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12++, v4, _s7SectionVMa_0);
    v16 = *(*&v4[*(v1 + 28)] + 16);
    result = sub_18B8165D8(v4, _s7SectionVMa_0);
    if (v16)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

id sub_18B828C4C()
{
  v1 = v0;
  v2 = sub_18B82FEA0();
  [v2 contentInset];
  v18 = v4;
  v19 = v3;
  v20 = v6;
  v21 = v5;

  v7 = (v1 + OBJC_IVAR___SFTabOverview_configuration);
  result = swift_beginAccess();
  v9.f64[0] = v19;
  v9.f64[1] = v18;
  v10.f64[0] = v21;
  v10.f64[1] = v20;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *v7), vceqq_f64(v10, v7[1])))) & 1) == 0)
  {
    v11 = OBJC_IVAR___SFTabOverview_targetScrollPositionForNextLayoutPass;
    swift_beginAccess();
    sub_18B7CA054(v1 + v11, v22, &unk_1EA9D53A0);
    v12 = v22[0];
    sub_18B988BAC(v22, &unk_1EA9D53A0);
    if (v12)
    {
      return [*(v1 + OBJC_IVAR___SFTabOverview____lazy_storage___collectionView) setContentInset_];
    }

    else
    {
      swift_beginAccess();
      v13 = sub_18BC1E3F8();
      sub_18B868E64(v13, v22);

      v14 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
      [*(v1 + OBJC_IVAR___SFTabOverview____lazy_storage___collectionView) setContentInset_];
      [*(v1 + v14) layoutIfNeeded];
      v15 = sub_18B828F20(v22);
      if ((v17 & 1) == 0)
      {
        [*(v1 + v14) setContentOffset_];
      }

      return sub_18B8303BC(v22);
    }
  }

  return result;
}

void sub_18B828E10()
{
  v0 = sub_18BC20B98();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_1EA9F7968 = v1;
}

size_t sub_18B828E80(size_t a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9D4C18, &unk_18BC42900, _s7SectionVMa_1);
  *v3 = result;
  return result;
}

uint64_t sub_18B828F20(uint64_t a1)
{
  result = (*(*v1 + 456))();
  if (result)
  {
    v4 = result;
    sub_18B8290F0(a1);
    if (v5)
    {

      return 0;
    }

    else
    {
      [v4 adjustedContentInset];
      [v4 adjustedContentInset];
      [v4 bounds];
      sub_18B7E0E4C();
      [v4 contentSize];
      [v4 frame];
      [v4 isTracking];
      swift_beginAccess();
      sub_18B829B78();
      v7 = v6;

      return v7;
    }
  }

  return result;
}

uint64_t sub_18B8290F0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31[-v4 - 8];
  v6 = _s4ItemVMa_2();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&result = COERCE_DOUBLE((*(*v1 + 456))(v8));
  if (*&result != 0.0)
  {
    v12 = result;
    sub_18B8296A8(a1 + 8, &v34);
    if (*(&v35 + 1) == 1)
    {
      swift_beginAccess();
      v15 = v1[18];
      [v12 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [v12 adjustedContentInset];
      v37.origin.x = UIEdgeInsetsInsetRect(v17, v19, v21, v23, v24, v25);
      Height = CGRectGetHeight(v37);

      *&result = v15 - Height;
    }

    else if (*(&v35 + 1))
    {

      v32[0] = v34;
      v32[1] = v35;
      v33 = v36;
      sub_18B7F44EC(v32, v31);
      if (swift_dynamicCast())
      {
        (*(v7 + 56))(v5, 0, 1, v6);
        sub_18B829704(v5, v10, _s4ItemVMa_2);
        v27 = sub_18BA126B0();
        *&v29 = COERCE_DOUBLE(sub_18B9C8C7C(v10, v27, v28 & 1));

        sub_18B815380(v10, _s4ItemVMa_2);
        sub_18B831014(v32);
        return v29;
      }

      else
      {
        sub_18B831014(v32);

        (*(v7 + 56))(v5, 1, 1, v6);
        sub_18B988BAC(v5, &unk_1EA9D4F30);
        *&result = 0.0;
      }
    }

    else
    {
      if (sub_18B8298E0())
      {
        v13 = (*(*v1 + 848))();

        if (*(v13 + 33) == 1 && (*(v13 + 96) & 1) != 0)
        {
          v14 = *(v13 + 88);

          *&result = v14;
          return result;
        }
      }

      else
      {
      }

      *&result = 0.0;
    }
  }

  return result;
}

void sub_18B8294BC(char *a1)
{
  v3 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v7 = *&a1[OBJC_IVAR___SFTabSwitcherPageOverlay_wrapped];
    v6 = *&a1[OBJC_IVAR___SFTabSwitcherPageOverlay_wrapped + 8];
    sub_18B829694(v7);
  }

  else
  {
    v6 = 0;
    v7 = 2;
  }

  v8 = OBJC_IVAR___SFTabSwitcherPage__internal;
  v9 = *(v1 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v10 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v9 + v10, v5, _s4PageVMa);
  v11 = &v5[*(v3 + 56)];
  sub_18B8298A4(*v11);
  *v11 = v7;
  v11[1] = v6;
  v12 = *(v1 + v8);
  v13 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  v14 = v12;
  sub_18B81FC54(v5, v12 + v13, _s4PageVMa);
  swift_endAccess();
}

uint64_t sub_18B82962C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_18B829694(unint64_t result)
{
  if (result >= 2)
  {
    return sub_18BC1E1A8();
  }

  return result;
}

uint64_t sub_18B829704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B82976C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B8297D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B82983C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_18B8298A4(unint64_t result)
{
  if (result != 2)
  {
    return sub_18B829B64(result);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari28CollectionViewScrollPositionV6TargetO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18B8298E0()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = sub_18B7C4104(0xD000000000000014, 0x800000018BC62740), (v3 & 1) != 0) && (sub_18B7B193C(*(v1 + 56) + 32 * v2, v6), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_18B829974()
{
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = _s4PageVMa();
  if ((*(v0 + *(v8 + 40)) & 1) != 0 || *(v0 + *(v8 + 48)) == 1)
  {
    sub_18BC1EE38();
    sub_18BC1EE38();
    v9 = sub_18BC1EE18();
    v10 = *(v2 + 8);
    v10(v5, v1);
    v10(v7, v1);
  }

  else
  {
    sub_18BC1EE38();
    v9 = sub_18BC1EE28();
    (*(v2 + 8))(v7, v1);
  }

  return v9;
}

unint64_t sub_18B829B64(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

void sub_18B829B78()
{
  v1 = v0[12];
  v6 = v0[13];
  v7.origin.x = UIEdgeInsetsInsetRect(v0[4], v0[5], v0[6], v0[7], *v0, v0[1]);
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  if (v1 >= CGRectGetWidth(v7))
  {
    v8.origin.x = x;
    v8.origin.y = y;
    v8.size.width = width;
    v8.size.height = height;
    if (v1 - CGRectGetWidth(v8) < 0.0)
    {
      __break(1u);
LABEL_8:
      __break(1u);
      return;
    }
  }

  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  if (v6 >= CGRectGetHeight(v9))
  {
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    if (v6 - CGRectGetHeight(v10) < 0.0)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_18B829CB0()
{
  v1 = _s7SectionVMa_1();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v36 - v7;
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - v10;
  v37 = v0;
  v12 = *(v0 + 96);
  v40 = *(v12 + 16);
  if (!v40)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v20 = *(v14 + 16);
    if (!v20)
    {

      v23 = MEMORY[0x1E69E7CC0];
LABEL_32:
      v34 = sub_18B82ABA4(v23);

      v35 = v37;

      *(v35 + 184) = v34;
      return result;
    }

    v40 = *(v1 + 28);
    v21 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v22 = *(v2 + 72);
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_18B815248(v21, v8, _s7SectionVMa_1);
      v24 = *&v8[v40];
      sub_18BC1E3F8();
      result = sub_18B82A40C(v8, _s7SectionVMa_1);
      v25 = *(v24 + 16);
      v26 = v23[2];
      v27 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v27 <= v23[3] >> 1)
      {
        if (*(v24 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v26 <= v27)
        {
          v29 = v26 + v25;
        }

        else
        {
          v29 = v26;
        }

        v23 = sub_18B82A46C(isUniquelyReferenced_nonNull_native, v29, 1, v23);
        if (*(v24 + 16))
        {
LABEL_26:
          v30 = (v23[3] >> 1) - v23[2];
          result = _s4ItemVMa_2();
          if (v30 < v25)
          {
            goto LABEL_36;
          }

          swift_arrayInitWithCopy();

          if (v25)
          {
            v31 = v23[2];
            v32 = __OFADD__(v31, v25);
            v33 = v31 + v25;
            if (v32)
            {
              goto LABEL_37;
            }

            v23[2] = v33;
          }

          goto LABEL_16;
        }
      }

      if (v25)
      {
        goto LABEL_35;
      }

LABEL_16:
      v21 += v22;
      if (!--v20)
      {

        goto LABEL_32;
      }
    }
  }

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v38 = v5;
  v39 = v1;
  while (v13 < *(v12 + 16))
  {
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v16 = *(v2 + 72);
    sub_18B815248(v12 + v15 + v16 * v13, v11, _s7SectionVMa_1);
    if (v11[*(v1 + 20)] == 1)
    {
      sub_18B80D354(v11, v5, _s7SectionVMa_1);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v14;
      if ((v17 & 1) == 0)
      {
        sub_18B828E80(0, *(v14 + 16) + 1, 1);
        v14 = v41;
      }

      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_18B828E80(v18 > 1, v19 + 1, 1);
        v14 = v41;
      }

      *(v14 + 16) = v19 + 1;
      v5 = v38;
      result = sub_18B80D354(v38, v14 + v15 + v19 * v16, _s7SectionVMa_1);
      v1 = v39;
    }

    else
    {
      result = sub_18B82A40C(v11, _s7SectionVMa_1);
    }

    if (v40 == ++v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

id sub_18B82A0C0()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40] & *v0;
  v3 = *(v0 + *(v2 + 0x128));
  if (v3)
  {
    [v3 invalidate];
    v2 = *v1 & *v0;
  }

  v4 = *(v2 + 296);
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;

  v6 = *v1 & *v0;
  v7 = *(v0 + *(v6 + 0x130));
  if (v7)
  {
    [v7 invalidate];
    v6 = *v1 & *v0;
  }

  v8 = *(v6 + 304);
  v9 = *(v0 + v8);
  *(v0 + v8) = 0;

  return [v0 _setAutomaticContentOffsetAdjustmentEnabled_];
}

uint64_t sub_18B82A1C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

id sub_18B82A210(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(SFTabSwitcherPagePeekingOverlay);
  v4[OBJC_IVAR___SFTabSwitcherPagePeekingOverlay_wrapped] = a3;
  v7.receiver = v4;
  v7.super_class = SFTabSwitcherPagePeekingOverlay;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id sub_18B82A278(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = (*MEMORY[0x1E69E7D40] & *v4);
  sub_18B82A494(a1, a2, a3, a4);
  v11 = v9[5];
  v12 = v9[6];
  v13 = v9[7];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SFFluidCollectionView();
  return objc_msgSendSuper2(&v14, sel_setBounds_, a1, a2, a3, a4, v11, v12, v13);
}

void sub_18B82A338(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  sub_18B82A278(a2, a3, a4, a5);
}

uint64_t sub_18B82A40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B82A494(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  [v4 bounds];
  v35.origin.x = v10;
  v35.origin.y = v11;
  v35.size.width = v12;
  v35.size.height = v13;
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  result = CGRectEqualToRect(v34, v35);
  if ((result & 1) == 0)
  {
    v15 = MEMORY[0x1E69E7D40];
    v16 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1D8);
    swift_beginAccess();
    v17 = *(**(v5 + v16) + 528);
    v18 = sub_18BC1E1A8();
    v19 = v17(v18, a1, a2, a3, a4);

    if (v19)
    {
      v20 = *((*v15 & *v5) + 0x1D8);
      swift_beginAccess();
      v21 = *(**(v5 + v20) + 536);
      v22 = sub_18BC1E1A8();
      v21(&v30, v22, a1, a2, a3, a4);

      v23 = v30;
      LOBYTE(v21) = v31;
      v24 = v32;
      v25 = v33;
      swift_beginAccess();
      v26 = v23;
      v27 = v21;
      v28 = v24;
      v29 = v25;
      sub_18BC1E1A8();
      sub_18B82F6F4(&v26);
    }
  }

  return result;
}

void sub_18B82A6CC(_BYTE *a1)
{
  v3 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v6 = a1[OBJC_IVAR___SFTabSwitcherPagePeekingOverlay_wrapped];
  }

  else
  {
    v6 = 3;
  }

  v7 = *(v1 + OBJC_IVAR___SFTabSwitcherPage__internal);
  v8 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v7 + v8, v5, _s4PageVMa);
  v5[*(v3 + 60)] = v6;
  swift_beginAccess();
  v9 = v7;
  sub_18B81FC54(v5, v7 + v8, _s4PageVMa);
  swift_endAccess();
}

BOOL sub_18B82A804(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = *(*v4 + 1328);
  v12 = sub_18BC21848();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v34 - v14;
  if (sub_18B82ADC4(a1, a2, a3, a4))
  {
    return 1;
  }

  v17 = (*(*v4 + 432))();
  v19 = v17;
  if (v17)
  {
    v20 = v18;
    ObjectType = swift_getObjectType();
    v22 = (*(v20 + 16))(ObjectType, v20);
    swift_unknownObjectRelease();
    [v22 bounds];
    v34[0] = v23;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v17 = swift_unknownObjectRelease();
  }

  else
  {
    v34[0] = 0;
    v25 = 0.0;
    v27 = 0.0;
    v29 = 0.0;
  }

  (*(*v5 + 1384))(v17);
  v30 = (*(*(v11 - 8) + 48))(v15, 1, v11);
  (*(v13 + 8))(v15, v12);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  MinY = CGRectGetMinY(v38);
  if (v30 == 1)
  {
    if (!v19)
    {
LABEL_13:
      v37 = sub_18B82BAF8(a1, a2, a3, a4);
      v32 = *(v10 + 1320);
      v33 = sub_18B8103B0();
      v34[1] = v32;
      v34[2] = v11;
      v34[3] = &type metadata for SFFluidTabOverviewSupplementary;
      v35 = *(v10 + 1336);
      v36 = v33;
      type metadata accessor for SFFluidCollectionView.Element();
      sub_18BC20E78();
      swift_getWitnessTable();
      LOBYTE(v32) = sub_18BC21198();

      return (v32 & 1) == 0;
    }
  }

  else
  {
    if (!v19)
    {
      return 1;
    }

    *&v39.origin.x = v34[0];
    v39.origin.y = v25;
    v39.size.width = v27;
    v39.size.height = v29;
    if (MinY != CGRectGetMinY(v39))
    {
      return 1;
    }

    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    MinY = CGRectGetMinY(v40);
  }

  *&v41.origin.x = v34[0];
  v41.origin.y = v25;
  v41.size.width = v27;
  v41.size.height = v29;
  if (MinY != CGRectGetMinY(v41))
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_18B82ABA4(uint64_t a1)
{
  v2 = _s4ItemVMa_2();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_18BBA3BF0(&qword_1EA9D9230, _s4ItemVMa_2);
  result = MEMORY[0x18CFFC500](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_18BBA39C8(v12, v6, _s4ItemVMa_2);
      sub_18B85A4D8(v8, v6);
      sub_18BBA3A30(v8, _s4ItemVMa_2);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_18B82AD34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B82AD7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B82ADC4(double a1, double a2, double a3, double a4)
{
  if (v4[84] != a3 || v4[85] != a4)
  {
    return 1;
  }

  (*(*v4 + 848))();
  v11 = sub_18B82B1E4(a1, a2, a3, a4);

  return v11 & 1;
}

id sub_18B82AED0(uint64_t a1)
{
  v2 = _s4ItemVMa();
  v3 = (v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = v3[9];
  v10 = sub_18BC1EC08();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v8[v9], a1, v10);
  *v8 = 257;
  v8[2] = 1;
  v8[v3[10]] = 0;
  v8[v3[11]] = 0;
  v8[v3[12]] = 0;
  v8[v3[13]] = 0;
  *&v8[v3[14]] = 0;
  v12 = &v8[v3[15]];
  *v12 = sub_18B814EE4;
  v12[1] = 0;
  *&v8[v3[16]] = MEMORY[0x1E69E7CC0];
  v13 = &v8[v3[17]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = objc_allocWithZone(SFTabSwitcherItem);
  sub_18B8162EC(v8, v5, _s4ItemVMa);
  v15 = type metadata accessor for SFTabSwitcherItemInternal(0);
  v16 = objc_allocWithZone(v15);
  sub_18B8162EC(v5, v16 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped, _s4ItemVMa);
  v22.receiver = v16;
  v22.super_class = v15;
  v17 = objc_msgSendSuper2(&v22, sel_init);
  sub_18B8165D8(v5, _s4ItemVMa);
  *&v14[OBJC_IVAR___SFTabSwitcherItem__internal] = v17;
  v21.receiver = v14;
  v21.super_class = SFTabSwitcherItem;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  (*(v11 + 8))(a1, v10);
  sub_18B8165D8(v8, _s4ItemVMa);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v18;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari11TabOverviewC7OverlayVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18B82B1E4(double a1, double a2, double a3, double a4)
{
  sub_18B813E2C(v16);
  v18[0] = v16[0];
  v18[1] = v16[1];
  v25 = v16[6];
  v26 = v16[7];
  v27 = v16[8];
  v28 = v17;
  v23 = v16[4];
  v24 = v16[5];
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  sub_18B82B344(v16);
  v10 = v9;
  sub_18B82B344(v18);
  if (v10 == v11 && (sub_18B84D9B0(v16), v13 = v12, sub_18B84D9B0(v18), v13 == v14))
  {
    return *(v4 + 153);
  }

  else
  {
    return 1;
  }
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari11TabOverviewC14PeekingOverlayVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_18B82B344(double *a1)
{
  if ((*(v1 + 97) & 1) == 0 && *(v1 + 96) == 1)
  {
    v3 = a1[4];
    v2 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6.origin.x = v3;
    v6.origin.y = v2;
    v6.size.width = v4;
    v6.size.height = v5;
    CGRectGetMaxY(v6);
    v7.origin.x = v3;
    v7.origin.y = v2;
    v7.size.width = v4;
    v7.size.height = v5;
    CGRectGetMaxX(v7);
    if (*(v1 + 88) < 0.0)
    {
      __break(1u);
    }
  }
}

uint64_t sub_18B82B3F8@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v6 = v5;
  v48 = a5;
  v11 = *v5;
  v12 = *(*v5 + 1328);
  v13 = sub_18BC21848();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v18 = (*(v11 + 432))(v15);
  v20 = v18;
  if (v18)
  {
    v21 = v19;
    ObjectType = swift_getObjectType();
    v23 = (*(v21 + 16))(ObjectType, v21);
    swift_unknownObjectRelease();
    [v23 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v18 = swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0.0;
    v27 = 0.0;
    v29 = 0.0;
    v31 = 0.0;
  }

  (*(*v6 + 1384))(v18);
  v32 = (*(*(v12 - 8) + 48))(v17, 1, v12);
  (*(v14 + 8))(v17, v13);
  if (v32 != 1)
  {
    v56.origin.x = a2;
    v56.origin.y = a3;
    v56.size.width = a4;
    v56.size.height = v48;
    MinY = CGRectGetMinY(v56);
    if (!v20)
    {
      return sub_18B82CA10(a1, a4, v48);
    }

    v34 = MinY;
    v57.origin.x = v25;
    v57.origin.y = v27;
    v57.size.width = v29;
    v57.size.height = v31;
    if (v34 != CGRectGetMinY(v57))
    {
      return sub_18B82CA10(a1, a4, v48);
    }
  }

  v35 = v48;
  v36 = sub_18B82BAF8(a2, a3, a4, v48);
  v58.origin.x = a2;
  v58.origin.y = a3;
  v58.size.width = a4;
  v58.size.height = v35;
  v37 = CGRectGetMinY(v58);
  if (v20 && (v38 = v37, v59.origin.x = v25, v59.origin.y = v27, v59.size.width = v29, v59.size.height = v31, v38 == CGRectGetMinY(v59)) || (v55 = v36, v39 = *(v11 + 1320), v40 = *(v11 + 1336), v41 = *(v11 + 1344), v42 = sub_18B8103B0(), v49 = v39, v50 = v12, v51 = &type metadata for SFFluidTabOverviewSupplementary, v52 = v40, v53 = v41, v54 = v42, type metadata accessor for SFFluidCollectionView.Element(), sub_18BC20E78(), swift_getWitnessTable(), (sub_18BC21198() & 1) != 0))
  {

    return sub_18B82CA10(a1, a4, v48);
  }

  SFFluidCollectionView.LayoutInvalidationContext.init()(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9D99E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18BC3E410;
  *(inited + 48) = 0u;
  *(inited + 64) = 0;
  *(inited + 32) = 0u;
  v45 = inited + 32;
  v46 = sub_18BA2A6A4(inited);
  swift_setDeallocating();
  sub_18B833D9C(v45);
  v49 = v39;
  v50 = v12;
  v51 = &type metadata for SFFluidTabOverviewSupplementary;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v47 = type metadata accessor for SFFluidCollectionView.LayoutInvalidationContext();
  SFFluidCollectionView.LayoutInvalidationContext.invalidateSupplementaries(_:for:)(v46, v36, v47);
}

id sub_18B82B844(id result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = result;
    v4 = a2;
    sub_18BC1E3F8();

    return v5;
  }

  return result;
}

uint64_t sub_18B82B9B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B82BA00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18BC1EC08();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18B82BA44(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_18B82BA8C()
{
  v1 = [v0 coordinateSpace];

  return v1;
}

uint64_t sub_18B82BAF8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = v10[165];
  v12 = v10[166];
  v13 = v10[167];
  v14 = v10[168];
  v15 = sub_18B8103B0();
  *&v92 = v11;
  *(&v92 + 1) = v12;
  *&v93 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v93 + 1) = v13;
  *v94 = v14;
  *&v94[8] = v15;
  v80 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v85 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = v68 - v16;
  *&v92 = v11;
  v83 = v12;
  *(&v92 + 1) = v12;
  *&v93 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v93 + 1) = v13;
  v78 = v13;
  v82 = v14;
  *v94 = v14;
  *&v94[8] = v15;
  v81 = v15;
  v17 = type metadata accessor for SFFluidCollectionView.Element();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v70 = v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v68 - v21;
  v86 = v11;
  v84 = *(v11 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v68 - v25;
  v27 = v10[183];
  if (v27(v24) == 0.0)
  {
    return sub_18BC20DE8();
  }

  v29 = (*(*v5 + 432))();
  if (!v29)
  {
    return sub_18BC20DE8();
  }

  v31 = v30;
  v69 = v18;
  v32 = v29;
  ObjectType = swift_getObjectType();
  [(*(v31 + 16))(ObjectType v31)];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  swift_unknownObjectRelease();
  v102.origin.x = v35;
  v102.origin.y = v37;
  v102.size.width = v39;
  v102.size.height = v41;
  MinY = CGRectGetMinY(v102);
  v43 = (v27)();
  v103.origin.x = a1;
  v103.origin.y = a2;
  v103.size.width = a3;
  v103.size.height = a4;
  v44 = CGRectGetMinY(v103);
  v45 = (v27)();
  v101 = sub_18BC20DE8();
  sub_18B810930(&v92);
  v76 = v92;
  v46 = *v94;
  sub_18BC1E1A8();

  if (*(*(&v46 + 1) + 16))
  {
    v47 = v17;
    v68[0] = v46;
    v68[1] = v32;
    v48 = 0;
    v49 = MinY + v43;
    v50 = v44 + v45;
    v75 = (v84 + 32);
    v76 = (v69 + 1);
    v71 = (v85 + 8);
    v69 += 2;
    v72 = v47;
    v73 = v26;
    v77 = *(&v46 + 1);
    v74 = v22;
    do
    {
      result = sub_18BC21C08();
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        return result;
      }

      v84 = v48 + 1;
      v85 = v48;
      v54 = v86;
      (*v75)(v22, v26, v86);
      swift_storeEnumTagMultiPayload();
      sub_18B810930(&v92);
      v89 = v92;
      v90 = v93;
      *v91 = *v94;
      v95 = v54;
      v96 = v83;
      v55 = v78;
      v97 = &type metadata for SFFluidTabOverviewSupplementary;
      v98 = v78;
      v99 = v82;
      v100 = v81;
      v56 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
      v57 = SFFluidCollectionView.DataSource.Snapshot.supplementaries(for:)(v22, v56);
      v58 = v47;

      *v94 = 0;
      v93 = 0u;
      v92 = 0u;
      v59 = sub_18B85CEA8(&v92, v57);

      sub_18B833D9C(&v92);
      if (v59)
      {
        sub_18B81D198(&v89);
        v88 = 0;
        memset(v87, 0, sizeof(v87));
        v95 = v54;
        v96 = v83;
        v97 = &type metadata for SFFluidTabOverviewSupplementary;
        v98 = v55;
        v99 = v82;
        v100 = v81;
        v60 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
        v22 = v74;
        SFFluidCollectionView.LayoutSnapshot.layoutAttributesForSupplementary(_:reference:)(v87, v74, v60, v79);
        sub_18B833D9C(v87);
        v92 = v89;
        v93 = v90;
        *v94 = *v91;
        *&v94[9] = *&v91[9];
        (*(*(v60 - 1) + 8))(&v92, v60);
        v104.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v80);
        x = v104.origin.x;
        y = v104.origin.y;
        width = v104.size.width;
        height = v104.size.height;
        v65 = CGRectGetMinY(v104);
        v52 = v77;
        if (v50 < v65)
        {
          v105.origin.x = x;
          v105.origin.y = y;
          v105.size.width = width;
          v105.size.height = height;
          if (v49 < CGRectGetMinY(v105))
          {
            swift_unknownObjectRelease();

            (*v71)(v79, v80);
            (*v76)(v22, v72);
            return v101;
          }
        }

        v106.origin.x = x;
        v106.origin.y = y;
        v106.size.width = width;
        v106.size.height = height;
        IsEmpty = CGRectIsEmpty(v106);
        v47 = v72;
        if (!IsEmpty)
        {
          v107.origin.x = x;
          v107.origin.y = y;
          v107.size.width = width;
          v107.size.height = height;
          MaxY = CGRectGetMaxY(v107);
          v26 = v73;
          v53 = v85;
          if (MaxY > v49 || (v108.origin.x = x, v108.origin.y = y, v108.size.width = width, v108.size.height = height, CGRectGetMaxY(v108) > v50))
          {
            v109.origin.x = x;
            v109.origin.y = y;
            v109.size.width = width;
            v109.size.height = height;
            if (v49 > CGRectGetMinY(v109) || (v110.origin.x = x, v110.origin.y = y, v110.size.width = width, v110.size.height = height, v50 > CGRectGetMinY(v110)))
            {
              (*v69)(v70, v22, v47);
              sub_18BC20E78();
              sub_18BC20E38();
            }
          }

          (*v71)(v79, v80);
          (*v76)(v22, v47);
          goto LABEL_8;
        }

        (*v71)(v79, v80);
        (*v76)(v22, v47);
        v26 = v73;
      }

      else
      {
        v51 = v74;
        (*v76)(v74, v58);
        v47 = v58;
        v22 = v51;
        v26 = v73;
        v52 = v77;
      }

      v53 = v85;
LABEL_8:
      v48 = v53 + 1;
    }

    while (v84 != *(v52 + 16));
  }

  swift_unknownObjectRelease();

  return v101;
}

double sub_18B82C6BC()
{
  v0 = sub_18BC20B98();
  v1 = [objc_opt_self() systemImageNamed_];

  LOBYTE(xmmword_1EA9F7D80) = 0;
  *(&xmmword_1EA9F7D80 + 8) = xmmword_18BC447E0;
  qword_1EA9F7D98 = 0xEB0000000070756FLL;
  *&xmmword_1EA9F7DA0 = v1;
  WORD4(xmmword_1EA9F7DA0) = 1;
  BYTE10(xmmword_1EA9F7DA0) = 0;
  result = 0.0;
  xmmword_1EA9F7DB0 = 0u;
  unk_1EA9F7DC0 = 0u;
  return result;
}

double sub_18B82C880()
{
  v1 = *(*v0 + 1376);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18B82CA10@<X0>(uint64_t a1@<X8>, double a2@<D2>, double a3@<D3>)
{
  if (v3[84] == a2 && v3[85] == a3)
  {
    (*(*v3 + 848))();
    sub_18B82CCC8(a1);
  }

  else
  {
    sub_18B8103B0();
    result = SFFluidCollectionView.LayoutInvalidationContext.init()(a1);
    *(a1 + 8) = 1;
  }

  return result;
}

void sub_18B82CC60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_18BC20B98();
  v6 = [objc_opt_self() systemImageNamed_];

  *a4 = v6;
}

uint64_t sub_18B82CCC8@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 104);
  v7 = sub_18B8103B0();
  v35 = v3;
  v36 = v4;
  v8 = v4;
  *&v37 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v37 + 1) = v5;
  v38 = v6;
  v39 = v7;
  v9 = type metadata accessor for SFFluidCollectionView.Element();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v21 = v3;
  v22 = v8;
  SFFluidCollectionView.LayoutInvalidationContext.init()(a1);
  sub_18B82D028(&v35);
  v30 = v35;
  v31 = v36;
  v32 = v37;
  v33 = v38;
  v34 = v39;
  swift_storeEnumTagMultiPayload();
  v24 = v3;
  v25 = v8;
  v26 = &type metadata for SFFluidTabOverviewSupplementary;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v13 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
  v20 = SFFluidCollectionView.DataSource.Snapshot.supplementaries(for:)(v12, v13);
  (*(v10 + 8))(v12, v9);

  sub_18BC21F58();
  swift_allocObject();
  v14 = sub_18BC20DB8();
  swift_storeEnumTagMultiPayload();
  v15 = sub_18B82D294(v14);
  v35 = v21;
  v36 = v22;
  *&v37 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v37 + 1) = v5;
  v38 = v6;
  v39 = v7;
  v16 = type metadata accessor for SFFluidCollectionView.LayoutInvalidationContext();
  v17 = v23;
  SFFluidCollectionView.LayoutInvalidationContext.invalidateSupplementaries(_:for:)(v20, v15, v16);

  *(v17 + 9) = 1;
  return result;
}

uint64_t sub_18B82D028@<X0>(void *a1@<X8>)
{
  v2 = v1[22];
  v3 = v1[23];
  v4 = v1[24];
  v5 = v1[25];
  v6 = v1[26];
  v7 = v1[27];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  return sub_18BC1E3F8();
}

uint64_t sub_18B82D0A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B82D10C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B82D174(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B82D1D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B82D234(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_18B82D2C0(uint64_t a1, uint64_t a2)
{
  v5 = _s4ItemVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR___SFTabSwitcherItem__internal;
  v10 = *(v2 + OBJC_IVAR___SFTabSwitcherItem__internal);
  v11 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v10 + v11, v8, _s4ItemVMa);
  v12 = &v8[*(v6 + 60)];

  *v12 = a1;
  v12[1] = a2;
  v13 = *(v2 + v9);
  v14 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  v15 = v13;
  sub_18B81FC54(v8, v13 + v14, _s4ItemVMa);
  swift_endAccess();
}

uint64_t SFFluidCollectionView.LayoutInvalidationContext.invalidateSupplementaries(_:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = a1;
  v4 = a3[2];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v33 = a3[3];
  v34 = v4;
  v38[0] = v4;
  v38[1] = v33;
  v31 = v6;
  v32 = v5;
  v38[2] = v5;
  v38[3] = v6;
  v29 = v8;
  v30 = v7;
  v38[4] = v7;
  v38[5] = v8;
  v9 = type metadata accessor for SFFluidCollectionView.Element();
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v37 = &v25 - v13;
  result = sub_18BC20E28();
  if (result)
  {
    v15 = 0;
    v27 = (v36 + 32);
    v28 = (v36 + 16);
    v26 = (v36 + 8);
    do
    {
      v16 = sub_18BC20E08();
      sub_18BC20DC8();
      if (v16)
      {
        result = (*(v36 + 16))(v37, a2 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v15, v9);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_18BC21B08();
        if (v25 != 8)
        {
          __break(1u);
          return result;
        }

        v38[0] = result;
        (*v28)(v37, v38, v9);
        result = swift_unknownObjectRelease();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      v18 = (*v27)(v11, v37, v9);
      v38[0] = v35;
      MEMORY[0x1EEE9AC00](v18);
      v19 = v33;
      *(&v25 - 8) = v34;
      *(&v25 - 7) = v19;
      v20 = v31;
      *(&v25 - 6) = v32;
      *(&v25 - 5) = v20;
      v21 = v29;
      *(&v25 - 4) = v30;
      *(&v25 - 3) = v21;
      *(&v25 - 2) = v11;
      v22 = sub_18BC210E8();
      WitnessTable = swift_getWitnessTable();
      v38[0] = sub_18B82DECC(sub_18B861970, (&v25 - 10), v22, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v24);
      swift_getWitnessTable();
      sub_18BC210E8();
      sub_18BC20E78();
      swift_getWitnessTable();
      sub_18BC210D8();
      (*v26)(v11, v9);
      result = sub_18BC20E28();
      ++v15;
    }

    while (v17 != result);
  }

  return result;
}

double sub_18B82D8AC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v45 = _s4PageVMa_0();
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v8 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v16 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s14ScrollPositionOMa();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B81A374(v2, v21, _s14ScrollPositionOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_18B81FAE0(v21, v10, _s4PageVMa);
      sub_18B827328(v7);
      sub_18B81A374(v7, v4, _s4PageVMa_0);
      sub_18B7CC230(&qword_1EA9D6D00, _s4PageVMa_0);
      v23 = v47;
      sub_18BC21A68();
      v23[6] = 0xD000000000000017;
      v23[7] = 0x800000018BC60750;
      v24 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
      sub_18B7CC9CC(v7, _s4PageVMa_0);
      sub_18B7CC9CC(v10, _s4PageVMa);
      *v23 = v24;
    }

    else
    {
      result = 0.0;
      v44 = v47;
      *(v47 + 32) = 0u;
      v44[3] = 0u;
      *v44 = 0u;
      v44[1] = 0u;
    }
  }

  else
  {
    sub_18B81FAE0(v21, v18, _s4ItemVMa);
    v26 = *v18;
    v27 = v16[7];
    v28 = v11[5];
    v29 = sub_18BC1EC08();
    (*(*(v29 - 8) + 16))(&v15[v28], &v18[v27], v29);
    v30 = v18[v16[9]];
    v31 = v18[v16[10]];
    v32 = v18[v16[11]];
    v33 = *&v18[v16[12]];
    v34 = &v18[v16[13]];
    v35 = *v34;
    v36 = v34[1];
    v37 = *&v18[v16[14]];
    v38 = &v18[v16[15]];
    *v15 = v26;
    v15[v11[6]] = v30;
    v15[v11[7]] = v31;
    v15[v11[8]] = 0;
    v15[v11[9]] = v32;
    *&v15[v11[10]] = v33;
    v39 = *v38;
    v40 = v38[1];
    v41 = &v15[v11[11]];
    *v41 = v35;
    v41[1] = v36;
    *&v15[v11[12]] = v37;
    v42 = &v15[v11[13]];
    *v42 = v39;
    v42[1] = v40;
    sub_18B81A374(v15, v46, _s4ItemVMa_2);
    sub_18B7CC230(&qword_1EA9D9230, _s4ItemVMa_2);
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18BC1E3F8();
    sub_18BC21A68();
    sub_18B7CC9CC(v15, _s4ItemVMa_2);
    v43 = v47;
    sub_18B7F44EC(v51, v47 + 8);
    v43[6] = 0x767265764F626174;
    v43[7] = 0xEF6D657449776569;
    *v43 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    v50 = &_s18ItemScrollPositionON;
    v48 = 256;
    v49 = 0;
    sub_18B8550A8(&v48, 0xD000000000000012, 0x800000018BC62780);
    sub_18B831014(v51);
    sub_18B7CC9CC(v18, _s4ItemVMa);
  }

  return result;
}

uint64_t sub_18B82DECC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_18BC21148();
  if (!v19)
  {
    return sub_18BC20DE8();
  }

  v41 = v19;
  v45 = sub_18BC21BE8();
  v32 = sub_18BC21BF8();
  sub_18BC21B88();
  result = sub_18BC21128();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_18BC211C8();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_18BC21BD8();
      result = sub_18BC21168();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_18B82E2EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D70D0);
    v3 = sub_18BC21D88();
    v4 = a1 + 32;
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v4, &v13, &qword_1EA9D70D8);
      v5 = v13;
      v6 = v14;
      result = sub_18B7C4104(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_18B7B1AD4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_18B82E41C(uint64_t a1)
{
  v3 = _s4ItemVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR___SFTabSwitcherItem__internal;
  v8 = *(v1 + OBJC_IVAR___SFTabSwitcherItem__internal);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v8 + v9, v6, _s4ItemVMa);
  v10 = *(v4 + 64);

  *&v6[v10] = a1;
  v11 = *(v1 + v7);
  v12 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  v13 = v11;
  sub_18B81FC54(v6, v11 + v12, _s4ItemVMa);
  swift_endAccess();
}

uint64_t sub_18B82E54C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v119 = *&a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v109 - v12;
  v132[0] = a1;
  v133 = a2;
  v15 = sub_18B7C2E68(v14);
  [v15 bounds];
  v17 = v16;
  v19 = v18;

  v20 = MEMORY[0x1E69E7D40];
  LODWORD(v120) = a5;
  if (v17 == 0.0 && v19 == 0.0)
  {
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x290))();
  }

  v21 = sub_18B7CC308();
  v131 = v21;
  (*((*v20 & *v6) + 0x1C0))(&v130, v132);
  v22 = v20;
  v23 = v130;
  v24 = sub_18B7D2C68();
  v26 = v25;
  v28 = sub_18B7C2E68(v27);
  [v28 contentSize];
  v30 = v29;
  v32 = v31;

  if (v30 > v24)
  {
    v24 = v30;
  }

  if (v32 > v26)
  {
    v26 = v32;
  }

  v33 = *((*v22 & *v6) + 0x80);
  [*(v6 + v33) contentSize];
  if (v35 != v24 || v34 != v26)
  {
    [*(v6 + v33) setContentSize_];
  }

  v37 = *(v6 + v33);
  [v37 adjustedContentInset];
  v117 = v39;
  v118 = v38;
  v41 = v40;
  v43 = v42;
  [v37 bounds];
  v115 = v45;
  v116 = v44;
  v113 = v47;
  v114 = v46;
  sub_18B7E0E4C();
  v111 = v49;
  v112 = v48;
  v109 = v51;
  v110 = v50;
  [v37 contentSize];
  v53 = v52;
  v55 = v54;
  [v37 frame];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = [v37 isTracking];

  v65 = v23 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
  v66 = *(v23 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState);
  v68 = *(v23 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 16);
  v67 = *(v23 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 24);
  v69 = *(v23 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
  v71 = *&v117;
  *&v70.f64[0] = v118;
  *v65 = v118;
  *(v65 + 8) = v71;
  *(v65 + 16) = v41;
  *(v65 + 24) = v43;
  v72 = v115;
  *(v65 + 32) = v116;
  *(v65 + 40) = v72;
  v74 = *&v113;
  *&v73.f64[0] = v114;
  *(v65 + 48) = v114;
  *(v65 + 56) = v74;
  v75 = v111;
  *(v65 + 64) = v112;
  *(v65 + 72) = v75;
  v76 = v109;
  *(v65 + 80) = v110;
  *(v65 + 88) = v76;
  *(v65 + 96) = v53;
  *(v65 + 104) = v55;
  *(v65 + 112) = v57;
  *(v65 + 120) = v59;
  *(v65 + 128) = v61;
  *(v65 + 136) = v63;
  *(v65 + 144) = v64;
  v73.f64[1] = v74;
  v70.f64[1] = v71;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v69, v73), vceqq_f64(v66, v70)))) & 1) == 0 || (v68 == v41 ? (v77 = v67 == v43) : (v77 = 0), !v77))
  {
    sub_18B7E0FE8();
  }

  sub_18B7CA054(*&v119, &v125, &unk_1EA9D53A0);
  if (v125)
  {
    v129[0] = v125;
    v129[1] = v126;
    v129[2] = v127;
    v129[3] = v128;
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v6) + 0x218))(v129, &v131, &v130);
    if (v125)
    {
      sub_18B988BAC(&v125, &unk_1EA9D53A0);
    }
  }

  sub_18B7CA054(v129, &v125, &unk_1EA9D53A0);
  if (v125)
  {
    v121 = v125;
    v122 = v126;
    v123 = v127;
    v124 = v128;
    sub_18BC1E1A8();
    sub_18B82F1AC(&v121, v13);
    *&v78 = COERCE_DOUBLE(sub_18B831460(v13));
    v80 = v79;
    v82 = v81;

    sub_18B988BAC(v13, &unk_1EA9DBE90);
    sub_18B8303BC(&v121);
    v119 = *&v80;
    if (v82)
    {
      v83 = *&v78;
      v84 = 1;
    }

    else
    {
      v85 = *v65;
      v86 = *(v65 + 16);
      *(v65 + 32) = *&v78;
      *(v65 + 40) = v80;
      v83 = *&v78;
      if ((vaddvq_s32(vbicq_s8(xmmword_18BC43C00, vuzp1q_s32(vceqq_f64(v85, v85), vceqq_f64(v86, v86)))) & 0xF) != 0)
      {
        sub_18B7E0FE8();
      }

      v84 = 0;
    }
  }

  else
  {
    v83 = 0.0;
    v119 = 0.0;
    v84 = 1;
  }

  v87 = v120;
  v88 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x228))(&v131, &v130, v129, a4);
  v89 = *((*v88 & *v6) + 0x68);
  swift_beginAccess();
  *(v6 + v89) = v23;
  sub_18BC1E1A8();

  if (v87)
  {
    v90 = *(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x70));
    v91 = *(v21 + 192);
    LOBYTE(v125) = *(v21 + 184);
    *(&v125 + 1) = v91;
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    v90(&v125, v132, a4);
  }

  if ((v84 & 1) == 0)
  {
    v92 = v119;
    sub_18B7D2DB4();
    sub_18B83D7A4(a4, 1, 0, 0, v83, v92);
  }

  v93 = *(v23 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_itemTypes);
  v94 = *(v93 + 16);
  if (v94)
  {
    sub_18BC1E3F8();
    v95 = (v93 + 40);
    do
    {
      v96 = *(v95 - 1);
      v97 = *v95;
      sub_18BC1E3F8();
      sub_18B8427D0(v96, v97, v21, v23, a4);

      v95 += 2;
      --v94;
    }

    while (v94);
  }

  [v6 setNeedsLayout];
  v98 = swift_allocObject();
  *(v98 + 16) = v6;
  sub_18B7CA054(a4, &v121, &unk_1EA9D5060);
  if (*(&v122 + 1))
  {
    sub_18B7C3FA4(&v121, &v125);
    v99 = *__swift_project_boxed_opaque_existential_1Tm(&v125, *(&v126 + 1));
    v100 = swift_allocObject();
    *(v100 + 16) = sub_18B848F4C;
    *(v100 + 24) = v98;
    swift_beginAccess();
    v101 = *(v99 + 24);
    v102 = v6;
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v99 + 24) = v101;
    v120 = v98;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v101 = sub_18B9B5814(0, v101[2] + 1, 1, v101);
      *(v99 + 24) = v101;
    }

    v105 = v101[2];
    v104 = v101[3];
    if (v105 >= v104 >> 1)
    {
      v101 = sub_18B9B5814((v104 > 1), v105 + 1, 1, v101);
    }

    v101[2] = v105 + 1;
    v106 = &v101[2 * v105];
    v106[4] = sub_18B9D53B0;
    v106[5] = v100;
    *(v99 + 24) = v101;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(&v125);
  }

  else
  {
    v107 = v6;
    sub_18B988BAC(&v121, &unk_1EA9D5060);
    [v107 layoutIfNeeded];
  }

  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x1D0))(&v131, &v130, v129, a4);

  sub_18B988BAC(v129, &unk_1EA9D53A0);
}

uint64_t SFFluidCollectionView.LayoutInvalidationContext.formUnion(_:)(uint64_t *a1)
{
  v2 = a1;
  result = *a1;
  v4 = *(v2 + 8);
  LOBYTE(v2) = *(v2 + 10);
  v5 = *(v1 + 8) | v4;
  *(v1 + 8) = v5 & 1;
  *(v1 + 10) = (*(v1 + 10) | v2) & 1;
  if ((v5 & 1) == 0)
  {
    sub_18BC1E3F8();
    type metadata accessor for SFFluidCollectionView.Element();
    swift_getWitnessTable();
    sub_18BC210E8();
    swift_getWitnessTable();
    return sub_18BC210D8();
  }

  return result;
}

uint64_t sub_18B82EF14(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t SFFluidCollectionView.LayoutInvalidationContext.union(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = *(a1 + 10);
  v8 = *(v2 + 8);
  v9 = *(v2 + 9);
  v10 = *(v2 + 10);
  *a2 = *v2;
  *(a2 + 8) = v8;
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  sub_18BC1E3F8();
  return SFFluidCollectionView.LayoutInvalidationContext.formUnion(_:)(&v12);
}

void sub_18B82F06C(uint64_t a1, uint64_t a2)
{
  v5 = _s4ItemVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR___SFTabSwitcherItem__internal;
  v10 = *(v2 + OBJC_IVAR___SFTabSwitcherItem__internal);
  v11 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v10 + v11, v8, _s4ItemVMa);
  v12 = &v8[*(v6 + 68)];

  *v12 = a1;
  v12[1] = a2;
  v13 = *(v2 + v9);
  v14 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
  swift_beginAccess();
  v15 = v13;
  sub_18B81FC54(v8, v13 + v14, _s4ItemVMa);
  swift_endAccess();
}

uint64_t sub_18B82F1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v9 = _s4ItemVMa_2();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s4PageVMa_0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  result = sub_18B8296A8(a1 + 8, &v40);
  if (*(&v41 + 1) == 1)
  {
    v23 = *(v35 + 192);
    v24 = *(v23 + 16);
    while (v24)
    {
      if (v24 > *(v23 + 16))
      {
        __break(1u);
        return result;
      }

      --v24;
      v25 = v23 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v24;
      sub_18B831A68(v25, v19);
      v26 = v19[*(v13 + 24)];
      result = sub_18B82D174(v19, _s4PageVMa_0);
      if ((v26 & 1) == 0)
      {
        v22 = v25;
        goto LABEL_10;
      }
    }

    return (*(v14 + 56))(v36, 1, 1, v13);
  }

  if (*(&v41 + 1))
  {

    v38[0] = v40;
    v38[1] = v41;
    v39 = v42;
    sub_18B7F44EC(v38, v37);
    v28 = swift_dynamicCast();
    v29 = *(v10 + 56);
    if (v28)
    {
      v29(v8, 0, 1, v9);
      v30 = sub_18B82FCEC(v8, v12, _s4ItemVMa_2);
      MEMORY[0x1EEE9AC00](v30);
      *(&v35 - 2) = v12;
      sub_18B830354(sub_18BA2DBDC, v31, v36);
      sub_18B831014(v38);
      return sub_18B82D174(v12, _s4ItemVMa_2);
    }

    else
    {
      v29(v8, 1, 1, v9);
      sub_18B988BAC(v8, &unk_1EA9D4F30);
      sub_18B7F44EC(v38, v37);
      if (swift_dynamicCast())
      {
        (*(v14 + 56))(v5, 0, 1, v13);
        v32 = sub_18B82FCEC(v5, v16, _s4PageVMa_0);
        MEMORY[0x1EEE9AC00](v32);
        *(&v35 - 2) = v16;
        sub_18B830354(sub_18B830BC4, v33, v36);
        sub_18B831014(v38);
        return sub_18B82D174(v16, _s4PageVMa_0);
      }

      else
      {
        sub_18B831014(v38);
        v34 = *(v14 + 56);
        v34(v5, 1, 1, v13);
        sub_18B988BAC(v5, &unk_1EA9DBE90);
        return (v34)(v36, 1, 1, v13);
      }
    }
  }

  v21 = *(v35 + 192);
  if (!*(v21 + 16))
  {
    return (*(v14 + 56))(v36, 1, 1, v13);
  }

  v22 = v21 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
LABEL_10:
  v27 = v36;
  sub_18B831A68(v22, v36);
  return (*(v14 + 56))(v27, 0, 1, v13);
}

uint64_t sub_18B82F6F4(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = *(v1 + 91) == 1 && v6 == 0;
  v8 = *v1;
  if (v7)
  {
    swift_beginAccess();
    if (sub_18BC1E3F8())
    {

      v22 = v3;
      v23 = v4;
      v24 = v5;
      v25 = 0;
      result = swift_beginAccess();
      if (*(v2 + 80))
      {
        v15 = v8[6];
        v26 = v8[5];
        v27 = v15;
        v28 = v8[7];
        type metadata accessor for SFFluidCollectionView.LayoutInvalidationContext();
        SFFluidCollectionView.LayoutInvalidationContext.formUnion(_:)(&v22);
        return swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (v5)
      {
        v16 = 256;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16 | v4;
      sub_18BC1E3F8();
      swift_beginAccess();
      *(v2 + 80) = v3;
      *(v2 + 90) = 0;
      *(v2 + 88) = v17;
    }
  }

  else
  {
    v18 = *a1;
    v19 = v4;
    v20 = v5;
    v21 = v6;
    swift_beginAccess();
    v9 = v8[6];
    v26 = v8[5];
    v27 = v9;
    v28 = v8[7];
    type metadata accessor for SFFluidCollectionView.LayoutInvalidationContext();
    SFFluidCollectionView.LayoutInvalidationContext.formUnion(_:)(&v18);
    v10 = swift_endAccess();
    result = (*(*v2 + 432))(v10);
    if (result)
    {
      v13 = v12;
      ObjectType = swift_getObjectType();
      *&v26 = v3;
      BYTE8(v26) = v4;
      BYTE9(v26) = v5;
      BYTE10(v26) = v6;
      (*(v13 + 24))(&v26, ObjectType, v13);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

size_t sub_18B82F920(size_t a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9D4C20, &unk_18BC42908, _s4ItemVMa);
  *v3 = result;
  return result;
}

id sub_18B82F9A0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 10);
  [v1 _setAutomaticContentOffsetAdjustmentEnabled_];
  v6 = MEMORY[0x1E69E7D40];
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x1C0)) = 1;
  v7 = (v1 + *((*v6 & *v1) + 0x158));
  v8 = *(MEMORY[0x1E695F050] + 16);
  *v7 = *MEMORY[0x1E695F050];
  v7[1] = v8;
  if (v4)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = v1 + *((*v6 & *v1) + 0x168);
  *v10 = v2;
  v10[10] = v5 != 0;
  *(v10 + 4) = v9 | v3;
  sub_18BC1E3F8();

  if (*(v1 + *((*v6 & *v1) + 0x1C0) + 1) != 1 || (v5 & 1) == 0)
  {

    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_18B82FB20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18BC1EC08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18B82FCEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B82FD54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B82FDBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B82FE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_18B82FEA0()
{
  v1 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR___SFTabOverview____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFTabOverview____lazy_storage___collectionView);
  }

  else
  {
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D51F0));
    v4 = sub_18BC1E1A8();
    v5 = v0;
    sub_18B852D90(v4, 0.0, 0.0, 0.0, 0.0);
    v6 = *(v0 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_18B82FF48(unint64_t a1)
{
  v2 = v1;
  v4 = _s4PageVMa();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_16:

    v15 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v26 = OBJC_IVAR___SFTabSwitcherContent__internal;
    v27 = *(v2 + OBJC_IVAR___SFTabSwitcherContent__internal);
    v28 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherContentInternal_wrapped;
    swift_beginAccess();
    v29 = v27 + v28;
    v30 = v36;
    sub_18B8162EC(v29, v36, _s7ContentVMa);

    *(v30 + 8) = v15;
    v31 = *(v2 + v26);
    v32 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherContentInternal_wrapped;
    swift_beginAccess();
    v33 = v31;
    sub_18B81FC54(v30, v31 + v32, _s7ContentVMa);
    swift_endAccess();

    return;
  }

  v14 = sub_18BC219A8();
  v36 = v13;
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_3:
  v37 = MEMORY[0x1E69E7CC0];
  sub_18B830980(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v35 = v1;
    v15 = v37;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v14; ++i)
      {
        v17 = *(MEMORY[0x18CFFD010](i, a1) + OBJC_IVAR___SFTabSwitcherPage__internal);
        swift_unknownObjectRelease();
        v18 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
        swift_beginAccess();
        sub_18B8162EC(v17 + v18, v10, _s4PageVMa);

        v37 = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_18B830980(v19 > 1, v20 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v20 + 1;
        sub_18B81F9A8(v10, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, _s4PageVMa);
      }
    }

    else
    {
      v21 = 32;
      do
      {
        v22 = *(*(a1 + v21) + OBJC_IVAR___SFTabSwitcherPage__internal);
        v23 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped;
        swift_beginAccess();
        sub_18B8162EC(v22 + v23, v7, _s4PageVMa);
        v37 = v15;
        v25 = *(v15 + 16);
        v24 = *(v15 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_18B830980(v24 > 1, v25 + 1, 1);
          v15 = v37;
        }

        *(v15 + 16) = v25 + 1;
        sub_18B81F9A8(v7, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, _s4PageVMa);
        v21 += 8;
        --v14;
      }

      while (v14);
    }

    v2 = v35;
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_18B830410(uint64_t a1)
{
  v2 = v1;
  sub_18B828C4C();
  v4 = sub_18B82FEA0();
  UIEdgeInsetsMakeWithEdges();
  v5 = v2 + OBJC_IVAR___SFTabOverview_configuration;
  swift_beginAccess();
  UIEdgeInsetsAdd();
  [v4 _setAutoScrollTouchInsets_];

  v6 = *(v2 + OBJC_IVAR___SFTabOverview_gridLayout);
  v7 = (*(*v6 + 848))();
  v8 = 30.0;
  if (*(v5 + 104))
  {
    v8 = 0.0;
  }

  *(v7 + 80) = v8;

  if (*(v5 + 32))
  {
    v10.n128_f64[0] = 16.0;
  }

  else
  {
    v10.n128_f64[0] = 0.0;
  }

  (*(*v6 + 760))(v9, 0.0, v10, 16.0, v10.n128_f64[0]);
  sub_18B7DFE48(v5, v43);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_18B7CA0E4(v43);
  (*(*v6 + 952))(Strong);
  v12 = *(v5 + 120);
  v13 = swift_unknownObjectRetain();
  sub_18B830C70(v13, v12);
  v14 = sub_18B831CC8();
  if (v14)
  {
    v15 = v14;
    if (*(v5 + 104) == 1)
    {
      if (qword_1EA9D2240 != -1)
      {
        swift_once();
      }

      v45 = xmmword_1EA9F7C30;
      v46 = *&qword_1EA9F7C40;
      *&v43[32] = xmmword_1EA9F7C10;
      v44 = xmmword_1EA9F7C20;
      *v43 = xmmword_1EA9F7BF0;
      *&v43[16] = unk_1EA9F7C00;
      v16 = qword_1EA9F7C50;
      *&v47 = qword_1EA9F7C50;
      v17 = byte_1EA9F7C48;
      v38 = xmmword_1EA9F7C20;
      v39 = xmmword_1EA9F7C30;
      v18 = *(&xmmword_1EA9F7C10 + 1);
      v19 = xmmword_1EA9F7BF0;
      v36 = *&v43[8];
      v37 = *&v43[24];
      sub_18B9D4798(v43, v40);
      v20 = 4;
    }

    else
    {
      if (qword_1EA9D2238 != -1)
      {
        swift_once();
      }

      v45 = xmmword_1EA9F7BC8;
      v46 = *&qword_1EA9F7BD8;
      *&v43[32] = xmmword_1EA9F7BA8;
      v44 = xmmword_1EA9F7BB8;
      *v43 = xmmword_1EA9F7B88;
      *&v43[16] = unk_1EA9F7B98;
      v16 = qword_1EA9F7BE8;
      *&v47 = qword_1EA9F7BE8;
      v17 = byte_1EA9F7BE0;
      v20 = qword_1EA9F7BD8;
      v38 = xmmword_1EA9F7BB8;
      v39 = xmmword_1EA9F7BC8;
      v18 = *(&xmmword_1EA9F7BA8 + 1);
      v19 = xmmword_1EA9F7B88;
      v36 = *&v43[8];
      v37 = *&v43[24];
      sub_18B9D4798(v43, v40);
    }

    *&v43[8] = v36;
    *&v43[24] = v37;
    *v43 = v19;
    *&v43[40] = v18;
    v44 = v38;
    v45 = v39;
    *&v46 = v20;
    BYTE8(v46) = v17;
    *&v47 = v16;
    v55 = v16;
    v54[4] = v39;
    v54[5] = v46;
    v54[0] = *v43;
    v54[1] = *&v43[16];
    v54[2] = *&v43[32];
    v54[3] = v38;
    sub_18B9FA178(v54);
    sub_18B9D47F4(v43);
  }

  v21 = *(v5 + 56);
  v42[0] = *(v5 + 40);
  v42[1] = v21;
  v22 = *(v5 + 88);
  v42[2] = *(v5 + 72);
  v42[3] = v22;
  if (*(&v42[0] + 1))
  {
    v53[0] = v42[0];
    v23 = *(v5 + 72);
    v53[1] = *(v5 + 56);
    v53[2] = v23;
    v53[3] = *(v5 + 88);
    v24 = *(v5 + 56);
    *v43 = *(v5 + 40);
    *&v43[16] = v24;
    v25 = *(v5 + 88);
    *&v43[32] = *(v5 + 72);
    v44 = v25;
    sub_18B9D5158(v43, v40);
    v26 = sub_18B831CC8();
    if (v26)
    {
      v27 = v26;
      *(v26 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_coordinatesGroupBackdropCaptureView) = 0;
      sub_18B9FA27C(v53);
      sub_18B988BAC(v42, &unk_1EA9D50A0);
    }

    else
    {
      sub_18B988BAC(v42, &unk_1EA9D50A0);
    }
  }

  sub_18B7CA054(a1, v43, &qword_1EA9D51B0);
  if (v44 == 1)
  {
    return sub_18B988BAC(v43, &qword_1EA9D51B0);
  }

  sub_18B9D50FC(v43, v41);
  sub_18B7DFE48(v5, v43);
  if (v49 == v41[128] && BYTE1(v49) == v41[129] && BYTE2(v49) == v41[130])
  {
    v35 = BYTE3(v49);
    sub_18B7CA0E4(v43);
    if (v35 == v41[131])
    {
      return sub_18B7CA0E4(v41);
    }
  }

  else
  {
    sub_18B7CA0E4(v43);
  }

  v29 = *(v2 + OBJC_IVAR___SFTabOverview_content + 144);
  v49 = *(v2 + OBJC_IVAR___SFTabOverview_content + 128);
  v50 = v29;
  v30 = *(v2 + OBJC_IVAR___SFTabOverview_content + 176);
  v51 = *(v2 + OBJC_IVAR___SFTabOverview_content + 160);
  v52 = v30;
  v31 = *(v2 + OBJC_IVAR___SFTabOverview_content + 80);
  v45 = *(v2 + OBJC_IVAR___SFTabOverview_content + 64);
  v46 = v31;
  v32 = *(v2 + OBJC_IVAR___SFTabOverview_content + 112);
  v47 = *(v2 + OBJC_IVAR___SFTabOverview_content + 96);
  v48 = v32;
  v33 = *(v2 + OBJC_IVAR___SFTabOverview_content + 16);
  *v43 = *(v2 + OBJC_IVAR___SFTabOverview_content);
  *&v43[16] = v33;
  v34 = *(v2 + OBJC_IVAR___SFTabOverview_content + 48);
  *&v43[32] = *(v2 + OBJC_IVAR___SFTabOverview_content + 32);
  v44 = v34;
  sub_18B82B150(v43, v40);
  sub_18B835E98(v43, 0);
  sub_18B82B2F0(v43);
  return sub_18B7CA0E4(v41);
}

size_t sub_18B830980(size_t a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9D4C38, &unk_18BC42920, _s4PageVMa);
  *v3 = result;
  return result;
}

uint64_t sub_18B8309C4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v28 = a6;
  v13 = a3(0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v18 = *(a2 + 16);
  if (v18)
  {
    v26 = v14;
    v27 = a7;
    v19 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v25 = v15;
    v20 = *(v15 + 72);
    while (1)
    {
      sub_18B7DF5D0(v19, v17, a4);
      v21 = a1(v17);
      if (v7)
      {
        return sub_18B7CC96C(v17, a5);
      }

      if (v21)
      {
        break;
      }

      sub_18B7CC96C(v17, a5);
      v19 += v20;
      if (!--v18)
      {
        v22 = 1;
        a7 = v27;
        goto LABEL_10;
      }
    }

    a7 = v27;
    sub_18B82FDBC(v17, v27, v28);
    v22 = 0;
LABEL_10:
    v15 = v25;
    v14 = v26;
  }

  else
  {
    v22 = 1;
  }

  return (*(v15 + 56))(a7, v22, 1, v14);
}

uint64_t sub_18B830B64(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[65] = a1;
  v4[66] = a2;
  v4[67] = a3;
  v4[68] = a4;
  return result;
}

uint64_t sub_18B830C70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SFTabOverview_headerRegistration);
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (a1)
  {
    v7 = sub_18B82FEA0();
    result = swift_allocObject();
    *(result + 16) = a1;
    *(result + 24) = a2;
    v8 = *(v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x190));
    if (v8)
    {
      v9 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D51D0);
      v10 = swift_allocObject();
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_18BC219A8())
      {
        swift_unknownObjectRetain();
        sub_18BC1E1A8();
        sub_18BA2925C(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        swift_unknownObjectRetain();
        sub_18BC1E1A8();
        v11 = MEMORY[0x1E69E7CD0];
      }

      v10[3] = v9;
      v10[4] = v11;
      v10[2] = sub_18B9D5294;
      swift_beginAccess();
      sub_18BC1E1A8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v8 + 24);
      *(v8 + 24) = 0x8000000000000000;
      sub_18B831068(v10, 0x726564616568, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
      *(v8 + 24) = v13;
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_18B830E38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_18B830E70(char *a1)
{
  v3 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v6 = *&a1[OBJC_IVAR___SFTabSwitcherProfile_wrapped];
    v7 = *&a1[OBJC_IVAR___SFTabSwitcherProfile_wrapped + 8];
    v9 = *&a1[OBJC_IVAR___SFTabSwitcherProfile_wrapped + 16];
    v8 = *&a1[OBJC_IVAR___SFTabSwitcherProfile_wrapped + 24];
    v10 = v7;
    sub_18BC1E3F8();
    v11 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v8 = 0;
  }

  v12 = OBJC_IVAR___SFTabSwitcherContent__internal;
  v13 = *(v1 + OBJC_IVAR___SFTabSwitcherContent__internal);
  v14 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherContentInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v13 + v14, v5, _s7ContentVMa);
  sub_18B7E9C58(*(v5 + 2), *(v5 + 3), *(v5 + 4), *(v5 + 5));
  *(v5 + 2) = v6;
  *(v5 + 3) = v7;
  *(v5 + 4) = v9;
  *(v5 + 5) = v8;
  v15 = *(v1 + v12);
  v16 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherContentInternal_wrapped;
  swift_beginAccess();
  v17 = v15;
  sub_18B81FC54(v5, v15 + v16, _s7ContentVMa);
  swift_endAccess();
}

uint64_t sub_18B831068(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B831970(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_18BB29F28();
      v11 = v19;
      goto LABEL_8;
    }

    sub_18B864C30(v16, a4 & 1);
    v11 = sub_18B831970(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_18BC22078();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {
    sub_18BB33460(v11, a2, a3, a1, v21);

    return sub_18BC1E3F8();
  }
}

void sub_18B83120C(char *a1)
{
  v3 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR___SFTabSwitcherItem__internal];
    v10 = OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherItemInternal_wrapped;
    swift_beginAccess();
    sub_18B8162EC(v9 + v10, v8, _s4ItemVMa);

    v11 = _s4ItemVMa();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  }

  else
  {
    v12 = _s4ItemVMa();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  v13 = OBJC_IVAR___SFTabSwitcherContent__internal;
  v14 = *(v1 + OBJC_IVAR___SFTabSwitcherContent__internal);
  v15 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherContentInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v14 + v15, v5, _s7ContentVMa);
  sub_18B7FD070(v8, &v5[*(v3 + 40)], &qword_1EA9D7CD0);
  v16 = *(v1 + v13);
  v17 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherContentInternal_wrapped;
  swift_beginAccess();
  v18 = v16;
  sub_18B81FC54(v5, v16 + v17, _s7ContentVMa);
  swift_endAccess();
}

uint64_t sub_18B831460(uint64_t a1)
{
  v3 = sub_18BC1EDD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  v10 = _s4PageVMa_0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  sub_18B8319E8(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_18B988BAC(v9, &unk_1EA9DBE90);
LABEL_9:
    *&result = 0.0;
    return result;
  }

  v41 = v4;
  *&result = COERCE_DOUBLE(sub_18B82FCEC(v9, v16, _s4PageVMa_0));
  v18 = *(v1 + 192);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_8:
    sub_18B82D174(v16, _s4PageVMa_0);
    goto LABEL_9;
  }

  v20 = 0;
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
      return result;
    }

    sub_18B831A68(v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    *&result = COERCE_DOUBLE(sub_18B82D174(v14, _s4PageVMa_0));
    if (updated)
    {
      break;
    }

    if (v19 == ++v20)
    {
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_18BC3E410;
  *(v22 + 32) = v20;
  sub_18BC1E1A8();
  MEMORY[0x18CFFA250](v22);
  sub_18B831DF0(0xD000000000000017, 0x800000018BC60750, 0, &v42);

  (*(v41 + 8))(v6, v3);
  sub_18B7F4620(&v42);
  v23 = v42;
  v24 = v43;
  v25 = v44;
  Height = v45;
  if (*(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 56) == 1)
  {
    v27 = v45;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v46.size.width = sub_18B7D2C68();
    v46.size.height = v31;
    v46.origin.x = 0.0;
    v46.origin.y = 0.0;
    MaxX = CGRectGetMaxX(v46);
    v47.origin.x = v28;
    v47.origin.y = v29;
    v47.size.width = v30;
    v47.size.height = v27;
    v33 = MaxX - CGRectGetMaxX(v47);
    v48.origin.x = v28;
    v48.origin.y = v29;
    v48.size.width = v30;
    v48.size.height = v27;
    MinY = CGRectGetMinY(v48);
    v49.origin.x = v28;
    v49.origin.y = v29;
    v49.size.width = v30;
    v49.size.height = v27;
    Width = CGRectGetWidth(v49);
    v50.origin.x = v28;
    v50.origin.y = v29;
    v50.size.width = v30;
    v50.size.height = v27;
    Height = CGRectGetHeight(v50);
    v23 = v33;
    v24 = MinY;
    v25 = Width;
  }

  MinX = CGRectGetMinX(*&v23);
  if (*(v1 + 177))
  {
    v37 = (v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 8);
  }

  else
  {
    v37 = (MEMORY[0x1E69DDCE0] + 8);
  }

  v38 = MinX - *v37;
  UIEdgeInsetsMakeWithEdges();
  UIEdgeInsetsAdd();
  v40 = v39;
  sub_18B82D174(v16, _s4PageVMa_0);
  *&result = v38 - v40;
  return result;
}

unint64_t sub_18B831970(uint64_t a1, uint64_t a2)
{
  sub_18BC22158();
  sub_18BC20C28();
  v4 = sub_18BC221A8();

  return sub_18B7C4194(a1, a2, v4);
}

uint64_t sub_18B8319E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B831A68(uint64_t a1, uint64_t a2)
{
  v4 = _s4PageVMa_0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B831ACC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_18B831B0C(uint64_t a1, char a2)
{
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR___SFTabSwitcherContent__internal);
  v8 = OBJC_IVAR____TtC12MobileSafari28SFTabSwitcherContentInternal_wrapped;
  swift_beginAccess();
  sub_18B8162EC(v7 + v8, v6, _s7ContentVMa);
  v9 = 0;
  if (a2)
  {
    if (qword_1EA9D2200 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA9F7A90;
    sub_18BC1E1A8();
  }

  sub_18B831F0C(v6, v9);

  return sub_18B8165D8(v6, _s7ContentVMa);
}

id sub_18B831CC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v9[-1] - v1;
  v3 = sub_18B82FEA0();
  memset(v9, 0, sizeof(v9));
  v10 = xmmword_18BC42B70;
  swift_storeEnumTagMultiPayload();
  v4 = sub_18B8323E0(v9, v2);

  sub_18B988BAC(v2, &unk_1EA9D92F0);
  sub_18B833D9C(v9);
  if (v4)
  {
    type metadata accessor for TabOverview.SearchBarBackgroundContainerView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtCC12MobileSafari11TabOverview32SearchBarBackgroundContainerView_backgroundView);

      return v6;
    }
  }

  return 0;
}

unint64_t sub_18B831DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 48) == a1 && *(v4 + 56) == a2;
  if (v7 || (result = sub_18BC21FD8(), (result & 1) != 0))
  {
    v9 = sub_18BC1EDE8();
    v10 = *(v4 + 32);
    v11 = *(v4 + 40);
    v12 = *(v4 + 96);
    v13 = *(v4 + 64) + (v11 + v12) * v9;
    v14 = v10 + v12;
    if (*(v4 + 16))
    {
      v15 = *(v4 + 72);
    }

    else
    {
      v15 = *(v4 + 72) + v14 * v9;
    }

    if (*(v4 + 16))
    {
      v16 = v13;
    }

    else
    {
      v16 = *(v4 + 64);
    }

    if (a3)
    {
      v17 = *(v4 + 104);
      v18 = 0.0;
    }

    else
    {
      v17 = 1.0;
      v18 = 1.0;
    }

    CGAffineTransformMakeScale(&v23, v17, v17);
    tx = v23.tx;
    ty = v23.ty;
    v21 = *&v23.c;
    v22 = *&v23.a;
    result = sub_18B7F3A2C(MEMORY[0x1E69E7CC0]);
    *a4 = v15;
    *(a4 + 8) = v16;
    *(a4 + 16) = v10;
    *(a4 + 24) = v11;
    *(a4 + 32) = 0;
    *(a4 + 40) = v18;
    *(a4 + 48) = v22;
    *(a4 + 64) = v21;
    *(a4 + 80) = tx;
    *(a4 + 88) = ty;
    *(a4 + 96) = 0;
    *(a4 + 104) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_18B831F0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s7ContentVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  sub_18B7DF638(a1, &v28 - v13, _s7ContentVMa);
  sub_18B7DF638(v14, v11, _s7ContentVMa);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  sub_18B82FE24(v14, v16 + v15, _s7ContentVMa);
  v17 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsInitialLayout;
  LODWORD(v15) = v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsInitialLayout];
  v18 = v3;
  if (v15 == 1)
  {
    result = sub_18B7D6E1C();
    v20 = result;
    v28 = v18;
    v29 = a2;
    if (result >> 62)
    {
      result = sub_18BC219A8();
      v21 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v21 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
LABEL_4:
        if (v21 < 1)
        {
          __break(1u);
          return result;
        }

        v22 = 0;
        v23 = MEMORY[0x1E69E7D40];
        do
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x18CFFD010](v22, v20);
          }

          else
          {
            v24 = *(v20 + 8 * v22 + 32);
          }

          v25 = v24;
          ++v22;
          (*((*v23 & *v24) + 0xE8))();
        }

        while (v21 != v22);
      }
    }

    v3[v17] = 0;
    v18 = v28;
    a2 = v29;
  }

  if (a2)
  {
    sub_18BC1E1A8();
    sub_18B7DFF64(v11, _s7ContentVMa);
    sub_18BAF421C(a2, sub_18BB113D4, v16);
  }

  else
  {
    v26 = v30;
    sub_18B7DF638(v11, v30, _s7ContentVMa);
    v27 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_unresolvedContent;
    swift_beginAccess();
    sub_18B8339EC(v26, &v18[v27]);
    swift_endAccess();
    sub_18B833A74();
    sub_18B7DFF64(v11, _s7ContentVMa);
  }
}

uint64_t sub_18B832244()
{
  v1 = _s7ContentVMa(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  if (*(v0 + v2 + 40))
  {
  }

  v4 = v3 + *(v1 + 40);
  v5 = _s4ItemVMa();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v6 = *(v5 + 28);
    v7 = sub_18BC1EC08();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  return swift_deallocObject();
}

void *sub_18B8323E0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v21 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  sub_18B833990(a1, v10);
  sub_18B7CA054(a2, v11 + v12, &unk_1EA9D92F0);
  *v7 = v9;
  swift_storeEnumTagMultiPayload();
  v13 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x150);
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (*(v14 + 16))
  {
    sub_18BC1E3F8();
    v15 = sub_18B83B1C8(v7);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      sub_18BC1E1A8();
      sub_18B988BAC(v7, &unk_1EA9D92F0);

      v18 = *(v17 + 24);
      v19 = v18;

      return v18;
    }
  }

  sub_18B988BAC(v7, &unk_1EA9D92F0);
  return 0;
}

uint64_t sub_18B8325A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v133 = a4;
  v137 = a3;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5340);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v123 - v9;
  v10 = _s4PageVMa_0();
  v149 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v123 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v138 = &v123 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v123 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v147 = &v123 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v123 - v21);
  v23 = _s4ItemVMa_2();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v146 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v148 = (&v123 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v129 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v128 = &v123 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v131 = &v123 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v130 = &v123 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v132 = &v123 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v123 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v145 = (&v123 - v42);
  *(v6 + qword_1EA9D6BB8) = 257;
  v43 = *(a2 + 184);
  v126 = a2;
  v44 = *(a1 + 184);
  v45 = *(a1 + 192);
  v143 = *(a2 + 192);
  v46 = sub_18B833DF0(v44, v45, v43, v143);
  v144 = v10;
  if (v46)
  {
    v47 = qword_1EA9D6BA0;
    swift_beginAccess();
    v48 = *(v6 + v47);
    v49 = *(v48 + 40);
    *(v48 + 40) = 0;
    sub_18BC1E1A8();
    v10 = v144;
    sub_18B7CC404(v49);

    *(v6 + qword_1EA9D6C10) = 0;
    sub_18B7CC308();
    sub_18B7CC61C();

    sub_18B7CC768();
  }

  v139 = *(v149 + 56);
  v140 = v149 + 56;
  v139(v145, 1, 1, v10);
  sub_18B7CA054(v137, &v155, &unk_1EA9D53A0);
  v50 = v136;
  if (!v155)
  {
    v51 = &unk_1EA9D53A0;
    v52 = &v155;
    goto LABEL_7;
  }

  v159 = v155;
  v160 = v156;
  v161 = v157;
  v162 = v158;
  sub_18B8342E0(v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_18B8303BC(&v159);
    v51 = &unk_1EA9D4F30;
    v52 = v22;
LABEL_7:
    sub_18B988BAC(v52, v51);
    v124 = 0;
    v53 = v143;
    goto LABEL_12;
  }

  v54 = v148;
  v55 = sub_18B82FD54(v22, v148, _s4ItemVMa_2);
  MEMORY[0x1EEE9AC00](v55);
  v53 = v143;
  sub_18B830354(sub_18BA2DBDC, v143, v40);
  v124 = 0;
  if ((*(v149 + 48))(v40, 1, v10) == 1)
  {
    sub_18B8303BC(&v159);
    sub_18B82D1D4(v54, _s4ItemVMa_2);
    sub_18B988BAC(v40, &unk_1EA9DBE90);
  }

  else
  {
    v56 = v145;
    sub_18B988BAC(v145, &unk_1EA9DBE90);
    v57 = v40;
    v58 = v147;
    sub_18B82FD54(v57, v147, _s4PageVMa_0);
    sub_18B82D0A4(v58, v56, _s4PageVMa_0);
    v139(v56, 0, 1, v10);
    v59 = v127;
    sub_18B82D0A4(v58, v127, _s4PageVMa_0);
    sub_18B82D0A4(v54, v146, _s4ItemVMa_2);
    sub_18B7CC1E8(&qword_1EA9D9230, _s4ItemVMa_2);
    sub_18BC21A68();
    sub_18B7F44EC(&v153, &v155 + 8);
    *&v158 = 0x767265764F626174;
    *(&v158 + 1) = 0xEF6D657449776569;
    *&v155 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    v152 = &_s18ItemScrollPositionON;
    v150 = 256;
    v151 = 0;
    sub_18B8550A8(&v150, 0xD000000000000012, 0x800000018BC62780);
    sub_18B831014(&v153);
    swift_beginAccess();
    sub_18B86F8BC(&v155, v59);
    swift_endAccess();
    sub_18B82D1D4(v58, _s4PageVMa_0);
    sub_18B8303BC(&v159);
    sub_18B82D1D4(v54, _s4ItemVMa_2);
  }

  v50 = v136;
LABEL_12:
  v60 = v133;
  sub_18B7CA054(v133, &v155, &unk_1EA9D5060);
  if (*(&v156 + 1))
  {
    v148 = v6;
    sub_18B7C3FA4(&v155, &v159);
    v147 = v53[2];
    if (v147)
    {
      v61 = 0;
      v146 = "quickTabSwitcherItem";
      v62 = (v149 + 48);
      v5 = v132;
      v63 = v138;
      do
      {
        if (v61 >= v53[2])
        {
          __break(1u);
          goto LABEL_63;
        }

        sub_18B82D0A4(v53 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v61, v63, _s4PageVMa_0);
        v64 = v148;
        v65 = *((*MEMORY[0x1E69E7D40] & *v148) + 0x98);
        swift_beginAccess();
        v66 = *(v64 + v65);
        if (!*(v66 + 16))
        {
LABEL_67:
          result = sub_18BC21CF8();
          __break(1u);
          return result;
        }

        sub_18BC1E3F8();
        v67 = sub_18B7C4104(0xD000000000000017, v146 | 0x8000000000000000);
        if ((v68 & 1) == 0)
        {

          goto LABEL_67;
        }

        v69 = *(*(v66 + 56) + 8 * v67);
        sub_18BC1E1A8();

        swift_beginAccess();
        v70 = *(v69 + 32);
        if (*(v70 + 16))
        {
          sub_18BC1E3F8();
          v71 = sub_18B8629FC(v63);
          if (v72)
          {
            v73 = *(*(v70 + 56) + 16 * v71);

            swift_getObjectType();
            if (swift_conformsToProtocol2())
            {
              v74 = v73 == 0;
            }

            else
            {
              v74 = 1;
            }

            if (!v74)
            {
              v142 = v73;
              sub_18B82D0A4(v63, v5, _s4PageVMa_0);
              v75 = v144;
              v139(v5, 0, 1, v144);
              v76 = v134;
              v77 = *(v135 + 48);
              sub_18B7CA054(v5, v134, &unk_1EA9DBE90);
              v141 = v77;
              v78 = v76 + v77;
              v79 = v75;
              sub_18B7CA054(v145, v78, &unk_1EA9DBE90);
              v80 = *v62;
              if ((*v62)(v76, 1, v79) == 1)
              {
                sub_18B988BAC(v5, &unk_1EA9DBE90);
                v81 = v80(v76 + v141, 1, v79);
                v63 = v138;
                v82 = v142;
                if (v81 == 1)
                {
                  sub_18B988BAC(v76, &unk_1EA9DBE90);
                  updated = 1;
                  v53 = v143;
LABEL_36:
                  sub_18B80DBC4(&v159, &v155);
                  sub_18B853B5C(v82, v63, 0, updated & 1, &v155, v148);

                  sub_18B988BAC(&v155, &unk_1EA9D5060);
                  goto LABEL_16;
                }
              }

              else
              {
                v84 = v130;
                sub_18B7CA054(v76, v130, &unk_1EA9DBE90);
                v85 = v141;
                if (v80(v76 + v141, 1, v79) != 1)
                {
                  v88 = v84;
                  v89 = v127;
                  sub_18B82FD54(v76 + v85, v127, _s4PageVMa_0);
                  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
                  sub_18B82D1D4(v89, _s4PageVMa_0);
                  v5 = v132;
                  sub_18B988BAC(v132, &unk_1EA9DBE90);
                  sub_18B82D1D4(v88, _s4PageVMa_0);
                  sub_18B988BAC(v76, &unk_1EA9DBE90);
                  v82 = v142;
                  v53 = v143;
                  v63 = v138;
                  goto LABEL_36;
                }

                v86 = v132;
                sub_18B988BAC(v132, &unk_1EA9DBE90);
                v87 = v84;
                v5 = v86;
                sub_18B82D1D4(v87, _s4PageVMa_0);
                v63 = v138;
                v82 = v142;
              }

              sub_18B988BAC(v76, &qword_1EA9D5340);
              updated = 0;
              v53 = v143;
              goto LABEL_36;
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_16:
        sub_18B82D1D4(v63, _s4PageVMa_0);
        ++v61;
      }

      while (v147 != v61);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v159);
    v50 = v136;
    v60 = v133;
    v10 = v144;
    v6 = v148;
  }

  else
  {
    sub_18B988BAC(&v155, &unk_1EA9D5060);
  }

  sub_18B7CA054(v137, &v155, &unk_1EA9D53A0);
  v90 = v131;
  if (!v155)
  {
    v91 = &unk_1EA9D53A0;
    v92 = &v155;
    goto LABEL_43;
  }

  v159 = v155;
  v160 = v156;
  v161 = v157;
  v162 = v158;
  sub_18B82F1AC(&v159, v131);
  if ((*(v149 + 48))(v90, 1, v10) == 1)
  {
    sub_18B8303BC(&v159);
    v91 = &unk_1EA9DBE90;
    v92 = v90;
LABEL_43:
    sub_18B988BAC(v92, v91);
    v93 = qword_1EA9F7FE8;
    swift_beginAccess();
    v94 = v6 + v93;
    v95 = v129;
    sub_18B7CA054(v94, v129, &unk_1EA9DBE90);
    if ((*(v149 + 48))(v95, 1, v10) != 1)
    {
      v102 = v53;
      v103 = v125;
      v104 = sub_18B82FD54(v95, v125, _s4PageVMa_0);
      MEMORY[0x1EEE9AC00](v104);
      v105 = v128;
      sub_18B830354(sub_18B830BC4, v102, v128);
      sub_18B8343DC(v105, "transitioning content and preserving targetPage", 47, 2);
      sub_18B988BAC(v105, &unk_1EA9DBE90);
      sub_18B988BAC(v145, &unk_1EA9DBE90);
      return sub_18B82D1D4(v103, _s4PageVMa_0);
    }

    sub_18B988BAC(v95, &unk_1EA9DBE90);
    if (qword_1EA9D22A8 != -1)
    {
LABEL_63:
      swift_once();
    }

    v96 = sub_18BC1F2C8();
    __swift_project_value_buffer(v96, qword_1EA9F7EB0);
    v97 = sub_18BC1F2A8();
    v98 = sub_18BC21238();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_18B7AC000, v97, v98, "Updating content with nil targetPage", v99, 2u);
      MEMORY[0x18CFFEEE0](v99, -1, -1);
    }

    v100 = &unk_1EA9DBE90;
    v101 = v145;
    return sub_18B988BAC(v101, v100);
  }

  sub_18B82FD54(v90, v50, _s4PageVMa_0);
  v107 = v128;
  sub_18B82D0A4(v50, v128, _s4PageVMa_0);
  v139(v107, 0, 1, v10);
  sub_18B8343DC(v107, "transitioning content with pageToScrollTo", 41, 2);
  sub_18B988BAC(v107, &unk_1EA9DBE90);
  sub_18B7CA054(v60, &v153, &unk_1EA9D5060);
  if (!v154)
  {
    sub_18B82D1D4(v50, _s4PageVMa_0);
    sub_18B8303BC(&v159);
    sub_18B988BAC(v145, &unk_1EA9DBE90);
    v100 = &unk_1EA9D5060;
    v101 = &v153;
    return sub_18B988BAC(v101, v100);
  }

  sub_18B7C3FA4(&v153, &v155);
  v108 = *(v6 + qword_1EA9D6C58);
  v109 = *(v108 + 24);
  v110 = __OFADD__(v109, 1);
  v111 = v109 + 1;
  if (v110)
  {
    __break(1u);
  }

  else
  {
    *(v108 + 24) = v111;
    if (v111 == 1)
    {
      swift_beginAccess();
      v112 = *(v108 + 16);
      v113 = *(v112 + 16);
      if (v113)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v114 = v112 + 40;
        do
        {
          v115 = *(v114 - 8);
          LOBYTE(v153) = *(v108 + 24) > 0;
          sub_18BC1E1A8();
          v115(&v153);

          v114 += 16;
          --v113;
        }

        while (v113);
      }
    }

    v116 = __swift_project_boxed_opaque_existential_1Tm(&v155, *(&v156 + 1));
    v117 = swift_allocObject();
    *(v117 + 16) = v6;
    v5 = *v116;
    v108 = swift_allocObject();
    *(v108 + 16) = sub_18BA59E80;
    *(v108 + 24) = v117;
    swift_beginAccess();
    v53 = *(v5 + 32);
    v118 = v6;
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 32) = v53;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_57;
    }
  }

  v53 = sub_18B9B5814(0, v53[2] + 1, 1, v53);
  *(v5 + 32) = v53;
LABEL_57:
  v121 = v53[2];
  v120 = v53[3];
  if (v121 >= v120 >> 1)
  {
    v53 = sub_18B9B5814((v120 > 1), v121 + 1, 1, v53);
  }

  v53[2] = v121 + 1;
  v122 = &v53[2 * v121];
  v122[4] = sub_18B7D1E94;
  v122[5] = v108;
  *(v5 + 32) = v53;
  swift_endAccess();

  sub_18B82D1D4(v50, _s4PageVMa_0);
  sub_18B8303BC(&v159);
  sub_18B988BAC(v145, &unk_1EA9DBE90);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v155);
}

uint64_t sub_18B833950()
{

  return swift_deallocObject();
}

uint64_t sub_18B8339EC(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContentVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari31SFFluidTabOverviewSupplementaryO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_18B833A74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5330);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = _s7ContentVMa(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF638(v0 + v14, v13, _s7ContentVMa);
  v15 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_unresolvedContent;
  swift_beginAccess();
  sub_18B7DF638(v0 + v15, v8, _s7ContentVMa);
  sub_18B8340CC(v8, v11);
  sub_18B7DFF64(v8, _s7ContentVMa);
  swift_beginAccess();
  sub_18B8339EC(v11, v0 + v14);
  swift_endAccess();
  sub_18B7DF638(v13, v3, _s7ContentVMa);
  (*(v5 + 56))(v3, 0, 1, v4);
  result = sub_18B7D6E1C();
  v17 = result;
  if (!(result >> 62))
  {
    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_18B988BAC(v3, &qword_1EA9D5330);
    return sub_18B7DFF64(v13, _s7ContentVMa);
  }

  result = sub_18BC219A8();
  v18 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = MEMORY[0x1E69E7D40];
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x18CFFD010](v19, v17);
      }

      else
      {
        v21 = *(v17 + 8 * v19 + 32);
      }

      v22 = v21;
      ++v19;
      (*((*v20 & *v21) + 0xE0))(v3);
    }

    while (v18 != v19);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_18B833DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26[-v7];
  v9 = _s4PageVMa_0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26[-v20];
  v22 = *(a2 + 16);
  if (v22)
  {
    sub_18B82D10C(a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v22 - 1), v15, _s4PageVMa_0);
    if (v15[*(v9 + 24)])
    {
      sub_18BBE8450(v15, v18);
      v23 = sub_18BBE8450(v18, v21);
      MEMORY[0x1EEE9AC00](v23);
      *&v26[-16] = v21;
      sub_18B830354(sub_18B830BE4, a4, v8);
      sub_18B82D234(v21, _s4PageVMa_0);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        sub_18BBE8450(v8, v12);
        v24 = v12[*(v9 + 24)];
        sub_18B82D234(v12, _s4PageVMa_0);
        LOBYTE(v22) = v24 ^ 1;
        return v22 & 1;
      }

      sub_18B988BAC(v8, &unk_1EA9DBE90);
    }

    else
    {
      sub_18B82D234(v15, _s4PageVMa_0);
    }

    LOBYTE(v22) = 0;
  }

  return v22 & 1;
}

uint64_t sub_18B8340CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s7ContentVMa(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16[-v11];
  if (*(a1 + 1))
  {
    __break(1u);
  }

  else
  {
    sub_18B7DF638(a1, a2, _s7ContentVMa);
    v13 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems;
    swift_beginAccess();
    v14 = *(v3 + v13);
    if (*(v14 + 16))
    {
      v15 = sub_18BB16C60();
      swift_beginAccess();
      v14 = sub_18BB0B958(v15, *(v3 + v13));
      *(v3 + v13) = v14;
      swift_endAccess();
    }

    sub_18B82FE24(a2, v12, _s7ContentVMa);
    v12[2] = *(v3 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_mode);
    sub_18BC1E3F8();

    *(v12 + 6) = v14;
    sub_18B82FE24(v12, a2, _s7ContentVMa);
    sub_18B834730(a2, v9);
    sub_18B7DFF64(a2, _s7ContentVMa);
    sub_18B82FE24(v9, a2, _s7ContentVMa);
    sub_18B8350BC(a2, v9);
    sub_18B7DFF64(a2, _s7ContentVMa);
    result = sub_18B82FE24(v9, a2, _s7ContentVMa);
    *(a2 + 1) = 1;
  }

  return result;
}

uint64_t sub_18B8342E0@<X0>(uint64_t a1@<X8>)
{
  sub_18B8296A8(v1 + 8, &v7);
  if (v8 >= 2)
  {

    v5 = _s4ItemVMa_2();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_18BA12788(&v7);
    v3 = _s4ItemVMa_2();
    return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  }
}

uint64_t sub_18B8343DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v34 = a2;
  v35 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  if (qword_1EA9D22A8 != -1)
  {
    swift_once();
  }

  v16 = sub_18BC1F2C8();
  __swift_project_value_buffer(v16, qword_1EA9F7EB0);
  sub_18B7CA054(a1, v15, &unk_1EA9DBE90);
  v17 = v4;
  v18 = sub_18BC1F2A8();
  v19 = sub_18BC21258();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32[1] = a4;
    v22 = v21;
    v36[0] = v21;
    *v20 = 136446466;
    v23 = sub_18B7D6598(v15);
    v33 = a1;
    v25 = v24;
    sub_18B988BAC(v15, &unk_1EA9DBE90);
    v26 = sub_18B7EA850(v23, v25, v36);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v27 = sub_18BC21AF8();
    v29 = sub_18B7EA850(v27, v28, v36);

    *(v20 + 14) = v29;
    a1 = v33;
    _os_log_impl(&dword_18B7AC000, v18, v19, "Setting target to page %{public}s, reason: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v22, -1, -1);
    MEMORY[0x18CFFEEE0](v20, -1, -1);
  }

  else
  {

    sub_18B988BAC(v15, &unk_1EA9DBE90);
  }

  sub_18B7CA054(a1, v12, &unk_1EA9DBE90);
  v30 = qword_1EA9F7FE8;
  swift_beginAccess();
  sub_18B7CA054(v17 + v30, v9, &unk_1EA9DBE90);
  swift_beginAccess();
  sub_18B834ED0(v12, v17 + v30);
  swift_endAccess();
  sub_18B83538C(v9);
  sub_18B988BAC(v9, &unk_1EA9DBE90);
  return sub_18B988BAC(v12, &unk_1EA9DBE90);
}

size_t sub_18B834730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v62 = a1;
  v60 = _s4PageVMa();
  v58 = *(v60 - 8);
  v4 = MEMORY[0x1EEE9AC00](v60);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v56 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v52 - v8;
  v59 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v59);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5348);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v53 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v19 = _s15MoveItemsIntentVMa(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pendingMoveIntent;
  swift_beginAccess();
  v54 = v3;
  sub_18B7CA054(v3 + v23, v18, &qword_1EA9D5348);
  v52 = v20;
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_18B988BAC(v18, &qword_1EA9D5348);
    return sub_18B7DF638(v62, v61, _s7ContentVMa);
  }

  sub_18B82FE24(v18, v22, _s15MoveItemsIntentVMa);
  v25 = sub_18B7DF638(v62, v13, _s7ContentVMa);
  *v13 = 1;
  v26 = *(v13 + 1);
  MEMORY[0x1EEE9AC00](v25);
  *(&v52 - 2) = v22;
  v27 = sub_18BB701C8(sub_18BB113A0, (&v52 - 4), v26);

  *(v13 + 1) = v27;
  sub_18B7DF638(v22, v10, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v10;
    v29 = v56;
    sub_18B82FE24(v28, v56, _s4PageVMa);
    v30 = &v22[*(v19 + 28)];
    v31 = *(v30 + 1);
    v32 = v22;
    if (v31)
    {
      v33 = *v30;
      v34 = (v29 + *(v60 + 76));
      sub_18BC1E3F8();

      *v34 = v33;
      v34[1] = v31;
    }

    v35 = v55;
    sub_18B7DF638(v29, v55, _s4PageVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v61;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_18B835DE8(0, v27[2] + 1, 1, v27);
    }

    v39 = v27[2];
    v38 = v27[3];
    if (v39 >= v38 >> 1)
    {
      v27 = sub_18B835DE8(v38 > 1, v39 + 1, 1, v27);
    }

    v27[2] = v39 + 1;
    sub_18B82FE24(v35, v27 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v39, _s4PageVMa);
    goto LABEL_17;
  }

  v40 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338) + 48)];
  v41 = v10;
  v29 = v57;
  v42 = sub_18B82FE24(v41, v57, _s4PageVMa);
  MEMORY[0x1EEE9AC00](v42);
  *(&v52 - 2) = v43;
  v44 = sub_18BBC2D38(sub_18B835E88, (&v52 - 4), *(v62 + 8));
  if (v45)
  {

    v46 = v53;
    (*(v52 + 56))(v53, 1, 1, v19);
    v47 = v54;
    swift_beginAccess();
    sub_18B7FD070(v46, v47 + v23, &qword_1EA9D5348);
    swift_endAccess();
    sub_18B7DFF64(v29, _s4PageVMa);
    sub_18B7DF638(v62, v61, _s7ContentVMa);
    sub_18B7DFF64(v13, _s7ContentVMa);
    v48 = v22;
    return sub_18B7DFF64(v48, _s15MoveItemsIntentVMa);
  }

  v49 = v44;
  result = swift_isUniquelyReferenced_nonNull_native();
  v37 = v61;
  if (result)
  {
    v32 = v22;
    if ((v49 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = sub_18BAE3800(v27);
  v27 = result;
  v32 = v22;
  if ((v49 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v49 < v27[2])
  {
    v50 = v27 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v49;
    v51 = *(v60 + 68);
    v63 = *(v50 + v51);
    sub_18BC1E3F8();
    sub_18BAF3A60(&v63, v40);

    *(v50 + v51) = v63;

LABEL_17:
    *(v13 + 1) = v27;
    sub_18B7DFF64(v29, _s4PageVMa);
    sub_18B82FE24(v13, v37, _s7ContentVMa);
    v48 = v32;
    return sub_18B7DFF64(v48, _s15MoveItemsIntentVMa);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_18B834ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B834F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15MoveItemsIntentV11DestinationOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = _s4PageVMa();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_18B835060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_18B8350BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s4PageVMa() - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(v6 + 8) + 16) || *(*(v2 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_interactivePageInsertionIsDisabledAssertion) + 24) >= 1)
  {
    return sub_18B7DF638(v6, a2, _s7ContentVMa);
  }

  v11 = v7;
  v12 = v6;
  sub_18B7DF638(v6, a2, _s7ContentVMa);
  v13 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_interactivelyInsertedPageID;
  swift_beginAccess();
  v14 = v11[8];
  v15 = sub_18BC1EC08();
  (*(*(v15 - 8) + 16))(&v9[v14], v2 + v13, v15);
  v16 = v12[2];
  v17 = v12[3];
  *v9 = 65793;
  *&v9[v11[9]] = 0;
  v9[v11[10]] = 1;
  v9[v11[11]] = 0;
  v9[v11[12]] = 0;
  v9[v11[13]] = 1;
  *&v9[v11[14]] = xmmword_18BC3FCA0;
  v18 = v12[4];
  v19 = v12[5];
  v9[v11[15]] = 1;
  v20 = &v9[v11[16]];
  *v20 = v16;
  *(v20 + 1) = v17;
  *(v20 + 2) = v18;
  *(v20 + 3) = v19;
  *&v9[v11[17]] = MEMORY[0x1E69E7CC0];
  v21 = &v9[v11[18]];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = CGRectMake;
  *(v21 + 5) = 0;
  v22 = &v9[v11[19]];
  *v22 = 0;
  *(v22 + 1) = 0xE000000000000000;
  v23 = *(a2 + 8);
  sub_18B82B844(v16, v17, v18, v19);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_18B835DE8(0, v23[2] + 1, 1, v23);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_18B835DE8(v24 > 1, v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  result = sub_18B82FE24(v9, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25, _s4PageVMa);
  *(a2 + 8) = v23;
  return result;
}

uint64_t sub_18B83538C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = _s4PageVMa_0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EA9F7FE8;
  swift_beginAccess();
  sub_18B7CA054(v1 + v13, v8, &unk_1EA9DBE90);
  v14 = *(v10 + 48);
  if (v14(v8, 1, v9) == 1)
  {
    return sub_18B988BAC(v8, &unk_1EA9DBE90);
  }

  sub_18B82FD54(v8, v12, _s4PageVMa_0);
  if (v14(a1, 1, v9) == 1)
  {
    goto LABEL_13;
  }

  sub_18B7CA054(a1, v5, &unk_1EA9DBE90);
  result = (v14)(v5, 1, v9);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v16 = sub_18BB1864C(v5);
  sub_18B82D1D4(v5, _s4PageVMa_0);
  if (v16)
  {
LABEL_13:
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_18B835634(a1, v12);
      swift_unknownObjectRelease();
    }
  }

  return sub_18B82D1D4(v12, _s4PageVMa_0);
}

void sub_18B835634(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v74 = a2;
  v72 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v64 - v5;
  v6 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v64 - v10;
  v12 = _s4PageVMa();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v17 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(Strong + v17, v8, _s7ContentVMa);

  v75 = v74;
  sub_18B835D80(sub_18B835E88, *(v8 + 1), v11);
  sub_18B7DFF04(v8, _s7ContentVMa);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_18B988BAC(v11, &qword_1EA9D52E0);
  }

  else
  {
    sub_18B81F940(v11, v15, _s4PageVMa);
    v18 = swift_unknownObjectUnownedLoadStrong();
    v19 = *&v18[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_willScrollToPageObserver];
    sub_18BC1E1A8();

    v19(v15);

    sub_18B7DFF04(v15, _s4PageVMa);
  }

  sub_18B7E5BC8();
  sub_18B83AA80();
  v71 = OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView;
  v20 = *(v3 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView);
  v21 = v74;
  if (v20)
  {
    v70 = *&v20[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 64];
    v23 = *&v20[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 32];
    v22 = *&v20[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 48];
    *&v83[16] = *&v20[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 16];
    *&v83[32] = v23;
    *&v83[48] = v22;
    *&v83[64] = v70;
    *v83 = *&v20[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration];
    v24 = v23;
    v67 = v22;
    v68 = *(&v23 + 1);
    v64 = *&v83[24];
    v25 = *&v20[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2];
    WORD2(v81[0]) = *&v20[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 6];
    LODWORD(v81[0]) = v25;
    v26 = _s4PageVMa_0();
    v27 = v21 + *(v26 + 20);
    v28 = *(v27 + 1);
    v65 = *(v27 + 3);
    v66 = v28;
    v29 = *(v27 + 176);
    v69 = *(v27 + 168);
    v30 = v20;
    sub_18B9EA6E8(v83, v84);
    sub_18BC1E3F8();

    v31 = v21 + *(v26 + 32);
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    v35 = *(v31 + 24);
    sub_18B82B844(*v31, v33, v34, v35);
    sub_18B7E9C58(v64, v24, v68, v67);
    v36 = *(v27 + 152);
    v37 = *(v27 + 160);
    sub_18BC1E3F8();

    v84[0] = v66;
    v84[1] = v65;
    v85 = v81[0];
    v86 = WORD2(v81[0]);
    v87 = v69;
    v88 = v29;
    v89 = v32;
    v90 = v33;
    v91 = v34;
    v92 = v35;
    v21 = v74;
    v93 = v36;
    v94 = v37;
    sub_18BAEF2DC(v84);
    sub_18B9EA744(v84);
  }

  v38 = _s4PageVMa_0();
  v39 = v21 + *(v38 + 32);
  v40 = *v39;
  v41 = *(v39 + 8);
  v42 = *(v39 + 16);
  v43 = *(v39 + 24);
  v44 = *(v3 + OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderButton);
  v45 = v44;
  sub_18B9E9BD4(v44, v40, v41, v42, v43);

  v46 = *(v3 + OBJC_IVAR___SFTabOverviewDisplayItem_profileButtonForNavigationBar);
  v47 = v46;
  sub_18B9E9BD4(v46, v40, v41, v42, v43);

  sub_18B9E0460(v40, v41, v42, v43);
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  sub_18B7EB088(inited);
  if ((*(v21 + *(v38 + 24)) & 1) == 0)
  {
    v49 = *(v3 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView);
    if (v49)
    {
      v50 = *(v49 + OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar);
      sub_18BBCC708(v21, 1);
    }
  }

  v51 = v73;
  sub_18B7CA054(v72, v73, &unk_1EA9DBE90);
  if ((*(*(v38 - 8) + 48))(v51, 1, v38) == 1)
  {
    sub_18B988BAC(v51, &unk_1EA9DBE90);
    goto LABEL_15;
  }

  v52 = *(v51 + *(v38 + 24));
  sub_18B7DFF04(v51, _s4PageVMa_0);
  if (v52 != 1)
  {
LABEL_15:
    v63 = *(v3 + v71);
    if (v63)
    {
      if (*(v63 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2) == 1)
      {
        [*(v63 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField) resignFirstResponder];
      }
    }

    return;
  }

  v53 = *(v3 + v71);
  if (v53)
  {
    v54 = &v53[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration];
    if (v53[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2] == 1)
    {
      v81[0] = *v54;
      v55 = *(v54 + 1);
      v56 = *(v54 + 2);
      v57 = *(v54 + 3);
      v82 = *(v54 + 8);
      v81[2] = v56;
      v81[3] = v57;
      v81[1] = v55;
      v58 = *(v54 + 19);
      v59 = *(v54 + 51);
      v79 = *(v54 + 35);
      v80[0] = v59;
      *(v80 + 13) = *(v54 + 8);
      v77 = *(v54 + 3);
      v78 = v58;
      *v83 = v81[0];
      v83[2] = 0;
      *&v83[3] = v77;
      *&v83[64] = *(v80 + 13);
      *&v83[51] = v80[0];
      *&v83[35] = v79;
      *&v83[19] = v58;
      v60 = v53;
      sub_18B9EA6E8(v81, &v76);
      sub_18BAEF2DC(v83);
      sub_18B9EA744(v83);
      [*&v60[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField] resignFirstResponder];
      v61 = *&v60[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didCancelRetitling];
      v62 = sub_18BC1E1A8();
      v61(v62);
    }
  }
}

uint64_t sub_18B835E10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_18B835E98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR___SFTabOverview_content];
  v6 = *&v2[OBJC_IVAR___SFTabOverview_content + 144];
  v7 = *&v2[OBJC_IVAR___SFTabOverview_content + 112];
  v84 = *&v2[OBJC_IVAR___SFTabOverview_content + 128];
  v85 = v6;
  v8 = *&v2[OBJC_IVAR___SFTabOverview_content + 144];
  v9 = *&v2[OBJC_IVAR___SFTabOverview_content + 176];
  v86 = *&v2[OBJC_IVAR___SFTabOverview_content + 160];
  v87 = v9;
  v10 = *&v2[OBJC_IVAR___SFTabOverview_content + 80];
  v11 = *&v2[OBJC_IVAR___SFTabOverview_content + 48];
  v80 = *&v2[OBJC_IVAR___SFTabOverview_content + 64];
  v81 = v10;
  v12 = *&v2[OBJC_IVAR___SFTabOverview_content + 80];
  v13 = *&v2[OBJC_IVAR___SFTabOverview_content + 112];
  v82 = *&v2[OBJC_IVAR___SFTabOverview_content + 96];
  v83 = v13;
  v14 = *&v2[OBJC_IVAR___SFTabOverview_content + 16];
  v77[0] = *&v2[OBJC_IVAR___SFTabOverview_content];
  v77[1] = v14;
  v15 = *&v2[OBJC_IVAR___SFTabOverview_content + 48];
  v17 = *&v2[OBJC_IVAR___SFTabOverview_content];
  v16 = *&v2[OBJC_IVAR___SFTabOverview_content + 16];
  v78 = *&v2[OBJC_IVAR___SFTabOverview_content + 32];
  v79 = v15;
  v88[8] = v84;
  v88[9] = v8;
  v18 = *&v2[OBJC_IVAR___SFTabOverview_content + 176];
  v88[10] = v86;
  v88[11] = v18;
  v88[4] = v80;
  v88[5] = v12;
  v88[6] = v82;
  v88[7] = v7;
  v88[0] = v17;
  v88[1] = v16;
  v88[2] = v78;
  v88[3] = v11;
  v19 = *(a1 + 144);
  v20 = *(a1 + 160);
  v21 = *(a1 + 112);
  *(v5 + 8) = *(a1 + 128);
  *(v5 + 9) = v19;
  v22 = *(a1 + 176);
  *(v5 + 10) = v20;
  *(v5 + 11) = v22;
  v23 = *(a1 + 80);
  v24 = *(a1 + 96);
  v25 = *(a1 + 48);
  *(v5 + 4) = *(a1 + 64);
  *(v5 + 5) = v23;
  *(v5 + 6) = v24;
  *(v5 + 7) = v21;
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  *v5 = *a1;
  *(v5 + 1) = v26;
  v28 = *(a1 + 4);
  *(v5 + 2) = v27;
  *(v5 + 3) = v25;
  sub_18B82B150(v77, v75);
  sub_18B82B150(a1, v75);
  sub_18B82B2F0(v88);
  v29 = sub_18B82FEA0();
  v30 = v5[4];
  v31 = MEMORY[0x1E69E7D40];
  v32 = *((*MEMORY[0x1E69E7D40] & *v29) + 0xD8);
  swift_beginAccess();
  v33 = *(v29 + v32);
  *(v29 + v32) = v30;
  sub_18B83681C(v33);

  v34 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
  v35 = *&v3[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView];
  if (v28 == 1)
  {
    v36 = *(a1 + 104);
    sub_18BC1E3F8();
  }

  else
  {
    v36 = MEMORY[0x1E69E7CD0];
  }

  v37 = *((*v31 & *v35) + 0x198);
  swift_beginAccess();
  v38 = *(v35 + v37);
  *(v35 + v37) = v36;
  v39 = v35;
  v40 = sub_18BC1E3F8();
  v41 = sub_18B8369E0(v40, v38);

  if (v41)
  {

    v42 = a2;
    if ((a2 & 1) == 0)
    {
LABEL_6:
      v43 = 0x8000000000000010;
      goto LABEL_11;
    }
  }

  else
  {
    sub_18B9CB3CC(v38);
    swift_beginAccess();
    sub_18BC1E1A8();
    sub_18B8487D0(MEMORY[0x1E69E7CD0], 1);

    v42 = a2;
    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (qword_1EA9D2200 != -1)
  {
    swift_once();
  }

  v43 = qword_1EA9F7A90;
  sub_18BC1E1A8();
LABEL_11:
  v44 = swift_allocObject();
  v44[2] = v3;
  v45 = v3;
  sub_18B7EAA64(sub_18B836E6C, v44, CGRectMake, 0, v43);

  sub_18B7EBAE8(v43);
  sub_18B8372A0();
  sub_18B8384D0(a1, v42 & 1);
  sub_18B8527F0(a1);
  v46 = *&v3[v34];
  v47 = v45[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 40] == 1 && *(v5 + 4) == 0;
  v48 = *((*v31 & *v46) + 0x98);
  swift_beginAccess();
  *(v46 + v48) = v47;
  v49 = sub_18B852D5C();
  if (!v49)
  {
    return sub_18B82B2F0(v77);
  }

  v71[0] = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v50 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 64);
  v52 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 16);
  v51 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 32);
  v71[3] = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 48);
  v71[4] = v50;
  v71[1] = v52;
  v71[2] = v51;
  v54 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 96);
  v53 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 112);
  v55 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 80);
  *(v72 + 9) = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 121);
  v71[6] = v54;
  v72[0] = v53;
  v71[5] = v55;
  v56 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 112);
  v69 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 96);
  v70[0] = v56;
  *(v70 + 9) = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 121);
  v57 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 48);
  v65 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 32);
  v66 = v57;
  v58 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 80);
  v67 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 64);
  v68 = v58;
  v59 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 16);
  v63 = *(v49 + OBJC_IVAR___SFTabOverviewLargeTitleView_configuration);
  v64 = v59;
  v60 = v49;
  sub_18B9A2574(v71, v75);
  sub_18B9BE330(&v63, v45);
  v75[6] = v69;
  v76[0] = v70[0];
  *(v76 + 9) = *(v70 + 9);
  v75[2] = v65;
  v75[3] = v66;
  v75[4] = v67;
  v75[5] = v68;
  v75[0] = v63;
  v75[1] = v64;
  sub_18B9A2574(v75, v73);
  sub_18B9A2438(v75);
  sub_18B9A25AC(v75);
  sub_18B82B2F0(v77);

  v73[6] = v69;
  v74[0] = v70[0];
  *(v74 + 9) = *(v70 + 9);
  v73[2] = v65;
  v73[3] = v66;
  v73[4] = v67;
  v73[5] = v68;
  v73[0] = v63;
  v73[1] = v64;
  return sub_18B9A25AC(v73);
}

uint64_t sub_18B836394()
{
  _s4PageVMa();

  return _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
}

void sub_18B8363DC(uint64_t a1, void *a2, SEL *a3)
{
  v6 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v19 - v11;
  v13 = [a2 *a3];
  sub_18B8162EC(a1, v12, _s4PageVMa);
  v14 = objc_allocWithZone(SFTabSwitcherPage);
  sub_18B8162EC(v12, v8, _s4PageVMa);
  v15 = type metadata accessor for SFTabSwitcherPageInternal(0);
  v16 = objc_allocWithZone(v15);
  sub_18B8162EC(v8, v16 + OBJC_IVAR____TtC12MobileSafari25SFTabSwitcherPageInternal_wrapped, _s4PageVMa);
  v20.receiver = v16;
  v20.super_class = v15;
  v17 = objc_msgSendSuper2(&v20, sel_init);
  sub_18B8165D8(v8, _s4PageVMa);
  *&v14[OBJC_IVAR___SFTabSwitcherPage__internal] = v17;
  v19.receiver = v14;
  v19.super_class = SFTabSwitcherPage;
  v18 = objc_msgSendSuper2(&v19, sel_init);
  sub_18B8165D8(v12, _s4PageVMa);
  v13[2](v13, v18);
  _Block_release(v13);
}

uint64_t sub_18B836598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27[-v7];
  v9 = _s4ItemVMa_0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27[-v20];
  v22 = *(a2 + 16);
  if (v22)
  {
    sub_18B80DF38(a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v22 - 1), v15);
    if (v15[*(v9 + 32)])
    {
      sub_18B80DF9C(v15, v18);
      v23 = sub_18B80DF9C(v18, v21);
      MEMORY[0x1EEE9AC00](v23);
      *&v27[-16] = v24;
      sub_18BAD1CB0(sub_18BA319DC, a4, v8);
      sub_18B813CBC(v21);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        sub_18B80DF9C(v8, v12);
        v25 = v12[*(v9 + 32)];
        sub_18B813CBC(v12);
        LOBYTE(v22) = v25 ^ 1;
        return v22 & 1;
      }

      sub_18BA31A2C(v8);
    }

    else
    {
      sub_18B813CBC(v15);
    }

    LOBYTE(v22) = 0;
  }

  return v22 & 1;
}

uint64_t sub_18B83681C(char a1)
{
  v2 = a1 & 1;
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    swift_beginAccess();
    sub_18BC1E1A8();
    sub_18B8487D0(MEMORY[0x1E69E7CD0], 1);

    if (*(v1 + v3) != 1)
    {
      v5 = sub_18B8649E0();
      *&v5[qword_1EA9D4758] = 0;
    }
  }

  return result;
}

void sub_18B836924(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_18BA4327C(*a1, *a2);
  if (*(v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 1))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  if (*(v3 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 1))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  if (sub_18B836598(v4 | *(v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content), *(v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8), v5 | *(v3 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content), *(v3 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8)))
  {

    sub_18BA45994();
  }
}

id sub_18B836A0C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = (a1 + *a3);
  v5 = v4[1];
  v8[4] = *v4;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_18B8370CC;
  v8[3] = a4;
  v6 = _Block_copy(v8);
  sub_18BC1E1A8();

  return v6;
}

uint64_t sub_18B836AB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v40 = a3(0);
  v7 = MEMORY[0x1EEE9AC00](v40);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v32 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v32 - v14;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v17 = 0;
  v18 = *(a1 + 56);
  v32 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v39 = a2 + 56;
  v33 = v22;
  v34 = &v32 - v14;
  v35 = v15;
  v36 = a1;
  if (v21)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v21));
      v37 = (v21 - 1) & v21;
LABEL_13:
      v26 = *(v15 + 72);
      sub_18B7EC5AC(*(a1 + 48) + v26 * (v23 | (v17 << 6)), v16, a4);
      sub_18B80D4EC(v16, v12, a4);
      sub_18BC22158();
      v38 = sub_18BC1EC08();
      sub_18B7C1244(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
      sub_18BC20A78();
      v27 = sub_18BC221A8();
      v28 = -1 << *(a2 + 32);
      v29 = v27 & ~v28;
      if (((*(v39 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        break;
      }

      v30 = ~v28;
      while (1)
      {
        sub_18B7EC5AC(*(a2 + 48) + v29 * v26, v9, a4);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B7ED058(v9, a4);
        if (updated)
        {
          break;
        }

        v29 = (v29 + 1) & v30;
        if (((*(v39 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_18B7ED058(v12, a4);
      v15 = v35;
      a1 = v36;
      v22 = v33;
      v16 = v34;
      v21 = v37;
      if (!v37)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_18B7ED058(v12, a4);
    return 0;
  }

LABEL_8:
  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      return 1;
    }

    v25 = *(v32 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v37 = (v25 - 1) & v25;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

double *sub_18B836DEC(uint64_t a1)
{
  sub_18B83713C(a1 + OBJC_IVAR___SFTabOverview_content, *(a1 + OBJC_IVAR___SFTabOverview_searchState), *(a1 + OBJC_IVAR___SFTabOverview_searchState + 8), &v6);
  v2 = (a1 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration);
  v3 = *(a1 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 16);
  v8 = *(a1 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration);
  v9[0] = v3;
  *(v9 + 9) = *(a1 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 25);
  v4 = v7[0];
  *v2 = v6;
  v2[1] = v4;
  *(v2 + 25) = *(v7 + 9);
  return sub_18B836E74(&v8);
}

double *sub_18B836E74(double *result)
{
  v2 = &v1[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration];
  if (*&v1[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration] != *result || v2[1] != result[1] || *(v2 + 16) != (result[2] & 1) || v2[3] != result[3] || v2[4] != result[4] || *(v2 + 40) != (result[5] & 1))
  {
    sub_18B867A84();
    if ([objc_opt_self() _isInRetargetableAnimationBlock])
    {
      v3 = 0x8000000000000008;
    }

    else
    {
      v3 = 0x8000000000000000;
    }

    v4 = swift_allocObject();
    v4[2] = v1;
    v5 = v1;
    sub_18B7EAA64(sub_18B86797C, v4, CGRectMake, 0, v3);

    sub_18B7EBAE8(v3);
    CGAffineTransformMakeScale(&v15, *&v5[OBJC_IVAR___SFTabOverview_contentScale], *&v5[OBJC_IVAR___SFTabOverview_contentScale]);
    a = v15.a;
    b = v15.b;
    c = v15.c;
    d = v15.d;
    tx = v15.tx;
    ty = v15.ty;
    [*&v5[OBJC_IVAR___SFTabOverview_backgroundView] setTransform_];
    v12 = *&v5[OBJC_IVAR___SFTabOverview_contentBelowSearchBarView];
    v15.a = a;
    v15.b = b;
    v15.c = c;
    v15.d = d;
    v15.tx = tx;
    v15.ty = ty;
    [v12 setTransform_];
    v13 = *&v5[OBJC_IVAR___SFTabOverview_overlayContainerView];
    v15.a = a;
    v15.b = b;
    v15.c = c;
    v15.d = d;
    v15.tx = tx;
    v15.ty = ty;
    [v13 setTransform_];
    v14 = *&v5[OBJC_IVAR___SFTabOverview_searchBarContainerView];
    v15.a = a;
    v15.b = b;
    v15.c = c;
    v15.d = d;
    v15.tx = tx;
    v15.ty = ty;
    [v14 setTransform_];
    return [v5 setNeedsLayout];
  }

  return result;
}

uint64_t sub_18B837090()
{

  return swift_deallocObject();
}

void sub_18B8370D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_18BC1E1A8();
  v4 = a2;
  v3();
}

uint64_t sub_18B83713C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(v4 + OBJC_IVAR___SFTabOverview_peekingInfo) == 2)
  {
    v5 = *(result + 32);
    if (v5 && (*(result + 49) & 1) != 0)
    {
      v6 = 0;
      v7 = xmmword_18BC42C30;
      v8 = 1;
      v9 = 0.0;
      v10 = 4.0;
    }

    else
    {
      if (!a3)
      {
        goto LABEL_15;
      }

      v11 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v11 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (!v11)
      {
        v6 = 0;
        v8 = 0;
        v7 = xmmword_18BC3DD80;
        v10 = 6.0;
        v9 = 0.4;
      }

      else
      {
LABEL_15:
        v7 = xmmword_18BC3DD80;
        v9 = 1.0;
        v10 = 0.0;
        if (*(result + 3) == 2)
        {
          v6 = 0;
          v8 = 0;
        }

        else
        {
          v6 = !v5 || (*(result + 8) & 1) != 0;
          v8 = 1;
        }
      }
    }
  }

  else
  {
    v7 = xmmword_18BC3DD80;
    v10 = 0.0;
    if (*(result + 88) == 1)
    {
      v6 = 0;
      v8 = 0;
      v9 = 0.35;
      if (*(v4 + OBJC_IVAR___SFTabOverview_isHovered))
      {
        v9 = 0.5;
      }

      if (*(v4 + OBJC_IVAR___SFTabOverview_isHighlighted))
      {
        v9 = 0.7;
      }
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v9 = 0.0;
    }
  }

  *a4 = v7;
  *(a4 + 16) = v6;
  *(a4 + 24) = v10;
  *(a4 + 32) = v9;
  *(a4 + 40) = v8;
  return result;
}

uint64_t sub_18B8372A0()
{
  v1 = sub_18BC1EC08();
  v107 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v105 = v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v103 = v94 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v97 = v94 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v94 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v99 = v94 - v11;
  v12 = sub_18B837C8C();
  v110 = v0;
  v13 = *(v0 + OBJC_IVAR___SFTabOverview_content + 144);
  v114[8] = *(v0 + OBJC_IVAR___SFTabOverview_content + 128);
  v114[9] = v13;
  v14 = *(v0 + OBJC_IVAR___SFTabOverview_content + 176);
  v114[10] = *(v0 + OBJC_IVAR___SFTabOverview_content + 160);
  v114[11] = v14;
  v15 = *(v0 + OBJC_IVAR___SFTabOverview_content + 80);
  v114[4] = *(v0 + OBJC_IVAR___SFTabOverview_content + 64);
  v114[5] = v15;
  v16 = *(v0 + OBJC_IVAR___SFTabOverview_content + 112);
  v114[6] = *(v0 + OBJC_IVAR___SFTabOverview_content + 96);
  v114[7] = v16;
  v17 = *(v0 + OBJC_IVAR___SFTabOverview_content + 16);
  v114[0] = *(v0 + OBJC_IVAR___SFTabOverview_content);
  v114[1] = v17;
  v18 = *(v0 + OBJC_IVAR___SFTabOverview_content + 48);
  v114[2] = *(v0 + OBJC_IVAR___SFTabOverview_content + 32);
  v114[3] = v18;
  sub_18B82B150(v114, v113);
  v19 = sub_18B837C8C();
  sub_18B82B2F0(v114);
  v20 = *(v19 + 16);
  v21 = *(v12 + 16);
  v95 = v19;
  v96 = v12;
  if (v20 <= v21 >> 3)
  {
    v113[0] = v12;
    sub_18BC1E3F8();
    sub_18B8382B4(v19);
    v22 = v113[0];
  }

  else
  {
    sub_18BC1E3F8();
    v22 = sub_18B856158(v19, v12);
  }

  v23 = v22 + 56;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 56);
  v100 = OBJC_IVAR___SFTabOverview_tabSnapshotPool;
  v108 = OBJC_IVAR___SFTabOverview_tabSnapshotRegistrations;
  swift_beginAccess();
  v27 = 0;
  v28 = (v24 + 63) >> 6;
  v106 = v107 + 16;
  v104 = v107 + 32;
  v109 = (v107 + 8);
  v101 = v1;
  v102 = v9;
  v98 = v22;
  while (v26)
  {
LABEL_16:
    v32 = *(v22 + 48);
    v33 = v107;
    v34 = *(v107 + 72);
    v35 = v99;
    (*(v107 + 16))(v99, v32 + v34 * (__clz(__rbit64(v26)) | (v27 << 6)), v1);
    v29 = v102;
    (*(v33 + 32))(v102, v35, v1);
    v36 = *(v110 + v108);
    if (*(v36 + 16))
    {
      sub_18BC1E3F8();
      v37 = sub_18B857EE4(v29);
      if (v38)
      {
        v39 = *(*(v36 + 56) + 8 * v37);
        sub_18BC1E1A8();

        if (*(v110 + v100))
        {
          sub_18BC1E1A8();
          sub_18BA7832C(v39);
        }

        swift_beginAccess();
        v40 = sub_18B857EE4(v102);
        if (v41)
        {
          v42 = v40;
          v94[1] = v39;
          v43 = v108;
          v44 = v110;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = *(v44 + v43);
          v111 = v46;
          *(v44 + v43) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_18BB2A324();
            v46 = v111;
          }

          (*v109)(*(v46 + 48) + v42 * v34, v101);

          sub_18BB5B728(v42, v46);
          *(v44 + v43) = v46;
        }

        swift_endAccess();

        v1 = v101;
      }

      else
      {
      }

      v29 = v102;
    }

    v26 &= v26 - 1;
    (*v109)(v29, v1);
    v22 = v98;
  }

  v30 = v110;
  while (1)
  {
    v31 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v31 >= v28)
    {
      break;
    }

    v26 = *(v23 + 8 * v31);
    ++v27;
    if (v26)
    {
      v27 = v31;
      goto LABEL_16;
    }
  }

  if (*(v96 + 16) <= *(v95 + 2) >> 3)
  {
    v112 = v95;
    sub_18B8382B4(v96);

    v48 = v112;
  }

  else
  {
    v47 = sub_18B856158(v96, v95);

    v48 = v47;
  }

  v49 = v105;
  v50 = 0;
  v51 = (v48 + 56);
  v52 = 1 << v48[32];
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v48 + 7);
  v55 = (v52 + 63) >> 6;
  v98 = v55;
  v99 = v48;
  v96 = (v48 + 56);
  while (v54)
  {
    v57 = v1;
LABEL_39:
    v59 = *(v48 + 6);
    v60 = v107;
    v102 = *(v107 + 72);
    v61 = *(v107 + 16);
    v62 = v97;
    v61(v97, v59 + v102 * (__clz(__rbit64(v54)) | (v50 << 6)), v57);
    v63 = *(v60 + 32);
    v64 = v103;
    v63(v103, v62, v57);
    v95 = v61;
    v61(v49, v64, v57);
    if (*(v30 + v100))
    {
      sub_18BC1E1A8();
      v65 = sub_18B856BBC(v64);

      v66 = v108;
      swift_beginAccess();
      if (v65)
      {
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v111 = *(v30 + v66);
        v68 = v111;
        *(v30 + v66) = 0x8000000000000000;
        v69 = sub_18B857EE4(v105);
        v71 = v68[2];
        v72 = (v70 & 1) == 0;
        v73 = __OFADD__(v71, v72);
        v74 = v71 + v72;
        if (v73)
        {
          goto LABEL_60;
        }

        v75 = v70;
        if (v68[3] >= v74)
        {
          if (v67)
          {
            goto LABEL_51;
          }

          v88 = v69;
          sub_18BB2A324();
          v69 = v88;
          v87 = v111;
          if ((v75 & 1) == 0)
          {
            goto LABEL_54;
          }

LABEL_52:
          *(v87[7] + 8 * v69) = v65;

          v56 = *v109;
          v49 = v105;
          v1 = v101;
          (*v109)(v105, v101);
        }

        else
        {
          sub_18B8587D4(v74, v67);
          v69 = sub_18B857EE4(v105);
          if ((v75 & 1) != (v76 & 1))
          {
            goto LABEL_62;
          }

LABEL_51:
          v87 = v111;
          if (v75)
          {
            goto LABEL_52;
          }

LABEL_54:
          v87[(v69 >> 6) + 8] |= 1 << v69;
          v89 = v101;
          v90 = v69;
          v49 = v105;
          v95(v87[6] + v69 * v102, v105, v101);
          *(v87[7] + 8 * v90) = v65;
          v1 = v89;
          v56 = *v109;
          (*v109)(v49, v1);
          v91 = v87[2];
          v73 = __OFADD__(v91, 1);
          v92 = v91 + 1;
          if (v73)
          {
            goto LABEL_61;
          }

          v87[2] = v92;
        }

        *(v110 + v108) = v87;

        goto LABEL_32;
      }
    }

    else
    {
      v66 = v108;
      swift_beginAccess();
    }

    v49 = v105;
    v77 = sub_18B857EE4(v105);
    if (v78)
    {
      v79 = v77;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v81 = *(v30 + v66);
      v111 = v81;
      *(v30 + v66) = 0x8000000000000000;
      v82 = v30;
      v83 = v109;
      if (!v80)
      {
        sub_18BB2A324();
        v81 = v111;
      }

      v84 = v101;
      v56 = *v83;
      v56(*(v81 + 48) + v79 * v102, v101);

      v85 = v79;
      v1 = v84;
      sub_18BB5B728(v85, v81);
      v86 = v105;
      v56(v105, v1);
      *(v82 + v66) = v81;
      v49 = v86;
    }

    else
    {
      v56 = *v109;
      v1 = v101;
      (*v109)(v49, v101);
    }

LABEL_32:
    v54 &= v54 - 1;
    swift_endAccess();
    v56(v103, v1);
    v30 = v110;
    v55 = v98;
    v48 = v99;
    v51 = v96;
  }

  while (1)
  {
    v58 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v58 >= v55)
    {
    }

    v54 = *(v51 + 8 * v58);
    ++v50;
    if (v54)
    {
      v57 = v1;
      v50 = v58;
      goto LABEL_39;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = sub_18BC22078();
  __break(1u);
  return result;
}