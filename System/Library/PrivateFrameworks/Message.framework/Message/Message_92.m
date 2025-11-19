void sub_1B0D612AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 25);
  v6 = *(*a1 + 24);
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[2];
  if (*(*a1 + 53))
  {
    v10 = 0x100000000000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | (*(*a1 + 52) << 48) | *(*a1 + 10);
  v12 = v11 | (v6 << 32);
  if (*(*a1 + 55))
  {
    v13 = 0x100000000000000;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | (*(*a1 + 54) << 48) | *(*a1 + 11);
  v15 = v14 | (v5 << 32);
  v16 = **a1;
  if (a2)
  {

    sub_1B0D65DBC(v17, v4, v9, v12, v15, v8);

    v18 = *v2;
  }

  else
  {
    sub_1B0D65DBC(v16, v4, v9, v11 | (v6 << 32), v14 | (v5 << 32), v8);
  }

  free(v2);
}

void (*CircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[5] = a4;
  v9[6] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v11 = *(a4 + 16);
  *v9 = sub_1B0D659B8(a2 & 0x1FFFFFFFFFFFFFFLL, a3 & 0x1FFFFFFFFFFFFFFLL, *v4, *(v4 + 8), *(v4 + 16));
  v10[1] = v12;
  v10[2] = v13;

  return sub_1B0D61450;
}

void sub_1B0D61450(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[5];
  v5 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  if (a2)
  {
    v10 = **a1;

    sub_1B0D65DBC(v11, v4, v9, v8 & 0x1FFFFFFFFFFFFFFLL, v7 & 0x1FFFFFFFFFFFFFFLL, v6);

    v12 = *v2;
  }

  else
  {
    sub_1B0D65DBC(**a1, v4, v9, v8 & 0x1FFFFFFFFFFFFFFLL, v7 & 0x1FFFFFFFFFFFFFFLL, v6);
  }

  free(v2);
}

uint64_t sub_1B0D61588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(a1 + 16);

  v9 = CircularBuffer.startIndex.getter(v8, v5, v6);

  *(a2 + 24) = v9;
  *(a2 + 28) = WORD2(v9);
  *(a2 + 30) = BYTE6(v9);
  *(a2 + 31) = HIBYTE(v9) != 0;
  return result;
}

uint64_t sub_1B0D61614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1B0D61668()
{
  swift_getWitnessTable();
  v1 = sub_1B0DECA48();
  v2 = *v0;

  return v1;
}

uint64_t sub_1B0D616C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CircularBuffer._copyContents(initializing:)(a2, a3, *v4, *(v4 + 8), *(v4 + 16), *(a4 + 16), &v14);
  v13 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;

  *a1 = v13;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 28) = v8;
  *(a1 + 30) = v9;
  *(a1 + 31) = v10;
  return v11;
}

uint64_t CircularBuffer.replaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v145 = a3;
  v10 = a1;
  v11 = HIDWORD(a1);
  v12 = HIWORD(a1);
  v13 = HIBYTE(a1);
  v165 = HIBYTE(a1);
  v148 = a2;
  v164 = HIBYTE(a2);
  v139 = a4;
  v14 = *(a4 + 16);
  v15 = sub_1B0E45D88();
  v120 = sub_1B0E46F18();
  v16 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v119 - v17;
  v147 = a6;
  v18 = *(a6 + 8);
  v131 = sub_1B0E462B8();
  v130 = *(v131 - 8);
  v19 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v128 = &v119 - v20;
  v129 = sub_1B0E464D8();
  v21 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v119 - v22;
  v142 = v15;
  v149 = *(v15 - 8);
  v23 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v135 = &v119 - v27;
  v134 = *(a5 - 1);
  v28 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v133 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v18;
  v146 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v132 = *(AssociatedTypeWitness - 8);
  v31 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v150 = &v119 - v32;
  v33 = type metadata accessor for CircularBuffer.Index();
  LODWORD(v160) = v10;
  v152 = v11;
  WORD2(v160) = v11;
  v34 = v12;
  BYTE6(v160) = v12;
  HIBYTE(v160) = HIBYTE(v10) & 1;
  v35 = *v7;
  v36 = v7[1];
  v141 = v7;
  v37 = v7[2];
  v38 = v35;
  v39 = v14;
  v40 = CircularBuffer.startIndex.getter(v35, v36, v37);
  LODWORD(v153) = v40;
  WORD2(v153) = WORD2(v40);
  BYTE6(v153) = BYTE6(v40);
  HIBYTE(v153) = HIBYTE(v40) != 0;
  WitnessTable = swift_getWitnessTable();
  result = sub_1B0E44948();
  if ((result & 1) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v126 = HIBYTE(v10) & 1;
  v43 = v164;
  LODWORD(v160) = v148;
  v124 = HIDWORD(v148);
  WORD2(v160) = WORD2(v148);
  v125 = HIWORD(v148);
  BYTE6(v160) = BYTE6(v148);
  HIBYTE(v160) = v164;
  v144 = v36;
  v44 = v36;
  v45 = v39;
  v46 = CircularBuffer.endIndex.getter(v38, v44, v37);
  LODWORD(v153) = v46;
  WORD2(v153) = WORD2(v46);
  BYTE6(v153) = BYTE6(v46);
  HIBYTE(v153) = HIBYTE(v46) != 0;
  result = sub_1B0E44958();
  if ((result & 1) == 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v47 = v37;
  v137 = WitnessTable;
  v138 = v33;
  if (v13)
  {
    v48 = 0x100000000000000;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48 & 0xFF00000000000000 | v10 & 0xFFFFFFFFFFFFFFLL;
  v123 = v43;
  if (v43)
  {
    v50 = 0x100000000000000;
  }

  else
  {
    v50 = 0;
  }

  v122 = v49;
  v121 = v50 & 0xFF00000000000000 | v148 & 0xFFFFFFFFFFFFFFLL;
  v51 = CircularBuffer.distance(from:to:)(v49, v121);
  v52 = v145;
  v53 = v146;
  v54 = v45;
  if (v51 == sub_1B0E45698())
  {
    (*(v134 + 16))(v133, v52, v53);
    sub_1B0E44F08();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v56 = v135;
    v148 = AssociatedConformanceWitness;
    sub_1B0E45E38();
    v57 = v56;
    v58 = v136;
    v59 = *(v45 - 1);
    v60 = *(v59 + 48);
    v147 = v59 + 48;
    v146 = v60;
    v61 = v60(v57, 1, v45);
    v62 = v141;
    v63 = v142;
    if (v61 == 1)
    {
      return (*(v132 + 8))(v150, AssociatedTypeWitness);
    }

    v143 = v149 + 40;
    v144 = *(v59 + 32);
    v145 = v59 + 32;
    while (1)
    {
      v144(v58, v57, v54);
      (*(v59 + 56))(v58, 0, 1, v54);
      sub_1B0E46498();
      result = sub_1B0E463F8();
      if (*(*v62 + 16) <= v10)
      {
        break;
      }

      (*(v149 + 40))(*v62 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v10, v58, v63);
      v64 = CircularBuffer.index(_:offsetBy:)(v10, 1, *v62, v62[1], v62[2]);
      v10 = v64 | ((HIBYTE(v64) != 0) << 56);
      v152 = HIDWORD(v10);
      sub_1B0E45E38();
      if (v146(v57, 1, v54) == 1)
      {
        return (*(v132 + 8))(v150, AssociatedTypeWitness);
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  v143 = v38;
  v65 = v38;
  v66 = v144;
  AssociatedTypeWitness = v47;
  v150 = v45;
  v67 = CircularBuffer.count.getter(v65, v144, v47);
  v68 = v142;
  if (v51 == v67 && (sub_1B0E456B8() & 1) != 0)
  {
    v69 = 0x100000000000000;
    if (v165)
    {
      v70 = 0x100000000000000;
    }

    else
    {
      v70 = 0;
    }

    if (!v164)
    {
      v69 = 0;
    }

    return CircularBuffer.removeSubrange(_:)(v70 | v10 & 0xFFFFFFFFFFFFFFLL, v69 | v148 & 0xFFFFFFFFFFFFFFLL, v139);
  }

  else
  {
    v71 = sub_1B0E45258();
    v163 = MEMORY[0x1B27284F0](v71, v68);
    v72 = CircularBuffer.count.getter(v143, v66, AssociatedTypeWitness);
    result = sub_1B0E45698();
    v73 = v72 + result;
    if (__OFADD__(v72, result))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v74 = __OFSUB__(v73, v51);
    v75 = v73 - v51;
    if (v74)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v76 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v77 = v150;
    sub_1B0E45D88();
    v78 = sub_1B0E46448();
    if (v76)
    {
      v79 = __clz(v76 - 1);
      v80 = v139;
      v81 = v144;
      v82 = v152;
      if (v79)
      {
        v79 = 1 << -v79;
      }

      v83 = v143;
    }

    else
    {
      v79 = 1;
      v80 = v139;
      v83 = v143;
      v81 = v144;
      v82 = v152;
    }

    if (v79 <= v78)
    {
      v84 = v78;
    }

    else
    {
      v84 = v79;
    }

    v85 = sub_1B0E46498();
    v135 = v84;
    v152 = v85;
    sub_1B0E463E8();
    v86 = CircularBuffer.startIndex.getter(v83, v81, AssociatedTypeWitness);
    LODWORD(v160) = v86;
    WORD2(v160) = WORD2(v86);
    BYTE6(v160) = BYTE6(v86);
    HIBYTE(v160) = HIBYTE(v86) != 0;
    LODWORD(v153) = v10;
    WORD2(v153) = v82;
    BYTE6(v153) = v34;
    HIBYTE(v153) = v126;
    result = sub_1B0E44958();
    if ((result & 1) == 0)
    {
      goto LABEL_45;
    }

    v153 = sub_1B0D659B8(v86 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v86) != 0) << 56), v122, v83, v81, AssociatedTypeWitness);
    *&v154 = v87;
    *(&v154 + 1) = v88;
    v89 = swift_getWitnessTable();
    MEMORY[0x1B27270C0](&v158, v80, v89);
    v156 = v158;
    v157 = v159;
    v90 = swift_allocObject();
    v91 = v146;
    v90[2] = v77;
    v90[3] = v91;
    v92 = v147;
    v90[4] = v147;
    v93 = swift_allocObject();
    v93[2] = v77;
    v93[3] = v91;
    v93[4] = v92;
    v93[5] = sub_1B0D663EC;
    v93[6] = v90;
    v94 = sub_1B0E462B8();
    v95 = swift_getWitnessTable();
    v133 = v94;
    v96 = v142;
    v132 = v95;
    sub_1B0E46728();

    v153 = v160;
    v154 = v161;
    v155 = v162;
    v134 = v89;
    v97 = sub_1B0E464D8();
    v98 = swift_getWitnessTable();
    v99 = v143;
    v126 = v97;
    v122 = v98;
    sub_1B0E46458();
    v100 = v128;
    MEMORY[0x1B27270C0](v91, v140);
    v101 = swift_allocObject();
    v101[2] = v77;
    v101[3] = v91;
    v101[4] = v92;
    v102 = swift_allocObject();
    v102[2] = v77;
    v102[3] = v91;
    v102[4] = v92;
    v102[5] = sub_1B0D65EEC;
    v102[6] = v101;
    v103 = v131;
    swift_getWitnessTable();
    sub_1B0E46728();

    (*(v130 + 8))(v100, v103);
    swift_getWitnessTable();
    sub_1B0E46458();
    LODWORD(v160) = v148;
    WORD2(v160) = v124;
    BYTE6(v160) = v125;
    HIBYTE(v160) = v123;
    v104 = v144;
    v105 = CircularBuffer.endIndex.getter(v99, v144, AssociatedTypeWitness);
    LODWORD(v153) = v105;
    WORD2(v153) = WORD2(v105);
    BYTE6(v153) = BYTE6(v105);
    HIBYTE(v153) = HIBYTE(v105) != 0;
    result = sub_1B0E44958();
    if ((result & 1) == 0)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    v106 = v104;
    v107 = v96;
    v153 = sub_1B0D659B8(v121, v105 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v105) != 0) << 56), v99, v106, AssociatedTypeWitness);
    *&v154 = v108;
    *(&v154 + 1) = v109;
    MEMORY[0x1B27270C0](&v158, v139, v134);
    v156 = v158;
    v157 = v159;
    v110 = swift_allocObject();
    v111 = v146;
    v110[2] = v77;
    v110[3] = v111;
    v112 = v147;
    v110[4] = v147;
    v113 = swift_allocObject();
    v113[2] = v77;
    v113[3] = v111;
    v113[4] = v112;
    v113[5] = sub_1B0D663EC;
    v113[6] = v110;
    sub_1B0E46728();

    v153 = v160;
    v154 = v161;
    v155 = v162;
    sub_1B0E46458();
    v114 = &v135[-sub_1B0E46448()];
    if (v114 >= 1)
    {
      v115 = v136;
      (*(*(v77 - 1) + 56))(v136, 1, 1, v77);
      sub_1B0E46388();
      (*(v149 + 8))(v115, v107);
      swift_getWitnessTable();
      sub_1B0E46458();
    }

    v116 = v163;

    v117 = v141;
    *v141 = v116;
    v117[1] = 0;
    v118 = sub_1B0E46448();

    v117[2] = v118 - v114;
  }

  return result;
}

unint64_t sub_1B0D6282C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(unint64_t, void, void, void, void)@<X3>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = 0x100000000000000;
  if (!*(a1 + 7))
  {
    v7 = 0;
  }

  result = a3(v7 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, *v4, v4[1], v4[2], *(a2 + 16));
  *a4 = result;
  *(a4 + 4) = WORD2(result);
  *(a4 + 6) = BYTE6(result);
  *(a4 + 7) = HIBYTE(result) != 0;
  return result;
}

unint64_t sub_1B0D628CC(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, void, void, void, void))
{
  v6 = 0x100000000000000;
  if (!*(a1 + 7))
  {
    v6 = 0;
  }

  result = a4(v6 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, *v4, v4[1], v4[2], *(a2 + 16));
  *a1 = result;
  *(a1 + 2) = WORD2(result);
  *(a1 + 6) = BYTE6(result);
  *(a1 + 7) = HIBYTE(result) != 0;
  return result;
}

unint64_t sub_1B0D62954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 16);
  *(a1 + 7);
  *(a1 + 6);
  *(a1 + 4);
  result = CircularBuffer.index(_:offsetBy:)(*a1, a2, *v4, v4[1], v4[2]);
  *a4 = result;
  *(a4 + 4) = WORD2(result);
  *(a4 + 6) = BYTE6(result);
  *(a4 + 7) = HIBYTE(result) != 0;
  return result;
}

unint64_t sub_1B0D629D4(unsigned int *a1, unsigned int *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  if (*(a1 + 7))
  {
    v6 = 0x100000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (*(a2 + 7))
  {
    v7 = 0x100000000000000;
  }

  else
  {
    v7 = 0;
  }

  v8 = *v3;
  return CircularBuffer.distance(from:to:)(v6 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v7 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2);
}

void CircularBuffer.init(initialCapacity:)(unint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E45D88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a1))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = __clz(a1 - 1);
  if (v10)
  {
    v11 = (1 << -v10);
  }

  else
  {
    v11 = 0;
  }

  if (a1)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  (*(*(a2 - 8) + 56))(v9, 1, 1, a2, v7);
  sub_1B0D65CB8(v9, v12, v4);
  (*(v5 + 8))(v9, v4);
}

void CircularBuffer.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1B0E45D88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - v9;
  v11 = v2[2];
  v12 = *(v4 - 8);
  (*(v12 + 16))(&v16 - v9, a1, v4, v8);
  (*(v12 + 56))(v10, 0, 1, v4);
  sub_1B0E46498();
  sub_1B0E463F8();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= v11)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v10, v5);
  v13 = *v2;
  v14 = v2[2] + 1;
  v15 = (sub_1B0E46448() - 1) & v14;
  v2[2] = v15;
  if (v2[1] == v15)
  {
    CircularBuffer._doubleCapacity()();
  }
}

Swift::Void __swiftcall CircularBuffer._doubleCapacity()()
{
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = sub_1B0E45D88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24 = v18 - v7;
  v8 = sub_1B0E46F18();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  v13 = *v2;
  v12 = v2[1];
  v23 = v2[2];
  v14 = 2 * sub_1B0E46448();
  v15 = sub_1B0E45258();
  v29 = MEMORY[0x1B27284F0](v15, v4);
  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B0E46498();
    v20 = v11;
    v22 = v8;
    v18[1] = v14;
    sub_1B0E463E8();
    *&v25 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7198, &qword_1B0EF0CF0);
    v19 = v5;
    v18[0] = v3;
    swift_getWitnessTable();
    v21 = v13;
    sub_1B039E3F8(&qword_1EB6E71A0, &qword_1EB6E7198, &qword_1B0EF0CF0);
    sub_1B0E44998();
    v25 = v27;
    v26 = v28;
    sub_1B0E45FF8();
    swift_getWitnessTable();
    sub_1B0E46458();
    v16 = v24;
    *&v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E71A8, &qword_1B0EF0CF8);
    sub_1B039E3F8(qword_1EB6E71B0, &qword_1EB6E71A8, &qword_1B0EF0CF8);
    sub_1B0E44998();
    v25 = v27;
    v26 = v28;
    sub_1B0E46458();
    v17 = sub_1B0E46448();
    (*(*(v18[0] - 8) + 56))(v16, 1, 1);
    sub_1B0E46388();
    (*(v19 + 8))(v16, v4);
    swift_getWitnessTable();
    sub_1B0E46458();

    v2[1] = 0;
    v2[2] = v17;
    *v2 = v29;
  }
}

void CircularBuffer.prepend(_:)(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v4 = *(a2 + 16);
  v5 = sub_1B0E45D88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  v10 = *v2;
  v11 = v2[2];
  v12 = v2[1] - 1;
  v13 = sub_1B0E46448() - 1;
  v14 = *(v4 - 8);
  (*(v14 + 16))(v9, a1, v4);
  (*(v14 + 56))(v9, 0, 1, v4);
  sub_1B0E46498();
  sub_1B0E463F8();
  v15 = v13 & v12;
  if ((v13 & v12) < 0 != v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v5);
  v17 = *v2;
  v18 = v2[1] - 1;
  v19 = (sub_1B0E46448() - 1) & v18;
  v2[1] = v19;
  if (v19 == v11)
  {
    CircularBuffer._doubleCapacity()();
  }
}

uint64_t CircularBuffer.capacity.getter()
{
  sub_1B0E45D88();

  return sub_1B0E46448();
}

Swift::Bool __swiftcall CircularBuffer.verifyInvariants()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = sub_1B0E45D88();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  if (v5 == v4)
  {
    return 1;
  }

  v12 = (v8 + 8);
  do
  {
    sub_1B0E464A8();
    v13 = (*(*(v3 - 8) + 48))(v10, 1, v3);
    (*v12)(v10, v6);
    v14 = v13 == 1;
    v11 = v13 != 1;
    if (v14)
    {
      break;
    }

    v5 = (sub_1B0E46448() - 1) & (v5 + 1);
  }

  while (v5 != v4);
  return v11;
}

Swift::Void __swiftcall CircularBuffer._resizeAndFlatten(newCapacity:)(Swift::Int newCapacity)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = sub_1B0E45D88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - v9;
  v11 = sub_1B0E46F18();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - v13;
  v15 = sub_1B0E45258();
  v33 = MEMORY[0x1B27284F0](v15, v6);
  if (newCapacity < 1)
  {
    __break(1u);
  }

  else
  {
    v28 = v14;
    sub_1B0E46498();
    v27 = newCapacity;
    sub_1B0E463E8();
    v16 = v3[1];
    v17 = v3[2];
    if (v17 >= v16)
    {
      *&v31 = sub_1B0D65A88(v16, v3[2], *v3, v6);
      *(&v31 + 1) = v18;
      *&v32 = v19;
      *(&v32 + 1) = v20;
      sub_1B0E45FF8();
      swift_unknownObjectRetain();
      swift_getWitnessTable();
    }

    else
    {
      *&v29 = v3[1];
      v26 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7198, &qword_1B0EF0CF0);
      v25 = v7;
      v24[1] = swift_getWitnessTable();
      sub_1B039E3F8(&qword_1EB6E71A0, &qword_1EB6E7198, &qword_1B0EF0CF0);
      sub_1B0E44998();
      v29 = v31;
      v30 = v32;
      sub_1B0E45FF8();
      swift_getWitnessTable();
      sub_1B0E46458();
      *&v29 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E71A8, &qword_1B0EF0CF8);
      sub_1B039E3F8(qword_1EB6E71B0, &qword_1EB6E71A8, &qword_1B0EF0CF8);
      sub_1B0E44998();
      v29 = v31;
      v30 = v32;
      v7 = v25;
    }

    sub_1B0E46458();
    v21 = sub_1B0E46448();
    (*(*(v5 - 8) + 56))(v10, 1, 1, v5);
    sub_1B0E46388();
    (*(v7 + 8))(v10, v6);
    swift_getWitnessTable();
    sub_1B0E46458();
    v3[1] = 0;
    v3[2] = v21;
    v22 = v33;
    v23 = *v3;

    *v3 = v22;
  }
}

uint64_t CircularBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = CircularBuffer.startIndex.getter(a2, a3, a4);
  CircularBuffer.index(_:offsetBy:)(v12, a1, a2, a3, a4);

  return CircularBuffer.subscript.getter(a5, a6);
}

uint64_t CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0D65FA0(a1, a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void sub_1B0D63B20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1B0D65FA0(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_1B0D65FA0((*a1)[6], v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall CircularBuffer.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v4 = *(v1 + 16);
  v5 = sub_1B0E45D88();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  if (keepingCapacity)
  {
    v9 = CircularBuffer.count.getter(*v2, v2[1], v2[2]);
    CircularBuffer.removeFirst(_:)(v9);
  }

  else
  {
    sub_1B0E46498();
    sub_1B0E46478();
    (*(*(v4 - 8) + 56))(v8, 1, 1, v4);
    sub_1B0E46468();
  }

  v2[1] = 0;
  v2[2] = 0;
}

Swift::Void __swiftcall CircularBuffer.removeFirst(_:)(Swift::Int a1)
{
  v4 = *(v1 + 16);
  v5 = sub_1B0E45D88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  v16 = v4;
  if (CircularBuffer.count.getter(v10, v11, v12) < a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
LABEL_8:
      v2[1] = v11;
      return;
    }

    sub_1B0E46498();
    sub_1B0E463F8();
    sub_1B0E463F8();
    v13 = *(*(v16 - 8) + 56);
    while (1)
    {
      v13(v9, 1, 1, v16);
      sub_1B0E463F8();
      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(*v2 + 16) <= v11)
      {
        goto LABEL_10;
      }

      (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v9, v5);
      v14 = *v2;
      v11 = (sub_1B0E46448() + 0x7FFFFFFFFFFFFFFFLL) & (v11 + 1);
      if (!--a1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

uint64_t CircularBuffer.modify<A>(_:_:)(unsigned int a1, uint64_t (*a2)(unint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = a1;
  v8 = sub_1B0E45D88();
  sub_1B0E46498();
  result = sub_1B0E463F8();
  if (*(*v4 + 16) <= v7)
  {
    __break(1u);
  }

  else
  {
    v10 = *v4 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v7;
    result = (*(*(v6 - 8) + 48))(v10, 1, v6);
    if (result != 1)
    {
      return a2(v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t CircularBuffer.popFirst()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  if (CircularBuffer.count.getter(*v2, v2[1], v2[2]) < 1)
  {
    v6 = 1;
  }

  else
  {
    CircularBuffer.removeFirst()(a1, a2);
    v6 = 0;
  }

  v7 = *(*(v5 - 8) + 56);

  return v7(a2, v6, 1, v5);
}

void CircularBuffer.removeFirst()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1B0E45D88();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v10 - v7;
  CircularBuffer.first.getter(*v2, *(v2 + 8), *(v2 + 16), v4, &v10 - v7);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(a2, v8, v4);
    type metadata accessor for CircularBuffer();
    CircularBuffer.removeFirst(_:)(1);
  }
}

uint64_t CircularBuffer.popLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  if (CircularBuffer.count.getter(*v2, v2[1], v2[2]) < 1)
  {
    v6 = 1;
  }

  else
  {
    CircularBuffer.removeLast()(a1, a2);
    v6 = 0;
  }

  v7 = *(*(v5 - 8) + 56);

  return v7(a2, v6, 1, v5);
}

void CircularBuffer.removeLast()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1B0E45D88();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v10 - v7;
  v10[1] = *v2;
  v11 = *(v2 + 8);
  swift_getWitnessTable();
  sub_1B0E44888();
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(a2, v8, v4);
    type metadata accessor for CircularBuffer();
    CircularBuffer.removeLast(_:)(1);
  }
}

Swift::Void __swiftcall CircularBuffer.removeLast(_:)(Swift::Int a1)
{
  v4 = *(v1 + 16);
  v5 = sub_1B0E45D88();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = v2[2];
  if (CircularBuffer.count.getter(*v2, v2[1], v10) < a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    if (!a1)
    {
LABEL_8:
      v2[2] = v10;
      return;
    }

    v11 = sub_1B0E46498();
    sub_1B0E463F8();
    v15[1] = v11;
    sub_1B0E463F8();
    while (1)
    {
      v12 = *v2;
      v13 = sub_1B0E46448() - 1;
      (*(*(v4 - 8) + 56))(v9, 1, 1, v4);
      sub_1B0E463F8();
      v10 = v13 & (v10 - 1);
      if (v10 < 0 != v14)
      {
        break;
      }

      if (*(*v2 + 16) <= v10)
      {
        goto LABEL_10;
      }

      (*(v6 + 40))(*v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v9, v5);
      if (!--a1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

uint64_t CircularBuffer.first.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    CircularBuffer.startIndex.getter(a1, a2, a3);
    CircularBuffer.subscript.getter(a4, a5);
    v7 = 0;
  }

  v8 = *(*(a4 - 8) + 56);

  return v8(a5, v7, 1, a4);
}

uint64_t CircularBuffer.removeSubrange(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v32 = a1;
  v5 = HIDWORD(a2);
  v6 = *(a3 + 16);
  v29 = *(v6 - 8);
  v30 = a3;
  v7 = *(v29 + 64);
  v8 = HIWORD(a2);
  MEMORY[0x1EEE9AC00](a1);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CircularBuffer.Index();
  LODWORD(v38) = a2;
  v33 = v5;
  WORD2(v38) = v5;
  BYTE6(v38) = v8;
  HIBYTE(v38) = HIBYTE(a2) & 1;
  v10 = *v3;
  v11 = v3[1];
  v27 = v3 + 1;
  v31 = v3;
  v12 = v3[2];
  v13 = CircularBuffer.startIndex.getter(v10, v11, v12);
  v34 = v13;
  v35 = WORD2(v13);
  v36 = BYTE6(v13);
  v37 = HIBYTE(v13) != 0;
  swift_getWitnessTable();
  result = sub_1B0E44948();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  LODWORD(v38) = a2;
  WORD2(v38) = v33;
  BYTE6(v38) = v8;
  HIBYTE(v38) = HIBYTE(a2) & 1;
  v15 = CircularBuffer.endIndex.getter(v10, v11, v12);
  v34 = v15;
  v35 = WORD2(v15);
  v36 = BYTE6(v15);
  v37 = HIBYTE(v15) != 0;
  result = sub_1B0E44958();
  if ((result & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v16 = v32;
  v17 = CircularBuffer.distance(from:to:)(v32 & 0x1FFFFFFFFFFFFFFLL, a2 & 0x1FFFFFFFFFFFFFFLL);
  if (v17 == 1)
  {
    v18 = v16 & 0x1FFFFFFFFFFFFFFLL;
    v19 = v28;
    CircularBuffer.remove(at:)(v18, v30, v28);
    return (*(v29 + 8))(v19, v6);
  }

  else if (CircularBuffer.count.getter(v10, v11, v12) == v17)
  {
    sub_1B0E45D88();
    v20 = sub_1B0E46448();
    CircularBuffer.init(initialCapacity:)(v20, v6);
    v22 = v21;

    *v31 = v22;
    v23 = v27;
    *v27 = 0;
    v23[1] = 0;
  }

  else
  {
    v38 = sub_1B0E45258();
    v24 = sub_1B0E45358();
    WitnessTable = swift_getWitnessTable();
    CircularBuffer.replaceSubrange<A>(_:with:)(v16 & 0x1FFFFFFFFFFFFFFLL, a2 & 0x1FFFFFFFFFFFFFFLL, &v38, v30, v24, WitnessTable);
  }

  return result;
}

uint64_t CircularBuffer.remove(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  LODWORD(v5) = a1;
  v41 = a3;
  v45 = a1;
  v6 = *(a2 + 16);
  v7 = sub_1B0E45D88();
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = *(v6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3[1];
  v18 = v3[2];
  v52 = *v3;
  v53 = v17;
  v43 = v17;
  v38 = v18;
  v54 = v18;
  swift_getWitnessTable();
  sub_1B0E45788();
  v46 = v49;
  v47 = v50;
  v48 = v51;
  v19 = sub_1B0E447E8();
  swift_getWitnessTable();
  type metadata accessor for CircularBuffer.Index();
  swift_getWitnessTable();
  v20 = sub_1B0E450A8();
  v55[0] = v46;
  v55[1] = v47;
  v56 = v48;
  result = (*(*(v19 - 8) + 8))(v55, v19);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v5;
  sub_1B0E464A8();
  result = (*(v13 + 48))(v12, 1, v6);
  if (result != 1)
  {
    v22 = *(v13 + 32);
    v22(v44, v12, v6);
    v39 = v22;
    if (v43 != v5)
    {
      v27 = v38 - 1;
      if (((sub_1B0E46448() - 1) & v27) != v5)
      {
        v31 = v42;
        v26 = v6;
        (*(v13 + 56))(v42, 1, 1, v6);
        sub_1B0E46498();
        result = sub_1B0E463F8();
        if (*(*v4 + 16) > v5)
        {
          (*(v40 + 40))(*v4 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v5, v31, v7);
          v32 = *v4;
          v33 = v4[2];
          for (i = (sub_1B0E46448() - 1) & (v5 + 1); i != v33; i = (sub_1B0E46448() - 1) & (i + 1))
          {
            *&v49 = v5;
            *&v46 = i;
            swift_getWitnessTable();
            sub_1B0E44988();
            v35 = *v4;
            v5 = i;
          }

          v36 = *v4;
          v37 = v4[2] - 1;
          v4[2] = (sub_1B0E46448() - 1) & v37;
          return v39(v41, v44, v26);
        }

        goto LABEL_17;
      }

      v28 = *v4;
      v29 = v4[2] - 1;
      v4[2] = (sub_1B0E46448() - 1) & v29;
      v30 = v42;
      v26 = v6;
      (*(v13 + 56))(v42, 1, 1, v6);
      sub_1B0E46498();
      result = sub_1B0E463F8();
      if (*(*v4 + 16) > v5)
      {
        (*(v40 + 40))(*v4 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v5, v30, v7);
        return v39(v41, v44, v26);
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v23 = *v4;
    v24 = v4[1] + 1;
    v4[1] = (sub_1B0E46448() - 1) & v24;
    v25 = v42;
    v26 = v6;
    (*(v13 + 56))(v42, 1, 1, v6);
    sub_1B0E46498();
    result = sub_1B0E463F8();
    if (*(*v4 + 16) > v43)
    {
      (*(v40 + 40))(*v4 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v43, v25, v7);
      return v39(v41, v44, v26);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Void __swiftcall CircularBuffer.reserveCapacity(_:)(Swift::Int a1)
{
  v4 = *v2;
  v5 = *(v1 + 16);
  sub_1B0E45D88();
  if (sub_1B0E46448() < a1)
  {
    v6 = __clz(a1 - 1);
    if (v6)
    {
      v7 = 1 << -v6;
    }

    else
    {
      v7 = 0;
    }

    if (a1)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    CircularBuffer._resizeAndFlatten(newCapacity:)(v8);
  }
}

void sub_1B0D64FD8(uint64_t a1@<X0>, void *a2@<X8>)
{
  CircularBuffer.init()(*(a1 + 16));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v3;
}

uint64_t sub_1B0D65008(unsigned int *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v8 = 0x100000000000000;
  }

  else
  {
    v8 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v7 = 0;
  }

  CircularBuffer.replaceSubrange<A>(_:with:)(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v8, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v7, a2, a5, a3, a4);
  v9 = *(*(a3 - 1) + 8);

  return v9(a2, a3);
}

uint64_t sub_1B0D650D8(uint64_t a1, uint64_t a2)
{
  CircularBuffer.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1B0D65160@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0x100000000000000;
  if (!*(a1 + 7))
  {
    v3 = 0;
  }

  return CircularBuffer.remove(at:)(v3 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, a2, a3);
}

uint64_t sub_1B0D6518C(unsigned int *a1, uint64_t a2)
{
  v2 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v2 = 0;
  }

  return CircularBuffer.removeSubrange(_:)(*a1 | (*(a1 + 2) << 32) | (*(a1 + 6) << 48) | v3, a1[2] | (*(a1 + 6) << 32) | (*(a1 + 14) << 48) | v2, a2);
}

uint64_t sub_1B0D651E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69AE8](a1, WitnessTable, a2);
}

uint64_t sub_1B0D6524C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69AF0](a1, a2, WitnessTable, a3);
}

uint64_t static CircularBuffer<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = CircularBuffer.count.getter(a1, a2, a3);
  if (v13 == CircularBuffer.count.getter(a4, a5, a6))
  {
    type metadata accessor for CircularBuffer();
    swift_getWitnessTable();
    sub_1B0E46B88();
    v14 = swift_allocObject();
    v14[2] = a7;
    v14[3] = a8;
    v14[4] = a7;
    MEMORY[0x1EEE9AC00](v14);
    sub_1B0E462D8();
    swift_getWitnessTable();
    v15 = sub_1B0E44F48();
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t CircularBuffer<A>.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[1] = a6;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = CircularBuffer.startIndex.getter(a2, a3, a4);
  v15 = CircularBuffer.endIndex.getter(a2, a3, a4);
  if ((v14 & 0xFFFFFFFFFFFFFFLL) != (v15 & 0xFFFFFFFFFFFFFFLL) || (HIBYTE(v14) != 0) != (HIBYTE(v15) != 0))
  {
    do
    {
      do
      {
        CircularBuffer.subscript.getter(a5, v13);
        v14 = CircularBuffer.index(_:offsetBy:)(v14, 1, a2, a3, a4);
        sub_1B0E447C8();
        (*(v10 + 8))(v13, a5);
        v16 = CircularBuffer.endIndex.getter(a2, a3, a4);
      }

      while ((v14 & 0xFFFFFFFFFFFFFFLL) != (v16 & 0xFFFFFFFFFFFFFFLL));
    }

    while ((HIBYTE(v14) != 0) != (HIBYTE(v16) != 0));
  }
}

uint64_t CircularBuffer<A>.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B0E46C28();
  CircularBuffer<A>.hash(into:)(v11, a1, a2, a3, a4, a5);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D657E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1B0E46C28();
  CircularBuffer<A>.hash(into:)(v7, *v3, *(v3 + 8), *(v3 + 16), *(a2 + 16), v5);
  return sub_1B0E46CB8();
}

uint64_t CircularBuffer.init(arrayLiteral:)()
{
  type metadata accessor for CircularBuffer();
  sub_1B0E45358();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B0E45848();
  return v1;
}

uint64_t sub_1B0D658F8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = CircularBuffer.init(arrayLiteral:)();
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_1B0D65928(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v2 = 0x1FFFFFF00000000;
  if (result < a2)
  {
    v2 = 0xFFFFFF00000000;
  }

  return v2 | result;
}

uint64_t sub_1B0D65954@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_1B0E469E8();
  result = MEMORY[0x1B2726E80](32, 0xE100000000000000);
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

unint64_t sub_1B0D659B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = CircularBuffer.startIndex.getter(a3, a4, a5);
  result = CircularBuffer.distance(from:to:)(v10 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v10) != 0) << 56), a1 & 0x1FFFFFFFFFFFFFFLL);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = CircularBuffer.endIndex.getter(a3, a4, a5);
    result = CircularBuffer.distance(from:to:)(a2 & 0x1FFFFFFFFFFFFFFLL, v12 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v12) != 0) << 56));
    if ((result & 0x8000000000000000) == 0)
    {
      return a3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D65A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B0E463B8();
  result = sub_1B0E463B8();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80));
    return a3;
  }

  return result;
}

uint64_t sub_1B0D65B24(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1B0E45D88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  v13 = *(v6 - 8);
  (*(v13 + 16))(&v15 - v11, a1, v6, v10);
  (*(v13 + 56))(v12, 0, 1, v6);
  sub_1B0E46498();
  result = sub_1B0E463F8();
  if (*(*v3 + 16) > a2)
  {
    return (*(v8 + 40))(*v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2, v12, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D65CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0E46408();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1B0E46498();
    return v8;
  }

  return result;
}

unint64_t sub_1B0D65DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = *v6;
  v13 = v6[1];
  v14 = v6[2];
  v15 = a6[2];
  v16 = CircularBuffer.startIndex.getter(*v6, v13, v14);
  result = CircularBuffer.distance(from:to:)(v16 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v16) != 0) << 56), a4 & 0x1FFFFFFFFFFFFFFLL);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v18 = CircularBuffer.endIndex.getter(v12, v13, v14);
    result = CircularBuffer.distance(from:to:)(a5 & 0x1FFFFFFFFFFFFFFLL, v18 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v18) != 0) << 56));
    if ((result & 0x8000000000000000) == 0)
    {
      v21[0] = a1;
      v21[1] = a2;
      v21[2] = a3;
      WitnessTable = swift_getWitnessTable();
      return CircularBuffer.replaceSubrange<A>(_:with:)(a4 & 0x1FFFFFFFFFFFFFFLL, a5 & 0x1FFFFFFFFFFFFFFLL, v21, a6, a6, WitnessTable);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D65F24@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[5];
  v5 = v1[6];
  v4();
  v6 = *(*(v3 - 8) + 56);

  return v6(a1, 0, 1, v3);
}

uint64_t sub_1B0D65FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = *(a3 + 16);
  v11 = CircularBuffer.startIndex.getter(*v3, v8, v9);
  v12 = CircularBuffer.index(_:offsetBy:)(v11, a2, v7, v8, v9);

  return sub_1B0D65B24(a1, v12, a3);
}

uint64_t sub_1B0D66070()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B0E44A28() & 1;
}

uint64_t sub_1B0D6609C(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_1B0D662D4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0D66310()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B0D6634C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 8))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 7);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B0D663A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 1;
    }
  }

  return result;
}

uint64_t Command.hash(into:)(uint64_t a1)
{
  v320 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v317 = *(v1 - 8);
  v318 = v1;
  v2 = *(v317 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v314 = &v303 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v306 = &v303 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v310 = &v303 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v307 = &v303 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v311 = &v303 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v305 = &v303 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v312 = &v303 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v304 = &v303 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v309 = &v303 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v303 = &v303 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v308 = &v303 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v315 = *(v25 - 8);
  v316 = v25;
  v26 = *(v315 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v313 = &v303 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v303 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v303 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v303 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v303 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v303 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v303 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v303 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v303 - v51;
  v53 = type metadata accessor for Command();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v303 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0D73230(v319, v56, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v180 = *v56;
      v145 = *(v56 + 2);
      v146 = 4;
      goto LABEL_83;
    case 2u:
      v159 = *v56;
      v160 = *(v56 + 2);
      v161 = *(v56 + 2);
      v162 = 5;
      goto LABEL_50;
    case 3u:
      v167 = *(v56 + 3);
      *&v322[16] = *(v56 + 2);
      v323 = v167;
      v168 = *(v56 + 9);
      v324 = *(v56 + 8);
      v169 = *(v56 + 1);
      v321 = *v56;
      *v322 = v169;
      v170 = *(v56 + 20);
      v172 = *(v56 + 11);
      v171 = *(v56 + 12);
      v173 = *(v56 + 26) | ((*(v56 + 54) | (v56[110] << 16)) << 32);
      v174 = v56[111];
      v318 = *(v56 + 14);
      v319 = v171;
      v175 = v320;
      MEMORY[0x1B2728D70](6);
      v176 = v324;
      if (v324)
      {
        v313 = *&v322[8];
        v314 = *v322;
        v177 = v322[16];
        v316 = v323;
        v317 = *&v322[24];
        v315 = *(&v323 + 1);
        sub_1B0E46C68();
        if (v177 == 255)
        {
          MEMORY[0x1B2728D70](0);
        }

        else
        {
          MEMORY[0x1B2728D70](1);
          if (v177)
          {
            MEMORY[0x1B2728D70](1);
            _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          }

          else
          {
            MEMORY[0x1B2728D70](0);
          }

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          sub_1B0D498DC(v175, v317, v316, v315);
        }

        sub_1B0D4704C(v175, v176);
      }

      else
      {
        sub_1B0E46C68();
      }

      MEMORY[0x1B2728D70](v170 | (v170 << 32));

      if (v174)
      {
        MEMORY[0x1B2728D70](1);
        MEMORY[0x1B2728D70](*(v172 + 16));
        v294 = *(v172 + 16);
        if (v294)
        {
          v295 = (v172 + 54);
          do
          {
            v296 = *(v295 - 22);
            v297 = *(v295 - 14);
            v298 = *(v295 - 10);
            v299 = *(v295 - 1);
            v300 = *v295;
            v295 += 24;
            swift_beginAccess();
            v301 = *(v296 + 24);
            v175 = v320;
            sub_1B0E46C38();
            --v294;
          }

          while (v294);
        }
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        swift_beginAccess();
        v302 = *(v172 + 24) + ((v173 >> 24) & 0xFFFF00 | BYTE6(v173));
        sub_1B0E46C38();
      }

      sub_1B0D46C34(v175, v318);
      sub_1B0D3C8FC(v172, v319, v173, v174);
      sub_1B0398EFC(&v321, &qword_1EB6E7268, &qword_1B0EF1248);
      goto LABEL_84;
    case 4u:
      v123 = *v56;
      v124 = *(v56 + 1);
      v125 = *(v56 + 4);
      v126 = *(v56 + 3);
      v127 = *(v56 + 4);
      v128 = *(v56 + 10) | ((*(v56 + 22) | (v56[46] << 16)) << 32);
      v129 = v56[47];
      v319 = *(v56 + 6);
      v130 = v320;
      MEMORY[0x1B2728D70](7);
      sub_1B0D46950(v130, v123);

      MEMORY[0x1B2728D70](v125 | (v125 << 32));

      v318 = v128;
      if (v129)
      {
        v131 = v127;
        MEMORY[0x1B2728D70](1);
        MEMORY[0x1B2728D70](*(v126 + 16));
        v132 = *(v126 + 16);
        if (v132)
        {
          v133 = (v126 + 54);
          do
          {
            v134 = *(v133 - 22);
            v135 = *(v133 - 14);
            v136 = *(v133 - 10);
            v137 = *(v133 - 1);
            v138 = *v133;
            v133 += 24;
            swift_beginAccess();
            v139 = *(v134 + 24) + (v138 | (v137 << 8));
            v130 = v320;
            sub_1B0E46C38();
            --v132;
          }

          while (v132);
        }
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        swift_beginAccess();
        v274 = *(v126 + 24) + ((v128 >> 24) & 0xFFFF00 | BYTE6(v128));
        v131 = v127;
        sub_1B0E46C38();
      }

      sub_1B0D46C34(v130, v319);
      sub_1B0D3C8FC(v126, v131, v318, v129);
      goto LABEL_84;
    case 5u:
      v194 = *v56;
      v195 = *(v56 + 2);
      v196 = *(v56 + 2);
      v197 = *(v56 + 6);
      v198 = *(v56 + 7);
      v199 = *(v56 + 18);
      v200 = v56[38];
      MEMORY[0x1B2728D70](8);
      MEMORY[0x1B2728D70](v195 | (v195 << 32));

      swift_beginAccess();
      v201 = *(v196 + 24) + (v200 | (v199 << 8));
      sub_1B0E46C38();

    case 6u:
      v208 = *v56;
      v209 = *(v56 + 2);
      v210 = *(v56 + 2);
      v211 = *(v56 + 6);
      v212 = *(v56 + 4);
      v213 = *(v56 + 5);
      v214 = *(v56 + 6);
      v215 = v320;
      MEMORY[0x1B2728D70](9);
      MEMORY[0x1B2728D70](v209 | (v209 << 32));

      MEMORY[0x1B2728D70](v211 | (v211 << 32));

      sub_1B0D3B080(v215, v213, v214);

    case 7u:
      v178 = *v56;
      v160 = *(v56 + 2);
      v161 = *(v56 + 2);
      v162 = 10;
LABEL_50:
      v179 = v320;
      MEMORY[0x1B2728D70](v162);
      MEMORY[0x1B2728D70](v160 | (v160 << 32));

      sub_1B0D47258(v179, v161);
      goto LABEL_84;
    case 8u:
      v220 = *v56;
      v221 = *(v56 + 2);
      v222 = *(v56 + 2);
      v223 = v320;
      MEMORY[0x1B2728D70](11);
      MEMORY[0x1B2728D70](v221 | (v221 << 32));

      sub_1B0CEFC84(v223, v222);
      goto LABEL_84;
    case 9u:
      v144 = *v56;
      v145 = *(v56 + 2);
      v146 = 12;
      goto LABEL_83;
    case 0xAu:
      v219 = *v56;
      v145 = *(v56 + 2);
      v146 = 13;
      goto LABEL_83;
    case 0xBu:
      v114 = *v56;
      v115 = *(v56 + 1);
      v116 = *(v56 + 2);
      v117 = *(v56 + 3);
      v118 = v56[38];
      v119 = *(v56 + 18);
      v120 = *(v56 + 8);
      MEMORY[0x1B2728D70](14);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      if (!v116)
      {
        return sub_1B0E46C68();
      }

      v121 = v120 | ((v119 | (v118 << 16)) << 32);
      sub_1B0E46C68();
      swift_beginAccess();
      v122 = *(v116 + 24) + ((v121 >> 24) & 0xFFFF00 | BYTE6(v121));
      goto LABEL_30;
    case 0xCu:
      v140 = *v56;
      v141 = *(v56 + 1);
      v142 = *(v56 + 2);
      v143 = *(v56 + 3);
      MEMORY[0x1B2728D70](15);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      goto LABEL_84;
    case 0xDu:
      v206 = *v56;
      v207 = v320;
      MEMORY[0x1B2728D70](20);
      sub_1B0CEFE18(v207, v206);
      goto LABEL_84;
    case 0xEu:
      v108 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48)];
      v109 = *v108;
      v110 = *(v108 + 2);
      sub_1B03C60A4(v56, v52, &qword_1EB6E4050, &unk_1B0EC2B20);
      MEMORY[0x1B2728D70](23);
      sub_1B03B5C80(v52, v49, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((*(v315 + 48))(v49, 1, v316) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v272 = v49;
        v273 = v313;
        sub_1B03C60A4(v272, v313, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v273, &qword_1EB6E4040, &qword_1B0EC2B10);
      }

      MEMORY[0x1B2728D70](v110 | (v110 << 32));

      v269 = &qword_1EB6E4050;
      v270 = &unk_1B0EC2B20;
      v271 = v52;
      return sub_1B0398EFC(v271, v269, v270);
    case 0xFu:
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7260, &qword_1B0EF1240);
      v164 = *&v56[*(v163 + 48)];
      v165 = *&v56[*(v163 + 64)];
      sub_1B03C60A4(v56, v46, &qword_1EB6E4050, &unk_1B0EC2B20);
      v166 = v320;
      MEMORY[0x1B2728D70](24);
      sub_1B03B5C80(v46, v43, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((*(v315 + 48))(v43, 1, v316) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v276 = v313;
        sub_1B03C60A4(v43, v313, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v276, &qword_1EB6E4040, &qword_1B0EC2B10);
      }

      MEMORY[0x1B2728D70](*(v164 + 16));
      v277 = *(v164 + 16);
      if (v277)
      {
        v278 = (v164 + 32);
        do
        {
          v279 = *v278;
          v280 = v278[1];
          *&v322[13] = *(v278 + 29);
          v321 = v279;
          *v322 = v280;
          sub_1B0CF21A0(&v321, v325);
          FetchAttribute.hash(into:)(v166);
          sub_1B0CF21FC(&v321);
          v278 = (v278 + 40);
          --v277;
        }

        while (v277);
      }

      sub_1B0D46218(v166, v165);

      v269 = &qword_1EB6E4050;
      v270 = &unk_1B0EC2B20;
      goto LABEL_123;
    case 0x10u:
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7258, &qword_1B0EF1238);
      v103 = *&v56[*(v102 + 48)];
      v104 = &v56[*(v102 + 64)];
      v105 = *v104;
      v106 = v104[1];
      sub_1B03C60A4(v56, v40, &qword_1EB6E4050, &unk_1B0EC2B20);
      v107 = v320;
      MEMORY[0x1B2728D70](25);
      sub_1B03B5C80(v40, v37, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((*(v315 + 48))(v37, 1, v316) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v268 = v313;
        sub_1B03C60A4(v37, v313, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v268, &qword_1EB6E4040, &qword_1B0EC2B10);
      }

      sub_1B0D45B34(v107, v103);

      StoreData.hash(into:)(v107, v105, v106);
      sub_1B0D72504();
      v269 = &qword_1EB6E4050;
      v270 = &unk_1B0EC2B20;
      v271 = v40;
      return sub_1B0398EFC(v271, v269, v270);
    case 0x11u:
      v154 = *v56;
      v187 = *(v56 + 1);
      v157 = *(v56 + 2);
      v156 = *(v56 + 3);
      v158 = 26;
      goto LABEL_54;
    case 0x12u:
      v216 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48)];
      v217 = *v216;
      v218 = *(v216 + 2);
      sub_1B03C60A4(v56, v34, &qword_1EB6E4050, &unk_1B0EC2B20);
      MEMORY[0x1B2728D70](27);
      sub_1B03B5C80(v34, v31, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((*(v315 + 48))(v31, 1, v316) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v282 = v313;
        sub_1B03C60A4(v31, v313, &qword_1EB6E4040, &qword_1B0EC2B10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v282, &qword_1EB6E4040, &qword_1B0EC2B10);
      }

      MEMORY[0x1B2728D70](v218 | (v218 << 32));

      v269 = &qword_1EB6E4050;
      v270 = &unk_1B0EC2B20;
      goto LABEL_114;
    case 0x13u:
      v244 = *v56;
      v245 = *(v56 + 1);
      v246 = *(v56 + 2);
      v247 = v320;
      MEMORY[0x1B2728D70](28);
      sub_1B0CF00E0(v247, v245, v246);

    case 0x14u:
      v190 = *v56;
      v189 = *(v56 + 1);
      v191 = *(v56 + 2);
      v192 = v56[24];
      MEMORY[0x1B2728D70](30);
      MEMORY[0x1B2728D70](v190);
      if (v192 == 1)
      {
        return sub_1B0E46C68();
      }

      sub_1B0E46C68();
      MEMORY[0x1B2728D70](v189);
      return MEMORY[0x1B2728D70](v191);
    case 0x15u:
      v202 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48)];
      v203 = *v202;
      v204 = *(v202 + 2);
      v34 = v308;
      sub_1B03C60A4(v56, v308, &qword_1EB6E3EB0, &unk_1B0EC2010);
      MEMORY[0x1B2728D70](31);
      v205 = v303;
      sub_1B03B5C80(v34, v303, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((*(v317 + 48))(v205, 1, v318) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v281 = v314;
        sub_1B03C60A4(v205, v314, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v281, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      MEMORY[0x1B2728D70](v204 | (v204 << 32));

      goto LABEL_111;
    case 0x16u:
      v240 = &v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48)];
      v241 = *v240;
      v242 = *(v240 + 2);
      v46 = v309;
      sub_1B03C60A4(v56, v309, &qword_1EB6E3EB0, &unk_1B0EC2010);
      MEMORY[0x1B2728D70](32);
      v243 = v304;
      sub_1B03B5C80(v46, v304, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((*(v317 + 48))(v243, 1, v318) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v283 = v314;
        sub_1B03C60A4(v243, v314, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v283, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      MEMORY[0x1B2728D70](v242 | (v242 << 32));
      goto LABEL_122;
    case 0x17u:
      v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7240, &qword_1B0EF1220);
      v249 = *&v56[*(v248 + 48)];
      v250 = *&v56[*(v248 + 64)];
      v46 = v312;
      sub_1B03C60A4(v56, v312, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v251 = v320;
      MEMORY[0x1B2728D70](33);
      v252 = v305;
      sub_1B03B5C80(v46, v305, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((*(v317 + 48))(v252, 1, v318) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v284 = v314;
        sub_1B03C60A4(v252, v314, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v284, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      MEMORY[0x1B2728D70](*(v249 + 16));
      v285 = *(v249 + 16);
      if (v285)
      {
        v286 = (v249 + 32);
        do
        {
          v287 = *v286;
          v288 = v286[1];
          *&v322[13] = *(v286 + 29);
          v321 = v287;
          *v322 = v288;
          sub_1B0CF21A0(&v321, v325);
          FetchAttribute.hash(into:)(v251);
          sub_1B0CF21FC(&v321);
          v286 = (v286 + 40);
          --v285;
        }

        while (v285);
      }

      sub_1B0D46218(v251, v250);
LABEL_122:

      v269 = &qword_1EB6E3EB0;
      v270 = &unk_1B0EC2010;
LABEL_123:
      v271 = v46;
      return sub_1B0398EFC(v271, v269, v270);
    case 0x18u:
      v154 = *v56;
      v155 = *(v56 + 1);
      v157 = *(v56 + 2);
      v156 = *(v56 + 3);
      v158 = 34;
LABEL_54:
      v188 = v320;
      MEMORY[0x1B2728D70](v158);
      SearchKey.hash(into:)(v188, v154);
      sub_1B0E46C68();
      if (v157)
      {
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      sub_1B0D453B4(v188, v156);
      sub_1B0B239C8(v154);
      goto LABEL_84;
    case 0x19u:
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7238, &qword_1B0EF1218);
      v148 = *&v56[*(v147 + 48)];
      v149 = &v56[*(v147 + 64)];
      v150 = *v149;
      v151 = v149[1];
      v34 = v311;
      sub_1B03C60A4(v56, v311, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v152 = v320;
      MEMORY[0x1B2728D70](35);
      v153 = v307;
      sub_1B03B5C80(v34, v307, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((*(v317 + 48))(v153, 1, v318) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v275 = v314;
        sub_1B03C60A4(v153, v314, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v275, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      sub_1B0D45B34(v152, v148);

      StoreData.hash(into:)(v152, v150, v151);
      sub_1B0D72504();
LABEL_111:
      v269 = &qword_1EB6E3EB0;
      v270 = &unk_1B0EC2010;
LABEL_114:
      v271 = v34;
      return sub_1B0398EFC(v271, v269, v270);
    case 0x1Au:
      v266 = v310;
      sub_1B03C60A4(v56, v310, &qword_1EB6E3EB0, &unk_1B0EC2010);
      MEMORY[0x1B2728D70](36);
      v267 = v306;
      sub_1B03B5C80(v266, v306, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((*(v317 + 48))(v267, 1, v318) == 1)
      {
        MEMORY[0x1B2728D70](1);
      }

      else
      {
        v289 = v314;
        sub_1B03C60A4(v267, v314, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MEMORY[0x1B2728D70](0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        sub_1B0B0D328();
        sub_1B0E447C8();
        sub_1B0398EFC(v289, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }

      v269 = &qword_1EB6E3EB0;
      v270 = &unk_1B0EC2010;
      v271 = v266;
      return sub_1B0398EFC(v271, v269, v270);
    case 0x1Bu:
      v85 = *v56;
      v86 = *(v56 + 2);
      v87 = *(v56 + 3);
      v88 = *(v56 + 10);
      v89 = v56[22];
      MEMORY[0x1B2728D70](37);
      swift_beginAccess();
      v90 = *(v85 + 24) + (v89 | (v88 << 8));
LABEL_30:
      sub_1B0E46C38();

    case 0x1Cu:
      v253 = *v56;
      v145 = *(v56 + 2);
      v146 = 38;
LABEL_83:
      MEMORY[0x1B2728D70](v146);
      MEMORY[0x1B2728D70](v145 | (v145 << 32));
      goto LABEL_84;
    case 0x1Du:
      v254 = *v56;
      v255 = *(v56 + 2);
      v256 = *(v56 + 3);
      v257 = *(v56 + 10);
      v258 = v56[22];
      v259 = *(v56 + 3);
      MEMORY[0x1B2728D70](39);
      swift_beginAccess();
      v260 = *(v254 + 24) + (v258 | (v257 << 8));
      sub_1B0E46C38();
      MEMORY[0x1B2728D70](*(v259 + 16));
      v261 = *(v259 + 16);
      if (v261)
      {
        v262 = (v259 + 48);
        do
        {
          v264 = *(v262 - 2);
          v263 = *(v262 - 1);
          v265 = *v262;
          v262 += 3;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          MEMORY[0x1B2728D70](v265);

          --v261;
        }

        while (v261);
      }

      goto LABEL_84;
    case 0x1Eu:
      v224 = *v56;
      v225 = *(v56 + 1);
      v226 = *(v56 + 4);
      v227 = *(v56 + 3);
      v228 = v320;
      MEMORY[0x1B2728D70](40);
      sub_1B0D44C38(v228, v224);

      MEMORY[0x1B2728D70](v226 | (v226 << 32));

      MEMORY[0x1B2728D70](*(v227 + 16));
      v229 = *(v227 + 16);
      if (v229)
      {
        v230 = (v227 + 54);
        do
        {
          v231 = *(v230 - 22);
          v232 = *(v230 - 14);
          v233 = *(v230 - 10);
          v234 = *(v230 - 1);
          v235 = *v230;
          v230 += 24;
          swift_beginAccess();
          v236 = *(v231 + 24) + (v235 | (v234 << 8));
          sub_1B0E46C38();
          --v229;
        }

        while (v229);
      }

      goto LABEL_84;
    case 0x1Fu:
      v181 = *v56;
      v182 = *(v56 + 2);
      v183 = *(v56 + 2);
      v184 = *(v56 + 3);
      v185 = *(v56 + 4);
      v186 = v320;
      MEMORY[0x1B2728D70](41);
      MEMORY[0x1B2728D70](v182 | (v182 << 32));

      sub_1B0D3AC68(v186, v184, v185);

    case 0x20u:
      v237 = *(v56 + 1);
      v321 = *v56;
      *v322 = v237;
      v238 = *(v56 + 3);
      *&v322[16] = *(v56 + 2);
      v323 = v238;
      v239 = v320;
      MEMORY[0x1B2728D70](42);
      ExtendedSearchOptions.hash(into:)(v239);
      return sub_1B0D724B0(&v321);
    case 0x21u:
      v111 = *v56;
      v112 = *(v56 + 2);
      v113 = *(v56 + 2);
      MEMORY[0x1B2728D70](43);
      sub_1B0E46C68();
      if (v111)
      {
        MEMORY[0x1B2728D70](v112 | (v112 << 32));
      }

      MEMORY[0x1B2728D70](*(v113 + 16));
      v290 = *(v113 + 16);
      if (v290)
      {
        v291 = (v113 + 40);
        do
        {
          v292 = *(v291 - 1);
          v293 = *v291;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v291 += 2;
          --v290;
        }

        while (v290);
      }

      goto LABEL_84;
    case 0x22u:
      v91 = *v56;
      MEMORY[0x1B2728D70](44);
      MEMORY[0x1B2728D70](*(v91 + 16));
      v92 = *(v91 + 16);
      if (v92)
      {
        v93 = 0;
        do
        {
          v94 = *(v91 + v93 + 32);
          v95 = *(v91 + v93 + 40);
          v96 = *(v91 + v93 + 44);
          v97 = *(v91 + v93 + 52);
          v98 = *(v91 + v93 + 54);
          v99 = *(v91 + v93 + 56);
          v100 = *(v91 + v93 + 64);
          swift_beginAccess();
          v101 = *(v94 + 24) + (v98 | (v97 << 8));
          sub_1B0E46C38();

          swift_bridgeObjectRetain_n();
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          swift_bridgeObjectRelease_n();
          v93 += 40;
          --v92;
        }

        while (v92);
      }

      goto LABEL_84;
    case 0x23u:
      v74 = *v56;
      MEMORY[0x1B2728D70](45);
      MEMORY[0x1B2728D70](*(v74 + 16));
      v75 = *(v74 + 16);
      if (v75)
      {
        v76 = (v74 + 54);
        do
        {
          v77 = *(v76 - 22);
          v78 = *(v76 - 14);
          v79 = *(v76 - 10);
          v80 = *(v76 - 1);
          v81 = *v76;
          v76 += 24;
          swift_beginAccess();
          v82 = *(v77 + 24) + (v81 | (v80 << 8));
          sub_1B0E46C38();
          --v75;
        }

        while (v75);
      }

      goto LABEL_84;
    case 0x24u:
      v83 = *v56;
      v84 = *(v56 + 1);
      MEMORY[0x1B2728D70](46);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      goto LABEL_84;
    case 0x25u:
      v62 = *v56;
      v63 = *(v56 + 1);
      v64 = *(v56 + 2);
      MEMORY[0x1B2728D70](47);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      MEMORY[0x1B2728D70](*(v64 + 16));
      v65 = *(v64 + 16);
      if (v65)
      {
        v66 = (v64 + 48);
        do
        {
          v70 = *(v66 - 2);
          v69 = *(v66 - 1);
          v71 = *(v66 + 6);
          v72 = *(v66 + 2);
          v73 = *v66;
          if (v70 < 0)
          {
            MEMORY[0x1B2728D70](1);
            v67 = ((v70 & 0x7FFFFFFFFFFFFFFFLL) + 24);
          }

          else
          {
            MEMORY[0x1B2728D70](0);
            v67 = (v70 + 24);
          }

          swift_beginAccess();
          v68 = *v67;
          sub_1B0E46C38();
          v66 += 6;
          --v65;
        }

        while (v65);
      }

      goto LABEL_84;
    case 0x26u:
      v61 = 0;
      goto LABEL_93;
    case 0x27u:
      v61 = 1;
      goto LABEL_93;
    case 0x28u:
      v61 = 2;
      goto LABEL_93;
    case 0x29u:
      v61 = 16;
      goto LABEL_93;
    case 0x2Au:
      v61 = 17;
      goto LABEL_93;
    case 0x2Bu:
      v61 = 18;
      goto LABEL_93;
    case 0x2Cu:
      v61 = 19;
      goto LABEL_93;
    case 0x2Du:
      v61 = 21;
      goto LABEL_93;
    case 0x2Eu:
      v61 = 22;
      goto LABEL_93;
    case 0x2Fu:
      v61 = 29;
LABEL_93:
      result = MEMORY[0x1B2728D70](v61);
      break;
    default:
      v57 = *v56;
      v58 = *(v56 + 2);
      v59 = *(v56 + 2);
      v60 = v320;
      MEMORY[0x1B2728D70](3);
      MEMORY[0x1B2728D70](v58 | (v58 << 32));

      sub_1B0D48094(v60, v59);
LABEL_84:

      break;
  }

  return result;
}

uint64_t Command.hashValue.getter()
{
  sub_1B0E46C28();
  Command.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D681B4()
{
  sub_1B0E46C28();
  Command.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D681F8()
{
  sub_1B0E46C28();
  Command.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D68278(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v203[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v203[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v203[-v12];
  v14 = type metadata accessor for Command();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v203[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0D73230(a1, v17, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_72;
    case 2u:
      goto LABEL_56;
    case 3u:
      v114 = *(v17 + 48);
      v207 = *(v17 + 32);
      v208 = v114;
      v115 = *(v17 + 72);
      v209 = *(v17 + 64);
      v116 = *(v17 + 16);
      v205 = *v17;
      v206 = v116;
      v117 = *(v17 + 80);
      v118 = *(v17 + 88);
      v119 = *(v17 + 96);
      v120 = *(v17 + 104) | ((*(v17 + 108) | (*(v17 + 110) << 16)) << 32);
      v204 = *(v17 + 111);
      v121 = v204;
      v28 = sub_1B0D69A40(&v205, v115, v117, v118, v119, v120 | (v204 << 56), *(v17 + 112));

      sub_1B0D3C8FC(v118, v119, v120, v121);

      sub_1B0398EFC(&v205, &qword_1EB6E7268, &qword_1B0EF1248);
      return v28;
    case 4u:
      v69 = *v17;
      v70 = *(v17 + 8);
      v71 = *(v17 + 16);
      v72 = *(v17 + 24);
      v73 = *(v17 + 32);
      v74 = *(v17 + 40) | ((*(v17 + 44) | (*(v17 + 46) << 16)) << 32);
      v75 = *(v17 + 47);
      v76 = *(v17 + 48);
      LOBYTE(v205) = v75;
      v28 = sub_1B0D6A01C(v69, v70, v71, v72, v73, v74 | (v75 << 56), v76);

      sub_1B0D3C8FC(v72, v73, v74, v75);

      goto LABEL_103;
    case 5u:
      v68 = sub_1B0D6A3F8(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32) | (*(v17 + 36) << 32) | (*(v17 + 38) << 48));
      goto LABEL_87;
    case 6u:
      v28 = sub_1B0D6A530(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32), *(v17 + 40), *(v17 + 48));

      return v28;
    case 7u:
      v122 = *v17;
      v17 = *(v17 + 16);
      v123 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x205443454C4553, 0xE700000000000000, (v1 + 8), *(v1 + 20));
      if (v124)
      {
        v125._countAndFlagsBits = 0x205443454C4553;
        v125._object = 0xE700000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v125, v123);
      }

      v126 = result;
      v127 = *(v1 + 20);
      v23 = __CFADD__(v127, result);
      v128 = v127 + result;
      if (v23)
      {
        goto LABEL_168;
      }

      *(v1 + 20) = v128;
      result = sub_1B0DD59A4(v122);
      v109 = __OFADD__(v126, result);
      v129 = v126 + result;
      if (v109)
      {
        goto LABEL_177;
      }

      v1 = sub_1B0E26690(v17);

      result = v129 + v1;
      if (!__OFADD__(v129, v1))
      {
        return result;
      }

      __break(1u);
LABEL_72:
      v17 = *v17;
      v130 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x204554454C4544, 0xE700000000000000, (v1 + 8), *(v1 + 20));
      if (v131)
      {
        v132._countAndFlagsBits = 0x204554454C4544;
        v132._object = 0xE700000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v132, v130);
      }

      v133 = result;
      v134 = *(v1 + 20);
      v23 = __CFADD__(v134, result);
      v135 = v134 + result;
      if (v23)
      {
        goto LABEL_169;
      }

      *(v1 + 20) = v135;
      v136 = sub_1B0DD59A4(v17);

      result = v133 + v136;
      if (!__OFADD__(v133, v136))
      {
        return result;
      }

      __break(1u);
LABEL_78:
      v28 = sub_1B0D6C9F8(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32));

      return v28;
    case 8u:
      goto LABEL_100;
    case 9u:
      v17 = *v17;
      v11 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x4249524353425553, 0xEA00000000002045, (v1 + 8), *(v1 + 20));
      if (v80)
      {
        v81._countAndFlagsBits = 0x4249524353425553;
        v81._object = 0xEA00000000002045;
        result = ByteBuffer._setStringSlowpath(_:at:)(v81, v11);
      }

      v82 = result;
      v83 = *(v1 + 20);
      v23 = __CFADD__(v83, result);
      v84 = v83 + result;
      if (v23)
      {
        goto LABEL_165;
      }

      *(v1 + 20) = v84;
      v85 = sub_1B0DD59A4(v17);

      result = v82 + v85;
      if (!__OFADD__(v82, v85))
      {
        return result;
      }

      __break(1u);
LABEL_48:
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7238, &qword_1B0EF1218);
      v87 = *(v17 + *(v86 + 48));
      v88 = (v17 + *(v86 + 64));
      v89 = *v88;
      v90 = v88[1];
      v55 = &qword_1EB6E3EB0;
      v56 = &unk_1B0EC2010;
      sub_1B03C60A4(v17, v11, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v57 = sub_1B0D6BD3C(v11, v87, v89, v90);

      sub_1B0D72504();
      v58 = v11;
LABEL_49:
      v91 = v55;
      v92 = v56;
      goto LABEL_138;
    case 0xAu:
      v17 = *v17;
      v146 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x5243534255534E55, 0xEC00000020454249, (v1 + 8), *(v1 + 20));
      if (v147)
      {
        v148._countAndFlagsBits = 0x5243534255534E55;
        v148._object = 0xEC00000020454249;
        result = ByteBuffer._setStringSlowpath(_:at:)(v148, v146);
      }

      v149 = result;
      v150 = *(v1 + 20);
      v23 = __CFADD__(v150, result);
      v151 = v150 + result;
      if (v23)
      {
        goto LABEL_170;
      }

      *(v1 + 20) = v151;
      v152 = sub_1B0DD59A4(v17);

      result = v149 + v152;
      if (!__OFADD__(v149, v152))
      {
        return result;
      }

      __break(1u);
LABEL_100:
      v18 = sub_1B0D6B0A8(*v17, *(v17 + 8), *(v17 + 16));
      goto LABEL_101;
    case 0xBu:
      v68 = sub_1B0D6B21C(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32) | ((*(v17 + 36) | (*(v17 + 38) << 16)) << 32));
LABEL_87:
      v57 = v68;

      return v57;
    case 0xCu:
      goto LABEL_41;
    case 0xDu:
      v28 = sub_1B0D6B6BC(*v17);
      goto LABEL_103;
    case 0xEu:
      goto LABEL_32;
    case 0xFu:
      goto LABEL_63;
    case 0x10u:
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7258, &qword_1B0EF1238);
      v51 = *(v17 + *(v50 + 48));
      v52 = (v17 + *(v50 + 64));
      v53 = *v52;
      v54 = v52[1];
      v55 = &qword_1EB6E4050;
      v56 = &unk_1B0EC2B20;
      sub_1B03C60A4(v17, v6, &qword_1EB6E4050, &unk_1B0EC2B20);
      v57 = sub_1B0D6B9E4(v6, v51, v53, v54);

      sub_1B0D72504();
      v58 = v6;
      goto LABEL_49;
    case 0x11u:
      v137 = *v17;
      v28 = sub_1B0D6C050(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));

      sub_1B0B239C8(v137);
      return v28;
    case 0x12u:
      v145 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48);
      v63 = *v145;
      v64 = *(v145 + 8);
      v65 = &qword_1EB6E4050;
      v66 = &unk_1B0EC2B20;
      sub_1B03C60A4(v17, v6, &qword_1EB6E4050, &unk_1B0EC2B20);
      v67 = 1163284301;
      goto LABEL_92;
    case 0x13u:
      goto LABEL_124;
    case 0x14u:
      return sub_1B0D6D164(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));
    case 0x15u:
      v141 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48);
      v142 = *v141;
      v143 = *(v141 + 8);
      v65 = &qword_1EB6E3EB0;
      v66 = &unk_1B0EC2010;
      sub_1B03C60A4(v17, v11, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v144 = 0x59504F4320444955;
      goto LABEL_118;
    case 0x16u:
      goto LABEL_117;
    case 0x17u:
      goto LABEL_135;
    case 0x18u:
      v93 = *v17;
      v94 = *(v17 + 8);
      v95 = *(v17 + 16);
      v17 = *(v17 + 24);
      v96 = *(v1 + 20);
      result = sub_1B0CFC1B0(541346133, 0xE400000000000000, (v1 + 8), *(v1 + 20));
      if (v97)
      {
        v98._countAndFlagsBits = 541346133;
        v98._object = 0xE400000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v98, v96);
      }

      v99 = result;
      v100 = *(v1 + 20);
      v23 = __CFADD__(v100, result);
      v101 = v100 + result;
      if (v23)
      {
        goto LABEL_166;
      }

      *(v1 + 20) = v101;
      v1 = sub_1B0D6C050(v93, v94, v95, v17);

      sub_1B0B239C8(v93);
      result = v99 + v1;
      if (!__OFADD__(v99, v1))
      {
        return result;
      }

      __break(1u);
LABEL_56:
      v102 = *v17;
      v17 = *(v17 + 16);
      v103 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x20454E494D415845, 0xE800000000000000, (v1 + 8), *(v1 + 20));
      if (v104)
      {
        v105._countAndFlagsBits = 0x20454E494D415845;
        v105._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v105, v103);
      }

      v106 = result;
      v107 = *(v1 + 20);
      v23 = __CFADD__(v107, result);
      v108 = v107 + result;
      if (v23)
      {
        goto LABEL_167;
      }

      *(v1 + 20) = v108;
      result = sub_1B0DD59A4(v102);
      v109 = __OFADD__(v106, result);
      v6 = (v106 + result);
      if (v109)
      {
        goto LABEL_176;
      }

      v110 = sub_1B0E26690(v17);

      result = &v6[v110];
      if (!__OFADD__(v6, v110))
      {
        return result;
      }

      __break(1u);
LABEL_63:
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7260, &qword_1B0EF1240);
      v112 = *(v17 + *(v111 + 48));
      v113 = *(v17 + *(v111 + 64));
      v65 = &qword_1EB6E4050;
      v66 = &unk_1B0EC2B20;
      sub_1B03C60A4(v17, v6, &qword_1EB6E4050, &unk_1B0EC2B20);
      v57 = sub_1B0D6B89C(v6, v112, v113, 0x204843544546, 0xE600000000000000, sub_1B0E1F248);

LABEL_93:

      v58 = v6;
      goto LABEL_137;
    case 0x19u:
      goto LABEL_48;
    case 0x1Au:
      goto LABEL_152;
    case 0x1Bu:
      v39 = *v17;
      v40 = *(v17 + 8);
      v41 = *(v17 + 16);
      v42 = *(v17 + 20);
      v43 = *(v17 + 22);
      v44 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x41544F5551544547, 0xE900000000000020, (v1 + 8), *(v1 + 20));
      if (v45)
      {
        v46._countAndFlagsBits = 0x41544F5551544547;
        v46._object = 0xE900000000000020;
        result = ByteBuffer._setStringSlowpath(_:at:)(v46, v44);
      }

      v17 = result;
      v47 = *(v1 + 20);
      v23 = __CFADD__(v47, result);
      v48 = v47 + result;
      if (v23)
      {
        goto LABEL_164;
      }

      *(v1 + 20) = v48;
      v49 = sub_1B0D4B6B8(v39, v40, v41 | (v42 << 32) | (v43 << 48));

      result = v17 + v49;
      if (!__OFADD__(v17, v49))
      {
        return result;
      }

      __break(1u);
LABEL_25:
      v28 = sub_1B0D6CD9C(*v17);
      goto LABEL_103;
    case 0x1Cu:
      v17 = *v17;
      v183 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x41544F5551544547, 0xED000020544F4F52, (v1 + 8), *(v1 + 20));
      if (v184)
      {
        v185._countAndFlagsBits = 0x41544F5551544547;
        v185._object = 0xED000020544F4F52;
        result = ByteBuffer._setStringSlowpath(_:at:)(v185, v183);
      }

      v186 = result;
      v187 = *(v1 + 20);
      v23 = __CFADD__(v187, result);
      v188 = v187 + result;
      if (v23)
      {
        goto LABEL_173;
      }

      *(v1 + 20) = v188;
      v189 = sub_1B0DD59A4(v17);

      result = v186 + v189;
      if (!__OFADD__(v186, v189))
      {
        return result;
      }

      __break(1u);
LABEL_146:
      v28 = sub_1B0D6C354(*v17, *(v17 + 8), *(v17 + 16) | (*(v17 + 20) << 32) | (*(v17 + 22) << 48), *(v17 + 24));

      goto LABEL_103;
    case 0x1Du:
      goto LABEL_146;
    case 0x1Eu:
      v28 = sub_1B0D6C65C(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));

      goto LABEL_102;
    case 0x1Fu:
      goto LABEL_78;
    case 0x20u:
      v153 = *(v17 + 16);
      v205 = *v17;
      v206 = v153;
      v154 = *(v17 + 48);
      v207 = *(v17 + 32);
      v208 = v154;
      v155 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x48435241455345, 0xE700000000000000, (v1 + 8), *(v1 + 20));
      if (v156)
      {
        v157._countAndFlagsBits = 0x48435241455345;
        v157._object = 0xE700000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v157, v155);
      }

      v158 = result;
      v159 = *(v1 + 20);
      v23 = __CFADD__(v159, result);
      v160 = v159 + result;
      if (v23)
      {
        goto LABEL_171;
      }

      *(v1 + 20) = v160;
      v1 = sub_1B0D82230(&v205);
      sub_1B0D724B0(&v205);
      result = v158 + v1;
      if (!__OFADD__(v158, v1))
      {
        return result;
      }

      __break(1u);
LABEL_112:
      v11 = 0x5443454C45534E55;
      v17 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x5443454C45534E55, 0xE800000000000000, (v1 + 8), *(v1 + 20));
      if (v161)
      {
        v162._countAndFlagsBits = 0x5443454C45534E55;
        v162._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v162, v17);
      }

      v163 = *(v1 + 20);
      v23 = __CFADD__(v163, result);
      v24 = v163 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_117:
      v164 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48);
      v142 = *v164;
      v143 = *(v164 + 8);
      v65 = &qword_1EB6E3EB0;
      v66 = &unk_1B0EC2010;
      sub_1B03C60A4(v17, v11, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v144 = 0x45564F4D20444955;
LABEL_118:
      v57 = sub_1B0D6C228(v11, v142, v143, v144, 0xE900000000000020, sub_1B0E1F458);
      goto LABEL_136;
    case 0x21u:
      v28 = sub_1B0D6CB40(*v17, *(v17 + 8), *(v17 + 16));

      goto LABEL_103;
    case 0x22u:
      goto LABEL_25;
    case 0x23u:
      goto LABEL_14;
    case 0x24u:
      v29 = *v17;
      v30 = *(v17 + 8);
      *&v205 = 0x53534552504D4F43;
      *(&v205 + 1) = 0xE900000000000020;
      MEMORY[0x1B2726E80](v29, v30);
      v31 = v1;
      v32 = v205;
      v33 = *(v1 + 20);
      v34 = sub_1B0CFC1B0(v205, *(&v205 + 1), (v31 + 8), *(v31 + 20));
      if (v35)
      {
        v34 = ByteBuffer._setStringSlowpath(_:at:)(v32, v33);
        v31 = v1;
      }

      v36 = v34;

      v37 = *(v31 + 20);
      result = v36;
      v23 = __CFADD__(v37, v36);
      v38 = v37 + v36;
      if (v23)
      {
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
      }

      else
      {
        *(v31 + 20) = v38;
      }

      return result;
    case 0x25u:
      goto LABEL_8;
    case 0x26u:
      v17 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x494C494241504143, 0xEA00000000005954, (v1 + 8), *(v1 + 20));
      if (v190)
      {
        v191._countAndFlagsBits = 0x494C494241504143;
        v191._object = 0xEA00000000005954;
        result = ByteBuffer._setStringSlowpath(_:at:)(v191, v17);
      }

      v192 = *(v1 + 20);
      v23 = __CFADD__(v192, result);
      v24 = v192 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_152:
      sub_1B03C60A4(v17, v13, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v193 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x5550584520444955, 0xEC0000002045474ELL, (v1 + 8), *(v1 + 20));
      if (v194)
      {
        v195._object = 0xEC0000002045474ELL;
        v195._countAndFlagsBits = 0x5550584520444955;
        result = ByteBuffer._setStringSlowpath(_:at:)(v195, v193);
      }

      v196 = result;
      v197 = *(v1 + 20);
      v23 = __CFADD__(v197, result);
      v198 = v197 + result;
      if (v23)
      {
        goto LABEL_174;
      }

      *(v1 + 20) = v198;
      v1 = sub_1B0E1F458(v13);
      sub_1B0398EFC(v13, &qword_1EB6E3EB0, &unk_1B0EC2010);
      result = v196 + v1;
      if (!__OFADD__(v196, v1))
      {
        return result;
      }

      __break(1u);
LABEL_158:
      v199 = *(v1 + 20);
      result = sub_1B0CFC1B0(1162626121, 0xE400000000000000, (v1 + 8), *(v1 + 20));
      if (v200)
      {
        v201._countAndFlagsBits = 1162626121;
        v201._object = 0xE400000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v201, v199);
      }

      v202 = *(v1 + 20);
      v23 = __CFADD__(v202, result);
      v24 = v202 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      goto LABEL_175;
    case 0x27u:
      v17 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x54554F474F4CLL, 0xE600000000000000, (v1 + 8), *(v1 + 20));
      if (v165)
      {
        v166._countAndFlagsBits = 0x54554F474F4CLL;
        v166._object = 0xE600000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v166, v17);
      }

      v167 = *(v1 + 20);
      v23 = __CFADD__(v167, result);
      v24 = v167 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_124:
      v168 = *v17;
      v169 = *(v17 + 8);
      v170 = *(v17 + 16);
      v171 = *(v1 + 20);
      result = sub_1B0CFC1B0(2114633, 0xE300000000000000, (v1 + 8), *(v1 + 20));
      if (v172)
      {
        v173._countAndFlagsBits = 2114633;
        v173._object = 0xE300000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v173, v171);
      }

      v174 = result;
      v175 = *(v1 + 20);
      v23 = __CFADD__(v175, result);
      v176 = v175 + result;
      if (v23)
      {
        goto LABEL_172;
      }

      *(v1 + 20) = v176;
      v1 = sub_1B0DC4120(v168, v169, v170);

      result = v174 + v1;
      if (!__OFADD__(v174, v1))
      {
        return result;
      }

      __break(1u);
LABEL_130:
      v11 = 0x4B43454843;
      v17 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x4B43454843, 0xE500000000000000, (v1 + 8), *(v1 + 20));
      if (v177)
      {
        v178._countAndFlagsBits = 0x4B43454843;
        v178._object = 0xE500000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v178, v17);
      }

      v179 = *(v1 + 20);
      v23 = __CFADD__(v179, result);
      v24 = v179 + result;
      if (v23)
      {
        __break(1u);
LABEL_135:
        v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7240, &qword_1B0EF1220);
        v181 = *(v17 + *(v180 + 48));
        v182 = *(v17 + *(v180 + 64));
        v65 = &qword_1EB6E3EB0;
        v66 = &unk_1B0EC2010;
        sub_1B03C60A4(v17, v11, &qword_1EB6E3EB0, &unk_1B0EC2010);
        v57 = sub_1B0D6B89C(v11, v181, v182, 0x4354454620444955, 0xEA00000000002048, sub_1B0E1F458);

LABEL_136:

        v58 = v11;
LABEL_137:
        v91 = v65;
        v92 = v66;
LABEL_138:
        sub_1B0398EFC(v58, v91, v92);
        return v57;
      }

      else
      {
LABEL_161:
        *(v1 + 20) = v24;
      }

      return result;
    case 0x28u:
      v17 = *(v1 + 20);
      result = sub_1B0CFC1B0(1347374926, 0xE400000000000000, (v1 + 8), *(v1 + 20));
      if (v77)
      {
        v78._countAndFlagsBits = 1347374926;
        v78._object = 0xE400000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v78, v17);
      }

      v79 = *(v1 + 20);
      v23 = __CFADD__(v79, result);
      v24 = v79 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_41:
      v18 = sub_1B0D6B584(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));
      goto LABEL_101;
    case 0x29u:
      v17 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x534C545452415453, 0xE800000000000000, (v1 + 8), *(v1 + 20));
      if (v138)
      {
        v139._countAndFlagsBits = 0x534C545452415453;
        v139._object = 0xE800000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v139, v17);
      }

      v140 = *(v1 + 20);
      v23 = __CFADD__(v140, result);
      v24 = v140 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
      return sub_1B0D6D164(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24));
    case 0x2Au:
      goto LABEL_130;
    case 0x2Bu:
      v17 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x45534F4C43, 0xE500000000000000, (v1 + 8), *(v1 + 20));
      if (v20)
      {
        v21._countAndFlagsBits = 0x45534F4C43;
        v21._object = 0xE500000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v21, v17);
      }

      v22 = *(v1 + 20);
      v23 = __CFADD__(v22, result);
      v24 = v22 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_8:
      v18 = sub_1B0D6D288(*v17, *(v17 + 8), *(v17 + 16));
LABEL_101:
      v28 = v18;
LABEL_102:

      goto LABEL_103;
    case 0x2Cu:
      v17 = *(v1 + 20);
      v6 = 0;
      result = sub_1B0CFC1B0(0x45474E55505845, 0xE700000000000000, (v1 + 8), *(v1 + 20));
      if (v59)
      {
        v6 = v1;
        v60._countAndFlagsBits = 0x45474E55505845;
        v60._object = 0xE700000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v60, v17);
      }

      v61 = *(v1 + 20);
      v23 = __CFADD__(v61, result);
      v24 = v61 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_32:
      v62 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48);
      v63 = *v62;
      v64 = *(v62 + 8);
      v65 = &qword_1EB6E4050;
      v66 = &unk_1B0EC2B20;
      sub_1B03C60A4(v17, v6, &qword_1EB6E4050, &unk_1B0EC2B20);
      v67 = 1498435395;
LABEL_92:
      v57 = sub_1B0D6C228(v6, v63, v64, v67 & 0xFFFF0000FFFFFFFFLL | 0x2000000000, 0xE500000000000000, sub_1B0E1F248);
      goto LABEL_93;
    case 0x2Du:
      goto LABEL_112;
    case 0x2Eu:
      goto LABEL_158;
    case 0x2Fu:
      v17 = *(v1 + 20);
      result = sub_1B0CFC1B0(0x43415053454D414ELL, 0xE900000000000045, (v1 + 8), *(v1 + 20));
      if (v25)
      {
        v26._object = 0xE900000000000045;
        v26._countAndFlagsBits = 0x43415053454D414ELL;
        result = ByteBuffer._setStringSlowpath(_:at:)(v26, v17);
      }

      v27 = *(v1 + 20);
      v23 = __CFADD__(v27, result);
      v24 = v27 + result;
      if (!v23)
      {
        goto LABEL_161;
      }

      __break(1u);
LABEL_14:
      v28 = sub_1B0D6CF84(*v17);
LABEL_103:

      return v28;
    default:
      v18 = sub_1B0D69774(*v17, *(v17 + 8), *(v17 + 16));
      goto LABEL_101;
  }
}

uint64_t sub_1B0D69774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x20455441455243, 0xE700000000000000, (v3 + 8), *(v3 + 20));
  if (v9)
  {
    v10._countAndFlagsBits = 0x20455441455243;
    v10._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
    __break(1u);
    goto LABEL_29;
  }

  *(v3 + 20) = v14;
  result = sub_1B0DD59A4(a1);
  v15 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = *(v3 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
    if (v18)
    {
      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = result;
    v21 = *(v3 + 20);
    v22 = (v21 + result);
    if (__CFADD__(v21, result))
    {
      goto LABEL_31;
    }

    *(v3 + 20) = v22;
    v47 = a3;
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v3 + 8), v22);
    if (v23)
    {
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
    }

    v25 = result;
    v26 = *(v3 + 20);
    v27 = (v26 + result);
    if (__CFADD__(v26, result))
    {
      goto LABEL_32;
    }

    *(v3 + 20) = v27;
    result = sub_1B0CFC1B0(40, 0xE100000000000000, (v3 + 8), v27);
    if (v28)
    {
      v29._countAndFlagsBits = 40;
      v29._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
    }

    v30 = *(v3 + 20);
    v13 = __CFADD__(v30, result);
    v31 = v30 + result;
    if (v13)
    {
      goto LABEL_33;
    }

    *(v3 + 20) = v31;
    v32 = v25 + result;
    if (__OFADD__(v25, result))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    MEMORY[0x1EEE9AC00](result);
    v46[2] = sub_1B0D6D53C;
    v46[3] = 0;
    v46[4] = v4;
    v46[5] = &v47;
    v46[6] = 0;
    v46[7] = 0xE000000000000000;
    result = sub_1B0DE5E90(0, sub_1B0D730F0, v46, a3);
    v33 = v32 + result;
    if (__OFADD__(v32, result))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v34 = *(v4 + 20);
    result = sub_1B0CFC1B0(41, 0xE100000000000000, (v4 + 8), *(v4 + 20));
    if (v35)
    {
      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
    }

    v37 = *(v4 + 20);
    v38 = (v37 + result);
    if (__CFADD__(v37, result))
    {
      goto LABEL_36;
    }

    *(v4 + 20) = v38;
    v39 = __OFADD__(v33, result);
    v40 = v33 + result;
    if (v39)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v4 + 8), v38);
    if (v41)
    {
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v42, v38);
    }

    v43 = *(v4 + 20);
    v13 = __CFADD__(v43, result);
    v44 = v43 + result;
    if (v13)
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v44;
    v45 = v40 + result;
    if (__OFADD__(v40, result))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v39 = __OFADD__(v20, v45);
    v16 = v20 + v45;
    if (v39)
    {
LABEL_40:
      __break(1u);
      return result;
    }
  }

  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1B0D69A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v86 = a7;
  v84 = a6;
  v83 = a5;
  v85 = a4;
  v87 = a2;
  v10 = *(a1 + 16);
  v98 = *a1;
  v99 = v10;
  v11 = *(a1 + 32);
  v96 = *(a1 + 40);
  v12 = *(a1 + 64);
  v97 = *(a1 + 56);
  v13 = *(v7 + 20);
  result = sub_1B0CFC1B0(1414744396, 0xE400000000000000, (v7 + 8), *(v7 + 20));
  if (v15)
  {
    v16._countAndFlagsBits = 1414744396;
    v16._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = result;
  v18 = *(v7 + 20);
  v19 = (v18 + result);
  if (__CFADD__(v18, result))
  {
    goto LABEL_59;
  }

  *(v7 + 20) = v19;
  v20 = *(a1 + 64);
  if (!v20)
  {
    goto LABEL_36;
  }

  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v7 + 8), v19);
  if (v21)
  {
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
  }

  v23 = *(v7 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_68;
  }

  v81 = result;
  *(v7 + 20) = v24;
  result = sub_1B0CFC1B0(40, 0xE100000000000000, (v7 + 8), v24);
  if (v25)
  {
    v26._countAndFlagsBits = 40;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v7 + 20);
  v28 = (v27 + result);
  if (__CFADD__(v27, result))
  {
    goto LABEL_69;
  }

  v82 = result;
  *(v7 + 20) = v28;
  v95 = v12;
  v29 = *(v12 + 16);
  if (v29)
  {
    v89 = v98;
    v90 = v99;
    v91 = v11;
    v92 = v96;
    v93 = v97;
    v94 = v12;
    sub_1B0D7311C(&v89, v88);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v7 + 8), v28);
    if (v30)
    {
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
    }

    v32 = result;
    v33 = *(v8 + 20);
    v34 = __CFADD__(v33, result);
    v35 = v33 + result;
    if (v34)
    {
      goto LABEL_78;
    }

    *(v8 + 20) = v35;
  }

  else
  {
    v89 = v98;
    v90 = v99;
    v91 = v11;
    v92 = v96;
    v93 = v97;
    v94 = v12;
    result = sub_1B0D7311C(&v89, v88);
    v32 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v80[2] = sub_1B0DCC160;
  v80[3] = 0;
  v80[4] = v8;
  v80[5] = &v95;
  v80[6] = 0;
  v80[7] = 0xE000000000000000;
  result = sub_1B0DE6204(0, sub_1B0D73178, v80, v12);
  v36 = v32 + result;
  if (__OFADD__(v32, result))
  {
    goto LABEL_70;
  }

  if (v29)
  {
    v37 = *(v8 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v8 + 8), *(v8 + 20));
    if (v38)
    {
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
    }

    v40 = *(v8 + 20);
    v34 = __CFADD__(v40, result);
    v41 = v40 + result;
    if (v34)
    {
      goto LABEL_79;
    }

    *(v8 + 20) = v41;
    v42 = v36 + result;
    if (!__OFADD__(v36, result))
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v42 = v32 + result;
LABEL_23:
  if (v11 == 0xFF)
  {
    v43 = *(v8 + 20);
    v44 = sub_1B0CFC1B0(0x4249524353425553, 0xEA00000000004445, (v8 + 8), *(v8 + 20));
    if (v45)
    {
      v46._countAndFlagsBits = 0x4249524353425553;
      v46._object = 0xEA00000000004445;
      v44 = ByteBuffer._setStringSlowpath(_:at:)(v46, v43);
    }

    v47 = v44;
    result = sub_1B0398EFC(a1, &qword_1EB6E7268, &qword_1B0EF1248);
    v48 = *(v8 + 20);
    v34 = __CFADD__(v48, v47);
    v49 = v48 + v47;
    if (v34)
    {
      goto LABEL_80;
    }

    *(v8 + 20) = v49;
  }

  else
  {
    v89 = v98;
    v90 = v99;
    v91 = v11;
    v92 = v96;
    v93 = v97;
    v47 = sub_1B0DF6A94(&v89);
    result = sub_1B0398EFC(a1, &qword_1EB6E7268, &qword_1B0EF1248);
  }

  v50 = v42 + v47;
  if (__OFADD__(v42, v47))
  {
    goto LABEL_71;
  }

  v51 = v82 + v50;
  if (__OFADD__(v82, v50))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v52 = *(v8 + 20);
  result = sub_1B0CFC1B0(41, 0xE100000000000000, (v8 + 8), *(v8 + 20));
  if (v53)
  {
    v54._countAndFlagsBits = 41;
    v54._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v54, v52);
  }

  v55 = *(v8 + 20);
  LODWORD(v19) = v55 + result;
  if (__CFADD__(v55, result))
  {
    goto LABEL_73;
  }

  *(v8 + 20) = v19;
  v56 = v51 + result;
  if (__OFADD__(v51, result))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v57 = __OFADD__(v81, v56);
  v20 = v81 + v56;
  if (v57)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_36:
  v58 = v17 + v20;
  if (__OFADD__(v17, v20))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v8 + 8), v19);
  if (v59)
  {
    v60._countAndFlagsBits = 32;
    v60._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v60, v19);
  }

  v61 = *(v8 + 20);
  v34 = __CFADD__(v61, result);
  v62 = v61 + result;
  if (v34)
  {
    goto LABEL_61;
  }

  *(v8 + 20) = v62;
  v63 = v58 + result;
  if (__OFADD__(v58, result))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  result = sub_1B0DD59A4(v87);
  v64 = v63 + result;
  if (__OFADD__(v63, result))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v65 = *(v8 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v8 + 8), *(v8 + 20));
  if (v66)
  {
    v67._countAndFlagsBits = 32;
    v67._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v67, v65);
  }

  v68 = v86;
  v69 = *(v8 + 20);
  v34 = __CFADD__(v69, result);
  v70 = v69 + result;
  if (v34)
  {
    goto LABEL_64;
  }

  *(v8 + 20) = v70;
  v71 = v64 + result;
  if (__OFADD__(v64, result))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if ((v84 & 0x100000000000000) != 0)
  {
    result = sub_1B0E08B68(v85);
  }

  else
  {
    result = sub_1B0D4B6B8(v85, v83, v84 & 0xFFFFFFFFFFFFFFLL);
  }

  v72 = v71 + result;
  if (__OFADD__(v71, result))
  {
    goto LABEL_66;
  }

  v73 = *(v68 + 16);
  if (v73)
  {
    v74 = *(v8 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v8 + 8), *(v8 + 20));
    if (v75)
    {
      v76._countAndFlagsBits = 32;
      v76._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v76, v74);
    }

    v77 = result;
    v78 = *(v8 + 20);
    v34 = __CFADD__(v78, result);
    v79 = v78 + result;
    if (v34)
    {
      goto LABEL_76;
    }

    *(v8 + 20) = v79;
    result = sub_1B0DC9E80(v68);
    v73 = v77 + result;
    if (__OFADD__(v77, result))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      return result;
    }
  }

  result = v72 + v73;
  if (__OFADD__(v72, v73))
  {
    goto LABEL_67;
  }

  return result;
}

uint64_t sub_1B0D6A01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v68 = a7;
  v14 = *(v7 + 20);
  result = sub_1B0CFC1B0(1414744396, 0xE400000000000000, (v7 + 8), *(v7 + 20));
  if (v16)
  {
    v17._countAndFlagsBits = 1414744396;
    v17._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
  }

  v18 = result;
  v19 = *(v7 + 20);
  v20 = (v19 + result);
  if (__CFADD__(v19, result))
  {
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v7 + 20) = v20;
  v21 = *(a1 + 16);
  v67 = a5;
  if (v21)
  {
    v69 = a1;
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v7 + 8), v20);
    if (v22)
    {
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v23, v20);
    }

    v24 = result;
    v25 = *(v7 + 20);
    v26 = (v25 + result);
    if (__CFADD__(v25, result))
    {
      goto LABEL_51;
    }

    *(v7 + 20) = v26;
    result = sub_1B0CFC1B0(40, 0xE100000000000000, (v7 + 8), v26);
    if (v27)
    {
      v28._countAndFlagsBits = 40;
      v28._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v7 + 20);
    v30 = __CFADD__(v29, result);
    v31 = v29 + result;
    if (v30)
    {
      goto LABEL_52;
    }

    *(v7 + 20) = v31;
    v32 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    MEMORY[0x1EEE9AC00](result);
    v66[2] = sub_1B0D6D560;
    v66[3] = 0;
    v66[4] = v8;
    v66[5] = &v69;
    v66[6] = 32;
    v66[7] = 0xE100000000000000;
    result = sub_1B0DE6240(0, sub_1B0D731A4, v66, a1);
    v33 = v32 + result;
    if (__OFADD__(v32, result))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v34 = *(v8 + 20);
    result = sub_1B0CFC1B0(41, 0xE100000000000000, (v8 + 8), *(v8 + 20));
    if (v35)
    {
      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
    }

    v37 = *(v8 + 20);
    v38 = (v37 + result);
    if (__CFADD__(v37, result))
    {
      goto LABEL_55;
    }

    *(v8 + 20) = v38;
    v39 = __OFADD__(v33, result);
    v40 = v33 + result;
    if (v39)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v8 + 8), v38);
    if (v41)
    {
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v42, v38);
    }

    v43 = *(v8 + 20);
    LODWORD(v20) = v43 + result;
    if (__CFADD__(v43, result))
    {
      goto LABEL_57;
    }

    *(v8 + 20) = v20;
    v21 = v40 + result;
    if (__OFADD__(v40, result))
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

  v44 = v18 + v21;
  if (__OFADD__(v18, v21))
  {
    goto LABEL_43;
  }

  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v8 + 8), v20);
  if (v45)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v46, v20);
  }

  v47 = *(v8 + 20);
  v30 = __CFADD__(v47, result);
  v48 = v47 + result;
  if (v30)
  {
    goto LABEL_44;
  }

  *(v8 + 20) = v48;
  v49 = v44 + result;
  if (__OFADD__(v44, result))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  result = sub_1B0DD59A4(a2);
  v50 = v49 + result;
  if (__OFADD__(v49, result))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v51 = *(v8 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v8 + 8), *(v8 + 20));
  if (v52)
  {
    v53._countAndFlagsBits = 32;
    v53._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v53, v51);
  }

  v54 = *(v8 + 20);
  v30 = __CFADD__(v54, result);
  v55 = v54 + result;
  if (v30)
  {
    goto LABEL_47;
  }

  *(v8 + 20) = v55;
  v56 = v50 + result;
  if (__OFADD__(v50, result))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((a6 & 0x100000000000000) != 0)
  {
    result = sub_1B0E08B68(a4);
  }

  else
  {
    result = sub_1B0D4B6B8(a4, v67, a6 & 0xFFFFFFFFFFFFFFLL);
  }

  v57 = v68;
  v58 = v56 + result;
  if (__OFADD__(v56, result))
  {
    goto LABEL_49;
  }

  v59 = *(v68 + 16);
  if (v59)
  {
    v60 = *(v8 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v8 + 8), *(v8 + 20));
    if (v61)
    {
      v62._countAndFlagsBits = 32;
      v62._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v62, v60);
    }

    v63 = result;
    v64 = *(v8 + 20);
    v30 = __CFADD__(v64, result);
    v65 = v64 + result;
    if (v30)
    {
      goto LABEL_59;
    }

    *(v8 + 20) = v65;
    result = sub_1B0DC9E80(v57);
    v59 = v63 + result;
    if (__OFADD__(v63, result))
    {
LABEL_60:
      __break(1u);
      return result;
    }
  }

  result = v58 + v59;
  if (__OFADD__(v58, v59))
  {
    goto LABEL_50;
  }

  return result;
}

uint64_t sub_1B0D6A3F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 20);
  result = sub_1B0CFC1B0(0x204255534CLL, 0xE500000000000000, (v5 + 8), *(v5 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x204255534CLL;
    v13._object = 0xE500000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v5 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v5 + 20) = v17;
  result = sub_1B0DD59A4(a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(v5 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v5 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_13;
  }

  *(v5 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = sub_1B0D4B6B8(a3, a4, a5 & 0xFFFFFFFFFFFFFFLL);
  v26 = __OFADD__(v24, v25);
  result = v24 + v25;
  if (v26)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6A530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v174 = a6;
  v175 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v172 = *(v11 - 8);
  v12 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v160 = &v151 - v13;
  v159 = type metadata accessor for ParameterValue();
  v14 = *(v159 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v155 = &v151 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  v17 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v184 = (&v151 - v18);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6570, &unk_1B0EF3540);
  v19 = *(*(v170 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v170);
  v169 = (&v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v168 = (&v151 - v22);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F50, &qword_1B0EEEB00);
  v23 = *(*(v167 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v167);
  v166 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v165 = (&v151 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v183 = (&v151 - v29);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v164 = (&v151 - v31);
  MEMORY[0x1EEE9AC00](v30);
  v163 = &v151 - v32;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E72E8, &qword_1B0EF3550);
  v33 = *(*(v162 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v162);
  v161 = (&v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v182 = (&v151 - v36);
  v37 = *(v7 + 20);
  v38 = 0;
  result = sub_1B0CFC1B0(0x20454D414E4552, 0xE700000000000000, (v7 + 8), *(v7 + 20));
  if (v40)
  {
    v41._countAndFlagsBits = 0x20454D414E4552;
    v41._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v41, v37);
  }

  v42 = result;
  v43 = *(v7 + 20);
  v44 = __CFADD__(v43, result);
  v45 = v43 + result;
  if (v44)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v46 = v7;
  *(v7 + 20) = v45;
  result = sub_1B0DD59A4(a1);
  v47 = v42 + result;
  if (__OFADD__(v42, result))
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v48 = *(v7 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v7 + 8), *(v7 + 20));
  if (v49)
  {
    v50._countAndFlagsBits = 32;
    v50._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v50, v48);
  }

  v51 = *(v7 + 20);
  v44 = __CFADD__(v51, result);
  v52 = v51 + result;
  if (v44)
  {
    goto LABEL_65;
  }

  *(v7 + 20) = v52;
  v53 = __OFADD__(v47, result);
  v54 = v47 + result;
  if (v53)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = sub_1B0DD59A4(a3);
  v53 = __OFADD__(v54, result);
  v55 = v54 + result;
  if (v53)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v56 = *(v175 + 16);
  v173 = v56;
  if (v56)
  {
    v57 = *(v7 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v7 + 8), *(v7 + 20));
    if (v58)
    {
      v59._countAndFlagsBits = 32;
      v59._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v59, v57);
    }

    v60 = *(v7 + 20);
    v61 = (v60 + result);
    if (!__CFADD__(v60, result))
    {
      v152 = result;
      *(v7 + 20) = v61;
      result = sub_1B0CFC1B0(0, 0xE000000000000000, (v7 + 8), v61);
      if (v62)
      {
        v63._countAndFlagsBits = 0;
        v63._object = 0xE000000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v63, v61);
      }

      v64 = result;
      v65 = *(v7 + 20);
      v66 = (v65 + result);
      if (!__CFADD__(v65, result))
      {
        *(v7 + 20) = v66;
        result = sub_1B0CFC1B0(40, 0xE100000000000000, (v7 + 8), v66);
        if (v67)
        {
          v68._countAndFlagsBits = 40;
          v68._object = 0xE100000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v68, v66);
        }

        v69 = *(v7 + 20);
        v44 = __CFADD__(v69, result);
        v70 = v69 + result;
        if (!v44)
        {
          *(v7 + 20) = v70;
          if (!__OFADD__(v64, result))
          {
            v153 = v64 + result;
            v151 = v55;
            v157 = (v14 + 48);
            v156 = v173 - 1;
            v154 = a5;
            swift_retain_n();
            v71 = v174;
            swift_retain_n();
            result = swift_retain_n();
            v72 = 0;
            v73 = 0;
            v74 = (v71 + 40);
            v75 = &unk_1B0EF3530;
            v158 = v46;
            do
            {
              if (v73 >= *(v174 + 16))
              {
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

              v76 = v170;
              v77 = *(v170 + 48);
              v181 = v38;
              v177 = v74;
              v78 = *(v74 - 1);
              v79 = *v74;
              v179 = v72;
              v180 = v79;
              v80 = v168;
              *v168 = v78;
              v80[1] = v79;
              sub_1B03B5C80(v175 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v73, v80 + v77, &qword_1EB6E6440, v75);
              v81 = v80;
              v82 = v169;
              sub_1B03C60A4(v81, v169, &qword_1EB6E6570, &unk_1B0EF3540);
              v83 = *(v76 + 48);
              v84 = v167;
              v85 = *(v167 + 48);
              v86 = v82[1];
              v87 = v164;
              *v164 = *v82;
              v87[1] = v86;
              sub_1B03C60A4(v82 + v83, v87 + v85, &qword_1EB6E6440, v75);
              v88 = v87;
              v89 = v163;
              sub_1B03C60A4(v88, v163, &qword_1EB6E6F50, &qword_1B0EEEB00);
              v90 = v162;
              v91 = *(v162 + 48);
              v92 = v182;
              v176 = v73;
              *v182 = v73;
              sub_1B03C60A4(v89, v92 + v91, &qword_1EB6E6F50, &qword_1B0EEEB00);
              v93 = v161;
              sub_1B03B5C80(v92, v161, &qword_1EB6E72E8, &qword_1B0EF3550);
              v178 = *v93;
              v94 = (v93 + *(v90 + 48));
              v95 = *(v84 + 48);
              v96 = *v94;
              v97 = v94[1];
              v98 = v165;
              sub_1B03C60A4(v94 + v95, v165 + v95, &qword_1EB6E6440, v75);
              v99 = *(v84 + 48);
              v100 = v183;
              *v183 = v96;
              v100[1] = v97;
              sub_1B03C60A4(v98 + v95, v100 + v99, &qword_1EB6E6440, v75);
              sub_1B03B5C80(v100, v98, &qword_1EB6E6F50, &qword_1B0EEEB00);
              v101 = v158;
              v102 = *(v84 + 48);
              v103 = v166;
              sub_1B03B5C80(v100, v166, &qword_1EB6E6F50, &qword_1B0EEEB00);
              v104 = *(v84 + 48);
              v105 = *v98;
              v106 = v98[1];
              v107 = v184;
              *v184 = *v98;
              v107[1] = v106;
              v108 = *(v171 + 52);
              sub_1B03C60A4(v103 + v104, v107 + v108, &qword_1EB6E6440, v75);
              v109 = *(v103 + 8);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

              v110 = v98 + v102;
              v111 = v75;
              sub_1B0398EFC(v110, &qword_1EB6E6440, v75);
              v112 = *(v101 + 20);
              v38 = v181;
              result = sub_1B0CFC1B0(v105, v106, (v101 + 8), *(v101 + 20));
              if (v113)
              {
                v114._countAndFlagsBits = v105;
                v114._object = v106;
                result = ByteBuffer._setStringSlowpath(_:at:)(v114, v112);
              }

              v115 = result;
              v116 = *(v101 + 20);
              v117 = (v116 + result);
              if (__CFADD__(v116, result))
              {
                goto LABEL_56;
              }

              v75 = v111;
              *(v101 + 20) = v117;
              v118 = v184 + v108;
              v119 = v160;
              sub_1B03B5C80(v118, v160, &qword_1EB6E6440, v111);
              if ((*v157)(v119, 1, v159) == 1)
              {
                result = sub_1B0398EFC(v119, &qword_1EB6E6440, v111);
                v120 = 0;
                v121 = v179;
              }

              else
              {
                v122 = v119;
                v123 = v155;
                sub_1B0D06280(v122, v155);
                result = sub_1B0CFC1B0(32, 0xE100000000000000, (v101 + 8), v117);
                v121 = v179;
                if (v124)
                {
                  v125._countAndFlagsBits = 32;
                  v125._object = 0xE100000000000000;
                  result = ByteBuffer._setStringSlowpath(_:at:)(v125, v117);
                }

                v126 = result;
                v127 = *(v101 + 20);
                v44 = __CFADD__(v127, result);
                v128 = v127 + result;
                if (v44)
                {
                  goto LABEL_60;
                }

                *(v101 + 20) = v128;
                v129 = sub_1B0DF818C(v123);
                result = sub_1B0D733FC(v123, type metadata accessor for ParameterValue);
                v120 = v126 + v129;
                if (__OFADD__(v126, v129))
                {
                  goto LABEL_61;
                }
              }

              v130 = v115 + v120;
              if (__OFADD__(v115, v120))
              {
                goto LABEL_57;
              }

              result = sub_1B0398EFC(v184, &qword_1EB6E6F58, &unk_1B0EF5150);
              v131 = v121 + v130;
              if (__OFADD__(v121, v130))
              {
                goto LABEL_58;
              }

              if (v178 >= v156)
              {
                result = sub_1B0398EFC(v183, &qword_1EB6E6F50, &qword_1B0EEEB00);
                v136 = 0;
              }

              else
              {
                v132 = *(v101 + 20);
                v133 = sub_1B0CFC1B0(32, 0xE100000000000000, (v101 + 8), *(v101 + 20));
                if (v134)
                {
                  v135._countAndFlagsBits = 32;
                  v135._object = 0xE100000000000000;
                  v133 = ByteBuffer._setStringSlowpath(_:at:)(v135, v132);
                }

                v136 = v133;
                result = sub_1B0398EFC(v183, &qword_1EB6E6F50, &qword_1B0EEEB00);
                v137 = *(v101 + 20);
                v44 = __CFADD__(v137, v136);
                v138 = v137 + v136;
                if (v44)
                {
                  goto LABEL_62;
                }

                *(v101 + 20) = v138;
              }

              v53 = __OFADD__(v131, v136);
              v72 = v131 + v136;
              if (v53)
              {
                goto LABEL_59;
              }

              v73 = v176 + 1;
              result = sub_1B0398EFC(v182, &qword_1EB6E72E8, &qword_1B0EF3550);
              v74 = v177 + 2;
            }

            while (v173 != v73);

            v139 = v153 + v72;
            if (__OFADD__(v153, v72))
            {
              goto LABEL_73;
            }

            v140 = *(v101 + 20);
            result = sub_1B0CFC1B0(41, 0xE100000000000000, (v101 + 8), *(v101 + 20));
            if (v141)
            {
              v142._countAndFlagsBits = 41;
              v142._object = 0xE100000000000000;
              result = ByteBuffer._setStringSlowpath(_:at:)(v142, v140);
            }

            v143 = *(v101 + 20);
            v144 = (v143 + result);
            if (!__CFADD__(v143, result))
            {
              *(v101 + 20) = v144;
              v53 = __OFADD__(v139, result);
              v145 = v139 + result;
              if (v53)
              {
                goto LABEL_75;
              }

              result = sub_1B0CFC1B0(0, 0xE000000000000000, (v101 + 8), v144);
              if (v146)
              {
                v147._countAndFlagsBits = 0;
                v147._object = 0xE000000000000000;
                result = ByteBuffer._setStringSlowpath(_:at:)(v147, v144);
              }

              v148 = *(v101 + 20);
              v44 = __CFADD__(v148, result);
              v149 = v148 + result;
              if (!v44)
              {
                *(v101 + 20) = v149;
                v150 = v145 + result;
                if (__OFADD__(v145, result))
                {
                  goto LABEL_77;
                }

                v53 = __OFADD__(v152, v150);
                v56 = v152 + v150;
                if (!v53)
                {
                  v55 = v151;
                  goto LABEL_53;
                }

                goto LABEL_78;
              }

LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
              return result;
            }

LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

LABEL_53:
  result = v55 + v56;
  if (__OFADD__(v55, v56))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  return result;
}

uint64_t sub_1B0D6B0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x20535554415453, 0xE700000000000000, (v3 + 8), *(v3 + 20));
  if (v8)
  {
    v9._countAndFlagsBits = 0x20535554415453;
    v9._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, result);
  v13 = v11 + result;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 20) = v13;
  result = sub_1B0DD59A4(a1);
  v14 = v10 + result;
  if (__OFADD__(v10, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(v3 + 20);
  result = sub_1B0CFC1B0(10272, 0xE200000000000000, (v3 + 8), *(v3 + 20));
  if (v16)
  {
    v17._countAndFlagsBits = 10272;
    v17._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = *(v3 + 20);
  v12 = __CFADD__(v18, result);
  v19 = v18 + result;
  if (v12)
  {
    goto LABEL_17;
  }

  *(v3 + 20) = v19;
  v20 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_1B0DCF8B0(a3);
  v21 = __OFADD__(v20, result);
  v22 = v20 + result;
  if (v21)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = *(v3 + 20);
  result = sub_1B0CFC1B0(41, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v3 + 20);
  v12 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v27;
  v21 = __OFADD__(v22, result);
  result += v22;
  if (v21)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6B21C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(v6 + 20);
  result = sub_1B0CFC1B0(0x49544E4548545541, 0xED00002045544143, (v6 + 8), *(v6 + 20));
  v46 = a5;
  if (v13)
  {
    v14._countAndFlagsBits = 0x49544E4548545541;
    v14._object = 0xED00002045544143;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v15 = result;
  v16 = *(v6 + 20);
  v17 = (v16 + result);
  if (__CFADD__(v16, result))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v6 + 20) = v17;
  result = sub_1B0CFC1B0(a1, a2, (v6 + 8), v17);
  if (v18)
  {
    v19._countAndFlagsBits = a1;
    v19._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
  }

  v20 = *(v6 + 20);
  v21 = (v20 + result);
  if (__CFADD__(v20, result))
  {
    goto LABEL_37;
  }

  *(v6 + 20) = v21;
  v22 = v15 + result;
  if (__OFADD__(v15, result))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!a3)
  {
LABEL_19:
    v33 = 0;
    goto LABEL_34;
  }

  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v6 + 8), v21);
  if (v23)
  {
    v24._countAndFlagsBits = 32;
    v24._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v21);
  }

  v25 = result;
  v26 = *(v6 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_40;
  }

  *(v6 + 20) = v27;
  if (*v6 != 1)
  {
    v34 = HIDWORD(a4);
    if (HIDWORD(a4) == a4)
    {
      result = sub_1B0CFC1B0(61, 0xE100000000000000, (v6 + 8), v27);
      if (v40)
      {
        v41._countAndFlagsBits = 61;
        v41._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v41, v27);
      }

      v42 = result;
      v43 = *(v6 + 20);
      v31 = __CFADD__(v43, result);
      v44 = v43 + result;
      if (v31)
      {
        goto LABEL_47;
      }

      *(v6 + 20) = v44;
    }

    else
    {
      v35 = v34 - a4;
      if (v34 < a4)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v36 = (WORD2(v46) << 8) | BYTE6(v46);
      if ((v46 - v36) < v34)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v49[0] = a3;
      v49[1] = a4;
      v50 = v46;
      v51 = WORD2(v46);
      v52 = BYTE6(v46);
      v53 = a4;
      v54 = HIDWORD(a4);
      result = swift_beginAccess();
      if (v35 < -4)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v37 = 4 * ((v35 + 2) / 3);
      v38 = *(a3 + 24);

      if (v35 < 1)
      {
        v39 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v39 = sub_1B0E45278();
        *(v39 + 16) = v37;
      }

      v48 = 0;
      result = sub_1B0D5D95C(&unk_1F272F790, 256, &unk_1F272F8B0, 256, v38 + v36 + a4, v35, v39 + 32, v37, 0, &v48);
      if (v37 < v48)
      {
        goto LABEL_46;
      }

      *(v39 + 16) = v48;
      sub_1B04394F4(v49);
      sub_1B0D791F8(v39);
      v42 = v45;
    }

    v33 = v25 + v42;
    if (__OFADD__(v25, v42))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  result = sub_1B0CFC1B0(8751330, 0xA300000000000000, (v6 + 8), v27);
  if (v28)
  {
    v29._countAndFlagsBits = 8751330;
    v29._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
  }

  v30 = *(v6 + 20);
  v31 = __CFADD__(v30, result);
  v32 = v30 + result;
  if (v31)
  {
    goto LABEL_41;
  }

  *(v6 + 20) = v32;
  v33 = v25 + result;
  if (__OFADD__(v25, result))
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_34:
  result = v22 + v33;
  if (__OFADD__(v22, v33))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  return result;
}

unint64_t sub_1B0D6B584(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x204E49474F4CLL, 0xE600000000000000, (v4 + 8), *(v4 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = 0x204E49474F4CLL;
    v12._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(v4 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v4 + 20) = v16;
  result = sub_1B0DD55E0(a1, a2);
  v17 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = *(v4 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v4 + 20);
  v15 = __CFADD__(v21, result);
  v22 = v21 + result;
  if (v15)
  {
    goto LABEL_13;
  }

  *(v4 + 20) = v22;
  v23 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = sub_1B0DD55E0(a3, a4);
  v25 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v25)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6B6BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x20454C42414E45, 0xE700000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x20454C42414E45;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v1 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v25[2] = sub_1B0D5C820;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_1B0DE5DBC(0, sub_1B0D5CCB4, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6B89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  v12 = *(v6 + 20);
  result = sub_1B0CFC1B0(a4, a5, (v6 + 8), *(v6 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v6 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v6 + 20) = v19;
  result = a6(a1);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = *(v6 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v6 + 8), *(v6 + 20));
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v6 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_14;
  }

  *(v6 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = sub_1B0D86D60(a2);
  v27 = __OFADD__(v26, result);
  v28 = v26 + result;
  if (v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = sub_1B0D89328(a3);
  v27 = __OFADD__(v28, v29);
  result = v28 + v29;
  if (v27)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6B9E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x2045524F5453, 0xE600000000000000, (v4 + 8), *(v4 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x2045524F5453;
    v13._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_37;
  }

  *(v4 + 20) = v17;
  result = sub_1B0E1F248(a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = *(v4 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
    if (v21)
    {
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
    }

    v23 = result;
    v24 = *(v4 + 20);
    v25 = (v24 + result);
    if (__CFADD__(v24, result))
    {
      goto LABEL_42;
    }

    *(v4 + 20) = v25;
    v60 = a2;
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v4 + 8), v25);
    if (v26)
    {
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = result;
    v29 = *(v4 + 20);
    v30 = (v29 + result);
    if (__CFADD__(v29, result))
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v30;
    result = sub_1B0CFC1B0(40, 0xE100000000000000, (v4 + 8), v30);
    if (v31)
    {
      v32._countAndFlagsBits = 40;
      v32._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
    }

    v33 = *(v4 + 20);
    v16 = __CFADD__(v33, result);
    v34 = v33 + result;
    if (v16)
    {
      goto LABEL_44;
    }

    *(v4 + 20) = v34;
    v35 = v28 + result;
    if (__OFADD__(v28, result))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    MEMORY[0x1EEE9AC00](result);
    v59[2] = sub_1B0D6D9B8;
    v59[3] = 0;
    v59[4] = v5;
    v59[5] = &v60;
    v59[6] = 32;
    v59[7] = 0xE100000000000000;
    result = sub_1B0DE6600(0, sub_1B0D73204, v59, a2);
    v36 = v35 + result;
    if (__OFADD__(v35, result))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v37 = *(v5 + 20);
    result = sub_1B0CFC1B0(41, 0xE100000000000000, (v5 + 8), *(v5 + 20));
    if (v38)
    {
      v39._countAndFlagsBits = 41;
      v39._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
    }

    v40 = *(v5 + 20);
    v41 = (v40 + result);
    if (__CFADD__(v40, result))
    {
      goto LABEL_47;
    }

    *(v5 + 20) = v41;
    v42 = __OFADD__(v36, result);
    v43 = v36 + result;
    if (v42)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v5 + 8), v41);
    if (v44)
    {
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v45, v41);
    }

    v46 = *(v5 + 20);
    v16 = __CFADD__(v46, result);
    v47 = v46 + result;
    if (v16)
    {
      goto LABEL_49;
    }

    *(v5 + 20) = v47;
    v48 = v43 + result;
    if (__OFADD__(v43, result))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v42 = __OFADD__(v23, v48);
    v19 = v23 + v48;
    if (v42)
    {
LABEL_51:
      __break(1u);
      return result;
    }
  }

  v49 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    goto LABEL_39;
  }

  v50 = *(v5 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v51)
  {
    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v52, v50);
  }

  v53 = *(v5 + 20);
  v16 = __CFADD__(v53, result);
  v54 = v53 + result;
  if (v16)
  {
    goto LABEL_40;
  }

  *(v5 + 20) = v54;
  v55 = v49 + result;
  if (__OFADD__(v49, result))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v56 = a3 & 0x1FF;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v57 = sub_1B0E2E5A4(v56, a4);
    v42 = __OFADD__(v55, v57);
    result = v55 + v57;
    if (!v42)
    {
      return result;
    }

    goto LABEL_36;
  }

  v58 = sub_1B0E2E6FC(v56, a4);
  v42 = __OFADD__(v55, v58);
  result = v55 + v58;
  if (v42)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_1B0D6BD3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x524F545320444955, 0xEA00000000002045, (v4 + 8), *(v4 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x524F545320444955;
    v13._object = 0xEA00000000002045;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_33;
  }

  *(v4 + 20) = v17;
  result = sub_1B0E1F458(a1);
  v18 = __OFADD__(v14, result);
  v19 = v14 + result;
  if (v18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = *(a2 + 16);
  if (v20)
  {
    v54 = a2;
    v21 = *(v4 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
    if (v22)
    {
      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
    }

    v24 = result;
    v25 = *(v4 + 20);
    v26 = (v25 + result);
    if (__CFADD__(v25, result))
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v26;
    result = sub_1B0CFC1B0(40, 0xE100000000000000, (v4 + 8), v26);
    if (v27)
    {
      v28._countAndFlagsBits = 40;
      v28._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v4 + 20);
    v16 = __CFADD__(v29, result);
    v30 = v29 + result;
    if (v16)
    {
      goto LABEL_39;
    }

    *(v4 + 20) = v30;
    v31 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    MEMORY[0x1EEE9AC00](result);
    v53[2] = sub_1B0E2F15C;
    v53[3] = 0;
    v53[4] = v5;
    v53[5] = &v54;
    v53[6] = 32;
    v53[7] = 0xE100000000000000;
    result = sub_1B0DE6600(0, sub_1B0D7345C, v53, a2);
    v32 = v31 + result;
    if (__OFADD__(v31, result))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v33 = *(v5 + 20);
    result = sub_1B0CFC1B0(41, 0xE100000000000000, (v5 + 8), *(v5 + 20));
    if (v34)
    {
      v35._countAndFlagsBits = 41;
      v35._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v35, v33);
    }

    v36 = *(v5 + 20);
    v37 = (v36 + result);
    if (__CFADD__(v36, result))
    {
      goto LABEL_42;
    }

    *(v5 + 20) = v37;
    v18 = __OFADD__(v32, result);
    v38 = v32 + result;
    if (v18)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v5 + 8), v37);
    if (v39)
    {
      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
    }

    v41 = *(v5 + 20);
    v16 = __CFADD__(v41, result);
    v42 = v41 + result;
    if (v16)
    {
      goto LABEL_44;
    }

    *(v5 + 20) = v42;
    v20 = v38 + result;
    if (__OFADD__(v38, result))
    {
LABEL_45:
      __break(1u);
      return result;
    }
  }

  v43 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    goto LABEL_35;
  }

  v44 = *(v5 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v45)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v46, v44);
  }

  v47 = *(v5 + 20);
  v16 = __CFADD__(v47, result);
  v48 = v47 + result;
  if (v16)
  {
    goto LABEL_36;
  }

  *(v5 + 20) = v48;
  v49 = v43 + result;
  if (__OFADD__(v43, result))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v50 = a3 & 0x1FF;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v51 = sub_1B0E2E5A4(v50, a4);
    v18 = __OFADD__(v49, v51);
    result = v49 + v51;
    if (!v18)
    {
      return result;
    }

    goto LABEL_32;
  }

  v52 = sub_1B0E2E6FC(v50, a4);
  v18 = __OFADD__(v49, v52);
  result = v49 + v52;
  if (v18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return result;
}

unint64_t sub_1B0D6C050(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x484352414553, 0xE600000000000000, (v4 + 8), *(v4 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x484352414553;
    v13._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    __break(1u);
    goto LABEL_19;
  }

  *(v4 + 20) = v17;
  result = sub_1B0E21624(a4);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v4 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v4 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_20;
  }

  *(v4 + 20) = v23;
  v24 = __OFADD__(v18, result);
  v25 = v18 + result;
  if (v24)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = sub_1B0E1BA54(a1);
  v26 = 0;
  if ((result & 1) != 0 && a3)
  {
    MEMORY[0x1B2726E80](a2, a3);
    MEMORY[0x1B2726E80](32, 0xE100000000000000);
    v27 = sub_1B0CFC1B0(0x2054455352414843, 0xE800000000000000, (v5 + 8), v23);
    if (v28)
    {
      v29._countAndFlagsBits = 0x2054455352414843;
      v29._object = 0xE800000000000000;
      v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v23);
    }

    v26 = v27;

    v30 = *(v5 + 20);
    v16 = __CFADD__(v30, v26);
    v31 = v30 + v26;
    if (v16)
    {
      goto LABEL_24;
    }

    *(v5 + 20) = v31;
  }

  v32 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_22;
  }

  v33 = sub_1B0E1C84C(a1);
  v24 = __OFADD__(v32, v33);
  result = v32 + v33;
  if (v24)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6C228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t))
{
  v12 = *(v6 + 20);
  result = sub_1B0CFC1B0(a4, a5, (v6 + 8), *(v6 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = a4;
    v15._object = a5;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = result;
  v17 = *(v6 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v6 + 20) = v19;
  result = a6(a1);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v21 = *(v6 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v6 + 8), *(v6 + 20));
  if (v22)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v6 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_13;
  }

  *(v6 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = sub_1B0DD59A4(a2);
  v28 = __OFADD__(v26, v27);
  result = v26 + v27;
  if (v28)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6C354(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x41544F5551544553, 0xE900000000000020, (v4 + 8), *(v4 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x41544F5551544553;
    v13._object = 0xE900000000000020;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = result;
  v15 = *(v4 + 20);
  v16 = __CFADD__(v15, result);
  v17 = v15 + result;
  if (v16)
  {
    goto LABEL_33;
  }

  *(v4 + 20) = v17;
  result = sub_1B0D4B6B8(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v19 = *(v4 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v4 + 8), *(v4 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v4 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_35;
  }

  *(v4 + 20) = v23;
  v24 = __OFADD__(v18, result);
  v25 = v18 + result;
  if (v24)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v49 = a4;
  v26 = *(a4 + 16);
  if (v26)
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v4 + 8), v23);
    if (v27)
    {
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v23);
    }

    v29 = result;
    v30 = *(v4 + 20);
    LODWORD(v23) = v30 + result;
    if (__CFADD__(v30, result))
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v23;
  }

  else
  {
    v29 = 0;
  }

  result = sub_1B0CFC1B0(40, 0xE100000000000000, (v4 + 8), v23);
  if (v31)
  {
    v32._countAndFlagsBits = 40;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v23);
  }

  v33 = *(v4 + 20);
  v16 = __CFADD__(v33, result);
  v34 = v33 + result;
  if (v16)
  {
    goto LABEL_37;
  }

  *(v4 + 20) = v34;
  v35 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  MEMORY[0x1EEE9AC00](result);
  v48[2] = sub_1B0D6DBF8;
  v48[3] = 0;
  v48[4] = v5;
  v48[5] = &v49;
  v48[6] = 32;
  v48[7] = 0xE100000000000000;
  result = sub_1B0DE6650(0, sub_1B0D73298, v48, a4);
  v36 = v35 + result;
  if (__OFADD__(v35, result))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v37 = *(v5 + 20);
  result = sub_1B0CFC1B0(41, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v38)
  {
    v39._countAndFlagsBits = 41;
    v39._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v39, v37);
  }

  v40 = *(v5 + 20);
  v41 = (v40 + result);
  if (__CFADD__(v40, result))
  {
    goto LABEL_40;
  }

  *(v5 + 20) = v41;
  v24 = __OFADD__(v36, result);
  v42 = v36 + result;
  if (v24)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v26)
  {
    v47 = v42;
    goto LABEL_29;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v5 + 8), v41);
  if (v43)
  {
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v41);
  }

  v45 = *(v5 + 20);
  v16 = __CFADD__(v45, result);
  v46 = v45 + result;
  if (v16)
  {
    goto LABEL_44;
  }

  *(v5 + 20) = v46;
  v47 = v42 + result;
  if (__OFADD__(v42, result))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_29:
  result = v25 + v47;
  if (__OFADD__(v25, v47))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6C65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(v4 + 20);
  result = sub_1B0CFC1B0(0x444154454D544547, 0xEB00000000415441, (v4 + 8), *(v4 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = 0x444154454D544547;
    v12._object = 0xEB00000000415441;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(v4 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v4 + 20) = v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v4 + 8), v15);
    if (v17)
    {
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = result;
    v20 = *(v4 + 20);
    v21 = (v20 + result);
    if (__CFADD__(v20, result))
    {
      goto LABEL_45;
    }

    *(v4 + 20) = v21;
    v60 = a1;
    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v4 + 8), v21);
    if (v22)
    {
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
    }

    v24 = result;
    v25 = *(v4 + 20);
    v26 = (v25 + result);
    if (__CFADD__(v25, result))
    {
      goto LABEL_46;
    }

    *(v4 + 20) = v26;
    result = sub_1B0CFC1B0(40, 0xE100000000000000, (v4 + 8), v26);
    if (v27)
    {
      v28._countAndFlagsBits = 40;
      v28._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v4 + 20);
    v30 = __CFADD__(v29, result);
    v31 = v29 + result;
    if (v30)
    {
      goto LABEL_47;
    }

    *(v4 + 20) = v31;
    v32 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    MEMORY[0x1EEE9AC00](result);
    v59[2] = sub_1B0DEEDF0;
    v59[3] = 0;
    v59[4] = v5;
    v59[5] = &v60;
    v59[6] = 32;
    v59[7] = 0xE100000000000000;
    result = sub_1B0DE671C(0, sub_1B0D732BC, v59, a1);
    v33 = v32 + result;
    if (__OFADD__(v32, result))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v34 = *(v5 + 20);
    result = sub_1B0CFC1B0(41, 0xE100000000000000, (v5 + 8), *(v5 + 20));
    if (v35)
    {
      v36._countAndFlagsBits = 41;
      v36._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v36, v34);
    }

    v37 = *(v5 + 20);
    v38 = (v37 + result);
    if (__CFADD__(v37, result))
    {
      goto LABEL_50;
    }

    *(v5 + 20) = v38;
    v39 = v33 + result;
    if (__OFADD__(v33, result))
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    result = sub_1B0CFC1B0(0, 0xE000000000000000, (v5 + 8), v38);
    if (v40)
    {
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
    }

    v42 = *(v5 + 20);
    LODWORD(v15) = v42 + result;
    if (__CFADD__(v42, result))
    {
      goto LABEL_52;
    }

    *(v5 + 20) = v15;
    v43 = v39 + result;
    if (__OFADD__(v39, result))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v44 = __OFADD__(v19, v43);
    v16 = v19 + v43;
    if (v44)
    {
LABEL_54:
      __break(1u);
      return result;
    }
  }

  v45 = v13 + v16;
  if (__OFADD__(v13, v16))
  {
    goto LABEL_38;
  }

  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v5 + 8), v15);
  if (v46)
  {
    v47._countAndFlagsBits = 32;
    v47._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v47, v15);
  }

  v48 = *(v5 + 20);
  v30 = __CFADD__(v48, result);
  v49 = v48 + result;
  if (v30)
  {
    goto LABEL_39;
  }

  *(v5 + 20) = v49;
  v50 = v45 + result;
  if (__OFADD__(v45, result))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  result = sub_1B0DD59A4(a2);
  v44 = __OFADD__(v50, result);
  v51 = v50 + result;
  if (v44)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v52 = *(v5 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v53)
  {
    v54._countAndFlagsBits = 32;
    v54._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v54, v52);
  }

  v55 = *(v5 + 20);
  v30 = __CFADD__(v55, result);
  v56 = v55 + result;
  if (v30)
  {
    goto LABEL_42;
  }

  *(v5 + 20) = v56;
  v57 = v51 + result;
  if (__OFADD__(v51, result))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v58 = sub_1B0D7FBE0(a4);
  v44 = __OFADD__(v57, v58);
  result = v57 + v58;
  if (v44)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  return result;
}

uint64_t sub_1B0D6C9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 20);
  result = sub_1B0CFC1B0(0x444154454D544553, 0xEC00000020415441, (v5 + 8), *(v5 + 20));
  if (v11)
  {
    v12._countAndFlagsBits = 0x444154454D544553;
    v12._object = 0xEC00000020415441;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(v5 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v5 + 20) = v16;
  result = sub_1B0DD59A4(a1);
  v17 = __OFADD__(v13, result);
  v18 = v13 + result;
  if (v17)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = *(v5 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v5 + 8), *(v5 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v5 + 20);
  v15 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v15)
  {
    goto LABEL_13;
  }

  *(v5 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = sub_1B0D7FE00(a3, a4, a5);
  v17 = __OFADD__(v24, v25);
  result = v24 + v25;
  if (v17)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6CB40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *(v3 + 20);
  result = sub_1B0CFC1B0(0x59454B5445534552, 0xE800000000000000, (v3 + 8), *(v3 + 20));
  if (v9)
  {
    v10._countAndFlagsBits = 0x59454B5445534552;
    v10._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    goto LABEL_27;
  }

  *(v3 + 20) = v13;
  if (!a1)
  {
    v28 = 0;
    goto LABEL_23;
  }

  result = sub_1B0CFC1B0(32, 0xE100000000000000, (v3 + 8), v13);
  if (v14)
  {
    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(v3 + 20);
  v18 = __CFADD__(v17, result);
  v19 = v17 + result;
  if (v18)
  {
    goto LABEL_29;
  }

  *(v3 + 20) = v19;
  result = sub_1B0DD59A4(a1);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v38 = a3;
  v21 = a3[2];
  if (v21)
  {
    v22 = *(v3 + 20);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
    if (v23)
    {
      v24._countAndFlagsBits = 32;
      v24._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
    }

    v25 = result;
    v26 = *(v4 + 20);
    v18 = __CFADD__(v26, result);
    v27 = v26 + result;
    if (v18)
    {
      goto LABEL_33;
    }

    *(v4 + 20) = v27;
  }

  else
  {
    v25 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v37[2] = sub_1B0D5C820;
  v37[3] = 0;
  v37[4] = v4;
  v37[5] = &v38;
  v37[6] = 32;
  v37[7] = 0xE100000000000000;
  result = sub_1B0DED0F8(0, sub_1B0D73330, v37, a3);
  v29 = v25 + result;
  if (__OFADD__(v25, result))
  {
    goto LABEL_31;
  }

  if (!v21)
  {
    result = 0;
    v35 = v29;
    goto LABEL_22;
  }

  v30 = *(v4 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v4 + 8), *(v4 + 20));
  if (v31)
  {
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
  }

  v33 = *(v4 + 20);
  v18 = __CFADD__(v33, result);
  v34 = v33 + result;
  if (v18)
  {
    goto LABEL_34;
  }

  *(v4 + 20) = v34;
  v35 = v29 + result;
  if (__OFADD__(v29, result))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_22:
  v36 = __OFADD__(v20, v35);
  v28 = v20 + v35;
  if (v36)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

LABEL_23:
  result = v11 + v28;
  if (__OFADD__(v11, v28))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_1B0D6CD9C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x55414C52554E4547, 0xEA00000000004854, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x55414C52554E4547;
    v7._object = 0xEA00000000004854;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v1 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v25[2] = sub_1B0D6D4FC;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_1B0DE676C(0, sub_1B0D73354, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6CF84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x48435445464C5255, 0xE800000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0x48435445464C5255;
    v7._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_20;
  }

  *(v1 + 20) = v10;
  v26 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v1 + 8), v10);
    if (v12)
    {
      v13._countAndFlagsBits = 32;
      v13._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    v16 = __CFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      goto LABEL_23;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v25[2] = sub_1B0D6D46C;
  v25[3] = 0;
  v25[4] = v2;
  v25[5] = &v26;
  v25[6] = 32;
  v25[7] = 0xE100000000000000;
  result = sub_1B0DE6128(0, sub_1B0D73378, v25, a1);
  v18 = v14 + result;
  if (__OFADD__(v14, result))
  {
    goto LABEL_21;
  }

  if (!v11)
  {
    v24 = v14 + result;
    goto LABEL_16;
  }

  v19 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v2 + 8), *(v2 + 20));
  if (v20)
  {
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(v2 + 20);
  v16 = __CFADD__(v22, result);
  v23 = v22 + result;
  if (v16)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v23;
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v8 + v24;
  if (__OFADD__(v8, v24))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6D164(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v21 = 0x4843544142444955;
  v22 = 0xEB00000000205345;
  v9 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v9);

  v10 = *(v4 + 20);
  v11 = sub_1B0CFC1B0(0x4843544142444955, 0xEB00000000205345, (v5 + 8), *(v5 + 20));
  if (v12)
  {
    v13._countAndFlagsBits = 0x4843544142444955;
    v13._object = 0xEB00000000205345;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
  }

  v14 = v11;

  v16 = *(v5 + 20);
  v17 = __CFADD__(v16, v14);
  v18 = v16 + v14;
  if (v17)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  *(v5 + 20) = v18;
  if (a4)
  {
    v19 = 0;
  }

  else
  {
    v21 = a2;
    v22 = a3;
    v19 = sub_1B0D6D794(&v21, v5);
  }

  v20 = __OFADD__(v14, v19);
  result = &v19[v14];
  if (v20)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1B0D6D288(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 20);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0CFC1B0(a1, a2, (v3 + 8), v8);
  if (v10)
  {
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = v9;

  v14 = *(v3 + 20);
  v15 = (v14 + v12);
  if (__CFADD__(v14, v12))
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v15;
  v31 = a3;
  v16 = *(a3 + 16);
  if (v16)
  {
    result = sub_1B0CFC1B0(32, 0xE100000000000000, (v3 + 8), v14 + v12);
    if (v17)
    {
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v19 = result;
    v20 = *(v4 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_23;
    }

    *(v4 + 20) = v22;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v30[2] = sub_1B0D6D8F0;
  v30[3] = 0;
  v30[4] = v4;
  v30[5] = &v31;
  v30[6] = 0;
  v30[7] = 0xE000000000000000;
  result = sub_1B0DE68A8(0, sub_1B0D733A4, v30, a3);
  v23 = v19 + result;
  if (__OFADD__(v19, result))
  {
    goto LABEL_21;
  }

  if (!v16)
  {
    v29 = v19 + result;
    goto LABEL_16;
  }

  v24 = *(v4 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, (v4 + 8), *(v4 + 20));
  if (v25)
  {
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v4 + 20);
  v21 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v21)
  {
    goto LABEL_24;
  }

  *(v4 + 20) = v28;
  v29 = v23 + result;
  if (__OFADD__(v23, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_16:
  result = v12 + v29;
  if (__OFADD__(v12, v29))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6D46C(uint64_t result)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  if (v4 < v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 16);
    v6 = *(result + 20);
    v7 = *(result + 22);
    if (v5 - (v7 | (v6 << 8)) >= v4)
    {
      v18 = v1;
      v19 = v2;
      v10 = *result;
      v11 = v3;
      v12 = v4;
      v13 = v5;
      v14 = v6;
      v15 = v7;
      v16 = v3;
      v17 = v4;

      sub_1B0D79300(&v10);
      v9 = v8;
      sub_1B04394F4(&v10);
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D6D4FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1B0E190D0(v3);
}

uint64_t sub_1B0D6D560(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (v3 == 254)
  {
LABEL_8:
    v10 = *(v2 + 5);
    v2 = (v2 + 20);
    v9 = v10;
    result = sub_1B0CFC1B0(0x2D4C414943455053, 0xEB00000000455355, (v2 - 12), v10);
    if (v11)
    {
      v12._countAndFlagsBits = 0x2D4C414943455053;
      v12._object = 0xEB00000000455355;
      result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v8 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
LABEL_11:
      *v2 = v8;
      return result;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v3 == 255)
  {
    v2 = (a2 + 20);
    v4 = *(a2 + 5);
    result = sub_1B0CFC1B0(0x45544F4D4552, 0xE600000000000000, a2 + 1, v4);
    if (v6)
    {
      v7._countAndFlagsBits = 0x45544F4D4552;
      v7._object = 0xE600000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_8;
  }

  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *a1;
  v16 = *(a1 + 8);
  if (v3)
  {
    result = sub_1B0DF6F58(*a1, v16, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v18 = *(a2 + 5);
    result = sub_1B0CFC1B0(*a1, v16, a2 + 1, *(a2 + 5));
    if (v19)
    {
      v20._countAndFlagsBits = v17;
      v20._object = v16;
      result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
    }

    v21 = *(v2 + 5);
    v22 = __CFADD__(v21, result);
    v23 = v21 + result;
    if (v22)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    *(v2 + 5) = v23;
  }

  if (HIBYTE(v15) != 255)
  {
    v24 = result;
    v25 = *(v2 + 5);
    sub_1B0D3C8F0(v13, v14, v15, HIBYTE(v15) & 1);
    result = sub_1B0CFC1B0(32, 0xE100000000000000, v2 + 1, v25);
    if (v26)
    {
      v27._countAndFlagsBits = 32;
      v27._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
    }

    v28 = *(v2 + 5);
    v22 = __CFADD__(v28, result);
    v29 = v28 + result;
    if (v22)
    {
      goto LABEL_27;
    }

    *(v2 + 5) = v29;
    v30 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v31 = sub_1B0DF7268(v13, v14, v15 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v15) & 1) << 56));
    sub_1B0D3CB98(v13, v14, v15);
    result = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_29:
      __break(1u);
    }
  }

  return result;
}

char *sub_1B0D6D794(char *result, uint64_t a2)
{
  v2 = *result;
  if ((*result - 0x100000000) < 0xFFFFFFFF00000001)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = *(result + 1);
  if (v3 - 0x100000000 < 0xFFFFFFFF00000001)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v3 < v2)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = *(a2 + 20);
  result = sub_1B0CFC1B0(32, 0xE100000000000000, (a2 + 8), v5);
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
  }

  v8 = result;
  v9 = *(a2 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    goto LABEL_21;
  }

  *(a2 + 20) = v11;
  result = sub_1B050721C(v2);
  v12 = result;
  if (v2 >= v3)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v13 = *(a2 + 20);
  result = sub_1B0CFC1B0(58, 0xE100000000000000, (a2 + 8), *(a2 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = result;
  v17 = *(a2 + 20);
  v10 = __CFADD__(v17, result);
  v18 = v17 + result;
  if (v10)
  {
    goto LABEL_24;
  }

  *(a2 + 20) = v18;
  result = sub_1B050721C(v3);
  v19 = &result[v16];
  if (__OFADD__(v16, result))
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  v20 = __OFADD__(v12, v19);
  v21 = &v19[v12];
  if (v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = &v21[v8];
  if (__OFADD__(v8, v21))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0D6D8F0(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32);
  if ((result & 0x8000000000000000) == 0)
  {
    return sub_1B0D4B6B8(result, v3, v4 & 0xFFFFFFFFFFFFFFLL);
  }

  if (HIDWORD(v3) < v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(v3) > v4 - (BYTE6(v4) | (WORD2(v4) << 8)))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7[0] = result & 0x7FFFFFFFFFFFFFFFLL;
  v7[1] = v3;
  v8 = v4;
  v9 = WORD2(v4);
  v10 = BYTE6(v4);
  v11 = v3;
  v12 = HIDWORD(v3);

  sub_1B0D79300(v7);
  v6 = v5;
  sub_1B04394F4(v7);
  return v6;
}

uint64_t sub_1B0D6D9B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (v31 - v6);
  v8 = type metadata accessor for StoreModifier();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0D73230(a1, v11, type metadata accessor for StoreModifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B03C60A4(v11, v7, &qword_1EB6E6F58, &unk_1B0EF5150);
    v12 = sub_1B0E3001C(v7);
    sub_1B0398EFC(v7, &qword_1EB6E6F58, &unk_1B0EF5150);
    return v12;
  }

  v14 = *v11;
  v15 = *(a2 + 20);
  result = sub_1B0CFC1B0(0x45474E4148434E55, 0xEF2045434E495344, (a2 + 8), *(a2 + 20));
  if (v16)
  {
    v17._countAndFlagsBits = 0x45474E4148434E55;
    v17._object = 0xEF2045434E495344;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = result;
  v19 = *(a2 + 20);
  v20 = (v19 + result);
  if (__CFADD__(v19, result))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(a2 + 20) = v20;
  v31[0] = v14;
  v21 = sub_1B0E469C8();
  v23 = v22;
  v24 = sub_1B0CFC1B0(v21, v22, (a2 + 8), v20);
  if (v25)
  {
    v26._countAndFlagsBits = v21;
    v26._object = v23;
    v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v20);
  }

  v27 = v24;

  v28 = *(a2 + 20);
  v29 = __CFADD__(v28, v27);
  v30 = v28 + v27;
  if (v29)
  {
    goto LABEL_12;
  }

  *(a2 + 20) = v30;
  result = v18 + v27;
  if (__OFADD__(v18, v27))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t static Command.uidBatches(batchSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  *(a2 + 24) = 1;
  type metadata accessor for Command();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0D6DC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v29[0] = a3;
  v29[1] = a4;
  v30 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v29 - v21;
  sub_1B03B5C80(a1, v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (sub_1B0D6EA90() < 1)
  {
    sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v23 = 1;
  }

  else
  {
    sub_1B03C60A4(v10, v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v20, v14, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v23 = 0;
  }

  v24 = *(v16 + 56);
  v24(v14, v23, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B0398EFC(v14, &unk_1EB6E3670, &unk_1B0E9B260);
    v25 = type metadata accessor for Command();
    return (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  }

  else
  {
    sub_1B03C60A4(v14, v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v27 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48);
    sub_1B03C60A4(v22, a5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v24(a5, 0, 1, v15);
    *v27 = v30;
    *(v27 + 8) = v29[0];
    v28 = type metadata accessor for Command();
    swift_storeEnumTagMultiPayload();
    (*(*(v28 - 8) + 56))(a5, 0, 1, v28);
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }
}

uint64_t static Command.uidFetch(messages:attributes:modifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  sub_1B03B5C80(a1, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (sub_1B0D6EA90() < 1)
  {
    sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v22 = 1;
  }

  else
  {
    sub_1B03C60A4(v9, v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v19, v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v22 = 0;
  }

  v23 = *(v15 + 56);
  v23(v13, v22, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B0398EFC(v13, &unk_1EB6E3670, &unk_1B0E9B260);
    v24 = type metadata accessor for Command();
    return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }

  else
  {
    sub_1B03C60A4(v13, v21, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7240, &qword_1B0EF1220);
    v27 = *(v26 + 48);
    v28 = *(v26 + 64);
    sub_1B03C60A4(v21, a4, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v23(a4, 0, 1, v14);
    v29 = v32;
    *(a4 + v27) = v31;
    *(a4 + v28) = v29;
    v30 = type metadata accessor for Command();
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(a4, 0, 1, v30);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }
}

uint64_t static Command.uidStore(messages:modifiers:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a3;
  v36 = a4;
  v34 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - v21;
  sub_1B03B5C80(a1, v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (sub_1B0D6EA90() < 1)
  {
    sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v23 = 1;
  }

  else
  {
    sub_1B03C60A4(v10, v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v20, v14, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v23 = 0;
  }

  v24 = *(v16 + 56);
  v24(v14, v23, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B0398EFC(v14, &unk_1EB6E3670, &unk_1B0E9B260);
    v25 = type metadata accessor for Command();
    return (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  }

  else
  {
    sub_1B03C60A4(v14, v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7238, &qword_1B0EF1218);
    v28 = *(v27 + 48);
    v29 = (a5 + *(v27 + 64));
    sub_1B03C60A4(v22, a5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v24(a5, 0, 1, v15);
    v30 = v35;
    *(a5 + v28) = v34;
    v31 = v36;
    *v29 = v30;
    v29[1] = v31;
    v32 = type metadata accessor for Command();
    swift_storeEnumTagMultiPayload();
    (*(*(v32 - 8) + 56))(a5, 0, 1, v32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return sub_1B0D72538();
  }
}

uint64_t static Command.uidExpunge(messages:mailbox:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  sub_1B03B5C80(a1, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (sub_1B0D6EA90() < 1)
  {
    sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v20 = 1;
  }

  else
  {
    sub_1B03C60A4(v7, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v16, v11, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v20 = 0;
  }

  v21 = *(v13 + 56);
  v21(v11, v20, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B0398EFC(v11, &unk_1EB6E3670, &unk_1B0E9B260);
    v22 = type metadata accessor for Command();
    return (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  else
  {
    sub_1B03C60A4(v11, v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03C60A4(v19, a2, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v21(a2, 0, 1, v12);
    v24 = type metadata accessor for Command();
    swift_storeEnumTagMultiPayload();
    return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
  }
}

uint64_t sub_1B0D6EA90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E72E0, &qword_1B0EF1360);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0E46E68();
  v22 = v6;
  (*(v6 + 16))(v10, v12, v5);
  sub_1B0D730A0(&qword_1EB6DA2F0);
  sub_1B0E44F08();
  v13 = *(v1 + 44);
  sub_1B0D730A0(&qword_1EB6DA2E8);
  v14 = 0;
  while (1)
  {
    sub_1B0E456C8();
    if (*&v4[v13] == v23[0])
    {
      break;
    }

    v15 = sub_1B0E457B8();
    v18 = *v16;
    v17 = v16[1];
    v15(v23, 0);
    sub_1B0E456D8();
    v19 = __OFADD__(v14, v17 - v18);
    v14 += v17 - v18;
    if (v19)
    {
      __break(1u);
      break;
    }
  }

  sub_1B0398EFC(v4, &qword_1EB6E72E0, &qword_1B0EF1360);
  (*(v22 + 8))(v12, v5);
  return v14;
}

uint64_t sub_1B0D6ED1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, uint64_t (*a8)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  v11 = *(a2 + 64);
  v12 = *a6;
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v14 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v14;
  v17 = v11;
  result = a8(v10, v16, a3, a4, a5, v12);
  if (!v8)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_1B0D6ED7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E23640(*a1, *a2, a2[1], a2[2], a2[3], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1B0D6EDE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E2665C(*a1, *a2, a2[1], a2[2], a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1B0D6EE48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  v15 = *(a2 + 30);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v18 = *a6;
  v20[0] = *a2;
  v20[1] = v12;
  v20[2] = *(a2 + 16);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  result = sub_1B0E237B0(v11, v20, a3, a4, a5, v18, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1B0D6EEB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E23934(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | ((*(a2 + 28) | (*(a2 + 30) << 16)) << 32), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore27CommandO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, uint64_t a2)
{
  v532 = a1;
  v533 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v491 = &v490 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v498 = &v490 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v496 = &v490 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v495 = &v490 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v494 = &v490 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v493 = &v490 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v497 = &v490 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v492 = &v490 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v490 = &v490 - v21;
  v531 = type metadata accessor for Command();
  v22 = *(*(v531 - 8) + 64);
  MEMORY[0x1EEE9AC00](v531);
  v529 = &v490 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v528 = &v490 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v527 = &v490 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v526 = (&v490 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v525 = &v490 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v522 = (&v490 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v524 = &v490 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v519 = &v490 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v521 = &v490 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v517 = &v490 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v516 = &v490 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v520 = &v490 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v523 = &v490 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v513 = (&v490 - v49);
  MEMORY[0x1EEE9AC00](v50);
  v518 = &v490 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v515 = &v490 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v514 = &v490 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v509 = &v490 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v507 = (&v490 - v59);
  MEMORY[0x1EEE9AC00](v60);
  v512 = &v490 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v506 = (&v490 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v511 = &v490 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v510 = &v490 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v508 = &v490 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v505 = (&v490 - v71);
  MEMORY[0x1EEE9AC00](v72);
  v504 = (&v490 - v73);
  MEMORY[0x1EEE9AC00](v74);
  v503 = &v490 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v502 = &v490 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v501 = &v490 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v500 = &v490 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v499 = &v490 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v490 - v85;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v490 - v88;
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v490 - v91;
  MEMORY[0x1EEE9AC00](v93);
  v530 = &v490 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v490 - v96;
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v490 - v99;
  MEMORY[0x1EEE9AC00](v101);
  v103 = &v490 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E72F0, &qword_1B0EF1368);
  v105 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104 - 8);
  v107 = &v490 - v106;
  v109 = &v490 + *(v108 + 56) - v106;
  sub_1B0D73230(v532, &v490 - v106, type metadata accessor for Command);
  v110 = v533;
  v533 = v109;
  sub_1B0D73230(v110, v109, type metadata accessor for Command);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B0D73230(v107, v100, type metadata accessor for Command);
      v229 = *v100;
      v230 = v533;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_86;
      }

      v305 = *(v100 + 2);
      goto LABEL_170;
    case 2u:
      sub_1B0D73230(v107, v97, type metadata accessor for Command);
      v255 = *v97;
      v256 = *(v97 + 2);
      v257 = v533;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_71;
      }

      goto LABEL_85;
    case 3u:
      v532 = v107;
      v277 = v530;
      sub_1B0D73230(v107, v530, type metadata accessor for Command);
      v278 = *(v277 + 48);
      v563 = *(v277 + 32);
      v564 = v278;
      v279 = *(v277 + 72);
      v565 = *(v277 + 64);
      v280 = *(v277 + 16);
      v561 = *v277;
      v562 = v280;
      v281 = *(v277 + 80);
      v283 = *(v277 + 88);
      v282 = *(v277 + 96);
      v284 = *(v277 + 104) | ((*(v277 + 108) | (*(v277 + 110) << 16)) << 32);
      v285 = *(v277 + 111);
      v286 = *(v277 + 112);
      v287 = v533;
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        sub_1B0D3C8FC(v283, v282, v284, v285);

        sub_1B0398EFC(&v561, &qword_1EB6E7268, &qword_1B0EF1248);
        v107 = v532;
        goto LABEL_210;
      }

      v531 = v286;
      v288 = *(v287 + 16);
      v289 = *(v287 + 48);
      v558 = *(v287 + 32);
      v559 = v289;
      v290 = *(v287 + 16);
      v557[0] = *v287;
      v557[1] = v290;
      v291 = *(v277 + 16);
      v555 = *v277;
      v556 = v291;
      v553 = *(v277 + 40);
      v292 = *(v287 + 64);
      v529 = *(v287 + 72);
      v560 = v292;
      v293 = *(v287 + 80);
      v294 = *(v287 + 88);
      v295 = *(v287 + 96);
      v296 = *(v287 + 104) | ((*(v287 + 108) | (*(v287 + 110) << 16)) << 32);
      v297 = *(v287 + 111);
      v298 = *(v287 + 112);
      v554 = *(v277 + 56);
      v299 = v563;
      v300 = v565;
      v549 = v557[0];
      v550 = v288;
      v301 = *(v287 + 48);
      v551 = v558;
      v552 = v301;
      v302 = v292;
      if (!v565)
      {
        if (!v292)
        {
          v523 = v293;
          LODWORD(v524) = v297;
          v526 = v294;
          v527 = v295;
          v528 = v296;
          v525 = v298;
          v478 = *(v530 + 16);
          v540 = *v530;
          v541 = v478;
          *&v542[0] = v563;
          *(v542 + 8) = *(v530 + 40);
          *(&v542[1] + 1) = *(v530 + 56);
          v543 = 0;
          sub_1B03B5C80(&v561, &v534, &qword_1EB6E7268, &qword_1B0EF1248);
          sub_1B03B5C80(v557, &v534, &qword_1EB6E7268, &qword_1B0EF1248);
          sub_1B0398EFC(&v540, &qword_1EB6E7268, &qword_1B0EF1248);
          goto LABEL_302;
        }

LABEL_255:
        sub_1B0D3C8FC(v294, v295, v296, v297);
        sub_1B0D3C8FC(v283, v282, v284, v285);

        v540 = v555;
        v541 = v556;
        *(v542 + 8) = v553;
        v544 = v549;
        v545 = v550;
        v546 = v551;
        *&v542[0] = v299;
        *(&v542[1] + 1) = v554;
        v543 = v300;
        v547 = v552;
        v548 = v302;
        v469 = &unk_1EB6E72F8;
        v470 = &unk_1B0EF1370;
        v471 = &v540;
LABEL_256:
        sub_1B0398EFC(v471, v469, v470);
        goto LABEL_311;
      }

      if (!v292)
      {
        goto LABEL_255;
      }

      v303 = *(v533 + 16);
      v540 = *v533;
      v541 = v303;
      v304 = *(v533 + 48);
      v542[0] = *(v533 + 32);
      v542[1] = v304;
      v543 = v292;
      v525 = v298;
      v526 = v294;
      v527 = v295;
      v528 = v296;
      LODWORD(v524) = v297;
      if (v563 == 0xFF)
      {
        if (LOBYTE(v542[0]) == 0xFF)
        {
          v523 = v293;
          sub_1B03B5C80(&v561, &v534, &qword_1EB6E7268, &qword_1B0EF1248);
          sub_1B03B5C80(v557, &v534, &qword_1EB6E7268, &qword_1B0EF1248);
          goto LABEL_301;
        }

        goto LABEL_287;
      }

      v476 = *(v530 + 16);
      v566[0] = *v530;
      v566[1] = v476;
      v568 = *(v530 + 40);
      v477 = *(v530 + 56);
      v567 = v563;
      v569 = v477;
      if (LOBYTE(v542[0]) == 0xFF)
      {
LABEL_287:
        sub_1B03B5C80(&v561, &v534, &qword_1EB6E7268, &qword_1B0EF1248);
        sub_1B03B5C80(v557, &v534, &qword_1EB6E7268, &qword_1B0EF1248);
LABEL_288:
        sub_1B0398EFC(&v540, &qword_1EB6E7268, &qword_1B0EF1248);
        v534 = v555;
        v535 = v556;
        v536 = v299;
        v537 = v553;
        v538 = v554;
        v539 = v300;
        sub_1B0398EFC(&v534, &qword_1EB6E7268, &qword_1B0EF1248);
LABEL_308:
        sub_1B0398EFC(&v561, &qword_1EB6E7268, &qword_1B0EF1248);
        sub_1B0398EFC(v557, &qword_1EB6E7268, &qword_1B0EF1248);
        sub_1B0D3C8FC(v526, v527, v528, v524);
        sub_1B0D3C8FC(v283, v282, v284, v285);

        goto LABEL_309;
      }

      v523 = v293;
      v480 = *(v533 + 16);
      v570[0] = *v533;
      v570[1] = v480;
      v572 = *(v533 + 40);
      v481 = *(v533 + 56);
      v571 = *&v542[0];
      v573 = v481;
      sub_1B03B5C80(&v561, &v534, &qword_1EB6E7268, &qword_1B0EF1248);
      sub_1B03B5C80(v557, &v534, &qword_1EB6E7268, &qword_1B0EF1248);
      if (!sub_1B0DCA1A0(v566, v570))
      {
        goto LABEL_288;
      }

LABEL_301:
      v482 = sub_1B0D320D8(v300, v302);
      sub_1B0398EFC(&v540, &qword_1EB6E7268, &qword_1B0EF1248);
      v534 = v555;
      v535 = v556;
      v536 = v299;
      v537 = v553;
      v538 = v554;
      v539 = v300;
      sub_1B0398EFC(&v534, &qword_1EB6E7268, &qword_1B0EF1248);
      if ((v482 & 1) == 0)
      {
        goto LABEL_308;
      }

LABEL_302:
      if ((v281 | (v281 << 32)) != (v523 | (v523 << 32)))
      {
        goto LABEL_308;
      }

      v483 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v279, v529);

      if ((v483 & 1) == 0)
      {
        sub_1B0398EFC(&v561, &qword_1EB6E7268, &qword_1B0EF1248);
        sub_1B0398EFC(v557, &qword_1EB6E7268, &qword_1B0EF1248);
        sub_1B0D3C8FC(v526, v527, v528, v524);
        sub_1B0D3C8FC(v283, v282, v284, v285);
LABEL_309:

LABEL_310:

        goto LABEL_311;
      }

      if (v285)
      {
        v484 = v531;
        v485 = v524;
        if (v524)
        {
          v486 = v526;
          if (sub_1B0D3CF14(v283, v526))
          {
            goto LABEL_337;
          }

          goto LABEL_332;
        }

        goto LABEL_338;
      }

      v484 = v531;
      v485 = v524;
      if (v524)
      {
LABEL_332:
        v489 = 1;
LABEL_339:

        sub_1B0D3C8FC(v526, v527, v528, v489);

        sub_1B0D3C8FC(v283, v282, v284, v285);
        sub_1B0398EFC(v557, &qword_1EB6E7268, &qword_1B0EF1248);
        v471 = &v561;
        v469 = &qword_1EB6E7268;
        v470 = &qword_1B0EF1248;
        goto LABEL_256;
      }

      v486 = v526;
      if (!sub_1B0C2DB54(v283, v282, v284 & 0xFFFFFFFFFFFFFFLL, v526, v527, v528 & 0xFFFFFFFFFFFFFFLL))
      {
LABEL_338:
        v489 = 0;
        goto LABEL_339;
      }

LABEL_337:
      v139 = sub_1B0CFDC08(v484, v525);
      sub_1B0D3C8FC(v486, v527, v528, v485);
      sub_1B0D3C8FC(v283, v282, v284, v285);
      sub_1B0398EFC(v557, &qword_1EB6E7268, &qword_1B0EF1248);
      sub_1B0398EFC(&v561, &qword_1EB6E7268, &qword_1B0EF1248);

LABEL_318:

      v244 = v532;
LABEL_283:
      sub_1B0D733FC(v244, type metadata accessor for Command);
      return v139 & 1;
    case 4u:
      v532 = v107;
      sub_1B0D73230(v107, v92, type metadata accessor for Command);
      v191 = *v92;
      v190 = *(v92 + 1);
      v530 = *(v92 + 4);
      v192 = *(v92 + 3);
      v193 = *(v92 + 4);
      v194 = *(v92 + 10) | ((*(v92 + 22) | (v92[46] << 16)) << 32);
      v195 = v92[47];
      v196 = *(v92 + 6);
      v197 = v533;
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_1B0D3C8FC(v192, v193, v194, v195);

        goto LABEL_203;
      }

      v525 = v190;
      v526 = v192;
      LODWORD(v527) = v195;
      v528 = v193;
      v529 = v194;
      v531 = v196;
      v199 = *v197;
      v198 = *(v197 + 8);
      v524 = *(v197 + 16);
      v200 = *(v197 + 24);
      v201 = *(v197 + 32);
      v202 = *(v197 + 40) | ((*(v197 + 44) | (*(v197 + 46) << 16)) << 32);
      v203 = *(v197 + 47);
      v204 = *(v197 + 48);
      v205 = sub_1B0D34654(v191, v199);

      if ((v205 & 1) == 0)
      {

        sub_1B0D3C8FC(v200, v201, v202, v203);

        sub_1B0D3C8FC(v526, v528, v529, v527);
        goto LABEL_310;
      }

      v533 = v204;
      v206 = v203;
      v207 = v202;
      if ((v530 | (v530 << 32)) != (v524 | (v524 << 32)))
      {
        sub_1B0D3C8FC(v200, v201, v202, v203);
        sub_1B0D3C8FC(v526, v528, v529, v527);

        goto LABEL_309;
      }

      v208 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v525, v198);

      v209 = v201;
      if ((v208 & 1) == 0)
      {
        sub_1B0D3C8FC(v200, v201, v202, v203);
        sub_1B0D3C8FC(v526, v528, v529, v527);
        goto LABEL_309;
      }

      v210 = v200;
      v211 = v528;
      v212 = v529;
      v213 = v527;
      v214 = v526;
      if (v527)
      {
        v215 = v531;
        if (v206)
        {
          v216 = v210;
          if ((sub_1B0D3CF14(v526, v210) & 1) == 0)
          {
            v217 = 1;
LABEL_334:
            v212 = v529;
            goto LABEL_335;
          }

          goto LABEL_328;
        }

        v217 = 0;
      }

      else
      {
        v215 = v531;
        if ((v206 & 1) == 0)
        {
          v216 = v210;
          if (!sub_1B0C2DB54(v526, v528, v529 & 0xFFFFFFFFFFFFFFLL, v210, v209, v207 & 0xFFFFFFFFFFFFFFLL))
          {
            v217 = 0;
            goto LABEL_334;
          }

LABEL_328:
          v531 = v209;
          v139 = sub_1B0CFDC08(v215, v533);
          sub_1B0D3C8FC(v216, v531, v207, v206);
          sub_1B0D3C8FC(v214, v211, v529, v213);
          goto LABEL_317;
        }

        v217 = 1;
      }

LABEL_335:

      sub_1B0D3C8FC(v210, v209, v207, v217);

      sub_1B0D3C8FC(v214, v211, v212, v213);
LABEL_311:
      v467 = v532;
LABEL_312:
      sub_1B0D733FC(v467, type metadata accessor for Command);
LABEL_313:
      v139 = 0;
      return v139 & 1;
    case 5u:
      v336 = v107;
      sub_1B0D73230(v107, v89, type metadata accessor for Command);
      v337 = *v89;
      v338 = *(v89 + 2);
      v532 = *(v89 + 3);
      v339 = *(v89 + 8);
      v340 = *(v89 + 18);
      v341 = v89[38];
      v342 = v533;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        v107 = v336;
        goto LABEL_210;
      }

      v343 = *(v89 + 2);
      v344 = *v342;
      v345 = *(v342 + 16);
      if ((v343 | (v343 << 32)) == (*(v342 + 8) | (*(v342 + 8) << 32)))
      {
        v346 = *(v342 + 24);
        v530 = *(v342 + 32);
        v531 = v346;
        v529 = *(v342 + 36);
        v533 = *(v342 + 38);
        v347 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v337, v344);

        if (v347)
        {
          v139 = sub_1B0C2DB54(v338, v532, v339 | (v340 << 32) | (v341 << 48), v345, v531, v530 | (v529 << 32) | (v533 << 48));

          v244 = v336;
          goto LABEL_283;
        }
      }

      else
      {
      }

      v467 = v336;
      goto LABEL_312;
    case 6u:
      sub_1B0D73230(v107, v86, type metadata accessor for Command);
      v357 = *v86;
      v358 = *(v86 + 2);
      v359 = *(v86 + 6);
      v360 = *(v86 + 4);
      v361 = *(v86 + 5);
      v362 = *(v86 + 6);
      v363 = v533;
      if (swift_getEnumCaseMultiPayload() != 6)
      {

        goto LABEL_210;
      }

      v530 = v360;
      v532 = v107;
      v364 = *(v86 + 2);
      v365 = *v363;
      v366 = *(v363 + 8);
      v367 = *(v363 + 16);
      v368 = *(v363 + 32);
      v531 = *(v363 + 40);
      v528 = *(v363 + 48);
      v529 = v368;
      if ((v364 | (v364 << 32)) == (v366 | (v366 << 32)))
      {
        v369 = *(v363 + 24);
        v370 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v357, v365);

        if ((v370 & 1) != 0 && (v359 | (v359 << 32)) == (v369 | (v369 << 32)))
        {
          v371 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v358, v367);

          if (v371)
          {
            v372 = sub_1B045202C(v361, v531);
            v373 = v532;
            if (v372)
            {
              sub_1B0D393EC(v362, v528);
              v375 = v374;

              if (v375)
              {
                v320 = v373;
                goto LABEL_270;
              }
            }

            else
            {
            }

            v467 = v373;
            goto LABEL_312;
          }

LABEL_241:

          goto LABEL_311;
        }
      }

      else
      {
      }

      goto LABEL_241;
    case 7u:
      v97 = v499;
      sub_1B0D73230(v107, v499, type metadata accessor for Command);
      v255 = *v97;
      v256 = *(v97 + 2);
      v257 = v533;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_85;
      }

LABEL_71:
      v258 = *(v97 + 2);
      v259 = *v257;
      v260 = *(v257 + 8);
      v261 = *(v257 + 16);
      if ((v258 | (v258 << 32)) != (v260 | (v260 << 32)))
      {
        goto LABEL_181;
      }

      v262 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v255, v259);

      if ((v262 & 1) == 0)
      {
        goto LABEL_276;
      }

      v118 = sub_1B0D336F0(v256, v261);
      goto LABEL_280;
    case 8u:
      v384 = v500;
      sub_1B0D73230(v107, v500, type metadata accessor for Command);
      v385 = *v384;
      v386 = *(v384 + 16);
      v387 = v533;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_185;
      }

      v388 = *(v384 + 8);
      v389 = *v387;
      v390 = *(v387 + 8);
      v391 = *(v387 + 16);
      if ((v388 | (v388 << 32)) != (v390 | (v390 << 32)))
      {

        goto LABEL_276;
      }

      v392 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v385, v389);

      if ((v392 & 1) == 0)
      {
        goto LABEL_276;
      }

      v139 = sub_1B0CFDCE8(v386, v391);

      goto LABEL_281;
    case 9u:
      v228 = v501;
      sub_1B0D73230(v107, v501, type metadata accessor for Command);
      v229 = *v228;
      v230 = v533;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_169;
      }

      goto LABEL_86;
    case 0xAu:
      v228 = v502;
      sub_1B0D73230(v107, v502, type metadata accessor for Command);
      v229 = *v228;
      v230 = v533;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_169;
      }

      goto LABEL_86;
    case 0xBu:
      v532 = v107;
      v178 = v503;
      sub_1B0D73230(v107, v503, type metadata accessor for Command);
      v180 = *v178;
      v179 = *(v178 + 8);
      v181 = *(v178 + 16);
      v530 = *(v178 + 24);
      v182 = *(v178 + 38);
      v183 = *(v178 + 36);
      v184 = *(v178 + 32);
      v185 = v533;
      if (swift_getEnumCaseMultiPayload() != 11)
      {

        v107 = v532;
        goto LABEL_210;
      }

      v186 = *v185;
      v187 = *(v185 + 8);
      v188 = *(v185 + 16);
      v531 = *(v185 + 24);
      LODWORD(v529) = *(v185 + 38);
      LODWORD(v528) = *(v185 + 36);
      v189 = *(v185 + 32);
      if (v180 == v186 && v179 == v187)
      {
      }

      else
      {
        v458 = sub_1B0E46A78();

        if ((v458 & 1) == 0)
        {
          goto LABEL_258;
        }
      }

      if (v181)
      {
        if (v188)
        {
          v459 = v189 | ((v528 | (v529 << 16)) << 32);

          v461 = sub_1B0C2DB54(v460, v530, (v184 | ((v183 | (v182 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, v188, v531, v459 & 0xFFFFFFFFFFFFFFLL);

          if (!v461)
          {
            goto LABEL_311;
          }

LABEL_259:
          v320 = v532;
LABEL_270:
          sub_1B0D733FC(v320, type metadata accessor for Command);
          v139 = 1;
          return v139 & 1;
        }
      }

      else if (!v188)
      {
        goto LABEL_259;
      }

LABEL_258:

      goto LABEL_311;
    case 0xCu:
      v218 = v504;
      sub_1B0D73230(v107, v504, type metadata accessor for Command);
      v220 = *v218;
      v219 = v218[1];
      v222 = v218[2];
      v221 = v218[3];
      v223 = v533;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_85;
      }

      v224 = *v223;
      v225 = v223[1];
      v227 = v223[2];
      v226 = v223[3];
      if (v220 == v224 && v219 == v225)
      {
      }

      else
      {
        v462 = sub_1B0E46A78();

        if ((v462 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      if (v222 == v227 && v221 == v226)
      {
LABEL_19:

        goto LABEL_269;
      }

      v455 = sub_1B0E46A78();

LABEL_216:

      if ((v455 & 1) == 0)
      {
        goto LABEL_278;
      }

      goto LABEL_269;
    case 0xDu:
      v354 = v505;
      sub_1B0D73230(v107, v505, type metadata accessor for Command);
      v355 = *v354;
      v356 = v533;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_86;
      }

      v118 = sub_1B044DA4C(v355, *v356);
      goto LABEL_280;
    case 0xEu:
      v162 = v508;
      sub_1B0D73230(v107, v508, type metadata accessor for Command);
      v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48);
      v164 = *(v162 + v163);
      v165 = *(v162 + v163 + 8);
      v166 = v533;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_130;
      }

      v167 = *(v166 + v163);
      v532 = *(v166 + v163 + 8);
      v168 = v166;
      v169 = v490;
      goto LABEL_127;
    case 0xFu:
      v263 = v510;
      sub_1B0D73230(v107, v510, type metadata accessor for Command);
      v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7260, &qword_1B0EF1240);
      v265 = *(v264 + 48);
      v266 = *(v263 + v265);
      v267 = *(v264 + 64);
      v268 = *(v263 + v267);
      v269 = v533;
      if (swift_getEnumCaseMultiPayload() != 15)
      {

        v382 = &qword_1EB6E4050;
        v383 = &unk_1B0EC2B20;
        goto LABEL_208;
      }

      v532 = v268;
      v270 = *(v269 + v265);
      v271 = *(v269 + v267);
      v169 = v492;
      sub_1B03C60A4(v269, v492, &qword_1EB6E4050, &unk_1B0EC2B20);
      v272 = sub_1B0E1A984(v263, v169);
      sub_1B0398EFC(v263, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((v272 & 1) == 0)
      {
        v465 = &qword_1EB6E4050;
        v466 = &unk_1B0EC2B20;
        goto LABEL_249;
      }

      v273 = sub_1B0CFD500(v266, v270);

      if (v273)
      {
        v274 = v169;
        v139 = sub_1B0D349B0(v532, v271);

        v275 = &qword_1EB6E4050;
        v276 = &unk_1B0EC2B20;
        goto LABEL_167;
      }

      v452 = &qword_1EB6E4050;
      v453 = &unk_1B0EC2B20;
      goto LABEL_275;
    case 0x10u:
      v143 = v511;
      sub_1B0D73230(v107, v511, type metadata accessor for Command);
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7258, &qword_1B0EF1238);
      v145 = *(v144 + 48);
      v146 = *(v143 + v145);
      v147 = *(v144 + 64);
      v149 = *(v143 + v147);
      v148 = *(v143 + v147 + 8);
      v150 = v533;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        sub_1B0D72504();

        v382 = &qword_1EB6E4050;
        v383 = &unk_1B0EC2B20;
        goto LABEL_191;
      }

      v151 = *(v150 + v145);
      v152 = *(v150 + v147 + 8);
      v531 = *(v150 + v147);
      v532 = v107;
      v530 = v152;
      v153 = v497;
      sub_1B03C60A4(v150, v497, &qword_1EB6E4050, &unk_1B0EC2B20);
      v154 = sub_1B0E1A984(v143, v153);
      sub_1B0398EFC(v143, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((v154 & 1) == 0)
      {
        v456 = &qword_1EB6E4050;
        v457 = &unk_1B0EC2B20;
        goto LABEL_231;
      }

      v155 = v530;
      v156 = v531;
      v157 = sub_1B0D34A04(v146, v151);

      v158 = v532;
      if (v157)
      {
        v139 = _s12NIOIMAPCore29StoreDataO21__derived_enum_equalsySbAC_ACtFZ_0(v149, v148, v156, v155);
        sub_1B0D72504();
        sub_1B0D72504();
        v159 = &qword_1EB6E4050;
        v160 = &unk_1B0EC2B20;
        v161 = v497;
        goto LABEL_62;
      }

      v472 = &qword_1EB6E4050;
      v473 = &unk_1B0EC2B20;
      v474 = v497;
      goto LABEL_264;
    case 0x11u:
      v321 = v506;
      sub_1B0D73230(v107, v506, type metadata accessor for Command);
      v322 = *v321;
      v323 = v321[1];
      v325 = v321[2];
      v324 = v321[3];
      v326 = v533;
      if (swift_getEnumCaseMultiPayload() != 17)
      {

        sub_1B0B239C8(v322);
        goto LABEL_210;
      }

      v532 = v107;
      v327 = *v326;
      v328 = v326[1];
      v330 = v326[2];
      v329 = v326[3];
      if ((static SearchKey.__derived_enum_equals(_:_:)(v322, v327) & 1) == 0)
      {

        sub_1B0B239C8(v327);
        sub_1B0B239C8(v322);
        goto LABEL_311;
      }

      if (v325)
      {
        if (!v330)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0B239C8(v327);
          sub_1B0B239C8(v322);
          swift_bridgeObjectRelease_n();
          goto LABEL_324;
        }

        if (v323 == v328 && v325 == v330)
        {
        }

        else
        {
          v488 = sub_1B0E46A78();

          if ((v488 & 1) == 0)
          {
            sub_1B0B239C8(v327);
            sub_1B0B239C8(v322);
LABEL_324:

LABEL_325:

            v467 = v532;
            goto LABEL_312;
          }
        }
      }

      else if (v330)
      {
        sub_1B0B239C8(v327);
        sub_1B0B239C8(v322);
        goto LABEL_293;
      }

      v139 = sub_1B0CFE01C(v324, v329);
      sub_1B0B239C8(v327);
      sub_1B0B239C8(v322);
      goto LABEL_317;
    case 0x12u:
      v162 = v512;
      sub_1B0D73230(v107, v512, type metadata accessor for Command);
      v376 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7250, &qword_1B0EF1230) + 48);
      v164 = *(v162 + v376);
      v165 = *(v162 + v376 + 8);
      v377 = v533;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_130:

        v382 = &qword_1EB6E4050;
        v383 = &unk_1B0EC2B20;
        goto LABEL_154;
      }

      v167 = *(v377 + v376);
      v532 = *(v377 + v376 + 8);
      v168 = v377;
      v169 = v493;
LABEL_127:
      sub_1B03C60A4(v168, v169, &qword_1EB6E4050, &unk_1B0EC2B20);
      v378 = sub_1B0E1A984(v162, v169);
      sub_1B0398EFC(v162, &qword_1EB6E4050, &unk_1B0EC2B20);
      if ((v378 & 1) == 0)
      {
        v452 = &qword_1EB6E4050;
        v453 = &unk_1B0EC2B20;
        goto LABEL_275;
      }

      if ((v165 | (v165 << 32)) == (v532 | (v532 << 32)))
      {
        v379 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v164, v167);

        v380 = &qword_1EB6E4050;
        v381 = &unk_1B0EC2B20;
        goto LABEL_151;
      }

      v463 = &qword_1EB6E4050;
      v464 = &unk_1B0EC2B20;
      goto LABEL_246;
    case 0x13u:
      v414 = v507;
      sub_1B0D73230(v107, v507, type metadata accessor for Command);
      v415 = *v414;
      v416 = v414[1];
      v417 = v414[2];
      v418 = v533;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_196;
      }

      v419 = *v418;
      v420 = v418[1];
      v421 = v418[2];
      if (sub_1B045202C(v416, v420))
      {
        v422 = sub_1B0C2DAB0(v417, v421);

        if (v422)
        {
          goto LABEL_269;
        }
      }

      else
      {
      }

      goto LABEL_278;
    case 0x14u:
      v331 = v509;
      sub_1B0D73230(v107, v509, type metadata accessor for Command);
      v333 = *(v331 + 8);
      v332 = *(v331 + 16);
      v334 = *(v331 + 24);
      v335 = v533;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_210;
      }

      if (*v331 != *v335)
      {
        goto LABEL_278;
      }

      if (v334)
      {
        if (*(v335 + 24))
        {
          goto LABEL_269;
        }

        goto LABEL_278;
      }

      if ((*(v335 + 24) & 1) != 0 || v333 != *(v335 + 8) || v332 != *(v335 + 16))
      {
        goto LABEL_278;
      }

      goto LABEL_269;
    case 0x15u:
      v162 = v514;
      sub_1B0D73230(v107, v514, type metadata accessor for Command);
      v348 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48);
      v349 = *(v162 + v348);
      v350 = *(v162 + v348 + 8);
      v351 = v533;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_153;
      }

      v352 = *(v351 + v348);
      v532 = *(v351 + v348 + 8);
      v353 = v351;
      v169 = v494;
      goto LABEL_148;
    case 0x16u:
      v162 = v515;
      sub_1B0D73230(v107, v515, type metadata accessor for Command);
      v410 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7248, &qword_1B0EF1228) + 48);
      v349 = *(v162 + v410);
      v350 = *(v162 + v410 + 8);
      v411 = v533;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
LABEL_153:

        v382 = &qword_1EB6E3EB0;
        v383 = &unk_1B0EC2010;
LABEL_154:
        v413 = v162;
        goto LABEL_209;
      }

      v352 = *(v411 + v410);
      v532 = *(v411 + v410 + 8);
      v353 = v411;
      v169 = v495;
LABEL_148:
      sub_1B03C60A4(v353, v169, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v412 = sub_1B0E1A698(v162, v169);
      sub_1B0398EFC(v162, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((v412 & 1) == 0)
      {
        v452 = &qword_1EB6E3EB0;
        v453 = &unk_1B0EC2010;
        goto LABEL_275;
      }

      if ((v350 | (v350 << 32)) == (v532 | (v532 << 32)))
      {
        v379 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v349, v352);

        v380 = &qword_1EB6E3EB0;
        v381 = &unk_1B0EC2010;
LABEL_151:
        sub_1B0398EFC(v169, v380, v381);
        if (v379)
        {
LABEL_269:
          v320 = v107;
          goto LABEL_270;
        }
      }

      else
      {

        v463 = &qword_1EB6E3EB0;
        v464 = &unk_1B0EC2010;
LABEL_246:
        sub_1B0398EFC(v169, v463, v464);
      }

      goto LABEL_278;
    case 0x17u:
      v263 = v518;
      sub_1B0D73230(v107, v518, type metadata accessor for Command);
      v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7240, &qword_1B0EF1220);
      v424 = *(v423 + 48);
      v425 = *(v263 + v424);
      v426 = *(v423 + 64);
      v427 = *(v263 + v426);
      v428 = v533;
      if (swift_getEnumCaseMultiPayload() != 23)
      {

LABEL_207:
        v382 = &qword_1EB6E3EB0;
        v383 = &unk_1B0EC2010;
LABEL_208:
        v413 = v263;
        goto LABEL_209;
      }

      v532 = v427;
      v429 = *(v428 + v424);
      v430 = *(v428 + v426);
      v169 = v496;
      sub_1B03C60A4(v428, v496, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v431 = sub_1B0E1A698(v263, v169);
      sub_1B0398EFC(v263, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if (v431)
      {
        v432 = sub_1B0CFD500(v425, v429);

        if (v432)
        {
          v274 = v169;
          v139 = sub_1B0D349B0(v532, v430);

          v275 = &qword_1EB6E3EB0;
          v276 = &unk_1B0EC2010;
LABEL_167:
          sub_1B0398EFC(v274, v275, v276);
          goto LABEL_282;
        }

        v452 = &qword_1EB6E3EB0;
        v453 = &unk_1B0EC2010;
LABEL_275:
        sub_1B0398EFC(v169, v452, v453);
      }

      else
      {
        v465 = &qword_1EB6E3EB0;
        v466 = &unk_1B0EC2010;
LABEL_249:
        sub_1B0398EFC(v169, v465, v466);
      }

      goto LABEL_276;
    case 0x18u:
      v245 = v513;
      sub_1B0D73230(v107, v513, type metadata accessor for Command);
      v246 = *v245;
      v247 = v245[1];
      v249 = v245[2];
      v248 = v245[3];
      v250 = v533;
      if (swift_getEnumCaseMultiPayload() != 24)
      {

        sub_1B0B239C8(v246);
        goto LABEL_210;
      }

      v532 = v107;
      v251 = *v250;
      v252 = v250[1];
      v254 = v250[2];
      v253 = v250[3];
      if ((static SearchKey.__derived_enum_equals(_:_:)(v246, v251) & 1) == 0)
      {

        sub_1B0B239C8(v251);
        sub_1B0B239C8(v246);
        goto LABEL_311;
      }

      if (v249)
      {
        if (!v254)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0B239C8(v251);
          sub_1B0B239C8(v246);
          swift_bridgeObjectRelease_n();
          goto LABEL_324;
        }

        if (v247 == v252 && v249 == v254)
        {
        }

        else
        {
          v479 = sub_1B0E46A78();

          if ((v479 & 1) == 0)
          {
            sub_1B0B239C8(v251);
            sub_1B0B239C8(v246);
            goto LABEL_324;
          }
        }
      }

      else if (v254)
      {
        sub_1B0B239C8(v251);
        sub_1B0B239C8(v246);
LABEL_293:

        goto LABEL_325;
      }

      v139 = sub_1B0CFE01C(v248, v253);
      sub_1B0B239C8(v251);
      sub_1B0B239C8(v246);
LABEL_317:

      goto LABEL_318;
    case 0x19u:
      v143 = v523;
      sub_1B0D73230(v107, v523, type metadata accessor for Command);
      v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7238, &qword_1B0EF1218);
      v232 = *(v231 + 48);
      v233 = *(v143 + v232);
      v234 = *(v231 + 64);
      v236 = *(v143 + v234);
      v235 = *(v143 + v234 + 8);
      v237 = v533;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
        sub_1B0D72504();

        v382 = &qword_1EB6E3EB0;
        v383 = &unk_1B0EC2010;
LABEL_191:
        v413 = v143;
LABEL_209:
        sub_1B0398EFC(v413, v382, v383);
        goto LABEL_210;
      }

      v238 = *(v237 + v232);
      v239 = *(v237 + v234 + 8);
      v531 = *(v237 + v234);
      v532 = v107;
      v530 = v239;
      v153 = v498;
      sub_1B03C60A4(v237, v498, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v240 = sub_1B0E1A698(v143, v153);
      sub_1B0398EFC(v143, &qword_1EB6E3EB0, &unk_1B0EC2010);
      if ((v240 & 1) == 0)
      {
        v456 = &qword_1EB6E3EB0;
        v457 = &unk_1B0EC2010;
LABEL_231:
        sub_1B0398EFC(v153, v456, v457);
        sub_1B0D72504();

        sub_1B0D72504();
        goto LABEL_311;
      }

      v241 = v530;
      v242 = v531;
      v243 = sub_1B0D34A04(v233, v238);

      v158 = v532;
      if (v243)
      {
        v139 = _s12NIOIMAPCore29StoreDataO21__derived_enum_equalsySbAC_ACtFZ_0(v236, v235, v242, v241);
        sub_1B0D72504();
        sub_1B0D72504();
        v159 = &qword_1EB6E3EB0;
        v160 = &unk_1B0EC2010;
        v161 = v498;
LABEL_62:
        sub_1B0398EFC(v161, v159, v160);
        v244 = v158;
        goto LABEL_283;
      }

      v472 = &qword_1EB6E3EB0;
      v473 = &unk_1B0EC2010;
      v474 = v498;
LABEL_264:
      sub_1B0398EFC(v474, v472, v473);
      sub_1B0D72504();
      sub_1B0D72504();
      v467 = v158;
      goto LABEL_312;
    case 0x1Au:
      v263 = v520;
      sub_1B0D73230(v107, v520, type metadata accessor for Command);
      v449 = v533;
      if (swift_getEnumCaseMultiPayload() != 26)
      {
        goto LABEL_207;
      }

      v450 = v449;
      v451 = v491;
      sub_1B03C60A4(v450, v491, &qword_1EB6E3EB0, &unk_1B0EC2010);
      v139 = sub_1B0E1A698(v263, v451);
      sub_1B0398EFC(v451, &qword_1EB6E3EB0, &unk_1B0EC2010);
      sub_1B0398EFC(v263, &qword_1EB6E3EB0, &unk_1B0EC2010);
      goto LABEL_282;
    case 0x1Bu:
      v136 = v516;
      sub_1B0D73230(v107, v516, type metadata accessor for Command);
      v137 = *v136;
      v138 = v533;
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_197;
      }

      v139 = sub_1B0C2DB54(v137, *(v136 + 8), *(v136 + 16) | (*(v136 + 22) << 48) | (*(v136 + 20) << 32), *v138, *(v138 + 8), *(v138 + 16) | (*(v138 + 20) << 32) | (*(v138 + 22) << 48));

      goto LABEL_282;
    case 0x1Cu:
      v228 = v517;
      sub_1B0D73230(v107, v517, type metadata accessor for Command);
      v229 = *v228;
      v230 = v533;
      if (swift_getEnumCaseMultiPayload() != 28)
      {
        goto LABEL_86;
      }

LABEL_169:
      v305 = *(v228 + 8);
LABEL_170:
      v433 = *v230;
      if ((v305 | (v305 << 32)) != (*(v230 + 8) | (*(v230 + 8) << 32)))
      {
        goto LABEL_276;
      }

      v434 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v229, *v230);
      goto LABEL_215;
    case 0x1Du:
      v435 = v521;
      sub_1B0D73230(v107, v521, type metadata accessor for Command);
      v436 = *v435;
      v437 = *(v435 + 24);
      v438 = v533;
      if (swift_getEnumCaseMultiPayload() != 29)
      {

        goto LABEL_86;
      }

      v439 = *(v435 + 22);
      v440 = *(v435 + 20);
      v441 = *(v435 + 16);
      v442 = *(v435 + 8);
      v444 = *v438;
      v443 = *(v438 + 8);
      v445 = *(v438 + 16);
      v446 = *(v438 + 20);
      v447 = *(v438 + 22);
      v448 = *(v438 + 24);
      if (sub_1B0C2DB54(v436, v442, v441 | (v439 << 48) | (v440 << 32), v444, v443, v445 | (v446 << 32) | (v447 << 48)))
      {
        v139 = sub_1B0D35B10(v437, v448);

        goto LABEL_282;
      }

      goto LABEL_276;
    case 0x1Eu:
      v532 = v107;
      v393 = v519;
      sub_1B0D73230(v107, v519, type metadata accessor for Command);
      v395 = *v393;
      v394 = *(v393 + 8);
      v396 = *(v393 + 16);
      v397 = *(v393 + 24);
      v398 = v533;
      if (swift_getEnumCaseMultiPayload() != 30)
      {

LABEL_203:

        v107 = v532;
        goto LABEL_210;
      }

      v399 = *(v398 + 8);
      v400 = *(v398 + 16);
      v401 = *(v398 + 24);
      v402 = sub_1B0D35BCC(v395, *v398);

      if ((v402 & 1) == 0)
      {

        goto LABEL_310;
      }

      if ((v396 | (v396 << 32)) == (v400 | (v400 << 32)))
      {
        v403 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v394, v399);

        v312 = v532;
        if (v403)
        {
          v139 = sub_1B0D3CF14(v397, v401);

          v244 = v312;
          goto LABEL_283;
        }
      }

      else
      {

        v312 = v532;
      }

      goto LABEL_273;
    case 0x1Fu:
      v306 = v524;
      sub_1B0D73230(v107, v524, type metadata accessor for Command);
      v307 = *v306;
      v308 = *(v306 + 16);
      v309 = *(v306 + 24);
      v310 = *(v306 + 32);
      v311 = v533;
      if (swift_getEnumCaseMultiPayload() != 31)
      {

LABEL_196:

LABEL_197:

LABEL_210:
        sub_1B0398EFC(v107, &qword_1EB6E72F0, &qword_1B0EF1368);
        goto LABEL_313;
      }

      v312 = v107;
      v313 = *(v306 + 8);
      v314 = *v311;
      v315 = *(v311 + 8);
      v316 = *(v311 + 24);
      v532 = *(v311 + 16);
      v317 = *(v311 + 32);
      if ((v313 | (v313 << 32)) == (v315 | (v315 << 32)))
      {
        v318 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v307, v314);

        if (v318 & 1) != 0 && (sub_1B0D3A070(v309, v316))
        {
          v319 = sub_1B0D3A1B8(v310, v317);

          if (v319)
          {
            v320 = v312;
            goto LABEL_270;
          }

          goto LABEL_273;
        }
      }

      else
      {
      }

LABEL_273:
      v467 = v312;
      goto LABEL_312;
    case 0x20u:
      v404 = v522;
      sub_1B0D73230(v107, v522, type metadata accessor for Command);
      v405 = v404[1];
      v561 = *v404;
      v562 = v405;
      v406 = v404[3];
      v563 = v404[2];
      v564 = v406;
      v407 = v533;
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        v408 = v407[1];
        v540 = *v407;
        v541 = v408;
        v409 = v407[3];
        v542[0] = v407[2];
        v542[1] = v409;
        v139 = _s12NIOIMAPCore221ExtendedSearchOptionsV23__derived_struct_equalsySbAC_ACtFZ_0(&v561, &v540);
        sub_1B0D724B0(&v540);
        sub_1B0D724B0(&v561);
        goto LABEL_282;
      }

      sub_1B0D724B0(&v561);
      goto LABEL_210;
    case 0x21u:
      v170 = v525;
      sub_1B0D73230(v107, v525, type metadata accessor for Command);
      v171 = *v170;
      v172 = *(v170 + 8);
      v173 = *(v170 + 16);
      v174 = v533;
      if (swift_getEnumCaseMultiPayload() != 33)
      {
LABEL_185:

        goto LABEL_210;
      }

      v175 = *v174;
      v176 = *(v174 + 16);
      if (v171)
      {
        if (!v175)
        {
          goto LABEL_182;
        }

        if ((v172 | (v172 << 32)) != (*(v174 + 8) | (*(v174 + 8) << 32)))
        {
          v475 = *v174;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          swift_bridgeObjectRelease_n();
LABEL_276:

LABEL_277:

LABEL_278:
          v467 = v107;
          goto LABEL_312;
        }

        v177 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v171, *v174);

        if ((v177 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      else if (v175)
      {
        v468 = *(v174 + 16);

        goto LABEL_277;
      }

      v118 = sub_1B0D3CF1C(v173, v176);
      goto LABEL_280;
    case 0x22u:
      v140 = v526;
      sub_1B0D73230(v107, v526, type metadata accessor for Command);
      v141 = *v140;
      v142 = v533;
      if (swift_getEnumCaseMultiPayload() != 34)
      {
        goto LABEL_86;
      }

      v118 = sub_1B0D35C20(v141, *v142);
      goto LABEL_280;
    case 0x23u:
      v127 = v527;
      sub_1B0D73230(v107, v527, type metadata accessor for Command);
      v128 = *v127;
      v129 = v533;
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_86;
      }

      v118 = sub_1B0D3CF14(v128, *v129);
      goto LABEL_280;
    case 0x24u:
      v130 = v528;
      sub_1B0D73230(v107, v528, type metadata accessor for Command);
      v132 = *v130;
      v131 = v130[1];
      v133 = v533;
      if (swift_getEnumCaseMultiPayload() != 36)
      {
        goto LABEL_86;
      }

      v134 = *v133;
      v135 = v133[1];
      if (v132 == v134 && v131 == v135)
      {
        goto LABEL_19;
      }

      v434 = sub_1B0E46A78();
LABEL_215:
      v455 = v434;

      goto LABEL_216;
    case 0x25u:
      v119 = v529;
      sub_1B0D73230(v107, v529, type metadata accessor for Command);
      v121 = *v119;
      v120 = v119[1];
      v122 = v119[2];
      v123 = v533;
      if (swift_getEnumCaseMultiPayload() != 37)
      {
        goto LABEL_85;
      }

      v124 = *v123;
      v125 = v123[1];
      v126 = v123[2];
      if (v121 == v124 && v120 == v125)
      {
      }

      else
      {
        v454 = sub_1B0E46A78();

        if ((v454 & 1) == 0)
        {
          goto LABEL_276;
        }
      }

      v118 = sub_1B0D35E30(v122, v126);
      goto LABEL_280;
    case 0x26u:
      if (swift_getEnumCaseMultiPayload() == 38)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x27u:
      if (swift_getEnumCaseMultiPayload() == 39)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x28u:
      if (swift_getEnumCaseMultiPayload() == 40)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x29u:
      if (swift_getEnumCaseMultiPayload() == 41)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Au:
      if (swift_getEnumCaseMultiPayload() == 42)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Bu:
      if (swift_getEnumCaseMultiPayload() == 43)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Cu:
      if (swift_getEnumCaseMultiPayload() == 44)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Du:
      if (swift_getEnumCaseMultiPayload() == 45)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Eu:
      if (swift_getEnumCaseMultiPayload() == 46)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    case 0x2Fu:
      if (swift_getEnumCaseMultiPayload() == 47)
      {
        goto LABEL_269;
      }

      goto LABEL_210;
    default:
      sub_1B0D73230(v107, v103, type metadata accessor for Command);
      v111 = *v103;
      v112 = *(v103 + 2);
      v113 = v533;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_85:

LABEL_86:

        goto LABEL_210;
      }

      v114 = *v113;
      v115 = *(v113 + 8);
      v116 = *(v113 + 16);
      if ((*(v103 + 2) | (*(v103 + 2) << 32)) != (v115 | (v115 << 32)))
      {
LABEL_181:

LABEL_182:

        goto LABEL_276;
      }

      v117 = _s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v111, v114);

      if ((v117 & 1) == 0)
      {
        goto LABEL_276;
      }

      v118 = sub_1B0D32464(v112, v116);
LABEL_280:
      v139 = v118;

LABEL_281:

LABEL_282:
      v244 = v107;
      goto LABEL_283;
  }
}