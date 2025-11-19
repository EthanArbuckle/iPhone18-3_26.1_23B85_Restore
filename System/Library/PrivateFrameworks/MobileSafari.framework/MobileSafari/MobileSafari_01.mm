uint64_t sub_18B7CECB4@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v66 = a1;
  v77 = sub_18BC1EDD8();
  v6 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = _s4PageVMa_0();
  v70 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6538);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v68 = (&v65 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6540);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v81 = &v65 - v18;
  i = 0;
  v69 = *(v3 + 192);
  v20 = *(v69 + 16);
  v75 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_deck;
  v78 = v3;
  v74 = v3 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics;
  v80 = (v11 + 56);
  v79 = (v11 + 48);
  v73 = "quickTabSwitcherItem";
  v72 = (v6 + 8);
  v71 = xmmword_18BC3E410;
  v67 = a2;
  if (v20)
  {
    goto LABEL_3;
  }

LABEL_2:
  v21 = 1;
  for (i = v20; ; ++i)
  {
    v25 = v81;
    v26 = 1;
    (*v80)(v16, v21, 1, v10);
    sub_18B7CF39C(v16, v25, &qword_1EA9D6540);
    if ((*v79)(v25, 1, v10) == 1)
    {
      v63 = v66;
      return (*(v70 + 56))(v63, v26, 1, v65);
    }

    v27 = v20;
    v28 = *v25;
    v29 = v10;
    v30 = v25 + *(v10 + 48);
    v31 = v9;
    sub_18B82FCEC(v30, v9, _s4PageVMa_0);
    v32 = v78;
    v33 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
    v34 = swift_allocObject();
    *(v34 + 16) = v71;
    *(v34 + 32) = v28;
    sub_18BC1E1A8();
    v35 = v76;
    MEMORY[0x18CFFA250](v34);
    sub_18B831DF0(0xD000000000000017, v73 | 0x8000000000000000, 0, &v82);

    (*v72)(v35, v77);
    sub_18B7F4620(&v82);
    v36 = *(v32 + v33);
    v37 = *(v36 + 24);
    if (v37)
    {
      v38 = v37;
      v40 = *(v36 + 32);
      v39 = *(v36 + 40);
      v41 = *(v36 + 64);
      v42 = *(v36 + 80);
      v43 = *(v36 + 72) + *(v36 + 88);
      if (*(v36 + 16))
      {
        v44 = v40 + v43;
        v39 = v39 * v38 + v41 + v42;
        v45 = (v38 + -1.0) * *(v36 + 96);
      }

      else
      {
        v44 = v40 * v38 + v43 + (v38 + -1.0) * *(v36 + 96);
        v45 = v41 + v42;
      }

      v46 = v39 + v45;
    }

    else
    {
      v44 = 0.0;
      v46 = 0.0;
    }

    v9 = v31;
    v20 = v27;
    v10 = v29;
    v47 = v82;
    v48 = v83;
    Width = v84;
    Height = v85;
    if (*(v74 + 56))
    {
      v51 = v82;
      v52 = 0;
      v53 = v83;
      v54 = 0;
      v55 = v84;
      v56 = v85;
      v57 = v46;
      MaxX = CGRectGetMaxX(*(&v44 - 2));
      v87.origin.x = v51;
      v87.origin.y = v53;
      v87.size.width = Width;
      v87.size.height = v56;
      v59 = a3;
      v60 = MaxX - CGRectGetMaxX(v87);
      v88.origin.x = v51;
      v88.origin.y = v53;
      v88.size.width = Width;
      v88.size.height = v56;
      MinY = CGRectGetMinY(v88);
      v89.origin.x = v51;
      v89.origin.y = v53;
      v89.size.width = Width;
      v89.size.height = v56;
      Width = CGRectGetWidth(v89);
      v90.origin.x = v51;
      v90.origin.y = v53;
      v90.size.width = v55;
      v90.size.height = v56;
      Height = CGRectGetHeight(v90);
      v47 = v60;
      a3 = v59;
      a2 = v67;
      v48 = MinY;
    }

    v62 = Width;
    v86.x = a2;
    v86.y = a3;
    if (CGRectContainsPoint(*&v47, v86))
    {
      v64 = v31;
      v63 = v66;
      sub_18B82FCEC(v64, v66, _s4PageVMa_0);
      v26 = 0;
      return (*(v70 + 56))(v63, v26, 1, v65);
    }

    result = sub_18B82D174(v31, _s4PageVMa_0);
    if (i == v27)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *(v69 + 16))
    {
      goto LABEL_22;
    }

    v22 = v69 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * i;
    v23 = *(v10 + 48);
    v24 = v68;
    *v68 = i;
    sub_18B831A68(v22, v24 + v23);
    sub_18B7CF39C(v24, v16, &qword_1EA9D6538);
    v21 = 0;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_18B7CF39C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B7CF428()
{
  v1 = v0;
  v2 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v41 - v9);
  v11 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
  swift_beginAccess();
  sub_18B7DF568(v0 + v11, v10, _s6LayoutVMa);
  sub_18B7E1B60(v7);
  if (v10[2] == 0.0 && v10[3] == 0.0)
  {
    sub_18B7DF568(v7, v4, _s6LayoutVMa);
    swift_beginAccess();
    sub_18B7D0024(v4, v0 + v11);
    swift_endAccess();
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v53);

  sub_18B7D0088(v53);
  sub_18B7DFD58(v53);
  sub_18B7DF568(v7, v4, _s6LayoutVMa);
  swift_beginAccess();
  sub_18B7D0024(v4, v1 + v11);
  swift_endAccess();
  if (*(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_bottomBarBackgroundView))
  {
    v13 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v54);

    if (v54[0])
    {
      if (qword_1EA9D2240 != -1)
      {
        swift_once();
      }

      v50 = xmmword_1EA9F7C30;
      v51 = *&qword_1EA9F7C40;
      v52 = qword_1EA9F7C50;
      v48[0] = xmmword_1EA9F7BF0;
      v48[1] = unk_1EA9F7C00;
      v48[2] = xmmword_1EA9F7C10;
      v49 = xmmword_1EA9F7C20;
      sub_18B7DFD58(v54);
      v14 = v52;
      v15 = BYTE8(v51);
      v43 = v49;
      v44 = v50;
      v16 = *(&v48[2] + 1);
      v17 = *&v48[0];
      v41 = *(v48 + 8);
      v42 = *(&v48[1] + 8);
      sub_18B9D4798(v48, v45);
      v19 = v41;
      v18 = v42;
      v21 = v43;
      v20 = v44;
      v22 = 1;
    }

    else
    {
      if (qword_1EA9D2228 != -1)
      {
        swift_once();
      }

      v50 = xmmword_1EA9F7AF8;
      v51 = *&qword_1EA9F7B08;
      v52 = qword_1EA9F7B18;
      v48[0] = xmmword_1EA9F7AB8;
      v48[1] = unk_1EA9F7AC8;
      v48[2] = xmmword_1EA9F7AD8;
      v49 = xmmword_1EA9F7AE8;
      sub_18B9D4798(v48, v45);
      sub_18B7DFD58(v54);
      v14 = v52;
      v15 = BYTE8(v51);
      v22 = v51;
      v21 = v49;
      v20 = v50;
      v16 = *(&v48[2] + 1);
      v17 = *&v48[0];
      v18 = *(&v48[1] + 8);
      v19 = *(v48 + 8);
    }

    *(v48 + 8) = v19;
    *(&v48[1] + 8) = v18;
    *&v48[0] = v17;
    *(&v48[2] + 1) = v16;
    v49 = v21;
    v50 = v20;
    *&v51 = v22;
    BYTE8(v51) = v15;
    v52 = v14;
    v57 = v14;
    v56[4] = v20;
    v56[5] = v51;
    v56[0] = v48[0];
    v56[1] = v48[1];
    v56[2] = v48[2];
    v56[3] = v21;
    sub_18B9FA178(v56);
    sub_18B9D47F4(v48);
  }

  sub_18B7C9974();
  v24 = v23;
  sub_18B7DFB0C(v7, v48);
  v25 = qword_1EA9D6BA0;
  swift_beginAccess();
  sub_18B7E0DF0(v24 + v25, v45);
  swift_beginAccess();
  sub_18B9EA84C(v48, v24 + v25);
  swift_endAccess();
  sub_18B7EA1E4(v45);

  sub_18B7D4D24(v45);
  sub_18B7D4D24(v48);
  if (*(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_topBarBackgroundView))
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v55);

    if (v55[19])
    {
      if (v55[0])
      {
        if (qword_1EA9D2240 != -1)
        {
          swift_once();
        }

        v50 = xmmword_1EA9F7C30;
        v51 = *&qword_1EA9F7C40;
        v52 = qword_1EA9F7C50;
        v48[0] = xmmword_1EA9F7BF0;
        v48[1] = unk_1EA9F7C00;
        v48[2] = xmmword_1EA9F7C10;
        v49 = xmmword_1EA9F7C20;
        sub_18B7DFD58(v55);
        v27 = v52;
        v28 = BYTE8(v51);
        v43 = v49;
        v44 = v50;
        v29 = *(&v48[2] + 1);
        v30 = *&v48[0];
        v41 = *(v48 + 8);
        v42 = *(&v48[1] + 8);
        sub_18B9D4798(v48, v45);
        v32 = v41;
        v31 = v42;
        v34 = v43;
        v33 = v44;
        v35 = 4;
        goto LABEL_26;
      }

      if (qword_1EA9D2250 != -1)
      {
        swift_once();
      }

      v36 = &xmmword_1EA9F7CC0;
    }

    else
    {
      if (qword_1EA9D2248 != -1)
      {
        swift_once();
      }

      v36 = &xmmword_1EA9F7C58;
    }

    v37 = v36[5];
    v50 = v36[4];
    v51 = v37;
    v52 = *(v36 + 12);
    v38 = v36[1];
    v48[0] = *v36;
    v48[1] = v38;
    v39 = v36[3];
    v48[2] = v36[2];
    v49 = v39;
    sub_18B9D4798(v48, v45);
    sub_18B7DFD58(v55);
    v27 = v52;
    v28 = BYTE8(v51);
    v35 = v51;
    v34 = v49;
    v33 = v50;
    v29 = *(&v48[2] + 1);
    v30 = *&v48[0];
    v31 = *(&v48[1] + 8);
    v32 = *(v48 + 8);
LABEL_26:
    *&v45[0] = v30;
    *(v45 + 8) = v32;
    *(&v45[1] + 8) = v31;
    *(&v45[2] + 1) = v29;
    v45[3] = v34;
    v45[4] = v33;
    *&v46 = v35;
    BYTE8(v46) = v28;
    v47 = v27;
    v52 = v27;
    v50 = v33;
    v51 = v46;
    v48[0] = v45[0];
    v48[1] = v45[1];
    v48[2] = v45[2];
    v49 = v34;
    sub_18B9FA178(v48);
    sub_18B9D47F4(v45);
  }

  sub_18B7EA358();
  sub_18B7E5BC8();
  sub_18B7E670C();
  sub_18B7DFF04(v7, _s6LayoutVMa);
  return sub_18B7DFF04(v10, _s6LayoutVMa);
}

uint64_t sub_18B7CFAA0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3 + 16;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v22);

  sub_18B7DFD58(v22);
  if ((v22[21] & 1) == 0)
  {
    return 0;
  }

  sub_18B7CFD08(v4);
  v6 = _s4PageVMa();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_18B988BAC(v4, &qword_1EA9D52E0);
    return 0;
  }

  v7 = &v4[*(v6 + 64)];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v11 = *(v7 + 3);
  sub_18B82B844(*v7, v9, v10, v11);
  sub_18B7DFF04(v4, _s4PageVMa);
  if (!v11)
  {
    return 0;
  }

  sub_18B7E9C58(v8, v9, v10, v11);
  v12 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_hud);
  v13 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_content;
  swift_beginAccess();
  sub_18B7CA054(v12 + v13, v23, &qword_1EA9D5338);
  v14 = v24;
  sub_18B988BAC(v23, &qword_1EA9D5338);
  if (v14)
  {
    return 0;
  }

  v16 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v23);

  sub_18B7DFD58(v23);
  if ((v24 & 0x100) != 0)
  {
    sub_18B7C9974();
    v18 = v17;
    v19 = sub_18B7CEA3C();
    if (v19)
    {
      v20 = *&v19[OBJC_IVAR___SFTabOverview_searchState + 8] == 0;

      return v20;
    }
  }

  return 1;
}

uint64_t sub_18B7CFD08@<X0>(uint64_t a1@<X8>)
{
  v19[0] = a1;
  v1 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  v7 = _s4PageVMa_0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7C9974();
  v12 = v11;
  v13 = qword_1EA9F7FE8;
  swift_beginAccess();
  sub_18B7CA054(v12 + v13, v6, &unk_1EA9DBE90);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_18B988BAC(v6, &unk_1EA9DBE90);
    v14 = _s4PageVMa();
    return (*(*(v14 - 8) + 56))(v19[0], 1, 1, v14);
  }

  else
  {
    sub_18B81F940(v6, v10, _s4PageVMa_0);
    Strong = swift_unknownObjectUnownedLoadStrong();
    v17 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(Strong + v17, v3, _s7ContentVMa);

    MEMORY[0x1EEE9AC00](v18);
    v19[-2] = v10;
    sub_18B835D80(sub_18B9EB544, *(v3 + 1), v19[0]);
    sub_18B7DFF04(v3, _s7ContentVMa);
    return sub_18B7DFF04(v10, _s4PageVMa_0);
  }
}

uint64_t sub_18B7D0024(uint64_t a1, uint64_t a2)
{
  v4 = _s6LayoutVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_18B7D0088(_BYTE *a1)
{
  v3 = a1[16];
  if (v3 & 1) != 0 && (*a1 & 1) != 0 && (a1[23])
  {
    sub_18B9DA7BC();
  }

  if (a1[17])
  {
    sub_18B9DAC90();
    if ((v3 & 1) == 0)
    {
LABEL_7:
      if ((a1[21] & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_18B7E2A98();
  if ((a1[21] & 1) == 0)
  {
LABEL_8:
    v4 = a1[19];
    if ((v4 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_18B9E0690();
  v4 = a1[19];
  if ((v4 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  if ((a1[25] & 1) == 0)
  {
    sub_18B9E8B88();
  }

LABEL_15:
  if (a1[59])
  {
    sub_18B7E8FD8();
    if ((v4 & 1) == 0)
    {
LABEL_17:
      if ((a1[20] & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_18B7D2EFC();
  if ((a1[20] & 1) == 0)
  {
LABEL_18:
    if ((a1[18] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    sub_18B9DE4B8();
    if (a1[23])
    {
      goto LABEL_20;
    }

LABEL_25:
    if ((v3 & 1) == 0)
    {
      return;
    }

    goto LABEL_26;
  }

LABEL_23:
  sub_18B9DFDB4();
  if (a1[18])
  {
    goto LABEL_24;
  }

LABEL_19:
  if ((a1[23] & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  sub_18B9E6DC8();
LABEL_26:
  v5 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_bottomBarBackgroundView);
  if (v5)
  {

    [v5 setHidden_];
  }
}

uint64_t _s6LayoutCMa_0()
{
  result = qword_1ED652070;
  if (!qword_1ED652070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7D01FC()
{
  sub_18BAC5BB4(319, &qword_1ED652080, _s4ItemVMa_0);
  if (v0 <= 0x3F)
  {
    sub_18BAC5BB4(319, qword_1ED651F98, MEMORY[0x1E69695A8]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t _s4ItemVMa_0()
{
  result = qword_1ED651E28;
  if (!qword_1ED651E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_18B7D03D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_18BC1EC08();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[qword_1ED6515F0];
  type metadata accessor for InteractiveInsertionGroup();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 16) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 0x3FE0000000000000;
  *v14 = 1;
  *(v14 + 1) = v15;
  v14[16] = 1;
  v16 = &v5[qword_1ED6515F8];
  *v16 = CGRectMake;
  v16[1] = 0;
  v16[2] = sub_18B8390A8;
  v16[3] = 0;
  v16[4] = CGRectMake;
  v16[5] = 0;
  v17 = &v5[qword_1ED651600];
  UIEdgeInsetsMakeWithEdges();
  *v17 = 0x4046000000000000;
  v18 = *MEMORY[0x1E69DDCE0];
  *(v17 + 24) = *(MEMORY[0x1E69DDCE0] + 16);
  *(v17 + 8) = v18;
  *(v17 + 5) = 0x3FD999999999999ALL;
  v17[48] = 0;
  *(v17 + 7) = 0x4020000000000000;
  *(v17 + 8) = v19;
  *(v17 + 9) = v20;
  *(v17 + 10) = v21;
  *(v17 + 11) = v22;
  *(v17 + 6) = xmmword_18BC462A0;
  *&v5[qword_1ED651608 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[qword_1ED651610] = 0;
  v23 = &v5[qword_1ED651618];
  v46 = 60;
  v47 = 0xE100000000000000;
  v43 = type metadata accessor for ScrollingCapsuleCollectionView();
  v45 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6B20);
  v24 = sub_18BC20BF8();
  MEMORY[0x18CFFC150](v24);

  MEMORY[0x18CFFC150](8250, 0xE200000000000000);
  sub_18BC1DE28();
  v25 = sub_18BC1EBA8();
  v27 = v26;
  (*(v11 + 8))(v13, v10);
  MEMORY[0x18CFFC150](v25, v27);

  MEMORY[0x18CFFC150](15913, 0xE200000000000000);
  v28 = v47;
  *v23 = v46;
  v23[1] = v28;
  v29 = &v5[qword_1ED651620];
  *v29 = 0;
  *(v29 + 1) = 0;
  *(v29 + 2) = 0;
  *(v29 + 3) = 0x3FD999999999999ALL;
  v29[32] = 0;
  v30 = &v5[qword_1ED651628];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  v30[32] = 1;
  *&v5[qword_1ED651630] = 0;
  *&v5[qword_1ED651638] = 0;
  *&v5[qword_1ED651640] = 0x3FF0000000000000;
  v31 = qword_1ED651648;
  type metadata accessor for Assertion();
  v32 = swift_allocObject();
  *(v32 + 16) = MEMORY[0x1E69E7CC0];
  *(v32 + 24) = 0;
  *&v5[v31] = v32;
  v33 = qword_1ED651650;
  *&v5[v33] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v34 = qword_1ED651658;
  *&v5[v34] = [objc_allocWithZone(type metadata accessor for CapsuleTabGroupView()) init];
  v35 = qword_1ED651660;
  type metadata accessor for HighlightTrackingView();
  *&v5[v35] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v36 = qword_1ED651668;
  _s4LensCMa();
  *&v5[v36] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v37 = qword_1ED651670;
  _s12LensPunchoutCMa();
  *&v5[v37] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v38 = qword_1ED651678;
  *&v5[v38] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v39 = qword_1ED651680;
  *&v5[v39] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5[qword_1ED651688] = 0;
  v5[qword_1ED651690] = 0;
  v40 = qword_1ED651698;
  *&v5[v40] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v5[qword_1ED6516A0] = 0;
  *&v5[qword_1ED6516A8] = 0;
  v44.receiver = v5;
  v44.super_class = v43;
  return objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_18B7D08D4()
{
  v1 = sub_18BC20B98();
  [v0 setAccessibilityIdentifier_];

  v2 = *&v0[OBJC_IVAR___SFCapsuleTabGroupView_disclosureIndicator];
  [v2 setContentMode_];
  if (qword_1EA9D2480 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA9F8338;
  v4 = objc_opt_self();
  v5 = [v4 configurationWithTextStyle:v3 scale:1];
  [v2 setPreferredSymbolConfiguration_];

  v6 = *&v0[OBJC_IVAR___SFCapsuleTabGroupView_imageView];
  [v6 setContentMode_];
  v7 = [v4 configurationWithTextStyle:*MEMORY[0x1E69DDD80] scale:2];
  [v6 setPreferredSymbolConfiguration_];

  v8 = *&v0[OBJC_IVAR___SFCapsuleTabGroupView_stackView];
  [v8 setAlignment_];
  [v8 setSpacing_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = *&v0[OBJC_IVAR___SFCapsuleTabGroupView_titleLabel];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setAdjustsFontSizeToFitWidth_];
  v10 = [objc_opt_self() preferredFontForTextStyle_];
  [v9 setFont_];

  [v9 setMinimumScaleFactor_];
  [v9 setTextAlignment_];
  [v0 addSubview_];
  [v8 addArrangedSubview_];
  [v8 addArrangedSubview_];
  [v8 addArrangedSubview_];
  [v8 setCustomSpacing:v6 afterView:4.0];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_18BC3E3F0;
  v13 = [v8 centerYAnchor];
  v14 = [v0 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v8 leadingAnchor];
  v17 = [v0 layoutMarginsGuide];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintGreaterThanOrEqualToAnchor_];
  *(v12 + 40) = v19;
  v20 = [v8 trailingAnchor];
  v21 = [v0 layoutMarginsGuide];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintLessThanOrEqualToAnchor_];
  *(v12 + 48) = v23;
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v24 = sub_18BC20D88();

  [v11 activateConstraints_];

  sub_18B7E3454();
  v25 = 0.0;
  if (v0[OBJC_IVAR___SFCapsuleTabGroupView_isSelected])
  {
    v25 = 1.0;
  }

  return [v2 setAlpha_];
}

char *sub_18B7D0DD0(double a1, double a2, double a3, double a4)
{
  v9 = sub_18BC1FFC8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_18BC1FFF8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView4Lens_contentView;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v19 = _s4LensCMa();
  v25.receiver = v4;
  v25.super_class = v19;
  v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18BC1FFB8();
  sub_18BC1FFA8();
  (*(v10 + 8))(v12, v9);
  sub_18BC20008();
  v24[3] = v14;
  v24[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_0Tm(v24);
  sub_18BC1FFE8();
  (*(v15 + 8))(v17, v14);
  sub_18BC21518();
  v21 = OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView4Lens_contentView;
  [*&v20[OBJC_IVAR____TtCC12MobileSafari30ScrollingCapsuleCollectionView4Lens_contentView] setClipsToBounds_];
  [v20 addSubview_];

  return v20;
}

unint64_t sub_18B7D1140()
{
  result = qword_1EA9DBEA0;
  if (!qword_1EA9DBEA0)
  {
    _s4ItemVMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DBEA0);
  }

  return result;
}

uint64_t sub_18B7D11E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_18B7D122C()
{
  v1 = v0;
  v2 = sub_18BC1FFC8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  sub_18B7E3600(v7);
  v8 = swift_unknownObjectUnownedInit();
  sub_18B7E3850(v8, 0x656C7573706163, 0xE700000000000000, v0);
  sub_18B7E3BC4(v38);
  v9 = swift_unknownObjectUnownedInit();
  sub_18B7E3850(v9, 0x46656C7573706163, 0xEE00736E654C726FLL, v0);
  sub_18B7E3BC4(v38);
  sub_18BC1FFB8();
  sub_18BC1FF98();
  (*(v3 + 8))(v5, v2);
  v38[3] = sub_18BC1FFF8();
  v38[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_0Tm(v38);
  sub_18BC20008();
  sub_18BC21518();
  v10 = *&v0[qword_1ED651658];
  [v10 setHidden_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  v11 = *&v0[qword_1ED651660];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = (v11 + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlightDidChange);
  v14 = *(v11 + OBJC_IVAR____TtC12MobileSafari21HighlightTrackingView_touchForHighlightDidChange);
  *v13 = sub_18BA48200;
  v13[1] = v12;
  sub_18BC1E1A8();
  sub_18B7B171C(v14);

  LOBYTE(v14) = [v1 effectiveUserInterfaceLayoutDirection] == 1;
  v15 = &v1[qword_1ED651600];
  swift_beginAccess();
  v15[48] = v14;
  [v1 setNeedsLayout];
  [v1 invalidateIntrinsicContentSize];
  v16 = sub_18B7C34FC();
  v17 = sub_18BC20B98();
  [v16 setAccessibilityIdentifier_];

  v18 = sub_18B7C34FC();
  [v18 setAlwaysBounceHorizontal_];

  v19 = sub_18B7C34FC();
  [v19 setScrollsToTop_];

  v20 = sub_18B7C34FC();
  [v20 setShowsHorizontalScrollIndicator_];

  v21 = sub_18B7C34FC();
  [v21 setShowsVerticalScrollIndicator_];

  v22 = sub_18B7C34FC();
  [v22 _setAdjustsContentInsetWhenScrollDisabled_];

  v23 = *&v1[qword_1ED651698];
  [v23 setHidden_];
  v24 = [v23 layer];
  [v24 setAllowsGroupBlending_];

  v25 = sub_18BA4255C();
  v26 = objc_opt_self();
  if (qword_1EA9D2480 != -1)
  {
    v36 = v26;
    swift_once();
    v26 = v36;
  }

  v27 = [v26 safari:qword_1EA9F8338 monospacedDigitFontForTextStyle:?];
  v28 = v25[3];
  v25[3] = v27;

  v29 = qword_1EA9D24C8;
  sub_18BC1E1A8();
  v30 = v1;
  if (v29 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AD0);
  sub_18BC21568();

  swift_unknownObjectRelease();

  v31 = *&v30[qword_1ED651680];
  v32 = [v31 layer];
  [v32 setInvertsMask_];

  [v31 setMaskView_];
  [v30 addSubview_];
  v33 = sub_18B7C34FC();
  [v33 addSubview_];

  v34 = sub_18B7C34FC();
  [v34 addSubview_];

  [*&v30[qword_1ED651678] addSubview_];
  v35 = [objc_opt_self() defaultCenter];
  [v35 addObserver:v30 selector:sel_sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];
  [v35 addObserver:v30 selector:sel_sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];
  sub_18BA43928(0, 0);
}

uint64_t sub_18B7D18A4()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B7D18DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t sub_18B7D1984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71C8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71D0);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D71C8);
      result = sub_18B80CA2C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4ItemVMa_0();
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4ItemVMa_0);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_18B7D1B68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71C0);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D71B8);
      result = sub_18B80CA2C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4ItemVMa_0();
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4ItemVMa_0);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

uint64_t sub_18B7D1D4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B7C4104(a2, a3);
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
      sub_18BB2C9D0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_18B7E3BB0(v16, a4 & 1);
    v11 = sub_18B7C4104(a2, a3);
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

void sub_18B7D1EF4(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_18B7B0DB0;
  v6[3] = &block_descriptor_62;
  v5 = _Block_copy(v6);
  sub_18BC1E1A8();

  [v4 _performWithoutRetargetingAnimations_];
  _Block_release(v5);
}

void sub_18B7D1FBC()
{
  v1 = v0;
  v2 = sub_18B7D292C();
  v3 = v2[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content];

  if (v3 == 1)
  {
    if (v1[qword_1ED651688] == 1)
    {
      v4 = *&v1[qword_1ED6515F0 + 8];
      sub_18BC1E1A8();
      v5 = sub_18B7D292C();
      v6 = sub_18BAC5A48();

      v7 = *(v4 + 40);
      *(v4 + 40) = v6;
      sub_18B7CC404(v7);
    }

    v8 = v1[qword_1ED651690];
    v9 = *(*&v1[qword_1ED6515F0 + 8] + 40);
    v1[qword_1ED651690] = v9;
    v10 = sub_18B7D292C();
    v11 = sub_18B820824();
    [v11 presentationValue];
    v13 = v12;

    *&v10[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_interactiveInsertionInfo] = v13;
    v14 = sub_18B7D292C();
    sub_18B820C90();

    [*&v1[qword_1ED6516A8] value];
    v16 = v15;
    v17 = sub_18B7D292C();
    v18 = *&v17[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_interactiveInsertionInfo + 8];

    if (v16 != v18)
    {
      if (v8 == v9)
      {
        v19 = 0x8000000000000000;
      }

      else
      {
        if (qword_1EA9D21A8 != -1)
        {
          swift_once();
        }

        v19 = qword_1EA9F7A38;
        sub_18BC1E1A8();
      }

      v20 = swift_allocObject();
      v20[2] = v1;
      v21 = v1;
      sub_18B7EAA64(sub_18BA48ED8, v20, CGRectMake, 0, v19);

      sub_18B7EBAE8(v19);
    }
  }
}

id sub_18B7D21FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_18B7E3C44(v3, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

void sub_18B7D2260()
{
  v1 = v0;
  v63 = _s4PageVMa();
  v2 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s4ItemVMa_0();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  v12 = OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar;
  v13 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar);
  if (v13)
  {
    v59 = v2;
    v14 = *(v13 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView);
  }

  else
  {
    v14 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView);
    if (!v14)
    {
      return;
    }

    v59 = v2;
  }

  v15 = v14;
  sub_18B7C9974();
  v17 = v16;
  v18 = sub_18B7CE8B0();

  Strong = swift_unknownObjectUnownedLoadStrong();
  v20 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(Strong + v20, v11, _s7ContentVMa);

  v21 = *(v11 + 1);
  sub_18BC1E3F8();
  sub_18B7DFF04(v11, _s7ContentVMa);
  v22 = *(v21 + 16);
  if (v22)
  {
    v54 = v18;
    v55 = v15;
    v56 = v12;
    v57 = v8;
    v58 = v1;
    *&v67[0] = MEMORY[0x1E69E7CC0];
    sub_18B83BE28(0, v22, 0);
    v23 = *&v67[0];
    v24 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v53 = v21;
    v25 = v21 + v24;
    v59 = *(v59 + 72);
    v26 = v64;
    v27 = v62;
    do
    {
      v64 = v23;
      v28 = v60;
      sub_18B7DF568(v25, v60, _s4PageVMa);
      v29 = *(v28 + 1);
      v30 = *(v28 + 3);
      v31 = v63;
      v32 = *(v63 + 32);
      v33 = v27[6];
      v34 = sub_18BC1EC08();
      (*(*(v34 - 8) + 16))(&v26[v33], v28 + v32, v34);
      v35 = *(v28 + v31[9]);
      v36 = *(v28 + v31[10]);
      v37 = *(v28 + v31[12]);
      v38 = (v28 + v31[19]);
      v39 = *v38;
      v40 = v38[1];
      *v26 = v29;
      v26[1] = v30;
      *&v26[v27[7]] = v35;
      v26[v27[8]] = v36;
      v26[v27[9]] = v37;
      v41 = &v26[v27[10]];
      *v41 = v39;
      v41[1] = v40;
      v42 = v35;
      sub_18BC1E3F8();
      v43 = v28;
      v23 = v64;
      sub_18B7DFF04(v43, _s4PageVMa);
      *&v67[0] = v23;
      v45 = *(v23 + 16);
      v44 = *(v23 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_18B83BE28(v44 > 1, v45 + 1, 1);
        v23 = *&v67[0];
      }

      *(v23 + 16) = v45 + 1;
      sub_18B81F940(v26, v23 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v45, _s4ItemVMa_0);
      v25 += v59;
      --v22;
    }

    while (v22);

    v1 = v58;
    v8 = v57;
    v12 = v56;
    v15 = v55;
    LOBYTE(v18) = v54;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_18B7E8638((v18 & 1) == 0, v23);
  memset(v67, 0, sizeof(v67));
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  sub_18B7E8788(v46 & 0x101, v47, v67, v65);

  sub_18B988BAC(v65, &unk_1EA9D5060);
  sub_18B988BAC(v67, &unk_1EA9D53A0);
  v48 = *(v1 + v12);
  if (v48)
  {
    v49 = swift_unknownObjectUnownedLoadStrong();
    v50 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(v49 + v50, v8, _s7ContentVMa);
    v51 = v48;

    LOBYTE(v49) = v8[2];
    sub_18B7DFF04(v8, _s7ContentVMa);
    v52 = v51[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_keepsCapsuleViewExpanded];
    v51[OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_keepsCapsuleViewExpanded] = v49;
    sub_18BAD0B98(v52);
  }
}

uint64_t sub_18B7D2870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18BC1EC08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

id sub_18B7D292C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v9 = 256;
    v10 = MEMORY[0x1E69E7CC0];
    (*((*v1 & *v0) + 0x1C0))(&v11, &v9);
    v5 = v11;
    v6 = *(v0 + v2);
    *(v0 + v2) = v11;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_18B7D2A14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

id sub_18B7D2A90(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(*(a5 + 48) + 8 * a2);
  sub_18B7CE7E4(*(a5 + 56) + 16 * a2, result);

  return v6;
}

uint64_t sub_18B7D2B34()
{
  sub_18B7CC308();
  if (sub_18B7D2BB0() != 0.0)
  {
    sub_18B7D2BB0();
  }
}

double sub_18B7D2BB0()
{
  if (*(v0 + 177) == 1)
  {
    v1 = v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics;
    v2 = *(MEMORY[0x1E69DDCE0] + 24);
    v3 = *(MEMORY[0x1E69DDCE0] + 8);
    if (*(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 56))
    {
      v4 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v4 = *(MEMORY[0x1E69DDCE0] + 8);
    }

    v5 = *(v1 + 88);
    v6 = v4 + *(v1 + 96);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 24);
    v3 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 8);
    if (*(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 56))
    {
      v7 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 24);
    }

    else
    {
      v7 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 8);
    }

    v5 = 0.0;
    v6 = v7 + 0.0;
  }

  v8 = sub_18B7D2C68() - (v5 + (v6 - (v2 + v3)) * 0.5 + v5 + (v6 - (v2 + v3)) * 0.5);
  return v8 - sub_18B7E1178();
}

double sub_18B7D2C68()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_deck);
  v2 = *(v1 + 24);
  if (!v2)
  {
    return 0.0;
  }

  v3 = *(v1 + 32);
  v4 = *(v1 + 72) + *(v1 + 88);
  if (*(v1 + 16))
  {
    return v3 + v4;
  }

  else
  {
    return v3 * v2 + v4 + (v2 + -1.0) * *(v1 + 96);
  }
}

double sub_18B7D2CF4(double a1, double a2)
{
  v4 = sub_18B7D292C();
  v5 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation;
  swift_beginAccess();
  sub_18B80DBC4(v4 + v5, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1Tm(v10, v11);
  v8 = (*(v7 + 168))(v6, v7, a1, a2);

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return v8;
}

double sub_18B7D2DCC()
{
  if (qword_1EA9D24D0 != -1)
  {
    swift_once();
  }

  result = 2.81475047e14;
  qword_1EA9F8388 = 0x42F0000042A00000;
  dword_1EA9F8390 = 1123024896;
  unk_1EA9F8394 = dword_1EA9F83F0;
  return result;
}

void sub_18B7D2EFC()
{
  v1 = OBJC_IVAR___SFTabOverviewDisplayItem_navigationBar;
  if (!*&v0[OBJC_IVAR___SFTabOverviewDisplayItem_navigationBar])
  {
    v2 = sub_18B7D33B4();
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
    if (qword_1EA9D24C0 != -1)
    {
      swift_once();
    }

    [v3 setPreferredSearchBarPlacement_];
    [v3 setStyle_];
    v4 = *&v0[OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView];
    v5 = v2;
    [v4 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18BC3E3E0;
    *(v6 + 32) = v3;
    sub_18B7B0AC0(0, &qword_1EA9D5398);
    v7 = v3;
    v8 = sub_18BC20D88();

    [v5 setItems_];

    v9 = v0;
    v10 = sub_18B7DEE8C();
    _s26NavigationItemRegistrationCMa();
    swift_allocObject();
    v11 = v7;
    v12 = sub_18B7D34E8(v10, v11);
    sub_18B7D35A4(v12, v10);

    v13 = *&v0[v1];
    *&v9[v1] = v5;
    v14 = v5;

    v15 = *&v9[OBJC_IVAR___SFTabOverviewDisplayItem_navigationItem];
    *&v9[OBJC_IVAR___SFTabOverviewDisplayItem_navigationItem] = v11;
    v16 = v11;

    v17 = swift_allocObject();
    *(v17 + 16) = v9;
    v18 = objc_opt_self();
    v19 = swift_allocObject();
    *(v19 + 16) = sub_18B7D4D00;
    *(v19 + 24) = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_18B9D53AC;
    *(v20 + 24) = v19;
    v33[4] = sub_18B9D53B0;
    v33[5] = v20;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 1107296256;
    v33[2] = sub_18B7E3BF4;
    v33[3] = &block_descriptor_509;
    v21 = _Block_copy(v33);
    v22 = v9;
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v18 performWithoutAnimation_];
    _Block_release(v21);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }

    else
    {
      v23 = [*&v22[OBJC_IVAR___SFTabOverviewDisplayItem_hud] topAnchor];
      v24 = [v14 bottomAnchor];

      v25 = [v23 constraintEqualToAnchor:v24 constant:16.0];
      LODWORD(v26) = 1144750080;
      [v25 setPriority_];
      v27 = *&v22[OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarToHUDConstraint];
      *&v22[OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarToHUDConstraint] = v25;
      v28 = v25;

      [v28 setActive_];
      v29 = [objc_allocWithZone(MEMORY[0x1E69DD6C0]) initWithEdge_];
      sub_18B7C9974();
      v31 = v30;
      v32 = *&v30[qword_1EA9D6BC8];

      [v29 _setCollectorInteraction_];
      [v14 addInteraction_];
    }
  }
}

id sub_18B7D33B4()
{
  v0 = sub_18BC1F688();
  MEMORY[0x1EEE9AC00](v0);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCCC0]) init];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
  [v2 configureWithTransparentBackground];
  [v1 setStandardAppearance_];

  v3 = v1;
  sub_18BC21528();
  sub_18BC1F5C8();
  sub_18BC21538();
  [v3 _setIgnoresLayerTransformForSafeAreaInsets_];

  return v3;
}

void *sub_18B7D34E8(uint64_t a1, uint64_t a2)
{
  v2[3] = sub_18B7D34D4(MEMORY[0x1E69E7CC0]);
  v2[5] = MEMORY[0x1E69E7CD0];
  sub_18B7B0AC0(0, &unk_1EA9D35C0);
  v2[6] = sub_18BC213E8();
  v4 = sub_18BC213E8();
  v2[8] = 0;
  v2[9] = 0;
  v2[7] = v4;
  v2[10] = sub_18BC213E8();
  v2[2] = a2;
  swift_unknownObjectUnownedInit();
  return v2;
}

uint64_t sub_18B7D35A4(uint64_t a1, uint64_t a2)
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
  v15[5] = &off_1EE4659C8;
  *(a2 + v10) = v11;
  swift_endAccess();
  sub_18BC1E1A8();
  sub_18B7DF6A0(v9);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v17 = swift_unknownObjectUnownedLoadStrong();

  v18 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(v17 + v18, v6, _s7ContentVMa);

  sub_18B7D380C(v9);
  sub_18B7DFF04(v6, _s7ContentVMa);
  return sub_18B988BAC(v9, &qword_1EA9D52E0);
}

uint64_t sub_18B7D380C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v90[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v90[-v8];
  sub_18B7CA054(a1, &v90[-v8], &qword_1EA9D52E0);
  v10 = _s4PageVMa();
  v11 = *(v10 - 8);
  v94 = *(v11 + 48);
  v93 = v11 + 48;
  if (v94(v9, 1, v10) == 1)
  {
    sub_18B988BAC(v9, &qword_1EA9D52E0);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = &v9[*(v10 + 72)];
    v12 = *v18;
    v13 = *(v18 + 1);
    v14 = *(v18 + 2);
    v15 = *(v18 + 3);
    v16 = *(v18 + 4);
    v17 = *(v18 + 5);
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    v19 = v12;
    v20 = v13;
    sub_18B7CC96C(v9, _s4PageVMa);
  }

  v106[0] = v12;
  v106[1] = v13;
  v106[2] = v14;
  v106[3] = v15;
  v106[4] = v16;
  v106[5] = v17;
  sub_18B7E9CAC(v106);
  sub_18B7D4360(v12, v13, v14, v15, v16);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v22 = swift_unknownObjectUnownedLoadStrong();

  v23 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v102);

  v24 = swift_unknownObjectUnownedLoadStrong();
  v25 = swift_unknownObjectUnownedLoadStrong();

  v26 = sub_18B7E9D94();
  if (v104)
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

  if (v103)
  {
    v27 = 1;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v92 = v6;
  v91 = v26;
  if (v26)
  {
    if (v26 == 1)
    {
      if (v27 == 2)
      {
        v30 = v10;
        v31 = v103;
        v32 = &unk_1EFF1A2D0;
        v96 = &unk_1EFF1A2F8;
        v97 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
        v30 = v10;
        v31 = v103;
        if (v27 == 1)
        {
          v32 = &unk_1EFF1A230;
          v96 = &unk_1EFF1A258;
          v97 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v36 = sub_18BC1E3F8();
          v32 = v29;
          v96 = &unk_1EFF1A2A8;
          v97 = v36;
        }
      }
    }

    else
    {
      v30 = v10;
      v34 = MEMORY[0x1E69E7CC0];
      v35 = &unk_1EFF1A348;
      v31 = v103;
      if ((v103 & 1) == 0)
      {
        v35 = &unk_1EFF1A398;
        v34 = &unk_1EFF1A370;
      }

      v96 = v35;
      v97 = v34;
      if (v103)
      {
        v32 = &unk_1EFF1A320;
      }

      else
      {
        v32 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  else
  {
    v30 = v10;
    v31 = v103;
    v33 = *(&off_1E72208A8 + v27);
    v96 = *(&off_1E7220890 + v27);
    v97 = v33;
    v32 = qword_1E72208C0[v27];
  }

  v37 = *(v2 + 48);
  sub_18B7E4A88(v32, 0, sub_18B835E88);
  v95 = v32;

  v38 = sub_18B7B0AC0(0, &unk_1EA9D35A0);
  v39 = sub_18BC20D88();

  [v37 setBarButtonItems_];

  v40 = sub_18BAD3880();
  sub_18B7E4A88(&unk_1EFF1A3C0, 0, sub_18B835E88);
  v98 = v38;
  v41 = sub_18BC20D88();

  [v40 setBarButtonItems_];

  v100 = v28;
  v101 = v28;
  v42 = v31;
  v43 = v30;
  v44 = v92;
  if ((v42 & 1) == 0)
  {
    v45 = [*(v2 + 72) barButtonItems];
    v46 = sub_18BC20D98();

    v47 = v46 >> 62 ? sub_18BC219A8() : *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v47)
    {
      v48 = *(v2 + 72);
      MEMORY[0x18CFFC270]();
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      sub_18BC20E18();
    }
  }

  v49 = v37;
  MEMORY[0x18CFFC270]();
  if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18BC20DD8();
  }

  sub_18BC20E18();
  v50 = v101;
  v51 = swift_unknownObjectUnownedLoadStrong();
  v52 = swift_unknownObjectUnownedLoadStrong();

  sub_18B7CFD08(v44);
  if (v94(v44, 1, v43) == 1)
  {
    sub_18B988BAC(v44, &qword_1EA9D52E0);
LABEL_38:
    sub_18B7DFD58(v102);
    goto LABEL_39;
  }

  v53 = v44 + *(v43 + 64);
  v54 = *v53;
  v55 = *(v53 + 8);
  v57 = *(v53 + 16);
  v56 = *(v53 + 24);
  sub_18B82B844(*v53, v55, v57, v56);
  sub_18B7CC96C(v44, _s4PageVMa);
  if (!v56)
  {
    goto LABEL_38;
  }

  sub_18B7E9C58(v54, v55, v57, v56);
  sub_18B7DFD58(v102);
  if ((v105 & 1) == 0)
  {
    if ((v91 - 1) <= 1u)
    {
      if (v42)
      {
        goto LABEL_39;
      }

      goto LABEL_45;
    }

    if ((v42 & 1) == 0 || (v72 = swift_unknownObjectUnownedLoadStrong(), v73 = swift_unknownObjectUnownedLoadStrong(), v72, v74 = *&v73[OBJC_IVAR___SFTabOverviewDisplayItem_largeProfileButtonItem], v75 = v74, v73, !v74))
    {
LABEL_45:
      v81 = swift_unknownObjectUnownedLoadStrong();
      v82 = swift_unknownObjectUnownedLoadStrong();

      v83 = *&v82[OBJC_IVAR___SFTabOverviewDisplayItem_smallProfileButtonItem];
      v84 = v83;

      if (v83)
      {
        v85 = sub_18BAD3804();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_18BC3E3E0;
        *(v86 + 32) = v84;
        v87 = v84;
        v88 = sub_18BC20D88();

        [v85 setBarButtonItems_];

        v89 = *(v2 + 64);
        MEMORY[0x18CFFC270]();
        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18BC20DD8();
        }

        sub_18BC20E18();

        v50 = v101;
      }

      goto LABEL_39;
    }

    v76 = sub_18BAD3804();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_18BC3E3E0;
    *(v77 + 32) = v75;
    v78 = v75;
    v79 = sub_18BC20D88();

    [v76 setBarButtonItems_];

    v80 = *(v2 + 64);
    MEMORY[0x18CFFC270]();
    if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18BC20DD8();
    }

    sub_18BC20E18();
  }

LABEL_39:
  v58 = *(v2 + 16);
  sub_18BB967F0(v50);

  sub_18B7B0AC0(0, &unk_1EA9D35C0);
  v59 = sub_18BC20D88();

  [v58 setLeadingItemGroups_];

  v60 = sub_18BC20D88();

  [v58 setCenterItemGroups_];

  v61 = *(v2 + 80);
  v62 = v97;
  sub_18B7E4A88(v97, 0, sub_18B835E88);

  v63 = sub_18BC20D88();

  [v61 setBarButtonItems_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_18BC3E3E0;
  *(v64 + 32) = v61;
  v65 = v61;
  v66 = sub_18BC20D88();

  [v58 setTrailingItemGroups_];

  v67 = *(v2 + 56);
  v68 = v96;
  sub_18B7E4A88(v96, 0, sub_18B835E88);

  v69 = sub_18BC20D88();

  [v67 setBarButtonItems_];

  [v58 setPinnedTrailingGroup_];
  v99 = v95;
  sub_18B7E5720(v62);
  sub_18B7E5720(v68);
  v70 = sub_18B7E5834(v99);

  *(v2 + 40) = v70;
}

uint64_t sub_18B7D4360(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = result;
  }

  return result;
}

uint64_t sub_18B7D43BC()
{
  v1 = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v16);

  sub_18B7DFD58(v16);
  if (v16[18])
  {
    v3 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar);
      v5 = sub_18BBCBCD8();

      if (v5)
      {
        return 1;
      }
    }
  }

  v6 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v17);

  sub_18B7DFD58(v17);
  if (v17[20])
  {
    v7 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView);
    if (v7)
    {
      if (*(v7 + OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2))
      {
        return 1;
      }
    }
  }

  v8 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v18);

  sub_18B7DFD58(v18);
  if (v18[26])
  {
    sub_18B7C9974();
    v10 = v9;
    v11 = sub_18B7CEA3C();
    if (v11)
    {
      v12 = v11;
      v13 = sub_18B852D5C();

      if (v13)
      {
        v14 = v13[OBJC_IVAR___SFTabOverviewLargeTitleView_configuration + 136];

        if (v14)
        {
          return 1;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void *sub_18B7D4530(unsigned __int8 a1)
{
  v2 = v1;
  sub_18B7D4784(a1);
  if (v4)
  {
    sub_18B7D47FC(a1);
    if (v5)
    {
      sub_18B7B0AC0(0, &unk_1EA9D35A0);
      v6 = sub_18BC20B98();

      v7 = [objc_opt_self() systemImageNamed_];

      v8 = sub_18BC21278();
    }

    else
    {
      sub_18BAD3534(a1);
      if (v24)
      {
        sub_18B7B0AC0(0, &unk_1EA9D35A0);
        v8 = sub_18BC21278();
      }

      else
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E69DC708]) init];
      }
    }
  }

  else
  {
    sub_18B7B0AC0(0, &unk_1EA9D35A0);
    v8 = sub_18BC21268();
  }

  v9 = v8;
  sub_18B7D4940(a1);
  if (v10)
  {
    v11 = v9;
    v12 = sub_18BC20B98();
  }

  else
  {
    v13 = v9;
    v12 = 0;
  }

  [v9 setAccessibilityIdentifier_];

  v14 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (*(v15 + 16))
  {
    v16 = sub_18B7C9044(a1);
    if (v17)
    {
      v18 = *(v15 + 56) + 24 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *v18;
      sub_18B7E5608(v9, v19, v20, v21);
    }
  }

  return v9;
}

uint64_t sub_18B7D4784(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    if (!a1)
    {
      return 4;
    }

    if (a1 != 4 && a1 != 5)
    {
      return 0;
    }

    return 0;
  }

  if (a1 == 6)
  {
    return 0;
  }

  if (a1 != 7)
  {
    if (a1 == 12)
    {
      return 9;
    }

    return 0;
  }

  return 2;
}

uint64_t sub_18B7D47FC(unsigned __int8 a1)
{
  if (a1 > 7u)
  {
    if (a1 > 0xCu)
    {
      v6 = 0x6C75622E7473696CLL;
      if (a1 != 14)
      {
        v6 = 0;
      }

      if (a1 == 13)
      {
        return 0x2E72616265646973;
      }

      else
      {
        return v6;
      }
    }

    else if (a1 == 8 || a1 == 10)
    {
      [objc_opt_self() isSolariumEnabled];
      return 0x73697370696C6C65;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = 0x6B72616D78;
    if (a1 != 1)
    {
      v3 = 0;
    }

    if (a1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 1937075312;
    }

    if (a1 - 4 >= 2)
    {
      return v4;
    }

    else
    {
      return 0x72616D6B63656863;
    }
  }
}

uint64_t sub_18B7D4940(unsigned __int8 a1)
{
  if (a1 > 7u)
  {
    if (a1 <= 9u)
    {
      if (a1 != 8)
      {
        if (a1 == 9)
        {
          return 0x7362615465766F4DLL;
        }

        else
        {
          return 0;
        }
      }
    }

    else if (a1 != 10)
    {
      v1 = 0x70756F7247626154;
      if (a1 != 14)
      {
        v1 = 0;
      }

      if (a1 == 12)
      {
        return 0xD000000000000013;
      }

      else
      {
        return v1;
      }
    }

    return 0xD000000000000015;
  }

  v3 = 0x74747542656E6F44;
  v4 = 0x7474754274696445;
  if (a1 != 7)
  {
    v4 = 0;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  v5 = 0x754262615477654ELL;
  v6 = 0x62615465736F6C43;
  if (a1 != 2)
  {
    v6 = 0;
  }

  if (a1)
  {
    v5 = v6;
  }

  if (a1 <= 3u)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

char *sub_18B7D4AB4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

unint64_t sub_18B7D4BB4()
{
  result = qword_1EA9DA9F8;
  if (!qword_1EA9DA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9DA9F8);
  }

  return result;
}

uint64_t sub_18B7D4C08(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_18BC22158();
  MEMORY[0x18CFFD660](a2);
  v6 = sub_18BC221A8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_18B7EA06C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_18B7D4D78(uint64_t a1, uint64_t a2)
{
  v5 = sub_18B7CC308();
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  swift_beginAccess();
  v46 = v2;
  *&v2[v7] = a1;
  sub_18BC1E1A8();

  sub_18B7CA054(a2, &v49, &unk_1EA9D5060);
  if (!v50)
  {
    sub_18B988BAC(&v49, &unk_1EA9D5060);
    goto LABEL_14;
  }

  sub_18B7C3FA4(&v49, v51);
  v8 = *(a1 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_itemTypes);
  v9 = *(v8 + 16);
  if (!v9)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
LABEL_14:
    [v46 setNeedsLayout];
    v31 = swift_allocObject();
    *(v31 + 16) = v46;
    sub_18B7CA054(a2, &v49, &unk_1EA9D5060);
    if (v50)
    {
      sub_18B7C3FA4(&v49, v51);
      v32 = *__swift_project_boxed_opaque_existential_1Tm(v51, v52);
      v33 = swift_allocObject();
      *(v33 + 16) = sub_18B848F4C;
      *(v33 + 24) = v31;
      swift_beginAccess();
      v34 = *(v32 + 24);
      v35 = v46;
      sub_18BC1E1A8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 24) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_18B9B5814(0, v34[2] + 1, 1, v34);
        *(v32 + 24) = v34;
      }

      v38 = v34[2];
      v37 = v34[3];
      if (v38 >= v37 >> 1)
      {
        v34 = sub_18B9B5814((v37 > 1), v38 + 1, 1, v34);
      }

      v34[2] = v38 + 1;
      v39 = &v34[2 * v38];
      v39[4] = sub_18BA4EE54;
      v39[5] = v33;
      *(v32 + 24) = v34;
      swift_endAccess();

      return __swift_destroy_boxed_opaque_existential_1Tm(v51);
    }

    else
    {
      v41 = v46;
      v42 = sub_18B988BAC(&v49, &unk_1EA9D5060);
      if ((*((*v6 & *v41) + 0x1F8))(v42))
      {
        [v41 layoutIfNeeded];
      }
    }
  }

  v43 = a2;
  v44 = *((*v6 & *v2) + 0x98);
  swift_beginAccess();
  v10 = (v8 + 40);
  v45 = v5;
  while (1)
  {
    v11 = *(v10 - 1);
    v12 = *v10;
    sub_18BC1E3F8();
    v13 = sub_18B7CD924();
    v14 = sub_18B7CD924();
    v15 = sub_18BC1E3F8();
    sub_18BBF22CC(v15, v13);
    v17 = *&v46[v44];
    if (!*(v17 + 16))
    {
      break;
    }

    v18 = v16;
    v48 = v9;
    sub_18BC1E3F8();
    v19 = sub_18B7C4104(v11, v12);
    if ((v20 & 1) == 0)
    {

      break;
    }

    v21 = *(*(v17 + 56) + 8 * v19);
    sub_18BC1E1A8();

    swift_beginAccess();
    sub_18B7FDB4C(v18);
    swift_endAccess();
    v22 = __swift_project_boxed_opaque_existential_1Tm(v51, v52);
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = v18;
    v23[4] = v46;
    v23[5] = v11;
    v47 = v11;
    v23[6] = v12;
    v24 = *v22;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_18BC0DF18;
    *(v25 + 24) = v23;
    swift_beginAccess();
    v26 = *(v24 + 32);
    v46;
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 32) = v26;
    if ((v27 & 1) == 0)
    {
      v26 = sub_18B9B5814(0, v26[2] + 1, 1, v26);
      *(v24 + 32) = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v26 = sub_18B9B5814((v28 > 1), v29 + 1, 1, v26);
    }

    v26[2] = v29 + 1;
    v30 = &v26[2 * v29];
    v30[4] = sub_18BA4EE54;
    v30[5] = v25;
    *(v24 + 32) = v26;
    swift_endAccess();

    sub_18BBE9484(v47, v12, v14, v45);

    v10 += 2;
    v9 = v48 - 1;
    if (v48 == 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      v6 = MEMORY[0x1E69E7D40];
      a2 = v43;
      goto LABEL_14;
    }
  }

  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

uint64_t sub_18B7D535C()
{

  return swift_deallocObject();
}

BOOL sub_18B7D53A8()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  swift_beginAccess();
  sub_18B7CA054(v0 + v1, v4, &unk_1EA9D53A0);
  v2 = v4[0] != 0;
  sub_18B988BAC(v4, &unk_1EA9D53A0);
  return v2;
}

uint64_t sub_18B7D5450()
{
  sub_18B7D4D24(v0 + 16);

  sub_18B988BAC(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_highlightedPeekingPage, &unk_1EA9DBE90);
  sub_18B988BAC(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_hoveredPeekingPage, &unk_1EA9DBE90);

  return swift_deallocClassInstance();
}

id sub_18B7D5524()
{
  v1 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleAndToolbarSeparator);
  v12 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView);
  v13 = v1;
  v14 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_toolbar);
  v2 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v3 = v14;
  v4 = v12;
  result = v1;
  v6 = 0;
LABEL_2:
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  while (1)
  {
    if (v6 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CF0);
      swift_arrayDestroy();
      return v2;
    }

    if (v7 == v6)
    {
      break;
    }

    v8 = v11[v6++ + 4];
    if (v8)
    {
      v9 = v8;
      MEMORY[0x18CFFC270]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      result = sub_18BC20E18();
      v2 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_18B7D565C(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 24))();
  v4 = 0;
  v56 = v3 + 64;
  v50 = v3;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v57 = (v5 + 63) >> 6;
  v54 = a2;
  while (v7)
  {
LABEL_11:
    v9 = __clz(__rbit64(v7)) | (v4 << 6);
    v10 = *(*(v50 + 48) + v9);
    v11 = *(v54 + 48);
    v12 = *(*(v50 + 56) + 8 * v9);
    v13 = v11(a1, v54);
    v51 = v10;
    v14 = sub_18B7D5B34(v10);

    [v12 setEnabled_];
    v53 = v12;

    v15 = v11;
    v16 = v11(a1, v54);
    v17 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    swift_beginAccess();
    v18 = *&v16[v17];
    if (*(v18 + 16))
    {
      v19 = v51;
      v20 = sub_18B7C9044(v51);
      if (v21)
      {
        v22 = *(v18 + 56) + 24 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        sub_18BC1E3F8();
        v26 = v23;
      }

      else
      {

        v23 = 0;
        v24 = 0;
        v25 = 255;
      }

      v27 = v53;
    }

    else
    {

      v23 = 0;
      v24 = 0;
      v25 = 255;
      v27 = v53;
      v19 = v51;
    }

    v28 = v15(a1, v54);
    v29 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemLongPressMenus;
    swift_beginAccess();
    v30 = *&v28[v29];
    if (*(v30 + 16) && (v31 = sub_18B7C9044(v19), (v32 & 1) != 0))
    {
      v33 = v25;
      v34 = *(*(v30 + 56) + 8 * v31);
      sub_18BC1E3F8();
      v35 = v34;
      v25 = v33;
      v27 = v53;
      v52 = v35;
    }

    else
    {
      v52 = 0;
    }

    if (v25 != 255)
    {
      if (v25)
      {
        v36 = v23;
        [v27 setMenu_];
        [v27 setPreferredMenuElementOrder_];
        [v27 setPrimaryAction_];
        goto LABEL_29;
      }

      v37 = v23;
      v38 = [v27 customView];
      if (!v38)
      {
        goto LABEL_28;
      }

      v39 = v38;
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (!v40)
      {

LABEL_28:
        [v27 setPrimaryAction_];
LABEL_29:
        sub_18B7EA7D4(v23, v24, v25);
        goto LABEL_30;
      }

      [v40 addAction:v23 forControlEvents:0x2000];
      sub_18B7EA7D4(v23, v24, v25);
    }

LABEL_30:
    v41 = v15(a1, v54);
    v42 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemLongPressMenus;
    swift_beginAccess();
    v43 = *&v41[v42];
    if (*(v43 + 16) && (v44 = sub_18B7C9044(v19), (v45 & 1) != 0))
    {
      v46 = v24;
      v47 = *(*(v43 + 56) + 8 * v44);
      sub_18BC1E3F8();
      v48 = v47;

      v49 = v48;
      [v27 setMenu_];

      sub_18B7EA7D4(v23, v46, v25);
      v27 = v52;
    }

    else
    {
      sub_18BC1E3F8();

      sub_18B7EA7D4(v23, v24, v25);
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v8 >= v57)
    {

      return;
    }

    v7 = *(v56 + 8 * v8);
    ++v4;
    if (v7)
    {
      v4 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_18B7D5B34(unsigned __int8 a1)
{
  v3 = _s4ItemVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v75 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v67 - v8;
  v73 = _s7ContentV8IteratorVMa(0);
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = _s4PageVMa();
  v11 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v67 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v67 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v67 - v27;
  v30 = a1;
  v31 = a1;
  v32 = 1;
  if (v31 != 1 && v31 != 6)
  {
    v70 = v28;
    v71 = v1;
    sub_18B7DF6A0(&v67 - v27);
    v35 = *(v11 + 48);
    v34 = v11 + 48;
    v33 = v35;
    v36 = v77;
    if (v35(v29, 1, v77) == 1)
    {
      sub_18B988BAC(v29, &qword_1EA9D52E0);
      goto LABEL_7;
    }

    v37 = v29[*(v36 + 40)];
    sub_18B7CC96C(v29, _s4PageVMa);
    if ((v37 & 1) == 0)
    {
LABEL_7:
      v68 = v33;
      v69 = v34;
      v38 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_displayItem;
      Strong = swift_unknownObjectUnownedLoadStrong();
      v40 = swift_unknownObjectUnownedLoadStrong();

      v41 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
      swift_beginAccess();
      sub_18B7DF5D0(v40 + v41, v15, _s7ContentVMa);

      v42 = v15;
      if (*v15)
      {
LABEL_8:
        v32 = 0;
LABEL_9:
        sub_18B7CC96C(v42, _s7ContentVMa);
        return v32 & 1;
      }

      v67 = v38;
      v32 = 1;
      if (v30 > 7u)
      {
        v44 = v77;
        v46 = v74;
        if (v30 - 13 < 2)
        {
          goto LABEL_9;
        }

        if (v30 != 8)
        {
          if (v30 != 9)
          {
LABEL_29:
            sub_18B7DF6A0(v19);
            if (v68(v19, 1, v44) != 1)
            {
              v62 = v19[*(v44 + 44)];
              sub_18B7CC96C(v19, _s4PageVMa);
              v32 = v62 ^ 1;
              goto LABEL_9;
            }

            v56 = v19;
            goto LABEL_42;
          }

          v47 = v76;
          sub_18B7DF5D0(v42, v76, _s7ContentVMa);
          v48 = v73;
          *(v47 + *(v73 + 20)) = 0;
          *(v47 + *(v48 + 24)) = 0;
          *(v47 + *(v48 + 28)) = 0;
          while (1)
          {
            v49 = v75;
            sub_18BB16160(v75);
            sub_18B7CF39C(v49, v9, &qword_1EA9D53C0);
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D53C8);
            if ((*(*(v50 - 8) + 48))(v9, 1, v50) == 1)
            {
              break;
            }

            v51 = *(v50 + 48);
            sub_18B82FDBC(&v9[*(v50 + 64)], v46, _s4ItemVMa);
            v52 = v9[*(v44 + 52)];
            sub_18B7CC96C(v9, _s4PageVMa);
            if (v52 == 1)
            {
              sub_18B7CC96C(v46, _s4ItemVMa);
            }

            else
            {
              v53 = sub_18B9BA41C(v46, *(v42 + 48));
              sub_18B7CC96C(v46, _s4ItemVMa);
              if (v53)
              {
                sub_18B7CC96C(v76, _s7ContentV8IteratorVMa);
                sub_18B7CC96C(&v9[v51], _s7SectionVMa_0);
                goto LABEL_8;
              }
            }

            sub_18B7CC96C(&v9[v51], _s7SectionVMa_0);
          }

          sub_18B7CC96C(v76, _s7ContentV8IteratorVMa);
        }

        v57 = swift_unknownObjectUnownedLoadStrong();
        v58 = sub_18B9D7888();
        if (v58 >> 62)
        {
          v59 = sub_18BC219A8();
        }

        else
        {
          v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v45 = v70;
        if (!v59)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v44 = v77;
        v45 = v70;
        if (!v30)
        {
          v54 = swift_unknownObjectUnownedLoadStrong();
          v55 = sub_18B7E9D94();

          if (v55)
          {
            goto LABEL_8;
          }

          sub_18B7DF6A0(v26);
          sub_18B7CA054(v26, v23, &qword_1EA9D52E0);
          if (v68(v23, 1, v44) == 1)
          {
            v32 = 0;
          }

          else
          {
            v63 = v72;
            sub_18B82FDBC(v23, v72, _s4PageVMa);
            v64 = swift_unknownObjectUnownedLoadStrong();
            v65 = swift_unknownObjectUnownedLoadStrong();

            v66 = *&v65[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canAddItemPredicate];
            sub_18BC1E1A8();

            v32 = v66(v63);

            sub_18B7CC96C(v63, _s4PageVMa);
          }

          v56 = v26;
LABEL_42:
          sub_18B988BAC(v56, &qword_1EA9D52E0);
          goto LABEL_9;
        }

        if (v30 != 2)
        {
          if (v30 == 4)
          {
            goto LABEL_9;
          }

          goto LABEL_29;
        }
      }

      v60 = v45;
      sub_18B7DF6A0(v45);
      if (v68(v60, 1, v44) == 1)
      {
        sub_18B988BAC(v60, &qword_1EA9D52E0);
      }

      else
      {
        v61 = *(v60 + *(v44 + 44));
        sub_18B7CC96C(v60, _s4PageVMa);
        if (v61)
        {
          goto LABEL_8;
        }
      }

      v32 = *(*(v42 + 48) + 16) != 0;
      goto LABEL_9;
    }

    v32 = 0;
  }

  return v32 & 1;
}

uint64_t sub_18B7D6450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v5 + 72))(a2, ObjectType, v5);
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = (*(v5 + 24))(ObjectType, v5);
  if (!*(v8 + 16) || (v9 = sub_18B7C9044(a2), (v10 & 1) == 0))
  {

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

LABEL_7:
  *a3 = v11;
  return result;
}

uint64_t sub_18B7D6518()
{
  v0 = sub_18BC1F2C8();
  __swift_allocate_value_buffer(v0, qword_1EA9F7EB0);
  __swift_project_value_buffer(v0, qword_1EA9F7EB0);
  return sub_18BC1F2B8();
}

uint64_t sub_18B7D6598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - v3;
  v5 = _s4PageVMa_0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - v10;
  sub_18B7CA054(a1, v4, &unk_1EA9DBE90);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_18B988BAC(v4, &unk_1EA9DBE90);
    return 7104878;
  }

  else
  {
    sub_18B82FD54(v4, v11, _s4PageVMa_0);
    v13 = *(sub_18B7CC308() + 192);
    sub_18BC1E3F8();

    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      while (v15 < *(v13 + 16))
      {
        sub_18B82D0A4(v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, _s4PageVMa_0);
        updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
        result = sub_18B82D1D4(v9, _s4PageVMa_0);
        if (updated)
        {

          v18[1] = v15;
          v17 = sub_18BC21F48();
          sub_18B82D1D4(v11, _s4PageVMa_0);
          return v17;
        }

        if (v14 == ++v15)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      sub_18B82D1D4(v11, _s4PageVMa_0);
      return 0x6E776F6E6B6E75;
    }
  }

  return result;
}

uint64_t sub_18B7D6884(uint64_t a1, unint64_t a2)
{
  v3 = sub_18B7D68D0(a1, a2);
  sub_18B7E940C(&unk_1EFF1A038);
  return v3;
}

uint64_t sub_18B7D68D0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_18B7D6A00(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_18BC21B58();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_18BC20C68();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_18B7D6A00(v10, 0);
        result = sub_18BC21AC8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_18B7D6A00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DAC30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_18B7D6A74(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C80);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_18B7D6B4C()
{
  v1 = 0.0;
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v1 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_state);
  }

  v2 = sub_18B7DE654();
  [v2 setValue_];

  v3 = sub_18B7DE654();
  [v3 setValue_];

  sub_18B7C9974();
  v9 = v4;
  v5 = *&v4[qword_1EA9F7FF8 + 112];
  v10[6] = *&v4[qword_1EA9F7FF8 + 96];
  v10[7] = v5;
  v10[8] = *&v4[qword_1EA9F7FF8 + 128];
  v11 = *&v4[qword_1EA9F7FF8 + 144];
  v6 = *&v4[qword_1EA9F7FF8 + 48];
  v10[2] = *&v4[qword_1EA9F7FF8 + 32];
  v10[3] = v6;
  v7 = *&v4[qword_1EA9F7FF8 + 80];
  v10[4] = *&v4[qword_1EA9F7FF8 + 64];
  v10[5] = v7;
  v8 = *&v4[qword_1EA9F7FF8 + 16];
  v10[0] = *&v4[qword_1EA9F7FF8];
  v10[1] = v8;
  *&v4[qword_1EA9F7FF8 + 64] = v1;
  sub_18B7CBBC4(v10);
}

void sub_18B7D6C5C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 32);
  v3 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView);
  CGAffineTransformMakeScale(&v12, v2, v2);
  [v3 setTransform_];
  sub_18B7C9974();
  v5 = v4;
  v16 = *&v4[qword_1EA9F7FF8 + 96];
  v17 = *&v4[qword_1EA9F7FF8 + 112];
  v18 = *&v4[qword_1EA9F7FF8 + 128];
  v19 = *&v4[qword_1EA9F7FF8 + 144];
  *&v12.tx = *&v4[qword_1EA9F7FF8 + 32];
  v13 = *&v4[qword_1EA9F7FF8 + 48];
  v14 = *&v4[qword_1EA9F7FF8 + 64];
  v15 = *&v4[qword_1EA9F7FF8 + 80];
  *&v12.a = *&v4[qword_1EA9F7FF8];
  *&v12.c = *&v4[qword_1EA9F7FF8 + 16];
  *&v4[qword_1EA9F7FF8 + 80] = v2;
  sub_18B7CBBC4(&v12);

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v9);

  sub_18B7DFD58(v9);
  if (v9[58])
  {
    [*(v1 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher) layoutIfNeeded];
  }

  v7 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v10);

  sub_18B7DFD58(v10);
  if ((v10[0] & 1) != 0 && (v10[1] & 1) == 0)
  {
    sub_18B7F161C();
  }

  v8 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v11);

  sub_18B7DFD58(v11);
  if (v11[19] & 1) != 0 && (v11[0])
  {
    sub_18B7F1B84();
  }
}

uint64_t sub_18B7D6E1C()
{
  v1 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___displayItems;
  if (*(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___displayItems))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___displayItems);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_18BC41E60;
    *(v2 + 32) = sub_18B7C5C10();
    *(v2 + 40) = sub_18B7C07CC();
    *(v0 + v1) = v2;
    sub_18BC1E3F8();
  }

  sub_18BC1E3F8();
  return v2;
}

uint64_t sub_18B7D6ED0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_18B7D6F80(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v115 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v113 - v6;
  v128 = _s4PageVMa();
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v113 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5330);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v119 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v113 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v113 - v21;
  v23 = _s7ContentVMa(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v123 = &v113 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v113 = &v113 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v116 = &v113 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v113 - v33;
  v127 = v1;
  v125 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_tabSwitcher;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v36 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(Strong + v36, v34, _s7ContentVMa);

  v37 = *v34;
  sub_18B7DFF04(v34, _s7ContentVMa);
  v132 = a1;
  sub_18B7CA054(a1, v22, &qword_1EA9D5330);
  v129 = *(v24 + 48);
  v131 = v23;
  v130 = v24 + 48;
  if (v129(v22, 1, v23) == 1)
  {
    sub_18B988BAC(v22, &qword_1EA9D5330);
LABEL_4:
    type metadata accessor for AnimationSettings();
    inited = swift_initStaticObject();
    v122 = 0;
    goto LABEL_6;
  }

  v38 = *v22;
  sub_18B7DFF04(v22, _s7ContentVMa);
  if (v38 != v37)
  {
    goto LABEL_4;
  }

  v122 = 1;
  inited = 0x8000000000000008;
LABEL_6:
  v40 = v126;
  v41 = v127;
  v42 = v128;
  v43 = swift_allocObject();
  v43[2] = v41;
  v44 = v41;
  v124 = inited;
  sub_18B7EAA64(sub_18B7E95EC, v43, CGRectMake, 0, inited);

  sub_18B7D837C();
  sub_18B7D901C();
  v128 = v44;
  sub_18B7CFD08(v7);
  v45 = *(v40 + 48);
  if (v45(v7, 1, v42) != 1)
  {
    v47 = v121;
    sub_18B81F940(v7, v121, _s4PageVMa);
    v48 = *(v47 + *(v42 + 72) + 8);
    v49 = v118;
    sub_18B7CA054(v132, v118, &qword_1EA9D5330);
    v50 = (v129)(v49, 1, v131);
    if (v50 == 1)
    {
      v51 = v48;
      sub_18B988BAC(v49, &qword_1EA9D5330);
      v52 = 0;
      v46 = v128;
      if (v48)
      {
LABEL_11:
        if (v52)
        {
          sub_18B7B0AC0(0, &qword_1EA9D46F0);
          v53 = v47;
          v54 = sub_18BC215C8();
          sub_18B7DFF04(v53, _s4PageVMa);

          if ((v122 & v54 & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        sub_18B7DFF04(v47, _s4PageVMa);

LABEL_28:
        sub_18B7E5BC8();
        goto LABEL_29;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v50);
      *(&v113 - 2) = v55;
      v56 = *(v49 + 8);
      v57 = v48;
      v58 = v115;
      sub_18B835D80(sub_18B9EB544, v56, v115);
      sub_18B7DFF04(v49, _s7ContentVMa);
      if (v45(v58, 1, v42) == 1)
      {
        sub_18B988BAC(v58, &qword_1EA9D52E0);
        v52 = 0;
      }

      else
      {
        v52 = *(v58 + *(v42 + 72) + 8);
        v59 = v52;
        sub_18B7DFF04(v58, _s4PageVMa);
      }

      v46 = v128;
      v47 = v121;
      if (v48)
      {
        goto LABEL_11;
      }
    }

    sub_18B7DFF04(v47, _s4PageVMa);
    if (v52)
    {
    }

    else if (v122)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  sub_18B988BAC(v7, &qword_1EA9D52E0);
  v46 = v128;
  if (!v122)
  {
    goto LABEL_28;
  }

LABEL_22:
  v60 = swift_unknownObjectUnownedLoadStrong();
  v61 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  v62 = v60 + v61;
  v63 = v116;
  sub_18B7DF568(v62, v116, _s7ContentVMa);

  v64 = *(v63 + 2);
  sub_18B7DFF04(v63, _s7ContentVMa);
  v65 = v117;
  sub_18B7CA054(v132, v117, &qword_1EA9D5330);
  if (v129(v65, 1, v131) == 1)
  {
    sub_18B988BAC(v65, &qword_1EA9D5330);
    goto LABEL_28;
  }

  v66 = *(v65 + 2);
  sub_18B7DFF04(v65, _s7ContentVMa);
  if (v64 != v66)
  {
    goto LABEL_28;
  }

  v67 = swift_unknownObjectUnownedLoadStrong();
  v68 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  v69 = v67 + v68;
  v70 = v113;
  sub_18B7DF568(v69, v113, _s7ContentVMa);

  v71 = *(v70 + 48);
  sub_18BC1E3F8();
  sub_18B7DFF04(v70, _s7ContentVMa);
  v72 = v114;
  sub_18B7CA054(v132, v114, &qword_1EA9D5330);
  if (v129(v72, 1, v131) == 1)
  {
    sub_18B988BAC(v72, &qword_1EA9D5330);

    goto LABEL_28;
  }

  v73 = *(v72 + 48);
  sub_18BC1E3F8();
  sub_18B7DFF04(v72, _s7ContentVMa);
  sub_18B9A8A24(v71, v73);
  v75 = v74;

  if ((v75 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v76 = swift_unknownObjectUnownedLoadStrong();
  v77 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  v78 = v76 + v77;
  v79 = v123;
  sub_18B7DF568(v78, v123, _s7ContentVMa);

  v80 = *(v79 + 48);
  sub_18BC1E3F8();
  sub_18B7DFF04(v79, _s7ContentVMa);
  v81 = *(v80 + 16);

  v82 = *(v46 + OBJC_IVAR___SFTabOverviewDisplayItem_hud);
  v83 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v135);

  sub_18B7DFD58(v135);
  if ((v135[22] & 1) != 0 && v81)
  {
    v84 = &off_1EE464358;
    v85 = &_s23SelectionCountIndicatorVN;
  }

  else
  {
    v85 = 0;
    v84 = 0;
    v81 = 0;
    v134[1] = 0;
    v134[2] = 0;
  }

  v134[3] = v85;
  v134[4] = v84;
  v134[0] = v81;
  v86 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_content;
  swift_beginAccess();
  sub_18B7DA57C(v134, v82 + v86);
  swift_endAccess();
  sub_18B7E789C();
  sub_18B988BAC(v134, &qword_1EA9D5338);
  type metadata accessor for AnimationSettings();
  v87 = swift_initStaticObject();
  sub_18B7EB088(v87);
  if ((sub_18B9DAA44() & 1) == 0)
  {
    v89 = v119;
    sub_18B7CA054(v132, v119, &qword_1EA9D5330);
    if (v129(v89, 1, v131) == 1)
    {
      sub_18B988BAC(v89, &qword_1EA9D5330);
      v90 = 0;
    }

    else
    {
      v91 = *(v89 + 8);
      sub_18BC1E3F8();
      sub_18B7DFF04(v89, _s7ContentVMa);
      v92 = *(v91 + 16);
      if (v92)
      {
        v134[0] = MEMORY[0x1E69E7CC0];
        sub_18B9B6794(0, v92, 0);
        v90 = v134[0];
        v93 = v91 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v94 = *(v40 + 72);
        do
        {
          sub_18B7DF568(v93, v9, _s4PageVMa);
          v95 = v9[3];
          sub_18B7DFF04(v9, _s4PageVMa);
          v134[0] = v90;
          v97 = *(v90 + 16);
          v96 = *(v90 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_18B9B6794((v96 > 1), v97 + 1, 1);
            v90 = v134[0];
          }

          *(v90 + 16) = v97 + 1;
          *(v90 + v97 + 32) = v95;
          v93 += v94;
          --v92;
        }

        while (v92);

        v40 = v126;
        v46 = v128;
      }

      else
      {

        v90 = MEMORY[0x1E69E7CC0];
      }
    }

    v98 = swift_unknownObjectUnownedLoadStrong();
    v99 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    v100 = v120;
    sub_18B7DF568(v98 + v99, v120, _s7ContentVMa);

    v101 = *(v100 + 8);
    sub_18BC1E3F8();
    sub_18B7DFF04(v100, _s7ContentVMa);
    v102 = *(v101 + 16);
    if (v102)
    {
      v133 = MEMORY[0x1E69E7CC0];
      sub_18B9B6794(0, v102, 0);
      v103 = v133;
      v104 = v101 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v105 = *(v40 + 72);
      do
      {
        sub_18B7DF568(v104, v9, _s4PageVMa);
        v106 = v9[3];
        sub_18B7DFF04(v9, _s4PageVMa);
        v133 = v103;
        v108 = *(v103 + 16);
        v107 = *(v103 + 24);
        if (v108 >= v107 >> 1)
        {
          sub_18B9B6794((v107 > 1), v108 + 1, 1);
          v103 = v133;
        }

        *(v103 + 16) = v108 + 1;
        *(v103 + v108 + 32) = v106;
        v104 += v105;
        --v102;
      }

      while (v102);

      v46 = v128;
      if (v90)
      {
LABEL_50:
        v109 = sub_18B98E2D0(v90, v103);

        v110 = v124;
        if (v109)
        {
LABEL_56:
          v88 = v110;
          goto LABEL_57;
        }

LABEL_54:
        v111 = *(v46 + OBJC_IVAR___SFTabOverviewDisplayItem_capsuleToolbar);
        if (v111)
        {
          v112 = *(v111 + OBJC_IVAR____TtC12MobileSafari23ScrollingCapsuleToolbar_capsuleView);
          sub_18BA429B0(1, 0);
          sub_18B7EBAE8(v110);

          return;
        }

        goto LABEL_56;
      }
    }

    else
    {

      v103 = MEMORY[0x1E69E7CC0];
      if (v90)
      {
        goto LABEL_50;
      }
    }

    v110 = v124;
    goto LABEL_54;
  }

  v88 = v124;
LABEL_57:
  sub_18B7EBAE8(v88);
}

uint64_t sub_18B7D7FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

unint64_t sub_18B7D8090(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
    return sub_18BC1E1A8();
  }

  return result;
}

void sub_18B7D80B8(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (*(a1 + 32))
  {
    a2();
  }

  else
  {
    v5 = *(a1 + 28);
    v6 = *(a1 + 16);
    v7 = *(a1 + 20);
    v8 = *(a1 + 24);
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v15[4] = sub_18B9D53B0;
    v15[5] = v10;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_18B7E3BF4;
    v15[3] = &block_descriptor_39_3;
    v11 = _Block_copy(v15);

    LODWORD(v12) = v6;
    LODWORD(v13) = v7;
    LODWORD(v14) = v8;
    [v9 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
    _Block_release(v11);
  }
}

uint64_t sub_18B7D82B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

void sub_18B7D837C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v84 - v2;
  v103 = sub_18BC1EE48();
  v4 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v97 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v84 - v7;
  v101 = _s4ItemVMa_1();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v84 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v84 - v14;
  v105 = _s4PageVMa();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v84 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v84 - v21;
  v23 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s7ContentVMa_1();
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_floatingTabBarNavigationBarTitleView);
  if (v30)
  {
    v85 = v4;
    v88 = v27;
    v89 = v12;
    v91 = v15;
    v92 = v29;
    v93 = v3;
    v31 = *(v30 + OBJC_IVAR____TtC12MobileSafari36FloatingTabBarNavigationBarTitleView_tabBar);
    v87 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_tabSwitcher;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v33 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF568(Strong + v33, v25, _s7ContentVMa);
    v90 = v31;

    v34 = *(v25 + 1);
    sub_18BC1E3F8();
    sub_18B7DFF04(v25, _s7ContentVMa);
    v35 = *(v34 + 16);
    v95 = OBJC_IVAR___SFTabOverviewDisplayItem_interactiveInsertionGroup;
    v94 = v0;
    v36 = MEMORY[0x1E69E7CC0];
    v99 = v35;
    if (v35)
    {
      v37 = 0;
      v38 = v105;
      v98 = v19;
      while (v37 < *(v34 + 16))
      {
        v39 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v40 = *(v104 + 72);
        sub_18B7DF568(v34 + v39 + v40 * v37, v22, _s4PageVMa);
        if (v22[v38[10]] == 1 && *(*&v95[v0] + 40) != 3)
        {
          sub_18B7DFF04(v22, _s4PageVMa);
        }

        else
        {
          sub_18B81F940(v22, v19, _s4PageVMa);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v109[0] = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_18B830980(0, *(v36 + 16) + 1, 1);
            v36 = *&v109[0];
          }

          v43 = *(v36 + 16);
          v42 = *(v36 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_18B830980(v42 > 1, v43 + 1, 1);
            v36 = *&v109[0];
          }

          *(v36 + 16) = v43 + 1;
          v19 = v98;
          sub_18B81F940(v98, v36 + v39 + v43 * v40, _s4PageVMa);
          v38 = v105;
        }

        if (v99 == ++v37)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v38 = v105;
LABEL_15:
      v86 = v0;

      v44 = *(v36 + 16);
      if (v44)
      {
        *&v109[0] = MEMORY[0x1E69E7CC0];
        sub_18B9B6848(0, v44, 0);
        v45 = *&v109[0];
        v46 = v36 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
        v99 = *(v104 + 72);
        v98 = (v85 + 8);
        v95 = "ProfileHeaderButton";
        v96 = v9;
        do
        {
          v47 = v106;
          sub_18B7DF568(v46, v106, _s4PageVMa);
          v48 = v38[8];
          v49 = sub_18BC1EC08();
          (*(*(v49 - 8) + 16))(v9, v47 + v48, v49);
          if ((*(v47 + v38[10]) & 1) != 0 || *(v106 + v38[12]) == 1)
          {
            v50 = v102;
            sub_18BC1EE38();
            v51 = v97;
            sub_18BC1EE38();
            v52 = sub_18BC1EE18();
            v54 = v53;
            v55 = *v98;
            v56 = v51;
            v57 = v103;
            (*v98)(v56, v103);
            v58 = v50;
            v9 = v96;
            v55(v58, v57);
          }

          else
          {
            v59 = v102;
            sub_18BC1EE38();
            v52 = sub_18BC1EE28();
            v54 = v60;
            (*v98)(v59, v103);
          }

          v38 = v105;
          v61 = v106;
          v62 = (v106 + *(v105 + 76));
          v64 = *v62;
          v63 = v62[1];
          v65 = v101;
          v66 = &v9[*(v101 + 20)];
          *v66 = v52;
          v66[1] = v54;
          v67 = &v9[*(v65 + 24)];
          *v67 = v64;
          *(v67 + 1) = v63;
          sub_18BC1E3F8();
          sub_18B7DFF04(v61, _s4PageVMa);
          *&v109[0] = v45;
          v69 = *(v45 + 16);
          v68 = *(v45 + 24);
          if (v69 >= v68 >> 1)
          {
            sub_18B9B6848(v68 > 1, v69 + 1, 1);
            v45 = *&v109[0];
          }

          *(v45 + 16) = v69 + 1;
          sub_18B81F940(v9, v45 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v69, _s4ItemVMa_1);
          v46 += v99;
          --v44;
        }

        while (v44);
      }

      else
      {

        v45 = MEMORY[0x1E69E7CC0];
      }

      v70 = v89;
      sub_18B7CFD08(v89);
      v71 = (*(v104 + 48))(v70, 1, v38);
      v72 = v38;
      v73 = v92;
      v74 = v91;
      if (v71 == 1)
      {
        sub_18B988BAC(v70, &qword_1EA9D52E0);
        v75 = sub_18BC1EC08();
        (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
      }

      else
      {
        v76 = v72[8];
        v77 = sub_18BC1EC08();
        v78 = *(v77 - 8);
        (*(v78 + 16))(v74, v70 + v76, v77);
        sub_18B7DFF04(v70, _s4PageVMa);
        (*(v78 + 56))(v74, 0, 1, v77);
      }

      v79 = v93;
      *v73 = v45;
      sub_18B7CF39C(v74, v73 + *(v88 + 20), &unk_1EA9D3AE0);
      memset(v109, 0, sizeof(v109));
      v80 = swift_unknownObjectUnownedLoadStrong();
      v81 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
      swift_beginAccess();
      sub_18B7CA054(v80 + v81, v79, &unk_1EA9D5350);

      v82 = _s11TransactionVMa();
      if ((*(*(v82 - 8) + 48))(v79, 1, v82) == 1)
      {
        sub_18B988BAC(v79, &unk_1EA9D5350);
        memset(v107, 0, sizeof(v107));
        v108 = 0;
      }

      else
      {
        sub_18B7CA054(v79, v107, &unk_1EA9D5060);
        sub_18B7DFF04(v79, _s11TransactionVMa);
      }

      v83 = v90;
      sub_18BBC36E0(v73, v109, v107);

      sub_18B988BAC(v107, &unk_1EA9D5060);
      sub_18B988BAC(v109, &unk_1EA9D53A0);
      sub_18B7DFF04(v73, _s7ContentVMa_1);
    }
  }
}

uint64_t sub_18B7D901C()
{
  v1 = _s14ScrollPositionOMa();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v75 = v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = _s4ItemVMa_2();
  v78 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v4 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v74 - v6;
  v8 = _s4PageVMa();
  v93 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s4PageVMa_0();
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = v74 - v17;
  v18 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v85 = v74 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v74 - v24;
  v89 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher11DisplayItem_tabSwitcher;
  v90 = v0;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v27 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF568(Strong + v27, v25, _s7ContentVMa);

  v28 = *(v25 + 1);
  sub_18BC1E3F8();
  sub_18B7DFF04(v25, _s7ContentVMa);
  v29 = *(v28 + 16);
  if (v29)
  {
    v82 = v20;
    *&v99 = MEMORY[0x1E69E7CC0];
    sub_18B825E60(0, v29, 0);
    v30 = 0;
    v94 = 0;
    v31 = v99;
    v32 = *(v93 + 80);
    v74[1] = v28;
    v80 = v28 + ((v32 + 32) & ~v32);
    v81 = v29;
    v79 = *(v93 + 72);
    v83 = v13;
    v84 = v10;
    do
    {
      v92 = v31;
      v93 = v30;
      sub_18B7DF568(v80 + v79 * v30, v10, _s4PageVMa);
      sub_18B827328(v13);
      v33 = swift_unknownObjectUnownedLoadStrong();
      v34 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
      swift_beginAccess();
      v35 = v33 + v34;
      v36 = v85;
      sub_18B7DF568(v35, v85, _s7ContentVMa);

      LOBYTE(v33) = *(v36 + 2);
      sub_18B7DFF04(v36, _s7ContentVMa);
      v91 = &v13[*(v87 + 20)];
      v91[4] = v33;
      v37 = swift_unknownObjectUnownedLoadStrong();
      v38 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
      swift_beginAccess();
      v39 = v82;
      sub_18B7DF568(v37 + v38, v82, _s7ContentVMa);

      v40 = v94;
      v41 = sub_18B9D554C(*(v39 + 48));
      v94 = v40;
      v42 = *(v41 + 16);
      v43 = sub_18B82B9B8(&qword_1EA9D9230, _s4ItemVMa_2);
      v44 = MEMORY[0x18CFFC500](v42, v88, v43);
      *&v95 = v44;
      v45 = *(v41 + 16);
      if (v45)
      {
        v46 = v41 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
        v47 = *(v78 + 72);
        do
        {
          sub_18B7DF568(v46, v4, _s4ItemVMa_2);
          sub_18B85A4D8(v7, v4);
          sub_18B7DFF04(v7, _s4ItemVMa_2);
          v46 += v47;
          --v45;
        }

        while (v45);

        v48 = v95;
      }

      else
      {
        v48 = v44;
      }

      sub_18B7DFF04(v39, _s7ContentVMa);
      v10 = v84;
      sub_18B7DFF04(v84, _s4PageVMa);
      v49 = v91;

      *(v49 + 13) = v48;
      v31 = v92;
      *&v99 = v92;
      v51 = *(v92 + 16);
      v50 = *(v92 + 24);
      v13 = v83;
      if (v51 >= v50 >> 1)
      {
        sub_18B825E60(v50 > 1, v51 + 1, 1);
        v31 = v99;
      }

      v30 = v93 + 1;
      *(v31 + 16) = v51 + 1;
      sub_18B81F940(v13, v31 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v51, _s4PageVMa_0);
    }

    while (v30 != v81);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v52 = sub_18B7CAC94(v31);
  v54 = v53;
  sub_18B7C9974();
  v56 = v55;
  v57 = swift_unknownObjectUnownedLoadStrong();
  v58 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  v59 = v57 + v58;
  v60 = v76;
  sub_18B7CA054(v59, v76, &unk_1EA9D5350);

  v61 = v60;
  v62 = _s11TransactionVMa();
  v63 = *(*(v62 - 8) + 48);
  v64 = v63(v61, 1, v62);
  v65 = v77;
  if (v64 == 1)
  {
    sub_18B988BAC(v61, &unk_1EA9D5350);
  }

  else
  {
    v66 = v61 + *(v62 + 28);
    v67 = v52;
    v68 = v61;
    v69 = v75;
    sub_18B7DF568(v66, v75, _s14ScrollPositionOMa);
    v70 = v68;
    v52 = v67;
    sub_18B7DFF04(v70, _s11TransactionVMa);
    sub_18B82D8AC(&v95);
    sub_18B7DFF04(v69, _s14ScrollPositionOMa);
    if (v95)
    {
      v99 = v95;
      v100 = v96;
      v101 = v97;
      v102 = v98;
      goto LABEL_18;
    }
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
LABEL_18:
  v71 = swift_unknownObjectUnownedLoadStrong();
  v72 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(v71 + v72, v65, &unk_1EA9D5350);

  if (v63(v65, 1, v62) == 1)
  {
    sub_18B988BAC(v65, &unk_1EA9D5350);
    v95 = 0u;
    v96 = 0u;
    *&v97 = 0;
  }

  else
  {
    sub_18B7CA054(v65, &v95, &unk_1EA9D5060);
    sub_18B7DFF04(v65, _s11TransactionVMa);
  }

  sub_18B7D9998(v52 & 1, v54, &v99, &v95);

  sub_18B988BAC(&v95, &unk_1EA9D5060);
  return sub_18B988BAC(&v99, &unk_1EA9D53A0);
}

uint64_t sub_18B7D9998(int a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = MEMORY[0x1E69E7D40];
  v10 = v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x90);
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 1);
  *v10 = a1;
  *(v10 + 1) = a2;
  sub_18BC1E3F8();
  if ((sub_18B7D9CDC(v11, v12, a1, a2) & 1) != 0 || *a3)
  {
    v13 = *v10;
    v14 = *(v10 + 1);
    sub_18BC1E3F8();
    sub_18B82E54C(v13, v14, a3, a4, 0);
  }

  else
  {
    v69[0] = a1 & 1;
    v70 = a2;
    v16 = *((*v9 & *v4) + 0x1C0);
    sub_18BC1E3F8();
    v17 = v4;
    v16(&v71, v69);

    v18 = v71;
    v19 = *((*v9 & *v17) + 0x68);
    swift_beginAccess();
    *(v17 + v19) = v18;

    v21 = sub_18B7C2E68(v20);
    [v21 adjustedContentInset];
    v67 = v23;
    v68 = v22;
    v25 = v24;
    v27 = v26;
    [v21 bounds];
    v65 = v29;
    v66 = v28;
    v63 = v31;
    v64 = v30;
    sub_18B7E0E4C();
    v61 = v33;
    v62 = v32;
    v59 = v35;
    v60 = v34;
    [v21 contentSize];
    v37 = v36;
    v39 = v38;
    [v21 frame];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = [v21 isTracking];

    v49 = v17;
    v50 = sub_18B7CC308();
    v51 = v50 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
    v52 = *(v50 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState);
    v54 = *(v50 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 16);
    v53 = *(v50 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 24);
    v55 = *(v50 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 48);
    v56.f64[0] = v68;
    *v51 = v68;
    *(v51 + 8) = v67;
    *(v51 + 16) = v25;
    *(v51 + 24) = v27;
    *(v51 + 32) = v66;
    *(v51 + 40) = v65;
    v57.f64[0] = v64;
    *(v51 + 48) = v64;
    *(v51 + 56) = v63;
    *(v51 + 64) = v62;
    *(v51 + 72) = v61;
    *(v51 + 80) = v60;
    *(v51 + 88) = v59;
    *(v51 + 96) = v37;
    *(v51 + 104) = v39;
    *(v51 + 112) = v41;
    *(v51 + 120) = v43;
    *(v51 + 128) = v45;
    *(v51 + 136) = v47;
    *(v51 + 144) = v48;
    v57.f64[1] = v63;
    v56.f64[1] = v67;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v55, v57), vceqq_f64(v52, v56)))) & 1) == 0 || v54 != v25 || v53 != v27)
    {
      sub_18B7E0FE8();
    }

    *(v49 + v19) = v50;

    (*((*v9 & *v49) + 0x1C8))(v58);
  }
}

uint64_t sub_18B7D9CDC(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s4PageVMa_0();
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DBD48);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v35 - v11;
  if ((a1 ^ a3))
  {
    return 1;
  }

  v36 = a2;
  if ((sub_18B7E965C(a4, a2) & 1) == 0)
  {
    return 1;
  }

  v13 = 0;
  v35 = *(a4 + 16);
  do
  {
    v14 = v35 != v13;
    if (v35 == v13)
    {
      break;
    }

    v15 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v16 = *(v38 + 72) * v13;
    result = sub_18B82D10C(a4 + v15 + v16, v10, _s4PageVMa_0);
    v18 = *(v36 + 16);
    if (v13 == v18)
    {
      sub_18B82D234(v10, _s4PageVMa_0);
      return 0;
    }

    if (v13++ >= v18)
    {
      __break(1u);
      return result;
    }

    v19 = v36 + v15;
    v20 = &v12[*(v37 + 48)];
    sub_18BBE8450(v10, v12);
    sub_18B82D10C(v19 + v16, v20, _s4PageVMa_0);
    v21 = &v12[*(v8 + 20)];
    v22 = *(v21 + 3);
    v39[14] = *(v21 + 2);
    v39[15] = v22;
    v23 = *(v21 + 7);
    v39[18] = *(v21 + 6);
    v39[19] = v23;
    v24 = *(v21 + 5);
    v39[16] = *(v21 + 4);
    v39[17] = v24;
    v25 = *(v21 + 11);
    v39[22] = *(v21 + 10);
    v39[23] = v25;
    v26 = *(v21 + 9);
    v39[20] = *(v21 + 8);
    v39[21] = v26;
    v27 = *(v21 + 1);
    v39[12] = *v21;
    v39[13] = v27;
    v28 = (v20 + *(v8 + 20));
    v29 = v28[9];
    v39[8] = v28[8];
    v39[9] = v29;
    v30 = v28[11];
    v39[10] = v28[10];
    v39[11] = v30;
    v31 = v28[5];
    v39[4] = v28[4];
    v39[5] = v31;
    v32 = v28[7];
    v39[6] = v28[6];
    v39[7] = v32;
    v33 = v28[1];
    v39[0] = *v28;
    v39[1] = v33;
    v34 = v28[3];
    v39[2] = v28[2];
    v39[3] = v34;
    LOBYTE(v20) = sub_18BB1B414(v39);
    sub_18B988BAC(v12, &qword_1EA9DBD48);
  }

  while ((v20 & 1) == 0);
  return v14;
}

uint64_t sub_18B7D9FA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v47 - v2;
  v54 = _s4PageVMa_0();
  v4 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D38);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v55 = v0;
  v56 = &v47 - v14;
  result = sub_18B7EA91C();
  v16 = 0;
  v17 = 0;
  v18 = *(result + 64);
  v47 = result + 64;
  v19 = 1 << *(result + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v50 = v4;
  v51 = v3;
  v52 = result;
  v53 = (v4 + 48);
  v58 = v8;
  if ((v20 & v18) != 0)
  {
    while (1)
    {
      v23 = v17;
      v24 = v16;
LABEL_13:
      v28 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v29 = v28 | (v24 << 6);
      v30 = v52;
      v31 = v49;
      sub_18B82D0A4(*(v52 + 48) + *(v50 + 72) * v29, v49, _s4PageVMa_0);
      v32 = *(v30 + 56);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D40);
      v34 = *(v33 + 48);
      v59 = *(v32 + 16 * v29);
      v27 = v57;
      sub_18B82FD54(v31, v57, _s4PageVMa_0);
      *(v27 + v34) = v59;
      (*(*(v33 - 8) + 56))(v27, 0, 1, v33);
      v35 = v59;
      v26 = v24;
      v3 = v51;
      v17 = v23;
LABEL_14:
      v36 = v27;
      v37 = v56;
      sub_18B7CF39C(v36, v56, &qword_1EA9D6D38);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D40);
      v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
      v40 = v55;
      if (v39 == 1)
      {
        break;
      }

      v16 = v26;
      v41 = *(v37 + *(v38 + 48));
      sub_18B82FD54(v37, v58, _s4PageVMa_0);
      v42 = *(sub_18B7CC308() + 192);
      sub_18BC1E3F8();
      v43 = v58;

      MEMORY[0x1EEE9AC00](v44);
      *(&v47 - 2) = v43;
      sub_18B830354(sub_18B9EB46C, v42, v3);

      if ((*v53)(v3, 1, v54) == 1)
      {
        sub_18B82D1D4(v43, _s4PageVMa_0);

        result = sub_18B988BAC(v3, &unk_1EA9DBE90);
      }

      else
      {
        v45 = v48;
        sub_18B82FD54(v3, v48, _s4PageVMa_0);
        v61 = 0;
        memset(v60, 0, sizeof(v60));
        sub_18B853B5C(v41, v45, 0, 0, v60, v40);

        sub_18B988BAC(v60, &unk_1EA9D5060);
        sub_18B82D1D4(v45, _s4PageVMa_0);
        result = sub_18B82D1D4(v43, _s4PageVMa_0);
      }

      if (!v21)
      {
        goto LABEL_5;
      }
    }

    *(v40 + qword_1EA9D6BB8) = 0;
  }

  else
  {
LABEL_5:
    if (v22 <= v16 + 1)
    {
      v25 = v16 + 1;
    }

    else
    {
      v25 = v22;
    }

    v26 = v25 - 1;
    v27 = v57;
    while (1)
    {
      v24 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v24 >= v22)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6D40);
        (*(*(v46 - 8) + 56))(v27, 1, 1, v46);
        v21 = 0;
        goto LABEL_14;
      }

      v21 = *(v47 + 8 * v24);
      ++v16;
      if (v21)
      {
        v23 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18B7DA57C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5338);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_18B7DA958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t _sSo17SFPlaceholderViewC12MobileSafariE12placeholders30matchingIntrinsicContentSizeOf7reusingSayABGSaySo6UIViewCG_AJtFZ_0(uint64_t isUniquelyReferenced_nonNull_bridgeObject, unint64_t a2)
{
  v2 = a2;
  v29 = MEMORY[0x1E69E7CC0];
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    goto LABEL_84;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v5 = 0x1E7218000uLL;
    if (v4)
    {
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        v8 = v6;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x18CFFD010](v8, v2);
          }

          else
          {
            if (v8 >= *(v3 + 16))
            {
              goto LABEL_76;
            }

            isUniquelyReferenced_nonNull_bridgeObject = *(v2 + 8 * v8 + 32);
          }

          v9 = isUniquelyReferenced_nonNull_bridgeObject;
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v8;
          if (v6 == v4)
          {
            goto LABEL_19;
          }
        }

        MEMORY[0x18CFFC270]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18BC20DD8();
        }

        isUniquelyReferenced_nonNull_bridgeObject = sub_18BC20E18();
        v7 = v29;
        if (v6 != v4)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

LABEL_19:
    v29 = v7;
    if (v7 >> 62)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_18BC219A8();
      v10 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v28 >> 62)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_18BC219A8();
      v2 = isUniquelyReferenced_nonNull_bridgeObject;
      if (isUniquelyReferenced_nonNull_bridgeObject < v10)
      {
        while (1)
        {
LABEL_23:
          if (v7 >> 62)
          {
            isUniquelyReferenced_nonNull_bridgeObject = sub_18BC219A8();
            if (!isUniquelyReferenced_nonNull_bridgeObject)
            {
              goto LABEL_77;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_bridgeObject = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!isUniquelyReferenced_nonNull_bridgeObject)
            {
              goto LABEL_77;
            }
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v7 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
          {
            isUniquelyReferenced_nonNull_bridgeObject = sub_18BAE3850(v7);
            v7 = isUniquelyReferenced_nonNull_bridgeObject;
          }

          v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v11)
          {
            break;
          }

          v12 = v11 - 1;
          v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
          *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v12;

          if (v7 >> 62)
          {
            isUniquelyReferenced_nonNull_bridgeObject = sub_18BC219A8();
            if (v2 >= isUniquelyReferenced_nonNull_bridgeObject)
            {
LABEL_35:
              v29 = v7;
              goto LABEL_36;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_bridgeObject = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v2 >= isUniquelyReferenced_nonNull_bridgeObject)
            {
              goto LABEL_35;
            }
          }
        }

LABEL_78:
        __break(1u);
        goto LABEL_79;
      }
    }

    else
    {
      v2 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2 < v10)
      {
        goto LABEL_23;
      }
    }

LABEL_36:
    v27 = v7 >> 62;
    if (!(v7 >> 62))
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        break;
      }

      goto LABEL_38;
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_18BC219A8();
    v14 = isUniquelyReferenced_nonNull_bridgeObject;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      break;
    }

LABEL_38:
    v15 = 4;
    while (1)
    {
      v3 = v15 - 4;
      if ((v7 & 0xC000000000000001) != 0)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x18CFFD010](v15 - 4, v7);
      }

      else
      {
        if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v7 + 8 * v15);
      }

      v16 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = v15 - 3;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v28 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_18BC219A8();
        if (v3 == isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_55:

          v5 = 0x1E7218000uLL;
          goto LABEL_56;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3 == isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_55;
        }
      }

      if ((v28 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x18CFFD010](v15 - 4, v28);
      }

      else
      {
        if (v3 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v18 = *(v28 + 8 * v15);
      }

      v19 = v18;
      [v18 intrinsicContentSize];
      [v16 setIntrinsicContentSizeOverride_];

      ++v15;
      v20 = v17 == v14;
      v5 = 0x1E7218000;
      if (v20)
      {
        goto LABEL_56;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_18BC219A8();
    isUniquelyReferenced_nonNull_bridgeObject = v26;
  }

LABEL_56:
  if (v27)
  {
    v21 = sub_18BC219A8();
  }

  else
  {
    v21 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 < v2)
  {
    v22 = v28 & 0xC000000000000001;
    v3 = v28 + 32;
    while (1)
    {
      if (v7 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_18BC219A8();
        if (v22)
        {
LABEL_63:
          v23 = MEMORY[0x18CFFD010](isUniquelyReferenced_nonNull_bridgeObject, v28);
          goto LABEL_68;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_63;
        }
      }

      if (isUniquelyReferenced_nonNull_bridgeObject < 0)
      {
        goto LABEL_82;
      }

      if (isUniquelyReferenced_nonNull_bridgeObject >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v23 = *(v3 + 8 * isUniquelyReferenced_nonNull_bridgeObject);
LABEL_68:
      v24 = v23;
      [objc_allocWithZone(*(v5 + 3248)) initMatchingIntrinsicContentSizeOfView_];

      MEMORY[0x18CFFC270]();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18BC20DD8();
      }

      sub_18BC20E18();
      v7 = v29;
      if (v29 >> 62)
      {
        if (sub_18BC219A8() >= v2)
        {
          return v7;
        }
      }

      else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v2)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_18B7DCD50(void *a1)
{
  v2 = sub_18BC1DE78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_18BC1DE58();
  sub_18BC214E8();

  return (*(v3 + 8))(v5, v2);
}

uint64_t _s4ItemVMa()
{
  result = qword_1ED651ED8;
  if (!qword_1ED651ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7DCEEC()
{
  if (!qword_1ED6521B0)
  {
    _s4ItemVMa();
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6521B0);
    }
  }
}

uint64_t sub_18B7DCF44()
{
  result = _s4ItemVMa();
  if (v1 <= 0x3F)
  {
    result = _s4PageVMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s7SectionVMa_0()
{
  result = qword_1ED651FF8;
  if (!qword_1ED651FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7DD024()
{
  sub_18B7E9824();
  if (v0 <= 0x3F)
  {
    _s4PageVMa();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_18B7DD098(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18BC20E78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_18B7DD10C()
{
  sub_18B7C0340(319, &qword_1EA9D93E0, _s4PageVMa, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_18B7E7F34();
    if (v1 <= 0x3F)
    {
      sub_18B7E7EA0();
      if (v2 <= 0x3F)
      {
        sub_18B7C0340(319, &qword_1ED6521B0, _s4ItemVMa, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_18B7DD240(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___configuration];
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *(v4 + 46) = 0u;
  v5 = &v2[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleRegistrations];
  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_18B7DDC7C(MEMORY[0x1E69E7CC0]);
  *v5 = CGRectMake;
  v5[1] = 0;
  v5[2] = v7;
  v5[3] = CGRectMake;
  v5[4] = 0;
  v8 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewManager;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9370);
  swift_allocObject();
  *&v3[v8] = sub_18B7C03A8();
  v9 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewRegistration;
  v10 = type metadata accessor for TabSwitcher.BorrowedContentViewRegistration(0);
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  v11 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentMetrics];
  v12 = *MEMORY[0x1E69DDCE0];
  v13 = *(MEMORY[0x1E69DDCE0] + 8);
  v14 = *(MEMORY[0x1E69DDCE0] + 16);
  v15 = *(MEMORY[0x1E69DDCE0] + 24);
  *v11 = *MEMORY[0x1E69DDCE0];
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = 0;
  v11[5] = 0;
  *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewOwningBorrowedContent] = 0;
  v16 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  v17 = _s11TransactionVMa();
  (*(*(v17 - 8) + 56))(&v3[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_interactivePageInsertionIsDisabledAssertion;
  type metadata accessor for Assertion();
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  *(v19 + 24) = 0;
  *&v3[v18] = v19;
  sub_18BC1DE28();
  v20 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pendingMoveIntent;
  v21 = _s15MoveItemsIntentVMa(0);
  (*(*(v21 - 8) + 56))(&v3[v20], 1, 1, v21);
  v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_mode] = 0;
  v22 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent];
  *v22 = 0;
  v22[2] = 0;
  *(v22 + 1) = v6;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  v23 = MEMORY[0x1E69E7CD0];
  *(v22 + 6) = MEMORY[0x1E69E7CD0];
  v24 = _s7ContentVMa(0);
  v25 = *(v24 + 40);
  v26 = _s4ItemVMa();
  v27 = *(*(v26 - 8) + 56);
  v27(&v22[v25], 1, 1, v26);
  *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_selectedItems] = v23;
  v28 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_unresolvedContent];
  *v28 = 0;
  v28[2] = 0;
  *(v28 + 1) = v6;
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *(v28 + 6) = v23;
  v27(&v28[*(v24 + 40)], 1, 1, v26);
  v27(&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemToPresentToAfterNextLayoutPass], 1, 1, v26);
  v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsResetLayoutAfterMovingToWindow] = 0;
  *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___displayItems] = 0;
  *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___quickTabSwitcherDisplayItem] = 0;
  *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher____lazy_storage___tabOverviewDisplayItem] = 0;
  v29 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_thumbnailMatchMoveViewRegistrationsByItem;
  *&v3[v29] = sub_18B7E80C8(v6);
  v30 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_browserContentInsets];
  *v30 = v12;
  v30[1] = v13;
  v30[2] = v14;
  v30[3] = v15;
  v31 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_capsuleReferenceFrame];
  v32 = *(MEMORY[0x1E695F050] + 16);
  *v31 = *MEMORY[0x1E695F050];
  v31[1] = v32;
  if ([objc_opt_self() isSolariumEnabled])
  {
    if (qword_1EA9D22D0 != -1)
    {
      swift_once();
    }

    v33 = &xmmword_1EA9D5DF8;
  }

  else
  {
    if (qword_1EA9D2308 != -1)
    {
      swift_once();
    }

    if (byte_1EA9D5F38)
    {
      if (qword_1EA9D22D8 != -1)
      {
        swift_once();
      }

      v33 = &xmmword_1EA9D5E38;
    }

    else
    {
      if (qword_1EA9D22E0 != -1)
      {
        swift_once();
      }

      v33 = &xmmword_1EA9D5E78;
    }
  }

  v34 = v33[1];
  v83[0] = *v33;
  v83[1] = v34;
  v84[0] = v33[2];
  *(v84 + 14) = *(v33 + 46);
  v81[0] = v83[0];
  v81[1] = v34;
  v82[0] = v84[0];
  *(v82 + 14) = *(v84 + 14);
  v35 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics];
  sub_18B7C9FF8(v83, v80);
  sub_18BA48FCC(v81, v80);
  v36 = v80[3];
  v35[2] = v80[2];
  v35[3] = v36;
  v35[4] = v80[4];
  v37 = v80[1];
  *v35 = v80[0];
  v35[1] = v37;
  v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_needsInitialLayout] = 1;
  v38 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedCapsuleViewProvider];
  *v38 = sub_18BAF06E0;
  v38[1] = 0;
  v39 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_borrowedContentViewProvider];
  *v39 = sub_18BB11750;
  v39[1] = 0;
  v40 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canAddItemPredicate];
  *v40 = sub_18B7E9C50;
  v40[1] = 0;
  v41 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canHandleDropSession];
  *v41 = sub_18B7E9C50;
  v41[1] = 0;
  v42 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_canShowTips];
  *v42 = sub_18B814EE4;
  v42[1] = 0;
  v43 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_didScrollToPageObserver];
  *v43 = CGRectMake;
  v43[1] = 0;
  v44 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dismissHandler];
  *v44 = CGRectMake;
  v44[1] = 0;
  v45 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dragItemProvider];
  *v45 = sub_18B9A926C;
  v45[1] = 0;
  v46 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropDestinationProvider];
  *v46 = sub_18BAF06F4;
  v46[1] = 0;
  v47 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropHandler];
  *v47 = CGRectMake;
  v47[1] = 0;
  v48 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_dropOperationProvider];
  *v48 = sub_18B8390A8;
  v48[1] = 0;
  v49 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_relinquishBorrowedCapsuleView];
  *v49 = CGRectMake;
  v49[1] = 0;
  v50 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemAddHandler];
  *v50 = CGRectMake;
  v50[1] = 0;
  v51 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCloseHandler];
  *v51 = CGRectMake;
  v51[1] = 0;
  v52 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemCopyHandler];
  *v52 = CGRectMake;
  v52[1] = 0;
  v53 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemDuplicateHandler];
  *v53 = CGRectMake;
  v53[1] = 0;
  v54 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemMoveHandler];
  *v54 = CGRectMake;
  v54[1] = 0;
  v55 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemPinHandler];
  *v55 = CGRectMake;
  v55[1] = 0;
  v56 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_itemSelectionHandler];
  *v56 = CGRectMake;
  v56[1] = 0;
  v57 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageInsertionHandler];
  *v57 = CGRectMake;
  v57[1] = 0;
  v58 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageRetitleHandler];
  *v58 = CGRectMake;
  v58[1] = 0;
  v59 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_pageTitleMenuProvider];
  *v59 = sub_18B9A926C;
  v59[1] = 0;
  v60 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_profileMenuProvider];
  *v60 = sub_18B8390A8;
  v60[1] = 0;
  v61 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_recentlyClosedMenuProvider];
  *v61 = sub_18B8390A8;
  v61[1] = 0;
  v62 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_reducedMotionTransitionObserver];
  *v62 = CGRectMake;
  v62[1] = 0;
  v63 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_relinquishBorrowedContentViewRegistration];
  *v63 = CGRectMake;
  v63[1] = 0;
  v64 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_showPagePickerSheet];
  *v64 = CGRectMake;
  v64[1] = 0;
  v65 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_steadyStateObserver];
  *v65 = CGRectMake;
  v65[1] = 0;
  v66 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabOverviewVisibilityObserver];
  *v66 = 0;
  v66[1] = 0;
  v67 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_toggleSidebarHandler];
  *v67 = CGRectMake;
  v67[1] = 0;
  v68 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_validateDismissal];
  *v68 = sub_18B7E9C50;
  v68[1] = 0;
  v69 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityObserver];
  *v69 = CGRectMake;
  v69[1] = 0;
  v70 = &v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_willScrollToPageObserver];
  *v70 = CGRectMake;
  v70[1] = 0;
  v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isInSteadyState] = 1;
  *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentPresentationTransition] = 0;
  v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isSettingUpTransition] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationState] = 0;
  v71 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_presentationTransitionsByItem;
  *&v3[v71] = sub_18B7DE0F0(v6);
  v72 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_reducedMotionTransitionAssertion;
  v73 = swift_allocObject();
  *(v73 + 16) = v6;
  *(v73 + 24) = 0;
  *&v3[v72] = v73;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_isVisible] = 0;
  v74 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_visibilityAssertion;
  v75 = swift_allocObject();
  *(v75 + 16) = v6;
  *(v75 + 24) = 0;
  *&v3[v74] = v75;
  *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabIconPool] = a1;
  *&v3[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_tabSnapshotPool] = a2;
  v79.receiver = v3;
  v79.super_class = type metadata accessor for TabSwitcher(0);
  return objc_msgSendSuper2(&v79, sel_initWithNibName_bundle_, 0, 0);
}

void *sub_18B7DDC7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7150);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7158);
  v7 = sub_18BC21D88();
  v8 = *(v2 + 48);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);
  sub_18BC1E1A8();
  sub_18B7CA054(a1 + v9, v5, &qword_1EA9D7150);
  v11 = sub_18BB8B29C(v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  v14 = *(*(_s4ItemVMa() - 8) + 72);
  v15 = a1 + v10 + v9;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    sub_18B80D3BC(v5, v7[6] + v14 * v13, _s4ItemVMa);
    result = memmove((v7[7] + 80 * v13), &v5[v8], 0x49uLL);
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v6)
    {
      goto LABEL_8;
    }

    sub_18B7CA054(v15, v5, &qword_1EA9D7150);
    v13 = sub_18BB8B29C(v5);
    v15 += v10;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B7DDED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s4ItemVMa();
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

uint64_t sub_18B7DDFA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18BC1EC08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 68)) = (a2 - 1);
  }

  return result;
}

void sub_18B7DE060()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_18BC20B98();
  v2 = [v0 BOOLForKey_];

  byte_1EA9D5F39 = v2;
}

id sub_18B7DE15C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_content];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_captureView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DD838]) init];
  v11 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_blurrableContainerView;
  type metadata accessor for BlurrableView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_contentView] = 0;
  v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_isVisible] = 0;
  v12 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_materialView;
  v13 = [objc_opt_self() effectWithStyle_];
  v14 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

  *&v4[v12] = v14;
  v15 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_shadowView;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v16 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher3HUD_systemSnapshotBackgroundView;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v19.receiver = v4;
  v19.super_class = _s3HUDCMa();
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18B7C87B8();

  return v17;
}

uint64_t sub_18B7DE2FC(char a1, id a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  result = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  if ((a1 & 4) != 0)
  {
    v15 = [a2 bottomAnchor];
    v16 = [v7 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:a5];

    MEMORY[0x18CFFC270]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18BC20DD8();
    }

    sub_18BC20E18();
    result = v27;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  v18 = [v7 leadingAnchor];
  v19 = [a2 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:a4];

  MEMORY[0x18CFFC270]();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18BC20DD8();
  }

  sub_18BC20E18();
  result = v27;
  if ((a1 & 1) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_12:
  v21 = [v7 topAnchor];
  v22 = [a2 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:a3];

  MEMORY[0x18CFFC270]();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_18BC20DD8();
  }

  sub_18BC20E18();
  result = v27;
  if ((a1 & 8) != 0)
  {
LABEL_15:
    v24 = [a2 trailingAnchor];
    v25 = [v7 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:a6];

    MEMORY[0x18CFFC270]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18BC20DD8();
    }

    sub_18BC20E18();
    return v27;
  }

  return result;
}

id sub_18B7DE654()
{
  v1 = OBJC_IVAR____TtC12MobileSafari13BlurrableView____lazy_storage___blurRadius;
  v2 = *(v0 + OBJC_IVAR____TtC12MobileSafari13BlurrableView____lazy_storage___blurRadius);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12MobileSafari13BlurrableView____lazy_storage___blurRadius);
  }

  else
  {
    v4 = sub_18B7DE6B4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18B7DE6B4()
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
  v14 = sub_18B7C8CEC;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_52;
  v6 = _Block_copy(&v10);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_18B801CB8;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_18B7B0DB0;
  v13 = &block_descriptor_56_0;
  v8 = _Block_copy(&v10);

  [v1 _createTransformerWithInputAnimatableProperties_modelValueSetter_presentationValueSetter_];
  _Block_release(v8);
  _Block_release(v6);

  return v3;
}

uint64_t sub_18B7DE8C8()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_18B7DE904()
{
  result = qword_1EA9D50B0;
  if (!qword_1EA9D50B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D50B0);
  }

  return result;
}

void sub_18B7DE958(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_18B7DE9B8()
{
  sub_18B7DEB00(sub_18B7DE654);
  v1 = sub_18B7DE654();
  [v1 value];
  v3 = v2;

  if (v3 >= 1.0)
  {
    v4 = v0[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v0 layer];
  v6 = sub_18BC1EEA8();
  v7 = sub_18BC20B98();
  [v5 setValue:v6 forKeyPath:v7];

  v8 = [v0 layer];
  [v8 setShouldRasterize_];
}

void sub_18B7DEB00(uint64_t (*a1)(void))
{
  v2 = v1;
  v3 = a1();
  [v3 value];
  v5 = v4;

  if (v5 != 0.0)
  {
    v6 = [v2 layer];
    v7 = *MEMORY[0x1E6979928];
    v8 = sub_18BC20BD8();
    sub_18B7C8D1C(v8, v9);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      v12 = [v2 layer];
      v15 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
      v13 = sub_18BC20EC8();
      [v15 setValue:v13 forKey:*MEMORY[0x1E6979B78]];

      v14 = sub_18BC1EEA8();
      [v15 setValue:v14 forKey:*MEMORY[0x1E6979BA8]];

      sub_18B7DEC84(v15);
    }
  }
}

void sub_18B7DEC84(void *a1)
{
  v3 = [v1 filters];
  if (v3)
  {

    v15 = sub_18B7B0AC0(0, &qword_1EA9D40B8);
    *&v14 = a1;
    v4 = a1;
    v5 = [v1 filters];
    if (v5)
    {
      v6 = v5;
      v7 = sub_18BC20D98();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_18B9B5C8C(0, *(v7 + 16) + 1, 1, v7);
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        v7 = sub_18B9B5C8C((v8 > 1), v9 + 1, 1, v7);
      }

      *(v7 + 16) = v9 + 1;
      sub_18B7B1AD4(&v14, (v7 + 32 * v9 + 32));
      v10 = sub_18BC20D88();

      [v1 setFilters_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18BC3E410;
    *(v11 + 56) = sub_18B7B0AC0(0, &qword_1EA9D40B8);
    *(v11 + 32) = a1;
    v12 = a1;
    v13 = sub_18BC20D88();

    [v1 setFilters_];
  }
}

id sub_18B7DEE8C()
{
  v1 = OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___barManager;
  v2 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___barManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___barManager);
  }

  else
  {
    v4 = _s10BarManagerCMa();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemHandlers;
    v7 = MEMORY[0x1E69E7CC0];
    *&v5[v6] = sub_18B7DEFAC(MEMORY[0x1E69E7CC0]);
    v8 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_itemLongPressMenus;
    *&v5[v8] = sub_18B7DEF98(v7);
    *&v5[OBJC_IVAR___SFTabOverviewDisplayItemBarManager_registrations] = v7;
    swift_unknownObjectUnownedInit();
    v13.receiver = v5;
    v13.super_class = v4;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

unint64_t sub_18B7DEFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71F8);
  v3 = sub_18BC21D88();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = sub_18B7C9044(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v10 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v11 = v3[7] + 24 * result;
    *v11 = v5;
    *(v11 + 8) = v6;
    *(v11 + 16) = v7 & 1;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    v15 = v5;
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v10 - 24);
    v5 = *(v10 - 2);
    v6 = *(v10 - 1);
    v7 = *v10;
    result = sub_18B7C9044(v4);
    v10 += 32;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18B7DF0CC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v4 = sub_18BC21D88();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  result = sub_18B7C9044(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v17 = v6;
    return v4;
  }

  v9 = (a1 + 56);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + result) = v5;
    *(v4[7] + 8 * result) = v6;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v4[2] = v12;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v13 = v9 + 2;
    v5 = *(v9 - 8);
    v14 = *v9;
    v15 = v6;
    result = sub_18B7C9044(v5);
    v9 = v13;
    v6 = v14;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18B7DF1C8(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18B7DF248()
{
  result = qword_1EA9D8BB0;
  if (!qword_1EA9D8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D8BB0);
  }

  return result;
}

uint64_t sub_18B7DF2DC(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = swift_unknownObjectUnownedLoadStrong();

  v11 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
  swift_beginAccess();
  sub_18B7DF5D0(v10 + v11, v8, _s7ContentVMa);

  sub_18B7DF6A0(v5);
  v12 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_registrations;
  swift_beginAccess();
  v13 = *(*(v1 + v12) + 16);
  if (v13)
  {
    v20 = sub_18BC1E3F8();
    v14 = (v20 + 40);
    do
    {
      v15 = *v14;
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 80);
      swift_unknownObjectRetain();
      v17(v5, v8, a1 & 1, ObjectType, v15);
      sub_18B7D565C(ObjectType, v15);
      swift_unknownObjectRelease();
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  sub_18B988BAC(v5, &qword_1EA9D52E0);
  return sub_18B7CC96C(v8, _s7ContentVMa);
}

uint64_t sub_18B7DF500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B7DF568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B7DF5D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B7DF638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B7DF6A0@<X0>(uint64_t a1@<X8>)
{
  v21[0] = a1;
  v1 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5;
  v7 = _s4PageVMa_0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9974();
  v13 = v12;

  v14 = qword_1EA9F7FE8;
  swift_beginAccess();
  sub_18B7CA054(v13 + v14, v6, &unk_1EA9DBE90);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_18B988BAC(v6, &unk_1EA9DBE90);
    v15 = _s4PageVMa();
    return (*(*(v15 - 8) + 56))(v21[0], 1, 1, v15);
  }

  else
  {
    sub_18B82FDBC(v6, v10, _s4PageVMa_0);
    v17 = swift_unknownObjectUnownedLoadStrong();
    v18 = swift_unknownObjectUnownedLoadStrong();

    v19 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
    swift_beginAccess();
    sub_18B7DF5D0(v18 + v19, v3, _s7ContentVMa);

    MEMORY[0x1EEE9AC00](v20);
    v21[-2] = v10;
    sub_18B8309C4(sub_18B9EB544, *(v3 + 1), _s4PageVMa, _s4PageVMa, _s4PageVMa, _s4PageVMa, v21[0]);
    sub_18B7CC96C(v3, _s7ContentVMa);
    return sub_18B7CC96C(v10, _s4PageVMa_0);
  }
}

uint64_t sub_18B7DFA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 68));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_18B7DFB0C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  v28[0] = *MEMORY[0x1E69DDCE0];
  v28[1] = v6;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = 0u;
  v35 = 0u;
  v36 = 1;
  swift_unknownObjectWeakInit();
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v40);

  sub_18B7DFD58(v40);
  v29 = (v40[58] & 1) == 0;
  v8 = *(v3 + OBJC_IVAR___SFTabOverviewDisplayItem_topBarBackgroundView);
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 32);
    v10 = *(v8 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 48);
    v11 = *(v8 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 16);
    v24 = *(v8 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group);
    v25 = v11;
    v26 = v9;
    v27 = v10;
    v21 = v11;
    v22 = v24;
    v19 = v10;
    v20 = v9;
    sub_18B9D5158(&v24, v23);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
  }

  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  sub_18B988BAC(&v24, &unk_1EA9D50A0);
  v31 = v21;
  v30 = v22;
  v33 = v19;
  v32 = v20;
  v12 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v23);

  sub_18B7DFD58(v23);
  v34 = v23[0];
  v13 = a1[81];
  v37 = v13;
  v38 = a1[82];
  if (!v8)
  {
    v13 = 0;
  }

  v39 = v13;
  v14 = *(v3 + OBJC_IVAR___SFTabOverviewDisplayItem_interactiveInsertionGroup);
  v15 = a1[116];
  sub_18B7DFE48(v28, a2 + 16);
  v16 = a1[113];
  v17 = a1[114];
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 160) = v16;
  *(a2 + 161) = v17;
  sub_18BC1E1A8();
  return sub_18B7CA0E4(v28);
}

uint64_t sub_18B7DFD10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 62))
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

uint64_t sub_18B7DFDAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_18B7DFDF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 62) = 1;
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

    *(result + 62) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18B7DFEA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B7DFF04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B7DFF64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B7DFFC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_18B7E0024()
{
  if (!qword_1EA9D6CE0)
  {
    _s4PageVMa_0();
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D6CE0);
    }
  }
}

void sub_18B7E007C()
{
  sub_18B7E0024();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_18B7E0268(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 96) = (a2 - 1);
  }

  return result;
}

unint64_t sub_18B7E0324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D71B0);
    v7 = sub_18BC21D88();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D71A8);
      result = sub_18B8629FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4PageVMa_0();
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4PageVMa_0);
      v16 = (v7[7] + (v13 << 6));
      v17 = *v8;
      v18 = *(v8 + 1);
      v19 = *(v8 + 3);
      v16[2] = *(v8 + 2);
      v16[3] = v19;
      *v16 = v17;
      v16[1] = v18;
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
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

uint64_t _s4ItemVMa_2()
{
  result = qword_1EA9D9430;
  if (!qword_1EA9D9430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_18B7E0570()
{
  result = qword_1EA9D6D00;
  if (!qword_1EA9D6D00)
  {
    _s4PageVMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6D00);
  }

  return result;
}

uint64_t sub_18B7E05C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18B7E0648(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7188);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7190);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7188);
      result = sub_18B8629FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4PageVMa_0();
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4PageVMa_0);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

unint64_t sub_18B7E082C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7178);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7180);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7178);
      result = sub_18B8629FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s4PageVMa_0();
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s4PageVMa_0);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

uint64_t sub_18B7E0A7C(char a1, uint64_t a2)
{
  v5 = qword_1EA9D6BA0;
  swift_beginAccess();
  v6 = sub_18B7E0DF0(v2 + v5, v64);
  v7 = *(v2 + qword_1EA9F7FF8 + 112);
  v71 = *(v2 + qword_1EA9F7FF8 + 96);
  v72 = v7;
  v73 = *(v2 + qword_1EA9F7FF8 + 128);
  v74 = *(v2 + qword_1EA9F7FF8 + 144);
  v8 = *(v2 + qword_1EA9F7FF8 + 48);
  v67 = *(v2 + qword_1EA9F7FF8 + 32);
  v68 = v8;
  v9 = *(v2 + qword_1EA9F7FF8 + 80);
  v69 = *(v2 + qword_1EA9F7FF8 + 64);
  v70 = v9;
  v10 = *(v2 + qword_1EA9F7FF8 + 16);
  v65 = *(v2 + qword_1EA9F7FF8);
  v66 = v10;
  v11 = sub_18B7C2E68(v6);
  [v11 adjustedContentInset];
  v62 = v13;
  v63 = v12;
  v60 = v15;
  v61 = v14;
  [v11 bounds];
  v58 = v17;
  v59 = v16;
  v56 = v19;
  v57 = v18;
  sub_18B7E0E4C();
  v54 = v21;
  v55 = v20;
  v23 = v22;
  v25 = v24;
  [v11 contentSize];
  v27 = v26;
  v29 = v28;
  [v11 frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [v11 isTracking];

  _s6LayoutCMa_2();
  v39 = swift_allocObject();
  v40 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_highlightedPeekingPage;
  v41 = _s4PageVMa_0();
  v42 = *(*(v41 - 8) + 56);
  v42(v39 + v40, 1, 1, v41);
  v42(v39 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_hoveredPeekingPage, 1, 1, v41);
  v43 = (v39 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionInfo);
  *v43 = 0u;
  v43[1] = 0u;
  v43[2] = 0u;
  v43[3] = 0u;
  v44 = OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_deck;
  type metadata accessor for Deck();
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 17) = *v75;
  *(v45 + 20) = *&v75[3];
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  *(v45 + 48) = 0xD000000000000017;
  *(v45 + 56) = 0x800000018BC60750;
  v46 = *(MEMORY[0x1E69DC5C0] + 16);
  *(v45 + 64) = *MEMORY[0x1E69DC5C0];
  *(v45 + 80) = v46;
  *(v39 + v44) = v45;
  *(v45 + 96) = xmmword_18BC46760;
  *(v39 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_itemTypes) = &unk_1EFF1A0C0;
  sub_18B7E0DF0(v64, v39 + 16);
  *(v39 + 184) = a1;
  *(v39 + 192) = a2;
  *(v39 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_interactiveInsertionStyle) = v64[161];
  v47 = v39 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics;
  v48 = v66;
  *v47 = v65;
  *(v47 + 16) = v48;
  v49 = v70;
  *(v47 + 64) = v69;
  *(v47 + 80) = v49;
  v50 = v68;
  *(v47 + 32) = v67;
  *(v47 + 48) = v50;
  *(v47 + 144) = v74;
  v51 = v73;
  *(v47 + 112) = v72;
  *(v47 + 128) = v51;
  *(v47 + 96) = v71;
  v52 = v39 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
  *v52 = v63;
  *(v52 + 8) = v62;
  *(v52 + 16) = v61;
  *(v52 + 24) = v60;
  *(v52 + 32) = v59;
  *(v52 + 40) = v58;
  *(v52 + 48) = v57;
  *(v52 + 56) = v56;
  *(v52 + 64) = v55;
  *(v52 + 72) = v54;
  *(v52 + 80) = v23;
  *(v52 + 88) = v25;
  *(v52 + 96) = v27;
  *(v52 + 104) = v29;
  *(v52 + 112) = v31;
  *(v52 + 120) = v33;
  *(v52 + 128) = v35;
  *(v52 + 136) = v37;
  *(v52 + 144) = v38;
  sub_18BC1E3F8();
  sub_18B7E0FE8();
  sub_18B7CC61C();
  sub_18B7D4D24(v64);
  return v39;
}

void sub_18B7E0E4C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1EA9DA758);
  swift_endAccess();
  if (v1)
  {
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_18B7B0AC0(0, &qword_1EA9D53D0);
    if (swift_dynamicCast())
    {
      [v2 UIEdgeInsetsValue];
    }
  }

  else
  {
    sub_18B7E0F80(v5);
  }
}

uint64_t sub_18B7E0F80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B7E0FE8()
{
  v1 = *(*(v0 + 192) + 16);
  v2 = sub_18B7E1178();
  v3 = v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
  Height = CGRectGetHeight(*(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 32));
  UIEdgeInsetsMakeWithEdges();
  UIEdgeInsetsAdd();
  v6 = MEMORY[0x1E69DDCE0];
  if (!*(v0 + 177))
  {
    v6 = v3;
  }

  v7 = *(v6 + 24);
  v8 = 0.0;
  if (*(v0 + 177) == 1)
  {
    v8 = *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 96);
  }

  if (!*(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_metrics + 56))
  {
    v7 = *(v6 + 8);
  }

  v9 = v5 - *(v6 + 8);
  v10 = v7 + v8;
  type metadata accessor for Deck();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = v1;
  *(v11 + 32) = v2;
  *(v11 + 40) = Height;
  *(v11 + 48) = 0xD000000000000017;
  *(v11 + 56) = 0x800000018BC60750;
  *(v11 + 64) = 0;
  *(v11 + 72) = v9;
  *(v11 + 80) = 0;
  *(v11 + 88) = v9;
  *(v11 + 96) = v10;
  *(v11 + 104) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_deck) = v11;
}

double sub_18B7E1178()
{
  v1 = v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState;
  Width = CGRectGetWidth(*(v0 + OBJC_IVAR____TtCC12MobileSafari19TabOverviewSwitcher6Layout_scrollViewState + 32));
  if (*(v0 + 177))
  {
    v3 = *(v1 + 8) + *(v1 + 24);
  }

  else
  {
    v3 = *(MEMORY[0x1E69DDCE0] + 8) + *(MEMORY[0x1E69DDCE0] + 24);
  }

  v4 = Width - v3;
  UIEdgeInsetsMakeWithEdges();
  UIEdgeInsetsAdd();
  return v4 - (v5 + v6);
}

id sub_18B7E1264()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18BC3E3E0;
  *(v2 + 32) = v0;
  sub_18B7B0AC0(0, &qword_1EA9D50B0);
  v3 = v0;
  v4 = sub_18BC20D88();

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_18B7CC878;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_18B7B0DB0;
  v8[3] = &block_descriptor_330_0;
  v6 = _Block_copy(v8);

  [v1 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v6);

  return v3;
}

void sub_18B7E13EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setNeedsLayout];
  }
}

id sub_18B7E1454()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_18B9EB158;
  v7[5] = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18B9D63E4;
  v7[3] = &block_descriptor_647;
  v2 = _Block_copy(v7);

  v3 = [v0 safari:v2 menuWithUncachedChildrenProvider:?];
  _Block_release(v2);
  v4 = v3;
  v5 = sub_18BC20B98();
  [v4 setAccessibilityIdentifier_];

  return v4;
}

uint64_t sub_18B7E158C(uint64_t a1)
{
  v2 = _s4PageVMa_0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_18BBA3BF0(&qword_1EA9D6D00, _s4PageVMa_0);
  result = MEMORY[0x18CFFC500](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_18BBA39C8(v12, v6, _s4PageVMa_0);
      sub_18BB5E5CC(v8, v6);
      sub_18BBA3A30(v8, _s4PageVMa_0);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_18B7E177C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_18B7CDFCC(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_18B7E17E4()
{
  v1 = v0 + qword_1EA9D6BA0;
  swift_beginAccess();
  if (*(v1 + 8) == 1)
  {
    v2 = sub_18B7CE8B0() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void *sub_18B7E189C(uint64_t (*a1)(void))
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  if (*(v1 + v2))
  {
    v3 = *(v1 + v2);
  }

  else
  {
    v4 = a1();
    type metadata accessor for ScrollAnimator();
    swift_allocObject();
    v3 = sub_18B7E195C(v4);

    *(v1 + v2) = v3;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v3;
}

void *sub_18B7E195C(void *a1)
{
  v1[2] = 0;
  v1[3] = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v1[4] = v3;
  type metadata accessor for Assertion();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = 0;
  v1[5] = v4;
  v1[6] = a1;
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18BC41E60;
  v7 = v1[3];
  *(v6 + 32) = v7;
  *(v6 + 40) = v3;
  sub_18B7DE904();
  v8 = a1;
  v9 = v7;
  v10 = v3;
  v11 = sub_18BC20D88();

  v12 = swift_allocObject();
  swift_weakInit();
  v15[4] = sub_18BA22F84;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_18B7B0DB0;
  v15[3] = &block_descriptor_12;
  v13 = _Block_copy(v15);

  [v5 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v13);

  return v1;
}

uint64_t sub_18B7E1B28()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_18B7E1B60(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v67 - v8;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = [Strong view];

  if (v11)
  {
    [v11 bounds];
    v74 = v13;
    v75 = v12;
    v72 = v15;
    v73 = v14;

    v71 = sub_18B7E2098();
    v17 = v16;
    v18 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v81);

    v19 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v83);

    sub_18B7DFD58(v83);
    if (v83[25])
    {
      sub_18B7C9974();
      v21 = v20;
      v22 = sub_18B7CEA3C();
      if (v22)
      {
        v23 = *&v22[OBJC_IVAR___SFTabOverview_searchState + 8] != 0;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v24 = swift_unknownObjectUnownedLoadStrong();
    v25 = *&v24[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics + 48];
    v78 = *&v24[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics + 32];
    v79 = v25;
    v80 = *&v24[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics + 64];
    v26 = *&v24[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics + 16];
    v76 = *&v24[OBJC_IVAR____TtC12MobileSafari11TabSwitcher_metrics];
    v77 = v26;

    v27 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v84);

    sub_18B7DFD58(v84);
    if (v84[25])
    {
      sub_18B7C9974();
      v29 = v28;
      v30 = sub_18B7CEA3C();
      if (v30)
      {
        v70 = *&v30[OBJC_IVAR___SFTabOverview_searchState + 8] != 0;
      }

      else
      {
        v70 = 0;
      }
    }

    else
    {
      v70 = 0;
    }

    v69 = sub_18B7CFAA0();
    v31 = swift_unknownObjectUnownedLoadStrong();
    v32 = [v31 view];

    if (v32)
    {
      v33 = v23;
      [v32 safeAreaInsets];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v42 = *(v2 + OBJC_IVAR___SFTabOverviewDisplayItem_state);
      v43 = *(v2 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 8);
      v44 = *(v2 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 9);
      v45 = *(v2 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 16);
      v67 = *(v2 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 24);
      v68 = v43;
      v46 = *(v2 + OBJC_IVAR___SFTabOverviewDisplayItem_state + 32);
      sub_18B7CFD08(v9);
      v47 = swift_unknownObjectUnownedLoadStrong();
      sub_18B7C9B24(v85);

      sub_18B7DFD58(v85);
      v48 = v9;
      if (v85[19])
      {
        v49 = swift_unknownObjectUnownedLoadStrong();
        v50 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
        swift_beginAccess();
        sub_18B7DF568(v49 + v50, v6, _s7ContentVMa);

        LOBYTE(v49) = v6[2];
        sub_18B7DFF04(v6, _s7ContentVMa);
        v51 = v49 ^ 1;
      }

      else
      {
        v51 = 0;
      }

      v52 = swift_unknownObjectUnownedLoadStrong();
      sub_18B7C9B24(v86);

      sub_18B7DFD58(v86);
      if (v86[25])
      {
        sub_18B7C9974();
        v54 = v53;
        v55 = sub_18B7CEA3C();
        if (v55)
        {
          v56 = *&v55[OBJC_IVAR___SFTabOverview_searchState + 8];

          if (v56)
          {
            v57 = 1;
LABEL_24:
            v58 = v74;
            *a1 = v75;
            *(a1 + 8) = v58;
            v59 = v72;
            *(a1 + 16) = v73;
            *(a1 + 24) = v59;
            *(a1 + 32) = 0;
            *(a1 + 40) = v71;
            *(a1 + 48) = v17;
            v60 = v81[1];
            *(a1 + 56) = v81[0];
            *(a1 + 72) = v60;
            *(a1 + 88) = v82[0];
            *(a1 + 102) = *(v82 + 14);
            *(a1 + 118) = v33;
            v61 = v77;
            *(a1 + 120) = v76;
            v62 = v78;
            v63 = v79;
            *(a1 + 184) = v80;
            *(a1 + 168) = v63;
            *(a1 + 152) = v62;
            *(a1 + 136) = v61;
            *(a1 + 200) = 0;
            v64 = v69;
            *(a1 + 208) = v70;
            *(a1 + 209) = (v64 & 1) == 0;
            *(a1 + 216) = v35;
            *(a1 + 224) = v37;
            *(a1 + 232) = v39;
            *(a1 + 240) = v41;
            *(a1 + 248) = v42;
            v65 = v67;
            *(a1 + 256) = v68;
            *(a1 + 257) = v44;
            *(a1 + 264) = v45;
            *(a1 + 272) = v65;
            *(a1 + 280) = v46;
            v66 = _s6LayoutVMa();
            sub_18B7CF39C(v48, a1 + v66[15], &qword_1EA9D52E0);
            *(a1 + v66[16]) = v51 & 1;
            *(a1 + v66[17]) = v57 & 1;
            *(a1 + v66[18]) = 0x403E000000000000;
            return;
          }
        }

        else
        {
        }
      }

      v57 = sub_18B7CFAA0();
      goto LABEL_24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_18B7E2098()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v34 - v3;
  v5 = _s4PageVMa_0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B7C9974();
  if (*(v9 + qword_1EA9F7FF0) == 1)
  {

    (*(v6 + 56))(v4, 1, 1, v5);
  }

  else
  {
    v10 = v9;
    v11 = sub_18B7CC308();
    v12 = sub_18B7C2E68(v11);
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    MidX = CGRectGetMidX(v35);
    v36.origin.x = v14;
    v36.origin.y = v16;
    v36.size.width = v18;
    v36.size.height = v20;
    MidY = CGRectGetMidY(v36);
    sub_18B7CECB4(v4, MidX, MidY);

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_18B81F940(v4, v8, _s4PageVMa_0);
      sub_18B86246C(v8);
      v34[0] = v32;
      sub_18B7DFF04(v8, _s4PageVMa_0);
      return *v34;
    }
  }

  sub_18B988BAC(v4, &unk_1EA9DBE90);
  v23 = *&v1[OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher];
  sub_18B7CC308();

  v24 = sub_18B7CD924();

  v25 = v1;
  v26 = sub_18B7E23B8(v24, v25);

  v28 = *(v26 + 16);
  if (v28)
  {
    v29 = (v26 + 32);
    v30 = 0uLL;
    do
    {
      v31 = *v29++;
      v30 = vbslq_s8(vcgeq_f64(v31, v30), v31, v30);
      --v28;
    }

    while (v28);
    v34[0] = v30;
  }

  else
  {
    *&v27 = 0;
    v34[0] = v27;
  }

  return *v34;
}

uint64_t sub_18B7E23B8(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v65 = _s4PageVMa_0();
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return result;
  }

  v56 = v2;
  v74 = MEMORY[0x1E69E7CC0];
  v64 = v4;
  sub_18B9B6764(0, v7, 0);
  v68 = v74;
  v67 = v64 + 56;
  result = sub_18BC21918();
  v9 = result;
  v10 = v64;
  v11 = 0;
  v61 = "quickTabSwitcherItem";
  v58 = *MEMORY[0x1E69DDCE0];
  v57 = *(MEMORY[0x1E69DDCE0] + 16);
  v60 = v64 + 64;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v10 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v67 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_40;
    }

    v66 = *(v10 + 36);
    sub_18B7DF568(*(v10 + 48) + *(v62 + 72) * v9, v6, _s4PageVMa_0);
    if (v6[*(v65 + 24)] != 1 || (Strong = swift_unknownObjectUnownedLoadStrong(), sub_18B7C9B24(v73), Strong, sub_18B7DFD58(v73), v15 = 1.0, v16 = 1.0, (v73[0] & 1) != 0))
    {
      v17 = &v6[*(v65 + 20)];
      if (!*(v17 + 4) || (v15 = 0.0, v16 = 0.0, (v17[50] & 1) == 0))
      {
        sub_18B7C9974();
        v19 = v18;
        v20 = sub_18B862854(v6, 0xD000000000000017, v61 | 0x8000000000000000);
        if (!v20)
        {

LABEL_18:
          v15 = 0.0;
          v16 = 0.0;
          goto LABEL_26;
        }

        v21 = v20;
        swift_getObjectType();
        if (!swift_conformsToProtocol2())
        {

          goto LABEL_18;
        }

        v22 = sub_18B82FEA0();

        [v22 adjustedContentInset];
        v24 = v23;
        v26 = v25;
        [v22 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;
        swift_beginAccess();
        v35 = objc_getAssociatedObject(v22, &unk_1EA9DA758);
        swift_endAccess();
        if (v35)
        {
          sub_18BC218B8();
          swift_unknownObjectRelease();
        }

        else
        {
          v71 = 0u;
          v70 = 0u;
        }

        v72[0] = v70;
        v72[1] = v71;
        if (*(&v71 + 1))
        {
          sub_18B7B0AC0(0, &qword_1EA9D53D0);
          if (swift_dynamicCast())
          {
            v36 = v69;
            [v69 UIEdgeInsetsValue];
            v59 = v37;
            v39 = v38;

LABEL_25:
            [v22 contentSize];
            v41 = v40;
            [v22 frame];
            [v22 isTracking];

            v75.origin.x = v28;
            v75.origin.y = v30;
            v75.size.width = v32;
            v75.size.height = v34;
            v42 = v26 + v41 - CGRectGetMaxY(v75);
            v76.origin.x = v28;
            v76.origin.y = v30;
            v76.size.width = v32;
            v76.size.height = v34;
            CGRectGetMaxX(v76);
            v15 = SFChromeVisibilityForScrollDistance(v42 - v39);
            v77.origin.x = v28;
            v77.origin.y = v30;
            v77.size.width = v32;
            v77.size.height = v34;
            CGRectGetMaxY(v77);
            v78.origin.x = v28;
            v78.origin.y = v30;
            v78.size.width = v32;
            v78.size.height = v34;
            CGRectGetMaxX(v78);
            v16 = SFChromeVisibilityForScrollDistance(v24 + v30 - v59);
            goto LABEL_26;
          }
        }

        else
        {
          sub_18B988BAC(v72, &qword_1EA9D5220);
        }

        v59 = v58;
        v39 = v57;
        goto LABEL_25;
      }
    }

LABEL_26:
    v43 = v7;
    v44 = v6;
    result = sub_18B7DFF04(v6, _s4PageVMa_0);
    v45 = v68;
    v74 = v68;
    v47 = *(v68 + 16);
    v46 = *(v68 + 24);
    if (v47 >= v46 >> 1)
    {
      result = sub_18B9B6764((v46 > 1), v47 + 1, 1);
      v45 = v74;
    }

    *(v45 + 16) = v47 + 1;
    v48 = v45 + 16 * v47;
    *(v48 + 32) = v15;
    *(v48 + 40) = v16;
    v10 = v64;
    v12 = 1 << *(v64 + 32);
    if (v9 >= v12)
    {
      goto LABEL_41;
    }

    v49 = *(v67 + 8 * v13);
    if ((v49 & (1 << v9)) == 0)
    {
      goto LABEL_42;
    }

    v68 = v45;
    if (v66 != *(v64 + 36))
    {
      goto LABEL_43;
    }

    v50 = v49 & (-2 << (v9 & 0x3F));
    if (v50)
    {
      v12 = __clz(__rbit64(v50)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v6 = v44;
      v7 = v43;
    }

    else
    {
      v51 = v13 << 6;
      v52 = v13 + 1;
      v53 = (v60 + 8 * v13);
      v6 = v44;
      v7 = v43;
      while (v52 < (v12 + 63) >> 6)
      {
        v55 = *v53++;
        v54 = v55;
        v51 += 64;
        ++v52;
        if (v55)
        {
          result = sub_18B7B4FF8(v9, v66, 0);
          v10 = v64;
          v12 = __clz(__rbit64(v54)) + v51;
          goto LABEL_4;
        }
      }

      result = sub_18B7B4FF8(v9, v66, 0);
      v10 = v64;
    }

LABEL_4:
    ++v11;
    v9 = v12;
    if (v11 == v7)
    {
      return v68;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_18B7E2A98()
{
  v1 = OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView;
  if (!*&v0[OBJC_IVAR___SFTabOverviewDisplayItem_capsuleView])
  {
    v2 = v0;
    v3 = sub_18B7E2DA4();
    v4 = *&v0[v1];
    *&v2[v1] = v3;
    v5 = v3;

    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v20);

    sub_18B7DFD58(v20);
    if (v20[1])
    {
      v7 = &OBJC_IVAR___SFTabOverviewDisplayItem_barBackgroundContainerView;
    }

    else
    {
      v7 = &OBJC_IVAR___SFTabOverviewDisplayItem_controlsContainerView;
    }

    [*&v2[*v7] addSubview_];
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_18B7E3C20;
    *(v10 + 24) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_18B9D53AC;
    *(v11 + 24) = v10;
    v19[4] = sub_18B9D53B0;
    v19[5] = v11;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_18B7E3BF4;
    v19[3] = &block_descriptor_597;
    v12 = _Block_copy(v19);
    v13 = v2;
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
      sub_18B7D2260();
      v14 = *&v5[qword_1ED651610];
      *&v5[qword_1ED651610] = *&v13[OBJC_IVAR___SFTabOverviewDisplayItem_scrollViewLinker];
      swift_retain_n();
      sub_18B7E475C(v14);

      v15 = [objc_allocWithZone(MEMORY[0x1E69DD6C0]) initWithEdge_];
      sub_18B7C9974();
      v17 = v16;
      v18 = *&v16[qword_1EA9D6BC8];

      [v15 _setCollectorInteraction_];
      [v5 addInteraction_];
    }
  }
}

_BYTE *sub_18B7E2DA4()
{
  v1 = v0;
  type metadata accessor for ScrollingCapsuleCollectionView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [objc_opt_self() isSolariumEnabled];
  v4 = 1;
  if ((v3 & 1) == 0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_18B7C9B24(v34);

    sub_18B7DFD58(v34);
    if (v34[16])
    {
      v4 = v34[0];
    }

    else
    {
      v4 = 0;
    }
  }

  v6 = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v35);

  sub_18B7DFD58(v35);
  v7 = *(v1 + OBJC_IVAR___SFTabOverviewDisplayItem_interactiveInsertionGroup);
  LOBYTE(v28) = (v4 & 1) == 0;
  *(&v28 + 1) = 0;
  BYTE3(v28) = v35[2];
  BYTE4(v28) = v4 & (v3 ^ 1);
  *(&v28 + 5) = BYTE4(v28);
  BYTE7(v28) = v3;
  *(&v28 + 1) = v7;
  v29 = v28;
  v8 = &v2[qword_1ED6515F0];
  v9 = v2[qword_1ED6515F0 + 16];
  v30 = *&v2[qword_1ED6515F0];
  v31 = v9;
  v10 = *&v2[qword_1ED6515F0];
  v33 = v2[qword_1ED6515F0 + 16];
  v32 = v10;
  v11 = v28;
  v8[16] = v28;
  *v8 = v11;
  sub_18BC1E1A8();
  sub_18B9EAF44(&v30, v27);
  sub_18B9EAF44(&v28, v27);
  sub_18B9EAFA0(&v32);
  v12 = 256;
  if (!BYTE1(v30))
  {
    v12 = 0;
  }

  v13 = v12 | v30;
  v14 = 0x10000;
  if (!BYTE2(v30))
  {
    v14 = 0;
  }

  v15 = 0x1000000;
  if (!BYTE3(v30))
  {
    v15 = 0;
  }

  v16 = v13 | v14 | v15;
  v17 = 0x100000000;
  if (!BYTE4(v30))
  {
    v17 = 0;
  }

  v18 = 0x10000000000;
  if (!BYTE5(v30))
  {
    v18 = 0;
  }

  v19 = 0x1000000000000;
  if (!BYTE6(v30))
  {
    v19 = 0;
  }

  v20 = v17 | v18;
  v21 = 0x100000000000000;
  if (!BYTE7(v30))
  {
    v21 = 0;
  }

  sub_18BA421F0(v16 | v20 | v19 | v21, *(&v30 + 1), v31);
  sub_18B9EAFA0(&v30);
  sub_18B9EAFA0(&v28);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = &v2[qword_1ED6515F8];
  *v25 = sub_18B9EB52C;
  v25[1] = v22;
  v25[2] = sub_18B9EAFF4;
  v25[3] = v23;
  v25[4] = sub_18B9EAFFC;
  v25[5] = v24;

  return v2;
}

uint64_t type metadata accessor for ScrollingCapsuleCollectionView()
{
  result = qword_1ED6516D8;
  if (!qword_1ED6516D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B7E31E0()
{
  sub_18BC1EC08();
  if (v0 <= 0x3F)
  {
    sub_18B7E97CC();
    if (v1 <= 0x3F)
    {
      sub_18B7E96A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_18B7E32A4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR___SFCapsuleTabGroupView_configuration];
  *v9 = 0;
  v9[8] = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *&v4[OBJC_IVAR___SFCapsuleTabGroupView____lazy_storage___constraintsForDisclosureIndicatorWithoutImage] = 0;
  *&v4[OBJC_IVAR___SFCapsuleTabGroupView____lazy_storage___defaultConstraints] = 0;
  v10 = OBJC_IVAR___SFCapsuleTabGroupView_disclosureIndicator;
  v11 = sub_18BC20B98();
  v12 = [objc_opt_self() systemImageNamed_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  *&v4[v10] = v13;
  v14 = OBJC_IVAR___SFCapsuleTabGroupView_imageView;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  v15 = OBJC_IVAR___SFCapsuleTabGroupView_stackView;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v16 = OBJC_IVAR___SFCapsuleTabGroupView_titleLabel;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v4[OBJC_IVAR___SFCapsuleTabGroupView_isSelected] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for CapsuleTabGroupView();
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  sub_18B7D08D4();

  return v17;
}

id sub_18B7E3454()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___SFCapsuleTabGroupView_configuration];
  [*&v0[OBJC_IVAR___SFCapsuleTabGroupView_disclosureIndicator] setHidden_];
  v3 = *&v0[OBJC_IVAR___SFCapsuleTabGroupView_imageView];
  if (*v2)
  {
    v4 = *v2;
    v5 = COERCE_DOUBLE(sub_18BC21598()) + -1.0;
    if (v6)
    {
      v5 = -1.0;
    }

    v7 = [v4 imageWithBaselineOffsetFromBottom_];
  }

  else
  {
    v7 = 0;
  }

  [v3 setImage_];

  [v3 setHidden_];
  v8 = *&v1[OBJC_IVAR___SFCapsuleTabGroupView_titleLabel];
  if (*(v2 + 3))
  {
    sub_18BC1E3F8();
    v9 = sub_18BC20B98();
  }

  else
  {
    v9 = 0;
  }

  [v8 setText_];

  return [v1 setNeedsUpdateConstraints];
}

uint64_t sub_18B7E3600(uint64_t a1)
{
  v2 = sub_18B7C2E68(a1);
  [v2 setClipsToBounds_];

  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  [*(v1 + v4) setDelegate_];
  [v1 addSubview_];
  v5 = *(v1 + *((*v3 & *v1) + 0xA0));
  v6 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_18BC0DED8;
  *(v7 + 24) = v6;
  swift_beginAccess();
  v8 = *(v5 + 16);
  sub_18BC1E1A8();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_18B7C358C(0, v8[2] + 1, 1, v8);
    *(v5 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_18B7C358C((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_18B7FCC48;
  v12[5] = v7;
  *(v5 + 16) = v8;
  swift_endAccess();
}

uint64_t sub_18B7E37D8()
{

  return swift_deallocObject();
}

uint64_t sub_18B7E3810()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B7E3850(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_18B7D1914(a1, v17);
  v7 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D6AD8);
  v9 = swift_allocObject();
  sub_18BC1E3F8();
  v10 = sub_18B7E3A6C(v17, sub_18B80D678, v8, v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  swift_beginAccess();
  v10[8] = sub_18BA48210;
  v10[9] = v12;
  sub_18BC1E3F8();

  v13 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x98);
  swift_beginAccess();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a4 + v13);
  *(a4 + v13) = 0x8000000000000000;
  sub_18B7D1D4C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a4 + v13) = v16;
  swift_endAccess();
}

void *sub_18B7E3A6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = &type metadata for ScrollingCapsuleCollectionView.ItemViewRegistration;
  v15 = sub_18B7E3B5C();
  *&v13 = swift_allocObject();
  sub_18B7D194C(a1, v13 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  a4[4] = sub_18B7D1984(MEMORY[0x1E69E7CC0]);
  v9 = sub_18B7D1B68(v8);
  a4[5] = CGRectMake;
  a4[6] = 0;
  a4[7] = v9;
  v10 = sub_18B7D1B68(v8);
  a4[8] = CGRectMake;
  a4[9] = 0;
  v11 = MEMORY[0x1E69E7CD0];
  a4[10] = v10;
  a4[11] = v11;
  a4[17] = sub_18B7D1984(v8);
  a4[2] = a2;
  a4[3] = a3;
  sub_18B7C3FA4(&v13, (a4 + 12));
  return a4;
}

unint64_t sub_18B7E3B5C()
{
  result = qword_1EA9D6AE0;
  if (!qword_1EA9D6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6AE0);
  }

  return result;
}

id sub_18B7E3C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD268]) init];
  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18BC3E3E0;
  *(v7 + 32) = v5;
  sub_18B7B0AC0(0, &qword_1EA9D50B0);
  v8 = v5;
  v9 = sub_18BC20D88();

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = a2;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_18B7B0DB0;
  v13[3] = a3;
  v11 = _Block_copy(v13);

  [v6 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v11);

  return v8;
}

char *sub_18B7E3DCC(unsigned int a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v92 - v7;
  v153 = *(v2 + qword_1ED6515F0);
  v154 = *(v2 + qword_1ED6515F0 + 16);
  v9 = (v2 + qword_1ED651600);
  swift_beginAccess();
  v10 = v9[5];
  v159 = v9[4];
  v160 = v10;
  v161 = v9[6];
  v11 = v9[1];
  v155 = *v9;
  v156 = v11;
  v12 = v9[3];
  v157 = v9[2];
  v158 = v12;
  sub_18B9EAF44(&v153, &v118);
  v13 = sub_18B7C34FC();
  [v13 adjustedContentInset];
  v107 = v14;
  v108 = v15;
  v109 = v16;
  v110 = v17;
  [v13 bounds];
  v111 = v18;
  v104 = v19;
  v105 = v20;
  v106 = v21;
  sub_18B7E0E4C();
  v23 = v22;
  v25 = v24;
  v100 = v26;
  v103 = v27;
  [v13 contentSize];
  v29 = v28;
  v31 = v30;
  [v13 frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = [v13 isTracking];

  v98 = v3;
  v41 = sub_18BA4255C();
  v99 = _s6LayoutCMa_0();
  v42 = objc_allocWithZone(v99);
  *&v42[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_contentOffsetForCollapsing] = 0;
  v43 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_highlightedItem;
  v44 = _s4ItemVMa_0();
  (*(*(v44 - 8) + 56))(&v42[v43], 1, 1, v44);
  v45 = &v42[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_interactiveInsertionInfo];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = &v42[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_recenterOnItemHandler];
  *v46 = CGRectMake;
  *(v46 + 1) = 0;
  v47 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_titleWidthCacheObserverToken;
  v48 = sub_18BC1EC08();
  v49 = *(v48 - 8);
  v96 = *(v49 + 56);
  v97 = v48;
  v95 = v49 + 56;
  v96(&v42[v47], 1, 1);
  v50 = &v42[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_configuration];
  v51 = v153;
  v50[16] = v154;
  *v50 = v51;
  v52 = &v42[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_content];
  v53 = a1 & 1;
  *v52 = a1 & 1;
  v54 = (a1 >> 8) & 1;
  v52[1] = v54;
  *(v52 + 1) = a2;
  v55 = &v42[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_metrics];
  v56 = v160;
  *(v55 + 4) = v159;
  *(v55 + 5) = v56;
  *(v55 + 6) = v161;
  v57 = v156;
  *v55 = v155;
  *(v55 + 1) = v57;
  v58 = v158;
  *(v55 + 2) = v157;
  *(v55 + 3) = v58;
  v59 = &v42[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_scrollViewState];
  *&v58 = v108;
  *v59 = v107;
  *(v59 + 1) = v58;
  *&v58 = v110;
  *(v59 + 2) = v109;
  *(v59 + 3) = v58;
  v60 = v104;
  v61 = v105;
  *(v59 + 4) = v111;
  *(v59 + 5) = v60;
  *&v58 = v106;
  *(v59 + 6) = v61;
  *(v59 + 7) = v58;
  v101 = v29;
  v102 = v23;
  *(v59 + 8) = v23;
  *(v59 + 9) = v25;
  v62 = v25;
  v63 = v100;
  *(v59 + 10) = v100;
  *(v59 + 11) = v103;
  *(v59 + 12) = v29;
  v64 = v31;
  *(v59 + 13) = v31;
  *(v59 + 14) = v33;
  v65 = v33;
  v66 = v35;
  *(v59 + 15) = v35;
  *(v59 + 16) = v37;
  v67 = v37;
  v68 = v39;
  *(v59 + 17) = v39;
  v59[144] = v40;
  *&v42[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_titleWidthCache] = v41;
  if (BYTE1(v153) == 1)
  {
    LOBYTE(v116) = v154;
    v115 = v153;
    v118 = v153;
    v119 = v116;
    v120 = v53;
    v121 = v54;
    v122 = a2;
    v123 = 0;
    v128 = v159;
    v129 = v160;
    v130 = v161;
    v124 = v155;
    v125 = v156;
    v126 = v157;
    v127 = v158;
    v131 = v107;
    v132 = v108;
    v133 = v109;
    v134 = v110;
    v69 = v104;
    v135 = v111;
    v136 = v104;
    v137 = v105;
    v138 = v106;
    v139 = v102;
    v140 = v62;
    v93 = v65;
    v94 = v62;
    v141 = v63;
    v70 = v103;
    v142 = v103;
    v143 = v101;
    v144 = v64;
    v145 = v65;
    v146 = v66;
    v147 = v67;
    v148 = v68;
    v149 = v40;
    v150 = v41;
    v151 = MEMORY[0x1E69E7CC0];
    v152 = MEMORY[0x1E69E7CC0];
    sub_18B9EAF44(&v153, v113);
    sub_18BC1E3F8();
    sub_18BC1E1A8();
    sub_18B9EAF44(&v153, v113);
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    v71 = sub_18BA85B0C();
    sub_18B988BAC(&v152, &qword_1EA9D6A68);
    v72 = &v42[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation];
    v72[3] = &_s19VariableWidthLayoutVN;
    v72[4] = &off_1EFF26DB8;
    v73 = swift_allocObject();
    *v72 = v73;
    *(v73 + 32) = v116;
    *(v73 + 16) = v115;
    *(v73 + 40) = v53;
    *(v73 + 41) = v54;
    *(v73 + 48) = a2;
    *(v73 + 56) = 0;
    v74 = v156;
    *(v73 + 64) = v155;
    *(v73 + 80) = v74;
    v75 = v161;
    *(v73 + 144) = v160;
    *(v73 + 160) = v75;
    v76 = v159;
    *(v73 + 112) = v158;
    *(v73 + 128) = v76;
    *(v73 + 96) = v157;
    *&v74 = v108;
    *(v73 + 176) = v107;
    *(v73 + 184) = v74;
    *&v74 = v110;
    *(v73 + 192) = v109;
    *(v73 + 200) = v74;
    *(v73 + 208) = v111;
    *(v73 + 216) = v69;
    *&v74 = v106;
    *(v73 + 224) = v105;
    *(v73 + 232) = v74;
    *&v74 = v94;
    *(v73 + 240) = v102;
    *(v73 + 248) = v74;
    *&v74 = v101;
    *(v73 + 256) = v100;
    *(v73 + 264) = v70;
    *(v73 + 272) = v74;
    *(v73 + 280) = v64;
    *(v73 + 288) = v93;
    *(v73 + 296) = v66;
    *(v73 + 304) = v67;
    *(v73 + 312) = v68;
    *(v73 + 320) = v40;
    *(v73 + 328) = v41;
    *(v73 + 336) = v71;
    v114.receiver = v42;
    v114.super_class = v99;
    v77 = objc_msgSendSuper2(&v114, sel_init);
    v78 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v79 = v77;
    sub_18BC1E1A8();
    sub_18BC1DE28();
    v80 = swift_allocObject();
    *(v80 + 16) = sub_18BA481F8;
    *(v80 + 24) = v78;
    swift_beginAccess();
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = v41[4];
    v41[4] = 0x8000000000000000;
    sub_18BAA731C(sub_18B7D1E94, v80, v8, isUniquelyReferenced_nonNull_native);
    v41[4] = v112;
    swift_endAccess();

    sub_18B9EAFA0(&v153);

    (v96)(v8, 0, 1, v97);
    v82 = OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_titleWidthCacheObserverToken;
    swift_beginAccess();
    sub_18B7FD070(v8, &v79[v82], &unk_1EA9D3AE0);
    swift_endAccess();
  }

  else
  {
    v118 = v153;
    LOBYTE(v119) = v154;
    v83 = &v42[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_implementation];
    v83[3] = &_s16FixedWidthLayoutVN;
    v83[4] = &off_1EFF2E498;
    v84 = swift_allocObject();
    *v83 = v84;
    *(v84 + 32) = v119;
    *(v84 + 16) = v118;
    *(v84 + 40) = v53;
    *(v84 + 41) = v54;
    *(v84 + 48) = a2;
    *(v84 + 56) = 0;
    v85 = v156;
    *(v84 + 64) = v155;
    *(v84 + 80) = v85;
    v86 = v161;
    *(v84 + 144) = v160;
    *(v84 + 160) = v86;
    v87 = v159;
    *(v84 + 112) = v158;
    *(v84 + 128) = v87;
    *(v84 + 96) = v157;
    *&v85 = v108;
    *(v84 + 176) = v107;
    *(v84 + 184) = v85;
    *&v85 = v110;
    *(v84 + 192) = v109;
    *(v84 + 200) = v85;
    *&v87 = v104;
    v88 = v105;
    *(v84 + 208) = v111;
    *(v84 + 216) = v87;
    *&v85 = v106;
    *(v84 + 224) = v88;
    *(v84 + 232) = v85;
    *&v85 = v103;
    *(v84 + 240) = v102;
    *(v84 + 248) = v62;
    *(v84 + 256) = v63;
    *(v84 + 264) = v85;
    *(v84 + 272) = v101;
    *(v84 + 280) = v64;
    *(v84 + 288) = v65;
    *(v84 + 296) = v66;
    *(v84 + 304) = v67;
    *(v84 + 312) = v39;
    *(v84 + 320) = v40;
    sub_18BC1E3F8();
    sub_18B9EAF44(&v153, v113);
    v117.receiver = v42;
    v117.super_class = v99;
    sub_18BC1E3F8();
    v79 = objc_msgSendSuper2(&v117, sel_init);
  }

  v89 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v90 = &v79[OBJC_IVAR___SFScrollingCapsuleCollectionViewLayout_recenterOnItemHandler];
  *v90 = sub_18BA481A0;
  v90[1] = v89;

  return v79;
}

uint64_t sub_18B7E4654()
{

  return swift_deallocObject();
}

uint64_t sub_18B7E468C()
{

  return swift_deallocObject();
}

uint64_t sub_18B7E46CC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B7E4704()
{

  return swift_deallocObject();
}

uint64_t sub_18B7E475C(uint64_t a1)
{
  if (a1)
  {
    sub_18BA59BEC(v1, a1);
  }

  v2 = qword_1ED651610;
  v3 = *(v1 + qword_1ED651610);
  if (v3)
  {
    sub_18BC1E1A8();
    sub_18B7D2A5C(v1, v3);
  }

  sub_18B7D2DB4()[2] = *(v1 + v2);
  sub_18BC1E1A8();
}

id sub_18B7E47F0()
{
  type metadata accessor for BlurrableButton();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setMaximumContentSizeCategory_];
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_18B9EB464;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_18B9D63E4;
  v7[3] = &block_descriptor_481;
  v3 = _Block_copy(v7);
  v4 = v0;

  v5 = [v1 safari:v3 menuWithUncachedChildrenProvider:?];
  _Block_release(v3);
  [v4 setMenu_];

  [v4 setShowsMenuAsPrimaryAction_];
  return v4;
}

void sub_18B7E49B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_18B7D4320(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_18B7C9044(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_18BB2AAD8();
        v11 = v13;
      }

      sub_18BB5C364(v9, v11);
      *v3 = v11;
    }
  }
}

unint64_t sub_18B7E4A88(uint64_t a1, int a2, uint64_t (*a3)(char *))
{
  v81 = a3;
  v75 = a2;
  v5 = _s7ContentVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v73 - v8;
  v85 = _s4PageVMa_0();
  v90 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v73 - v12;
  v86 = _s4PageVMa();
  v14 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E7CC0];
  v93 = MEMORY[0x1E69E7CC0];
  v18 = *(a1 + 16);
  v87 = v3;
  v19 = swift_beginAccess();
  if (!v18)
  {
    v77 = v17;
    goto LABEL_51;
  }

  v20 = 0;
  v76 = v16 + 8;
  v83 = a1 + 32;
  v82 = (v90 + 48);
  v78 = (v14 + 48);
  v74 = (v14 + 56);
  v77 = MEMORY[0x1E69E7CC0];
  v84 = v18;
  do
  {
    v21 = v20;
    while (1)
    {
      if (v21 >= v18)
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        v72 = v19;
        v62 = sub_18BC219A8();
        v19 = v72;
        if (!v62)
        {
          goto LABEL_77;
        }

LABEL_54:
        v63 = 0;
        v64 = v19 & 0xC000000000000001;
        v65 = v19 & 0xFFFFFFFFFFFFFF8;
        v66 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v64)
          {
            v19 = MEMORY[0x18CFFD010](v63, v19);
          }

          else
          {
            if (v63 >= *(v65 + 16))
            {
              goto LABEL_75;
            }

            v19 = *(v19 + 8 * v63 + 32);
          }

          v67 = v19;
          v68 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            goto LABEL_74;
          }

          if (v66 >> 62)
          {
            if (sub_18BC219A8())
            {
LABEL_61:
              v69 = [objc_opt_self() flexibleSpaceItem];
              MEMORY[0x18CFFC270]();
              if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v90 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_18BC20DD8();
              }

              sub_18BC20E18();
            }
          }

          else if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v70 = v67;
          MEMORY[0x18CFFC270]();
          if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_18BC20DD8();
          }

          sub_18BC20E18();

          v66 = v92;
          ++v63;
          v19 = v77;
          if (v68 == v62)
          {
            goto LABEL_78;
          }
        }
      }

      if (__OFADD__(v21, 1))
      {
        goto LABEL_73;
      }

      v89 = v21 + 1;
      v23 = *(v83 + v21);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v25 = swift_unknownObjectUnownedLoadStrong();
      sub_18B7C9974();
      v27 = v26;

      v28 = qword_1EA9F7FE8;
      swift_beginAccess();
      sub_18B7CA054(v27 + v28, v9, &unk_1EA9DBE90);

      v29 = (*v82)(v9, 1, v85);
      v90 = Strong;
      if (v29 == 1)
      {
        sub_18B988BAC(v9, &unk_1EA9DBE90);
        (*v74)(v13, 1, 1, v86);
        goto LABEL_31;
      }

      v88 = v23;
      v30 = v13;
      v31 = v80;
      sub_18B82FDBC(v9, v80, _s4PageVMa_0);
      v32 = swift_unknownObjectUnownedLoadStrong();
      v33 = swift_unknownObjectUnownedLoadStrong();

      v34 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_resolvedContent;
      swift_beginAccess();
      v35 = v79;
      sub_18B7DF5D0(v33 + v34, v79, _s7ContentVMa);

      MEMORY[0x1EEE9AC00](v36);
      *(&v73 - 2) = v31;
      sub_18B8309C4(v81, *(v35 + 8), _s4PageVMa, _s4PageVMa, _s4PageVMa, _s4PageVMa, v30);
      sub_18B7CC96C(v35, _s7ContentVMa);
      v37 = v31;
      v13 = v30;
      sub_18B7CC96C(v37, _s4PageVMa_0);
      if ((*v78)(v30, 1, v86) == 1)
      {
        v23 = v88;
LABEL_31:
        sub_18B988BAC(v13, &qword_1EA9D52E0);
LABEL_32:
        v17 = MEMORY[0x1E69E7CC0];
        v61 = v90;
LABEL_39:

        goto LABEL_40;
      }

      sub_18B82FDBC(v30, v16, _s4PageVMa);
      v23 = v88;
      if (v88 > 9)
      {
        break;
      }

      if (v88 - 4 < 2)
      {
        v38 = swift_unknownObjectUnownedLoadStrong();
        v39 = swift_unknownObjectUnownedLoadStrong();
        sub_18B7C9B24(v94);

        sub_18B7DFD58(v94);
        if (v94[25])
        {
          v41 = v38;
        }

        else
        {
          sub_18B7C9974();
          v41 = v40;
          v42 = sub_18B7CEA3C();
          if (v42)
          {
            v43 = v42;
            v44 = *&v42[OBJC_IVAR___SFTabOverview_searchState + 8];

            if (v44)
            {

              v45 = v90;
              goto LABEL_26;
            }

            v23 = v88;
          }

          else
          {
          }
        }

        v61 = v90;

        sub_18B7CC96C(v16, _s4PageVMa);
        goto LABEL_38;
      }

      if (v88 != 3)
      {
LABEL_48:
        sub_18B7CC96C(v16, _s4PageVMa);
        goto LABEL_32;
      }

      v45 = v90;
      if (v16[2])
      {
        v49 = *&v76[*(v86 + 72)];
        v50 = v49;
        sub_18B7CC96C(v16, _s4PageVMa);
        if (v49)
        {

          v23 = 3;
          v61 = v50;
LABEL_38:
          v17 = MEMORY[0x1E69E7CC0];
          goto LABEL_39;
        }

        goto LABEL_27;
      }

LABEL_26:
      sub_18B7CC96C(v16, _s4PageVMa);
LABEL_27:

LABEL_6:
      ++v21;
      v18 = v84;
      if (v89 == v84)
      {
        v17 = MEMORY[0x1E69E7CC0];
        goto LABEL_51;
      }
    }

    if (v88 == 10)
    {
      v22 = [objc_opt_self() isSolariumEnabled];
      goto LABEL_5;
    }

    if (v88 == 12)
    {
      v22 = v16[2];
LABEL_5:
      sub_18B7CC96C(v16, _s4PageVMa);

      if (v22)
      {
        goto LABEL_33;
      }

      goto LABEL_6;
    }

    if (v88 != 13)
    {
      goto LABEL_48;
    }

    v46 = v90;
    v47 = swift_unknownObjectUnownedLoadStrong();
    sub_18B7CC96C(v16, _s4PageVMa);
    v48 = v47[OBJC_IVAR___SFTabOverviewDisplayItem_showsSidebarToggle];

    if ((v48 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_33:
    v17 = MEMORY[0x1E69E7CC0];
LABEL_40:
    v51 = *(v87 + 24);
    if (*(v51 + 16) && (v52 = sub_18B7C9044(v23), (v53 & 1) != 0))
    {
      v54 = *(*(v51 + 56) + 8 * v52);
    }

    else
    {
      v55 = v87;
      v56 = swift_unknownObjectUnownedLoadStrong();
      v57 = v23;
      v58 = sub_18B7D4530(v23);

      swift_beginAccess();
      v59 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = *(v55 + 24);
      *(v55 + 24) = 0x8000000000000000;
      sub_18B7D4320(v59, v57, isUniquelyReferenced_nonNull_native);
      *(v55 + 24) = v91;
      v54 = swift_endAccess();
    }

    MEMORY[0x18CFFC270](v54);
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18BC20DD8();
    }

    v19 = sub_18BC20E18();
    v77 = v93;
    v18 = v84;
    v20 = v89;
  }

  while (v89 != v84);
LABEL_51:
  if ((v75 & 1) == 0)
  {
    return v77;
  }

  v92 = v17;
  v19 = v77;
  if (v77 >> 62)
  {
    goto LABEL_76;
  }

  v62 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v62)
  {
    goto LABEL_54;
  }

LABEL_77:
  v66 = MEMORY[0x1E69E7CC0];
LABEL_78:

  return v66;
}

void sub_18B7E5608(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    [a1 setMenu_];
    [a1 setPreferredMenuElementOrder_];
    v7 = a1;
    v8 = 0;
LABEL_10:

    [v7 setPrimaryAction_];
    return;
  }

  v11 = [a1 customView];
  if (!v11)
  {
LABEL_9:
    v7 = a1;
    v8 = a2;
    goto LABEL_10;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

    goto LABEL_9;
  }

  [v10 addAction:a2 forControlEvents:0x2000];
}

uint64_t sub_18B7E5738(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_18B7E5834(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_18B7D4BB4();
  result = MEMORY[0x18CFFC500](v2, &_s17BarItemIdentifierON, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_18B7D4C08(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_18B7E58A8()
{
  v1 = _s6LayoutVMa();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v26 - v5);
  v7 = OBJC_IVAR___SFTabOverviewDisplayItem_navigationBar;
  v8 = *(v0 + OBJC_IVAR___SFTabOverviewDisplayItem_navigationBar);
  if (v8)
  {
    v9 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
    swift_beginAccess();
    sub_18B7DF568(v0 + v9, v6, _s6LayoutVMa);
    v10 = v6[27];
    v11 = objc_opt_self();
    v12 = v8;
    v13 = [v11 isSolariumEnabled];
    v14 = 0.0;
    if (v13 && *(v6 + 112))
    {
      v14 = 24.0;
    }

    if (v10 <= v14)
    {
      v10 = v14;
    }

    Width = CGRectGetWidth(*v6);
    v16 = v6[21];
    sub_18B7DFF04(v6, _s6LayoutVMa);
    [v12 ss:0.0 setUntransformedFrame:{v10, Width, v16}];

    v17 = *(v0 + v7);
    if (v17)
    {
      v18 = OBJC_IVAR___SFTabOverviewDisplayItem_layout;
      swift_beginAccess();
      sub_18B7DF568(v0 + v18, v3, _s6LayoutVMa);
      if (*(v3 + 75) == 1 && (v3[26] & 1) == 0)
      {
        v27 = xmmword_18BC3DD80;
        v26 = xmmword_18BC42C40;
        v21 = v17;
        tx = 0.0;
        ty = 0.0;
      }

      else
      {
        v19 = v3[27];
        v20 = objc_opt_self();
        v21 = v17;
        v22 = [v20 isSolariumEnabled];
        v23 = 0.0;
        if (v22 && *(v3 + 112))
        {
          v23 = 24.0;
        }

        if (v19 > v23)
        {
          v23 = v19;
        }

        CGAffineTransformMakeTranslation(&v28, 0.0, -v23 - v3[21]);
        v26 = *&v28.a;
        v27 = *&v28.c;
        tx = v28.tx;
        ty = v28.ty;
      }

      sub_18B7DFF04(v3, _s6LayoutVMa);
      *&v28.a = v26;
      *&v28.c = v27;
      v28.tx = tx;
      v28.ty = ty;
      [v21 setTransform_];
    }
  }
}

void sub_18B7E5B7C(double a1)
{
  v2 = sub_18B7DE654();
  [v2 setValue_];

  sub_18B7DE9B8();
}

void sub_18B7E5BC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v73 = &v71 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5350);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v71 - v5;
  v7 = *&v0[OBJC_IVAR___SFTabOverviewDisplayItem_navigationItem];
  if (v7)
  {
    v8 = v7;
    if (sub_18B7E9D94() == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = *&v0[OBJC_IVAR___SFTabOverviewDisplayItem_searchController];
    }

    [v8 setSearchController_];
  }

  v10 = sub_18B7DEE8C();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v12 = OBJC_IVAR____TtC12MobileSafari11TabSwitcher_currentTransaction;
  swift_beginAccess();
  sub_18B7CA054(Strong + v12, v6, &unk_1EA9D5350);

  v13 = _s11TransactionVMa();
  if ((*(*(v13 - 8) + 48))(v6, 1, v13) == 1)
  {
    sub_18B988BAC(v6, &unk_1EA9D5350);
    v77 = 0u;
    v78 = 0u;
    v79 = 0;
  }

  else
  {
    sub_18B7CA054(v6, &v77, &unk_1EA9D5060);
    sub_18B7DFF04(v6, _s11TransactionVMa);
    if (*(&v78 + 1))
    {
      v14 = 1;
      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_11:
  sub_18B988BAC(&v77, &unk_1EA9D5060);
  sub_18B7DF2DC(v14);

  v15 = OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___barManager;
  v16 = *&v1[OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___barManager];
  v17 = &unk_1EA9D8000;
  v18 = OBJC_IVAR___SFTabOverviewDisplayItemBarManager_registrations;
  swift_beginAccess();
  v19 = *&v16[v18];
  v20 = *(v19 + 16);
  v21 = v16;
  sub_18BC1E3F8();
  if (v20)
  {
    v22 = 0;
    v23 = (v19 + 40);
    do
    {
      v14 = *v23;
      ObjectType = swift_getObjectType();
      if ((*(v14 + 72))(0, ObjectType, v14))
      {
        if (*((*(v14 + 24))(ObjectType, v14) + 16))
        {
          sub_18B7C9044(0);
          if (v25)
          {

            goto LABEL_20;
          }
        }
      }

      ++v22;
      v23 += 2;
    }

    while (v20 != v22);
    v22 = v20;
LABEL_20:
    v17 = &unk_1EA9D8000;
  }

  else
  {
    v22 = 0;
  }

  v26 = *(v19 + 16);
  if (v22 != v26)
  {
    if (v22 >= v26)
    {
      __break(1u);
      goto LABEL_50;
    }

    v76 = *(v19 + 32 + 16 * v22);
    sub_18B7D6450(&v76, 0, v74);
    v14 = v74[0];
    if (v74[0])
    {

      if (([v14 isEnabled] & 1) == 0)
      {
        if (qword_1EA9D22A8 == -1)
        {
          goto LABEL_28;
        }

        goto LABEL_51;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    return;
  }

  while (1)
  {
    v43 = *&v1[v15];
    v44 = v17[373];
    swift_beginAccess();
    v45 = *&v43[v44];
    v14 = *(v45 + 16);
    v46 = v43;
    sub_18BC1E3F8();
    if (v14)
    {
      v17 = 0;
      v47 = (v45 + 40);
      while (1)
      {
        v48 = *v47;
        v49 = swift_getObjectType();
        v50 = (*(v48 + 64))(0, v49, v48);

        if (v50)
        {
          break;
        }

        v17 = (v17 + 1);
        v47 += 2;
        if (v14 == v17)
        {
          goto LABEL_38;
        }
      }

      v14 = v17;
    }

LABEL_38:
    v51 = *(v45 + 16);
    if (v14 == v51)
    {

      return;
    }

    if (v14 < v51)
    {
      break;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
LABEL_28:
    v27 = sub_18BC1F2C8();
    __swift_project_value_buffer(v27, qword_1EA9F7EB0);
    v28 = v1;
    v29 = sub_18BC1F2A8();
    v30 = sub_18BC21258();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v76 = v72;
      *v31 = 136446210;
      sub_18B7C9974();
      v33 = v32;
      v34 = *&v28[OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher];
      v35 = qword_1EA9F7FE8;
      swift_beginAccess();
      v36 = v73;
      sub_18B7CA054(v34 + v35, v73, &unk_1EA9DBE90);
      v37 = sub_18B7D6598(v36);
      v39 = v38;

      sub_18B988BAC(v36, &unk_1EA9DBE90);
      v40 = sub_18B7EA850(v37, v39, &v76);

      *(v31 + 4) = v40;
      _os_log_impl(&dword_18B7AC000, v29, v30, "Adding tab is disabled on page %{public}s", v31, 0xCu);
      v41 = v72;
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x18CFFEEE0](v41, -1, -1);
      v42 = v31;
      v17 = &unk_1EA9D8000;
      MEMORY[0x18CFFEEE0](v42, -1, -1);
    }

LABEL_31:
  }

  v52 = *(v45 + 32 + 16 * v14 + 8);
  v53 = swift_getObjectType();
  v54 = (*(v52 + 64))(0, v53, v52);
  if (!v54)
  {
    goto LABEL_53;
  }

  v55 = v54;

  if (([v55 isEnabled] & 1) == 0)
  {
    if (qword_1EA9D22A8 != -1)
    {
      swift_once();
    }

    v56 = sub_18BC1F2C8();
    __swift_project_value_buffer(v56, qword_1EA9F7EB0);
    v57 = v1;
    v58 = sub_18BC1F2A8();
    v59 = sub_18BC21258();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v75 = v61;
      *v60 = 136446210;
      sub_18B7C9974();
      v63 = v62;
      v64 = *&v57[OBJC_IVAR___SFTabOverviewDisplayItem____lazy_storage___tabOverviewSwitcher];
      v65 = qword_1EA9F7FE8;
      swift_beginAccess();
      v66 = v73;
      sub_18B7CA054(v64 + v65, v73, &unk_1EA9DBE90);
      v67 = sub_18B7D6598(v66);
      v69 = v68;

      sub_18B988BAC(v66, &unk_1EA9DBE90);
      v70 = sub_18B7EA850(v67, v69, &v75);

      *(v60 + 4) = v70;
      _os_log_impl(&dword_18B7AC000, v58, v59, "Adding tab is disabled on page %{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x18CFFEEE0](v61, -1, -1);
      MEMORY[0x18CFFEEE0](v60, -1, -1);
    }
  }
}

uint64_t sub_18B7E6410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7CD0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = _s14ScrollPositionOMa();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}