uint64_t sub_18B84CAD4()
{
  result = sub_18BC21848();
  if (v1 <= 0x3F)
  {
    sub_18B8103B0();
    type metadata accessor for SFFluidCollectionView.LayoutAttributes();
    result = sub_18BC21848();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_18B84CC04(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v76 = a2;
  v5 = *(*a3 + 600);
  v67 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v67 - v6;
  v9 = v8[76];
  v10 = v8[77];
  v11 = v8[78];
  v12 = sub_18B8103B0();
  *&v86 = v5;
  *(&v86 + 1) = v9;
  *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v87 + 1) = v10;
  *v88 = v11;
  *&v88[8] = v12;
  v75 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v67 - v13;
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v67 - v15;
  v77 = v5;
  *&v86 = v5;
  *(&v86 + 1) = v9;
  v72 = v9;
  *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v87 + 1) = v10;
  v70 = v10;
  *&v71 = v11;
  *v88 = v11;
  *&v88[8] = v12;
  *(&v71 + 1) = v12;
  v16 = type metadata accessor for SFFluidCollectionView.Element();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v67 - v28;
  v78 = v17;
  v30 = *(v17 + 16);
  v31 = a1;
  v33 = v32;
  v30(&v67 - v28, v31, v32, v27);
  v79 = v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    v35 = v78;
    v36 = v29;
    if (EnumCaseMultiPayload == 1)
    {
      (v30)(v25, v29, v79);
      v37 = v69;
      v38 = v68;
      v39 = v72;
      (*(v69 + 4))(v68, v25, v72);
      v40 = v76[1];
      v83 = *v76;
      v41 = v76[2];
      v43 = *v76;
      v42 = v76[1];
      v84 = v40;
      v85[0] = v41;
      *(v85 + 9) = *(v76 + 41);
      v80 = v43;
      v81 = v42;
      v82[0] = v76[2];
      *(v82 + 9) = *(v76 + 41);
      *&v86 = v77;
      *(&v86 + 1) = v39;
      *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
      *(&v87 + 1) = v70;
      *v88 = v71;
      v44 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
      v45 = *(v44 - 1);
      (*(v45 + 16))(&v86, &v83, v44);
      v46 = v73;
      sub_18B85F830(v38, &v80, v73);
      v86 = v80;
      v87 = v81;
      *v88 = v82[0];
      *&v88[9] = *(v82 + 9);
      (*(v45 + 8))(&v86, v44);
      SFFluidCollectionView.LayoutSnapshot.insert(_:)(v46, v44);
      (*(v74 + 8))(v46, v75);
      (*(v37 + 8))(v38, v39);
    }

    return (*(v35 + 8))(v36, v79);
  }

  v69 = v7;
  (v30)(v22, v29, v79);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = swift_projectBox();
  v49 = *(TupleTypeMetadata2 + 48);
  v50 = swift_getEnumCaseMultiPayload();
  if (v50 == 3)
  {
    sub_18B833990(v48, &v83);
    v51 = sub_18B833990(&v83, &v80);
    if (*(&v81 + 1) > 1)
    {
      v35 = v78;
      v36 = v29;
      if (*(&v81 + 1) == 2)
      {
        (*(*a3 + 848))(v51);
        v52 = v73;
        sub_18B84D768(v73);
        goto LABEL_20;
      }

      if (*(&v81 + 1) == 3)
      {
        (*(*a3 + 848))(v51);
        v52 = v73;
        sub_18BB82AC0(v73);
        goto LABEL_20;
      }
    }

    else
    {
      v35 = v78;
      v36 = v29;
      if (!*(&v81 + 1))
      {
LABEL_21:
        sub_18B833D9C(&v83);

        return (*(v35 + 8))(v36, v79);
      }

      if (*(&v81 + 1) == 1)
      {
        (*(*a3 + 848))(v51);
        v52 = v73;
        sub_18B86C944(v73);
LABEL_20:

        *&v86 = v77;
        *(&v86 + 1) = v72;
        *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
        *(&v87 + 1) = v70;
        *v88 = v71;
        v65 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
        SFFluidCollectionView.LayoutSnapshot.insert(_:)(v52, v65);
        (*(v74 + 8))(v52, v75);
        goto LABEL_21;
      }
    }

    v89[0] = v80;
    v89[1] = v81;
    v90 = *&v82[0];
    (*(*a3 + 848))(v51);
    v63 = v73;
    sub_18B86CB14(v89, v73);

    *&v86 = v77;
    *(&v86 + 1) = v72;
    *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v87 + 1) = v70;
    *v88 = v71;
    v64 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
    SFFluidCollectionView.LayoutSnapshot.insert(_:)(v63, v64);
    (*(v74 + 8))(v63, v75);
    sub_18B831014(v89);
    goto LABEL_21;
  }

  if (v50)
  {

    v35 = v78;
    v36 = v29;
  }

  else
  {
    (v30)(v19, v48 + v49, v79);
    v36 = v29;
    if (*(v48 + 24))
    {
      (*(v67 + 8))(v19, v77);
    }

    else
    {
      v53 = v67;
      v54 = v77;
      (*(v67 + 32))(v69, v19, v77);
      v55 = v76[1];
      v83 = *v76;
      v56 = v76[2];
      v58 = *v76;
      v57 = v76[1];
      v84 = v55;
      v85[0] = v56;
      *(v85 + 9) = *(v76 + 41);
      v80 = v58;
      v81 = v57;
      v82[0] = v76[2];
      *(v82 + 9) = *(v76 + 41);
      *&v86 = v54;
      *(&v86 + 1) = v72;
      *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
      *(&v87 + 1) = v70;
      *v88 = v71;
      v59 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot();
      v60 = *(v59 - 1);
      (*(v60 + 16))(&v86, &v83, v59);
      v61 = v73;
      v62 = v69;
      sub_18BA33C24(v69, &v80, v73);
      v86 = v80;
      v87 = v81;
      *v88 = v82[0];
      *&v88[9] = *(v82 + 9);
      (*(v60 + 8))(&v86, v59);
      SFFluidCollectionView.LayoutSnapshot.insert(_:)(v61, v59);
      (*(v74 + 8))(v61, v75);
      (*(v53 + 8))(v62, v54);
    }

    v35 = v78;
  }

  return (*(v35 + 8))(v36, v79);
}

unint64_t sub_18B84D70C()
{
  result = qword_1EA9D6718[0];
  if (!qword_1EA9D6718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9D6718);
  }

  return result;
}

uint64_t sub_18B84D768@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_18B813BA4();
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  if (*(v1 + 32) == 1)
  {
    v7 = v1[7] + v1[8];
  }

  sub_18B813E2C(&v27);
  sub_18B82B344(&v27);
  v9 = v8;
  sub_18B813E2C(&v27);
  sub_18B84D9B0(&v27);
  v11 = v10;
  sub_18B813E2C(&v27);
  v12 = v31;
  v13 = v1[11];
  sub_18B813E2C(&v27);
  sub_18B82B344(&v27);
  v15 = v13 - v14;
  if (v15 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v15;
  }

  v17 = v5 + v7 + v9 + v11;
  v27 = 0uLL;
  v28 = 0;
  v29 = xmmword_18BC42B60;
  sub_18B84DA50(&v27);
  sub_18B833D9C(&v27);
  if (*(v1 + 33) == 1)
  {
    if (*(v1 + 48))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }
  }

  v18 = sub_18B8103B0();
  v19 = *(*&v3 + 96);
  v27 = *(*&v3 + 80);
  v28 = &type metadata for SFFluidTabOverviewSupplementary;
  v29 = v19;
  v30 = v18;
  v20 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  *(a1 + v20[17]) = v6;
  v21 = 0.0;
  SFFluidCollectionView.LayoutAttributes.frame.setter(v20, 0.0, v17, v12, v16);
  if ((*(v1 + 33) & 1) == 0)
  {
    v21 = v1[5];
  }

  v22 = v20[22];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v27 = *(a1 + v22);
  sub_18B84E858(0x6964615272756C62, 0xEA00000000007375, isUniquelyReferenced_nonNull_native, v21);
  *(a1 + v22) = v27;
  v24 = v1[11];
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *&v27 = *(a1 + v22);
  result = sub_18B84E858(0x48676E6974736572, 0xED00007468676965, v25, v24);
  *(a1 + v22) = v27;
  return result;
}

void sub_18B84D9B0(double *a1)
{
  if (*(v1 + 97) == 1)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6.origin.x = v2;
    v6.origin.y = v3;
    v6.size.width = v4;
    v6.size.height = v5;
    CGRectGetMaxY(v6);
    v7.origin.x = v2;
    v7.origin.y = v3;
    v7.size.width = v4;
    v7.size.height = v5;
    CGRectGetMaxX(v7);
  }
}

uint64_t sub_18B84DA50(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_18B8103B0();
  v5 = *(v3 + 96);
  v12 = *(v3 + 80);
  v13 = &type metadata for SFFluidTabOverviewSupplementary;
  v14 = v5;
  v15 = v4;
  v6 = type metadata accessor for SFFluidCollectionView.Element();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = v1[20];
  swift_storeEnumTagMultiPayload();
  sub_18BC1E1A8();
  v10(a1, v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_18B84DBAC()
{
  type metadata accessor for SFFluidCollectionView.Element();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGAffineTransform(319);
        if (v3 <= 0x3F)
        {
          sub_18B84E748();
          if (v4 <= 0x3F)
          {
            type metadata accessor for CGRect(319);
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

uint64_t sub_18B84DCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (*v3 + 600);
  v8 = (*v3 + 616);
  v9 = sub_18B8103B0();
  v15 = *v7;
  v16 = &type metadata for SFFluidTabOverviewSupplementary;
  v17 = *v8;
  v18 = v9;
  v10 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  sub_18B84DE88(a1, a2, (&v15 - v12));
  sub_18B84E410(v13, a3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_18B84DDF4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  swift_unownedRetainStrong();
  (*(*v5 + 584))(a1, a2);
}

uint64_t sub_18B84DE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v4 = *(*v3 + 88);
  v5 = *(*v3 + 96);
  v6 = *(*v3 + 104);
  v7 = *(*v3 + 112);
  v8 = *(*v3 + 120);
  v23 = *(*v3 + 80);
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v9 = type metadata accessor for SFFluidCollectionView.Element();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, v20, v5, v14);
  (*(v10 + 16))(v12, v21, v9);
  return sub_18B84E124(v16, v12, v5, v22);
}

uint64_t sub_18B84E09C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18B84E124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  *(a4 + v6[17]) = 0x3FF0000000000000;
  v7 = (a4 + v6[18]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a4 + v6[19]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a4 + v6[20]);
  *v9 = 0x3FF0000000000000;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0x3FF0000000000000;
  v9[4] = 0;
  v9[5] = 0;
  *(a4 + v6[21]) = 0;
  v10 = v6[22];
  v11 = MEMORY[0x1E69E7CC0];
  *(a4 + v10) = sub_18B84E2F8(MEMORY[0x1E69E7CC0]);
  v12 = v6[23];
  *(a4 + v12) = sub_18B84E2F8(v11);
  v13 = (a4 + v6[24]);
  *v13 = 0u;
  v13[1] = 0u;
  v14 = type metadata accessor for SFFluidCollectionView.Element();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = swift_allocBox();
  v18 = v17;
  v19 = *(TupleTypeMetadata2 + 48);
  (*(*(a3 - 8) + 32))(v17, a1, a3);
  (*(*(v14 - 8) + 32))(v18 + v19, a2, v14);
  *a4 = v16;
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_18B84E2F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72B0);
    v3 = sub_18BC21D88();
    sub_18BC1E1A8();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_18BC1E3F8();
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

uint64_t sub_18B84E410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18B8103B0();
  v4 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *(v4 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a2 + v5);
  sub_18B84E858(0xD000000000000014, 0x800000018BC65620, isUniquelyReferenced_nonNull_native, 0.0);
  *(a2 + v5) = v18;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a2 + v5);
  sub_18B84E858(0xD000000000000012, 0x800000018BC62700, v7, 1.0);
  *(a2 + v5) = v19;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a2 + v5);
  sub_18B84E858(0x615272656E726F63, 0xEC00000073756964, v8, 0.0);
  *(a2 + v5) = v20;
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a2 + v5);
  sub_18B84E858(0x6964615272756C62, 0xEA00000000007375, v9, 0.0);
  *(a2 + v5) = v21;
  v10 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a2 + v5);
  sub_18B84E858(0x48676E6974736572, 0xED00007468676965, v10, 0.0);
  *(a2 + v5) = v22;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a2 + v5);
  sub_18B84E858(0xD000000000000018, 0x800000018BC655F0, v11, 0.0);
  *(a2 + v5) = v23;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(a2 + v5);
  sub_18B84E858(0xD000000000000012, 0x800000018BC65640, v12, 1.0);
  *(a2 + v5) = v24;
  v13 = *(v4 + 92);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a2 + v13);
  sub_18B84E858(0xD000000000000018, 0x800000018BC65660, v14, 1.0);
  *(a2 + v13) = v25;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a2 + v13);
  sub_18B84E858(0xD000000000000010, 0x800000018BC62690, v15, 0.0);
  *(a2 + v13) = v26;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a2 + v13);
  result = sub_18B84E858(0xD000000000000020, 0x800000018BC626D0, v16, 0.0);
  *(a2 + v13) = v27;
  return result;
}

void sub_18B84E748()
{
  if (!qword_1EA9D8630)
  {
    v0 = sub_18BC209F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D8630);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18B84E858(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_18B831970(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_18B860D54();
      result = v19;
      goto LABEL_8;
    }

    sub_18B84E998(v16, a3 & 1);
    result = sub_18B831970(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_18BC22078();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    sub_18BB329AC(result, a1, a2, v21, a4);

    return sub_18BC1E3F8();
  }

  return result;
}

uint64_t sub_18B84E998(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72B0);
  v33 = a2;
  result = sub_18BC21D78();
  v7 = result;
  if (*(v5 + 16))
  {
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
      if ((v33 & 1) == 0)
      {
        sub_18BC1E3F8();
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

id SFFluidCollectionView.LayoutAttributes.frame.setter(int *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = (v5 + a1[19]);
  *v11 = a4;
  v11[1] = a5;
  sub_18B84EE04(a1);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  MidY = CGRectGetMidY(v18);
  v14 = (v5 + a1[18]);
  *v14 = MidX;
  v14[1] = MidY;
  sub_18B84EE04(a1);

  return sub_18B84EE04(a1);
}

uint64_t sub_18B84ED80()
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

  return sub_18B84FA00();
}

id sub_18B84EE04(int *a1)
{
  if (qword_1EA9D2400 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA9D85A8;
  [qword_1EA9D85A8 setPosition_];
  [v3 setBounds_];
  v4 = (v1 + a1[20]);
  v5 = v4[1];
  *&m.a = *v4;
  *&m.c = v5;
  *&m.tx = v4[2];
  CATransform3DMakeAffineTransform(&v12, &m);
  [v3 setTransform_];
  result = [v3 frame];
  v7 = (v1 + a1[24]);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  return result;
}

id sub_18B84EF04()
{
  result = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  qword_1EA9D85A8 = result;
  return result;
}

uint64_t SFFluidCollectionView.LayoutSnapshot.insert(_:)(uint64_t a1, void *a2)
{
  v49 = a1;
  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v45 = a2;
  v51 = v2;
  v52 = v3;
  v53 = v4;
  v54 = v5;
  v55 = v6;
  v56 = v7;
  v8 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v44 - v9;
  v51 = v2;
  v52 = v3;
  v53 = v4;
  v54 = v5;
  v55 = v6;
  v56 = v7;
  v10 = type metadata accessor for SFFluidCollectionView.Element();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = sub_18BC21848();
  v46 = *(v14 - 8);
  v47 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  swift_getWitnessTable();
  v23 = v49;
  sub_18BC20A28();
  (*(v11 + 16))(v13, v23, v10);
  v24 = v48;
  (*(v48 + 16))(v19, v23, v8);
  (*(v24 + 56))(v19, 0, 1, v8);
  v25 = v24;
  sub_18BC209F8();
  v26 = v46;
  v27 = v47;
  sub_18BC20A38();
  v28 = *(v26 + 16);
  v50 = v22;
  v28(v16, v22, v27);
  if ((*(v24 + 48))(v16, 1, v8) == 1)
  {
    (*(v26 + 8))(v16, v27);
    v29 = v45;
LABEL_6:
    sub_18B84F39C(v23, v29);
    return (*(v26 + 8))(v50, v27);
  }

  v30 = *(v24 + 32);
  v31 = v44;
  v30(v44, v16, v8);
  v32 = SFFluidCollectionView.LayoutAttributes.frame.getter(v8);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v58.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v8);
  v58.origin.y = v39;
  v58.size.width = v40;
  v58.size.height = v41;
  v57.origin.x = v32;
  v57.origin.y = v34;
  v57.size.width = v36;
  v57.size.height = v38;
  if (!CGRectEqualToRect(v57, v58))
  {
    v42 = v45;
    sub_18BBA6458(v31, v45);
    (*(v25 + 8))(v31, v8);
    v29 = v42;
    goto LABEL_6;
  }

  (*(v25 + 8))(v31, v8);
  return (*(v26 + 8))(v50, v27);
}

uint64_t sub_18B84F39C(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  *&v79 = a2[2];
  v4 = v79;
  *(&v79 + 1) = v5;
  *&v80 = v6;
  *(&v80 + 1) = v7;
  v81 = v8;
  v82 = v9;
  v73 = type metadata accessor for SFFluidCollectionView.Element();
  v10 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v54 - v13;
  v14 = *(v2 + 24);
  v15 = *(v2 + 32);
  v59 = v2;
  *&v79 = v4;
  *(&v79 + 1) = v5;
  *&v80 = v6;
  *(&v80 + 1) = v7;
  v81 = v8;
  v82 = v9;
  v16 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v66 = a1;
  v17 = SFFluidCollectionView.LayoutAttributes.frame.getter(v16);
  sub_18B82349C(v14, v15, v17, v18, v19, v20);
  v22 = v21;
  v65 = v4;
  *&v79 = v4;
  *(&v79 + 1) = v5;
  v64 = v5;
  v63 = v6;
  *&v80 = v6;
  *(&v80 + 1) = v7;
  v62 = v7;
  v61 = v8;
  v81 = v8;
  v82 = v9;
  v60 = v9;
  v23 = _s14LayoutSnapshotV9RectSliceVMa();
  if (sub_18BC20E28())
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v57 = (v10 + 16);
    v55 = (v10 + 8);
    v56 = v22;
    while (1)
    {
      v30 = sub_18BC20E08();
      sub_18BC20DC8();
      if ((v30 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v24, 1))
      {
        goto LABEL_17;
      }

      v67 = v24 + 1;
      v69 = v24;
      v31 = v22 + 32 * v24;
      v32 = *(v31 + 32);
      v74 = *(v31 + 48);
      v75 = v32;
      v33 = swift_allocObject();
      v71 = v26;
      v34 = v33;
      v35 = v65;
      v70 = v27;
      v36 = v64;
      *(v33 + 16) = v65;
      *(v33 + 24) = v36;
      v37 = v25;
      v38 = v63;
      v39 = v23;
      v40 = v62;
      v34[4] = v63;
      v34[5] = v40;
      v41 = v61;
      v42 = v60;
      v34[6] = v61;
      v34[7] = v42;
      sub_18B7B171C(v37);
      (*v57)(v72, v66, v73);
      v79 = v75;
      v80 = v74;
      v43 = swift_allocObject();
      v43[2] = v35;
      v43[3] = v36;
      v43[4] = v38;
      v43[5] = v40;
      v43[6] = v41;
      v43[7] = v42;
      v43[8] = sub_18B84FD54;
      v43[9] = v34;
      v68 = v34;
      sub_18B7B171C(v71);
      v44 = v59;
      swift_isUniquelyReferenced_nonNull_native();
      v45 = v44;
      v46 = *(v44 + 8);
      *&v76 = v46;
      WitnessTable = swift_getWitnessTable();
      sub_18B84FAF0(&v79, v39, WitnessTable);
      if (__OFADD__(*(v46 + 16), (v48 & 1) == 0))
      {
        goto LABEL_18;
      }

      v49 = v48;
      swift_getWitnessTable();
      sub_18BC210E8();
      sub_18BC21CE8();
      if (sub_18BC21CC8())
      {
        sub_18B84FAF0(&v79, v39, WitnessTable);
        v23 = v39;
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v23 = v39;
      }

      *(v45 + 8) = v76;
      if ((v49 & 1) == 0)
      {
        v78 = (v43[8])();
        v77 = v74;
        v76 = v75;
        sub_18BC21CD8();
      }

      v28 = v58;
      sub_18BC21078();
      (*v55)(v28, v73);
      v22 = v56;
      v29 = sub_18BC20E28();
      v24 = v69 + 1;
      v26 = sub_18BBA79EC;
      v25 = sub_18B84FD54;
      v27 = v43;
      if (v67 == v29)
      {

        v51 = sub_18BBA79EC;
        v52 = sub_18B84FD54;
        goto LABEL_15;
      }
    }

    sub_18BC21B08();
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_18BC22078();
    __break(1u);
  }

  else
  {

    v52 = 0;
    v51 = 0;
LABEL_15:
    sub_18B7B171C(v52);
    return sub_18B7B171C(v51);
  }

  return result;
}

uint64_t sub_18B84F9AC()
{
  sub_18BC22158();
  sub_18B84FB4C(*v0, v0[1], v0[2], v0[3]);
  return sub_18BC221A8();
}

uint64_t sub_18B84FA00()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_18B838D94(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = sub_18B839428(v1);
  sub_18B8396E0(v1);
  v4 = MEMORY[0x1E69E7CD0];
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  *(v0 + 64) = v4;
  *(v0 + 72) = 0;
  *(v0 + 74) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = sub_18B8509C8(v1);
  *(v0 + 104) = sub_18B850C4C(v1);
  *(v0 + 112) = sub_18B850C04(v1);
  *(v0 + 120) = vdupq_n_s64(0x4090000000000000uLL);
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = sub_18B850D54(v1);
  sub_18B81F588(__src);
  memcpy((v0 + 168), __src, 0x139uLL);
  *(v0 + 496) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  return v0;
}

unint64_t sub_18B84FAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC20A68();

  return sub_18B84FBCC(a1, v6, a2, a3);
}

uint64_t sub_18B84FB4C(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a3;
  }

  MEMORY[0x18CFFD690](*&v7);
  if (a4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a4;
  }

  MEMORY[0x18CFFD690](*&v8);
  if (a1 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a1;
  }

  MEMORY[0x18CFFD690](*&v9);
  if (a2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a2;
  }

  return MEMORY[0x18CFFD690](*&v10);
}

unint64_t sub_18B84FBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_18BC20AE8();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_18B84FD64()
{
  v0 = type metadata accessor for SFFluidCollectionView.Element();
  v1 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    WitnessTable = swift_getWitnessTable();
    v3 = sub_18BB32DD8(v1, v0, WitnessTable);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  return v3;
}

uint64_t _s12MobileSafari31SFFluidTabOverviewSupplementaryO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_18B833990(a1, v8);
  sub_18B833990(a2, &v10);
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        if (*(&v11 + 1) == 3)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

LABEL_10:
      sub_18B833990(v8, v7);
      if (*(&v11 + 1) >= 4uLL)
      {
        v5[0] = v10;
        v5[1] = v11;
        v6 = v12;
        v3 = MEMORY[0x18CFFCF40](v7, v5);
        sub_18B831014(v5);
        sub_18B831014(v7);
        sub_18B833D9C(v8);
        return v3 & 1;
      }

      sub_18B831014(v7);
      goto LABEL_13;
    }

    if (*(&v11 + 1) != 2)
    {
      goto LABEL_13;
    }

LABEL_15:
    sub_18B833D9C(v8);
    v3 = 1;
    return v3 & 1;
  }

  if (!v9)
  {
    if (*(&v11 + 1))
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v9 != 1)
  {
    goto LABEL_10;
  }

  if (*(&v11 + 1) == 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  sub_18B86C4A4(v8);
  v3 = 0;
  return v3 & 1;
}

uint64_t sub_18B84FF2C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(*a2 + 1328);
  v108 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v92 = &v83 - v6;
  v7 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v93 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v99 = &v83 - v8;
  v95 = *(v7 - 8);
  v106 = v95;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v83 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v83 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v83 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v83 - v20;
  v21 = v4[165];
  v22 = v4[167];
  v23 = v4[168];
  v24 = sub_18B8103B0();
  v97 = v21;
  v110 = v21;
  v111 = v5;
  v112 = &type metadata for SFFluidTabOverviewSupplementary;
  v113 = v22;
  v100 = v22;
  v101 = v23;
  v114 = v23;
  v115 = v24;
  v98 = v24;
  v25 = type metadata accessor for SFFluidCollectionView.Element();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v107 = &v83 - v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v83 - v33;
  v109 = v26;
  v35 = *(v26 + 16);
  v102 = a1;
  v36 = a1;
  v38 = v37;
  v35(&v83 - v33, v36, v37, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    (v35)(v28, v34, v38);
    if (!*(swift_projectBox() + 24))
    {
      v61 = v102;
      v62 = sub_18BB3BAAC(v102);
      (*(*a2 + 1384))(v62);
      v63 = (*(v108 + 48))(v11, 1, v5);
      v106[1](v11, v7);
      if (v63 != 1)
      {
        sub_18BB3B934(v61);
      }
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v40 = v107;
    v88 = v34;
    v90 = v38;
    v41 = (v35)(v107, v34, v38);
    v42 = *(*a2 + 1384);
    v43 = v104;
    v87 = *a2 + 1384;
    v86 = v42;
    v42(v41);
    v105 = v5;
    v44 = v108;
    (*(v108 + 16))(v18, v40, v105);
    (*(v44 + 56))(v18, 0, 1, v105);
    v45 = *(TupleTypeMetadata2 + 48);
    v46 = v106;
    v47 = v106[2];
    v48 = v99;
    (v47)(v99, v43, v7);
    v89 = v45;
    (v47)(&v48[v45], v18, v7);
    v49 = v105;
    v91 = v7;
    v52 = *(v44 + 48);
    v50 = v44 + 48;
    v51 = v52;
    if (v52(v48, 1, v105) == 1)
    {
      v53 = v46[1];
      v54 = v91;
      (v53)(v18, v91);
      (v53)(v43, v54);
      v55 = v49;
      if (v51(&v48[v89], 1, v49) == 1)
      {
        (v53)(v48, v91);
        v56 = v102;
        v57 = v108;
        v34 = v88;
        v58 = v100;
        v60 = v97;
        v59 = v98;
LABEL_17:
        v110 = v60;
        v111 = v55;
        v112 = &type metadata for SFFluidTabOverviewSupplementary;
        v113 = v58;
        v114 = v101;
        v115 = v59;
        v80 = *(type metadata accessor for SFFluidCollectionView.LayoutAttributes() + 88);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = *(v56 + v80);
        sub_18B84E858(0x615272656E726F63, 0xEC00000073756964, isUniquelyReferenced_nonNull_native, 0.0);
        *(v56 + v80) = v110;
        sub_18BB3B168(v56);
LABEL_18:
        (*(v57 + 8))(v107, v55);
        v38 = v90;
        return (*(v109 + 8))(v34, v38);
      }

      v106 = v53;
      v84 = v51;
      v85 = v50;
      v56 = v102;
      v57 = v108;
      v34 = v88;
      v58 = v100;
      v67 = v91;
    }

    else
    {
      v64 = v96;
      (v47)(v96, v48, v91);
      v65 = v89;
      v85 = v50;
      v84 = v51;
      if (v51(&v48[v89], 1, v49) != 1)
      {
        v75 = v108;
        v76 = v92;
        (*(v108 + 32))(v92, &v48[v65], v49);
        LODWORD(TupleTypeMetadata2) = sub_18BC20AE8();
        v77 = *(v75 + 8);
        v77(v76, v105);
        v78 = v106[1];
        v57 = v75;
        v79 = v91;
        (v78)(v18, v91);
        (v78)(v104, v79);
        v77(v96, v105);
        v55 = v105;
        v106 = v78;
        v68 = (v78)(v48, v79);
        v56 = v102;
        v34 = v88;
        v58 = v100;
        v60 = v97;
        v59 = v98;
        v67 = v79;
        if (TupleTypeMetadata2)
        {
          goto LABEL_17;
        }

LABEL_14:
        v69 = (*(*a2 + 1408))(v68);
        v110 = v60;
        v111 = v55;
        v112 = &type metadata for SFFluidTabOverviewSupplementary;
        v113 = v58;
        v114 = v101;
        v115 = v59;
        v70 = *(type metadata accessor for SFFluidCollectionView.LayoutAttributes() + 88);
        v71 = swift_isUniquelyReferenced_nonNull_native();
        v110 = *(v56 + v70);
        v72 = sub_18B84E858(0x615272656E726F63, 0xEC00000073756964, v71, v69);
        *(v56 + v70) = v110;
        v73 = v94;
        v86(v72);
        v74 = v84(v73, 1, v55);
        (v106)(v73, v67);
        if (v74 != 1)
        {
          sub_18BB3B934(v56);
        }

        goto LABEL_18;
      }

      v66 = v106[1];
      v67 = v91;
      (v66)(v18, v91);
      v106 = v66;
      (v66)(v104, v67);
      v57 = v108;
      (*(v108 + 8))(v64, v49);
      v56 = v102;
      v34 = v88;
      v58 = v100;
      v55 = v49;
    }

    v68 = (*(v93 + 8))(v48, TupleTypeMetadata2);
    v60 = v97;
    v59 = v98;
    goto LABEL_14;
  }

  return (*(v109 + 8))(v34, v38);
}

unint64_t sub_18B8509C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7018);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7020);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = *(v3 + 72);
    v21 = v8;
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7018);
      result = sub_18B83B1C8(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
      sub_18B7CF39C(v5, v13 + *(*(v14 - 8) + 72) * v12, &unk_1EA9D92F0);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40);
      result = sub_18B7CF39C(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &unk_1EA9D4F40);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v20;
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

unint64_t sub_18B850C4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7010);
    v3 = sub_18BC21D88();
    sub_18BC1E1A8();
    for (i = (a1 + 64); ; i += 5)
    {
      v12 = *(i - 1);
      v13 = *(i - 2);
      v5 = *i;
      sub_18BC1E3F8();
      result = sub_18B86F764(*&v13, *(&v13 + 1), *&v12, *(&v12 + 1));
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = (v3[6] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_18B850D54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7028);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7030);
    v7 = sub_18BC21D88();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7028);
      result = sub_18BB8B3DC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s7SectionVMa_1();
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s7SectionVMa_1);
      v16 = (v7[7] + 32 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

void sub_18B850F58()
{
  v3 = v0;
  v4 = sub_18B82FEA0();
  v5 = sub_18BC20B98();
  [v4 setAccessibilityIdentifier_];

  v6 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
  [*&v3[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView] setAutomaticallyAdjustsScrollIndicatorInsets_];
  [*&v3[v6] setClipsToBounds_];
  v7 = *&v3[v6];
  v9 = sub_18B812E34(&qword_1EA9D4F08, v8, type metadata accessor for TabOverview);
  v10 = MEMORY[0x1E69E7D40];
  v11 = v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x88);
  swift_beginAccess();
  *(v11 + 1) = v9;
  swift_unknownObjectWeakAssign();
  [*&v3[v6] setContentInsetAdjustmentBehavior_];
  [*&v3[v6] setDelegate_];
  v12 = *&v3[v6];
  v14 = sub_18B812E34(&qword_1EA9D51B8, v13, type metadata accessor for TabOverview);
  v15 = v12 + *((*v10 & *v12) + 0xB8);
  swift_beginAccess();
  *(v15 + 1) = v14;
  swift_unknownObjectWeakAssign();
  v16 = *&v3[v6];
  v18 = sub_18B812E34(&qword_1EA9D51C0, v17, type metadata accessor for TabOverview);
  v19 = v16 + *((*v10 & *v16) + 0xC0);
  swift_beginAccess();
  *(v19 + 1) = v18;
  swift_unknownObjectWeakAssign();
  v20 = *(*&v3[v6] + *((*v10 & **&v3[v6]) + 0x90));
  v21 = sub_18B864B68();
  v22 = qword_1EA9D95D0;
  swift_beginAccess();
  if (*(v20 + v22) >> 62 && sub_18BC219A8() < 0)
  {
    __break(1u);
  }

  else
  {
    v23 = v20;
    sub_18B86456C(0, 0, v21);
    swift_endAccess();
    v24 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    swift_beginAccess();
    v21[2] = sub_18B9D51B4;
    v21[3] = v24;

    sub_18B864788(v21, 0);

    v25 = *&v3[v6];
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = (v25 + *((*v10 & *v25) + 0x850));
    *v27 = sub_18B9D521C;
    v27[1] = v26;
    sub_18BC1E1A8();

    v28 = *&v3[v6];
    v29 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v30 = (v28 + *((*v10 & *v28) + 0xA0));
    swift_beginAccess();
    v31 = *v30;
    *v30 = sub_18B9D5224;
    v30[1] = v29;
    v32 = v28;
    sub_18B7B171C(v31);

    v33 = *&v3[v6];
    v34 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v35 = (v33 + *((*v10 & *v33) + 0xA8));
    swift_beginAccess();
    v36 = *v35;
    *v35 = sub_18B9D522C;
    v35[1] = v34;
    v37 = v33;
    sub_18B7B171C(v36);

    v38 = *&v3[v6];
    v40 = sub_18B812E34(&qword_1EA9D51C8, v39, type metadata accessor for TabOverview);
    v41 = v38 + *((*v10 & *v38) + 0xD0);
    swift_beginAccess();
    *(v41 + 1) = v40;
    swift_unknownObjectWeakAssign();
    v42 = *&v3[v6];
    v43 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v44 = (v42 + *((*v10 & *v42) + 0xB0));
    swift_beginAccess();
    v45 = *v44;
    *v44 = sub_18B9D5234;
    v44[1] = v43;
    v46 = v42;
    sub_18B7B171C(v45);

    v2 = *&v3[v6];
    v15 = *(v2 + *((*v10 & *v2) + 0x190));
    if (!v15)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D51D0);
    v20 = swift_allocObject();
    v1 = MEMORY[0x1E69E7CC0] >> 62;
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_4;
    }
  }

  if (!sub_18BC219A8())
  {
LABEL_4:
    v47 = v2;
    sub_18BC1E1A8();
    v48 = MEMORY[0x1E69E7CD0];
    goto LABEL_5;
  }

  v136 = v2;
  sub_18BC1E1A8();
  sub_18BA2925C(MEMORY[0x1E69E7CC0]);
LABEL_5:
  v20[3] = 0;
  v20[4] = v48;
  v20[2] = sub_18B9BBF18;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v148 = *(v15 + 3);
  *(v15 + 3) = 0x8000000000000000;
  sub_18B831068(v20, 0x746954656772616CLL, 0xEA0000000000656CLL, isUniquelyReferenced_nonNull_native);
  *(v15 + 3) = v148;
  swift_endAccess();

  v50 = *&v3[v6];
  v51 = *(v50 + *((*v10 & *v50) + 0x190));
  if (v51)
  {
    v52 = swift_allocObject();
    if (v1 && sub_18BC219A8())
    {
      v53 = v50;
      sub_18BC1E1A8();
      sub_18BA2925C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v55 = v50;
      sub_18BC1E1A8();
      v54 = MEMORY[0x1E69E7CD0];
    }

    v52[3] = 0;
    v52[4] = v54;
    v52[2] = sub_18B9BBF30;
    swift_beginAccess();
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v148 = *(v51 + 24);
    *(v51 + 24) = 0x8000000000000000;
    sub_18B831068(v52, 0x79616C7265766FLL, 0xE700000000000000, v56);
    *(v51 + 24) = v148;
    swift_endAccess();

    v57 = *&v3[v6];
    v58 = *(v57 + *((*v10 & *v57) + 0x190));
    if (!v58)
    {
      goto LABEL_41;
    }

    v59 = swift_allocObject();
    if (v1 && sub_18BC219A8())
    {
      v60 = v57;
      sub_18BC1E1A8();
      sub_18BA2925C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v62 = v57;
      sub_18BC1E1A8();
      v61 = MEMORY[0x1E69E7CD0];
    }

    v59[3] = 0;
    v59[4] = v61;
    v59[2] = sub_18B9BBF48;
    swift_beginAccess();
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v148 = *(v58 + 24);
    *(v58 + 24) = 0x8000000000000000;
    sub_18B831068(v59, 0xD000000000000013, 0x800000018BC62760, v63);
    *(v58 + 24) = v148;
    swift_endAccess();

    v64 = *&v3[v6];
    v65 = *(v64 + *((*v10 & *v64) + 0x190));
    if (!v65)
    {
      goto LABEL_42;
    }

    v66 = swift_allocObject();
    if (v1 && sub_18BC219A8())
    {
      v67 = v64;
      sub_18BC1E1A8();
      sub_18BA2925C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v69 = v64;
      sub_18BC1E1A8();
      v68 = MEMORY[0x1E69E7CD0];
    }

    v66[3] = 0;
    v66[4] = v68;
    v66[2] = sub_18B9BBF60;
    swift_beginAccess();
    v70 = swift_isUniquelyReferenced_nonNull_native();
    v148 = *(v65 + 24);
    *(v65 + 24) = 0x8000000000000000;
    sub_18B831068(v66, 0x6142686372616573, 0xE900000000000072, v70);
    *(v65 + 24) = v148;
    swift_endAccess();

    v71 = *&v3[v6];
    v72 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v73 = (v71 + *((*v10 & *v71) + 0x858));
    *v73 = sub_18B9D523C;
    v73[1] = v72;
    sub_18BC1E1A8();

    [*&v3[v6] setTracksImmediatelyWhileDecelerating_];
    v74 = *&v3[v6];
    v75 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D51D8));
    v76 = v74;
    v77 = [v75 init];
    sub_18B865324(v77);

    v78 = *&v3[v6];
    v79 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v80 = *(v78 + *((*v10 & *v78) + 0x190));
    if (!v80)
    {
      goto LABEL_43;
    }

    v81 = swift_allocObject();
    v137 = v6;
    if (v1 && sub_18BC219A8())
    {
      v82 = v78;
      sub_18BC1E1A8();
      sub_18BC1E1A8();
      sub_18BA2925C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v84 = v78;
      sub_18BC1E1A8();
      sub_18BC1E1A8();
      v83 = MEMORY[0x1E69E7CD0];
    }

    v81[3] = v79;
    v81[4] = v83;
    v81[2] = sub_18B9D5244;
    swift_beginAccess();
    sub_18BC1E1A8();
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v148 = *(v80 + 24);
    *(v80 + 24) = 0x8000000000000000;
    sub_18B831068(v81, 0x776569566D657469, 0xE800000000000000, v85);
    *(v80 + 24) = v148;
    swift_endAccess();

    v87 = *&v3[OBJC_IVAR___SFTabOverview_contentBelowSearchBarView];
    v88 = v87[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred];
    v87[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred] = 1;
    if (v88 & 1) == 0 && (v89 = sub_18B7DE654(), [v89 value], v91 = v90, v89, v92 = swift_allocObject(), *(v92 + 16) = v87, *(v92 + 24) = v91, v93 = objc_opt_self(), v94 = swift_allocObject(), *(v94 + 16) = sub_18B7EA1B8, *(v94 + 24) = v92, v95 = swift_allocObject(), *(v95 + 16) = sub_18B9D53AC, *(v95 + 24) = v94, *&v140 = sub_18B9D53B0, *(&v140 + 1) = v95, *&aBlock = MEMORY[0x1E69E9820], *(&aBlock + 1) = 1107296256, *&v139 = sub_18B7E3BF4, *(&v139 + 1) = &block_descriptor_633, v96 = _Block_copy(&aBlock), v97 = v87, sub_18BC1E1A8(), sub_18BC1E1A8(), , objc_msgSend(v93, sel_performWithoutAnimation_, v96), _Block_release(v96), LOBYTE(v93) = swift_isEscapingClosureAtFileLocation(), , , v86 = , (v93))
    {
      __break(1u);
    }

    else
    {
      v98 = *&v3[OBJC_IVAR___SFTabOverview_gridLayout];
      v99 = (*(*v98 + 784))(v86, 16.0, 16.0);
      *((*(*v98 + 848))(v99) + 24) = 0x4030000000000000;

      (*(*v98 + 880))(v100, 0.71);
      v101 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v102 = &v3[OBJC_IVAR___SFTabOverview_hiddenItems];
      swift_beginAccess();
      *v102 = sub_18B9D527C;
      v102[1] = v101;

      v103 = [v3 traitCollection];
      swift_beginAccess();
      sub_18B865910(v103);
      swift_endAccess();

      v104 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v105 = &v3[OBJC_IVAR___SFTabOverview_itemsWithHiddenThumbnail];
      swift_beginAccess();
      *v105 = sub_18B9D5284;
      v105[1] = v104;

      v106 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v107 = &v3[OBJC_IVAR___SFTabOverview_itemsWithHiddenTitle];
      swift_beginAccess();
      *v107 = sub_18B9D528C;
      v107[1] = v106;

      v108 = *&v3[OBJC_IVAR___SFTabOverview_overlayContainerView];
      v109 = v108[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred];
      v108[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred] = 1;
      if ((v109 & 1) != 0 || (v110 = sub_18B7DE654(), [v110 value], v112 = v111, v110, v113 = swift_allocObject(), *(v113 + 16) = v108, *(v113 + 24) = v112, v114 = objc_opt_self(), v115 = swift_allocObject(), *(v115 + 16) = sub_18B9D53B4, *(v115 + 24) = v113, v116 = swift_allocObject(), *(v116 + 16) = sub_18B9D53AC, *(v116 + 24) = v115, *&v140 = sub_18B9D53B0, *(&v140 + 1) = v116, *&aBlock = MEMORY[0x1E69E9820], *(&aBlock + 1) = 1107296256, *&v139 = sub_18B7E3BF4, *(&v139 + 1) = &block_descriptor_651, v117 = _Block_copy(&aBlock), v118 = v108, sub_18BC1E1A8(), sub_18BC1E1A8(), , objc_msgSend(v114, sel_performWithoutAnimation_, v117), _Block_release(v117), LOBYTE(v114) = swift_isEscapingClosureAtFileLocation(), , , , (v114 & 1) == 0))
      {
        v119 = *&v3[OBJC_IVAR___SFTabOverview_searchBarContainerView];
        v120 = v119[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred];
        v119[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred] = 1;
        if ((v120 & 1) != 0 || (v121 = sub_18B7DE654(), [v121 value], v123 = v122, v121, v124 = swift_allocObject(), *(v124 + 16) = v119, *(v124 + 24) = v123, v125 = objc_opt_self(), v126 = swift_allocObject(), *(v126 + 16) = sub_18B9D53B4, *(v126 + 24) = v124, v127 = swift_allocObject(), *(v127 + 16) = sub_18B9D53AC, *(v127 + 24) = v126, *&v140 = sub_18B9D53B0, *(&v140 + 1) = v127, *&aBlock = MEMORY[0x1E69E9820], *(&aBlock + 1) = 1107296256, *&v139 = sub_18B7E3BF4, *(&v139 + 1) = &block_descriptor_666, v128 = _Block_copy(&aBlock), v129 = v119, sub_18BC1E1A8(), sub_18BC1E1A8(), , objc_msgSend(v125, sel_performWithoutAnimation_, v128), _Block_release(v128), LOBYTE(v125) = swift_isEscapingClosureAtFileLocation(), , , , (v125 & 1) == 0))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
          v130 = swift_allocObject();
          *(v130 + 16) = xmmword_18BC3E410;
          v131 = sub_18BC1FA18();
          v132 = MEMORY[0x1E69DC128];
          *(v130 + 32) = v131;
          *(v130 + 40) = v132;
          MEMORY[0x18CFFCA40](v130, sel_setNeedsLayout);
          swift_unknownObjectRelease();

          v133 = swift_allocObject();
          *(v133 + 16) = xmmword_18BC3E410;
          v134 = sub_18BC1FF28();
          v135 = MEMORY[0x1E69DC2B0];
          *(v133 + 32) = v134;
          *(v133 + 40) = v135;
          MEMORY[0x18CFFCA40](v133, sel_contentSizeCategoryDidChange);
          swift_unknownObjectRelease();

          [*&v3[v137] addSubview_];
          [*&v3[v137] addSubview_];
          [*&v3[v137] addSubview_];
          [*&v3[v137] addSubview_];
          [v3 addSubview_];
          [v3 addSubview_];
          v139 = 0u;
          v140 = 0u;
          aBlock = 0u;
          v141 = 1;
          v142 = 0u;
          v143 = 0u;
          v144 = 0u;
          v145 = 0u;
          v146 = 0u;
          v147 = 0;
          sub_18B830410(&aBlock);
          sub_18B988BAC(&aBlock, &qword_1EA9D51B0);
          return;
        }

        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_18B852478()
{

  return swift_deallocObject();
}

uint64_t sub_18B8524C0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B8524F8()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B852530()
{

  return swift_deallocObject();
}

uint64_t sub_18B85268C(void (*a1)(uint64_t), void (*a2)(void), __n128 a3)
{
  v14 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = sub_18B82FEA0();
  memset(v15, 0, sizeof(v15));
  v16 = v14;
  swift_storeEnumTagMultiPayload();
  v9 = sub_18B8323E0(v15, v7);

  sub_18B988BAC(v7, &unk_1EA9D92F0);
  v10 = sub_18B833D9C(v15);
  if (v9)
  {
    a1(v10);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      a2(0);
      return swift_dynamicCastClassUnconditional();
    }
  }

  return 0;
}

void sub_18B8527F0(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = OBJC_IVAR___SFTabOverview_peekingOverlayView;
  v4 = *&v1[OBJC_IVAR___SFTabOverview_peekingOverlayView];
  if (v2 != 1)
  {
    if (v4)
    {
      v6 = v2;
      v7 = v4;
    }

    else
    {
      _s18PeekingOverlayViewCMa();
      v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v9 = v2;
      v10 = [v8 init];
      v11 = *&v1[OBJC_IVAR___SFTabOverview_overlayContainerView];
      v12 = v1;
      v7 = v10;
      [v11 addSubview_];
      v13 = *&v12[v3];
      *&v12[v3] = v7;

      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v15 = objc_opt_self();
      v16 = swift_allocObject();
      *(v16 + 16) = sub_18B86D0A0;
      *(v16 + 24) = v14;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_18B9D53AC;
      *(v17 + 24) = v16;
      v23[4] = sub_18B9D53B0;
      v23[5] = v17;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 1107296256;
      v23[2] = sub_18B7E3BF4;
      v23[3] = &block_descriptor_576;
      v18 = _Block_copy(v23);
      v19 = v12;
      sub_18BC1E1A8();
      sub_18BC1E1A8();

      [v15 performWithoutAnimation_];
      _Block_release(v18);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        __break(1u);
        return;
      }

      v4 = 0;
    }

    v20 = *&v7[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_image];
    *&v7[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_image] = v2;
    sub_18B86D6D0(v2);
    v21 = v4;
    sub_18B86D6D0(v2);
    v22 = v21;
    sub_18B86D6E0(v20);

    sub_18B86D99C(v2);
    sub_18B86D99C(v2);

    return;
  }

  if (v4)
  {
    [*&v1[OBJC_IVAR___SFTabOverview_peekingOverlayView] removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = 0;
}

id sub_18B852AE0()
{
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_blurView];
  v2 = [v1 layer];
  [v2 setContentsScale_];

  v3 = [v1 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18BC3E410;
  v5 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v6 = sub_18BC20EC8();
  [v5 setValue:v6 forKey:*MEMORY[0x1E6979B78]];

  v7 = sub_18BC1EEA8();
  [v5 setValue:v7 forKey:*MEMORY[0x1E6979BA8]];

  *(v4 + 56) = sub_18B852D10();
  *(v4 + 32) = v5;
  v8 = sub_18BC20D88();

  [v3 setFilters_];

  v9 = [v1 layer];
  [v9 setShouldRasterize_];

  v10 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_fillView];
  v11 = [objc_opt_self() quaternarySystemFillColor];
  [v10 setBackgroundColor_];

  [v0 addSubview_];

  return [v0 addSubview_];
}

unint64_t sub_18B852D10()
{
  result = qword_1EA9D40B8;
  if (!qword_1EA9D40B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D40B8);
  }

  return result;
}

void sub_18B852D90(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = MEMORY[0x1E69E7D40];
  v12 = (v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x850));
  *v12 = sub_18B814EE4;
  v12[1] = 0;
  v13 = (v5 + *((*v11 & *v5) + 0x858));
  *v13 = CGRectMake;
  v13[1] = 0;
  v14 = *((*v11 & *v5) + 0x860);
  *(v5 + v14) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v5 + *((*v11 & *v5) + 0x868)) = 1;
  *(v5 + *((*v11 & *v5) + 0x870)) = 0;
  *(v5 + *((*v11 & *v5) + 0x878)) = 1;
  *(v5 + *((*v11 & *v5) + 0x880)) = 1;
  *(v5 + *((*v11 & *v5) + 0x888)) = 1;
  *(v5 + *((*v11 & *v5) + 0x890)) = 1;

  sub_18B852F68(a1, a2, a3, a4, a5);
}

void sub_18B852F68(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = MEMORY[0x1E69E7D40];
  v12 = MEMORY[0x1E69E7CD0];
  *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x80)) = MEMORY[0x1E69E7CD0];
  *(v5 + *((*v11 & *v5) + 0x88) + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = *((*v11 & *v5) + 0x90);
  *(v5 + v13) = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D51F8)) init];
  *(v5 + *((*v11 & *v5) + 0x98)) = 1;
  v14 = (v5 + *((*v11 & *v5) + 0xA0));
  *v14 = 0;
  v14[1] = 0;
  v15 = (v5 + *((*v11 & *v5) + 0xA8));
  *v15 = 0;
  v15[1] = 0;
  v16 = (v5 + *((*v11 & *v5) + 0xB0));
  *v16 = 0;
  v16[1] = 0;
  *(v5 + *((*v11 & *v5) + 0xB8) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v11 & *v5) + 0xC0) + 8) = 0;
  swift_unknownObjectWeakInit();
  v17 = *((*v11 & *v5) + 0xC8);
  v18 = _s4ItemVMa_2();
  v19 = *(*(v18 - 8) + 56);
  v19(v5 + v17, 1, 1, v18);
  *(v5 + *((*v11 & *v5) + 0xD0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v11 & *v5) + 0xD8)) = 0;
  *(v5 + *((*v11 & *v5) + 0xE0)) = 0;
  *(v5 + *((*v11 & *v5) + 0xE8)) = v12;
  *(v5 + *((*v11 & *v5) + 0xF0)) = 0;
  *(v5 + *((*v11 & *v5) + 0xF8)) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = v12;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_18BC219A8())
    {
      v21 = sub_18BA29248(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CD0];
    }
  }

  *(v5 + *((*v11 & *v5) + 0x100)) = v21;
  *(v5 + *((*v11 & *v5) + 0x108)) = 0;
  *(v5 + *((*v11 & *v5) + 0x110)) = 0;
  v19(v5 + *((*v11 & *v5) + 0x118), 1, 1, v18);
  *(v5 + *((*v11 & *v5) + 0x120)) = v20;
  *(v5 + *((*v11 & *v5) + 0x128)) = 0;
  *(v5 + *((*v11 & *v5) + 0x130)) = 0;
  *(v5 + *((*v11 & *v5) + 0x138)) = 0;
  *(v5 + *((*v11 & *v5) + 0x140)) = 0;
  v22 = *((*v11 & *v5) + 0x148);
  type metadata accessor for Assertion();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = 0;
  *(v5 + v22) = v23;
  v24 = *((*v11 & *v5) + 0x150);
  *(v5 + v24) = sub_18B855608(v20);
  v25 = (v5 + *((*v11 & *v5) + 0x158));
  v26 = *(MEMORY[0x1E695F050] + 16);
  *v25 = *MEMORY[0x1E695F050];
  v25[1] = v26;
  *(v5 + *((*v11 & *v5) + 0x160)) = v12;
  v27 = v5 + *((*v11 & *v5) + 0x168);
  *v27 = 0;
  *(v27 + 4) = 0;
  v27[10] = 0;
  v28 = (v5 + *((*v11 & *v5) + 0x170));
  v29 = *(MEMORY[0x1E69DDCE0] + 16);
  *v28 = *MEMORY[0x1E69DDCE0];
  v28[1] = v29;
  v30 = (v5 + *((*v11 & *v5) + 0x178));
  *v30 = 0;
  v30[1] = 0;
  *(v5 + *((*v11 & *v5) + 0x180)) = 0;
  *(v5 + *((*v11 & *v5) + 0x188)) = v20;
  *(v5 + *((*v11 & *v5) + 0x190)) = 0;
  *(v5 + *((*v11 & *v5) + 0x198)) = v12;
  *(v5 + *((*v11 & *v5) + 0x1A0)) = 0;
  v31 = *((*v11 & *v5) + 0x1A8);
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
  (*(*(updated - 8) + 56))(v5 + v31, 1, 1, updated);
  v33 = *((*v11 & *v5) + 0x1B0);
  sub_18B81F588(__src);
  memcpy(v5 + v33, __src, 0x139uLL);
  *(v5 + *((*v11 & *v5) + 0x1C8)) = 0;
  v34 = v5 + *((*v11 & *v5) + 0x1D0);
  *v34 = sub_18B8509C8(v20);
  *(v34 + 1) = sub_18B850C4C(v20);
  *(v34 + 2) = sub_18B850C04(v20);
  *(v34 + 24) = vdupq_n_s64(0x4090000000000000uLL);
  *(v34 + 5) = 0;
  *(v34 + 6) = 0;
  v34[56] = 1;
  *(v5 + *((*v11 & *v5) + 0x1D8)) = a1;
  v35 = objc_opt_self();
  sub_18BC1E1A8();
  v36 = [v35 behaviorWithDampingRatio:1.0 response:0.3];
  if (v36)
  {
    v37 = v36;
    [v36 setTrackingDampingRatio:1.0 response:0.08 dampingRatioSmoothing:0.08 responseSmoothing:0.08];
    *(v5 + *((*v11 & *v5) + 0x1B8)) = v37;
    v38 = v5 + *((*v11 & *v5) + 0x1C0);
    *v38 = 0;
    v38[2] = 0;
    v39 = v37;
    v66.receiver = v5;
    v66.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5110);
    v40 = objc_msgSendSuper2(&v66, sel_initWithFrame_, a2, a3, a4, a5);
    swift_unknownObjectUnownedAssign();
    v41 = *((*v11 & *v40) + 0x1D8);
    swift_beginAccess();
    v42 = *(v40 + v41);
    v43 = sub_18B7B0B08(&qword_1EA9D5108, &unk_1EA9D5110);
    v44 = *(*v42 + 440);
    v45 = v40;
    sub_18BC1E1A8();
    v44(v40, v43);

    v46 = *(**(v40 + v41) + 464);
    v47 = v45;
    sub_18BC1E1A8();
    v46(v40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5200);
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = v47;
    *(v48 + 24) = sub_18B8638C0(MEMORY[0x1E69E7CC0]);
    swift_unknownObjectWeakAssign();

    *(v49 + *((*v11 & *v49) + 0x190)) = v48;

    v50 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];

    v51 = *((*v11 & *v49) + 0xF0);
    v52 = *(v49 + v51);
    *(v49 + v51) = v50;

    if (v50)
    {
      [v49 addInteraction_];
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5208);
      v54 = objc_allocWithZone(v53);
      *&v54[qword_1EA9D6138] = 0;
      swift_unknownObjectUnownedInit();
      v65.receiver = v54;
      v65.super_class = v53;
      v55 = v49;
      v56 = objc_msgSendSuper2(&v65, sel_init);
      v57 = sub_18B8639C4();
      [v55 addInteraction_];

      v58 = *((*v11 & *v55) + 0x108);
      v59 = *(v55 + v58);
      *(v55 + v58) = v56;

      v60 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5210));
      v61 = sub_18B863A3C(v55);
      v62 = *((*v11 & *v55) + 0x110);
      v63 = *(v55 + v62);
      *(v55 + v62) = v61;

      v64 = sub_18B8649E0();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_18B853B5C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *a6)
{
  v104 = a5;
  v103 = a4;
  v10 = _s4PageVMa_0();
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v111 = v11;
  v105 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5340);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v98 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v98 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v98 - v22;
  if ((a3 & 1) == 0 && *(a6 + qword_1EA9D6BB8 + 1) != 1)
  {
    return;
  }

  LODWORD(v110) = a3;
  v24 = *((*MEMORY[0x1E69E7D40] & *a6) + 0x88);
  swift_beginAccess();
  v102 = v24;
  sub_18B7CA054(a6 + v24, v172, &unk_1EA9D53A0);
  v112 = a2;
  v113 = a1;
  v107 = a6;
  if (!*&v172[0])
  {
    sub_18B988BAC(v172, &unk_1EA9D53A0);
    if ((v110 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v173[0] = v172[0];
  v173[1] = v172[1];
  v173[2] = v172[2];
  v173[3] = v172[3];
  sub_18B7CC308();
  sub_18B82F1AC(v173, v23);

  sub_18B82D0A4(a2, v20, _s4PageVMa_0);
  v26 = v108;
  v25 = v109;
  (*(v108 + 56))(v20, 0, 1, v109);
  v27 = *(v12 + 48);
  sub_18B7CA054(v23, v14, &unk_1EA9DBE90);
  sub_18B7CA054(v20, &v14[v27], &unk_1EA9DBE90);
  v28 = *(v26 + 48);
  if (v28(v14, 1, v25) != 1)
  {
    sub_18B7CA054(v14, v17, &unk_1EA9DBE90);
    if (v28(&v14[v27], 1, v25) != 1)
    {
      v31 = v105;
      sub_18B82FD54(&v14[v27], v105, _s4PageVMa_0);
      LODWORD(v106) = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82D1D4(v31, _s4PageVMa_0);
      sub_18B988BAC(v20, &unk_1EA9DBE90);
      sub_18B988BAC(v23, &unk_1EA9DBE90);
      sub_18B82D1D4(v17, _s4PageVMa_0);
      sub_18B988BAC(v14, &unk_1EA9DBE90);
      a2 = v112;
      v30 = v113;
      a6 = v107;
      if (v106)
      {
        goto LABEL_14;
      }

LABEL_12:
      memset(v172, 0, 64);
      goto LABEL_15;
    }

    sub_18B988BAC(v20, &unk_1EA9DBE90);
    sub_18B988BAC(v23, &unk_1EA9DBE90);
    sub_18B82D1D4(v17, _s4PageVMa_0);
    a6 = v107;
LABEL_11:
    sub_18B988BAC(v14, &qword_1EA9D5340);
    a2 = v112;
    v30 = v113;
    goto LABEL_12;
  }

  sub_18B988BAC(v20, &unk_1EA9DBE90);
  sub_18B988BAC(v23, &unk_1EA9DBE90);
  v29 = v28(&v14[v27], 1, v25);
  a6 = v107;
  if (v29 != 1)
  {
    goto LABEL_11;
  }

  sub_18B988BAC(v14, &unk_1EA9DBE90);
  a2 = v112;
  v30 = v113;
LABEL_14:
  sub_18B9D50A0(v173, v172);
LABEL_15:
  *(v30 + OBJC_IVAR___SFTabOverview_needsResetLayout) = 1;
  sub_18B7CA054(v172, v171, &unk_1EA9D53A0);
  v32 = OBJC_IVAR___SFTabOverview_targetScrollPositionForNextLayoutPass;
  swift_beginAccess();
  sub_18B7FD070(v171, v30 + v32, &unk_1EA9D53A0);
  swift_endAccess();
  v33 = sub_18B82FEA0();
  [v33 setNeedsLayout];

  sub_18B988BAC(v172, &unk_1EA9D53A0);
  sub_18B8303BC(v173);
  if ((v110 & 1) == 0)
  {
LABEL_16:
    if (*(a6 + qword_1EA9D6BB8) != 1)
    {
      return;
    }
  }

LABEL_17:
  v34 = a6 + qword_1EA9D6BA0;
  swift_beginAccess();
  sub_18B7DFE48((v34 + 16), v170);
  v35 = (a6 + qword_1EA9D6BA8);
  v36 = *(a6 + qword_1EA9D6BA8);
  sub_18BC1E1A8();
  v37 = v36(a2);
  v39 = v38;
  v41 = v40;
  v43 = v42;

  *v170 = v37;
  v170[1] = v39;
  v170[2] = v41;
  v170[3] = v43;
  swift_unknownObjectWeakAssign();
  sub_18B7DFE48(v170, v173);
  sub_18B9BB008(v173);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v110 = _s4PageVMa_0;
  v45 = a2;
  v46 = v105;
  sub_18B82D0A4(v45, v105, _s4PageVMa_0);
  v47 = (*(v108 + 80) + 24) & ~*(v108 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v44;
  v106 = _s4PageVMa_0;
  sub_18B82FD54(v46, v48 + v47, _s4PageVMa_0);
  v49 = (v113 + OBJC_IVAR___SFTabOverview_didScroll);
  *v49 = sub_18B861A20;
  v49[1] = v48;

  memcpy(v171, v35 + 5, sizeof(v171));
  v100 = v171[35];
  v101 = v171[37];
  v98 = v171[9];
  v99 = v171[33];
  v50 = v35[6];
  v166 = v35[5];
  v167 = v50;
  v51 = v35[8];
  v168 = v35[7];
  v169 = v51;
  v52 = v35[15];
  v159 = v35[14];
  v160 = v52;
  v53 = v35[11];
  v155 = v35[10];
  v156 = v53;
  v54 = v35[13];
  v157 = v35[12];
  v158 = v54;
  v55 = v35[16];
  v56 = v35[17];
  v57 = v35[19];
  v165 = v35[20];
  v58 = v35[18];
  v164 = v57;
  v163 = v58;
  v161 = v55;
  v162 = v56;
  v154 = v35[24];
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = v110;
  sub_18B82D0A4(v112, v46, v110);
  v61 = swift_allocObject();
  v108 = v61;
  *(v61 + 16) = v59;
  v62 = v106;
  sub_18B82FD54(v46, v61 + v47, v106);
  sub_18B854B44(v171, v173);

  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18B82D0A4(v112, v46, v60);
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  sub_18B82FD54(v46, v64 + v47, v62);

  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = swift_allocObject();
  *(v66 + 24) = &off_1EFF1DFD8;
  swift_unknownObjectUnownedInit();
  v67 = swift_allocObject();
  *(v67 + 16) = v65;
  *(v67 + 24) = v66;

  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = v46;
  sub_18B82D0A4(v112, v46, v110);
  v70 = swift_allocObject();
  *(v70 + 16) = v68;
  v71 = v46;
  v72 = v106;
  sub_18B82FD54(v71, v70 + v47, v106);

  v172[0] = v166;
  v172[1] = v167;
  v172[2] = v168;
  v172[3] = v169;
  *&v172[4] = sub_18BA59E88;
  *(&v172[4] + 1) = v108;
  v172[13] = v163;
  v172[14] = v164;
  v172[15] = v165;
  v172[9] = v159;
  v172[10] = v160;
  v172[12] = v162;
  v172[11] = v161;
  v172[5] = v155;
  v172[6] = v156;
  v172[8] = v158;
  v172[7] = v157;
  *&v172[16] = sub_18BA59EA0;
  v99 = v64;
  v100 = v70;
  *(&v172[16] + 1) = v64;
  *&v172[17] = sub_18BA59F50;
  v101 = v67;
  *(&v172[17] + 1) = v67;
  *&v172[18] = sub_18BA59F58;
  *(&v172[18] + 1) = v70;
  v172[19] = v154;
  memcpy(v173, (v113 + OBJC_IVAR___SFTabOverview_handlers), sizeof(v173));
  memcpy((v113 + OBJC_IVAR___SFTabOverview_handlers), v172, 0x140uLL);
  sub_18B854D4C(v173);
  v73 = sub_18B854B44(v172, v133);
  v74 = v107;
  v75 = sub_18B7C2E68(v73);
  swift_unknownObjectWeakAssign();

  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18B82D0A4(v112, v69, v110);
  v77 = swift_allocObject();
  *(v77 + 16) = v76;
  v78 = v112;
  v79 = v72;
  v80 = v113;
  sub_18B82FD54(v69, v77 + v47, v79);
  v81 = (v80 + OBJC_IVAR___SFTabOverview_searchStateDidChange);
  *v81 = sub_18BA5A15C;
  v81[1] = v77;

  v82 = v78 + *(v109 + 20);
  v83 = *(v82 + 144);
  v84 = *(v82 + 112);
  v181 = *(v82 + 128);
  v182 = v83;
  v85 = *(v82 + 176);
  v183 = *(v82 + 160);
  v184 = v85;
  v86 = *(v82 + 80);
  v87 = *(v82 + 48);
  v177 = *(v82 + 64);
  v178 = v86;
  v88 = *(v82 + 80);
  v89 = *(v82 + 112);
  v179 = *(v82 + 96);
  v180 = v89;
  v90 = *(v82 + 16);
  v174[0] = *v82;
  v174[1] = v90;
  v91 = *(v82 + 48);
  v93 = *v82;
  v92 = *(v82 + 16);
  v175 = *(v82 + 32);
  v176 = v91;
  v127 = v177;
  v128 = v88;
  v125 = v175;
  v126 = v87;
  v130 = v84;
  v131 = v181;
  v129 = v179;
  v132 = *(v82 + 144);
  v123 = v93;
  v124 = v92;
  v94 = *(&v182 + 1);
  v95 = v183;
  v121 = *(v82 + 168);
  v122 = *(v82 + 184);
  if (*(v78 + *(v109 + 24)) == 1)
  {
    if (*(v74 + qword_1EA9D6C00 + 8))
    {
      v94 = *(v74 + qword_1EA9D6C00);
      v96 = *(v74 + qword_1EA9D6C00 + 8);
    }

    else
    {
      v94 = 0;
      v96 = 0xE000000000000000;
    }

    sub_18B82B150(v174, v133);
    sub_18BC1E3F8();

    v95 = v96;
  }

  else
  {
    sub_18B82B150(v174, v133);
  }

  sub_18B7CA054(v74 + v102, v133, &unk_1EA9D53A0);
  v97 = *&v133[0];
  sub_18B988BAC(v133, &unk_1EA9D53A0);
  if ((v103 & 1) == 0 || v97)
  {
    memset(v120, 0, sizeof(v120));
  }

  else
  {
    sub_18B854DC4(v78, v120);
  }

  v185[6] = v129;
  v185[7] = v130;
  v185[8] = v131;
  v185[2] = v125;
  v185[3] = v126;
  v185[4] = v127;
  v185[5] = v128;
  v185[0] = v123;
  v185[1] = v124;
  v186 = v132;
  v187 = v94;
  v188 = v95;
  v189 = v121;
  v190 = v122;
  sub_18B85527C(v185, v120, v104);
  sub_18B988BAC(v120, &unk_1EA9D53A0);
  sub_18B7CA0E4(v170);
  v114[6] = v129;
  v114[7] = v130;
  v114[8] = v131;
  v114[2] = v125;
  v114[3] = v126;
  v114[4] = v127;
  v114[5] = v128;
  v114[0] = v123;
  v114[1] = v124;
  v115 = v132;
  v116 = v94;
  v117 = v95;
  v118 = v121;
  v119 = v122;
  sub_18B82B2F0(v114);
  v133[0] = v166;
  v133[1] = v167;
  v133[2] = v168;
  v133[3] = v169;
  v134 = sub_18BA59E88;
  v135 = v108;
  v144 = v163;
  v145 = v164;
  v146 = v165;
  v140 = v159;
  v141 = v160;
  v142 = v161;
  v143 = v162;
  v136 = v155;
  v137 = v156;
  v138 = v157;
  v139 = v158;
  v147 = sub_18BA59EA0;
  v148 = v99;
  v149 = sub_18BA59F50;
  v150 = v101;
  v151 = sub_18BA59F58;
  v152 = v100;
  v153 = v154;
  sub_18B854D4C(v133);
}

uint64_t sub_18B854A30()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B854A68()
{

  return swift_deallocObject();
}

id SFFluidCollectionView.DataSource.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  SFFluidCollectionView.DataSource.Snapshot.init()((v0 + qword_1EA9D95C8));
  SFFluidCollectionView.DataSource.Snapshot.init()((v0 + qword_1EA9D95C0));
  swift_unknownObjectUnownedInit();
  v7 = qword_1EA9D95D0;
  type metadata accessor for SFFluidCollectionView.DataSource.ShadowUpdateSource();
  *(v0 + v7) = sub_18BC20DE8();
  *(v0 + qword_1EA9D95E0) = 0;
  *(v0 + qword_1EA9D95E8) = 0;
  v8 = (v0 + qword_1EA9D95F0);
  *v8 = 0;
  v8[1] = 0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SFFluidCollectionView.DataSource();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_18B854DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s4PageVMa_0();
  if ((*(a1 + *(v5 + 24)) & 1) != 0 || *(a1 + *(v5 + 28)) == 1)
  {
    *(a2 + 56) = 0;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *a2 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    v14 = 0u;
    v15 = 0u;
    return sub_18B8550A8(&v14, 0xD000000000000014, 0x800000018BC62740);
  }

  else
  {
    v7 = qword_1EA9D6C38;
    swift_beginAccess();
    v8 = *(v2 + v7);
    if (*(v8 + 16))
    {
      sub_18BC1E3F8();
      v9 = sub_18B8629FC(a1);
      if (v10)
      {
        sub_18B9D50A0(*(v8 + 56) + (v9 << 6), &v14);

        v11 = v15;
        *a2 = v14;
        *(a2 + 16) = v11;
        v12 = v17;
        *(a2 + 32) = v16;
        *(a2 + 48) = v12;
        return result;
      }
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    *a2 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    memset(v13, 0, sizeof(v13));
    result = sub_18B8550A8(v13, 0xD000000000000014, 0x800000018BC62740);
    if (v14)
    {
      return sub_18B988BAC(&v14, &unk_1EA9D53A0);
    }
  }

  return result;
}

uint64_t SFFluidCollectionView.DataSource.Snapshot.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  sub_18BC20DE8();
  a1[1] = sub_18BC1F078();
  a1[2] = v2;
  v3 = type metadata accessor for SFFluidCollectionView.Element();
  v4 = sub_18BC210E8();
  swift_getTupleTypeMetadata2();
  v5 = sub_18BC20DE8();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_18B7C29AC(v5, v3, v4, WitnessTable);

  a1[3] = v7;
  sub_18BC20DE8();
  result = sub_18BC1F078();
  a1[4] = result;
  a1[5] = v9;
  return result;
}

uint64_t sub_18B8550A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_18B7B1AD4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_18BAA7848(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_18B988BAC(a1, &qword_1EA9D5220);
    sub_18B8551D8(a2, a3, v9);

    return sub_18B988BAC(v9, &qword_1EA9D5220);
  }

  return result;
}

double sub_18B8551D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_18B7C4104(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18BB29D84();
      v10 = v12;
    }

    sub_18B7B1AD4((*(v10 + 56) + 32 * v8), a3);
    sub_18BB5B578(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_18B85527C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18B7CA054(a3, v21, &unk_1EA9D5060);
  sub_18B7CA054(a3, v19, &unk_1EA9D5060);
  sub_18B7CA054(a3, &v15, &unk_1EA9D5060);
  if (*(&v16 + 1))
  {
    v7 = *(*__swift_project_boxed_opaque_existential_1Tm(&v15, *(&v16 + 1)) + 16);
    if (!(v7 >> 62))
    {
      sub_18BC1E1A8();
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      sub_18B988BAC(v21, &unk_1EA9D5060);
      v8 = sub_18B82FEA0();
      v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x1B8);
      v10 = *(v8 + v9);
      *(v8 + v9) = v7;
      v11 = v20 != 0;
      sub_18BC1E1A8();
      sub_18B835E98(a1, v11);
      sub_18B7EBAE8(v7);
      *(v8 + v9) = v10;

      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v15);
  }

  else
  {
    sub_18B988BAC(&v15, &unk_1EA9D5060);
  }

  sub_18B835E98(a1, v22 != 0);
  sub_18B988BAC(v21, &unk_1EA9D5060);
LABEL_7:
  sub_18B7CA054(a2, v14, &unk_1EA9D53A0);
  if (*&v14[0])
  {
    v15 = v14[0];
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v12 = sub_18B82FEA0();
    [v12 layoutIfNeeded];

    [*(v3 + OBJC_IVAR___SFTabOverview____lazy_storage___collectionView) stopScrollingAndZooming];
    sub_18B861588(&v15, a3);
    sub_18B8303BC(&v15);
  }

  else
  {
    sub_18B988BAC(v14, &unk_1EA9D53A0);
  }

  return sub_18B988BAC(v19, &unk_1EA9D5060);
}

uint64_t sub_18B8554D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B855538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B8555A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_18B855608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7228);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7230);
    v7 = sub_18BC21D88();
    v19 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v8, v5, &qword_1EA9D7228);
      result = sub_18B83B1C8(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
      result = sub_18B7CF39C(v5, v13 + *(*(v14 - 8) + 72) * v12, &unk_1EA9D92F0);
      *(v7[7] + 8 * v12) = *&v5[v19];
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      v8 += v9;
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

void sub_18B8557FC()
{
  type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  if (v0 <= 0x3F)
  {
    sub_18B855968();
    if (v1 <= 0x3F)
    {
      sub_18BC21848();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_18B855968()
{
  if (!qword_1EA9D8820)
  {
    type metadata accessor for SFFluidCollectionViewTrackedUpdateToken();
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D8820);
    }
  }
}

uint64_t sub_18B855A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EC08();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

size_t sub_18B855A90(size_t a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9D4C48, &unk_18BC42930, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

uint64_t sub_18B855AD4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_18B82BA00(&qword_1EA9D3970);
  v33 = a2;
  v11 = sub_18BC20A68();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_18B82BA00(&qword_1EA9D9FE0);
      v21 = sub_18BC20AE8();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_18B855EDC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_18B855D8C(void *a1, double a2, double a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  sub_18B855E04(a2, a3, a4, a5);
}

id sub_18B855E04(double a1, double a2, CGFloat a3, CGFloat a4)
{
  v9 = (*MEMORY[0x1E69E7D40] & *v4);
  [v4 bounds];
  sub_18B82A494(v10, v11, a3, a4);
  v13 = v9[5];
  v14 = v9[6];
  v15 = v9[7];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SFFluidCollectionView();
  return objc_msgSendSuper2(&v16, sel_setFrame_, a1, a2, a3, a4, v13, v14, v15);
}

uint64_t sub_18B855EDC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18BB60104();
  }

  else
  {
    if (v11 > v10)
    {
      sub_18B9CC528();
      goto LABEL_12;
    }

    sub_18BB63BC4();
  }

  v12 = *v3;
  sub_18B82BA00(&qword_1EA9D3970);
  v13 = sub_18BC20A68();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_18B82BA00(&qword_1EA9D9FE0);
      v21 = sub_18BC20AE8();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18B856158(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v65 - v9);
  v11 = sub_18BC1EC08();
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v65 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);
  sub_18BC1E3F8();
  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_18B988BAC(v30, &unk_1EA9D3AE0);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
    v32 = sub_18BC20A68();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_18B7F4EE4(&qword_1EA9D9FE0, MEMORY[0x1E69695A8]);
    v36 = sub_18BC20AE8();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_18B988BAC(v24, &unk_1EA9D3AE0);
        a2 = sub_18B86E524(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_18BC20A68();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_18BC20AE8();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_18BC20AE8();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;
    sub_18BC1E1A8();
    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_18BC05A04(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x18CFFEEE0](v63, -1, -1);
LABEL_52:
  sub_18B7D2E34();
  return a2;
}

uint64_t sub_18B856BBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 40);
  if (!*(v8 + 16))
  {
    goto LABEL_7;
  }

  sub_18BC1E3F8();
  v9 = sub_18B857EE4(a1);
  if ((v10 & 1) == 0)
  {

    goto LABEL_7;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  sub_18BC1E3F8();

  v12 = sub_18BA61730(v11);

  if (!v12)
  {
LABEL_7:
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    goto LABEL_8;
  }

  swift_beginAccess();
  v13 = v12[2];
  v34 = v12[1];
  v35 = v13;
  v14 = v12[4];
  v36 = v12[3];
  v37 = v14;
  sub_18B7CA054(&v34, &v42, &qword_1EA9D92C0);

  if (*(&v34 + 1))
  {
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = v37;
    goto LABEL_11;
  }

  v42 = v34;
  v43 = v35;
  v44 = v36;
  v45 = v37;
LABEL_8:
  swift_beginAccess();
  v15 = *(v2 + 16);
  if (v15)
  {
    sub_18BC1E1A8();
    v15(&v38, a1);
    sub_18B7B171C(v15);
    sub_18B988BAC(&v42, &qword_1EA9D92C0);
  }

  else
  {
    sub_18B988BAC(&v42, &qword_1EA9D92C0);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
  }

LABEL_11:
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for TabSnapshotRegistration();
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  v17 = (v16 + 16);
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 80) = CGRectMake;
  *(v16 + 88) = 0;
  v18 = OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
  sub_18B7CA054(&v30, &v34, &qword_1EA9D92C0);
  if (qword_1EA9D2410 != -1)
  {
    swift_once();
  }

  v19 = (v16 + v18);
  v20 = qword_1EA9D8AE8;
  *v19 = qword_1EA9D8AE0;
  v19[1] = v20;
  v21 = (v16 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
  *v21 = CGRectMake;
  v21[1] = 0;
  swift_beginAccess();
  v22 = *(v16 + 32);
  v34 = *v17;
  v35 = v22;
  v23 = *(v16 + 64);
  v36 = *(v16 + 48);
  v37 = v23;
  v24 = v31;
  *v17 = v30;
  *(v16 + 32) = v24;
  v25 = v33;
  *(v16 + 48) = v32;
  *(v16 + 64) = v25;
  sub_18B988BAC(&v34, &qword_1EA9D92C0);
  (*(v5 + 32))(v16 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_id, v7, v4);
  sub_18B857348(v16);
  swift_unownedRetainStrong();
  sub_18B988BAC(&v30, &qword_1EA9D92C0);
  swift_unownedRetain();

  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  v27 = (v16 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
  *v27 = sub_18BA79F44;
  v27[1] = v26;

  return v16;
}

uint64_t sub_18B856FF0()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

double sub_18B857030@<D0>(_OWORD *a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong contentProvider];

  v4 = sub_18BC1EBC8();
  v5 = v3[2](v3, v4);

  _Block_release(v3);
  if (v5)
  {
    v6 = *&v5[OBJC_IVAR___SFTabSnapshotContent_wrapped + 48];
    v8 = *&v5[OBJC_IVAR___SFTabSnapshotContent_wrapped];
    v7 = *&v5[OBJC_IVAR___SFTabSnapshotContent_wrapped + 16];
    v15 = *&v5[OBJC_IVAR___SFTabSnapshotContent_wrapped + 32];
    v16 = v6;
    v13 = v8;
    v14 = v7;
    sub_18BA1A744(&v13, &v12);

    v9 = v14;
    *a1 = v13;
    a1[1] = v9;
    result = *&v15;
    v11 = v16;
    a1[2] = v15;
    a1[3] = v11;
  }

  else
  {
    result = 0.0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id sub_18B8571CC(uint64_t a1)
{
  v2 = sub_18BC1EC08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_18BC1EBE8();
  sub_18BC1E1A8();
  v7 = v6(v5);

  (*(v3 + 8))(v5, v2);

  return v7;
}

id sub_18B8572E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_18BC1EBC8();
  v4 = (*(a2 + 16))(a2, v3);

  return v4;
}

uint64_t sub_18B857348(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - v9;
  v11 = *(v5 + 16);
  v11(&v39 - v9, a1 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_id, v4);
  swift_beginAccess();
  v12 = *(v1 + 40);
  if (*(v12 + 16))
  {
    sub_18BC1E3F8();
    v13 = sub_18B857EE4(v10);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
      sub_18BC1E3F8();

      goto LABEL_7;
    }
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_18BC219A8())
  {
    v15 = sub_18BA29528(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

LABEL_7:
  v45 = v15;
  sub_18BC1E1A8();
  sub_18B857890(v44, a1);

  v16 = v45;
  swift_beginAccess();
  sub_18BC1E3F8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  sub_18B857EA4(v16, v10, isUniquelyReferenced_nonNull_native);
  *(v2 + 40) = v43;
  swift_endAccess();
  if (qword_1EA9D2298 != -1)
  {
    swift_once();
  }

  v18 = sub_18BC1F2C8();
  __swift_project_value_buffer(v18, qword_1EA9F7E80);
  v11(v8, v10, v4);
  v19 = sub_18BC1F2A8();
  v20 = v8;
  v21 = sub_18BC21218();
  v22 = os_log_type_enabled(v19, v21);
  v23 = v16 & 0xC000000000000001;
  v42 = v5;
  if (v22)
  {
    v41 = v10;
    v24 = v20;
    v25 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v25 = 136315394;
    v40 = v16 & 0xC000000000000001;
    if (v23)
    {
      sub_18BC1E3F8();
      v26 = sub_18BC219A8();
    }

    else
    {
      v26 = *(v16 + 16);
    }

    if (v26 == 1)
    {
      v29 = 0x20747372696620;
    }

    else
    {
      v29 = 32;
    }

    if (v26 == 1)
    {
      v30 = 0xE700000000000000;
    }

    else
    {
      v30 = 0xE100000000000000;
    }

    v31 = sub_18B7EA850(v29, v30, v44);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    sub_18B8585EC(&qword_1EA9DBE50, MEMORY[0x1E69695A8]);
    v32 = v24;
    v33 = sub_18BC21F48();
    v35 = v34;
    v27 = *(v5 + 8);
    v27(v32, v4);
    v36 = sub_18B7EA850(v33, v35, v44);

    *(v25 + 14) = v36;
    _os_log_impl(&dword_18B7AC000, v19, v21, "Pool retained%sregistration for %s.", v25, 0x16u);
    v37 = v39;
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v37, -1, -1);
    MEMORY[0x18CFFEEE0](v25, -1, -1);

    v10 = v41;
    if (!v40)
    {
LABEL_23:
      if (*(v16 + 16) != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else
  {

    v27 = *(v5 + 8);
    v27(v20, v4);
    if (!v23)
    {
      goto LABEL_23;
    }
  }

  sub_18BC1E3F8();
  v28 = sub_18BC219A8();

  if (v28 != 1)
  {
    goto LABEL_26;
  }

LABEL_24:
  if ((*(v2 + 32) & 1) == 0)
  {
    *(v2 + 32) = 1;
    sub_18BA7A18C();
    sub_18BC1E1A8();
    sub_18B858634(1, sub_18BA7A1DC, v2);
  }

LABEL_26:
  v27(v10, v4);
}

uint64_t sub_18B857890(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_18BC1E1A8();
    sub_18BC1E3F8();
    v8 = sub_18BC219B8();

    if (v8)
    {

      type metadata accessor for TabSnapshotRegistration();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_18BC219A8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_18BB5F76C(v7, result + 1, &unk_1EA9D5230, &unk_18BC430A0, type metadata accessor for TabSnapshotRegistration);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_18BB60FB4(v17 + 1, &unk_1EA9D5230);
    }

    v18 = sub_18BC1E1A8();
    sub_18BB61E48(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_18BC22158();
  MEMORY[0x18CFFD660](a2);
  v10 = sub_18BC221A8();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    v15 = sub_18BC1E1A8();
    sub_18B857D20(v15, v12, isUniquelyReferenced_nonNull_native, &unk_1EA9D5230, &unk_18BC430A0, type metadata accessor for TabSnapshotRegistration, sub_18B9CC760);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);
  sub_18BC1E1A8();
  return 0;
}

uint64_t sub_18B857B00(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_18BC21A88();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      sub_18BC22158();
      MEMORY[0x18CFFD660](v17);
      result = sub_18BC221A8();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
      result = sub_18BC1E1A8();
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_18B857D20(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v8 = result;
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_18BB60FB4(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      v12 = a2;
      result = a7();
      a2 = v12;
      goto LABEL_12;
    }

    v11 = a6;
    sub_18B857B00(v9 + 1, a4);
  }

  v13 = *v7;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v8);
  result = sub_18BC221A8();
  v14 = -1 << *(v13 + 32);
  a2 = result & ~v14;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = result & ~v14;
    result = v11(0);
    a2 = v16;
    while (*(*(v13 + 48) + 8 * a2) != v8)
    {
      a2 = (a2 + 1) & v15;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v17 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v8;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

unint64_t sub_18B857EE4(uint64_t a1)
{
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  v2 = sub_18BC20A68();

  return sub_18BB8B948(a1, v2);
}

uint64_t sub_18B857F68(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(unint64_t, char *, uint64_t, uint64_t))
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v7 = v6;
  v11 = sub_18BC1EC08();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_18B857EE4(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v29();
      goto LABEL_9;
    }

    v30();
    v23 = sub_18B857EE4(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = a1;
  v26 = *v7;
  if (v21)
  {
    *(*(v26 + 56) + 8 * v17) = v25;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    return v31(v17, v14, v25, v26);
  }
}

uint64_t sub_18B85816C(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = sub_18BC1EC08();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v43 = a2;
  result = sub_18BC21D78();
  v13 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v38 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v11;
    v41 = v7;
    v42 = v8;
    v44 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v45 = *(v42 + 72);
      v27 = v26 + v45 * v25;
      if (v43)
      {
        (*v44)(v46, v27, v7);
        v28 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v39)(v46, v27, v7);
        v28 = *(*(v11 + 56) + 8 * v25);
        sub_18BC1E3F8();
      }

      sub_18B80D494();
      result = sub_18BC20A68();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v7 = v41;
      result = (*v44)(*(v13 + 48) + v45 * v21, v46, v41);
      *(*(v13 + 56) + 8 * v21) = v28;
      ++*(v13 + 16);
      v11 = v40;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v11 + 32);
    v5 = v38;
    if (v36 >= 64)
    {
      bzero(v15, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_18B85850C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_18BC1EC08();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_18B8585EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_18B858634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata currentPhase];
  if (v7 > a1 || v7 == -1)
  {
    v17 = a2;
    v18 = a3;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_18B7B0DB0;
    v16 = &block_descriptor_3;
    v9 = _Block_copy(&v13);
    sub_18BC1E1A8();

    [ObjCClassFromMetadata addCommitHandler:v9 forPhase:a1];
    _Block_release(v9);
  }

  else
  {
    v10 = *MEMORY[0x1E69DDA98];
    if (*MEMORY[0x1E69DDA98])
    {
      v17 = a2;
      v18 = a3;
      v13 = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_18B7B0DB0;
      v16 = &block_descriptor_41;
      v11 = _Block_copy(&v13);
      sub_18BC1E1A8();
      v12 = v10;

      [v12 _performBlockAfterCATransactionCommits_];
      _Block_release(v11);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_18B8587D4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_18BC1EC08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7208);
  v40 = a2;
  result = sub_18BC21D78();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
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
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
        sub_18BC1E1A8();
      }

      sub_18B80D494();
      result = sub_18BC20A68();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_18B858B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v24 = a2;
  v11 = a3(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  sub_18B815248(a1, &v24 - v13, a4);
  v15 = v6 + 1;
  v16 = v6[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[1] = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0, *(v16 + 16) + 1, 1);
    v16 = *v15;
  }

  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  if (v19 >= v18 >> 1)
  {
    a5(v18 > 1, v19 + 1, 1);
    v16 = *v15;
  }

  *(v16 + 16) = v19 + 1;
  result = sub_18B80D354(v14, v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v19, a4);
  v6[1] = v16;
  v21 = *v6;
  if (*v6)
  {
    swift_beginAccess();
    if (MEMORY[0x18CFFA660](*(v21 + 16) & 0x3FLL) > v19)
    {
      result = swift_isUniquelyReferenced_native();
      v22 = *v6;
      if ((result & 1) == 0)
      {
        if (!v22)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v23 = sub_18BC1F178();

        *v6 = v23;
        v22 = v23;
      }

      if (v22)
      {
        return sub_18BC1F128();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v19 < 0xF)
  {
    return result;
  }

  return a6();
}

char *sub_18B858E00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_18B858F04(uint64_t a1, int64_t a2, unint64_t a3)
{
  v49 = a1;
  v50 = a2;
  v54 = _s4ItemVMa_2();
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  updated = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](updated);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v53 = v3;
  v16 = (v3 + 4);
  v17 = v3[4];
  v47 = v16;
  v48 = v18;
  v19 = *(v16 + 8);
  v51 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = v19 + v51;
  v21 = *(v19 + 16);
  if (v17)
  {
    sub_18BC1E1A8();
    sub_18B9D0D54(a3, v20, v21, (v17 + 16), v17 + 32);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_11:
    sub_18BA3A0F0(a3);
    v27 = *v53;
    v28 = *(*v53 + 16);
    if (v28)
    {
      v29 = *(*v53 + 16 + 16 * v28 + 8);
    }

    else
    {
      v29 = 0;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

  if (!v21)
  {
    goto LABEL_11;
  }

  v25 = *(v48 + 72);
  while (1)
  {
    sub_18B815248(v20, v15, _s7SectionVMa_1);
    if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
    {
      break;
    }

    sub_18B82A40C(v15, _s7SectionVMa_1);
LABEL_7:
    v20 += v25;
    if (!--v21)
    {
      goto LABEL_11;
    }
  }

  v26 = v15[*(updated + 20)];
  result = sub_18B82A40C(v15, _s7SectionVMa_1);
  if (v26 != *(a3 + *(updated + 20)))
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_18:
    v27 = v53[4];
    v32 = v53[5];
    v28 = v32 + v51;
    v29 = *(v32 + 16);
    if (!v27)
    {
      goto LABEL_22;
    }

    sub_18BC1E1A8();
    v33 = sub_18B9D0D54(a3, v28, v29, (v27 + 16), v27 + 32);
    v28 = v34;

    if (v28)
    {
      goto LABEL_56;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_28:
    if (v33 >= *(*v53 + 16))
    {
      goto LABEL_51;
    }

    v36 = *v53 + 16 * v33;
    v37 = *(v36 + 32);
    v38 = *(v36 + 40);
    v39 = __OFSUB__(v38, v37);
    v40 = v38 - v37;
    if (!v39)
    {
      if (v50 < 0 || v40 < v50)
      {
        goto LABEL_53;
      }

      v47 = v37 + v50;
      if (__OFADD__(v37, v50))
      {
        goto LABEL_54;
      }

      v41 = sub_18BC1E3F8();
      sub_18B859530(v41);
      v51 = *(v42 + 16);
      if (!v51)
      {

        v12 = 0;
        return sub_18B859708(v33, v12);
      }

      v12 = 0;
      a3 = 0;
      v50 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v48 = v42;
      v49 = v42 + v50;
      while (2)
      {
        if (a3 >= *(v42 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          break;
        }

        v43 = *(v52 + 72);
        sub_18B815248(v49 + v43 * a3, v9, _s4ItemVMa_2);
        v29 = v53[1];
        v44 = v53[2];
        v27 = v44 + v50;
        v28 = *(v44 + 16);
        if (v29)
        {
          sub_18BC1E1A8();
          sub_18B9D0B20(v9, v27, v28, v29 + 2, v29 + 32);
          v28 = v45;
          v27 = v46;

          if ((v28 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_36:
          v28 = (v53 + 1);
          sub_18B859EA4(v9, v47);
          sub_18B82A40C(v9, _s4ItemVMa_2);
          v39 = __OFADD__(v12++, 1);
          if (v39)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (!v28)
          {
LABEL_35:
            v27 = 0;
            goto LABEL_36;
          }

          while (1)
          {
            v29 = _s4ItemVMa_2;
            sub_18B815248(v27, v6, _s4ItemVMa_2);
            updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
            sub_18B82A40C(v6, _s4ItemVMa_2);
            if (updated)
            {
              break;
            }

            v27 += v43;
            if (!--v28)
            {
              goto LABEL_35;
            }
          }

LABEL_41:
          sub_18B82A40C(v9, _s4ItemVMa_2);
        }

        ++a3;
        v42 = v48;
        if (a3 == v51)
        {

          return sub_18B859708(v33, v12);
        }

        continue;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    result = sub_18B858E00(0, v28 + 1, 1, v27);
    v27 = result;
LABEL_15:
    v31 = *(v27 + 16);
    v30 = *(v27 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_18B858E00((v30 > 1), v31 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 16) = v31 + 1;
    *(v27 + 16 * v31 + 32) = vdupq_n_s64(v29);
    *v53 = v27;
  }

  __break(1u);
LABEL_22:
  if (v29)
  {
    v33 = 0;
    v27 = *(v48 + 72);
    do
    {
      sub_18B815248(v28, v12, _s7SectionVMa_1);
      if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
      {
        v35 = v12[*(updated + 20)];
        result = sub_18B82A40C(v12, _s7SectionVMa_1);
        if (v35 == *(a3 + *(updated + 20)))
        {
          goto LABEL_28;
        }
      }

      else
      {
        result = sub_18B82A40C(v12, _s7SectionVMa_1);
      }

      ++v33;
      v28 += v27;
    }

    while (v29 != v33);
  }

LABEL_56:
  __break(1u);
  return result;
}

void sub_18B859530(void *a1)
{
  v2 = _s4ItemVMa_2();
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v15 = &v14 - v6;
  v7 = a1[2];
  if (v7 < 2)
  {
    return;
  }

  v8 = 0;
  v9 = v7 >> 1;
  for (i = v7 - 1; ; --i)
  {
    if (v8 == i)
    {
      goto LABEL_5;
    }

    v11 = a1[2];
    if (v8 >= v11)
    {
      break;
    }

    v12 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v13 = *(v14 + 72);
    sub_18B815248(a1 + v12 + v13 * v8, v15, _s4ItemVMa_2);
    if (i >= v11)
    {
      goto LABEL_14;
    }

    sub_18B815248(a1 + v12 + v13 * i, v4, _s4ItemVMa_2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_18BAE37B0(a1);
    }

    sub_18BA3B58C(v4, a1 + v12 + v13 * v8);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    sub_18BA3B58C(v15, a1 + v12 + v13 * i);
LABEL_5:
    if (v9 == ++v8)
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

uint64_t sub_18B859708(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = a1;
  v4 = *v3;
  if (*(*v3 + 16) <= a1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v2 = a2;
  v8 = v4 + 16 * a1;
  v9 = *(v8 + 40);
  v6 = v9 + a2;
  if (__OFADD__(v9, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = *(v8 + 32);
  if (v6 >= v7)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_18BA79D48(v4);
  v4 = result;
LABEL_6:
  v11 = (v4 + 16 * v5);
  v11[4] = v7;
  v11[5] = v6;
  *v3 = v4;
  ++v5;
  v6 = *(v4 + 16);
  v12 = v6 - v5;
  if (v6 > v5)
  {
    v20 = v3;
    v21 = MEMORY[0x1E69E7CC0];
    sub_18BC1E3F8();
    result = sub_18B9B66E0(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
    }

    else
    {
      v18 = v6;
      v19 = v5;
      v7 = v21;
      v13 = v11 + 7;
      do
      {
        v14 = *(v13 - 1);
        v15 = v14 + v2;
        if (__OFADD__(v14, v2))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v5 = *v13 + v2;
        if (__OFADD__(*v13, v2))
        {
          goto LABEL_21;
        }

        if (v5 < v15)
        {
          goto LABEL_22;
        }

        v6 = *(v21 + 16);
        v16 = *(v21 + 24);
        if (v6 >= v16 >> 1)
        {
          sub_18B9B66E0((v16 > 1), v6 + 1, 1);
          v3 = v20;
        }

        *(v21 + 16) = v6 + 1;
        v17 = v21 + 16 * v6;
        *(v17 + 32) = v15;
        *(v17 + 40) = v5;
        v13 += 2;
        --v12;
      }

      while (v12);

      sub_18BB7A5A0(v19, v18, v21);
    }
  }

  return result;
}

uint64_t sub_18B8598D4(uint64_t a1, uint64_t a2)
{
  v43 = _s4ItemVMa_2();
  MEMORY[0x1EEE9AC00](v43);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _s7SectionVMa_1();
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA528);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v42 - v23;
  v25 = *(v22 + 56);
  sub_18B83AA0C(a1, &v42 - v23);
  sub_18B83AA0C(a2, &v24[v25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_18B83AA0C(v24, v15);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090);
        v30 = swift_projectBox();
        v31 = *(v29 + 48);
        v32 = swift_projectBox();
        sub_18B833990(v30, v47);
        sub_18B833990(v32, v46);
        v33 = v45;
        sub_18B83AA0C(v30 + v31, v45);
        v34 = v44;
        sub_18B83AA0C(v32 + v31, v44);
        if ((_s12MobileSafari31SFFluidTabOverviewSupplementaryO2eeoiySbAC_ACtFZ_0(v47, v46) & 1) == 0)
        {
          sub_18B988BAC(v34, &unk_1EA9D92F0);
          sub_18B988BAC(v33, &unk_1EA9D92F0);
          sub_18B833D9C(v46);
          sub_18B833D9C(v47);

          v37 = v24;
          v36 = &unk_1EA9D92F0;
          goto LABEL_18;
        }

        updated = sub_18B8598D4(v33, v34);
        sub_18B988BAC(v34, &unk_1EA9D92F0);
        sub_18B988BAC(v33, &unk_1EA9D92F0);
        sub_18B833D9C(v46);
        sub_18B833D9C(v47);

        sub_18B988BAC(v24, &unk_1EA9D92F0);
        return updated & 1;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 3)
    {
LABEL_12:
      sub_18B988BAC(v24, &unk_1EA9D92F0);
      updated = 1;
      return updated & 1;
    }

LABEL_16:
    v36 = &qword_1EA9DA528;
LABEL_17:
    v37 = v24;
LABEL_18:
    sub_18B988BAC(v37, v36);
    updated = 0;
    return updated & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_18B83AA0C(v24, v20);
    if (swift_getEnumCaseMultiPayload())
    {
      v27 = _s7SectionVMa_1;
      v28 = v20;
LABEL_15:
      sub_18B8154A0(v28, v27);
      goto LABEL_16;
    }

    sub_18B8297D4(&v24[v25], v7, _s7SectionVMa_1);
    if ((_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
    {
      sub_18B8154A0(v7, _s7SectionVMa_1);
      sub_18B8154A0(v20, _s7SectionVMa_1);
LABEL_25:
      v36 = &unk_1EA9D92F0;
      goto LABEL_17;
    }

    v39 = *(v42 + 20);
    v40 = v20[v39];
    v41 = v7[v39];
    sub_18B8154A0(v7, _s7SectionVMa_1);
    sub_18B8154A0(v20, _s7SectionVMa_1);
    if (v40 != v41)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  sub_18B83AA0C(v24, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = _s4ItemVMa_2;
    v28 = v18;
    goto LABEL_15;
  }

  sub_18B8297D4(&v24[v25], v5, _s4ItemVMa_2);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  sub_18B8154A0(v5, _s4ItemVMa_2);
  sub_18B8154A0(v18, _s4ItemVMa_2);
  sub_18B988BAC(v24, &unk_1EA9D92F0);
  return updated & 1;
}

void sub_18B859EA4(uint64_t a1, int64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = v2[1];
  v9 = *(v8 + 16);
  v10 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (v9 >= MEMORY[0x18CFFA660](*(v10 + 16) & 0x3FLL))
    {
      goto LABEL_14;
    }

    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    v9 = *v2;
    if ((isUniquelyReferenced_native & 1) == 0)
    {
      if (!v9)
      {
LABEL_24:
        __break(1u);
        return;
      }

      v12 = sub_18BC1F178();

      *v2 = v12;
      v9 = v12;
    }

    if (!v9)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BA3AF58(a2, v8, (v9 + 16), v9 + 32);

    sub_18BC1F128();

    if (*(v8 + 16) < a2)
    {
      goto LABEL_20;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
LABEL_13:
      sub_18B815248(a1, v7, _s4ItemVMa_2);
      sub_18B85A0D0(a2, a2, v7);
      return;
    }

    __break(1u);
  }

  if (v9 < 0xF)
  {
    if (v9 >= a2)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  if (v9 < a2)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a2 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_18B815248(a1, v7, _s4ItemVMa_2);
  sub_18B85A0D0(a2, a2, v7);
  sub_18BA407E8();
}

unint64_t sub_18B85A0D0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    goto LABEL_14;
  }

  if (v11 > *(v5 + 24) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

LABEL_14:
    sub_18B85A1AC(isUniquelyReferenced_nonNull_native, v14, 1);
  }

  return sub_18B85A1F0(v7, a2, 1, a3);
}

size_t sub_18B85A1AC(size_t a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &unk_1EA9D4FB0, &unk_18BC42888, _s4ItemVMa_2);
  *v3 = result;
  return result;
}

unint64_t sub_18B85A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = _s4ItemVMa_2();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v17 >= 1)
  {
    result = sub_18B85A364(a4, v15);
    if (v12 < v17)
    {
      goto LABEL_25;
    }
  }

  return sub_18B85A3C8(a4);
}

uint64_t sub_18B85A364(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_2();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B85A3C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B85A430()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82AD7C(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

uint64_t sub_18B85A52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B85A594(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v6 = _s4ItemVMa_2();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v7;
  v25 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18BB5FDBC(v10 + 1, _s4ItemVMa_2, &qword_1EA9D4F60, &unk_18BC42E88, _s4ItemVMa_2);
  }

  else
  {
    if (v11 > v10)
    {
      sub_18B9CBEBC();
      goto LABEL_12;
    }

    sub_18BB638A8();
  }

  v12 = *v3;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  sub_18BC20A78();
  v13 = sub_18BC221A8();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v7 + 72);
    do
    {
      sub_18B85A52C(*(v12 + 48) + v16 * a2, v9, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18BB69570(v9, _s4ItemVMa_2);
      if (updated)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = v26;
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18B85A83C(v18, *(v19 + 48) + *(v24 + 72) * a2, _s4ItemVMa_2);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18B85A83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B85A8A4()
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B84B080(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  sub_18BC22178();
  return sub_18BC221A8();
}

uint64_t sub_18B85A944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_18B85A99C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = _s7SectionVMa_1();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v23 = &v22 - v9;
  v24 = v2;
  v10 = *v2;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  sub_18BC20A78();
  v26 = v4;
  v11 = *(a2 + *(v4 + 20));
  sub_18BC22178();
  v12 = sub_18BC221A8();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    do
    {
      sub_18B85A52C(*(v10 + 48) + v16 * v14, v8, _s7SectionVMa_1);
      if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
      {
        v17 = v8[*(v26 + 20)];
        sub_18BB69570(v8, _s7SectionVMa_1);
        if (v11 == v17)
        {
          sub_18BB69570(a2, _s7SectionVMa_1);
          sub_18B85A52C(*(v10 + 48) + v16 * v14, v25, _s7SectionVMa_1);
          return 0;
        }
      }

      else
      {
        sub_18BB69570(v8, _s7SectionVMa_1);
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  v19 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v23;
  sub_18B85A52C(a2, v23, _s7SectionVMa_1);
  v27 = *v19;
  sub_18B85AC7C(v21, v14, isUniquelyReferenced_nonNull_native);
  *v19 = v27;
  sub_18B85A83C(a2, v25, _s7SectionVMa_1);
  return 1;
}

uint64_t sub_18B85AC7C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s7SectionVMa_1();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v26 = v8;
  v27 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_18B85B24C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_18B9CC0EC();
      goto LABEL_15;
    }

    sub_18B85AF28();
  }

  v13 = *v3;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970);
  sub_18BC20A78();
  v14 = *(a1 + *(v7 + 20));
  sub_18BC22178();
  v15 = sub_18BC221A8();
  v16 = -1 << *(v13 + 32);
  a2 = v15 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 72);
    do
    {
      sub_18B85A52C(*(v13 + 48) + v18 * a2, v10, _s7SectionVMa_1);
      if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
      {
        v19 = v10[*(v7 + 20)];
        sub_18BB69570(v10, _s7SectionVMa_1);
        if (v14 == v19)
        {
          sub_18BC22068();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_18BB69570(v10, _s7SectionVMa_1);
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v20 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18B85A83C(a1, *(v20 + 48) + *(v26 + 72) * a2, _s7SectionVMa_1);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_18B85AF28()
{
  v1 = v0;
  v2 = _s7SectionVMa_1();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5140);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_18B85A52C(v19 + v20 * (v16 | (v8 << 6)), v4, _s7SectionVMa_1);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      sub_18BC22178();
      result = sub_18BC221A8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v20, _s7SectionVMa_1);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v29;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_18B85B24C()
{
  v1 = v0;
  v2 = _s7SectionVMa_1();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5140);
  result = sub_18BC21A88();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v32 + 72);
      sub_18B85A83C(v19 + v20 * (v16 | (v8 << 6)), v4, _s7SectionVMa_1);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970);
      sub_18BC20A78();
      sub_18BC22178();
      result = sub_18BC221A8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_18B85A83C(v4, *(v7 + 48) + v15 * v20, _s7SectionVMa_1);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_18B85B5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B85B608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B85B670@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  sub_18B8554D0(a1, a3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18B85B700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B85B760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B85B7F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v36 = a2;
  v37 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  result = sub_18BC21A88();
  v12 = result;
  if (*(v10 + 16))
  {
    v34 = v4;
    v13 = 0;
    v14 = (v10 + 56);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(v35 + 72);
      sub_18B7CF39C(*(v10 + 48) + v24 * (v21 | (v13 << 6)), v9, v36);
      sub_18BC22158();
      sub_18B83ADFC(v38);
      result = sub_18BC221A8();
      v25 = -1 << *(v12 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v19 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v19 + 8 * v27);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v26) & ~*(v19 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_18B7CF39C(v9, *(v12 + 48) + v20 * v24, v36);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v10 + 32);
    if (v32 >= 64)
    {
      bzero((v10 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v32;
    }

    v6 = v34;
    *(v10 + 16) = 0;
  }

  *v6 = v12;
  return result;
}

void sub_18B85BADC(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (v3)
  {
    v4 = v3;
    if (sub_18B81280C())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 56))(v4, v1, a1, ObjectType, v6);
      v10 = v9;
      swift_unknownObjectRelease();

      if (v8 != 0.0 || v10 != 0.0)
      {
        return;
      }
    }

    else
    {
    }
  }

  v11 = *(*v1 + 776);

  v11();
}

double sub_18B85BC44(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (!v3)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  v4 = v3;
  v5 = (*(*v1 + 752))();
  if (sub_18B81280C())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v25 = v5;
    v5 = (*(v7 + 40))(v4, v1, a1, ObjectType, v7);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = *(MEMORY[0x1E69DC5C0] + 8);
    v16 = *(MEMORY[0x1E69DC5C0] + 24);
    v23 = *MEMORY[0x1E69DC5C0];
    v24 = *(MEMORY[0x1E69DC5C0] + 16);
    swift_unknownObjectRelease();
    v17 = v25;
    if (v14 != v16)
    {
      v17 = v5;
    }

    if (v5 == v23 && v10 == v15 && v12 == v24)
    {
      v5 = v17;
    }
  }

  v20 = v4;
  v21 = [v20 traitCollection];
  [v21 layoutDirection];

  [v20 safeAreaInsets];
  [v20 safeAreaInsets];

  return v5;
}

unint64_t sub_18B85BEA4(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = (*(*v6 + 456))();
  if (v13)
  {
    v15 = v13;
    if (sub_18B81280C())
    {
      v17 = v16;
      ObjectType = swift_getObjectType();
      v19 = (*(v17 + 32))(v15, v6, a1, ObjectType, v17);
      swift_unknownObjectRelease();

      if (v19)
      {
        return v19;
      }
    }

    else
    {
    }
  }

  return sub_18B85BFC8(v6[82], v6[83], v6[84], v6[85], a6, v14, a2, a3, a4, a5);
}

unint64_t sub_18B85BFC8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v30 = *(*v18 + 728);
  if (!v30())
  {
    return SFTabOverviewNumberOfColumns(v18[648], a1, a2, a3, a4, a5, v25, v26, v27, a7, a8, a9, a10);
  }

  return v30();
}

unint64_t SFTabOverviewNumberOfColumns(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  Width = CGRectGetWidth(*&a2);
  if (a1)
  {
    if (Width <= 896.0)
    {
      v24 = 2;
    }

    else
    {
      v24 = 3;
    }
  }

  else if (Width < 981.0)
  {
    v24 = 3;
  }

  else
  {
    v24 = 4;
  }

  v25 = SFTabOverviewMinimumItemWidthForBounds(a2, a3, a4, a5) + a6;
  v26 = a3 + a10;
  v27 = a4 - (a11 + a13);
  v28 = a5 - (a10 + a12);
  v31.origin.x = a2 + a11;
  v31.origin.y = v26;
  v31.size.width = v27;
  v31.size.height = v28;
  if (floor(CGRectGetWidth(v31) / v25) >= 2.0)
  {
    v32.origin.x = a2 + a11;
    v32.origin.y = v26;
    v32.size.width = v27;
    v32.size.height = v28;
    v29 = vcvtmd_u64_f64(CGRectGetWidth(v32) / v25);
  }

  else
  {
    v29 = 2;
  }

  if (v29 >= v24)
  {
    return v24;
  }

  else
  {
    return v29;
  }
}

double SFTabOverviewMinimumItemWidthForBounds(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectGetHeight(*&a1) <= 1194.0)
  {
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    Width = CGRectGetWidth(v13);
    v14.origin.x = a1;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    v11 = Width / CGRectGetHeight(v14) <= 2.0;
    v9 = 0.0;
    v8 = 30.0;
    if (v11)
    {
      v8 = 0.0;
    }
  }

  else
  {
    v8 = 0.0;
    v9 = 10.0;
  }

  return 195.0 - v9 + v8;
}

int64_t sub_18B85C2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-v3 - 8];
  v5 = *(sub_18B85C534() + 24);

  if (v5 == a1)
  {
    return 0;
  }

  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_storeEnumTagMultiPayload();
  v7 = *(v6 + 16);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  if (v7 && (v8 = sub_18B83B1C8(v4), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
    sub_18BC1E3F8();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  sub_18B988BAC(v4, &unk_1EA9D92F0);
  v18 = 0uLL;
  *v19 = 0;
  *&v19[8] = xmmword_18BC3FCA0;
  v11 = sub_18B85CEA8(&v18, v10);

  sub_18B833D9C(&v18);
  if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 32);
  v18 = *(a1 + 16);
  *v19 = v13;
  *&v19[16] = *(a1 + 48);
  sub_18B7CA054(&v18, v17, &unk_1EA9D4F90);
  v14 = sub_18B85D160();
  sub_18B988BAC(&v18, &unk_1EA9D4F90);
  v15 = sub_18B85D34C(v14);

  return v15;
}

uint64_t sub_18B85C534()
{
  v1 = OBJC_IVAR___SFTabOverview____lazy_storage___gridSizingInfo;
  if (*(v0 + OBJC_IVAR___SFTabOverview____lazy_storage___gridSizingInfo))
  {
    v2 = *(v0 + OBJC_IVAR___SFTabOverview____lazy_storage___gridSizingInfo);
  }

  else
  {
    v3 = sub_18B82FEA0();
    _s14GridSizingInfoCMa();
    swift_allocObject();
    v2 = sub_18B85C6C8(v3);

    *(v0 + v1) = v2;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v2;
}

uint64_t _s14GridSizingInfoCMa()
{
  result = qword_1EA9D68C0;
  if (!qword_1EA9D68C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B85C61C()
{
  result = _s7SectionVMa_1();
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

uint64_t sub_18B85C6C8(void *a1)
{
  v2 = v1;
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + OBJC_IVAR____TtCC12MobileSafari11TabOverview14GridSizingInfo_section;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FB0);
  v9 = (_s4ItemVMa_2() - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18BC3E410;
  v12 = (v11 + v10);
  *v12 = 1;
  sub_18BC1DE28();
  v12[v9[8]] = 0;
  v12[v9[9]] = 0;
  v12[v9[10]] = 0;
  v12[v9[11]] = 0;
  *&v12[v9[12]] = 0;
  v13 = &v12[v9[13]];
  *v13 = sub_18B814EE4;
  v13[1] = 0;
  *&v12[v9[14]] = MEMORY[0x1E69E7CC0];
  v14 = &v12[v9[15]];
  *v14 = 0;
  v14[1] = 0;
  sub_18BC1DE28();
  (*(v5 + 32))(v8, v7, v4);
  v15 = _s7SectionVMa_1();
  *(v8 + v15[5]) = 0;
  *(v8 + v15[6]) = 0;
  *(v8 + v15[7]) = v11;
  v16 = (v8 + v15[8]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68D8);
  v18 = objc_allocWithZone(v17);
  v19 = &v18[qword_1EA9DAF80];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *&v18[qword_1EA9DAF88] = a1;
  v29.receiver = v18;
  v29.super_class = v17;
  v20 = a1;
  *(v2 + 16) = objc_msgSendSuper2(&v29, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68E0);
  swift_allocObject();
  v21 = sub_18B84ED80();
  *(v2 + 24) = v21;
  v22 = *(v2 + 16);
  v23 = sub_18B85CAA8();
  v24 = *(*v21 + 440);
  sub_18BC1E1A8();
  v25 = v22;
  v24(v22, v23);

  v26 = *(**(v2 + 24) + 464);
  v27 = v20;
  sub_18BC1E1A8();
  v26(v20);

  return v2;
}

unint64_t sub_18B85CAA8()
{
  result = qword_1EA9D68E8;
  if (!qword_1EA9D68E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D68D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D68E8);
  }

  return result;
}

uint64_t sub_18B85CB0C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18B85CB48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 496) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void sub_18B85CBA8(void *a1)
{
  sub_18B85CBE4();
  sub_18B85CC2C();
}

void sub_18B85CC2C()
{
  (*(*v0 + 848))();
  v1 = (*(*v0 + 456))();
  sub_18B85CE9C();
}

uint64_t sub_18B85CCEC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *(v2 + 56) = xmmword_18BC50260;
  *(v2 + 72) = xmmword_18BC50270;
  v5 = MEMORY[0x1E69DDCE0];
  *(v2 + 104) = xmmword_18BC50280;
  v6 = v5[1];
  *(v2 + 120) = *v5;
  *(v2 + 24) = 0;
  *(v2 + 32) = 257;
  *(v2 + 40) = 0x4018000000000000;
  *(v2 + 48) = 0;
  *(v2 + 88) = 0x404A000000000000;
  *(v2 + 96) = 1;
  *(v2 + 136) = v6;
  *(v2 + 152) = 0;
  sub_18B8103B0();
  SFFluidCollectionView.DataSource.Snapshot.init()((v2 + 176));
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  if ([objc_opt_self() isSolariumEnabled])
  {
    *(v2 + 72) = 0x404A800000000000;
    *(v2 + 88) = 0x404C000000000000;
  }

  return v2;
}

uint64_t sub_18B85CE4C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_18B85CCEC(a1, a2);
  return v4;
}

uint64_t sub_18B85CEA8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_18BC22158();
  sub_18B833990(a1, &v20);
  if (*(&v21 + 1) > 1)
  {
    if (*(&v21 + 1) == 2)
    {
      v4 = 3;
      goto LABEL_13;
    }

    if (*(&v21 + 1) == 3)
    {
      v4 = 4;
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(&v21 + 1))
    {
      v4 = 0;
      goto LABEL_13;
    }

    if (*(&v21 + 1) == 1)
    {
      v4 = 1;
LABEL_13:
      MEMORY[0x18CFFD660](v4);
      goto LABEL_14;
    }
  }

  v13[0] = v20;
  v13[1] = v21;
  v14 = v22;
  MEMORY[0x18CFFD660](2);
  sub_18BC21A58();
  sub_18B831014(v13);
LABEL_14:
  v6 = sub_18BC221A8();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    sub_18B833990(*(a2 + 48) + 40 * v8, &v20);
    sub_18B833990(&v20, v15);
    sub_18B833990(a1, &v17);
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        sub_18B833D9C(&v20);
        if (*(&v18 + 1) == 2)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v16 == 3)
      {
        sub_18B833D9C(&v20);
        if (*(&v18 + 1) == 3)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (!v16)
      {
        sub_18B833D9C(&v20);
        if (!*(&v18 + 1))
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v16 == 1)
      {
        sub_18B833D9C(&v20);
        if (*(&v18 + 1) == 1)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    sub_18B833990(v15, v13);
    if (*(&v18 + 1) >= 4uLL)
    {
      break;
    }

    sub_18B833D9C(&v20);
    sub_18B831014(v13);
LABEL_30:
    sub_18B988BAC(v15, &unk_1EA9D4F50);
LABEL_31:
    v8 = (v8 + 1) & v9;
    if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  v11[0] = v17;
  v11[1] = v18;
  v12 = v19;
  v10 = MEMORY[0x18CFFCF40](v13, v11);
  sub_18B831014(v11);
  sub_18B833D9C(&v20);
  sub_18B831014(v13);
  if ((v10 & 1) == 0)
  {
    sub_18B833D9C(v15);
    goto LABEL_31;
  }

LABEL_36:
  sub_18B833D9C(v15);
  return 1;
}

uint64_t sub_18B85D160()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_18B85D32C(0, v2, 0);
    result = v9;
    v4 = (v1 + 40);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4 - v5;
      if (__OFSUB__(*v4, v5))
      {
        break;
      }

      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_18B85D32C((v7 > 1), v8 + 1, 1);
        result = v10;
      }

      v4 += 2;
      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v6;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_18B85D228(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_18B85D32C(char *a1, int64_t a2, char a3)
{
  result = sub_18B85D228(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

int64_t sub_18B85D34C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.MetricKey();
  return (*(*(a4 - 8) + 32))(&a5[*(v8 + 76)], a3, a4);
}

uint64_t sub_18B85D4B4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18B85D54C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18B85D588(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v26 = a2;
  v27 = a1;
  v9 = a4[3];
  v10 = a4[4];
  v11 = a4[5];
  v12 = a4[6];
  v13 = a4[7];
  v30 = a4[2];
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v14 = type metadata accessor for SFFluidCollectionView.Element();
  v25 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v24 = &v24 - v15;
  v31 = v9;
  v32 = v10;
  v33 = a5;
  v34 = v11;
  v35 = v12;
  v36 = v13;
  type metadata accessor for SFFluidCollectionView.LayoutSnapshot.MetricKey();
  swift_getWitnessTable();
  sub_18BC21E18();
  v29[3] = a5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v29);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0Tm, v27, a5);
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *v6;
  v17 = v28;
  *v6 = 0x8000000000000000;
  WitnessTable = swift_getWitnessTable();
  sub_18B84FAF0(a3, v14, WitnessTable);
  if (__OFADD__(*(v17 + 16), (v19 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA9DAA28);
  sub_18BC21CE8();
  if (sub_18BC21CC8())
  {
    sub_18B84FAF0(a3, v14, WitnessTable);
    if ((v20 & 1) != (v21 & 1))
    {
      goto LABEL_8;
    }
  }

  v22 = v28;

  *v6 = v22;
  if ((v20 & 1) == 0)
  {
    v28 = sub_18B85D9C0(MEMORY[0x1E69E7CC0]);
    (*(v25 + 16))(v24, a3, v14);
    sub_18BC21CD8();
  }

  return sub_18B85D904(v29, &v30);
}

uint64_t sub_18B85D878()
{
  sub_18BC1EC08();
  sub_18B84B080(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  sub_18BC20A78();
  return sub_18BC22178();
}

uint64_t sub_18B85D904(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_18B7B1AD4(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_18B85DAFC(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_18B831014(a2);
    *v2 = v6;
  }

  else
  {
    sub_18B988BAC(a1, &qword_1EA9D5220);
    sub_18BB5A0C4(a2, v7);
    sub_18B831014(a2);
    return sub_18B988BAC(v7, &qword_1EA9D5220);
  }

  return result;
}

unint64_t sub_18B85D9C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72A0);
    v3 = sub_18BC21D88();
    v4 = a1 + 32;
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v4, v13, &qword_1EA9D72A8);
      result = sub_18B85DC48(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_18B7B1AD4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

_OWORD *sub_18B85DAFC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_18B85DC48(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_18BB2AF24();
      goto LABEL_7;
    }

    sub_18B85DCD0(v13, a3 & 1);
    v19 = sub_18B85DC48(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B7F44EC(a2, v21);
      return sub_18B85E050(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_18B7B1AD4(a1, v17);
}

unint64_t sub_18B85DC48(uint64_t a1)
{
  v2 = sub_18BC21A38();

  return sub_18B85DF88(a1, v2);
}

uint64_t sub_18B85DC8C()
{
  sub_18BC22158();
  SFFluidCollectionView.LayoutSnapshot.MetricKey.hash(into:)();
  return sub_18BC221A8();
}

uint64_t sub_18B85DCD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72A0);
  result = sub_18BC21D78();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_18B7B1AD4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_18B7F44EC(v23, &v36);
        sub_18B7B193C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_18BC21A38();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_18B7B1AD4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_18B85DF88(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_18B7F44EC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x18CFFCF40](v9, a1);
      sub_18B831014(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

_OWORD *sub_18B85E050(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_18B7B1AD4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_18B85E0CC@<X0>(uint64_t a1@<X7>, char *a2@<X8>, uint64_t a3)
{
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v8[0] = *MEMORY[0x1E69DDCE0];
  v8[1] = v5;
  type metadata accessor for UIEdgeInsets(0);
  return SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(a1, a3, v8, v6, a2);
}

double sub_18B85E178(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (v3)
  {
    v4 = v3;
    if (sub_18B81280C())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 48))(v4, v1, a1, ObjectType, v6);
      v17 = v9;
      v18 = v8;
      v15 = v11;
      v16 = v10;
      swift_unknownObjectRelease();
      v12.f64[0] = v18;
      v13.f64[0] = v17;
      v12.f64[1] = v16;
      v13.f64[1] = v15;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v12, *MEMORY[0x1E69DC5C0]), vceqq_f64(v13, *(MEMORY[0x1E69DC5C0] + 16))))) & 1) == 0)
      {
        [v4 effectiveUserInterfaceLayoutDirection];

        return v18;
      }
    }
  }

  return *MEMORY[0x1E69DDCE0];
}

void sub_18B85E2B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 40) - 8);
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
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 40) - 8) + 64);
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
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_18B85E504(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) - 8);
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

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 40) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
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

uint64_t SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a2;
  v61 = a5;
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  v12 = a3[6];
  v11 = a3[7];
  v70 = a3[2];
  v7 = v70;
  v71 = v8;
  v72 = v9;
  v73 = a4;
  v74 = v10;
  v75 = v12;
  v76 = v11;
  v13 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.MetricKey();
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v57 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v53 - v16;
  v62 = a4;
  v17 = sub_18BC21848();
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v53 - v21;
  v70 = v7;
  v71 = v8;
  v72 = v9;
  v73 = v10;
  v74 = v12;
  v75 = v11;
  type metadata accessor for SFFluidCollectionView.Element();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9DAA28);
  swift_getWitnessTable();
  sub_18BC20A28();
  v22 = v66;
  if (!v66)
  {
    v67 = 0u;
    v68 = 0u;
    v23 = a1;
    v27 = v62;
    v28 = v65;
    v24 = v13;
    goto LABEL_8;
  }

  swift_getWitnessTable();
  sub_18BC21E18();
  v23 = a1;
  v24 = v13;
  if (!*(v22 + 16) || (v25 = sub_18B85DC48(&v70), (v26 & 1) == 0))
  {

    sub_18B831014(&v70);
    v67 = 0u;
    v68 = 0u;
    v27 = v62;
    v28 = v65;
LABEL_8:
    v29 = v64;
    v30 = v60;
    goto LABEL_9;
  }

  sub_18B7B193C(*(v22 + 56) + 32 * v25, &v67);
  sub_18B831014(&v70);

  v27 = v62;
  v29 = v64;
  v28 = v65;
  v30 = v60;
  if (*(&v68 + 1))
  {
    sub_18B7B1AD4(&v67, &v69);
    v31 = v63;
    swift_dynamicCast();
    v32 = *(v27 - 8);
    (*(v32 + 56))(v31, 0, 1, v27);
    goto LABEL_10;
  }

LABEL_9:
  sub_18B988BAC(&v67, &qword_1EA9D5220);
  v32 = *(v27 - 8);
  v31 = v63;
  (*(v32 + 56))(v63, 1, 1, v27);
LABEL_10:
  (*(v29 + 16))(v19, v31, v28);
  if ((*(v32 + 48))(v19, 1, v27) == 1)
  {
    v59 = v24;
    v34 = *(v29 + 8);
    v33 = v29 + 8;
    v60 = v34;
    (v34)(v19, v28);
    if (qword_1EA9D2280 != -1)
    {
      swift_once();
    }

    v35 = v33 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36 = sub_18BC1F2C8();
    __swift_project_value_buffer(v36, qword_1EA9F7E38);
    v37 = v30[2];
    v38 = v58;
    v39 = v59;
    v37(v58, v23, v59);
    v40 = sub_18BC1F2A8();
    v56 = sub_18BC21228();
    if (os_log_type_enabled(v40, v56))
    {
      v41 = swift_slowAlloc();
      v64 = v35;
      v42 = v41;
      v43 = swift_slowAlloc();
      v55 = v23;
      v54 = v43;
      v70 = v43;
      *v42 = 136315138;
      v44 = v57;
      v37(v57, v38, v39);
      v45 = v30[1];
      v45(v38, v39);
      v46 = *v44;
      v47 = v44[1];
      sub_18BC1E3F8();
      v45(v44, v39);
      v48 = sub_18B7EA850(v46, v47, &v70);
      v49 = v65;

      *(v42 + 4) = v48;
      _os_log_impl(&dword_18B7AC000, v40, v56, "Requested metric not set: %s", v42, 0xCu);
      v50 = v54;
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      v51 = v50;
      v23 = v55;
      v27 = v62;
      MEMORY[0x18CFFEEE0](v51, -1, -1);
      MEMORY[0x18CFFEEE0](v42, -1, -1);
    }

    else
    {
      (v30[1])(v38, v39);

      v49 = v65;
    }

    (*(v32 + 16))(v61, v23 + *(v39 + 76), v27);
    return (v60)(v63, v49);
  }

  else
  {
    (*(v32 + 32))(v61, v19, v27);
    return (*(v29 + 8))(v31, v28);
  }
}

uint64_t static SFFluidCollectionView.LayoutSnapshot.MetricKey.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8();
  }
}

Swift::Int __swiftcall SFFluidCollectionView.DataSource.Snapshot.numberOfItems(inSectionAt:)(Swift::Int inSectionAt)
{
  if (inSectionAt < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(*v1 + 16) <= inSectionAt)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *v1 + 16 * inSectionAt;
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  inSectionAt = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_7:
    __break(1u);
  }

  return inSectionAt;
}

uint64_t sub_18B85EDB0(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  }

  else
  {

    return sub_18BC21F58();
  }
}

unint64_t SFFluidCollectionView.DataSource.Snapshot.items(in:)()
{
  v1 = *v0;
  result = sub_18BC1F098();
  if ((v3 & 1) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v1 + 16))
    {
      sub_18BC1F0F8();
      sub_18BC1F068();
      swift_getWitnessTable();
      return sub_18BC20E98();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18B85EF10(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_18B85EF40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_18B85EF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s7SectionVMa_1();
  result = 0.0;
  if (*(a3 + *(v5 + 20)) == 1)
  {
    v7 = v3 + OBJC_IVAR___SFTabOverview_itemViewMetrics;
    swift_beginAccess();
    return *(v7 + 184);
  }

  return result;
}

void sub_18B85EFFC(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (v3)
  {
    v4 = v3;
    v5 = sub_18B81280C();
    v7 = v6;
    if ((v5 && (v8 = swift_getObjectType(), v9 = v7[11], swift_unknownObjectRetain(), v10 = v9(v4, v1, a1, v8, v7), swift_unknownObjectRelease(), v10 != 0.0) || ((*(*v1 + 872))(), v5)) && (v11 = swift_getObjectType(), v12 = v7[12], swift_unknownObjectRetain(), v13 = v12(v4, v1, a1, v11, v7), swift_unknownObjectRelease(), v13 != 0.0) || ((*(*v1 + 896))(), v5))
    {
      ObjectType = swift_getObjectType();
      v15 = v7[14];
      swift_unknownObjectRetain();
      v15(v4, v1, a1, ObjectType, v7);

      swift_unknownObjectRelease_n();
    }

    else
    {
    }
  }
}

double sub_18B85F2CC()
{
  v1 = v0 + OBJC_IVAR___SFTabOverview_itemViewMetrics;
  swift_beginAccess();
  return *(v1 + 192) + *(v1 + 208);
}

CGFloat sub_18B85F31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v28 = a3;
  v32 = a1;
  v10 = *(*a4 + 600);
  v11 = *(*a4 + 608);
  v12 = *(*a4 + 616);
  v13 = *(*a4 + 624);
  v14 = sub_18B8103B0();
  v37 = v10;
  v38 = v11;
  v39 = &type metadata for SFFluidTabOverviewSupplementary;
  v40 = v12;
  v41 = v13;
  v42 = v14;
  v29 = v13;
  v15 = type metadata accessor for SFFluidCollectionView.Element();
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  LOBYTE(v37) = 0;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x49737265746E6563, 0xEC000000736D6574, &v37, MEMORY[0x1E69E6370], v35);
  v19 = v35[0];
  v20 = v35[1];
  v21 = v36;
  (*(*(v10 - 8) + 16))(v18, a2, v10);
  v22 = v30;
  swift_storeEnumTagMultiPayload();
  v33[0] = v19;
  v33[1] = v20;
  v34 = v21;
  v37 = v10;
  v38 = v11;
  v39 = &type metadata for SFFluidTabOverviewSupplementary;
  v40 = v12;
  v41 = v29;
  v42 = v14;
  v23 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(v33, v18, v23, MEMORY[0x1E69E6370], &v37);

  v24 = (*(v31 + 8))(v18, v22);
  if (v37 == 1)
  {
    v25 = v28 * a5;
    v26 = v25 - (*(*a4 + 776))(v24);
    return (CGRectGetWidth(*(a4 + 656)) - v26) * 0.5;
  }

  return a6;
}

void sub_18B85F5E8(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (v3)
  {
    v4 = v3;
    if (sub_18B81280C())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      (*(v6 + 64))(v4, v1, a1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_18B85F6BC()
{
  sub_18B810930(&v2);
  sub_18B8103B0();
  type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
  v0 = SFFluidCollectionView.DataSource.Snapshot.numberOfItems(in:)();

  return v0;
}

unint64_t SFFluidCollectionView.DataSource.Snapshot.numberOfItems(in:)()
{
  v1 = *v0;
  result = sub_18BC1F098();
  if (v3)
  {
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v1 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v1 + 16 * result;
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  result = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_18B85F830@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v48 = a1;
  v54 = a3;
  v6 = *(*v4 + 600);
  v7 = *(*v4 + 608);
  v8 = *(*v4 + 616);
  v9 = *(*v4 + 624);
  v10 = sub_18B8103B0();
  *&v57 = v6;
  *(&v57 + 1) = v7;
  v11 = v7;
  v44 = v7;
  *v58 = &type metadata for SFFluidTabOverviewSupplementary;
  *&v58[8] = v8;
  v47 = v8;
  *&v58[16] = v9;
  v46 = v9;
  *&v59 = v10;
  v45 = v10;
  v55 = type metadata accessor for SFFluidCollectionView.Element();
  v51 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v43 - v12;
  v50 = *(v6 - 8);
  v13 = v50;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v73 = *a2;
  v53 = *(a2 + 2);
  v17 = *(a2 + 40);
  v70 = *(a2 + 24);
  v71 = v17;
  v72 = *(a2 + 56);
  sub_18B810930(&v57);
  v66 = v57;
  v67 = *v58;
  v68 = *&v58[16];
  v69 = v59;
  *&v61 = v6;
  *(&v61 + 1) = v11;
  v62 = &type metadata for SFFluidTabOverviewSupplementary;
  v63 = v8;
  v64 = v9;
  v65 = v10;
  type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
  v49 = v16;
  v18 = v48;
  SFFluidCollectionView.DataSource.Snapshot.section(for:)();

  (*(v13 + 16))(v52, v16, v6);
  swift_storeEnumTagMultiPayload();
  v19 = v54;
  (*(*v4 + 576))(v18);
  v57 = v73;
  *v58 = v53;
  *&v58[8] = v70;
  v59 = v71;
  v60 = v72;
  sub_18B8603E4(v18, &v57);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  *&v57 = v6;
  v28 = v44;
  *(&v57 + 1) = v44;
  *v58 = &type metadata for SFFluidTabOverviewSupplementary;
  v29 = v47;
  *&v58[8] = v47;
  v30 = v46;
  *&v58[16] = v46;
  v31 = v45;
  *&v59 = v45;
  v32 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  SFFluidCollectionView.LayoutAttributes.frame.setter(v32, v21, v23, v25, v27);
  *(v19 + v32[21]) = 0;
  *&v57 = 0;
  v33 = v31;
  v34 = v30;
  v35 = MEMORY[0x1E69E7DE0];
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0xD000000000000018, 0x800000018BC655F0, &v57, MEMORY[0x1E69E7DE0], &v66);
  v56 = v53;
  v61 = v66;
  v62 = v67;
  *&v57 = v6;
  *(&v57 + 1) = v28;
  *v58 = &type metadata for SFFluidTabOverviewSupplementary;
  *&v58[8] = v29;
  *&v58[16] = v34;
  *&v59 = v33;
  v36 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
  v37 = v52;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v61, v52, v36, v35, &v57);

  v38 = *&v57;
  v39 = v32[22];
  v40 = v54;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v61 = *(v40 + v39);
  sub_18B84E858(0xD000000000000018, 0x800000018BC655F0, isUniquelyReferenced_nonNull_native, v38);
  (*(v51 + 8))(v37, v55);
  result = (*(v50 + 8))(v49, v6);
  *(v40 + v39) = v61;
  return result;
}

uint64_t SFFluidCollectionView.DataSource.Snapshot.section(for:)()
{
  v1 = sub_18BC1EDD8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9[0] = *v0;
  v9[1] = v5;
  v10 = *(v0 + 16);
  v11 = v6;
  v12 = v7;
  SFFluidCollectionView.DataSource.Snapshot.indexPath(of:)();
  sub_18BC1EDC8();
  (*(v2 + 8))(v4, v1);
  return sub_18BC21C08();
}

void SFFluidCollectionView.DataSource.Snapshot.indexPath(of:)()
{
  v1 = *v0;
  v2 = sub_18BC1F098();
  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (v1 + 40);
      while (1)
      {
        v3 = *(v7 - 1);
        if (v2 >= v3 && v2 < *v7)
        {
          break;
        }

        v7 += 2;
        if (v5 == ++v6)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      __break(1u);
    }

    if (!__OFSUB__(v2, v3))
    {

LABEL_16:
      JUMPOUT(0x18CFFA290);
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_16;
}

uint64_t sub_18B860018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*v2 + 600);
  v6 = (*v2 + 616);
  v7 = sub_18B8103B0();
  v13 = *v5;
  v14 = &type metadata for SFFluidTabOverviewSupplementary;
  v15 = *v6;
  v16 = v7;
  v8 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  sub_18B86014C(a1, &v13 - v10);
  sub_18B84E410(v11, a2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_18B86014C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 88);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, v5);
  return sub_18B860290(v7, v4, a2);
}

uint64_t sub_18B860290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  *(a3 + v5[17]) = 0x3FF0000000000000;
  v6 = (a3 + v5[18]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a3 + v5[19]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a3 + v5[20]);
  *v8 = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  *(a3 + v5[21]) = 0;
  v9 = v5[22];
  v10 = MEMORY[0x1E69E7CC0];
  *(a3 + v9) = sub_18B84E2F8(MEMORY[0x1E69E7CC0]);
  v11 = v5[23];
  *(a3 + v11) = sub_18B84E2F8(v10);
  v12 = (a3 + v5[24]);
  *v12 = 0u;
  v12[1] = 0u;
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for SFFluidCollectionView.Element();
  return swift_storeEnumTagMultiPayload();
}

void *sub_18B8603E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a1;
  v5 = *(*v3 + 600);
  v6 = *(*v3 + 608);
  v7 = *(*v3 + 616);
  v8 = *(*v3 + 624);
  v9 = sub_18B8103B0();
  *&v81 = v5;
  *(&v81 + 1) = v6;
  v10 = v6;
  v70 = v6;
  *&v82 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v82 + 1) = v7;
  v64 = v7;
  v83 = v8;
  v84 = v9;
  v62 = v8;
  v69 = v9;
  v67 = type metadata accessor for SFFluidCollectionView.Element();
  v59 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &v55 - v11;
  v68 = *(*&v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v58 = sub_18BC1EDD8();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(a2 + 16);
  sub_18B810930(&v81);
  v77 = v81;
  v78 = v82;
  v79 = v83;
  v80 = v84;
  v72.width = v5;
  v72.height = v10;
  v73 = &type metadata for SFFluidTabOverviewSupplementary;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  type metadata accessor for SFFluidCollectionView.DataSource.Snapshot();
  v66 = v17;
  SFFluidCollectionView.DataSource.Snapshot.indexPath(of:)();

  v60 = v3;
  sub_18B810930(&v81);
  sub_18BC1E1A8();

  sub_18BC1EDC8();
  sub_18BC21C08();

  v18 = *(v68 + 16);
  v57 = v15;
  v18(v12, v15, *&v5);
  swift_storeEnumTagMultiPayload();
  *&v81 = 1;
  v19 = v69;
  v20 = v62;
  v21 = MEMORY[0x1E69E6530];
  v22 = v5;
  v23 = v70;
  v24 = v64;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x736E6D756C6F63, 0xE700000000000000, &v81, MEMORY[0x1E69E6530], &v77);
  v25 = v65;
  v71 = v65;
  v72 = v77;
  v73 = v78;
  *&v81 = v5;
  *(&v81 + 1) = v23;
  *&v82 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v82 + 1) = v24;
  v83 = v20;
  v84 = v19;
  v61 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics();
  v26 = v12;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v72, v12, v61, v21, &v81);

  v63 = v81;
  type metadata accessor for CGSize(0);
  v28 = v27;
  v77 = 0;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x657A69536D657469, 0xE800000000000000, &v77, v27, &v81);
  v29 = v25;
  v71 = v25;
  v77 = v81;
  v78 = v82;
  v30 = v61;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v77, v12, v61, v28, &v72);

  v31 = v72;
  type metadata accessor for CGPoint(0);
  v33 = v32;
  v77 = 0;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x66664F736D657469, 0xEB00000000746573, &v77, v32, &v81);
  v71 = v29;
  v77 = v81;
  v78 = v82;
  v34 = v33;
  v35 = v63;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v77, v12, v30, v34, &v72);

  v36 = v72;
  v77 = 0;
  v37 = v22;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x657A695374696E75, 0xE800000000000000, &v77, v28, &v81);
  v71 = v29;
  v77 = v81;
  v78 = v82;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v77, v12, v30, v28, &v72);

  v38 = v72;
  v39 = v66;
  result = sub_18BC1EDB8();
  if (!v35)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v41 = result;
  if (result == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_9;
  }

  result = (*(*v60 + 456))();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v42 = result;
  v43 = v36.width + v38.width * (v41 % v35);
  v44 = v36.height + v38.height * (v41 / v35) + 0.0;
  v45 = [result effectiveUserInterfaceLayoutDirection];
  [v42 bounds];
  if (v45)
  {
    CGRectGetMaxX(*&v46);
    v85.origin.x = v43;
    v85.origin.y = v44;
    v85.size = v31;
    CGRectGetMaxX(v85);
    v86.origin.x = v43;
    v86.origin.y = v44;
    v86.size = v31;
    CGRectGetMinY(v86);
    v87.origin.x = v43;
    v87.origin.y = v44;
    v87.size = v31;
    CGRectGetWidth(v87);
    v88.origin.x = v43;
    v88.origin.y = v44;
    v88.size = v31;
    CGRectGetHeight(v88);
  }

  v50 = v59;
  v51 = v68;
  v52 = v58;
  v53 = v57;
  v54 = v56;

  (*(v50 + 8))(v26, v67);
  (*(v51 + 8))(v53, COERCE_CGFLOAT(*&v37));
  return (*(v54 + 8))(v39, v52);
}

uint64_t sub_18B860C84()
{
  sub_18BC1EC08();
  sub_18B82AD7C(&qword_1EA9D3970, MEMORY[0x1E69695A8]);
  return sub_18BC20A78();
}

double sub_18B860D04()
{
  v1 = *(*v0 + 1360);
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_18B860D54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72B0);
  v2 = *v0;
  v3 = sub_18BC21D68();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        result = sub_18BC1E3F8();
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

uint64_t sub_18B860EBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v38 = a3;
  v35 = *(a2[4] - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 56);
  v39 = *(v11 + 16);
  v40 = v7;
  v36 = v13;
  v41 = v13;
  v42 = *(v11 + 40);
  v43 = v12;
  v14 = type metadata accessor for SFFluidCollectionView.Element();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v33 - v19);
  v21 = v3[1];
  v44 = *v3;
  v45 = v21;
  v46[0] = v3[2];
  *(v46 + 9) = *(v3 + 41);
  v22 = *(v15 + 16);
  v22(&v33 - v19, v37, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v37 = *v20;
    v33 = v15;
    v24 = v36;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v26 = swift_projectBox();
    v27 = *(TupleTypeMetadata2 + 48);
    v29 = v34;
    v28 = v35;
    (*(v35 + 16))(v34, v26, v24);
    v22(v17, v26 + v27, v14);
    SFFluidCollectionView.LayoutSnapshot.layoutAttributesForSupplementary(_:reference:)(v29, v17, a2, v38);
    (*(v33 + 8))(v17, v14);
    (*(v28 + 8))(v29, v24);
  }

  else
  {
    v31 = v38;
    if (EnumCaseMultiPayload == 1)
    {
      v32 = v33;
      (*(v33 + 32))(v10, v20, v7);
      SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v10, a2, v31);
      return (*(v32 + 8))(v10, v7);
    }

    else
    {
      result = sub_18BC21CF8();
      __break(1u);
    }
  }

  return result;
}

uint64_t SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v22 = a3;
  v10 = type metadata accessor for SFFluidCollectionView.LayoutAttributes();
  v11 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v9;
  v28 = v8;
  v14 = type metadata accessor for SFFluidCollectionView.Element();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  (*(*(v5 - 8) + 16))(&v21 - v17, a1, v5, v16);
  swift_storeEnumTagMultiPayload();
  swift_getWitnessTable();
  sub_18BC20A28();
  v19 = *(v10 - 8);
  result = (*(v19 + 48))(v13, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    return (*(v19 + 32))(v22, v13, v10);
  }

  return result;
}

id sub_18B8614BC()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SFFluidCollectionView();
  objc_msgSendSuper2(&v5, sel_stopScrollingAndZooming, v2, v3, v4);
  return sub_18B82A0C0();
}

void sub_18B861540(void *a1)
{
  v1 = a1;
  sub_18B8614BC();
}

void sub_18B861588(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___SFTabOverview_gridLayout);
  v6 = (*(*v5 + 456))();
  if (v6)
  {
    v47 = v6;
    sub_18B8290F0(a1);
    if (v7)
    {
    }

    else
    {
      [v47 adjustedContentInset];
      [v47 adjustedContentInset];
      v45 = v9;
      v46 = v8;
      v43 = v11;
      v44 = v10;
      [v47 bounds];
      v41 = v13;
      v42 = v12;
      v39 = v15;
      v40 = v14;
      sub_18B7E0E4C();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [v47 contentSize];
      [v47 frame];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = [v47 isTracking];
      swift_beginAccess();
      v51 = v46;
      v52 = v45;
      v53 = v44;
      v54 = v43;
      v55 = v42;
      v56 = v41;
      v57 = v40;
      v58 = v39;
      v59 = v17;
      v60 = v19;
      v61 = v21;
      v62 = v23;
      v63 = *(v5 + 136);
      v64 = v25;
      v65 = v27;
      v66 = v29;
      v67 = v31;
      v68 = v32;
      sub_18B829B78();
      v34 = v33;
      v36 = v35;

      sub_18B7CA054(a2, &v48, &unk_1EA9D5060);
      if (v49)
      {
        sub_18B7C3FA4(&v48, v50);
        v37 = sub_18B82FEA0();
        sub_18B80DBC4(v50, &v48);
        sub_18B9CA280(&v48, v34, v36);

        sub_18B988BAC(&v48, &unk_1EA9D5060);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
      }

      else
      {
        sub_18B988BAC(&v48, &unk_1EA9D5060);
        v38 = sub_18B82FEA0();
        [v38 setContentOffset_];
      }
    }
  }
}

uint64_t sub_18B86184C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for SFFluidCollectionView.Element();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = swift_allocBox();
  v12 = v11;
  v13 = *(TupleTypeMetadata2 + 48);
  (*(*(a3 - 8) + 16))(v11, a1, a3);
  (*(*(v8 - 8) + 16))(v12 + v13, a2, v8);
  *a4 = v10;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18B8619A8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(_s4PageVMa_0() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_18B861A38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_18B861AC8(v4, a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_18B861AC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v61 - v6;
  v71 = _s4PageVMa();
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s4PageVMa_0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5340);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v22 = sub_18B7E2098();
  v24 = v23;
  v25 = &v2[OBJC_IVAR___SFTabOverviewDisplayItem_layout];
  swift_beginAccess();
  v26 = v25[5];
  v72 = v2;
  if (v26 == v22 && v25[6] == v24)
  {
    goto LABEL_10;
  }

  v63 = a2;
  v25[5] = v22;
  v25[6] = v24;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v79);

  sub_18B7DFD58(v79);
  v64 = v8;
  if ((v79[25] & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_18B7C9974();
  v29 = v28;
  v30 = sub_18B7CEA3C();
  if (!v30)
  {

    goto LABEL_8;
  }

  v31 = *&v30[OBJC_IVAR___SFTabOverview_searchState + 8];

  if (!v31)
  {
LABEL_8:
    v32 = sub_18B7CFAA0();
    goto LABEL_9;
  }

  v32 = 1;
LABEL_9:
  *(v25 + *(_s6LayoutVMa() + 68)) = v32 & 1;
  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  v62 = objc_opt_self();
  v77 = sub_18B862CAC;
  v78 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_18B7B0DB0;
  v76 = &block_descriptor_289;
  v34 = _Block_copy(&aBlock);
  v35 = v72;
  sub_18BC1E1A8();

  v77 = CGRectMake;
  v78 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_18B8043A0;
  v76 = &block_descriptor_292;
  v36 = _Block_copy(&aBlock);

  [v62 _animateByRetargetingAnimations_completion_];
  _Block_release(v36);
  _Block_release(v34);

  v8 = v64;
  a2 = v63;
LABEL_10:
  sub_18B7DF568(a2, v21, _s4PageVMa_0);
  v37 = *(v10 + 56);
  v37(v21, 0, 1, v9);
  if (*(v68 + qword_1EA9F7FF0))
  {
    v37(v18, 1, 1, v9);
  }

  else
  {
    v38 = sub_18B7CC308();
    v39 = sub_18B7C2E68(v38);
    [v39 bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v80.origin.x = v41;
    v80.origin.y = v43;
    v80.size.width = v45;
    v80.size.height = v47;
    MidX = CGRectGetMidX(v80);
    v81.origin.x = v41;
    v81.origin.y = v43;
    v81.size.width = v45;
    v81.size.height = v47;
    MidY = CGRectGetMidY(v81);
    sub_18B7CECB4(v18, MidX, MidY);
  }

  v50 = *(v67 + 48);
  sub_18B7CA054(v21, v13, &unk_1EA9DBE90);
  sub_18B7CA054(v18, &v13[v50], &unk_1EA9DBE90);
  v51 = *(v10 + 48);
  if (v51(v13, 1, v9) != 1)
  {
    v55 = v66;
    sub_18B7CA054(v13, v66, &unk_1EA9DBE90);
    if (v51(&v13[v50], 1, v9) != 1)
    {
      v56 = v65;
      sub_18B81F940(&v13[v50], v65, _s4PageVMa_0);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7DFF04(v56, _s4PageVMa_0);
      sub_18B988BAC(v18, &unk_1EA9DBE90);
      sub_18B988BAC(v21, &unk_1EA9DBE90);
      sub_18B7DFF04(v55, _s4PageVMa_0);
      sub_18B988BAC(v13, &unk_1EA9DBE90);
      v52 = v72;
      v53 = v71;
      v54 = v70;
      if ((updated & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    sub_18B988BAC(v18, &unk_1EA9DBE90);
    sub_18B988BAC(v21, &unk_1EA9DBE90);
    sub_18B7DFF04(v55, _s4PageVMa_0);
LABEL_18:
    sub_18B988BAC(v13, &qword_1EA9D5340);
    v52 = v72;
    v53 = v71;
    v54 = v70;
    goto LABEL_21;
  }

  sub_18B988BAC(v18, &unk_1EA9DBE90);
  sub_18B988BAC(v21, &unk_1EA9DBE90);
  if (v51(&v13[v50], 1, v9) != 1)
  {
    goto LABEL_18;
  }

  sub_18B988BAC(v13, &unk_1EA9DBE90);
  v52 = v72;
  v53 = v71;
  v54 = v70;
LABEL_20:
  sub_18B862CB8(0x8000000000000000);
LABEL_21:
  sub_18B7CFD08(v54);
  if ((*(v69 + 48))(v54, 1, v53) == 1)
  {
    sub_18B988BAC(v54, &qword_1EA9D52E0);
  }

  else
  {
    sub_18B81F940(v54, v8, _s4PageVMa);
    if ((([objc_opt_self() isSolariumEnabled] & 1) != 0 || (v8[*(v53 + 40)] & 1) != 0 || v8[*(v53 + 48)] != 1) && (v58 = *&v52[OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView]) != 0 && v58[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2] == 1)
    {
      v59 = *&v58[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField];
      v60 = v58;
      [v59 resignFirstResponder];
      sub_18B7DFF04(v8, _s4PageVMa);
    }

    else
    {
      sub_18B7DFF04(v8, _s4PageVMa);
    }
  }
}

void sub_18B86246C(uint64_t a1)
{
  v2 = _s4PageVMa_0();
  if (*(a1 + *(v2 + 24)) != 1 || (Strong = swift_unknownObjectUnownedLoadStrong(), sub_18B7C9B24(v14), Strong, sub_18B7DFD58(v14), (v14[0] & 1) != 0))
  {
    v4 = a1 + *(v2 + 20);
    if (!*(v4 + 32) || (*(v4 + 50) & 1) == 0)
    {
      sub_18B7C9974();
      v6 = v5;
      sub_18B862650(a1, v15);

      v28 = v19;
      v29 = v20;
      v30 = v21;
      v31 = v22;
      v25 = v16;
      v26 = v17;
      v27 = v18;
      v23 = v15[0];
      v24 = v15[1];
      if (sub_18B862A64(&v23) != 1)
      {
        v7 = *&v23;
        origin = v25.origin;
        size = v25.size;
        v10 = *&v26;
        v11 = *&v27;
        v12 = *&v24 + *(&v28 + 1);
        v13 = v12 - CGRectGetMaxY(v25);
        v32.origin = origin;
        v32.size = size;
        CGRectGetMaxX(v32);
        SFChromeVisibilityForScrollDistance(v13 - v11);
        v33.origin = origin;
        v33.size = size;
        CGRectGetMaxY(v33);
        v34.origin = origin;
        v34.size = size;
        CGRectGetMaxX(v34);
        SFChromeVisibilityForScrollDistance(v7 + origin.y - v10);
      }
    }
  }
}

double sub_18B862650@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_18B862854(a1, 0xD000000000000017, 0x800000018BC60750);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

LABEL_5:
    sub_18BA5A23C(&v61);
    goto LABEL_6;
  }

  v5 = sub_18B82FEA0();

  [v5 adjustedContentInset];
  v49 = v7;
  v50 = v6;
  v47 = v9;
  v48 = v8;
  [v5 bounds];
  v45 = v11;
  v46 = v10;
  v43 = v13;
  v44 = v12;
  sub_18B7E0E4C();
  v41 = v15;
  v42 = v14;
  v17 = v16;
  v19 = v18;
  [v5 contentSize];
  v21 = v20;
  v23 = v22;
  [v5 frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v5 isTracking];

  *&v51 = v50;
  *(&v51 + 1) = v49;
  *&v52 = v48;
  *(&v52 + 1) = v47;
  *&v53 = v46;
  *(&v53 + 1) = v45;
  *&v54 = v44;
  *(&v54 + 1) = v43;
  *&v55 = v42;
  *(&v55 + 1) = v41;
  *&v56 = v17;
  *(&v56 + 1) = v19;
  *&v57 = v21;
  *(&v57 + 1) = v23;
  *&v58 = v25;
  *(&v58 + 1) = v27;
  *&v59 = v29;
  *(&v59 + 1) = v31;
  v60 = v32;
  CGRectMake(&v51, v33, v34, v35);
  v67 = v57;
  v68 = v58;
  v69 = v59;
  v70 = v60;
  v63 = v53;
  v64 = v54;
  v65 = v55;
  v66 = v56;
  v61 = v51;
  v62 = v52;
LABEL_6:
  v36 = v68;
  *(a2 + 96) = v67;
  *(a2 + 112) = v36;
  *(a2 + 128) = v69;
  *(a2 + 144) = v70;
  v37 = v64;
  *(a2 + 32) = v63;
  *(a2 + 48) = v37;
  v38 = v66;
  *(a2 + 64) = v65;
  *(a2 + 80) = v38;
  result = *&v61;
  v40 = v62;
  *a2 = v61;
  *(a2 + 16) = v40;
  return result;
}