uint64_t sub_1E6823354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  type metadata accessor for OrthogonalView();
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
  return sub_1E6822DC4(a1, v40, v39, v38, v37, v36, v35, a2, v13, v14, v15, v16, v17, v24, v23, v18, v19, v20, v21, v11, v10);
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 120);
  v19 = *(v0 + 16);
  v18 = *(v0 + 104);
  v17 = *(v0 + 128);
  v2 = type metadata accessor for OrthogonalView();
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

uint64_t sub_1E6823AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = v3[3];
  v34 = v3[2];
  v31 = v3[5];
  v32 = v3[4];
  v29 = v3[7];
  v30 = v3[6];
  v27 = v3[9];
  v28 = v3[8];
  v25 = v3[11];
  v26 = v3[10];
  v23 = v3[13];
  v24 = v3[12];
  v21 = v3[15];
  v22 = v3[14];
  v19 = v3[17];
  v20 = v3[16];
  v17 = v3[19];
  v18 = v3[18];
  v4 = v3[21];
  v16 = v3[20];
  v5 = v3[22];
  v6 = v3[23];
  v7 = v3[24];
  v8 = v3[25];
  v9 = v3[26];
  v10 = v3[27];
  v12 = v3[28];
  v11 = v3[29];
  v13 = *(type metadata accessor for OrthogonalView() - 8);
  *(&v15 + 1) = v27;
  *&v15 = v28;
  return sub_1E681FDD8(a1, a2, v3 + ((*(v13 + 80) + 240) & ~*(v13 + 80)), v34, v33, v32, v31, v30, a3, v29, v15, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v4, v5, v6, v7, v8, v9, v10, v12, v11);
}

uint64_t (*sub_1E6823C58())(uint64_t a1)
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
  v10 = *(type metadata accessor for OrthogonalView() - 8);
  v11 = (*(v10 + 80) + 240) & ~*(v10 + 80);
  return sub_1E6821D98(v0 + v11, v0 + ((v11 + *(v10 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v1, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E6823E5C(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
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
  v12 = *(type metadata accessor for OrthogonalView() - 8);
  v13 = (*(v12 + 80) + 240) & ~*(v12 + 80);
  return a2(a1, &v2[v13], *&v2[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8], v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t objectdestroy_28Tm_0()
{
  v1 = *(v0 + 120);
  v19 = *(v0 + 16);
  v18 = *(v0 + 104);
  v17 = *(v0 + 128);
  v2 = type metadata accessor for OrthogonalView();
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

void (*sub_1E6824508(uint64_t (*a1)(uint64_t)))(uint64_t)
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
  v11 = *(type metadata accessor for OrthogonalView() - 8);
  v12 = (*(v11 + 80) + 240) & ~*(v11 + 80);
  return sub_1E6822314(v1 + v12, *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v2, v3, v4, v5, v6, v7, v8, v10, v9, a1);
}

uint64_t sub_1E6824838()
{
  sub_1E68B3B70();
  sub_1E672A420(v2, *v0);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68248F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E678BA60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E682494C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67634C8();
  *a1 = result;
  return result;
}

uint64_t sub_1E68249A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E68249F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6824A60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6824AB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6824B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6761810(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E6824B64@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E6824BC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6824C18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t LazyCanvasItemDescriptor.encode(to:)(void *a1, void *a2)
{
  v70 = a1;
  v3 = a2[2];
  v76 = a2[3];
  v4 = a2[5];
  v72 = a2[4];
  v5 = a2[6];
  v68 = a2[7];
  v6 = a2[8];
  v74 = a2[9];
  v75 = v6;
  v7 = a2[11];
  v67 = a2[10];
  v8 = a2[12];
  v9 = a2[13];
  v10 = a2[15];
  v73 = a2[14];
  v93 = v10;
  v78 = v3;
  v79 = v3;
  v11 = v3;
  v80 = v76;
  v81 = v72;
  v82 = v4;
  v83 = v5;
  v65 = v5;
  v84 = v68;
  v85 = v6;
  v86 = v74;
  v87 = v67;
  v88 = v7;
  v89 = v8;
  v90 = v9;
  v91 = v73;
  v92 = v10;
  v57 = type metadata accessor for LazyCanvasItemDescriptor.PlaceholderCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v62 = sub_1E68B3AC0();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = v48 - v12;
  v79 = v4;
  v80 = v7;
  v77 = v4;
  v64 = v7;
  v81 = v8;
  v82 = v9;
  v63 = v8;
  v60 = type metadata accessor for CanvasItemPlaceholder();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v55 = v48 - v13;
  v14 = v76;
  v79 = v11;
  v80 = v76;
  v81 = v72;
  v82 = v4;
  v15 = v68;
  v83 = v5;
  v84 = v68;
  v16 = v74;
  v17 = v75;
  v85 = v75;
  v86 = v74;
  v18 = v67;
  v87 = v67;
  v88 = v7;
  v89 = v8;
  v90 = v9;
  v19 = v73;
  v91 = v73;
  v92 = v93;
  v20 = type metadata accessor for LazyCanvasItemDescriptor.ItemCodingKeys();
  v21 = swift_getWitnessTable();
  v51 = v20;
  v48[1] = v21;
  v54 = sub_1E68B3AC0();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = v48 - v22;
  v79 = v78;
  v80 = v14;
  v23 = v72;
  v81 = v72;
  v82 = v77;
  v24 = v65;
  v83 = v65;
  v84 = v15;
  v85 = v17;
  v86 = v16;
  v25 = v18;
  v26 = v64;
  v87 = v18;
  v88 = v64;
  v27 = v63;
  v89 = v63;
  v90 = v9;
  v91 = v19;
  v28 = v93;
  v92 = v93;
  v50 = type metadata accessor for CanvasItemDescriptor();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48[0] = v48 - v29;
  v69 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v30);
  v66 = v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v78;
  v80 = v76;
  v81 = v23;
  v82 = v77;
  v83 = v24;
  v84 = v15;
  v85 = v75;
  v86 = v74;
  v87 = v25;
  v88 = v26;
  v89 = v27;
  v90 = v9;
  v91 = v73;
  v92 = v28;
  type metadata accessor for LazyCanvasItemDescriptor.CodingKeys();
  swift_getWitnessTable();
  v32 = sub_1E68B3AC0();
  v93 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v48 - v33;
  __swift_project_boxed_opaque_existential_1(v70, v70[3]);
  sub_1E68B3BD0();
  v35 = v66;
  (*(v69 + 16))(v66, v71, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = v58;
    v37 = v55;
    v38 = v60;
    (*(v58 + 32))(v55, v35, v60);
    LOBYTE(v79) = 1;
    v39 = v59;
    v40 = v32;
    sub_1E68B3A30();
    swift_getWitnessTable();
    v41 = v62;
    sub_1E68B3AB0();
    (*(v61 + 8))(v39, v41);
    (*(v36 + 8))(v37, v38);
  }

  else
  {
    v42 = v49;
    v43 = v48[0];
    v44 = v50;
    (*(v49 + 32))(v48[0], v35, v50);
    LOBYTE(v79) = 0;
    v45 = v52;
    v40 = v32;
    sub_1E68B3A30();
    swift_getWitnessTable();
    v46 = v54;
    sub_1E68B3AB0();
    (*(v53 + 8))(v45, v46);
    (*(v42 + 8))(v43, v44);
  }

  return (*(v93 + 8))(v34, v40);
}

uint64_t LazyCanvasItemDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v101 = a7;
  v99 = a6;
  v96 = a1;
  v73 = a9;
  v100 = a16;
  v91 = a15;
  v116 = a14;
  v98 = a11;
  v97 = a10;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  *&v105 = a4;
  *(&v105 + 1) = a5;
  v90 = a4;
  v95 = a5;
  v106 = a6;
  v107 = a7;
  v108 = a8;
  v109 = a10;
  v110 = a11;
  v111 = a12;
  v93 = a12;
  v112 = a13;
  v113 = a14;
  v94 = a13;
  v114 = a15;
  v115 = a16;
  v82 = type metadata accessor for LazyCanvasItemDescriptor.PlaceholderCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v77 = sub_1E68B3A20();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v83 = &v69 - v21;
  *&v89 = a2;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  *(&v89 + 1) = a3;
  *&v105 = a4;
  *(&v105 + 1) = a5;
  v22 = v99;
  v23 = v101;
  v106 = v99;
  v107 = v101;
  v92 = a8;
  v108 = a8;
  v109 = a10;
  v110 = a11;
  v111 = a12;
  v112 = a13;
  v113 = a14;
  v114 = a15;
  v115 = a16;
  v24 = type metadata accessor for LazyCanvasItemDescriptor.ItemCodingKeys();
  v25 = swift_getWitnessTable();
  v79 = v24;
  v78 = v25;
  v75 = sub_1E68B3A20();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v80 = &v69 - v26;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  v27 = v90;
  v28 = v95;
  *&v105 = v90;
  *(&v105 + 1) = v95;
  v106 = v22;
  v107 = v23;
  v108 = a8;
  v109 = a10;
  v29 = v98;
  v30 = v93;
  v110 = v98;
  v111 = v93;
  v31 = v94;
  v112 = v94;
  v113 = a14;
  v32 = v100;
  v114 = a15;
  v115 = v100;
  type metadata accessor for LazyCanvasItemDescriptor.CodingKeys();
  v87 = swift_getWitnessTable();
  v85 = sub_1E68B3A20();
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v34 = &v69 - v33;
  v104 = v89;
  *&v105 = v27;
  *(&v105 + 1) = v28;
  v106 = v99;
  v107 = v101;
  v108 = v92;
  v109 = v97;
  v110 = v29;
  v111 = v30;
  v112 = v31;
  v113 = v116;
  v114 = a15;
  v115 = v32;
  v35 = type metadata accessor for LazyCanvasItemDescriptor();
  v84 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v69 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v69 - v42;
  __swift_project_boxed_opaque_existential_1(v96, v96[3]);
  v44 = v88;
  sub_1E68B3BC0();
  if (!v44)
  {
    v71 = v37;
    v72 = v40;
    v70 = v43;
    v87 = v35;
    v45 = v95;
    v46 = v116;
    v47 = v85;
    v88 = v34;
    *&v104 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v102 = sub_1E68B37A0();
    *(&v102 + 1) = v48;
    *&v103 = v49;
    *(&v103 + 1) = v50;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v51 = v104;
    if (v104 == 2 || (v69 = v102, v104 = v102, v105 = v103, (sub_1E68B36E0() & 1) == 0))
    {
      v58 = sub_1E68B3870();
      swift_allocError();
      v60 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v60 = v87;
      v61 = v88;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
      swift_willThrow();
      (*(v86 + 8))(v61, v47);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v51)
      {
        LOBYTE(v104) = 1;
        v52 = v83;
        v53 = v88;
        sub_1E68B3970();
        v54 = v84;
        *&v104 = v45;
        *(&v104 + 1) = v93;
        *&v105 = v94;
        *(&v105 + 1) = v46;
        type metadata accessor for CanvasItemPlaceholder();
        swift_getWitnessTable();
        v55 = v71;
        v56 = v77;
        sub_1E68B3A00();
        v57 = v86;
        (*(v76 + 8))(v52, v56);
        (*(v57 + 8))(v53, v47);
      }

      else
      {
        LOBYTE(v104) = 0;
        v62 = v80;
        v63 = v88;
        sub_1E68B3970();
        v54 = v84;
        v104 = v89;
        *&v105 = v90;
        *(&v105 + 1) = v45;
        v106 = v99;
        v107 = v101;
        v108 = v92;
        v109 = v97;
        v110 = v98;
        v111 = v93;
        v112 = v94;
        v113 = v46;
        v114 = v91;
        v115 = v100;
        type metadata accessor for CanvasItemDescriptor();
        swift_getWitnessTable();
        v55 = v72;
        v64 = v75;
        sub_1E68B3A00();
        (*(v74 + 8))(v62, v64);
        (*(v86 + 8))(v63, v47);
      }

      swift_unknownObjectRelease();
      v66 = v87;
      swift_storeEnumTagMultiPayload();
      v67 = *(v54 + 32);
      v68 = v70;
      v67(v70, v55, v66);
      v67(v73, v68, v66);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v96);
}

uint64_t static LazyCanvasItemDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v67 = a3;
  v68 = a8;
  v70 = a7;
  v71 = a6;
  v64 = a2;
  v63 = a1;
  v69 = a15;
  v65 = a10;
  v66 = a16;
  v72 = a12;
  v73 = a13;
  v74 = a14;
  v58 = type metadata accessor for CanvasItemPlaceholder();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v50 = &v48 - v20;
  v71 = a3;
  v72 = a4;
  v73 = a5;
  v74 = a6;
  v21 = v68;
  v75 = v70;
  v76 = v68;
  v77 = a9;
  v78 = a10;
  v79 = a11;
  v80 = a12;
  v81 = a13;
  v82 = a14;
  v83 = a15;
  v84 = a16;
  v56 = type metadata accessor for CanvasItemDescriptor();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v49 = &v48 - v22;
  v71 = v67;
  v72 = a4;
  v53 = a4;
  v54 = a5;
  v73 = a5;
  v74 = a6;
  v62 = a6;
  v75 = v70;
  v76 = v21;
  v52 = a9;
  v77 = a9;
  v78 = v65;
  v51 = a11;
  v79 = a11;
  v80 = a12;
  v59 = a12;
  v60 = a13;
  v81 = a13;
  v82 = a14;
  v61 = a14;
  v83 = v69;
  v84 = a16;
  v23 = type metadata accessor for LazyCanvasItemDescriptor();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v48 - v28;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = *(TupleTypeMetadata2 - 8);
  v32 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v34 = &v48 - v33;
  v36 = *(v35 + 48);
  v37 = *(v24 + 16);
  v37(&v48 - v33, v63, v23, v32);
  (v37)(&v34[v36], v64, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v37)(v29, v34, v23);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v43 = v55;
      v44 = v49;
      v45 = v56;
      (*(v55 + 32))(v49, &v34[v36], v56);
      v41 = static CanvasItemDescriptor.== infix(_:_:)(v29, v44, v67, v53, v54, v62, v70, v68, v52, v65, v51, v59, v60, v61, v69, v66);
      v46 = *(v43 + 8);
      v46(v44, v45);
      v46(v29, v45);
      goto LABEL_9;
    }

    (*(v55 + 8))(v29, v56);
    goto LABEL_7;
  }

  (v37)(v26, v34, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v57 + 8))(v26, v58);
LABEL_7:
    v41 = 0;
    v24 = v31;
    v23 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v38 = v57;
  v39 = v50;
  v40 = v58;
  (*(v57 + 32))(v50, &v34[v36], v58);
  v41 = static CanvasItemPlaceholder.== infix(_:_:)(v26, v39, v62, v59, v60, v61);
  v42 = *(v38 + 8);
  v42(v39, v40);
  v42(v26, v40);
LABEL_9:
  (*(v24 + 8))(v34, v23);
  return v41 & 1;
}

uint64_t LazyCanvasItemDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 40);
  v7 = *(a2 + 88);
  v25 = *(a2 + 96);
  *&v26 = v6;
  *(&v26 + 1) = v7;
  v27 = v25;
  v8 = type metadata accessor for CanvasItemPlaceholder();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a2 + 32);
  *&v13 = *(a2 + 80);
  v26 = *(a2 + 16);
  *&v27 = v12;
  *(&v27 + 1) = v6;
  v14 = *(a2 + 64);
  v28 = *(a2 + 48);
  v29 = v14;
  *(&v13 + 1) = v7;
  v30 = v13;
  v31 = v25;
  v32 = *(a2 + 112);
  v15 = type metadata accessor for CanvasItemDescriptor();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v3, a2, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v22, v8);
    MEMORY[0x1E69523D0](1);
    CanvasItemPlaceholder.hash(into:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v16 + 32))(v18, v22, v15);
    MEMORY[0x1E69523D0](0);
    CanvasItemDescriptor.hash(into:)(a1, v15);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t LazyCanvasItemDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  LazyCanvasItemDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68268F0(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  LazyCanvasItemDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E68269A4()
{
  result = type metadata accessor for CanvasItemDescriptor();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CanvasItemPlaceholder();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E6826A7C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v60 = *(*(a3[5] - 8) + 64);
  v59 = *(a3[3] - 8);
  v4 = *(v59 + 80);
  v58 = *(sub_1E68B1820() - 8);
  v5 = *(v58 + 80);
  v62 = *(a3[2] - 8);
  v61 = *(a3[7] - 8);
  v6 = *(v62 + 80);
  v7 = *(v61 + 80);
  v8 = *(sub_1E68B1A10() - 8);
  v9 = *(v8 + 80);
  v10 = v7;
  v11 = v4 | v5 | v6 | v7 | v9 | 7;
  v12 = (v11 + v60) & ~v11;
  v13 = *(v59 + 64);
  v14 = v13 + v5;
  v15 = *(v58 + 64);
  if (v15 <= v13)
  {
    v16 = *(v59 + 64);
  }

  else
  {
    v16 = *(v58 + 64);
  }

  v17 = *(a3[4] - 8);
  v18 = *(a3[6] - 8);
  v19 = *(v62 + 64);
  if (*(v58 + 84))
  {
    v20 = *(v58 + 64);
  }

  else
  {
    v20 = v15 + 1;
  }

  v21 = *(v61 + 64);
  v22 = v20 + v5;
  v23 = v20 + v6;
  if (*(v62 + 84))
  {
    v24 = *(v62 + 64);
  }

  else
  {
    v24 = v19 + 1;
  }

  v25 = ((((v20 + (v22 & ~v5) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v25 <= v16)
  {
    v25 = v16;
  }

  if (v25 + 1 > ((v19 + v6 + ((v20 + v6 + ((v20 + v5 + ((v20 + v5 + ((v14 + 1 + ((v4 + 248) & ~v4)) & ~v5)) & ~v5)) & ~v5)) & ~v6)) & ~v6) + v24)
  {
    v26 = v25 + 1;
  }

  else
  {
    v26 = ((v19 + v6 + ((v20 + v6 + ((v20 + v5 + ((v20 + v5 + ((v14 + 1 + ((v4 + 248) & ~v4)) & ~v5)) & ~v5)) & ~v5)) & ~v6)) & ~v6) + v24;
  }

  v27 = *(v8 + 84);
  v28 = *(v8 + 64);
  if (*(v61 + 84))
  {
    v29 = *(v61 + 64);
  }

  else
  {
    v29 = v21 + 1;
  }

  v30 = v29 + ((v24 + v10 + ((v24 + v6 + ((v23 + ((v22 + ((v22 + ((v14 + 1 + ((v4 + 224) & ~v4)) & ~v5)) & ~v5)) & ~v5)) & ~v6)) & ~v6)) & ~v10);
  if (v30 <= v26)
  {
    v30 = v26;
  }

  v31 = ((v23 + ((v22 + ((v5 + 64) & ~v5)) & ~v5)) & ~v6) + v24;
  if (v31 <= v30)
  {
    v31 = v30;
  }

  v32 = v20 + (v14 & ~v5);
  v33 = ((v32 + v5) & ~v5) + v20;
  if (((v33 + v5) & ~v5) + v20 > v31)
  {
    v31 = ((v33 + v5) & ~v5) + v20;
  }

  v34 = ((v5 + (v32 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v5) + v20;
  if (v34 > v31)
  {
    v31 = v34;
  }

  if (((v22 + ((v14 + ((v4 + 24) & ~v4)) & ~v5)) & ~v5) + v20 > v31)
  {
    v31 = ((v22 + ((v14 + ((v4 + 24) & ~v4)) & ~v5)) & ~v5) + v20;
  }

  if (v34 > v31)
  {
    v31 = v34;
  }

  if (((v22 + ((v22 + ((v14 + ((v4 + 104) & ~v4)) & ~v5)) & ~v5)) & ~v5) + v20 > v31)
  {
    v31 = ((v22 + ((v22 + ((v14 + ((v4 + 104) & ~v4)) & ~v5)) & ~v5)) & ~v5) + v20;
  }

  if (((v23 + ((v22 + ((v22 + ((v22 + ((v14 + ((v4 + 160) & ~v4)) & ~v5)) & ~v5)) & ~v5)) & ~v5)) & ~v6) + v24 > v31)
  {
    v31 = ((v23 + ((v22 + ((v22 + ((v22 + ((v14 + ((v4 + 160) & ~v4)) & ~v5)) & ~v5)) & ~v5)) & ~v5)) & ~v6) + v24;
  }

  v36 = (v14 + ((v4 + 40) & ~v4)) & ~v5;
  v35 = (v14 + ((v4 + 56) & ~v4)) & ~v5;
  if (((v22 + ((v22 + v35) & ~v5)) & ~v5) + v20 <= v31)
  {
    v37 = v31;
  }

  else
  {
    v37 = ((v22 + ((v22 + v35) & ~v5)) & ~v5) + v20;
  }

  v38 = v14 + ((v4 + 48) & ~v4);
  v39 = v14 + ((v4 + 128) & ~v4);
  v40 = *(v17 + 64);
  v41 = (v20 + v9 + ((v22 + ((v22 + v36) & ~v5)) & ~v5)) & ~v9;
  if (!v27)
  {
    ++v28;
  }

  v42 = v28 + v41;
  if (v42 <= v37)
  {
    v42 = v37;
  }

  v43 = (v38 & ~v5) + v20;
  if (v43 + 1 > v42)
  {
    v42 = v43 + 1;
  }

  if (((v22 + ((v22 + (v39 & ~v5)) & ~v5)) & ~v5) + v20 > v42)
  {
    v42 = ((v22 + ((v22 + (v39 & ~v5)) & ~v5)) & ~v5) + v20;
  }

  if (v21 > v42)
  {
    v42 = *(v61 + 64);
  }

  if (v33 > v42)
  {
    v42 = v33;
  }

  v44 = *(v18 + 80);
  v45 = *(v18 + 84);
  v46 = *(v18 + 64);
  if (!*(v17 + 84))
  {
    ++v40;
  }

  v47 = v40 + v44;
  if (!v45)
  {
    ++v46;
  }

  v48 = ((v60 + 7) & 0xFFFFFFFFFFFFFFF8) + 249;
  v49 = ((v46 + ((v47 + ((*(v17 + 80) + v12 + v42 + 1) & ~*(v17 + 80))) & ~v44) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v48 <= v49)
  {
    v48 = v49;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_77;
  }

  v50 = v48 + 1;
  v51 = 8 * (v48 + 1);
  if ((v48 + 1) <= 3)
  {
    v54 = ((a2 + ~(-1 << v51) - 254) >> v51) + 1;
    if (HIWORD(v54))
    {
      v52 = *(a1 + v50);
      if (!v52)
      {
        goto LABEL_77;
      }

      goto LABEL_66;
    }

    if (v54 > 0xFF)
    {
      v52 = *(a1 + v50);
      if (!*(a1 + v50))
      {
        goto LABEL_77;
      }

      goto LABEL_66;
    }

    if (v54 < 2)
    {
LABEL_77:
      v56 = *(a1 + v48);
      if (v56 >= 2)
      {
        return (v56 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v52 = *(a1 + v50);
  if (!*(a1 + v50))
  {
    goto LABEL_77;
  }

LABEL_66:
  v55 = (v52 - 1) << v51;
  if (v50 > 3)
  {
    v55 = 0;
  }

  if (v50)
  {
    if (v50 > 3)
    {
      LODWORD(v50) = 4;
    }

    if (v50 > 2)
    {
      if (v50 == 3)
      {
        LODWORD(v50) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v50) = *a1;
      }
    }

    else if (v50 == 1)
    {
      LODWORD(v50) = *a1;
    }

    else
    {
      LODWORD(v50) = *a1;
    }
  }

  return (v50 | v55) + 255;
}

void sub_1E6827120(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v60 = *(a4[3] - 8);
  v61 = *(*(a4[5] - 8) + 64);
  v5 = *(v60 + 80);
  v59 = *(sub_1E68B1820() - 8);
  v6 = *(v59 + 80);
  v63 = *(a4[2] - 8);
  v62 = *(a4[7] - 8);
  v7 = *(v63 + 80);
  v8 = *(v62 + 80);
  v9 = *(sub_1E68B1A10() - 8);
  v10 = *(v9 + 80);
  v11 = v8;
  v12 = v5 | v6 | v7 | v8 | v10 | 7;
  v13 = (v12 + v61) & ~v12;
  v14 = *(v60 + 64);
  v15 = *(v59 + 64);
  if (v15 <= v14)
  {
    v16 = *(v60 + 64);
  }

  else
  {
    v16 = *(v59 + 64);
  }

  v17 = *(a4[4] - 8);
  v18 = *(a4[6] - 8);
  v19 = v14 + v6;
  v20 = *(v63 + 64);
  if (*(v59 + 84))
  {
    v21 = *(v59 + 64);
  }

  else
  {
    v21 = v15 + 1;
  }

  v22 = *(v62 + 64);
  v23 = v21 + v6;
  v24 = v21 + v7;
  if (*(v63 + 84))
  {
    v25 = *(v63 + 64);
  }

  else
  {
    v25 = v20 + 1;
  }

  v26 = ((((v21 + (v23 & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v26 <= v16)
  {
    v26 = v16;
  }

  if (v26 + 1 > ((v20 + v7 + ((v21 + v7 + ((v21 + v6 + ((v21 + v6 + ((v19 + 1 + ((v5 + 248) & ~v5)) & ~v6)) & ~v6)) & ~v6)) & ~v7)) & ~v7) + v25)
  {
    v27 = v26 + 1;
  }

  else
  {
    v27 = ((v20 + v7 + ((v21 + v7 + ((v21 + v6 + ((v21 + v6 + ((v19 + 1 + ((v5 + 248) & ~v5)) & ~v6)) & ~v6)) & ~v6)) & ~v7)) & ~v7) + v25;
  }

  v28 = *(v9 + 84);
  v29 = *(v9 + 64);
  if (*(v62 + 84))
  {
    v30 = *(v62 + 64);
  }

  else
  {
    v30 = v22 + 1;
  }

  v31 = v30 + ((v25 + v11 + ((v25 + v7 + ((v24 + ((v23 + ((v23 + ((v19 + 1 + ((v5 + 224) & ~v5)) & ~v6)) & ~v6)) & ~v6)) & ~v7)) & ~v7)) & ~v11);
  if (v31 <= v27)
  {
    v31 = v27;
  }

  v32 = ((v24 + ((v23 + ((v6 + 64) & ~v6)) & ~v6)) & ~v7) + v25;
  if (v32 <= v31)
  {
    v32 = v31;
  }

  v33 = v21 + (v19 & ~v6);
  v34 = ((v33 + v6) & ~v6) + v21;
  if (((v34 + v6) & ~v6) + v21 > v32)
  {
    v32 = ((v34 + v6) & ~v6) + v21;
  }

  v35 = ((v6 + (v33 & 0xFFFFFFFFFFFFFFF8) + 24) & ~v6) + v21;
  if (v35 > v32)
  {
    v32 = v35;
  }

  if (((v23 + ((v19 + ((v5 + 24) & ~v5)) & ~v6)) & ~v6) + v21 > v32)
  {
    v32 = ((v23 + ((v19 + ((v5 + 24) & ~v5)) & ~v6)) & ~v6) + v21;
  }

  if (v35 > v32)
  {
    v32 = v35;
  }

  if (((v23 + ((v23 + ((v19 + ((v5 + 104) & ~v5)) & ~v6)) & ~v6)) & ~v6) + v21 > v32)
  {
    v32 = ((v23 + ((v23 + ((v19 + ((v5 + 104) & ~v5)) & ~v6)) & ~v6)) & ~v6) + v21;
  }

  if (((v24 + ((v23 + ((v23 + ((v23 + ((v19 + ((v5 + 160) & ~v5)) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v7) + v25 > v32)
  {
    v32 = ((v24 + ((v23 + ((v23 + ((v23 + ((v19 + ((v5 + 160) & ~v5)) & ~v6)) & ~v6)) & ~v6)) & ~v6)) & ~v7) + v25;
  }

  v37 = (v19 + ((v5 + 40) & ~v5)) & ~v6;
  v36 = (v19 + ((v5 + 56) & ~v5)) & ~v6;
  if (((v23 + ((v23 + v36) & ~v6)) & ~v6) + v21 <= v32)
  {
    v38 = v32;
  }

  else
  {
    v38 = ((v23 + ((v23 + v36) & ~v6)) & ~v6) + v21;
  }

  v39 = v19 + ((v5 + 48) & ~v5);
  v40 = v19 + ((v5 + 128) & ~v5);
  v41 = *(v17 + 64);
  v42 = (v21 + v10 + ((v23 + ((v23 + v37) & ~v6)) & ~v6)) & ~v10;
  if (!v28)
  {
    ++v29;
  }

  v43 = v29 + v42;
  if (v43 <= v38)
  {
    v43 = v38;
  }

  v44 = (v39 & ~v6) + v21;
  if (v44 + 1 > v43)
  {
    v43 = v44 + 1;
  }

  if (((v23 + ((v23 + (v40 & ~v6)) & ~v6)) & ~v6) + v21 > v43)
  {
    v43 = ((v23 + ((v23 + (v40 & ~v6)) & ~v6)) & ~v6) + v21;
  }

  if (v22 > v43)
  {
    v43 = *(v62 + 64);
  }

  if (v34 > v43)
  {
    v43 = v34;
  }

  v45 = *(v18 + 80);
  v46 = *(v18 + 84);
  v47 = *(v18 + 64);
  if (!*(v17 + 84))
  {
    ++v41;
  }

  v48 = v41 + v45;
  if (!v46)
  {
    ++v47;
  }

  v49 = ((v47 + ((v48 + ((*(v17 + 80) + v13 + v43 + 1) & ~*(v17 + 80))) & ~v45) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v61 + 7) & 0xFFFFFFFFFFFFFFF8) + 249 > v49)
  {
    v49 = ((v61 + 7) & 0xFFFFFFFFFFFFFFF8) + 249;
  }

  v50 = v49 + 1;
  if (a3 < 0xFF)
  {
    v53 = 0;
    v51 = a1;
    v52 = a2;
  }

  else
  {
    v51 = a1;
    v52 = a2;
    if (v50 <= 3)
    {
      v56 = ((a3 + ~(-1 << (8 * v50)) - 254) >> (8 * v50)) + 1;
      if (HIWORD(v56))
      {
        v53 = 4;
      }

      else
      {
        if (v56 < 0x100)
        {
          v57 = 1;
        }

        else
        {
          v57 = 2;
        }

        if (v56 >= 2)
        {
          v53 = v57;
        }

        else
        {
          v53 = 0;
        }
      }
    }

    else
    {
      v53 = 1;
    }
  }

  if (v52 > 0xFE)
  {
    v54 = v52 - 255;
    if (v50 >= 4)
    {
      bzero(v51, v49 + 1);
      *v51 = v54;
      v55 = 1;
      if (v53 > 1)
      {
        goto LABEL_91;
      }

      goto LABEL_88;
    }

    v55 = (v54 >> (8 * v50)) + 1;
    if (v49 != -1)
    {
      v58 = v54 & ~(-1 << (8 * v50));
      bzero(v51, v50);
      if (v50 != 3)
      {
        if (v50 == 2)
        {
          *v51 = v58;
          if (v53 > 1)
          {
LABEL_91:
            if (v53 == 2)
            {
              *&v51[v50] = v55;
            }

            else
            {
              *&v51[v50] = v55;
            }

            return;
          }
        }

        else
        {
          *v51 = v54;
          if (v53 > 1)
          {
            goto LABEL_91;
          }
        }

LABEL_88:
        if (v53)
        {
          v51[v50] = v55;
        }

        return;
      }

      *v51 = v58;
      v51[2] = BYTE2(v58);
    }

    if (v53 > 1)
    {
      goto LABEL_91;
    }

    goto LABEL_88;
  }

  if (v53 <= 1)
  {
    if (v53)
    {
      v51[v50] = 0;
      if (!v52)
      {
        return;
      }

LABEL_77:
      v51[v49] = -v52;
      return;
    }

LABEL_76:
    if (!v52)
    {
      return;
    }

    goto LABEL_77;
  }

  if (v53 == 2)
  {
    *&v51[v50] = 0;
    goto LABEL_76;
  }

  *&v51[v50] = 0;
  if (v52)
  {
    goto LABEL_77;
  }
}

uint64_t static FullWidthItemDescriptor.== infix(_:_:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v101 = a1;
  v102 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED098130);
  v6 = MEMORY[0x1EEE9AC00](v92);
  v87 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v81[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v81[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v88 = &v81[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v95 = &v81[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v81[-v16];
  v98 = sub_1E68B1820();
  v100 = *(v98 - 8);
  v17 = MEMORY[0x1EEE9AC00](v98);
  v86 = &v81[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v90 = &v81[-v20];
  v93 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v81[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = a3;
  v89 = a4;
  v23 = type metadata accessor for FullWidthItemDescriptor();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v81[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v81[-v29];
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v81[-v31];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v99 = *(TupleTypeMetadata2 - 8);
  v34 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v81[-v35];
  v37 = &v81[*(v34 + 48) - v35];
  v97 = v24;
  v38 = *(v24 + 2);
  v38(&v81[-v35], v101, v23);
  v38(v37, v102, v23);
  v102 = v36;
  v39 = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v41 = v102;
      v38(v30, v102, v23);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v100;
        v43 = v90;
        v44 = v98;
        (*(v100 + 32))(v90, v37, v98);
        v45 = sub_1E68B17A0();
        v46 = *(v42 + 8);
        v46(v43, v44);
        v46(v30, v44);
        v47 = v97;
        goto LABEL_33;
      }

      (*(v100 + 8))(v30, v98);
LABEL_14:
      v45 = 0;
      v47 = v99;
      v39 = TupleTypeMetadata2;
      goto LABEL_33;
    }

    v41 = v102;
    v38(v27, v102, v23);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096FF8);
    v51 = v50[12];
    v52 = v50[16];
    v53 = *&v27[v52 + 8];
    v101 = *&v27[v52];
    v54 = v50[20];
    v55 = *&v27[v54 + 8];
    v94 = *&v27[v54];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      sub_1E6744A10(&v27[v51], &qword_1ED096E68);
      sub_1E6744A10(v27, &qword_1ED096E68);
      goto LABEL_14;
    }

    v99 = v53;
    v56 = *&v37[v52 + 8];
    v89 = *&v37[v52];
    v57 = *&v37[v54 + 8];
    v84 = *&v37[v54];
    v93 = v57;
    sub_1E6774DF4(&v27[v51], v96);
    sub_1E6774DF4(&v37[v51], v95);
    v58 = v91;
    v59 = *(v92 + 48);
    sub_1E6774DF4(v27, v91);
    sub_1E6774DF4(v37, &v58[v59]);
    v60 = *(v100 + 48);
    v61 = v98;
    if (v60(v58, 1, v98) == 1)
    {
      v62 = v60(&v58[v59], 1, v61);
      v47 = v97;
      if (v62 != 1)
      {
LABEL_22:

        goto LABEL_25;
      }

      sub_1E6744A10(v58, &qword_1ED096E68);
    }

    else
    {
      v90 = v56;
      v64 = v88;
      sub_1E682854C(v58, v88);
      v65 = v60(&v58[v59], 1, v61);
      v47 = v97;
      if (v65 == 1)
      {

        (*(v100 + 8))(v64, v61);
LABEL_25:
        sub_1E6744A10(v58, &qword_1ED098130);
LABEL_32:
        sub_1E6744A10(v95, &qword_1ED096E68);
        sub_1E6744A10(v96, &qword_1ED096E68);
        v45 = 0;
        goto LABEL_33;
      }

      v66 = v100;
      v67 = &v58[v59];
      v68 = v64;
      v69 = v86;
      (*(v100 + 32))(v86, v67, v61);
      sub_1E682ABCC(&qword_1EE2EDE90);
      v83 = v55;
      v82 = sub_1E68B3190();
      v70 = *(v66 + 8);
      v70(v69, v61);
      v70(v68, v61);
      v41 = v102;
      v55 = v83;
      sub_1E6744A10(v58, &qword_1ED096E68);
      v56 = v90;
      if ((v82 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v71 = *(v92 + 48);
    v58 = v87;
    sub_1E682854C(v96, v87);
    sub_1E682854C(v95, &v58[v71]);
    if (v60(v58, 1, v61) == 1)
    {
      if (v60(&v58[v71], 1, v61) == 1)
      {
        sub_1E6744A10(v58, &qword_1ED096E68);
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    v83 = v55;
    v72 = v85;
    sub_1E682854C(v58, v85);
    if (v60(&v58[v71], 1, v61) == 1)
    {

      (*(v100 + 8))(v72, v61);
      goto LABEL_25;
    }

    v73 = v100;
    v74 = *(v100 + 32);
    v90 = v56;
    v75 = v86;
    v74(v86, &v58[v71], v61);
    sub_1E682ABCC(&qword_1EE2EDE90);
    v76 = sub_1E68B3190();
    v77 = *(v73 + 8);
    v78 = v75;
    v56 = v90;
    v77(v78, v61);
    v77(v72, v61);
    sub_1E6744A10(v58, &qword_1ED096E68);
    v55 = v83;
    if (v76)
    {
LABEL_27:
      if (v101 == v89 && v99 == v56)
      {

LABEL_35:
        if (v94 == v84 && v55 == v93)
        {

          sub_1E6744A10(v95, &qword_1ED096E68);
          sub_1E6744A10(v96, &qword_1ED096E68);
          v45 = 1;
        }

        else
        {
          v45 = sub_1E68B3B00();

          sub_1E6744A10(v95, &qword_1ED096E68);
          sub_1E6744A10(v96, &qword_1ED096E68);
        }

        goto LABEL_33;
      }

      v80 = sub_1E68B3B00();

      if (v80)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

LABEL_30:

LABEL_31:

    goto LABEL_32;
  }

  v49 = v93;
  v48 = v94;
  v38(v32, v102, v39);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v49 + 8))(v32, v48);
    v45 = 0;
    v47 = v99;
    v39 = TupleTypeMetadata2;
  }

  else
  {
    (*(v49 + 32))(v22, v37, v48);
    v45 = sub_1E68B3190();
    v63 = *(v49 + 8);
    v63(v22, v48);
    v63(v32, v48);
    v47 = v97;
  }

  v41 = v102;
LABEL_33:
  (*(v47 + 1))(v41, v39);
  return v45 & 1;
}

uint64_t sub_1E682854C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E68285BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E6828634(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEF656C7469546465)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E68286B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F74747562 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69646E61707865 && a2 == 0xED00007478655467)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E68287D0(char a1)
{
  if (!a1)
  {
    return 0x6B726F77747261;
  }

  if (a1 == 1)
  {
    return 0x6E6F74747562;
  }

  return 0x6E69646E61707865;
}

uint64_t sub_1E6828830(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7475626972747461 && a2 == 0xEF656C7469546465;
  if (v3 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00747865546465 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2E70 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E68E2E90 == a2)
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

uint64_t sub_1E68289AC(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1E6828A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68285BC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E6828A80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6828AD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6828B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6828634(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E6828B80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6828BD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6828C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E68286B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6828C7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67BF598();
  *a1 = result;
  return result;
}

uint64_t sub_1E6828CA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6828CFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E6828D50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1E68B3B70();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1E68B3BB0();
}

uint64_t sub_1E6828DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6828830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6828DE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67BF588();
  *a1 = result;
  return result;
}

uint64_t sub_1E6828E10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6828E64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FullWidthItemDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v86 = a1;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = type metadata accessor for FullWidthItemDescriptor.ExpandingTextCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v73 = v5;
  v6 = sub_1E68B3AC0();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v76 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v58 - v11;
  v12 = type metadata accessor for FullWidthItemDescriptor.ButtonCodingKeys();
  v13 = swift_getWitnessTable();
  v66 = v12;
  v64 = v13;
  v14 = sub_1E68B3AC0();
  v69 = *(v14 - 8);
  v70 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v58 - v15;
  v81 = sub_1E68B1820();
  v68 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FullWidthItemDescriptor.ArtworkCodingKeys();
  v60 = swift_getWitnessTable();
  v63 = sub_1E68B3AC0();
  v59 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v58 - v17;
  v62 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v80 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v3;
  v71 = v4;
  type metadata accessor for FullWidthItemDescriptor.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_1E68B3AC0();
  v25 = *(v24 - 8);
  v84 = v24;
  v85 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v58 - v26);
  __swift_project_boxed_opaque_existential_1(v86, v86[3]);
  v86 = v27;
  sub_1E68B3BD0();
  (*(v20 + 16))(v23, v82, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v36 = v59;
    v37 = v62;
    v38 = v74;
    (*(v62 + 32))(v80, v23, v74);
    v87 = 0;
    v39 = v61;
    v33 = v84;
    v34 = v86;
    sub_1E68B3A30();
    v40 = v63;
    sub_1E68B3AB0();
    (*(v36 + 8))(v39, v40);
    (*(v37 + 8))(v80, v38);
    return (*(v85 + 8))(v34, v33);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v29 = v68;
    v30 = v65;
    v31 = v81;
    (*(v68 + 32))(v65, v23, v81);
    v88 = 1;
    v32 = v67;
    v33 = v84;
    v34 = v86;
    sub_1E68B3A30();
    sub_1E682ABCC(&qword_1EE2EDEA0);
    v35 = v70;
    sub_1E68B3AB0();
    (*(v69 + 8))(v32, v35);
    (*(v29 + 8))(v30, v31);
    return (*(v85 + 8))(v34, v33);
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096FF8);
  v43 = v42[12];
  v44 = &v23[v42[16]];
  v46 = *v44;
  v45 = *(v44 + 1);
  v74 = v46;
  v80 = v45;
  v47 = &v23[v42[20]];
  v49 = *v47;
  v48 = *(v47 + 1);
  v71 = v49;
  v82 = v48;
  v50 = v79;
  sub_1E6774DF4(v23, v79);
  v51 = v76;
  sub_1E6774DF4(&v23[v43], v76);
  v93 = 2;
  v52 = v75;
  v53 = v84;
  sub_1E68B3A30();
  v92 = 0;
  sub_1E682ABCC(&qword_1EE2EDEA0);
  v54 = v78;
  v55 = v83;
  sub_1E68B3A60();
  if (v55)
  {

    (*(v77 + 8))(v52, v54);
    sub_1E6744A10(v51, &qword_1ED096E68);
    v56 = v50;
  }

  else
  {
    v91 = 1;
    sub_1E68B3A60();
    v90 = 2;
    sub_1E68B3A70();

    v89 = 3;
    sub_1E68B3A70();
    v57 = v79;

    (*(v77 + 8))(v52, v54);
    sub_1E6744A10(v51, &qword_1ED096E68);
    v56 = v57;
  }

  sub_1E6744A10(v56, &qword_1ED096E68);
  return (*(v85 + 8))(v86, v53);
}

uint64_t FullWidthItemDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v103 = a4;
  v7 = type metadata accessor for FullWidthItemDescriptor.ExpandingTextCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v99 = v7;
  v92 = sub_1E68B3A20();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v100 = &v81 - v8;
  v9 = type metadata accessor for FullWidthItemDescriptor.ButtonCodingKeys();
  v10 = swift_getWitnessTable();
  v97 = v9;
  v96 = v10;
  v89 = sub_1E68B3A20();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v102 = &v81 - v11;
  v12 = type metadata accessor for FullWidthItemDescriptor.ArtworkCodingKeys();
  v13 = swift_getWitnessTable();
  v94 = v12;
  v93 = v13;
  v87 = sub_1E68B3A20();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v95 = &v81 - v14;
  type metadata accessor for FullWidthItemDescriptor.CodingKeys();
  v108 = swift_getWitnessTable();
  v107 = sub_1E68B3A20();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v16 = &v81 - v15;
  v104 = a2;
  v90 = a3;
  v17 = type metadata accessor for FullWidthItemDescriptor();
  v101 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v81 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v81 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v81 - v27;
  v29 = a1;
  v30 = a1[3];
  v109 = v29;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v106 = v16;
  v31 = v114;
  sub_1E68B3BC0();
  v114 = v31;
  if (!v31)
  {
    v82 = v25;
    v83 = v22;
    v84 = v19;
    v85 = v28;
    v108 = v17;
    v33 = v106;
    v32 = v107;
    *&v110 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v112 = sub_1E68B37A0();
    *(&v112 + 1) = v34;
    *&v113 = v35;
    *(&v113 + 1) = v36;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v37 = v110;
    if (v110 != 3)
    {
      v81 = v112;
      v110 = v112;
      v111 = v113;
      if (sub_1E68B36E0())
      {
        if (v37)
        {
          v38 = v85;
          if (v37 == 1)
          {
            LOBYTE(v110) = 1;
            v39 = v114;
            sub_1E68B3970();
            v40 = v103;
            v41 = v32;
            v42 = v105;
            v43 = v101;
            v114 = v39;
            if (v39)
            {
              (*(v105 + 8))(v33, v41);
LABEL_16:
              swift_unknownObjectRelease();
              return __swift_destroy_boxed_opaque_existential_1(v109);
            }

            sub_1E68B1820();
            sub_1E682ABCC(&qword_1ED097DB8);
            v55 = v83;
            v56 = v89;
            v57 = v102;
            v58 = v114;
            sub_1E68B3A00();
            v114 = v58;
            if (v58)
            {
              (*(v88 + 8))(v57, v56);
              (*(v42 + 8))(v33, v107);
              goto LABEL_16;
            }

            (*(v88 + 8))(v57, v56);
            (*(v42 + 8))(v33, v107);
            swift_unknownObjectRelease();
            v65 = v108;
            swift_storeEnumTagMultiPayload();
            v66 = v55;
          }

          else
          {
            LOBYTE(v110) = 2;
            v51 = v100;
            v52 = v114;
            sub_1E68B3970();
            v40 = v103;
            v53 = v33;
            v54 = v105;
            v114 = v52;
            if (v52)
            {
              (*(v105 + 8))(v53, v32);
              goto LABEL_16;
            }

            sub_1E68B1820();
            LOBYTE(v110) = 0;
            sub_1E682ABCC(&qword_1ED097DB8);
            v63 = v92;
            v64 = v114;
            sub_1E68B39B0();
            if (v64)
            {
              (*(v91 + 8))(v51, v63);
              (*(v54 + 8))(v106, v107);
              swift_unknownObjectRelease();
              v114 = v64;
              return __swift_destroy_boxed_opaque_existential_1(v109);
            }

            v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096FF8);
            v69 = v68[12];
            LOBYTE(v110) = 1;
            sub_1E68B39B0();
            v114 = 0;
            v70 = v69;
            LOBYTE(v110) = 2;
            v71 = v92;
            v72 = sub_1E68B39C0();
            v114 = 0;
            v73 = v84;
            v74 = &v84[v68[16]];
            *v74 = v72;
            v74[1] = v75;
            LOBYTE(v110) = 3;
            v76 = v114;
            v78 = sub_1E68B39C0();
            v114 = v76;
            if (v76)
            {
              (*(v91 + 8))(v51, v71);
              (*(v54 + 8))(v106, v107);

              swift_unknownObjectRelease();
              sub_1E6744A10(v73 + v70, &qword_1ED096E68);
              sub_1E6744A10(v73, &qword_1ED096E68);
              return __swift_destroy_boxed_opaque_existential_1(v109);
            }

            v79 = (v73 + v68[20]);
            v80 = v77;
            (*(v91 + 8))(v51, v71);
            (*(v54 + 8))(v106, v107);
            swift_unknownObjectRelease();
            *v79 = v78;
            v79[1] = v80;
            v65 = v108;
            swift_storeEnumTagMultiPayload();
            v66 = v73;
            v43 = v101;
            v38 = v85;
          }
        }

        else
        {
          LOBYTE(v110) = 0;
          v49 = v95;
          v50 = v114;
          sub_1E68B3970();
          v38 = v85;
          v114 = v50;
          if (v50)
          {
            (*(v105 + 8))(v33, v32);
            goto LABEL_16;
          }

          v59 = v82;
          v60 = v87;
          sub_1E68B3A00();
          v61 = v105;
          v114 = 0;
          (*(v86 + 8))(v49, v60);
          (*(v61 + 8))(v33, v32);
          swift_unknownObjectRelease();
          v65 = v108;
          swift_storeEnumTagMultiPayload();
          v43 = v101;
          v66 = v59;
          v40 = v103;
        }

        v67 = *(v43 + 32);
        v67(v38, v66, v65);
        v67(v40, v38, v65);
        return __swift_destroy_boxed_opaque_existential_1(v109);
      }
    }

    v44 = sub_1E68B3870();
    v45 = swift_allocError();
    v46 = v32;
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
    *v48 = v108;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v44 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v44);
    v114 = v45;
    swift_willThrow();
    (*(v105 + 8))(v33, v46);
    goto LABEL_16;
  }

  return __swift_destroy_boxed_opaque_existential_1(v109);
}

uint64_t FullWidthItemDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v34 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v37 = v34 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v36 = v34 - v12;
  v13 = sub_1E68B1820();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v2, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v14 + 32))(v17, v24, v13);
      MEMORY[0x1E69523D0](1);
      sub_1E682ABCC(&qword_1EE2EDE98);
      sub_1E68B3140();
      return (*(v14 + 8))(v17, v13);
    }

    else
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096FF8);
      v29 = v28[12];
      v30 = *&v24[v28[20]];
      v34[0] = *&v24[v28[16]];
      v34[1] = v30;
      v31 = v36;
      sub_1E6774DF4(v24, v36);
      sub_1E6774DF4(&v24[v29], v37);
      MEMORY[0x1E69523D0](2);
      sub_1E682854C(v31, v9);
      v32 = *(v14 + 48);
      if (v32(v9, 1, v13) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v14 + 32))(v17, v9, v13);
        sub_1E68B3B90();
        sub_1E682ABCC(&qword_1EE2EDE98);
        sub_1E68B3140();
        (*(v14 + 8))(v17, v13);
      }

      v33 = v35;
      sub_1E682854C(v37, v35);
      if (v32(v33, 1, v13) == 1)
      {
        sub_1E68B3B90();
      }

      else
      {
        (*(v14 + 32))(v17, v33, v13);
        sub_1E68B3B90();
        sub_1E682ABCC(&qword_1EE2EDE98);
        sub_1E68B3140();
        (*(v14 + 8))(v17, v13);
      }

      sub_1E68B31F0();

      sub_1E68B31F0();

      sub_1E6744A10(v37, &qword_1ED096E68);
      return sub_1E6744A10(v36, &qword_1ED096E68);
    }
  }

  else
  {
    (*(v19 + 32))(v22, v24, v18);
    MEMORY[0x1E69523D0](0);
    sub_1E68B3140();
    return (*(v19 + 8))(v22, v18);
  }
}

uint64_t sub_1E682ABCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E68B1820();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FullWidthItemDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  FullWidthItemDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E682AC60(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  FullWidthItemDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E682ACCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(sub_1E68B1820() - 8);
  v7 = *(v6 + 64);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 64);
  }

  v9 = *(v6 + 84);
  v10 = *(v6 + 80);
  if (!v9)
  {
    ++v7;
  }

  v11 = ((((v7 + ((v7 + v10) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_31;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 253) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v17 < 2)
    {
LABEL_31:
      v19 = *(a1 + v12);
      if (v19 >= 3)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_31;
  }

LABEL_20:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 254;
}

void sub_1E682AE88(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(sub_1E68B1820() - 8);
  v9 = *(v8 + 64);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 64);
  }

  v11 = *(v8 + 84);
  v12 = *(v8 + 80);
  if (!v11)
  {
    ++v9;
  }

  v13 = ((((v9 + ((v9 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 <= v10)
  {
    v13 = v10;
  }

  v14 = v13 + 1;
  if (a3 < 0xFE)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 253) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFD)
  {
    v16 = a2 - 254;
    if (v14 >= 4)
    {
      bzero(a1, v13 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v13 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_44:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v13] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_29;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

uint64_t sub_1E682B230(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    if (a1 != 6)
    {
      v6 = 0x6269737365636361;
    }

    if (a1 <= 8u)
    {
      return v6;
    }

    else
    {
      return 0x6269737365636361;
    }
  }

  else
  {
    v1 = 0x616D536172747865;
    v2 = 0x656772616CLL;
    v3 = 0x72614C6172747865;
    if (a1 != 4)
    {
      v3 = 0x7478456172747865;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C6C616D73;
    if (a1 != 1)
    {
      v4 = 0x6D756964656DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E682B3DC(uint64_t a1)
{
  v2 = sub_1E682C714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B418(uint64_t a1)
{
  v2 = sub_1E682C714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B454(uint64_t a1)
{
  v2 = sub_1E682C6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B490(uint64_t a1)
{
  v2 = sub_1E682C6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B4CC(uint64_t a1)
{
  v2 = sub_1E682C66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B508(uint64_t a1)
{
  v2 = sub_1E682C66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B544(uint64_t a1)
{
  v2 = sub_1E682C618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B580(uint64_t a1)
{
  v2 = sub_1E682C618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B5BC(uint64_t a1)
{
  v2 = sub_1E682C5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B5F8(uint64_t a1)
{
  v2 = sub_1E682C5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E682CAE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E682B670(uint64_t a1)
{
  v2 = sub_1E682C570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B6AC(uint64_t a1)
{
  v2 = sub_1E682C570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B6E8(uint64_t a1)
{
  v2 = sub_1E682C768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B724(uint64_t a1)
{
  v2 = sub_1E682C768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B760(uint64_t a1)
{
  v2 = sub_1E682C7BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B79C(uint64_t a1)
{
  v2 = sub_1E682C7BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B7D8(uint64_t a1)
{
  v2 = sub_1E682C810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B814(uint64_t a1)
{
  v2 = sub_1E682C810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B850(uint64_t a1)
{
  v2 = sub_1E682C960();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B88C(uint64_t a1)
{
  v2 = sub_1E682C960();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B8C8(uint64_t a1)
{
  v2 = sub_1E682C864();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B904(uint64_t a1)
{
  v2 = sub_1E682C864();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B940(uint64_t a1)
{
  v2 = sub_1E682C8B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B97C(uint64_t a1)
{
  v2 = sub_1E682C8B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E682B9B8(uint64_t a1)
{
  v2 = sub_1E682C90C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E682B9F4(uint64_t a1)
{
  v2 = sub_1E682C90C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicTypeSize.encode(to:)(void *a1, int a2)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099328);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099330);
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099338);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099340);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099348);
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v41 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099350);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v41 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099358);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v41 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099360);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v41 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099368);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v41 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099370);
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099378);
  v42 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099380);
  v41 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099388);
  v24 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v26 = &v41 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E682C570();
  v74 = v26;
  sub_1E68B3BD0();
  v27 = (v24 + 8);
  if (v73 > 5u)
  {
    if (v73 > 8u)
    {
      if (v73 == 9)
      {
        v85 = 9;
        sub_1E682C66C();
        v30 = v64;
        v29 = v74;
        v28 = v75;
        sub_1E68B3A30();
        v32 = v65;
        v31 = v66;
      }

      else if (v73 == 10)
      {
        v86 = 10;
        sub_1E682C618();
        v30 = v67;
        v29 = v74;
        v28 = v75;
        sub_1E68B3A30();
        v32 = v68;
        v31 = v69;
      }

      else
      {
        v87 = 11;
        sub_1E682C5C4();
        v30 = v70;
        v29 = v74;
        v28 = v75;
        sub_1E68B3A30();
        v32 = v71;
        v31 = v72;
      }
    }

    else
    {
      if (v73 == 6)
      {
        v82 = 6;
        sub_1E682C768();
        v37 = v55;
        v29 = v74;
        v28 = v75;
        sub_1E68B3A30();
        (*(v56 + 8))(v37, v57);
        return (*v27)(v29, v28);
      }

      if (v73 == 7)
      {
        v83 = 7;
        sub_1E682C714();
        v30 = v58;
        v29 = v74;
        v28 = v75;
        sub_1E68B3A30();
        v32 = v59;
        v31 = v60;
      }

      else
      {
        v84 = 8;
        sub_1E682C6C0();
        v30 = v61;
        v29 = v74;
        v28 = v75;
        sub_1E68B3A30();
        v32 = v62;
        v31 = v63;
      }
    }

    (*(v32 + 8))(v30, v31);
    return (*v27)(v29, v28);
  }

  if (v73 > 2u)
  {
    if (v73 == 3)
    {
      v79 = 3;
      sub_1E682C864();
      v38 = v46;
      v29 = v74;
      v28 = v75;
      sub_1E68B3A30();
      (*(v47 + 8))(v38, v48);
    }

    else if (v73 == 4)
    {
      v80 = 4;
      sub_1E682C810();
      v33 = v49;
      v29 = v74;
      v28 = v75;
      sub_1E68B3A30();
      (*(v50 + 8))(v33, v51);
    }

    else
    {
      v81 = 5;
      sub_1E682C7BC();
      v40 = v52;
      v29 = v74;
      v28 = v75;
      sub_1E68B3A30();
      (*(v53 + 8))(v40, v54);
    }
  }

  else
  {
    if (!v73)
    {
      v76 = 0;
      sub_1E682C960();
      v34 = v74;
      v35 = v75;
      sub_1E68B3A30();
      (*(v41 + 8))(v23, v21);
      return (*v27)(v34, v35);
    }

    if (v73 == 1)
    {
      v77 = 1;
      sub_1E682C90C();
      v29 = v74;
      v28 = v75;
      sub_1E68B3A30();
      (*(v42 + 8))(v20, v18);
    }

    else
    {
      v78 = 2;
      sub_1E682C8B8();
      v39 = v43;
      v29 = v74;
      v28 = v75;
      sub_1E68B3A30();
      (*(v44 + 8))(v39, v45);
    }
  }

  return (*v27)(v29, v28);
}

unint64_t sub_1E682C570()
{
  result = qword_1EE2EBDC0;
  if (!qword_1EE2EBDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDC0);
  }

  return result;
}

unint64_t sub_1E682C5C4()
{
  result = qword_1ED099390;
  if (!qword_1ED099390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099390);
  }

  return result;
}

unint64_t sub_1E682C618()
{
  result = qword_1ED099398;
  if (!qword_1ED099398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099398);
  }

  return result;
}

unint64_t sub_1E682C66C()
{
  result = qword_1ED0993A0;
  if (!qword_1ED0993A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993A0);
  }

  return result;
}

unint64_t sub_1E682C6C0()
{
  result = qword_1ED0993A8;
  if (!qword_1ED0993A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993A8);
  }

  return result;
}

unint64_t sub_1E682C714()
{
  result = qword_1ED0993B0;
  if (!qword_1ED0993B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993B0);
  }

  return result;
}

unint64_t sub_1E682C768()
{
  result = qword_1ED0993B8;
  if (!qword_1ED0993B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993B8);
  }

  return result;
}

unint64_t sub_1E682C7BC()
{
  result = qword_1ED0993C0;
  if (!qword_1ED0993C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993C0);
  }

  return result;
}

unint64_t sub_1E682C810()
{
  result = qword_1ED0993C8;
  if (!qword_1ED0993C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993C8);
  }

  return result;
}

unint64_t sub_1E682C864()
{
  result = qword_1EE2EBDA8;
  if (!qword_1EE2EBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDA8);
  }

  return result;
}

unint64_t sub_1E682C8B8()
{
  result = qword_1ED0993D0;
  if (!qword_1ED0993D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993D0);
  }

  return result;
}

unint64_t sub_1E682C90C()
{
  result = qword_1ED0993D8;
  if (!qword_1ED0993D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993D8);
  }

  return result;
}

unint64_t sub_1E682C960()
{
  result = qword_1ED0993E0;
  if (!qword_1ED0993E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993E0);
  }

  return result;
}

uint64_t sub_1E682C9CC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E682CEB8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DynamicTypeSize.hashValue.getter(unsigned __int8 a1)
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E682CAE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D536172747865 && a2 == 0xEA00000000006C6CLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6C616D73 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656772616CLL && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72614C6172747865 && a2 == 0xEA00000000006567 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7478456172747865 && a2 == 0xEF656772614C6172 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E2EB0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00317974696C69 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00327974696C69 || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00337974696C69 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00347974696C69 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6269737365636361 && a2 == 0xEE00357974696C69)
  {

    return 11;
  }

  else
  {
    v5 = sub_1E68B3B00();

    if (v5)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1E682CEB8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0993F0);
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v86 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0993F8);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v55 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099400);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v90 = &v55 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099408);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v85 = &v55 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099410);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v84 = &v55 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099418);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v83 = &v55 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099420);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v89 = &v55 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099428);
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v88 = &v55 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099430);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v87 = &v55 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099438);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v82 = &v55 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099440);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099448);
  v59 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099450);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - v21;
  v23 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1E682C570();
  v24 = v92;
  sub_1E68B3BC0();
  if (v24)
  {
    goto LABEL_12;
  }

  v56 = v18;
  v55 = v16;
  v57 = v15;
  v25 = v87;
  v26 = v88;
  v27 = v89;
  v28 = v90;
  v58 = 0;
  v29 = v91;
  v92 = v20;
  v30 = sub_1E68B3A10();
  v31 = (2 * *(v30 + 16)) | 1;
  v94 = v30;
  v95 = v30 + 32;
  v96 = 0;
  v97 = v31;
  v32 = sub_1E6768D94();
  v33 = v22;
  if (v32 != 12 && v96 == v97 >> 1)
  {
    v20 = v32;
    if (v32 <= 5u)
    {
      if (v32 <= 2u)
      {
        v34 = v58;
        if (v32)
        {
          if (v32 == 1)
          {
            v98 = 1;
            sub_1E682C90C();
            v35 = v57;
            sub_1E68B3970();
            if (!v34)
            {
              (*(v60 + 8))(v35, v61);
LABEL_45:
              v41 = v92;
              goto LABEL_47;
            }
          }

          else
          {
            v98 = 2;
            sub_1E682C8B8();
            v51 = v82;
            sub_1E68B3970();
            if (!v34)
            {
              (*(v62 + 8))(v51, v63);
              goto LABEL_45;
            }
          }
        }

        else
        {
          v98 = 0;
          sub_1E682C960();
          v47 = v56;
          sub_1E68B3970();
          if (!v34)
          {
            (*(v59 + 8))(v47, v55);
            goto LABEL_45;
          }
        }

        v41 = v92;
        goto LABEL_41;
      }

      v41 = v92;
      v44 = v58;
      if (v32 == 3)
      {
        v98 = 3;
        sub_1E682C864();
        sub_1E68B3970();
        if (!v44)
        {
          (*(v64 + 8))(v25, v65);
          goto LABEL_47;
        }
      }

      else if (v32 == 4)
      {
        v98 = 4;
        sub_1E682C810();
        sub_1E68B3970();
        if (!v44)
        {
          (*(v67 + 8))(v26, v66);
          goto LABEL_47;
        }
      }

      else
      {
        v98 = 5;
        sub_1E682C7BC();
        sub_1E68B3970();
        if (!v44)
        {
          (*(v69 + 8))(v27, v68);
          goto LABEL_47;
        }
      }

      goto LABEL_41;
    }

    if (v32 <= 8u)
    {
      v41 = v92;
      if (v32 == 6)
      {
        v98 = 6;
        sub_1E682C768();
        v48 = v83;
        v49 = v58;
        sub_1E68B3970();
        if (!v49)
        {
          (*(v70 + 8))(v48, v71);
          goto LABEL_47;
        }
      }

      else
      {
        v42 = v58;
        if (v32 == 7)
        {
          v98 = 7;
          sub_1E682C714();
          v43 = v84;
          sub_1E68B3970();
          if (!v42)
          {
            (*(v72 + 8))(v43, v73);
LABEL_47:
            (*(v41 + 8))(v33, v19);
LABEL_50:
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v93);
            return v20;
          }
        }

        else
        {
          v98 = 8;
          sub_1E682C6C0();
          v52 = v85;
          sub_1E68B3970();
          if (!v42)
          {
            (*(v74 + 8))(v52, v75);
            goto LABEL_47;
          }
        }
      }

LABEL_41:
      (*(v41 + 8))(v33, v19);
      goto LABEL_11;
    }

    v45 = v92;
    if (v32 == 9)
    {
      v98 = 9;
      sub_1E682C66C();
      v50 = v58;
      sub_1E68B3970();
      if (!v50)
      {
        (*(v76 + 8))(v28, v77);
        goto LABEL_49;
      }
    }

    else if (v32 == 10)
    {
      v98 = 10;
      sub_1E682C618();
      v46 = v58;
      sub_1E68B3970();
      if (!v46)
      {
        (*(v78 + 8))(v29, v79);
LABEL_49:
        (*(v45 + 8))(v33, v19);
        goto LABEL_50;
      }
    }

    else
    {
      v98 = 11;
      sub_1E682C5C4();
      v53 = v86;
      v54 = v58;
      sub_1E68B3970();
      if (!v54)
      {
        (*(v80 + 8))(v53, v81);
        goto LABEL_49;
      }
    }

    (*(v45 + 8))(v33, v19);
    goto LABEL_11;
  }

  v36 = v19;
  v37 = sub_1E68B3870();
  swift_allocError();
  v39 = v38;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050) + 48);
  *v39 = &type metadata for DynamicTypeSize;
  sub_1E68B3980();
  sub_1E68B3860();
  (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
  swift_willThrow();
  (*(v92 + 8))(v33, v36);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v93);
  return v20;
}

unint64_t sub_1E682DC98()
{
  result = qword_1EE2EBCF8;
  if (!qword_1EE2EBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBCF8);
  }

  return result;
}

uint64_t sub_1E682DCFC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E682DD8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E682DF10()
{
  result = qword_1ED0993E8;
  if (!qword_1ED0993E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0993E8);
  }

  return result;
}

unint64_t sub_1E682DF68()
{
  result = qword_1EE2EBD58;
  if (!qword_1EE2EBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD58);
  }

  return result;
}

unint64_t sub_1E682DFC0()
{
  result = qword_1EE2EBD60;
  if (!qword_1EE2EBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD60);
  }

  return result;
}

unint64_t sub_1E682E018()
{
  result = qword_1EE2EBD88;
  if (!qword_1EE2EBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD88);
  }

  return result;
}

unint64_t sub_1E682E070()
{
  result = qword_1EE2EBD90;
  if (!qword_1EE2EBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD90);
  }

  return result;
}

unint64_t sub_1E682E0C8()
{
  result = qword_1EE2EBD78;
  if (!qword_1EE2EBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD78);
  }

  return result;
}

unint64_t sub_1E682E120()
{
  result = qword_1EE2EBD80;
  if (!qword_1EE2EBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD80);
  }

  return result;
}

unint64_t sub_1E682E178()
{
  result = qword_1EE2EBD98;
  if (!qword_1EE2EBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD98);
  }

  return result;
}

unint64_t sub_1E682E1D0()
{
  result = qword_1EE2EBDA0;
  if (!qword_1EE2EBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDA0);
  }

  return result;
}

unint64_t sub_1E682E228()
{
  result = qword_1EE2EBD68;
  if (!qword_1EE2EBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD68);
  }

  return result;
}

unint64_t sub_1E682E280()
{
  result = qword_1EE2EBD70;
  if (!qword_1EE2EBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD70);
  }

  return result;
}

unint64_t sub_1E682E2D8()
{
  result = qword_1EE2EBDD8;
  if (!qword_1EE2EBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDD8);
  }

  return result;
}

unint64_t sub_1E682E330()
{
  result = qword_1EE2EBDE0[0];
  if (!qword_1EE2EBDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EBDE0);
  }

  return result;
}

unint64_t sub_1E682E388()
{
  result = qword_1EE2EBDC8;
  if (!qword_1EE2EBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDC8);
  }

  return result;
}

unint64_t sub_1E682E3E0()
{
  result = qword_1EE2EBDD0;
  if (!qword_1EE2EBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDD0);
  }

  return result;
}

unint64_t sub_1E682E438()
{
  result = qword_1EE2EBD48;
  if (!qword_1EE2EBD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD48);
  }

  return result;
}

unint64_t sub_1E682E490()
{
  result = qword_1EE2EBD50;
  if (!qword_1EE2EBD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD50);
  }

  return result;
}

unint64_t sub_1E682E4E8()
{
  result = qword_1EE2EBD38;
  if (!qword_1EE2EBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD38);
  }

  return result;
}

unint64_t sub_1E682E540()
{
  result = qword_1EE2EBD40;
  if (!qword_1EE2EBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD40);
  }

  return result;
}

unint64_t sub_1E682E598()
{
  result = qword_1EE2EBD28;
  if (!qword_1EE2EBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD28);
  }

  return result;
}

unint64_t sub_1E682E5F0()
{
  result = qword_1EE2EBD30;
  if (!qword_1EE2EBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD30);
  }

  return result;
}

unint64_t sub_1E682E648()
{
  result = qword_1EE2EBD18;
  if (!qword_1EE2EBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD18);
  }

  return result;
}

unint64_t sub_1E682E6A0()
{
  result = qword_1EE2EBD20;
  if (!qword_1EE2EBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD20);
  }

  return result;
}

unint64_t sub_1E682E6F8()
{
  result = qword_1EE2EBD08;
  if (!qword_1EE2EBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD08);
  }

  return result;
}

unint64_t sub_1E682E750()
{
  result = qword_1EE2EBD10;
  if (!qword_1EE2EBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBD10);
  }

  return result;
}

unint64_t sub_1E682E7A8()
{
  result = qword_1EE2EBDB0;
  if (!qword_1EE2EBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDB0);
  }

  return result;
}

unint64_t sub_1E682E800()
{
  result = qword_1EE2EBDB8;
  if (!qword_1EE2EBDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EBDB8);
  }

  return result;
}

uint64_t Set<>.transformed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B1EF0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1E69E7CC0];
  sub_1E682EBBC(&qword_1EE2EA670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099458);
  sub_1E682EB58();
  v21 = a2;
  sub_1E68B37B0();
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v19 = (v5 + 8);
  v22 = a1;

  v12 = 0;
  while (v9)
  {
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = *(*(v22 + 48) + (v15 | (v12 << 6)));
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = v20;
        sub_1E68B1EC0();
        goto LABEL_4;
      }
    }

    else
    {
      v17 = v20;
      if (v16)
      {
        sub_1E68B1EE0();
      }

      else
      {
        sub_1E68B1ED0();
      }

LABEL_4:
      sub_1E682EBBC(&qword_1EE2EA678);
      v13 = v21;
      sub_1E68B3320();
      v18 = *v19;
      v18(v13, v4);
      sub_1E68B3320();
      v25 = v23 | v24;
      sub_1E682EBBC(&qword_1EE2EA668);
      sub_1E68B3C00();
      result = (v18)(v17, v4);
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
    }

    v9 = *(a1 + 56 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E682EB58()
{
  result = qword_1EE2EA4A8;
  if (!qword_1EE2EA4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA4A8);
  }

  return result;
}

uint64_t sub_1E682EBBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E68B1EF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t View.magicPocketTarget()(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E68B1E40();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  MEMORY[0x1E69512E0](v8);
  v11 = sub_1E682ED8C();
  v15[0] = a2;
  v15[1] = v11;
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v6, v3, WitnessTable);
  v13 = *(v4 + 8);
  v13(v6, v3);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v10, v3, WitnessTable);
  return (v13)(v10, v3);
}

unint64_t sub_1E682ED8C()
{
  result = qword_1ED099468[0];
  if (!qword_1ED099468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED099468);
  }

  return result;
}

uint64_t View.magicPocket<A, B>(backgroundStyle:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v42 = a7;
  v37 = a5;
  v38 = a8;
  v36[0] = a4;
  v40 = a3;
  v41 = a2;
  v39 = a1;
  v43 = a9;
  v11 = *(a6 - 8);
  v36[1] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v14;
  v47 = v15;
  v48 = v16;
  v49 = v17;
  v18 = type metadata accessor for MagicPocketViewModifier();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v36 - v20;
  v22 = sub_1E68B1E40();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v36 - v28;
  (*(v11 + 16))(v13, v39, a6, v27);
  v30 = v40;

  sub_1E682F104(v13, v41, v30, v37, a6, v21);
  v31 = v42;
  MEMORY[0x1E69512E0](v21, v36[0], v18, v42);
  (*(v19 + 8))(v21, v18);
  WitnessTable = swift_getWitnessTable();
  v44 = v31;
  v45 = WitnessTable;
  v33 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v25, v22, v33);
  v34 = *(v23 + 8);
  v34(v25, v22);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v29, v22, v33);
  return (v34)(v29, v22);
}

uint64_t sub_1E682F104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v11 = type metadata accessor for MagicPocketViewModifier();
  v12 = (a6 + *(v11 + 52));
  *v12 = a2;
  v12[1] = a3;
  v13 = (a6 + *(v11 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0994F8);
  result = sub_1E68B2BC0();
  *v13 = a4;
  v13[1] = a5;
  return result;
}

void sub_1E682F1F0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1E67482E4();
    if (v1 <= 0x3F)
    {
      sub_1E682F5A0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E682F290(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1E682F3D4(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_1E682F5A0()
{
  if (!qword_1ED0994F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0994F8);
    v0 = sub_1E68B2C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED0994F0);
    }
  }
}

uint64_t sub_1E682F658@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099510);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E68B74F0;
  *(v4 + 32) = a1;
  *a2 = v4;
}

uint64_t sub_1E682F6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B2C10();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099500);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099508);
  v7 = (a2 + *(result + 36));
  *v7 = v4;
  v7[1] = sub_1E682F658;
  v7[2] = 0;
  return result;
}

uint64_t sub_1E682F788(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_1E68B3850();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099538);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1E682F88C@<X0>(void *a1@<X8>)
{
  if (qword_1ED096D60 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED099460;
}

uint64_t sub_1E682F948@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v48 = a3;
  v45 = *(a2 - 1);
  v47 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v44 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_1E68B22E0();
  *&v42 = a2[2];
  sub_1E68B1E40();
  v5 = a2[3];
  *&v41 = a2[5];
  sub_1E68B23C0();
  sub_1E68B1E40();
  sub_1E68B2220();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E6981580];
  v62 = MEMORY[0x1E6981580];
  v63 = WitnessTable;
  v8 = MEMORY[0x1E697E858];
  v60 = swift_getWitnessTable();
  v61 = v7;
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B21F0();
  sub_1E68B1E40();
  v58 = a2[4];
  v9 = v58;
  v59 = MEMORY[0x1E697EBF8];
  v38 = v8;
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v56 = v10;
  v57 = v11;
  swift_getWitnessTable();
  v36[1] = sub_1E68B2170();
  v12 = sub_1E68B1E40();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v36 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099518);
  v15 = sub_1E68B1E40();
  v40 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v36[0] = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v37 = v36 - v18;
  *&v19 = v42;
  *(&v19 + 1) = v5;
  v42 = v19;
  *&v20 = v9;
  *(&v20 + 1) = v41;
  v41 = v20;
  v49 = v19;
  v50 = v20;
  v21 = v43;
  v51 = v43;
  sub_1E68B21C0();
  v35 = swift_getWitnessTable();
  sub_1E68B2830();
  v22 = v45;
  v23 = v44;
  (*(v45 + 16))(v44, v21, a2);
  v24 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 16) = v42;
  *(v25 + 32) = v26;
  (*(v22 + 32))(v25 + v24, v23, a2);
  v27 = swift_getWitnessTable();
  v54 = v35;
  v55 = v27;
  v28 = swift_getWitnessTable();
  sub_1E6830F34();
  sub_1E6830F88();
  v29 = v36[0];
  sub_1E68B28D0();

  (*(v39 + 8))(v14, v12);
  v30 = sub_1E673F530(&qword_1ED099548, &qword_1ED099518);
  v52 = v28;
  v53 = v30;
  v31 = swift_getWitnessTable();
  v32 = v37;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v29, v15, v31);
  v33 = *(v40 + 8);
  v33(v29, v15);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v32, v15, v31);
  return (v33)(v32, v15);
}

uint64_t sub_1E682FFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a1;
  v44 = a6;
  v42 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E68B1E40();
  v43 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v31 - v11;
  v33 = a3;
  v32 = a5;
  sub_1E68B23C0();
  sub_1E68B1E40();
  sub_1E68B2220();
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x1E6981580];
  v60 = MEMORY[0x1E6981580];
  v61 = WitnessTable;
  v38 = MEMORY[0x1E697E858];
  v58 = swift_getWitnessTable();
  v59 = v13;
  swift_getWitnessTable();
  v35 = sub_1E68B1D70();
  v36 = swift_getWitnessTable();
  v37 = sub_1E68B21F0();
  v14 = sub_1E68B1E40();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v54 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v21 = type metadata accessor for MagicPocketViewModifier();
  v22 = v41;
  v23 = v40;
  (*(v41 + *(v21 + 52)))();
  sub_1E68B2E80();
  v24 = v39;
  sub_1E68B2A00();
  (*(v42 + 8))(v23, a2);
  v45 = a2;
  v46 = v33;
  v47 = a4;
  v48 = v32;
  v49 = v22;
  sub_1E68B2E80();
  v52 = a4;
  v53 = MEMORY[0x1E697EBF8];
  v25 = v34;
  v26 = swift_getWitnessTable();
  sub_1E68B2740();
  (*(v43 + 8))(v24, v25);
  v27 = swift_getWitnessTable();
  v50 = v26;
  v51 = v27;
  v28 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v17, v14, v28);
  v29 = *(v15 + 8);
  v29(v17, v14);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v20, v14, v28);
  return (v29)(v20, v14);
}

uint64_t sub_1E6830504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24[1] = a6;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v11 = type metadata accessor for MagicPocketViewModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - v14;
  (*(v12 + 16))(v24 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v12 + 32))(&v17[v16], v15, v11);
  sub_1E68B23C0();
  sub_1E68B1E40();
  sub_1E68B2220();
  WitnessTable = swift_getWitnessTable();
  v19 = MEMORY[0x1E6981580];
  v29 = MEMORY[0x1E6981580];
  v30 = WitnessTable;
  v27 = swift_getWitnessTable();
  v28 = v19;
  swift_getWitnessTable();
  v25 = sub_1E68B1D60();
  v26 = v20;
  v21 = sub_1E68B1D70();
  v22 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(&v25, v21, v22);

  v25 = v31;
  v26 = v32;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(&v25, v21, v22);
}

uint64_t sub_1E68307A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v33 = a1;
  v37 = a6;
  v36 = sub_1E68B23C0();
  v10 = sub_1E68B1E40();
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = sub_1E68B2220();
  v17 = *(v16 - 8);
  v34 = v16;
  v35 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32 - v18;
  v46[0] = a2;
  v46[1] = a3;
  v46[2] = a4;
  v46[3] = a5;
  v20 = type metadata accessor for MagicPocketViewModifier();
  v21 = sub_1E6830B8C(v33, v20);
  v22 = sub_1E68B2B20();
  v23 = MEMORY[0x1E6981580];
  v46[0] = v22;
  if (v21)
  {
    sub_1E68B2500();
    sub_1E68B2750();

    WitnessTable = swift_getWitnessTable();
    v38 = v23;
    v39 = WitnessTable;
    v25 = swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v12, v10, v25);
    v26 = *(v32 + 8);
    v26(v12, v10);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v15, v10, v25);
    sub_1E6744CC0(v12, v10);
    v26(v12, v10);
    v26(v15, v10);
  }

  else
  {
    v27 = swift_getWitnessTable();
    v44 = v23;
    v45 = v27;
    swift_getWitnessTable();
    sub_1E6744DB8(v46, v10, MEMORY[0x1E69815C0]);
  }

  v28 = swift_getWitnessTable();
  v42 = v23;
  v43 = v28;
  v40 = swift_getWitnessTable();
  v41 = v23;
  v29 = v34;
  v30 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v19, v29, v30);
  return (*(v35 + 8))(v19, v29);
}

uint64_t sub_1E6830B8C(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 56));
  v5 = *v4;
  v6 = v4[1];
  v17 = *v4;
  v18 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099550);
  sub_1E68B2BD0();
  v7 = *(v16 + 16);

  if (v7)
  {
    sub_1E68B1C60();
    v9 = v8;
    v11 = v10;
    v17 = v5;
    v18 = v6;
    v12 = sub_1E68B2BD0();
    MEMORY[0x1EEE9AC00](v12);
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = a1;
    v15[5] = v9;
    v15[6] = v11;
    v13 = sub_1E6830DB4(sub_1E68312D0, v15, v16);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1E6830CA4()
{
  type metadata accessor for MagicPocketViewModifier();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099550);
  return sub_1E68B2BE0();
}

BOOL sub_1E6830D24(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  type metadata accessor for CGRect(0);
  sub_1E68B1CA0();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return CGRectIntersectsRect(v10, v9);
}

uint64_t sub_1E6830DB4(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_1E6830E88()
{
  type metadata accessor for MagicPocketViewModifier();

  return sub_1E6830CA4();
}

unint64_t sub_1E6830F34()
{
  result = qword_1ED099520;
  if (!qword_1ED099520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099520);
  }

  return result;
}

unint64_t sub_1E6830F88()
{
  result = qword_1ED099528;
  if (!qword_1ED099528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0994F8);
    sub_1E683100C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099528);
  }

  return result;
}

unint64_t sub_1E683100C()
{
  result = qword_1ED099530;
  if (!qword_1ED099530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099538);
    sub_1E6831090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099530);
  }

  return result;
}

unint64_t sub_1E6831090()
{
  result = qword_1ED099540;
  if (!qword_1ED099540)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099540);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{
  v3 = *(v0 + 24);
  v1 = *(type metadata accessor for MagicPocketViewModifier() - 8);
  (*(*(v3 - 8) + 8))(v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E6831214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  type metadata accessor for MagicPocketViewModifier();

  return sub_1E68307A0(a1, v5, v6, v7, v8, a2);
}

unint64_t sub_1E6831308()
{
  result = qword_1ED099558;
  if (!qword_1ED099558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099508);
    sub_1E673F530(&qword_1ED099560, &qword_1ED099500);
    sub_1E673F530(&qword_1ED099568, &qword_1ED099570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099558);
  }

  return result;
}

uint64_t CanvasLayout.densityFactor<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v79 = a5;
  v80 = a1;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = type metadata accessor for CanvasVerticalGridLayout();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v67 - v12;
  v13 = type metadata accessor for CanvasHorizontalGridLayout();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v67 - v16;
  v17 = type metadata accessor for CanvasGridAxis();
  v76 = *(v17 - 8);
  v77 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v67 - v21;
  v78 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v67 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v67 - v32;
  v81 = v7;
  v82 = a3;
  v83 = v8;
  v84 = a4;
  v34 = type metadata accessor for CanvasSectionLayout();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v67 - v36;
  (*(v38 + 16))(&v67 - v36, v80, v34, v35);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      goto LABEL_11;
    }

    v51 = v78;
    (*(v78 + 32))(v33, v37, v7);
    sub_1E68B3110();
    result = (*(v51 + 8))(v33, v7);
  }

  else
  {
    if (result != 2)
    {
      if (result == 3)
      {
        v41 = v75;
        v40 = v76;
        v42 = v77;
        (*(v76 + 32))(v75, v37, v77);
        (*(v40 + 16))(v19, v41, v42);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v43 = v71;
          v44 = v68;
          v45 = v19;
          v46 = v72;
          (*(v71 + 32))(v68, v45, v72);
          v47 = v67;
          (*(v43 + 16))(v67, v44, v46);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
            v49 = v47;
            v50 = v78;
            (*(v78 + 32))(v30, &v49[*(TupleTypeMetadata2 + 48)], v7);
            sub_1E68B3110();
            (*(v50 + 8))(v30, v7);
            (*(v43 + 8))(v44, v46);
LABEL_15:
            result = (*(v40 + 8))(v41, v42);
            goto LABEL_16;
          }

          (*(v43 + 8))(v44, v46);
          result = (*(v40 + 8))(v41, v42);
          v65 = *v47;
          v66 = *(v47 + 2);
        }

        else
        {
          v55 = v73;
          v54 = v74;
          v56 = v70;
          (*(v73 + 32))(v70, v19, v74);
          v57 = v69;
          (*(v55 + 16))(v69, v56, v54);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v58 = v57;
            v59 = v56;
            v60 = v78;
            (*(v78 + 32))(v27, v58, v7);
            sub_1E68B3110();
            (*(v60 + 8))(v27, v7);
            (*(v55 + 8))(v59, v54);
            goto LABEL_15;
          }

          (*(v55 + 8))(v56, v54);
          result = (*(v40 + 8))(v41, v42);
          v65 = *v57;
          v66 = *(v57 + 1);
        }

        v53 = v79;
        *v79 = v65;
        v53[1] = v66;
LABEL_12:
        v53[2] = 1;
        return result;
      }

      result = (*(*(*&a3 - 8) + 8))(v37, COERCE_DOUBLE(*&a3));
LABEL_11:
      v53 = v79;
      *v79 = 1;
      v53[1] = 0;
      goto LABEL_12;
    }

    v52 = v78;
    (*(v78 + 32))(v24, v37, v7);
    sub_1E68B3110();
    result = (*(v52 + 8))(v24, v7);
  }

LABEL_16:
  v61 = v83;
  v62 = v82;
  if (v84)
  {
    v63 = 1;
  }

  else
  {
    v63 = v81;
  }

  if (v84)
  {
    v62 = 0.0;
    v61 = 1;
  }

  v64 = v79;
  *v79 = v63;
  *(v64 + 1) = v62;
  v64[2] = v61;
  return result;
}

uint64_t CanvasSectionDescriptor.transformed()@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v24 = *(a1 + 56);
  v25 = a2;
  v4 = sub_1E68B3750();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = *(a1 + 16);
  v22 = *(a1 + 72);
  v23 = v8;
  v9 = *(a1 + 88);
  v10 = *(a1 + 160);
  v26[0] = v8;
  v26[1] = v22;
  v26[2] = v9;
  v26[3] = v10;
  type metadata accessor for CanvasSectionHeader();
  v11 = sub_1E68B3750();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  v15 = v2[1];
  v21 = *v2;
  (*(v16 + 16))(&v20 - v13, v2 + *(a1 + 184), v12);
  v17 = *(a1 + 192);
  LOBYTE(v26[0]) = *(v2 + *(a1 + 188));
  v18 = *(v2 + v17);
  (*(v5 + 16))(v7, v2 + *(a1 + 196), v4);
  CanvasSectionViewDescriptor.init(identifier:header:footer:items:metrics:)(v21, v15, v14, v26, v18, v7, v25);
}

uint64_t LazyCanvasSectionViewDescriptor.transformed(with:missingPlaceholders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = v4;
  v51.i64[0] = a2;
  v50.i64[0] = a1;
  v45 = a4;
  v52 = *(a3 + 56);
  v7 = sub_1E68B3750();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v34 - v9;
  v10 = *(a3 + 64);
  v11 = *(a3 + 144);
  v48 = *(a3 + 16);
  v66 = v48;
  v67.i64[0] = v10;
  v12 = v10;
  v36 = v10;
  v37 = v11;
  v8.i64[0] = v48;
  v49 = v8;
  v67.i64[1] = *(a3 + 80);
  v68.i64[0] = v11;
  v13 = v11;
  v14 = v67.u64[1];
  v35 = v67.i64[1];
  type metadata accessor for CanvasSectionHeader();
  v15 = sub_1E68B3750();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v40 = &v34 - v17;
  v18 = v5[1];
  v41 = *v5;
  v39 = v18;
  v20 = (*(v19 + 16))(&v34 - v17, v5 + *(a3 + 164), v16);
  v21 = *(a3 + 172);
  v76[0] = *(v5 + *(a3 + 168));
  v75 = *(v5 + v21);
  v22 = *(a3 + 72);
  v20.i64[0] = v14;
  v47 = v20;
  v38 = *(a3 + 136);
  v61 = v38;
  v62 = v13;
  v63 = *(a3 + 152);
  v23 = v63;
  v64 = v50.i64[0];
  v65 = v51.i64[0];

  v50 = *(a3 + 24);
  v24 = *(a3 + 40);
  *&v25 = vdupq_laneq_s64(v24, 1).u64[0];
  *(&v25 + 1) = v52;
  v67 = v50;
  *&v26 = v12;
  *(&v26 + 1) = v22;
  v55 = v25;
  v56 = v26;
  v51 = v24;
  v53 = vzip1q_s64(v49, v50);
  v54 = vzip1q_s64(vdupq_laneq_s64(v50, 1), v24);
  v68 = v24;
  v27 = v48;
  v66 = v48;
  v49 = *(a3 + 88);
  v28 = vzip1q_s64(v47, v49);
  v71 = v49;
  v29 = *(a3 + 104);
  v46 = *(a3 + 120);
  v47 = v29;
  v60 = v46.i64[1];
  v57 = v28;
  v58 = vzip1q_s64(vdupq_laneq_s64(v49, 1), v29);
  v59 = vextq_s8(v29, v46, 8uLL);
  v73 = v46;
  v72 = v29;
  v30 = v35;
  v69 = v22;
  v70 = v35;
  v74 = v23;
  type metadata accessor for LazyCanvasItemDescriptor();
  sub_1E68B33B0();
  v67 = v50;
  v68 = v51;
  v66 = v27;
  v69 = v22;
  v70 = v30;
  v71 = v49;
  v72 = v47;
  v73 = v46;
  v74 = v23;
  type metadata accessor for CanvasItemDescriptor();
  swift_getWitnessTable();
  v31 = sub_1E68B32E0();

  v32 = v42;
  (*(v43 + 16))(v42, v5 + *(a3 + 176), v44);
  return CanvasSectionViewDescriptor.init(identifier:header:footer:items:metrics:)(v41, v39, v40, v76, v31, v32, v45);
}

uint64_t sub_1E6832230@<X0>(ValueMetadata *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for LazyCanvasItemDescriptor();
  LazyCanvasItemDescriptor.transformed(with:missingPlaceholders:)(a1, a2, v4, a3);
  v5 = type metadata accessor for CanvasItemDescriptor();
  return (*(*(v5 - 8) + 56))(a3, 0, 1, v5);
}

uint64_t sub_1E68323D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = *(a1 + 32);
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for SummaryCardView();
  v26 = a9 + v25[9];
  v27 = *(a1 + 16);
  *v26 = *a1;
  *(v26 + 1) = v27;
  *(v26 + 4) = v24;
  (*(*(a17 - 8) + 32))(a9 + v25[10], a2, a17);
  v28 = v25[11];
  v29 = sub_1E68B1A10();
  (*(*(v29 - 8) + 32))(a9 + v28, a3, v29);
  v30 = (a9 + v25[12]);
  *v30 = a4;
  v30[1] = a5;
  v30[2] = a6;
  v30[3] = a7;
  v31 = a9 + v25[13];
  *v31 = a8;
  *(v31 + 8) = a10;
  *(v31 + 3) = a11;
  v32 = a9 + v25[14];
  *v32 = a12;
  *(v32 + 2) = a13;
  *(v32 + 3) = a14;
  v33 = (a9 + v25[15]);
  result = swift_allocObject();
  *(result + 16) = a15;
  *(result + 24) = a16;
  *v33 = sub_1E673F5E0;
  v33[1] = result;
  return result;
}

double static SummaryCardViewLayout.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED096D68 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = *&qword_1ED099598;
  v2 = unk_1ED099588;
  *a1 = xmmword_1ED099578;
  *(a1 + 16) = v2;
  *(a1 + 32) = result;
  return result;
}

__n128 SummaryCardViewLayout.contentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 SummaryCardViewLayout.init(chinHeight:contentMargins:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  result = *a1;
  v4 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_1E6832664()
{
  if (*v0)
  {
    return 0x4D746E65746E6F63;
  }

  else
  {
    return 0x676965486E696863;
  }
}

uint64_t sub_1E68326B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676965486E696863 && a2 == 0xEA00000000007468;
  if (v6 || (sub_1E68B3B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E68B3B00();

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

uint64_t sub_1E683279C(uint64_t a1)
{
  v2 = sub_1E68349DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68327D8(uint64_t a1)
{
  v2 = sub_1E68349DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummaryCardViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0995A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11 = *(v1 + 3);
  v12 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68349DC();
  sub_1E68B3BD0();
  *&v13 = v8;
  v15 = 0;
  sub_1E67621E8();
  sub_1E68B3AB0();
  if (!v2)
  {
    v13 = v12;
    v14 = v11;
    v15 = 1;
    sub_1E67F4B08();
    sub_1E68B3AB0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SummaryCardViewLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1E69523F0](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1E69523F0](*&v7);
  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  MEMORY[0x1E69523F0](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  return MEMORY[0x1E69523F0](*&v9);
}

uint64_t SummaryCardViewLayout.hashValue.getter()
{
  sub_1E68B3B70();
  SummaryCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t SummaryCardViewLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0995B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68349DC();
  sub_1E68B3BC0();
  if (!v2)
  {
    v14 = 0;
    sub_1E6762A60();
    sub_1E68B3A00();
    v9 = *&v13[0];
    v14 = 1;
    sub_1E67F4BB0();
    sub_1E68B3A00();
    (*(v6 + 8))(v8, v5);
    v10 = v13[0];
    v11 = v13[1];
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 24) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E6832CBC()
{
  sub_1E68B3B70();
  SummaryCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E6832D14()
{
  sub_1E68B3B70();
  SummaryCardViewLayout.hash(into:)();
  return sub_1E68B3BB0();
}

double sub_1E6832D68()
{
  result = 42.0;
  xmmword_1ED099578 = xmmword_1E68C1660;
  unk_1ED099588 = xmmword_1E68C1670;
  qword_1ED099598 = 0x402E000000000000;
  return result;
}

uint64_t sub_1E6832D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = sub_1E68B1DE0();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099630);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099620);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099610);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v19;
  *v12 = sub_1E68B21D0();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099648);
  sub_1E683316C(v2, &v12[*(v21 + 44)]);
  sub_1E68B2E90();
  sub_1E68B1F30();
  sub_1E6761420(v12, v16, &qword_1ED099630);
  v22 = &v16[*(v14 + 44)];
  v23 = v49;
  *(v22 + 4) = v48;
  *(v22 + 5) = v23;
  *(v22 + 6) = v50;
  v24 = v45;
  *v22 = v44;
  *(v22 + 1) = v24;
  v25 = v47;
  *(v22 + 2) = v46;
  *(v22 + 3) = v25;
  v26 = v2 + *(a1 + 36);
  v27 = *(v26 + 24);
  v40 = *(v26 + 8);
  v41 = v27;
  LOBYTE(v12) = sub_1E68B2500();
  sub_1E6761420(v16, v20, &qword_1ED099620);
  v28 = &v20[*(v18 + 44)];
  *&v30 = v40;
  v29 = *(&v41 + 1);
  *(&v31 + 1) = *(&v40 + 1);
  *&v31 = v41;
  *v28 = v12;
  *(&v30 + 1) = v29;
  *(v28 + 24) = v30;
  *(v28 + 8) = v31;
  v28[40] = 0;
  sub_1E677A200(v9);
  v32 = v42;
  (*(v4 + 104))(v6, *MEMORY[0x1E697E6C0], v42);
  LOBYTE(v18) = sub_1E68B1DD0();
  v33 = *(v4 + 8);
  v33(v6, v32);
  v33(v9, v32);
  if (v18)
  {
    v34 = sub_1E68B2B20();
  }

  else
  {
    sub_1E68B19F0();
    v34 = sub_1E68B2B70();
  }

  v35 = v34;
  v36 = sub_1E68B2500();
  v37 = v43;
  sub_1E6761420(v20, v43, &qword_1ED099610);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0995D8);
  v39 = v37 + *(result + 36);
  *v39 = v35;
  *(v39 + 8) = v36;
  return result;
}

uint64_t sub_1E683316C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099650);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099658);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  v12 = type metadata accessor for SummaryCardView();
  v13 = (a1 + v12[14]);
  v14 = *v13;
  v72 = v13[1];
  v73 = v14;
  v16 = v13[2];
  v15 = v13[3];
  v74 = v16;
  v71 = v15;
  if (v15)
  {
    KeyPath = swift_getKeyPath();
    v17 = v11;
    v18 = &v6[*(v3 + 36)];
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0978D8) + 28);
    v78 = a1;
    v20 = *MEMORY[0x1E6980FD8];
    v21 = sub_1E68B2690();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v18 + v19, v20, v21);
    (*(v22 + 56))(v18 + v19, 0, 1, v21);
    *v18 = swift_getKeyPath();
    v11 = v17;
    v23 = v72;
    *v6 = v73;
    *(v6 + 1) = v23;
    v6[16] = v74 & 1;
    v24 = KeyPath;
    *(v6 + 3) = v71;
    *(v6 + 4) = v24;
    *(v6 + 5) = 1;
    a1 = v78;
    v6[48] = 0;
    sub_1E6761420(v6, v17, &qword_1ED099650);
    (*(v4 + 56))(v17, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v11, 1, 1, v3);
  }

  v25 = (a1 + v12[12]);
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[2];
  v69 = v25[3];
  v66 = v28;
  if (v69)
  {
    v78 = swift_getKeyPath();
    v29 = v28 & 1;
    v80 = v28 & 1;
    v79 = 0;
    LODWORD(KeyPath) = 0x10000;
    v76 = 2;
    v30 = v26;
    v31 = v27;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v78 = 0;
    v76 = 0;
    LODWORD(KeyPath) = 0;
  }

  v67 = v27;
  v68 = v26;
  v32 = (a1 + v12[13]);
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  v60 = v32[3];
  v58 = v34;
  v57 = v35;
  v56 = v33;
  if (v60)
  {
    v36 = swift_getKeyPath();
    v64 = v35 & 1;
    sub_1E673F26C(v33, v34, v35 & 1);

    v65 = v36;

    v62 = v33;
    v63 = 1;
    v61 = v34;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
  }

  v37 = v75;
  sub_1E67612FC(v11, v75, &qword_1ED099658);
  v38 = v37;
  v39 = v70;
  sub_1E67612FC(v38, v70, &qword_1ED099658);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099660);
  v41 = v39 + *(v40 + 48);
  *v41 = v30;
  *(v41 + 8) = v31;
  v42 = v69;
  *(v41 + 16) = v29;
  *(v41 + 24) = v42;
  v55 = v29;
  v43 = v76;
  *(v41 + 32) = v78;
  *(v41 + 40) = v43;
  v76 = v43;
  v44 = KeyPath;
  *(v41 + 50) = BYTE2(KeyPath);
  *(v41 + 48) = v44;
  LODWORD(KeyPath) = v44;
  v45 = *(v40 + 64);
  v59 = v11;
  v46 = v39 + v45;
  sub_1E673F228(v73, v72, v74, v71);
  sub_1E673F228(v68, v67, v66, v42);
  v47 = v60;
  sub_1E673F228(v56, v58, v57, v60);
  sub_1E677EFE4(v30, v31, v29, v42);
  v49 = v61;
  v48 = v62;
  v50 = v64;
  v51 = v65;
  v52 = v63;
  sub_1E677EFE4(v62, v61, v64, v47);
  sub_1E677F034(v48, v49, v50, v47);
  *v46 = v48;
  *(v46 + 8) = v49;
  *(v46 + 16) = v50;
  *(v46 + 24) = v47;
  *(v46 + 32) = v51;
  *(v46 + 40) = v52;
  *(v46 + 48) = 0;
  sub_1E6744A10(v59, &qword_1ED099658);
  sub_1E677F034(v48, v49, v50, v47);
  sub_1E677F034(v30, v31, v55, v42);
  return sub_1E6744A10(v75, &qword_1ED099658);
}

uint64_t sub_1E6833708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v60 = a2;
  v3 = *(a1 + 16);
  sub_1E68B1E40();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995D8);
  swift_getTupleTypeMetadata2();
  v4 = sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v55 = v4;
  v5 = sub_1E68B2CC0();
  v58 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = v49 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  v49[1] = swift_getWitnessTable();
  v9 = sub_1E68B2CC0();
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v49 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995F0);
  v64 = v9;
  v12 = sub_1E68B1E40();
  v53 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v52 = v49 - v16;
  v17 = sub_1E68B1DE0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E68B2220();
  v62 = *(v21 - 8);
  v63 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v61 = v49 - v22;
  sub_1E677A200(v20);
  v23 = (*(v18 + 88))(v20, v17);
  if (v23 == *MEMORY[0x1E697E718] || v23 == *MEMORY[0x1E697E6F0] || v23 == *MEMORY[0x1E697E6F8] || v23 == *MEMORY[0x1E697E6E8] || v23 == *MEMORY[0x1E697E708] || v23 == *MEMORY[0x1E697E720] || v23 == *MEMORY[0x1E697E728])
  {
    MEMORY[0x1EEE9AC00](v23);
    v33 = *(v59 + 24);
    v49[-4] = v3;
    v49[-3] = v33;
    v49[-2] = v2;
    sub_1E68B21C0();
    sub_1E68B2CB0();
    v34 = sub_1E68B2E70();
    v59 = v5;
    MEMORY[0x1EEE9AC00](v34);
    v49[-4] = v3;
    v49[-3] = v33;
    v49[-2] = v2;
    v58 = MEMORY[0x1E6981870];
    v35 = v64;
    v36 = swift_getWitnessTable();
    sub_1E68353D4();
    sub_1E68B2A40();
    (*(v51 + 8))(v11, v35);
    v37 = sub_1E673F530(&qword_1ED0995F8, &qword_1ED0995F0);
    v65 = v36;
    v66 = v37;
    v38 = swift_getWitnessTable();
    v39 = v52;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v14, v12, v38);
    v40 = *(v53 + 8);
    v40(v14, v12);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v39, v12, v38);
    swift_getWitnessTable();
    v32 = v61;
    sub_1E6744CC0(v14, v12);
    v40(v14, v12);
    v40(v39, v12);
    goto LABEL_15;
  }

  if (v23 == *MEMORY[0x1E697E6C0] || v23 == *MEMORY[0x1E697E6C8] || v23 == *MEMORY[0x1E697E6D0] || v23 == *MEMORY[0x1E697E6D8] || v23 == *MEMORY[0x1E697E6E0])
  {
    v24 = sub_1E68B21D0();
    MEMORY[0x1EEE9AC00](v24);
    v25 = *(v59 + 24);
    v49[-4] = v3;
    v49[-3] = v25;
    v49[-2] = v2;
    v26 = v50;
    sub_1E68B2CB0();
    v27 = swift_getWitnessTable();
    v28 = v57;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v26, v5, v27);
    v29 = *(v58 + 8);
    v29(v26, v5);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v28, v5, v27);
    v30 = swift_getWitnessTable();
    v31 = sub_1E673F530(&qword_1ED0995F8, &qword_1ED0995F0);
    v71 = v30;
    v72 = v31;
    swift_getWitnessTable();
    v32 = v61;
    sub_1E6744DB8(v26, v12, v5);
    v29(v26, v5);
    v29(v28, v5);
LABEL_15:
    v42 = v62;
    v41 = v63;
    v43 = swift_getWitnessTable();
    v44 = sub_1E673F530(&qword_1ED0995F8, &qword_1ED0995F0);
    v69 = v43;
    v70 = v44;
    v45 = swift_getWitnessTable();
    v46 = swift_getWitnessTable();
    v67 = v45;
    v68 = v46;
    v47 = swift_getWitnessTable();
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v32, v41, v47);
    return (*(v42 + 8))(v32, v41);
  }

  result = sub_1E68B3AF0();
  __break(1u);
  return result;
}

uint64_t sub_1E68340E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v7 = sub_1E68B1E40();
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E0);
  v10 = sub_1E68B1E40();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v32 - v14;
  type metadata accessor for SummaryCardView();
  v35 = a1;
  sub_1E68B2780();
  sub_1E68B2E70();
  v40 = a2;
  v41 = a3;
  v42 = a1;
  v52[4] = a3;
  v52[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E68355DC();
  sub_1E68B2A40();
  (*(v36 + 8))(v9, v7);
  v16 = sub_1E673F530(&qword_1ED099668, &qword_1ED0995E0);
  v52[2] = WitnessTable;
  v52[3] = v16;
  v33 = v10;
  v34 = swift_getWitnessTable();
  v17 = v39;
  v18 = v12;
  v32 = v12;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v12, v10, v34);
  v19 = v37;
  v36 = *(v37 + 8);
  (v36)(v18, v10);
  sub_1E68B19F0();
  v20 = sub_1E68B2B70();
  sub_1E68B2E80();
  sub_1E68B1C50();
  v21 = v52[6];
  LOBYTE(a3) = v53;
  v22 = v54;
  v23 = v55;
  v24 = v56;
  v25 = v57;
  v26 = *(v19 + 16);
  v27 = v32;
  v28 = v17;
  v29 = v33;
  v26(v32, v28, v33);
  v46[0] = v20;
  v46[1] = v21;
  v47 = a3;
  v48 = v22;
  v49 = v23;
  v50 = v24;
  v51 = v25;
  v52[0] = v27;
  v52[1] = v46;

  v45[0] = v29;
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0995E8);
  v43 = v34;
  v44 = sub_1E6835630();
  sub_1E6848F14(v52, 2uLL, v45);

  v30 = v36;
  (v36)(v39, v29);

  return v30(v27, v29);
}

double sub_1E683456C@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0981F8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E68C1680;
  type metadata accessor for SummaryCardView();
  sub_1E68B19F0();
  *(v2 + 32) = sub_1E68B2B70();
  sub_1E68B19F0();
  sub_1E68B2B70();
  v3 = sub_1E68B2B40();

  *(v2 + 40) = v3;
  sub_1E68B19F0();
  sub_1E68B2B70();
  v4 = sub_1E68B2B40();

  *(v2 + 48) = v4;
  sub_1E68B2F40();
  sub_1E68B2F50();
  MEMORY[0x1E69515E0](v2);
  sub_1E68B1D90();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_1E68346B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20 = a1;
  v23 = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0995D8);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  v8 = sub_1E68B1E40();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for SummaryCardView();
  sub_1E68B2780();
  v27[2] = a2;
  v27[3] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v11, v8, WitnessTable);
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_1E6832D90(v15, v7);
  (*(v9 + 16))(v11, v14, v8);
  v27[0] = v11;
  v18 = v21;
  sub_1E67612FC(v7, v21, &qword_1ED0995D8);
  v27[1] = v18;
  v26[0] = v8;
  v26[1] = v22;
  v24 = WitnessTable;
  v25 = sub_1E68353D4();
  sub_1E6848F14(v27, 2uLL, v26);
  sub_1E6744A10(v7, &qword_1ED0995D8);
  v17(v14, v8);
  sub_1E6744A10(v18, &qword_1ED0995D8);
  return (v17)(v11, v8);
}

uint64_t _s15FitnessCanvasUI21SummaryCardViewLayoutV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E68349DC()
{
  result = qword_1ED0995A8;
  if (!qword_1ED0995A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0995A8);
  }

  return result;
}

unint64_t sub_1E6834A34()
{
  result = qword_1ED0995B8;
  if (!qword_1ED0995B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0995B8);
  }

  return result;
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

uint64_t sub_1E6834A9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E6834ABC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void sub_1E6834B10()
{
  sub_1E674828C();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1E68B1A10();
      if (v2 <= 0x3F)
      {
        sub_1E673ED38();
        if (v3 <= 0x3F)
        {
          sub_1E673ED88();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E6834BF0(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1DE0() - 8) + 64);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  if (v6 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(v8 + 84);
  v11 = sub_1E68B1A10();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  v16 = *(v12 + 80);
  if (v10 <= v13)
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(v11 - 8) + 64) + 7;
  if (v17 >= a2)
  {
    goto LABEL_32;
  }

  v19 = ((((((((v18 + ((v15 + v16 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v14 + 48) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v17 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v17 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  v28 = (((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) + v14 + 40) & ~v14;
  if (v10 == v17)
  {
    v29 = *(v8 + 48);

    return v29(v28, v10, v7);
  }

  else
  {
    v30 = (v28 + v15 + v16) & ~v16;
    if (v13 == v17)
    {
      v31 = *(v12 + 48);

      return v31(v30);
    }

    else
    {
      v32 = *((((((((v18 + v30) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
      if (v32 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }
  }
}

void sub_1E6834EE8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1E68B1DE0() - 8) + 64);
  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  if (v8 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v10 + 84);
  v13 = sub_1E68B1A10();
  v14 = v10;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = *(v10 + 80);
  v18 = *(v10 + 64);
  v19 = *(v15 + 80);
  if (v12 <= v16)
  {
    v20 = *(v15 + 84);
  }

  else
  {
    v20 = v12;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  v21 = *(*(v13 - 8) + 64) + 7;
  v22 = ((((((((v21 + ((v18 + v19 + (((v11 & 0xFFFFFFFFFFFFFFF8) + v17 + 48) & ~v17)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v20 >= a3)
  {
    v25 = 0;
    v26 = a2 - v20;
    if (a2 <= v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (((((((((v21 + ((v18 + v19 + (((v11 & 0xFFFFFFF8) + v17 + 48) & ~v17)) & ~v19)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v23 = a3 - v20 + 1;
    }

    else
    {
      v23 = 2;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = a2 - v20;
    if (a2 <= v20)
    {
LABEL_22:
      if (v25 > 1)
      {
        if (v25 != 2)
        {
          *(a1 + v22) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v22) = 0;
      }

      else if (v25)
      {
        *(a1 + v22) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      v29 = (((a1 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + v17 + 40) & ~v17;
      if (v12 == v20)
      {
        v30 = *(v14 + 56);

        v30(v29, a2, v12, v9);
      }

      else
      {
        v31 = (v29 + v18 + v19) & ~v19;
        if (v16 == v20)
        {
          v32 = *(v15 + 56);

          v32(v31, a2);
        }

        else
        {
          v33 = ((((((((v21 + v31) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
          if ((a2 & 0x80000000) != 0)
          {
            *v33 = a2 & 0x7FFFFFFF;
            v33[1] = 0;
          }

          else
          {
            *v33 = (a2 - 1);
          }
        }
      }

      return;
    }
  }

  if (((((((((v21 + ((v18 + v19 + (((v11 & 0xFFFFFFF8) + v17 + 48) & ~v17)) & ~v19)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1;
  }

  if (((((((((v21 + ((v18 + v19 + (((v11 & 0xFFFFFFF8) + v17 + 48) & ~v17)) & ~v19)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v28 = ~v20 + a2;
    bzero(a1, ((((((((v21 + ((v18 + v19 + (((v11 & 0xFFFFFFFFFFFFFFF8) + v17 + 48) & ~v17)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v28;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      *(a1 + v22) = v27;
    }

    else
    {
      *(a1 + v22) = v27;
    }
  }

  else if (v25)
  {
    *(a1 + v22) = v27;
  }
}

unint64_t sub_1E683523C()
{
  result = qword_1ED0995C0;
  if (!qword_1ED0995C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0995C0);
  }

  return result;
}

unint64_t sub_1E6835294()
{
  result = qword_1ED0995C8;
  if (!qword_1ED0995C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0995C8);
  }

  return result;
}

unint64_t sub_1E68352EC()
{
  result = qword_1ED0995D0;
  if (!qword_1ED0995D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0995D0);
  }

  return result;
}

unint64_t sub_1E68353D4()
{
  result = qword_1ED099600;
  if (!qword_1ED099600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995D8);
    sub_1E683548C();
    sub_1E673F530(&qword_1ED099638, &qword_1ED099640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099600);
  }

  return result;
}

unint64_t sub_1E683548C()
{
  result = qword_1ED099608;
  if (!qword_1ED099608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099610);
    sub_1E6835518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099608);
  }

  return result;
}

unint64_t sub_1E6835518()
{
  result = qword_1ED099618;
  if (!qword_1ED099618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099620);
    sub_1E673F530(&qword_1ED099628, &qword_1ED099630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099618);
  }

  return result;
}

unint64_t sub_1E68355DC()
{
  result = qword_1EE2EA850;
  if (!qword_1EE2EA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA850);
  }

  return result;
}

unint64_t sub_1E6835630()
{
  result = qword_1EE2EA7B8;
  if (!qword_1EE2EA7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7B8);
  }

  return result;
}

uint64_t sub_1E68356C8()
{
  v1 = 0x6C6F686563616C70;
  v2 = 0x6164696C61766E69;
  if (*v0 != 2)
  {
    v2 = 0x6F5464656C696166;
  }

  if (*v0)
  {
    v1 = 0x79636176697270;
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

uint64_t sub_1E6835760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6836AE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6835788(uint64_t a1)
{
  v2 = sub_1E6835E18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68357C4(uint64_t a1)
{
  v2 = sub_1E6835E18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6835800(uint64_t a1)
{
  v2 = sub_1E6835E6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E683583C(uint64_t a1)
{
  v2 = sub_1E6835E6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6835878(uint64_t a1)
{
  v2 = sub_1E6835EC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68358B4(uint64_t a1)
{
  v2 = sub_1E6835EC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68358F0(uint64_t a1)
{
  v2 = sub_1E6835F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E683592C(uint64_t a1)
{
  v2 = sub_1E6835F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6835968(uint64_t a1)
{
  v2 = sub_1E6835F14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68359A4(uint64_t a1)
{
  v2 = sub_1E6835F14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CanvasItemRedactionReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099670);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099678);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099680);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099688);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099690);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6835E18();
  sub_1E68B3BD0();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1E6835EC0();
      v18 = v27;
      sub_1E68B3A30();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1E6835E6C();
      v18 = v30;
      sub_1E68B3A30();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1E6835F14();
    v18 = v24;
    sub_1E68B3A30();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1E6835F68();
  sub_1E68B3A30();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1E6835E18()
{
  result = qword_1EE2ECA00[0];
  if (!qword_1EE2ECA00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2ECA00);
  }

  return result;
}

unint64_t sub_1E6835E6C()
{
  result = qword_1ED099698;
  if (!qword_1ED099698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099698);
  }

  return result;
}

unint64_t sub_1E6835EC0()
{
  result = qword_1ED0996A0;
  if (!qword_1ED0996A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0996A0);
  }

  return result;
}

unint64_t sub_1E6835F14()
{
  result = qword_1ED0996A8;
  if (!qword_1ED0996A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0996A8);
  }

  return result;
}

unint64_t sub_1E6835F68()
{
  result = qword_1EE2EC9C8;
  if (!qword_1EE2EC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9C8);
  }

  return result;
}

uint64_t CanvasItemRedactionReason.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996B0);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996B8);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996C0);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996C8);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E6835E18();
  v15 = v46;
  sub_1E68B3BC0();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1E68B3A10();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1E676F5C4();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1E68B3870();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v28 = &type metadata for CanvasItemRedactionReason;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1E6835F14();
        v32 = v35;
        sub_1E68B3970();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1E6835F68();
        v25 = v35;
        sub_1E68B3970();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1E6835EC0();
      v31 = v35;
      sub_1E68B3970();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1E6835E6C();
      v33 = v35;
      sub_1E68B3970();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t CanvasItemRedactionReason.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E6836720()
{
  result = qword_1ED0996D8;
  if (!qword_1ED0996D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0996D8);
  }

  return result;
}

unint64_t sub_1E6836778()
{
  result = qword_1EE2EC9B8;
  if (!qword_1EE2EC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9B8);
  }

  return result;
}

unint64_t sub_1E68367D0()
{
  result = qword_1EE2EC9C0;
  if (!qword_1EE2EC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9C0);
  }

  return result;
}

unint64_t sub_1E6836828()
{
  result = qword_1EE2EC9E0;
  if (!qword_1EE2EC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9E0);
  }

  return result;
}

unint64_t sub_1E6836880()
{
  result = qword_1EE2EC9E8;
  if (!qword_1EE2EC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9E8);
  }

  return result;
}

unint64_t sub_1E68368D8()
{
  result = qword_1EE2EC9D0;
  if (!qword_1EE2EC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9D0);
  }

  return result;
}

unint64_t sub_1E6836930()
{
  result = qword_1EE2EC9D8;
  if (!qword_1EE2EC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9D8);
  }

  return result;
}

unint64_t sub_1E6836988()
{
  result = qword_1EE2EC9A8;
  if (!qword_1EE2EC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9A8);
  }

  return result;
}

unint64_t sub_1E68369E0()
{
  result = qword_1EE2EC9B0;
  if (!qword_1EE2EC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9B0);
  }

  return result;
}

unint64_t sub_1E6836A38()
{
  result = qword_1EE2EC9F0;
  if (!qword_1EE2EC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9F0);
  }

  return result;
}

unint64_t sub_1E6836A90()
{
  result = qword_1EE2EC9F8;
  if (!qword_1EE2EC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC9F8);
  }

  return result;
}

uint64_t sub_1E6836AE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636176697270 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xED00006863746546)
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

uint64_t sub_1E6836C5C()
{
  if (*v0)
  {
    return 0x676E697373696DLL;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1E6836C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E68B3B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E697373696DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E68B3B00();

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

uint64_t sub_1E6836D6C(uint64_t a1)
{
  v2 = sub_1E6837E0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6836DA8(uint64_t a1)
{
  v2 = sub_1E6837E0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6836DE4(uint64_t a1)
{
  v2 = sub_1E6837E60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6836E20(uint64_t a1)
{
  v2 = sub_1E6837E60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6836E5C()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1E6836EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6838350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6836ED8(uint64_t a1)
{
  v2 = sub_1E6837EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6836F14(uint64_t a1)
{
  v2 = sub_1E6837EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DataItemResolutionError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996E0);
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v19 = v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996E8);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0996F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v12 = v1[1];
  v22 = *v1;
  v13 = v1[2];
  v18[1] = v1[3];
  v18[2] = v13;
  v18[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6837E0C();
  sub_1E68B3BD0();
  if (v12)
  {
    v29 = 0;
    sub_1E6837EB4();
    sub_1E68B3A30();
    v28 = 0;
    v15 = v24;
    v14 = v25;
    sub_1E68B3A70();
    if (v14)
    {
      (*(v23 + 8))(v7, v15);
    }

    else
    {
      v27 = 1;
      sub_1E68B3AA0();
      v26 = 2;
      sub_1E68B3A70();
      (*(v23 + 8))(v7, v15);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v30 = 1;
    sub_1E6837E60();
    v17 = v19;
    sub_1E68B3A30();
    (*(v20 + 8))(v17, v21);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t DataItemResolutionError.hash(into:)()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x1E69523D0](1);
  }

  v1 = *(v0 + 16);
  MEMORY[0x1E69523D0](0);
  sub_1E68B31F0();
  MEMORY[0x1E69523D0](v1);

  return sub_1E68B31F0();
}

uint64_t DataItemResolutionError.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E68B3B70();
  if (v1)
  {
    MEMORY[0x1E69523D0](0);
    sub_1E68B31F0();
    MEMORY[0x1E69523D0](v2);
    sub_1E68B31F0();
  }

  else
  {
    MEMORY[0x1E69523D0](1);
  }

  return sub_1E68B3BB0();
}

uint64_t DataItemResolutionError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099710);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099718);
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099720);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E6837E0C();
  v15 = v44;
  sub_1E68B3BC0();
  if (!v15)
  {
    v44 = v11;
    v16 = v43;
    v17 = sub_1E68B3A10();
    v18 = (2 * *(v17 + 16)) | 1;
    v46 = v17;
    v47 = v17 + 32;
    v48 = 0;
    v49 = v18;
    v19 = sub_1E676F5C8();
    v20 = v10;
    if (v19 == 2 || v48 != v49 >> 1)
    {
      v22 = sub_1E68B3870();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v24 = &type metadata for DataItemResolutionError;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v44 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v19)
      {
        v50 = 1;
        sub_1E6837E60();
        sub_1E68B3970();
        v21 = v44;
        (*(v41 + 8))(v6, v40);
        (*(v21 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
      }

      else
      {
        v50 = 0;
        sub_1E6837EB4();
        v26 = v9;
        sub_1E68B3970();
        v27 = v44;
        v50 = 0;
        v40 = sub_1E68B39C0();
        v41 = v33;
        v50 = 1;
        v38 = sub_1E68B39F0();
        v39 = v20;
        v50 = 2;
        v34 = sub_1E68B39C0();
        v35 = v7;
        v36 = v26;
        v31 = v34;
        v32 = v37;
        (*(v42 + 8))(v36, v35);
        (*(v27 + 8))(v13, v39);
        swift_unknownObjectRelease();
        v28 = v40;
        v29 = v41;
        v30 = v38;
      }

      *v16 = v28;
      v16[1] = v29;
      v16[2] = v30;
      v16[3] = v31;
      v16[4] = v32;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_1E6837A04()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E68B3B70();
  if (v1)
  {
    MEMORY[0x1E69523D0](0);
    sub_1E68B31F0();
    MEMORY[0x1E69523D0](v2);
    sub_1E68B31F0();
  }

  else
  {
    MEMORY[0x1E69523D0](1);
  }

  return sub_1E68B3BB0();
}

uint64_t sub_1E6837AA0()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x1E69523D0](1);
  }

  v1 = *(v0 + 16);
  MEMORY[0x1E69523D0](0);
  sub_1E68B31F0();
  MEMORY[0x1E69523D0](v1);

  return sub_1E68B31F0();
}

uint64_t sub_1E6837B50()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1E68B3B70();
  if (v1)
  {
    MEMORY[0x1E69523D0](0);
    sub_1E68B31F0();
    MEMORY[0x1E69523D0](v2);
    sub_1E68B31F0();
  }

  else
  {
    MEMORY[0x1E69523D0](1);
  }

  return sub_1E68B3BB0();
}

uint64_t _s15FitnessCanvasUI23DataItemResolutionErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  if (!v3)
  {
    if (!v8)
    {
      sub_1E678A228(*a1, 0);
      v13 = v7;
      v14 = 0;
      goto LABEL_15;
    }

LABEL_13:
    sub_1E683846C(v7, v8);
    sub_1E683846C(v2, v3);
    sub_1E678A228(v2, v3);
    sub_1E678A228(v7, v8);
    return 0;
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  v12 = v2 == v7 && v3 == v8;
  if (!v12 && (sub_1E68B3B00() & 1) == 0 || v4 != v10)
  {
    goto LABEL_13;
  }

  if (v5 == v9 && v6 == v11)
  {
    sub_1E683846C(v7, v8);
    sub_1E683846C(v2, v3);
    sub_1E678A228(v2, v3);
    v13 = v7;
    v14 = v8;
LABEL_15:
    sub_1E678A228(v13, v14);
    return 1;
  }

  v16 = sub_1E68B3B00();
  sub_1E683846C(v7, v8);
  sub_1E683846C(v2, v3);
  sub_1E678A228(v2, v3);
  sub_1E678A228(v7, v8);
  return v16 & 1;
}

unint64_t sub_1E6837E0C()
{
  result = qword_1ED0996F8;
  if (!qword_1ED0996F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0996F8);
  }

  return result;
}

unint64_t sub_1E6837E60()
{
  result = qword_1ED099700;
  if (!qword_1ED099700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099700);
  }

  return result;
}

unint64_t sub_1E6837EB4()
{
  result = qword_1ED099708;
  if (!qword_1ED099708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099708);
  }

  return result;
}

unint64_t sub_1E6837F0C()
{
  result = qword_1ED099728;
  if (!qword_1ED099728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099728);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15FitnessCanvasUI23DataItemResolutionErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E6837F78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1E6837FC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1E6838024(uint64_t a1, int a2)
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
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E6838094()
{
  result = qword_1ED099730;
  if (!qword_1ED099730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099730);
  }

  return result;
}

unint64_t sub_1E68380EC()
{
  result = qword_1ED099738;
  if (!qword_1ED099738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099738);
  }

  return result;
}

unint64_t sub_1E6838144()
{
  result = qword_1ED099740;
  if (!qword_1ED099740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099740);
  }

  return result;
}

unint64_t sub_1E683819C()
{
  result = qword_1ED099748;
  if (!qword_1ED099748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099748);
  }

  return result;
}

unint64_t sub_1E68381F4()
{
  result = qword_1ED099750;
  if (!qword_1ED099750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099750);
  }

  return result;
}

unint64_t sub_1E683824C()
{
  result = qword_1ED099758;
  if (!qword_1ED099758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099758);
  }

  return result;
}

unint64_t sub_1E68382A4()
{
  result = qword_1ED099760;
  if (!qword_1ED099760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099760);
  }

  return result;
}

unint64_t sub_1E68382FC()
{
  result = qword_1ED099768;
  if (!qword_1ED099768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099768);
  }

  return result;
}

uint64_t sub_1E6838350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E68E2EF0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E683846C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E68384DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F5464656C696166 && a2 == 0xED00006863746546)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E683856C(uint64_t a1)
{
  v2 = sub_1E6838834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68385A8(uint64_t a1)
{
  v2 = sub_1E6838834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E68385E4(uint64_t a1)
{
  v2 = sub_1E6838888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6838620(uint64_t a1)
{
  v2 = sub_1E6838888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CanvasSectionRedactionReason.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099770);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099778);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6838834();
  sub_1E68B3BD0();
  sub_1E6838888();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1E6838834()
{
  result = qword_1EE2EC760[0];
  if (!qword_1EE2EC760[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EC760);
  }

  return result;
}

unint64_t sub_1E6838888()
{
  result = qword_1EE2EC748;
  if (!qword_1EE2EC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC748);
  }

  return result;
}

uint64_t CanvasSectionRedactionReason.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099780);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099788);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6838834();
  sub_1E68B3BC0();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1E68B3A10();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1E676F5BC() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1E68B3870();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
    *v16 = &type metadata for CanvasSectionRedactionReason;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1E6838888();
  sub_1E68B3970();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1E6838C40(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099770);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099778);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6838834();
  sub_1E68B3BD0();
  sub_1E6838888();
  sub_1E68B3A30();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t CanvasSectionRedactionReason.hashValue.getter()
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](0);
  return sub_1E68B3BB0();
}

unint64_t sub_1E6838E88()
{
  result = qword_1EE2EC720;
  if (!qword_1EE2EC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC720);
  }

  return result;
}

unint64_t sub_1E6838F10()
{
  result = qword_1ED099790;
  if (!qword_1ED099790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099790);
  }

  return result;
}

unint64_t sub_1E6838F68()
{
  result = qword_1EE2EC738;
  if (!qword_1EE2EC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC738);
  }

  return result;
}

unint64_t sub_1E6838FC0()
{
  result = qword_1EE2EC740;
  if (!qword_1EE2EC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC740);
  }

  return result;
}

unint64_t sub_1E6839018()
{
  result = qword_1EE2EC750;
  if (!qword_1EE2EC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC750);
  }

  return result;
}

unint64_t sub_1E6839070()
{
  result = qword_1EE2EC758;
  if (!qword_1EE2EC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC758);
  }

  return result;
}

uint64_t sub_1E68390C4(uint64_t a1)
{
  v2 = sub_1E68B1DE0();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x1E697E718])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x1E697E6F0])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x1E697E6F8])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x1E697E6E8])
  {
    return 3;
  }

  if (v4 == *MEMORY[0x1E697E708])
  {
    return 4;
  }

  if (v4 == *MEMORY[0x1E697E720])
  {
    return 5;
  }

  if (v4 == *MEMORY[0x1E697E728])
  {
    return 6;
  }

  if (v4 == *MEMORY[0x1E697E6C0])
  {
    return 7;
  }

  if (v4 == *MEMORY[0x1E697E6C8])
  {
    return 8;
  }

  if (v4 == *MEMORY[0x1E697E6D0])
  {
    return 9;
  }

  if (v4 == *MEMORY[0x1E697E6D8])
  {
    return 10;
  }

  if (v4 != *MEMORY[0x1E697E6E0])
  {
    (*(v3 + 8))(a1, v2);
    return 3;
  }

  return 11;
}

uint64_t CanvasSectionDensityFactor.init(count:span:spacing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_1E683931C()
{
  v1 = 0x676E6963617073;
  if (*v0 != 1)
  {
    v1 = 1851879539;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_1E683936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6839BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6839394(uint64_t a1)
{
  v2 = sub_1E68395CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E68393D0(uint64_t a1)
{
  v2 = sub_1E68395CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CanvasSectionDensityFactor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099798);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68395CC();
  sub_1E68B3BD0();
  v14 = 0;
  sub_1E68B3AA0();
  if (!v2)
  {
    v13 = v8;
    v12 = 1;
    sub_1E67621E8();
    sub_1E68B3AB0();
    v11 = 2;
    sub_1E68B3AA0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E68395CC()
{
  result = qword_1EE2EC888[0];
  if (!qword_1EE2EC888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2EC888);
  }

  return result;
}

uint64_t CanvasSectionDensityFactor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0997A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68395CC();
  sub_1E68B3BC0();
  if (!v2)
  {
    v15 = 0;
    v9 = sub_1E68B39F0();
    v13[15] = 1;
    sub_1E6762A60();
    sub_1E68B3A00();
    v11 = v14;
    v13[14] = 2;
    v12 = sub_1E68B39F0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CanvasSectionDensityFactor.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x1E69523D0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1E69523F0](*&v3);
  return MEMORY[0x1E69523D0](v2);
}

uint64_t CanvasSectionDensityFactor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](*&v1);
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x1E69523F0](*&v4);
  MEMORY[0x1E69523D0](v3);
  return sub_1E68B3BB0();
}

uint64_t sub_1E683992C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x1E69523D0](*v0);
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x1E69523F0](*&v3);
  return MEMORY[0x1E69523D0](v2);
}

uint64_t sub_1E683998C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](*&v1);
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x1E69523F0](*&v4);
  MEMORY[0x1E69523D0](v3);
  return sub_1E68B3BB0();
}

unint64_t sub_1E6839A10()
{
  result = qword_1EE2EC868;
  if (!qword_1EE2EC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC868);
  }

  return result;
}

unint64_t sub_1E6839AB0()
{
  result = qword_1ED0997A8[0];
  if (!qword_1ED0997A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED0997A8);
  }

  return result;
}

unint64_t sub_1E6839B08()
{
  result = qword_1EE2EC878;
  if (!qword_1EE2EC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC878);
  }

  return result;
}

unint64_t sub_1E6839B60()
{
  result = qword_1EE2EC880;
  if (!qword_1EE2EC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC880);
  }

  return result;
}

uint64_t sub_1E6839BB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1851879539 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E6839CC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_15FitnessCanvasUI0B20LayoutProviderSourceOyxq_G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E6839D1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1E6839D6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1E6839DC8(uint64_t a1, int a2)
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

uint64_t sub_1E6839E24()
{
  if (*v0)
  {
    return 0x72656469766964;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1E6839E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E68B3B00() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72656469766964 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E68B3B00();

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

uint64_t sub_1E6839F34(uint64_t a1)
{
  v2 = sub_1E683A34C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6839F70(uint64_t a1)
{
  v2 = sub_1E683A34C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6839FAC(uint64_t a1)
{
  v2 = sub_1E683A3A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6839FE8(uint64_t a1)
{
  v2 = sub_1E683A3A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E683A024(uint64_t a1)
{
  v2 = sub_1E683A3F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E683A060(uint64_t a1)
{
  v2 = sub_1E683A3F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CanvasSectionFooter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099830);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099838);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099840);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E683A34C();
  sub_1E68B3BD0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1E683A3A0();
    v14 = v18;
    sub_1E68B3A30();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1E683A3F4();
    sub_1E68B3A30();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1E683A34C()
{
  result = qword_1EE2ED250[0];
  if (!qword_1EE2ED250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2ED250);
  }

  return result;
}

unint64_t sub_1E683A3A0()
{
  result = qword_1ED099848;
  if (!qword_1ED099848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099848);
  }

  return result;
}

unint64_t sub_1E683A3F4()
{
  result = qword_1EE2ED238;
  if (!qword_1EE2ED238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED238);
  }

  return result;
}

uint64_t CanvasSectionFooter.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099850);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099858);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099860);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E683A34C();
  v12 = v31;
  sub_1E68B3BC0();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1E68B3A10();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1E676F5C8();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1E68B3870();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v22 = &type metadata for CanvasSectionFooter;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1E683A3A0();
        sub_1E68B3970();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1E683A3F4();
        sub_1E68B3970();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t CanvasSectionFooter.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E683A9AC()
{
  result = qword_1ED099868;
  if (!qword_1ED099868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099868);
  }

  return result;
}

unint64_t sub_1E683AA44()
{
  result = qword_1ED099870;
  if (!qword_1ED099870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099870);
  }

  return result;
}

unint64_t sub_1E683AA9C()
{
  result = qword_1EE2ED228;
  if (!qword_1EE2ED228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED228);
  }

  return result;
}

unint64_t sub_1E683AAF4()
{
  result = qword_1EE2ED230;
  if (!qword_1EE2ED230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED230);
  }

  return result;
}

unint64_t sub_1E683AB4C()
{
  result = qword_1EE2ED218;
  if (!qword_1EE2ED218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED218);
  }

  return result;
}

unint64_t sub_1E683ABA4()
{
  result = qword_1EE2ED220;
  if (!qword_1EE2ED220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED220);
  }

  return result;
}

unint64_t sub_1E683ABFC()
{
  result = qword_1EE2ED240;
  if (!qword_1EE2ED240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED240);
  }

  return result;
}

unint64_t sub_1E683AC54()
{
  result = qword_1EE2ED248;
  if (!qword_1EE2ED248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED248);
  }

  return result;
}

uint64_t sub_1E683AD10()
{
  type metadata accessor for CanvasItemPlaceholderFetcherProvider();
  v0 = swift_allocObject();
  v1 = type metadata accessor for CanvasItemPlaceholderCacheProvider();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099880);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = result;
  v0[5] = v1;
  v0[6] = &off_1F5FDD078;
  v0[2] = v2;
  qword_1EE2EC670 = v0;
  return result;
}

uint64_t static CanvasItemPlaceholderFetcherProvider.shared.getter()
{
  if (qword_1EE2EC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CanvasItemPlaceholderFetcherProvider.shared.setter(uint64_t a1)
{
  if (qword_1EE2EC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE2EC670 = a1;
}

uint64_t (*static CanvasItemPlaceholderFetcherProvider.shared.modify())()
{
  if (qword_1EE2EC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1E683AF30@<X0>(void *a1@<X8>)
{
  if (qword_1EE2EC668 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EE2EC670;
}

uint64_t sub_1E683AFB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EE2EC668;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE2EC670 = v1;
}

uint64_t CanvasItemPlaceholderFetcherProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t CanvasItemPlaceholderFetcherProvider.makeFetcher<A, B, C, D, E, F>(fetchItemForPlaceholders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = v17[5];
  v19 = v17[6];
  __swift_project_boxed_opaque_existential_1(v17 + 2, v20);
  (*(v19 + 8))(v63, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, v20, v19);
  v37 = a3;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  v54 = a8;
  v55 = a10;
  v56 = a11;
  v57 = a12;
  v58 = a13;
  v59 = a14;
  v60 = a15;
  v61 = a16;
  v62 = a17;
  v21 = type metadata accessor for CanvasItemPlaceholderFetcher();

  v22 = sub_1E6843ADC(v63, a1, a2);

  if (qword_1EE2EAA00 != -1)
  {
    swift_once();
  }

  v23 = sub_1E68B1AE0();
  __swift_project_value_buffer(v23, qword_1EE2F8440);
  sub_1E677AFF0(v63, v48);

  v24 = sub_1E68B1AC0();
  v25 = sub_1E68B3740();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v47 = v27;
    *v26 = 136315394;
    v28 = sub_1E68436A8();
    v30 = v29;

    v31 = sub_1E683B478(v28, v30, &v47);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    sub_1E677AFF0(v48, v46);
    v49 = v37;
    v50 = a4;
    v51 = a5;
    v52 = a6;
    v53 = a7;
    v54 = a8;
    swift_getExtendedExistentialTypeMetadata();
    v32 = sub_1E68B31B0();
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v35 = sub_1E683B478(v32, v34, &v47);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_1E6725000, v24, v25, "Making a new fetcher (%s) from %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6952A70](v27, -1, -1);
    MEMORY[0x1E6952A70](v26, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  a9[3] = v21;
  a9[4] = swift_getWitnessTable();
  *a9 = v22;
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

unint64_t sub_1E683B478(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E683B544(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1E680B940(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E683B544(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1E683B650(a5, a6);
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
    result = sub_1E68B38A0();
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

uint64_t sub_1E683B650(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E683B69C(a1, a2);
  sub_1E683B7CC(&unk_1F5FD7520);
  return v3;
}