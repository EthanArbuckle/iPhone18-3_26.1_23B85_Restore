void sub_18BA1F8E0(uint64_t a1)
{
  swift_unknownObjectUnownedDestroy();
  v2 = *(a1 + qword_1EA9D6138);
}

uint64_t sub_18BA1F944(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v37 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *((v5 & v4) + 0x58);
  v7 = sub_18BC21848();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v13;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = sub_18BB4719C();
  v36 = v16;

  v39 = v15;
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = swift_unknownObjectUnownedLoadStrong();
  [a1 locationInView_];
  v19 = v18;
  v21 = v20;

  v22 = swift_unknownObjectUnownedLoadStrong();
  sub_18BB503F4(v10, v19, v21);

  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
LABEL_6:
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  v35 = a1;
  v23 = v38;
  (*(v11 + 32))(v38, v10, v6);
  if ((*(*(v37 + 112) + 24))(v6, *(v37 + 112)))
  {
    (*(v11 + 8))(v23, v6);
    goto LABEL_6;
  }

  v25 = swift_unknownObjectUnownedLoadStrong();
  sub_18BB65A78();
  sub_18BC1E3F8();

  LOBYTE(v25) = sub_18BC210B8();

  if (v25)
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    v27 = sub_18BB65A78();
    sub_18BC1E3F8();

    v40 = v27;
    sub_18BC210E8();
    swift_getWitnessTable();
    v28 = sub_18BC20E98();
  }

  else
  {
    sub_18B85EDB0(v6, v6);
    swift_allocObject();
    v29 = sub_18BC20DB8();
    (*(v11 + 16))(v30, v23, v6);
    v28 = sub_18B82D294(v29);
  }

  v38 = &v34;
  v40 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v35;
  v32 = v36;
  *(&v34 - 4) = v39;
  *(&v34 - 3) = v32;
  *(&v34 - 2) = v2;
  *(&v34 - 1) = v31;
  sub_18BC20E78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8EF0);
  swift_getWitnessTable();
  sub_18BA20A78();
  v33 = sub_18BC20D38();
  swift_unknownObjectRelease();
  (*(v11 + 8))(v23, v6);

  return v33;
}

void sub_18BA1FE10(void *a1, double a2, double a3)
{
  v41 = a1;
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  ObjectType = *MEMORY[0x1E69E7D40] & *v3;
  v8 = *((v7 & v6) + 0x58);
  v9 = sub_18BC21848();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v18 = sub_18BB4719C();
  v39 = v19;

  v42 = v18;
  if (v18)
  {
    v20 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB503F4(v12, a2, a3);

    if ((*(v13 + 48))(v12, 1, v8) == 1)
    {
      (*(v10 + 8))(v12, v9);
      swift_unknownObjectRelease();
      return;
    }

    (*(v13 + 32))(v16, v12, v8);
    v21 = v41;
    v22 = [v41 items];
    sub_18BA209E0();
    v23 = sub_18BC20D98();

    MEMORY[0x1EEE9AC00](v24);
    v25 = ObjectType;
    *(&v38 - 8) = *(ObjectType + 80);
    *(&v38 - 7) = v8;
    v26 = *(v25 + 112);
    *(&v38 - 3) = *(v25 + 96);
    *(&v38 - 2) = v26;
    *(&v38 - 2) = v16;
    LOBYTE(v22) = sub_18B9B8B10(sub_18BA20A2C, (&v38 - 10), v23);

    if (v22)
    {
      swift_unknownObjectRelease();
      (*(v13 + 8))(v16, v8);
      return;
    }

    v38 = v13;
    ObjectType = swift_getObjectType();
    v27 = swift_unknownObjectUnownedLoadStrong();
    v28 = v39;
    v29 = v21;
    v30 = *(v39 + 16);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6280);
    v32 = v30(v27, v16, v29, v31, ObjectType, v28);

    if (v32 >> 62)
    {
      v33 = sub_18BC219A8();
      if (!v33)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_16;
      }
    }

    if (v33 < 1)
    {
      __break(1u);
      return;
    }

    v34 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x18CFFD010](v34, v32);
      }

      else
      {
        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      ++v34;
      [v35 safari:sub_18BC21FB8() setFluidCollectionViewSourceItem:?];
      swift_unknownObjectRelease();
      v37 = swift_unknownObjectUnownedLoadStrong();
      [v36 safari:v37 setFluidCollectionViewSourceView:?];
    }

    while (v33 != v34);
LABEL_16:
    swift_unknownObjectRelease();
    (*(v38 + 8))(v16, v8);
  }
}

id sub_18BA20288(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = sub_18BC21848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - v6;
  v8 = *(v3 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = v32 - v11;
  if ([a1 safari_fluidCollectionViewSourceItem])
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
    sub_18B7B1AD4(v32, v33);
  }

  else
  {
    memset(v33, 0, sizeof(v33));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5220);
  v13 = swift_dynamicCast();
  v14 = *(v8 + 56);
  if ((v13 & 1) == 0)
  {
    v14(v7, 1, 1, v3);
    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v14(v7, 0, 1, v3);
  (*(v8 + 32))(v12, v7, v3);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v16 = sub_18BB4719C();
  v18 = v17;

  if (!v16)
  {
    (*(v8 + 8))(v12, v3);
    return 0;
  }

  ObjectType = swift_getObjectType();
  v20 = swift_unknownObjectUnownedLoadStrong();
  v21 = (*(v18 + 24))(v20, v12, ObjectType, v18);

  if (v21)
  {
    (*(v8 + 8))(v12, v3);
    swift_unknownObjectRelease();
    return v21;
  }

  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = sub_18BB50984(v12);

  if (!v24)
  {
    (*(v8 + 8))(v12, v3);
    swift_unknownObjectRelease();
    return 0;
  }

  v25 = swift_unknownObjectUnownedLoadStrong();
  v26 = (*(v18 + 32))(v25, v12, ObjectType, v18);

  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
  }

  v28 = *&v24[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView];
  v29 = objc_allocWithZone(MEMORY[0x1E69DD068]);
  v30 = v26;
  v31 = [v29 initWithView:v28 parameters:v27];

  swift_unknownObjectRelease();
  (*(v8 + 8))(v12, v3);
  return v31;
}

void sub_18BA2069C(uint64_t a1, void *a2)
{
  v26 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v28 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *((v5 & v4) + 0x58);
  v7 = sub_18BC21848();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = sub_18BB4719C();
  v25 = v16;

  if (v15)
  {
    v17 = swift_unknownObjectUnownedLoadStrong();
    [a2 locationInView_];
    v19 = v18;
    v21 = v20;

    v22 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB503F4(v9, v19, v21);

    if ((*(v10 + 48))(v9, 1, v6) == 1)
    {
      swift_unknownObjectRelease();
      (*(v27 + 8))(v9, v7);
    }

    else
    {
      (*(v10 + 32))(v13, v9, v6);
      if ((*(*(v28 + 112) + 24))(v6))
      {
        (*(v10 + 8))(v13, v6);
        swift_unknownObjectRelease();
      }

      else
      {
        ObjectType = swift_getObjectType();
        v24 = swift_unknownObjectUnownedLoadStrong();
        (*(v25 + 40))(v24, v13, v26, ObjectType);
        swift_unknownObjectRelease();

        (*(v10 + 8))(v13, v6);
      }
    }
  }
}

unint64_t sub_18BA209E0()
{
  result = qword_1EA9D7CE0;
  if (!qword_1EA9D7CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D7CE0);
  }

  return result;
}

unint64_t sub_18BA20A78()
{
  result = qword_1EA9D6290;
  if (!qword_1EA9D6290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D8EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6290);
  }

  return result;
}

id SFCapsulePageLayoutBottomSquished.__allocating_init(container:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutBottomSquished.init(container:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SFCapsulePageLayoutBottomSquished();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  return v1;
}

id SFCapsulePageLayoutBottomSquished.__allocating_init(container:baseLayout:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutBottomSquished.init(container:baseLayout:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SFCapsulePageLayoutBottomSquished();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t (*sub_18BA20F50(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari33SFCapsulePageLayoutBottomSquished_baseLayout;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A9824;
}

uint64_t (*sub_18BA2100C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari33SFCapsulePageLayoutBottomSquished_container;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9AAC70;
}

double sub_18BA21124()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  [Strong pageWidth];
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_18BA21280()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = [Strong supplementaryIdentifiers];
  swift_unknownObjectRelease();
  v2 = sub_18BC20D98();

  return v2;
}

uint64_t sub_18BA21318(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 lockdownStatusBar];
    if (v4)
    {

      v5 = sub_18BA21F18(a1);
    }

    else
    {
      v5 = sub_18BA214D0(a1);
    }

    v6 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v7 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v8 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v9 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v20.origin.x = v6;
    v20.origin.y = v7;
    v20.size.width = v8;
    v20.size.height = v9;
    CGRectGetMinY(v20);
    v10 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    [v3 bounds];
    CGRectGetWidth(v21);
    [v3 bounds];
    CGRectGetHeight(v22);
    v11 = _SFRoundRectToPixels(0.0);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = &v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v18 = v11;
    *(v18 + 1) = v13;
    *(v18 + 2) = v15;
    *(v18 + 3) = v17;
    return v10;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA214D0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong bounds];
    v31 = v4;
    sub_18BA217C8(a1);
    v32 = v5;
    v7 = v6;
    v8 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    CACornerRadiiMake(v33, v7 * 0.5, v7 * 0.5, v7 * 0.5, v7 * 0.5);
    v10 = v33[0];
    v9 = v33[1];
    v12 = v33[2];
    v11 = v33[3];
    v14 = v33[4];
    v13 = v33[5];
    v15 = v33[6];
    v16 = v33[7];
    v17 = &v8[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
    swift_beginAccess();
    *v17 = v10;
    v17[1] = v9;
    v17[2] = v12;
    v17[3] = v11;
    v17[4] = v14;
    v17[5] = v13;
    v17[6] = v15;
    v17[7] = v16;
    v18 = 0;
    if (v15 == v16 && v15 == v10 && v16 == v9)
    {
      v19 = v15 == v14;
      if (v16 != v13)
      {
        v19 = 0;
      }

      if (v15 != v12)
      {
        v19 = 0;
      }

      v18 = v16 == v11 && v19;
    }

    v20 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
    swift_beginAccess();
    v8[v20] = v18;
    [v3 keyboardHeight];
    v21 = _SFRoundRectToPixels((v31 - v32) * 0.5);
    v22 = &v8[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v22 = v21;
    *(v22 + 1) = v23;
    *(v22 + 2) = v24;
    *(v22 + 3) = v25;
    v26 = sub_18BC20BD8();
    v28 = v27;
    swift_unknownObjectRelease();
    v29 = &v8[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier];
    swift_beginAccess();
    *v29 = v26;
    v29[1] = v28;

    return v8;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id sub_18BA21758(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a4(a3);
  swift_unknownObjectRelease();

  return v8;
}

void sub_18BA217C8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v3 = Strong;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_18BC21CF8();
    __break(1u);
    return;
  }

  v5 = [v4 capsuleInfoForPage_];
  [a1 preferredCapsuleSizeForState_];
  v7 = v6;
  v9 = fmax(v8, 32.0);
  CGRectGetWidth(*&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]);
  [v3 minimizedContentScale];
  if (v7 <= 0.0)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    [v3 bounds];
    v10 = CGRectGetHeight(v19) - v9;
    [v3 bounds];
    [v3 concentricEdgeInsetsForEdge:4 bounds:0.0 minimumEdgeInsets:{v10, CGRectGetWidth(v20), v9, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    v12 = v11;
    v14 = v13;
    [v3 bounds];
    v21.origin.x = UIEdgeInsetsInsetRect(v15, v16, v17, v18, v12, v14);
    CGRectGetWidth(v21);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_18BA219F4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = sub_18BC20B98();
      v11 = [v7 infoForSupplementaryIdentifier:v10 page:a3];

      if (sub_18BC20BD8() == a1 && v12 == a2)
      {
      }

      else
      {
        v14 = sub_18BC21FD8();

        if ((v14 & 1) == 0)
        {
          if (sub_18BC20BD8() == a1 && v15 == a2)
          {
          }

          else
          {
            v31 = sub_18BC21FD8();

            if ((v31 & 1) == 0)
            {
              v33 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha;
              swift_beginAccess();
              *&v11[v33] = 0;
              v34 = sub_18BA214D0(a3);
              v35 = *&v34[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
              v36 = *&v34[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
              *&rect = v35;
              v37 = *&v34[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
              v38 = *&v34[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

              v39 = [v7 capsuleInfoForPage_];
              v40 = *&v39[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
              v41 = *&v39[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
              v42 = *&v39[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
              v43 = *&v39[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

              v61.origin.x = v35;
              v61.origin.y = v36;
              v61.size.width = v37;
              v61.size.height = v38;
              CGRectGetMaxY(v61);
              v62.origin.x = v40;
              v62.origin.y = v41;
              v62.size.width = v42;
              v62.size.height = v43;
              CGRectGetMaxY(v62);
              v44 = &v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
              *v44 = _SFRoundRectToPixels(*&v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]);
              *(v44 + 1) = v45;
              *(v44 + 2) = v46;
              *(v44 + 3) = v47;
              [v9 minimizedContentScale];
              v49 = v48;
              *&v63.origin.x = rect;
              v63.origin.y = v36;
              v63.size.width = v37;
              v63.size.height = v38;
              Width = CGRectGetWidth(v63);
              v64.origin.x = v40;
              v64.origin.y = v41;
              v64.size.width = v42;
              v64.size.height = v43;
              v51 = Width / CGRectGetWidth(v64);
              if (v51 >= v49)
              {
                v51 = v49;
              }

              CGAffineTransformMakeScale(&rect_24, v51, v51);
              tx = rect_24.tx;
              ty = rect_24.ty;
              v55 = *&rect_24.c;
              rect = *&rect_24.a;
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v54 = &v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_transform];
              swift_beginAccess();
              *v54 = rect;
              *(v54 + 1) = v55;
              *(v54 + 4) = tx;
              *(v54 + 5) = ty;
              return v11;
            }
          }

          v32 = sub_18BA21F18(a3);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return v32;
        }
      }

      v16 = sub_18BA214D0(a3);
      v17 = *&v16[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];

      v60.origin.x = _SFRoundRectToPixels(v17);
      *&v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame] = v60;
      Height = CGRectGetHeight(v60);
      CACornerRadiiMake(&rect_24.a, Height * 0.5, Height * 0.5, Height * 0.5, Height * 0.5);
      a = rect_24.a;
      b = rect_24.b;
      v21 = *&rect_24.c;
      v23 = rect_24.tx;
      v22 = rect_24.ty;
      v25 = v58;
      v24 = v59;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v26 = &v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii];
      swift_beginAccess();
      *v26 = a;
      v26[1] = b;
      *(v26 + 1) = v21;
      v26[4] = v23;
      v26[5] = v22;
      v26[6] = v25;
      v26[7] = v24;
      v27 = 0;
      if (v25 == v24 && v25 == a && v24 == b)
      {
        v28 = v25 == v23;
        if (v24 != v22)
        {
          v28 = 0;
        }

        if (v25 != *&v21)
        {
          v28 = 0;
        }

        v27 = v24 == *(&v21 + 1) && v28;
      }

      v29 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
      swift_beginAccess();
      v11[v29] = v27;
      return v11;
    }

    swift_unknownObjectRelease();
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BA21F18(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 lockdownStatusBar];
    v5 = sub_18BA214D0(a1);
    v6 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v7 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v8 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v9 = *&v5[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v10 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    if (v4)
    {
      [v4 preferredSize];
    }

    v20.origin.x = v6;
    v20.origin.y = v7;
    v20.size.width = v8;
    v20.size.height = v9;
    CGRectGetMinY(v20);
    [v3 bounds];
    CGRectGetWidth(v21);
    v11 = _SFRoundRectToPixels(0.0);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    swift_unknownObjectRelease();
    v18 = &v10[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v18 = v11;
    *(v18 + 1) = v13;
    *(v18 + 2) = v15;
    *(v18 + 3) = v17;
    return v10;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA220B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong topBackdropInfoForPage_];
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id SFCapsulePageLayoutBottomSquished.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFCapsulePageLayoutBottomSquished.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCapsulePageLayoutBottomSquished();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BA225B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(*(result + 40) + 24) >= 1)
    {
      v1 = *(result + 48);
      v2 = result;
      [*(result + 24) presentationValue];
      v4 = v3;
      [*(v2 + 32) presentationValue];
      [v1 setContentOffset_];
    }
  }

  return result;
}

uint64_t sub_18BA22668(uint64_t result, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + 40);
  if (v3 != result)
  {
    if (a2)
    {
      return a2(0);
    }

    return result;
  }

  if (a2)
  {
    result = a2(1);
    v3 = *(v2 + 40);
  }

  v4 = *(v3 + 24);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  *(v3 + 24) = v6;
  if (!v6)
  {
    result = swift_beginAccess();
    v7 = *(v3 + 16);
    v8 = *(v7 + 16);
    if (v8)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v9 = v7 + 40;
      do
      {
        v10 = *(v9 - 8);
        LOBYTE(aBlock[0]) = *(v3 + 24) > 0;
        sub_18BC1E1A8();
        v10(aBlock);

        v9 += 16;
        --v8;
      }

      while (v8);
    }
  }

  if (*(*(v2 + 40) + 24) <= 0)
  {
    [*(v2 + 48) contentOffset];
    v12 = v11;
    v14 = v13;
    v15 = swift_allocObject();
    v15[2] = v2;
    v15[3] = v12;
    v15[4] = v14;
    v16 = objc_opt_self();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_18B83FCC8;
    *(v17 + 24) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_18B9D53AC;
    *(v18 + 24) = v17;
    aBlock[4] = sub_18B9D53B0;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7E3BF4;
    aBlock[3] = &block_descriptor_53;
    v19 = _Block_copy(aBlock);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v16 performWithoutAnimation_];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_16;
    }
  }

  return result;
}

id sub_18BA22928(uint64_t a1, char a2, double a3, double a4)
{
  if (a2)
  {
    v7 = *(v4 + 48);
    [v7 contentOffset];
    v10 = v9;
    v12 = v11;
    [v7 setContentOffset_];
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = v4;
    v13[4] = v10;
    v13[5] = v12;
    v14 = objc_opt_self();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    if ([v14 currentPhase])
    {
      v17[4] = sub_18BA22F8C;
      v17[5] = v13;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 1107296256;
      v17[2] = sub_18B7B0DB0;
      v17[3] = &block_descriptor_38;
      v15 = _Block_copy(v17);
      sub_18BC1E1A8();

      [v14 addCommitHandler:v15 forPhase:0];

      _Block_release(v15);
    }

    else
    {
    }
  }

  [*(v4 + 24) setValue_];
  return [*(v4 + 32) setValue_];
}

id sub_18BA22AD4(id result, void *a2)
{
  if (a2[5] == result)
  {
    v2 = a2[6];
    result = [v2 setContentOffset_];
    if (a2[2])
    {
      sub_18BC1E1A8();
      sub_18B840D74(v2);
    }
  }

  return result;
}

id sub_18BA22B50(uint64_t a1, double a2, double a3)
{
  [*(a1 + 48) setContentOffset_];
  [*(a1 + 24) setValue_];
  v6 = *(a1 + 32);

  return [v6 setValue_];
}

void sub_18BA22BC0()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 40);
  v3 = *(v2 + 24);
  if (v3 <= 0)
  {
    [*(v1 + 48) contentOffset];
    v5 = v4;
    v7 = v6;
    v8 = swift_allocObject();
    v8[2] = v1;
    v8[3] = v5;
    v8[4] = v7;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_18B840540;
    *(v10 + 24) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_18B7D1EC4;
    *(v11 + 24) = v10;
    aBlock[4] = sub_18B7D1E94;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7E3BF4;
    aBlock[3] = &block_descriptor_32;
    v12 = _Block_copy(aBlock);
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v9 performWithoutAnimation_];
    _Block_release(v12);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
LABEL_12:
      __break(1u);
      return;
    }

    v2 = *(v1 + 40);
    v3 = *(v2 + 24);
  }

  v13 = __OFADD__(v3, 1);
  v14 = v3 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 24) = v14;
  if (v14 == 1)
  {
    swift_beginAccess();
    v15 = *(v2 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
      sub_18BC1E1A8();
      sub_18BC1E3F8();
      v17 = v15 + 40;
      do
      {
        v18 = *(v17 - 8);
        v19 = *(v2 + 24) > 0;
        sub_18BC1E1A8();
        v18(&v19);

        v17 += 16;
        --v16;
      }

      while (v16);
    }
  }
}

uint64_t sub_18BA22E40()
{
  sub_18B7B171C(*(v0 + 16));
  sub_18B7B171C(*(v0 + 32));

  return swift_deallocClassInstance();
}

id sub_18BA22E94()
{
  result = sub_18BA22928(*(v0 + 48), 1, *(v0 + 64), *(v0 + 72));
  v2 = *(v0 + 16);
  if (v2)
  {
    return v2(result);
  }

  return result;
}

uint64_t sub_18BA22F08()
{

  return swift_deallocClassInstance();
}

void *sub_18BA23058(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(v13 + 72);
  v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a3 + v27;
  v31 = (v13 + 48);
  v19 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a2;
  while (1)
  {
    a1(v18, v14);
    if (v3)
    {
      break;
    }

    if ((*v31)(v9, 1, v10) == 1)
    {
      sub_18B988BAC(v9, &qword_1EA9D7CD0);
    }

    else
    {
      v20 = v30;
      sub_18BA257F8(v9, v30, _s4ItemVMa);
      sub_18BA257F8(v20, v32, _s4ItemVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_18B9B5838(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v24 = sub_18B9B5838(v21 > 1, v22 + 1, 1, v19);
        v23 = v17;
        v19 = v24;
      }

      else
      {
        v23 = v17;
      }

      v19[2] = v22 + 1;
      v17 = v23;
      sub_18BA257F8(v32, v19 + v27 + v22 * v23, _s4ItemVMa);
      v10 = v28;
    }

    v18 += v17;
    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_18BA23330()
{
  v1 = _s4PageVMa();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s4PageVMa_0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C38);
  v12 = *(v2 + 72);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18BC3E410;
  sub_18B816284(v0, v11, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338);
  }

  sub_18BA257F8(v11, v14 + v13, _s4PageVMa);
  _s15MoveItemsIntentVMa(0);
  v25 = v14;
  v15 = sub_18BC1E3F8();
  sub_18BA01A6C(v15);
  v16 = v25;
  v17 = *(v25 + 16);
  if (v17)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_18B825E60(0, v17, 0);
    v18 = v25;
    v24 = v16;
    v19 = v16 + v13;
    do
    {
      sub_18B816284(v19, v4, _s4PageVMa);
      sub_18B827328(v8);
      sub_18B816578(v4, _s4PageVMa);
      v25 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_18B825E60(v20 > 1, v21 + 1, 1);
        v18 = v25;
      }

      *(v18 + 16) = v21 + 1;
      sub_18BA257F8(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, _s4PageVMa_0);
      v19 += v12;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  v22 = sub_18B7E158C(v18);

  return v22;
}

uint64_t sub_18BA236B4(void *a1)
{
  v2 = v1;
  v54 = _s4ItemVMa();
  v4 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4ItemVMa_2();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_18BC1EC08();
  v9 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15MoveItemsIntentV11DestinationOMa(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s4PageVMa();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B816284(v2, v14, _s15MoveItemsIntentV11DestinationOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6338);
  }

  sub_18BA257F8(v14, v17, _s4PageVMa);
  v18 = &v17[*(v15 + 32)];
  v19 = v55;
  v49 = *(v9 + 16);
  v50 = v9 + 16;
  v49(v11, v18, v55);
  sub_18B816578(v17, _s4PageVMa);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  (*(v9 + 8))(v11, v19);
  v21 = _s15MoveItemsIntentVMa(0);
  v22 = *(v2 + *(v21 + 24));
  if (updated)
  {
    sub_18BC1E3F8();
    v23 = v22[2];
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_11:

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  MEMORY[0x1EEE9AC00](v21);
  *(&v47 - 2) = v2;
  *(&v47 - 1) = a1;
  v22 = sub_18BA23058(sub_18BA257DC, (&v47 - 4), v22);
  v23 = v22[2];
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_5:
  v62 = MEMORY[0x1E69E7CC0];
  sub_18B85A1AC(0, v23, 0);
  v24 = v62;
  v25 = v22 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v26 = *(v4 + 72);
  v47 = v22;
  v48 = v26;
  do
  {
    v61 = v23;
    v27 = v53;
    sub_18B816284(v25, v53, _s4ItemVMa);
    v60 = *v27;
    v28 = v54;
    v29 = v52;
    v49(&v8[v52[5]], &v27[*(v54 + 28)], v55);
    v30 = v27[v28[9]];
    v58 = v27[v28[10]];
    v31 = v28[12];
    v32 = v27[v28[11]];
    v56 = v30;
    v57 = v32;
    v59 = *&v27[v31];
    v33 = &v27[v28[13]];
    v34 = *v33;
    v35 = *(v33 + 1);
    v36 = *&v27[v28[14]];
    v37 = &v27[v28[15]];
    v39 = *v37;
    v38 = *(v37 + 1);
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18B816578(v27, _s4ItemVMa);
    *v8 = v60;
    v8[v29[6]] = v56;
    v40 = v57;
    v8[v29[7]] = v58;
    v8[v29[8]] = 0;
    v8[v29[9]] = v40;
    *&v8[v29[10]] = v59;
    v41 = &v8[v29[11]];
    *v41 = v34;
    v41[1] = v35;
    *&v8[v29[12]] = v36;
    v42 = &v8[v29[13]];
    *v42 = v39;
    v42[1] = v38;
    v62 = v24;
    v44 = *(v24 + 16);
    v43 = *(v24 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_18B85A1AC(v43 > 1, v44 + 1, 1);
      v24 = v62;
    }

    *(v24 + 16) = v44 + 1;
    sub_18BA257F8(v8, v24 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v44, _s4ItemVMa_2);
    v25 += v48;
    v23 = v61 - 1;
  }

  while (v61 != 1);

LABEL_12:
  v45 = sub_18B82ABA4(v24);

  return v45;
}

uint64_t sub_18BA23C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v32 = a3;
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s4PageVMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s15MoveItemsIntentVMa(0);
  v15 = *(result + 40);
  v30 = a2;
  v16 = *(a2 + v15);
  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = result;
  v29 = a1;
  result = sub_18BB8B29C(a1);
  if ((v18 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_18B816284(*(v16 + 56) + *(v11 + 72) * result, v13, _s4PageVMa);
  (*(v7 + 16))(v9, &v13[*(v10 + 32)], v6);
  sub_18B816578(v13, _s4PageVMa);
  sub_18B7E7E10(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
  v19 = sub_18BC20AE8();
  result = (*(v7 + 8))(v9, v6);
  if (v19)
  {
    v20 = *(v30 + *(v17 + 32));
    if (*(v20 + 16))
    {
      result = sub_18BB8B29C(v29);
      if (v21)
      {
        v22 = result;
        v23 = *(v20 + 56);
        v24 = _s4ItemVMa();
        v25 = *(v24 - 8);
        v26 = v23 + *(v25 + 72) * v22;
        v27 = v31;
        sub_18B816284(v26, v31, _s4ItemVMa);
        return (*(v25 + 56))(v27, 0, 1, v24);
      }

      goto LABEL_12;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v28 = _s4ItemVMa();
  return (*(*(v28 - 8) + 56))(v31, 1, 1, v28);
}

void *sub_18BA23FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v83 = a1;
  v84 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6330);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v66 - v3;
  v4 = &unk_18BC49EA0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v66 - v9;
  v11 = _s4ItemVMa();
  v67 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - v14;
  v16 = _s7SectionVMa_0();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v66 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v66 - v19;
  v77 = _s4PageVMa();
  v82 = *(v77 - 8);
  v21 = MEMORY[0x1EEE9AC00](v77);
  v72 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v66 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v66 - v29;
  v31 = _s7ContentV8IteratorVMa(0);
  v32 = (v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_18BA651DC(MEMORY[0x1E69E7CC0]);
  v71 = MEMORY[0x1E69E7CC0];
  v69 = sub_18BA653F4(MEMORY[0x1E69E7CC0]);
  sub_18B816284(v84, v34, _s7ContentVMa);
  *&v34[v32[7]] = 0;
  *&v34[v32[8]] = 0;
  v35 = v32[9];
  v84 = v34;
  v85 = v10;
  *&v34[v35] = 0;
  v74 = (v82 + 56);
  v75 = v15;
  v36 = (v82 + 48);
  v81 = v20;
  v82 = v8;
  v80 = v28;
  v73 = v36;
  while (1)
  {
    sub_18BB16160(v28);
    sub_18BA2576C(v28, v30);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8);
    if ((*(*(v40 - 8) + 48))(v30, 1, v40) == 1)
    {
      break;
    }

    v41 = *(v40 + 48);
    v42 = *(v40 + 64);
    sub_18BA257F8(v30, v24, _s4PageVMa);
    v43 = &v30[v41];
    v44 = v85;
    sub_18BA257F8(v43, v20, _s7SectionVMa_0);
    sub_18BA257F8(&v30[v42], v15, _s4ItemVMa);
    if ((sub_18B9BA41C(v15, v83) & 1) == 0)
    {
      goto LABEL_5;
    }

    v45 = v24;
    sub_18B816284(v24, v44, _s4PageVMa);
    v46 = v77;
    (*v74)(v44, 0, 1, v77);
    v47 = *(v78 + 48);
    v48 = v76;
    sub_18BA032EC(v44, v76);
    sub_18BA032EC(v79, v48 + v47);
    v49 = v44;
    v50 = *v73;
    if ((*v73)(v48, 1, v46) == 1)
    {
      v37 = v4;
      sub_18B988BAC(v49, &qword_1EA9D52E0);
      v38 = v50(v48 + v47, 1, v46) == 1;
      v39 = v48;
      if (!v38)
      {
        goto LABEL_13;
      }

      sub_18B988BAC(v48, &qword_1EA9D52E0);
      v20 = v81;
      v8 = v82;
      v24 = v45;
      v15 = v75;
      v28 = v80;
      goto LABEL_5;
    }

    sub_18BA032EC(v48, v8);
    if (v50(v48 + v47, 1, v46) == 1)
    {
      sub_18B988BAC(v85, &qword_1EA9D52E0);
      sub_18B816578(v8, _s4PageVMa);
      v37 = v4;
      v39 = v48;
LABEL_13:
      sub_18B988BAC(v39, &qword_1EA9D6330);
      v4 = v37;
      v20 = v81;
      v8 = v82;
      v24 = v45;
      v15 = v75;
      goto LABEL_14;
    }

    v51 = v72;
    sub_18BA257F8(v48 + v47, v72, _s4PageVMa);
    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    sub_18B816578(v51, _s4PageVMa);
    sub_18B988BAC(v85, &qword_1EA9D52E0);
    sub_18B816578(v82, _s4PageVMa);
    v8 = v82;
    sub_18B988BAC(v48, &qword_1EA9D52E0);
    v28 = v80;
    v20 = v81;
    v24 = v45;
    v15 = v75;
    if (updated)
    {
LABEL_5:
      sub_18B816578(v15, _s4ItemVMa);
      sub_18B816578(v20, _s7SectionVMa_0);
      sub_18B816578(v24, _s4PageVMa);
    }

    else
    {
LABEL_14:
      sub_18B816284(v15, v68, _s4ItemVMa);
      v53 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_18B9B5838(0, v53[2] + 1, 1, v53);
      }

      v54 = v69;
      v56 = v53[2];
      v55 = v53[3];
      if (v56 >= v55 >> 1)
      {
        v53 = sub_18B9B5838(v55 > 1, v56 + 1, 1, v53);
      }

      v53[2] = v56 + 1;
      v57 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v71 = v53;
      sub_18BA257F8(v68, v53 + v57 + *(v67 + 72) * v56, _s4ItemVMa);
      v58 = v72;
      sub_18B816284(v24, v72, _s4PageVMa);
      v59 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v59;
      sub_18BAA8568(v58, v15, isUniquelyReferenced_nonNull_native);
      v70 = v86;
      v61 = v20;
      v62 = v66;
      sub_18B816284(v61, v66, _s7SectionVMa_0);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v86 = v54;
      v64 = v62;
      v20 = v81;
      sub_18BAA83BC(v64, v15, v63);
      sub_18B816578(v15, _s4ItemVMa);
      sub_18B816578(v20, _s7SectionVMa_0);
      sub_18B816578(v24, _s4PageVMa);
      v69 = v86;
      v28 = v80;
    }
  }

  sub_18B816578(v84, _s7ContentV8IteratorVMa);
  return v71;
}

unint64_t sub_18BA24914(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v72 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - v10;
  v12 = _s7SectionVMa_0();
  v75 = *(v12 - 1);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v69 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v66 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v61 - v20;
  *(&v61 - v20) = 1;
  sub_18BC1DE28();
  v22 = v12[6];
  v67 = v12[7];
  v68 = v21;
  v76 = MEMORY[0x1E69E7CC0];
  *&v21[v67] = MEMORY[0x1E69E7CC0];
  v23 = &v21[v12[8]];
  *v23 = 0;
  *(v23 + 1) = 0xE000000000000000;
  v21[v22] = 1;
  v24 = *(a1 + 16);
  if (!v24)
  {
    v74 = MEMORY[0x1E69E7CC0];
LABEL_34:
    if (v74[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C28);
      v58 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_18BC3E410;
      v60 = v68;
      sub_18B816284(v68, v59 + v58, _s7SectionVMa_0);
      v77 = v59;
      sub_18BA01A40(v76);
      v76 = v77;
    }

    else
    {
      v60 = v68;
    }

    sub_18B816578(v60, _s7SectionVMa_0);
    return v76;
  }

  v64 = *(v5 + 80);
  v70 = (v64 + 32) & ~v64;
  v25 = a1 + v70;
  v26 = *(v5 + 72);
  v63 = xmmword_18BC3E410;
  v76 = MEMORY[0x1E69E7CC0];
  v73 = v26;
  v74 = MEMORY[0x1E69E7CC0];
  v27 = v66;
  v71 = a2;
  v65 = v17;
  while (1)
  {
    result = sub_18B816284(v25, v11, _s4ItemVMa);
    if (!*(a2 + 16))
    {
      break;
    }

    result = sub_18BB8B29C(v11);
    if ((v31 & 1) == 0)
    {
      goto LABEL_39;
    }

    v32 = *(v75 + 72);
    sub_18B816284(*(a2 + 56) + v32 * result, v27, _s7SectionVMa_0);
    if (v27[v12[6]] == 1)
    {
      sub_18B816284(v11, v72, _s4ItemVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_18B9B5838(0, v74[2] + 1, 1, v74);
      }

      a2 = v71;
      v33 = v12;
      v35 = v74[2];
      v34 = v74[3];
      v36 = v17;
      if (v35 >= v34 >> 1)
      {
        v74 = sub_18B9B5838(v34 > 1, v35 + 1, 1, v74);
      }

      sub_18B816578(v27, _s7SectionVMa_0);
      sub_18B816578(v11, _s4ItemVMa);
      v28 = v74;
      v74[2] = v35 + 1;
      v29 = v73;
      sub_18BA257F8(v72, v28 + v70 + v35 * v73, _s4ItemVMa);
      *&v68[v67] = v28;
      v17 = v36;
      v12 = v33;
    }

    else
    {
      v37 = v76[2];
      if (!v37)
      {
        goto LABEL_18;
      }

      v38 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      sub_18B816284(v76 + v38 + (v37 - 1) * v32, v17, _s7SectionVMa_0);
      if (*v17 != 1 || (*v27 & 1) == 0) && ((_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0 || (v17[v12[6]]))
      {
        sub_18B816578(v17, _s7SectionVMa_0);
LABEL_18:
        v39 = *v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C20);
        v40 = v70;
        v41 = swift_allocObject();
        *(v41 + 16) = v63;
        sub_18B816284(v11, v41 + v40, _s4ItemVMa);
        v42 = v12;
        v43 = v69;
        sub_18BC1DE28();
        *v43 = v39;
        v43[v42[6]] = 0;
        *&v43[v42[7]] = v41;
        v44 = &v43[v42[8]];
        *v44 = 0;
        v44[1] = 0xE000000000000000;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_18B9B5C64(0, v76[2] + 1, 1, v76);
        }

        v46 = v76[2];
        v45 = v76[3];
        v12 = v42;
        if (v46 >= v45 >> 1)
        {
          v76 = sub_18B9B5C64(v45 > 1, v46 + 1, 1, v76);
        }

        v17 = v65;
        v27 = v66;
        sub_18B816578(v66, _s7SectionVMa_0);
        sub_18B816578(v11, _s4ItemVMa);
        v47 = v75;
        v48 = v76;
        v76[2] = v46 + 1;
        sub_18BA257F8(v69, v48 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + v46 * v32, _s7SectionVMa_0);
        a2 = v71;
        v29 = v73;
        goto LABEL_4;
      }

      v49 = v76[2];
      sub_18B816284(v11, v62, _s4ItemVMa);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (!v49)
        {
          goto LABEL_40;
        }
      }

      else
      {
        result = sub_18BAE3814(v76);
        v76 = result;
        if (!v49)
        {
          goto LABEL_40;
        }
      }

      if (v49 > v76[2])
      {
        goto LABEL_41;
      }

      v50 = v76 + v38 + (v49 - 1) * v32;
      v51 = v12[7];
      v52 = *&v50[v51];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v50[v51] = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v52 = sub_18B9B5838(0, v52[2] + 1, 1, v52);
        *&v50[v51] = v52;
      }

      v55 = v52[2];
      v54 = v52[3];
      v61 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        *&v50[v51] = sub_18B9B5838(v54 > 1, v61, 1, v52);
      }

      sub_18B816578(v17, _s7SectionVMa_0);
      sub_18B816578(v27, _s7SectionVMa_0);
      sub_18B816578(v11, _s4ItemVMa);
      v56 = *&v50[v51];
      v57 = v62;
      *(v56 + 16) = v61;
      v29 = v73;
      sub_18BA257F8(v57, v56 + v70 + v55 * v73, _s4ItemVMa);
      a2 = v71;
    }

LABEL_4:
    v25 += v29;
    if (!--v24)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_18BA25154(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s4ItemVMa();
  v8 = *(v7 - 1);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v55 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v56 = &v48 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - v19;
  v21 = sub_18BA6560C(MEMORY[0x1E69E7CC0]);
  v51 = *(a1 + 16);
  if (!v51)
  {
    return v21;
  }

  v22 = v5;
  v23 = 0;
  v24 = *(a2 + 48);
  v50 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v25 = *(v8 + 72);
  v48 = v4;
  v49 = (v22 + 40);
  v57 = v24 + 56;
  v54 = v18;
  while (1)
  {
    v53 = v23;
    sub_18B816284(v50 + v25 * v23, v20, _s4ItemVMa);
    sub_18B816284(v20, v18, _s4ItemVMa);
    v26 = v52;
    sub_18BC1DE28();
    (*v49)(&v18[v7[7]], v26, v4);
    v18[v7[9]] = 1;
    if (*(v24 + 16) && (sub_18BC22158(), sub_18B7E7E10(&qword_1EA9D3970, MEMORY[0x1E69695A8]), sub_18BC20A78(), v27 = sub_18BC221A8(), v28 = -1 << *(v24 + 32), v29 = v27 & ~v28, ((*(v57 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
    {
      v30 = ~v28;
      do
      {
        sub_18B816284(*(v24 + 48) + v29 * v25, v15, _s4ItemVMa);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B816578(v15, _s4ItemVMa);
        if (updated)
        {
          break;
        }

        v29 = (v29 + 1) & v30;
      }

      while (((*(v57 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
    }

    else
    {
      updated = 0;
    }

    v32 = v54;
    v54[v7[10]] = updated & 1;
    v33 = v56;
    sub_18B816284(v20, v56, _s4ItemVMa);
    sub_18B816284(v32, v55, _s4ItemVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v21;
    v36 = sub_18BB8B29C(v33);
    v37 = v21[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      break;
    }

    v40 = v35;
    if (v21[3] >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18BB2C76C();
      }
    }

    else
    {
      sub_18BB31804(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_18BB8B29C(v56);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_24;
      }

      v36 = v41;
    }

    v4 = v48;
    v21 = v58;
    if (v40)
    {
      sub_18BA25708(v55, v58[7] + v36 * v25);
      sub_18B816578(v56, _s4ItemVMa);
      sub_18B816578(v20, _s4ItemVMa);
    }

    else
    {
      v58[(v36 >> 6) + 8] |= 1 << v36;
      v43 = v56;
      sub_18B816284(v56, v21[6] + v36 * v25, _s4ItemVMa);
      sub_18BA257F8(v55, v21[7] + v36 * v25, _s4ItemVMa);
      sub_18B816578(v43, _s4ItemVMa);
      sub_18B816578(v20, _s4ItemVMa);
      v44 = v21[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_23;
      }

      v21[2] = v46;
    }

    v18 = v54;
    v23 = v53 + 1;
    sub_18B816578(v54, _s4ItemVMa);
    if (v23 == v51)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_18BC22078();
  __break(1u);
  return result;
}

uint64_t sub_18BA25708(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA2576C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA257F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18BA25860()
{
  v1 = (v0 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;
  sub_18BC1E3F8();
  return v2;
}

void sub_18BA258B8()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_18BA263CC;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18B7B0DB0;
  v5[3] = &block_descriptor_13;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateKeyframesWithDuration:2 delay:v3 options:0 animations:0.5 completion:0.0];
  _Block_release(v3);
}

uint64_t sub_18BA259AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for SFFluidCollectionView.Element();
  *(v7 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement) = sub_18BC21FB8();
  swift_unknownObjectRelease();
  *&v20 = a2;
  *(&v20 + 1) = a3;
  *&v21 = a4;
  *(&v21 + 1) = a5;
  *&v22 = a6;
  *(&v22 + 1) = a7;
  v15 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  [v7 setAlpha_];
  [v7 setCenter_];
  [v7 setBounds_];
  v16 = (a1 + v15[20]);
  v17 = v16[1];
  v20 = *v16;
  v21 = v17;
  v22 = v16[2];
  [v7 setTransform_];
  v18 = [v7 layer];
  [v18 setZPosition_];

  return (*((*MEMORY[0x1E69E7D40] & *v7) + 0xE0))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_18BA25B6C()
{
  v1 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18BA25BB0(char a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_18BA25C60()
{
  v1 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_18BA25CA4(char a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_18BA25D54()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  return [v0 init];
}

uint64_t sub_18BA25D8C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_18BC1E3F8();
}

id SFFluidCollectionReusableView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *SFFluidCollectionReusableView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement] = 0;
  v4[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected] = 0;
  v4[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView] = (*(ObjectType + 216))();
  v17.receiver = v4;
  v17.super_class = type metadata accessor for SFFluidCollectionReusableView();
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView;
  v13 = *&v11[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView];
  v14 = v11;
  [v13 setAutoresizingMask_];
  v15 = *&v11[v12];
  [v14 bounds];
  [v15 setFrame_];

  [v14 addSubview_];
  return v14;
}

id SFFluidCollectionReusableView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SFFluidCollectionReusableView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_isHighlighted) = 0;
  sub_18BC21CF8();
  __break(1u);
}

void sub_18BA26224(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_18BA266C0;
  v14 = v3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_18B7B0DB0;
  v12 = &block_descriptor_16_0;
  v4 = _Block_copy(&v9);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_18BA266C8;
  v14 = v6;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_18B7B0DB0;
  v12 = &block_descriptor_22_0;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.5 animations:0.5];
  _Block_release(v7);
}

id SFFluidCollectionReusableView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFFluidCollectionReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id SFStepper.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id SFStepper.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

char *SFStepper.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = [objc_opt_self() isSolariumEnabled];
  v11 = 0.0;
  if (v10)
  {
    v11 = 12.0;
  }

  *&v4[OBJC_IVAR___SFStepper_separatorInset] = v11;
  v12 = OBJC_IVAR___SFStepper_enabledButtons;
  *&v5[v12] = sub_18BA29ABC(&unk_1EFF1A908);
  v13 = &v5[OBJC_IVAR___SFStepper_decrementButtonActionHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v5[OBJC_IVAR___SFStepper_incrementButtonActionHandler];
  *v14 = 0;
  v14[1] = 0;
  v5[OBJC_IVAR___SFStepper_isFocusedInPageMenu] = 0;
  v15 = &v5[OBJC_IVAR___SFStepper_hintText];
  *v15 = 0;
  v15[1] = 0;
  v5[OBJC_IVAR___SFStepper_needsInitialBlink] = 0;
  v5[OBJC_IVAR___SFStepper_isPulsing] = 0;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v5[OBJC_IVAR___SFStepper_containerView] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v5[OBJC_IVAR___SFStepper_shadowView] = v17;
  v18 = sub_18BC20B98();
  v19 = objc_opt_self();
  v20 = [v19 systemImageNamed_];

  v21 = type metadata accessor for MainButton();
  v22 = objc_allocWithZone(v21);
  v23 = sub_18BC18BD0(v20, 1, 0, 1);

  *&v5[OBJC_IVAR___SFStepper_leadingButton] = v23;
  v24 = sub_18BC20B98();
  v25 = [v19 systemImageNamed_];

  v26 = objc_allocWithZone(v21);
  v27 = sub_18BC18BD0(v25, 1, 0, 1);

  *&v5[OBJC_IVAR___SFStepper_trailingButton] = v27;
  v28 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v5[OBJC_IVAR___SFStepper_hintView] = v28;
  v29 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v5[OBJC_IVAR___SFStepper_hintLabel] = v29;
  v30 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v5[OBJC_IVAR___SFStepper_separator] = v30;
  v125.receiver = v5;
  v125.super_class = SFStepper;
  v31 = objc_msgSendSuper2(&v125, sel_initWithFrame_, a1, a2, a3, a4);
  v32 = OBJC_IVAR___SFStepper_shadowView;
  v33 = *&v31[OBJC_IVAR___SFStepper_shadowView];
  v34 = v31;
  v35 = [v33 layer];
  v121 = objc_opt_self();
  v36 = [v121 blackColor];
  v37 = [v36 CGColor];

  v123 = v35;
  [v35 setShadowColor_];

  [v35 setShadowOffset_];
  LODWORD(v38) = 1036831949;
  [v35 setShadowOpacity_];
  [v35 setShadowPathIsBounds_];
  [v35 setShadowRadius_];
  [*&v31[v32] setAlpha_];
  [v34 _sf_addEdgeMatchedSubview_];
  v39 = OBJC_IVAR___SFStepper_containerView;
  [*&v34[OBJC_IVAR___SFStepper_containerView] setClipsToBounds_];
  v40 = v39;
  [v34 &selRef:*&v34[v39] :?systemNavigationAction + 5];
  v41 = OBJC_IVAR___SFStepper_leadingButton;
  v42 = *&v34[OBJC_IVAR___SFStepper_leadingButton];
  v43 = sub_18BC20B98();
  [v42 setAccessibilityIdentifier_];

  [*&v34[v41] setTranslatesAutoresizingMaskIntoConstraints_];
  v44 = *&v34[v41];
  v124 = v41;
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v44;
  v116 = v45;
  v47 = sub_18BC215E8();
  [v46 addAction:v47 forControlEvents:{0x2000, 0, 0, 0, sub_18BA29CF8, v116}];

  [*&v34[v40] addSubview_];
  v48 = OBJC_IVAR___SFStepper_trailingButton;
  v49 = *&v34[OBJC_IVAR___SFStepper_trailingButton];
  v50 = sub_18BC20B98();
  [v49 setAccessibilityIdentifier_];

  [*&v34[v48] setTranslatesAutoresizingMaskIntoConstraints_];
  v51 = *&v34[v48];
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = v51;

  v54 = sub_18BC215E8();
  [v53 addAction:v54 forControlEvents:{0x2000, 0, 0, 0, sub_18BA29D1C, v52}];

  [*&v34[v40] addSubview_];
  v55 = OBJC_IVAR___SFStepper_separator;
  [*&v34[OBJC_IVAR___SFStepper_separator] setTranslatesAutoresizingMaskIntoConstraints_];
  v56 = v55;
  v118 = v55;
  v57 = *&v34[v55];
  v58 = [v121 separatorColor];
  [v57 setBackgroundColor_];

  [*&v34[v40] addSubview_];
  v59 = OBJC_IVAR___SFStepper_hintView;
  [*&v34[OBJC_IVAR___SFStepper_hintView] setAlpha_];
  v60 = *&v34[v59];
  v61 = [v121 secondarySystemGroupedBackgroundColor];
  [v60 setBackgroundColor_];

  v120 = v59;
  [*&v34[v40] _sf_addEdgeMatchedSubview_];
  v62 = *&v34[OBJC_IVAR___SFStepper_hintLabel];
  v63 = OBJC_IVAR___SFStepper_hintLabel;
  v64 = objc_opt_self();
  v65 = *MEMORY[0x1E69DDCF8];
  v66 = v62;
  v67 = [v64 preferredFontForTextStyle_];
  [v66 setFont_];

  v68 = *&v34[v63];
  v69 = [v121 secondaryLabelColor];
  [v68 setTextColor_];

  v119 = v63;
  [*&v34[v63] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v34[v59] addSubview_];
  v122 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_18BC45300;
  v71 = [*&v34[v124] topAnchor];
  v72 = [*&v34[v40] &selRef_startPageViewControllerShouldDeferLoadingContentUntilKeyboardAnimatesIn_];
  v73 = [v71 constraintEqualToAnchor_];

  *(v70 + 32) = v73;
  v74 = [*&v34[v124] bottomAnchor];
  v117 = v40;
  v75 = [*&v34[v40] bottomAnchor];
  v76 = [v74 &selRef:v75 containsButtonType:? + 5];

  *(v70 + 40) = v76;
  v77 = [*&v34[v124] leadingAnchor];
  v78 = [*&v34[v40] leadingAnchor];
  v79 = [v77 &selRef:v78 containsButtonType:? + 5];

  *(v70 + 48) = v79;
  v80 = [*&v34[v124] trailingAnchor];
  v81 = v48;
  v82 = [*&v34[v48] leadingAnchor];
  v83 = [v80 &selRef:v82 containsButtonType:? + 5];

  *(v70 + 56) = v83;
  v84 = [*&v34[v48] topAnchor];
  v85 = [*&v34[v117] topAnchor];
  v86 = [v84 &selRef:v85 containsButtonType:? + 5];

  *(v70 + 64) = v86;
  v87 = [*&v34[v48] bottomAnchor];
  v88 = [*&v34[v117] bottomAnchor];
  v89 = [v87 &selRef:v88 containsButtonType:? + 5];

  *(v70 + 72) = v89;
  v90 = [*&v34[v48] trailingAnchor];
  v91 = [*&v34[v117] trailingAnchor];
  v92 = [v90 &selRef:v91 containsButtonType:? + 5];

  *(v70 + 80) = v92;
  v93 = [*&v34[v48] widthAnchor];
  v94 = [*&v34[v124] widthAnchor];
  v95 = [v93 &selRef:v94 containsButtonType:? + 5];

  *(v70 + 88) = v95;
  v96 = [*&v34[v118] topAnchor];
  v97 = [*&v34[v117] topAnchor];
  v98 = OBJC_IVAR___SFStepper_separatorInset;
  v99 = [v96 constraintEqualToAnchor:v97 constant:*&v34[OBJC_IVAR___SFStepper_separatorInset]];

  *(v70 + 96) = v99;
  v100 = [*&v34[v118] bottomAnchor];
  v101 = [*&v34[v117] bottomAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:-*&v34[v98]];

  *(v70 + 104) = v102;
  v103 = [*&v34[v118] leadingAnchor];
  v104 = [*&v34[v81] leadingAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(v70 + 112) = v105;
  v106 = [*&v34[v118] widthAnchor];
  v107 = [v106 constraintEqualToConstant_];

  *(v70 + 120) = v107;
  v108 = [*&v34[v119] centerXAnchor];
  v109 = [*&v34[v120] centerXAnchor];
  v110 = [v108 constraintEqualToAnchor_];

  *(v70 + 128) = v110;
  v111 = [*&v34[v119] centerYAnchor];
  v112 = [*&v34[v120] centerYAnchor];
  v113 = [v111 constraintEqualToAnchor_];

  *(v70 + 136) = v113;
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v114 = sub_18BC20D88();

  [v122 activateConstraints_];

  return v34;
}

void sub_18BA27604(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong *a3];

    if (v6)
    {
      v6[2](v6);
      _Block_release(v6);
    }
  }
}

void SFStepper.isUserInteractionEnabled.setter(char a1)
{
  v5.super_class = SFStepper;
  v3 = objc_msgSendSuper2(&v5, sel_isUserInteractionEnabled);
  v4.receiver = v1;
  v4.super_class = SFStepper;
  objc_msgSendSuper2(&v4, sel_setUserInteractionEnabled_, a1 & 1);
  sub_18BA27818(v3);
}

void sub_18BA27818(char a1)
{
  if ([v1 isUserInteractionEnabled] != (a1 & 1))
  {
    v2 = [v1 leadingButton];
    v3 = [v1 isUserInteractionEnabled];
    if (v3)
    {
      v4 = OBJC_IVAR___SFStepper_enabledButtons;
      swift_beginAccess();
      LOBYTE(v3) = sub_18B9BAE24(1, *&v1[v4]);
    }

    [v2 setEnabled_];

    v5 = [v1 trailingButton];
    v6 = [v1 isUserInteractionEnabled];
    if (v6)
    {
      v7 = OBJC_IVAR___SFStepper_enabledButtons;
      swift_beginAccess();
      LOBYTE(v6) = sub_18B9BAE24(0, *&v1[v7]);
    }

    [v5 setEnabled_];
  }
}

id SFStepper._continuousCornerRadius.setter(double a1)
{
  v4.super_class = SFStepper;
  objc_msgSendSuper2(&v4, sel__setContinuousCornerRadius_);
  [*(v1 + OBJC_IVAR___SFStepper_containerView) _setContinuousCornerRadius_];
  return [*(v1 + OBJC_IVAR___SFStepper_shadowView) _setContinuousCornerRadius_];
}

void *sub_18BA27BC8@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = [*a1 decrementButtonActionHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_18BA2A9D8;
    result[3] = v5;
    v6 = sub_18B9D53B0;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

id sub_18BA27C84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7B0DB0;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
    sub_18BC1E1A8();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_18BA27D64(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_18B824D48(*v2);
  return v3;
}

uint64_t sub_18BA27E88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  return sub_18B7E0A10(v7);
}

void *sub_18BA27EE4@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = [*a1 incrementButtonActionHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_18BA2A9D8;
    result[3] = v5;
    v6 = sub_18B7D1E94;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void sub_18BA27F8C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v10 = *a1;
  if (*a1)
  {
    v13 = a1[1];
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = v13;
    v15 = *a2;
    v17[4] = a6;
    v17[5] = v14;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_18B7B0DB0;
    v17[3] = a7;
    v16 = _Block_copy(v17);
    sub_18BC1E1A8();
  }

  else
  {
    v16 = 0;
    v15 = *a2;
  }

  [v15 *a8];
  _Block_release(v16);
}

uint64_t SFStepper.isFocusedInPageMenu.getter()
{
  v1 = OBJC_IVAR___SFStepper_isFocusedInPageMenu;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SFStepper.isFocusedInPageMenu.setter(char a1)
{
  v3 = OBJC_IVAR___SFStepper_isFocusedInPageMenu;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SFStepper.hintText.getter()
{
  v1 = (v0 + OBJC_IVAR___SFStepper_hintText);
  swift_beginAccess();
  v2 = *v1;
  sub_18BC1E3F8();
  return v2;
}

uint64_t SFStepper.hintText.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___SFStepper_hintText];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_18BC21FD8() & 1) != 0)
      {
      }
    }
  }

  else if (!v8)
  {
    return result;
  }

  if (![objc_opt_self() isSolariumEnabled])
  {
    if ([v2 needsInitialBlink])
    {
      [v2 blink];
    }
  }
}

void sub_18BA283EC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 hintText];
  if (v3)
  {
    v4 = v3;
    v5 = sub_18BC20BD8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_18BA28454(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_18BC20B98();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setHintText_];
}

uint64_t SFStepper.needsInitialBlink.getter()
{
  v1 = OBJC_IVAR___SFStepper_needsInitialBlink;
  swift_beginAccess();
  return *(v0 + v1);
}

id SFStepper.needsInitialBlink.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___SFStepper_needsInitialBlink;
  result = swift_beginAccess();
  v6 = v1[v4];
  v1[v4] = a1;
  if (v6 != v3)
  {
    result = [objc_opt_self() isSolariumEnabled];
    if (!result)
    {
      result = [v1 needsInitialBlink];
      if (result)
      {
        return [v1 blink];
      }
    }
  }

  return result;
}

Swift::Void __swiftcall SFStepper.blink()()
{
  v1 = [v0 hintText];
  if (v1)
  {
    v5 = v1;
    if ([v0 isUserInteractionEnabled])
    {
      [*&v0[OBJC_IVAR___SFStepper_hintLabel] setText_];

      v2 = [*&v0[OBJC_IVAR___SFStepper_hintView] layer];
      v3 = sub_18BA29D40(1);
      v4 = sub_18BC20B98();
      [v2 addAnimation:v3 forKey:v4];

      [v0 setHintText_];

      [v0 setNeedsInitialBlink_];
    }

    else
    {
    }
  }
}

id sub_18BA287EC(double a1, CGFloat a2)
{
  v3 = v2;
  v6 = sub_18BC20B98();
  v7 = [objc_opt_self() animationWithKeyPath_];

  v8 = *(MEMORY[0x1E69792E8] + 80);
  v23 = *(MEMORY[0x1E69792E8] + 64);
  v24 = v8;
  v9 = *(MEMORY[0x1E69792E8] + 112);
  v25 = *(MEMORY[0x1E69792E8] + 96);
  v26 = v9;
  v10 = *(MEMORY[0x1E69792E8] + 16);
  v19 = *MEMORY[0x1E69792E8];
  v20 = v10;
  v11 = *(MEMORY[0x1E69792E8] + 48);
  v21 = *(MEMORY[0x1E69792E8] + 32);
  v22 = v11;
  v12 = v7;
  v13 = sub_18BC211F8();
  [v12 setFromValue_];

  [v3 transform];
  CGAffineTransformScale(&v17, &v18, a2, a2);
  CATransform3DMakeAffineTransform(&v18, &v17);
  v14 = sub_18BC211F8();
  [v12 setToValue_];

  [v12 setDamping_];
  [v12 setMass_];
  [v12 setStiffness_];
  v15 = v12;
  [v15 settlingDuration];
  [v15 setDuration_];
  [v15 setBeginTime_];
  [v15 setFillMode_];
  [v15 setAdditive_];
  [v15 setRemovedOnCompletion_];

  return v15;
}

void sub_18BA28A14()
{
  v1 = OBJC_IVAR___SFStepper_isPulsing;
  if ((v0[OBJC_IVAR___SFStepper_isPulsing] & 1) == 0)
  {
    if ([v0 isUserInteractionEnabled])
    {
      v0[v1] = 1;
      v2 = objc_opt_self();
      [v2 begin];
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      v4[2] = v3;
      v4[3] = 0x7055656C616373;
      v4[4] = 0xE700000000000000;
      v4[5] = 0x776F44656C616373;
      v4[6] = 0xE90000000000006ELL;
      v12[4] = sub_18BA2A68C;
      v12[5] = v4;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 1107296256;
      v12[2] = sub_18B7B0DB0;
      v12[3] = &block_descriptor_20;
      v5 = _Block_copy(v12);

      [v2 setCompletionBlock_];
      _Block_release(v5);
      v6 = [v0 layer];
      v7 = sub_18BA287EC(0.0, 1.4);
      v8 = sub_18BC20B98();
      [v6 addAnimation:v7 forKey:v8];

      v9 = [v0 layer];
      v10 = sub_18BA287EC(0.21, 0.714285714);
      v11 = sub_18BC20B98();
      [v9 addAnimation:v10 forKey:v11];

      [v2 commit];
    }
  }
}

void sub_18BA28C6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR___SFStepper_isPulsing] = 0;
    v1 = Strong;
    v2 = [v1 layer];
    v3 = sub_18BC20B98();
    [v2 removeAnimationForKey_];

    v4 = [v1 layer];
    v5 = sub_18BC20B98();
    [v4 removeAnimationForKey_];
  }
}

Swift::Void __swiftcall SFStepper.prepareForFocus()()
{
  v1 = [v0 leadingButton];
  [v1 setHighlighted_];

  v2 = [v0 trailingButton];
  [v2 setHighlighted_];

  [*&v0[OBJC_IVAR___SFStepper_shadowView] setAlpha_];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_18BA29EE0;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18B7B0DB0;
  v7[3] = &block_descriptor_14;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v3 animateWithDuration:v5 animations:0.15];
  _Block_release(v5);
}

void sub_18BA28F2C(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR___SFStepper_shadowView) layer];
  [v1 setShadowOffset_];
  [v1 setShadowRadius_];
}

void sub_18BA28FF8(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    sub_18BB5F3A0(&v7, a2);
  }

  else
  {
    swift_beginAccess();
    sub_18B9CECD0(a2);
  }

  swift_endAccess();
  if ([v2 isUserInteractionEnabled])
  {
    if (a2 == 1)
    {
      v5 = &selRef_leadingButton;
    }

    else
    {
      if (a2)
      {
        return;
      }

      v5 = &selRef_trailingButton;
    }

    v6 = [v2 *v5];
    [v6 setEnabled_];
  }
}

void sub_18BA2925C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_18BC219A8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FF0);
      v3 = sub_18BC21AA8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_18BC219A8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x18CFFD010](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_18BC215B8();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SFFluidCollectionReusableView();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_18BC215C8();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_18BC215B8();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for SFFluidCollectionReusableView();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_18BC215C8();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_18BA2953C(unint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = result >> 62;
  if (result >> 62)
  {
    v7 = a2;
    result = sub_18BC219A8();
    a2 = v7;
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      result = sub_18BC21AA8();
      v4 = result;
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      if (!v3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v4 = MEMORY[0x1E69E7CD0];
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!v3)
  {
LABEL_4:
    v6 = *(v5 + 16);
    if (!v6)
    {
      return v4;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_18BC219A8();
  v6 = result;
  if (!result)
  {
    return v4;
  }

LABEL_9:
  v8 = v4 + 56;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v9 = 0;
    while (1)
    {
      result = MEMORY[0x18CFFD010](v9, v2);
      v10 = __OFADD__(v9++, 1);
      if (v10)
      {
        break;
      }

      v11 = result;
      sub_18BC22158();
      MEMORY[0x18CFFD660](v11);
      result = sub_18BC221A8();
      v12 = ~(-1 << *(v4 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v8 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v4 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v8 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
        if (v9 == v6)
        {
          return v4;
        }
      }

      else
      {
LABEL_16:
        *(v8 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v18 = *(v4 + 16);
        v10 = __OFADD__(v18, 1);
        v19 = v18 + 1;
        if (v10)
        {
          goto LABEL_28;
        }

        *(v4 + 16) = v19;
        if (v9 == v6)
        {
          return v4;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v20 = 0;
    v21 = v2 + 32;
    v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v20 != v22)
    {
      v23 = *(v21 + 8 * v20);
      sub_18BC22158();
      MEMORY[0x18CFFD660](v23);
      result = sub_18BC221A8();
      v24 = ~(-1 << *(v4 + 32));
      v25 = result & v24;
      v26 = (result & v24) >> 6;
      v27 = *(v8 + 8 * v26);
      v28 = 1 << (result & v24);
      v29 = *(v4 + 48);
      if ((v28 & v27) != 0)
      {
        while (*(v29 + 8 * v25) != v23)
        {
          v25 = (v25 + 1) & v24;
          v26 = v25 >> 6;
          v27 = *(v8 + 8 * (v25 >> 6));
          v28 = 1 << v25;
          if (((1 << v25) & v27) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
LABEL_25:
        *(v8 + 8 * v26) = v28 | v27;
        *(v29 + 8 * v25) = v23;
        v30 = *(v4 + 16);
        v10 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v10)
        {
          goto LABEL_30;
        }

        *(v4 + 16) = v31;
        result = sub_18BC1E1A8();
      }

      if (++v20 == v6)
      {
        return v4;
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_18BA29840(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v36 = a2(0);
  v8 = *(v36 - 8);
  v9 = MEMORY[0x1EEE9AC00](v36);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v15 = sub_18BC21AA8();
    v16 = 0;
    v17 = v15 + 56;
    v18 = *(v8 + 80);
    v33 = v14;
    v34 = a1 + ((v18 + 32) & ~v18);
    v19 = *(v8 + 72);
    while (1)
    {
      v35 = v16;
      sub_18B855538(v34 + v19 * v16, v13, a5);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      v20 = sub_18BC221A8();
      v21 = -1 << *(v15 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      v24 = *(v17 + 8 * (v22 >> 6));
      v25 = 1 << v22;
      if (((1 << v22) & v24) != 0)
      {
        v26 = ~v21;
        do
        {
          sub_18B855538(*(v15 + 48) + v22 * v19, v11, a5);
          updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
          sub_18B8153E0(v11, a5);
          if (updated)
          {
            sub_18B8153E0(v13, a5);
            v14 = v33;
            goto LABEL_4;
          }

          v22 = (v22 + 1) & v26;
          v23 = v22 >> 6;
          v24 = *(v17 + 8 * (v22 >> 6));
          v25 = 1 << v22;
        }

        while (((1 << v22) & v24) != 0);
        v14 = v33;
      }

      *(v17 + 8 * v23) = v25 | v24;
      result = sub_18B82976C(v13, *(v15 + 48) + v22 * v19, a5);
      v29 = *(v15 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v15 + 16) = v31;
LABEL_4:
      v16 = v35 + 1;
      if (v35 + 1 == v14)
      {
        return v15;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_18BA29ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FD0);
    v3 = sub_18BC21AA8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_18BC22158();
      MEMORY[0x18CFFD660](v10);
      result = sub_18BC221A8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void _sSo9SFStepperC12MobileSafariE5coderABSgSo7NSCoderC_tcfc_0()
{
  v1 = [objc_opt_self() isSolariumEnabled];
  v2 = 0.0;
  if (v1)
  {
    v2 = 12.0;
  }

  *(v0 + OBJC_IVAR___SFStepper_separatorInset) = v2;
  v3 = OBJC_IVAR___SFStepper_enabledButtons;
  *(v0 + v3) = sub_18BA29ABC(&unk_1EFF1A8D8);
  v4 = (v0 + OBJC_IVAR___SFStepper_decrementButtonActionHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___SFStepper_incrementButtonActionHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___SFStepper_isFocusedInPageMenu) = 0;
  v6 = (v0 + OBJC_IVAR___SFStepper_hintText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR___SFStepper_needsInitialBlink) = 0;
  *(v0 + OBJC_IVAR___SFStepper_isPulsing) = 0;
  sub_18BC21CF8();
  __break(1u);
}

id sub_18BA29D40(char a1)
{
  v2 = sub_18BC20B98();
  v3 = [objc_opt_self() animationWithKeyPath_];

  v4 = MEMORY[0x1E69E6530];
  v15 = MEMORY[0x1E69E6530];
  v14[0] = (a1 & 1) == 0;
  __swift_project_boxed_opaque_existential_1Tm(v14, MEMORY[0x1E69E6530]);
  v5 = sub_18BC21FB8();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  [v3 setFromValue_];
  swift_unknownObjectRelease();
  v15 = v4;
  v14[0] = a1 & 1;
  __swift_project_boxed_opaque_existential_1Tm(v14, v4);
  v6 = sub_18BC21FB8();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  [v3 setToValue_];
  swift_unknownObjectRelease();
  v7 = v3;
  [v7 setAutoreverses_];
  [v7 setDuration_];
  v8 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v9) = 1028443341;
  LODWORD(v10) = 1034147594;
  LODWORD(v11) = 1.5;
  v12 = [v8 initWithControlPoints__:v9 :{0.0, v10, v11}];
  [v7 setTimingFunction_];

  return v7;
}

uint64_t sub_18BA29F38(uint64_t a1)
{
  v2 = _s4ItemVMa_0();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v39 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D9FB0);
    v9 = sub_18BC21AA8();
    v10 = 0;
    v11 = v9 + 56;
    v12 = *(v3 + 80);
    v40 = v2;
    v41 = a1 + ((v12 + 32) & ~v12);
    v13 = *(v3 + 72);
    v42 = v8;
    while (1)
    {
      v47 = v10;
      v14 = v50;
      sub_18B855538(v41 + v13 * v10, v50, _s4ItemVMa_0);
      sub_18BC22158();
      v15 = *v14;
      sub_18BC22178();
      v51 = v14[1];
      sub_18BC22178();
      v16 = v2[6];
      sub_18BC1EC08();
      sub_18B80D494();
      v49 = v16;
      sub_18BC20A78();
      v17 = *&v14[v2[7]];
      sub_18BC22178();
      if (v17)
      {
        v18 = v17;
        sub_18BC215D8();
      }

      v19 = v50;
      v46 = v50[v2[8]];
      sub_18BC22178();
      v45 = *(v19 + v2[9]);
      sub_18BC22178();
      v20 = (v19 + v2[10]);
      v21 = v20[1];
      v43 = *v20;
      v44 = v21;
      sub_18BC22178();
      if (v21)
      {
        sub_18BC20C28();
      }

      v22 = sub_18BC221A8();
      v23 = ~(-1 << *(v9 + 32));
      v24 = v22 & v23;
      v25 = (v22 & v23) >> 6;
      v26 = *(v11 + 8 * v25);
      v27 = 1 << (v22 & v23);
      if ((v27 & v26) != 0)
      {
        break;
      }

LABEL_27:
      *(v11 + 8 * v25) = v26 | v27;
      result = sub_18B82976C(v50, *(v9 + 48) + v24 * v13, _s4ItemVMa_0);
      v36 = *(v9 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      v34 = v42;
      if (v37)
      {
        __break(1u);
        return result;
      }

      *(v9 + 16) = v38;
LABEL_29:
      v10 = v47 + 1;
      if (v47 + 1 == v34)
      {
        return v9;
      }
    }

    v48 = v17;
    while (1)
    {
      sub_18B855538(*(v9 + 48) + v24 * v13, v5, _s4ItemVMa_0);
      if (v15 != *v5 || v51 != v5[1] || (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        goto LABEL_10;
      }

      v28 = *&v5[v2[7]];
      if (v28)
      {
        if (!v48)
        {
          goto LABEL_10;
        }

        sub_18B7B0AC0(0, &qword_1ED6514F0);
        v29 = v48;
        v30 = v28;
        v31 = sub_18BC215C8();

        v2 = v40;
        if ((v31 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v48)
      {
        goto LABEL_10;
      }

      if (v46 == v5[v2[8]] && v45 == v5[v2[9]])
      {
        v32 = &v5[v2[10]];
        v33 = *(v32 + 1);
        if (v33)
        {
          if (v44 && (*v32 == v43 && v33 == v44 || (sub_18BC21FD8() & 1) != 0))
          {
LABEL_26:
            sub_18B8153E0(v5, _s4ItemVMa_0);
            sub_18B8153E0(v50, _s4ItemVMa_0);
            v34 = v42;
            goto LABEL_29;
          }
        }

        else if (!v44)
        {
          goto LABEL_26;
        }
      }

LABEL_10:
      sub_18B8153E0(v5, _s4ItemVMa_0);
      v24 = (v24 + 1) & v23;
      v25 = v24 >> 6;
      v26 = *(v11 + 8 * (v24 >> 6));
      v27 = 1 << v24;
      if ((v26 & (1 << v24)) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_18BA2A444(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v16 = sub_18BC21AA8();
    v17 = 0;
    v18 = v16 + 56;
    v31 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v32 = v15;
    v19 = *(v9 + 72);
    while (2)
    {
      sub_18B855538(v31 + v19 * v17, v14, a5);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B80D494();
      sub_18BC20A78();
      v21 = sub_18BC221A8();
      v22 = ~(-1 << *(v16 + 32));
      for (i = v21 & v22; ; i = (i + 1) & v22)
      {
        v24 = *(v18 + 8 * (i >> 6));
        if (((1 << i) & v24) == 0)
        {
          break;
        }

        sub_18B855538(*(v16 + 48) + i * v19, v11, a5);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        sub_18B8153E0(v11, a5);
        if (updated)
        {
          sub_18B8153E0(v14, a5);
          v20 = v32;
          goto LABEL_4;
        }
      }

      *(v18 + 8 * (i >> 6)) = (1 << i) | v24;
      result = sub_18B82976C(v14, *(v16 + 48) + i * v19, a5);
      v27 = *(v16 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      v20 = v32;
      if (!v28)
      {
        *(v16 + 16) = v29;
LABEL_4:
        if (++v17 == v20)
        {
          return v16;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_18BA2A6A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5020);
    v3 = sub_18BC21AA8();
    v4 = 0;
    v5 = v3 + 56;
    v20 = a1 + 32;
    while (1)
    {
      sub_18B833990(v20 + 40 * v4, v33);
      sub_18BC22158();
      sub_18B833990(v33, &v30);
      if (*(&v31 + 1) > 1)
      {
        if (*(&v31 + 1) == 2)
        {
          v6 = 3;
        }

        else
        {
          if (*(&v31 + 1) != 3)
          {
LABEL_12:
            v23[0] = v30;
            v23[1] = v31;
            v24 = v32;
            MEMORY[0x18CFFD660](2);
            sub_18BC21A58();
            sub_18B831014(v23);
            goto LABEL_16;
          }

          v6 = 4;
        }
      }

      else if (*(&v31 + 1))
      {
        if (*(&v31 + 1) != 1)
        {
          goto LABEL_12;
        }

        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      MEMORY[0x18CFFD660](v6);
LABEL_16:
      result = sub_18BC221A8();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          sub_18B833990(*(v3 + 48) + 40 * v9, &v30);
          sub_18B833990(&v30, v25);
          sub_18B833990(v33, &v27);
          if (v26 > 1)
          {
            if (v26 == 2)
            {
              sub_18B833D9C(&v30);
              if (*(&v28 + 1) == 2)
              {
                goto LABEL_3;
              }

              goto LABEL_31;
            }

            if (v26 == 3)
            {
              sub_18B833D9C(&v30);
              if (*(&v28 + 1) == 3)
              {
                goto LABEL_3;
              }

              goto LABEL_31;
            }
          }

          else
          {
            if (!v26)
            {
              sub_18B833D9C(&v30);
              if (!*(&v28 + 1))
              {
                goto LABEL_3;
              }

              goto LABEL_31;
            }

            if (v26 == 1)
            {
              sub_18B833D9C(&v30);
              if (*(&v28 + 1) == 1)
              {
                goto LABEL_3;
              }

              goto LABEL_31;
            }
          }

          sub_18B833990(v25, v23);
          if (*(&v28 + 1) < 4uLL)
          {
            sub_18B833D9C(&v30);
            sub_18B831014(v23);
LABEL_31:
            result = sub_18B86C4A4(v25);
            goto LABEL_32;
          }

          v21[0] = v27;
          v21[1] = v28;
          v22 = v29;
          v13 = MEMORY[0x18CFFCF40](v23, v21);
          sub_18B831014(v21);
          sub_18B833D9C(&v30);
          sub_18B831014(v23);
          if (v13)
          {
LABEL_3:
            sub_18B833D9C(v25);
            sub_18B833D9C(v33);
            goto LABEL_4;
          }

          result = sub_18B833D9C(v25);
LABEL_32:
          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      v14 = *(v3 + 48) + 40 * v9;
      v15 = v33[0];
      v16 = v33[1];
      *(v14 + 32) = v34;
      *v14 = v15;
      *(v14 + 16) = v16;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v19;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_18BA2A9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v62 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6488);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - v8;
  v10 = *(v4 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_dataSource);
  if (!v10)
  {
    return;
  }

  sub_18BA2CD78();
  v11 = v10;
  sub_18BC1FB28();
  sub_18BC1FA88();
  v12 = v4 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter;
  v13 = *(v4 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8);
  if (!v13)
  {
    goto LABEL_48;
  }

  v14 = *(v12 + 16);
  v15 = *(v12 + 24);
  *&v67 = 0;
  BYTE8(v67) = 1;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  isUniquelyReferenced_nonNull_native = sub_18BC1FA38();
  if (!a2)
  {

    goto LABEL_48;
  }

  v56 = v15;
  v50 = v13;
  v51 = v11;
  v52 = v9;
  v53 = v7;
  v54 = v6;
  v17 = *(v14 + 16);
  if (!v17)
  {
    goto LABEL_47;
  }

  v18 = 0;
  v19 = v14 + 64;
  v58 = *(v14 + 16);
  v48 = v17 - 1;
  v20 = MEMORY[0x1E69E7CC0];
  v49 = v14 + 64;
  do
  {
    v55 = v20;
    v21 = (v19 + 40 * v18);
    v22 = v18;
    while (1)
    {
      if (v22 >= *(v14 + 16))
      {
        __break(1u);
        return;
      }

      v63 = v22;
      v23 = *(v21 - 4);
      v24 = *(v21 - 16);
      v25 = *(v21 - 1);
      v26 = *v21;
      v60 = *(v21 - 3);
      v61 = v23;
      *&v67 = v23;
      *(&v67 + 1) = v60;
      v59 = v24;
      LOBYTE(v68) = v24;
      *(&v68 + 1) = v25;
      v69 = v26;
      MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
      *(&v48 - 2) = &v67;
      sub_18BC1E3F8();
      v27 = sub_18B9B51DC(sub_18BA2CE90, (&v48 - 4), v62);
      v28 = v63;
      if ((v27 & 1) == 0)
      {
        goto LABEL_7;
      }

      sub_18B994B7C(v25, v26, v62, v78);
      if (!v79 || ((sub_18B988BAC(v78, &qword_1EA9D4078), !*(v57 + 16)) || (v29 = sub_18B831970(v25, v26), (v30 & 1) == 0) ? (v69 = 0, v67 = 0u, v68 = 0u) : (v31 = *(v57 + 56) + 16 * v29, v32 = *v31, (v33 = *(v31 + 8)) == 0) ? (*(&v68 + 1) = MEMORY[0x1E69E6370], v69 = MEMORY[0x1E69E6380], LOBYTE(v67) = v32 & 1) : v33 != 1 ? (*(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0), v69 = sub_18B996184(), *&v67 = v32, v41 = v32) : (*(&v68 + 1) = MEMORY[0x1E69E7DE0], v69 = sub_18B7F3B64(), *&v67 = v32), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64B0), (swift_dynamicCast() & 1) == 0))
      {
        v76 = 0;
        memset(v75, 0, sizeof(v75));
      }

      sub_18B994B7C(v25, v26, v14, v80);
      if (!v81 || ((sub_18B988BAC(v80, &qword_1EA9D4078), v34 = v56, !*(v56 + 16)) || (v35 = sub_18B831970(v25, v26), (v36 & 1) == 0) ? (v69 = 0, v67 = 0u, v68 = 0u) : (v37 = *(v34 + 56) + 16 * v35, v38 = *v37, (v39 = *(v37 + 8)) == 0) ? (*(&v68 + 1) = MEMORY[0x1E69E6370], v69 = MEMORY[0x1E69E6380], LOBYTE(v67) = v38 & 1) : v39 != 1 ? (*(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0), v69 = sub_18B996184(), *&v67 = v38, v42 = v38) : (*(&v68 + 1) = MEMORY[0x1E69E7DE0], v69 = sub_18B7F3B64(), *&v67 = v38), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64B0), (swift_dynamicCast() & 1) == 0))
      {
        v74 = 0;
        memset(v73, 0, sizeof(v73));
      }

      sub_18BA2CEB0(v75, &v67);
      sub_18BA2CEB0(v73, &v70);
      if (*(&v68 + 1))
      {
        break;
      }

      sub_18B988BAC(v73, &qword_1EA9D4080);
      sub_18B988BAC(v75, &qword_1EA9D4080);
      if (*(&v71 + 1))
      {
        goto LABEL_39;
      }

      sub_18B988BAC(&v67, &qword_1EA9D4080);
LABEL_7:
      v22 = v28 + 1;

      v21 += 5;
      if (v58 == v22)
      {
        goto LABEL_47;
      }
    }

    sub_18BA2CEB0(&v67, v66);
    if (*(&v71 + 1))
    {
      v64[0] = v70;
      v64[1] = v71;
      v65 = v72;
      v40 = MEMORY[0x18CFFCF40](v66, v64);
      sub_18B831014(v64);
      sub_18B988BAC(v73, &qword_1EA9D4080);
      sub_18B988BAC(v75, &qword_1EA9D4080);
      sub_18B831014(v66);
      sub_18B988BAC(&v67, &qword_1EA9D4080);
      if ((v40 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_7;
    }

    sub_18B988BAC(v73, &qword_1EA9D4080);
    sub_18B988BAC(v75, &qword_1EA9D4080);
    sub_18B831014(v66);
LABEL_39:
    sub_18B988BAC(&v67, &unk_1EA9D64A0);
LABEL_40:
    v20 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_18B9B68E4(0, *(v20 + 16) + 1, 1);
      v20 = v77;
    }

    v44 = *(v20 + 16);
    v43 = *(v20 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v55 = v44 + 1;
      isUniquelyReferenced_nonNull_native = sub_18B9B68E4((v43 > 1), v44 + 1, 1);
      v45 = v55;
      v20 = v77;
    }

    v18 = v28 + 1;
    *(v20 + 16) = v45;
    v46 = v20 + 40 * v44;
    v47 = v60;
    *(v46 + 32) = v61;
    *(v46 + 40) = v47;
    *(v46 + 48) = v59;
    *(v46 + 56) = v25;
    *(v46 + 64) = v26;
    v19 = v49;
  }

  while (v48 != v28);
LABEL_47:

  v6 = v54;
  v9 = v52;
  sub_18BC1FA58();

  v7 = v53;
  v11 = v51;
LABEL_48:
  sub_18BC1FDC8();

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_18BA2B140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
  v6 = *&v4[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
  v7 = *&v4[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8];
  v8 = *&v4[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 16];
  v9 = *&v4[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 24];
  *v5 = a1;
  *(v5 + 1) = a2;
  *(v5 + 2) = a3;
  *(v5 + 3) = a4;
  if (a2)
  {
    sub_18BC1E3F8();
    v10 = sub_18BC20B98();
  }

  else
  {
    v10 = 0;
  }

  [v4 setTitle_];

  sub_18BA2A9E0(v6, v7, v8, v9);
  sub_18BA2CF70(v6, v7);
  v11 = *&v4[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_editHandler];
  sub_18BC1E1A8();
  v11(v4);
}

void (*sub_18BA2B240(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter);
  v6 = *(v1 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8);
  v7 = *(v1 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 16);
  v8 = *(v1 + OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 24);
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  sub_18BA2CF20(v5, v6);
  return sub_18BA2B2D0;
}

void sub_18BA2B2D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    sub_18BA2CF20(**a1, v4);
    sub_18BA2B140(v3, v4, v5, v6);
    sub_18BA2CF70(*v2, v2[1]);
  }

  else
  {
    sub_18BA2B140(**a1, v4, v5, v6);
  }

  free(v2);
}

id sub_18BA2B388()
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D64C8);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v39 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64D0);
  v45 = *(v47 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v39 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v39 - v12;
  result = [v0 view];
  if (result)
  {
    v15 = result;
    v16 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor_];

    v43 = *&v0[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_collectionView];
    [v43 setDelegate_];
    v17 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v18 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v19 = swift_allocObject();
    v19[2] = sub_18BA2B958;
    v19[3] = 0;
    v19[4] = sub_18BA2CFC0;
    v19[5] = v17;
    v19[6] = sub_18BA2CFC8;
    v19[7] = v18;
    sub_18B7B0AC0(0, &qword_1EA9D3580);
    v40 = v13;
    sub_18BC21298();
    swift_allocObject();
    v42 = v0;
    swift_unknownObjectUnownedInit();
    sub_18B7B0AC0(0, &qword_1EA9D64E0);
    v20 = v49;
    sub_18BC21298();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = v9;
    sub_18BC21298();
    v21 = v45;
    v22 = *(v45 + 16);
    v23 = v47;
    v22(v50, v9, v47);
    v24 = v48;
    v25 = v46;
    (*(v48 + 16))(v46, v20, v52);
    v22(v51, v13, v23);
    v26 = *(v21 + 80);
    v27 = (v26 + 16) & ~v26;
    v28 = (v4 + *(v24 + 80) + v27) & ~*(v24 + 80);
    v29 = (v44 + v26 + v28) & ~v26;
    v30 = swift_allocObject();
    v31 = *(v21 + 32);
    v31(v30 + v27, v50, v23);
    v32 = v30 + v28;
    v33 = v52;
    (*(v24 + 32))(v32, v25, v52);
    v31(v30 + v29, v51, v23);
    v34 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D64E8));
    v35 = v43;
    v36 = sub_18BC1FCE8();
    v37 = *&v42[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_dataSource];
    *&v42[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_dataSource] = v36;

    sub_18BA2A9E0(0, 0, 0, 0);
    v38 = *(v21 + 8);
    v38(v41, v23);
    (*(v24 + 8))(v49, v33);
    return (v38)(v40, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA2B958(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_18BC1E3F8();
  return v1;
}

uint64_t sub_18BA2B988(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
  v5 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8];
  v6 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 16];
  v7 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 24];
  sub_18BA2CF20(v4, v5);

  if (!v5)
  {
    return 0;
  }

  v8 = sub_18BA2D15C(v1, v2, v6, v7);
  sub_18BA2CF70(v4, v5);
  return v8;
}

void sub_18BA2BA34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = sub_18BA2B240(v9);
  if (*(v7 + 8))
  {
    v8 = a2;
    sub_18BC1E3F8();
    sub_18B990AD0(a2, v3, v4);
  }

  v6(v9, 0);
}

uint64_t sub_18BA2BAD8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a3[1];
  v35 = *a3;
  v36 = v3;
  v37 = *(a3 + 4);
  if (v3)
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  else
  {
    v4 = v35;
    v5 = *(&v36 + 1);
    v6 = v37;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
    v9 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8];
    v10 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 16];
    v11 = *&Strong[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 24];
    sub_18BA2D578(&v35, &v28);
    sub_18BA2CF20(v8, v9);

    if (v9)
    {
      v12 = sub_18BA2D2C0(v5, v6, v10, v11);
      v14 = v13;
      sub_18BA2CF70(v8, v9);
      if (v14)
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v15 = swift_allocObject();
    v16 = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectUnownedInit();

    v17 = swift_allocObject();
    v18 = v36;
    *(v17 + 24) = v35;
    *(v17 + 16) = v15;
    *(v17 + 40) = v18;
    *(v17 + 56) = v37;
    v24 = v4;
    *&v25 = 0x3FB999999999999ALL;
    *(&v25 + 1) = v5;
    *&v26 = v6;
    *(&v26 + 1) = v12;
    *&v27 = sub_18BA2D5D4;
    *(&v27 + 1) = v17;
    v23[3] = &type metadata for SFSliderCellContentConfiguration;
    v23[4] = sub_18BA2D5E0();
    v19 = swift_allocObject();
    v23[0] = v19;
    v20 = v25;
    v19[1] = v4;
    v19[2] = v20;
    v21 = v27;
    v19[3] = v26;
    v19[4] = v21;
    sub_18BA2D578(&v35, &v28);
    sub_18BA2D634(&v24, &v28);
    MEMORY[0x18CFFC900](v23);
    v28 = v4;
    v29 = 0x3FB999999999999ALL;
    v30 = v5;
    v31 = v6;
    v32 = v12;
    v33 = sub_18BA2D5D4;
    v34 = v17;
    return sub_18BA2D690(&v28);
  }

  return result;
}

void sub_18BA2BD2C(double a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = sub_18BA2B240(v10);
  if (*(v7 + 8))
  {
    v9 = *(a3 + 24);
    v8 = *(a3 + 32);
    sub_18BC1E3F8();
    sub_18B990CD0(*&a1, 0, v9, v8);
  }

  v6(v10, 0);
}

uint64_t sub_18BA2BDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_18BC1F568();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC1F4E8();
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC1FA08();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + 24);
  v18 = *(a3 + 32);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = v14;
    v42 = v7;
    v43 = v13;
    v44 = a1;
    v20 = result;
    sub_18BC1F9F8();
    sub_18BC1E3F8();
    sub_18BC1F9B8();
    v50 = v20;
    v21 = &v20[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
    v22 = *&v20[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter + 8];
    if (v22)
    {
      v24 = v21[2];
      v23 = v21[3];
      v25 = *v21;
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v26 = sub_18BA2D418(v17, v18, v24, v23);
      sub_18BA2CF70(v25, v22);
    }

    else
    {
      v26 = 0;
    }

    v27 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
    [v27 setOn_];
    sub_18B7B0AC0(0, &qword_1EA9D52D0);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = *a3;
    *(v30 + 40) = *(a3 + 16);
    *(v30 + 48) = v17;
    *(v30 + 56) = v18;
    *(v30 + 64) = v28;
    sub_18BC1E3F8();
    v31 = sub_18BC215E8();
    [v27 addAction:v31 forControlEvents:4096];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0);
    sub_18BC1F598();
    *(swift_allocObject() + 16) = xmmword_18BC3E410;
    v32 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700) + 48)];
    v33 = *MEMORY[0x1E69DBF28];
    v34 = sub_18BC1F418();
    (*(*(v34 - 8) + 104))(v10, v33, v34);
    *v32 = sub_18B8390A8;
    v32[1] = 0;
    (*(v45 + 104))(v10, *MEMORY[0x1E69DBF60], v46);
    v35 = sub_18BC1F448();
    (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
    v36 = v27;
    v37 = v47;
    sub_18BC1F4D8();
    sub_18BC1F3D8();
    (*(v48 + 8))(v37, v49);
    sub_18BC21458();
    v38 = v43;
    v51[3] = v43;
    v51[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v51);
    v40 = v41;
    (*(v41 + 16))(boxed_opaque_existential_0Tm, v16, v38);
    MEMORY[0x18CFFC900](v51);

    return (*(v40 + 8))(v16, v38);
  }

  return result;
}

void sub_18BA2C3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_18BA2B240(v12);
    if (*(v7 + 8))
    {
      v8 = *(a3 + 24);
      v9 = *(a3 + 32);
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      sub_18BC1E3F8();
      if (v10)
      {
        v11 = [v10 isOn];
      }

      else
      {
        v11 = 0;
      }

      sub_18B990914(v11, v8, v9);
      v6(v12, 0);
    }

    else
    {
      v6(v12, 0);
    }
  }
}

uint64_t sub_18BA2C510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) == 1)
  {
    v3 = &qword_1EA9D3580;
  }

  else
  {
    v3 = &qword_1EA9D64E0;
  }

  sub_18B7B0AC0(0, v3);
  sub_18BC1E3F8();
  v4 = sub_18BC212B8();

  return v4;
}

id sub_18BA2C734(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v25[1] = a1;
  v7 = sub_18BC1FEA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC1FF18();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_collectionView;
  (*(v8 + 104))(v10, *MEMORY[0x1E69DC248], v7, v13);
  sub_18BC1FEC8();
  sub_18B7B0AC0(0, &qword_1EA9D3560);
  v17 = sub_18BC214A8();
  (*(v12 + 8))(v15, v11);
  v18 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v17 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v4[v16] = v18;
  *&v4[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_dataSource] = 0;
  v19 = &v4[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_editHandler];
  *v19 = CGRectMake;
  *(v19 + 1) = 0;
  v20 = &v4[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  if (a2)
  {
    v21 = sub_18BC20B98();
  }

  else
  {
    v21 = 0;
  }

  v22 = type metadata accessor for SFFilterEditorViewController();
  v26.receiver = v4;
  v26.super_class = v22;
  v23 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, v21, a3);

  return v23;
}

id sub_18BA2CA1C(void *a1)
{
  v2 = v1;
  v4 = sub_18BC1FEA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1FF18();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_collectionView;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC248], v4, v10);
  sub_18BC1FEC8();
  sub_18B7B0AC0(0, &qword_1EA9D3560);
  v14 = sub_18BC214A8();
  (*(v9 + 8))(v12, v8);
  v15 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v14 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v2[v13] = v15;
  *&v2[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_dataSource] = 0;
  v16 = &v2[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_editHandler];
  *v16 = CGRectMake;
  *(v16 + 1) = 0;
  v17 = &v2[OBJC_IVAR____TtC12MobileSafari28SFFilterEditorViewController_filter];
  v18 = type metadata accessor for SFFilterEditorViewController();
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v21.receiver = v2;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, sel_initWithCoder_, a1);

  if (v19)
  {
  }

  return v19;
}

id sub_18BA2CCA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFFilterEditorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18BA2CD78()
{
  result = qword_1EA9D6490;
  if (!qword_1EA9D6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6490);
  }

  return result;
}

uint64_t sub_18BA2CDCC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *a2;
  v10 = *(a2 + 8);
  if (v6 == 1)
  {
    if (*&v4 | *&v5)
    {
      if (!*(a2 + 16) || !(*&v9 | *&v10))
      {
        return 0;
      }
    }

    else if (!*(a2 + 16) || *&v9 | *&v10)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (v4 != v9 || v5 != v10)
    {
      return 0;
    }
  }

  if (v7 == *(a2 + 24) && v8 == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8() & 1;
  }
}

uint64_t sub_18BA2CEB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA2CF20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_18BC1E3F8();
    sub_18BC1E3F8();

    return sub_18BC1E3F8();
  }

  return result;
}

uint64_t sub_18BA2CF70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_18BA2CFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  v9 = v3[7];
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v13 = *(a3 + 32);
  return sub_18BB7064C(a1, a2, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18BA2D024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D64C8);

  return sub_18BA2C510(a1, a2, a3);
}

uint64_t sub_18BA2D15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18B994B7C(a1, a2, a3, v15);
  if (!v16)
  {
    return 0;
  }

  sub_18B988BAC(v15, &qword_1EA9D4078);
  if (*(a4 + 16))
  {
    v7 = sub_18B831970(a1, a2);
    if (v8)
    {
      v9 = *(a4 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      if (v11)
      {
        if (v11 == 1)
        {
          sub_18B7F3B64();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0);
          sub_18B996184();
          v13 = v10;
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64B0);
  sub_18B7B0AC0(0, &qword_1ED6514F0);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA2D2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18B994B7C(a1, a2, a3, v15);
  if (!v16)
  {
    return 0;
  }

  sub_18B988BAC(v15, &qword_1EA9D4078);
  if (*(a4 + 16))
  {
    v7 = sub_18B831970(a1, a2);
    if (v8)
    {
      v9 = *(a4 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      if (v11)
      {
        if (v11 == 1)
        {
          sub_18B7F3B64();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0);
          sub_18B996184();
          v13 = v10;
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64B0);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA2D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18B994B7C(a1, a2, a3, v15);
  if (!v16)
  {
    return 2;
  }

  sub_18B988BAC(v15, &qword_1EA9D4078);
  if (*(a4 + 16))
  {
    v7 = sub_18B831970(a1, a2);
    if (v8)
    {
      v9 = *(a4 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      if (v11)
      {
        if (v11 == 1)
        {
          sub_18B7F3B64();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D40A0);
          sub_18B996184();
          v13 = v10;
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64B0);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_18BA2D5E0()
{
  result = qword_1EA9D6500;
  if (!qword_1EA9D6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6500);
  }

  return result;
}

uint64_t sub_18BA2D6E4(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
  v4 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState);
  v3 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 8);
  v6 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 16);
  v5 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 24);
  v8 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
  v7 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 56);
  v10 = *(result + 48);
  v9 = *(result + 56);
  v11 = *(result + 112);
  *(v2 + 96) = *(result + 96);
  *(v2 + 112) = v11;
  *(v2 + 128) = *(result + 128);
  *(v2 + 144) = *(result + 144);
  v12 = *(result + 80);
  *(v2 + 64) = *(result + 64);
  *(v2 + 80) = v12;
  v13 = *(result + 48);
  *(v2 + 32) = *(result + 32);
  *(v2 + 48) = v13;
  v14 = v8 == v10;
  v15 = *(result + 16);
  *v2 = *result;
  *(v2 + 16) = v15;
  if (!v14 || v7 != v9 || v4 != *result || v3 != *(result + 8) || v6 != *(result + 16) || v5 != *(result + 24))
  {
    return sub_18B7E0FE8();
  }

  return result;
}

void sub_18BA2D778()
{
  v1 = v0;
  v2 = sub_18BC1EDD8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18BC3E410;
  *(v6 + 32) = *(*(v1 + 192) + 16) - 1;
  sub_18BC1E1A8();
  MEMORY[0x18CFFA250](v6);
  sub_18B831DF0(0xD000000000000017, 0x800000018BC60750, 0, v20);

  (*(v3 + 8))(v5, v2);
  sub_18B7F4620(v20);
  CGRectGetMinX(v20[0]);
  v7 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 32);
  v8 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 40);
  v9 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
  Height = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 56);
  if (*(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 56) == 1)
  {
    v11 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 56);
    v12 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 32);
    v13 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 40);
    v14 = *(v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
    v21.size.width = sub_18B7D2C68();
    v21.size.height = v15;
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    MaxX = CGRectGetMaxX(v21);
    v22.origin.x = v12;
    v22.origin.y = v13;
    v22.size.width = v14;
    v22.size.height = v11;
    v17 = MaxX - CGRectGetMaxX(v22);
    v23.origin.x = v12;
    v23.origin.y = v13;
    v23.size.width = v14;
    v23.size.height = v11;
    MinY = CGRectGetMinY(v23);
    v24.origin.x = v12;
    v24.origin.y = v13;
    v24.size.width = v14;
    v24.size.height = v11;
    Width = CGRectGetWidth(v24);
    v25.origin.x = v12;
    v25.origin.y = v13;
    v25.size.width = v14;
    v25.size.height = v11;
    Height = CGRectGetHeight(v25);
    v7 = v17;
    v8 = MinY;
    v9 = Width;
  }

  CGRectGetMaxX(*&v7);
}

unint64_t sub_18BA2DA14()
{
  result = qword_1EA9D6530;
  if (!qword_1EA9D6530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6530);
  }

  return result;
}

__n128 sub_18BA2DA68@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
  v3 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v3;
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = *(v2 + 144);
  v4 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v4;
  v5 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v5;
  result = *v2;
  v7 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_18BA2DAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_18B82F1AC(a1, &v7 - v3);
  v5 = sub_18B831460(v4);
  sub_18B988BAC(v4, &unk_1EA9DBE90);
  return v5;
}

unint64_t sub_18BA2DBFC()
{
  result = qword_1EA9D6558;
  if (!qword_1EA9D6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6558);
  }

  return result;
}

uint64_t static WBSReaderTheme.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EA9D6560 = a1;
}

unint64_t sub_18BA2DD54()
{
  result = qword_1EA9D6568;
  if (!qword_1EA9D6568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D6570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6568);
  }

  return result;
}

uint64_t sub_18BA2DDB8@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EA9D6560;
  return sub_18BC1E3F8();
}

id sub_18BA2DE08(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v14 - v4;
  v6 = &v1[OBJC_IVAR___SFInlinePopUpButton_valueText];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  *&v1[OBJC_IVAR___SFInlinePopUpButton_referenceFont] = 0;
  v7 = type metadata accessor for SFInlinePopUpButton();
  v15.receiver = v1;
  v15.super_class = v7;
  v8 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18BC3E410;
  v10 = sub_18BC1FF28();
  v11 = MEMORY[0x1E69DC2B0];
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  v14[3] = v7;
  v14[0] = v8;
  v12 = v8;
  MEMORY[0x18CFFCA50](v9, v14, sel_updateValueText);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  [v12 setShowsMenuAsPrimaryAction_];
  sub_18BA2DF98(a1, v5);
  sub_18BC21828();

  return v12;
}

uint64_t sub_18BA2DF98@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22[-v3];
  v5 = sub_18BC217E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_18BC21628();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_18BC21808();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18BC217D8();
  v17 = [objc_opt_self() labelColor];
  sub_18BC21708();
  sub_18BC21678();
  (*(v10 + 104))(v12, *MEMORY[0x1E69DC508], v9);
  sub_18BC21638();
  v18 = MEMORY[0x1E69DC588];
  if ((v23 & 1) == 0)
  {
    v18 = MEMORY[0x1E69DC580];
  }

  (*(v6 + 104))(v8, *v18, v5);
  sub_18BC217F8();
  sub_18BC1FBD8();
  v19 = sub_18BC1FBC8();
  (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
  sub_18BC21738();
  sub_18BC216E8();
  v20 = v24;
  (*(v14 + 32))(v24, v16, v13);
  return (*(v14 + 56))(v20, 0, 1, v13);
}

void sub_18BA2E374()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52F8);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - v6;
  v29 = sub_18BC1E7F8();
  v28[0] = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v28[1] = v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5300);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13;
  v15 = objc_opt_self();
  v16 = *MEMORY[0x1E69DDD00];
  v17 = [v1 traitCollection];
  v18 = [v15 preferredFontForTextStyle:v16 compatibleWithTraitCollection:v17];

  v19 = *&v1[OBJC_IVAR___SFInlinePopUpButton_referenceFont];
  if (v19)
  {
    v20 = v19;
    v21 = [v20 fontDescriptor];
    [v18 pointSize];
    v22 = [v15 fontWithDescriptor:v21 size:?];

    v18 = v22;
  }

  sub_18BC1E3F8();
  sub_18BC1E7E8();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v28[-2] = v24;
  swift_getKeyPath();
  sub_18B9EA798();
  sub_18BC1E7C8();

  (*(v28[0] + 8))(v9, v29);
  v32 = v18;
  v25 = v31;
  sub_18BC1E7D8();
  (*(v30 + 8))(v7, v25);
  sub_18BC1E768();
  v26 = sub_18BC1E758();
  (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
  sub_18BC21818();
  v27 = sub_18BC21808();
  if ((*(*(v27 - 8) + 48))(v4, 1, v27) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_18BC216C8();
    sub_18BC21828();
  }
}

id sub_18BA2E858()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFInlinePopUpButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BA2E900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65B0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource);
  if (v5)
  {
    type metadata accessor for SFEditableProperty(0);
    sub_18BA31118();
    v6 = v5;
    sub_18BC1FB28();
    sub_18BC1FA88();
    v9 = 0;
    v10 = 1;
    sub_18BC1E3F8();
    sub_18BC1FA38();

    sub_18BC1FDC8();

    (*(v2 + 8))(v4, v1);
  }

  v7 = *(v0 + OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler);
  sub_18BC1E1A8();
  v7(v0);
}

id sub_18BA2EACC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65B0);
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v51 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65C0);
  v60 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v64 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v69 = &v51 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65C8);
  v68 = *(v59 - 8);
  v7 = v68[8];
  MEMORY[0x1EEE9AC00](v59);
  v66 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v21 = &v51 - v20;
  v22 = v1;
  result = [v1 view];
  if (result)
  {
    v24 = result;
    v25 = [objc_opt_self() systemBackgroundColor];
    [v24 setBackgroundColor_];

    v56 = *&v22[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_collectionView];
    [v56 setDelegate_];
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_18B7B0AC0(0, &qword_1EA9D3580);
    v26 = type metadata accessor for SFEditableProperty(0);
    v55 = v21;
    sub_18BC21298();
    v54 = v17;
    sub_18BC21298();
    swift_allocObject();
    v52 = v22;
    swift_unknownObjectUnownedInit();
    sub_18B7B0AC0(0, &qword_1EA9D64E0);
    v53 = v26;
    sub_18BC21298();
    v27 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v28 = swift_allocObject();
    v28[2] = sub_18BA3008C;
    v28[3] = 0;
    v28[4] = sub_18BA300E4;
    v28[5] = 0;
    v28[6] = sub_18BA31180;
    v28[7] = v27;
    v29 = v67;
    sub_18BC21298();
    v30 = v68;
    v31 = v68[2];
    v51 = v12;
    v32 = v12;
    v33 = v59;
    v31(v32, v21, v59);
    v34 = v60;
    v35 = v57;
    (*(v60 + 16))(v64, v69, v57);
    v31(v65, v29, v33);
    v31(v66, v17, v33);
    v36 = *(v30 + 80);
    v37 = (v36 + 16) & ~v36;
    v38 = (v7 + *(v34 + 80) + v37) & ~*(v34 + 80);
    v39 = (v58 + v36 + v38) & ~v36;
    v40 = (v7 + v36 + v39) & ~v36;
    v41 = swift_allocObject();
    v42 = v30[4];
    v42(v41 + v37, v51, v33);
    (*(v34 + 32))(v41 + v38, v64, v35);
    v42(v41 + v39, v65, v33);
    v42(v41 + v40, v66, v33);
    v43 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D65D0));
    v44 = v56;
    v45 = sub_18BC1FCE8();
    v46 = *&v52[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource];
    *&v52[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource] = v45;
    v47 = v45;

    sub_18BA31118();
    v48 = v61;
    sub_18BC1FB28();
    v49 = v63;
    sub_18BC1FA88();
    v70 = 0;
    v71 = 1;
    sub_18BC1E3F8();
    sub_18BC1FA38();

    sub_18BC1FDC8();

    (*(v62 + 8))(v48, v49);
    v50 = v68[1];
    v50(v67, v33);
    (*(v34 + 8))(v69, v35);
    v50(v54, v33);
    return (v50)(v55, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA2F26C(uint64_t a1, uint64_t a2, void **a3)
{
  v38 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v32 - v5;
  v6 = sub_18BC1F568();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1F4E8();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1FA08();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  sub_18BC1F9F8();
  v17 = [v16 name];
  sub_18BC20BD8();

  sub_18BC1F9B8();
  v18 = [v16 BOOLValue];
  v19 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
  [v19 setOn_];
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v20 = swift_allocObject();
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectUnownedInit();

  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v20;
  v23 = v16;
  v24 = sub_18BC215E8();
  [v19 addAction:v24 forControlEvents:4096];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0);
  sub_18BC1F598();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  v25 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700) + 48)];
  v26 = *MEMORY[0x1E69DBF28];
  v27 = sub_18BC1F418();
  (*(*(v27 - 8) + 104))(v8, v26, v27);
  *v25 = sub_18B8390A8;
  v25[1] = 0;
  (*(v33 + 104))(v8, *MEMORY[0x1E69DBF60], v34);
  v28 = sub_18BC1F448();
  (*(*(v28 - 8) + 56))(v37, 1, 1, v28);
  v29 = v19;
  sub_18BC1F4D8();
  sub_18BC1F3D8();
  (*(v35 + 8))(v11, v36);
  sub_18BC21458();
  v39[3] = v12;
  v39[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v39);
  (*(v13 + 16))(boxed_opaque_existential_0Tm, v15, v12);
  MEMORY[0x18CFFC900](v39);

  return (*(v13 + 8))(v15, v12);
}

void sub_18BA2F7DC(void *a1, uint64_t a2)
{
  if ([a1 sender])
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
    sub_18B7B1AD4(&v14, &v15);
    sub_18B7B0AC0(0, &unk_1EA9D65E0);
    swift_dynamicCast();
    v3 = [v13 isOn];
    v4 = a2 + OBJC_IVAR___SFEditableProperty_value;
    if (!*(a2 + OBJC_IVAR___SFEditableProperty_value + 32))
    {
      v5 = v3;
      v6 = *v4;
      v7 = *(v4 + 8);
      v8 = *(v4 + 16);
      v9 = *(v4 + 24);
      *(v4 + 32) = 0;
      *v4 = v5;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      sub_18B9882E8(v6, v7, v8, v9, 0);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v11 = *&Strong[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
      sub_18BC1E1A8();

      v12 = swift_unknownObjectUnownedLoadStrong();
      v11();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BA2F964(uint64_t a1, uint64_t a2, void **a3)
{
  v30 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = &v26 - v5;
  v6 = sub_18BC1F538();
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_18BC1F418();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1FA08();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  sub_18BC1F9F8();
  v17 = [v16 name];
  sub_18BC20BD8();

  sub_18BC1F9B8();
  v18 = *&v16[OBJC_IVAR___SFEditableProperty_value + 8];
  v19 = *&v16[OBJC_IVAR___SFEditableProperty_value + 16];
  v20 = *&v16[OBJC_IVAR___SFEditableProperty_value + 24];
  v21 = v16[OBJC_IVAR___SFEditableProperty_value + 32];
  v31 = *&v16[OBJC_IVAR___SFEditableProperty_value];
  v32 = v18;
  v33 = v19;
  v34 = v20;
  LOBYTE(v35) = v21;
  sub_18B9882C8(v31, v18, v19, v20, v21);
  sub_18BB33854();
  sub_18B9882E8(v31, v32, v33, v34, v35);
  sub_18BC1F7E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0);
  sub_18BC1F598();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  v22 = v26;
  (*(v9 + 104))(v11, *MEMORY[0x1E69DBF28], v26);
  v23 = sub_18BC1F448();
  (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
  sub_18BC1F528();
  sub_18BC1F4C8();
  (*(v28 + 8))(v8, v29);
  (*(v9 + 8))(v11, v22);
  sub_18BC21458();
  v34 = v12;
  v35 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v31);
  (*(v13 + 16))(boxed_opaque_existential_0Tm, v15, v12);
  MEMORY[0x18CFFC900](&v31);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_18BA2FDB4(uint64_t a1, uint64_t a2, id *a3)
{
  v3 = *a3;
  v4 = *a3 + OBJC_IVAR___SFEditableProperty_value;
  if (*(v4 + 32) == 2)
  {
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    v7 = *(v4 + 8);
    v8 = [*a3 name];
    v9 = sub_18BC20BD8();
    v11 = v10;

    [v3 floatValue];
    v13 = v12;
    v14 = swift_allocObject();
    Strong = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectUnownedInit();

    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = v14;
    *&v23 = v7;
    *(&v23 + 1) = v6;
    *&v24 = v5;
    *(&v24 + 1) = v9;
    *&v25 = v11;
    *(&v25 + 1) = v13;
    *&v26 = sub_18BA31304;
    *(&v26 + 1) = v16;
    v22[3] = &type metadata for SFSliderCellContentConfiguration;
    v22[4] = sub_18BA2D5E0();
    v17 = swift_allocObject();
    v22[0] = v17;
    v18 = v24;
    v17[1] = v23;
    v17[2] = v18;
    v19 = v26;
    v17[3] = v25;
    v17[4] = v19;
    v20 = v3;
    sub_18BA2D634(&v23, v27);
    MEMORY[0x18CFFC900](v22);
    v27[0] = v7;
    v27[1] = v6;
    v27[2] = v5;
    v27[3] = v9;
    v27[4] = v11;
    v27[5] = v13;
    v27[6] = sub_18BA31304;
    v27[7] = v16;
    return sub_18BA2D690(v27);
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

void sub_18BA2FF94(uint64_t a1, double a2)
{
  v2 = a1 + OBJC_IVAR___SFEditableProperty_value;
  if (*(a1 + OBJC_IVAR___SFEditableProperty_value + 32) == 2)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    v5 = *v2;
    v6 = *(v2 + 8);
    *v2 = a2;
    sub_18B9882E8(v5, v6, v3, v4, 2);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = *&Strong[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
    sub_18BC1E1A8();

    v9 = swift_unknownObjectUnownedLoadStrong();
    v8();
  }

  else
  {
    sub_18BC21CF8();
    __break(1u);
  }
}

uint64_t sub_18BA3008C(id *a1)
{
  v1 = [*a1 name];
  v2 = sub_18BC20BD8();

  return v2;
}

id sub_18BA300E4(void *a1)
{
  v1 = *a1 + OBJC_IVAR___SFEditableProperty_value;
  if (*(v1 + 32) != 3)
  {
    return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_18BA30134(void *a1, void *a2)
{
  v2 = *a1 + OBJC_IVAR___SFEditableProperty_value;
  if (*(v2 + 32) == 3)
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
    *v2 = a2;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    sub_18B9882E8(v4, v5, v6, v7, 3);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v9 = *&Strong[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
    v10 = a2;
    sub_18BC1E1A8();

    v11 = swift_unknownObjectUnownedLoadStrong();
    v9();
  }

  else
  {
    sub_18BC21CF8();
    __break(1u);
  }
}

uint64_t sub_18BA30244(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (*(*a3 + OBJC_IVAR___SFEditableProperty_value + 32) > 1u)
  {
    if (*(*a3 + OBJC_IVAR___SFEditableProperty_value + 32) == 2)
    {
      v4 = &qword_1EA9D64E0;
    }

    else
    {
      v4 = &qword_1EA9D3580;
    }
  }

  else
  {
    v4 = &qword_1EA9D3580;
  }

  sub_18B7B0AC0(0, v4);
  type metadata accessor for SFEditableProperty(0);
  v5 = v3;
  v6 = sub_18BC212B8();

  return v6;
}

id sub_18BA303B0(char a1)
{
  v3 = sub_18BC1EDD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFPropertiesEditorViewController();
  v20.receiver = v1;
  v20.super_class = v7;
  objc_msgSendSuper2(&v20, sel_viewWillAppear_, a1 & 1);
  v8 = *&v1[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_collectionView];
  result = [v8 indexPathsForSelectedItems];
  if (result)
  {
    v10 = result;
    v11 = sub_18BC20D98();

    v12 = *(v11 + 16);
    if (v12)
    {
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v18 = v11;
      v19 = v14;
      v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v16 = *(v13 + 56);
      do
      {
        v19(v6, v15, v3);
        v17 = sub_18BC1ED68();
        (*(v13 - 8))(v6, v3);
        [v8 deselectItemAtIndexPath:v17 animated:{a1 & 1, v18}];

        v15 += v16;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t sub_18BA306BC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler);
    v2 = result;
    sub_18BC1E1A8();
    v1(v2);
  }

  return result;
}

id sub_18BA30838(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v24[1] = a1;
  v7 = sub_18BC1FEA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18BC1FF18();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_collectionView;
  (*(v8 + 104))(v10, *MEMORY[0x1E69DC248], v7, v13);
  sub_18BC1FEC8();
  sub_18B7B0AC0(0, &qword_1EA9D3560);
  v17 = sub_18BC214A8();
  (*(v12 + 8))(v15, v11);
  v18 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v17 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v4[v16] = v18;
  *&v4[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource] = 0;
  v19 = &v4[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
  *v19 = CGRectMake;
  *(v19 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_properties] = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v20 = sub_18BC20B98();
  }

  else
  {
    v20 = 0;
  }

  v21 = type metadata accessor for SFPropertiesEditorViewController();
  v25.receiver = v4;
  v25.super_class = v21;
  v22 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, v20, a3);

  return v22;
}

id sub_18BA30B20(void *a1)
{
  v2 = v1;
  v4 = sub_18BC1FEA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18BC1FF18();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_collectionView;
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC248], v4, v10);
  sub_18BC1FEC8();
  sub_18B7B0AC0(0, &qword_1EA9D3560);
  v14 = sub_18BC214A8();
  (*(v9 + 8))(v12, v8);
  v15 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v14 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v2[v13] = v15;
  *&v2[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource] = 0;
  v16 = &v2[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
  *v16 = CGRectMake;
  *(v16 + 1) = 0;
  *&v2[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_properties] = MEMORY[0x1E69E7CC0];
  v17 = type metadata accessor for SFPropertiesEditorViewController();
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_initWithCoder_, a1);

  if (v18)
  {
  }

  return v18;
}

id sub_18BA30DAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFPropertiesEditorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BA30E74()
{
  v1 = *(v0 + OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource);
  if (v1)
  {
    v2 = v1;
    sub_18BC1FD18();

    if (v9)
    {
      v3 = *&v9[OBJC_IVAR___SFEditableProperty_value];
      v4 = *&v9[OBJC_IVAR___SFEditableProperty_value + 8];
      v5 = *&v9[OBJC_IVAR___SFEditableProperty_value + 16];
      v6 = *&v9[OBJC_IVAR___SFEditableProperty_value + 24];
      v7 = v9[OBJC_IVAR___SFEditableProperty_value + 32];
      sub_18B9882C8(v3, v4, v5, v6, v9[OBJC_IVAR___SFEditableProperty_value + 32]);

      if (v7 == 1)
      {
        sub_18B9882E8(v3, v4, v5, v6, 1);
        return 1;
      }

      sub_18B9882E8(v3, v4, v5, v6, v7);
    }
  }

  return 0;
}

void sub_18BA30F48()
{
  v1 = *&v0[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_dataSource];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_18BC1FD18();

    if (v13)
    {
      if (v13[OBJC_IVAR___SFEditableProperty_value + 32] == 1)
      {
        v4 = *&v13[OBJC_IVAR___SFEditableProperty_value];
        type metadata accessor for SFPropertiesEditorViewController();
        v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_18BC1E3F8();
        v6 = [v5 init];
        *&v6[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_properties] = v4;

        sub_18BA2E900();
        v7 = v6;
        v8 = [v13 name];
        if (!v8)
        {
          sub_18BC20BD8();
          v8 = sub_18BC20B98();
        }

        [v7 setTitle_];

        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = &v7[OBJC_IVAR____TtC12MobileSafari32SFPropertiesEditorViewController_editHandler];
        *v10 = sub_18BA31110;
        v10[1] = v9;

        v11 = [v2 navigationController];
        if (!v11)
        {

          return;
        }

        v12 = v11;
        [v11 pushViewController:v7 animated:1];
      }
    }
  }
}

unint64_t sub_18BA31118()
{
  result = qword_1EA9D65B8;
  if (!qword_1EA9D65B8)
  {
    type metadata accessor for SFEditableProperty(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D65B8);
  }

  return result;
}

uint64_t sub_18BA311BC(uint64_t a1, uint64_t a2, void **a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D65C0);

  return sub_18BA30244(a1, a2, a3);
}

uint64_t objectdestroy_27Tm()
{

  return swift_deallocObject();
}

uint64_t sub_18BA31354(uint64_t a1, uint64_t a2)
{
  v3 = _s4ItemVMa_0();
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = &v7[*(v4 + 40)];
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_18B80DF38(v10, v7);
      v15 = *v9;
      v14 = *(v9 + 1);
      sub_18BC1E3F8();
      sub_18B813CBC(v7);
      if (v14)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_18B7B6718(0, *(v12 + 2) + 1, 1, v12);
        }

        v17 = *(v12 + 2);
        v16 = *(v12 + 3);
        if (v17 >= v16 >> 1)
        {
          v12 = sub_18B7B6718((v16 > 1), v17 + 1, 1, v12);
        }

        *(v12 + 2) = v17 + 1;
        v13 = &v12[16 * v17];
        *(v13 + 4) = v15;
        *(v13 + 5) = v14;
      }

      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_18BBA32A8(v12);

  return v18;
}

void sub_18BA314F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v44 = _s4ItemVMa_0();
  v46 = *(v44 - 1);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D65F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v45 = (&v39 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6B10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v39 - v14);
  v42 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v47 = a3;
  v50 = *(a3 + 16);
  v19 = (v7 + 56);
  v20 = (v7 + 48);
  v21 = 1;
  while (1)
  {
    v43 = v21;
    v22 = v17;
    while (1)
    {
      v17 = v22;
      v49 = v16;
      v51 = v21;
      if (v18 == v50)
      {
        v24 = 1;
        v18 = v50;
      }

      else
      {
        if (v18 >= v50)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if (__OFADD__(v18, 1))
        {
          goto LABEL_39;
        }

        v25 = v45;
        v26 = v47 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v18;
        v27 = *(v6 + 48);
        *v45 = v18;
        sub_18B80DF38(v26, v25 + v27);
        sub_18B7CF39C(v25, v11, &unk_1EA9D65F0);
        v24 = 0;
        ++v18;
      }

      (*v19)(v11, v24, 1, v6, v13);
      sub_18B7CF39C(v11, v15, &unk_1EA9D6B10);
      if ((*v20)(v15, 1, v6) == 1)
      {
        goto LABEL_34;
      }

      v48 = *v15;
      sub_18B80DF9C(v15 + *(v6 + 48), v5);
      if (*v5 != *v52)
      {
        goto LABEL_4;
      }

      v28 = v5[1];
      if (v28 == v52[1])
      {
        break;
      }

      sub_18B813CBC(v5);
      if (v28)
      {
        goto LABEL_31;
      }

LABEL_5:
      v16 = 0;
      v22 = 0;
      v21 = 1;
      if (v17)
      {
        goto LABEL_34;
      }
    }

    updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
    v30 = v52;
    if ((updated & 1) == 0)
    {
      goto LABEL_4;
    }

    v31 = v44[7];
    v32 = *&v52[v31];
    if (!*&v5[v31])
    {
      if (!v32)
      {
        goto LABEL_20;
      }

LABEL_4:
      v23 = v5[1];
      sub_18B813CBC(v5);
      if (v23)
      {
        goto LABEL_31;
      }

      goto LABEL_5;
    }

    if (!v32)
    {
      goto LABEL_4;
    }

    v40 = *&v5[v31];
    v41 = sub_18B7E7DC4();
    v39 = v32;
    v40 = v40;
    v33 = sub_18BC215C8();

    v30 = v52;
    if ((v33 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_20:
    if (v5[v44[8]] != v30[v44[8]] || v5[v44[9]] != v30[v44[9]])
    {
      goto LABEL_4;
    }

    v34 = v44[10];
    v35 = &v5[v34];
    v36 = *&v5[v34 + 8];
    v37 = &v30[v34];
    v38 = *(v37 + 1);
    if (!v36)
    {
      if (!v38)
      {
        goto LABEL_29;
      }

      goto LABEL_4;
    }

    if (!v38 || (*v35 != *v37 || v36 != v38) && (sub_18BC21FD8() & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_29:
    sub_18B813CBC(v5);
    if ((v28 & 1) == 0)
    {
      break;
    }

    v17 = 1;
LABEL_31:
    v21 = 0;
    v16 = v49;
    if (v51)
    {
      v16 = v48;
    }

    v42 = v48;
  }

LABEL_34:
  if ((v51 | v43))
  {
    return;
  }

  if (__OFADD__(v42, 1))
  {
    goto LABEL_40;
  }

  if (v42 + 1 >= v49)
  {
    return;
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_18BA319A8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return sub_18B7E8B40(*(a1 + 1), *(a2 + 1));
  }
}

uint64_t sub_18BA31A2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_12MobileSafari17BrowsingAssistantC7SectionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18BA31AC8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18BA31B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_18BA31B70(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_18BA31BA0()
{
  v1 = *v0;
  sub_18BC22158();
  if (v1)
  {
    MEMORY[0x18CFFD660](0);
    sub_18BC20BD8();
    sub_18BC20C28();

    sub_18BC20C28();
  }

  else
  {
    MEMORY[0x18CFFD660](1);
  }

  return sub_18BC221A8();
}

uint64_t sub_18BA31C3C()
{
  if (!*v0)
  {
    return MEMORY[0x18CFFD660](1);
  }

  MEMORY[0x18CFFD660](0);
  sub_18BC20BD8();
  sub_18BC20C28();

  return sub_18BC20C28();
}

uint64_t sub_18BA31CE8()
{
  v1 = *v0;
  sub_18BC22158();
  if (v1)
  {
    MEMORY[0x18CFFD660](0);
    sub_18BC20BD8();
    sub_18BC20C28();

    sub_18BC20C28();
  }

  else
  {
    MEMORY[0x18CFFD660](1);
  }

  return sub_18BC221A8();
}

uint64_t sub_18BA31D80(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    return v2 == 0;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  v7 = sub_18BC20BD8();
  v9 = v8;
  if (v7 == sub_18BC20BD8() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_18BC21FD8();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_18BC21FD8();
}

unint64_t sub_18BA31EB8()
{
  result = qword_1EA9D6668;
  if (!qword_1EA9D6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6668);
  }

  return result;
}

uint64_t sub_18BA31F0C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2 == 2)
  {
    if (a4 == 2 && a1 == a3)
    {
      return 1;
    }
  }

  else if (a2 == 1)
  {
    if (a4 == 1 && a1 == a3)
    {
      return 1;
    }
  }

  else if (!a2 && !a4 && a1 == a3)
  {
    return 1;
  }

  return 0;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18BA31FA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18BA31FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18BA32054(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_18BA320A0(&v5, &v7) & 1;
}

uint64_t sub_18BA320A0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0 && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return (*(a1 + 40) ^ *(a2 + 40) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

char *sub_18BA321C0(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v40 - v10;
  v11 = sub_18BC1F568();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18BC1F4E8();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18BC1FA08();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____SFBrowsingAssistantSwitchCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = &v4[OBJC_IVAR____SFBrowsingAssistantSwitchCell_title];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch;
  *&v4[v22] = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
  v23 = _s10SwitchCellCMa();
  v48.receiver = v4;
  v48.super_class = v23;
  v24 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC1F9A8();
  v25 = [objc_opt_self() labelColor];
  v26 = sub_18BC1F8A8();
  sub_18BC1F858();
  v26(v47, 0);
  v41 = v17;
  v47[3] = v17;
  v47[4] = MEMORY[0x1E69DC110];
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v47);
  (*(v18 + 16))(boxed_opaque_existential_0Tm, v20, v17);
  v28 = v24;
  MEMORY[0x18CFFC900](v47);

  v29 = OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch;
  v30 = *&v28[OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch];
  sub_18BA32BB0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v30;
  v32 = sub_18BC215E8();
  [v31 addAction:v32 forControlEvents:4096];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D64F0);
  sub_18BC1F598();
  *(swift_allocObject() + 16) = xmmword_18BC3E410;
  v33 = *&v28[v29];
  v34 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D6700) + 48)];
  v35 = *MEMORY[0x1E69DBF28];
  v36 = sub_18BC1F418();
  (*(*(v36 - 8) + 104))(v13, v35, v36);
  *v34 = sub_18B8390A8;
  v34[1] = 0;
  (*(v42 + 104))(v13, *MEMORY[0x1E69DBF60], v43);
  v37 = sub_18BC1F448();
  (*(*(v37 - 8) + 56))(v46, 1, 1, v37);
  v38 = v33;
  sub_18BC1F4D8();
  sub_18BC1F3D8();
  (*(v44 + 8))(v16, v45);
  sub_18BC21458();

  (*(v18 + 8))(v20, v41);
  return v28;
}

void sub_18BA32794()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_18BA0F1E4(v1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void *sub_18BA32838()
{
  v1 = v0;
  v2 = sub_18BC1FA08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1F708();
  v7 = _s10SwitchCellCMa();
  v13.receiver = v1;
  v13.super_class = v7;
  objc_msgSendSuper2(&v13, sel__bridgedUpdateConfigurationUsingState_, v6);

  result = MEMORY[0x18CFFC8F0](&v10);
  if (v11)
  {
    sub_18B7C3FA4(&v10, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D66F0);
    swift_dynamicCast();
    sub_18BC1E3F8();
    sub_18BC1F9B8();
    v12[3] = v2;
    v12[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v12);
    (*(v3 + 16))(boxed_opaque_existential_0Tm, v5, v2);
    MEMORY[0x18CFFC900](v12);
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_18BA32AF8()
{
  v2.receiver = v0;
  v2.super_class = _s10SwitchCellCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18BA32BB0()
{
  result = qword_1EA9D52D0;
  if (!qword_1EA9D52D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D52D0);
  }

  return result;
}

uint64_t SFFluidTabOverviewSectionWrappingMode.hashValue.getter()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

uint64_t SFFluidTabOverviewSupplementary.hashValue.getter()
{
  sub_18BC22158();
  sub_18B833990(v0, &v5);
  if (*(&v6 + 1) > 1)
  {
    if (*(&v6 + 1) == 2)
    {
      v1 = 3;
      goto LABEL_11;
    }

    if (*(&v6 + 1) == 3)
    {
      v1 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(&v6 + 1))
    {
      v1 = 0;
      goto LABEL_11;
    }

    if (*(&v6 + 1) == 1)
    {
      v1 = 1;
LABEL_11:
      MEMORY[0x18CFFD660](v1);
      return sub_18BC221A8();
    }
  }

  v3[0] = v5;
  v3[1] = v6;
  v4 = v7;
  MEMORY[0x18CFFD660](2);
  sub_18BC21A58();
  sub_18B831014(v3);
  return sub_18BC221A8();
}

uint64_t sub_18BA32D9C()
{
  sub_18BC22158();
  sub_18B833990(v0, &v5);
  if (*(&v6 + 1) > 1)
  {
    if (*(&v6 + 1) == 2)
    {
      v1 = 3;
      goto LABEL_11;
    }

    if (*(&v6 + 1) == 3)
    {
      v1 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!*(&v6 + 1))
    {
      v1 = 0;
      goto LABEL_11;
    }

    if (*(&v6 + 1) == 1)
    {
      v1 = 1;
LABEL_11:
      MEMORY[0x18CFFD660](v1);
      return sub_18BC221A8();
    }
  }

  v3[0] = v5;
  v3[1] = v6;
  v4 = v7;
  MEMORY[0x18CFFD660](2);
  sub_18BC21A58();
  sub_18B831014(v3);
  return sub_18BC221A8();
}

uint64_t SFFluidCollectionView.TabOverviewGridLayout.InsertionAnimationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

uint64_t sub_18BA32F00()
{
  sub_18BC22158();
  SFFluidCollectionView.TabOverviewGridLayout.InsertionAnimationStyle.hash(into:)();
  return sub_18BC221A8();
}

uint64_t sub_18BA32F3C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 512) = a1;
  return result;
}

uint64_t sub_18BA330A0(double a1)
{
  result = swift_beginAccess();
  *(v1 + 568) = a1;
  return result;
}

void (*sub_18BA33144(uint64_t **a1))(void *a1, char a2)
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
  v3[4] = v1;
  v3[5] = sub_18BA6F928(v3);
  return sub_18BA331B8;
}

void sub_18BA331B8(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_18B85CC2C();
  }

  free(v3);
}

uint64_t (*sub_18BA33224(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_18B813A04();
  return sub_18BA3326C;
}

void (*sub_18BA3327C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + 616);
  return sub_18BA33308;
}

void sub_18BA33308(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  swift_beginAccess();
  v4 = *(v3 + 616);
  *(v3 + 616) = v2;
  sub_18B8658C4(v4);

  free(v1);
}

void sub_18BA33378(double a1)
{
  v3 = swift_beginAccess();
  v4 = v1[78];
  v1[78] = a1;
  if ((*(*v1 + 872))(v3) != v4)
  {
    sub_18B8657E0();
  }
}

void (*sub_18BA33400(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 624);
  return sub_18BA3348C;
}

void sub_18BA3348C(uint64_t a1)
{
  v1 = *a1;
  sub_18BA33378(*(*a1 + 24));

  free(v1);
}

uint64_t sub_18BA334CC(double a1)
{
  result = swift_beginAccess();
  *(v1 + 632) = a1;
  return result;
}

void sub_18BA33594(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_18BA335E0(uint64_t *a1))(id **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18BA33670;
}

void sub_18BA33670(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void sub_18BA33718(double a1, double a2, double a3, double a4)
{
  v4[82] = a1;
  v4[83] = a2;
  v4[84] = a3;
  v4[85] = a4;
}

void sub_18BA3372C(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (v3)
  {
    v4 = v3;
    if (sub_18B81280C())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 120))(v4, v1, a1, ObjectType, v6);
      swift_unknownObjectRelease();

      if (v8 != 0.0)
      {
        return;
      }
    }

    else
    {
    }
  }

  v9 = *(*v1 + 800);

  v9();
}

void sub_18BA3384C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 600);
  v8 = v6[76];
  v9 = v6[77];
  v10 = v6[78];
  v11 = sub_18B8103B0();
  v43 = v7;
  v44 = v8;
  *&v45 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v45 + 1) = v9;
  *&v46 = v10;
  *(&v46 + 1) = v11;
  v35 = type metadata accessor for SFFluidCollectionView.Element();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v32 - v12;
  v34 = *(a2 + 16);
  type metadata accessor for UIEdgeInsets(0);
  v36 = v14;
  sub_18B85E0CC(0x496E6F6974636573, &v43, 0xED0000737465736ELL);
  v15 = v43;
  v16 = v44;
  (*(*(v7 - 8) + 16))(v13, a1, v7);
  v33 = v45;
  v32 = v46;
  v17 = v35;
  swift_storeEnumTagMultiPayload();
  v42 = v34;
  v39[0] = v15;
  v39[1] = v16;
  v40 = v33;
  v41 = v32;
  v38[0] = v7;
  v38[1] = v8;
  v38[2] = &type metadata for SFFluidTabOverviewSupplementary;
  v38[3] = v9;
  v38[4] = v10;
  v38[5] = v11;
  v18 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(v39, v13, v18, v36, v38);

  v19 = (*(v37 + 8))(v13, v17);
  if ((*(*v3 + 432))(v19))
  {
    v21 = v20;
    ObjectType = swift_getObjectType();
    v23 = (*(v21 + 16))(ObjectType, v21);
    swift_unknownObjectRelease();
    [v23 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v47.origin.x = v25;
    v47.origin.y = v27;
    v47.size.width = v29;
    v47.size.height = v31;
    CGRectGetWidth(v47);
  }

  else
  {
    sub_18BC21CF8();
    __break(1u);
  }
}

id sub_18BA33C24@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a1;
  v55 = a3;
  v6 = *v3;
  v7 = *(*v3 + 600);
  v8 = *(*v3 + 608);
  v9 = *(*v3 + 616);
  v10 = *(v6 + 624);
  v11 = sub_18B8103B0();
  *v62 = v7;
  *&v62[8] = v8;
  v56 = v8;
  *&v62[16] = &type metadata for SFFluidTabOverviewSupplementary;
  *&v62[24] = v9;
  *&v62[32] = v10;
  *&v63 = v11;
  v57 = type metadata accessor for SFFluidCollectionView.Element();
  v61 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v13 = &v48 - v12;
  v73 = *a2;
  v54 = *(a2 + 2);
  v14 = v54;
  v15 = *(a2 + 40);
  v70 = *(a2 + 24);
  v71 = v15;
  v72 = *(a2 + 56);
  *v62 = 0;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(1500408173, 0xE400000000000000, v62, MEMORY[0x1E69E7DE0], &v68);
  v16 = v68;
  v17 = v69;
  v18 = *(v7 - 8);
  v58 = *(v18 + 16);
  v59 = v18 + 16;
  v58(v13, v60, v7);
  v19 = v57;
  swift_storeEnumTagMultiPayload();
  v67 = v14;
  v65 = v16;
  v66 = v17;
  *v62 = v7;
  *&v62[8] = v56;
  *&v62[16] = &type metadata for SFFluidTabOverviewSupplementary;
  *&v62[24] = v9;
  *&v62[32] = v10;
  *&v63 = v11;
  v53 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v65, v13, v53, MEMORY[0x1E69E7DE0], v62);

  v20 = *(v61 + 8);
  v61 += 8;
  v52 = v20;
  v21 = v19;
  v20(v13, v19);
  v22 = *v62;
  *&v68 = 0;
  v50 = v11;
  v51 = v10;
  v49 = v9;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x6548726564616568, 0xEC00000074686769, &v68, MEMORY[0x1E69E7DE0], v62);
  v23 = *v62;
  v24 = *&v62[16];
  v25 = v60;
  v58(v13, v60, v7);
  swift_storeEnumTagMultiPayload();
  v26 = v54;
  *&v65 = v54;
  v68 = v23;
  v69 = v24;
  v27 = v55;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v68, v13, v53, MEMORY[0x1E69E7DE0], &v67);

  v28 = v52;
  v52(v13, v21);
  Height = v67;
  *v62 = v73;
  *&v62[16] = v26;
  *&v62[24] = v70;
  v63 = v71;
  v64 = v72;
  sub_18BA3384C(v25, v62);
  v31 = v30;
  v33 = v32;
  memset(v62, 0, sizeof(v62));
  v58(v13, v25, v7);
  v34 = v57;
  swift_storeEnumTagMultiPayload();
  (*(*v4 + 584))(v62, v13);
  v28(v13, v34);
  v35 = sub_18B833D9C(v62);
  result = (*(*v4 + 456))(v35);
  if (result)
  {
    v37 = result;
    v38 = [result effectiveUserInterfaceLayoutDirection];
    [v37 bounds];
    if (v38)
    {
      MaxX = CGRectGetMaxX(*&v39);
      v74.origin.x = v31;
      v74.origin.y = v22;
      v74.size.width = v33;
      v74.size.height = Height;
      v44 = MaxX - CGRectGetMaxX(v74);
      v75.origin.x = v31;
      v75.origin.y = v22;
      v75.size.width = v33;
      v75.size.height = Height;
      MinY = CGRectGetMinY(v75);
      v76.origin.x = v31;
      v76.origin.y = v22;
      v76.size.width = v33;
      v76.size.height = Height;
      Width = CGRectGetWidth(v76);
      v77.origin.x = v31;
      v77.origin.y = v22;
      v77.size.width = v33;
      v77.size.height = Height;
      Height = CGRectGetHeight(v77);
      v31 = v44;
      v22 = MinY;
      v33 = Width;
    }

    *v62 = v7;
    *&v62[8] = v56;
    *&v62[16] = &type metadata for SFFluidTabOverviewSupplementary;
    *&v62[24] = v49;
    *&v62[32] = v51;
    *&v63 = v50;
    v47 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
    result = SFFluidCollectionView.LayoutAttributes.frame.setter(v47, v31, v22, v33, Height);
    *(v27 + v47[21]) = 0xBFE0000000000000;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA34320()
{
  v1 = (*(*v0 + 456))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 traitCollection];

    v4 = [v3 preferredContentSizeCategory];
    LOBYTE(v3) = sub_18BC21438();

    v5 = v0[648] ^ v3;
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_18BA343D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a1;
  v40 = a2;
  v4 = *v2;
  v5 = *(v4 + 600);
  v6 = *(v4 + 608);
  v7 = *(v4 + 616);
  v8 = *(v4 + 624);
  v47[0] = v5;
  v47[1] = v6;
  v47[2] = &type metadata for SFFluidTabOverviewSupplementary;
  v47[3] = v7;
  v47[4] = v8;
  v39 = sub_18B8103B0();
  v47[5] = v39;
  v9 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v36 = &v31 - v12;
  v13 = (*(v4 + 456))(v11);
  if (!v13)
  {
    return (*(v10 + 56))(v40, 1, 1, v9);
  }

  v37 = v13;
  sub_18BA6FE64(v46);
  memcpy(v47, v46, 0x139uLL);
  if (sub_18B81CA10(v47) == 1 || (*&v43 = v5, *(&v43 + 1) = v6, *&v44 = &type metadata for SFFluidTabOverviewSupplementary, *(&v44 + 1) = v7, v14 = v39, *&v45[0] = v8, *(&v45[0] + 1) = v39, v31 = type metadata accessor for SFFluidCollectionView.DataSource.Transaction(), v15 = *(v31 - 8), v35 = v8, v16 = v15, (*(v15 + 16))(&v43, &v47[16], v31), *&v43 = v5, *(&v43 + 1) = v6, *&v44 = &type metadata for SFFluidTabOverviewSupplementary, *(&v44 + 1) = v7, *&v45[0] = v35, *(&v45[0] + 1) = v14, type metadata accessor for SFFluidCollectionView.Update(), v17 = sub_18BC21848(), (*(*(v17 - 8) + 8))(v46, v17), v33 = v10, v34 = v7, v32 = v9, v18 = *(v16 + 8), sub_18BC1E3F8(), sub_18BC1E3F8(), sub_18BC1E3F8(), v18(&v47[16], v31), v19 = v5, , v9 = v32, v10 = v33, , LOBYTE(v14) = sub_18BC210B8(), v20 = v34, , (v14 & 1) == 0))
  {

    return (*(v10 + 56))(v40, 1, 1, v9);
  }

  if (sub_18B81280C())
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    v24 = v38;
    (*(v22 + 24))(&v43, v37, v3, v38, ObjectType, v22);
    swift_unknownObjectRelease();
    LODWORD(v31) = v43;
  }

  else
  {
    LODWORD(v31) = 1;
    v24 = v38;
  }

  sub_18B81D198(v41);
  *&v43 = v19;
  *(&v43 + 1) = v6;
  *&v44 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v44 + 1) = v20;
  v26 = v35;
  *&v45[0] = v35;
  *(&v45[0] + 1) = v39;
  v27 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
  v28 = v36;
  SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v24, v27, v36);
  v43 = v41[0];
  v44 = v41[1];
  v45[0] = v42[0];
  *(v45 + 9) = *(v42 + 9);
  (*(*(v27 - 1) + 8))(&v43, v27);
  if (v31)
  {
    *(v28 + *(v9 + 68)) = 0;
    *(v28 + *(v9 + 84)) = 0xC000000000000000;
    v29 = v37;
    static SFFluidTabOverviewLayoutSupport.applyTransform<A, B, C>(to:forZPosition:in:)(v28, v37, v19, v6, &type metadata for SFFluidTabOverviewSupplementary, v34, v26, v39, -500.0);
  }

  else
  {

    *(v28 + *(v9 + 68)) = 0;
    *(v28 + *(v9 + 84)) = 0xC000000000000000;
  }

  v30 = v40;
  (*(v10 + 32))(v40, v28, v9);
  return (*(v10 + 56))(v30, 0, 1, v9);
}

uint64_t sub_18BA348CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v43 = a3;
  v7 = *(*v4 + 608);
  v8 = *(*v4 + 616);
  v9 = *(*v4 + 624);
  v52[0] = *(*v4 + 600);
  v52[1] = v7;
  v52[2] = &type metadata for SFFluidTabOverviewSupplementary;
  v52[3] = v8;
  v52[4] = v9;
  v52[5] = sub_18B8103B0();
  v10 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v34 - v11;
  v36 = v52[0];
  v37 = v8;
  v38 = v7;
  v39 = v52[5];
  v52[1] = v7;
  v52[2] = &type metadata for SFFluidTabOverviewSupplementary;
  v52[3] = v8;
  v40 = v9;
  v52[4] = v9;
  v12 = type metadata accessor for SFFluidCollectionView.Element();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v34 - v14);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = swift_allocBox();
  v19 = v18;
  v20 = *(TupleTypeMetadata2 + 48);
  v35 = a1;
  sub_18B833990(a1, v18);
  (*(v13 + 16))(v19 + v20, a2, v12);
  *v15 = v17;
  swift_storeEnumTagMultiPayload();
  sub_18BA6FE64(v51);
  memcpy(v52, v51, 0x139uLL);
  if (sub_18B81CA10(v52) == 1)
  {
    (*(v13 + 8))(v15, v12);
    return (*(v41 + 56))(v43, 1, 1, v42);
  }

  sub_18BC1E3F8();
  swift_getWitnessTable();
  v21 = sub_18BC210B8();

  if ((v21 & 1) == 0)
  {
    (*(v13 + 8))(v15, v12);
    *&v47 = v36;
    *(&v47 + 1) = v38;
    *&v48 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v48 + 1) = v37;
    *&v49[0] = v40;
    *(&v49[0] + 1) = v39;
    type metadata accessor for SFFluidCollectionView.Update();
    v24 = sub_18BC21848();
    (*(*(v24 - 8) + 8))(v51, v24);
    return (*(v41 + 56))(v43, 1, 1, v42);
  }

  sub_18B833990(v35, v50);
  if (v50[3] >= 4uLL)
  {
    sub_18B81D198(&v44);
    v25 = v36;
    v26 = v37;
    *&v47 = v36;
    *(&v47 + 1) = v38;
    *&v48 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v48 + 1) = v37;
    *&v49[0] = v40;
    *(&v49[0] + 1) = v39;
    v27 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
    v28 = v34;
    sub_18B860EBC(v15, v27, v34);
    v47 = v44;
    v48 = v45;
    v49[0] = v46[0];
    *(v49 + 9) = *(v46 + 9);
    v29 = (*(*(v27 - 1) + 8))(&v47, v27);
    (*(*v4 + 848))(v29);
    v30 = v43;
    sub_18BB82920(v28, v43);

    *&v44 = v25;
    *(&v44 + 1) = v38;
    *&v45 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v45 + 1) = v26;
    *&v46[0] = v40;
    *(&v46[0] + 1) = v39;
    type metadata accessor for SFFluidCollectionView.Update();
    v31 = sub_18BC21848();
    (*(*(v31 - 8) + 8))(v51, v31);
    v33 = v41;
    v32 = v42;
    (*(v41 + 8))(v28, v42);
    (*(v13 + 8))(v15, v12);
    (*(v33 + 56))(v30, 0, 1, v32);
    return sub_18B831014(v50);
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    *&v47 = v36;
    *(&v47 + 1) = v38;
    *&v48 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v48 + 1) = v37;
    *&v49[0] = v40;
    *(&v49[0] + 1) = v39;
    type metadata accessor for SFFluidCollectionView.Update();
    v22 = sub_18BC21848();
    (*(*(v22 - 8) + 8))(v51, v22);
    (*(v41 + 56))(v43, 1, 1, v42);
    return sub_18B833D9C(v50);
  }
}

uint64_t sub_18BA34EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 608);
  v8 = *(v6 + 616);
  v9 = *(v6 + 624);
  v48 = *(v6 + 600);
  v49 = v8;
  *v59 = v48;
  *(v59 + 1) = v7;
  *&v59[1] = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v59[1] + 1) = v8;
  *&v59[2] = v9;
  v50 = sub_18B8103B0();
  *(&v59[2] + 1) = v50;
  v10 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v47 = &v43 - v13;
  v14 = (*(v6 + 456))(v12);
  if (!v14)
  {
    return (*(v11 + 56))(a2, 1, 1, v10);
  }

  v15 = v14;
  sub_18BA6FE64(v58);
  memcpy(v59, v58, 0x139uLL);
  if (sub_18B81CA10(v59) == 1)
  {

    return (*(v11 + 56))(a2, 1, 1, v10);
  }

  v46 = v10;
  sub_18BC1E3F8();
  v16 = sub_18BC210B8();

  if ((v16 & 1) == 0)
  {
    *&v55 = v48;
    *(&v55 + 1) = v7;
    *&v56 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v56 + 1) = v49;
    v57[0] = v9;
    *&v57[1] = v50;
    type metadata accessor for SFFluidCollectionView.Update();
    v22 = sub_18BC21848();
    (*(*(v22 - 8) + 8))(v58, v22);

    v10 = v46;
    return (*(v11 + 56))(a2, 1, 1, v10);
  }

  v17 = sub_18B81280C();
  v45 = a2;
  if (v17)
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 16))(&v55, v15, v3, a1, ObjectType, v19);
    swift_unknownObjectRelease();
    v44 = v55;
    v21 = BYTE8(v55);
  }

  else
  {
    v44 = 1;
    v21 = 1;
  }

  HIDWORD(v43) = v21;
  v52 = v59[2];
  v53 = v59[3];
  *v54 = v59[4];
  *(&v54[1] + 1) = *(&v59[4] + 9);
  *&v55 = v48;
  *(&v55 + 1) = v7;
  *&v56 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v56 + 1) = v49;
  v57[0] = v9;
  *&v57[1] = v50;
  v24 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
  v25 = *(v24 - 1);
  (*(v25 + 16))(&v55, &v59[2], v24);
  SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(a1, v24, v47);
  v55 = v52;
  v56 = v53;
  *v57 = *v54;
  *(&v57[1] + 1) = *(&v54[1] + 1);
  (*(v25 + 8))(&v55, v24);
  if (HIDWORD(v43))
  {
    v26 = v45;
    if (v44)
    {
      v28 = v46;
      v27 = v47;
      v29 = (v47 + v46[20]);
      v30 = v29[1];
      *&v51.a = *v29;
      *&v51.c = v30;
      *&v51.tx = v29[2];
      CGAffineTransformScale(&v52, &v51, 0.85, 0.85);
      SFFluidCollectionView.LayoutAttributes.transform.setter(&v52, v28);

      v51.a = v48;
      v51.b = v7;
      *&v51.c = &type metadata for SFFluidTabOverviewSupplementary;
      v51.d = v49;
      v51.tx = v9;
      *&v51.ty = v50;
      type metadata accessor for SFFluidCollectionView.Update();
      v31 = sub_18BC21848();
      (*(*(v31 - 8) + 8))(v58, v31);
    }

    else
    {

      *&v52 = v48;
      *(&v52 + 1) = v7;
      *&v53 = &type metadata for SFFluidTabOverviewSupplementary;
      *(&v53 + 1) = v49;
      v54[0] = v9;
      *&v54[1] = v50;
      type metadata accessor for SFFluidCollectionView.Update();
      v34 = sub_18BC21848();
      (*(*(v34 - 8) + 8))(v58, v34);
      v28 = v46;
      v27 = v47;
    }

    *(v27 + v28[17]) = 0;
    *(v27 + v28[21]) = 0xC000000000000000;
    goto LABEL_47;
  }

  v32 = [v15 effectiveUserInterfaceLayoutDirection];
  v26 = v45;
  if ((v44 & 2) == 0)
  {
    if ((v44 & 8) == 0)
    {
      if ((v44 & 1) == 0)
      {
        if ((v44 & 4) == 0)
        {
          goto LABEL_40;
        }

        v33 = 0;
        goto LABEL_44;
      }

      v33 = 0;
      goto LABEL_43;
    }

    v35 = 0;
    v36 = 8;
    if (v32 == 1)
    {
      v36 = 2;
    }

    goto LABEL_35;
  }

  if (v32 == 1)
  {
    if ((v44 & 8) == 0)
    {
      if ((v44 & 1) == 0)
      {
        if ((v44 & 4) == 0)
        {
LABEL_39:
          [v15 bounds];
          Width = CGRectGetWidth(v60);
          v28 = v46;
          v27 = v47;
          v38 = v46[18];
          v39 = Width + v3[75] + *(v47 + v38);
LABEL_46:
          *(v27 + v38) = v39;
          sub_18BABCB8C(v28);

          *&v52 = v48;
          *(&v52 + 1) = v7;
          *&v53 = &type metadata for SFFluidTabOverviewSupplementary;
          *(&v53 + 1) = v49;
          v54[0] = v9;
          *&v54[1] = v50;
          type metadata accessor for SFFluidCollectionView.Update();
          v42 = sub_18BC21848();
          (*(*(v42 - 8) + 8))(v58, v42);
          goto LABEL_47;
        }

        v33 = 8;
        goto LABEL_44;
      }

      v33 = 8;
LABEL_43:
      v33 |= 1uLL;
      if ((v44 & 4) != 0)
      {
        goto LABEL_44;
      }

      goto LABEL_37;
    }

    v35 = 8;
    v36 = 2;
    goto LABEL_35;
  }

  if ((v44 & 8) != 0)
  {
    v35 = 2;
    v36 = 8;
LABEL_35:
    v33 = v35 | v36;
    if (v44)
    {
      goto LABEL_43;
    }

    if ((v44 & 4) == 0)
    {
LABEL_37:
      if (v33 != 2)
      {
        goto LABEL_38;
      }

LABEL_45:
      [v15 bounds];
      v41 = CGRectGetWidth(v61);
      v28 = v46;
      v27 = v47;
      v38 = v46[18];
      v39 = *(v47 + v38) - (v41 + v3[73]);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (v44)
  {
    v33 = 2;
    goto LABEL_43;
  }

  if ((v44 & 4) == 0)
  {
    goto LABEL_45;
  }

  v33 = 2;
LABEL_44:
  v33 |= 4uLL;
LABEL_38:
  if (v33 == 8)
  {
    goto LABEL_39;
  }

LABEL_40:
  *&v52 = v48;
  *(&v52 + 1) = v7;
  *&v53 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v53 + 1) = v49;
  v54[0] = v9;
  *&v54[1] = v50;
  type metadata accessor for SFFluidCollectionView.Update();
  v40 = sub_18BC21848();
  (*(*(v40 - 8) + 8))(v58, v40);

  v28 = v46;
  v27 = v47;
LABEL_47:
  (*(v11 + 32))(v26, v27, v28);
  return (*(v11 + 56))(v26, 0, 1, v28);
}

uint64_t sub_18BA35650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v42 = a3;
  v7 = *(*v4 + 608);
  v8 = *(*v4 + 616);
  v9 = *(*v4 + 624);
  *&v51[0] = *(*v4 + 600);
  *(&v51[0] + 1) = v7;
  *&v51[1] = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v51[1] + 1) = v8;
  *&v51[2] = v9;
  *(&v51[2] + 1) = sub_18B8103B0();
  v10 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v34 - v11;
  *&v36 = *&v51[0];
  *(&v36 + 1) = v7;
  *(&v51[0] + 1) = v7;
  *&v51[1] = &type metadata for SFFluidTabOverviewSupplementary;
  v38 = v8;
  v39 = v9;
  *(&v51[1] + 1) = v8;
  *&v51[2] = v9;
  v37 = *(&v51[2] + 1);
  v12 = type metadata accessor for SFFluidCollectionView.Element();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v34 - v14);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = swift_allocBox();
  v19 = v18;
  v20 = *(TupleTypeMetadata2 + 48);
  v35 = a1;
  sub_18B833990(a1, v18);
  (*(v13 + 16))(v19 + v20, a2, v12);
  *v15 = v17;
  swift_storeEnumTagMultiPayload();
  sub_18BA6FE64(v50);
  memcpy(v51, v50, 0x139uLL);
  if (sub_18B81CA10(v51) == 1)
  {
    (*(v13 + 8))(v15, v12);
    return (*(v40 + 56))(v42, 1, 1, v41);
  }

  sub_18BC1E3F8();
  swift_getWitnessTable();
  v21 = sub_18BC210B8();

  if ((v21 & 1) == 0)
  {
    (*(v13 + 8))(v15, v12);
    v46 = v36;
    *&v47 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v47 + 1) = v38;
    *&v48[0] = v39;
    *(&v48[0] + 1) = v37;
    type metadata accessor for SFFluidCollectionView.Update();
    v24 = sub_18BC21848();
    (*(*(v24 - 8) + 8))(v50, v24);
    return (*(v40 + 56))(v42, 1, 1, v41);
  }

  sub_18B833990(v35, v49);
  if (v49[3] >= 4uLL)
  {
    v43 = v51[2];
    v44 = v51[3];
    v45[0] = v51[4];
    *(v45 + 9) = *(&v51[4] + 9);
    v25 = v36;
    v46 = v36;
    *&v47 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v47 + 1) = v38;
    *&v48[0] = v39;
    *(&v48[0] + 1) = v37;
    v26 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
    v27 = *(v26 - 1);
    (*(v27 + 16))(&v46, &v51[2], v26);
    v28 = v34;
    sub_18B860EBC(v15, v26, v34);
    v46 = v43;
    v47 = v44;
    v48[0] = v45[0];
    *(v48 + 9) = *(v45 + 9);
    v29 = (*(v27 + 8))(&v46, v26);
    (*(*v4 + 848))(v29);
    v30 = v42;
    sub_18BB82920(v28, v42);

    v43 = __PAIR128__(*(&v36 + 1), v25);
    *&v44 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v44 + 1) = v38;
    *&v45[0] = v39;
    *(&v45[0] + 1) = v37;
    type metadata accessor for SFFluidCollectionView.Update();
    v31 = sub_18BC21848();
    (*(*(v31 - 8) + 8))(v50, v31);
    v33 = v40;
    v32 = v41;
    (*(v40 + 8))(v28, v41);
    (*(v13 + 8))(v15, v12);
    (*(v33 + 56))(v30, 0, 1, v32);
    return sub_18B831014(v49);
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    v46 = v36;
    *&v47 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v47 + 1) = v38;
    *&v48[0] = v39;
    *(&v48[0] + 1) = v37;
    type metadata accessor for SFFluidCollectionView.Update();
    v22 = sub_18BC21848();
    (*(*(v22 - 8) + 8))(v50, v22);
    (*(v40 + 56))(v42, 1, 1, v41);
    return sub_18B833D9C(v49);
  }
}

double sub_18BA35CB4()
{
  (*(*v0 + 848))();
  sub_18BB82880();
  v2 = v1;

  return v2;
}

double sub_18BA35D34@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*v2 + 944))();
  if (v5)
  {
    v6 = v5;
    [v5 bounds];
    v33 = v7;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [a1 bounds];
    [a1 convertRect:v6 toCoordinateSpace:?];
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
    MidX = CGRectGetMidX(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MidY = CGRectGetMidY(v36);
  }

  else
  {
    sub_18BA37720();
    v33 = v20;
    v9 = v21;
    v11 = v22;
    v13 = v23;
    [a1 frame];
    v24 = v37.origin.x;
    v25 = v37.origin.y;
    v26 = v37.size.width;
    v27 = v37.size.height;
    MidX = CGRectGetMidX(v37);
    v38.origin.x = v24;
    v38.origin.y = v25;
    v38.size.width = v26;
    v38.size.height = v27;
    MidY = CGRectGetMidY(v38);
  }

  sub_18BA37720();
  v28 = CGRectGetHeight(v39) * -0.5;
  v40.origin.x = v33;
  v40.origin.y = v9;
  v40.size.width = v11;
  v40.size.height = v13;
  v41 = CGRectInset(v40, 0.0, v28);
  v34.x = MidX;
  v34.y = MidY;
  if (CGRectContainsPoint(v41, v34))
  {
    v29 = [a1 isHiddenOrHasHiddenAncestor] ^ 1;
  }

  else
  {
    v29 = 0;
  }

  v42.origin.x = v33;
  v42.origin.y = v9;
  v42.size.width = v11;
  v42.size.height = v13;
  v30 = CGRectGetMidX(v42);
  v43.origin.x = v33;
  v43.origin.y = v9;
  v43.size.width = v11;
  v43.size.height = v13;
  v31 = CGRectGetMidY(v43);
  result = -((MidX - (v30 + 2.0)) * (MidX - (v30 + 2.0)) + (MidY - (v31 + 2.0)) * (MidY - (v31 + 2.0)));
  *a2 = result;
  *(a2 + 8) = v29;
  return result;
}

void sub_18BA35F3C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v47 = a1;
  v10 = *v5;
  v11 = *(*v5 + 600);
  v12 = *(*v5 + 608);
  v13 = *(*v5 + 616);
  v14 = *(v10 + 624);
  v15 = sub_18B8103B0();
  *&v60 = v11;
  *(&v60 + 1) = v12;
  v16 = v12;
  v61 = &type metadata for SFFluidTabOverviewSupplementary;
  v62 = v13;
  v17 = v13;
  v63 = v14;
  v64 = v15;
  v18 = type metadata accessor for SFFluidCollectionView.Element();
  v48 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  sub_18B81D198(&v58);
  v39 = v59;
  sub_18BC1E3F8();
  *&v60 = v11;
  *(&v60 + 1) = v16;
  v21 = v16;
  v61 = &type metadata for SFFluidTabOverviewSupplementary;
  v62 = v17;
  v63 = v14;
  v64 = v15;
  v44 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
  v22 = *(v44 - 8);
  v45 = *(v22 + 8);
  v46 = v22 + 8;
  v45(&v58, v44);
  *&v60 = 1;
  v23 = v14;
  v24 = v21;
  v40 = v17;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x736E6D756C6F63, 0xE700000000000000, &v60, MEMORY[0x1E69E6530], &v55);
  v41 = v55;
  v25 = v56;
  v26 = *(v11 - 8);
  v42 = *(v26 + 16);
  v43 = v26 + 16;
  v42(v20, v47, v11);
  v38 = v18;
  swift_storeEnumTagMultiPayload();
  v52 = v39;
  v49 = v41;
  v50 = v25;
  *&v60 = v11;
  *(&v60 + 1) = v24;
  v61 = &type metadata for SFFluidTabOverviewSupplementary;
  v62 = v17;
  v63 = v23;
  v64 = v15;
  *&v41 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v49, v20, v41, MEMORY[0x1E69E6530], &v60);

  v27 = *(v48 + 8);
  v48 += 8;
  v27(v20, v18);
  v28 = v27;

  v39 = v60;
  sub_18B81D198(&v60);
  v29 = v61;
  sub_18BC1E3F8();
  v45(&v60, v44);
  type metadata accessor for CGSize(0);
  v31 = v30;
  v49 = 0uLL;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x657A695374696E75, 0xE800000000000000, &v49, v30, &v55);
  v32 = v55;
  v33 = v56;
  v34 = v57;
  v42(v20, v47, v11);
  v35 = v38;
  swift_storeEnumTagMultiPayload();
  v54 = v29;
  v49 = v32;
  v50 = v33;
  v51 = v34;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v49, v20, v41, v31, &v52);

  v28(v20, v35);

  if (v53 != 0.0)
  {
    v65.origin.x = a2;
    v65.origin.y = a3;
    v65.size.width = a4;
    v65.size.height = a5;
    v36 = ceil(CGRectGetHeight(v65) / v53);
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v36 > -9.22337204e18)
    {
      if (v36 < 9.22337204e18)
      {
        if (!__OFADD__(v36, 1))
        {
          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_18BA364D4@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v58 = a1;
  v7 = *v4;
  v8 = *(*v4 + 600);
  v9 = *(*v4 + 608);
  v10 = *(*v4 + 616);
  v11 = *(*v4 + 624);
  *&v77 = v8;
  *(&v77 + 1) = v9;
  v78 = &type metadata for SFFluidTabOverviewSupplementary;
  v79 = v10;
  v62 = v10;
  v61 = v11;
  v80 = v11;
  v81 = sub_18B8103B0();
  v60 = v81;
  v59 = type metadata accessor for SFFluidCollectionView.Element();
  v12 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v47 - v13;
  v14 = sub_18BC1EDD8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *a2;
  v19 = (*(v7 + 456))(v16);
  if (!v19)
  {
    return (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  }

  v50 = v15;
  v51 = v14;
  v49 = v12;
  v52 = a3;
  v54 = v19;
  sub_18B810930(&v73);
  v69 = v73;
  v70 = v74;
  v71 = v75;
  v72 = v76;
  *&v64 = v8;
  *(&v64 + 1) = v9;
  v65 = &type metadata for SFFluidTabOverviewSupplementary;
  v66 = v62;
  v67 = v61;
  v68 = v60;
  v20 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
  v53 = v9;
  v55 = v18;
  v48 = v20;
  SFFluidCollectionView.DataSource.Snapshot.indexPath(of:)();

  sub_18B810930(&v73);
  sub_18BC1E1A8();

  sub_18BC1EDC8();
  v21 = v57;
  sub_18BC21C08();

  swift_storeEnumTagMultiPayload();
  sub_18B81D198(&v77);
  v22 = v78;
  sub_18BC1E3F8();
  v23 = v53;
  *&v73 = v8;
  *(&v73 + 1) = v53;
  v24 = v62;
  *&v74 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v74 + 1) = v62;
  v25 = v61;
  v26 = v60;
  v75 = v61;
  v76 = v60;
  v27 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
  (*(*(v27 - 8) + 8))(&v77, v27);
  *&v73 = 1;
  v28 = MEMORY[0x1E69E6530];
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x736E6D756C6F63, 0xE700000000000000, &v73, MEMORY[0x1E69E6530], &v69);
  v63 = v22;
  v64 = v69;
  v65 = v70;
  *&v73 = v8;
  *(&v73 + 1) = v23;
  v29 = v23;
  *&v74 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v74 + 1) = v24;
  v75 = v25;
  v76 = v26;
  v30 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v64, v21, v30, v28, &v73);

  v31 = v73;
  v32 = v54;
  v33 = [v54 effectiveUserInterfaceLayoutDirection];
  v34 = 0;
  v35 = v55;
  if ((v56 - 1) >= 2)
  {
    if (v56)
    {
      v36 = 1;
    }

    else
    {
      v36 = -1;
    }

    if (v33)
    {
      v34 = -v36;
    }

    else
    {
      v34 = v36;
    }
  }

  if (v56 == 2)
  {
    v38 = -1;
  }

  else
  {
    v38 = v56 == 1;
  }

  result = sub_18BC1EDB8();
  if (!v31)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (result == 0x8000000000000000 && v31 == -1)
  {
    goto LABEL_27;
  }

  v39 = result % v31 + v34;
  if (__OFADD__(result % v31, v34))
  {
    goto LABEL_25;
  }

  if (v31 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if ((v39 & 0x8000000000000000) == 0 && v39 < v31)
  {
    v40 = v32;
    v41 = v21;
    v42 = __OFADD__(v34, v31 * v38);
    v43 = v34 + v31 * v38;
    v44 = v52;
    v45 = v51;
    v46 = v50;
    if (!v42)
    {
      sub_18B810930(&v73);
      v69 = v73;
      v70 = v74;
      v71 = v75;
      v72 = v76;
      SFFluidCollectionView.DataSource.Snapshot.item(offsetFrom:by:)(v43, v48, v44);

      (*(v49 + 8))(v41, v59);
      return (*(v46 + 8))(v55, v45);
    }

    goto LABEL_28;
  }

  (*(v49 + 8))(v21, v59);
  (*(v50 + 8))(v35, v51);
  return (*(*(v29 - 8) + 56))(v52, 1, 1, v29);
}

uint64_t sub_18BA36C3C(double a1, CGFloat a2)
{
  v5 = *(*v2 + 600);
  v6 = *(*v2 + 608);
  v7 = *(*v2 + 616);
  v8 = *(*v2 + 624);
  v9 = sub_18B8103B0();
  *&v105 = v5;
  *(&v105 + 1) = v6;
  *&v106 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v106 + 1) = v7;
  *v107 = v8;
  *&v107[8] = v9;
  v10 = type metadata accessor for SFFluidCollectionView.Element();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v70 - v11;
  *&v105 = v5;
  *(&v105 + 1) = v6;
  *&v106 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v106 + 1) = v7;
  v85 = v8;
  *v107 = v8;
  *&v107[8] = v9;
  v80 = v9;
  v12 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v70 - v13;
  v14 = sub_18BC21848();
  v77 = *(v14 - 8);
  v78 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v87 = v6;
  v88 = &v70 - v15;
  v86 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v70 - v17;
  v18 = sub_18BC21848();
  v81 = *(v18 - 8);
  *&v82 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v70 - v19;
  v90 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v89 = &v70 - v22;
  v84 = v2;
  sub_18B810930(&v105);
  v24 = *v107;
  v23 = *&v107[8];
  sub_18BC1E1A8();

  *&v102 = v24;
  *(&v102 + 1) = v23;
  v79 = v7;
  sub_18BC1F0E8();
  swift_getWitnessTable();
  sub_18BC20A98();
  v25 = v90;
  if ((*(v90 + 48))(v20, 1, v5) == 1)
  {
    (*(v81 + 8))(v20, v82);

LABEL_5:

    return 0;
  }

  (*(v25 + 32))(v89, v20, v5);

  sub_18B810930(&v105);
  v26 = *(&v105 + 1);
  v27 = v106;
  sub_18BC1E1A8();

  *&v102 = v26;
  *(&v102 + 1) = v27;
  *&v82 = v27;
  v28 = v85;
  v29 = v87;
  sub_18BC1F0E8();
  swift_getWitnessTable();
  v30 = v88;
  sub_18BC20A98();
  v31 = v86;
  if ((*(v86 + 48))(v30, 1, v29) == 1)
  {
    (*(v25 + 8))(v89, v5);
    (*(v77 + 8))(v88, v78);

    goto LABEL_5;
  }

  v33 = v87;
  (*(v31 + 32))(v83, v88, v87);

  sub_18B810930(v114);
  v108 = v114[0];
  v109 = v114[1];
  v110 = v114[2];
  v111 = v114[3];
  v112 = v114[4];
  v113 = v114[5];
  v88 = v5;
  *&v105 = v5;
  *(&v105 + 1) = v33;
  v34 = v79;
  *&v106 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v106 + 1) = v79;
  *v107 = v28;
  *&v107[8] = v80;
  type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
  v35 = SFFluidCollectionView.DataSource.Snapshot.sectionItemCounts.getter();

  v36 = *(v35 + 16);
  if (!v36)
  {

    (*(v86 + 8))(v83, v33);
LABEL_21:
    (*(v90 + 8))(v89, v88);
    return 0;
  }

  v81 = *(v35 + 8 * v36 + 24);

  sub_18B81D198(&v102);
  v96 = v88;
  v97 = v33;
  v98 = &type metadata for SFFluidTabOverviewSupplementary;
  v99 = v34;
  v37 = v80;
  v100 = v85;
  v101 = v80;
  v38 = v34;
  v39 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
  v40 = v74;
  v41 = v83;
  SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v83, v39, v74);
  v105 = v102;
  v106 = v103;
  *v107 = v104[0];
  *&v107[9] = *(v104 + 9);
  *&v82 = *(*(v39 - 1) + 8);
  (v82)(&v105, v39);
  v42 = v76;
  v43 = SFFluidCollectionView.LayoutAttributes.frame.getter(v76);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  (*(v75 + 8))(v40, v42);
  v115.origin.x = v43;
  v115.origin.y = v45;
  v115.size.width = v47;
  v115.size.height = v49;
  if (CGRectGetMaxY(v115) < a2)
  {
    (*(v86 + 8))(v41, v87);
    (*(v90 + 8))(v89, v88);
    return 1;
  }

  v50 = v38;
  v51 = v87;
  v116.origin.x = v43;
  v116.origin.y = v45;
  v116.size.width = v47;
  v116.size.height = v49;
  if (CGRectGetMinY(v116) > a2)
  {
    (*(v86 + 8))(v41, v51);
    goto LABEL_21;
  }

  sub_18B81D198(&v102);
  v52 = v50;
  v78 = v103;
  sub_18BC1E3F8();
  (v82)(&v102, v39);
  v96 = 1;
  v53 = v85;
  v54 = v88;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x736E6D756C6F63, 0xE700000000000000, &v96, MEMORY[0x1E69E6530], &v94);
  v82 = v94;
  v55 = v95;
  v56 = v71;
  (*(v90 + 16))(v71, v89, v54);
  v57 = v73;
  swift_storeEnumTagMultiPayload();
  v92 = v55;
  v93 = v78;
  v91 = v82;
  v96 = v54;
  v97 = v51;
  v98 = &type metadata for SFFluidTabOverviewSupplementary;
  v99 = v52;
  v100 = v53;
  v101 = v37;
  v58 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v91, v56, v58, MEMORY[0x1E69E6530], &v96);

  (*(v72 + 8))(v56, v57);

  if (!v96)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  if (v81 == 0x8000000000000000 && v96 == -1)
  {
    goto LABEL_24;
  }

  v59 = v83;
  if (!(v81 % v96))
  {
    (*(v86 + 8))(v83, v87);
    goto LABEL_21;
  }

  result = (*(*v84 + 456))(result);
  if (!result)
  {
    goto LABEL_25;
  }

  v60 = result;
  v61 = [result effectiveUserInterfaceLayoutDirection];

  v62 = (v86 + 8);
  v63 = (v90 + 8);
  v64 = v43;
  v65 = v45;
  v66 = v47;
  v67 = v49;
  if (v61)
  {
    MinX = CGRectGetMinX(*&v64);
    (*v62)(v59, v87);
    (*v63)(v89, v88);
    return MinX > a1;
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v64);
    (*v62)(v59, v87);
    (*v63)(v89, v88);
    return MaxX < a1;
  }
}

void sub_18BA37720()
{
  v1 = (*(*v0 + 456))();
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 adjustedContentInset];
    v12 = v11;
    v14 = v13;

    UIEdgeInsetsInsetRect(v4, v6, v8, v10, v12, v14);
  }
}

uint64_t SFFluidCollectionView.TabOverviewGridLayout.init()()
{
  __asm { FMOV            V0.2D, #8.0 }

  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  v6 = *MEMORY[0x1E69DDCE0];
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 560) = xmmword_18BC459C0;
  *(v0 + 576) = v6;
  *(v0 + 512) = 0;
  *(v0 + 520) = 0x4020000000000000;
  *(v0 + 592) = v7;
  *(v0 + 608) = 0;
  *(v0 + 624) = 0;
  *(v0 + 616) = 0;
  *(v0 + 632) = 0x3FE5555555555555;
  swift_unknownObjectWeakInit();
  *(v0 + 648) = 0;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;

  return SFFluidCollectionView.Layout.init()();
}

void sub_18BA378C0()
{

  JUMPOUT(0x18CFFF000);
}

uint64_t SFFluidCollectionView.TabOverviewGridLayout.deinit()
{
  v0 = SFFluidCollectionView.Layout.deinit();

  MEMORY[0x18CFFF000](v0 + 640);
  return v0;
}

uint64_t SFFluidCollectionView.TabOverviewGridLayout.__deallocating_deinit()
{
  SFFluidCollectionView.TabOverviewGridLayout.deinit();

  return swift_deallocClassInstance();
}

void (*sub_18BA37958(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18BA33144(v2);
  return sub_18B9ACD4C;
}

unint64_t sub_18BA37A4C()
{
  result = qword_1EA9D6710;
  if (!qword_1EA9D6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6710);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InteractiveInsertionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InteractiveInsertionState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_18BA37C34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 40))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA37C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 3;
    }
  }

  return result;
}

double sub_18BA37CEC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18BA382BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA382DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_18BA3830C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18BA38328(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

id SFCapsulePageLayoutTopFloatingFocused.__allocating_init(container:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutTopFloatingFocused.init(container:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingFocused();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  return v1;
}

id SFCapsulePageLayoutTopFloatingFocused.__allocating_init(container:baseLayout:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

id SFCapsulePageLayoutTopFloatingFocused.init(container:baseLayout:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingFocused();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t (*sub_18BA38944(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused_baseLayout;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A9824;
}

uint64_t (*sub_18BA38A0C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused_container;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9AAC70;
}

double sub_18BA38B24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  [Strong pageWidth];
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_18BA38C80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = [Strong supplementaryIdentifiers];
  swift_unknownObjectRelease();
  v2 = sub_18BC20D98();

  return v2;
}

uint64_t sub_18BA38D68(uint64_t a1, SEL *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = [Strong *a2];
    swift_unknownObjectRelease();
    return v5;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id sub_18BA38E40(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_unknownObjectRetain();
    v9 = a1;
    v10 = [v8 *a4];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return v10;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA38F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_18BC20B98();
    v7 = [v5 infoForSupplementaryIdentifier:v6 page:a3];

    swift_unknownObjectRelease();
    v8 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha;
    swift_beginAccess();
    *&v7[v8] = 0;
    return v7;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

id SFCapsulePageLayoutTopFloatingFocused.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFCapsulePageLayoutTopFloatingFocused.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCapsulePageLayoutTopFloatingFocused();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_18BA39498()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DB980];
  v2 = *MEMORY[0x1E69DDD08];
  v3 = [v0 _preferredFontForTextStyle_weight_];

  qword_1EA9F7FB0 = v3;
}

void sub_18BA3951C()
{
  v0 = *MEMORY[0x1E69DDD08];
  v1 = objc_allocWithZone(MEMORY[0x1E69DCA40]);
  v2 = v0;
  v3 = [v1 initForTextStyle_];

  qword_1EA9F7FB8 = v3;
}

uint64_t sub_18BA39580(uint64_t a1, unint64_t a2)
{
  v5 = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[4];
  v9 = v2[5];
  v11 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v12 = *(v9 + 16);
  if (!v10)
  {
LABEL_5:
    if (v12)
    {
      v13 = 0;
      v16 = *(v6 + 72);
      while (1)
      {
        sub_18B815248(v11, v8, _s7SectionVMa_1);
        if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
        {
          v17 = v8[*(v5 + 20)];
          result = sub_18B82A40C(v8, _s7SectionVMa_1);
          if (v17 == *(a2 + *(v5 + 20)))
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_18B82A40C(v8, _s7SectionVMa_1);
        }

        ++v13;
        v11 += v16;
        if (v12 == v13)
        {
          goto LABEL_15;
        }
      }
    }

    goto LABEL_15;
  }

  sub_18BC1E1A8();
  v13 = sub_18B9D0D54(a2, v11, v12, (v10 + 16), v10 + 32);
  v5 = v14;

  if (v5)
  {
LABEL_15:
    v21 = 0;
    return sub_18B858F04(a1, v21, a2);
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_11:
  if (v13 < *(*v2 + 16))
  {
    v18 = *v2 + 16 * v13;
    v20 = *(v18 + 32);
    v19 = *(v18 + 40);
    v21 = v19 - v20;
    if (!__OFSUB__(v19, v20))
    {
      return sub_18B858F04(a1, v21, a2);
    }

    __break(1u);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BA39770(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 16) + qword_1EA9DAF80;
  if (*(v5 + 16) != a3 || *(v5 + 24) != a4)
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = a3;
    *(v5 + 24) = a4;
    sub_18B8487D0(MEMORY[0x1E69E7CD0], 1);

    sub_18BA39820(v4, v8);
    sub_18BB438EC(v8);
    sub_18B988BAC(v8, &unk_1EA9D4F90);
    return sub_18BB44000();
  }

  return result;
}

uint64_t sub_18BA39820@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  sub_18B838D94(v4);
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = sub_18B839428(v4);
  sub_18B8396E0(v4);
  a2[4] = v7;
  a2[5] = v8;
  v9 = a1 + OBJC_IVAR____TtCC12MobileSafari11TabOverview14GridSizingInfo_section;
  sub_18BA3A0F0(v9);
  v10 = sub_18B858E00(0, 1, 1, v4);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_18B858E00((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = 0;
  *(v13 + 5) = 0;
  *a2 = v10;
  v14 = _s7SectionVMa_1();
  return sub_18BA39580(*(v9 + *(v14 + 28)), v9);
}

uint64_t sub_18BA39904()
{

  sub_18B82A40C(v0 + OBJC_IVAR____TtCC12MobileSafari11TabOverview14GridSizingInfo_section, _s7SectionVMa_1);

  return swift_deallocClassInstance();
}

void sub_18BA39994(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 16 * v2;
  v7 = 40;
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v11 = *(v1 + 2);
    if (v3 >= v11)
    {
      break;
    }

    if (v5 >= v11)
    {
      goto LABEL_14;
    }

    v12 = *&v1[v7 - 8];
    v13 = v1[v7];
    v14 = *&v1[v6 + 16];
    v15 = v1[v6 + 24];
    sub_18B9B8870(v12, v13);
    sub_18B9B8870(v14, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_18BAE383C(v1);
    }

    v16 = &v1[v7];
    v17 = *&v1[v7 - 8];
    *(v16 - 1) = v14;
    v18 = v1[v7];
    *v16 = v15;
    sub_18B9B8894(v17, v18);
    if (v5 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[v6];
    v9 = *&v1[v6 + 16];
    *(v8 + 2) = v12;
    v10 = v1[v6 + 24];
    v8[24] = v13;
    sub_18B9B8894(v9, v10);
LABEL_5:
    ++v3;
    v7 += 16;
    --v5;
    v6 -= 16;
    if (v4 == v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

size_t sub_18BA39AC8(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v3 = _s7SectionVMa_1();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v34 = MEMORY[0x1E69E7CC0];
  result = sub_18B828E80(0, a2 & ~(a2 >> 63), 0);
  v13 = v34;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v27 = v5;
      v28 = a2;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = *(v32 + 72);
        v29 = v14;
        result = sub_18B815248(v30 + v15 * v14, v11, _s7SectionVMa_1);
        v16 = *(v13 + 16);
        if (v16)
        {
          v17 = 0;
          v18 = v13 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
          while (v17 < *(v13 + 16))
          {
            sub_18B815248(v18, v8, _s7SectionVMa_1);
            if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
            {
              v19 = *(v33 + 20);
              v20 = v11[v19];
              v21 = v8[v19];
              result = sub_18B82A40C(v8, _s7SectionVMa_1);
              if (v20 == v21)
              {
                sub_18B82A40C(v11, _s7SectionVMa_1);

                return v29;
              }
            }

            else
            {
              result = sub_18B82A40C(v8, _s7SectionVMa_1);
            }

            ++v17;
            v18 += v15;
            if (v16 == v17)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v22 = v27;
        sub_18B815248(v11, v27, _s7SectionVMa_1);
        v34 = v13;
        v24 = *(v13 + 16);
        v23 = *(v13 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_18B828E80(v23 > 1, v24 + 1, 1);
          v13 = v34;
        }

        sub_18B82A40C(v11, _s7SectionVMa_1);
        *(v13 + 16) = v24 + 1;
        result = sub_18B80D354(v22, v13 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + v24 * v15, _s7SectionVMa_1);
        v14 = v31;
        v25 = v28;
        if (v31 == v28)
        {

          return v25;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}