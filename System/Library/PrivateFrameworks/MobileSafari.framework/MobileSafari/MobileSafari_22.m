uint64_t sub_18BAC2AE4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_18BAC2B44(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_container;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A99E8;
}

uint64_t sub_18BAC2CA4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_baseLayout) supplementaryIdentifiers];
  v2 = sub_18BC20D98();

  return v2;
}

void SFCachedPageLayout.__allocating_init(container:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = MEMORY[0x1E69E7CC0];
  sub_18BA65C34(MEMORY[0x1E69E7CC0]);
  sub_18BA65D30(v2);
  swift_unknownObjectWeakInit();
  sub_18BC21CF8();
  __break(1u);
}

void SFCachedPageLayout.init(container:)()
{
  v1 = OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedCapsuleInfoForPage;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + v1) = sub_18BA65C34(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedBottomBackdropInfo) = 0;
  v3 = OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedSupplementaryInfo;
  *(v0 + v3) = sub_18BA65D30(v2);
  *(v0 + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedTopBackdropInfo) = 0;
  swift_unknownObjectWeakInit();
  sub_18BC21CF8();
  __break(1u);
}

id SFCachedPageLayout.__allocating_init(container:baseLayout:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_18BAC3734(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

id SFCachedPageLayout.init(container:baseLayout:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_18BAC3734(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

void sub_18BAC2FD8()
{
  v1 = OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedCapsuleInfoForPage;
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + v1) = MEMORY[0x1E69E7CC8];

  v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedBottomBackdropInfo);
  *(v0 + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedBottomBackdropInfo) = 0;

  v4 = OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedSupplementaryInfo;
  swift_beginAccess();
  *(v0 + v4) = v2;

  v5 = *(v0 + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedTopBackdropInfo);
  *(v0 + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedTopBackdropInfo) = 0;
}

id sub_18BAC30CC(void *a1)
{
  v2 = v1;
  v4 = [a1 itemIndex];
  v5 = OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedCapsuleInfoForPage;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16) && (v7 = sub_18BB8B348(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);

    return v9;
  }

  else
  {
    v11 = [*(v2 + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_baseLayout) capsuleInfoForPage_];
    v12 = [a1 itemIndex];
    swift_beginAccess();
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + v5);
    *(v2 + v5) = 0x8000000000000000;
    sub_18BAA8754(v13, v12, isUniquelyReferenced_nonNull_native);
    *(v2 + v5) = v15;
    swift_endAccess();
    return v13;
  }
}

id sub_18BAC32B4(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v4 = *a2;
  v5 = *(v3 + *a2);
  if (v5)
  {
    v6 = *(v3 + *a2);
  }

  else
  {
    v7 = [*(v3 + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_baseLayout) *a3];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_18BAC3344(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  v5 = *a4;
  v6 = *&a1[*a4];
  if (v6)
  {
    v7 = *&a1[*a4];
  }

  else
  {
    v9 = *&a1[OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_baseLayout];
    v12 = a1;
    v13 = [v9 *a5];
    v14 = *&a1[v5];
    *&a1[v5] = v13;
    v7 = v13;

    v6 = 0;
  }

  v15 = v6;

  return v7;
}

id sub_18BAC33F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedSupplementaryInfo;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16))
  {
    sub_18BC1E3F8();
    v10 = sub_18B831970(a1, a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      return v12;
    }
  }

  v14 = *(v4 + OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_baseLayout);
  v15 = sub_18BC20B98();
  v16 = [v14 infoForSupplementaryIdentifier:v15 page:a3];

  swift_beginAccess();
  sub_18BC1E3F8();
  v17 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v8);
  *(v4 + v8) = 0x8000000000000000;
  sub_18BAA8874(v17, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v4 + v8) = v19;
  swift_endAccess();
  return v17;
}

id SFCachedPageLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFCachedPageLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCachedPageLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18BAC3734(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedCapsuleInfoForPage;
  v5 = MEMORY[0x1E69E7CC0];
  *&v2[v4] = sub_18BA65C34(MEMORY[0x1E69E7CC0]);
  *&v2[OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedBottomBackdropInfo] = 0;
  v6 = OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedSupplementaryInfo;
  *&v2[v6] = sub_18BA65D30(v5);
  *&v2[OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_cachedTopBackdropInfo] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC12MobileSafari18SFCachedPageLayout_baseLayout] = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v8.receiver = v2;
  v8.super_class = type metadata accessor for SFCachedPageLayout();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_18BAC3AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s21ViewReuseRegistrationCMa();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18B9FAC54(a3, a4);
  swift_beginAccess();
  sub_18BC209F8();
  sub_18BC20A38();
  return swift_endAccess();
}

uint64_t sub_18BAC3BFC(void *a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_18BAC46A4;
  *(v5 + 24) = v4;
  v9[4] = sub_18B7D1E94;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_18B7E3BF4;
  v9[3] = &block_descriptor_35;
  v6 = _Block_copy(v9);
  v7 = a1;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_18BAC3D74(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier];
  swift_beginAccess();
  if (*(v2 + 1))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_18BC1E3F8();
    if (Strong)
    {
      v4 = [a1 superview];
      if (!v4 || (v5 = v4, sub_18B7F4394(), v6 = Strong, v7 = sub_18BC215C8(), v5, v6, (v7 & 1) == 0))
      {
        [Strong addSubview_];
      }
    }

    [a1 setHidden_];
    swift_beginAccess();
    sub_18BC1E3F8();
    _s21ViewReuseRegistrationCMa();
    sub_18BC20A28();

    swift_endAccess();
    if (v8)
    {

      swift_beginAccess();
      sub_18BB5EC0C(v9, a1);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    [a1 removeFromSuperview];
  }
}

void sub_18BAC3F88(void *a1, void *a2, uint64_t a3)
{
  v34 = a3;
  v6 = *v3;
  swift_beginAccess();
  v31 = a1;
  v41[0] = a1;
  v41[1] = a2;
  v7 = v6[10];
  v8 = v6[11];
  v9 = v6[12];
  v10 = v6[13];
  v11 = v6[14];
  v12 = v6[15];
  sub_18BC1E3F8();
  v33 = v7;
  aBlock = v7;
  v36 = v8;
  v37 = v9;
  v38 = v10;
  v39 = v11;
  v40 = v12;
  _s21ViewReuseRegistrationCMa();
  sub_18BC20A28();
  v32 = a2;

  swift_endAccess();
  if (!v7)
  {
    goto LABEL_14;
  }

  v13 = swift_beginAccess();
  v14 = *(v7 + 32);
  MEMORY[0x1EEE9AC00](v13);
  v30[2] = v33;
  v30[3] = v8;
  v30[4] = v9;
  v30[5] = v10;
  v30[6] = v11;
  v30[7] = v12;
  v30[8] = v34;
  sub_18BC1E3F8();
  sub_18BAD1D18(sub_18BAC46AC, v30, v14);
  v16 = v15;

  v17 = v16;
  if (!v16)
  {
    v18 = sub_18BC1E3F8();
    v17 = sub_18BA6189C(v18);

    if (!v17)
    {
      v41[0] = 0;
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = v41;
      *(v22 + 24) = v7;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_18B9D4E14;
      *(v23 + 24) = v22;
      v39 = sub_18B9D53B0;
      v40 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_18B7E3BF4;
      v38 = &block_descriptor_13_1;
      v24 = _Block_copy(&aBlock);
      sub_18BC1E1A8();
      sub_18BC1E1A8();

      [v21 performWithoutAnimation_];
      _Block_release(v24);
      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if ((v21 & 1) == 0)
      {
        if (v41[0])
        {
          v25 = v41[0] + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_reuseIdentifier;
          swift_beginAccess();
          v26 = v32;
          *v25 = v31;
          v25[1] = v26;
          sub_18BC1E3F8();

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            if (!v41[0])
            {
LABEL_17:
              __break(1u);
              return;
            }

            v28 = Strong;
            [Strong addSubview_];
          }

          if (v41[0])
          {
            v41[0];

            v29 = v41[0];

            return;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  swift_beginAccess();
  v19 = v16;
  v20 = sub_18B9CE374(v17);
  swift_endAccess();

  [v17 setHidden_];
}

uint64_t sub_18BAC43C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a2;
  v26 = a5;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v27 = a6;
  v28 = a7;
  v34 = a7;
  v35 = a8;
  v29 = a8;
  v11 = type metadata accessor for SFFluidCollectionView.Element();
  v12 = sub_18BC21848();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = *(v11 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  if (!*(*a1 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement))
  {
    (*(v16 + 56))(v15, 1, 1, v11, v18);
    goto LABEL_5;
  }

  v30 = *(*a1 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_representedElement);
  swift_unknownObjectRetain();
  v21 = swift_dynamicCast();
  (*(v16 + 56))(v15, v21 ^ 1u, 1, v11);
  if ((*(v16 + 48))(v15, 1, v11) == 1)
  {
LABEL_5:
    (*(v13 + 8))(v15, v12);
    v22 = 0;
    return v22 & 1;
  }

  (*(v16 + 32))(v20, v15, v11);
  v22 = static SFFluidCollectionView.Element.== infix(_:_:)(v20, v25, a3, a4, v26);
  (*(v16 + 8))(v20, v11);
  return v22 & 1;
}

uint64_t sub_18BAC464C()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_18BAC46D8()
{
  swift_unknownObjectWeakInit();
  v1 = _s21ViewReuseRegistrationCMa();
  v2 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v3 = sub_18BC20DE8();
  v4 = sub_18B7C29AC(v3, v2, v1, MEMORY[0x1E69E6168]);

  *(v0 + 24) = v4;
  swift_unknownObjectWeakAssign();
  return v0;
}

uint64_t sub_18BAC4834@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = _s4ItemVMa_2();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v51 - v6;
  v8 = _s4ItemVMa();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18BC1EC08();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s7SectionVMa_0();
  v17 = v16[5];
  v54 = v15;
  v55 = v13;
  v18 = *(v13 + 16);
  v66 = v12;
  v62 = v18;
  v63 = v13 + 16;
  v18(v15, (v1 + v17), v12);
  v19 = v16[6];
  v20 = v16[7];
  v52 = v16;
  v53 = *(v1 + v19);
  v56 = v1;
  v21 = *(v1 + v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v8[8];
    v24 = v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v25 = *(v9 + 72);
    v26 = MEMORY[0x1E69E7CC0];
    v60 = v8;
    v61 = v7;
    v58 = v25;
    v59 = v23;
    do
    {
      sub_18BAC51C8(v24, v11);
      if (v11[v23] == 1)
      {
        sub_18BAC522C(v11);
      }

      else
      {
        v71 = *v11;
        v27 = v65;
        v62(&v5[v65[5]], &v11[v8[7]], v66);
        v28 = v11[v8[10]];
        v67 = v11[v8[9]];
        v68 = v28;
        v29 = v8[12];
        v69 = v11[v8[11]];
        v70 = *&v11[v29];
        v30 = v8[14];
        v31 = &v11[v8[13]];
        v32 = *v31;
        v33 = *(v31 + 1);
        v72 = v26;
        v34 = *&v11[v30];
        v35 = &v11[v8[15]];
        v37 = *v35;
        v36 = *(v35 + 1);
        sub_18BC1E3F8();
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        sub_18BAC522C(v11);
        *v5 = v71;
        v38 = v68;
        v5[v27[6]] = v67;
        v5[v27[7]] = v38;
        v5[v27[8]] = 0;
        v5[v27[9]] = v69;
        *&v5[v27[10]] = v70;
        v39 = &v5[v27[11]];
        *v39 = v32;
        v39[1] = v33;
        *&v5[v27[12]] = v34;
        v26 = v72;
        v40 = &v5[v27[13]];
        *v40 = v37;
        v40[1] = v36;
        v41 = v61;
        sub_18BAC5288(v5, v61);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_18B82A46C(0, v26[2] + 1, 1, v26);
        }

        v43 = v26[2];
        v42 = v26[3];
        v25 = v58;
        v23 = v59;
        if (v43 >= v42 >> 1)
        {
          v26 = sub_18B82A46C(v42 > 1, v43 + 1, 1, v26);
        }

        v26[2] = v43 + 1;
        sub_18BAC5288(v41, v26 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v43);
        v8 = v60;
      }

      v24 += v25;
      --v22;
    }

    while (v22);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v44 = (v56 + v52[8]);
  v46 = *v44;
  v45 = v44[1];
  v47 = v57;
  (*(v55 + 32))(v57, v54, v66);
  v48 = _s7SectionVMa_1();
  *(v47 + v48[5]) = v53;
  *(v47 + v48[6]) = 0;
  *(v47 + v48[7]) = v26;
  v49 = (v47 + v48[8]);
  *v49 = v46;
  v49[1] = v45;
  return sub_18BC1E3F8();
}

unint64_t sub_18BAC4CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - v8;
  v10 = *(a2 + *(_s15MoveItemsIntentVMa(0) + 32));
  if (!*(v10 + 16) || (v11 = sub_18BB8B29C(a1), (v12 & 1) == 0))
  {
    v20 = _s4ItemVMa();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    sub_18BAC52EC(v9);
    return sub_18BAC51C8(a1, a3);
  }

  v13 = v11;
  v21[1] = v3;
  v14 = *(v10 + 56);
  v15 = _s4ItemVMa();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  sub_18BAC51C8(v14 + v17 * v13, v9);
  (*(v16 + 56))(v9, 0, 1, v15);
  result = sub_18BAC52EC(v9);
  if (*(v10 + 16))
  {
    result = sub_18BB8B29C(a1);
    if (v19)
    {
      a1 = *(v10 + 56) + result * v17;
      return sub_18BAC51C8(a1, a3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18BAC4ED8()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18BAC5180(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  sub_18BC22178();
  return sub_18BC221A8();
}

uint64_t sub_18BAC4F88()
{
  sub_18BC1EC08();
  sub_18BAC5180(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  return sub_18BC22178();
}

uint64_t sub_18BAC5028()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18BAC5180(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  sub_18BC22178();
  return sub_18BC221A8();
}

uint64_t sub_18BAC50D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_18BAC5180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18BAC51C8(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BAC522C(uint64_t a1)
{
  v2 = _s4ItemVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BAC5288(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_2();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BAC52EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BAC5354()
{
  v0 = _s4ItemVMa_0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(Strong + v11, &v39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8938);
  result = swift_dynamicCast();
  if (result)
  {
    memcpy(v36, v38, sizeof(v36));
    v13 = swift_unknownObjectUnownedLoadStrong();
    v32 = v0;
    v14 = v13;
    v15 = swift_unknownObjectUnownedLoadStrong();
    v16 = *&v15[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 32];
    v17 = *&v15[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 40];
    v18 = *&v15[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 48];
    v19 = *&v15[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 56];

    v42.origin.x = v16;
    v42.origin.y = v17;
    v42.size.width = v18;
    v42.size.height = v19;
    MidX = CGRectGetMidX(v42);
    v43.origin.x = v16;
    v43.origin.y = v17;
    v43.size.width = v18;
    v43.size.height = v19;
    MidY = CGRectGetMidY(v43);
    v22 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
    swift_beginAccess();
    sub_18B80DBC4(v14 + v22, v40);
    v23 = v40[3];
    v24 = v40[4];
    __swift_project_boxed_opaque_existential_1Tm(v40, v40[3]);
    (*(v24 + 128))(v23, v24, MidX, MidY);

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v25 = swift_unknownObjectUnownedLoadStrong();
    memcpy(v37, v36, sizeof(v37));
    memcpy(v40, v36, 0x140uLL);
    v40[40] = v36[40];
    v41 = v36[40];
    sub_18BA87218(v36, &v33);
    v26 = sub_18BA85B0C();
    sub_18B988BAC(&v41, &qword_1EA9D6A68);
    v34 = &_s19VariableWidthLayoutVN;
    v35 = &off_1EFF26DB8;
    v27 = swift_allocObject();
    *&v33 = v27;
    memcpy((v27 + 16), v37, 0x140uLL);
    *(v27 + 336) = v26;
    v28 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1Tm(v25 + v28);
    sub_18B7C3FA4(&v33, v25 + v28);
    swift_endAccess();

    sub_18B7CA054(v9, v6, &unk_1EA9D5380);
    if ((*(v1 + 48))(v6, 1, v32) == 1)
    {
      sub_18B988BAC(v9, &unk_1EA9D5380);
      sub_18BA87250(v36);
    }

    else
    {
      sub_18B80DF9C(v6, v3);
      v29 = swift_unknownObjectUnownedLoadStrong();
      v30 = *&v29[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_recenterOnItemHandler];
      sub_18BC1E1A8();

      v30(v3);

      sub_18BA87250(v36);
      sub_18B813CBC(v3);
      v6 = v9;
    }

    return sub_18B988BAC(v6, &unk_1EA9D5380);
  }

  return result;
}

id sub_18BAC57B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_18BC1EC08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-v10];
  v12 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_titleWidthCacheObserverToken;
  swift_beginAccess();
  sub_18B7CA054(v1 + v12, v4, &unk_1EA9D3AE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_18B988BAC(v4, &unk_1EA9D3AE0);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    swift_beginAccess();
    sub_18BC1E1A8();
    sub_18BAD25AC(0, 0, v8);
    swift_endAccess();

    (*(v6 + 8))(v11, v5);
  }

  v13 = _s6LayoutCMa_0();
  v16.receiver = v1;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

uint64_t sub_18BAC5A48()
{
  if (*(v0 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content) != 1)
  {
    return 0;
  }

  v1 = v0;
  v2 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v0 + v2, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1Tm(v11, v12);
  sub_18BA72188(v3, v4);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  sub_18B80DBC4(v1 + v2, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1Tm(v11, v12);
  v9 = (*(v8 + 184))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (v9 >= v6)
  {
    return v6 > 0.0 && (*(v1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 144) & 1) != 0;
  }

  if (*(v1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState + 144))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void sub_18BAC5BB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18BC21848();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_18BAC5C08@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState;
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

uint64_t sub_18BAC5C4C(__int128 *a1)
{
  v2 = *v1;
  v3 = *v1 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState;
  v5 = a1[6];
  v4 = a1[7];
  v6 = a1[5];
  *(v3 + 96) = v5;
  *(v3 + 112) = v4;
  v7 = a1[7];
  *(v3 + 128) = a1[8];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[1];
  *(v3 + 32) = v9;
  *(v3 + 48) = v8;
  v11 = a1[3];
  v13 = a1[4];
  v12 = a1[5];
  *(v3 + 64) = v13;
  *(v3 + 80) = v12;
  v14 = a1[1];
  v15 = *a1;
  *v3 = *a1;
  *(v3 + 16) = v14;
  v21[5] = v6;
  v21[6] = v5;
  v16 = a1[8];
  v21[7] = v7;
  v21[8] = v16;
  v21[2] = v9;
  v21[3] = v11;
  v21[4] = v13;
  *(v3 + 144) = *(a1 + 144);
  v22 = *(a1 + 144);
  v17 = v2 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  v21[0] = v15;
  v21[1] = v10;
  swift_beginAccess();
  v18 = *(v17 + 24);
  v19 = *(v17 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  (*(v19 + 72))(v21, v18, v19);
  return swift_endAccess();
}

double sub_18BAC5D6C()
{
  v1 = *v0;
  v2 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v1 + v2, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1Tm(v7, v8);
  v5 = (*(v4 + 112))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

double sub_18BAC5E14(double a1, double a2)
{
  v5 = *v2;
  v6 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v5 + v6, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1Tm(v11, v12);
  v9 = (*(v8 + 152))(v7, v8, a1, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v9;
}

void sub_18BAC5ECC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v4 = _s4ItemVMa_0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D65F0);
  MEMORY[0x1EEE9AC00](v29);
  v10 = (&v22 - v9);
  v11 = *(v0 + OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content + 8);
  v28 = *(v11 + 16);
  if (v28)
  {
    v12 = 0;
    v25 = (v5 + 48);
    v26 = (v5 + 56);
    v13 = MEMORY[0x1E69E7CC0];
    v23 = v4;
    v27 = v5;
    while (v12 < *(v11 + 16))
    {
      v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v15 = *(v5 + 72);
      v16 = v11;
      v17 = *(v29 + 48);
      *v10 = v12;
      sub_18B80DF38(v11 + v14 + v15 * v12, v10 + v17);
      sub_18B812F3C(v12, v31);
      sub_18B7F4620(v31);
      if (v32)
      {
        sub_18B80DF38(v10 + v17, v3);
        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      (*v26)(v3, v18, 1, v4);
      sub_18B988BAC(v10, &unk_1EA9D65F0);
      if ((*v25)(v3, 1, v4) == 1)
      {
        sub_18B988BAC(v3, &unk_1EA9D5380);
      }

      else
      {
        v19 = v24;
        sub_18B80DF9C(v3, v24);
        sub_18B80DF9C(v19, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_18B9B58B0(0, v13[2] + 1, 1, v13);
        }

        v21 = v13[2];
        v20 = v13[3];
        if (v21 >= v20 >> 1)
        {
          v13 = sub_18B9B58B0(v20 > 1, v21 + 1, 1, v13);
        }

        v13[2] = v21 + 1;
        sub_18B80DF9C(v30, v13 + v14 + v21 * v15);
        v4 = v23;
      }

      ++v12;
      v5 = v27;
      v11 = v16;
      if (v28 == v12)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_18BBA3340(v13);
  }
}

uint64_t sub_18BAC624C()
{
  v0 = sub_18BC1E8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8F8();
}

uint64_t sub_18BAC64B0()
{
  v0 = sub_18BC1E8B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18BC1E8D8();
  __swift_allocate_value_buffer(v6, qword_1EA9F8200);
  __swift_project_value_buffer(v6, qword_1EA9F8200);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_18BC1E8F8();
}

uint64_t sub_18BAC66A0(void *a1)
{
  v2 = sub_18BC1E598();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v35 - v14;
  if (([a1 isShowingContinuousReadingList] & 1) == 0)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v18 = sub_18BC1DE48();
    v19 = __swift_project_value_buffer(v18, qword_1EA9F8578);
    sub_18BAC7E14(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v18 - 8) + 16))(v20, v19, v18);
    return swift_willThrow();
  }

  sub_18BC1E0A8();
  (*(v3 + 16))(v11, v15, v2);
  v16 = (*(v3 + 88))(v11, v2);
  if (v16 == *MEMORY[0x1E695A638])
  {
    v41 = v8;
    v17 = 1;
    goto LABEL_9;
  }

  if (v16 == *MEMORY[0x1E695A640])
  {
    v41 = v8;
    v17 = 0;
LABEL_9:
    v36 = *(v3 + 8);
    v36(v15, v2);
    result = [a1 canNavigateContinuousReadingListInDirection_];
    if (result)
    {
      return result;
    }

    v22 = v41;
    sub_18BC1E0A8();
    (*(v3 + 104))(v5, *MEMORY[0x1E695A640], v2);
    sub_18BAC7E14(&qword_1EA9D8980, MEMORY[0x1E695A650]);
    v23 = v22;
    sub_18BC20D68();
    sub_18BC20D68();
    if (v39 == v37 && v40 == v38)
    {
      v24 = v5;
      v25 = v36;
      v36(v24, v2);
      v25(v22, v2);
    }

    else
    {
      v30 = sub_18BC21FD8();
      v31 = v5;
      v32 = v36;
      v36(v31, v2);
      v32(v23, v2);

      if ((v30 & 1) == 0)
      {
        sub_18BAC7E5C();
        swift_allocError();
        *v34 = 1;
        return swift_willThrow();
      }
    }

    sub_18BAC7E5C();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }

  if (qword_1EA9D2550 != -1)
  {
    swift_once();
  }

  v26 = sub_18BC1DE48();
  v27 = __swift_project_value_buffer(v26, qword_1EA9F8578);
  sub_18BAC7E14(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
  swift_allocError();
  (*(*(v26 - 8) + 16))(v28, v27, v26);
  swift_willThrow();
  v29 = *(v3 + 8);
  v29(v15, v2);
  return (v29)(v11, v2);
}

uint64_t sub_18BAC6C08(uint64_t a1)
{
  v2 = sub_18BC1E598();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_18BC1E0B8();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_18BAC6CF8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C650;
}

uint64_t sub_18BAC6D88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D2408 != -1)
  {
    swift_once();
  }

  v2 = sub_18BC1E8D8();
  v3 = __swift_project_value_buffer(v2, qword_1EA9F8200);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_18BAC6E30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18BAC78A4();
  *a1 = result;
  return result;
}

uint64_t SFSiriLinkCoordinator.navigateContinuousReadingListInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC4B368;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8096C0();
  return sub_18BC1F028();
}

uint64_t sub_18BAC6F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_18BC1E598();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  sub_18BC20F28();
  v3[12] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BAC700C, v6, v5);
}

uint64_t sub_18BAC700C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = [Strong actionPerformer], v2, !v3))
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v14 = sub_18BC1DE48();
    v15 = __swift_project_value_buffer(v14, qword_1EA9F8578);
    sub_18BAC7E14(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v14 - 8) + 16))(v16, v15, v14);
    swift_willThrow();
    goto LABEL_12;
  }

  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v4 = sub_18BC1F2C8();
  __swift_project_value_buffer(v4, qword_1EA9F7EC8);
  v5 = sub_18BC1F2A8();
  v6 = sub_18BC21218();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_18B7AC000, v5, v6, "Navigate sequentially in Continuous Reading List", v7, 2u);
    MEMORY[0x18CFFEEE0](v7, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v11 = v0[9];

  sub_18BC1E0A8();
  (*(v11 + 16))(v9, v8, v10);
  v12 = (*(v11 + 88))(v9, v10);
  if (v12 != *MEMORY[0x1E695A638])
  {
    if (v12 == *MEMORY[0x1E695A640])
    {
      v13 = 0;
      goto LABEL_15;
    }

    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v20 = v0[10];
    v21 = v0[11];
    v22 = v0[8];
    v23 = v0[9];
    v24 = sub_18BC1DE48();
    v25 = __swift_project_value_buffer(v24, qword_1EA9F8578);
    sub_18BAC7E14(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v24 - 8) + 16))(v26, v25, v24);
    swift_willThrow();
    swift_unknownObjectRelease();
    v27 = *(v23 + 8);
    v27(v21, v22);
    v27(v20, v22);
LABEL_12:

    v17 = v0[1];
    goto LABEL_16;
  }

  v13 = 1;
LABEL_15:
  v18 = v0[5];
  (*(v0[9] + 8))(v0[11], v0[8]);
  [v3 navigateContinuousReadingListToDirection_];
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
  v18[4] = sub_18B9A3450();
  __swift_allocate_boxed_opaque_existential_0Tm(v18);
  sub_18BC1DF98();
  swift_unknownObjectRelease();

  v17 = v0[1];
LABEL_16:

  return v17();
}

uint64_t sub_18BAC748C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BAC6F08(a1, a2, v2);
}

uint64_t sub_18BAC7538(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B987B10;

  return v8(a1, v5);
}

uint64_t sub_18BAC763C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BAC7538(a1, a2, v6);
}

unint64_t sub_18BAC7708()
{
  result = qword_1EA9D8948;
  if (!qword_1EA9D8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8948);
  }

  return result;
}

uint64_t sub_18BAC77DC(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BAC7538(a1, a2, v6);
}

uint64_t sub_18BAC78A4()
{
  v0 = sub_18BC1E488();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v28 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8960);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_18BC1E8B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_18BC1E8D8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8968);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v13 + 104))(v15, *MEMORY[0x1E6968DF0], v12);
  sub_18BC1E8F8();
  (*(v19 + 56))(v11, 1, 1, v18);
  v20 = sub_18BC1E598();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = sub_18BC1DF68();
  v22 = *(*(v21 - 8) + 56);
  v22(v26, 1, 1, v21);
  v22(v27, 1, 1, v21);
  (*(v29 + 104))(v28, *MEMORY[0x1E695A4F8], v30);
  v23 = MEMORY[0x1E695A650];
  sub_18BAC7E14(&qword_1EA9D8970, MEMORY[0x1E695A650]);
  sub_18BC21AE8();
  sub_18BAC7E14(&qword_1EA9D8978, v23);
  return sub_18BC1E0F8();
}

uint64_t sub_18BAC7E14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18BAC7E5C()
{
  result = qword_1EA9D8988;
  if (!qword_1EA9D8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8988);
  }

  return result;
}

unint64_t sub_18BAC7EC4()
{
  result = qword_1EA9D8990;
  if (!qword_1EA9D8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8990);
  }

  return result;
}

id sub_18BAC7FB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurrableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18BAC7FF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = 1.0;
  if (v1)
  {
    v4 = 0.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 8.0;
  }

  [v2 setAlpha_];
  v5 = sub_18B7DE654();
  [v5 setValue_];

  v6 = sub_18B7DE654();
  [v6 value];
  v8 = v7;

  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v8;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_18B7EA1B8;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_18B7D1EC4;
  *(v12 + 24) = v11;
  v17[4] = sub_18B7D1E94;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_18B7E3BF4;
  v17[3] = &block_descriptor_36;
  v13 = _Block_copy(v17);
  v14 = v2;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  [v10 performWithoutAnimation_];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BAC820C()
{

  return swift_deallocClassInstance();
}

void sub_18BAC826C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = 1.0;
  if (v1)
  {
    v3 = 0.0;
    v4 = 8.0;
  }

  else
  {
    v4 = 0.0;
  }

  [v2 setAlpha_];
  v5 = sub_18B7DE654();
  [v5 setValue_];
}

void sub_18BAC840C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

double sub_18BAC8768()
{
  [v0 collapsedURLFieldFrame];
  x = v30.origin.x;
  y = v30.origin.y;
  height = v30.size.height;
  Width = CGRectGetWidth(v30);
  [v0 horizontalOutset];
  v6 = v5;
  [v0 expandedPlatterFrame];
  v7 = CGRectGetWidth(v31);
  v8 = [v0 barItemView];
  if (v8 && (v9 = v8, v10 = [v8 effectiveUserInterfaceLayoutDirection], v9, v10))
  {
    [v0 expandedURLFieldPadding];
    v12 = v11;
    [v0 expandedURLFieldPadding];
  }

  else
  {
    [v0 expandedURLFieldPadding];
    v12 = v13;
    [v0 expandedURLFieldPadding];
  }

  if (v7 >= Width + v6 + v6)
  {
    v14 = Width + v6 + v6;
  }

  else
  {
    v14 = v7;
  }

  v15 = UIEdgeInsetsInsetRect(x, y, v14, height, 0.0, v12);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v0 expandedURLFieldPadding];
  v23 = v22;
  v24 = v15;
  v25 = v17;
  v26 = v19;
  v27 = v21;

  *&result = CGRectOffset(*&v24, 0.0, v23);
  return result;
}

double sub_18BAC8904()
{
  v1 = [v0 innerContainerView];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v0 barItemView];
    if (v4)
    {
      v5 = v4;
      [v4 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = [v0 containerView];
      [v5 convertRect:v14 toView:{v7, v9, v11, v13}];
      v2 = v15;
    }

    else
    {
    }
  }

  return v2;
}

double sub_18BAC8A30(void *a1, uint64_t a2, double (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  return v5;
}

double sub_18BAC8A94()
{
  [v0 collapsedPlatterFrame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 horizontalOutset];
  v10 = -v9;
  [v0 preferredPresentedViewContentSize];
  [v0 expandedURLFieldPadding];
  [v0 horizontalOutset];
  v11 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, 0.0, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v0 innerContainerView];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 safeAreaLayoutGuide];
    [v20 layoutFrame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v44.origin.x = v11;
    v44.origin.y = v13;
    v44.size.width = v15;
    v44.size.height = v17;
    v48.origin.x = v22;
    v48.origin.y = v24;
    v48.size.width = v26;
    v48.size.height = v28;
    v45 = CGRectIntersection(v44, v48);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;
    height = v45.size.height;
    [v19 frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [v0 minDistanceFromScreenEdges];
    v42 = v41;
    v46.origin.x = v34;
    v46.origin.y = v36;
    v46.size.width = v38;
    v46.size.height = v40;
    v49 = CGRectInset(v46, v42, v42);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    *&v11 = CGRectIntersection(v47, v49);
  }

  return v11;
}

double SFCatalogPlatterPresentationController.preferredPresentedViewContentSize.getter()
{
  v1 = v0 + OBJC_IVAR___SFCatalogPlatterPresentationController_preferredPresentedViewContentSize;
  swift_beginAccess();
  return *v1;
}

id SFCatalogPlatterPresentationController.preferredPresentedViewContentSize.setter(double a1, double a2)
{
  v5 = &v2[OBJC_IVAR___SFCatalogPlatterPresentationController_preferredPresentedViewContentSize];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (v7 != a1 || v8 != a2)
  {
    result = [v2 containerView];
    if (result)
    {

      v10 = [v2 borrowedPlatter];
      if (v10)
      {
        v11 = v10;
        [v2 expandedPlatterFrame];
        [v11 setFrame_];
      }

      v12 = [v2 borrowedURLFieldView];
      if (v12)
      {
        v13 = v12;
        [v2 expandedURLFieldFrame];
        [v13 setFrame_];
      }

      return [v2 layoutPresentedView];
    }
  }

  return result;
}

id sub_18BAC8F78()
{
  v1 = OBJC_IVAR___SFCatalogPlatterPresentationController____lazy_storage___dismissRecognizer;
  v2 = *(v0 + OBJC_IVAR___SFCatalogPlatterPresentationController____lazy_storage___dismissRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFCatalogPlatterPresentationController____lazy_storage___dismissRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(SFTouchDownGestureRecognizer) initWithTarget:v0 action:sel_dismiss_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18BAC9058(void *a1)
{
  result = [a1 state];
  if (result == 3)
  {
    v3 = [v1 presentedViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];

    result = [v1 delegate];
    if (result)
    {
      v4 = result;
      if ([result respondsToSelector_])
      {
        [v4 presentationControllerWillDismiss_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall SFCatalogPlatterPresentationController.presentationTransitionWillBegin()()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v29 = v1;
    v2 = [v0 innerContainerView];
    if (v2)
    {
      v28 = v2;
      v3 = [v0 barItemView];
      if (v3)
      {
        v27 = v3;
        v4 = [v0 borrowedPlatter];
        if (v4)
        {
          v26 = v4;
          v5 = [v0 borrowedURLFieldView];
          if (v5)
          {
            v25 = v5;
            v6 = [v0 presentingViewController];
            v7 = [v6 transitionCoordinator];

            if (v7)
            {
              [v28 setAutoresizingMask_];
              [v29 bounds];
              [v28 setFrame_];
              [v29 addSubview_];
              v8 = [v0 backgroundView];
              [v8 setAutoresizingMask_];

              v9 = [v0 backgroundView];
              [v28 bounds];
              [v9 setFrame_];

              v10 = [v0 backgroundView];
              v11 = [v0 dismissRecognizer];
              [v10 addGestureRecognizer_];

              v12 = [v0 backgroundView];
              [v28 addSubview_];

              v13 = v26;
              [v13 setClipsToBounds_];
              v14 = [v0 commandPerformer];
              [v13 setCommandPerformer_];

              [v0 collapsedPlatterFrame];
              [v13 setFrame_];
              [v28 addSubview_];
              [v13 _continuousCornerRadius];
              v16 = v15;

              v17 = &v0[OBJC_IVAR___SFCatalogPlatterPresentationController_cachedBorrowedPlatterCornerRadius];
              *v17 = v16;
              v17[8] = 0;
              v18 = swift_allocObject();
              v18[2] = v13;
              v18[3] = v0;
              v18[4] = v25;
              v18[5] = v27;
              aBlock[4] = sub_18BACA238;
              aBlock[5] = v18;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_18BAC9800;
              aBlock[3] = &block_descriptor_37;
              v19 = _Block_copy(aBlock);
              v20 = v13;
              v21 = v0;
              v22 = v25;
              v23 = v27;

              [v7 animateAlongsideTransition:v19 completion:0];
              _Block_release(v19);

              swift_unknownObjectRelease();
              return;
            }

            v24 = v25;
          }

          else
          {

            v24 = v26;
          }
        }

        else
        {

          v24 = v27;
        }
      }

      else
      {

        v24 = v28;
      }
    }

    else
    {
      v24 = v29;
    }
  }
}

uint64_t sub_18BAC9620(int a1, id a2, void *a3, void *a4, void *a5)
{
  [a2 _setContinuousCornerRadius_];
  [a3 expandedPlatterFrame];
  [a2 setFrame_];
  [a3 expandedURLFieldFrame];
  [a4 setFrame_];
  [a5 setNeedsLayout];
  [a5 layoutIfNeeded];
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_18BACA580;
  *(v11 + 24) = v10;
  v15[4] = sub_18B7D1E94;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_18B7E3BF4;
  v15[3] = &block_descriptor_19_0;
  v12 = _Block_copy(v15);
  v13 = a3;
  sub_18BC1E1A8();

  [v9 performWithoutAnimation_];
  _Block_release(v12);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BAC9800(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_18BC1E1A8();
  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SFCatalogPlatterPresentationController.dismissalTransitionWillBegin()()
{
  v1 = [v0 presentingViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = [v0 barItemView];
    if (v3)
    {
      v15 = v3;
      v4 = [v0 borrowedPlatter];
      if (v4)
      {
        v14 = v4;
        v5 = [v0 borrowedURLFieldView];
        if (v5)
        {
          v6 = v5;
          v7 = swift_allocObject();
          v7[2] = v14;
          v7[3] = v0;
          v7[4] = v6;
          v7[5] = v15;
          aBlock[4] = sub_18BACA294;
          aBlock[5] = v7;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_18BAC9800;
          aBlock[3] = &block_descriptor_6_0;
          v8 = _Block_copy(aBlock);
          v9 = v14;
          v10 = v0;
          v11 = v6;
          v12 = v15;

          [v2 animateAlongsideTransition:v8 completion:0];
          _Block_release(v8);
          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();

        v13 = v14;
      }

      else
      {
        swift_unknownObjectRelease();
        v13 = v15;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_18BAC9AD8(int a1, void *a2, char *a3, void *a4, void *a5)
{
  [a3 collapsedPlatterFrame];
  [a2 setFrame_];
  v9 = *&a3[OBJC_IVAR___SFCatalogPlatterPresentationController_cachedBorrowedPlatterCornerRadius];
  if (a3[OBJC_IVAR___SFCatalogPlatterPresentationController_cachedBorrowedPlatterCornerRadius + 8])
  {
    v9 = 22.0;
  }

  [a2 _setContinuousCornerRadius_];
  [a3 collapsedURLFieldFrame];
  [a4 setFrame_];
  [a5 setNeedsLayout];

  return [a5 layoutIfNeeded];
}

Swift::Void __swiftcall SFCatalogPlatterPresentationController.containerViewWillLayoutSubviews()()
{
  v1.super_class = SFCatalogPlatterPresentationController;
  objc_msgSendSuper2(&v1, sel_containerViewWillLayoutSubviews);
  [v0 layoutPresentedView];
}

void sub_18BAC9CE8()
{
  v1 = [v0 presentedView];
  if (v1)
  {
    v34 = v1;
    v2 = [v0 borrowedPlatter];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 borrowedURLFieldView];
      if (v4)
      {
        v5 = v4;
        v6 = [v34 superview];
        v7 = [v0 presentedSuperview];

        if (!v6 || (v6, v6 != v7))
        {
          v8 = [v0 presentedSuperview];
          [v3 addSubview_];

          v9 = [v0 presentedSuperview];
          [v9 addSubview_];
        }

        v10 = [v0 presentedSuperview];
        v11 = v3;
        [v11 bounds];
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;
        [v5 frame];
        CGRectGetMaxY(v36);
        [v0 expandedURLFieldPadding];
        UIEdgeInsetsMakeWithEdges();
        [v10 setFrame_];

        v22 = [v0 presentedSuperview];
        [v22 bounds];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        [v34 setFrame_];
        v31 = [v11 overrideUserInterfaceStyle];

        [v34 setOverrideUserInterfaceStyle_];
        v32 = v11;
      }

      else
      {
        v5 = v3;
        v32 = v34;
      }

      v33 = v5;
    }

    else
    {
      v33 = v34;
    }
  }
}

id SFCatalogPlatterPresentationController.init(presentedViewController:presenting:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPresentedViewController:a1 presentingViewController:a2];

  return v4;
}

{
  v4 = sub_18BACA3B4(a1, a2);

  return v4;
}

Swift::Bool __swiftcall SFCatalogPlatterPresentationController.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldRecognizeSimultaneouslyWith)
{
  v4 = [v2 dismissRecognizer];

  return v4 == _;
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

void _sSo38SFCatalogPlatterPresentationControllerC12MobileSafariE25dismissalTransitionDidEndyySbF_0()
{
  v1 = [v0 presentedView];
  if (v1)
  {
    v8 = v1;
    v2 = [v0 borrowedPlatter];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 barItemView];
      if (v4)
      {
        v5 = v4;
        [v8 removeFromSuperview];
        [v3 setClipsToBounds_];
        [v3 setCommandPerformer_];
        [v5 reclaimGlassView];

        v6 = v3;
        v3 = v5;
      }

      else
      {
        v6 = v8;
      }

      v7 = v3;
    }

    else
    {
      v7 = v8;
    }
  }
}

id sub_18BACA3B4(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___SFCatalogPlatterPresentationController_minDistanceFromScreenEdges] = 0x4024000000000000;
  *&v2[OBJC_IVAR___SFCatalogPlatterPresentationController_minExpandedPlatterOutset] = 0x403E000000000000;
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR___SFCatalogPlatterPresentationController_expandedURLFieldPadding];
  *v5 = xmmword_18BC4B6E0;
  *(v5 + 1) = xmmword_18BC4B6F0;
  v6 = OBJC_IVAR___SFCatalogPlatterPresentationController_backgroundView;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  swift_unknownObjectWeakInit();
  v7 = &v2[OBJC_IVAR___SFCatalogPlatterPresentationController_cachedBorrowedPlatterCornerRadius];
  *v7 = 0;
  v7[8] = 1;
  v8 = OBJC_IVAR___SFCatalogPlatterPresentationController_innerContainerViewController;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  v9 = OBJC_IVAR___SFCatalogPlatterPresentationController_presentedSuperview;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v10 = &v2[OBJC_IVAR___SFCatalogPlatterPresentationController_preferredPresentedViewContentSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v2[OBJC_IVAR___SFCatalogPlatterPresentationController____lazy_storage___dismissRecognizer] = 0;
  v12.receiver = v2;
  v12.super_class = SFCatalogPlatterPresentationController;
  return objc_msgSendSuper2(&v12, sel_initWithPresentedViewController_presentingViewController_, a1, a2);
}

unint64_t type metadata accessor for SFCatalogPlatterPresentationController()
{
  result = qword_1EA9D8A10;
  if (!qword_1EA9D8A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D8A10);
  }

  return result;
}

id SFStartPageOnboardingCell.Configuration.__allocating_init(identifier:stateProvider:imageString:title:descriptionString:buttonTitle:compact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v19 = type metadata accessor for SFStartPageOnboardingCell.Configuration();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v20[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonSymbolName];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v20[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkText];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v20[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkURLString];
  *v24 = 0;
  v24[1] = 0;
  *&v20[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_identifier] = a1;
  v25 = &v20[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_stateProvider];
  *v25 = a2;
  v25[1] = a3;
  v26 = &v20[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_artworkType];
  *v26 = a4;
  *(v26 + 1) = a5;
  v26[16] = 0;
  v27 = &v20[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_titleString];
  *v27 = a6;
  v27[1] = a7;
  v28 = &v20[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_descriptionString];
  *v28 = a8;
  v28[1] = a9;
  v29 = &v20[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonTitle];
  *v29 = a10;
  v29[1] = a11;
  if (a12)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  v20[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType] = v30;
  v33.receiver = v20;
  v33.super_class = v19;
  return objc_msgSendSuper2(&v33, sel_init);
}

id SFStartPageOnboardingCell.Configuration.__allocating_init(identifier:stateProvider:artworkView:title:descriptionString:buttonTitle:compact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v18 = type metadata accessor for SFStartPageOnboardingCell.Configuration();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v19[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonSymbolName];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v19[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkText];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v19[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkURLString];
  *v23 = 0;
  v23[1] = 0;
  *&v19[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_identifier] = a1;
  v24 = &v19[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_stateProvider];
  *v24 = a2;
  v24[1] = a3;
  v25 = &v19[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_artworkType];
  *v25 = a4;
  *(v25 + 1) = 0;
  v25[16] = 1;
  v26 = &v19[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_titleString];
  *v26 = a5;
  v26[1] = a6;
  v27 = &v19[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_descriptionString];
  *v27 = a7;
  v27[1] = a8;
  v28 = &v19[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonTitle];
  *v28 = a9;
  v28[1] = a10;
  if (a11)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  v19[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType] = v29;
  v32.receiver = v19;
  v32.super_class = v18;
  return objc_msgSendSuper2(&v32, sel_init);
}

char *SFStartPageOnboardingCell.Configuration.__allocating_init(identifier:stateProvider:imageString:title:descriptionString:linkText:linkURLString:buttonTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = type metadata accessor for SFStartPageOnboardingCell.Configuration();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v22[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonSymbolName];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v22[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkText];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v22[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkURLString];
  *v26 = 0;
  v26[1] = 0;
  *&v22[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_identifier] = a1;
  v27 = &v22[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_stateProvider];
  *v27 = a2;
  v27[1] = a3;
  v28 = &v22[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_artworkType];
  *v28 = a4;
  *(v28 + 1) = a5;
  v28[16] = 0;
  v29 = &v22[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_titleString];
  *v29 = a6;
  v29[1] = a7;
  v30 = &v22[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_descriptionString];
  *v30 = a8;
  v30[1] = a9;
  v31 = &v22[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonTitle];
  *v31 = a14;
  v31[1] = a15;
  v22[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType] = 1;
  v39.receiver = v22;
  v39.super_class = v21;
  v32 = objc_msgSendSuper2(&v39, sel_init);
  v33 = &v32[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkText];
  *v33 = a10;
  *(v33 + 1) = a11;
  v34 = v32;

  v35 = &v34[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkURLString];
  *v35 = a12;
  *(v35 + 1) = a13;

  return v34;
}

uint64_t sub_18BACAB14(uint64_t result)
{
  if (result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *(v1 + OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType) = v2;
  return result;
}

uint64_t (*sub_18BACAB30(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2) == 1;
  return sub_18BACAB6C;
}

uint64_t sub_18BACAB6C(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  *(*result + *(result + 8)) = v1;
  return result;
}

uint64_t sub_18BACAB88@<X0>(void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_18B9FE6DC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_18B824D48(v4);
}

uint64_t sub_18BACAC28(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9FE6A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_18B824D48(v3);
  return sub_18B7B171C(v8);
}

uint64_t sub_18BACACF0()
{
  v1 = (v0 + OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider);
  swift_beginAccess();
  v2 = *v1;
  sub_18B824D48(*v1);
  return v2;
}

uint64_t sub_18BACAD4C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_18B7B171C(v6);
}

id SFStartPageOnboardingCell.Configuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_18BACAFE8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_contentStackView] = 0;
  v4[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_currentLayoutType] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_currentConstraints] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_artworkView] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___imageView] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___descriptionLabel] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___onboardingButton] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___closeButton] = 0;
  *&v4[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_configuration] = 0;
  swift_unknownObjectWeakInit();
  v26.receiver = v4;
  v26.super_class = type metadata accessor for SFStartPageOnboardingCell();
  v9 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  [v10 setCornerRadius_];

  [v9 setClipsToBounds_];
  v11 = [v9 contentView];
  v12 = sub_18BACBC60();
  [v11 addSubview_];

  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18BC41E60;
  v15 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___closeButton;
  v16 = [*&v9[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___closeButton] topAnchor];
  v17 = [v9 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  *(v14 + 32) = v19;
  v20 = [*&v9[v15] trailingAnchor];
  v21 = [v9 contentView];

  v22 = [v21 trailingAnchor];
  v23 = [v20 constraintEqualToAnchor:v22 constant:-16.0];

  *(v14 + 40) = v23;
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v24 = sub_18BC20D88();

  [v13 activateConstraints_];

  sub_18BACD23C();
  sub_18BACC3D4();

  return v9;
}

id sub_18BACB38C()
{
  v1 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setContentMode_];
    [v4 setClipsToBounds_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18BACB448()
{
  v1 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setContentMode_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18BACB504()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setTextAlignment_];
  [v0 setAdjustsFontSizeToFitWidth_];
  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  LODWORD(v2) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v2];
  return v0;
}

id sub_18BACB614(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_18BACB674()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setAdjustsFontSizeToFitWidth_];
  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

id sub_18BACB790(uint64_t a1)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v25 = &v23 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8AD8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v24 = sub_18BC21628();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC21758();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18BC21808();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  sub_18BC217C8();
  (*(v10 + 104))(v12, *MEMORY[0x1E69DC568], v9);
  sub_18BC21618();
  (*(v6 + 104))(v8, *MEMORY[0x1E69DC508], v24);
  sub_18BC21638();
  sub_18BC1FF68();
  v18 = sub_18BC1FF58();
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  sub_18BC21748();
  sub_18BC21648();
  v19 = v25;
  (*(v14 + 16))(v25, v16, v13);
  (*(v14 + 56))(v19, 0, 1, v13);
  sub_18BC21828();
  [v17 addTarget:v26 action:sel_didTapOnboardingButton forControlEvents:64];
  [v17 setMaximumContentSizeCategory_];
  v20 = [v17 titleLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setTextAlignment_];
  }

  (*(v14 + 8))(v16, v13);
  return v17;
}

uint64_t sub_18BACBBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18BC1E7F8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() preferredFontForTextStyle_];
  sub_18B9EA798();
  return sub_18BC1E808();
}

id sub_18BACBC80(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_18BACBCE4(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18BC41E60;
  v4 = objc_opt_self();
  *(v3 + 32) = [v4 systemBackgroundColor];
  *(v3 + 40) = [v4 secondaryLabelColor];
  sub_18B7B0AC0(0, &unk_1EA9D91D0);
  v5 = sub_18BC20D88();

  v6 = objc_opt_self();
  v7 = [v6 configurationWithPaletteColors_];

  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v9 = result;
    v10 = [v6 configurationWithFont_];

    v11 = [v7 configurationByApplyingConfiguration_];
    v12 = v11;
    v13 = sub_18BC20B98();
    v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

    [v2 setImage:v14 forState:0];
    [v2 addTarget:a1 action:sel_didTapCloseButton forControlEvents:64];
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_18BACBFA0()
{
  v1 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18BACC06C(void *a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_18BACD23C();
  sub_18BACC3D4();
}

void sub_18BACC0D8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_18BACD23C();
  sub_18BACC3D4();
}

void (*sub_18BACC140(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18BACC1A4;
}

void sub_18BACC1A4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_18BACD23C();
    sub_18BACC3D4();
  }
}

uint64_t sub_18BACC2DC()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_18BACC33C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_startPageOnboardingCellDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A99E8;
}

void sub_18BACC3D4()
{
  v1 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType;
    v4 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_currentLayoutType;
    if (v2[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_layoutType] != *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_currentLayoutType))
    {
      if (*(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_currentConstraints))
      {
        v5 = objc_opt_self();
        sub_18B7B0AC0(0, &qword_1EA9D4700);
        v6 = v2;
        sub_18BC1E3F8();
        v7 = sub_18BC20D88();

        [v5 deactivateConstraints_];

        v8 = *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_contentStackView);
        if (v8)
        {
          [v8 removeFromSuperview];
        }
      }

      else
      {
        v9 = v2;
      }

      v10 = v2[v3];
      *(v0 + v4) = v10;
      if (v10)
      {
        if (v10 == 1)
        {
          sub_18BACC510();
        }

        else
        {
          sub_18BACCB78();
        }
      }
    }
  }
}

uint64_t sub_18BACC510()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setAxis_];
  [v1 setAlignment_];
  [v1 setSpacing_];
  [v1 setDistribution_];
  v2 = [v0 contentView];
  [v2 addSubview_];

  v3 = *&v0[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_contentStackView];
  *&v0[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_contentStackView] = v1;
  v4 = v1;

  v5 = sub_18BACB4E4();
  [v5 setTextAlignment_];

  v6 = sub_18BACB5F4();
  [v6 setTextAlignment_];

  v47 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___titleLabel;
  [v4 addArrangedSubview_];
  v7 = sub_18BACB448();
  [v4 addArrangedSubview_];

  v8 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___descriptionLabel;
  [v4 addArrangedSubview_];
  v9 = sub_18BACB770();
  [v4 addArrangedSubview_];

  v10 = [v0 contentView];
  v11 = sub_18BACBC60();
  [v10 bringSubviewToFront_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18BC4B720;
  v13 = [v4 leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 &selRef_initWithRow_itemRange_ + 1];

  v16 = [v13 constraintEqualToAnchor:v15 constant:20.0];
  *(v12 + 32) = v16;
  v17 = [v4 topAnchor];
  v18 = [v0 contentView];
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:20.0];
  *(v12 + 40) = v20;
  v21 = [v4 trailingAnchor];
  v22 = [v0 contentView];
  v23 = [v22 &selRef_stringByAppendingPathExtension_ + 4];

  v24 = [v21 constraintEqualToAnchor:v23 constant:-20.0];
  *(v12 + 48) = v24;
  v25 = [v4 bottomAnchor];
  v26 = [v0 contentView];
  v27 = [v26 bottomAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:-20.0];
  *(v12 + 56) = v28;
  v29 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView;
  v30 = [*&v0[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView] widthAnchor];
  v31 = [v4 widthAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:-20.0];

  *(v12 + 64) = v32;
  v33 = [*&v0[v29] heightAnchor];
  v34 = [v33 constraintEqualToConstant_];

  *(v12 + 72) = v34;
  v35 = [*&v0[v8] widthAnchor];
  v36 = [v4 widthAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v12 + 80) = v37;
  v38 = [*&v0[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___onboardingButton] widthAnchor];
  v39 = [v4 widthAnchor];

  v40 = [v38 constraintEqualToAnchor_];
  *(v12 + 88) = v40;
  v41 = [*&v0[v47] trailingAnchor];
  v42 = [*&v0[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___closeButton] leadingAnchor];
  v43 = [v41 constraintLessThanOrEqualToAnchor:v42 constant:0.0];

  *(v12 + 96) = v43;
  v44 = objc_opt_self();
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v45 = sub_18BC20D88();
  [v44 activateConstraints_];

  *&v0[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_currentConstraints] = v12;
}

uint64_t sub_18BACCB78()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setAxis_];
  [v1 setAlignment_];
  [v1 setSpacing_];
  [v1 setDistribution_];
  v2 = [v0 contentView];
  [v2 addSubview_];

  v3 = *&v0[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_contentStackView];
  *&v0[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_contentStackView] = v1;
  v4 = v1;

  v5 = sub_18BACB4E4();
  [v5 setTextAlignment_];

  v6 = sub_18BACB5F4();
  [v6 setTextAlignment_];

  v49 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___titleLabel;
  [v4 addArrangedSubview_];
  [v4 addArrangedSubview_];
  v7 = sub_18BACB770();
  [v4 addArrangedSubview_];

  v8 = [v0 contentView];
  v9 = sub_18BACB448();
  [v8 addSubview_];

  v10 = [v0 contentView];
  v11 = sub_18BACBC60();
  [v10 bringSubviewToFront_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18BC4B730;
  v13 = [v4 leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 centerXAnchor];

  v16 = [v13 constraintEqualToAnchor:v15 constant:-12.0];
  *(v12 + 32) = v16;
  v17 = [v4 topAnchor];
  v18 = [v0 contentView];
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor:v19 constant:20.0];
  *(v12 + 40) = v20;
  v21 = [v4 trailingAnchor];
  v22 = [v0 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintLessThanOrEqualToAnchor:v23 constant:-20.0];
  *(v12 + 48) = v24;
  v25 = [v4 bottomAnchor];
  v26 = [v0 contentView];
  v27 = [v26 bottomAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:-20.0];
  *(v12 + 56) = v28;
  v29 = [v4 widthAnchor];
  v30 = [v29 constraintLessThanOrEqualToConstant_];

  *(v12 + 64) = v30;
  v31 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView;
  v32 = [*&v0[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView] widthAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v12 + 72) = v33;
  v34 = [*&v0[v31] heightAnchor];
  v35 = [v34 constraintEqualToConstant_];

  *(v12 + 80) = v35;
  v36 = [*&v0[v31] centerYAnchor];
  v37 = [v0 contentView];
  v38 = [v37 centerYAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(v12 + 88) = v39;
  v40 = [*&v0[v31] trailingAnchor];
  v41 = [v4 leadingAnchor];

  v42 = [v40 constraintEqualToAnchor:v41 constant:-12.0];
  *(v12 + 96) = v42;
  v43 = [*&v0[v49] trailingAnchor];
  v44 = [*&v0[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___closeButton] leadingAnchor];
  v45 = [v43 constraintLessThanOrEqualToAnchor:v44 constant:0.0];

  *(v12 + 104) = v45;
  v46 = objc_opt_self();
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v47 = sub_18BC20D88();
  [v46 activateConstraints_];

  *&v0[OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_currentConstraints] = v12;
}

void sub_18BACD23C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v86 - v3;
  v5 = sub_18BC1EA98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_configuration;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10)
  {
    v86 = v8;
    v90 = v10;
    v11 = sub_18BACB448();
    v12 = [v11 subviews];

    sub_18B7B0AC0(0, &qword_1EA9D46F0);
    v13 = sub_18BC20D98();

    v88 = v6;
    v89 = v5;
    v87 = v4;
    if (v13 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18BC219A8())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x18CFFD010](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        [v16 removeFromSuperview];

        ++v15;
        if (v18 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    v20 = *&v90[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_artworkType];
    v19 = *&v90[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_artworkType + 8];
    if (v90[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_artworkType + 16])
    {
      v21 = v20;
      v22 = sub_18BACB38C();
      [v22 removeFromSuperview];

      v23 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView;
      v24 = [*(v1 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView) subviews];
      v25 = sub_18BC20D98();

      v91[0] = v21;
      MEMORY[0x1EEE9AC00](v26);
      *(&v86 - 2) = v91;
      LOBYTE(v24) = sub_18B9B8B10(sub_18BACE6A0, (&v86 - 4), v25);

      if ((v24 & 1) == 0)
      {
        [*(v1 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_artworkView) removeFromSuperview];
        [*(v1 + v23) _sf_addEdgeMatchedSubview_];
      }

      v27 = *(v1 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_artworkView);
      *(v1 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_artworkView) = v20;
      sub_18BACE6BC(v20, v19, 1);
      v28 = v21;

      [v28 setTranslatesAutoresizingMaskIntoConstraints_];
      sub_18BACE5AC(v20, v19, 1);
      sub_18BACE5AC(v20, v19, 1);
    }

    else
    {
      sub_18BC1E3F8();
      v29 = sub_18BACB38C();
      v30 = sub_18BC20B98();
      sub_18BACE5AC(v20, v19, 0);
      v31 = [objc_opt_self() imageNamed_];

      [v29 setImage_];
      v32 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_artworkView;
      [*(v1 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_artworkView) removeFromSuperview];
      v33 = *(v1 + v32);
      *(v1 + v32) = 0;

      v34 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView;
      v35 = [*(v1 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView) subviews];
      v36 = sub_18BC20D98();

      v37 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___imageView;
      v91[0] = *(v1 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___imageView);
      MEMORY[0x1EEE9AC00](v38);
      *(&v86 - 2) = v91;
      v40 = v39;
      LOBYTE(v35) = sub_18B9B8B10(sub_18BACE79C, (&v86 - 4), v36);

      if ((v35 & 1) == 0)
      {
        [*(v1 + v34) _sf_addEdgeMatchedSubview_];
      }
    }

    v41 = v90;
    v42 = &v90[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_imageOverlayProvider];
    swift_beginAccess();
    v43 = *v42;
    if (*v42)
    {
      v44 = sub_18BC1E1A8();
      v45 = v43(v44);
      sub_18B7B171C(v43);
      if (v45)
      {
        v46 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView;
        [*(v1 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView) addSubview_];
        v47 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_18BC41E60;
        v49 = [v45 centerXAnchor];
        v50 = [*(v1 + v46) centerXAnchor];
        v51 = [v49 constraintEqualToAnchor_];

        *(v48 + 32) = v51;
        v52 = [v45 centerYAnchor];
        v53 = *(v1 + v46);
        v41 = v90;
        v54 = [v53 centerYAnchor];
        v55 = [v52 constraintEqualToAnchor_];

        *(v48 + 40) = v55;
        sub_18B7B0AC0(0, &qword_1EA9D4700);
        v56 = sub_18BC20D88();

        [v47 activateConstraints_];
      }
    }

    v57 = sub_18BACB4E4();
    sub_18BC1E3F8();
    v58 = sub_18BC20B98();

    [v57 setText_];

    v59 = sub_18BACB5F4();
    sub_18BC1E3F8();
    v60 = sub_18BC20B98();

    [v59 setText_];

    v61 = sub_18BACB770();
    sub_18BC1E3F8();
    v62 = sub_18BC20B98();

    [v61 setTitle:v62 forState:0];

    if (*&v41[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_buttonSymbolName + 8])
    {
      sub_18BC1E3F8();
      v63 = sub_18BC20B98();

      v64 = [objc_opt_self() _systemImageNamed_];
    }

    else
    {
      v64 = 0;
    }

    [*(v1 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___onboardingButton) setImage:v64 forState:0];
    if (*&v41[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkText + 8] && *&v41[OBJC_IVAR___SFStartPageOnboardingCellConfiguration_linkURLString + 8])
    {
      sub_18BC1E3F8();
      sub_18BC1E3F8();
      v65 = v87;
      sub_18BC1EA68();

      v67 = v88;
      v66 = v89;
      if ((*(v88 + 48))(v65, 1, v89) == 1)
      {

        sub_18BACE6CC(v65);
      }

      else
      {
        v68 = v86;
        (*(v67 + 32))(v86, v65, v66);
        v69 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v70 = sub_18BC20B98();

        v71 = [v69 initWithString_];

        v72 = *MEMORY[0x1E69DB670];
        v73 = sub_18BC1E9E8();
        [v71 addAttribute:v72 value:v73 range:{0, objc_msgSend(v71, sel_length)}];

        v74 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v75 = sub_18BC20B98();
        v76 = [v74 initWithString_];

        v77 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v78 = sub_18BC20B98();
        v79 = [v77 initWithString_];

        [v76 appendAttributedString_];
        [v76 appendAttributedString_];
        v80 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___descriptionLabel;
        [*(v1 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___descriptionLabel) setAttributedText_];
        v81 = *(v1 + v80);
        v82 = objc_allocWithZone(MEMORY[0x1E69DD060]);
        v83 = v81;
        v84 = [v82 initWithTarget:v1 action:sel_showPrivacyPrompt];
        [v83 addGestureRecognizer_];

        v85 = *(v1 + v80);
        [v85 setUserInteractionEnabled_];

        (*(v88 + 8))(v68, v89);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_18BACDED8(SEL *a1)
{
  v3 = OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_configuration;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      v7 = v5;
      [v6 *a1];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_18BACDFDC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18BACE49C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_18BACE4E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_18BACE558()
{
  result = qword_1EA9D8AD0;
  if (!qword_1EA9D8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8AD0);
  }

  return result;
}

void sub_18BACE5AC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_18BACE5BC()
{
  *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_contentStackView) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_currentLayoutType) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_currentConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_artworkView) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___imageView) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___artworkContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___descriptionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___onboardingButton) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell____lazy_storage___closeButton) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari25SFStartPageOnboardingCell_configuration) = 0;
  swift_unknownObjectWeakInit();
  sub_18BC21CF8();
  __break(1u);
}

id sub_18BACE6BC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_18BC1E3F8();
  }
}

uint64_t sub_18BACE6CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TabSnapshotRegistration.Visibility.init(priority:tier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

BOOL static TabSnapshotRegistration.Visibility.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *a1 < *a2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_18BACE7FC@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v5 = v1[4];
  v9 = v1[3];
  v4 = v9;
  v10 = v5;
  *a1 = v8[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_18BACF6CC(v8, v7);
}

uint64_t sub_18BACE85C(_OWORD *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v18[0] = *(v1 + 16);
  v18[1] = v3;
  v4 = *(v1 + 64);
  v18[2] = *(v1 + 48);
  v18[3] = v4;
  v5 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  v6 = a1[3];
  *(v1 + 48) = a1[2];
  *(v1 + 64) = v6;
  sub_18BACF9B4(v18);
  swift_beginAccess();
  v7 = *(v1 + 32);
  v19[0] = *(v1 + 16);
  v19[1] = v7;
  v8 = *(v1 + 64);
  v10 = *(v1 + 16);
  v9 = *(v1 + 32);
  v19[2] = *(v1 + 48);
  v19[3] = v8;
  v11 = *(v1 + 80);
  v14 = v10;
  v15 = v9;
  v12 = *(v1 + 64);
  v16 = *(v1 + 48);
  v17 = v12;
  sub_18BC1E1A8();
  sub_18BACF6CC(v19, v20);
  v11(&v14);

  v20[0] = v14;
  v20[1] = v15;
  v20[2] = v16;
  v20[3] = v17;
  return sub_18BACF9B4(v20);
}

uint64_t sub_18BACE944@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 80);
  v4 = *(v3 + 88);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_18B987978;
  a2[1] = v6;
  return sub_18BC1E1A8();
}

uint64_t sub_18BACE9C4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 80) = sub_18BACF98C;
  *(v6 + 88) = v5;
  sub_18BC1E1A8();
}

uint64_t sub_18BACEA54()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  sub_18BC1E1A8();
  return v1;
}

uint64_t sub_18BACEAA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t TabSnapshotRegistration.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_id;
  v4 = sub_18BC1EC08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_18BACEBBC@<D0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_18BACEC14(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
  result = swift_beginAccess();
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  if (v2 != v6 || v3 != v7)
  {
    v9 = *(v1 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
    v10 = sub_18BC1E1A8();
    v9(v10);
  }

  return result;
}

void (*sub_18BACECB4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_18BACED54;
}

void sub_18BACED54(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40) + *(*a1 + 48);
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  if (v2 != v5 || v3 != v6)
  {
    v8 = *(v1[5] + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
    v9 = sub_18BC1E1A8();
    v8(v9);
  }

  free(v1);
}

uint64_t sub_18BACEDF8(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v1 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v3;
  *(v5 + 8) = v4;
  if (v3 != v6 || v4 != v7)
  {
    v9 = *(v2 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
    v10 = sub_18BC1E1A8();
    v9(v10);
  }

  return sub_18BC1E1A8();
}

double static TabSnapshotRegistration.Visibility.min.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EA9D2410 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_1EA9D8AE0;
  v2 = qword_1EA9D8AE8;
  *a1 = qword_1EA9D8AE0;
  a1[1] = v2;
  return result;
}

uint64_t TabSnapshotRegistration.Visibility.debugDescription.getter()
{
  v16[0] = sub_18BC1E988();
  v1 = *(v16[0] - 8);
  MEMORY[0x1EEE9AC00](v16[0]);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8AF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = *v0;
  v13 = v0[1];
  v19 = 0;
  v20 = 0xE000000000000000;
  v17 = v13;
  type metadata accessor for Tier(0);
  sub_18BC21C58();
  MEMORY[0x18CFFC150](46, 0xE100000000000000);
  v16[1] = v12;
  sub_18BC1EC28();
  sub_18BABC974();
  sub_18BC1E918();
  sub_18BC1E968();
  MEMORY[0x18CFF9E30](v3, v5);
  (*(v1 + 8))(v3, v16[0]);
  v14 = *(v6 + 8);
  v14(v8, v5);
  sub_18BACF73C();
  sub_18BC20978();
  v14(v11, v5);
  MEMORY[0x18CFFC150](v17, v18);

  return v19;
}

uint64_t TabSnapshotRegistration.Visibility.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v1);
  return MEMORY[0x18CFFD660](v2);
}

uint64_t TabSnapshotRegistration.Visibility.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18BC22158();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x18CFFD690](*&v3);
  MEMORY[0x18CFFD660](v2);
  return sub_18BC221A8();
}

BOOL sub_18BACF328(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *a1 < *a2;
  }

  else
  {
    return v5;
  }
}

BOOL sub_18BACF350(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v3 == v2;
  v5 = v3 >= v2;
  if (v4)
  {
    return *a2 >= *a1;
  }

  else
  {
    return v5;
  }
}

BOOL sub_18BACF378(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    return *a1 >= *a2;
  }

  else
  {
    return v5;
  }
}

BOOL sub_18BACF3A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    return *a2 < *a1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_18BACF3D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFFD690](*&v1);
  return MEMORY[0x18CFFD660](v2);
}

uint64_t sub_18BACF420()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18BC22158();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x18CFFD690](*&v3);
  MEMORY[0x18CFFD660](v2);
  return sub_18BC221A8();
}

uint64_t TabSnapshotRegistration.deinit()
{

  v1 = OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_id;
  v2 = sub_18BC1EC08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TabSnapshotRegistration.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_id;
  v2 = sub_18BC1EC08();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t SFTabSnapshotVisibilityTier.debugDescription.getter(uint64_t a1)
{
  v1 = 1751607656;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x746C7561666564;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 7827308;
  }
}

uint64_t sub_18BACF660()
{
  v1 = *v0;
  v2 = 1751607656;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x746C7561666564;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 7827308;
  }
}

uint64_t sub_18BACF6CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D92C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18BACF73C()
{
  result = qword_1EA9D8AF8;
  if (!qword_1EA9D8AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D8AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8AF8);
  }

  return result;
}

unint64_t sub_18BACF7A0()
{
  result = qword_1EA9D8B00;
  if (!qword_1EA9D8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8B00);
  }

  return result;
}

uint64_t sub_18BACF9B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D92C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BACFA20@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18BC1DE28();
  v5 = a1[6];
  *(a2 + a1[5]) = 0;
  *(a2 + v5) = 1;
  v6 = a1[8];
  *(a2 + a1[7]) = MEMORY[0x1E69E7CC0];
  v7 = (a2 + v6);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_18BACFA80(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (*(v2 + v3) == *(a1 + v3) && *(v2 + v3 + 8) == *(a1 + v3 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_18BC21FD8() ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_18BACFAD0()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B84B080(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  sub_18BC22178();
  return sub_18BC221A8();
}

char *sub_18BACFB74(double a1, double a2, double a3, double a4)
{
  v9 = sub_18BC1FFC8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18BC1FFF8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar14BackgroundView_contentView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v15 = _s14BackgroundViewCMa();
  v20.receiver = v4;
  v20.super_class = v15;
  v16 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC1FFB8();
  sub_18BC20008();
  v19[3] = v10;
  v19[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_0Tm(v19);
  sub_18BC1FFE8();
  (*(v11 + 8))(v13, v10);
  sub_18BC21518();
  [v16 addSubview_];

  return v16;
}

id sub_18BACFE1C()
{
  v2.receiver = v0;
  v2.super_class = _s14BackgroundViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18BACFE84()
{
  v1 = *v0;
  sub_18B7F40F4(*v0);
  [v1 _setContinuousCornerRadius_];
  v2 = *&v1[OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar14BackgroundView_contentView];
  [v1 bounds];
  [v2 setFrame_];
  v3 = sub_18B7F4548();
  v5 = v4;
  [v2 bounds];
  [v2 setBounds_];
  v6 = sub_18B7F44CC();

  return [v2 _setContinuousCornerRadius_];
}

uint64_t sub_18BACFF94(_OWORD *a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_configuration);
  v5 = *(v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_configuration + 80);
  v36 = *(v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_configuration + 64);
  v37 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_configuration + 112);
  v38 = *(v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_configuration + 96);
  v39 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_configuration + 16);
  v32 = *(v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_configuration);
  v33 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_configuration + 48);
  v34 = *(v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_configuration + 32);
  v35 = v8;
  v40[2] = v34;
  v40[3] = v8;
  v40[0] = v32;
  v40[1] = v7;
  v40[6] = v38;
  v40[7] = v6;
  v40[4] = v36;
  v40[5] = v5;
  v9 = a1[1];
  *v4 = *a1;
  v4[1] = v9;
  v10 = a1[7];
  v4[6] = a1[6];
  v4[7] = v10;
  v11 = a1[5];
  v4[4] = a1[4];
  v4[5] = v11;
  v12 = a1[3];
  v4[2] = a1[2];
  v4[3] = v12;
  sub_18BAD162C(&v32, v41);
  sub_18BAD162C(a1, v41);
  sub_18BAD1664(v40);
  v13 = v4[5];
  v44 = v4[4];
  v45 = v13;
  v14 = v4[7];
  v46 = v4[6];
  v47 = v14;
  v15 = v4[1];
  v41[0] = *v4;
  v41[1] = v15;
  v16 = v4[3];
  v42 = v4[2];
  v43 = v16;
  v30[2] = v42;
  v30[3] = v16;
  v30[0] = v41[0];
  v30[1] = v15;
  v31[0] = v32;
  v31[1] = v33;
  v31[2] = v34;
  v31[3] = v35;
  sub_18BAD162C(v41, v26);
  if (sub_18BAD1444(v30, v31))
  {
    v29[0] = v44;
    v29[1] = v45;
    v29[2] = v46;
    v29[3] = v47;
    v26[0] = v36;
    v26[1] = v37;
    v26[2] = v38;
    v26[3] = v39;
    v17 = sub_18BAD1444(v29, v26);
    sub_18BAD1664(v41);
    if (v17)
    {
      sub_18BAD1664(&v32);
      return sub_18BAD1664(a1);
    }
  }

  else
  {
    sub_18BAD1664(v41);
  }

  v19 = v4[1];
  v28[0] = *v4;
  v28[1] = v19;
  v20 = v4[3];
  v28[2] = v4[2];
  v28[3] = v20;
  v21 = *(v2 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_leadingButton);
  sub_18BAD1694(v28, v27);
  sub_18BAD05B0(v21);
  sub_18BAD16CC(v28);
  v22 = v4[5];
  v27[0] = v4[4];
  v27[1] = v22;
  v23 = v4[7];
  v27[2] = v4[6];
  v27[3] = v23;
  v24 = *(v2 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_trailingButton);
  sub_18BAD1694(v27, &v25);
  sub_18BAD05B0(v24);
  sub_18BAD1664(&v32);
  sub_18BAD1664(a1);
  return sub_18BAD16CC(v27);
}

char *sub_18BAD0180(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_configuration];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 24) = 1;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 13) = 0;
  *(v3 + 56) = 1;
  *(v3 + 15) = 0;
  v4 = OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView;
  type metadata accessor for ScrollingCapsuleCollectionView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_leadingButton;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v6 = OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_trailingButton;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v1[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleViewIsExpanded] = 0;
  *&v1[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_delayToUnexpandAfterScrolling] = 0x3FD999999999999ALL;
  v1[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_keepsCapsuleViewExpanded] = 0;
  *&v1[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_buttonSpacing] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_minimumPeekingItemInset] = 0x402C000000000000;
  v39.receiver = v1;
  v39.super_class = type metadata accessor for ScrollingCapsuleToolbar();
  v7 = objc_msgSendSuper2(&v39, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v7 sf_applyContentSizeCategoryLimitsForToolbarButton];
  v8 = OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView;
  v9 = *&v7[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView];
  v10 = &v9[qword_1ED6515F0];
  v11 = *&v9[qword_1ED6515F0];
  v41 = v9[qword_1ED6515F0 + 16];
  v40 = v11;
  v12 = v9[qword_1ED6515F0 + 16];
  v42 = *&v9[qword_1ED6515F0];
  v43 = v12;
  *v10 = 0x101000000010100;
  *(v10 + 1) = a1;
  v10[16] = 0;
  swift_retain_n();
  v13 = v9;
  sub_18B9EAF44(&v40, v38);
  sub_18B9EAFA0(&v42);
  v14 = 256;
  if (!BYTE1(v40))
  {
    v14 = 0;
  }

  v15 = v14 | v40;
  v16 = 0x10000;
  if (!BYTE2(v40))
  {
    v16 = 0;
  }

  v17 = 0x1000000;
  if (!BYTE3(v40))
  {
    v17 = 0;
  }

  v18 = v15 | v16 | v17;
  v19 = 0x100000000;
  if (!BYTE4(v40))
  {
    v19 = 0;
  }

  v20 = 0x10000000000;
  if (!BYTE5(v40))
  {
    v20 = 0;
  }

  v21 = 0x1000000000000;
  if (!BYTE6(v40))
  {
    v21 = 0;
  }

  v22 = v19 | v20;
  v23 = 0x100000000000000;
  if (!BYTE7(v40))
  {
    v23 = 0;
  }

  sub_18BA421F0(v18 | v22 | v21 | v23, *(&v40 + 1), v41);
  sub_18B9EAFA0(&v40);

  v24 = *&v7[v8];
  v25 = [v7 effectiveUserInterfaceLayoutDirection] == 1;
  UIEdgeInsetsMakeWithEdges();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v24[qword_1ED651600];
  swift_beginAccess();
  v35 = MEMORY[0x1E69DDCE0];
  *v34 = 0x4046000000000000;
  v36 = *v35;
  *(v34 + 24) = v35[1];
  *(v34 + 8) = v36;
  *(v34 + 5) = 0x3FD999999999999ALL;
  v34[48] = v25;
  *(v34 + 7) = 0x4040000000000000;
  *(v34 + 8) = v27;
  *(v34 + 9) = v29;
  *(v34 + 10) = v31;
  *(v34 + 11) = v33;
  *(v34 + 6) = xmmword_18BC462A0;
  [v24 setNeedsLayout];
  [v24 invalidateIntrinsicContentSize];

  *(*&v7[v8] + qword_1ED651608 + 8) = &off_1EFF2A300;
  swift_unknownObjectWeakAssign();

  [v7 setInsetsLayoutMarginsFromSafeArea_];
  [v7 addSubview_];
  [v7 addSubview_];
  [v7 addSubview_];

  return v7;
}

id sub_18BAD05B0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  if (*(v1 + 8))
  {
    v7 = sub_18BC20B98();
  }

  else
  {
    v7 = 0;
  }

  [a1 setAccessibilityIdentifier_];

  if (*(v2 + 24))
  {
    v8 = sub_18BC20B98();
  }

  else
  {
    v8 = 0;
  }

  [a1 setAccessibilityLabel_];

  sub_18BAD074C();
  v9 = sub_18BC21808();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  sub_18BC21828();
  [a1 setEnabled_];
  [a1 setMenu_];
  result = [a1 removeTarget:0 action:0 forControlEvents:0x2000];
  v11 = *(v2 + 32);
  if (v11)
  {
    return [a1 addAction:v11 forControlEvents:0x2000];
  }

  return result;
}

id sub_18BAD074C()
{
  v1 = sub_18BC21628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 49))
  {
    sub_18BC216A8();
  }

  else
  {
    sub_18BC21778();
  }

  (*(v2 + 104))(v4, *MEMORY[0x1E69DC508], v1);
  sub_18BC21638();
  v5 = *(v0 + 40);
  sub_18BC21788();
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v7 = result;
    v8 = [objc_opt_self() configurationWithFont:result scale:3];

    return sub_18BC215F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_18BAD08D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_18BAD1444(v7, v8);
}

BOOL sub_18BAD091C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v15[0] = *a1;
  v15[1] = v2;
  v3 = a1[3];
  v15[2] = a1[2];
  v15[3] = v3;
  v4 = a1[5];
  v13[0] = a1[4];
  v13[1] = v4;
  v5 = a1[7];
  v13[2] = a1[6];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v16[2] = a2[2];
  v16[3] = v8;
  v16[0] = v6;
  v16[1] = v7;
  v9 = a2[5];
  v14[0] = a2[4];
  v14[1] = v9;
  v10 = a2[7];
  v14[2] = a2[6];
  v14[3] = v10;
  return sub_18BAD1444(v15, v16) && sub_18BAD1444(v13, v14);
}

uint64_t sub_18BAD09A8(uint64_t result)
{
  v2 = v1[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleViewIsExpanded];
  v1[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleViewIsExpanded] = result;
  if (v2 != (result & 1))
  {
    [v1 setNeedsLayout];
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = inited;
    v6[3] = sub_18B848FAC;
    v6[4] = v4;
    v14 = sub_18B7D80AC;
    v15 = v6;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B7B0DB0;
    v13 = &block_descriptor_38;
    v7 = _Block_copy(&v10);
    v8 = v1;
    sub_18BC1E1A8();

    v14 = CGRectMake;
    v15 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_18B8043A0;
    v13 = &block_descriptor_21_0;
    v9 = _Block_copy(&v10);

    [v5 _animateUsingSpringBehavior_tracking_animations_completion_];
    _Block_release(v9);
    _Block_release(v7);
  }

  return result;
}

uint64_t sub_18BAD0B98(uint64_t result)
{
  v2 = OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_keepsCapsuleViewExpanded;
  v3 = *(v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_keepsCapsuleViewExpanded);
  if (v3 != (result & 1))
  {
    v4 = *(v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView) + qword_1ED6515F0;
    v5 = *(v4 + 16);
    v24 = *v4;
    v25 = v5;
    v23[0] = *(v4 + 3);
    *(v23 + 6) = *(v4 + 9);
    *v26 = v24;
    v26[2] = v3 ^ 1;
    *&v26[3] = v23[0];
    *&v26[9] = *(v23 + 6);
    v6 = *v4;
    v28 = *(v4 + 16);
    v27 = v6;
    v7 = *(v4 + 16);
    v29 = *v4;
    v30 = v7;
    v8 = *v26;
    *(v4 + 16) = BYTE5(v23[1]);
    *v4 = v8;
    sub_18B9EAF44(&v24, v22);
    sub_18B9EAF44(&v27, v22);
    sub_18B9EAF44(v26, v22);
    sub_18B9EAFA0(&v29);
    v9 = 256;
    if (!BYTE1(v27))
    {
      v9 = 0;
    }

    v10 = v9 | v27;
    v11 = 0x10000;
    if (!BYTE2(v27))
    {
      v11 = 0;
    }

    v12 = 0x1000000;
    if (!BYTE3(v27))
    {
      v12 = 0;
    }

    v13 = v10 | v11 | v12;
    v14 = 0x100000000;
    if (!BYTE4(v27))
    {
      v14 = 0;
    }

    v15 = 0x10000000000;
    if (!BYTE5(v27))
    {
      v15 = 0;
    }

    v16 = 0x1000000000000;
    if (!BYTE6(v27))
    {
      v16 = 0;
    }

    v17 = v14 | v15;
    v18 = 0x100000000000000;
    if (!BYTE7(v27))
    {
      v18 = 0;
    }

    sub_18BA421F0(v13 | v17 | v16 | v18, *(&v27 + 1), v28);
    sub_18B9EAFA0(&v27);
    v19 = sub_18B9EAFA0(v26);
    if (*(v1 + v2))
    {
      v20 = 1;
    }

    else
    {
      v21 = sub_18B7C2E68(v19);
      if ([v21 isDragging])
      {
        v20 = 1;
      }

      else
      {
        v20 = [v21 isDecelerating];
      }
    }

    return sub_18BAD09A8(v20);
  }

  return result;
}

double sub_18BAD0D98(uint64_t a1)
{
  if ([v1 effectiveUserInterfaceLayoutDirection])
  {
    v3 = 2;
  }

  else
  {
    v3 = 8;
  }

  if (*(v1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleViewIsExpanded) == 1)
  {
    [v1 bounds];
    Height = CGRectGetHeight(v22);
    [v1 layoutMargins];
    v6 = v5 - Height + -8.0;
  }

  else
  {
    [v1 layoutMargins];
    if (v3 == a1)
    {
      v6 = v8;
    }

    else
    {
      v6 = v7;
    }
  }

  [v1 bounds];
  v9 = CGRectGetHeight(v23);
  [v1 layoutMargins];
  v11 = v9 - v10;
  [v1 bounds];
  v12 = CGRectGetHeight(v24);
  [v1 layoutMargins];
  v14 = v12 - v13;
  [v1 bounds];
  if (v3 == a1)
  {
    MaxX = CGRectGetMaxX(*&v15);
    v25.origin.y = 0.0;
    v25.origin.x = v6;
    v25.size.width = v11;
    v25.size.height = v14;
    v20 = MaxX - CGRectGetMaxX(v25);
    v26.origin.y = 0.0;
    v26.origin.x = v6;
    v26.size.width = v11;
    v26.size.height = v14;
    CGRectGetMinY(v26);
    v27.origin.y = 0.0;
    v27.origin.x = v6;
    v27.size.width = v11;
    v27.size.height = v14;
    CGRectGetWidth(v27);
    v28.origin.y = 0.0;
    v28.origin.x = v6;
    v28.size.width = v11;
    v28.size.height = v14;
    CGRectGetHeight(v28);
    return v20;
  }

  return v6;
}

id sub_18BAD0F40()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 layoutMargins];
  UIEdgeInsetsReplace();
  v11 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v0[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView];
  [v18 setFrame_];
  v19 = &v18[qword_1ED651600];
  swift_beginAccess();
  [v0 bounds];
  Height = CGRectGetHeight(v28);
  [v0 layoutMargins];
  v22 = Height - v21 + 8.0;
  v29.origin.x = v11;
  v29.origin.y = v13;
  v29.size.width = v15;
  v29.size.height = v17;
  *v19 = CGRectGetHeight(v29);
  UIEdgeInsetsMakeWithEdges();
  *(v19 + 1) = v23;
  *(v19 + 2) = v24;
  *(v19 + 3) = v25;
  *(v19 + 4) = v26;
  *(v19 + 13) = v22 + 14.0;
  swift_endAccess();
  [v18 setNeedsLayout];
  return [v18 invalidateIntrinsicContentSize];
}

uint64_t sub_18BAD119C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_keepsCapsuleViewExpanded))
  {
    v1 = 1;
  }

  else
  {
    v2 = sub_18B7C2E68(a1);
    if ([v2 isDragging])
    {
      v1 = 1;
    }

    else
    {
      v1 = [v2 isDecelerating];
    }
  }

  return sub_18BAD09A8(v1);
}

id sub_18BAD125C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrollingCapsuleToolbar();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_18BAD1364(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_18BAD13C0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

BOOL sub_18BAD1444(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_18BC21FD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7)
  {
    if (!v8 || (*(a1 + 16) != *(a2 + 16) || v7 != v8) && (sub_18BC21FD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    sub_18B7B0AC0(0, &qword_1EA9D52D0);
    v11 = v10;
    v12 = v9;
    v13 = sub_18BC215C8();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a1 + 40);
  v15 = *(a2 + 40);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    sub_18B7B0AC0(0, &qword_1ED6514F0);
    v16 = v15;
    v17 = v14;
    v18 = sub_18BC215C8();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((*(a1 + 48) ^ *(a2 + 48)) & 1) != 0 || ((*(a1 + 49) ^ *(a2 + 49)))
  {
    return 0;
  }

  v20 = *(a1 + 56);
  v21 = *(a2 + 56);
  if (v20)
  {
    if (v21)
    {
      sub_18B7B0AC0(0, &unk_1EA9DADD0);
      v22 = v21;
      v23 = v20;
      v24 = sub_18BC215C8();

      if (v24)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v21;
}

uint64_t sub_18BAD16FC()
{
  v0 = sub_18BC208F8();
  v25 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18BC20928();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC20948();
  v21 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  sub_18B7B0AC0(0, &unk_1EA9D3A90);
  v13 = sub_18BC21348();
  sub_18BC20938();
  sub_18BC20958();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v15 = swift_allocObject();
  v16 = v22;
  *(v15 + 16) = v22;
  aBlock[4] = sub_18BAD1BC8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_27_0;
  v17 = _Block_copy(aBlock);
  v18 = v16;

  sub_18BC20908();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_18BA007BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18BA00814();
  sub_18BC21908();
  MEMORY[0x18CFFC820](v12, v5, v2, v17);
  _Block_release(v17);

  (*(v25 + 8))(v2, v0);
  (*(v23 + 8))(v5, v24);
  return (v14)(v12, v21);
}

void sub_18BAD1A78()
{
  v1 = v0 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_configuration;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  v2 = OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView;
  type metadata accessor for ScrollingCapsuleCollectionView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_leadingButton;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v4 = OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_trailingButton;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *(v0 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleViewIsExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_delayToUnexpandAfterScrolling) = 0x3FD999999999999ALL;
  *(v0 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_keepsCapsuleViewExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_buttonSpacing) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_minimumPeekingItemInset) = 0x402C000000000000;
  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18BAD1BD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_18BAD1C2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_18BAD1D18(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18BC21958();
    type metadata accessor for SFFluidCollectionReusableView();
    sub_18BAD4628();
    sub_18BC210A8();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);
    sub_18BC1E3F8();
    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_18BC219D8())
        {
          type metadata accessor for SFFluidCollectionReusableView();
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_18B7D2E34();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_18BAD2074@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a2;
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = _s7ContentV8IteratorVMa(0);
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7DF5D0(v3, v15, _s7ContentVMa);
  *&v15[v13[7]] = 0;
  *&v15[v13[8]] = 0;
  *&v15[v13[9]] = 0;
  sub_18BB16160(v11);
  v22 = v6;
  v16 = *(v6 + 48);
  v26 = v5;
  if (v16(v11, 1, v5) == 1)
  {
LABEL_5:
    sub_18B7CC96C(v15, _s7ContentV8IteratorVMa);
    v18 = 1;
    v19 = v23;
  }

  else
  {
    while (1)
    {
      sub_18B7CF39C(v11, v8, &qword_1EA9D53C8);
      v17 = v24(v8);
      if (v4)
      {
        sub_18B988BAC(v8, &qword_1EA9D53C8);
        return sub_18B7CC96C(v15, _s7ContentV8IteratorVMa);
      }

      if (v17)
      {
        break;
      }

      sub_18B988BAC(v8, &qword_1EA9D53C8);
      sub_18BB16160(v11);
      if (v16(v11, 1, v26) == 1)
      {
        goto LABEL_5;
      }
    }

    sub_18B7CC96C(v15, _s7ContentV8IteratorVMa);
    v21 = v23;
    sub_18B7CF39C(v8, v23, &qword_1EA9D53C8);
    v19 = v21;
    v18 = 0;
  }

  return (*(v22 + 56))(v19, v18, 1, v26);
}

uint64_t sub_18BAD238C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TabIconPool.Request(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_18B988BAC(a1, &qword_1EA9D7170);
    sub_18BB59C5C(a2, v7);
    v12 = sub_18BC1EC08();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_18B988BAC(v7, &qword_1EA9D7170);
  }

  else
  {
    sub_18B82FDBC(a1, v10, type metadata accessor for TabIconPool.Request);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_18BAA7004(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_18BC1EC08();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_18BAD25AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_18BAA731C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = sub_18BC1EC08();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_18B857EE4(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_18BB29670();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = sub_18BC1EC08();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_18BB5AA94(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = sub_18BC1EC08();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

uint64_t sub_18BAD27B8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_18BB8B494(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_18BB2A5A4();
        v10 = v16;
      }

      v11 = *(v10 + 48);
      v12 = _s4ItemVMa_2();
      sub_18B7CC96C(v11 + *(*(v12 - 8) + 72) * v8, _s4ItemVMa_2);
      sub_18BB5BA30(v8, v10);
      result = sub_18B7CC96C(a3, _s4ItemVMa_2);
      *v4 = v10;
    }

    else
    {
      return sub_18B7CC96C(a3, _s4ItemVMa_2);
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_18BAA7998(a1, a3, v15);
    result = sub_18B7CC96C(a3, _s4ItemVMa_2);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_18BAD28FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_18BAA7B0C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_18B7CC96C(a3, _s4ItemVMa_4);
    *v3 = v17;
  }

  else
  {
    v10 = sub_18BB8B258(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v18 = *v4;
      if (!v13)
      {
        sub_18BB2A828();
        v14 = v18;
      }

      v15 = *(v14 + 48);
      v16 = _s4ItemVMa_4();
      sub_18B7CC96C(v15 + *(*(v16 - 8) + 72) * v12, _s4ItemVMa_4);

      sub_18BB5BD54(v12, v14);
      result = sub_18B7CC96C(a3, _s4ItemVMa_4);
      *v4 = v14;
    }

    else
    {
      return sub_18B7CC96C(a3, _s4ItemVMa_4);
    }
  }

  return result;
}

uint64_t sub_18BAD2A58(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_18BB8B258(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v16 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_18BB2A864();
        v10 = v16;
      }

      v11 = *(v10 + 48);
      v12 = _s4ItemVMa_4();
      sub_18B7CC96C(v11 + *(*(v12 - 8) + 72) * v8, _s4ItemVMa_4);
      sub_18BB5C04C(v8, v10);
      result = sub_18B7CC96C(a3, _s4ItemVMa_4);
      *v4 = v10;
    }

    else
    {
      return sub_18B7CC96C(a3, _s4ItemVMa_4);
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_18BAA7CBC(a1, a3, v15);
    result = sub_18B7CC96C(a3, _s4ItemVMa_4);
    *v3 = v17;
  }

  return result;
}

uint64_t sub_18BAD2B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_18BAA7E30(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_18B7CC96C(a3, _s4ItemVMa_1);
    *v3 = v17;
  }

  else
  {
    v10 = sub_18BB8B5B0(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v18 = *v4;
      if (!v13)
      {
        sub_18BB2AAEC();
        v14 = v18;
      }

      v15 = *(v14 + 48);
      v16 = _s4ItemVMa_1();
      sub_18B7CC96C(v15 + *(*(v16 - 8) + 72) * v12, _s4ItemVMa_1);

      sub_18BB5C4F8(v12, v14);
      result = sub_18B7CC96C(a3, _s4ItemVMa_1);
      *v4 = v14;
    }

    else
    {
      return sub_18B7CC96C(a3, _s4ItemVMa_1);
    }
  }

  return result;
}

uint64_t sub_18BAD2CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_18B80C598(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_18B7CC96C(a3, _s4ItemVMa_0);
    *v3 = v17;
  }

  else
  {
    v10 = sub_18B80CA2C(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v18 = *v4;
      if (!v13)
      {
        sub_18BB2C098();
        v14 = v18;
      }

      v15 = *(v14 + 48);
      v16 = _s4ItemVMa_0();
      sub_18B7CC96C(v15 + *(*(v16 - 8) + 72) * v12, _s4ItemVMa_0);

      sub_18BB5D058(v12, v14);
      result = sub_18B7CC96C(a3, _s4ItemVMa_0);
      *v4 = v14;
    }

    else
    {
      return sub_18B7CC96C(a3, _s4ItemVMa_0);
    }
  }

  return result;
}

uint64_t sub_18BAD2E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_18B865A74(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_18B7CC96C(a3, _s4PageVMa_0);
    *v3 = v17;
  }

  else
  {
    v10 = sub_18B8629FC(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v18 = *v4;
      if (!v13)
      {
        sub_18BB2C110();
        v14 = v18;
      }

      v15 = *(v14 + 48);
      v16 = _s4PageVMa_0();
      sub_18B7CC96C(v15 + *(*(v16 - 8) + 72) * v12, _s4PageVMa_0);

      sub_18BB5D7A0(v12, v14);
      result = sub_18B7CC96C(a3, _s4PageVMa_0);
      *v4 = v14;
    }

    else
    {
      return sub_18B7CC96C(a3, _s4PageVMa_0);
    }
  }

  return result;
}

uint64_t sub_18BAD3030(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_18B7CC96C(a2, _s4ItemVMa);
    *v5 = v21;
  }

  else
  {
    v14 = sub_18BB8B29C(a2);
    if (v15)
    {
      v16 = v14;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v6;
      if (!v17)
      {
        a5();
        v18 = v22;
      }

      v19 = *(v18 + 48);
      v20 = _s4ItemVMa();
      sub_18B7CC96C(v19 + *(*(v20 - 8) + 72) * v16, _s4ItemVMa);

      a4(v16, v18);
      result = sub_18B7CC96C(a2, _s4ItemVMa);
      *v6 = v18;
    }

    else
    {
      return sub_18B7CC96C(a2, _s4ItemVMa);
    }
  }

  return result;
}

uint64_t sub_18BAD31D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(unint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v11 = sub_18BC1EC08();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v5 = v26;
  }

  else
  {
    v15 = sub_18B857EE4(a2);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        a5();
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = sub_18BC1EC08();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      a4(v17, v19);
      result = (v23)(a2, v21);
      *v6 = v19;
    }

    else
    {
      v24 = sub_18BC1EC08();
      v25 = *(*(v24 - 8) + 8);

      return v25(a2, v24);
    }
  }

  return result;
}

id sub_18BAD33BC(unsigned __int8 a1)
{
  v1 = 0;
  if (a1 > 7u)
  {
    if (a1 > 0xCu)
    {
      if (a1 == 13 || a1 == 14)
      {
        goto LABEL_11;
      }
    }

    else if (a1 == 8 || a1 == 10)
    {
      [objc_opt_self() isSolariumEnabled];
LABEL_11:
      v2 = sub_18BC20B98();

      v1 = [objc_opt_self() systemImageNamed_];
    }
  }

  else if (a1 - 4 < 2 || a1 <= 1u)
  {
    goto LABEL_11;
  }

  return v1;
}

uint64_t sub_18BAD3534(unsigned __int8 a1)
{
  v2 = sub_18BC1EE48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = a1;
  if (a1 == 9)
  {
    sub_18BC1EE38();
    v10 = sub_18BC1EE28();
    (*(v3 + 8))(v8, v2);
  }

  else if (a1 == 4 || (v10 = 0, v9 == 2))
  {
    sub_18BC1EE38();
    sub_18BC1EE38();
    v10 = sub_18BC1EE18();
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v8, v2);
  }

  return v10;
}

id sub_18BAD3764()
{
  v2.receiver = v0;
  v2.super_class = _s10BarManagerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_18BAD3804()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = v0;
    sub_18B7B0AC0(0, &unk_1EA9D35C0);
    v4 = sub_18BC213E8();
    v5 = *(v0 + 64);
    *(v3 + 64) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_18BAD3880()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = v0;
    sub_18B7B0AC0(0, &unk_1EA9D35C0);
    v4 = sub_18BC213E8();
    v5 = *(v0 + 72);
    *(v3 + 72) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id *sub_18BAD38FC()
{

  swift_unknownObjectUnownedDestroy();

  return v0;
}

uint64_t sub_18BAD395C()
{
  sub_18BAD38FC();

  return swift_deallocClassInstance();
}

void *sub_18BAD398C(unsigned __int8 a1)
{
  if (a1 - 4 >= 2)
  {
    if (a1)
    {
      return 0;
    }

    v2 = &OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_leadingButton;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_trailingButton;
  }

  v3 = *(*(v1 + 16) + *v2);
  v4 = v3;
  return v3;
}

void sub_18BAD39EC(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v28 = sub_18B7D4940(a1);
  v6 = v5;
  v7 = sub_18BAD3534(a1);
  v9 = v8;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
  swift_beginAccess();
  v12 = *&Strong[v11];
  if (*(v12 + 16) && (v13 = sub_18B7C9044(a1), (v14 & 1) != 0) && (v15 = *(v12 + 56) + 24 * v13, (*(v15 + 16) & 1) == 0))
  {
    v16 = *v15;
    v27 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_18BAD33BC(a1);
  v18 = swift_unknownObjectUnownedLoadStrong();
  v19 = sub_18B7D5B34(a1);

  v20 = swift_unknownObjectUnownedLoadStrong();
  v21 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemLongPressMenus;
  swift_beginAccess();
  v22 = *&v20[v21];
  if (*(v22 + 16) && (v23 = sub_18B7C9044(a1), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);
    sub_18BC1E3F8();
    v26 = v25;
  }

  else
  {

    v26 = 0;
  }

  *a3 = v28;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
  *(a3 + 32) = v16;
  *(a3 + 40) = v17;
  *(a3 + 48) = v19 & 1;
  *(a3 + 49) = a2 & 1;
  *(a3 + 56) = v26;
}

uint64_t sub_18BAD3BAC()
{
  sub_18BAD39EC(0, 0, v1);
  sub_18BAD39EC(4u, 1, &v2);
  return sub_18BACFF94(v1);
}

uint64_t sub_18BAD3C0C(unsigned __int8 a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v4 + 16) && (v5 = sub_18B7C9044(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = *(v2 + 16);
    v9 = v7;
    v10 = [v8 items];
    if (v10)
    {
      sub_18B7B0AC0(0, &unk_1EA9D35A0);
      v11 = sub_18BC20D98();

      v15 = v9;
      MEMORY[0x1EEE9AC00](v12);
      v14[2] = &v15;
      LOBYTE(v10) = sub_18B9B8B10(sub_18BAD45C0, v14, v11);
    }

    else
    {
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

void sub_18BAD3D4C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = swift_unknownObjectUnownedLoadStrong();

  v9 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v14);

  if (v15)
  {
    sub_18B7DFD58(v14);
    sub_18BAD405C(a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_18BC48920;
    *(v10 + 32) = sub_18BAD3F58(2);
    v11 = objc_opt_self();
    *(v10 + 40) = [v11 flexibleSpaceItem];
    *(v10 + 48) = sub_18BAD3F58(11);
    *(v10 + 56) = [v11 flexibleSpaceItem];
    *(v10 + 64) = sub_18BAD3F58(9);
    *(v10 + 72) = sub_18BAD3F58(8);
  }

  else if (*(a2 + 2))
  {
    sub_18B7DFD58(v14);
    sub_18B7E4A88(&unk_1EFF1A3E8, 1, sub_18B9EB544);
  }

  else
  {
    sub_18B7E4A88(v14[1], 1, sub_18B9EB544);
    sub_18B7DFD58(v14);
  }

  v12 = *(v4 + 16);
  sub_18B7B0AC0(0, &unk_1EA9D35A0);
  v13 = sub_18BC20D88();

  [v12 setItems:v13 animated:a3 & 1];
}

id sub_18BAD3F58(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v4 + 16) && (v5 = sub_18B7C9044(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);

    return v7;
  }

  else
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v10 = sub_18B7D4530(a1);

    swift_beginAccess();
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_18B7D4320(v11, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v13;
    swift_endAccess();
    return v11;
  }
}

void sub_18BAD405C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1EE48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28[-v9];
  swift_beginAccess();
  if (!*(*(v1 + 24) + 16) || (sub_18B7C9044(0xBu), (v11 & 1) == 0))
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v12 setAdjustsFontForContentSizeCategory_];
    v13 = [objc_opt_self() safari:*MEMORY[0x1E69DDD40] monospacedDigitFontForTextStyle:?];
    [v12 setFont_];

    [v12 setTextAlignment_];
    v14 = v12;
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    v15 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

    swift_beginAccess();
    sub_18B7E49B4(v15, 11);
    swift_endAccess();
  }

  v16 = *(v2 + 24);
  if (*(v16 + 16))
  {
    v17 = sub_18B7C9044(0xBu);
    if (v18)
    {
      v19 = [*(*(v16 + 56) + 8 * v17) customView];
      if (v19)
      {
        v20 = v19;
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          v22 = v21;
          v23 = *(*(a1 + 48) + 16);
          if (v23)
          {
            sub_18BAAEA74(v23);
            v24 = sub_18BC20B98();

            [v22 setText_];

            v25 = v20;
            v26 = sub_18BC20B98();
            [v22 setAccessibilityIdentifier_];
          }

          else
          {
            sub_18BC1EE38();
            sub_18BC1EE38();
            sub_18BC1EE18();
            v27 = *(v5 + 8);
            v27(v7, v4);
            v27(v10, v4);
            v25 = sub_18BC20B98();

            [v22 setText_];
          }
        }
      }
    }
  }
}

uint64_t sub_18BAD4400()
{

  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

uint64_t _s17BarItemIdentifierOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17BarItemIdentifierOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18BAD4628()
{
  result = qword_1EA9D8BC0;
  if (!qword_1EA9D8BC0)
  {
    type metadata accessor for SFFluidCollectionReusableView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8BC0);
  }

  return result;
}

uint64_t sub_18BAD4684(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  (*(v4 + 16))(&v24 - v16, a1, v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v18 = *(_s7ContentVMa_1() + 20);
  v19 = *(v8 + 56);
  sub_18BAC27CC(v17, v10);
  sub_18BAC27CC(v25 + v18, &v10[v19]);
  v20 = *(v4 + 48);
  if (v20(v10, 1, v3) != 1)
  {
    sub_18BAC27CC(v10, v13);
    if (v20(&v10[v19], 1, v3) != 1)
    {
      (*(v4 + 32))(v6, &v10[v19], v3);
      sub_18BAD61CC(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
      v21 = sub_18BC20AE8();
      v22 = *(v4 + 8);
      v22(v6, v3);
      sub_18B988BAC(v17, &unk_1EA9D3AE0);
      v22(v13, v3);
      sub_18B988BAC(v10, &unk_1EA9D3AE0);
      return v21 & 1;
    }

    sub_18B988BAC(v17, &unk_1EA9D3AE0);
    (*(v4 + 8))(v13, v3);
    goto LABEL_6;
  }

  sub_18B988BAC(v17, &unk_1EA9D3AE0);
  if (v20(&v10[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_18B988BAC(v10, &unk_1EA9D92B0);
    v21 = 0;
    return v21 & 1;
  }

  sub_18B988BAC(v10, &unk_1EA9D3AE0);
  v21 = 1;
  return v21 & 1;
}

void sub_18BAD4A48()
{
  sub_18BAD4E70(*(*(v0 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content) + 16));
  v1 = v0 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics;
  v3 = v2 + *(v0 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 48);
  v4 = v0 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_contentSize;
  *v4 = v3;
  *(v4 + 8) = 0;
  Width = CGRectGetWidth(*(v0 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 112));
  v6 = *(v1 + 8);
  v7 = *(v1 + 24);
  if (Width - (v6 + v7) >= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = Width - (v6 + v7);
  }

  v9 = *(v1 + 40);
  v10 = v0 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_backgroundViewSize;
  *v10 = v8;
  *(v10 + 8) = v9;
  v11 = _SFFloorFloatToPixels(v6);
  v12 = _SFCeilingFloatToPixels(Width - v7 - v8);
  v13 = _SFRoundFloatToPixels((Width - v8) * 0.5);
  if (v11 > v12)
  {
    __break(1u);
  }

  else
  {
    if (v13 <= v11)
    {
      v13 = v11;
    }

    if (v12 < v13)
    {
      v13 = v12;
    }

    v14 = v0 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewContentInsets;
    *v14 = 0;
    *(v14 + 8) = v13;
    *(v14 + 16) = 0;
    *(v14 + 24) = Width - v13 - v8;
  }
}

__n128 sub_18BAD4B60@<Q0>(uint64_t a1@<X8>)
{
  v3 = UIEdgeInsetsInsetRect(*(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 32), *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 40), *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 48), *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 56), *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState), *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 8));
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_backgroundViewSize);
  v7 = *(v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_backgroundViewSize + 8);
  *&v8 = COERCE_DOUBLE(sub_18B7F3A2C(MEMORY[0x1E69E7CC0]));
  v22 = v5;
  sub_18B7F4038();
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *&v8;
  sub_18B7F3BB8(v20, 0x4F746E65746E6F63, 0xED00007465736666, isUniquelyReferenced_nonNull_native);
  v10 = v21;
  v23.origin.x = v3;
  v23.origin.y = v5;
  v23.size.width = v6;
  v23.size.height = v7;
  Width = CGRectGetWidth(v23);
  v24.origin.x = v3;
  v24.origin.y = v5;
  v24.size.width = v6;
  v24.size.height = v7;
  Height = CGRectGetHeight(v24);
  if (Height >= Width)
  {
    Height = Width;
  }

  v21 = Height * 0.5;
  sub_18B7F3B64();
  sub_18BC21A68();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v21 = v10;
  sub_18B7F3BB8(v20, 0x615272656E726F63, 0xEC00000073756964, v13);
  v14 = v21;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 40) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v14;
  return result;
}

CGAffineTransform *sub_18BAD4D08@<X0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  sub_18BAD4E70(a1);
  v8 = v7;
  sub_18BAD554C(a1);
  v10 = v9;
  v11 = *(v3 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 40);
  UIEdgeInsetsMakeWithEdges();
  v12 = 0.0;
  v15 = UIEdgeInsetsInsetRect(v8, 0.0, v10, v11, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_18B7F3A2C(MEMORY[0x1E69E7CC0]);
  v33.origin.x = UIEdgeInsetsInsetRect(*(v3 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 32), *(v3 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 40), *(v3 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 48), *(v3 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 56), *(v3 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState), *(v3 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState + 8));
  v33.origin.y = v23;
  v33.size.width = v24;
  v33.size.height = v25;
  v32.origin.x = v15;
  v32.origin.y = v17;
  v32.size.width = v19;
  v32.size.height = v21;
  result = CGRectIntersectsRect(v32, v33);
  v27 = result;
  if (v6)
  {
    result = CGAffineTransformMakeScale(&v31, 0.9, 0.9);
    v29 = *&v31.a;
    v28 = *&v31.c;
    v30 = *&v31.tx;
  }

  else
  {
    v28 = xmmword_18BC3DD80;
    v29 = xmmword_18BC42C40;
    v30 = 0uLL;
    v12 = 1.0;
  }

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19;
  *(a3 + 24) = v21;
  *(a3 + 32) = 0;
  *(a3 + 33) = v27;
  *(a3 + 40) = v12;
  *(a3 + 48) = v29;
  *(a3 + 64) = v28;
  *(a3 + 80) = v30;
  *(a3 + 96) = 0;
  *(a3 + 104) = v22;
  return result;
}

void sub_18BAD4E70(uint64_t a1)
{
  v2 = v1;
  v67 = sub_18BC1E668();
  v4 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4ItemVMa_1();
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
    goto LABEL_30;
  }

  v64 = v2 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics;
  v9 = *(v2 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics + 48);
  if (a1)
  {
    v10 = 0;
    v62 = (v2 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_titleProvider);
    v63 = OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content;
    v61 = (v4 + 8);
    v60 = OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_titleWidthCache;
    v58 = *MEMORY[0x1E69DB648];
    v57 = xmmword_18BC3E410;
    v55 = v2;
    v56 = a1;
    v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v12 = *(v2 + v63);
      if (v10 >= *(v12 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        sub_18BC21CF8();
        __break(1u);
LABEL_32:
        sub_18BC22078();
        __break(1u);
        return;
      }

      sub_18B80EB70(v12 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v10, v8, _s4ItemVMa_1);
      v13 = *v62;
      sub_18BC1E1A8();
      v14 = v13(v8);
      v16 = v15;

      v69 = v14;
      v70 = v16;
      v17 = v66;
      sub_18BC1E648();
      sub_18B7B0B50();
      v18 = sub_18BC21888();
      v20 = v19;
      (*v61)(v17, v67);

      v21 = *(v2 + v60);
      v22 = v21[3];
      if (!v22)
      {
        goto LABEL_31;
      }

      swift_beginAccess();
      v23 = v21[2];
      v24 = *(v23 + 16);
      v25 = v22;
      sub_18BC1E3F8();
      if (v24)
      {
        sub_18BC1E3F8();
        v26 = sub_18BB8B1C4(v25, v18, v20);
        if (v27)
        {
          v28 = v26;

          v29 = *(*(v23 + 56) + 8 * v28);

          v8 = v59;
          sub_18B812E7C(v59, _s4ItemVMa_1);

          goto LABEL_6;
        }
      }

      v30 = [v25 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6100);
      inited = swift_initStackObject();
      *(inited + 16) = v57;
      v32 = v58;
      *(inited + 32) = v58;
      *(inited + 40) = v30;
      v33 = v32;
      v34 = v30;
      sub_18BA64BEC(inited);
      swift_setDeallocating();
      sub_18B988BAC(inited + 32, &qword_1EA9D6108);
      v35 = sub_18BC20B98();

      type metadata accessor for Key(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6110);
      sub_18BAD61CC(&qword_1EA9D3C40, type metadata accessor for Key);
      v36 = sub_18BC20998();

      v37 = CTLineCreateWithString();

      BoundsWithOptions = CTLineGetBoundsWithOptions(v37, 0);
      Width = CGRectGetWidth(BoundsWithOptions);
      v29 = _SFCeilingFloatToPixels(Width);

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v21[2];
      v40 = v68;
      v21[2] = 0x8000000000000000;
      v42 = sub_18BB8B1C4(v25, v18, v20);
      v43 = v40[2];
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_28;
      }

      v46 = v41;
      if (v40[3] >= v45)
      {
        a1 = v56;
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v68;
          if ((v41 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_18BB294F4();
          v49 = v68;
          if ((v46 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_18BB2D5C8(v45, isUniquelyReferenced_nonNull_native);
        v47 = sub_18BB8B1C4(v25, v18, v20);
        a1 = v56;
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_32;
        }

        v42 = v47;
        v49 = v68;
        if ((v46 & 1) == 0)
        {
LABEL_22:
          v49[(v42 >> 6) + 8] |= 1 << v42;
          v50 = (v49[6] + 24 * v42);
          *v50 = v25;
          v50[1] = v18;
          v50[2] = v20;
          *(v49[7] + 8 * v42) = v29;
          v51 = v49[2];
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            goto LABEL_29;
          }

          v49[2] = v53;
          v54 = v25;
          sub_18BC1E3F8();
          goto LABEL_5;
        }
      }

      *(v49[7] + 8 * v42) = v29;
LABEL_5:
      v21[2] = v49;
      swift_endAccess();

      v8 = v59;
      sub_18B812E7C(v59, _s4ItemVMa_1);
      v2 = v55;
LABEL_6:
      ++v10;
      v11 = v29 + *(v64 + 64) + *(v64 + 64);
      if (*(v64 + 56) < v11)
      {
        v11 = *(v64 + 56);
      }

      v9 = v9 + v11;
    }

    while (a1 != v10);
  }
}

uint64_t sub_18BAD554C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1E668();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s4ItemVMa_1() - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = *(v2 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
  if (*(v12 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_18B80EB70(v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1, v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), _s4ItemVMa_1);
  v13 = *(v2 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_titleProvider);
  sub_18BC1E1A8();
  v14 = v13(v11);
  v16 = v15;

  v23[0] = v14;
  v23[1] = v16;
  sub_18BC1E648();
  sub_18B7B0B50();
  v17 = sub_18BC21888();
  v19 = v18;
  (*(v5 + 8))(v7, v4);

  v20 = *(*(v2 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_titleWidthCache) + 24);
  if (v20)
  {
    v21 = v20;
    sub_18BA1E86C(v21, v17, v19);

    return sub_18B812E7C(v11, _s4ItemVMa_1);
  }

LABEL_7:
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18BAD582C()
{
  sub_18B812E7C(v0 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content, _s7ContentVMa_1);

  return swift_deallocClassInstance();
}

uint64_t _s6LayoutCMa_1()
{
  result = qword_1EA9D8BE8;
  if (!qword_1EA9D8BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18BAD5940()
{
  result = _s7ContentVMa_1();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_18BAD5A7C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState;
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

void sub_18BAD5AC0(uint64_t a1)
{
  v2 = *v1 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState;
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  v12 = *(a1 + 32);
  v7 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v7;
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = *(a1 + 144);
  v8 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v8;
  v9 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v9;
  v10 = *(a1 + 48);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 48) = v10;
  Width = CGRectGetWidth(v12);
  v13.origin.x = v3;
  v13.origin.y = v4;
  v13.size.width = v5;
  v13.size.height = v6;
  if (Width != CGRectGetWidth(v13))
  {
    sub_18BAD4A48();
  }
}

__n128 sub_18BAD5BBC@<Q0>(unsigned __int8 a1@<W3>, uint64_t a2@<X8>)
{
  v4 = sub_18BC1EDE8();
  sub_18BAD4D08(v4, a1, v8);
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

void sub_18BAD5C84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB6B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v46 - v2;
  v57 = _s4ItemVMa_1();
  v4 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v46 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8C00);
  MEMORY[0x1EEE9AC00](v55);
  v9 = (&v46 - v8);
  v10 = *(v0 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_content);
  v54 = *(v10 + 16);
  if (v54)
  {
    v11 = 0;
    v12 = (v0 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_scrollViewState);
    v51 = v0 + OBJC_IVAR____TtCC12MobileSafari14FloatingTabBar6Layout_metrics;
    v50 = (v4 + 56);
    v13 = MEMORY[0x1E69E7CC0];
    v49 = (v4 + 48);
    __asm { FMOV            V0.2D, #1.0 }

    v48 = _Q0;
    v53 = v4;
    v52 = v10;
    while (v11 < *(v10 + 16))
    {
      v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v20 = *(v4 + 72);
      v21 = *(v55 + 48);
      *v9 = v11;
      sub_18B80EB70(v10 + v19 + v20 * v11, v9 + v21, _s4ItemVMa_1);
      sub_18BAD4E70(v11);
      v23 = v22;
      sub_18BAD554C(v11);
      v25 = v24;
      v26 = *(v51 + 40);
      UIEdgeInsetsMakeWithEdges();
      v29 = UIEdgeInsetsInsetRect(v23, 0.0, v25, v26, v27, v28);
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = sub_18B7F3A2C(MEMORY[0x1E69E7CC0]);
      v70.origin.x = UIEdgeInsetsInsetRect(v12[4], v12[5], v12[6], v12[7], *v12, v12[1]);
      v70.origin.y = v37;
      v70.size.width = v38;
      v70.size.height = v39;
      v69.origin.x = v29;
      v69.origin.y = v31;
      v69.size.width = v33;
      v69.size.height = v35;
      v40 = CGRectIntersectsRect(v69, v70);
      *v58 = v29;
      *&v58[1] = v31;
      *&v58[2] = v33;
      *&v58[3] = v35;
      v59 = 0;
      v60 = v40;
      v61 = v48;
      v62 = 0;
      v63 = 0;
      v66 = 0;
      v67 = 0;
      v65 = 0;
      v64 = 0x3FF0000000000000;
      v68 = v36;
      sub_18B7F4620(v58);
      if (v60)
      {
        sub_18B80EB70(v9 + v21, v3, _s4ItemVMa_1);
        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      v42 = v57;
      (*v50)(v3, v41, 1, v57);
      sub_18B988BAC(v9, &qword_1EA9D8C00);
      if ((*v49)(v3, 1, v42) == 1)
      {
        sub_18B988BAC(v3, &qword_1EA9DB6B0);
      }

      else
      {
        v43 = v47;
        sub_18BAD6168(v3, v47);
        sub_18BAD6168(v43, v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_18B9B5888(0, v13[2] + 1, 1, v13);
        }

        v45 = v13[2];
        v44 = v13[3];
        if (v45 >= v44 >> 1)
        {
          v13 = sub_18B9B5888(v44 > 1, v45 + 1, 1, v13);
        }

        v13[2] = v45 + 1;
        sub_18BAD6168(v56, v13 + v19 + v45 * v20);
      }

      ++v11;
      v4 = v53;
      v10 = v52;
      if (v54 == v11)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_18BBA3118(v13);
  }
}

uint64_t sub_18BAD6168(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_1();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BAD61CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18BAD6310()
{
  v0 = sub_18BC1EA98();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  v7 = _SFSafariContainerURL();
  sub_18BC1EA38();

  sub_18BC1E9F8();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v9 = objc_allocWithZone(SFEditableEffectStore);
  v10 = sub_18BC1E9E8();
  v11 = [v9 initWithDirectoryURL_];

  result = (v8)(v6, v0);
  qword_1EA9D8C08 = v11;
  return result;
}

id sub_18BAD64DC(uint64_t a1)
{
  v23 = a1;
  v25[1] = *MEMORY[0x1E69E9840];
  v21 = sub_18BC21338();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18BC21318();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_18BC20928();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v20 = OBJC_IVAR___SFEditableEffectStore_fileQueue;
  v19 = sub_18B7B0AC0(0, &unk_1EA9D3A90);
  sub_18BC20918();
  v25[0] = MEMORY[0x1E69E7CC0];
  sub_18B7B2D10(&qword_1EA9D8C30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB1F0);
  sub_18BAD86E0(&qword_1EA9D8C38, &qword_1EA9DB1F0);
  sub_18BC21908();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v21);
  v7 = v22;
  v6 = v23;
  *&v7[v20] = sub_18BC21368();
  v8 = &v7[OBJC_IVAR___SFEditableEffectStore__directoryURL];
  v9 = sub_18BC1EA98();
  v8[3] = v9;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v8);
  v11 = *(v9 - 8);
  (*(v11 + 16))(boxed_opaque_existential_0Tm, v6, v9);
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_18BC1E9E8();
  v25[0] = 0;
  LODWORD(v1) = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v25];

  if (v1)
  {
    v14 = v25[0];
  }

  else
  {
    v15 = v25[0];
    v16 = sub_18BC1E898();

    swift_willThrow();
  }

  v24.receiver = v7;
  v24.super_class = SFEditableEffectStore;
  v17 = objc_msgSendSuper2(&v24, sel_init);
  (*(v11 + 8))(v6, v9);
  return v17;
}

uint64_t sub_18BAD6AEC(uint64_t a1, uint64_t a2)
{
  v5 = sub_18BC208F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18BC20928();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR___SFEditableEffectStore_fileQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_18BAD86D4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_26_0;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  sub_18BC1E3F8();
  sub_18BC20908();
  v18 = MEMORY[0x1E69E7CC0];
  sub_18B7B2D10(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18BAD86E0(&qword_1EA9D6D30, &unk_1EA9D3AA0);
  sub_18BC21908();
  MEMORY[0x18CFFC850](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_18BAD6DBC(void *a1, void *a2, void *a3)
{
  v29 = a3;
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = sub_18BC1E998();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1EA98();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v28 - v18;
  v20 = [a1 directoryURL];
  sub_18BC1EA38();

  v30[0] = a2;
  v30[1] = v29;
  (*(v6 + 104))(v8, *MEMORY[0x1E6968F68], v5);
  sub_18B7B0B50();
  sub_18BC1EA88();
  (*(v6 + 8))(v8, v5);
  v21 = *(v10 + 8);
  v21(v12, v9);
  sub_18BC1EA08();
  v21(v15, v9);
  v22 = [objc_opt_self() defaultManager];
  v23 = sub_18BC1E9E8();
  v30[0] = 0;
  LODWORD(v8) = [v22 removeItemAtURL:v23 error:v30];

  if (v8)
  {
    v24 = v30[0];
  }

  else
  {
    v25 = v30[0];
    v26 = sub_18BC1E898();

    swift_willThrow();
  }

  return (v21)(v19, v9);
}

uint64_t sub_18BAD714C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a3;
  v7 = sub_18BC208F8();
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC20928();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8C28);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v24 - v16;
  v24[1] = *&a2[OBJC_IVAR___SFEditableEffectStore_fileQueue];
  (*(v14 + 16))(v24 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v24[0];
  *(v19 + 2) = a2;
  *(v19 + 3) = v20;
  *(v19 + 4) = a4;
  (*(v14 + 32))(&v19[v18], v17, v13);
  aBlock[4] = sub_18BAD8660;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_20_0;
  v21 = _Block_copy(aBlock);
  v22 = a2;
  sub_18BC1E3F8();
  sub_18BC20908();
  v28 = MEMORY[0x1E69E7CC0];
  sub_18B7B2D10(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18BAD86E0(&qword_1EA9D6D30, &unk_1EA9D3AA0);
  sub_18BC21908();
  MEMORY[0x18CFFC850](0, v12, v9, v21);
  _Block_release(v21);
  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_18BAD74F8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v6 = sub_18BC1E998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1EA98();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v29 - v19;
  v21 = [a1 directoryURL];
  sub_18BC1EA38();

  v32 = a2;
  v33 = v30;
  (*(v7 + 104))(v9, *MEMORY[0x1E6968F68], v6);
  sub_18B7B0B50();
  sub_18BC1EA88();
  (*(v7 + 8))(v9, v6);
  v22 = v10;
  v23 = *(v11 + 8);
  v23(v13, v10);
  sub_18BC1EA08();
  v23(v16, v10);
  v24 = sub_18BC1EAA8();
  v26 = v25;
  sub_18BC1E608();
  swift_allocObject();
  sub_18BC1E5F8();
  type metadata accessor for SFEditableEffect(0);
  sub_18B7B2D10(&qword_1EA9D3A00, type metadata accessor for SFEditableEffect);
  sub_18BC1E5E8();
  v28 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8C28);
  sub_18BC20EF8();

  sub_18B9880FC(v24, v26);

  return (v23)(v20, v22);
}

uint64_t sub_18BAD7A24(int a1, void *aBlock, void *a3)
{
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v3[5] = sub_18BC20BD8();
  v3[6] = v5;
  v6 = a3;

  return MEMORY[0x1EEE6DFA0](sub_18BAD7AB0, 0, 0);
}

uint64_t sub_18BAD7AB0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D39B8);
  *v5 = v0;
  v5[1] = sub_18BAD7BC8;

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD000000000000012, 0x800000018BC6C380, sub_18BAD8654, v4, v6);
}

uint64_t sub_18BAD7BC8()
{

  return MEMORY[0x1EEE6DFA0](sub_18BAD7CFC, 0, 0);
}

uint64_t sub_18BAD7CFC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = *(v0 + 32);
    v3[2](v3, *(v0 + 16));

    _Block_release(v3);
  }

  else
  {
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_18BAD7D90(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_18BC208F8();
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC20928();
  v20 = *(v10 - 8);
  v21 = v10;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 copyWithZone_];
  sub_18BC218B8();
  swift_unknownObjectRelease();
  type metadata accessor for SFEditableEffect(0);
  swift_dynamicCast();
  v14 = v24;
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = v14;
  aBlock[4] = sub_18BAD8594;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_39;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_18BC1E3F8();
  v18 = v14;
  sub_18BC20908();
  v24 = MEMORY[0x1E69E7CC0];
  sub_18B7B2D10(&qword_1EA9D6D20, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
  sub_18BAD86E0(&qword_1EA9D6D30, &unk_1EA9D3AA0);
  sub_18BC21908();
  MEMORY[0x18CFFC850](0, v13, v9, v16);
  _Block_release(v16);

  (*(v22 + 8))(v9, v7);
  (*(v20 + 8))(v13, v21);
}

uint64_t sub_18BAD80C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v6 = sub_18BC1E998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1EA98();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v27 - v19;
  v21 = [a1 directoryURL];
  sub_18BC1EA38();

  v30 = a2;
  v31 = v28;
  (*(v7 + 104))(v9, *MEMORY[0x1E6968F68], v6);
  sub_18B7B0B50();
  sub_18BC1EA88();
  (*(v7 + 8))(v9, v6);
  v22 = *(v11 + 8);
  v22(v13, v10);
  sub_18BC1EA08();
  v22(v16, v10);
  sub_18BC1E638();
  swift_allocObject();
  sub_18BC1E628();
  v30 = v29;
  type metadata accessor for SFEditableEffect(0);
  sub_18B7B2D10(&qword_1EA9D3A40, type metadata accessor for SFEditableEffect);
  v23 = sub_18BC1E618();
  v25 = v24;
  sub_18BC1EAC8();
  v22(v20, v10);
  sub_18B9880FC(v23, v25);
}

id SFEditableEffectStore.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_18BAD85A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18B7B6968;

  return sub_18BAD7A24(v2, v3, v4);
}

uint64_t sub_18BAD8660()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8C28) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_18BAD74F8(v2, v3, v4, v5);
}

uint64_t sub_18BAD86E0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18BAD8740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18BC1EDD8();
  MEMORY[0x1EEE9AC00](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_18BAD8F40();
        v21 = sub_18BC20AC8();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

id sub_18BAD89C0()
{
  v1 = OBJC_IVAR____TtC12MobileSafari22ContentUnavailableView____lazy_storage___blurRadius;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari22ContentUnavailableView____lazy_storage___blurRadius);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari22ContentUnavailableView____lazy_storage___blurRadius);
  }

  else
  {
    v4 = sub_18BB8D09C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_18BAD8A20()
{
  v1 = [v0 subviews];
  sub_18B7F4394();
  v2 = sub_18BC20D98();

  v12 = MEMORY[0x1E69E7CC0];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_18BC219A8();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x18CFFD010](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x18CFFC270]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18BC20DD8();
    }

    sub_18BC20E18();
    v5 = v12;
  }

  while (v4 != v3);
LABEL_21:

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

LABEL_28:

    return 0;
  }

  result = sub_18BC219A8();
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_23:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x18CFFD010](0, v5);
    goto LABEL_26;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v5 + 32);
LABEL_26:
    v11 = v10;

    return v11;
  }

  __break(1u);
  return result;
}

char *sub_18BAD8C40()
{
  v1 = sub_18BAD8A20();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 subviews];
  }

  else
  {
    v3 = [v0 subviews];
  }

  sub_18B7F4394();
  v4 = sub_18BC20D98();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_22:

    v8 = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v14)
    {
LABEL_15:
      v15 = *(v8 + 32);
      v16 = v14 - 1;
      if (v14 != 1)
      {
        v17 = (v8 + 40);
        do
        {
          v18 = *v17++;
          v19 = v18;
          if (v18 < v15)
          {
            v15 = v19;
          }

          --v16;
        }

        while (v16);
      }

      v20 = v15;
      goto LABEL_24;
    }

LABEL_23:
    v20 = 0.0;
LABEL_24:

    return *&v20;
  }

  v5 = sub_18BC219A8();
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_6:
  v21 = MEMORY[0x1E69E7CC0];
  result = sub_18B9B66C0(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v21;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18CFFD010](v7, v4);
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      [v9 frame];
      MinY = CGRectGetMinY(v22);

      v13 = *(v21 + 16);
      v12 = *(v21 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_18B9B66C0((v12 > 1), v13 + 1, 1);
      }

      ++v7;
      *(v21 + 16) = v13 + 1;
      *(v21 + 8 * v13 + 32) = MinY;
    }

    while (v5 != v7);

    v14 = *(v21 + 16);
    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

id sub_18BAD8E58(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  *&a1[OBJC_IVAR____TtC12MobileSafari22ContentUnavailableView____lazy_storage___blurRadius] = 0;
  v7.receiver = a1;
  v7.super_class = type metadata accessor for ContentUnavailableView();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_18BAD8EB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentUnavailableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_18BAD8F40()
{
  result = qword_1EA9D8C48[0];
  if (!qword_1EA9D8C48[0])
  {
    sub_18BC1EDD8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9D8C48);
  }

  return result;
}

uint64_t sub_18BAD8FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SFFluidCollectionView.DropItem() + 68);
  v6 = sub_18BC21848();
  return (*(*(v6 - 8) + 32))(&a3[v5], a2, v6);
}

uint64_t SFFluidCollectionView.DropIntent.items.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SFFluidCollectionView.DropIntent.destination.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v16 - v11;
  (*(v13 + 16))(&v16 - v11, v3 + *(a3 + 68), TupleTypeMetadata2, v10);
  v14 = *(TupleTypeMetadata2 + 48);
  (*(*(v7 - 8) + 32))(a1, v12, v7);
  return (*(*(v8 - 8) + 32))(a2, &v12[v14], v8);
}

uint64_t SFFluidCollectionView.DropIntent.destination.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - v14;
  v16 = *(v6 - 8);
  (*(v16 + 32))(v21 - v14, a1, v6, v13);
  v17 = *(v7 - 8);
  (*(v17 + 32))(&v15[*(TupleTypeMetadata2 + 48)], a2, v7);
  (*(v9 + 32))(v11, v15, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  v19 = v21[1] + *(a3 + 68);
  (*(v16 + 40))(v19, v11, v6);
  return (*(v17 + 40))(v19 + *(TupleTypeMetadata2 + 48), &v11[v18], v7);
}

uint64_t SFFluidCollectionView.DropIntent.session.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  result = swift_unknownObjectRelease();
  *(v2 + v4) = a1;
  return result;
}

void SFFluidCollectionView.DropIntent.proposal.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 76);

  *(v2 + v4) = a1;
}

uint64_t sub_18BAD952C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  v13 = type metadata accessor for SFFluidCollectionView.DropIntent();
  v14 = a7 + v13[17];
  v15 = sub_18BC21848();
  v16 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a6 - 8) + 32))(v14, a2, a6);
  result = (*(*(v15 - 8) + 32))(&v14[v16], a3, v15);
  *(a7 + v13[18]) = a4;
  *(a7 + v13[19]) = a5;
  return result;
}

uint64_t sub_18BAD9698()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v14 = sub_18BC21848();
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v14 - v4;
  *(v0 + 4) = sub_18BC20DE8();
  v6 = qword_1EA9F8260;
  v7 = sub_18BC1EDD8();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  v8 = *(*(v2 - 8) + 56);
  v8(&v0[*(*v0 + 240)], 1, 1, v2);
  updated = SFFluidCollectionView.DataSource.ShadowUpdateSource.init()();
  v10 = *(v1 + 208);
  v11 = *(v10 + 16);
  sub_18BC1E1A8();
  v11(v2, v10);
  v8(v5, 0, 1, v2);
  v12 = *(*updated + 240);
  swift_beginAccess();
  (*(v3 + 40))(updated + v12, v5, v14);
  swift_endAccess();

  return updated;
}

uint64_t sub_18BAD98C8()
{
  v1 = sub_18BBAA458();
  sub_18BC1E1A8();
  v1(v0, 1);
}

uint64_t sub_18BAD9928(uint64_t a1)
{
  v3 = qword_1EA9F8260;
  swift_beginAccess();
  sub_18BAE2058(a1, v1 + v3);
  swift_endAccess();
  sub_18BAD98C8();
  return sub_18B988BAC(a1, &unk_1EA9D5BD0);
}

uint64_t sub_18BAD99A4()
{

  sub_18B988BAC(v0 + qword_1EA9F8260, &unk_1EA9D5BD0);
  v1 = *(*v0 + 240);
  v2 = sub_18BC21848();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_18BAD9A60()
{
  updated = SFFluidCollectionView.DataSource.ShadowUpdateSource.deinit();

  sub_18B988BAC(updated + qword_1EA9F8260, &unk_1EA9D5BD0);
  v1 = *(*updated + 240);
  v2 = sub_18BC21848();
  (*(*(v2 - 8) + 8))(updated + v1, v2);
  return updated;
}

uint64_t sub_18BAD9B1C()
{
  sub_18BAD9A60();

  return swift_deallocClassInstance();
}

id sub_18BAD9BA4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  *&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x88)] = 0;
  v6 = *((*v4 & *v1) + 0x90);
  v8 = *((v5 & v3) + 0x58);
  v9 = *((v5 & v3) + 0x60);
  v10 = *((v5 & v3) + 0x68);
  v11 = *((v5 & v3) + 0x70);
  v12 = *((v5 & v3) + 0x78);
  v34 = *((v5 & v3) + 0x50);
  v7 = v34;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  _s21DragDropShadowUpdaterCMa();
  swift_allocObject();
  *&v1[v6] = sub_18BAD9698();
  v13 = *((*v4 & *v1) + 0x98);
  v14 = sub_18BC1EDD8();
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  *&v2[*((*v4 & *v2) + 0xA0)] = 0;
  v15 = *((*v4 & *v2) + 0xA8);
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  v16 = type metadata accessor for SFFluidCollectionView.DropIntent();
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  v17 = *((*v4 & *v2) + 0xB0);
  v18 = sub_18B7B0AC0(255, &qword_1EA9D7CE0);
  swift_getTupleTypeMetadata2();
  v19 = sub_18BC20DE8();
  v20 = sub_18BAE1EF0();
  v21 = sub_18B7C29AC(v19, v18, v8, v20);

  *&v2[v17] = v21;
  v22 = *((*v4 & *v2) + 0xB8);
  type metadata accessor for Assertion();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  *(v23 + 24) = 0;
  *&v2[v22] = v23;
  swift_unknownObjectUnownedInit();
  v33.receiver = v2;
  v33.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v33, sel_init);
  v25 = *(a1 + *((*v4 & *a1) + 0x90));
  v26 = v24;
  v27 = v25;
  v28 = sub_18BC1E1A8();
  sub_18BB23E68(v28);

  v29 = sub_18B86494C();
  [a1 addInteraction_];

  return v26;
}

uint64_t sub_18BAD9FAC@<X0>(char *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v210 = a1;
  v6 = *v3;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  v9 = *((*MEMORY[0x1E69E7D40] & v6) + 0x58);
  v193 = sub_18BC21848();
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v195 = &v191 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v197 = &v191 - v12;
  v209 = sub_18BC1EDD8();
  v208 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v194 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *((v7 & v6) + 0x50);
  v223 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v201 = &v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v207 = &v191 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v234 = sub_18BC21848();
  v205 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v233 = &v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v232 = (&v191 - v22);
  v213 = sub_18BC21848();
  v217 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v206 = &v191 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v222 = &v191 - v25;
  v224 = *(v8 + 96);
  v26 = *((v7 & v6) + 0x70);
  v27 = *((v7 & v6) + 0x78);
  *&v248 = v14;
  *(&v248 + 1) = v9;
  v249 = v224;
  *v250 = v26;
  *&v250[8] = v27;
  v28 = v26;
  v216 = v26;
  v29 = v27;
  v214 = v27;
  v229 = COERCE_DOUBLE(type metadata accessor for SFFluidCollectionView.Element());
  v200 = *(*&v229 - 8);
  MEMORY[0x1EEE9AC00](*&v229);
  v199 = &v191 - v30;
  v215 = v9;
  v198 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v196 = &v191 - v32;
  *&v248 = v14;
  *(&v248 + 1) = v9;
  v249 = v224;
  *v250 = v28;
  *&v250[8] = v29;
  v33 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v202 = &v191 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v221 = (&v191 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v191 - v39;
  v220 = sub_18BC21848();
  v218 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  *&v212 = &v191 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v191 - v43;
  v45 = *((v7 & v6) + 0x80);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18BB65AD8();
  sub_18BC1E1A8();

  sub_18B81D198(&v245);

  v248 = v245;
  v249 = v246;
  *v250 = *v247;
  *&v250[9] = *&v247[9];
  v47 = *(v34 + 56);
  v225 = v44;
  v48 = v44;
  v49 = v40;
  v204 = v34 + 56;
  v203 = v47;
  v47(v48, 1, 1, v33);
  v245 = v248;
  v246 = v249;
  *v247 = *v250;
  *&v247[9] = *&v250[9];
  v235 = v45;
  v50 = swift_unknownObjectUnownedLoadStrong();
  [v50 bounds];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;

  v237 = v14;
  *&v242 = v14;
  *(&v242 + 1) = v215;
  v243 = v224;
  *&v244 = v216;
  *(&v244 + 1) = v214;
  v59 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
  *&v60 = COERCE_DOUBLE(SFFluidCollectionView.LayoutSnapshot.layoutAttributesForElements(in:)(v59, v52, v54, v56, v58));
  result = (*(*(v59 - 1) + 8))(&v248, v59);
  v62 = 0;
  v64 = v60 + 56;
  v63 = *(v60 + 56);
  v230 = *&v60;
  v65 = 1 << *(v60 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & v63;
  v68 = (v65 + 63) >> 6;
  v227 = v34 + 16;
  v231 = v34 + 32;
  v226 = (v34 + 8);
  v211 = (v218 + 2);
  v228 = v34;
  v219 = (v34 + 48);
  v69 = v221;
  ++v218;
  *(&v212 + 1) = v49;
  if ((v66 & v63) != 0)
  {
    while (1)
    {
LABEL_10:
      while (1)
      {
        v71 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
        v72 = v228;
        (*(v228 + 16))(v49, *(*&v230 + 48) + *(v228 + 72) * (v71 | (v62 << 6)), v33);
        v73 = *(v72 + 32);
        v73(v69, v49, v33);
        if (SFFluidCollectionView.Element.isItem.getter(*&v229))
        {
          v252.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v33);
          v251.x = a2;
          v251.y = a3;
          if (CGRectContainsPoint(v252, v251))
          {
            break;
          }
        }

        result = (*v226)(v69, v33);
        if (!v67)
        {
          goto LABEL_6;
        }
      }

      v74 = v212;
      v75 = v220;
      (*v211)(v212, v225, v220);
      if ((*v219)(v74, 1, v33) == 1)
      {
        break;
      }

      v79 = v74;
      v80 = v202;
      v73(v202, v79, v33);
      v81 = *(v33 + 84);
      v82 = v221;
      v83 = *(v221 + v81);
      v84 = *&v80[v81];
      v85 = *v226;
      (*v226)(v80, v33);
      if (v83 >= v84)
      {
        v78 = *v218;
        v75 = v220;
        goto LABEL_17;
      }

      result = v85(v82, v33);
      v69 = v82;
LABEL_18:
      v49 = *(&v212 + 1);
      if (!v67)
      {
        goto LABEL_6;
      }
    }

    v76 = v74;
    v77 = *v218;
    (*v218)(v76, v75);
    v78 = v77;
LABEL_17:
    v86 = v225;
    v78(v225, v75);
    v87 = v221;
    v73(v86, v221, v33);
    v88 = v86;
    v69 = v87;
    result = v203(v88, 0, 1, v33);
    goto LABEL_18;
  }

  while (1)
  {
LABEL_6:
    v70 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
      return result;
    }

    if (v70 >= v68)
    {
      break;
    }

    v67 = *(v64 + 8 * v70);
    ++v62;
    if (v67)
    {
      v62 = v70;
      goto LABEL_10;
    }
  }

  v89 = (*v219)(v225, 1, v33);
  v90 = v237;
  v91 = v222;
  v92 = v207;
  if (!v89)
  {
    v93 = v200;
    v94 = v199;
    (*(v200 + 16))(v199, v225, COERCE_DOUBLE(*&v229));
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v95 = v198;
      v96 = v196;
      v97 = v215;
      (*(v198 + 32))(v196, v94, v215);
      v98 = v90;
      v99 = swift_unknownObjectUnownedLoadStrong();
      v100 = *(v99 + *((*MEMORY[0x1E69E7D40] & *v99) + 0x90));

      sub_18B8498E0(&v245, v101);
      v242 = v245;
      v243 = v246;
      v244 = *v247;
      *&v102 = v98;
      *(&v102 + 1) = v97;
      v239 = v224;
      v238 = v102;
      v240 = v216;
      v241 = v214;
      type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
      v103 = v210;
      SFFluidCollectionView.DataSource.Snapshot.indexPath(of:)();

      (*(v95 + 8))(v96, v97);
      v104 = 0;
      goto LABEL_43;
    }

    (*(v93 + 8))(v94, COERCE_DOUBLE(*&v229));
  }

  v230 = a2;
  *&v231 = a3;
  v105 = *(v223 + 56);
  LODWORD(v227) = 1;
  v200 = v223 + 56;
  v199 = v105;
  (v105)(v91, 1, 1, v90);
  v106 = swift_unknownObjectUnownedLoadStrong();
  [v106 contentSize];
  v229 = v107;

  v108 = swift_unknownObjectUnownedLoadStrong();
  [v108 bounds];
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;

  v117 = swift_unknownObjectUnownedLoadStrong();
  [v117 adjustedContentInset];
  v119 = v118;
  v121 = v120;

  v253.origin.x = UIEdgeInsetsInsetRect(v110, v112, v114, v116, v119, v121);
  if (CGRectGetHeight(v253) >= v229)
  {
    v122 = swift_unknownObjectUnownedLoadStrong();
    LODWORD(v227) = [v122 alwaysBounceVertical];
  }

  v123 = swift_unknownObjectUnownedLoadStrong();
  [v123 contentSize];
  v229 = v124;

  v125 = swift_unknownObjectUnownedLoadStrong();
  [v125 bounds];
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;

  v134 = swift_unknownObjectUnownedLoadStrong();
  [v134 adjustedContentInset];
  v136 = v135;
  v138 = v137;

  v254.origin.x = UIEdgeInsetsInsetRect(v127, v129, v131, v133, v136, v138);
  if (CGRectGetWidth(v254) >= v229)
  {
    v139 = swift_unknownObjectUnownedLoadStrong();
    LODWORD(v226) = [v139 alwaysBounceHorizontal];
  }

  else
  {
    LODWORD(v226) = 1;
  }

  v140 = *&v231;
  v141 = v230;
  v142 = swift_unknownObjectUnownedLoadStrong();
  sub_18BB65AD8();
  sub_18BC1E1A8();

  sub_18B810930(&v245);

  v212 = v245;
  v204 = *(&v246 + 1);
  v211 = v246;
  v203 = *&v247[8];
  v219 = *v247;
  v242 = *v247;
  v143 = v237;
  v228 = *(*(&v224 + 1) + 8);
  v144 = sub_18BC1F0E8();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18CFFC1E0](&v245, v144, WitnessTable);
  v238 = v245;
  sub_18BC21D48();
  sub_18BC21D18();
  v146 = v143;
  *&v231 = COERCE_DOUBLE(sub_18BC21D38());
  v202 = 0;
  v147 = (v205 + 32);
  *&v230 = TupleTypeMetadata2 - 8;
  v148 = (v223 + 32);
  *&v229 = v223 + 8;
  v221 = (v217 + 8);
  LODWORD(v205) = 1;
  while (1)
  {
    v149 = v233;
    sub_18BC21D28();
    v150 = v232;
    (*v147)(v232, v149, v234);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v150, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v151 = *v150;
    v152 = *v148;
    (*v148)(v92, v150 + *(TupleTypeMetadata2 + 48), v146);
    v153 = swift_unknownObjectUnownedLoadStrong();
    sub_18BB65AD8();
    sub_18BC1E1A8();

    sub_18BA70E60();
    sub_18BC1E3F8();
    v146 = v237;

    type metadata accessor for CGRect(0);
    sub_18BC20A28();

    if (v247[0])
    {
      goto LABEL_30;
    }

    v154 = *(&v246 + 1);
    v155 = *&v246;
    v156 = *(&v245 + 1);
    v157 = *&v245;
    v158 = swift_unknownObjectUnownedLoadStrong();
    v159 = [v158 effectiveUserInterfaceLayoutDirection];

    v146 = v237;
    if (v227)
    {
      v255.origin.x = v157;
      v255.origin.y = v156;
      v255.size.width = v155;
      v255.size.height = v154;
      if (CGRectGetMinY(v255) < v140)
      {
        goto LABEL_40;
      }
    }

    if (!v226)
    {
      goto LABEL_30;
    }

    v160 = v157;
    v161 = v156;
    v162 = v155;
    v163 = v154;
    if (v159 == 1)
    {
      if (CGRectGetMaxX(*&v160) <= v141)
      {
        goto LABEL_30;
      }

LABEL_40:
      v164 = v222;
      (*v221)(v222, v213);
      v152(v164, v92, v146);
      (v199)(v164, 0, 1, v146);
      LODWORD(v205) = 0;
      v202 = v151;
    }

    else
    {
      if (CGRectGetMinX(*&v160) < v141)
      {
        goto LABEL_40;
      }

LABEL_30:
      (**&v229)(v92, v146);
    }
  }

  v165 = v206;
  v166 = v222;
  v167 = v213;
  (*(v217 + 16))(v206, v222, v213);
  if ((*(v223 + 48))(v165, 1, v146) != 1)
  {
    v171 = v201;
    (*v148)(v201, v165, v146);
    v103 = v210;
    v169 = v209;
    v170 = v208;
    if (v205)
    {

      (**&v229)(v171, v146);
      (*v221)(v166, v167);
      v104 = 1;
      goto LABEL_61;
    }

    v245 = v212;
    *&v246 = v211;
    *(&v246 + 1) = v204;
    *v247 = v219;
    *&v247[8] = v203;
    *&v242 = v146;
    v172 = v215;
    *(&v242 + 1) = v215;
    v243 = v224;
    *&v244 = v216;
    *(&v244 + 1) = v214;
    type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
    v173 = SFFluidCollectionView.DataSource.Snapshot.items(in:)();
    v174 = v236;
    v175 = *((*MEMORY[0x1E69E7D40] & *v236) + 0x98);
    swift_beginAccess();
    v176 = v174 + v175;
    v177 = v197;
    sub_18B83E710(v176, v197);
    if ((*(v170 + 48))(v177, 1, v169) == 1)
    {
      sub_18B988BAC(v177, &unk_1EA9D5BD0);
    }

    else
    {
      v178 = *(v170 + 32);
      v179 = v194;
      v178(v194, v177, v169);
      if (sub_18BC1EDC8() == v202)
      {
        v180 = sub_18BC1EDB8();
        if (v180 < sub_18BC20E28())
        {

          (**&v229)(v171, v237);
          (*v221)(v222, v213);
          v178(v103, v179, v169);
LABEL_60:
          v104 = 0;
          goto LABEL_61;
        }
      }

      (*(v170 + 8))(v179, v169);
      v167 = v213;
    }

    *&v242 = v173;
    sub_18BC20E78();
    swift_getWitnessTable();
    v181 = v195;
    sub_18BC20A98();
    v182 = v198;
    if ((*(v198 + 48))(v181, 1, v172) == 1)
    {
      (*(v192 + 8))(v181, v193);
    }

    else
    {
      v183 = (*(v216 + 24))(v172);
      v184 = v182;
      v185 = v183;
      (*(v184 + 8))(v181, v172);
      if (v185)
      {
        v186 = sub_18BC20E28();

        v187 = __OFSUB__(v186, 1);
        v188 = v186 - 1;
        if (!v187)
        {
          goto LABEL_59;
        }

        __break(1u);
      }
    }

    v188 = sub_18BC20E28();

LABEL_59:
    v189 = v222;
    MEMORY[0x18CFFA290](v188, v202);

    (**&v229)(v171, v237);
    (*v221)(v189, v167);
    goto LABEL_60;
  }

  v168 = *v221;
  (*v221)(v166, v167);

  v168(v165, v167);
  v104 = 1;
  v103 = v210;
LABEL_43:
  v169 = v209;
  v170 = v208;
LABEL_61:
  v190 = v220;
  (*(v170 + 56))(v103, v104, 1, v169);
  return (*v218)(v225, v190);
}

uint64_t sub_18BADBBB0(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v35 = a1;
  v3 = *v2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  *&v29 = *MEMORY[0x1E69E7D40] & v3;
  v37 = *((v5 & v3) + 0x50);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v28 - v6;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = *(Strong + *((*v4 & *Strong) + 0x90));

  sub_18B8498E0(&v44, v9);
  v10 = v44;
  v11 = *(&v45 + 1);
  v36 = v45;
  v12 = v46;
  v13 = v47;
  sub_18BC1EDC8();
  v14 = v37;
  sub_18BC21C08();
  v31 = v10;
  v44 = v10;
  *&v45 = v36;
  *(&v45 + 1) = v11;
  v30 = v11;
  v32 = v12;
  v46 = v12;
  v47 = v13;
  v15 = *((v5 & v3) + 0x58);
  v16 = *(v29 + 96);
  v17 = *((v5 & v3) + 0x70);
  v18 = *((v5 & v3) + 0x78);
  *&v40 = v14;
  *(&v40 + 1) = v15;
  v29 = v16;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
  v19 = SFFluidCollectionView.DataSource.Snapshot.items(in:)();
  v20 = sub_18BC1EDB8();
  if (v20 >= sub_18BC20E28())
  {

    (*(v34 + 32))(v35, v38, v37);
    return (*(*(v15 - 8) + 56))(v33, 1, 1, v15);
  }

  else
  {
    v21 = sub_18BC1EDB8();
    v39 = v19;
    *&v40 = v21;
    sub_18BC20E78();
    v22 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8F00);
    swift_getWitnessTable();
    sub_18B7B0B08(&qword_1EA9D8F08, &qword_1EA9D8F00);
    sub_18BC20AD8();

    v28 = v44;
    v40 = v44;
    v41 = v45;
    MEMORY[0x1EEE9AC00](v23);
    v24 = v37;
    *&v25 = v37;
    *(&v25 + 1) = v15;
    v26 = v29;
    *(&v28 - 3) = v25;
    *(&v28 - 2) = v26;
    *(&v28 - 2) = v22;
    *(&v28 - 1) = v18;
    sub_18BC218C8();
    swift_getWitnessTable();
    sub_18BC20D18();
    swift_unknownObjectRelease();

    return (*(v34 + 32))(v35, v38, v24);
  }
}

uint64_t sub_18BADC078@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_18BC1EDD8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *((v4 & v3) + 0x98);
  swift_beginAccess();
  sub_18B83E710(v1 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_18B988BAC(v7, &unk_1EA9D5BD0);
    sub_18BC21848();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a1, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_18BC21848();
    v15 = swift_getTupleTypeMetadata2();
    sub_18BADBBB0(a1, a1 + *(v15 + 48));
    (*(v9 + 8))(v11, v8);
    return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
  }
}

uint64_t sub_18BADC330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a2;
  v45 = a3;
  v4 = *v3;
  v5 = *MEMORY[0x1E69E7D40];
  v43 = *MEMORY[0x1E69E7D40] & v4;
  v6 = *((v5 & v4) + 0x50);
  v7 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v19 = sub_18BB47300();
  v40 = v20;

  if (v19)
  {
    sub_18BADBBB0(v17, &v17[*(TupleTypeMetadata2 + 48)]);
    v41 = v6;
    v38 = v12;
    v39 = v7;
    v21 = *(v47 + 16);
    v22 = v46;
    v21(v46, v17, TupleTypeMetadata2);
    ObjectType = swift_getObjectType();
    v24 = swift_unknownObjectUnownedLoadStrong();
    (*(v40 + 40))(v24, v22, v42, ObjectType);

    v25 = v38;
    v21(v38, v22, TupleTypeMetadata2);
    v42 = *(TupleTypeMetadata2 + 48);
    v26 = v44;
    v21(v44, v17, TupleTypeMetadata2);
    v40 = *(TupleTypeMetadata2 + 48);
    v48 = *(*(*(v43 + 112) + 8) + 8);
    v27 = v39;
    swift_getWitnessTable();
    v28 = v41;
    v29 = v27;
    LODWORD(v43) = sub_18BC22018();
    swift_unknownObjectRelease();
    v30 = *(v47 + 8);
    v30(v17, TupleTypeMetadata2);
    v31 = *(*(v29 - 8) + 8);
    v31(&v26[v40], v29);
    v32 = *(*(v28 - 8) + 8);
    v32(v26);
    v31(&v25[v42], v29);
    (v32)(v25, v28);
    if (v43)
    {
      v30(v46, TupleTypeMetadata2);
      return (*(v47 + 56))(v45, 1, 1, TupleTypeMetadata2);
    }

    else
    {
      v36 = v45;
      (*(v47 + 32))(v45, v46, TupleTypeMetadata2);
      return (*(v47 + 56))(v36, 0, 1, TupleTypeMetadata2);
    }
  }

  else
  {
    v34 = *(v47 + 56);
    v35 = v45;

    return v34(v35, 1, 1, TupleTypeMetadata2);
  }
}

uint64_t sub_18BADC7D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v38 = a1;
  v42 = a2;
  v3 = *v2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  *&v35 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *((v5 & v3) + 0x58);
  v39 = sub_18BC21848();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v36 = v33 - v7;
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = v33 - v9;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = *(Strong + *((*v4 & *Strong) + 0x90));

  sub_18BB23214(&v49);
  v12 = v49;
  v41 = v50;
  v13 = v51;
  v14 = v52;
  v15 = v54;
  v16 = *((v5 & v3) + 0x50);
  v17 = *((v5 & v3) + 0x68);
  v43 = v53;
  v18 = sub_18BC1F098();
  if ((v19 & 1) == 0)
  {
    v22 = v18;
    v33[2] = v12;
    v49 = v12;
    v50 = v41;
    v33[0] = v13;
    v51 = v13;
    v52 = v14;
    v33[1] = v14;
    v53 = v43;
    v54 = v15;
    v23 = *(v35 + 96);
    v44 = v16;
    v45 = v6;
    v46 = v23;
    v47 = v17;
    v35 = *(v35 + 112);
    v48 = v35;
    type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
    v24 = SFFluidCollectionView.DataSource.Snapshot.items(in:)();
    v26 = v36;
    v25 = v37;
    v27 = v39;
    (*(v37 + 16))(v36, v38, v39);
    v28 = v40;
    if ((*(v40 + 48))(v26, 1, v6) == 1)
    {
      (*(v25 + 8))(v26, v27);
      v29 = v42;
    }

    else
    {
      v39 = v22;
      v30 = v34;
      (*(v28 + 32))(v34, v26, v6);
      v44 = v24;
      sub_18BC20E78();
      swift_getWitnessTable();
      sub_18BC211B8();
      (*(v28 + 8))(v30, v6);
      if (v50 != 1)
      {
        v31 = v49;

        v29 = v42;
        v22 = v39;
        goto LABEL_11;
      }

      v29 = v42;
      v22 = v39;
    }

    v31 = sub_18BC20E28();

LABEL_11:
    MEMORY[0x18CFFA290](v31, v22);

    v32 = sub_18BC1EDD8();
    return (*(*(v32 - 8) + 56))(v29, 0, 1, v32);
  }

  v20 = sub_18BC1EDD8();
  (*(*(v20 - 8) + 56))(v42, 1, 1, v20);
}

void sub_18BADCD48()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8));
  v3 = *(v2 + 24);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  *(v2 + 24) = v5;
  if (v5 == 1)
  {
    swift_beginAccess();
    v6 = *(v2 + 16);
    v7 = *(v6 + 16);
    if (v7)
    {
      sub_18BC1E3F8();
      v8 = v6 + 40;
      do
      {
        v9 = *(v8 - 8);
        v20[0] = *(v2 + 24) > 0;
        sub_18BC1E1A8();
        v9(v20);

        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = *(Strong + *((*v1 & *Strong) + 0x90));

  MEMORY[0x1EEE9AC00](v12);
  sub_18BB23D68(sub_18BAE2050);

  v13 = *(v2 + 24);
  v4 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  if (v4)
  {
    goto LABEL_15;
  }

  *(v2 + 24) = v14;
  if (!v14)
  {
    swift_beginAccess();
    v15 = *(v2 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
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

void *sub_18BADCF74(void *a1, void *a2)
{
  v2 = a2;
  v4 = *MEMORY[0x1E69E7D40] & *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  *&v6 = MEMORY[0x1EEE9AC00](v5 - 8).n128_u64[0];
  v8 = v29 - v7;
  v9 = [a1 localDragSession];
  if (!v9)
  {
    goto LABEL_25;
  }

  v10 = [v9 items];
  swift_unknownObjectRelease();
  sub_18B7B0AC0(0, &qword_1EA9D7CE0);
  v11 = sub_18BC20D98();

  if (v11 >> 62)
  {
LABEL_23:
    v12 = sub_18BC219A8();
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_24:

LABEL_25:
    v28 = sub_18BC1EDD8();
    (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
    return sub_18BAD9928(v8);
  }

LABEL_4:
  v29[0] = v8;
  v29[1] = v2;
  v8 = 0;
  v13 = v11 & 0xC000000000000001;
  v31 = v11 & 0xFFFFFFFFFFFFFF8;
  v2 = &selRef_performSearchUsingQuery_;
  v14 = MEMORY[0x1E69E7CA0];
  v30 = v4;
  while (1)
  {
    if (v13)
    {
      v15 = MEMORY[0x18CFFD010](v8, v11);
    }

    else
    {
      if (v8 >= *(v31 + 16))
      {
        goto LABEL_22;
      }

      v15 = *(v11 + 8 * v8 + 32);
    }

    v16 = v15;
    v17 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ([v15 v2[285]])
    {
      sub_18BC218B8();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40[0] = v38;
    v40[1] = v39;
    if (*(&v39 + 1))
    {
      break;
    }

    sub_18B988BAC(v40, &qword_1EA9D5220);
LABEL_6:
    ++v8;
    if (v17 == v12)
    {

      v8 = v29[0];
      goto LABEL_25;
    }
  }

  v18 = *(v4 + 120);
  v33 = *(v4 + 80);
  v32 = *(v4 + 88);
  v19 = *(v4 + 104);
  v34 = v32;
  v35 = v19;
  v36 = v18;
  type metadata accessor for SFFluidCollectionView();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_6;
  }

  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v2;
  v24 = v14;
  v25 = v37;
  result = sub_18BB65B98();
  if (result)
  {
    v27 = *(result + *((*MEMORY[0x1E69E7D40] & *result) + 0x90));
    sub_18BC1E1A8();
    *(v27 + 32) = sub_18BC20DE8();

    sub_18BAD98C8();

    v14 = v24;
    v2 = v23;
    v13 = v22;
    v12 = v21;
    v11 = v20;
    v4 = v30;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BADD350(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_18BADEC90(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

void sub_18BADD3DC(void *a1, uint64_t *a2, uint64_t a3)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5BD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x98);
  swift_beginAccess();
  sub_18B83E710(a1 + v8, v7);
  sub_18BAD9928(v7);
  v9 = *a2;
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = sub_18BC1E3F8();
  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (v16 << 9) | (8 * v17);
    v19 = *(*(v9 + 56) + v18);
    v20 = *(*(*(v9 + 48) + v18) + *((*MEMORY[0x1E69E7D40] & **(*(v9 + 48) + v18)) + 0x90));
    MEMORY[0x1EEE9AC00](v14);
    *(&v24 - 4) = v24;
    *(&v24 - 3) = v21;
    *(&v24 - 2) = v19;
    v22 = v21;
    sub_18BC1E3F8();
    v23 = v20;
    sub_18BB23D68(sub_18BAE2194);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return;
    }

    v12 = *(v9 + 64 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_18BADD624(void *a1)
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = [a1 operation];
  result = sub_18BB65B98();
  if (v2 == 3)
  {
    if (result)
    {
      v4 = *(result + *((*v1 & *result) + 0x90));
      MEMORY[0x1EEE9AC00](result);
      sub_18BC1E1A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D8EF0);
      sub_18B7B0B08(&qword_1EA9D6290, &qword_1EA9D8EF0);
      *(v4 + 32) = sub_18BC20CD8();

      sub_18BAD98C8();
    }

    __break(1u);
    goto LABEL_9;
  }

  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = *(result + *((*v1 & *result) + 0x90));
  sub_18BC1E1A8();
  *(v5 + 32) = sub_18BC20DE8();

  sub_18BAD98C8();
}

uint64_t sub_18BADD850@<X0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ([*a1 safari_fluidCollectionViewSourceItem])
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
    sub_18B7B1AD4(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5220);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

id sub_18BADD938(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_18BADEE90(a4);

  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_18BADD9DC@<X0>(void *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, char *a6@<X8>)
{
  v21[2] = a4;
  v21[3] = a5;
  v21[1] = a3;
  v9 = sub_18BC21848();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = v21 - v15;
  if ([a1 safari_fluidCollectionViewSourceItem])
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
    sub_18B7B1AD4(&v22, v23);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5220);
  v17 = swift_dynamicCast();
  (*(*(a2 - 8) + 56))(v16, v17 ^ 1u, 1, a2);
  (*(v10 + 16))(v12, v16, v9);
  sub_18BAD8FE0(a1, v12, a6);
  v18 = *(v10 + 8);
  v19 = a1;
  return v18(v16, v9);
}

void sub_18BADDBFC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

id sub_18BADDC80(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_18BAE11A4(v9, v10);

  return v12;
}

void sub_18BADDD0C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  sub_18BAE186C(v9, a5);

  swift_unknownObjectRelease();
}

void sub_18BADDDA4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  sub_18BAE1C50();

  swift_unknownObjectRelease();
}

uint64_t sub_18BADDEB0(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  swift_unknownObjectUnownedDestroy();

  sub_18B988BAC(&a1[*((*v2 & *a1) + 0x98)], &unk_1EA9D5BD0);

  v3 = *((*v2 & *a1) + 0xA8);
  type metadata accessor for SFFluidCollectionView.DropIntent();
  v4 = sub_18BC21848();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
}

uint64_t sub_18BADE130()
{
  result = sub_18B7B0AC0(319, &qword_1EA9D7CE0);
  if (v1 <= 0x3F)
  {
    result = sub_18BC21848();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18BADE1C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_18BADE380(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 24) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 8) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;
      v28 = &a1[v11 + 8] & ~v11;

      v26(v28, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}