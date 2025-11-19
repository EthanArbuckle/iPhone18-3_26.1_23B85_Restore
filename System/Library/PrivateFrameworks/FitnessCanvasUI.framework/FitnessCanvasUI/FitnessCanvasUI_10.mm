uint64_t sub_1E6857B00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E6857CF4(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x7265746F6F66;
  v3 = 0x736D657469;
  if (a1 != 4)
  {
    v3 = 0x7363697274656DLL;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x74756F79616CLL;
  if (a1 != 1)
  {
    v4 = 0x726564616568;
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

uint64_t sub_1E6857E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6857B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6857E64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67BF590();
  *a1 = result;
  return result;
}

uint64_t sub_1E6857EC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6857F1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t LazyCanvasSectionDescriptor.id.getter()
{
  v0 = sub_1E6739D1C();

  return v0;
}

uint64_t LazyCanvasSectionDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v13 = *(a2 + 80);
  v12 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  v18 = *(a2 + 128);
  v19 = *(a2 + 136);
  v20 = *(a2 + 144);
  v21 = *(a2 + 152);
  v22 = *(a2 + 160);
  v23 = *(a2 + 168);
  v49 = v4;
  v58 = v4;
  v59 = v5;
  v44 = v5;
  v43 = v6;
  v60 = v6;
  v61 = v7;
  v42 = v7;
  v41 = v8;
  v62 = v8;
  v63 = v9;
  v34[1] = v9;
  v50 = v10;
  v64 = v10;
  v65 = v11;
  v47 = v11;
  v51 = v13;
  v66 = v13;
  v67 = v12;
  v46 = v12;
  v40 = v14;
  v68 = v14;
  v69 = v15;
  v39 = v15;
  v38 = v16;
  v70 = v16;
  v71 = v17;
  v37 = v17;
  v36 = v18;
  v72 = v18;
  v73 = v19;
  v35 = v19;
  v34[0] = v20;
  v74 = v20;
  v75 = v21;
  v48 = v21;
  v45 = v22;
  v76 = v22;
  v77 = v23;
  v52 = v23;
  type metadata accessor for LazyCanvasSectionDescriptor.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_1E68B3AC0();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v34 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = v53;
  sub_1E68B3BD0();
  LOBYTE(v58) = 0;
  v55 = v24;
  v29 = v27;
  v30 = v54;
  sub_1E68B3A70();
  if (v30)
  {
    return (*(v25 + 8))(v27, v55);
  }

  v32 = v47;
  v33 = v49;
  LOBYTE(v78) = 1;
  v58 = v50;
  v59 = v51;
  v60 = v48;
  v61 = v52;
  type metadata accessor for CanvasSectionLayout();
  swift_getWitnessTable();
  sub_1E68B3AB0();
  LOBYTE(v78) = 2;
  v58 = v33;
  v59 = v32;
  v60 = v46;
  v61 = v45;
  type metadata accessor for CanvasSectionHeader();
  swift_getWitnessTable();
  sub_1E68B3A60();
  LOBYTE(v58) = *(v28 + *(a2 + 188));
  LOBYTE(v78) = 3;
  sub_1E674B0D4();
  sub_1E68B3AB0();
  v78 = *(v28 + *(a2 + 192));
  v57 = 4;
  v58 = v33;
  v59 = v44;
  v60 = v43;
  v61 = v42;
  v62 = v41;
  v63 = v51;
  v64 = v46;
  v65 = v40;
  v66 = v39;
  v67 = v38;
  v68 = v37;
  v69 = v36;
  v70 = v35;
  v71 = v52;
  type metadata accessor for LazyCanvasItemDescriptor();
  sub_1E68B33B0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B3AB0();
  LOBYTE(v58) = 5;
  sub_1E68B3A60();
  return (*(v25 + 8))(v29, v55);
}

uint64_t LazyCanvasSectionDescriptor.init(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, char *a12, char *a13, char *a14, char *a15, char *a16, char *a17, char *a18, uint64_t a19, char *a20, char *a21, char *a22)
{
  v77 = a7;
  v82 = a6;
  v73 = a5;
  v71 = a4;
  v79 = a3;
  v76 = a1;
  v51 = a9;
  v78 = a19;
  v83 = a18;
  v74 = a17;
  v72 = a16;
  v70 = a15;
  v81 = a14;
  v80 = a13;
  v75 = a10;
  v50 = sub_1E68B3750();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v48 - v24;
  v85 = a2;
  v86 = a10;
  v67 = a2;
  v69 = a12;
  v87 = a12;
  v88 = a21;
  v63 = a21;
  v59 = type metadata accessor for CanvasSectionHeader();
  v53 = sub_1E68B3750();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v58 = &v48 - v25;
  v26 = a8;
  v62 = a8;
  v85 = a8;
  v86 = a11;
  v68 = a11;
  v87 = a20;
  v88 = a22;
  v64 = a20;
  v56 = type metadata accessor for CanvasSectionLayout();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v48 - v27;
  v85 = a2;
  v86 = v79;
  v28 = v71;
  v29 = v73;
  v87 = v71;
  v88 = v73;
  v89 = v82;
  v90 = v77;
  v91 = v26;
  v92 = v75;
  v93 = a11;
  v94 = a12;
  v95 = v80;
  v96 = v81;
  v30 = v70;
  v31 = v72;
  v97 = v70;
  v98 = v72;
  v32 = v74;
  v99 = v74;
  v100 = v83;
  v101 = v78;
  v102 = a20;
  v103 = a21;
  v104 = a22;
  type metadata accessor for LazyCanvasSectionDescriptor.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v61 = sub_1E68B3A20();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v34 = &v48 - v33;
  v85 = v67;
  v86 = v79;
  v87 = v28;
  v88 = v29;
  v89 = v82;
  v90 = v77;
  v91 = v62;
  v92 = v75;
  v35 = v76;
  v93 = v68;
  v94 = v69;
  v95 = v80;
  v96 = v81;
  v97 = v30;
  v98 = v31;
  v99 = v32;
  v100 = v83;
  v101 = v78;
  v102 = v64;
  v103 = v63;
  v104 = a22;
  v64 = a22;
  v36 = type metadata accessor for LazyCanvasSectionDescriptor();
  v37 = *(v36 - 1);
  MEMORY[0x1EEE9AC00](v36);
  v39 = (&v48 - v38);
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v75 = v34;
  v40 = v66;
  sub_1E68B3BC0();
  if (v40)
  {
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v41 = v57;
  v42 = v58;
  v66 = v37;
  LOBYTE(v85) = 0;
  *v39 = sub_1E68B39C0();
  v39[1] = v43;
  LOBYTE(v85) = 1;
  v44 = v56;
  swift_getWitnessTable();
  sub_1E68B3A00();
  (*(v55 + 32))(v39 + v36[45], v41, v44);
  LOBYTE(v85) = 2;
  swift_getWitnessTable();
  sub_1E68B39B0();
  (*(v54 + 32))(v39 + v36[46], v42, v53);
  LOBYTE(v105) = 3;
  sub_1E674B128();
  sub_1E68B3A00();
  *(v39 + v36[47]) = v85;
  v85 = v67;
  v86 = v79;
  v87 = v71;
  v88 = v73;
  v89 = v82;
  v90 = v68;
  v91 = v69;
  v92 = v80;
  v93 = v81;
  v94 = v70;
  v95 = v72;
  v96 = v74;
  v97 = v83;
  v98 = v64;
  type metadata accessor for LazyCanvasItemDescriptor();
  sub_1E68B33B0();
  LOBYTE(v85) = 4;
  v84 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B3A00();
  *(v39 + v36[48]) = v105;
  LOBYTE(v85) = 5;
  v45 = v52;
  sub_1E68B39B0();
  (*(v60 + 8))(v75, v61);
  (*(v49 + 32))(v39 + v36[49], v45, v50);
  v46 = v66;
  (*(v66 + 16))(v51, v39, v36);
  __swift_destroy_boxed_opaque_existential_1(v76);
  return (*(v46 + 8))(v39, v36);
}

BOOL static LazyCanvasSectionDescriptor.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v105 = a7;
  v104 = a6;
  v103 = a5;
  v102 = a4;
  v92 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E68B3750();
  v94 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v75 - v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v90 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v91 = &v75 - v31;
  v110 = a3;
  v112 = a3;
  v113 = a10;
  v106 = a10;
  v111 = a12;
  v114 = a12;
  v115 = a21;
  v107 = a21;
  v32 = type metadata accessor for CanvasSectionHeader();
  v99 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v95 = &v75 - v33;
  v34 = sub_1E68B3750();
  v101 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v98 = &v75 - v35;
  v100 = swift_getTupleTypeMetadata2();
  v36 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v38 = &v75 - v37;
  v39 = *a1;
  v40 = *(a1 + 1);
  v108 = a1;
  v41 = *a2;
  v42 = *(a2 + 1);
  v109 = a2;
  if ((v39 != v41 || v40 != v42) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  v96 = v38;
  v89 = v36;
  v97 = v32;
  v80 = v30;
  v79 = v27;
  v112 = v110;
  v113 = v102;
  v114 = v103;
  v115 = v104;
  v116 = v105;
  v117 = a8;
  v118 = a9;
  v119 = v106;
  v120 = a11;
  v121 = v111;
  v82 = a13;
  v122 = a13;
  v123 = a14;
  v83 = a14;
  v84 = a15;
  v124 = a15;
  v125 = a16;
  v85 = a16;
  v86 = a17;
  v126 = a17;
  v127 = a18;
  v87 = a18;
  v78 = a19;
  v128 = a19;
  v129 = a20;
  v130 = v107;
  v131 = a22;
  v43 = type metadata accessor for LazyCanvasSectionDescriptor();
  v44 = v43[45];
  v45 = v108;
  v46 = v109;
  v81 = a11;
  v88 = a22;
  if ((static CanvasSectionLayout.== infix(_:_:)(&v108[v44], &v109[v44], a9, a11, a20, a22) & 1) == 0)
  {
    return 0;
  }

  v76 = v28;
  v77 = a8;
  v47 = v43[46];
  v48 = *(v100 + 48);
  v49 = *(v101 + 16);
  v50 = v96;
  v49(v96, &v45[v47], v34);
  v49(&v50[v48], &v46[v47], v34);
  v51 = v99;
  v52 = *(v99 + 48);
  v53 = v97;
  if (v52(v50, 1, v97) != 1)
  {
    v49(v98, v50, v34);
    if (v52(&v50[v48], 1, v53) != 1)
    {
      v54 = &v50[v48];
      v55 = v95;
      (*(v51 + 32))(v95, v54, v53);
      v56 = v98;
      v57 = v53;
      v58 = static CanvasSectionHeader.== infix(_:_:)(v98, v55, v110, v106, v111, v107);
      v59 = *(v51 + 8);
      v59(v55, v57);
      v59(v56, v57);
      (*(v101 + 8))(v50, v34);
      if (!v58)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v51 + 8))(v98, v53);
LABEL_10:
    (*(v89 + 8))(v50, v100);
    return 0;
  }

  if (v52(&v50[v48], 1, v53) != 1)
  {
    goto LABEL_10;
  }

  (*(v101 + 8))(v50, v34);
LABEL_13:
  v60 = v108;
  v61 = v109;
  if (v108[v43[47]] != v109[v43[47]])
  {
    return 0;
  }

  v112 = v110;
  v113 = v102;
  v114 = v103;
  v115 = v104;
  v116 = v105;
  v117 = v81;
  v118 = v111;
  v119 = v82;
  v120 = v83;
  v121 = v84;
  v122 = v85;
  v123 = v86;
  v124 = v87;
  v125 = v88;
  type metadata accessor for LazyCanvasItemDescriptor();
  swift_getWitnessTable();
  if ((sub_1E68B33D0() & 1) == 0)
  {
    return 0;
  }

  v62 = v43[49];
  v63 = *(TupleTypeMetadata2 + 48);
  v64 = *(v94 + 16);
  v65 = v91;
  v66 = v76;
  v64(v91, &v60[v62], v76);
  v64(&v65[v63], &v61[v62], v66);
  v67 = v92;
  v68 = *(v92 + 48);
  v69 = v77;
  if (v68(v65, 1, v77) == 1)
  {
    if (v68(&v65[v63], 1, v69) == 1)
    {
      (*(v94 + 8))(v65, v66);
      return 1;
    }

    goto LABEL_20;
  }

  v70 = v80;
  v64(v80, v65, v66);
  if (v68(&v65[v63], 1, v69) == 1)
  {
    (*(v67 + 8))(v70, v69);
LABEL_20:
    (*(v90 + 8))(v65, TupleTypeMetadata2);
    return 0;
  }

  v71 = v79;
  (*(v67 + 32))(v79, &v65[v63], v69);
  v72 = sub_1E68B3190();
  v73 = *(v67 + 8);
  v73(v71, v69);
  v73(v70, v69);
  (*(v94 + 8))(v65, v66);
  return (v72 & 1) != 0;
}

uint64_t LazyCanvasSectionDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1E68B31F0();
  v5 = type metadata accessor for CanvasSectionLayout();
  CanvasSectionLayout.hash(into:)(a1, v5);
  type metadata accessor for CanvasSectionHeader();
  sub_1E68B3750();
  swift_getWitnessTable();
  sub_1E68B3760();
  MEMORY[0x1E69523D0](*(v2 + *(a2 + 188)));
  type metadata accessor for LazyCanvasItemDescriptor();
  swift_getWitnessTable();
  sub_1E68B33C0();
  sub_1E68B3750();
  return sub_1E68B3760();
}

uint64_t LazyCanvasSectionDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  LazyCanvasSectionDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6859CBC(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  LazyCanvasSectionDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6859DA8()
{
  result = type metadata accessor for CanvasSectionLayout();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CanvasSectionHeader();
    result = sub_1E68B3750();
    if (v2 <= 0x3F)
    {
      type metadata accessor for LazyCanvasItemDescriptor();
      result = sub_1E68B33B0();
      if (v3 <= 0x3F)
      {
        result = sub_1E68B3750();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E6859F04(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[8] - 8);
  v6 = *(v5 + 64);
  v7 = 16;
  if (v6 > 0x10)
  {
    v7 = *(v5 + 64);
  }

  v8 = *(v5 + 80);
  v9 = ((v8 + 8) & ~v8) + v6;
  if (v9 <= 0x18)
  {
    v9 = 24;
  }

  v10 = v9 + 1;
  if (v10 <= v7 + 1)
  {
    v10 = v7 + 1;
  }

  if (v10 + 1 > v7)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(a3[10] - 8);
  v13 = *(v12 + 64);
  if (v13 <= v11)
  {
    v13 = v11;
  }

  v63 = v13;
  v14 = *(sub_1E68B1820() - 8);
  v15 = *(v14 + 84);
  v60 = a3[9];
  v16 = *(v60 - 8);
  v17 = *(v16 + 84);
  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v15)
  {
    v19 = *(v14 + 84);
  }

  else
  {
    v19 = v18;
  }

  v59 = a3[2];
  v20 = *(v59 - 8);
  v21 = *(v20 + 84);
  v22 = v21 - 1;
  if (!v21)
  {
    v22 = 0;
  }

  if (v22 <= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  if (v23)
  {
    v24 = v23 - 1;
  }

  else
  {
    v24 = 0;
  }

  v62 = a3[7];
  v25 = *(v62 - 8);
  v26 = v25;
  v27 = *(v25 + 84);
  v28 = v27 - 1;
  if (!v27)
  {
    v28 = 0;
  }

  if (v24 <= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v24;
  }

  if (v29 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = v29;
  }

  if (v17)
  {
    v31 = *(v16 + 64);
  }

  else
  {
    v31 = *(v16 + 64) + 1;
  }

  if (v21)
  {
    v32 = v23 == 0;
  }

  else
  {
    v32 = (v23 == 0) + 1;
  }

  v33 = *(v12 + 80);
  v61 = v14;
  v34 = *(v16 + 80);
  v35 = *(v25 + 80);
  if (v27)
  {
    v36 = *(v25 + 64);
  }

  else
  {
    v36 = *(v25 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v37 = (v33 | v8) & 0xF8 | 7u;
  v38 = v63 + 1;
  v39 = v34;
  v40 = *(v20 + 80);
  v41 = (v34 | *(v14 + 80) | *(v20 + 80));
  v42 = *(v14 + 64) + v34;
  v43 = v32 + *(*(v59 - 8) + 64) + ((v31 + v40 + (v42 & ~v34)) & ~v40);
  v44 = v35 + 16;
  v45 = a2 - v30;
  if (a2 <= v30)
  {
    goto LABEL_66;
  }

  v46 = v36 + ((v44 + ((v43 + ((v38 + v41 + ((v37 + 16) & ~v37)) & ~v41)) & 0xFFFFFFFFFFFFFFF8)) & ~v35);
  v47 = 8 * v46;
  if (v46 <= 3)
  {
    v49 = ((v45 + ~(-1 << v47)) >> v47) + 1;
    if (HIWORD(v49))
    {
      v48 = *(a1 + v46);
      if (!v48)
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    }

    if (v49 > 0xFF)
    {
      v48 = *(a1 + v46);
      if (!*(a1 + v46))
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    }

    if (v49 < 2)
    {
LABEL_66:
      if ((v29 & 0x80000000) == 0)
      {
        v53 = *(a1 + 1);
        if (v53 >= 0xFFFFFFFF)
        {
          LODWORD(v53) = -1;
        }

        return (v53 + 1);
      }

      v55 = (((a1 + v37 + 16) & ~v37) + v41 + v38) & ~v41;
      if (v24 == v30)
      {
        if (v23 < 2)
        {
          return 0;
        }

        if (v15 == v23)
        {
          v56 = (*(v61 + 48))((((a1 + v37 + 16) & ~v37) + v41 + v38) & ~v41);
        }

        else
        {
          v57 = (v42 + v55) & ~v39;
          if (v18 == v23)
          {
            v58 = (*(*(v60 - 8) + 48))(v57, v17, v60);
          }

          else
          {
            v58 = (*(v20 + 48))((v31 + v40 + v57) & ~v40, v21, v59);
          }

          if (v58 >= 2)
          {
            v56 = v58 - 1;
          }

          else
          {
            v56 = 0;
          }
        }
      }

      else
      {
        v56 = (*(v26 + 48))((v44 + ((v43 + v55) & 0xFFFFFFFFFFFFFFF8)) & ~v35, v27, v62);
      }

      if (v56 >= 2)
      {
        return v56 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v48 = *(a1 + v46);
  if (!*(a1 + v46))
  {
    goto LABEL_66;
  }

LABEL_53:
  v50 = (v48 - 1) << v47;
  if (v46 > 3)
  {
    v50 = 0;
  }

  if (v46)
  {
    if (v46 <= 3)
    {
      v51 = v46;
    }

    else
    {
      v51 = 4;
    }

    if (v51 > 2)
    {
      if (v51 == 3)
      {
        v52 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v52 = *a1;
      }
    }

    else if (v51 == 1)
    {
      v52 = *a1;
    }

    else
    {
      v52 = *a1;
    }
  }

  else
  {
    v52 = 0;
  }

  return v30 + (v52 | v50) + 1;
}

void sub_1E685A44C(_WORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[8] - 8);
  v6 = *(v5 + 64);
  v7 = 16;
  if (v6 > 0x10)
  {
    v7 = *(v5 + 64);
  }

  v8 = *(v5 + 80);
  v9 = ((v8 + 8) & ~v8) + v6;
  if (v9 <= 0x18)
  {
    v9 = 24;
  }

  v10 = v9 + 1;
  if (v10 <= v7 + 1)
  {
    v10 = v7 + 1;
  }

  if (v10 + 1 > v7)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(a4[10] - 8);
  if (*(v12 + 64) <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = sub_1E68B1820();
  v15 = 0;
  v16 = *(v14 - 8);
  v17 = *(v16 + 84);
  v72 = a4[9];
  v18 = *(v72 - 8);
  v19 = *(v18 + 84);
  if (v19)
  {
    v20 = v19 - 1;
  }

  else
  {
    v20 = 0;
  }

  if (v20 <= v17)
  {
    v21 = *(v16 + 84);
  }

  else
  {
    v21 = v20;
  }

  v70 = a4[2];
  v22 = *(v70 - 8);
  v23 = *(v22 + 84);
  if (v23)
  {
    v24 = v23 - 1;
  }

  else
  {
    v24 = 0;
  }

  if (v24 <= v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = v24;
  }

  if (v25)
  {
    v26 = v25 - 1;
  }

  else
  {
    v26 = 0;
  }

  v74 = a4[7];
  v27 = *(v74 - 8);
  v28 = *(v27 + 84);
  v29 = *(*(v70 - 8) + 64);
  v71 = *(v72 - 8);
  v30 = *(v18 + 80);
  v31 = *(v12 + 80);
  v73 = *(v14 - 8);
  v32 = *(v16 + 80);
  v33 = *(v18 + 84);
  v34 = *(v27 + 80);
  v35 = *(v27 + 64);
  v36 = v28 - 1;
  if (!v28)
  {
    v36 = 0;
  }

  if (v26 <= v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = v26;
  }

  if (v37 <= 0x7FFFFFFF)
  {
    v38 = 0x7FFFFFFF;
  }

  else
  {
    v38 = v37;
  }

  if (v33)
  {
    v39 = *(*(v72 - 8) + 64);
  }

  else
  {
    v39 = *(*(v72 - 8) + 64) + 1;
  }

  if (!v23)
  {
    ++v29;
  }

  v40 = v31 | v8;
  v41 = v30;
  v42 = v30 | v32;
  v43 = *(v22 + 80);
  v44 = *(*(v14 - 8) + 64) + v30;
  v45 = v42 | *(v22 + 80);
  v46 = v39 + v43;
  v47 = (v46 + (v44 & ~v41)) & ~v43;
  v48 = v47 + v29;
  if (v25)
  {
    v49 = v47 + v29;
  }

  else
  {
    v49 = v48 + 1;
  }

  v50 = v40 & 0xF8 | 7u;
  v51 = v45;
  if (!v28)
  {
    ++v35;
  }

  v52 = ((v34 + 16 + ((v49 + ((v13 + 1 + v45 + ((v50 + 16) & ~v50)) & ~v45)) & 0xFFFFFFFFFFFFFFF8)) & ~v34) + v35;
  if (a3 > v38)
  {
    if (v52 <= 3)
    {
      v53 = ((a3 - v38 + ~(-1 << (8 * v52))) >> (8 * v52)) + 1;
      if (HIWORD(v53))
      {
        v15 = 4;
      }

      else
      {
        if (v53 < 0x100)
        {
          v54 = 1;
        }

        else
        {
          v54 = 2;
        }

        if (v53 >= 2)
        {
          v15 = v54;
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
  }

  if (v38 < a2)
  {
    v55 = ~v38 + a2;
    if (v52 < 4)
    {
      v56 = (v55 >> (8 * v52)) + 1;
      if (v52)
      {
        v57 = v55 & ~(-1 << (8 * v52));
        bzero(a1, v52);
        if (v52 != 3)
        {
          if (v52 == 2)
          {
            *a1 = v57;
            if (v15 > 1)
            {
LABEL_92:
              if (v15 == 2)
              {
                *(a1 + v52) = v56;
              }

              else
              {
                *(a1 + v52) = v56;
              }

              return;
            }
          }

          else
          {
            *a1 = v55;
            if (v15 > 1)
            {
              goto LABEL_92;
            }
          }

          goto LABEL_89;
        }

        *a1 = v57;
        *(a1 + 2) = BYTE2(v57);
      }

      if (v15 > 1)
      {
        goto LABEL_92;
      }
    }

    else
    {
      bzero(a1, v52);
      *a1 = v55;
      v56 = 1;
      if (v15 > 1)
      {
        goto LABEL_92;
      }
    }

LABEL_89:
    if (v15)
    {
      *(a1 + v52) = v56;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v52) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_73;
    }

    *(a1 + v52) = 0;
  }

  else if (v15)
  {
    *(a1 + v52) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_73;
  }

  if (!a2)
  {
    return;
  }

LABEL_73:
  if ((v37 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v58 = ((((a1 + v50 + 16) & ~v50) + v51 + v13 + 1) & ~v51);
  if (v26 != v38)
  {
    v59 = *(v27 + 56);
    v62 = (v34 + 16 + (&v58[v49] & 0xFFFFFFFFFFFFFFF8)) & ~v34;
    v60 = a2 + 1;
    v17 = v28;
    v61 = v74;

    goto LABEL_116;
  }

  if (v25 < 2)
  {
    return;
  }

  if (a2 >= v25)
  {
    if (v48 <= 3)
    {
      v63 = ~(-1 << (8 * v48));
    }

    else
    {
      v63 = -1;
    }

    if (v48)
    {
      v64 = v63 & (a2 - v25);
      if (v48 <= 3)
      {
        v65 = v47 + v29;
      }

      else
      {
        v65 = 4;
      }

      bzero(v58, v48);
      if (v65 > 2)
      {
        if (v65 == 3)
        {
          *v58 = v64;
          v58[2] = BYTE2(v64);
        }

        else
        {
          *v58 = v64;
        }
      }

      else if (v65 == 1)
      {
        *v58 = v64;
      }

      else
      {
        *v58 = v64;
      }
    }
  }

  else
  {
    if (v17 == v25)
    {
      v59 = *(v73 + 56);
      v60 = a2 + 1;
      v61 = v14;
      v62 = v58;
      goto LABEL_108;
    }

    v62 = &v58[v44] & ~v41;
    if (v20 == v25)
    {
      v59 = *(v71 + 56);
      v60 = a2 + 2;
      v17 = v33;
      v61 = v72;
LABEL_108:

LABEL_116:
      v59(v62, v60, v17, v61);
      return;
    }

    v66 = (v46 + v62) & ~v43;
    if (a2 < v24)
    {
      v59 = *(v22 + 56);
      v60 = a2 + 2;
      v62 = (v46 + v62) & ~v43;
      v17 = v23;
      v61 = v70;

      goto LABEL_116;
    }

    if (v29 <= 3)
    {
      v67 = ~(-1 << (8 * v29));
    }

    else
    {
      v67 = -1;
    }

    if (v29)
    {
      v68 = v67 & (a2 - v24);
      if (v29 <= 3)
      {
        v69 = v29;
      }

      else
      {
        v69 = 4;
      }

      bzero(((v46 + v62) & ~v43), v29);
      if (v69 > 2)
      {
        if (v69 == 3)
        {
          *v66 = v68;
          *(v66 + 2) = BYTE2(v68);
        }

        else
        {
          *v66 = v68;
        }
      }

      else if (v69 == 1)
      {
        *v66 = v68;
      }

      else
      {
        *v66 = v68;
      }
    }
  }
}

uint64_t sub_1E685AC08(uint64_t a1)
{
  v2 = sub_1E685B76C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685AC44(uint64_t a1)
{
  v2 = sub_1E685B76C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685AC80(uint64_t a1)
{
  v2 = sub_1E685B718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685ACBC(uint64_t a1)
{
  v2 = sub_1E685B718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685ACF8(uint64_t a1)
{
  v2 = sub_1E685B6C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685AD34(uint64_t a1)
{
  v2 = sub_1E685B6C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685AD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E685C74C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E685ADA8(uint64_t a1)
{
  v2 = sub_1E685B574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685ADE4(uint64_t a1)
{
  v2 = sub_1E685B574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685AE20(uint64_t a1)
{
  v2 = sub_1E685B670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685AE5C(uint64_t a1)
{
  v2 = sub_1E685B670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685AE98(uint64_t a1)
{
  v2 = sub_1E685B61C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685AED4(uint64_t a1)
{
  v2 = sub_1E685B61C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685AF10(uint64_t a1)
{
  v2 = sub_1E685B5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685AF4C(uint64_t a1)
{
  v2 = sub_1E685B5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicSectionDensity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AC0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AC8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AD0);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AD8);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AE0);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AE8);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099AF0);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E685B574();
  sub_1E68B3BD0();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1E685B670();
      v21 = v33;
      v22 = v42;
      sub_1E68B3A30();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1E685B61C();
      v21 = v36;
      v22 = v42;
      sub_1E68B3A30();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1E685B5C8();
      v21 = v39;
      v22 = v42;
      sub_1E68B3A30();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1E685B718();
      v21 = v27;
      v22 = v42;
      sub_1E68B3A30();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1E685B6C4();
      v21 = v30;
      v22 = v42;
      sub_1E68B3A30();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1E685B76C();
  v22 = v42;
  sub_1E68B3A30();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1E685B574()
{
  result = qword_1ED099AF8;
  if (!qword_1ED099AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099AF8);
  }

  return result;
}

unint64_t sub_1E685B5C8()
{
  result = qword_1ED099B00;
  if (!qword_1ED099B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B00);
  }

  return result;
}

unint64_t sub_1E685B61C()
{
  result = qword_1ED099B08;
  if (!qword_1ED099B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B08);
  }

  return result;
}

unint64_t sub_1E685B670()
{
  result = qword_1ED099B10;
  if (!qword_1ED099B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B10);
  }

  return result;
}

unint64_t sub_1E685B6C4()
{
  result = qword_1ED099B18;
  if (!qword_1ED099B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B18);
  }

  return result;
}

unint64_t sub_1E685B718()
{
  result = qword_1ED099B20;
  if (!qword_1ED099B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B20);
  }

  return result;
}

unint64_t sub_1E685B76C()
{
  result = qword_1ED099B28;
  if (!qword_1ED099B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B28);
  }

  return result;
}

uint64_t DynamicSectionDensity.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B30);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B38);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B40);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B48);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B50);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B58);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099B60);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E685B574();
  v22 = v56;
  sub_1E68B3BC0();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1E68B3A10();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1E676F5CC();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1E68B3870();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v36 = &type metadata for DynamicSectionDensity;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1E685B670();
          sub_1E68B3970();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1E685B61C();
          sub_1E68B3970();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1E685B5C8();
          sub_1E68B3970();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1E685B718();
            v31 = v56;
            sub_1E68B3970();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1E685B6C4();
            v31 = v51;
            sub_1E68B3970();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1E685B76C();
          sub_1E68B3970();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t DynamicSectionDensity.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E685C018(void *a1)
{
  a1[1] = sub_1E685C050();
  a1[2] = sub_1E685C0A4();
  result = sub_1E685C0F8();
  a1[3] = result;
  return result;
}

unint64_t sub_1E685C050()
{
  result = qword_1ED099B68;
  if (!qword_1ED099B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B68);
  }

  return result;
}

unint64_t sub_1E685C0A4()
{
  result = qword_1ED099B70;
  if (!qword_1ED099B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B70);
  }

  return result;
}

unint64_t sub_1E685C0F8()
{
  result = qword_1ED099B78;
  if (!qword_1ED099B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B78);
  }

  return result;
}

unint64_t sub_1E685C150()
{
  result = qword_1ED099B80;
  if (!qword_1ED099B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B80);
  }

  return result;
}

unint64_t sub_1E685C228()
{
  result = qword_1ED099B88;
  if (!qword_1ED099B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B88);
  }

  return result;
}

unint64_t sub_1E685C280()
{
  result = qword_1ED099B90;
  if (!qword_1ED099B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B90);
  }

  return result;
}

unint64_t sub_1E685C2D8()
{
  result = qword_1ED099B98;
  if (!qword_1ED099B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099B98);
  }

  return result;
}

unint64_t sub_1E685C330()
{
  result = qword_1ED099BA0;
  if (!qword_1ED099BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BA0);
  }

  return result;
}

unint64_t sub_1E685C388()
{
  result = qword_1ED099BA8;
  if (!qword_1ED099BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BA8);
  }

  return result;
}

unint64_t sub_1E685C3E0()
{
  result = qword_1ED099BB0;
  if (!qword_1ED099BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BB0);
  }

  return result;
}

unint64_t sub_1E685C438()
{
  result = qword_1ED099BB8;
  if (!qword_1ED099BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BB8);
  }

  return result;
}

unint64_t sub_1E685C490()
{
  result = qword_1ED099BC0;
  if (!qword_1ED099BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BC0);
  }

  return result;
}

unint64_t sub_1E685C4E8()
{
  result = qword_1ED099BC8;
  if (!qword_1ED099BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BC8);
  }

  return result;
}

unint64_t sub_1E685C540()
{
  result = qword_1ED099BD0;
  if (!qword_1ED099BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BD0);
  }

  return result;
}

unint64_t sub_1E685C598()
{
  result = qword_1ED099BD8;
  if (!qword_1ED099BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BD8);
  }

  return result;
}

unint64_t sub_1E685C5F0()
{
  result = qword_1ED099BE0;
  if (!qword_1ED099BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BE0);
  }

  return result;
}

unint64_t sub_1E685C648()
{
  result = qword_1ED099BE8;
  if (!qword_1ED099BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BE8);
  }

  return result;
}

unint64_t sub_1E685C6A0()
{
  result = qword_1ED099BF0;
  if (!qword_1ED099BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BF0);
  }

  return result;
}

unint64_t sub_1E685C6F8()
{
  result = qword_1ED099BF8;
  if (!qword_1ED099BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099BF8);
  }

  return result;
}

uint64_t sub_1E685C74C(uint64_t a1, uint64_t a2)
{
  if (a1 == 65 && a2 == 0xE100000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 66 && a2 == 0xE100000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 67 && a2 == 0xE100000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 68 && a2 == 0xE100000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 69 && a2 == 0xE100000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 70 && a2 == 0xE100000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E68B3B00();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E685C918(uint64_t a1)
{
  v2 = sub_1E685D148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685C954(uint64_t a1)
{
  v2 = sub_1E685D148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685C990()
{
  v1 = 0x676E696461656CLL;
  v2 = 0x69566D6F74737563;
  if (*v0 != 2)
  {
    v2 = 0x72657474616C70;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
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

uint64_t sub_1E685CA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E685DD70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E685CA34(uint64_t a1)
{
  v2 = sub_1E685D04C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685CA70(uint64_t a1)
{
  v2 = sub_1E685D04C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685CAAC(uint64_t a1)
{
  v2 = sub_1E685D0F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685CAE8(uint64_t a1)
{
  v2 = sub_1E685D0F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685CB24(uint64_t a1)
{
  v2 = sub_1E685D19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685CB60(uint64_t a1)
{
  v2 = sub_1E685D19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E685CB9C(uint64_t a1)
{
  v2 = sub_1E685D0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E685CBD8(uint64_t a1)
{
  v2 = sub_1E685D0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FullWidthStageViewStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C00);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C08);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C10);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C18);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C20);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E685D04C();
  sub_1E68B3BD0();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1E685D0F4();
      v18 = v27;
      sub_1E68B3A30();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1E685D0A0();
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
    sub_1E685D148();
    v18 = v24;
    sub_1E68B3A30();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1E685D19C();
  sub_1E68B3A30();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1E685D04C()
{
  result = qword_1ED099C28;
  if (!qword_1ED099C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C28);
  }

  return result;
}

unint64_t sub_1E685D0A0()
{
  result = qword_1ED099C30;
  if (!qword_1ED099C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C30);
  }

  return result;
}

unint64_t sub_1E685D0F4()
{
  result = qword_1ED099C38;
  if (!qword_1ED099C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C38);
  }

  return result;
}

unint64_t sub_1E685D148()
{
  result = qword_1ED099C40;
  if (!qword_1ED099C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C40);
  }

  return result;
}

unint64_t sub_1E685D19C()
{
  result = qword_1ED099C48;
  if (!qword_1ED099C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C48);
  }

  return result;
}

uint64_t FullWidthStageViewStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C50);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C58);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C60);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C68);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099C70);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E685D04C();
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
      *v28 = &type metadata for FullWidthStageViewStyle;
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
        sub_1E685D148();
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
        sub_1E685D19C();
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
      sub_1E685D0F4();
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
      sub_1E685D0A0();
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

uint64_t FullWidthStageViewStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

unint64_t sub_1E685D8F4()
{
  result = qword_1ED099C78;
  if (!qword_1ED099C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C78);
  }

  return result;
}

unint64_t sub_1E685D9AC()
{
  result = qword_1ED099C80;
  if (!qword_1ED099C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C80);
  }

  return result;
}

unint64_t sub_1E685DA04()
{
  result = qword_1ED099C88;
  if (!qword_1ED099C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C88);
  }

  return result;
}

unint64_t sub_1E685DA5C()
{
  result = qword_1ED099C90;
  if (!qword_1ED099C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C90);
  }

  return result;
}

unint64_t sub_1E685DAB4()
{
  result = qword_1ED099C98;
  if (!qword_1ED099C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099C98);
  }

  return result;
}

unint64_t sub_1E685DB0C()
{
  result = qword_1ED099CA0;
  if (!qword_1ED099CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CA0);
  }

  return result;
}

unint64_t sub_1E685DB64()
{
  result = qword_1ED099CA8;
  if (!qword_1ED099CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CA8);
  }

  return result;
}

unint64_t sub_1E685DBBC()
{
  result = qword_1ED099CB0;
  if (!qword_1ED099CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CB0);
  }

  return result;
}

unint64_t sub_1E685DC14()
{
  result = qword_1ED099CB8;
  if (!qword_1ED099CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CB8);
  }

  return result;
}

unint64_t sub_1E685DC6C()
{
  result = qword_1ED099CC0;
  if (!qword_1ED099CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CC0);
  }

  return result;
}

unint64_t sub_1E685DCC4()
{
  result = qword_1ED099CC8;
  if (!qword_1ED099CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CC8);
  }

  return result;
}

unint64_t sub_1E685DD1C()
{
  result = qword_1ED099CD0;
  if (!qword_1ED099CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CD0);
  }

  return result;
}

uint64_t sub_1E685DD70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696461656CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69566D6F74737563 && a2 == 0xEA00000000007765 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72657474616C70 && a2 == 0xE700000000000000)
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

uint64_t static CanvasSectionLayout.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a1;
  v65 = a2;
  v58 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CanvasGridAxis();
  v56 = *(v11 - 8);
  v57 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v50 = &v49 - v13;
  v61 = *(a3 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - v16;
  v63 = a3;
  v66 = a3;
  v67 = a4;
  v59 = a4;
  v60 = a5;
  v68 = a5;
  v69 = a6;
  v52 = a6;
  v18 = type metadata accessor for CanvasSectionLayout();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v55 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v54 = &v49 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v53 = &v49 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v49 - v29);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = *(TupleTypeMetadata2 - 8);
  v33 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v35 = &v49 - v34;
  v36 = (&v49 + *(v33 + 48) - v34);
  v62 = v19;
  v37 = *(v19 + 16);
  v37(&v49 - v34, v64, v18);
  v37(v36, v65, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v37(v30, v35, v18);
      if (!swift_getEnumCaseMultiPayload())
      {
        v43 = v30[1] == v36[1] && *v30 == *v36;
        goto LABEL_20;
      }

LABEL_25:
      v43 = 0;
      goto LABEL_26;
    }

    v37(v28, v35, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v45 = v61;
      v39 = v63;
      (*(v61 + 32))(v17, v36, v63);
      v43 = sub_1E68B3190();
      v44 = *(v45 + 8);
      v44(v17, v39);
      goto LABEL_19;
    }

LABEL_21:
    (*(v61 + 8))(v28, v63);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v28 = v53;
    v37(v53, v35, v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v40 = v61;
      v41 = v49;
      v39 = v63;
      (*(v61 + 32))(v49, v36, v63);
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v28 = v55;
    v37(v55, v35, v18);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v47 = v58;
      v46 = v59;
      goto LABEL_24;
    }

    v40 = v58;
    v39 = v59;
    v41 = v51;
    (*(v58 + 32))(v51, v36, v59);
LABEL_15:
    v42 = sub_1E68B3190();
    goto LABEL_16;
  }

  v28 = v54;
  v37(v54, v35, v18);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v47 = v56;
    v46 = v57;
LABEL_24:
    (*(v47 + 8))(v28, v46);
    goto LABEL_25;
  }

  v40 = v56;
  v39 = v57;
  v41 = v50;
  (*(v56 + 32))(v50, v36, v57);
  v42 = static CanvasGridAxis.== infix(_:_:)(v28, v41, v63, v60);
LABEL_16:
  v43 = v42;
  v44 = *(v40 + 8);
  v44(v41, v39);
LABEL_19:
  v44(v28, v39);
LABEL_20:
  v32 = v62;
  TupleTypeMetadata2 = v18;
LABEL_26:
  (*(v32 + 8))(v35, TupleTypeMetadata2);
  return v43 & 1;
}

uint64_t sub_1E685E570(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974)
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

uint64_t sub_1E685E5EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6573756F726163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F676F6874726FLL && a2 == 0xEA00000000006C61 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953720684 && a2 == 0xE400000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684632167 && a2 == 0xE400000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C69754277656976 && a2 == 0xEB00000000726564)
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

uint64_t sub_1E685E7A8(unsigned __int8 a1)
{
  v1 = 0x6C6573756F726163;
  v2 = 1953720684;
  v3 = 1684632167;
  if (a1 != 3)
  {
    v3 = 0x6C69754277656976;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6E6F676F6874726FLL;
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

uint64_t sub_1E685E840(uint64_t a1, uint64_t a2)
{
  if (a1 == 1936291937 && a2 == 0xE400000000000000)
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

uint64_t sub_1E685E8B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361)
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

uint64_t sub_1E685E988(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685E9DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E685EA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E685E5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E685EA74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E674BEA8();
  *a1 = result;
  return result;
}

uint64_t sub_1E685EAA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685EAFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E685EB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E685EBB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685EC0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E685EC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E685E8B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E685ECBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685ED10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E685ED64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685EDB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E685EE24@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E685EE64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E685EEB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasSectionLayout.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v109 = a2[2];
  v5 = v109;
  v110 = v4;
  v111 = v6;
  v112 = v7;
  v88 = type metadata accessor for CanvasSectionLayout.ViewBuilderCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v91 = sub_1E68B3AC0();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v87 = &v68 - v8;
  v89 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v5;
  v110 = v4;
  v111 = v6;
  v112 = v7;
  v11 = type metadata accessor for CanvasSectionLayout.GridCodingKeys();
  v12 = swift_getWitnessTable();
  v79 = v11;
  v77 = v12;
  v84 = sub_1E68B3AC0();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v80 = &v68 - v13;
  v82 = type metadata accessor for CanvasGridAxis();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v68 - v14;
  v109 = v5;
  v110 = v4;
  v111 = v6;
  v112 = v7;
  v15 = type metadata accessor for CanvasSectionLayout.ListCodingKeys();
  v16 = swift_getWitnessTable();
  v74 = v15;
  v72 = v16;
  v76 = sub_1E68B3AC0();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v73 = &v68 - v17;
  v109 = v5;
  v110 = v4;
  v111 = v6;
  v112 = v7;
  v18 = type metadata accessor for CanvasSectionLayout.OrthogonalCodingKeys();
  v99 = swift_getWitnessTable();
  v100 = v18;
  v98 = sub_1E68B3AC0();
  v69 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v68 - v19;
  v101 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v71 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v104 = &v68 - v23;
  v109 = v5;
  v110 = v4;
  v111 = v6;
  v112 = v7;
  type metadata accessor for CanvasSectionLayout.CarouselCodingKeys();
  v96 = swift_getWitnessTable();
  v95 = sub_1E68B3AC0();
  v70 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v68 - v24;
  v25 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v102 = v5;
  v109 = v5;
  v110 = v4;
  v93 = v4;
  v103 = v6;
  v111 = v6;
  v112 = v7;
  v92 = v7;
  type metadata accessor for CanvasSectionLayout.CodingKeys();
  swift_getWitnessTable();
  v29 = sub_1E68B3AC0();
  v30 = *(v29 - 8);
  v107 = v29;
  v108 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v68 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v106 = v32;
  sub_1E68B3BD0();
  (*(v25 + 16))(v28, v105, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v41 = v95;
    v42 = v97;
    v43 = v98;
    if (EnumCaseMultiPayload)
    {
      v65 = v101;
      v64 = v102;
      (*(v101 + 32))(v104, v28, v102);
      LOBYTE(v109) = 1;
      v66 = v107;
      v67 = v106;
      sub_1E68B3A30();
      sub_1E68B3AB0();
      (*(v69 + 8))(v42, v43);
      (*(v65 + 8))(v104, v64);
      v47 = *(v108 + 8);
      v48 = v67;
      v63 = v66;
      return v47(v48, v63);
    }

    v44 = *v28;
    v45 = v28[1];
    LOBYTE(v109) = 0;
    v46 = v94;
    v39 = v106;
    v38 = v107;
    sub_1E68B3A30();
    v109 = v44;
    v110 = v45;
    type metadata accessor for CGSize(0);
    sub_1E6860B18(&qword_1EE2EA448);
    sub_1E68B3AB0();
    (*(v70 + 8))(v46, v41);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v50 = v101;
      v49 = v102;
      v51 = v71;
      (*(v101 + 32))(v71, v28, v102);
      LOBYTE(v109) = 2;
      v52 = v73;
      v54 = v106;
      v53 = v107;
      sub_1E68B3A30();
      v55 = v76;
      sub_1E68B3AB0();
      (*(v75 + 8))(v52, v55);
      (*(v50 + 8))(v51, v49);
      return (*(v108 + 8))(v54, v53);
    }

    if (EnumCaseMultiPayload != 3)
    {
      v57 = v89;
      v58 = v85;
      v59 = v93;
      (*(v89 + 32))(v85, v28, v93);
      LOBYTE(v109) = 4;
      v60 = v87;
      v61 = v106;
      v38 = v107;
      sub_1E68B3A30();
      v62 = v91;
      sub_1E68B3AB0();
      (*(v90 + 8))(v60, v62);
      (*(v57 + 8))(v58, v59);
      v47 = *(v108 + 8);
      v48 = v61;
      goto LABEL_10;
    }

    v34 = v81;
    v35 = v78;
    v36 = v82;
    (*(v81 + 32))(v78, v28, v82);
    LOBYTE(v109) = 3;
    v37 = v80;
    v39 = v106;
    v38 = v107;
    sub_1E68B3A30();
    swift_getWitnessTable();
    v40 = v84;
    sub_1E68B3AB0();
    (*(v83 + 8))(v37, v40);
    (*(v34 + 8))(v35, v36);
  }

  v47 = *(v108 + 8);
  v48 = v39;
LABEL_10:
  v63 = v38;
  return v47(v48, v63);
}

uint64_t CanvasSectionLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v106 = a6;
  *&v134 = a2;
  *(&v134 + 1) = a3;
  *&v135 = a4;
  *(&v135 + 1) = a5;
  v11 = type metadata accessor for CanvasSectionLayout.ViewBuilderCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v120 = v11;
  v119 = WitnessTable;
  v103 = sub_1E68B3A20();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v121 = &v90 - v13;
  *&v134 = a2;
  *(&v134 + 1) = a3;
  *&v135 = a4;
  *(&v135 + 1) = a5;
  v14 = type metadata accessor for CanvasSectionLayout.GridCodingKeys();
  v15 = swift_getWitnessTable();
  v117 = v14;
  v116 = v15;
  v101 = sub_1E68B3A20();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v118 = &v90 - v16;
  *&v134 = a2;
  *(&v134 + 1) = a3;
  *&v135 = a4;
  *(&v135 + 1) = a5;
  v17 = type metadata accessor for CanvasSectionLayout.ListCodingKeys();
  v18 = swift_getWitnessTable();
  v114 = v17;
  v113 = v18;
  v99 = sub_1E68B3A20();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v115 = &v90 - v19;
  *&v134 = a2;
  *(&v134 + 1) = a3;
  *&v135 = a4;
  *(&v135 + 1) = a5;
  v20 = type metadata accessor for CanvasSectionLayout.OrthogonalCodingKeys();
  v21 = swift_getWitnessTable();
  v111 = v20;
  v110 = v21;
  v97 = sub_1E68B3A20();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v112 = &v90 - v22;
  *&v134 = a2;
  *(&v134 + 1) = a3;
  *&v135 = a4;
  *(&v135 + 1) = a5;
  v23 = type metadata accessor for CanvasSectionLayout.CarouselCodingKeys();
  v24 = swift_getWitnessTable();
  v108 = v23;
  v107 = v24;
  v95 = sub_1E68B3A20();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v109 = &v90 - v25;
  *&v134 = a2;
  *(&v134 + 1) = a3;
  *&v135 = a4;
  *(&v135 + 1) = a5;
  type metadata accessor for CanvasSectionLayout.CodingKeys();
  v131 = swift_getWitnessTable();
  v129 = sub_1E68B3A20();
  v124 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v27 = &v90 - v26;
  v126 = a2;
  v127 = a3;
  *&v134 = a2;
  *(&v134 + 1) = a3;
  v128 = a4;
  *&v135 = a4;
  *(&v135 + 1) = a5;
  v104 = a5;
  v28 = type metadata accessor for CanvasSectionLayout();
  v122 = *(v28 - 8);
  v123 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v105 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v90 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v90 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v90 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v90 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v90 - v43;
  v45 = a1;
  v46 = a1[3];
  v130 = v45;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v125 = v27;
  v47 = v136;
  sub_1E68B3BC0();
  if (!v47)
  {
    v131 = v38;
    v92 = v35;
    v91 = v41;
    v93 = v32;
    v136 = v44;
    v48 = v125;
    *&v132 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v134 = sub_1E68B37A0();
    *(&v134 + 1) = v49;
    *&v135 = v50;
    *(&v135 + 1) = v51;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v52 = v132;
    if (v132 != 5)
    {
      v90 = v134;
      v132 = v134;
      v133 = v135;
      if (sub_1E68B36E0())
      {
        if (v52 <= 1)
        {
          v65 = v129;
          v66 = v122;
          if (v52)
          {
            LOBYTE(v132) = 1;
            v72 = v112;
            sub_1E68B3970();
            v77 = v97;
            sub_1E68B3A00();
            v78 = v124;
            (*(v96 + 8))(v72, v77);
            (*(v78 + 8))(v48, v65);
            swift_unknownObjectRelease();
            v87 = v131;
            v58 = v123;
            swift_storeEnumTagMultiPayload();
            v88 = *(v66 + 32);
            v89 = v136;
            v88(v136, v87, v58);
LABEL_17:
            v68 = v130;
            v88(v106, v89, v58);
            goto LABEL_18;
          }

          LOBYTE(v132) = 0;
          v67 = v109;
          sub_1E68B3970();
          v68 = v130;
          type metadata accessor for CGSize(0);
          sub_1E6860B18(&qword_1ED096DC0);
          v69 = v95;
          sub_1E68B3A00();
          (*(v94 + 8))(v67, v69);
          (*(v124 + 8))(v48, v65);
          swift_unknownObjectRelease();
          v83 = v91;
          *v91 = v132;
          v84 = v123;
          swift_storeEnumTagMultiPayload();
          v85 = *(v66 + 32);
          v86 = v136;
          v85(v136, v83, v84);
          v85(v106, v86, v84);
        }

        else
        {
          v53 = v129;
          if (v52 == 2)
          {
            LOBYTE(v132) = 2;
            v70 = v115;
            sub_1E68B3970();
            v55 = v92;
            v73 = v99;
            sub_1E68B3A00();
            v74 = v124;
            (*(v98 + 8))(v70, v73);
            (*(v74 + 8))(v48, v53);
            swift_unknownObjectRelease();
            v58 = v123;
            goto LABEL_16;
          }

          if (v52 == 3)
          {
            LOBYTE(v132) = 3;
            v54 = v118;
            sub_1E68B3970();
            type metadata accessor for CanvasGridAxis();
            swift_getWitnessTable();
            v55 = v93;
            v56 = v101;
            sub_1E68B3A00();
            v57 = v124;
            (*(v100 + 8))(v54, v56);
            (*(v57 + 8))(v48, v53);
            swift_unknownObjectRelease();
            v58 = v123;
LABEL_16:
            swift_storeEnumTagMultiPayload();
            v88 = *(v122 + 32);
            v89 = v136;
            v88(v136, v55, v58);
            goto LABEL_17;
          }

          LOBYTE(v132) = 4;
          v71 = v121;
          sub_1E68B3970();
          v68 = v130;
          v75 = v103;
          sub_1E68B3A00();
          v76 = v124;
          (*(v102 + 8))(v71, v75);
          (*(v76 + 8))(v48, v53);
          swift_unknownObjectRelease();
          v79 = v105;
          v80 = v123;
          swift_storeEnumTagMultiPayload();
          v81 = *(v122 + 32);
          v82 = v136;
          v81(v136, v79, v80);
          v81(v106, v82, v80);
        }

LABEL_18:
        v63 = v68;
        return __swift_destroy_boxed_opaque_existential_1(v63);
      }
    }

    v59 = sub_1E68B3870();
    swift_allocError();
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
    *v61 = v123;
    v62 = v129;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    (*(v124 + 8))(v48, v62);
    swift_unknownObjectRelease();
  }

  v63 = v130;
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1E6860B18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CanvasSectionLayout.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = *(a2 + 24);
  v32 = a1;
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = type metadata accessor for CanvasGridAxis();
  v29 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = *(v8 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v3, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v24 = *v18;
      v25 = v18[1];
      MEMORY[0x1E69523D0](0);
      return sub_1E673E7F4(v24, v25);
    }

    (*(v13 + 32))(v16, v18, v8);
    v26 = 1;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v13 + 32))(v16, v18, v8);
    v26 = 2;
LABEL_10:
    MEMORY[0x1E69523D0](v26);
    sub_1E68B3140();
    return (*(v13 + 8))(v16, v8);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v21 = v29;
    (*(v29 + 32))(v12, v18, v9);
    v22 = v32;
    MEMORY[0x1E69523D0](3);
    CanvasGridAxis.hash(into:)(v22, v9);
    return (*(v21 + 8))(v12, v9);
  }

  else
  {
    v28 = v30;
    v27 = v31;
    (*(v30 + 32))(v6, v18, v31);
    MEMORY[0x1E69523D0](4);
    sub_1E68B3140();
    return (*(v28 + 8))(v6, v27);
  }
}

uint64_t CanvasSectionLayout.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  CanvasSectionLayout.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6860FA0(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  CanvasSectionLayout.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6861010(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = 16;
  if (v4 > 0x10)
  {
    v5 = *(v3 + 64);
  }

  v6 = ((*(v3 + 80) + 8) & ~*(v3 + 80)) + v4;
  if (v6 <= 0x18)
  {
    v6 = 24;
  }

  v7 = v6 + 1;
  if (v7 <= v5 + 1)
  {
    v7 = v5 + 1;
  }

  if (v7 + 1 > v5)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v5;
  }

  v9 = *(*(*(a3 + 24) - 8) + 64);
  if (v9 <= v8)
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_34;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 251) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v14 < 2)
    {
LABEL_34:
      v16 = *(a1 + v9);
      if (v16 >= 5)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_34;
  }

LABEL_23:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 252;
}

void sub_1E68611AC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = 16;
  if (v6 > 0x10)
  {
    v7 = *(v5 + 64);
  }

  v8 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + v6;
  if (v8 <= 0x18)
  {
    v8 = 24;
  }

  v9 = v8 + 1;
  if (v9 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  if (v9 + 1 > v7)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = *(*(a4 + 24) - 8);
  if (*(v11 + 64) > v10)
  {
    v10 = *(v11 + 64);
  }

  v12 = v10 + 1;
  if (a3 < 0xFC)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 251) >> (8 * v12)) + 1;
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

  if (a2 > 0xFB)
  {
    v14 = a2 - 252;
    if (v12 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v10 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_48:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_48;
          }
        }

LABEL_45:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v10] = -a2;
      return;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_33;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_34;
  }
}

uint64_t sub_1E68615E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v8(v7);
  a5(v9);
  return sub_1E68B2D70();
}

uint64_t HorizontalGridView.init(header:items:footer:metrics:rowCount:contentMargins:densityFactor:dynamicTypeSize:sizeClass:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:actionButtonViewBuilder:contextMenuViewModifierBuilder:viewDescriptorBuilder:sectionHeaderSubtitleViewBuilder:onItemAppearedAtIndex:onItemDisappearedAtIndex:onItemSelectedWithIdentifier:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 a37, uint64_t a38, __int128 a39, __int128 a40, uint64_t a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, uint64_t a48, uint64_t a49)
{
  v97 = *a3;
  v52 = a7[1];
  v92 = a7[2];
  v93 = *a7;
  swift_getFunctionTypeMetadata1();
  v53 = sub_1E68B3750();
  v123 = 0;
  v124 = 0;
  v90 = a6[1];
  v91 = *a6;
  sub_1E672890C(&v123, v53, &v105);
  v103 = v105;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v105 = a32;
  *(&v105 + 1) = a40;
  v106 = AssociatedConformanceWitness;
  v107 = *(&a46 + 1);
  type metadata accessor for CanvasSectionHeader();
  v55 = sub_1E68B3750();
  v101 = *(v55 - 8);
  v102 = v55;
  (*(v101 + 16))(a9, a1);
  v105 = a32;
  v106 = a33;
  v107 = a34;
  v108 = a35;
  v109 = a36;
  v110 = a37;
  v111 = a38;
  v112 = a39;
  v113 = a40;
  v114 = a41;
  v115 = a42;
  v116 = a43;
  v117 = a44;
  v118 = a45;
  v119 = a46;
  v120 = a47;
  v121 = a48;
  v122 = a49;
  v56 = type metadata accessor for HorizontalGridView();
  *(a9 + v56[61]) = a2;
  *(a9 + v56[62]) = v97;
  v57 = v56[63];
  v58 = sub_1E68B3750();
  v98 = *(v58 - 8);
  v100 = v58;
  (*(v98 + 16))(a9 + v57, a4);
  *(a9 + v56[64]) = a5;
  v59 = (a9 + v56[65]);
  *v59 = v91;
  v59[1] = v90;
  v60 = v56[73];
  v123 = a19;
  v124 = a20;
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v123, FunctionTypeMetadata1, &v105);
  *(a9 + v60) = v105;
  v62 = (a9 + v56[66]);
  *v62 = v93;
  v62[1] = v52;
  v62[2] = v92;
  *(a9 + v56[67]) = a8;
  v96 = *(a42 - 8);
  (*(v96 + 16))(a9 + v56[68], a10, a42);
  v63 = v56[69];
  v123 = a11;
  v124 = a12;
  v64 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v123, v64, &v105);
  *(a9 + v63) = v105;
  v65 = v56[70];
  v123 = a13;
  v124 = a14;
  v66 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v123, v66, &v105);
  *(a9 + v65) = v105;
  v67 = v56[71];
  v123 = a15;
  v124 = a16;
  v68 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v123, v68, &v105);
  *(a9 + v67) = v105;
  v69 = (a9 + v56[75]);

  *v69 = sub_1E6862290(a21, a22, a32, *(&a32 + 1), a33, a34, a35, a36, a37, *(&a37 + 1), a38, a39, a40, a41, a42, *(&a42 + 1), a43, a44, a45, a46, a47, a48, a49);
  v69[1] = v70;
  v71 = (a9 + v56[72]);

  *&v89[40] = a41;
  *&v89[24] = a40;
  *v89 = a38;
  *&v89[8] = a39;
  *v71 = sub_1E6862078(a17, v72, a32, *(&a32 + 1), a33, a34, a35, a36, a37, *v89, *&v89[16], *&v89[32], a42, a43, a44, a45, a46, a47, a48, a49);
  v71[1] = v73;
  v74 = v56[74];
  v123 = a23;
  v124 = a24;
  v75 = swift_getFunctionTypeMetadata1();
  sub_1E672890C(&v123, v75, &v105);
  *(a9 + v74) = v105;
  if (a25)
  {
    v76 = swift_allocObject();
    *(v76 + 16) = a25;
    *(v76 + 24) = a26;
    v77 = sub_1E67E403C;
  }

  else
  {
    v77 = 0;
    v76 = 0;
  }

  v78 = (a9 + v56[76]);
  *v78 = v77;
  v78[1] = v76;
  if (a27)
  {
    v79 = swift_allocObject();
    *(v79 + 16) = a27;
    *(v79 + 24) = a28;
    v80 = sub_1E67E3FAC;
  }

  else
  {
    v80 = 0;
    v79 = 0;
  }

  v81 = (a9 + v56[77]);
  v82 = (a9 + v56[78]);
  *v81 = v80;
  v81[1] = v79;
  v83 = sub_1E68625AC(a29, a30, a32, *(&a32 + 1), a33, a34, a35, a36, a37, *(&a37 + 1), a38, a39, *(&a39 + 1), a40, *(&a40 + 1), a41, a42, *(&a42 + 1), a43, *(&a43 + 1), a44, *(&a44 + 1), a45, *(&a45 + 1), a46, *(&a46 + 1), a47, *(&a47 + 1), a48, a49);
  v85 = v84;

  (*(v96 + 8))(a10, a42);
  (*(v98 + 8))(a4, v100);
  (*(v101 + 8))(a1, v102);
  sub_1E672E440(v103);
  *v82 = v83;
  v82[1] = v85;
  v86 = v56[79];
  v87 = sub_1E68B1950();
  return (*(*(v87 - 8) + 32))(a9 + v86, a31, v87);
}

uint64_t sub_1E6862078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  *(v28 + 32) = a5;
  *(v28 + 40) = a6;
  *(v28 + 48) = a7;
  *(v28 + 56) = a8;
  *(v28 + 64) = a9;
  *(v28 + 80) = a10;
  *(v28 + 96) = a11;
  *(v28 + 112) = a12;
  *(v28 + 128) = a13;
  *(v28 + 144) = a14;
  *(v28 + 160) = a15;
  *(v28 + 176) = a16;
  *(v28 + 192) = a17;
  *(v28 + 208) = a18;
  *(v28 + 224) = a19;
  *(v28 + 232) = a20;
  *(v28 + 240) = a1;
  *(v28 + 248) = a2;
  v31[0] = sub_1E67D5538;
  v31[1] = v28;
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208);
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v31, FunctionTypeMetadata2, &v32);
  return v32;
}

uint64_t (*sub_1E68621E4(uint64_t a1))(uint64_t a1, uint64_t a2, char a3)
{
  v3 = (v1 + *(a1 + 288));
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
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E67D41E8;
}

uint64_t sub_1E6862290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23)
{
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  *(v27 + 32) = a5;
  *(v27 + 40) = a6;
  *(v27 + 48) = a7;
  *(v27 + 56) = a8;
  *(v27 + 64) = a9;
  *(v27 + 72) = a10;
  *(v27 + 80) = a11;
  *(v27 + 88) = a12;
  *(v27 + 104) = a13;
  *(v27 + 120) = a14;
  *(v27 + 128) = a15;
  *(v27 + 136) = a16;
  *(v27 + 144) = a17;
  *(v27 + 160) = a18;
  *(v27 + 176) = a19;
  *(v27 + 192) = a20;
  *(v27 + 208) = a21;
  *(v27 + 224) = a22;
  *(v27 + 232) = a23;
  *(v27 + 240) = a1;
  *(v27 + 248) = a2;
  v34[0] = sub_1E67D559C;
  v34[1] = v27;
  FunctionTypeMetadata2 = swift_getFunctionTypeMetadata2();
  sub_1E672890C(v34, FunctionTypeMetadata2, &v35);
  return v35;
}

uint64_t (*sub_1E68623F8(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = (v1 + *(a1 + 300));
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
  v13 = *(a1 + 224);
  *(v6 + 208) = *(a1 + 208);
  *(v6 + 224) = v13;
  *(v6 + 240) = v5;
  *(v6 + 248) = v4;

  return sub_1E67D5458;
}

uint64_t (*sub_1E68624A4(uint64_t a1))()
{
  v2 = (v1 + *(a1 + 304));
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

uint64_t (*sub_1E6862528(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 308));
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

uint64_t sub_1E68625AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a1)
  {
    v30 = a1;
    a1 = swift_allocObject();
    a1[2] = a3;
    a1[3] = a4;
    a1[4] = a5;
    a1[5] = a6;
    a1[6] = a7;
    a1[7] = a8;
    a1[8] = a9;
    a1[9] = a10;
    a1[10] = a11;
    a1[11] = a12;
    a1[12] = a13;
    a1[13] = a14;
    a1[14] = a15;
    a1[15] = a16;
    a1[16] = a17;
    a1[17] = a18;
    a1[18] = a19;
    a1[19] = a20;
    a1[20] = a21;
    a1[21] = a22;
    a1[22] = a23;
    a1[23] = a24;
    a1[24] = a25;
    a1[25] = a26;
    a1[26] = a27;
    a1[27] = a28;
    a1[28] = a29;
    a1[29] = a30;
    a1[30] = v30;
    a1[31] = a2;
    v37 = sub_1E67D5600;
  }

  else
  {
    v37 = 0;
  }

  v41[0] = v37;
  v41[1] = a1;
  swift_getFunctionTypeMetadata1();
  v38 = sub_1E68B3750();
  sub_1E672890C(v41, v38, &v42);
  return v42;
}

uint64_t (*sub_1E686279C(uint64_t a1))(uint64_t a1)
{
  v2 = (v1 + *(a1 + 312));
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
    v13 = *(a1 + 224);
    *(v6 + 208) = *(a1 + 208);
    *(v6 + 224) = v13;
    *(v6 + 240) = v3;
    *(v6 + 248) = v4;
    v14 = sub_1E67D54BC;
  }

  else
  {
    v14 = 0;
  }

  sub_1E6739D68(v3);
  return v14;
}

uint64_t HorizontalGridView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v192 = sub_1E68B2300();
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v190 = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v171 = &v281;
  v4 = a1[3];
  v187 = a1[14];
  v280 = v4;
  *&v281 = v187;
  v5 = a1[19];
  v188 = a1[26];
  v6 = a1;
  *(&v281 + 1) = v5;
  v282 = v188;
  v184 = type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  v185 = sub_1E68B1E40();
  v186 = sub_1E68B2220();
  v183 = sub_1E68B3750();
  v202 = a1[18];
  swift_getTupleTypeMetadata2();
  v7 = sub_1E68B33B0();
  v201 = a1[29];
  v177 = *(v201 + 32);
  v178 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a1[20];
  v280 = a1[5];
  *&v281 = v4;
  v198 = v280;
  *(&v281 + 1) = v4;
  v282 = v8;
  v9 = v8;
  v199 = v8;
  *&v283 = v5;
  *(&v283 + 1) = v5;
  v10 = type metadata accessor for ActionCardView();
  v170 = v10;
  WitnessTable = swift_getWitnessTable();
  v280 = v10;
  *&v281 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v196 = sub_1E68B2440();
  sub_1E68B1E40();
  v11 = sub_1E68B1E40();
  v173 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v292 = v9;
  v293 = v173;
  v12 = MEMORY[0x1E697E858];
  v13 = swift_getWitnessTable();
  v290 = v13;
  v291 = MEMORY[0x1E697F568];
  v194 = v12;
  v167 = v11;
  v166 = swift_getWitnessTable();
  v280 = v11;
  *&v281 = v166;
  v154 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v14 = sub_1E68B1E40();
  v159 = v14;
  v288 = v13;
  v289 = MEMORY[0x1E697E040];
  v158 = swift_getWitnessTable();
  v280 = v14;
  *&v281 = v158;
  swift_getOpaqueTypeMetadata2();
  v160 = sub_1E68B2220();
  v162 = sub_1E68B2B90();
  v161 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v165 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v168 = sub_1E68B2220();
  v149 = sub_1E68B2220();
  v197 = v6[10];
  v181 = v6[16];
  v182 = v6[28];
  v15 = v198;
  v280 = v198;
  *&v281 = v4;
  *(&v281 + 1) = v4;
  v282 = v197;
  v16 = v199;
  *&v283 = v181;
  *(&v283 + 1) = v199;
  v284 = v5;
  v285 = v5;
  OpaqueTypeMetadata2 = v6[24];
  v286 = OpaqueTypeMetadata2;
  v287 = v182;
  v17 = type metadata accessor for FullWidthStageView();
  v164 = v17;
  v163 = swift_getWitnessTable();
  v280 = v17;
  *&v281 = v163;
  swift_getOpaqueTypeMetadata2();
  v174 = v4;
  v175 = v5;
  v18 = type metadata accessor for InfoActionCardView();
  v157 = v18;
  v156 = swift_getWitnessTable();
  v280 = v18;
  *&v281 = v156;
  swift_getOpaqueTypeMetadata2();
  v155 = sub_1E68B2220();
  v126 = sub_1E68B2220();
  v195 = v6;
  v180 = *(v6 + 21);
  v280 = v15;
  v282 = v16;
  v283 = v180;
  v179 = *(v6 + 3);
  v281 = v179;
  v19 = type metadata accessor for LargeBrickView();
  v153 = v19;
  v152 = swift_getWitnessTable();
  v280 = v19;
  *&v281 = v152;
  swift_getOpaqueTypeMetadata2();
  v20 = v15;
  v21 = type metadata accessor for DynamicBrickView();
  v151 = v21;
  v150 = swift_getWitnessTable();
  v280 = v21;
  *&v281 = v150;
  swift_getOpaqueTypeMetadata2();
  v142 = sub_1E68B2220();
  v22 = type metadata accessor for MonogramVerticalStackView();
  v147 = v22;
  v146 = swift_getWitnessTable();
  v280 = v22;
  *&v281 = v146;
  swift_getOpaqueTypeMetadata2();
  v143 = sub_1E68B2220();
  v148 = sub_1E68B2220();
  v119[1] = sub_1E68B2220();
  v23 = type metadata accessor for StandardCardView();
  v145 = v23;
  v144 = swift_getWitnessTable();
  v280 = v23;
  *&v281 = v144;
  swift_getOpaqueTypeMetadata2();
  v280 = v20;
  *&v281 = v4;
  *(&v281 + 1) = v16;
  v282 = v5;
  v24 = type metadata accessor for StandardHorizontalStackView();
  v141 = v24;
  v140 = swift_getWitnessTable();
  v280 = v24;
  *&v281 = v140;
  swift_getOpaqueTypeMetadata2();
  v122 = sub_1E68B2220();
  v25 = type metadata accessor for StandardVerticalStackView();
  v139 = v25;
  v138 = swift_getWitnessTable();
  v280 = v25;
  *&v281 = v138;
  swift_getOpaqueTypeMetadata2();
  v133 = type metadata accessor for SummaryCardView();
  v137 = sub_1E68B2220();
  v119[2] = sub_1E68B2220();
  v26 = type metadata accessor for TallCardView();
  v135 = v26;
  v134 = swift_getWitnessTable();
  v280 = v26;
  *&v281 = v134;
  swift_getOpaqueTypeMetadata2();
  v27 = type metadata accessor for VerticalStackCardView();
  v127 = swift_getWitnessTable();
  v280 = v27;
  *&v281 = v127;
  swift_getOpaqueTypeMetadata2();
  v119[3] = sub_1E68B2220();
  v28 = type metadata accessor for WideBrickView();
  v120 = swift_getWitnessTable();
  v280 = v28;
  *&v281 = v120;
  swift_getOpaqueTypeMetadata2();
  v119[4] = sub_1E68B2220();
  v121 = sub_1E68B2220();
  v123 = sub_1E68B2220();
  v124 = sub_1E68B2220();
  v128 = sub_1E68B2B90();
  v130 = sub_1E68B1E40();
  v131 = sub_1E68B2220();
  v136 = sub_1E68B1E40();
  v125 = sub_1E68B1E40();
  v29 = v195;
  v196 = *(v195 + 4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v172 = v29[23];
  v31 = v172;
  v280 = v196;
  *v171 = *(&v196 + 1);
  *(&v281 + 1) = AssociatedConformanceWitness;
  v282 = v31;
  v129 = type metadata accessor for CanvasContextMenu();
  v132 = sub_1E68B1E40();
  v280 = v170;
  *&v281 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v280 = v167;
  *&v281 = v166;
  v33 = swift_getOpaqueTypeConformance2();
  v280 = v159;
  *&v281 = v158;
  v34 = swift_getOpaqueTypeConformance2();
  v278 = v33;
  v279 = v34;
  v277 = swift_getWitnessTable();
  v275 = swift_getWitnessTable();
  v276 = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  v36 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v273 = v35;
  v274 = v36;
  v37 = swift_getWitnessTable();
  v171 = MEMORY[0x1E6981870];
  v38 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v271 = v37;
  v272 = v38;
  v39 = swift_getWitnessTable();
  v269 = OpaqueTypeConformance2;
  v270 = v39;
  v40 = swift_getWitnessTable();
  v280 = v164;
  *&v281 = v163;
  v41 = swift_getOpaqueTypeConformance2();
  v280 = v157;
  *&v281 = v156;
  v42 = swift_getOpaqueTypeConformance2();
  v267 = v41;
  v268 = v42;
  v43 = swift_getWitnessTable();
  v265 = v40;
  v266 = v43;
  v44 = swift_getWitnessTable();
  v280 = v153;
  *&v281 = v152;
  v45 = swift_getOpaqueTypeConformance2();
  v280 = v151;
  *&v281 = v150;
  v46 = swift_getOpaqueTypeConformance2();
  v263 = v45;
  v264 = v46;
  v47 = swift_getWitnessTable();
  v280 = v147;
  *&v281 = v146;
  v261 = swift_getOpaqueTypeConformance2();
  v262 = v46;
  v48 = swift_getWitnessTable();
  v259 = v47;
  v260 = v48;
  v49 = swift_getWitnessTable();
  v257 = v44;
  v258 = v49;
  v50 = swift_getWitnessTable();
  v280 = v145;
  *&v281 = v144;
  v51 = swift_getOpaqueTypeConformance2();
  v280 = v141;
  *&v281 = v140;
  v52 = swift_getOpaqueTypeConformance2();
  v255 = v51;
  v256 = v52;
  v53 = swift_getWitnessTable();
  v280 = v139;
  *&v281 = v138;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = swift_getWitnessTable();
  v253 = v54;
  v254 = v55;
  v56 = swift_getWitnessTable();
  v251 = v53;
  v252 = v56;
  v57 = swift_getWitnessTable();
  v280 = v135;
  *&v281 = v134;
  v58 = swift_getOpaqueTypeConformance2();
  v280 = v27;
  *&v281 = v127;
  v59 = swift_getOpaqueTypeConformance2();
  v249 = v58;
  v250 = v59;
  v60 = swift_getWitnessTable();
  v280 = v28;
  *&v281 = v120;
  v61 = swift_getOpaqueTypeConformance2();
  v247 = OpaqueTypeMetadata2;
  v248 = v61;
  v62 = swift_getWitnessTable();
  v245 = v60;
  v246 = v62;
  v63 = swift_getWitnessTable();
  v243 = v57;
  v244 = v63;
  v64 = swift_getWitnessTable();
  v241 = v50;
  v242 = v64;
  v240 = swift_getWitnessTable();
  v238 = swift_getWitnessTable();
  v239 = v173;
  v65 = swift_getWitnessTable();
  v236 = MEMORY[0x1E6981E60];
  v237 = v65;
  v66 = swift_getWitnessTable();
  v67 = MEMORY[0x1E69805D0];
  v234 = v66;
  v235 = MEMORY[0x1E69805D0];
  v232 = swift_getWitnessTable();
  v233 = v67;
  v68 = swift_getWitnessTable();
  v69 = swift_getWitnessTable();
  v230 = v68;
  v231 = v69;
  v70 = v132;
  v71 = swift_getWitnessTable();
  v280 = v70;
  *&v281 = v71;
  v72 = v70;
  v73 = swift_getOpaqueTypeMetadata2();
  v280 = v72;
  *&v281 = v71;
  v74 = swift_getOpaqueTypeConformance2();
  v280 = v73;
  *&v281 = v74;
  swift_getOpaqueTypeMetadata2();
  v75 = sub_1E68B2220();
  v76 = v178;
  v77 = swift_getWitnessTable();
  v78 = AssociatedTypeWitness;
  v79 = swift_getAssociatedConformanceWitness();
  v280 = v76;
  *&v281 = v78;
  *(&v281 + 1) = v75;
  v282 = v77;
  *&v283 = v79;
  sub_1E68B2D40();
  v280 = v73;
  *&v281 = v74;
  v228 = swift_getOpaqueTypeConformance2();
  v229 = v74;
  v227 = swift_getWitnessTable();
  swift_getWitnessTable();
  v80 = sub_1E68B2ED0();
  v81 = swift_getWitnessTable();
  v280 = v80;
  *&v281 = v81;
  swift_getOpaqueTypeMetadata2();
  v280 = v80;
  *&v281 = v81;
  swift_getOpaqueTypeConformance2();
  v82 = sub_1E68B1B80();
  v83 = sub_1E68B2480();
  v84 = swift_getWitnessTable();
  v280 = v82;
  *&v281 = v83;
  *(&v281 + 1) = v84;
  v282 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200);
  v85 = sub_1E68B2D80();
  v86 = sub_1E673F2EC();
  v87 = swift_getWitnessTable();
  v88 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  v225 = v87;
  v226 = v88;
  v89 = swift_getWitnessTable();
  v223 = v86;
  v224 = v89;
  v222 = swift_getWitnessTable();
  v90 = swift_getWitnessTable();
  v280 = v82;
  *&v281 = v83;
  *(&v281 + 1) = v84;
  v282 = MEMORY[0x1E697CC08];
  v91 = swift_getOpaqueTypeConformance2();
  v92 = sub_1E67D2CA8();
  v219 = v90;
  v220 = v91;
  v221 = v92;
  v178 = v85;
  swift_getWitnessTable();
  v93 = sub_1E68B2CC0();
  v194 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v95 = v119 - v94;
  v185 = swift_getWitnessTable();
  v280 = v93;
  *&v281 = v185;
  v186 = MEMORY[0x1E697CF18];
  v96 = swift_getOpaqueTypeMetadata2();
  v97 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v99 = v119 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100);
  v102 = v119 - v101;
  sub_1E68B21D0();
  v103 = v195;
  *&v104 = v195[2];
  *(&v104 + 1) = v174;
  *&v105 = v195[4];
  *(&v105 + 1) = v198;
  v203 = v104;
  v204 = v105;
  v205 = v179;
  v206 = v196;
  v207 = v197;
  v208 = *(v195 + 11);
  *&v104 = v195[13];
  *(&v104 + 1) = v187;
  *&v105 = v195[15];
  *(&v105 + 1) = v181;
  v210 = v105;
  *&v105 = v195[17];
  *(&v105 + 1) = v202;
  *&v106 = v175;
  *(&v106 + 1) = v199;
  v209 = v104;
  v212 = v106;
  v211 = v105;
  *&v104 = v172;
  *(&v104 + 1) = OpaqueTypeMetadata2;
  v214 = v104;
  v213 = v180;
  *&v104 = v195[25];
  *(&v104 + 1) = v188;
  *&v105 = v195[27];
  *(&v105 + 1) = v182;
  v216 = v105;
  v215 = v104;
  v217 = v201;
  v107 = v189;
  v218 = v189;
  sub_1E68B2CB0();
  v108 = sub_1E68B24F0();
  v109 = (v107 + *(v103 + 65));
  v110 = *v109;
  v111 = v109[1];
  v112 = v109[2];
  v113 = v109[3];
  v114 = v190;
  sub_1E68B22F0();
  v115 = v185;
  MEMORY[0x1E69510A0](v108, v114, v93, v185, v112, v111, v110, v113);
  (*(v191 + 8))(v114, v192);
  (*(v194 + 8))(v95, v93);
  v280 = v93;
  *&v281 = v115;
  v116 = swift_getOpaqueTypeConformance2();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v99, v96, v116);
  v117 = *(v97 + 8);
  v117(v99, v96);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v102, v96, v116);
  return (v117)(v102, v96);
}

uint64_t sub_1E6863E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v106 = a8;
  v110 = a7;
  v104 = a6;
  v88 = a4;
  v86 = a2;
  v90 = a1;
  v94 = a9;
  v87 = a13;
  v85 = a12;
  v103 = a23;
  v101 = a22;
  v89 = a28;
  v102 = a29;
  v100 = a24;
  v109 = a25;
  v83 = a16;
  v99 = a17;
  v98 = a10;
  v107 = a11;
  v97 = a30;
  v82 = a18;
  v84 = a26;
  v80 = a27;
  v81 = a14;
  v79 = a15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v158 = a3;
  v159 = a15;
  v160 = a20;
  v161 = a27;
  v91 = type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  v92 = sub_1E68B1E40();
  v93 = sub_1E68B2220();
  v105 = sub_1E68B3750();
  v108 = a19;
  swift_getTupleTypeMetadata2();
  v32 = sub_1E68B33B0();
  v77 = *(a30 + 32);
  v78 = v32;
  swift_getAssociatedTypeWitness();
  v96 = a5;
  type metadata accessor for ActionCardView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  v75 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v172 = a21;
  v173 = v75;
  v33 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v171 = MEMORY[0x1E697F568];
  v95 = v33;
  swift_getWitnessTable();
  v65[37] = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v65[42] = sub_1E68B1E40();
  v168 = WitnessTable;
  v169 = MEMORY[0x1E697E040];
  v65[40] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[43] = sub_1E68B2220();
  v65[45] = sub_1E68B2B90();
  v65[44] = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v65[47] = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  sub_1E68B2220();
  v65[32] = sub_1E68B2220();
  v164 = a20;
  v165 = a20;
  v166 = a25;
  v167 = a29;
  v66 = type metadata accessor for FullWidthStageView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v73 = a3;
  v74 = a20;
  v65[41] = type metadata accessor for InfoActionCardView();
  v65[39] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[38] = sub_1E68B2220();
  v65[10] = sub_1E68B2220();
  v163 = a23;
  v65[36] = type metadata accessor for LargeBrickView();
  v65[35] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[34] = type metadata accessor for DynamicBrickView();
  v65[33] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[25] = sub_1E68B2220();
  v65[30] = type metadata accessor for MonogramVerticalStackView();
  v65[29] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[26] = sub_1E68B2220();
  v65[31] = sub_1E68B2220();
  v65[1] = sub_1E68B2220();
  v65[28] = type metadata accessor for StandardCardView();
  v65[27] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[24] = type metadata accessor for StandardHorizontalStackView();
  v65[23] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[7] = sub_1E68B2220();
  v65[22] = type metadata accessor for StandardVerticalStackView();
  v65[21] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[17] = type metadata accessor for SummaryCardView();
  v65[20] = sub_1E68B2220();
  v65[2] = sub_1E68B2220();
  v72 = a21;
  type metadata accessor for TallCardView();
  v65[18] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for VerticalStackCardView();
  v65[11] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[3] = sub_1E68B2220();
  type metadata accessor for WideBrickView();
  v65[5] = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v65[4] = sub_1E68B2220();
  v65[6] = sub_1E68B2220();
  v65[8] = sub_1E68B2220();
  v65[9] = sub_1E68B2220();
  v65[13] = sub_1E68B2B90();
  v65[14] = sub_1E68B1E40();
  v65[16] = sub_1E68B2220();
  v65[46] = sub_1E68B1E40();
  v65[12] = sub_1E68B1E40();
  swift_getAssociatedConformanceWitness();
  v65[15] = type metadata accessor for CanvasContextMenu();
  v65[19] = sub_1E68B1E40();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v156 = swift_getOpaqueTypeConformance2();
  v157 = swift_getOpaqueTypeConformance2();
  v35 = MEMORY[0x1E697F968];
  v155 = swift_getWitnessTable();
  v153 = swift_getWitnessTable();
  v154 = MEMORY[0x1E697E5D8];
  v151 = swift_getWitnessTable();
  v152 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v149 = swift_getWitnessTable();
  v150 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v147 = OpaqueTypeConformance2;
  v148 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v145 = swift_getOpaqueTypeConformance2();
  v146 = swift_getOpaqueTypeConformance2();
  v143 = v36;
  v144 = swift_getWitnessTable();
  v37 = swift_getWitnessTable();
  v141[76] = swift_getOpaqueTypeConformance2();
  v142 = swift_getOpaqueTypeConformance2();
  v38 = swift_getWitnessTable();
  v141[74] = swift_getOpaqueTypeConformance2();
  v141[75] = v142;
  v141[72] = v38;
  v141[73] = swift_getWitnessTable();
  v141[70] = v37;
  v141[71] = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v141[68] = swift_getOpaqueTypeConformance2();
  v141[69] = swift_getOpaqueTypeConformance2();
  v40 = swift_getWitnessTable();
  v141[66] = swift_getOpaqueTypeConformance2();
  v141[67] = swift_getWitnessTable();
  v141[64] = v40;
  v141[65] = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v141[62] = swift_getOpaqueTypeConformance2();
  v141[63] = swift_getOpaqueTypeConformance2();
  v42 = swift_getWitnessTable();
  v141[60] = a25;
  v141[61] = swift_getOpaqueTypeConformance2();
  v141[58] = v42;
  v141[59] = swift_getWitnessTable();
  v141[56] = v41;
  v141[57] = swift_getWitnessTable();
  v141[54] = v39;
  v141[55] = swift_getWitnessTable();
  v141[53] = swift_getWitnessTable();
  v141[51] = swift_getWitnessTable();
  v141[52] = v75;
  v43 = swift_getWitnessTable();
  v141[49] = MEMORY[0x1E6981E60];
  v141[50] = v43;
  v70 = v35;
  v44 = swift_getWitnessTable();
  v45 = MEMORY[0x1E69805D0];
  v141[47] = v44;
  v141[48] = MEMORY[0x1E69805D0];
  v141[45] = swift_getWitnessTable();
  v141[46] = v45;
  v141[43] = swift_getWitnessTable();
  v141[44] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v46 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  v141[41] = swift_getOpaqueTypeConformance2();
  v141[42] = v46;
  v141[40] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2ED0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v71 = sub_1E68B1B80();
  v69 = sub_1E68B2480();
  v68 = swift_getWitnessTable();
  v158 = v71;
  v159 = v69;
  v160 = v68;
  v161 = MEMORY[0x1E697CC08];
  v67 = MEMORY[0x1E697D2A8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65[48] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200);
  v47 = sub_1E68B2D80();
  v48 = *(v47 - 8);
  v77 = v47;
  v78 = v48;
  MEMORY[0x1EEE9AC00](v47);
  v66 = v65 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v75 = v65 - v51;
  v141[2] = v86;
  v141[3] = v73;
  v141[4] = v88;
  v141[5] = v96;
  v141[6] = v104;
  v141[7] = v110;
  v141[8] = v106;
  v141[9] = v98;
  v141[10] = v107;
  v141[11] = v85;
  v141[12] = v87;
  v141[13] = v81;
  v141[14] = v79;
  v141[15] = v83;
  v141[16] = v99;
  v141[17] = v82;
  v141[18] = v108;
  v141[19] = v74;
  v141[20] = v72;
  v141[21] = v101;
  v141[22] = v103;
  v141[23] = v100;
  v141[24] = v109;
  v141[25] = v84;
  v141[26] = v80;
  v141[27] = v89;
  v141[28] = v102;
  v141[29] = v97;
  v141[30] = v90;
  v140[2] = v86;
  v140[3] = v73;
  v140[4] = v88;
  v140[5] = v96;
  v140[6] = v104;
  v140[7] = v110;
  v140[8] = v106;
  v140[9] = v98;
  v140[10] = v107;
  v140[11] = v85;
  v140[12] = v87;
  v140[13] = v81;
  v140[14] = v79;
  v140[15] = v83;
  v140[16] = v99;
  v140[17] = v82;
  v140[18] = v108;
  v140[19] = v74;
  v140[20] = v72;
  v140[21] = v101;
  v140[22] = v103;
  v140[23] = v100;
  v140[24] = v109;
  v140[25] = v84;
  v140[26] = v80;
  v140[27] = v89;
  v140[28] = v102;
  v140[29] = v97;
  v140[30] = v90;
  v111 = v86;
  v112 = v73;
  v113 = v88;
  v114 = v96;
  v115 = v104;
  v116 = v110;
  v117 = v106;
  v118 = v98;
  v119 = v107;
  v120 = v85;
  v121 = v87;
  v122 = v81;
  v123 = v79;
  v124 = v83;
  v125 = v99;
  v126 = v82;
  v127 = v108;
  v128 = v74;
  v129 = v72;
  v130 = v101;
  v131 = v103;
  v132 = v100;
  v133 = v109;
  v134 = v84;
  v135 = v80;
  v136 = v89;
  v137 = v102;
  v138 = v97;
  v139 = v90;
  v52 = sub_1E673F2EC();
  v53 = swift_getWitnessTable();
  v54 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  v141[38] = v53;
  v141[39] = v54;
  v55 = swift_getWitnessTable();
  v141[36] = v52;
  v141[37] = v55;
  v141[35] = swift_getWitnessTable();
  v56 = swift_getWitnessTable();
  v158 = v71;
  v159 = v69;
  v160 = v68;
  v161 = MEMORY[0x1E697CC08];
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_1E67D2CA8();
  v57 = v66;
  sub_1E68615E8(sub_1E686DE6C, v141, sub_1E686DE84, v140, sub_1E686DE9C);
  v141[32] = v56;
  v141[33] = v63;
  v141[34] = v64;
  v58 = v77;
  v59 = swift_getWitnessTable();
  v60 = v75;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v57, v58, v59);
  v61 = *(v78 + 8);
  v61(v57, v58);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v60, v58, v59);
  return (v61)(v60, v58);
}

uint64_t sub_1E6865454@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v229 = a8;
  v244 = a7;
  v251 = a6;
  v241 = a4;
  v239 = a2;
  v227 = a1;
  v164 = a9;
  v230 = a30;
  v231 = a29;
  v226 = a28;
  v225 = a27;
  v224 = a26;
  v245 = a25;
  v232 = a24;
  v252 = a23;
  v250 = a22;
  v248 = a19;
  v238 = a18;
  v247 = a17;
  v237 = a16;
  v236 = a15;
  v235 = a14;
  v234 = a13;
  v233 = a12;
  v253 = a11;
  v246 = a10;
  v32 = sub_1E68B2460();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v162[1] = v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_1E68B2480();
  v163 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v162[0] = v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v35 = sub_1E68B33B0();
  v222 = *(a30 + 32);
  v223 = v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v254 = a5;
  v249 = a3;
  v255 = a3;
  v256 = a3;
  v257 = a21;
  v258 = a20;
  v259 = a20;
  v36 = type metadata accessor for ActionCardView();
  v219 = v36;
  WitnessTable = swift_getWitnessTable();
  v254 = v36;
  v255 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v210 = sub_1E68B2440();
  sub_1E68B1E40();
  v37 = sub_1E68B1E40();
  v220 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v339 = a21;
  v340 = v220;
  v38 = MEMORY[0x1E697E858];
  v39 = swift_getWitnessTable();
  v337 = v39;
  v338 = MEMORY[0x1E697F568];
  v217 = v38;
  v215 = v37;
  v214 = swift_getWitnessTable();
  v254 = v37;
  v255 = v214;
  v201 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v40 = sub_1E68B1E40();
  v206 = v40;
  v335 = v39;
  v336 = MEMORY[0x1E697E040];
  v204 = swift_getWitnessTable();
  v254 = v40;
  v255 = v204;
  swift_getOpaqueTypeMetadata2();
  v207 = sub_1E68B2220();
  v209 = sub_1E68B2B90();
  v208 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v211 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v216 = sub_1E68B2220();
  v196 = sub_1E68B2220();
  v254 = a5;
  v41 = v249;
  v255 = v249;
  v256 = v249;
  v257 = v253;
  v258 = v247;
  v259 = a21;
  v260 = a20;
  v261 = a20;
  v262 = v245;
  v263 = v231;
  v42 = type metadata accessor for FullWidthStageView();
  OpaqueTypeMetadata2 = v42;
  v212 = swift_getWitnessTable();
  v254 = v42;
  v255 = v212;
  swift_getOpaqueTypeMetadata2();
  v240 = a20;
  v43 = type metadata accessor for InfoActionCardView();
  v205 = v43;
  v203 = swift_getWitnessTable();
  v254 = v43;
  v255 = v203;
  swift_getOpaqueTypeMetadata2();
  v202 = sub_1E68B2220();
  v173 = sub_1E68B2220();
  v254 = a5;
  v255 = v251;
  v256 = v244;
  v257 = a21;
  v258 = v250;
  v259 = v252;
  v44 = type metadata accessor for LargeBrickView();
  v200 = v44;
  v199 = swift_getWitnessTable();
  v254 = v44;
  v255 = v199;
  swift_getOpaqueTypeMetadata2();
  v45 = type metadata accessor for DynamicBrickView();
  v198 = v45;
  v197 = swift_getWitnessTable();
  v254 = v45;
  v255 = v197;
  swift_getOpaqueTypeMetadata2();
  v189 = sub_1E68B2220();
  v46 = type metadata accessor for MonogramVerticalStackView();
  v194 = v46;
  v193 = swift_getWitnessTable();
  v254 = v46;
  v255 = v193;
  swift_getOpaqueTypeMetadata2();
  v190 = sub_1E68B2220();
  v195 = sub_1E68B2220();
  sub_1E68B2220();
  v47 = type metadata accessor for StandardCardView();
  v192 = v47;
  v191 = swift_getWitnessTable();
  v254 = v47;
  v255 = v191;
  swift_getOpaqueTypeMetadata2();
  v254 = a5;
  v255 = v41;
  v256 = a21;
  v257 = a20;
  v48 = type metadata accessor for StandardHorizontalStackView();
  v188 = v48;
  v187 = swift_getWitnessTable();
  v254 = v48;
  v255 = v187;
  swift_getOpaqueTypeMetadata2();
  v170 = sub_1E68B2220();
  v49 = type metadata accessor for StandardVerticalStackView();
  v186 = v49;
  v185 = swift_getWitnessTable();
  v254 = v49;
  v255 = v185;
  swift_getOpaqueTypeMetadata2();
  v243 = a5;
  v180 = type metadata accessor for SummaryCardView();
  v184 = sub_1E68B2220();
  v165 = sub_1E68B2220();
  v50 = type metadata accessor for TallCardView();
  v182 = v50;
  v181 = swift_getWitnessTable();
  v254 = v50;
  v255 = v181;
  swift_getOpaqueTypeMetadata2();
  v242 = a21;
  v51 = type metadata accessor for VerticalStackCardView();
  v174 = swift_getWitnessTable();
  v254 = v51;
  v255 = v174;
  swift_getOpaqueTypeMetadata2();
  v166 = sub_1E68B2220();
  v52 = type metadata accessor for WideBrickView();
  v168 = swift_getWitnessTable();
  v254 = v52;
  v255 = v168;
  swift_getOpaqueTypeMetadata2();
  v167 = sub_1E68B2220();
  v169 = sub_1E68B2220();
  v171 = sub_1E68B2220();
  v172 = sub_1E68B2220();
  v176 = sub_1E68B2B90();
  v177 = sub_1E68B1E40();
  v179 = sub_1E68B2220();
  v210 = sub_1E68B1E40();
  v175 = sub_1E68B1E40();
  v53 = v229;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v254 = v53;
  v255 = v246;
  v256 = AssociatedConformanceWitness;
  v257 = v232;
  v178 = type metadata accessor for CanvasContextMenu();
  v183 = sub_1E68B1E40();
  v254 = v219;
  v255 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v254 = v215;
  v255 = v214;
  v56 = swift_getOpaqueTypeConformance2();
  v254 = v206;
  v255 = v204;
  v57 = swift_getOpaqueTypeConformance2();
  v333 = v56;
  v334 = v57;
  v332 = swift_getWitnessTable();
  v219 = MEMORY[0x1E6981600];
  v330 = swift_getWitnessTable();
  v331 = MEMORY[0x1E697E5D8];
  v58 = swift_getWitnessTable();
  v59 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v328 = v58;
  v329 = v59;
  v60 = swift_getWitnessTable();
  v61 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v326 = v60;
  v327 = v61;
  v62 = swift_getWitnessTable();
  v324 = OpaqueTypeConformance2;
  v325 = v62;
  v63 = swift_getWitnessTable();
  v254 = OpaqueTypeMetadata2;
  v255 = v212;
  v64 = swift_getOpaqueTypeConformance2();
  v254 = v205;
  v255 = v203;
  v65 = swift_getOpaqueTypeConformance2();
  v322 = v64;
  v323 = v65;
  v66 = swift_getWitnessTable();
  v320 = v63;
  v321 = v66;
  v67 = swift_getWitnessTable();
  v254 = v200;
  v255 = v199;
  v68 = swift_getOpaqueTypeConformance2();
  v254 = v198;
  v255 = v197;
  v69 = swift_getOpaqueTypeConformance2();
  v318 = v68;
  v319 = v69;
  v70 = swift_getWitnessTable();
  v254 = v194;
  v255 = v193;
  v316 = swift_getOpaqueTypeConformance2();
  v317 = v69;
  v71 = swift_getWitnessTable();
  v314 = v70;
  v315 = v71;
  v72 = swift_getWitnessTable();
  v312 = v67;
  v313 = v72;
  v73 = swift_getWitnessTable();
  v254 = v192;
  v255 = v191;
  v74 = swift_getOpaqueTypeConformance2();
  v254 = v188;
  v255 = v187;
  v75 = swift_getOpaqueTypeConformance2();
  v310 = v74;
  v311 = v75;
  v76 = swift_getWitnessTable();
  v254 = v186;
  v255 = v185;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = swift_getWitnessTable();
  v308 = v77;
  v309 = v78;
  v79 = swift_getWitnessTable();
  v306 = v76;
  v307 = v79;
  v80 = swift_getWitnessTable();
  v254 = v182;
  v255 = v181;
  v81 = swift_getOpaqueTypeConformance2();
  v254 = v51;
  v255 = v174;
  v82 = swift_getOpaqueTypeConformance2();
  v304 = v81;
  v305 = v82;
  v83 = swift_getWitnessTable();
  v254 = v52;
  v255 = v168;
  v84 = swift_getOpaqueTypeConformance2();
  v302 = v245;
  v303 = v84;
  v85 = swift_getWitnessTable();
  v300 = v83;
  v301 = v85;
  v86 = swift_getWitnessTable();
  v298 = v80;
  v299 = v86;
  v87 = swift_getWitnessTable();
  v296 = v73;
  v297 = v87;
  v295 = swift_getWitnessTable();
  v293 = swift_getWitnessTable();
  v294 = v220;
  v88 = swift_getWitnessTable();
  v291 = MEMORY[0x1E6981E60];
  v292 = v88;
  v89 = swift_getWitnessTable();
  v90 = MEMORY[0x1E69805D0];
  v289 = v89;
  v290 = MEMORY[0x1E69805D0];
  v287 = swift_getWitnessTable();
  v288 = v90;
  v91 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v285 = v91;
  v286 = v92;
  v93 = v183;
  v94 = swift_getWitnessTable();
  v254 = v93;
  v95 = v93;
  v255 = v94;
  v96 = swift_getOpaqueTypeMetadata2();
  v254 = v95;
  v255 = v94;
  v97 = swift_getOpaqueTypeConformance2();
  v254 = v96;
  v255 = v97;
  swift_getOpaqueTypeMetadata2();
  v98 = sub_1E68B2220();
  v99 = v223;
  v100 = swift_getWitnessTable();
  v101 = AssociatedTypeWitness;
  v102 = v248;
  v103 = swift_getAssociatedConformanceWitness();
  v254 = v99;
  v255 = v101;
  v256 = v98;
  v257 = v100;
  v258 = v103;
  sub_1E68B2D40();
  v254 = v96;
  v255 = v97;
  v283 = swift_getOpaqueTypeConformance2();
  v284 = v97;
  v282 = swift_getWitnessTable();
  swift_getWitnessTable();
  v104 = sub_1E68B2ED0();
  v105 = swift_getWitnessTable();
  v254 = v104;
  v255 = v105;
  v106 = swift_getOpaqueTypeMetadata2();
  v254 = v104;
  v255 = v105;
  v107 = swift_getOpaqueTypeConformance2();
  WitnessTable = v106;
  v215 = v107;
  v108 = sub_1E68B1B80();
  AssociatedTypeWitness = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v219 = v162 - v109;
  v110 = swift_getWitnessTable();
  v223 = v108;
  v254 = v108;
  v255 = v228;
  v217 = v110;
  v256 = v110;
  v257 = MEMORY[0x1E697CC08];
  v222 = swift_getOpaqueTypeMetadata2();
  v220 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v214 = v162 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v112);
  v216 = v162 - v113;
  v254 = v239;
  v255 = v249;
  v256 = v241;
  v257 = v243;
  v258 = v251;
  v114 = v244;
  v259 = v244;
  v115 = v229;
  v260 = v229;
  v261 = v246;
  v262 = v253;
  v263 = v233;
  v264 = v234;
  v265 = v235;
  v266 = v236;
  v267 = v237;
  v268 = v247;
  v269 = v238;
  v270 = v102;
  v271 = v240;
  v272 = v242;
  v273 = v250;
  v274 = v252;
  v116 = v232;
  v275 = v232;
  v117 = v245;
  v276 = v245;
  v118 = v224;
  v277 = v224;
  v119 = v225;
  v278 = v225;
  v120 = v226;
  v279 = v226;
  v121 = v231;
  v280 = v231;
  v122 = v230;
  v281 = v230;
  result = type metadata accessor for HorizontalGridView();
  if ((*(v227 + *(result + 256)) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OpaqueTypeMetadata2 = v162;
    MEMORY[0x1EEE9AC00](result);
    v124 = v249;
    v162[-30] = v239;
    v162[-29] = v124;
    v125 = v243;
    v162[-28] = v241;
    v162[-27] = v125;
    v162[-26] = v251;
    v162[-25] = v114;
    v126 = v246;
    v162[-24] = v115;
    v162[-23] = v126;
    v127 = v233;
    v162[-22] = v253;
    v162[-21] = v127;
    v128 = v235;
    v162[-20] = v234;
    v162[-19] = v128;
    v129 = v237;
    v162[-18] = v236;
    v162[-17] = v129;
    v130 = v238;
    v162[-16] = v247;
    v162[-15] = v130;
    v131 = v240;
    v162[-14] = v248;
    v162[-13] = v131;
    v132 = v250;
    v162[-12] = v242;
    v162[-11] = v132;
    v162[-10] = v252;
    v162[-9] = v116;
    v162[-8] = v117;
    v162[-7] = v118;
    v162[-6] = v119;
    v162[-5] = v120;
    v133 = v120;
    v134 = v121;
    v162[-4] = v121;
    v162[-3] = v122;
    v135 = v122;
    v162[-2] = v136;
    v138 = sub_1E67900C8(sub_1E686E040, &v162[-32], 0, v137);
    v139 = sub_1E68B24B0();
    OpaqueTypeMetadata2 = v162;
    MEMORY[0x1EEE9AC00](v139);
    v140 = v249;
    v162[-30] = v239;
    v162[-29] = v140;
    v141 = v243;
    v162[-28] = v241;
    v162[-27] = v141;
    v142 = v244;
    v162[-26] = v251;
    v162[-25] = v142;
    v143 = v246;
    v162[-24] = v115;
    v162[-23] = v143;
    v144 = v233;
    v162[-22] = v253;
    v162[-21] = v144;
    v145 = v235;
    v162[-20] = v234;
    v162[-19] = v145;
    v146 = v237;
    v162[-18] = v236;
    v162[-17] = v146;
    v147 = v238;
    v162[-16] = v247;
    v162[-15] = v147;
    v148 = v240;
    v162[-14] = v248;
    v162[-13] = v148;
    v149 = v250;
    v162[-12] = v242;
    v162[-11] = v149;
    v162[-10] = v252;
    v162[-9] = v116;
    v162[-8] = v117;
    v162[-7] = v118;
    v162[-6] = v119;
    v162[-5] = v133;
    v162[-4] = v134;
    v162[-3] = v135;
    v150 = v227;
    v162[-2] = v138;
    v162[-1] = v150;
    v151 = v219;
    sub_1E68B1B90();

    sub_1E68B2450();
    v152 = v162[0];
    sub_1E68B2470();
    v153 = v214;
    v154 = v223;
    v155 = v228;
    v156 = v217;
    v157 = MEMORY[0x1E697CC08];
    sub_1E68B2940();
    (*(v163 + 8))(v152, v155);
    (*(AssociatedTypeWitness + 8))(v151, v154);
    v254 = v154;
    v255 = v155;
    v256 = v156;
    v257 = v157;
    v158 = swift_getOpaqueTypeConformance2();
    v159 = v216;
    v160 = v222;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v153, v222, v158);
    v161 = *(v220 + 8);
    v161(v153, v160);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v159, v160, v158);
    return (v161)(v159, v160);
  }

  return result;
}

uint64_t sub_1E6866BB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v41 = a1;
  v42 = a8;
  v40 = a18;
  v39 = a17;
  v38 = a16;
  v37 = a15;
  v36 = a14;
  v35 = a13;
  v34 = a12;
  v33 = a11;
  v32 = a10;
  v31 = a9;
  v26 = sub_1E68B2DA0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v28 = xmmword_1E68BB7B0;
  (*(v29 + 104))(v28, *MEMORY[0x1E697D748]);
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v47 = a6;
  v48 = a7;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v52 = v34;
  v53 = v35;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  v58 = v40;
  v59 = a19;
  v60 = a20;
  type metadata accessor for HorizontalGridView();
  sub_1E68B2E30();
  return sub_1E68B2DC0();
}

uint64_t sub_1E6866E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v199 = a8;
  v198 = a7;
  v186 = a5;
  v203 = a3;
  v192 = a2;
  v205 = a1;
  v193 = a9;
  v191 = a29;
  v190 = a28;
  v187 = a17;
  v185 = a16;
  v204 = a15;
  v202 = a14;
  v214 = a11;
  v206 = a10;
  v197 = a25;
  v208 = a24;
  v188 = a27;
  v216 = a26;
  v201 = a19;
  v209 = a18;
  v200 = a13;
  v215 = a12;
  v213 = a23;
  v210 = a30;
  v212 = a31;
  v211 = a20;
  v33 = sub_1E68B22C0();
  MEMORY[0x1EEE9AC00](v33 - 8);
  v189 = v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  v35 = sub_1E68B33B0();
  v183 = *(a31 + 32);
  v184 = v35;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v246 = a6;
  v207 = a4;
  v247 = a4;
  v248 = a4;
  v249 = a22;
  v250 = a21;
  v251 = a21;
  v36 = type metadata accessor for ActionCardView();
  v180 = v36;
  WitnessTable = swift_getWitnessTable();
  v246 = v36;
  v247 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v171 = sub_1E68B2440();
  sub_1E68B1E40();
  v37 = sub_1E68B1E40();
  v181 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v331 = a22;
  v332 = v181;
  v38 = MEMORY[0x1E697E858];
  v39 = swift_getWitnessTable();
  v329 = v39;
  v330 = MEMORY[0x1E697F568];
  v178 = v38;
  v176 = v37;
  v175 = swift_getWitnessTable();
  v246 = v37;
  v247 = v175;
  v162 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v40 = sub_1E68B1E40();
  v167 = v40;
  v327 = v39;
  v328 = MEMORY[0x1E697E040];
  v165 = swift_getWitnessTable();
  v246 = v40;
  v247 = v165;
  swift_getOpaqueTypeMetadata2();
  v168 = sub_1E68B2220();
  v170 = sub_1E68B2B90();
  v169 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v172 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v177 = sub_1E68B2220();
  v157 = sub_1E68B2220();
  v246 = a6;
  v41 = v207;
  v247 = v207;
  v248 = v207;
  v249 = v215;
  v250 = v209;
  v251 = a22;
  v252 = a21;
  v253 = a21;
  v254 = v216;
  v255 = v210;
  v42 = type metadata accessor for FullWidthStageView();
  OpaqueTypeMetadata2 = v42;
  v173 = swift_getWitnessTable();
  v246 = v42;
  v247 = v173;
  swift_getOpaqueTypeMetadata2();
  v43 = v41;
  v196 = a21;
  v44 = type metadata accessor for InfoActionCardView();
  v166 = v44;
  v164 = swift_getWitnessTable();
  v246 = v44;
  v247 = v164;
  swift_getOpaqueTypeMetadata2();
  v163 = sub_1E68B2220();
  v135 = sub_1E68B2220();
  v246 = a6;
  v247 = v198;
  v248 = v199;
  v249 = a22;
  v250 = v213;
  v251 = v208;
  v45 = type metadata accessor for LargeBrickView();
  v161 = v45;
  v160 = swift_getWitnessTable();
  v246 = v45;
  v247 = v160;
  swift_getOpaqueTypeMetadata2();
  v46 = type metadata accessor for DynamicBrickView();
  v159 = v46;
  v158 = swift_getWitnessTable();
  v246 = v46;
  v247 = v158;
  swift_getOpaqueTypeMetadata2();
  v150 = sub_1E68B2220();
  v47 = type metadata accessor for MonogramVerticalStackView();
  v155 = v47;
  v154 = swift_getWitnessTable();
  v246 = v47;
  v247 = v154;
  swift_getOpaqueTypeMetadata2();
  v151 = sub_1E68B2220();
  v156 = sub_1E68B2220();
  v129[1] = sub_1E68B2220();
  v48 = type metadata accessor for StandardCardView();
  v153 = v48;
  v152 = swift_getWitnessTable();
  v246 = v48;
  v247 = v152;
  swift_getOpaqueTypeMetadata2();
  v246 = a6;
  v247 = v43;
  v248 = a22;
  v249 = a21;
  v49 = type metadata accessor for StandardHorizontalStackView();
  v149 = v49;
  v148 = swift_getWitnessTable();
  v246 = v49;
  v247 = v148;
  swift_getOpaqueTypeMetadata2();
  v132 = sub_1E68B2220();
  v50 = type metadata accessor for StandardVerticalStackView();
  v147 = v50;
  v146 = swift_getWitnessTable();
  v246 = v50;
  v247 = v146;
  swift_getOpaqueTypeMetadata2();
  v142 = type metadata accessor for SummaryCardView();
  v145 = sub_1E68B2220();
  v129[2] = sub_1E68B2220();
  v51 = type metadata accessor for TallCardView();
  v143 = swift_getWitnessTable();
  v246 = v51;
  v247 = v143;
  swift_getOpaqueTypeMetadata2();
  v194 = a6;
  v195 = a22;
  v52 = type metadata accessor for VerticalStackCardView();
  v136 = swift_getWitnessTable();
  v246 = v52;
  v247 = v136;
  swift_getOpaqueTypeMetadata2();
  v129[3] = sub_1E68B2220();
  v53 = type metadata accessor for WideBrickView();
  v130 = swift_getWitnessTable();
  v246 = v53;
  v247 = v130;
  swift_getOpaqueTypeMetadata2();
  v129[4] = sub_1E68B2220();
  v131 = sub_1E68B2220();
  v133 = sub_1E68B2220();
  v134 = sub_1E68B2220();
  v138 = sub_1E68B2B90();
  v139 = sub_1E68B1E40();
  v141 = sub_1E68B2220();
  v171 = sub_1E68B1E40();
  v137 = sub_1E68B1E40();
  v54 = v206;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v246 = v54;
  v247 = v214;
  v248 = AssociatedConformanceWitness;
  v249 = v197;
  v140 = type metadata accessor for CanvasContextMenu();
  v144 = sub_1E68B1E40();
  v246 = v180;
  v247 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v246 = v176;
  v247 = v175;
  v57 = swift_getOpaqueTypeConformance2();
  v246 = v167;
  v247 = v165;
  v58 = swift_getOpaqueTypeConformance2();
  v325 = v57;
  v326 = v58;
  v324 = swift_getWitnessTable();
  v180 = MEMORY[0x1E6981600];
  v322 = swift_getWitnessTable();
  v323 = MEMORY[0x1E697E5D8];
  v59 = swift_getWitnessTable();
  v60 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v320 = v59;
  v321 = v60;
  v61 = swift_getWitnessTable();
  v62 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v318 = v61;
  v319 = v62;
  v63 = swift_getWitnessTable();
  v316 = OpaqueTypeConformance2;
  v317 = v63;
  v64 = swift_getWitnessTable();
  v246 = OpaqueTypeMetadata2;
  v247 = v173;
  v65 = swift_getOpaqueTypeConformance2();
  v246 = v166;
  v247 = v164;
  v66 = swift_getOpaqueTypeConformance2();
  v314 = v65;
  v315 = v66;
  v67 = swift_getWitnessTable();
  v312 = v64;
  v313 = v67;
  v68 = swift_getWitnessTable();
  v246 = v161;
  v247 = v160;
  v69 = swift_getOpaqueTypeConformance2();
  v246 = v159;
  v247 = v158;
  v70 = swift_getOpaqueTypeConformance2();
  v310 = v69;
  v311 = v70;
  v71 = swift_getWitnessTable();
  v246 = v155;
  v247 = v154;
  v308 = swift_getOpaqueTypeConformance2();
  v309 = v70;
  v72 = swift_getWitnessTable();
  v306 = v71;
  v307 = v72;
  v73 = swift_getWitnessTable();
  v304 = v68;
  v305 = v73;
  v74 = swift_getWitnessTable();
  v246 = v153;
  v247 = v152;
  v75 = swift_getOpaqueTypeConformance2();
  v246 = v149;
  v247 = v148;
  v76 = swift_getOpaqueTypeConformance2();
  v302 = v75;
  v303 = v76;
  v77 = swift_getWitnessTable();
  v246 = v147;
  v247 = v146;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = swift_getWitnessTable();
  v300 = v78;
  v301 = v79;
  v80 = swift_getWitnessTable();
  v298 = v77;
  v299 = v80;
  v81 = swift_getWitnessTable();
  v246 = v51;
  v247 = v143;
  v82 = swift_getOpaqueTypeConformance2();
  v246 = v52;
  v247 = v136;
  v83 = swift_getOpaqueTypeConformance2();
  v296 = v82;
  v297 = v83;
  v84 = swift_getWitnessTable();
  v246 = v53;
  v247 = v130;
  v85 = swift_getOpaqueTypeConformance2();
  v294 = v216;
  v295 = v85;
  v86 = swift_getWitnessTable();
  v292 = v84;
  v293 = v86;
  v87 = swift_getWitnessTable();
  v290 = v81;
  v291 = v87;
  v88 = swift_getWitnessTable();
  v288 = v74;
  v289 = v88;
  v287 = swift_getWitnessTable();
  v285 = swift_getWitnessTable();
  v286 = v181;
  v89 = swift_getWitnessTable();
  v283 = MEMORY[0x1E6981E60];
  v284 = v89;
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x1E69805D0];
  v281 = v90;
  v282 = MEMORY[0x1E69805D0];
  v279 = swift_getWitnessTable();
  v280 = v91;
  v92 = swift_getWitnessTable();
  v93 = swift_getWitnessTable();
  v277 = v92;
  v278 = v93;
  v94 = v144;
  v95 = swift_getWitnessTable();
  v246 = v94;
  v247 = v95;
  v96 = swift_getOpaqueTypeMetadata2();
  v246 = v94;
  v247 = v95;
  v97 = swift_getOpaqueTypeConformance2();
  v246 = v96;
  v247 = v97;
  swift_getOpaqueTypeMetadata2();
  v98 = sub_1E68B2220();
  v99 = v184;
  v100 = swift_getWitnessTable();
  v101 = AssociatedTypeWitness;
  v102 = v211;
  v103 = swift_getAssociatedConformanceWitness();
  v246 = v99;
  v247 = v101;
  v248 = v98;
  v249 = v100;
  v250 = v103;
  v178 = sub_1E68B2D40();
  v246 = v96;
  v247 = v97;
  v275 = swift_getOpaqueTypeConformance2();
  v276 = v97;
  v274 = swift_getWitnessTable();
  v176 = swift_getWitnessTable();
  v104 = sub_1E68B2ED0();
  v180 = v104;
  v184 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v177 = v129 - v105;
  WitnessTable = swift_getWitnessTable();
  v246 = v104;
  v247 = WitnessTable;
  v181 = MEMORY[0x1E697D1A0];
  v106 = swift_getOpaqueTypeMetadata2();
  v107 = *(v106 - 8);
  AssociatedTypeWitness = v106;
  v183 = v107;
  MEMORY[0x1EEE9AC00](v106);
  OpaqueTypeMetadata2 = v129 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v109);
  v175 = v129 - v110;

  v173 = sub_1E68B2120();
  v246 = v203;
  v247 = v207;
  v111 = v185;
  v112 = v186;
  v248 = v186;
  v249 = v194;
  v113 = v198;
  v250 = v198;
  v114 = v199;
  v251 = v199;
  v252 = v206;
  v253 = v214;
  v254 = v215;
  v255 = v200;
  v256 = v202;
  v257 = v204;
  v258 = v185;
  v116 = v187;
  v115 = v188;
  v259 = v187;
  v260 = v209;
  v261 = v201;
  v262 = v102;
  v263 = v196;
  v264 = v195;
  v265 = v213;
  v266 = v208;
  v117 = v197;
  v267 = v197;
  v268 = v216;
  v269 = v188;
  v118 = v190;
  v270 = v190;
  v119 = v191;
  v271 = v191;
  v272 = v210;
  v273 = v212;
  v172 = *(v192 + *(type metadata accessor for HorizontalGridView() + 264) + 8);
  v217 = v203;
  v218 = v207;
  v219 = v112;
  v220 = v194;
  v221 = v113;
  v222 = v114;
  v223 = v206;
  v224 = v214;
  v225 = v215;
  v226 = v200;
  v227 = v202;
  v228 = v204;
  v229 = v111;
  v230 = v116;
  v231 = v209;
  v232 = v201;
  v233 = v211;
  v234 = v196;
  v235 = v195;
  v236 = v213;
  v237 = v208;
  v238 = v117;
  v239 = v216;
  v240 = v115;
  v241 = v118;
  v242 = v119;
  v243 = v210;
  v244 = v212;
  v245 = v192;
  sub_1E67D1D10();
  v120 = v177;
  sub_1E68B2EC0();
  v121 = OpaqueTypeMetadata2;
  v123 = WitnessTable;
  v122 = v180;
  sub_1E68B28F0();
  (*(v184 + 8))(v120, v122);
  v246 = v122;
  v247 = v123;
  v124 = swift_getOpaqueTypeConformance2();
  v125 = v175;
  v126 = AssociatedTypeWitness;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v121, AssociatedTypeWitness, v124);
  v127 = *(v183 + 8);
  v127(v121, v126);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v125, v126, v124);
  return (v127)(v125, v126);
}

uint64_t sub_1E6868358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v208 = a8;
  v220 = a7;
  v218 = a6;
  v201 = a4;
  v200 = a2;
  v205 = a1;
  v206 = a9;
  v216 = a29;
  v204 = a28;
  v203 = a27;
  v202 = a26;
  v224 = a25;
  v221 = a24;
  v219 = a23;
  v217 = a22;
  v199 = a18;
  v215 = a17;
  v198 = a16;
  v197 = a15;
  v196 = a14;
  v195 = a13;
  v194 = a12;
  v222 = a11;
  v214 = a10;
  v284 = a2;
  v285 = a3;
  v286 = a4;
  v287 = a5;
  v288 = a6;
  v289 = a7;
  v290 = a8;
  v291 = a10;
  v292 = a11;
  v293 = a12;
  v294 = a13;
  v295 = a14;
  v296 = a15;
  v297 = a16;
  v298 = a17;
  v299 = a18;
  v300 = a19;
  v223 = a19;
  v301 = a20;
  v302 = a21;
  v303 = a22;
  v304 = a23;
  v305 = a24;
  v306 = a25;
  v307 = a26;
  v308 = a27;
  v309 = a28;
  v310 = a29;
  v311 = a30;
  v212 = a30;
  v211 = type metadata accessor for HorizontalGridView();
  v192 = *(v211 - 8);
  v193 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v211);
  v191 = v135 - v32;
  swift_getTupleTypeMetadata2();
  v190 = sub_1E68B33B0();
  v213 = *(a30 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v207 = a5;
  v284 = a5;
  v285 = a3;
  v286 = a3;
  v209 = a21;
  v287 = a21;
  v288 = a20;
  v289 = a20;
  v33 = type metadata accessor for ActionCardView();
  v186 = v33;
  WitnessTable = swift_getWitnessTable();
  v284 = v33;
  v285 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v177 = sub_1E68B2440();
  sub_1E68B1E40();
  v34 = sub_1E68B1E40();
  v189 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v282 = a21;
  v283 = v189;
  v35 = MEMORY[0x1E697E858];
  v36 = swift_getWitnessTable();
  v280 = v36;
  v281 = MEMORY[0x1E697F568];
  v184 = v35;
  v182 = v34;
  v181 = swift_getWitnessTable();
  v284 = v34;
  v285 = v181;
  v168 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v37 = sub_1E68B1E40();
  v173 = v37;
  v278 = v36;
  v279 = MEMORY[0x1E697E040];
  v171 = swift_getWitnessTable();
  v284 = v37;
  v285 = v171;
  swift_getOpaqueTypeMetadata2();
  v174 = sub_1E68B2220();
  v176 = sub_1E68B2B90();
  v175 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v178 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v183 = sub_1E68B2220();
  v163 = sub_1E68B2220();
  v38 = v207;
  v284 = v207;
  v39 = a3;
  v285 = a3;
  v286 = a3;
  v287 = v222;
  v288 = v215;
  v40 = v209;
  v289 = v209;
  v290 = a20;
  v291 = a20;
  v292 = v224;
  v293 = v216;
  v41 = type metadata accessor for FullWidthStageView();
  OpaqueTypeMetadata2 = v41;
  v179 = swift_getWitnessTable();
  v284 = v41;
  v285 = v179;
  swift_getOpaqueTypeMetadata2();
  v42 = v39;
  v187 = v39;
  v188 = a20;
  v43 = type metadata accessor for InfoActionCardView();
  v172 = v43;
  v170 = swift_getWitnessTable();
  v284 = v43;
  v285 = v170;
  swift_getOpaqueTypeMetadata2();
  v169 = sub_1E68B2220();
  v141 = sub_1E68B2220();
  v44 = v38;
  v284 = v38;
  v285 = v218;
  v286 = v220;
  v45 = v40;
  v287 = v40;
  v288 = v217;
  v289 = v219;
  v46 = type metadata accessor for LargeBrickView();
  v167 = v46;
  v166 = swift_getWitnessTable();
  v284 = v46;
  v285 = v166;
  swift_getOpaqueTypeMetadata2();
  v47 = type metadata accessor for DynamicBrickView();
  v165 = v47;
  v164 = swift_getWitnessTable();
  v284 = v47;
  v285 = v164;
  swift_getOpaqueTypeMetadata2();
  v156 = sub_1E68B2220();
  v48 = type metadata accessor for MonogramVerticalStackView();
  v161 = v48;
  v160 = swift_getWitnessTable();
  v284 = v48;
  v285 = v160;
  swift_getOpaqueTypeMetadata2();
  v157 = sub_1E68B2220();
  v162 = sub_1E68B2220();
  v135[1] = sub_1E68B2220();
  v49 = type metadata accessor for StandardCardView();
  v159 = v49;
  v158 = swift_getWitnessTable();
  v284 = v49;
  v285 = v158;
  swift_getOpaqueTypeMetadata2();
  v284 = v44;
  v285 = v42;
  v286 = v45;
  v287 = a20;
  v50 = type metadata accessor for StandardHorizontalStackView();
  v155 = v50;
  v154 = swift_getWitnessTable();
  v284 = v50;
  v285 = v154;
  swift_getOpaqueTypeMetadata2();
  v138 = sub_1E68B2220();
  v51 = type metadata accessor for StandardVerticalStackView();
  v153 = v51;
  v152 = swift_getWitnessTable();
  v284 = v51;
  v285 = v152;
  swift_getOpaqueTypeMetadata2();
  v148 = type metadata accessor for SummaryCardView();
  v151 = sub_1E68B2220();
  v135[2] = sub_1E68B2220();
  v52 = type metadata accessor for TallCardView();
  v149 = swift_getWitnessTable();
  v284 = v52;
  v285 = v149;
  swift_getOpaqueTypeMetadata2();
  v53 = type metadata accessor for VerticalStackCardView();
  v142 = swift_getWitnessTable();
  v284 = v53;
  v285 = v142;
  swift_getOpaqueTypeMetadata2();
  v135[3] = sub_1E68B2220();
  v54 = type metadata accessor for WideBrickView();
  v136 = swift_getWitnessTable();
  v284 = v54;
  v285 = v136;
  swift_getOpaqueTypeMetadata2();
  v135[4] = sub_1E68B2220();
  v137 = sub_1E68B2220();
  v139 = sub_1E68B2220();
  v140 = sub_1E68B2220();
  v144 = sub_1E68B2B90();
  v145 = sub_1E68B1E40();
  v147 = sub_1E68B2220();
  v177 = sub_1E68B1E40();
  v143 = sub_1E68B1E40();
  v55 = v208;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v284 = v55;
  v285 = v214;
  v286 = AssociatedConformanceWitness;
  v287 = v221;
  v146 = type metadata accessor for CanvasContextMenu();
  v150 = sub_1E68B1E40();
  v284 = v186;
  v285 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v284 = v182;
  v285 = v181;
  v58 = swift_getOpaqueTypeConformance2();
  v284 = v173;
  v285 = v171;
  v59 = swift_getOpaqueTypeConformance2();
  v276 = v58;
  v277 = v59;
  v275 = swift_getWitnessTable();
  v186 = MEMORY[0x1E6981600];
  v273 = swift_getWitnessTable();
  v274 = MEMORY[0x1E697E5D8];
  v60 = swift_getWitnessTable();
  v61 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v271 = v60;
  v272 = v61;
  v62 = swift_getWitnessTable();
  v63 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v269 = v62;
  v270 = v63;
  v64 = swift_getWitnessTable();
  v267 = OpaqueTypeConformance2;
  v268 = v64;
  v65 = swift_getWitnessTable();
  v284 = OpaqueTypeMetadata2;
  v285 = v179;
  v66 = swift_getOpaqueTypeConformance2();
  v284 = v172;
  v285 = v170;
  v67 = swift_getOpaqueTypeConformance2();
  v265 = v66;
  v266 = v67;
  v68 = swift_getWitnessTable();
  v263 = v65;
  v264 = v68;
  v69 = swift_getWitnessTable();
  v284 = v167;
  v285 = v166;
  v70 = swift_getOpaqueTypeConformance2();
  v284 = v165;
  v285 = v164;
  v71 = swift_getOpaqueTypeConformance2();
  v261 = v70;
  v262 = v71;
  v72 = swift_getWitnessTable();
  v284 = v161;
  v285 = v160;
  v259 = swift_getOpaqueTypeConformance2();
  v260 = v71;
  v73 = swift_getWitnessTable();
  v257 = v72;
  v258 = v73;
  v74 = swift_getWitnessTable();
  v255 = v69;
  v256 = v74;
  v75 = swift_getWitnessTable();
  v284 = v159;
  v285 = v158;
  v76 = swift_getOpaqueTypeConformance2();
  v284 = v155;
  v285 = v154;
  v77 = swift_getOpaqueTypeConformance2();
  v253 = v76;
  v254 = v77;
  v78 = swift_getWitnessTable();
  v284 = v153;
  v285 = v152;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = swift_getWitnessTable();
  v251 = v79;
  v252 = v80;
  v81 = swift_getWitnessTable();
  v249 = v78;
  v250 = v81;
  v82 = swift_getWitnessTable();
  v284 = v52;
  v285 = v149;
  v83 = swift_getOpaqueTypeConformance2();
  v284 = v53;
  v285 = v142;
  v84 = swift_getOpaqueTypeConformance2();
  v247 = v83;
  v248 = v84;
  v85 = swift_getWitnessTable();
  v284 = v54;
  v285 = v136;
  v86 = swift_getOpaqueTypeConformance2();
  v245 = v224;
  v246 = v86;
  v87 = swift_getWitnessTable();
  v243 = v85;
  v244 = v87;
  v88 = swift_getWitnessTable();
  v241 = v82;
  v242 = v88;
  v89 = swift_getWitnessTable();
  v239 = v75;
  v240 = v89;
  v238 = swift_getWitnessTable();
  v236 = swift_getWitnessTable();
  v237 = v189;
  v90 = swift_getWitnessTable();
  v234 = MEMORY[0x1E6981E60];
  v235 = v90;
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x1E69805D0];
  v232 = v91;
  v233 = MEMORY[0x1E69805D0];
  v230 = swift_getWitnessTable();
  v231 = v92;
  v93 = swift_getWitnessTable();
  v94 = swift_getWitnessTable();
  v228 = v93;
  v229 = v94;
  v95 = v150;
  v96 = swift_getWitnessTable();
  v284 = v95;
  v285 = v96;
  v97 = swift_getOpaqueTypeMetadata2();
  v284 = v95;
  v285 = v96;
  v189 = swift_getOpaqueTypeConformance2();
  v284 = v97;
  v285 = v189;
  WitnessTable = v97;
  v186 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v98 = sub_1E68B2220();
  v184 = v98;
  v99 = v190;
  v100 = swift_getWitnessTable();
  v101 = v223;
  v102 = AssociatedTypeWitness;
  v103 = swift_getAssociatedConformanceWitness();
  v284 = v99;
  v285 = v102;
  v286 = v98;
  v287 = v100;
  v288 = v103;
  v104 = sub_1E68B2D40();
  v190 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v106 = v135 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x1EEE9AC00](v107);
  v110 = v135 - v109;
  v183 = *(v205 + *(v211 + 244));
  v112 = v191;
  v111 = v192;
  (*(v192 + 16))(v191, v108);
  v113 = (*(v111 + 80) + 240) & ~*(v111 + 80);
  v114 = swift_allocObject();
  v115 = v187;
  *(v114 + 2) = v200;
  *(v114 + 3) = v115;
  v116 = v207;
  *(v114 + 4) = v201;
  *(v114 + 5) = v116;
  v117 = v220;
  *(v114 + 6) = v218;
  *(v114 + 7) = v117;
  v118 = v214;
  *(v114 + 8) = v208;
  *(v114 + 9) = v118;
  v119 = v194;
  v120 = v195;
  *(v114 + 10) = v222;
  *(v114 + 11) = v119;
  v121 = v196;
  *(v114 + 12) = v120;
  *(v114 + 13) = v121;
  v122 = v198;
  *(v114 + 14) = v197;
  *(v114 + 15) = v122;
  v123 = v199;
  *(v114 + 16) = v215;
  *(v114 + 17) = v123;
  v124 = v188;
  *(v114 + 18) = v101;
  *(v114 + 19) = v124;
  v125 = v217;
  *(v114 + 20) = v209;
  *(v114 + 21) = v125;
  v126 = v221;
  *(v114 + 22) = v219;
  *(v114 + 23) = v126;
  v127 = v202;
  *(v114 + 24) = v224;
  *(v114 + 25) = v127;
  v128 = v204;
  *(v114 + 26) = v203;
  *(v114 + 27) = v128;
  v129 = v212;
  *(v114 + 28) = v216;
  *(v114 + 29) = v129;
  (*(v111 + 32))(&v114[v113], v112, v211);

  v284 = WitnessTable;
  v130 = v189;
  v285 = v189;
  v226 = swift_getOpaqueTypeConformance2();
  v227 = v130;
  v131 = swift_getWitnessTable();
  sub_1E68B2D20();
  v225 = v131;
  v132 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v106, v104, v132);
  v133 = *(v190 + 8);
  v133(v106, v104);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v110, v104, v132);
  return (v133)(v110, v104);
}

uint64_t sub_1E6869760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v363 = a8;
  v353 = a7;
  v358 = a6;
  v362 = a5;
  v341 = a4;
  v348 = a3;
  v328 = a2;
  v340 = a1;
  v315 = a9;
  v354 = a30;
  v351 = a29;
  v339 = a28;
  v337 = a27;
  v365 = a24;
  v364 = a23;
  v360 = a22;
  v361 = a21;
  v366 = a18;
  v356 = a17;
  v336 = a16;
  v338 = a15;
  v355 = a14;
  v346 = a13;
  v359 = a26;
  v352 = a12;
  v349 = a19;
  v357 = a10;
  v32 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v312 = v260 - v33;
  v347 = a31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v426 = a11;
  v342 = *(&a11 + 1);
  v350 = a11;
  *&v427 = AssociatedConformanceWitness;
  *(&v427 + 1) = a25;
  v335 = a25;
  v327 = type metadata accessor for CanvasContextMenu();
  v314 = *(v327 - 8);
  MEMORY[0x1EEE9AC00](v327);
  v311 = v260 - v34;
  v345 = a20;
  v318 = *(a20 - 8);
  v331 = *(v318 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v329 = v260 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v426 = a4;
  v37 = v362;
  *(&v426 + 1) = v362;
  *&v427 = v358;
  v38 = v353;
  *(&v427 + 1) = v353;
  v428 = v363;
  v429 = a10;
  v430 = a11;
  v431 = a12;
  v432 = v346;
  v433 = v355;
  v434 = v338;
  v435 = v336;
  v436 = v356;
  v437 = v366;
  v438 = v349;
  v439 = a20;
  v39 = v361;
  v440 = v361;
  v40 = v360;
  v441 = v360;
  v442 = v364;
  v443 = v365;
  v444 = a25;
  v445 = v359;
  v446 = v337;
  v447 = v339;
  v448 = v351;
  v41 = v354;
  v449 = v354;
  v450 = a31;
  v344 = type metadata accessor for HorizontalGridView();
  v343 = *(v344 - 8);
  v332 = *(v343 + 64);
  MEMORY[0x1EEE9AC00](v344);
  v326 = v260 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v310 = v260 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v325 = v260 - v46;
  v47 = v38;
  *&v426 = v38;
  *(&v426 + 1) = v37;
  *&v427 = v37;
  *(&v427 + 1) = v40;
  v428 = v39;
  v429 = v39;
  v48 = type metadata accessor for ActionCardView();
  v333 = v48;
  WitnessTable = swift_getWitnessTable();
  *&v426 = v48;
  *(&v426 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v324 = sub_1E68B2440();
  sub_1E68B1E40();
  v49 = sub_1E68B1E40();
  v334 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v424 = v40;
  v425 = v334;
  v50 = MEMORY[0x1E697E858];
  v51 = swift_getWitnessTable();
  v422 = v51;
  v423 = MEMORY[0x1E697F568];
  v317 = v50;
  v303 = v49;
  v302 = swift_getWitnessTable();
  *&v426 = v49;
  *(&v426 + 1) = v302;
  v290 = MEMORY[0x1E697D320];
  swift_getOpaqueTypeMetadata2();
  v52 = sub_1E68B1E40();
  v295 = v52;
  v420 = v51;
  v421 = MEMORY[0x1E697E040];
  v293 = swift_getWitnessTable();
  *&v426 = v52;
  *(&v426 + 1) = v293;
  swift_getOpaqueTypeMetadata2();
  v296 = sub_1E68B2220();
  v298 = sub_1E68B2B90();
  v297 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v299 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v316 = sub_1E68B2220();
  v285 = sub_1E68B2220();
  v53 = v47;
  *&v426 = v47;
  v54 = v362;
  *(&v426 + 1) = v362;
  *&v427 = v362;
  *(&v427 + 1) = v352;
  v428 = v366;
  v55 = v360;
  v429 = v360;
  v56 = v361;
  *&v430 = v361;
  *(&v430 + 1) = v361;
  v431 = v359;
  v432 = v41;
  v57 = type metadata accessor for FullWidthStageView();
  v301 = v57;
  v300 = swift_getWitnessTable();
  *&v426 = v57;
  *(&v426 + 1) = v300;
  swift_getOpaqueTypeMetadata2();
  v58 = type metadata accessor for InfoActionCardView();
  v294 = v58;
  v292 = swift_getWitnessTable();
  *&v426 = v58;
  *(&v426 + 1) = v292;
  swift_getOpaqueTypeMetadata2();
  v291 = sub_1E68B2220();
  v266 = sub_1E68B2220();
  *&v426 = v53;
  *(&v426 + 1) = v363;
  *&v427 = v357;
  *(&v427 + 1) = v55;
  v428 = v364;
  v429 = v365;
  v59 = type metadata accessor for LargeBrickView();
  v289 = v59;
  v288 = swift_getWitnessTable();
  *&v426 = v59;
  *(&v426 + 1) = v288;
  swift_getOpaqueTypeMetadata2();
  v60 = type metadata accessor for DynamicBrickView();
  v287 = v60;
  v286 = swift_getWitnessTable();
  *&v426 = v60;
  *(&v426 + 1) = v286;
  swift_getOpaqueTypeMetadata2();
  v278 = sub_1E68B2220();
  v61 = type metadata accessor for MonogramVerticalStackView();
  v283 = v61;
  v282 = swift_getWitnessTable();
  *&v426 = v61;
  *(&v426 + 1) = v282;
  swift_getOpaqueTypeMetadata2();
  v279 = sub_1E68B2220();
  v284 = sub_1E68B2220();
  v260[0] = sub_1E68B2220();
  v62 = type metadata accessor for StandardCardView();
  v281 = v62;
  v280 = swift_getWitnessTable();
  *&v426 = v62;
  *(&v426 + 1) = v280;
  swift_getOpaqueTypeMetadata2();
  *&v426 = v53;
  *(&v426 + 1) = v54;
  *&v427 = v55;
  *(&v427 + 1) = v56;
  v63 = type metadata accessor for StandardHorizontalStackView();
  v277 = v63;
  v276 = swift_getWitnessTable();
  *&v426 = v63;
  *(&v426 + 1) = v276;
  swift_getOpaqueTypeMetadata2();
  v263 = sub_1E68B2220();
  v64 = type metadata accessor for StandardVerticalStackView();
  v275 = v64;
  v274 = swift_getWitnessTable();
  *&v426 = v64;
  *(&v426 + 1) = v274;
  swift_getOpaqueTypeMetadata2();
  v270 = type metadata accessor for SummaryCardView();
  v273 = sub_1E68B2220();
  v260[1] = sub_1E68B2220();
  v65 = type metadata accessor for TallCardView();
  v272 = v65;
  v271 = swift_getWitnessTable();
  *&v426 = v65;
  *(&v426 + 1) = v271;
  swift_getOpaqueTypeMetadata2();
  v66 = type metadata accessor for VerticalStackCardView();
  v267 = swift_getWitnessTable();
  *&v426 = v66;
  *(&v426 + 1) = v267;
  swift_getOpaqueTypeMetadata2();
  v260[2] = sub_1E68B2220();
  v67 = type metadata accessor for WideBrickView();
  v261 = swift_getWitnessTable();
  *&v426 = v67;
  *(&v426 + 1) = v261;
  swift_getOpaqueTypeMetadata2();
  v260[3] = sub_1E68B2220();
  v262 = sub_1E68B2220();
  v264 = sub_1E68B2220();
  v265 = sub_1E68B2220();
  v268 = sub_1E68B2B90();
  v269 = sub_1E68B1E40();
  v320 = sub_1E68B2220();
  v305 = *(v320 - 8);
  MEMORY[0x1EEE9AC00](v320);
  v321 = v260 - v68;
  v322 = sub_1E68B1E40();
  v307 = *(v322 - 8);
  MEMORY[0x1EEE9AC00](v322);
  v323 = v260 - v69;
  v324 = sub_1E68B1E40();
  v308 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v304 = v260 - v70;
  v319 = sub_1E68B1E40();
  v309 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v306 = v260 - v71;
  *&v426 = v333;
  *(&v426 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v426 = v303;
  *(&v426 + 1) = v302;
  v73 = swift_getOpaqueTypeConformance2();
  *&v426 = v295;
  *(&v426 + 1) = v293;
  v74 = swift_getOpaqueTypeConformance2();
  v418 = v73;
  v419 = v74;
  v75 = MEMORY[0x1E697F968];
  v417 = swift_getWitnessTable();
  v415 = swift_getWitnessTable();
  v416 = MEMORY[0x1E697E5D8];
  v76 = swift_getWitnessTable();
  v77 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v413 = v76;
  v414 = v77;
  v78 = swift_getWitnessTable();
  v79 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v411 = v78;
  v412 = v79;
  v80 = swift_getWitnessTable();
  v409 = OpaqueTypeConformance2;
  v410 = v80;
  v81 = swift_getWitnessTable();
  *&v426 = v301;
  *(&v426 + 1) = v300;
  v82 = swift_getOpaqueTypeConformance2();
  *&v426 = v294;
  *(&v426 + 1) = v292;
  v83 = swift_getOpaqueTypeConformance2();
  v407 = v82;
  v408 = v83;
  v84 = swift_getWitnessTable();
  v405 = v81;
  v406 = v84;
  v85 = swift_getWitnessTable();
  *&v426 = v289;
  *(&v426 + 1) = v288;
  v86 = swift_getOpaqueTypeConformance2();
  *&v426 = v287;
  *(&v426 + 1) = v286;
  v87 = swift_getOpaqueTypeConformance2();
  v403 = v86;
  v404 = v87;
  v88 = swift_getWitnessTable();
  *&v426 = v283;
  *(&v426 + 1) = v282;
  v401 = swift_getOpaqueTypeConformance2();
  v402 = v87;
  v89 = swift_getWitnessTable();
  v399 = v88;
  v400 = v89;
  v90 = swift_getWitnessTable();
  v397 = v85;
  v398 = v90;
  v91 = swift_getWitnessTable();
  *&v426 = v281;
  *(&v426 + 1) = v280;
  v92 = swift_getOpaqueTypeConformance2();
  *&v426 = v277;
  *(&v426 + 1) = v276;
  v93 = swift_getOpaqueTypeConformance2();
  v395 = v92;
  v396 = v93;
  v94 = swift_getWitnessTable();
  *&v426 = v275;
  *(&v426 + 1) = v274;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = swift_getWitnessTable();
  v393 = v95;
  v394 = v96;
  v97 = swift_getWitnessTable();
  v391 = v94;
  v392 = v97;
  v98 = swift_getWitnessTable();
  *&v426 = v272;
  *(&v426 + 1) = v271;
  v99 = swift_getOpaqueTypeConformance2();
  *&v426 = v66;
  *(&v426 + 1) = v267;
  v100 = swift_getOpaqueTypeConformance2();
  v389 = v99;
  v390 = v100;
  v101 = swift_getWitnessTable();
  *&v426 = v67;
  *(&v426 + 1) = v261;
  v102 = swift_getOpaqueTypeConformance2();
  v103 = v359;
  v387 = v359;
  v388 = v102;
  v104 = swift_getWitnessTable();
  v385 = v101;
  v386 = v104;
  v105 = swift_getWitnessTable();
  v383 = v98;
  v384 = v105;
  v106 = swift_getWitnessTable();
  v381 = v91;
  v382 = v106;
  v303 = v75;
  v380 = swift_getWitnessTable();
  v378 = swift_getWitnessTable();
  v379 = v334;
  v107 = swift_getWitnessTable();
  v376 = MEMORY[0x1E6981E60];
  v377 = v107;
  v290 = swift_getWitnessTable();
  v108 = MEMORY[0x1E69805D0];
  v374 = v290;
  v375 = MEMORY[0x1E69805D0];
  v291 = swift_getWitnessTable();
  v372 = v291;
  v373 = v108;
  v109 = swift_getWitnessTable();
  v296 = v109;
  v110 = swift_getWitnessTable();
  v370 = v109;
  v371 = v110;
  v111 = v319;
  v112 = swift_getWitnessTable();
  *&v426 = v111;
  *(&v426 + 1) = v112;
  v113 = v112;
  v294 = v112;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v295 = OpaqueTypeMetadata2;
  v302 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v293 = v260 - v115;
  *&v426 = v111;
  *(&v426 + 1) = v113;
  v297 = swift_getOpaqueTypeConformance2();
  *&v426 = OpaqueTypeMetadata2;
  *(&v426 + 1) = v297;
  v299 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v116 = sub_1E68B2220();
  v117 = *(v116 - 8);
  v300 = v116;
  v301 = v117;
  MEMORY[0x1EEE9AC00](v116);
  v292 = v260 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = MEMORY[0x1EEE9AC00](v119);
  v298 = v260 - v121;
  v122 = v343;
  v123 = *(v343 + 16);
  v333 = v343 + 16;
  v334 = v123;
  v124 = v325;
  (v123)(v325, v348, v344, v120);
  v125 = v318;
  v126 = v345;
  (*(v318 + 16))(v329, v328, v345);
  v127 = *(v122 + 80);
  v128 = v122;
  v129 = (v127 + 240) & ~v127;
  v285 = v129 + v332;
  WitnessTable = v129;
  v332 = v127 | 7;
  v130 = (v285 + *(v125 + 80)) & ~*(v125 + 80);
  v131 = swift_allocObject();
  v132 = v362;
  v131[2] = v341;
  v131[3] = v132;
  v133 = v353;
  v131[4] = v358;
  v131[5] = v133;
  v134 = v357;
  v131[6] = v363;
  v131[7] = v134;
  v135 = v342;
  v131[8] = v350;
  v131[9] = v135;
  v136 = v346;
  v131[10] = v352;
  v131[11] = v136;
  v137 = v338;
  v131[12] = v355;
  v131[13] = v137;
  v138 = v336;
  v139 = v356;
  v131[14] = v336;
  v131[15] = v139;
  v140 = v349;
  v131[16] = v366;
  v131[17] = v140;
  v141 = v361;
  v131[18] = v126;
  v131[19] = v141;
  v142 = v364;
  v131[20] = v360;
  v131[21] = v142;
  v143 = v335;
  v131[22] = v365;
  v131[23] = v143;
  v131[24] = v103;
  v144 = v337;
  v145 = v339;
  v131[25] = v337;
  v131[26] = v145;
  v146 = v354;
  v131[27] = v351;
  v131[28] = v146;
  v131[29] = v347;
  v147 = *(v128 + 32);
  v343 = v128 + 32;
  v331 = v147;
  v148 = v124;
  v149 = v344;
  v147(v131 + v129, v148, v344);
  v150 = v131 + v130;
  v151 = v126;
  (*(v125 + 32))(v150, v329, v126);
  v152 = v149[68];
  v153 = (v348 + v149[69]);
  v154 = v153[1];
  v289 = *v153;
  v155 = (v348 + v149[70]);
  v157 = *v155;
  v156 = v155[1];
  v287 = v152;
  v288 = v157;
  v317 = v156;
  v318 = v154;
  v158 = (v348 + v149[71]);
  v160 = *v158;
  v159 = v158[1];
  v286 = v160;
  v316 = v159;
  v161 = v310;
  v334(v310);
  v329 = ((v285 + 7) & 0xFFFFFFFFFFFFFFF8);
  v162 = swift_allocObject();
  v163 = v362;
  *(v162 + 16) = v341;
  *(v162 + 24) = v163;
  v164 = v353;
  *(v162 + 32) = v358;
  *(v162 + 40) = v164;
  v165 = v357;
  *(v162 + 48) = v363;
  *(v162 + 56) = v165;
  v166 = v342;
  *(v162 + 64) = v350;
  *(v162 + 72) = v166;
  v167 = v352;
  v168 = v346;
  *(v162 + 80) = v352;
  *(v162 + 88) = v168;
  v169 = v338;
  *(v162 + 96) = v355;
  *(v162 + 104) = v169;
  v170 = v356;
  *(v162 + 112) = v138;
  *(v162 + 120) = v170;
  v171 = v349;
  *(v162 + 128) = v366;
  *(v162 + 136) = v171;
  v172 = v361;
  *(v162 + 144) = v151;
  *(v162 + 152) = v172;
  v173 = v364;
  *(v162 + 160) = v360;
  *(v162 + 168) = v173;
  v174 = v335;
  *(v162 + 176) = v365;
  *(v162 + 184) = v174;
  *(v162 + 192) = v359;
  *(v162 + 200) = v144;
  v175 = v339;
  v176 = v351;
  *(v162 + 208) = v339;
  *(v162 + 216) = v176;
  v177 = v347;
  *(v162 + 224) = v354;
  *(v162 + 232) = v177;
  v178 = v161;
  v179 = v344;
  v331(v162 + WitnessTable, v178, v344);
  *&v329[v162] = v340;
  (v334)(v326, v348, v179);
  v180 = swift_allocObject();
  v181 = v362;
  *(v180 + 16) = v341;
  *(v180 + 24) = v181;
  v182 = v353;
  *(v180 + 32) = v358;
  *(v180 + 40) = v182;
  v183 = v357;
  *(v180 + 48) = v363;
  *(v180 + 56) = v183;
  v184 = v342;
  *(v180 + 64) = v350;
  *(v180 + 72) = v184;
  v185 = v346;
  *(v180 + 80) = v167;
  *(v180 + 88) = v185;
  *(v180 + 96) = v355;
  *(v180 + 104) = v169;
  v186 = v356;
  *(v180 + 112) = v336;
  *(v180 + 120) = v186;
  *(v180 + 128) = v366;
  *(v180 + 136) = v171;
  v187 = v361;
  *(v180 + 144) = v345;
  *(v180 + 152) = v187;
  v188 = v364;
  *(v180 + 160) = v360;
  *(v180 + 168) = v188;
  *(v180 + 176) = v365;
  *(v180 + 184) = v174;
  v189 = v337;
  *(v180 + 192) = v359;
  *(v180 + 200) = v189;
  v190 = v351;
  *(v180 + 208) = v175;
  *(v180 + 216) = v190;
  v191 = v347;
  *(v180 + 224) = v354;
  *(v180 + 232) = v191;
  v331(v180 + WitnessTable, v326, v344);
  *&v329[v180] = v340;
  v192 = v360;
  v193 = v353;
  v194 = v363;
  v195 = v357;
  v196 = v352;
  sub_1E6892048(&v426);
  v369[0] = v426;
  v369[1] = v427;

  v259 = v191;
  v197 = v362;
  v258 = v193;
  v198 = v348;
  CanvasItemDescriptorProtocol.buildView<A, B, C, D, E, F>(onSelection:sizeClass:contentMargins:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:viewDescriptorBuilder:actionButtonViewBuilder:)(sub_1E686E7DC, v131, v348 + v287, v369, v289, v318, v288, v317, v321, v286, v316, sub_1E686E9B0, v162, sub_1E686E9C8, v180, v345, v366, v258, v194, v195, v196, v362, v259, v354, v192, v364, v365, v359, v361);

  v199 = v325;
  v200 = v344;
  (v334)(v325, v198, v344);
  v201 = v329;
  v202 = swift_allocObject();
  v203 = v341;
  *(v202 + 16) = v341;
  *(v202 + 24) = v197;
  v204 = v353;
  *(v202 + 32) = v358;
  *(v202 + 40) = v204;
  v205 = v357;
  *(v202 + 48) = v363;
  *(v202 + 56) = v205;
  v206 = v342;
  *(v202 + 64) = v350;
  *(v202 + 72) = v206;
  v207 = v346;
  *(v202 + 80) = v352;
  *(v202 + 88) = v207;
  v208 = v338;
  *(v202 + 96) = v355;
  *(v202 + 104) = v208;
  v209 = v356;
  *(v202 + 112) = v336;
  *(v202 + 120) = v209;
  v210 = v349;
  *(v202 + 128) = v366;
  *(v202 + 136) = v210;
  v211 = v361;
  *(v202 + 144) = v345;
  *(v202 + 152) = v211;
  v212 = v364;
  *(v202 + 160) = v360;
  *(v202 + 168) = v212;
  v213 = v335;
  *(v202 + 176) = v365;
  *(v202 + 184) = v213;
  v214 = v337;
  *(v202 + 192) = v359;
  *(v202 + 200) = v214;
  v215 = v351;
  *(v202 + 208) = v339;
  *(v202 + 216) = v215;
  v216 = v347;
  *(v202 + 224) = v354;
  *(v202 + 232) = v216;
  v331(v202 + WitnessTable, v199, v200);
  *&v201[v202] = v340;
  v218 = v320;
  v217 = v321;
  sub_1E68B2AA0();

  (*(v305 + 8))(v217, v218);
  v219 = v199;
  v220 = v344;
  (v334)(v199, v348, v344);
  v221 = swift_allocObject();
  v222 = v362;
  *(v221 + 16) = v203;
  *(v221 + 24) = v222;
  v223 = v353;
  *(v221 + 32) = v358;
  *(v221 + 40) = v223;
  v224 = v357;
  *(v221 + 48) = v363;
  *(v221 + 56) = v224;
  *(v221 + 64) = v350;
  *(v221 + 72) = v206;
  *(v221 + 80) = v352;
  *(v221 + 88) = v207;
  v225 = v338;
  *(v221 + 96) = v355;
  *(v221 + 104) = v225;
  v226 = v356;
  *(v221 + 112) = v336;
  *(v221 + 120) = v226;
  v227 = v349;
  *(v221 + 128) = v366;
  *(v221 + 136) = v227;
  v228 = v345;
  v229 = v361;
  *(v221 + 144) = v345;
  *(v221 + 152) = v229;
  v230 = v364;
  *(v221 + 160) = v360;
  *(v221 + 168) = v230;
  v231 = v335;
  *(v221 + 176) = v365;
  *(v221 + 184) = v231;
  v232 = v337;
  *(v221 + 192) = v359;
  *(v221 + 200) = v232;
  *(v221 + 208) = v339;
  *(v221 + 216) = v215;
  v233 = v347;
  *(v221 + 224) = v354;
  *(v221 + 232) = v233;
  v234 = v220;
  v331(v221 + WitnessTable, v219, v220);
  *&v329[v221] = v340;
  v235 = v304;
  v236 = v322;
  v237 = v323;
  sub_1E68B27E0();

  (*(v307 + 8))(v237, v236);
  v238 = v233;
  v239 = *(v233 + 168);
  v240 = v312;
  v241 = v328;
  v239(v228, v238);
  v242 = v348;
  v243 = v311;
  sub_1E67C02C4(v240, *(v348 + *(v234 + 292)), *(v348 + *(v234 + 292) + 8), v311);

  v244 = v306;
  v245 = v324;
  v246 = v327;
  MEMORY[0x1E69512E0](v243, v324, v327, v296);
  (*(v314 + 8))(v243, v246);
  (*(v308 + 8))(v235, v245);
  sub_1E68B24B0();
  sub_1E68B2E60();
  v247 = v293;
  v248 = v319;
  sub_1E68B2960();
  (*(v309 + 8))(v244, v248);
  v249 = v242 + *(v234 + 252);
  v250 = v297;
  v251 = v292;
  v252 = v295;
  sub_1E6814294(v241, v249, v340, v295, v292, v355, v356, v349, v345, v297, v351, v347);
  (*(v302 + 8))(v247, v252);
  *&v426 = v252;
  *(&v426 + 1) = v250;
  v367 = swift_getOpaqueTypeConformance2();
  v368 = v250;
  v253 = v300;
  v254 = swift_getWitnessTable();
  v255 = v298;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v251, v253, v254);
  v256 = *(v301 + 8);
  v256(v251, v253);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v255, v253, v254);
  return (v256)(v255, v253);
}

uint64_t (*sub_1E686B70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30))(uint64_t a1)
{
  v30 = *(a12 - 8);
  v31 = MEMORY[0x1EEE9AC00](a17);
  v33 = v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[0] = v34;
  v55[1] = v35;
  v55[2] = v36;
  v55[3] = v37;
  v55[4] = v38;
  v55[5] = v39;
  v56 = v40;
  v57 = v41;
  v58 = a12;
  v59 = v43;
  v60 = v42;
  v61 = v44;
  v62 = v45;
  *(v46 + 136) = v47;
  *(v46 + 152) = v48;
  *(v46 + 168) = v49;
  *(v46 + 184) = v31;
  v63 = a19;
  v64 = v51;
  v65 = v50;
  v66 = a30;
  v52 = type metadata accessor for HorizontalGridView();
  result = sub_1E686279C(v52);
  if (result)
  {
    v54 = result;
    (*(a30 + 152))(a19, a30);
    v54(v33);
    sub_1E672E440(v54);
    return (*(v30 + 8))(v33, a12);
  }

  return result;
}

uint64_t sub_1E686B8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = v55 - v30;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v55 - v33;
  v55[0] = v35;
  v55[1] = v36;
  v55[2] = v37;
  v55[3] = v38;
  v55[4] = v39;
  v56 = v40;
  v57 = v41;
  v58 = a12;
  v59 = v42;
  v60 = v43;
  v61 = v44;
  v62 = v45;
  *(v46 + 136) = v47;
  *(v46 + 152) = v48;
  v63 = v49;
  v64 = a26;
  *(v46 + 184) = v50;
  *(v46 + 200) = v32;
  v65 = v51;
  v52 = type metadata accessor for HorizontalGridView();
  sub_1E68623F8(v52);
  sub_1E67D5458(a1, a3);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v31, a12, a26);
  v53 = *(v28 + 8);
  v53(v31, a12);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v34, a12, a26);
  return (v53)(v34, a12);
}

uint64_t sub_1E686BAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = v51 - v26;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v51 - v29;
  v51[0] = v31;
  v51[1] = v32;
  v51[2] = v33;
  v51[3] = v34;
  v51[4] = v35;
  v52 = v36;
  v53 = v37;
  v54 = v38;
  v55 = v39;
  v56 = v40;
  v57 = v42;
  v58 = v41;
  v59 = a21;
  v60 = v44;
  v61 = v43;
  v62 = v45;
  v63 = v28;
  v64 = v47;
  v65 = v46;
  v48 = type metadata accessor for HorizontalGridView();
  sub_1E68621E4(v48);
  sub_1E67D41E8(a1, a3, 0);

  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v27, a5, a21);
  v49 = *(v24 + 8);
  v49(v27, a5);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v30, a5, a21);
  return (v49)(v30, a5);
}

void (*sub_1E686BC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t (*a31)(uint64_t)))(uint64_t)
{
  v32 = type metadata accessor for HorizontalGridView();
  result = a31(v32);
  if (result)
  {
    v34 = result;
    result(a2);
    return sub_1E672E440(v34);
  }

  return result;
}

uint64_t sub_1E686BD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v146 = a1;
  v155 = a9;
  v156 = a26;
  *&v171 = a2;
  *(&v171 + 1) = a3;
  v129 = a4;
  *&v172 = a4;
  *(&v172 + 1) = a5;
  v131 = a5;
  v133 = a6;
  v173 = a6;
  v174 = a7;
  v135 = a7;
  v137 = a8;
  v175 = a8;
  v118 = a10;
  v119 = a11;
  v176 = a10;
  v177 = a11;
  v121 = a12;
  v122 = a13;
  v178 = a12;
  v179 = a13;
  v180 = a14;
  v181 = a15;
  v125 = a16;
  v126 = a17;
  v182 = a16;
  v183 = a17;
  v127 = a18;
  v184 = a18;
  v185 = a19;
  v186 = a20;
  v130 = a21;
  v187 = a21;
  v132 = a22;
  v188 = a22;
  v134 = a23;
  v189 = a23;
  v136 = a24;
  v190 = a24;
  v138 = a25;
  v139 = a28;
  v191 = a25;
  v192 = a26;
  v193 = a27;
  v194 = a28;
  v140 = a29;
  v195 = a29;
  v196 = a30;
  v120 = type metadata accessor for HorizontalGridView();
  v117 = *(v120 - 8);
  v116 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v147 = &v113 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8);
  v148 = a3;
  *&v171 = a3;
  *(&v171 + 1) = a15;
  v142 = a15;
  v143 = a20;
  *&v172 = a20;
  *(&v172 + 1) = a27;
  v145 = a27;
  v33 = type metadata accessor for CanvasSectionHeaderView();
  sub_1E68B2390();
  v153 = v33;
  v154 = sub_1E68B1E40();
  v34 = sub_1E68B2220();
  v150 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v144 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v113 - v37;
  v141 = a30;
  v128 = a19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v123 = a2;
  v124 = a14;
  *&v171 = a2;
  *(&v171 + 1) = a14;
  *&v172 = AssociatedConformanceWitness;
  *(&v172 + 1) = v156;
  v40 = type metadata accessor for CanvasSectionHeader();
  v41 = sub_1E68B3750();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v113 - v43;
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v113 - v47;
  v49 = sub_1E68B3750();
  v151 = *(v49 - 8);
  v152 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v157 = &v113 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v51);
  v149 = &v113 - v53;
  v54 = v146;
  (*(v42 + 16))(v44, v52);
  if ((*(v45 + 48))(v44, 1, v40) == 1)
  {
    (*(v42 + 8))(v44, v41);
    (*(v150 + 56))(v157, 1, 1, v34);
    v55 = sub_1E673F2EC();
    WitnessTable = swift_getWitnessTable();
    v57 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
    v169 = WitnessTable;
    v170 = v57;
    v58 = swift_getWitnessTable();
    v167 = v55;
    v168 = v58;
    swift_getWitnessTable();
  }

  else
  {
    (*(v45 + 32))(v48, v44, v40);
    v114 = v48;
    v115 = v45;
    v59 = v117;
    v60 = v54;
    v61 = v120;
    (*(v117 + 16))(v147, v54, v120);
    v62 = (*(v59 + 80) + 240) & ~*(v59 + 80);
    v63 = swift_allocObject();
    v64 = v148;
    *(v63 + 2) = v123;
    *(v63 + 3) = v64;
    v65 = v131;
    *(v63 + 4) = v129;
    *(v63 + 5) = v65;
    v66 = v135;
    *(v63 + 6) = v133;
    *(v63 + 7) = v66;
    v67 = v118;
    v68 = v119;
    *(v63 + 8) = v137;
    *(v63 + 9) = v67;
    v69 = v121;
    v70 = v122;
    *(v63 + 10) = v68;
    *(v63 + 11) = v69;
    v72 = v124;
    v71 = v125;
    *(v63 + 12) = v70;
    *(v63 + 13) = v72;
    v137 = v34;
    v73 = v142;
    *(v63 + 14) = v142;
    *(v63 + 15) = v71;
    v74 = v127;
    *(v63 + 16) = v126;
    *(v63 + 17) = v74;
    v135 = v38;
    v75 = v143;
    *(v63 + 18) = v128;
    *(v63 + 19) = v75;
    v76 = v132;
    *(v63 + 20) = v130;
    *(v63 + 21) = v76;
    v77 = v136;
    *(v63 + 22) = v134;
    *(v63 + 23) = v77;
    v78 = v156;
    *(v63 + 24) = v138;
    *(v63 + 25) = v78;
    v79 = v145;
    v80 = v139;
    v81 = v140;
    *(v63 + 26) = v145;
    *(v63 + 27) = v80;
    v82 = v141;
    *(v63 + 28) = v81;
    *(v63 + 29) = v82;
    (*(v59 + 32))(&v63[v62], v147, v61);
    v83 = v60 + v61[74];
    v84 = *v83;
    v85 = *(v83 + 8);
    v86 = (v60 + v61[65]);
    v87 = v86[1];
    v171 = *v86;
    v172 = v87;
    LODWORD(v60) = *(v60 + v61[67]);

    v111 = v75;
    v112 = v79;
    v110 = v73;
    v88 = v137;
    v89 = v144;
    v90 = v114;
    sub_1E68AF848(sub_1E686DEB4, v63, v84, v85, &v171, v60, v40, v148, v144, v110, v111, v112);

    (*(v115 + 8))(v90, v40);
    v91 = sub_1E673F2EC();
    v92 = swift_getWitnessTable();
    v93 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
    v160 = v92;
    v161 = v93;
    v94 = swift_getWitnessTable();
    v158 = v91;
    v159 = v94;
    v95 = swift_getWitnessTable();
    v96 = v135;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v89, v88, v95);
    v97 = v150;
    v98 = *(v150 + 8);
    v98(v89, v88);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v96, v88, v95);
    v98(v96, v88);
    v99 = v157;
    (*(v97 + 32))(v157, v89, v88);
    (*(v97 + 56))(v99, 0, 1, v88);
  }

  v100 = v149;
  v101 = v157;
  sub_1E67FDFA4(v157, v149);
  v102 = v152;
  v103 = *(v151 + 8);
  v103(v101, v152);
  v104 = sub_1E673F2EC();
  v105 = swift_getWitnessTable();
  v106 = sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270]);
  v165 = v105;
  v166 = v106;
  v107 = swift_getWitnessTable();
  v163 = v104;
  v164 = v107;
  v162 = swift_getWitnessTable();
  v108 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v100, v102, v108);
  return (v103)(v100, v102);
}

uint64_t sub_1E686C738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21)
{
  v49 = a7;
  v47 = a6;
  v45 = a5;
  v43 = a4;
  v52 = a1;
  v54 = a8;
  v51 = a21;
  v50 = a20;
  v48 = a19;
  v46 = a18;
  v44 = a17;
  v42 = a16;
  v41 = a13;
  v40 = a12;
  v39 = a11;
  v38 = a10;
  v37 = a9;
  v53 = sub_1E68B3750();
  v23 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v25 = &v37 - v24;
  v26 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v37 - v31;
  v55 = a2;
  v56 = a3;
  v57 = v43;
  v58 = v45;
  v59 = v47;
  v60 = v49;
  v61 = v37;
  v62 = v38;
  v63 = v39;
  v64 = v40;
  v65 = v41;
  v66 = a14;
  v67 = a15;
  v68 = v42;
  v69 = v44;
  v70 = v46;
  v71 = v48;
  v72 = v50;
  v73 = v51;
  v33 = type metadata accessor for HorizontalGridView();
  sub_1E68621E4(v33);
  v34 = *(a2 - 8);
  (*(v34 + 16))(v25, v52, a2);
  (*(v34 + 56))(v25, 0, 1, a2);
  sub_1E67D41E8(v25, 0, 1);

  (*(v23 + 8))(v25, v53);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v29, a3, a15);
  v35 = *(v26 + 8);
  v35(v29, a3);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v32, a3, a15);
  return (v35)(v32, a3);
}

void sub_1E686CC80()
{
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CanvasSectionHeader();
  sub_1E68B3750();
  if (v0 <= 0x3F)
  {
    sub_1E68B33B0();
    if (v1 <= 0x3F)
    {
      sub_1E68B3750();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_getFunctionTypeMetadata1();
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
                sub_1E68B3750();
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098208);
                swift_getFunctionTypeMetadata2();
                type metadata accessor for AssumeEquatable();
                if (v7 <= 0x3F)
                {
                  swift_getFunctionTypeMetadata1();
                  type metadata accessor for AssumeEquatable();
                  if (v8 <= 0x3F)
                  {
                    swift_getFunctionTypeMetadata1();
                    type metadata accessor for AssumeEquatable();
                    if (v9 <= 0x3F)
                    {
                      swift_getFunctionTypeMetadata2();
                      type metadata accessor for AssumeEquatable();
                      if (v10 <= 0x3F)
                      {
                        sub_1E67D3FB0();
                        if (v11 <= 0x3F)
                        {
                          swift_getFunctionTypeMetadata1();
                          sub_1E68B3750();
                          type metadata accessor for AssumeEquatable();
                          if (v12 <= 0x3F)
                          {
                            sub_1E68B1950();
                            if (v13 <= 0x3F)
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

uint64_t sub_1E686CFC4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v67 = *(sub_1E68B1820() - 8);
  v56 = a3[13];
  v66 = *(v56 - 8);
  v69 = *(v66 + 84);
  v4 = v69 - 1;
  if (!v69)
  {
    v4 = 0;
  }

  v60 = *(v67 + 84);
  v58 = v4;
  if (v4 <= v60)
  {
    v4 = *(v67 + 84);
  }

  v55 = a3[2];
  v64 = *(v55 - 8);
  v5 = *(v64 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (v6 > v4)
  {
    v4 = v6;
  }

  v68 = v4 == 0;
  v61 = v4;
  v7 = v4 != 0;
  v8 = v4 - 1;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v11 = a3[15];
  v10 = a3[16];
  v65 = *(v11 - 8);
  v12 = *(v65 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v59 = v13;
  v62 = v9;
  if (v9 > v13)
  {
    v13 = v9;
  }

  v14 = *(v10 - 8);
  v71 = v14;
  v57 = *(v14 + 84);
  if (v13 <= v57)
  {
    v15 = *(v14 + 84);
  }

  else
  {
    v15 = v13;
  }

  v16 = *(sub_1E68B1950() - 8);
  v17 = *(v67 + 64);
  v18 = *(v66 + 80);
  v19 = *(v64 + 80);
  v20 = *(v65 + 80);
  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  v23 = *(v16 + 80);
  if (v15 <= *(v16 + 84))
  {
    v24 = *(v16 + 84);
  }

  else
  {
    v24 = v15;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = v24;
  }

  if (v69)
  {
    v26 = *(v66 + 64);
  }

  else
  {
    v26 = *(v66 + 64) + 1;
  }

  result = a2;
  if (v5)
  {
    v28 = v68;
  }

  else
  {
    v28 = v68 + 1;
  }

  if (v12)
  {
    v29 = *(v65 + 64);
  }

  else
  {
    v29 = *(v65 + 64) + 1;
  }

  if (!a2)
  {
    return result;
  }

  v30 = v12;
  v31 = v17 + v18;
  v32 = v28 + *(v64 + 64) + ((v26 + v19 + ((v17 + v18) & ~v18)) & ~v19);
  v33 = v20 + 9;
  v34 = v29 + 7;
  v35 = v21 + 25;
  v36 = v22 + 7;
  v37 = v23 + 16;
  if (a2 > v25)
  {
    v38 = ((v37 + ((((((((((((((((((((v36 + ((v35 + ((((((v34 + ((v33 + ((v32 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23) + *(v16 + 64);
    v39 = 8 * v38;
    if (v38 > 3)
    {
      goto LABEL_37;
    }

    v41 = ((a2 - v25 + ~(-1 << v39)) >> v39) + 1;
    if (HIWORD(v41))
    {
      v40 = *(a1 + v38);
      if (v40)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v41 <= 0xFF)
      {
        if (v41 < 2)
        {
          goto LABEL_57;
        }

LABEL_37:
        v40 = *(a1 + v38);
        if (!*(a1 + v38))
        {
          goto LABEL_57;
        }

LABEL_44:
        v42 = (v40 - 1) << v39;
        if (v38 > 3)
        {
          v42 = 0;
        }

        if (v38)
        {
          if (v38 <= 3)
          {
            v43 = v38;
          }

          else
          {
            v43 = 4;
          }

          if (v43 > 2)
          {
            if (v43 == 3)
            {
              v44 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v44 = *a1;
            }
          }

          else if (v43 == 1)
          {
            v44 = *a1;
          }

          else
          {
            v44 = *a1;
          }
        }

        else
        {
          v44 = 0;
        }

        return v25 + (v44 | v42) + 1;
      }

      v40 = *(a1 + v38);
      if (*(a1 + v38))
      {
        goto LABEL_44;
      }
    }
  }

LABEL_57:
  if (v62 == v25)
  {
    if (v61 < 2)
    {
      return 0;
    }

    if (v60 == v61)
    {
      v47 = (*(v67 + 48))(a1);
    }

    else
    {
      v49 = (a1 + v31) & ~v18;
      if (v58 == v61)
      {
        v50 = (*(v66 + 48))(v49, v69, v56);
      }

      else
      {
        v50 = (*(v64 + 48))((v49 + v26 + v19) & ~v19, v5, v55);
      }

      if (v50 >= 2)
      {
        v47 = v50 - 1;
      }

      else
      {
        v47 = 0;
      }
    }

    goto LABEL_82;
  }

  v45 = ((a1 + v32 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v24 & 0x80000000) != 0)
  {
    v48 = (v45 + v33) & ~v20;
    if (v59 == v25)
    {
      if (v30 < 2)
      {
        return 0;
      }

      v47 = (*(v65 + 48))(v48, v30, v11);
LABEL_82:
      if (v47 >= 2)
      {
        return v47 - 1;
      }

      else
      {
        return 0;
      }
    }

    v51 = (v35 + ((((((v34 + v48) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v21;
    if (v57 == v25)
    {
      v52 = *(v71 + 48);

      return v52(v51, v57, v10);
    }

    else
    {
      v53 = *(v16 + 48);
      v54 = (v37 + ((((((((((((((((((((v36 + v51) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23;

      return v53(v54);
    }
  }

  else
  {
    v46 = *v45;
    if (*v45 >= 0xFFFFFFFF)
    {
      LODWORD(v46) = -1;
    }

    return (v46 + 1);
  }
}

void sub_1E686D668(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v61 = *(sub_1E68B1820() - 8);
  v60 = *(a4[13] - 8);
  v64 = *(v60 + 84);
  v5 = v64 - 1;
  if (!v64)
  {
    v5 = 0;
  }

  v6 = *(a4[2] - 8);
  v58 = *(v61 + 84);
  v56 = v5;
  if (v5 <= v58)
  {
    v5 = *(v61 + 84);
  }

  v63 = *(v6 + 84);
  v7 = v63 - 1;
  if (!v63)
  {
    v7 = 0;
  }

  v54 = v7;
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4[15] - 8);
  v68 = v10;
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v57 = v12;
  v59 = v9;
  if (v9 > v12)
  {
    v12 = v9;
  }

  v62 = *(a4[16] - 8);
  v55 = *(v62 + 84);
  if (v12 <= v55)
  {
    v13 = *(v62 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = 0;
  v15 = *(sub_1E68B1950() - 8);
  v16 = *(v60 + 64);
  v17 = *(v61 + 64);
  v18 = v13 > *(v15 + 84);
  v19 = v13;
  v20 = *(v60 + 80);
  v21 = *(v6 + 80);
  v22 = *(v10 + 80);
  v23 = *(v10 + 64);
  v24 = *(v62 + 80);
  v25 = *(v62 + 64);
  v26 = *(v15 + 80);
  if (v18)
  {
    v27 = v19;
  }

  else
  {
    v27 = *(v15 + 84);
  }

  if (v27 <= 0x7FFFFFFF)
  {
    v28 = 0x7FFFFFFF;
  }

  else
  {
    v28 = v27;
  }

  if (!v64)
  {
    ++v16;
  }

  if (v63)
  {
    v29 = *(v6 + 64);
  }

  else
  {
    v29 = *(v6 + 64) + 1;
  }

  v30 = v17 + v20;
  v31 = ((v16 + v21 + ((v17 + v20) & ~v20)) & ~v21) + v29;
  if (v8)
  {
    v32 = ((v16 + v21 + ((v17 + v20) & ~v20)) & ~v21) + v29;
  }

  else
  {
    v32 = v31 + 1;
  }

  if (!v11)
  {
    ++v23;
  }

  v33 = v25 + 7;
  v34 = ((v26 + 16 + ((((((((((((((((((((v25 + 7 + ((v24 + 25 + ((((((v23 + 7 + ((v22 + 9 + ((v32 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v26) + *(v15 + 64);
  if (a3 > v28)
  {
    if (v34 <= 3)
    {
      v35 = ((a3 - v28 + ~(-1 << (8 * v34))) >> (8 * v34)) + 1;
      if (HIWORD(v35))
      {
        v14 = 4;
      }

      else
      {
        if (v35 < 0x100)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        if (v35 >= 2)
        {
          v14 = v36;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  if (v28 < a2)
  {
    v37 = ~v28 + a2;
    if (v34 < 4)
    {
      v38 = (v37 >> (8 * v34)) + 1;
      if (v34)
      {
        v39 = v37 & ~(-1 << (8 * v34));
        bzero(a1, v34);
        if (v34 != 3)
        {
          if (v34 == 2)
          {
            *a1 = v39;
            if (v14 > 1)
            {
LABEL_91:
              if (v14 == 2)
              {
                *&a1[v34] = v38;
              }

              else
              {
                *&a1[v34] = v38;
              }

              return;
            }
          }

          else
          {
            *a1 = v37;
            if (v14 > 1)
            {
              goto LABEL_91;
            }
          }

          goto LABEL_88;
        }

        *a1 = v39;
        a1[2] = BYTE2(v39);
      }

      if (v14 > 1)
      {
        goto LABEL_91;
      }
    }

    else
    {
      bzero(a1, v34);
      *a1 = v37;
      v38 = 1;
      if (v14 > 1)
      {
        goto LABEL_91;
      }
    }

LABEL_88:
    if (v14)
    {
      a1[v34] = v38;
    }

    return;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v34] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_63;
    }

LABEL_62:
    if (!a2)
    {
      return;
    }

    goto LABEL_63;
  }

  if (v14 == 2)
  {
    *&a1[v34] = 0;
    goto LABEL_62;
  }

  *&a1[v34] = 0;
  if (!a2)
  {
    return;
  }

LABEL_63:
  if (v59 == v28)
  {
    if (a2 >= v8)
    {
      if (v31 <= 3)
      {
        v45 = ~(-1 << (8 * v31));
      }

      else
      {
        v45 = -1;
      }

      if (v31)
      {
        v46 = v45 & (a2 - v8);
        if (v31 <= 3)
        {
          v47 = v31;
        }

        else
        {
          v47 = 4;
        }

        bzero(a1, v31);
        if (v47 > 2)
        {
          if (v47 == 3)
          {
            *a1 = v46;
            a1[2] = BYTE2(v46);
          }

          else
          {
            *a1 = v46;
          }
        }

        else if (v47 == 1)
        {
          *a1 = v46;
        }

        else
        {
          *a1 = v46;
        }
      }
    }

    else
    {
      if (v58 == v8)
      {
        v40 = *(v61 + 56);
        v41 = a2 + 1;
        v42 = a1;
LABEL_103:

        v40(v42, v41);
        return;
      }

      v42 = &a1[v30] & ~v20;
      if (v56 == v8)
      {
        v40 = *(v60 + 56);
        v41 = a2 + 2;
        goto LABEL_103;
      }

      v48 = ((v42 + v16 + v21) & ~v21);
      if (a2 < v54)
      {
        v40 = *(v6 + 56);
        v41 = a2 + 2;
        v42 = (v42 + v16 + v21) & ~v21;
        goto LABEL_103;
      }

      if (v29 <= 3)
      {
        v51 = ~(-1 << (8 * v29));
      }

      else
      {
        v51 = -1;
      }

      if (v29)
      {
        v52 = v51 & (a2 - v54);
        if (v29 <= 3)
        {
          v53 = v29;
        }

        else
        {
          v53 = 4;
        }

        bzero(v48, v29);
        if (v53 > 2)
        {
          if (v53 == 3)
          {
            *v48 = v52;
            v48[2] = BYTE2(v52);
          }

          else
          {
            *v48 = v52;
          }
        }

        else if (v53 == 1)
        {
          *v48 = v52;
        }

        else
        {
          *v48 = v52;
        }
      }
    }
  }

  else
  {
    v43 = (&a1[v32 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v27 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v44 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v44 = a2 - 1;
      }

      *v43 = v44;
      return;
    }

    v42 = (v43 + v22 + 9) & ~v22;
    if (v57 == v28)
    {
      if (v11 < 2)
      {
        return;
      }

      v40 = *(v68 + 56);
      v41 = a2 + 1;
      goto LABEL_103;
    }

    v42 = (v24 + 25 + ((((((v23 + 7 + v42) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8)) & ~v24;
    if (v55 == v28)
    {
      v40 = *(v62 + 56);
      v41 = a2;
      goto LABEL_103;
    }

    v49 = v26 + 16 + ((((((((((((((((((((v33 + v42) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    v50 = *(v15 + 56);

    v50(v49 & ~v26, a2);
  }
}

uint64_t sub_1E686DEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  type metadata accessor for HorizontalGridView();
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
  return sub_1E686C738(a1, v40, v39, v38, v37, v36, v35, a2, v13, v14, v15, v16, v17, v24, v23, v18, v19, v20, v21, v11, v10);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 120);
  v19 = *(v0 + 16);
  v18 = *(v0 + 104);
  v17 = *(v0 + 128);
  v2 = type metadata accessor for HorizontalGridView();
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

  (*(*(v17 - 8) + 8))(v5 + v2[68]);

  if (*(v5 + v2[76]))
  {
  }

  if (*(v5 + v2[77]))
  {
  }

  if (*(v5 + v2[78]))
  {
  }

  v14 = v2[79];
  v15 = sub_1E68B1950();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  return swift_deallocObject();
}

uint64_t sub_1E686E644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  v13 = *(type metadata accessor for HorizontalGridView() - 8);
  *(&v15 + 1) = v27;
  *&v15 = v28;
  return sub_1E6869760(a1, a2, v3 + ((*(v13 + 80) + 240) & ~*(v13 + 80)), v34, v33, v32, v31, v30, a3, v29, v15, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v4, v5, v6, v7, v8, v9, v10, v12, v11);
}

uint64_t (*sub_1E686E7DC())(uint64_t a1)
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
  v10 = *(type metadata accessor for HorizontalGridView() - 8);
  v11 = (*(v10 + 80) + 240) & ~*(v10 + 80);
  return sub_1E686B70C(v0 + v11, v0 + ((v11 + *(v10 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80)), v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v1, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E686E9E0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
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
  v12 = *(type metadata accessor for HorizontalGridView() - 8);
  v13 = (*(v12 + 80) + 240) & ~*(v12 + 80);
  return a2(a1, &v2[v13], *&v2[(*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8], v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v3, v4, v5, v6, v7, v8, v9, v11, v10);
}

uint64_t objectdestroy_26Tm()
{
  v1 = *(v0 + 120);
  v19 = *(v0 + 16);
  v18 = *(v0 + 104);
  v17 = *(v0 + 128);
  v2 = type metadata accessor for HorizontalGridView();
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

  (*(*(v17 - 8) + 8))(v5 + v2[68]);

  if (*(v5 + v2[76]))
  {
  }

  if (*(v5 + v2[77]))
  {
  }

  if (*(v5 + v2[78]))
  {
  }

  v14 = v2[79];
  v15 = sub_1E68B1950();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  return swift_deallocObject();
}

void (*sub_1E686F08C(uint64_t (*a1)(uint64_t)))(uint64_t)
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
  v11 = *(type metadata accessor for HorizontalGridView() - 8);
  v12 = (*(v11 + 80) + 240) & ~*(v11 + 80);
  return sub_1E686BC88(v1 + v12, *(v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v2, v3, v4, v5, v6, v7, v8, v10, v9, a1);
}

uint64_t sub_1E686F250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098400);
  v5 = sub_1E68B1E40();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  v20 = sub_1E686F4B8;
  v21 = 0;
  sub_1E68B2E80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099CD8);
  sub_1E673F530(&qword_1ED099CE0, &qword_1ED099CD8);
  v9 = a3;
  sub_1E68B2760();
  v10 = swift_allocObject();
  v11 = v16;
  *(v10 + 16) = v15;
  *(v10 + 24) = v11;
  v12 = sub_1E673F530(&qword_1ED098418, &qword_1ED098400);
  v18 = v9;
  v19 = v12;

  swift_getWitnessTable();
  sub_1E686F524();
  sub_1E67BF6D4();
  sub_1E68B28D0();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E686F4B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E68B2B20();
  result = sub_1E68B1C60();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t sub_1E686F524()
{
  result = qword_1ED099CE8;
  if (!qword_1ED099CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED099CE8);
  }

  return result;
}

uint64_t sub_1E686F57C()
{
  sub_1E68771E0();
}

uint64_t sub_1E686F5A4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

void *LazyCanvasItemPlaceholderFetcher.__allocating_init(batchSize:fetcherProvider:fetchItemForPlaceholders:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1E6877214(a1, a2, a3, a4);

  return v8;
}

void *LazyCanvasItemPlaceholderFetcher.init(batchSize:fetcherProvider:fetchItemForPlaceholders:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1E6877214(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_1E686F69C(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = *v1;
  v2[31] = *v1;
  v4 = *(v3 + 80);
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E686F794, v1, 0);
}

uint64_t sub_1E686F794()
{
  v1 = sub_1E68B1990();
  swift_beginAccess();

  v2 = sub_1E68B3380();

  if (v1 >= v2)
  {
    sub_1E68438C8();
    swift_allocError();
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = 0;
    *(v23 + 24) = 1;
    swift_willThrow();
    goto LABEL_13;
  }

  v3 = v0[30];
  sub_1E68B1990();
  swift_beginAccess();

  sub_1E68B33F0();

  result = sub_1E68B1980();
  v5 = *(v3 + 120);
  if (!v5)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (result == 0x8000000000000000 && v5 == -1)
  {
    goto LABEL_23;
  }

  v6 = result / v5 * v5;
  if ((result / v5 * v5) >> 64 != v6 >> 63)
  {
    goto LABEL_20;
  }

  v7 = __OFADD__(v6, v5);
  v8 = v6 + v5;
  if (v7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v34 = v8;
  v35 = v6;
  v9 = *(v0[31] + 88);
  (*(v9 + 128))(v0[32], v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v40 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = swift_getAssociatedConformanceWitness();
  v37 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v0[2] = AssociatedTypeWitness;
  v0[3] = v38;
  v0[4] = v36;
  v0[5] = v10;
  v0[6] = v11;
  v0[7] = v40;
  v0[8] = AssociatedConformanceWitness;
  v0[9] = v39;
  v0[10] = v37;
  v0[11] = v12;
  v42 = v14;
  v44 = v13;
  v0[12] = v13;
  v0[13] = v14;
  v0[14] = v15;
  v0[15] = v16;
  type metadata accessor for LazyCanvasItemDescriptor();
  v17 = sub_1E68B3380();

  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v18 >= v34)
  {
    v18 = v34;
  }

  if (v18 < v35)
  {
    v20 = v0[33];
    v19 = v0[34];
    v21 = v0[32];
    sub_1E68438C8();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = 0;
    *(v22 + 24) = 1;
    swift_willThrow();
    (*(v20 + 8))(v19, v21);
LABEL_13:

    v24 = v0[1];

    return v24();
  }

  v25 = v0[34];
  v26 = v0[32];
  v27 = v0[30];
  v0[26] = v35;
  v0[27] = v18;
  v28 = swift_task_alloc();
  v28[2] = v26;
  v28[3] = v9;
  v28[4] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0983A8);
  v0[16] = v10;
  v0[17] = v12;
  v0[18] = v44;
  v0[19] = v42;
  type metadata accessor for CanvasItemPlaceholder();
  sub_1E6877538();
  v29 = sub_1E68B32E0();

  v30 = v27[19];
  v31 = v27[20];
  __swift_project_boxed_opaque_existential_1(v27 + 16, v30);
  v0[28] = v29;
  sub_1E68B33B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v32 = sub_1E68B3640();
  v0[35] = v32;
  v45 = (*(v31 + 120) + **(v31 + 120));
  v33 = swift_task_alloc();
  v0[36] = v33;
  *v33 = v0;
  v33[1] = sub_1E686FE34;

  return v45(v32, v30, v31);
}

uint64_t sub_1E686FE34()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = sub_1E686FFDC;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_1E686FF5C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E686FF5C()
{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E686FFDC()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[33];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E687006C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a1;
  v30 = a2;
  v31 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v32 = AssociatedTypeWitness;
  v33 = v26;
  v34 = v22;
  v35 = v7;
  v10 = v21;
  v26 = v7;
  v36 = v8;
  v37 = v25;
  v38 = AssociatedConformanceWitness;
  v39 = v24;
  v40 = v23;
  v41 = v9;
  AssociatedTypeWitness = swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = v9;
  v42 = v21;
  v43 = AssociatedTypeWitness;
  v44 = swift_getAssociatedConformanceWitness();
  v45 = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for LazyCanvasItemDescriptor();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  (*(a4 + 128))(a3, a4, v13);
  sub_1E68B33F0();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v26;
    v33 = AssociatedConformanceWitness;
    v34 = v10;
    v35 = AssociatedTypeWitness;
    v16 = type metadata accessor for CanvasItemPlaceholder();
    v17 = *(v16 - 8);
    v18 = v31;
    (*(v17 + 32))(v31, v15, v16);
    return (*(v17 + 56))(v18, 0, 1, v16);
  }

  else
  {
    v32 = v26;
    v33 = AssociatedConformanceWitness;
    v34 = v10;
    v35 = AssociatedTypeWitness;
    v20 = type metadata accessor for CanvasItemPlaceholder();
    (*(*(v20 - 8) + 56))(v31, 1, 1, v20);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1E68704C0(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  v4 = sub_1E68B19A0();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[21] = v5;
  *v5 = v2;
  v5[1] = sub_1E68705F0;

  return sub_1E686F69C(a1);
}

uint64_t sub_1E68705F0()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[15];

    return MEMORY[0x1EEE6DFA0](sub_1E6870738, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1E6870738()
{
  *(v0 + 96) = *(v0 + 176);
  MEMORY[0x1E6952820]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097AC0);
  if (swift_dynamicCast() && *(v0 + 40) == 1 && !(*(v0 + 24) | *(v0 + 32) | *(v0 + 16)))
  {
    v3 = *(v0 + 120);
    MEMORY[0x1E6952810](*(v0 + 176));
    swift_beginAccess();
    *(v0 + 104) = *(v3 + 112);
    sub_1E68B33B0();
    swift_getWitnessTable();
    if (sub_1E68B36E0())
    {
      v5 = *(v0 + 152);
      v4 = *(v0 + 160);
      v6 = *(v0 + 136);
      v7 = *(v0 + 144);
      (*(v7 + 16))(v5, *(v0 + 112), v6);
      swift_beginAccess();
      sub_1E6875E14(v4, v5);
      (*(v7 + 8))(v4, v6);
      swift_endAccess();
      sub_1E68438C8();
      swift_allocError();
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 1;
    }

    else
    {
      sub_1E68438C8();
      swift_allocError();
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 0;
    }

    *(v8 + 24) = 1;
    swift_willThrow();
    MEMORY[0x1E6952810](*(v0 + 96));
  }

  else
  {
    MEMORY[0x1E6952810](*(v0 + 96));
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6870998()
{
  *(v1 + 104) = v0;
  *(v1 + 112) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1E68709E0, v0, 0);
}

uint64_t sub_1E68709E0()
{
  v1 = *(v0 + 104);
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  v6 = (*(v3 + 128) + **(v3 + 128));
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_1E6870B08;

  return v6(v2, v3);
}

uint64_t sub_1E6870B08()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 104);

    return MEMORY[0x1EEE6DFA0](sub_1E6870C50, v6, 0);
  }
}

uint64_t sub_1E6870C50()
{
  v1 = v0[13];
  v2 = v0[14];
  swift_beginAccess();
  v0[12] = *(v1 + 112);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v2 + 80);
  *(v3 + 24) = *(v2 + 88);
  sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();

  v0[2] = AssociatedTypeWitness;
  v0[3] = AssociatedConformanceWitness;
  v0[4] = v6;
  v0[5] = v7;
  type metadata accessor for CanvasItemPlaceholder();
  sub_1E68B33B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_1E68B3300();

  v9 = sub_1E68B3380();
  v10 = *(v1 + 120);
  if (v10)
  {
    v11 = v0[13];
    v21 = v11;
    v0[9] = 0;
    v0[10] = v9;
    v0[11] = v10;
    v12 = swift_task_alloc();
    *(v12 + 16) = v8;
    *(v12 + 24) = v11;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED099CF0);
    swift_getWitnessTable();
    v14 = sub_1E68B3630();
    v15 = sub_1E673F530(&qword_1ED099CF8, &qword_1ED099CF0);
    v17 = sub_1E68718EC(sub_1E6878298, v12, v13, v14, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
    v0[17] = v17;

    type metadata accessor for LazyCanvasItemPlaceholderFetcher();
    swift_getWitnessTable();
    v18 = swift_task_alloc();
    v0[18] = v18;
    *(v18 + 16) = v17;
    *(v18 + 24) = v21;
    v19 = swift_task_alloc();
    v0[19] = v19;
    *v19 = v0;
    v19[1] = sub_1E6871024;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1E6871024()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_1E6871154;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1E68782B0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E6871154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E68711C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  (*(a2 + 128))(a1, a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LazyCanvasItemDescriptor();
  sub_1E68B33B0();
  type metadata accessor for CanvasItemPlaceholder();
  swift_getWitnessTable();
  v3 = sub_1E68B32E0();

  *a3 = v3;
  return result;
}

uint64_t sub_1E68714E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  v2 = swift_getAssociatedTypeWitness();
  v3 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v26 = AssociatedTypeWitness;
  v27 = v19;
  v28 = v17;
  v29 = v2;
  v30 = v3;
  v31 = v21;
  v32 = AssociatedConformanceWitness;
  v33 = v20;
  v34 = v18;
  v35 = v4;
  v36 = v5;
  v37 = v6;
  v38 = swift_getAssociatedConformanceWitness();
  v39 = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for LazyCanvasItemDescriptor();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  (*(v8 + 16))(&v17 - v10, v24, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v2;
    v27 = v4;
    v28 = v5;
    v29 = v6;
    v12 = type metadata accessor for CanvasItemPlaceholder();
    v13 = *(v12 - 8);
    v14 = v25;
    (*(v13 + 32))(v25, v11, v12);
    return (*(v13 + 56))(v14, 0, 1, v12);
  }

  else
  {
    v26 = v2;
    v27 = v4;
    v28 = v5;
    v29 = v6;
    v16 = type metadata accessor for CanvasItemPlaceholder();
    (*(*(v16 - 8) + 56))(v25, 1, 1, v16);
    return (*(v8 + 8))(v11, v7);
  }
}