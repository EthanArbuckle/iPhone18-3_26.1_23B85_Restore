BOOL sub_20D00530C(CGFloat a1, CGFloat a2)
{
  v3 = v2;
  v6 = sub_20D5660D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [v3 contentView];
  type metadata accessor for TileCellContentView();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = [v3 _bridgedConfigurationState];
    sub_20D5660C8();

    if (qword_28111FDB0 != -1)
    {
      swift_once();
    }

    sub_20D566078();
    (*(v7 + 8))(v9, v6);
    if (!v29)
    {

      sub_20CEF928C(v28, &unk_27C81C7A0);
      return 0;
    }

    if (swift_dynamicCast() & 1) != 0 && (v27[7])
    {
      v14 = *(v12 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView);
      [v14 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [v14 _touchInsets];
      v31.origin.x = UIEdgeInsetsInsetRect(v16, v18, v20, v22, v23, v24);
      v30.x = a1;
      v30.y = a2;
      v25 = CGRectContainsPoint(v31, v30);

      return v25;
    }
  }

  return 0;
}

uint64_t TileCell.ApplicationContext.hashValue.getter()
{
  v1 = *v0;
  sub_20D568D48();
  MEMORY[0x20F31E200](v1);
  return sub_20D568D98();
}

id sub_20D0056B4(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUTileCell_appContext;
  result = swift_beginAccess();
  v6 = v3[v4];
  v3[v4] = v2;
  if (v2 != v6)
  {
    return [v3 setNeedsUpdateConfiguration];
  }

  return result;
}

id sub_20D005820(_BYTE *a1, uint64_t a2, int a3, uint64_t *a4)
{
  v6 = *a4;
  result = swift_beginAccess();
  v8 = a1[v6];
  a1[v6] = a3;
  if (v8 != a3)
  {
    return [a1 setNeedsUpdateConfiguration];
  }

  return result;
}

id sub_20D00588C(unsigned __int8 *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  v9 = v6[v7];
  v6[v7] = v5;
  if (v5 != v9)
  {
    return [v6 setNeedsUpdateConfiguration];
  }

  return result;
}

id sub_20D0059E4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUTileCell_backgroundEffectGrouper;
  swift_beginAccess();
  *&v3[v4] = v2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return [v3 setNeedsUpdateConfiguration];
}

id sub_20D005B14(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  v9 = *&v6[v7];
  *&v6[v7] = v5;
  if (v5 != v9)
  {
    return [v6 setNeedsUpdateConfiguration];
  }

  return result;
}

id sub_20D005B80(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR___HUTileCell_overrideLayout;
  result = swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 8);
  *v5 = v2;
  *(v5 + 8) = v3;
  if (v3)
  {
    if (v8)
    {
      return result;
    }

    return [v4 setNeedsUpdateConfiguration];
  }

  if (v2 != v7)
  {
    LOBYTE(v8) = 1;
  }

  if (v8)
  {
    return [v4 setNeedsUpdateConfiguration];
  }

  return result;
}

id sub_20D005CB4(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = a1[1];
  result = *a2;
  v5 = *a2 + OBJC_IVAR___HUTileCell__gridSize;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = 0;
  if (v8)
  {
    return [result setNeedsUpdateConfiguration];
  }

  if (v2 != v6 || v3 != v7)
  {
    return [result setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_20D005CF8(_BYTE *a1)
{
  v2 = sub_20D565988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &a1[OBJC_IVAR___HUTileCell_dynamicGridSizeCalculator];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 8))(a1, ObjectType, v7);
    v11 = v9;
    v12 = &a1[OBJC_IVAR___HUTileCell__gridSize];
    v13 = *&a1[OBJC_IVAR___HUTileCell__gridSize];
    v14 = *&a1[OBJC_IVAR___HUTileCell__gridSize + 8];
    v15 = a1[OBJC_IVAR___HUTileCell__gridSize + 16];
    *v12 = v9;
    *(v12 + 1) = v10;
    v12[16] = 0;
    if ((v15 & 1) != 0 || (v9 == v13 ? (v16 = v10 == v14) : (v16 = 0), !v16))
    {
      [a1 setNeedsUpdateConfiguration];
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = OBJC_IVAR___HUTileCell_item;
    swift_beginAccess();
    if (*&a1[v17])
    {
      if (qword_2811208E0 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v2, qword_2811208E8);
      (*(v3 + 16))(v5, v18, v2);
      v19 = a1;
      v20 = sub_20D565968();
      v21 = sub_20D567EC8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412546;
        *(v22 + 4) = v19;
        *(v22 + 12) = 2112;
        v24 = *&a1[v17];
        *(v22 + 14) = v24;
        *v23 = v19;
        v23[1] = v24;
        v25 = v19;
        v26 = v24;
        _os_log_impl(&dword_20CEB6000, v20, v21, "TileCell doesn't have a gridSize set! %@ item: %@", v22, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v23, -1, -1);
        MEMORY[0x20F31FC70](v22, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
    }

    return 1;
  }

  return v11;
}

uint64_t sub_20D006098(double a1, double a2, double a3, double a4)
{
  v20.receiver = v4;
  v20.super_class = type metadata accessor for TileCell();
  objc_msgSendSuper2(&v20, sel_setBounds_, a1, a2, a3, a4);
  v9 = &v4[OBJC_IVAR___HUTileCell_dynamicGridSizeCalculator];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 8))(v4, ObjectType, v11);
    v15 = &v4[OBJC_IVAR___HUTileCell__gridSize];
    v16 = *&v4[OBJC_IVAR___HUTileCell__gridSize];
    v17 = *&v4[OBJC_IVAR___HUTileCell__gridSize + 8];
    v18 = v4[OBJC_IVAR___HUTileCell__gridSize + 16];
    *v15 = v13;
    *(v15 + 1) = v14;
    v15[16] = 0;
    if ((v18 & 1) != 0 || (v13 == v16 ? (v19 = v14 == v17) : (v19 = 0), !v19))
    {
      [v4 setNeedsUpdateConfiguration];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20D006224(void *a1, uint64_t a2, void (*a3)(void))
{
  v7 = a1;
  v4 = [v7 contentView];
  type metadata accessor for TileCellContentView();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView);
    a3();
  }

  else
  {
    v6 = v7;
    v7 = v4;
  }
}

uint64_t sub_20D0063CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20D5660D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TileCell();
  v29.receiver = v1;
  v29.super_class = v8;
  v9 = objc_msgSendSuper2(&v29, sel__bridgedConfigurationState);
  sub_20D5660C8();

  v10 = OBJC_IVAR___HUTileCell_item;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11)
  {
    v12 = v11;
    sub_20D0067B4(v12, v7);

    (*(v5 + 8))(a1, v4);
    (*(v5 + 32))(a1, v7, v4);
  }

  v13 = OBJC_IVAR___HUTileCell_borderStyle;
  swift_beginAccess();
  v14 = *(v2 + v13);
  if (qword_28111FDD0 != -1)
  {
    swift_once();
  }

  v15 = qword_28111FDD8;
  v28 = v14;
  type metadata accessor for HUTileCellBorderStyle(0);
  sub_20D0085EC(&unk_28111FE90, type metadata accessor for HUTileCellBorderStyle);
  v16 = v15;
  sub_20D5687F8();
  sub_20D566088();
  v17 = OBJC_IVAR___HUTileCell_backgroundDisplayStyle;
  swift_beginAccess();
  v18 = *(v2 + v17);
  if (qword_28111FD98 != -1)
  {
    swift_once();
  }

  v19 = qword_28111FDA0;
  v27 = v18;
  type metadata accessor for HUTileCellBackgroundDisplayStyle(0);
  sub_20D0085EC(&unk_28111FD78, type metadata accessor for HUTileCellBackgroundDisplayStyle);
  v20 = v19;
  sub_20D5687F8();
  v21 = sub_20D566088();
  v22 = (*((*MEMORY[0x277D85000] & *v2) + 0x130))(v21);
  if (qword_28111FDB0 != -1)
  {
    v25 = v22;
    swift_once();
    v22 = v25;
  }

  LOBYTE(v27) = v22 & 1;
  v23 = qword_28111FDB8;
  sub_20D5687F8();
  return sub_20D566088();
}

uint64_t sub_20D0067B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20D5660D8();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = a1;
  v7 = sub_20D567ED8();
  v9 = v8;
  if (qword_28111FD88 != -1)
  {
    swift_once();
  }

  v10 = qword_28111FD90;
  sub_20D566078();
  v11 = v20;
  sub_20CEF928C(v19, &unk_27C81C7A0);
  if (!v11)
  {
    if ((v9 & 1) == 0)
    {
      LOBYTE(v18) = v7 == 2;
      v15 = v10;
      sub_20D5687F8();
      sub_20D566088();
    }

    MEMORY[0x20F31D7A0](v19, *MEMORY[0x277D13FD8]);
    if (v20)
    {
      sub_20CECF940(0, &qword_28111FB20);
      if (swift_dynamicCast())
      {
        v16 = v18;
        if ([v18 BOOLValue])
        {
          LOBYTE(v18) = 0;
          v17 = v10;
          sub_20D5687F8();
          sub_20D566088();
        }
      }
    }

    else
    {
      sub_20CEF928C(v19, &qword_27C81BF00);
    }
  }

  [v6 loadingState];
  if (qword_28111FDC0 != -1)
  {
    swift_once();
  }

  v12 = qword_28111FDC8;
  sub_20D5687F8();
  sub_20D566088();
  if ((v9 & 1) != 0 || v7)
  {
    MEMORY[0x20F31D7A0](v19, *MEMORY[0x277D13E68]);
    sub_20CEF928C(v19, &qword_27C81BF00);
  }

  if (qword_28111FDE8 != -1)
  {
    swift_once();
  }

  v13 = qword_28111FDF0;
  sub_20D5687F8();
  return sub_20D566088();
}

void sub_20D006B4C()
{
  v1 = sub_20D5660D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TileCell();
  v67.receiver = v0;
  v67.super_class = v5;
  objc_msgSendSuper2(&v67, sel_prepareForReuse);
  v6 = OBJC_IVAR___HUTileCell_showPrefixLabel;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *(v0 + v6) = 0;
  if (v7 == 1)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  v8 = OBJC_IVAR___HUTileCell_hidesLabelsToFitAccessibilitySizeCategories;
  swift_beginAccess();
  *(v0 + v8) = 0;
  v9 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x138))(0);
  v10 = v0 + OBJC_IVAR___HUTileCell_overrideLayout;
  swift_beginAccess();
  v11 = v10[8];
  *v10 = 0;
  v10[8] = 1;
  if (v11 != 1)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  (*((*v9 & *v0) + 0x298))(0);
  v12 = OBJC_IVAR___HUTileCell_item;
  swift_beginAccess();
  v13 = *(v0 + v12);
  *(v0 + v12) = 0;
  if (v13)
  {
    [v0 setNeedsUpdateConfiguration];
  }

  memset(&v60, 0, 40);
  MEMORY[0x20F31D5C0](&v60);
  [v0 setHidden_];
  v14 = v0 + OBJC_IVAR___HUTileCell_contentScale;
  swift_beginAccess();
  v15 = v14[8];
  *v14 = 0;
  v14[8] = 1;
  if ((v15 & 1) == 0)
  {
    v16 = [v0 contentView];
    if (v14[8])
    {
      v17 = xmmword_20D5C4670;
      v18 = xmmword_20D5C4680;
      v19 = 0uLL;
    }

    else
    {
      v20 = *v14;
      v60.a = 1.0;
      v60.b = 0.0;
      v60.c = 0.0;
      v60.d = 1.0;
      v60.tx = 0.0;
      v60.ty = 0.0;
      CGAffineTransformScale(&v53, &v60, v20, v20);
      v18 = *&v53.a;
      v17 = *&v53.c;
      v19 = *&v53.tx;
    }

    *&v60.a = v18;
    *&v60.c = v17;
    *&v60.tx = v19;
    [v16 setTransform_];

    [v0 setNeedsUpdateConfiguration];
    [v0 setNeedsLayout];
    [v0 layoutIfNeeded];
  }

  v21 = [v0 _bridgedConfigurationState];
  sub_20D5660C8();

  sub_20D003CDC(v4);
  (*(v2 + 8))(v4, v1);
  v22 = [v0 contentView];
  type metadata accessor for TileCellContentView();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = *(v23 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView);
    sub_20D078190(0);
    sub_20D0780AC(0);
    sub_20CFDAF0C(v51);
    v25 = v24 + OBJC_IVAR___HUBaseIconView_configuration;
    swift_beginAccess();
    *&v53.a = *v25;
    v26 = *(v25 + 16);
    v27 = *(v25 + 32);
    v28 = *(v25 + 64);
    v54 = *(v25 + 48);
    v55 = v28;
    *&v53.c = v26;
    *&v53.tx = v27;
    v29 = *(v25 + 80);
    v30 = *(v25 + 96);
    v31 = *(v25 + 112);
    v59 = *(v25 + 128);
    v57 = v30;
    v58 = v31;
    v56 = v29;
    *&v60.a = *v25;
    v32 = *(v25 + 16);
    v33 = *(v25 + 32);
    v34 = *(v25 + 64);
    v61 = *(v25 + 48);
    v62 = v34;
    *&v60.c = v32;
    *&v60.tx = v33;
    v35 = *(v25 + 80);
    v36 = *(v25 + 96);
    v37 = *(v25 + 112);
    v66 = *(v25 + 128);
    v64 = v36;
    v65 = v37;
    v63 = v35;
    *v25 = v51[0];
    v38 = v51[1];
    v39 = v51[2];
    v40 = v51[4];
    *(v25 + 48) = v51[3];
    *(v25 + 64) = v40;
    *(v25 + 16) = v38;
    *(v25 + 32) = v39;
    v41 = v51[5];
    v42 = v51[6];
    v43 = v51[7];
    *(v25 + 128) = v52;
    *(v25 + 96) = v42;
    *(v25 + 112) = v43;
    *(v25 + 80) = v41;
    sub_20CFFB178(&v53, &v44);
    sub_20CEF928C(&v60, &qword_27C81F350);
    v48 = v57;
    v49 = v58;
    v50 = v59;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    sub_20D077000(&v44);

    sub_20CEF928C(&v53, &qword_27C81F350);
  }

  else
  {
  }
}

void sub_20D0070A8(uint64_t a1)
{
  v2 = v1;
  sub_20D004168(a1);
  sub_20D003CDC(a1);
  v4 = [v1 layer];
  [v2 backgroundCornerRadius];
  [v4 setCornerRadius_];

  v5 = [v2 contentView];
  v6 = [v5 layer];

  v7 = [v2 layer];
  [v7 cornerRadius];
  v9 = v8;

  [v6 setCornerRadius_];
  v10 = [v2 contentView];
  v11 = [v2 traitCollection];
  v12 = &v2[OBJC_IVAR___HUTileCell__gridSize];
  if (v2[OBJC_IVAR___HUTileCell__gridSize + 16] == 1)
  {
    v13 = sub_20D005CF8(v2);
    v15 = v14;
  }

  else
  {
    v13 = *v12;
    v15 = v12[1];
  }

  v16 = &v2[OBJC_IVAR___HUTileCell_contentScale];
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[8];
  v19 = OBJC_IVAR___HUTileCell_appContext;
  swift_beginAccess();
  if (v2[v19] == 2)
  {
    if (v13 <= 1)
    {
      [v11 displayScale];
      v20.n128_u64[0] = v21.n128_u64[0];
      if (v15 <= 1)
      {
        v21.n128_u64[0] = 10.0;
        v22.n128_u64[0] = 10.0;
        v23.n128_u64[0] = 10.0;
        v24.n128_u64[0] = 4.0;
      }

      else
      {
        v21.n128_u64[0] = 2.0;
        v22.n128_u64[0] = 14.0;
        v23.n128_u64[0] = 2.0;
        v24.n128_u64[0] = 8.0;
      }
    }

    else
    {
      [v11 displayScale];
      v20.n128_u64[0] = v21.n128_u64[0];
      v21.n128_u64[0] = 14.0;
      v22.n128_u64[0] = 14.0;
      v23.n128_u64[0] = 14.0;
      v24.n128_u64[0] = 12.0;
    }

    v31 = CCUIScaledMetric(_:_:_:)(v17, v18, v21, v22, v23, v24, v20);
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v30 = v37;
    v29 = v35;
    v28 = v33;
    v27 = v31;
  }

  else
  {
    v25 = [v11 preferredContentSizeCategory];
    v26 = sub_20D568168();

    v27 = 10.0;
    if (v26)
    {
      v27 = 14.0;
    }

    v28 = v27;
    v29 = v27;
    v30 = v27;
  }

  [v10 setDirectionalLayoutMargins_];

  v38 = sub_20D5660B8();
  v39.receiver = v2;
  v39.super_class = type metadata accessor for TileCell();
  objc_msgSendSuper2(&v39, sel__bridgedUpdateConfigurationUsingState_, v38);
}

void sub_20D007648()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  if (v5 < 0)
  {
    v15 = *(v0 + 128);
    v16 = *(v0 + 96);
    v27 = v16 & 1;
    v25 = v5 & 0x101;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_20CFD9D60(v1, v2, v16, v3, v4, v5);
      swift_unknownObjectRetain();
      v17 = v3;
      v18 = sub_20D00835C();
      swift_unknownObjectRelease_n();
      sub_20CFD9DD8(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
      *(v0 + 80) = v1;
      *(v0 + 88) = v2;
      *(v0 + 96) = v16 & 1;
      *(v0 + 104) = v17;
      *(v0 + 112) = v4;
      *(v0 + 120) = v25 | 0x8000000000000000;
      *(v0 + 128) = v18;
    }

    else
    {
      v26[0] = v1;
      v26[1] = v2;
      v26[2] = v16 & 1;
      v26[3] = v3;
      v26[4] = v4;
      v26[5] = v5 & 0x101;
      v26[6] = v15;
      sub_20CFD9D60(v1, v2, v16, v3, v4, v5);
      sub_20CFFCA90(v26);
    }
  }

  else
  {
    v24 = *(v0 + 96);
    v6 = objc_opt_self();
    sub_20D5663C8();
    v7 = v3;
    v8 = v4;
    v9 = [v6 systemGrayColor];

    v23 = v5 & 1;
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v12 = *(v0 + 104);
    v19 = *(v0 + 112);
    v20 = *(v0 + 96);
    v21 = v1;
    v13 = *(v0 + 120);
    sub_20D5663C8();
    v22 = v7;
    v14 = v9;
    sub_20CFD9DD8(v10, v11, v20, v12, v19, v13);
    *(v0 + 80) = v21;
    *(v0 + 88) = v2;
    *(v0 + 96) = v24;
    *(v0 + 104) = v3;
    *(v0 + 112) = v9;
    *(v0 + 120) = v23;
    *(v0 + 128) = 0;
  }
}

id TileCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TileCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___HUTileCell_item] = 0;
  v4[OBJC_IVAR___HUTileCell_appContext] = 0;
  v4[OBJC_IVAR___HUTileCell_showPrefixLabel] = 0;
  v4[OBJC_IVAR___HUTileCell_toggleable] = 0;
  v4[OBJC_IVAR___HUTileCell_useMutedIconOffColors] = 0;
  v9 = &v4[OBJC_IVAR___HUTileCell_contentScale];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR___HUTileCell_backgroundEffectGrouper] = 0;
  *&v4[OBJC_IVAR___HUTileCell_backgroundDisplayStyle] = 1;
  *&v4[OBJC_IVAR___HUTileCell_borderStyle] = 0;
  *&v4[OBJC_IVAR___HUTileCell_materialStyle] = 0;
  v10 = &v4[OBJC_IVAR___HUTileCell_overrideLayout];
  *v10 = 0;
  v10[8] = 1;
  v4[OBJC_IVAR___HUTileCell_hidesLabelsToFitAccessibilitySizeCategories] = 0;
  v11 = &v4[OBJC_IVAR___HUTileCell__gridSize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&v4[OBJC_IVAR___HUTileCell_dynamicGridSizeCalculator + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR___HUTileCell_isRearranging] = 0;
  v4[OBJC_IVAR___HUTileCell_reorderable] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for TileCell();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

id TileCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TileCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___HUTileCell_item] = 0;
  v1[OBJC_IVAR___HUTileCell_appContext] = 0;
  v1[OBJC_IVAR___HUTileCell_showPrefixLabel] = 0;
  v1[OBJC_IVAR___HUTileCell_toggleable] = 0;
  v1[OBJC_IVAR___HUTileCell_useMutedIconOffColors] = 0;
  v3 = &v1[OBJC_IVAR___HUTileCell_contentScale];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR___HUTileCell_backgroundEffectGrouper] = 0;
  *&v1[OBJC_IVAR___HUTileCell_backgroundDisplayStyle] = 1;
  *&v1[OBJC_IVAR___HUTileCell_borderStyle] = 0;
  *&v1[OBJC_IVAR___HUTileCell_materialStyle] = 0;
  v4 = &v1[OBJC_IVAR___HUTileCell_overrideLayout];
  *v4 = 0;
  v4[8] = 1;
  v1[OBJC_IVAR___HUTileCell_hidesLabelsToFitAccessibilitySizeCategories] = 0;
  v5 = &v1[OBJC_IVAR___HUTileCell__gridSize];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *&v1[OBJC_IVAR___HUTileCell_dynamicGridSizeCalculator + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___HUTileCell_isRearranging] = 0;
  v1[OBJC_IVAR___HUTileCell_reorderable] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TileCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id TileCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TileCell.configureDragItem(_:)(UIDragItem a1)
{
  v2 = v1;
  v4 = sub_20D5660D8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 contentView];
  [v2 backgroundCornerRadius];
  v11 = v10;
  v12 = [v2 _bridgedConfigurationState];
  sub_20D5660C8();

  if (qword_28111FD88 != -1)
  {
    swift_once();
  }

  sub_20D566078();
  (*(v5 + 8))(v8, v4);
  if (v28)
  {
    if (swift_dynamicCast())
    {
      v13 = v31;
      goto LABEL_8;
    }
  }

  else
  {
    sub_20CEF928C(aBlock, &unk_27C81C7A0);
  }

  v13 = 0;
LABEL_8:
  v14 = OBJC_IVAR___HUTileCell_item;
  swift_beginAccess();
  v15 = *&v2[v14];
  if (v15)
  {
    v16 = objc_allocWithZone(type metadata accessor for CollectionLayoutManager());
    v17 = v15;
    v18 = [v16 init];
    v19 = (*((*MEMORY[0x277D85000] & *v18) + 0x128))(v17);

    [v2 bounds];
    MidX = CGRectGetMidX(v32);
    [v2 bounds];
    Height = CGRectGetHeight(v33);

    v22 = Height / v19 * 0.5;
  }

  else
  {
    MidX = 0.0;
    v22 = 0.0;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  *(v23 + 24) = v9;
  *(v23 + 32) = v11;
  *(v23 + 40) = MidX;
  *(v23 + 48) = v22;
  *(v23 + 56) = v15 == 0;
  v29 = sub_20D008634;
  v30 = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CF351D8;
  v28 = &block_descriptor_27;
  v24 = _Block_copy(aBlock);
  v25 = v9;

  [(objc_class *)a1.super.isa setPreviewProvider:v24];
  _Block_release(v24);
}

id sub_20D008124(char a1, void *a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277D75480]) init];
  v13 = v12;
  if (a1)
  {
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 whiteColor];
  }

  else
  {
    v17 = v12;
    v18 = sub_20D5677F8();
    v16 = HUColorNamed(v18);
  }

  [v13 setBackgroundColor_];

  [a2 bounds];
  v23 = [objc_opt_self() bezierPathWithRoundedRect:v19 cornerRadius:{v20, v21, v22, a6}];
  [v13 setVisiblePath_];

  v24 = [objc_allocWithZone(MEMORY[0x277D75478]) initWithView:a2 parameters:v13];
  v25 = v24;
  if ((a5 & 1) == 0)
  {
    [v24 setPreferredAnchorPoint_];
  }

  return v25;
}

id sub_20D00835C()
{
  swift_getObjectType();
  v1 = [v0 state];
  v2 = sub_20D567838();
  v4 = v3;
  if (v2 == sub_20D567838() && v4 == v5)
  {
    v8 = MEMORY[0x277D13780];
LABEL_8:

    goto LABEL_9;
  }

  v7 = sub_20D568BF8();

  if (v7)
  {
    v8 = MEMORY[0x277D13780];
LABEL_9:
    v9 = *v8;

    v1 = v9;
    goto LABEL_10;
  }

  v13 = sub_20D567838();
  v15 = v14;
  if (v13 == sub_20D567838() && v15 == v16)
  {
    v8 = MEMORY[0x277D13768];
    goto LABEL_8;
  }

  v18 = sub_20D568BF8();

  if (v18)
  {
    v8 = MEMORY[0x277D13768];
    goto LABEL_9;
  }

LABEL_10:
  v10 = [v0 packageIdentifier];
  if (!v10)
  {
    sub_20D567838();
    v10 = sub_20D5677F8();
  }

  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPackageIdentifier:v10 state:v1];

  return v11;
}

uint64_t sub_20D008548()
{
  v0 = sub_20D565988();
  __swift_allocate_value_buffer(v0, qword_2811208E8);
  __swift_project_value_buffer(v0, qword_2811208E8);
  return sub_20D565978();
}

uint64_t sub_20D0085EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20D008668()
{
  result = qword_27C81F358;
  if (!qword_27C81F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F358);
  }

  return result;
}

uint64_t keypath_get_14Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

unint64_t sub_20D009378()
{
  result = qword_281120460;
  if (!qword_281120460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281120460);
  }

  return result;
}

Swift::String_optional __swiftcall TileCell.prefixString()()
{
  MEMORY[0x20F31D5B0](v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, sizeof(__dst));
    }
  }

  else
  {
    sub_20CEF928C(v7, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(v7, __dst, sizeof(v7));
  memcpy(__src, __dst, sizeof(__src));
  if (sub_20D009584(__src) == 1)
  {
    goto LABEL_11;
  }

  if ((__src[4] & 1) != 0 || !__src[0])
  {
    sub_20CEF928C(v7, &qword_27C81F3C8);
LABEL_11:
    v5 = 0;
    v4 = 0;
    goto LABEL_12;
  }

  v0 = [__src[0] string];
  v1 = sub_20D567838();
  v3 = v2;

  sub_20CEF928C(v7, &qword_27C81F3C8);
  v4 = v3;
  v5 = v1;
LABEL_12:
  result.value._object = v4;
  result.value._countAndFlagsBits = v5;
  return result;
}

double sub_20D009538(uint64_t a1)
{
  *(a1 + 496) = 0;
  result = 0.0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_20D009584(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

Swift::String_optional __swiftcall TileCell.primaryString()()
{
  MEMORY[0x20F31D5B0](v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, sizeof(__dst));
    }
  }

  else
  {
    sub_20CEF928C(v7, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(v7, __dst, sizeof(v7));
  memcpy(__src, __dst, sizeof(__src));
  if (sub_20D009584(__src) == 1)
  {
    goto LABEL_11;
  }

  if ((__src[13] & 1) != 0 || !__src[9])
  {
    sub_20CEF928C(v7, &qword_27C81F3C8);
LABEL_11:
    v5 = 0;
    v4 = 0;
    goto LABEL_12;
  }

  v0 = [__src[9] string];
  v1 = sub_20D567838();
  v3 = v2;

  sub_20CEF928C(v7, &qword_27C81F3C8);
  v4 = v3;
  v5 = v1;
LABEL_12:
  result.value._object = v4;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall TileCell.secondaryString()()
{
  MEMORY[0x20F31D5B0](v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, sizeof(__dst));
    }
  }

  else
  {
    sub_20CEF928C(v7, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(v7, __dst, sizeof(v7));
  memcpy(__src, __dst, sizeof(__src));
  if (sub_20D009584(__src) == 1)
  {
    goto LABEL_11;
  }

  if ((__src[22] & 1) != 0 || !__src[18])
  {
    sub_20CEF928C(v7, &qword_27C81F3C8);
LABEL_11:
    v5 = 0;
    v4 = 0;
    goto LABEL_12;
  }

  v0 = [__src[18] string];
  v1 = sub_20D567838();
  v3 = v2;

  sub_20CEF928C(v7, &qword_27C81F3C8);
  v4 = v3;
  v5 = v1;
LABEL_12:
  result.value._object = v4;
  result.value._countAndFlagsBits = v5;
  return result;
}

id sub_20D0098AC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_20D5677F8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

NSAttributedString_optional __swiftcall TileCell.secondaryAttributedString()()
{
  MEMORY[0x20F31D5B0](v4);
  if (v4[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, 0x1F8uLL);
    }
  }

  else
  {
    sub_20CEF928C(v4, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(v4, __dst, sizeof(v4));
  memcpy(__src, __dst, sizeof(__src));
  if (sub_20D009584(__src) == 1)
  {
    v1 = 0;
  }

  else
  {
    if (__src[22])
    {
      v1 = 0;
    }

    else
    {
      v1 = __src[18];
      v2 = __src[18];
    }

    sub_20CEF928C(v4, &qword_27C81F3C8);
  }

  v3 = v1;
  result.value.super.isa = v3;
  result.is_nil = v0;
  return result;
}

__C::CGRect __swiftcall TileCell.iconViewTileFrame()()
{
  v0 = sub_20D009AE0(&OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView);
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v1;
  result.origin.x = v0;
  return result;
}

__C::CGRect __swiftcall TileCell.prefixLabelTileFrame()()
{
  v0 = sub_20D009AE0(&OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel);
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v1;
  result.origin.x = v0;
  return result;
}

__C::CGRect __swiftcall TileCell.primaryLabelTileFrame()()
{
  v0 = sub_20D009AE0(&OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel);
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v1;
  result.origin.x = v0;
  return result;
}

__C::CGRect __swiftcall TileCell.secondaryLabelTileFrame()()
{
  v0 = sub_20D009AE0(&OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel);
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v1;
  result.origin.x = v0;
  return result;
}

double sub_20D009AE0(void *a1)
{
  v3 = [v1 contentView];
  type metadata accessor for TileCellContentView();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    [*(v4 + *a1) frame];
    v6 = v5;
  }

  else
  {

    return 0.0;
  }

  return v6;
}

double sub_20D009BA8(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = [v4 contentView];
  type metadata accessor for TileCellContentView();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + *a3);
    [v7 frame];
    v9 = v8;
  }

  else
  {

    return 0.0;
  }

  return v9;
}

Swift::Bool __swiftcall TileCell.prefixLabelShouldFeather()()
{
  MEMORY[0x20F31D5B0](v3);
  if (v3[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, sizeof(__dst));
    }
  }

  else
  {
    sub_20CEF928C(v3, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(__src, __dst, sizeof(__src));
  v0 = sub_20D009584(__src) != 1;
  v1 = __dst[33];
  memcpy(v3, __dst, sizeof(v3));
  sub_20CEF928C(v3, &qword_27C81F3C8);
  return v0 & v1;
}

Swift::Bool __swiftcall TileCell.primaryLabelShouldFeather()()
{
  MEMORY[0x20F31D5B0](v3);
  if (v3[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, sizeof(__dst));
    }
  }

  else
  {
    sub_20CEF928C(v3, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(__src, __dst, sizeof(__src));
  v0 = sub_20D009584(__src) != 1;
  v1 = __dst[105];
  memcpy(v3, __dst, sizeof(v3));
  sub_20CEF928C(v3, &qword_27C81F3C8);
  return v0 & v1;
}

Swift::Bool __swiftcall TileCell.secondaryLabelShouldFeather()()
{
  MEMORY[0x20F31D5B0](v3);
  if (v3[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, sizeof(__dst));
    }
  }

  else
  {
    sub_20CEF928C(v3, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(__src, __dst, sizeof(__src));
  v0 = sub_20D009584(__src) != 1;
  v1 = __dst[177];
  memcpy(v3, __dst, sizeof(v3));
  sub_20CEF928C(v3, &qword_27C81F3C8);
  return v0 & v1;
}

UIFont_optional __swiftcall TileCell.prefixLabelFont()()
{
  MEMORY[0x20F31D5B0](v11);
  if (v11[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, sizeof(__dst));
    }
  }

  else
  {
    sub_20CEF928C(v11, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(__src, __dst, sizeof(__src));
  if (sub_20D009584(__src) == 1)
  {
    memcpy(v11, __dst, sizeof(v11));
    sub_20CEF928C(v11, &qword_27C81F3C8);
    v1 = 0;
  }

  else
  {
    v2 = __dst[1];
    v3 = __dst[2];
    v4 = __dst[5];
    v5 = __dst[6];
    memcpy(v11, __dst, sizeof(v11));
    v6 = __dst[0];
    v7 = v2;
    v8 = v3;
    sub_20CEF928C(v11, &qword_27C81F3C8);
    if (v5)
    {

      v1 = v8;
    }

    else
    {
      [(objc_class *)v8 pointSize];
      v10 = [(objc_class *)v8 fontWithSize:*&v4 * v9];

      v1 = v10;
    }
  }

  result.value.super.isa = v1;
  result.is_nil = v0;
  return result;
}

UIFont_optional __swiftcall TileCell.primaryLabelFont()()
{
  MEMORY[0x20F31D5B0](v11);
  if (v11[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, sizeof(__dst));
    }
  }

  else
  {
    sub_20CEF928C(v11, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(__src, __dst, sizeof(__src));
  if (sub_20D009584(__src) == 1)
  {
    memcpy(v11, __dst, sizeof(v11));
    sub_20CEF928C(v11, &qword_27C81F3C8);
    v1 = 0;
  }

  else
  {
    v2 = __dst[10];
    v3 = __dst[11];
    v4 = __dst[14];
    v5 = __dst[15];
    memcpy(v11, __dst, sizeof(v11));
    v6 = __dst[9];
    v7 = v2;
    v8 = v3;
    sub_20CEF928C(v11, &qword_27C81F3C8);
    if (v5)
    {

      v1 = v8;
    }

    else
    {
      [(objc_class *)v8 pointSize];
      v10 = [(objc_class *)v8 fontWithSize:*&v4 * v9];

      v1 = v10;
    }
  }

  result.value.super.isa = v1;
  result.is_nil = v0;
  return result;
}

UIFont_optional __swiftcall TileCell.secondaryLabelFont()()
{
  MEMORY[0x20F31D5B0](v11);
  if (v11[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, sizeof(__dst));
    }
  }

  else
  {
    sub_20CEF928C(v11, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(__src, __dst, sizeof(__src));
  if (sub_20D009584(__src) == 1)
  {
    memcpy(v11, __dst, sizeof(v11));
    sub_20CEF928C(v11, &qword_27C81F3C8);
    v1 = 0;
  }

  else
  {
    v2 = __dst[19];
    v3 = __dst[20];
    v4 = __dst[23];
    v5 = __dst[24];
    memcpy(v11, __dst, sizeof(v11));
    v6 = __dst[18];
    v7 = v2;
    v8 = v3;
    sub_20CEF928C(v11, &qword_27C81F3C8);
    if (v5)
    {

      v1 = v8;
    }

    else
    {
      [(objc_class *)v8 pointSize];
      v10 = [(objc_class *)v8 fontWithSize:*&v4 * v9];

      v1 = v10;
    }
  }

  result.value.super.isa = v1;
  result.is_nil = v0;
  return result;
}

UIColor_optional __swiftcall TileCell.prefixLabelTextColor()()
{
  MEMORY[0x20F31D5B0](v4);
  if (v4[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, 0x1F8uLL);
    }
  }

  else
  {
    sub_20CEF928C(v4, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(__src, __dst, sizeof(__src));
  if (sub_20D009584(__src) == 1)
  {
    v0 = 0;
  }

  else
  {
    v0 = __dst[1];
    v1 = __dst[1];
  }

  memcpy(v4, __dst, sizeof(v4));
  sub_20CEF928C(v4, &qword_27C81F3C8);
  v3 = v0;
  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

UIColor_optional __swiftcall TileCell.primaryLabelTextColor()()
{
  MEMORY[0x20F31D5B0](v4);
  if (v4[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, 0x1F8uLL);
    }
  }

  else
  {
    sub_20CEF928C(v4, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(__src, __dst, sizeof(__src));
  if (sub_20D009584(__src) == 1)
  {
    v0 = 0;
  }

  else
  {
    v0 = __dst[10];
    v1 = __dst[10];
  }

  memcpy(v4, __dst, sizeof(v4));
  sub_20CEF928C(v4, &qword_27C81F3C8);
  v3 = v0;
  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

UIColor_optional __swiftcall TileCell.secondaryLabelTextColor()()
{
  MEMORY[0x20F31D5B0](v4);
  if (v4[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, 0x1F8uLL);
    }
  }

  else
  {
    sub_20CEF928C(v4, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(__src, __dst, sizeof(__src));
  if (sub_20D009584(__src) == 1)
  {
    v0 = 0;
  }

  else
  {
    v0 = __dst[19];
    v1 = __dst[19];
  }

  memcpy(v4, __dst, sizeof(v4));
  sub_20CEF928C(v4, &qword_27C81F3C8);
  v3 = v0;
  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

void *sub_20D00AA2C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_20D5660D8();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = [v2 _bridgedConfigurationState];
  sub_20D5660C8();

  if (qword_28111FD88 != -1)
  {
    swift_once();
  }

  v26[0] = v4 & 1;
  v13 = qword_28111FD90;
  sub_20D5687F8();
  v14 = MEMORY[0x277D74BA8];
  v15 = sub_20D566088();
  MEMORY[0x20F31D5B0](v25, v15);
  if (v25[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(v27);
    }

    else
    {
      sub_20D009538(v26);
      memcpy(v27, v26, sizeof(v27));
    }
  }

  else
  {
    sub_20CEF928C(v25, &qword_27C81C790);
    sub_20D009538(v27);
  }

  memcpy(v25, v27, sizeof(v25));
  memcpy(v26, v27, sizeof(v26));
  if (sub_20D009584(v26) == 1)
  {
    (*(v8 + 8))(v11, v7);
    memcpy(v24, v27, sizeof(v24));
    sub_20CEF928C(v24, &qword_27C81F3C8);
    v16 = v25;
  }

  else
  {
    memcpy(v22, v27, sizeof(v22));
    memcpy(v20, v27, sizeof(v20));
    memcpy(v21, v27, sizeof(v21));
    sub_20CFFCAE4(v22, v24);
    sub_20CEF928C(v21, &qword_27C81F3C8);
    v24[3] = v7;
    v24[4] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(v8 + 16))(boxed_opaque_existential_1, v11, v7);
    TileCellContentConfiguration.updated(for:)(v24, v28);
    memcpy(v23, v20, sizeof(v23));
    sub_20CEFFA00(v23);
    (*(v8 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v24);
    memcpy(v24, v28, sizeof(v24));
    CGSizeMake(v24);
    v16 = v24;
  }

  return memcpy(v6, v16, 0x1F8uLL);
}

UIColor_optional __swiftcall TileCell.primaryLabelOnTextColor()()
{
  v0 = sub_20D00ADCC(1);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

UIColor_optional __swiftcall TileCell.primaryLabelOffTextColor()()
{
  v0 = sub_20D00ADCC(0);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

id sub_20D00ADCC(uint64_t a1)
{
  sub_20D00AA2C(a1);
  memcpy(__dst, v7, sizeof(__dst));
  if (sub_20D009584(__dst) == 1)
  {
    return 0;
  }

  v2 = __dst[10];
  v3 = __dst[11];
  v4 = __dst[9];
  v5 = v2;
  v6 = v3;
  sub_20CEF928C(v7, &qword_27C81F3C8);

  return v5;
}

id sub_20D00AE78(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_20D00AA2C(a3);

  memcpy(__dst, v12, sizeof(__dst));
  if (sub_20D009584(__dst) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = __dst[10];
    v7 = __dst[11];
    v8 = __dst[9];
    v9 = v6;
    v10 = v7;
    sub_20CEF928C(v12, &qword_27C81F3C8);

    v5 = v9;
  }

  return v5;
}

UIColor_optional __swiftcall TileCell.prefixLabelOnTextColor()()
{
  v0 = sub_20D00AF58(1);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

UIColor_optional __swiftcall TileCell.prefixLabelOffTextColor()()
{
  v0 = sub_20D00AF58(0);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

id sub_20D00AF58(uint64_t a1)
{
  sub_20D00AA2C(a1);
  memcpy(__dst, v7, sizeof(__dst));
  if (sub_20D009584(__dst) == 1)
  {
    return 0;
  }

  v2 = __dst[1];
  v3 = __dst[2];
  v4 = __dst[0];
  v5 = v2;
  v6 = v3;
  sub_20CEF928C(v7, &qword_27C81F3C8);

  return v5;
}

id sub_20D00B000(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_20D00AA2C(a3);

  memcpy(__dst, v12, sizeof(__dst));
  if (sub_20D009584(__dst) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = __dst[1];
    v7 = __dst[2];
    v8 = __dst[0];
    v9 = v6;
    v10 = v7;
    sub_20CEF928C(v12, &qword_27C81F3C8);

    v5 = v9;
  }

  return v5;
}

UIColor_optional __swiftcall TileCell.secondaryLabelOnTextColor()()
{
  v0 = sub_20D00B0DC(1);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

UIColor_optional __swiftcall TileCell.secondaryLabelOffTextColor()()
{
  v0 = sub_20D00B0DC(0);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

id sub_20D00B0DC(uint64_t a1)
{
  sub_20D00AA2C(a1);
  memcpy(__dst, v7, sizeof(__dst));
  if (sub_20D009584(__dst) == 1)
  {
    return 0;
  }

  v2 = __dst[19];
  v3 = __dst[20];
  v4 = __dst[18];
  v5 = v2;
  v6 = v3;
  sub_20CEF928C(v7, &qword_27C81F3C8);

  return v5;
}

id sub_20D00B188(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_20D00AA2C(a3);

  memcpy(__dst, v12, sizeof(__dst));
  if (sub_20D009584(__dst) == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = __dst[19];
    v7 = __dst[20];
    v8 = __dst[18];
    v9 = v6;
    v10 = v7;
    sub_20CEF928C(v12, &qword_27C81F3C8);

    v5 = v9;
  }

  return v5;
}

uint64_t TileCell.backgroundColor.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E080);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  MEMORY[0x20F31D5D0](v1);
  v4 = sub_20D5661A8();
  v5 = 0;
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_20D566148();
  }

  sub_20CEF928C(v3, &unk_27C81E080);
  return v5;
}

void TileCell.backgroundColor.setter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E080);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  MEMORY[0x20F31D5D0](v6);
  v9 = sub_20D5661A8();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    sub_20CEF9178(v8, v4, &unk_27C81E080);
    MEMORY[0x20F31D5E0](v4);

    sub_20CEF928C(v8, &unk_27C81E080);
  }

  else
  {
    v10 = a1;
    sub_20D566158();
    MEMORY[0x20F31D5E0](v8);
  }
}

__C::CGRect __swiftcall TileCell.tileFrame()()
{
  [v0 bounds];
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

double TileCell.backgroundCornerRadius()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E080);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-v2];
  v4 = OBJC_IVAR___HUTileCell_appContext;
  v5 = swift_beginAccess();
  if (v0[v4] == 2)
  {
    v6 = &v0[OBJC_IVAR___HUTileCell__gridSize];
    if (v0[OBJC_IVAR___HUTileCell__gridSize + 16] == 1)
    {
      v7 = sub_20D005CF8(v0);
    }

    else
    {
      v7 = *v6;
      v8 = v6[1];
    }

    v11 = sub_20CF6BAF0(v7, v8);
    v12 = MEMORY[0x20F31E320]();
    if (v11)
    {
      CCUILayoutGutter();
      CCUICompactModuleContinuousCornerRadiusForGridSizeClass();
      v10 = v13;
    }

    else
    {
      v10 = v12 * 0.33;
    }

    v15 = &v0[OBJC_IVAR___HUTileCell_contentScale];
    swift_beginAccess();
    if ((v15[1] & 1) == 0)
    {
      return v10 * *v15;
    }
  }

  else
  {
    MEMORY[0x20F31D5D0](v5);
    v9 = sub_20D5661A8();
    if ((*(*(v9 - 8) + 48))(v3, 1, v9))
    {
      sub_20CEF928C(v3, &unk_27C81E080);
      return 0.0;
    }

    else
    {
      sub_20D566128();
      v10 = v14;
      sub_20CEF928C(v3, &unk_27C81E080);
    }
  }

  return v10;
}

void __swiftcall TileCell.createBackgroundBlurView()(UIView_optional *__return_ptr retstr)
{
  v2 = sub_20D5660D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR___HUTileCell_backgroundDisplayStyle;
  swift_beginAccess();
  if (*&v1[v6] == 1)
  {
    v7 = [v1 _bridgedConfigurationState];
    sub_20D5660C8();

    if (qword_28111FD88 != -1)
    {
      swift_once();
    }

    sub_20D566078();
    (*(v3 + 8))(v5, v2);
    if (v15)
    {
      if (swift_dynamicCast() & 1) != 0 && (v13[15])
      {
        v8 = HUSharedVisualEffectIdentifierTileOn;
LABEL_10:
        v9 = *v8;
        v10 = [objc_allocWithZone(type metadata accessor for TileCellBackgroundView()) initWithFrame_];
        swift_beginAccess();
        swift_unknownObjectWeakAssign();
        Strong = swift_unknownObjectWeakLoadStrong();
        v12 = v10;
        sub_20CFFE02C(v9, Strong, 0);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      sub_20CEF928C(v14, &unk_27C81C7A0);
    }

    v8 = HUSharedVisualEffectIdentifierTileOff;
    goto LABEL_10;
  }
}

uint64_t TileCell.baseIconViewConfiguration()@<X0>(uint64_t a1@<X8>)
{
  MEMORY[0x20F31D5B0](v26);
  if (v26[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
    if (swift_dynamicCast())
    {
      CGSizeMake(__dst);
    }

    else
    {
      sub_20D009538(__src);
      memcpy(__dst, __src, sizeof(__dst));
    }
  }

  else
  {
    sub_20CEF928C(v26, &qword_27C81C790);
    sub_20D009538(__dst);
  }

  memcpy(__src, __dst, sizeof(__src));
  if (sub_20D009584(__src) == 1)
  {
    memcpy(v26, __dst, sizeof(v26));
    result = sub_20CEF928C(v26, &qword_27C81F3C8);
LABEL_9:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v23 = *&__dst[49];
  v24 = *&__dst[51];
  v25 = __dst[53];
  v19 = *&__dst[41];
  v20 = *&__dst[43];
  v21 = *&__dst[45];
  v22 = *&__dst[47];
  v17 = *&__dst[37];
  v18 = *&__dst[39];
  memcpy(v26, __dst, sizeof(v26));
  sub_20CEF9178(&v17, v15, &qword_27C81F350);
  sub_20CEF928C(v26, &qword_27C81F3C8);
  v33 = v23;
  v34 = v24;
  v35 = v25;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v27 = v17;
  v28 = v18;
  result = sub_20CFF743C(&v27);
  if (result == 1)
  {
    goto LABEL_9;
  }

  v3 = type metadata accessor for BaseIconView.__Configuration();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___HUBaseIconViewConfiguration_configuration];
  *v5 = v27;
  v6 = v32;
  v7 = v33;
  v8 = v34;
  *(v5 + 16) = v35;
  *(v5 + 6) = v7;
  *(v5 + 7) = v8;
  *(v5 + 5) = v6;
  v9 = v28;
  v10 = v29;
  v11 = v31;
  *(v5 + 3) = v30;
  *(v5 + 4) = v11;
  *(v5 + 1) = v9;
  *(v5 + 2) = v10;
  v15[6] = v23;
  v15[7] = v24;
  v16 = v25;
  v15[2] = v19;
  v15[3] = v20;
  v15[4] = v21;
  v15[5] = v22;
  v15[0] = v17;
  v15[1] = v18;
  sub_20CFDAFC8(v15, v14);
  v13.receiver = v4;
  v13.super_class = v3;
  v12 = objc_msgSendSuper2(&v13, sel_init);
  *(a1 + 24) = v3;
  result = sub_20CEF928C(&v17, &qword_27C81F350);
  *a1 = v12;
  return result;
}

void UIBackgroundConfiguration.TileCellBackgroundBuilder.build(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_20D5661A8();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v7 = sub_20D566068();
  v8 = [v7 preferredContentSizeCategory];

  sub_20D568168();
  sub_20D566138();
  sub_20D00C12C(a2);

  sub_20D00C37C();
}

uint64_t sub_20D00C12C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20D5661A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D566128();
  v8 = v1[5];
  switch(v8)
  {
    case 0:
      goto LABEL_8;
    case 2:
      (*(v5 + 8))(a1, v4);
      sub_20D566198();
      v13 = v1[3];
      v14 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      LOBYTE(v13) = UIConfigurationState.isActive.getter(v13, v14);
      v11 = objc_opt_self();
      v12 = &selRef_whiteColor;
      if ((v13 & 1) == 0)
      {
        v12 = &selRef_systemGray5Color;
      }

      goto LABEL_11;
    case 1:
      (*(v5 + 32))(v7, a1, v4);
      sub_20D00C4F0(v7, a1);
      (*(v5 + 8))(v7, v4);
      if ([objc_opt_self() isAMac])
      {
        v9 = v1[3];
        v10 = v2[4];
        __swift_project_boxed_opaque_existential_1(v2, v2[3]);
        LOBYTE(v9) = UIConfigurationState.isActive.getter(v9, v10);
        v11 = objc_opt_self();
        v12 = &selRef_whiteColor;
        if ((v9 & 1) == 0)
        {
          v12 = &selRef_clearColor;
        }

LABEL_11:
        v15 = [v11 *v12];
        sub_20D566158();
      }

      break;
    default:
LABEL_8:
      (*(v5 + 8))(a1, v4);
      sub_20D566178();
      break;
  }

  return sub_20D566138();
}

void sub_20D00C37C()
{
  v1 = v0[6];
  if (!v1)
  {
    goto LABEL_14;
  }

  if (v1 != 2)
  {
    if (v1 != 1)
    {
LABEL_15:
      UIBackgroundConfiguration.removeDashedBorder()();
      return;
    }

    v2 = [objc_opt_self() lightGrayColor];
LABEL_14:
    sub_20D566108();
    sub_20D566118();
    goto LABEL_15;
  }

  UIBackgroundConfiguration.addDashedBorderIfNeeded()();
  v3 = sub_20D5660E8();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  type metadata accessor for TileCellDashedBorderView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_8:
    v6 = sub_20D00CD50();
    if (!v6)
    {
      return;
    }

    v5 = v6;
  }

  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v7 = sub_20D566068();
  v8 = [v7 preferredContentSizeCategory];

  LOBYTE(v7) = sub_20D568168();
  if (v7)
  {
    v9 = 30.0;
  }

  else
  {
    v9 = 24.0;
  }

  v10 = OBJC_IVAR____TtC6HomeUI24TileCellDashedBorderView_cornerRadius;
  swift_beginAccess();
  *&v5[v10] = v9;
  [v5 setNeedsLayout];
}

uint64_t sub_20D00C4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_20D5661A8();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isAMac])
  {
    v9 = *(v2 + 24);
    v10 = *(v3 + 32);
    __swift_project_boxed_opaque_existential_1(v3, *(v3 + 24));
    v11 = UIConfigurationState.isActive.getter(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v12);
  v14 = UIConfigurationState.isActive.getter(v12, v13);
  v15 = HUSharedVisualEffectIdentifierTileOn;
  if ((v14 & 1) == 0)
  {
    v15 = HUSharedVisualEffectIdentifierTileOff;
  }

  v16 = *v15;
  v17 = sub_20D5660E8();
  if (v17)
  {
    v18 = v17;
    type metadata accessor for TileCellBackgroundView();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;
      sub_20CFFE02C(v16, *(v3 + 64), *(v3 + 72));
      [v20 setHidden_];

      v21 = *(v29 + 16);

      return v21(a2, a1, v6);
    }
  }

  sub_20D566178();
  if ((v11 & 1) == 0)
  {
    v23 = *(v3 + 72);
    v24 = objc_allocWithZone(type metadata accessor for TileCellBackgroundView());
    v25 = v16;
    v26 = [v24 initWithFrame_];
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    v28 = v26;
    sub_20CFFE02C(v25, Strong, v23);

    swift_unknownObjectRelease();
    sub_20D5660F8();
  }

  return (*(v29 + 32))(a2, v8, v6);
}

Swift::Void __swiftcall UIBackgroundConfiguration.addDashedBorderIfNeeded()()
{
  v0 = sub_20D5660E8();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for TileCellDashedBorderView();
    v2 = swift_dynamicCastClass();

    if (v2)
    {
      return;
    }
  }

  v3 = sub_20D00CD50();
  if (v3)
  {
    goto LABEL_4;
  }

  sub_20D566128();
  v5 = v4;
  v6 = objc_allocWithZone(type metadata accessor for TileCellDashedBorderView());
  v7 = TileCellDashedBorderView.init(frame:cornerRadius:)(0.0, 0.0, 0.0, 0.0, v5);
  v8 = sub_20D5660E8();
  if (v8)
  {
    v9 = v8;
    type metadata accessor for TileCellBackgroundView();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR___HUTileCellBackgroundView_dashedBorderView;
      swift_beginAccess();
      v13 = *(v11 + v12);
      *(v11 + v12) = v7;
      v14 = v7;
      sub_20CFFCFF4(v13);

      return;
    }
  }

  v15 = sub_20D5660E8();
  if (v15)
  {
    v16 = v15;
    v32 = v7;
    [v16 addSubview_];
    [v32 setTranslatesAutoresizingMaskIntoConstraints_];
    v17 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_20D5BC4C0;
    v19 = [v32 leadingAnchor];
    v20 = [v16 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    *(v18 + 32) = v21;
    v22 = [v32 trailingAnchor];

    v23 = [v16 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    *(v18 + 40) = v24;
    v25 = [v32 topAnchor];

    v26 = [v16 topAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    *(v18 + 48) = v27;
    v28 = [v32 bottomAnchor];

    v29 = [v16 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor_];

    *(v18 + 56) = v30;
    sub_20CECF940(0, &qword_28111FEC0);
    v31 = sub_20D567A58();

    [v17 activateConstraints_];

    v3 = v32;
LABEL_4:

    return;
  }

  sub_20D5660F8();
}

Swift::Void __swiftcall UIBackgroundConfiguration.removeDashedBorder()()
{
  v0 = sub_20D5660E8();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for TileCellDashedBorderView();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      goto LABEL_5;
    }
  }

  v2 = sub_20D00CD50();
  if (!v2)
  {
    return;
  }

LABEL_5:
  v14 = v2;
  v3 = sub_20D5660E8();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TileCellBackgroundView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = OBJC_IVAR___HUTileCellBackgroundView_dashedBorderView;
      swift_beginAccess();
      v8 = *(v6 + v7);
      *(v6 + v7) = 0;
      sub_20CFFCFF4(v8);

      return;
    }
  }

  v9 = sub_20D5660E8();
  if (v9 && (v10 = v9, sub_20CECF940(0, &qword_28111FB70), v13 = v14, v11 = sub_20D5683F8(), v13, v10, (v11 & 1) != 0))
  {
    sub_20D5660F8();
    v12 = v13;
  }

  else
  {
    [v14 removeFromSuperview];
    v12 = v14;
  }
}

void *sub_20D00CD50()
{
  result = sub_20D5660E8();
  if (result)
  {
    v1 = result;
    v2 = [result subviews];

    sub_20CECF940(0, &qword_28111FB70);
    v3 = sub_20D567A78();

    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x20F31DD20](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        type metadata accessor for TileCellDashedBorderView();
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          v10 = v9;

          return v10;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    return 0;
  }

  return result;
}

uint64_t sub_20D00CEA0(uint64_t a1, int a2)
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

uint64_t sub_20D00CEE8(uint64_t result, int a2, int a3)
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

__n128 sub_20D00CF4C@<Q0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 secondaryLabelColor];
  if (qword_281120498 != -1)
  {
    v22 = v3;
    swift_once();
    v3 = v22;
  }

  v4 = qword_2811204A8;
  *a1 = 0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 1;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v5 = v4;
  v6 = [v2 secondaryLabelColor];
  if (qword_281120480 != -1)
  {
    v23 = v6;
    swift_once();
    v6 = v23;
  }

  v7 = qword_281120490;
  *(a1 + 72) = 0;
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v8 = v7;
  v9 = [v2 tertiaryLabelColor];
  v10 = qword_2811204A8;
  *(a1 + 144) = 0;
  *(a1 + 152) = v9;
  *(a1 + 160) = v10;
  *(a1 + 168) = 1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20D5BA040;
  v12 = v10;
  *(v11 + 32) = [v2 whiteColor];
  v13 = [objc_opt_self() systemFontOfSize_];
  v14 = [v2 blackColor];
  v15 = [v14 CGColor];

  *(a1 + 216) = v11;
  *(a1 + 224) = v13;
  *(a1 + 232) = v15;
  *(a1 + 240) = 1050253722;
  *(a1 + 248) = xmmword_20D5C47D0;
  *(a1 + 264) = 0x4024000000000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0u;
  sub_20CFDAF0C(v24);
  v16 = v24[7];
  *(a1 + 392) = v24[6];
  *(a1 + 408) = v16;
  *(a1 + 424) = v25;
  v17 = v24[3];
  *(a1 + 328) = v24[2];
  *(a1 + 344) = v17;
  v18 = v24[5];
  *(a1 + 360) = v24[4];
  *(a1 + 376) = v18;
  v19 = v24[1];
  *(a1 + 296) = v24[0];
  *(a1 + 312) = v19;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0x4024000000000000;
  *(a1 + 456) = 0u;
  result = *MEMORY[0x277D768C8];
  v21 = *(MEMORY[0x277D768C8] + 16);
  *(a1 + 472) = *MEMORY[0x277D768C8];
  *(a1 + 488) = v21;
  return result;
}

id TileCellContentConfiguration.updated(for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, v2, 0x1F8uLL);
  v5 = __dst[19];
  v6 = __dst[10];
  v7 = __dst[1];
  memcpy(__src, v2, sizeof(__src));
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_20CFFCAE4(__dst, v46);
  if (UIConfigurationState.isActive.getter(v8, v9))
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.75];

    __src[1] = v10;
    v11 = [objc_opt_self() blackColor];

    __src[10] = v11;
    v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.6];
  }

  else
  {
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v15 = UIConfigurationState.backgroundDisplayStyle.getter(v13, v14);
    if ((v16 & 1) != 0 || v15 != 1)
    {
      v19 = objc_opt_self();
      v20 = [v19 secondaryLabelColor];

      __src[1] = v20;
      v21 = [v19 secondaryLabelColor];

      __src[10] = v21;
      v12 = [v19 tertiaryLabelColor];
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.75];

      __src[1] = v17;
      v18 = [objc_opt_self() whiteColor];

      __src[10] = v18;
      v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.6];
    }
  }

  v22 = v12;

  __src[19] = v22;
  v23 = qword_281120470;
  if (!qword_281120470)
  {
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v23;
  v25 = sub_20D566068();
  v26 = [v25 preferredContentSizeCategory];

  v27 = sub_20D567838();
  v29 = v28;
  if (v27 == sub_20D567838() && v29 == v30)
  {

LABEL_20:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v43 = sub_20D566068();
    v44 = [v43 preferredContentSizeCategory];

    v45 = qword_281120470;
    qword_281120470 = v44;

    sub_20D00E9B0(a1);
    return memcpy(a2, __src, 0x1F8uLL);
  }

  v31 = sub_20D568BF8();

  if (v31)
  {

    goto LABEL_20;
  }

  if (qword_281120498 != -1)
  {
    swift_once();
  }

  v32 = objc_opt_self();
  v33 = *MEMORY[0x277D769D0];
  result = [v32 _preferredFontForTextStyle_weight_];
  if (result)
  {
    v35 = qword_2811204A8;
    qword_2811204A8 = result;

    if (qword_281120480 != -1)
    {
      swift_once();
    }

    result = [v32 _preferredFontForTextStyle_weight_];
    if (result)
    {
      v36 = __dst[20];
      v37 = __dst[11];
      v38 = __dst[2];
      v39 = qword_281120490;
      qword_281120490 = result;

      v40 = qword_2811204A8;
      __src[2] = v40;
      v41 = qword_281120490;

      __src[11] = v41;
      v42 = qword_2811204A8;

      __src[20] = v42;
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *TileCellContentConfiguration.layout.setter(uint64_t a1)
{
  v1[36] = a1;
  memcpy(__dst, v1, sizeof(__dst));
  TileCellContentConfiguration.updateIconViewForLayout()(__src);
  memcpy(v4, __dst, sizeof(v4));
  sub_20CEFFA00(v4);
  return memcpy(v1, __src, 0x1F8uLL);
}

uint64_t TileCellContentConfiguration.updateIconViewForLayout()@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x1F8uLL);
  memcpy(__src, v1, sizeof(__src));
  if (LOBYTE(__dst[4]) == 1 && LOBYTE(__dst[13]) == 1)
  {
    v3 = LOBYTE(__dst[22]);
  }

  else
  {
    v3 = 0;
  }

  if (__dst[36] <= 1)
  {
    if (__dst[36])
    {
      if (__dst[36] == 1)
      {
        v3 = 2;
        goto LABEL_12;
      }

LABEL_15:
      sub_20CFFCAE4(__dst, v59);
      result = sub_20D568C38();
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  if (__dst[36] == 2)
  {
LABEL_10:
    v3 = 1;
    goto LABEL_12;
  }

  if (__dst[36] != 3)
  {
    goto LABEL_15;
  }

LABEL_12:
  v4 = *(v1 + 376);
  v5 = *(v1 + 408);
  v48 = *(v1 + 392);
  v49 = v5;
  v6 = *(v1 + 312);
  v7 = *(v1 + 344);
  v44 = *(v1 + 328);
  v45 = v7;
  v9 = *(v1 + 344);
  v8 = *(v1 + 360);
  v10 = v8;
  v47 = *(v1 + 376);
  v46 = v8;
  v11 = *(v1 + 296);
  v12 = v11;
  v43[1] = *(v1 + 312);
  v43[0] = v11;
  v13 = *(v1 + 408);
  v56 = v48;
  v57 = v13;
  *v53 = v44;
  *&v53[16] = v9;
  v55 = v4;
  v54 = v10;
  v50 = *(v1 + 424);
  v58 = *(v1 + 424);
  v52 = v6;
  v51 = v12;
  if (sub_20CFF743C(&v51) == 1)
  {
    memcpy(a1, v1, 0x1F8uLL);
    return sub_20CFFCAE4(__dst, v59);
  }

  else
  {
    v15 = v52;
    v22[0] = *v53;
    *(v22 + 10) = *&v53[10];
    v42[6] = v56;
    v42[7] = v57;
    *&v42[8] = v58;
    v42[2] = *v53;
    v42[3] = *&v53[16];
    v42[5] = v55;
    v42[4] = v54;
    v42[1] = v52;
    v42[0] = v51;
    *&v23 = v52;
    *(&v23 + 1) = v3;
    v24[0] = *v53;
    *(v24 + 10) = *&v53[10];
    v20 = v23;
    v21[0] = v24[0];
    *(v21 + 10) = *&v53[10];
    sub_20CFFCAE4(__dst, v59);
    sub_20CEF9178(v43, v59, &qword_27C81F350);
    sub_20CFD7ED4(&v52, v59);
    sub_20CFD7ED4(&v23, v59);
    BaseIconView.Configuration.updated(with:)(&v20, v29);
    v25 = v20;
    v26[0] = v21[0];
    *(v26 + 10) = *(v21 + 10);
    sub_20CFDAF98(&v25);
    v27[0] = v15;
    v27[1] = v3;
    v28[0] = v22[0];
    *(v28 + 10) = *(v22 + 10);
    sub_20CFDAF98(v27);
    sub_20CEF928C(v43, &qword_27C81F350);
    v37 = v29[6];
    v38 = v29[7];
    v39 = v30;
    v33 = v29[2];
    v34 = v29[3];
    v35 = v29[4];
    v36 = v29[5];
    v31 = v29[0];
    v32 = v29[1];
    CGSizeMake(&v31);
    v16 = *(v1 + 408);
    v40[6] = *(v1 + 392);
    v40[7] = v16;
    v41 = *(v1 + 424);
    v17 = *(v1 + 328);
    v40[3] = *(v1 + 344);
    v18 = *(v1 + 360);
    v40[5] = *(v1 + 376);
    v40[4] = v18;
    v19 = *(v1 + 296);
    v40[1] = *(v1 + 312);
    v40[2] = v17;
    v40[0] = v19;
    sub_20CEF928C(v40, &qword_27C81F350);
    *&__src[49] = v37;
    *&__src[51] = v38;
    *&__src[41] = v33;
    *&__src[43] = v34;
    *&__src[45] = v35;
    *&__src[47] = v36;
    *&__src[37] = v31;
    *&__src[39] = v32;
    __src[53] = v39;
    memcpy(v42, __src, 0x1F8uLL);
    memcpy(a1, __src, 0x1F8uLL);
    memcpy(v59, __src, sizeof(v59));
    sub_20CFFCAE4(v42, &v20);
    return sub_20CEFFA00(v59);
  }
}

uint64_t TileCellContentConfiguration.updated(for:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(a2, v3, 0x1F8uLL);
  sub_20CFFCAE4(__dst, &v7);
  sub_20D00F608(a1);
  return sub_20D00FC50(a1);
}

uint64_t sub_20D00DBB4(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_20D0123B4();
  v10 = result;
  v11 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      __dst[0] = 46;
      __dst[1] = 0xE100000000000000;
      sub_20D5663C8();
      MEMORY[0x20F31CDB0](v7, v8);

      MEMORY[0x20F31CDB0](__dst[0], __dst[1]);

      v6 += 2;
      --v5;
    }

    while (v5);
    return v10;
  }

  return result;
}

id sub_20D00DC9C(uint64_t a1, double *a2, void *a3)
{
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TileCellContentConfiguration.prefix.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_20D012698(v8, v7);
}

__n128 TileCellContentConfiguration.prefix.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_20D0126D0(v7);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t TileCellContentConfiguration.title.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v9 = *(v1 + 104);
  v10 = v3;
  v11 = *(v1 + 136);
  v4 = v11;
  v8[0] = *(v1 + 72);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_20D012698(v8, v7);
}

__n128 TileCellContentConfiguration.title.setter(__int128 *a1)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 120);
  v8[2] = *(v1 + 104);
  v8[3] = v4;
  v9 = *(v1 + 136);
  v8[0] = *(v1 + 72);
  v8[1] = v3;
  sub_20D0126D0(v8);
  v5 = *a1;
  *(v1 + 88) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 104) = result;
  *(v1 + 120) = v7;
  *(v1 + 136) = *(a1 + 64);
  *(v1 + 72) = v5;
  return result;
}

uint64_t TileCellContentConfiguration.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v9 = *(v1 + 176);
  v10 = v2;
  v11 = *(v1 + 208);
  v3 = v11;
  v4 = *(v1 + 160);
  v8[0] = *(v1 + 144);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_20D012698(v8, v7);
}

__n128 TileCellContentConfiguration.description.setter(uint64_t a1)
{
  v3 = *(v1 + 192);
  v7[2] = *(v1 + 176);
  v7[3] = v3;
  v8 = *(v1 + 208);
  v4 = *(v1 + 160);
  v7[0] = *(v1 + 144);
  v7[1] = v4;
  sub_20D0126D0(v7);
  v5 = *(a1 + 48);
  *(v1 + 176) = *(a1 + 32);
  *(v1 + 192) = v5;
  *(v1 + 208) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = result;
  return result;
}

uint64_t TileCellContentConfiguration.Label.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  if (*v0)
  {
    sub_20D568D68();
    v5 = v1;
    sub_20D568408();
  }

  else
  {
    sub_20D568D68();
  }

  sub_20D568408();
  sub_20D568408();
  MEMORY[0x20F31E200](v2);
  sub_20D568D68();
  sub_20D568D68();
  if (v4)
  {
    sub_20D568D68();
  }

  else
  {
    sub_20D568D68();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x20F31E230](v6);
  }

  sub_20D568D68();
  if (v9)
  {
    return sub_20D568D68();
  }

  sub_20D568D68();
  return MEMORY[0x20F31E200](v8);
}

uint64_t TileCellContentConfiguration.Label.hashValue.getter()
{
  sub_20D568D48();
  TileCellContentConfiguration.Label.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20D00E0FC()
{
  sub_20D568D48();
  TileCellContentConfiguration.Label.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20D00E140()
{
  sub_20D568D48();
  TileCellContentConfiguration.Label.hash(into:)();
  return sub_20D568D98();
}

uint64_t TileCellContentConfiguration.glyph.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 232);
  v7[0] = *(v1 + 216);
  v7[1] = v2;
  v8[0] = *(v1 + 248);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 257);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_20D013178(v7, &v6);
}

__n128 TileCellContentConfiguration.glyph.setter(uint64_t a1)
{
  v3 = *(v1 + 232);
  v6[0] = *(v1 + 216);
  v6[1] = v3;
  v7[0] = *(v1 + 248);
  *(v7 + 9) = *(v1 + 257);
  sub_20D0131B0(v6);
  v4 = *(a1 + 16);
  *(v1 + 216) = *a1;
  *(v1 + 232) = v4;
  *(v1 + 248) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 257) = result;
  return result;
}

uint64_t TileCellContentConfiguration.Glyph.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  sub_20CF598CC(a1, *v1);
  sub_20D568408();
  type metadata accessor for CGColor(0);
  sub_20D01400C(&unk_27C81F448, 255, type metadata accessor for CGColor);
  sub_20D5648D8();
  sub_20D568D78();
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x20F31E230](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x20F31E230](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x20F31E230](*&v7);
  return sub_20D568D68();
}

uint64_t TileCellContentConfiguration.Glyph.hashValue.getter()
{
  sub_20D568D48();
  TileCellContentConfiguration.Glyph.hash(into:)(v1);
  return sub_20D568D98();
}

uint64_t sub_20D00E3C0()
{
  sub_20D568D48();
  TileCellContentConfiguration.Glyph.hash(into:)(v1);
  return sub_20D568D98();
}

uint64_t sub_20D00E404()
{
  sub_20D568D48();
  TileCellContentConfiguration.Glyph.hash(into:)(v1);
  return sub_20D568D98();
}

uint64_t TileCellContentConfiguration.hasVisibleLabels.getter()
{
  if (v0[32] == 1)
  {
    return ((v0[104] & v0[176]) ^ 1) & 1;
  }

  else
  {
    return 1;
  }
}

id TileCellContentConfiguration.activityIndicatorColor.getter()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    v2 = *(v0 + 280);
  }

  else
  {
    v2 = *(v0 + 152);
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

void (*TileCellContentConfiguration.activityIndicatorColor.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 280);
  if (v3)
  {
    v4 = *(v1 + 280);
  }

  else
  {
    v4 = *(v1 + 152);
    v3 = 0;
  }

  a1[2] = v3;
  *a1 = v4;
  v5 = v3;
  return sub_20D00E580;
}

void sub_20D00E580(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *(v2 + 280) = v5;
  }

  else
  {

    *(v2 + 280) = v4;
  }
}

void (*TileCellContentConfiguration.layout.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x200uLL);
  }

  *a1 = v3;
  *(v3 + 504) = v1;
  return sub_20D00E664;
}

void sub_20D00E664(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = v2[63];
    memcpy(__dst, v3, sizeof(__dst));
    TileCellContentConfiguration.updateIconViewForLayout()(v4);
    memcpy(v2, __dst, 0x1F8uLL);
    sub_20CEFFA00(v2);
    memcpy(v3, v4, 0x1F8uLL);
  }

  free(v2);
}

uint64_t TileCellContentConfiguration.iconViewConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 408);
  v20 = *(v1 + 392);
  v21 = v3;
  v4 = *(v1 + 312);
  v5 = *(v1 + 344);
  v16 = *(v1 + 328);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 344);
  v8 = *(v1 + 376);
  v18 = *(v1 + 360);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 312);
  v15[0] = *(v1 + 296);
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 408);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 424);
  *(a1 + 128) = *(v1 + 424);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_20CEF9178(v15, v14, &qword_27C81F350);
}

__n128 TileCellContentConfiguration.iconViewConfiguration.setter(uint64_t a1)
{
  v12 = *(v1 + 424);
  v3 = *(v1 + 408);
  v11[6] = *(v1 + 392);
  v11[7] = v3;
  v4 = *(v1 + 344);
  v11[2] = *(v1 + 328);
  v11[3] = v4;
  v5 = *(v1 + 376);
  v11[4] = *(v1 + 360);
  v11[5] = v5;
  v6 = *(v1 + 312);
  v11[0] = *(v1 + 296);
  v11[1] = v6;
  sub_20CEF928C(v11, &qword_27C81F350);
  v7 = *(a1 + 112);
  *(v1 + 392) = *(a1 + 96);
  *(v1 + 408) = v7;
  *(v1 + 424) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v1 + 328) = *(a1 + 32);
  *(v1 + 344) = v8;
  v9 = *(a1 + 80);
  *(v1 + 360) = *(a1 + 64);
  *(v1 + 376) = v9;
  result = *(a1 + 16);
  *(v1 + 296) = *a1;
  *(v1 + 312) = result;
  return result;
}

void *TileCellContentConfiguration.iconViewBackground.getter()
{
  v1 = *(v0 + 432);
  v2 = v1;
  return v1;
}

__n128 TileCellContentConfiguration.labelInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 456);
  *a1 = *(v1 + 440);
  *(a1 + 16) = v2;
  result = *(v1 + 472);
  v4 = *(v1 + 488);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 TileCellContentConfiguration.labelInsets.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 440) = *a1;
  *(v1 + 456) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 472) = result;
  *(v1 + 488) = v4;
  return result;
}

char *TileCellContentConfiguration.makeContentView()()
{
  memcpy(__dst, v0, 0x1F8uLL);
  v1 = objc_allocWithZone(type metadata accessor for TileCellContentView());
  sub_20CFFCAE4(__dst, v4);
  v2 = sub_20D012700(__dst, v1);
  sub_20D01400C(&qword_2811207D0, 255, type metadata accessor for TileCellContentView);
  return v2;
}

uint64_t sub_20D00E9B0(uint64_t a1)
{
  v3 = v1 + 296;
  v4 = *(v1 + 376);
  v5 = *(v1 + 408);
  v200 = *(v1 + 392);
  v201 = v5;
  v6 = *(v1 + 312);
  v7 = *(v1 + 344);
  v196 = *(v1 + 328);
  v197 = v7;
  v8 = *(v1 + 344);
  v9 = *(v1 + 376);
  v198 = *(v1 + 360);
  v199 = v9;
  v10 = *(v1 + 312);
  v195[0] = *(v1 + 296);
  v195[1] = v10;
  v11 = *(v1 + 408);
  v208 = v200;
  v209 = v11;
  *v205 = v196;
  *&v205[16] = v8;
  v206 = v198;
  v207 = v4;
  v202 = *(v1 + 424);
  v210 = *(v1 + 424);
  v203 = v195[0];
  v204 = v6;
  result = sub_20CFF743C(&v203);
  if (result != 1)
  {
    v87 = v1;
    v192 = *v205;
    v193 = *&v205[16];
    v194 = v206;
    v190 = v203;
    v191 = v204;
    v103 = v207;
    v95 = v209;
    v97 = *(&v208 + 1);
    v100 = *(&v209 + 1);
    v91 = a1;
    v92 = v210;
    v188 = v204;
    *v189 = *v205;
    *&v189[10] = *&v205[10];
    v186 = *(&v204 + 3);
    v187 = BYTE7(v204);
    v13 = *(&v204 + 1);
    v110 = *v205;
    v106 = v208;
    v108 = *&v189[8];
    v185 = *&v205[24];
    v184 = *&v205[16];
    sub_20CECF7A0(a1, &v166);
    v14 = *(&v167 + 1);
    v15 = v168;
    __swift_project_boxed_opaque_existential_1(&v166, *(&v167 + 1));
    sub_20CEF9178(v195, &v175, &qword_27C81F350);
    sub_20CFD7ED4(&v188, &v175);
    v16 = UIConfigurationState.isActive.getter(v14, v15) & 1;
    v17 = *(&v167 + 1);
    v18 = v168;
    __swift_project_boxed_opaque_existential_1(&v166, *(&v167 + 1));
    v19 = UIConfigurationState.isDisabled.getter(v17, v18) & 1;
    v20 = *(&v167 + 1);
    v21 = v168;
    __swift_project_boxed_opaque_existential_1(&v166, *(&v167 + 1));
    v22 = UIConfigurationState.isToggleable.getter(v20, v21) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v166);
    v99 = v16;
    if (v13 == 3)
    {
      v123 = v192;
      v124 = v193;
      v125 = v194;
      v126 = v103;
      *&v127 = v106;
      *(&v127 + 1) = v97;
      *&v128 = v95;
      *(&v128 + 1) = v100;
      v181 = v127;
      v182 = v128;
      v121 = v190;
      v122 = v191;
      v129 = v92;
      v183 = v92;
      v177 = v192;
      v178 = v193;
      v179 = v194;
      v180 = v103;
      v175 = v190;
      v176 = v191;
      LOBYTE(v162) = v16;
      BYTE1(v162) = v19;
      BYTE2(v162) = v22;
      *(&v162 + 3) = v186;
      BYTE7(v162) = v187;
      *(&v162 + 1) = 3;
      *v163 = v110;
      *&v163[8] = v108;
      *&v163[16] = v184;
      *&v163[24] = v185;
      v154 = v162;
      v155[0] = *v163;
      *(v155 + 10) = *&v163[10];
      sub_20CFDAFC8(&v121, &v166);
      sub_20CFD7ED4(&v162, &v166);
      BaseIconView.Configuration.updated(with:)(&v154, &v145);
      v164 = v154;
      v165[0] = v155[0];
      *(v165 + 10) = *(v155 + 10);
      sub_20CFDAF98(&v164);
      v135 = v181;
      v136 = v182;
      v137 = v183;
      *&v131[16] = v177;
      v132 = v178;
      v133 = v179;
      v134 = v180;
      v130 = v175;
      *v131 = v176;
      sub_20CFF7478(&v130);
      v159 = v151;
      v160 = v152;
      v161 = v153;
      v155[1] = v147;
      v156 = v148;
      v157 = v149;
      v158 = v150;
      v154 = v145;
      v155[0] = v146;
      CGSizeMake(&v154);
      v23 = *(v3 + 112);
      v172 = *(v3 + 96);
      v173 = v23;
      v174 = *(v3 + 128);
      v24 = *(v3 + 48);
      v168 = *(v3 + 32);
      v169 = v24;
      v25 = *(v3 + 80);
      v170 = *(v3 + 64);
      v171 = v25;
      v26 = *(v3 + 16);
      v166 = *v3;
      v167 = v26;
      sub_20CEF928C(&v166, &qword_27C81F350);
      v27 = v160;
      *(v3 + 96) = v159;
      *(v3 + 112) = v27;
      *(v3 + 128) = v161;
      v28 = v156;
      *(v3 + 32) = v155[1];
      *(v3 + 48) = v28;
      v29 = v158;
      *(v3 + 64) = v157;
      *(v3 + 80) = v29;
      v30 = v155[0];
      *v3 = v154;
      *(v3 + 16) = v30;
      LOBYTE(v112) = v16;
      BYTE1(v112) = v19;
      BYTE2(v112) = v22;
      *(&v112 + 3) = v186;
      BYTE7(v112) = v187;
      *(&v112 + 1) = 3;
      *&v113 = v110;
      *(&v113 + 1) = v108;
      *&v114 = v184;
      WORD4(v114) = v185;
      sub_20CFDAF98(&v112);
      v177 = v192;
      v178 = v193;
      v179 = v194;
      v175 = v190;
      v176 = v191;
      v180 = v103;
      *&v181 = v106;
      *(&v181 + 1) = v97;
      *&v182 = v95;
      *(&v182 + 1) = v100;
      v183 = v92;
      v31 = &v175;
    }

    else
    {
      v89 = v22;
      v90 = v19;
      v32 = v91[3];
      v33 = v91[4];
      __swift_project_boxed_opaque_existential_1(v91, v32);
      v34 = UIConfigurationState.borderStyle.getter(v32, v33) != 2;
      if (((v35 | v34) & 1) == 0)
      {
        v13 = 4;
      }

      v36 = v91[3];
      v37 = v91[4];
      __swift_project_boxed_opaque_existential_1(v91, v36);
      v38 = UIConfigurationState.backgroundDisplayStyle.getter(v36, v37);
      v88 = v13;
      v39 = v108;
      if (v40)
      {
        v41 = v19;
        v42 = v100;
        v43 = v95;
        v45 = *(&v103 + 1);
        v44 = v106;
      }

      else
      {
        v41 = v19;
        v42 = v100;
        v43 = v95;
        v45 = *(&v103 + 1);
        v44 = v106;
        if (!v38)
        {
          v46 = *&v189[8];
          v39 = [objc_opt_self() systemGrayColor];

          v41 = v90;
          v13 = v88;
        }
      }

      v155[1] = v192;
      v156 = v193;
      v157 = v194;
      v154 = v190;
      v155[0] = v191;
      *&v158 = v103;
      *(&v158 + 1) = v45;
      *&v159 = v44;
      *(&v159 + 1) = v97;
      *&v160 = v43;
      *(&v160 + 1) = v42;
      v161 = v92;
      v181 = v159;
      v182 = v160;
      v183 = v92;
      v177 = v192;
      v178 = v193;
      v179 = v194;
      v180 = v158;
      v175 = v190;
      v176 = v191;
      LOBYTE(v162) = v99;
      BYTE1(v162) = v41;
      BYTE2(v162) = v89;
      *(&v162 + 3) = v186;
      BYTE7(v162) = v187;
      *(&v162 + 1) = v13;
      *v163 = v110;
      v109 = v39;
      *&v163[8] = v39;
      *&v163[16] = v184;
      *&v163[24] = v185;
      v130 = v162;
      *v131 = *v163;
      *&v131[10] = *&v163[10];
      sub_20CFDAFC8(&v154, &v166);
      sub_20CFD7ED4(&v162, &v166);
      BaseIconView.Configuration.updated(with:)(&v130, &v145);
      v164 = v130;
      v165[0] = *v131;
      *(v165 + 10) = *&v131[10];
      sub_20CFDAF98(&v164);
      v172 = v181;
      v173 = v182;
      v174 = v183;
      v168 = v177;
      v169 = v178;
      v170 = v179;
      v171 = v180;
      v166 = v175;
      v167 = v176;
      sub_20CFF7478(&v166);
      v47 = v150;
      v48 = v43;
      v49 = *(&v150 + 1);
      v96 = *(&v151 + 1);
      v50 = v151;
      v51 = v152;
      v52 = v153;
      v177 = v192;
      v178 = v193;
      v179 = v194;
      v175 = v190;
      v176 = v191;
      v180 = v103;
      *&v181 = v106;
      *(&v181 + 1) = v97;
      *&v182 = v48;
      *(&v182 + 1) = v100;
      v183 = v92;
      v53 = *(&v152 + 1);
      sub_20CFF7478(&v175);
      v192 = v147;
      v193 = v148;
      v194 = v149;
      v190 = v145;
      v191 = v146;
      if ((v53 & 0x8000000000000000) != 0)
      {
        v111 = v50 & 1;
        v55 = v47;
        v56 = v53;
        v57 = v91[3];
        v93 = v91[4];
        __swift_project_boxed_opaque_existential_1(v91, v57);
        v107 = v55;
        *&v145 = v55;
        *(&v145 + 1) = v49;
        v98 = v50;
        v146 = __PAIR128__(v96, v50);
        v101 = v56;
        v104 = v52;
        *&v147 = v51;
        *(&v147 + 1) = v56 & 0x7FFFFFFFFFFFFFFFLL;
        *&v148 = v52;
        sub_20CFFCA34(&v145, &v130);
        v58 = v49;
        if (UIConfigurationState.isToggleable.getter(v57, v93))
        {
          v59 = v91[3];
          v60 = v91[4];
          __swift_project_boxed_opaque_existential_1(v91, v59);
          v58 = v49;
          if ((UIConfigurationState.isActive.getter(v59, v60) & 1) == 0)
          {
            v61 = *(v87 + 432);
            v58 = v49;
            if (v61)
            {
              v62 = v61;

              v111 = 1;
              v58 = v61;
            }

            v63 = v91[3];
            v64 = v91[4];
            __swift_project_boxed_opaque_existential_1(v91, v63);
            v65 = UIConfigurationState.backgroundDisplayStyle.getter(v63, v64);
            if ((v66 & 1) == 0 && v65 == 2)
            {
              v67 = [objc_opt_self() systemFillColor];

              v111 = 0;
              v58 = v67;
            }
          }
        }

        v94 = v49;
        v68 = v91[3];
        v69 = v91[4];
        __swift_project_boxed_opaque_existential_1(v91, v68);
        LOBYTE(v68) = UIConfigurationState.isActive.getter(v68, v69);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
        v70 = swift_allocObject();
        if (v68)
        {
          *(v70 + 16) = xmmword_20D5C27F0;
          v71 = objc_opt_self();
          v72 = [v71 whiteColor];
          v73 = v71;
          *(v70 + 32) = v72;
          v74 = (v70 + 40);
          v75 = &selRef_systemOrangeColor;
        }

        else
        {
          *(v70 + 16) = xmmword_20D5BA040;
          v74 = (v70 + 32);
          v73 = objc_opt_self();
          v75 = &selRef_whiteColor;
        }

        v76 = v101;
        v49 = v58;
        v77 = (v101 >> 8) & 1;
        *v74 = [v73 *v75];

        *(v87 + 216) = v70;
        if (*(v87 + 288) == 3)
        {
          v78 = [objc_opt_self() systemFontOfSize_];

          *(v87 + 224) = v78;
          v47 = v55;
          *&v121 = v55;
          *(&v121 + 1) = v58;
          LOBYTE(v122) = v111;
          v54 = v96;
          *(&v122 + 1) = v96;
          *&v123 = v51;
          WORD4(v123) = v101 & 0x100;
          v52 = v104;
          *&v124 = v104;
          v105 = v122;
          v102 = v101 & 0x100 | 0x8000000000000000;
          sub_20CFFCA34(&v121, &v130);
          sub_20CFD9DD8(v107, v94, v98, v96, v51, v76);
          *&v130 = v107;
          *(&v130 + 1) = v49;
          v131[0] = v111;
          *&v131[1] = v112;
          *&v131[4] = *(&v112 + 3);
          *&v131[8] = v96;
          *&v131[16] = v51;
          v131[24] = 0;
        }

        else
        {
          *&v121 = v55;
          *(&v121 + 1) = v58;
          LOBYTE(v122) = v111;
          *(&v122 + 1) = v96;
          *&v123 = v51;
          WORD4(v123) = v101 & 0x101;
          *&v124 = v104;
          v105 = v122;
          v102 = v101 & 0x101 | 0x8000000000000000;
          sub_20CFFCA34(&v121, &v130);
          sub_20CFD9DD8(v55, v94, v98, v96, v51, v76);
          *&v130 = v55;
          *(&v130 + 1) = v58;
          v131[0] = v111;
          v47 = v55;
          v54 = v96;
          v52 = v104;
          *&v131[1] = v112;
          *&v131[4] = *(&v112 + 3);
          *&v131[8] = v96;
          *&v131[16] = v51;
          v131[24] = v76 & 1;
        }

        v131[25] = v77;
        *&v131[26] = *v138;
        *&v131[30] = *&v138[4];
        *&v132 = v104;
        sub_20CFFCA90(&v130);
        v50 = v105;
        v53 = v102;
      }

      else
      {
        v54 = v96;
      }

      v114 = v192;
      v115 = v193;
      v116 = v194;
      v112 = v190;
      v113 = v191;
      *&v117 = v47;
      *(&v117 + 1) = v49;
      *&v118 = v50;
      *(&v118 + 1) = v54;
      *&v119 = v51;
      *(&v119 + 1) = v53;
      v120 = v52;
      v129 = v52;
      v123 = v192;
      v124 = v193;
      v121 = v190;
      v122 = v191;
      v125 = v194;
      v126 = v117;
      v127 = v118;
      v128 = v119;
      CGSizeMake(&v121);
      v79 = *(v3 + 112);
      v135 = *(v3 + 96);
      v136 = v79;
      v137 = *(v3 + 128);
      v80 = *(v3 + 48);
      *&v131[16] = *(v3 + 32);
      v132 = v80;
      v81 = *(v3 + 80);
      v133 = *(v3 + 64);
      v134 = v81;
      v82 = *(v3 + 16);
      v130 = *v3;
      *v131 = v82;
      sub_20CFDAFC8(&v112, &v145);
      sub_20CEF928C(&v130, &qword_27C81F350);
      v83 = v128;
      *(v3 + 96) = v127;
      *(v3 + 112) = v83;
      *(v3 + 128) = v129;
      v84 = v124;
      *(v3 + 32) = v123;
      *(v3 + 48) = v84;
      v85 = v126;
      *(v3 + 64) = v125;
      *(v3 + 80) = v85;
      v86 = v122;
      *v3 = v121;
      *(v3 + 16) = v86;
      v138[0] = v99;
      v138[1] = v90;
      v138[2] = v89;
      *&v138[3] = v186;
      v139 = v187;
      v140 = v88;
      v141 = v110;
      v142 = v109;
      v143 = v184;
      v144 = v185;
      sub_20CFDAF98(v138);
      v147 = v192;
      v148 = v193;
      v149 = v194;
      v145 = v190;
      v146 = v191;
      *&v150 = v47;
      *(&v150 + 1) = v49;
      *&v151 = v50;
      *(&v151 + 1) = v54;
      *&v152 = v51;
      *(&v152 + 1) = v53;
      v153 = v52;
      v31 = &v145;
    }

    return sub_20CFF7478(v31);
  }

  return result;
}

uint64_t sub_20D00F608(void *a1)
{
  v2 = v1;
  v4 = [a1 latestResults];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = sub_20D567758();

  v7 = sub_20D567838();
  if (!*(v6 + 16))
  {

    goto LABEL_13;
  }

  v9 = sub_20CEED668(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_20CED43FC(*(v6 + 56) + 32 * v9, &v53);

  sub_20CECF940(0, &qword_27C81F4B0);
  if (swift_dynamicCast())
  {
    v12 = v51;
    v13 = [v51 roomName];
    if (!v13)
    {
      v13 = [v51 rawRoomName];
    }

    v14 = v13;
    sub_20D567838();

    v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v16 = sub_20D5677F8();

    v17 = [v15 initWithString_];

    *v2 = v17;
    v18 = [v12 serviceName];
    if (!v18)
    {
      sub_20D567838();
      v18 = sub_20D5677F8();
    }

    v19 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

    v20 = *MEMORY[0x277D74118];
    if (qword_27C81A248 != -1)
    {
      swift_once();
    }

    v21 = qword_27C81F438;
    v22 = v19;
    [v22 addAttribute:v20 value:v21 range:{0, objc_msgSend(v22, sel_length)}];

    *(v2 + 72) = v22;
    goto LABEL_21;
  }

LABEL_14:
  v23 = [a1 latestResults];
  if (!v23)
  {
    goto LABEL_21;
  }

  v24 = v23;
  v25 = sub_20D567758();

  v26 = sub_20D567838();
  if (!*(v25 + 16))
  {

    goto LABEL_20;
  }

  v28 = sub_20CEED668(v26, v27);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_20CED43FC(*(v25 + 56) + 32 * v28, &v53);

  if (swift_dynamicCast())
  {

    *v2 = 0;
    v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v32 = sub_20D5677F8();

    v33 = [v31 initWithString_];

    *(v2 + 72) = v33;
  }

LABEL_21:
  v34 = [a1 latestResults];
  if (v34)
  {
    v35 = v34;
    v36 = sub_20D567758();

    v37 = sub_20D567838();
    if (*(v36 + 16))
    {
      v39 = sub_20CEED668(v37, v38);
      v41 = v40;

      if (v41)
      {
        sub_20CED43FC(*(v36 + 56) + 32 * v39, &v53);

        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  v53 = 0u;
  v54 = 0u;
LABEL_28:
  sub_20CEF9178(&v53, &v51, &qword_27C81BF00);
  if (v52)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F4A8);
    if (swift_dynamicCast())
    {
      sub_20CEF3B60(MEMORY[0x277D84F90]);
      v42 = sub_20D567738();

      v43 = [v50 stringWithAttributes_];

      swift_unknownObjectRelease();
LABEL_38:

      *(v2 + 144) = v43;
      goto LABEL_39;
    }
  }

  else
  {
    sub_20CEF928C(&v51, &qword_27C81BF00);
  }

  sub_20CEF9178(&v53, &v51, &qword_27C81BF00);
  if (v52)
  {
    if (swift_dynamicCast())
    {
      v44 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v45 = sub_20D5677F8();

      v43 = [v44 initWithString_];

      goto LABEL_38;
    }
  }

  else
  {
    sub_20CEF928C(&v51, &qword_27C81BF00);
  }

  if (!*(&v54 + 1))
  {
    v43 = 0;
    goto LABEL_38;
  }

LABEL_39:
  v46 = sub_20D013B94(a1);
  v48 = v47;
  result = sub_20CEF928C(&v53, &qword_27C81BF00);
  *(v2 + 200) = v46;
  *(v2 + 208) = v48 & 1;
  return result;
}

uint64_t sub_20D00FC50(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 288);
  if (*(v2 + 32) == 1)
  {
    v5 = *(v2 + 104) & *(v2 + 176) & 1;
    if (v4 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = 0;
    if (v4 > 1)
    {
LABEL_3:
      if (v4 != 2)
      {
        if (v4 != 3)
        {
          goto LABEL_23;
        }

LABEL_11:
        v35 = 0;
        memset(v34, 0, sizeof(v34));
        v6 = *MEMORY[0x277D13E88];
        MEMORY[0x20F31D7A0](v33, *MEMORY[0x277D13E88]);
        if (v33[3])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EB70);
          if (swift_dynamicCast())
          {
            v7 = v25;
            sub_20CEF9178(v34, &v36, &unk_27C81EB60);
            sub_20CFD8D74(a1, v5, &v36, &v23);
            MEMORY[0x20F31D7A0](v22, v6);
            if (v22[3])
            {
              sub_20CECF940(0, &qword_28111FE00);
              if (swift_dynamicCast())
              {

                v8 = 1;
LABEL_21:
                v26 = v23;
                *v27 = v24[0];
                *&v27[10] = *(v24 + 10);
                sub_20CFD7ED4(&v23, &v36);
                sub_20CFD910C(v8, v7, &v26, &v36);
                sub_20CFDAF98(&v23);
                sub_20CEF928C(v34, &unk_27C81EB60);
                *v27 = v23;
                *&v27[16] = v24[0];
                *&v27[26] = *(v24 + 10);
                v26 = v8;
                *&v28 = v7;
                *(&v28 + 1) = 0x4045000000000000;
                v29 = v36;
                v30 = v37;
                v31 = v38;
                v32 = v39;
                CGSizeMake(&v26);
                v42 = v30;
                v43 = v31;
                v38 = *&v27[16];
                v39 = *&v27[32];
                v44 = v32;
                v40 = v28;
                v41 = v29;
                v36 = v26;
                v37 = *v27;
                goto LABEL_22;
              }
            }

            else
            {
              sub_20CEF928C(v22, &qword_27C81BF00);
            }

            v8 = 0;
            goto LABEL_21;
          }

          v9 = &unk_27C81EB60;
          v10 = v34;
        }

        else
        {
          sub_20CEF928C(v34, &unk_27C81EB60);
          v9 = &qword_27C81BF00;
          v10 = v33;
        }

        sub_20CEF928C(v10, v9);
        sub_20CFDAF0C(&v36);
LABEL_22:
        v11 = *(v2 + 392);
        v12 = *(v2 + 408);
        v13 = *(v2 + 360);
        v29 = *(v2 + 376);
        v30 = v11;
        v31 = v12;
        v15 = *(v2 + 328);
        v14 = *(v2 + 344);
        v32 = *(v2 + 424);
        *&v27[32] = v14;
        v28 = v13;
        v16 = *(v2 + 296);
        *v27 = *(v2 + 312);
        *&v27[16] = v15;
        v26 = v16;
        result = sub_20CEF928C(&v26, &qword_27C81F350);
        v18 = v43;
        *(v2 + 392) = v42;
        *(v2 + 408) = v18;
        *(v2 + 424) = v44;
        v19 = v39;
        *(v2 + 328) = v38;
        *(v2 + 344) = v19;
        v20 = v41;
        *(v2 + 360) = v40;
        *(v2 + 376) = v20;
        v21 = v37;
        *(v2 + 296) = v36;
        *(v2 + 312) = v21;
        return result;
      }

LABEL_8:
      v5 = 1;
      goto LABEL_11;
    }
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  if (v4 == 1)
  {
    v5 = 2;
    goto LABEL_11;
  }

LABEL_23:
  result = sub_20D568C38();
  __break(1u);
  return result;
}

id sub_20D00FFB0()
{
  result = sub_20D00FFD0();
  qword_27C81F438 = result;
  return result;
}

id sub_20D00FFD0()
{
  sub_20CECF940(0, &qword_27C81F4B8);
  v0 = [swift_getObjCClassFromMetadata() defaultParagraphStyle];
  [v0 mutableCopy];

  sub_20D568628();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  [v2 setLineBreakMode_];
  [v2 setLineBreakStrategy_];
  [v2 setAllowsDefaultTighteningForTruncation_];
  [v2 copy];
  sub_20D568628();

  swift_unknownObjectRelease();
  sub_20CECF940(0, &qword_27C81F4C0);
  swift_dynamicCast();
  return v2;
}

uint64_t TileCellContentConfiguration.hash(into:)(uint64_t a1)
{
  v4 = v1[35];
  v3 = v1[36];
  v5 = v1 + 37;
  v6 = v1[54];
  TileCellContentConfiguration.Label.hash(into:)();
  TileCellContentConfiguration.Label.hash(into:)();
  TileCellContentConfiguration.Label.hash(into:)();
  TileCellContentConfiguration.Glyph.hash(into:)(a1);
  sub_20D568D68();
  sub_20D568D68();
  if (v4)
  {
    v7 = v4;
    sub_20D568408();
  }

  MEMORY[0x20F31E200](v3);
  v8 = *(v5 + 7);
  v31[6] = *(v5 + 6);
  v31[7] = v8;
  v32 = v5[16];
  v9 = *(v5 + 3);
  v31[2] = *(v5 + 2);
  v31[3] = v9;
  v10 = *(v5 + 5);
  v31[4] = *(v5 + 4);
  v31[5] = v10;
  v11 = *(v5 + 1);
  v31[0] = *v5;
  v31[1] = v11;
  if (sub_20CFF743C(v31) != 1)
  {
    v24 = *(v5 + 6);
    v25 = *(v5 + 7);
    v26 = v5[16];
    v20 = *(v5 + 2);
    v21 = *(v5 + 3);
    v22 = *(v5 + 4);
    v23 = *(v5 + 5);
    v18 = *v5;
    v19 = *(v5 + 1);
    sub_20D568D68();
    v13 = *(v5 + 7);
    v27[6] = *(v5 + 6);
    v27[7] = v13;
    v28 = v5[16];
    v14 = *(v5 + 3);
    v27[2] = *(v5 + 2);
    v27[3] = v14;
    v15 = *(v5 + 5);
    v27[4] = *(v5 + 4);
    v27[5] = v15;
    v16 = *(v5 + 1);
    v27[0] = *v5;
    v27[1] = v16;
    sub_20CFDAFC8(v27, v29);
    BaseIconView.Configuration.hash(into:)();
    v29[6] = v24;
    v29[7] = v25;
    v30 = v26;
    v29[2] = v20;
    v29[3] = v21;
    v29[4] = v22;
    v29[5] = v23;
    v29[0] = v18;
    v29[1] = v19;
    sub_20CFF7478(v29);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_20D568D68();
    return TileCellLabelInsets.hash(into:)();
  }

  sub_20D568D68();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_20D568D68();
  v12 = v6;
  sub_20D568408();

  return TileCellLabelInsets.hash(into:)();
}

uint64_t TileCellContentConfiguration.hashValue.getter()
{
  sub_20D568D48();
  TileCellContentConfiguration.hash(into:)(v1);
  return sub_20D568D98();
}

uint64_t sub_20D01035C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 408);
  v20 = *(v1 + 392);
  v21 = v3;
  v4 = *(v1 + 312);
  v5 = *(v1 + 344);
  v16 = *(v1 + 328);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 344);
  v8 = *(v1 + 376);
  v18 = *(v1 + 360);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 312);
  v15[0] = *(v1 + 296);
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 408);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 424);
  *(a1 + 128) = *(v1 + 424);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_20CEF9178(v15, v14, &qword_27C81F350);
}

__n128 sub_20D0103F8(uint64_t a1)
{
  v12 = *(v1 + 424);
  v3 = *(v1 + 408);
  v11[6] = *(v1 + 392);
  v11[7] = v3;
  v4 = *(v1 + 344);
  v11[2] = *(v1 + 328);
  v11[3] = v4;
  v5 = *(v1 + 376);
  v11[4] = *(v1 + 360);
  v11[5] = v5;
  v6 = *(v1 + 312);
  v11[0] = *(v1 + 296);
  v11[1] = v6;
  sub_20CEF928C(v11, &qword_27C81F350);
  v7 = *(a1 + 112);
  *(v1 + 392) = *(a1 + 96);
  *(v1 + 408) = v7;
  *(v1 + 424) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v1 + 328) = *(a1 + 32);
  *(v1 + 344) = v8;
  v9 = *(a1 + 80);
  *(v1 + 360) = *(a1 + 64);
  *(v1 + 376) = v9;
  result = *(a1 + 16);
  *(v1 + 296) = *a1;
  *(v1 + 312) = result;
  return result;
}

void *sub_20D0104BC(uint64_t a1)
{
  v1[36] = a1;
  memcpy(__dst, v1, sizeof(__dst));
  TileCellContentConfiguration.updateIconViewForLayout()(__src);
  memcpy(v4, __dst, sizeof(v4));
  sub_20CEFFA00(v4);
  return memcpy(v1, __src, 0x1F8uLL);
}

void (*sub_20D010534(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x200uLL);
  }

  *a1 = v3;
  *(v3 + 504) = v1;
  return sub_20D00E664;
}

uint64_t sub_20D010598@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(a2, v3, 0x1F8uLL);
  sub_20CFFCAE4(__dst, &v7);
  sub_20D00F608(a1);
  return sub_20D00FC50(a1);
}

uint64_t sub_20D01060C()
{
  sub_20D568D48();
  TileCellContentConfiguration.hash(into:)(v1);
  return sub_20D568D98();
}

uint64_t sub_20D010650()
{
  sub_20D568D48();
  TileCellContentConfiguration.hash(into:)(v1);
  return sub_20D568D98();
}

char *sub_20D01068C()
{
  memcpy(__dst, v0, 0x1F8uLL);
  v1 = objc_allocWithZone(type metadata accessor for TileCellContentView());
  sub_20CFFCAE4(__dst, v4);
  v2 = sub_20D012700(__dst, v1);
  sub_20D01400C(&qword_2811207D0, 255, type metadata accessor for TileCellContentView);
  return v2;
}

uint64_t TileCellLabelInsets.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F31E230](*&v1);
  if (v3 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v3;
  }

  MEMORY[0x20F31E230](*&v9);
  if (v2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v2;
  }

  MEMORY[0x20F31E230](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x20F31E230](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x20F31E230](*&v12);
  if (v7 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v7;
  }

  MEMORY[0x20F31E230](*&v13);
  if (v6 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v6;
  }

  MEMORY[0x20F31E230](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  return MEMORY[0x20F31E230](*&v15);
}

uint64_t TileCellLabelInsets.hashValue.getter()
{
  sub_20D568D48();
  TileCellLabelInsets.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20D01086C()
{
  sub_20D568D48();
  TileCellLabelInsets.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20D0108B0()
{
  sub_20D568D48();
  TileCellLabelInsets.hash(into:)();
  return sub_20D568D98();
}

uint64_t sub_20D010938()
{
  v1 = v0 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_20D0109CC(char a1)
{
  v3 = v1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  result = swift_beginAccess();
  *(v3 + 32) = a1;
  return result;
}

void (*sub_20D010A18(uint64_t *a1))(uint64_t *a1)
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
  v5 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  *(v4 + 40) = *(v6 + 32);
  return sub_20D010AB0;
}

void sub_20D010AB0(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 24) + *(v1 + 32) + 32) = *(v1 + 40);
  free(v1);
}

uint64_t sub_20D010B10()
{
  v1 = v0 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  return *(v1 + 104);
}

uint64_t sub_20D010BA4(char a1)
{
  v3 = v1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  result = swift_beginAccess();
  *(v3 + 104) = a1;
  return result;
}

void (*sub_20D010BF0(uint64_t *a1))(uint64_t *a1)
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
  v5 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  *(v4 + 40) = *(v6 + 104);
  return sub_20D010C88;
}

void sub_20D010C88(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 24) + *(v1 + 32) + 104) = *(v1 + 40);
  free(v1);
}

uint64_t sub_20D010CE8()
{
  v1 = v0 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  return *(v1 + 176);
}

uint64_t sub_20D010D7C(char a1)
{
  v3 = v1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  result = swift_beginAccess();
  *(v3 + 176) = a1;
  return result;
}

void (*sub_20D010DC8(uint64_t *a1))(uint64_t *a1)
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
  v5 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  *(v4 + 40) = *(v6 + 176);
  return sub_20D010E60;
}

void sub_20D010E60(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 24) + *(v1 + 32) + 176) = *(v1 + 40);
  free(v1);
}

uint64_t sub_20D010E78(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + OBJC_IVAR___HUTileCellContentConfiguration_configuration);
  swift_beginAccess();
  v3[36] = v2;
  memcpy(v5, v3, sizeof(v5));
  TileCellContentConfiguration.updateIconViewForLayout()(__src);
  memcpy(__dst, v5, sizeof(__dst));
  sub_20CEFFA00(__dst);
  memcpy(v3, __src, 0x1F8uLL);
  return swift_endAccess();
}

uint64_t sub_20D010F1C()
{
  v1 = v0 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  return *(v1 + 288);
}

uint64_t sub_20D010F64(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration);
  swift_beginAccess();
  v3[36] = a1;
  memcpy(v5, v3, sizeof(v5));
  TileCellContentConfiguration.updateIconViewForLayout()(__src);
  memcpy(__dst, v5, sizeof(__dst));
  sub_20CEFFA00(__dst);
  memcpy(v3, __src, 0x1F8uLL);
  return swift_endAccess();
}

void (*sub_20D011004(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x240uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 560) = v1;
  v5 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  *(v3 + 568) = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  v6 = v1 + v5;
  swift_beginAccess();
  *(v4 + 552) = *(v6 + 288);
  return sub_20D0110A0;
}

void sub_20D0110A0(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 560) + *(*a1 + 568));
  v3 = *(*a1 + 552);
  swift_beginAccess();
  v2[36] = v3;
  memcpy(__dst, v2, sizeof(__dst));
  TileCellContentConfiguration.updateIconViewForLayout()(v4);
  memcpy(v1, __dst, 0x1F8uLL);
  sub_20CEFFA00(v1);
  memcpy(v2, v4, 0x1F8uLL);
  swift_endAccess();

  free(v1);
}

uint64_t sub_20D011158@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  v16[0] = *(v3 + 296);
  v4 = *(v3 + 312);
  v5 = *(v3 + 328);
  v6 = *(v3 + 360);
  v16[3] = *(v3 + 344);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 376);
  v8 = *(v3 + 392);
  v9 = *(v3 + 408);
  v17 = *(v3 + 424);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 408);
  *(a2 + 96) = *(v3 + 392);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 424);
  v11 = *(v3 + 344);
  *(a2 + 32) = *(v3 + 328);
  *(a2 + 48) = v11;
  v12 = *(v3 + 376);
  *(a2 + 64) = *(v3 + 360);
  *(a2 + 80) = v12;
  v13 = *(v3 + 312);
  *a2 = *(v3 + 296);
  *(a2 + 16) = v13;
  return sub_20CEF9178(v16, &v15, &qword_27C81F350);
}

uint64_t sub_20D011224(__int128 *a1, void *a2)
{
  v2 = a1[7];
  v27 = a1[6];
  v28 = v2;
  v29 = *(a1 + 16);
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v4 = a1[5];
  v25 = a1[4];
  v26 = v4;
  v5 = a1[1];
  v6 = *a2 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  v21 = *a1;
  v22 = v5;
  swift_beginAccess();
  v30[0] = *(v6 + 296);
  v7 = *(v6 + 312);
  v8 = *(v6 + 328);
  v9 = *(v6 + 360);
  v30[3] = *(v6 + 344);
  v30[4] = v9;
  v30[1] = v7;
  v30[2] = v8;
  v10 = *(v6 + 376);
  v11 = *(v6 + 392);
  v12 = *(v6 + 408);
  v31 = *(v6 + 424);
  v30[6] = v11;
  v30[7] = v12;
  v30[5] = v10;
  *(v6 + 296) = v21;
  v13 = v22;
  v14 = v23;
  v15 = v25;
  *(v6 + 344) = v24;
  *(v6 + 360) = v15;
  *(v6 + 312) = v13;
  *(v6 + 328) = v14;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  *(v6 + 424) = v29;
  *(v6 + 392) = v17;
  *(v6 + 408) = v18;
  *(v6 + 376) = v16;
  sub_20CEF9178(&v21, &v20, &qword_27C81F350);
  return sub_20CEF928C(v30, &qword_27C81F350);
}

uint64_t sub_20D011334@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  v4 = *(v3 + 376);
  v5 = *(v3 + 408);
  v22 = *(v3 + 392);
  v23 = v5;
  v6 = *(v3 + 312);
  v7 = *(v3 + 344);
  v18 = *(v3 + 328);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 344);
  v10 = *(v3 + 376);
  v20 = *(v3 + 360);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 312);
  v17[0] = *(v3 + 296);
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 408);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  v24 = *(v3 + 424);
  *(a1 + 128) = *(v3 + 424);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_20CEF9178(v17, &v16, &qword_27C81F350);
}

uint64_t sub_20D0113F8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  v4 = *(v3 + 408);
  v13[6] = *(v3 + 392);
  v13[7] = v4;
  v14 = *(v3 + 424);
  v5 = *(v3 + 344);
  v13[2] = *(v3 + 328);
  v13[3] = v5;
  v6 = *(v3 + 376);
  v13[4] = *(v3 + 360);
  v13[5] = v6;
  v7 = *(v3 + 312);
  v13[0] = *(v3 + 296);
  v13[1] = v7;
  v8 = *(a1 + 80);
  *(v3 + 360) = *(a1 + 64);
  *(v3 + 376) = v8;
  v9 = *(a1 + 112);
  *(v3 + 392) = *(a1 + 96);
  *(v3 + 408) = v9;
  *(v3 + 424) = *(a1 + 128);
  v10 = *(a1 + 48);
  *(v3 + 328) = *(a1 + 32);
  *(v3 + 344) = v10;
  v11 = *(a1 + 16);
  *(v3 + 296) = *a1;
  *(v3 + 312) = v11;
  return sub_20CEF928C(v13, &qword_27C81F350);
}

void (*sub_20D0114AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x358uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 840) = v1;
  v5 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  *(v3 + 848) = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  v6 = v1 + v5;
  swift_beginAccess();
  *v4 = *(v6 + 296);
  v7 = *(v6 + 312);
  v8 = *(v6 + 328);
  v9 = *(v6 + 360);
  *(v4 + 48) = *(v6 + 344);
  *(v4 + 64) = v9;
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  v10 = *(v6 + 376);
  v11 = *(v6 + 392);
  v12 = *(v6 + 408);
  *(v4 + 128) = *(v6 + 424);
  *(v4 + 96) = v11;
  *(v4 + 112) = v12;
  *(v4 + 80) = v10;
  *(v4 + 136) = *(v6 + 296);
  v13 = *(v6 + 312);
  v14 = *(v6 + 328);
  v15 = *(v6 + 344);
  *(v4 + 200) = *(v6 + 360);
  *(v4 + 184) = v15;
  *(v4 + 168) = v14;
  *(v4 + 152) = v13;
  v16 = *(v6 + 376);
  v17 = *(v6 + 392);
  v18 = *(v6 + 408);
  *(v4 + 264) = *(v6 + 424);
  *(v4 + 248) = v18;
  *(v4 + 232) = v17;
  *(v4 + 216) = v16;
  sub_20CEF9178(v4, v4 + 272, &qword_27C81F350);
  return sub_20D0115CC;
}

void sub_20D0115CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 840) + *(v2 + 848);
  if (a2)
  {
    v4 = *(v2 + 200);
    v5 = *(v2 + 184);
    *(v2 + 576) = *(v2 + 168);
    *(v2 + 592) = v5;
    v6 = *(v2 + 152);
    *(v2 + 672) = *(v2 + 264);
    v7 = *(v2 + 248);
    *(v2 + 640) = *(v2 + 232);
    *(v2 + 656) = v7;
    v8 = *(v2 + 216);
    *(v2 + 608) = v4;
    *(v2 + 624) = v8;
    *(v2 + 544) = *(v2 + 136);
    *(v2 + 560) = v6;
    *(v2 + 408) = *(v3 + 296);
    v9 = *(v3 + 312);
    v10 = *(v3 + 328);
    v11 = *(v3 + 360);
    *(v2 + 456) = *(v3 + 344);
    *(v2 + 472) = v11;
    *(v2 + 424) = v9;
    *(v2 + 440) = v10;
    v12 = *(v3 + 376);
    v13 = *(v3 + 392);
    v14 = *(v3 + 408);
    *(v2 + 536) = *(v3 + 424);
    *(v2 + 504) = v13;
    *(v2 + 520) = v14;
    *(v2 + 488) = v12;
    *(v3 + 296) = *(v2 + 136);
    v15 = *(v2 + 152);
    v16 = *(v2 + 168);
    v17 = *(v2 + 200);
    *(v3 + 344) = *(v2 + 184);
    *(v3 + 360) = v17;
    *(v3 + 312) = v15;
    *(v3 + 328) = v16;
    v18 = *(v2 + 216);
    v19 = *(v2 + 232);
    v20 = *(v2 + 248);
    *(v3 + 424) = *(v2 + 264);
    *(v3 + 392) = v19;
    *(v3 + 408) = v20;
    *(v3 + 376) = v18;
    sub_20CEF9178(v2 + 544, v2 + 680, &qword_27C81F350);
    sub_20CEF928C(v2 + 408, &qword_27C81F350);
    v21 = *(v2 + 216);
    v22 = *(v2 + 248);
    *(v2 + 368) = *(v2 + 232);
    *(v2 + 384) = v22;
    *(v2 + 400) = *(v2 + 264);
    v23 = *(v2 + 152);
    v24 = *(v2 + 184);
    *(v2 + 304) = *(v2 + 168);
    *(v2 + 320) = v24;
    *(v2 + 336) = *(v2 + 200);
    *(v2 + 352) = v21;
    *(v2 + 272) = *(v2 + 136);
    *(v2 + 288) = v23;
  }

  else
  {
    *(v2 + 272) = *(v3 + 296);
    v25 = *(v3 + 360);
    v27 = *(v3 + 312);
    v26 = *(v3 + 328);
    *(v2 + 320) = *(v3 + 344);
    *(v2 + 336) = v25;
    *(v2 + 288) = v27;
    *(v2 + 304) = v26;
    v29 = *(v3 + 392);
    v28 = *(v3 + 408);
    v30 = *(v3 + 376);
    *(v2 + 400) = *(v3 + 424);
    *(v2 + 368) = v29;
    *(v2 + 384) = v28;
    *(v2 + 352) = v30;
    *(v3 + 296) = *(v2 + 136);
    v31 = *(v2 + 152);
    v32 = *(v2 + 168);
    v33 = *(v2 + 200);
    *(v3 + 344) = *(v2 + 184);
    *(v3 + 360) = v33;
    *(v3 + 312) = v31;
    *(v3 + 328) = v32;
    v34 = *(v2 + 216);
    v35 = *(v2 + 232);
    v36 = *(v2 + 248);
    *(v3 + 424) = *(v2 + 264);
    *(v3 + 392) = v35;
    *(v3 + 408) = v36;
    *(v3 + 376) = v34;
  }

  sub_20CEF928C(v2 + 272, &qword_27C81F350);

  free(v2);
}

char *sub_20D011824()
{
  v1 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  memcpy(__dst, (v0 + v1), 0x1F8uLL);
  v2 = objc_allocWithZone(type metadata accessor for TileCellContentView());
  sub_20CFFCAE4(__dst, &v5);
  v3 = sub_20D012700(__dst, v2);
  sub_20D01400C(&qword_2811207D0, 255, type metadata accessor for TileCellContentView);
  return v3;
}

char *sub_20D0118E0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  memcpy(__dst, &v1[v5], sizeof(__dst));
  memcpy(__src, &v1[v5], sizeof(__src));
  sub_20CFFCAE4(__dst, v15);
  sub_20CFFCAE4(__dst, v15);
  sub_20D00F608(a1);
  sub_20D00FC50(a1);
  sub_20CEFFA00(__dst);
  memcpy(v14, __src, sizeof(v14));
  memcpy(v12, v14, sizeof(v12));
  memcpy(v15, &v1[v5], sizeof(v15));
  memcpy(v11, &v1[v5], sizeof(v11));
  sub_20CFFCAE4(v15, __src);
  v6 = _s6HomeUI28TileCellContentConfigurationV2eeoiySbAC_ACtFZ_0(v12, v11);
  memcpy(__src, v11, sizeof(__src));
  sub_20CEFFA00(__src);
  if (v6)
  {
    v7 = v2;
    v8 = v14;
  }

  else
  {
    v7 = [objc_allocWithZone(ObjectType) init];
    v9 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
    swift_beginAccess();
    memcpy(v12, &v7[v9], sizeof(v12));
    memcpy(&v7[v9], v14, 0x1F8uLL);
    v8 = v12;
  }

  sub_20CEFFA00(v8);
  return v7;
}

char *sub_20D011AE8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  memcpy(__dst, &v1[v5], sizeof(__dst));
  memcpy(__src, &v1[v5], sizeof(__src));
  sub_20CFFCAE4(__dst, v17);
  TileCellContentConfiguration.updated(for:)(a1, v17);
  memcpy(v14, __src, sizeof(v14));
  sub_20CEFFA00(v14);
  memcpy(v15, v17, sizeof(v15));
  memcpy(v12, v15, sizeof(v12));
  memcpy(__src, &v1[v5], sizeof(__src));
  memcpy(v11, &v1[v5], sizeof(v11));
  sub_20CFFCAE4(__src, v17);
  v6 = _s6HomeUI28TileCellContentConfigurationV2eeoiySbAC_ACtFZ_0(v12, v11);
  memcpy(v17, v11, sizeof(v17));
  sub_20CEFFA00(v17);
  if (v6)
  {
    v7 = v2;
    v8 = v15;
  }

  else
  {
    v7 = [objc_allocWithZone(ObjectType) init];
    v9 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
    swift_beginAccess();
    memcpy(v12, &v7[v9], sizeof(v12));
    memcpy(&v7[v9], v15, 0x1F8uLL);
    v8 = v12;
  }

  sub_20CEFFA00(v8);
  return v7;
}

id __TileCellContentConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __TileCellContentConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D011D08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  v16[0] = *(v3 + 296);
  v4 = *(v3 + 312);
  v5 = *(v3 + 328);
  v6 = *(v3 + 360);
  v16[3] = *(v3 + 344);
  v16[4] = v6;
  v16[1] = v4;
  v16[2] = v5;
  v7 = *(v3 + 376);
  v8 = *(v3 + 392);
  v9 = *(v3 + 408);
  v17 = *(v3 + 424);
  v16[6] = v8;
  v16[7] = v9;
  v16[5] = v7;
  v10 = *(v3 + 408);
  *(a1 + 96) = *(v3 + 392);
  *(a1 + 112) = v10;
  *(a1 + 128) = *(v3 + 424);
  v11 = *(v3 + 344);
  *(a1 + 32) = *(v3 + 328);
  *(a1 + 48) = v11;
  v12 = *(v3 + 376);
  *(a1 + 64) = *(v3 + 360);
  *(a1 + 80) = v12;
  v13 = *(v3 + 312);
  *a1 = *(v3 + 296);
  *(a1 + 16) = v13;
  return sub_20CEF9178(v16, &v15, &qword_27C81F350);
}

uint64_t sub_20D011DD4(uint64_t a1)
{
  v3 = *v1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  v15[0] = *(v3 + 296);
  v4 = *(v3 + 312);
  v5 = *(v3 + 328);
  v6 = *(v3 + 360);
  v15[3] = *(v3 + 344);
  v15[4] = v6;
  v15[1] = v4;
  v15[2] = v5;
  v7 = *(v3 + 376);
  v8 = *(v3 + 392);
  v9 = *(v3 + 408);
  v16 = *(v3 + 424);
  v15[6] = v8;
  v15[7] = v9;
  v15[5] = v7;
  v10 = *(a1 + 112);
  *(v3 + 392) = *(a1 + 96);
  *(v3 + 408) = v10;
  *(v3 + 424) = *(a1 + 128);
  v11 = *(a1 + 48);
  *(v3 + 328) = *(a1 + 32);
  *(v3 + 344) = v11;
  v12 = *(a1 + 80);
  *(v3 + 360) = *(a1 + 64);
  *(v3 + 376) = v12;
  v13 = *(a1 + 16);
  *(v3 + 296) = *a1;
  *(v3 + 312) = v13;
  return sub_20CEF928C(v15, &qword_27C81F350);
}

void (*sub_20D011E94(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x358uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 840) = *v1;
  v6 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  *(v3 + 848) = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  v7 = v5 + v6;
  swift_beginAccess();
  *v4 = *(v7 + 296);
  v8 = *(v7 + 312);
  v9 = *(v7 + 328);
  v10 = *(v7 + 360);
  *(v4 + 48) = *(v7 + 344);
  *(v4 + 64) = v10;
  *(v4 + 16) = v8;
  *(v4 + 32) = v9;
  v11 = *(v7 + 376);
  v12 = *(v7 + 392);
  v13 = *(v7 + 408);
  *(v4 + 128) = *(v7 + 424);
  *(v4 + 96) = v12;
  *(v4 + 112) = v13;
  *(v4 + 80) = v11;
  memmove((v4 + 136), (v7 + 296), 0x88uLL);
  sub_20CEF9178(v4, v4 + 272, &qword_27C81F350);
  return sub_20D011F88;
}

void sub_20D011F88(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 840) + *(v2 + 848);
  if (a2)
  {
    v4 = *(v2 + 200);
    v5 = *(v2 + 184);
    *(v2 + 576) = *(v2 + 168);
    *(v2 + 592) = v5;
    v6 = *(v2 + 152);
    *(v2 + 672) = *(v2 + 264);
    v7 = *(v2 + 248);
    *(v2 + 640) = *(v2 + 232);
    *(v2 + 656) = v7;
    v8 = *(v2 + 216);
    *(v2 + 608) = v4;
    *(v2 + 624) = v8;
    *(v2 + 544) = *(v2 + 136);
    *(v2 + 560) = v6;
    *(v2 + 408) = *(v3 + 296);
    v9 = *(v3 + 312);
    v10 = *(v3 + 328);
    v11 = *(v3 + 360);
    *(v2 + 456) = *(v3 + 344);
    *(v2 + 472) = v11;
    *(v2 + 424) = v9;
    *(v2 + 440) = v10;
    v12 = *(v3 + 376);
    v13 = *(v3 + 392);
    v14 = *(v3 + 408);
    *(v2 + 536) = *(v3 + 424);
    *(v2 + 504) = v13;
    *(v2 + 520) = v14;
    *(v2 + 488) = v12;
    memmove((v3 + 296), (v2 + 136), 0x88uLL);
    sub_20CEF9178(v2 + 544, v2 + 680, &qword_27C81F350);
    sub_20CEF928C(v2 + 408, &qword_27C81F350);
    v15 = *(v2 + 216);
    v16 = *(v2 + 248);
    *(v2 + 368) = *(v2 + 232);
    *(v2 + 384) = v16;
    *(v2 + 400) = *(v2 + 264);
    v17 = *(v2 + 152);
    v18 = *(v2 + 184);
    *(v2 + 304) = *(v2 + 168);
    *(v2 + 320) = v18;
    *(v2 + 336) = *(v2 + 200);
    *(v2 + 352) = v15;
    *(v2 + 272) = *(v2 + 136);
    *(v2 + 288) = v17;
  }

  else
  {
    *(v2 + 272) = *(v3 + 296);
    v19 = *(v3 + 360);
    v21 = *(v3 + 312);
    v20 = *(v3 + 328);
    *(v2 + 320) = *(v3 + 344);
    *(v2 + 336) = v19;
    *(v2 + 288) = v21;
    *(v2 + 304) = v20;
    v23 = *(v3 + 392);
    v22 = *(v3 + 408);
    v24 = *(v3 + 376);
    *(v2 + 400) = *(v3 + 424);
    *(v2 + 368) = v23;
    *(v2 + 384) = v22;
    *(v2 + 352) = v24;
    memmove((v3 + 296), (v2 + 136), 0x88uLL);
  }

  sub_20CEF928C(v2 + 272, &qword_27C81F350);

  free(v2);
}

uint64_t sub_20D012130()
{
  v1 = *v0 + OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  return *(v1 + 288);
}

uint64_t sub_20D01217C(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR___HUTileCellContentConfiguration_configuration);
  swift_beginAccess();
  v3[36] = a1;
  memcpy(v5, v3, sizeof(v5));
  TileCellContentConfiguration.updateIconViewForLayout()(__src);
  memcpy(__dst, v5, sizeof(__dst));
  sub_20CEFFA00(__dst);
  memcpy(v3, __src, 0x1F8uLL);
  return swift_endAccess();
}

void (*sub_20D012220(uint64_t **a1))(void *a1)
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
  v2[4] = sub_20D011004(v2);
  return sub_20CF52FA8;
}

char *sub_20D012294@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_20D0118E0(a1);
  *a2 = result;
  return result;
}

char *sub_20D0122C0()
{
  v1 = *v0;
  v2 = OBJC_IVAR___HUTileCellContentConfiguration_configuration;
  swift_beginAccess();
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  v3 = objc_allocWithZone(type metadata accessor for TileCellContentView());
  sub_20CFFCAE4(__dst, v6);
  v4 = sub_20D012700(__dst, v3);
  sub_20D01400C(&qword_2811207D0, 255, type metadata accessor for TileCellContentView);
  return v4;
}

char *sub_20D012388@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_20D011AE8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_20D0123B4()
{
  v1 = *(v0 + 72);
  v2 = MEMORY[0x277D837D0];
  if (!*v0)
  {
    v8 = 0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v3 = [*v0 string];
  v4 = sub_20D567838();
  v6 = v5;

  v32 = v4;
  v33 = v6;
  v30 = 32;
  v31 = 0xE100000000000000;
  v28 = 0;
  v29 = 0xE000000000000000;
  v26 = sub_20CEF44D8();
  v27 = v26;
  v24 = v2;
  v25 = v26;
  sub_20D5685C8();
  v8 = v7;

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [v1 string];
  sub_20D567838();

  sub_20CEF44D8();
  v10 = sub_20D5685C8();
  v12 = v11;

LABEL_6:
  v13 = 0;
  v34[0] = v8;
  v34[1] = v10;
  v34[2] = v12;
  v14 = MEMORY[0x277D84F90];
  do
  {
    v15 = &v34[2 * v13++];
    while (1)
    {
      v16 = *v15;
      if (*v15)
      {
        v17 = *(v15 - 1);
        v18 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v18 = v17 & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          break;
        }
      }

      v15 += 2;
      if (++v13 == 3)
      {
        goto LABEL_18;
      }
    }

    sub_20D5663C8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_20CEE7F6C(0, *(v14 + 2) + 1, 1, v14);
    }

    v20 = *(v14 + 2);
    v19 = *(v14 + 3);
    if (v20 >= v19 >> 1)
    {
      v14 = sub_20CEE7F6C((v19 > 1), v20 + 1, 1, v14);
    }

    *(v14 + 2) = v20 + 1;
    v21 = &v14[16 * v20];
    *(v21 + 4) = v17;
    *(v21 + 5) = v16;
  }

  while (v13 != 2);
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C260);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EC30);
  sub_20CF76364();
  v22 = sub_20D5677D8();

  MEMORY[0x20F31CDB0](0x6C6543656C69542DLL, 0xE90000000000006CLL);
  return v22;
}

char *sub_20D012700(const void *a1, char *a2)
{
  v51[3] = &type metadata for TileCellContentConfiguration;
  v51[4] = sub_20D009378();
  v51[0] = swift_allocObject();
  memcpy((v51[0] + 16), a1, 0x1F8uLL);
  v4 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel;
  *&a2[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel;
  *&a2[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&a2[OBJC_IVAR____TtC6HomeUI19TileCellContentView_activeLayoutConstraints] = 0;
  v6 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_statusGlyph;
  *&a2[v6] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v7 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel;
  *&a2[v7] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v8 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_badgeLabel;
  *&a2[v8] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v9 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_activityIndicator;
  *&a2[v9] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v10 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView;
  type metadata accessor for BaseIconView();
  *&a2[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_20CECF7A0(v51, &a2[OBJC_IVAR____TtC6HomeUI19TileCellContentView_configuration]);
  v50.receiver = a2;
  v50.super_class = type metadata accessor for TileCellContentView();
  v11 = objc_msgSendSuper2(&v50, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BC4C0;
  v13 = *&v11[OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView];
  *(inited + 32) = v13;
  v45 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel;
  v14 = *&v11[OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel];
  *(inited + 40) = v14;
  v46 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel;
  v15 = *&v11[OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel];
  *(inited + 48) = v15;
  v47 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel;
  v16 = *&v11[OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel];
  *(inited + 56) = v16;
  v17 = (inited & 0xC000000000000001);
  v18 = (inited & 0xFFFFFFFFFFFFFF8);
  v19 = v11;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  for (i = v20; ; i = MEMORY[0x20F31DD20](0, inited))
  {
    v25 = i;
    [v19 addSubview_];

    if (v17)
    {
      v26 = MEMORY[0x20F31DD20](1, inited);
    }

    else
    {
      if (v18[2] < 2)
      {
        goto LABEL_23;
      }

      v26 = *(inited + 40);
    }

    v27 = v26;
    [v19 addSubview_];

    if (v17)
    {
      v28 = MEMORY[0x20F31DD20](2, inited);
    }

    else
    {
      if (v18[2] < 3)
      {
        goto LABEL_23;
      }

      v28 = *(inited + 48);
    }

    v29 = v28;
    [v19 addSubview_];

    if (v17)
    {
      v30 = MEMORY[0x20F31DD20](3, inited);
    }

    else
    {
      if (v18[2] < 4)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v30 = *(inited + 56);
    }

    v31 = v30;
    [v19 addSubview_];

    swift_setDeallocating();
    swift_arrayDestroy();

    [v19 addSubview_];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BECD0;
    v32 = *&v11[v45];
    *(inited + 32) = v32;
    v17 = *&v11[v46];
    *(inited + 40) = v17;
    v18 = *&v11[v47];
    *(inited + 48) = v18;
    v33 = inited & 0xC000000000000001;
    v34 = v19;
    v19 = v32;
    v35 = v17;
    v36 = v18;
    if ((inited & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x20F31DD20](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v37 = v19;
    }

    v19 = v37;
    [v37 setAdjustsFontForContentSizeCategory_];
    v17 = &selRef_setIconViews_;
    [v19 setLineBreakMode_];
    v18 = &selRef_showEducationTip;
    [v19 setLineBreakStrategy_];
    [v19 setNumberOfLines_];
    [v19 setAllowsDefaultTighteningForTruncation_];

    if (v33)
    {
      v38 = MEMORY[0x20F31DD20](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_24;
      }

      v38 = *(inited + 40);
    }

    v19 = v38;
    [v38 setAdjustsFontForContentSizeCategory_];
    [v19 setLineBreakMode_];
    [v19 setLineBreakStrategy_];
    [v19 setNumberOfLines_];
    [v19 setAllowsDefaultTighteningForTruncation_];

    if (v33)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v39 = *(inited + 48);
      goto LABEL_22;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v39 = MEMORY[0x20F31DD20](2, inited);
LABEL_22:
  v40 = v39;
  [v39 setAdjustsFontForContentSizeCategory_];
  [v40 setLineBreakMode_];
  [v40 setLineBreakStrategy_];
  [v40 setNumberOfLines_];
  [v40 setAllowsDefaultTighteningForTruncation_];

  swift_setDeallocating();
  swift_arrayDestroy();

  v41 = *&v11[v46];
  v42 = objc_opt_self();
  v43 = v41;
  [v43 setNumberOfLines_];

  [*&v11[v47] setAdjustsFontSizeToFitWidth_];
  [*&v11[v47] setMinimumScaleFactor_];
  [v34 setDirectionalLayoutMargins_];

  [v34 setClipsToBounds_];
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  sub_20D0155C4(v48);
  sub_20CEF928C(v48, &qword_27C81C790);
  TileCellContentView.updateStaticConstraints()();
  [v34 updateConstraints];

  __swift_destroy_boxed_opaque_existential_1(v51);
  return v34;
}

uint64_t _s6HomeUI19TileCellLabelInsetsV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))))
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])))) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _s6HomeUI28TileCellContentConfigurationV5GlyphV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  if ((sub_20D09B8B0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_20CECF940(0, &qword_28111FB10);
  if ((sub_20D5683F8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CGColor(0);
  sub_20D01400C(&unk_27C81F448, 255, type metadata accessor for CGColor);
  v12 = sub_20D5648C8();
  result = 0;
  if ((v12 & 1) != 0 && v2 == v7 && v3 == v8 && v4 == v9 && v5 == v10)
  {
    return v6 ^ v11 ^ 1u;
  }

  return result;
}

BOOL _s6HomeUI28TileCellContentConfigurationV5LabelV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 40);
  v4 = *a2;
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 33);
  v8 = *(a2 + 40);
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    v26 = *(a1 + 24);
    v24 = *(a1 + 33);
    v25 = *(a1 + 32);
    v21 = *(a2 + 48);
    v22 = *(a1 + 48);
    v19 = *(a1 + 64);
    v20 = *(a2 + 49);
    v16 = *(a2 + 56);
    v17 = *(a1 + 56);
    v23 = *(a1 + 49);
    v18 = *(a2 + 64);
    sub_20CECF940(0, &qword_28111FED0);
    v9 = v4;
    v10 = v2;
    v11 = sub_20D5683F8();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v26 = *(a1 + 24);
    v24 = *(a1 + 33);
    v25 = *(a1 + 32);
    v21 = *(a2 + 48);
    v22 = *(a1 + 48);
    v19 = *(a1 + 64);
    v20 = *(a2 + 49);
    v16 = *(a2 + 56);
    v17 = *(a1 + 56);
    v23 = *(a1 + 49);
    v18 = *(a2 + 64);
    if (v4)
    {
      return 0;
    }
  }

  sub_20CECF940(0, &qword_28111FB10);
  if ((sub_20D5683F8() & 1) == 0)
  {
    return 0;
  }

  v12 = sub_20D5683F8();
  result = 0;
  if ((v12 & 1) != 0 && v26 == v5 && ((v25 ^ v6) & 1) == 0 && ((v24 ^ v7) & 1) == 0)
  {
    if (v22)
    {
      result = 0;
      v14 = v23;
      if (!v21)
      {
        return result;
      }
    }

    else
    {
      v14 = v23;
      if (v21)
      {
        return 0;
      }

      result = 0;
      if (v3 != v8)
      {
        return result;
      }
    }

    if ((v14 ^ v20))
    {
      return result;
    }

    if ((v19 & 1) == 0)
    {
      v15 = v18;
      if (v17 != v16)
      {
        v15 = 1;
      }

      return (v15 & 1) == 0;
    }

    return (v18 & 1) != 0;
  }

  return result;
}

uint64_t _s6HomeUI28TileCellContentConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v106 = *(a1 + 32);
  v107 = v3;
  v108 = *(a1 + 64);
  v4 = *(a1 + 16);
  v105[0] = *a1;
  v105[1] = v4;
  v5 = *(a1 + 88);
  v6 = *(a1 + 120);
  v111 = *(a1 + 104);
  v112 = v6;
  v113 = *(a1 + 136);
  v109 = *(a1 + 72);
  v110 = v5;
  v7 = *(a1 + 192);
  v116 = *(a1 + 176);
  v117 = v7;
  v118 = *(a1 + 208);
  v8 = *(a1 + 160);
  v114 = *(a1 + 144);
  v115 = v8;
  v9 = *(a1 + 232);
  v119 = *(a1 + 216);
  v120 = v9;
  v121[0] = *(a1 + 248);
  *(v121 + 9) = *(a1 + 257);
  v57 = *(a1 + 273);
  v10 = *(a1 + 288);
  v56 = *(a1 + 280);
  v55 = *(a1 + 432);
  v130 = *(a1 + 424);
  v11 = *(a1 + 408);
  v128 = *(a1 + 392);
  v129 = v11;
  v12 = *(a1 + 376);
  v126 = *(a1 + 360);
  v127 = v12;
  v13 = *(a1 + 344);
  v124 = *(a1 + 328);
  v125 = v13;
  v14 = *(a1 + 312);
  v122 = *(a1 + 296);
  v123 = v14;
  v15 = *(a2 + 16);
  v16 = *(a2 + 48);
  v132 = *(a2 + 32);
  v133 = v16;
  v134 = *(a2 + 64);
  v17 = *(a2 + 16);
  v131[0] = *a2;
  v131[1] = v17;
  v18 = *(a2 + 88);
  v19 = *(a2 + 120);
  v137 = *(a2 + 104);
  v138 = v19;
  v139 = *(a2 + 136);
  v135 = *(a2 + 72);
  v136 = v18;
  v20 = *(a2 + 192);
  v142 = *(a2 + 176);
  v143 = v20;
  v144 = *(a2 + 208);
  v21 = *(a2 + 160);
  v140 = *(a2 + 144);
  v141 = v21;
  v22 = *(a2 + 232);
  v145 = *(a2 + 216);
  v146 = v22;
  v147[0] = *(a2 + 248);
  *(v147 + 9) = *(a2 + 257);
  v23 = *(a2 + 273);
  v24 = *(a2 + 280);
  v25 = *(a2 + 288);
  v54 = *(a2 + 432);
  v156 = *(a2 + 424);
  v26 = *(a2 + 408);
  v154 = *(a2 + 392);
  v155 = v26;
  v27 = *(a2 + 376);
  v152 = *(a2 + 360);
  v153 = v27;
  v28 = *(a2 + 344);
  v150 = *(a2 + 328);
  v151 = v28;
  v29 = *(a2 + 312);
  v148 = *(a2 + 296);
  v149 = v29;
  v51 = *(a1 + 440);
  v50 = *(a2 + 456);
  v48 = *(a2 + 440);
  v52 = *(a1 + 488);
  v53 = *(a1 + 456);
  v49 = *(a1 + 472);
  v30 = *(a1 + 48);
  __src[2] = v106;
  __src[3] = v30;
  v31 = *(a2 + 488);
  __src[0] = v105[0];
  __src[1] = v2;
  v32 = *(a2 + 48);
  __dst[2] = v132;
  __dst[3] = v32;
  v46 = *(a2 + 472);
  v47 = v31;
  LOBYTE(__src[4]) = *(a1 + 64);
  LOBYTE(__dst[4]) = *(a2 + 64);
  __dst[0] = v131[0];
  __dst[1] = v15;
  sub_20D012698(v105, v91);
  sub_20D012698(v131, v91);
  v33 = _s6HomeUI28TileCellContentConfigurationV5LabelV2eeoiySbAE_AEtFZ_0(__src, __dst);
  v157[2] = __dst[2];
  v157[3] = __dst[3];
  v158 = __dst[4];
  v157[0] = __dst[0];
  v157[1] = __dst[1];
  sub_20D0126D0(v157);
  v159[2] = __src[2];
  v159[3] = __src[3];
  v160 = __src[4];
  v159[0] = __src[0];
  v159[1] = __src[1];
  sub_20D0126D0(v159);
  if (!v33)
  {
    goto LABEL_6;
  }

  __src[2] = v111;
  __src[3] = v112;
  LOBYTE(__src[4]) = v113;
  __src[0] = v109;
  __src[1] = v110;
  __dst[2] = v137;
  __dst[3] = v138;
  LOBYTE(__dst[4]) = v139;
  __dst[0] = v135;
  __dst[1] = v136;
  sub_20D012698(&v109, v91);
  sub_20D012698(&v135, v91);
  v34 = _s6HomeUI28TileCellContentConfigurationV5LabelV2eeoiySbAE_AEtFZ_0(__src, __dst);
  v101[2] = __dst[2];
  v101[3] = __dst[3];
  v102 = __dst[4];
  v101[0] = __dst[0];
  v101[1] = __dst[1];
  sub_20D0126D0(v101);
  v103[2] = __src[2];
  v103[3] = __src[3];
  v104 = __src[4];
  v103[0] = __src[0];
  v103[1] = __src[1];
  sub_20D0126D0(v103);
  if (!v34)
  {
    goto LABEL_6;
  }

  __src[2] = v116;
  __src[3] = v117;
  LOBYTE(__src[4]) = v118;
  __src[0] = v114;
  __src[1] = v115;
  __dst[2] = v142;
  __dst[3] = v143;
  LOBYTE(__dst[4]) = v144;
  __dst[0] = v140;
  __dst[1] = v141;
  sub_20D012698(&v114, v91);
  sub_20D012698(&v140, v91);
  v35 = _s6HomeUI28TileCellContentConfigurationV5LabelV2eeoiySbAE_AEtFZ_0(__src, __dst);
  v97[2] = __dst[2];
  v97[3] = __dst[3];
  v98 = __dst[4];
  v97[0] = __dst[0];
  v97[1] = __dst[1];
  sub_20D0126D0(v97);
  v99[2] = __src[2];
  v99[3] = __src[3];
  v100 = __src[4];
  v99[0] = __src[0];
  v99[1] = __src[1];
  sub_20D0126D0(v99);
  if (!v35)
  {
    goto LABEL_6;
  }

  __src[0] = v119;
  __src[1] = v120;
  __src[2] = v121[0];
  *(&__src[2] + 9) = *(v121 + 9);
  __dst[0] = v145;
  __dst[1] = v146;
  __dst[2] = v147[0];
  *(&__dst[2] + 9) = *(v147 + 9);
  sub_20D013178(&v119, v91);
  sub_20D013178(&v145, v91);
  v36 = _s6HomeUI28TileCellContentConfigurationV5GlyphV2eeoiySbAE_AEtFZ_0(__src, __dst);
  v93[0] = __dst[0];
  v93[1] = __dst[1];
  v94[0] = __dst[2];
  *(v94 + 9) = *(&__dst[2] + 9);
  sub_20D0131B0(v93);
  v95[0] = __src[0];
  v95[1] = __src[1];
  v96[0] = __src[2];
  *(v96 + 9) = *(&__src[2] + 9);
  sub_20D0131B0(v95);
  if ((v36 & 1) == 0 || v57 != v23)
  {
    goto LABEL_6;
  }

  if (v56)
  {
    if (!v24)
    {
      goto LABEL_6;
    }

    sub_20CECF940(0, &qword_28111FB60);
    v39 = v24;
    v40 = v56;
    v41 = sub_20D5683F8();

    if ((v41 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v24)
  {
    goto LABEL_6;
  }

  if (v10 != v25)
  {
    goto LABEL_6;
  }

  __src[6] = v128;
  __src[7] = v129;
  __src[2] = v124;
  __src[3] = v125;
  __src[4] = v126;
  __src[5] = v127;
  __src[0] = v122;
  __src[1] = v123;
  *(&__src[13] + 8) = v153;
  *(&__src[14] + 8) = v154;
  *(&__src[15] + 8) = v155;
  *(&__src[9] + 8) = v149;
  *(&__src[10] + 8) = v150;
  *(&__src[11] + 8) = v151;
  *(&__src[12] + 8) = v152;
  *(&__src[8] + 8) = v148;
  v91[6] = v128;
  v91[7] = v129;
  v91[2] = v124;
  v91[3] = v125;
  v91[4] = v126;
  v91[5] = v127;
  *&__src[8] = v130;
  *(&__src[16] + 1) = v156;
  v92 = v130;
  v91[0] = v122;
  v91[1] = v123;
  if (sub_20CFF743C(v91) == 1)
  {
    __dst[6] = *(&__src[14] + 8);
    __dst[7] = *(&__src[15] + 8);
    *&__dst[8] = *(&__src[16] + 1);
    __dst[2] = *(&__src[10] + 8);
    __dst[3] = *(&__src[11] + 8);
    __dst[4] = *(&__src[12] + 8);
    __dst[5] = *(&__src[13] + 8);
    __dst[0] = *(&__src[8] + 8);
    __dst[1] = *(&__src[9] + 8);
    if (sub_20CFF743C(__dst) == 1)
    {
      v87 = __src[6];
      v88 = __src[7];
      v89 = *&__src[8];
      v83 = __src[2];
      v84 = __src[3];
      v85 = __src[4];
      v86 = __src[5];
      v81 = __src[0];
      v82 = __src[1];
      sub_20CEF9178(&v122, &v71, &qword_27C81F350);
      sub_20CEF9178(&v148, &v71, &qword_27C81F350);
      sub_20CEF928C(&v81, &qword_27C81F350);
      goto LABEL_22;
    }

    sub_20CEF9178(&v122, &v81, &qword_27C81F350);
    sub_20CEF9178(&v148, &v81, &qword_27C81F350);
LABEL_20:
    memcpy(__dst, __src, sizeof(__dst));
    sub_20CEF928C(__dst, &unk_27C81F498);
    goto LABEL_6;
  }

  v87 = __src[6];
  v88 = __src[7];
  v83 = __src[2];
  v84 = __src[3];
  v85 = __src[4];
  v86 = __src[5];
  v81 = __src[0];
  v82 = __src[1];
  v77 = __src[6];
  v78 = __src[7];
  v73 = __src[2];
  v74 = __src[3];
  v89 = *&__src[8];
  v79 = *&__src[8];
  v75 = __src[4];
  v76 = __src[5];
  v71 = __src[0];
  v72 = __src[1];
  __dst[6] = *(&__src[14] + 8);
  __dst[7] = *(&__src[15] + 8);
  *&__dst[8] = *(&__src[16] + 1);
  __dst[2] = *(&__src[10] + 8);
  __dst[3] = *(&__src[11] + 8);
  __dst[4] = *(&__src[12] + 8);
  __dst[5] = *(&__src[13] + 8);
  __dst[0] = *(&__src[8] + 8);
  __dst[1] = *(&__src[9] + 8);
  if (sub_20CFF743C(__dst) == 1)
  {
    v68 = __src[6];
    v69 = __src[7];
    v70 = *&__src[8];
    v64 = __src[2];
    v65 = __src[3];
    v66 = __src[4];
    v67 = __src[5];
    v62 = __src[0];
    v63 = __src[1];
    sub_20CEF9178(&v122, v60, &qword_27C81F350);
    sub_20CEF9178(&v148, v60, &qword_27C81F350);
    sub_20CEF9178(&v81, v60, &qword_27C81F350);
    sub_20CFF7478(&v62);
    goto LABEL_20;
  }

  v68 = *(&__src[14] + 8);
  v69 = *(&__src[15] + 8);
  v70 = *(&__src[16] + 1);
  v64 = *(&__src[10] + 8);
  v65 = *(&__src[11] + 8);
  v66 = *(&__src[12] + 8);
  v67 = *(&__src[13] + 8);
  v62 = *(&__src[8] + 8);
  v63 = *(&__src[9] + 8);
  sub_20CEF9178(&v122, v60, &qword_27C81F350);
  sub_20CEF9178(&v148, v60, &qword_27C81F350);
  sub_20CEF9178(&v81, v60, &qword_27C81F350);
  v42 = _s6HomeUI12BaseIconViewC13ConfigurationV2eeoiySbAE_AEtFZ_0(&v71, &v62);
  v58[6] = v68;
  v58[7] = v69;
  v59 = v70;
  v58[2] = v64;
  v58[3] = v65;
  v58[4] = v66;
  v58[5] = v67;
  v58[0] = v62;
  v58[1] = v63;
  sub_20CFF7478(v58);
  v60[6] = v77;
  v60[7] = v78;
  v61 = v79;
  v60[2] = v73;
  v60[3] = v74;
  v60[4] = v75;
  v60[5] = v76;
  v60[0] = v71;
  v60[1] = v72;
  sub_20CFF7478(v60);
  v68 = __src[6];
  v69 = __src[7];
  v70 = *&__src[8];
  v64 = __src[2];
  v65 = __src[3];
  v66 = __src[4];
  v67 = __src[5];
  v62 = __src[0];
  v63 = __src[1];
  sub_20CEF928C(&v62, &qword_27C81F350);
  if ((v42 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_22:
  if (v55)
  {
    if (v54)
    {
      sub_20CECF940(0, &qword_28111FB70);
      v43 = v54;
      v44 = v55;
      v45 = sub_20D5683F8();

      if (v45)
      {
        goto LABEL_27;
      }
    }

LABEL_6:
    v37 = 0;
    return v37 & 1;
  }

  if (v54)
  {
    goto LABEL_6;
  }

LABEL_27:
  if (vaddv_s16(vand_s8(vmovn_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v51, v48), vceqq_f64(v53, v50)), vuzp1q_s32(vceqq_f64(v49, v46), vceqq_f64(v52, v47)))), 0x8000400020001)) == 15)
  {
    v37 = -1;
  }

  else
  {
    v37 = 0;
  }

  return v37 & 1;
}

id sub_20D013B94(void *a1)
{
  v1 = [a1 latestResults];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_20D567758();

  v4 = sub_20D567838();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_20CEED668(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_20CED43FC(*(v3 + 56) + 32 * v6, v12);

  sub_20CECF940(0, &qword_28111FB20);
  if (swift_dynamicCast())
  {
    v9 = [v11 unsignedIntegerValue];

    return v9;
  }

  return 0;
}

uint64_t sub_20D013CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D567838();
  v6 = v5;
  if (v4 == sub_20D567838() && v6 == v7)
  {

    return 1;
  }

  else
  {
    v9 = sub_20D568BF8();

    if (v9)
    {
      return 1;
    }

    else if (a2 == 1 && a1 == 1)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t sub_20D013DD8()
{
  result = qword_27C81F460;
  if (!qword_27C81F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F460);
  }

  return result;
}

unint64_t sub_20D013E30()
{
  result = qword_27C81F468;
  if (!qword_27C81F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F468);
  }

  return result;
}

unint64_t sub_20D013E84(uint64_t a1)
{
  result = sub_20D009378();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20D013EB0()
{
  result = qword_27C81F478;
  if (!qword_27C81F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F478);
  }

  return result;
}

unint64_t sub_20D013F08()
{
  result = qword_27C81F480;
  if (!qword_27C81F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F480);
  }

  return result;
}

unint64_t sub_20D013F60()
{
  result = qword_27C81F488;
  if (!qword_27C81F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F488);
  }

  return result;
}

uint64_t sub_20D013FB4(uint64_t a1, uint64_t a2)
{
  result = sub_20D01400C(&qword_27C81F490, a2, type metadata accessor for __TileCellContentConfiguration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20D01400C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6HomeUI12BaseIconViewC13ConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20D014074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 504))
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

uint64_t sub_20D0140BC(uint64_t result, int a2, int a3)
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
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
      *(result + 504) = 1;
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

    *(result + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_20D0141B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_20D0141F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20D014278(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20D0142C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20D0143BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20D0143DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t dispatch thunk of __TileCellContentConfiguration.updated(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xF8))();
}

uint64_t sub_20D0147E8(uint64_t a1, uint64_t *a2)
{
  sub_20CECF7A0(a1, v8);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_configuration;
  swift_beginAccess();
  sub_20CECF7A0(v3 + v4, v7);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v3 + v4), v8);
  swift_endAccess();
  sub_20CECF7A0(v7, v6);
  sub_20D0155C4(v6);
  sub_20CEF928C(v6, &qword_27C81C790);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_20D0148A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_configuration;
  swift_beginAccess();
  return sub_20CECF7A0(v1 + v3, a1);
}

uint64_t sub_20D014900(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_configuration;
  swift_beginAccess();
  sub_20CECF7A0(v1 + v3, v6);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v1 + v3), a1);
  swift_endAccess();
  sub_20CECF7A0(v6, v5);
  sub_20D0155C4(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_20CEF928C(v5, &qword_27C81C790);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

void (*sub_20D014BD8(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_configuration;
  *(v3 + 184) = v1;
  *(v3 + 192) = v5;
  swift_beginAccess();
  sub_20CECF7A0(v1 + v5, v4);
  return sub_20D014C70;
}

void sub_20D014C70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 184);
  v4 = *(*a1 + 192);
  if (a2)
  {
    sub_20CECF7A0(*a1, (v2 + 5));
    sub_20CECF7A0(v3 + v4, (v2 + 10));
    swift_beginAccess();
    __swift_assign_boxed_opaque_existential_1((v3 + v4), v2 + 5);
    swift_endAccess();
    sub_20CECF7A0((v2 + 10), (v2 + 15));
    sub_20D0155C4((v2 + 15));
    sub_20CEF928C((v2 + 15), &qword_27C81C790);
    __swift_destroy_boxed_opaque_existential_1((v2 + 10));
  }

  else
  {
    sub_20CECF7A0(v3 + v4, (v2 + 5));
    swift_beginAccess();
    __swift_assign_boxed_opaque_existential_1((v3 + v4), v2);
    swift_endAccess();
    sub_20CECF7A0((v2 + 5), (v2 + 10));
    sub_20D0155C4((v2 + 10));
    sub_20CEF928C((v2 + 10), &qword_27C81C790);
  }

  __swift_destroy_boxed_opaque_existential_1((v2 + 5));
  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

uint64_t sub_20D014F00()
{
  v4 = MEMORY[0x277D84F90];
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_activityIndicator);
  if ([v1 isHidden])
  {
    v1 = *(v0 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_badgeLabel);
    if ([v1 isHidden])
    {
      return MEMORY[0x277D84F90];
    }
  }

  v3 = v1;
  MEMORY[0x20F31CEE0]();
  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  return v4;
}

id sub_20D015004(void *a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for TileCellContentView();
  objc_msgSendSuper2(&v18, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    v13 = *&v1[OBJC_IVAR____TtC6HomeUI19TileCellContentView_activityIndicator];
    v14 = *&v1[OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel];
    result = [v14 font];
    if (result)
    {
      v15 = result;
      [result lineHeight];
      v17 = v16;

      [v13 _setCustomWidth_];
      [v1 setNeedsUpdateConstraints];
      return [v1 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_20D567838();
  v8 = v7;
  if (v6 == sub_20D567838() && v8 == v9)
  {
  }

  v11 = sub_20D568BF8();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

double sub_20D01524C(double a1, double a2, float a3, float a4)
{
  swift_getObjectType();
  v35.receiver = v4;
  v35.super_class = type metadata accessor for TileCellContentView();
  *&v9 = a3;
  *&v10 = a4;
  objc_msgSendSuper2(&v35, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_, a1, a2, v9, v10);
  v13 = v12;
  v14 = v11;
  if (v11 < 1.0 || v11 >= 1.79769313e308)
  {
    v16 = sub_20D567EA8();
    if (qword_28111FAD0 != -1)
    {
      swift_once();
    }

    v17 = qword_281120C08;
    if (os_log_type_enabled(qword_281120C08, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136315394;
      v20 = sub_20D568E18();
      v22 = sub_20CEE913C(v20, v21, &v34);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v14;
      _os_log_impl(&dword_20CEB6000, v17, v16, "%s: systemLayoutSize superclass returned unrealistic height %f", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x20F31FC70](v19, -1, -1);
      MEMORY[0x20F31FC70](v18, -1, -1);
    }

    [v4 frame];
    Height = CGRectGetHeight(v36);
    if (Height > 1.0)
    {
      v14 = Height;
    }

    else
    {
      v14 = 1.0;
    }
  }

  if (v13 < 1.0 || v14 >= 1.79769313e308)
  {
    v25 = sub_20D567EA8();
    if (qword_28111FAD0 != -1)
    {
      swift_once();
    }

    v26 = qword_281120C08;
    if (os_log_type_enabled(qword_281120C08, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315394;
      v29 = sub_20D568E18();
      v31 = sub_20CEE913C(v29, v30, &v34);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v13;
      _os_log_impl(&dword_20CEB6000, v26, v25, "%s: systemLayoutSize superclass returned unrealistic width %f", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x20F31FC70](v28, -1, -1);
      MEMORY[0x20F31FC70](v27, -1, -1);
    }

    [v4 frame];
    Width = CGRectGetWidth(v37);
    if (Width > 1.0)
    {
      return Width;
    }

    else
    {
      return 1.0;
    }
  }

  return v13;
}

id sub_20D0155C4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_configuration;
  swift_beginAccess();
  sub_20CECF7A0(&v2[v4], v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
  result = swift_dynamicCast();
  if (result)
  {
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v31, __src, sizeof(v31));
    sub_20D00DBB4(&unk_2823CE658);
    sub_20D0172BC(&unk_2823CE678);
    v6 = sub_20D5677F8();

    [v2 setAccessibilityIdentifier_];

    v7 = [v2 effectiveUserInterfaceLayoutDirection];
    v8 = *&v2[OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel];
    [v8 setAttributedText_];
    [v8 setTextColor_];
    v9 = *&__dst[16];
    if (__dst[48])
    {
      v10 = *&__dst[16];
    }

    else
    {
      v11 = *&__dst[40];
      [*&__dst[16] pointSize];
      v10 = [v9 fontWithSize_];
    }

    v13 = v10;
    [v8 setFont_];

    *&v31[32] = *&__dst[32];
    *&v31[48] = *&__dst[48];
    v31[64] = __dst[64];
    *&v31[16] = *&__dst[16];
    *v31 = *__dst;
    [v8 setHidden_];
    [v8 setNumberOfLines_];
    if (v7 == 1)
    {
      v14 = 10;
    }

    else
    {
      v14 = 9;
    }

    [v8 setContentMode_];
    [v8 setMarqueeEnabled_];
    v15 = *&v2[OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel];
    [v15 setAttributedText_];
    [v15 setTextColor_];
    v16 = *&__dst[88];
    if (__dst[120])
    {
      v17 = *&__dst[88];
    }

    else
    {
      v18 = *&__dst[112];
      [*&__dst[88] pointSize];
      v17 = [v16 fontWithSize_];
    }

    v20 = v17;
    [v15 setFont_];

    *&v31[32] = *&__dst[104];
    *&v31[48] = *&__dst[120];
    v31[64] = __dst[136];
    *&v31[16] = *&__dst[88];
    *v31 = *&__dst[72];
    [v15 setHidden_];
    [v15 setNumberOfLines_];
    [v15 setContentMode_];
    [v15 setMarqueeEnabled_];
    memcpy(v31, __dst, sizeof(v31));
    sub_20D0161E4(v31);
    memcpy(v31, __dst, sizeof(v31));
    sub_20D015D10(v31);
    memcpy(v31, __dst, sizeof(v31));
    sub_20D015AF8(v31);
    v21 = *&v2[OBJC_IVAR____TtC6HomeUI19TileCellContentView_activityIndicator];
    v22 = *&v2[OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel];
    result = [v22 font];
    if (result)
    {
      v23 = result;
      [result lineHeight];
      v25 = v24;

      [v21 _setCustomWidth_];
      sub_20CEF9178(a1, v28, &qword_27C81C790);
      if (v29)
      {
        if (swift_dynamicCast())
        {
          memcpy(v26, v27, sizeof(v26));
          CGSizeMake(v26);
          memcpy(v31, v26, sizeof(v31));
        }

        else
        {
          sub_20D009538(v31);
        }

        memcpy(v30, v31, sizeof(v30));
      }

      else
      {
        sub_20CEF928C(v28, &qword_27C81C790);
        sub_20D009538(v30);
      }

      TileCellContentView.setNeedsLayoutIfNeeded(oldConfiguration:)(v30);
      sub_20CEFFA00(__dst);
      memcpy(v31, v30, sizeof(v31));
      return sub_20CEF928C(v31, &qword_27C81F3C8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_20D015AF8(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = *(v1 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView);
  v3 = &v2[OBJC_IVAR___HUBaseIconView_configuration];
  swift_beginAccess();
  v25 = *v3;
  v4 = *(v3 + 1);
  v5 = *(v3 + 2);
  v6 = *(v3 + 3);
  v29 = *(v3 + 4);
  v28 = v6;
  v27 = v5;
  v26 = v4;
  v7 = *(v3 + 5);
  v8 = *(v3 + 6);
  v9 = *(v3 + 7);
  v33 = *(v3 + 16);
  v32 = v9;
  v31 = v8;
  v30 = v7;
  v34[0] = *v3;
  v10 = *(v3 + 1);
  v11 = *(v3 + 2);
  v12 = *(v3 + 4);
  v34[3] = *(v3 + 3);
  v34[4] = v12;
  v34[1] = v10;
  v34[2] = v11;
  v13 = *(v3 + 5);
  v14 = *(v3 + 6);
  v15 = *(v3 + 7);
  v35 = *(v3 + 16);
  v34[6] = v14;
  v34[7] = v15;
  v34[5] = v13;
  *v3 = *&__dst[37];
  v16 = *&__dst[39];
  v17 = *&__dst[41];
  v18 = *&__dst[45];
  *(v3 + 3) = *&__dst[43];
  *(v3 + 4) = v18;
  *(v3 + 1) = v16;
  *(v3 + 2) = v17;
  v19 = *&__dst[47];
  v20 = *&__dst[49];
  v21 = *&__dst[51];
  *(v3 + 16) = __dst[53];
  *(v3 + 6) = v20;
  *(v3 + 7) = v21;
  *(v3 + 5) = v19;
  sub_20CEF9178(&__dst[37], v23, &qword_27C81F350);
  sub_20CEF9178(&v25, v23, &qword_27C81F350);
  sub_20CEF928C(v34, &qword_27C81F350);
  v23[6] = v31;
  v23[7] = v32;
  *&v23[8] = v33;
  v23[2] = v27;
  v23[3] = v28;
  v23[4] = v29;
  v23[5] = v30;
  v23[0] = v25;
  v23[1] = v26;
  sub_20D077000(v23);
  sub_20CEF928C(&v25, &qword_27C81F350);
  memcpy(v23, __dst, 0x1F8uLL);
  sub_20D00DBB4(&unk_2823CE628);
  sub_20D0172BC(&unk_2823CE648);
  v22 = sub_20D5677F8();

  [v2 setAccessibilityIdentifier_];
}

void sub_20D015D10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20D563DB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 152);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = *(a1 + 224);
  v45 = *(a1 + 232);
  v13 = *(a1 + 240);
  v14 = *(a1 + 248);
  v15 = *(a1 + 256);
  v16 = *(a1 + 264);
  v46 = *(a1 + 272);
  (*(v5 + 104))(v8, *MEMORY[0x277D15250], v4, v6);
  sub_20CF0448C();
  LOBYTE(a1) = sub_20D563978();
  (*(v5 + 8))(v8, v4);
  if (a1)
  {
    if ((v11 & 1) != 0 || (v17 = objc_opt_self(), (v18 = [v17 hu:v10 imageForDescriptionBadgeType:v9 tintColor:?]) == 0))
    {
      [*(v2 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_statusGlyph) setImage_];
    }

    else
    {
      v19 = v18;
      if ((v10 - 7) > 1)
      {
        [*(v2 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_statusGlyph) setImage_];
      }

      else
      {
        v20 = objc_opt_self();
        v21 = [v20 configurationWithFont_];
        sub_20CECF940(0, &qword_28111FB60);
        v22 = sub_20D567A58();
        v23 = [v20 configurationWithPaletteColors_];

        v44 = v23;
        v24 = [v23 configurationByApplyingConfiguration_];
        v25 = v19;
        v26 = [v25 accessibilityIdentifier];
        if (v26)
        {
          v27 = v26;
          sub_20D567838();
        }

        v28 = v24;
        v29 = sub_20D5677F8();

        v30 = [v17 systemImageNamed:v29 withConfiguration:v28];

        v31 = *(v2 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_statusGlyph);
        [v31 setImage_];
        v32 = [v31 image];
        v33 = v25;
        if (v32)
        {
          v34 = v32;
          v33 = [v25 accessibilityIdentifier];

          [v34 setAccessibilityIdentifier_];
        }

        v35 = [v31 layer];
        [v35 setShadowColor_];

        v36 = [v31 layer];
        LODWORD(v37) = v13;
        [v36 setShadowOpacity_];

        v38 = [v31 layer];
        [v38 setShadowOffset_];

        v39 = [v31 layer];
        [v39 setShadowRadius_];

        v40 = [v31 layer];
        [v40 setMasksToBounds_];

        v41 = *(v2 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_badgeLabel);
        v42 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
        [v41 setAttributedText_];
      }
    }
  }
}

void sub_20D0161E4(__int128 *a1)
{
  v3 = sub_20D563DB8();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[7];
  v177 = a1[6];
  v178 = v6;
  v179 = a1[8];
  v7 = a1[3];
  v173 = a1[2];
  v174 = v7;
  v8 = a1[5];
  v175 = a1[4];
  v176 = v8;
  v9 = a1[1];
  v171 = *a1;
  v172 = v9;
  v11 = *(a1 + 193);
  v10 = a1 + 193;
  v12 = *(v10 - 49);
  v13 = *(v10 - 41);
  v14 = *(v10 - 33);
  v15 = *(v10 - 25);
  v102 = *(v10 - 17);
  v16 = *(v10 - 15);
  v97 = *(v10 - 16);
  v169 = v16;
  v170 = *(v10 - 11);
  v99 = *(v10 - 9);
  v17 = *(v10 - 1);
  v168[0] = v11;
  *(v168 + 3) = *(v10 + 3);
  v101 = *(v10 + 7);
  v100 = *(v10 + 15);
  v18 = *(v10 + 32);
  v164 = *(v10 + 16);
  v165 = v18;
  v19 = *(v10 + 64);
  v166 = *(v10 + 48);
  v167 = v19;
  v95 = *(v10 + 80);
  v162 = *(v10 + 81);
  v163 = *(v10 + 85);
  v88 = *(v10 + 87);
  v20 = *(v10 + 111);
  v148 = *(v10 + 95);
  v149 = v20;
  v21 = *(v10 + 127);
  v22 = *(v10 + 143);
  v23 = *(v10 + 175);
  v152 = *(v10 + 159);
  v153 = v23;
  v150 = v21;
  v151 = v22;
  v24 = *(v10 + 191);
  v25 = *(v10 + 207);
  v26 = *(v10 + 239);
  v156 = *(v10 + 223);
  v157 = v26;
  v154 = v24;
  v155 = v25;
  v27 = *(v10 + 255);
  v28 = *(v10 + 271);
  v29 = *(v10 + 287);
  v161 = *(v10 + 303);
  v159 = v28;
  v160 = v29;
  v158 = v27;
  v91 = v1;
  v30 = *&v1[OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel];
  v93 = v12;
  v90 = v12;
  [v30 setAttributedText_];
  v31 = v13;
  v94 = v30;
  v96 = v31;
  [v30 setTextColor_];
  v98 = v17;
  v84 = v5;
  if (v17)
  {
    v32 = v14;
  }

  else
  {
    v33 = v99;
    [v14 pointSize];
    v32 = [v14 fontWithSize_];
  }

  v35 = v32;
  v92 = v14;
  v36 = v94;
  [v94 setFont_];

  v37 = v93;
  v38 = v96;
  *&v103 = v93;
  *(&v103 + 1) = v96;
  *&v104 = v14;
  *(&v104 + 1) = v15;
  LOBYTE(v105) = v102;
  v39 = v97;
  BYTE1(v105) = v97;
  *(&v105 + 2) = *(v10 - 15);
  v87 = (v10 - 15);
  WORD3(v105) = *(v10 - 11);
  *(&v105 + 1) = v99;
  LOBYTE(v106) = v98;
  *(&v106 + 1) = *v10;
  DWORD1(v106) = *(v10 + 3);
  *(&v106 + 1) = v101;
  LOBYTE(v107) = v100;
  [v36 setHidden_];
  [v36 setNumberOfLines_];
  v40 = v91;
  if ([v91 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v41 = 10;
  }

  else
  {
    v41 = 9;
  }

  [v36 setContentMode_];
  [v36 setMarqueeEnabled_];
  v42 = *&v40[OBJC_IVAR____TtC6HomeUI19TileCellContentView_badgeLabel];
  [v42 setTextColor_];
  v43 = v92;
  [v42 setFont_];
  [v42 setNumberOfLines_];
  LODWORD(v44) = 1148846080;
  [v42 setContentCompressionResistancePriority:0 forAxis:v44];
  v45 = *&v40[OBJC_IVAR____TtC6HomeUI19TileCellContentView_activityIndicator];
  LODWORD(v46) = 1148846080;
  [v45 setContentCompressionResistancePriority:0 forAxis:v46];
  if (v95)
  {
    *&v103 = v37;
    *(&v103 + 1) = v38;
    *&v104 = v43;
    *(&v104 + 1) = v15;
    LOBYTE(v105) = v102;
    BYTE1(v105) = v97;
    *(&v105 + 2) = *v87;
    WORD3(v105) = v87[2];
    *(&v105 + 1) = v99;
    LOBYTE(v106) = v98;
    *(&v106 + 1) = *v10;
    DWORD1(v106) = *(v10 + 3);
    *(&v106 + 1) = v101;
    LOBYTE(v107) = v100;
    if ((sub_20D0174F4() & 1) == 0)
    {
      v51 = [v45 superview];
      if (v51)
      {
      }

      else
      {
        [v91 addSubview_];
      }

      v49 = v101;
      LODWORD(v50) = v100;
      if (([v45 isAnimating] & 1) == 0)
      {
        v52 = v38;
        if (v88)
        {
          v52 = v88;
        }

        [v45 setColor_];

        [v45 setHidden_];
        [v45 startAnimating];
        v47 = 1;
        v48 = v99;
        goto LABEL_21;
      }

      v47 = 1;
LABEL_17:

      v48 = v99;
      goto LABEL_22;
    }
  }

  if (([v45 isAnimating] & 1) == 0)
  {
    v47 = 0;
    v49 = v101;
    LODWORD(v50) = v100;
    goto LABEL_17;
  }

  [v45 stopAnimating];
  [v45 setHidden_];
  v47 = 0;
  v48 = v99;
  v49 = v101;
LABEL_21:
  LODWORD(v50) = v100;
LABEL_22:
  *&v103 = v37;
  *(&v103 + 1) = v38;
  *&v104 = v43;
  *(&v104 + 1) = v15;
  v89 = v15;
  LOBYTE(v105) = v102;
  BYTE1(v105) = v97;
  *(&v105 + 2) = v169;
  WORD3(v105) = v170;
  *(&v105 + 1) = v48;
  LOBYTE(v106) = v98;
  *(&v106 + 1) = v168[0];
  DWORD1(v106) = *(v168 + 3);
  *(&v106 + 1) = v49;
  LOBYTE(v107) = v50;
  if (sub_20D0174F4())
  {
    v53 = 0;
    if ((v47 | v50))
    {
      v54 = 1;
      v55 = v96;
      goto LABEL_35;
    }

    v55 = v96;
  }

  else
  {
    v55 = v96;
    if ((v50 & 1) != 0 || (v56 = [objc_opt_self() hu:v49 imageForDescriptionBadgeType:v96 tintColor:?]) == 0)
    {
      v53 = 0;
      if ((v47 | v50))
      {
        v54 = 1;
        goto LABEL_35;
      }
    }

    else
    {

      v54 = 1;
      v53 = 1;
      if (v47)
      {
        goto LABEL_35;
      }
    }
  }

  v57 = objc_opt_self();
  v50 = v101;
  v58 = [v57 hu:v101 imageForDescriptionBadgeType:v55 tintColor:?];
  if (v58)
  {

    *&v103 = v37;
    *(&v103 + 1) = v55;
    *&v104 = v43;
    *(&v104 + 1) = v89;
    LOBYTE(v105) = v102;
    BYTE1(v105) = v97;
    *(&v105 + 2) = v169;
    WORD3(v105) = v170;
    *(&v105 + 1) = v48;
    LOBYTE(v106) = v98;
    *(&v106 + 1) = v168[0];
    DWORD1(v106) = *(v168 + 3);
    *(&v106 + 1) = v50;
    v59 = v100;
    LOBYTE(v107) = v100;
    v54 = sub_20D0174F4();
    LOBYTE(v50) = v59;
    v55 = v96;
  }

  else
  {
    v54 = 1;
    LOBYTE(v50) = v100;
  }

LABEL_35:
  [v42 setHidden_];
  if ((v102 & 1) == 0 && ([v42 isHidden] & 1) == 0 && (v50 & 1) == 0)
  {
    v60 = [objc_opt_self() hu:v101 imageForDescriptionBadgeType:v55 tintColor:?];
    if (v60)
    {
      v61 = v60;
      v62 = [v42 superview];
      if (v62)
      {
      }

      else
      {
        [v91 addSubview_];
      }

      v63 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
      v91 = v63;
      v87 = v61;
      [v63 setImage_];
      v83 = [objc_opt_self() attributedStringWithAttachment_];
      [v42 setAttributedText_];
      v109 = v177;
      v110 = v178;
      v111 = v179;
      v105 = v173;
      v106 = v174;
      v107 = v175;
      v108 = v176;
      v103 = v171;
      v104 = v172;
      v112 = v37;
      v113 = v55;
      v114 = v43;
      v115 = v89;
      v116 = v102;
      v117 = v97;
      v118 = v169;
      v119 = v170;
      v120 = v48;
      v121 = v98;
      *v122 = v168[0];
      *&v122[3] = *(v168 + 3);
      v123 = v101;
      v124 = v100;
      v128 = v167;
      v127 = v166;
      v126 = v165;
      v125 = v164;
      v129 = v95;
      v130 = v162;
      v131 = v163;
      v132 = v88;
      v146 = v161;
      v144 = v159;
      v145 = v160;
      v142 = v157;
      v143 = v158;
      v140 = v155;
      v141 = v156;
      v138 = v153;
      v139 = v154;
      v136 = v151;
      v137 = v152;
      v134 = v149;
      v135 = v150;
      v133 = v148;
      sub_20D00DBB4(&unk_2823CE5C8);
      sub_20D0172BC(&unk_2823CE5E8);
      v64 = sub_20D5677F8();

      [v42 setAccessibilityIdentifier_];
    }
  }

  if (v53)
  {
    if (v37)
    {
      v65 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v66 = sub_20D5677F8();
      v67 = [v65 initWithString_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_20D5BA040;
      *(v68 + 32) = v90;
      v147 = v68;
      v70 = v84;
      v69 = v85;
      v71 = v86;
      (*(v85 + 104))(v84, *MEMORY[0x277D15250], v86);
      sub_20CF0448C();
      v90 = v90;
      LOBYTE(v65) = sub_20D563978();
      (*(v69 + 8))(v70, v71);
      if ((v65 & 1) == 0)
      {
        v72 = v67;
        MEMORY[0x20F31CEE0]();
        if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();
        v68 = v147;
      }

      v91 = v67;
      v73 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
      if (v68 >> 62)
      {
        goto LABEL_64;
      }

      for (i = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20D568768())
      {
        v75 = 0;
        while (1)
        {
          if ((v68 & 0xC000000000000001) != 0)
          {
            v76 = MEMORY[0x20F31DD20](v75, v68);
          }

          else
          {
            if (v75 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

            v76 = *(v68 + 8 * v75 + 32);
          }

          v77 = v76;
          v78 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            break;
          }

          [v73 appendAttributedString_];

          ++v75;
          if (v78 == i)
          {
            goto LABEL_65;
          }
        }

        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        ;
      }

LABEL_65:

      v80 = v94;
      [v94 setAttributedText_];
      [v80 setAllowsDefaultTighteningForTruncation_];
      v109 = v177;
      v110 = v178;
      v111 = v179;
      v105 = v173;
      v106 = v174;
      v107 = v175;
      v108 = v176;
      v103 = v171;
      v104 = v172;
      v112 = v93;
      v113 = v96;
      v114 = v92;
      v115 = v89;
      v116 = v102;
      v117 = v97;
      v118 = v169;
      v119 = v170;
      v120 = v99;
      v121 = v98;
      *v122 = v168[0];
      *&v122[3] = *(v168 + 3);
      v123 = v101;
      v124 = v100;
      v128 = v167;
      v127 = v166;
      v126 = v165;
      v125 = v164;
      v129 = v95;
      v130 = v162;
      v131 = v163;
      v132 = v88;
      v146 = v161;
      v144 = v159;
      v145 = v160;
      v142 = v157;
      v143 = v158;
      v140 = v155;
      v141 = v156;
      v138 = v153;
      v139 = v154;
      v136 = v151;
      v137 = v152;
      v134 = v149;
      v135 = v150;
      v133 = v148;
      sub_20D00DBB4(&unk_2823CE5F8);
      sub_20D0172BC(&unk_2823CE618);
      v81 = sub_20D5677F8();

      [v80 setAccessibilityIdentifier_];
    }
  }

  else
  {
    v79 = v90;
  }
}

id TileCellContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TileCellContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TileCellContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_20D01713C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_20D014BD8(v2);
  return sub_20CF52FA8;
}

void sub_20D017310()
{
  v1 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_activeLayoutConstraints) = 0;
  v3 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_statusGlyph;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_badgeLabel;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_activityIndicator;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v7 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView;
  type metadata accessor for BaseIconView();
  *(v0 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_20D568A58();
  __break(1u);
}

uint64_t sub_20D017464(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_20CF3B84C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_20D0174F4()
{
  if (*(v0 + 32))
  {
    return 1;
  }

  v2 = *v0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  if (v2 && ![v2 length])
  {
    v2 = 0;
  }

  else
  {
    v5 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BC4B0;
  if (v2)
  {
    v7 = sub_20CECF940(0, &qword_28111FED0);
    v8 = v2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(inited + 40) = 0;
    *(inited + 48) = 0;
  }

  *(inited + 32) = v8;
  *(inited + 56) = v7;
  if (v4)
  {
    v3 = 0;
    v9 = 0;
    *(inited + 72) = 0;
    *(inited + 80) = 0;
  }

  else
  {
    type metadata accessor for HFResultDisplayDescriptionBadgeType(0);
  }

  *(inited + 64) = v3;
  *(inited + 88) = v9;
  v10 = v2;
  sub_20CEF9178(inited + 32, v12, &qword_27C81BF00);
  if (v13)
  {
    v1 = 0;
  }

  else
  {
    sub_20CEF928C(v12, &qword_27C81BF00);
    sub_20CEF9178(inited + 64, v12, &qword_27C81BF00);
    v1 = v13 == 0;
  }

  sub_20CEF928C(v12, &qword_27C81BF00);

  return v1;
}

Swift::Void __swiftcall TileCellContentView.updateStaticConstraints()()
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20D5C27F0;
  v3 = [v0 layoutMarginsGuide];
  v4 = [v3 bottomAnchor];

  v5 = [v0 layoutMarginsGuide];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v6 multiplier:1.0];
  *(v2 + 32) = v7;
  v8 = [v0 layoutMarginsGuide];
  v9 = [v8 trailingAnchor];

  v10 = [v0 layoutMarginsGuide];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v11 multiplier:1.0];
  *(v2 + 40) = v12;
  sub_20CECF940(0, &qword_28111FEC0);
  v13 = sub_20D567A58();

  [v1 activateConstraints_];
}

Swift::Void __swiftcall TileCellContentView.updateActivityIndicatorSize()()
{
  v1 = *(v0 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_activityIndicator);
  v2 = *(v0 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel);
  v3 = [v2 font];
  if (v3)
  {
    v4 = v3;
    [v3 lineHeight];
    v6 = v5;

    v7 = v6 * [v2 numberOfLines] * 0.6;

    [v1 _setCustomWidth_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t TileCellContentView.setNeedsLayoutIfNeeded(oldConfiguration:)(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_configuration;
  swift_beginAccess();
  sub_20CECF7A0(v1 + v2, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
  result = swift_dynamicCast();
  if (result)
  {
    memcpy(v6, __srca, sizeof(v6));
    memcpy(v7, __dst, sizeof(v7));
    if (sub_20D009584(v7) == 1 || v6[36] == v7[36])
    {
      memcpy(v5, v6, sizeof(v5));
      memcpy(v4, __dst, sizeof(v4));
      if (sub_20D017BB4(v4))
      {
        [v1 setNeedsUpdateConstraints];
      }

      return sub_20CEFFA00(v6);
    }

    else
    {
      memcpy(v5, __dst, sizeof(v5));
      sub_20CFFCAE4(v5, v4);
      [v1 setNeedsUpdateConstraints];
      [v1 layoutIfNeeded];
      sub_20CEFFA00(v6);
      return sub_20CEF928C(__dst, &qword_27C81F3C8);
    }
  }

  return result;
}

uint64_t sub_20D017AE0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = sub_20D0174F4();
  if ((v6 ^ sub_20D0174F4()))
  {
    v7 = 1;
  }

  else
  {
    v8 = v5 & v3;
    v9 = v4 == v2;
    if (v3)
    {
      v9 = v5 & v3;
    }

    if ((v5 & 1) == 0)
    {
      v8 = v9;
    }

    v7 = v8 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_20D017BB4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *v1;
  v49 = v1[1];
  v4 = v1[3];
  v50 = v1[2];
  v51 = v4;
  v48 = v3;
  v54 = *(v1 + 88);
  v55 = *(v1 + 104);
  v56 = *(v1 + 120);
  v53 = *(v1 + 72);
  v5 = v1[10];
  v58 = v1[9];
  v6 = v1[11];
  v61 = v1[12];
  v60 = v6;
  v52 = *(v1 + 64);
  v57 = *(v1 + 136);
  v62 = *(v1 + 208);
  v59 = v5;
  v7 = *(v1 + 273);
  v8 = *(v1 + 36);
  memcpy(v63, __src, sizeof(v63));
  v9 = sub_20D009584(v63);
  v10 = 1;
  if (v9 != 1 && v8 == *&v63[288])
  {
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v38 = v48;
    v39 = v49;
    v35 = *&v63[32];
    v36 = *&v63[48];
    v37 = v63[64];
    v33 = *v63;
    v34 = *&v63[16];
    sub_20CEF9178(__dst, v31, &qword_27C81F3C8);
    sub_20D012698(&v48, v31);
    sub_20D012698(v63, v31);
    v11 = sub_20D017AE0(&v33);
    v43[2] = v35;
    v43[3] = v36;
    v44 = v37;
    v43[0] = v33;
    v43[1] = v34;
    sub_20D0126D0(v43);
    v45[2] = v40;
    v45[3] = v41;
    v46 = v42;
    v45[0] = v38;
    v45[1] = v39;
    sub_20D0126D0(v45);
    if (v11 & 1) != 0 || (v35 = v55, v36 = v56, v37 = v57, v33 = v53, v34 = v54, v28 = *&v63[104], v29 = *&v63[120], v30 = v63[136], v26 = *&v63[72], v27 = *&v63[88], sub_20D012698(&v53, &v21), sub_20D012698(&v63[72], &v21), v12 = sub_20D017AE0(&v26), v40 = v28, v41 = v29, v42 = v30, v38 = v26, v39 = v27, sub_20D0126D0(&v38), v31[2] = v35, v31[3] = v36, v32 = v37, v31[0] = v33, v31[1] = v34, sub_20D0126D0(v31), (v12))
    {
      sub_20CEF928C(__dst, &qword_27C81F3C8);
    }

    else
    {
      v23 = v60;
      v24 = v61;
      v25 = v62;
      v21 = v58;
      v22 = v59;
      v18 = *&v63[176];
      v19 = *&v63[192];
      v20 = v63[208];
      v16 = *&v63[144];
      v17 = *&v63[160];
      sub_20D012698(&v58, v15);
      sub_20D012698(&v63[144], v15);
      v14 = sub_20D017AE0(&v16);
      v28 = v18;
      v29 = v19;
      v30 = v20;
      v26 = v16;
      v27 = v17;
      sub_20D0126D0(&v26);
      v35 = v23;
      v36 = v24;
      v37 = v25;
      v33 = v21;
      v34 = v22;
      sub_20D0126D0(&v33);
      sub_20CEF928C(__dst, &qword_27C81F3C8);
      if ((v14 & 1) == 0)
      {
        v10 = v7 ^ v63[273];
        return v10 & 1;
      }
    }

    v10 = 1;
  }

  return v10 & 1;
}

Swift::Void __swiftcall TileCellContentView.updateConstraints()()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for TileCellContentView();
  objc_msgSendSuper2(&v33, sel_updateConstraints);
  v1 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_configuration;
  swift_beginAccess();
  sub_20CECF7A0(v0 + v1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_20D009538(__dst);
    v11 = 0;
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v5 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
    goto LABEL_13;
  }

  memcpy(v12, __src, 0x120uLL);
  v2 = v14;
  *&v12[49] = v21;
  *&v12[51] = v22;
  *&v12[53] = v23;
  *&v12[41] = v17;
  *&v12[43] = v18;
  *&v12[45] = v19;
  *&v12[47] = v20;
  *&v12[37] = v15;
  *&v12[39] = v16;
  v3 = v24;
  v4 = v25;
  v5 = v26;
  v6 = v27;
  v7 = v28;
  v8 = v29;
  v9 = v30;
  v10 = v31;
  v12[36] = v14;
  *&v12[55] = v24;
  *&v12[56] = v25;
  *&v12[57] = v26;
  *&v12[58] = v27;
  *&v12[59] = v28;
  *&v12[60] = v29;
  *&v12[61] = v30;
  *&v12[62] = v31;
  CGSizeMake(v12);
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      memcpy(__dst, v12, 0x1F8uLL);
      v11 = 3;
LABEL_10:
      v3 = v7;
      v4 = v8;
      v5 = v9;
      v6 = v10;
      goto LABEL_13;
    }

    if (v2 == 2)
    {
      memcpy(__dst, v12, 0x1F8uLL);
      v11 = 2;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v2)
    {
      memcpy(__dst, v12, 0x1F8uLL);
      v11 = 0;
LABEL_13:
      sub_20D018184(v11, v3, v4, v5, v6);
      sub_20CEF928C(__dst, &qword_27C81F3C8);
      return;
    }

    if (v2 == 1)
    {
      memcpy(__dst, v12, 0x1F8uLL);
      v11 = 1;
      goto LABEL_10;
    }
  }

  __dst[0] = v2;
  sub_20D568C38();
  __break(1u);
}

uint64_t sub_20D018184(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  [*(v5 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v5 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_statusGlyph) setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BECD0;
  v13 = *(v6 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel);
  *(inited + 32) = v13;
  v14 = *(v6 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel);
  *(inited + 40) = v14;
  v15 = *(v6 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel);
  *(inited + 48) = v15;
  v16 = inited & 0xC000000000000001;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  for (i = v17; ; i = MEMORY[0x20F31DD20](0, inited))
  {
    v21 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];

    if (v16)
    {
      v22 = MEMORY[0x20F31DD20](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_23;
      }

      v22 = *(inited + 40);
    }

    v23 = v22;
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];

    if (v16)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v24 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v24 = MEMORY[0x20F31DD20](2, inited);
LABEL_10:
  v25 = v24;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [*(v6 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_activityIndicator) setTranslatesAutoresizingMaskIntoConstraints_];
  [*(v6 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_badgeLabel) setTranslatesAutoresizingMaskIntoConstraints_];
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v26 = sub_20D01A210(a2, a3);
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_27;
      }

      v27 = 1;
      v28 = a2;
      v29 = a3;
      v30 = a4;
      v31 = a5;
LABEL_19:
      v26 = sub_20D019110(v27, v28, v29, v30, v31);
    }

LABEL_20:
    v39 = v26;
    v32 = sub_20D01B558(a1, a2, a3, a4, a5);
    sub_20CF6BECC(v32);
    v33 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_activeLayoutConstraints;
    if (*(v6 + OBJC_IVAR____TtC6HomeUI19TileCellContentView_activeLayoutConstraints))
    {
      v34 = objc_opt_self();
      sub_20CECF940(0, &qword_28111FEC0);
      sub_20D5663C8();
      v35 = sub_20D567A58();

      [v34 deactivateConstraints_];
    }

    v36 = objc_opt_self();
    sub_20CECF940(0, &qword_28111FEC0);
    v37 = sub_20D567A58();
    [v36 activateConstraints_];

    *(v6 + v33) = v39;
  }

  else
  {
    if (!a1)
    {
      v26 = sub_20D0186D4(a2, a3, a4, a5);
      goto LABEL_20;
    }

    if (a1 == 1)
    {
      v27 = 0;
      v28 = a2;
      v29 = a3;
      v30 = a4;
      v31 = a5;
      goto LABEL_19;
    }

LABEL_27:
    result = sub_20D568C38();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall TileCellContentView.layoutSubviews()()
{
  v1 = *&v0[OBJC_IVAR____TtC6HomeUI19TileCellContentView_activityIndicator];
  v2 = *&v0[OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel];
  v3 = [v2 font];
  if (v3)
  {
    v4 = v3;
    [v3 lineHeight];
    v6 = v5;

    [v1 _setCustomWidth_];
    v7.receiver = v0;
    v7.super_class = type metadata accessor for TileCellContentView();
    objc_msgSendSuper2(&v7, sel_layoutSubviews);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20D0186D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BF1B0;
  v11 = *&v4[OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView];
  v12 = [v11 leadingAnchor];
  v13 = [v5 layoutMarginsGuide];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(inited + 32) = v15;
  v16 = [v11 centerYAnchor];
  v17 = [v5 layoutMarginsGuide];
  v18 = [v17 centerYAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(inited + 40) = v19;
  v20 = [v11 topAnchor];
  v21 = [v5 layoutMarginsGuide];
  v22 = [v21 topAnchor];

  v23 = [v20 constraintGreaterThanOrEqualToAnchor_];
  *(inited + 48) = v23;
  v24 = [v11 bottomAnchor];
  v25 = [v5 layoutMarginsGuide];
  v26 = [v25 bottomAnchor];

  v27 = [v24 constraintLessThanOrEqualToAnchor_];
  *(inited + 56) = v27;
  v28 = [v11 trailingAnchor];
  v29 = [v5 layoutMarginsGuide];
  v30 = [v29 &selRef_updateAllBarButton + 4];

  v31 = [v28 constraintLessThanOrEqualToAnchor_];
  *(inited + 64) = v31;
  v32 = [v11 topAnchor];
  v33 = [v5 topAnchor];
  v34 = [v32 constraintGreaterThanOrEqualToAnchor_];

  *(inited + 72) = v34;
  v35 = [v11 bottomAnchor];
  v36 = [v5 bottomAnchor];
  v37 = [v35 constraintLessThanOrEqualToAnchor_];

  *(inited + 80) = v37;
  sub_20CF6BECC(inited);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_20D5C27F0;
  v39 = *&v5[OBJC_IVAR____TtC6HomeUI19TileCellContentView_statusGlyph];
  v40 = [v39 &selRef_updateAllBarButton + 4];
  v41 = [v11 &selRef_updateAllBarButton + 4];
  v42 = [v40 constraintEqualToAnchor:v41 constant:4.0];

  *(v38 + 32) = v42;
  v43 = [v39 bottomAnchor];
  v44 = [v11 bottomAnchor];
  v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44 constant:1.0];

  *(v38 + 40) = v45;
  sub_20CF6BECC(v38);
  v46 = swift_initStackObject();
  *(v46 + 16) = xmmword_20D5BECD0;
  v47 = *&v5[OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel];
  *(v46 + 32) = v47;
  v48 = *&v5[OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel];
  *(v46 + 40) = v48;
  v49 = *&v5[OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel];
  *(v46 + 48) = v49;
  v90 = MEMORY[0x277D84F90];
  v50 = v46 & 0xC000000000000001;
  v51 = v47;
  v52 = v48;
  v53 = v49;
  if ((v46 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  for (i = v51; ; i = MEMORY[0x20F31DD20](0, v46))
  {
    v55 = i;
    if ([i isHidden])
    {
    }

    else
    {
      sub_20D5688C8();
      sub_20D568908();
      sub_20D568918();
      sub_20D5688D8();
    }

    if (v50)
    {
      v56 = MEMORY[0x20F31DD20](1, v46);
    }

    else
    {
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_35;
      }

      v56 = *(v46 + 40);
    }

    v57 = v56;
    if ([v56 isHidden])
    {
    }

    else
    {
      sub_20D5688C8();
      sub_20D568908();
      sub_20D568918();
      sub_20D5688D8();
    }

    if (v50)
    {
      break;
    }

    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v58 = *(v46 + 48);
      goto LABEL_16;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v58 = MEMORY[0x20F31DD20](2, v46);
LABEL_16:
  v59 = v58;
  if ([v58 isHidden])
  {
  }

  else
  {
    sub_20D5688C8();
    sub_20D568908();
    sub_20D568918();
    sub_20D5688D8();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v60 = v90 < 0 || (v90 & 0x4000000000000000) != 0;
  if (v60)
  {
    sub_20CECF940(0, &qword_28111FB70);
    sub_20D5663C8();
    v61 = sub_20D568A78();
  }

  else
  {
    sub_20D5663C8();
    sub_20D568C08();
    sub_20CECF940(0, &qword_28111FB70);
    v61 = v90;
  }

  v62 = sub_20D01BD84(v61);

  sub_20CF6BECC(v62);
  if (v60)
  {
    result = sub_20D568768();
    if (!result)
    {
LABEL_34:

      v87 = v5;
      v88 = sub_20D01C8A0(v90, v90, v87, a1, a2, a3, a4);

      sub_20CF6BECC(v88);
      return v91;
    }
  }

  else
  {
    result = *(v90 + 16);
    if (!result)
    {
      goto LABEL_34;
    }
  }

  if ((v90 & 0xC000000000000001) != 0)
  {
    v89 = result;
    v67 = MEMORY[0x20F31DD20](0, v90);
    result = v89 - 1;
    if (!__OFSUB__(v89, 1))
    {
      v68 = MEMORY[0x20F31DD20](result, v90);
      goto LABEL_33;
    }

    goto LABEL_45;
  }

  v64 = *(v90 + 16);
  if (!v64)
  {
    __break(1u);
    goto LABEL_43;
  }

  v65 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v65 < v64)
  {
    v66 = *(v90 + 32 + 8 * v65);
    v67 = *(v90 + 32);
    v68 = v66;
LABEL_33:
    v69 = v68;
    v70 = swift_initStackObject();
    *(v70 + 16) = xmmword_20D5BC4C0;
    v71 = v67;
    v72 = [v71 topAnchor];
    v73 = [v5 layoutMarginsGuide];
    v74 = [v73 topAnchor];

    v75 = [v72 constraintGreaterThanOrEqualToAnchor_];
    *(v70 + 32) = v75;
    v76 = v69;
    v77 = [v76 bottomAnchor];
    v78 = [v5 layoutMarginsGuide];
    v79 = [v78 bottomAnchor];

    v80 = [v77 constraintLessThanOrEqualToAnchor_];
    *(v70 + 40) = v80;
    v81 = [v71 topAnchor];

    v82 = [v5 topAnchor];
    v83 = [v81 constraintGreaterThanOrEqualToAnchor_];

    *(v70 + 48) = v83;
    v84 = [v76 bottomAnchor];

    v85 = [v5 bottomAnchor];
    v86 = [v84 constraintLessThanOrEqualToAnchor_];

    *(v70 + 56) = v86;
    sub_20CF6BECC(v70);

    goto LABEL_34;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_20D019110(char a1, double a2, double a3, double a4, double a5)
{
  v11 = MEMORY[0x277D84F90];
  v164 = MEMORY[0x277D84F90];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BECD0;
  v14 = *&v5[OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel];
  *(inited + 32) = v14;
  v15 = *&v5[OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel];
  *(inited + 40) = v15;
  v145 = v5;
  v16 = *&v5[OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel];
  *(inited + 48) = v16;
  __dst[0] = v11;
  v17 = inited & 0xC000000000000001;
  v18 = v14;
  v19 = v15;
  v20 = v16;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  for (i = v18; ; i = MEMORY[0x20F31DD20](0, inited))
  {
    v22 = i;
    if ([i isHidden])
    {
    }

    else
    {
      sub_20D5688C8();
      sub_20D568908();
      sub_20D568918();
      sub_20D5688D8();
    }

    if (v17)
    {
      v23 = MEMORY[0x20F31DD20](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_33;
      }

      v23 = *(inited + 40);
    }

    v24 = v23;
    if ([v23 isHidden])
    {
    }

    else
    {
      sub_20D5688C8();
      sub_20D568908();
      sub_20D568918();
      sub_20D5688D8();
    }

    if (v17)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v25 = *(inited + 48);
      goto LABEL_16;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v25 = MEMORY[0x20F31DD20](2, inited);
LABEL_16:
  v26 = v25;
  if ([v25 isHidden])
  {
  }

  else
  {
    sub_20D5688C8();
    sub_20D568908();
    sub_20D568918();
    sub_20D5688D8();
  }

  v27 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = (__dst[0] >> 62) & 1;
  if ((__dst[0] & 0x8000000000000000) != 0)
  {
    LODWORD(v28) = 1;
  }

  v29 = &selRef_textField;
  v30 = &selRef_isUserScrubbing;
  v144 = __dst[0];
  v140 = v12;
  v141 = v28;
  if ((v28 & 1) == 0)
  {
    v143 = *(__dst[0] + 16);
    if (v143)
    {
      goto LABEL_23;
    }

LABEL_38:
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_20D5C27F0;
    v32 = *&v5[OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView];
    v77 = [v32 centerXAnchor];
    v78 = [v5 centerXAnchor];
    v79 = [v77 constraintEqualToAnchor_];

    *(v76 + 32) = v79;
    v80 = [v32 centerYAnchor];
    v81 = [v145 centerYAnchor];
    v82 = [v80 constraintEqualToAnchor_];

    *(v76 + 40) = v82;
    sub_20CF6BECC(v76);
    v75 = &selRef_cameraContainsMotionServiceItem_;
    if (a1)
    {
      goto LABEL_39;
    }

LABEL_40:
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_20D5C27F0;
    v93 = *&v145[OBJC_IVAR____TtC6HomeUI19TileCellContentView_statusGlyph];
    v94 = [v93 trailingAnchor];
    v95 = [v32 trailingAnchor];
    v96 = [v94 constraintEqualToAnchor:v95 constant:4.0];

    *(v83 + 32) = v96;
    v97 = v32;
    v92 = &selRef_allActionGridEditorSectionIdentifiers;
    v89 = [v93 bottomAnchor];
    v142 = v97;
    v90 = [v97 bottomAnchor];
    v91 = [v89 constraintGreaterThanOrEqualToAnchor:v90 constant:1.0];
    goto LABEL_41;
  }

  v143 = sub_20D568768();
  if (!v143)
  {
    goto LABEL_38;
  }

LABEL_23:
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_20D5BC4C0;
  v32 = *&v5[OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView];
  v33 = [v32 leadingAnchor];
  v34 = [v5 layoutMarginsGuide];
  v35 = [v34 leadingAnchor];

  v36 = [v33 constraintEqualToAnchor_];
  *(v31 + 32) = v36;
  v37 = [v32 trailingAnchor];
  v38 = [v145 layoutMarginsGuide];
  v39 = [v38 trailingAnchor];

  v40 = [v37 constraintLessThanOrEqualToAnchor_];
  *(v31 + 40) = v40;
  v41 = [v32 topAnchor];
  v42 = [v145 &selRef_kilograms + 1];
  v43 = [v42 topAnchor];

  v44 = [v41 &selRef:v43 connectedServicesSectionFooterLink:? isForAccessory:? + 5];
  *(v31 + 48) = v44;
  v45 = [v32 topAnchor];
  v46 = [v145 topAnchor];
  v47 = [v45 constraintGreaterThanOrEqualToAnchor_];

  *(v31 + 56) = v47;
  sub_20CF6BECC(v31);
  if ((a1 & 1) == 0)
  {
    v30 = &selRef_isUserScrubbing;
    goto LABEL_40;
  }

  v30 = v147;
  v48 = [v32 heightAnchor];
  v49 = [v48 constraintEqualToConstant_];

  MEMORY[0x20F31CEE0]();
  if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_78;
  }

  while (2)
  {
    sub_20D567B08();
    v50 = &v32[OBJC_IVAR___HUBaseIconView_configuration];
    swift_beginAccess();
    *(v30 + 15) = *v50;
    v51 = *(v50 + 1);
    v52 = *(v50 + 2);
    v53 = *(v50 + 4);
    *(v30 + 18) = *(v50 + 3);
    *(v30 + 19) = v53;
    *(v30 + 16) = v51;
    *(v30 + 17) = v52;
    v54 = *(v50 + 5);
    v55 = *(v50 + 6);
    v56 = *(v50 + 7);
    v162 = *(v50 + 16);
    v57 = v162;
    *(v30 + 21) = v55;
    *(v30 + 22) = v56;
    *(v30 + 20) = v54;
    v58 = *(v50 + 3);
    *(v30 + 12) = *(v50 + 2);
    *(v30 + 13) = v58;
    *(v30 + 14) = *(v50 + 4);
    v59 = *(v50 + 1);
    *(v30 + 10) = *v50;
    *(v30 + 11) = v59;
    v60 = v156;
    v61 = v157;
    v62 = v158;
    v63 = v159;
    v64 = v160;
    v65 = v161;
    v66 = v57;
    memmove(__dst, v50, 0x50uLL);
    __dst[10] = v60;
    __dst[11] = v61;
    __dst[12] = v62;
    __dst[13] = v63;
    __dst[14] = v64;
    __dst[15] = v65;
    __dst[16] = v66;
    if (sub_20CFF743C(__dst) == 1)
    {
      v67 = *(v30 + 13);
      *(v30 + 2) = *(v30 + 12);
      *(v30 + 3) = v67;
      *(v30 + 4) = *(v30 + 14);
      v68 = *(v30 + 11);
      *v30 = *(v30 + 10);
      *(v30 + 1) = v68;
      v148 = v60;
      v149 = v61;
      v150 = v62;
      v151 = v63;
      v152 = v64;
      v153 = v65;
      v154 = v66;
      sub_20CEF9178(v155, v146, &qword_27C81F350);
      sub_20CEF928C(v147, &qword_27C81F350);
      goto LABEL_31;
    }

    v69 = *(v30 + 13);
    *(v30 + 2) = *(v30 + 12);
    *(v30 + 3) = v69;
    *(v30 + 4) = *(v30 + 14);
    v70 = *(v30 + 11);
    *v30 = *(v30 + 10);
    *(v30 + 1) = v70;
    v148 = v60;
    v149 = v61;
    v150 = v62;
    v151 = v63;
    v152 = v64;
    v153 = v65;
    v154 = v66;
    sub_20CEF9178(v155, v146, &qword_27C81F350);
    sub_20CFD9D60(v60, v61, v62, v63, v64, v65);
    sub_20CEF928C(v147, &qword_27C81F350);
    sub_20CFD9DD8(v60, v61, v62, v63, v64, v65);
    if (v65 < 0)
    {
LABEL_31:
      v12 = v140;
      v27 = v145;
      v30 = &selRef_isUserScrubbing;
      v29 = &selRef_textField;
      v73 = [v32 widthAnchor];
      v74 = [v73 constraintEqualToConstant_];

      MEMORY[0x20F31CEE0]();
      if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_30:
        sub_20D567AB8();
      }
    }

    else
    {
      v71 = [v32 widthAnchor];
      [v32 intrinsicContentSize];
      v72 = [v71 constraintEqualToConstant_];

      MEMORY[0x20F31CEE0]();
      v12 = v140;
      v27 = v145;
      v30 = &selRef_isUserScrubbing;
      v29 = &selRef_textField;
      if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_30;
      }
    }

    sub_20D567B08();
    v75 = &selRef_cameraContainsMotionServiceItem_;
LABEL_39:
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_20D5C27F0;
    v84 = *&v27[OBJC_IVAR____TtC6HomeUI19TileCellContentView_statusGlyph];
    v85 = [v84 v29[165]];
    v86 = [v27 v30[180]];
    v87 = [v86 v29[165]];

    v88 = [v85 constraintEqualToAnchor:v87 constant:-4.0];
    *(v83 + 32) = v88;
    v89 = [v84 centerYAnchor];
    v142 = v32;
    v90 = [v32 centerYAnchor];
    v91 = [v89 v75[502]];
    v92 = &selRef_allActionGridEditorSectionIdentifiers;
LABEL_41:
    v98 = v91;

    *(v83 + 40) = v98;
    sub_20CF6BECC(v83);
    v99 = [v27 v30[180]];
    v100 = [v99 v92[424]];

    v101 = v92;
    v102 = v144;
    if (!v143)
    {
      v107 = v100;
      sub_20CF6BECC(MEMORY[0x277D84F90]);
      goto LABEL_66;
    }

    v32 = v12;
    __dst[0] = MEMORY[0x277D84F90];
    v103 = v100;

    v105 = sub_20D01C690(v104);
    v106 = v105;
    if (v105 >> 62)
    {
      v107 = sub_20D568768();
      if (!v107)
      {
        goto LABEL_58;
      }

LABEL_44:
      if (v107 >= 1)
      {
        v139 = v103;
        if ((v106 & 0xC000000000000001) != 0)
        {
          v108 = MEMORY[0x20F31DD20](0, v106);
        }

        else
        {
          v108 = *(v106 + 32);
        }

        v98 = v108;
        v109 = [v108 (v101 + 3365)];
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_20D5BA040;
        *(v110 + 32) = [v109 constraintEqualToAnchor:v139 constant:a4];
        sub_20CF6BECC(v110);
        v111 = [v98 topAnchor];

        if (--v107)
        {
          v112 = 5;
          do
          {
            if ((v106 & 0xC000000000000001) != 0)
            {
              v113 = MEMORY[0x20F31DD20](v112 - 4, v106);
            }

            else
            {
              v113 = *(v106 + 8 * v112);
            }

            v98 = v113;
            v114 = [v113 bottomAnchor];
            v115 = swift_allocObject();
            *(v115 + 16) = xmmword_20D5BA040;
            *(v115 + 32) = [v114 constraintEqualToAnchor:v111 constant:0.0];
            sub_20CF6BECC(v115);
            v103 = [v98 topAnchor];

            ++v112;
            v111 = v103;
            --v107;
          }

          while (v107);
        }

        else
        {
          v103 = v111;
        }

        sub_20CF6BECC(__dst[0]);
        v27 = v145;
        v101 = 0x277DCF000;
        v30 = &selRef_isUserScrubbing;
        goto LABEL_59;
      }

LABEL_77:
      __break(1u);
LABEL_78:
      sub_20D567AB8();
      continue;
    }

    break;
  }

  v107 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v107)
  {
    goto LABEL_44;
  }

LABEL_58:

  sub_20CF6BECC(MEMORY[0x277D84F90]);
LABEL_59:
  v102 = v144;
  v116 = v143 - 1;
  if (!__OFSUB__(v143, 1))
  {
    if ((v144 & 0xC000000000000001) != 0)
    {
      goto LABEL_73;
    }

    if ((v116 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v116 < *(v144 + 16))
    {
      v107 = v103;
      v117 = *(v144 + 8 * v116 + 32);
      goto LABEL_64;
    }

    __break(1u);
    goto LABEL_77;
  }

  __break(1u);
LABEL_73:
  v107 = v103;
  v117 = MEMORY[0x20F31DD20](v116, v144);
LABEL_64:
  v98 = v117;
  v118 = [v117 *(v101 + 3392)];
  v119 = [v27 *(v101 + 3392)];
  v120 = [v118 constraintLessThanOrEqualToAnchor:v119 constant:a4];

  MEMORY[0x20F31CEE0]();
  if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_65;
  }

LABEL_75:
  sub_20D567AB8();
LABEL_65:
  sub_20D567B08();

LABEL_66:
  if (v141)
  {
    sub_20CECF940(0, &qword_28111FB70);
    sub_20D5663C8();
    v121 = sub_20D568A78();
  }

  else
  {
    sub_20D5663C8();
    v121 = v102;
    sub_20D568C08();
    sub_20CECF940(0, &qword_28111FB70);
  }

  v122 = [v27 v30[180]];
  v123 = v30;
  v124 = [v122 leadingAnchor];

  v125 = [v27 v123 + 681];
  v126 = [v125 trailingAnchor];

  v127 = v27;
  v128 = v124;
  v129 = v126;
  v130 = v128;
  v131 = v129;
  v132 = sub_20D01CCA0(v121, v127, v130, v131, a3, a5);

  sub_20CF6BECC(v132);
  v133 = [v127 v123 + 681];
  v134 = [v133 *(v101 + 3392)];

  sub_20CECF940(0, &qword_28111FEB8);
  LOBYTE(v133) = sub_20D5683F8();

  if ((v133 & 1) == 0)
  {
    v135 = swift_allocObject();
    *(v135 + 16) = xmmword_20D5BA040;
    v136 = [v142 *(v101 + 3392)];
    v137 = [v136 constraintLessThanOrEqualToAnchor:v107 constant:a2];

    *(v135 + 32) = v137;
    sub_20CF6BECC(v135);
  }

  return v164;
}