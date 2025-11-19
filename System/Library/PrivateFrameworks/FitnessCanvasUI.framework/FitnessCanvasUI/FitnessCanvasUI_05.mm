void sub_1E67D3FB0()
{
  if (!qword_1EE2EBE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED098210);
    v0 = type metadata accessor for AssumeEquatable();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EBE78);
    }
  }
}

uint64_t sub_1E67D405C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = v2[3];
  v40 = v2[2];
  v37 = v2[5];
  v38 = v2[4];
  v35 = v2[7];
  v36 = v2[6];
  v33 = v2[9];
  v34 = v2[8];
  v31 = v2[11];
  v32 = v2[10];
  v29 = v2[13];
  v30 = v2[12];
  v27 = v2[15];
  v28 = v2[14];
  v25 = v2[17];
  v26 = v2[16];
  v23 = v2[19];
  v24 = v2[18];
  v3 = v2[21];
  v22 = v2[20];
  v4 = v2[22];
  v5 = v2[23];
  v6 = v2[24];
  v7 = v2[25];
  v9 = v2[26];
  v8 = v2[27];
  v11 = v2[28];
  v10 = v2[29];
  type metadata accessor for VerticalGridView();
  *&v21 = v9;
  *(&v21 + 1) = v8;
  *&v20 = v6;
  *(&v20 + 1) = v7;
  *&v19 = v4;
  *(&v19 + 1) = v5;
  *&v18 = v22;
  *(&v18 + 1) = v3;
  *(&v17 + 1) = v25;
  *(&v16 + 1) = v27;
  *&v17 = v26;
  *(&v15 + 1) = v29;
  *&v16 = v28;
  *(&v14 + 1) = v31;
  *&v15 = v30;
  *(&v13 + 1) = v33;
  *&v14 = v32;
  *&v13 = v34;
  return sub_1E67D2794(a1, v40, v39, v38, v37, v36, v35, a2, v13, v14, v15, v16, v17, v24, v23, v18, v19, v20, v21, v11, v10);
}

uint64_t sub_1E67D4364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 120);
  v19 = *(v0 + 16);
  v18 = *(v0 + 104);
  v17 = *(v0 + 128);
  v2 = type metadata accessor for VerticalGridView();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 240) & ~v3;
  v5 = v0 + v4;
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CanvasSectionHeader();
  if (!(*(*(v6 - 8) + 48))(v0 + v4, 1, v6))
  {
    v7 = sub_1E68B1820();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
    v8 = *(v6 + 52);
    v9 = *(v18 - 8);
    if (!(*(v9 + 48))(v5 + v8, 1, v18))
    {
      (*(v9 + 8))(v5 + v8, v18);
    }

    v10 = *(v6 + 56);
    v11 = *(v19 - 8);
    if (!(*(v11 + 48))(v5 + v10, 1, v19))
    {
      (*(v11 + 8))(v5 + v10, v19);
    }
  }

  v12 = v2[63];
  v13 = *(v1 - 8);
  if (!(*(v13 + 48))(v5 + v12, 1, v1))
  {
    (*(v13 + 8))(v5 + v12, v1);
  }

  (*(*(v17 - 8) + 8))(v5 + v2[67]);

  if (*(v5 + v2[75]))
  {
  }

  if (*(v5 + v2[76]))
  {
  }

  if (*(v5 + v2[77]))
  {
  }

  v14 = v2[78];
  v15 = sub_1E68B1950();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  return swift_deallocObject();
}

uint64_t sub_1E67D4854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = v3[3];
  v33 = v3[2];
  v30 = v3[5];
  v31 = v3[4];
  v28 = v3[7];
  v29 = v3[6];
  v26 = v3[9];
  v27 = v3[8];
  v24 = v3[11];
  v25 = v3[10];
  v22 = v3[13];
  v23 = v3[12];
  v20 = v3[15];
  v21 = v3[14];
  v18 = v3[17];
  v19 = v3[16];
  v16 = v3[19];
  v17 = v3[18];
  v4 = v3[21];
  v15 = v3[20];
  v5 = v3[22];
  v6 = v3[23];
  v7 = v3[24];
  v8 = v3[25];
  v9 = v3[26];
  v10 = v3[27];
  v12 = v3[28];
  v11 = v3[29];
  v13 = *(type metadata accessor for VerticalGridView() - 8);
  return sub_1E67D04BC(a1, a2, v3 + ((*(v13 + 80) + 240) & ~*(v13 + 80)), v33, v32, v31, v30, v29, a3, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v4, v5, v6, v7, v8, v9, v10, v12, v11);
}

uint64_t (*sub_1E67D49EC())(uint64_t a1)
{
  v30 = v0[3];
  v31 = v0[2];
  v28 = v0[5];
  v29 = v0[4];
  v26 = v0[7];
  v27 = v0[6];
  v24 = v0[9];
  v25 = v0[8];
  v22 = v0[11];
  v23 = v0[10];
  v20 = v0[13];
  v21 = v0[12];
  v18 = v0[15];
  v19 = v0[14];
  v16 = v0[17];
  v17 = v0[16];
  v1 = v0[18];
  v14 = v0[20];
  v15 = v0[19];
  v13 = v0[21];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[29];
  v10 = *(type metadata accessor for VerticalGridView() - 8);
  v11 = (*(v10 + 80) + 240) & ~*(v10 + 80);
  return sub_1E67CA91C(v0 + v11, v0 + ((v11 + *(v10 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v1, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E67D4BF0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v32 = *(v2 + 3);
  v33 = *(v2 + 2);
  v30 = *(v2 + 5);
  v31 = *(v2 + 4);
  v28 = *(v2 + 7);
  v29 = *(v2 + 6);
  v26 = *(v2 + 9);
  v27 = *(v2 + 8);
  v24 = *(v2 + 11);
  v25 = *(v2 + 10);
  v22 = *(v2 + 13);
  v23 = *(v2 + 12);
  v20 = *(v2 + 15);
  v21 = *(v2 + 14);
  v18 = *(v2 + 17);
  v19 = *(v2 + 16);
  v16 = *(v2 + 19);
  v17 = *(v2 + 18);
  v3 = *(v2 + 21);
  v15 = *(v2 + 20);
  v4 = *(v2 + 22);
  v5 = *(v2 + 23);
  v6 = *(v2 + 24);
  v7 = *(v2 + 25);
  v8 = *(v2 + 26);
  v9 = *(v2 + 27);
  v11 = *(v2 + 28);
  v10 = *(v2 + 29);
  v12 = *(type metadata accessor for VerticalGridView() - 8);
  v13 = (*(v12 + 80) + 240) & ~*(v12 + 80);
  return a2(a1, &v2[v13], *&v2[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8], v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 120);
  v19 = *(v0 + 16);
  v18 = *(v0 + 104);
  v17 = *(v0 + 128);
  v2 = type metadata accessor for VerticalGridView();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 240) & ~v3;
  v5 = v0 + v4;
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for CanvasSectionHeader();
  if (!(*(*(v6 - 8) + 48))(v0 + v4, 1, v6))
  {
    v7 = sub_1E68B1820();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
    v8 = *(v6 + 52);
    v9 = *(v18 - 8);
    if (!(*(v9 + 48))(v5 + v8, 1, v18))
    {
      (*(v9 + 8))(v5 + v8, v18);
    }

    v10 = *(v6 + 56);
    v11 = *(v19 - 8);
    if (!(*(v11 + 48))(v5 + v10, 1, v19))
    {
      (*(v11 + 8))(v5 + v10, v19);
    }
  }

  v12 = v2[63];
  v13 = *(v1 - 8);
  if (!(*(v13 + 48))(v5 + v12, 1, v1))
  {
    (*(v13 + 8))(v5 + v12, v1);
  }

  (*(*(v17 - 8) + 8))(v5 + v2[67]);

  if (*(v5 + v2[75]))
  {
  }

  if (*(v5 + v2[76]))
  {
  }

  if (*(v5 + v2[77]))
  {
  }

  v14 = v2[78];
  v15 = sub_1E68B1950();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  return swift_deallocObject();
}

void (*sub_1E67D529C(uint64_t (*a1)(uint64_t)))(uint64_t)
{
  v32 = v1[2];
  v30 = v1[4];
  v31 = v1[3];
  v28 = v1[6];
  v29 = v1[5];
  v26 = v1[8];
  v27 = v1[7];
  v24 = v1[10];
  v25 = v1[9];
  v22 = v1[12];
  v23 = v1[11];
  v20 = v1[14];
  v21 = v1[13];
  v18 = v1[16];
  v19 = v1[15];
  v16 = v1[18];
  v17 = v1[17];
  v2 = v1[21];
  v14 = v1[20];
  v15 = v1[19];
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = v1[26];
  v8 = v1[27];
  v10 = v1[28];
  v9 = v1[29];
  v11 = *(type metadata accessor for VerticalGridView() - 8);
  v12 = (*(v11 + 80) + 240) & ~*(v11 + 80);
  return sub_1E67CAE98(v1 + v12, *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v2, v3, v4, v5, v6, v7, v8, v10, v9, a1);
}

uint64_t HGrid.init(maxRowCount:alignment:spacing:items:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a8;
  *(a7 + 32) = a9;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  return result;
}

uint64_t sub_1E67D569C(uint64_t a1)
{
  v3 = v1[1];
  v24[0] = *v1;
  v24[1] = v3;
  v4 = v1[3];
  v25 = v1[2];
  v26 = v4;
  v19 = *(&v25 + 1);
  v5 = *(a1 + 16);
  sub_1E68B33B0();
  swift_getWitnessTable();
  if (sub_1E68B36E0())
  {
    v6 = *(a1 + 40);
    v19 = v5;
    v20 = *(a1 + 24);
    v21 = v6;
    type metadata accessor for HGrid.Row();
    return sub_1E68B3350();
  }

  result = sub_1E68B3380();
  v8 = *&v24[0];
  if (*&v24[0] >= result)
  {
    v8 = result;
  }

  v9 = ceil(result / v8);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v22 = 0;
  v23 = v8;
  MEMORY[0x1EEE9AC00](result);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v18[2] = v5;
  v18[3] = v10;
  v12 = *(a1 + 40);
  v18[4] = v11;
  v18[5] = v12;
  v18[6] = v13;
  v18[7] = v24;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098398);
  v19 = v5;
  *&v20 = v10;
  *(&v20 + 1) = v11;
  v21 = v12;
  v15 = type metadata accessor for HGrid.Row();
  v16 = sub_1E67D7030(&qword_1ED0983A0, &qword_1ED098398);
  return sub_1E6840A10(sub_1E67D6F8C, v18, v14, v15, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
}

uint64_t *sub_1E67D58CC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v9 = *result * a2;
  if ((*result * a2) >> 64 != v9 >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9 + a2;
  if (__OFADD__(v9, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = (v10 - 1);
  if (__OFSUB__(v10, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v24 = *result;
  result = sub_1E68B3380();
  v17 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v17 >= v11)
  {
    v17 = v11;
  }

  if (v17 >= v9)
  {
    v23[1] = v23;
    v23[6] = v9;
    v23[7] = v17;
    MEMORY[0x1EEE9AC00](result);
    v22[2] = a4;
    v22[3] = a5;
    v22[4] = a6;
    v22[5] = a7;
    v22[6] = a3;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0983A8);
    v23[2] = a4;
    v23[3] = a5;
    v23[4] = a6;
    v23[5] = a7;
    v19 = type metadata accessor for HGrid.RowItem();
    v20 = sub_1E67D7030(&qword_1ED0983B0, &qword_1ED0983A8);
    result = sub_1E6840A10(sub_1E67D7008, v22, v18, v19, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
    *a8 = v24;
    a8[1] = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1E67D5A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  sub_1E68B33F0();
  (*(v11 + 32))(a6, v13, a2);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  result = type metadata accessor for HGrid.RowItem();
  *(a6 + *(result + 52)) = v15;
  return result;
}

uint64_t HGrid.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  type metadata accessor for HGrid.Row();
  v6 = sub_1E68B33B0();
  v23 = v2;
  type metadata accessor for HGrid.RowItem();
  sub_1E68B33B0();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  v32 = v5;
  v7 = v5;
  swift_getWitnessTable();
  v8 = sub_1E68B2D60();
  WitnessTable = swift_getWitnessTable();
  *&v33 = v6;
  *(&v33 + 1) = MEMORY[0x1E69E6530];
  *&v34 = v8;
  *(&v34 + 1) = WitnessTable;
  *&v35 = MEMORY[0x1E69E6540];
  sub_1E68B2D40();
  v31 = swift_getWitnessTable();
  swift_getWitnessTable();
  v10 = sub_1E68B2640();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v17 = v24[1];
  v33 = *v24;
  v34 = v17;
  v18 = v24[3];
  v35 = v24[2];
  v36 = v18;
  v26 = v3;
  v27 = v23;
  v28 = v4;
  v29 = v7;
  v30 = &v33;
  sub_1E68B2630();
  v19 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v13, v10, v19);
  v20 = *(v11 + 8);
  v20(v13, v10);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v16, v10, v19);
  return (v20)(v16, v10);
}

uint64_t sub_1E67D5F08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a6;
  type metadata accessor for HGrid.Row();
  v32 = sub_1E68B33B0();
  type metadata accessor for HGrid.RowItem();
  sub_1E68B33B0();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  v43 = a5;
  v30 = MEMORY[0x1E69819D0];
  swift_getWitnessTable();
  *&v28 = sub_1E68B2D60();
  *(&v28 + 1) = swift_getWitnessTable();
  *&v39 = v32;
  *(&v39 + 1) = MEMORY[0x1E69E6530];
  v40 = v28;
  *&v41 = MEMORY[0x1E69E6540];
  v11 = sub_1E68B2D40();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - v15;
  v17 = a1[1];
  v39 = *a1;
  v40 = v17;
  v18 = a1[3];
  v41 = a1[2];
  v42 = v18;
  v38[0] = a2;
  v38[1] = a3;
  v38[2] = a4;
  v38[3] = a5;
  v19 = type metadata accessor for HGrid();
  v38[8] = sub_1E67D569C(v19);
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v27[1] = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  v21 = a1[1];
  *(v20 + 48) = *a1;
  *(v20 + 64) = v21;
  v22 = a1[3];
  *(v20 + 80) = a1[2];
  *(v20 + 96) = v22;
  (*(*(v19 - 8) + 16))(v38, a1, v19);
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2D30();
  v37 = WitnessTable;
  v23 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v13, v11, v23);
  v24 = *(v29 + 8);
  v24(v13, v11);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v16, v11, v23);
  return (v24)(v16, v11);
}

uint64_t sub_1E67D6320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a1;
  v25 = a2;
  v26 = a7;
  type metadata accessor for HGrid.RowItem();
  v35 = sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = a4;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  v34 = a6;
  swift_getWitnessTable();
  v11 = sub_1E68B2D60();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v18 = *v24;
  v19 = v24[1];
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = v18;
  v32 = v19;
  v33 = v25;
  sub_1E68B2D50();
  v20 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v14, v11, v20);
  v21 = *(v12 + 8);
  v21(v14, v11);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v17, v11, v20);
  return (v21)(v17, v11);
}

uint64_t sub_1E67D65A8@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v27 = a1;
  v32 = a7;
  type metadata accessor for HGrid.RowItem();
  v30 = sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v30;
  v39 = AssociatedTypeWitness;
  v40 = a4;
  v41 = WitnessTable;
  v42 = AssociatedConformanceWitness;
  v13 = sub_1E68B2D40();
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v26 - v17;
  v43 = v27;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v26[1] = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  v20 = a2[1];
  *(v19 + 48) = *a2;
  *(v19 + 64) = v20;
  v21 = a2[3];
  *(v19 + 80) = a2[2];
  *(v19 + 96) = v21;

  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v22 = type metadata accessor for HGrid();
  (*(*(v22 - 8) + 16))(&v38, a2, v22);
  sub_1E68B2D30();
  v37 = a6;
  v23 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v15, v13, v23);
  v24 = *(v31 + 8);
  v24(v15, v13);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v18, v13, v23);
  return (v24)(v18, v13);
}

uint64_t sub_1E67D68AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13;
  v16 = *(v15 + 48);
  v24[0] = v17;
  v24[1] = v18;
  v24[2] = v19;
  v24[3] = v20;
  v21 = type metadata accessor for HGrid.RowItem();
  v16(a1, *(a1 + *(v21 + 52)));
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v11, a4, a6);
  v22 = *(v9 + 8);
  v22(v11, a4);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v14, a4, a6);
  return (v22)(v14, a4);
}

uint64_t sub_1E67D6A58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E67D6AA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E67D6AF0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1E67D6B58()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E67D6BD0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1E67D6CD4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_1E67D6E58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E67D6E94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E67D6EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_2()
{

  return swift_deallocObject();
}

unint64_t sub_1E67D6FB4()
{
  result = qword_1EE2EA4C0;
  if (!qword_1EE2EA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA4C0);
  }

  return result;
}

uint64_t sub_1E67D7030(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1E67D6FB4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E67D70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  *(v26 + 24) = a4;
  *(v26 + 32) = a5;
  *(v26 + 40) = a6;
  *(v26 + 48) = a7;
  *(v26 + 56) = a8;
  *(v26 + 64) = a9;
  *(v26 + 80) = a10;
  *(v26 + 96) = a11;
  *(v26 + 112) = a12;
  *(v26 + 128) = a13;
  *(v26 + 144) = a14;
  *(v26 + 160) = a15;
  *(v26 + 176) = a16;
  *(v26 + 192) = a17;
  *(v26 + 200) = a18;
  *(v26 + 208) = a1;
  *(v26 + 216) = a2;
  v29[0] = sub_1E67E4008;
  v29[1] = v26;
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208);
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v29, FunctionTypeMetadata2, &v30);
  return v30;
}

uint64_t (*sub_1E67D71F4(uint64_t a1))(uint64_t a1, uint64_t a2, char a3)
{
  v3 = (v1 + *(a1 + 232));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  *(v6 + 208) = v5;
  *(v6 + 216) = v4;

  return sub_1E67E3F34;
}

uint64_t sub_1E67D7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
  *(v25 + 32) = a5;
  *(v25 + 40) = a6;
  *(v25 + 48) = a7;
  *(v25 + 56) = a8;
  *(v25 + 64) = a9;
  *(v25 + 72) = a10;
  *(v25 + 80) = a11;
  *(v25 + 88) = a12;
  *(v25 + 96) = a13;
  *(v25 + 104) = a14;
  *(v25 + 112) = a15;
  *(v25 + 120) = a16;
  *(v25 + 128) = a17;
  *(v25 + 144) = a18;
  *(v25 + 160) = a19;
  *(v25 + 168) = a20;
  *(v25 + 176) = a21;
  *(v25 + 184) = a22;
  *(v25 + 192) = a23;
  *(v25 + 200) = a24;
  *(v25 + 208) = a1;
  *(v25 + 216) = a2;
  v36[0] = sub_1E67E3FDC;
  v36[1] = v25;
  v35[0] = a13;
  v35[1] = a15;
  v35[2] = a21;
  v35[3] = a23;
  type metadata accessor for CanvasLayout();
  FunctionTypeMetadata3 = swift_getFunctionTypeMetadata3();
  sub_1E672890C(v36, FunctionTypeMetadata3, v35);
  return v35[0];
}

uint64_t (*sub_1E67D7410(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = (v1 + *(a1 + 248));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  v7 = *(a1 + 32);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v7;
  v8 = *(a1 + 64);
  *(v6 + 48) = *(a1 + 48);
  *(v6 + 64) = v8;
  v9 = *(a1 + 96);
  *(v6 + 80) = *(a1 + 80);
  *(v6 + 96) = v9;
  v10 = *(a1 + 128);
  *(v6 + 112) = *(a1 + 112);
  *(v6 + 128) = v10;
  v11 = *(a1 + 160);
  *(v6 + 144) = *(a1 + 144);
  *(v6 + 160) = v11;
  v12 = *(a1 + 192);
  *(v6 + 176) = *(a1 + 176);
  *(v6 + 192) = v12;
  *(v6 + 208) = v5;
  *(v6 + 216) = v4;

  return sub_1E67E3F74;
}

uint64_t (*sub_1E67D74B4(uint64_t a1))()
{
  v2 = (v1 + *(a1 + 252));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E67D5680;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3);
  return v6;
}

uint64_t sub_1E67D7538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = sub_1E67E403C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (v3 + *(a3 + 252));
  result = sub_1E672E440(*v9);
  *v9 = v8;
  v9[1] = v7;
  return result;
}

uint64_t (*sub_1E67D75C4(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 256));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E67D5450;
  }

  else
  {
    v6 = 0;
  }

  sub_1E6739D68(v3);
  return v6;
}

uint64_t sub_1E67D7648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = sub_1E67E3FAC;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (v3 + *(a3 + 256));
  result = sub_1E672E440(*v9);
  *v9 = v8;
  v9[1] = v7;
  return result;
}

uint64_t (*sub_1E67D76D4(uint64_t a1))()
{
  v2 = (v1 + *(a1 + 260));
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v6 = swift_allocObject();
    v7 = *(a1 + 32);
    *(v6 + 16) = *(a1 + 16);
    *(v6 + 32) = v7;
    v8 = *(a1 + 64);
    *(v6 + 48) = *(a1 + 48);
    *(v6 + 64) = v8;
    v9 = *(a1 + 96);
    *(v6 + 80) = *(a1 + 80);
    *(v6 + 96) = v9;
    v10 = *(a1 + 128);
    *(v6 + 112) = *(a1 + 112);
    *(v6 + 128) = v10;
    v11 = *(a1 + 160);
    *(v6 + 144) = *(a1 + 144);
    *(v6 + 160) = v11;
    v12 = *(a1 + 192);
    *(v6 + 176) = *(a1 + 176);
    *(v6 + 192) = v12;
    *(v6 + 208) = v3;
    *(v6 + 216) = v4;
    v13 = sub_1E67E3F0C;
  }

  else
  {
    v13 = 0;
  }

  sub_1E6739D68(v3);
  return v13;
}

uint64_t sub_1E67D778C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = swift_allocObject();
    v8 = *(a3 + 32);
    *(v7 + 16) = *(a3 + 16);
    *(v7 + 32) = v8;
    v9 = *(a3 + 64);
    *(v7 + 48) = *(a3 + 48);
    *(v7 + 64) = v9;
    v10 = *(a3 + 96);
    *(v7 + 80) = *(a3 + 80);
    *(v7 + 96) = v10;
    v11 = *(a3 + 128);
    *(v7 + 112) = *(a3 + 112);
    *(v7 + 128) = v11;
    v12 = *(a3 + 160);
    *(v7 + 144) = *(a3 + 144);
    *(v7 + 160) = v12;
    v13 = *(a3 + 192);
    *(v7 + 176) = *(a3 + 176);
    *(v7 + 192) = v13;
    *(v7 + 208) = a1;
    *(v7 + 216) = a2;
    v14 = sub_1E67E3FB4;
  }

  else
  {
    v14 = 0;
    v7 = 0;
  }

  v15 = (v3 + *(a3 + 260));
  result = sub_1E672E440(*v15);
  *v15 = v14;
  v15[1] = v7;
  return result;
}

uint64_t sub_1E67D7848()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0983D0);
  sub_1E68B2BD0();
  return v1;
}

uint64_t sub_1E67D78F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0983D0);
  sub_1E68B2BF0();
  return v1;
}

uint64_t sub_1E67D794C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0983D8);
  sub_1E68B2BD0();
  return v1;
}

uint64_t sub_1E67D7A10()
{
  sub_1E68B33B0();

  swift_getWitnessTable();
  sub_1E68B38B0();
  v0 = sub_1E68B3380();

  return v0;
}

double sub_1E67D7AF4(uint64_t a1)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 192);
  type metadata accessor for CanvasLayout();
  v5 = sub_1E677ADA4(*(v1 + *(a1 + 264)), *(v1 + *(a1 + 264) + 8), *(v1 + *(a1 + 264) + 16));
  v6 = (*(v4 + 56))(v3, v4, v5);
  result = 0.0;
  if (v6)
  {
    return sub_1E677ADA4(*(v1 + *(a1 + 264)), *(v1 + *(a1 + 264) + 8), *(v1 + *(a1 + 264) + 16)) * (*(v1 + *(a1 + 224) + 8) / *(v1 + *(a1 + 224))) * 0.2;
  }

  return result;
}

uint64_t CarouselView.init(items:metrics:layout:aspectRatio:pageControlSpacing:actionButtonViewBuilder:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:viewDescriptorBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, uint64_t a38, uint64_t a39)
{
  *a9 = 0;
  v84 = a25;
  v85 = a26;
  v86 = a27;
  v87 = a28;
  v88 = a29;
  v89 = a30;
  v90 = a31;
  v91 = a32;
  v92 = a33;
  v93 = a34;
  v94 = a35;
  v95 = a36;
  v96 = a37;
  v97 = a38;
  v98 = a39;
  v45 = type metadata accessor for CarouselView();
  v46 = &a9[v45[63]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v47 = &a9[v45[64]];
  *v47 = 0;
  *(v47 + 1) = 0;
  v48 = v45[65];
  swift_getFunctionTypeMetadata1();
  v49 = sub_1E68B3750();
  v99 = 0;
  v100 = 0;
  sub_1E672890C(&v99, v49, &v84);
  *&a9[v48] = v84;
  v50 = &a9[v45[66]];
  *v50 = swift_getKeyPath();
  *(v50 + 1) = 0;
  v50[16] = 0;
  v51 = v45[67];
  v99 = 0;
  sub_1E68B2BC0();
  *&a9[v51] = v84;
  v52 = &a9[v45[68]];
  LOBYTE(v99) = 0;
  sub_1E68B2BC0();
  v53 = *(&v84 + 1);
  *v52 = v84;
  *(v52 + 1) = v53;
  v54 = &a9[v45[69]];
  LOBYTE(v99) = 1;
  sub_1E68B2BC0();
  v55 = *(&v84 + 1);
  *v54 = v84;
  *(v54 + 1) = v55;
  *(a9 + 1) = a1;
  v56 = v45[54];
  v75 = sub_1E68B3750();
  v77 = *(v75 - 8);
  (*(v77 + 16))(&a9[v56], a2, v75);
  v57 = v45[55];
  *&v84 = a32;
  *(&v84 + 1) = a33;
  v85 = a37;
  v86 = a38;
  v73 = type metadata accessor for CanvasLayout();
  v74 = *(v73 - 8);
  (*(v74 + 16))(&a9[v57], a3, v73);
  v58 = v45[70];
  v71 = sub_1E68B1950();
  v72 = *(v71 - 8);
  (*(v72 + 16))(&a9[v58], a24, v71);
  v59 = &a9[v45[56]];
  *v59 = a10;
  v59[1] = a11;
  *&a9[v45[57]] = a12;
  v60 = &a9[v45[58]];

  *v60 = sub_1E67D70A0(a4, a5, a25, *(&a25 + 1), a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
  v60[1] = v61;
  v62 = v45[59];
  v99 = a6;
  v100 = a7;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v99, FunctionTypeMetadata1, &v84);
  *&a9[v62] = v84;
  v64 = v45[60];
  v99 = a8;
  v100 = a13;
  v65 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v99, v65, &v84);
  *&a9[v64] = v84;
  v66 = v45[61];
  v99 = a14;
  v100 = a15;
  v67 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v99, v67, &v84);
  *&a9[v66] = v84;
  v68 = &a9[v45[62]];

  *v68 = sub_1E67D7298(a16, a17, a25, *(&a25 + 1), a26, a27, a28, a29, a30, *(&a30 + 1), a31, *(&a31 + 1), a32, *(&a32 + 1), a33, *(&a33 + 1), a34, a35, a36, *(&a36 + 1), a37, *(&a37 + 1), a38, a39);
  v68[1] = v69;
  sub_1E6739D68(a22);
  sub_1E67D778C(a22, a23, v45);
  sub_1E6739D68(a18);
  sub_1E67D7538(a18, a19, v45);
  sub_1E67D7648(a20, a21, v45);
  sub_1E672E440(a18);
  sub_1E672E440(a22);

  (*(v72 + 8))(a24, v71);
  (*(v74 + 8))(a3, v73);
  return (*(v77 + 8))(a2, v75);
}

uint64_t CarouselView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6 = v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v5);
  v7 = (*(v3 + 80) + 208) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v162 = v8;
  *(v8 + 16) = *(a1 + 16);
  v166 = *(a1 + 24);
  *(v8 + 24) = v166;
  v10 = *(a1 + 40);
  v140 = *(a1 + 48);
  v9 = v140;
  *(v8 + 40) = v10;
  *(v8 + 48) = v9;
  v139 = *(a1 + 56);
  *(v8 + 56) = v139;
  v149 = *(a1 + 72);
  *(v8 + 72) = v149;
  *(v8 + 88) = *(a1 + 88);
  v11 = *(a1 + 112);
  v164 = *(a1 + 96);
  v171 = v11;
  *(v8 + 96) = v164;
  *(v8 + 112) = v11;
  v12 = *(a1 + 128);
  v13 = *(a1 + 136);
  *(v8 + 128) = v12;
  *(v8 + 136) = v13;
  v15 = *(a1 + 144);
  v14 = *(a1 + 152);
  *(v8 + 144) = v15;
  *(v8 + 152) = v14;
  v137 = *(a1 + 160);
  v138 = v14;
  v168 = *(a1 + 168);
  v16 = v168;
  *(v8 + 160) = v137;
  *(v8 + 168) = v16;
  v163 = *(a1 + 176);
  *(v8 + 176) = v163;
  v17 = *(a1 + 200);
  v170 = *(a1 + 192);
  *(v8 + 192) = v170;
  *(v8 + 200) = v17;
  (*(v3 + 32))(v8 + v7, v6, a1);
  v161 = v12;
  swift_getTupleTypeMetadata2();
  v18 = sub_1E68B33B0();
  v159 = *(v17 + 32);
  v160 = v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v148 = vdupq_lane_s64(v166, 0);
  v143 = v166;
  v238 = v148;
  v237 = v10;
  v239.i64[0] = v15;
  v239.i64[1] = v13;
  v240 = v13;
  v19 = type metadata accessor for ActionCardView();
  v156 = v19;
  WitnessTable = swift_getWitnessTable();
  v237 = v19;
  v238.i64[0] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v169 = sub_1E68B2440();
  sub_1E68B1E40();
  v20 = sub_1E68B1E40();
  v157 = sub_1E67E2D90(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v249 = v15;
  v250 = v157;
  v21 = MEMORY[0x1E697E858];
  v22 = swift_getWitnessTable();
  v247 = v22;
  v248 = MEMORY[0x1E697F568];
  v151 = v21;
  v153 = v20;
  v152 = swift_getWitnessTable();
  v237 = v20;
  v238.i64[0] = v152;
  v167 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v23 = sub_1E68B1E40();
  v145 = v23;
  v245 = v22;
  v246 = MEMORY[0x1E697E040];
  v144 = swift_getWitnessTable();
  v237 = v23;
  v238.i64[0] = v144;
  swift_getOpaqueTypeMetadata2();
  v146 = sub_1E68B2220();
  sub_1E68B2B90();
  v147 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v150 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v154 = sub_1E68B2220();
  v136 = sub_1E68B2220();
  v238 = v148;
  v127 = v149.i64[0];
  v239 = vzip1q_s64(v149, v171);
  v237 = v10;
  v240 = v15;
  v241 = v13;
  v242 = v13;
  v243 = v168;
  v244 = v170;
  v24 = type metadata accessor for FullWidthStageView();
  v149.i64[0] = v24;
  v148.i64[0] = swift_getWitnessTable();
  v237 = v24;
  v238.i64[0] = v148.i64[0];
  swift_getOpaqueTypeMetadata2();
  v25 = type metadata accessor for InfoActionCardView();
  v143 = v25;
  OpaqueTypeMetadata2 = swift_getWitnessTable();
  v237 = v25;
  v238.i64[0] = OpaqueTypeMetadata2;
  swift_getOpaqueTypeMetadata2();
  v141 = sub_1E68B2220();
  v117 = sub_1E68B2220();
  v237 = v10;
  v238.i64[0] = v140;
  v238.i64[1] = v139;
  v239.i64[0] = v15;
  v239.i64[1] = v138;
  v240 = v137;
  v26 = type metadata accessor for LargeBrickView();
  v140 = v26;
  *&v139 = swift_getWitnessTable();
  v237 = v26;
  v238.i64[0] = v139;
  swift_getOpaqueTypeMetadata2();
  v27 = type metadata accessor for DynamicBrickView();
  v138 = v27;
  v137 = swift_getWitnessTable();
  v237 = v27;
  v238.i64[0] = v137;
  swift_getOpaqueTypeMetadata2();
  v129 = sub_1E68B2220();
  v28 = type metadata accessor for MonogramVerticalStackView();
  v134 = v28;
  v133 = swift_getWitnessTable();
  v237 = v28;
  v238.i64[0] = v133;
  swift_getOpaqueTypeMetadata2();
  v130 = sub_1E68B2220();
  v135 = sub_1E68B2220();
  v110[0] = sub_1E68B2220();
  v29 = type metadata accessor for StandardCardView();
  v132 = v29;
  v131 = swift_getWitnessTable();
  v237 = v29;
  v238.i64[0] = v131;
  swift_getOpaqueTypeMetadata2();
  v237 = v10;
  v238.i64[0] = v166;
  v238.i64[1] = v15;
  v239.i64[0] = v13;
  v30 = type metadata accessor for StandardHorizontalStackView();
  *&v166 = v30;
  v128 = swift_getWitnessTable();
  v237 = v30;
  v238.i64[0] = v128;
  swift_getOpaqueTypeMetadata2();
  v113 = sub_1E68B2220();
  v31 = type metadata accessor for StandardVerticalStackView();
  v126 = v31;
  v125 = swift_getWitnessTable();
  v237 = v31;
  v238.i64[0] = v125;
  swift_getOpaqueTypeMetadata2();
  v121 = type metadata accessor for SummaryCardView();
  v124 = sub_1E68B2220();
  v110[1] = sub_1E68B2220();
  v32 = type metadata accessor for TallCardView();
  v122 = swift_getWitnessTable();
  v237 = v32;
  v238.i64[0] = v122;
  swift_getOpaqueTypeMetadata2();
  v33 = type metadata accessor for VerticalStackCardView();
  v116 = swift_getWitnessTable();
  v237 = v33;
  v238.i64[0] = v116;
  swift_getOpaqueTypeMetadata2();
  v110[2] = sub_1E68B2220();
  v34 = type metadata accessor for WideBrickView();
  v111 = swift_getWitnessTable();
  v237 = v34;
  v238.i64[0] = v111;
  swift_getOpaqueTypeMetadata2();
  v110[3] = sub_1E68B2220();
  v112 = sub_1E68B2220();
  v114 = sub_1E68B2220();
  v115 = sub_1E68B2220();
  v118 = sub_1E68B2B90();
  v119 = sub_1E68B1E40();
  v120 = sub_1E68B2220();
  v123 = sub_1E68B1E40();
  v127 = sub_1E68B1E40();
  v237 = v156;
  v238.i64[0] = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v237 = v153;
  v238.i64[0] = v152;
  v36 = swift_getOpaqueTypeConformance2();
  v237 = v145;
  v238.i64[0] = v144;
  v37 = swift_getOpaqueTypeConformance2();
  v235 = v36;
  v236 = v37;
  v234 = swift_getWitnessTable();
  v156 = MEMORY[0x1E6981600];
  v232 = swift_getWitnessTable();
  v233 = MEMORY[0x1E697E5D8];
  v38 = swift_getWitnessTable();
  v39 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v230 = v38;
  v231 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v228 = v40;
  v229 = v41;
  v42 = swift_getWitnessTable();
  v226 = OpaqueTypeConformance2;
  v227 = v42;
  v43 = swift_getWitnessTable();
  v237 = v149.i64[0];
  v238.i64[0] = v148.i64[0];
  v44 = swift_getOpaqueTypeConformance2();
  v237 = v143;
  v238.i64[0] = OpaqueTypeMetadata2;
  v45 = swift_getOpaqueTypeConformance2();
  v224 = v44;
  v225 = v45;
  v46 = swift_getWitnessTable();
  v222 = v43;
  v223 = v46;
  v47 = swift_getWitnessTable();
  v237 = v140;
  v238.i64[0] = v139;
  v48 = swift_getOpaqueTypeConformance2();
  v237 = v138;
  v238.i64[0] = v137;
  v49 = swift_getOpaqueTypeConformance2();
  v220 = v48;
  v221 = v49;
  v50 = swift_getWitnessTable();
  v237 = v134;
  v238.i64[0] = v133;
  v218 = swift_getOpaqueTypeConformance2();
  v219 = v49;
  v51 = swift_getWitnessTable();
  v216 = v50;
  v217 = v51;
  v52 = swift_getWitnessTable();
  v214 = v47;
  v215 = v52;
  v53 = swift_getWitnessTable();
  v237 = v132;
  v238.i64[0] = v131;
  v54 = swift_getOpaqueTypeConformance2();
  v237 = v166;
  v238.i64[0] = v128;
  v55 = swift_getOpaqueTypeConformance2();
  v212 = v54;
  v213 = v55;
  v56 = swift_getWitnessTable();
  v237 = v126;
  v238.i64[0] = v125;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = swift_getWitnessTable();
  v210 = v57;
  v211 = v58;
  v59 = swift_getWitnessTable();
  v208 = v56;
  v209 = v59;
  v60 = swift_getWitnessTable();
  v237 = v32;
  v238.i64[0] = v122;
  v61 = swift_getOpaqueTypeConformance2();
  v237 = v33;
  v238.i64[0] = v116;
  v62 = swift_getOpaqueTypeConformance2();
  v206 = v61;
  v207 = v62;
  v63 = swift_getWitnessTable();
  v237 = v34;
  v238.i64[0] = v111;
  v64 = swift_getOpaqueTypeConformance2();
  v204 = v168;
  v205 = v64;
  v65 = swift_getWitnessTable();
  v202 = v63;
  v203 = v65;
  v66 = swift_getWitnessTable();
  v200 = v60;
  v201 = v66;
  v67 = swift_getWitnessTable();
  v198 = v53;
  v199 = v67;
  v197 = swift_getWitnessTable();
  v195 = swift_getWitnessTable();
  v68 = v157;
  v196 = v157;
  v69 = swift_getWitnessTable();
  v193 = MEMORY[0x1E6981E60];
  v194 = v69;
  v70 = swift_getWitnessTable();
  v71 = MEMORY[0x1E69805D0];
  v191 = v70;
  v192 = MEMORY[0x1E69805D0];
  v189 = swift_getWitnessTable();
  v190 = v71;
  v72 = v127;
  v73 = swift_getWitnessTable();
  v237 = v72;
  v238.i64[0] = v73;
  swift_getOpaqueTypeMetadata2();
  v74 = sub_1E68B1E40();
  v237 = v72;
  v238.i64[0] = v73;
  v187 = swift_getOpaqueTypeConformance2();
  v188 = v68;
  v75 = swift_getWitnessTable();
  v237 = v74;
  v238.i64[0] = v75;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v76 = sub_1E68B1E40();
  v237 = v74;
  v238.i64[0] = v75;
  v185 = swift_getOpaqueTypeConformance2();
  v186 = v75;
  v183 = swift_getWitnessTable();
  v184 = MEMORY[0x1E697F568];
  v77 = swift_getWitnessTable();
  v237 = v76;
  v238.i64[0] = v77;
  swift_getOpaqueTypeMetadata2();
  v78 = sub_1E68B2220();
  v79 = v160;
  v80 = swift_getWitnessTable();
  v81 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v237 = v79;
  v238.i64[0] = v81;
  v238.i64[1] = v78;
  v239.i64[0] = v80;
  v239.i64[1] = AssociatedConformanceWitness;
  sub_1E68B2D40();
  v237 = v76;
  v238.i64[0] = v77;
  v83 = swift_getOpaqueTypeConformance2();
  v181 = MEMORY[0x1E6981E60];
  v182 = v83;
  v180 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getWitnessTable();
  sub_1E68B1B80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8);
  sub_1E68B1E40();
  v84 = sub_1E68B1E40();
  v85 = sub_1E68B2420();
  v86 = swift_getWitnessTable();
  v87 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
  v178 = v86;
  v179 = v87;
  v176 = swift_getWitnessTable();
  v177 = MEMORY[0x1E6980A30];
  v88 = swift_getWitnessTable();
  v237 = v84;
  v238.i64[0] = v85;
  v89 = MEMORY[0x1E697CA40];
  v238.i64[1] = v88;
  v239.i64[0] = MEMORY[0x1E697CA40];
  v90 = swift_getOpaqueTypeMetadata2();
  v237 = v84;
  v238.i64[0] = v85;
  v238.i64[1] = v88;
  v239.i64[0] = v89;
  v91 = swift_getOpaqueTypeConformance2();
  v237 = v90;
  v92 = MEMORY[0x1E69E6530];
  v238.i64[0] = MEMORY[0x1E69E6530];
  v93 = MEMORY[0x1E69E6550];
  v238.i64[1] = v91;
  v239.i64[0] = MEMORY[0x1E69E6550];
  v94 = swift_getOpaqueTypeMetadata2();
  v237 = v164;
  v238.i64[0] = v171.i64[0];
  v238.i64[1] = v163;
  v239.i64[0] = v170;
  v95 = type metadata accessor for CanvasLayout();
  v237 = v90;
  v238.i64[0] = v92;
  v238.i64[1] = v91;
  v239.i64[0] = v93;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = swift_getWitnessTable();
  v237 = v94;
  v238.i64[0] = v95;
  v238.i64[1] = v96;
  v239.i64[0] = v97;
  v98 = swift_getOpaqueTypeMetadata2();
  v237 = v94;
  v238.i64[0] = v95;
  v238.i64[1] = v96;
  v239.i64[0] = v97;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = sub_1E67E15BC();
  v101 = MEMORY[0x1E69E7DE0];
  v237 = v98;
  v238.i64[0] = MEMORY[0x1E69E7DE0];
  v238.i64[1] = v99;
  v239.i64[0] = v100;
  v102 = swift_getOpaqueTypeMetadata2();
  v237 = v98;
  v238.i64[0] = v101;
  v238.i64[1] = v99;
  v239.i64[0] = v100;
  v103 = swift_getOpaqueTypeConformance2();
  v237 = v102;
  v238.i64[0] = v103;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983C0);
  sub_1E68B1E40();
  v237 = v102;
  v238.i64[0] = v103;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = sub_1E673F530(&qword_1EE2EA658, &qword_1ED0983C0);
  v174 = v104;
  v175 = v105;
  swift_getWitnessTable();
  v172 = sub_1E68B1F10();
  v173 = v106;
  v107 = sub_1E68B1F20();
  v108 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(&v172, v107, v108);

  v172 = v237;
  v173 = v238.i64[0];
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(&v172, v107, v108);
}

uint64_t sub_1E67D97EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unint64_t a26, uint64_t a27)
{
  v336 = a8;
  v337 = a7;
  v339 = a6;
  v329 = a5;
  v345 = a4;
  v320 = a3;
  v321 = a2;
  v310 = a1;
  v301 = a9;
  v332 = a27;
  v327 = a26;
  v326 = a25;
  v341 = a24;
  v343 = a23;
  v335 = a22;
  v334 = a21;
  v340 = a20;
  v342 = a19;
  v344 = a18;
  v324 = a17;
  v333 = a16;
  v331 = a15;
  v328 = a14;
  v323 = a13;
  v330 = a12;
  v338 = a11;
  v325 = a10;
  v308 = sub_1E68B1E90();
  v319 = *(v308 - 8);
  v309 = *(v319 + 64);
  MEMORY[0x1EEE9AC00](v308);
  v300 = v254 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v465 = a3;
  *(&v465 + 1) = v345;
  v466 = a5;
  v30 = v339;
  v467 = v339;
  v468 = v337;
  v469 = v336;
  v470 = a10;
  v471 = a11;
  v472 = a12;
  v473 = a13;
  v474 = a14;
  v475 = a15;
  v476 = a16;
  v477 = a17;
  v478 = a18;
  v479 = a19;
  v480 = a20;
  v481 = a21;
  v482 = a22;
  v483 = a23;
  v484 = a24;
  v485 = a25;
  v486 = a26;
  v487 = a27;
  v317 = type metadata accessor for CarouselView();
  v322 = *(v317 - 8);
  v312 = *(v322 + 64);
  MEMORY[0x1EEE9AC00](v317);
  v318 = v254 - v31;
  v315 = sub_1E68B2420();
  v311 = *(v315 - 1);
  MEMORY[0x1EEE9AC00](v315);
  v302 = v254 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v33 = sub_1E68B33B0();
  v306 = *(a27 + 32);
  v307 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v465 = v30;
  *(&v465 + 1) = v345;
  v466 = v345;
  v467 = a20;
  v468 = a19;
  v469 = a19;
  v34 = type metadata accessor for ActionCardView();
  v303 = v34;
  WitnessTable = swift_getWitnessTable();
  *&v465 = v34;
  *(&v465 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v314 = sub_1E68B2440();
  sub_1E68B1E40();
  v35 = sub_1E68B1E40();
  v304 = sub_1E67E2D90(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v463 = a20;
  v464 = v304;
  v36 = MEMORY[0x1E697E858];
  v37 = swift_getWitnessTable();
  v461 = v37;
  v462 = MEMORY[0x1E697F568];
  v316 = v36;
  v297 = v35;
  v296 = swift_getWitnessTable();
  *&v465 = v35;
  *(&v465 + 1) = v296;
  v313 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v38 = sub_1E68B1E40();
  v289 = v38;
  v459 = v37;
  v460 = MEMORY[0x1E697E040];
  v287 = swift_getWitnessTable();
  *&v465 = v38;
  *(&v465 + 1) = v287;
  swift_getOpaqueTypeMetadata2();
  v290 = sub_1E68B2220();
  v292 = sub_1E68B2B90();
  v291 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v293 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v298 = sub_1E68B2220();
  v280 = sub_1E68B2220();
  v39 = v339;
  *&v465 = v339;
  v40 = v345;
  *(&v465 + 1) = v345;
  v466 = v345;
  v467 = v338;
  v468 = a16;
  v41 = v340;
  v469 = v340;
  v42 = v342;
  v470 = v342;
  v471 = v342;
  v472 = v343;
  v473 = a26;
  v43 = type metadata accessor for FullWidthStageView();
  v295 = v43;
  v294 = swift_getWitnessTable();
  *&v465 = v43;
  *(&v465 + 1) = v294;
  swift_getOpaqueTypeMetadata2();
  v44 = v40;
  v45 = type metadata accessor for InfoActionCardView();
  v288 = v45;
  v286 = swift_getWitnessTable();
  *&v465 = v45;
  *(&v465 + 1) = v286;
  swift_getOpaqueTypeMetadata2();
  v285 = sub_1E68B2220();
  v259 = sub_1E68B2220();
  *&v465 = v39;
  *(&v465 + 1) = v337;
  v466 = v336;
  v46 = v41;
  v467 = v41;
  v468 = v334;
  v469 = v335;
  v47 = type metadata accessor for LargeBrickView();
  v284 = v47;
  v283 = swift_getWitnessTable();
  *&v465 = v47;
  *(&v465 + 1) = v283;
  swift_getOpaqueTypeMetadata2();
  v48 = type metadata accessor for DynamicBrickView();
  v282 = v48;
  v281 = swift_getWitnessTable();
  *&v465 = v48;
  *(&v465 + 1) = v281;
  swift_getOpaqueTypeMetadata2();
  v273 = sub_1E68B2220();
  v49 = type metadata accessor for MonogramVerticalStackView();
  v278 = v49;
  v277 = swift_getWitnessTable();
  *&v465 = v49;
  *(&v465 + 1) = v277;
  swift_getOpaqueTypeMetadata2();
  v274 = sub_1E68B2220();
  v279 = sub_1E68B2220();
  v254[0] = sub_1E68B2220();
  v50 = type metadata accessor for StandardCardView();
  v276 = v50;
  v275 = swift_getWitnessTable();
  *&v465 = v50;
  *(&v465 + 1) = v275;
  swift_getOpaqueTypeMetadata2();
  *&v465 = v39;
  *(&v465 + 1) = v44;
  v466 = v46;
  v467 = v42;
  v51 = type metadata accessor for StandardHorizontalStackView();
  v272 = v51;
  v271 = swift_getWitnessTable();
  *&v465 = v51;
  *(&v465 + 1) = v271;
  swift_getOpaqueTypeMetadata2();
  v256 = sub_1E68B2220();
  v52 = type metadata accessor for StandardVerticalStackView();
  v270 = v52;
  v269 = swift_getWitnessTable();
  *&v465 = v52;
  *(&v465 + 1) = v269;
  swift_getOpaqueTypeMetadata2();
  v264 = type metadata accessor for SummaryCardView();
  v267 = sub_1E68B2220();
  v254[1] = sub_1E68B2220();
  v53 = type metadata accessor for TallCardView();
  v266 = swift_getWitnessTable();
  *&v465 = v53;
  *(&v465 + 1) = v266;
  swift_getOpaqueTypeMetadata2();
  v54 = type metadata accessor for VerticalStackCardView();
  v260 = swift_getWitnessTable();
  *&v465 = v54;
  *(&v465 + 1) = v260;
  swift_getOpaqueTypeMetadata2();
  v254[3] = sub_1E68B2220();
  v55 = type metadata accessor for WideBrickView();
  v255 = swift_getWitnessTable();
  *&v465 = v55;
  *(&v465 + 1) = v255;
  swift_getOpaqueTypeMetadata2();
  v254[4] = sub_1E68B2220();
  v254[2] = sub_1E68B2220();
  v257 = sub_1E68B2220();
  v258 = sub_1E68B2220();
  v261 = sub_1E68B2B90();
  v262 = sub_1E68B1E40();
  v263 = sub_1E68B2220();
  v265 = sub_1E68B1E40();
  v268 = sub_1E68B1E40();
  *&v465 = v303;
  *(&v465 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v465 = v297;
  *(&v465 + 1) = v296;
  v57 = swift_getOpaqueTypeConformance2();
  *&v465 = v289;
  *(&v465 + 1) = v287;
  v58 = swift_getOpaqueTypeConformance2();
  v457 = v57;
  v458 = v58;
  v456 = swift_getWitnessTable();
  v454 = swift_getWitnessTable();
  v455 = MEMORY[0x1E697E5D8];
  v59 = swift_getWitnessTable();
  v60 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v452 = v59;
  v453 = v60;
  v61 = swift_getWitnessTable();
  v62 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v450 = v61;
  v451 = v62;
  v63 = swift_getWitnessTable();
  v448 = OpaqueTypeConformance2;
  v449 = v63;
  v64 = swift_getWitnessTable();
  *&v465 = v295;
  *(&v465 + 1) = v294;
  v65 = swift_getOpaqueTypeConformance2();
  *&v465 = v288;
  *(&v465 + 1) = v286;
  v66 = swift_getOpaqueTypeConformance2();
  v446 = v65;
  v447 = v66;
  v67 = swift_getWitnessTable();
  v444 = v64;
  v445 = v67;
  v68 = swift_getWitnessTable();
  *&v465 = v284;
  *(&v465 + 1) = v283;
  v69 = swift_getOpaqueTypeConformance2();
  *&v465 = v282;
  *(&v465 + 1) = v281;
  v70 = swift_getOpaqueTypeConformance2();
  v442 = v69;
  v443 = v70;
  v71 = swift_getWitnessTable();
  *&v465 = v278;
  *(&v465 + 1) = v277;
  v440 = swift_getOpaqueTypeConformance2();
  v441 = v70;
  v72 = swift_getWitnessTable();
  v438 = v71;
  v439 = v72;
  v73 = swift_getWitnessTable();
  v436 = v68;
  v437 = v73;
  v74 = swift_getWitnessTable();
  *&v465 = v276;
  *(&v465 + 1) = v275;
  v75 = swift_getOpaqueTypeConformance2();
  *&v465 = v272;
  *(&v465 + 1) = v271;
  v76 = swift_getOpaqueTypeConformance2();
  v434 = v75;
  v435 = v76;
  v77 = swift_getWitnessTable();
  *&v465 = v270;
  *(&v465 + 1) = v269;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = swift_getWitnessTable();
  v432 = v78;
  v433 = v79;
  v80 = swift_getWitnessTable();
  v430 = v77;
  v431 = v80;
  v81 = swift_getWitnessTable();
  *&v465 = v53;
  *(&v465 + 1) = v266;
  v82 = swift_getOpaqueTypeConformance2();
  *&v465 = v54;
  *(&v465 + 1) = v260;
  v83 = swift_getOpaqueTypeConformance2();
  v428 = v82;
  v429 = v83;
  v84 = swift_getWitnessTable();
  *&v465 = v55;
  *(&v465 + 1) = v255;
  v85 = swift_getOpaqueTypeConformance2();
  v426 = v343;
  v427 = v85;
  v86 = swift_getWitnessTable();
  v424 = v84;
  v425 = v86;
  v87 = swift_getWitnessTable();
  v422 = v81;
  v423 = v87;
  v88 = swift_getWitnessTable();
  v420 = v74;
  v421 = v88;
  v419 = swift_getWitnessTable();
  v417 = swift_getWitnessTable();
  v89 = v304;
  v418 = v304;
  v90 = swift_getWitnessTable();
  v415 = MEMORY[0x1E6981E60];
  v416 = v90;
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x1E69805D0];
  v413 = v91;
  v414 = MEMORY[0x1E69805D0];
  v411 = swift_getWitnessTable();
  v412 = v92;
  v93 = v268;
  v94 = swift_getWitnessTable();
  *&v465 = v93;
  *(&v465 + 1) = v94;
  swift_getOpaqueTypeMetadata2();
  v95 = sub_1E68B1E40();
  *&v465 = v93;
  *(&v465 + 1) = v94;
  v409 = swift_getOpaqueTypeConformance2();
  v410 = v89;
  v96 = swift_getWitnessTable();
  *&v465 = v95;
  *(&v465 + 1) = v96;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v97 = sub_1E68B1E40();
  *&v465 = v95;
  *(&v465 + 1) = v96;
  v407 = swift_getOpaqueTypeConformance2();
  v408 = v96;
  v405 = swift_getWitnessTable();
  v406 = MEMORY[0x1E697F568];
  v98 = swift_getWitnessTable();
  *&v465 = v97;
  *(&v465 + 1) = v98;
  swift_getOpaqueTypeMetadata2();
  v99 = sub_1E68B2220();
  v100 = v307;
  v101 = swift_getWitnessTable();
  v102 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v465 = v100;
  *(&v465 + 1) = v102;
  v466 = v99;
  v467 = v101;
  v468 = AssociatedConformanceWitness;
  sub_1E68B2D40();
  *&v465 = v97;
  *(&v465 + 1) = v98;
  v104 = swift_getOpaqueTypeConformance2();
  v403 = MEMORY[0x1E6981E60];
  v404 = v104;
  v402 = swift_getWitnessTable();
  swift_getWitnessTable();
  v282 = sub_1E68B2C50();
  v281 = swift_getWitnessTable();
  v105 = sub_1E68B1B80();
  v314 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v276 = v254 - v106;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8);
  v269 = v105;
  v107 = sub_1E68B1E40();
  v284 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v274 = v254 - v108;
  v271 = v107;
  v109 = sub_1E68B1E40();
  v313 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v275 = v254 - v110;
  v111 = swift_getWitnessTable();
  v268 = v111;
  v112 = sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8);
  v400 = v111;
  v401 = v112;
  v270 = swift_getWitnessTable();
  v398 = v270;
  v399 = MEMORY[0x1E6980A30];
  v113 = swift_getWitnessTable();
  *&v465 = v109;
  v114 = v109;
  v266 = v109;
  v115 = v315;
  *(&v465 + 1) = v315;
  v466 = v113;
  v116 = v113;
  v267 = v113;
  v467 = MEMORY[0x1E697CA40];
  v117 = MEMORY[0x1E697CA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v287 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v303 = v254 - v119;
  *&v465 = v114;
  *(&v465 + 1) = v115;
  v466 = v116;
  v467 = v117;
  v120 = swift_getOpaqueTypeConformance2();
  *&v465 = OpaqueTypeMetadata2;
  v272 = OpaqueTypeMetadata2;
  v121 = MEMORY[0x1E69E6530];
  *(&v465 + 1) = MEMORY[0x1E69E6530];
  v122 = MEMORY[0x1E69E6550];
  v466 = v120;
  v123 = v120;
  v273 = v120;
  v467 = MEMORY[0x1E69E6550];
  v124 = swift_getOpaqueTypeMetadata2();
  v290 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v304 = v254 - v125;
  v126 = v328;
  *&v465 = v328;
  v127 = v333;
  *(&v465 + 1) = v333;
  v466 = v341;
  v467 = v327;
  v128 = type metadata accessor for CanvasLayout();
  *&v465 = OpaqueTypeMetadata2;
  *(&v465 + 1) = v121;
  v466 = v123;
  v467 = v122;
  v129 = swift_getOpaqueTypeConformance2();
  v130 = swift_getWitnessTable();
  *&v465 = v124;
  v277 = v128;
  v278 = v124;
  *(&v465 + 1) = v128;
  v466 = v129;
  v279 = v130;
  v280 = v129;
  v467 = v130;
  v131 = v130;
  v132 = swift_getOpaqueTypeMetadata2();
  v292 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  AssociatedTypeWitness = v254 - v133;
  *&v465 = v124;
  *(&v465 + 1) = v128;
  v466 = v129;
  v467 = v131;
  v134 = swift_getOpaqueTypeConformance2();
  v135 = sub_1E67E15BC();
  v136 = MEMORY[0x1E69E7DE0];
  *&v465 = v132;
  v137 = v132;
  v285 = v132;
  v286 = v134;
  *(&v465 + 1) = MEMORY[0x1E69E7DE0];
  v466 = v134;
  v467 = v135;
  v283 = v135;
  v138 = swift_getOpaqueTypeMetadata2();
  v288 = v138;
  v293 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v306 = v254 - v139;
  *&v465 = v137;
  *(&v465 + 1) = v136;
  v466 = v134;
  v467 = v135;
  v289 = swift_getOpaqueTypeConformance2();
  *&v465 = v138;
  *(&v465 + 1) = v289;
  v295 = MEMORY[0x1E697D228];
  v294 = swift_getOpaqueTypeMetadata2();
  v298 = *(v294 - 8);
  MEMORY[0x1EEE9AC00](v294);
  v307 = v254 - v140;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983C0);
  v297 = sub_1E68B1E40();
  WitnessTable = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297);
  v291 = v254 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v142);
  v296 = v254 - v143;
  sub_1E68B24B0();
  v371 = v320;
  v372 = v345;
  v373 = v329;
  v374 = v339;
  v375 = v337;
  v376 = v336;
  v377 = v325;
  v378 = v338;
  v379 = v330;
  v380 = v323;
  v381 = v126;
  v382 = v331;
  v383 = v127;
  v384 = v324;
  v385 = v344;
  v386 = v342;
  v387 = v340;
  v388 = v334;
  v389 = v335;
  v390 = v343;
  v391 = v341;
  v392 = v326;
  v393 = v327;
  v394 = v332;
  v144 = v321;
  v395 = v321;
  v145 = v276;
  sub_1E68B1B90();
  swift_getKeyPath();
  v146 = v317;
  v147 = v144;
  v465 = *(v144 + *(v317 + 224));
  v148 = v274;
  v149 = v269;
  sub_1E68B27B0();

  (*(v314 + 8))(v145, v149);
  sub_1E68B24F0();
  sub_1E68B1E70();
  v150 = v275;
  v151 = v271;
  sub_1E68B2880();
  v284[1](v148, v151);
  v152 = v302;
  sub_1E68B2410();
  v153 = v266;
  v154 = v315;
  sub_1E68B2940();
  (*(v311 + 8))(v152, v154);
  (*(v313 + 8))(v150, v153);
  v155 = v146;
  *&v465 = sub_1E67D7848();
  v156 = v322;
  v157 = *(v322 + 16);
  v314 = v322 + 16;
  v315 = v157;
  v158 = v318;
  v159 = v155;
  (v157)(v318, v147, v155);
  v160 = v319;
  v161 = *(v319 + 16);
  v281 = v319 + 16;
  v284 = v161;
  v162 = v300;
  v163 = v308;
  (v161)(v300, v310, v308);
  v164 = *(v156 + 80);
  v165 = v156;
  v166 = (v164 + 208) & ~v164;
  v302 = &v312[v166];
  v311 = v166;
  v313 = v164 | 7;
  v276 = *(v160 + 80);
  v167 = &v312[v166 + v276] & ~v276;
  v168 = swift_allocObject();
  v169 = v345;
  v168[2] = v320;
  v168[3] = v169;
  v170 = v339;
  v168[4] = v329;
  v168[5] = v170;
  v171 = v336;
  v168[6] = v337;
  v168[7] = v171;
  v172 = v338;
  v168[8] = v325;
  v168[9] = v172;
  v173 = v323;
  v168[10] = v330;
  v168[11] = v173;
  v174 = v331;
  v168[12] = v328;
  v168[13] = v174;
  v175 = v324;
  v168[14] = v333;
  v168[15] = v175;
  v176 = v342;
  v168[16] = v344;
  v168[17] = v176;
  v177 = v334;
  v168[18] = v340;
  v168[19] = v177;
  v178 = v343;
  v168[20] = v335;
  v168[21] = v178;
  v179 = v326;
  v168[22] = v341;
  v168[23] = v179;
  v180 = v332;
  v168[24] = v327;
  v168[25] = v180;
  v181 = *(v165 + 32);
  v322 = v165 + 32;
  v312 = v181;
  v182 = v158;
  v183 = v159;
  (v181)(v168 + v166, v182, v159);
  v184 = *(v160 + 32);
  v319 = v160 + 32;
  v282 = v184;
  v185 = v167;
  v186 = v168 + v167;
  v187 = v162;
  v188 = v163;
  v184(v186, v162, v163);
  v189 = v303;
  v190 = v272;
  sub_1E68B2AB0();

  (*(v287 + 8))(v189, v190);
  v191 = v183;
  v303 = *(v183 + 220);
  v192 = v318;
  (v315)(v318, v321, v183);
  (v284)(v187, v310, v188);
  v193 = v185;
  v194 = swift_allocObject();
  v195 = v320;
  v196 = v345;
  *(v194 + 2) = v320;
  *(v194 + 3) = v196;
  v197 = v339;
  *(v194 + 4) = v329;
  *(v194 + 5) = v197;
  v198 = v337;
  v199 = v336;
  *(v194 + 6) = v337;
  *(v194 + 7) = v199;
  v200 = v338;
  *(v194 + 8) = v325;
  *(v194 + 9) = v200;
  v201 = v323;
  *(v194 + 10) = v330;
  *(v194 + 11) = v201;
  v202 = v331;
  *(v194 + 12) = v328;
  *(v194 + 13) = v202;
  v203 = v324;
  *(v194 + 14) = v333;
  *(v194 + 15) = v203;
  v204 = v342;
  *(v194 + 16) = v344;
  *(v194 + 17) = v204;
  v205 = v334;
  *(v194 + 18) = v340;
  *(v194 + 19) = v205;
  v206 = v343;
  *(v194 + 20) = v335;
  *(v194 + 21) = v206;
  v207 = v326;
  *(v194 + 22) = v341;
  *(v194 + 23) = v207;
  v208 = v332;
  *(v194 + 24) = v327;
  *(v194 + 25) = v208;
  (v312)(&v194[v311], v192, v191);
  v282(&v194[v193], v187, v308);
  swift_checkMetadataState();
  v209 = v321;
  v210 = v304;
  v211 = v278;
  sub_1E68B2AB0();

  (*(v290 + 8))(v210, v211);
  v212 = v192;
  v213 = v317;
  (v315)(v192, v209, v317);
  v214 = swift_allocObject();
  v215 = v345;
  v214[2] = v195;
  v214[3] = v215;
  v216 = v339;
  v214[4] = v329;
  v214[5] = v216;
  v217 = v336;
  v214[6] = v198;
  v214[7] = v217;
  v218 = v325;
  v219 = v338;
  v214[8] = v325;
  v214[9] = v219;
  v214[10] = v330;
  v214[11] = v201;
  v220 = v331;
  v214[12] = v328;
  v214[13] = v220;
  v214[14] = v333;
  v214[15] = v203;
  v221 = v342;
  v214[16] = v344;
  v214[17] = v221;
  v222 = v334;
  v214[18] = v340;
  v214[19] = v222;
  v223 = v343;
  v214[20] = v335;
  v214[21] = v223;
  v224 = v326;
  v214[22] = v341;
  v214[23] = v224;
  v225 = v327;
  v226 = v332;
  v214[24] = v327;
  v214[25] = v226;
  (v312)(v214 + v311, v212, v213);
  v227 = AssociatedTypeWitness;
  v228 = v285;
  sub_1E68B29A0();

  (*(v292 + 8))(v227, v228);
  v229 = v318;
  v230 = v317;
  (v315)(v318, v321, v317);
  v231 = swift_allocObject();
  v232 = v345;
  v231[2] = v320;
  v231[3] = v232;
  v233 = v339;
  v231[4] = v329;
  v231[5] = v233;
  v231[6] = v337;
  v231[7] = v217;
  v234 = v338;
  v231[8] = v218;
  v231[9] = v234;
  v235 = v323;
  v231[10] = v330;
  v231[11] = v235;
  v236 = v331;
  v231[12] = v328;
  v231[13] = v236;
  v237 = v324;
  v231[14] = v333;
  v231[15] = v237;
  v238 = v342;
  v231[16] = v344;
  v231[17] = v238;
  v239 = v334;
  v231[18] = v340;
  v231[19] = v239;
  v240 = v335;
  v231[20] = v335;
  v231[21] = v223;
  v231[22] = v341;
  v231[23] = v224;
  v231[24] = v225;
  v231[25] = v226;
  (v312)(v231 + v311, v229, v230);
  v241 = v306;
  v243 = v288;
  v242 = v289;
  sub_1E68B2910();

  (*(v293 + 8))(v241, v243);
  sub_1E68B2E70();
  v346 = v320;
  v347 = v345;
  v348 = v329;
  v349 = v339;
  v350 = v337;
  v351 = v336;
  v352 = v325;
  v353 = v338;
  v354 = v330;
  v355 = v323;
  v356 = v328;
  v357 = v331;
  v358 = v333;
  v359 = v324;
  v360 = v344;
  v361 = v342;
  v362 = v340;
  v363 = v239;
  v364 = v240;
  v365 = v343;
  v366 = v341;
  v367 = v224;
  v368 = v225;
  v369 = v332;
  v370 = v321;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0983C8);
  *&v465 = v243;
  *(&v465 + 1) = v242;
  v244 = swift_getOpaqueTypeConformance2();
  sub_1E67E2CD4();
  v245 = v291;
  v246 = v294;
  v247 = v307;
  sub_1E68B2A40();
  (*(v298 + 8))(v247, v246);
  v248 = sub_1E673F530(&qword_1EE2EA658, &qword_1ED0983C0);
  v396 = v244;
  v397 = v248;
  v249 = v297;
  v250 = swift_getWitnessTable();
  v251 = v296;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v245, v249, v250);
  v252 = *(WitnessTable + 8);
  v252(v245, v249);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v251, v249, v250);
  return (v252)(v251, v249);
}

uint64_t sub_1E67DBCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v75 = a8;
  v85 = a7;
  v84 = a6;
  v72 = a4;
  v69 = a2;
  v76 = a1;
  v77 = a9;
  v71 = a13;
  v70 = a12;
  v83 = a21;
  v82 = a20;
  v74 = a24;
  v80 = a25;
  v73 = a23;
  v87 = a22;
  v68 = a14;
  v81 = a15;
  v66 = a11;
  v86 = a10;
  v65 = a26;
  v67 = a16;
  v62 = a17;
  swift_getTupleTypeMetadata2();
  v28 = sub_1E68B33B0();
  v63 = *(a26 + 32);
  v64 = v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = a5;
  type metadata accessor for ActionCardView();
  v56[51] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56[49] = sub_1E68B2440();
  sub_1E68B1E40();
  v29 = sub_1E68B1E40();
  v60 = sub_1E67E2D90(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v184 = a19;
  v185 = v60;
  v30 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v183 = MEMORY[0x1E697F568];
  v56[50] = v30;
  v56[47] = v29;
  v56[46] = swift_getWitnessTable();
  v78 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v56[39] = sub_1E68B1E40();
  v180 = WitnessTable;
  v181 = MEMORY[0x1E697E040];
  v56[37] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56[40] = sub_1E68B2220();
  v56[42] = sub_1E68B2B90();
  v56[41] = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v56[43] = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v56[48] = sub_1E68B2220();
  v56[30] = sub_1E68B2220();
  v176 = a18;
  v177 = a18;
  v178 = a22;
  v179 = a25;
  v56[45] = type metadata accessor for FullWidthStageView();
  v56[44] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v58 = a3;
  v59 = a18;
  v56[38] = type metadata accessor for InfoActionCardView();
  v56[36] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56[35] = sub_1E68B2220();
  sub_1E68B2220();
  v175 = a21;
  v56[34] = type metadata accessor for LargeBrickView();
  v56[33] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56[32] = type metadata accessor for DynamicBrickView();
  v56[31] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56[23] = sub_1E68B2220();
  v56[28] = type metadata accessor for MonogramVerticalStackView();
  v56[27] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56[24] = sub_1E68B2220();
  v56[29] = sub_1E68B2220();
  sub_1E68B2220();
  v56[26] = type metadata accessor for StandardCardView();
  v56[25] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56[22] = type metadata accessor for StandardHorizontalStackView();
  v56[21] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56[5] = sub_1E68B2220();
  v56[19] = type metadata accessor for StandardVerticalStackView();
  v56[18] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56[13] = type metadata accessor for SummaryCardView();
  v56[17] = sub_1E68B2220();
  v56[0] = sub_1E68B2220();
  v56[15] = type metadata accessor for TallCardView();
  v56[14] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v57 = a19;
  v56[9] = type metadata accessor for VerticalStackCardView();
  v56[8] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56[1] = sub_1E68B2220();
  type metadata accessor for WideBrickView();
  v56[3] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v56[2] = sub_1E68B2220();
  v56[4] = sub_1E68B2220();
  v56[6] = sub_1E68B2220();
  v56[7] = sub_1E68B2220();
  v56[10] = sub_1E68B2B90();
  v56[11] = sub_1E68B1E40();
  v56[12] = sub_1E68B2220();
  v56[16] = sub_1E68B1E40();
  v56[20] = sub_1E68B1E40();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v168 = swift_getOpaqueTypeConformance2();
  v169 = swift_getOpaqueTypeConformance2();
  v167 = swift_getWitnessTable();
  v56[52] = MEMORY[0x1E6981600];
  v165 = swift_getWitnessTable();
  v166 = MEMORY[0x1E697E5D8];
  v163 = swift_getWitnessTable();
  v164 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v161 = swift_getWitnessTable();
  v162 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v159 = OpaqueTypeConformance2;
  v160 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v157 = swift_getOpaqueTypeConformance2();
  v158 = swift_getOpaqueTypeConformance2();
  v155 = v32;
  v156 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v153 = swift_getOpaqueTypeConformance2();
  v154 = swift_getOpaqueTypeConformance2();
  v34 = swift_getWitnessTable();
  v151 = swift_getOpaqueTypeConformance2();
  v152 = v154;
  v149 = v34;
  v150 = swift_getWitnessTable();
  v147 = v33;
  v148 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v145 = swift_getOpaqueTypeConformance2();
  v146 = swift_getOpaqueTypeConformance2();
  v36 = swift_getWitnessTable();
  v143 = swift_getOpaqueTypeConformance2();
  v144 = swift_getWitnessTable();
  v141 = v36;
  v142 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v139 = swift_getOpaqueTypeConformance2();
  v140 = swift_getOpaqueTypeConformance2();
  v38 = swift_getWitnessTable();
  v137 = a22;
  v138 = swift_getOpaqueTypeConformance2();
  v135 = v38;
  v136 = swift_getWitnessTable();
  v133 = v37;
  v134 = swift_getWitnessTable();
  v131 = v35;
  v132 = swift_getWitnessTable();
  v130 = swift_getWitnessTable();
  v128 = swift_getWitnessTable();
  v129 = v60;
  v39 = swift_getWitnessTable();
  v126 = MEMORY[0x1E6981E60];
  v127 = v39;
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x1E69805D0];
  v124 = v40;
  v125 = MEMORY[0x1E69805D0];
  v122 = swift_getWitnessTable();
  v123 = v41;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  v120 = swift_getOpaqueTypeConformance2();
  v121 = v60;
  v42 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v43 = sub_1E68B1E40();
  v118 = swift_getOpaqueTypeConformance2();
  v119 = v42;
  v116 = swift_getWitnessTable();
  v117 = MEMORY[0x1E697F568];
  v44 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v172 = sub_1E68B2220();
  v173 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  v170 = v43;
  v171 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  v114 = MEMORY[0x1E6981E60];
  v115 = v45;
  v113 = swift_getWitnessTable();
  swift_getWitnessTable();
  v46 = sub_1E68B2C50();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = v56 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = v56 - v51;
  sub_1E68B2130();
  v88 = v69;
  v89 = v58;
  v90 = v72;
  v91 = v79;
  v92 = v84;
  v93 = v85;
  v94 = v75;
  v95 = v86;
  v96 = v66;
  v97 = v70;
  v98 = v71;
  v99 = v68;
  v100 = v81;
  v101 = v67;
  v102 = a17;
  v103 = v59;
  v104 = v57;
  v105 = v82;
  v106 = v83;
  v107 = v87;
  v108 = v73;
  v109 = v74;
  v110 = v80;
  v111 = v65;
  v112 = v76;
  sub_1E68B2C40();
  v53 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v49, v46, v53);
  v54 = *(v47 + 8);
  v54(v49, v46);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v52, v46, v53);
  return (v54)(v52, v46);
}

uint64_t sub_1E67DCEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v191 = a8;
  v205 = a7;
  v203 = a6;
  v190 = a4;
  v189 = a2;
  v183 = a1;
  v194 = a9;
  v201 = a25;
  v193 = a24;
  v192 = a23;
  v208 = a22;
  v204 = a21;
  v202 = a20;
  v188 = a16;
  v200 = a15;
  v187 = a14;
  v186 = a13;
  v185 = a12;
  v184 = a11;
  v207 = a10;
  v272 = a2;
  v273 = a3;
  v274 = a4;
  v275 = a5;
  v276 = a6;
  v277 = a7;
  v278 = a8;
  v279 = a10;
  v280 = a11;
  v281 = a12;
  v282 = a13;
  v283 = a14;
  v284 = a15;
  v285 = a16;
  v286 = a17;
  v198 = a17;
  v287 = a18;
  v288 = a19;
  v289 = a20;
  v290 = a21;
  v291 = a22;
  v292 = a23;
  v293 = a24;
  v294 = a25;
  v295 = a26;
  v182 = a26;
  v181 = type metadata accessor for CarouselView();
  v179 = *(v181 - 8);
  v180 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v178 = v124 - v28;
  swift_getTupleTypeMetadata2();
  v177 = sub_1E68B33B0();
  v199 = *(a26 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v196 = a5;
  v272 = a5;
  v273 = a3;
  v274 = a3;
  v275 = a19;
  v276 = a18;
  v277 = a18;
  v29 = type metadata accessor for ActionCardView();
  v172 = v29;
  WitnessTable = swift_getWitnessTable();
  v272 = v29;
  v273 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v195 = sub_1E68B2440();
  sub_1E68B1E40();
  v30 = sub_1E68B1E40();
  v176 = sub_1E67E2D90(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v270 = a19;
  v271 = v176;
  v31 = MEMORY[0x1E697E858];
  v32 = swift_getWitnessTable();
  v268 = v32;
  v269 = MEMORY[0x1E697F568];
  v170 = v31;
  v168 = v30;
  v167 = swift_getWitnessTable();
  v272 = v30;
  v273 = v167;
  v206 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v33 = sub_1E68B1E40();
  v160 = v33;
  v266 = v32;
  v267 = MEMORY[0x1E697E040];
  v158 = swift_getWitnessTable();
  v272 = v33;
  v273 = v158;
  swift_getOpaqueTypeMetadata2();
  v161 = sub_1E68B2220();
  v163 = sub_1E68B2B90();
  v162 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v164 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v169 = sub_1E68B2220();
  v151 = sub_1E68B2220();
  v34 = v196;
  v272 = v196;
  v273 = a3;
  v274 = a3;
  v275 = v207;
  v276 = v200;
  v277 = a19;
  v278 = a18;
  v279 = a18;
  v280 = v208;
  v281 = v201;
  v35 = type metadata accessor for FullWidthStageView();
  OpaqueTypeMetadata2 = v35;
  v165 = swift_getWitnessTable();
  v272 = v35;
  v273 = v165;
  swift_getOpaqueTypeMetadata2();
  v174 = a3;
  v175 = a18;
  v36 = type metadata accessor for InfoActionCardView();
  v159 = v36;
  v157 = swift_getWitnessTable();
  v272 = v36;
  v273 = v157;
  swift_getOpaqueTypeMetadata2();
  v156 = sub_1E68B2220();
  v130 = sub_1E68B2220();
  v272 = v34;
  v273 = v203;
  v274 = v205;
  v275 = a19;
  v276 = v202;
  v277 = v204;
  v37 = type metadata accessor for LargeBrickView();
  v155 = v37;
  v154 = swift_getWitnessTable();
  v272 = v37;
  v273 = v154;
  swift_getOpaqueTypeMetadata2();
  v38 = type metadata accessor for DynamicBrickView();
  v153 = v38;
  v152 = swift_getWitnessTable();
  v272 = v38;
  v273 = v152;
  swift_getOpaqueTypeMetadata2();
  v144 = sub_1E68B2220();
  v39 = type metadata accessor for MonogramVerticalStackView();
  v149 = v39;
  v148 = swift_getWitnessTable();
  v272 = v39;
  v273 = v148;
  swift_getOpaqueTypeMetadata2();
  v145 = sub_1E68B2220();
  v150 = sub_1E68B2220();
  v124[0] = sub_1E68B2220();
  v40 = type metadata accessor for StandardCardView();
  v147 = v40;
  v146 = swift_getWitnessTable();
  v272 = v40;
  v273 = v146;
  swift_getOpaqueTypeMetadata2();
  v272 = v34;
  v273 = a3;
  v274 = a19;
  v275 = a18;
  v41 = type metadata accessor for StandardHorizontalStackView();
  v143 = v41;
  v142 = swift_getWitnessTable();
  v272 = v41;
  v273 = v142;
  swift_getOpaqueTypeMetadata2();
  v127 = sub_1E68B2220();
  v42 = type metadata accessor for StandardVerticalStackView();
  v140 = v42;
  v139 = swift_getWitnessTable();
  v272 = v42;
  v273 = v139;
  swift_getOpaqueTypeMetadata2();
  v135 = type metadata accessor for SummaryCardView();
  v138 = sub_1E68B2220();
  v124[1] = sub_1E68B2220();
  v173 = a19;
  v43 = type metadata accessor for TallCardView();
  v136 = swift_getWitnessTable();
  v272 = v43;
  v273 = v136;
  swift_getOpaqueTypeMetadata2();
  v44 = type metadata accessor for VerticalStackCardView();
  v131 = swift_getWitnessTable();
  v272 = v44;
  v273 = v131;
  swift_getOpaqueTypeMetadata2();
  v124[2] = sub_1E68B2220();
  v45 = type metadata accessor for WideBrickView();
  v125 = swift_getWitnessTable();
  v272 = v45;
  v273 = v125;
  swift_getOpaqueTypeMetadata2();
  v124[3] = sub_1E68B2220();
  v126 = sub_1E68B2220();
  v128 = sub_1E68B2220();
  v129 = sub_1E68B2220();
  v132 = sub_1E68B2B90();
  v133 = sub_1E68B1E40();
  v134 = sub_1E68B2220();
  v137 = sub_1E68B1E40();
  v141 = sub_1E68B1E40();
  v272 = v172;
  v273 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v272 = v168;
  v273 = v167;
  v47 = swift_getOpaqueTypeConformance2();
  v272 = v160;
  v273 = v158;
  v48 = swift_getOpaqueTypeConformance2();
  v264 = v47;
  v265 = v48;
  v49 = MEMORY[0x1E697F968];
  v263 = swift_getWitnessTable();
  v172 = MEMORY[0x1E6981600];
  v261 = swift_getWitnessTable();
  v262 = MEMORY[0x1E697E5D8];
  v50 = swift_getWitnessTable();
  v51 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v259 = v50;
  v260 = v51;
  v52 = swift_getWitnessTable();
  v53 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v257 = v52;
  v258 = v53;
  v54 = swift_getWitnessTable();
  v255 = OpaqueTypeConformance2;
  v256 = v54;
  v55 = swift_getWitnessTable();
  v272 = OpaqueTypeMetadata2;
  v273 = v165;
  v56 = swift_getOpaqueTypeConformance2();
  v272 = v159;
  v273 = v157;
  v57 = swift_getOpaqueTypeConformance2();
  v253 = v56;
  v254 = v57;
  v58 = swift_getWitnessTable();
  v251 = v55;
  v252 = v58;
  v59 = swift_getWitnessTable();
  v272 = v155;
  v273 = v154;
  v60 = swift_getOpaqueTypeConformance2();
  v272 = v153;
  v273 = v152;
  v61 = swift_getOpaqueTypeConformance2();
  v249 = v60;
  v250 = v61;
  v62 = swift_getWitnessTable();
  v272 = v149;
  v273 = v148;
  v247 = swift_getOpaqueTypeConformance2();
  v248 = v61;
  v63 = swift_getWitnessTable();
  v245 = v62;
  v246 = v63;
  v64 = swift_getWitnessTable();
  v243 = v59;
  v244 = v64;
  v65 = swift_getWitnessTable();
  v272 = v147;
  v273 = v146;
  v66 = swift_getOpaqueTypeConformance2();
  v272 = v143;
  v273 = v142;
  v67 = swift_getOpaqueTypeConformance2();
  v241 = v66;
  v242 = v67;
  v68 = swift_getWitnessTable();
  v272 = v140;
  v273 = v139;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = swift_getWitnessTable();
  v239 = v69;
  v240 = v70;
  v71 = swift_getWitnessTable();
  v237 = v68;
  v238 = v71;
  v72 = swift_getWitnessTable();
  v272 = v43;
  v273 = v136;
  v73 = swift_getOpaqueTypeConformance2();
  v272 = v44;
  v273 = v131;
  v74 = swift_getOpaqueTypeConformance2();
  v235 = v73;
  v236 = v74;
  v75 = swift_getWitnessTable();
  v272 = v45;
  v273 = v125;
  v76 = swift_getOpaqueTypeConformance2();
  v233 = v208;
  v234 = v76;
  v77 = swift_getWitnessTable();
  v231 = v75;
  v232 = v77;
  v78 = swift_getWitnessTable();
  v229 = v72;
  v230 = v78;
  v79 = swift_getWitnessTable();
  v227 = v65;
  v228 = v79;
  v226 = swift_getWitnessTable();
  v224 = swift_getWitnessTable();
  v80 = v176;
  v225 = v176;
  v81 = swift_getWitnessTable();
  v222 = MEMORY[0x1E6981E60];
  v223 = v81;
  WitnessTable = v49;
  v82 = swift_getWitnessTable();
  v83 = MEMORY[0x1E69805D0];
  v220 = v82;
  v221 = MEMORY[0x1E69805D0];
  v218 = swift_getWitnessTable();
  v219 = v83;
  v84 = v141;
  v85 = swift_getWitnessTable();
  v272 = v84;
  v273 = v85;
  swift_getOpaqueTypeMetadata2();
  v86 = sub_1E68B1E40();
  v272 = v84;
  v273 = v85;
  v216 = swift_getOpaqueTypeConformance2();
  v217 = v80;
  v87 = swift_getWitnessTable();
  v272 = v86;
  v273 = v87;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v88 = sub_1E68B1E40();
  v272 = v86;
  v273 = v87;
  v214 = swift_getOpaqueTypeConformance2();
  v215 = v87;
  v212 = swift_getWitnessTable();
  v213 = MEMORY[0x1E697F568];
  v176 = v88;
  v172 = swift_getWitnessTable();
  v272 = v88;
  v273 = v172;
  swift_getOpaqueTypeMetadata2();
  v89 = sub_1E68B2220();
  v170 = v89;
  v90 = v177;
  v91 = swift_getWitnessTable();
  v92 = v198;
  v93 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v272 = v90;
  v273 = v93;
  v274 = v89;
  v275 = v91;
  v276 = AssociatedConformanceWitness;
  v95 = sub_1E68B2D40();
  v195 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v97 = v124 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = MEMORY[0x1EEE9AC00](v98);
  v101 = v124 - v100;
  v177 = *(v183 + 8);
  v103 = v178;
  v102 = v179;
  v104 = v181;
  (*(v179 + 16))(v178, v99);
  v105 = (*(v102 + 80) + 208) & ~*(v102 + 80);
  v106 = swift_allocObject();
  v107 = v174;
  *(v106 + 2) = v189;
  *(v106 + 3) = v107;
  v108 = v196;
  *(v106 + 4) = v190;
  *(v106 + 5) = v108;
  v109 = v205;
  *(v106 + 6) = v203;
  *(v106 + 7) = v109;
  v110 = v207;
  *(v106 + 8) = v191;
  *(v106 + 9) = v110;
  v111 = v185;
  *(v106 + 10) = v184;
  *(v106 + 11) = v111;
  v112 = v187;
  *(v106 + 12) = v186;
  *(v106 + 13) = v112;
  v113 = v188;
  *(v106 + 14) = v200;
  *(v106 + 15) = v113;
  v114 = v175;
  *(v106 + 16) = v92;
  *(v106 + 17) = v114;
  v115 = v202;
  *(v106 + 18) = v173;
  *(v106 + 19) = v115;
  v116 = v208;
  *(v106 + 20) = v204;
  *(v106 + 21) = v116;
  v117 = v193;
  *(v106 + 22) = v192;
  *(v106 + 23) = v117;
  v118 = v182;
  *(v106 + 24) = v201;
  *(v106 + 25) = v118;
  (*(v102 + 32))(&v106[v105], v103, v104);

  v272 = v176;
  v273 = v172;
  v119 = swift_getOpaqueTypeConformance2();
  v210 = MEMORY[0x1E6981E60];
  v211 = v119;
  v120 = swift_getWitnessTable();
  sub_1E68B2D20();
  v209 = v120;
  v121 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v97, v95, v121);
  v122 = *(v195 + 8);
  v122(v97, v95);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v101, v95, v121);
  return (v122)(v101, v95);
}

uint64_t sub_1E67DE2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v383 = a8;
  v374 = a7;
  v369 = a6;
  v377 = a5;
  v368 = a4;
  v356 = a3;
  v355 = a2;
  v358 = a1;
  v344 = a9;
  v373 = a28;
  v381 = a27;
  v367 = a26;
  v365 = a25;
  v380 = a24;
  v379 = a23;
  v378 = a22;
  v372 = a21;
  v376 = a20;
  v366 = a18;
  v382 = a17;
  v375 = a12;
  v371 = a10;
  v29 = sub_1E68B21B0();
  v290 = *(v29 - 8);
  v291 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v289 = &v282 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = a19;
  v349 = *(a19 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v343 = v32;
  v348 = &v282 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v447 = v368;
  *(&v447 + 1) = a5;
  *&v448 = v369;
  v33 = v374;
  *(&v448 + 1) = v374;
  v449 = v383;
  v450 = a10;
  v363 = a11;
  v451 = a11;
  v452 = a12;
  v357 = a13;
  v453 = a13;
  v361 = a14;
  v454 = a14;
  v360 = a15;
  v455 = a15;
  v362 = a16;
  v456 = a16;
  v457 = v382;
  v458 = v366;
  v459 = a19;
  v34 = v376;
  v460 = v376;
  v35 = v372;
  v461 = v372;
  v462 = v378;
  v463 = v379;
  v36 = v380;
  v464 = v380;
  v465 = v365;
  v466 = v367;
  v467 = v381;
  v468 = v373;
  v364 = type metadata accessor for CarouselView();
  v359 = *(v364 - 8);
  MEMORY[0x1EEE9AC00](v364);
  v342 = &v282 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v287 = v40;
  v288 = &v282 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v353 = &v282 - v42;
  *&v447 = v33;
  *(&v447 + 1) = v377;
  *&v448 = v377;
  *(&v448 + 1) = v35;
  v43 = v35;
  v449 = v34;
  v450 = v34;
  v44 = type metadata accessor for ActionCardView();
  v347 = v44;
  WitnessTable = swift_getWitnessTable();
  *&v447 = v44;
  *(&v447 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v354 = sub_1E68B2440();
  v45 = v33;
  sub_1E68B1E40();
  v46 = sub_1E68B1E40();
  v350 = sub_1E67E2D90(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v445 = v43;
  v47 = v43;
  v446 = v350;
  v48 = MEMORY[0x1E697E858];
  v49 = swift_getWitnessTable();
  v443 = v49;
  v444 = MEMORY[0x1E697F568];
  v352 = v48;
  v339 = v46;
  v338 = swift_getWitnessTable();
  *&v447 = v46;
  *(&v447 + 1) = v338;
  v351 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v50 = sub_1E68B1E40();
  v316 = v50;
  v441 = v49;
  v442 = MEMORY[0x1E697E040];
  v330 = swift_getWitnessTable();
  *&v447 = v50;
  *(&v447 + 1) = v330;
  swift_getOpaqueTypeMetadata2();
  v332 = sub_1E68B2220();
  v334 = sub_1E68B2B90();
  v333 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v335 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v345 = sub_1E68B2220();
  v323 = sub_1E68B2220();
  *&v447 = v45;
  v51 = v377;
  *(&v447 + 1) = v377;
  *&v448 = v377;
  *(&v448 + 1) = v375;
  v449 = v382;
  v52 = v47;
  v450 = v47;
  v53 = v376;
  v451 = v376;
  v452 = v376;
  v453 = v36;
  v454 = v381;
  v54 = type metadata accessor for FullWidthStageView();
  v337 = v54;
  v336 = swift_getWitnessTable();
  *&v447 = v54;
  *(&v447 + 1) = v336;
  swift_getOpaqueTypeMetadata2();
  v55 = type metadata accessor for InfoActionCardView();
  v331 = v55;
  v329 = swift_getWitnessTable();
  *&v447 = v55;
  *(&v447 + 1) = v329;
  swift_getOpaqueTypeMetadata2();
  v328 = sub_1E68B2220();
  v302 = sub_1E68B2220();
  *&v447 = v45;
  *(&v447 + 1) = v383;
  *&v448 = v371;
  v56 = v52;
  *(&v448 + 1) = v52;
  v449 = v378;
  v450 = v379;
  v57 = type metadata accessor for LargeBrickView();
  v327 = v57;
  v326 = swift_getWitnessTable();
  *&v447 = v57;
  *(&v447 + 1) = v326;
  swift_getOpaqueTypeMetadata2();
  v58 = type metadata accessor for DynamicBrickView();
  v325 = v58;
  v324 = swift_getWitnessTable();
  *&v447 = v58;
  *(&v447 + 1) = v324;
  swift_getOpaqueTypeMetadata2();
  v315 = sub_1E68B2220();
  v59 = type metadata accessor for MonogramVerticalStackView();
  v321 = v59;
  v320 = swift_getWitnessTable();
  *&v447 = v59;
  *(&v447 + 1) = v320;
  swift_getOpaqueTypeMetadata2();
  v317 = sub_1E68B2220();
  v322 = sub_1E68B2220();
  v292 = sub_1E68B2220();
  v60 = type metadata accessor for StandardCardView();
  v319 = v60;
  v318 = swift_getWitnessTable();
  *&v447 = v60;
  *(&v447 + 1) = v318;
  swift_getOpaqueTypeMetadata2();
  *&v447 = v45;
  *(&v447 + 1) = v51;
  *&v448 = v56;
  *(&v448 + 1) = v53;
  v61 = type metadata accessor for StandardHorizontalStackView();
  v314 = v61;
  v313 = swift_getWitnessTable();
  *&v447 = v61;
  *(&v447 + 1) = v313;
  swift_getOpaqueTypeMetadata2();
  v299 = sub_1E68B2220();
  v62 = type metadata accessor for StandardVerticalStackView();
  v312 = v62;
  v311 = swift_getWitnessTable();
  *&v447 = v62;
  *(&v447 + 1) = v311;
  swift_getOpaqueTypeMetadata2();
  v307 = type metadata accessor for SummaryCardView();
  v310 = sub_1E68B2220();
  v293 = sub_1E68B2220();
  v63 = type metadata accessor for TallCardView();
  v309 = v63;
  v308 = swift_getWitnessTable();
  *&v447 = v63;
  *(&v447 + 1) = v308;
  swift_getOpaqueTypeMetadata2();
  v64 = type metadata accessor for VerticalStackCardView();
  v304 = v64;
  v303 = swift_getWitnessTable();
  *&v447 = v64;
  *(&v447 + 1) = v303;
  swift_getOpaqueTypeMetadata2();
  v294 = sub_1E68B2220();
  v65 = type metadata accessor for WideBrickView();
  v297 = v65;
  v296 = swift_getWitnessTable();
  *&v447 = v65;
  *(&v447 + 1) = v296;
  swift_getOpaqueTypeMetadata2();
  v295 = sub_1E68B2220();
  v298 = sub_1E68B2220();
  v300 = sub_1E68B2220();
  v301 = sub_1E68B2220();
  v305 = sub_1E68B2B90();
  v306 = sub_1E68B1E40();
  v66 = sub_1E68B2220();
  v283 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v340 = &v282 - v67;
  v68 = sub_1E68B1E40();
  v284 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  OpaqueTypeMetadata2 = &v282 - v69;
  v70 = sub_1E68B1E40();
  v286 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v285 = &v282 - v71;
  *&v447 = v347;
  *(&v447 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v447 = v339;
  *(&v447 + 1) = v338;
  v73 = swift_getOpaqueTypeConformance2();
  *&v447 = v316;
  *(&v447 + 1) = v330;
  v74 = swift_getOpaqueTypeConformance2();
  v439 = v73;
  v440 = v74;
  v438 = swift_getWitnessTable();
  v436 = swift_getWitnessTable();
  v437 = MEMORY[0x1E697E5D8];
  v75 = swift_getWitnessTable();
  v76 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v434 = v75;
  v435 = v76;
  v77 = swift_getWitnessTable();
  v78 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v432 = v77;
  v433 = v78;
  v79 = swift_getWitnessTable();
  v430 = OpaqueTypeConformance2;
  v431 = v79;
  v80 = swift_getWitnessTable();
  *&v447 = v337;
  *(&v447 + 1) = v336;
  v81 = swift_getOpaqueTypeConformance2();
  *&v447 = v331;
  *(&v447 + 1) = v329;
  v82 = swift_getOpaqueTypeConformance2();
  v428 = v81;
  v429 = v82;
  v83 = swift_getWitnessTable();
  v426 = v80;
  v427 = v83;
  v84 = swift_getWitnessTable();
  *&v447 = v327;
  *(&v447 + 1) = v326;
  v85 = swift_getOpaqueTypeConformance2();
  *&v447 = v325;
  *(&v447 + 1) = v324;
  v86 = swift_getOpaqueTypeConformance2();
  v424 = v85;
  v425 = v86;
  v87 = swift_getWitnessTable();
  *&v447 = v321;
  *(&v447 + 1) = v320;
  v422 = swift_getOpaqueTypeConformance2();
  v423 = v86;
  v88 = swift_getWitnessTable();
  v420 = v87;
  v421 = v88;
  v89 = swift_getWitnessTable();
  v418 = v84;
  v419 = v89;
  v90 = swift_getWitnessTable();
  *&v447 = v319;
  *(&v447 + 1) = v318;
  v91 = swift_getOpaqueTypeConformance2();
  *&v447 = v314;
  *(&v447 + 1) = v313;
  v92 = swift_getOpaqueTypeConformance2();
  v416 = v91;
  v417 = v92;
  v93 = swift_getWitnessTable();
  *&v447 = v312;
  *(&v447 + 1) = v311;
  v94 = swift_getOpaqueTypeConformance2();
  v95 = swift_getWitnessTable();
  v414 = v94;
  v415 = v95;
  v96 = swift_getWitnessTable();
  v412 = v93;
  v413 = v96;
  v97 = swift_getWitnessTable();
  *&v447 = v309;
  *(&v447 + 1) = v308;
  v98 = swift_getOpaqueTypeConformance2();
  *&v447 = v304;
  *(&v447 + 1) = v303;
  v99 = swift_getOpaqueTypeConformance2();
  v410 = v98;
  v411 = v99;
  v100 = swift_getWitnessTable();
  *&v447 = v297;
  *(&v447 + 1) = v296;
  v101 = swift_getOpaqueTypeConformance2();
  v408 = v380;
  v409 = v101;
  v102 = swift_getWitnessTable();
  v406 = v100;
  v407 = v102;
  v103 = swift_getWitnessTable();
  v404 = v97;
  v405 = v103;
  v104 = swift_getWitnessTable();
  v402 = v90;
  v403 = v104;
  v401 = swift_getWitnessTable();
  v399 = swift_getWitnessTable();
  v105 = v350;
  v400 = v350;
  v106 = swift_getWitnessTable();
  v397 = MEMORY[0x1E6981E60];
  v398 = v106;
  v333 = v66;
  v107 = swift_getWitnessTable();
  v108 = MEMORY[0x1E69805D0];
  v315 = v107;
  v395 = v107;
  v396 = MEMORY[0x1E69805D0];
  v334 = v68;
  v317 = swift_getWitnessTable();
  v393 = v317;
  v394 = v108;
  v109 = swift_getWitnessTable();
  *&v447 = v70;
  *(&v447 + 1) = v109;
  v110 = swift_getOpaqueTypeMetadata2();
  v329 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v328 = &v282 - v111;
  v331 = v112;
  v113 = sub_1E68B1E40();
  v332 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v330 = &v282 - v114;
  v335 = v70;
  *&v447 = v70;
  v327 = v109;
  *(&v447 + 1) = v109;
  v115 = swift_getOpaqueTypeConformance2();
  v391 = v115;
  v392 = v105;
  v116 = swift_getWitnessTable();
  *&v447 = v113;
  *(&v447 + 1) = v116;
  swift_getOpaqueTypeMetadata2();
  v117 = sub_1E68B2220();
  v325 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v322 = &v282 - v118;
  v119 = sub_1E68B1E40();
  v324 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v321 = &v282 - v120;
  *&v447 = v113;
  *(&v447 + 1) = v116;
  v389 = swift_getOpaqueTypeConformance2();
  v320 = v116;
  v390 = v116;
  v326 = v117;
  v316 = swift_getWitnessTable();
  v387 = v316;
  v388 = MEMORY[0x1E697F568];
  v121 = swift_getWitnessTable();
  *&v447 = v119;
  v352 = v121;
  *(&v447 + 1) = v121;
  v122 = swift_getOpaqueTypeMetadata2();
  v323 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v319 = &v282 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v124);
  v318 = &v282 - v125;
  v336 = v126;
  v127 = sub_1E68B2220();
  v338 = *(v127 - 8);
  v339 = v127;
  v128 = MEMORY[0x1EEE9AC00](v127);
  v337 = &v282 - v129;
  v130 = v355;
  v131 = (*(v373 + 184))(v370, v128);
  LOBYTE(v64) = sub_1E674BEB0(3u, v131);

  if (v64)
  {
    *&v447 = v119;
    *(&v447 + 1) = v352;
    v132 = swift_getOpaqueTypeConformance2();
    v133 = v337;
    sub_1E6744CC0(v132, MEMORY[0x1E6981E70]);
  }

  else
  {
    v134 = v359;
    v347 = *(v359 + 16);
    v351 = v359 + 16;
    v309 = v115;
    v135 = v356;
    v311 = v119;
    v136 = v364;
    v347(v353, v356, v364);
    v137 = v349;
    v307 = *(v349 + 16);
    v308 = v349 + 16;
    v138 = v130;
    v139 = v370;
    v307(v348, v138, v370);
    v140 = *(v134 + 80);
    v354 = (v140 + 208) & ~v140;
    v310 = v113;
    v345 = v354 + v287;
    v350 = v140 | 7;
    v306 = *(v137 + 80);
    v141 = (v354 + v287 + v306) & ~v306;
    v304 = v141;
    v142 = swift_allocObject();
    v143 = v377;
    *(v142 + 2) = v368;
    *(v142 + 3) = v143;
    v144 = v374;
    *(v142 + 4) = v369;
    *(v142 + 5) = v144;
    v145 = v371;
    *(v142 + 6) = v383;
    *(v142 + 7) = v145;
    v146 = v375;
    *(v142 + 8) = v363;
    *(v142 + 9) = v146;
    v147 = v361;
    *(v142 + 10) = v357;
    *(v142 + 11) = v147;
    v148 = v362;
    *(v142 + 12) = v360;
    *(v142 + 13) = v148;
    v149 = v366;
    *(v142 + 14) = v382;
    *(v142 + 15) = v149;
    v150 = v376;
    *(v142 + 16) = v139;
    *(v142 + 17) = v150;
    v151 = v378;
    *(v142 + 18) = v372;
    *(v142 + 19) = v151;
    v152 = v380;
    *(v142 + 20) = v379;
    *(v142 + 21) = v152;
    v153 = v365;
    v154 = v367;
    *(v142 + 22) = v365;
    *(v142 + 23) = v154;
    v155 = v381;
    v156 = v373;
    *(v142 + 24) = v381;
    *(v142 + 25) = v156;
    WitnessTable = *(v134 + 32);
    v359 = v134 + 32;
    WitnessTable(&v142[v354], v353, v136);
    v157 = *(v137 + 32);
    v349 = v137 + 32;
    v305 = v157;
    v157(&v142[v141], v348, v139);
    v303 = v135 + v136[55];
    v158 = v360;
    *&v447 = v360;
    v159 = v382;
    *(&v447 + 1) = v382;
    *&v448 = v153;
    *(&v448 + 1) = v155;
    v160 = *(type metadata accessor for CanvasLayout() + 72);
    v161 = v136;
    v162 = v136[60];
    v163 = (v135 + v136[59]);
    v165 = *v163;
    v164 = v163[1];
    v301 = v165;
    v302 = v160;
    v314 = v164;
    v166 = *(v135 + v162);
    v167 = *(v135 + v162 + 8);
    v168 = (v135 + v136[61]);
    v170 = *v168;
    v169 = v168[1];
    v299 = v170;
    v300 = v166;
    v312 = v169;
    v313 = v167;
    v171 = v288;
    v347(v288, v135, v161);
    v345 = (v345 + 7) & 0xFFFFFFFFFFFFFFF8;
    v172 = swift_allocObject();
    v173 = v377;
    *(v172 + 2) = v368;
    *(v172 + 3) = v173;
    v174 = v374;
    *(v172 + 4) = v369;
    *(v172 + 5) = v174;
    v175 = v371;
    *(v172 + 6) = v383;
    *(v172 + 7) = v175;
    v176 = v363;
    v177 = v375;
    *(v172 + 8) = v363;
    *(v172 + 9) = v177;
    v178 = v357;
    v179 = v361;
    *(v172 + 10) = v357;
    *(v172 + 11) = v179;
    *(v172 + 12) = v158;
    v180 = v362;
    *(v172 + 13) = v362;
    *(v172 + 14) = v159;
    v181 = v366;
    v182 = v370;
    *(v172 + 15) = v366;
    *(v172 + 16) = v182;
    v183 = v372;
    *(v172 + 17) = v376;
    *(v172 + 18) = v183;
    v184 = v379;
    *(v172 + 19) = v378;
    *(v172 + 20) = v184;
    v185 = v365;
    *(v172 + 21) = v380;
    *(v172 + 22) = v185;
    v186 = v381;
    *(v172 + 23) = v367;
    *(v172 + 24) = v186;
    *(v172 + 25) = v373;
    v187 = v364;
    WitnessTable(&v172[v354], v171, v364);
    *&v172[v345] = v358;
    v347(v342, v356, v187);
    v188 = swift_allocObject();
    v189 = v377;
    *(v188 + 2) = v368;
    *(v188 + 3) = v189;
    v190 = v374;
    *(v188 + 4) = v369;
    *(v188 + 5) = v190;
    v191 = v371;
    *(v188 + 6) = v383;
    *(v188 + 7) = v191;
    v192 = v375;
    *(v188 + 8) = v176;
    *(v188 + 9) = v192;
    *(v188 + 10) = v178;
    *(v188 + 11) = v179;
    *(v188 + 12) = v360;
    *(v188 + 13) = v180;
    *(v188 + 14) = v382;
    *(v188 + 15) = v181;
    v193 = v376;
    *(v188 + 16) = v370;
    *(v188 + 17) = v193;
    v194 = v378;
    *(v188 + 18) = v372;
    *(v188 + 19) = v194;
    v195 = v380;
    *(v188 + 20) = v379;
    *(v188 + 21) = v195;
    v196 = v367;
    *(v188 + 22) = v365;
    *(v188 + 23) = v196;
    v197 = v373;
    *(v188 + 24) = v381;
    *(v188 + 25) = v197;
    WitnessTable(&v188[v354], v342, v364);
    *&v188[v345] = v358;
    v198 = v378;
    v199 = v372;
    v200 = v371;
    v201 = v375;
    v202 = v377;
    sub_1E6892048(&v447);
    v386[0] = v447;
    v386[1] = v448;

    CanvasItemDescriptorProtocol.buildView<A, B, C, D, E, F>(onSelection:sizeClass:contentMargins:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:viewDescriptorBuilder:actionButtonViewBuilder:)(sub_1E67E4040, v142, v303 + v302, v386, v301, v314, v300, v313, v340, v299, v312, sub_1E67E3378, v172, sub_1E67E3390, v188, v370, v382, v374, v383, v200, v201, v202, v197, v381, v199, v198, v379, v380, v376);

    v203 = v353;
    v204 = v356;
    v205 = v364;
    v206 = v347;
    v347(v353, v356, v364);
    v207 = v345;
    v208 = swift_allocObject();
    v209 = v368;
    v210 = v377;
    *(v208 + 2) = v368;
    *(v208 + 3) = v210;
    v211 = v374;
    *(v208 + 4) = v369;
    *(v208 + 5) = v211;
    v212 = v371;
    *(v208 + 6) = v383;
    *(v208 + 7) = v212;
    v213 = v375;
    *(v208 + 8) = v363;
    *(v208 + 9) = v213;
    v214 = v361;
    *(v208 + 10) = v357;
    *(v208 + 11) = v214;
    v215 = v362;
    *(v208 + 12) = v360;
    *(v208 + 13) = v215;
    v216 = v366;
    *(v208 + 14) = v382;
    *(v208 + 15) = v216;
    v217 = v376;
    *(v208 + 16) = v370;
    *(v208 + 17) = v217;
    v218 = v378;
    *(v208 + 18) = v372;
    *(v208 + 19) = v218;
    v219 = v380;
    *(v208 + 20) = v379;
    *(v208 + 21) = v219;
    v220 = v367;
    *(v208 + 22) = v365;
    *(v208 + 23) = v220;
    v221 = v373;
    *(v208 + 24) = v381;
    *(v208 + 25) = v221;
    v222 = WitnessTable;
    WitnessTable(&v208[v354], v203, v205);
    *&v208[v207] = v358;
    v223 = v340;
    v224 = v333;
    sub_1E68B2AA0();

    (*(v283 + 8))(v223, v224);
    v225 = v353;
    v226 = v364;
    v206(v353, v204, v364);
    v227 = swift_allocObject();
    v228 = v377;
    *(v227 + 2) = v209;
    *(v227 + 3) = v228;
    v229 = v369;
    v230 = v374;
    *(v227 + 4) = v369;
    *(v227 + 5) = v230;
    v231 = v371;
    *(v227 + 6) = v383;
    *(v227 + 7) = v231;
    v232 = v375;
    *(v227 + 8) = v363;
    *(v227 + 9) = v232;
    v233 = v357;
    v234 = v361;
    *(v227 + 10) = v357;
    *(v227 + 11) = v234;
    v235 = v362;
    *(v227 + 12) = v360;
    *(v227 + 13) = v235;
    v236 = v366;
    *(v227 + 14) = v382;
    *(v227 + 15) = v236;
    v237 = v370;
    v238 = v376;
    *(v227 + 16) = v370;
    *(v227 + 17) = v238;
    v239 = v378;
    *(v227 + 18) = v372;
    *(v227 + 19) = v239;
    v240 = v380;
    *(v227 + 20) = v379;
    *(v227 + 21) = v240;
    v241 = v367;
    *(v227 + 22) = v365;
    *(v227 + 23) = v241;
    v242 = v373;
    *(v227 + 24) = v381;
    *(v227 + 25) = v242;
    v222(&v227[v354], v225, v226);
    *&v227[v345] = v358;
    v243 = v285;
    v244 = v334;
    v245 = OpaqueTypeMetadata2;
    sub_1E68B27E0();

    (*(v284 + 8))(v245, v244);
    v246 = v364;
    v347(v225, v356, v364);
    v247 = v348;
    v307(v348, v355, v237);
    v248 = v304;
    v249 = swift_allocObject();
    v250 = v377;
    *(v249 + 2) = v368;
    *(v249 + 3) = v250;
    v251 = v374;
    *(v249 + 4) = v229;
    *(v249 + 5) = v251;
    v252 = v371;
    *(v249 + 6) = v383;
    *(v249 + 7) = v252;
    v253 = v375;
    *(v249 + 8) = v363;
    *(v249 + 9) = v253;
    v254 = v361;
    *(v249 + 10) = v233;
    *(v249 + 11) = v254;
    v255 = v362;
    *(v249 + 12) = v360;
    *(v249 + 13) = v255;
    v256 = v366;
    *(v249 + 14) = v382;
    *(v249 + 15) = v256;
    v257 = v237;
    v258 = v376;
    *(v249 + 16) = v237;
    *(v249 + 17) = v258;
    v259 = v378;
    *(v249 + 18) = v372;
    *(v249 + 19) = v259;
    v260 = v380;
    *(v249 + 20) = v379;
    *(v249 + 21) = v260;
    v261 = v367;
    *(v249 + 22) = v365;
    *(v249 + 23) = v261;
    v262 = v373;
    *(v249 + 24) = v381;
    *(v249 + 25) = v262;
    WitnessTable(&v249[v354], v225, v246);
    v305(&v249[v248], v247, v257);
    v263 = v328;
    v264 = v335;
    sub_1E68B2820();

    (*(v286 + 8))(v243, v264);
    v265 = v289;
    sub_1E68B2190();
    v267 = v330;
    v266 = v331;
    sub_1E68B2950();
    (*(v290 + 8))(v265, v291);
    (*(v329 + 8))(v263, v266);
    v268 = v322;
    v269 = v310;
    sub_1E6814294(v355, v356 + *(v364 + 216), v358, v310, v322, v361, v362, v366, v370, v320, v261, v262);
    (*(v332 + 8))(v267, v269);
    v119 = v311;
    v270 = v321;
    v271 = v326;
    sub_1E68B2780();
    (*(v325 + 8))(v268, v271);
    sub_1E68B24B0();
    sub_1E68B2E80();
    v272 = v319;
    v273 = v352;
    sub_1E68B2970();
    (*(v324 + 8))(v270, v119);
    *&v447 = v119;
    *(&v447 + 1) = v273;
    v274 = swift_getOpaqueTypeConformance2();
    v275 = v318;
    v276 = v336;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v272, v336, v274);
    v277 = *(v323 + 8);
    v277(v272, v276);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v275, v276, v274);
    v133 = v337;
    sub_1E6744DB8(v272, MEMORY[0x1E6981E70], v276);
    v277(v272, v276);
    v277(v275, v276);
  }

  *&v447 = v119;
  *(&v447 + 1) = v352;
  v278 = swift_getOpaqueTypeConformance2();
  v384 = MEMORY[0x1E6981E60];
  v385 = v278;
  v279 = v339;
  v280 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v133, v279, v280);
  return (*(v338 + 8))(v133, v279);
}

uint64_t sub_1E67E0604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v50 = a1;
  v51 = a4;
  v21 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a5);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v49 - v26;
  v52[0] = v28;
  v52[1] = v29;
  v52[2] = v30;
  v52[3] = v31;
  v52[4] = v32;
  v52[5] = v33;
  v52[6] = v34;
  v52[7] = a7;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  v58 = v40;
  v59 = a19;
  v60 = v25;
  v61 = v42;
  v62 = v41;
  v43 = type metadata accessor for CarouselView();
  sub_1E67D7410(v43);
  v44 = *(v43 + 220);
  v46 = *(v45 + 208);
  v52[0] = a3;
  v46(v50, v52, a2 + v44);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v23, a7, a19);
  v47 = *(v21 + 8);
  v47(v23, a7);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v27, a7, a19);
  return (v47)(v27, a7);
}

uint64_t sub_1E67E0800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = &v49 - v24;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  v50 = v29;
  v51 = v30;
  v52 = v31;
  v53 = v32;
  v54 = v33;
  v55 = v35;
  v56 = v34;
  v57 = v37;
  v58 = v36;
  v59 = v39;
  v60 = v38;
  v61 = a19;
  v62 = v40;
  v63 = v41;
  v64 = v26;
  v65 = v43;
  v66 = v42;
  v44 = type metadata accessor for CarouselView();
  sub_1E67D71F4(v44);
  v46 = *(v45 + 208);
  v50 = a3;
  LOBYTE(v51) = 0;
  v46(a1, &v50);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v25, a5, a19);
  v47 = *(v22 + 8);
  v47(v25, a5);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v28, a5, a19);
  return (v47)(v28, a5);
}

void (*sub_1E67E09D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t (*a27)(uint64_t)))(uint64_t)
{
  v28 = type metadata accessor for CarouselView();
  result = a27(v28);
  if (result)
  {
    v30 = result;
    result(a2);
    return sub_1E672E440(v30);
  }

  return result;
}

uint64_t (*sub_1E67E0A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26))()
{
  v26 = *(a11 - 8);
  v27 = MEMORY[0x1EEE9AC00](a10);
  v29 = v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = v30;
  v49[1] = v31;
  v49[2] = v32;
  v49[3] = v33;
  v49[4] = v34;
  v49[5] = v35;
  v49[6] = v37;
  v49[7] = v36;
  v49[8] = a11;
  v50 = v38;
  v51 = v39;
  v52 = v40;
  v53 = a17;
  v54 = v41;
  *(v42 + 136) = v43;
  *(v42 + 152) = v27;
  v55 = v45;
  v56 = v44;
  v57 = a26;
  v46 = type metadata accessor for CarouselView();
  result = sub_1E67D76D4(v46);
  if (result)
  {
    v48 = result;
    (*(a26 + 152))(a17, a26);
    (v48)(v29);
    sub_1E672E440(v48);
    return (*(v26 + 8))(v29, a11);
  }

  return result;
}

uint64_t sub_1E67E0C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v40 = a4;
  v48 = a3;
  v47 = a18;
  v46 = a17;
  v45 = a16;
  v44 = a12;
  v43 = a11;
  v42 = a10;
  v41 = a9;
  v37 = *(a21 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v36 = &v33 - v25;
  v35 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v34 = &v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v52 = a5;
  *(&v52 + 1) = a6;
  v53 = a7;
  v54 = a8;
  v55 = v41;
  v56 = v42;
  v57 = v43;
  v58 = v44;
  v59 = a13;
  v60 = a14;
  v62 = v45;
  v63 = v46;
  v64 = v47;
  v61 = a15;
  v65 = a19;
  v66 = a20;
  v28 = v48;
  v67 = a21;
  type metadata accessor for CarouselView();
  result = sub_1E67D794C();
  if ((result & 1) == 0)
  {
    v51 = *(v28 + 8);
    sub_1E68B33B0();
    swift_getWitnessTable();
    sub_1E68B3650();
    v50 = v52;
    v49 = sub_1E67D7848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098398);
    result = sub_1E68B3700();
    if (result)
    {
      sub_1E67D7848();
      v30 = v34;
      sub_1E68B33F0();
      v31 = v36;
      sub_1E68B3830();
      (*(v35 + 8))(v30, a15);
      v32 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      sub_1E68B1E80();
      return (*(v38 + 8))(v31, v32);
    }
  }

  return result;
}

double sub_1E67E104C@<D0>(double *a1@<X8>)
{
  sub_1E68B1DC0();
  v3 = v2;
  sub_1E68B1DB0();
  result = v3 / v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E67E108C(uint64_t a1, double *a2)
{
  v2 = *a2;
  type metadata accessor for CarouselView();
  result = sub_1E67D794C();
  if (result)
  {
    v4 = round(v2);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return sub_1E67D789C();
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1E67E1248@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CarouselView();
  sub_1E67D7A10();
  sub_1E67D78F4();
  sub_1E68B1A20();
  v3 = sub_1E68B2520();
  sub_1E67D7AF4(v2);
  sub_1E68B1B30();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0983C8);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

double sub_1E67E139C@<D0>(void (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  a1();
  sub_1E68B20E0();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1E67E1468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = v2[3];
  v28 = v2[2];
  v25 = v2[5];
  v26 = v2[4];
  v23 = v2[7];
  v24 = v2[6];
  v21 = v2[9];
  v22 = v2[8];
  v19 = v2[11];
  v20 = v2[10];
  v17 = v2[13];
  v18 = v2[12];
  v15 = v2[15];
  v16 = v2[14];
  v3 = v2[17];
  v14 = v2[16];
  v4 = v2[18];
  v5 = v2[19];
  v6 = v2[20];
  v7 = v2[21];
  v8 = v2[22];
  v9 = v2[23];
  v10 = v2[24];
  v11 = v2[25];
  v12 = *(type metadata accessor for CarouselView() - 8);
  return sub_1E67D97EC(a1, v2 + ((*(v12 + 80) + 208) & ~*(v12 + 80)), v28, v27, v26, v25, v24, v23, a2, v22, v21, v20, v19, v18, v17, v16, v15, v14, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_1E67E15BC()
{
  result = qword_1EE2EDE60;
  if (!qword_1EE2EDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDE60);
  }

  return result;
}

void sub_1E67E1684()
{
  sub_1E68B33B0();
  if (v0 <= 0x3F)
  {
    sub_1E68B3750();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CanvasLayout();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          sub_1E68B3750();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208);
          swift_getFunctionTypeMetadata2();
          type metadata accessor for AssumeEquatable();
          if (v4 <= 0x3F)
          {
            swift_getFunctionTypeMetadata1();
            type metadata accessor for AssumeEquatable();
            if (v5 <= 0x3F)
            {
              swift_getFunctionTypeMetadata1();
              type metadata accessor for AssumeEquatable();
              if (v6 <= 0x3F)
              {
                swift_getFunctionTypeMetadata1();
                type metadata accessor for AssumeEquatable();
                if (v7 <= 0x3F)
                {
                  swift_getFunctionTypeMetadata3();
                  type metadata accessor for AssumeEquatable();
                  if (v8 <= 0x3F)
                  {
                    sub_1E67D3FB0();
                    if (v9 <= 0x3F)
                    {
                      swift_getFunctionTypeMetadata1();
                      sub_1E68B3750();
                      type metadata accessor for AssumeEquatable();
                      if (v10 <= 0x3F)
                      {
                        sub_1E67E2354();
                        if (v11 <= 0x3F)
                        {
                          sub_1E67E23AC(319, &qword_1EE2EA550);
                          if (v12 <= 0x3F)
                          {
                            sub_1E67E23AC(319, &qword_1EE2EA558);
                            if (v13 <= 0x3F)
                            {
                              sub_1E68B1950();
                              if (v14 <= 0x3F)
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
        }
      }
    }
  }
}

uint64_t sub_1E67E1988(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 112);
  v38 = *(a3 + 104);
  v5 = *(v38 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 - 8);
  v37 = *(v8 + 84);
  if (v37 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v8 + 84);
  }

  if (v7 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(sub_1E68B1950() - 8);
  v12 = v11;
  if (v10 <= *(v11 + 84))
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v10;
  }

  v14 = *(v5 + 80);
  v15 = *(v8 + 80);
  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (v6)
  {
    v18 = *(v5 + 64);
  }

  else
  {
    v18 = *(v5 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v15 | 7;
  v20 = ((v15 + 96) & ~v15) + *(v8 + 64) + 7;
  v21 = v16 + 16;
  if (a2 > v13)
  {
    v22 = ((v21 + ((((((((((((((((((((((((((v20 + ((v19 + v18 + ((v14 + 16) & ~v14)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + v17;
    v23 = 8 * v22;
    if (v22 > 3)
    {
      goto LABEL_19;
    }

    v25 = ((a2 - v13 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v25))
    {
      v24 = *(a1 + v22);
      if (v24)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v25 <= 0xFF)
      {
        if (v25 < 2)
        {
          goto LABEL_39;
        }

LABEL_19:
        v24 = *(a1 + v22);
        if (!*(a1 + v22))
        {
          goto LABEL_39;
        }

LABEL_26:
        v26 = (v24 - 1) << v23;
        if (v22 > 3)
        {
          v26 = 0;
        }

        if (v22)
        {
          if (v22 <= 3)
          {
            v27 = v22;
          }

          else
          {
            v27 = 4;
          }

          if (v27 > 2)
          {
            if (v27 == 3)
            {
              v28 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v28 = *a1;
            }
          }

          else if (v27 == 1)
          {
            v28 = *a1;
          }

          else
          {
            v28 = *a1;
          }
        }

        else
        {
          v28 = 0;
        }

        return v13 + (v28 | v26) + 1;
      }

      v24 = *(a1 + v22);
      if (*(a1 + v22))
      {
        goto LABEL_26;
      }
    }
  }

LABEL_39:
  v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v13 & 0x80000000) == 0)
  {
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }

  v32 = (v29 + v14 + 8) & ~v14;
  if (v7 == v13)
  {
    if (v6 >= 2)
    {
      v35 = (*(v5 + 48))(v32, v6, v38);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v33 = (v32 + v18 + v19) & ~v19;
  if (v9 == v13)
  {
    v34 = *(v8 + 48);

    return v34((v15 + ((((((v33 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15, v37, v4);
  }

  else
  {
    v36 = *(v12 + 48);

    return v36((v21 + ((((((((((((((((((((((((((v20 + v33) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
  }
}

void sub_1E67E1E20(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v33 = *(a4 + 104);
  v5 = *(v33 - 8);
  v36 = v5;
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a4 + 112) - 8);
  if (*(v8 + 84) <= 0x7FFFFFFFu)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v8 + 84);
  }

  if (v7 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  v11 = 0;
  v12 = *(sub_1E68B1950() - 8);
  v13 = v12;
  if (v10 <= *(v12 + 84))
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v10;
  }

  v15 = *(v5 + 80);
  if (v6)
  {
    v16 = *(v5 + 64);
  }

  else
  {
    v16 = *(v5 + 64) + 1;
  }

  v17 = *(v8 + 80);
  v18 = ((v17 + 96) & ~v17) + *(v8 + 64) + 7;
  v19 = *(v12 + 80);
  v20 = ((v19 + 16 + ((((((((((((((((((((((((((v18 + (((v17 | 7) + v16 + ((v15 + 16) & ~v15)) & ~(v17 | 7))) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + *(v12 + 64);
  if (a3 > v14)
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v14 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
      if (HIWORD(v21))
      {
        v11 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v11 = v22;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v14 < a2)
  {
    v23 = ~v14 + a2;
    if (v20 < 4)
    {
      v24 = (v23 >> (8 * v20)) + 1;
      if (v20)
      {
        v25 = v23 & ~(-1 << (8 * v20));
        bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v25;
            if (v11 > 1)
            {
LABEL_64:
              if (v11 == 2)
              {
                *&a1[v20] = v24;
              }

              else
              {
                *&a1[v20] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v11 > 1)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_61;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v11 > 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v23;
      v24 = 1;
      if (v11 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    if (v11)
    {
      a1[v20] = v24;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *&a1[v20] = 0;
LABEL_42:
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!v11)
  {
    goto LABEL_42;
  }

  a1[v20] = 0;
  if (!a2)
  {
    return;
  }

LABEL_43:
  v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v14 & 0x80000000) != 0)
  {
    v28 = (v26 + v15 + 8) & ~v15;
    if (v7 == v14)
    {
      if (v6 >= 2)
      {
        v29 = *(v36 + 56);

        v29(v28, a2 + 1, v6, v33);
      }
    }

    else
    {
      v30 = (v28 + v16 + (v17 | 7)) & ~(v17 | 7);
      if (v9 == v14)
      {
        v31 = *(v8 + 56);

        v31((v17 + ((((((v30 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v17);
      }

      else
      {
        v32 = *(v13 + 56);

        v32((v19 + 16 + ((((((((((((((((((((((((((v18 + v30) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v19);
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = a2 - 1;
    }

    *v26 = v27;
  }
}

void sub_1E67E2354()
{
  if (!qword_1EE2EA880)
  {
    type metadata accessor for CGSize(255);
    v0 = sub_1E68B1BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EA880);
    }
  }
}

void sub_1E67E23AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E68B2C00();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

double keypath_getTm@<D0>(void (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  a1();
  sub_1E68B20E0();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1E67E24BC(uint64_t a1, uint64_t a2)
{
  v37 = v2[3];
  v38 = v2[2];
  v35 = v2[5];
  v36 = v2[4];
  v33 = v2[7];
  v34 = v2[6];
  v31 = v2[9];
  v32 = v2[8];
  v29 = v2[11];
  v30 = v2[10];
  v27 = v2[13];
  v28 = v2[12];
  v25 = v2[15];
  v26 = v2[14];
  v23 = v2[17];
  v24 = v2[16];
  v3 = v2[19];
  v22 = v2[18];
  v4 = v2[20];
  v5 = v2[21];
  v6 = v2[22];
  v7 = v2[23];
  v8 = v2[24];
  v9 = v2[25];
  v10 = *(type metadata accessor for CarouselView() - 8);
  v11 = (*(v10 + 80) + 208) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1E68B1E90() - 8);
  *(&v21 + 1) = v6;
  *(&v20 + 1) = v4;
  *&v21 = v5;
  *(&v19 + 1) = v22;
  *&v20 = v3;
  *&v19 = v23;
  *(&v18 + 1) = v27;
  *(&v17 + 1) = v29;
  *&v18 = v28;
  *(&v16 + 1) = v31;
  *&v17 = v30;
  *(&v15 + 1) = v33;
  *&v16 = v32;
  *&v15 = v34;
  return sub_1E67E0C54(a1, a2, v2 + v11, v2 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)), v38, v37, v36, v35, v15, v16, v17, v18, v26, v25, v24, v19, v20, v21, v7, v8, v9);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 104);
  v14 = *(v0 + 112);
  v2 = type metadata accessor for CarouselView();
  v3 = *(*(v2 - 1) + 80);
  v15 = *(*(v2 - 1) + 64);
  v16 = sub_1E68B1E90();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + ((v3 + 208) & ~v3);

  v7 = v2[54];
  v8 = *(v1 - 8);
  if (!(*(v8 + 48))(v6 + v7, 1, v1))
  {
    (*(v8 + 8))(v6 + v7, v1);
  }

  v9 = v6 + v2[55];

  v10 = type metadata accessor for CanvasLayout();
  (*(*(v14 - 8) + 8))(v9 + *(v10 + 72), v14);

  if (*(v6 + v2[63]))
  {
  }

  if (*(v6 + v2[64]))
  {
  }

  if (*(v6 + v2[65]))
  {
  }

  sub_1E677AF80(*(v6 + v2[66]), *(v6 + v2[66] + 8), *(v6 + v2[66] + 16));

  v11 = v2[70];
  v12 = sub_1E68B1950();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  (*(v4 + 8))(v0 + ((((v3 + 208) & ~v3) + v15 + v5) & ~v5), v16);
  return swift_deallocObject();
}

unint64_t sub_1E67E2CD4()
{
  result = qword_1EE2EA830;
  if (!qword_1EE2EA830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983C8);
    sub_1E67E2D90(&qword_1EE2EDE58, MEMORY[0x1E699DBC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA830);
  }

  return result;
}

uint64_t sub_1E67E2D90(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1E67E2DD8()
{
  v1 = (*(*(v0 + 200) + 184))(*(v0 + 128));
  v2 = sub_1E674BEB0(3u, v1);

  return !v2;
}

unint64_t sub_1E67E2E4C()
{
  result = qword_1EE2EB690;
  if (!qword_1EE2EB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB690);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 104);
  v11 = *(v0 + 112);
  v2 = type metadata accessor for CarouselView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 208) & ~*(*(v2 - 1) + 80));

  v4 = v2[54];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  v6 = v3 + v2[55];

  v7 = type metadata accessor for CanvasLayout();
  (*(*(v11 - 8) + 8))(v6 + *(v7 + 72), v11);

  if (*(v3 + v2[63]))
  {
  }

  if (*(v3 + v2[64]))
  {
  }

  if (*(v3 + v2[65]))
  {
  }

  sub_1E677AF80(*(v3 + v2[66]), *(v3 + v2[66] + 8), *(v3 + v2[66] + 16));

  v8 = v2[70];
  v9 = sub_1E68B1950();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  return swift_deallocObject();
}

uint64_t sub_1E67E3218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = v3[3];
  v29 = v3[2];
  v26 = v3[5];
  v27 = v3[4];
  v24 = v3[7];
  v25 = v3[6];
  v22 = v3[9];
  v23 = v3[8];
  v20 = v3[11];
  v21 = v3[10];
  v18 = v3[13];
  v19 = v3[12];
  v16 = v3[15];
  v17 = v3[14];
  v4 = v3[17];
  v15 = v3[16];
  v6 = v3[18];
  v5 = v3[19];
  v7 = v3[20];
  v8 = v3[21];
  v9 = v3[22];
  v10 = v3[23];
  v11 = v3[24];
  v12 = v3[25];
  v13 = *(type metadata accessor for CarouselView() - 8);
  return sub_1E67DE2C4(a1, a2, v3 + ((*(v13 + 80) + 208) & ~*(v13 + 80)), v29, v28, v27, v26, v25, a3, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v4, v6, v5, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1E67E33A8(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v28 = *(v2 + 3);
  v29 = *(v2 + 2);
  v26 = *(v2 + 5);
  v27 = *(v2 + 4);
  v24 = *(v2 + 7);
  v25 = *(v2 + 6);
  v22 = *(v2 + 9);
  v23 = *(v2 + 8);
  v20 = *(v2 + 11);
  v21 = *(v2 + 10);
  v18 = *(v2 + 13);
  v19 = *(v2 + 12);
  v16 = *(v2 + 15);
  v17 = *(v2 + 14);
  v3 = *(v2 + 17);
  v15 = *(v2 + 16);
  v5 = *(v2 + 18);
  v4 = *(v2 + 19);
  v6 = *(v2 + 20);
  v7 = *(v2 + 21);
  v8 = *(v2 + 22);
  v9 = *(v2 + 23);
  v10 = *(v2 + 24);
  v11 = *(v2 + 25);
  v12 = *(type metadata accessor for CarouselView() - 8);
  v13 = (*(v12 + 80) + 208) & ~*(v12 + 80);
  return a2(a1, &v2[v13], *&v2[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8], v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v5, v4, v6, v7, v8, v9, v10, v11);
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 104);
  v11 = *(v0 + 112);
  v2 = type metadata accessor for CarouselView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 208) & ~*(*(v2 - 1) + 80));

  v4 = v2[54];
  v5 = *(v1 - 8);
  if (!(*(v5 + 48))(v3 + v4, 1, v1))
  {
    (*(v5 + 8))(v3 + v4, v1);
  }

  v6 = v3 + v2[55];

  v7 = type metadata accessor for CanvasLayout();
  (*(*(v11 - 8) + 8))(v6 + *(v7 + 72), v11);

  if (*(v3 + v2[63]))
  {
  }

  if (*(v3 + v2[64]))
  {
  }

  if (*(v3 + v2[65]))
  {
  }

  sub_1E677AF80(*(v3 + v2[66]), *(v3 + v2[66] + 8), *(v3 + v2[66] + 16));

  v8 = v2[70];
  v9 = sub_1E68B1950();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  return swift_deallocObject();
}

void (*sub_1E67E3864(uint64_t (*a1)(uint64_t)))(uint64_t)
{
  v28 = v1[2];
  v26 = v1[4];
  v27 = v1[3];
  v24 = v1[6];
  v25 = v1[5];
  v22 = v1[8];
  v23 = v1[7];
  v20 = v1[10];
  v21 = v1[9];
  v18 = v1[12];
  v19 = v1[11];
  v16 = v1[14];
  v17 = v1[13];
  v2 = v1[17];
  v14 = v1[16];
  v15 = v1[15];
  v4 = v1[18];
  v3 = v1[19];
  v5 = v1[20];
  v6 = v1[21];
  v7 = v1[22];
  v8 = v1[23];
  v9 = v1[24];
  v10 = v1[25];
  v11 = *(type metadata accessor for CarouselView() - 8);
  v12 = (*(v11 + 80) + 208) & ~*(v11 + 80);
  return sub_1E67E09D8(v1 + v12, *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v2, v4, v3, v5, v6, v7, v8, v9, v10, a1);
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 104);
  v16 = *(v0 + 128);
  v14 = *(v0 + 112);
  v2 = type metadata accessor for CarouselView();
  v3 = *(*(v2 - 1) + 80);
  v15 = *(*(v2 - 1) + 64);
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + ((v3 + 208) & ~v3);

  v7 = v2[54];
  v8 = *(v1 - 8);
  if (!(*(v8 + 48))(v6 + v7, 1, v1))
  {
    (*(v8 + 8))(v6 + v7, v1);
  }

  v9 = v6 + v2[55];

  v10 = type metadata accessor for CanvasLayout();
  (*(*(v14 - 8) + 8))(v9 + *(v10 + 72), v14);

  if (*(v6 + v2[63]))
  {
  }

  if (*(v6 + v2[64]))
  {
  }

  if (*(v6 + v2[65]))
  {
  }

  sub_1E677AF80(*(v6 + v2[66]), *(v6 + v2[66] + 8), *(v6 + v2[66] + 16));

  v11 = v2[70];
  v12 = sub_1E68B1950();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  (*(v4 + 8))(v0 + ((((v3 + 208) & ~v3) + v15 + v5) & ~v5), v16);
  return swift_deallocObject();
}

uint64_t (*sub_1E67E3D68())()
{
  v26 = v0[3];
  v27 = v0[2];
  v24 = v0[5];
  v25 = v0[4];
  v22 = v0[7];
  v23 = v0[6];
  v20 = v0[9];
  v21 = v0[8];
  v18 = v0[11];
  v19 = v0[10];
  v16 = v0[13];
  v17 = v0[12];
  v14 = v0[15];
  v15 = v0[14];
  v1 = v0[16];
  v13 = v0[17];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[24];
  v9 = v0[25];
  v10 = *(type metadata accessor for CarouselView() - 8);
  v11 = (*(v10 + 80) + 208) & ~*(v10 + 80);
  return sub_1E67E0A7C(v0 + v11, v0 + ((v11 + *(v10 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v1, v13, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E67E3F34(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 208);
  v6 = a2;
  v7 = a3 & 1;
  return v4(a1, &v6);
}

uint64_t sub_1E67E3F74(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 208);
  v5 = a2;
  return v3(a1, &v5);
}

double static ContentMargins.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void ContentMargins.init(top:leading:bottom:trailing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a4;
  a1[1] = a3;
  a1[2] = a2;
  a1[3] = a5;
}

uint64_t sub_1E67E407C()
{
  v1 = 0x6D6F74746F62;
  v2 = 7368564;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x676E696461656CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E67E40EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E67E49A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67E4114(uint64_t a1)
{
  v2 = sub_1E67E43A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67E4150(uint64_t a1)
{
  v2 = sub_1E67E43A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContentMargins.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0983E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67E43A8();
  sub_1E68B3BD0();
  v14 = v9;
  HIBYTE(v13) = 0;
  sub_1E67621E8();
  sub_1E68B3AB0();
  if (!v2)
  {
    v14 = v8;
    HIBYTE(v13) = 1;
    sub_1E68B3AB0();
    v14 = v11;
    HIBYTE(v13) = 2;
    sub_1E68B3AB0();
    v14 = v10;
    HIBYTE(v13) = 3;
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E67E43A8()
{
  result = qword_1EE2EC0E8[0];
  if (!qword_1EE2EC0E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EC0E8);
  }

  return result;
}

uint64_t ContentMargins.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0983E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E67E43A8();
  sub_1E68B3BC0();
  if (!v2)
  {
    HIBYTE(v14) = 0;
    sub_1E6762A60();
    sub_1E68B3A00();
    v9 = v15;
    HIBYTE(v14) = 1;
    sub_1E68B3A00();
    v10 = v15;
    HIBYTE(v14) = 2;
    sub_1E68B3A00();
    v12 = v15;
    HIBYTE(v14) = 3;
    sub_1E68B3A00();
    (*(v6 + 8))(v8, v5);
    v13 = v15;
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ContentMargins.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E69523F0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1E69523F0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x1E69523F0](*&v7);
}

uint64_t ContentMargins.hashValue.getter()
{
  sub_1E68B3B70();
  ContentMargins.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67E475C()
{
  sub_1E68B3B70();
  ContentMargins.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E67E47AC()
{
  sub_1E68B3B70();
  ContentMargins.hash(into:)();
  return sub_1E68B3BB0();
}

unint64_t sub_1E67E4838()
{
  result = qword_1ED0983F0;
  if (!qword_1ED0983F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0983F0);
  }

  return result;
}

unint64_t sub_1E67E48A0()
{
  result = qword_1ED0983F8;
  if (!qword_1ED0983F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0983F8);
  }

  return result;
}

unint64_t sub_1E67E48F8()
{
  result = qword_1EE2EC0D8;
  if (!qword_1EE2EC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC0D8);
  }

  return result;
}

unint64_t sub_1E67E4950()
{
  result = qword_1EE2EC0E0;
  if (!qword_1EE2EC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC0E0);
  }

  return result;
}

uint64_t sub_1E67E49A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7368564 && a2 == 0xE300000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t DescriptionView.init(text:lineLimit:sheetTitle:localizedDoneString:localizedMoreString:supplementaryView:action:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, void (*a11)(void), uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = type metadata accessor for DescriptionView();
  v20 = v19[9];
  *(a8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040);
  swift_storeEnumTagMultiPayload();
  v21 = (a8 + v19[10]);
  v22 = sub_1E67E4EC4();
  *v21 = v23;
  v21[1] = v24;
  v21[2] = v22;
  v25 = (a8 + v19[11]);
  v26 = sub_1E67E4EC4();
  *v25 = v27;
  v25[1] = v28;
  v25[2] = v26;
  v29 = a8 + v19[12];
  v30 = sub_1E68B2BC0();
  *v29 = v44;
  *(v29 + 8) = v45;
  *a8 = a2;
  *(a8 + 8) = a3 & 1;
  v31 = a1(v30);
  v32 = a8 + v19[13];
  *v32 = v31;
  *(v32 + 8) = v33;
  *(v32 + 16) = v34 & 1;
  *(v32 + 24) = v35;
  v36 = (a8 + v19[14]);
  *v36 = a4;
  v36[1] = a5;
  v37 = (a8 + v19[15]);
  *v37 = a6;
  v37[1] = a7;
  v38 = (a8 + v19[16]);
  *v38 = a9;
  v38[1] = a10;
  a11();

  v39 = (a8 + v19[18]);
  result = swift_allocObject();
  *(result + 16) = a13;
  *(result + 24) = a14;
  *v39 = sub_1E67EA2DC;
  v39[1] = result;
  return result;
}

uint64_t sub_1E67E4D38(uint64_t a1)
{
  v2 = sub_1E68B1E00();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E68B1FD0();
}

double sub_1E67E4E00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0984A8);
  sub_1E68B2BD0();
  return v1;
}

uint64_t sub_1E67E4EC4()
{
  type metadata accessor for CGSize(0);
  sub_1E68B2BC0();
  return v1;
}

double sub_1E67E4F04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0984A8);
  sub_1E68B2BD0();
  return v1;
}

uint64_t sub_1E67E502C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0983D8);
  sub_1E68B2BF0();
  return v1;
}

uint64_t DescriptionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a1;
  v20 = a2;
  v15 = *(a1 + 16);
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  v14[1] = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E48);
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098400);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098408);
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v39 = MEMORY[0x1E697EBF8];
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x1E697EBE0];
  v34 = swift_getWitnessTable();
  v35 = sub_1E67EA304();
  v32 = swift_getWitnessTable();
  v33 = sub_1E673F530(&qword_1ED098418, &qword_1ED098400);
  v30 = swift_getWitnessTable();
  v31 = sub_1E673F530(&qword_1ED098420, &qword_1ED098408);
  swift_getWitnessTable();
  sub_1E68B21F0();
  v17 = sub_1E68B1E40();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098428);
  sub_1E68B1DA0();
  v2 = v15;
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  v28 = swift_getWitnessTable();
  v29 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1B80();
  swift_getWitnessTable();
  sub_1E67612A8();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098430);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098438);
  sub_1E673F530(&qword_1ED098440, &qword_1ED098438);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v24 = v16;
  v25 = sub_1E68B1E60();
  v26 = sub_1E67EA358();
  v27 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v3 = sub_1E68B2CE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  sub_1E68B21E0();
  sub_1E68B2110();
  v10 = *(v18 + 24);
  v21 = v2;
  v22 = v10;
  v23 = v19;
  sub_1E68B2CD0();
  v11 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v6, v3, v11);
  v12 = *(v4 + 8);
  v12(v6, v3);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v9, v3, v11);
  return (v12)(v9, v3);
}

uint64_t sub_1E67E58D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v154 = a3;
  v148 = a1;
  v138 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098428);
  MEMORY[0x1EEE9AC00](v5);
  v137 = &v109 - v6;
  sub_1E68B1DA0();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v146 = sub_1E68B2CC0();
  v141 = a2;
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  v7 = sub_1E68B1E40();
  v147 = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v168 = MEMORY[0x1E697E5D8];
  v144 = MEMORY[0x1E697E858];
  v8 = swift_getWitnessTable();
  v163 = v7;
  v164 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v163 = v7;
  v164 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v163 = OpaqueTypeMetadata2;
  v164 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v163 = OpaqueTypeMetadata2;
  v164 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_1E68B1B80();
  v12 = swift_getWitnessTable();
  v13 = sub_1E67612A8();
  v14 = MEMORY[0x1E69E6158];
  v163 = v11;
  v164 = MEMORY[0x1E69E6158];
  v165 = v12;
  v166 = v13;
  v15 = swift_getOpaqueTypeMetadata2();
  v163 = v11;
  v164 = v14;
  v165 = v12;
  v166 = v13;
  v16 = swift_getOpaqueTypeConformance2();
  v163 = v15;
  v164 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098430);
  v163 = v15;
  v164 = v16;
  v19 = swift_getOpaqueTypeConformance2();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098438);
  v21 = sub_1E673F530(&qword_1ED098440, &qword_1ED098438);
  v163 = v20;
  v164 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v163 = v17;
  v164 = v18;
  v165 = v19;
  v166 = v22;
  swift_getOpaqueTypeMetadata2();
  v163 = v17;
  v164 = v18;
  v165 = v19;
  v166 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = sub_1E68B1E60();
  v24 = sub_1E67EA358();
  v25 = swift_getWitnessTable();
  v151 = v23;
  v152 = v5;
  v163 = v5;
  v164 = v23;
  v149 = v25;
  v150 = v24;
  v165 = v24;
  v166 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v131 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v111 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v110 = &v109 - v29;
  v133 = v30;
  v136 = sub_1E68B3750();
  v132 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v134 = &v109 - v33;
  v142 = type metadata accessor for DescriptionView();
  v153 = *(v142 - 8);
  v139 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v109 - v34;
  v35 = swift_checkMetadataState();
  v125 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v120 = &v109 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E48);
  v123 = sub_1E68B1E40();
  v127 = *(v123 - 1);
  MEMORY[0x1EEE9AC00](v123);
  v119 = &v109 - v37;
  v126 = sub_1E68B1E40();
  v129 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v121 = &v109 - v38;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098400);
  v128 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098408);
  v113 = sub_1E68B1E40();
  v130 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v124 = &v109 - v39;
  v112 = v35;
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  v40 = sub_1E68B1E40();
  v41 = swift_getWitnessTable();
  v162[20] = v41;
  v162[21] = MEMORY[0x1E697EBF8];
  v162[18] = swift_getWitnessTable();
  v162[19] = MEMORY[0x1E697EBE0];
  v42 = swift_getWitnessTable();
  v43 = sub_1E67EA304();
  v162[16] = v42;
  v162[17] = v43;
  v44 = swift_getWitnessTable();
  v122 = MEMORY[0x1E697F940];
  v115 = sub_1E673F530(&qword_1ED098418, &qword_1ED098400);
  v162[14] = v44;
  v162[15] = v115;
  v45 = swift_getWitnessTable();
  v114 = sub_1E673F530(&qword_1ED098420, &qword_1ED098408);
  v162[12] = v45;
  v162[13] = v114;
  v116 = v40;
  v117 = swift_getWitnessTable();
  v118 = sub_1E68B21F0();
  v147 = sub_1E68B1E40();
  v143 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v109 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v145 = &v109 - v48;
  v49 = v120;
  v50 = v142;
  v51 = v148;
  sub_1E67E6B04(v142);
  v52 = v119;
  v53 = v112;
  sub_1E68B2B00();
  (*(v125 + 8))(v49, v53);
  sub_1E68B2E90();
  v54 = sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48);
  v162[10] = v41;
  v162[11] = v54;
  v107 = v123;
  v108 = swift_getWitnessTable();
  v55 = v121;
  sub_1E68B2A00();
  (*(v127 + 8))(v52, v107);
  v56 = v153;
  v57 = *(v153 + 16);
  v58 = v140;
  v59 = v50;
  v125 = v153 + 16;
  v123 = v57;
  (v57)(v140, v51, v50);
  v60 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v120 = *(v56 + 80);
  v61 = swift_allocObject();
  v62 = v141;
  v63 = v154;
  *(v61 + 16) = v141;
  *(v61 + 24) = v63;
  v64 = *(v56 + 32);
  v127 = v60;
  v153 = v56 + 32;
  v119 = v64;
  (v64)(v61 + v60, v58, v59);
  v162[8] = v108;
  v162[9] = MEMORY[0x1E697EBF8];
  v65 = v126;
  v66 = swift_getWitnessTable();
  v67 = v124;
  sub_1E686F250(sub_1E67EAC38, v61, v66, v124);

  (*(v129 + 8))(v55, v65);
  v155 = v62;
  v156 = v63;
  v68 = v148;
  v157 = v148;
  sub_1E68B2E80();
  v162[6] = v66;
  v162[7] = v115;
  v69 = swift_getWitnessTable();
  v70 = v113;
  v162[4] = v69;
  v162[5] = v114;
  v71 = swift_getWitnessTable();
  v72 = v146;
  v73 = v142;
  sub_1E68B2740();
  v130[1](v67, v70);
  v74 = swift_getWitnessTable();
  v162[2] = v71;
  v162[3] = v74;
  v75 = v147;
  v129 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v72, v75, v129);
  v76 = *(v143 + 8);
  v144 = v143 + 8;
  v130 = v76;
  (v76)(v72, v75);
  v77 = sub_1E67E4F04();
  v79 = v78;
  if (v77 == sub_1E67E4E00() && v79 == v80)
  {
    v81 = v135;
    (*(v131 + 56))(v135, 1, 1, v133);
    v163 = v152;
    v164 = v151;
    v165 = v150;
    v166 = v149;
    swift_getOpaqueTypeConformance2();
  }

  else
  {
    sub_1E67E7494(v73, v137);
    sub_1E67E502C();
    v82 = v140;
    (v123)(v140, v68, v73);
    v83 = v127;
    v84 = swift_allocObject();
    v85 = v154;
    *(v84 + 16) = v141;
    *(v84 + 24) = v85;
    (v119)(v84 + v83, v82, v73);
    v86 = swift_checkMetadataState();
    v87 = v149;
    v88 = v150;
    v89 = v111;
    v90 = v152;
    v91 = v137;
    sub_1E68B2A10();

    sub_1E6744A10(v91, &qword_1ED098428);
    v163 = v90;
    v164 = v86;
    v165 = v88;
    v166 = v87;
    v92 = swift_getOpaqueTypeConformance2();
    v93 = v110;
    v94 = v133;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v89, v133, v92);
    v95 = v131;
    v96 = *(v131 + 8);
    v96(v89, v94);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v93, v94, v92);
    v96(v93, v94);
    v97 = v94;
    v81 = v135;
    (*(v95 + 32))(v135, v89, v97);
    (*(v95 + 56))(v81, 0, 1, v97);
  }

  v98 = v134;
  sub_1E67FDFA4(v81, v134);
  v99 = v132;
  v100 = *(v132 + 8);
  v101 = v136;
  v100(v81, v136);
  v103 = v145;
  v102 = v146;
  v104 = v147;
  (*(v143 + 16))(v146, v145, v147);
  v162[0] = v102;
  (*(v99 + 16))(v81, v98, v101);
  v162[1] = v81;
  v161[0] = v104;
  v161[1] = v101;
  v159 = v129;
  v163 = v152;
  v164 = v151;
  v165 = v150;
  v166 = v149;
  v158 = swift_getOpaqueTypeConformance2();
  v160 = swift_getWitnessTable();
  sub_1E6848F14(v162, 2uLL, v161);
  v100(v98, v101);
  v105 = v130;
  (v130)(v103, v104);
  v100(v81, v101);
  return (v105)(v102, v104);
}

uint64_t sub_1E67E6B04(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v4 = sub_1E68B2CC0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  sub_1E68B21D0();
  v11 = *(a1 + 24);
  v16 = v3;
  v17 = v11;
  v18 = v1;
  sub_1E68B2CB0();
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_1E67E6D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v43 = a1;
  v60 = a4;
  v57 = a2;
  v4 = type metadata accessor for DescriptionView();
  v44 = v4;
  v56 = *(v4 - 8);
  v58 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v42 - v5;
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v6 = sub_1E68B2CC0();
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v9 = sub_1E68B1E40();
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  v12 = sub_1E68B1E40();
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v49 = sub_1E68B1E40();
  v53 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v42 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098400);
  v51 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098408);
  v16 = sub_1E68B1E40();
  v54 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v46 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v42 - v19;
  sub_1E67E6B04(v4);
  sub_1E68B2E90();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A00();
  (*(v47 + 8))(v8, v6);
  v69 = WitnessTable;
  v70 = MEMORY[0x1E697EBF8];
  v20 = swift_getWitnessTable();
  sub_1E68B2AF0();
  (*(v48 + 8))(v11, v9);
  v67 = v20;
  v68 = MEMORY[0x1E697EBE0];
  v21 = swift_getWitnessTable();
  v22 = v45;
  sub_1E68B2A20();
  (*(v50 + 8))(v14, v12);
  v24 = v55;
  v23 = v56;
  v25 = v44;
  (*(v56 + 16))(v55, v43, v44);
  v26 = v23;
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = swift_allocObject();
  v29 = v59;
  *(v28 + 16) = v57;
  *(v28 + 24) = v29;
  (*(v26 + 32))(v28 + v27, v24, v25);
  v30 = sub_1E67EA304();
  v65 = v21;
  v66 = v30;
  v31 = v49;
  v32 = swift_getWitnessTable();
  v33 = v46;
  sub_1E686F250(sub_1E67EB010, v28, v32, v46);

  (*(v53 + 8))(v22, v31);
  v34 = sub_1E673F530(&qword_1ED098418, &qword_1ED098400);
  v63 = v32;
  v64 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_1E673F530(&qword_1ED098420, &qword_1ED098408);
  v61 = v35;
  v62 = v36;
  v37 = swift_getWitnessTable();
  v38 = v52;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v33, v16, v37);
  v39 = *(v54 + 8);
  v39(v33, v16);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v38, v16, v37);
  return (v39)(v38, v16);
}

uint64_t sub_1E67E7494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E68B2140();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098480);
  sub_1E67E97E0(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
  v6 = sub_1E68B2E80();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098428) + 36);
  sub_1E67E9E00(v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098468);
  v11 = (v9 + *(result + 36));
  *v11 = v6;
  v11[1] = v8;
  return result;
}

uint64_t sub_1E67E757C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  sub_1E68B1DA0();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  v21[12] = swift_getWitnessTable();
  v21[13] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1B80();
  swift_getWitnessTable();
  sub_1E67612A8();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098430);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098438);
  sub_1E673F530(&qword_1ED098440, &qword_1ED098438);
  v10 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v21[8] = OpaqueTypeMetadata2;
  v21[9] = v8;
  v21[10] = OpaqueTypeConformance2;
  v21[11] = v10;
  swift_getOpaqueTypeConformance2();
  v11 = sub_1E68B1E60();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - v16;
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = a1;
  sub_1E68B1E50();
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v14, v11, WitnessTable);
  v19 = *(v12 + 8);
  v19(v14, v11);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v17, v11, WitnessTable);
  return (v19)(v17, v11);
}

uint64_t sub_1E67E7A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a3;
  v70 = a1;
  v73 = a4;
  v72 = sub_1E68B2100();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a2;
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  v6 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v87 = MEMORY[0x1E697E5D8];
  v7 = swift_getWitnessTable();
  v82 = v6;
  v83 = v7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = v6;
  v83 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = OpaqueTypeMetadata2;
  v83 = OpaqueTypeConformance2;
  v66 = swift_getOpaqueTypeMetadata2();
  v82 = OpaqueTypeMetadata2;
  v83 = OpaqueTypeConformance2;
  v65 = swift_getOpaqueTypeConformance2();
  v10 = sub_1E68B1B80();
  v68 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  v13 = swift_getWitnessTable();
  v14 = sub_1E67612A8();
  v82 = v10;
  v83 = MEMORY[0x1E69E6158];
  v15 = MEMORY[0x1E69E6158];
  v84 = v13;
  v85 = v14;
  v62 = v13;
  v16 = v14;
  v61 = v14;
  v17 = swift_getOpaqueTypeMetadata2();
  v67 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v50 - v18;
  v82 = v10;
  v83 = v15;
  v84 = v13;
  v85 = v16;
  v19 = swift_getOpaqueTypeConformance2();
  v57 = v17;
  v82 = v17;
  v83 = v19;
  v20 = v19;
  v59 = v19;
  v21 = swift_getOpaqueTypeMetadata2();
  v55 = v21;
  v64 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v60 = &v50 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098430);
  v54 = v23;
  v82 = v17;
  v83 = v20;
  v24 = swift_getOpaqueTypeConformance2();
  v53 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098438);
  v26 = sub_1E673F530(&qword_1ED098440, &qword_1ED098438);
  v82 = v25;
  v83 = v26;
  v52 = swift_getOpaqueTypeConformance2();
  v82 = v21;
  v83 = v23;
  v84 = v24;
  v85 = v52;
  v56 = MEMORY[0x1E697D5A0];
  v27 = swift_getOpaqueTypeMetadata2();
  v58 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v51 = &v50 - v31;
  sub_1E68B24D0();
  v79 = v74;
  v80 = v75;
  v32 = v70;
  v81 = v70;
  sub_1E68B1B90();
  v33 = (v32 + *(type metadata accessor for DescriptionView() + 56));
  v35 = *v33;
  v34 = v33[1];
  v82 = v35;
  v83 = v34;
  v36 = v63;
  sub_1E68B2890();
  (*(v68 + 8))(v12, v10);
  v37 = v71;
  v38 = v69;
  v39 = v72;
  (*(v71 + 104))(v69, *MEMORY[0x1E697C438], v72);
  v40 = v60;
  v41 = v57;
  sub_1E6774E64();
  (*(v37 + 8))(v38, v39);
  (*(v67 + 8))(v36, v41);
  v76 = v74;
  v77 = v75;
  v78 = v32;
  v42 = v55;
  v43 = v54;
  v44 = v53;
  v45 = v52;
  sub_1E68B2A80();
  (*(v64 + 8))(v40, v42);
  v82 = v42;
  v83 = v43;
  v84 = v44;
  v85 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v51;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v29, v27, v46);
  v48 = *(v58 + 8);
  v48(v29, v27);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v47, v27, v46);
  return (v48)(v47, v27);
}

uint64_t sub_1E67E8338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a3;
  v46 = a1;
  v52 = a4;
  v5 = sub_1E68B23E0();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E68B2260();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1E68B2CC0();
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_1E68B1E40();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v35 = swift_getWitnessTable();
  v58 = v35;
  v59 = MEMORY[0x1E697E5D8];
  v15 = swift_getWitnessTable();
  v56 = v12;
  v57 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v35 - v17;
  v56 = v12;
  v57 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = OpaqueTypeMetadata2;
  v57 = OpaqueTypeConformance2;
  v41 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeMetadata2();
  v42 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v40 = &v35 - v24;
  sub_1E68B21D0();
  v53 = v36;
  v54 = v47;
  v55 = v46;
  v25 = v44;
  sub_1E68B2CB0();
  sub_1E68B2500();
  sub_1E68B2A70();
  (*(v38 + 8))(v11, v9);
  v26 = v45;
  sub_1E68B2250();
  sub_1E68B24D0();
  v47 = v18;
  sub_1E68B2930();
  (*(v48 + 8))(v26, v49);
  (*(v39 + 8))(v14, v12);
  sub_1E68B23D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E68B77B0;
  LOBYTE(v12) = sub_1E68B24D0();
  *(inited + 32) = v12;
  v28 = sub_1E68B24B0();
  *(inited + 33) = v28;
  sub_1E68B24C0();
  sub_1E68B24C0();
  if (sub_1E68B24C0() != v12)
  {
    sub_1E68B24C0();
  }

  sub_1E68B24C0();
  if (sub_1E68B24C0() != v28)
  {
    sub_1E68B24C0();
  }

  v29 = v41;
  v30 = v47;
  sub_1E68B28A0();
  (*(v50 + 8))(v25, v51);
  (*(v43 + 8))(v30, OpaqueTypeMetadata2);
  v56 = OpaqueTypeMetadata2;
  v57 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v40;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v22, v20, v31);
  v33 = *(v42 + 8);
  v33(v22, v20);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v32, v20, v31);
  return (v33)(v32, v20);
}

uint64_t sub_1E67E8AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v31 = a4;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v26 - v8;
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v9 = sub_1E68B2CC0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = type metadata accessor for DescriptionView();
  sub_1E67E6B04(v16);
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v12, v9, WitnessTable);
  v27 = *(v10 + 8);
  v27(v12, v9);
  v18 = a1 + *(v16 + 68);
  v19 = v28;
  v20 = v26;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v18, a2, v26);
  (*(v10 + 16))(v12, v15, v9);
  v35[0] = v12;
  v22 = v29;
  v21 = v30;
  (*(v30 + 16))(v29, v19, a2);
  v35[1] = v22;
  v34[0] = v9;
  v34[1] = a2;
  v32 = WitnessTable;
  v33 = v20;
  sub_1E6848F14(v35, 2uLL, v34);
  v23 = *(v21 + 8);
  v23(v19, a2);
  v24 = v27;
  v27(v15, v9);
  v23(v22, a2);
  return v24(v12, v9);
}

uint64_t sub_1E67E8DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E68B22B0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098438);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13[-v9];
  sub_1E68B22A0();
  v14 = a2;
  v15 = a3;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098470);
  swift_getOpaqueTypeConformance2();
  sub_1E68B1BB0();
  v11 = sub_1E673F530(&qword_1ED098440, &qword_1ED098438);
  MEMORY[0x1E6950B20](v10, v7, v11);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E67E8FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = type metadata accessor for DescriptionView();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v17[0] = sub_1E68B1B20();
  v11 = *(v17[0] - 8);
  MEMORY[0x1EEE9AC00](v17[0]);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B1B10();
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v8 + 32))(v15 + v14, v10, v7);
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a1;
  sub_1E68B1A70();

  return (*(v11 + 8))(v13, v17[0]);
}

uint64_t sub_1E67E91D0()
{
  type metadata accessor for DescriptionView();

  v0 = sub_1E68B26A0();

  return v0;
}

uint64_t sub_1E67E9264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v55 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v48 - v9;
  v60 = sub_1E68B3750();
  v54 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v48 - v12;
  v13 = sub_1E68B25F0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a2;
  v59 = a3;
  v51 = type metadata accessor for DescriptionView();
  sub_1E68B2580();
  (*(v14 + 104))(v16, *MEMORY[0x1E6980EA8], v13);
  sub_1E68B2610();

  (*(v14 + 8))(v16, v13);
  v17 = sub_1E68B26B0();
  v19 = v18;
  v21 = v20;

  LODWORD(v66) = sub_1E68B2320();
  v22 = sub_1E68B2660();
  v24 = v23;
  v52 = v25;
  v53 = v26;
  v27 = v19;
  v28 = v51;
  sub_1E673F0D4(v17, v27, v21 & 1);

  v29 = sub_1E67E4F04();
  v31 = v30;
  v32 = sub_1E67E4E00();
  v34 = 1;
  if (v29 == v32)
  {
    v36 = v58;
    v35 = v59;
    v37 = v56;
    v38 = v55;
    if (v31 == v33)
    {
      v39 = a1 + *(v28 + 68);
      v40 = v49;
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v39, v56, v59);
      v41 = v50;
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v40, v37, v35);
      (*(v38 + 8))(v40, v37);
      (*(v38 + 32))(v36, v41, v37);
      v34 = 0;
    }
  }

  else
  {
    v36 = v58;
    v35 = v59;
    v37 = v56;
    v38 = v55;
  }

  (*(v38 + 56))(v36, v34, 1, v37);
  v42 = v57;
  sub_1E67FDFA4(v36, v57);
  v43 = v54;
  v59 = *(v54 + 8);
  v44 = v60;
  v59(v36, v60);
  v66 = v22;
  v67 = v24;
  v45 = v52 & 1;
  v68 = v52 & 1;
  v69 = v53;
  v70[0] = &v66;
  (*(v43 + 16))(v36, v42, v44);
  v70[1] = v36;
  sub_1E673F26C(v22, v24, v45);

  v65[0] = MEMORY[0x1E6981148];
  v65[1] = v44;
  v62 = v35;
  v63 = MEMORY[0x1E6981138];
  WitnessTable = swift_getWitnessTable();
  sub_1E6848F14(v70, 2uLL, v65);
  sub_1E673F0D4(v22, v24, v45);

  v46 = v59;
  v59(v42, v44);
  v46(v36, v44);
  sub_1E673F0D4(v66, v67, v68);
}

uint64_t sub_1E67E97E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  v6 = type metadata accessor for DescriptionView();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096FE8);
  v10 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v28 - v13;
  sub_1E68B2E80();
  sub_1E68B1C50();
  v33 = v41;
  v32 = v43;
  v31 = v45;
  v30 = v46;
  v49 = 1;
  v48 = v42;
  v47 = v44;
  v14 = v6;
  (*(v7 + 16))(v9, a1, v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v35;
  v18 = v36;
  *(v16 + 16) = v35;
  *(v16 + 24) = v18;
  (*(v7 + 32))(v16 + v15, v9, v14);
  v38 = v17;
  v39 = v18;
  v40 = a1;
  v19 = v29;
  sub_1E68B2C20();
  v20 = v49;
  LOBYTE(v7) = v48;
  LOBYTE(v15) = v47;
  v21 = *(v10 + 16);
  v22 = v34;
  v23 = v37;
  v21(v34, v19, v37);
  *a4 = 0;
  *(a4 + 8) = v20;
  *(a4 + 16) = v33;
  *(a4 + 24) = v7;
  *(a4 + 32) = v32;
  *(a4 + 40) = v15;
  v24 = v30;
  *(a4 + 48) = v31;
  *(a4 + 56) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0984A0);
  v21((a4 + *(v25 + 48)), v22, v23);
  v26 = *(v10 + 8);
  v26(v19, v23);
  return (v26)(v22, v23);
}

uint64_t sub_1E67E9B64(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for DescriptionView() + 72);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_1E677A174(v2);

  return sub_1E67E4FC8();
}

uint64_t sub_1E67E9BF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E68B25F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DescriptionView();

  sub_1E68B2580();
  sub_1E68B2590();

  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
  sub_1E68B2610();

  (*(v3 + 8))(v5, v2);
  v6 = sub_1E68B26B0();
  v8 = v7;
  LOBYTE(v5) = v9;

  v18[2] = sub_1E68B2B30();
  v10 = sub_1E68B2660();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1E673F0D4(v6, v8, v5 & 1);

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v14 & 1;
  *(a1 + 24) = v16;
  return result;
}

double sub_1E67E9E00@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E68B2140();
  v19 = 0;
  sub_1E67E9F94(&v12);
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v20 = v12;
  v21 = v13;
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v26[5] = v17;
  v26[0] = v12;
  v26[1] = v13;
  sub_1E67612FC(&v20, &v11, &qword_1ED098488);
  sub_1E6744A10(v26, &qword_1ED098488);
  *&v18[39] = v22;
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[7] = v20;
  *&v18[23] = v21;
  v3 = v19;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098490) + 36);
  v5 = *MEMORY[0x1E6981DC0];
  v6 = sub_1E68B2EB0();
  (*(*(v6 - 8) + 104))(a1 + v4, v5, v6);
  v7 = *&v18[32];
  *(a1 + 65) = *&v18[48];
  v8 = *&v18[80];
  *(a1 + 81) = *&v18[64];
  *(a1 + 97) = v8;
  result = *v18;
  v10 = *&v18[16];
  *(a1 + 17) = *v18;
  *(a1 + 33) = v10;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 112) = *&v18[95];
  *(a1 + 49) = v7;
  return result;
}

uint64_t sub_1E67E9F94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E68B1E00();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  type metadata accessor for DescriptionView();
  sub_1E677A48C(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E697E7D8], v2);
  v9 = sub_1E68B1DF0();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0981F8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E68B77B0;
  if (v9)
  {
    v12 = [objc_opt_self() systemBackgroundColor];
    *(v11 + 32) = sub_1E68B2B70();
    v13 = sub_1E68B2B20();
  }

  else
  {
    *(v11 + 32) = sub_1E68B2B20();
    v14 = [objc_opt_self() systemBackgroundColor];
    v13 = sub_1E68B2B70();
  }

  *(v11 + 40) = v13;
  MEMORY[0x1E69515E0](v11);
  sub_1E68B2F60();
  sub_1E68B2F70();
  sub_1E68B1D90();
  sub_1E68B2E80();
  sub_1E68B1C50();
  v15 = [objc_opt_self() systemBackgroundColor];
  v16 = sub_1E68B2B70();
  v17 = v30;
  v23[2] = v29;
  v23[3] = v30;
  v18 = v31;
  v23[4] = v31;
  v19 = v32;
  v24 = v32;
  v20 = v27;
  v21 = v28;
  v23[0] = v27;
  v23[1] = v28;
  *(a1 + 32) = v29;
  *(a1 + 48) = v17;
  *(a1 + 64) = v18;
  *a1 = v20;
  *(a1 + 16) = v21;
  *(a1 + 80) = v19;
  *(a1 + 88) = v16;
  sub_1E67612FC(v23, v25, &qword_1ED098498);
  v25[2] = v29;
  v25[3] = v30;
  v25[4] = v31;
  v26 = v32;
  v25[0] = v27;
  v25[1] = v28;
  return sub_1E6744A10(v25, &qword_1ED098498);
}

unint64_t sub_1E67EA304()
{
  result = qword_1ED098410;
  if (!qword_1ED098410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098410);
  }

  return result;
}

unint64_t sub_1E67EA358()
{
  result = qword_1ED098448;
  if (!qword_1ED098448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098428);
    sub_1E673F530(&qword_1ED098450, &qword_1ED098458);
    sub_1E673F530(&qword_1ED098460, &qword_1ED098468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED098448);
  }

  return result;
}

void sub_1E67EA48C()
{
  sub_1E67EABE8(319, &qword_1EE2EA470, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E67EAB84(319, &qword_1EE2EA888, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1E67EAB84(319, &qword_1EE2EA548, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1E67EABE8(319, &qword_1EE2EA558, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            sub_1E673ED88();
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

uint64_t sub_1E67EA638(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1E68B1E00() - 8);
  v7 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + 8;
  v16 = v11 + 16;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v17 = ((*(v8 + 64) + ((v16 + ((((((((((((((v15 + ((v13 + 16) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v12 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    return v12 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v17);
    if (v22)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v26 = (((((((v15 + ((a1 + v14 + 9) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v28 = *(v8 + 48);

    return v28((v16 + ((((((v26 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v11);
  }

  else
  {
    v27 = *(v26 + 24);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }
}

void sub_1E67EA8B8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1E68B1E00() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v9 + 8;
  v17 = ((*(v10 + 64) + ((v13 + 16 + ((((((((((((((v16 + (((v12 & 0xF8) + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v20 = 0;
    v21 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v13 + 16 + ((((((((((((((v16 + (((v12 & 0xF8) + 16) & ~v15)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v24 = ((((((((v16 + ((a1 + v15 + 9) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v25 = *(v10 + 56);

        v25((v13 + 16 + ((((((v24 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v13, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        v24[2] = 0;
        v24[3] = 0;
        *v24 = a2 & 0x7FFFFFFF;
        v24[1] = 0;
      }

      else
      {
        v24[3] = (a2 - 1);
      }

      return;
    }
  }

  if (v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v17)
  {
    v23 = ~v14 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_1E67EAB84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E67EABE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E67EAC5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for DescriptionView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1E67E757C(v6, v3, v4, a1);
}

uint64_t sub_1E67EAD98()
{
  v1 = *(type metadata accessor for DescriptionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E67E9B64(v2);
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for DescriptionView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  v4 = v2[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E68B1E00();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1E673F0D4(*(v3 + v2[13]), *(v3 + v2[13] + 8), *(v3 + v2[13] + 16));

  (*(*(v1 - 8) + 8))(v3 + v2[17], v1);

  return swift_deallocObject();
}

uint64_t sub_1E67EB0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, uint64_t, __n128), void (*a19)(char *, void, uint64_t), uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void (*a29)(void, void), uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v520 = a2;
  v521 = a8;
  v515 = a7;
  v516 = a6;
  v517 = a5;
  v518 = a4;
  v519 = a3;
  v551 = a1;
  v548 = a9;
  v565 = a41;
  v578 = a40;
  v566 = a39;
  v580 = a38;
  v571 = a37;
  v586 = a36;
  v579 = a35;
  v570 = a34;
  v576 = a32;
  v585 = a31;
  v577 = a30;
  v590 = a29;
  v587 = a28;
  v588 = a27;
  v589 = a26;
  v581 = a25;
  v538 = a20;
  v537 = a19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v575 = swift_getAssociatedTypeWitness();
  v583 = swift_getAssociatedTypeWitness();
  v582 = swift_getAssociatedTypeWitness();
  v574 = swift_getAssociatedTypeWitness();
  v41 = swift_getAssociatedTypeWitness();
  v564 = a24;
  v42 = swift_getAssociatedTypeWitness();
  v591 = swift_getAssociatedTypeWitness();
  v563 = a33;
  v43 = swift_getAssociatedTypeWitness();
  v554 = v41;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v573 = v42;
  v557 = swift_getAssociatedConformanceWitness();
  v572 = v43;
  v567 = swift_getAssociatedConformanceWitness();
  *&v675 = AssociatedTypeWitness;
  *(&v675 + 1) = a29;
  v44 = v575;
  *&v676 = v575;
  *(&v676 + 1) = a26;
  v677 = a27;
  v678 = a28;
  v679 = v583;
  v680 = a30;
  v681 = a31;
  v682 = v582;
  v683 = v574;
  v684 = v41;
  v685 = a32;
  v686 = v42;
  v687 = a25;
  v688 = v591;
  v689 = v43;
  v690 = a38;
  v691 = a35;
  v692 = a36;
  v693 = a37;
  v694 = a39;
  v695 = a40;
  v45 = AssociatedConformanceWitness;
  v696 = AssociatedConformanceWitness;
  v697 = a41;
  v698 = v557;
  v699 = a34;
  v700 = v567;
  v46 = type metadata accessor for OrthogonalView();
  v508 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v487 = &v470 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v493 = &v470 - v49;
  *&v675 = AssociatedTypeWitness;
  *(&v675 + 1) = v590;
  *&v676 = v44;
  *(&v676 + 1) = v589;
  v677 = v588;
  v678 = v587;
  v679 = v583;
  v680 = v577;
  v681 = a31;
  v682 = v582;
  v683 = v574;
  v684 = v554;
  v685 = v576;
  v686 = v573;
  v687 = v581;
  v688 = v591;
  v689 = v572;
  v690 = a38;
  v691 = a35;
  v692 = v586;
  v693 = a37;
  v50 = v566;
  v694 = v566;
  v695 = a40;
  v696 = v45;
  v51 = v565;
  v697 = v565;
  v52 = v557;
  v698 = v557;
  v699 = a34;
  v53 = v567;
  v700 = v567;
  v54 = type metadata accessor for ListView();
  v560 = v46;
  v569 = sub_1E68B2220();
  v499 = *(v569 - 8);
  MEMORY[0x1EEE9AC00](v569);
  v498 = &v470 - v55;
  v561 = v54;
  v507 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v486 = &v470 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v492 = &v470 - v59;
  *&v675 = AssociatedTypeWitness;
  *(&v675 + 1) = v590;
  *&v676 = v575;
  *(&v676 + 1) = v589;
  v677 = v588;
  v678 = v587;
  v679 = v583;
  v680 = v577;
  v681 = v585;
  v682 = v582;
  v683 = v574;
  v60 = v554;
  v684 = v554;
  v685 = v576;
  v686 = v573;
  v61 = v581;
  v687 = v581;
  v688 = v591;
  v62 = v572;
  v689 = v572;
  v690 = v580;
  v691 = v579;
  v692 = v586;
  v693 = v571;
  v694 = v50;
  v63 = v578;
  v695 = v578;
  v64 = AssociatedConformanceWitness;
  v696 = AssociatedConformanceWitness;
  v697 = v51;
  v698 = v52;
  v699 = v570;
  v700 = v53;
  v568 = type metadata accessor for VerticalGridView();
  v480 = *(v568 - 8);
  MEMORY[0x1EEE9AC00](v568);
  v479 = &v470 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v478 = &v470 - v67;
  v505 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v535 = &v470 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v53;
  v71 = AssociatedTypeWitness;
  v72 = swift_getAssociatedConformanceWitness();
  *&v675 = v71;
  *(&v675 + 1) = v60;
  *&v676 = v72;
  *(&v676 + 1) = v64;
  type metadata accessor for CanvasSectionHeader();
  v73 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v73 - 8);
  v534 = &v470 - v74;
  *&v675 = v71;
  *(&v675 + 1) = v590;
  *&v676 = v575;
  *(&v676 + 1) = v589;
  v677 = v588;
  v678 = v587;
  v679 = v583;
  v680 = v577;
  v681 = v585;
  v682 = v582;
  v683 = v574;
  v684 = v60;
  v685 = v576;
  v686 = v573;
  v687 = v61;
  v688 = v591;
  v689 = v62;
  v690 = v580;
  v691 = v579;
  v692 = v586;
  v75 = v571;
  v693 = v571;
  v694 = v566;
  v695 = v63;
  v696 = v64;
  v697 = v565;
  v76 = v557;
  v698 = v557;
  v77 = v570;
  v699 = v570;
  v700 = v70;
  v78 = type metadata accessor for HorizontalGridView();
  v477 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v476 = &v470 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v475 = &v470 - v81;
  v82 = swift_getAssociatedTypeWitness();
  v83 = swift_getAssociatedConformanceWitness();
  v84 = type metadata accessor for CanvasHorizontalGridLayout();
  v482 = *(v84 - 8);
  v483 = v84;
  MEMORY[0x1EEE9AC00](v84);
  v481 = &v470 - v85;
  v562 = v78;
  v86 = sub_1E68B2220();
  v488 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v495 = &v470 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v490 = &v470 - v89;
  v90 = type metadata accessor for CanvasGridAxis();
  v500 = *(v90 - 8);
  v501 = v90;
  MEMORY[0x1EEE9AC00](v90);
  v489 = &v470 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v494 = &v470 - v93;
  *&v675 = AssociatedTypeWitness;
  *(&v675 + 1) = v590;
  *&v676 = v575;
  *(&v676 + 1) = v589;
  v677 = v588;
  v678 = v587;
  v679 = v583;
  v94 = v585;
  v680 = v585;
  v681 = v582;
  v682 = v574;
  v683 = v82;
  v684 = v573;
  v95 = v581;
  v685 = v581;
  v686 = v591;
  v687 = v572;
  v688 = v580;
  v689 = v579;
  v690 = v586;
  v691 = v75;
  v692 = v578;
  v693 = v83;
  v694 = v76;
  v695 = v77;
  v696 = v567;
  v96 = type metadata accessor for CarouselView();
  v556 = v86;
  v97 = sub_1E68B2220();
  v497 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v496 = &v470 - v98;
  v559 = v99;
  v100 = sub_1E68B2220();
  v523 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v522 = &v470 - v101;
  v102 = sub_1E68B1950();
  v513 = *(v102 - 8);
  v514 = v102;
  MEMORY[0x1EEE9AC00](v102);
  v536 = &v470 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v675 = v82;
  *(&v675 + 1) = v95;
  *&v676 = v83;
  *(&v676 + 1) = v77;
  v549 = type metadata accessor for CanvasLayout();
  v512 = *(v549 - 8);
  v504 = *(v512 + 64);
  MEMORY[0x1EEE9AC00](v549);
  v533 = &v470 - v104;
  v105 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v105 - 8);
  v539 = &v470 - v106;
  v555 = v96;
  v506 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v484 = &v470 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v109);
  v491 = &v470 - v110;
  v550 = v100;
  v111 = sub_1E68B2220();
  v532 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v531 = &v470 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v113);
  v543 = &v470 - v114;
  v511 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v510 = &v470 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v117);
  v525 = &v470 - v118;
  v119 = v591;
  v526 = *(v591 - 1);
  MEMORY[0x1EEE9AC00](v120);
  v524 = &v470 - v121;
  v122 = sub_1E68B2220();
  v530 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v529 = &v470 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v124);
  v528 = &v470 - v125;
  v558 = v126;
  v547 = v111;
  v546 = sub_1E68B2220();
  v545 = *(v546 - 8);
  MEMORY[0x1EEE9AC00](v546);
  v544 = &v470 - v127;
  v128 = swift_getAssociatedConformanceWitness();
  v509 = v82;
  *&v675 = v82;
  *(&v675 + 1) = v119;
  v485 = v83;
  *&v676 = v83;
  *(&v676 + 1) = v128;
  v129 = type metadata accessor for CanvasSectionLayout();
  v130 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v540 = (&v470 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v132);
  v527 = &v470 - v133;
  v135 = MEMORY[0x1EEE9AC00](v134);
  v137 = &v470 - v136;
  v138 = v563;
  v139 = v564;
  v541 = *(v563 + 160);
  v541(v564, v563, v135);
  CanvasLayout.densityFactor<A>(for:)(v137, v549, *&v591, v128, &v675);
  v140 = *(v130 + 8);
  v542 = v129;
  v140(v137, v129);
  v141 = *(&v675 + 1);
  v502 = v675;
  v503 = v676;
  v142 = (*(v138 + 200))(v139, v138);
  LOBYTE(v137) = sub_1E6761118(v142);

  if ((v137 & 1) == 0)
  {
    v470 = a22;
    v471 = a17;
    v530 = a16;
    v473 = a15;
    v529 = a14;
    v472 = a13;
    v527 = a12;
    v474 = a11;
    v528 = a10;
    v154 = v540;
    v155 = v564;
    v156 = v563;
    (v541)(v564, v563);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      v542 = a23;
      if (EnumCaseMultiPayload)
      {
        (*(v156 + 168))(v155, v156);
        v525 = (*(v156 + 184))(v155, v156);
        (*(v156 + 176))(&v640, v155, v156);
        v639 = v640;
        (*(v156 + 192))(v155, v156);
        v299 = v551;
        v300 = *(v551 + 56);
        v675 = *(v551 + 40);
        v676 = v300;
        v636 = v502;
        v637 = v141;
        v638 = v503;
        v301 = v549;
        v302 = *(v549 + 72);
        v303 = *(v505 + 16);
        LODWORD(v552) = *(v551 + 72);
        v304 = v581;
        v303(v535, v551 + v302);
        v305 = v512;
        v306 = *(v512 + 16);
        v526 = a21;
        v306(v533, v299, v301);
        v307 = (*(v305 + 80) + 176) & ~*(v305 + 80);
        v308 = swift_allocObject();
        *(v308 + 2) = v155;
        *(v308 + 3) = v304;
        v309 = v588;
        *(v308 + 4) = v589;
        *(v308 + 5) = v309;
        v310 = v590;
        *(v308 + 6) = v587;
        *(v308 + 7) = v310;
        v311 = v585;
        *(v308 + 8) = v577;
        *(v308 + 9) = v311;
        *(v308 + 10) = v576;
        *(v308 + 11) = v156;
        v312 = v570;
        v313 = v579;
        *(v308 + 12) = v570;
        *(v308 + 13) = v313;
        v314 = v571;
        *(v308 + 14) = v586;
        *(v308 + 15) = v314;
        v315 = v566;
        *(v308 + 16) = v580;
        *(v308 + 17) = v315;
        v316 = v578;
        v541 = a18;
        v317 = v565;
        *(v308 + 18) = v578;
        *(v308 + 19) = v317;
        v318 = v538;
        *(v308 + 20) = v537;
        *(v308 + 21) = v318;
        (*(v305 + 32))(&v308[v307], v533, v301);
        (*(v513 + 16))(v536, v542, v514);

        v319 = v515;

        v320 = v517;

        v321 = v519;

        v322 = v541;

        *&v466 = v317;
        *(&v466 + 1) = v557;
        *(&v461 + 1) = AssociatedConformanceWitness;
        *(&v456 + 1) = v315;
        *&v456 = v571;
        *(&v451 + 1) = v586;
        *&v451 = v579;
        *(&v446 + 1) = v580;
        *&v446 = v572;
        *(&v441 + 1) = v591;
        *&v441 = v581;
        *(&v436 + 1) = v576;
        *&v436 = v554;
        *(&v431 + 1) = v574;
        *&v431 = v582;
        *(&v427 + 1) = v577;
        *&v427 = v583;
        *&v461 = v316;
        *(&v422 + 1) = v590;
        *&v422 = AssociatedTypeWitness;
        v324 = v487;
        OrthogonalView.init(header:items:footer:metrics:contentMargins:densityFactor:dynamicTypeSize:sizeClass:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:actionButtonViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)(v534, v525, &v639, v539, &v675, &v636, v552, v535, v487, v521, v528, v474, v527, v472, v529, v473, v530, v471, v322, sub_1E67EEF2C, v308, v526, v323, v520, v321, v518, v320, v516, v319, v536, v422, v575, v589, v588, v587, v427, v585, v431, v436, v573, v441, v446, v451, v456, v461, v466, v312, v567);
        v325 = v560;
        WitnessTable = swift_getWitnessTable();
        v327 = v493;
        j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v324, v325, WitnessTable);
        v328 = *(v508 + 8);
        v508 += 8;
        v591 = v328;
        (v328)(v324, v325);
        j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v327, v325, WitnessTable);
        v329 = v561;
        v330 = swift_getWitnessTable();
        v331 = v498;
        sub_1E6744DB8(v324, v329, v325);
        v332 = swift_getWitnessTable();
        v333 = swift_getWitnessTable();
        v334 = swift_getWitnessTable();
        v634 = v333;
        v635 = v334;
        v335 = swift_getWitnessTable();
        v632 = v332;
        v633 = v335;
        v336 = v559;
        v337 = swift_getWitnessTable();
        v630 = v330;
        v631 = WitnessTable;
        v338 = v569;
        v339 = swift_getWitnessTable();
        v340 = v522;
        sub_1E6744DB8(v331, v336, v338);
        (*(v499 + 8))(v331, v338);
        v628 = v337;
        v629 = v339;
        v341 = v550;
        swift_getWitnessTable();
        v342 = v578;
        sub_1E6744CC0(v340, v341);
        (*(v523 + 8))(v340, v341);
        v343 = v591;
        (v591)(v324, v325);
        v343(v493, v325);
        (*(*(v509 - 8) + 8))(v540);
LABEL_19:
        v158 = v342;
        goto LABEL_20;
      }

      v211 = *v154;
      v212 = v154[1];
      v577 = (*(v156 + 184))(v155, v156);
      (*(v156 + 192))(v155, v156);
      v213 = v533;
      v214 = v551;
      (*(v512 + 16))(v533, v551, v549);
      v215 = *(v214 + 32);
      v216 = v536;
      (*(v513 + 16))(v536, v542, v514);

      v217 = v528;

      v218 = v527;

      v219 = v529;

      v220 = v538;

      v221 = v515;

      v222 = v517;

      *(&v469 + 1) = v557;
      *&v469 = v485;
      *(&v459 + 1) = v586;
      *&v459 = v579;
      *(&v454 + 1) = v580;
      *&v454 = v572;
      *(&v449 + 1) = v591;
      *&v449 = v581;
      *(&v444 + 1) = v573;
      *&v444 = v509;
      *(&v464 + 1) = v578;
      *&v464 = v571;
      *(&v439 + 1) = v574;
      *&v439 = v582;
      *(&v434 + 1) = v585;
      *&v434 = v583;
      *(&v425 + 1) = v590;
      *&v425 = AssociatedTypeWitness;
      v224 = v484;
      CarouselView.init(items:metrics:layout:aspectRatio:pageControlSpacing:actionButtonViewBuilder:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:viewDescriptorBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)(v577, v539, v213, v473, v530, v521, v217, v474, v484, v211, v212, v215, v218, v472, v219, v537, v220, v520, v223, v518, v222, v516, v221, v216, v425, v575, v589, v588, v587, v434, v439, v444, v449, v454, v459, v464, v469, v570, v567);
      v225 = v555;
      v226 = swift_getWitnessTable();
      v227 = v491;
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v224, v225, v226);
      v228 = *(v506 + 8);
      v506 += 8;
      v591 = v228;
      (v228)(v224, v225);
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v227, v225, v226);
      v229 = swift_getWitnessTable();
      v230 = swift_getWitnessTable();
      v610 = v229;
      v611 = v230;
      v231 = swift_getWitnessTable();
      v232 = v496;
      sub_1E6744CC0(v224, v225);
      v608 = v226;
      v609 = v231;
      v233 = v559;
      v234 = swift_getWitnessTable();
      v235 = swift_getWitnessTable();
      v236 = swift_getWitnessTable();
      v606 = v235;
      v607 = v236;
      v237 = swift_getWitnessTable();
      v238 = v522;
      sub_1E6744CC0(v232, v233);
      (*(v497 + 8))(v232, v233);
      v604 = v234;
      v605 = v237;
      v239 = v550;
      swift_getWitnessTable();
      v158 = v578;
      sub_1E6744CC0(v238, v239);
      (*(v523 + 8))(v238, v239);
      v240 = v591;
      (v591)(v224, v225);
      v240(v491, v225);
    }

    else
    {
      v541 = a18;
      v158 = v578;
      v159 = v585;
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          v285 = v524;
          (*(v526 + 32))(v524, v540, v591);
          v286 = v510;
          v537(v285, 0, v551);
          v287 = v525;
          j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v286, v159, v158);
          v590 = *(v511 + 8);
          v590(v286, v159);
          j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v287, v159, v158);
          v288 = v159;
          v289 = swift_getWitnessTable();
          v290 = swift_getWitnessTable();
          v291 = swift_getWitnessTable();
          v673 = v290;
          v674 = v291;
          v292 = swift_getWitnessTable();
          v671 = v289;
          v672 = v292;
          v293 = swift_getWitnessTable();
          v294 = swift_getWitnessTable();
          v295 = swift_getWitnessTable();
          v669 = v294;
          v670 = v295;
          v296 = swift_getWitnessTable();
          v667 = v293;
          v668 = v296;
          v297 = v550;
          swift_getWitnessTable();
          sub_1E6744DB8(v286, v297, v288);
          v298 = v590;
          v590(v286, v288);
          v298(v525, v288);
          (*(v526 + 8))(v524);
          goto LABEL_20;
        }

        v542 = a23;
        v526 = a21;
        v160 = v500;
        v161 = v501;
        v162 = v494;
        (*(v500 + 32))(v494, v540, v501);
        v163 = *(v160 + 16);
        v164 = v489;
        v163(v489, v162, v161);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v165 = v164;
          v166 = v483;
          (*(v482 + 32))(v481, v165, v483);
          (*(v156 + 168))(v155, v156);
          v540 = (*(v156 + 184))(v155, v156);
          (*(v156 + 176))(&v640, v155, v156);
          v639 = v640;
          (*(v156 + 192))(v155, v156);
          v552 = CanvasHorizontalGridLayout.rowCount.getter(v166);
          v167 = v551;
          v168 = *(v551 + 56);
          v675 = *(v551 + 40);
          v676 = v168;
          v636 = v502;
          v637 = v141;
          v638 = v503;
          v169 = v549;
          v170 = *(v549 + 72);
          v171 = *(v505 + 16);
          LODWORD(v525) = *(v551 + 72);
          v172 = v581;
          v171(v535, v551 + v170, v581);
          v173 = v512;
          (*(v512 + 16))(v533, v167, v169);
          v174 = (*(v173 + 80) + 176) & ~*(v173 + 80);
          v175 = swift_allocObject();
          *(v175 + 2) = v155;
          *(v175 + 3) = v172;
          v176 = v588;
          *(v175 + 4) = v589;
          *(v175 + 5) = v176;
          v177 = v590;
          *(v175 + 6) = v587;
          *(v175 + 7) = v177;
          *(v175 + 8) = v577;
          *(v175 + 9) = v159;
          *(v175 + 10) = v576;
          *(v175 + 11) = v156;
          v178 = v579;
          *(v175 + 12) = v570;
          *(v175 + 13) = v178;
          v179 = v571;
          *(v175 + 14) = v586;
          *(v175 + 15) = v179;
          v180 = v566;
          *(v175 + 16) = v580;
          *(v175 + 17) = v180;
          v181 = v578;
          v182 = v565;
          *(v175 + 18) = v578;
          *(v175 + 19) = v182;
          v183 = v538;
          *(v175 + 20) = v537;
          *(v175 + 21) = v183;
          (*(v173 + 32))(&v175[v174], v533, v169);
          (*(v513 + 16))(v536, v542, v514);

          v184 = v528;

          v185 = v515;

          v186 = v517;

          v187 = v519;

          v188 = v541;

          *&v468 = v182;
          *(&v468 + 1) = v557;
          *(&v463 + 1) = AssociatedConformanceWitness;
          *(&v458 + 1) = v180;
          *&v458 = v571;
          *(&v453 + 1) = v586;
          *&v453 = v579;
          *(&v448 + 1) = v580;
          *&v448 = v572;
          *(&v443 + 1) = v591;
          *&v443 = v581;
          *(&v438 + 1) = v576;
          *&v438 = v554;
          *(&v433 + 1) = v574;
          *&v433 = v582;
          *(&v429 + 1) = v577;
          *&v429 = v583;
          *&v463 = v181;
          *(&v424 + 1) = v590;
          *&v424 = AssociatedTypeWitness;
          v420 = v175;
          v190 = v476;
          HorizontalGridView.init(header:items:footer:metrics:rowCount:contentMargins:densityFactor:dynamicTypeSize:sizeClass:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:actionButtonViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)(v534, v540, &v639, v539, v552, &v675, &v636, v525, v476, v535, v521, v184, v474, v527, v472, v529, v473, v530, v471, v188, sub_1E67EEF2C, v420, v526, v189, v520, v187, v518, v186, v516, v185, v536, v424, v575, v589, v588, v587, v429, v585, v433, v438, v573, v443, v448, v453, v458, v463, v468, v570, v567);
          v191 = v562;
          v192 = swift_getWitnessTable();
          v193 = v475;
          j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v190, v191, v192);
          v194 = *(v477 + 8);
          v194(v190, v191);
          j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v193, v191, v192);
          swift_getWitnessTable();
          v195 = v490;
          sub_1E6744CC0(v190, v191);
          v194(v190, v191);
          v194(v193, v191);
          (*(v482 + 8))(v481, v483);
        }

        else
        {
          (*(v156 + 168))(v155, v156);
          v540 = (*(v156 + 184))(v155, v156);
          (*(v156 + 176))(&v640, v155, v156);
          v639 = v640;
          (*(v156 + 192))(v155, v156);
          v344 = v551;
          v345 = *(v551 + 56);
          v675 = *(v551 + 40);
          v676 = v345;
          v636 = v502;
          v637 = v141;
          v638 = v503;
          v346 = v549;
          v347 = *(v549 + 72);
          v348 = *(v505 + 16);
          LODWORD(v552) = *(v551 + 72);
          v349 = v581;
          v348(v535, v551 + v347, v581);
          v350 = v512;
          (*(v512 + 16))(v533, v344, v346);
          v351 = (*(v350 + 80) + 176) & ~*(v350 + 80);
          v352 = swift_allocObject();
          *(v352 + 2) = v155;
          *(v352 + 3) = v349;
          v353 = v588;
          *(v352 + 4) = v589;
          *(v352 + 5) = v353;
          v354 = v590;
          *(v352 + 6) = v587;
          *(v352 + 7) = v354;
          *(v352 + 8) = v577;
          *(v352 + 9) = v159;
          *(v352 + 10) = v576;
          *(v352 + 11) = v156;
          v355 = v579;
          *(v352 + 12) = v570;
          *(v352 + 13) = v355;
          v356 = v571;
          *(v352 + 14) = v586;
          *(v352 + 15) = v356;
          v357 = v566;
          *(v352 + 16) = v580;
          *(v352 + 17) = v357;
          v358 = v578;
          v359 = v565;
          *(v352 + 18) = v578;
          *(v352 + 19) = v359;
          v360 = v538;
          *(v352 + 20) = v537;
          *(v352 + 21) = v360;
          (*(v350 + 32))(&v352[v351], v533, v346);
          (*(v513 + 16))(v536, v542, v514);

          v361 = v528;

          v362 = v527;

          v363 = v515;

          v364 = v517;

          v365 = v519;

          v366 = v541;

          *&v467 = v359;
          *(&v467 + 1) = v557;
          *(&v462 + 1) = AssociatedConformanceWitness;
          *(&v457 + 1) = v566;
          *&v457 = v571;
          *(&v452 + 1) = v586;
          *&v452 = v579;
          *(&v447 + 1) = v580;
          *&v447 = v572;
          *(&v442 + 1) = v591;
          *&v442 = v581;
          *(&v437 + 1) = v576;
          *&v437 = v554;
          *(&v432 + 1) = v574;
          *&v432 = v582;
          *(&v428 + 1) = v577;
          *&v428 = v583;
          *&v462 = v358;
          *(&v423 + 1) = v590;
          *&v423 = AssociatedTypeWitness;
          v418 = v361;
          v368 = v479;
          VerticalGridView.init(header:items:footer:metrics:contentMargins:densityFactor:dynamicTypeSize:sizeClass:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:actionButtonViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)(v534, v540, &v639, v539, &v675, &v636, v552, v535, v479, v521, v418, v474, v362, v472, v529, v473, v530, v471, v366, sub_1E67EEDE4, v352, v526, v367, v520, v365, v518, v364, v516, v363, v536, v423, v575, v589, v588, v587, v428, v585, v432, v437, v573, v442, v447, v452, v457, v462, v467, v570, v567);
          v369 = v568;
          v370 = swift_getWitnessTable();
          v371 = v478;
          j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v368, v369, v370);
          v372 = *(v480 + 8);
          v372(v368, v369);
          j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v371, v369, v370);
          v373 = v562;
          swift_getWitnessTable();
          v195 = v490;
          sub_1E6744DB8(v368, v373, v369);
          v372(v368, v369);
          v372(v371, v369);
          (*(v500 + 8))(v489, v501);
        }

        v374 = swift_getWitnessTable();
        v375 = swift_getWitnessTable();
        v618 = v374;
        v619 = v375;
        v376 = v556;
        v377 = swift_getWitnessTable();
        v378 = v495;
        j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v195, v376, v377);
        v379 = v555;
        v380 = swift_getWitnessTable();
        v381 = v496;
        sub_1E6744DB8(v378, v379, v376);
        v616 = v380;
        v617 = v377;
        v382 = v559;
        v383 = swift_getWitnessTable();
        v384 = swift_getWitnessTable();
        v385 = swift_getWitnessTable();
        v614 = v384;
        v615 = v385;
        v386 = swift_getWitnessTable();
        v387 = v522;
        sub_1E6744CC0(v381, v382);
        (*(v497 + 8))(v381, v382);
        v612 = v383;
        v613 = v386;
        v388 = v550;
        swift_getWitnessTable();
        v342 = v578;
        sub_1E6744CC0(v387, v388);
        (*(v523 + 8))(v387, v388);
        v389 = *(v488 + 8);
        v389(v495, v376);
        v389(v490, v376);
        (*(v500 + 8))(v494);
        goto LABEL_19;
      }

      (*(v156 + 168))(v155, v156);
      v525 = (*(v156 + 184))(v155, v156);
      (*(v156 + 176))(&v640, v155, v156);
      v639 = v640;
      (*(v156 + 192))(v155, v156);
      v241 = v551;
      v242 = *(v551 + 56);
      v675 = *(v551 + 40);
      v676 = v242;
      v636 = v502;
      v637 = v141;
      v638 = v503;
      v243 = *(v549 + 72);
      v244 = v549;
      v245 = *(v505 + 16);
      LODWORD(v552) = *(v551 + 72);
      v246 = v581;
      v245(v535, v551 + v243, v581);
      v247 = v512;
      v248 = *(v512 + 16);
      v526 = a21;
      v542 = a23;
      v249 = v533;
      v248(v533, v241, v244);
      v250 = (*(v247 + 80) + 176) & ~*(v247 + 80);
      v251 = swift_allocObject();
      *(v251 + 2) = v155;
      *(v251 + 3) = v246;
      v252 = v588;
      *(v251 + 4) = v589;
      *(v251 + 5) = v252;
      v253 = v590;
      *(v251 + 6) = v587;
      *(v251 + 7) = v253;
      *(v251 + 8) = v577;
      *(v251 + 9) = v159;
      *(v251 + 10) = v576;
      *(v251 + 11) = v156;
      v254 = v570;
      v255 = v579;
      *(v251 + 12) = v570;
      *(v251 + 13) = v255;
      v256 = v571;
      *(v251 + 14) = v586;
      *(v251 + 15) = v256;
      v257 = v566;
      *(v251 + 16) = v580;
      *(v251 + 17) = v257;
      v258 = v565;
      *(v251 + 18) = v578;
      *(v251 + 19) = v258;
      v259 = v538;
      *(v251 + 20) = v537;
      *(v251 + 21) = v259;
      (*(v247 + 32))(&v251[v250], v249, v549);
      (*(v513 + 16))(v536, v542, v514);

      v260 = v527;

      v261 = v515;

      v262 = v517;

      v263 = v519;

      v264 = v541;

      *&v465 = v258;
      *(&v465 + 1) = v557;
      *(&v460 + 1) = AssociatedConformanceWitness;
      *(&v455 + 1) = v257;
      *&v455 = v571;
      *(&v450 + 1) = v586;
      *&v450 = v579;
      *(&v445 + 1) = v580;
      *&v445 = v572;
      *(&v440 + 1) = v591;
      *&v440 = v581;
      *(&v435 + 1) = v576;
      *&v435 = v554;
      *(&v430 + 1) = v574;
      *&v430 = v582;
      *(&v426 + 1) = v577;
      *&v426 = v583;
      *&v460 = v578;
      *(&v421 + 1) = v590;
      *&v421 = AssociatedTypeWitness;
      v419 = v260;
      v266 = v486;
      v158 = v578;
      ListView.init(header:items:footer:metrics:contentMargins:densityFactor:dynamicTypeSize:sizeClass:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:actionButtonViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)(v534, v525, &v639, v539, &v675, &v636, v552, v535, v486, v521, v528, v474, v419, v472, v529, v473, v530, v471, v264, sub_1E67EEF2C, v251, v526, v265, v520, v263, v518, v262, v516, v261, v536, v421, v575, v589, v588, v587, v426, v585, v430, v435, v573, v440, v445, v450, v455, v460, v465, v254, v567);
      v267 = v561;
      v268 = swift_getWitnessTable();
      v269 = v492;
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v266, v267, v268);
      v270 = *(v507 + 8);
      v507 += 8;
      v591 = v270;
      (v270)(v266, v267);
      j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v269, v267, v268);
      v271 = swift_getWitnessTable();
      v272 = v498;
      sub_1E6744CC0(v266, v267);
      v273 = swift_getWitnessTable();
      v274 = swift_getWitnessTable();
      v275 = swift_getWitnessTable();
      v626 = v274;
      v627 = v275;
      v276 = swift_getWitnessTable();
      v624 = v273;
      v625 = v276;
      v277 = v559;
      v278 = swift_getWitnessTable();
      v622 = v268;
      v623 = v271;
      v279 = v569;
      v280 = swift_getWitnessTable();
      v281 = v522;
      sub_1E6744DB8(v272, v277, v279);
      (*(v499 + 8))(v272, v279);
      v620 = v278;
      v621 = v280;
      v282 = v550;
      swift_getWitnessTable();
      sub_1E6744CC0(v281, v282);
      (*(v523 + 8))(v281, v282);
      v283 = v561;
      v284 = v591;
      (v591)(v266, v561);
      v284(v492, v283);
      (*(*(v509 - 8) + 8))(v540);
    }

LABEL_20:
    v390 = swift_getWitnessTable();
    v391 = swift_getWitnessTable();
    v392 = swift_getWitnessTable();
    v665 = v391;
    v666 = v392;
    v393 = swift_getWitnessTable();
    v663 = v390;
    v664 = v393;
    v394 = swift_getWitnessTable();
    v395 = swift_getWitnessTable();
    v396 = swift_getWitnessTable();
    v661 = v395;
    v662 = v396;
    v397 = swift_getWitnessTable();
    v659 = v394;
    v660 = v397;
    v657 = swift_getWitnessTable();
    v658 = v158;
    v398 = v158;
    v399 = v547;
    v400 = swift_getWitnessTable();
    v401 = v531;
    v402 = v543;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v543, v399, v400);
    v207 = v398;
    v655 = v398;
    v656 = MEMORY[0x1E6981E60];
    v403 = v558;
    swift_getWitnessTable();
    v208 = v544;
    sub_1E6744DB8(v401, v403, v399);
    v404 = *(v532 + 8);
    v404(v401, v399);
    v404(v402, v399);
    goto LABEL_21;
  }

  v143 = v527;
  (v541)(v564, v563);
  v144 = v542;
  v145 = swift_getEnumCaseMultiPayload();
  if (v145 == 4)
  {
    v146 = v526;
    v147 = v524;
    (*(v526 + 32))(v524, v143, v591);
    v148 = v510;
    v537(v147, 0, v551);
    v149 = v525;
    v150 = v585;
    v151 = v578;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v148, v585, v578);
    v152 = *(v511 + 8);
    v152(v148, v150);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v149, v150, v151);
    v153 = v528;
    sub_1E6744CC0(v148, v150);
    v152(v148, v150);
    v152(v149, v150);
    (*(v146 + 8))(v147, v591);
  }

  else
  {
    v153 = v528;
    v151 = v578;
    sub_1E6744DB8(v145, v585, MEMORY[0x1E6981E70]);
    v140(v143, v144);
  }

  v602 = v151;
  v603 = MEMORY[0x1E6981E60];
  v196 = swift_getWitnessTable();
  v197 = v529;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v153, v558, v196);
  v198 = swift_getWitnessTable();
  v199 = v151;
  v200 = swift_getWitnessTable();
  v201 = swift_getWitnessTable();
  v600 = v200;
  v601 = v201;
  v202 = swift_getWitnessTable();
  v598 = v198;
  v599 = v202;
  v203 = swift_getWitnessTable();
  v204 = swift_getWitnessTable();
  v205 = swift_getWitnessTable();
  v596 = v204;
  v597 = v205;
  v206 = swift_getWitnessTable();
  v594 = v203;
  v595 = v206;
  v592 = swift_getWitnessTable();
  v207 = v199;
  v593 = v199;
  swift_getWitnessTable();
  v208 = v544;
  v209 = v558;
  sub_1E6744CC0(v197, v558);
  v210 = *(v530 + 8);
  v210(v197, v209);
  v210(v153, v209);
LABEL_21:
  v653 = v207;
  v654 = MEMORY[0x1E6981E60];
  v405 = swift_getWitnessTable();
  v406 = swift_getWitnessTable();
  v407 = swift_getWitnessTable();
  v408 = swift_getWitnessTable();
  v651 = v407;
  v652 = v408;
  v409 = swift_getWitnessTable();
  v649 = v406;
  v650 = v409;
  v410 = swift_getWitnessTable();
  v411 = swift_getWitnessTable();
  v412 = swift_getWitnessTable();
  v647 = v411;
  v648 = v412;
  v413 = swift_getWitnessTable();
  v645 = v410;
  v646 = v413;
  v643 = swift_getWitnessTable();
  v644 = v207;
  v414 = swift_getWitnessTable();
  v641 = v405;
  v642 = v414;
  v415 = v546;
  v416 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v208, v415, v416);
  return (*(v545 + 8))(v208, v415);
}

uint64_t sub_1E67EEB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v22 = *(a13 - 8);
  v23 = (MEMORY[0x1EEE9AC00])();
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v32 - v27;
  v29(v26);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v25, a13, a22);
  v30 = *(v22 + 8);
  v30(v25, a13);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v28, a13, a22);
  return (v30)(v28, a13);
}

uint64_t sub_1E67EEC98(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v17 = *(v2 + 32);
  v15 = *(v2 + 40);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v8 = *(v2 + 88);
  v7 = *(v2 + 96);
  v13 = *(v2 + 104);
  v14 = *(v2 + 56);
  v11 = *(v2 + 136);
  v12 = *(v2 + 120);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for CanvasLayout() - 8);
  return sub_1E67EEB5C(a1, a2, *(v2 + 160), *(v2 + 168), v2 + ((*(v9 + 80) + 176) & ~*(v9 + 80)), v4, v3, v17, v15, *(&v15 + 1), v14, *(&v14 + 1), v5, v6, v8, v7, v13, *(&v13 + 1), v12, *(&v12 + 1), v11, *(&v11 + 1));
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = (type metadata accessor for CanvasLayout() - 8);
  v3 = (*(*v2 + 80) + 176) & ~*(*v2 + 80);

  (*(*(v1 - 8) + 8))(v0 + v3 + v2[20], v1);
  return swift_deallocObject();
}

uint64_t CanvasItemDescriptor.init(identifier:content:contextMenu:metrics:redactionReasons:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, uint64_t a7)
{
  (*(*(a7 - 8) + 32))(a6, a1, a7);
  v8 = type metadata accessor for CanvasItemDescriptor();
  v9 = v8[33];
  v10 = type metadata accessor for CanvasItemContent();
  (*(*(v10 - 8) + 32))(a6 + v9, a2, v10);
  v11 = v8[34];
  v12 = sub_1E68B3750();
  (*(*(v12 - 8) + 32))(a6 + v11, a3, v12);
  v13 = v8[35];
  v14 = sub_1E68B3750();
  result = (*(*(v14 - 8) + 32))(a6 + v13, a4, v14);
  *(a6 + v8[36]) = a5;
  return result;
}

uint64_t CanvasItemDescriptor.content.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 132);
  v5 = type metadata accessor for CanvasItemContent();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t CanvasItemDescriptor.contextMenu.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 136);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasItemDescriptor.metrics.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 140);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasItemDescriptor.redactionReasons.getter(uint64_t a1)
{
  sub_1E67F1010(a1);
}

uint64_t sub_1E67EF2A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2970 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E67EF46C(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x4D747865746E6F63;
  v3 = 0x7363697274656DLL;
  if (a1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x746E65746E6F63;
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

uint64_t sub_1E67EF604()
{
  sub_1E68B3B70();
  sub_1E6739CF4(v2, *v0);
  return sub_1E68B3BB0();
}

uint64_t sub_1E67EF6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E67EF2A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67EF714@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E674BEA8();
  *a1 = result;
  return result;
}

uint64_t sub_1E67EF768(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E67EF7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E67EF850(uint64_t a1)
{
  sub_1E67F1010(a1);
}

uint64_t CanvasItemDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v28 = *(a2 + 40);
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 72);
  v10 = *(a2 + 112);
  v9 = *(a2 + 120);
  v26 = v4;
  v31 = v4;
  v22 = v5;
  *&v32 = v5;
  *(&v32 + 1) = v28;
  v20[1] = v6;
  v33 = v6;
  v24 = v7;
  v34 = v7;
  v25 = v8;
  v35 = v8;
  v11 = *(a2 + 80);
  v27 = *(a2 + 96);
  v21 = v11;
  v36 = v11;
  v37 = v27;
  v20[0] = v10;
  v38 = v10;
  v39 = v9;
  v23 = v9;
  type metadata accessor for CanvasItemDescriptor.CodingKeys();
  swift_getWitnessTable();
  v12 = sub_1E68B3AC0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v12;
  v17 = v29;
  sub_1E68B3BD0();
  LOBYTE(v31) = 0;
  v18 = v30;
  sub_1E68B3AB0();
  if (!v18)
  {
    v40 = 1;
    v31 = v26;
    v32 = v24;
    v33 = v25;
    *&v34 = v23;
    type metadata accessor for CanvasItemContent();
    swift_getWitnessTable();
    sub_1E68B3AB0();
    LOBYTE(v31) = 2;
    sub_1E68B3A60();
    LOBYTE(v31) = 3;
    sub_1E68B3A60();
    *&v31 = *(v17 + *(a2 + 144));
    v40 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0984B0);
    sub_1E67F1088(&qword_1EE2EA498, sub_1E67F1034);
    sub_1E68B3AB0();
  }

  return (*(v13 + 8))(v15, v16);
}

uint64_t CanvasItemDescriptor.init(from:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, char *a14, uint64_t a15, int *a16)
{
  v76 = a6;
  v82 = a1;
  v56 = a9;
  v83 = a15;
  v81 = a14;
  v78 = a12;
  v74 = a13;
  v80 = a16;
  v77 = a11;
  v67 = sub_1E68B3750();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v57 = &v55 - v22;
  v60 = sub_1E68B3750();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v55 - v23;
  v73 = a2;
  v84 = a2;
  v85 = a3;
  v70 = a3;
  v86 = a7;
  v87 = a8;
  v71 = a7;
  v72 = a8;
  v24 = v80;
  v88 = a10;
  v89 = v80;
  v62 = type metadata accessor for CanvasItemContent();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v55 - v25;
  v79 = a5;
  v63 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v65 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v87 = a5;
  v28 = v76;
  v88 = v76;
  v89 = a7;
  v90 = a8;
  v91 = a10;
  v30 = v77;
  v29 = v78;
  v92 = v77;
  v93 = v78;
  v31 = v74;
  v94 = v74;
  v95 = v81;
  v96 = v83;
  v97 = v24;
  type metadata accessor for CanvasItemDescriptor.CodingKeys();
  swift_getWitnessTable();
  v69 = sub_1E68B3A20();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v33 = &v55 - v32;
  v84 = v73;
  v85 = v70;
  v73 = a4;
  v86 = a4;
  v87 = v79;
  v88 = v28;
  v89 = v71;
  v90 = v72;
  v91 = a10;
  v92 = v30;
  v93 = v29;
  v34 = v82;
  v94 = v31;
  v95 = v81;
  v96 = v83;
  v97 = v80;
  v35 = type metadata accessor for CanvasItemDescriptor();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v55 - v37;
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  v81 = v33;
  v39 = v75;
  sub_1E68B3BC0();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v40 = v64;
  v75 = v36;
  v41 = v38;
  v80 = v35;
  v42 = v66;
  v43 = v67;
  LOBYTE(v84) = 0;
  v44 = v65;
  v45 = v79;
  sub_1E68B3A00();
  v46 = *(v63 + 32);
  v78 = v41;
  v46(v41, v44, v45);
  LOBYTE(v84) = 1;
  v47 = v62;
  swift_getWitnessTable();
  v48 = v40;
  sub_1E68B3A00();
  v49 = v80;
  (*(v61 + 32))(&v78[v80[33]], v48, v47);
  LOBYTE(v84) = 2;
  v50 = v58;
  sub_1E68B39B0();
  (*(v59 + 32))(&v78[v49[34]], v50, v60);
  LOBYTE(v84) = 3;
  v51 = v57;
  sub_1E68B39B0();
  v52 = v78;
  (*(v42 + 32))(&v78[v49[35]], v51, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0984B0);
  v98 = 4;
  sub_1E67F1088(&qword_1ED0984B8, sub_1E67F1100);
  sub_1E68B3A00();
  (*(v68 + 8))(v81, v69);
  *&v52[v49[36]] = v84;
  v53 = v75;
  (*(v75 + 16))(v56, v52, v49);
  __swift_destroy_boxed_opaque_existential_1(v82);
  return (*(v53 + 8))(v52, v49);
}

uint64_t static CanvasItemDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v88 = a3;
  v89 = a8;
  v83 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v74 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E68B3750();
  v79 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v76 = v69 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v75 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v78 = v69 - v25;
  v85 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v77 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E68B3750();
  v87 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v81 = v69 - v29;
  v86 = swift_getTupleTypeMetadata2();
  v80 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = v69 - v30;
  if ((sub_1E68B3190() & 1) == 0)
  {
    goto LABEL_16;
  }

  v71 = v28;
  v73 = v23;
  v31 = v88;
  v90 = v88;
  v91 = a4;
  v72 = a5;
  v92 = a5;
  v93 = a6;
  v70 = a7;
  v32 = a4;
  v33 = v89;
  v94 = a7;
  v95 = v89;
  v96 = a9;
  v97 = a10;
  v69[2] = a11;
  v98 = a11;
  v99 = a12;
  v100 = a13;
  v101 = a14;
  v69[1] = a15;
  v102 = a15;
  v103 = a16;
  v34 = type metadata accessor for CanvasItemDescriptor();
  v35 = a1;
  v36 = a2;
  if ((static CanvasItemContent.== infix(_:_:)((a1 + *(v34 + 132)), a2 + *(v34 + 132), v31, v32, v33, a9, a10, a16) & 1) == 0)
  {
    goto LABEL_16;
  }

  v88 = v34;
  v37 = *(v34 + 136);
  v38 = *(v86 + 48);
  v39 = *(v87 + 16);
  v69[0] = v35;
  v40 = v84;
  v41 = v71;
  v39(v84, v35 + v37, v71);
  v42 = v36;
  v43 = v41;
  v89 = v42;
  v39(&v40[v38], v42 + v37, v41);
  v44 = v85;
  v45 = *(v85 + 48);
  v46 = v72;
  if (v45(v40, 1, v72) != 1)
  {
    v49 = v81;
    v39(v81, v40, v43);
    v50 = v45(&v40[v38], 1, v46);
    v48 = v73;
    if (v50 != 1)
    {
      v51 = v77;
      (*(v44 + 32))(v77, &v40[v38], v46);
      v52 = sub_1E68B3190();
      v53 = *(v44 + 8);
      v53(v51, v46);
      v53(v49, v46);
      (*(v87 + 8))(v40, v43);
      if ((v52 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    (*(v44 + 8))(v49, v46);
LABEL_8:
    (*(v80 + 8))(v40, v86);
    goto LABEL_16;
  }

  v47 = v45(&v40[v38], 1, v46);
  v48 = v73;
  if (v47 != 1)
  {
    goto LABEL_8;
  }

  (*(v87 + 8))(v40, v43);
LABEL_10:
  v54 = *(v88 + 140);
  v55 = *(TupleTypeMetadata2 + 48);
  v56 = v79;
  v57 = *(v79 + 16);
  v58 = v69[0];
  v59 = v78;
  v57(v78, v69[0] + v54, v48);
  v57(&v59[v55], v89 + v54, v48);
  v60 = *(v83 + 48);
  v61 = v70;
  if (v60(v59, 1, v70) == 1)
  {
    if (v60(&v59[v55], 1, v61) == 1)
    {
      (*(v56 + 8))(v59, v73);
LABEL_19:
      v63 = sub_1E676FA70(*(v58 + *(v88 + 144)), *(v89 + *(v88 + 144)));
      return v63 & 1;
    }

    goto LABEL_15;
  }

  v62 = v76;
  v57(v76, v59, v48);
  if (v60(&v59[v55], 1, v61) == 1)
  {
    (*(v83 + 8))(v62, v61);
LABEL_15:
    (*(v75 + 8))(v59, TupleTypeMetadata2);
    goto LABEL_16;
  }

  v65 = v83;
  v66 = v74;
  (*(v83 + 32))(v74, &v59[v55], v61);
  v67 = sub_1E68B3190();
  v68 = *(v65 + 8);
  v68(v66, v61);
  v68(v62, v61);
  (*(v56 + 8))(v59, v48);
  v58 = v69[0];
  if (v67)
  {
    goto LABEL_19;
  }

LABEL_16:
  v63 = 0;
  return v63 & 1;
}

uint64_t CanvasItemDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1E68B3140();
  v5 = type metadata accessor for CanvasItemContent();
  CanvasItemContent.hash(into:)(a1, v5);
  sub_1E68B3750();
  sub_1E68B3760();
  sub_1E68B3750();
  sub_1E68B3760();
  return sub_1E6772810(a1, *(v2 + *(a2 + 144)));
}

uint64_t CanvasItemDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  CanvasItemDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E67F0F80(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  CanvasItemDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

unint64_t sub_1E67F1034()
{
  result = qword_1EE2EC9A0;
  if (!qword_1EE2EC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9A0);
  }

  return result;
}

uint64_t sub_1E67F1088(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0984B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E67F1100()
{
  result = qword_1ED0984C0;
  if (!qword_1ED0984C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0984C0);
  }

  return result;
}

uint64_t sub_1E67F116C(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1E67F128C(_DWORD *a1, unsigned int a2, void *a3)
{
  v67 = a3[5];
  v76 = *(v67 - 8);
  v4 = *(v76 + 84);
  v5 = *(*(a3[3] - 8) + 80);
  v6 = *(*(a3[3] - 8) + 64);
  v7 = *(sub_1E68B1820() - 8);
  v8 = *(v7 + 80);
  v9 = v6 + v8;
  v73 = v6 + v8 + 1;
  v71 = *(v7 + 84);
  v10 = *(v7 + 64);
  v11 = *(a3[2] - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v69 = *(v11 + 84);
  if (v10 > v6)
  {
    v6 = *(v7 + 64);
  }

  v14 = *(a3[7] - 8);
  v70 = *(v14 + 80);
  v72 = *(v14 + 84);
  v75 = *(v14 + 64);
  v15 = *(sub_1E68B1A10() - 8);
  v16 = *(a3[4] - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  if (v18)
  {
    v19 = v18 - 1;
  }

  else
  {
    v19 = 0;
  }

  if (v4 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v4;
  }

  v65 = a3[6];
  v21 = *(v65 - 8);
  v22 = *(v21 + 84);
  if (v22)
  {
    v23 = v22 - 1;
  }

  else
  {
    v23 = 0;
  }

  v66 = v23;
  if (v20 <= v23)
  {
    v20 = v23;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v20;
  }

  if (v71)
  {
    v25 = v10;
  }

  else
  {
    v25 = v10 + 1;
  }

  v26 = v25 + v8;
  v27 = v25 + v12;
  if (v69)
  {
    v28 = v13;
  }

  else
  {
    v28 = v13 + 1;
  }

  v74 = (v73 + ((v5 + 248) & ~v5)) & ~v8;
  v29 = ((((v25 + (v26 & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v29 <= v6)
  {
    v29 = v6;
  }

  if (v29 + 1 > ((v13 + v12 + ((v25 + v12 + ((v25 + v8 + ((v25 + v8 + v74) & ~v8)) & ~v8)) & ~v12)) & ~v12) + v28)
  {
    v30 = v29 + 1;
  }

  else
  {
    v30 = ((v13 + v12 + ((v25 + v12 + ((v25 + v8 + ((v25 + v8 + v74) & ~v8)) & ~v8)) & ~v12)) & ~v12) + v28;
  }

  v31 = *(v15 + 80);
  v32 = *(v15 + 84);
  v33 = *(v15 + 64);
  if (v72)
  {
    v34 = v75;
  }

  else
  {
    v34 = v75 + 1;
  }

  v35 = v34 + ((((v28 + v12 + ((v27 + ((v26 + ((v26 + ((v73 + ((v5 + 224) & ~v5)) & ~v8)) & ~v8)) & ~v8)) & ~v12)) & ~v12) + v28 + v70) & ~v70);
  if (v35 <= v30)
  {
    v35 = v30;
  }

  v36 = v28 + ((v27 + ((v26 + ((v8 + 64) & ~v8)) & ~v8)) & ~v12);
  if (v36 <= v35)
  {
    v36 = v35;
  }

  v37 = (v9 & ~v8) + v25;
  v38 = ((v37 + v8) & ~v8) + v25;
  if (((v38 + v8) & ~v8) + v25 > v36)
  {
    v36 = ((v38 + v8) & ~v8) + v25;
  }

  v39 = ((v8 + (v37 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v8) + v25;
  if (v39 > v36)
  {
    v36 = v39;
  }

  if (((v26 + ((v9 + ((v5 + 24) & ~v5)) & ~v8)) & ~v8) + v25 > v36)
  {
    v36 = ((v26 + ((v9 + ((v5 + 24) & ~v5)) & ~v8)) & ~v8) + v25;
  }

  if (v39 <= v36)
  {
    v39 = v36;
  }

  if (((v26 + ((v26 + ((v9 + ((v5 + 104) & ~v5)) & ~v8)) & ~v8)) & ~v8) + v25 > v39)
  {
    v39 = ((v26 + ((v26 + ((v9 + ((v5 + 104) & ~v5)) & ~v8)) & ~v8)) & ~v8) + v25;
  }

  if (((v27 + ((v26 + ((v26 + ((v26 + ((v9 + ((v5 + 160) & ~v5)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v12) + v28 > v39)
  {
    v39 = ((v27 + ((v26 + ((v26 + ((v26 + ((v9 + ((v5 + 160) & ~v5)) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v12) + v28;
  }

  if (((v26 + ((v26 + ((v9 + ((v5 + 56) & ~v5)) & ~v8)) & ~v8)) & ~v8) + v25 > v39)
  {
    v39 = ((v26 + ((v26 + ((v9 + ((v5 + 56) & ~v5)) & ~v8)) & ~v8)) & ~v8) + v25;
  }

  if (!v32)
  {
    ++v33;
  }

  v41 = v33 + ((((v26 + ((v26 + ((v9 + ((v5 + 40) & ~v5)) & ~v8)) & ~v8)) & ~v8) + v25 + v31) & ~v31);
  if (v41 <= v39)
  {
    v41 = v39;
  }

  v42 = ((v9 + ((v5 + 48) & ~v5)) & ~v8) + v25;
  if (v42 + 1 > v41)
  {
    v41 = v42 + 1;
  }

  v40 = v9 + ((v5 + 128) & ~v5);
  if (((v26 + ((v26 + (v40 & ~v8)) & ~v8)) & ~v8) + v25 > v41)
  {
    v41 = ((v26 + ((v26 + (v40 & ~v8)) & ~v8)) & ~v8) + v25;
  }

  if (v75 > v41)
  {
    v41 = v75;
  }

  if (v38 <= v41)
  {
    v38 = v41;
  }

  v43 = *(v16 + 64);
  v44 = *(v16 + 80);
  v45 = *(v21 + 80);
  if (v18)
  {
    v46 = v43;
  }

  else
  {
    v46 = v43 + 1;
  }

  if (v22)
  {
    v47 = *(*(v65 - 8) + 64);
  }

  else
  {
    v47 = *(*(v65 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v48 = v5 | v8 | v12 | v70 | v31 | 7;
  v49 = *(v76 + 64) + v48;
  v50 = v38 + 1;
  v51 = v46 + v45;
  v52 = v47 + 7;
  if (v24 < a2)
  {
    v53 = ((v52 + ((v51 + ((v50 + v44 + (v49 & ~v48)) & ~v44)) & ~v45)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if ((v53 & 0xFFFFFFF8) != 0)
    {
      v54 = 2;
    }

    else
    {
      v54 = a2 - v24 + 1;
    }

    if (v54 >= 0x10000)
    {
      LODWORD(v27) = 4;
    }

    else
    {
      LODWORD(v27) = 2;
    }

    if (v54 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = v27;
    }

    if (v54 >= 2)
    {
      v55 = v27;
    }

    else
    {
      v55 = 0;
    }

    if (v55 > 1)
    {
      if (v55 == 2)
      {
        v56 = *(a1 + v53);
        if (*(a1 + v53))
        {
          goto LABEL_84;
        }
      }

      else
      {
        v56 = *(a1 + v53);
        if (v56)
        {
          goto LABEL_84;
        }
      }
    }

    else if (v55)
    {
      v56 = *(a1 + v53);
      if (*(a1 + v53))
      {
LABEL_84:
        v57 = v56 - 1;
        if ((v53 & 0xFFFFFFF8) != 0)
        {
          v57 = 0;
          v58 = *a1;
        }

        else
        {
          v58 = 0;
        }

        return v24 + (v58 | v57) + 1;
      }
    }
  }

  if (v4 == v24)
  {
    v59 = *(v76 + 48);

    return v59(a1, v4, v67);
  }

  v61 = (((a1 + v49) & ~v48) + v44 + v50) & ~v44;
  if (v19 == v24)
  {
    if (v18 >= 2)
    {
      v62 = (*(v17 + 48))(v61);
      goto LABEL_106;
    }

    return 0;
  }

  v63 = (v51 + v61) & ~v45;
  if (v66 == v24)
  {
    if (v22 >= 2)
    {
      v62 = (*(v21 + 48))(v63, v22, v65, v27);
LABEL_106:
      if (v62 >= 2)
      {
        return v62 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v64 = *((v52 + v63) & 0xFFFFFFFFFFFFFFF8);
  if (v64 >= 0xFFFFFFFF)
  {
    LODWORD(v64) = -1;
  }

  return (v64 + 1);
}