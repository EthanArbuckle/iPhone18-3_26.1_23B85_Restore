void sub_1A3378CA4()
{
  type metadata accessor for ImageCroppingView();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8D60);
  MEMORY[0x1A58EE120](v1, v0);
  sub_1A33778D4(v1);
}

uint64_t sub_1A3378D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8D38);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - v4;
  v6 = sub_1A34CB460();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D40);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  sub_1A34CB430();
  v18[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5468);
  sub_1A32B51E4();
  sub_1A34CA680();
  sub_1A34CB440();
  v18[4] = a1;
  sub_1A34CA680();
  v14 = *(v3 + 48);
  v15 = *(v8 + 16);
  v15(v5, v13, v7);
  v15(&v5[v14], v10, v7);
  sub_1A34CB2C0();
  v16 = *(v8 + 8);
  v16(v10, v7);
  return (v16)(v13, v7);
}

uint64_t sub_1A3378FB0(uint64_t a1)
{
  v2 = type metadata accessor for ImageCroppingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  v9 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x4C45434E4143, 0xE600000000000000);
  v11 = v10;
  sub_1A337C4F8(a1, &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_1A337C55C(&v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  v19[0] = v9;
  v19[1] = v11;
  v16 = v19;
  v17 = 0x6B72616D78;
  v18 = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();

  sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
  sub_1A34CC1F0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A3379278(uint64_t a1)
{
  v2 = sub_1A34CB0B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8080);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = sub_1A34CA7A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A337C5D8(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A34CA790();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A33794E0(uint64_t a1)
{
  v2 = type metadata accessor for ImageCroppingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  v9 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 1162760004, 0xE400000000000000);
  v11 = v10;
  sub_1A337C4F8(a1, &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_1A337C55C(&v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  v19[0] = v9;
  v19[1] = v11;
  v16 = v19;
  v17 = 0x72616D6B63656863;
  v18 = 0xE90000000000006BLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  sub_1A34CC790();

  sub_1A3284D0C(&unk_1EB0C0500, &unk_1EB0C8D50);
  sub_1A34CC1F0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A33797B4()
{
  v0 = sub_1A34CA7A0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A33775F8();
  sub_1A3377410(v3);
  sub_1A34CA790();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A3379884@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8C28);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - v4;
  v19 = v1;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8C30);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C38);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C58);
  v11 = sub_1A337C070();
  v20 = v10;
  v21 = MEMORY[0x1E69815C0];
  v22 = v11;
  v23 = MEMORY[0x1E6981568];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_1A328A95C();
  v20 = v9;
  v21 = MEMORY[0x1E69E6158];
  v22 = OpaqueTypeConformance2;
  v23 = v13;
  v14 = swift_getOpaqueTypeConformance2();
  v20 = v8;
  v21 = v14;
  v15 = swift_getOpaqueTypeConformance2();
  v16 = sub_1A3284D0C(&qword_1EB0C8CB8, &qword_1EB0C8C40);
  v20 = v6;
  v21 = v7;
  v22 = v15;
  v23 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1A34CA9F0();
  sub_1A3284D0C(&qword_1EB0C8CC0, &qword_1EB0C8C28);
  sub_1A34CC1F0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A3379B70(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_zoomRect;
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v3;
  *(v2 + 32) = *(a1 + 32);
  v4 = *(v1 + OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_scrollView);
  [v4 frame];
  result = CGRectIsEmpty(v8);
  if ((result & 1) == 0 && (*(v2 + 32) & 1) == 0)
  {
    [v4 zoomToRect:0 animated:{*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24)}];
    memset(v6, 0, sizeof(v6));
    v7 = 1;
    return sub_1A3379B70(v6);
  }

  return result;
}

uint64_t sub_1A3379C18()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ZoomableScrollViewWrapper();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_scrollView];
  [v1 setBounds_];
  [v0 bounds];
  MidX = CGRectGetMidX(v7);
  [v0 bounds];
  [v1 setCenter_];
  [v1 frame];
  result = CGRectIsEmpty(v9);
  if ((result & 1) == 0 && (v0[OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_zoomRect + 32] & 1) == 0)
  {
    [v1 zoomToRect:0 animated:{*&v0[OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_zoomRect], *&v0[OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_zoomRect + 8], *&v0[OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_zoomRect + 16], *&v0[OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_zoomRect + 24]}];
    memset(v5, 0, sizeof(v5));
    v6 = 1;
    return sub_1A3379B70(v5);
  }

  return result;
}

id sub_1A3379EB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ZoomableScrollViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3379F20()
{
  result = type metadata accessor for ZoomableScrollView();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A337A020()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1A34CDF20();
  sub_1A34CDF40();
  if (v5 != 1)
  {
    sub_1A337BA7C(v1, v2, v3, v4);
  }

  return sub_1A34CDF70();
}

uint64_t sub_1A337A0AC()
{
  if (*(v0 + 32) == 1)
  {
    return sub_1A34CDF40();
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *v0;
  v4 = *(v0 + 8);
  sub_1A34CDF40();

  return sub_1A337BA7C(v5, v4, v3, v2);
}

uint64_t sub_1A337A140()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_1A34CDF20();
  sub_1A34CDF40();
  if (v5 != 1)
  {
    sub_1A337BA7C(v1, v2, v3, v4);
  }

  return sub_1A34CDF70();
}

BOOL sub_1A337A1C8(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    return (*(a2 + 32) & 1) == 0 && CGRectEqualToRect(*a1, *a2);
  }

  return (*(a2 + 32) & 1) != 0;
}

void sub_1A337A21C()
{
  v1 = sub_1A34CB9C0();
  MEMORY[0x1EEE9AC00](v1);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) init];
  swift_getWitnessTable();
  sub_1A34CB830();
  sub_1A34CB810();
  [v2 setDelegate_];

  v3 = v2;
  [v3 setClipsToBounds_];
  [v3 setShowsHorizontalScrollIndicator_];
  [v3 setShowsVerticalScrollIndicator_];
  [v3 setContentInsetAdjustmentBehavior_];
  [v3 setBouncesZoom_];
  [v3 setMinimumZoomScale_];
  v29 = v0;
  [v3 setMaximumZoomScale_];
  sub_1A34CB810();
  v4 = *&v32[*((*MEMORY[0x1E69E7D40] & *v32) + 0x60)];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8B98);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A34DAA10;
  sub_1A34CB9B0();
  v31 = v5;
  sub_1A337C29C(&qword_1EB0C8BA0, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8BA8);
  sub_1A3284D0C(&qword_1EB0C8BB0, &qword_1EB0C8BA8);
  sub_1A34CD960();
  sub_1A34CB2D0();

  sub_1A34CB810();
  v6 = *&v32[*((*MEMORY[0x1E69E7D40] & *v32) + 0x60)];

  v7 = [v6 view];
  if (v7)
  {
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 addSubview_];
    v9 = [v7 topAnchor];
    v10 = [v3 topAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    [v11 setActive_];
    v12 = [v7 bottomAnchor];
    v13 = [v3 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    [v14 setActive_];
    v15 = [v7 leadingAnchor];
    v16 = [v3 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    [v17 setActive_];
    v18 = [v7 trailingAnchor];
    v19 = [v3 trailingAnchor];

    v20 = [v18 constraintEqualToAnchor_];
    [v20 setActive_];

    v21 = *(v29 + 96);
    v22 = *(v29 + 104);
    v23 = type metadata accessor for ZoomableScrollViewWrapper();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_zoomRect];
    *v25 = 0u;
    *(v25 + 1) = 0u;
    v25[32] = 1;
    v26 = &v24[OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_cropSize];
    *v26 = v21;
    *(v26 + 1) = v22;
    *&v24[OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_scrollView] = v3;
    v30.receiver = v24;
    v30.super_class = v23;
    v27 = v3;
    v28 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v28 addSubview_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1A337A880(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ZoomableScrollView.Coordinator();
  sub_1A34CB300();
  (*(v5 + 16))(v7, v2 + *(a1 + 56), v4);
  v8 = sub_1A34CB2E0();
  return sub_1A337BC0C(v8, v2);
}

void sub_1A337A994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = *(a3 + 16);
  v6 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v14 + OBJC_IVAR____TtC14ContactsUICoreP33_83DFF39AC61AC97E6598631873AD735425ZoomableScrollViewWrapper_scrollView);
  [v15 setMinimumZoomScale_];
  [v15 setMaximumZoomScale_];
  swift_getWitnessTable();
  sub_1A34CB830();
  sub_1A34CB810();
  v16 = *&v28[0];
  sub_1A337AC7C(v13);

  v17 = v13[7];
  v18 = v13[8];
  v19 = v13[9];
  v20 = v13[10];
  LOBYTE(v16) = *(v13 + 88);
  (*(v10 + 8))(v13, a3);
  v21 = *(v4 + 88);
  v29 = v21;
  v22 = *(v4 + 72);
  v28[0] = *(v4 + 56);
  v28[1] = v22;
  if (v16)
  {
    if (v21)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if ((v21 & 1) == 0)
  {
    v30.origin.x = v17;
    v30.origin.y = v18;
    v30.size.width = v19;
    v30.size.height = v20;
    if (!CGRectEqualToRect(v30, *(v4 + 56)))
    {
LABEL_6:
      sub_1A3379B70(v28);
    }
  }

LABEL_7:
  sub_1A34CB810();
  v23 = v27;
  v24 = *(v23 + *((*MEMORY[0x1E69E7D40] & *v23) + 0x60));

  (*(v6 + 16))(v8, v4 + *(a3 + 56), v26);
  sub_1A34CB2F0();

  sub_1A34CB810();
  v25 = v27;
  (*(v10 + 16))(v13, v4, a3);
  sub_1A337AD50(v13);
}

uint64_t sub_1A337AC7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = type metadata accessor for ZoomableScrollView();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1A337AD50(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = type metadata accessor for ZoomableScrollView();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

id sub_1A337AE2C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1A337BC58();

  return v6;
}

void sub_1A337AE88(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1A3206B64(v4);
}

void sub_1A337AEF0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1A3206B64(v6);
}

uint64_t sub_1A337AF68(void *a1)
{
  v2 = type metadata accessor for ZoomableScrollView();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v11 - v4);
  sub_1A337AC7C(v11 - v4);
  [a1 contentOffset];
  sub_1A3379FC4();
  v6 = *(v3 + 8);
  v6(v5, v2);
  sub_1A337AC7C(v5);
  [a1 zoomScale];
  v7 = v5[5];
  v8 = v5[6];
  v11[1] = v5[4];
  v11[2] = v7;
  v11[3] = v8;
  v11[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8BB8);
  sub_1A34CC910();
  return (v6)(v5, v2);
}

id sub_1A337B13C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ZoomableScrollView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A337B1AC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *((*v2 & *a1) + 0x68);
  v4 = type metadata accessor for ZoomableScrollView();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

void sub_1A337B2B8()
{
  sub_1A337BF38(319, &qword_1EB0C8B80, type metadata accessor for CGPoint, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1A337BEE8(319, &qword_1EB0C8B88, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A337B3D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 128) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((((((((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
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

void sub_1A337B57C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 128) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = (((((((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1A337B7F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A337B810(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

unint64_t sub_1A337B854()
{
  result = qword_1EB0C8B90;
  if (!qword_1EB0C8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8B90);
  }

  return result;
}

id sub_1A337B8B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1A337A880(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A337B928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1A337B9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1A337BA20()
{
  swift_getWitnessTable();
  sub_1A34CB3A0();
  __break(1u);
}

uint64_t sub_1A337BA7C(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x1A58EF770](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x1A58EF770](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x1A58EF770](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x1A58EF770](*&v9);
}

id sub_1A337BB00(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D40];
  *&v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x60)] = a1;
  v5 = *((*v4 & *v2) + 0x68);
  v6 = type metadata accessor for ZoomableScrollView();
  (*(*(v6 - 8) + 16))(&v2[v5], a2, v6);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ZoomableScrollView.Coordinator();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1A337BC58()
{
  v1 = [*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60)) view];

  return v1;
}

uint64_t type metadata accessor for ImageCroppingView()
{
  result = qword_1EB0C8BD8;
  if (!qword_1EB0C8BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A337BD28()
{
  sub_1A337BF38(319, &qword_1EB0C1158, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A337BEE8(319, &qword_1EB0C8BF0, &type metadata for ZoomableScrollPosition, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A337BF38(319, &qword_1EB0C8BF8, type metadata accessor for CGPoint, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A337BEE8(319, &qword_1EB0C8C00, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A337BF38(319, &unk_1EB0C8C08, sub_1A337BF9C, MEMORY[0x1E6981948]);
          if (v4 <= 0x3F)
          {
            sub_1A337BFE8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A337BEE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A337BF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A337BF9C()
{
  result = qword_1EB0C00D0;
  if (!qword_1EB0C00D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C00D0);
  }

  return result;
}

void sub_1A337BFE8()
{
  if (!qword_1EB0C8C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C20);
    v0 = sub_1A34CC960();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C8C18);
    }
  }
}

unint64_t sub_1A337C070()
{
  result = qword_1EB0C8C60;
  if (!qword_1EB0C8C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C58);
    sub_1A337C0FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8C60);
  }

  return result;
}

unint64_t sub_1A337C0FC()
{
  result = qword_1EB0C8C68;
  if (!qword_1EB0C8C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C70);
    sub_1A337C1B4();
    sub_1A3284D0C(&qword_1EB0C8CA0, &unk_1EB0C8CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8C68);
  }

  return result;
}

unint64_t sub_1A337C1B4()
{
  result = qword_1EB0C8C78;
  if (!qword_1EB0C8C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C80);
    sub_1A3284D0C(&qword_1EB0C8C88, &unk_1EB0C8C90);
    sub_1A337C29C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8C78);
  }

  return result;
}

uint64_t sub_1A337C29C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A337C2E4()
{
  result = qword_1EB0C8D00;
  if (!qword_1EB0C8D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8CC8);
    sub_1A337C370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8D00);
  }

  return result;
}

unint64_t sub_1A337C370()
{
  result = qword_1EB0C8D08;
  if (!qword_1EB0C8D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8D10);
    sub_1A337C3FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8D08);
  }

  return result;
}

unint64_t sub_1A337C3FC()
{
  result = qword_1EB0C8D18;
  if (!qword_1EB0C8D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8CE8);
    sub_1A3284D0C(&qword_1EB0C8D20, &qword_1EB0C8D28);
    sub_1A3284D0C(&qword_1EB0C8D30, &qword_1EB0C8CF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8D18);
  }

  return result;
}

uint64_t sub_1A337C4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageCroppingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A337C55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageCroppingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A337C5D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A337C678(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ImageCroppingView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A337C6EC()
{
  result = qword_1EB0C8D80;
  if (!qword_1EB0C8D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8D78);
    sub_1A337C778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8D80);
  }

  return result;
}

unint64_t sub_1A337C778()
{
  result = qword_1EB0C8D88;
  if (!qword_1EB0C8D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8D88);
  }

  return result;
}

uint64_t sub_1A337C7FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A337C86C()
{
  result = qword_1EB0C8D98;
  if (!qword_1EB0C8D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8DA0);
    sub_1A3284D0C(&qword_1EB0C8CC0, &qword_1EB0C8C28);
    sub_1A337C29C(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8D98);
  }

  return result;
}

void *sub_1A337C958@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A328D790(v2, v10, &unk_1EB0C5650);
  if (v10[264] == 1)
  {
    return memcpy(a1, v10, 0x108uLL);
  }

  sub_1A34CD650();
  v9 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A337CAD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8DB0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ContactCardActions();
  sub_1A328D790(v1 + *(v10 + 20), v9, &unk_1EB0C8DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CBA00();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void ContactCardActions.init(model:placement:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 264) = 0;
  v6 = type metadata accessor for ContactCardActions();
  v7 = *(v6 + 20);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8DB0);
  swift_storeEnumTagMultiPayload();
  *(a3 + *(v6 + 24)) = a1;
  if (*&a1[OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__placement] == a2)
  {
    v8 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A33822F4(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
    v10 = a1;
    sub_1A34C9990();
  }

  if (qword_1EB0C12B0 != -1)
  {
    swift_once();
  }

  v11 = sub_1A34CA250();
  __swift_project_value_buffer(v11, qword_1EB0ED050);
  v12 = a1;
  v13 = sub_1A34CA230();
  v14 = sub_1A34CD660();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138477827;
    v17 = *(&v12->isa + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel_contact);

    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&dword_1A31E6000, v13, v14, "[ContactCardActions] init for %{private}@", v15, 0xCu);
    sub_1A3288FDC(v16, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v16, -1, -1);
    MEMORY[0x1A58F1010](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }
}

uint64_t ContactCardActions.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = type metadata accessor for ContactCardActions();
  v3 = v2 - 8;
  v24 = *(v2 - 8);
  v21 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB030);
  MEMORY[0x1EEE9AC00](v25);
  v20 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8DC0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8DC8);
  MEMORY[0x1EEE9AC00](v22);
  v10 = &v19 - v9;
  v19 = v1;
  sub_1A337D414(v1, v8);
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1A34CDAD0();

  v27 = 0xD000000000000013;
  v28 = 0x80000001A350F4E0;
  v11 = *(v1 + *(v3 + 32));
  swift_getKeyPath();
  v29 = v11;
  sub_1A33822F4(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  v29 = *(v11 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__placement);
  type metadata accessor for CNUIContactCardActionPlacement(0);
  v12 = sub_1A34CD160();
  MEMORY[0x1A58EEA30](v12);

  sub_1A338196C(&qword_1EB0C05B0, &qword_1EB0C8DC0, &unk_1A34EB1F8, sub_1A3380D2C);
  sub_1A34CC1F0();

  sub_1A3288FDC(v8, &qword_1EB0C8DC0);
  swift_getKeyPath();
  v27 = v11;
  sub_1A34C99A0();

  v13 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__viewControllerToPresent;
  swift_beginAccess();
  v14 = v20;
  sub_1A328D790(v11 + v13, v20, &qword_1EB0CB030);
  v15 = v23;
  sub_1A3382608(v19, v23, type metadata accessor for ContactCardActions);
  v16 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v17 = swift_allocObject();
  sub_1A3381470(v15, v17 + v16, type metadata accessor for ContactCardActions);
  sub_1A3381110();
  sub_1A33811F8();
  sub_1A34CC3C0();

  sub_1A3288FDC(v14, &qword_1EB0CB030);
  return sub_1A3288FDC(v10, &qword_1EB0C8DC8);
}

uint64_t sub_1A337D414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8E10);
  v24 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v23 = &v22 - v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9098);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v22 - v4;
  v5 = type metadata accessor for ContactCardActions();
  v6 = v5 - 8;
  v25 = *(v5 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8DE0);
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v22 - v9;
  v11 = *(a1 + *(v6 + 32));
  swift_getKeyPath();
  v31 = v11;
  sub_1A33822F4(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  v12 = *(v11 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__placement);
  swift_getKeyPath();
  v31 = v11;
  sub_1A34C99A0();

  v31 = *(v11 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__sections);
  sub_1A3382608(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardActions);
  if (v12 == 4)
  {
    v13 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v14 = swift_allocObject();
    sub_1A3381470(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ContactCardActions);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6570);
    sub_1A34C9780();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8DF0);
    sub_1A3284D0C(&qword_1EB0C02A0, &qword_1EB0C6570);
    sub_1A3380E3C();
    sub_1A33822F4(&qword_1EB0C2878, type metadata accessor for ActionSection);
    sub_1A34CC9D0();
    v15 = v26;
    (*(v8 + 16))(v28, v10, v26);
    swift_storeEnumTagMultiPayload();
    sub_1A3380DB8();
    sub_1A3380EEC();
    sub_1A34CB3E0();
    return (*(v8 + 8))(v10, v15);
  }

  else
  {
    v17 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v18 = swift_allocObject();
    sub_1A3381470(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ContactCardActions);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6570);
    sub_1A34C9780();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8E20);
    sub_1A3284D0C(&qword_1EB0C02A0, &qword_1EB0C6570);
    sub_1A3380F70();
    sub_1A33822F4(&qword_1EB0C2878, type metadata accessor for ActionSection);
    v19 = v23;
    sub_1A34CC9D0();
    v20 = v24;
    v21 = v30;
    (*(v24 + 16))(v28, v19, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A3380DB8();
    sub_1A3380EEC();
    sub_1A34CB3E0();
    return (*(v20 + 8))(v19, v21);
  }
}

uint64_t ContactCardActions.contentWithoutSection.getter()
{
  v1 = type metadata accessor for ContactCardActions();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = *(v0 + *(v4 + 32));
  swift_getKeyPath();
  v10 = v5;
  sub_1A33822F4(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  v10 = *(v5 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__sections);
  sub_1A3382608(v0, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardActions);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_1A3381470(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ContactCardActions);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6570);
  sub_1A34C9780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8DF0);
  sub_1A3284D0C(&qword_1EB0C02A0, &qword_1EB0C6570);
  sub_1A3380E3C();
  sub_1A33822F4(&qword_1EB0C2878, type metadata accessor for ActionSection);
  return sub_1A34CC9D0();
}

uint64_t sub_1A337DD60(uint64_t a1)
{
  v2 = sub_1A34CBA00();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContactCardActionsViewModel.ViewController(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB030);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = *(type metadata accessor for ContactCardActions() + 24);
  v18 = a1;
  v13 = *(a1 + v12);
  swift_getKeyPath();
  v21 = v13;
  sub_1A33822F4(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  v14 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__viewControllerToPresent;
  swift_beginAccess();
  sub_1A328D790(v13 + v14, v11, &qword_1EB0CB030);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    return sub_1A3288FDC(v11, &qword_1EB0CB030);
  }

  sub_1A3382608(v11, v8, type metadata accessor for ContactCardActionsViewModel.ViewController);
  sub_1A3288FDC(v11, &qword_1EB0CB030);
  v16 = *&v8[*(v5 + 20)];
  sub_1A3382670(v8, type metadata accessor for ContactCardActionsViewModel.ViewController);
  v17 = sub_1A337CAD8(v4);
  MEMORY[0x1EEE9AC00](v17);
  *(&v18 - 2) = v16;
  sub_1A34CB9F0();

  return (*(v19 + 8))(v4, v20);
}

uint64_t sub_1A337E0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[0] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8E30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  v9 = type metadata accessor for ActionSection(0);
  v10 = *(a1 + *(v9 + 28));
  v11 = *(a2 + *(type metadata accessor for ContactCardActions() + 24));
  swift_getKeyPath();
  v17[1] = v11;
  sub_1A33822F4(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  if (v10 == *(v11 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__placement) && *(*(a1 + *(v9 + 20)) + 16))
  {
    MEMORY[0x1EEE9AC00](v12);
    v17[-2] = a1;
    v17[-1] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8E40);
    sub_1A3284D0C(&unk_1EB0C0368, &unk_1EB0C8E40);
    sub_1A34CCA00();
    v13 = v17[0];
    (*(v6 + 32))(v17[0], v8, v5);
    v14 = v13;
    v15 = 0;
  }

  else
  {
    v15 = 1;
    v14 = v17[0];
  }

  return (*(v6 + 56))(v14, v15, 1, v5);
}

uint64_t sub_1A337E318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for ContactCardActions();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = v8;
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionSection(0);
  v64 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v65 = v11;
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C90A0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v56 - v16;
  v17 = (a1 + *(v10 + 24));
  v18 = v17[1];
  if (v18)
  {
    v61 = v7;
    v19 = *v17;

    v60 = a1;
    v63 = a2;
    sub_1A337C958(v71);
    sub_1A31EE4BC(v72, v70);
    sub_1A3292144(v71);
    v62 = v12;
    v58 = v70[4];
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    *&v92 = v19;
    *(&v92 + 1) = v18;
    sub_1A328A95C();
    v20 = sub_1A34CBE30();
    v59 = v9;
    v22 = v21;
    v23 = a3;
    v24 = v10;
    v25 = v13;
    v27 = v26;
    v28 = sub_1A34CBDF0();
    v57 = v29;
    v58 = v28;
    v31 = v30;
    v33 = v32;
    v34 = v27 & 1;
    v13 = v25;
    v10 = v24;
    a3 = v23;
    v35 = v22;
    v9 = v59;
    sub_1A328A9B0(v20, v35, v34);
    v7 = v61;

    sub_1A34CCC90();
    sub_1A34CADA0();
    v36 = v33 & 1;
    v12 = v62;
    a2 = v63;
    v73 = v36;
    __swift_destroy_boxed_opaque_existential_0(v70);
    *&v83 = v58;
    *(&v83 + 1) = v31;
    a1 = v60;
    LOBYTE(v84) = v73;
    *(&v84 + 1) = v57;
    v89 = v78;
    v90 = v79;
    v91 = v80;
    v85 = v74;
    v86 = v75;
    v87 = v76;
    v88 = v77;
    CGPointMake(&v83);
    v98 = v89;
    v99 = v90;
    v100 = v91;
    v94 = v85;
    v95 = v86;
    v96 = v87;
    v97 = v88;
    v92 = v83;
    v93 = v84;
  }

  else
  {
    sub_1A33827A4(&v92);
  }

  v37 = *(*(a1 + *(v10 + 20)) + 16);
  *&v71[0] = 0;
  *(&v71[0] + 1) = v37;
  swift_getKeyPath();
  v38 = v66;
  sub_1A3382608(a1, v66, type metadata accessor for ActionSection);
  sub_1A3382608(a2, v9, type metadata accessor for ContactCardActions);
  v39 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v40 = (v65 + *(v7 + 80) + v39) & ~*(v7 + 80);
  v41 = swift_allocObject();
  sub_1A3381470(v38, v41 + v39, type metadata accessor for ActionSection);
  sub_1A3381470(v9, v41 + v40, type metadata accessor for ContactCardActions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8EE0);
  sub_1A32D3A44();
  sub_1A3381718();
  v42 = v68;
  sub_1A34CC9C0();
  v80 = v98;
  v81 = v99;
  v82 = v100;
  v76 = v94;
  v77 = v95;
  v78 = v96;
  v79 = v97;
  v74 = v92;
  v75 = v93;
  v43 = *(v13 + 16);
  v44 = v69;
  v43(v69, v42, v12);
  v45 = v81;
  v89 = v80;
  v90 = v81;
  v46 = v82;
  v91 = v82;
  v47 = v76;
  v48 = v77;
  v85 = v76;
  v86 = v77;
  v50 = v78;
  v49 = v79;
  v87 = v78;
  v88 = v79;
  v52 = v74;
  v51 = v75;
  v83 = v74;
  v84 = v75;
  a3[6] = v80;
  a3[7] = v45;
  a3[8] = v46;
  a3[2] = v47;
  a3[3] = v48;
  a3[4] = v50;
  a3[5] = v49;
  *a3 = v52;
  a3[1] = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C90A8);
  v43(a3 + *(v53 + 48), v44, v12);
  sub_1A328D790(&v83, v71, &unk_1EB0C90B0);
  v54 = *(v13 + 8);
  v54(v42, v12);
  v54(v44, v12);
  v72[4] = v80;
  v72[5] = v81;
  v72[6] = v82;
  v72[0] = v76;
  v72[1] = v77;
  v72[2] = v78;
  v72[3] = v79;
  v71[0] = v74;
  v71[1] = v75;
  return sub_1A3288FDC(v71, &unk_1EB0C90B0);
}

uint64_t sub_1A337E998@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContactCardActionRow();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = type metadata accessor for ActionSection(0);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = *(a2 + *(result + 20));
    if (v10 < *(v12 + 16))
    {
      sub_1A3382608(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v9, type metadata accessor for ContactCardActionRow);
      sub_1A337EAD0(v9, a3);
      return sub_1A3382670(v9, type metadata accessor for ContactCardActionRow);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A337EAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A337F96C(a1, v2, a2);
  sub_1A337C958(v22);
  sub_1A31EE4BC(&v23, v21);
  sub_1A3292144(v22);
  v5 = __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 16))(v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = sub_1A34CA770();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F00) + 36)) = v9;
  __swift_destroy_boxed_opaque_existential_0(v21);
  sub_1A337C958(v22);
  v10 = v22[2];
  sub_1A34C9010();
  sub_1A3292144(v22);
  KeyPath = swift_getKeyPath();
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8EF0) + 36));
  *v12 = KeyPath;
  v12[1] = v10;
  v13 = sub_1A34CCC80();
  v15 = v14;
  v16 = type metadata accessor for ContactCardActionRow();
  v17 = 0;
  if (*(a1 + *(v16 + 84)) == 1)
  {
    v17 = *(a1 + *(v16 + 92));
    v18 = v17;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8EE0);
  v20 = (a2 + *(result + 36));
  *v20 = v17;
  v20[1] = v13;
  v20[2] = v15;
  return result;
}

uint64_t sub_1A337ECB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v96 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8E00);
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v92 = &v72[-v6];
  v7 = type metadata accessor for ContactCardActions();
  v8 = v7 - 8;
  v84 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v85 = v9;
  v86 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ActionSection(0);
  v80 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v81 = v11;
  v82 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8E80);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v72[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8E88);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72[-v16];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8E90);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v19 = &v72[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8E98);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v83 = &v72[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v72[-v26];
  v27 = *(a1 + v10[7]);
  v28 = *(v8 + 32);
  v87 = a2;
  v29 = *(a2 + v28);
  swift_getKeyPath();
  *&v99 = v29;
  sub_1A33822F4(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  if (v27 == *(v29 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__placement))
  {
    v30 = (a1 + v10[6]);
    v31 = v30[1];
    if (v31)
    {
      v77 = a1;
      *&v99 = *v30;
      *(&v99 + 1) = v31;
      sub_1A328A95C();

      v32 = sub_1A34CBE30();
      v34 = v33;
      v36 = v35;
      if (qword_1EB0C1E10 != -1)
      {
        swift_once();
      }

      *&v99 = qword_1EB0ED2C0;
      sub_1A34C9010();
      v75 = sub_1A34CBDF0();
      v74 = v37;
      v73 = v38;
      v76 = v39;
      sub_1A328A9B0(v32, v34, v36 & 1);

      v40 = &v17[*(v15 + 36)];
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9018) + 28);
      v42 = *MEMORY[0x1E6980FD8];
      v43 = sub_1A34CBE00();
      v44 = *(v43 - 8);
      (*(v44 + 104))(v40 + v41, v42, v43);
      (*(v44 + 56))(v40 + v41, 0, 1, v43);
      *v40 = swift_getKeyPath();
      v45 = v74;
      *v17 = v75;
      *(v17 + 1) = v45;
      v17[16] = v73 & 1;
      *(v17 + 3) = v76;
      sub_1A34CCC90();
      sub_1A34CADA0();
      sub_1A329D98C(v17, v19, &qword_1EB0C8E88);
      v46 = v79;
      v47 = &v19[*(v79 + 36)];
      v48 = v104;
      v47[4] = v103;
      v47[5] = v48;
      v47[6] = v105;
      v49 = v100;
      *v47 = v99;
      v47[1] = v49;
      v50 = v102;
      v47[2] = v101;
      v47[3] = v50;
      sub_1A329D98C(v19, v22, &qword_1EB0C8E90);
      v51 = v93;
      sub_1A329D98C(v22, v93, &qword_1EB0C8E90);
      v52 = 0;
      a1 = v77;
    }

    else
    {
      v52 = 1;
      v51 = v93;
      v46 = v79;
    }

    (*(v78 + 56))(v51, v52, 1, v46);
    v55 = *(*(a1 + v10[5]) + 16);
    v97 = 0;
    v98 = v55;
    swift_getKeyPath();
    v56 = v82;
    sub_1A3382608(a1, v82, type metadata accessor for ActionSection);
    v57 = v86;
    sub_1A3382608(v87, v86, type metadata accessor for ContactCardActions);
    v58 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v59 = (v81 + *(v84 + 80) + v58) & ~*(v84 + 80);
    v60 = swift_allocObject();
    sub_1A3381470(v56, v60 + v58, type metadata accessor for ActionSection);
    sub_1A3381470(v57, v60 + v59, type metadata accessor for ContactCardActions);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA8);
    sub_1A32D3A44();
    sub_1A33814F0();
    v61 = v88;
    sub_1A34CC9C0();
    v62 = v83;
    sub_1A328D790(v51, v83, &qword_1EB0C8E98);
    v63 = v90;
    v64 = *(v90 + 16);
    v65 = v89;
    v66 = v91;
    v64(v89, v61, v91);
    v67 = v92;
    sub_1A328D790(v62, v92, &qword_1EB0C8E98);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9008);
    v64(&v67[*(v68 + 48)], v65, v66);
    v69 = *(v63 + 8);
    v69(v61, v66);
    sub_1A3288FDC(v93, &qword_1EB0C8E98);
    v69(v65, v66);
    sub_1A3288FDC(v62, &qword_1EB0C8E98);
    v70 = v96;
    sub_1A3206FD4(v67, v96);
    v53 = 0;
    v54 = v70;
  }

  else
  {
    v53 = 1;
    v54 = v96;
  }

  return (*(v94 + 56))(v54, v53, 1, v95);
}

uint64_t sub_1A337F73C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ContactCardActionRow();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = type metadata accessor for ActionSection(0);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = *(a2 + *(result + 20));
  if (v10 >= *(v12 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1A3382608(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10, v9, type metadata accessor for ContactCardActionRow);
  sub_1A337EAD0(v9, a3);
  sub_1A337C958(v24);
  v13 = v24[3];
  sub_1A34C9010();
  sub_1A3292144(v24);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8ED0) + 36)) = v13;
  sub_1A337C958(v24);
  v14 = v24[2];
  sub_1A34C9010();
  sub_1A3292144(v24);
  KeyPath = swift_getKeyPath();
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EC0) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = sub_1A34CCC80();
  v19 = v18;
  if (v9[*(v6 + 84)] == 1)
  {
    v20 = *&v9[*(v6 + 92)];
    v21 = v20;
  }

  else
  {
    v20 = 0;
  }

  v22 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA8) + 36));
  *v22 = v20;
  v22[1] = v17;
  v22[2] = v19;
  return sub_1A3382670(v9, type metadata accessor for ContactCardActionRow);
}

uint64_t sub_1A337F96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F40);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F30);
  MEMORY[0x1EEE9AC00](v7);
  v30 = v27 - v8;
  v9 = type metadata accessor for ContactCardActionRow();
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9030);
  MEMORY[0x1EEE9AC00](v33);
  v14 = v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F50);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v27 - v16;
  if (*(a1 + *(v10 + 68)))
  {
    v28 = v12;
    v18 = sub_1A3382608(a1, v12, type metadata accessor for ContactCardActionRow);
    v27[2] = v15;
    MEMORY[0x1EEE9AC00](v18);
    MEMORY[0x1EEE9AC00](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9038);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9040);
    sub_1A33820AC();
    v27[1] = v7;
    sub_1A33821B4();
    sub_1A34CBC70();
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1A34CDAD0();

    v38 = 0xD000000000000016;
    v39 = 0x80000001A350F730;
    v20 = *(a1 + 24);
    v40[0] = *(a1 + 16);
    v40[1] = v20;
    v36 = 32;
    v37 = 0xE100000000000000;
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1A328A95C();
    v21 = sub_1A34CD8E0();
    MEMORY[0x1A58EEA30](v21);

    sub_1A3284D0C(&unk_1EB0C0648, &unk_1EB0C8F40);
    v23 = v30;
    v22 = v31;
    sub_1A34CC1F0();

    (*(v29 + 8))(v6, v22);
    sub_1A328D790(v23, v14, &unk_1EB0C8F30);
    swift_storeEnumTagMultiPayload();
    sub_1A3381A74();
    sub_1A3381B5C();
    sub_1A34CB3E0();
    sub_1A3288FDC(v23, &unk_1EB0C8F30);
    return sub_1A3382670(v28, type metadata accessor for ContactCardActionRow);
  }

  else
  {
    v25 = *(a2 + *(type metadata accessor for ContactCardActions() + 24));
    v40[3] = type metadata accessor for ContactCardActionsViewModel(0);
    v40[4] = &off_1F1627130;
    v40[0] = v25;
    v26 = v25;
    sub_1A337C958(&v38);
    sub_1A338E624(a1, v40, &v38, v17);
    sub_1A3292144(&v38);
    __swift_destroy_boxed_opaque_existential_0(v40);
    sub_1A3207074(v17, v14);
    swift_storeEnumTagMultiPayload();
    sub_1A3381A74();
    sub_1A3381B5C();
    sub_1A34CB3E0();
    return sub_1A3288FDC(v17, &unk_1EB0C8F50);
  }
}

uint64_t sub_1A337FEF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v28 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9088);
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v24 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9090);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ContactCardActions();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9070);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  sub_1A33865C0();
  if (v16)
  {
    v17 = v26;
    v18 = *(v26 + 16);
    v30 = 0;
    v31 = v18;
    swift_getKeyPath();
    sub_1A3382608(v25, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardActions);
    v19 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    sub_1A3381470(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for ContactCardActions);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA0);
    type metadata accessor for ContactCardActionMenu();
    sub_1A32D3A44();
    sub_1A33822F4(&qword_1EB0C22C8, type metadata accessor for ContactCardActionMenu);
    sub_1A34CC9C0();
    (*(v13 + 16))(v8, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_1A3382240();
    sub_1A338233C();
    sub_1A34CB3E0();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v22 = *(v24 + 24);
    v30 = *(v24 + 16);
    v31 = v22;
    MEMORY[0x1EEE9AC00](v16);
    sub_1A3382240();
    sub_1A328A95C();

    sub_1A34CC9E0();
    v23 = v29;
    (*(v4 + 16))(v8, v6, v29);
    swift_storeEnumTagMultiPayload();
    sub_1A338233C();
    sub_1A34CB3E0();
    return (*(v4 + 8))(v6, v23);
  }
}

uint64_t sub_1A33803AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardActions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *(a1 + 16);
  v11[0] = 0;
  v11[1] = v7;
  swift_getKeyPath();
  sub_1A3382608(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardActions);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_1A3381470(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ContactCardActions);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA0);
  type metadata accessor for ContactCardActionMenu();
  sub_1A32D3A44();
  sub_1A33822F4(&qword_1EB0C22C8, type metadata accessor for ContactCardActionMenu);
  return sub_1A34CC9C0();
}

unint64_t *sub_1A3380590@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = *(type metadata accessor for ContactCardActionRow() - 8);
  sub_1A3382608(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, a4, type metadata accessor for ContactCardActionRow);
  v10 = *(a3 + *(type metadata accessor for ContactCardActions() + 24));
  v9 = (a4 + *(type metadata accessor for ContactCardActionMenu() + 20));
  v9[3] = type metadata accessor for ContactCardActionsViewModel(0);
  v9[4] = &off_1F1627130;
  *v9 = v10;

  return v10;
}

uint64_t sub_1A33806AC()
{
  sub_1A337C958(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9058);
  sub_1A3382138();
  sub_1A34CA9A0();
  return sub_1A3292144(v1);
}

id sub_1A3380904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ContactCardActions()
{
  result = qword_1EB0C2640;
  if (!qword_1EB0C2640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A33809D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33822F4(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__placement);
  return result;
}

uint64_t sub_1A3380AAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33822F4(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  v4 = OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__viewControllerToPresent;
  swift_beginAccess();
  return sub_1A328D790(v3 + v4, a2, &qword_1EB0CB030);
}

uint64_t sub_1A3380B84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CB030);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1A328D790(a1, &v6 - v3, &qword_1EB0CB030);
  return sub_1A340D87C(v4);
}

uint64_t sub_1A3380C30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33822F4(&unk_1EB0C1B28, type metadata accessor for ContactCardActionsViewModel);
  sub_1A34C99A0();

  *a2 = *(v3 + OBJC_IVAR____TtC14ContactsUICore27ContactCardActionsViewModel__sections);
}

unint64_t sub_1A3380D2C()
{
  result = qword_1EB0C0828;
  if (!qword_1EB0C0828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8DD0);
    sub_1A3380DB8();
    sub_1A3380EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0828);
  }

  return result;
}

unint64_t sub_1A3380DB8()
{
  result = qword_1EB0C0428;
  if (!qword_1EB0C0428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8DE0);
    sub_1A3380E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0428);
  }

  return result;
}

unint64_t sub_1A3380E3C()
{
  result = qword_1EB0C0338;
  if (!qword_1EB0C0338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8DF0);
    sub_1A3284D0C(&qword_1EB0C0348, &unk_1EB0C8E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0338);
  }

  return result;
}

unint64_t sub_1A3380EEC()
{
  result = qword_1EB0C0438;
  if (!qword_1EB0C0438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8E10);
    sub_1A3380F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0438);
  }

  return result;
}

unint64_t sub_1A3380F70()
{
  result = qword_1EB0C03E8;
  if (!qword_1EB0C03E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8E20);
    sub_1A3380FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C03E8);
  }

  return result;
}

unint64_t sub_1A3380FF4()
{
  result = qword_1EB0C03F8;
  if (!qword_1EB0C03F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8E30);
    sub_1A3284D0C(&unk_1EB0C0368, &unk_1EB0C8E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C03F8);
  }

  return result;
}

uint64_t sub_1A33810B0()
{
  v1 = *(type metadata accessor for ContactCardActions() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A337DD60(v2);
}

unint64_t sub_1A3381110()
{
  result = qword_1EB0C0D68;
  if (!qword_1EB0C0D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8DC8);
    sub_1A338196C(&qword_1EB0C05B0, &qword_1EB0C8DC0, &unk_1A34EB1F8, sub_1A3380D2C);
    sub_1A33822F4(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D68);
  }

  return result;
}

unint64_t sub_1A33811F8()
{
  result = qword_1EB0C1B38;
  if (!qword_1EB0C1B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CB030);
    sub_1A33822F4(&qword_1EB0C1B40, type metadata accessor for ContactCardActionsViewModel.ViewController);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1B38);
  }

  return result;
}

void sub_1A3381308()
{
  sub_1A33813A4();
  if (v0 <= 0x3F)
  {
    sub_1A33813F4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContactCardActionsViewModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A33813A4()
{
  if (!qword_1EB0C1190)
  {
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1190);
    }
  }
}

void sub_1A33813F4()
{
  if (!qword_1EB0C1148)
  {
    sub_1A34CBA00();
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1148);
    }
  }
}

uint64_t sub_1A3381470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A33814F0()
{
  result = qword_1EB0C8EB0;
  if (!qword_1EB0C8EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8EA8);
    sub_1A33815A8();
    sub_1A3284D0C(&qword_1EB0C0920, &unk_1EB0C8FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8EB0);
  }

  return result;
}

unint64_t sub_1A33815A8()
{
  result = qword_1EB0C8EB8;
  if (!qword_1EB0C8EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8EC0);
    sub_1A3381660();
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8EB8);
  }

  return result;
}

unint64_t sub_1A3381660()
{
  result = qword_1EB0C8EC8;
  if (!qword_1EB0C8EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8ED0);
    sub_1A3381718();
    sub_1A3284D0C(&qword_1ED854EA0, &qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C8EC8);
  }

  return result;
}

unint64_t sub_1A3381718()
{
  result = qword_1EB0C0A88;
  if (!qword_1EB0C0A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8EE0);
    sub_1A33817D0();
    sub_1A3284D0C(&qword_1EB0C0920, &unk_1EB0C8FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A88);
  }

  return result;
}

unint64_t sub_1A33817D0()
{
  result = qword_1EB0C0B78;
  if (!qword_1EB0C0B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8EF0);
    sub_1A3381888();
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B78);
  }

  return result;
}

unint64_t sub_1A3381888()
{
  result = qword_1EB0C0D58;
  if (!qword_1EB0C0D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8F00);
    sub_1A338196C(&qword_1EB0C05D8, &unk_1EB0C8F10, &unk_1A34EB3A8, sub_1A33819E8);
    sub_1A3284D0C(&qword_1EB0C0700, &unk_1EB0C8FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D58);
  }

  return result;
}

uint64_t sub_1A338196C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1A33819E8()
{
  result = qword_1EB0C08D8;
  if (!qword_1EB0C08D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8F20);
    sub_1A3381A74();
    sub_1A3381B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C08D8);
  }

  return result;
}

unint64_t sub_1A3381A74()
{
  result = qword_1EB0C0E58;
  if (!qword_1EB0C0E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8F30);
    sub_1A3284D0C(&unk_1EB0C0648, &unk_1EB0C8F40);
    sub_1A33822F4(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E58);
  }

  return result;
}

unint64_t sub_1A3381B5C()
{
  result = qword_1EB0C07E8;
  if (!qword_1EB0C07E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8F50);
    sub_1A3381C14();
    sub_1A3284D0C(&qword_1EB0C04F8, &unk_1EB0C8FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C07E8);
  }

  return result;
}

unint64_t sub_1A3381C14()
{
  result = qword_1EB0C0868;
  if (!qword_1EB0C0868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8F68);
    sub_1A3381CDC();
    swift_getOpaqueTypeConformance2();
    sub_1A3381E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0868);
  }

  return result;
}

unint64_t sub_1A3381CDC()
{
  result = qword_1EB0C0B30;
  if (!qword_1EB0C0B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8F68);
    sub_1A3381D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B30);
  }

  return result;
}

unint64_t sub_1A3381D68()
{
  result = qword_1EB0C0CC8;
  if (!qword_1EB0C0CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C8F70);
    sub_1A3284D0C(&qword_1EB0C0458, &unk_1EB0C8F80);
    sub_1A3284D0C(&qword_1EB0C06B0, &unk_1EB0C8F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0CC8);
  }

  return result;
}

unint64_t sub_1A3381E4C()
{
  result = qword_1EB0C05F8;
  if (!qword_1EB0C05F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8FA8);
    sub_1A3381F0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C05F8);
  }

  return result;
}

unint64_t sub_1A3381F0C()
{
  result = qword_1EB0C0CF0;
  if (!qword_1EB0C0CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8FA8);
    sub_1A3284D0C(&qword_1EB0C04A8, &unk_1EB0C8FB0);
    sub_1A3284D0C(&qword_1EB0C0790, &qword_1EB0C58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0CF0);
  }

  return result;
}

uint64_t sub_1A3381FF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9020);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A328D790(a1, &v5 - v3, &unk_1EB0C9020);
  return sub_1A34CB040();
}

unint64_t sub_1A33820AC()
{
  result = qword_1EB0C9048;
  if (!qword_1EB0C9048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9038);
    sub_1A3382138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9048);
  }

  return result;
}

unint64_t sub_1A3382138()
{
  result = qword_1EB0C9050;
  if (!qword_1EB0C9050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9050);
  }

  return result;
}

unint64_t sub_1A33821B4()
{
  result = qword_1EB0C9060;
  if (!qword_1EB0C9060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9040);
    sub_1A3382240();
    sub_1A338233C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9060);
  }

  return result;
}

unint64_t sub_1A3382240()
{
  result = qword_1EB0C9068;
  if (!qword_1EB0C9068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9070);
    sub_1A33822F4(&qword_1EB0C22C8, type metadata accessor for ContactCardActionMenu);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9068);
  }

  return result;
}

uint64_t sub_1A33822F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A338233C()
{
  result = qword_1EB0C9080;
  if (!qword_1EB0C9080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9088);
    sub_1A3382240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9080);
  }

  return result;
}

uint64_t objectdestroy_59Tm()
{
  v1 = type metadata accessor for ContactCardActions();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  if (*(v0 + v2 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v3 + 32);

    __swift_destroy_boxed_opaque_existential_0(v3 + 88);
    __swift_destroy_boxed_opaque_existential_0(v3 + 128);
    __swift_destroy_boxed_opaque_existential_0(v3 + 168);
    __swift_destroy_boxed_opaque_existential_0(v3 + 216);
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A34CBA00();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3382608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3382670(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A33826D0(id result)
{
  if (result)
  {
    return [result presentViewController:*(v1 + 16) animated:1 completion:0];
  }

  return result;
}

uint64_t sub_1A3382708(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ContactCardActions() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

double sub_1A33827A4(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(type metadata accessor for ActionSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for ContactCardActions();
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = sub_1A34C9780();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  v7 = v0 + v5;
  if (*(v0 + v5 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v7 + 32);

    __swift_destroy_boxed_opaque_existential_0(v7 + 88);
    __swift_destroy_boxed_opaque_existential_0(v7 + 128);
    __swift_destroy_boxed_opaque_existential_0(v7 + 168);
    __swift_destroy_boxed_opaque_existential_0(v7 + 216);
  }

  v8 = *(v4 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A34CBA00();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3382A28(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ActionSection(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for ContactCardActions() - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

uint64_t sub_1A3382B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A3382B58, 0, 0);
}

uint64_t sub_1A3382B58()
{
  v15 = v0;
  v1 = v0[10];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v11 = v0[6];
  v12 = v4;
  v13 = sub_1A33EA2AC(MEMORY[0x1E69E7CC0]);
  v14 = [objc_allocWithZone(CNUIPRSMutablePosterConfiguration) init];

  sub_1A341A188(&v11, v3, v2, v1);
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v8 = v14;
  v9 = v0[1];

  return v9(v5, v6, v7, v8);
}

uint64_t sub_1A3382E84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  *(v5 + 144) = a3;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A3382EAC, 0, 0);
}

uint64_t sub_1A3382EAC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = sub_1A33EA2AC(MEMORY[0x1E69E7CC0]);
  *(v0 + 112) = v3;
  v4 = [objc_allocWithZone(CNUIPRSMutablePosterConfiguration) init];
  *(v0 + 16) = v2;
  *(v0 + 120) = v4;
  *(v0 + 24) = v1;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;

  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_1A3382F9C;
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 144);

  return sub_1A33606E4(v0 + 16, v8, v6, v7);
}

uint64_t sub_1A3382F9C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1A33830D0;
  }

  else
  {
    v2 = sub_1A33830B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A33830D0()
{
  v23 = v0;
  if (qword_1EB0C1260 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_1A34CA250();
  __swift_project_value_buffer(v2, qword_1EB0ECFC0);

  v3 = v1;
  v4 = sub_1A34CA230();
  v5 = sub_1A34CD640();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 144);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136315394;
    *(v0 + 48) = v9;
    *(v0 + 56) = v8;
    *(v0 + 64) = v7;

    v12 = sub_1A34CD170();
    v14 = sub_1A31EE23C(v12, v13, v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v0 + 72) = v6;
    v15 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v16 = sub_1A34CD170();
    v18 = sub_1A31EE23C(v16, v17, v22);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1A31E6000, v4, v5, "Error saving configuration: %s to mutable poster configuration: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v11, -1, -1);
    MEMORY[0x1A58F1010](v10, -1, -1);
  }

  v19 = *(v0 + 120);
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1A3383328(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = a4;
  *(v4 + 128) = a3;
  *(v4 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A3383350, 0, 0);
}

uint64_t sub_1A3383350()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = sub_1A33EA2AC(MEMORY[0x1E69E7CC0]);
  *(v0 + 96) = v3;
  v4 = [objc_allocWithZone(CNUIPRSMutablePosterConfiguration) init];
  *(v0 + 16) = v2;
  *(v0 + 104) = v4;
  *(v0 + 24) = v1;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;

  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_1A3383440;
  v6 = *(v0 + 88);
  v7 = *(v0 + 128);

  return sub_1A3360C40(v0 + 16, v7, v6);
}

uint64_t sub_1A3383440()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1A3383574;
  }

  else
  {
    v2 = sub_1A3383554;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3383574()
{
  v25 = v0;
  if (qword_1EB0C1260 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = sub_1A34CA250();
  __swift_project_value_buffer(v3, qword_1EB0ECFC0);
  v4 = v2;
  v5 = v1;
  v6 = sub_1A34CA230();
  v7 = sub_1A34CD640();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 88);
    v10 = *(v0 + 128);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24[0] = v12;
    *v11 = 136315394;
    *(v0 + 48) = v10;
    *(v0 + 56) = v9;
    v13 = v9;
    v14 = sub_1A34CD170();
    v16 = sub_1A31EE23C(v14, v15, v24);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v0 + 64) = v8;
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v18 = sub_1A34CD170();
    v20 = sub_1A31EE23C(v18, v19, v24);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_1A31E6000, v6, v7, "Error saving configuration: %s to mutable poster configuration: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v12, -1, -1);
    MEMORY[0x1A58F1010](v11, -1, -1);
  }

  v21 = *(v0 + 104);
  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1A33837BC(uint64_t a1, uint64_t a2)
{
  *(v3 + 744) = a2;
  *(v3 + 736) = a1;
  v4 = *(v2 + 112);
  *(v3 + 112) = *(v2 + 96);
  *(v3 + 128) = v4;
  *(v3 + 144) = *(v2 + 128);
  v5 = *(v2 + 48);
  *(v3 + 48) = *(v2 + 32);
  *(v3 + 64) = v5;
  v6 = *(v2 + 80);
  *(v3 + 80) = *(v2 + 64);
  *(v3 + 96) = v6;
  v7 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1A3383808, 0, 0);
}

uint64_t sub_1A3383808()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = sub_1A33EA2AC(MEMORY[0x1E69E7CC0]);
  v4 = [objc_allocWithZone(CNUIPRSMutablePosterConfiguration) init];
  v0[94] = v4;
  v0[87] = v2;
  v0[88] = v1;
  v0[89] = v3;
  v0[90] = v4;
  v5 = off_1F1629A40;

  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[95] = v6;
  *v6 = v0;
  v6[1] = sub_1A3383980;

  return (v8)(v0 + 87, &type metadata for MonogramPosterConfiguration, &off_1F1629A38);
}

uint64_t sub_1A3383980()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_1A3383ABC;
  }

  else
  {
    v2 = sub_1A3383A94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A3383ABC()
{
  v29 = v0;
  v1 = (v0 + 152);
  if (qword_1EB0C1260 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 768);
  v3 = sub_1A34CA250();
  __swift_project_value_buffer(v3, qword_1EB0ECFC0);
  v4 = *(v0 + 128);
  *(v0 + 248) = *(v0 + 112);
  *(v0 + 264) = v4;
  *(v0 + 280) = *(v0 + 144);
  v5 = *(v0 + 64);
  *(v0 + 184) = *(v0 + 48);
  *(v0 + 200) = v5;
  v6 = *(v0 + 96);
  *(v0 + 216) = *(v0 + 80);
  *(v0 + 232) = v6;
  v7 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v0 + 168) = v7;
  sub_1A33851C8(v0 + 152, v0 + 288);
  sub_1A33851C8(v0 + 152, v0 + 424);
  v8 = v2;
  v9 = sub_1A34CA230();
  v10 = sub_1A34CD640();
  sub_1A335DA80(v0 + 152);

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 768);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28[0] = v13;
    *v12 = 136315394;
    v14 = *(v0 + 264);
    *(v0 + 656) = *(v0 + 248);
    *(v0 + 672) = v14;
    *(v0 + 688) = *(v0 + 280);
    v15 = *(v0 + 200);
    *(v0 + 592) = *(v0 + 184);
    *(v0 + 608) = v15;
    v16 = *(v0 + 232);
    *(v0 + 624) = *(v0 + 216);
    *(v0 + 640) = v16;
    v17 = *(v0 + 168);
    *(v0 + 560) = *v1;
    *(v0 + 576) = v17;
    v18 = sub_1A34CD170();
    v20 = sub_1A31EE23C(v18, v19, v28);

    *(v12 + 4) = v20;
    *(v12 + 12) = 2080;
    *(v0 + 728) = v11;
    v21 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
    v22 = sub_1A34CD170();
    v24 = sub_1A31EE23C(v22, v23, v28);

    *(v12 + 14) = v24;
    _os_log_impl(&dword_1A31E6000, v9, v10, "Error saving configuration: %s to mutable poster configuration: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58F1010](v13, -1, -1);
    MEMORY[0x1A58F1010](v12, -1, -1);
  }

  else
  {
    sub_1A335DA80(v0 + 152);
  }

  v25 = *(v0 + 752);
  swift_willThrow();

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1A3383D60()
{
  result = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000014, 0x80000001A350F790);
  qword_1EB0ED240 = result;
  *algn_1EB0ED248 = v1;
  return result;
}

double sub_1A3383DAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C90C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34E3590;
  if (qword_1ED8549E0 != -1)
  {
    v7 = v0;
    swift_once();
    v0 = v7;
  }

  v1 = qword_1ED8549F8;
  *(v0 + 32) = byte_1ED8549E8;
  *(v0 + 40) = 0x4085E00000000000;
  *(v0 + 48) = v1;
  if (qword_1EB0C2888 != -1)
  {
    v8 = v0;
    swift_once();
    v0 = v8;
  }

  v2 = qword_1EB0C28A0;
  *(v0 + 56) = byte_1EB0C2890;
  *(v0 + 64) = 0x4079000000000000;
  *(v0 + 72) = v2;
  if (qword_1EB0C28F0 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  v3 = qword_1EB0C2908;
  *(v0 + 80) = byte_1EB0C28F8;
  *(v0 + 88) = 0x4085E00000000000;
  *(v0 + 96) = v3;
  if (qword_1EB0C28A8 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  v4 = qword_1EB0C28C0;
  *(v0 + 104) = byte_1EB0C28B0;
  *(v0 + 112) = 0x407FE00000000000;
  *(v0 + 120) = v4;
  v5 = byte_1ED8549E8;
  result = *&qword_1ED8549F8;
  *(v0 + 128) = byte_1ED8549E8;
  *(v0 + 136) = 0x4071200000000000;
  *(v0 + 144) = result;
  *(v0 + 152) = v5;
  *(v0 + 160) = 0x4085E00000000000;
  *(v0 + 168) = result;
  *(v0 + 176) = v5;
  *(v0 + 184) = 0x4079000000000000;
  *(v0 + 192) = result;
  qword_1EB0ED238 = v0;
  return result;
}

uint64_t sub_1A3383FE8()
{
  if (qword_1EB0C1BE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0ED240;

  return v0;
}

uint64_t sub_1A3384050(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for VisualIdentitySuggestionContext(0) + 28));

  return sub_1A3336EDC(0, v1);
}

uint64_t sub_1A3384094(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A330F6A8;

  return (sub_1A338450C)(a1, a2);
}

uint64_t sub_1A3384148()
{
  v0 = type metadata accessor for MonogramSuggestionProvider();

  return sub_1A3463D24(v0, &off_1F1623008);
}

uint64_t sub_1A3384178(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 48) = *(v1 + 8);
  v4 = v1[3];
  *(v2 + 32) = v1[2];
  *(v2 + 40) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A33841AC, 0, 0);
}

char *sub_1A33841AC()
{
  v30 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for VisualIdentitySuggestionContext(0) + 32));
  v28[1] = 1;
  sub_1A32FD380();
  v28[0] = v2;
  sub_1A32FD380();
  if (qword_1EB0C1780 != -1)
  {
LABEL_17:
    swift_once();
  }

  v29 = qword_1EB0ED118;

  sub_1A3485068(v28);
  v3 = v29;
  if (qword_1EB0C1BD8 != -1)
  {
    swift_once();
  }

  v29 = qword_1EB0ED238;

  sub_1A34854C4(v28);
  v4 = v29;
  v29 = MEMORY[0x1E69E7CC0];
  result = sub_1A32EBD34(0, 16, 0);
  v26 = *(v3 + 16);
  if (!v26)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(v4 + 16);
  if (!v6)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = 0;
  v9 = v29;
  v27 = v7;
  v25 = v7 + 32;
  do
  {
    if (v8 % v26 >= *(v3 + 16))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v10 = *(v0 + 24);
    v11 = v3 + 32 + 16 * (v8 % v26);
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v0 + 48);
    sub_1A31EE004(v10, v14);

    sub_1A31EE004(v12, v13);
    sub_1A31ECC9C(v10, v14);
    if (v8 % v6 >= *(v27 + 16))
    {
      goto LABEL_16;
    }

    v15 = (v25 + 24 * (v8 % v6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v29 = v9;
    v19 = *(v9 + 16);
    v18 = *(v9 + 24);
    if (v19 >= v18 >> 1)
    {
      v24 = v17;
      sub_1A32EBD34((v18 > 1), v19 + 1, 1);
      v17 = v24;
      v9 = v29;
    }

    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    ++v8;
    *(v9 + 16) = v19 + 1;
    v22 = v9 + 56 * v19;
    *(v22 + 32) = v12;
    *(v22 + 40) = v13;
    *(v22 + 48) = v21;
    *(v22 + 56) = v20;
    *(v22 + 64) = v16;
    *(v22 + 72) = v17;
  }

  while (v8 != 16);

  v23 = *(v0 + 8);

  return v23(v9);
}

uint64_t sub_1A3384478(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A335E180;

  return sub_1A3384178(a1);
}

uint64_t sub_1A338450C(uint64_t a1)
{
  v1[162] = a1;
  v2 = sub_1A34C9780();
  v1[163] = v2;
  v1[164] = *(v2 - 8);
  v1[165] = swift_task_alloc();
  v3 = type metadata accessor for VisualIdentity(0);
  v1[166] = v3;
  v1[167] = *(v3 - 8);
  v1[168] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3384628, 0, 0);
}

uint64_t sub_1A3384628()
{
  v1 = *(v0 + 1296);
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 0u;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 912) = 0u;
  v2 = *v1;
  *(v0 + 1352) = *v1;
  *(v0 + 1368) = MEMORY[0x1E69E7CC0];
  *(v0 + 1360) = 0;
  sub_1A34C8A90();
  v3 = v2;
  sub_1A34604B4(v3, v0 + 832, v0 + 16);

  v4 = swift_task_alloc();
  *(v0 + 1376) = v4;
  *v4 = v0;
  v4[1] = sub_1A3384734;

  return sub_1A33837BC(0xD00000000000002CLL, 0x80000001A350EE80);
}

uint64_t sub_1A3384734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v5;
  v7[173] = a2;
  v7[174] = a3;
  v7[175] = a4;
  v7[176] = v4;

  if (v4)
  {
    v8 = sub_1A33850B0;
  }

  else
  {
    v7[177] = a1;
    v8 = sub_1A3384868;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1A3384868()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1392);
  v3 = *(v0 + 1352);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = sub_1A3444DEC(v2, v1);
  v7 = sub_1A34CD0E0();
  v8 = [v4 finalizedConfiguration:v6 forExtensionIdentifier:v7];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = sub_1A3444DEC(*(v0 + 1392), *(v0 + 1400));
  }

  v10 = sub_1A3444A44(v9, 0);
  v12 = v11;
  v93 = v10;
  v13 = (v0 + 152);
  v14 = (v0 + 1192);
  v15 = *(v0 + 1352);
  v16 = HIDWORD(v10);
  *(v0 + 1120) = v15;
  v17 = v10 & 1;
  *(v0 + 1128) = v10 & 1;
  *(v0 + 1132) = HIDWORD(v10);
  v19 = v18 & 1;
  *(v0 + 1136) = v18 & 1;
  *(v0 + 1144) = v11;
  v20 = qword_1EB0C2300;
  v21 = v15;
  v91 = v12;
  if (v20 != -1)
  {
    swift_once();
    v15 = *(v0 + 1352);
  }

  v88 = *(v0 + 1400);
  v87 = (v0 + 1120);
  v89 = *(v0 + 1408);
  v22 = *&qword_1EB0ED418;
  *v14 = xmmword_1EB0ED408;
  *(v0 + 1208) = v22;
  *(v0 + 1224) = xmmword_1EB0ED428;
  v23 = type metadata accessor for LazyPosterSnapshot(0);
  v24 = swift_allocObject();
  *(v24 + 32) = 0;
  *(v24 + 40) = 0;
  *(v24 + 48) = 0;
  sub_1A34C99D0();
  v25 = swift_allocObject();
  v26 = *(v0 + 1208);
  *(v25 + 40) = *v14;
  *(v25 + 16) = v17;
  *(v25 + 20) = v16;
  *(v25 + 24) = v19;
  *(v25 + 32) = v91;
  *(v25 + 56) = v26;
  *(v25 + 72) = *(v0 + 1224);
  *(v25 + 88) = v15;
  *(v24 + 16) = &unk_1A34E95B0;
  *(v24 + 24) = v25;
  *(v0 + 1176) = v23;
  *(v0 + 1184) = &off_1F161E320;

  sub_1A335DA80(v0 + 16);
  *(v0 + 1152) = v24;
  v27 = *(v0 + 880);
  *(v0 + 184) = *(v0 + 864);
  *(v0 + 200) = v27;
  v28 = *(v0 + 912);
  *(v0 + 216) = *(v0 + 896);
  *(v0 + 232) = v28;
  v29 = *(v0 + 848);
  *v13 = *(v0 + 832);
  *(v0 + 168) = v29;
  *(v0 + 1280) = 0xD000000000000012;
  *(v0 + 1288) = 0x80000001A350AF00;
  sub_1A34CDA40();
  sub_1A3444304(v0 + 1240, v93 & 1, v19, v91);
  if (v89)
  {
    v30 = *(v0 + 1320);
    v31 = *(v0 + 1312);
    v32 = *(v0 + 1304);
    sub_1A32F7584(v0 + 1240);
    v33 = *(v0 + 200);
    *(v0 + 960) = *(v0 + 184);
    *(v0 + 976) = v33;
    v34 = *(v0 + 232);
    *(v0 + 992) = *(v0 + 216);
    *(v0 + 1008) = v34;
    v35 = *(v0 + 168);
    *(v0 + 928) = *v13;
    *(v0 + 944) = v35;
    sub_1A3385160(v0 + 928);
    (*(v31 + 8))(v30, v32);
    sub_1A335D9D0(v87);

    v36 = *(v0 + 8);

    return v36();
  }

  sub_1A32F7584(v0 + 1240);
  v38 = *(v0 + 200);
  *(v0 + 1056) = *(v0 + 184);
  *(v0 + 1072) = v38;
  v39 = *(v0 + 232);
  *(v0 + 1088) = *(v0 + 216);
  *(v0 + 1104) = v39;
  v40 = *(v0 + 168);
  *(v0 + 1024) = *v13;
  *(v0 + 1040) = v40;
  sub_1A3385160(v0 + 1024);
  v41 = *(v0 + 368);
  v43 = *(v0 + 384);
  v42 = *(v0 + 400);
  *(v0 + 248) = v43;
  *(v0 + 264) = v42;
  v44 = *(v0 + 304);
  v46 = *(v0 + 320);
  v45 = *(v0 + 336);
  *(v0 + 184) = v46;
  *(v0 + 200) = v45;
  v47 = *(v0 + 336);
  v49 = *(v0 + 352);
  v48 = *(v0 + 368);
  *(v0 + 216) = v49;
  *(v0 + 232) = v48;
  v50 = *(v0 + 304);
  *v13 = *(v0 + 288);
  *(v0 + 168) = v50;
  v51 = *(v0 + 368);
  v52 = *(v0 + 400);
  *(v0 + 656) = *(v0 + 384);
  *(v0 + 672) = v52;
  v54 = *(v0 + 288);
  v53 = *(v0 + 304);
  v55 = *(v0 + 336);
  *(v0 + 592) = *(v0 + 320);
  *(v0 + 608) = v55;
  *(v0 + 624) = *(v0 + 352);
  *(v0 + 640) = v51;
  *(v0 + 560) = *(v0 + 288);
  *(v0 + 576) = v53;
  v56 = *(v0 + 400);
  *(v0 + 520) = v43;
  *(v0 + 536) = v56;
  *(v0 + 456) = v46;
  *(v0 + 472) = v47;
  *(v0 + 488) = v49;
  *(v0 + 504) = v41;
  *(v0 + 280) = *(v0 + 416);
  *(v0 + 688) = *(v0 + 416);
  *(v0 + 552) = *(v0 + 416);
  *(v0 + 424) = v54;
  *(v0 + 440) = v44;
  sub_1A33851C8(v0 + 560, v0 + 696);
  sub_1A335DA80(v0 + 424);
  if (*(v0 + 576))
  {
    v57 = *(v0 + 648);

    v58 = 2;
  }

  else
  {
    if (qword_1ED854B20 != -1)
    {
      swift_once();
    }

    v57 = qword_1ED857E20;
    v58 = byte_1ED857E28;
    sub_1A31EE004(qword_1ED857E20, byte_1ED857E28);
  }

  v59 = *(v0 + 672);
  v60 = *(v0 + 680);
  sub_1A31EE004(v57, v58);
  v61 = qword_1ED8549E0;

  if (v61 != -1)
  {
    swift_once();
  }

  sub_1A31ECC9C(v57, v58);
  sub_1A335DA80(v0 + 560);
  if (qword_1EB0C1BD8 != -1)
  {
    swift_once();
  }

  v62 = *(qword_1EB0ED238 + 16);
  if (!v62)
  {
    __break(1u);
    goto LABEL_31;
  }

  v63 = *(v0 + 1344);
  v64 = *(v0 + 1328);
  v92 = *(v0 + 1320);
  v65 = *(v0 + 1312);
  v90 = *(v0 + 1304);
  v66 = qword_1EB0ED238 + 24 * (*(v0 + 1360) % v62);
  v67 = *(v66 + 32);
  v68 = *(v66 + 40);
  v69 = *(v66 + 48);
  sub_1A34C8A90();
  v70 = (v63 + v64[7]);
  v70[3] = &type metadata for MonogramAvatarSource;
  v70[4] = &off_1F1629A00;
  v71 = swift_allocObject();
  *v70 = v71;
  *(v71 + 16) = v57;
  *(v71 + 24) = v58;
  *(v71 + 32) = v59;
  *(v71 + 40) = v60;
  *(v71 + 48) = v67;
  *(v71 + 56) = v68;
  *(v71 + 64) = v69;
  v72 = (v63 + v64[8]);
  v72[3] = &type metadata for PosterConfigurationSource;
  v72[4] = &off_1F16220A8;
  v73 = swift_allocObject();
  *v72 = v73;
  *(v73 + 80) = *(v0 + 1184);
  v74 = *(v0 + 1168);
  *(v73 + 48) = *(v0 + 1152);
  *(v73 + 64) = v74;
  v75 = *(v0 + 1136);
  *(v73 + 16) = *v87;
  *(v73 + 32) = v75;
  sub_1A31EE004(v57, v58);

  sub_1A31ECC9C(v57, v58);

  (*(v65 + 8))(v92, v90);
  *(v63 + v64[5]) = 1;
  *(v63 + v64[6]) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(v0 + 1368);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_31:
    v59 = sub_1A3298DD8(0, v59[2] + 1, 1, v59);
  }

  v78 = v59[2];
  v77 = v59[3];
  if (v78 >= v77 >> 1)
  {
    v59 = sub_1A3298DD8(v77 > 1, v78 + 1, 1, v59);
  }

  v79 = *(v0 + 1360);
  v80 = *(v0 + 1344);
  v81 = *(v0 + 1336);
  v59[2] = v78 + 1;
  sub_1A3336E78(v80, v59 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v78);
  if (v79 == 6)
  {

    v82 = *(v0 + 8);

    return v82(v59);
  }

  else
  {
    v83 = *(v0 + 1360) + 1;
    *(v0 + 1368) = v59;
    *(v0 + 1360) = v83;
    v84 = *(v0 + 1352);
    sub_1A34C8A90();
    v85 = v84;
    sub_1A34604B4(v85, v0 + 832, v0 + 16);

    v86 = swift_task_alloc();
    *(v0 + 1376) = v86;
    *v86 = v0;
    v86[1] = sub_1A3384734;

    return sub_1A33837BC(0xD00000000000002CLL, 0x80000001A350EE80);
  }
}

uint64_t sub_1A33850B0()
{
  v1 = v0[165];
  v2 = v0[164];
  v3 = v0[163];
  sub_1A335DA80((v0 + 2));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A3385160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C90C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3385224(void (*a1)(void, void, void), int a2, void *a3)
{
  LODWORD(v88) = a2;
  v87 = a1;
  v95[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v79 - v9;
  v10 = sub_1A34C9650();
  v90 = *(v10 - 8);
  v91 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v79 - v20;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v92 = 0;
  v23 = [ObjCClassFromMetadata archiveCNConfiguration:a3 error:&v92];
  v24 = v92;
  if (!v23)
  {
    v30 = v92;
    sub_1A34C9580();

    return swift_willThrow();
  }

  v25 = v23;
  sub_1A34C9620();
  v26 = v24;

  v27 = sub_1A34C9660();
  if (v3)
  {
    return (*(v90 + 8))(v21, v91);
  }

  v31 = v28 >> 62;
  v89 = v28;
  if ((v28 >> 62) > 1)
  {
    if (v31 != 2 || *(v27 + 16) == *(v27 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v31)
  {
    if (v27 == v27 >> 32)
    {
LABEL_14:
      v37 = v27;
      if (qword_1EB0C4BB0 != -1)
      {
        swift_once();
      }

      v38 = sub_1A34CA250();
      __swift_project_value_buffer(v38, qword_1EB0EE100);
      v39 = a3;
      v40 = sub_1A34CA230();
      v41 = sub_1A34CD640();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v87;
        v43 = HIDWORD(v87);
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v94 = v39;
        v95[0] = v45;
        *v44 = 136315138;
        LOBYTE(v92) = v42 & 1;
        HIDWORD(v92) = v43;
        v93 = v88 & 1;
        v46 = v39;
        v47 = sub_1A34CD170();
        v49 = sub_1A31EE23C(v47, v48, v95);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_1A31E6000, v40, v41, "Poster archive data is empty from configuration: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x1A58F1010](v45, -1, -1);
        MEMORY[0x1A58F1010](v44, -1, -1);
      }

      v50 = v90;
      sub_1A3385AEC();
      swift_allocError();
      swift_willThrow();
      sub_1A31EC234(v37, v89);
      return (*(v50 + 8))(v21, v91);
    }
  }

  else if ((v28 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  v88 = v27;
  v32 = [objc_opt_self() defaultManager];
  v33 = sub_1A34C9600();
  v92 = 0;
  v34 = [v32 removeItemAtURL:v33 error:&v92];

  if (v34)
  {
    v35 = *(v90 + 8);
    v36 = v92;
    v35(v21, v91);
  }

  else
  {
    v51 = v92;
    v52 = sub_1A34C9580();

    swift_willThrow();
    if (qword_1EB0C4BB0 != -1)
    {
      swift_once();
    }

    v53 = sub_1A34CA250();
    __swift_project_value_buffer(v53, qword_1EB0EE100);
    v54 = v90;
    v55 = *(v90 + 16);
    v84 = v90 + 16;
    v87 = v55;
    v55(v18, v21, v91);
    v56 = v52;
    v57 = sub_1A34CA230();
    v58 = sub_1A34CD620();

    v85 = v58;
    if (os_log_type_enabled(v57, v58))
    {
      v81 = v57;
      v82 = v52;
      v59 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v92 = v80;
      v83 = v59;
      *v59 = 136315394;
      v60 = v86;
      v61 = v91;
      (v87)(v86, v18, v91);
      (*(v54 + 56))(v60, 0, 1, v61);
      sub_1A3385A7C(v60, v7);
      if ((*(v54 + 48))(v7, 1, v61) == 1)
      {
        sub_1A330B6F4(v7);
        sub_1A330B6F4(v60);
        v62 = *(v54 + 8);
        v62(v18, v61);
        v63 = 0xE300000000000000;
        v64 = 7104878;
      }

      else
      {
        (*(v54 + 32))(v15, v7, v61);
        (v87)(v12, v15, v61);
        v67 = sub_1A34CD170();
        v63 = v68;
        v69 = v15;
        v62 = *(v54 + 8);
        v62(v69, v61);
        sub_1A330B6F4(v60);
        v62(v18, v61);
        v64 = v67;
      }

      v70 = sub_1A31EE23C(v64, v63, &v92);

      v72 = v82;
      v71 = v83;
      *(v83 + 1) = v70;
      *(v71 + 6) = 2080;
      v95[0] = v72;
      v73 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
      v74 = sub_1A34CD170();
      v76 = sub_1A31EE23C(v74, v75, &v92);

      *(v71 + 14) = v76;
      v77 = v81;
      _os_log_impl(&dword_1A31E6000, v81, v85, "Could not remove temporary poster archive at URL: %s error: %s", v71, 0x16u);
      v78 = v80;
      swift_arrayDestroy();
      MEMORY[0x1A58F1010](v78, -1, -1);
      MEMORY[0x1A58F1010](v71, -1, -1);

      v62(v21, v61);
    }

    else
    {

      v65 = *(v54 + 8);
      v66 = v91;
      v65(v18, v91);
      v65(v21, v66);
    }
  }

  return v88;
}

uint64_t sub_1A3385A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C71D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3385AEC()
{
  result = qword_1EB0C90D0;
  if (!qword_1EB0C90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C90D0);
  }

  return result;
}

unint64_t sub_1A3385B54()
{
  result = qword_1EB0C90D8;
  if (!qword_1EB0C90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C90D8);
  }

  return result;
}

uint64_t sub_1A3385BB8(size_t index)
{
  v2 = CGImageSourceCopyPropertiesAtIndex(v1, index, 0);
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, *MEMORY[0x1E696DE78]);

    if (Value)
    {
      v5 = Value;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1A34CD5A0();
      }
    }
  }

  return 8;
}

uint64_t sub_1A3385C80()
{
  v1 = *(v0 + 32);
  sub_1A34CDF20();
  sub_1A34CD1C0();
  sub_1A34CD840();
  sub_1A34CDF40();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t sub_1A3385D0C()
{
  v1 = *(v0 + 32);
  sub_1A34CD1C0();
  sub_1A34CD840();
  sub_1A34CDF40();
  return MEMORY[0x1A58EF750](v1);
}

uint64_t sub_1A3385D70()
{
  v1 = *(v0 + 32);
  sub_1A34CDF20();
  sub_1A34CD1C0();
  sub_1A34CD840();
  sub_1A34CDF40();
  MEMORY[0x1A58EF750](v1);
  return sub_1A34CDF70();
}

uint64_t sub_1A3385DF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_1A34CDE30(), result = 0, (v7 & 1) != 0))
  {
    sub_1A3385EF4();
    return sub_1A34CD830() & ~(v2 ^ v4) & (v3 == v5);
  }

  return result;
}

unint64_t sub_1A3385EA0()
{
  result = qword_1ED853EE0;
  if (!qword_1ED853EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED853EE0);
  }

  return result;
}

unint64_t sub_1A3385EF4()
{
  result = qword_1ED853EF0;
  if (!qword_1ED853EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED853EF0);
  }

  return result;
}

id sub_1A3385F40@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 identifier];
  v4 = sub_1A34CD110();
  v6 = v5;
  result = [objc_opt_self() componentsForContact_];
  if (result)
  {
    v8 = result;

    if ([v1 isKeyAvailable_])
    {
      v9 = [v1 contactType] == 1;
    }

    else
    {
      v9 = 0;
    }

    if ([v1 isKeyAvailable_] && (v10 = objc_msgSend(v1, sel_thumbnailImageData)) != 0)
    {
      v11 = v10;
      v12 = sub_1A34C9690();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    sub_1A34CDF80();
    sub_1A34CDF40();
    if (v14 >> 60 != 15)
    {
      sub_1A34C96A0();
    }

    v15 = sub_1A34CDF60();
    result = sub_1A31EEE60(v12, v14);
    *a1 = v4;
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A33860D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DCA90;
  type metadata accessor for CGColor(0);
  sub_1A34C9A00();
  *(v0 + 32) = sub_1A34CC590();
  sub_1A34C9A00();
  result = sub_1A34CC590();
  *(v0 + 40) = result;
  qword_1ED857D80 = 0;
  qword_1ED857D88 = 0;
  qword_1ED857D90 = v0;
  byte_1ED857D98 = 2;
  return result;
}

uint64_t type metadata accessor for ContactCardActionRow()
{
  result = qword_1EB0C2360;
  if (!qword_1EB0C2360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3386258()
{
  sub_1A33864C0(319, &qword_1EB0C0138, type metadata accessor for CNUIContactCardActionType);
  if (v0 <= 0x3F)
  {
    sub_1A33864C0(319, &unk_1EB0C2E70, MEMORY[0x1E6968848]);
    if (v1 <= 0x3F)
    {
      sub_1A31F39F8(319, &qword_1EB0C2B30);
      if (v2 <= 0x3F)
      {
        sub_1A31F39F8(319, &unk_1EB0C05E8);
        if (v3 <= 0x3F)
        {
          sub_1A338656C(319, &qword_1EB0C0060, &qword_1EB0C5C80);
          if (v4 <= 0x3F)
          {
            sub_1A338656C(319, &qword_1EB0C90E0, &qword_1EB0C90E8);
            if (v5 <= 0x3F)
            {
              sub_1A3386514(319, &qword_1EB0C01A0, &qword_1EB0C01A8);
              if (v6 <= 0x3F)
              {
                sub_1A3386514(319, &unk_1EB0C0120, &qword_1EB0C0130);
                if (v7 <= 0x3F)
                {
                  sub_1A338656C(319, &qword_1EB0C11D0, &qword_1EB0C90F0);
                  if (v8 <= 0x3F)
                  {
                    sub_1A31EC194(319, &unk_1EB0C00E8);
                    if (v9 <= 0x3F)
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
  }
}

void sub_1A33864C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A34CD890();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3386514(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A31EC194(255, a3);
    v4 = sub_1A34CD890();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A338656C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1A34CD890();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A33865C0()
{
  v1 = type metadata accessor for ContactCardActionRow();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + *(v3 + 44)) & 1) == 0)
  {
    v6 = *(v0 + *(v3 + 60));
    if (v6)
    {
      v7 = 0;
      v8 = *(v6 + 16);
      while (v8 != v7)
      {
        if (v7 >= *(v6 + 16))
        {
          __break(1u);
          return;
        }

        v9 = sub_1A3387A80(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7++, v5);
        v10 = sub_1A33865C0(v9);
        sub_1A32D3FF8(v5);
        if (v10)
        {
          return;
        }
      }
    }
  }
}

void *sub_1A33866F8()
{
  result = sub_1A33BE1E4(&unk_1F161A5E0);
  off_1EB0C2378 = result;
  return result;
}

uint64_t sub_1A3386720@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v95 = type metadata accessor for ContactCardActionRow();
  v6 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = &v92 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v92 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v98 = &v92 - v18;
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v22 = &v92 - v21;
  v23 = [a1 menuItems];
  v96 = a3;
  v99 = a1;
  if (!v23)
  {
    v31 = a1;
    if ([a1 attributedTitle])
    {
      sub_1A34C93F0();
      v32 = sub_1A34C93B0();
      (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
    }

    else
    {
      v33 = sub_1A34C93B0();
      (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
    }

    v34 = [a1 title];
    v35 = sub_1A34CD110();
    v37 = v36;

    v98 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v35, v37);
    v94 = v38;

    sub_1A328D790(v22, v16, &unk_1EB0C5B60);
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    v39 = [a1 subtitle];
    if (v39)
    {
      v40 = v39;
      v41 = sub_1A34CD110();
      v43 = v42;

      v93 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v41, v43);
      v45 = v44;
    }

    else
    {
      v93 = 0;
      v45 = 0;
    }

    v46 = [v31 imageName];
    if (v46)
    {
      v47 = v46;
      v48 = sub_1A34CD110();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    v51 = [v31 shouldDisplayInline];
    v3 = [v31 actionItem];
    v6 = v95;
    swift_unknownObjectWeakInit();
    v52 = *(v6 + 92);
    *&v8[v52] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v53 = v98;
    *v8 = v97;
    v8[8] = 0;
    v54 = v94;
    *(v8 + 2) = v53;
    *(v8 + 3) = v54;
    sub_1A328D790(v16, &v8[*(v6 + 24)], &unk_1EB0C5B60);
    sub_1A328D790(&v100, &v8[*(v6 + 76)], &qword_1EB0CB0A0);
    v55 = &v8[*(v6 + 28)];
    *v55 = v93;
    v55[1] = v45;
    v56 = &v8[*(v6 + 32)];
    *v56 = 0;
    *(v56 + 1) = 0;
    v57 = &v8[*(v6 + 36)];
    *v57 = v48;
    v57[1] = v50;
    *&v8[*(v6 + 40)] = 0;
    v8[*(v6 + 44)] = v51;
    if (qword_1EB0C1E20 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v24 = v23;
  sub_1A31EC194(0, &qword_1EB0C90F8);
  v16 = sub_1A34CD370();

  if (v16 >> 62)
  {
    v22 = sub_1A34CD9B0();
    if (v22)
    {
      goto LABEL_4;
    }

LABEL_29:

    v26 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v66 = v99;
    v67 = [v99 title];
    v68 = sub_1A34CD110();
    v70 = v69;

    v71 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v68, v70);
    v73 = v72;

    v74 = sub_1A34C93B0();
    (*(*(v74 - 8) + 56))(v98, 1, 1, v74);
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    v75 = [v66 imageName];
    v76 = v95;
    if (v75)
    {
      v77 = v75;
      v78 = sub_1A34CD110();
      v80 = v79;
    }

    else
    {
      v78 = 0;
      v80 = 0;
    }

    v81 = [v99 shouldDisplayInline];
    v82 = v94;
    swift_unknownObjectWeakInit();
    v83 = v76[23];
    *&v82[v83] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    *v82 = 0;
    v82[8] = 1;
    *(v82 + 2) = v71;
    *(v82 + 3) = v73;
    sub_1A328D790(v98, &v82[v76[6]], &unk_1EB0C5B60);
    sub_1A328D790(&v100, &v82[v76[19]], &qword_1EB0CB0A0);
    v84 = &v82[v76[7]];
    *v84 = 0;
    *(v84 + 1) = 0;
    v85 = &v82[v76[8]];
    *v85 = 0;
    *(v85 + 1) = 0;
    v86 = &v82[v76[9]];
    *v86 = v78;
    v86[1] = v80;
    *&v82[v76[10]] = 0;
    v82[v76[11]] = v81;
    if (qword_1EB0C1E20 != -1)
    {
      swift_once();
    }

    *&v82[v76[13]] = qword_1EB0ED2D0;
    v82[v76[14]] = 1;
    v87 = &v82[v76[17]];
    *v87 = 0;
    *(v87 + 1) = 0;
    *&v82[v76[16]] = 0;
    *&v82[v76[15]] = v26;
    v88 = &v82[v76[12]];
    *v88 = 0;
    *(v88 + 1) = 0;
    *&v82[v76[18]] = 0;
    v82[v76[20]] = 0;
    v89 = qword_1EB0C2370;
    sub_1A34C9010();
    if (v89 != -1)
    {
      swift_once();
    }

    v90 = sub_1A3335898(0x7FFFFFFFLL, off_1EB0C2378);

    sub_1A3288FDC(&v100, &qword_1EB0CB0A0);
    sub_1A3288FDC(v98, &unk_1EB0C5B60);
    v82[v76[21]] = v90;
    v64 = v82;
    v65 = v96;
    return sub_1A3387A1C(v64, v65);
  }

  v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_29;
  }

LABEL_4:
  *&v100 = MEMORY[0x1E69E7CC0];
  v8 = &v100;
  sub_1A32EBBD4(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = v100;
    v27 = v97;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1A58EF310](v25, v16);
      }

      else
      {
        v28 = *(v16 + 8 * v25 + 32);
      }

      sub_1A3386720(v28, v27);
      *&v100 = v26;
      v30 = *(v26 + 16);
      v29 = *(v26 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1A32EBBD4(v29 > 1, v30 + 1, 1);
        v27 = v97;
        v26 = v100;
      }

      ++v25;
      *(v26 + 16) = v30 + 1;
      sub_1A3387A1C(v13, v26 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30);
    }

    while (v22 != v25);

    goto LABEL_30;
  }

  __break(1u);
LABEL_40:
  swift_once();
LABEL_23:
  *&v8[*(v6 + 52)] = qword_1EB0ED2D0;
  v8[*(v6 + 56)] = 1;
  v58 = &v8[*(v6 + 68)];
  *v58 = 0;
  *(v58 + 1) = 0;
  *&v8[*(v6 + 64)] = v3;
  *&v8[*(v6 + 60)] = 0;
  v59 = &v8[*(v6 + 48)];
  *v59 = 0;
  *(v59 + 1) = 0;
  *&v8[*(v6 + 72)] = 0;
  v60 = qword_1EB0C0158;
  sub_1A34C9010();
  v61 = v96;
  if (v60 != -1)
  {
    swift_once();
  }

  v62 = v97;
  v8[*(v6 + 80)] = sub_1A3335898(v97, off_1EB0C0160);
  if (qword_1EB0C2370 != -1)
  {
    swift_once();
  }

  v63 = sub_1A3335898(v62, off_1EB0C2378);

  sub_1A3288FDC(&v100, &qword_1EB0CB0A0);
  sub_1A3288FDC(v16, &unk_1EB0C5B60);
  sub_1A3288FDC(v22, &unk_1EB0C5B60);
  v8[*(v6 + 84)] = v63;
  v64 = v8;
  v65 = v61;
  return sub_1A3387A1C(v64, v65);
}

void *sub_1A3387134()
{
  result = sub_1A33BE1E4(&unk_1F161B060);
  off_1EB0C0160 = result;
  return result;
}

uint64_t sub_1A338715C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A34C93B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9530);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v14 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_16;
    }
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1A34CDE30() & 1) == 0)
  {
    goto LABEL_16;
  }

  v63 = type metadata accessor for ContactCardActionRow();
  v64 = a2;
  v15 = v63[6];
  v16 = *(v11 + 48);
  sub_1A328D790(a1 + v15, v13, &unk_1EB0C5B60);
  v17 = v64 + v15;
  v18 = v64;
  sub_1A328D790(v17, &v13[v16], &unk_1EB0C5B60);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v16], 1, v4) == 1)
    {
      sub_1A3288FDC(v13, &unk_1EB0C5B60);
      goto LABEL_19;
    }

LABEL_15:
    sub_1A3288FDC(v13, &unk_1EB0C9530);
    goto LABEL_16;
  }

  sub_1A328D790(v13, v10, &unk_1EB0C5B60);
  if (v19(&v13[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_15;
  }

  (*(v5 + 32))(v7, &v13[v16], v4);
  sub_1A338776C();
  v22 = sub_1A34CD040();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  v18 = v64;
  sub_1A3288FDC(v13, &unk_1EB0C5B60);
  if ((v22 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v24 = v63;
  v25 = v63[7];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (v18 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_1A34CDE30() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v29)
  {
    goto LABEL_16;
  }

  v30 = v24[8];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (v18 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_1A34CDE30() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v34)
  {
    goto LABEL_16;
  }

  v35 = v24[9];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (v18 + v35);
  v39 = v38[1];
  if (v37)
  {
    if (!v39 || (*v36 != *v38 || v37 != v39) && (sub_1A34CDE30() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v39)
  {
    goto LABEL_16;
  }

  v40 = v24[10];
  v41 = *(v18 + v40);
  if (*(a1 + v40))
  {
    if (!v41)
    {
      goto LABEL_16;
    }

    sub_1A34C9010();
    v42 = sub_1A34CC460();

    if ((v42 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v41)
  {
    goto LABEL_16;
  }

  if (*(a1 + v24[11]) != *(v18 + v24[11]) || (sub_1A34CC460() & 1) == 0 || *(a1 + v24[14]) != *(v18 + v24[14]))
  {
    goto LABEL_16;
  }

  v43 = v24[15];
  v44 = *(a1 + v43);
  v45 = *(v18 + v43);
  if (v44)
  {
    if (!v45)
    {
      goto LABEL_16;
    }

    v46 = sub_1A3426360(v44, v45);

    if ((v46 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v45)
  {
    goto LABEL_16;
  }

  v47 = v24[16];
  v48 = *(a1 + v47);
  v49 = *(v18 + v47);
  if (v48)
  {
    if (!v49)
    {
      goto LABEL_16;
    }

    sub_1A31EC194(0, &qword_1EB0C01A8);
    v50 = v49;
    v51 = v48;
    v52 = sub_1A34CD830();

    if ((v52 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v49)
  {
    goto LABEL_16;
  }

  v53 = v63[17];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 8);
  v56 = (v64 + v53);
  v57 = v56[1];
  if (!v55)
  {
    if (!v57)
    {
      goto LABEL_65;
    }

LABEL_16:
    v20 = 0;
    return v20 & 1;
  }

  if (!v57 || (*v54 != *v56 || v55 != v57) && (sub_1A34CDE30() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_65:
  v58 = v63[18];
  v59 = *(a1 + v58);
  v60 = *(v64 + v58);
  v20 = (v59 | v60) == 0;
  if (v59 && v60)
  {
    sub_1A31EC194(0, &qword_1EB0C0130);
    v61 = v60;
    v62 = v59;
    v20 = sub_1A34CD830();
  }

  return v20 & 1;
}

unint64_t sub_1A338776C()
{
  result = qword_1EB0C2A68;
  if (!qword_1EB0C2A68)
  {
    sub_1A34C93B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2A68);
  }

  return result;
}

uint64_t sub_1A33877C4(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0xE000000000000000;
  switch(a1)
  {
    case 0:
      v3 = 0xD000000000000011;
      v5 = "PHONE_ACTION_TEXT";
      goto LABEL_15;
    case 1:
      v4 = 0x80000001A350F8B0;
      v3 = 0xD000000000000021;
      break;
    case 2:
      v6 = "PHONE_ACTION_ADD_TO_FAVORITES";
      goto LABEL_9;
    case 3:
      v4 = 0x80000001A350F940;
      v3 = 0xD000000000000029;
      break;
    case 4:
      v4 = 0x80000001A350F9E0;
      v3 = 0xD000000000000019;
      break;
    case 5:
      v7 = "CARD_ACTION_SHOW_MEDICAL_ID";
      goto LABEL_11;
    case 6:
      v3 = 0xD000000000000011;
      v5 = "BLOCK_THIS_CALLER";
      goto LABEL_15;
    case 8:
      v4 = 0x80000001A350F900;
      v3 = 0xD00000000000001FLL;
      break;
    case 9:
      v4 = 0x80000001A350F990;
      v3 = 0xD000000000000024;
      break;
    case 11:
      v4 = 0x80000001A350F870;
      v3 = 0xD000000000000018;
      break;
    case 12:
      v6 = "GAME_CENTER_ACTION_SENT_TITLE";
LABEL_9:
      v4 = (v6 - 32) | 0x8000000000000000;
      v3 = 0xD00000000000001DLL;
      break;
    case 13:
      v3 = 0xD000000000000011;
      v5 = "GAME_CENTER_TITLE";
LABEL_15:
      v4 = (v5 - 32) | 0x8000000000000000;
      break;
    case 14:
      v7 = "CARD_ACTION_DELETE_ACCEPTED";
LABEL_11:
      v4 = (v7 - 32) | 0x8000000000000000;
      v3 = 0xD00000000000001BLL;
      break;
    case 24:
      v4 = 0x80000001A350F7B0;
      v3 = 0xD000000000000027;
      break;
    case 25:
      v4 = 0x80000001A350F9C0;
      v3 = 0xD00000000000001CLL;
      break;
    case 27:
      v4 = 0x80000001A350F7E0;
      v3 = 0xD000000000000026;
      break;
    default:
      break;
  }

  v8 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v3, v4);

  return v8;
}

uint64_t sub_1A3387A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardActionRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3387A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardActionRow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3387AE4()
{
  result = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000011, 0x80000001A350FA80);
  qword_1EB0EDE18 = result;
  unk_1EB0EDE20 = v1;
  return result;
}

id sub_1A3387B30()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E699BAE0]) init];
    [v3 readEmojiDefaults];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1A3387BAC()
{
  v1[9] = v0;
  v2 = sub_1A34C9780();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for VisualIdentity(0);
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A3387CC8, 0, 0);
}

uint64_t sub_1A3387CC8()
{
  v1 = *(v0 + 72);
  v2 = sub_1A3387B30();
  v3 = [v2 recentEmojisByFillingWithPrepopulatedEmojisUpTo_];

  sub_1A3388750();
  v4 = sub_1A34CD370();

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A34CD9B0())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v8 = 0;
      do
      {
        v9 = v8;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1A58EF310](v9, v4);
          }

          else
          {
            if (v9 >= *(v5 + 16))
            {
              goto LABEL_39;
            }

            v10 = *(v4 + 8 * v9 + 32);
          }

          v11 = v10;
          v8 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v12 = [v10 string];
          if (v12)
          {
            break;
          }

          ++v9;
          if (v8 == i)
          {
            goto LABEL_19;
          }
        }

        v13 = v7;
        v14 = v12;
        v15 = sub_1A34CD110();
        v50 = v16;
        v52 = v15;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1A32984C4(0, *(v13 + 2) + 1, 1, v13);
        }

        v18 = *(v13 + 2);
        v17 = *(v13 + 3);
        v19 = v13;
        if (v18 >= v17 >> 1)
        {
          v19 = sub_1A32984C4((v17 > 1), v18 + 1, 1, v13);
        }

        *(v19 + 2) = v18 + 1;
        v20 = &v19[16 * v18];
        v7 = v19;
        *(v20 + 4) = v52;
        *(v20 + 5) = v50;
      }

      while (v8 != i);
    }

LABEL_19:

    v21 = *(v7 + 2);
    if (!v21)
    {
      break;
    }

    v46 = *(v0 + 104);
    v47 = *(v0 + 112);
    v5 = *(v0 + 88);
    v54 = MEMORY[0x1E69E7CC0];
    sub_1A32EBCF4(0, v21, 0);
    v22 = 0;
    v51 = v7 + 32;
    v4 = v54;
    v45 = (v5 + 32);
    v48 = v21;
    v49 = v7;
    while (v22 < *(v7 + 2))
    {
      v23 = &v51[16 * v22];
      v5 = *v23;
      v24 = v23[1];

      sub_1A34C8A90();
      if (qword_1EB0C1780 != -1)
      {
        swift_once();
      }

      v25 = qword_1EB0ED118;
      v26 = *(qword_1EB0ED118 + 16);
      if (!v26)
      {
        goto LABEL_41;
      }

      *(v0 + 56) = 0;
      MEMORY[0x1A58F1030](v0 + 56, 8);
      v27 = *(v0 + 56);
      v28 = v27 * v26;
      v29 = (v27 * v26) >> 64;
      if (v26 > v28)
      {
        v30 = -v26 % v26;
        if (v30 > v28)
        {
          do
          {
            *(v0 + 64) = 0;
            MEMORY[0x1A58F1030](v0 + 64, 8);
            v31 = *(v0 + 64);
          }

          while (v30 > v31 * v26);
          v29 = (v31 * v26) >> 64;
        }
      }

      if (v29 >= *(v25 + 16))
      {
        goto LABEL_42;
      }

      v32 = *(v0 + 120);
      v53 = *(v0 + 96);
      v33 = *(v0 + 80);
      v34 = v25 + 16 * v29;
      v35 = *(v34 + 32);
      v36 = *(v34 + 40);
      *(v0 + 40) = &type metadata for EmojiAvatarSource;
      *(v0 + 48) = &off_1F162A430;
      v37 = swift_allocObject();
      *(v0 + 16) = v37;
      *(v37 + 16) = v5;
      *(v37 + 24) = v24;
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      v38 = (v32 + v46[8]);
      v38[3] = &type metadata for PlaceholderPosterSource;
      v38[4] = &off_1F1624DA0;
      v39 = swift_allocObject();
      *v38 = v39;
      *(v39 + 16) = 1;
      *(v39 + 88) = 0u;
      *(v39 + 72) = 0u;
      *(v39 + 56) = 0u;
      *(v39 + 40) = 0u;
      *(v39 + 24) = 0u;
      *(v39 + 104) = 0;
      *(v39 + 112) = 0x2000000000000000;
      *(v39 + 120) = 0;
      *(v39 + 128) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1A34DAA10;
      sub_1A31EE004(v35, v36);
      *(v40 + 32) = sub_1A34CC500();
      *(v39 + 136) = v40;
      (*v45)(v32, v53, v33);
      *(v32 + v46[5]) = 0;
      *(v32 + v46[6]) = 0;
      sub_1A335DED0((v0 + 16), v32 + v46[7]);
      v5 = *(v54 + 16);
      v41 = *(v54 + 24);
      if (v5 >= v41 >> 1)
      {
        sub_1A32EBCF4(v41 > 1, v5 + 1, 1);
      }

      ++v22;
      v42 = *(v0 + 120);
      *(v54 + 16) = v5 + 1;
      sub_1A3336E78(v42, v54 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v5);
      v7 = v49;
      if (v22 == v48)
      {

        goto LABEL_35;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_35:

  v43 = *(v0 + 8);

  return v43(v4);
}

uint64_t sub_1A3388208()
{
}

uint64_t sub_1A3388238()
{
  sub_1A31F08B0(v0 + 16);
  v1 = *(v0 + 32);
  sub_1A34C9010();

  return swift_deallocClassInstance();
}

uint64_t sub_1A33882CC()
{
  if (qword_1EB0C49B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0EDE18;

  return v0;
}

uint64_t sub_1A338833C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A330F6A8;

  return sub_1A3387BAC();
}

uint64_t sub_1A33883C8()
{
  v0 = type metadata accessor for EmojiSuggestionProvider();

  return sub_1A3463D24(v0, &off_1F16231C8);
}

uint64_t sub_1A33883F8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  *(v2 + 48) = *(v1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1A3388430, 0, 0);
}

char *sub_1A3388430()
{
  v21 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for VisualIdentitySuggestionContext(0) + 32));
  v19[1] = 1;
  sub_1A32FD380();
  v19[0] = v2;
  sub_1A32FD380();
  if (qword_1EB0C1780 != -1)
  {
LABEL_12:
    swift_once();
  }

  v20 = qword_1EB0ED118;

  sub_1A3485068(v19);
  v3 = v20;
  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1A32EBD14(0, 16, 0);
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v20;
    do
    {
      if (v6 % v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_12;
      }

      v8 = *(v0 + 40);
      v9 = v3 + 32 + 16 * (v6 % v5);
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v0 + 48);

      sub_1A31EE004(v8, v12);
      sub_1A31EE004(v10, v11);
      sub_1A31ECC9C(v8, v12);
      v20 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1A32EBD14((v13 > 1), v14 + 1, 1);
        v7 = v20;
      }

      v16 = *(v0 + 24);
      v15 = *(v0 + 32);
      ++v6;
      *(v7 + 16) = v14 + 1;
      v17 = v7 + 32 * v14;
      *(v17 + 32) = v16;
      *(v17 + 40) = v15;
      *(v17 + 48) = v10;
      *(v17 + 56) = v11;
    }

    while (v6 != 16);

    v18 = *(v0 + 8);

    return v18(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3388630(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A335E180;

  return sub_1A33883F8(a1);
}

unint64_t sub_1A33886C4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1A58F1030](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1A58F1030](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A3388750()
{
  result = qword_1EB0C0200;
  if (!qword_1EB0C0200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C0200);
  }

  return result;
}

void sub_1A338879C(uint64_t a1, unsigned __int8 a2, void *a3, void *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v13 = (a13 >> 59) & 7;
  if (((a13 >> 59) & 7) > 1)
  {
    if (v13 == 2)
    {
    }

    else if (v13 == 3)
    {
    }
  }

  else if (v13)
  {
    if (v13 == 1)
    {

      sub_1A31ECC9C(a1, a2);
    }
  }

  else
  {
    sub_1A31ECC9C(a1, a2);

    sub_1A32FC8A4(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  }
}

uint64_t sub_1A3388934()
{
  if (qword_1EB0C49D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0EDE30;
  v1 = qword_1EB0C49C8;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_1A31EABF0(v2);
  qword_1EB0C9100 = v0;
  return result;
}

uint64_t static HeaderView.descriptorsForRequiredKeys.getter()
{
  if (qword_1EB0C49B8 != -1)
  {
    swift_once();
  }
}

uint64_t HeaderView.init(configuration:)@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for HeaderView();
  v8 = *(v7 + 24);
  *(a2 + v8) = [objc_opt_self() deviceSupportsGemini];
  sub_1A3388CEC(a1, a2 + *(v7 + 20));
  v9 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  objc_allocWithZone(type metadata accessor for ContactCardHeaderSwiftUIViewModel(0));
  v11 = v9;
  v12 = sub_1A33944DC(v11, Strong);

  v21[1] = v12;
  sub_1A34CC730();
  v13 = v21[3];
  *a2 = v21[2];
  a2[1] = v13;
  if (qword_1EB0C12C0 != -1)
  {
    swift_once();
  }

  v14 = sub_1A34CA250();
  __swift_project_value_buffer(v14, qword_1EB0ED068);
  sub_1A3388CEC(a1, v6);
  v15 = sub_1A34CA230();
  v16 = sub_1A34CD660();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138477827;
    v19 = *v6;
    sub_1A32A313C(v6);
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&dword_1A31E6000, v15, v16, "[HeaderView] init for %{private}@", v17, 0xCu);
    sub_1A3288FDC(v18, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v18, -1, -1);
    MEMORY[0x1A58F1010](v17, -1, -1);
  }

  else
  {

    sub_1A32A313C(a1);
    a1 = v6;
  }

  return sub_1A32A313C(a1);
}

uint64_t type metadata accessor for HeaderView()
{
  result = qword_1EB0C2A00;
  if (!qword_1EB0C2A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3388CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HeaderView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9160);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v2;
  *v3 = sub_1A34CB280();
  *(v3 + 1) = 0x4018000000000000;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9168);
  sub_1A3388E7C(v0, &v3[*(v4 + 44)]);
  sub_1A3284D0C(&qword_1EB0C0460, &qword_1EB0C9160);
  sub_1A34CC1F0();
  return sub_1A3288FDC(v3, &qword_1EB0C9160);
}

uint64_t sub_1A3388E7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91B8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v128 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91C0);
  v148 = *(v4 - 8);
  v149 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v140 = &v128 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v152 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v164 = &v128 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91D0);
  v150 = *(v10 - 8);
  v151 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v165 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v168 = &v128 - v13;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91D8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v129 = &v128 - v16;
  v17 = sub_1A34CAAF0();
  v134 = *(v17 - 8);
  v135 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v133 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v128 - v20;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91E0);
  MEMORY[0x1EEE9AC00](v130);
  v138 = &v128 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91E8);
  v157 = *(v22 - 8);
  v158 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v128 - v23;
  v137 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v137);
  v139 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91F0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v163 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v169 = &v128 - v28;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91F8);
  MEMORY[0x1EEE9AC00](v145);
  v144 = &v128 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9200);
  v154 = *(v30 - 1);
  v155 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v143 = &v128 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9208);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v162 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v171 = &v128 - v35;
  v36 = sub_1A34C9410();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v136 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9210);
  MEMORY[0x1EEE9AC00](v147);
  v39 = &v128 - v38;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9218);
  MEMORY[0x1EEE9AC00](v146);
  v41 = &v128 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v128 - v43;
  v45 = sub_1A34C93B0();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v128 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v128 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9228);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v161 = &v128 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v170 = &v128 - v55;
  v56 = a1[1];
  v57 = a1;
  v159 = *a1;
  *&v174 = v159;
  *(&v174 + 1) = v56;
  v167 = v56;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9230);
  sub_1A34CC740();
  v58 = v172;
  sub_1A3391F00(v44);

  v59 = (*(v46 + 48))(v44, 1, v45);
  v160 = v57;
  if (v59 != 1)
  {
    (*(v46 + 32))(v51, v44, v45);
    goto LABEL_6;
  }

  sub_1A3288FDC(v44, &unk_1EB0C5B60);
  v60 = *(v57 + *(type metadata accessor for HeaderView() + 20));
  v61 = [v60 isSuggested];
  v62 = v170;
  if ((v61 & 1) != 0 || (v64 = [v60 iOSLegacyIdentifier], v64 == *MEMORY[0x1E695C248]) && (objc_msgSend(v60, sel_isSuggestedMe) & 1) == 0)
  {
    if (([v60 isCoreRecentsAccepted] & 1) == 0)
    {
      sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000015, 0x80000001A350FB20);
      sub_1A34CD180();

      sub_1A34C9400();
      sub_1A34C93C0();
      v51 = v48;
LABEL_6:
      sub_1A338A338(v51, v41);
      sub_1A328D790(v41, v39, &unk_1EB0C9218);
      swift_storeEnumTagMultiPayload();
      sub_1A338CA50(&qword_1EB0C0BC0, &unk_1EB0C9218, &unk_1A34EBB00, sub_1A338CB04);
      v62 = v170;
      sub_1A34CB3E0();
      sub_1A3288FDC(v41, &unk_1EB0C9218);
      (*(v46 + 8))(v51, v45);
      v63 = 0;
      goto LABEL_10;
    }
  }

  v63 = 1;
LABEL_10:
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9238);
  v66 = 1;
  (*(*(v65 - 8) + 56))(v62, v63, 1, v65);
  v67 = v159;
  *&v174 = v159;
  *(&v174 + 1) = v167;
  sub_1A34CC740();
  v68 = v172;
  swift_getKeyPath();
  *&v174 = v68;
  v147 = sub_1A338C5A0(&qword_1EB0C1530, type metadata accessor for ContactCardHeaderSwiftUIViewModel);
  sub_1A34C99A0();

  v69 = v68[OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isEmergencyContact];

  v70 = v160;
  v71 = v156;
  if (v69 == 1)
  {
    *&v174 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000001BLL, 0x80000001A350FAE0);
    *(&v174 + 1) = v72;
    sub_1A328A95C();
    v73 = sub_1A34CBE30();
    v75 = v74;
    v77 = v76;
    v78 = v144;
    sub_1A338A990(v73, v74, v76 & 1, v79, v144);
    sub_1A328A9B0(v73, v75, v77 & 1);

    sub_1A338C690();
    v80 = v143;
    sub_1A34CC1F0();
    sub_1A3288FDC(v78, &qword_1EB0C91F8);
    sub_1A329D98C(v80, v171, &qword_1EB0C9200);
    v66 = 0;
  }

  v81 = 1;
  (*(v154 + 56))(v171, v66, 1, v155);
  v82 = [objc_opt_self() unifiedMeContactMonitor];
  v83 = type metadata accessor for HeaderView();
  v84 = (v70 + *(v83 + 20));
  v85 = *v84;
  v86 = [v82 isMeContact_];

  if ((v86 & 1) != 0 || *(v70 + *(v83 + 24)) != 1)
  {
    goto LABEL_20;
  }

  v87 = v139;
  sub_1A3388CEC(v84, v139);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1A32A313C(v87);
  if (!Strong)
  {
    goto LABEL_19;
  }

  v89 = *(v84 + *(v137 + 48));
  if (!v89)
  {
    swift_unknownObjectRelease();
LABEL_19:
    v81 = 1;
    goto LABEL_20;
  }

  *&v174 = swift_getKeyPath();
  v180 = 0;
  KeyPath = swift_getKeyPath();
  v182 = 0;
  v188 = 0;
  v90 = v89;
  v91 = v85;
  swift_unknownObjectRetain();
  sub_1A34CC730();
  v183 = v172;
  v184 = v173;
  v92 = swift_allocObject();
  v92[2] = v91;
  v92[3] = Strong;
  v155 = v90;
  v92[4] = v90;
  v185 = sub_1A333F82C;
  v186 = v92;
  v187 = 0;
  v94 = v134;
  v93 = v135;
  v95 = *(v134 + 104);
  v95(v71, *MEMORY[0x1E697E718], v135);
  v96 = v133;
  v95(v133, *MEMORY[0x1E697E6D0], v93);
  sub_1A338C5A0(&qword_1EB0C0FC8, MEMORY[0x1E697E730]);
  result = sub_1A34CD020();
  v154 = Strong;
  if ((result & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v98 = *(v94 + 32);
  v99 = v129;
  v98(v129, v71, v93);
  v100 = v132;
  v98((v99 + *(v132 + 48)), v96, v93);
  v101 = v131;
  sub_1A328D790(v99, v131, &qword_1EB0C91D8);
  v102 = *(v100 + 48);
  v98(v138, v101, v93);
  v103 = *(v94 + 8);
  v103(v101 + v102, v93);
  sub_1A329D98C(v99, v101, &qword_1EB0C91D8);
  v104 = v138;
  v98(&v138[*(v130 + 36)], (v101 + *(v100 + 48)), v93);
  v103(v101, v93);
  sub_1A338C5E8();
  sub_1A3284D0C(&qword_1EB0C02D8, &qword_1EB0C91E0);
  v105 = v128;
  sub_1A34CC010();
  swift_unknownObjectRelease();

  sub_1A3288FDC(v104, &qword_1EB0C91E0);
  sub_1A338C63C(&v174);
  (*(v157 + 32))(v169, v105, v158);
  v81 = 0;
  v67 = v159;
LABEL_20:
  (*(v157 + 56))(v169, v81, 1, v158);
  sub_1A338A568(v168);
  *&v174 = v67;
  *(&v174 + 1) = v167;
  sub_1A34CC740();
  v106 = v172;
  swift_getKeyPath();
  *&v174 = v106;
  sub_1A34C99A0();

  v107 = v106[OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isBlocked];

  if (v107 == 1)
  {
    v108 = sub_1A34CB110();
    sub_1A338B294(&v174);
    v110 = *(&v174 + 1);
    v109 = v174;
    v111 = v175;
    v112 = v176;
    v113 = *(&v176 + 1);
    LOBYTE(v172) = 0;
    v188 = v176;
    *&v174 = v108;
    *(&v174 + 1) = 0x4010000000000000;
    LOBYTE(v175) = 0;
    v176 = __PAIR128__(v110, v109);
    v177 = v111;
    v178 = v188;
    v179 = v113;
    v114 = v141;
    sub_1A338AD54(&v174, v141);

    sub_1A328A9B0(v110, v111, v112);

    sub_1A338C238();
    v115 = v140;
    sub_1A34CC1F0();
    sub_1A3288FDC(v114, &qword_1EB0C91B8);
    v116 = v164;
    sub_1A329D98C(v115, v164, &qword_1EB0C91C0);
    (*(v148 + 56))(v116, 0, 1, v149);
  }

  else
  {
    v116 = v164;
    (*(v148 + 56))(v164, 1, 1, v149);
  }

  v117 = v161;
  sub_1A328D790(v170, v161, &qword_1EB0C9228);
  v118 = v162;
  sub_1A328D790(v171, v162, &qword_1EB0C9208);
  v119 = v163;
  sub_1A328D790(v169, v163, &qword_1EB0C91F0);
  v121 = v150;
  v120 = v151;
  v122 = *(v150 + 16);
  v122(v165, v168, v151);
  v123 = v152;
  sub_1A328D790(v116, v152, &qword_1EB0C91C8);
  v124 = v153;
  sub_1A328D790(v117, v153, &qword_1EB0C9228);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9248);
  sub_1A328D790(v118, v124 + v125[12], &qword_1EB0C9208);
  sub_1A328D790(v119, v124 + v125[16], &qword_1EB0C91F0);
  v126 = v165;
  v122((v124 + v125[20]), v165, v120);
  sub_1A328D790(v123, v124 + v125[24], &qword_1EB0C91C8);
  sub_1A3288FDC(v164, &qword_1EB0C91C8);
  v127 = *(v121 + 8);
  v127(v168, v120);
  sub_1A3288FDC(v169, &qword_1EB0C91F0);
  sub_1A3288FDC(v171, &qword_1EB0C9208);
  sub_1A3288FDC(v170, &qword_1EB0C9228);
  sub_1A3288FDC(v123, &qword_1EB0C91C8);
  v127(v126, v120);
  sub_1A3288FDC(v163, &qword_1EB0C91F0);
  sub_1A3288FDC(v162, &qword_1EB0C9208);
  return sub_1A3288FDC(v161, &qword_1EB0C9228);
}

uint64_t sub_1A338A338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = sub_1A34C93B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9330);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  (*(v4 + 16))(v6, a1, v3, v8);
  v11 = sub_1A34CBE20();
  v13 = v12;
  LOBYTE(a1) = v14;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v19[2] = v11;
  v19[3] = v13;
  v20 = a1 & 1;
  v21 = v16;
  v22 = KeyPath;
  v23 = 1;
  sub_1A34CBB70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9338);
  sub_1A338CBF8();
  sub_1A34CBE60();
  sub_1A328A9B0(v11, v13, a1 & 1);

  *&v10[*(v7 + 36)] = sub_1A34CC500();
  sub_1A338CB04();
  sub_1A34CC1F0();
  return sub_1A3288FDC(v10, &qword_1EB0C9330);
}

uint64_t sub_1A338A568@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_1A34CB770();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9350);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v35 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9358);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v35 - v9;
  v11 = v1[1];
  v41 = *v1;
  v42 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9230);
  sub_1A34CC740();
  v12 = v40;
  v13 = sub_1A339284C();
  v15 = v14;

  v41 = v13;
  v42 = v15;
  sub_1A328A95C();
  v16 = sub_1A34CBE30();
  v18 = v17;
  LOBYTE(v15) = v19;
  v21 = v20;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  LOBYTE(v15) = v15 & 1;
  LOBYTE(v41) = v15;
  LOBYTE(v40) = 0;
  v24 = *(v2 + *(type metadata accessor for HeaderView() + 20));
  *(v8 + 9) = swift_getKeyPath();
  v8[336] = 0;
  *(v8 + 43) = v24;
  *v8 = v16;
  *(v8 + 1) = v18;
  v8[16] = v15;
  *(v8 + 3) = v21;
  *(v8 + 4) = KeyPath;
  *(v8 + 5) = 2;
  v8[48] = 0;
  *(v8 + 7) = v23;
  v8[64] = 1;
  *(v8 + 44) = swift_getKeyPath();
  *(v8 + 45) = 0x3FE6666666666666;
  v25 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9360) + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9368) + 28);
  v27 = *MEMORY[0x1E6980FA8];
  v28 = sub_1A34CBDD0();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  v29 = v24;
  v30 = sub_1A34CC500();
  v31 = swift_getKeyPath();
  v32 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9370) + 36)];
  *v32 = v31;
  v32[1] = v30;
  sub_1A338CD04();
  sub_1A34CCC50();
  sub_1A338CD58();
  sub_1A34CC1F0();
  sub_1A3288FDC(v8, &qword_1EB0C9350);
  sub_1A34CB760();
  sub_1A338CA50(&qword_1EB0C09B8, &qword_1EB0C9358, &unk_1A34EBCA8, sub_1A338CD58);
  v33 = v37;
  sub_1A34CBF90();
  (*(v38 + 8))(v6, v33);
  return sub_1A3288FDC(v10, &qword_1EB0C9358);
}

uint64_t sub_1A338A990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_1EB0C4AC8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB0EDF78;
  KeyPath = swift_getKeyPath();
  sub_1A34C9010();
  v12 = a3 & 1;
  sub_1A3285BB4(a1, a2, v12);
  v13 = qword_1EB0C4AD0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB0EDF80;
  sub_1A34C9010();
  v15 = sub_1A34CBAF0();
  sub_1A34CA460();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v70) = v12;
  v43[0] = 0;
  v42 = sub_1A34CBA80();
  *&v51 = a1;
  *(&v51 + 1) = a2;
  LOBYTE(v52) = v12;
  *(&v52 + 1) = a4;
  *&v53 = KeyPath;
  *(&v53 + 1) = v10;
  *&v54 = v14;
  BYTE8(v54) = v15;
  *&v55 = v17;
  *(&v55 + 1) = v19;
  *&v56 = v21;
  *(&v56 + 1) = v23;
  v57 = 0;
  sub_1A34CA460();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v48 = v55;
  v49 = v56;
  LOBYTE(v50) = 0;
  v44 = v51;
  v45 = v52;
  v46 = v53;
  v47 = v54;
  v43[152] = 0;
  v58[0] = a1;
  v58[1] = a2;
  v59 = v12;
  v60 = a4;
  v61 = KeyPath;
  v62 = v10;
  v63 = v14;
  v64 = v15;
  v65 = v17;
  v66 = v19;
  v67 = v21;
  v68 = v23;
  v69 = 0;
  sub_1A328D790(&v51, v80, &qword_1EB0C9308);
  sub_1A3288FDC(v58, &qword_1EB0C9308);
  v32 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C92E8) + 36);
  sub_1A338CCB0();
  sub_1A34CCC50();
  v33 = sub_1A34CBA90();
  v74 = v48;
  v75 = v49;
  *&v76 = v50;
  v70 = v44;
  v71 = v45;
  v72 = v46;
  v73 = v47;
  BYTE8(v76) = v42;
  *&v77 = v25;
  *(&v77 + 1) = v27;
  *&v78 = v29;
  *(&v78 + 1) = v31;
  v79 = 0;
  *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C92C0) + 36)) = v33;
  v34 = v71;
  *a5 = v70;
  *(a5 + 16) = v34;
  v35 = v75;
  *(a5 + 64) = v74;
  *(a5 + 80) = v35;
  v36 = v73;
  *(a5 + 32) = v72;
  *(a5 + 48) = v36;
  *(a5 + 144) = v79;
  v37 = v78;
  *(a5 + 112) = v77;
  *(a5 + 128) = v37;
  *(a5 + 96) = v76;
  v80[4] = v48;
  v80[5] = v49;
  v81 = v50;
  v80[0] = v44;
  v80[1] = v45;
  v80[2] = v46;
  v80[3] = v47;
  v82 = v42;
  v83 = v25;
  v84 = v27;
  v85 = v29;
  v86 = v31;
  v87 = 0;
  sub_1A328D790(&v70, v43, &qword_1EB0C92F8);
  sub_1A3288FDC(v80, &qword_1EB0C92F8);
  v38 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91F8) + 36);
  v39 = *MEMORY[0x1E697F468];
  v40 = sub_1A34CB200();
  (*(*(v40 - 8) + 104))(v38, v39, v40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C92D0);
  *(v38 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1A338AD54@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EB0C4AC8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB0EDF78;
  KeyPath = swift_getKeyPath();
  v6 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = *(a1 + 48);
  sub_1A34C9010();
  sub_1A3285BB4(v6, v7, v8 & 1);
  v9 = qword_1EB0C4AD0;

  sub_1A34C9010();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EB0EDF80;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[3];
  v64 = a1[2];
  v65 = v13;
  v49 = v64;
  v50 = v13;
  v14 = a1[1];
  v15 = a1[2];
  v16 = *a1;
  v63[0] = v11;
  v63[1] = v14;
  *&v66 = KeyPath;
  *(&v66 + 1) = v4;
  v47 = v11;
  v48 = v14;
  v51 = v66;
  v17 = a1[3];
  v67[2] = v15;
  v67[3] = v17;
  v67[0] = v16;
  v67[1] = v12;
  v68 = KeyPath;
  v69 = v4;
  sub_1A328D790(v63, v107, &qword_1EB0C92A0);
  sub_1A34C9010();
  sub_1A3288FDC(v67, &qword_1EB0C92A0);
  v18 = sub_1A34CBAF0();
  v72 = v49;
  v73 = v50;
  v74 = v51;
  v70 = v47;
  v71 = v48;
  v75 = v10;
  sub_1A34CA460();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v98 = v73;
  v99 = v74;
  *&v100 = v75;
  v95 = v70;
  v96 = v71;
  v97 = v72;
  v52 = 0;
  v76[3] = v50;
  v76[4] = v51;
  v76[1] = v48;
  v76[2] = v49;
  v76[0] = v47;
  v77 = v10;
  sub_1A328D790(&v70, v107, &qword_1EB0C9290);
  sub_1A3288FDC(v76, &qword_1EB0C9290);
  LOBYTE(v10) = sub_1A34CBA80();
  v80 = v97;
  v81 = v98;
  v82 = v99;
  *&v83 = v100;
  v78 = v95;
  v79 = v96;
  BYTE8(v83) = v18;
  *&v84 = v20;
  *(&v84 + 1) = v22;
  *&v85 = v24;
  *(&v85 + 1) = v26;
  v86 = 0;
  sub_1A34CA460();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v60 = v84;
  v61 = v85;
  LOBYTE(v62) = v86;
  v56 = v80;
  v57 = v81;
  v58 = v82;
  v59 = v83;
  v54 = v78;
  v55 = v79;
  v53 = 0;
  v87[2] = v97;
  v87[3] = v98;
  v87[4] = v99;
  v88 = v100;
  v87[0] = v95;
  v87[1] = v96;
  v89 = v18;
  v90 = v20;
  v91 = v22;
  v92 = v24;
  v93 = v26;
  v94 = 0;
  sub_1A328D790(&v78, v107, &qword_1EB0C9280);
  sub_1A3288FDC(v87, &qword_1EB0C9280);
  v35 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9260) + 36);
  sub_1A338CCB0();
  sub_1A34CCC50();
  v36 = sub_1A34CBA90();
  v101 = v60;
  v102 = v61;
  *&v103 = v62;
  v98 = v57;
  v100 = v59;
  v99 = v58;
  v96 = v55;
  v97 = v56;
  v95 = v54;
  BYTE8(v103) = v10;
  *&v104 = v28;
  *(&v104 + 1) = v30;
  *&v105 = v32;
  *(&v105 + 1) = v34;
  v106 = 0;
  *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C92C0) + 36)) = v36;
  v37 = v98;
  *(a2 + 32) = v97;
  *(a2 + 48) = v37;
  v38 = v96;
  *a2 = v95;
  *(a2 + 16) = v38;
  v39 = v102;
  *(a2 + 96) = v101;
  *(a2 + 112) = v39;
  v40 = v100;
  *(a2 + 64) = v99;
  *(a2 + 80) = v40;
  *(a2 + 176) = v106;
  v41 = v105;
  v42 = v103;
  *(a2 + 144) = v104;
  *(a2 + 160) = v41;
  *(a2 + 128) = v42;
  v107[6] = v60;
  v107[7] = v61;
  v108 = v62;
  v107[2] = v56;
  v107[3] = v57;
  v107[5] = v59;
  v107[4] = v58;
  v107[1] = v55;
  v107[0] = v54;
  v109 = v10;
  v110 = v28;
  v111 = v30;
  v112 = v32;
  v113 = v34;
  v114 = 0;
  sub_1A328D790(&v95, &v47, &qword_1EB0C9270);
  sub_1A3288FDC(v107, &qword_1EB0C9270);
  v43 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91B8) + 36);
  v44 = *MEMORY[0x1E697F468];
  v45 = sub_1A34CB200();
  (*(*(v45 - 8) + 104))(v43, v44, v45);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C92D0);
  *(v43 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1A338B294@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A34CC5E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9230);
  sub_1A34CC740();

  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD00000000000001ELL, 0x80000001A350FB40);
  sub_1A328A95C();
  v3 = sub_1A34CBE30();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;
  sub_1A34C9010();
  sub_1A3285BB4(v3, v5, v7);

  sub_1A328A9B0(v3, v5, v7);
}

void *sub_1A338B3C0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A328D790(v2, v10, &unk_1EB0C5650);
  if (v10[264] == 1)
  {
    return memcpy(a1, v10, 0x108uLL);
  }

  sub_1A34CD650();
  v9 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A338B540()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9160);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v2;
  *v3 = sub_1A34CB280();
  *(v3 + 1) = 0x4018000000000000;
  v3[16] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9168);
  sub_1A3388E7C(v0, &v3[*(v4 + 44)]);
  sub_1A3284D0C(&qword_1EB0C0460, &qword_1EB0C9160);
  sub_1A34CC1F0();
  return sub_1A3288FDC(v3, &qword_1EB0C9160);
}

uint64_t sub_1A338B66C()
{
  if (qword_1EB0C49B8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A338B6C8(void *a1, uint64_t a2, char a3)
{
  if (![a1 isKeyAvailable_])
  {
    goto LABEL_17;
  }

  v6 = [a1 wallpaperMetadata];
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  v8 = [v6 fontDescription];

  type metadata accessor for CNWallpaperFontDescriptionKey(0);
  sub_1A338C5A0(&qword_1EB0C5080, type metadata accessor for CNWallpaperFontDescriptionKey);
  v9 = sub_1A34CCF90();

  if (a3)
  {
    if (!*(v9 + 16))
    {
      goto LABEL_16;
    }

    v10 = sub_1A31FA5B8(*MEMORY[0x1E695CCD0]);
    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1A31EE354(*(v9 + 56) + 32 * v10, v30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v29 = *&a2;
  }

  if (!*(v9 + 16))
  {
    goto LABEL_16;
  }

  v12 = sub_1A31FA5B8(*MEMORY[0x1E695CCC8]);
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1A31EE354(*(v9 + 56) + 32 * v12, v30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v9 + 16) || (v14 = sub_1A31FA5B8(*MEMORY[0x1E695CCD8]), (v15 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_1A31EE354(*(v9 + 56) + 32 * v14, v30);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

LABEL_17:
    sub_1A338B3C0(v30);
    v27 = v31;
    sub_1A34C9010();
    sub_1A3292144(v30);
    return v27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9198);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DCA90;
  v17 = *MEMORY[0x1E6965808];
  *(inited + 32) = *MEMORY[0x1E6965808];
  v18 = v17;
  v19 = sub_1A34CD0E0();

  type metadata accessor for CFString(0);
  *(inited + 40) = v19;
  v20 = *MEMORY[0x1E69658F8];
  *(inited + 64) = v21;
  *(inited + 72) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91A0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1A34DAA10;
  *(v22 + 32) = 2003265652;
  *(v22 + 40) = v29;
  v23 = sub_1A33EA510(v22);
  swift_setDeallocating();
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91A8);
  *(inited + 80) = v23;
  v24 = v20;
  sub_1A31F9D3C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91B0);
  swift_arrayDestroy();
  sub_1A338C5A0(&qword_1ED854618, type metadata accessor for CFString);
  v25 = sub_1A34CCF70();

  v26 = CTFontDescriptorCreateWithAttributesAndOptions();

  CTFontCreateWithFontDescriptor(v26, v29, 0);
  v27 = sub_1A34CBC20();

  return v27;
}

uint64_t sub_1A338BAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 272);
  sub_1A338B3C0(v12);
  v6 = v12[0];
  sub_1A3292144(v12);
  v7 = sub_1A338B6C8(v5, v6, 0);
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9180);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9188);
  v11 = (a2 + *(result + 36));
  *v11 = KeyPath;
  v11[1] = v7;
  return result;
}

void sub_1A338BBDC(void *a1)
{
  v2 = sub_1A34C9F80();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A337BF9C();
  if (qword_1EB0C12E0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EB0ED0B0);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1A34CD810();
  v8 = [v7 CGImage];

  v9 = sub_1A34CD0E0();
  [a1 setValue:v8 forKey:v9];

  v10 = sub_1A34C9A10();
  v11 = sub_1A34CD0E0();
  [a1 setValue:v10 forKey:v11];
}

double sub_1A338BDB8()
{
  xmmword_1EB0C9108 = xmmword_1A34EB820;
  unk_1EB0C9118 = xmmword_1A34EB830;
  xmmword_1EB0C9128 = xmmword_1A34EB840;
  unk_1EB0C9138 = xmmword_1A34EB850;
  result = 0.0;
  xmmword_1EB0C9148 = xmmword_1A34DF480;
  return result;
}

uint64_t sub_1A338BDF8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A34CB070();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A338BE5C(uint64_t a1)
{
  v2 = sub_1A34CBDD0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A34CAE70();
}

void sub_1A338BF68()
{
  sub_1A338BFF4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContactCardConfiguration(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A338BFF4()
{
  if (!qword_1EB0C0580)
  {
    type metadata accessor for ContactCardHeaderSwiftUIViewModel(255);
    v0 = sub_1A34CC770();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C0580);
    }
  }
}

unint64_t sub_1A338C04C()
{
  result = qword_1EB0C0CD8;
  if (!qword_1EB0C0CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9170);
    sub_1A3284D0C(&qword_1EB0C0460, &qword_1EB0C9160);
    sub_1A338C5A0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0CD8);
  }

  return result;
}

uint64_t sub_1A338C13C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A338C184(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 272) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A338C238()
{
  result = qword_1EB0C9250;
  if (!qword_1EB0C9250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C91B8);
    sub_1A338C2F0();
    sub_1A3284D0C(&qword_1EB0C92C8, &qword_1EB0C92D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9250);
  }

  return result;
}

unint64_t sub_1A338C2F0()
{
  result = qword_1EB0C9258;
  if (!qword_1EB0C9258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9260);
    sub_1A338C85C(&qword_1EB0C9268, &qword_1EB0C9270, &unk_1A34EBB88, sub_1A338C3D4);
    sub_1A3284D0C(&qword_1ED853F90, &qword_1EB0C92C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9258);
  }

  return result;
}

unint64_t sub_1A338C404()
{
  result = qword_1EB0C9288;
  if (!qword_1EB0C9288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9290);
    sub_1A338C4BC();
    sub_1A3284D0C(&qword_1ED854EA0, &qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9288);
  }

  return result;
}

unint64_t sub_1A338C4BC()
{
  result = qword_1EB0C9298;
  if (!qword_1EB0C9298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C92A0);
    sub_1A3284D0C(&qword_1EB0C92A8, &unk_1EB0C92B0);
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9298);
  }

  return result;
}

uint64_t sub_1A338C5A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A338C5E8()
{
  result = qword_1EB0C2290;
  if (!qword_1EB0C2290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2290);
  }

  return result;
}

unint64_t sub_1A338C690()
{
  result = qword_1EB0C92D8;
  if (!qword_1EB0C92D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C91F8);
    sub_1A338C748();
    sub_1A3284D0C(&qword_1EB0C92C8, &qword_1EB0C92D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C92D8);
  }

  return result;
}

unint64_t sub_1A338C748()
{
  result = qword_1EB0C92E0;
  if (!qword_1EB0C92E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C92E8);
    sub_1A338C85C(&qword_1EB0C92F0, &qword_1EB0C92F8, &unk_1A34EBC38, sub_1A338C82C);
    sub_1A3284D0C(&qword_1ED853F90, &qword_1EB0C92C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C92E0);
  }

  return result;
}

uint64_t sub_1A338C85C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1A338C8E0()
{
  result = qword_1EB0C9310;
  if (!qword_1EB0C9310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9318);
    sub_1A338C998();
    sub_1A3284D0C(&qword_1ED854EA0, &qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9310);
  }

  return result;
}

unint64_t sub_1A338C998()
{
  result = qword_1EB0C9320;
  if (!qword_1EB0C9320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9328);
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9320);
  }

  return result;
}

uint64_t sub_1A338CA50(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1A338C5A0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A338CB04()
{
  result = qword_1EB0C0E18;
  if (!qword_1EB0C0E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9338);
    sub_1A338CBF8();
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1ED854EA0, &qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E18);
  }

  return result;
}

unint64_t sub_1A338CBF8()
{
  result = qword_1EB0C0E30;
  if (!qword_1EB0C0E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9338);
    sub_1A3284D0C(&qword_1EB0C06A0, &qword_1EB0C9340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E30);
  }

  return result;
}

unint64_t sub_1A338CCB0()
{
  result = qword_1EB0C9348;
  if (!qword_1EB0C9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9348);
  }

  return result;
}

unint64_t sub_1A338CD04()
{
  result = qword_1EB0C2838;
  if (!qword_1EB0C2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2838);
  }

  return result;
}

unint64_t sub_1A338CD58()
{
  result = qword_1EB0C09C0;
  if (!qword_1EB0C09C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9350);
    sub_1A338CE10();
    sub_1A3284D0C(&qword_1ED8539D8, &unk_1EB0C93D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C09C0);
  }

  return result;
}

unint64_t sub_1A338CE10()
{
  result = qword_1EB0C09C8;
  if (!qword_1EB0C09C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9370);
    sub_1A338CEC8();
    sub_1A3284D0C(&qword_1EB0C0688, &unk_1EB0C93C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C09C8);
  }

  return result;
}

unint64_t sub_1A338CEC8()
{
  result = qword_1EB0C09D0;
  if (!qword_1EB0C09D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9360);
    sub_1A338CF80();
    sub_1A3284D0C(&qword_1EB0C0690, &qword_1EB0C9368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C09D0);
  }

  return result;
}

unint64_t sub_1A338CF80()
{
  result = qword_1EB0C0A08;
  if (!qword_1EB0C0A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9380);
    sub_1A338D038();
    sub_1A3284D0C(&unk_1EB0C06D0, &qword_1EB0C93B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A08);
  }

  return result;
}

unint64_t sub_1A338D038()
{
  result = qword_1EB0C0AB8;
  if (!qword_1EB0C0AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9390);
    sub_1A338D0C4();
    sub_1A338D17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0AB8);
  }

  return result;
}

unint64_t sub_1A338D0C4()
{
  result = qword_1EB0C0BC8;
  if (!qword_1EB0C0BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C93A0);
    sub_1A32A46AC();
    sub_1A3284D0C(&qword_1EB0C06A0, &qword_1EB0C9340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0BC8);
  }

  return result;
}

unint64_t sub_1A338D17C()
{
  result = qword_1EB0C27B8;
  if (!qword_1EB0C27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C27B8);
  }

  return result;
}

unint64_t sub_1A338D1F0()
{
  result = qword_1EB0C0EC0;
  if (!qword_1EB0C0EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9188);
    sub_1A3284D0C(&qword_1EB0C0748, &qword_1EB0C9180);
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0EC0);
  }

  return result;
}

unint64_t sub_1A338D2D8()
{
  result = qword_1EB0C93E0;
  if (!qword_1EB0C93E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C93E0);
  }

  return result;
}

unint64_t sub_1A338D330()
{
  result = qword_1EB0C2828;
  if (!qword_1EB0C2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2828);
  }

  return result;
}

unint64_t sub_1A338D388()
{
  result = qword_1EB0C2830;
  if (!qword_1EB0C2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2830);
  }

  return result;
}

unint64_t sub_1A338D3E0()
{
  result = qword_1EB0C93E8;
  if (!qword_1EB0C93E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C93E8);
  }

  return result;
}

uint64_t sub_1A338D434()
{
  v8 = sub_1A34CC450();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C93F0);
  sub_1A34CCC30();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34DAA10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C93F8);
  sub_1A34CCC10();
  *(swift_allocObject() + 16) = xmmword_1A34DCA90;
  v9 = sub_1A34CD110();
  v10 = v4;
  sub_1A338D9F0();
  v11 = 0;
  v12 = 0;
  sub_1A34CCBB0();

  v9 = sub_1A34CD110();
  v10 = v5;
  v11 = sub_1A338BBDC;
  v12 = 0;
  sub_1A34CCBB0();

  (*(v0 + 104))(v2, *MEMORY[0x1E69814D8], v8);
  sub_1A34CC570();
  sub_1A34CCC20();

  return v3;
}

uint64_t sub_1A338D714()
{
  v0 = sub_1A34CC450();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C93F0);
  sub_1A34CCC30();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A34DAA10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C93F8);
  sub_1A34CCC10();
  *(swift_allocObject() + 16) = xmmword_1A34DD060;
  sub_1A34CCBF0();
  if (qword_1EB0C49C0 != -1)
  {
    swift_once();
  }

  v6[2] = xmmword_1EB0C9128;
  v6[3] = unk_1EB0C9138;
  v6[4] = xmmword_1EB0C9148;
  v6[0] = xmmword_1EB0C9108;
  v6[1] = unk_1EB0C9118;
  sub_1A34CCBE0();
  sub_1A34CCC00();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  sub_1A34CC570();
  sub_1A34CCC20();

  return v4;
}

unint64_t sub_1A338D9F0()
{
  result = qword_1EB0C2820;
  if (!qword_1EB0C2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2820);
  }

  return result;
}

uint64_t sub_1A338DA5C()
{
  result = type metadata accessor for ContactCardConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1A34C99E0();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1A338DB6C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A338DEC4();

  v3 = qword_1EB0C1618;
  swift_beginAccess();
  return sub_1A3388CEC(v1 + v3, a1);
}

uint64_t sub_1A338DC10(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A338DF70();

  return sub_1A32A313C(a1);
}

uint64_t sub_1A338DCC0(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EB0C1618;
  swift_beginAccess();
  sub_1A338E448(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1A338DD2C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(*v1 + 80);
  swift_getKeyPath();
  sub_1A338DEC4();

  v3 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a1, v1 + v3);
}

uint64_t sub_1A338DE08(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 120);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(a1 + v5, a2);
  return swift_endAccess();
}

char *sub_1A338E054()
{
  v1 = *v0;
  sub_1A32A313C(&v0[qword_1EB0C1618]);

  v2 = *(v1 + 80);
  v3 = *(*(v2 - 8) + 8);
  v3(&v0[*(*v0 + 112)], v2);
  v3(&v0[*(*v0 + 120)], v2);
  v4 = *(*v0 + 128);
  v5 = sub_1A34C99E0();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t sub_1A338E170()
{
  sub_1A338E054();

  return swift_deallocClassInstance();
}

uint64_t sub_1A338E1E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15[-v7];
  v9 = *(v4 + 120);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  v10 = *(v4 + 88);
  v11 = sub_1A34CD040();
  v12 = (*(v6 + 8))(v8, v5);
  if (v11)
  {
    swift_beginAccess();
    (*(v6 + 24))(v2 + v9, a1, v5);
    return swift_endAccess();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12);
    *&v15[-16] = v5;
    *&v15[-8] = v10;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v15[-16] = v2;
    *&v15[-8] = a1;
    sub_1A338DF70();
  }
}

uint64_t sub_1A338E448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ContactCardActionMenu()
{
  result = qword_1EB0C22B0;
  if (!qword_1EB0C22B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A338E520()
{
  result = type metadata accessor for ContactCardActionRow();
  if (v1 <= 0x3F)
  {
    result = sub_1A338E5A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A338E5A4()
{
  result = qword_1EB0C1E98;
  if (!qword_1EB0C1E98)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB0C1E98);
  }

  return result;
}

uint64_t sub_1A338E624@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v87 = a2;
  v88 = a4;
  v92 = a1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8FC0);
  v78 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v77 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9488);
  v73 = *(v5 - 8);
  *&v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v72 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8FA0);
  MEMORY[0x1EEE9AC00](v85);
  v8 = &v72 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9490);
  MEMORY[0x1EEE9AC00](v89);
  v10 = &v72 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9498);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8F60);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - v13;
  v15 = type metadata accessor for ContactCardActionRow();
  v86 = *(v15 - 8);
  v16 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8F68);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C94A0);
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v72 - v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  v90 = v12;
  if (Strong)
  {
    v23 = Strong;
    v75 = Strong;
    v24 = sub_1A34CB290();
    sub_1A3390504(v23, &v108);
    v77 = v108;
    v78 = v10;
    v76 = *(&v108 + 1);
    v25 = v109[0];
    v26 = sub_1A34CA5D0();
    v74 = *&v109[8];
    LOBYTE(v98) = 1;
    LOBYTE(v93[0]) = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F70) + 36);
    v79 = v14;
    v28 = &v20[v27];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F90);
    (*(*(v26 - 8) + 104))(v28 + *(v29 + 28), *MEMORY[0x1E697DBA8], v26);
    *v28 = swift_getKeyPath();
    *v20 = v24;
    *(v20 + 1) = 0;
    v20[16] = 1;
    *(v20 + 17) = v94;
    *(v20 + 5) = *(&v94 + 3);
    v30 = v76;
    *(v20 + 3) = v77;
    *(v20 + 4) = v30;
    v20[40] = v25;
    *(v20 + 41) = v106[0];
    *(v20 + 11) = *(v106 + 3);
    *(v20 + 3) = v74;
    v31 = sub_1A34CBA90();
    v32 = &v20[v18[9]];
    *v32 = v31;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    v32[40] = 1;
    sub_1A31EE4BC(v87, &v108);
    sub_1A3391A80(v92, &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardActionRow);
    v33 = (*(v86 + 80) + 56) & ~*(v86 + 80);
    v34 = swift_allocObject();
    sub_1A31EE568(&v108, v34 + 16);
    sub_1A3391AE8(v17, v34 + v33, type metadata accessor for ContactCardActionRow);
    v35 = sub_1A3381CDC();
    v36 = v80;
    sub_1A34CBF50();

    sub_1A3288FDC(v20, &qword_1EB0C8F68);
    v37 = v81;
    v38 = v83;
    (*(v81 + 16))(v84, v36, v83);
    swift_storeEnumTagMultiPayload();
    *&v108 = v18;
    *(&v108 + 1) = v35;
    swift_getOpaqueTypeConformance2();
    sub_1A3381E4C();
    v39 = v79;
    sub_1A34CB3E0();
    sub_1A328D790(v39, v78, &qword_1EB0C8F60);
    swift_storeEnumTagMultiPayload();
    sub_1A3381C14();
    sub_1A3284D0C(&qword_1EB0C04F8, &unk_1EB0C8FC0);
    sub_1A34CB3E0();

    sub_1A3288FDC(v39, &qword_1EB0C8F60);
    return (*(v37 + 8))(v36, v38);
  }

  v80 = v8;
  v81 = v16;
  v75 = v18;
  v41 = v92;
  v43 = v86;
  v42 = v87;
  v44 = v17;
  if ((*(v92 + 8) & 1) != 0 || *v92 != 24)
  {
    goto LABEL_12;
  }

  v45 = v87;
  v79 = v14;
  v46 = *(v92 + 16);
  v47 = *(v92 + 24);
  if (v46 == sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000027, 0x80000001A350F7B0) && v47 == v48)
  {

    v41 = v92;
    v42 = v45;
    goto LABEL_9;
  }

  v49 = sub_1A34CDE30();

  v41 = v92;
  v42 = v45;
  if ((v49 & 1) == 0)
  {
LABEL_12:
    sub_1A31EE4BC(v42, &v108);
    sub_1A3391A80(v41, v44, type metadata accessor for ContactCardActionRow);
    v62 = (*(v43 + 80) + 56) & ~*(v43 + 80);
    v63 = swift_allocObject();
    sub_1A31EE568(&v108, v63 + 16);
    v64 = sub_1A3391AE8(v44, v63 + v62, type metadata accessor for ContactCardActionRow);
    MEMORY[0x1EEE9AC00](v64);
    v65 = v76;
    *(&v72 - 2) = v66;
    *(&v72 - 1) = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C94A8);
    sub_1A3284D0C(&qword_1EB0C0350, &qword_1EB0C94A8);
    v67 = v77;
    sub_1A34CC790();
    v68 = v78;
    v69 = v91;
    (*(v78 + 2))(v10, v67, v91);
    swift_storeEnumTagMultiPayload();
    sub_1A3381C14();
    sub_1A3284D0C(&qword_1EB0C04F8, &unk_1EB0C8FC0);
    sub_1A34CB3E0();
    return (*(v68 + 8))(v67, v69);
  }

LABEL_9:
  v78 = v10;
  v50 = (v41 + *(v15 + 28));
  v51 = v50[1];
  if (v51 && (v52 = v44, *(v41 + *(v15 + 36) + 8)))
  {
    v53 = *v50;
    v54 = v43;
    v55 = v42;
    v87 = sub_1A34CB110();
    LOBYTE(v93[0]) = 1;
    sub_1A3390654(v53, v51, &v108);
    v102 = v111;
    v103 = v112;
    v104 = v113;
    v105 = v114;
    v98 = v108;
    v99 = *v109;
    v100 = *&v109[16];
    v101 = v110;
    v106[0] = v108;
    v106[1] = *v109;
    v106[2] = *&v109[16];
    v106[3] = v110;
    v106[4] = v111;
    v106[5] = v112;
    v106[6] = v113;
    v107 = v114;
    sub_1A328D790(&v98, &v94, &qword_1EB0C94B0);
    sub_1A3288FDC(v106, &qword_1EB0C94B0);
    *(&v97[4] + 7) = v102;
    *(&v97[5] + 7) = v103;
    *(&v97[6] + 7) = v104;
    *(&v97[7] + 7) = v105;
    *(v97 + 7) = v98;
    *(&v97[1] + 7) = v99;
    *(&v97[2] + 7) = v100;
    *(&v97[3] + 7) = v101;
    *(&v95[4] + 1) = v97[4];
    *(&v95[5] + 1) = v97[5];
    *(&v95[6] + 1) = v97[6];
    v95[7] = *(&v97[6] + 15);
    *(v95 + 1) = v97[0];
    *(&v95[1] + 1) = v97[1];
    *(&v95[2] + 1) = v97[2];
    v94 = v87;
    LOBYTE(v95[0]) = v93[0];
    *(&v95[3] + 1) = v97[3];
    v96 = 0;
    sub_1A31EE4BC(v55, v93);
    sub_1A3391A80(v92, v44, type metadata accessor for ContactCardActionRow);
    v56 = (*(v54 + 80) + 56) & ~*(v54 + 80);
    v57 = swift_allocObject();
    sub_1A31EE568(v93, v57 + 16);
    sub_1A3391AE8(v52, v57 + v56, type metadata accessor for ContactCardActionRow);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8FA8);
    sub_1A3381F0C();
    v58 = v72;
    sub_1A34CBF50();

    v113 = v95[5];
    v114 = v95[6];
    v115 = v95[7];
    v116 = v96;
    *&v109[16] = v95[1];
    v110 = v95[2];
    v111 = v95[3];
    v112 = v95[4];
    v108 = v94;
    *v109 = v95[0];
    sub_1A3288FDC(&v108, &qword_1EB0C8FA8);
    v60 = v73;
    v59 = v74;
    v61 = v80;
    (*(v73 + 32))(v80, v58, v74);
    (*(v60 + 56))(v61, 0, 1, v59);
  }

  else
  {
    v61 = v80;
    (*(v73 + 56))(v80, 1, 1, v74);
  }

  sub_1A328D790(v61, v84, &qword_1EB0C8FA0);
  swift_storeEnumTagMultiPayload();
  v70 = sub_1A3381CDC();
  *&v108 = v75;
  *(&v108 + 1) = v70;
  swift_getOpaqueTypeConformance2();
  sub_1A3381E4C();
  v71 = v79;
  sub_1A34CB3E0();
  sub_1A328D790(v71, v78, &qword_1EB0C8F60);
  swift_storeEnumTagMultiPayload();
  sub_1A3381C14();
  sub_1A3284D0C(&qword_1EB0C04F8, &unk_1EB0C8FC0);
  sub_1A34CB3E0();
  sub_1A3288FDC(v71, &qword_1EB0C8F60);
  return sub_1A3288FDC(v61, &qword_1EB0C8FA0);
}

uint64_t sub_1A338F43C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F50);
  MEMORY[0x1EEE9AC00](v34);
  v3 = &v28 - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9400);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9408);
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9410);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9418);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9420);
  MEMORY[0x1EEE9AC00](v32);
  v16 = &v28 - v15;
  v17 = type metadata accessor for ContactCardActionRow();
  if (*(v1 + *(v17 + 60)))
  {
    v29 = v6;
    if (*(v1 + *(v17 + 44)) == 1)
    {
      v18 = *(v1 + 24);
      v36 = *(v1 + 16);
      v37 = v18;
      MEMORY[0x1EEE9AC00](v18);
      *(&v28 - 2) = v19;
      *(&v28 - 1) = v1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9440);
      sub_1A3391698();
      sub_1A328A95C();
      sub_1A34CC9E0();
      (*(v12 + 16))(v10, v14, v11);
      swift_storeEnumTagMultiPayload();
      sub_1A3391600();
      sub_1A3284D0C(&qword_1EB0C9468, &qword_1EB0C9408);
      sub_1A34CB3E0();
      (*(v12 + 8))(v14, v11);
    }

    else
    {
      v28 = &v28;
      MEMORY[0x1EEE9AC00](v17);
      *(&v28 - 2) = v23;
      *(&v28 - 1) = v1;
      MEMORY[0x1EEE9AC00](v24);
      *(&v28 - 2) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9038);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9440);
      sub_1A33820AC();
      sub_1A3391698();
      sub_1A34CBC70();
      v25 = v29;
      v26 = v30;
      (*(v30 + 16))(v10, v8, v29);
      swift_storeEnumTagMultiPayload();
      sub_1A3391600();
      sub_1A3284D0C(&qword_1EB0C9468, &qword_1EB0C9408);
      sub_1A34CB3E0();
      (*(v26 + 8))(v8, v25);
    }

    v21 = &qword_1EB0C9420;
    sub_1A328D790(v16, v5, &qword_1EB0C9420);
    swift_storeEnumTagMultiPayload();
    sub_1A3391548();
    sub_1A3381B5C();
    sub_1A34CB3E0();
    v22 = v16;
  }

  else
  {
    v20 = *(type metadata accessor for ContactCardActionMenu() + 20);
    if (qword_1EB0C2118 != -1)
    {
      swift_once();
    }

    sub_1A338E624(v1, v1 + v20, &qword_1EB0ED2F0, v3);
    v21 = &unk_1EB0C8F50;
    sub_1A328D790(v3, v5, &unk_1EB0C8F50);
    swift_storeEnumTagMultiPayload();
    sub_1A3391548();
    sub_1A3381B5C();
    sub_1A34CB3E0();
    v22 = v3;
  }

  return sub_1A3288FDC(v22, v21);
}

uint64_t sub_1A338FAC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F50);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9470);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9460);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  v15 = type metadata accessor for ContactCardActionRow();
  if (*(a1 + *(v15 + 60)))
  {
    v20[3] = v20;
    MEMORY[0x1EEE9AC00](v15);
    v20[-2] = v16;
    v20[-1] = v2;
    MEMORY[0x1EEE9AC00](v17);
    v20[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9038);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9478);
    v20[2] = a2;
    sub_1A33820AC();
    v20[1] = v5;
    sub_1A33918D4();
    sub_1A34CBC70();
    (*(v12 + 16))(v10, v14, v11);
    swift_storeEnumTagMultiPayload();
    sub_1A3284D0C(&qword_1EB0C9458, &qword_1EB0C9460);
    sub_1A3381B5C();
    sub_1A34CB3E0();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = *(type metadata accessor for ContactCardActionMenu() + 20);
    if (qword_1EB0C2118 != -1)
    {
      swift_once();
    }

    sub_1A338E624(a1, v2 + v19, &qword_1EB0ED2F0, v7);
    sub_1A328D790(v7, v10, &unk_1EB0C8F50);
    swift_storeEnumTagMultiPayload();
    sub_1A3284D0C(&qword_1EB0C9458, &qword_1EB0C9460);
    sub_1A3381B5C();
    sub_1A34CB3E0();
    return sub_1A3288FDC(v7, &unk_1EB0C8F50);
  }
}

uint64_t sub_1A338FEC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardActionMenu();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *(a1 + 16);
  v11[0] = 0;
  v11[1] = v7;
  swift_getKeyPath();
  sub_1A3391A80(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardActionMenu);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1A3391AE8(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ContactCardActionMenu);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9450);
  sub_1A32D3A44();
  sub_1A339171C();
  return sub_1A34CC9C0();
}

unint64_t *sub_1A339007C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    v6 = *(type metadata accessor for ContactCardActionRow() - 8);
    return sub_1A338FAC8(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A339012C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardActionMenu();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *(a1 + 16);
  v11[0] = 0;
  v11[1] = v7;
  swift_getKeyPath();
  sub_1A3391A80(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardActionMenu);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_1A3391AE8(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ContactCardActionMenu);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8F50);
  sub_1A32D3A44();
  sub_1A3381B5C();
  return sub_1A34CC9C0();
}

uint64_t sub_1A33902E0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a2;
    v5 = a4;
    if (v10 < *(a2 + 16))
    {
      v4 = a3;
      v11 = *(type metadata accessor for ContactCardActionRow() - 8);
      v7 = *(v11 + 80);
      v8 = *(v11 + 72);
      v9 = *(type metadata accessor for ContactCardActionMenu() + 20);
      if (qword_1EB0C2118 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_9:
  swift_once();
LABEL_4:

  return sub_1A338E624(v6 + ((v7 + 32) & ~v7) + v8 * v10, v4 + v9, &qword_1EB0ED2F0, v5);
}

uint64_t sub_1A33903F0(uint64_t a1)
{
  if (qword_1EB0C2118 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9058);
  sub_1A3382138();
  return sub_1A34CA9A0();
}

uint64_t sub_1A3390504@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000011, 0x80000001A350F830);
  sub_1A328A95C();
  v3 = sub_1A34CBE30();
  v5 = v4;
  v7 = v6;
  sub_1A34CC550();
  v8 = sub_1A34CBDF0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1A328A9B0(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = a1;
  v15 = a1;
  sub_1A3285BB4(v8, v10, v12 & 1);

  sub_1A328A9B0(v8, v10, v12 & 1);
}

uint64_t sub_1A3390654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A34CB290();
  LOBYTE(v20[0]) = 0;
  sub_1A3390804(a1, a2, v17);
  *&v16[7] = v17[0];
  *&v16[23] = v17[1];
  *&v16[39] = v17[2];
  *&v16[55] = v17[3];
  v7 = v20[0];

  v8 = sub_1A34CC5E0();
  if (qword_1EB0C2118 != -1)
  {
    v15 = v8;
    swift_once();
    v8 = v15;
  }

  v9 = qword_1EB0ED308;
  v18 = v6;
  v19[0] = v7;
  *&v19[1] = *v16;
  *&v19[49] = *&v16[48];
  *&v19[33] = *&v16[32];
  *&v19[17] = *&v16[16];
  *&v19[64] = *&v16[63];
  v10 = *v19;
  *a3 = v6;
  *(a3 + 16) = v10;
  v11 = *&v19[16];
  v12 = *&v19[48];
  v13 = *&v19[64];
  *(a3 + 48) = *&v19[32];
  *(a3 + 64) = v12;
  *(a3 + 32) = v11;
  *(a3 + 80) = v13;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  *(a3 + 104) = v8;
  *(a3 + 112) = v9;
  sub_1A34C9010();
  sub_1A328D790(&v18, v20, &qword_1EB0C6F20);
  v20[0] = v6;
  v20[1] = 0;
  v21 = v7;
  v23 = *&v16[16];
  v24 = *&v16[32];
  *v25 = *&v16[48];
  *&v25[15] = *&v16[63];
  v22 = *v16;
  return sub_1A3288FDC(v20, &qword_1EB0C6F20);
}

uint64_t sub_1A3390804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x42414C5F454D414ELL, 0xEA00000000004C45);
  sub_1A328A95C();
  v6 = sub_1A34CBE30();
  v8 = v7;
  v10 = v9;
  if (qword_1EB0C2118 != -1)
  {
    swift_once();
  }

  sub_1A34C9010();
  v11 = sub_1A34CBDF0();
  v29 = v12;
  v30 = v11;
  v28 = v13;
  v31 = v14;
  sub_1A328A9B0(v6, v8, v10 & 1);

  sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, a1, a2);
  v15 = sub_1A34CBE30();
  v17 = v16;
  v19 = v18;
  sub_1A34C9010();
  v20 = sub_1A34CBDF0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1A328A9B0(v15, v17, v19 & 1);

  *a3 = v30;
  *(a3 + 8) = v29;
  *(a3 + 16) = v28 & 1;
  *(a3 + 24) = v31;
  *(a3 + 32) = v20;
  *(a3 + 40) = v22;
  *(a3 + 48) = v24 & 1;
  *(a3 + 56) = v26;
  sub_1A3285BB4(v30, v29, v28 & 1);

  sub_1A3285BB4(v20, v22, v24 & 1);

  sub_1A328A9B0(v20, v22, v24 & 1);

  sub_1A328A9B0(v30, v29, v28 & 1);
}

uint64_t sub_1A3390A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C94B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C94C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C94C8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  v21 = (a1 + *(type metadata accessor for ContactCardActionRow() + 32));
  v22 = v21[1];
  if (v22)
  {
    v35 = a2;
    v23 = *v21;
    *v14 = swift_getKeyPath();
    v14[264] = 0;
    v24 = type metadata accessor for DetailsLabelText();
    v36 = a1;
    v37 = v7;
    v25 = v24;
    v26 = *(v24 + 20);
    *&v14[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
    swift_storeEnumTagMultiPayload();
    v27 = &v14[*(v25 + 24)];
    *v27 = v23;
    *(v27 + 1) = v22;
    KeyPath = swift_getKeyPath();
    v29 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C94D8) + 36)];
    *v29 = KeyPath;
    v29[8] = 0;
    v30 = swift_getKeyPath();
    v31 = &v14[*(v11 + 36)];
    sub_1A3292BA8(v35, (v31 + 1));
    *v31 = v30;
    a1 = v36;
    v7 = v37;
    sub_1A3391DEC(v14, v20);
    (*(v12 + 56))(v20, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  sub_1A3390E40(a1, v10);
  sub_1A328D790(v20, v17, &qword_1EB0C94C8);
  sub_1A328D790(v10, v7, &qword_1EB0C94B8);
  v32 = v38;
  sub_1A328D790(v17, v38, &qword_1EB0C94C8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C94D0);
  sub_1A328D790(v7, v32 + *(v33 + 48), &qword_1EB0C94B8);
  sub_1A3288FDC(v10, &qword_1EB0C94B8);
  sub_1A3288FDC(v20, &qword_1EB0C94C8);
  sub_1A3288FDC(v7, &qword_1EB0C94B8);
  return sub_1A3288FDC(v17, &qword_1EB0C94C8);
}

uint64_t sub_1A3390E40@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C94E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v27 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C65C0);
  sub_1A32BF778();
  sub_1A32D3E30();
  sub_1A34CA9A0();
  v10 = (a1 + *(type metadata accessor for ContactCardActionRow() + 28));
  v11 = v10[1];
  if (v11)
  {
    v28 = *v10;
    v29 = v11;
    sub_1A328A95C();

    v11 = sub_1A34CBE30();
    v13 = v12;
    v15 = v14;
    v17 = v16 & 1;
    sub_1A3285BB4(v11, v12, v16 & 1);
  }

  else
  {
    v13 = 0;
    v17 = 0;
    v15 = 0;
  }

  v18 = *(v4 + 16);
  v18(v6, v9, v3);
  v24 = v9;
  v19 = v6;
  v20 = v25;
  v18(v25, v19, v3);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C94E8) + 48)];
  sub_1A334071C(v11, v13, v17, v15);
  sub_1A3340760(v11, v13, v17, v15);
  *v21 = v11;
  v21[1] = v13;
  v21[2] = v17;
  v21[3] = v15;
  v22 = *(v4 + 8);
  v22(v24, v3);
  sub_1A3340760(v11, v13, v17, v15);
  return (v22)(v19, v3);
}

uint64_t sub_1A3391100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactCardActionRow();
  sub_1A328D790(a1 + *(v4 + 76), &v23, &qword_1EB0CB0A0);
  if (*(&v24 + 1))
  {
    sub_1A31EE568(&v23, &v26);
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    *&v23 = v5;
    *(&v23 + 1) = v6;
    sub_1A328A95C();

    v7 = sub_1A34CBE30();
    v9 = v8;
    v11 = v10;
    sub_1A34CBDF0();
    sub_1A328A9B0(v7, v9, v11 & 1);

    sub_1A34CB3E0();
    v21 = v24;
    v22 = v23;
    v12 = v25;
    result = __swift_destroy_boxed_opaque_existential_0(&v26);
    v15 = v21;
    v14 = v22;
  }

  else
  {
    sub_1A3288FDC(&v23, &qword_1EB0CB0A0);
    v16 = *(a1 + 16);
    v17 = *(a1 + 24);
    *&v26 = v16;
    *(&v26 + 1) = v17;
    sub_1A328A95C();

    *&v23 = sub_1A34CBE30();
    *(&v23 + 1) = v19;
    *&v24 = v18 & 1;
    *(&v24 + 1) = v20;
    v25 = 1;
    result = sub_1A34CB3E0();
    v14 = v26;
    v15 = v27;
    v12 = v28;
  }

  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_1A33912FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for ContactCardActionRow() + 36) + 8))
  {

    result = sub_1A34CC5E0();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1A3391364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 24);
  v29 = *(a1 + 16);
  v30 = v5;
  sub_1A328A95C();

  v6 = sub_1A34CBE30();
  v8 = v7;
  v10 = v9;
  v11 = sub_1A34CBE10();
  v13 = v12;
  v15 = v14;
  sub_1A328A9B0(v6, v8, v10 & 1);

  v16 = __swift_project_boxed_opaque_existential_1((a2 + 128), *(a2 + 152));
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v19 + 16))(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v29 = sub_1A34CA770();
  v20 = sub_1A34CBDF0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1A328A9B0(v11, v13, v15 & 1);

  *a3 = v20;
  *(a3 + 8) = v22;
  *(a3 + 16) = v24 & 1;
  *(a3 + 24) = v26;
  return result;
}

unint64_t sub_1A3391548()
{
  result = qword_1EB0C9428;
  if (!qword_1EB0C9428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9420);
    sub_1A3391600();
    sub_1A3284D0C(&qword_1EB0C9468, &qword_1EB0C9408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9428);
  }

  return result;
}

unint64_t sub_1A3391600()
{
  result = qword_1EB0C9430;
  if (!qword_1EB0C9430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9418);
    sub_1A3391698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9430);
  }

  return result;
}

unint64_t sub_1A3391698()
{
  result = qword_1EB0C9438;
  if (!qword_1EB0C9438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9440);
    sub_1A339171C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9438);
  }

  return result;
}

unint64_t sub_1A339171C()
{
  result = qword_1EB0C9448;
  if (!qword_1EB0C9448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9450);
    sub_1A3284D0C(&qword_1EB0C9458, &qword_1EB0C9460);
    sub_1A3381B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9448);
  }

  return result;
}

unint64_t sub_1A33918D4()
{
  result = qword_1EB0C9480;
  if (!qword_1EB0C9480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9478);
    sub_1A3381B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C9480);
  }

  return result;
}

uint64_t sub_1A3391958@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContactCardActionMenu() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1A33902E0(a1, v6, v7, a2);
}

uint64_t sub_1A3391A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3391AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_12Tm()
{
  v1 = type metadata accessor for ContactCardActionRow();
  v2 = (*(*(v1 - 1) + 80) + 56) & ~*(*(v1 - 1) + 80);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v3 = v0 + v2;

  v4 = v1[6];
  v5 = sub_1A34C93B0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  if (*(v3 + v1[12]))
  {
  }

  v7 = v3 + v1[19];
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  MEMORY[0x1A58F1130](v3 + v1[22]);

  return swift_deallocObject();
}

uint64_t sub_1A3391D58()
{
  v1 = *(type metadata accessor for ContactCardActionRow() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  return (*(v4 + 8))(&v0[v2], v3, v4);
}

uint64_t sub_1A3391DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C94C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3391E64()
{
  result = qword_1EB0C94F0;
  if (!qword_1EB0C94F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C94F8);
    sub_1A3391548();
    sub_1A3381B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C94F0);
  }

  return result;
}

uint64_t sub_1A3391F00@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9530);
  MEMORY[0x1EEE9AC00](v69);
  v78 = v57 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v60 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v61 = v57 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v74 = v57 - v7;
  v8 = sub_1A34C93B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v63 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = v57 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v77 = v57 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v57 - v16;
  v18 = type metadata accessor for SubheaderItem(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A3393034();
  v23 = v22[2];
  v76 = v9;
  if (v23)
  {
    v24 = *(v19 + 80);
    v73 = v22;
    v25 = v22 + ((v24 + 32) & ~v24);
    v26 = *(v19 + 72);
    v27 = (v9 + 16);
    v75 = v9 + 32;
    v28 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A3394248(v25, v21);
      (*v27)(v17, v21, v8);
      sub_1A33942AC(v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1A3298E28(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v31 = v28;
      if (v30 >= v29 >> 1)
      {
        v31 = sub_1A3298E28(v29 > 1, v30 + 1, 1, v28);
      }

      *(v31 + 16) = v30 + 1;
      v28 = v31;
      (*(v76 + 32))(v31 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v30, v17, v8);
      v25 += v26;
      v23 = (v23 - 1);
    }

    while (v23);
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v32 = v28;
  v33 = v28[2];
  v34 = v76;
  if (v33)
  {
    result = sub_1A34C93A0();
    v36 = v61;
    if (v33 <= v32[2])
    {
      v38 = *(v34 + 16);
      v37 = v34 + 16;
      v67 = v38;
      v39 = (*(v37 + 64) + 32) & ~*(v37 + 64);
      v57[1] = v32;
      v40 = v32 + v39;
      v41 = *(v37 + 56);
      v65 = &v40[v41 * (v33 - 1)];
      v66 = v41;
      v73 = (v37 + 16);
      v42 = (v37 + 32);
      v70 = (v37 + 40);
      v71 = (v37 - 8);
      v62 = (v37 + 32);
      v76 = v37;
      while (1)
      {
        v44 = v67;
        v43 = v68;
        v67(v68, v40, v8);
        v75 = sub_1A3394308(&qword_1EB0C2A60, MEMORY[0x1E6968848]);
        sub_1A34C9390();
        v45 = v74;
        v72 = *v73;
        v72(v74, v43, v8);
        v46 = *v70;
        (*v70)(v45, 0, 1, v8);
        v44(v36, v65, v8);
        v47 = v45;
        v64 = v46;
        v46(v36, 0, 1, v8);
        v48 = *(v69 + 48);
        v49 = v78;
        sub_1A3394350(v47, v78);
        sub_1A3394350(v36, v49 + v48);
        v50 = *v42;
        if ((*v42)(v49, 1, v8) != 1)
        {
          break;
        }

        sub_1A3288FDC(v36, &unk_1EB0C5B60);
        sub_1A3288FDC(v47, &unk_1EB0C5B60);
        if (v50(v78 + v48, 1, v8) != 1)
        {
          goto LABEL_20;
        }

        sub_1A3288FDC(v78, &unk_1EB0C5B60);
LABEL_14:
        v40 += v66;
        if (!--v33)
        {

          v56 = v58;
          v72(v58, v77, v8);
          return v64(v56, 0, 1, v8);
        }
      }

      v51 = v78;
      v52 = v60;
      sub_1A3394350(v78, v60);
      if (v50(v51 + v48, 1, v8) == 1)
      {
        v36 = v61;
        sub_1A3288FDC(v61, &unk_1EB0C5B60);
        sub_1A3288FDC(v74, &unk_1EB0C5B60);
        (*v71)(v52, v8);
LABEL_20:
        sub_1A3288FDC(v78, &unk_1EB0C9530);
      }

      else
      {
        v54 = v63;
        v72(v63, (v51 + v48), v8);
        sub_1A3394308(&qword_1EB0C2A68, MEMORY[0x1E6968848]);
        v59 = sub_1A34CD040();
        v55 = *v71;
        (*v71)(v54, v8);
        v36 = v61;
        sub_1A3288FDC(v61, &unk_1EB0C5B60);
        sub_1A3288FDC(v74, &unk_1EB0C5B60);
        v55(v52, v8);
        v42 = v62;
        sub_1A3288FDC(v51, &unk_1EB0C5B60);
        if (v59)
        {
          goto LABEL_14;
        }
      }

      v53 = v63;
      sub_1A34C9380();
      sub_1A34C9390();
      v42 = v62;
      (*v71)(v53, v8);
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    (*(v76 + 56))(v58, 1, 1, v8);
  }

  return result;
}

uint64_t sub_1A33927AC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A3394308(&qword_1EB0C1530, type metadata accessor for ContactCardHeaderSwiftUIViewModel);
  sub_1A34C99A0();

  return *(v2 + *a2);
}

uint64_t sub_1A339284C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel_contact);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A34DAA30;
  *(v2 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v3 = sub_1A34CD350();

  LODWORD(v2) = [v1 areKeysAvailable_];

  if (!v2)
  {
    return 0;
  }

  v4 = sub_1A3392E18();
  v5 = [v4 stringFromContact_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1A34CD110();

  return v6;
}

uint64_t sub_1A3392974()
{
  swift_getKeyPath();
  sub_1A3394308(&qword_1EB0C1530, type metadata accessor for ContactCardHeaderSwiftUIViewModel);
  sub_1A34C99A0();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A3392A20@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3394308(&qword_1EB0C1530, type metadata accessor for ContactCardHeaderSwiftUIViewModel);
  sub_1A34C99A0();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1A3392AD4()
{
  swift_getKeyPath();
  sub_1A3394308(&qword_1EB0C1530, type metadata accessor for ContactCardHeaderSwiftUIViewModel);
  sub_1A34C9990();
}

uint64_t sub_1A3392C14@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1A3394308(&qword_1EB0C1530, type metadata accessor for ContactCardHeaderSwiftUIViewModel);
  sub_1A34C99A0();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1A3392D14(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3394308(&qword_1EB0C1530, type metadata accessor for ContactCardHeaderSwiftUIViewModel);
    sub_1A34C9990();
  }

  return result;
}

id sub_1A3392E18()
{
  v1 = OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel____lazy_storage___contactFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel____lazy_storage___contactFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel____lazy_storage___contactFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
    [v4 setFallbackStyle_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A3392EA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34DC310;
  v1 = *MEMORY[0x1E695C240];
  v5 = *MEMORY[0x1E695C230];
  v2 = *MEMORY[0x1E695C230];
  *(v0 + 32) = *MEMORY[0x1E695C240];
  *(v0 + 40) = v2;
  qword_1EB0EDE28 = v0;
  v3 = v1;

  return v5;
}

id sub_1A3392F28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A34EC2D0;
  v1 = *MEMORY[0x1E695C348];
  v2 = *MEMORY[0x1E695C350];
  *(v0 + 32) = *MEMORY[0x1E695C348];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C340];
  v4 = *MEMORY[0x1E695C310];
  *(v0 + 48) = *MEMORY[0x1E695C340];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C390];
  v6 = *MEMORY[0x1E695C2C8];
  *(v0 + 64) = *MEMORY[0x1E695C390];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C1F8];
  v17 = *MEMORY[0x1E695C328];
  v8 = *MEMORY[0x1E695C328];
  *(v0 + 80) = *MEMORY[0x1E695C1F8];
  *(v0 + 88) = v8;
  qword_1EB0EDE30 = v0;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;

  return v17;
}

void *sub_1A3393034()
{
  v1 = sub_1A34C9410();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v48 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1A34C93B0();
  v3 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C9540);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v51 = type metadata accessor for SubheaderItem(0);
  v43 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v40 - v10;
  v52 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel_contact);
  if (qword_1EB0C21B8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
    v12 = sub_1A34CD350();
    v13 = [v11 areKeysAvailable_];

    if (!v13)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v50 = v3;
    if (qword_1EB0C21C0 != -1)
    {
      swift_once();
    }

    v3 = qword_1EB0ED400;
    v14 = *(qword_1EB0ED400 + 16);
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v11 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (v15 < *(v3 + 16))
    {
      v56 = *(v3 + 32 + 8 * v15);

      sub_1A33936D4(&v56, v52, &v54);

      if (v55)
      {
        v53 = v55;
        v18 = v54;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1A3298C90(0, v16[2] + 1, 1, v16);
        }

        v20 = v16[2];
        v19 = v16[3];
        v21 = v53;
        if (v20 >= v19 >> 1)
        {
          v22 = sub_1A3298C90((v19 > 1), v20 + 1, 1, v16);
          v21 = v53;
          v16 = v22;
        }

        v16[2] = v20 + 1;
        v17 = &v16[3 * v20];
        v17[4] = v18;
        *(v17 + 5) = v21;
      }

      if (v14 == ++v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v52 = v16[2];
  if (v52)
  {
    v3 = 0;
    v24 = (v50 + 4);
    v50 = (v43 + 56);
    v45 = (v43 + 48);
    v46 = v24;
    v25 = v16 + 6;
    v23 = MEMORY[0x1E69E7CC0];
    v44 = xmmword_1A34DAA30;
    v11 = v41;
    while (1)
    {
      if (v3 >= v16[2])
      {
        goto LABEL_39;
      }

      v26 = *(v25 - 1);
      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = *(v25 - 2) & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        *&v53 = v23;
        v28 = *v25;
        sub_1A34CD180();

        sub_1A34C9400();
        sub_1A34C93C0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
        v29 = swift_allocObject();
        *(v29 + 16) = v44;
        *(v29 + 32) = swift_getKeyPath();
        v30 = sub_1A3427244(v28, v29);

        v31 = sub_1A34CBB20();
        if (v30)
        {
          v32 = sub_1A34CBB80();

          v54 = v32;
        }

        else
        {
          v54 = v31;
        }

        sub_1A33943CC();
        sub_1A34C93E0();
        (*v46)(v7, v11, v47);
        v33 = v50;
        v34 = v51;
        *&v7[*(v51 + 20)] = v28;
        (*v33)(v7, 0, 1, v34);

        v35 = (*v45)(v7, 1, v34);
        v23 = v53;
        if (v35 != 1)
        {
          v36 = v42;
          sub_1A3394420(v7, v42);
          sub_1A3394420(v36, v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1A3298E00(0, v23[2] + 1, 1, v23);
          }

          v38 = v23[2];
          v37 = v23[3];
          if (v38 >= v37 >> 1)
          {
            v23 = sub_1A3298E00(v37 > 1, v38 + 1, 1, v23);
          }

          v23[2] = v38 + 1;
          sub_1A3394420(v49, v23 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38);
          goto LABEL_21;
        }
      }

      else
      {
        (*v50)(v7, 1, 1, v51);
      }

      sub_1A3288FDC(v7, &qword_1EB0C9540);
LABEL_21:
      ++v3;
      v25 += 3;
      if (v52 == v3)
      {
        goto LABEL_36;
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_36:

  return v23;
}

uint64_t sub_1A33936D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  v4 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (*a1 >> 62)
  {
LABEL_39:
    v5 = sub_1A34CD9B0();
  }

  else
  {
    v5 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel_contact;
  if (v5)
  {
    v6 = 0;
    v34 = MEMORY[0x1E69E7CC0];
    v7 = v3 & 0xC000000000000001;
    do
    {
      v8 = v6;
      while (1)
      {
        if (v7)
        {
          v9 = v3;
          v3 = MEMORY[0x1A58EF310](v8, v3);
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v8 >= *(v4 + 16))
          {
            goto LABEL_38;
          }

          v9 = v3;
          v3 = *(v3 + 8 * v8 + 32);
          sub_1A34C9010();
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
        v10 = sub_1A34CD040();

        v11 = *(a2 + v35);
        if (v10)
        {
          break;
        }

        v12 = v11;
        swift_getAtPartialKeyPath();

        if (swift_dynamicCast())
        {
          v15 = v3;
          v17 = v37;
          goto LABEL_20;
        }

        ++v8;
        v3 = v9;
        if (v6 == v5)
        {
          goto LABEL_27;
        }
      }

      v13 = [v11 termsOfAddress];
      if (!v13)
      {
        sub_1A3394490();
        sub_1A34CD370();
        v13 = sub_1A34CD350();
      }

      v14 = [objc_opt_self() localizedDescriptionForAddressingGrammars_];

      v15 = sub_1A34CD110();
      v17 = v16;

LABEL_20:
      v18 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1A32984C4(0, *(v34 + 2) + 1, 1, v34);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      v34 = v18;
      if (v20 >= v19 >> 1)
      {
        v34 = sub_1A32984C4((v19 > 1), v20 + 1, 1, v18);
      }

      *(v34 + 2) = v20 + 1;
      v21 = &v34[16 * v20];
      *(v21 + 4) = v15;
      *(v21 + 5) = v17;
      v3 = v9;
    }

    while (v6 != v5);
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A34E7C90;
  *(v22 + 32) = swift_getKeyPath();
  *(v22 + 40) = swift_getKeyPath();
  *(v22 + 48) = swift_getKeyPath();
  v23 = sub_1A3427244(v22, v3);

  if (v23)
  {

    v24 = [objc_opt_self() stringFromContact:*(a2 + v35) style:1];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1A34CD110();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    goto LABEL_36;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A34DC310;
  *(v29 + 32) = swift_getKeyPath();
  *(v29 + 40) = swift_getKeyPath();
  v30 = sub_1A3427244(v29, v3);

  if (v30)
  {
    v26 = sub_1A3393B40(v34);
    v28 = v32;
LABEL_34:

LABEL_36:
    *a3 = v26;
    a3[1] = v28;
    a3[2] = v3;
  }

  if (*(v34 + 2))
  {
    v26 = *(v34 + 4);
    v28 = *(v34 + 5);

    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void *sub_1A3393B40(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v1 == 1)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v2 = result[5];
  v4 = result[6];
  v3 = result[7];
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = result[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7380);
      sub_1A329A208();
      return sub_1A34CD010();
    }

    else
    {
      v7 = result[4];

      return v7;
    }
  }

  else
  {

    return v4;
  }
}

uint64_t sub_1A3393D0C()
{
  result = sub_1A34C99E0();
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

uint64_t sub_1A3393DCC()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1A3394308(&qword_1EB0C1530, type metadata accessor for ContactCardHeaderSwiftUIViewModel);
  sub_1A34C99A0();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong supportsAction_];
    swift_unknownObjectRelease();
    v4 = (v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isEmergencyContact);
    if (v3 != *(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isEmergencyContact))
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A34C9990();

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
    v4 = (v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isEmergencyContact);
    if (*(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isEmergencyContact))
    {
      goto LABEL_3;
    }
  }

  *v4 = v3;
LABEL_6:
  swift_getKeyPath();
  sub_1A34C99A0();

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    if ([v6 supportsAction_])
    {
      v8 = (v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isBlocked);
      v9 = 1;
      if ((*(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isBlocked) & 1) == 0)
      {
LABEL_9:
        v10 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v10);
        sub_1A34C9990();

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v14 = [v7 supportsAction_];
      v9 = v14;
      v8 = (v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isBlocked);
      if (v14 != *(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isBlocked))
      {
        goto LABEL_9;
      }
    }

    result = swift_unknownObjectRelease();
    *v8 = v9;
  }

  else
  {
    v12 = [objc_msgSend(objc_opt_self() sharedAnalyzer)];
    result = swift_unknownObjectRelease();
    if (v12 == *(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isBlocked))
    {
      *(v1 + OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isBlocked) = v12;
    }

    else
    {
      v13 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v13);
      sub_1A34C9990();
    }
  }

  return result;
}

uint64_t sub_1A3394248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubheaderItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A33942AC(uint64_t a1)
{
  v2 = type metadata accessor for SubheaderItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3394308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3394350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A33943CC()
{
  result = qword_1EB0C2A70;
  if (!qword_1EB0C2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C2A70);
  }

  return result;
}

uint64_t sub_1A3394420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubheaderItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A3394490()
{
  result = qword_1EB0C56C0;
  if (!qword_1EB0C56C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C56C0);
  }

  return result;
}

id sub_1A33944DC(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__actionsProvider;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isEmergencyContact] = 0;
  v2[OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel__isBlocked] = 0;
  *&v2[OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel____lazy_storage___contactFormatter] = 0;
  sub_1A34C99D0();
  *&v2[OBJC_IVAR____TtC14ContactsUICore33ContactCardHeaderSwiftUIViewModel_contact] = a1;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1A31F08B0(&v2[v6]);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  if (a2)
  {
    [a2 addObserver_];
    swift_unknownObjectRelease();
  }

  return v8;
}

void sub_1A3394610()
{
  sub_1A34C93B0();
  if (v0 <= 0x3F)
  {
    sub_1A3394694();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3394694()
{
  if (!qword_1EB0C0268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8140);
    v0 = sub_1A34CD3C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C0268);
    }
  }
}

uint64_t type metadata accessor for DetailsLabelText()
{
  result = qword_1EB0C2760;
  if (!qword_1EB0C2760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A339479C()
{
  sub_1A33813A4();
  if (v0 <= 0x3F)
  {
    sub_1A31EF4D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1A3394844@<D0>(uint64_t a1@<X8>)
{
  sub_1A34546F8(v29);
  sub_1A31EE4BC(v30, v28);
  sub_1A3292144(v29);
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v3 = (v1 + *(type metadata accessor for DetailsLabelText() + 24));
  v4 = v3[1];
  v27[0] = *v3;
  v27[1] = v4;
  sub_1A328A95C();

  v5 = sub_1A34CBE30();
  v7 = v6;
  v9 = v8;
  sub_1A34546F8(v27);
  sub_1A34C9010();
  sub_1A3292144(v27);
  v10 = sub_1A34CBE10();
  v12 = v11;
  v14 = v13;
  sub_1A328A9B0(v5, v7, v9 & 1);

  v15 = sub_1A34CBDF0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1A328A9B0(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  __swift_destroy_boxed_opaque_existential_0(v28);
  sub_1A34CCC90();
  sub_1A34CADA0();
  *(&v31[1] + 7) = v29[1];
  *(v31 + 7) = v29[0];
  *(&v31[3] + 7) = v30[1];
  *(&v31[4] + 7) = v30[2];
  *(&v31[5] + 7) = v30[3];
  *(&v31[6] + 7) = v30[4];
  *(&v31[2] + 7) = v30[0];
  v23 = v31[5];
  *(a1 + 105) = v31[4];
  *(a1 + 121) = v23;
  *(a1 + 137) = v31[6];
  v24 = v31[1];
  *(a1 + 41) = v31[0];
  *(a1 + 57) = v24;
  result = *&v31[2];
  v26 = v31[3];
  *(a1 + 73) = v31[2];
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 152) = *(&v31[6] + 15);
  *(a1 + 89) = v26;
  return result;
}

unint64_t sub_1A3394ABC()
{
  result = qword_1EB0C0BD0;
  if (!qword_1EB0C0BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0C9C90);
    sub_1A338CBF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0BD0);
  }

  return result;
}

uint64_t sub_1A3394B48()
{
  result = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x73746E65636552, 0xE700000000000000);
  qword_1EB0EDE38 = result;
  unk_1EB0EDE40 = v1;
  return result;
}

uint64_t sub_1A3394BB4()
{
  if (qword_1EB0C49D8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0EDE38;

  return v0;
}