uint64_t sub_1660(uint64_t *a1)
{
  v1 = *a1;
  sub_684C(&qword_709A8, type metadata accessor for GlyphVariantsViewModel);

  return sub_58C50();
}

uint64_t sub_1700(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1750()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for GlyphVariantsViewModel();
  v4 = sub_684C(&qword_709A8, type metadata accessor for GlyphVariantsViewModel);

  return ObservedObject.projectedValue.getter(v1, v2, v3, v4);
}

uint64_t sub_17E0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  return v1;
}

uint64_t sub_1828()
{
  sub_187C(&qword_709B0, &qword_5AB10);
  sub_59620();
  return v1;
}

uint64_t sub_187C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_18D4@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_58EC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v21[-v10];
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v15 = swift_allocObject();
  v16 = *(v2 + 16);
  v15[1] = *v2;
  v15[2] = v16;
  v17 = *(v2 + 48);
  v15[3] = *(v2 + 32);
  v15[4] = v17;

  sub_1E48(v2, v21);
  sub_187C(&qword_709B8, &qword_5AB18);
  sub_1E80();
  sub_3CC80(1, v12, v13, v14, 0, 8, sub_1E40, v15, v22);
  sub_58EB0();
  (*(v5 + 16))(v9, v11, v4);
  sub_684C(&qword_70A30, &type metadata accessor for OpacityTransition);
  v18 = sub_58C10();
  (*(v5 + 8))(v11, v4);
  v19 = v22[3];
  *(a1 + 32) = v22[2];
  *(a1 + 48) = v19;
  *(a1 + 64) = v22[4];
  result = v22[1];
  *a1 = v22[0];
  *(a1 + 16) = result;
  *(a1 + 80) = v18;
  return result;
}

uint64_t sub_1B04(uint64_t a1)
{
  v2 = sub_187C(&qword_70CD0, &qword_5AEC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v27 - v4;
  v6 = sub_187C(&qword_709D0, &qword_5AB20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = *(a1 + 8);
  v11 = *(sub_18E6C() + 16);

  if (v11)
  {
    sub_21F8(v9);
    sub_6610(v9, v5, &qword_709D0, &qword_5AB20);
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70A10, &qword_5AB40);
    sub_2094(&qword_709C8, &qword_709D0, &qword_5AB20, sub_1FAC);
    sub_2094(&qword_70A08, &qword_70A10, &qword_5AB40, sub_2118);
    sub_59100();
    return sub_6678(v9, &qword_709D0, &qword_5AB20);
  }

  else
  {
    v31._object = 0x80000000000666D0;
    v31._countAndFlagsBits = 0xD000000000000021;
    v28 = sub_2B8E0(v31, 0xD000000000000034, 0x8000000000066700);
    v29 = v13;
    sub_66D8();
    v14 = sub_59310();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    nullsub_1();
    v21 = sub_59210();
    v22 = *sub_2BA00();
    sub_58B90();
    LOBYTE(v28) = v18 & 1;
    v30 = 0;
    *v5 = v14;
    *(v5 + 1) = v16;
    v5[16] = v18 & 1;
    *(v5 + 3) = v20;
    v5[32] = v21;
    *(v5 + 5) = v23;
    *(v5 + 6) = v24;
    *(v5 + 7) = v25;
    *(v5 + 8) = v26;
    v5[72] = 0;
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70A10, &qword_5AB40);
    sub_2094(&qword_709C8, &qword_709D0, &qword_5AB20, sub_1FAC);
    sub_2094(&qword_70A08, &qword_70A10, &qword_5AB40, sub_2118);
    return sub_59100();
  }
}

unint64_t sub_1E80()
{
  result = qword_709C0;
  if (!qword_709C0)
  {
    sub_1F64(&qword_709B8, &qword_5AB18);
    sub_2094(&qword_709C8, &qword_709D0, &qword_5AB20, sub_1FAC);
    sub_2094(&qword_70A08, &qword_70A10, &qword_5AB40, sub_2118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_709C0);
  }

  return result;
}

uint64_t sub_1F64(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1FDC()
{
  result = qword_709E8;
  if (!qword_709E8)
  {
    sub_1F64(&qword_709F0, &qword_5AB30);
    sub_6ED0(&qword_709F8, &qword_70A00, &qword_5AB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_709E8);
  }

  return result;
}

uint64_t sub_2094(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1F64(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2118()
{
  result = qword_70A18;
  if (!qword_70A18)
  {
    sub_1F64(&qword_70A20, &unk_5AB48);
    sub_21A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A18);
  }

  return result;
}

unint64_t sub_21A4()
{
  result = qword_70A28;
  if (!qword_70A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A28);
  }

  return result;
}

uint64_t sub_21F8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_59160();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v42[2] = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_59760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_59770();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = *sub_2BE28();
  (*(v5 + 104))(v8, enum case for GridItem.Size.fixed(_:), v4);
  sub_59780();
  v14 = sub_59A40();
  *(v14 + 16) = 9;
  v15 = v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v16 = *(v10 + 16);
  v16(v15, v13, v9);
  v17 = *(v10 + 72);
  v16(v15 + v17, v13, v9);
  v16(v15 + 2 * v17, v13, v9);
  v16(v15 + 3 * v17, v13, v9);
  v16(v15 + 4 * v17, v13, v9);
  v16(v15 + 5 * v17, v13, v9);
  v16(v15 + 6 * v17, v13, v9);
  v16(v15 + 7 * v17, v13, v9);
  (*(v10 + 32))(v15 + 8 * v17, v13, v9);
  v44 = v42[1];
  sub_58FD0();
  v45 = 0;
  sub_684C(&qword_70CE0, &type metadata accessor for PinnedScrollableViews);
  sub_59F70();
  sub_187C(&qword_70CE8, &qword_5AEC8);
  sub_6894();
  v18 = v43;
  sub_59830();
  v19 = sub_59210();
  v20 = *sub_2B9C0();
  sub_58B90();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v18 + *(sub_187C(&qword_709E0, &qword_5AB28) + 36);
  *v29 = v19;
  *(v29 + 8) = v22;
  *(v29 + 16) = v24;
  *(v29 + 24) = v26;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  v30 = *sub_2BA14();
  v31 = sub_59200();
  sub_58B90();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  result = sub_187C(&qword_709D0, &qword_5AB20);
  v41 = v18 + *(result + 36);
  *v41 = v31;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_2684@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  type metadata accessor for GlyphVariantsViewModel();
  sub_684C(&qword_709A8, type metadata accessor for GlyphVariantsViewModel);
  v10 = sub_58C50();
  v12 = v11;
  sub_187C(&qword_709B0, &qword_5AB10);
  result = sub_59620();
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = v14;
  *(a5 + 50) = v15;
  *(a5 + 56) = v16;
  return result;
}

double sub_278C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *&result = sub_18D4(a1).n128_u64[0];
  return result;
}

uint64_t sub_27C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v3 = sub_591A0();
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = *(v95 + 64);
  __chkstk_darwin(v3);
  v93 = (&v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_187C(&qword_70CA0, &qword_5AE78);
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  __chkstk_darwin(v6);
  v86 = &v82 - v8;
  v90 = sub_187C(&qword_70A48, &qword_5AB68);
  v9 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v89 = &v82 - v10;
  v11 = sub_187C(&qword_70A38, &qword_5AB58);
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  __chkstk_darwin(v11);
  v97 = &v82 - v13;
  v98 = v1;
  v14 = *v1;
  v15 = *(v1 + 16);
  v16 = *(v15 + 16);
  if (v16)
  {
    *&v105 = &_swiftEmptyArrayStorage;
    v17 = v14;
    sub_5BA4(0, v16, 0);
    v18 = v105;
    v19 = (v15 + 32);
    v20 = *(v105 + 16);
    do
    {
      v22 = *v19++;
      v21 = v22;
      *&v105 = v18;
      v23 = v18[3];
      if (v20 >= v23 >> 1)
      {
        sub_5BA4((v23 > 1), v20 + 1, 1);
        v18 = v105;
      }

      v18[2] = v20 + 1;
      *(v18 + v20++ + 16) = v21;
      --v16;
    }

    while (v16);
    v2 = v98;
  }

  else
  {
    v24 = v14;
    v18 = &_swiftEmptyArrayStorage;
  }

  v25 = sub_2BE28();
  v26 = *v25;
  v85 = sub_2BA14();
  v27 = v26 - (*v85 + *v85);
  sub_2AA58(v18);
  v29 = v28;

  v30 = *(v2 + 3);
  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_13;
  }

  v82 = v25;
  v83 = v14;
  v32 = sub_52E4(v31, 0);
  v84 = sub_60FC(&v105, v32 + 16, v31, v30);

  sub_61FC();
  if (v84 != v31)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  *&v105 = v32;
  sub_51AC(&v105);
  v2 = v98;
  v25 = v82;
  v14 = v83;
  if (!*(v105 + 16))
  {

LABEL_13:
    v33 = *(v2 + 4);
    goto LABEL_14;
  }

  v33 = *(v105 + 32);

LABEL_14:
  v34 = fmin(v29, 1.0);
  v35 = sub_4964C();
  v36 = nullsub_1(v14, v33, v35, v34);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = *v85;
  v44 = sub_59200();
  sub_58B90();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v112 = 0;
  v53 = *v25;
  sub_597D0();
  sub_58BF0();
  *(v113 + 7) = *(&v113[3] + 8);
  *(&v113[1] + 7) = *(&v113[4] + 8);
  *(&v113[2] + 7) = *(&v113[5] + 8);
  v54 = sub_59170();
  v105 = v2[2];
  sub_187C(&qword_70C88, &unk_5AE60);
  sub_59630();
  if ((v103[0] & 1) != 0 || (v105 = v98[3], sub_59630(), LOBYTE(v103[0]) == 1))
  {
    v55 = sub_2A0AC();
  }

  else
  {
    if (*sub_3A234() != 1)
    {
      v56 = sub_59530();
      goto LABEL_18;
    }

    v55 = sub_2A188();
  }

  v56 = *v55;

LABEL_18:
  v57 = v98;
  v58 = sub_59200();
  *&v105 = v36;
  WORD4(v105) = v38;
  *&v106 = v40;
  *(&v106 + 1) = v42;
  LOBYTE(v107) = v44;
  *(&v107 + 1) = v46;
  *&v108 = v48;
  *(&v108 + 1) = v50;
  *&v109[0] = v52;
  BYTE8(v109[0]) = 0;
  *(v109 + 9) = v113[0];
  *(&v109[1] + 9) = v113[1];
  *(&v109[2] + 9) = v113[2];
  *(&v109[3] + 1) = *(&v113[2] + 15);
  LODWORD(v110) = v54;
  *(&v110 + 1) = v56;
  v111 = v58;
  v59 = *sub_3A234();
  sub_187C(&qword_70A58, &qword_5AB70);
  sub_34B8();
  if (v59)
  {
    v60 = 2;
  }

  else
  {
    v60 = 3;
  }

  v61 = v86;
  sub_29CA0(v60);
  v103[7] = v109[3];
  v103[8] = v110;
  v103[3] = v108;
  v103[4] = v109[0];
  v104 = v111;
  v103[5] = v109[1];
  v103[6] = v109[2];
  v103[0] = v105;
  v103[1] = v106;
  v103[2] = v107;
  sub_6678(v103, &qword_70A58, &qword_5AB70);
  v62 = swift_allocObject();
  v63 = v57[1];
  *(v62 + 1) = *v57;
  *(v62 + 2) = v63;
  v64 = v57[3];
  *(v62 + 3) = v57[2];
  *(v62 + 4) = v64;
  v65 = v89;
  (*(v87 + 32))(v89, v61, v88);
  v66 = v90;
  v67 = (v65 + *(v90 + 36));
  *v67 = sub_620C;
  v67[1] = v62;
  v68 = swift_allocObject();
  v69 = v57[1];
  v68[1] = *v57;
  v68[2] = v69;
  v70 = v57[3];
  v68[3] = v57[2];
  v68[4] = v70;
  sub_62B8(v57, &v100);
  sub_62B8(v57, &v100);
  v71 = sub_33F0();
  sub_593D0();

  sub_62F0(v65);
  v99 = v57[3];
  sub_187C(&qword_70C88, &unk_5AE60);
  sub_59650();
  v89 = v101;
  LODWORD(v98) = v102;
  v72 = swift_allocObject();
  v73 = v57[1];
  *(v72 + 16) = *v57;
  *(v72 + 32) = v73;
  v74 = v57[3];
  *(v72 + 48) = v57[2];
  *(v72 + 64) = v74;
  *(v72 + 80) = v34;
  sub_62B8(v57, &v100);
  v75 = sub_59660();
  v76 = v93;
  *v93 = v75;
  v78 = v95;
  v77 = v96;
  (*(v95 + 104))(v76, enum case for PopoverAttachmentAnchor.rect(_:), v96);
  sub_59220();
  sub_187C(&qword_70A40, &qword_5AB60);
  v100 = v66;
  v101 = v71;
  swift_getOpaqueTypeConformance2();
  sub_38A0();
  v79 = v92;
  v80 = v97;
  sub_59380();

  (*(v78 + 8))(v76, v77);
  return (*(v91 + 8))(v80, v79);
}

uint64_t sub_3054@<X0>(_WORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_589A0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 8);
  LOWORD(a1) = *a1;
  v13 = *a2;
  sub_1DEC4();
  sub_1C43C(v11, v13, v12, a1, a3);
  LOBYTE(v11) = sub_3220(a1, *(a2 + 24));
  v28 = *(a2 + 48);
  sub_187C(&qword_70C88, &unk_5AE60);
  sub_59650();
  v14 = v25;
  v15 = v26;
  v16 = v27;
  v17 = type metadata accessor for PopoverGlyphVariantView();
  *(a3 + v17[5]) = a1;
  *(a3 + v17[6]) = v11 & 1;
  *(a3 + v17[7]) = a4;
  v18 = a3 + v17[8];
  *v18 = v14;
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  v19 = a3 + v17[9];
  LOBYTE(v28) = 0;
  sub_59620();
  v20 = v26;
  *v19 = v25;
  *(v19 + 8) = v20;
  v21 = (a3 + v17[10]);
  type metadata accessor for TypographyPanelViewModel();
  sub_684C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);
  result = sub_58D50();
  *v21 = result;
  v21[1] = v23;
  return result;
}

BOOL sub_3220(unsigned __int16 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  v5 = sub_59EB0();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 2 * v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_32CC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_58368(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_3360(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_58368(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_33F0()
{
  result = qword_70A50;
  if (!qword_70A50)
  {
    sub_1F64(&qword_70A48, &qword_5AB68);
    sub_1F64(&qword_70A58, &qword_5AB70);
    sub_34B8();
    swift_getOpaqueTypeConformance2();
    sub_384C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A50);
  }

  return result;
}

unint64_t sub_34B8()
{
  result = qword_70A60;
  if (!qword_70A60)
  {
    sub_1F64(&qword_70A58, &qword_5AB70);
    sub_3570();
    sub_6ED0(&qword_70AD0, &qword_70AD8, &qword_5ABA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A60);
  }

  return result;
}

unint64_t sub_3570()
{
  result = qword_70A68;
  if (!qword_70A68)
  {
    sub_1F64(&qword_70A70, &qword_5AB78);
    sub_3628();
    sub_6ED0(&qword_70AC0, &qword_70AC8, &qword_5ABA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A68);
  }

  return result;
}

unint64_t sub_3628()
{
  result = qword_70A78;
  if (!qword_70A78)
  {
    sub_1F64(&qword_70A80, &qword_5AB80);
    sub_36E0();
    sub_6ED0(&qword_70AB0, &qword_70AB8, &qword_5AB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A78);
  }

  return result;
}

unint64_t sub_36E0()
{
  result = qword_70A88;
  if (!qword_70A88)
  {
    sub_1F64(&qword_70A90, &qword_5AB88);
    sub_376C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A88);
  }

  return result;
}

unint64_t sub_376C()
{
  result = qword_70A98;
  if (!qword_70A98)
  {
    sub_1F64(&qword_70AA0, &qword_5AB90);
    sub_37F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70A98);
  }

  return result;
}

unint64_t sub_37F8()
{
  result = qword_70AA8;
  if (!qword_70AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70AA8);
  }

  return result;
}

unint64_t sub_384C()
{
  result = qword_70AE0;
  if (!qword_70AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70AE0);
  }

  return result;
}

unint64_t sub_38A0()
{
  result = qword_70AE8;
  if (!qword_70AE8)
  {
    sub_1F64(&qword_70A40, &qword_5AB60);
    sub_6ED0(&qword_70AF0, &qword_70AF8, qword_5ABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70AE8);
  }

  return result;
}

__n128 sub_3974(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_3988(uint64_t a1, int a2)
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

uint64_t sub_39D0(uint64_t result, int a2, int a3)
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

unint64_t sub_3A34()
{
  result = qword_70B00;
  if (!qword_70B00)
  {
    sub_1F64(&qword_70B08, &qword_5AC78);
    sub_6ED0(&qword_70B10, &qword_70B18, &qword_5AC80);
    sub_6ED0(&qword_70B20, &qword_70B28, &qword_5AC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70B00);
  }

  return result;
}

uint64_t sub_3B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FontGlyphVariant();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_3C00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FontGlyphVariant();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for PopoverGlyphVariantView()
{
  result = qword_722E0;
  if (!qword_722E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3D08()
{
  type metadata accessor for FontGlyphVariant();
  if (v0 <= 0x3F)
  {
    sub_6D04(319, &qword_70B88, &type metadata for Bool, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_6D04(319, &qword_70B90, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_3E18();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_3E18()
{
  if (!qword_70B98)
  {
    type metadata accessor for TypographyPanelViewModel();
    sub_684C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);
    v0 = sub_58D60();
    if (!v1)
    {
      atomic_store(v0, &qword_70B98);
    }
  }
}

uint64_t sub_3EAC(uint64_t *a1, int a2)
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

uint64_t sub_3EF4(uint64_t result, int a2, int a3)
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

uint64_t sub_3F94@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_27C8(a1);
}

uint64_t sub_3FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v22 = sub_59130();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PopoverGlyphVariantView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_187C(&qword_70BE8, &qword_5ADA8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_47B8(v2, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_4820(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v24 = v2;
  sub_187C(&qword_70BF0, &qword_5ADB0);
  sub_4C1C();
  sub_59670();
  sub_59120();
  sub_6ED0(&qword_70C60, &qword_70BE8, &qword_5ADA8);
  sub_684C(&qword_70C68, &type metadata accessor for BorderlessButtonStyle);
  v18 = v22;
  v17 = v23;
  sub_59350();
  (*(v3 + 8))(v6, v18);
  (*(v11 + 8))(v14, v10);
  v19 = (v17 + *(sub_187C(&qword_70C70, &qword_5ADE8) + 36));
  v20 = v19 + *(sub_187C(&qword_70C78, &qword_5ADF0) + 28);
  sub_58D10();
  result = swift_getKeyPath();
  *v19 = result;
  return result;
}

uint64_t sub_4348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for PopoverGlyphVariantView();
  v54 = *(v3 - 1);
  v4 = *(v54 + 64);
  __chkstk_darwin(v3);
  v56 = v5;
  v57 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_187C(&qword_70C80, &qword_5AE28);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v55);
  v9 = &v49[-v8];
  v10 = type metadata accessor for FontGlyphVariant();
  v11 = *(a1 + v3[7]);
  v12 = *(a1 + v3[5]);
  v13 = *(a1 + *(v10 + 20));
  v14 = sub_4964C();
  v53 = nullsub_1(v13, v12, v14, v11);
  v52 = v15;
  v17 = v16;
  v51 = v18;
  v19 = *sub_2BA14();
  v50 = sub_59200();
  sub_58B90();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v61) = 0;
  v28 = *sub_2BE28();
  sub_597D0();
  sub_58BF0();
  *(v68 + 7) = *(&v68[3] + 8);
  *(&v68[1] + 7) = *(&v68[4] + 8);
  *(&v68[2] + 7) = *(&v68[5] + 8);
  v29 = *(a1 + v3[6]);
  if (v29 == 1)
  {
    v30 = sub_2A024();
  }

  else
  {
    v30 = sub_29EDC();
  }

  v31 = *v30;

  KeyPath = swift_getKeyPath();
  if (v29)
  {
    v33 = sub_59520();
  }

  else
  {
    v33 = *sub_29F90();
  }

  v34 = sub_59200();
  v35 = a1 + v3[9];
  v36 = *v35;
  v37 = *(v35 + 8);
  LOBYTE(v61) = v36;
  *(&v61 + 1) = v37;
  sub_187C(&qword_70C88, &unk_5AE60);
  sub_59630();
  if (LOBYTE(v59[0]) == 1)
  {
    v38 = *sub_2A0AC();
  }

  else
  {
    v38 = sub_59530();
  }

  v39 = sub_59200();
  *&v61 = v53;
  WORD4(v61) = v52;
  *&v62 = v17;
  *(&v62 + 1) = v51;
  LOBYTE(v63) = v50;
  *(&v63 + 1) = v21;
  *&v64 = v23;
  *(&v64 + 1) = v25;
  *&v65[0] = v27;
  BYTE8(v65[0]) = 0;
  *(v65 + 9) = v68[0];
  *(&v65[1] + 9) = v68[1];
  *(&v65[2] + 9) = v68[2];
  *(&v65[3] + 1) = *(&v68[2] + 15);
  *&v66 = KeyPath;
  *(&v66 + 1) = v31;
  *&v67[0] = v33;
  BYTE8(v67[0]) = v34;
  *&v67[1] = v38;
  WORD4(v67[1]) = v39;
  v40 = *sub_3A234();
  sub_187C(&qword_70C00, &qword_5ADB8);
  sub_4CE4();
  if (v40)
  {
    v41 = 1;
  }

  else
  {
    v41 = 2;
  }

  sub_29CA0(v41);
  v59[8] = v66;
  v60[0] = v67[0];
  *(v60 + 10) = *(v67 + 10);
  v59[4] = v65[0];
  v59[5] = v65[1];
  v59[6] = v65[2];
  v59[7] = v65[3];
  v59[0] = v61;
  v59[1] = v62;
  v59[2] = v63;
  v59[3] = v64;
  sub_6678(v59, &qword_70C00, &qword_5ADB8);
  v42 = a1;
  v43 = v57;
  sub_47B8(v42, v57);
  v44 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v45 = swift_allocObject();
  sub_4820(v43, v45 + v44);
  v46 = v58;
  (*(v6 + 32))(v58, v9, v55);
  result = sub_187C(&qword_70BF0, &qword_5ADB0);
  v48 = (v46 + *(result + 36));
  *v48 = sub_6054;
  v48[1] = v45;
  return result;
}

uint64_t sub_47B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverGlyphVariantView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverGlyphVariantView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4884()
{
  v1 = type metadata accessor for PopoverGlyphVariantView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = type metadata accessor for FontGlyphVariant();
  v4 = *(v2 + *(v3 + 20));
  v5 = *(v2 + *(v3 + 24));
  v6 = sub_2A934();
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = v7;
  v9 = *(v2 + v1[5]);
  v34 = v6;
  v10 = sub_598B0();
  v11 = CTGlyphInfoCreateWithGlyph(v9, v4, v10);

  if (!v11)
  {

LABEL_20:
    v29 = (v2 + v1[8]);
    v35 = *v29;
    v36 = v29[1];
    v37 = *(v29 + 16);
    sub_187C(&qword_70C90, &qword_5DDD0);
    return sub_596F0();
  }

  v12 = (v2 + v1[10]);
  v13 = *v12;
  if (*v12)
  {
    v14 = OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_rangeDescriptorsLookupTable;
    swift_beginAccess();
    v15 = *(v13 + v14);

    v16 = sub_52384();
    if (*(v15 + 16))
    {
      v18 = sub_500C(v16, v17);
      v20 = v19;

      if (v20)
      {
        v21 = *(*(v15 + 56) + 8 * v18);

        v22 = *(v21 + 16);
        if (v22)
        {
          v33 = v13;
          sub_5BC4(0, v22, 0);
          v23 = *(&_swiftEmptyArrayStorage + 2);
          v24 = 40;
          do
          {
            v25 = *(v21 + v24);
            v26 = *(&_swiftEmptyArrayStorage + 3);
            if (v23 >= v26 >> 1)
            {
              v32 = *(v21 + v24);
              sub_5BC4((v26 > 1), v23 + 1, 1);
              v25 = v32;
            }

            *(&_swiftEmptyArrayStorage + 2) = v23 + 1;
            *(&_swiftEmptyArrayStorage + v23 + 2) = v25;
            v24 += 32;
            ++v23;
            --v22;
          }

          while (v22);

          v13 = v33;
        }

        else
        {
        }

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v27 = *(v13 + 24);
          ObjectType = swift_getObjectType();
          (*(v27 + 16))(v11, v34, v8, &_swiftEmptyArrayStorage, nullsub_1, 0, ObjectType, v27);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }

    goto LABEL_20;
  }

  v31 = v12[1];
  type metadata accessor for TypographyPanelViewModel();
  sub_684C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);
  result = sub_58D40();
  __break(1u);
  return result;
}

unint64_t sub_4C1C()
{
  result = qword_70BF8;
  if (!qword_70BF8)
  {
    sub_1F64(&qword_70BF0, &qword_5ADB0);
    sub_1F64(&qword_70C00, &qword_5ADB8);
    sub_4CE4();
    swift_getOpaqueTypeConformance2();
    sub_384C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70BF8);
  }

  return result;
}

unint64_t sub_4CE4()
{
  result = qword_70C08;
  if (!qword_70C08)
  {
    sub_1F64(&qword_70C00, &qword_5ADB8);
    sub_4D9C();
    sub_6ED0(&qword_70AD0, &qword_70AD8, &qword_5ABA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70C08);
  }

  return result;
}

unint64_t sub_4D9C()
{
  result = qword_70C10;
  if (!qword_70C10)
  {
    sub_1F64(&qword_70C18, &qword_5ADC0);
    sub_4E54();
    sub_6ED0(&qword_70C50, &qword_70C58, &qword_5ADE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70C10);
  }

  return result;
}

unint64_t sub_4E54()
{
  result = qword_70C20;
  if (!qword_70C20)
  {
    sub_1F64(&qword_70C28, &qword_5ADC8);
    sub_4F0C();
    sub_6ED0(&qword_70AC0, &qword_70AC8, &qword_5ABA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70C20);
  }

  return result;
}

unint64_t sub_4F0C()
{
  result = qword_70C30;
  if (!qword_70C30)
  {
    sub_1F64(&qword_70C38, &qword_5ADD0);
    sub_36E0();
    sub_6ED0(&qword_70C40, &qword_70C48, &qword_5ADD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70C30);
  }

  return result;
}

unint64_t sub_4FC4(unsigned __int16 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_59EB0();

  return sub_5084(a1, v4);
}

unint64_t sub_500C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_59ED0();
  sub_59920();
  v6 = sub_59F10();

  return sub_50F4(a1, a2, v6);
}

unint64_t sub_5084(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_50F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_59E80())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

Swift::Int sub_51AC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_65FC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_59E50(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[2 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          *(v13 + 1) = v14;
          *v13 = v11;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_59A40();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_5360(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_52E4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_187C(&qword_70CC0, &unk_5AEB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

uint64_t sub_5360(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_5A8C(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_58B0((*a3 + 2 * *v77), (*a3 + 2 * *v79), (*a3 + 2 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 2 * v7);
      v11 = *(*a3 + 2 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 2 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 2 * v17);
            *(v20 + 2 * v17) = *(v20 + 2 * v16);
            *(v20 + 2 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_5AA0(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_5AA0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = (v8 + 4);
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        sub_58B0((*a3 + 2 * *v70), (*a3 + 2 * *v72), (*a3 + 2 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 2 * v7 - 2;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 2 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= v27)
    {
LABEL_29:
      ++v7;
      v22 += 2;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = v27;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_58B0(unsigned __int16 *__dst, unsigned __int16 *__src, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst;
  v10 = a3 - __src;
  v11 = a3 - __src;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 2 * v9);
    }

    v12 = &v4[v9];
    if (v8 < 2)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v13 = *v6;
      if (v13 < *v4)
      {
        break;
      }

      LOWORD(v13) = *v4;
      v14 = v7 == v4++;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      ++v7;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v14 = v7 == v6++;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v7 = v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, 2 * v11);
  }

  v12 = &v4[v11];
  if (v10 >= 2 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 1;
    --v5;
    v16 = v12;
    do
    {
      v17 = v5 + 1;
      v19 = *(v16 - 2);
      v16 -= 2;
      v18 = v19;
      v20 = *v15;
      if (v19 < v20)
      {
        if (v17 != v6)
        {
          *v5 = v20;
        }

        if (v12 <= v4 || (--v6, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        *v5 = v18;
      }

      --v5;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v21 = v12 - v4 + ((v12 - v4) >> 63);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFFELL)))
  {
    memmove(v6, v4, 2 * (v21 >> 1));
  }

  return 1;
}

char *sub_5AA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_70CC8, &qword_5C720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_5BA4(char *a1, int64_t a2, char a3)
{
  result = sub_5BE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_5BC4(char *a1, int64_t a2, char a3)
{
  result = sub_5CE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_5BE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_70CC0, &unk_5AEB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_5CE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_70C98, &qword_5AE70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_5E08(uint64_t a1)
{
  v2 = sub_58D20();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_58DE0();
}

uint64_t sub_5ED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_58D70();
  *a1 = result;
  return result;
}

uint64_t sub_5EFC(uint64_t *a1)
{
  v1 = *a1;

  return sub_58D80();
}

uint64_t sub_5F28()
{
  v1 = (type metadata accessor for PopoverGlyphVariantView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_589A0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = (v0 + v3 + v1[10]);
  v7 = *v6;

  v8 = v6[1];

  v9 = *(v0 + v3 + v1[11] + 8);

  v10 = *(v0 + v3 + v1[12]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_6054()
{
  v1 = type metadata accessor for PopoverGlyphVariantView();
  v2 = v0 + *(v1 + 36) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *v2;
  v5 = *(v2 + 8);
  sub_187C(&qword_70C88, &unk_5AE60);
  return sub_59640();
}

void *sub_60FC(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_620C()
{
  v2 = *(v0 + 48);
  sub_187C(&qword_70C88, &unk_5AE60);
  return sub_59640();
}

uint64_t sub_6260()
{
  v2 = *(v0 + 64);
  sub_187C(&qword_70C88, &unk_5AE60);
  return sub_59640();
}

uint64_t sub_62F0(uint64_t a1)
{
  v2 = sub_187C(&qword_70A48, &qword_5AB68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6360@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v4 = *sub_2BE50();
  *a1 = sub_58F20();
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  v5 = *(sub_187C(&qword_70CA8, &unk_5AE80) + 44);
  v22 = *(v1 + 32);
  v23 = v22;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(v1 + 32);
  *(v6 + 16) = *(v1 + 16);
  *(v6 + 32) = v7;
  v8 = *(v1 + 64);
  *(v6 + 48) = *(v1 + 48);
  *(v6 + 64) = v8;
  *(v6 + 80) = v3;
  sub_6610(&v23, v21, &qword_70CB0, &qword_5C540);
  sub_62B8(v1 + 16, v21);
  sub_187C(&qword_70CB0, &qword_5C540);
  type metadata accessor for PopoverGlyphVariantView();
  sub_6ED0(&qword_70CB8, &qword_70CB0, &qword_5C540);
  sub_65A4();
  sub_59720();
  v9 = *sub_2BA00();
  v10 = sub_59200();
  sub_58B90();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = sub_187C(&qword_70A40, &qword_5AB60);
  v20 = a1 + *(result + 36);
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_6534(uint64_t a1)
{
  v3 = *(v1 + 32);

  v4 = *(v1 + 40);

  v5 = *(v1 + 56);

  v6 = *(v1 + 72);

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_65A4()
{
  result = qword_72408;
  if (!qword_72408)
  {
    type metadata accessor for PopoverGlyphVariantView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72408);
  }

  return result;
}

uint64_t sub_6610(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_187C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_6678(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_187C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_66D8()
{
  result = qword_70CD8;
  if (!qword_70CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70CD8);
  }

  return result;
}

uint64_t sub_672C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 8);
  v9 = sub_18E6C();
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(v1 + 48);
  v6 = *v1;
  v5 = *(v1 + 16);
  v3[3] = *(v1 + 32);
  v3[4] = v4;
  v3[1] = v6;
  v3[2] = v5;
  sub_1E48(v1, v8);
  sub_187C(&qword_70CB0, &qword_5C540);
  sub_6ED0(&qword_70CB8, &qword_70CB0, &qword_5C540);
  sub_6918();
  return sub_59720();
}

uint64_t sub_684C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_6894()
{
  result = qword_70CF0;
  if (!qword_70CF0)
  {
    sub_1F64(&qword_70CE8, &qword_5AEC8);
    sub_6918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70CF0);
  }

  return result;
}

unint64_t sub_6918()
{
  result = qword_72410;
  if (!qword_72410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72410);
  }

  return result;
}

uint64_t sub_696C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_69BC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 24);
  v6 = sub_187A0();
  v7 = sub_19030();
  if (*(v7 + 16) && (v8 = sub_4FC4(v4), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_19260();
  if (*(v11 + 16) && (v12 = sub_4FC4(v4), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {

    sub_187C(&qword_70CC0, &unk_5AEB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_5AB00;
    *(inited + 32) = v4;
    v14 = sub_6B34(inited);
    swift_setDeallocating();
  }

  sub_59620();
  result = sub_59620();
  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = v10;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v17;
  *(a2 + 56) = v18;
  return result;
}

uint64_t sub_6B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_187C(&qword_70CF8, &qword_5AED0);
    v3 = sub_59C40();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 2 * v4);
      result = sub_59EB0();
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 2 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 2 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

__n128 sub_6C5C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_6C6C(uint64_t a1, int a2)
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

uint64_t sub_6C8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_6D04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_6D58()
{
  result = qword_70D10;
  if (!qword_70D10)
  {
    sub_1F64(&qword_70C70, &qword_5ADE8);
    sub_1F64(&qword_70BE8, &qword_5ADA8);
    sub_59130();
    sub_6ED0(&qword_70C60, &qword_70BE8, &qword_5ADA8);
    sub_684C(&qword_70C68, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_6ED0(&qword_70D18, &qword_70C78, &qword_5ADF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70D10);
  }

  return result;
}

uint64_t sub_6ED0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1F64(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_6F18()
{
  sub_1F64(&qword_70A38, &qword_5AB58);
  sub_1F64(&qword_70A40, &qword_5AB60);
  sub_1F64(&qword_70A48, &qword_5AB68);
  sub_33F0();
  swift_getOpaqueTypeConformance2();
  sub_38A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_7000(uint64_t *a1)
{
  if (swift_dynamicCast())
  {
    v2 = v4;
  }

  else if (swift_dynamicCast())
  {
    v2 = v4;
  }

  else
  {
    v2 = 0;
  }

  sub_EA60(a1);
  return v2;
}

uint64_t sub_70D4(uint64_t a1)
{
  v2 = sub_785C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7110(uint64_t a1)
{
  v2 = sub_785C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_7164()
{
  v1 = *v0;
  sub_59ED0();
  sub_59EE0(v1);
  return sub_59F10();
}

Swift::Int sub_71D8()
{
  v1 = *v0;
  sub_59ED0();
  sub_59EE0(v1);
  return sub_59F10();
}

uint64_t sub_721C()
{
  if (*v0)
  {
    result = 29807;
  }

  else
  {
    result = 7627105;
  }

  *v0;
  return result;
}

uint64_t sub_7244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7627105 && a2 == 0xE300000000000000;
  if (v5 || (sub_59E80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 29807 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_59E80();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_7324(uint64_t a1)
{
  v2 = sub_77B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_7360(uint64_t a1)
{
  v2 = sub_77B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_739C(uint64_t a1)
{
  v2 = sub_7808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_73D8(uint64_t a1)
{
  v2 = sub_7808();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_7414(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_59E80();
}

uint64_t sub_745C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v24 = a2;
  v25 = a4;
  v22 = a3;
  v23 = sub_187C(&qword_70D20, &qword_5AF20);
  v21 = *(v23 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v23);
  v7 = &v20 - v6;
  v8 = sub_187C(&qword_70D28, &qword_5AF28);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_187C(&qword_70D30, &qword_5AF30);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  sub_7770(a1, a1[3]);
  sub_77B4();
  sub_59F30();
  if (v25)
  {
    v27 = 1;
    sub_7808();
    sub_59E00();
    v18 = v23;
    sub_59E10();
    (*(v21 + 8))(v7, v18);
  }

  else
  {
    v26 = 0;
    sub_785C();
    sub_59E00();
    sub_59E20();
    (*(v20 + 8))(v11, v8);
  }

  return (*(v13 + 8))(v16, v12);
}

void *sub_7770(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_77B4()
{
  result = qword_72428;
  if (!qword_72428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72428);
  }

  return result;
}

unint64_t sub_7808()
{
  result = qword_72430;
  if (!qword_72430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72430);
  }

  return result;
}

unint64_t sub_785C()
{
  result = qword_72438;
  if (!qword_72438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72438);
  }

  return result;
}

void sub_78B0(uint64_t a1, Swift::UInt a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_59EE0(1uLL);

    sub_59920();
  }

  else
  {
    sub_59EE0(0);
    sub_59EE0(a2);
  }
}

Swift::Int sub_7928(Swift::UInt a1, uint64_t a2, char a3)
{
  sub_59ED0();
  if (a3)
  {
    sub_59EE0(1uLL);
    sub_59920();
  }

  else
  {
    sub_59EE0(0);
    sub_59EE0(a1);
  }

  return sub_59F10();
}

uint64_t sub_79B0(uint64_t *a1)
{
  result = sub_AFA0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_79D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_59ED0();
  if (v3 == 1)
  {
    sub_59EE0(1uLL);
    sub_59920();
  }

  else
  {
    sub_59EE0(0);
    sub_59EE0(v1);
  }

  return sub_59F10();
}

void sub_7A60()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = *(v0 + 8);
    sub_59EE0(1uLL);

    sub_59920();
  }

  else
  {
    sub_59EE0(0);
    sub_59EE0(v1);
  }
}

Swift::Int sub_7AE8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_59ED0();
  if (v3 == 1)
  {
    sub_59EE0(1uLL);
    sub_59920();
  }

  else
  {
    sub_59EE0(0);
    sub_59EE0(v1);
  }

  return sub_59F10();
}

uint64_t sub_7B6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_AFA0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_7BC0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 16);
  if (*(a1 + 16) != 1)
  {
    return (v3 == v4) & ~v5;
  }

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if (v3 == v4 && v6 == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_59E80();
  }
}

uint64_t sub_7C20()
{
  v1 = *v0;
  sub_B4D0(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t sub_7C68()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_7CA8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_7CDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 57);
    for (i = (a2 + 57); *(v3 - 25) == *(i - 25); i += 32)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      if (*(v3 - 17) == *(i - 17) && *(v3 - 9) == *(i - 9))
      {
        result = 0;
        if (v5 != v7)
        {
          return result;
        }
      }

      else
      {
        v10 = sub_59E80();
        result = 0;
        if (v10 & 1) == 0 || ((v5 ^ v7))
        {
          return result;
        }
      }

      if ((v6 ^ v8))
      {
        return result;
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_7DC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  return result;
}

uint64_t sub_7DF8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_B4D0(v2, v3, v4);
}

uint64_t sub_7E0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_B4E0(v7, v9) & 1;
}

uint64_t sub_7EAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a2 == a6 && a3 == a7)
  {
    if ((a4 ^ a8))
    {
      return 0;
    }

    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  v9 = a4;
  v10 = a8;
  v11 = sub_59E80();
  result = 0;
  if (v11)
  {
    LOWORD(a8) = v10;
    LOWORD(a4) = v9;
    if (((v9 ^ v10) & 1) == 0)
    {
      return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
    }
  }

  return result;
}

uint64_t sub_7F60(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 25);
  v4 = *(a2 + 24);
  v5 = *(a2 + 25);
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_59E80();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t *sub_801C()
{
  if (qword_72420 != -1)
  {
    swift_once();
  }

  return &qword_77BA8;
}

uint64_t sub_806C()
{
  if (qword_72420 != -1)
  {
    swift_once();
  }
}

uint64_t sub_80C8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_B4D0(*a1, v3, v4);
  v5 = sub_B6F0(v2, v3, v4);
  if (v6 == 9)
  {
    if (sub_51F6C())
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 32);
    }
  }

  else
  {
    v7 = v5;
  }

  sub_B818(a1);
  return v7;
}

uint64_t sub_8164(uint64_t a1, int64_t a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v5._countAndFlagsBits = 0xD000000000000010;
        v5._object = 0x8000000000066870;
        v6 = 0xD000000000000040;
        v7 = 0x8000000000066890;
        goto LABEL_22;
      }

      v4 = "OpenType stylistic sets";
      v5._countAndFlagsBits = 0x697473696C797453;
      LODWORD(v5._object) = 1699946595;
      goto LABEL_15;
    }

    switch(a2)
    {
      case 6:
        v5._countAndFlagsBits = 0xD000000000000017;
        v5._object = 0x80000000000667C0;
        v6 = 0xD000000000000047;
        v7 = 0x80000000000667E0;
        goto LABEL_22;
      case 7:
        v6 = 0xD000000000000030;
        v5._countAndFlagsBits = 0x726568744FLL;
        v7 = 0x8000000000066780;
        v5._object = 0xE500000000000000;
        goto LABEL_22;
      case 8:
        v4 = "tion is not possible";
        v5._countAndFlagsBits = 0x6156206870796C47;
        LODWORD(v5._object) = 1851877746;
LABEL_15:
        v5._object = (LODWORD(v5._object) | 0xEE00737400000000);
        v7 = v4 | 0x8000000000000000;
LABEL_17:
        v6 = 0xD00000000000003ELL;
        goto LABEL_22;
    }

LABEL_24:
    v8 = a1;
    goto LABEL_23;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v6 = 0xD000000000000037;
      v5._countAndFlagsBits = 0x20737265626D754ELL;
      v5._object = 0xED0000656C797453;
      v7 = 0x8000000000066950;
    }

    else
    {
      v5._countAndFlagsBits = 0xD000000000000011;
      v5._object = 0x80000000000668E0;
      v6 = 0xD000000000000041;
      v7 = 0x8000000000066900;
    }

    goto LABEL_22;
  }

  if (!a2)
  {
    v7 = 0x8000000000066990;
    v5._countAndFlagsBits = 1702060355;
    v5._object = 0xE400000000000000;
    goto LABEL_17;
  }

  if (a2 != 1)
  {
    goto LABEL_24;
  }

  v6 = 0xD000000000000037;
  v5._countAndFlagsBits = 0x20737265626D754ELL;
  v5._object = 0xEF676E6963617053;
  v7 = 0x8000000000066950;
LABEL_22:
  v8 = sub_2B8E0(v5, v6, v7);
LABEL_23:
  sub_B848(a1, a2);
  return v8;
}

uint64_t sub_83E4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x64656D616ELL;
    v6 = 0x726568746FLL;
    if (a1 != 8)
    {
      v6 = 0x7261566870796C67;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x697473696C797473;
    if (a1 != 5)
    {
      v7 = 0x73696C797453746FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x676E69736163;
    v2 = 0x53737265626D756ELL;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0x5679616C70736964;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x53737265626D756ELL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_8568(uint64_t a1)
{
  v2 = sub_C0E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_85A4(uint64_t a1)
{
  v2 = sub_C0E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_85FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B85C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_8630(uint64_t a1)
{
  v2 = sub_BD98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_866C(uint64_t a1)
{
  v2 = sub_BD98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_86A8(uint64_t a1)
{
  v2 = sub_BF90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_86E4(uint64_t a1)
{
  v2 = sub_BF90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8720(uint64_t a1)
{
  v2 = sub_BDEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_875C(uint64_t a1)
{
  v2 = sub_BDEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_879C()
{
  sub_59ED0();
  sub_59EE0(0);
  return sub_59F10();
}

Swift::Int sub_880C()
{
  sub_59ED0();
  sub_59EE0(0);
  return sub_59F10();
}

uint64_t sub_8850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_59E80();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_88DC(uint64_t a1)
{
  v2 = sub_BE94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8918(uint64_t a1)
{
  v2 = sub_BE94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8954(uint64_t a1)
{
  v2 = sub_C08C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8990(uint64_t a1)
{
  v2 = sub_C08C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_89CC(uint64_t a1)
{
  v2 = sub_C038();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8A08(uint64_t a1)
{
  v2 = sub_C038();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8A44(uint64_t a1)
{
  v2 = sub_BEE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8A80(uint64_t a1)
{
  v2 = sub_BEE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8ABC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_8AEC(uint64_t a1)
{
  v2 = sub_BE40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8B28(uint64_t a1)
{
  v2 = sub_BE40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8B64(uint64_t a1)
{
  v2 = sub_BF3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8BA0(uint64_t a1)
{
  v2 = sub_BF3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8BDC(uint64_t a1)
{
  v2 = sub_BFE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_8C18(uint64_t a1)
{
  v2 = sub_BFE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_8C5C(void *a1, uint64_t a2, uint64_t a3)
{
  v91 = a3;
  v85 = a2;
  v4 = sub_187C(&qword_70D38, &qword_5AF38);
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  __chkstk_darwin(v4);
  v81 = &v64 - v6;
  v79 = sub_187C(&qword_70D40, &qword_5AF40);
  v77 = *(v79 - 8);
  v7 = *(v77 + 64);
  __chkstk_darwin(v79);
  v76 = &v64 - v8;
  v82 = sub_187C(&qword_70D48, &qword_5AF48);
  v80 = *(v82 - 8);
  v9 = *(v80 + 64);
  __chkstk_darwin(v82);
  v78 = &v64 - v10;
  v75 = sub_187C(&qword_70D50, &qword_5AF50);
  v74 = *(v75 - 8);
  v11 = *(v74 + 64);
  __chkstk_darwin(v75);
  v73 = &v64 - v12;
  v72 = sub_187C(&qword_70D58, &qword_5AF58);
  v71 = *(v72 - 8);
  v13 = *(v71 + 64);
  __chkstk_darwin(v72);
  v70 = &v64 - v14;
  v69 = sub_187C(&qword_70D60, &qword_5AF60);
  v68 = *(v69 - 8);
  v15 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = &v64 - v16;
  v66 = sub_187C(&qword_70D68, &qword_5AF68);
  v65 = *(v66 - 8);
  v17 = *(v65 + 64);
  __chkstk_darwin(v66);
  v90 = &v64 - v18;
  v19 = sub_187C(&qword_70D70, &qword_5AF70);
  v20 = *(v19 - 8);
  v88 = v19;
  v89 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v64 - v22;
  v24 = sub_187C(&qword_70D78, &qword_5AF78);
  v87 = *(v24 - 8);
  v25 = *(v87 + 64);
  __chkstk_darwin(v24);
  v27 = &v64 - v26;
  v28 = sub_187C(&qword_70D80, &qword_5AF80);
  v86 = *(v28 - 8);
  v29 = *(v86 + 64);
  __chkstk_darwin(v28);
  v31 = &v64 - v30;
  v32 = sub_187C(&qword_70D88, &qword_5AF88);
  v33 = *(v32 - 8);
  v93 = v32;
  v94 = v33;
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v64 - v35;
  v37 = a1[4];
  sub_7770(a1, a1[3]);
  sub_BD98();
  v92 = v36;
  v38 = v91;
  sub_59F30();
  if (v38 > 3)
  {
    if (v38 <= 5)
    {
      if (v38 == 4)
      {
        v99 = 4;
        sub_BF90();
        v57 = v67;
        v41 = v92;
        v40 = v93;
        sub_59E00();
        v50 = *(v68 + 8);
        v51 = v57;
        v52 = &v105;
      }

      else
      {
        v100 = 5;
        sub_BF3C();
        v49 = v70;
        v41 = v92;
        v40 = v93;
        sub_59E00();
        v50 = *(v71 + 8);
        v51 = v49;
        v52 = &v106;
      }
    }

    else
    {
      if (v38 != 6)
      {
        if (v38 != 7)
        {
          if (v38 == 8)
          {
            v104 = 9;
            sub_BDEC();
            v39 = v81;
            v41 = v92;
            v40 = v93;
            sub_59E00();
            (*(v83 + 8))(v39, v84);
            return (*(v94 + 8))(v41, v40);
          }

          goto LABEL_23;
        }

        v103 = 8;
        sub_BE40();
        v59 = v76;
        v41 = v92;
        v40 = v93;
        sub_59E00();
        v50 = *(v77 + 8);
        v51 = v59;
        v58 = v79;
LABEL_21:
        v50(v51, v58);
        return (*(v94 + 8))(v41, v40);
      }

      v101 = 6;
      sub_BEE8();
      v56 = v73;
      v41 = v92;
      v40 = v93;
      sub_59E00();
      v50 = *(v74 + 8);
      v51 = v56;
      v52 = &v107;
    }

    v58 = *(v52 - 32);
    goto LABEL_21;
  }

  v83 = v28;
  v84 = v24;
  v42 = v86;
  v43 = v87;
  v45 = v88;
  v44 = v89;
  v46 = v90;
  if (v38 > 1)
  {
    if (v38 == 2)
    {
      v97 = 2;
      sub_C038();
      v41 = v92;
      v40 = v93;
      sub_59E00();
      (*(v44 + 8))(v23, v45);
    }

    else
    {
      v98 = 3;
      sub_BFE4();
      v48 = v46;
      v41 = v92;
      v40 = v93;
      sub_59E00();
      (*(v65 + 8))(v48, v66);
    }

    return (*(v94 + 8))(v41, v40);
  }

  if (!v38)
  {
    v95 = 0;
    sub_C0E0();
    v53 = v92;
    v54 = v93;
    sub_59E00();
    (*(v42 + 8))(v31, v83);
    return (*(v94 + 8))(v53, v54);
  }

  if (v38 == 1)
  {
    v96 = 1;
    sub_C08C();
    v47 = v27;
    v41 = v92;
    v40 = v93;
    sub_59E00();
    (*(v43 + 8))(v47, v84);
    return (*(v94 + 8))(v41, v40);
  }

LABEL_23:
  v102 = 7;
  sub_BE94();
  v60 = v78;
  v62 = v92;
  v61 = v93;
  sub_59E00();
  v63 = v82;
  sub_59E10();
  (*(v80 + 8))(v60, v63);
  return (*(v94 + 8))(v62, v61);
}

void sub_969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }

      goto LABEL_20;
    }

    if (!a3)
    {
      v3 = 0;
      goto LABEL_20;
    }

    if (a3 == 1)
    {
      v3 = 1;
      goto LABEL_20;
    }
  }

  else
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_20;
    }

    switch(a3)
    {
      case 6:
        v3 = 6;
        goto LABEL_20;
      case 7:
        v3 = 8;
        goto LABEL_20;
      case 8:
        v3 = 9;
LABEL_20:
        sub_59EE0(v3);
        return;
    }
  }

  sub_59EE0(7uLL);

  sub_59920();
}

Swift::Int sub_97A4(uint64_t a1, uint64_t a2)
{
  sub_59ED0();
  sub_969C(v5, a1, a2);
  return sub_59F10();
}

BOOL sub_9834(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 <= 3)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        if (a2 != 2)
        {
          v4 = 2;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a2 != 3)
      {
        v4 = 3;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    if (!a4)
    {
      if (a2)
      {
        v4 = 0;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    if (a4 == 1)
    {
      if (a2 != 1)
      {
        v4 = 1;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (a4 <= 5)
    {
      if (a4 == 4)
      {
        if (a2 != 4)
        {
          v4 = 4;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a2 != 5)
      {
        v4 = 5;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    switch(a4)
    {
      case 6:
        if (a2 != 6)
        {
          v4 = 6;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_44;
      case 7:
        if (a2 != 7)
        {
          v4 = 8;
          if (a2 > 8)
          {
LABEL_40:
            v5 = 7;
            goto LABEL_41;
          }

LABEL_37:
          v5 = qword_5C070[a2];
LABEL_41:
          v6 = v4 < v5;
          return (v6 & 1) == 0;
        }

LABEL_44:
        v6 = 0;
        return (v6 & 1) == 0;
      case 8:
        if (a2 != 8)
        {
          v4 = 9;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_44;
    }
  }

  if (a2 < 9)
  {
    v4 = 7;
    goto LABEL_37;
  }

  if (a3 == a1 && a4 == a2)
  {
    goto LABEL_44;
  }

  if (sub_59E80())
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_59E80();
  }

  return (v6 & 1) == 0;
}

BOOL sub_9A44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 != 2)
        {
          v4 = 2;
          if (a4 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a4 != 3)
      {
        v4 = 3;
        if (a4 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    if (!a2)
    {
      if (a4)
      {
        v4 = 0;
        if (a4 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    if (a2 == 1)
    {
      if (a4 != 1)
      {
        v4 = 1;
        if (a4 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        if (a4 != 4)
        {
          v4 = 4;
          if (a4 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a4 != 5)
      {
        v4 = 5;
        if (a4 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      goto LABEL_44;
    }

    switch(a2)
    {
      case 6:
        if (a4 != 6)
        {
          v4 = 6;
          if (a4 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_44;
      case 7:
        if (a4 != 7)
        {
          v4 = 8;
          if (a4 > 8)
          {
LABEL_40:
            v5 = 7;
            goto LABEL_41;
          }

LABEL_37:
          v5 = qword_5C070[a4];
LABEL_41:
          v6 = v4 < v5;
          return (v6 & 1) == 0;
        }

LABEL_44:
        v6 = 0;
        return (v6 & 1) == 0;
      case 8:
        if (a4 != 8)
        {
          v4 = 9;
          if (a4 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        goto LABEL_44;
    }
  }

  if (a4 < 9)
  {
    v4 = 7;
    goto LABEL_37;
  }

  if (a1 == a3 && a2 == a4)
  {
    goto LABEL_44;
  }

  if (sub_59E80())
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_59E80();
  }

  return (v6 & 1) == 0;
}

uint64_t sub_9C3C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 <= 3)
  {
    if (a4 > 1)
    {
      if (a4 == 2)
      {
        if (a2 != 2)
        {
          v4 = 2;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a2 != 3)
      {
        v4 = 3;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      return 0;
    }

    if (!a4)
    {
      if (a2)
      {
        v4 = 0;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      return 0;
    }

    if (a4 == 1)
    {
      if (a2 != 1)
      {
        v4 = 1;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      return 0;
    }
  }

  else
  {
    if (a4 <= 5)
    {
      if (a4 == 4)
      {
        if (a2 != 4)
        {
          v4 = 4;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (a2 != 5)
      {
        v4 = 5;
        if (a2 > 8)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      return 0;
    }

    switch(a4)
    {
      case 6:
        if (a2 != 6)
        {
          v4 = 6;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        return 0;
      case 7:
        if (a2 != 7)
        {
          v4 = 8;
          if (a2 > 8)
          {
LABEL_40:
            v5 = 7;
            return v4 < v5;
          }

LABEL_37:
          v5 = qword_5C070[a2];
          return v4 < v5;
        }

        return 0;
      case 8:
        if (a2 != 8)
        {
          v4 = 9;
          if (a2 > 8)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }

        return 0;
    }
  }

  if (a2 < 9)
  {
    v4 = 7;
    goto LABEL_37;
  }

  if (a3 == a1 && a4 == a2 || (sub_59E80() & 1) != 0)
  {
    return 0;
  }

  return sub_59E80();
}

Swift::Int sub_9E3C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_59ED0();
  sub_969C(v4, v1, v2);
  return sub_59F10();
}

Swift::Int sub_9E90()
{
  v1 = *v0;
  v2 = v0[1];
  sub_59ED0();
  sub_969C(v4, v1, v2);
  return sub_59F10();
}

char *sub_9EF4@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = sub_C134(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_9F34()
{
  if (qword_72420 != -1)
  {
    swift_once();
  }

  v0 = qword_77BA8;
  v1 = *(qword_77BA8 + 16);
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_ACF8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      sub_B848(v4, *v3);
      v15 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_ACF8((v6 > 1), v7 + 1, 1);
        v2 = v15;
      }

      v3 += 2;
      v2[2] = v7 + 1;
      v8 = &v2[3 * v7];
      v8[4] = v4;
      v8[5] = v5;
      v8[6] = _swiftEmptyArrayStorage;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      v9 = &_swiftEmptyDictionarySingleton;
      goto LABEL_11;
    }
  }

  sub_187C(&qword_70D90, &qword_5AF90);
  v9 = sub_59D60();
LABEL_11:
  v15 = v9;
  sub_A138(v2, 1, &v15);
  v10 = v15;

  v12 = sub_CF50(v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v10;
  sub_D2E8(v12, sub_AF58, 0, isUniquelyReferenced_nonNull_native, &v15);

  return v15;
}

uint64_t sub_A138(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;
  sub_B848(v7, v6);

  v10 = sub_A4D8(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_A550(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_A4D8(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_59EA0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_A8DC();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_187C(&qword_70DB8, &qword_5BFD8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_E9AC(v7, v6);
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_59C70(30);
    v39._object = 0x8000000000066A30;
    v39._countAndFlagsBits = 0xD00000000000001BLL;
    sub_59950(v39);
    sub_59D10();
    v40._countAndFlagsBits = 39;
    v40._object = 0xE100000000000000;
    sub_59950(v40);
    result = sub_59D20();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v38 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;
      sub_B848(v7, v6);

      v27 = sub_A4D8(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_A550(v31, 1);
        v32 = *a3;
        v27 = sub_A4D8(v7, v6);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v7;
      v35[1] = v6;
      *(v34[7] + 8 * v27) = v8;
      v36 = v34[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v37;
      v5 += 3;
      if (v38 == v25)
      {
      }
    }

    goto LABEL_25;
  }
}

unint64_t sub_A4D8(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  sub_59ED0();
  sub_969C(v8, a1, a2);
  v6 = sub_59F10();

  return sub_AA4C(a1, a2, v6);
}

uint64_t sub_A550(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_187C(&qword_70D90, &qword_5AF90);
  v34 = a2;
  result = sub_59D50();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v18 = v9;
        while (1)
        {
          v9 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_58;
          }

          if (v9 >= v14)
          {
            break;
          }

          v19 = v10[v9];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v13 = (v19 - 1) & v19;
            goto LABEL_17;
          }
        }

        if ((v34 & 1) == 0)
        {

          v3 = v33;
          goto LABEL_56;
        }

        v32 = 1 << *(v5 + 32);
        v3 = v33;
        if (v32 >= 64)
        {
          bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v32;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v35 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v34 & 1) == 0)
      {
        sub_B848(v35, v22);
      }

      v23 = *(v8 + 40);
      sub_59ED0();
      if (v22 <= 3)
      {
        if (v22 > 1)
        {
          if (v22 == 2)
          {
            v24 = 2;
          }

          else
          {
            v24 = 3;
          }

          goto LABEL_38;
        }

        if (!v22)
        {
          v24 = 0;
          goto LABEL_38;
        }

        if (v22 == 1)
        {
          v24 = 1;
          goto LABEL_38;
        }
      }

      else
      {
        if (v22 <= 5)
        {
          if (v22 == 4)
          {
            v24 = 4;
          }

          else
          {
            v24 = 5;
          }

          goto LABEL_38;
        }

        switch(v22)
        {
          case 6:
            v24 = 6;
            goto LABEL_38;
          case 7:
            v24 = 8;
            goto LABEL_38;
          case 8:
            v24 = 9;
LABEL_38:
            sub_59EE0(v24);
            goto LABEL_39;
        }
      }

      sub_59EE0(7uLL);
      sub_59920();
LABEL_39:
      result = sub_59F10();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_58:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v35;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }
  }

LABEL_56:
  *v3 = v8;
  return result;
}

void *sub_A8DC()
{
  v1 = v0;
  sub_187C(&qword_70D90, &qword_5AF90);
  v2 = *v0;
  v3 = sub_59D40();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_B848(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_AA4C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12 <= 3)
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            if (a2 == 2)
            {
              return v6;
            }
          }

          else if (a2 == 3)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (!v12)
        {
          if (!a2)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v12 <= 5)
        {
          if (v12 == 4)
          {
            if (a2 == 4)
            {
              return v6;
            }
          }

          else if (a2 == 5)
          {
            return v6;
          }

          goto LABEL_4;
        }

        switch(v12)
        {
          case 6:
            if (a2 == 6)
            {
              return v6;
            }

            goto LABEL_4;
          case 7:
            if (a2 == 7)
            {
              return v6;
            }

            goto LABEL_4;
          case 8:
            if (a2 == 8)
            {
              return v6;
            }

            goto LABEL_4;
        }
      }

      if (a2 >= 9)
      {
        v13 = *v11 == a1 && v12 == a2;
        if (v13 || (sub_59E80() & 1) != 0)
        {
          return v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

char *sub_ABD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_70DB0, &qword_5BFD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_ACF8(void *a1, int64_t a2, char a3)
{
  result = sub_AD18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_AD18(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_187C(&qword_70DC0, &qword_5BFE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_187C(&qword_70DC8, &qword_5BFE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_AE60(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_ABD0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_AF58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  sub_B848(v3, v2);
}

uint64_t sub_AFA0(uint64_t *a1)
{
  v32 = sub_187C(&qword_70E30, &qword_5C050);
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v4 = &v31 - v3;
  v5 = sub_187C(&qword_70E38, &qword_5C058);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = sub_187C(&qword_70E40, &unk_5C060);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v36 = a1;
  v16 = sub_7770(a1, v15);
  sub_77B4();
  v17 = v35;
  sub_59F20();
  if (!v17)
  {
    v18 = v5;
    v35 = v10;
    v19 = v13;
    v20 = sub_59DF0();
    v21 = v9;
    if (*(v20 + 16) == 1)
    {
      if (*(v20 + 32))
      {
        LODWORD(v33) = *(v20 + 32);
        v38 = 1;
        sub_7808();
        sub_59D90();
        v22 = v35;
        v29 = v32;
        v30 = sub_59DB0();
        v31 = 0;
        v16 = v30;
        (*(v34 + 8))(v4, v29);
        (*(v22 + 8))(v19, v21);
      }

      else
      {
        v34 = v20;
        v37 = 0;
        sub_785C();
        sub_59D90();
        v28 = v35;
        v16 = sub_59DC0();
        (*(v33 + 8))(v8, v18);
        (*(v28 + 8))(v19, v9);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v23 = sub_59CA0();
      swift_allocError();
      v25 = v24;
      v26 = *(sub_187C(&qword_70E28, &qword_5C048) + 48);
      *v25 = &type metadata for FeatureIdentifier;
      v16 = v19;
      sub_59DA0();
      sub_59C90();
      (*(*(v23 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v23);
      swift_willThrow();
      (*(v35 + 8))(v19, v9);
      swift_unknownObjectRelease();
    }
  }

  sub_EA60(v36);
  return v16;
}

uint64_t sub_B4D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_B4E0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (a1[2])
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }

    if (v4 != v5 || a1[1] != a2[1])
    {
      v8 = *a1;
      if ((sub_59E80() & 1) == 0)
      {
        return 0;
      }
    }

LABEL_11:
    v10 = a1[3] == a2[3] && a1[4] == a2[4];
    if (v10 || (sub_59E80()) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0 && (sub_7CDC(a1[6], a2[6]))
    {
      v11 = a1[8];
      v12 = a2[8];
      if (v11)
      {
        if (v12 && (a1[7] == a2[7] && v11 == v12 || (sub_59E80() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v12)
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if ((a2[2] & 1) == 0 && v4 == v5)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_B5D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 == 2)
        {
          return 1;
        }
      }

      else if (a4 == 3)
      {
        return 1;
      }

      return 0;
    }

    if (!a2)
    {
      return !a4;
    }

    if (a2 == 1)
    {
      return a4 == 1;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 6:
        return a4 == 6;
      case 7:
        return a4 == 7;
      case 8:
        return a4 == 8;
    }
  }

  if (a4 < 9)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_59E80();
  }
}

uint64_t sub_B6F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_598F0();
    v6._countAndFlagsBits = 30307;
    v6._object = 0xE200000000000000;
    sub_59990(v6);
    sub_EAAC(a1, a2, 1);

    return 0;
  }

  if (a1 > 32)
  {
    if (a1 > 36 || a1 == 33)
    {
      return 0;
    }

    if (a1 == 35)
    {
      return 0;
    }

    if (a1 != 36)
    {
      return 0;
    }

    return 0;
  }

  if (a1 > 9)
  {
    if (a1 == 10)
    {
      return 0;
    }

    if (a1 != 19)
    {
      if (a1 != 21)
      {
        return 0;
      }

      return 0;
    }

    return 0;
  }

  if (a1 == 3)
  {
    return 0;
  }

  if (a1 != 6)
  {
    if (a1 != 8)
    {
      return 0;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_B848(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_B85C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69736163 && a2 == 0xE600000000000000;
  if (v4 || (sub_59E80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53737265626D756ELL && a2 == 0xEE00676E69636170 || (sub_59E80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x53737265626D756ELL && a2 == 0xEC000000656C7974 || (sub_59E80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000669F0 == a2 || (sub_59E80() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5679616C70736964 && a2 == 0xEF73746E61697261 || (sub_59E80() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x697473696C797473 && a2 == 0xED00007374655363 || (sub_59E80() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73696C797453746FLL && a2 == 0xEF73746553636974 || (sub_59E80() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64656D616ELL && a2 == 0xE500000000000000 || (sub_59E80() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000 || (sub_59E80() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7261566870796C67 && a2 == 0xED000073746E6169)
  {

    return 9;
  }

  else
  {
    v6 = sub_59E80();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_BBB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 != 2)
        {
          v4 = 2;
          if (a4 <= 8)
          {
            goto LABEL_25;
          }

          goto LABEL_14;
        }
      }

      else if (a4 != 3)
      {
        v4 = 3;
        if (a4 <= 8)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

      return 0;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_39;
      }

      if (a4 == 1)
      {
        return 0;
      }

      v4 = 1;
      if (a4 > 8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!a4)
      {
        return 0;
      }

      v4 = 0;
      if (a4 > 8)
      {
        goto LABEL_14;
      }
    }

LABEL_25:
    v5 = qword_5C070[a4];
    return v4 < v5;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      if (a4 != 4)
      {
        v4 = 4;
        if (a4 <= 8)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }
    }

    else if (a4 != 5)
    {
      v4 = 5;
      if (a4 <= 8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    return 0;
  }

  switch(a2)
  {
    case 6:
      if (a4 != 6)
      {
        v4 = 6;
        if (a4 <= 8)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

      return 0;
    case 7:
      if (a4 != 7)
      {
        v4 = 8;
        if (a4 <= 8)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

      return 0;
    case 8:
      if (a4 != 8)
      {
        v4 = 9;
        if (a4 <= 8)
        {
          goto LABEL_25;
        }

LABEL_14:
        v5 = 7;
        return v4 < v5;
      }

      return 0;
  }

LABEL_39:
  if (a4 < 9)
  {
    v4 = 7;
    goto LABEL_25;
  }

  if (a1 == a3 && a2 == a4 || (sub_59E80() & 1) != 0)
  {
    return 0;
  }

  return sub_59E80();
}

unint64_t sub_BD98()
{
  result = qword_72440;
  if (!qword_72440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72440);
  }

  return result;
}

unint64_t sub_BDEC()
{
  result = qword_72448;
  if (!qword_72448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72448);
  }

  return result;
}

unint64_t sub_BE40()
{
  result = qword_72450;
  if (!qword_72450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72450);
  }

  return result;
}

unint64_t sub_BE94()
{
  result = qword_72458;
  if (!qword_72458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72458);
  }

  return result;
}

unint64_t sub_BEE8()
{
  result = qword_72460;
  if (!qword_72460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72460);
  }

  return result;
}

unint64_t sub_BF3C()
{
  result = qword_72468;
  if (!qword_72468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72468);
  }

  return result;
}

unint64_t sub_BF90()
{
  result = qword_72470;
  if (!qword_72470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72470);
  }

  return result;
}

unint64_t sub_BFE4()
{
  result = qword_72478;
  if (!qword_72478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72478);
  }

  return result;
}

unint64_t sub_C038()
{
  result = qword_72480;
  if (!qword_72480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72480);
  }

  return result;
}

unint64_t sub_C08C()
{
  result = qword_72488;
  if (!qword_72488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72488);
  }

  return result;
}

unint64_t sub_C0E0()
{
  result = qword_72490[0];
  if (!qword_72490[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_72490);
  }

  return result;
}

char *sub_C134(uint64_t *a1)
{
  v2 = sub_187C(&qword_70DD0, &qword_5BFF0);
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  __chkstk_darwin(v2);
  v94 = &v67 - v4;
  v5 = sub_187C(&qword_70DD8, &qword_5BFF8);
  v87 = *(v5 - 8);
  v88 = v5;
  v6 = *(v87 + 64);
  __chkstk_darwin(v5);
  v98 = &v67 - v7;
  v8 = sub_187C(&qword_70DE0, &qword_5C000);
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  __chkstk_darwin(v8);
  v97 = &v67 - v10;
  v11 = sub_187C(&qword_70DE8, &qword_5C008);
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  __chkstk_darwin(v11);
  v93 = &v67 - v13;
  v14 = sub_187C(&qword_70DF0, &qword_5C010);
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  __chkstk_darwin(v14);
  v92 = &v67 - v16;
  v79 = sub_187C(&qword_70DF8, &qword_5C018);
  v80 = *(v79 - 8);
  v17 = *(v80 + 64);
  __chkstk_darwin(v79);
  v91 = &v67 - v18;
  v77 = sub_187C(&qword_70E00, &qword_5C020);
  v78 = *(v77 - 8);
  v19 = *(v78 + 64);
  __chkstk_darwin(v77);
  v96 = &v67 - v20;
  v75 = sub_187C(&qword_70E08, &qword_5C028);
  v76 = *(v75 - 8);
  v21 = *(v76 + 64);
  __chkstk_darwin(v75);
  v95 = &v67 - v22;
  v74 = sub_187C(&qword_70E10, &qword_5C030);
  v73 = *(v74 - 8);
  v23 = *(v73 + 64);
  __chkstk_darwin(v74);
  v25 = &v67 - v24;
  v26 = sub_187C(&qword_70E18, &qword_5C038);
  v72 = *(v26 - 8);
  v27 = *(v72 + 64);
  __chkstk_darwin(v26);
  v29 = &v67 - v28;
  v30 = sub_187C(&qword_70E20, &qword_5C040);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v67 - v33;
  v35 = a1[3];
  v36 = a1[4];
  v100 = a1;
  sub_7770(a1, v35);
  sub_BD98();
  v37 = v99;
  sub_59F20();
  if (!v37)
  {
    v69 = v29;
    v68 = v26;
    v29 = v95;
    v38 = v96;
    v39 = v97;
    v70 = 0;
    v40 = v98;
    v99 = v31;
    v71 = v34;
    v41 = sub_59DF0();
    if (*(v41 + 16) != 1 || (v42 = *(v41 + 32), v42 == 10))
    {
      v29 = sub_59CA0();
      swift_allocError();
      v47 = v46;
      v48 = *(sub_187C(&qword_70E28, &qword_5C048) + 48);
      *v47 = &type metadata for FeatureGroup;
      v49 = v71;
      sub_59DA0();
      sub_59C90();
      (*(*(v29 - 1) + 104))(v47, enum case for DecodingError.typeMismatch(_:), v29);
      swift_willThrow();
    }

    else
    {
      if (*(v41 + 32) > 4u)
      {
        if (*(v41 + 32) <= 6u)
        {
          v55 = v99;
          v56 = v71;
          if (v42 == 5)
          {
            v106 = 5;
            sub_BF3C();
            v57 = v92;
            v58 = v70;
            sub_59D90();
            if (!v58)
            {
              (*(v81 + 8))(v57, v82);
              (*(v55 + 8))(v56, v30);
              swift_unknownObjectRelease();
              v29 = 0;
              goto LABEL_13;
            }
          }

          else
          {
            v107 = 6;
            sub_BEE8();
            v64 = v93;
            v65 = v70;
            sub_59D90();
            if (!v65)
            {
              (*(v83 + 8))(v64, v84);
              (*(v55 + 8))(v56, v30);
              swift_unknownObjectRelease();
              v29 = 0;
              goto LABEL_13;
            }
          }

          v66 = *(v55 + 8);
          v29 = (v55 + 8);
          v66(v56, v30);
        }

        else
        {
          v51 = v99;
          v52 = v71;
          if (v42 == 7)
          {
            v108 = 7;
            sub_BE94();
            v59 = v39;
            v60 = v70;
            sub_59D90();
            if (!v60)
            {
              v61 = v86;
              v29 = sub_59DB0();
              (*(v85 + 8))(v59, v61);
              (*(v51 + 8))(v52, v30);
              swift_unknownObjectRelease();
              goto LABEL_13;
            }
          }

          else if (v42 == 8)
          {
            v109 = 8;
            sub_BE40();
            v29 = v40;
            v53 = v70;
            sub_59D90();
            if (!v53)
            {
              (*(v87 + 8))(v40, v88);
              (*(v51 + 8))(v52, v30);
              swift_unknownObjectRelease();
              v29 = 0;
              goto LABEL_13;
            }
          }

          else
          {
            v110 = 9;
            sub_BDEC();
            v29 = v94;
            v63 = v70;
            sub_59D90();
            if (!v63)
            {
              (*(v89 + 8))(v29, v90);
              (*(v51 + 8))(v52, v30);
              swift_unknownObjectRelease();
              v29 = 0;
              goto LABEL_13;
            }
          }

          (*(v51 + 8))(v52, v30);
        }

        goto LABEL_12;
      }

      if (*(v41 + 32) > 1u)
      {
        v43 = v99;
        v44 = v70;
        if (v42 == 2)
        {
          v103 = 2;
          sub_C038();
          v45 = v71;
          sub_59D90();
          if (!v44)
          {
            (*(v76 + 8))(v29, v75);
            (*(v43 + 8))(v45, v30);
            swift_unknownObjectRelease();
            v29 = 0;
            goto LABEL_13;
          }
        }

        else if (v42 == 3)
        {
          v104 = 3;
          sub_BFE4();
          v45 = v71;
          sub_59D90();
          if (!v44)
          {
            (*(v78 + 8))(v38, v77);
            (*(v43 + 8))(v45, v30);
            swift_unknownObjectRelease();
            v29 = 0;
            goto LABEL_13;
          }
        }

        else
        {
          v105 = 4;
          sub_BF90();
          v62 = v91;
          v45 = v71;
          sub_59D90();
          if (!v44)
          {
            (*(v80 + 8))(v62, v79);
            (*(v43 + 8))(v45, v30);
            swift_unknownObjectRelease();
            v29 = 0;
            goto LABEL_13;
          }
        }

        (*(v43 + 8))(v45, v30);
LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      v54 = v70;
      if (*(v41 + 32))
      {
        v102 = 1;
        sub_C08C();
        v49 = v71;
        sub_59D90();
        if (!v54)
        {
          (*(v73 + 8))(v25, v74);
          (*(v99 + 8))(v49, v30);
          swift_unknownObjectRelease();
          v29 = 0;
          goto LABEL_13;
        }
      }

      else
      {
        v101 = 0;
        sub_C0E0();
        v29 = v69;
        v49 = v71;
        sub_59D90();
        if (!v54)
        {
          (*(v72 + 8))(v29, v68);
          (*(v99 + 8))(v49, v30);
          swift_unknownObjectRelease();
          v29 = 0;
          goto LABEL_13;
        }
      }
    }

    (*(v99 + 8))(v49, v30);
    goto LABEL_12;
  }

LABEL_13:
  sub_EA60(v100);
  return v29;
}

uint64_t sub_CF50(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v42 = &_swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i = (i + 72))
  {
    v8 = i[3];
    v37 = i[2];
    v38 = v8;
    v39 = *(i + 8);
    v9 = i[1];
    v35 = *i;
    v36 = v9;
    v40 = v35;
    v41 = *(i + 16);
    if (v41)
    {
      sub_598F0();
      sub_E9C0(&v35, v34);
      sub_E9F8(&v40, v34);
      v43._countAndFlagsBits = 30307;
      v43._object = 0xE200000000000000;
      sub_59990(v43);
      sub_EA30(&v40);
    }

    else
    {
      v11 = 0;
      if (v35 > 32)
      {
        if (v35 > 36)
        {
          if ((v35 - 37) < 2)
          {
            goto LABEL_31;
          }
        }

        else
        {
          switch(v35)
          {
            case '!':
              goto LABEL_31;
            case '#':
              v11 = 5;
              goto LABEL_31;
            case '$':
              goto LABEL_25;
          }
        }
      }

      else if (v35 > 9)
      {
        switch(v35)
        {
          case 0xALL:
            v11 = 3;
            goto LABEL_31;
          case 0x13:
LABEL_25:
            v11 = 4;
            goto LABEL_31;
          case 0x15:
            v11 = 2;
LABEL_31:
            sub_E9C0(&v35, v34);
            v10 = 0;
            goto LABEL_32;
        }
      }

      else
      {
        switch(v35)
        {
          case 3:
            goto LABEL_31;
          case 6:
            v11 = 1;
            goto LABEL_31;
          case 8:
            goto LABEL_25;
        }
      }

      sub_E9C0(&v35, v34);
    }

    if (sub_51F6C())
    {
      v10 = 0;
      v11 = 7;
    }

    else
    {
      v10 = *(&v36 + 1);
      v11 = v37;
    }

LABEL_32:
    v13 = sub_A4D8(v10, v11);
    v14 = v1[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v12;
    if (v1[3] < v16)
    {
      sub_A550(v16, 1);
      v1 = v42;
      v18 = sub_A4D8(v10, v11);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_46;
      }

      v13 = v18;
    }

    if (v17)
    {
      sub_E9AC(v10, v11);
      v20 = v1[7];
      v21 = *(v20 + 8 * v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v13) = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_ABD0(0, *(v21 + 2) + 1, 1, v21);
        *(v20 + 8 * v13) = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_ABD0((v23 > 1), v24 + 1, 1, v21);
        *(v20 + 8 * v13) = v21;
      }

      *(v21 + 2) = v24 + 1;
      v4 = &v21[72 * v24];
      *(v4 + 2) = v35;
      v5 = v36;
      v6 = v37;
      v7 = v38;
      *(v4 + 12) = v39;
      *(v4 + 4) = v6;
      *(v4 + 5) = v7;
      *(v4 + 3) = v5;
    }

    else
    {
      sub_187C(&qword_70DB0, &qword_5BFD0);
      v25 = swift_allocObject();
      v26 = v37;
      v27 = v38;
      v28 = v35;
      *(v25 + 48) = v36;
      *(v25 + 64) = v26;
      *(v25 + 80) = v27;
      *(v25 + 96) = v39;
      *(v25 + 16) = xmmword_5AB00;
      *(v25 + 32) = v28;
      v1[(v13 >> 6) + 8] |= 1 << v13;
      v29 = (v1[6] + 16 * v13);
      *v29 = v10;
      v29[1] = v11;
      *(v1[7] + 8 * v13) = v25;
      v30 = v1[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_45;
      }

      v1[2] = v32;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_59EA0();
  __break(1u);
  return result;
}

uint64_t sub_D2E8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v40 = -1 << *(a1 + 32);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v42 = a5;
  v43 = v7;
  v41 = v11;
  while (v10)
  {
    v51 = a4;
    v15 = v12;
LABEL_14:
    v17 = __clz(__rbit64(v10)) | (v15 << 6);
    v18 = *(*(a1 + 56) + 8 * v17);
    v49 = *(*(a1 + 48) + 16 * v17);
    v50 = v18;
    v19 = *(&v49 + 1);
    v20 = v49;
    sub_B848(v49, *(&v49 + 1));

    a2(&v46, &v49);
    sub_E9AC(v20, v19);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *a5;
    v26 = sub_A4D8(v46, v47);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v51 & 1) == 0)
      {
        sub_A8DC();
      }
    }

    else
    {
      sub_A550(v29, v51 & 1);
      v31 = *a5;
      v32 = sub_A4D8(v21, v22);
      if ((v30 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v26 = v32;
    }

    v10 &= v10 - 1;
    v34 = *a5;
    if (v30)
    {
      *&v49 = *(v34[7] + 8 * v26);

      sub_AE60(v23);
      sub_E9AC(v21, v22);
      v13 = v34[7];
      v14 = *(v13 + 8 * v26);
      *(v13 + 8 * v26) = v49;
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v35 = (v34[6] + 16 * v26);
      *v35 = v21;
      v35[1] = v22;
      *(v34[7] + 8 * v26) = v23;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v12 = v15;
    a5 = v42;
    v7 = v43;
    v11 = v41;
  }

  v16 = v12;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      sub_61FC();
    }

    v10 = *(v7 + 8 * v15);
    ++v16;
    if (v10)
    {
      v51 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_59EA0();
  __break(1u);
  return result;
}

unint64_t sub_D5A8()
{
  result = qword_70D98;
  if (!qword_70D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70D98);
  }

  return result;
}

unint64_t sub_D600()
{
  result = qword_70DA0;
  if (!qword_70DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70DA0);
  }

  return result;
}

unint64_t sub_D660()
{
  result = qword_70DA8;
  if (!qword_70DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70DA8);
  }

  return result;
}

__n128 sub_D6C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_D6D8(uint64_t a1, unsigned int a2)
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

uint64_t sub_D720(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_D780(uint64_t a1, uint64_t a2)
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

uint64_t sub_D7A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_D7EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_D84C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_D860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_D8A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_D8FC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_D914(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_D96C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

void *sub_D9BC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UIMetrics.FeaturePreview.HorizontalSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UIMetrics.FeaturePreview.HorizontalSize(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s17UITypographyPanel12FeatureGroupO15NamedCodingKeysOwet_0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s17UITypographyPanel12FeatureGroupO15NamedCodingKeysOwst_0(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_DE58()
{
  result = qword_72C20[0];
  if (!qword_72C20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_72C20);
  }

  return result;
}

unint64_t sub_DEB0()
{
  result = qword_72E30[0];
  if (!qword_72E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_72E30);
  }

  return result;
}

unint64_t sub_DF08()
{
  result = qword_73040[0];
  if (!qword_73040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_73040);
  }

  return result;
}

unint64_t sub_DF60()
{
  result = qword_73450[0];
  if (!qword_73450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_73450);
  }

  return result;
}

unint64_t sub_DFB8()
{
  result = qword_73D60[0];
  if (!qword_73D60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_73D60);
  }

  return result;
}

unint64_t sub_E010()
{
  result = qword_73E70;
  if (!qword_73E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73E70);
  }

  return result;
}

unint64_t sub_E068()
{
  result = qword_73E78;
  if (!qword_73E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73E78);
  }

  return result;
}

unint64_t sub_E0C0()
{
  result = qword_73F00;
  if (!qword_73F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73F00);
  }

  return result;
}

unint64_t sub_E118()
{
  result = qword_73F08[0];
  if (!qword_73F08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_73F08);
  }

  return result;
}

unint64_t sub_E170()
{
  result = qword_73F90;
  if (!qword_73F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73F90);
  }

  return result;
}

unint64_t sub_E1C8()
{
  result = qword_73F98[0];
  if (!qword_73F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_73F98);
  }

  return result;
}

unint64_t sub_E220()
{
  result = qword_74020;
  if (!qword_74020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74020);
  }

  return result;
}

unint64_t sub_E278()
{
  result = qword_74028[0];
  if (!qword_74028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74028);
  }

  return result;
}

unint64_t sub_E2D0()
{
  result = qword_740B0;
  if (!qword_740B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_740B0);
  }

  return result;
}

unint64_t sub_E328()
{
  result = qword_740B8[0];
  if (!qword_740B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_740B8);
  }

  return result;
}

unint64_t sub_E380()
{
  result = qword_74140;
  if (!qword_74140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74140);
  }

  return result;
}

unint64_t sub_E3D8()
{
  result = qword_74148[0];
  if (!qword_74148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74148);
  }

  return result;
}

unint64_t sub_E430()
{
  result = qword_741D0;
  if (!qword_741D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_741D0);
  }

  return result;
}

unint64_t sub_E488()
{
  result = qword_741D8[0];
  if (!qword_741D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_741D8);
  }

  return result;
}

unint64_t sub_E4E0()
{
  result = qword_74260;
  if (!qword_74260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74260);
  }

  return result;
}

unint64_t sub_E538()
{
  result = qword_74268[0];
  if (!qword_74268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74268);
  }

  return result;
}

unint64_t sub_E590()
{
  result = qword_742F0;
  if (!qword_742F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_742F0);
  }

  return result;
}

unint64_t sub_E5E8()
{
  result = qword_742F8[0];
  if (!qword_742F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_742F8);
  }

  return result;
}

unint64_t sub_E640()
{
  result = qword_74380;
  if (!qword_74380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74380);
  }

  return result;
}

unint64_t sub_E698()
{
  result = qword_74388[0];
  if (!qword_74388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74388);
  }

  return result;
}

unint64_t sub_E6F0()
{
  result = qword_74410;
  if (!qword_74410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74410);
  }

  return result;
}

unint64_t sub_E748()
{
  result = qword_74418[0];
  if (!qword_74418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74418);
  }

  return result;
}

unint64_t sub_E7A0()
{
  result = qword_744A0;
  if (!qword_744A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_744A0);
  }

  return result;
}

unint64_t sub_E7F8()
{
  result = qword_744A8[0];
  if (!qword_744A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_744A8);
  }

  return result;
}

unint64_t sub_E850()
{
  result = qword_74530;
  if (!qword_74530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_74530);
  }

  return result;
}

unint64_t sub_E8A8()
{
  result = qword_74538[0];
  if (!qword_74538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_74538);
  }

  return result;
}

unint64_t sub_E900()
{
  result = qword_745C0;
  if (!qword_745C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_745C0);
  }

  return result;
}

unint64_t sub_E958()
{
  result = qword_745C8[0];
  if (!qword_745C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_745C8);
  }

  return result;
}

uint64_t sub_E9AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_EA60(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_EAAC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_EAE0()
{
  if (qword_74658 != -1)
  {
    swift_once();
  }

  sub_59900();
  has_internal_content = os_variant_has_internal_content();

  byte_77BB0 = has_internal_content;
  return result;
}

char *sub_EB60()
{
  if (qword_74650 != -1)
  {
    swift_once();
  }

  return &byte_77BB0;
}

void sub_EBB0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_598E0();
    v4 = v3;

    qword_74660 = v2;
    qword_74668 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_EC40()
{
  v0 = sub_58A40();
  sub_F9D4(v0, qword_74678);
  sub_F15C(v0, qword_74678);
  if (qword_74658 != -1)
  {
    swift_once();
  }

  return sub_58A30();
}

void sub_ED00(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if (qword_74650 != -1)
  {
    v27 = a3;
    swift_once();
    a3 = v27;
  }

  if (byte_77BB0 == 1)
  {
    v7 = &unk_74000;
    if ((a3 & 1) == 0)
    {
LABEL_14:
      if (v7[206] != -1)
      {
        swift_once();
      }

      v20 = sub_58A40();
      sub_F15C(v20, qword_74678);

      v21 = sub_58A20();
      v22 = sub_59AC0();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v23 = 136446466;
        *(v23 + 4) = sub_F2AC(a1, a2, &v29);
        *(v23 + 12) = 2082;
        v28 = a4;
        sub_187C(&qword_70E48, &qword_5C0C8);
        sub_F854();
        v24 = sub_59890();
        v26 = sub_F2AC(v24, v25, &v29);

        *(v23 + 14) = v26;
        _os_log_impl(&dword_0, v21, v22, "[%{public}s] %{public}s", v23, 0x16u);
        swift_arrayDestroy();
      }

      return;
    }

    v8 = [objc_opt_self() callStackSymbols];
    v9 = sub_59A10();

    v10 = *(v9 + 16);
    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v9;
      if (!isUniquelyReferenced_nonNull_native || (v10 - 1) > *(v9 + 24) >> 1)
      {
        v29 = sub_F1A0(isUniquelyReferenced_nonNull_native, v10, 1, v9);
      }

      sub_F8B8(0, 1, 0);
      if (qword_74670 == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_10:
    v12 = sub_58A40();
    sub_F15C(v12, qword_74678);

    v13 = sub_58A20();
    v14 = sub_59AC0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v15 = 136446466;
      *(v15 + 4) = sub_F2AC(a1, a2, &v28);
      *(v15 + 12) = 2082;
      sub_187C(&qword_70E48, &qword_5C0C8);
      sub_F854();
      v16 = sub_59890();
      v18 = v17;

      v19 = sub_F2AC(v16, v18, &v28);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_0, v13, v14, "[%{public}s] 🥞\n%{public}s", v15, 0x16u);
      swift_arrayDestroy();

      v7 = &unk_74000;
    }

    else
    {
    }

    goto LABEL_14;
  }
}

uint64_t sub_F15C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_F1A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_70E58, qword_5D880);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_F2AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_F378(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_F978(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_EA60(v11);
  return v7;
}

unint64_t sub_F378(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_F484(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_59CB0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_F484(uint64_t a1, unint64_t a2)
{
  v4 = sub_F4D0(a1, a2);
  sub_F600(&off_6E8A0);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_F4D0(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_F6EC(v5, 0);
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

  result = sub_59CB0();
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
        v10 = sub_59970();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_F6EC(v10, 0);
        result = sub_59C50();
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

uint64_t sub_F600(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_F760(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_F6EC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_187C(&qword_70E60, &unk_5C0D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_F760(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_70E60, &unk_5C0D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_F854()
{
  result = qword_70E50;
  if (!qword_70E50)
  {
    sub_1F64(&qword_70E48, &qword_5C0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E50);
  }

  return result;
}

unint64_t sub_F8B8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
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

uint64_t sub_F978(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_F9D4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_FA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypographyPanelViewModel();
  v5 = sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);

  return ObservedObject.projectedValue.getter(a1, a2, v4, v5);
}

uint64_t sub_FACC()
{
  sub_591E0();
  sub_FC60();
  return sub_58BA0();
}

uint64_t sub_FB38@<X0>(uint64_t *a1@<X8>)
{

  v2 = *sub_801C();

  sub_15924(v3);

  type metadata accessor for TypographyPanelViewModel();
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);
  v4 = sub_58C50();
  v6 = v5;
  v7 = sub_2B980();
  v8 = *v7;
  v9 = v7[1];

  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_159C0();
  sub_15A98();
  result = sub_58B80();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = result;
  return result;
}

unint64_t sub_FC60()
{
  result = qword_70E68;
  if (!qword_70E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_70E68);
  }

  return result;
}

uint64_t sub_FCB4()
{
  type metadata accessor for TypographyPanelViewModel();
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);
  v0 = sub_58C50();
  v1 = sub_2B980();
  v2 = *v1;
  v3 = v1[1];

  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_159C0();
  sub_15A98();
  sub_58B80();
  return v0;
}

uint64_t sub_FDAC()
{
  type metadata accessor for TypographyPanelViewModel();
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);

  return sub_58C50();
}

uint64_t sub_FE28()
{
  v2 = *v0;
  v3 = v0[1];
  sub_591E0();
  sub_FC60();
  return sub_58BA0();
}

uint64_t sub_FE9C(uint64_t *a1)
{
  v1 = *a1;
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);

  return sub_58C50();
}

uint64_t sub_FF34()
{
  v0 = sub_2B980();
  v1 = *v0;
  v2 = v0[1];

  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_159C0();
  sub_15A98();
  return sub_58B80();
}

uint64_t sub_FFB8()
{
  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_58B50();
  return v1;
}

uint64_t (*sub_10058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1, char a2)
{
  *(a1 + 16) = a4;
  *(a1 + 24) = sub_187C(&qword_70E70, &qword_5C0E0);
  sub_58B50();
  return sub_100C4;
}

uint64_t sub_100C4(void *a1, char a2)
{
  a1[1] = *a1;
  v4 = a1[2];
  v3 = a1[3];
  if (a2)
  {

    sub_58B60();
    v5 = *a1;
  }

  else
  {
    v7 = a1[2];
    v8 = a1[3];

    return sub_58B60();
  }
}

uint64_t sub_10158()
{
  v0 = *sub_801C();

  v2 = sub_15924(v1);

  return v2;
}

uint64_t sub_10198()
{
  sub_187C(&qword_70E70, &qword_5C0E0);
  sub_58B70();
  return v1;
}

uint64_t sub_101EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  sub_10590(sub_15B70, v11, a4);
  type metadata accessor for TypographyPanelViewModel();
  sub_17B64(&unk_70BA0, type metadata accessor for TypographyPanelViewModel);
  v6 = sub_58AA0();
  v7 = (a4 + *(sub_187C(&qword_70E98, &qword_5C0E8) + 36));
  *v7 = v6;
  v7[1] = a2;
  KeyPath = swift_getKeyPath();
  v9 = a4 + *(sub_187C(&qword_70EA0, qword_5C118) + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 1;
}

uint64_t sub_102F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_187C(&qword_70F50, &qword_5C2B8);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  __chkstk_darwin(v8);
  v11 = v17 - v10;
  v12 = sub_1F758();
  if (v12)
  {
    v13 = v12;
    v19 = sub_1FFE4();
    v17[1] = swift_getKeyPath();
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = a2;
    v14[4] = a3;
    v14[5] = v13;

    sub_187C(&qword_70F68, &qword_5C2E8);
    sub_187C(&qword_70F60, &unk_5C2C0);
    sub_6ED0(&qword_70F70, &qword_70F68, &qword_5C2E8);
    sub_16500();
    sub_6ED0(&qword_70F58, &qword_70F60, &unk_5C2C0);
    sub_59720();
    (*(v18 + 32))(a4, v11, v8);
    return (*(v18 + 56))(a4, 0, 1, v8);
  }

  else
  {
    v16 = *(v18 + 56);

    return v16(a4, 1, 1, v8);
  }
}

uint64_t sub_10590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v42[1] = a1;
  v49 = sub_187C(&qword_70F28, &qword_5C2A0);
  v4 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v6 = v42 - v5;
  v7 = sub_59150();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_187C(&qword_70EF8, &qword_5C288);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v11);
  v14 = v42 - v13;
  v48 = sub_187C(&qword_70EF0, &qword_5C280);
  v45 = *(v48 - 8);
  v15 = *(v45 + 64);
  __chkstk_darwin(v48);
  v17 = v42 - v16;
  v18 = sub_187C(&qword_70F30, &qword_5C2A8);
  v47 = *(v18 - 8);
  v19 = *(v47 + 64);
  __chkstk_darwin(v18);
  v21 = v42 - v20;
  v22 = *(sub_1FFE4() + 16);

  if (v22)
  {
    v42[0] = v18;
    __chkstk_darwin(v23);
    sub_187C(&qword_70F38, &qword_5C2B0);
    v44 = a3;
    sub_16114();
    sub_592A0();
    sub_59140();
    v24 = sub_6ED0(&qword_70F00, &qword_70EF8, &qword_5C288);
    sub_59500();
    (*(v46 + 8))(v10, v7);
    (*(v43 + 8))(v14, v11);
    *&v54 = v11;
    *(&v54 + 1) = v7;
    *&v55 = v24;
    *(&v55 + 1) = &protocol witness table for InsetGroupedListStyle;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = v48;
    sub_59470();
    (*(v45 + 8))(v17, v26);
    v27 = v47;
    v28 = v42[0];
    (*(v47 + 16))(v6, v21, v42[0]);
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70EE0, &qword_5C278);
    sub_1600C();
    *&v54 = v26;
    *(&v54 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_59100();
    return (*(v27 + 8))(v21, v28);
  }

  else
  {
    v61._object = 0x8000000000066AA0;
    v61._countAndFlagsBits = 0xD000000000000010;
    v30 = sub_2B8E0(v61, 0xD000000000000039, 0x8000000000066AC0);
    v34 = j_nullsub_1(v30, v31, v32, v33);
    v36 = v35;
    sub_597D0();
    sub_58D00();
    *v6 = v34;
    *(v6 + 1) = v36;
    v37 = v59;
    *(v6 + 5) = v58;
    *(v6 + 6) = v37;
    *(v6 + 7) = v60;
    v38 = v55;
    *(v6 + 1) = v54;
    *(v6 + 2) = v38;
    v39 = v57;
    *(v6 + 3) = v56;
    *(v6 + 4) = v39;
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70EE0, &qword_5C278);
    sub_1600C();
    v40 = sub_6ED0(&qword_70F00, &qword_70EF8, &qword_5C288);
    v50 = v11;
    v51 = v7;
    v52 = v40;
    v53 = &protocol witness table for InsetGroupedListStyle;
    v41 = swift_getOpaqueTypeConformance2();
    v50 = v48;
    v51 = v41;
    swift_getOpaqueTypeConformance2();
    return sub_59100();
  }
}

uint64_t sub_10C48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_299C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a6;
  v62 = a2;
  v64 = a8;
  v65 = sub_187C(&qword_70F98, &qword_5C300);
  v13 = *(v65 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v65);
  v16 = &v54 - v15;
  v17 = sub_187C(&qword_71030, &qword_5C348);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v54 - v19;
  v21 = *(a1 + 16);
  if (v21)
  {
    v56 = a7;
    v61 = a4;
    v57 = v16;
    v58 = v17;
    v59 = v13;
    v60 = &v54 - v19;
    v22 = 0;
    v23 = _swiftEmptyArrayStorage;
    v24 = 32;
    v55 = 32;
    do
    {
      v25 = v24 + 72 * v22;
      v26 = v22;
      while (1)
      {
        if (v26 >= v21)
        {
          __break(1u);
LABEL_20:
          __break(1u);

          __break(1u);
          return result;
        }

        v27 = *(a1 + v25 + 48);
        v67[2] = *(a1 + v25 + 32);
        v67[3] = v27;
        v68 = *(a1 + v25 + 64);
        v28 = *(a1 + v25 + 16);
        v67[0] = *(a1 + v25);
        v67[1] = v28;
        v22 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_20;
        }

        v29 = *(a3 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_featurePreviewConfigurationCache);
        sub_E9C0(v67, v66);
        if (sub_35DA4(a5, v67))
        {
          break;
        }

        sub_B818(v67);
        ++v26;
        v25 += 72;
        if (v22 == v21)
        {
          goto LABEL_14;
        }
      }

      v30 = sub_340DC(v67);
      sub_B818(v67);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_14F20(0, *(v23 + 2) + 1, 1, v23);
      }

      v32 = *(v23 + 2);
      v31 = *(v23 + 3);
      if (v32 >= v31 >> 1)
      {
        v23 = sub_14F20((v31 > 1), v32 + 1, 1, v23);
      }

      *(v23 + 2) = v32 + 1;
      v23[v32 + 32] = v30;
      v24 = v55;
    }

    while (v22 != v21);
LABEL_14:
    v66[0] = v23;

    sub_14520(v66);

    v33 = *(v66[0] + 2);
    v34 = v60;
    if (v33)
    {
      v35 = v66[0][v33 + 31];
    }

    else
    {

      v35 = 2;
    }

    v46 = v61;
    v66[0] = a1;
    v47 = swift_allocObject();
    v48 = v63;
    *(v47 + 16) = a5;
    *(v47 + 24) = v48;
    v49 = v56;
    *(v47 + 32) = v56;
    *(v47 + 40) = a1;
    *(v47 + 48) = v35;
    *(v47 + 56) = v62;
    *(v47 + 64) = a3;
    *(v47 + 72) = v46;
    swift_bridgeObjectRetain_n();
    v50 = a5;
    sub_B848(v48, v49);

    sub_187C(&qword_71038, &qword_5C350);
    sub_187C(&qword_70FA8, &qword_5C308);
    sub_6ED0(&qword_71040, &qword_71038, &qword_5C350);
    sub_168B8();
    sub_1702C();
    v51 = v57;
    sub_59730();
    v52 = v59;
    v53 = v65;
    (*(v59 + 16))(v34, v51, v65);
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70A20, &unk_5AB48);
    sub_2118();
    sub_16834();
    sub_59100();
    return (*(v52 + 8))(v51, v53);
  }

  else
  {
    v69._object = 0x8000000000066B00;
    v69._countAndFlagsBits = 0xD000000000000016;
    *&v67[0] = sub_2B8E0(v69, 0xD00000000000002FLL, 0x8000000000066B20);
    *(&v67[0] + 1) = v36;
    sub_66D8();
    v37 = sub_59310();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    nullsub_1(v37, v38, v40, v44);
    *v20 = v37;
    *(v20 + 1) = v39;
    v20[16] = v41 & 1;
    *(v20 + 3) = v43;
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70A20, &unk_5AB48);
    sub_2118();
    sub_16834();
    return sub_59100();
  }
}

uint64_t sub_11250@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v211 = a5;
  v200 = a4;
  v199 = a3;
  v207 = a1;
  v205 = a6;
  v7 = sub_187C(&qword_71028, &qword_5C340);
  v196 = *(v7 - 8);
  v8 = *(v196 + 64);
  __chkstk_darwin(v7);
  v195 = &v185 - v9;
  v10 = sub_187C(&qword_70FF0, &qword_5C328);
  v198 = *(v10 - 8);
  v11 = *(v198 + 64);
  __chkstk_darwin(v10);
  v197 = &v185 - v12;
  v203 = sub_187C(&qword_71068, &qword_5C368);
  v13 = *(*(v203 - 8) + 64);
  __chkstk_darwin(v203);
  v204 = &v185 - v14;
  v208 = sub_187C(&qword_71070, &qword_5C370);
  v15 = *(*(v208 - 8) + 64);
  __chkstk_darwin(v208);
  v209 = (&v185 - v16);
  v202 = sub_187C(&qword_70FB8, &qword_5C310);
  v17 = *(*(v202 - 8) + 64);
  __chkstk_darwin(v202);
  v19 = &v185 - v18;
  v201 = sub_187C(&qword_70FC8, &qword_5C318);
  v20 = *(*(v201 - 8) + 64);
  __chkstk_darwin(v201);
  v22 = &v185 - v21;
  v23 = sub_187C(&qword_71078, &qword_5C378);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v185 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v185 - v28;
  result = sub_51BC4();
  v210 = a2;
  v206 = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

  v191 = v27;
  v194 = v29;
  v190 = v22;
  v32 = *a2;
  v31 = *(a2 + 8);
  v33 = *(a2 + 16);
  sub_B4D0(*a2, v31, v33);
  v34 = a2;
  v35 = sub_51D10();
  if (!v37)
  {
    goto LABEL_6;
  }

  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  v43 = sub_51DE0();
  if (!v45)
  {

    v34 = v210;
LABEL_6:
    a2 = v34;
    if (!sub_51BB0() || (v54 = *(v34 + 48), !*(v54 + 16)))
    {
      result = sub_EAAC(v32, v31, v33);
      goto LABEL_14;
    }

    v192 = v19;
    v193 = v10;
    v55 = *(v54 + 40);
    v188 = *(v54 + 32);
    v56 = v188;
    v57 = *(v54 + 48);
    v58 = *(v54 + 56);
    v189 = *(v54 + 57);
    v59 = v211;
    swift_unownedRetainStrong();

    sub_B4D0(v32, v31, v33);
    sub_E9C0(a2, &v214);

    swift_unownedRetain();

    v60 = swift_allocObject();
    v61 = *a2;
    *(v60 + 104) = *(a2 + 16);
    v62 = *(a2 + 48);
    *(v60 + 120) = *(a2 + 32);
    *(v60 + 136) = v62;
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    *(v60 + 32) = v32;
    *(v60 + 40) = v31;
    *(v60 + 48) = v33;
    *(v60 + 56) = v56;
    *(v60 + 64) = v55;
    v63 = v55;
    *(v60 + 72) = v57;
    *(v60 + 80) = v58;
    LOBYTE(v55) = v189;
    *(v60 + 81) = v189;
    v64 = *(a2 + 64);
    *(v60 + 88) = v61;
    *(v60 + 152) = v64;
    *(v60 + 160) = v59;
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = v59;
    *(v65 + 40) = v32;
    *(v65 + 48) = v31;
    *(v65 + 56) = v33;
    *(v65 + 64) = v188;
    *(v65 + 72) = v63;
    *(v65 + 80) = v57;
    *(v65 + 88) = v58;
    *(v65 + 89) = v55;
    goto LABEL_9;
  }

  v192 = v19;
  v193 = v10;
  v47 = v211;
  v187 = v43;
  v189 = v46;
  v186 = v44;
  v188 = v45;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v47;
  *(v48 + 40) = v32;
  *(v48 + 48) = v31;
  *(v48 + 56) = v33;
  *(v48 + 64) = v39;
  *(v48 + 72) = v40;
  *(v48 + 80) = v41;
  v49 = v42 & 1;
  *(v48 + 88) = v42 & 1;
  v50 = (v42 >> 8) & 1;
  *(v48 + 89) = v50;
  swift_unownedRetainStrong();
  sub_B4D0(v32, v31, v33);
  swift_unownedRetain();

  swift_unownedRelease();
  swift_unownedRetain();

  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  *(v51 + 32) = v47;
  *(v51 + 40) = v32;
  *(v51 + 48) = v31;
  *(v51 + 56) = v33;
  *(v51 + 64) = v39;
  *(v51 + 72) = v40;
  *(v51 + 80) = v41;
  *(v51 + 88) = v49;
  *(v51 + 89) = v50;
  v52 = v186;
  *(v51 + 96) = v187;
  *(v51 + 104) = v52;
  *(v51 + 112) = v188;
  v53 = BYTE1(v189);
  *(v51 + 120) = v189 & 1;
  *(v51 + 121) = v53 & 1;
LABEL_9:
  result = sub_59710();
  v66 = v216;
  a2 = v210;
  v10 = v193;
  v19 = v192;
  v67 = v190;
  v68 = v194;
  if (v215)
  {
    v198 = v215;
    v197 = v214;
    v69 = sub_51D10();
    if (v70)
    {
      v71 = *(v211 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_featurePreviewConfigurationCache);
      v72 = v67;
      v73 = v68;
      v74 = v66;
      v75 = v191;
      sub_35570(v207, a2, v69, v191);

      v76 = type metadata accessor for FeaturePreviewConfiguration(0);
      v77 = *(v76 - 8);
      v78 = v75;
      v66 = v74;
      v68 = v73;
      v67 = v72;
      if ((*(v77 + 48))(v78, 1, v76) != 1)
      {
        sub_17FFC(v191, v68, type metadata accessor for FeaturePreviewConfiguration);
        (*(v77 + 56))(v68, 0, 1, v76);
LABEL_77:
        v176 = *(a2 + 24);
        v177 = *(a2 + 32);

        sub_E9C0(a2, &v214);
        v178 = v197;

        v179 = v198;

        sub_47354(v176, v177, a2, v200, v199 & 1, v178, v179, v66, v67);
        KeyPath = swift_getKeyPath();
        v181 = (v67 + *(v201 + 36));
        v182 = sub_187C(&qword_70FE0, &qword_5C320);
        v183 = v194;
        sub_6610(v194, v181 + *(v182 + 28), &qword_71078, &qword_5C378);
        *v181 = KeyPath;
        sub_6610(v67, v209, &qword_70FC8, &qword_5C318);
        swift_storeEnumTagMultiPayload();
        sub_169D0();
        sub_16AB8();
        sub_59100();
        sub_6610(v19, v204, &qword_70FB8, &qword_5C310);
        swift_storeEnumTagMultiPayload();
        sub_16944();
        sub_16C24();
        sub_59100();

        sub_6678(v19, &qword_70FB8, &qword_5C310);
        sub_6678(v67, &qword_70FC8, &qword_5C318);
        return sub_6678(v183, &qword_71078, &qword_5C378);
      }
    }

    else
    {
      v169 = type metadata accessor for FeaturePreviewConfiguration(0);
      (*(*(v169 - 8) + 56))(v191, 1, 1, v169);
    }

    v170 = sub_51DE0();
    if (v171)
    {
      v172 = *(v211 + OBJC_IVAR____TtC17UITypographyPanel24TypographyPanelViewModel_featurePreviewConfigurationCache);
      sub_35570(v207, a2, v170, v68);
    }

    else
    {
      v173 = type metadata accessor for FeaturePreviewConfiguration(0);
      (*(*(v173 - 8) + 56))(v68, 1, 1, v173);
    }

    v174 = type metadata accessor for FeaturePreviewConfiguration(0);
    v175 = v191;
    if ((*(*(v174 - 8) + 48))(v191, 1, v174) != 1)
    {
      sub_6678(v175, &qword_71078, &qword_5C378);
    }

    goto LABEL_77;
  }

LABEL_14:
  if (*(a2 + 40))
  {
    result = sub_51BB0();
    if ((result & 1) == 0)
    {
      v192 = v19;
      v193 = v10;
      v79 = *(a2 + 48);
      v80 = *(v79 + 16);
      if (v80)
      {
        v81 = 0;
        v82 = v79 + 32;
        v83 = _swiftEmptyArrayStorage;
        while (v81 < v80)
        {
          v84 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_82;
          }

          v85 = (v82 + 32 * v81);
          v86 = *v85;
          v87 = v85[2];
          ++v81;

          v88 = sub_1FAA4();
          if (*(v88 + 16))
          {
            v89 = sub_143B0(*v210, *(v210 + 8), *(v210 + 16));
            if (v90)
            {
              v91 = *(*(v88 + 56) + 8 * v89);

              if (*(v91 + 16))
              {
                v92 = 0;
                v93 = 1 << *(v91 + 32);
                if (v93 < 64)
                {
                  v94 = ~(-1 << v93);
                }

                else
                {
                  v94 = -1;
                }

                v95 = v94 & *(v91 + 56);
                v96 = (v93 + 63) >> 6;
                do
                {
                  if (!v95)
                  {
                    while (1)
                    {
                      v97 = v92 + 1;
                      if (__OFADD__(v92, 1))
                      {
                        break;
                      }

                      if (v97 >= v96)
                      {

                        goto LABEL_19;
                      }

                      v95 = *(v91 + 56 + 8 * v97);
                      ++v92;
                      if (v95)
                      {
                        v92 = v97;
                        goto LABEL_35;
                      }
                    }

                    __break(1u);
                    goto LABEL_79;
                  }

                  v97 = v92;
LABEL_35:
                  v98 = __clz(__rbit64(v95));
                  v95 &= v95 - 1;
                }

                while (*(*(v91 + 48) + ((v97 << 9) | (8 * v98))) != v86);

                v99 = swift_allocObject();
                v99[2] = 0;
                v99[3] = 0;
                v99[4] = v86;
                v100 = v211;
                swift_unownedRetainStrong();
                swift_unownedRetain();

                v101 = swift_allocObject();
                *(v101 + 16) = 0;
                *(v101 + 24) = 0;
                *(v101 + 32) = v100;
                v102 = v210;
                v103 = *v210;
                *(v101 + 56) = *(v210 + 16);
                v104 = *(v102 + 48);
                *(v101 + 72) = *(v102 + 32);
                *(v101 + 88) = v104;
                *(v101 + 104) = *(v102 + 64);
                *(v101 + 40) = v103;
                sub_E9C0(v102, &v214);
                sub_59710();

                v105 = v214;
                v106 = v215;
                v107 = v216;
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_15014(0, v83[2] + 1, 1, v83);
                  v83 = result;
                }

                v109 = v83[2];
                v108 = v83[3];
                if (v109 >= v108 >> 1)
                {
                  result = sub_15014((v108 > 1), v109 + 1, 1, v83);
                  v83 = result;
                }

                v83[2] = v109 + 1;
                v110 = &v83[3 * v109];
                v110[4] = v105;
                v110[5] = v106;
                v110[6] = v107;
                if (v84 != v80)
                {
                  continue;
                }

                goto LABEL_45;
              }
            }
          }

LABEL_19:

          if (v84 == v80)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_81;
      }

      v83 = _swiftEmptyArrayStorage;
LABEL_45:
      if (v83[2])
      {
        v111 = v210;
        v212 = *(v210 + 48);
        v213 = v212;
        v112 = swift_allocObject();
        v113 = v207;
        *(v112 + 16) = v211;
        *(v112 + 24) = v113;
        v114 = *(v111 + 48);
        *(v112 + 64) = *(v111 + 32);
        *(v112 + 80) = v114;
        v115 = *(v111 + 64);
        v116 = *(v111 + 16);
        *(v112 + 32) = *v111;
        *(v112 + 48) = v116;
        *(v112 + 96) = v115;
        *(v112 + 104) = v83;
        *(v112 + 112) = v200;
        sub_E9C0(v111, &v214);
        sub_6610(&v213, &v214, &qword_71090, &qword_5C3B0);

        v117 = v113;
        sub_187C(&qword_71090, &qword_5C3B0);
        sub_187C(&qword_71000, &qword_5C330);
        sub_6ED0(&qword_71098, &qword_71090, &qword_5C3B0);
        sub_16B3C();
        v184 = sub_174A8();
        v118 = v197;
        sub_59730();
        v119 = v198;
        v120 = v193;
        (*(v198 + 16))(v209, v118, v193);
        swift_storeEnumTagMultiPayload();
        sub_169D0();
        sub_16AB8();
        v121 = v192;
        sub_59100();
        sub_6610(v121, v204, &qword_70FB8, &qword_5C310);
        swift_storeEnumTagMultiPayload();
        sub_16944();
        sub_16C24();
        sub_59100();
        sub_6678(v121, &qword_70FB8, &qword_5C310);
        return (*(v119 + 8))(v118, v120);
      }

      a2 = v210;
    }
  }

  v122 = *(a2 + 48);
  v123 = *(v122 + 16);
  if (!v123)
  {
    v209 = _swiftEmptyArrayStorage;
LABEL_70:
    v157 = v209;
    v213 = v209;
    swift_getKeyPath();
    v158 = swift_allocObject();
    v159 = v210;
    v160 = v211;
    v161 = *(v210 + 48);
    *(v158 + 48) = *(v210 + 32);
    *(v158 + 64) = v161;
    *(v158 + 80) = *(v159 + 64);
    v162 = *(v159 + 16);
    *(v158 + 16) = *v159;
    *(v158 + 32) = v162;
    *(v158 + 88) = v200;
    *(v158 + 96) = v157;
    *(v158 + 104) = v199 & 1;
    v163 = v207;
    *(v158 + 112) = v160;
    *(v158 + 120) = v163;
    v164 = swift_allocObject();
    *(v164 + 16) = sub_17350;
    *(v164 + 24) = v158;
    sub_E9C0(v159, &v214);

    v165 = v163;

    sub_187C(&qword_71080, &qword_5C3A8);
    sub_6ED0(&qword_71088, &qword_71080, &qword_5C3A8);
    v184 = sub_169D0();
    v166 = v195;
    sub_59720();
    v167 = v196;
    v168 = v206;
    (*(v196 + 16))(v204, v166, v206);
    swift_storeEnumTagMultiPayload();
    sub_16944();
    sub_16C24();
    sub_59100();
    return (*(v167 + 8))(v166, v168);
  }

  v124 = 0;
  v125 = v122 + 57;
  v209 = _swiftEmptyArrayStorage;
  v194 = (v122 + 57);
LABEL_50:
  v126 = (v125 + 32 * v124);
  v127 = v124;
  while (v127 < v123)
  {
    v124 = v127 + 1;
    if (__OFADD__(v127, 1))
    {
      goto LABEL_80;
    }

    v128 = *(v126 - 25);
    v129 = *(v126 - 17);
    v130 = *(v126 - 9);
    v131 = *(v126 - 1);
    v132 = *v126;
    if (*v126)
    {
      v133 = 256;
    }

    else
    {
      v133 = 0;
    }

    v134 = *(v126 - 9);

    if (sub_51F88(v128, v129, v130, v133 | v131) == 2)
    {
      goto LABEL_62;
    }

    result = sub_51F88(v128, v129, v130, v133 | v131);
    if (result == 2)
    {
      goto LABEL_83;
    }

    if (result)
    {
LABEL_62:
      if (v123 != 2 || sub_51F88(v128, v129, v130, v133 | v131) != 2 || (v131 & 1) == 0)
      {
        v135 = v210;
        v136 = *(v210 + 8);
        v208 = *v210;
        v137 = v208;
        v197 = v136;
        v138 = *(v210 + 16);
        swift_unownedRetainStrong();

        v139 = v137;
        v140 = v197;
        LODWORD(v198) = v138;
        sub_B4D0(v139, v197, v138);
        sub_E9C0(v135, &v214);

        sub_B4D0(v208, v140, v138);
        swift_unownedRetain();

        v141 = swift_allocObject();
        v142 = *v135;
        *(v141 + 104) = *(v135 + 16);
        v143 = *(v135 + 48);
        *(v141 + 120) = *(v135 + 32);
        *(v141 + 136) = v143;
        *(v141 + 16) = 0;
        *(v141 + 24) = 0;
        v144 = v197;
        *(v141 + 32) = v208;
        *(v141 + 40) = v144;
        *(v141 + 48) = v198;
        *(v141 + 56) = v128;
        *(v141 + 64) = v129;
        *(v141 + 72) = v130;
        *(v141 + 80) = v131;
        *(v141 + 81) = v132;
        v145 = *(v135 + 64);
        *(v141 + 88) = v142;
        *(v141 + 152) = v145;
        *(v141 + 160) = v211;
        swift_unownedRetainStrong();
        v146 = swift_unownedRetain();

        v147 = swift_allocObject();
        *(v147 + 16) = 0;
        *(v147 + 24) = 0;
        v148 = v208;
        *(v147 + 32) = v146;
        *(v147 + 40) = v148;
        *(v147 + 48) = v144;
        *(v147 + 56) = v198;
        *(v147 + 64) = v128;
        *(v147 + 72) = v129;
        *(v147 + 80) = v130;
        *(v147 + 88) = v131;
        *(v147 + 89) = v132;
        sub_59710();
        v150 = v214;
        v149 = v215;
        LODWORD(v140) = v216;
        result = swift_isUniquelyReferenced_nonNull_native();
        v208 = v149;
        LODWORD(v198) = v140;
        if ((result & 1) == 0)
        {
          result = sub_1515C(0, v209[2] + 1, 1, v209);
          v209 = result;
        }

        v152 = v209[2];
        v151 = v209[3];
        if (v152 >= v151 >> 1)
        {
          result = sub_1515C((v151 > 1), v152 + 1, 1, v209);
          v209 = result;
        }

        v153 = v209;
        v209[2] = v152 + 1;
        v154 = &v153[7 * v152];
        v154[4] = v128;
        v154[5] = v129;
        v154[6] = v130;
        *(v154 + 56) = v131;
        *(v154 + 57) = v132;
        v155 = WORD2(v214);
        *(v154 + 58) = v214;
        *(v154 + 31) = v155;
        v156 = v208;
        v154[8] = v150;
        v154[9] = v156;
        *(v154 + 80) = v198;
        v125 = v194;
        if (v124 != v123)
        {
          goto LABEL_50;
        }

        goto LABEL_70;
      }
    }

    ++v127;
    v126 += 32;
    if (v124 == v123)
    {
      goto LABEL_70;
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
  return result;
}