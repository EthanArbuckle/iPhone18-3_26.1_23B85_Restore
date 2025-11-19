uint64_t sub_18B86286C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v10 = *(v4 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_11;
  }

  sub_18BC1E3F8();
  v11 = sub_18B7C4104(a2, a3);
  if ((v12 & 1) == 0)
  {

LABEL_11:
    result = sub_18BC21CF8();
    __break(1u);
    return result;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  sub_18BC1E1A8();

  swift_beginAccess();
  v14 = *(v13 + 32);
  if (*(v14 + 16))
  {
    sub_18BC1E3F8();
    v15 = a4(a1);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 16 * v15);

      return v17;
    }
  }

  else
  {
  }

  return 0;
}

double SFChromeVisibilityForScrollDistance(double a1)
{
  result = a1 * 0.25;
  if (result > 1.0)
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_18B862A64(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_18B862A84(uint64_t a1)
{
  v2 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v5 = *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderBackgroundView);
  if (v5)
  {
    v6 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(a1 + v6, v4, _s6LayoutVMa);
    v7 = v5;
    sub_18BB224D0(v13);
    sub_18B7DFF04(v4, _s6LayoutVMa);
    sub_18B7F4620(v13);
    [v7 setAlpha_];
  }

  v8 = *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_topBarBackgroundView);
  if (v8)
  {
    v9 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(a1 + v9, v4, _s6LayoutVMa);
    sub_18BB225F0(v14);
    sub_18B7DFF04(v4, _s6LayoutVMa);
    sub_18B7F4620(v14);
    [v8 setAlpha_];
  }

  v10 = *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_bottomBarBackgroundView);
  if (v10)
  {
    v11 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(a1 + v11, v4, _s6LayoutVMa);
    sub_18BB22868(v15);
    sub_18B7DFF04(v4, _s6LayoutVMa);
    sub_18B7F4620(v15);
    [v10 setAlpha_];
  }
}

uint64_t sub_18B862CB8(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v42 - v5;
  v7 = _s4PageVMa_0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7C9974();
  if (*(v11 + qword_1EA9F7FF0) == 1)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
LABEL_4:
    sub_18B988BAC(v6, &unk_1EA9DBE90);
LABEL_5:
    v25 = 0.0;
    v26 = 0.0;
    goto LABEL_6;
  }

  v12 = v11;
  v13 = sub_18B7CC308();
  v14 = sub_18B7C2E68(v13);
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v55.origin.x = v16;
  v55.origin.y = v18;
  v55.size.width = v20;
  v55.size.height = v22;
  MidX = CGRectGetMidX(v55);
  v56.origin.x = v16;
  v56.origin.y = v18;
  v56.size.width = v20;
  v56.size.height = v22;
  MidY = CGRectGetMidY(v56);
  sub_18B7CECB4(v6, MidX, MidY);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  sub_18B81F940(v6, v10, _s4PageVMa_0);
  v30 = *&v2[OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher];
  sub_18B862650(v10, v43);

  v51 = v43[6];
  v52 = v43[7];
  v53 = v43[8];
  v54 = v44;
  v47 = v43[2];
  v48 = v43[3];
  v49 = v43[4];
  v50 = v43[5];
  v46[0] = v43[0];
  v46[1] = v43[1];
  if (sub_18B862A64(v46) == 1)
  {
    sub_18B7DFF04(v10, _s4PageVMa_0);
    goto LABEL_5;
  }

  v31 = *(&v51 + 1);
  v57.origin.x = UIEdgeInsetsInsetRect(*&v47, *(&v47 + 1), *&v48, *(&v48 + 1), *v46, *(v46 + 1));
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  v36 = CGRectGetHeight(v57);
  if (v31 <= v36)
  {
    v31 = v36;
  }

  v58.origin.x = x;
  v58.origin.y = y;
  v58.size.width = width;
  v58.size.height = height;
  v37 = v31 - CGRectGetMaxY(v58);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v45);

  sub_18B7DFD58(v45);
  v39 = fmin(v37 * 0.1, 0.0);
  if (v45[0])
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v39;
  }

  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinY = CGRectGetMinY(v59);
  sub_18B7DFF04(v10, _s4PageVMa_0);
  if (MinY * -0.1 < 0.0 || MinY > 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = MinY * -0.1;
  }

LABEL_6:
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  *(v27 + 24) = v26;
  *(v27 + 32) = v25;
  v28 = v2;
  sub_18B7EAA64(sub_18B8631DC, v27, CGRectMake, 0, a1);
}

uint64_t sub_18B8630F8()
{

  return swift_deallocObject();
}

void sub_18B863158(double a1, double a2)
{
  v4 = sub_18B7E8610();
  [v4 setValue_];

  v5 = sub_18B8631E8();
  [v5 setValue_];
}

void sub_18B863210()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___SFTabOverviewDisplayItem_hud);
    v3 = sub_18B8631E8();
    [v3 presentationValue];
    v5 = v4;

    CGAffineTransformMakeTranslation(&v6, 0.0, v5);
    [v2 setTransform_];
  }
}

uint64_t sub_18B8632EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_18B853B5C(a1, a2, a4, a4, v9, Strong);

  return sub_18B988BAC(v9, &unk_1EA9D5060);
}

uint64_t sub_18B863374(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, void *a8)
{
  ObjectType = swift_getObjectType();
  v24[0] = a1;
  (*(*(a2 + 8) + 8))(a3, ObjectType);
  v24[3] = &_s7ContentVN_1;
  v24[4] = &off_1EFF33718;
  v17 = *(a6 + 192);
  LOBYTE(v24[0]) = *(a6 + 184);
  v24[1] = v17;
  v18 = a4[15];
  v19 = a4[16];
  __swift_project_boxed_opaque_existential_1Tm(a4 + 12, v18);
  v20 = a4[2];
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  v20(v23, a5);

  sub_18B810470(a1, v23, v24, a7, v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  v21 = __swift_destroy_boxed_opaque_existential_1Tm(v24);
  result = (*((*MEMORY[0x1E69E7D40] & *a8) + 0x1F8))(v21);
  if (result)
  {
    return [a1 layoutIfNeeded];
  }

  return result;
}

void sub_18B8634FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v50 = *(a1 + 8);
  v51 = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v47 = *(a1 + 48);
  v7 = *(a1 + 80);
  v48 = v6;
  v49 = v7;
  v8 = *(a1 + 104);
  v9 = v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo;
  if ((*(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionStyle) & 1) == 0)
  {
    sub_18B81407C(a1, v46);
    sub_18B7F3B64();
    sub_18BC21A68();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_18B7F3BB8(v46, 0xD000000000000011, 0x800000018BC65280, isUniquelyReferenced_nonNull_native);
    v19 = v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics;
    sub_18B8489A0();
    v20 = 0.5;
    _SFUninterpolate(v21, 0.33, 0.5);
    sub_18BC21A68();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_18B7F3BB8(v46, 0x6964615272756C62, 0xEA00000000007375, v22);
    v23 = *(v19 + 48);
    v24 = *(v9 + 16);
    sub_18B8489A0();
    _SFInterpolate(v23, v24, v25);
    sub_18BC21A68();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_18B7F3BB8(v46, 0x53746E65746E6F63, 0xEC000000656C6163, v26);
    v27 = *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 32);
    v28 = *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 40);
    v29 = *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
    Height = *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 56);
    if (*(v19 + 56) == 1)
    {
      v31 = *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 56);
      v32 = *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 32);
      v33 = *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 40);
      v34 = *(v2 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
      v52.size.width = sub_18B7D2C68();
      v52.size.height = v35;
      v52.origin.x = 0.0;
      v52.origin.y = 0.0;
      MaxX = CGRectGetMaxX(v52);
      v53.origin.x = v32;
      v53.origin.y = v33;
      v53.size.width = v34;
      v53.size.height = v31;
      v37 = MaxX - CGRectGetMaxX(v53);
      v54.origin.x = v32;
      v54.origin.y = v33;
      v54.size.width = v34;
      v54.size.height = v31;
      MinY = CGRectGetMinY(v54);
      v55.origin.x = v32;
      v55.origin.y = v33;
      v55.size.width = v34;
      v55.size.height = v31;
      Width = CGRectGetWidth(v55);
      v56.origin.x = v32;
      v56.origin.y = v33;
      v20 = 0.5;
      v56.size.width = v34;
      v56.size.height = v31;
      Height = CGRectGetHeight(v56);
      v27 = v37;
      v28 = MinY;
      v29 = Width;
    }

    MidX = CGRectGetMidX(*&v27);
    v17 = MidX - sub_18B7E1178() * v20;
    sub_18B8489A0();
    v42 = _SFUninterpolate(v41, 0.2, 0.5);
    if (v42 <= 0.0)
    {
      v42 = 0.0;
    }

    if (v42 <= 1.0)
    {
      v5 = v42;
    }

    else
    {
      v5 = 1.0;
    }

    v10 = -1.0;
    goto LABEL_16;
  }

  v10 = *(a1 + 96);
  v11 = *(v9 + 48);
  sub_18B81407C(a1, v46);
  sub_18BA2D778();
  v14 = v13;
  v15 = sub_18B7E1178() * *(*(v2 + 16) + 48);
  if (v15 >= 0.0)
  {
    if (v15 >= v14)
    {
      v15 = v14;
    }

    v16 = v15 * 0.67;
    if (v14 <= 0.0)
    {
      v16 = 0.0;
    }

    v17 = v11 + v16 + *a1;
LABEL_16:
    *a2 = v17;
    v43 = v51;
    *(a2 + 8) = v50;
    *(a2 + 24) = v43;
    *(a2 + 40) = v5;
    v44 = v48;
    v45 = v49;
    *(a2 + 48) = v47;
    *(a2 + 64) = v44;
    *(a2 + 80) = v45;
    *(a2 + 96) = v10;
    *(a2 + 104) = v8;
    return;
  }

  __break(1u);
}

unint64_t sub_18B8638C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7220);
    v3 = sub_18BC21D88();
    sub_18BC1E1A8();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_18BC1E3F8();
      sub_18BC1E1A8();
      result = sub_18B831970(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

id sub_18B8639C4()
{
  v1 = qword_1EA9D6138;
  v2 = *(v0 + qword_1EA9D6138);
  if (v2)
  {
    v3 = *(v0 + qword_1EA9D6138);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC988]) initWithDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_18B863A3C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x1E69E7D40];
  *&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x88)] = 0;
  v6 = *((*v5 & *v1) + 0x90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5218);
  swift_allocObject();
  *&v1[v6] = sub_18B863DD8();
  v7 = *((*v5 & *v1) + 0x98);
  v8 = sub_18BC1EDD8();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[*((*v5 & *v2) + 0xA0)] = 0;
  v9 = *((*v5 & *v2) + 0xA8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4F88);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = *((*v5 & *v2) + 0xB0);
  v12 = MEMORY[0x1E69E7CC0];
  *&v2[v11] = sub_18B864014(MEMORY[0x1E69E7CC0]);
  v13 = *((*v5 & *v2) + 0xB8);
  type metadata accessor for Assertion();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = 0;
  *&v2[v13] = v14;
  swift_unknownObjectUnownedInit();
  v24.receiver = v2;
  v24.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v24, sel_init);
  v16 = *(a1 + *((*v5 & *a1) + 0x90));
  v17 = *(v15 + *((*v15 & *v5) + 0x90));
  v18 = qword_1EA9D95D0;
  swift_beginAccess();
  if (*&v16[v18] >> 62 && (result = sub_18BC219A8(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_18BC1E1A8();
    v19 = v15;
    v20 = v16;
    sub_18B86456C(0, 0, v17);
    swift_endAccess();
    v21 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    swift_beginAccess();
    *(v17 + 16) = sub_18B9D542C;
    *(v17 + 24) = v21;

    sub_18B864788(v17, 0);

    v22 = sub_18B86494C();
    [a1 addInteraction_];

    return v19;
  }

  return result;
}

char *sub_18B863DD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + 4) = MEMORY[0x1E69E7CC0];
  v5 = qword_1EA9F8260;
  v6 = sub_18BC1EDD8();
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  v7 = *(*v0 + 240);
  v8 = _s4ItemVMa_2();
  v9 = *(*(v8 - 1) + 56);
  v9(&v0[v7], 1, 1, v8);
  *(v0 + 2) = CGRectMake;
  *(v0 + 3) = 0;
  sub_18BC1E1A8();
  sub_18BC1DE28();
  *v3 = 1;
  v3[v8[6]] = 0;
  v3[v8[7]] = 0;
  v3[v8[8]] = 1;
  v3[v8[9]] = 0;
  *&v3[v8[10]] = 0;
  v10 = &v3[v8[11]];
  *v10 = sub_18B814EE4;
  v10[1] = 0;
  *&v3[v8[12]] = v4;
  v11 = &v3[v8[13]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v9(v3, 0, 1, v8);
  v12 = *(*v0 + 240);
  swift_beginAccess();
  sub_18B7FD070(v3, &v0[v12], &unk_1EA9D4F30);
  swift_endAccess();

  return v0;
}

unint64_t sub_18B864014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7210);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7218);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7210);
      v11 = *v5;
      result = sub_18BB8B38C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = _s4ItemVMa_2();
      result = sub_18B80D3BC(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, _s4ItemVMa_2);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void sub_18B8641F8(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = v9 - 1;
  if (!v9)
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v8 + 80);
  v15 = v14 | *(v6 + 80);
  v16 = v10 + v14;
  v17 = (v10 + v14) & ~v14;
  if (v9)
  {
    v18 = *(v8 + 64);
  }

  else
  {
    v18 = *(v8 + 64) + 1;
  }

  v19 = v17 + v18;
  v20 = ((((v17 + v18 + ((v15 + 8) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 < a3)
  {
    v21 = a3 - v13;
    if (v20)
    {
      v22 = 2;
    }

    else
    {
      v22 = v21 + 1;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v5 = v23;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v13)
  {
    if (v20)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v13;
    }

    if (v20)
    {
      v25 = ~v13 + a2;
      v26 = a1;
      bzero(a1, v20);
      a1 = v26;
      *v26 = v25;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v20) = v24;
      }

      else
      {
        *(a1 + v20) = v24;
      }
    }

    else if (v5)
    {
      *(a1 + v20) = v24;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v20) = 0;
  }

  else if (v5)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v12 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = a2 - 1;
    }

    *a1 = v27;
    return;
  }

  v28 = ((a1 + v15 + 8) & ~v15);
  if (v12 >= a2)
  {
    if (v7 >= v11)
    {
      v33 = *(v6 + 56);
      v34 = (a1 + v15 + 8) & ~v15;

      v33(v34);
    }

    else
    {
      v28 = (&v28[v16] & ~v14);
      if (v11 >= a2)
      {
        v35 = *(v8 + 56);
        v36 = a2 + 1;

        v35(v28, v36, v9);
      }

      else
      {
        if (v18 <= 3)
        {
          v32 = ~(-1 << (8 * v18));
        }

        else
        {
          v32 = -1;
        }

        if (v18)
        {
          v30 = v32 & (~v11 + a2);
          if (v18 <= 3)
          {
            v31 = v18;
          }

          else
          {
            v31 = 4;
          }

          bzero(v28, v18);
          if (v31 <= 2)
          {
            if (v31 == 1)
            {
              goto LABEL_58;
            }

            goto LABEL_73;
          }

LABEL_77:
          if (v31 == 3)
          {
            *v28 = v30;
            v28[2] = BYTE2(v30);
          }

          else
          {
            *v28 = v30;
          }
        }
      }
    }
  }

  else
  {
    if (v19 <= 3)
    {
      v29 = ~(-1 << (8 * v19));
    }

    else
    {
      v29 = -1;
    }

    if (v19)
    {
      v30 = v29 & (~v12 + a2);
      if (v19 <= 3)
      {
        v31 = v19;
      }

      else
      {
        v31 = 4;
      }

      bzero(((a1 + v15 + 8) & ~v15), v19);
      if (v31 <= 2)
      {
        if (v31 == 1)
        {
LABEL_58:
          *v28 = v30;
          return;
        }

LABEL_73:
        *v28 = v30;
        return;
      }

      goto LABEL_77;
    }
  }
}

uint64_t sub_18B86456C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_18BC219A8();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_18BC219A8();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_18B864658(result, 1);

  return sub_18B86465C(v6, v5, 1, v3);
}

uint64_t sub_18B86465C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8F90);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_18BC219A8();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_18BC219A8();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = sub_18BC1E1A8();
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_18B864788(uint64_t a1, char a2)
{
  v5 = qword_1EA9D95D0;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_20:
    v7 = sub_18BC219A8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_18BC1E3F8();
  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x18CFFD010](v8, v6);
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_22;
        }

        v11 = result;
        swift_unknownObjectRelease();
        if (v11 == a1)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        if (*(v6 + 32 + 8 * v8) == a1)
        {
LABEL_14:

          if (*(v2 + qword_1EA9D95E0) == 1)
          {
            *(v2 + qword_1EA9D95E8) = (*(v2 + qword_1EA9D95E8) | a2) & 1;
          }

          else
          {
            v12 = (v2 + qword_1EA9D95C8);
            swift_beginAccess();
            v13 = v12[1];
            v15[0] = *v12;
            v15[1] = v13;
            v15[2] = v12[2];
            sub_18B7CA054(v15, &v14, &unk_1EA9D4F90);
            sub_18B83BE78(v15, a2 & 1);
            return sub_18B988BAC(v15, &unk_1EA9D4F90);
          }

          return result;
        }

        ++v8;
      }
    }

    while (v8 != v7);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

id sub_18B86494C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC9B8]) initWithDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_18B8649E0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x180);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F20));
    v5 = v0;
    v6 = sub_18B864A84(v0);
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_18B864A84(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = qword_1EA9D4750;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DCCA8]) init];
  *&v1[qword_1EA9D4758] = 0;
  swift_unknownObjectUnownedInit();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = qword_1EA9D4750;
  v7 = *&v5[qword_1EA9D4750];
  v8 = v5;
  [v7 setDelegate_];
  [a1 addInteraction_];

  return v8;
}

void *sub_18B864B68()
{
  v1 = OBJC_IVAR___SFTabOverview____lazy_storage___searchFilter;
  if (*(v0 + OBJC_IVAR___SFTabOverview____lazy_storage___searchFilter))
  {
    v2 = *(v0 + OBJC_IVAR___SFTabOverview____lazy_storage___searchFilter);
  }

  else
  {
    _s12SearchFilterCMa();
    v2 = swift_allocObject();
    v2[4] = 0;
    v2[5] = 0;
    v2[2] = CGRectMake;
    v2[3] = 0;
    *(v0 + v1) = v2;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v2;
}

uint64_t _s12SearchFilterCMa()
{
  result = qword_1EA9D6A58;
  if (!qword_1EA9D6A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B864C30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7220);
  v34 = a2;
  result = sub_18BC21D78();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_18BC1E3F8();
        sub_18BC1E1A8();
      }

      sub_18BC22158();
      sub_18BC20C28();
      result = sub_18BC221A8();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_18B864ED8(char a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SFFluidCollectionView();
  return objc_msgSendSuper2(&v7, sel_setTracksImmediatelyWhileDecelerating_, a1 & 1, v4, v5, v6);
}

void sub_18B864F68(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_18B864ED8(a3);
}

void *SFFluidCollectionView.TabOverviewSwipeDeleteInteraction.init()()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v0;
  v5 = *(v4 + 0xC0);
  (*(*(*((v3 & v1) + 0xC0) - 8) + 56))(&v0[*((v3 & v1) + 0xF0)], 1, 1, *((v3 & v1) + 0xC0));
  v0[*((*v2 & *v0) + 0xF8)] = 0;
  v6 = &v0[*((*v2 & *v0) + 0x100)];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  *&v0[*((*v2 & *v0) + 0xE8)] = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  v12 = *((v3 & v1) + 0xB8);
  v13 = *(v4 + 200);
  v14 = *(v4 + 216);
  v15.receiver = v0;
  v15.super_class = type metadata accessor for SFFluidCollectionView.TabOverviewSwipeDeleteInteraction();
  v7 = objc_msgSendSuper2(&v15, sel_init, v12, v5, v13, v14);
  v8 = *((*v2 & *v7) + 0xE8);
  v9 = *(v7 + v8);
  v10 = v7;
  [v9 addTarget:v10 action:sel_didRecognizePan_];
  [*(v7 + v8) setAllowedScrollTypesMask_];
  [*(v7 + v8) _setCanPanHorizontally_];
  [*(v7 + v8) _setCanPanVertically_];
  [*(v7 + v8) setDelegate_];
  [*(v7 + v8) _setHysteresis_];

  return v10;
}

id SFFluidCollectionView.Interaction.init()()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  swift_unknownObjectWeakInit();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SFFluidCollectionView.Interaction();
  return objc_msgSendSuper2(&v6, sel_init, v3, v4, v5);
}

uint64_t sub_18B865324(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_18B8654BC(Strong);

  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x120);
  swift_beginAccess();
  v6 = a1;
  MEMORY[0x18CFFC270]();
  if (*((*(v2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18BC20DD8();
  }

  sub_18BC20E18();
  return swift_endAccess();
}

uint64_t sub_18B86543C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18BC3E3E0;
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8));
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

void sub_18B8654BC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5110);
      v4 = Strong;
      v5 = a1;
      v6 = sub_18BC215C8();

      if (v6)
      {

        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v7 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_18BC219A8();
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_29:

    return;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_8:
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = v8 & 0xC000000000000001;
    v12 = &selRef_traitsAffectingBarMetrics;
    v28 = a1;
    while (1)
    {
      if (v11)
      {
        v14 = MEMORY[0x18CFFD010](v10, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v10 + 32);
      }

      v15 = v14;
      v16 = [v14 v12[142]];
      if (!v16)
      {
        if (a1)
        {
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      v17 = [v15 v12[142]];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      if (a1)
      {
        sub_18B7B0AC0(0, &qword_1EA9D46F0);
        v19 = a1;
        v20 = v9;
        v21 = v11;
        v22 = v8;
        v23 = v12;
        v24 = Strong;
        v25 = v19;
        v26 = sub_18BC215C8();

        Strong = v24;
        v12 = v23;
        v8 = v22;
        v11 = v21;
        v9 = v20;
        a1 = v28;
        if ((v26 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_22:
        [a1 removeGestureRecognizer_];
LABEL_23:
        if (!Strong)
        {
          goto LABEL_12;
        }

LABEL_24:
        v18 = Strong;
        [v18 addGestureRecognizer_];
        goto LABEL_11;
      }

      v13 = 0;
LABEL_11:

LABEL_12:
      ++v10;

      if (v9 == v10)
      {
        goto LABEL_29;
      }
    }

    if (a1)
    {
      goto LABEL_12;
    }

    v27 = 0;
    if (!Strong)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_18B865750(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 616);
  *(v1 + 616) = a1;
  return sub_18B8658C4(v3);
}

uint64_t sub_18B865798(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 552) = a1;
  *(v2 + 560) = a2;
  return result;
}

uint64_t sub_18B8657E0()
{
  SFFluidCollectionView.LayoutInvalidationContext.init()(&v5);
  v1 = v5;
  v2 = 1;
  v3 = v6;
  v4 = v7;
  sub_18B82F6F4(&v1);
}

uint64_t sub_18B8658C4(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 616) != a1)
  {
    return sub_18B8657E0();
  }

  return result;
}

double sub_18B865910(void *a1)
{
  if (qword_1EA9D2350 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA9F7FB8;
  [qword_1EA9F7FB8 scaledValueForValue:a1 compatibleWithTraitCollection:30.0];
  v5 = fmax(v4, 30.0);
  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_18BC21438();

  if (v7)
  {
    v8 = 2.0;
  }

  else
  {
    v8 = 1.0;
  }

  *(v1 + 184) = v5 * v8;
  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_18BC21438();

  v11 = 16.0;
  if (v10)
  {
    v11 = 18.0;
  }

  [v3 scaledValueForValue:a1 compatibleWithTraitCollection:v11];
  if (v12 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [a1 preferredContentSizeCategory];
  v15 = sub_18BC21438();

  if (v15)
  {
    v16 = 2.0;
  }

  else
  {
    v16 = 1.0;
  }

  result = v13 * v16;
  *(v1 + 208) = result;
  return result;
}

void sub_18B865A74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = _s4PageVMa_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_18B8629FC(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_18BB2C110();
      goto LABEL_7;
    }

    sub_18B865C24(v18, a4 & 1);
    v24 = sub_18B8629FC(a3);
    if ((v19 & 1) == (v25 & 1))
    {
      v15 = v24;
      v21 = *v5;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B7EC67C(a3, v12, _s4PageVMa_0);
      sub_18BB32B04(v15, v12, a1, a2, v21);
      return;
    }

LABEL_15:
    sub_18BC22078();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v5;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 16 * v15;
  v23 = *v22;
  *v22 = a1;
  *(v22 + 8) = a2;
}

void sub_18B865C60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s7SectionVMa_1();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v60 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = _s4ItemVMa_2();
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v49 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v54 = v49 - v16;
  v50 = a1;
  v17 = *(a1 + OBJC_IVAR___SFTabOverview_closingItemsContainerView);
  v18 = [v17 superview];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v20 = Strong;
  if (v18)
  {
    sub_18B7B0AC0(0, &qword_1EA9D46F0);
    v21 = sub_18BC215C8();

    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v22 = swift_unknownObjectUnownedLoadStrong();
  [v22 insertSubview:v17 atIndex:0];

LABEL_6:
  [v17 setHidden_];
  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = *&v23[qword_1EA9D6BE0];
  sub_18BC1E1A8();

  *(v50 + OBJC_IVAR___SFTabOverview_tabIconPool) = v24;

  v25 = swift_unknownObjectUnownedLoadStrong();
  v26 = *&v25[qword_1EA9D6BE8];
  sub_18BC1E1A8();

  sub_18B866CCC(v26);
  v49[0] = v3;
  v27 = swift_unknownObjectUnownedLoadStrong();
  v28 = &v27[qword_1EA9D6C60];
  swift_beginAccess();
  v29 = *(v28 + 2);
  sub_18BC1E3F8();

  v30 = 0;
  v32 = v29 + 64;
  v31 = *(v29 + 64);
  v58 = v29;
  v33 = 1 << *(v29 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  v49[1] = OBJC_IVAR___SFTabOverview_itemsWithHiddenTitle;
  v49[2] = OBJC_IVAR___SFTabOverview_itemsWithHiddenThumbnail;
  v52 = v29 + 64;
  v53 = a2 + 96;
  v36 = (v33 + 63) >> 6;
  v51 = v36;
  while (v35)
  {
LABEL_15:
    v38 = *(v8 + 72);
    v39 = v54;
    sub_18B82D0A4(*(v58 + 48) + v38 * (__clz(__rbit64(v35)) | (v30 << 6)), v54, _s4ItemVMa_2);
    sub_18B82FD54(v39, v13, _s4ItemVMa_2);
    v40 = *(v53 + *(_s4PageVMa_0() + 20));
    v59 = *(v40 + 16);
    if (v59)
    {
      v41 = 0;
      v55 = v40;
      while (v41 < *(v40 + 16))
      {
        v42 = v60;
        sub_18B82D0A4(v40 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v41++, v60, _s7SectionVMa_1);
        v43 = *(v42 + *(v57 + 28));
        v44 = *(v43 + 16) + 1;
        while (--v44)
        {
          v45 = v43 + v38;
          sub_18B82D0A4(v43 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v10, _s4ItemVMa_2);
          updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B82D1D4(v10, _s4ItemVMa_2);
          v43 = v45;
          if (updated)
          {
            sub_18B82D1D4(v60, _s7SectionVMa_1);
            swift_beginAccess();
            sub_18BBE8574(v13);
            swift_endAccess();
            swift_beginAccess();
            sub_18BBE8574(v13);
            swift_endAccess();
            goto LABEL_9;
          }
        }

        sub_18B82D1D4(v60, _s7SectionVMa_1);
        v40 = v55;
        if (v41 == v59)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

LABEL_9:
    v35 &= v35 - 1;
    sub_18B82D1D4(v13, _s4ItemVMa_2);
    v36 = v51;
    v32 = v52;
  }

  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v37 >= v36)
    {

      v47 = swift_unknownObjectUnownedLoadStrong();
      v48 = *&v47[qword_1EA9D6BA8 + 64];
      sub_18BC1E1A8();

      v48();

      return;
    }

    v35 = *(v32 + 8 * v37);
    ++v30;
    if (v35)
    {
      v30 = v37;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_18B86623C(uint64_t a1)
{
  v2 = v1;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v103);
  v98 = &v96 - v4;
  v111 = sub_18BC1EC08();
  v97 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = _s4ItemVMa_2();
  v7 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___SFTabOverview_tabSnapshotRegistrations;
  swift_beginAccess();
  v108 = v9;
  v10 = *(v2 + v9);
  v11 = v2;
  v12 = 1 << *(v10 + 32);
  v13 = v6;
  v14 = -1;
  if (v12 < 64)
  {
    v14 = ~(-1 << v12);
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v12 + 63) >> 6;
  sub_18BC1E3F8();
  v17 = 0;
  v107 = v13;
  while (v15)
  {
    v18 = v15;
LABEL_11:
    v15 = (v18 - 1) & v18;
    if (a1)
    {
      v21 = sub_18BC1E1A8();
      sub_18BA7832C(v21);
      v13 = v107;
    }
  }

  v19 = v105;
  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      result = sub_18BC22078();
      __break(1u);
      return result;
    }

    if (v20 >= v16)
    {
      break;
    }

    v18 = *(v10 + 64 + 8 * v20);
    ++v17;
    if (v18)
    {
      v17 = v20;
      goto LABEL_11;
    }
  }

  v22 = sub_18B84A540(MEMORY[0x1E69E7CC0]);
  *(v2 + v108) = v22;

  v23 = *(v2 + OBJC_IVAR___SFTabOverview_content + 144);
  v114[8] = *(v2 + OBJC_IVAR___SFTabOverview_content + 128);
  v114[9] = v23;
  v24 = *(v2 + OBJC_IVAR___SFTabOverview_content + 176);
  v114[10] = *(v2 + OBJC_IVAR___SFTabOverview_content + 160);
  v114[11] = v24;
  v25 = *(v2 + OBJC_IVAR___SFTabOverview_content + 80);
  v114[4] = *(v2 + OBJC_IVAR___SFTabOverview_content + 64);
  v114[5] = v25;
  v26 = *(v2 + OBJC_IVAR___SFTabOverview_content + 112);
  v114[6] = *(v2 + OBJC_IVAR___SFTabOverview_content + 96);
  v114[7] = v26;
  v27 = *(v2 + OBJC_IVAR___SFTabOverview_content + 16);
  v114[0] = *(v2 + OBJC_IVAR___SFTabOverview_content);
  v114[1] = v27;
  v28 = *(v2 + OBJC_IVAR___SFTabOverview_content + 48);
  v114[2] = *(v2 + OBJC_IVAR___SFTabOverview_content + 32);
  v114[3] = v28;
  sub_18B82B150(v114, v113);
  v29 = sub_18B866D50();
  sub_18B82B2F0(v114);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v96 = v29;
    v32 = v29 + v31;
    v33 = v98;
    v106 = (v97 + 16);
    v101 = (v97 + 8);
    v102 = OBJC_IVAR___SFTabOverview_tabSnapshotPool;
    v100 = *(v7 + 72);
    do
    {
      v109 = v32;
      sub_18B8554D0(v32, v19, _s4ItemVMa_2);
      v34 = *(v104 + 20);
      v35 = v19;
      v36 = *v106;
      (*v106)(v13, v35 + v34, v111);
      v37 = *(v11 + v102);
      v38 = v11;
      v110 = v34;
      if (v37)
      {
        sub_18BC1E1A8();
        v39 = sub_18B856BBC(v35 + v34);

        v40 = v108;
        swift_beginAccess();
        if (v39)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = v13;
          v43 = isUniquelyReferenced_nonNull_native;
          v112[0] = *(v38 + v40);
          v44 = v112[0];
          *(v38 + v40) = 0x8000000000000000;
          v45 = sub_18B857EE4(v42);
          v47 = *(v44 + 16);
          v48 = (v46 & 1) == 0;
          v49 = __OFADD__(v47, v48);
          v50 = v47 + v48;
          if (v49)
          {
            goto LABEL_64;
          }

          v51 = v46;
          v11 = v38;
          if (*(v44 + 24) >= v50)
          {
            v53 = v110;
            if (v43)
            {
              v13 = v107;
              goto LABEL_32;
            }

            v63 = v45;
            sub_18BB2A324();
            v45 = v63;
            v13 = v107;
            v62 = v112[0];
            if ((v51 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_33:
            *(v62[7] + 8 * v45) = v39;
          }

          else
          {
            sub_18B8587D4(v50, v43);
            v13 = v107;
            v45 = sub_18B857EE4(v107);
            v53 = v110;
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_66;
            }

LABEL_32:
            v62 = v112[0];
            if (v51)
            {
              goto LABEL_33;
            }

LABEL_35:
            v62[(v45 >> 6) + 8] |= 1 << v45;
            v64 = v13;
            v65 = v45;
            v36(v62[6] + *(v97 + 72) * v45, v64, v111);
            *(v62[7] + 8 * v65) = v39;
            v66 = v62[2];
            v49 = __OFADD__(v66, 1);
            v67 = v66 + 1;
            if (v49)
            {
              goto LABEL_65;
            }

            v62[2] = v67;
            v13 = v107;
          }

          (*v101)(v13, v111);
          *(v11 + v108) = v62;
          v33 = v98;
          v19 = v105;
          goto LABEL_38;
        }
      }

      else
      {
        v40 = v108;
        swift_beginAccess();
      }

      v54 = sub_18B857EE4(v13);
      if (v55)
      {
        v56 = v54;
        v99 = v30;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v58 = *(v38 + v40);
        v112[0] = v58;
        *(v38 + v40) = 0x8000000000000000;
        if ((v57 & 1) == 0)
        {
          sub_18BB2A324();
          v58 = v112[0];
        }

        v59 = *(v97 + 8);
        v60 = v111;
        v59(*(v58 + 48) + *(v97 + 72) * v56, v111);

        sub_18BB5B728(v56, v58);
        v61 = v107;
        v59(v107, v60);
        v13 = v61;
        *(v38 + v40) = v58;
        v19 = v105;
        v11 = v38;
        v30 = v99;
        v53 = v110;
      }

      else
      {
        (*v101)(v13, v111);
        v19 = v105;
        v11 = v38;
        v53 = v110;
      }

LABEL_38:
      swift_endAccess();
      v68 = sub_18B82FEA0();
      sub_18B8554D0(v19, v33, _s4ItemVMa_2);
      swift_storeEnumTagMultiPayload();
      v69 = *((*MEMORY[0x1E69E7D40] & *v68) + 0x150);
      swift_beginAccess();
      v70 = *(v68 + v69);
      if (*(v70 + 16))
      {
        sub_18BC1E3F8();
        v71 = sub_18B83B1C8(v33);
        if (v72)
        {
          v73 = *(*(v70 + 56) + 8 * v71);
          sub_18BC1E1A8();

          sub_18B988BAC(v33, &unk_1EA9D92F0);

          v74 = *(v73 + 24);
          v75 = v74;
          v13 = v107;

          if (v74)
          {
            type metadata accessor for TabOverview.ItemView();
            if (swift_dynamicCastClass())
            {
              type metadata accessor for TabOverviewItemView();
              v76 = swift_dynamicCastClassUnconditional();
              v77 = *(v11 + v108);
              v78 = *(v77 + 16);
              v79 = *(v76 + OBJC_IVAR___SFTabOverviewItemView_thumbnailView);
              if (v78)
              {
                sub_18BC1E3F8();
                v80 = sub_18B857EE4(v19 + v53);
                if (v81)
                {
                  v82 = *(*(v77 + 56) + 8 * v80);
                  sub_18BC1E1A8();
                }

                else
                {
                  v82 = 0;
                }
              }

              else
              {
                v82 = 0;
              }

              v83 = OBJC_IVAR___SFTabThumbnailView_snapshotRegistration;
              v84 = *&v79[OBJC_IVAR___SFTabThumbnailView_snapshotRegistration];
              if (v84)
              {
                swift_beginAccess();
                *(v84 + 80) = CGRectMake;
                *(v84 + 88) = 0;
              }

              *&v79[v83] = v82;
              sub_18BC1E1A8();

              v85 = *&v79[v83];
              if (v85 && (v86 = swift_allocObject(), swift_unknownObjectWeakInit(), swift_beginAccess(), *(v85 + 80) = sub_18B9D4DC8, *(v85 + 88) = v86, , (v87 = *&v79[v83]) != 0))
              {
                swift_beginAccess();
                v88 = v87[1];
                v89 = v87[2];
                v90 = v87[4];
                v113[2] = v87[3];
                v113[3] = v90;
                v113[0] = v88;
                v113[1] = v89;
                v91 = *&v79[OBJC_IVAR___SFTabThumbnailView_snapshotImageView];
                v92 = *(&v88 + 1);
                v110 = v82;
                v99 = v91;
                if (*(&v88 + 1))
                {
                  sub_18BC1E1A8();
                }

                else
                {
                  sub_18BC1E1A8();
                  v93 = [v79 window];
                  if (v93)
                  {

                    v94 = sub_18BC20B98();
                    v92 = [objc_opt_self() systemImageNamed_];
                  }

                  else
                  {
                    v92 = 0;
                  }
                }

                sub_18B7CA054(v113, v112, &qword_1EA9D92C0);
                sub_18B7CA054(v113, v112, &qword_1EA9D92C0);
                [v99 setImage_];

                [v79 setNeedsLayout];

                sub_18B988BAC(v113, &qword_1EA9D92C0);
              }

              else
              {
                [*&v79[OBJC_IVAR___SFTabThumbnailView_snapshotImageView] setImage_];
              }

              v33 = v98;
              v13 = v107;
            }

            else
            {
            }
          }

          goto LABEL_17;
        }
      }

      else
      {
      }

      sub_18B988BAC(v33, &unk_1EA9D92F0);
LABEL_17:
      sub_18B815380(v19, _s4ItemVMa_2);
      v32 = v109 + v100;
      --v30;
    }

    while (v30);
  }
}

uint64_t sub_18B866CCC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___SFTabOverview_tabSnapshotPool);
  *(v1 + OBJC_IVAR___SFTabOverview_tabSnapshotPool) = a1;
  if (a1)
  {
    if (v2 == a1)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_18BC1E1A8();
    sub_18B86623C(v2);

    goto LABEL_6;
  }

  sub_18BC1E1A8();
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t sub_18B866D50()
{
  v1 = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 96);
  v7 = *(v6 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = *(v2 + 28);
  v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v10 = *(v3 + 72);
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_18B815248(v9, v5, _s7SectionVMa_1);
    v13 = *&v5[v8];
    sub_18BC1E3F8();
    result = sub_18B82A40C(v5, _s7SectionVMa_1);
    v14 = *(v13 + 16);
    v15 = v11[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v11[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v11 = sub_18B82A46C(isUniquelyReferenced_nonNull_native, v18, 1, v11);
      if (*(v13 + 16))
      {
LABEL_14:
        v19 = (v11[3] >> 1) - v11[2];
        result = _s4ItemVMa_2();
        if (v19 < v14)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v20 = v11[2];
          v21 = __OFADD__(v20, v14);
          v22 = v20 + v14;
          if (v21)
          {
            goto LABEL_23;
          }

          v11[2] = v22;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_21;
    }

LABEL_4:
    v9 += v10;
    if (!--v7)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_18B866F88(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDA98];
  if (*MEMORY[0x1E69DDA98])
  {
    v4[4] = sub_18B9EAA74;
    v4[5] = a1;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_18B7B0DB0;
    v4[3] = &block_descriptor_356;
    v2 = _Block_copy(v4);
    v3 = v1;
    sub_18BC1E1A8();

    [v3 _performBlockAfterCATransactionCommits_];
    _Block_release(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18B86709C()
{
  v1 = *(_s4PageVMa_0() - 8);
  v2 = (*(v1 + 80) + 152) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[18];
  v7 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = v7[8];
  v9 = *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v7;

  return sub_18B863374(v4, v5, (v0 + 4), v6, v0 + v2, v10, v8, v9);
}

void sub_18B867150(double *a1)
{
  v2 = v1;
  sub_18B7F40F4(v1);
  v4 = *&v1[OBJC_IVAR___SFTabOverview_backgroundView];
  [v4 setAlpha_];
  [v4 setHidden_];
  sub_18B8676DC(v45);
  v5 = &v1[OBJC_IVAR___SFTabOverview_browserContentInsets];
  v6 = v45[1];
  *v5 = v45[0];
  *(v5 + 1) = v6;
  v5[32] = v46;
  v7 = sub_18B867798();
  sub_18B867838(v7, v9, v8 & 1);
  v10 = *&v1[OBJC_IVAR___SFTabOverview_closingItemsContainerView];
  sub_18B8678D8();
  [v10 setFrame_];
  v12 = [v10 layer];
  [v12 setZPosition_];

  v13 = sub_18B8481C8();
  v14 = *&v2[OBJC_IVAR___SFTabOverview_contentBlurRadius];
  *&v2[OBJC_IVAR___SFTabOverview_contentBlurRadius] = v13;
  if (v13 != v14)
  {
    if ([objc_opt_self() _isInRetargetableAnimationBlock])
    {
      v15 = 0x8000000000000008;
    }

    else
    {
      v15 = 0x8000000000000000;
    }

    v16 = swift_allocObject();
    v16[2] = v2;
    v17 = v2;
    sub_18B7EAA64(sub_18B9D5418, v16, CGRectMake, 0, v15);

    sub_18B7EBAE8(v15);
  }

  v18 = sub_18B867A60();
  v19 = *&v2[OBJC_IVAR___SFTabOverview_contentOpacity];
  *&v2[OBJC_IVAR___SFTabOverview_contentOpacity] = v18;
  if (v18 != v19)
  {
    sub_18B867A84();
  }

  v20 = sub_18B8483B8();
  v21 = *&v2[OBJC_IVAR___SFTabOverview_contentScale];
  *&v2[OBJC_IVAR___SFTabOverview_contentScale] = v20;
  if (v20 != v21)
  {
    CGAffineTransformMakeScale(&v44, v20, v20);
    a = v44.a;
    b = v44.b;
    c = v44.c;
    d = v44.d;
    tx = v44.tx;
    ty = v44.ty;
    [v4 setTransform_];
    v28 = *&v2[OBJC_IVAR___SFTabOverview_contentBelowSearchBarView];
    v44.a = a;
    v44.b = b;
    v44.c = c;
    v44.d = d;
    v44.tx = tx;
    v44.ty = ty;
    [v28 setTransform_];
    v29 = *&v2[OBJC_IVAR___SFTabOverview_overlayContainerView];
    v44.a = a;
    v44.b = b;
    v44.c = c;
    v44.d = d;
    v44.tx = tx;
    v44.ty = ty;
    [v29 setTransform_];
    v30 = *&v2[OBJC_IVAR___SFTabOverview_searchBarContainerView];
    v44.a = a;
    v44.b = b;
    v44.c = c;
    v44.d = d;
    v44.tx = tx;
    v44.ty = ty;
    [v30 setTransform_];
  }

  v31 = *&v2[OBJC_IVAR___SFTabOverview_gridLayout];
  *(v31 + 576) = sub_18B8678D8();
  *(v31 + 584) = v32;
  *(v31 + 592) = v33;
  *(v31 + 600) = v34;
  v35 = (*(*v31 + 848))();
  v36 = *(v31 + 592);
  *(v35 + 120) = *(v31 + 576);
  *(v35 + 136) = v36;

  v2[OBJC_IVAR___SFTabOverview_isHighlighted] = sub_18B80FFCC() & 1;
  sub_18B867B40();
  v2[OBJC_IVAR___SFTabOverview_isHovered] = sub_18B867B24() & 1;
  sub_18B867C90();
  v37 = sub_18B867DD4();
  v38 = &v2[OBJC_IVAR___SFTabOverview_peekingInfo];
  v39 = *&v2[OBJC_IVAR___SFTabOverview_peekingInfo];
  *v38 = v37;
  v38[1] = v40;
  v38[2] = v41;
  sub_18B867F24(v39);
  v42 = sub_18B867E88();
  v43 = *&v2[OBJC_IVAR___SFTabOverview_preferredThumbnailAspectRatio];
  *&v2[OBJC_IVAR___SFTabOverview_preferredThumbnailAspectRatio] = v42;
  if (v42 != v43)
  {
    sub_18B8487D0(MEMORY[0x1E69E7CD0], 1);
  }
}

void sub_18B86756C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);
  v3 = (*(v2 + 8))(v1, v2);
  [v3 setValue_];
}

double sub_18B867640()
{
  v1 = *(v0 + 104);
  v2 = 0.0;
  if (*(v1 + 16))
  {
    v3 = sub_18B7C4104(0xD000000000000011, 0x800000018BC65280);
    if (v4)
    {
      sub_18B7F44EC(*(v1 + 56) + 40 * v3, v7);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  return v2;
}

void sub_18B8676DC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 104);
  v4 = 0uLL;
  if (*(v3 + 16))
  {
    v5 = sub_18B7C4104(0xD000000000000014, 0x800000018BC62220);
    if ((v6 & 1) != 0 && (sub_18B7F44EC(*(v3 + 56) + 40 * v5, v11), swift_dynamicCast()))
    {
      v7 = 0;
      v4 = v9;
      v8 = v10;
    }

    else
    {
      v7 = 1;
      v8 = 0uLL;
      v4 = 0uLL;
    }
  }

  else
  {
    v7 = 1;
    v8 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v8;
  *(a1 + 32) = v7;
}

uint64_t sub_18B867798()
{
  v1 = *(v0 + 104);
  if (*(v1 + 16) && (v2 = sub_18B7C4104(0xD000000000000014, 0x800000018BC62240), (v3 & 1) != 0) && (sub_18B7F44EC(*(v1 + 56) + 40 * v2, v6), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B867838(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR___SFTabOverview_browserReferenceSize;
  v5 = *(v3 + OBJC_IVAR___SFTabOverview_browserReferenceSize);
  v6 = *(v3 + OBJC_IVAR___SFTabOverview_browserReferenceSize + 8);
  v7 = *(v3 + OBJC_IVAR___SFTabOverview_browserReferenceSize + 16);
  *v4 = *&result;
  *(v4 + 8) = *&a2;
  *(v4 + 16) = a3 & 1;
  if (a3)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((v7 & 1) != 0 || (v5 == *&result ? (v8 = v6 == *&a2) : (v8 = 0), !v8))
  {
LABEL_11:
    sub_18B8487D0(MEMORY[0x1E69E7CD0], 1);

    *&result = COERCE_DOUBLE();
  }

  return result;
}

double sub_18B8678D8()
{
  v1 = *(v0 + 104);
  if (*(v1 + 16) && (v2 = sub_18B7C4104(0xD000000000000012, 0x800000018BC652A0), (v3 & 1) != 0) && (sub_18B7F44EC(*(v1 + 56) + 40 * v2, v6), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return *MEMORY[0x1E69DDCE0];
  }
}

void sub_18B867984(uint64_t a1)
{
  v2 = sub_18B7DE654();
  v3 = OBJC_IVAR___SFTabOverview_contentBlurRadius;
  v4 = (a1 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration);
  [v2 setValue_];

  v5 = sub_18B7DE654();
  [v5 setValue_];

  v6 = sub_18B7DE654();
  [v6 setValue_];
}

id sub_18B867A84()
{
  v1 = OBJC_IVAR___SFTabOverview_contentOpacity;
  v2 = v0 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration;
  [*(v0 + OBJC_IVAR___SFTabOverview_contentBelowSearchBarView) setAlpha_];
  [*(v0 + OBJC_IVAR___SFTabOverview_overlayContainerView) setAlpha_];
  v3 = *(v0 + OBJC_IVAR___SFTabOverview_searchBarContainerView);
  v4 = *(v0 + v1) * *(v2 + 8);

  return [v3 setAlpha_];
}

double *sub_18B867B40()
{
  v1 = *(v0 + OBJC_IVAR___SFTabOverview_peekingOverlayView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___SFTabOverview_isHighlighted);
    v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_isHighlighted] = v2;
    if (v2 == 1)
    {
      v3 = objc_opt_self();
      v4 = v1;
      v5 = &selRef_systemFillColor;
    }

    else
    {
      v6 = v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_isHovered];
      v3 = objc_opt_self();
      v7 = v1;
      v5 = &selRef_tertiarySystemFillColor;
      if (v6)
      {
        v5 = &selRef_secondarySystemFillColor;
      }
    }

    v8 = [v3 *v5];
    [*&v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_backgroundView] setBackgroundColor_];
  }

  sub_18B83713C(v0 + OBJC_IVAR___SFTabOverview_content, *(v0 + OBJC_IVAR___SFTabOverview_searchState), *(v0 + OBJC_IVAR___SFTabOverview_searchState + 8), &v13);
  v9 = (v0 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration);
  v10 = *(v0 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 16);
  v15 = *(v0 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration);
  v16[0] = v10;
  *(v16 + 9) = *(v0 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 25);
  v11 = v14[0];
  *v9 = v13;
  v9[1] = v11;
  *(v9 + 25) = *(v14 + 9);
  return sub_18B836E74(&v15);
}

double *sub_18B867C90()
{
  v1 = *(v0 + OBJC_IVAR___SFTabOverview_peekingOverlayView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR___SFTabOverview_isHovered);
    v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_isHovered] = v2;
    v3 = v1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_isHighlighted];
    v4 = objc_opt_self();
    v5 = v1;
    v6 = &selRef_systemFillColor;
    v7 = &selRef_secondarySystemFillColor;
    if (!v2)
    {
      v7 = &selRef_tertiarySystemFillColor;
    }

    if (!v3)
    {
      v6 = v7;
    }

    v8 = [v4 *v6];
    [*&v5[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_backgroundView] setBackgroundColor_];
  }

  sub_18B83713C(v0 + OBJC_IVAR___SFTabOverview_content, *(v0 + OBJC_IVAR___SFTabOverview_searchState), *(v0 + OBJC_IVAR___SFTabOverview_searchState + 8), &v13);
  v9 = (v0 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration);
  v10 = *(v0 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 16);
  v15 = *(v0 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration);
  v16[0] = v10;
  *(v16 + 9) = *(v0 + OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 25);
  v11 = v14[0];
  *v9 = v13;
  v9[1] = v11;
  *(v9 + 25) = *(v14 + 9);
  return sub_18B836E74(&v15);
}

uint64_t sub_18B867DD4()
{
  v1 = *(v0 + 104);
  if (!*(v1 + 16))
  {
    return 2;
  }

  v2 = sub_18B7C4104(0x49676E696B656570, 0xEB000000006F666ELL);
  if ((v3 & 1) == 0)
  {
    return 2;
  }

  sub_18B7F44EC(*(v1 + 56) + 40 * v2, v6);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

double sub_18B867E88()
{
  v1 = *(v0 + 104);
  v2 = 0.0;
  if (*(v1 + 16))
  {
    v3 = sub_18B7C4104(0xD00000000000001DLL, 0x800000018BC622A0);
    if (v4)
    {
      sub_18B7F44EC(*(v1 + 56) + 40 * v3, v7);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  return v2;
}

id sub_18B867F24(id result)
{
  v2 = &v1[OBJC_IVAR___SFTabOverview_peekingInfo];
  v3 = v1[OBJC_IVAR___SFTabOverview_peekingInfo];
  if (v3 != 2)
  {
    v4 = *&v1[OBJC_IVAR___SFTabOverview_peekingOverlayView];
    if (v4)
    {
      v6 = v2[1];
      v5 = v2[2];
      v7 = &v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_peekingInfo];
      v8 = v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_peekingInfo];
      v9 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_peekingInfo + 8];
      v10 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_peekingInfo + 16];
      *v7 = v3 & 1;
      v7[1] = v6;
      v7[2] = v5;
      if (((v8 ^ v3) & 1) != 0 || (v6 == v9 ? (v11 = v5 == v10) : (v11 = 0), !v11))
      {
        v4[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_needsLayOutWithCurrentMetrics] = 1;
        v12 = result;
        [v4 setNeedsLayout];
        result = v12;
      }
    }
  }

  v13 = *v2;
  if ((v13 == 2) != (result == 2))
  {
    [v1 setUserInteractionEnabled_];
    [v1 setNeedsLayout];
    v14 = objc_opt_self();
    result = [v14 areAnimationsEnabled];
    if (result)
    {
      type metadata accessor for AnimationSettings();
      inited = swift_initStaticObject();
      v16 = swift_allocObject();
      *(v16 + 16) = v1;
      v17 = swift_allocObject();
      v17[2] = inited;
      v17[3] = sub_18B9D500C;
      v17[4] = v16;
      v25 = sub_18B7E767C;
      v26 = v17;
      v21 = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_18B7B0DB0;
      v24 = &block_descriptor_559;
      v18 = _Block_copy(&v21);
      v19 = v1;
      sub_18BC1E1A8();

      v25 = CGRectMake;
      v26 = 0;
      v21 = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v23 = sub_18B8043A0;
      v24 = &block_descriptor_562;
      v20 = _Block_copy(&v21);

      [v14 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v20);
      _Block_release(v18);
    }
  }

  return result;
}

double sub_18B8681D8(uint64_t a1)
{
  v2 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  v6 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
  v7 = Strong;
  swift_beginAccess();
  sub_18B7DF568(v7 + v6, v4, _s6LayoutVMa);

  v8 = sub_18B868324(a1);
  sub_18B7DFF04(v4, _s6LayoutVMa);
  return v8;
}

double sub_18B868324(uint64_t a1)
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v45 - v17;
  v20 = MEMORY[0x1E69DDCE0];
  if (*(v1 + 118) == 1)
  {
    v45 = v6;
    v46 = v18;
    v21 = v4;
    v22 = *(v4 + 16);
    v48 = a1;
    v22(&v45 - v17, a1, v3);
    v49 = v21;
    v47 = *(v21 + 56);
    v47(v19, 0, 1, v3);
    v23 = _s6LayoutVMa();
    sub_18B7CA054(v1 + *(v23 + 60), v11, &qword_1EA9D52E0);
    v24 = _s4PageVMa();
    if ((*(*(v24 - 8) + 48))(v11, 1, v24) == 1)
    {
      sub_18B988BAC(v11, &qword_1EA9D52E0);
      v25 = 1;
    }

    else
    {
      v22(v16, &v11[*(v24 + 32)], v3);
      sub_18BA03428(v11);
      v25 = 0;
    }

    v47(v16, v25, 1, v3);
    v27 = *(v50 + 48);
    sub_18B7CA054(v19, v8, &unk_1EA9D3AE0);
    sub_18B7CA054(v16, &v8[v27], &unk_1EA9D3AE0);
    v28 = *(v49 + 48);
    if (v28(v8, 1, v3) == 1)
    {
      sub_18B988BAC(v16, &unk_1EA9D3AE0);
      sub_18B988BAC(v19, &unk_1EA9D3AE0);
      v29 = v28(&v8[v27], 1, v3);
      v20 = MEMORY[0x1E69DDCE0];
      if (v29 == 1)
      {
        sub_18B988BAC(v8, &unk_1EA9D3AE0);
        v26 = 1;
LABEL_13:
        a1 = v48;
        goto LABEL_14;
      }
    }

    else
    {
      v30 = v46;
      sub_18B7CA054(v8, v46, &unk_1EA9D3AE0);
      if (v28(&v8[v27], 1, v3) != 1)
      {
        v31 = v49;
        v32 = &v8[v27];
        v33 = v45;
        (*(v49 + 32))(v45, v32, v3);
        sub_18BAC283C();
        v26 = sub_18BC20AE8();
        v34 = *(v31 + 8);
        v34(v33, v3);
        sub_18B988BAC(v16, &unk_1EA9D3AE0);
        sub_18B988BAC(v19, &unk_1EA9D3AE0);
        v34(v30, v3);
        sub_18B988BAC(v8, &unk_1EA9D3AE0);
        v20 = MEMORY[0x1E69DDCE0];
        goto LABEL_13;
      }

      sub_18B988BAC(v16, &unk_1EA9D3AE0);
      sub_18B988BAC(v19, &unk_1EA9D3AE0);
      (*(v49 + 8))(v30, v3);
      v20 = MEMORY[0x1E69DDCE0];
    }

    sub_18B988BAC(v8, &unk_1EA9D92B0);
    v26 = 0;
    goto LABEL_13;
  }

  v26 = 0;
LABEL_14:
  v35 = *v20;
  v36 = _s4PageVMa_0();
  if (*(a1 + *(v36 + 32) + 24) && (*(v1 + 77) & 1) != 0)
  {
    if (*(a1 + *(v36 + 20)) == 1 && (*(v1 + 82) & 1) != 0)
    {
      goto LABEL_36;
    }

    if (*(v1 + 75) != 1 || (*(v1 + 208) & 1) != 0)
    {
      if ((v26 & 1) == 0)
      {
        v35 = *(v1 + 176) + *(v1 + 184);
      }

      goto LABEL_36;
    }
  }

  else if (*(a1 + *(v36 + 20)) == 1 && (*(v1 + 82) & 1) != 0 || *(v1 + 75) != 1 || (*(v1 + 208) & 1) != 0)
  {
    goto LABEL_36;
  }

  v37 = *(v1 + 168);
  v38 = objc_opt_self();
  v39 = [v38 isSolariumEnabled];
  v40 = 0.0;
  if (v39 && *(v1 + 112))
  {
    v40 = 24.0;
  }

  v41 = v40 - *(v1 + 216);
  if (v41 >= 0.0)
  {
    v35 = v37 + v41;
    if (!*(v1 + 81))
    {
      goto LABEL_36;
    }
  }

  else
  {
    v35 = v37 + 0.0;
    if ((*(v1 + 81) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v42 = [v38 isSolariumEnabled];
  v43 = 0.0;
  if (v42)
  {
    v43 = 16.0;
  }

  v35 = v35 + v43;
LABEL_36:
  if (*(v1 + 72) != 1 && *(v1 + 79) == 1)
  {
    _s6LayoutVMa();
  }

  return v35;
}

BOOL sub_18B868A60(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v42 = v2;
  v43 = v3;
  v5 = *(a1 + 56);
  v37 = *(a1 + 40);
  v38 = v5;
  v6 = *(a1 + 88);
  v39 = *(a1 + 72);
  v40 = v6;
  v7 = *(a2 + 56);
  v41[0] = *(a2 + 40);
  v41[1] = v7;
  v8 = *(a2 + 88);
  v41[2] = *(a2 + 72);
  v41[3] = v8;
  v9 = v37;
  v10 = v38;
  v11 = v39;
  v36 = *(a1 + 88);
  if (!*(&v37 + 1))
  {
    if (!*(&v41[0] + 1))
    {
      v22 = a1;
      v23 = a2;
      v28 = v37;
      v29 = v38;
      v30 = v39;
      v31 = *(a1 + 88);
      sub_18B86E4B4(&v37, &v24);
      sub_18B86E4B4(v41, &v24);
      v14 = &v28;
      goto LABEL_16;
    }

LABEL_13:
    v28 = v37;
    v29 = v38;
    v30 = v39;
    v31 = *(a1 + 88);
    v32 = v41[0];
    v15 = *(a2 + 72);
    v33 = *(a2 + 56);
    v34 = v15;
    v35 = *(a2 + 88);
    sub_18B86E4B4(&v37, &v24);
    sub_18B86E4B4(v41, &v24);
    sub_18B988BAC(&v28, &qword_1EA9DBF70);
    return 0;
  }

  if (!*(&v41[0] + 1))
  {
    goto LABEL_13;
  }

  v22 = a1;
  v23 = a2;
  v28 = v41[0];
  v12 = *(a2 + 72);
  v29 = *(a2 + 56);
  v30 = v12;
  v31 = *(a2 + 88);
  v13 = v12;
  if (v41[0] != v37 && (sub_18BC21FD8() & 1) == 0 || v38 != v29 && (sub_18BC21FD8() & 1) == 0)
  {
    sub_18B86E4B4(&v37, &v24);
    sub_18B86E4B4(v41, &v24);
    sub_18B988BAC(&v28, &unk_1EA9D50A0);
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v27 = v36;
    sub_18B988BAC(&v24, &unk_1EA9D50A0);
    return 0;
  }

  if (v39 == v13)
  {
    sub_18B86E4B4(&v37, &v24);
    sub_18B86E4B4(v41, &v24);
    sub_18B988BAC(&v28, &unk_1EA9D50A0);
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v27 = v36;
    v14 = &v24;
LABEL_16:
    sub_18B988BAC(v14, &unk_1EA9D50A0);
    goto LABEL_17;
  }

  v18 = sub_18BC21FD8();
  sub_18B86E4B4(&v37, &v24);
  sub_18B86E4B4(v41, &v24);
  sub_18B988BAC(&v28, &unk_1EA9D50A0);
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v36;
  sub_18B988BAC(&v24, &unk_1EA9D50A0);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (*(v22 + 104) == *(v23 + 104))
  {
    v16 = *(v22 + 112);
    v17 = *(v23 + 112);
    if (v16)
    {
      if (!v17 || v16 != v17)
      {
        return 0;
      }
    }

    else if (v17)
    {
      return 0;
    }

    if (*(v22 + 128) == *(v23 + 128) && *(v22 + 129) == *(v23 + 129) && *(v22 + 130) == *(v23 + 130) && *(v22 + 131) == *(v23 + 131))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (v20)
        {
          v21 = v20;

          return Strong == v21;
        }

        v20 = Strong;
      }

      else if (!v20)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_18B868E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D50B8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = _s4ItemVMa_2();
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v46 - v26;
  if (sub_18B869590())
  {
    v28 = sub_18B9C956C();
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    *a2 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    if (v28)
    {
      v29 = 0;
      v56 = 0uLL;
      *&v57 = 0;
    }

    else
    {
      LOBYTE(v56) = 0;
      v29 = MEMORY[0x1E69E6370];
    }

    *(&v57 + 1) = v29;
    return sub_18B8550A8(&v56, 0xD000000000000014, 0x800000018BC62740);
  }

  v49 = a1;
  v50 = a2;
  v30 = sub_18B8699DC(MEMORY[0x1E69E7CD0]);
  v31 = *(v30 + 16);
  if (!v31)
  {

LABEL_15:
    v40 = sub_18B8699DC(v49);
    if (*(v40 + 16))
    {
      v41 = v51;
      sub_18B8554D0(v40 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v51, _s4ItemVMa_2);

      v42 = v52;
      sub_18B829704(v41, v52, _s4ItemVMa_2);
      sub_18B9C90A0(v42, v50);
      return sub_18B815380(v42, _s4ItemVMa_2);
    }

    v44 = v50;
    v50[7] = 0;
    *(v44 + 5) = 0u;
    *(v44 + 3) = 0u;
    *(v44 + 1) = 0u;
    *v44 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    v56 = 0u;
    v57 = 0u;
    return sub_18B8550A8(&v56, 0xD000000000000014, 0x800000018BC62740);
  }

  v47 = v8;
  v32 = v55;
  sub_18B8554D0(v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v55 + 72) * (v31 - 1), v24, _s4ItemVMa_2);

  sub_18B829704(v24, v27, _s4ItemVMa_2);
  v48 = v27;
  sub_18B8554D0(v27, v14, _s4ItemVMa_2);
  (*(v32 + 56))(v14, 0, 1, v15);
  swift_beginAccess();
  sub_18B9C7978(*(v2 + 32), v11);
  v33 = v54;
  v34 = *(v53 + 48);
  sub_18B7CA054(v14, v54, &unk_1EA9D4F30);
  v35 = v33;
  sub_18B7CA054(v11, v33 + v34, &unk_1EA9D4F30);
  v36 = *(v32 + 48);
  if (v36(v35, 1, v15) != 1)
  {
    v39 = v47;
    sub_18B7CA054(v35, v47, &unk_1EA9D4F30);
    if (v36(v35 + v34, 1, v15) != 1)
    {
      sub_18B829704(v35 + v34, v21, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B815380(v21, _s4ItemVMa_2);
      sub_18B988BAC(v11, &unk_1EA9D4F30);
      sub_18B988BAC(v14, &unk_1EA9D4F30);
      sub_18B815380(v39, _s4ItemVMa_2);
      sub_18B988BAC(v35, &unk_1EA9D4F30);
      v38 = v48;
      if (updated)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    sub_18B988BAC(v11, &unk_1EA9D4F30);
    sub_18B988BAC(v14, &unk_1EA9D4F30);
    sub_18B815380(v39, _s4ItemVMa_2);
    v38 = v48;
LABEL_13:
    sub_18B988BAC(v35, &qword_1EA9D50B8);
LABEL_14:
    sub_18B815380(v38, _s4ItemVMa_2);
    goto LABEL_15;
  }

  sub_18B988BAC(v11, &unk_1EA9D4F30);
  sub_18B988BAC(v14, &unk_1EA9D4F30);
  v37 = v36(v35 + v34, 1, v15);
  v38 = v48;
  if (v37 != 1)
  {
    goto LABEL_13;
  }

  sub_18B988BAC(v35, &unk_1EA9D4F30);
LABEL_20:
  if (qword_1EA9D22C8 != -1)
  {
    swift_once();
  }

  sub_18B9D50A0(&qword_1EA9F7F10, v50);
  return sub_18B815380(v38, _s4ItemVMa_2);
}

void *sub_18B869590()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  result = (*(*v0 + 456))(v9);
  if (result)
  {
    v40 = result;
    v37 = v7;
    v38 = v2;
    v39 = v4;
    swift_beginAccess();
    v13 = v0[5];
    swift_storeEnumTagMultiPayload();
    v14 = *(v13 + 16);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    if (v14 && (v15 = sub_18B83B1C8(v11), (v16 & 1) != 0))
    {
      v17 = *(*(v13 + 56) + 8 * v15);
      sub_18BC1E3F8();
    }

    else
    {
      v17 = MEMORY[0x1E69E7CD0];
    }

    sub_18B988BAC(v11, &unk_1EA9D92F0);
    v44 = 0uLL;
    *v45 = 0;
    v36 = xmmword_18BC42B60;
    *&v45[8] = xmmword_18BC42B60;
    v18 = sub_18B85CEA8(&v44, v17);

    sub_18B833D9C(&v44);
    if (v18)
    {
      swift_beginAccess();
      v19 = v1[7];
      v44 = v1[6];
      *v45 = v19;
      *&v45[16] = v1[8];
      *&v45[25] = *(v1 + 137);
      memset(v42, 0, sizeof(v42));
      v43 = v36;
      v20 = v37;
      swift_storeEnumTagMultiPayload();
      sub_18B7CA054(&v44, v41, &unk_1EA9D50C0);
      v21 = v39;
      sub_18B86F5DC(v42, v20, v39);
      sub_18B988BAC(&v44, &unk_1EA9D50C0);
      sub_18B988BAC(v20, &unk_1EA9D92F0);
      sub_18B833D9C(v42);
      v22 = v40;
      [v22 bounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [v22 adjustedContentInset];
      v32 = v31;
      v34 = v33;

      v46.origin.x = UIEdgeInsetsInsetRect(v24, v26, v28, v30, v32, v34);
      v35 = CGRectContainsRect(v46, *(v21 + *(v38 + 96)));

      sub_18B988BAC(v21, &unk_1EA9D4F40);
      return v35;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_18B8699DC(uint64_t a1)
{
  v131 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v2);
  v116 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v108 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v108 - v8;
  v130 = _s4ItemVMa_2();
  v10 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v109 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v108 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v132 = &v108 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v108 - v18;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v122 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v108 - v21;
  swift_beginAccess();
  v22 = v1[7];
  v136[0] = v1[6];
  v136[1] = v22;
  *v137 = v1[8];
  *&v137[9] = *(v1 + 137);
  v23 = (*v1 + 456);
  v24 = *v23;
  v25 = sub_18B7CA054(v136, v134, &unk_1EA9D50C0);
  v115 = v23;
  v114 = v24;
  v26 = v24(v25);
  v124 = v1;
  v127 = v2;
  v123 = v6;
  if (v26)
  {
    v27 = v26;
    [v26 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [v27 adjustedContentInset];
    v37 = v36;
    v39 = v38;

    v40 = UIEdgeInsetsInsetRect(v29, v31, v33, v35, v37, v39);
  }

  else
  {
    v40 = 0.0;
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
  }

  v44 = sub_18B86A664(v40, v41, v42, v43);
  sub_18B988BAC(v136, &unk_1EA9D50C0);
  v45 = v44 + 56;
  v46 = 1 << *(v44 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v44 + 56);
  v49 = (v46 + 63) >> 6;
  v129 = v131 + 56;
  v121 = (v10 + 56);
  v110 = v10;
  v50 = (v10 + 48);
  v126 = v44;
  sub_18BC1E3F8();
  v51 = 0;
  v111 = MEMORY[0x1E69E7CC0];
  v52 = &unk_1EA9D4F30;
  v118 = v9;
  v117 = v50;
  v120 = v49;
  v119 = v44 + 56;
LABEL_8:
  v53 = v51;
  v54 = v130;
  if (!v48)
  {
    goto LABEL_10;
  }

  do
  {
    v55 = v52;
    v56 = v14;
    v57 = v9;
    v51 = v53;
LABEL_14:
    v58 = *(v126 + 48);
    v125 = *(v122 + 72);
    v59 = v128;
    sub_18B7CA054(v58 + v125 * (__clz(__rbit64(v48)) | (v51 << 6)), v128, &unk_1EA9D4F40);
    v60 = v123;
    sub_18B7CA054(v59, v123, &unk_1EA9D92F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = sub_18B829704(v60, v132, _s4ItemVMa_2);
      v14 = v56;
      if (*(v131 + 16) && (v62 = v131, sub_18BC22158(), sub_18BC1EC08(), sub_18B812E34(&qword_1EA9D3970, 255, MEMORY[0x1E69695A8]), sub_18BC20A78(), v61 = sub_18BC221A8(), v63 = -1 << *(v62 + 32), v64 = v61 & ~v63, ((*(v129 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0))
      {
        v65 = ~v63;
        v66 = *(v110 + 72);
        while (1)
        {
          sub_18B8554D0(*(v131 + 48) + v66 * v64, v56, _s4ItemVMa_2);
          updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          v61 = sub_18B815380(v56, _s4ItemVMa_2);
          if (updated)
          {
            break;
          }

          v64 = (v64 + 1) & v65;
          if (((*(v129 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
LABEL_20:
        v68 = v114(v61);
        v69 = v116;
        if (v68)
        {
          v70 = v68;
          [v68 bounds];
          v72 = v71;
          v74 = v73;
          v76 = v75;
          v78 = v77;
          [v70 adjustedContentInset];
          v80 = v79;
          v82 = v81;

          v83 = UIEdgeInsetsInsetRect(v72, v74, v76, v78, v80, v82);
          v85 = v84;
          v87 = v86;
          v89 = v88;
        }

        else
        {
          v83 = 0.0;
          v85 = 0.0;
          v87 = 0.0;
          v89 = 0.0;
        }

        v90 = v124[7];
        v134[0] = v124[6];
        v134[1] = v90;
        *v135 = v124[8];
        *&v135[9] = *(v124 + 137);
        v91 = *&v134[0];
        sub_18B8554D0(v132, v69, _s4ItemVMa_2);
        swift_storeEnumTagMultiPayload();
        if (!*(v91 + 16))
        {
          goto LABEL_40;
        }

        sub_18B7CA054(v134, v133, &unk_1EA9D50C0);
        v92 = sub_18B83B1C8(v69);
        if ((v93 & 1) == 0)
        {
          goto LABEL_41;
        }

        v94 = *(v91 + 56) + v92 * v125;
        v95 = v112;
        sub_18B7CA054(v94, v112, &unk_1EA9D4F40);
        sub_18B988BAC(v69, &unk_1EA9D92F0);
        sub_18B988BAC(v134, &unk_1EA9D50C0);
        v96 = (v95 + *(v113 + 96));
        v97 = *v96;
        v98 = v96[1];
        v99 = v96[2];
        v100 = v96[3];
        sub_18B988BAC(v95, &unk_1EA9D4F40);
        v138.origin.x = v83;
        v138.origin.y = v85;
        v138.size.width = v87;
        v138.size.height = v89;
        v139.origin.x = v97;
        v139.origin.y = v98;
        v139.size.width = v99;
        v139.size.height = v100;
        if (CGRectContainsRect(v138, v139))
        {
          v9 = v118;
          sub_18B829704(v132, v118, _s4ItemVMa_2);
          v54 = v130;
          (*v121)(v9, 0, 1, v130);
          v50 = v117;
          v52 = &unk_1EA9D4F30;
          goto LABEL_30;
        }
      }

      sub_18B815380(v132, _s4ItemVMa_2);
      v9 = v118;
      v54 = v130;
      v50 = v117;
      v52 = &unk_1EA9D4F30;
    }

    else
    {
      sub_18B988BAC(v60, &unk_1EA9D92F0);
      v9 = v57;
      v14 = v56;
      v52 = v55;
    }

    (*v121)(v9, 1, 1, v54);
LABEL_30:
    v49 = v120;
    v45 = v119;
    v48 &= v48 - 1;
    sub_18B988BAC(v128, &unk_1EA9D4F40);
    if ((*v50)(v9, 1, v54) != 1)
    {
      v101 = v108;
      sub_18B829704(v9, v108, _s4ItemVMa_2);
      sub_18B829704(v101, v109, _s4ItemVMa_2);
      v102 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_18B82A46C(0, v102[2] + 1, 1, v102);
      }

      v111 = v102;
      v104 = v102[2];
      v103 = v102[3];
      if (v104 >= v103 >> 1)
      {
        v111 = sub_18B82A46C(v103 > 1, v104 + 1, 1, v111);
      }

      v105 = v111;
      v111[2] = v104 + 1;
      sub_18B829704(v109, v105 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v104, _s4ItemVMa_2);
      v9 = v118;
      v50 = v117;
      goto LABEL_8;
    }

    sub_18B988BAC(v9, v52);
    v53 = v51;
  }

  while (v48);
LABEL_10:
  while (1)
  {
    v51 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v51 >= v49)
    {

      *&v134[0] = v111;
      v106 = v124;
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      sub_18B86B958(v134, v106);

      return *&v134[0];
    }

    v48 = *(v45 + 8 * v51);
    ++v53;
    if (v48)
    {
      v55 = v52;
      v56 = v14;
      v57 = v9;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_18B86A664(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
  v9 = *(v200 - 1);
  MEMORY[0x1EEE9AC00](v200);
  v11 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v193 = &v180 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v194 = &v180 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v202 = &v180 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v187 = &v180 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v180 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v206 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v204 = &v180 - v24;
  sub_18B86B4C4(v4[3], v4[4], a1, a2, a3, a4);
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27)
  {
    v183 = v9;
    v184 = v22;
    v28 = 0;
    v29 = v25 + 32;
    v201 = MEMORY[0x1E69E7CD0];
    v31 = *v4;
    v30 = *(v4 + 1);
    v189 = v11;
    v197 = v25 + 32;
    v198 = v27;
    v205 = v31;
    v196 = v30;
    while (v28 < *(v26 + 16))
    {
      if (*(v30 + 16))
      {
        v25 = sub_18B86F764(*(v29 + 32 * v28), *(v29 + 32 * v28 + 8), *(v29 + 32 * v28 + 16), *(v29 + 32 * v28 + 24));
        if (v32)
        {
          v33 = *(*(v30 + 56) + 8 * v25);
          v34 = v33 + 56;
          v35 = 1 << *(v33 + 32);
          if (v35 < 64)
          {
            v36 = ~(-1 << v35);
          }

          else
          {
            v36 = -1;
          }

          v37 = v36 & *(v33 + 56);
          v38 = (v35 + 63) >> 6;
          v207 = v33;
          v25 = sub_18BC1E3F8();
          v39 = 0;
          v40 = v204;
          while (v37)
          {
LABEL_18:
            while (1)
            {
              v42 = __clz(__rbit64(v37));
              v37 &= v37 - 1;
              sub_18B7CA054(*(v207 + 48) + *(v206 + 72) * (v42 | (v39 << 6)), v40, &unk_1EA9D92F0);
              v43 = v205;
              if (*(*&v205 + 16))
              {
                v44 = sub_18B83B1C8(v40);
                v40 = v204;
                if (v45)
                {
                  break;
                }
              }

              v25 = sub_18B988BAC(v40, &unk_1EA9D92F0);
              if (!v37)
              {
                goto LABEL_14;
              }
            }

            v182 = v26;
            v46 = *(*&v43 + 56);
            v195 = *(v183 + 72);
            v47 = v187;
            sub_18B7CA054(v46 + v195 * v44, v187, &unk_1EA9D4F40);
            sub_18B988BAC(v40, &unk_1EA9D92F0);
            v48 = v47;
            v49 = v184;
            sub_18B7CF39C(v48, v184, &unk_1EA9D4F40);
            v221.origin.x = a1;
            v221.origin.y = a2;
            v221.size.width = a3;
            v221.size.height = a4;
            if (CGRectIntersectsRect(*(v49 + v200[24]), v221))
            {
              sub_18B7CA054(v49, v202, &unk_1EA9D4F40);
              sub_18BC22158();
              sub_18B83ADFC(v209);
              v50 = sub_18BC221A8();
              v51 = -1 << *(v201 + 32);
              v52 = v50 & ~v51;
              v192 = v201 + 56;
              if ((*(v201 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
              {
                v190 = ~v51;
                do
                {
                  v53 = *(v201 + 48);
                  v203 = v52;
                  sub_18B7CA054(v53 + v52 * v195, v11, &unk_1EA9D4F40);
                  v25 = sub_18B8598D4(v11, v202);
                  if (v25)
                  {
                    v54 = v200[23];
                    v55 = *&v11[v54];
                    v199 = *(v202 + v54);
                    if (v55 == v199)
                    {
LABEL_41:
                      v72 = v200[19];
                      v73 = *&v11[v72];
                      v74 = *&v11[v72 + 8];
                      v75 = (v202 + v72);
                      if (v73 == *v75 && v74 == v75[1])
                      {
                        v77 = v200[18];
                        v78 = *&v11[v77];
                        v79 = *&v11[v77 + 8];
                        v80 = (v202 + v77);
                        if (v78 == *v80 && v79 == v80[1])
                        {
                          v82 = v200[20];
                          v83 = *&v11[v82 + 16];
                          v215 = *&v11[v82];
                          v216 = v83;
                          v84 = *&v11[v82 + 32];
                          v85 = (v202 + v82);
                          v86 = *v85;
                          v87 = v85[1];
                          v217 = v84;
                          v218 = v86;
                          v88 = v85[2];
                          v219 = v87;
                          v220 = v88;
                          v25 = sub_18BC212E8();
                          if ((v25 & 1) != 0 && *&v11[v200[21]] == *(v202 + v200[21]) && *&v11[v200[17]] == *(v202 + v200[17]))
                          {
                            v89 = v200[22];
                            v90 = *&v11[v89];
                            v91 = *(v202 + v89);
                            if (v90 == v91)
                            {
                              v177 = v11;
                              v178 = v184;
LABEL_134:
                              sub_18B988BAC(v177, &unk_1EA9D4F40);
                              sub_18B988BAC(v178, &unk_1EA9D4F40);
                              v108 = v202;
                              goto LABEL_71;
                            }

                            if (*(v90 + 16) == *(v91 + 16))
                            {
                              v92 = 0;
                              v93 = *(v90 + 64);
                              v185 = v90 + 64;
                              v94 = 1 << *(v90 + 32);
                              if (v94 < 64)
                              {
                                v95 = ~(-1 << v94);
                              }

                              else
                              {
                                v95 = -1;
                              }

                              v96 = v95 & v93;
                              v97 = (v94 + 63) >> 6;
                              v186 = v97;
                              v188 = v90;
                              while (v96)
                              {
                                v98 = __clz(__rbit64(v96));
                                v199 = (v96 - 1) & v96;
LABEL_67:
                                v101 = v98 | (v92 << 6);
                                v102 = (*(v90 + 48) + 16 * v101);
                                v104 = *v102;
                                v103 = v102[1];
                                v105 = *(*(v90 + 56) + 8 * v101);
                                sub_18BC1E3F8();
                                v106 = sub_18B831970(v104, v103);
                                LODWORD(v191) = v107;

                                v90 = v188;
                                v11 = v189;
                                v97 = v186;
                                v96 = v199;
                                if ((v191 & 1) == 0 || *(*(v91 + 56) + 8 * v106) != v105)
                                {
                                  goto LABEL_23;
                                }
                              }

                              v99 = v92;
                              while (1)
                              {
                                v92 = v99 + 1;
                                if (__OFADD__(v99, 1))
                                {
                                  goto LABEL_143;
                                }

                                if (v92 >= v97)
                                {
                                  v177 = v184;
                                  v178 = v11;
                                  goto LABEL_134;
                                }

                                v100 = *(v185 + 8 * v92);
                                ++v99;
                                if (v100)
                                {
                                  v98 = __clz(__rbit64(v100));
                                  v199 = (v100 - 1) & v100;
                                  goto LABEL_67;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    else if (*(v55 + 16) == *(v199 + 16))
                    {
                      v56 = 0;
                      v57 = *(v55 + 64);
                      v186 = v55 + 64;
                      v58 = 1 << *(v55 + 32);
                      if (v58 < 64)
                      {
                        v59 = ~(-1 << v58);
                      }

                      else
                      {
                        v59 = -1;
                      }

                      v60 = v59 & v57;
                      v185 = (v58 + 63) >> 6;
                      v188 = v55;
                      while (v60)
                      {
                        v61 = __clz(__rbit64(v60));
                        v191 = (v60 - 1) & v60;
LABEL_38:
                        v64 = v61 | (v56 << 6);
                        v65 = (*(v55 + 48) + 16 * v64);
                        v67 = *v65;
                        v66 = v65[1];
                        v68 = *(*(v55 + 56) + 8 * v64);
                        sub_18BC1E3F8();
                        v69 = sub_18B831970(v67, v66);
                        v71 = v70;

                        v55 = v188;
                        v11 = v189;
                        v60 = v191;
                        if ((v71 & 1) == 0 || *(*(v199 + 56) + 8 * v69) != v68)
                        {
                          goto LABEL_23;
                        }
                      }

                      v62 = v56;
                      while (1)
                      {
                        v56 = v62 + 1;
                        if (__OFADD__(v62, 1))
                        {
                          goto LABEL_140;
                        }

                        if (v56 >= v185)
                        {
                          goto LABEL_41;
                        }

                        v63 = *(v186 + 8 * v56);
                        ++v62;
                        if (v63)
                        {
                          v61 = __clz(__rbit64(v63));
                          v191 = (v63 - 1) & v63;
                          goto LABEL_38;
                        }
                      }
                    }
                  }

LABEL_23:
                  sub_18B988BAC(v11, &unk_1EA9D4F40);
                  v52 = (v203 + 1) & v190;
                }

                while (((*(v192 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0);
              }

              v203 = v52;
              v109 = v201;
              LODWORD(v199) = swift_isUniquelyReferenced_nonNull_native();
              sub_18B7CA054(v202, v194, &unk_1EA9D4F40);
              v208 = v109;
              v110 = *(v109 + 16);
              if (*(v109 + 24) <= v110)
              {
                v26 = v182;
                if (v199)
                {
                  sub_18B85B7F0(v110 + 1, &unk_1EA9D4F40, &unk_18BC42E70, &qword_1EA9D9FA0);
                }

                else
                {
                  sub_18B8437FC(v110 + 1, &unk_1EA9D4F40, &unk_18BC42E70, &qword_1EA9D9FA0);
                }

                v201 = v208;
                sub_18BC22158();
                sub_18B83ADFC(v209);
                v112 = sub_18BC221A8();
                v113 = -1 << *(v201 + 32);
                v111 = v112 & ~v113;
                v192 = v201 + 56;
                if ((*(v201 + 56 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111))
                {
                  v190 = ~v113;
                  v114 = v193;
                  while (1)
                  {
                    v115 = *(v201 + 48);
                    v203 = v111;
                    sub_18B7CA054(v115 + v111 * v195, v114, &unk_1EA9D4F40);
                    v25 = sub_18B8598D4(v114, v194);
                    if (v25)
                    {
                      v116 = v200[23];
                      v117 = v193;
                      v118 = *(v193 + v116);
                      v199 = *(v194 + v116);
                      if (v118 == v199)
                      {
LABEL_99:
                        v135 = v200[19];
                        v136 = *(v117 + v135);
                        v137 = *(v117 + v135 + 8);
                        v138 = (v194 + v135);
                        if (v136 == *v138 && v137 == v138[1])
                        {
                          v140 = v200[18];
                          v141 = *(v193 + v140);
                          v142 = *(v193 + v140 + 8);
                          v143 = (v194 + v140);
                          if (v141 == *v143 && v142 == v143[1])
                          {
                            v145 = v200[20];
                            v146 = *(v193 + v145 + 16);
                            *&v209[72] = *(v193 + v145);
                            v210 = v146;
                            v147 = *(v193 + v145 + 32);
                            v148 = (v194 + v145);
                            v149 = *v148;
                            v150 = v148[1];
                            v211 = v147;
                            v212 = v149;
                            v151 = v148[2];
                            v213 = v150;
                            v214 = v151;
                            if ((sub_18BC212E8() & 1) != 0 && *(v193 + v200[21]) == *(v194 + v200[21]) && *(v193 + v200[17]) == *(v194 + v200[17]))
                            {
                              v152 = v200[22];
                              v25 = v193;
                              v153 = *(v194 + v152);
                              v186 = *(v193 + v152);
                              if (v186 == v153)
                              {
                                goto LABEL_145;
                              }

                              if (*(v186 + 16) == *(v153 + 16))
                              {
                                v154 = 0;
                                v155 = *(v186 + 64);
                                v181 = v186 + 64;
                                v156 = 1 << *(v186 + 32);
                                if (v156 < 64)
                                {
                                  v157 = ~(-1 << v156);
                                }

                                else
                                {
                                  v157 = -1;
                                }

                                v158 = v157 & v155;
                                v159 = (v156 + 63) >> 6;
                                v185 = v153;
                                while (v158)
                                {
                                  v160 = __clz(__rbit64(v158));
                                  v199 = (v158 - 1) & v158;
LABEL_125:
                                  v163 = v160 | (v154 << 6);
                                  v164 = *(v186 + 56);
                                  v165 = (*(v186 + 48) + 16 * v163);
                                  v167 = *v165;
                                  v191 = v165[1];
                                  v166 = v191;
                                  v168 = *(v164 + 8 * v163);
                                  sub_18BC1E3F8();
                                  v169 = v166;
                                  v170 = v185;
                                  v171 = sub_18B831970(v167, v169);
                                  LODWORD(v188) = v172;

                                  v158 = v199;
                                  if ((v188 & 1) == 0 || *(*(v170 + 56) + 8 * v171) != v168)
                                  {
                                    goto LABEL_81;
                                  }
                                }

                                v161 = v154;
                                v25 = v193;
                                while (1)
                                {
                                  v154 = v161 + 1;
                                  if (__OFADD__(v161, 1))
                                  {
                                    goto LABEL_142;
                                  }

                                  if (v154 >= v159)
                                  {
                                    goto LABEL_145;
                                  }

                                  v162 = *(v181 + 8 * v154);
                                  ++v161;
                                  if (v162)
                                  {
                                    v160 = __clz(__rbit64(v162));
                                    v199 = (v162 - 1) & v162;
                                    goto LABEL_125;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      else if (*(v118 + 16) == *(v199 + 16))
                      {
                        v119 = 0;
                        v120 = *(v118 + 64);
                        v186 = v118 + 64;
                        v121 = 1 << *(v118 + 32);
                        if (v121 < 64)
                        {
                          v122 = ~(-1 << v121);
                        }

                        else
                        {
                          v122 = -1;
                        }

                        v123 = v122 & v120;
                        v185 = (v121 + 63) >> 6;
                        v188 = v118;
                        while (v123)
                        {
                          v124 = __clz(__rbit64(v123));
                          v191 = (v123 - 1) & v123;
LABEL_96:
                          v127 = v124 | (v119 << 6);
                          v128 = (*(v118 + 48) + 16 * v127);
                          v130 = *v128;
                          v129 = v128[1];
                          v131 = *(*(v118 + 56) + 8 * v127);
                          sub_18BC1E3F8();
                          v132 = sub_18B831970(v130, v129);
                          v134 = v133;

                          v118 = v188;
                          v123 = v191;
                          if ((v134 & 1) == 0 || *(*(v199 + 56) + 8 * v132) != v131)
                          {
                            goto LABEL_81;
                          }
                        }

                        v125 = v119;
                        v117 = v193;
                        while (1)
                        {
                          v119 = v125 + 1;
                          if (__OFADD__(v125, 1))
                          {
                            goto LABEL_141;
                          }

                          if (v119 >= v185)
                          {
                            goto LABEL_99;
                          }

                          v126 = *(v186 + 8 * v119);
                          ++v125;
                          if (v126)
                          {
                            v124 = __clz(__rbit64(v126));
                            v191 = (v126 - 1) & v126;
                            goto LABEL_96;
                          }
                        }
                      }
                    }

LABEL_81:
                    v114 = v193;
                    sub_18B988BAC(v193, &unk_1EA9D4F40);
                    v111 = (v203 + 1) & v190;
                    if (((*(v192 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) == 0)
                    {
                      v11 = v189;
                      v26 = v182;
                      break;
                    }
                  }
                }
              }

              else
              {
                v26 = v182;
                if ((v199 & 1) == 0)
                {
                  sub_18B9CC2F8();
                  v201 = v208;
                }

                v111 = v203;
              }

              v173 = v201;
              *(v201 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v111;
              sub_18B7CF39C(v194, *(v173 + 48) + v111 * v195, &unk_1EA9D4F40);
              v25 = sub_18B988BAC(v184, &unk_1EA9D4F40);
              v174 = *(v201 + 16);
              v175 = __OFADD__(v174, 1);
              v176 = v174 + 1;
              v40 = v204;
              if (v175)
              {
                goto LABEL_144;
              }

              *(v201 + 16) = v176;
              v108 = v202;
            }

            else
            {
              v108 = v49;
LABEL_71:
              v40 = v204;
              v26 = v182;
            }

            v25 = sub_18B988BAC(v108, &unk_1EA9D4F40);
          }

LABEL_14:
          while (1)
          {
            v41 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            if (v41 >= v38)
            {

              v29 = v197;
              v27 = v198;
              v30 = v196;
              goto LABEL_4;
            }

            v37 = *(v34 + 8 * v41);
            ++v39;
            if (v37)
            {
              v39 = v41;
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_4:
      if (++v28 == v27)
      {

        return v201;
      }
    }

    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    sub_18B988BAC(v25, &unk_1EA9D4F40);
    result = sub_18BC22068();
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_18B86B4C4(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v58.origin.x = a3;
  v58.origin.y = a4;
  v58.size.width = a5;
  v58.size.height = a6;
  v12 = CGRectGetMinX(v58) / a1;
  if (COERCE__INT64(fabs(v12)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v59.origin.x = v9;
  v59.origin.y = v8;
  v59.size.width = v7;
  v59.size.height = v6;
  v13 = CGRectGetMaxX(v59) / a1;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v14 = v12;
  v15 = v13;
  if (v13 >= v12)
  {
    v16 = MEMORY[0x1E69E7CC0];
    v56 = v8;
    v57 = v7;
    v55 = v9;
    while (1)
    {
      v60.origin.x = v9;
      v60.origin.y = v8;
      v60.size.width = v7;
      v60.size.height = v6;
      v17 = CGRectGetMinY(v60) / a2;
      if (COERCE__INT64(fabs(v17)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v17 <= -9.22337204e18)
      {
        goto LABEL_33;
      }

      if (v17 >= 9.22337204e18)
      {
        goto LABEL_34;
      }

      v61.origin.x = v9;
      v61.origin.y = v8;
      v61.size.width = v7;
      v61.size.height = v6;
      v22 = CGRectGetMaxY(v61) / a2;
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_35;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_36;
      }

      if (v22 >= 9.22337204e18)
      {
        goto LABEL_37;
      }

      v23 = v17;
      v24 = v22;
      if (v22 < v17)
      {
        goto LABEL_38;
      }

      v25 = v6;
      v26 = CGRectMake(v18, v19, v20, v21);
      v28 = v27;
      v30 = v29;
      v32 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_18B86B854(0, *(v16 + 16) + 1, 1, v16);
        v16 = isUniquelyReferenced_nonNull_native;
      }

      v38 = *(v16 + 16);
      v37 = *(v16 + 24);
      if (v38 >= v37 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_18B86B854((v37 > 1), v38 + 1, 1, v16);
        v16 = isUniquelyReferenced_nonNull_native;
      }

      *(v16 + 16) = v38 + 1;
      v39 = (v16 + 32 * v38);
      v39[4] = v26;
      *(v39 + 5) = v28;
      *(v39 + 6) = v30;
      *(v39 + 7) = v32;
      if (v23 != v24)
      {
        if (v23 >= v24)
        {
          goto LABEL_40;
        }

        v41 = 32 * v38 + 88;
        v42 = v38 + 2;
        v43 = v23 + 1;
        v44 = -v24;
        do
        {
          v45 = CGRectMake(isUniquelyReferenced_nonNull_native, v34, v35, v36);
          v49 = *(v16 + 24);
          if (v42 - 1 >= v49 >> 1)
          {
            v51 = v45;
            v52 = v46;
            v53 = v47;
            v54 = v48;
            isUniquelyReferenced_nonNull_native = sub_18B86B854((v49 > 1), v42, 1, v16);
            v48 = v54;
            v47 = v53;
            v46 = v52;
            v45 = v51;
            v16 = isUniquelyReferenced_nonNull_native;
          }

          *(v16 + 16) = v42;
          v50 = (v16 + v41);
          *(v50 - 3) = v45;
          *(v50 - 2) = v46;
          *(v50 - 1) = v47;
          *v50 = v48;
          v41 += 32;
          ++v42;
          ++v43;
        }

        while (v44 + v43 != 1);
      }

      if (v14 == v15)
      {
        return;
      }

      v40 = __OFADD__(v14++, 1);
      v6 = v25;
      v8 = v56;
      v7 = v57;
      v9 = v55;
      if (v40)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_47:
  __break(1u);
}

char *sub_18B86B854(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4BD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_18B86B958(void **a1, _OWORD *a2)
{
  v4 = *(_s4ItemVMa_2() - 8);
  v5 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_18B86BA68(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  sub_18BC1E1A8();
  sub_18B86BA7C(v8, a2);

  *a1 = v5;
}

uint64_t sub_18B86BA7C(uint64_t *a1, _OWORD *a2)
{
  v53 = sub_18BC1EDD8();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v40 - v8;
  v47 = _s4ItemVMa_2();
  v42 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v40 - v13;
  v14 = a1[1];
  v56 = a2;
  swift_retain_n();
  result = sub_18BC21F38();
  if (result < v14)
  {
    if (v14 >= -1)
    {
      v16 = result;
      if (v14 <= 1)
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v17 = sub_18BC20DF8();
        *(v17 + 16) = v14 / 2;
      }

      v57[0] = v17 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v57[1] = v14 / 2;
      v18 = v17;
      v19 = v56;
      sub_18BC1E1A8();
      sub_18B9D1C94(v57, v58, a1, v16, v19);

      *(v18 + 16) = 0;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v14 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (v14 >= 2)
  {
    v40 = v2;
    v55 = *a1;
    v48 = (v5 + 8);
    sub_18BC1E1A8();
    v20 = 0;
    v21 = -1;
    v22 = 1;
    v41 = v14;
    do
    {
      swift_beginAccess();
      v23 = *(v42 + 72);
      v45 = v20;
      v24 = v55 + v23 * v20;
      v54 = -v23;
      v43 = v22;
      v25 = v55 + v23 * v22;
      v44 = v21;
      v61 = v21;
      do
      {
        v26 = v49;
        sub_18B8554D0(v25, v49, _s4ItemVMa_2);
        v27 = v50;
        sub_18B8554D0(v24, v50, _s4ItemVMa_2);
        v28 = v56;
        v29 = v56[2];
        v60[0] = v56[1];
        v30 = v56[3];
        v60[1] = v29;
        v60[2] = v30;
        sub_18B7CA054(v60, v57, &unk_1EA9D4F90);
        v31 = v51;
        sub_18B9C7AA4(v26);
        sub_18B988BAC(v60, &unk_1EA9D4F90);
        v32 = v28[2];
        v59[0] = v28[1];
        v59[1] = v32;
        v59[2] = v28[3];
        sub_18B7CA054(v59, v57, &unk_1EA9D4F90);
        v33 = v52;
        sub_18B9C7AA4(v27);
        sub_18B988BAC(v59, &unk_1EA9D4F90);
        v34 = sub_18BC1ED78();
        v35 = *v48;
        v36 = v33;
        v37 = v53;
        (*v48)(v36, v53);
        v35(v31, v37);
        sub_18B815380(v27, _s4ItemVMa_2);
        result = sub_18B815380(v26, _s4ItemVMa_2);
        if ((v34 & 1) == 0)
        {
          break;
        }

        if (!v55)
        {
          goto LABEL_21;
        }

        v38 = v46;
        sub_18B829704(v25, v46, _s4ItemVMa_2);
        swift_arrayInitWithTakeFrontToBack();
        sub_18B829704(v38, v24, _s4ItemVMa_2);
        v24 += v54;
        v25 += v54;
      }

      while (!__CFADD__(v61++, 1));
      v22 = v43 + 1;
      v20 = v45 + 1;
      v21 = v44 - 1;
    }

    while (v43 + 1 != v41);
  }
}

void sub_18B86C03C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5020);
  v3 = sub_18BC21A88();
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = (v2 + 56);
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = *(v2 + 48) + 40 * (v10 | (v4 << 6));
      v14 = *(v13 + 16);
      v16[0] = *v13;
      v16[1] = v14;
      v17 = *(v13 + 32);
      sub_18BB61D04(v16, v3);
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v4 >= v9)
      {
        break;
      }

      v12 = v5[v4];
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v2 + 32);
    if (v15 >= 64)
    {
      bzero((v2 + 56), ((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v15;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v3;
}

unint64_t sub_18B86C1C0()
{
  result = qword_1EA9D50D0;
  if (!qword_1EA9D50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D50D0);
  }

  return result;
}

unint64_t sub_18B86C218()
{
  result = qword_1EA9D5D90;
  if (!qword_1EA9D5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5D90);
  }

  return result;
}

size_t sub_18B86C274(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v26 = MEMORY[0x1E69E7CC0];
  result = sub_18B8408D8(0, a2 & ~(a2 >> 63), 0);
  v13 = v26;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v24 = a1;
    v25 = v2;
    v14 = 0;
    v15 = *(v6 + 72);
    v23 = a2;
    do
    {
      a2 = v14++;
      sub_18B83AA0C(a1 + v15 * a2, v11);
      v16 = *(v13 + 16) + 1;
      v17 = v13;
      while (--v16)
      {
        v18 = v17 + v15;
        v19 = sub_18B8598D4(v11, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
        v17 = v18;
        if (v19)
        {
          sub_18B988BAC(v11, &unk_1EA9D92F0);
          goto LABEL_11;
        }
      }

      sub_18B83AA0C(v11, v9);
      v26 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_18B8408D8(v20 > 1, v21 + 1, 1);
        v13 = v26;
      }

      sub_18B988BAC(v11, &unk_1EA9D92F0);
      *(v13 + 16) = v21 + 1;
      sub_18B840ED0(v9, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v21 * v15);
      a2 = v23;
      a1 = v24;
    }

    while (v14 != v23);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_18B86C4A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B86C50C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B86C574(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v20 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_13:
    sub_18B833990(*(result + 48) + 40 * (v10 | (v3 << 6)), v36);
    v34[0] = v36[0];
    v34[1] = v36[1];
    v35 = v37;
    sub_18BC22158();
    sub_18B833990(v34, &v31);
    v21 = v11;
    if (*(&v32 + 1) > 1)
    {
      if (*(&v32 + 1) == 2)
      {
        v14 = 3;
      }

      else
      {
        if (*(&v32 + 1) != 3)
        {
LABEL_20:
          v24[0] = v31;
          v24[1] = v32;
          v25 = v33;
          MEMORY[0x18CFFD660](2);
          sub_18BC21A58();
          sub_18B831014(v24);
          goto LABEL_24;
        }

        v14 = 4;
      }
    }

    else if (*(&v32 + 1))
    {
      if (*(&v32 + 1) != 1)
      {
        goto LABEL_20;
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x18CFFD660](v14);
LABEL_24:
    v15 = sub_18BC221A8();
    v16 = -1 << *(a2 + 32);
    v17 = v15 & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_48:
      sub_18B833D9C(v34);
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      sub_18B833990(*(a2 + 48) + 40 * v17, &v31);
      sub_18B833990(&v31, v26);
      sub_18B833990(v34, &v28);
      if (v27 > 1)
      {
        if (v27 == 2)
        {
          sub_18B833D9C(&v31);
          if (*(&v29 + 1) == 2)
          {
            goto LABEL_45;
          }

          goto LABEL_40;
        }

        if (v27 == 3)
        {
          sub_18B833D9C(&v31);
          if (*(&v29 + 1) == 3)
          {
            goto LABEL_45;
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (!v27)
        {
          sub_18B833D9C(&v31);
          if (!*(&v29 + 1))
          {
            goto LABEL_45;
          }

          goto LABEL_40;
        }

        if (v27 == 1)
        {
          sub_18B833D9C(&v31);
          if (*(&v29 + 1) == 1)
          {
            goto LABEL_45;
          }

          goto LABEL_40;
        }
      }

      sub_18B833990(v26, v24);
      if (*(&v29 + 1) >= 4uLL)
      {
        break;
      }

      sub_18B833D9C(&v31);
      sub_18B831014(v24);
LABEL_40:
      sub_18B988BAC(v26, &unk_1EA9D4F50);
LABEL_41:
      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v22[0] = v28;
    v22[1] = v29;
    v23 = v30;
    v19 = MEMORY[0x18CFFCF40](v24, v22);
    sub_18B831014(v22);
    sub_18B833D9C(&v31);
    sub_18B831014(v24);
    if ((v19 & 1) == 0)
    {
      sub_18B833D9C(v26);
      goto LABEL_41;
    }

LABEL_45:
    sub_18B833D9C(v26);
    sub_18B833D9C(v34);
    result = v20;
    v7 = v21;
  }

  while (v21);
LABEL_8:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v13 = *(v4 + 8 * v3);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18B86C8F0(uint64_t a1)
{
  result = sub_18B86C1C0();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_18B86C944@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_18B813BA4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_18B813E2C(&v24);
  sub_18B82B344(&v24);
  v11 = v5 + v10;
  sub_18B813E2C(&v24);
  sub_18B84D9B0(&v24);
  v13 = v11 + v12;
  sub_18B813E2C(&v24);
  v14 = v28 - (v7 + v9);
  v15 = v1[7];
  v24 = 0uLL;
  v25 = 0;
  v26 = xmmword_18BC3FCA0;
  sub_18B84DA50(&v24);
  sub_18B833D9C(&v24);
  if (*(v1 + 32) != 1 || (*(v1 + 97) & 1) != 0 || (v16 = 1.0, *(v1 + 48) == 1))
  {
    v16 = 0.0;
  }

  v17 = sub_18B8103B0();
  v18 = *(*&v3 + 96);
  v24 = *(*&v3 + 80);
  v25 = &type metadata for SFFluidTabOverviewSupplementary;
  v26 = v18;
  v27 = v17;
  v19 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  *(a1 + v19[17]) = v16;
  SFFluidCollectionView.LayoutAttributes.frame.setter(v19, v7, v13, v14, v15);
  if (*(v1 + 32) != 1 || (v20 = 0.0, *(v1 + 97) == 1))
  {
    v20 = v1[5];
  }

  v21 = v19[22];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v24 = *(a1 + v21);
  result = sub_18B84E858(0x6964615272756C62, 0xEA00000000007375, isUniquelyReferenced_nonNull_native, v20);
  *(a1 + v21) = v24;
  return result;
}

uint64_t sub_18B86CB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_18B8103B0();
  v8 = *(v6 + 96);
  v92 = *(v6 + 80);
  v94 = v8;
  v93 = &type metadata for SFFluidTabOverviewSupplementary;
  v95 = v7;
  v9 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v84 - v11;
  sub_18B813E2C(v89);
  v13 = *v89;
  v14 = *&v89[1];
  sub_18B813E2C(v90);
  v15 = *&v90[4];
  v16 = *&v90[5];
  v17 = *&v90[6];
  v18 = *&v90[7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    [Strong safeAreaInsets];
    v87 = v22;
    v88 = v21;
    v85 = v24;
    v86 = v23;

    if (v3[32])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v25 = *MEMORY[0x1E69DDCE0];
    v87 = *(MEMORY[0x1E69DDCE0] + 8);
    v88 = v25;
    v26 = *(MEMORY[0x1E69DDCE0] + 16);
    v85 = *(MEMORY[0x1E69DDCE0] + 24);
    v86 = v26;
    if (v3[32])
    {
LABEL_6:
      v27 = v3[48] ^ 1;
      goto LABEL_8;
    }
  }

  if (v3[33] == 1)
  {
    goto LABEL_6;
  }

  v27 = 0;
LABEL_8:
  if (v3[153] == 1)
  {
    v96.origin.x = v15;
    v96.origin.y = v16;
    v96.size.width = v17;
    v96.size.height = v18;
    MinY = CGRectGetMinY(v96);
  }

  else
  {
    MinY = -v13;
  }

  v97.origin.x = v15;
  v97.origin.y = v16;
  v97.size.width = v17;
  v97.size.height = v18;
  Width = CGRectGetWidth(v97);
  v98.origin.x = v15;
  v98.origin.y = v16;
  v98.size.width = v17;
  v98.size.height = v18;
  Height = CGRectGetHeight(v98);
  sub_18B813E2C(&v91);
  UIEdgeInsetsReplace();
  v33 = UIEdgeInsetsInsetRect(-v14, MinY, Width, Height, v31, v32);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  UIEdgeInsetsReplace();
  v42 = UIEdgeInsetsInsetRect(v33, v35, v37, v39, v40, v41);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = 0.0;
  if (v27)
  {
    sub_18B81393C();
    sub_18B813E2C(&v92);
    sub_18B82B344(&v92);
  }

  UIEdgeInsetsMakeWithEdges();
  v52 = UIEdgeInsetsInsetRect(v42, v44, v46, v48, v50, v51);
  if ((v3[153] & 1) == 0)
  {
    v56 = v52;
    v57 = v53;
    v58 = v54;
    v59 = v55;
    sub_18B813E2C(&v92);
    sub_18B82B344(&v92);
    v55 = v59;
    v54 = v58;
    v53 = v57;
    v49 = v60;
    v52 = v56;
  }

  v99 = CGRectOffset(*&v52, 0.0, v49);
  x = v99.origin.x;
  y = v99.origin.y;
  v63 = v99.size.width;
  v64 = v99.size.height;
  MidX = CGRectGetMidX(v99);
  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = v63;
  v100.size.height = v64;
  MidY = CGRectGetMidY(v100);
  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = v63;
  v101.size.height = v64;
  v67 = CGRectGetWidth(v101);
  if (v67 <= 700.0)
  {
    v68 = v67;
  }

  else
  {
    v68 = 700.0;
  }

  v102.origin.x = x;
  v102.origin.y = y;
  v102.size.width = v63;
  v102.size.height = v64;
  v69 = CGRectGetHeight(v102);
  v70 = MidX - v68 * 0.5;
  v71 = MidY - v69 * 0.5;
  sub_18B7F44EC(a1, &v92);
  sub_18B84DA50(&v92);
  sub_18B833D9C(&v92);
  result = SFFluidCollectionView.LayoutAttributes.frame.setter(v9, v70, v71, v68, v69);
  if (v27)
  {
    sub_18B84D768(v12);
    v73 = SFFluidCollectionView.LayoutAttributes.frame.getter(v9);
    v75 = v74;
    v77 = v76;
    v79 = v78;
    (*(v10 + 8))(v12, v9);
    v103.origin.x = v73;
    v103.origin.y = v75;
    v103.size.width = v77;
    v103.size.height = v79;
    MaxY = CGRectGetMaxY(v103);
    v104.origin.x = v70;
    v104.origin.y = v71;
    v104.size.width = v68;
    v104.size.height = v69;
    v81 = MaxY - CGRectGetMinY(v104);
    v82 = v9[23];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = *(a2 + v82);
    result = sub_18B84E858(0xD000000000000020, 0x800000018BC626D0, isUniquelyReferenced_nonNull_native, v81);
    *(a2 + v82) = v92;
  }

  return result;
}

uint64_t sub_18B86D01C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8();
  }
}

uint64_t sub_18B86D04C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18B86D0C4()
{
  v1 = *(v0 + OBJC_IVAR___SFTabOverview_peekingOverlayView);
  if (v1)
  {
    v2 = OBJC_IVAR___SFTabOverview_peekingInfo;
    if (*(v0 + OBJC_IVAR___SFTabOverview_peekingInfo) == 2)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 1.0;
    }

    v19 = v1;
    [v19 setAlpha_];
    v4 = *(v0 + v2) == 2;
    v5 = OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_contentIsHidden;
    v19[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_contentIsHidden] = v4;
    if (v4)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    [*&v19[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_imageView] setAlpha_];
    v7 = v0;
    v8 = sub_18B86D2B0();
    v9 = 3.0;
    if (!v19[v5])
    {
      v9 = 0.0;
    }

    [v8 setValue_];

    v10 = sub_18B82FEA0();
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v19 setFrame_];
    [*(v7 + OBJC_IVAR___SFTabOverview____lazy_storage___collectionView) adjustedContentInset];
    UIEdgeInsetsMakeWithEdges();
    UIEdgeInsetsAdd();
    [v19 setLayoutMargins_];
  }
}

id sub_18B86D2B0()
{
  v1 = OBJC_IVAR____TtC12MobileSafari18BlurrableImageView____lazy_storage___blurRadius;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari18BlurrableImageView____lazy_storage___blurRadius);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari18BlurrableImageView____lazy_storage___blurRadius);
  }

  else
  {
    v4 = sub_18B86D310();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18B86D310()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC3E3E0;
  *(v2 + 32) = v0;
  sub_18B7DE904();
  v3 = v0;
  v4 = sub_18BC20D88();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18B86D548;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_22_1;
  v6 = _Block_copy(&v10);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18BB8D810;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_26_1;
  v8 = _Block_copy(&v10);

  [v1 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v8);
  _Block_release(v6);

  return v3;
}

void sub_18B86D578(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  sub_18B7DEB00(a1);
  v4 = a2();
  [v4 value];
  v6 = v5;

  v7 = [v2 layer];
  v8 = sub_18BC1EEA8();
  v9 = sub_18BC20B98();
  [v7 setValue:v8 forKeyPath:v9];

  v10 = [v2 layer];
  [v10 setShouldRasterize_];
}

id sub_18B86D6D0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

id sub_18B86D6E0(void *a1)
{
  v2 = v1;
  v4 = sub_18BC208E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC208C8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_image;
  v17 = *(v2 + OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_image);
  if (v17)
  {
    v18 = a1 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v28 = v13;
    v29 = v5;
    v30 = v12;
    sub_18B7E7DC4();
    v19 = v17;
    v20 = a1;
    if ((sub_18BC215C8() & 1) == 0 && [objc_opt_self() areAnimationsEnabled])
    {
      sub_18BC208B8();
      sub_18BC208A8();
      v21 = *(v28 + 8);
      v22 = v15;
      v23 = v30;
      v21(v22, v30);
      sub_18BC208D8();
      sub_18BA6F41C();
      sub_18BC211D8();

      (*(v29 + 8))(v7, v4);
      return (v21)(v10, v23);
    }
  }

  v25 = *(v2 + OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_imageView);
  v26 = *(v2 + v16);

  return [v25 setImage_];
}

void sub_18B86D99C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_18B86D9AC()
{
  v21.receiver = v0;
  v21.super_class = _s18PeekingOverlayViewCMa();
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_backgroundView];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 layoutMargins];
  [v1 setFrame_];
  v12 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_peekingInfo + 8];
  v13 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_peekingInfo + 16] - v12;
  v14 = 0.0;
  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  v15 = v12 + v13 * 0.2;
  if (v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_peekingInfo] == 1)
  {
    [v0 bounds];
    v14 = CGRectGetWidth(v22) - v15;
  }

  v16 = OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_needsLayOutWithCurrentMetrics;
  if (v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_needsLayOutWithCurrentMetrics])
  {
    v17 = 0x8000000000000000;
  }

  else
  {
    v17 = 0x8000000000000008;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  v19 = v0;
  sub_18B7EAA64(sub_18B86DBF4, v18, CGRectMake, 0, v17);
  sub_18B7EBAE8(v17);

  v0[v16] = 0;
  return result;
}

uint64_t sub_18B86DB50()
{

  return swift_deallocObject();
}

id sub_18B86DC00(char *a1, double a2, double a3)
{
  v5 = *&a1[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_imageView];
  [a1 bounds];
  Height = CGRectGetHeight(v9);

  return [v5 setFrame_];
}

uint64_t sub_18B86DC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a2;
  v7 = _s4PageVMa_0();
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v53 - v10;
  v54 = sub_18BC1ECC8();
  v11 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6F8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x98);
  swift_beginAccess();
  v53 = v4;
  v17 = *(v4 + v16);
  if (*(v17 + 16))
  {
    sub_18BC1E3F8();
    v18 = sub_18B7C4104(a3, a4);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);
      sub_18BC1E1A8();

      sub_18BC1ECD8();
      v21 = *(v13 + 36);
      v22 = v20;
      swift_beginAccess();
      v23 = sub_18BC1ED38();
      v24 = sub_18B82BA44(&qword_1EA9DB700, MEMORY[0x1E6969B50]);
      v62 = (v11 + 8);
      v25 = v55;
      v26 = v54;
      v27 = v22;
      v59 = v21;
      v60 = v15;
      v58 = v23;
      v57 = v24;
      while (1)
      {
        v30 = v63;
        sub_18BC21158();
        sub_18B82BA44(&unk_1EA9DB708, MEMORY[0x1E6969B18]);
        v31 = sub_18BC20AE8();
        (*v62)(v30, v26);
        if (v31)
        {
          sub_18B988BAC(v15, &qword_1EA9DB6F8);
        }

        v32 = sub_18BC211C8();
        v34 = *v33;
        v32(v65, 0);
        sub_18BC21168();
        if ((v34 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v34 >= *(v25 + 16))
        {
          goto LABEL_21;
        }

        v29 = v25;
        v35 = *(v61 + 72);
        v36 = v25 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + v35 * v34;
        v28 = v56;
        sub_18BBCF730(v36, v56, _s4PageVMa_0);
        if (!*(v22[7] + 16) || (sub_18BC1E1A8(), sub_18BC1E3F8(), sub_18B8629FC(v28), v38 = v37, , v22 = v27, , (v38 & 1) == 0))
        {
          v39 = v27[15];
          v40 = v27[16];
          v41 = v28;
          __swift_project_boxed_opaque_existential_1Tm(v27 + 12, v39);
          v42 = v27[2];
          sub_18BC1E1A8();
          v42(v65, v41);

          v43 = v39;
          v22 = v27;
          v28 = v41;
          v44 = sub_18B814A2C(v65, v43, v40);
          __swift_destroy_boxed_opaque_existential_1Tm(v65);
          if ((v44 & 1) == 0)
          {
            sub_18B7CC308();
            v45 = sub_18B7CD924();

            if (*(v45 + 16) && (sub_18BC22158(), sub_18BC1EC08(), sub_18B82BA44(&qword_1EA9D3970, MEMORY[0x1E69695A8]), sub_18BC20A78(), v46 = sub_18BC221A8(), v47 = -1 << *(v45 + 32), v48 = v46 & ~v47, ((*(v45 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0))
            {
              v49 = ~v47;
              while (1)
              {
                v50 = v64;
                sub_18BBCF730(*(v45 + 48) + v48 * v35, v64, _s4PageVMa_0);
                updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
                sub_18B81D138(v50, _s4PageVMa_0);
                if (updated)
                {
                  break;
                }

                v48 = (v48 + 1) & v49;
                if (((*(v45 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
                {
                  goto LABEL_4;
                }
              }

              v29 = v55;
              v28 = v41;
              v26 = v54;
              v22 = v27;
            }

            else
            {
LABEL_4:

              v28 = v41;
              v22 = v27;
              sub_18B84910C(v41);
              v29 = v55;
              v26 = v54;
            }
          }
        }

        v25 = v29;
        sub_18B81D138(v28, _s4PageVMa_0);
        v15 = v60;
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

unint64_t sub_18B86E360@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 192);
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

  v6 = *(_s4PageVMa_0() - 8);
  v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;

  return sub_18B831A68(v7, a1);
}

__n128 sub_18B86E428@<Q0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v4 = sub_18BC1EDE8();
  sub_18B845484(v4, a1, v8);
  v5 = v8[5];
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v5;
  *(a2 + 96) = v8[6];
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  result = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_18B86E49C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 192);
  *a1 = *(*v1 + 184);
  *(a1 + 8) = v2;
  return sub_18BC1E3F8();
}

uint64_t sub_18B86E4B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D50A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B86E524(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_18BC1EC08();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5040);
  result = sub_18BC21AA8();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
    result = sub_18BC20A68();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_18B86E84C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_18B7B0AC0(0, &qword_1ED6511A8);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x18CFFD010](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x18CFFD010](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_18BC215C8();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_18BC215C8();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_18BC219A8();
  }

  result = sub_18BC219A8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_18B86EA9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18BC21848();
  v22 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v21 - v14;
  swift_getAssociatedTypeWitness();
  v16 = swift_dynamicCastUnknownClass();
  if (v16)
  {
    v17 = v16;
    sub_18B80DBC4(a2, v23);
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4098);
    if (swift_dynamicCast())
    {
      (*(v13 + 56))(v12, 0, 1, AssociatedTypeWitness);
      (*(v13 + 32))(v15, v12, AssociatedTypeWitness);
      v19 = (*(a4 + 56))(v17, v15, a3, a4);

      (*(v13 + 8))(v15, AssociatedTypeWitness);
    }

    else
    {

      v19 = 1;
      (*(v13 + 56))(v12, 1, 1, AssociatedTypeWitness);
      (*(v22 + 8))(v12, v9);
    }
  }

  else
  {
    v19 = 1;
  }

  return v19 & 1;
}

uint64_t sub_18B86ED4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_18BC21848();
  v20 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v19 - v14;
  swift_getAssociatedTypeWitness();
  result = swift_dynamicCastUnknownClass();
  if (result)
  {
    v17 = result;
    sub_18B80DBC4(a2, v21);
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4098);
    if (swift_dynamicCast())
    {
      (*(v13 + 56))(v12, 0, 1, AssociatedTypeWitness);
      (*(v13 + 32))(v15, v12, AssociatedTypeWitness);
      (*(a4 + 88))(v17, v15, a3, a4);

      return (*(v13 + 8))(v15, AssociatedTypeWitness);
    }

    else
    {

      (*(v13 + 56))(v12, 1, 1, AssociatedTypeWitness);
      return (*(v20 + 8))(v12, v9);
    }
  }

  return result;
}

void sub_18B86EFE8(uint64_t a1, uint64_t a2)
{
  v5 = _s7SectionVMa_1();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = _s4ItemVMa_2();
  v7 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v43 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v48 = v43 - v14;
  v47 = _s4PageVMa_0();
  MEMORY[0x1EEE9AC00](v47);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B82D0A4(a2, v16, _s4PageVMa_0);
  swift_beginAccess();
  v18 = sub_18BC1E3F8();
  sub_18B868E64(v18, v56);

  swift_beginAccess();
  sub_18B86F8BC(v56, v16);
  swift_endAccess();

  [*(a1 + OBJC_IVAR___SFTabOverview_closingItemsContainerView) setHidden_];
  v43[2] = a1;
  v19 = sub_18B852D5C();
  if (v19)
  {
    v20 = v19;
    [*(v19 + OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField) resignFirstResponder];
  }

  sub_18B86FFDC(0);
  v43[1] = v2;
  v21 = swift_unknownObjectUnownedLoadStrong();
  v22 = &v21[qword_1EA9D6C60];
  swift_beginAccess();
  v23 = *(v22 + 2);
  sub_18BC1E3F8();

  v24 = 0;
  v26 = v23 + 64;
  v25 = *(v23 + 64);
  v52 = v23;
  v27 = 1 << *(v23 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v25;
  v46 = a2 + 96;
  v30 = (v27 + 63) >> 6;
  v45 = v23 + 64;
  v44 = v30;
  while (v29)
  {
LABEL_12:
    v32 = *(v7 + 72);
    v33 = v48;
    sub_18B82D0A4(*(v52 + 48) + v32 * (__clz(__rbit64(v29)) | (v24 << 6)), v48, _s4ItemVMa_2);
    sub_18B82FD54(v33, v12, _s4ItemVMa_2);
    v34 = *(v46 + *(v47 + 20));
    v53 = *(v34 + 16);
    if (v53)
    {
      v35 = 0;
      v49 = v34;
      while (v35 < *(v34 + 16))
      {
        v36 = v54;
        sub_18B82D0A4(v34 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v35++, v54, _s7SectionVMa_1);
        v37 = *(v36 + *(v51 + 28));
        v38 = *(v37 + 16) + 1;
        while (--v38)
        {
          v39 = v37 + v32;
          sub_18B82D0A4(v37 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v9, _s4ItemVMa_2);
          updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B82D1D4(v9, _s4ItemVMa_2);
          v37 = v39;
          if (updated)
          {
            sub_18B82D1D4(v54, _s7SectionVMa_1);
            sub_18B9BD684(v12);
            sub_18B9BD690(v12);
            goto LABEL_6;
          }
        }

        sub_18B82D1D4(v54, _s7SectionVMa_1);
        v34 = v49;
        if (v35 == v53)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_23;
    }

LABEL_6:
    v29 &= v29 - 1;
    sub_18B82D1D4(v12, _s4ItemVMa_2);
    v26 = v45;
    v30 = v44;
  }

  while (1)
  {
    v31 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v31 >= v30)
    {

      v41 = swift_unknownObjectUnownedLoadStrong();
      v42 = *&v41[qword_1EA9D6BA8 + 64];
      sub_18BC1E1A8();

      v42();

      return;
    }

    v29 = *(v26 + 8 * v31);
    ++v24;
    if (v29)
    {
      v24 = v31;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_18B86F5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v20 - v7);
  v9 = *v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  sub_18B833990(a1, v12);
  sub_18B7CA054(a2, v13 + v14, &unk_1EA9D92F0);
  *v8 = v11;
  result = swift_storeEnumTagMultiPayload();
  if (*(v9 + 16))
  {
    result = sub_18B83B1C8(v8);
    if (v16)
    {
      v17 = result;
      v18 = *(v9 + 56);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
      sub_18B7CA054(v18 + *(*(v19 - 8) + 72) * v17, v21, &unk_1EA9D4F40);
      return sub_18B988BAC(v8, &unk_1EA9D92F0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_18B86F764(double a1, double a2, double a3, double a4)
{
  sub_18BC22158();
  sub_18B84FB4C(a1, a2, a3, a4);
  v8 = sub_18BC221A8();

  return sub_18B86F7F8(v8, a1, a2, a3, a4);
}

unint64_t sub_18B86F7F8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a1 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v12 = ~v6;
    do
    {
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      if (CGRectEqualToRect(*(*(v5 + 48) + 32 * v7), v14))
      {
        break;
      }

      v7 = (v7 + 1) & v12;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_18B86F8BC(_OWORD *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = a1[1];
    v9[0] = *a1;
    v9[1] = v4;
    v5 = a1[3];
    v9[2] = a1[2];
    v9[3] = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_18B86F9A8(v9, a2, isUniquelyReferenced_nonNull_native);
    result = sub_18B7CC96C(a2, _s4PageVMa_0);
    *v2 = v8;
  }

  else
  {
    sub_18B988BAC(a1, &unk_1EA9D53A0);
    sub_18BB59FE0(a2, v9);
    sub_18B7CC96C(a2, _s4PageVMa_0);
    return sub_18B988BAC(v9, &unk_1EA9D53A0);
  }

  return result;
}

uint64_t sub_18B86F9A8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s4PageVMa_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_18B8629FC(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_18BB2A5E0();
      goto LABEL_7;
    }

    sub_18B86FB4C(v16, a3 & 1);
    v22 = sub_18B8629FC(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B7EC67C(a2, v10, _s4PageVMa_0);
      return sub_18B86FF18(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7] + (v13 << 6);

  return sub_18BAA8FC0(a1, v20);
}

uint64_t sub_18B86FB4C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s4PageVMa_0();
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71B0);
  v45 = a2;
  result = sub_18BC21D78();
  v10 = result;
  if (*(v8 + 16))
  {
    v42 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v43 = v8;
    while (v15)
    {
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v26 = v23 | (v11 << 6);
      v27 = *(v44 + 72);
      v28 = *(v8 + 48) + v27 * v26;
      if (v45)
      {
        sub_18B80D424(v28, v7, _s4PageVMa_0);
        v29 = (*(v8 + 56) + (v26 << 6));
        v31 = *v29;
        v30 = v29[1];
        v32 = v29[3];
        v48 = v29[2];
        v49 = v32;
        v46 = v31;
        v47 = v30;
      }

      else
      {
        sub_18B8152B0(v28, v7, _s4PageVMa_0);
        sub_18B9D50A0(*(v8 + 56) + (v26 << 6), &v46);
      }

      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      result = sub_18BC221A8();
      v33 = -1 << *(v10 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v8 = v43;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v17 + 8 * v35);
          if (v39 != -1)
          {
            v18 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v8 = v43;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_18B80D424(v7, *(v10 + 48) + v27 * v18, _s4PageVMa_0);
      v19 = (*(v10 + 56) + (v18 << 6));
      v21 = v48;
      v20 = v49;
      v22 = v47;
      *v19 = v46;
      v19[1] = v22;
      v19[2] = v21;
      v19[3] = v20;
      ++*(v10 + 16);
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v15 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v8 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v12, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v40;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_18B86FF18(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = _s4PageVMa_0();
  result = sub_18B80D424(a2, v8 + *(*(v9 - 8) + 72) * a1, _s4PageVMa_0);
  v11 = (a4[7] + (a1 << 6));
  v12 = a3[3];
  v11[2] = a3[2];
  v11[3] = v12;
  v13 = a3[1];
  *v11 = *a3;
  v11[1] = v13;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_18B86FFDC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___SFTabOverview_searchState + 8))
  {
    v2 = result;
    v11 = 0;
    v10 = 0u;
    v9 = 0u;
    v8 = 0u;
    v3 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    v6 = MEMORY[0x1E69E6370];
    v7 = v3;
    v5[0] = 0;
    sub_18B8550A8(v5, 0xD000000000000014, 0x800000018BC62740);
    if (v2)
    {
      type metadata accessor for AnimationSettings();
      inited = swift_initStaticObject();
    }

    else
    {
      inited = 0x8000000000000010;
    }

    sub_18B9C0F34(0, 0, &v7, inited);
    sub_18B7EBAE8(inited);
    return sub_18B988BAC(&v7, &unk_1EA9D53A0);
  }

  return result;
}

uint64_t sub_18B8700D8()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for TabOverview();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  sub_18B870258();
  sub_18B870464();
  v1 = *&v0[OBJC_IVAR___SFTabOverview_closingItemsContainerView];
  v2 = sub_18B82FEA0();
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setBounds_];
  sub_18B9BEA84();
  sub_18B86D0C4();
  v11 = *&v0[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView];
  v12 = v0[OBJC_IVAR___SFTabOverview_contentObscuringConfiguration + 40] == 1 && *&v0[OBJC_IVAR___SFTabOverview_content + 32] == 0;
  v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x98);
  result = swift_beginAccess();
  *(v11 + v13) = v12;
  return result;
}

id sub_18B870258()
{
  v1 = *&v0[OBJC_IVAR___SFTabOverview_backgroundView];
  [v0 bounds];
  [v1 setBounds_];
  [v0 bounds];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  [v1 setCenter_];
  v7 = [v0 traitCollection];
  [v7 displayCornerRadius];
  v9 = v8;

  v10 = 8.0;
  if (v9 > 8.0)
  {
    v10 = v9;
  }

  return [v1 _setContinuousCornerRadius_];
}

void sub_18B870464()
{
  v1 = v0;
  v2 = sub_18B82FEA0();
  v3 = &v1[OBJC_IVAR___SFTabOverview_content];
  [v2 setAlwaysBounceVertical_];

  v4 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
  v5 = *&v1[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView];
  [v1 bounds];
  [v5 bounds];
  [v5 setBounds_];

  v6 = *&v1[v4];
  [v1 bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  [v6 setCenter_];

  v12 = *&v1[v4];
  if (*&v1[OBJC_IVAR___SFTabOverview_searchState + 8])
  {
    v13 = v12;
  }

  else
  {
    v14 = *(**&v1[OBJC_IVAR___SFTabOverview_gridLayout] + 848);
    v13 = v12;
    v14();
  }

  UIEdgeInsetsMakeWithEdges();
  v19 = [objc_opt_self() valueWithUIEdgeInsets_];
  swift_beginAccess();
  objc_setAssociatedObject(v13, &unk_1EA9DA758, v19, 1);
  swift_endAccess();

  [*&v1[v4] setScrollEnabled_];
  [*&v1[v4] setKeyboardDismissMode_];
  v20 = *&v1[v4];
  [v20 adjustedContentInset];
  swift_beginAccess();
  UIEdgeInsetsMakeWithEdges();
  UIEdgeInsetsAdd();
  UIEdgeInsetsMakeWithEdges();
  UIEdgeInsetsAdd();
  [v20 setScrollIndicatorInsets_];
}

uint64_t sub_18B87145C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B871494()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3578);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_18B87155C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

BOOL sub_18B871680(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_18B8716B0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_18B8716DC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_18B8717CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_18B8717DC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_18B871830@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC20BD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18B87185C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_18B984C18(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_18B8718A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B8718C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TabSnapshotRegistration.Visibility(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B871918()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B871950()
{

  return swift_deallocObject();
}

uint64_t sub_18B871988()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B8719D0()
{
  v1 = sub_18BC1EA98();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B871A7C()
{

  return swift_deallocObject();
}

uint64_t sub_18B871AD4()
{
  v1 = sub_18BC1EA98();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B871BAC()
{
  v1 = sub_18BC1EA98();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18B871C60()
{
  v1 = sub_18BC1EA98();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B871D6C()
{

  return swift_deallocObject();
}

uint64_t sub_18B871DAC()
{
  v1 = sub_18BC1EA98();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B871EA0()
{
  v1 = sub_18BC1EA98();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  sub_18B9880FC(*(v0 + v5), *(v0 + v5 + 8));
  sub_18B9880FC(*(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));

  return swift_deallocObject();
}

uint64_t sub_18B871FA8()
{

  return swift_deallocObject();
}

uint64_t sub_18B871FE0()
{

  return swift_deallocObject();
}

uint64_t sub_18B872020()
{
  v1 = sub_18BC1EA98();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B872104()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A88);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18B8721AC()
{

  return swift_deallocObject();
}

uint64_t sub_18B872230@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_18B8722CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18BC1EC08();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18B872378(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_18BC1EC08();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18B87245C()
{
  v1 = 0x74616F6C66;
  if (*v0 != 1)
  {
    v1 = 0x6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1819242338;
  }
}

uint64_t sub_18B8724A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18B9954C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18B872520()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B87255C()
{

  return swift_deallocObject();
}

uint64_t sub_18B872594()
{

  return swift_deallocObject();
}

uint64_t sub_18B872620()
{

  return swift_deallocObject();
}

uint64_t sub_18B87266C()
{

  return swift_deallocObject();
}

uint64_t sub_18B8726C8()
{

  return swift_deallocObject();
}

uint64_t sub_18B872700()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B872738()
{

  return swift_deallocObject();
}

uint64_t sub_18B87277C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_18B872838(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBE00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18B872930()
{

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B8729B8()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B8729F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18B872A30@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_18B872AE8()
{

  return swift_deallocObject();
}

uint64_t sub_18B872B20()
{

  return swift_deallocObject();
}

uint64_t sub_18B872B84()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B872BBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12MobileSafari38SFEditBookmarkCollectionViewController_suggestedFolders;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_18BC1E3F8();
}

uint64_t sub_18B872C34()
{

  return swift_deallocObject();
}

uint64_t sub_18B872C6C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B872CA4()
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D30);
  v1 = *(v16 - 8);
  v15 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v15 + v2 + v5) & ~v5;
  v14 = v6;
  v7 = *(v4 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4D20);
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v5 + v10) & ~v5;
  (*(v1 + 8))(v0 + v15, v16);
  v12 = *(v4 + 8);
  v12(v0 + v14, v3);
  (*(v9 + 8))(v0 + v10, v8);
  v12(v0 + v11, v3);
  v12(v0 + ((v7 + v5 + v11) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_18B872EEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18B872F80()
{

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 120))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B873048(uint64_t a1, uint64_t a2)
{
  result = sub_18B812E34(&qword_1EA9D4F18, a2, type metadata accessor for TabOverview);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18B8730A8()
{

  return swift_deallocObject();
}

uint64_t sub_18B8730EC()
{
  v1 = (_s4ItemVMa_2() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v1[7];
  v5 = sub_18BC1EC08();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_18B873214()
{

  sub_18B7EBAE8(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18B87325C()
{

  return swift_deallocObject();
}

void sub_18B87336C()
{
  sub_18B9EA7EC();
  sub_18BC1E878();
  __break(1u);
}

uint64_t sub_18B8733F4()
{

  return swift_deallocObject();
}

uint64_t sub_18B873444()
{

  return swift_deallocObject();
}

uint64_t sub_18B87347C()
{
  v1 = _s4PageVMa_0();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = sub_18BC1EC08();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + v2 + *(v1 + 20);
  if (*(v4 + 32))
  {
  }

  v5 = *(v4 + 88);
  if (v5 != 1)
  {
  }

  v6 = v0 + v2 + *(v1 + 32);
  if (*(v6 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B87361C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87365C()
{

  return swift_deallocObject();
}

uint64_t sub_18B8736AC()
{

  return swift_deallocObject();
}

uint64_t sub_18B8736F4()
{
  v1 = _s4PageVMa();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = v1[8];
  v5 = sub_18BC1EC08();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  if (*(v0 + v2 + v1[14]) >= 3uLL)
  {
  }

  v6 = v3 + v1[16];
  if (*(v6 + 24))
  {
  }

  v7 = (v3 + v1[18]);

  return swift_deallocObject();
}

uint64_t sub_18B873888()
{
  v1 = _s4PageVMa();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = v1[8];
  v5 = sub_18BC1EC08();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  if (*(v0 + v2 + v1[14]) >= 3uLL)
  {
  }

  v6 = v3 + v1[16];
  if (*(v6 + 24))
  {
  }

  v7 = (v3 + v1[18]);

  return swift_deallocObject();
}

uint64_t sub_18B873A20()
{
  v1 = _s4PageVMa();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = v1[8];
  v5 = sub_18BC1EC08();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  if (*(v0 + v2 + v1[14]) >= 3uLL)
  {
  }

  v6 = v3 + v1[16];
  if (*(v6 + 24))
  {
  }

  v7 = (v3 + v1[18]);

  return swift_deallocObject();
}

void sub_18B873C78(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_18BC20B98();
  [v2 setTitle_];
}

uint64_t sub_18B873DCC()
{

  return swift_deallocObject();
}

uint64_t sub_18B873E04()
{

  return swift_deallocObject();
}

uint64_t sub_18B873E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15DropDestinationVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18B873EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s15DropDestinationVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18B873FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7SectionVMa_1();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18B8740AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s7SectionVMa_1();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_18B8741B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18B9F6F28();
  *a1 = result;
  return result;
}

void sub_18B8741E0(id *a1)
{
  v1 = *a1;
  sub_18B9F725C();
}

__n128 sub_18B87423C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18B874250()
{

  return swift_deallocObject();
}

uint64_t sub_18B8742B0()
{

  return swift_deallocObject();
}

uint64_t sub_18B874314()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18B87434C()
{

  return swift_deallocObject();
}

uint64_t sub_18B874394()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18B8743EC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18B874430()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);

  return swift_deallocObject();
}

uint64_t sub_18B8744AC()
{

  return swift_deallocObject();
}

uint64_t sub_18B8744EC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B874524()
{

  return swift_deallocObject();
}

uint64_t sub_18B87455C()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B874594()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B8745E4()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87461C()
{

  return swift_deallocObject();
}

uint64_t sub_18B874664()
{

  return swift_deallocObject();
}

uint64_t sub_18B87469C()
{

  return swift_deallocObject();
}

uint64_t sub_18B8746D4()
{

  return swift_deallocObject();
}

uint64_t sub_18B874710()
{

  return swift_deallocObject();
}

uint64_t sub_18B874750()
{

  return swift_deallocObject();
}

uint64_t sub_18B874790()
{

  return swift_deallocObject();
}

uint64_t sub_18B87480C()
{

  return swift_deallocObject();
}

uint64_t sub_18B874844()
{

  return swift_deallocObject();
}

uint64_t sub_18B874884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18BA1D7F8(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_18BA1D830(v5);
  *a2 = Strong;
  return result;
}

uint64_t sub_18B87494C()
{

  return swift_deallocObject();
}

uint64_t sub_18B8749B8()
{

  return swift_deallocObject();
}

uint64_t sub_18B874A04()
{

  return swift_deallocObject();
}

uint64_t sub_18B874A3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_18BC1E3F8();
}

uint64_t sub_18B874A98@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_18B874B50@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_18B874C10()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B874C48()
{

  return swift_deallocObject();
}

id sub_18B874D10@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFocusedInPageMenu];
  *a2 = result;
  return result;
}

id sub_18B874D60@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 needsInitialBlink];
  *a2 = result;
  return result;
}

uint64_t sub_18B874DA8()
{

  return swift_deallocObject();
}

uint64_t sub_18B874DF0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B874E28()
{

  return swift_deallocObject();
}

uint64_t sub_18B874E78()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B874EB0()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B874F00()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B874F38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D64C8);
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v3 + v8) & ~v3;
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  (*(v7 + 8))(v0 + v8, v6);
  v10(v0 + v9, v1);

  return swift_deallocObject();
}

uint64_t sub_18B8750C8()
{

  return swift_deallocObject();
}

uint64_t sub_18B875110()
{

  return swift_deallocObject();
}

uint64_t sub_18B875150()
{

  return swift_deallocObject();
}

uint64_t sub_18B8751D4()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B87520C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B875244()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B875294()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65C0);
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v3 + v8) & ~v3;
  v10 = (v5 + v3 + v9) & ~v3;
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  (*(v7 + 8))(v0 + v8, v6);
  v11(v0 + v9, v1);
  v11(v0 + v10, v1);

  return swift_deallocObject();
}

uint64_t sub_18B87544C()
{

  return swift_deallocObject();
}

uint64_t sub_18B875490()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B8754C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 728))();
  *a2 = result;
  return result;
}

__n128 sub_18B875578(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void sub_18B875584(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 752))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_18B87579C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 848))();
  *a2 = result;
  return result;
}

uint64_t sub_18B8757F0(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 856);
  v3 = sub_18BC1E1A8();
  return v2(v3);
}

uint64_t sub_18B875A68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 944))();
  *a2 = result;
  return result;
}

uint64_t sub_18B875ABC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 952);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_18B875B8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18BC1E0A8();
  *a1 = v3;
  return result;
}

uint64_t sub_18B875C04@<X0>(void *a1@<X8>)
{
  result = sub_18BC1E0A8();
  *a1 = v3;
  return result;
}

__n128 sub_18B875C7C@<Q0>(uint64_t a1@<X8>)
{
  sub_18BC1E0A8();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_18B875CC4@<X0>(void *a1@<X8>)
{
  result = sub_18BC1E0A8();
  *a1 = v3;
  return result;
}

__n128 sub_18B875D3C@<Q0>(uint64_t a1@<X8>)
{
  sub_18BC1E0A8();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

double sub_18B875D84@<D0>(_OWORD *a1@<X8>)
{
  sub_18BC1E0A8();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_18B875E04()
{

  return swift_deallocObject();
}

uint64_t sub_18B875E3C()
{
  v1 = (_s4ItemVMa_0() - 8);
  v2 = (*(*v1 + 80) + 152) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  v6 = v0 + v2;
  v7 = v1[8];
  v8 = sub_18BC1EC08();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_18B875F7C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + v4 + 8) & ~v2;
  v6 = v0 + v3;
  v7 = _s4ItemVMa_0();
  v8 = *(*(v7 - 8) + 48);
  if (!v8(v6, 1, v7))
  {
    v9 = *(v7 + 24);
    v10 = sub_18BC1EC08();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  v11 = v0 + v5;
  if (!v8(v0 + v5, 1, v7))
  {
    v12 = *(v7 + 24);
    v13 = sub_18BC1EC08();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_18B876184()
{

  return swift_deallocObject();
}

uint64_t sub_18B8761F4()
{

  return swift_deallocObject();
}

uint64_t sub_18B87622C()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B876264()
{

  return swift_deallocObject();
}

uint64_t sub_18B8762A0()
{

  return swift_deallocObject();
}

uint64_t sub_18B8762E0()
{

  return swift_deallocObject();
}

uint64_t sub_18B876350()
{

  return swift_deallocObject();
}

id sub_18B876408@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contextMenuInteraction];
  *a2 = result;
  return result;
}

id sub_18B876458@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 customBodyView];
  *a2 = result;
  return result;
}

id sub_18B8764A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 primaryAction];
  *a2 = result;
  return result;
}

id sub_18B8764F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 readerContext];
  *a2 = result;
  return result;
}

id sub_18B876548@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 secondaryAction];
  *a2 = result;
  return result;
}

id sub_18B8765E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_18B876628@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 observer];
  *a2 = result;
  return result;
}

uint64_t sub_18B876678()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B8766F4()
{

  return swift_deallocObject();
}

uint64_t sub_18B87673C()
{
  v1 = _s4PageVMa_0();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v0 + v2 + *(v1 + 20);
  if (*(v5 + 32))
  {
  }

  v6 = *(v5 + 88);
  if (v6 != 1)
  {
  }

  v7 = v0 + v2 + *(v1 + 32);
  if (*(v7 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B8768E8()
{
  v1 = _s4PageVMa_0();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = sub_18BC1EC08();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = v0 + v2 + *(v1 + 20);
  if (*(v4 + 32))
  {
  }

  v5 = *(v4 + 88);
  if (v5 != 1)
  {
  }

  v6 = v0 + v2 + *(v1 + 32);
  if (*(v6 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B876A88()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + v4 + 8) & ~v2;
  v6 = v0 + v3;
  v7 = _s4PageVMa_0();
  v8 = *(*(v7 - 8) + 48);
  if (!v8(v6, 1, v7))
  {
    v9 = sub_18BC1EC08();
    (*(*(v9 - 8) + 8))(v6, v9);
    v10 = v6 + *(v7 + 20);
    if (*(v10 + 32))
    {
    }

    v11 = *(v10 + 88);
    if (v11 != 1)
    {
    }

    v12 = v6 + *(v7 + 32);
    if (*(v12 + 24))
    {
    }
  }

  v13 = v0 + v5;
  if (!v8(v0 + v5, 1, v7))
  {
    v14 = sub_18BC1EC08();
    (*(*(v14 - 8) + 8))(v0 + v5, v14);
    v15 = v13 + *(v7 + 20);
    if (*(v15 + 32))
    {
    }

    v16 = *(v15 + 88);
    if (v16 != 1)
    {
    }

    v17 = v13 + *(v7 + 32);
    if (*(v17 + 24))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18B876DBC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_18B876E8C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B876EC4()
{

  return swift_deallocObject();
}

id sub_18B876F08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_18B876F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18BC1EA98();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18B877020(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_18BC1EA98();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18B8770C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B8770FC()
{
  v1 = sub_18BC1EC08();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B8771C0()
{

  return swift_deallocObject();
}

uint64_t sub_18B8772E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1E0C8();
  *a1 = result;
  return result;
}

uint64_t sub_18B87730C(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_18B87733C()
{

  return swift_deallocObject();
}

uint64_t sub_18B877388()
{

  return swift_deallocObject();
}

uint64_t sub_18B8773C8()
{

  return swift_deallocObject();
}

uint64_t sub_18B877428()
{

  return swift_deallocObject();
}

double sub_18B877478@<D0>(uint64_t a1@<X8>)
{
  sub_18B810930(v6);
  v2 = v6[1];
  v3 = v8;
  v4 = v9;
  *a1 = v6[0];
  *(a1 + 8) = v2;
  result = *&v7;
  *(a1 + 16) = v7;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  return result;
}

__n128 sub_18B8774D4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18B8774E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_18B816518(&v6);
  v3 = v7;
  v4 = v8;
  v5 = v9;
  *a1 = v6;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4;
  *(a1 + 10) = v5;
  return result;
}

double sub_18B87754C@<D0>(_OWORD *a1@<X8>)
{
  sub_18B81D198(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 9);
  *(a1 + 41) = *(v5 + 9);
  return result;
}

uint64_t sub_18B8775A8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_18BA70E60();

  return sub_18BC1E3F8();
}

uint64_t sub_18B877678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 432))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18B8776CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 440);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_18B877744@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  return result;
}

uint64_t sub_18B877798(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 464);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_18B87781C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1ECC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_18BC1ED38();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18B87790C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_18BC1ECC8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_18BC1ED38();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_18B877A18()
{

  return swift_deallocObject();
}

uint64_t sub_18B877A68()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B877AA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
  return sub_18BC1E3F8();
}

uint64_t sub_18B877B00()
{

  return swift_deallocObject();
}

uint64_t sub_18B877C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18B877D24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18BC1EC08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18B877EF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1E0C8();
  *a1 = result;
  return result;
}

uint64_t sub_18B877F20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BC1E0C8();
  *a1 = result;
  return result;
}

id sub_18B877F6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 borderColor];
  *a2 = result;
  return result;
}

id sub_18B877FC4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLocked];
  *a2 = result;
  return result;
}

uint64_t sub_18B87800C()
{

  return swift_deallocObject();
}

uint64_t sub_18B87804C()
{

  return swift_deallocObject();
}

uint64_t sub_18B878084()
{

  return swift_deallocObject();
}

uint64_t sub_18B8780E0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_18B8781E0()
{

  return swift_deallocObject();
}

uint64_t sub_18B878228@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_id;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a2 = *v3;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_18B878284(int *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *a2 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_id;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 4) = v3;
  return result;
}

uint64_t sub_18B8785EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12MobileSafari35SFBookmarksCollectionViewController_explanationConfigurationProvider);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_18BC1E1A8();
}

uint64_t sub_18B878990()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B8789C8()
{

  return swift_deallocObject();
}

uint64_t sub_18B878A00()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18B878A48()
{

  if (*(v0 + 200))
  {
  }

  if (*(v0 + 216))
  {
  }

  if (*(v0 + 232))
  {
  }

  if (*(v0 + 248))
  {
  }

  if (*(v0 + 264))
  {
  }

  if (*(v0 + 280))
  {
  }

  if (*(v0 + 296))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B878B40()
{

  if (*(v0 + 200))
  {
  }

  if (*(v0 + 216))
  {
  }

  if (*(v0 + 232))
  {
  }

  if (*(v0 + 248))
  {
  }

  if (*(v0 + 264))
  {
  }

  if (*(v0 + 280))
  {
  }

  if (*(v0 + 296))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18B878C40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D8040);
  v28 = *(v1 - 8);
  v29 = v1;
  v24 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v2 = *(v28 + 64);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8038);
  v26 = *(v27 - 8);
  v22 = (v24 + v2 + *(v26 + 80)) & ~*(v26 + 80);
  v3 = *(v26 + 64);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8030);
  v17 = *(v25 - 8);
  v20 = (v22 + v3 + *(v17 + 80)) & ~*(v17 + 80);
  v4 = *(v17 + 64);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8028);
  v5 = *(v23 - 8);
  v18 = (v20 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = *(v5 + 64);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8020);
  v7 = *(v21 - 8);
  v15 = (v18 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v8 = *(v7 + 64);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8008);
  v9 = *(v19 - 8);
  v10 = (v15 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8000);
  v12 = *(v16 - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  (*(v28 + 8))(v0 + v24, v29);
  (*(v26 + 8))(v0 + v22, v27);
  (*(v17 + 8))(v0 + v20, v25);
  (*(v5 + 8))(v0 + v18, v23);
  (*(v7 + 8))(v0 + v15, v21);
  (*(v9 + 8))(v0 + v10, v19);
  (*(v12 + 8))(v0 + v13, v16);

  return swift_deallocObject();
}

uint64_t sub_18B8790A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8018);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8010);
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_18B879204()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B8792A0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18B879364()
{

  return swift_deallocObject();
}

uint64_t sub_18B87939C()
{

  return swift_deallocObject();
}

id sub_18B8793F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 _effectiveTraitCollection];
  *a2 = result;
  return result;
}

uint64_t sub_18B879430()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B879468()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B8794D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18B87951C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_18B879564@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id sub_18B8795B4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 contentBoundsUpdating];
  *a2 = result;
  return result;
}

uint64_t sub_18B879600()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18B879654()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18B8796B8()
{

  return swift_deallocObject();
}

uint64_t sub_18B8796F0()
{

  return swift_deallocObject();
}

uint64_t sub_18B879730()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B879778()
{

  return swift_deallocObject();
}

uint64_t sub_18B8797BC()
{

  return swift_deallocObject();
}

uint64_t sub_18B8797F4()
{

  return swift_deallocObject();
}

uint64_t sub_18B87983C()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B879874()
{

  return swift_deallocObject();
}

__n128 sub_18B879908(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18B87998C()
{

  return swift_deallocObject();
}

uint64_t sub_18B8799C4()
{

  return swift_deallocObject();
}

__n128 sub_18B879A20(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_18B879A7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}