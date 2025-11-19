uint64_t sub_1DB28BDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*(a1 - 8) + 16);
  v112 = a3;
  v6();
  v7 = *(a2 + 16);
  v113 = a1;
  v114 = a2;
  v7(&v138, a1, a2);
  v137[0] = *(&v138 + 1);
  *(v137 + 3) = HIDWORD(v138);
  v8 = v139;
  v135 = v146;
  v136 = v147;
  v98 = v149;
  v99 = v148;
  v96[1] = v151;
  v97 = v150;
  v104 = v152;
  v134 = v154;
  v133 = v153;
  *(v132 + 3) = *&v157[3];
  v132[0] = *v157;
  v110 = v158;
  v111 = v138;
  v9 = *(v139 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v108 = v143;
    v109 = v144;
    sub_1DB1754EC(&v138, &v118);
    v131 = v10;
    sub_1DB1384B0(0, v9, 0);
    v11 = v131;
    v12 = v8 + 32;
    do
    {
      sub_1DB164980(v12, v115);
      sub_1DB1732D4(v115, &v118);
      __swift_destroy_boxed_opaque_existential_1(v115);
      v131 = v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DB1384B0((v13 > 1), v14 + 1, 1);
      }

      v15 = *(&v119 + 1);
      v16 = v120;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
      v18 = *(*(v15 - 8) + 64);
      MEMORY[0x1EEE9AC00](v17);
      v20 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20);
      sub_1DB16412C(v14, v20, &v131, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(&v118);
      v11 = v131;
      v12 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
    sub_1DB1754EC(&v138, &v118);
    v11 = MEMORY[0x1E69E7CC0];
  }

  v22 = v145;

  v23 = v141;
  v106 = v142;
  v107 = v140;
  v108 = v143;

  v109 = v23;

  v24 = *(v22 + 16);
  if (v24)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v131 = MEMORY[0x1E69E7CC0];
    sub_1DB138660(0, v24, 0);
    v26 = v131;
    v27 = v22 + 32;
    do
    {
      sub_1DB175548(v27, v115);
      sub_1DB173060(v115, &v118);
      sub_1DB1755A4(v115);
      v131 = v26;
      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1DB138660((v28 > 1), v29 + 1, 1);
        v26 = v131;
      }

      *(v26 + 16) = v29 + 1;
      v30 = v26 + 88 * v29;
      v31 = v119;
      *(v30 + 32) = v118;
      *(v30 + 48) = v31;
      v32 = v120;
      v33 = v121;
      v34 = v122[0];
      *(v30 + 112) = *&v122[1];
      *(v30 + 80) = v33;
      *(v30 + 96) = v34;
      *(v30 + 64) = v32;
      v27 += 88;
      --v24;
    }

    while (v24);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
  }

  v105 = v26;
  v35 = v148;
  v102 = v150;
  v103 = v149;
  v101 = v151;
  if (v148)
  {
    v36 = *(v148 + 16);
    if (v36)
    {
      sub_1DB1757B0(v149, v150);
      v131 = v25;
      sub_1DB1384B0(0, v36, 0);
      v37 = v131;
      v38 = v35 + 32;
      do
      {
        sub_1DB164980(v38, v115);
        sub_1DB1732D4(v115, &v118);
        __swift_destroy_boxed_opaque_existential_1(v115);
        v131 = v37;
        v40 = *(v37 + 16);
        v39 = *(v37 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1DB1384B0((v39 > 1), v40 + 1, 1);
        }

        v41 = *(&v119 + 1);
        v42 = v120;
        v43 = __swift_mutable_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
        v44 = *(*(v41 - 8) + 64);
        MEMORY[0x1EEE9AC00](v43);
        v46 = v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v47 + 16))(v46);
        sub_1DB16412C(v40, v46, &v131, v41, v42);
        __swift_destroy_boxed_opaque_existential_1(&v118);
        v37 = v131;
        v38 += 40;
        --v36;
      }

      while (v36);
      v100 = v131;
    }

    else
    {
      sub_1DB1757B0(v149, v150);
      v100 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v100 = 0;
  }

  sub_1DB1755F8(v99, v98, v97);
  v48 = v152;
  if (v152)
  {
    v49 = *(v152 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    if (v49)
    {
      v131 = MEMORY[0x1E69E7CC0];
      sub_1DB1384B0(0, v49, 0);
      v50 = v131;
      v51 = v48 + 32;
      do
      {
        sub_1DB164980(v51, v115);
        sub_1DB1732D4(v115, &v118);
        __swift_destroy_boxed_opaque_existential_1(v115);
        v131 = v50;
        v53 = *(v50 + 16);
        v52 = *(v50 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_1DB1384B0((v52 > 1), v53 + 1, 1);
        }

        v54 = *(&v119 + 1);
        v55 = v120;
        v56 = __swift_mutable_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
        v57 = *(*(v54 - 8) + 64);
        MEMORY[0x1EEE9AC00](v56);
        v59 = v96 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v60 + 16))(v59);
        sub_1DB16412C(v53, v59, &v131, v54, v55);
        __swift_destroy_boxed_opaque_existential_1(&v118);
        v50 = v131;
        v51 += 40;
        --v49;
      }

      while (v49);
    }
  }

  else
  {
    v50 = 0;
  }

  v61 = v155;

  v62 = *(v61 + 16);
  if (v62)
  {
    v99 = v50;
    v104 = v11;
    v131 = v25;
    sub_1DB138640(0, v62, 0);
    v63 = v131;
    v98 = v61;
    v64 = v61 + 32;
    do
    {
      sub_1DB175650(v64, v115);
      v65 = v115[0];
      v66 = v116;
      v67 = v117;
      __swift_project_boxed_opaque_existential_1(v115 + 1, v116);
      v68 = *(v67 + 56);
      *&v120 = v66;
      *(&v120 + 1) = v67;
      __swift_allocate_boxed_opaque_existential_0(&v118 + 1);
      v68(v66, v67);
      LOBYTE(v118) = v65;
      sub_1DB1756AC(v115);
      v131 = v63;
      v70 = *(v63 + 16);
      v69 = *(v63 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1DB138640((v69 > 1), v70 + 1, 1);
        v63 = v131;
      }

      *(v63 + 16) = v70 + 1;
      v71 = (v63 + 48 * v70);
      v72 = v118;
      v73 = v120;
      v71[3] = v119;
      v71[4] = v73;
      v71[2] = v72;
      v64 += 48;
      --v62;
    }

    while (v62);

    v11 = v104;
    v74 = MEMORY[0x1E69E7CC0];
    v50 = v99;
  }

  else
  {
    v74 = v25;

    v63 = MEMORY[0x1E69E7CC0];
  }

  v75 = v156;
  v76 = v158;
  v77 = *(v158 + 16);
  if (v77)
  {
    LODWORD(v104) = v156;
    v78 = v50;
    v131 = v74;
    sub_1DB138620(0, v77, 0);
    v79 = v131;
    v80 = v76 + 32;
    do
    {
      sub_1DB175700(v80, v115);
      sub_1DB1734CC(v115, &v118);
      sub_1DB17575C(v115);
      v131 = v79;
      v82 = *(v79 + 16);
      v81 = *(v79 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_1DB138620((v81 > 1), v82 + 1, 1);
        v79 = v131;
      }

      *(v79 + 16) = v82 + 1;
      v83 = (v79 + 240 * v82);
      v84 = v118;
      v85 = v120;
      v83[3] = v119;
      v83[4] = v85;
      v83[2] = v84;
      v86 = v121;
      v87 = v122[0];
      v88 = v123;
      v83[7] = v122[1];
      v83[8] = v88;
      v83[5] = v86;
      v83[6] = v87;
      v89 = v124;
      v90 = v125[0];
      v91 = v126;
      v83[11] = v125[1];
      v83[12] = v91;
      v83[9] = v89;
      v83[10] = v90;
      v92 = v127;
      v93 = v128;
      v94 = v130;
      v83[15] = v129;
      v83[16] = v94;
      v83[13] = v92;
      v83[14] = v93;
      v80 += 240;
      --v77;
    }

    while (v77);
    sub_1DB17181C(&v138);
    v50 = v78;
    v75 = v104;
  }

  else
  {
    sub_1DB17181C(&v138);
    v79 = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v118) = v111;
  *(&v118 + 1) = v137[0];
  DWORD1(v118) = *(v137 + 3);
  *(&v118 + 1) = v11;
  *&v119 = v107;
  *(&v119 + 1) = v109;
  *&v120 = v106;
  *(&v120 + 1) = v108;
  v121 = 0uLL;
  *&v122[0] = v105;
  *(v122 + 8) = v135;
  *(&v122[1] + 1) = v136;
  *&v123 = v100;
  *(&v123 + 1) = v103;
  *&v124 = v102;
  *(&v124 + 1) = v101;
  *&v125[0] = v50;
  *(v125 + 8) = v133;
  *(&v125[1] + 1) = v134;
  *&v126 = v63;
  BYTE8(v126) = v75;
  HIDWORD(v126) = *(v132 + 3);
  *(&v126 + 9) = v132[0];
  *&v127 = v79;
  return (*(v114 + 24))(&v118, v113);
}

uint64_t sub_1DB28C7C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v10(v23, a3, a5);
  v18 = v23[3];
  v19 = v23[2];

  sub_1DB17181C(v23);

  v10(v24, a3, a5);
  v11 = v24[6];
  v12 = v24[7];

  sub_1DB17181C(v24);

  (*(a6 + 40))(v19, v18, v11, v12, a4, a6);
  v10(v22, a3, a5);
  (*(a6 + 24))(v22, a4, a6);
  v13 = *(a6 + 32);

  v14 = v13(v22, a4, a6);
  v16 = *(v15 + 8);
  *v15 = a1;
  *(v15 + 8) = a2;

  return v14(v22, 0);
}

uint64_t sub_1DB28C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a1, v9 + 32);

  sub_1DB1414E8(v10);
  sub_1DB28C7C4(a5, v9, a3, a3, *(a4 + 8), *(a4 + 8));
}

uint64_t sub_1DB28CAEC(void (*a1)(void *, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v9 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  a1(v12, v11);
  sub_1DB28C7C4(a5, v9, a3, a3, *(a4 + 8), *(a4 + 8));
}

uint64_t SchemaType.select<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DB28CC3C(a1, a2, a3, a4, a5, 0);
}

{
  return sub_1DB28CD78(a1, a2, a3, a4, a5, 0);
}

uint64_t SchemaType.select<A>(distinct:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_1DB28CC3C(a1, a2, a3, a4, a5, 1);
}

{
  return sub_1DB28CD78(a1, a2, a3, a4, a5, 1);
}

uint64_t sub_1DB28CC3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB2BCC40;
  *(v12 + 56) = type metadata accessor for Expression();
  *(v12 + 64) = swift_getWitnessTable();
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  *(v12 + 48) = v11;
  v13 = type metadata accessor for ScalarQuery();
  v14 = *(a4 + 8);

  WitnessTable = swift_getWitnessTable();
  sub_1DB28C7C4(a6, v12, a2, v13, v14, WitnessTable);
}

uint64_t sub_1DB28CD78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB2BCC40;
  sub_1DB2BB364();
  *(v12 + 56) = type metadata accessor for Expression();
  *(v12 + 64) = swift_getWitnessTable();
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  *(v12 + 48) = v11;
  v13 = type metadata accessor for ScalarQuery();
  v14 = *(a4 + 8);

  WitnessTable = swift_getWitnessTable();
  sub_1DB28C7C4(a6, v12, a2, v13, v14, WitnessTable);
}

uint64_t SchemaType.count.getter(uint64_t a1, uint64_t a2)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v10 = 42;
  v11 = 0xE100000000000000;
  v14 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  v12 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1E1283490](40, 0xE100000000000000);
  v4 = __swift_project_boxed_opaque_existential_1(&v10, v13);
  v5 = v10;
  v6 = v11;

  MEMORY[0x1E1283490](v5, v6);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  v7 = v4[2];

  __swift_destroy_boxed_opaque_existential_1(&v10);
  v10 = 0x746E756F63;
  v11 = 0xE500000000000000;
  v12 = v7;
  SchemaType.select<A>(_:)(&v10, a1, MEMORY[0x1E69E6530], a2, v8);
}

uint64_t QueryType.union(all:_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  sub_1DB164980(a2, v22 + 8);
  LOBYTE(v22[0]) = a1;
  v10 = (*(a4 + 32))(v21, a3, a4);
  v12 = v11;
  v13 = *(v11 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 160) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1DB158530(0, *(v13 + 2) + 1, 1, v13);
    *(v12 + 160) = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1DB158530((v15 > 1), v16 + 1, 1, v13);
    *(v12 + 160) = v13;
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[48 * v16];
  v18 = v22[0];
  v19 = v22[2];
  *(v17 + 3) = v22[1];
  *(v17 + 4) = v19;
  *(v17 + 2) = v18;
  return v10(v21, 0);
}

uint64_t QueryType.join(_:on:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];

  v14 = 1;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;
  QueryType.join(_:_:on:)(&v14, a1, v13, a3, a4, a5);
}

uint64_t QueryType.join(_:on:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v9 = 1;
  v7 = v5;
  v8 = *(a2 + 8);
  return QueryType.join(_:_:on:)(&v9, a1, &v7, a3, a4, a5);
}

uint64_t QueryType.join(_:_:on:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = a3[1];
  v32 = *a3;
  v12 = a3[2];
  (*(*(a4 - 8) + 16))(a6, v6, a4);
  sub_1DB164980(a2, v38);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 16))(v44, v13, v14);
  v15 = v45;
  v16 = v46;
  v17 = v47;
  sub_1DB1757B0(v45, v46);
  sub_1DB17181C(v44);
  if (!v16)
  {
    goto LABEL_4;
  }

  *&v34 = v32;
  *(&v34 + 1) = v11;
  v35 = v12;
  v33[0] = v15;
  v33[1] = v16;
  v33[2] = v17;
  *(&v40 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
  *&v41 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
  static Expression<A>.&& infix(_:_:)(&v34, v33, &v39);
  sub_1DB1718E4(v15, v16);
  if (*(&v40 + 1))
  {
    sub_1DB1355D0(&v39, &v34);
  }

  else
  {
LABEL_4:
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v18 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
    *&v34 = v32;
    *(&v34 + 1) = v11;
    v37 = v18;
    v35 = v12;
  }

  LOBYTE(v39) = v10;
  sub_1DB1355D0(v38, &v39 + 8);
  sub_1DB1355D0(&v34, v42);
  v19 = (*(a5 + 32))(v38, a4, a5);
  v21 = v20;
  v22 = *(v20 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 64) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_1DB158650(0, *(v22 + 2) + 1, 1, v22);
    *(v21 + 64) = v22;
  }

  v25 = *(v22 + 2);
  v24 = *(v22 + 3);
  if (v25 >= v24 >> 1)
  {
    v22 = sub_1DB158650((v24 > 1), v25 + 1, 1, v22);
    *(v21 + 64) = v22;
  }

  *(v22 + 2) = v25 + 1;
  v26 = &v22[88 * v25];
  v27 = v40;
  *(v26 + 2) = v39;
  *(v26 + 3) = v27;
  v28 = v41;
  v29 = v42[0];
  v30 = v42[1];
  *(v26 + 14) = v43;
  *(v26 + 5) = v29;
  *(v26 + 6) = v30;
  *(v26 + 4) = v28;
  return v19(v38, 0);
}

{
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v15 = *a1;
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;

  QueryType.join(_:_:on:)(&v15, a2, v14, a4, a5, a6);
}

uint64_t QueryType.where(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  return QueryType.filter(_:)(&v5, a2, a3, a4);
}

uint64_t QueryType.group(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a1, v8 + 32);

  sub_1DB1414E8(v9);
  memset(v11, 0, sizeof(v11));
  sub_1DB28D76C(v8, v11, a2, a3, a4);
}

uint64_t sub_1DB28D76C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  (*(*(a3 - 8) + 16))(a5, v5);
  v12 = *(a4 + 32);
  sub_1DB1757B0(v9, v10);

  v13 = v12(v20, a3, a4);
  v15 = v14[12];
  v16 = v14[13];
  v17 = v14[14];
  v18 = v14[15];
  v14[12] = a1;
  v14[13] = v9;
  v14[14] = v10;
  v14[15] = v11;
  sub_1DB1755F8(v15, v16, v17);
  return v13(v20, 0);
}

uint64_t QueryType.group(_:having:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_1DB28D89C(a1, a2, a3, a4, QueryType.group(_:having:));
}

{
  return sub_1DB28D89C(a1, a2, a3, a4, QueryType.group(_:having:));
}

uint64_t sub_1DB28D89C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v10 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a1, v11 + 32);
  v13 = v10;
  v14 = *(a2 + 1);
  a5(v11, &v13, a3, a4);
}

uint64_t _s19OnDeviceStorageCore9QueryTypePAAE5group_6havingxSayAA11Expressible_pG_AA10ExpressionVySbGtF_0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a2[1];
  v10 = a2[2];
  v14 = *a2;
  v15 = v9;
  v16 = v10;

  sub_1DB28D76C(a1, &v14, a3, a4, a5);
  v11 = v14;
  v12 = v15;

  return sub_1DB1718E4(v11, v12);
}

uint64_t QueryType.order(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = (*(a3 + 32))(v12, a2, a3);
  v10 = *(v9 + 128);
  *(v9 + 128) = a1;

  return v8(v12, 0);
}

uint64_t QueryType.limit(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  if (a2)
  {
    a1 = 0;
  }

  v10 = (*(a4 + 32))(v13, a3, a4);
  *(v11 + 136) = a1;
  *(v11 + 144) = 0;
  *(v11 + 152) = (a2 & 1) == 0;
  *(v11 + 153) = a2 & 1;
  return v10(v13, 0);
}

uint64_t QueryType.limit(_:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  v10 = (*(a4 + 32))(v13, a3, a4);
  *(v11 + 136) = a1;
  *(v11 + 144) = a2;
  *(v11 + 152) = 0;
  return v10(v13, 0);
}

OnDeviceStorageCore::QueryClauses::LimitClause __swiftcall QueryClauses.LimitClause.init(length:offset:)(Swift::Int length, Swift::Int_optional offset)
{
  *v2 = length;
  *(v2 + 8) = offset.value;
  *(v2 + 16) = offset.is_nil;
  result.offset = offset;
  result.length = length;
  return result;
}

uint64_t sub_1DB28DC8C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2C3A50;
  v6 = *(v2 + 8);
  if (*v2)
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (*v2)
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v9;
  v10 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  v11 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = v8;
  *(inited + 48) = v11;
  sub_1DB2B9A70(v6, (inited + 72));
  *(inited + 136) = v9;
  *(inited + 144) = v10;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v11;
  a1(1);
  sub_1DB2B9A70(inited, a2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

uint64_t sub_1DB28DE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2C3A50;
  v14 = a2;
  v6 = *(a2 + 16);
  v6(v17, a1, a2);
  sub_1DB17181C(v17);
  if (LOBYTE(v17[0]))
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (LOBYTE(v17[0]))
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v9;
  v10 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 64) = v10;
  *(inited + 32) = v7;
  v11 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = v8;
  *(inited + 48) = v11;
  v6(v16, a1, v14);
  v12 = v16[1];

  sub_1DB17181C(v16);
  sub_1DB2B9A70(v12, (inited + 72));

  *(inited + 136) = v9;
  *(inited + 144) = v10;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v11;
  sub_1DB288D3C(1, a1, v14, (inited + 152));
  sub_1DB2B9A70(inited, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  return swift_arrayDestroy();
}

double sub_1DB28E034@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v30 = a1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1DB1384B0(0, v3, 0);
    v4 = v36;
    v5 = v2 + 80;
    v31 = xmmword_1DB2C3A50;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      inited = swift_initStackObject();
      *(inited + 16) = v31;
      v32 = 0;
      v33 = 0xE000000000000000;
      v8 = *(v5 - 48);
      v9 = 0x52454E4E49;
      if (v8 != 1)
      {
        v9 = 0x54554F205446454CLL;
      }

      v10 = 0xEA00000000005245;
      if (v8 == 1)
      {
        v10 = 0xE500000000000000;
      }

      if (*(v5 - 48))
      {
        v11 = v9;
      }

      else
      {
        v11 = 0x53534F5243;
      }

      if (*(v5 - 48))
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xE500000000000000;
      }

      MEMORY[0x1E1283490](v11, v12);

      MEMORY[0x1E1283490](0x4E494F4A20, 0xE500000000000000);
      v13 = v32;
      v14 = v33;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 56) = v15;
      v16 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 64) = v16;
      *(inited + 32) = v13;
      *(inited + 40) = v14;
      *(inited + 48) = v6;
      v17 = *(v5 - 16);
      v18 = *(v5 - 8);
      __swift_project_boxed_opaque_existential_1((v5 - 40), v17);
      sub_1DB288D3C(1, v17, v18, (inited + 72));
      *(inited + 136) = v15;
      *(inited + 144) = v16;
      *(inited + 112) = 20047;
      *(inited + 120) = 0xE200000000000000;
      *(inited + 128) = v6;
      sub_1DB164980(v5, inited + 152);
      sub_1DB2B9A70(inited, &v32);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
      v36 = v4;
      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1DB1384B0((v19 > 1), v20 + 1, 1);
      }

      v21 = v34;
      v22 = v35;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v34);
      v24 = *(*(v21 - 8) + 64);
      MEMORY[0x1EEE9AC00](v23);
      v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26);
      sub_1DB16412C(v20, v26, &v36, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(&v32);
      v4 = v36;
      v5 += 88;
      --v3;
    }

    while (v3);
    sub_1DB2B9A70(v36, v30);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DB28E394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v51);
  v7 = v51[8];

  sub_1DB17181C(v51);
  v8 = *(v7 + 16);

  if (v8)
  {
    v35 = a3;
    (v6)(v50, a1, a2);
    v10 = v50[8];

    sub_1DB17181C(v50);
    v11 = *(v10 + 16);
    if (v11)
    {
      v49 = MEMORY[0x1E69E7CC0];
      result = sub_1DB1384B0(0, v11, 0);
      v12 = 0;
      v13 = v10 + 32;
      v14 = v49;
      v36 = xmmword_1DB2C3A50;
      v37 = v10;
      v38 = v11;
      while (v12 < *(v10 + 16))
      {
        sub_1DB175548(v13, v40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
        v15 = swift_allocObject();
        *(v15 + 16) = v36;
        v45 = 0;
        v46 = 0xE000000000000000;
        v39 = v13;
        if (v40[0])
        {
          if (v40[0] == 1)
          {
            v16 = 0x52454E4E49;
          }

          else
          {
            v16 = 0x54554F205446454CLL;
          }

          if (v40[0] == 1)
          {
            v17 = 0xE500000000000000;
          }

          else
          {
            v17 = 0xEA00000000005245;
          }
        }

        else
        {
          v17 = 0xE500000000000000;
          v16 = 0x53534F5243;
        }

        MEMORY[0x1E1283490](v16, v17);

        MEMORY[0x1E1283490](0x4E494F4A20, 0xE500000000000000);
        v18 = v45;
        v19 = v46;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
        *(v15 + 56) = v20;
        v21 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
        *(v15 + 64) = v21;
        *(v15 + 32) = v18;
        *(v15 + 40) = v19;
        v22 = MEMORY[0x1E69E7CC0];
        *(v15 + 48) = MEMORY[0x1E69E7CC0];
        v23 = v42;
        v24 = v43;
        __swift_project_boxed_opaque_existential_1(v41, v42);
        sub_1DB288D3C(1, v23, v24, (v15 + 72));
        *(v15 + 136) = v20;
        *(v15 + 144) = v21;
        *(v15 + 112) = 20047;
        *(v15 + 120) = 0xE200000000000000;
        *(v15 + 128) = v22;
        sub_1DB164980(&v44, v15 + 152);
        sub_1DB2B9A70(v15, &v45);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_1DB1755A4(v40);
        v49 = v14;
        v26 = *(v14 + 16);
        v25 = *(v14 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1DB1384B0((v25 > 1), v26 + 1, 1);
        }

        ++v12;
        v27 = v47;
        v28 = v48;
        v29 = __swift_mutable_project_boxed_opaque_existential_1(&v45, v47);
        v30 = *(*(v27 - 8) + 64);
        MEMORY[0x1EEE9AC00](v29);
        v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v33 + 16))(v32);
        sub_1DB16412C(v26, v32, &v49, v27, v28);
        result = __swift_destroy_boxed_opaque_existential_1(&v45);
        v14 = v49;
        v13 = v39 + 88;
        v10 = v37;
        if (v38 == v12)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
LABEL_19:
      sub_1DB2B9A70(v14, v35);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t JoinType.rawValue.getter()
{
  v1 = 0x52454E4E49;
  if (*v0 != 1)
  {
    v1 = 0x54554F205446454CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53534F5243;
  }
}

double sub_1DB28E824@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[10];
  if (v3)
  {
    v4 = v1[11];
    v5 = v1[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v7 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    *(inited + 32) = 0x4552454857;
    *(inited + 64) = v7;
    v8 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v8;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    *(inited + 104) = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
    *(inited + 72) = v5;
    *(inited + 80) = v3;
    *(inited + 88) = v4;

    sub_1DB2B9A70(inited, a1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DB28E9C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v14);
  v3 = v15;
  if (v15)
  {
    v4 = v14[9];
    v5 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v7 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    *(inited + 32) = 0x4552454857;
    *(inited + 64) = v7;
    v8 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v8;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    *(inited + 104) = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
    *(inited + 72) = v4;
    *(inited + 80) = v3;
    *(inited + 88) = v5;

    sub_1DB2B9A70(inited, &v11);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  v9 = v12;
  *a2 = v11;
  *(a2 + 16) = v9;
  *(a2 + 32) = v13;
  return sub_1DB17181C(v14);
}

void sub_1DB28EB8C(uint64_t a1@<X8>)
{
  v3 = v1[12];
  if (v3)
  {
    v4 = v1[14];
    v12 = v1[13];
    v5 = v1[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(inited + 56) = v7;
    v8 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 64) = v8;
    v9 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v9;
    sub_1DB2B9A70(v3, (inited + 72));
    sub_1DB2B9A70(inited, v13);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    if (v4)
    {
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_1DB2BD5A0;
      sub_1DB164980(v13, v10 + 32);
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_1DB2BD5A0;
      *(v11 + 56) = v7;
      *(v11 + 64) = v8;
      *(v11 + 32) = 0x474E49564148;
      *(v11 + 40) = 0xE600000000000000;
      *(v11 + 48) = v9;
      *(v11 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
      *(v11 + 104) = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
      *(v11 + 72) = v12;
      *(v11 + 80) = v4;
      *(v11 + 88) = v5;

      sub_1DB2B9A70(v11, (v10 + 72));
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1DB2B9A70(v10, a1);
      swift_setDeallocating();
      swift_arrayDestroy();
      __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      sub_1DB1355D0(v13, a1);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_1DB28EE38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v15);
  v4 = v16;
  v3 = v17;
  v5 = v18;
  v6 = v19;
  sub_1DB211E8C(v16, v17, v18);
  result = sub_1DB17181C(v15);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(inited + 56) = v9;
    v10 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 64) = v10;
    v11 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v11;
    sub_1DB2B9A70(v4, (inited + 72));
    sub_1DB2B9A70(inited, v14);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    if (v5)
    {
      sub_1DB1757B0(v3, v5);
      sub_1DB1755F8(v4, v3, v5);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_1DB2BD5A0;
      sub_1DB164980(v14, v12 + 32);
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_1DB2BD5A0;
      *(v13 + 56) = v9;
      *(v13 + 64) = v10;
      *(v13 + 32) = 0x474E49564148;
      *(v13 + 40) = 0xE600000000000000;
      *(v13 + 48) = MEMORY[0x1E69E7CC0];
      *(v13 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
      *(v13 + 104) = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
      *(v13 + 72) = v3;
      *(v13 + 80) = v5;
      *(v13 + 88) = v6;
      sub_1DB2B9A70(v13, (v12 + 72));
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1DB2B9A70(v12, a2);
      swift_setDeallocating();
      swift_arrayDestroy();
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      sub_1DB1755F8(v4, v3, 0);
      return sub_1DB1355D0(v14, a2);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1DB28F144@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  if (v2 && *(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v5 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 64) = v5;
    v6 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v6;
    sub_1DB2B9A70(v2, (inited + 72));
    sub_1DB2B9A70(inited, a1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DB28F290@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v8);
  v3 = v9;
  if (v9 && *(v9 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB2BD5A0;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v5 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 64) = v5;
    v6 = MEMORY[0x1E69E7CC0];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v6;
    sub_1DB2B9A70(v3, (inited + 72));
    sub_1DB2B9A70(inited, a2);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return sub_1DB17181C(v8);
}

void sub_1DB28F3FC(uint64_t a1@<X8>)
{
  if (*(v1 + 153))
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    v3 = *(v1 + 152);
    v4 = *(v1 + 144);
    v11 = *(v1 + 136);
    v5 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v5);

    if (v3)
    {
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(a1 + 32) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
      *a1 = 0x2054494D494CLL;
      *(a1 + 8) = 0xE600000000000000;
      *(a1 + 16) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD5A0;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 56) = v7;
      v8 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 64) = v8;
      *(inited + 32) = 0x2054494D494CLL;
      v9 = MEMORY[0x1E69E7CC0];
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v9;
      v10 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v10);

      *(inited + 96) = v7;
      *(inited + 104) = v8;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v9;
      sub_1DB2B9A70(inited, a1);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_1DB28F63C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v11);
  if (v13)
  {
    result = sub_1DB17181C(v11);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    v4 = v12;
    v5 = sub_1DB2BB8F4();
    MEMORY[0x1E1283490](v5);

    if (v4)
    {
      *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(a2 + 32) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
      result = sub_1DB17181C(v11);
      *a2 = 0x2054494D494CLL;
      *(a2 + 8) = 0xE600000000000000;
      *(a2 + 16) = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB2BD5A0;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 56) = v7;
      v8 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
      *(inited + 64) = v8;
      *(inited + 32) = 0x2054494D494CLL;
      v9 = MEMORY[0x1E69E7CC0];
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v9;
      v10 = sub_1DB2BB8F4();
      MEMORY[0x1E1283490](v10);

      *(inited + 96) = v7;
      *(inited + 104) = v8;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v9;
      sub_1DB2B9A70(inited, a2);
      sub_1DB17181C(v11);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
      return swift_arrayDestroy();
    }
  }

  return result;
}

void sub_1DB28F8AC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v2 + 16);
  if (!v3)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v57 = a1;
  v4 = MEMORY[0x1E69E7CC0];
  v76 = MEMORY[0x1E69E7CC0];
  sub_1DB1384B0(0, v3, 0);
  v5 = v2 + 32;
  v6 = v76;
  while (1)
  {
    sub_1DB175650(v5, v67);
    if (v67[0])
    {
      v7 = 0x4C41204E4F494E55;
    }

    else
    {
      v7 = 0x4E4F494E55;
    }

    if (v67[0])
    {
      v8 = 0xE90000000000004CLL;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v62 = v60;
    v9 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    v61[0] = v7;
    v61[1] = v8;
    v61[2] = v4;
    v59 = v9;
    v63 = v9;
    v11 = v69;
    v10 = v70;
    v12 = __swift_project_boxed_opaque_existential_1(v68, v69);
    v65 = v11;
    v66 = *(v10 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0, v12, v11);
    v14 = v62;
    v15 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    (*(v15 + 24))(&v71, v14, v15);
    v16 = v71;
    v17 = v72;
    v18 = v73;

    v19 = sub_1DB1572F0(0, 1, 1, v4);
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1DB1572F0((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[16 * v21];
    *(v22 + 4) = v16;
    *(v22 + 5) = v17;
    v23 = v18[2];

    v24 = sub_1DB157420(0, v23, 1, v4);
    v25 = v24;
    if (!v18[2])
    {
      break;
    }

    if ((v24[3] >> 1) - v24[2] < v23)
    {
      goto LABEL_39;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    swift_arrayInitWithCopy();

    if (v23)
    {
      v26 = v25[2];
      v27 = __OFADD__(v26, v23);
      v28 = v26 + v23;
      if (v27)
      {
        goto LABEL_41;
      }

      v25[2] = v28;
    }

LABEL_17:
    v58 = v3;

    v29 = v65;
    v30 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    (*(v30 + 24))(&v71, v29, v30);
    v31 = v71;
    v32 = v72;
    v33 = v73;
    v35 = *(v19 + 2);
    v34 = *(v19 + 3);

    if (v35 >= v34 >> 1)
    {
      v19 = sub_1DB1572F0((v34 > 1), v35 + 1, 1, v19);
    }

    *(v19 + 2) = v35 + 1;
    v36 = &v19[16 * v35];
    *(v36 + 4) = v31;
    *(v36 + 5) = v32;
    v37 = v33[2];
    v38 = v25[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      goto LABEL_37;
    }

    v40 = v25[3] >> 1;

    if (v40 < v39)
    {
      if (v38 <= v39)
      {
        v43 = v38 + v37;
      }

      else
      {
        v43 = v38;
      }

      v25 = sub_1DB157420(1, v43, 1, v25);
      v38 = v25[2];
      v40 = v25[3] >> 1;
      if (v33[2])
      {
LABEL_22:
        if ((v40 - v38) < v37)
        {
          goto LABEL_40;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
        swift_arrayInitWithCopy();

        if (v37)
        {
          v41 = v25[2];
          v27 = __OFADD__(v41, v37);
          v42 = v41 + v37;
          if (v27)
          {
            goto LABEL_42;
          }

          v25[2] = v42;
        }

        goto LABEL_31;
      }
    }

    else if (v37)
    {
      goto LABEL_22;
    }

    if (v37)
    {
      goto LABEL_38;
    }

LABEL_31:

    v71 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
    v44 = sub_1DB2BAD24();
    v46 = v45;

    v74 = v60;
    v75 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    v71 = v44;
    v72 = v46;
    v73 = v25;
    sub_1DB1756AC(v67);
    v76 = v6;
    v48 = *(v6 + 16);
    v47 = *(v6 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_1DB1384B0((v47 > 1), v48 + 1, 1);
    }

    v49 = v74;
    v50 = v75;
    v51 = __swift_mutable_project_boxed_opaque_existential_1(&v71, v74);
    v52 = *(*(v49 - 8) + 64);
    MEMORY[0x1EEE9AC00](v51);
    v54 = &v56 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v54);
    sub_1DB16412C(v48, v54, &v76, v49, v50);
    __swift_destroy_boxed_opaque_existential_1(&v71);
    v6 = v76;
    v5 += 48;
    v3 = v58 - 1;
    v4 = MEMORY[0x1E69E7CC0];
    if (v58 == 1)
    {
      sub_1DB2B9A70(v76, v57);

      return;
    }
  }

  if (!v23)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1DB28FEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v93);
  v7 = v93[20];

  sub_1DB17181C(v93);
  v8 = *(v7 + 16);

  if (!v8)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  (v6)(v88, a1, a2);
  v91[8] = v88[8];
  v91[9] = v88[9];
  v91[10] = v89;
  v92 = v90;
  v91[4] = v88[4];
  v91[5] = v88[5];
  v91[6] = v88[6];
  v91[7] = v88[7];
  v91[0] = v88[0];
  v91[1] = v88[1];
  v91[2] = v88[2];
  v91[3] = v88[3];
  v10 = v89;

  sub_1DB17181C(v91);
  v11 = *(v10 + 16);
  if (!v11)
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_39:
    sub_1DB2B9A70(v14, a3);
  }

  v12 = MEMORY[0x1E69E7CC0];
  v87 = MEMORY[0x1E69E7CC0];
  sub_1DB1384B0(0, v11, 0);
  v66[1] = v10;
  v67 = a3;
  v13 = v10 + 32;
  v14 = v87;
  while (1)
  {
    v70 = v14;
    v71 = v13;
    sub_1DB175650(v13, v78);
    if (v78[0])
    {
      v15 = 0x4C41204E4F494E55;
    }

    else
    {
      v15 = 0x4E4F494E55;
    }

    if (v78[0])
    {
      v16 = 0xE90000000000004CLL;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v73 = v69;
    v17 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    v72[0] = v15;
    v72[1] = v16;
    v68 = v17;
    v74 = v17;
    v72[2] = v12;
    v18 = v80;
    v19 = v81;
    v20 = __swift_project_boxed_opaque_existential_1(v79, v80);
    v76 = v18;
    v77 = *(v19 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v75);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v20, v18);
    v22 = v73;
    v23 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    (*(v23 + 24))(&v82, v22, v23);
    v25 = v82;
    v24 = v83;
    v26 = v84;

    v27 = sub_1DB1572F0(0, 1, 1, v12);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1DB1572F0((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[16 * v29];
    *(v30 + 4) = v25;
    *(v30 + 5) = v24;
    v31 = v26[2];

    result = sub_1DB157420(0, v31, 1, v12);
    v32 = result;
    if (!v26[2])
    {
      break;
    }

    if ((*(result + 24) >> 1) - *(result + 16) < v31)
    {
      goto LABEL_43;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    swift_arrayInitWithCopy();

    if (v31)
    {
      v33 = v32[2];
      v34 = __OFADD__(v33, v31);
      v35 = v33 + v31;
      if (v34)
      {
        goto LABEL_45;
      }

      v32[2] = v35;
    }

LABEL_18:
    v36 = v11;

    v37 = v76;
    v38 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v38 + 24))(&v82, v37, v38);
    v40 = v82;
    v39 = v83;
    v41 = v84;
    v42 = *(v27 + 2);
    v43 = *(v27 + 3);

    if (v42 >= v43 >> 1)
    {
      result = sub_1DB1572F0((v43 > 1), v42 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 2) = v42 + 1;
    v44 = &v27[16 * v42];
    *(v44 + 4) = v40;
    *(v44 + 5) = v39;
    v45 = v41[2];
    v46 = v32[2];
    v47 = v46 + v45;
    if (__OFADD__(v46, v45))
    {
      goto LABEL_41;
    }

    v48 = v32[3] >> 1;

    if (v48 < v47)
    {
      if (v46 <= v47)
      {
        v65 = v46 + v45;
      }

      else
      {
        v65 = v46;
      }

      result = sub_1DB157420(1, v65, 1, v32);
      v32 = result;
      v46 = *(result + 16);
      v49 = v41[2];
      v48 = *(result + 24) >> 1;
    }

    else
    {
      v49 = v45;
    }

    v50 = v36;
    v12 = MEMORY[0x1E69E7CC0];
    if (v49)
    {
      if ((v48 - v46) < v45)
      {
        goto LABEL_44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
      swift_arrayInitWithCopy();

      a3 = v67;
      if (v45)
      {
        v51 = v32[2];
        v34 = __OFADD__(v51, v45);
        v52 = v51 + v45;
        if (v34)
        {
          goto LABEL_46;
        }

        v32[2] = v52;
      }
    }

    else
    {

      a3 = v67;
      if (v45)
      {
        goto LABEL_42;
      }
    }

    v82 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
    v53 = sub_1DB2BAD24();
    v55 = v54;

    v85 = v69;
    v86 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    v82 = v53;
    v83 = v55;
    v84 = v32;
    sub_1DB1756AC(v78);
    v87 = v70;
    v57 = *(v70 + 16);
    v56 = *(v70 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_1DB1384B0((v56 > 1), v57 + 1, 1);
    }

    v58 = v85;
    v59 = v86;
    v60 = __swift_mutable_project_boxed_opaque_existential_1(&v82, v85);
    v61 = *(*(v58 - 8) + 64);
    MEMORY[0x1EEE9AC00](v60);
    v63 = v66 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v63);
    sub_1DB16412C(v57, v63, &v87, v58, v59);
    __swift_destroy_boxed_opaque_existential_1(&v82);
    v14 = v87;
    v13 = v71 + 48;
    v11 = v50 - 1;
    if (!v11)
    {

      goto LABEL_39;
    }
  }

  if (!v31)
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t QueryType.alias(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  v9 = *(a4 + 16);
  v9(v23, a3, a4);
  v10 = v23[3];
  v20 = v23[2];

  sub_1DB17181C(v23);

  v9(v24, a3, a4);
  v11 = v24[6];
  v12 = v24[7];

  sub_1DB17181C(v24);

  v13 = *(a4 + 32);

  v14 = v13(v22, a3, a4);
  v16 = v15[3];
  v17 = v15[5];
  v18 = v15[7];
  v15[2] = v20;
  v15[3] = v10;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v11;
  v15[7] = v12;

  return v14(v22, 0);
}

double QueryType.insert(_:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DB2BCC40;
  v8 = v7;
  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA0, &qword_1DB2CEF20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  sub_1DB164AE0(a1, v9 + 32);
  v25[0] = v9;

  sub_1DB141A38(v10);
  *(v8 + 32) = v9;
  v11 = *(a3 + 16);
  v11(v24, a2, a3);
  v12 = v24[3];
  v13 = v24[5];
  v20 = v24[4];
  v21 = v24[2];
  v14 = v24[7];
  v19 = v24[6];

  sub_1DB17181C(v24);
  v11(v25, a2, a3);
  v15 = v26;
  v16 = v27;
  v17 = v28;
  sub_1DB1757B0(v26, v27);
  sub_1DB17181C(v25);
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 96) = 0u;
  *a4 = v21;
  *(a4 + 8) = v12;
  *(a4 + 16) = v20;
  *(a4 + 24) = v13;
  *(a4 + 32) = v19;
  *(a4 + 40) = v14;
  *(a4 + 48) = 5;
  *(a4 + 56) = 0;
  *(a4 + 64) = v22;
  *(a4 + 72) = v15;
  *(a4 + 80) = v16;
  *(a4 + 88) = v17;
  sub_1DB1445E0(a4 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 136) = 1;
  return result;
}

double sub_1DB2909DC@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  *(v9 + 32) = a2;
  v10 = *(a4 + 16);

  v10(v22, a3, a4);
  v11 = v22[3];
  v12 = v22[5];
  v19 = v22[4];
  v20 = v22[2];
  v13 = v22[7];
  v18 = v22[6];

  sub_1DB17181C(v22);
  v10(v23, a3, a4);
  v14 = v24;
  v15 = v25;
  v16 = v26;
  sub_1DB1757B0(v24, v25);
  sub_1DB17181C(v23);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v20;
  *(a5 + 8) = v11;
  *(a5 + 16) = v19;
  *(a5 + 24) = v12;
  *(a5 + 32) = v18;
  *(a5 + 40) = v13;
  *(a5 + 48) = v21;
  *(a5 + 56) = 0;
  *(a5 + 64) = v9;
  *(a5 + 72) = v14;
  *(a5 + 80) = v15;
  *(a5 + 88) = v16;
  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double sub_1DB290B70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v8(v19, a2, a3);
  v9 = v19[3];
  v10 = v19[5];
  v17 = v19[4];
  v18 = v19[2];
  v11 = v19[7];
  v16 = v19[6];

  sub_1DB17181C(v19);
  v8(v20, a2, a3);
  v12 = v21;
  v13 = v22;
  v14 = v23;
  sub_1DB1757B0(v21, v22);
  sub_1DB17181C(v20);
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 96) = 0u;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v17;
  *(a4 + 24) = v10;
  *(a4 + 32) = v16;
  *(a4 + 40) = v11;
  *(a4 + 48) = 5;
  *(a4 + 56) = 0;
  *(a4 + 64) = a1;
  *(a4 + 72) = v12;
  *(a4 + 80) = v13;
  *(a4 + 88) = v14;

  sub_1DB1445E0(a4 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0;
  *(a4 + 136) = 1;
  return result;
}

double sub_1DB290CC8@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = *a1;
  v9 = *(a4 + 16);
  v9(v21, a3, a4);
  v10 = v21[3];
  v11 = v21[5];
  v18 = v21[4];
  v19 = v21[2];
  v12 = v21[7];
  v17 = v21[6];

  sub_1DB17181C(v21);
  v9(v22, a3, a4);
  v13 = v23;
  v14 = v24;
  v15 = v25;
  sub_1DB1757B0(v23, v24);
  sub_1DB17181C(v22);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v19;
  *(a5 + 8) = v10;
  *(a5 + 16) = v18;
  *(a5 + 24) = v11;
  *(a5 + 32) = v17;
  *(a5 + 40) = v12;
  *(a5 + 48) = v20;
  *(a5 + 56) = 0;
  *(a5 + 64) = a2;
  *(a5 + 72) = v13;
  *(a5 + 80) = v14;
  *(a5 + 88) = v15;

  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double QueryType.insert()@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v11);
  v4 = v11[2];
  v3 = v11[3];
  v6 = v11[4];
  v5 = v11[5];
  v8 = v11[6];
  v7 = v11[7];

  sub_1DB17181C(v11);
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  v9 = MEMORY[0x1E69E7CC0];
  *(a2 + 48) = 5;
  *(a2 + 56) = 0;
  *(a2 + 64) = v9;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  sub_1DB1445E0(a2 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  return result;
}

double sub_1DB291220@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DB2BCC40;
  *(v24 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a2, v12 + 32);
  *(v12 + 72) = a3;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  *(v12 + 96) = 0;
  v13 = *(a5 + 16);

  v13(v25, a4, a5);
  v14 = v25[3];
  v15 = v25[5];
  v22 = v25[4];
  v23 = v25[2];
  v16 = v25[7];
  v21 = v25[6];

  sub_1DB17181C(v25);
  v13(v26, a4, a5);
  v17 = v27;
  v18 = v28;
  v19 = v29;
  sub_1DB1757B0(v27, v28);
  sub_1DB17181C(v26);
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 96) = 0u;
  *a6 = v23;
  *(a6 + 8) = v14;
  *(a6 + 16) = v22;
  *(a6 + 24) = v15;
  *(a6 + 32) = v21;
  *(a6 + 40) = v16;
  *(a6 + 48) = 5;
  *(a6 + 56) = v12;
  *(a6 + 64) = v24;
  *(a6 + 72) = v17;
  *(a6 + 80) = v18;
  *(a6 + 88) = v19;
  sub_1DB1445E0(a6 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 136) = 1;
  return result;
}

double sub_1DB291404@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BCC40;
  v31 = v10;
  *(v10 + 32) = a1;
  v11 = *(a2 + 16);
  if (v11)
  {
    v32[0] = MEMORY[0x1E69E7CC0];

    sub_1DB138810(0, v11, 0);
    v12 = v32[0];
    v13 = a2 + 32;
    do
    {
      sub_1DB164980(v13, v33);
      memset(&v34[8], 0, 32);
      v32[0] = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DB138810((v14 > 1), v15 + 1, 1);
        v12 = v32[0];
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 72 * v15;
      *(v16 + 32) = v33[0];
      v17 = v33[1];
      v18 = *v34;
      v19 = *&v34[16];
      *(v16 + 96) = *&v34[32];
      *(v16 + 64) = v18;
      *(v16 + 80) = v19;
      *(v16 + 48) = v17;
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(a4 + 16);
  v20(v32, a3, a4);
  v21 = v32[3];
  v22 = v32[5];
  v29 = v32[4];
  v30 = v32[2];
  v23 = v32[7];
  v28 = v32[6];

  sub_1DB17181C(v32);
  v20(v33, a3, a4);
  v24 = v35;
  v25 = v36;
  v26 = v37;
  sub_1DB1757B0(v35, v36);
  sub_1DB17181C(v33);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v30;
  *(a5 + 8) = v21;
  *(a5 + 16) = v29;
  *(a5 + 24) = v22;
  *(a5 + 32) = v28;
  *(a5 + 40) = v23;
  *(a5 + 48) = 5;
  *(a5 + 56) = v12;
  *(a5 + 64) = v31;
  *(a5 + 72) = v24;
  *(a5 + 80) = v25;
  *(a5 + 88) = v26;
  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double QueryType.upsert(_:onConflict:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA8, &unk_1DB2BCF10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BCC40;
  *(v10 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB2BCC40;
  sub_1DB201088(a2, v11 + 32);
  v26[0] = v11;

  sub_1DB141760(v12);
  v24 = v11;
  v13 = *(a4 + 16);
  v13(v25, a3, a4);
  v14 = v25[3];
  v15 = v25[5];
  v22 = v25[4];
  v23 = v25[2];
  v16 = v25[7];
  v21 = v25[6];

  sub_1DB17181C(v25);
  v13(v26, a3, a4);
  v17 = v27;
  v18 = v28;
  v19 = v29;
  sub_1DB1757B0(v27, v28);
  sub_1DB17181C(v26);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v23;
  *(a5 + 8) = v14;
  *(a5 + 16) = v22;
  *(a5 + 24) = v15;
  *(a5 + 32) = v21;
  *(a5 + 40) = v16;
  *(a5 + 48) = 5;
  *(a5 + 56) = v24;
  *(a5 + 64) = v10;
  *(a5 + 72) = v17;
  *(a5 + 80) = v18;
  *(a5 + 88) = v19;
  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double sub_1DB291864@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v9 = swift_allocObject();
  v9[1] = xmmword_1DB2BCC40;
  sub_1DB164980(a2, (v9 + 2));
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  v10 = *(a4 + 16);
  v10(v22, a3, a4);
  v11 = v22[3];
  v12 = v22[5];
  v19 = v22[4];
  v20 = v22[2];
  v13 = v22[7];
  v18 = v22[6];

  sub_1DB17181C(v22);
  v10(v23, a3, a4);
  v14 = v24;
  v15 = v25;
  v16 = v26;
  sub_1DB1757B0(v24, v25);
  sub_1DB17181C(v23);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v20;
  *(a5 + 8) = v11;
  *(a5 + 16) = v19;
  *(a5 + 24) = v12;
  *(a5 + 32) = v18;
  *(a5 + 40) = v13;
  *(a5 + 48) = 5;
  *(a5 + 56) = v9;
  *(a5 + 64) = a1;
  *(a5 + 72) = v14;
  *(a5 + 80) = v15;
  *(a5 + 88) = v16;

  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

double sub_1DB291A08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DB2BCC40;
  sub_1DB164980(a2, v11 + 32);
  *(v11 + 72) = a3;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  v12 = *(a5 + 16);

  v12(v24, a4, a5);
  v13 = v24[3];
  v14 = v24[5];
  v21 = v24[4];
  v22 = v24[2];
  v15 = v24[7];
  v20 = v24[6];

  sub_1DB17181C(v24);
  v12(v25, a4, a5);
  v16 = v26;
  v17 = v27;
  v18 = v28;
  sub_1DB1757B0(v26, v27);
  sub_1DB17181C(v25);
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 96) = 0u;
  *a6 = v22;
  *(a6 + 8) = v13;
  *(a6 + 16) = v21;
  *(a6 + 24) = v14;
  *(a6 + 32) = v20;
  *(a6 + 40) = v15;
  *(a6 + 48) = 5;
  *(a6 + 56) = v11;
  *(a6 + 64) = a1;
  *(a6 + 72) = v16;
  *(a6 + 80) = v17;
  *(a6 + 88) = v18;

  sub_1DB1445E0(a6 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0;
  *(a6 + 136) = 1;
  return result;
}

double QueryType.upsertMany(_:onConflict:_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  sub_1DB201088(a2, v9 + 32);
  v25[0] = v9;

  sub_1DB141760(v10);
  v22 = v9;
  v11 = *(a4 + 16);
  v11(v24, a3, a4);
  v12 = v24[3];
  v13 = v24[5];
  v20 = v24[4];
  v21 = v24[2];
  v14 = v24[7];
  v19 = v24[6];

  sub_1DB17181C(v24);
  v11(v25, a3, a4);
  v15 = v26;
  v16 = v27;
  v17 = v28;
  sub_1DB1757B0(v26, v27);
  sub_1DB17181C(v25);
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 96) = 0u;
  *a5 = v21;
  *(a5 + 8) = v12;
  *(a5 + 16) = v20;
  *(a5 + 24) = v13;
  *(a5 + 32) = v19;
  *(a5 + 40) = v14;
  *(a5 + 48) = 5;
  *(a5 + 56) = v22;
  *(a5 + 64) = a1;
  *(a5 + 72) = v15;
  *(a5 + 80) = v16;
  *(a5 + 88) = v17;

  sub_1DB1445E0(a5 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  return result;
}

uint64_t QueryType.update(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DA0, &qword_1DB2CEF20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DB2BCC40;
  sub_1DB164AE0(a1, v8 + 32);

  sub_1DB141A38(v9);
  QueryType.update(_:)(v8, a2, a3, a4);
}

uint64_t QueryType.delete()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = a3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v5 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  v35 = 0x46204554454C4544;
  v36 = 0xEB000000004D4F52;
  v6 = MEMORY[0x1E69E7CC0];
  v39 = v5;
  v37 = MEMORY[0x1E69E7CC0];
  sub_1DB288D3C(0, a1, a2, v40);
  sub_1DB28E9C0(a2, &v41);
  sub_1DB28F290(a2, &v42);
  sub_1DB28F63C(a2, &v43);
  for (i = 32; i != 232; i += 40)
  {
    sub_1DB1446A4(&v34[i], &v31, &qword_1ECC27898, &unk_1DB2CCD00);
    v24[0] = v31;
    v24[1] = v32;
    v25 = v33;
    if (*(&v32 + 1))
    {
      sub_1DB1355D0(v24, &v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v6 = sub_1DB1573FC(0, v6[2] + 1, 1, v6);
        v30 = v6;
      }

      v10 = v6[2];
      v9 = v6[3];
      if (v10 >= v9 >> 1)
      {
        v6 = sub_1DB1573FC((v9 > 1), v10 + 1, 1, v6);
        v30 = v6;
      }

      v11 = v28;
      v12 = v29;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(&v26, v28);
      v14 = *(*(v11 - 8) + 64);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      sub_1DB200A54(v10, v16, &v30, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    else
    {
      sub_1DB1445E0(v24, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v6, &v31);

  v18 = *(&v32 + 1);
  v19 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  (*(v19 + 24))(&v26, v18, v19);
  v20 = v23;
  *v23 = v26;
  *(v20 + 1) = v27;
  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

uint64_t QueryType.exists.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v7;
  v8 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  strcpy((inited + 32), "SELECT EXISTS");
  *(inited + 64) = v8;
  v9 = MEMORY[0x1E69E7CC0];
  *(inited + 46) = -4864;
  *(inited + 48) = v9;
  v10 = *(*(a2 + 8) + 24);
  v17 = v7;
  v18 = v8;
  v10(v16, a1);
  *(inited + 96) = v7;
  *(inited + 104) = v8;
  sub_1DB203564(v16, 0, 0xE000000000000000);
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_1DB2B9A70(inited, v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  v11 = v17;
  v12 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v12 + 24))(&v14, v11, v12);
  *a3 = v14;
  *(a3 + 8) = v15;
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_1DB292510@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(a3 + 16))(v28, a2, a3);
  v6 = v28[5];
  v7 = v28[7];

  sub_1DB17181C(v28);
  if ((a1 & 1) == 0)
  {
    if (!v6)
    {
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v27 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);

    v17 = sub_1DB2B995C(34, 0xE100000000000000);
    v19 = v18;

    *&v24 = v17;
    *(&v24 + 1) = v19;
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  if (!v6)
  {
  }

  v8 = sub_1DB2B995C(34, 0xE100000000000000);
  v10 = v9;

  if (!v7)
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v21 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    *&v24 = v8;
    *(&v24 + 1) = v10;
    v20 = MEMORY[0x1E69E7CC0];
    v27 = v21;
LABEL_10:
    v25 = v20;
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  v23 = v10;
  v12 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 56) = v13;
  v14 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  *(inited + 64) = v14;
  *(inited + 32) = sub_1DB2B995C(34, 0xE100000000000000);
  v15 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = v16;
  *(inited + 48) = v15;
  *(inited + 96) = v13;
  *(inited + 104) = v14;
  a4 = v12;
  *(inited + 72) = v8;
  *(inited + 80) = v23;
  *(inited + 88) = v15;
  sub_1DB2B9A70(inited, &v24);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
LABEL_11:
  sub_1DB1355D0(&v24, a4);
}

uint64_t QueryType.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  return QueryType.namespace<A>(_:)(&v5, a2, a3, a4);
}

{
  v8 = *a1;
  v9 = *(a1 + 8);
  v6 = sub_1DB2BB364();
  return QueryType.namespace<A>(_:)(&v8, a2, v6, a4);
}

uint64_t QueryType.subscript.getter(void (*a1)(void *__return_ptr, uint64_t *, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  a1(v11, &v8, v7);
  v8 = v11[0];
  v9 = v11[1];
  v10 = v11[2];
  QueryType.namespace<A>(_:)(&v8, a3, MEMORY[0x1E69E7CA8] + 8, a4);
}

uint64_t sub_1DB292984@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  sub_1DB292F2C(&v29);
  sub_1DB28DC8C(a1, v30);
  sub_1DB28E034(&v31);
  sub_1DB28E824(&v32);
  sub_1DB28EB8C(&v33);
  sub_1DB28F8AC(&v34);
  sub_1DB28F144(&v35);
  sub_1DB28F3FC(&v36);
  v3 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 352; i += 40)
  {
    sub_1DB1446A4(&v28[i], &v25, &qword_1ECC27898, &unk_1DB2CCD00);
    v19[0] = v25;
    v19[1] = v26;
    v20 = v27;
    if (*(&v26 + 1))
    {
      sub_1DB1355D0(v19, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = sub_1DB1573FC(0, v3[2] + 1, 1, v3);
        v24 = v3;
      }

      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        v3 = sub_1DB1573FC((v6 > 1), v7 + 1, 1, v3);
        v24 = v3;
      }

      v8 = v22;
      v9 = v23;
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      v11 = *(*(v8 - 8) + 64);
      MEMORY[0x1EEE9AC00](v10);
      v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v13);
      sub_1DB200A54(v7, v13, &v24, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      sub_1DB1445E0(v19, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v3, &v25);

  v15 = *(&v26 + 1);
  v16 = v27;
  __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
  (*(v16 + 24))(v15, v16);
  return __swift_destroy_boxed_opaque_existential_1(&v25);
}

uint64_t QueryType.expression.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  sub_1DB2A3060(a1, a2, &v31);
  sub_1DB28DE2C(a1, a2, v32);
  sub_1DB28E394(a1, a2, &v33);
  sub_1DB28E9C0(a2, &v34);
  sub_1DB28EE38(a2, &v35);
  sub_1DB28FEF8(a1, a2, &v36);
  sub_1DB28F290(a2, &v37);
  sub_1DB28F63C(a2, &v38);
  v5 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 352; i += 40)
  {
    sub_1DB1446A4(&v30[i], &v27, &qword_1ECC27898, &unk_1DB2CCD00);
    v21[0] = v27;
    v21[1] = v28;
    v22 = v29;
    if (*(&v28 + 1))
    {
      sub_1DB1355D0(v21, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_1DB1573FC(0, v5[2] + 1, 1, v5);
        v26 = v5;
      }

      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        v5 = sub_1DB1573FC((v8 > 1), v9 + 1, 1, v5);
        v26 = v5;
      }

      v10 = v24;
      v11 = v25;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      v13 = *(*(v10 - 8) + 64);
      MEMORY[0x1EEE9AC00](v12);
      v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_1DB200A54(v9, v15, &v26, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v23);
    }

    else
    {
      sub_1DB1445E0(v21, &qword_1ECC27898, &unk_1DB2CCD00);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27898, &unk_1DB2CCD00);
  swift_arrayDestroy();
  sub_1DB2B9A70(v5, &v27);

  v17 = *(&v28 + 1);
  v18 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
  (*(v18 + 24))(v17, v18);
  return __swift_destroy_boxed_opaque_existential_1(&v27);
}

double sub_1DB292F2C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 176);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + 168);
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DB1384B0(0, v4, 0);
    v6 = v23;
    v7 = (v3 + 32);
    do
    {
      sub_1DB2A3700(v7, v24);
      v23 = v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DB1384B0((v8 > 1), v9 + 1, 1);
      }

      v10 = v25;
      v11 = v26;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      v13 = *(*(v10 - 8) + 64);
      MEMORY[0x1EEE9AC00](v12);
      v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v16 + 16))(v15);
      sub_1DB16412C(v9, v15, &v23, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v6 = v23;
      v7 += 15;
      --v4;
    }

    while (v4);
    sub_1DB2B9A70(v23, v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    inited = swift_initStackObject();
    v18 = inited;
    *(inited + 16) = xmmword_1DB2BD5A0;
    if (v5)
    {
      v19 = 0x4345522048544957;
    }

    else
    {
      v19 = 1213483351;
    }

    if (v5)
    {
      v20 = 0xEE00455649535255;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v18[8] = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    v18[4] = v19;
    v18[5] = v20;
    v18[6] = MEMORY[0x1E69E7CC0];
    sub_1DB164980(v24, (v18 + 9));
    sub_1DB2B9A70(v18, a1);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
    swift_arrayDestroy();
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

__n128 Table.clauses.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB1759B0(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

__n128 Table.init(clauses:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v2;
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = *(a1 + 176);
  v3 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v3;
  v4 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v4;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_1DB29332C(uint64_t a1)
{
  v2 = sub_1DB2A0428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB293368(uint64_t a1)
{
  v2 = sub_1DB2A0428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DB293470(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB1759B0(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

uint64_t sub_1DB293530@<X0>(uint64_t a1@<X8>)
{
  v11 = v1[8];
  v12 = v1[9];
  v13 = v1[10];
  v14 = *(v1 + 22);
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1DB292984(sub_1DB25CF84, a1);
}

__n128 View.clauses.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB175900(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

double _s19OnDeviceStorageCore12VirtualTableV_8databaseACSS_SSSgtcfC_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BCC40;
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v10 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 32) = 42;
  *(v10 + 40) = 0xE100000000000000;
  *(v10 + 48) = v11;
  *a5 = 0;
  *(a5 + 8) = v10;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = v11;
  result = 0.0;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0;
  *(a5 + 153) = 1;
  *(a5 + 160) = v11;
  *(a5 + 168) = 0;
  *(a5 + 176) = v11;
  return result;
}

uint64_t sub_1DB2937A4(uint64_t a1)
{
  v2 = sub_1DB2A0524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB2937E0(uint64_t a1)
{
  v2 = sub_1DB2A0524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DB2938E4(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB175900(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

uint64_t VirtualTable.clauses.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 22);
  *(a1 + 176) = *(v1 + 22);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return sub_1DB1754EC(v18, v17);
}

__n128 VirtualTable.clauses.setter(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB175850(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

uint64_t sub_1DB293B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73657375616C63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB2BB924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB293B98(uint64_t a1)
{
  v2 = sub_1DB2A0578();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB293BD4(uint64_t a1)
{
  v2 = sub_1DB2A0578();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB293C54(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = v4[9];
  v44 = v4[8];
  v45 = v11;
  v46 = v4[10];
  v47 = *(v4 + 22);
  v12 = v4[5];
  v40 = v4[4];
  v41 = v12;
  v13 = v4[7];
  v42 = v4[6];
  v43 = v13;
  v14 = v4[1];
  v36 = *v4;
  v37 = v14;
  v15 = v4[3];
  v38 = v4[2];
  v39 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_1DB1754EC(&v36, &v24);
  a4(v17);
  sub_1DB2BBA94();
  v32 = v44;
  v33 = v45;
  v34 = v46;
  v35 = v47;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v31 = v43;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  sub_1DB2A047C();
  sub_1DB2BB8A4();
  v18 = (v21 + 8);
  v22[8] = v32;
  v22[9] = v33;
  v22[10] = v34;
  v23 = v35;
  v22[4] = v28;
  v22[5] = v29;
  v22[6] = v30;
  v22[7] = v31;
  v22[0] = v24;
  v22[1] = v25;
  v22[2] = v26;
  v22[3] = v27;
  sub_1DB17181C(v22);
  return (*v18)(v10, v7);
}

uint64_t sub_1DB293EA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB2BBA84();
  if (!v5)
  {
    v13 = v21;
    sub_1DB2A04D0();
    sub_1DB2BB7B4();
    (*(v34 + 8))(v11, v8);
    v14 = v31;
    *(v13 + 128) = v30;
    *(v13 + 144) = v14;
    *(v13 + 160) = v32;
    *(v13 + 176) = v33;
    v15 = v27;
    *(v13 + 64) = v26;
    *(v13 + 80) = v15;
    v16 = v29;
    *(v13 + 96) = v28;
    *(v13 + 112) = v16;
    v17 = v23;
    *v13 = v22;
    *(v13 + 16) = v17;
    v18 = v25;
    *(v13 + 32) = v24;
    *(v13 + 48) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_1DB2940B4(uint64_t a1)
{
  v3 = *(v1 + 144);
  v14[8] = *(v1 + 128);
  v14[9] = v3;
  v14[10] = *(v1 + 160);
  v15 = *(v1 + 176);
  v4 = *(v1 + 80);
  v14[4] = *(v1 + 64);
  v14[5] = v4;
  v5 = *(v1 + 112);
  v14[6] = *(v1 + 96);
  v14[7] = v5;
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v7 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v7;
  sub_1DB175850(v14);
  v8 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v8;
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = *(a1 + 176);
  v9 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v9;
  v10 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v13;
  return result;
}

uint64_t ScalarQuery.clauses.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 22);
  *(a1 + 176) = *(v1 + 22);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return sub_1DB1754EC(v18, v17);
}

__n128 ScalarQuery.clauses.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 144);
  v15[8] = *(v2 + 128);
  v15[9] = v4;
  v15[10] = *(v2 + 160);
  v16 = *(v2 + 176);
  v5 = *(v2 + 80);
  v15[4] = *(v2 + 64);
  v15[5] = v5;
  v6 = *(v2 + 112);
  v15[6] = *(v2 + 96);
  v15[7] = v6;
  v7 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v7;
  v8 = *(v2 + 48);
  v15[2] = *(v2 + 32);
  v15[3] = v8;
  (*(*(a2 - 8) + 8))(v15);
  v9 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v9;
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = *(a1 + 176);
  v10 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v10;
  v11 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v11;
  v12 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v12;
  result = *(a1 + 32);
  v14 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v14;
  return result;
}

double ScalarQuery.init(_:database:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DB2BCC40;
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v10 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 32) = 42;
  *(v10 + 40) = 0xE100000000000000;
  *(v10 + 48) = v11;
  *a5 = 0;
  *(a5 + 8) = v10;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = v11;
  result = 0.0;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0;
  *(a5 + 153) = 1;
  *(a5 + 160) = v11;
  *(a5 + 168) = 0;
  *(a5 + 176) = v11;
  return result;
}

uint64_t ScalarQuery.init(query:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 16))(v12, v4, v5);
  v6 = v12[9];
  *(a2 + 128) = v12[8];
  *(a2 + 144) = v6;
  *(a2 + 160) = v12[10];
  *(a2 + 176) = v13;
  v7 = v12[5];
  *(a2 + 64) = v12[4];
  *(a2 + 80) = v7;
  v8 = v12[7];
  *(a2 + 96) = v12[6];
  *(a2 + 112) = v8;
  v9 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v9;
  v10 = v12[3];
  *(a2 + 32) = v12[2];
  *(a2 + 48) = v10;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB2944D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73657375616C63 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DB2BB924();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DB29454C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1DB2944D4(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1DB29457C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1DB136F1C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DB2945AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB294600(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ScalarQuery.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  type metadata accessor for ScalarQuery.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1DB2BB8C4();
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  v9 = v2[9];
  v39 = v2[8];
  v40 = v9;
  v41 = v2[10];
  v42 = *(v2 + 22);
  v10 = v2[5];
  v35 = v2[4];
  v36 = v10;
  v11 = v2[7];
  v37 = v2[6];
  v38 = v11;
  v12 = v2[1];
  v31 = *v2;
  v32 = v12;
  v13 = v2[3];
  v33 = v2[2];
  v34 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB1754EC(&v31, &v19);
  sub_1DB2BBA94();
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v30 = v42;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  sub_1DB2A047C();
  sub_1DB2BB8A4();
  v17[8] = v27;
  v17[9] = v28;
  v17[10] = v29;
  v18 = v30;
  v17[4] = v23;
  v17[5] = v24;
  v17[6] = v25;
  v17[7] = v26;
  v17[0] = v19;
  v17[1] = v20;
  v17[2] = v21;
  v17[3] = v22;
  sub_1DB17181C(v17);
  return (*(v43 + 8))(v8, v5);
}

uint64_t ScalarQuery.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  type metadata accessor for ScalarQuery.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1DB2BB7E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2BBA84();
  if (!v2)
  {
    v10 = v19;
    sub_1DB2A04D0();
    sub_1DB2BB7B4();
    (*(v5 + 8))(v8, v4);
    v11 = v17[9];
    *(v10 + 128) = v17[8];
    *(v10 + 144) = v11;
    *(v10 + 160) = v17[10];
    *(v10 + 176) = v18;
    v12 = v17[5];
    *(v10 + 64) = v17[4];
    *(v10 + 80) = v12;
    v13 = v17[7];
    *(v10 + 96) = v17[6];
    *(v10 + 112) = v13;
    v14 = v17[1];
    *v10 = v17[0];
    *(v10 + 16) = v14;
    v15 = v17[3];
    *(v10 + 32) = v17[2];
    *(v10 + 48) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_1DB294A78(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = ScalarQuery.clauses.modify();
  return sub_1DB294AE8;
}

void sub_1DB294AE8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1DB294B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return QueryType.expression.getter(a1, WitnessTable, a2);
}

uint64_t Select.template.getter()
{
  v0 = sub_1DB288124();

  return v0;
}

uint64_t Select.template.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Select.bindings.getter()
{
  sub_1DB243A08();
}

uint64_t Select.bindings.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Select.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1DB294CE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ExpressionType.description.getter(a1, WitnessTable);
}

uint64_t sub_1DB294D44(uint64_t a1)
{
  v2 = sub_1DB2A05E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB294D80(uint64_t a1)
{
  v2 = sub_1DB2A05E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Insert.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292A8, &qword_1DB2CEF58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A05E4();
  sub_1DB2BBA94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CC8, &unk_1DB2C3860);
  sub_1DB1688F0(&qword_1EE13F488, &qword_1ECC27CC8, &unk_1DB2C3860);
  sub_1DB2BB8A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t Insert.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292B0, &qword_1DB2CEF60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A05E4();
  sub_1DB2BBA84();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CC8, &unk_1DB2C3860);
    sub_1DB1688F0(&qword_1EE13EA28, &qword_1ECC27CC8, &unk_1DB2C3860);
    sub_1DB2BB7B4();
    (*(v5 + 8))(v8, v4);
    *(v33 + 9) = *(v25 + 9);
    v32 = v24;
    v33[0] = v25[0];
    v28 = v20;
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v10 = v19;
    v26 = v18;
    v27 = v19;
    v11 = v23;
    v12 = v25[0];
    v13 = v34;
    v34[6] = v24;
    v13[7] = v12;
    *(v13 + 121) = *(v33 + 9);
    v14 = v29;
    v15 = v30;
    v16 = v26;
    v13[2] = v28;
    v13[3] = v14;
    v13[4] = v15;
    v13[5] = v11;
    *v13 = v16;
    v13[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB295144()
{
  sub_1DB1446A4(v0, v5, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v7)
  {
    v3[6] = v5[6];
    v3[7] = v5[7];
    v4 = v6;
    v3[2] = v5[2];
    v3[3] = v5[3];
    v3[4] = v5[4];
    v3[5] = v5[5];
    v3[0] = v5[0];
    v3[1] = v5[1];
    v1 = sub_1DB1F4E58();
    sub_1DB1F7130(v3);
  }

  else
  {
    v1 = *&v5[0];
  }

  return v1;
}

uint64_t sub_1DB2951EC()
{
  sub_1DB1446A4(v0, v3, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v4)
  {
    sub_1DB1445E0(v3, &qword_1ECC27CC8, &unk_1DB2C3860);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v1 = v3[2];
  }

  return v1;
}

uint64_t sub_1DB295264@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 136) = 0;
  return result;
}

uint64_t sub_1DB29528C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292A8, &qword_1DB2CEF58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A05E4();
  sub_1DB2BBA94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27CC8, &unk_1DB2C3860);
  sub_1DB1688F0(&qword_1EE13F488, &qword_1ECC27CC8, &unk_1DB2C3860);
  sub_1DB2BB8A4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t Update.template.getter()
{
  if (*(v0 + 106))
  {
    v7 = *(v0 + 3);
    v8 = *(v0 + 4);
    *v9 = *(v0 + 5);
    *&v9[10] = *(v0 + 90);
    v5 = *(v0 + 1);
    v6 = *(v0 + 2);
    v3 = *v0;
    v4 = v0[1];
    return sub_1DB1F43B8();
  }

  else
  {
    v2 = *v0;

    return v2;
  }
}

uint64_t Update.bindings.getter()
{
  if (*(v0 + 106))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *(v0 + 16);
}

uint64_t Update.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 106) = 0;
  return result;
}

uint64_t sub_1DB2954D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1937012071 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB2BB924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB295558(uint64_t a1)
{
  v2 = sub_1DB2A0638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB295594(uint64_t a1)
{
  v2 = sub_1DB2A0638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Update.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292B8, &qword_1DB2CEF68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = v1[5];
  v25 = v1[4];
  v26[0] = v8;
  *(v26 + 11) = *(v1 + 91);
  v9 = v1[1];
  v21 = *v1;
  v22 = v9;
  v10 = v1[3];
  v23 = v1[2];
  v24 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB1446A4(&v21, &v15, &qword_1ECC28398, &qword_1DB2CEF70);
  sub_1DB2A0638();
  sub_1DB2BBA94();
  v19 = v25;
  v20[0] = v26[0];
  *(v20 + 11) = *(v26 + 11);
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28398, &qword_1DB2CEF70);
  sub_1DB1688F0(&qword_1ECC292C8, &qword_1ECC28398, &qword_1DB2CEF70);
  sub_1DB2BB8A4();
  v13[4] = v19;
  v14[0] = v20[0];
  *(v14 + 11) = *(v20 + 11);
  v13[0] = v15;
  v13[1] = v16;
  v13[2] = v17;
  v13[3] = v18;
  sub_1DB1445E0(v13, &qword_1ECC28398, &qword_1DB2CEF70);
  return (*(v4 + 8))(v7, v3);
}

uint64_t Update.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292D0, &qword_1DB2CEF78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A0638();
  sub_1DB2BBA84();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28398, &qword_1DB2CEF70);
    sub_1DB1688F0(&qword_1ECC292D8, &qword_1ECC28398, &qword_1DB2CEF70);
    sub_1DB2BB7B4();
    (*(v6 + 8))(v9, v5);
    v11 = v16[0];
    a2[4] = v15[4];
    a2[5] = v11;
    *(a2 + 91) = *(v16 + 11);
    v12 = v15[1];
    *a2 = v15[0];
    a2[1] = v12;
    v13 = v15[3];
    a2[2] = v15[2];
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB2959BC()
{
  if (*(v0 + 106))
  {
    v7 = *(v0 + 3);
    v8 = *(v0 + 4);
    *v9 = *(v0 + 5);
    *&v9[10] = *(v0 + 90);
    v5 = *(v0 + 1);
    v6 = *(v0 + 2);
    v3 = *v0;
    v4 = v0[1];
    return sub_1DB1F43B8();
  }

  else
  {
    v2 = *v0;

    return v2;
  }
}

uint64_t sub_1DB295A2C()
{
  if (*(v0 + 106))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = *(v0 + 16);
}

uint64_t sub_1DB295A60@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 106) = 0;
  return result;
}

uint64_t sub_1DB295A7C()
{
  v6 = v0[4];
  *v7 = v0[5];
  *&v7[11] = *(v0 + 91);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_1DB1F5978();
}

uint64_t Delete.template.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Delete.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1DB295B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E696B636162 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB2BB924();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB295BDC(uint64_t a1)
{
  v2 = sub_1DB2A068C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB295C18(uint64_t a1)
{
  v2 = sub_1DB2A068C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Delete.encode(to:)(void *a1)
{
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292E0, &qword_1DB2CEF80);
  v3 = *(v13[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v13[0]);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A068C();

  sub_1DB2BBA94();
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  sub_1DB1688F0(&qword_1ECC27F40, &qword_1ECC26D98, &unk_1DB2BCF00);
  v11 = v13[0];
  sub_1DB2BB8A4();

  return (*(v3 + 8))(v6, v11);
}

uint64_t Delete.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC292F0, &qword_1DB2CEF88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A068C();
  sub_1DB2BBA84();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    sub_1DB1688F0(&qword_1EE13EF40, &qword_1ECC26D98, &unk_1DB2BCF00);
    sub_1DB2BB7B4();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13[1];
    *(a2 + 8) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB295FD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

OnDeviceStorageCore::Row_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RowIterator.failableNext()()
{
  v2 = v1;
  v3 = v0;
  v4 = *v1;
  v5 = v2[1];
  v6 = Statement.step()();
  if (!v9)
  {
    if (v6)
    {
      Statement.row.getter(v12);
      sub_1DB255C80(v12[0], v12[1]);
      v11 = v10;

      *v3 = v5;
      v3[1] = v11;
    }

    else
    {
      *v3 = 0;
      v3[1] = 0;
    }
  }

  result.value.values._rawValue = v7;
  result.value.columns._rawValue = v6;
  result.is_nil = v8;
  return result;
}

unint64_t sub_1DB2960C0@<X0>(void *a1@<X8>)
{
  v5 = *v1;
  result = RowIterator.failableNext()();
  if (v4)
  {
    sub_1DB15B294();
    result = MEMORY[0x1E1284A10](v4);
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_1DB29611C(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  v128 = swift_allocObject();
  v129 = v4;
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  v120 = (v4 + 16);
  *(v128 + 16) = 0;
  v5 = a1[3];
  v6 = a1[4];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 16))(v166, v5, v6);
  v7 = v166[1];

  sub_1DB17181C(v166);
  v8 = *(v7 + 16);
  v119 = (v128 + 16);
  swift_beginAccess();
  v121 = v8;
  if (!v8)
  {
    goto LABEL_90;
  }

  v9 = 0;
  v123 = v7 + 32;
  v10 = MEMORY[0x1E69E7CC0];
  v122 = v7;
  while (2)
  {
    if (v9 >= *(v7 + 16))
    {
      goto LABEL_99;
    }

    v125 = v9;
    sub_1DB164980(v123 + 40 * v9, v163);
    v11 = v164;
    v12 = v165;
    __swift_project_boxed_opaque_existential_1(v163, v164);
    (*(v12 + 24))(v161, v11, v12);
    v13 = v161[0];

    v14 = HIBYTE(*(&v13 + 1)) & 0xFLL;
    if ((*(&v13 + 1) & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

      v16 = v10;
      v32 = *(v10 + 16);
      if (v32)
      {
        goto LABEL_34;
      }

LABEL_25:

      v33 = v10;
      if (*(v10 + 16))
      {
        goto LABEL_40;
      }

      goto LABEL_100;
    }

    v15 = 0;
    v16 = v10;
    v17 = 4 * v14;
    v18 = 15;
    do
    {
      while (1)
      {
        v20 = sub_1DB2BAFD4();
        v11 = v21;
        if (v20 == 46 && v21 == 0xE100000000000000)
        {

          goto LABEL_16;
        }

        v22 = sub_1DB2BB924();

        if ((v22 & 1) == 0)
        {
          break;
        }

LABEL_16:
        if (v18 >> 14 != v15)
        {
          if (v15 < v18 >> 14)
          {
            goto LABEL_102;
          }

          v167 = sub_1DB2BB004();
          v24 = v23;
          v26 = v25;
          v11 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_1DB157568(0, *(v16 + 2) + 1, 1, v16);
          }

          v28 = v16;
          v29 = *(v16 + 2);
          v30 = v28;
          v31 = *(v28 + 3);
          if (v29 >= v31 >> 1)
          {
            v30 = sub_1DB157568((v31 > 1), v29 + 1, 1, v30);
          }

          *(v30 + 2) = v29 + 1;
          v19 = &v30[32 * v29];
          v16 = v30;
          *(v19 + 4) = v167;
          *(v19 + 5) = v24;
          *(v19 + 6) = v26;
          *(v19 + 7) = v11;
        }

        v18 = sub_1DB2BAEA4();
        v15 = v18 >> 14;
        if (v18 >> 14 == v17)
        {
          goto LABEL_22;
        }
      }

      v15 = sub_1DB2BAEA4() >> 14;
    }

    while (v15 != v17);
    v15 = v18 >> 14;
LABEL_22:
    if (v15 == v17)
    {

      goto LABEL_33;
    }

    if (v17 < v15)
    {
      goto LABEL_103;
    }

    v11 = sub_1DB2BB004();
    v35 = v34;
    v37 = v36;
    v39 = v38;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1DB157568(0, *(v16 + 2) + 1, 1, v16);
    }

    v41 = *(v16 + 2);
    v40 = *(v16 + 3);
    if (v41 >= v40 >> 1)
    {
      v16 = sub_1DB157568((v40 > 1), v41 + 1, 1, v16);
    }

    *(v16 + 2) = v41 + 1;
    v42 = &v16[32 * v41];
    *(v42 + 4) = v11;
    *(v42 + 5) = v35;
    *(v42 + 6) = v37;
    *(v42 + 7) = v39;
LABEL_33:
    v10 = MEMORY[0x1E69E7CC0];
    v32 = *(v16 + 2);
    if (!v32)
    {
      goto LABEL_25;
    }

LABEL_34:
    v130 = v2;
    *&v161[0] = v10;
    sub_1DB138470(0, v32, 0);
    v43 = 0;
    v33 = *&v161[0];
    v44 = (v16 + 56);
    do
    {
      if (v43 >= *(v16 + 2))
      {
        __break(1u);
LABEL_96:

        __swift_destroy_boxed_opaque_existential_1(&v146);
        goto LABEL_93;
      }

      v45 = v16;
      v47 = *(v44 - 3);
      v46 = *(v44 - 2);
      v48 = v33;
      v49 = *(v44 - 1);
      v50 = *v44;

      v51 = v49;
      v33 = v48;
      v11 = MEMORY[0x1E12833E0](v47, v46, v51, v50);
      v53 = v52;

      *&v161[0] = v33;
      v55 = *(v33 + 2);
      v54 = *(v33 + 3);
      if (v55 >= v54 >> 1)
      {
        sub_1DB138470((v54 > 1), v55 + 1, 1);
        v33 = *&v161[0];
      }

      ++v43;
      *(v33 + 2) = v55 + 1;
      v56 = &v33[16 * v55];
      *(v56 + 4) = v11;
      *(v56 + 5) = v53;
      v44 += 4;
      v16 = v45;
    }

    while (v32 != v43);

    v2 = v130;
    v10 = MEMORY[0x1E69E7CC0];
    if (!*(v33 + 2))
    {
      goto LABEL_100;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1DB235700(v33);
      v57 = *(v33 + 2);
      if (v57)
      {
        goto LABEL_42;
      }

      goto LABEL_101;
    }

    v57 = *(v33 + 2);
    if (!v57)
    {
      goto LABEL_101;
    }

LABEL_42:
    v58 = v57 - 1;
    v59 = &v33[16 * v58];
    v61 = *(v59 + 4);
    v60 = *(v59 + 5);
    *(v33 + 2) = v58;
    *&v161[0] = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
    v62 = sub_1DB2BAD24();
    v167 = v63;

    if (v61 == 42 && v60 == 0xE100000000000000)
    {

      goto LABEL_46;
    }

    v64 = sub_1DB2BB924();

    if ((v64 & 1) == 0)
    {

      v97 = v164;
      v98 = v165;
      __swift_project_boxed_opaque_existential_1(v163, v164);
      (*(v98 + 24))(v161, v97, v98);
      v99 = v161[0];

      v100 = *v119;
      swift_beginAccess();
      v101 = *v120;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v132 = *v120;
      v103 = v132;
      v104 = sub_1DB141B30(v99, *(&v99 + 1));
      v106 = *(v103 + 16);
      v107 = (v105 & 1) == 0;
      v108 = __OFADD__(v106, v107);
      v109 = v106 + v107;
      if (!v108)
      {
        v110 = v105;
        if (*(v103 + 24) < v109)
        {
          sub_1DB29D6F0(v109, isUniquelyReferenced_nonNull_native);
          v104 = sub_1DB141B30(v99, *(&v99 + 1));
          if ((v110 & 1) == (v111 & 1))
          {
            v7 = v122;
            if ((v110 & 1) == 0)
            {
              goto LABEL_74;
            }

LABEL_81:
            v115 = v104;

            v112 = v132;
            *(*(v132 + 56) + 8 * v115) = v100;
LABEL_82:
            *v120 = v112;
            swift_endAccess();
            if (!__OFADD__(v100, 1))
            {
              *v119 = v100 + 1;
              __swift_destroy_boxed_opaque_existential_1(v163);
              goto LABEL_84;
            }

LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
          }

          result = sub_1DB2BB984();
          __break(1u);
          return result;
        }

        v7 = v122;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v105)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v116 = v104;
          sub_1DB29E9DC();
          v7 = v122;
          v104 = v116;
          if (v110)
          {
            goto LABEL_81;
          }
        }

LABEL_74:
        v112 = v132;
        *(v132 + 8 * (v104 >> 6) + 64) |= 1 << v104;
        *(v112[6] + 16 * v104) = v99;
        *(v112[7] + 8 * v104) = v100;
        v113 = v112[2];
        v108 = __OFADD__(v113, 1);
        v114 = v113 + 1;
        if (!v108)
        {
          v112[2] = v114;
          goto LABEL_82;
        }

        goto LABEL_106;
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

LABEL_46:
    sub_1DB164980(v127, v158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1DB2BCC40;
    *(v65 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    *(v65 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    *(v65 + 32) = 42;
    *(v65 + 40) = 0xE100000000000000;
    *(v65 + 48) = v10;
    v66 = v159;
    v67 = v160;
    __swift_mutable_project_boxed_opaque_existential_1(v158, v159);
    v68 = (*(v67 + 32))(&v146, v66, v67);
    v70 = *(v69 + 8);
    *v69 = 0;
    *(v69 + 8) = v65;

    v68(&v146, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26DC0, &unk_1DB2BFDA0);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1DB2BCC40;
    v124 = v71;
    sub_1DB164980(v158, v71 + 32);
    v11 = v127[3];
    v72 = v127[4];
    __swift_project_boxed_opaque_existential_1(v127, v11);
    (*(v72 + 16))(&v146, v11, v72);
    v161[8] = v154;
    v161[9] = v155;
    v161[10] = v156;
    v162 = v157;
    v161[4] = v150;
    v161[5] = v151;
    v161[6] = v152;
    v161[7] = v153;
    v161[0] = v146;
    v161[1] = v147;
    v161[2] = v148;
    v161[3] = v149;
    v73 = v150;

    sub_1DB17181C(v161);
    v74 = *(v73 + 16);
    if (v74)
    {
      v131 = v2;
      v145 = v10;
      sub_1DB1385C0(0, v74, 0);
      v10 = v145;
      v11 = v73 + 32;
      do
      {
        sub_1DB175548(v11, &v132);
        sub_1DB164980(&v132 + 8, &v144);
        sub_1DB1755A4(&v132);
        v145 = v10;
        v76 = *(v10 + 16);
        v75 = *(v10 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_1DB1385C0((v75 > 1), v76 + 1, 1);
          v10 = v145;
        }

        *(v10 + 16) = v76 + 1;
        sub_1DB1355D0(&v144, v10 + 40 * v76 + 32);
        v11 += 88;
        --v74;
      }

      while (v74);

      v2 = v131;
    }

    else
    {
    }

    *&v146 = v124;
    sub_1DB141618(v10);
    v77 = v146;
    v78 = v167;
    v79 = HIBYTE(v167) & 0xF;
    if ((v167 & 0x2000000000000000) == 0)
    {
      v79 = v62 & 0xFFFFFFFFFFFFLL;
    }

    if (!v79)
    {

      v91 = *(v77 + 16);
      if (!v91)
      {
LABEL_69:

        goto LABEL_78;
      }

      v92 = 0;
      v93 = v77 + 32;
      while (v92 < *(v77 + 16))
      {
        sub_1DB164980(v93, &v144);
        v94 = v127[3];
        v95 = v127[4];
        __swift_project_boxed_opaque_existential_1(v127, v94);
        (*(v95 + 16))(&v132, v94, v95);
        v154 = v140;
        v155 = v141;
        v156 = v142;
        v157 = v143;
        v150 = v136;
        v151 = v137;
        v152 = v138;
        v153 = v139;
        v146 = v132;
        v147 = v133;
        v148 = v134;
        v149 = v135;
        v11 = v136;

        sub_1DB17181C(&v146);
        v96 = *(v11 + 16);

        sub_1DB297AB4(&v144, v126, v96 != 0, v129, v128);
        if (v2)
        {
          __swift_destroy_boxed_opaque_existential_1(&v144);

          goto LABEL_93;
        }

        ++v92;
        __swift_destroy_boxed_opaque_existential_1(&v144);
        v93 += 40;
        if (v91 == v92)
        {
          goto LABEL_69;
        }
      }

LABEL_98:
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
      goto LABEL_104;
    }

    v80 = *(v146 + 16);
    if (v80)
    {
      v81 = 0;
      v82 = v146 + 32;
      while (1)
      {
        if (v81 >= *(v77 + 16))
        {
          __break(1u);
          goto LABEL_98;
        }

        sub_1DB164980(v82, &v146);
        v83 = *(&v147 + 1);
        v84 = v148;
        __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
        sub_1DB288D3C(0, v83, v84, &v132);
        v85 = *(&v133 + 1);
        v86 = v134;
        __swift_project_boxed_opaque_existential_1(&v132, *(&v133 + 1));
        v87 = *(v86 + 24);
        v88 = v86;
        v78 = v167;
        v87(&v144, v85, v88);
        v11 = *(&v144 + 1);
        v89 = v144;

        if (__PAIR128__(v11, v89) == __PAIR128__(v78, v62))
        {
          break;
        }

        v90 = sub_1DB2BB924();

        __swift_destroy_boxed_opaque_existential_1(&v132);
        if (v90)
        {
          goto LABEL_76;
        }

        ++v81;
        __swift_destroy_boxed_opaque_existential_1(&v146);
        v82 += 40;
        if (v80 == v81)
        {
          goto LABEL_91;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v132);
LABEL_76:

      sub_1DB297AB4(&v146, v126, 1, v129, v128);
      if (v2)
      {
        goto LABEL_96;
      }

      __swift_destroy_boxed_opaque_existential_1(&v146);
LABEL_78:
      __swift_destroy_boxed_opaque_existential_1(v158);
      __swift_destroy_boxed_opaque_existential_1(v163);
      v7 = v122;
LABEL_84:
      v9 = v125 + 1;
      v10 = MEMORY[0x1E69E7CC0];
      if (v125 + 1 == v121)
      {
LABEL_90:

        swift_beginAccess();
        v11 = *(v129 + 16);

        return v11;
      }

      continue;
    }

    break;
  }

LABEL_91:

  sub_1DB1F88FC();
  swift_allocError();
  *v117 = v62;
  *(v117 + 8) = v78;
  *(v117 + 16) = 0;
  *(v117 + 24) = 0;
  swift_willThrow();
LABEL_93:
  __swift_destroy_boxed_opaque_existential_1(v158);
  __swift_destroy_boxed_opaque_existential_1(v163);

  return v11;
}

uint64_t sub_1DB296F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28FF0, &qword_1DB2CE1F0);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DB26F4BC;
  *(v7 + 24) = v6;
  *a3 = v7;
}

uint64_t sub_1DB296FF8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = Statement.step()();
  if (v5)
  {
    sub_1DB15B294();
    result = MEMORY[0x1E1284A10](v5);
LABEL_7:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  Statement.row.getter(v8);
  sub_1DB255C80(v8[0], v8[1]);
  v7 = v6;

  *a2 = a1;
  a2[1] = v7;
}

uint64_t Connection.prepareRowIterator(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(*(v5 + 8) + 24))(v11, v6);
  v7 = v11[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v8);
  if (v2)
  {
  }

  else
  {
    v10 = sub_1DB255E8C(v7);

    result = sub_1DB29611C(a1);
    *a2 = v10;
    a2[1] = result;
  }

  return result;
}

void sub_1DB2972D4(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v5);
  if (!v2)
  {
    v6 = sub_1DB255E8C(a1);

    sub_1DB254F54();
    *a2 = v6;
    a2[1] = v7;
  }
}

uint64_t sub_1DB297384@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  v120 = *result;
  v4 = *(v3 + 16);
  if (v4)
  {
    v54 = a2;
    result = v3 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v56 = v5;
      v57 = v4;
      v55 = result;
      sub_1DB175700(result, v116);
      sub_1DB164980(&v119, v91);
      __swift_project_boxed_opaque_existential_1(v91, v92);
      DynamicType = swift_getDynamicType();
      v7 = v93;
      v8 = v92;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      (*(v7 + 16))(&v73, v8, v7);
      v94[8] = v81;
      v94[9] = v82;
      v94[10] = v83;
      v95 = v84;
      v94[4] = v77;
      v94[5] = v78;
      v94[6] = v79;
      v94[7] = v80;
      v94[0] = v73;
      v94[1] = v74;
      v94[2] = v75;
      v94[3] = v76;
      v9 = v74;

      sub_1DB17181C(v94);

      v10 = v92;
      v11 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      (*(v11 + 16))(&v58, v10, v11);
      v96[8] = v66;
      v96[9] = v67;
      v96[10] = v68;
      v97 = v69;
      v96[4] = v62;
      v96[5] = v63;
      v96[6] = v64;
      v96[7] = v65;
      v96[0] = v58;
      v96[1] = v59;
      v96[2] = v60;
      v96[3] = v61;
      v12 = v61;

      sub_1DB17181C(v96);

      v13 = *(v7 + 40);
      v89 = DynamicType;
      v90 = v7;
      __swift_allocate_boxed_opaque_existential_0(v88);
      v13(v9, *(&v9 + 1), v12, *(&v12 + 1), DynamicType, v7);
      v14 = v92;
      v15 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      (*(v15 + 16))(&v73, v14, v15);
      v98[8] = v81;
      v98[9] = v82;
      v98[10] = v83;
      v99 = v84;
      v98[4] = v77;
      v98[5] = v78;
      v98[6] = v79;
      v98[7] = v80;
      v98[0] = v73;
      v98[1] = v74;
      v98[2] = v75;
      v98[3] = v76;
      LOBYTE(v13) = v73;
      v16 = *(&v73 + 1);

      sub_1DB17181C(v98);
      v17 = v89;
      v18 = v90;
      __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
      v19 = (*(v18 + 32))(&v58, v17, v18);
      v21 = *(v20 + 8);
      *v20 = v13;
      *(v20 + 8) = v16;

      v19(&v58, 0);
      v22 = v92;
      v23 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      (*(v23 + 16))(&v73, v22, v23);
      v100[8] = v81;
      v100[9] = v82;
      v100[10] = v83;
      v101 = v84;
      v100[4] = v77;
      v100[5] = v78;
      v100[6] = v79;
      v100[7] = v80;
      v100[0] = v73;
      v100[1] = v74;
      v100[2] = v75;
      v100[3] = v76;
      v24 = v77;

      sub_1DB17181C(v100);
      v25 = v89;
      v26 = v90;
      __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
      v27 = (*(v26 + 32))(&v58, v25, v26);
      v29 = *(v28 + 64);
      *(v28 + 64) = v24;

      v27(&v58, 0);
      v30 = v92;
      v31 = v93;
      __swift_project_boxed_opaque_existential_1(v91, v92);
      (*(v31 + 16))(&v73, v30, v31);
      v102[8] = v81;
      v102[9] = v82;
      v102[10] = v83;
      v103 = v84;
      v102[4] = v77;
      v102[5] = v78;
      v102[6] = v79;
      v102[7] = v80;
      v102[0] = v73;
      v102[1] = v74;
      v102[2] = v75;
      v102[3] = v76;
      LOBYTE(v27) = BYTE8(v83);
      v32 = v84;

      sub_1DB17181C(v102);
      LOBYTE(v104) = v27;
      *(&v104 + 1) = v32;
      sub_1DB297384(&v58, &v104);

      LOBYTE(v13) = v58;
      v33 = *(&v58 + 1);
      v34 = v89;
      v35 = v90;
      __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
      v36 = (*(v35 + 32))(&v73, v34, v35);
      v38 = *(v37 + 176);
      *(v37 + 168) = v13;
      v5 = v56;
      *(v37 + 176) = v33;

      v36(&v73, 0);
      v112 = v116[8];
      v113 = v116[9];
      v114 = v116[10];
      v115 = v117;
      v108 = v116[4];
      v109 = v116[5];
      v110 = v116[6];
      v111 = v116[7];
      v104 = v116[0];
      v105 = v116[1];
      v106 = v116[2];
      v107 = v116[3];
      sub_1DB164980(v88, &v87);
      v81 = v112;
      v82 = v113;
      v83 = v114;
      v84 = v115;
      v77 = v108;
      v78 = v109;
      v79 = v110;
      v80 = v111;
      v73 = v104;
      v74 = v105;
      v75 = v106;
      v76 = v107;
      v86 = 2;
      v39 = v118;
      sub_1DB175954(&v104, &v58);

      sub_1DB17575C(v116);
      v85 = v39;
      sub_1DB175700(&v73, &v58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1DB158778(0, *(v56 + 2) + 1, 1, v56);
      }

      v41 = *(v5 + 2);
      v40 = *(v5 + 3);
      if (v41 >= v40 >> 1)
      {
        v5 = sub_1DB158778((v40 > 1), v41 + 1, 1, v5);
      }

      *(v5 + 2) = v41 + 1;
      v42 = &v5[240 * v41];
      v43 = v58;
      v44 = v60;
      *(v42 + 3) = v59;
      *(v42 + 4) = v44;
      *(v42 + 2) = v43;
      v45 = v61;
      v46 = v62;
      v47 = v64;
      *(v42 + 7) = v63;
      *(v42 + 8) = v47;
      *(v42 + 5) = v45;
      *(v42 + 6) = v46;
      v48 = v65;
      v49 = v66;
      v50 = v68;
      *(v42 + 11) = v67;
      *(v42 + 12) = v50;
      *(v42 + 9) = v48;
      *(v42 + 10) = v49;
      v51 = v69;
      v52 = v70;
      v53 = v72;
      *(v42 + 15) = v71;
      *(v42 + 16) = v53;
      *(v42 + 13) = v51;
      *(v42 + 14) = v52;
      sub_1DB17575C(&v73);
      __swift_destroy_boxed_opaque_existential_1(v88);
      __swift_destroy_boxed_opaque_existential_1(v91);
      result = v55 + 240;
      v4 = v57 - 1;
    }

    while (v57 != 1);
    v2 = v120;
    a2 = v54;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1DB297AB4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v89 = a5;
  v90 = a4;
  v83 = a3;
  v87 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 16))(v97, v6, v7);
  v84 = v97[3];
  v85 = v97[2];

  sub_1DB17181C(v97);

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 16))(v98, v8, v9);
  v10 = v98[6];
  v11 = v98[7];

  sub_1DB17181C(v98);

  v12 = *(v7 + 40);
  v95 = DynamicType;
  v96 = v7;
  __swift_allocate_boxed_opaque_existential_0(v94);
  v12(v85, v84, v10, v11, DynamicType, v7);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 16))(v99, v13, v14);
  v15 = v99[0];
  v16 = v99[1];

  sub_1DB17181C(v99);
  v17 = v95;
  v18 = v96;
  __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  v19 = (*(v18 + 32))(v93, v17, v18);
  v21 = *(v20 + 8);
  *v20 = v15;
  *(v20 + 8) = v16;

  v19(v93, 0);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  (*(v23 + 16))(v100, v22, v23);
  v24 = v101;
  v25 = v102;

  sub_1DB17181C(v100);
  LOBYTE(v93[0]) = v24;
  v93[1] = v25;
  sub_1DB297384(v93, v91);

  LOBYTE(v12) = v91[0];
  v26 = v92;
  v27 = v95;
  v28 = v96;
  __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  v29 = (*(v28 + 32))(v93, v27, v28);
  v31 = *(v30 + 176);
  *(v30 + 168) = v12;
  *(v30 + 176) = v26;

  v29(v93, 0);
  v33 = v95;
  v32 = v96;
  __swift_project_boxed_opaque_existential_1(v94, v95);
  (*(*(v32 + 8) + 24))(v93, v33);
  v34 = v93[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v35);
  if (v88)
  {

    return __swift_destroy_boxed_opaque_existential_1(v94);
  }

  DynamicType = 0;
  v37 = a1;
  sub_1DB255E8C(v34);

  Statement.columnNames.getter();
  v39 = v38;

  v40 = *(v39 + 16);
  if (v40)
  {
    v93[0] = MEMORY[0x1E69E7CC0];
    sub_1DB138470(0, v40, 0);
    v41 = v93[0];
    v88 = v39;
    v42 = (v39 + 40);
    v43 = v37;
    do
    {
      v45 = *(v42 - 1);
      v44 = *v42;

      v46 = sub_1DB2B995C(34, 0xE100000000000000);
      v48 = v47;

      v93[0] = v41;
      v50 = *(v41 + 16);
      v49 = *(v41 + 24);
      v51 = v41;
      if (v50 >= v49 >> 1)
      {
        sub_1DB138470((v49 > 1), v50 + 1, 1);
        v51 = v93[0];
      }

      *(v51 + 16) = v50 + 1;
      v52 = v51 + 16 * v50;
      *(v52 + 32) = v46;
      *(v52 + 40) = v48;
      v42 += 2;
      --v40;
      v41 = v51;
    }

    while (v40);

    if ((v83 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {

    v41 = MEMORY[0x1E69E7CC0];
    v43 = v37;
    if ((v83 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  MEMORY[0x1EEE9AC00](v53);
  v82[2] = v43;
  v54 = DynamicType;
  v55 = sub_1DB2037FC(sub_1DB2A2F2C, v82, v41);
  DynamicType = v54;

  v41 = v55;
LABEL_10:
  v56 = v90;
  v88 = *(v41 + 16);
  if (!v88)
  {
LABEL_25:

    return __swift_destroy_boxed_opaque_existential_1(v94);
  }

  v57 = v89;
  swift_beginAccess();
  swift_beginAccess();
  v58 = 0;
  v59 = (v41 + 40);
  v87 = v41;
  while (v58 < *(v41 + 16))
  {
    v61 = *(v59 - 1);
    v60 = *v59;
    v62 = *(v57 + 16);
    swift_beginAccess();

    v63 = *(v56 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(v56 + 16);
    v65 = v103;
    *(v56 + 16) = 0x8000000000000000;
    v66 = sub_1DB141B30(v61, v60);
    v68 = v65[2];
    v69 = (v67 & 1) == 0;
    v70 = __OFADD__(v68, v69);
    v71 = v68 + v69;
    if (v70)
    {
      goto LABEL_29;
    }

    v72 = v67;
    if (v65[3] < v71)
    {
      sub_1DB29D6F0(v71, isUniquelyReferenced_nonNull_native);
      v66 = sub_1DB141B30(v61, v60);
      if ((v72 & 1) != (v73 & 1))
      {
        goto LABEL_32;
      }

LABEL_18:
      if (v72)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v76 = v66;
    sub_1DB29E9DC();
    v66 = v76;
    if (v72)
    {
LABEL_19:
      v74 = v66;

      v75 = v103;
      *(v103[7] + 8 * v74) = v62;
      goto LABEL_23;
    }

LABEL_21:
    v75 = v103;
    v103[(v66 >> 6) + 8] |= 1 << v66;
    v77 = (v75[6] + 16 * v66);
    *v77 = v61;
    v77[1] = v60;
    *(v75[7] + 8 * v66) = v62;
    v78 = v75[2];
    v70 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (v70)
    {
      goto LABEL_31;
    }

    v75[2] = v79;
LABEL_23:
    v56 = v90;
    *(v90 + 16) = v75;
    swift_endAccess();
    v57 = v89;
    v80 = *(v89 + 16);
    v70 = __OFADD__(v80, 1);
    v81 = v80 + 1;
    v41 = v87;
    if (v70)
    {
      goto LABEL_30;
    }

    ++v58;
    *(v89 + 16) = v81;
    v59 += 2;
    if (v88 == v58)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1DB2BB984();
  __break(1u);
  return result;
}

uint64_t sub_1DB2981E4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  sub_1DB288D3C(0, v6, v7, v15);
  v8 = v16;
  v9 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v9 + 24))(v14, v8, v9);
  v10 = v14[0];
  v11 = v14[1];

  v18 = v10;
  v19 = v11;
  __swift_destroy_boxed_opaque_existential_1(v15);
  MEMORY[0x1E1283490](46, 0xE100000000000000);
  result = MEMORY[0x1E1283490](v4, v5);
  v13 = v19;
  *a3 = v18;
  a3[1] = v13;
  return result;
}

uint64_t Connection.scalar<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 128);
  v9 = *(a1 + 160);
  v20[9] = *(a1 + 144);
  v20[10] = v9;
  v10 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v10;
  v11 = *(a1 + 112);
  v20[6] = *(a1 + 96);
  v21 = *(a1 + 176);
  v20[7] = v11;
  v20[8] = v8;
  v12 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v12;
  v13 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v13;
  v14 = type metadata accessor for ScalarQuery();
  WitnessTable = swift_getWitnessTable();
  QueryType.expression.getter(v14, WitnessTable, v19);
  v16 = v19[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v17);
  if (v4)
  {
  }

  else
  {
    sub_1DB255E8C(v16);

    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], v20);

    sub_1DB2BA144(v20, a2, a3, a4);
    return sub_1DB1445E0(v20, &qword_1ECC26E28, &unk_1DB2C2D70);
  }
}

{
  v36 = a4;
  v35 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_1DB2BB364();
  v34 = *(v33 - 8);
  v8 = *(v34 + 64);
  v9 = MEMORY[0x1EEE9AC00](v33);
  v11 = &v32 - v10;
  v41 = *(AssociatedTypeWitness - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v32 - v13;
  v15 = *(a1 + 128);
  v16 = *(a1 + 160);
  v39[9] = *(a1 + 144);
  v39[10] = v16;
  v17 = *(a1 + 80);
  v39[4] = *(a1 + 64);
  v39[5] = v17;
  v18 = *(a1 + 112);
  v39[6] = *(a1 + 96);
  v40 = *(a1 + 176);
  v39[7] = v18;
  v39[8] = v15;
  v19 = *(a1 + 16);
  v39[0] = *a1;
  v39[1] = v19;
  v20 = *(a1 + 48);
  v39[2] = *(a1 + 32);
  v39[3] = v20;
  sub_1DB2BB364();
  v21 = type metadata accessor for ScalarQuery();
  WitnessTable = swift_getWitnessTable();
  QueryType.expression.getter(v21, WitnessTable, v37);
  v23 = v38;
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v24);
  if (v4)
  {
  }

  else
  {
    v32 = a2;
    v26 = v41;
    sub_1DB255E8C(v23);

    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], v39);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    v27 = swift_dynamicCast();
    v28 = *(v26 + 56);
    if (v27)
    {
      v28(v11, 0, 1, AssociatedTypeWitness);
      (*(v26 + 32))(v14, v11, AssociatedTypeWitness);
      v29 = v36;
      (*(v35 + 48))(v14, v32, v35);
      (*(v26 + 8))(v14, AssociatedTypeWitness);
      v30 = swift_getAssociatedTypeWitness();
      v31 = 0;
    }

    else
    {
      v31 = 1;
      v28(v11, 1, 1, AssociatedTypeWitness);
      (*(v34 + 8))(v11, v33);
      v30 = swift_getAssociatedTypeWitness();
      v29 = v36;
    }

    return (*(*(v30 - 8) + 56))(v29, v31, 1);
  }
}

uint64_t Connection.scalar<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = *a1;
  v14 = *(a1 + 1);
  v8 = type metadata accessor for Select();
  WitnessTable = swift_getWitnessTable();
  ExpressionType.expression.getter(v8, WitnessTable, v15);
  v10 = v15[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v11);
  if (v4)
  {
  }

  else
  {
    sub_1DB255E8C(v10);

    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], &v13);

    sub_1DB2BA144(&v13, a2, a3, a4);
    return sub_1DB1445E0(&v13, &qword_1ECC26E28, &unk_1DB2C2D70);
  }
}

{
  v32 = a4;
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = sub_1DB2BB364();
  v30 = *(v37 - 8);
  v8 = *(v30 + 64);
  v9 = MEMORY[0x1EEE9AC00](v37);
  v11 = &v28 - v10;
  v33 = *(AssociatedTypeWitness - 8);
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v28 - v13;
  v34 = *a1;
  v35 = *(a1 + 1);
  sub_1DB2BB364();
  v15 = type metadata accessor for Select();
  WitnessTable = swift_getWitnessTable();
  ExpressionType.expression.getter(v15, WitnessTable, v36);
  v17 = v36[2];
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v18);
  if (v4)
  {
  }

  else
  {
    v28 = v14;
    v29 = a2;
    v20 = v37;
    v21 = v33;
    sub_1DB255E8C(v17);

    Statement.scalar(_:)(MEMORY[0x1E69E7CC0], &v34);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
    v22 = swift_dynamicCast();
    v23 = *(v21 + 56);
    if (v22)
    {
      v23(v11, 0, 1, AssociatedTypeWitness);
      v24 = v28;
      (*(v21 + 32))(v28, v11, AssociatedTypeWitness);
      v25 = v32;
      (*(v31 + 48))(v24, v29, v31);
      (*(v21 + 8))(v24, AssociatedTypeWitness);
      v26 = swift_getAssociatedTypeWitness();
      v27 = 0;
    }

    else
    {
      v27 = 1;
      v23(v11, 1, 1, AssociatedTypeWitness);
      (*(v30 + 8))(v11, v20);
      v26 = swift_getAssociatedTypeWitness();
      v25 = v32;
    }

    return (*(*(v26 - 8) + 56))(v25, v27, 1);
  }
}

uint64_t Connection.pluck(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(v22, v7, v8);
  sub_1DB17181C(v22);
  if (v24)
  {
    v9 = 0;
  }

  else
  {
    v9 = v22[18];
  }

  v10 = v24 | v23;
  v21[3] = v5;
  v21[4] = v6;
  __swift_allocate_boxed_opaque_existential_0(v21);
  (*(*(v5 - 8) + 16))();
  v11 = (*(v6 + 32))(v25, v5, v6);
  *(v12 + 136) = 1;
  *(v12 + 144) = v9;
  *(v12 + 152) = v10 & 1;
  *(v12 + 153) = 0;
  v11(v25, 0);
  (*(*(v6 + 8) + 24))(v25, v5);
  v13 = v25[2];
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_1DB253534(v14);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_1DB255E8C(v13);

    v16 = sub_1DB29611C(v21);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v17 = Statement.step()();
    if (v18)
    {
    }

    else
    {
      if (v17)
      {
        Statement.row.getter(v25);
        sub_1DB255C80(v25[0], v25[1]);
        v20 = v19;
      }

      else
      {

        v16 = 0;
        v20 = 0;
      }

      *a2 = v16;
      a2[1] = v20;
    }
  }

  return result;
}

uint64_t Connection.pluck(_:_:)@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  type metadata accessor for Statement();
  swift_initStackObject();

  result = sub_1DB253534(v5);
  if (!v2)
  {
    sub_1DB255E8C(a1);

    sub_1DB254F54();
    v8 = v7;
    v9 = Statement.step()();
    if (v10)
    {
    }

    else
    {
      if (v9)
      {
        Statement.row.getter(v13);
        sub_1DB255C80(v13[0], v13[1]);
        v12 = v11;
      }

      else
      {

        v8 = 0;
        v12 = 0;
      }

      *a2 = v8;
      a2[1] = v12;
    }
  }

  return result;
}

uint64_t Connection.run(_:)(uint64_t a1)
{
  sub_1DB1446A4(a1, &v13, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v22)
  {
    v11[6] = v19;
    v11[7] = v20;
    v12 = v21;
    v11[2] = v15;
    v11[3] = v16;
    v11[4] = v17;
    v11[5] = v18;
    v11[0] = v13;
    v11[1] = v14;
    sub_1DB1F4E58();
    sub_1DB1F7130(v11);
  }

  else
  {
  }

  sub_1DB1446A4(a1, &v13, &qword_1ECC27CC8, &unk_1DB2C3860);
  if (v22)
  {
    v4 = sub_1DB1445E0(&v13, &qword_1ECC27CC8, &unk_1DB2C3860);
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = v14;
  }

  MEMORY[0x1EEE9AC00](v4);
  sub_1DB143044();
  if (qword_1EE13F098 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((BYTE8(v13) & 1) == 0 && v13 == v1)
  {
    type metadata accessor for Statement();
    swift_allocObject();

    sub_1DB253534(v6);
    if (!v2)
    {
      sub_1DB255E8C(v5);

      Statement.run(_:)(MEMORY[0x1E69E7CC0]);

      v8 = *(v1 + 16);
      os_unfair_lock_lock((v8 + 24));
      insert_rowid = sqlite3_last_insert_rowid(*(v8 + 16));
      os_unfair_lock_unlock((v8 + 24));

      return insert_rowid;
    }

    goto LABEL_14;
  }

  v7 = *(v1 + 120);
  sub_1DB2BB2C4();
  if (v2)
  {
LABEL_14:
  }

  return *&v11[0];
}

void sub_1DB2995A8(uint64_t a1@<X0>, uint64_t a2@<X3>, sqlite3_int64 *a3@<X8>)
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v7);
  if (!v3)
  {
    sub_1DB255E8C(a2);

    Statement.run(_:)(MEMORY[0x1E69E7CC0]);

    v8 = *(a1 + 16);
    os_unfair_lock_lock((v8 + 24));
    insert_rowid = sqlite3_last_insert_rowid(*(v8 + 16));
    os_unfair_lock_unlock((v8 + 24));
    *a3 = insert_rowid;
  }
}

uint64_t Connection.run(_:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (*(a1 + 106))
  {
    v18 = *(a1 + 7);
    v19 = *(a1 + 9);
    v20 = *(a1 + 11);
    v21 = *(a1 + 52);
    v16 = *(a1 + 3);
    v17 = *(a1 + 5);
    v7 = sub_1DB1F43B8();
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = a1[1];
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1DB143044();
  if (qword_1EE13F098 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((v14 & 1) != 0 || v13 != v1)
  {
    v9 = *(v1 + 120);
    sub_1DB2BB2C4();
    if (!v2)
    {

      return v15;
    }

    goto LABEL_11;
  }

  type metadata accessor for Statement();
  v9 = swift_allocObject();

  sub_1DB253534(v10);
  if (v2)
  {
LABEL_11:

    return v9;
  }

  sub_1DB255E8C(v6);

  Statement.run(_:)(MEMORY[0x1E69E7CC0]);

  v12 = *(v3 + 16);
  os_unfair_lock_lock((v12 + 24));
  v9 = sqlite3_changes(*(v12 + 16));
  os_unfair_lock_unlock((v12 + 24));

  return v9;
}

{
  v3 = v2;
  v4 = v1;
  v5 = *a1;
  v6 = a1[2];
  v13 = a1[1];
  sub_1DB143044();
  v7 = qword_1EE13F098;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_1DB2BB294();
  if ((v15 & 1) != 0 || v14 != v1)
  {
    v10 = *(v1 + 120);
    sub_1DB2BB2C4();
    v8 = v3;

    if (!v3)
    {
      return v16;
    }
  }

  else
  {
    type metadata accessor for Statement();
    v8 = swift_allocObject();

    sub_1DB253534(v9);
    if (!v3)
    {
      sub_1DB255E8C(v6);

      Statement.run(_:)(MEMORY[0x1E69E7CC0]);

      v12 = *(v4 + 16);
      os_unfair_lock_lock((v12 + 24));
      v8 = sqlite3_changes(*(v12 + 16));
      os_unfair_lock_unlock((v12 + 24));
    }
  }

  return v8;
}

void sub_1DB299B48(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_1DB253534(v7);
  if (!v3)
  {
    sub_1DB255E8C(a2);

    Statement.run(_:)(MEMORY[0x1E69E7CC0]);

    v8 = *(a1 + 16);
    os_unfair_lock_lock((v8 + 24));
    v9 = sqlite3_changes(*(v8 + 16));
    os_unfair_lock_unlock((v8 + 24));
    *a3 = v9;
  }
}

uint64_t Row.columnNames.getter()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = sub_1DB2A0124(v1);

  return v3;
}

uint64_t sub_1DB299CB4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v33 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v32 = &v29 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1DB2BB364();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - v16;
  v18 = *(v11 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v22 = &v29 - v21;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v31 = result;
  sub_1DB1446A4(a2 + 40 * a1 + 32, v34, &qword_1ECC26E28, &unk_1DB2C2D70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E28, &unk_1DB2C2D70);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v24(v17, 0, 1, v11);
    (*(v18 + 32))(v22, v17, v11);
    v25 = v35;
    (*(a4 + 48))(v22, a3, a4);
    if (v25)
    {
      return (*(v18 + 8))(v22, v11);
    }

    else
    {
      (*(v18 + 8))(v22, v11);
      v26 = v33;
      if (swift_dynamicCast())
      {
        v27 = v26;
        v28 = 0;
      }

      else
      {
        v27 = v26;
        v28 = 1;
      }

      return (*(*(a3 - 8) + 56))(v27, v28, 1, a3);
    }
  }

  else
  {
    v24(v17, 1, 1, v11);
    (*(v13 + 8))(v17, v31);
    return (*(*(a3 - 8) + 56))(v33, 1, 1, a3);
  }
}

uint64_t sub_1DB29A06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1E1283490](a3, a4);
  v4 = sub_1DB2BAF94();

  return v4 & 1;
}

uint64_t sub_1DB29A0E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = -1 << *(a3 + 32);
  result = sub_1DB2BB464();
  v8 = 1 << *(a3 + 32);
  if (result == v8)
  {
    return 0;
  }

  else
  {
    v10 = a3;
    v9 = result;
    v29 = a3;
    while ((v9 & 0x8000000000000000) == 0 && v9 < v8)
    {
      v12 = v9 >> 6;
      if ((*(v5 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      v13 = v5;
      v14 = *(v10 + 36);
      v15 = (*(v10 + 48) + 16 * v9);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v10 + 56) + 8 * v9);
      v28[0] = v16;
      v28[1] = v17;
      v28[2] = v18;

      v19 = a1(v28);

      if (v3 || (v19 & 1) != 0)
      {
        return v9;
      }

      v10 = v29;
      v11 = 1 << *(v29 + 32);
      if (v9 >= v11)
      {
        goto LABEL_26;
      }

      v20 = *(v13 + 8 * v12);
      if ((v20 & (1 << v9)) == 0)
      {
        goto LABEL_27;
      }

      if (v14 != *(v29 + 36))
      {
        goto LABEL_28;
      }

      v5 = v13;
      v21 = v20 & (-2 << (v9 & 0x3F));
      if (v21)
      {
        v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v12 << 6;
        v23 = v12 + 1;
        v24 = (a3 + 72 + 8 * v12);
        while (v23 < (v11 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1DB25CF78(v9, v14, 0);
            v10 = v29;
            v11 = __clz(__rbit64(v25)) + v22;
            goto LABEL_5;
          }
        }

        result = sub_1DB25CF78(v9, v14, 0);
        v10 = v29;
      }

LABEL_5:
      v8 = 1 << *(v10 + 32);
      v9 = v11;
      v3 = 0;
      if (v11 == v8)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB29A320(uint64_t (*a1)(void *))
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v28 = *v1;
  result = sub_1DB27C01C(*v1, v3, v4);
  if (v4 & 1) != 0 || (v7)
  {
LABEL_36:
    __break(1u);
    return result;
  }

  if (v3 != v6)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = v28;
  v25 = v5;
  v26 = v6;
  while (v9 != v5)
  {
    if (v9 < v28)
    {
      goto LABEL_28;
    }

    if (v9 >= v5)
    {
      goto LABEL_29;
    }

    if (v9 < 0)
    {
      goto LABEL_30;
    }

    v11 = *(v1 + 48);
    if (v9 >= 1 << *(v11 + 32))
    {
      goto LABEL_30;
    }

    v30 = v3;
    v12 = v9 >> 6;
    if ((*(v11 + 64 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_31;
    }

    if (*(v11 + 36) != v6)
    {
      goto LABEL_32;
    }

    v13 = (*(v11 + 48) + 16 * v9);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v11 + 56) + 8 * v9);
    v29[0] = v14;
    v29[1] = v15;
    v29[2] = v16;

    v17 = a1(v29);

    if (v2 || (v17 & 1) != 0)
    {
      return v9;
    }

    v10 = 1 << *(v11 + 32);
    if (v9 >= v10)
    {
      goto LABEL_33;
    }

    v18 = *(v11 + 64 + 8 * v12);
    if ((v18 & (1 << v9)) == 0)
    {
      goto LABEL_34;
    }

    LODWORD(v6) = v26;
    if (*(v11 + 36) != v26)
    {
      goto LABEL_35;
    }

    v19 = v18 & (-2 << (v9 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (v11 + 8 * v12 + 72);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1DB25CF78(v9, v30, 0);
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_6;
        }
      }

      result = sub_1DB25CF78(v9, v30, 0);
    }

LABEL_6:
    v3 = *(v11 + 36);
    v9 = v10;
    v5 = v25;
    if (v3 != v26)
    {
      goto LABEL_27;
    }
  }

  return 0;
}

void *sub_1DB29A590(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 8 * a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t Row.json.getter()
{
  v2 = *v0;
  v1 = v0[1];

  v3 = sub_1DB2A0E64(v2, v2, v1);

  if (*(v3 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29300, &qword_1DB2CEFA0);
    v4 = sub_1DB2BB6C4();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v6 = v4;
  sub_1DB29FD44(v3, 1, &v6);
  return v6;
}

uint64_t *sub_1DB29A6F0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = result[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= *(a2 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = *result;
  v5 = result[1];
  sub_1DB1446A4(a2 + 40 * v4 + 32, &v22, &qword_1ECC26E28, &unk_1DB2C2D70);
  if (v24)
  {
    sub_1DB1355D0(&v22, v28);
    sub_1DB164980(v28, &v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
    if (swift_dynamicCast())
    {
      v7 = v26;
      *&v22 = v6;
      *(&v22 + 1) = v5;
      v26 = 34;
      v27 = 0xE100000000000000;
      sub_1DB143508();
      v8 = MEMORY[0x1E69E6158];
      v9 = sub_1DB2BB3D4();
      v11 = v10;
      *&v22 = v7;
      v12 = Blob.toHex()();
      countAndFlagsBits = v12._countAndFlagsBits;

      *&v14 = v12._object;
      v21 = v14;
    }

    else
    {
      v26 = v6;
      v27 = v5;
      sub_1DB143508();
      v9 = sub_1DB2BB3D4();
      v11 = v17;
      v18 = v29;
      v19 = __swift_project_boxed_opaque_existential_1(v28, v29);
      v25 = v18;
      v20 = __swift_allocate_boxed_opaque_existential_0(&v23);
      (*(*(v18 - 8) + 16))(v20, v19, v18);
      countAndFlagsBits = v23;
      v21 = v24;
      v8 = v25;
    }

    result = __swift_destroy_boxed_opaque_existential_1(v28);
    v16 = v21;
  }

  else
  {
    sub_1DB1445E0(&v22, &qword_1ECC26E28, &unk_1DB2C2D70);
    *&v22 = v6;
    *(&v22 + 1) = v5;
    v28[0] = 34;
    v28[1] = 0xE100000000000000;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1DB143508();
    result = sub_1DB2BB3D4();
    v9 = result;
    v11 = v15;
    countAndFlagsBits = 0;
    v8 = 0;
    v16 = 0uLL;
  }

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = countAndFlagsBits;
  *(a3 + 24) = v16;
  *(a3 + 40) = v8;
  return result;
}

uint64_t sub_1DB29A9B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7365756C6176;
  }

  else
  {
    v4 = 0x736E6D756C6F63;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x7365756C6176;
  }

  else
  {
    v6 = 0x736E6D756C6F63;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();
  }

  return v9 & 1;
}

uint64_t sub_1DB29AA5C()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB29AADC()
{
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB29AB48()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB29ABC4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB2BB6F4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1DB29AC24(uint64_t *a1@<X8>)
{
  v2 = 0x736E6D756C6F63;
  if (*v1)
  {
    v2 = 0x7365756C6176;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB29AC60()
{
  if (*v0)
  {
    result = 0x7365756C6176;
  }

  else
  {
    result = 0x736E6D756C6F63;
  }

  *v0;
  return result;
}

uint64_t sub_1DB29AC98@<X0>(char *a1@<X8>)
{
  v2 = sub_1DB2BB6F4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DB29ACFC(uint64_t a1)
{
  v2 = sub_1DB2A1110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB29AD38(uint64_t a1)
{
  v2 = sub_1DB2A1110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Row.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29308, &qword_1DB2CEFA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = *v1;
  v25 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A1110();

  sub_1DB2BBA94();
  *&v26[0] = v9;
  LOBYTE(v28) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29128, &unk_1DB2CE770);
  sub_1DB2A1164(&qword_1EE13E6E0);
  sub_1DB2BB8A4();

  if (!v2)
  {
    v11 = v25;
    v12 = *(v25 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v21 = 0;
      v22 = v8;
      v23 = v5;
      v24 = v4;
      v28 = MEMORY[0x1E69E7CC0];
      sub_1DB138580(0, v12, 0);
      v13 = v28;
      v14 = v11 + 32;
      do
      {
        sub_1DB1446A4(v14, v26, &qword_1ECC26E28, &unk_1DB2C2D70);
        v28 = v13;
        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1DB138580((v15 > 1), v16 + 1, 1);
          v13 = v28;
        }

        *(v13 + 16) = v16 + 1;
        v17 = v13 + 40 * v16;
        v18 = v26[0];
        v19 = v26[1];
        *(v17 + 64) = v27;
        *(v17 + 32) = v18;
        *(v17 + 48) = v19;
        v14 += 40;
        --v12;
      }

      while (v12);
      v5 = v23;
      v4 = v24;
      v8 = v22;
    }

    *&v26[0] = v13;
    LOBYTE(v28) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E10, &qword_1DB2CEFB0);
    sub_1DB2A11D4(&qword_1EE13F6B8, sub_1DB200E94);
    sub_1DB2BB8A4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Row.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29310, &qword_1DB2CEFB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A1110();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29128, &unk_1DB2CE770);
  v26[0] = 0;
  sub_1DB2A1164(&qword_1EE13E6D8);
  sub_1DB2BB7B4();
  v12 = *&v27[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E10, &qword_1DB2CEFB0);
  LOBYTE(v27[0]) = 1;
  sub_1DB2A11D4(&qword_1EE13F2B0, sub_1DB200F6C);
  sub_1DB2BB7B4();
  v25 = v6;
  v13 = v30;
  v14 = *(v30 + 16);
  if (v14)
  {
    v23 = v12;
    v24 = a2;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DB138530(0, v14, 0);
    v15 = v29;
    v22[1] = v13;
    v16 = v13 + 32;
    do
    {
      sub_1DB200FC0(v16, v26);
      sub_1DB1446A4(v26, v27, &qword_1ECC26E28, &unk_1DB2C2D70);
      sub_1DB20101C(v26);
      v29 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1DB138530((v17 > 1), v18 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v18 + 1;
      v19 = v15 + 40 * v18;
      v20 = v27[0];
      v21 = v27[1];
      *(v19 + 64) = v28;
      *(v19 + 32) = v20;
      *(v19 + 48) = v21;
      v16 += 40;
      --v14;
    }

    while (v14);
    (*(v25 + 8))(v9, v5);

    v12 = v23;
    a2 = v24;
  }

  else
  {

    (*(v25 + 8))(v9, v5);
    v15 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v12;
  a2[1] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Row.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB2BBA64();
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = (*(v1 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];

      sub_1DB2BAE84();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v14 = *(v2 + 16);
  if (v14)
  {
    v15 = v2 + 32;
    do
    {
      sub_1DB1446A4(v15, v26, &qword_1ECC26E28, &unk_1DB2C2D70);
      sub_1DB1446A4(v26, v19, &qword_1ECC26E28, &unk_1DB2C2D70);
      if (v20)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F28, &unk_1DB2BD520);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29320, &qword_1DB2CEFD0);
        if (swift_dynamicCast())
        {
          if (*(&v17 + 1))
          {
            sub_1DB1355D0(&v16, v19);
            __swift_project_boxed_opaque_existential_1(v19, v20);
            sub_1DB2BACF4();
            sub_1DB1445E0(v26, &qword_1ECC26E28, &unk_1DB2C2D70);
            __swift_destroy_boxed_opaque_existential_1(v19);
            goto LABEL_15;
          }
        }

        else
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
        }

        sub_1DB1445E0(v26, &qword_1ECC26E28, &unk_1DB2C2D70);
      }

      else
      {
        sub_1DB1445E0(v26, &qword_1ECC26E28, &unk_1DB2C2D70);
        sub_1DB1445E0(v19, &qword_1ECC26E28, &unk_1DB2C2D70);
        v16 = 0u;
        v17 = 0u;
        v18 = 0;
      }

      sub_1DB1445E0(&v16, &qword_1ECC29318, &unk_1DB2CEFC0);
LABEL_15:
      v15 += 40;
      --v14;
    }

    while (v14);
  }

  v26[2] = v23;
  v26[3] = v24;
  v27 = v25;
  v26[0] = v21;
  v26[1] = v22;
  return sub_1DB2BBA44();
}

uint64_t Row.description.getter()
{
  v1 = v0[1];
  v2 = *v0;

  v3 = 0;
  v25 = sub_1DB2884B0(v2, v2, v1);

  sub_1DB29EFE4(&v25);

  v4 = *(v25 + 2);
  if (v4)
  {
    v5 = &v25[16 * v4 + 16];
    v20 = *v5;
    v21 = *(v5 + 1);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v18 = v2;
    sub_1DB138470(0, v6, 0);
    v7 = 0;
    v8 = v28;
    v9 = v1 + 32;
    v19 = *(v1 + 16);
    while (v19 != v7)
    {
      if (v7 >= *(v1 + 16))
      {
        goto LABEL_14;
      }

      sub_1DB1446A4(v9, v26, &qword_1ECC26E28, &unk_1DB2C2D70);
      v22 = v7;
      v23[0] = v26[0];
      v23[1] = v26[1];
      v24 = v27;
      v3 = v1;
      v10 = sub_1DB29B9B4(v7, v23, v2);
      v12 = v11;
      sub_1DB1445E0(&v22, &qword_1ECC29328, &unk_1DB2CEFD8);
      v28 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1DB138470((v13 > 1), v14 + 1, 1);
        v2 = v18;
        v8 = v28;
      }

      ++v7;
      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v9 += 40;
      v1 = v3;
      if (v6 == v7)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    MEMORY[0x1E1284A10](v3);

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v25 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
    v16 = sub_1DB2BAD24();

    return v16;
  }

  return result;
}

uint64_t sub_1DB29B9B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = 0x3E726F7272653CLL;
  do
  {
    if (!v7)
    {
      while (1)
      {
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v10 >= v8)
        {
          v14 = 0xE700000000000000;
          goto LABEL_13;
        }

        v7 = *(a3 + 64 + 8 * v10);
        ++v4;
        if (v7)
        {
          v4 = v10;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v10 = v4;
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
  }

  while (*(*(a3 + 56) + 8 * v12) != result);
  v13 = (*(a3 + 48) + 16 * v12);
  v9 = *v13;
  v14 = v13[1];

LABEL_13:
  sub_1DB1446A4(a2, &v31, &qword_1ECC26E28, &unk_1DB2C2D70);
  if (v32)
  {
    sub_1DB1355D0(&v31, &v33);
    v15 = v35;
    v16 = __swift_project_boxed_opaque_existential_1(&v33, v35);
    v17 = *(*(v15 - 8) + 64);
    MEMORY[0x1EEE9AC00](v16);
    (*(v19 + 16))(v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = sub_1DB2BADF4();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(&v33);
  }

  else
  {
    sub_1DB1445E0(&v31, &qword_1ECC26E28, &unk_1DB2C2D70);
    v22 = 0xE400000000000000;
    v20 = 1280070990;
  }

  v33 = v9;
  v34 = v14;
  *&v31 = 34;
  *(&v31 + 1) = 0xE100000000000000;
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1DB143508();
  v23 = sub_1DB2BB3D4();
  v25 = v24;

  v26 = sub_1DB2BAE94();
  result = sub_1DB2BAE94();
  if (!__OFSUB__(v26, result))
  {
    v27 = sub_1DB2BAFB4();
    v29 = v28;
    v33 = v23;
    v34 = v25;
    MEMORY[0x1E1283490](8250, 0xE200000000000000);
    MEMORY[0x1E1283490](v27, v29);

    MEMORY[0x1E1283490](v20, v22);

    return v33;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1DB29BCDC@<X0>(uint64_t *a1@<X8>)
{
  result = Row.id.getter();
  *a1 = result;
  return result;
}

OnDeviceStorageCore::JoinType_optional __swiftcall JoinType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB29BD70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x52454E4E49;
  if (v2 != 1)
  {
    v5 = 0x54554F205446454CLL;
    v4 = 0xEA00000000005245;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x53534F5243;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x52454E4E49;
  if (*a2 != 1)
  {
    v8 = 0x54554F205446454CLL;
    v3 = 0xEA00000000005245;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x53534F5243;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB2BB924();
  }

  return v11 & 1;
}

uint64_t sub_1DB29BE6C()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB29BF0C()
{
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB29BF98()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB29C040(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x52454E4E49;
  if (v2 != 1)
  {
    v5 = 0x54554F205446454CLL;
    v4 = 0xEA00000000005245;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x53534F5243;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

OnDeviceStorageCore::OnConflict_optional __swiftcall OnConflict.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB29C1C4()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB29C298()
{
  *v0;
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB29C358()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB29C434(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x4543414C504552;
  v5 = 0xE500000000000000;
  v6 = 0x54524F4241;
  v7 = 0xE400000000000000;
  v8 = 1279869254;
  if (v2 != 3)
  {
    v8 = 0x45524F4E4749;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x4B4341424C4C4F52;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DB29C574()
{
  v1 = 0x7361696C61;
  if (*v0 != 1)
  {
    v1 = 0x6573616261746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DB29C5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB2A2D28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB29C5EC(uint64_t a1)
{
  v2 = sub_1DB2A124C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB29C628(uint64_t a1)
{
  v2 = sub_1DB2A124C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.FromClause.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29330, &qword_1DB2CEFE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A124C();
  sub_1DB2BBA94();
  v18 = 0;
  v13 = v15[5];
  sub_1DB2BB864();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_1DB2BB824();
  v16 = 2;
  sub_1DB2BB824();
  return (*(v4 + 8))(v7, v3);
}

uint64_t QueryClauses.FromClause.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29338, &qword_1DB2CEFF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A124C();
  sub_1DB2BBA84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_1DB2BB774();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_1DB2BB734();
  v23 = v14;
  v25 = 2;
  v15 = sub_1DB2BB734();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DB29CAD0()
{
  if (*v0)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 0x6874676E656CLL;
  }
}

uint64_t sub_1DB29CAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1DB2BB924() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();

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

uint64_t sub_1DB29CBD0(uint64_t a1)
{
  v2 = sub_1DB2A12A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB29CC0C(uint64_t a1)
{
  v2 = sub_1DB2A12A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryClauses.LimitClause.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29340, &qword_1DB2CEFF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v13 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A12A0();
  sub_1DB2BBA94();
  v15 = 0;
  sub_1DB2BB894();
  if (!v2)
  {
    v14 = 1;
    sub_1DB2BB844();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t QueryClauses.LimitClause.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29350, &qword_1DB2CF000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB2A12A0();
  sub_1DB2BBA84();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_1DB2BB7A4();
    v17 = 1;
    v13 = sub_1DB2BB754();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 QueryClauses.init(select:from:join:filters:group:order:limit:union:with:)@<Q0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __n128 *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v23 = *a1;
  v22 = *(a1 + 1);
  v12 = *a2;
  v13 = a2[1];
  v32 = *a4;
  v31 = *(a4 + 2);
  v30 = *a5;
  v28 = a5[1].n128_u64[1];
  v29 = a5[1].n128_u64[0];
  v26 = *a7;
  v27 = *a6;
  v25 = a7[1];
  v24 = *(a7 + 16);
  v14 = *(a7 + 17);
  v16 = *a10;
  v15 = a10[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DB2BCC40;
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  *(v17 + 64) = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
  *(v17 + 32) = 42;
  *(v17 + 40) = 0xE100000000000000;
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 48) = MEMORY[0x1E69E7CC0];

  sub_1DB1718E4(0, 0);
  sub_1DB1755F8(0, 0, 0);

  v35 = v14;
  v19 = v15 != 0;
  if (!v15)
  {
    v15 = v18;
  }

  *a9 = v23;
  *(a9 + 8) = v22;
  *(a9 + 16) = v12;
  *(a9 + 24) = v13;
  v20 = *(a2 + 2);
  *(a9 + 32) = *(a2 + 1);
  *(a9 + 48) = v20;
  *(a9 + 64) = a3;
  *(a9 + 72) = v32;
  *(a9 + 88) = v31;
  result = v30;
  *(a9 + 96) = v30;
  *(a9 + 112) = v29;
  *(a9 + 120) = v28;
  *(a9 + 128) = v27;
  *(a9 + 136) = v26;
  *(a9 + 144) = v25;
  *(a9 + 152) = v24;
  *(a9 + 153) = v35;
  *(a9 + 160) = a8;
  *(a9 + 168) = v19 & v16;
  *(a9 + 176) = v15;
  return result;
}

uint64_t sub_1DB29D1BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F38, &qword_1DB2BD530);
  result = sub_1DB2BB6B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1DB144640(v22, v33);
      }

      else
      {
        sub_1DB1444CC(v22, v33);
      }

      v23 = *(v8 + 40);
      result = sub_1DB2BB9F4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1DB144640(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1DB29D448(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F50, &qword_1DB2BD548);
  v38 = a2;
  result = sub_1DB2BB6B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        _Block_copy(v25);
      }

      v27 = *(v8 + 40);
      sub_1DB2BBA04();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DB29D6F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC294F8, &qword_1DB2D0A30);
  v38 = a2;
  result = sub_1DB2BB6B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1DB2BBA04();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DB29D9A4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1DB2BB6B4();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1DB2BBA04();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1DB29DC44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC294F0, &qword_1DB2D0A28);
  v38 = a2;
  result = sub_1DB2BB6B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1DB2BBA04();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DB29DEE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F20, &unk_1DB2D0A40);
  v40 = a2;
  result = sub_1DB2BB6B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v42 = v23[2];
      v27 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {

        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_1DB2BBA04();
      sub_1DB2BAE84();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v24;
      v17[1] = v25;
      v13 = v41;
      v17[2] = v42;
      v17[3] = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v39;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DB29E1BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29300, &qword_1DB2CEFA0);
  v39 = a2;
  result = sub_1DB2BB6B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
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
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 32 * v23);
      if (v39)
      {
        v28 = v27[1];
        v40 = *v27;
        v41 = v28;
      }

      else
      {
        sub_1DB1446A4(v27, &v40, &qword_1ECC26F30, &unk_1DB2BFA90);
      }

      v29 = *(v8 + 40);
      sub_1DB2BBA04();
      sub_1DB2BAE84();
      result = sub_1DB2BBA54();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v8 + 56) + 32 * v16);
      v19 = v41;
      *v18 = v40;
      v18[1] = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_1DB29E484(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1DB144640(a3, (a4[7] + 32 * a1));
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

unint64_t sub_1DB29E4EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1DB29E534(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

void *sub_1DB29E580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F38, &qword_1DB2BD530);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1DB1444CC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1DB144640(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_1DB29E6FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F58, &unk_1DB2BD550);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
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

void *sub_1DB29E86C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F50, &qword_1DB2BD548);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
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

        result = _Block_copy(v20);
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

void *sub_1DB29E9DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC294F8, &qword_1DB2D0A30);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_1DB29EB44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC294F0, &qword_1DB2D0A28);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

id sub_1DB29ECAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26F20, &unk_1DB2D0A40);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;

        result = v22;
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

void *sub_1DB29EE30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC29300, &qword_1DB2CEFA0);
  v2 = *v0;
  v3 = sub_1DB2BB6A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_1DB1446A4(*(v2 + 56) + 32 * v17, v27, &qword_1ECC26F30, &unk_1DB2BFA90);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DB29EFE4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DB25C134(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1DB29F050(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1DB29F050(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DB2BB8E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1DB2BB104();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1DB29F254(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1DB29F148(0, v2, 1, a1);
  }

  return result;
}