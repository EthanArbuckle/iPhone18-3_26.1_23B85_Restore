uint64_t sub_18B9D3FF4(void *a1, void *a2)
{
  v5 = _s4ItemVMa_2();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = aBlock - v10;
  v12 = sub_18B9D3AF8(a1);
  v13 = v12[2];
  if (v13)
  {
    v14 = *(v6 + 80);
    sub_18B8554D0(v12 + ((v14 + 32) & ~v14), v11, _s4ItemVMa_2);

    if (v13 == 1 && (*(v2 + OBJC_IVAR___SFTabOverview_content + 4) & 1) == 0)
    {
      [a2 setPreferredCommitStyle_];
      sub_18B8554D0(v11, v8, _s4ItemVMa_2);
      v15 = swift_allocObject();
      *(v15 + 16) = v2;
      sub_18B829704(v8, v15 + ((v14 + 24) & ~v14), _s4ItemVMa_2);
      aBlock[4] = sub_18B9D4280;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18B7B0DB0;
      aBlock[3] = &block_descriptor_357;
      v16 = _Block_copy(aBlock);
      v17 = v2;

      [a2 addAnimations_];
      _Block_release(v16);
    }

    return sub_18B815380(v11, _s4ItemVMa_2);
  }

  else
  {
  }
}

uint64_t sub_18B9D42B0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(_s4ItemVMa_2() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

uint64_t sub_18B9D4328()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR___SFTabOverview_handlers + 224);
  sub_18BC1E1A8();
  v3 = v2(v1);

  return v3;
}

uint64_t sub_18B9D43D4(uint64_t a1, uint64_t a2)
{
  v4 = _s7SectionVMa_1();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_18B9D4438(CGFloat a1, CGFloat a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v8 = _s4ItemVMa_2();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v2[OBJC_IVAR___SFTabOverview_content + 32] && (v2[OBJC_IVAR___SFTabOverview_content + 4] & 1) == 0)
  {
    v13 = v10;
    v14 = *&v2[OBJC_IVAR___SFTabOverview_handlers + 272];
    sub_18BC1E1A8();
    v15 = sub_18B82FEA0();
    v16 = v2;
    [v2 convertPoint:v15 fromCoordinateSpace:{a1, a2}];
    v18 = v17;
    v20 = v19;

    v21 = v14(v18, v20);

    if (v21)
    {
      v22 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
      v23 = *&v16[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView];
      (*(v9 + 56))(v7, 1, 1, v13);
      v33 = 0x10000000000000;
      v24 = v23;
      sub_18BB4F250(v24, v7, &v33, a1, a2);

      if ((*(v9 + 48))(v7, 1, v13) == 1)
      {
        sub_18B988BAC(v7, &unk_1EA9D4F30);
      }

      else
      {
        sub_18B829704(v7, v12, _s4ItemVMa_2);
        v25 = *&v16[v22];
        v26 = sub_18B9CAE54(v12);

        if (v26)
        {
          type metadata accessor for TabOverview.ItemView();
          v27 = swift_dynamicCastClass();
          if (v27)
          {
            v28 = *(v27 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

            type metadata accessor for TabOverviewItemView();
            v29 = swift_dynamicCastClassUnconditional();
            [v29 convertPoint:*&v16[v22] fromCoordinateSpace:{a1, a2}];
            v30 = [*&v29[OBJC_IVAR___SFTabOverviewItemView_thumbnailView] pointInside:0 withEvent:?];
            sub_18B815380(v12, _s4ItemVMa_2);

            return v30;
          }
        }

        sub_18B815380(v12, _s4ItemVMa_2);
      }
    }
  }

  return 0;
}

uint64_t objectdestroy_406Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for SFFluidCollectionView.LayoutAttributes() - 8) + 80);

  type metadata accessor for SFFluidCollectionView.Element();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      (*(*(v2 - 8) + 8))(v0 + ((v3 + 72) & ~v3), v2);
      break;
    case 0:
      (*(*(v1 - 8) + 8))(v0 + ((v3 + 72) & ~v3), v1);
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_18B9D4A1C(uint64_t (*a1)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(type metadata accessor for SFFluidCollectionView.LayoutAttributes() - 8);
  v9 = v1[8];
  v10 = v1 + ((*(v8 + 80) + 72) & ~*(v8 + 80));

  return a1(v9, v10, v2, v3, v4, v5, v6, v7);
}

void sub_18B9D4BA4()
{
  v1 = *(_s4ItemVMa_2() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_18B9C4124(v3, v0 + v2, v4);
}

uint64_t objectdestroy_353Tm()
{
  v1 = (_s4ItemVMa_2() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_18BC1EC08();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

void sub_18B9D4E14()
{
  v1 = *(v0 + 16);
  v2 = (*(*(v0 + 24) + 16))();
  v3 = *v1;
  *v1 = v2;
}

id sub_18B9D4EAC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  [v1 contentOffset];
  v5 = v4;
  [v2 setValue_];

  return [v3 setValue_];
}

uint64_t objectdestroy_341Tm()
{

  return swift_deallocObject();
}

id sub_18B9D4F80()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  [v1 presentationValue];
  v5 = v4;
  [v3 presentationValue];

  return [v2 setContentOffset_];
}

void sub_18B9D51B4(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B864788(a1, a2);
}

char *sub_18B9D5244()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = sub_18B9BDDB8();

  return v1;
}

uint64_t sub_18B9D5294()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

id sub_18B9D54BC()
{
  v2.receiver = v0;
  v2.super_class = _s11DisplayItemCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B9D554C(uint64_t a1)
{
  v3 = _s4ItemVMa();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4ItemVMa_2();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v47[1] = v1;
  v60 = MEMORY[0x1E69E7CC0];
  sub_18B85A1AC(0, v9, 0);
  v10 = v60;
  v11 = a1 + 56;
  result = sub_18BC21918();
  v13 = result;
  v14 = 0;
  v48 = a1 + 64;
  v49 = v9;
  v50 = a1;
  v51 = a1 + 56;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v58 = 1 << v13;
    v59 = v13 >> 6;
    v16 = *(a1 + 36);
    v56 = v14;
    v57 = v16;
    sub_18B7DF568(*(a1 + 48) + *(v54 + 72) * v13, v5, _s4ItemVMa);
    v17 = *v5;
    v18 = v55;
    v19 = v55[7];
    v20 = v53;
    v21 = v10;
    v22 = v53[5];
    v23 = sub_18BC1EC08();
    v24 = &v8[v22];
    v10 = v21;
    (*(*(v23 - 8) + 16))(v24, &v5[v19], v23);
    v25 = v5[v18[9]];
    v26 = v5[v18[10]];
    v27 = v5[v18[11]];
    v28 = *&v5[v18[12]];
    v29 = &v5[v18[13]];
    v30 = *v29;
    v31 = v29[1];
    v32 = *&v5[v18[14]];
    v33 = &v5[v18[15]];
    *v8 = v17;
    v8[v20[6]] = v25;
    v8[v20[7]] = v26;
    v8[v20[8]] = 0;
    v8[v20[9]] = v27;
    *&v8[v20[10]] = v28;
    v35 = *v33;
    v34 = v33[1];
    v36 = &v8[v20[11]];
    *v36 = v30;
    v36[1] = v31;
    *&v8[v20[12]] = v32;
    v37 = &v8[v20[13]];
    *v37 = v35;
    v37[1] = v34;
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    sub_18B7DFF04(v5, _s4ItemVMa);
    v60 = v21;
    v39 = *(v21 + 16);
    v38 = *(v21 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_18B85A1AC(v38 > 1, v39 + 1, 1);
      v10 = v60;
    }

    *(v10 + 16) = v39 + 1;
    result = sub_18B81F940(v8, v10 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v39, _s4ItemVMa_2);
    a1 = v50;
    v11 = v51;
    v15 = 1 << *(v50 + 32);
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v40 = *(v51 + 8 * v59);
    if ((v40 & v58) == 0)
    {
      goto LABEL_23;
    }

    if (v57 != *(v50 + 36))
    {
      goto LABEL_24;
    }

    v41 = v40 & (-2 << (v13 & 0x3F));
    if (v41)
    {
      v15 = __clz(__rbit64(v41)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v42 = v59 << 6;
      v43 = v59 + 1;
      v44 = (v48 + 8 * v59);
      while (v43 < (v15 + 63) >> 6)
      {
        v46 = *v44++;
        v45 = v46;
        v42 += 64;
        ++v43;
        if (v46)
        {
          result = sub_18B7B4FF8(v13, v57, 0);
          v15 = __clz(__rbit64(v45)) + v42;
          goto LABEL_4;
        }
      }

      result = sub_18B7B4FF8(v13, v57, 0);
    }

LABEL_4:
    v14 = v56 + 1;
    v13 = v15;
    if (v56 + 1 == v49)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

double sub_18B9D59B8()
{
  v1 = [*(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView) layer];
  v2 = [v1 presentationLayer];
  if (v2)
  {
    v3 = v2;

    v1 = v3;
  }

  v4 = sub_18BC20B98();
  v5 = [v1 valueForKeyPath_];

  if (v5)
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    sub_18B988BAC(v10, &qword_1EA9D5220);
  }

  return 1.0;
}

uint64_t sub_18B9D5AF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - v1;
  v3 = _s4PageVMa();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    Strong = swift_unknownObjectUnownedLoadStrong();

    sub_18BB068E4(v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      return sub_18B988BAC(v2, &qword_1EA9D52E0);
    }

    else
    {
      v10 = sub_18B81F940(v2, v6, _s4PageVMa);
      MEMORY[0x1EEE9AC00](v10);
      v11 = &v12 - 4;
      *(&v12 - 2) = Strong;
      *(&v12 - 1) = v6;
      if (qword_1EA9D2200 != -1)
      {
        swift_once();
        v11 = &v12 - 4;
      }

      sub_18BAF421C(qword_1EA9F7A90, sub_18B9EA6E0, v11);

      return sub_18B7DFF04(v6, _s4PageVMa);
    }
  }

  return result;
}

uint64_t sub_18B9D5D40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = _s4PageVMa();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    Strong = swift_unknownObjectUnownedLoadStrong();

    sub_18BB068E4(v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      return sub_18B988BAC(v2, &qword_1EA9D52E0);
    }

    else
    {
      sub_18B81F940(v2, v6, _s4PageVMa);
      v10 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dismissHandler];
      sub_18BC1E1A8();
      v10(v6);

      return sub_18B7DFF04(v6, _s4PageVMa);
    }
  }

  return result;
}

void sub_18B9D5F3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectUnownedLoadStrong();

    v3 = qword_1EA9D2200;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    sub_18BB0CFF0(qword_1EA9F7A90, v4, v4);
  }
}

uint64_t sub_18B9D5FF8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectUnownedLoadStrong();

    v3 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_toggleSidebarHandler];
    v4 = sub_18BC1E1A8();
    v3(v4);
  }

  return result;
}

uint64_t sub_18B9D6098(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectUnownedLoadStrong();

    v5 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_showPagePickerSheet];
    sub_18BC1E1A8();

    v5(a1);
  }

  return result;
}

void sub_18B9D6144()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18B7E5BC8();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_18B7D837C();
  }
}

uint64_t sub_18B9D61C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v3 = _s4PageVMa();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_18B9E64FC(v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      sub_18B988BAC(v2, &qword_1EA9D52E0);
    }

    else
    {
      sub_18B81F940(v2, v6, _s4PageVMa);
      v9 = sub_18B9D6464(v6);
      if (v9)
      {
        v10 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_18BC3E3E0;
        *(v11 + 32) = v10;

        sub_18B7DFF04(v6, _s4PageVMa);
        return v11;
      }

      sub_18B7DFF04(v6, _s4PageVMa);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_18B9D63E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_18BC1E1A8();
  v1(v2);

  sub_18B7B0AC0(0, &qword_1EA9D39D0);
  v3 = sub_18BC20D88();

  return v3;
}

uint64_t sub_18B9D6464(uint64_t a1)
{
  v2 = v1;
  v4 = _s4PageVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  result = 0;
  if ((*(a1 + *(v8 + 52)) & 1) == 0)
  {
    v9 = sub_18BBDA430();
    v10 = sub_18BBA3838(v9);

    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = sub_18BAAFBDC(v11);
      v14 = v13;
      v20[1] = sub_18B7B0AC0(0, &qword_1EA9D52D0);
      v15 = sub_18BC20B98();
      v16 = [objc_opt_self() systemImageNamed_];

      sub_18B7DF568(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s4PageVMa);
      v17 = (*(v5 + 80) + 48) & ~*(v5 + 80);
      v18 = swift_allocObject();
      v18[2] = v12;
      v18[3] = v14;
      v18[4] = v2;
      v18[5] = v10;
      sub_18B81F940(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, _s4PageVMa);
      sub_18BC1E3F8();
      v19 = v2;
      return sub_18BC215E8();
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_18B9D6698(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = _s4PageVMa();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = objc_opt_self();
  v14 = sub_18BC20B98();
  sub_18B7DF568(a6, v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), _s4PageVMa);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a1;
  sub_18B81F940(v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, _s4PageVMa);
  v58 = sub_18B9EB348;
  v59 = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v56 = sub_18B7B0DB0;
  v57 = &block_descriptor_685;
  v17 = _Block_copy(&aBlock);
  v18 = a4;
  sub_18BC1E3F8();
  v19 = a1;

  v20 = [v13 safari:v14 closeAllTabsConfirmationWithCloseAllLabel:v17 closeHandler:?];
  _Block_release(v17);

  v21 = v20;
  v22 = &selRef_longLongValue;
  v23 = [v21 popoverPresentationController];
  v24 = &unk_1EA9D8000;
  if (v23)
  {
    v25 = v23;
    v53[1] = v18;
    v26 = sub_18B7DEE8C();
    v27 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_registrations;
    swift_beginAccess();
    v28 = *&v26[v27];
    v29 = *(v28 + 16);
    sub_18BC1E3F8();
    if (v29)
    {
      v30 = 0;
      v31 = (v28 + 40);
      do
      {
        v32 = *v31;
        ObjectType = swift_getObjectType();
        if ((*(v32 + 72))(4, ObjectType, v32))
        {
          if (*((*(v32 + 24))(ObjectType, v32) + 16))
          {
            sub_18B7C9044(4u);
            if (v34)
            {

              goto LABEL_11;
            }
          }
        }

        ++v30;
        v31 += 2;
      }

      while (v29 != v30);
      v30 = v29;
LABEL_11:
      v24 = &unk_1EA9D8000;
      v22 = &selRef_longLongValue;
    }

    else
    {
      v30 = 0;
    }

    v35 = *(v28 + 16);
    if (v30 == v35)
    {

      v36 = 0;
    }

    else
    {
      if (v30 >= v35)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      aBlock = *(v28 + 32 + 16 * v30);
      sub_18B7D6450(&aBlock, 4, &v54);
      v36 = v54;
      if (!v54)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    [v25 setSourceItem_];

    swift_unknownObjectRelease();
  }

  v37 = [v21 v22[414]];

  if (!v37)
  {
LABEL_32:
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong presentViewController:v21 animated:1 completion:0];

    return;
  }

  v38 = sub_18B7DEE8C();
  v39 = v24[373];
  swift_beginAccess();
  v40 = *&v38[v39];
  v41 = *(v40 + 16);
  sub_18BC1E3F8();
  if (v41)
  {
    v42 = 0;
    v43 = (v40 + 40);
    while (1)
    {
      v44 = *v43;
      v45 = swift_getObjectType();
      v46 = (*(v44 + 64))(4, v45, v44);

      if (v46)
      {
        break;
      }

      ++v42;
      v43 += 2;
      if (v41 == v42)
      {
        goto LABEL_26;
      }
    }

    v41 = v42;
  }

LABEL_26:
  v47 = *(v40 + 16);
  if (v41 == v47)
  {

    v48 = 0;
LABEL_31:
    [v37 setSourceView_];

    goto LABEL_32;
  }

  if (v41 >= v47)
  {
    goto LABEL_34;
  }

  v49 = *(v40 + 32 + 16 * v41 + 8);
  v50 = swift_getObjectType();
  v51 = (*(v49 + 64))(4, v50, v49);
  if (v51)
  {
    v48 = v51;

    goto LABEL_31;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_18B9D6BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v14 = _s4ItemVMa();
  v29 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v28 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v31 = Strong;
  v32 = a2;
  v33 = a3;
  if (qword_1EA9D2200 != -1)
  {
    swift_once();
  }

  sub_18BAF421C(qword_1EA9F7A90, sub_18B9EB3B0, v30);

  v17 = *(sub_18BBDA02C() + 16);

  if (!v17)
  {
    v19 = swift_unknownObjectUnownedLoadStrong();
    v20 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(v19 + v20, v7, _s7ContentVMa);

    v21 = _s4PageVMa();
    MEMORY[0x1EEE9AC00](v21);
    *(&v28 - 2) = v22;
    sub_18B835D80(sub_18B9EB544, *(v7 + 1), v10);
    sub_18B7DFF04(v7, _s7ContentVMa);
    if ((*(*(v21 - 8) + 48))(v10, 1, v21) == 1)
    {
      sub_18B988BAC(v10, &qword_1EA9D52E0);
      (*(v29 + 56))(v13, 1, 1, v14);
      return sub_18B988BAC(v13, &qword_1EA9D7CD0);
    }

    sub_18BBDAA00(v13);
    sub_18B7DFF04(v10, _s4PageVMa);
    if ((*(v29 + 48))(v13, 1, v14) == 1)
    {
      return sub_18B988BAC(v13, &qword_1EA9D7CD0);
    }

    v23 = v13;
    v24 = v28;
    sub_18B81F940(v23, v28, _s4ItemVMa);
    v25 = swift_unknownObjectUnownedLoadStrong();
    v26 = *&v25[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemSelectionHandler];
    sub_18BC1E1A8();

    v26(v24);

    v27 = swift_unknownObjectUnownedLoadStrong();
    sub_18BAFF9A0(v24);

    return sub_18B7DFF04(v24, _s4ItemVMa);
  }

  return result;
}

uint64_t sub_18B9D7044()
{
  v0 = _s4ItemVMa();
  v29 = *(v0 - 8);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v28 - v10;
  v12 = _s7ContentV8IteratorVMa(0);
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v20 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCopyHandler + 8];
  v28[0] = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCopyHandler];
  v28[1] = v20;
  sub_18BC1E1A8();

  v21 = swift_unknownObjectUnownedLoadStrong();
  v22 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(v21 + v22, v18, _s7ContentVMa);

  sub_18B7DF568(v18, v15, _s7ContentVMa);
  *&v15[v13[7]] = 0;
  *&v15[v13[8]] = 0;
  *&v15[v13[9]] = 0;
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_18BB16160(v9);
    sub_18B7CF39C(v9, v11, &qword_1EA9D53C0);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8);
    if ((*(*(v24 - 8) + 48))(v11, 1, v24) == 1)
    {
      break;
    }

    sub_18B81F940(&v11[*(v24 + 64)], v5, _s4ItemVMa);
    if (sub_18B9BA41C(v5, *(v18 + 6)))
    {
      sub_18B7DF568(v5, v3, _s4ItemVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_18B9B5838(0, v23[2] + 1, 1, v23);
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_18B9B5838(v25 > 1, v26 + 1, 1, v23);
      }

      sub_18B7DFF04(v5, _s4ItemVMa);
      v23[2] = v26 + 1;
      sub_18B81F940(v3, v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, _s4ItemVMa);
    }

    else
    {
      sub_18B7DFF04(v5, _s4ItemVMa);
    }

    sub_18B7DFF04(&v11[*(v24 + 48)], _s7SectionVMa_0);
    sub_18B7DFF04(v11, _s4PageVMa);
  }

  sub_18B7DFF04(v15, _s7ContentV8IteratorVMa);
  sub_18B7DFF04(v18, _s7ContentVMa);
  (v28[0])(v23);
}

uint64_t sub_18B9D7524()
{
  v0 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = swift_unknownObjectUnownedLoadStrong();

  v6 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(v5 + v6, v2, _s7ContentVMa);

  v7 = *(v2 + 6);
  sub_18BC1E3F8();
  sub_18B7DFF04(v2, _s7ContentVMa);
  v8 = *(v7 + 16);

  return v8;
}

void sub_18B9D765C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectUnownedLoadStrong();

    v5 = qword_1EA9D2200;
    v6 = v4;
    v7 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    sub_18BB0DAB0(qword_1EA9F7A90, v6, v6, v7);
  }
}

uint64_t sub_18B9D7734()
{
  v0 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = Strong;
  v5 = swift_unknownObjectUnownedLoadStrong();
  v6 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(v5 + v6, v2, _s7ContentVMa);

  v7 = *(v2 + 6);
  sub_18BC1E3F8();
  sub_18B7DFF04(v2, _s7ContentVMa);
  sub_18B9D9594(v7, 1, 0, 0, 0xE000000000000000);
  v9 = v8;

  return v9;
}

uint64_t sub_18B9D7888()
{
  v1 = v0;
  v2 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(Strong + v6, v4, _s7ContentVMa);

  LOBYTE(Strong) = sub_18BB155FC();
  sub_18B7DFF04(v4, _s7ContentVMa);
  if (Strong)
  {
    sub_18B7B0AC0(0, &qword_1EA9D52D0);
    v7 = swift_unknownObjectUnownedLoadStrong();
    v8 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(v7 + v8, v4, _s7ContentVMa);

    sub_18BAAEE6C(*(*(v4 + 6) + 16));
    sub_18B7DFF04(v4, _s7ContentVMa);
    v9 = sub_18BC20B98();
    v10 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = sub_18BC215E8();
  }

  else
  {
    v12 = swift_unknownObjectUnownedLoadStrong();
    v13 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(v12 + v13, v4, _s7ContentVMa);

    LOBYTE(v13) = sub_18BB15930();
    sub_18B7DFF04(v4, _s7ContentVMa);
    v11 = 0;
    if (v13)
    {
      sub_18B7B0AC0(0, &qword_1EA9D52D0);
      v14 = swift_unknownObjectUnownedLoadStrong();
      v15 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
      swift_beginAccess();
      sub_18B7DF568(v14 + v15, v4, _s7ContentVMa);

      sub_18BAAF2E0(*(*(v4 + 6) + 16));
      sub_18B7DFF04(v4, _s7ContentVMa);
      v16 = sub_18BC20B98();
      v17 = [objc_opt_self() systemImageNamed_];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = sub_18BC215E8();
      v18 = sub_18BC20B98();
      [v11 setAccessibilityIdentifier_];
    }
  }

  v38[4] = v11;
  v19 = swift_unknownObjectUnownedLoadStrong();
  v20 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(v19 + v20, v4, _s7ContentVMa);
  v21 = v11;

  LOBYTE(v19) = sub_18BB15468();
  sub_18B7DFF04(v4, _s7ContentVMa);
  v22 = 0;
  if (v19)
  {
    sub_18B7B0AC0(0, &qword_1EA9D52D0);
    v23 = swift_unknownObjectUnownedLoadStrong();
    v24 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(v23 + v24, v4, _s7ContentVMa);

    v25 = *(v4 + 6);
    sub_18BC1E3F8();
    sub_18B7DFF04(v4, _s7ContentVMa);
    v26 = *(v25 + 16);

    sub_18BAAF748(v26, 1);
    v27 = sub_18BC20B98();
    v28 = [objc_opt_self() systemImageNamed_];

    *(swift_allocObject() + 16) = v1;
    v29 = v1;
    v22 = sub_18BC215E8();
    v30 = sub_18BC20B98();
    [v22 setAccessibilityIdentifier_];
  }

  v31 = 0;
  v38[5] = v22;
  v32 = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  while (v31 != 2)
  {
    v33 = v38[v31++ + 4];
    if (v33)
    {
      v34 = v33;
      MEMORY[0x18CFFC270]();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      sub_18BC20E18();
      v32 = v37;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D53B0);
  swift_arrayDestroy();

  return v32;
}

uint64_t sub_18B9D7FC8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = _s4PageVMa();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = Strong;
  sub_18B7CFD08(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {

    sub_18B988BAC(v2, &qword_1EA9D52E0);
    return MEMORY[0x1E69E7CC0];
  }

  sub_18B81F940(v2, v6, _s4PageVMa);
  v10 = swift_unknownObjectUnownedLoadStrong();
  v11 = *&v10[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageTitleMenuProvider];
  sub_18BC1E1A8();

  v12 = sub_18B9D8564();
  v13 = v11(v6, v12);

  sub_18B7DFF04(v6, _s4PageVMa);
  return v13;
}

uint64_t sub_18B9D81F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = Strong;
  v2 = swift_unknownObjectUnownedLoadStrong();
  v3 = *&v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_profileMenuProvider];
  sub_18BC1E1A8();

  v4 = v3();

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_18BC3E3E0;
    *(v5 + 32) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_18B9D82EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  v3 = _s4PageVMa();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_18B9E64FC(v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      sub_18B988BAC(v2, &qword_1EA9D52E0);
    }

    else
    {
      sub_18B81F940(v2, v6, _s4PageVMa);
      if ((v6[*(v3 + 44)] & 1) == 0)
      {
        v9 = swift_unknownObjectUnownedLoadStrong();
        v10 = *&v9[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_recentlyClosedMenuProvider];
        sub_18BC1E1A8();

        v11 = v10(v6);

        if (v11)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
          v12 = swift_allocObject();
          *(v12 + 16) = xmmword_18BC3E3E0;
          *(v12 + 32) = v11;

          sub_18B7DFF04(v6, _s4PageVMa);
          return v12;
        }
      }

      sub_18B7DFF04(v6, _s4PageVMa);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_18B9D8564()
{
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = _s4PageVMa();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7CFD08(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_18B988BAC(v10, &qword_1EA9D52E0);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v26 = v0;
    sub_18B81F940(v10, v14, _s4PageVMa);
    v16 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC0];
    if (v14[1] == 1)
    {
      sub_18B7B0AC0(0, &qword_1EA9D52D0);
      sub_18BC1EE38();
      sub_18BC1EE28();
      (*(v2 + 8))(v7, v1);
      v17 = sub_18BC20B98();
      v18 = [objc_opt_self() systemImageNamed_];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = sub_18BC215E8();
      v20 = sub_18BC20B98();
      [v19 setAccessibilityIdentifier_];

      v21 = v19;
      MEMORY[0x18CFFC270]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      sub_18BC20E18();

      v16 = v27;
    }

    if (v14[2] == 1)
    {
      sub_18B7B0AC0(0, &qword_1EA9D52D0);
      sub_18BC1EE38();
      sub_18BC1EE38();
      sub_18BC1EE18();
      v22 = *(v2 + 8);
      v22(v4, v1);
      v22(v7, v1);
      v23 = sub_18BC20B98();
      v24 = [objc_opt_self() systemImageNamed_];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_18BC215E8();
      MEMORY[0x18CFFC270]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      sub_18BC20E18();
      sub_18B7DFF04(v14, _s4PageVMa);
      return v27;
    }

    else
    {
      v25 = v16;
      sub_18B7DFF04(v14, _s4PageVMa);
      return v25;
    }
  }
}

void sub_18B9D8B3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t sub_18B9D8B98(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(void), int a6, void (*a7)(void), uint64_t (*a8)())
{
  v74 = a7;
  v70 = a6;
  v71 = a5;
  LODWORD(v66) = a4;
  v65 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v72 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v61 - v14;
  v68 = _s11TransactionVMa();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v73 = (&v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = _s4ItemVMa();
  v77 = *(v75 - 8);
  v16 = MEMORY[0x1EEE9AC00](v75);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v64 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v61 - v27;
  v29 = _s7ContentV8IteratorVMa(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v63 = a8;
    v36 = result;
    Strong = swift_unknownObjectUnownedLoadStrong();

    v38 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    v62 = Strong;
    sub_18B7DF568(Strong + v38, v34, _s7ContentVMa);
    sub_18B7DF568(v34, v31, _s7ContentVMa);
    *&v31[v29[5]] = 0;
    *&v31[v29[6]] = 0;
    *&v31[v29[7]] = 0;
    v39 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_18BB16160(v26);
      sub_18B7CF39C(v26, v28, &qword_1EA9D53C0);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8);
      if ((*(*(v40 - 8) + 48))(v28, 1, v40) == 1)
      {
        break;
      }

      sub_18B81F940(&v28[*(v40 + 64)], v22, _s4ItemVMa);
      if (sub_18B9BA41C(v22, *(v34 + 6)))
      {
        sub_18B7DF568(v22, v18, _s4ItemVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_18B9B5838(0, v39[2] + 1, 1, v39);
        }

        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          v39 = sub_18B9B5838(v41 > 1, v42 + 1, 1, v39);
        }

        sub_18B7DFF04(v22, _s4ItemVMa);
        v39[2] = v42 + 1;
        sub_18B81F940(v18, v39 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v42, _s4ItemVMa);
      }

      else
      {
        sub_18B7DFF04(v22, _s4ItemVMa);
      }

      sub_18B7DFF04(&v28[*(v40 + 48)], _s7SectionVMa_0);
      sub_18B7DFF04(v28, _s4PageVMa);
    }

    sub_18B7DFF04(v31, _s7ContentV8IteratorVMa);
    sub_18B7DFF04(v34, _s7ContentVMa);
    v43 = swift_allocObject();
    v44 = v62;
    *(v43 + 16) = v62;
    *(v43 + 24) = v39;
    *(v43 + 32) = v66;
    v45 = qword_1EA9D2200;
    v46 = v44;
    sub_18BC1E3F8();
    if (v45 != -1)
    {
      swift_once();
    }

    v47 = qword_1EA9F7A90;
    v65 = qword_1EA9F7A90;
    v48 = type metadata accessor for RetargetableTransitionCoordinator();
    v49 = swift_allocObject();
    v50 = MEMORY[0x1E69E7CC0];
    *(v49 + 24) = MEMORY[0x1E69E7CC0];
    *(v49 + 32) = v50;
    *(v49 + 40) = 1;
    *(v49 + 16) = v47;
    v51 = v73;
    v73[3] = v48;
    v51[4] = &off_1EFF27FD8;
    *v51 = v49;
    v52 = v68;
    v66 = *(v68 + 20);
    v53 = v77;
    (*(v77 + 56))(v51 + v66, 1, 1, v75);
    _s14ScrollPositionOMa();
    swift_storeEnumTagMultiPayload();
    *(v51 + *(v52 + 24)) = 0;
    v54 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
    swift_beginAccess();
    sub_18B7CA054(v46 + v54, v76, &unk_1EA9D5350);
    v55 = v69;
    sub_18B7DF568(v51, v69, _s11TransactionVMa);
    (*(v67 + 56))(v55, 0, 1, v52);
    swift_beginAccess();
    v56 = v46;
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18B9EAA90(v55, v46 + v54);
    swift_endAccess();
    sub_18BAF4F6C(v56, v71, v43, v39, v70 & 1);
    v57 = v72;
    sub_18B7CA054(v51 + v66, v72, &qword_1EA9D7CD0);
    if ((*(v53 + 48))(v57, 1, v75) == 1)
    {
      sub_18B988BAC(v57, &qword_1EA9D7CD0);
    }

    else
    {
      v58 = v57;
      v59 = v64;
      sub_18B81F940(v58, v64, _s4ItemVMa);
      sub_18BAFF9A0(v59);
      sub_18B7DFF04(v59, _s4ItemVMa);
    }

    swift_beginAccess();
    sub_18B9EAA90(v76, v46 + v54);
    swift_endAccess();

    v60 = *(v49 + 16);
    swift_retain_n();
    sub_18B7D8090(v60);
    sub_18B7EAA64(v74, v49, v63, v49, v60);

    sub_18B7EBAE8(v60);
    sub_18B7DFF04(v51, _s11TransactionVMa);
    *(v49 + 40) = 0;
  }

  return result;
}

double sub_18B9D9594(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5)
{
  v117 = a4;
  LODWORD(v144) = a3;
  v137 = a1;
  v116 = sub_18BC1EE48();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v113 = v110 - v10;
  v136 = sub_18BC1EC08();
  v11 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v120 = v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  MEMORY[0x1EEE9AC00](v134);
  v148 = v110 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v133 = v110 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v122 = v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v139 = v110 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v110 - v21;
  v135 = _s4PageVMa();
  v23 = *(v135 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v132 = v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v110 - v26;
  v28 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v110 - v32;
  v118 = a5;
  if (a2)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v35 = v11;
    v36 = v23;
    v37 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    v38 = Strong + v37;
    v23 = v36;
    v11 = v35;
    sub_18B7DF568(v38, v33, _s7ContentVMa);

    v112 = sub_18BAB0048(*(*(v33 + 6) + 16));
    v111 = v39;
    sub_18B7DFF04(v33, _s7ContentVMa);
  }

  else
  {
    v112 = 0;
    v111 = 0xE000000000000000;
  }

  v40 = swift_unknownObjectUnownedLoadStrong();
  v41 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_unresolvedContent;
  swift_beginAccess();
  sub_18B7DF568(v40 + v41, v30, _s7ContentVMa);

  v42 = *(v30 + 1);
  sub_18BC1E3F8();
  sub_18B7DFF04(v30, _s7ContentVMa);
  v149 = MEMORY[0x1E69E7CC0];
  v43 = *(v42 + 16);
  v138 = v5;
  if (v43)
  {
    v131 = *(v23 + 80);
    v44 = (v131 + 32) & ~v131;
    v110[1] = v42;
    v45 = v42 + v44;
    v46 = v23;
    v47 = *(v135 + 52);
    v128 = "New Tab Group (Action)";
    v146 = *(v46 + 72);
    v127 = (v11 + 16);
    v145 = (v11 + 56);
    v126 = (v11 + 48);
    v119 = (v11 + 32);
    v121 = (v11 + 8);
    v130 = v44;
    v125 = v44 + v24;
    v124 = v144 & 1;
    v123 = "square.on.square";
    v48 = v136;
    v147 = v22;
    v129 = v47;
    v140 = v27;
    while (1)
    {
      sub_18B7DF568(v45, v27, _s4PageVMa);
      if (v27[v47] == 1)
      {
        break;
      }

      sub_18B7DFF04(v27, _s4PageVMa);
LABEL_7:
      v45 += v146;
      if (!--v43)
      {
        goto LABEL_22;
      }
    }

    v144 = v43;
    v49 = v135;
    v50 = &v27[*(v135 + 76)];
    v51 = *v50;
    v142 = *(v50 + 1);
    v143 = v51;
    sub_18BC1E3F8();
    v52 = sub_18BC20B98();
    v141 = [objc_opt_self() systemImageNamed_];

    v53 = *v127;
    (*v127)(v22, &v27[*(v49 + 32)], v48);
    v54 = *v145;
    (*v145)(v22, 0, 1, v48);
    sub_18B7C9974();
    v56 = v55;
    v57 = v48;
    v58 = sub_18B7CC308();
    v59 = sub_18B7C2E68(v58);
    [v59 bounds];
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;

    v150.origin.x = v61;
    v150.origin.y = v63;
    v150.size.width = v65;
    v150.size.height = v67;
    MidX = CGRectGetMidX(v150);
    v151.origin.x = v61;
    v151.origin.y = v63;
    v151.size.width = v65;
    v151.size.height = v67;
    MidY = CGRectGetMidY(v151);
    v70 = v133;
    sub_18B7CECB4(v133, MidX, MidY);

    v71 = _s4PageVMa_0();
    if ((*(*(v71 - 8) + 48))(v70, 1, v71) == 1)
    {
      sub_18B988BAC(v70, &unk_1EA9DBE90);
      v72 = 1;
      v73 = v139;
    }

    else
    {
      v73 = v139;
      v53(v139, v70, v57);
      sub_18B7DFF04(v70, _s4PageVMa_0);
      v72 = 0;
    }

    v74 = v126;
    v54(v73, v72, 1, v57);
    v75 = *(v134 + 48);
    v77 = v147;
    v76 = v148;
    sub_18B7CA054(v147, v148, &unk_1EA9D3AE0);
    sub_18B7CA054(v73, v76 + v75, &unk_1EA9D3AE0);
    v78 = *v74;
    v79 = (*v74)(v76, 1, v57);
    v27 = v140;
    if (v79 == 1)
    {
      sub_18B988BAC(v73, &unk_1EA9D3AE0);
      sub_18B988BAC(v77, &unk_1EA9D3AE0);
      if (v78(v148 + v75, 1, v57) == 1)
      {
        sub_18B988BAC(v148, &unk_1EA9D3AE0);
LABEL_19:
        v43 = v144;
        v85 = v138;
        sub_18B7B0AC0(0, &qword_1EA9D52D0);
        v86 = v132;
        sub_18B7DF568(v27, v132, _s4PageVMa);
        v87 = v125;
        v88 = swift_allocObject();
        v89 = v137;
        *(v88 + 16) = v85;
        *(v88 + 24) = v89;
        sub_18B81F940(v86, v88 + v130, _s4PageVMa);
        *(v88 + v87) = v124;
        v90 = v85;
        sub_18BC1E3F8();
        v91 = sub_18BC215E8();
        v92 = sub_18BC20B98();
        [v91 setAccessibilityIdentifier_];

        v93 = sub_18B7DFF04(v27, _s4PageVMa);
        MEMORY[0x18CFFC270](v93);
        if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18BC20DD8();
        }

        sub_18BC20E18();
        v48 = v136;
        v22 = v147;
        v47 = v129;
        goto LABEL_7;
      }
    }

    else
    {
      v80 = v148;
      v81 = v122;
      sub_18B7CA054(v148, v122, &unk_1EA9D3AE0);
      if (v78(v80 + v75, 1, v57) != 1)
      {
        v82 = v148;
        v83 = v120;
        (*v119)(v120, v148 + v75, v57);
        sub_18B82B9B8(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
        sub_18BC20AE8();
        v84 = *v121;
        (*v121)(v83, v57);
        sub_18B988BAC(v139, &unk_1EA9D3AE0);
        sub_18B988BAC(v147, &unk_1EA9D3AE0);
        v84(v81, v57);
        sub_18B988BAC(v82, &unk_1EA9D3AE0);
        v27 = v140;
        goto LABEL_19;
      }

      sub_18B988BAC(v73, &unk_1EA9D3AE0);
      sub_18B988BAC(v147, &unk_1EA9D3AE0);
      (*v121)(v81, v57);
      v27 = v140;
    }

    sub_18B988BAC(v148, &unk_1EA9D92B0);
    goto LABEL_19;
  }

LABEL_22:

  sub_18B7B0AC0(0, &unk_1EA9DADD0);
  v148 = sub_18BC214D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_18BC3E3E0;
  v147 = sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v95 = v113;
  sub_18BC1EE38();
  v96 = v114;
  sub_18BC1EE38();
  sub_18BC1EE18();
  v97 = *(v115 + 8);
  v98 = v96;
  v99 = v116;
  v97(v98, v116);
  v97(v95, v99);
  v100 = sub_18BC20B98();
  v101 = [objc_opt_self() systemImageNamed_];

  v102 = swift_allocObject();
  v103 = v138;
  v104 = v137;
  v102[2] = v138;
  v102[3] = v104;
  v105 = v118;
  v102[4] = v117;
  v102[5] = v105;
  v106 = v103;
  sub_18BC1E3F8();
  sub_18BC1E3F8();
  *(v94 + 32) = sub_18BC215E8();
  v107 = sub_18BC214D8();
  v108 = swift_allocObject();
  *&result = 2;
  *(v108 + 16) = xmmword_18BC41E60;
  *(v108 + 32) = v148;
  *(v108 + 40) = v107;
  return result;
}

uint64_t sub_18B9DA554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7DF568(a4, v10, _s4PageVMa);
  v12 = _s4PageVMa();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  sub_18BAF7698(a3, v10, a5, 0, 0xE000000000000000);

  return sub_18B988BAC(v10, &qword_1EA9D52E0);
}

uint64_t sub_18B9DA698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v12 = _s4PageVMa();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_18BAF7698(a3, v10, 1, a4, a5);

  return sub_18B988BAC(v10, &qword_1EA9D52E0);
}

void sub_18B9DA7BC()
{
  v1 = OBJC_IVAR___SFTabOverviewDisplayItem_capsuleAndToolbarSeparator;
  if (!*&v0[OBJC_IVAR___SFTabOverviewDisplayItem_capsuleAndToolbarSeparator])
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v3 = [objc_opt_self() systemFillColor];
    [v2 setBackgroundColor_];

    v4 = *&v0[v1];
    *&v0[v1] = v2;
    v5 = v2;

    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = v0;
    sub_18B7C9B24(v16);

    sub_18B7DFD58(v16);
    if (v16[1])
    {
      v8 = &OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView;
    }

    else
    {
      v8 = &OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView;
    }

    [*&v0[*v8] addSubview_];
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_18B9EB034;
    *(v11 + 24) = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_18B9D53AC;
    *(v12 + 24) = v11;
    v15[4] = sub_18B9D53B0;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_18B7E3BF4;
    v15[3] = &block_descriptor_635;
    v13 = _Block_copy(v15);
    v14 = v7;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v10 performWithoutAnimation_];
    _Block_release(v13);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if (v10)
    {
      __break(1u);
    }
  }
}

uint64_t sub_18B9DAA44()
{
  v0 = _s4PageVMa();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(Strong + v8, v6, _s7ContentVMa);

  v9 = *(v6 + 1);
  sub_18BC1E3F8();
  result = sub_18B7DFF04(v6, _s7ContentVMa);
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    while (v12 < *(v9 + 16))
    {
      sub_18B7DF568(v13 + *(v1 + 72) * v12, v3, _s4PageVMa);
      if (v3[3] & 1) != 0 || (v3[*(v0 + 40)])
      {
        result = sub_18B7DFF04(v3, _s4PageVMa);
      }

      else
      {
        v14 = v3[*(v0 + 48)];
        result = sub_18B7DFF04(v3, _s4PageVMa);
        if ((v14 & 1) == 0)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      if (v11 == ++v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v15 = 0;
LABEL_11:

    return v15;
  }

  return result;
}

void sub_18B9DAC90()
{
  v1 = v0;
  v2 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar;
  if (!*&v0[OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar])
  {
    v6 = objc_allocWithZone(type metadata accessor for ScrollingCapsuleToolbar());
    v7 = sub_18BC1E1A8();
    v8 = sub_18BAD0180(v7);
    v9 = *&v0[v5];
    *&v1[v5] = v8;
    v10 = v8;

    sub_18B7D2260();
    v11 = sub_18B7DEE8C();
    _s35ScrollingCapsuleToolbarRegistrationCMa();
    v12 = swift_allocObject();
    v13 = sub_18B7D34D4(MEMORY[0x1E69E7CC0]);
    *(v12 + 16) = v10;
    *(v12 + 24) = v13;
    swift_unknownObjectUnownedInit();
    v14 = v10;
    v15 = sub_18BC1E1A8();
    sub_18B9E97C4(v15, v11);

    v16 = *&v1[v5];
    if (v16)
    {
      v17 = v16;
      _SFDeviceHasHomeButton();
      UIEdgeInsetsMakeWithEdges();
      v62 = v19;
      v63 = v18;
      v21 = v20;
      v23 = v22;
      Strong = swift_unknownObjectUnownedLoadStrong();
      v25 = [Strong view];

      if (!v25)
      {
        goto LABEL_9;
      }

      v26 = &v1[OBJC_IVAR___SFTabOverviewDisplayItem_layout];
      swift_beginAccess();
      sub_18B7DF568(v26, v4, _s6LayoutVMa);
      v27 = v4[15];
      v28 = *v4;
      v29 = v4[1];
      v31 = v4[2];
      v30 = v4[3];
      v65.origin.x = *v4;
      v65.origin.y = v29;
      v65.size.width = v31;
      v65.size.height = v30;
      v32 = CGRectGetHeight(v65) - v27;
      v66.origin.x = v28;
      v66.origin.y = v29;
      v66.size.width = v31;
      v66.size.height = v30;
      Width = CGRectGetWidth(v66);
      sub_18B7DFF04(v4, _s6LayoutVMa);
      [v25 _concentricEdgeInsetsForEdge_bounds_minimumEdgeInsets_];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      [v17 setLayoutMargins_];
      *(v26 + 32) = v39;
    }

    v42 = [objc_allocWithZone(MEMORY[0x1E69DD6C0]) initWithEdge_];
    sub_18B7C9974();
    v44 = v43;
    v45 = *&v43[qword_1EA9D6BC8];

    [v42 _setCollectorInteraction_];
    [v14 addInteraction_];

    v46 = OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView;
    v47 = *&v14[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView];
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = &v47[qword_1ED6515F8];
    *v51 = sub_18B9EB52C;
    v51[1] = v48;
    v51[2] = sub_18B9EB530;
    v51[3] = v49;
    v51[4] = sub_18B9EB534;
    v51[5] = v50;
    v52 = v47;

    v53 = *&v52[qword_1ED651610];
    *&v52[qword_1ED651610] = *&v1[OBJC_IVAR___SFTabOverviewDisplayItem_scrollViewLinker];
    swift_retain_n();
    sub_18B7E475C(v53);

    [*&v1[OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView] addSubview_];
    v54 = swift_allocObject();
    *(v54 + 16) = v1;
    v55 = objc_opt_self();
    v56 = swift_allocObject();
    *(v56 + 16) = sub_18B9EB02C;
    *(v56 + 24) = v54;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_18B9D53AC;
    *(v57 + 24) = v56;
    aBlock[4] = sub_18B9D53B0;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B7E3BF4;
    aBlock[3] = &block_descriptor_621;
    v58 = _Block_copy(aBlock);
    v59 = v1;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v55 performWithoutAnimation_];
    _Block_release(v58);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v61 = *&v14[v46];
      sub_18BA4352C(1.0);

      return;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

void sub_18B9DB2C8(uint64_t a1)
{
  v2 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar);
  if (v5)
  {
    v6 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(a1 + v6, v4, _s6LayoutVMa);
    v7 = v4[3];
    v8 = v4[15] + v4[4];
    v9 = *v4;
    v10 = v4[1];
    v11 = v4[2];
    v12 = v5;
    v16.origin.x = v9;
    v16.origin.y = v10;
    v16.size.width = v11;
    v16.size.height = v7;
    v13 = CGRectGetHeight(v16) - v8;
    v17.origin.x = v9;
    v17.origin.y = v10;
    v17.size.width = v11;
    v17.size.height = v7;
    Width = CGRectGetWidth(v17);
    sub_18B7DFF04(v4, _s6LayoutVMa);
    [v12 setFrame_];
  }
}

void sub_18B9DB42C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar);
  if (!v2)
  {
    return;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState];
  v14 = v2;

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if ((sub_18B9DAA44() & 1) == 0)
      {
        goto LABEL_16;
      }

      v7 = *&v14[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView];
      sub_18BA4352C(1.0);
      goto LABEL_13;
    }

    if (v5 == 3)
    {
      v9 = *&v14[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView];
      v10 = qword_1ED651630;
      v11 = *&v9[qword_1ED651630];
      v12 = v9;
      v13 = v11;
      [v13 invalidate];

      v14 = *&v9[v10];
      *&v9[v10] = 0;

      goto LABEL_16;
    }

LABEL_20:
    sub_18BC22048();
    __break(1u);
    return;
  }

  if (!v5)
  {
    v6 = *&v14[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView];
    sub_18BA429B0(0, 0);

LABEL_16:
    v8 = v14;
    goto LABEL_17;
  }

  if (v5 != 1)
  {
    goto LABEL_20;
  }

  v8 = v14;
  if (!a1)
  {
    if (sub_18B9DAA44())
    {
      goto LABEL_16;
    }

    v7 = *&v14[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView];
    sub_18BA429B0(1, 0);
LABEL_13:

    v8 = v7;
  }

LABEL_17:
}

uint64_t sub_18B9DB61C()
{
  v0 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22[-v4];
  v6 = _s4PageVMa();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v13 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(Strong + v13, v2, _s7ContentVMa);
    v14 = v11;

    v15 = _s4ItemVMa_0();
    MEMORY[0x1EEE9AC00](v15);
    sub_18B835D80(sub_18B9EB544, *(v2 + 1), v5);
    sub_18B7DFF04(v2, _s7ContentVMa);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_18B988BAC(v5, &qword_1EA9D52E0);
      return 0;
    }

    else
    {
      sub_18B81F940(v5, v9, _s4PageVMa);
      sub_18B7B0AC0(0, &unk_1EA9DADD0);
      v16 = swift_unknownObjectUnownedLoadStrong();

      v17 = *&v16[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageTitleMenuProvider];
      sub_18BC1E1A8();

      v17(v9, MEMORY[0x1E69E7CC0]);

      v18 = sub_18BC214D8();
      v19 = objc_opt_self();
      v20 = v18;
      [v19 isSolariumEnabled];
      v21 = sub_18BC20B98();

      [v20 setAccessibilityIdentifier_];

      sub_18B7DFF04(v9, _s4PageVMa);
      return v20;
    }
  }

  return result;
}

uint64_t sub_18B9DBA28(uint64_t a1)
{
  v30 = _s10DropIntentVMa_0(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = _s15DropDestinationVMa_0(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v29 - v11;
  v13 = _s4PageVMa();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s10DropIntentVMa(0);
  v18 = *(a1 + v17[7]);
  v31 = v1;
  sub_18B9E6200(v18, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_18B988BAC(v12, &qword_1EA9D52E0);
  }

  sub_18B81F940(v12, v16, _s4PageVMa);
  sub_18BBDACAC(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_18B7DFF04(v16, _s4PageVMa);
    return sub_18B988BAC(v6, &qword_1EA9D5360);
  }

  else
  {
    v20 = v6;
    v21 = v29;
    sub_18B81F940(v20, v29, _s15DropDestinationVMa_0);
    v22 = v32;
    sub_18B7DF568(v21, v32, _s15DropDestinationVMa_0);
    v23 = *(a1 + v17[5]);
    v24 = *(a1 + v17[6]);
    v25 = v30;
    *(v22 + *(v30 + 20)) = v23;
    *(v22 + *(v25 + 24)) = v24;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v27 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropHandler];
    v28 = v23;
    swift_unknownObjectRetain();
    sub_18BC1E1A8();

    v27(v22);

    sub_18B7DFF04(v22, _s10DropIntentVMa_0);
    sub_18B7DFF04(v21, _s15DropDestinationVMa_0);
    return sub_18B7DFF04(v16, _s4PageVMa);
  }
}

uint64_t sub_18B9DBE58(uint64_t a1)
{
  v22 = _s4ItemVMa_2();
  v3 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v9;
    v21 = v1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_18B855A90(0, v10, 0);
    v11 = v26;
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    v24 = (v7 + 16);
    v25 = v14;
    v23 = v7 + 32;
    v15 = v22;
    do
    {
      sub_18B7DF568(v13, v5, _s4ItemVMa_2);
      (*v24)(v12, &v5[*(v15 + 20)], v6);
      sub_18B7DFF04(v5, _s4ItemVMa_2);
      v26 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_18B855A90(v16 > 1, v17 + 1, 1);
        v15 = v22;
        v11 = v26;
      }

      *(v11 + 16) = v17 + 1;
      (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v12, v6);
      v13 += v25;
      --v10;
    }

    while (v10);
  }

  v18 = sub_18B838118(v11);

  v19 = sub_18B9DC100(v18);

  return v19;
}

uint64_t sub_18B9DC100(uint64_t a1)
{
  v2 = v1;
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(&v8[Strong], v6, _s7ContentVMa);

  sub_18BB15AC4(a1, &v52);
  sub_18B7DFF04(v6, _s7ContentVMa);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v9 = swift_allocObject();
  v10 = 0;
  *(v9 + 16) = xmmword_18BC41E60;
  if (BYTE3(v52))
  {
    sub_18B7B0AC0(0, &qword_1EA9D52D0);
    sub_18BAAF748(*(*(&v52 + 1) + 16), v53);
    v8 = v11;
    v12 = sub_18BC20B98();
    v13 = [objc_opt_self() systemImageNamed_];

    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    v15 = v53;
    *(v14 + 24) = v52;
    *(v14 + 40) = v15;
    *(v14 + 56) = v54;
    v16 = v2;
    sub_18B9EADD8(&v52, v51);
    v10 = sub_18BC215E8();
    v17 = sub_18BC20B98();
    [v10 setAccessibilityIdentifier_];
  }

  v51[10] = v10;
  if (BYTE6(v52))
  {
    v18 = v52 ^ 1;
    v19 = sub_18BC20B98();

    v20 = [objc_opt_self() systemImageNamed_];

    v21 = *(*(&v52 + 1) + 16);
    if (v18)
    {
      sub_18BAAF2E0(v21);
    }

    else
    {
      sub_18BAAEE6C(v21);
    }

    v8 = v22;
    sub_18B7B0AC0(0, &qword_1EA9D52D0);
    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    v25 = v53;
    *(v24 + 24) = v52;
    *(v24 + 40) = v25;
    *(v24 + 56) = v54;
    *(v24 + 72) = v18 & 1;
    v26 = v2;
    sub_18B9EADD8(&v52, v51);
    v23 = sub_18BC215E8();
  }

  else
  {
    v23 = 0;
  }

  v51[11] = v23;
  if (v52)
  {
    v27 = 0;
  }

  else
  {
    sub_18B7B0AC0(0, &qword_1EA9D52D0);
    sub_18BAB04BC(*(*(&v52 + 1) + 16));
    v8 = v28;
    v29 = sub_18BC20B98();
    v30 = [objc_opt_self() systemImageNamed_];

    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    v32 = v53;
    *(v31 + 24) = v52;
    *(v31 + 40) = v32;
    *(v31 + 56) = v54;
    v33 = v2;
    sub_18B9EADD8(&v52, v51);
    v27 = sub_18BC215E8();
  }

  v51[12] = v27;
  v51[13] = sub_18B9DD09C(&v52);
  sub_18B7B0AC0(0, &unk_1EA9DADD0);
  v34 = 0;
  if (BYTE2(v52))
  {
    v35 = *(&v52 + 1);
    v36 = *(*(&v52 + 1) + 16);
    v37 = v53;
    sub_18BC1E3F8();
    v8 = sub_18BAB0930(v36, v37);
    v38 = sub_18BC20B98();
    v39 = [objc_opt_self() systemImageNamed_];

    v40 = sub_18BBA3838(v35);

    sub_18B9D9594(v40, 0, (BYTE1(v52) & 1) == 0, v54, *(&v54 + 1));

    v34 = sub_18BC214D8();
  }

  v51[14] = v34;
  v41 = 0;
  v51[15] = sub_18B9DC960(&v52);
  v42 = MEMORY[0x1E69E7CC0];
  v51[0] = MEMORY[0x1E69E7CC0];
LABEL_15:
  if (v41 <= 6)
  {
    v43 = 6;
  }

  else
  {
    v43 = v41;
  }

  while (v41 != 6)
  {
    if (v43 == v41)
    {
      __break(1u);
LABEL_29:
      sub_18BC20DD8();
      goto LABEL_26;
    }

    v44 = v51[v41++ + 10];
    if (v44)
    {
      v8 = v44;
      MEMORY[0x18CFFC270]();
      if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v48 = *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_18BC20DD8();
      }

      sub_18BC20E18();
      goto LABEL_15;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D53B0);
  swift_arrayDestroy();
  *(v9 + 32) = sub_18BC214D8();
  v8 = &v49;
  v45 = sub_18B9DCB84(&v52);
  sub_18B9EAE34(&v52);
  v50 = v45;
  v51[0] = v42;
  if (!v45)
  {
    goto LABEL_27;
  }

  v46 = v45;
  MEMORY[0x18CFFC270]();
  if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  sub_18BC20E18();
LABEL_27:
  sub_18B988BAC((v8 + 32), &unk_1EA9D53B0);
  *(v9 + 40) = sub_18BC214D8();
  return sub_18BC214D8();
}

uint64_t sub_18B9DC960(uint64_t a1)
{
  if ((*(a1 + 5) & 1) == 0)
  {
    return 0;
  }

  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  sub_18BAB0DB8(*(*(a1 + 8) + 16), *(a1 + 16));
  v3 = sub_18BC20B98();
  v4 = [objc_opt_self() systemImageNamed_];

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = *(a1 + 16);
  *(v5 + 24) = *a1;
  *(v5 + 40) = v6;
  *(v5 + 56) = *(a1 + 32);
  v7 = v1;
  sub_18B9EADD8(a1, v9);
  return sub_18BC215E8();
}

void sub_18B9DCAB0(void *a1, void *a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = a2;
  sub_18B9EADD8(a3, &v10);
  v8 = qword_1EA9D2200;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  sub_18BB0E200(qword_1EA9F7A90, Strong, v7, a3, v9);

  sub_18B9EAE34(a3);
}

uint64_t sub_18B9DCB84(uint64_t a1)
{
  v3 = sub_18BC1EE48();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = _s4PageVMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(a1 + 24) + 16) == 1 && (*(a1 + 4) & 1) == 0)
  {
    v15 = v12;
    sub_18BA619B8(*(a1 + 24), v9);
    if ((*(v11 + 48))(v9, 1, v15) == 1)
    {
      sub_18B988BAC(v9, &qword_1EA9D52E0);
    }

    else
    {
      v16 = v1;
      sub_18B81F940(v9, v14, _s4PageVMa);
      v17 = sub_18BC1E3F8();
      v18 = sub_18BBA3838(v17);

      v19 = sub_18BBDB174(v18);

      if (*(v19 + 16))
      {
        sub_18B7B0AC0(0, &qword_1EA9D52D0);
        sub_18BC1EE38();
        sub_18BC1EE28();
        (*(v4 + 8))(v6, v3);
        v20 = sub_18BC20B98();
        v21 = [objc_opt_self() systemImageNamed_];

        v22 = swift_allocObject();
        *(v22 + 16) = v16;
        *(v22 + 24) = v19;
        v23 = v16;
        v24 = sub_18BC215E8();
        sub_18B7DFF04(v14, _s4PageVMa);
        return v24;
      }

      sub_18B7DFF04(v14, _s4PageVMa);
    }
  }

  return 0;
}

void sub_18B9DCF38(void *a1, void *a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = qword_1EA9D2200;
  v8 = a2;
  sub_18BC1E3F8();
  v9 = a1;
  v10 = v9;
  if (v7 != -1)
  {
    swift_once();
    v9 = v10;
  }

  sub_18BB0E790(qword_1EA9F7A90, Strong, v8, a3, v9);
}

uint64_t sub_18B9DD01C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = *&Strong[*a4];
  sub_18BC1E1A8();

  v7(*(a3 + 8));
}

id sub_18B9DD09C(uint64_t a1)
{
  v2 = sub_18BC1EE48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7 + 16;
  v9 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v26);

  sub_18B7DFD58(v26);
  if ((v26[24] & 1) == 0)
  {
    return 0;
  }

  v13 = swift_unknownObjectUnownedLoadStrong();
  v14 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(v13 + v14, v11, _s7ContentVMa);

  LOBYTE(v13) = v11[2];
  sub_18B7DFF04(v11, _s7ContentVMa);
  if (v13)
  {
    return 0;
  }

  v16 = swift_unknownObjectUnownedLoadStrong();
  v17 = *(a1 + 8);
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  sub_18BC1EE38();
  sub_18BC1EE38();
  sub_18BC1EE18();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  v19 = sub_18BC20B98();
  v20 = [objc_opt_self() systemImageNamed_];

  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v17;
  v22 = v16;
  sub_18BC1E3F8();
  v23 = sub_18BC215E8();
  v24 = sub_18BC20B98();
  [v23 setAccessibilityIdentifier_];

  return v23;
}

void sub_18B9DD438(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  sub_18B7C9974();
  v8 = v7;
  v9 = sub_18B7CEA3C();

  if (v9)
  {
    v10 = sub_18B82FEA0();
    v11 = MEMORY[0x1E69E7D40];
    v12 = *(v10 + *((*MEMORY[0x1E69E7D40] & *v10) + 0xF0));
    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = v10;
    v14 = v12;
    v15 = [v14 menuAppearance];

    if (v15)
    {
      *(v13 + *((*v11 & *v13) + 0x140)) = 1;
    }
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v17 = a2;
  sub_18B9EADD8(a3, &v18);
  if (qword_1EA9D2200 != -1)
  {
    swift_once();
  }

  sub_18BB0ECF4(qword_1EA9F7A90, Strong, v17, a3, a4 & 1);
  sub_18B9EAE34(a3);
}

void sub_18B9DD5AC(uint64_t a1)
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  MEMORY[0x1EEE9AC00](v46);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  v20 = *(v4 + 16);
  v20(&v43 - v18, a1, v3, v17);
  v47 = v4;
  v21 = *(v4 + 56);
  v21(v19, 0, 1, v3);
  v45 = v1;
  sub_18B7CFD08(v10);
  v22 = _s4PageVMa();
  if ((*(*(v22 - 8) + 48))(v10, 1, v22) == 1)
  {
    sub_18B988BAC(v10, &qword_1EA9D52E0);
    v23 = 1;
  }

  else
  {
    (v20)(v15, &v10[*(v22 + 32)], v3);
    sub_18B7DFF04(v10, _s4PageVMa);
    v23 = 0;
  }

  v21(v15, v23, 1, v3);
  v24 = *(v46 + 48);
  sub_18B7CA054(v19, v7, &unk_1EA9D3AE0);
  sub_18B7CA054(v15, &v7[v24], &unk_1EA9D3AE0);
  v25 = v47;
  v26 = *(v47 + 48);
  if (v26(v7, 1, v3) != 1)
  {
    v27 = v44;
    sub_18B7CA054(v7, v44, &unk_1EA9D3AE0);
    if (v26(&v7[v24], 1, v3) != 1)
    {
      v28 = &v7[v24];
      v29 = v43;
      (*(v25 + 32))(v43, v28, v3);
      sub_18B82B9B8(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
      v30 = sub_18BC20AE8();
      v31 = *(v25 + 8);
      v31(v29, v3);
      sub_18B988BAC(v15, &unk_1EA9D3AE0);
      sub_18B988BAC(v19, &unk_1EA9D3AE0);
      v31(v27, v3);
      sub_18B988BAC(v7, &unk_1EA9D3AE0);
      if ((v30 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    sub_18B988BAC(v15, &unk_1EA9D3AE0);
    sub_18B988BAC(v19, &unk_1EA9D3AE0);
    (*(v25 + 8))(v27, v3);
LABEL_9:
    sub_18B988BAC(v7, &unk_1EA9D92B0);
    return;
  }

  sub_18B988BAC(v15, &unk_1EA9D3AE0);
  sub_18B988BAC(v19, &unk_1EA9D3AE0);
  if (v26(&v7[v24], 1, v3) != 1)
  {
    goto LABEL_9;
  }

  sub_18B988BAC(v7, &unk_1EA9D3AE0);
LABEL_11:
  sub_18B7C9974();
  v33 = *&v32[qword_1EA9D6C40];
  v34 = *(v33 + 24);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    v37 = v32;
    *(v33 + 24) = v36;
    if (v36 == 1)
    {
      swift_beginAccess();
      v38 = *(v33 + 16);
      v39 = *(v38 + 16);
      if (v39)
      {
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v40 = v38 + 40;
        do
        {
          v41 = *(v40 - 8);
          v48[0] = *(v33 + 24) > 0;
          sub_18BC1E1A8();
          v41(v48);

          v40 += 16;
          --v39;
        }

        while (v39);
      }
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v48);

    sub_18B7DFD58(v48);
    if ((v48[19] & 1) != 0 && (v48[20] & 1) == 0)
    {
      sub_18B7E5BC8();
    }
  }
}

void sub_18B9DDC14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v5 = sub_18BC1EC08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v39 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v22 = *(v6 + 16);
  v22(&v34 - v20, a1, v5, v19);
  v41 = v6;
  v23 = *(v6 + 56);
  v23(v21, 0, 1, v5);
  v38 = v3;
  sub_18B7CFD08(v12);
  v24 = _s4PageVMa();
  if ((*(*(v24 - 8) + 48))(v12, 1, v24) == 1)
  {
    sub_18B988BAC(v12, &qword_1EA9D52E0);
    v25 = 1;
  }

  else
  {
    (v22)(v17, &v12[*(v24 + 32)], v5);
    sub_18B7DFF04(v12, _s4PageVMa);
    v25 = 0;
  }

  v23(v17, v25, 1, v5);
  v26 = *(v40 + 48);
  sub_18B7CA054(v21, v9, &unk_1EA9D3AE0);
  sub_18B7CA054(v17, &v9[v26], &unk_1EA9D3AE0);
  v27 = v41;
  v28 = *(v41 + 48);
  if (v28(v9, 1, v5) != 1)
  {
    v29 = v39;
    sub_18B7CA054(v9, v39, &unk_1EA9D3AE0);
    if (v28(&v9[v26], 1, v5) != 1)
    {
      v30 = v35;
      (*(v27 + 32))(v35, &v9[v26], v5);
      sub_18B82B9B8(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
      v31 = v29;
      v32 = sub_18BC20AE8();
      v33 = *(v27 + 8);
      v33(v30, v5);
      sub_18B988BAC(v17, &unk_1EA9D3AE0);
      sub_18B988BAC(v21, &unk_1EA9D3AE0);
      v33(v31, v5);
      sub_18B988BAC(v9, &unk_1EA9D3AE0);
      if ((v32 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    sub_18B988BAC(v17, &unk_1EA9D3AE0);
    sub_18B988BAC(v21, &unk_1EA9D3AE0);
    (*(v27 + 8))(v29, v5);
LABEL_9:
    sub_18B988BAC(v9, &unk_1EA9D92B0);
    return;
  }

  sub_18B988BAC(v17, &unk_1EA9D3AE0);
  sub_18B988BAC(v21, &unk_1EA9D3AE0);
  if (v28(&v9[v26], 1, v5) != 1)
  {
    goto LABEL_9;
  }

  sub_18B988BAC(v9, &unk_1EA9D3AE0);
LABEL_11:
  sub_18B9DF65C(v36, v37);
}

uint64_t sub_18B9DE184(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25[-v5];
  v7 = _s4PageVMa_0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18B7C9974();
  v12 = v11;
  v13 = sub_18B7CC308();

  v14 = *(v13 + 192);
  sub_18BC1E3F8();

  v26 = a1;
  sub_18B830354(sub_18B9EB46C, v14, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_18B988BAC(v6, &unk_1EA9DBE90);
  }

  sub_18B81F940(v6, v10, _s4PageVMa_0);
  v16 = *(v2 + OBJC_IVAR___SFTabOverviewDisplayItem_interactiveInsertionGroup);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;
  sub_18B7CC404(v17);
  v18 = qword_1EA9D21E8;
  v19 = *(v2 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher);
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_1EA9F7A78;
  v21 = type metadata accessor for RetargetableTransitionCoordinator();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  *(v22 + 32) = v23;
  *(v22 + 40) = 1;
  *(v22 + 16) = v20;
  v27[3] = v21;
  v27[4] = &off_1EFF27FD8;
  v27[0] = v22;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BA5484C(v10, v27, 1);
  sub_18B988BAC(v27, &unk_1EA9D5060);
  v24 = *(v22 + 16);
  swift_retain_n();
  sub_18B7D8090(v24);
  sub_18B7EAA64(sub_18B9EB460, v22, sub_18B9EB538, v22, v24);

  sub_18B7EBAE8(v24);

  sub_18B7DFF04(v10, _s4PageVMa_0);
  *(v22 + 40) = 0;
}

void sub_18B9DE4B8()
{
  v1 = OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView;
  if (!*&v0[OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView])
  {
    type metadata accessor for FloatingTabBarNavigationBarTitleView();
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = *&v2[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = &v3[qword_1EA9F84B8];
    *v5 = sub_18B9EAD24;
    v5[1] = v4;
    v6 = v3;

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = &v6[qword_1EA9F84C0];
    *v8 = sub_18B9EAD54;
    v8[1] = v7;

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = &v6[qword_1EA9F84C8];
    *v10 = sub_18B9EAD84;
    v10[1] = v9;

    v11 = *&v0[OBJC_IVAR___SFTabOverviewDisplayItem_navigationItem];
    if (v11)
    {
      [v11 setTitleView_];
    }

    v12 = *&v0[v1];
    *&v0[v1] = v2;
    v13 = v2;

    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_18B9EADB4;
    *(v16 + 24) = v14;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_18B9D53AC;
    *(v17 + 24) = v16;
    v21[4] = sub_18B9D53B0;
    v21[5] = v17;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 1107296256;
    v21[2] = sub_18B7E3BF4;
    v21[3] = &block_descriptor_561;
    v18 = _Block_copy(v21);
    v19 = v0;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v15 performWithoutAnimation_];
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_18B9DE7D8(uint64_t a1)
{
  sub_18B7D837C();
  v2 = *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView);
  if (v2)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v9 = v2;
    v4 = [Strong view];

    if (v4)
    {
      [v4 safeAreaInsets];
      v6 = v5;

      v7 = *&v9[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics + 48];
      v10[2] = *&v9[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics + 32];
      v10[3] = v7;
      v11 = *&v9[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics + 64];
      v8 = *&v9[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics + 16];
      v10[0] = *&v9[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics];
      v10[1] = v8;
      *&v9[OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_metrics + 64] = v6;
      sub_18BA1AF64(v10);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_18B9DE8E4()
{
  v1 = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v10);

  sub_18B7DFD58(v10);
  if (v10[18])
  {
    v3 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar);
      sub_18BBCBEC0();
    }
  }

  else
  {
    v5 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v11);

    sub_18B7DFD58(v11);
    if (v11[20])
    {
      v6 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView);
      if (v6 && (v6[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2] & 1) == 0)
      {
        v7 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField;
        v8 = *&v6[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField];
        v9 = v6;
        [v8 becomeFirstResponder];
        [*&v6[v7] selectAll];
      }
    }

    else
    {
      sub_18B9DEDEC(sub_18B9DEA28, 0);
    }
  }
}

void sub_18B9DEA28()
{
  v0 = sub_18B852D5C();
  if (v0)
  {
    v1 = OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField;
    v2 = v0;
    [*(v0 + OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField) becomeFirstResponder];
    [*&v2[v1] selectAll_];
  }
}

void sub_18B9DEAB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___SFTabOverviewDisplayItem_searchController);
  if (v5)
  {
    v12 = v5;
    [v12 setActive_];
    v6 = [v12 searchBar];
    [v6 becomeFirstResponder];

    if (a2)
    {
      v7 = [v12 searchBar];
      v8 = sub_18BC20B98();
      [v7 setText_];
    }
  }

  else
  {
    sub_18B7C9974();
    v10 = v9;
    v12 = sub_18B7CEA3C();

    if (!v12)
    {
      return;
    }

    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    sub_18BC1E3F8();
    sub_18B9DEDEC(sub_18B9EAD1C, v11);
  }
}

void sub_18B9DEC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = sub_18B9BB2C4();
    if (!v4)
    {
      return;
    }

    v5 = *(v4 + OBJC_IVAR____TtC12MobileSafari9SearchBar_shouldBeginSearching);
    v17 = v4;
    v6 = sub_18BC1E1A8();
    LOBYTE(v5) = v5(v6);

    if (v5)
    {
      v7 = OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField;
      [*&v17[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField] becomeFirstResponder];
      v8 = *&v17[OBJC_IVAR____TtC12MobileSafari9SearchBar_didBeginSearching];
      v9 = sub_18BC1E1A8();
      v8(v9);

      v10 = *&v17[v7];
      v11 = sub_18BC20B98();
      [v10 setText_];

      sub_18BB89698();
    }
  }

  else
  {
    v12 = sub_18B9BB2C4();
    if (!v12)
    {
      return;
    }

    v13 = *(v12 + OBJC_IVAR____TtC12MobileSafari9SearchBar_shouldBeginSearching);
    v17 = v12;
    v14 = sub_18BC1E1A8();
    LOBYTE(v13) = v13(v14);

    if (v13)
    {
      [*&v17[OBJC_IVAR____TtC12MobileSafari9SearchBar_searchField] becomeFirstResponder];
      v15 = *&v17[OBJC_IVAR____TtC12MobileSafari9SearchBar_didBeginSearching];
      v16 = sub_18BC1E1A8();
      v15(v16);
    }
  }
}

void sub_18B9DEDEC(uint64_t a1, uint64_t a2)
{
  sub_18B7C9974();
  v5 = v4;
  v6 = sub_18B7CEA3C();
  v8 = v7;

  if (v6)
  {
    if (qword_1EA9D21F8 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA9F7A88;
    v10 = type metadata accessor for RetargetableTransitionCoordinator();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E7CC0];
    *(v11 + 32) = MEMORY[0x1E69E7CC0];
    *(v11 + 40) = 1;
    *(v11 + 16) = v9;
    *(v11 + 24) = v12;
    v33 = 0;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    sub_18BC1E1A8();
    v13 = sub_18B82E2EC(v12);
    v25 = MEMORY[0x1E69E6370];
    LOBYTE(v24) = 0;
    sub_18B7B1AD4(&v24, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v13;
    sub_18BAA7848(v28, 0xD000000000000014, 0x800000018BC62740, isUniquelyReferenced_nonNull_native);
    v29 = v27;
    v25 = v10;
    v26 = &off_1EFF27FD8;
    *&v24 = v11;
    sub_18BC1E1A8();
    sub_18B861588(&v29, &v24);
    sub_18B8303BC(&v29);
    sub_18B988BAC(&v24, &unk_1EA9D5060);
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = v6;
    v15[5] = v8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_18B9EACEC;
    *(v16 + 24) = v15;
    swift_beginAccess();
    v17 = *(v11 + 32);
    sub_18BC1E1A8();
    v18 = v6;
    sub_18BC1E1A8();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 32) = v17;
    if ((v19 & 1) == 0)
    {
      v17 = sub_18B9B5814(0, v17[2] + 1, 1, v17);
      *(v11 + 32) = v17;
    }

    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      v17 = sub_18B9B5814((v20 > 1), v21 + 1, 1, v17);
    }

    v17[2] = v21 + 1;
    v22 = &v17[2 * v21];
    v22[4] = sub_18B9D53B0;
    v22[5] = v16;
    *(v11 + 32) = v17;
    swift_endAccess();

    v23 = *(v11 + 16);
    swift_retain_n();
    sub_18B7D8090(v23);
    sub_18B7EAA64(sub_18B9EB460, v11, sub_18B9EB538, v11, v23);

    sub_18B7EBAE8(v23);
    *(v11 + 40) = 0;
  }
}

char *sub_18B9DF110()
{
  type metadata accessor for TabOverviewNavigationBarTitleView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v0[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didBeginRetitling];
  *v2 = sub_18B9EACA4;
  v2[1] = v1;

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v0[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didCancelRetitling];
  *v4 = sub_18B9EACAC;
  v4[1] = v3;

  v5 = sub_18B9DF440();
  [*&v0[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_titleButton] setMenu_];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v0[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_retitleHandler];
  *v7 = sub_18B9EACB4;
  v7[1] = v6;

  return v0;
}

void sub_18B9DF270()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18B7C9974();
    v3 = *&v2[qword_1EA9D6C40];
    v4 = *(v3 + 24);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      v7 = v2;
      *(v3 + 24) = v6;
      if (v6 == 1)
      {
        swift_beginAccess();
        v8 = *(v3 + 16);
        v9 = *(v8 + 16);
        if (v9)
        {
          sub_18BC1E1A8();
          sub_18BC1E3F8();
          v10 = v8 + 40;
          do
          {
            v11 = *(v10 - 8);
            v13[0] = *(v3 + 24) > 0;
            sub_18BC1E1A8();
            v11(v13);

            v10 += 16;
            --v9;
          }

          while (v9);
        }
      }

      v12 = swift_unknownObjectUnownedLoadStrong();
      sub_18B7C9B24(v13);

      if (v13[19])
      {
        sub_18B7DFD58(v13);
        if ((v13[20] & 1) == 0)
        {
          sub_18B7E5BC8();
        }
      }

      else
      {

        sub_18B7DFD58(v13);
      }
    }
  }
}

void sub_18B9DF3E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18B9DF65C(0, 0xE000000000000000);
  }
}

id sub_18B9DF440()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_18B9EACBC;
  v7[5] = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18B9D63E4;
  v7[3] = &block_descriptor_519;
  v2 = _Block_copy(v7);

  v3 = [v0 safari:v2 menuWithUncachedChildrenProvider:?];
  _Block_release(v2);
  v4 = v3;
  v5 = sub_18BC20B98();
  [v4 setAccessibilityIdentifier_];

  return v4;
}

uint64_t sub_18B9DF57C(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = Strong;
  v5 = a2();

  return v5;
}

void sub_18B9DF5EC(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_18B9DF65C(a1, a2);
  }
}

void sub_18B9DF65C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = _s4PageVMa_0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7C9974();
  v14 = *&v13[qword_1EA9D6C40];
  v15 = *(v14 + 24);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 24) = v17;
    if (v17)
    {
    }

    else
    {
      v28 = a1;
      v29 = a2;
      v30 = v13;
      swift_beginAccess();
      v18 = *(v14 + 16);
      v19 = *(v18 + 16);
      if (v19)
      {
        v27 = v2;
        sub_18BC1E1A8();
        sub_18BC1E3F8();
        v20 = v18 + 40;
        do
        {
          v21 = *(v20 - 8);
          v31[0] = *(v14 + 24) > 0;
          sub_18BC1E1A8();
          v21(v31);

          v20 += 16;
          --v19;
        }

        while (v19);

        v3 = v27;
      }

      else
      {
      }

      a1 = v28;
      a2 = v29;
    }

    v22 = *(v3 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher);
    v23 = qword_1EA9F7FE8;
    swift_beginAccess();
    sub_18B7CA054(v22 + v23, v8, &unk_1EA9DBE90);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_18B988BAC(v8, &unk_1EA9DBE90);
    }

    else
    {
      sub_18B81F940(v8, v12, _s4PageVMa_0);
      v24 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v24 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        sub_18B9E7E24(v12, a1, a2);
      }

      else
      {
        v25 = v22;
        sub_18BA531C0(v12, a1, a2);
      }

      Strong = swift_unknownObjectUnownedLoadStrong();
      sub_18B7C9B24(v31);

      sub_18B7DFD58(v31);
      if ((v31[19] & 1) != 0 && (v31[20] & 1) == 0)
      {
        sub_18B7E5BC8();
      }

      sub_18B7DFF04(v12, _s4PageVMa_0);
    }
  }
}

uint64_t sub_18B9DF998()
{
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = _s4PageVMa();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7CFD08(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_18B988BAC(v7, &qword_1EA9D52E0);
    return MEMORY[0x1E69E7CC0];
  }

  sub_18B81F940(v7, v11, _s4PageVMa);
  v12 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView);
  if (!v12)
  {
    sub_18B7DFF04(v11, _s4PageVMa);
    return MEMORY[0x1E69E7CC0];
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageTitleMenuProvider];
  v15 = v12;
  sub_18BC1E1A8();

  if (v15[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18BC3E3E0;
    v21[1] = sub_18B7B0AC0(0, &qword_1EA9D52D0);
    sub_18BC1EE38();
    sub_18BC1EE28();
    (*(v2 + 8))(v4, v1);
    v17 = sub_18BC20B98();
    v18 = [objc_opt_self() systemImageNamed_];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v16 + 32) = sub_18BC215E8();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v20 = v14(v11, v16);

  sub_18B7DFF04(v11, _s4PageVMa);
  return v20;
}

void sub_18B9DFDB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &aBlock[-1] - v2;
  v4 = _s4PageVMa_0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &aBlock[-1] - v9;
  v11 = OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView;
  if (!*&v0[OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView])
  {
    v12 = sub_18B9DF110();
    v13 = *&v0[OBJC_IVAR___SFTabOverviewDisplayItem_navigationItem];
    if (v13)
    {
      [v13 setTitleView_];
    }

    v14 = *&v0[v11];
    *&v0[v11] = v12;
    v15 = v12;

    sub_18B7C9974();
    v17 = v16;
    v18 = qword_1EA9F7FE8;
    swift_beginAccess();
    sub_18B7CA054(v17 + v18, v3, &unk_1EA9DBE90);

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_18B988BAC(v3, &unk_1EA9DBE90);
    }

    else
    {
      sub_18B81F940(v3, v10, _s4PageVMa_0);
      sub_18B7DF568(v10, v7, _s4PageVMa_0);
      v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v0;
      sub_18B81F940(v7, v20 + v19, _s4PageVMa_0);
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      *(v22 + 16) = sub_18B9EAC38;
      *(v22 + 24) = v20;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_18B9D53AC;
      *(v23 + 24) = v22;
      aBlock[4] = sub_18B9D53B0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18B7E3BF4;
      aBlock[3] = &block_descriptor_495;
      v24 = _Block_copy(aBlock);
      v25 = v0;
      sub_18BC1E1A8();
      sub_18BC1E1A8();

      [v21 performWithoutAnimation_];
      _Block_release(v24);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        sub_18B7DFF04(v10, _s4PageVMa_0);
      }
    }
  }
}

void sub_18B9E01A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView);
  if (v2)
  {
    v4 = *&v2[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 64];
    v6 = *&v2[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 32];
    v5 = *&v2[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 48];
    v28 = *&v2[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 16];
    v29 = v6;
    v30 = v5;
    v31 = v4;
    v27 = *&v2[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration];
    v22 = *(&v6 + 1);
    v23 = v6;
    v21 = v5;
    v7 = *(&v28 + 1);
    v26 = *&v2[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 6];
    v25 = *&v2[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2];
    v8 = _s4PageVMa_0();
    v9 = a2 + *(v8 + 20);
    v10 = *(v9 + 1);
    v20 = *(v9 + 3);
    v11 = *(v9 + 176);
    v24 = *(v9 + 168);
    v12 = v2;
    sub_18B9EA6E8(&v27, v32);
    sub_18BC1E3F8();

    v13 = a2 + *(v8 + 32);
    v14 = *v13;
    v15 = *(v13 + 8);
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    sub_18B82B844(*v13, v15, v17, v16);
    sub_18B7E9C58(v7, v23, v22, v21);
    v19 = *(v9 + 152);
    v18 = *(v9 + 160);
    sub_18BC1E3F8();

    v32[0] = v10;
    v32[1] = v20;
    v33 = v25;
    v34 = v26;
    v35 = v24;
    v36 = v11;
    v37 = v14;
    v38 = v15;
    v39 = v17;
    v40 = v16;
    v41 = v19;
    v42 = v18;
    sub_18BAEF2DC(v32);
    sub_18B9EA744(v32);
  }
}

id sub_18B9E0388(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    [v3 alphaComponent];
    if (v4 == 0.0)
    {

      v5 = [objc_opt_self() secondaryLabelColor];

      return v5;
    }

    else
    {
      return v3;
    }
  }

  else
  {

    return a1;
  }
}

id sub_18B9E0420()
{
  v0 = [objc_opt_self() secondaryLabelColor];

  return v0;
}

void sub_18B9E0460(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(v4 + OBJC_IVAR___SFTabOverviewDisplayItem_smallProfileButtonItem);
    if (v5)
    {
      v10 = v5;
      sub_18B82B844(a1, a2, a3, a4);
      v11 = v10;
      v12 = sub_18BC20B98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5DF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18BC3E410;
      *(inited + 32) = 0x656C69666F7250;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = a3;
      *(inited + 56) = a4;
      sub_18BC1E3F8();
      sub_18BA64DB8(inited);
      swift_setDeallocating();
      sub_18B988BAC(inited + 32, &qword_1EA9D5320);
      v14 = sub_18BC20998();

      v15 = WBSMakeAccessibilityIdentifier();

      if (!v15)
      {
        sub_18BC20BD8();
        v15 = sub_18BC20B98();
      }

      [v11 setAccessibilityIdentifier_];

      [v11 setImage_];
      if (a2 && ([a2 alphaComponent], v16 == 0.0))
      {
        v17 = 0;
      }

      else
      {
        v17 = a2;
      }

      [v11 setTintColor_];
    }
  }
}

void sub_18B9E0690()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v34 - v3;
  v5 = OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderButton;
  if (!*&v0[OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderButton])
  {
    v6 = sub_18B7E47F0();
    if (qword_1EA9D2230 != -1)
    {
      swift_once();
    }

    v38[4] = xmmword_1EA9F7B60;
    v38[5] = *&qword_1EA9F7B70;
    v39 = qword_1EA9F7B80;
    v38[0] = xmmword_1EA9F7B20;
    v38[1] = *algn_1EA9F7B30;
    v38[2] = xmmword_1EA9F7B40;
    v38[3] = xmmword_1EA9F7B50;
    v7 = objc_allocWithZone(_s17BarBackgroundViewCMa());
    sub_18B9D4798(v38, v37);
    v8 = sub_18B9FA830(v38);
    sub_18B9D47F4(v38);
    v9 = *&v1[OBJC_IVAR___SFTabOverviewDisplayItem_topBarBackgroundView];
    if (v9)
    {
      v10 = *&v9[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 48];
      v12 = *&v9[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group];
      v11 = *&v9[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 16];
      v37[2] = *&v9[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 32];
      v37[3] = v10;
      v37[0] = v12;
      v37[1] = v11;
      v8[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_coordinatesGroupBackdropCaptureView] = 0;
      v13 = v9;
      sub_18B9D5158(v37, v36);
      sub_18B9FA27C(v37);
      sub_18B9EABE4(v37);
    }

    [*&v1[OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView] addSubview_];
    [*&v1[OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView] addSubview_];
    v14 = *&v1[OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderBackgroundView];
    *&v1[OBJC_IVAR___SFTabOverviewDisplayItem_profileHeaderBackgroundView] = v8;
    v35 = v8;

    v15 = *&v1[v5];
    *&v1[v5] = v6;
    v16 = v6;

    sub_18B7CFD08(v4);
    v17 = _s4PageVMa();
    if ((*(*(v17 - 8) + 48))(v4, 1, v17) == 1)
    {
      sub_18B988BAC(v4, &qword_1EA9D52E0);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v22 = &v4[*(v17 + 64)];
      v18 = *v22;
      v19 = *(v22 + 1);
      v20 = *(v22 + 2);
      v21 = *(v22 + 3);
      sub_18B82B844(*v22, v19, v20, v21);
      sub_18B7DFF04(v4, _s4PageVMa);
    }

    v23 = *&v1[v5];
    v24 = v23;
    sub_18B9E9BD4(v23, v18, v19, v20, v21);

    v25 = *&v1[OBJC_IVAR___SFTabOverviewDisplayItem_profileButtonForNavigationBar];
    v26 = v25;
    sub_18B9E9BD4(v25, v18, v19, v20, v21);

    sub_18B9E0460(v18, v19, v20, v21);
    sub_18B7E9C58(v18, v19, v20, v21);
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    v28 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_18B9EABC0;
    *(v29 + 24) = v27;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_18B9D53AC;
    *(v30 + 24) = v29;
    v36[4] = sub_18B9D53B0;
    v36[5] = v30;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 1107296256;
    v36[2] = sub_18B7E3BF4;
    v36[3] = &block_descriptor_471;
    v31 = _Block_copy(v36);
    v32 = v1;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v28 performWithoutAnimation_];
    _Block_release(v31);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void sub_18B9E0B4C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_interactiveInsertionGroup);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  sub_18B7CC404(v3);
  v4 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView);
  if (v4 && *(v4 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2) == 1)
  {
    v5 = *(v4 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField);

    [v5 resignFirstResponder];
  }
}

void sub_18B9E0E0C()
{
  sub_18BC1E688();
  if (v7)
  {
    sub_18B7B0AC0(0, &qword_1EA9D5390);
    if (swift_dynamicCast())
    {
      v0 = v5;
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    sub_18B988BAC(v6, &qword_1EA9D5220);
    v0 = 0;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong view];

  if (v2)
  {
    v3 = [v2 window];

    v4 = [v3 windowScene];
    if (v0)
    {
      if (v4)
      {
        sub_18B7B0AC0(0, &qword_1EA9D5390);
        sub_18BC215C8();
      }

      v4 = v0;
      goto LABEL_13;
    }

    if (v4)
    {
LABEL_13:
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_18B9E0F90()
{
  v1 = v0;
  sub_18B7C9974();
  v3 = v2;
  v4 = sub_18B7C2E68(v2);

  v5 = [v4 topEdgeEffect];
  v6 = OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets;
  [v5 setHidden_];

  v7 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher);
  v8 = sub_18B7C2E68(v7);

  v9 = [v8 bottomEdgeEffect];
  [v9 setHidden_];
}

void sub_18B9E108C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v93 - v4;
  v6 = _s4PageVMa_0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v109 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v99 = &v93 - v10;
  v98 = _s4PageVMa();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s4ItemVMa_0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5378);
  MEMORY[0x1EEE9AC00](v108);
  v16 = &v93 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5380);
  MEMORY[0x1EEE9AC00](v17 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v93 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v93 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v93 - v25;
  v27 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar);
  if (v27)
  {
    v95 = v24;
    v102 = v7;
    v103 = v6;
    v104 = v5;
    v106 = v1;
    v28 = *(v27 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView);
  }

  else
  {
    v28 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView);
    if (!v28)
    {
      return;
    }

    v95 = v24;
    v102 = v7;
    v103 = v6;
    v104 = v5;
    v106 = v1;
  }

  v29 = v28;
  v105 = a1;
  sub_18B7DF568(a1, v26, _s4ItemVMa_0);
  v94 = *(v13 + 56);
  v94(v26, 0, 1, v12);
  v30 = sub_18B7D292C();
  v107 = v29;
  v31 = sub_18B7C2E68(v30);
  [v31 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v115.origin.x = v33;
  v115.origin.y = v35;
  v115.size.width = v37;
  v115.size.height = v39;
  MidX = CGRectGetMidX(v115);
  v116.origin.x = v33;
  v116.origin.y = v35;
  v116.size.width = v37;
  v116.size.height = v39;
  MidY = CGRectGetMidY(v116);
  v42 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v30 + v42, v111);
  v44 = v112;
  v43 = v113;
  __swift_project_boxed_opaque_existential_1Tm(v111, v112);
  (v43[16])(v44, v43, MidX, MidY);

  __swift_destroy_boxed_opaque_existential_1Tm(v111);
  v45 = *(v108 + 48);
  sub_18B7CA054(v26, v16, &unk_1EA9D5380);
  sub_18B7CA054(v22, &v16[v45], &unk_1EA9D5380);
  v46 = *(v13 + 48);
  if (v46(v16, 1, v12) == 1)
  {
    sub_18B988BAC(v22, &unk_1EA9D5380);
    sub_18B988BAC(v26, &unk_1EA9D5380);
    v47 = v46(&v16[v45], 1, v12);
    v48 = v109;
    v49 = v106;
    if (v47 == 1)
    {
      sub_18B988BAC(v16, &unk_1EA9D5380);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v50 = v101;
  sub_18B7CA054(v16, v101, &unk_1EA9D5380);
  if (v46(&v16[v45], 1, v12) == 1)
  {
    sub_18B988BAC(v22, &unk_1EA9D5380);
    sub_18B988BAC(v26, &unk_1EA9D5380);
    sub_18B7DFF04(v50, _s4ItemVMa_0);
    v48 = v109;
    v49 = v106;
LABEL_10:
    sub_18B988BAC(v16, &qword_1EA9D5378);
LABEL_13:
    sub_18B7C9974();
    v58 = v57;
    v59 = sub_18B7CC308();

    v60 = *(v59 + 192);
    sub_18BC1E3F8();

    MEMORY[0x1EEE9AC00](v61);
    *(&v93 - 2) = v62;
    v63 = v104;
    sub_18B830354(sub_18B830BC4, v60, v104);

    if ((*(v102 + 48))(v63, 1, v103) == 1)
    {

      v64 = &unk_1EA9DBE90;
      v65 = v63;
LABEL_15:
      sub_18B988BAC(v65, v64);
      return;
    }

    sub_18B81F940(v63, v48, _s4PageVMa_0);
    v66 = *(v49 + OBJC_IVAR___SFTabOverviewDisplayItem_interactiveInsertionGroup);
    v67 = *(v66 + 40);
    *(v66 + 40) = 0;
    sub_18B7CC404(v67);
    v68 = qword_1EA9D21E8;
    v69 = *(v49 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher);
    if (v68 != -1)
    {
      swift_once();
    }

    v70 = qword_1EA9F7A78;
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v72 = type metadata accessor for RetargetableTransitionCoordinator();
    v73 = swift_allocObject();
    v74 = MEMORY[0x1E69E7CC0];
    *(v73 + 32) = MEMORY[0x1E69E7CC0];
    *(v73 + 40) = 1;
    *(v73 + 16) = v70;
    *(v73 + 24) = v74;
    v112 = v72;
    v113 = &off_1EFF27FD8;
    v111[0] = v73;
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BA5484C(v48, v111, 1);
    sub_18B988BAC(v111, &unk_1EA9D5060);
    v75 = swift_allocObject();
    *(v75 + 16) = sub_18B9EABB8;
    *(v75 + 24) = v71;
    swift_beginAccess();
    v76 = *(v73 + 32);
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v73 + 32) = v76;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v76 = sub_18B9B5814(0, v76[2] + 1, 1, v76);
      *(v73 + 32) = v76;
    }

    v79 = v76[2];
    v78 = v76[3];
    if (v79 >= v78 >> 1)
    {
      v76 = sub_18B9B5814((v78 > 1), v79 + 1, 1, v76);
    }

    v76[2] = v79 + 1;
    v80 = &v76[2 * v79];
    v80[4] = sub_18B7D1E94;
    v80[5] = v75;
    *(v73 + 32) = v76;
    swift_endAccess();
    v81 = *(v73 + 16);
    swift_retain_n();
    sub_18B7D8090(v81);
    sub_18B7EAA64(sub_18B9EB460, v73, sub_18B9EB538, v73, v81);

    sub_18B7EBAE8(v81);

    sub_18B7DFF04(v48, _s4PageVMa_0);
    *(v73 + 40) = 0;

    return;
  }

  v51 = &v16[v45];
  v52 = v100;
  sub_18B81F940(v51, v100, _s4ItemVMa_0);
  v53 = v50;
  v54 = sub_18B81B8AC(v50, v52);
  sub_18B7DFF04(v52, _s4ItemVMa_0);
  sub_18B988BAC(v22, &unk_1EA9D5380);
  sub_18B988BAC(v26, &unk_1EA9D5380);
  sub_18B7DFF04(v53, _s4ItemVMa_0);
  sub_18B988BAC(v16, &unk_1EA9D5380);
  v48 = v109;
  v49 = v106;
  if (!v54)
  {
    goto LABEL_13;
  }

LABEL_12:
  sub_18B7C9974();
  v56 = v55[qword_1EA9F7FF0];

  if (v56)
  {
    goto LABEL_13;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v111);

  sub_18B7DFD58(v111);
  if ((v114 & 1) == 0)
  {
    v85 = v105;
    v86 = v95;
    sub_18B7DF568(v105, v95, _s4ItemVMa_0);
    v94(v86, 0, 1, v12);
    v87 = v107;
    sub_18BA441D4(v86);
    v88 = swift_unknownObjectUnownedLoadStrong();
    v89 = *&v88[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_showPagePickerSheet];
    sub_18BC1E1A8();

    v110[3] = v12;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v110);
    sub_18B7DF568(v85, boxed_opaque_existential_0Tm, _s4ItemVMa_0);
    v89(v110);

    v64 = &qword_1EA9D5220;
    v65 = v110;
    goto LABEL_15;
  }

  v83 = swift_unknownObjectUnownedLoadStrong();
  v84 = v99;
  sub_18BB068E4(v99);
  if ((*(v97 + 48))(v84, 1, v98) == 1)
  {

    v64 = &qword_1EA9D52E0;
    v65 = v84;
    goto LABEL_15;
  }

  v91 = v96;
  sub_18B81F940(v84, v96, _s4PageVMa);
  v92 = *&v83[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dismissHandler];
  sub_18BC1E1A8();
  v92(v91);

  sub_18B7DFF04(v91, _s4PageVMa);
}

void sub_18B9E1E08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      v4 = *&v3[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView];

      sub_18BA4352C(1.0);
    }
  }
}

uint64_t sub_18B9E1EA0(uint64_t a1)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - v4;
  v6 = _s4ItemVMa();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s7ContentVMa(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v16 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(Strong + v16, v14, _s7ContentVMa);

  LODWORD(v16) = v14[2];
  result = sub_18B7DFF04(v14, _s7ContentVMa);
  if (v16 == 1)
  {
    v18 = swift_unknownObjectUnownedLoadStrong();
    v19 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(v18 + v19, v12, _s7ContentVMa);

    v20 = _s4ItemVMa_2();
    MEMORY[0x1EEE9AC00](v20);
    *(&v28 - 2) = v21;
    sub_18BB17290(sub_18B9EB468, (&v28 - 4), v5);
    sub_18B7DFF04(v12, _s7ContentVMa);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_18B988BAC(v5, &qword_1EA9D7CD0);
    }

    else
    {
      v22 = v30;
      sub_18B81F940(v5, v30, _s4ItemVMa);
      v23 = swift_unknownObjectUnownedLoadStrong();
      v24 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems;
      swift_beginAccess();
      v25 = *&v23[v24];
      sub_18BC1E3F8();
      v26 = sub_18B9BA41C(v22, v25);

      if (v26)
      {
        swift_beginAccess();
        v27 = v29;
        sub_18B9CEA40(v29);
        sub_18B988BAC(v27, &qword_1EA9D7CD0);
        swift_endAccess();
        sub_18B833A74();
      }

      return sub_18B7DFF04(v22, _s4ItemVMa);
    }
  }

  return result;
}

uint64_t sub_18B9E22B0(uint64_t a1)
{
  v35 = a1;
  v1 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = _s4ItemVMa();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v32 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v34 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_tabSwitcher;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v19 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(Strong + v19, v6, _s7ContentVMa);

  v37 = v35 + *(_s4ItemVMa_2() + 20);
  sub_18BB17290(sub_18B9EB468, v36, v9);
  sub_18B7DFF04(v6, _s7ContentVMa);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_18B988BAC(v9, &qword_1EA9D7CD0);
  }

  sub_18B81F940(v9, v17, _s4ItemVMa);
  v21 = swift_unknownObjectUnownedLoadStrong();
  v22 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(v21 + v22, v3, _s7ContentVMa);

  LOBYTE(v21) = v3[2];
  sub_18B7DFF04(v3, _s7ContentVMa);
  v23 = swift_unknownObjectUnownedLoadStrong();
  v24 = v23;
  v25 = v17;
  if (v21)
  {
    v26 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems;
    swift_beginAccess();
    v27 = *&v24[v26];
    sub_18BC1E3F8();
    v28 = sub_18B9BA41C(v25, v27);

    if ((v28 & 1) == 0)
    {
      v29 = v33;
      sub_18B7DF568(v25, v33, _s4ItemVMa);
      swift_beginAccess();
      v30 = v32;
      sub_18BB5EE90(v32, v29);
      sub_18B7DFF04(v30, _s4ItemVMa);
      swift_endAccess();
      sub_18B833A74();
    }
  }

  else
  {
    v31 = *(v23 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemSelectionHandler);
    sub_18BC1E1A8();

    v31(v17);

    v24 = swift_unknownObjectUnownedLoadStrong();
    sub_18BAFF9A0(v17);
  }

  return sub_18B7DFF04(v25, _s4ItemVMa);
}

void sub_18B9E2784(uint64_t a1)
{
  isEscapingClosureAtFileLocation = v1;
  v5 = v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state;
  v6 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state);
  v7 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 8);
  v8 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 9);
  v88 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 10);
  v89 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 14);
  v9 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 16);
  v10 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 24);
  v87[0] = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 25);
  *(v87 + 3) = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 28);
  v11 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 32);
  if (v8)
  {
    v12 = sub_18B7EDC84();
    v13 = *(v12 + 24);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
      goto LABEL_44;
    }

    v16 = v12;
    *(v12 + 24) = v15;
    if (v15 == 1)
    {
      v72 = v10;
      swift_beginAccess();
      v17 = *(v16 + 16);
      v18 = *(v17 + 16);
      if (v18)
      {
        v70 = v7;
        sub_18BC1E3F8();
        v19 = v17 + 40;
        do
        {
          v20 = *(v19 - 8);
          LOBYTE(aBlock) = *(v16 + 24) > 0;
          sub_18BC1E1A8();
          v20(&aBlock);

          v19 += 16;
          --v18;
        }

        while (v18);

        v7 = v70;
      }

      else
      {
      }

      LODWORD(v10) = v72;
    }

    else
    {
    }
  }

  v21 = v1 + OBJC_IVAR___SFTabOverviewDisplayItem_layout;
  swift_beginAccess();
  *(v21 + 248) = v6;
  *(v21 + 256) = v7;
  *(v21 + 257) = v8;
  *(v21 + 258) = v88;
  *(v21 + 262) = v89;
  *(v21 + 264) = v9;
  *(v21 + 272) = v10;
  *(v21 + 273) = v87[0];
  *(v21 + 276) = *(v87 + 3);
  v22 = *(a1 + 8);
  *(v21 + 280) = v11;
  if (v22 == 2)
  {
    a1 = swift_allocObject();
    *(a1 + 16) = isEscapingClosureAtFileLocation;
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = sub_18B9EB4C4;
    *(v23 + 24) = a1;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_18B9D53AC;
    *(v24 + 24) = v23;
    v85 = sub_18B9D53B0;
    v86 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v82 = 1107296256;
    v83 = sub_18B7E3BF4;
    v84 = &block_descriptor_394;
    v10 = _Block_copy(&aBlock);
    v25 = isEscapingClosureAtFileLocation;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v22 performWithoutAnimation_];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v71 = v7;
  v73 = v10;
  v2 = *a1;
  v26 = *(a1 + 16);
  v69 = *(a1 + 24);
  v27 = *(a1 + 32);
  v10 = ((v22 >> 8) & 1 ^ v8);
  if ((BYTE1(v22) & 1 ^ v8))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v29 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabOverviewVisibilityObserver];
    sub_18B824D48(v29);

    if (v29)
    {
      v29(v8 & 1);
      sub_18B7B171C(v29);
    }
  }

  v68 = v5;
  if ((v22 & 0x100) != 0)
  {
    v30 = sub_18B7EDC84();
    v31 = *(v30 + 24);
    v14 = __OFSUB__(v31, 1);
    v32 = v31 - 1;
    if (!v14)
    {
      v33 = v30;
      *(v30 + 24) = v32;
      if (!v32)
      {
        swift_beginAccess();
        v34 = *(v33 + 16);
        v35 = *(v34 + 16);
        if (v35)
        {
          sub_18BC1E3F8();
          v36 = v34 + 40;
          do
          {
            v37 = *(v36 - 8);
            LOBYTE(aBlock) = *(v33 + 24) > 0;
            sub_18BC1E1A8();
            v37(&aBlock);

            v36 += 16;
            --v35;
          }

          while (v35);

          v5 = v68;
        }
      }

      goto LABEL_25;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
    goto LABEL_40;
  }

LABEL_25:
  v74 = objc_opt_self();
  if (([v74 areAnimationsEnabled] & 1) == 0 && (v6 != *&v2 || ((v10 | v71 ^ v22) & 1) != 0 || v9 != v26 || ((v73 ^ v69) & 1) != 0 || v11 != v27))
  {
    v38 = swift_unknownObjectUnownedLoadStrong();
    v39 = [v38 view];

    if (!v39)
    {
      __break(1u);
      return;
    }

    [v39 _removeAllRetargetableAnimations_];
  }

  UIAccessibilityIsReduceTransparencyEnabled();
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v41 = swift_allocObject();
  *(v41 + 16) = isEscapingClosureAtFileLocation;
  v42 = swift_allocObject();
  v42[2] = inited;
  v42[3] = sub_18B9EAB00;
  v42[4] = v41;
  v85 = sub_18B7E767C;
  v86 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v2 = 1107296256;
  v82 = 1107296256;
  v83 = sub_18B7B0DB0;
  v84 = &block_descriptor_404_0;
  v43 = _Block_copy(&aBlock);
  swift_retain_n();
  v44 = isEscapingClosureAtFileLocation;
  sub_18BC1E1A8();

  v85 = CGRectMake;
  v86 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_18B8043A0;
  v84 = &block_descriptor_407;
  v45 = _Block_copy(&aBlock);

  [v74 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v45);
  _Block_release(v43);

  v46 = swift_initStaticObject();
  if (*(v5 + 16) <= 0.0)
  {
    sub_18BC1E1A8();
    v49 = v8;
    v48 = v71;
  }

  else
  {
    v47 = v44[OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets];
    v44[OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets] = 1;
    sub_18BC1E1A8();
    v49 = v8;
    v48 = v71;
    if ((v47 & 1) == 0)
    {
      sub_18B9E0F90();
    }
  }

  v50 = swift_allocObject();
  *(v50 + 16) = v44;
  v51 = swift_allocObject();
  *(v51 + 16) = v44;
  *(v51 + 24) = v6;
  *(v51 + 32) = v48;
  *(v51 + 33) = v49;
  *(v51 + 34) = v88;
  *(v51 + 38) = v89;
  *(v51 + 40) = v9;
  *(v51 + 48) = v73;
  *(v51 + 49) = v87[0];
  *(v51 + 52) = *(v87 + 3);
  *(v51 + 56) = v11;
  v52 = swift_allocObject();
  v52[2] = v46;
  v52[3] = sub_18B9EAB24;
  v52[4] = v50;
  v85 = sub_18B7E767C;
  v86 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_18B7B0DB0;
  v84 = &block_descriptor_420;
  v53 = _Block_copy(&aBlock);
  v54 = v44;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  v85 = sub_18B9EAB2C;
  v86 = v51;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_18B8043A0;
  v84 = &block_descriptor_423;
  v55 = _Block_copy(&aBlock);
  sub_18BC1E1A8();

  [v74 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v55);
  _Block_release(v53);

  v56 = swift_initStaticObject();
  v57 = swift_allocObject();
  *(v57 + 16) = v54;
  v58 = swift_allocObject();
  v58[2] = v56;
  v58[3] = sub_18B9EAB8C;
  v58[4] = v57;
  v85 = sub_18B7E767C;
  v86 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_18B7B0DB0;
  v84 = &block_descriptor_433;
  v59 = _Block_copy(&aBlock);
  swift_retain_n();
  v10 = v54;
  sub_18BC1E1A8();

  v85 = CGRectMake;
  v86 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_18B8043A0;
  v84 = &block_descriptor_436;
  v60 = _Block_copy(&aBlock);

  [v74 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v60);
  _Block_release(v59);

  v61 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(&aBlock);

  sub_18B7DFD58(&aBlock);
  if ((aBlock & 0x100) == 0 || *(v68 + 24) == (v69 & 1))
  {
    goto LABEL_41;
  }

  if (qword_1EA9D2208 != -1)
  {
    goto LABEL_45;
  }

LABEL_40:
  v62 = qword_1EA9F7A98;
  v63 = swift_allocObject();
  *(v63 + 16) = v10;
  v64 = swift_allocObject();
  v64[2] = v62;
  v64[3] = sub_18B9EABB0;
  v64[4] = v63;
  v79 = sub_18B7E767C;
  v80 = v64;
  v75 = MEMORY[0x1E69E9820];
  v76 = v2;
  v77 = sub_18B7B0DB0;
  v78 = &block_descriptor_446;
  v65 = _Block_copy(&v75);
  v66 = v10;
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  v79 = CGRectMake;
  v80 = 0;
  v75 = MEMORY[0x1E69E9820];
  v76 = v2;
  v77 = sub_18B8043A0;
  v78 = &block_descriptor_449;
  v67 = _Block_copy(&v75);

  [v74 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v67);
  _Block_release(v65);

LABEL_41:
}

void sub_18B9E340C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 16);
  [*(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView) setAlpha_];
  sub_18B7C9974();
  v7 = v2;
  v3 = *&v2[qword_1EA9F7FF8 + 112];
  v8[6] = *&v2[qword_1EA9F7FF8 + 96];
  v8[7] = v3;
  v8[8] = *&v2[qword_1EA9F7FF8 + 128];
  v9 = *&v2[qword_1EA9F7FF8 + 144];
  v4 = *&v2[qword_1EA9F7FF8 + 48];
  v8[2] = *&v2[qword_1EA9F7FF8 + 32];
  v8[3] = v4;
  v5 = *&v2[qword_1EA9F7FF8 + 80];
  v8[4] = *&v2[qword_1EA9F7FF8 + 64];
  v8[5] = v5;
  v6 = *&v2[qword_1EA9F7FF8 + 16];
  v8[0] = *&v2[qword_1EA9F7FF8];
  v8[1] = v6;
  *&v2[qword_1EA9F7FF8 + 72] = v1;
  sub_18B7CBBC4(v8);
}

void sub_18B9E34D8(uint64_t a1)
{
  v2 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_18B7F161C();
  sub_18B7F163C();
  sub_18B7E822C();
  v5 = *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_toolbar);
  if (v5)
  {
    v6 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(a1 + v6, v4, _s6LayoutVMa);
    v7 = v5;
    sub_18BB22ADC(v9);
    sub_18B7DFF04(v4, _s6LayoutVMa);
    sub_18B7F40F4(v7);

    sub_18B7F4620(v9);
  }
}

void sub_18B9E35EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectUnownedLoadStrong();

    v3 = qword_1EA9D2200;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    sub_18BB0D56C(qword_1EA9F7A90, v4, v4, MEMORY[0x1E69E7CD0]);
  }
}

uint64_t sub_18B9E36B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectUnownedLoadStrong();

    v5 = *&v4[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canHandleDropSession];
    sub_18BC1E1A8();

    v6 = v5(a1);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_18B9E376C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v3);

    if (v3[19])
    {
      sub_18B7DFD58(v3);
      if ((v3[20] & 1) == 0)
      {
        sub_18B7E5BC8();
      }
    }

    else
    {

      sub_18B7DFD58(v3);
    }
  }
}

uint64_t sub_18B9E3810(void *a1)
{
  v45 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v44 = &v40 - v2;
  v3 = _s4PageVMa();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = _s4ItemVMa();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v18 = _s4ItemVMa_2();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    sub_18B7CA054(v45, v17, &unk_1EA9D4F30);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_18B988BAC(v17, &unk_1EA9D4F30);
    }

    else
    {
      sub_18B81F940(v17, v21, _s4ItemVMa_2);
      v40 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_tabSwitcher;
      Strong = swift_unknownObjectUnownedLoadStrong();
      v25 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
      swift_beginAccess();
      sub_18B7DF568(Strong + v25, v7, _s7ContentVMa);
      v45 = v23;

      MEMORY[0x1EEE9AC00](v26);
      *(&v40 - 2) = v27;
      sub_18BB17290(sub_18B9EB468, (&v40 - 4), v10);
      sub_18B7DFF04(v7, _s7ContentVMa);
      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        sub_18B81F940(v10, v14, _s4ItemVMa);
        v36 = swift_unknownObjectUnownedLoadStrong();
        v37 = *&v36[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemSelectionHandler];
        sub_18BC1E1A8();

        v37(v14);

        v38 = swift_unknownObjectUnownedLoadStrong();
        v39 = v45;

        sub_18BAFF9A0(v14);
        sub_18B7DFF04(v14, _s4ItemVMa);
        v34 = _s4ItemVMa_2;
        v35 = v21;
        return sub_18B7DFF04(v35, v34);
      }

      sub_18B7DFF04(v21, _s4ItemVMa_2);
      sub_18B988BAC(v10, &qword_1EA9D7CD0);
    }

    v28 = swift_unknownObjectUnownedLoadStrong();
    v29 = v23;
    v30 = v44;
    sub_18BB068E4(v44);

    if ((*(v42 + 48))(v30, 1, v43) == 1)
    {

      return sub_18B988BAC(v30, &qword_1EA9D52E0);
    }

    v31 = v41;
    sub_18B81F940(v30, v41, _s4PageVMa);
    v32 = swift_unknownObjectUnownedLoadStrong();

    v33 = *&v32[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dismissHandler];
    sub_18BC1E1A8();

    v33(v31);

    v34 = _s4PageVMa;
    v35 = v31;
    return sub_18B7DFF04(v35, v34);
  }

  return result;
}

uint64_t sub_18B9E3E88()
{
  v0 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - v4;
  v6 = _s4ItemVMa();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = Strong;
  v12 = swift_unknownObjectUnownedLoadStrong();
  v13 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(v12 + v13, v2, _s7ContentVMa);
  v14 = v11;

  v15 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v15);
  v21[-2] = v16;
  sub_18BB17290(sub_18B9EB468, &v21[-4], v5);
  sub_18B7DFF04(v2, _s7ContentVMa);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_18B988BAC(v5, &qword_1EA9D7CD0);
    return MEMORY[0x1E69E7CC0];
  }

  sub_18B81F940(v5, v9, _s4ItemVMa);
  v18 = swift_unknownObjectUnownedLoadStrong();

  v19 = *&v18[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dragItemProvider];
  sub_18BC1E1A8();

  v20 = v19(v9);

  sub_18B7DFF04(v9, _s4ItemVMa);
  return v20;
}

uint64_t sub_18B9E41B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a1;
  v42 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5360);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = _s15DropDestinationVMa_0(0);
  v40 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = _s4PageVMa();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5368);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v36 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v28 = _s15DropDestinationVMa(0);
    (*(*(v28 - 8) + 56))(v22, 1, 1, v28);
    return sub_18B7DF568(v42, a4, _s15DropDestinationVMa);
  }

  v24 = Strong;
  v36 = a2;
  v25 = v42;
  v39 = a4;
  sub_18B9E6200(v41, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    v26 = &qword_1EA9D52E0;
    v27 = v15;
  }

  else
  {
    sub_18B81F940(v15, v19, _s4PageVMa);
    sub_18BBDACAC(v25, v8);
    if ((*(v40 + 48))(v8, 1, v9) != 1)
    {
      v31 = v37;
      sub_18B81F940(v8, v37, _s15DropDestinationVMa_0);
      v32 = swift_unknownObjectUnownedLoadStrong();
      v33 = *&v32[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropDestinationProvider];
      sub_18BC1E1A8();

      v34 = v38;
      v33(v36, v31);

      sub_18BBDDD00(v22);

      sub_18B7DFF04(v34, _s15DropDestinationVMa_0);
      sub_18B7DFF04(v31, _s15DropDestinationVMa_0);
      sub_18B7DFF04(v19, _s4PageVMa);
      v30 = v39;
      goto LABEL_9;
    }

    sub_18B7DFF04(v19, _s4PageVMa);
    v26 = &qword_1EA9D5360;
    v27 = v8;
  }

  sub_18B988BAC(v27, v26);
  v30 = v39;
  sub_18B7DF568(v25, v22, _s15DropDestinationVMa);
LABEL_9:
  v35 = _s15DropDestinationVMa(0);
  (*(*(v35 - 8) + 56))(v22, 0, 1, v35);
  return sub_18B81F940(v22, v30, _s15DropDestinationVMa);
}

uint64_t sub_18B9E46DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = _s4PageVMa();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_18B9E6200(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_18B988BAC(v6, &qword_1EA9D52E0);
      return 0;
    }

    else
    {
      sub_18B81F940(v6, v10, _s4PageVMa);
      if (*(a1 + OBJC_IVAR___SFTabOverview_searchState + 8))
      {

        sub_18B7DFF04(v10, _s4PageVMa);
        return 1;
      }

      else
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v14 = *&Strong[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropOperationProvider];
        sub_18BC1E1A8();

        v15 = v14(v10, a2);

        sub_18B7DFF04(v10, _s4PageVMa);
        return v15;
      }
    }
  }

  return result;
}

uint64_t sub_18B9E4948(uint64_t a1)
{
  v2 = sub_18BC1EC08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92B0);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v44 = &v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v45 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  v20 = a1 + *(_s4ItemVMa_2() + 20);
  v42 = *(v3 + 16);
  v42(v19, v20, v2);
  v47 = v3;
  v21 = *(v3 + 56);
  v22 = 1;
  v21(v19, 0, 1, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v24 = Strong;
  v25 = swift_unknownObjectUnownedLoadStrong();

  v26 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(v25 + v26, v9, &unk_1EA9D5350);

  v27 = _s11TransactionVMa();
  if ((*(*(v27 - 8) + 48))(v9, 1, v27) == 1)
  {
    sub_18B988BAC(v9, &unk_1EA9D5350);
    v22 = 1;
LABEL_4:
    v28 = v47;
    goto LABEL_5;
  }

  v33 = &v9[*(v27 + 20)];
  v34 = v44;
  sub_18B7CA054(v33, v44, &qword_1EA9D7CD0);
  v35 = v9;
  v36 = v34;
  sub_18B7DFF04(v35, _s11TransactionVMa);
  v37 = _s4ItemVMa();
  v38 = (*(*(v37 - 8) + 48))(v36, 1, v37);
  v28 = v47;
  if (v38 == 1)
  {
    sub_18B988BAC(v36, &qword_1EA9D7CD0);
    v22 = 1;
  }

  else
  {
    v42(v17, v36 + *(v37 + 28), v2);
    sub_18B7DFF04(v36, _s4ItemVMa);
    v22 = 0;
  }

LABEL_5:
  v21(v17, v22, 1, v2);
  v29 = *(v46 + 48);
  sub_18B7CA054(v19, v6, &unk_1EA9D3AE0);
  sub_18B7CA054(v17, &v6[v29], &unk_1EA9D3AE0);
  v30 = *(v28 + 48);
  if (v30(v6, 1, v2) != 1)
  {
    v32 = v45;
    sub_18B7CA054(v6, v45, &unk_1EA9D3AE0);
    if (v30(&v6[v29], 1, v2) != 1)
    {
      v39 = v43;
      (*(v28 + 32))(v43, &v6[v29], v2);
      sub_18B82B9B8(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
      v31 = sub_18BC20AE8();
      v40 = *(v28 + 8);
      v40(v39, v2);
      sub_18B988BAC(v17, &unk_1EA9D3AE0);
      sub_18B988BAC(v19, &unk_1EA9D3AE0);
      v40(v32, v2);
      sub_18B988BAC(v6, &unk_1EA9D3AE0);
      return v31 & 1;
    }

    sub_18B988BAC(v17, &unk_1EA9D3AE0);
    sub_18B988BAC(v19, &unk_1EA9D3AE0);
    (*(v28 + 8))(v32, v2);
    goto LABEL_10;
  }

  sub_18B988BAC(v17, &unk_1EA9D3AE0);
  sub_18B988BAC(v19, &unk_1EA9D3AE0);
  if (v30(&v6[v29], 1, v2) != 1)
  {
LABEL_10:
    sub_18B988BAC(v6, &unk_1EA9D92B0);
    v31 = 0;
    return v31 & 1;
  }

  sub_18B988BAC(v6, &unk_1EA9D3AE0);
  v31 = 1;
  return v31 & 1;
}

void sub_18B9E5038(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectUnownedLoadStrong();
    v5 = sub_18B9E6924(a1);
    v6 = qword_1EA9D2200;
    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    sub_18BB0F258(qword_1EA9F7A90, v7, v7, v5, 0);
  }
}

uint64_t sub_18B9E511C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = sub_18B9DBE58(a1);

  return v4;
}

void *sub_18B9E5188(uint64_t a1, int a2)
{
  v59 = a2;
  v3 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v55 - v10;
  v69 = _s4ItemVMa();
  v64 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v55 - v19;
  v61 = _s11TransactionVMa();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _s4ItemVMa_2();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v57 = v17;
    v55 = v14;
    v58 = v21;
    v68 = result;
    v66 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_tabSwitcher;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v27 = *(a1 + 16);
    if (v27)
    {
      v65 = &v25[*(v22 + 20)];
      v28 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v29 = *(v23 + 72);
      v30 = (v64 + 48);
      v31 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_18B7DF568(v28, v25, _s4ItemVMa_2);
        v32 = swift_unknownObjectUnownedLoadStrong();
        v33 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
        swift_beginAccess();
        sub_18B7DF568(v32 + v33, v5, _s7ContentVMa);

        MEMORY[0x1EEE9AC00](v34);
        *(&v55 - 2) = v65;
        sub_18BB17290(sub_18B9EB468, (&v55 - 4), v8);
        sub_18B7DFF04(v5, _s7ContentVMa);
        sub_18B7DFF04(v25, _s4ItemVMa_2);
        if ((*v30)(v8, 1, v69) == 1)
        {
          sub_18B988BAC(v8, &qword_1EA9D7CD0);
        }

        else
        {
          sub_18B81F940(v8, v67, _s4ItemVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_18B9B5838(0, v31[2] + 1, 1, v31);
          }

          v36 = v31[2];
          v35 = v31[3];
          if (v36 >= v35 >> 1)
          {
            v31 = sub_18B9B5838(v35 > 1, v36 + 1, 1, v31);
          }

          v31[2] = v36 + 1;
          sub_18B81F940(v67, v31 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v36, _s4ItemVMa);
        }

        v28 += v29;
        --v27;
      }

      while (v27);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v37 = swift_allocObject();
    v38 = Strong;
    *(v37 + 16) = Strong;
    *(v37 + 24) = v31;
    LODWORD(v67) = v59 & 1;
    *(v37 + 32) = v59 & 1;
    v39 = qword_1EA9D2200;
    v40 = v38;
    sub_18BC1E3F8();
    if (v39 != -1)
    {
      swift_once();
    }

    v41 = qword_1EA9F7A90;
    v42 = type metadata accessor for RetargetableTransitionCoordinator();
    v43 = swift_allocObject();
    v44 = MEMORY[0x1E69E7CC0];
    *(v43 + 24) = MEMORY[0x1E69E7CC0];
    *(v43 + 32) = v44;
    *(v43 + 40) = 1;
    *(v43 + 16) = v41;
    v45 = v58;
    v58[3] = v42;
    v45[4] = &off_1EFF27FD8;
    *v45 = v43;
    v46 = v61;
    v66 = *(v61 + 20);
    v47 = v64;
    (*(v64 + 56))(v45 + v66, 1, 1, v69);
    _s14ScrollPositionOMa();
    swift_storeEnumTagMultiPayload();
    *(v45 + *(v46 + 24)) = 0;
    v48 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
    swift_beginAccess();
    sub_18B7CA054(v40 + v48, v63, &unk_1EA9D5350);
    v49 = v57;
    sub_18B7DF568(v45, v57, _s11TransactionVMa);
    (*(v60 + 56))(v49, 0, 1, v46);
    swift_beginAccess();
    v50 = v40;
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18B9EAA90(v49, v40 + v48);
    swift_endAccess();
    sub_18BAF4F6C(v50, sub_18B9EAA84, v37, v31, v67);
    v51 = v62;
    sub_18B7CA054(v45 + v66, v62, &qword_1EA9D7CD0);
    if ((*(v47 + 48))(v51, 1, v69) == 1)
    {
      sub_18B988BAC(v51, &qword_1EA9D7CD0);
    }

    else
    {
      v52 = v51;
      v53 = v55;
      sub_18B81F940(v52, v55, _s4ItemVMa);
      sub_18BAFF9A0(v53);
      sub_18B7DFF04(v53, _s4ItemVMa);
    }

    swift_beginAccess();
    sub_18B9EAA90(v63, v40 + v48);
    swift_endAccess();

    v54 = *(v43 + 16);
    swift_retain_n();
    sub_18B7D8090(v54);
    sub_18B7EAA64(sub_18B9D4FF4, v43, sub_18B9D4FFC, v43, v54);

    sub_18B7EBAE8(v54);
    sub_18B7DFF04(v45, _s11TransactionVMa);
    *(v43 + 40) = 0;
  }

  return result;
}

void sub_18B9E5AF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_18B9E5B68(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectUnownedLoadStrong();

    sub_18BB004E4(a1);
  }
}

void sub_18B9E5BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5348);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21[-v7];
  if (*(a1 + *(_s4PageVMa_0() + 28)) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = swift_unknownObjectUnownedLoadStrong();

      v12 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pendingMoveIntent;
      swift_beginAccess();
      sub_18B7CA054(v11 + v12, v8, &qword_1EA9D5348);
      v13 = _s15MoveItemsIntentVMa(0);
      v14 = *(*(v13 - 8) + 48);
      if (v14(v8, 1, v13) == 1)
      {

        sub_18B988BAC(v8, &qword_1EA9D5348);
      }

      else
      {
        sub_18B988BAC(v8, &qword_1EA9D5348);
        v15 = sub_18BAF0680();
        v17 = v16;
        if (!v14(v16, 1, v13))
        {
          v18 = &v17[*(v13 + 28)];
          *v18 = a2;
          v18[1] = a3;
          sub_18BC1E3F8();
        }

        (v15)(v21, 0);
        sub_18B833A74();
        v19 = swift_allocObject();
        *(v19 + 16) = v11;
        v20 = v11;
        sub_18BAF8EB0(1, 1, sub_18B9EAA7C, v19);
      }
    }
  }
}

void sub_18B9E5E54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18B9E76C4();
  }
}

void sub_18B9E5EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    a5(a1, a2, a3);
  }
}

void sub_18B9E5F30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_18B7E2098();
    v4 = v3;
    v5 = &v1[OBJC_IVAR___SFTabOverviewDisplayItem_layout];
    swift_beginAccess();
    if (v5[5] == v2 && v5[6] == v4)
    {
      goto LABEL_13;
    }

    v5[5] = v2;
    v5[6] = v4;
    v7 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v26);

    sub_18B7DFD58(v26);
    if (v26[25])
    {
      sub_18B7C9974();
      v9 = v8;
      v10 = sub_18B7CEA3C();
      if (v10)
      {
        v11 = *&v10[OBJC_IVAR___SFTabOverview_searchState + 8];

        if (v11)
        {
          v12 = 1;
LABEL_12:
          type metadata accessor for AnimationSettings();
          inited = swift_initStaticObject();
          *(v5 + *(_s6LayoutVMa() + 68)) = v12 & 1;
          v14 = swift_allocObject();
          *(v14 + 16) = v1;
          v15 = objc_opt_self();
          v16 = swift_allocObject();
          v16[2] = inited;
          v16[3] = sub_18B9EB4B8;
          v16[4] = v14;
          v24 = sub_18B7E767C;
          v25 = v16;
          v20 = MEMORY[0x1E69E9820];
          v21 = 1107296256;
          v22 = sub_18B7B0DB0;
          v23 = &block_descriptor_367;
          v17 = _Block_copy(&v20);
          v18 = v1;
          sub_18BC1E1A8();

          v24 = CGRectMake;
          v25 = 0;
          v20 = MEMORY[0x1E69E9820];
          v21 = 1107296256;
          v22 = sub_18B8043A0;
          v23 = &block_descriptor_370;
          v19 = _Block_copy(&v20);

          [v15 _animateUsingSpringBehavior_tracking_animations_completion_];
          _Block_release(v19);
          _Block_release(v17);

LABEL_13:

          return;
        }
      }

      else
      {
      }
    }

    v12 = sub_18B7CFAA0();
    goto LABEL_12;
  }
}

uint64_t sub_18B9E6200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = _s4PageVMa_0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7C9974();
  v15 = v14;
  sub_18BA50B78(a1, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_18B988BAC(v9, &unk_1EA9DBE90);
    v16 = _s4PageVMa();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  else
  {
    sub_18B81F940(v9, v13, _s4PageVMa_0);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v19 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(Strong + v19, v6, _s7ContentVMa);

    MEMORY[0x1EEE9AC00](v20);
    *(&v21 - 2) = v13;
    sub_18B835D80(sub_18B9EB544, *(v6 + 1), a2);
    sub_18B7DFF04(v6, _s7ContentVMa);
    return sub_18B7DFF04(v13, _s4PageVMa_0);
  }
}

uint64_t sub_18B9E64FC@<X0>(uint64_t a1@<X8>)
{
  v3 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s4PageVMa_0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v36 - v14;
  sub_18B7C9974();
  if (*(v16 + qword_1EA9F7FF0) == 1)
  {

    (*(v7 + 56))(v15, 1, 1, v6);
  }

  else
  {
    v36[1] = v1;
    v17 = a1;
    v18 = v16;
    v19 = sub_18B7CC308();
    v20 = sub_18B7C2E68(v19);
    [v20 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v37.origin.x = v22;
    v37.origin.y = v24;
    v37.size.width = v26;
    v37.size.height = v28;
    MidX = CGRectGetMidX(v37);
    v38.origin.x = v22;
    v38.origin.y = v24;
    v38.size.width = v26;
    v38.size.height = v28;
    MidY = CGRectGetMidY(v38);
    sub_18B7CECB4(v15, MidX, MidY);

    a1 = v17;
  }

  sub_18B7CA054(v15, v12, &unk_1EA9DBE90);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_18B988BAC(v15, &unk_1EA9DBE90);
    v31 = _s4PageVMa();
    return (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
  }

  else
  {
    sub_18B81F940(v12, v9, _s4PageVMa_0);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v34 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(Strong + v34, v5, _s7ContentVMa);

    MEMORY[0x1EEE9AC00](v35);
    v36[-2] = v9;
    sub_18B835D80(sub_18B9EB544, *(v5 + 1), a1);
    sub_18B988BAC(v15, &unk_1EA9DBE90);
    sub_18B7DFF04(v5, _s7ContentVMa);
    return sub_18B7DFF04(v9, _s4PageVMa_0);
  }
}

uint64_t sub_18B9E6924(uint64_t a1)
{
  v2 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - v6;
  v38 = _s4ItemVMa();
  v8 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s4ItemVMa_2();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v33 = v8;
  v18 = (v8 + 48);
  v39 = a1;
  result = sub_18BC1E3F8();
  v20 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v20;
    if (!v16)
    {
      break;
    }

LABEL_8:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_18B7DF568(*(v39 + 48) + *(v36 + 72) * (v22 | (v20 << 6)), v12, _s4ItemVMa_2);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v24 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(Strong + v24, v4, _s7ContentVMa);

    MEMORY[0x1EEE9AC00](v25);
    *(&v32 - 2) = v26;
    sub_18BB17290(sub_18B99B24C, (&v32 - 4), v7);
    sub_18B7DFF04(v4, _s7ContentVMa);
    sub_18B7DFF04(v12, _s4ItemVMa_2);
    if ((*v18)(v7, 1, v38) == 1)
    {
      result = sub_18B988BAC(v7, &qword_1EA9D7CD0);
    }

    else
    {
      sub_18B81F940(v7, v34, _s4ItemVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_18B9B5838(0, v35[2] + 1, 1, v35);
      }

      v28 = v35[2];
      v27 = v35[3];
      if (v28 >= v27 >> 1)
      {
        v35 = sub_18B9B5838(v27 > 1, v28 + 1, 1, v35);
      }

      v29 = v34;
      v30 = v35;
      v35[2] = v28 + 1;
      result = sub_18B81F940(v29, v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, _s4ItemVMa);
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      v31 = sub_18BBA3838(v35);

      return v31;
    }

    v16 = *(v13 + 8 * v20);
    ++v21;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_18B9E6DC8()
{
  v1 = OBJC_IVAR___SFTabOverviewDisplayItem_toolbar;
  if (!*&v0[OBJC_IVAR___SFTabOverviewDisplayItem_toolbar])
  {
    v2 = [objc_allocWithZone(type metadata accessor for BlurrableToolbar()) initWithFrame_];
    v3 = objc_allocWithZone(MEMORY[0x1E69DD188]);
    v4 = v2;
    v5 = [v3 init];
    [v5 configureWithTransparentBackground];
    [v4 setStandardAppearance_];

    Strong = swift_unknownObjectUnownedLoadStrong();
    v7 = v0;
    sub_18B7C9B24(v22);

    sub_18B7DFD58(v22);
    if (v22[1])
    {
      v8 = &OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView;
    }

    else
    {
      v8 = &OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView;
    }

    [*&v0[*v8] addSubview_];
    v9 = *&v0[v1];
    *&v7[v1] = v4;
    v10 = v4;

    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_18B9EA900;
    *(v13 + 24) = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_18B9D53AC;
    *(v14 + 24) = v13;
    v21[4] = sub_18B9D53B0;
    v21[5] = v14;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 1107296256;
    v21[2] = sub_18B7E3BF4;
    v21[3] = &block_descriptor_330;
    v15 = _Block_copy(v21);
    v7;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v12 performWithoutAnimation_];
    _Block_release(v15);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }

    else
    {
      v16 = sub_18B7DEE8C();
      _s19ToolbarRegistrationCMa();
      v17 = swift_allocObject();
      v18 = sub_18B7D34D4(MEMORY[0x1E69E7CC0]);
      *(v17 + 16) = v10;
      *(v17 + 24) = v18;
      swift_unknownObjectUnownedInit();
      v19 = v10;
      v20 = sub_18BC1E1A8();
      sub_18B9E998C(v20, v16);
    }
  }
}

void sub_18B9E70F0(uint64_t a1)
{
  v2 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = *(a1 + OBJC_IVAR___SFTabOverviewDisplayItem_toolbar);
  if (v5)
  {
    v6 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(a1 + v6, v4, _s6LayoutVMa);
    v7 = v5;
    sub_18BB22ADC(v9);
    sub_18B7DFF04(v4, _s6LayoutVMa);
    sub_18B7F40F4(v7);

    sub_18B7F4620(v9);
  }
}

void sub_18B9E71F4(void *a1)
{
  [a1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v12 = [Strong view];

  if (!v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  [a1 convertRect:v12 toCoordinateSpace:{v4, v6, v8, v10}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_topBarBackgroundView);
  if (!v21 || (v22 = v21, [v22 frame], v24 = v23, v26 = v25, v28 = v27, v30 = v29, objc_msgSend(v22, sel__touchInsets), v79.origin.x = UIEdgeInsetsInsetRect(v24, v26, v28, v30, v31, v32), v79.origin.y = v33, v79.size.width = v34, v79.size.height = v35, v76.origin.x = v14, v76.origin.y = v16, v76.size.width = v18, v76.size.height = v20, v36 = CGRectIntersectsRect(v76, v79), v22, !v36))
  {
    v37 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_bottomBarBackgroundView);
    if (!v37 || (v38 = v37, [v38 frame], v40 = v39, v42 = v41, v44 = v43, v46 = v45, objc_msgSend(v38, sel__touchInsets), v80.origin.x = UIEdgeInsetsInsetRect(v40, v42, v44, v46, v47, v48), v80.origin.y = v49, v80.size.width = v50, v80.size.height = v51, v77.origin.x = v14, v77.origin.y = v16, v77.size.width = v18, v77.size.height = v20, v52 = CGRectIntersectsRect(v77, v80), v38, !v52))
    {
      sub_18B7C9974();
      v54 = v53;
      v55 = sub_18B7CEA3C();

      if (v55)
      {
        if (*&v55[OBJC_IVAR___SFTabOverview_searchState + 8])
        {
          v56 = sub_18B831CC8();
          if (v56)
          {
            v57 = v56;
            [v56 bounds];
            v59 = v58;
            v61 = v60;
            v63 = v62;
            v65 = v64;
            v66 = swift_unknownObjectUnownedLoadStrong();
            v67 = [v66 view];

            if (v67)
            {
              [v57 convertRect:v67 toCoordinateSpace:{v59, v61, v63, v65}];
              v69 = v68;
              v71 = v70;
              v73 = v72;
              v75 = v74;

              v78.origin.x = v14;
              v78.origin.y = v16;
              v78.size.width = v18;
              v78.size.height = v20;
              v81.origin.x = v69;
              v81.origin.y = v71;
              v81.size.width = v73;
              v81.size.height = v75;
              CGRectIntersectsRect(v78, v81);

              return;
            }

LABEL_15:
            __break(1u);
            return;
          }
        }
      }
    }
  }
}

void sub_18B9E750C()
{
  v1 = v0;
  v2 = _s4PageVMa_0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v15);

  sub_18B7DFD58(v15);
  if (v15[18])
  {
    v6 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView);
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar);
      sub_18BBCBEC0();
    }
  }

  else
  {
    v8 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v16);

    sub_18B7DFD58(v16);
    if (v16[20])
    {
      v9 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView);
      if (v9 && (v9[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2] & 1) == 0)
      {
        v10 = OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField;
        v11 = *&v9[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField];
        v12 = v9;
        [v11 becomeFirstResponder];
        [*&v9[v10] selectAll];
      }
    }

    else
    {
      sub_18B7C9974();
      v14 = v13;
      sub_18B827328(v4);
      sub_18BA530F0(v4);

      sub_18B7DFF04(v4, _s4PageVMa_0);
    }
  }
}

uint64_t sub_18B9E76C4()
{
  v0 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s4PageVMa();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(Strong + v11, v2, _s7ContentVMa);

  v12 = *(v2 + 1);
  sub_18BC1E3F8();
  sub_18B7DFF04(v2, _s7ContentVMa);
  v13 = *(v12 + 16);
  if (!v13)
  {
  }

  sub_18B7DF568(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (v13 - 1), v6, _s4PageVMa);

  sub_18B81F940(v6, v9, _s4PageVMa);
  if (v9[*(v3 + 40)])
  {
    sub_18B9E750C();
  }

  return sub_18B7DFF04(v9, _s4PageVMa);
}

void sub_18B9E7904()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v37 - v3;
  v5 = _s4PageVMa_0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v48);

  sub_18B7DFD58(v48);
  if (v48[18])
  {
    v10 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView);
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar);
      if (sub_18BBCBCD8())
      {
        sub_18BBCC150();
        sub_18B9DF65C(0, 0xE000000000000000);

        v12 = swift_unknownObjectUnownedLoadStrong();
        sub_18B7C9B24(&v50);

        sub_18B7DFD58(&v50);
        if (v53 & 1) == 0 || (BYTE1(v53))
        {
          return;
        }

LABEL_25:
        sub_18B7E5BC8();
        return;
      }
    }
  }

  v13 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v49);

  sub_18B7DFD58(v49);
  if (v49[20])
  {
    v14 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView);
    if (v14)
    {
      v15 = &v14[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration];
      if (v14[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2] == 1)
      {
        v43 = *v15;
        v16 = *(v15 + 1);
        v17 = *(v15 + 2);
        v18 = *(v15 + 3);
        v47 = *(v15 + 8);
        v45 = v17;
        v46 = v18;
        v44 = v16;
        v19 = *(v15 + 19);
        v20 = *(v15 + 51);
        v41 = *(v15 + 35);
        v42[0] = v20;
        *(v42 + 13) = *(v15 + 8);
        v39 = *(v15 + 3);
        v40 = v19;
        v50 = v43;
        v51 = 0;
        v52 = v39;
        *&v55[13] = *(v42 + 13);
        *v55 = v42[0];
        v54 = v41;
        v53 = v19;
        v21 = v14;
        sub_18B9EA6E8(&v43, &v38);
        sub_18BAEF2DC(&v50);
        sub_18B9EA744(&v50);
        [*&v21[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField] resignFirstResponder];
        v22 = *&v21[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_didCancelRetitling];
        v23 = sub_18BC1E1A8();
        v22(v23);
      }
    }
  }

  else
  {
    sub_18B7C9974();
    v25 = v24;
    v26 = qword_1EA9F7FE8;
    swift_beginAccess();
    sub_18B7CA054(v25 + v26, v4, &unk_1EA9DBE90);

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_18B988BAC(v4, &unk_1EA9DBE90);
    }

    else
    {
      sub_18B81F940(v4, v8, _s4PageVMa_0);
      v27 = OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher;
      v28 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher);
      v29 = sub_18B862854(v8, 0xD000000000000017, 0x800000018BC60750);

      if (v29)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v30 = sub_18B852D5C();
          if (v30)
          {
            v31 = v30;
            v32 = OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField;
            v33 = *(v30 + OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField);
            if (*&v31[OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 128])
            {
              v37 = v33;
              sub_18BC1E3F8();
              v34 = sub_18BC20B98();

              v33 = v37;
            }

            else
            {
              v34 = 0;
            }

            [v33 setText_];

            [*&v31[v32] resignFirstResponder];
          }
        }
      }

      v35 = *(v1 + v27);
      sub_18BA531C0(v8, 0, 0xE000000000000000);

      sub_18B7DFF04(v8, _s4PageVMa_0);
    }
  }

  v36 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(&v43);

  sub_18B7DFD58(&v43);
  if ((BYTE3(v44) & 1) != 0 && (BYTE4(v44) & 1) == 0)
  {
    goto LABEL_25;
  }
}

void sub_18B9E7E24(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v64 - v10;
  v72 = _s4PageVMa();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s4PageVMa_0();
  v75 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5340);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v64 - v23;
  v26 = HIBYTE(a3) & 0xF;
  v76 = a2;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v26 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    goto LABEL_10;
  }

  v66 = v24;
  v65 = v14;
  v67 = a3;
  v69 = a1;
  sub_18B7DF568(a1, &v64 - v23, _s4PageVMa_0);
  v27 = v75;
  (*(v75 + 56))(v25, 0, 1, v12);
  v68 = v3;
  sub_18B7C9974();
  v29 = v28;
  v30 = qword_1EA9F7FE8;
  swift_beginAccess();
  sub_18B7CA054(v29 + v30, v21, &unk_1EA9DBE90);

  v31 = *(v15 + 48);
  sub_18B7CA054(v25, v17, &unk_1EA9DBE90);
  sub_18B7CA054(v21, &v17[v31], &unk_1EA9DBE90);
  v32 = *(v27 + 48);
  if (v32(v17, 1, v12) == 1)
  {
    sub_18B988BAC(v21, &unk_1EA9DBE90);
    sub_18B988BAC(v25, &unk_1EA9DBE90);
    v33 = v12;
    if (v32(&v17[v31], 1, v12) == 1)
    {
      sub_18B988BAC(v17, &unk_1EA9DBE90);
      a1 = v69;
      v34 = v68;
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  v35 = v66;
  sub_18B7CA054(v17, v66, &unk_1EA9DBE90);
  v33 = v12;
  if (v32(&v17[v31], 1, v12) == 1)
  {
    sub_18B988BAC(v21, &unk_1EA9DBE90);
    sub_18B988BAC(v25, &unk_1EA9DBE90);
    sub_18B7DFF04(v35, _s4PageVMa_0);
LABEL_9:
    sub_18B988BAC(v17, &qword_1EA9D5340);
    a3 = v67;
    a1 = v69;
    v12 = v33;
    goto LABEL_10;
  }

  v47 = v65;
  sub_18B81F940(&v17[v31], v65, _s4PageVMa_0);
  LODWORD(v75) = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  sub_18B7DFF04(v47, _s4PageVMa_0);
  sub_18B988BAC(v21, &unk_1EA9DBE90);
  sub_18B988BAC(v25, &unk_1EA9DBE90);
  sub_18B7DFF04(v35, _s4PageVMa_0);
  sub_18B988BAC(v17, &unk_1EA9DBE90);
  a3 = v67;
  a1 = v69;
  v34 = v68;
  if (v75)
  {
LABEL_19:
    v48 = *(v34 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView);
    if (v48)
    {
      v49 = *&v48[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 64];
      v51 = *&v48[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 32];
      v50 = *&v48[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 48];
      v80 = *&v48[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 16];
      v81 = v51;
      v82 = v50;
      v83 = v49;
      v79 = *&v48[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration];
      v52 = *(&v80 + 1);
      v73 = v51;
      v53 = v50;
      v72 = *(&v51 + 1);
      v54 = *&v48[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2];
      v78 = *&v48[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 6];
      v77 = v54;
      v55 = a1 + v12[5];
      LODWORD(v75) = *(v55 + 1);
      LODWORD(v74) = *(v55 + 3);
      v56 = *(v55 + 176);
      v76 = *(v55 + 168);
      Strong = v48;
      sub_18B9EA6E8(&v79, v84);
      sub_18BC1E3F8();

      v57 = a1 + v12[8];
      v58 = *v57;
      v59 = *(v57 + 8);
      v61 = *(v57 + 16);
      v60 = *(v57 + 24);
      sub_18B82B844(*v57, v59, v61, v60);
      sub_18B7E9C58(v52, v73, v72, v53);
      v63 = *(v55 + 152);
      v62 = *(v55 + 160);
      sub_18BC1E3F8();

      v84[0] = v75;
      v84[1] = v74;
      v85 = v77;
      v86 = v78;
      v87 = v76;
      v88 = v56;
      v89 = v58;
      v90 = v59;
      v91 = v61;
      v92 = v60;
      v93 = v63;
      v94 = v62;
      sub_18BAEF2DC(v84);
      sub_18B9EA744(v84);
      goto LABEL_12;
    }

    return;
  }

LABEL_10:
  if (*(a1 + v12[6]) == 1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_18BAF583C(v76, a3);
LABEL_12:

    return;
  }

  v37 = a1;
  v38 = *(a1 + v12[7]);
  v39 = swift_unknownObjectUnownedLoadStrong();
  if (v38 == 1)
  {
    sub_18BAF69A8(v76, a3);
  }

  else
  {
    v40 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    v41 = v73;
    sub_18B7DF568(v39 + v40, v73, _s7ContentVMa);

    MEMORY[0x1EEE9AC00](v42);
    *(&v64 - 2) = v37;
    v43 = v74;
    sub_18B835D80(sub_18B9EB544, v41[1], v74);
    sub_18B7DFF04(v41, _s7ContentVMa);
    if ((*(v71 + 48))(v43, 1, v72) == 1)
    {
      sub_18B988BAC(v43, &qword_1EA9D52E0);
    }

    else
    {
      v44 = v70;
      sub_18B81F940(v43, v70, _s4PageVMa);
      v45 = swift_unknownObjectUnownedLoadStrong();
      v46 = *&v45[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageRetitleHandler];
      sub_18BC1E1A8();

      v46(v44, v76, a3);

      sub_18B7DFF04(v44, _s4PageVMa);
    }
  }
}

void sub_18B9E87EC()
{
  v1 = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v11);

  sub_18B7DFD58(v11);
  if (v11[18])
  {
    v3 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView);
    if (!v3)
    {
      return;
    }

    v4 = *(v3 + OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar);
    sub_18BBCC3C0();
LABEL_11:

    return;
  }

  v5 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v12);

  sub_18B7DFD58(v12);
  if ((v12[20] & 1) == 0)
  {
    sub_18B7C9974();
    v8 = v7;
    v4 = sub_18B7CEA3C();

    if (!v4)
    {
      return;
    }

    v9 = sub_18B852D5C();
    if (v9)
    {
      v10 = v9;
      [*(v9 + OBJC_IVAR___SFTabOverviewLargeTitleView_titleTextField) resignFirstResponder];
    }

    goto LABEL_11;
  }

  v6 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView);
  if (v6)
  {
    if (*(v6 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2) == 1)
    {
      [*(v6 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField) resignFirstResponder];
    }
  }
}

void sub_18B9E8940(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_18B9E899C()
{
  sub_18B7E5BC8();
  type metadata accessor for AnimationSettings();
  inited = swift_initStaticObject();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  v4[2] = inited;
  v4[3] = sub_18B9EA8A8;
  v4[4] = v2;
  v14 = sub_18B7D80AC;
  v15 = v4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_301;
  v5 = _Block_copy(&v10);
  v6 = v0;
  sub_18BC1E1A8();

  v14 = CGRectMake;
  v15 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B8043A0;
  v13 = &block_descriptor_304;
  v7 = _Block_copy(&v10);

  [v3 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v7);
  _Block_release(v5);

  v8 = swift_initStaticObject();
  return sub_18B7EB088(v8);
}

void sub_18B9E8B88()
{
  v1 = sub_18BC1EE48();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) init];
  v6 = [v5 searchBar];
  sub_18BC1EE38();
  sub_18BC1EE28();
  (*(v2 + 8))(v4, v1);
  v7 = sub_18BC20B98();

  [v6 setPlaceholder_];

  [v5 setSearchResultsUpdater_];
  v8 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_searchController);
  *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_searchController) = v5;
  v9 = v5;

  sub_18B83AA80();
}

uint64_t sub_18B9E8D2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_18B7DEE8C();
  v6 = &unk_1EA9D8000;
  v7 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_registrations;
  swift_beginAccess();
  v8 = *&v5[v7];
  v9 = *(v8 + 16);
  result = sub_18BC1E3F8();
  if (v9)
  {
    v11 = 0;
    v12 = (v8 + 40);
    do
    {
      v13 = *v12;
      ObjectType = swift_getObjectType();
      result = (*(v13 + 72))(12, ObjectType, v13);
      if (result)
      {
        if (*((*(v13 + 24))(ObjectType, v13) + 16))
        {
          sub_18B7C9044(0xCu);
          if (v15)
          {

            goto LABEL_10;
          }
        }
      }

      ++v11;
      v12 += 2;
    }

    while (v9 != v11);
    v11 = v9;
LABEL_10:
    v6 = &unk_1EA9D8000;
  }

  else
  {
    v11 = 0;
  }

  v16 = *(v8 + 16);
  if (v11 == v16)
  {

    v17 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___barManager);
    v18 = v6[373];
    swift_beginAccess();
    v8 = *&v17[v18];
    v11 = *(v8 + 16);
    v5 = v17;
    result = sub_18BC1E3F8();
    if (v11)
    {
      v19 = 0;
      v20 = (v8 + 40);
      do
      {
        v21 = *v20;
        v22 = swift_getObjectType();
        result = (*(v21 + 72))(10, v22, v21);
        if (result)
        {
          if (*((*(v21 + 24))(v22, v21) + 16))
          {
            sub_18B7C9044(0xAu);
            if (v23)
            {

              goto LABEL_25;
            }
          }
        }

        ++v19;
        v20 += 2;
      }

      while (v11 != v19);
    }

LABEL_24:
    v19 = v11;
LABEL_25:
    v25 = *(v8 + 16);
    if (v19 == v25)
    {
      v24 = 0;
      goto LABEL_29;
    }

    if (v19 < v25)
    {
      v34 = *(v8 + 32 + 16 * v19);
      result = sub_18B7D6450(&v34, 10, &v32);
      v24 = v32;
      if (v32)
      {
        goto LABEL_29;
      }

LABEL_38:
      __break(1u);
      return result;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v11 >= v16)
  {
    __break(1u);
    goto LABEL_37;
  }

  v34 = *(v8 + 32 + 16 * v11);
  result = sub_18B7D6450(&v34, 12, &v33);
  v24 = v33;
  if (!v33)
  {
    __break(1u);
    goto LABEL_24;
  }

LABEL_29:

  sub_18B7CFD08(v4);
  v26 = _s4PageVMa();
  if ((*(*(v26 - 8) + 48))(v4, 1, v26) == 1)
  {

    v27 = &qword_1EA9D52E0;
    v28 = v4;
  }

  else
  {
    v29 = *&v4[*(v26 + 72) + 32];
    sub_18BC1E1A8();
    sub_18B7DFF04(v4, _s4PageVMa);
    if (v24)
    {
      v30 = sub_18B7B0AC0(0, &unk_1EA9D35A0);
    }

    else
    {
      v30 = 0;
      *(&v34 + 1) = 0;
      v35 = 0;
    }

    *&v34 = v24;
    v36 = v30;
    v31 = v24;
    v29(&v34);

    v27 = &qword_1EA9D5220;
    v28 = &v34;
  }

  return sub_18B988BAC(v28, v27);
}

void sub_18B9E911C()
{
  sub_18B7C9974();
  v1 = v0;
  sub_18BA56FE4();
}

uint64_t sub_18B9E9164(id a1)
{
  v3 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView);
  if (v3)
  {
    v4 = v3;
    sub_18BA1AD74([a1 isActive]);
  }

  if ([a1 isActive])
  {
    v5 = [a1 searchBar];
    v6 = [v5 text];

    if (v6)
    {
      v7 = sub_18BC20BD8();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0xE000000000000000;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  sub_18B7C9974();
  v11 = v10;
  v12 = sub_18B7CEA3C();

  if (v12)
  {
    sub_18B9C0D70(v7, v9);
  }
}

void sub_18B9E92F0()
{

  sub_18B7DFF04(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_layout, _s6LayoutVMa);

  v1 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___hudOffsetForRubberBanding);
}

id sub_18B9E94F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabOverviewDisplayItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B9E9744(void *a1, void (*a2)(void *))
{
  v6[3] = sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_18B988BAC(v6, &qword_1EA9D5220);
}

uint64_t sub_18B9E97C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_registrations;
  swift_beginAccess();
  v8 = *(a2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_18B7D37E8(0, v8[2] + 1, 1, v8);
    *(a2 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_18B7D37E8((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = a1;
  v12[5] = &off_1EE465970;
  *(a2 + v7) = v8;
  swift_endAccess();
  sub_18BC1E1A8();
  sub_18B7DF6A0(v6);
  Strong = swift_unknownObjectUnownedLoadStrong();

  sub_18BAD39EC(0, 0, v16);
  sub_18BAD39EC(4u, 1, &v17);
  sub_18BACFF94(v16);
  return sub_18B988BAC(v6, &qword_1EA9D52E0);
}

uint64_t sub_18B9E998C(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_registrations;
  swift_beginAccess();
  v11 = *(a2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_18B7D37E8(0, v11[2] + 1, 1, v11);
    *(a2 + v10) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_18B7D37E8((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = a1;
  v15[5] = &off_1EE465918;
  *(a2 + v10) = v11;
  swift_endAccess();
  sub_18BC1E1A8();
  sub_18B7DF6A0(v9);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v17 = swift_unknownObjectUnownedLoadStrong();

  v18 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(v17 + v18, v6, _s7ContentVMa);

  sub_18BAD3D4C(v9, v6, 0);
  sub_18B7DFF04(v6, _s7ContentVMa);
  return sub_18B988BAC(v9, &qword_1EA9D52E0);
}

void sub_18B9E9BD4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v83 = a3;
  v84 = a4;
  v82 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = &v67 - v8;
  v9 = sub_18BC21688();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v77 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52F0);
  v75 = *(v13 - 8);
  v76 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v67 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52F8);
  v72 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v67 - v16;
  v18 = sub_18BC1E7F8();
  v73 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5300);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v67 - v26;
  v28 = sub_18BC21808();
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 && a1)
  {
    v70 = v30;
    v71 = v29;
    v67 = a5;
    sub_18B82B844(v82, v83, v84, a5);
    v69 = a1;
    sub_18BC21798();
    sub_18BC1E3F8();
    sub_18BC1E7E8();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v67 - 2) = v34;
    swift_getKeyPath();
    sub_18B9EA798();
    sub_18BC1E7C8();

    v68 = v32;
    v35 = *(v73 + 8);
    v35(v20, v18);
    v36 = objc_opt_self();
    v73 = *MEMORY[0x1E69DDD40];
    v37 = [v36 preferredFontForTextStyle_];
    v85 = v37;
    sub_18BC1E7D8();

    (*(v72 + 8))(v17, v15);
    v38 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v38);
    *(&v67 - 2) = v39;
    swift_getKeyPath();
    sub_18B9EA7EC();
    v40 = v74;
    sub_18BC1E7C8();

    v35(v23, v18);
    v41 = v68;
    v42 = [objc_opt_self() labelColor];
    v85 = v42;
    v43 = v76;
    sub_18BC1E7D8();

    (*(v75 + 8))(v40, v43);
    v44 = v84;
    v45 = v67;
    sub_18BC1E768();
    v46 = sub_18BC1E758();
    (*(*(v46 - 8) + 56))(v27, 0, 1, v46);
    v47 = v45;
    sub_18BC216C8();
    v48 = v82;
    v49 = v82;
    sub_18BC21788();
    v50 = swift_allocObject();
    v51 = v83;
    v50[2] = v48;
    v50[3] = v51;
    v50[4] = v44;
    v50[5] = v47;
    v52 = v51;
    sub_18BC1E3F8();
    v53 = v49;
    v54 = v77;
    sub_18BC1FBD8();
    v55 = sub_18BC1FBC8();
    v56 = *(*(v55 - 8) + 56);
    v56(v54, 0, 1, v55);
    sub_18BC21718();
    sub_18BC21648();
    v57 = [objc_opt_self() configurationWithTextStyle:v73 scale:2];
    sub_18BC215F8();
    if ([objc_opt_self() isSolariumEnabled])
    {
      sub_18BC21728();
      sub_18BC1FBD8();
      v56(v54, 0, 1, v55);
      sub_18BC21738();
    }

    (*(v79 + 104))(v78, *MEMORY[0x1E69DC538], v80);
    sub_18BC216B8();
    v58 = v69;
    v59 = sub_18BC20B98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5DF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18BC3E410;
    *(inited + 32) = 0x656C69666F7250;
    *(inited + 72) = MEMORY[0x1E69E6158];
    v61 = v84;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v61;
    *(inited + 56) = v47;
    sub_18BC1E3F8();
    sub_18BA64DB8(inited);
    swift_setDeallocating();
    sub_18B988BAC(inited + 32, &qword_1EA9D5320);
    v62 = sub_18BC20998();

    v63 = WBSMakeAccessibilityIdentifier();

    if (!v63)
    {
      sub_18BC20BD8();
      v63 = sub_18BC20B98();
    }

    [v58 setAccessibilityIdentifier_];

    v64 = v70;
    v65 = v81;
    v66 = v71;
    (*(v70 + 16))(v81, v41, v71);
    (*(v64 + 56))(v65, 0, 1, v66);
    sub_18BC21828();

    (*(v64 + 8))(v41, v66);
  }
}

unint64_t sub_18B9EA798()
{
  result = qword_1EA9D5600;
  if (!qword_1EA9D5600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5600);
  }

  return result;
}

unint64_t sub_18B9EA7EC()
{
  result = qword_1EA9D5310;
  if (!qword_1EA9D5310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5310);
  }

  return result;
}

uint64_t sub_18B9EAA90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_18B9EAB2C()
{
  if (*(v0 + 40) <= 0.0)
  {
    v1 = *(v0 + 16);
    if (*(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 16) <= 0.0)
    {
      v2 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets);
      *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_showsScrollPockets) = 0;
      if (v2 == 1)
      {
        sub_18B9E0F90();
      }
    }
  }
}

void sub_18B9EAC38()
{
  v1 = *(_s4PageVMa_0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_18B9E01A0(v2, v3);
}

uint64_t objectdestroy_572Tm()
{

  return swift_deallocObject();
}

uint64_t sub_18B9EB064(uint64_t a1)
{
  v3 = *(_s4PageVMa() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_18B9DA554(a1, v6, v7, v4, v5);
}

uint64_t objectdestroy_376Tm()
{

  return swift_deallocObject();
}

void sub_18B9EB2D0(void *a1)
{
  v3 = *(_s4PageVMa() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  sub_18B9D6698(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_18B9EB348()
{
  _s4PageVMa();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_18B9D6BAC(v1, v2, v3);
}

unint64_t sub_18B9EB550()
{
  result = qword_1EA9D53D8;
  if (!qword_1EA9D53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D53D8);
  }

  return result;
}

unint64_t sub_18B9EB5A8()
{
  result = qword_1EA9D53E0;
  if (!qword_1EA9D53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D53E0);
  }

  return result;
}

unint64_t sub_18B9EB600()
{
  result = qword_1EA9D53E8;
  if (!qword_1EA9D53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D53E8);
  }

  return result;
}

unint64_t sub_18B9EB654()
{
  result = qword_1EA9D53F0;
  if (!qword_1EA9D53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D53F0);
  }

  return result;
}

uint64_t sub_18B9EB6A8()
{
  v25 = sub_18BC20B08();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v19 - v4;
  v5 = sub_18BC1E8B8();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_18BC1E8D8();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_18BC1E4F8();
  __swift_allocate_value_buffer(v12, qword_1EA9F7970);
  v21 = __swift_project_value_buffer(v12, qword_1EA9F7970);
  sub_18BC20B18();
  sub_18BC1EC38();
  v13 = *MEMORY[0x1E6968DF0];
  v14 = *(v6 + 104);
  v19[1] = v6 + 104;
  v14(v8, v13, v5);
  sub_18BC1E8F8();
  sub_18BC20B58();
  sub_18BC20B48();
  v16 = v24;
  v15 = v25;
  (*(v0 + 104))(v24, *MEMORY[0x1E6969D68], v25);
  sub_18BC20B28();
  (*(v0 + 8))(v16, v15);
  sub_18BC20B48();
  sub_18BC20B78();
  sub_18BC1EC38();
  v14(v8, v13, v20);
  v17 = v26;
  sub_18BC1E8F8();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_18BC1E4E8();
}

uint64_t sub_18B9EBB5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4608);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_18BC1E8D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_18BC20B68();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_18BC20B58();
  sub_18BC20B48();
  sub_18BC1DFE8();
  sub_18BC20B38();

  sub_18BC20B48();
  sub_18BC1E8C8();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_18BC1E398();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_18BC1E3A8();
}

unint64_t sub_18B9EBDD0()
{
  result = qword_1EA9D53F8;
  if (!qword_1EA9D53F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D53F8);
  }

  return result;
}

unint64_t sub_18B9EBE24()
{
  result = qword_1EA9D5400;
  if (!qword_1EA9D5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5400);
  }

  return result;
}

unint64_t sub_18B9EBE78()
{
  result = qword_1EA9D5408;
  if (!qword_1EA9D5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5408);
  }

  return result;
}

unint64_t sub_18B9EBED0()
{
  result = qword_1EA9D5410;
  if (!qword_1EA9D5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5410);
  }

  return result;
}

uint64_t sub_18B9EBF30@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_18BC1E3F8();
}

uint64_t sub_18B9EBF3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EA9D2178 != -1)
  {
    swift_once();
  }

  v2 = sub_18BC1E4F8();
  v3 = __swift_project_value_buffer(v2, qword_1EA9F7970);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_18B9EBFE8()
{
  result = qword_1EA9D5418;
  if (!qword_1EA9D5418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D5420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5418);
  }

  return result;
}

uint64_t sub_18B9EC04C(uint64_t a1)
{
  v2 = sub_18B9EC484();

  return MEMORY[0x1EEDB2C50](a1, v2);
}

unint64_t sub_18B9EC09C()
{
  result = qword_1EA9D5428;
  if (!qword_1EA9D5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5428);
  }

  return result;
}

uint64_t sub_18B9EC0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18B7B6968;

  return MEMORY[0x1EEDB3F58](a1, a2, a3, a4);
}

uint64_t sub_18B9EC1BC(uint64_t a1)
{
  v2 = sub_18B9EBED0();

  return MEMORY[0x1EEDB3F70](a1, v2);
}

uint64_t sub_18B9EC208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_18B9EC2C0;

  return (sub_18B9ED58C)(a2, a3);
}

uint64_t sub_18B9EC2C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_18B9EC3D4()
{
  result = qword_1EA9D5430;
  if (!qword_1EA9D5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5430);
  }

  return result;
}

unint64_t sub_18B9EC42C()
{
  result = qword_1EA9D5438;
  if (!qword_1EA9D5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5438);
  }

  return result;
}

unint64_t sub_18B9EC484()
{
  result = qword_1EA9D5440;
  if (!qword_1EA9D5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5440);
  }

  return result;
}

uint64_t sub_18B9EC4D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18B9EDB00;

  return sub_18B9ED018(a1);
}

uint64_t sub_18B9EC580(uint64_t a1)
{
  v1[2] = a1;
  sub_18BC20F28();
  v1[3] = sub_18BC20F18();
  v3 = sub_18BC20ED8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_18B9EC618, v3, v2);
}

uint64_t sub_18B9EC618()
{
  if (qword_1EA9D24D8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_18B9EC6DC;

  return sub_18BB9833C();
}

uint64_t sub_18B9EC6DC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_18B9EC870;
  }

  else
  {
    v4[8] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_18B9EC804;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_18B9EC804()
{
  v1 = v0[8];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_18B9EC870()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B9EC8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18B9EC994;

  return MEMORY[0x1EEDB2EC8](a1, a2, a3, a4);
}

uint64_t sub_18B9EC994(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_18B9ECA98()
{
  result = qword_1EA9D5448;
  if (!qword_1EA9D5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5448);
  }

  return result;
}

unint64_t sub_18B9ECAF0()
{
  result = qword_1EA9D5450;
  if (!qword_1EA9D5450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D5458);
    sub_18B9EBE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5450);
  }

  return result;
}

uint64_t sub_18B9ECB74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_18B9EB654();
  *v5 = v2;
  v5[1] = sub_18B987B10;

  return MEMORY[0x1EEDB2ED0](a1, a2, v6);
}

uint64_t sub_18B9ECC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return MEMORY[0x1EEDB3B88](a1, a2, a3);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_18B9ECD04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_18B9ECD4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_18B9ECD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_18BC1E8B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC1EC48();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_18BC20B88();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_18BC1E8D8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5460);
  sub_18BC20B18();
  sub_18BC1EC38();
  (*(v7 + 104))(v9, *MEMORY[0x1E6968DF0], v6);
  sub_18BC1E8F8();
  sub_18BC1E038();
  v13[1] = a3;
  v13[2] = a4;
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1DFF8();
}

uint64_t sub_18B9ED038()
{
  v13 = v0;
  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  sub_18BC1E3F8();
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21258();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = MEMORY[0x18CFFC2A0](v4, MEMORY[0x1E69E6158]);
    v9 = sub_18B7EA850(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18B7AC000, v2, v3, "Profile entities query for: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x18CFFEEE0](v6, -1, -1);
    MEMORY[0x18CFFEEE0](v5, -1, -1);
  }

  if (qword_1EA9D24D8 != -1)
  {
    swift_once();
  }

  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_18B9ED240;

  return sub_18BB9833C();
}

uint64_t sub_18B9ED240(uint64_t a1)
{
  v3 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_18B9ED374, 0, 0);
  }
}

void sub_18B9ED374()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v17 = -v2;
    v4 = v1 + 48;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = v5;
      v6 = (v4 + 24 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v7 = v0[4];
        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        v10 = *v6;
        v0[2] = v9;
        v0[3] = v8;
        v11 = swift_task_alloc();
        *(v11 + 16) = v0 + 2;
        swift_bridgeObjectRetain_n();
        sub_18BC1E1A8();
        LOBYTE(v7) = sub_18B9B4FCC(sub_18B987C04, v11, v7);

        if (v7)
        {
          break;
        }

        ++v3;
        v6 += 3;
        if (v17 + v3 == 1)
        {
          v5 = v16;
          goto LABEL_15;
        }
      }

      v5 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18B9B688C(0, *(v16 + 16) + 1, 1);
        v5 = v16;
      }

      v4 = v1 + 48;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_18B9B688C((v12 > 1), v13 + 1, 1);
        v4 = v1 + 48;
        v5 = v16;
      }

      *(v5 + 16) = v13 + 1;
      v14 = (v5 + 24 * v13);
      v14[4] = v9;
      v14[5] = v8;
      v14[6] = v10;
    }

    while (v17 + v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  v15 = v0[1];

  v15(v5);
}

uint64_t sub_18B9ED58C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B9ED5AC, 0, 0);
}

uint64_t sub_18B9ED5AC()
{
  v11 = v0;
  if (qword_1EA9D22B0 != -1)
  {
    swift_once();
  }

  v1 = sub_18BC1F2C8();
  __swift_project_value_buffer(v1, qword_1EA9F7EC8);
  sub_18BC1E3F8();
  v2 = sub_18BC1F2A8();
  v3 = sub_18BC21258();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_18B7EA850(v5, v4, &v10);
    _os_log_impl(&dword_18B7AC000, v2, v3, "Profile string query for: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x18CFFEEE0](v7, -1, -1);
    MEMORY[0x18CFFEEE0](v6, -1, -1);
  }

  if (qword_1EA9D24D8 != -1)
  {
    swift_once();
  }

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_18B9ED79C;

  return sub_18BB9833C();
}

uint64_t sub_18B9ED79C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_18B9ED8D0, 0, 0);
  }
}

void sub_18B9ED8D0()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v20 = -v2;
    v4 = v1 + 48;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v19 = v5;
      v6 = (v4 + 24 * v3++);
      while (1)
      {
        if ((v3 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        sub_18BC1E3F8();
        sub_18BC1E1A8();
        sub_18BC1DFE8();
        v10 = sub_18BC20B98();

        v11 = sub_18BC20B98();
        v12 = [v10 safari:v11 hasLocalizedCaseAndDiacriticInsensitivePrefix:?];

        if (v12)
        {
          break;
        }

        ++v3;
        v6 += 3;
        if (v20 + v3 == 1)
        {
          v5 = v19;
          goto LABEL_15;
        }
      }

      v13 = v8;
      v5 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18B9B688C(0, *(v19 + 16) + 1, 1);
        v5 = v19;
      }

      v4 = v1 + 48;
      v14 = v8;
      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_18B9B688C((v15 > 1), v16 + 1, 1);
        v14 = v13;
        v5 = v19;
      }

      *(v5 + 16) = v16 + 1;
      v17 = (v5 + 24 * v16);
      v17[4] = v14;
      v17[5] = v7;
      v17[6] = v9;
    }

    while (v20 + v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  v18 = *(v21 + 8);

  v18(v5);
}

id SFBrowsingAssistantMenuSection.init(identifier:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier_];

  return v2;
}

{
  v2 = sub_18B9EE618(a1);

  return v2;
}

uint64_t SFBrowsingAssistantMenuSection.title.getter()
{
  v1 = (v0 + OBJC_IVAR___SFBrowsingAssistantMenuSection_title);
  swift_beginAccess();
  v2 = *v1;
  sub_18BC1E3F8();
  return v2;
}

uint64_t SFBrowsingAssistantMenuSection.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SFBrowsingAssistantMenuSection_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_18B9EDEA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  v4 = sub_18BC20BD8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_18B9EDF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_beginAccess();
  sub_18BC1E3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v5 = sub_18BC20D88();

  return v5;
}

uint64_t sub_18B9EE064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = sub_18BC20D98();
  v9 = *a6;
  swift_beginAccess();
  *(a1 + v9) = v8;
}

uint64_t sub_18B9EE0E8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void sub_18B9EE13C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v7 = sub_18BC20D98();

  *a4 = v7;
}

void sub_18B9EE1A8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, SEL *a7)
{
  v8 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v9 = sub_18BC20D88();
  [v8 *a7];
}

id SFBrowsingAssistantMenuSection.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_18B9EE328()
{
  v0 = SFMorePageMenuSections();
  type metadata accessor for SFBrowsingAssistantMenuSectionIdentifier(0);
  v1 = sub_18BC20D98();

  v2 = *(v1 + 16);
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_18BC21B98();
    v3 = 32;
    do
    {
      [objc_allocWithZone(SFBrowsingAssistantMenuSection) initWithIdentifier_];
      sub_18BC21B68();
      sub_18BC21BA8();
      sub_18BC21BB8();
      sub_18BC21B78();
      v3 += 8;
      --v2;
    }

    while (v2);

    return v5;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

id sub_18B9EE438(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EE48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(SFBrowsingAssistantMenuSection) initWithIdentifier_];
  sub_18BC1EE38();
  sub_18BC1EE28();
  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5510);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18BC3E410;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_18B9EEA2C();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  sub_18BC1E3F8();
  sub_18BC20BA8();

  v10 = sub_18BC20B98();

  [v8 setTitle_];

  return v8;
}

id sub_18B9EE618(void *a1)
{
  v3 = sub_18BC1EE48();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___SFBrowsingAssistantMenuSection_items] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR___SFBrowsingAssistantMenuSection_settings] = v7;
  *&v1[OBJC_IVAR___SFBrowsingAssistantMenuSection_identifier] = a1;
  v8 = sub_18BC20BD8();
  v10 = v9;
  if (v8 == sub_18BC20BD8() && v10 == v11)
  {
    v25 = a1;

    goto LABEL_17;
  }

  v13 = sub_18BC21FD8();
  v14 = a1;

  if (v13)
  {
    goto LABEL_17;
  }

  v15 = sub_18BC20BD8();
  v17 = v16;
  if (v15 == sub_18BC20BD8() && v17 == v18)
  {
    goto LABEL_16;
  }

  v20 = sub_18BC21FD8();

  if (v20)
  {
LABEL_17:
    sub_18BC1EE38();
    v26 = sub_18BC1EE28();
    v28 = v27;
    (*(v4 + 8))(v6, v3);
    goto LABEL_18;
  }

  v21 = sub_18BC20BD8();
  v23 = v22;
  if (v21 == sub_18BC20BD8() && v23 == v24)
  {
LABEL_16:

    goto LABEL_17;
  }

  v31 = sub_18BC21FD8();

  if (v31)
  {
    goto LABEL_17;
  }

  v26 = 0x6C616E7265746E49;
  v32 = sub_18BC20BD8();
  v34 = v33;
  if (v32 == sub_18BC20BD8() && v34 == v35)
  {

    v28 = 0xE800000000000000;
  }

  else
  {
    v36 = sub_18BC21FD8();

    if (v36)
    {
      v28 = 0xE800000000000000;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }
  }

LABEL_18:
  v29 = &v1[OBJC_IVAR___SFBrowsingAssistantMenuSection_title];
  *v29 = v26;
  v29[1] = v28;
  v37.receiver = v1;
  v37.super_class = SFBrowsingAssistantMenuSection;
  return objc_msgSendSuper2(&v37, sel_init);
}

unint64_t type metadata accessor for SFBrowsingAssistantMenuSection()
{
  result = qword_1EA9D5498;
  if (!qword_1EA9D5498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D5498);
  }

  return result;
}

unint64_t sub_18B9EEA2C()
{
  result = qword_1EA9D5518;
  if (!qword_1EA9D5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5518);
  }

  return result;
}

id SFCapsulePageLayoutMinibarSquished.__allocating_init(container:)()
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

id SFCapsulePageLayoutMinibarSquished.init(container:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SFCapsulePageLayoutMinibarSquished();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  return v1;
}

id SFCapsulePageLayoutMinibarSquished.__allocating_init(container:baseLayout:)()
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

id SFCapsulePageLayoutMinibarSquished.init(container:baseLayout:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SFCapsulePageLayoutMinibarSquished();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t (*sub_18B9EEEF4(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC12MobileSafari34SFCapsulePageLayoutMinibarSquished_baseLayout;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9A9824;
}

uint64_t (*sub_18B9EEFB0(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC12MobileSafari34SFCapsulePageLayoutMinibarSquished_container;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9AAC70;
}

double sub_18B9EF0C8()
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

uint64_t sub_18B9EF224()
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

uint64_t sub_18B9EF2D4(uint64_t a1, uint64_t a2, void *a3)
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
      if (sub_18BC20BD8() == a1 && v10 == a2)
      {
      }

      else
      {
        v12 = sub_18BC21FD8();

        if ((v12 & 1) == 0)
        {
          v13 = [v7 capsuleInfoForPage_];
          v14 = *&v13[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
          v15 = *&v13[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
          v17 = *&v13[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
          v16 = *&v13[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

          v18 = sub_18B7F913C(a3);
          v19 = *&v18[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
          v20 = *&v18[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
          v22 = *&v18[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
          v21 = *&v18[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

          v23 = sub_18BC20B98();
          v24 = [v7 infoForSupplementaryIdentifier:v23 page:a3];

          rect.origin.x = v19;
          v72.origin.x = v19;
          v72.origin.y = v20;
          v72.size.width = v22;
          v72.size.height = v21;
          CGRectGetMidY(v72);
          rect.origin.y = v14;
          v73.origin.x = v14;
          v73.origin.y = v15;
          v73.size.width = v17;
          v73.size.height = v16;
          CGRectGetMidY(v73);
          v25 = &v24[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
          *v25 = _SFRoundRectToPixels(*&v24[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame]);
          *(v25 + 1) = v26;
          *(v25 + 2) = v27;
          *(v25 + 3) = v28;
          v29 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha;
          swift_beginAccess();
          *&v24[v29] = 0;
          v30 = [v9 traitCollection];
          v31 = [v30 layoutDirection];

          if (sub_18BC20BD8() == a1 && v32 == a2)
          {

            v33 = v19;
            if (!v31)
            {
LABEL_18:
              v36 = 1;
LABEL_24:
              v65 = v36;
              if (sub_18BC20BD8() == a1 && v39 == a2)
              {

                if (!v31)
                {
LABEL_30:
                  v41 = 1;
LABEL_36:
                  v74.origin.x = v33;
                  v74.origin.y = v20;
                  v74.size.width = v22;
                  v74.size.height = v21;
                  Height = CGRectGetHeight(v74);
                  v75.origin.x = rect.origin.y;
                  v75.origin.y = v15;
                  v75.size.width = v17;
                  v75.size.height = v16;
                  v45 = Height / CGRectGetHeight(v75);
                  if (v65)
                  {
                    CGAffineTransformMakeScale(&rect.size, v45, v45);
                    rect.origin.x = v16;
                    v46 = v70;
                    v47 = v71;
                    v63 = v69;
                    size = rect.size;
                    v48 = &v24[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_transform];
                    swift_beginAccess();
                    *v48 = size;
                    *(v48 + 1) = v63;
                    *(v48 + 4) = v46;
                    *(v48 + 5) = v47;
                    v76.origin.x = v33;
                    v76.origin.y = v20;
                    v76.size.width = v22;
                    v76.size.height = v21;
                    MinX = CGRectGetMinX(v76);
                    v77.size.height = rect.origin.x;
                    v77.origin.x = rect.origin.y;
                    v77.origin.y = v15;
                    v77.size.width = v17;
                    MaxX = CGRectGetMinX(v77);
LABEL_40:
                    v56 = _SFRoundRectToPixels(*v25 + MinX - MaxX);
                    v58 = v57;
                    v60 = v59;
                    v62 = v61;
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    *v25 = v56;
                    *(v25 + 1) = v58;
                    *(v25 + 2) = v60;
                    *(v25 + 3) = v62;
                    return v24;
                  }

                  if (v41)
                  {
                    CGAffineTransformMakeScale(&rect.size, v45, v45);
                    v51 = v17;
                    v52 = v16;
                    v53 = v70;
                    v54 = v71;
                    v64 = v69;
                    v67 = rect.size;
                    v55 = &v24[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_transform];
                    swift_beginAccess();
                    *v55 = v67;
                    *(v55 + 1) = v64;
                    *(v55 + 4) = v53;
                    *(v55 + 5) = v54;
                    v78.origin.x = rect.origin.x;
                    v78.origin.y = v20;
                    v78.size.width = v22;
                    v78.size.height = v21;
                    MinX = CGRectGetMaxX(v78);
                    v79.origin.x = rect.origin.y;
                    v79.origin.y = v15;
                    v79.size.width = v51;
                    v79.size.height = v52;
                    MaxX = CGRectGetMaxX(v79);
                    goto LABEL_40;
                  }

LABEL_14:
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  return v24;
                }
              }

              else
              {
                v40 = sub_18BC21FD8();

                if ((v40 & 1) != 0 && !v31)
                {
                  goto LABEL_30;
                }
              }

              if (sub_18BC20BD8() == a1 && v42 == a2)
              {
              }

              else
              {
                v43 = sub_18BC21FD8();

                v41 = 0;
                if ((v43 & 1) == 0)
                {
                  goto LABEL_36;
                }
              }

              v41 = v31 != 0;
              goto LABEL_36;
            }
          }

          else
          {
            v35 = sub_18BC21FD8();

            v33 = v19;
            if ((v35 & 1) != 0 && !v31)
            {
              goto LABEL_18;
            }
          }

          if (sub_18BC20BD8() == a1 && v37 == a2)
          {
          }

          else
          {
            v38 = sub_18BC21FD8();

            v36 = 0;
            if ((v38 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          v36 = v31 != 0;
          goto LABEL_24;
        }
      }

      v24 = sub_18B9EF920(a3);
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18B9EF920(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_18B7F913C(a1);
    v5 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    v6 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8];
    v7 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16];
    v8 = *&v4[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24];

    v9 = [a1 lockdownStatusBar];
    v10 = v9;
    if (v9)
    {
      [v9 preferredSize];
    }

    v11 = [objc_allocWithZone(type metadata accessor for SFCapsulePageLayoutInfo()) init];
    v21.origin.x = v5;
    v21.origin.y = v6;
    v21.size.width = v7;
    v21.size.height = v8;
    CGRectGetMinY(v21);
    [v3 bounds];
    CGRectGetWidth(v22);
    v12 = _SFRoundRectToPixels(0.0);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    swift_unknownObjectRelease();
    v19 = &v11[OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame];
    *v19 = v12;
    *(v19 + 1) = v14;
    *(v19 + 2) = v16;
    *(v19 + 3) = v18;
    return v11;
  }

  else
  {
    result = sub_18BC21CF8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18B9EFAC0(uint64_t a1)
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

id SFCapsulePageLayoutMinibarSquished.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFCapsulePageLayoutMinibarSquished.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFCapsulePageLayoutMinibarSquished();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_18B9EFF30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B9EFF50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_18B9EFFA4()
{
  result = UIEdgeInsetsMakeWithEdges();
  qword_1EA9F7988 = v1;
  unk_1EA9F7990 = v2;
  qword_1EA9F7998 = v3;
  unk_1EA9F79A0 = v4;
  return result;
}

id sub_18B9EFFD4()
{
  result = [objc_opt_self() isSolariumEnabled];
  v1 = 10.0;
  if (result)
  {
    v1 = 26.0;
  }

  qword_1EA9F79A8 = *&v1;
  return result;
}

id sub_18B9F0018()
{
  result = [objc_opt_self() isSolariumEnabled];
  v1 = 44.0;
  if (result)
  {
    v1 = 48.0;
  }

  qword_1EA9F79B0 = *&v1;
  return result;
}

id sub_18B9F0064()
{
  result = [objc_opt_self() isSolariumEnabled];
  if (result)
  {
    if (qword_1EA9D2190 != -1)
    {
      result = swift_once();
    }

    v1 = *&qword_1EA9F79B0 * 0.5;
  }

  else
  {
    if (qword_1EA9D2188 != -1)
    {
      result = swift_once();
    }

    v1 = *&qword_1EA9F79A8;
  }

  qword_1EA9F79B8 = *&v1;
  return result;
}

id sub_18B9F0118@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = 16.0;
  v6 = 16.0;
  v7 = 16.0;
  if ((a1 & 1) == 0)
  {
    v6 = (a2 & 1) != 0 ? 38.0 : 10.0;
    v7 = (a2 & 1) != 0 ? 0.0 : 24.0;
    v8 = [objc_opt_self() mainScreen];
    [v8 _referenceBounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v21.origin.x = v10;
    v21.origin.y = v12;
    v21.size.width = v14;
    v21.size.height = v16;
    v5 = 20.0;
    if (CGRectGetWidth(v21) < 414.0)
    {
      v5 = 16.0;
    }
  }

  result = [objc_opt_self() isSolariumEnabled];
  *a3 = xmmword_18BC43720;
  *(a3 + 16) = xmmword_18BC43730;
  v18 = 0.0;
  if ((a2 & 1) == 0)
  {
    v18 = 16.0;
  }

  if (result)
  {
    v19 = 16.0;
  }

  else
  {
    v19 = v6;
  }

  if (result)
  {
    v20 = 16.0;
  }

  else
  {
    v20 = v5;
  }

  *(a3 + 32) = v20;
  if (!result)
  {
    v18 = v7;
  }

  *(a3 + 40) = 0;
  *(a3 + 48) = v20;
  *(a3 + 56) = 0x4030000000000000;
  *(a3 + 64) = v18;
  *(a3 + 72) = 0;
  *(a3 + 80) = v19;
  *(a3 + 88) = 0;
  return result;
}

uint64_t WBSReaderFont.id.getter()
{
  v1 = [v0 displayName];
  v2 = sub_18BC20BD8();

  return v2;
}

void sub_18B9F02D0(uint64_t *a1@<X8>)
{
  v3 = [*v1 displayName];
  v4 = sub_18BC20BD8();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_18B9F0388@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v75 = a2;
  v73 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v65 - v9;
  v10 = sub_18BC1EDD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_deck;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
  v14 = swift_allocObject();
  v67 = xmmword_18BC3E410;
  *(v14 + 16) = xmmword_18BC3E410;
  v76 = a1;
  *(v14 + 32) = a1;
  sub_18BC1E1A8();
  MEMORY[0x18CFFA250](v14);
  v69 = "floatingTabBarItem";
  sub_18B831DF0(0xD000000000000014, 0x800000018BC60730, v75, v80);

  v15 = *(v11 + 8);
  v70 = v10;
  v15(v13, v10);
  v71 = v82;
  v72 = v81;
  v77 = v83;
  v78 = v84;
  v79[0] = v85[0];
  *(v79 + 14) = *(v85 + 14);
  v16 = v86;
  v17 = v4 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content;
  v18 = (v17 + *(_s7ContentVMa_4() + 28));
  v74 = *v18;
  v19 = 0.0;
  v20 = 0.0;
  v75 = *(v18 + 8);
  if ((v75 & 1) == 0)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v67;
    *(v21 + 32) = v74;
    sub_18BC1E1A8();
    MEMORY[0x18CFFA250](v21);
    sub_18B831DF0(0xD000000000000014, v69 | 0x8000000000000000, 0, v87);

    v15(v13, v70);
    sub_18B7F4620(v87);
    v20 = -CGRectGetMinX(v87[0]);
  }

  v23 = *v80;
  v22 = *&v80[1];
  v25 = *&v80[2];
  Height = *&v80[3];
  v26 = v4 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics;
  *&v117[0] = *(v4 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 80);
  sub_18B7F3B64();
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v117[0] = v16;
  sub_18B7F3BB8(v124, 0x615272656E726F63, 0xEC00000073756964, isUniquelyReferenced_nonNull_native);
  v28 = *&v117[0];
  *&v117[0] = 0x3FF0000000000000;
  sub_18BC21A68();
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v117[0] = v28;
  result = sub_18B7F3BB8(v124, 0xD000000000000017, 0x800000018BC63300, v29);
  v31 = *&v117[0];
  if (v75)
  {
    goto LABEL_6;
  }

  v32 = v76 - v74;
  if (__OFSUB__(v76, v74))
  {
    __break(1u);
    return result;
  }

  v19 = v32;
  if (v32 < 0)
  {
    v33 = 0.5;
  }

  else
  {
LABEL_6:
    v33 = 0.0;
  }

  v34 = v20 + v23;
  *v117 = v33 - fabs(v19);
  *(&v117[0] + 1) = 2;
  sub_18B9F3104();
  sub_18BC21A68();
  v35 = swift_isUniquelyReferenced_nonNull_native();
  *&v117[0] = v31;
  sub_18B7F3BB8(v124, 0xD000000000000012, 0x800000018BC63340, v35);
  v36 = *&v117[0];
  v37 = v76;
  if (*(v26 + 104))
  {
    MaxX = CGRectGetMaxX(*(v26 + 48));
    v132.origin.x = v34;
    v132.origin.y = v22;
    v132.size.width = v25;
    v132.size.height = Height;
    v39 = MaxX - CGRectGetMaxX(v132);
    v133.origin.x = v34;
    v133.origin.y = v22;
    v133.size.width = v25;
    v133.size.height = Height;
    MinY = CGRectGetMinY(v133);
    v134.origin.x = v34;
    v134.origin.y = v22;
    v134.size.width = v25;
    v134.size.height = Height;
    Width = CGRectGetWidth(v134);
    v135.origin.x = v34;
    v135.origin.y = v22;
    v135.size.width = v25;
    v135.size.height = Height;
    Height = CGRectGetHeight(v135);
    v34 = v39;
    v22 = MinY;
    v25 = Width;
  }

  *v124 = v34;
  *&v124[1] = v22;
  *&v124[2] = v25;
  *&v124[3] = Height;
  v125 = v72;
  v126 = v71;
  v127 = v77;
  v128 = v78;
  *v129 = v79[0];
  *&v129[14] = *(v79 + 14);
  v130 = -v37;
  v131 = v36;
  sub_18B9F0BFC(v37, v124, v88);
  sub_18B7F4620(v124);
  v117[0] = v88[0];
  v117[1] = v88[1];
  v118 = v89;
  v119 = v90;
  v120 = v91;
  *v121 = *v92;
  *&v121[14] = *&v92[14];
  v122 = v93;
  v123 = v94;
  sub_18B9F182C(v37, v117, &v95.origin.x);
  sub_18B7F4620(v117);
  x = v95.origin.x;
  y = v95.origin.y;
  v44 = v95.size.width;
  v45 = v95.size.height;
  v46 = v96;
  v77 = v97;
  v78 = v98;
  v79[0] = *v99;
  *(v79 + 14) = *&v99[14];
  v47 = v100;
  v48 = v101;
  if (CGRectIntersectsRect(*(v26 + 48), v95))
  {
    v49 = 1;
  }

  else
  {
    v50 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
    swift_beginAccess();
    v51 = v4 + v50;
    v52 = v66;
    sub_18B7CA054(v51, v66, &qword_1EA9D9260);
    v53 = _s15PanGestureStateVMa(0);
    v54 = (*(*(v53 - 8) + 48))(v52, 1, v53);
    sub_18B988BAC(v52, &qword_1EA9D9260);
    if (v54 == 1 && (v55 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState, swift_beginAccess(), v56 = v4 + v55, v57 = v65, sub_18B7CA054(v56, v65, &qword_1EA9D4520), v58 = _s17PinchGestureStateVMa(0), v59 = (*(*(v58 - 8) + 48))(v57, 1, v58), sub_18B988BAC(v57, &qword_1EA9D4520), v59 == 1))
    {
      v49 = 0;
      v37 = v76;
    }

    else
    {
      v37 = v76;
      v49 = (v74 == v76) & ~v75;
    }
  }

  *v109 = x;
  *&v109[1] = y;
  *&v109[2] = v44;
  *&v109[3] = v45;
  v110 = v46;
  v111 = v49;
  v112 = v97;
  v113 = v98;
  *v114 = *v99;
  *&v114[14] = *&v99[14];
  v115 = v47;
  v116 = v48;
  sub_18B9F22E0(v37, v109, v102);
  result = sub_18B7F4620(v109);
  v60 = v103;
  v61 = v107;
  v62 = v108;
  v63 = v102[1];
  v64 = v73;
  *v73 = v102[0];
  v64[1] = v63;
  *(v64 + 16) = v60;
  *(v64 + 34) = v104;
  *(v64 + 50) = v105;
  *(v64 + 66) = *v106;
  v64[5] = *&v106[14];
  *(v64 + 12) = v61;
  *(v64 + 13) = v62;
  return result;
}

__n128 sub_18B9F0BFC@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a3;
  v5 = *(a2 + 96);
  v6 = *(a2 + 104);
  v120 = a1;
  v121 = v6;
  v141 = v5;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 80);
  v139 = *(a2 + 64);
  v140 = v11;
  v12 = *(a2 + 48);
  v137 = *(a2 + 32);
  v138 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v117 - v14;
  v16 = _s15PanGestureStateVMa(0);
  v17 = *(v16 - 1);
  v18 = MEMORY[0x1EEE9AC00](v16);
  *&v119 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v117.width - v20);
  v22 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
  swift_beginAccess();
  v23 = v3 + v22;
  v24 = v3;
  sub_18B7CA054(v23, v15, &qword_1EA9D9260);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_18B988BAC(v15, &qword_1EA9D9260);
LABEL_9:
    sub_18B81407C(a2, &v132);
    v134 = v139;
    v135 = v140;
    v136 = v141;
    v132 = v137;
    v133 = v138;
    v34 = v121;
    v33 = v122;
    goto LABEL_10;
  }

  sub_18B9F309C(v15, v21, _s15PanGestureStateVMa);
  v25 = (v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content);
  v26 = v25 + *(_s7ContentVMa_4() + 28);
  v27 = v21;
  if (*(v26 + 8))
  {
    goto LABEL_7;
  }

  v28 = v120;
  if ((v120 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  v29 = *v25;
  if (*(*v25 + 16) <= v120)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v30 = *v26;
  v31 = _s4ItemVMa_4();
  if ((*(v29 + ((*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80)) + *(*(v31 - 8) + 72) * v28 + *(v31 + 24)) & 1) != 0 || v30 != v28 && *(v21 + v16[9]) != 1)
  {
LABEL_7:
    v32 = v21;
LABEL_8:
    sub_18B7ED0B8(v32, _s15PanGestureStateVMa);
    goto LABEL_9;
  }

  v142.origin.y = *(a2 + 8);
  v142.size.width = *(a2 + 16);
  v142.size.height = *(a2 + 24);
  *&v118 = *a2;
  *&v142.origin.x = v118;
  *(&v118 + 1) = *&v142.origin.y;
  v117.width = v142.size.width;
  v117.height = v142.size.height;
  Height = CGRectGetHeight(v142);
  v39 = *v21;
  v40 = Height - (v39 + v39);
  if (v40 <= 0.0 && *(v21 + v16[7]) != 1)
  {
    if (qword_1EA9D22A0 == -1)
    {
LABEL_26:
      v55 = sub_18BC1F2C8();
      __swift_project_value_buffer(v55, qword_1EA9F7E98);
      v56 = v119;
      sub_18B7EC614(v27, *&v119, _s15PanGestureStateVMa);
      sub_18B81407C(a2, &v132);
      v57 = sub_18BC1F2A8();
      v58 = sub_18BC21238();
      sub_18B7F4620(a2);
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *&v127 = v60;
        *v59 = 134218242;
        v61 = **&v56;
        sub_18B7ED0B8(*&v56, _s15PanGestureStateVMa);
        *(v59 + 4) = v61;
        *(v59 + 12) = 2080;
        v132 = v118;
        v133 = v117;
        type metadata accessor for CGRect(0);
        v62 = sub_18BC20BF8();
        v64 = sub_18B7EA850(v62, v63, &v127);

        *(v59 + 14) = v64;
        _os_log_impl(&dword_18B7AC000, v57, v58, "QuickTabSwitcher is attempting invalid pan gesture with initial inset from bottom %f on item with layout %s", v59, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        MEMORY[0x18CFFEEE0](v60, -1, -1);
        MEMORY[0x18CFFEEE0](v59, -1, -1);
      }

      else
      {

        sub_18B7ED0B8(*&v56, _s15PanGestureStateVMa);
      }

      v32 = v27;
      goto LABEL_8;
    }

LABEL_75:
    swift_once();
    goto LABEL_26;
  }

  v41 = v24;
  v42 = (v21 + v16[10]);
  v43 = v42[1];
  v44 = v41;
  v45 = v41 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics;
  v46 = CGRectGetHeight(*(v41 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 48)) * 0.33 - v39;
  if (v46 < 0.0)
  {
    v47 = 0.0;
  }

  else
  {
    v47 = v46;
  }

  v9 = 0x3FE199999999999ALL;
  v119 = sub_18BB11774(0.0, v47, 0.55, -v43);
  v8 = v47 * 0.3;
  v48 = sub_18B9F178C(v43 * -0.3, v47 * 0.3);
  v49 = *(v27 + v16[7]);
  v10 = 1.0;
  v121 = 1.0;
  if ((v49 & 1) == 0)
  {
    v50 = 1.0;
    if (v30 != v28)
    {
      v50 = *(v45 + 144);
    }

    v51 = (v40 + v43 - v43 * -0.3) / v40;
    v52 = (v40 - v47 - v8) / v40 * v50;
    v53 = 1.0 - v52;
    if (1.0 - v52 == 0.0)
    {
      goto LABEL_22;
    }

    if (v51 >= v52)
    {
      if (v51 <= 1.0)
      {
LABEL_22:
        v121 = (v40 + v43 - v43 * -0.3) / v40;
        goto LABEL_23;
      }

      v65 = v53 * (-1.0 / ((v51 + -1.0) / v53 * 0.55 + 1.0) + 1.0) + 1.0;
    }

    else
    {
      v65 = v52 - v53 * (1.0 - 1.0 / ((v52 - v51) / v53 * 0.55 + 1.0));
    }

    v121 = v65;
    if (*(v45 + 120))
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_23:
  if (*(v45 + 120))
  {
LABEL_24:
    v54 = v48;
    goto LABEL_45;
  }

LABEL_35:
  v66 = *(v45 + 112);
  v54 = v48;
  v67 = (*&v66 >> 52) & 0x7FFLL;
  if (v67)
  {
    if (v67 != 2047)
    {
      v68 = (COERCE_UNSIGNED_INT64(CGRectGetHeight(*(v45 + 48)) * 0.33) >> 52) & 0x7FF;
      if (v68)
      {
        if (v68 != 2047)
        {
          v69 = *(v45 + 136);
          v8 = (v69 + CGRectGetWidth(*(v45 + 48))) / v66;
          v70 = v43 / (CGRectGetHeight(*(v45 + 48)) * 0.33);
          v71 = fabs(v70);
          v72 = v70 == 0.0;
          v73 = 0.0;
          if (!v72)
          {
            v73 = v71;
          }

          if (v73 <= 1.0)
          {
            v74 = v73;
          }

          else
          {
            v74 = 1.0;
          }

          v10 = _SFInterpolate(v8, 1.0, v74);
        }
      }
    }
  }

LABEL_45:
  v7 = *v42;
  v75 = *(v45 + 136);
  Width = CGRectGetWidth(*(v45 + 48));
  if (__OFADD__(v30, 1))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v77 = v75 + Width;
  if (v30 + 1 >= *(v29 + 16))
  {
    v79 = 0.0;
    if (v30 <= 0)
    {
      v80 = v119;
      if (v77 == 0.0)
      {
        goto LABEL_62;
      }

      if (v7 >= 0.0)
      {
        goto LABEL_60;
      }

LABEL_59:
      v7 = v79 - v77 * (1.0 - 1.0 / ((v79 - v7) / v77 * 0.55 + 1.0));
      goto LABEL_62;
    }

    goto LABEL_52;
  }

  v78 = *(v45 + 136);
  v79 = -(v78 + CGRectGetWidth(*(v45 + 48)));
  if (v30 > 0)
  {
LABEL_52:
    v81 = *(v45 + 136);
    v82 = CGRectGetWidth(*(v45 + 48));
    if (v77 != 0.0)
    {
      v80 = v119;
      if (v7 >= v79)
      {
        v83 = v81 + v82;
        if (v83 >= v7)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      goto LABEL_59;
    }

LABEL_53:
    v80 = v119;
    goto LABEL_62;
  }

  if (v77 == 0.0)
  {
    goto LABEL_53;
  }

  v80 = v119;
  if (v7 < v79)
  {
    goto LABEL_59;
  }

LABEL_60:
  v83 = 0.0;
  if (v7 > 0.0)
  {
LABEL_61:
    v7 = v83 + v77 * (1.0 - 1.0 / ((v7 - v83) / v77 * 0.55 + 1.0));
  }

LABEL_62:
  v84 = v10 * v7;
  v85 = (v54 - v80) * 0.5;
  v86 = *&v118 + v10 * v7;
  v87 = *(&v118 + 1) + v85;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v88 = v87;
    v89 = v117.height;
    v92 = v117.height;
    v91 = v117.width;
    v90 = v117.width;
  }

  else
  {
    v93 = *(v45 + 48);
    v94 = *(v45 + 56);
    v96 = *(v45 + 64);
    v95 = *(v45 + 72);
    v143.origin.x = v93;
    v143.origin.y = v94;
    v143.size.width = v96;
    v143.size.height = v95;
    MidX = CGRectGetMidX(v143);
    v119 = v86;
    v98 = MidX;
    v144.origin.x = v93;
    v144.origin.y = v94;
    v144.size.width = v96;
    v144.size.height = v95;
    v99 = v84 + v98;
    v100 = v85 + CGRectGetMidY(v144);
    v101 = v119;
    v145.origin.x = v119;
    v145.origin.y = v87;
    v89 = v117.height;
    v91 = v117.width;
    v145.size = v117;
    MinX = CGRectGetMinX(v145);
    v103 = v121;
    v86 = v99 + v121 * (MinX - v99);
    v146.origin.x = v101;
    v146.origin.y = v87;
    v146.size.width = v91;
    v146.size.height = v89;
    v104 = v100 + v103 * (CGRectGetMinY(v146) - v100);
    v147.origin.x = v101;
    v147.origin.y = v87;
    v147.size.width = v91;
    v147.size.height = v89;
    v90 = v103 * CGRectGetWidth(v147);
    v148.origin.x = v101;
    v148.origin.y = v87;
    v148.size.width = v91;
    v148.size.height = v89;
    v92 = v103 * CGRectGetHeight(v148);
    v88 = v104;
  }

  v105 = v86;
  if (v30 == v28)
  {
    v106 = v27;
    v107 = v90;
    v108 = v92;
  }

  else
  {
    v106 = v27;
    v109 = *(v44 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture);
    v105 = _SFInterpolate(*&v118, v105, v109);
    v88 = _SFInterpolate(*(&v118 + 1), v88, v109);
    v107 = _SFInterpolate(v91, v90, v109);
    v108 = _SFInterpolate(v89, v92, v109);
  }

  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v110 = *(a2 + 80);
  v129 = *(a2 + 64);
  v130 = v110;
  v111 = *(a2 + 104);
  v131 = *(a2 + 96);
  v112 = *(a2 + 48);
  v127 = *(a2 + 32);
  v128 = v112;
  v123 = v105;
  v124 = v88;
  v125 = v107;
  v126 = v108;
  sub_18B81407C(a2, &v132);
  type metadata accessor for CGRect(0);
  sub_18B7C128C(&qword_1EA9D5558, type metadata accessor for CGRect);
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v123 = v111;
  sub_18B7F3BB8(&v132, 0xD000000000000019, 0x800000018BC63320, isUniquelyReferenced_nonNull_native);
  v34 = v123;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    sub_18B7ED0B8(v106, _s15PanGestureStateVMa);
    v134 = v129;
    v135 = v130;
    v136 = v131;
    v115 = v127;
    v114 = v128;
  }

  else
  {
    v123 = v121 * *(v45 + 80);
    sub_18B7F3B64();
    sub_18BC21A68();
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v123 = v34;
    sub_18B7F3BB8(&v132, 0x615272656E726F63, 0xEC00000073756964, v116);
    sub_18B7ED0B8(v106, _s15PanGestureStateVMa);
    v34 = v123;
    v134 = v129;
    v135 = v130;
    v136 = v131;
    v115 = v127;
    v114 = v128;
    v7 = v105;
    v8 = v88;
    v9 = *&v107;
    v10 = v108;
  }

  v132 = v115;
  v133 = v114;
  v33 = v122;
LABEL_10:
  *v33 = v7;
  *(v33 + 8) = v8;
  *(v33 + 16) = v9;
  *(v33 + 24) = v10;
  v35 = v135;
  *(v33 + 64) = v134;
  *(v33 + 80) = v35;
  v36 = v136;
  result = v133;
  *(v33 + 32) = v132;
  *(v33 + 48) = result;
  *(v33 + 96) = v36;
  *(v33 + 104) = v34;
  return result;
}