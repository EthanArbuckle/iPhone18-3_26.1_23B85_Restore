unint64_t sub_1D69D2B04(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x756A6441746F6C73;
    v7 = 0x4564656863616572;
    if (a1 != 10)
    {
      v7 = 1684957547;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000015;
    if (a1 != 7)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 == 6)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7543746E65726170;
    v3 = 0x737275437478656ELL;
    if (a1 != 4)
    {
      v3 = 0x73727543746F6F72;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x4464657461657263;
    if (a1 != 1)
    {
      v4 = 0x446873696C627570;
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

uint64_t sub_1D69D2CB8(void *a1)
{
  v3 = v1;
  sub_1D5BA1E78(0, &qword_1EC88F998, sub_1D69D4E8C, &type metadata for FeedCursorEntity.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69D4E8C();
  sub_1D7264B5C();
  v15 = *v3;
  v14 = 0;
  sub_1D5BA0DFC(0, &qword_1EDF17538, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0], MEMORY[0x1E69D6160]);
  sub_1D60E9C64();
  sub_1D726443C();
  if (!v2)
  {
    v13 = v3;
    v15 = v3[1];
    v14 = 1;
    sub_1D5B9DFB4();
    sub_1D5B9DF6C(&qword_1EC8828C8, sub_1D5B9DFB4);
    sub_1D726443C();
    v15 = v13[2];
    v14 = 2;
    sub_1D726443C();
    v15 = v13[3];
    v14 = 3;
    sub_1D5BA2374();
    sub_1D5B9DF6C(&qword_1EC8828C0, sub_1D5BA2374);
    sub_1D726443C();
    v15 = v13[4];
    v14 = 4;
    sub_1D726443C();
    v11 = v13;
    v15 = v13[5];
    v14 = 5;
    sub_1D726443C();
    v15 = v11[6];
    v14 = 6;
    sub_1D5BA1EE0(0, &qword_1EDF17560, MEMORY[0x1E69D6160]);
    sub_1D69D4FE8(&qword_1EC8828D0);
    sub_1D726443C();
    v15 = v13[7];
    v14 = 7;
    sub_1D726443C();
    v15 = v13[8];
    v14 = 8;
    sub_1D5BA0DFC(0, &qword_1EDF17510, MEMORY[0x1E69E6530], MEMORY[0x1E69D62F8], MEMORY[0x1E69D6160]);
    sub_1D69D5048();
    sub_1D726443C();
    v15 = v13[9];
    v14 = 9;
    sub_1D726443C();
    v15 = v13[10];
    v14 = 10;
    sub_1D5BA0DFC(0, &qword_1EDF17528, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], MEMORY[0x1E69D6160]);
    sub_1D69D50CC();
    sub_1D726443C();
    v15 = v13[11];
    v14 = 11;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D69D3260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D69D5268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D69D3288(uint64_t a1)
{
  v2 = sub_1D69D4E8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69D32C4(uint64_t a1)
{
  v2 = sub_1D69D4E8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D69D3300()
{
  if (qword_1EDF15108 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDFFC6C8;

  return v0;
}

uint64_t sub_1D69D3368(uint64_t a1)
{
  v2 = sub_1D5B9F8FC();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1D69D33B4(uint64_t a1)
{
  v2 = sub_1D5B9F8FC();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1D69D3400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B9F8FC();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1D69D3464@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_1D69D3628(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1D69D34C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5B9F8FC();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1D69D3514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B9F8FC();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1D69D3568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5B9F8FC();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1D69D35D4()
{
  result = qword_1EC88F970;
  if (!qword_1EC88F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F970);
  }

  return result;
}

double sub_1D69D3628@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a1;
  v111[0] = a2;
  sub_1D5BA1E78(0, &qword_1EC88F978, sub_1D69D4E8C, &type metadata for FeedCursorEntity.CodingKeys, MEMORY[0x1E69E6F48]);
  v113 = v2;
  v112 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v126 = v111 - v4;
  sub_1D5BA1CF0(0, &qword_1EDF17430, &qword_1EDF17438, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v116 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v115 = v111 - v10;
  sub_1D5BA1CF0(0, &qword_1EDF173F0, &qword_1EDF173F8, MEMORY[0x1E69E6530], MEMORY[0x1E69D62F8]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v118 = v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v114 = v111 - v16;
  sub_1D5BA1F84();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v120 = v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v119 = v111 - v22;
  sub_1D5B7B4D4(0, &qword_1EDF17450, sub_1D5BA2088);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  *(&v122 + 1) = v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  *&v122 = v111 - v28;
  sub_1D5B7B4D4(0, &qword_1EDF174B0, sub_1D5BA21B0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v111 - v35;
  v37 = MEMORY[0x1E69E6158];
  v38 = MEMORY[0x1E69D62D0];
  sub_1D5BA1CF0(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v42 = v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = v111 - v45;
  v137 = MEMORY[0x1E69D6200];
  sub_1D5BA0DFC(0, &qword_1EDF17448, v37, v38, MEMORY[0x1E69D6200]);
  v48 = v47;
  v131 = v47;
  v49 = *(v47 - 8);
  v50 = *(v49 + 56);
  v132 = v50;
  v133 = v49 + 56;
  v129 = v46;
  v50(v46, 1, 1, v47);
  v130 = v42;
  v50(v42, 1, 1, v48);
  v136 = MEMORY[0x1E69D6208];
  sub_1D5BA0DFC(0, &qword_1EDF173B0, v37, v38, MEMORY[0x1E69D6208]);
  v134 = v51;
  swift_allocObject();
  sub_1D725C71C();
  v135 = MEMORY[0x1E69D6160];
  sub_1D5BA0DFC(0, &qword_1EDF17538, v37, v38, MEMORY[0x1E69D6160]);
  v138 = v52;
  swift_allocObject();
  v127 = sub_1D725C4BC();
  sub_1D5BA21B0();
  v54 = v53;
  v55 = *(*(v53 - 8) + 56);
  v55(v36, 1, 1, v53);
  v55(v32, 1, 1, v54);
  sub_1D5BA2244(0, &qword_1EDF173E0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5B9DFB4();
  v57 = v56;
  swift_allocObject();
  v125 = sub_1D725C4BC();
  v55(v36, 1, 1, v54);
  v55(v32, 1, 1, v54);
  swift_allocObject();
  sub_1D725C71C();
  v111[3] = v57;
  swift_allocObject();
  v124 = sub_1D725C4BC();
  sub_1D5BA2088();
  v59 = v58;
  v60 = *(*(v58 - 8) + 56);
  v61 = v122;
  v60(v122, 1, 1, v58);
  v62 = *(&v122 + 1);
  v60(*(&v122 + 1), 1, 1, v59);
  sub_1D5B9E160(0, &qword_1EDF173A8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2374();
  v64 = v63;
  swift_allocObject();
  v123 = sub_1D725C4BC();
  v60(v61, 1, 1, v59);
  v60(v62, 1, 1, v59);
  swift_allocObject();
  sub_1D725C71C();
  v111[2] = v64;
  swift_allocObject();
  *&v122 = sub_1D725C4BC();
  v65 = v131;
  v66 = v132;
  v132(v129, 1, 1, v131);
  v66(v130, 1, 1, v65);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  *(&v122 + 1) = sub_1D725C4BC();
  sub_1D5BA1EE0(0, &qword_1EDF17498, MEMORY[0x1E69D6200]);
  v68 = v67;
  v69 = *(*(v67 - 8) + 56);
  v70 = v119;
  v69(v119, 1, 1, v67);
  v71 = v120;
  v69(v120, 1, 1, v68);
  sub_1D5BA1EE0(0, &qword_1EDF173D8, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA1EE0(0, &qword_1EDF17560, MEMORY[0x1E69D6160]);
  v73 = v72;
  swift_allocObject();
  v121 = sub_1D725C4BC();
  v69(v70, 1, 1, v68);
  v69(v71, 1, 1, v68);
  swift_allocObject();
  sub_1D725C71C();
  v111[1] = v73;
  swift_allocObject();
  v120 = sub_1D725C4BC();
  v74 = MEMORY[0x1E69E6530];
  v75 = MEMORY[0x1E69D62F8];
  sub_1D5BA0DFC(0, &qword_1EDF173F8, MEMORY[0x1E69E6530], MEMORY[0x1E69D62F8], v137);
  v77 = v76;
  v78 = *(*(v76 - 8) + 56);
  v79 = v114;
  v78(v114, 1, 1, v76);
  v80 = v118;
  v78(v118, 1, 1, v77);
  sub_1D5BA0DFC(0, &qword_1EDF17388, v74, v75, v136);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA0DFC(0, &qword_1EDF17510, v74, MEMORY[0x1E69D62F8], v135);
  v82 = v81;
  swift_allocObject();
  v119 = sub_1D725C4BC();
  v78(v79, 1, 1, v77);
  v78(v80, 1, 1, v77);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v118 = sub_1D725C4BC();
  v83 = MEMORY[0x1E69E6370];
  v84 = MEMORY[0x1E69D62E0];
  sub_1D5BA0DFC(0, &qword_1EDF17438, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], v137);
  v86 = v85;
  v87 = *(*(v85 - 8) + 56);
  v87(v115, 1, 1, v85);
  v87(v116, 1, 1, v86);
  sub_1D5BA0DFC(0, &qword_1EDF173A0, v83, v84, v136);
  swift_allocObject();
  sub_1D725C71C();
  v88 = v84;
  v89 = v128;
  sub_1D5BA0DFC(0, &qword_1EDF17528, v83, v88, v135);
  v91 = v90;
  swift_allocObject();
  v137 = sub_1D725C4BC();
  v92 = v131;
  v93 = v132;
  v132(v129, 1, 1, v131);
  v93(v130, 1, 1, v92);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v94 = sub_1D725C4BC();
  __swift_project_boxed_opaque_existential_1(v89, v89[3]);
  sub_1D69D4E8C();
  v95 = v117;
  sub_1D7264B0C();
  if (v95)
  {
    v96 = v122;
    v97 = v137;
    __swift_destroy_boxed_opaque_existential_1(v89);
    v146 = v127;
    v147 = v125;
    v148 = v124;
    v149 = v123;
    v150 = __PAIR128__(*(&v122 + 1), v96);
    v151 = v121;
    v152 = v120;
    v153 = v119;
    v154 = v118;
    v155 = v97;
    v156 = v94;
    sub_1D5BA7608(&v146);
  }

  else
  {
    v135 = v91;
    v136 = v82;
    LOBYTE(v139) = 0;
    sub_1D60E9B24();
    sub_1D726431C();

    v127 = v146;
    LOBYTE(v139) = 1;
    sub_1D5B9DF6C(&qword_1EC882890, sub_1D5B9DFB4);
    sub_1D726431C();

    v125 = v146;
    LOBYTE(v139) = 2;
    sub_1D726431C();

    v124 = v146;
    LOBYTE(v139) = 3;
    sub_1D5B9DF6C(&qword_1EC882888, sub_1D5BA2374);
    sub_1D726431C();

    v123 = v146;
    LOBYTE(v139) = 4;
    sub_1D726431C();

    v99 = v146;
    LOBYTE(v139) = 5;
    sub_1D726431C();
    *&v122 = v99;

    *(&v122 + 1) = v146;
    LOBYTE(v139) = 6;
    sub_1D69D4FE8(&qword_1EC882898);
    sub_1D726431C();

    v121 = v146;
    LOBYTE(v139) = 7;
    sub_1D726431C();

    v120 = v146;
    LOBYTE(v139) = 8;
    sub_1D69D4EE0();
    sub_1D726431C();
    v100 = v128;

    v119 = v146;
    LOBYTE(v139) = 9;
    sub_1D726431C();

    v118 = v146;
    LOBYTE(v139) = 10;
    sub_1D69D4F64();
    sub_1D726431C();

    v137 = v146;
    v145 = 11;
    sub_1D726431C();
    (*(v112 + 8))(v126, v113);

    v138 = v157;
    v101 = v127;
    *&v139 = v127;
    v102 = v125;
    *(&v139 + 1) = v125;
    v103 = v124;
    *&v140 = v124;
    v104 = v123;
    *(&v140 + 1) = v123;
    v105 = v122;
    v141 = v122;
    v106 = v121;
    *&v142 = v121;
    *(&v142 + 1) = v120;
    *&v143 = v119;
    *(&v143 + 1) = v118;
    *&v144 = v137;
    *(&v144 + 1) = v157;
    sub_1D5BA739C(&v139, &v146);
    __swift_destroy_boxed_opaque_existential_1(v100);
    v146 = v101;
    v147 = v102;
    v148 = v103;
    v149 = v104;
    v150 = v105;
    v151 = v106;
    v152 = v120;
    v153 = v119;
    v154 = v118;
    v155 = v137;
    v156 = v138;
    sub_1D5BA7608(&v146);
    v107 = v142;
    v108 = v111[0];
    *(v111[0] + 32) = v141;
    v108[3] = v107;
    v109 = v144;
    v108[4] = v143;
    v108[5] = v109;
    result = *&v139;
    v110 = v140;
    *v108 = v139;
    v108[1] = v110;
  }

  return result;
}

unint64_t sub_1D69D4E8C()
{
  result = qword_1EC88F980;
  if (!qword_1EC88F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F980);
  }

  return result;
}

unint64_t sub_1D69D4EE0()
{
  result = qword_1EC88F988;
  if (!qword_1EC88F988)
  {
    sub_1D5BA0DFC(255, &qword_1EDF17510, MEMORY[0x1E69E6530], MEMORY[0x1E69D62F8], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F988);
  }

  return result;
}

unint64_t sub_1D69D4F64()
{
  result = qword_1EC88F990;
  if (!qword_1EC88F990)
  {
    sub_1D5BA0DFC(255, &qword_1EDF17528, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F990);
  }

  return result;
}

uint64_t sub_1D69D4FE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BA1EE0(255, &qword_1EDF17560, MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D69D5048()
{
  result = qword_1EC88F9A0;
  if (!qword_1EC88F9A0)
  {
    sub_1D5BA0DFC(255, &qword_1EDF17510, MEMORY[0x1E69E6530], MEMORY[0x1E69D62F8], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F9A0);
  }

  return result;
}

unint64_t sub_1D69D50CC()
{
  result = qword_1EC88F9A8;
  if (!qword_1EC88F9A8)
  {
    sub_1D5BA0DFC(255, &qword_1EDF17528, MEMORY[0x1E69E6370], MEMORY[0x1E69D62E0], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F9A8);
  }

  return result;
}

unint64_t sub_1D69D5164()
{
  result = qword_1EC88F9B0;
  if (!qword_1EC88F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F9B0);
  }

  return result;
}

unint64_t sub_1D69D51BC()
{
  result = qword_1EC88F9B8;
  if (!qword_1EC88F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F9B8);
  }

  return result;
}

unint64_t sub_1D69D5214()
{
  result = qword_1EC88F9C0;
  if (!qword_1EC88F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F9C0);
  }

  return result;
}

uint64_t sub_1D69D5268(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7543746E65726170 && a2 == 0xEE006449726F7372 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737275437478656ELL && a2 == 0xEC0000006449726FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73727543746F6F72 && a2 == 0xEC0000006449726FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73DE2D0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73DE2F0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73DE310 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x756A6441746F6C73 && a2 == 0xEE00746E656D7473 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4564656863616572 && a2 == 0xEA0000000000646ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t FormatBlockNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v111 = a1;
  v5 = type metadata accessor for GroupLayoutContext();
  v110 = *(v5 - 8);
  v6 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v8 = type metadata accessor for FormatOption();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D69D6904(*(a2 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks));
  if (!v3)
  {
    v109 = v9;
    v113 = v12;
    v124 = v8;
    if (result)
    {
      v14 = v2;
      v100 = v6;
      v102 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      v106 = 0;
      v107 = a2;
      v15 = result;
      v16 = v14;
      swift_beginAccess();
      v17 = v16[3];
      v104 = v16[2];
      swift_beginAccess();
      v108 = v15;
      v18 = *(v15 + 40);
      v19 = *(v18 + 16);
      v105 = v17;
      if (v19)
      {
        *&v115 = MEMORY[0x1E69E7CC0];

        sub_1D5D24610(0, v19, 0);
        v20 = v115;
        v21 = *(v109 + 80);
        v103 = v18;
        v22 = v18 + ((v21 + 32) & ~v21);
        v112 = *(v109 + 72);
        v23 = v113;
        do
        {
          sub_1D5D254C4(v22, v23, type metadata accessor for FormatOption);
          v24 = swift_allocBox();
          sub_1D5D5E3A4(v23, v25, type metadata accessor for FormatOption);
          *&v115 = v20;
          v27 = *(v20 + 16);
          v26 = *(v20 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1D5D24610((v26 > 1), v27 + 1, 1);
            v20 = v115;
          }

          *(v20 + 16) = v27 + 1;
          *(v20 + 8 * v27 + 32) = v24 | 0xB000000000000004;
          v23 = v113;
          v22 += v112;
          --v19;
        }

        while (v19);
      }

      else
      {

        v20 = MEMORY[0x1E69E7CC0];
        v23 = v113;
      }

      v28 = v109;
      swift_beginAccess();
      v29 = v16[7];
      v30 = *(v29 + 16);
      v31 = MEMORY[0x1E69E7CC0];
      if (v30)
      {
        v109 = v16;
        *&v115 = MEMORY[0x1E69E7CC0];
        v32 = v29;

        sub_1D5D24610(0, v30, 0);
        v31 = v115;
        v33 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v34 = v28;
        v103 = v32;
        v35 = v32 + v33;
        v112 = *(v34 + 72);
        do
        {
          sub_1D5D254C4(v35, v23, type metadata accessor for FormatOption);
          v36 = swift_allocBox();
          sub_1D5D5E3A4(v23, v37, type metadata accessor for FormatOption);
          *&v115 = v31;
          v39 = *(v31 + 16);
          v38 = *(v31 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1D5D24610((v38 > 1), v39 + 1, 1);
            v31 = v115;
          }

          *(v31 + 16) = v39 + 1;
          *(v31 + 8 * v39 + 32) = v36 | 0x7000000000000000;
          v23 = v113;
          v35 += v112;
          --v30;
        }

        while (v30);
      }

      *&v115 = v20;
      sub_1D6985C44(v31);
      v40 = v115;
      v41 = v108;
      swift_beginAccess();
      v42 = *(v41 + 48);
      swift_beginAccess();

      v44 = sub_1D5D6021C(v43, v42);
      v123 = 0;
      memset(v122, 0, sizeof(v122));
      v121 = 0;
      v45 = v107;

      v113 = sub_1D6E8DE74(v104, v105);

      swift_beginAccess();
      v121 = 1;

      v46 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
      if (*(v44 + 16) && (sub_1D6D0A744(*(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors), v44) & 1) == 0)
      {
        v47 = 1;
        v121 = 1;

        v103 = sub_1D5D6021C(v48, v46);
      }

      else
      {
        v103 = v46;

        v47 = 0;
      }

      v124 = v44;
      if (*(v40 + 16))
      {
        v49 = v47;
        v50 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
        v51 = sub_1D6F619D8(v40);

        if (v51)
        {
          v104 = v51;
          v47 = 1;
          v121 = 1;
        }

        else
        {

          v104 = v50;
          v47 = v49;
        }
      }

      else
      {

        v104 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
      }

      v52 = *(v45 + 40);
      v101 = *(v45 + 32);
      v112 = v52;

      v109 = sub_1D6BEC5F4(MEMORY[0x1E69E7CC0], v45, &v121);
      v53 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
      v55 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
      v54 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
      v56 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
      v57 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
      v58 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      v105 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      sub_1D62E312C(v105, v53, v55, v54, v56, v57, v58);
      v59 = sub_1D6BEC878(v122, v45, &v121);
      v61 = *(v45 + 80);
      v62 = *(v45 + 112);
      v118 = *(v45 + 96);
      v119 = v62;
      v120 = *(v45 + 128);
      v63 = *(v45 + 64);
      v115 = *(v45 + 48);
      v116 = v63;
      v117 = v61;
      if (v121 == 1)
      {
        v92 = v60;
        v93 = v59;
        v94 = v58;
        v95 = v57;
        v96 = v56;
        v97 = v54;
        v98 = v55;
        v99 = v53;
        if (v47)
        {
          sub_1D67C846C(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
          v91 = v64;
          v65 = v102;
          sub_1D5D254C4(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v102, type metadata accessor for GroupLayoutContext);
          v66 = (*(v110 + 80) + 16) & ~*(v110 + 80);
          v67 = (v100 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
          v68 = swift_allocObject();
          v69 = v68 + v66;
          v45 = v107;
          sub_1D5D5E3A4(v65, v69, type metadata accessor for GroupLayoutContext);
          v71 = v103;
          v70 = v104;
          *(v68 + v67) = v104;
          *(v68 + ((v67 + 15) & 0xFFFFFFFFFFFFFFF8)) = v71;
          sub_1D5CF6A5C(&v115, v114);

          v110 = sub_1D725A80C();
        }

        else
        {
          v72 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
          sub_1D5CF6A5C(&v115, v114);
          v110 = v72;

          v65 = v102;
          v71 = v103;
          v70 = v104;
        }

        v73 = *(v45 + 16);
        sub_1D5D254C4(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v65, type metadata accessor for GroupLayoutContext);
        v74 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
        sub_1D5B68374(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v114);
        type metadata accessor for FormatNodeBinderContext();
        v45 = swift_allocObject();
        v75 = v113;
        *(v45 + 16) = v73;
        *(v45 + 24) = v75;
        v76 = v118;
        v77 = v119;
        *(v45 + 80) = v117;
        *(v45 + 96) = v76;
        *(v45 + 112) = v77;
        *(v45 + 128) = v120;
        v78 = v116;
        *(v45 + 48) = v115;
        *(v45 + 64) = v78;
        *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v70;
        *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v71;
        sub_1D5D254C4(v65, v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
        v79 = v112;
        *(v45 + 32) = v101;
        *(v45 + 40) = v79;
        *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v109;
        *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v74;
        sub_1D5B68374(v114, v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
        v80 = v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
        v81 = v98;
        v82 = v99;
        *v80 = v105;
        *(v80 + 8) = v82;
        *(v80 + 16) = v81;
        v83 = v96;
        *(v80 + 24) = v97;
        *(v80 + 32) = v83;
        *(v80 + 40) = v95;
        *(v80 + 48) = v94;
        v84 = (v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
        v85 = v92;
        *v84 = v93;
        v84[1] = v85;

        __swift_destroy_boxed_opaque_existential_1(v114);
        sub_1D5EF8F94(v65);
        sub_1D62E3214(v122);
        *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v110;
      }

      else
      {

        sub_1D62E31A0(v105, v53, v55, v54, v56, v57, v58);

        sub_1D62E3214(v122);
      }

      v86 = v108;
      v87 = *(v108 + 40);

      v88 = v111;
      v89 = v106;
      sub_1D6213004(v111, v45, v87);

      if (v89)
      {
      }

      else
      {
        swift_beginAccess();
        v90 = *(v86 + 32);

        sub_1D6215F90(v88, v45, v90);
      }
    }
  }

  return result;
}

uint64_t sub_1D69D60D4()
{
  v2 = v0;
  sub_1D5EB99F0();
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = v4;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *(v3 + 76) = -512;
  *(v3 + 72) = 0;
  v13 = v3;
  swift_beginAccess();

  sub_1D6C4D418(v5);
  if (v1)
  {
  }

  else
  {

    v6 = v0[7];

    sub_1D626DA28(&v13, v6);

    swift_beginAccess();
    v9 = v0[4];
    v8 = v0[5];
    swift_beginAccess();
    v10 = *(v2 + 48);
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v8;
    *(v11 + 32) = v10;

    sub_1D6C4D24C(v11 | 0x6000000000000000);

    v12 = swift_allocObject();
    *(v12 + 16) = v13;

    sub_1D6C4D24C(v12);
  }
}

uint64_t FormatBlockNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatBlockNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatBlockNode.blockIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatBlockNode.blockIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t FormatBlockNode.throws.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t FormatBlockNode.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t FormatBlockNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t FormatBlockNode.__allocating_init(identifier:blockIdentifier:throws:options:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  swift_beginAccess();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  swift_beginAccess();
  *(v14 + 48) = a5;
  swift_beginAccess();
  *(v14 + 56) = a6;
  swift_beginAccess();
  *(v14 + 64) = a7;
  return v14;
}

uint64_t FormatBlockNode.init(identifier:blockIdentifier:throws:options:selectors:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  swift_beginAccess();
  *(v7 + 48) = a5;
  swift_beginAccess();
  *(v7 + 56) = a6;
  swift_beginAccess();
  *(v7 + 64) = a7;
  return v7;
}

uint64_t FormatBlockNode.deinit()
{

  return v0;
}

uint64_t FormatBlockNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D69D68A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D667B964(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D69D6904(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);

    sub_1D5B69D90(v4, v5);
    v7 = v6;

    if (v7)
    {
    }
  }

  swift_beginAccess();
  result = 0;
  if (*(v2 + 48) == 1)
  {
    type metadata accessor for FormatDerivedDataError();
    sub_1D69D6CE0(&qword_1EC892A70, 255, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    v10 = v9;
    v11 = *(v2 + 32);
    v12 = *(v2 + 40);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = sub_1D5B9A6D8(v13, 0);
      v16 = sub_1D5E2A8BC(&v15, v14 + 4, v13, a1);

      result = sub_1D5B87E38();
      if (v16 != v13)
      {
        __break(1u);
        return result;
      }
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    *v10 = v11;
    v10[1] = v12;
    v10[2] = v14;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D69D6B34(uint64_t a1, uint64_t a2)
{
  result = sub_1D69D6CE0(&qword_1EC88F9C8, a2, type metadata accessor for FormatBlockNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D69D6BB0(void *a1, uint64_t a2)
{
  a1[1] = sub_1D69D6CE0(&qword_1EDF31A98, a2, type metadata accessor for FormatBlockNode);
  a1[2] = sub_1D69D6CE0(&qword_1EDF11998, v3, type metadata accessor for FormatBlockNode);
  result = sub_1D69D6CE0(&qword_1EC88F9D0, v4, type metadata accessor for FormatBlockNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D69D6C5C(uint64_t a1, uint64_t a2)
{
  result = sub_1D69D6CE0(&qword_1EC88F9D8, a2, type metadata accessor for FormatBlockNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D69D6CE0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void __swiftcall CondensedFontBook.headlineFontBook(heading:)(NewsFeed::HeadlineFontBook *__return_ptr retstr, NewsFeed::Heading heading)
{
  sub_1D5C14A38();
  v3 = sub_1D72633CC();
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DB978];
  v6 = [v4 systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB978]];
  v7 = [v4 systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB970]];
  v8 = [v4 systemFontOfSize_];
  v9 = [v4 systemFontOfSize:13.0 weight:v5];
  retstr->titleFont.super.isa = v3;
  retstr->excerptFont.super.isa = v6;
  retstr->accessoryFont.super.isa = v7;
  retstr->publisherFont.super.isa = v8;
  retstr->adBadgeFont.super.isa = v9;
}

id _s8NewsFeed15DefaultFontBookV03gapdE0AA03GapdE0VyF_0@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  result = [v2 preferredFontForTextStyle_];
  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t _s8NewsFeed15DefaultFontBookV010coverIssuedE0AA05CovergdE0VyF_0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5C14A38();
  v2 = sub_1D72633CC();
  v3 = sub_1D72633CC();
  v4 = sub_1D72633CC();
  v5 = sub_1D72633CC();
  v6 = sub_1D72633CC();
  result = sub_1D72633CC();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = result;
  return result;
}

uint64_t sub_1D69D705C@<X0>(unint64_t *a1@<X8>)
{
  sub_1D5DF6790();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = sub_1D5C14A38();
  v5 = v3;
  v6 = sub_1D72633CC();
  *(inited + 64) = v4;
  *(inited + 40) = v6;
  v7 = sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D69D7BC4(inited + 32);
  v8 = *MEMORY[0x1E6965A88];
  sub_1D72620EC();
  v9 = sub_1D726203C();

  v17 = MEMORY[0x1E69E63B0];
  *&v16 = 0xBFC3333333333333;
  sub_1D5B7C390(&v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D6D7B954(v15, v9, isUniquelyReferenced_nonNull_native);

  v11 = sub_1D72633CC();
  v12 = sub_1D72633CC();
  v13 = sub_1D72633CC();
  result = sub_1D72633CC();
  *a1 = v7;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = result;
  return result;
}

uint64_t ScalingFontBook.__allocating_init(contentResizeScale:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC8NewsFeed15ScalingFontBook_contentResizeScale;
  v4 = sub_1D725A19C();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ScalingFontBook.init(contentResizeScale:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed15ScalingFontBook_contentResizeScale;
  v4 = sub_1D725A19C();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

id sub_1D69D7390@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1D725A18C();
  if (v3 > 1)
  {
    if (qword_1EDF34BB8 != -1)
    {
      swift_once();
    }

    sub_1D7264C3C();
    sub_1D5C14A38();
    v19 = *MEMORY[0x1E69DB980];
    v4 = sub_1D72633CC();
    sub_1D725A18C();
    v21 = v20;
    sub_1D7264C3C();
    v22 = round(v21 * 60.0 * 0.25);
    if (v36)
    {
      v23 = v22;
    }

    else
    {
      v23 = 15.0;
    }

    v9 = objc_opt_self();
    v10 = *MEMORY[0x1E69DB978];
    v11 = [v9 systemFontOfSize:v23 weight:*MEMORY[0x1E69DB978]];
    sub_1D725A18C();
    v25 = v24;
    sub_1D7264C3C();
    v26 = round(v25 * 52.0 * 0.25);
    if (!v35)
    {
      v26 = 13.0;
    }

    v15 = [v9 systemFontOfSize:v26 weight:v19];
    sub_1D725A18C();
    v28 = v27;
    sub_1D7264C3C();
    v18 = round(v28 * 56.0 * 0.25);
    if (!v34)
    {
      v18 = 14.0;
    }
  }

  else
  {
    if (qword_1EDF34BB8 != -1)
    {
      swift_once();
    }

    sub_1D7264C3C();
    sub_1D5C14A38();
    v4 = sub_1D72633CC();
    sub_1D725A18C();
    v6 = v5;
    sub_1D7264C3C();
    v7 = round(v6 * 60.0 * 0.25);
    if (v33)
    {
      v8 = v7;
    }

    else
    {
      v8 = 15.0;
    }

    v9 = objc_opt_self();
    v10 = *MEMORY[0x1E69DB978];
    v11 = [v9 systemFontOfSize:v8 weight:*MEMORY[0x1E69DB978]];
    sub_1D725A18C();
    v13 = v12;
    sub_1D7264C3C();
    v14 = round(v13 * 52.0 * 0.25);
    if (!v32)
    {
      v14 = 13.0;
    }

    v15 = [v9 systemFontOfSize:v14 weight:*MEMORY[0x1E69DB980]];
    sub_1D725A18C();
    v17 = v16;
    sub_1D7264C3C();
    v18 = round(v17 * 56.0 * 0.25);
    if (!v31)
    {
      v18 = 14.0;
    }
  }

  v29 = [v9 systemFontOfSize_];
  result = [v9 systemFontOfSize:13.0 weight:v10];
  *a2 = v4;
  a2[1] = v11;
  a2[2] = v15;
  a2[3] = v29;
  a2[4] = result;
  return result;
}

uint64_t sub_1D69D77D4@<X0>(unint64_t *a1@<X8>)
{
  sub_1D5DF6790();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = v3;
  v5 = sub_1D7261A3C();
  v6 = sub_1D5C14A38();
  if (v5)
  {
    v7 = sub_1D726339C();
  }

  else
  {
    v7 = sub_1D72633CC();
  }

  *(inited + 64) = v6;
  *(inited + 40) = v7;
  v8 = sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D69D7BC4(inited + 32);
  v9 = *MEMORY[0x1E6965A88];
  sub_1D72620EC();
  v10 = sub_1D726203C();

  v18 = MEMORY[0x1E69E63B0];
  *&v17 = 0xBFC3333333333333;
  sub_1D5B7C390(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D6D7B954(v16, v10, isUniquelyReferenced_nonNull_native);

  v12 = sub_1D72633CC();
  v13 = sub_1D72633CC();
  v14 = sub_1D72633CC();
  result = sub_1D72633CC();
  *a1 = v8;
  a1[1] = v12;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = result;
  return result;
}

uint64_t ScalingFontBook.deinit()
{
  v1 = OBJC_IVAR____TtC8NewsFeed15ScalingFontBook_contentResizeScale;
  v2 = sub_1D725A19C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScalingFontBook.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8NewsFeed15ScalingFontBook_contentResizeScale;
  v2 = sub_1D725A19C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D69D7B4C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_1D69D7B5C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  sub_1D5C2AB28(0);
  return a1;
}

uint64_t sub_1D69D7BC4(uint64_t a1)
{
  sub_1D5C09DD4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ScalingFontBook()
{
  result = qword_1EC88F9E8;
  if (!qword_1EC88F9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D69D7CE4()
{
  result = sub_1D725A19C();
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

uint64_t FormatHeadlineBinding.SourceItemTip.tipSource(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    if (qword_1EDF168F0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D725FC7C();
    v5 = __swift_project_value_buffer(v4, qword_1EDF168F8);
    return (*(*(v4 - 8) + 16))(a2, v5, v4);
  }

  else if ([*(a1 + 40) sourceChannel])
  {
    v7 = [swift_unknownObjectRetain() identifier];
    v8 = sub_1D726207C();
    v10 = v9;

    MEMORY[0x1DA6F9910](v8, v10);

    sub_1D725FC6C();
    return swift_unknownObjectRelease_n();
  }

  else
  {
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    *v11 = 0xD000000000000012;
    v11[1] = 0x80000001D73DE3C0;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t FormatHeadlineBinding.SourceItemTip.tipSource(from:)@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    if (qword_1EDF168F0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D725FC7C();
    v5 = __swift_project_value_buffer(v4, qword_1EDF168F8);
    return (*(*(v4 - 8) + 16))(a2, v5, v4);
  }

  else
  {
    v7 = [objc_msgSend(*a1 backingTag)];
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = [swift_unknownObjectRetain() identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      MEMORY[0x1DA6F9910](v9, v11);

      sub_1D725FC6C();
      return swift_unknownObjectRelease_n();
    }

    else
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5D285FC();
      swift_allocError();
      *v12 = 0xD000000000000012;
      v12[1] = 0x80000001D73DE3C0;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }
}

uint64_t FormatHeadlineBinding.SourceItemTip.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D69D8298()
{
  result = qword_1EC88F9F8;
  if (!qword_1EC88F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88F9F8);
  }

  return result;
}

unint64_t sub_1D69D82EC(uint64_t a1)
{
  result = sub_1D69D8314();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69D8314()
{
  result = qword_1EC88FA00;
  if (!qword_1EC88FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FA00);
  }

  return result;
}

unint64_t sub_1D69D8368(void *a1)
{
  a1[1] = sub_1D668F8C8();
  a1[2] = sub_1D66F816C();
  result = sub_1D69D8298();
  a1[3] = result;
  return result;
}

uint64_t FormatGroupNodeMaskRendererResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D69D8424(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D69D8480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D69D8540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = sub_1D726290C();
  v6[4] = sub_1D72628FC();
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_1D69D8600;

  return sub_1D5F05650(a5, a6);
}

uint64_t sub_1D69D8600(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D69D8744, v3, v2);
}

uint64_t sub_1D69D8744()
{
  v1 = v0[6];
  v2 = v0[2];

  *(v2 + OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_sections) = v1;

  [*(v2 + OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_tableView) reloadData];
  v3 = v0[1];

  return v3();
}

void sub_1D69D8898()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = *&v1[OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_tableView];
    [v5 setDataSource_];
    [v5 setDelegate_];
    [v5 setAlwaysBounceVertical_];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v5 setTableFooterView_];

    type metadata accessor for SubtitleTableViewCell();
    sub_1D7262DAC();
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1D69D8C50(id a1, void *a2)
{
  v4 = v2;
  v7 = sub_1D7258DAC();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  v8 = *&v4[OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_sections];
  if (v7 >= *(v8 + 16))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v9 = v8 + 24 * v7;
  v3 = *(v9 + 40);
  v10 = *(v9 + 48);

  v11 = sub_1D7258D9C();
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v11 >= *(v10 + 16))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v12 = (v10 + (v11 << 6));
  v13 = v12[2];
  v14 = v12[3];
  v15 = v12[4];
  v72 = v12[5];
  v70 = v14;
  v71 = v15;
  v69 = v13;
  sub_1D5F0B6CC(&v69, aBlock);

  type metadata accessor for SubtitleTableViewCell();
  v16 = sub_1D7262D8C();
  v17 = [v16 textLabel];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1D726203C();
    [v18 setText_];
  }

  v20 = [v16 textLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setNumberOfLines_];
  }

  v22 = [v16 textLabel];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_opt_self() systemFontOfSize_];
    [v23 setFont_];
  }

  v25 = [v16 detailTextLabel];
  if (v25)
  {
    v26 = v25;
    if (*(&v72 + 1))
    {

      v27 = sub_1D726203C();
    }

    else
    {
      v27 = 0;
    }

    [v26 setText_];
  }

  v28 = [v16 detailTextLabel];
  if (v28)
  {
    v29 = v28;
    [v28 setNumberOfLines_];
  }

  v30 = [v16 detailTextLabel];
  if (v30)
  {
    v31 = v30;
    v32 = [objc_opt_self() secondaryLabelColor];
    [v31 setTextColor_];
  }

  v33 = [v16 detailTextLabel];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_opt_self() systemFontOfSize_];
    [v34 setFont_];
  }

  v36 = objc_opt_self();
  a1 = v16;
  v37 = [v36 systemBlueColor];
  [a1 setTintColor_];

  v38 = [a1 imageView];
  if (v38)
  {
    v39 = v38;
    v40 = [v36 secondaryLabelColor];
    [v39 setTintColor_];
  }

  v41 = v69;
  v42 = *&v4[OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_tag + 8];
  if (*(&v69 + 1))
  {
    if (v42 && (v69 == *&v4[OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_tag] || (sub_1D72646CC() & 1) != 0))
    {
      goto LABEL_28;
    }
  }

  else if (!v42)
  {
LABEL_28:
    v43 = 3;
    goto LABEL_31;
  }

  v43 = 0;
LABEL_31:
  v3 = v70;
  v44 = BYTE8(v70);
  [a1 setAccessoryType_];
  if ((v44 & 1) == 0)
  {
    v4 = v3;

    v55 = [a1 imageView];
    if (!v55)
    {

      goto LABEL_52;
    }

    a2 = v55;
    if (qword_1EC87D4F0 == -1)
    {
LABEL_45:
      v56 = [v4 imageWithConfiguration_];
      [a2 setImage_];

LABEL_48:
      sub_1D69D9D88(&v69);

      return a1;
    }

LABEL_58:
    swift_once();
    goto LABEL_45;
  }

  if (*(&v41 + 1))
  {
    v45 = v41;
  }

  else
  {
    v45 = 0x7974706D65;
  }

  if (*(&v41 + 1))
  {
    v46 = *(&v41 + 1);
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  v47 = v3;

  v48 = sub_1D726203C();

  [a1 setAccessibilityIdentifier_];

  if (!v3)
  {
    v57 = [a1 imageView];
    if (v57)
    {
      a2 = v57;
      v56 = *(*(*&v4[OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_editor] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache) + 16);
      [a2 setImage_];

      goto LABEL_48;
    }

LABEL_52:
    sub_1D69D9D88(&v69);
    return a1;
  }

  v49 = [a1 imageView];
  if (v49)
  {
    v50 = v49;
    [v49 setImage_];
  }

  v51 = *(*&v4[OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_editor] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v52;
  v54 = v70;
  *(v53 + 24) = v69;
  *(v53 + 40) = v54;
  *(v53 + 56) = v71;
  *(v53 + 72) = v72;
  sub_1D5F0B6CC(&v69, aBlock);

  sub_1D725B86C();

  if (v67)
  {

    sub_1D69D9514(v67, v52, &v69);

    sub_1D69D9D88(&v69);
  }

  else
  {
    sub_1D5B5A498(0, &qword_1EDF1AA30);
    v66 = sub_1D726308C();
    v58 = swift_allocObject();
    swift_weakInit();
    v59 = *(v51 + 24);
    v60 = swift_allocObject();
    v60[2] = v58;
    v60[3] = v3;
    v60[4] = sub_1D69D9DDC;
    v60[5] = v53;
    v60[6] = v59;
    v60[7] = v45;
    v60[8] = v46;
    aBlock[4] = sub_1D6806904;
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_57;
    v61 = _Block_copy(aBlock);
    v62 = v3;
    v63 = v59;

    v64 = [v3 downloadIfNeededWithCompletionQueue:v66 completion:v61];

    sub_1D69D9D88(&v69);
    _Block_release(v61);

    swift_unknownObjectRelease();
  }

  return a1;
}

void sub_1D69D9514(uint64_t a1, uint64_t a2, __int128 *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong accessibilityIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1D726207C();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v19 = *a3;
    if (*(&v19 + 1))
    {
      v12 = v19;
    }

    else
    {
      v12 = 0x7974706D65;
    }

    if (*(&v19 + 1))
    {
      v13 = *(&v19 + 1);
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    if (v11)
    {
      if (v9 == v12 && v11 == v13)
      {
        sub_1D69D9E38(&v19, v18, sub_1D69D9DE8);
      }

      else
      {
        v15 = sub_1D72646CC();
        sub_1D69D9E38(&v19, v18, sub_1D69D9DE8);

        if ((v15 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v16 = [v6 imageView];
      if (v16)
      {
        v17 = v16;
        [v16 setImage_];
      }

      goto LABEL_22;
    }

    sub_1D69D9E38(&v19, v18, sub_1D69D9DE8);

LABEL_22:
  }
}

id sub_1D69D996C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DebugFormatWorkspace();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v11 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B73DC0();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_tableView;
  *&v2[v16] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_sections] = MEMORY[0x1E69E7CC0];
  v17 = &v2[OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_tag];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_editor] = a1;
  v18 = a2 + *(v7 + 28);
  v19 = *(v18 + 104);
  *v17 = *(v18 + 96);
  *(v17 + 1) = v19;
  v29.receiver = v2;
  v29.super_class = ObjectType;

  v20 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);
  v21 = sub_1D726294C();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  sub_1D69D9E38(a2, v11, type metadata accessor for DebugFormatWorkspace);
  sub_1D726290C();
  v22 = v20;

  v23 = v22;
  v24 = sub_1D72628FC();
  v25 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  v26[2] = v24;
  v26[3] = v27;
  v26[4] = v23;
  v26[5] = a1;
  sub_1D676E2D0(v11, v26 + v25);
  sub_1D6BD1334(0, 0, v15, &unk_1D730E730, v26);

  sub_1D5EF0664(a2);
  return v23;
}

unint64_t sub_1D69D9C3C()
{
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_sections);
  if (result >= *(v2 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(v2 + 24 * result + 48);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result >= *(v3 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = (v3 + (result << 6));
  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[6];

  v8 = v7;

  v9 = (v0 + OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_tag);
  *v9 = v6;
  v9[1] = v5;

  [*(v0 + OBJC_IVAR____TtC8NewsFeed37DebugFormatWorkspaceTagViewController_tableView) reloadData];
}

void sub_1D69D9DE8()
{
  if (!qword_1EC88FA38)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88FA38);
    }
  }
}

uint64_t sub_1D69D9E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D69D9EA0(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D69D8540(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D69D9FA4(uint64_t a1)
{
  sub_1D69DAB28(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for FormatSlotDefinitionItemSet();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v40 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v38 - v23;
  v25 = type metadata accessor for FormatDerivedDataBindingSwitchCaseResult();
  v26 = *(v25 + 20);
  v43 = a1;
  sub_1D69DAB7C(a1 + v26, v16, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  v39 = v18;
  v27 = *(v18 + 48);
  v45 = v17;
  if (v27(v16, 1, v17) == 1)
  {
    v28 = v44;
    sub_1D69DACBC(v16, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  }

  else
  {
    sub_1D607483C(v16, v24);
    v29 = *(type metadata accessor for FormatDerivedDataBindingSwitchResult() + 20);
    v30 = v44;
    sub_1D69DA3A0(v1 + v29, v24, *(v1 + 16), v12);
    result = sub_1D69DAACC(v24);
    v28 = v30;
    if (v30)
    {
      return result;
    }

    (*(v39 + 56))(v12, 0, 1, v45);
    sub_1D60749B4(v12, v1 + v29);
  }

  v32 = v42;
  sub_1D69DAB7C(v43 + *(v25 + 24), v42, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  v33 = v28;
  if (v27(v32, 1, v45) == 1)
  {
    return sub_1D69DACBC(v32, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  }

  v34 = v32;
  v35 = v40;
  sub_1D607483C(v34, v40);
  v36 = *(type metadata accessor for FormatDerivedDataBindingSwitchResult() + 24);
  sub_1D69DA3A0(v1 + v36, v35, *(v1 + 16), v41);
  result = sub_1D69DAACC(v35);
  if (!v33)
  {
    v37 = v41;
    (*(v39 + 56))(v41, 0, 1, v45);
    return sub_1D60749B4(v37, v1 + v36);
  }

  return result;
}

uint64_t type metadata accessor for FormatDerivedDataBindingSwitchResult()
{
  result = qword_1EC88FA48;
  if (!qword_1EC88FA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D69DA3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W4>, uint64_t a4@<X8>)
{
  LODWORD(v70) = a3;
  sub_1D69DAB28(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v68 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v69 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v66 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v67 = &v65 - v18;
  sub_1D69DAB28(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v65 - v21;
  v23 = type metadata accessor for FormatSlotDefinitionItemSet();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69DAB7C(a1, v22, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  v28 = v23;
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1D69DACBC(v22, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    v29 = *(a2 + 8);
    if (v70)
    {
      v30 = *a2;
    }

    else
    {
      v30 = 0;
    }

    v45 = *(a2 + 4);
    sub_1D69DAB7C(a2 + *(v23 + 36), a4 + *(v23 + 36), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *a4 = v30;
    *(a4 + 4) = v45;
    v46 = MEMORY[0x1E69E7CC0];
    *(a4 + 8) = v29;
    *(a4 + 16) = v46;

    result = sub_1D5CDE22C(0);
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
  }

  else
  {
    sub_1D607483C(v22, v27);
    v31 = *(v27 + 1);
    v32 = a2;
    if (sub_1D5E1EFE4(v31, *(a2 + 8)))
    {

      v70 = sub_1D5EECE54(v33, v31);
      v34 = *v27;
      v35 = *(v27 + 1);
      v36 = *(a2 + 4);
      if (*a2 < *v27)
      {
        v34 = *a2;
      }

      LODWORD(v67) = v34;
      if (v36 <= v35)
      {
        v37 = v35;
      }

      else
      {
        v37 = v36;
      }

      LODWORD(v66) = v37;
      v38 = v28;
      v39 = v68;
      sub_1D69DAB7C(&v27[*(v28 + 36)], v68, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v40 = sub_1D725B76C();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      if (v42(v39, 1, v40) == 1)
      {
        v43 = v32 + *(v38 + 36);
        v44 = v69;
        sub_1D69DAB7C(v43, v69, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        if (v42(v39, 1, v40) != 1)
        {
          sub_1D69DACBC(v39, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        }
      }

      else
      {
        v44 = v69;
        (*(v41 + 32))(v69, v39, v40);
        (*(v41 + 56))(v44, 0, 1, v40);
      }

      sub_1D69DAACC(v27);
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      v55 = v66;
      *a4 = v67;
      *(a4 + 4) = v55;
      v56 = MEMORY[0x1E69E7CC0];
      *(a4 + 8) = v70;
      *(a4 + 16) = v56;
      sub_1D5CDE22C(0);
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      v57 = *(v38 + 36);
    }

    else
    {
      if (*(v27 + 1) != *(a2 + 4))
      {
        type metadata accessor for FormatDerivedDataError();
        sub_1D5E40444();
        swift_allocError();
        v59 = v58;
        sub_1D69DABE8();
        v61 = *(v60 + 48);
        v62 = *(v60 + 64);
        *v59 = 4;
        sub_1D69DAC58(v27, &v59[v61]);
        sub_1D69DAC58(a2, &v59[v62]);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return sub_1D69DAACC(v27);
      }

      LODWORD(v70) = *(v27 + 1);

      v69 = sub_1D5EECE54(v48, v31);
      LODWORD(v68) = *v27;
      v49 = v66;
      sub_1D69DAB7C(&v27[*(v28 + 36)], v66, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v50 = sub_1D725B76C();
      v51 = *(v50 - 8);
      v52 = *(v51 + 48);
      v53 = v52(v49, 1, v50);
      v65 = v28;
      if (v53 == 1)
      {
        v54 = v32 + *(v28 + 36);
        v44 = v67;
        sub_1D69DAB7C(v54, v67, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        if (v52(v49, 1, v50) != 1)
        {
          sub_1D69DACBC(v49, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        }
      }

      else
      {
        v44 = v67;
        (*(v51 + 32))(v67, v49, v50);
        (*(v51 + 56))(v44, 0, 1, v50);
      }

      sub_1D69DAACC(v27);
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      v63 = v70;
      *a4 = v68;
      *(a4 + 4) = v63;
      v64 = MEMORY[0x1E69E7CC0];
      *(a4 + 8) = v69;
      *(a4 + 16) = v64;
      sub_1D5CDE22C(0);
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      v57 = *(v65 + 36);
    }

    return sub_1D5FC55FC(v44, a4 + v57);
  }

  return result;
}

uint64_t sub_1D69DAACC(uint64_t a1)
{
  v2 = type metadata accessor for FormatSlotDefinitionItemSet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D69DAB28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D69DAB7C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D69DAB28(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D69DABE8()
{
  if (!qword_1EC88FA40)
  {
    type metadata accessor for FormatSlotDefinitionItemSet();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC88FA40);
    }
  }
}

uint64_t sub_1D69DAC58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinitionItemSet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D69DACBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D69DAB28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D69DAD40()
{
  sub_1D69DAB28(319, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t FormatArrangement.identifier.getter()
{
  v0 = sub_1D5F90834();

  return v0;
}

uint64_t FormatArrangement.slots.getter()
{
  sub_1D5B8EF70();
}

uint64_t sub_1D69DAE38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FormatArrangement();
  *a1 = sub_1D5F90834();
  a1[1] = v2;
}

uint64_t sub_1D69DAEA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return FormatArrangement.identifier.setter(v1, v2);
}

uint64_t FormatArrangement.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1D69DAF40@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FormatArrangement();
  *a1 = sub_1D5B8EF70();
}

uint64_t FormatArrangement.slots.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static FormatArrangement.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    if (v3)
    {
      if (*(v2 + 16) == *(v3 + 16))
      {
        v5 = *(v2 + 24);
        v6 = *(v3 + 24);

        LOBYTE(v5) = sub_1D6709344(v5, v6);

        if (v5)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  if (v3)
  {
    goto LABEL_12;
  }

LABEL_10:
  type metadata accessor for FormatArrangementSlot();

  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for FormatCodingSafeishArrayStrategy();
  swift_getWitnessTable();
  sub_1D72627FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v7 = static FormatCodingDefault<>.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1D69DB200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746F6C73 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D69DB31C(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x64656C62616E65;
  }

  return 0x73746F6C73;
}

uint64_t sub_1D69DB380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D69DB200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D69DB3B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D69DB404(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatArrangement.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v20 = *(a2 + 24);
  v21 = v4;
  type metadata accessor for FormatArrangement.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1D726446C();
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17 - v7;
  v9 = v2[1];
  v22 = *v2;
  v10 = v2[2];
  v18 = v2[3];
  v19 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B5C();
  v25[0] = v22;
  v25[1] = v9;
  v26 = 0;
  v11 = v24;
  KeyedEncodingContainer.encode<A>(_:forKey:)(v25, &v26, v5, &type metadata for FormatCodingIdentifierStrategy, &protocol witness table for FormatCodingIdentifierStrategy);
  if (v11)
  {

    return (*(v23 + 8))(v8, v5);
  }

  else
  {
    v13 = v18;
    v14 = v23;

    v25[0] = v19;
    v26 = 1;
    sub_1D6060284();
    sub_1D69DBB40(&qword_1EDF13E18);
    sub_1D72643BC();
    v25[0] = v13;
    v26 = 2;
    type metadata accessor for FormatArrangementSlot();

    swift_getWitnessTable();
    swift_getWitnessTable();
    v15 = type metadata accessor for FormatCodingSafeishArrayStrategy();
    WitnessTable = swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)(v25, &v26, v5, v15, WitnessTable);

    return (*(v14 + 8))(v8, v5);
  }
}

uint64_t FormatArrangement.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  type metadata accessor for FormatArrangement.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1D726435C();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - v6;
  v8 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = v7;
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v11 = v24;
  v10 = v25;
  v28 = 0;
  v12 = v9;
  KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for FormatCodingIdentifierStrategy, &protocol witness table for FormatCodingIdentifierStrategy, v27);
  v13 = v27[0];
  v14 = v27[1];
  sub_1D6060284();
  v28 = 1;
  sub_1D69DBB40(&qword_1EDF36720);
  sub_1D726427C();
  v21 = v13;
  v22 = v27[0];
  v28 = 2;
  type metadata accessor for FormatArrangementSlot();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v15 = type metadata accessor for FormatCodingSafeishArrayStrategy();
  WitnessTable = swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)(v15, WitnessTable, v27);
  (*(v11 + 8))(v12, v10);
  v17 = v27[0];
  v19 = v22;
  v18 = v23;
  *v23 = v21;
  v18[1] = v14;
  v18[2] = v19;
  v18[3] = v17;

  __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_1D69DBB40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D6060284();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D69DC10C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (*a3 != -1)
  {
    swift_once();
  }

  v4 = sub_1D72596EC();

  return v4 & 1;
}

uint64_t FeatureAvailabilityType.useSponsoredSuperFeeds.getter()
{
  if ((_s8NewsFeed23FeatureAvailabilityTypePAAE019allowFollowingOfEndH16ArticlePublisherSbvg_0() & 1) == 0)
  {
    return 0;
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF18670 != -1)
  {
    swift_once();
  }

  v0 = sub_1D72596EC();

  return v0 & 1;
}

uint64_t sub_1D69DC4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v167 = a3;
  v6 = sub_1D725895C();
  v160 = *(v6 - 8);
  v161 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v158 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroupLayoutBindingContext();
  v165 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v163 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for GroupLayoutContext();
  v164 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166, v12);
  v162 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v140 - v16;
  v18 = *v3;
  v19 = *(v3 + 1);
  v20 = v3[16];
  v205 = &_s10GapOfflineVN;
  v154 = sub_1D5BF6A10();
  v206 = v154;
  v155 = v18;
  LOBYTE(v203) = v18;
  *(&v203 + 1) = v19;
  v204 = v20;
  v159 = a2;
  v207 = v17;
  sub_1D5BF03F4(a2, v17, type metadata accessor for GroupLayoutContext);
  v21 = v9;
  v22 = *(v9 + 56);
  v23 = a1;
  v24 = *(a1 + v22);
  v25 = *(v24 + 16);
  v157 = v19;
  v156 = v20;
  sub_1D5BEE8A0(v19, v20);
  if (!v25 || (v26 = sub_1D5BCF83C(0x4F70614764656546, 0xEE00656E696C6666, 0, 0), (v27 & 1) == 0) || (v28 = *(*(v24 + 56) + 8 * v26), !*(v28 + 16)))
  {
    sub_1D5ED8048();
    swift_allocError();
    *v33 = 0x4F70614764656546;
LABEL_7:
    *(v33 + 8) = 0xEE00656E696C6666;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0;
    *(v33 + 40) = 1;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    swift_willThrow();
    goto LABEL_8;
  }

  v30 = v168;
  v31 = sub_1D5BF08EC(v29, 0, 0);
  v32 = v30;
  if (v30)
  {

LABEL_8:
    v34 = v207;
LABEL_9:
    sub_1D5EF8F94(v34);
    return __swift_destroy_boxed_opaque_existential_1(&v203);
  }

  v36 = sub_1D714FF20(v31);

  if (!v36)
  {
LABEL_28:

    sub_1D5ED8048();
    swift_allocError();
    *v33 = 0x4F70614764656546;
    goto LABEL_7;
  }

  result = v36;
  if (!*(v36 + 16))
  {

    goto LABEL_28;
  }

  v37 = *(v36 + 16);
  v38 = v21;
  v39 = *(v23 + *(v21 + 68));
  v146 = *(v21 + 76);
  v147 = v21;
  v149 = *(v23 + v146);
  v40 = v149;
  v150 = result;
  if (v149 >= v39)
  {
LABEL_21:
    v59 = *(v23 + *(v38 + 72));
    v60 = __OFSUB__(v59, v40);
    v61 = v59 - v40;
    if (v60)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v62 = *(result + 16);
    if (v61 <= 0)
    {
      v148 = v23;
      v145 = v32;
      result = swift_bridgeObjectRetain_n();
      if (v62)
      {
        v81 = 0;
        v82 = 32;
        while (v81 < *(v150 + 16))
        {
          v83 = *(v150 + v82 + 16);
          v190 = *(v150 + v82);
          v191 = v83;
          v84 = *(v150 + v82 + 80);
          v86 = *(v150 + v82 + 48);
          v85 = *(v150 + v82 + 64);
          v192 = *(v150 + v82 + 32);
          v193 = v86;
          v194 = v85;
          v195 = v84;
          v168 = v190;
          v152 = v86;
          v153 = v83;
          v151 = v192;
          v87 = v85;
          sub_1D6307094(&v190, &v173);
          if (!*(&v168 + 1))
          {
            goto LABEL_37;
          }

          v190 = v168;
          v191 = v153;
          v192 = v151;
          v193 = v152;
          v194 = v87;
          v195 = v84;
          if ((v153 & 0x1000) == 0)
          {
            v88 = v150;

            v180 = v88;
            sub_1D5EC23BC(v81, &v173);
            sub_1D6307040(&v190);
            v98 = v173;
            v97 = *(&v174 + 1);
            v57 = v174;
            v95 = *(&v175 + 1);
            v96 = v175;
            v93 = *(&v176 + 1);
            v94 = v176;
            v91 = *(&v177 + 1);
            v92 = v177;
            v90 = v178;
            v89 = v180;
            if (!*(&v173 + 1))
            {
              goto LABEL_38;
            }

            v114 = *(&v173 + 1);
            v142 = v173;
            v143 = *(&v174 + 1);
            v144 = v175;
            *&v152 = *(&v176 + 1);
            *&v151 = v176;
            *&v168 = *(&v177 + 1);
            *&v153 = v177;
            v76 = v178;

            v23 = v148;
            v68 = v114;
            goto LABEL_49;
          }

          ++v81;
          result = sub_1D6307040(&v190);
          v82 += 88;
          if (v62 == v81)
          {
            goto LABEL_37;
          }
        }

        goto LABEL_54;
      }

LABEL_37:
      v88 = v150;
      swift_bridgeObjectRelease_n();
      v89 = 0;
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v57 = 0;
      v98 = 0;
LABEL_38:
      v190 = v98;
      *&v191 = v57;
      *(&v191 + 1) = v97;
      *&v192 = v96;
      *(&v192 + 1) = v95;
      *&v193 = v94;
      *(&v193 + 1) = v93;
      *&v194 = v92;
      *(&v194 + 1) = v91;
      v195 = v90;
      v196 = v89;
      sub_1D69DDE48(&v190, &qword_1EC88FA70, &qword_1EC88FA78, &qword_1EC88FA80, &type metadata for FeedGapOffline);
      if (*(v88 + 16) && (v99 = *(v88 + 48), v173 = *(v88 + 32), v174 = v99, v100 = *(v88 + 80), v175 = *(v88 + 64), v176 = v100, v177 = *(v88 + 96), v101 = *(v88 + 112), v178 = v101, v168 = v173, v152 = v100, v153 = v174, v151 = v175, v102 = v177, sub_1D6307094(&v173, &v180), *(&v168 + 1)))
      {
        v173 = v168;
        v174 = v153;
        v175 = v151;
        v176 = v152;
        v177 = v102;
        v178 = v101;
        v171 = v150;
        sub_1D5EC23BC(0, &v180);
        sub_1D6307040(&v173);
        v103 = v180;
        v68 = v181;
        v57 = v182;
        v104 = v183;
        v105 = *(&v184 + 1);
        v106 = v184;
        v108 = v185;
        v107 = v186;
        v110 = v187;
        v109 = v188;
        v76 = v189;
        v111 = v171;
        if (v181)
        {
          v142 = v180;
          v143 = v183;
          v144 = v184;
          *&v151 = v185;
          *&v152 = v186;
          *&v153 = v187;
          *&v168 = v188;

          v23 = v148;
          goto LABEL_49;
        }
      }

      else
      {

        v111 = 0;
        v76 = 0;
        v109 = 0;
        v110 = 0;
        v107 = 0;
        v108 = 0;
        v105 = 0;
        v106 = 0;
        v104 = 0;
        v57 = 0;
        v103 = 0;
      }

      v79 = v207;
      v173 = v103;
      *&v174 = v57;
      *(&v174 + 1) = v104;
      *&v175 = v106;
      *(&v175 + 1) = v105;
      *&v176 = v108;
      *(&v176 + 1) = v107;
      *&v177 = v110;
      *(&v177 + 1) = v109;
      v178 = v76;
      v179 = v111;
      v80 = &v173;
    }

    else
    {
      if (v62 && (v63 = *(result + 48), v190 = *(result + 32), v191 = v63, v64 = *(result + 80), v192 = *(result + 64), v193 = v64, v194 = *(result + 96), v65 = *(result + 112), v195 = v65, v168 = v190, v152 = v64, v153 = v191, v151 = v192, v66 = v194, sub_1D6307094(&v190, &v173), *(&v168 + 1)))
      {
        v190 = v168;
        v191 = v153;
        v192 = v151;
        v193 = v152;
        v194 = v66;
        v195 = v65;
        v180 = v150;
        sub_1D5EC23BC(0, &v173);
        sub_1D6307040(&v190);
        v68 = *(&v173 + 1);
        v67 = v173;
        v69 = *(&v174 + 1);
        v57 = v174;
        v70 = *(&v175 + 1);
        v71 = v175;
        v72 = *(&v176 + 1);
        v73 = v176;
        v74 = *(&v177 + 1);
        v75 = v177;
        v76 = v178;
        v77 = v180;
        if (*(&v173 + 1))
        {
          v142 = v173;
          v143 = *(&v174 + 1);
          v144 = v175;
          *&v152 = *(&v176 + 1);
          *&v151 = v176;
          *&v168 = *(&v177 + 1);
          *&v153 = v177;

          goto LABEL_49;
        }
      }

      else
      {

        v77 = 0;
        v76 = 0;
        v74 = 0;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        v70 = 0;
        v71 = 0;
        v69 = 0;
        v57 = 0;
        v67 = 0;
      }

      v79 = v207;
      v190 = v67;
      *&v191 = v57;
      *(&v191 + 1) = v69;
      *&v192 = v71;
      *(&v192 + 1) = v70;
      *&v193 = v73;
      *(&v193 + 1) = v72;
      *&v194 = v75;
      *(&v194 + 1) = v74;
      v195 = v76;
      v196 = v77;
      v80 = &v190;
    }

    sub_1D69DDE48(v80, &qword_1EC88FA70, &qword_1EC88FA78, &qword_1EC88FA80, &type metadata for FeedGapOffline);

    v195 = 0;
    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
    sub_1D69DDFD4(&v190);
    sub_1D5ED8048();
    swift_allocError();
    strcpy(v112, "FeedGapOffline");
    v112[15] = -18;
    *(v112 + 2) = 0;
    *(v112 + 3) = 0;
    *(v112 + 4) = 0;
    *(v112 + 5) = 1;
    *(v112 + 6) = 0;
    *(v112 + 7) = 0;
    v112[64] = 0;
    swift_willThrow();
    v34 = v79;
    goto LABEL_9;
  }

  v145 = v28;
  v148 = v23;
  result = swift_bridgeObjectRetain_n();
  v41 = 0;
  v42 = 32;
  while (1)
  {
    if (v41 >= *(v150 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v43 = *(v150 + v42 + 16);
    v190 = *(v150 + v42);
    v191 = v43;
    v44 = *(v150 + v42 + 80);
    v46 = *(v150 + v42 + 48);
    v45 = *(v150 + v42 + 64);
    v192 = *(v150 + v42 + 32);
    v193 = v46;
    v194 = v45;
    v195 = v44;
    v168 = v190;
    v152 = v46;
    v153 = v43;
    v151 = v192;
    v47 = v45;
    sub_1D6307094(&v190, &v173);
    if (!*(&v168 + 1))
    {
      goto LABEL_19;
    }

    v190 = v168;
    v191 = v153;
    v192 = v151;
    v193 = v152;
    v194 = v47;
    v195 = v44;
    if ((v153 & 0x1000) != 0)
    {
      break;
    }

    ++v41;
    result = sub_1D6307040(&v190);
    v42 += 88;
    if (v37 == v41)
    {
LABEL_19:
      swift_bridgeObjectRelease_n();
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
LABEL_20:
      v32 = v30;
      v23 = v148;
      v190 = v58;
      *&v191 = v57;
      *(&v191 + 1) = v56;
      *&v192 = v55;
      *(&v192 + 1) = v54;
      *&v193 = v53;
      *(&v193 + 1) = v52;
      *&v194 = v51;
      *(&v194 + 1) = v50;
      v195 = v49;
      v196 = v48;
      sub_1D69DDE48(&v190, &qword_1EC88FA70, &qword_1EC88FA78, &qword_1EC88FA80, &type metadata for FeedGapOffline);
      v38 = v21;
      v28 = v145;
      v40 = v149;
      result = v150;
      goto LABEL_21;
    }
  }

  v113 = v150;

  v180 = v113;
  sub_1D5EC23BC(v41, &v173);
  sub_1D6307040(&v190);
  v58 = v173;
  v56 = *(&v174 + 1);
  v57 = v174;
  v54 = *(&v175 + 1);
  v55 = v175;
  v52 = *(&v176 + 1);
  v53 = v176;
  v50 = *(&v177 + 1);
  v51 = v177;
  v49 = v178;
  v48 = v180;
  v141 = *(&v173 + 1);
  if (!*(&v173 + 1))
  {
    goto LABEL_20;
  }

  v142 = v173;
  v143 = *(&v174 + 1);
  v144 = v175;
  *&v152 = *(&v176 + 1);
  *&v151 = v176;
  *&v168 = *(&v177 + 1);
  *&v153 = v177;
  v76 = v178;

  v23 = v148;
  v28 = v145;
  v68 = v141;
LABEL_49:
  *&v197 = v142;
  *(&v197 + 1) = v68;
  *&v198 = v57;
  *(&v198 + 1) = v143;
  v199 = v144;
  *&v200 = v151;
  *(&v200 + 1) = v152;
  *&v201 = v153;
  *(&v201 + 1) = v168;
  v202 = v76;
  if ((v57 & 0x1000) != 0)
  {
    if (!__OFADD__(v149, 1))
    {
      *(v23 + v146) = v149 + 1;
      goto LABEL_52;
    }

LABEL_56:
    __break(1u);
  }

  else
  {
LABEL_52:
    MEMORY[0x1EEE9AC00](result, v78);
    v138 = &v197;
    v115 = sub_1D5BF5F6C(sub_1D5BF2E88, v137, v28);
    strcpy(&v190, "FeedGapOffline");
    HIBYTE(v190) = -18;
    v191 = 0uLL;
    sub_1D5BDACA8(&v190, v115);

    v192 = v199;
    v193 = v200;
    v194 = v201;
    v195 = v202;
    v190 = v197;
    v191 = v198;
    v116 = v23;
    v117 = v163;
    sub_1D5BF03F4(v116, v163, type metadata accessor for GroupLayoutBindingContext);
    v118 = v162;
    sub_1D5BF03F4(v159, v162, type metadata accessor for GroupLayoutContext);
    v119 = v158;
    sub_1D725894C();
    v120 = sub_1D725893C();
    *&v168 = v121;
    (*(v160 + 8))(v119, v161);
    *(&v174 + 1) = &_s10GapOfflineVN;
    *&v175 = v154;
    v122 = v156;
    LOBYTE(v173) = v155;
    v123 = v157;
    *(&v173 + 1) = v157;
    LOBYTE(v174) = v156;
    type metadata accessor for GroupLayoutKey();
    v124 = swift_allocObject();
    sub_1D5BEE8A0(v123, v122);
    v180 = sub_1D7264C5C();
    v181 = v125;
    v171 = 95;
    v172 = 0xE100000000000000;
    v169 = 45;
    v170 = 0xE100000000000000;
    v138 = sub_1D5BF4D9C();
    v139 = v138;
    v137[0] = MEMORY[0x1E69E6158];
    v137[1] = v138;
    v126 = sub_1D7263A6C();
    v128 = v127;

    *(v124 + 16) = v126;
    *(v124 + 24) = v128;
    v129 = (v124 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
    v130 = v168;
    *v129 = v120;
    v129[1] = v130;
    sub_1D5B68374(&v173, v124 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
    v131 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
    sub_1D5BDA89C(v117, v124 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
    (*(v165 + 56))(v124 + v131, 0, 1, v147);
    v132 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
    sub_1D5BDA89C(v118, v124 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
    (*(v164 + 56))(v124 + v132, 0, 1, v166);
    __swift_destroy_boxed_opaque_existential_1(&v173);
    v133 = _s10GapOfflineV5BoundVMa(0);
    v134 = v167;
    v167[3] = v133;
    v134[4] = sub_1D5C18558(&qword_1EDF33ED8, _s10GapOfflineV5BoundVMa);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v134);
    sub_1D5B63F14(&v203, boxed_opaque_existential_1);
    result = sub_1D5BDA89C(v207, boxed_opaque_existential_1 + v133[5], type metadata accessor for GroupLayoutContext);
    v136 = boxed_opaque_existential_1 + v133[6];
    *(v136 + 2) = v192;
    *(v136 + 3) = v193;
    *(v136 + 4) = v194;
    *(v136 + 10) = v195;
    *v136 = v190;
    *(v136 + 1) = v191;
    *(boxed_opaque_existential_1 + v133[7]) = v124;
  }

  return result;
}

uint64_t sub_1D69DD41C@<X0>(_BYTE *a1@<X8>)
{
  v69 = a1;
  v2 = sub_1D725A36C();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  v60 = v5;
  v61 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v64 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B528(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v58 - v11;
  v63 = &v58 - v11;
  v13 = _s10GapOfflineV5BoundVMa(0);
  v14 = (v1 + *(v13 + 24));
  v15 = v14[3];
  v90 = v14[2];
  v91 = v15;
  v92 = v14[4];
  v93 = *(v14 + 10);
  v16 = v14[1];
  v88 = *v14;
  v89 = v16;
  v17 = v1 + *(v13 + 20);
  v18 = type metadata accessor for GroupLayoutContext();
  v19 = *(v18 + 40);
  v20 = v17;
  v65 = v17;
  v21 = *(*(v17 + v19) + 16);
  v22 = *(v20 + *(v18 + 32));
  sub_1D5B68374(v21 + 16, &v75);
  sub_1D5B68374(v21 + 56, &v80);
  v23 = v22 * *(v21 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(&v75, inited + 16);
  sub_1D5B63F14(&v80, inited + 56);
  *(inited + 96) = v23;
  sub_1D6307094(&v88, v85);
  sub_1D6BAD1B0(&v83);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  v85[2] = v90;
  v85[3] = v91;
  v85[4] = v92;
  v86 = v93;
  v85[0] = v88;
  v85[1] = v89;
  sub_1D5B68374(&v83, v87);
  sub_1D5B68374(&v83, &v80);
  (*(v6 + 56))(v12, 1, 1, v5);
  v25 = swift_allocObject();
  v62 = v25;
  v26 = v91;
  *(v25 + 48) = v90;
  *(v25 + 64) = v26;
  *(v25 + 80) = v92;
  *(v25 + 96) = v93;
  v27 = v89;
  *(v25 + 16) = v88;
  *(v25 + 32) = v27;
  sub_1D5B7B528(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
  v28 = swift_allocObject();
  *(v28 + 2) = 0xC04E000000000000;
  v29 = v81;
  v30 = v82;
  __swift_project_boxed_opaque_existential_1(&v80, v81);
  v31 = *(&v90 + 1);
  v33 = v91;
  v32 = v92;
  v59 = *(v30 + 8);
  sub_1D6307094(&v88, &v75);
  sub_1D6307094(&v88, &v75);
  v34 = v59(v31, v33, *(&v33 + 1), v32, v29, v30);
  sub_1D6307040(&v88);
  *&v28[*(*v28 + 120)] = v34;
  *&v28[*(*v28 + 136)] = v34;
  v35 = v34;
  v36 = v64;
  sub_1D725890C();
  (*(v61 + 32))(&v28[*(*v28 + 128)], v36, v60);
  LOBYTE(v36) = [objc_opt_self() isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v80);
  v28[qword_1EDF347F8] = v36;
  sub_1D5DF42F8(v63, &v28[qword_1EDF347F0]);
  v37 = swift_allocObject();
  v38 = v62;
  v37[2] = sub_1D69DE38C;
  v37[3] = v38;
  v37[4] = v35;
  *(v28 + 3) = sub_1D69DE394;
  *(v28 + 4) = v37;
  __swift_destroy_boxed_opaque_existential_1(&v83);
  v87[5] = v28;
  v39 = sub_1D7259E9C();
  MEMORY[0x1DA6FA480](v39, 0.0, v40, v41, v42, v43);
  sub_1D7262E1C();
  v70 = v44;
  v71 = v45;
  v72 = v46;
  v73 = v47;
  v74 = v85;
  (*(v67 + 104))(v66, *MEMORY[0x1E69D7378], v68);
  sub_1D69DE3D4();
  swift_allocObject();
  sub_1D725A4CC();
  sub_1D725A4DC();

  v48 = v75;
  v49 = v76;
  v50 = v77;
  v83 = v78;
  v84 = v79;
  sub_1D5C19108(0, &qword_1EDF19A30, &type metadata for FeedItemLayoutAttributes, MEMORY[0x1E69E6F90]);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D7273AE0;
  v52 = swift_allocObject();
  sub_1D69DE4F8(v85, v52 + 16);
  v53 = v84;
  *(v52 + 184) = v83;
  *(v52 + 152) = v48;
  *(v52 + 168) = v49;
  *(v52 + 176) = v50;
  *(v52 + 200) = v53;
  *(v51 + 32) = v52 | 0x2000000000000000;
  v54 = v69;
  *v69 = 0;
  *(v54 + 8) = v48;
  *(v54 + 3) = v49;
  *(v54 + 4) = v50;
  *&v80 = v51;
  sub_1D5C19108(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, MEMORY[0x1E69E62F8]);
  sub_1D5C184C4();
  sub_1D5BDEFF8();
  v55 = sub_1D72623BC();

  v56 = MEMORY[0x1E69E7CC0];
  *(v54 + 5) = v55;
  *(v54 + 6) = v56;
  return sub_1D69DE554(v85);
}

uint64_t sub_1D69DDB5C(uint64_t a1)
{
  sub_1D5BDEE4C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  v4 = v1 + *(a1 + 24);
  v5 = *(v4 + 32);
  v6 = *(v4 + 64);
  v13[3] = *(v4 + 48);
  v13[4] = v6;
  v14 = *(v4 + 80);
  v7 = *(v4 + 16);
  v13[0] = *v4;
  v13[1] = v7;
  v13[2] = v5;
  *(v3 + 56) = &type metadata for FeedGapOffline;
  *(v3 + 64) = sub_1D63070F0();
  v8 = swift_allocObject();
  *(v3 + 32) = v8;
  v9 = *(v4 + 48);
  *(v8 + 48) = *(v4 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v4 + 64);
  *(v8 + 96) = *(v4 + 80);
  v10 = *(v4 + 16);
  *(v8 + 16) = *v4;
  *(v8 + 32) = v10;
  sub_1D6307094(v13, v12);
  return v3;
}

unint64_t sub_1D69DDC90()
{
  result = qword_1EDF33E30;
  if (!qword_1EDF33E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33E30);
  }

  return result;
}

unint64_t sub_1D69DDCE4()
{
  result = qword_1EDF33E38[0];
  if (!qword_1EDF33E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF33E38);
  }

  return result;
}

uint64_t sub_1D69DDD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D69DDDA0()
{
  result = qword_1EDF33BE0;
  if (!qword_1EDF33BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33BE0);
  }

  return result;
}

unint64_t sub_1D69DDDF4()
{
  result = qword_1EDF33BE8[0];
  if (!qword_1EDF33BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF33BE8);
  }

  return result;
}

uint64_t sub_1D69DDE48(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D69DDEF0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D69DDEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2)
  {

    sub_1D5BF6680(a6, a7);
  }
}

void sub_1D69DDEF0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D69DDF4C(255, a3, a4, a5);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D69DDF4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D5C19108(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D69DDFD4(uint64_t a1)
{
  sub_1D5C19108(0, &qword_1EC88FA88, &type metadata for FeedGapOffline, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D69DE22C()
{
  result = sub_1D5B49474(319, &qword_1EDF3FA20);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GroupLayoutContext();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for GroupLayoutKey();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D69DE2DC(uint64_t a1)
{
  result = sub_1D5C18558(&qword_1EDF33EE0, _s10GapOfflineV5BoundVMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D69DE334(uint64_t a1)
{
  result = sub_1D5C18558(&qword_1EDF33C90, _s3GapV5BoundVMa);
  *(a1 + 8) = result;
  return result;
}

id sub_1D69DE394@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D70DD158(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

void sub_1D69DE3D4()
{
  if (!qword_1EDF3BF48)
  {
    sub_1D69DE450();
    sub_1D69DE4A4();
    v0 = sub_1D725A4FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BF48);
    }
  }
}

unint64_t sub_1D69DE450()
{
  result = qword_1EDF2A510;
  if (!qword_1EDF2A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A510);
  }

  return result;
}

unint64_t sub_1D69DE4A4()
{
  result = qword_1EDF2A528;
  if (!qword_1EDF2A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A528);
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatCodeViewController()
{
  result = qword_1EC88FAA0;
  if (!qword_1EC88FAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1D69DE650(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_1D725789C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D725785C();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1D72578EC();
  swift_allocObject();
  v9 = sub_1D72578DC();
  sub_1D69DED3C(0, &qword_1EC8813F0, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D7270C10;
  sub_1D725783C();
  sub_1D725784C();
  v45[0] = v10;
  sub_1D69DEDFC(&qword_1EC8813F8, MEMORY[0x1E6967F78]);
  sub_1D69DED3C(0, &qword_1EC881400, MEMORY[0x1E69E62F8]);
  sub_1D5F40B44();
  v11 = v41;
  sub_1D7263B6C();
  sub_1D725786C();
  *v6 = 0x7974696E69666E69;
  v6[1] = 0xE800000000000000;
  v6[2] = 0x74696E69666E692DLL;
  v6[3] = 0xE900000000000079;
  v6[4] = 7233902;
  v6[5] = 0xE300000000000000;
  (*(v3 + 104))(v6, *MEMORY[0x1E6967FE0], v2);
  sub_1D72578AC();
  v37[1] = v9;
  if (v11)
  {

    v12 = v11(v9);
    v14 = v13;
    sub_1D5B74328(v11);
    v15 = 0;
    v16 = v12;
  }

  else
  {
    sub_1D69DED9C();
    v16 = swift_allocError();
    v14 = 0;
    v15 = 1;
  }

  v17 = type metadata accessor for DebugFormatCodeJSONLoader();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v14;
  *(v18 + 32) = v15;
  v46 = v17;
  v47 = &off_1F51BB450;
  v45[0] = v18;
  v19 = type metadata accessor for DebugFormatCodeDisplayViewController();
  v20 = objc_allocWithZone(v19);
  v21 = OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_textView;
  v22 = objc_allocWithZone(MEMORY[0x1E69DD168]);
  sub_1D69DEDF0(v16, v14, v15);
  *&v20[v21] = [v22 initWithFrame_];
  sub_1D5B68374(v45, &v20[OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_loader]);
  v44.receiver = v20;
  v44.super_class = v19;
  v23 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v24 = v39;
  *&v39[qword_1EC88FA90] = v23;
  v25 = type metadata accessor for DebugFormatCodeYAMLLoader();
  v26 = swift_allocObject();
  *(v26 + 16) = v16;
  *(v26 + 24) = v14;
  *(v26 + 32) = v15;
  v46 = v25;
  v47 = &off_1F51BEC10;
  v45[0] = v26;
  v27 = objc_allocWithZone(v19);
  v28 = OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_textView;
  v29 = objc_allocWithZone(MEMORY[0x1E69DD168]);
  sub_1D69DEDF0(v16, v14, v15);
  *&v27[v28] = [v29 initWithFrame_];
  sub_1D5B68374(v45, &v27[OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_loader]);
  v43.receiver = v27;
  v43.super_class = v19;
  v30 = objc_msgSendSuper2(&v43, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v45);
  *&v24[qword_1EC88FA98] = v30;
  v42.receiver = v24;
  v42.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v42, sel_initWithNibName_bundle_, 0, 0);
  v32 = *&v31[qword_1EC88FA98];
  sub_1D69DEDFC(&qword_1EC88FAB8, type metadata accessor for DebugFormatCodeDisplayViewController);
  v33 = v31;
  v34 = v32;
  sub_1D725E69C();

  v35 = *&v33[qword_1EC88FA90];
  sub_1D725E69C();

  sub_1D69DEE44(v16, v14, v15);

  sub_1D5B74328(v41);

  return v33;
}

void sub_1D69DECA8()
{
  v1 = *(v0 + qword_1EC88FA98);
}

void sub_1D69DECE8(uint64_t a1)
{
  v2 = *(a1 + qword_1EC88FA98);
}

void sub_1D69DED3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D725785C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D69DED9C()
{
  result = qword_1EC88FAB0;
  if (!qword_1EC88FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FAB0);
  }

  return result;
}

id sub_1D69DEDF0(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1D5E3E824(a1, a2);
  }
}

uint64_t sub_1D69DEDFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D69DEE44(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1D5B952F8(a1, a2);
  }
}

unint64_t sub_1D69DEE64()
{
  result = qword_1EC88FAC0;
  if (!qword_1EC88FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FAC0);
  }

  return result;
}

uint64_t sub_1D69DEEB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a6;
  v53 = a7;
  v50 = a4;
  v51 = a2;
  v14 = sub_1D7261ACC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D72585BC();
  v20 = *(v19 - 8);
  *&v23 = MEMORY[0x1EEE9AC00](v19, v21).n128_u64[0];
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a3;
  if (*a3 < 0)
  {
    v43 = v50;
    v42 = v51;
    v45 = v52;
    v44 = v53;
    v46 = *((v26 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v48 = *((v26 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v49 = a9;
    v47 = [a5 userInterfaceStyle];
    if (v47)
    {
      if (v47 == 2)
      {
        aBlock[0] = v48;
      }

      else
      {
        aBlock[0] = v46;
      }

      return sub_1D69DEEB8(a1, v42, aBlock, v43, a5, v45, v44, a8, v49);
    }

    else
    {
      aBlock[0] = v46;
      return sub_1D69DEEB8(a1, v42, aBlock, v43, a5, v45, v44, a8, v49);
    }
  }

  else
  {
    v27 = v22;
    v28 = swift_projectBox();
    (*(v20 + 16))(v25, v28, v27);
    v29 = *(v9 + 16);
    v30 = sub_1D725844C();
    v31 = [v29 assetHandleForURL:v30 lifetimeHint:0];

    sub_1D5B5A498(0, &qword_1EDF1AA30);
    (*(v15 + 104))(v18, *MEMORY[0x1E69E7F88], v14);
    v32 = sub_1D72630CC();
    (*(v15 + 8))(v18, v14);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v35[2] = v31;
    v35[3] = v34;
    v36 = v52;
    v37 = v53;
    v35[4] = v33;
    v35[5] = v36;
    v35[6] = v37;
    aBlock[4] = sub_1D69DF8A4;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_58;
    v38 = _Block_copy(aBlock);
    v39 = v31;

    v40 = [v39 downloadIfNeededWithCompletionQueue:v32 completion:v38];
    _Block_release(v38);

    swift_unknownObjectRelease();
    return (*(v20 + 8))(v25, v27);
  }
}

uint64_t sub_1D69DF2A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v29 = a5;
  v26 = a4;
  v27 = a2;
  v6 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = sub_1D7261ABC();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7261B2C();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5A498(0, &qword_1EDF04348);
  v16 = sub_1D726207C();
  v17 = sub_1D62020BC(a1, v16);
  sub_1D5B5A498(0, &qword_1EDF1AA30);
  v18 = sub_1D726308C();
  v19 = swift_allocObject();
  v20 = v28;
  v19[2] = v27;
  v19[3] = v20;
  v21 = v26;
  v19[4] = v17;
  v19[5] = v21;
  v19[6] = v29;
  aBlock[4] = sub_1D69DF8BC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_14;
  v22 = _Block_copy(aBlock);

  v23 = v17;

  sub_1D7261AEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D5B736C8(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D5B73908();
  sub_1D5B736C8(&qword_1EDF1B560, sub_1D5B73908);
  v24 = v33;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v15, v11, v22);
  _Block_release(v22);

  (*(v32 + 8))(v11, v24);
  return (*(v30 + 8))(v15, v31);
}

void sub_1D69DF7F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {

      sub_1D725F8EC();
      a4(v6);
    }
  }
}

uint64_t sub_1D69DF8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v5;
  v6 = *(a1 + 48);
  v33[2] = *(a1 + 32);
  v7 = *(a1 + 64);
  v33[3] = v6;
  v34 = v7;
  v8 = *(&v33[0] + 1);
  *a2 = *&v33[0];
  *(a2 + 8) = v8;
  *(a2 + 48) = MEMORY[0x1E69E7CC0];
  v9 = *(type metadata accessor for FormatDerivedDataOption() + 28);
  v10 = type metadata accessor for FormatVersionRequirement(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = *(a1 + 32);
  v30 = *(a1 + 16);
  v31 = v11;
  v32[0] = *(a1 + 48);
  *(v32 + 15) = *(a1 + 63);

  sub_1D6D18CE8(v12, v13, v14, v15, v16, v17, v18, v28);
  v19 = v28[0];
  if (v29)
  {
    v20 = v28[1];
    v21 = *(&v34 + 1);

    result = sub_1D5CF5E18(v33);
    *(a2 + 16) = v19;
    *(a2 + 24) = v20;
    *(a2 + 32) = v21;
    *(a2 + 40) = 1;
  }

  else
  {
    v23 = *(&v34 + 1);
    v24 = *(*(&v34 + 1) + 16);

    if (v24)
    {
      v25 = 0;
      while (v25 < *(v23 + 16))
      {
        v26[1] = *(v23 + v25 + 32);
        v26[0] = v19;
        result = sub_1D5E3FC18(v26, &v27);
        if (v2)
        {

          sub_1D5CF5E18(v33);

          return sub_1D69E1CD8(a2 + v9, sub_1D60077D8);
        }

        ++v25;
        LOBYTE(v19) = v27;
        if (v24 == v25)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      result = sub_1D5CF5E18(v33);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = v19;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

void sub_1D69DFAF0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  *a2 = *a1;
  *(a2 + 8) = v3;
  *&v36[0] = a1[2];

  FormatOptionValue.type.getter(&v33);
  v4 = v33;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = v4;
  v26 = a2;
  *(a2 + 40) = 0;
  sub_1D6BE7C10(&v33);
  if (!*(&v34 + 1))
  {
    sub_1D69E1FBC(&v33);
    v8 = MEMORY[0x1E69E7CC0];
LABEL_21:
    *(v26 + 48) = v8;
    v23 = *(type metadata accessor for FormatOption() + 28);
    v24 = type metadata accessor for FormatDerivedDataOption();
    sub_1D69E1DE0(a1 + v23, v26 + *(v24 + 28), sub_1D60077D8);
    sub_1D69E1CD8(a1, type metadata accessor for FormatOption);
    return;
  }

  v36[0] = v33;
  v36[1] = v34;
  v5 = v35;
  v37 = v35;
  v6 = MEMORY[0x1E69E7CC0];
  v28 = *(v35 + 16);
  if (!v28)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_20:
    sub_1D69E203C(v36);
    goto LABEL_21;
  }

  v7 = 0;
  v27 = v35;
  v8 = MEMORY[0x1E69E7CC0];
  while (v7 < *(v5 + 16))
  {
    v9 = v7;
    sub_1D5EB99F0();
    inited = swift_initStackObject();
    *(inited + 16) = v6;
    *(inited + 24) = v6;
    *(inited + 32) = 0u;
    *(inited + 48) = 0u;
    *(inited + 64) = 0;
    *(inited + 76) = -512;
    *(inited + 72) = 0;
    v38 = inited;
    v29 = v9;

    sub_1D6EE4610(&v38);
    if (v30)
    {

      sub_1D69E203C(v36);

      sub_1D69E1CD8(a1, type metadata accessor for FormatOption);

      sub_1D6057684(*(v26 + 16), *(v26 + 24), *(v26 + 32), *(v26 + 40));
      return;
    }

    v11 = v38;
    swift_beginAccess();
    v12 = *(v11 + 16);
    v13 = *(v12 + 16);
    if (v13)
    {

      v14 = 32;
      v31 = v12;
      do
      {
        v16 = *(v12 + v14);
        if (v16 >> 60 == 3)
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v19 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v18 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x28);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D698CB8C(0, *(v8 + 2) + 1, 1, v8);
          }

          v21 = *(v8 + 2);
          v20 = *(v8 + 3);
          v22 = v8;
          if (v21 >= v20 >> 1)
          {
            v22 = sub_1D698CB8C((v20 > 1), v21 + 1, 1, v8);
          }

          *(v22 + 2) = v21 + 1;
          v8 = v22;
          v15 = &v22[32 * v21];
          v12 = v31;
          *(v15 + 4) = v32;
          *(v15 + 5) = v17;
          *(v15 + 6) = v19;
          *(v15 + 7) = v18;
        }

        v14 += 8;
        --v13;
      }

      while (v13);
    }

    else
    {
    }

    v7 = v29 + 1;
    v5 = v27;
    v6 = MEMORY[0x1E69E7CC0];
    if (v29 + 1 == v28)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_1D69DFE6C(void *a1)
{
  v3 = v1;
  sub_1D5C300C8(0, &qword_1EC88FB30, sub_1D69E1D38, &type metadata for FormatDerivedDataOption.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69E1D38();
  sub_1D7264B5C();
  LOBYTE(v15) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v12 = *(v3 + 32);
    v13 = *(v3 + 40);
    v15 = *(v3 + 16);
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = 1;
    sub_1D69E1C8C(v15, v11, v12, v13);
    sub_1D69E1E48();
    sub_1D726443C();
    sub_1D6057684(v15, v16, v17, v18);
    v15 = *(v3 + 48);
    v19 = 2;
    sub_1D5B5CFF8(0, &qword_1EC88FAF8, &type metadata for FormatDerivedDataOptionReference, MEMORY[0x1E69E62F8]);
    sub_1D69E1E9C(&qword_1EC88FB40, sub_1D60E2A00);
    sub_1D726443C();
    type metadata accessor for FormatDerivedDataOption();
    LOBYTE(v15) = 3;
    type metadata accessor for FormatVersionRequirement(0);
    sub_1D69E1F2C(&qword_1EC8825B8);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D69E0158@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1D60077D8();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C300C8(0, &qword_1EC88FB10, sub_1D69E1D38, &type metadata for FormatDerivedDataOption.CodingKeys, MEMORY[0x1E69E6F48]);
  v28 = v6;
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for FormatDerivedDataOption();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69E1D38();
  v14 = v29;
  sub_1D7264B0C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v10;
  v15 = v26;
  v16 = v27;
  LOBYTE(v30) = 0;
  v17 = v28;
  v18 = sub_1D72642BC();
  v20 = v19;
  *v13 = v18;
  *(v13 + 1) = v19;
  v33 = 1;
  sub_1D69E1D8C();
  sub_1D726431C();
  v24 = v20;
  v21 = v31;
  v22 = v32;
  *(v13 + 1) = v30;
  *(v13 + 4) = v21;
  v13[40] = v22;
  sub_1D5B5CFF8(0, &qword_1EC88FAF8, &type metadata for FormatDerivedDataOptionReference, MEMORY[0x1E69E62F8]);
  v33 = 2;
  sub_1D69E1E9C(&qword_1EC88FB28, sub_1D60E26A0);
  sub_1D726431C();
  *(v13 + 6) = v30;
  type metadata accessor for FormatVersionRequirement(0);
  LOBYTE(v30) = 3;
  sub_1D69E1F2C(qword_1EDF25B50);
  sub_1D726427C();
  (*(v15 + 8))(v9, v17);
  sub_1D5CEAAD0(v16, *(v29 + 28), sub_1D60077D8);
  sub_1D69E1DE0(0, v25, type metadata accessor for FormatDerivedDataOption);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D69E1CD8(0, type metadata accessor for FormatDerivedDataOption);
}

unint64_t sub_1D69E05F8()
{
  v1 = 0x696669746E656469;
  v2 = 0x636E657265666572;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1D69E0674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D69E21A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D69E069C(uint64_t a1)
{
  v2 = sub_1D69E1D38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69E06D8(uint64_t a1)
{
  v2 = sub_1D69E1D38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatDerivedDataOptionType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1D5C300C8(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v19;
    sub_1D69E0A0C();
    v18[0] = 0uLL;
    sub_1D726431C();
    v11 = v5;
    if (v17)
    {
      v12 = v10;
      if (v17 == 1)
      {
        (*(v6 + 8))(v9, v11);
        v13 = 0;
        v14 = 0uLL;
        v15 = 2;
      }

      else
      {
        v17 = xmmword_1D7279980;
        sub_1D69E0A60();
        sub_1D726431C();
        (*(v6 + 8))(v9, v11);
        v13 = *&v18[0];
        v14 = *(v18 + 8);
        v15 = 1;
      }
    }

    else
    {
      v18[0] = xmmword_1D7279980;
      sub_1D5C6115C();
      sub_1D726431C();
      v12 = v10;
      (*(v6 + 8))(v9, v11);
      v15 = 0;
      v13 = v17;
      v14 = 0uLL;
    }

    *v12 = v13;
    *(v12 + 8) = v14;
    *(v12 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D69E0A0C()
{
  result = qword_1EC88FAC8;
  if (!qword_1EC88FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FAC8);
  }

  return result;
}

unint64_t sub_1D69E0A60()
{
  result = qword_1EC88FAD0;
  if (!qword_1EC88FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FAD0);
  }

  return result;
}

uint64_t FormatDerivedDataOptionType.encode(to:)(void *a1)
{
  sub_1D5C300C8(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v16 = v1[1];
  v17 = v9;
  v15 = v1[2];
  v10 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  if (v10)
  {
    if (v10 != 1)
    {
      LOBYTE(v18) = 1;
      sub_1D69E0D40();
      v19 = 0uLL;
      goto LABEL_8;
    }

    LOBYTE(v18) = 2;
    sub_1D69E0D40();
    v19 = 0uLL;
    v11 = v21;
    sub_1D726443C();
    if (!v11)
    {
      *&v19 = v17;
      *(&v19 + 1) = v16;
      v20 = v15;
      v18 = xmmword_1D7279980;
      sub_1D69E0D94();
LABEL_8:
      sub_1D726443C();
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    sub_1D69E0D40();
    v19 = 0uLL;
    v12 = v21;
    sub_1D726443C();
    if (!v12)
    {
      LOBYTE(v18) = v17;
      v19 = xmmword_1D7279980;
      sub_1D6662C30();
      goto LABEL_8;
    }
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D69E0D40()
{
  result = qword_1EC88FAD8;
  if (!qword_1EC88FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FAD8);
  }

  return result;
}

unint64_t sub_1D69E0D94()
{
  result = qword_1EC88FAE0;
  if (!qword_1EC88FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FAE0);
  }

  return result;
}

uint64_t sub_1D69E0DE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7958113;
  if (v2 != 1)
  {
    v4 = 0x6E656D6574617473;
    v3 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701869940;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7958113;
  if (*a2 != 1)
  {
    v8 = 0x6E656D6574617473;
    v7 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701869940;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D69E0EDC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69E0F74()
{
  sub_1D72621EC();
}

uint64_t sub_1D69E0FF8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69E108C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D69E1F70();
  *a1 = result;
  return result;
}

void sub_1D69E10BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7958113;
  if (v2 != 1)
  {
    v5 = 0x6E656D6574617473;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701869940;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatDerivedDataOptionType.description.getter()
{
  if (v0[24])
  {
    if (v0[24] == 1)
    {
      return 0x6E656D6574617473;
    }

    else
    {
      return 7958113;
    }
  }

  else
  {
    v2 = *v0;
    if (v2 > 5)
    {
      v7 = 0x6F65646976;
      v8 = 1953394534;
      if (v2 != 10)
      {
        v8 = 0x616C506F65646976;
      }

      if (v2 != 9)
      {
        v7 = v8;
      }

      v9 = 7107189;
      v10 = 0x726F6C6F63;
      if (v2 != 7)
      {
        v10 = 0x6567616D69;
      }

      if (v2 != 6)
      {
        v9 = v10;
      }

      if (*v0 <= 8u)
      {
        return v9;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v3 = 0x6E61656C6F6F62;
      v4 = 0x74616F6C66;
      v5 = 0x72656765746E69;
      if (v2 != 4)
      {
        v5 = 0x676E69727473;
      }

      if (v2 != 3)
      {
        v4 = v5;
      }

      v6 = 1702125924;
      if (v2 != 1)
      {
        v6 = 1836412517;
      }

      if (*v0)
      {
        v3 = v6;
      }

      if (*v0 <= 2u)
      {
        return v3;
      }

      else
      {
        return v4;
      }
    }
  }
}

uint64_t _s8NewsFeed27FormatDerivedDataOptionTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v5 == 1)
    {
      if (v9 == 1)
      {
        v10 = v3 == v7 && v2 == v6;
        if (v10 || (sub_1D72646CC() & 1) != 0)
        {
          v11 = sub_1D633D588(v4, v8);
          v12 = 1;
          sub_1D69E1C8C(v7, v6, v8, 1);
          sub_1D69E1C8C(v3, v2, v4, 1);
          sub_1D6057684(v3, v2, v4, 1);
          sub_1D6057684(v7, v6, v8, 1);
          if (v11)
          {
            return v12 & 1;
          }

          goto LABEL_24;
        }

        sub_1D69E1C8C(v7, v6, v8, 1);
        sub_1D69E1C8C(v3, v2, v4, 1);
        sub_1D6057684(v3, v2, v4, 1);
        v18 = v7;
        v19 = v6;
        v20 = v8;
        v21 = 1;
LABEL_23:
        sub_1D6057684(v18, v19, v20, v21);
LABEL_24:
        v12 = 0;
        return v12 & 1;
      }

LABEL_22:
      sub_1D69E1C8C(v7, v6, v8, v9);
      sub_1D6057684(v3, v2, v4, v5);
      v18 = v7;
      v19 = v6;
      v20 = v8;
      v21 = v9;
      goto LABEL_23;
    }

    if (v9 != 2 || (v6 | v7 | v8) != 0)
    {
      goto LABEL_22;
    }

    sub_1D6057684(*a1, v2, v4, 2);
    sub_1D6057684(0, 0, 0, 2);
    v12 = 1;
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_22;
    }

    v13 = FormatOptionType.rawValue.getter();
    v15 = v14;
    if (v13 == FormatOptionType.rawValue.getter() && v15 == v16)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1D72646CC();
    }

    sub_1D6057684(v3, v2, v4, 0);
    sub_1D6057684(v7, v6, v8, 0);
  }

  return v12 & 1;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed27FormatDerivedDataOptionTypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1D69E1628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D69E1670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D69E16B8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t type metadata accessor for FormatDerivedDataOption()
{
  result = qword_1EC88FAE8;
  if (!qword_1EC88FAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D69E1758()
{
  sub_1D5B5CFF8(319, &qword_1EC88FAF8, &type metadata for FormatDerivedDataOptionReference, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D60077D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D69E182C()
{
  result = qword_1EC88FB00;
  if (!qword_1EC88FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB00);
  }

  return result;
}

unint64_t sub_1D69E1880()
{
  result = qword_1EC88FB08;
  if (!qword_1EC88FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB08);
  }

  return result;
}

BOOL sub_1D69E18D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60077D8();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA4248();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v32 = v8;
  v33 = v5;
  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v38 = *(a1 + 16);
  v39 = v18;
  v40 = v19;
  v41 = v20;
  v22 = *(a2 + 24);
  v23 = *(a2 + 32);
  v24 = *(a2 + 40);
  v34 = *(a2 + 16);
  v21 = v34;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  sub_1D69E1C8C(v38, v18, v19, v20);
  sub_1D69E1C8C(v21, v22, v23, v24);
  v25 = _s8NewsFeed27FormatDerivedDataOptionTypeO2eeoiySbAC_ACtFZ_0(&v38, &v34);
  sub_1D6057684(v34, v35, v36, v37);
  sub_1D6057684(v38, v39, v40, v41);
  if ((v25 & 1) == 0 || (sub_1D633F214(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  v26 = *(type metadata accessor for FormatDerivedDataOption() + 28);
  v27 = *(v14 + 48);
  sub_1D69E1DE0(a1 + v26, v17, sub_1D60077D8);
  sub_1D69E1DE0(a2 + v26, &v17[v27], sub_1D60077D8);
  v28 = *(v33 + 48);
  if (v28(v17, 1, v4) == 1)
  {
    if (v28(&v17[v27], 1, v4) == 1)
    {
      sub_1D69E1CD8(v17, sub_1D60077D8);
      return 1;
    }

    goto LABEL_11;
  }

  sub_1D69E1DE0(v17, v12, sub_1D60077D8);
  if (v28(&v17[v27], 1, v4) == 1)
  {
    sub_1D69E1CD8(v12, type metadata accessor for FormatVersionRequirement);
LABEL_11:
    sub_1D69E1CD8(v17, sub_1D5EA4248);
    return 0;
  }

  v30 = v32;
  sub_1D5CEAAD0(&v17[v27], v32, type metadata accessor for FormatVersionRequirement);
  v31 = sub_1D6024840(v12, v30);
  sub_1D69E1CD8(v30, type metadata accessor for FormatVersionRequirement);
  sub_1D69E1CD8(v12, type metadata accessor for FormatVersionRequirement);
  sub_1D69E1CD8(v17, sub_1D60077D8);
  return (v31 & 1) != 0;
}

uint64_t sub_1D69E1C8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

uint64_t sub_1D69E1CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D69E1D38()
{
  result = qword_1EC88FB18;
  if (!qword_1EC88FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB18);
  }

  return result;
}

unint64_t sub_1D69E1D8C()
{
  result = qword_1EC88FB20;
  if (!qword_1EC88FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB20);
  }

  return result;
}

uint64_t sub_1D69E1DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D69E1E48()
{
  result = qword_1EC88FB38;
  if (!qword_1EC88FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB38);
  }

  return result;
}

uint64_t sub_1D69E1E9C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5CFF8(255, &qword_1EC88FAF8, &type metadata for FormatDerivedDataOptionReference, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D69E1F2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatVersionRequirement(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D69E1F70()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D69E1FBC(uint64_t a1)
{
  sub_1D5B5CFF8(0, &qword_1EC88FB48, &type metadata for AnyFormatSelectorValue, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D69E20A4()
{
  result = qword_1EC88FB50;
  if (!qword_1EC88FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB50);
  }

  return result;
}

unint64_t sub_1D69E20FC()
{
  result = qword_1EC88FB58;
  if (!qword_1EC88FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB58);
  }

  return result;
}

unint64_t sub_1D69E2154()
{
  result = qword_1EC88FB60;
  if (!qword_1EC88FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB60);
  }

  return result;
}

uint64_t sub_1D69E21A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73D2730 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t FormatArticle.overrides.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D69E3C08(0, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
  swift_beginAccess();
  sub_1D69E23FC(v1 + v7, v6);
  return sub_1D69E2498(v6, a1);
}

uint64_t sub_1D69E23FC(uint64_t a1, uint64_t a2)
{
  sub_1D69E3C08(0, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D69E2498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatArticleOverrides();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatArticle.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D69E2544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D69E3C08(0, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = *a1;
  v9 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
  swift_beginAccess();
  sub_1D69E23FC(v8 + v9, v7);
  return sub_1D69E2498(v7, a2);
}

uint64_t sub_1D69E2628(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for FormatArticleOverrides();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CE5788(a1, v7);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
  swift_beginAccess();
  sub_1D69E2740(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t FormatArticle.overrides.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
  swift_beginAccess();
  sub_1D69E2740(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D69E2740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatArticleOverrides();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FormatArticle.__allocating_init(identifier:overrides:selectors:properties:alternate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
  swift_beginAccess();
  sub_1D69E2498(a3, v12 + v13);
  v14 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__selectors;
  swift_beginAccess();
  *(v12 + v14) = a4;
  v15 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties;
  swift_beginAccess();
  *(v12 + v15) = a5;
  *(v12 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate) = a6;
  return v12;
}

uint64_t FormatArticle.init(identifier:overrides:selectors:properties:alternate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v11 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
  swift_beginAccess();
  sub_1D69E2498(a3, v6 + v11);
  v12 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__selectors;
  swift_beginAccess();
  *(v6 + v12) = a4;
  v13 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties;
  swift_beginAccess();
  *(v6 + v13) = a5;
  *(v6 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate) = a6;
  return v6;
}

uint64_t FormatArticle.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatArticle.init(from:)(a1);
  return v2;
}

uint64_t *FormatArticle.init(from:)(void *a1)
{
  v40 = a1;
  v2 = v1;
  v38 = *v2;
  sub_1D69E3198();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FormatArticleOverrides();
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69E3C08(0, &qword_1EDF3C678, sub_1D5E19304, &type metadata for FormatArticle.CodingKeys, MEMORY[0x1E69E6F48]);
  v12 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v33 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19304();
  v16 = v39;
  sub_1D7264B0C();
  if (v16)
  {
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    v44 = 0;
    v17 = sub_1D72642BC();
    v18 = v12;
    v39 = v7;
    v2[2] = v17;
    v2[3] = v19;
    v44 = 1;
    sub_1D69E3BC0(&qword_1EDF3FCB8, type metadata accessor for FormatArticleOverrides);
    v21 = v35;
    v20 = v36;
    sub_1D726427C();
    v34 = v18;
    v22 = *(v39 + 48);
    if (v22(v20, 1, v21) == 1)
    {
      if (qword_1EDF28AC8 != -1)
      {
        swift_once();
      }

      v23 = v35;
      v24 = __swift_project_value_buffer(v35, qword_1EDF28AD0);
      sub_1D5CE5788(v24, v10);
      v25 = v36;
      if (v22(v36, 1, v23) != 1)
      {
        sub_1D69E3B64(v25);
      }
    }

    else
    {
      sub_1D69E2498(v20, v10);
    }

    v26 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
    swift_beginAccess();
    sub_1D69E2498(v10, v2 + v26);
    sub_1D5B81B04();
    LOBYTE(v42) = 2;
    sub_1D5C4EA9C();
    v27 = v34;
    sub_1D726427C();
    if (v43)
    {
      v28 = v43;
    }

    else
    {
      v28 = MEMORY[0x1E69E7CD0];
    }

    v29 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__selectors;
    swift_beginAccess();
    *(v2 + v29) = v28;
    sub_1D5E4C584();
    LOBYTE(v45) = 3;
    sub_1D69E3D00(&qword_1EDF3C910, sub_1D5B59CD8);
    sub_1D726427C();
    if (v42)
    {
      v30 = v42;
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    v31 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties;
    swift_beginAccess();
    *(v2 + v31) = v30;
    v41 = 4;
    sub_1D69E3BC0(&qword_1EDF417D0, type metadata accessor for FormatArticle);
    sub_1D726427C();
    (*(v37 + 8))(v15, v27);
    *(v2 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate) = v45;
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return v2;
}

void sub_1D69E3198()
{
  if (!qword_1EDF3FCB0)
  {
    type metadata accessor for FormatArticleOverrides();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3FCB0);
    }
  }
}

uint64_t sub_1D69E31F0(uint64_t a1)
{
  sub_1D69E3C08(0, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D69E3284()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x726F7463656C6573;
  v4 = 0x69747265706F7270;
  if (v1 != 3)
  {
    v4 = 0x74616E7265746C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656469727265766FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D69E332C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D69E3F8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D69E3354(uint64_t a1)
{
  v2 = sub_1D5E19304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69E3390(uint64_t a1)
{
  v2 = sub_1D5E19304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatArticle.deinit()
{

  sub_1D69E31F0(v0 + OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides);

  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
  *(v0 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t FormatArticle.__deallocating_deinit()
{
  FormatArticle.deinit();

  return swift_deallocClassInstance();
}

uint64_t FormatArticle.encode(to:)(void *a1)
{
  v3 = v1;
  v24 = *v3;
  v25 = v2;
  sub_1D69E3C08(0, &qword_1EDF402C0, sub_1D5E9E7F8, &type metadata for FormatCodingArticleOverridesStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v24 - v7);
  sub_1D69E3C08(0, &qword_1EDF02800, sub_1D5E19304, &type metadata for FormatArticle.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v24 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E19304();
  sub_1D7264B5C();
  v28 = 0;
  v15 = v25;
  sub_1D72643FC();
  if (v15)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v17 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__overrides;
  swift_beginAccess();
  sub_1D69E23FC(v3 + v17, v8);
  if (qword_1EDF28AC8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FormatArticleOverrides();
  v19 = __swift_project_value_buffer(v18, qword_1EDF28AD0);
  if (!_s8NewsFeed22FormatArticleOverridesV2eeoiySbAC_ACtFZ_0(v8, v19))
  {
    v27 = 1;
    sub_1D69E3C70();
    sub_1D69E3BC0(&unk_1EDF0DB90, type metadata accessor for FormatArticleOverrides);
    sub_1D72647EC();
  }

  sub_1D69E31F0(v8);
  v20 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__selectors;
  swift_beginAccess();
  if (*(*(v3 + v20) + 16))
  {

    sub_1D5E08EF0(v21, v14, 2);
  }

  v22 = OBJC_IVAR____TtC8NewsFeed13FormatArticle__properties;
  swift_beginAccess();
  v23 = *(v3 + v22);
  if (*(v23 + 16))
  {
    v29 = 3;
    v26 = v23;
    sub_1D69E3C70();
    sub_1D5E4C584();
    sub_1D69E3D00(&qword_1EDF05030, sub_1D5B59D2C);

    sub_1D72647EC();
  }

  v26 = *(v3 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
  v29 = 4;
  sub_1D69E3BC0(&qword_1EDF11EA0, type metadata accessor for FormatArticle);
  sub_1D72643BC();
  return (*(v11 + 8))(v14, v10);
}

uint64_t *sub_1D69E39DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatArticle.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t FormatArticle.debugDescription.getter()
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

unint64_t sub_1D69E3AE4()
{
  v1 = *v0;
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t sub_1D69E3B64(uint64_t a1)
{
  sub_1D69E3198();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D69E3BC0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D69E3C08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D69E3C70()
{
  result = qword_1EDF02808;
  if (!qword_1EDF02808)
  {
    sub_1D69E3C08(255, &qword_1EDF02800, sub_1D5E19304, &type metadata for FormatArticle.CodingKeys, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02808);
  }

  return result;
}

uint64_t sub_1D69E3D00(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5E4C584();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D69E3D6C(void *a1)
{
  a1[1] = sub_1D69E3BC0(&qword_1EDF417D0, type metadata accessor for FormatArticle);
  a1[2] = sub_1D69E3BC0(&qword_1EDF11EA0, type metadata accessor for FormatArticle);
  result = sub_1D69E3BC0(&qword_1EC88FB68, type metadata accessor for FormatArticle);
  a1[3] = result;
  return result;
}

unint64_t sub_1D69E3E88()
{
  result = qword_1EC88FB70;
  if (!qword_1EC88FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB70);
  }

  return result;
}

unint64_t sub_1D69E3EE0()
{
  result = qword_1EDF417D8;
  if (!qword_1EDF417D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417D8);
  }

  return result;
}

unint64_t sub_1D69E3F38()
{
  result = qword_1EDF417E0;
  if (!qword_1EDF417E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF417E0);
  }

  return result;
}

uint64_t sub_1D69E3F8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74616E7265746C61 && a2 == 0xE900000000000065)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t FormatGroupPriority.rawValue.getter()
{
  v1 = 1701736302;
  v2 = 1751607656;
  if (*v0 != 2)
  {
    v2 = 0x756F72636964756CLL;
  }

  if (*v0)
  {
    v1 = 7827308;
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

NewsFeed::FormatGroupPriority_optional __swiftcall FormatGroupPriority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D69E4214()
{
  result = qword_1EC88FB78;
  if (!qword_1EC88FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB78);
  }

  return result;
}

uint64_t sub_1D69E4268()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69E4318()
{
  sub_1D72621EC();
}

uint64_t sub_1D69E43B4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D69E446C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE400000000000000;
  v5 = 1751607656;
  if (*v1 != 2)
  {
    v5 = 0x756F72636964756CLL;
    v4 = 0xE900000000000073;
  }

  if (*v1)
  {
    v3 = 7827308;
    v2 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D69E44D8(uint64_t a1)
{
  *(a1 + 8) = sub_1D69E4508();
  result = sub_1D69E455C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D69E4508()
{
  result = qword_1EC88FB80;
  if (!qword_1EC88FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB80);
  }

  return result;
}

unint64_t sub_1D69E455C()
{
  result = qword_1EDF2C708[0];
  if (!qword_1EDF2C708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2C708);
  }

  return result;
}

unint64_t sub_1D69E45BC(uint64_t a1)
{
  result = sub_1D69E45E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69E45E4()
{
  result = qword_1EC88FB88;
  if (!qword_1EC88FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FB88);
  }

  return result;
}

unint64_t sub_1D69E4638(void *a1)
{
  a1[1] = sub_1D61DED78();
  a1[2] = sub_1D61DEDCC();
  result = sub_1D69E4214();
  a1[3] = result;
  return result;
}

uint64_t sub_1D69E46F8(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v23 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *(v23 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_1D7263BFC();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = sub_1D7263BFC();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D7263BFC();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D7263DDC();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v26 = v2;
    v14 = v10 + 8 * v11 + 32;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_1D69E5714();
      sub_1D69E578C(&qword_1EC88FB90, sub_1D69E5714);
      for (i = 0; i != v13; ++i)
      {
        v16 = sub_1D6D876E0(v25, i, v4);
        v18 = *v17;

        (v16)(v25, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for GroupLayoutKey();
      swift_arrayInitWithCopy();
    }

    v2 = v26;
    if (v6 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v6);
      v21 = v19 + v6;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_1D7263BFC();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t BlueprintLayout.feedLayoutKeys.getter()
{
  swift_getKeyPath();
  type metadata accessor for GroupLayoutKey();
  swift_getWitnessTable();
  v0 = sub_1D726242C();

  return v0;
}

uint64_t sub_1D69E4A68(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1, *(a1 + 24));
  v29 = v3;
  v4 = sub_1D725DDFC();
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24 - v6;
  swift_getWitnessTable();
  v8 = sub_1D7263FAC();
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v28 = v1;
  sub_1D725E24C();
  sub_1D5B49474(0, &qword_1EDF3B468);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(&v30, v33);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v14 = sub_1D725F56C();
    if (v14)
    {
      v15 = sub_1D69E57E8(v14);

      if (v15)
      {
        __swift_destroy_boxed_opaque_existential_1(v33);
        return v15;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_1D5BFB774(&v30, &unk_1EDF16E58, &qword_1EDF3B468);
  }

  (*(*(a1 - 8) + 16))(v11, v28, a1);
  v17 = *(v25 + 36);
  sub_1D7262BFC();
  sub_1D7262C5C();
  if (*&v11[v17] != v33[0])
  {
    v18 = (v27 + 2);
    ++v27;
    v28 = v18;
    v26 = v11;
    do
    {
      v19 = sub_1D7262D0C();
      (*v28)(v7);
      v19(v33, 0);
      sub_1D7262C6C();
      sub_1D725DDEC();
      (*v27)(v7, v4);
      sub_1D5B49474(0, &qword_1EDF13188);
      if (swift_dynamicCast())
      {
        sub_1D5B63F14(&v30, v33);
        v20 = v34;
        v21 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v22 = (*(v21 + 8))(v20, v21);
        if (v22)
        {
          v23 = v22;
          (*(v24 + 8))(v26, v25);
          __swift_destroy_boxed_opaque_existential_1(v33);
          return v23;
        }

        __swift_destroy_boxed_opaque_existential_1(v33);
        v11 = v26;
      }

      else
      {
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        sub_1D5BFB774(&v30, &qword_1EDF13180, &qword_1EDF13188);
      }

      sub_1D7262C5C();
    }

    while (*&v11[v17] != v33[0]);
  }

  (*(v24 + 8))(v11, v25);
  return 0;
}

uint64_t sub_1D69E4F64@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D725E28C();
  result = sub_1D69E4A68(v2);
  *a1 = result;
  return result;
}

uint64_t BlueprintLayout.allFeedLayoutKeys.getter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_1D69E5714();
  v4 = v3;
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1D5B874E4(sub_1D6151A54, KeyPath, a1, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  sub_1D69E46F8(v7);

  type metadata accessor for GroupLayoutKey();
  sub_1D69E578C(&qword_1EDF05020, sub_1D69E5714);
  sub_1D69E578C(&qword_1EDF11A70, type metadata accessor for GroupLayoutKey);
  v8 = sub_1D72623CC();

  return v8;
}

uint64_t sub_1D69E5144(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1, *(a1 + 24));
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v4;
  v31 = sub_1D725DDFC();
  v5 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v6);
  v8 = &v28 - v7;
  swift_getWitnessTable();
  v9 = sub_1D7263FAC();
  v28 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v40 = MEMORY[0x1E69E7CC0];
  sub_1D725E24C();
  sub_1D5B49474(0, &qword_1EDF3B468);
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(&v34, v37);
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v15 = sub_1D725F56C();
    if (v15 && (v16 = sub_1D69E57E8(v15), , v16))
    {

      MEMORY[0x1DA6F9CE0](v17);
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();

      v18 = v40;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v30 = v18;
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_1D5BFB774(&v34, &unk_1EDF16E58, &qword_1EDF3B468);
    v30 = MEMORY[0x1E69E7CC0];
  }

  (*(*(a1 - 8) + 16))(v12, v1, a1);
  v29 = v9;
  v19 = *(v9 + 36);
  sub_1D7262BFC();
  sub_1D7262C5C();
  if (*&v12[v19] != v37[0])
  {
    v21 = (v5 + 16);
    v22 = (v5 + 8);
    do
    {
      v23 = sub_1D7262D0C();
      v24 = v31;
      (*v21)(v8);
      v23(v37, 0);
      sub_1D7262C6C();
      sub_1D725DDEC();
      (*v22)(v8, v24);
      sub_1D5B49474(0, &qword_1EDF13188);
      if (swift_dynamicCast())
      {
        sub_1D5B63F14(&v34, v37);
        v25 = v38;
        v26 = v39;
        __swift_project_boxed_opaque_existential_1(v37, v38);
        if ((*(v26 + 8))(v25, v26))
        {

          MEMORY[0x1DA6F9CE0](v27);
          if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();

          v30 = v40;
        }

        __swift_destroy_boxed_opaque_existential_1(v37);
      }

      else
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
        sub_1D5BFB774(&v34, &qword_1EDF13180, &qword_1EDF13188);
      }

      sub_1D7262C5C();
    }

    while (*&v12[v19] != v37[0]);
  }

  (*(v28 + 8))(v12, v29);
  return v30;
}

uint64_t sub_1D69E56C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D725E28C();
  result = sub_1D69E5144(v2);
  *a1 = result;
  return result;
}

void sub_1D69E5714()
{
  if (!qword_1EDF05028)
  {
    type metadata accessor for GroupLayoutKey();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05028);
    }
  }
}

uint64_t sub_1D69E578C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D69E57E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_1D5B68374(v2, v9);
      sub_1D5B49474(0, &qword_1EDF3B480);
      sub_1D5B49474(0, &qword_1EDF13188);
      if (swift_dynamicCast())
      {
        sub_1D5B63F14(v7, v10);
        v3 = v11;
        v4 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        v5 = (*(v4 + 8))(v3, v4);
        __swift_destroy_boxed_opaque_existential_1(v10);
        if (v5)
        {
          return v5;
        }
      }

      else
      {
        v8 = 0;
        memset(v7, 0, sizeof(v7));
        sub_1D5BFB774(v7, &qword_1EDF13180, &qword_1EDF13188);
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t FeedPuzzleRankState.rawState.getter@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  v3 = *MEMORY[0x1E69D7858];
  v4 = sub_1D725D38C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_1D69E59C8@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  v3 = *MEMORY[0x1E69D7858];
  v4 = sub_1D725D38C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

char *sub_1D69E5A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC8NewsFeed34DebugFormatUploadDiffTableViewCell_label;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  if (a3)
  {
    v8 = sub_1D726203C();
  }

  else
  {
    v8 = 0;
  }

  v34.receiver = v3;
  v34.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v34, sel_initWithStyle_reuseIdentifier_, a1, v8);

  v10 = OBJC_IVAR____TtC8NewsFeed34DebugFormatUploadDiffTableViewCell_label;
  v11 = *&v9[OBJC_IVAR____TtC8NewsFeed34DebugFormatUploadDiffTableViewCell_label];
  v12 = v9;
  [v11 setNumberOfLines_];
  [*&v9[v10] setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v12 contentView];
  [v13 addSubview_];

  v14 = objc_opt_self();
  sub_1D5E42B34();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7298B00;
  v16 = [*&v9[v10] topAnchor];
  v17 = [v12 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v15 + 32) = v19;
  v20 = [*&v9[v10] leadingAnchor];
  v21 = [v12 contentView];
  v22 = [v21 leadingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v15 + 40) = v23;
  v24 = [*&v9[v10] trailingAnchor];
  v25 = [v12 contentView];
  v26 = [v25 trailingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v15 + 48) = v27;
  v28 = [*&v9[v10] bottomAnchor];
  v29 = [v12 contentView];

  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor_];

  *(v15 + 56) = v31;
  sub_1D60D0DF4();
  v32 = sub_1D726265C();

  [v14 activateConstraints_];

  return v12;
}

NewsFeed::FormatFlexBoxNodeAlignItems_optional __swiftcall FormatFlexBoxNodeAlignItems.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatFlexBoxNodeAlignItems.rawValue.getter()
{
  v1 = 0x7261745378656C66;
  v2 = 0x68637465727473;
  if (*v0 != 2)
  {
    v2 = 0x7265746E6563;
  }

  if (*v0)
  {
    v1 = 0x646E4578656C66;
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

unint64_t sub_1D69E5FF4()
{
  result = qword_1EDF22700;
  if (!qword_1EDF22700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22700);
  }

  return result;
}

uint64_t sub_1D69E6048()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69E610C()
{
  sub_1D72621EC();
}

uint64_t sub_1D69E61BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D69E6288(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000074;
  v3 = 0x7261745378656C66;
  v4 = 0xE700000000000000;
  v5 = 0x68637465727473;
  if (*v1 != 2)
  {
    v5 = 0x7265746E6563;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x646E4578656C66;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D69E6308(uint64_t a1)
{
  result = sub_1D6665E8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69E6334()
{
  result = qword_1EC88FBA0;
  if (!qword_1EC88FBA0)
  {
    sub_1D69E638C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FBA0);
  }

  return result;
}

void sub_1D69E638C()
{
  if (!qword_1EC88FBA8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88FBA8);
    }
  }
}

unint64_t sub_1D69E63EC(void *a1)
{
  a1[1] = sub_1D69E6424();
  a1[2] = sub_1D69E6478();
  result = sub_1D69E5FF4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69E6424()
{
  result = qword_1EDF226F0;
  if (!qword_1EDF226F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF226F0);
  }

  return result;
}

unint64_t sub_1D69E6478()
{
  result = qword_1EDF22708;
  if (!qword_1EDF22708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22708);
  }

  return result;
}

unint64_t sub_1D69E658C()
{
  result = qword_1EDF226F8;
  if (!qword_1EDF226F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF226F8);
  }

  return result;
}

uint64_t FormatWebEmbedBinding.SourceItemTip.tipSource(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for WebEmbedDataVisualization();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - v14;
  v16 = *(type metadata accessor for FeedWebEmbed() + 52);
  sub_1D6863EF8(a1 + v16, v15, sub_1D5B4D72C);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    v17 = sub_1D5B4D72C;
    v18 = v15;
LABEL_5:
    sub_1D6863F60(v18, v17);
LABEL_6:
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    v20 = v19;
    sub_1D6863EF8(a1 + v16, v11, sub_1D5B4D72C);
    v21 = sub_1D72620FC();
    *v20 = 0x65726F6373;
    v20[1] = 0xE500000000000000;
    v20[2] = v21;
    v20[3] = v22;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  sub_1D6863EF8(v15, v7, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6863F60(v7, type metadata accessor for WebEmbedDataVisualization);
    v18 = v15;
    v17 = type metadata accessor for WebEmbedDataVisualization;
    goto LABEL_5;
  }

  v24 = *v7;
  sub_1D6863F60(v15, type metadata accessor for WebEmbedDataVisualization);
  if (v24 >> 61)
  {

    goto LABEL_6;
  }

  if (qword_1EDF16940 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725FC7C();
  v26 = __swift_project_value_buffer(v25, qword_1EDF16948);
  return (*(*(v25 - 8) + 16))(v28, v26, v25);
}

uint64_t FormatWebEmbedBinding.SourceItemTip.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D69E69CC()
{
  result = qword_1EC88FBB0;
  if (!qword_1EC88FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FBB0);
  }

  return result;
}

unint64_t sub_1D69E6A20(uint64_t a1)
{
  result = sub_1D69E6A48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69E6A48()
{
  result = qword_1EC88FBB8;
  if (!qword_1EC88FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FBB8);
  }

  return result;
}

unint64_t sub_1D69E6A9C(void *a1)
{
  a1[1] = sub_1D668F820();
  a1[2] = sub_1D66F823C();
  result = sub_1D69E69CC();
  a1[3] = result;
  return result;
}

uint64_t sub_1D69E6B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v7 = sub_1D725BC7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v19 - v14;
  v16 = v3[1];
  v20 = *v3;

  sub_1D71C3968(a1, a2);

  if (!v4)
  {
    v20 = v16;

    sub_1D71C3968(a1, a2);

    sub_1D725BC4C();
    v18 = *(v8 + 8);
    v18(v11, v7);
    return (v18)(v15, v7);
  }

  return result;
}

uint64_t sub_1D69E6CD0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2())
  {
    return 1;
  }

  else
  {
    return a4(a1) & 1;
  }
}

uint64_t sub_1D69E6D2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3())
  {
    return 1;
  }

  else
  {
    return a5(a1, a2) & 1;
  }
}

uint64_t sub_1D69E6D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a3())
  {
    return 1;
  }

  else
  {
    return a5(a1) & 1;
  }
}

uint64_t sub_1D69E6DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3())
  {
    return 1;
  }

  else
  {
    return a5(a1, a2) & 1;
  }
}

unint64_t sub_1D69E6E7C(uint64_t a1)
{
  result = sub_1D69E6EA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69E6EA4()
{
  result = qword_1EC88FBC0;
  if (!qword_1EC88FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FBC0);
  }

  return result;
}

unint64_t sub_1D69E6EF8(void *a1)
{
  a1[1] = sub_1D5C5C660();
  a1[2] = sub_1D66FEBC0();
  result = sub_1D69E6F30();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69E6F30()
{
  result = qword_1EC88FBC8;
  if (!qword_1EC88FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FBC8);
  }

  return result;
}

BOOL _s8NewsFeed30FormatColorComponentExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (sub_1D6DD3A24(*a1, *a2))
  {
    v4 = FormatOperator.rawValue.getter();
    v6 = v5;
    if (v4 == FormatOperator.rawValue.getter() && v6 == v7)
    {

      return v2 == v3;
    }

    v8 = sub_1D72646CC();

    if (v8)
    {
      return v2 == v3;
    }
  }

  return 0;
}

unint64_t sub_1D69E70CC(uint64_t a1)
{
  result = sub_1D69E70F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D69E70F4()
{
  result = qword_1EC88FBD0;
  if (!qword_1EC88FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FBD0);
  }

  return result;
}

unint64_t sub_1D69E7148(void *a1)
{
  a1[1] = sub_1D667F7E4();
  a1[2] = sub_1D670002C();
  result = sub_1D69E7180();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69E7180()
{
  result = qword_1EC88FBD8[0];
  if (!qword_1EC88FBD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC88FBD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatColorAssignComponentProcessor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && a1[16])
  {
    return (*a1 + 250);
  }

  v3 = *a1;
  v4 = v3 >= 7;
  v5 = v3 - 7;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FormatColorAssignComponentProcessor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

unint64_t sub_1D69E7268@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t static FormatCodingStrategy<>.encode(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

unint64_t sub_1D69E72F8@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return sub_1D5EB1500(v2);
}

uint64_t KeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  WitnessTable = swift_getWitnessTable();
  v13 = *(a5 + 8);
  result = (*(v13 + 72))(a1, a4, v13);
  if (result)
  {
    return static FormatCodingStrategy.encode<A>(_:into:forKey:)(a1, v6, a2, a4, a3, v13, WitnessTable);
  }

  return result;
}

{
  WitnessTable = swift_getWitnessTable();
  return static FormatCodingStrategy.encode<A>(_:into:forKey:)(a1, v5, a2, a4, a3, a5, WitnessTable);
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v13 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = &v12 - v9;
  result = static FormatCodingDefaultStrategy.decodeOrDefault<A>(from:forKey:)(a1, a2, &v12 - v9);
  if (!v3)
  {
    return (*(v7 + 32))(v13, v10, AssociatedTypeWitness);
  }

  return result;
}

{
  v13 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = &v12 - v9;
  result = static FormatCodingStrategy.decode<A>(from:forKey:)(a1, a2, &v12 - v9);
  if (!v3)
  {
    return (*(v7 + 32))(v13, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1D69E77B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 50);
  v9 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 50) = v8;
  *(a2 + 48) = v9;
  return sub_1D5CA8444(v3, v2, v4, v5, v6, v7, v9 | (v8 << 16));
}

uint64_t sub_1D69E77E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 50);
  v9 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 50) = v8;
  *(a2 + 48) = v9;
  return sub_1D5CA8444(v3, v2, v4, v5, v6, v7, v9 | (v8 << 16));
}

unint64_t sub_1D69E783C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_1D620757C(v3, v2);
}

unint64_t sub_1D69E784C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_1D620757C(v3, v2);
}

uint64_t sub_1D69E7880@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_1D62B50D4(v3);
}

uint64_t sub_1D69E7890@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_1D62B50D4(v3);
}

uint64_t sub_1D69E78C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_1D69E7904@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_1D69E79A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D69E79F0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 4);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

uint64_t sub_1D69E7A04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  sub_1D5E04CC4(v3);
}

uint64_t sub_1D69E7A54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  sub_1D5E04CC4(v3);
}

uint64_t sub_1D69E7AB8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v5;
  return a2(v4);
}

uint64_t sub_1D69E7B00@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v5;
  return a2(v4);
}

uint64_t sub_1D69E7C20@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[5];
  v3 = a1[7];
  v20 = a1[6];
  v21 = v3;
  v4 = a1[7];
  v22 = a1[8];
  v5 = a1[1];
  v6 = a1[3];
  v16 = a1[2];
  v7 = v16;
  v17 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v18 = a1[4];
  v10 = v18;
  v19 = v9;
  v11 = a1[1];
  v15[0] = *a1;
  v12 = v15[0];
  v15[1] = v11;
  a2[6] = v20;
  a2[7] = v4;
  a2[8] = a1[8];
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v10;
  a2[5] = v2;
  *a2 = v12;
  a2[1] = v5;
  return sub_1D5E9E6F8(v15, &v14);
}

uint64_t sub_1D69E7CA0@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[5];
  v3 = a1[7];
  v20 = a1[6];
  v21 = v3;
  v4 = a1[7];
  v22 = a1[8];
  v5 = a1[1];
  v6 = a1[3];
  v16 = a1[2];
  v7 = v16;
  v17 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v18 = a1[4];
  v10 = v18;
  v19 = v9;
  v11 = a1[1];
  v15[0] = *a1;
  v12 = v15[0];
  v15[1] = v11;
  a2[6] = v20;
  a2[7] = v4;
  a2[8] = a1[8];
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v10;
  a2[5] = v2;
  *a2 = v12;
  a2[1] = v5;
  return sub_1D5E9E6F8(v15, &v14);
}

__n128 sub_1D69E7E64@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t static FormatCodingStrategy.encode<A>(_:into:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a5;
  v17[3] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = v17 - v14;
  (*(a6 + 80))(a1, a4, a6, v13);
  swift_getAssociatedConformanceWitness();
  sub_1D72647EC();
  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

uint64_t static FormatCodingDefaultStrategy.encodeIfNotDefault<A>(_:into:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 + 8);
  result = (*(v13 + 72))(a1, a4, v13);
  if (result)
  {
    return static FormatCodingStrategy.encode<A>(_:into:forKey:)(a1, a2, a3, a4, a5, v13, a7);
  }

  return result;
}

uint64_t FormatCodingDefault.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t FormatCodingDefault.wrappedValue.setter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 40);

  return v4(v1, a1, AssociatedTypeWitness);
}

uint64_t FormatCodingDefault.init(from:)(uint64_t a1)
{
  type metadata accessor for FormatCodingDefault.Errors();
  swift_getWitnessTable();
  swift_allocError();
  *v2 = 1;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatCodingDefault.description.getter()
{
  swift_getAssociatedTypeWitness();
  sub_1D726465C();
  return 0;
}

uint64_t FormatCodingDefault<>.hash(into:)()
{
  swift_getAssociatedTypeWitness();

  return sub_1D7261E8C();
}

uint64_t FormatCodingDefault<>.hashValue.getter()
{
  sub_1D7264A0C();
  swift_getAssociatedTypeWitness();
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D69E83D4()
{
  sub_1D7264A0C();
  FormatCodingDefault<>.hash(into:)();
  return sub_1D7264A5C();
}

uint64_t KeyedEncodingContainer.encodeIfNotEmpty<A>(_:forKey:)()
{
  result = sub_1D7262C3C();
  if ((result & 1) == 0)
  {
    return sub_1D726443C();
  }

  return result;
}

uint64_t sub_1D69E852C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = *a1;
  a2[1] = v3;
  sub_1D5DEA234(v2);
}

uint64_t sub_1D69E856C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = *a1;
  a2[1] = v3;
  sub_1D5DEA234(v2);
}

uint64_t sub_1D69E8650@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  v3 = v8[0];
  *(v8 + 9) = *(a1 + 41);
  v4 = *(v8 + 9);
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  *(a2 + 41) = v4;
  return sub_1D66AD764(v7, &v6);
}

uint64_t sub_1D69E869C@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  v3 = v8[0];
  *(v8 + 9) = *(a1 + 41);
  v4 = *(v8 + 9);
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  *(a2 + 41) = v4;
  return sub_1D66AD764(v7, &v6);
}

uint64_t sub_1D69E86F8()
{
  type metadata accessor for FormatCodingDefault.Errors();
  swift_getWitnessTable();
  swift_allocError();
  *v0 = 0;
  return swift_willThrow();
}

uint64_t sub_1D69E8810(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_1D69E89A4(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t sub_1D69E8CC4(uint64_t a1)
{
  v2 = sub_1D69E8EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69E8D00(uint64_t a1)
{
  v2 = sub_1D69E8EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterRemove.encode(to:)(void *a1)
{
  sub_1D69E8E48();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69E8EA4();
  sub_1D7264B5C();
  return (*(v4 + 8))(v7, v3);
}

void sub_1D69E8E48()
{
  if (!qword_1EC88FC60)
  {
    sub_1D69E8EA4();
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88FC60);
    }
  }
}

unint64_t sub_1D69E8EA4()
{
  result = qword_1EC88FC68;
  if (!qword_1EC88FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FC68);
  }

  return result;
}

unint64_t sub_1D69E8F20(void *a1)
{
  a1[1] = sub_1D69E8F58();
  a1[2] = sub_1D69E8FAC();
  result = sub_1D69E9000();
  a1[3] = result;
  return result;
}

unint64_t sub_1D69E8F58()
{
  result = qword_1EC88FC70;
  if (!qword_1EC88FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FC70);
  }

  return result;
}

unint64_t sub_1D69E8FAC()
{
  result = qword_1EC88FC78;
  if (!qword_1EC88FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FC78);
  }

  return result;
}

unint64_t sub_1D69E9000()
{
  result = qword_1EC88FC80;
  if (!qword_1EC88FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FC80);
  }

  return result;
}

uint64_t sub_1D69E907C(void *a1)
{
  sub_1D69E8E48();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69E8EA4();
  sub_1D7264B5C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D69E91AC()
{
  result = qword_1EC88FC88;
  if (!qword_1EC88FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FC88);
  }

  return result;
}

unint64_t sub_1D69E9204()
{
  result = qword_1EC88FC90;
  if (!qword_1EC88FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FC90);
  }

  return result;
}

uint64_t sub_1D69E930C()
{
  v0 = sub_1D725D19C();
  __swift_allocate_value_buffer(v0, qword_1EC88FCC8);
  __swift_project_value_buffer(v0, qword_1EC88FCC8);
  return sub_1D725D18C();
}

uint64_t sub_1D69E944C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D725D19C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D725D18C();
}

uint64_t sub_1D69E94F0()
{
  v0 = sub_1D725D19C();
  __swift_allocate_value_buffer(v0, qword_1EC88FD10);
  __swift_project_value_buffer(v0, qword_1EC88FD10);
  return sub_1D725D18C();
}

uint64_t sub_1D69E95A0()
{
  v0 = sub_1D725D19C();
  __swift_allocate_value_buffer(v0, qword_1EDF3B6F8);
  __swift_project_value_buffer(v0, qword_1EDF3B6F8);
  return sub_1D725D18C();
}

uint64_t sub_1D69E9648@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D725D19C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t CoverViewFollowSwitch.toggleState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_toggleState;
  swift_beginAccess();
  v4 = sub_1D725CCCC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1D69E9778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_toggleState;
  swift_beginAccess();
  v5 = sub_1D725CCCC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D69E9804(uint64_t a1)
{
  v2 = sub_1D725CCCC();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return CoverViewFollowSwitch.toggleState.setter(v6);
}

uint64_t CoverViewFollowSwitch.toggleState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D725CCCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_toggleState;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v9], a1, v4);
  swift_endAccess();
  (*(v5 + 16))(v8, &v2[v9], v4);
  v10 = (*(v5 + 88))(v8, v4);
  if (v10 == *MEMORY[0x1E69D7630])
  {
    [v2 removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
    return (*(v5 + 8))(a1, v4);
  }

  if (v10 == *MEMORY[0x1E69D7638])
  {
    sub_1D725F67C();
    return (*(v5 + 8))(a1, v4);
  }

  result = sub_1D726402C();
  __break(1u);
  return result;
}

void (*CoverViewFollowSwitch.toggleState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1D725CCCC();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_toggleState;
  v5[6] = v8;
  v5[7] = v9;
  swift_beginAccess();
  return sub_1D69E9BC0;
}

void sub_1D69E9BC0(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 48);
    v5 = *(v3 + 32);
    v6 = *(v3 + 40);
    (*(v6 + 16))(v4, *(v3 + 24) + *(v3 + 56), v5);
    v7 = (*(v6 + 88))(v4, v5);
    if (v7 == *MEMORY[0x1E69D7630])
    {
      [*(v3 + 24) removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
    }

    else
    {
      if (v7 != *MEMORY[0x1E69D7638])
      {
        sub_1D726402C();
        __break(1u);
        return;
      }

      sub_1D725F67C();
    }
  }

  free(*(v3 + 48));

  free(v3);
}

char *sub_1D69E9D0C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v4[OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_borderColor] = 0;
  v11 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_onTap;
  sub_1D5BFDBB4();
  *&v4[v11] = [objc_allocWithZone(v12) init];
  v13 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_toggleState;
  v14 = *MEMORY[0x1E69D7638];
  v15 = sub_1D725CCCC();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  [v16 addSubview_];
  return v16;
}

void CoverViewFollowSwitch.didUpdateToggleState(toggleState:animated:)(uint64_t a1, char a2)
{
  v4 = sub_1D725CCCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  if (a2)
  {
    v8 = 0.2;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = objc_opt_self();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1D69EA250;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_59;
  v12 = _Block_copy(aBlock);

  [v9 animateWithDuration:v12 animations:v8];
  _Block_release(v12);
}

uint64_t sub_1D69EA0FC(uint64_t a1)
{
  v2 = sub_1D725CCCC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  result = (*(v3 + 88))(v7, v2);
  if (result != *MEMORY[0x1E69D7630] && result != *MEMORY[0x1E69D7638])
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall CoverViewFollowSwitch.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = [v1 traitCollection];
  LODWORD(isa) = [v3 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (isa)
  {
    v4 = [v1 layer];
    v5 = *&v1[OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_borderColor];
    if (v5)
    {
      v6 = [v5 CGColor];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    [v4 setBorderColor_];
  }
}

id CoverViewFollowSwitch.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D69EA488@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_toggleState;
  swift_beginAccess();
  v4 = sub_1D725CCCC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*sub_1D69EA514(uint64_t **a1))(void *a1)
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
  v2[4] = CoverViewFollowSwitch.toggleState.modify(v2);
  return sub_1D5FE8C5C;
}

void sub_1D69EA584(uint64_t a1, char a2)
{
  v4 = sub_1D725CCCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  if (a2)
  {
    v8 = 0.2;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = objc_opt_self();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1D69EA970;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_8_0;
  v12 = _Block_copy(aBlock);

  [v9 animateWithDuration:v12 animations:v8];
  _Block_release(v12);
}

uint64_t type metadata accessor for CoverViewFollowSwitch()
{
  result = qword_1EDF0E600;
  if (!qword_1EDF0E600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D69EA7AC()
{
  result = sub_1D725CCCC();
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

void sub_1D69EA858(void *a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_borderColor;
  v3 = *&v1[OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_borderColor];
  *&v1[OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_borderColor] = a1;
  v4 = a1;

  v5 = [v1 layer];
  v6 = *&v1[v2];
  if (v6)
  {
    v7 = [v6 CGColor];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v5 setBorderColor_];
}

uint64_t sub_1D69EA90C()
{
  v1 = *(sub_1D725CCCC() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1D69EA0FC(v2);
}

uint64_t sub_1D69EA978(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x617461646174656DLL;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x617461646174656DLL;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D69EAA18()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69EAA94()
{
  sub_1D72621EC();
}

uint64_t sub_1D69EAAFC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D69EAB74@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

void sub_1D69EABD4(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 0x617461646174656DLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D69EAC0C()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1D69EAC40@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

uint64_t sub_1D69EACA4(uint64_t a1)
{
  v2 = sub_1D69EAEE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69EACE0(uint64_t a1)
{
  v2 = sub_1D69EAEE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsTaxonomyGraphResource.encode(to:)(void *a1)
{
  sub_1D69EB218(0, &qword_1EC88FD40, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  v11 = *v1;
  v10 = v1[1];
  v13 = v1[2];
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69EAEE8();

  sub_1D7264B5C();
  v15 = v11;
  v17 = 0;
  sub_1D69EAF3C();
  sub_1D726443C();

  if (!v2)
  {
    v15 = v14;
    v16 = v13;
    v17 = 1;
    sub_1D69EAF90();
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D69EAEE8()
{
  result = qword_1EDF0AD70;
  if (!qword_1EDF0AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AD70);
  }

  return result;
}

unint64_t sub_1D69EAF3C()
{
  result = qword_1EC88FD48;
  if (!qword_1EC88FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FD48);
  }

  return result;
}

unint64_t sub_1D69EAF90()
{
  result = qword_1EC88FD50;
  if (!qword_1EC88FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FD50);
  }

  return result;
}

uint64_t SportsTaxonomyGraphResource.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D69EB218(0, &qword_1EDF03998, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69EAEE8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = 0;
  sub_1D69EB27C();
  sub_1D726431C();
  v11 = v15[0];
  v16 = 1;
  sub_1D69EB2D0();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v12 = v15[0];
  v13 = v15[1];
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D69EB218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69EAEE8();
    v7 = a3(a1, &type metadata for SportsTaxonomyGraphResource.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D69EB27C()
{
  result = qword_1EDF06F68;
  if (!qword_1EDF06F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F68);
  }

  return result;
}

unint64_t sub_1D69EB2D0()
{
  result = qword_1EDF06F88;
  if (!qword_1EDF06F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06F88);
  }

  return result;
}

unint64_t sub_1D69EB378()
{
  result = qword_1EC88FD58;
  if (!qword_1EC88FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88FD58);
  }

  return result;
}

unint64_t sub_1D69EB3D0()
{
  result = qword_1EDF0AD60;
  if (!qword_1EDF0AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AD60);
  }

  return result;
}

unint64_t sub_1D69EB428()
{
  result = qword_1EDF0AD68;
  if (!qword_1EDF0AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AD68);
  }

  return result;
}

uint64_t FeedGroupKnobsRuleSet.value(for:)()
{
  v4 = vdupq_lane_s64(*(*v0 + 80), 0).u64[0];
  type metadata accessor for FeedGroupKnobsRuleSet.Selector();
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
  }

  v2 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1D7262BAC();

  swift_getWitnessTable();
  sub_1D726249C();

  return v4;
}

uint64_t FeedGroupKnobsRuleSet.__allocating_init(value:selectors:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FeedGroupKnobsRuleSet.__allocating_init(from:)(char *a1)
{
  v2 = swift_allocObject();
  FeedGroupKnobsRuleSet.init(from:)(a1);
  return v2;
}

int64x2_t **FeedGroupKnobsRuleSet.init(from:)(char *a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = (*v1)[6].i64[0];
  v63 = v1;
  v6 = v3[6].i64[1];
  v53 = v4;
  v7 = v4[5];
  *&v8 = vdupq_laneq_s64(v7, 1).u64[0];
  v59 = v6;
  v61 = v5;
  v62 = v6;
  *(&v8 + 1) = v5;
  v56 = v7;
  v57 = vdupq_lane_s64(v7.i64[0], 0);
  v58 = v8;
  v60 = v7.i64[1];
  v9 = type metadata accessor for FeedGroupKnobsRuleSet.Selector();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v54 = v9;
  v52 = sub_1D725AAEC();
  v49 = sub_1D726393C();
  v44 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v10);
  v51 = &v42 - v11;
  v57 = v56;
  *&v58 = v5;
  *(&v58 + 1) = v6;
  v12 = sub_1D725A75C();
  v13 = sub_1D726393C();
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v50 = &v42 - v18;
  v57 = v56;
  *&v58 = v5;
  *(&v58 + 1) = v6;
  v48 = v6;
  type metadata accessor for FeedGroupKnobsRuleSet.CodingKeys();
  swift_getWitnessTable();
  v19 = sub_1D726435C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = (&v42 - v22);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  v24 = v55;
  sub_1D7264B0C();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
    sub_1D7264AEC();
    v25 = a1;
    __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
    swift_getWitnessTable();
    v30 = v45;
    sub_1D72646EC();
    v31 = *(v12 - 8);
    if ((*(v31 + 48))(v30, 1, v12) == 1)
    {
      (*(v46 + 8))(v30, v47);
      v32 = sub_1D7261D1C();
    }

    else
    {
      v32 = sub_1D725A74C();
      (*(v31 + 8))(v30, v12);
    }

    v33 = v63;
    v63[2] = v32;
    v40 = sub_1D726275C();

    v33[3] = v40;
    __swift_destroy_boxed_opaque_existential_1(&v57);
  }

  else
  {
    v43 = v20;
    v26 = v49;
    v45 = a1;
    v57.i8[0] = 0;
    swift_getWitnessTable();
    v27 = v50;
    v55 = v19;
    v53 = v23;
    sub_1D726421C();
    v28 = *(v12 - 8);
    if ((*(v28 + 48))(v27, 1, v12) == 1)
    {
      (*(v46 + 8))(v27, v47);
      v29 = sub_1D7261D1C();
    }

    else
    {
      v29 = sub_1D725A74C();
      (*(v28 + 8))(v27, v12);
    }

    v33 = v63;
    v34 = v26;
    v35 = v43;
    v63[2] = v29;
    v57.i8[0] = 1;
    v36 = v52;
    swift_getWitnessTable();
    v37 = v51;
    sub_1D726421C();
    v38 = *(v36 - 8);
    if ((*(v38 + 48))(v37, 1, v36) == 1)
    {
      (*(v44 + 8))(v37, v34);
      v39 = sub_1D726275C();
    }

    else
    {
      v39 = sub_1D725A74C();
      (*(v38 + 8))(v37, v36);
    }

    (*(v35 + 8))(v53, v55);
    v33[3] = v39;
    v25 = v45;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v33;
}

uint64_t FeedGroupKnobsRuleSet.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v20 = *(*v1 + 80);
  v6 = *(v4 + 96);
  v7 = *(v4 + 104);
  v22 = *(v5 + 88);
  v27 = v20;
  v21 = v20;
  *&v28 = v6;
  *(&v28 + 1) = v7;
  type metadata accessor for FeedGroupKnobsRuleSet.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1D726446C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v19 = &v16 - v11;
  v17 = v2[3];
  v33 = v17;
  v28 = v22;
  v27 = vdupq_lane_s64(v20, 0);
  v30 = *(&v20 + 1);
  v29 = v7;
  *&v22 = v6;
  v31 = v6;
  v32 = v7;
  v12 = type metadata accessor for FeedGroupKnobsRuleSet.Selector();
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264B3C();
    v33 = v2[2];
    __swift_mutable_project_boxed_opaque_existential_1(&v27, *(&v28 + 1));
    sub_1D7262BAC();
    v24 = v22;
    swift_getWitnessTable();
    sub_1D726476C();
    return __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    v16 = v12;
    *&v20 = v9;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = v19;
    sub_1D7264B5C();
    v27.i64[0] = v2[2];
    LOBYTE(v33) = 0;
    sub_1D7262BAC();
    v26 = v22;
    swift_getWitnessTable();
    v15 = v23;
    sub_1D726443C();
    if (!v15)
    {
      v27.i64[0] = v17;
      LOBYTE(v33) = 1;
      v25 = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1D726443C();
    }

    return (*(v20 + 8))(v14, v8);
  }
}

uint64_t FeedGroupKnobsRuleSet.init(value:selectors:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1D69EC280@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5E3A010(*(v1 + 48));
  if (!result)
  {
  }

  *a1 = result;
  return result;
}

uint64_t static FeedGroupKnobsRuleSet.== infix(_:_:)()
{
  if (sub_1D7262B5C())
  {
    type metadata accessor for FeedGroupKnobsRuleSet.Selector();
    swift_getWitnessTable();
    v0 = sub_1D726280C();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void *FeedGroupKnobsRuleSet.Selector.__allocating_init(value:selector:)(uint64_t a1, uint64_t *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  result[3] = a2[1];
  result[4] = a1;
  result[2] = v5;
  return result;
}

void *FeedGroupKnobsRuleSet.Selector.init(value:selector:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[3] = a2[1];
  v2[4] = a1;
  v2[2] = v3;
  return v2;
}

uint64_t FeedGroupKnobsRuleSet.Selector.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FeedGroupKnobsRuleSet.Selector.init(from:)(a1);
  return v2;
}

void *FeedGroupKnobsRuleSet.Selector.init(from:)(void *a1)
{
  v33 = a1;
  v2 = v1;
  v4 = *v1;
  v35 = *(*v1 + 88);
  v5 = v35;
  v6 = *(v4 + 120);
  v34 = *(v4 + 128);
  v36 = v6;
  v37 = v34;
  v30 = sub_1D725A75C();
  v27[0] = sub_1D726393C();
  v28 = *(v27[0] - 8);
  MEMORY[0x1EEE9AC00](v27[0], v7);
  v31 = v27 - v8;
  *&v9 = *(v4 + 112);
  v35 = *(v4 + 80);
  v36 = v5;
  v27[1] = v5;
  v10 = *(v4 + 96);
  *(&v9 + 1) = v6;
  v38 = v9;
  v39 = v34;
  v37 = v10;
  type metadata accessor for FeedGroupKnobsRuleSet.Selector.CodingKeys();
  swift_getWitnessTable();
  v11 = sub_1D726435C();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v27 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v32;
  sub_1D7264B0C();
  if (!v15)
  {
    v16 = v28;
    v32 = 0;
    LOBYTE(v35) = 1;
    v17 = v30;
    swift_getWitnessTable();
    v18 = v31;
    sub_1D726421C();
    v19 = *(v17 - 8);
    if ((*(v19 + 48))(v18, 1, v17) == 1)
    {
      (*(v16 + 8))(v31, v27[0]);
      v20 = sub_1D7261D1C();
    }

    else
    {
      v22 = v30;
      v21 = v31;
      v20 = sub_1D725A74C();
      (*(v19 + 8))(v21, v22);
    }

    v23 = v29;
    v2[4] = v20;
    v40 = 0;
    sub_1D5C36978();
    v24 = v32;
    sub_1D726431C();
    if (!v24)
    {
      (*(v23 + 8))(v14, v11);
      v26 = v36;
      v2[2] = v35;
      v2[3] = v26;
      goto LABEL_8;
    }

    (*(v23 + 8))(v14, v11);
  }

  swift_deallocPartialClassInstance();
LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v2;
}

uint64_t static FeedGroupKnobsRuleSet.Selector.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v2 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D7262B5C();
}

uint64_t sub_1D69EC9AC()
{
  sub_1D7264A0C();
  sub_1D5DEA254(v2, *v0);
  return sub_1D7264A5C();
}

uint64_t sub_1D69ECA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F1B078(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D69ECA88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5E31924();
  *a1 = result;
  return result;
}

uint64_t sub_1D69ECAC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D69ECB18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupKnobsRuleSet.Selector.deinit()
{

  return v0;
}

uint64_t FeedGroupKnobsRuleSet.Selector.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FeedGroupKnobsRuleSet.Selector.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 128);
  v7 = *(*v2 + 136);
  v21 = *(*v2 + 80);
  v16 = *(v4 + 88);
  v22 = v16;
  v23 = *(v4 + 104);
  v24 = v5;
  v25 = v6;
  v17 = v7;
  v18 = v6;
  v26 = v7;
  type metadata accessor for FeedGroupKnobsRuleSet.Selector.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_1D726446C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v13 = v2[3];
  v21 = v2[2];
  *&v22 = v13;
  v27 = 0;
  sub_1D5D3E60C();

  v14 = v19;
  sub_1D726443C();

  if (!v14)
  {
    v21 = v2[4];
    v27 = 1;
    sub_1D7262BAC();
    v20 = v18;
    swift_getWitnessTable();
    sub_1D726443C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D69ECE8C()
{
  v0 = sub_1D72641CC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D69ECEE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeedGroupKnobsRuleSet.Selector.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D69ECF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D69ECFB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D69ED01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D69ED08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D69ED0FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D69ECE8C();
  *a1 = result;
  return result;
}

uint64_t sub_1D69ED14C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D69ECE8C();
  *a1 = result;
  return result;
}

uint64_t sub_1D69ED180@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5E31924();
  *a1 = result;
  return result;
}

uint64_t sub_1D69ED1B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D69ED208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupKnobsRuleSet.deinit()
{

  return v0;
}

uint64_t FeedGroupKnobsRuleSet.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D69ED2C4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeedGroupKnobsRuleSet.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

NewsFeed::FormatVibrancyEffectStyle_optional __swiftcall FormatVibrancyEffectStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_1D69ED5D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C6562616CLL;
  v5 = 0xEC0000006C6C6946;
  v6 = 0x7972616974726574;
  if (v2 != 6)
  {
    v6 = 0x6F74617261706573;
    v5 = 0xE900000000000072;
  }

  v7 = 0xE400000000000000;
  v8 = 1819044198;
  if (v2 != 4)
  {
    v8 = 0x7261646E6F636573;
    v7 = 0xED00006C6C694679;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00006C6562614CLL;
  v10 = 0x7972616974726574;
  if (v2 != 2)
  {
    v10 = 0x616E726574617571;
    v9 = 0xEF6C6562614C7972;
  }

  if (*v1)
  {
    v4 = 0x7261646E6F636573;
    v3 = 0xEE006C6562614C79;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}