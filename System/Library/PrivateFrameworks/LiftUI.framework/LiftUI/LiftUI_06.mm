uint64_t sub_255DA835C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255DA83A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C98, &qword_255E4F7D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DA8420@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[7];
  v5 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

unint64_t sub_255DA8480()
{
  result = qword_27F7E7CA0;
  if (!qword_27F7E7CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7C90, &qword_255E4F7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7CA0);
  }

  return result;
}

uint64_t sub_255DA84E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7C98, &qword_255E4F7D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255DA854C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255DA8594()
{
  result = qword_27F7E7CB0;
  if (!qword_27F7E7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7CB0);
  }

  return result;
}

unint64_t sub_255DA85E8()
{
  result = qword_27F7E7CC0;
  if (!qword_27F7E7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7CC0);
  }

  return result;
}

unint64_t sub_255DA8690()
{
  result = qword_27F7E7CC8;
  if (!qword_27F7E7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7CC8);
  }

  return result;
}

unint64_t sub_255DA86E8()
{
  result = qword_27F7E7CD0;
  if (!qword_27F7E7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7CD0);
  }

  return result;
}

unint64_t sub_255DA8740()
{
  result = qword_27F7E7CD8;
  if (!qword_27F7E7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7CD8);
  }

  return result;
}

unint64_t sub_255DA8798()
{
  result = qword_27F7E7CE0;
  if (!qword_27F7E7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7CE0);
  }

  return result;
}

unint64_t sub_255DA87F0()
{
  result = qword_27F7E7CE8;
  if (!qword_27F7E7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7CE8);
  }

  return result;
}

unint64_t sub_255DA8848()
{
  result = qword_27F7E7CF0;
  if (!qword_27F7E7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7CF0);
  }

  return result;
}

uint64_t sub_255DA889C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ButtonBorderShapeModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[17])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonBorderShapeModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_255DA8994@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v130 = a5;
  v111 = a3;
  v110[1] = a2;
  v121 = a1;
  v126 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D00, &unk_255E4FB00);
  v7 = sub_255E38AE8();
  v8 = sub_255E39268();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
  v10 = sub_255E39268();
  v114 = *(v10 - 8);
  v11 = *(v114 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v113 = v110 - v13;
  v115 = *(v8 - 8);
  v14 = *(v115 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v112 = v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v116 = v110 - v17;
  v124 = v18;
  v125 = v8;
  v19 = sub_255E39268();
  v118 = *(v19 - 8);
  v20 = *(v118 + 64);
  MEMORY[0x28223BE20](v19);
  v117 = v110 - v21;
  v22 = sub_255E38C78();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = *(v7 - 8);
  v28 = *(v129 + 64);
  v29 = MEMORY[0x28223BE20](v25);
  v31 = v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v127 = v110 - v32;
  v128 = v9;
  v123 = v19;
  v33 = sub_255E39268();
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v122 = v110 - v36;
  v119 = v37;
  v120 = v35;
  if (a4 <= 1u)
  {
    if (a4)
    {
      sub_255E38C58();
      v79 = v130;
      sub_255E39A28();
      (*(v23 + 8))(v27, v22);
      v80 = sub_255DAA3D4();
      v145 = v79;
      v146 = v80;
      WitnessTable = swift_getWitnessTable();
      v82 = v127;
      sub_255D4F130(v31, v7, WitnessTable);
      v83 = *(v129 + 8);
      v129 += 8;
      v121 = v83;
      v83(v31, v7);
      sub_255D4F130(v82, v7, WitnessTable);
      v84 = v116;
      sub_255D3F908(v31, v7, v7);
      v143 = WitnessTable;
      v144 = WitnessTable;
      v85 = v125;
      v86 = swift_getWitnessTable();
      v114 = sub_255D4FC94();
      v141 = v86;
      v142 = v114;
      v87 = swift_getWitnessTable();
      v62 = v117;
      sub_255D3F810(v84, v85);
      (*(v115 + 8))(v84, v85);
      v139 = v86;
      v140 = v87;
    }

    else
    {
      sub_255E38C68();
      v53 = v130;
      sub_255E39A28();
      (*(v23 + 8))(v27, v22);
      v54 = sub_255DAA3D4();
      v137 = v53;
      v138 = v54;
      v55 = swift_getWitnessTable();
      v56 = v127;
      sub_255D4F130(v31, v7, v55);
      v57 = *(v129 + 8);
      v129 += 8;
      v121 = v57;
      v57(v31, v7);
      sub_255D4F130(v56, v7, v55);
      v58 = v116;
      sub_255D3F810(v31, v7);
      v135 = v55;
      v136 = v55;
      v59 = v125;
      v60 = swift_getWitnessTable();
      v114 = sub_255D4FC94();
      v133 = v60;
      v134 = v114;
      v61 = swift_getWitnessTable();
      v62 = v117;
      sub_255D3F810(v58, v59);
      (*(v115 + 8))(v58, v59);
      v131 = v60;
      v132 = v61;
    }

    v88 = v123;
    swift_getWitnessTable();
    v52 = v122;
    sub_255D3F810(v62, v88);
    (*(v118 + 8))(v62, v88);
    v89 = v121;
    v121(v31, v7);
    v89(v127, v7);
  }

  else if (a4 == 2)
  {
    if (v111)
    {
      sub_255E38C38();
      v63 = v130;
      sub_255E39A28();
      (*(v23 + 8))(v27, v22);
      v64 = sub_255DAA3D4();
      v157 = v63;
      v158 = v64;
      v65 = swift_getWitnessTable();
      v66 = v127;
      sub_255D4F130(v31, v7, v65);
      v67 = *(v129 + 8);
      v67(v31, v7);
      sub_255D4F130(v66, v7, v65);
      v68 = v112;
      sub_255D3F908(v31, v7, v7);
    }

    else
    {
      sub_255E38C28();
      v63 = v130;
      sub_255E39A28();
      (*(v23 + 8))(v27, v22);
      v90 = sub_255DAA3D4();
      v147 = v63;
      v148 = v90;
      v91 = swift_getWitnessTable();
      v66 = v127;
      sub_255D4F130(v31, v7, v91);
      v67 = *(v129 + 8);
      v67(v31, v7);
      sub_255D4F130(v66, v7, v91);
      v68 = v112;
      sub_255D3F810(v31, v7);
    }

    v67(v31, v7);
    v67(v66, v7);
    v92 = sub_255DAA3D4();
    v155 = v63;
    v156 = v92;
    v153 = swift_getWitnessTable();
    v154 = v153;
    v93 = v125;
    v94 = swift_getWitnessTable();
    v95 = v116;
    sub_255D4F130(v68, v93, v94);
    v96 = sub_255D4FC94();
    v97 = v113;
    sub_255D3F810(v95, v93);
    v151 = v94;
    v152 = v96;
    v98 = v124;
    v99 = swift_getWitnessTable();
    v100 = v117;
    sub_255D3F908(v97, v93, v98);
    (*(v114 + 8))(v97, v98);
    v149 = v94;
    v150 = v99;
    v101 = v123;
    swift_getWitnessTable();
    v52 = v122;
    sub_255D3F810(v100, v101);
    (*(v118 + 8))(v100, v101);
    v102 = *(v115 + 8);
    v102(v116, v93);
    v102(v112, v93);
  }

  else if (a4 == 3)
  {
    sub_255E38C48();
    v38 = v130;
    sub_255E39A28();
    (*(v23 + 8))(v27, v22);
    v39 = sub_255DAA3D4();
    v165 = v38;
    v166 = v39;
    v40 = swift_getWitnessTable();
    v41 = v127;
    sub_255D4F130(v31, v7, v40);
    v42 = *(v129 + 8);
    v42(v31, v7);
    sub_255D4F130(v41, v7, v40);
    v43 = sub_255DA989C(v31, v7);
    v42(v31, v7);
    v42(v41, v7);
    v129 = v43;
    v183[0] = v43;
    v163 = v40;
    v164 = v40;

    v44 = v125;
    v45 = swift_getWitnessTable();
    v46 = sub_255D4FC94();
    v47 = v113;
    sub_255D3F908(v183, v44, v128);
    v161 = v45;
    v162 = v46;
    v48 = v124;
    v49 = swift_getWitnessTable();
    v50 = v117;
    sub_255D3F908(v47, v44, v48);
    (*(v114 + 8))(v47, v48);
    v159 = v45;
    v160 = v49;
    v51 = v123;
    swift_getWitnessTable();
    v52 = v122;
    sub_255D3F810(v50, v51);

    (*(v118 + 8))(v50, v51);
  }

  else
  {
    sub_255E38C68();
    v69 = v130;
    sub_255E39A28();
    (*(v23 + 8))(v27, v22);
    v70 = sub_255DAA3D4();
    v183[1] = v69;
    v183[2] = v70;
    v71 = swift_getWitnessTable();
    v72 = v127;
    sub_255D4F130(v31, v7, v71);
    v73 = *(v129 + 8);
    v73(v31, v7);
    sub_255D4F130(v72, v7, v71);
    v74 = sub_255DA989C(v31, v7);
    v73(v31, v7);
    v73(v72, v7);
    v182 = v71;
    v183[0] = v74;
    v181 = v71;
    v75 = swift_getWitnessTable();
    v76 = sub_255D4FC94();
    v179 = v75;
    v180 = v76;
    v77 = swift_getWitnessTable();
    v177 = v75;
    v178 = v77;
    v78 = v123;
    swift_getWitnessTable();
    v52 = v122;
    sub_255D3F908(v183, v78, v128);
  }

  v103 = sub_255DAA3D4();
  v175 = v130;
  v176 = v103;
  v173 = swift_getWitnessTable();
  v174 = v173;
  v104 = swift_getWitnessTable();
  v105 = sub_255D4FC94();
  v171 = v104;
  v172 = v105;
  v106 = swift_getWitnessTable();
  v169 = v104;
  v170 = v106;
  v167 = swift_getWitnessTable();
  v168 = v105;
  v107 = v120;
  v108 = swift_getWitnessTable();
  sub_255D4F130(v52, v107, v108);
  return (*(v119 + 8))(v52, v107);
}

uint64_t sub_255DA989C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_255E3A038();
}

uint64_t sub_255DA9970()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA9A60()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DA9B3C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA9C28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DAA894();
  *a2 = result;
  return result;
}

void sub_255DA9C58(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0x6974616D6F747561;
  v5 = 0x8000000255E658C0;
  v6 = 0xD000000000000010;
  v7 = 0xE600000000000000;
  v8 = 0x656C63726963;
  if (v2 != 3)
  {
    v8 = 0x6F426E6F74747562;
    v7 = 0xEC00000072656472;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C7573706163;
    v3 = 0xE700000000000000;
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

uint64_t sub_255DA9DB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x737569646172;
  }

  else
  {
    v4 = 0x6570616873;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x737569646172;
  }

  else
  {
    v6 = 0x6570616873;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255DA9E54()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA9ED0()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DA9F38()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DA9FB0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

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

void sub_255DAA010(uint64_t *a1@<X8>)
{
  v2 = 0x6570616873;
  if (*v1)
  {
    v2 = 0x737569646172;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255DAA048()
{
  if (*v0)
  {
    result = 0x737569646172;
  }

  else
  {
    result = 0x6570616873;
  }

  *v0;
  return result;
}

uint64_t sub_255DAA07C@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

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

uint64_t sub_255DAA0E0(uint64_t a1)
{
  v2 = sub_255DAA618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAA11C(uint64_t a1)
{
  v2 = sub_255DAA618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAA158@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = *(v2 + 8);
  v4 = a1[4];
  v8 = *v2;
  v9 = *(v2 + 16);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D00, &unk_255E4FB00);
  sub_255E38AE8();
  sub_255E39268();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
  sub_255E39268();
  sub_255E39268();
  a2[3] = sub_255E39268();
  sub_255DAA3D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_255D4FC94();
  swift_getWitnessTable();
  swift_getWitnessTable();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255DA8994(v7, v10, v9, v8, v4, boxed_opaque_existential_1);
}

uint64_t sub_255DAA320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_255DAA438(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_255DAA358(uint64_t a1)
{
  result = sub_255DAA380();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAA380()
{
  result = qword_27F7E7CF8;
  if (!qword_27F7E7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7CF8);
  }

  return result;
}

unint64_t sub_255DAA3D4()
{
  result = qword_27F7E7D08;
  if (!qword_27F7E7D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D00, &unk_255E4FB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D08);
  }

  return result;
}

uint64_t sub_255DAA438(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7D10, &qword_255E4FB10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAA618();
  sub_255E3AE28();
  v10[30] = 0;
  sub_255DAA66C();
  sub_255E3ABC8();
  v8 = v10[31];
  v10[15] = 1;
  sub_255D9B850();
  sub_255E3ABA8();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_255DAA618()
{
  result = qword_27F7E7D18;
  if (!qword_27F7E7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D18);
  }

  return result;
}

unint64_t sub_255DAA66C()
{
  result = qword_27F7E7D20;
  if (!qword_27F7E7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D20);
  }

  return result;
}

unint64_t sub_255DAA6E4()
{
  result = qword_27F7E7D28;
  if (!qword_27F7E7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D28);
  }

  return result;
}

unint64_t sub_255DAA73C()
{
  result = qword_27F7E7D30;
  if (!qword_27F7E7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D30);
  }

  return result;
}

unint64_t sub_255DAA794()
{
  result = qword_27F7E7D38;
  if (!qword_27F7E7D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D38);
  }

  return result;
}

unint64_t sub_255DAA7EC()
{
  result = qword_27F7E7D40;
  if (!qword_27F7E7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D40);
  }

  return result;
}

unint64_t sub_255DAA840()
{
  result = qword_27F7E7D48;
  if (!qword_27F7E7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D48);
  }

  return result;
}

uint64_t sub_255DAA894()
{
  v0 = sub_255E3AB48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255DAA900(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255DAA95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

uint64_t sub_255DAA9C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_255DAAA10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_255DAAA74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 57))
  {
    return (*a1 + 125);
  }

  v3 = (*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F));
  v4 = v3 ^ 0x7F;
  v5 = 126 - v3;
  if (v4 >= 0x7D)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_255DAAAD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((a2 ^ 0x7F) >> 1) & 0xFE | ((a2 ^ 0x7F) << 6);
    }
  }

  return result;
}

double sub_255DAAB58(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 72);
  v16 = *(v1 + 64);
  v7 = *(v1 + 80);
  v19 = *(v1 + 104);
  v20 = *(v1 + 96);
  v18 = *(v1 + 112);
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  v17 = *(v1 + 120);
  v21 = *v1;
  v22 = *(v1 + 8);
  v23 = *(v1 + 16);
  v24 = *(v1 + 24);
  sub_255D612A0(*v1, v22, v23, v24);
  sub_255D8F6FC(a1);
  v11 = v10;
  v13 = v12;
  sub_255D4CB98(v21, v22, v23, v24);
  if (v13)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11;
  }

  sub_255D612A0(v3, v4, v5, v8);
  sub_255D8F6FC(a1);
  sub_255D4CB98(v3, v4, v5, v8);
  sub_255D612A0(v16, v6, v7, v9);
  sub_255D8F6FC(a1);
  sub_255D4CB98(v16, v6, v7, v9);
  sub_255D612A0(v20, v19, v18, v17);
  sub_255D8F6FC(a1);
  sub_255D4CB98(v20, v19, v18, v17);
  return v14;
}

uint64_t sub_255DAAD2C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_255DADA54();
    sub_255E3ACB8();
    *v7 = *v14;
    *&v7[9] = *&v14[9];
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    a2[4] = v12;
    a2[5] = v13;
    a2[6] = *v7;
    *(a2 + 105) = *&v14[9];
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v10;
    a2[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DAAE58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[4];
  v7 = v3[6];
  v15[5] = v3[5];
  v16[0] = v7;
  *(v16 + 9) = *(v3 + 105);
  v8 = v3[1];
  v15[0] = *v3;
  v15[1] = v8;
  v9 = v3[3];
  v15[2] = v3[2];
  v15[3] = v9;
  v15[4] = v6;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAD734(v15, v17);
  sub_255DAAB58(a2);
  v11 = v3[5];
  v17[4] = v3[4];
  v17[5] = v11;
  v18[0] = v3[6];
  *(v18 + 9) = *(v3 + 105);
  v12 = v3[1];
  v17[0] = *v3;
  v17[1] = v12;
  v13 = v3[3];
  v17[2] = v3[2];
  v17[3] = v13;
  sub_255DAD76C(v17);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D80, &unk_255E51260);
  a3[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E7D88, &qword_27F7E7D80, &unk_255E51260);
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39968();
}

uint64_t sub_255DAB014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7E68, &qword_255E51E40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DADFE0();
  sub_255E3AE28();
  if (!v2)
  {
    v44 = 0;
    sub_255D64774();
    sub_255E3ABA8();
    v11 = v40;
    if (v42 >= 0xFEu)
    {
      v11 = 0;
    }

    v39 = v11;
    if (v42 >= 0xFEu)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(&v40 + 1);
    }

    v38 = v12;
    if (v42 >= 0xFEu)
    {
      v13 = 0;
    }

    else
    {
      v13 = v41;
    }

    v37 = v13;
    if (v42 >= 0xFEu)
    {
      v14 = 0;
    }

    else
    {
      v14 = v42;
    }

    v43 = v14;
    v44 = 1;
    sub_255E3ABA8();
    v15 = v40;
    if (v42 >= 0xFEu)
    {
      v15 = 0;
    }

    v36 = v15;
    if (v42 >= 0xFEu)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(&v40 + 1);
    }

    v35 = v16;
    if (v42 >= 0xFEu)
    {
      v17 = 0;
    }

    else
    {
      v17 = v41;
    }

    v34 = v17;
    if (v42 >= 0xFEu)
    {
      v18 = 0;
    }

    else
    {
      v18 = v42;
    }

    v33 = v18;
    v44 = 2;
    sub_255E3ABA8();
    v19 = v40;
    if (v42 >= 0xFEu)
    {
      v19 = 0;
    }

    v32 = v19;
    if (v42 >= 0xFEu)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(&v40 + 1);
    }

    v31 = v20;
    if (v42 >= 0xFEu)
    {
      v21 = 0;
    }

    else
    {
      v21 = v41;
    }

    v30 = v21;
    if (v42 >= 0xFEu)
    {
      v22 = 0;
    }

    else
    {
      v22 = v42;
    }

    v44 = 3;
    sub_255E3ABA8();
    (*(v6 + 8))(v9, v5);
    v23 = v42;
    if (v42 < 0xFEu)
    {
      v25 = v40;
      v24 = v41;
    }

    else
    {
      v24 = 0;
      v23 = 0;
      v25 = 0uLL;
    }

    v26 = v38;
    *a2 = v39;
    *(a2 + 8) = v26;
    *(a2 + 16) = v37;
    *(a2 + 24) = v43;
    v27 = v35;
    *(a2 + 32) = v36;
    *(a2 + 40) = v27;
    *(a2 + 48) = v34;
    *(a2 + 56) = v33;
    v28 = v31;
    *(a2 + 64) = v32;
    *(a2 + 72) = v28;
    *(a2 + 80) = v30;
    *(a2 + 88) = v22;
    *(a2 + 96) = v25;
    *(a2 + 112) = v24;
    *(a2 + 120) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DAB39C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DAE14C();
  *a2 = result;
  return result;
}

uint64_t sub_255DAB3CC()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
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

uint64_t sub_255DAB43C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DAE14C();
  *a1 = result;
  return result;
}

uint64_t sub_255DAB464(uint64_t a1)
{
  v2 = sub_255DADFE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAB4A0(uint64_t a1)
{
  v2 = sub_255DADFE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAB4F4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v6 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v14 = *(v3 + 48);
  v15 = *(v3 + 40);
  v11 = *(v3 + 56);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v9 <= 0xFD)
  {
    v17 = v7;
    v18 = v6;
    v19 = v8;
    v20 = v9;
    sub_255D3E5A8(v7, v6, v8, v9);
    StringResolvable.resolved(with:)(a2);
    if (v4)
    {
      return sub_255D38060(v17, v18, v19, v20);
    }

    sub_255D38060(v7, v6, v8, v9);
  }

  sub_255E3AB48();

  if (v11 <= 0xFD)
  {
    v17 = v10;
    v18 = v15;
    v19 = v14;
    v20 = v11;
    sub_255D3E5A8(v10, v15, v14, v11);
    StringResolvable.resolved(with:)(a2);
    if (v4)
    {
      return sub_255D38060(v17, v18, v19, v20);
    }

    sub_255D38060(v10, v15, v14, v11);
  }

  v13 = sub_255E3AB48();

  if (v13 == 2)
  {
    goto LABEL_12;
  }

  if (v13 == 1)
  {
    sub_255E388F8();
    goto LABEL_14;
  }

  if (v13)
  {
LABEL_12:
    sub_255E388D8();
  }

  else
  {
    sub_255E388E8();
  }

LABEL_14:
  a3[3] = swift_getOpaqueTypeMetadata2();
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39A18();
}

uint64_t sub_255DAB748()
{
  if (*v0)
  {
    result = 0x7365676465;
  }

  else
  {
    result = 0x696C696269736976;
  }

  *v0;
  return result;
}

uint64_t sub_255DAB784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696C696269736976 && a2 == 0xEA00000000007974;
  if (v6 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365676465 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255DAB864(uint64_t a1)
{
  v2 = sub_255DAD998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAB8A0(uint64_t a1)
{
  v2 = sub_255DAD998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAB8DC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7DF0, &qword_255E512A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAD998();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v24) = 0;
  sub_255D3EA0C();
  sub_255E3ABA8();
  v11 = v27;
  v22 = v28;
  v23 = v29;
  v38 = v30;
  v39 = 1;
  sub_255E3ABA8();
  (*(v6 + 8))(v9, v5);
  v21 = v35;
  v12 = v36;
  v20 = *(&v35 + 1);
  v13 = v37;
  v14 = v11;
  v15 = v22;
  *&v24 = v11;
  *(&v24 + 1) = v22;
  v16 = v23;
  *&v25 = v23;
  LOBYTE(v11) = v38;
  BYTE8(v25) = v38;
  *v26 = v35;
  *&v26[16] = v36;
  v26[24] = v37;
  v17 = v25;
  *a2 = v24;
  a2[1] = v17;
  a2[2] = *v26;
  *(a2 + 41) = *&v26[9];
  sub_255DAD9EC(&v24, &v27);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v11;
  v31 = v21;
  v32 = v20;
  v33 = v12;
  v34 = v13;
  return sub_255DADA24(&v27);
}

uint64_t sub_255DABBD4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v81 = a3;
  v7 = sub_255E38BE8();
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v7);
  v71 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_255E38B98();
  v69 = *(v10 - 8);
  v70 = v10;
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v10);
  v68 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_255E393A8();
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v65 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_255E389B8();
  v63 = *(v16 - 8);
  v64 = v16;
  v17 = *(v63 + 64);
  MEMORY[0x28223BE20](v16);
  v62 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_255E38A18();
  v60 = *(v19 - 8);
  v61 = v19;
  v20 = *(v60 + 64);
  MEMORY[0x28223BE20](v19);
  v59 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_255E38B48();
  v75 = *(v22 - 8);
  v76 = v22;
  v23 = *(v75 + 64);
  MEMORY[0x28223BE20](v22);
  v74 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v3 + 8);
  v26 = *(v3 + 16);
  v28 = *(v3 + 32);
  v27 = *(v3 + 40);
  v29 = *(v3 + 48);
  v30 = *(v3 + 56);
  v31 = *(v3 + 24);
  v77 = *v3;
  v78 = v25;
  v79 = v26;
  LOBYTE(v80) = v31;
  sub_255D3E5A8(v77, v25, v26, v31);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
  }

  sub_255D38060(v77, v78, v79, v80);
  v32 = sub_255DAD79C();
  if (v32 == 7)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  sub_255DDF1BC(a2, v28, v27, v29, v30);
  v35 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  if (v33 <= 2u)
  {
    if (v33 > 1u)
    {
      v36 = v68;
      sub_255E38B88();
      v37 = v70;
      v77 = v35;
      v78 = v70;
      v48 = MEMORY[0x277CDDAC8];
      v79 = v34;
      v80 = MEMORY[0x277CDDAC8];
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      v50 = v81;
      v81[3] = OpaqueTypeMetadata2;
      v77 = v35;
      v78 = v37;
      v79 = v34;
      v80 = v48;
      v50[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v50);
      sub_255E39D08();
      v41 = v69;
    }

    else
    {
      v36 = v74;
      sub_255E38B38();
      v37 = v76;
      v77 = v35;
      v78 = v76;
      v42 = MEMORY[0x277CDDA78];
      v79 = v34;
      v80 = MEMORY[0x277CDDA78];
      v43 = swift_getOpaqueTypeMetadata2();
      v44 = v81;
      v81[3] = v43;
      v77 = v35;
      v78 = v37;
      v79 = v34;
      v80 = v42;
      v44[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v44);
      sub_255E39D08();
      v41 = v75;
    }
  }

  else if (v33 > 4u)
  {
    if (v33 == 5)
    {
      v36 = v59;
      sub_255E38A08();
      v37 = v61;
      v77 = v35;
      v78 = v61;
      v45 = MEMORY[0x277CDD980];
      v79 = v34;
      v80 = MEMORY[0x277CDD980];
      v46 = swift_getOpaqueTypeMetadata2();
      v47 = v81;
      v81[3] = v46;
      v77 = v35;
      v78 = v37;
      v79 = v34;
      v80 = v45;
      v47[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v47);
      sub_255E39D08();
      v41 = v60;
    }

    else
    {
      v36 = v71;
      sub_255E38BD8();
      v37 = v73;
      v77 = v35;
      v78 = v73;
      v54 = MEMORY[0x277CDDB48];
      v79 = v34;
      v80 = MEMORY[0x277CDDB48];
      v55 = swift_getOpaqueTypeMetadata2();
      v56 = v81;
      v81[3] = v55;
      v77 = v35;
      v78 = v37;
      v79 = v34;
      v80 = v54;
      v56[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v56);
      sub_255E39D08();
      v41 = v72;
    }
  }

  else if (v33 == 3)
  {
    v36 = v62;
    sub_255E389A8();
    v37 = v64;
    v77 = v35;
    v78 = v64;
    v38 = MEMORY[0x277CDD8F0];
    v79 = v34;
    v80 = MEMORY[0x277CDD8F0];
    v39 = swift_getOpaqueTypeMetadata2();
    v40 = v81;
    v81[3] = v39;
    v77 = v35;
    v78 = v37;
    v79 = v34;
    v80 = v38;
    v40[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v40);
    sub_255E39D08();
    v41 = v63;
  }

  else
  {
    v36 = v65;
    sub_255E39398();
    v37 = v67;
    v77 = v35;
    v78 = v67;
    v51 = MEMORY[0x277CDE0D0];
    v79 = v34;
    v80 = MEMORY[0x277CDE0D0];
    v52 = swift_getOpaqueTypeMetadata2();
    v53 = v81;
    v81[3] = v52;
    v77 = v35;
    v78 = v37;
    v79 = v34;
    v80 = v51;
    v53[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v53);
    sub_255E39D08();
    v41 = v66;
  }

  return (*(v41 + 8))(v36, v37);
}

unint64_t sub_255DAC3BC()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0x656C797473;
  }

  *v0;
  return result;
}

uint64_t sub_255DAC3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v6 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000255E65E30 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255DAC4D8(uint64_t a1)
{
  v2 = sub_255DAD8DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAC514(uint64_t a1)
{
  v2 = sub_255DAD8DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAC550@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7DE0, &unk_255E51298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAD8DC();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v28) = 0;
  sub_255D3EA0C();
  sub_255E3ABC8();
  v24 = v31;
  v26 = v32;
  v25 = v33;
  LODWORD(v27) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
  LOBYTE(v31) = 1;
  sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940);
  sub_255E3ABA8();
  (*(v6 + 8))(v9, v5);
  v12 = v24;
  v13 = v26;
  v14 = v25;
  v15 = v27;
  v16 = v42;
  if (v42 == 255)
  {
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
  }

  else
  {
    v18 = v40;
    v17 = v41;
    v19 = v39;
  }

  v27 = v17;
  *&v28 = v24;
  v20 = v16 & 1;
  v43 = v16 & 1;
  *(&v28 + 1) = v26;
  *&v29 = v25;
  BYTE8(v29) = v15;
  *v30 = v19;
  *&v30[8] = v18;
  *&v30[16] = v17;
  v30[24] = v16 & 1;
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  a2[2] = *v30;
  *(a2 + 41) = *&v30[9];
  v22 = v13;
  sub_255DAD930(&v28, &v31);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v31 = v12;
  v32 = v22;
  v33 = v14;
  v34 = v15;
  v35 = v19;
  v36 = v18;
  v37 = v27;
  v38 = v20;
  return sub_255DAD968(&v31);
}

uint64_t sub_255DAC898@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D4FB3C(v2, v8);
  v5 = v9;
  if (v9)
  {
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v6 + 24))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_255D4FBAC(v8);
  }

  v8[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D90, &unk_255E51270);
  a2[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E7D98, &qword_27F7E7D90, &unk_255E51270);
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_255E39A38();
}

uint64_t sub_255DACA14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    *(&v9 + 1) = &type metadata for ViewContent;
    v10 = sub_255D44794();
    *&v8 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ACB8();
    v12 = v8;
    v13 = v9;
    v14 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    v6 = v13;
    *a2 = v12;
    *(a2 + 16) = v6;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DACB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255DACC1C(uint64_t a1)
{
  v2 = sub_255DAD888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DACC58(uint64_t a1)
{
  v2 = sub_255DAD888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DACC94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7DD0, &qword_255E51290);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAD888();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D64774();
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DACE14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = a1[4];
  v10 = *(v3 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D612A0(v6, v7, v8, v10);
  sub_255D8F6FC(a2);
  sub_255D4CB98(v6, v7, v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA0, &unk_255E538D0);
  sub_255E38AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA8, &qword_255E51280);
  a3[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E7DB0, &qword_27F7E7DA0, &unk_255E538D0);
  swift_getWitnessTable();
  sub_255D38950(&qword_27F7E7DB8, &qword_27F7E7DA8, &qword_255E51280);
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39A58();
}

uint64_t sub_255DAD010@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  sub_255D3E5A8(*v3, v11, v12, v13);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v10, v11, v12, v13);
  }

  sub_255D38060(v10, v11, v12, v13);
  sub_255E3AB48();

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3[3] = swift_getOpaqueTypeMetadata2();
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39B28();
}

uint64_t sub_255DAD194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255DAD224(uint64_t a1)
{
  v2 = sub_255DAD834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAD260(uint64_t a1)
{
  v2 = sub_255DAD834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAD29C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7DC0, &qword_255E51288);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAD834();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255DAD44C(uint64_t a1)
{
  result = sub_255DAD474();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD474()
{
  result = qword_27F7E7D50;
  if (!qword_27F7E7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D50);
  }

  return result;
}

unint64_t sub_255DAD4C8(uint64_t a1)
{
  result = sub_255DAD4F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD4F0()
{
  result = qword_27F7E7D58;
  if (!qword_27F7E7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D58);
  }

  return result;
}

unint64_t sub_255DAD544(uint64_t a1)
{
  result = sub_255DAD56C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD56C()
{
  result = qword_27F7E7D60;
  if (!qword_27F7E7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D60);
  }

  return result;
}

unint64_t sub_255DAD5C0(uint64_t a1)
{
  result = sub_255DAD5E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD5E8()
{
  result = qword_27F7E7D68;
  if (!qword_27F7E7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D68);
  }

  return result;
}

unint64_t sub_255DAD63C(uint64_t a1)
{
  result = sub_255DAD664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD664()
{
  result = qword_27F7E7D70;
  if (!qword_27F7E7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D70);
  }

  return result;
}

unint64_t sub_255DAD6B8(uint64_t a1)
{
  result = sub_255DAD6E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAD6E0()
{
  result = qword_27F7E7D78;
  if (!qword_27F7E7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7D78);
  }

  return result;
}

uint64_t sub_255DAD79C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255DAD7E8()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255DAD834()
{
  result = qword_27F7E7DC8;
  if (!qword_27F7E7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7DC8);
  }

  return result;
}

unint64_t sub_255DAD888()
{
  result = qword_27F7E7DD8;
  if (!qword_27F7E7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7DD8);
  }

  return result;
}

unint64_t sub_255DAD8DC()
{
  result = qword_27F7E7DE8;
  if (!qword_27F7E7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7DE8);
  }

  return result;
}

unint64_t sub_255DAD998()
{
  result = qword_27F7E7DF8;
  if (!qword_27F7E7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7DF8);
  }

  return result;
}

unint64_t sub_255DADA54()
{
  result = qword_27F7E7E00;
  if (!qword_27F7E7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E00);
  }

  return result;
}

uint64_t sub_255DADAE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 121))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_255DADB38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_255DADBC4()
{
  result = qword_27F7E7E08;
  if (!qword_27F7E7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E08);
  }

  return result;
}

unint64_t sub_255DADC1C()
{
  result = qword_27F7E7E10;
  if (!qword_27F7E7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E10);
  }

  return result;
}

unint64_t sub_255DADC74()
{
  result = qword_27F7E7E18;
  if (!qword_27F7E7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E18);
  }

  return result;
}

unint64_t sub_255DADCCC()
{
  result = qword_27F7E7E20;
  if (!qword_27F7E7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E20);
  }

  return result;
}

unint64_t sub_255DADD24()
{
  result = qword_27F7E7E28;
  if (!qword_27F7E7E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E28);
  }

  return result;
}

unint64_t sub_255DADD7C()
{
  result = qword_27F7E7E30;
  if (!qword_27F7E7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E30);
  }

  return result;
}

unint64_t sub_255DADDD4()
{
  result = qword_27F7E7E38;
  if (!qword_27F7E7E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E38);
  }

  return result;
}

unint64_t sub_255DADE2C()
{
  result = qword_27F7E7E40;
  if (!qword_27F7E7E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E40);
  }

  return result;
}

unint64_t sub_255DADE84()
{
  result = qword_27F7E7E48;
  if (!qword_27F7E7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E48);
  }

  return result;
}

unint64_t sub_255DADEDC()
{
  result = qword_27F7E7E50;
  if (!qword_27F7E7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E50);
  }

  return result;
}

unint64_t sub_255DADF34()
{
  result = qword_27F7E7E58;
  if (!qword_27F7E7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E58);
  }

  return result;
}

unint64_t sub_255DADF8C()
{
  result = qword_27F7E7E60;
  if (!qword_27F7E7E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E60);
  }

  return result;
}

unint64_t sub_255DADFE0()
{
  result = qword_27F7E7E70;
  if (!qword_27F7E7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E70);
  }

  return result;
}

unint64_t sub_255DAE048()
{
  result = qword_27F7E7E78;
  if (!qword_27F7E7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E78);
  }

  return result;
}

unint64_t sub_255DAE0A0()
{
  result = qword_27F7E7E80;
  if (!qword_27F7E7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E80);
  }

  return result;
}

unint64_t sub_255DAE0F8()
{
  result = qword_27F7E7E88;
  if (!qword_27F7E7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E88);
  }

  return result;
}

uint64_t sub_255DAE14C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255DAE1BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_255DAE204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255DAE25C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7E98, &qword_255E52218);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v20 = *v2;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  sub_255D3E5A8(v20, v10, v11, v12);
  StringResolvable.resolved(with:)(a1);
  if (v3)
  {
    return sub_255D38060(v20, v21, v22, v23);
  }

  sub_255D38060(v20, v21, v22, v23);
  v14 = sub_255DAE8E0();
  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        sub_255E3A178();
      }

      else
      {
        sub_255E3A168();
      }
    }

    else
    {
      sub_255E3A148();
    }

    goto LABEL_15;
  }

  if (v14 <= 4)
  {
    if (v14 == 3)
    {
      sub_255E3A158();
    }

    else
    {
      sub_255E3A138();
    }

    goto LABEL_15;
  }

  if (v14 == 5)
  {
    sub_255E3A188();
LABEL_15:
    v15 = sub_255E3A198();
    (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
    goto LABEL_16;
  }

  v15 = sub_255E3A198();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
LABEL_16:
  sub_255E3A198();
  v16 = MEMORY[0x277CE1320];
  a2[3] = v15;
  a2[4] = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v18 = *(v15 - 8);
  v19 = *(v18 + 48);
  if (v19(v9, 1, v15) != 1)
  {
    return (*(v18 + 32))(boxed_opaque_existential_1, v9, v15);
  }

  sub_255E3A178();
  result = (v19)(v9, 1, v15);
  if (result != 1)
  {
    return sub_255DAE92C(v9);
  }

  return result;
}

uint64_t sub_255DAE530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6169726574616DLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255DAE5B8(uint64_t a1)
{
  v2 = sub_255DAE994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAE5F4(uint64_t a1)
{
  v2 = sub_255DAE994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAE630@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7EA0, &qword_255E52220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DAE994();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  sub_255D3EA0C();
  sub_255E3ABC8();
  (*(v6 + 8))(v9, v5);
  v11 = v16[0];
  v12 = v16[1];
  v13 = v16[2];
  v14 = v17;
  *a2 = v16[0];
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = MEMORY[0x277D84F90];
  sub_255D3E5A8(v11, v12, v13, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_255D38060(v11, v12, v13, v14);
}

uint64_t sub_255DAE820(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

unint64_t sub_255DAE864(uint64_t a1)
{
  result = sub_255DAE88C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DAE88C()
{
  result = qword_27F7E7E90;
  if (!qword_27F7E7E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7E90);
  }

  return result;
}

uint64_t sub_255DAE8E0()
{
  v0 = sub_255E3AB48();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255DAE92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7E98, &qword_255E52218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255DAE994()
{
  result = qword_27F7E7EA8;
  if (!qword_27F7E7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7EA8);
  }

  return result;
}

unint64_t sub_255DAE9FC()
{
  result = qword_27F7E7EB0;
  if (!qword_27F7E7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7EB0);
  }

  return result;
}

unint64_t sub_255DAEA54()
{
  result = qword_27F7E7EB8;
  if (!qword_27F7E7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7EB8);
  }

  return result;
}

unint64_t sub_255DAEAAC()
{
  result = qword_27F7E7EC0;
  if (!qword_27F7E7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7EC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI17ShapeStyleContent_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy83_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_255DAEB48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 83))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 82);
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

uint64_t sub_255DAEB90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 82) = -a2;
    }
  }

  return result;
}

uint64_t sub_255DAEC00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v122 = a2;
  sub_255DB03F4(v4, &v114);
  if (!v121)
  {
    v19 = v114;
    v20 = v115;
    v21 = BYTE8(v115);
    sub_255D34630(&v116, &v105);
    if (v21 <= 0xFD)
    {
      v71 = a4;
      v111 = v19;
      *&v112 = v20;
      BYTE8(v112) = v21;
      sub_255D3E5A8(v19, *(&v19 + 1), v20, v21);
      StringResolvable.resolved(with:)(v122);
      if (v5)
      {
        sub_255D38060(v111, *(&v111 + 1), v112, BYTE8(v112));
        sub_255D64814(v19, *(&v19 + 1), v20, v21);
        v26 = &v105;
        return __swift_destroy_boxed_opaque_existential_1Tm(v26);
      }

      sub_255D38060(v111, *(&v111 + 1), v112, BYTE8(v112));
      a4 = v71;
    }

    v37 = sub_255E0C470();
    v72 = v5;
    LODWORD(v70) = v21;
    v69 = v20;
    v68 = v19;
    if (v37 > 4)
    {
      if (v37 <= 6)
      {
        if (v37 == 5)
        {
          v38 = sub_255E3A1C8();
        }

        else
        {
          v38 = sub_255E3A1D8();
        }
      }

      else if (v37 == 7)
      {
        v38 = sub_255E3A1E8();
      }

      else
      {
        if (v37 != 8)
        {
          v60 = a1[4];
          v67 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          v122 = &v66;
          MEMORY[0x28223BE20](v67);
          v66 = sub_255E3A228();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7EF8, &qword_255E528D0);
          a4[3] = sub_255E38AE8();
          v61 = sub_255D38950(&qword_27F7E7F00, &qword_27F7E7EF8, &qword_255E528D0);
          v75 = v60;
          v76 = v61;
          a4[4] = swift_getWitnessTable();
          __swift_allocate_boxed_opaque_existential_1(a4);
          sub_255E39858();
          sub_255D64814(v68, *(&v68 + 1), v69, v70);
LABEL_76:
          v55 = &v105;
          return __swift_destroy_boxed_opaque_existential_1Tm(v55);
        }

        v38 = sub_255E3A1F8();
      }
    }

    else if (v37 <= 1)
    {
      if (v37)
      {
        v38 = sub_255E3A238();
      }

      else
      {
        v38 = sub_255E3A228();
      }
    }

    else if (v37 == 2)
    {
      v38 = sub_255E3A248();
    }

    else if (v37 == 3)
    {
      v38 = sub_255E3A208();
    }

    else
    {
      v38 = sub_255E3A218();
    }

    v122 = v38;
    v67 = v39;
    v62 = a1[4];
    v63 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v66 = &v66;
    MEMORY[0x28223BE20](v63);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7EF8, &qword_255E528D0);
    a4[3] = sub_255E38AE8();
    v64 = sub_255D38950(&qword_27F7E7F00, &qword_27F7E7EF8, &qword_255E528D0);
    v73 = v62;
    v74 = v64;
    a4[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a4);
    sub_255E39858();
    sub_255D64814(v68, *(&v68 + 1), v69, v70);
    goto LABEL_76;
  }

  if (v121 == 1)
  {
    v9 = v120;
    v111 = v114;
    v112 = v115;
    v113 = v116;
    sub_255D34630(&v117, v108);
    sub_255DB042C(&v111, &v105);
    v71 = a4;
    if (v107)
    {
      if (v9 == 2)
      {
        sub_255D34630(&v105, &v102);
        v10 = a1[4];
        v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v12 = v103;
        v13 = v104;
        __swift_project_boxed_opaque_existential_1(&v102, v103);
        sub_255DEBAD8(v122, v12, v13, &v99);
        if (!v5)
        {
          v70 = v10;
          v72 = v101;
          v14 = v100;
          v69 = __swift_project_boxed_opaque_existential_1(&v99, v100);
          v15 = v109;
          v16 = v110;
          __swift_project_boxed_opaque_existential_1(v108, v109);
          (*(v16 + 48))(&v98, v122, a3, v15, v16);
          v97 = v98;
          v93 = v14;
          v94 = &type metadata for AnyShape;
          v95 = v72;
          v96 = sub_255D3D6B0();
          sub_255E394B8();
          v17 = sub_255E38AE8();
          v122 = v11;
          v18 = v71;
          v71[3] = v17;
          v89 = v70;
          WitnessTable = swift_getWitnessTable();
          v18[4] = swift_getWitnessTable();
          __swift_allocate_boxed_opaque_existential_1(v18);
LABEL_51:
          sub_255E39878();

          sub_255D395E4(&v111, &qword_27F7E7ED0, &qword_255E528B8);
          __swift_destroy_boxed_opaque_existential_1Tm(&v99);
          goto LABEL_52;
        }
      }

      else
      {
        sub_255D34630(&v105, &v102);
        v31 = a1[4];
        v32 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        v33 = v103;
        v34 = v104;
        __swift_project_boxed_opaque_existential_1(&v102, v103);
        sub_255DEBAD8(v122, v33, v34, &v99);
        if (!v5)
        {
          v72 = v101;
          v69 = v32;
          v70 = v100;
          *(&v68 + 1) = __swift_project_boxed_opaque_existential_1(&v99, v100);
          v42 = v109;
          v43 = v110;
          __swift_project_boxed_opaque_existential_1(v108, v109);
          (*(v43 + 48))(&v98, v122, a3, v42, v43);
          v97 = v98;
          v93 = v70;
          v94 = &type metadata for AnyShape;
          v95 = v72;
          v96 = sub_255D3D6B0();
          sub_255E394B8();
          v44 = v71;
          v71[3] = sub_255E38AE8();
          v91 = v31;
          v92 = swift_getWitnessTable();
          v44[4] = swift_getWitnessTable();
          __swift_allocate_boxed_opaque_existential_1(v44);
          goto LABEL_51;
        }
      }

      sub_255D395E4(&v111, &qword_27F7E7ED0, &qword_255E528B8);
LABEL_52:
      __swift_destroy_boxed_opaque_existential_1Tm(&v102);
      goto LABEL_53;
    }

    v27 = a1[3];
    v72 = a1[4];
    v70 = __swift_project_boxed_opaque_existential_1(a1, v27);
    v29 = v109;
    v28 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    if (v9 == 2)
    {
      (*(v28 + 48))(&v102, v122, a3, v29, v28);
      if (!v5)
      {
        v99 = v102;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7ED8, &qword_255E528C0);
        v30 = v71;
        v71[3] = sub_255E38AE8();
        v85 = v72;
        v86 = sub_255D38950(&qword_27F7E7EE0, &qword_27F7E7ED8, &qword_255E528C0);
        v30[4] = swift_getWitnessTable();
        __swift_allocate_boxed_opaque_existential_1(v30);
        sub_255D3D6B0();
LABEL_22:
        sub_255E39848();
      }
    }

    else
    {
      (*(v28 + 48))(&v102, v122, a3, v29, v28);
      if (!v5)
      {
        v99 = v102;
        v35 = v72;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7ED8, &qword_255E528C0);
        v36 = v71;
        v71[3] = sub_255E38AE8();
        v87 = v35;
        v88 = sub_255D38950(&qword_27F7E7EE0, &qword_27F7E7ED8, &qword_255E528C0);
        v36[4] = swift_getWitnessTable();
        __swift_allocate_boxed_opaque_existential_1(v36);
        sub_255D3D6B0();
        goto LABEL_22;
      }
    }

    sub_255D395E4(&v111, &qword_27F7E7ED0, &qword_255E528B8);
LABEL_53:
    v26 = v108;
    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  v72 = v5;
  v22 = *(&v117 + 1);
  v23 = v118;
  v24 = v119;
  v111 = v114;
  v112 = v115;
  v25 = v117;
  v113 = v116;
  if (v119 <= 0xFDu)
  {
    v105 = v117;
    v106 = v118;
    LOBYTE(v107) = v119;
    sub_255D3E5A8(v117, *(&v117 + 1), v118, v119);
    StringResolvable.resolved(with:)(v122);
    if (v72)
    {
      sub_255D64814(v25, v22, v23, v24);
      sub_255D38060(v105, *(&v105 + 1), v106, v107);
      return sub_255D395E4(&v111, &qword_27F7E7ED0, &qword_255E528B8);
    }

    sub_255D38060(v105, *(&v105 + 1), v106, v107);
  }

  v40 = sub_255D73434();
  *(&v68 + 1) = v23;
  v69 = v25;
  v70 = v22;
  if (v40 <= 3)
  {
    if (v40 > 1)
    {
      if (v40 == 2)
      {
        v41 = sub_255E39608();
      }

      else
      {
        v41 = sub_255E39628();
      }
    }

    else if (v40)
    {
      v41 = sub_255E39618();
    }

    else
    {
      v41 = sub_255E395F8();
    }

    goto LABEL_58;
  }

  if (v40 <= 5)
  {
    if (v40 == 4)
    {
      v41 = sub_255E395E8();
    }

    else
    {
      v41 = sub_255E395D8();
    }

    goto LABEL_58;
  }

  if (v40 == 6)
  {
    v41 = sub_255E39638();
LABEL_58:
    LODWORD(v68) = v41;
    v46 = a4;
    sub_255DB042C(&v111, &v105);
    if (v107)
    {
      sub_255D34630(&v105, v108);
      v47 = a1[4];
      v48 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v49 = v109;
      v50 = v110;
      __swift_project_boxed_opaque_existential_1(v108, v109);
      sub_255DEBAD8(v122, v49, v50, &v102);
      if (v72)
      {
        sub_255D395E4(&v111, &qword_27F7E7ED0, &qword_255E528B8);
        sub_255D64814(v69, v70, *(&v68 + 1), v24);
      }

      else
      {
        v122 = v48;
        v66 = v104;
        v67 = __swift_project_boxed_opaque_existential_1(&v102, v103);
        sub_255E394C8();
        v46[3] = sub_255E38AE8();
        v83 = v47;
        v84 = swift_getWitnessTable();
        v46[4] = swift_getWitnessTable();
        __swift_allocate_boxed_opaque_existential_1(v46);
        sub_255E39868();
        sub_255D64814(v69, v70, *(&v68 + 1), v24);
        sub_255D395E4(&v111, &qword_27F7E7ED0, &qword_255E528B8);
        __swift_destroy_boxed_opaque_existential_1Tm(&v102);
      }

      v55 = v108;
      return __swift_destroy_boxed_opaque_existential_1Tm(v55);
    }

    v51 = a1[4];
    v122 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7EE8, &qword_255E528C8);
    a4[3] = sub_255E38AE8();
    v79 = v51;
    v80 = sub_255D38950(&qword_27F7E7EF0, &qword_27F7E7EE8, &qword_255E528C8);
    a4[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a4);
    sub_255E39838();
    v52 = v69;
    v53 = v70;
    v54 = *(&v68 + 1);
    goto LABEL_62;
  }

  sub_255DB042C(&v111, &v105);
  if (!v107)
  {
    v65 = a1[4];
    v122 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    LODWORD(v68) = sub_255E395E8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7EE8, &qword_255E528C8);
    a4[3] = sub_255E38AE8();
    v77 = v65;
    v78 = sub_255D38950(&qword_27F7E7EF0, &qword_27F7E7EE8, &qword_255E528C8);
    a4[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a4);
    sub_255E39838();
    v52 = v69;
    v53 = v70;
    v54 = v23;
LABEL_62:
    sub_255D64814(v52, v53, v54, v24);
    return sub_255D395E4(&v111, &qword_27F7E7ED0, &qword_255E528B8);
  }

  sub_255D34630(&v105, v108);
  v56 = a1[4];
  v57 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v58 = v109;
  v59 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  sub_255DEBAD8(v122, v58, v59, &v102);
  if (v72)
  {
    sub_255D395E4(&v111, &qword_27F7E7ED0, &qword_255E528B8);
    sub_255D64814(v69, v70, *(&v68 + 1), v24);
  }

  else
  {
    v67 = v56;
    v122 = __swift_project_boxed_opaque_existential_1(&v102, v103);
    LODWORD(v72) = sub_255E395E8();
    sub_255E394C8();
    *&v68 = v57;
    a4[3] = sub_255E38AE8();
    v81 = v67;
    v82 = swift_getWitnessTable();
    a4[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a4);
    sub_255E39868();
    sub_255D64814(v69, v70, *(&v68 + 1), v24);
    sub_255D395E4(&v111, &qword_27F7E7ED0, &qword_255E528B8);
    __swift_destroy_boxed_opaque_existential_1Tm(&v102);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v108);
}

uint64_t sub_255DAFCA4()
{
  v1 = *v0;
  v2 = 0x746E65746E6F63;
  v3 = 0x656C797473;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x6C7974536C6C6966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E656D6E67696C61;
  if (v1 != 1)
  {
    v5 = 0x6570616873;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_255DAFD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255DB082C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255DAFD88(uint64_t a1)
{
  v2 = sub_255DB04A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DAFDC4(uint64_t a1)
{
  v2 = sub_255DB04A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DAFE00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F08, &qword_255E528D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_255DB04A0();
  sub_255E3AE28();
  if (!v2)
  {
    LOBYTE(v22) = 0;
    if (sub_255E3ABE8())
    {
      LOBYTE(v35) = 0;
      sub_255D447E8();
      sub_255E3ABC8();
      v33[0] = 1;
      sub_255D3EA0C();
      sub_255E3ABA8();
      v38 = v35;
      *&v39 = v36;
      BYTE8(v39) = BYTE8(v36);
      *&v40[24] = &type metadata for ViewContent;
      *v41 = sub_255D44794();
      v12 = swift_allocObject();
      *v40 = v12;
      v13 = v29;
      *(v12 + 112) = v28;
      *(v12 + 128) = v13;
      *(v12 + 144) = v30;
      *(v12 + 160) = v31;
      v14 = v25;
      *(v12 + 48) = v24;
      *(v12 + 64) = v14;
      v15 = v27;
      *(v12 + 80) = v26;
      *(v12 + 96) = v15;
      v16 = v23;
      *(v12 + 16) = v22;
      *(v12 + 32) = v16;
      (*(v6 + 8))(v9, v5);
      v41[18] = 0;
    }

    else
    {
      LOBYTE(v22) = 2;
      if (sub_255E3ABE8())
      {
        v33[0] = 2;
        sub_255DB059C();
        sub_255E3ABC8();
        sub_255D34630(&v35, &v22);
        v33[0] = 5;
        sub_255DB05F0();
        sub_255E3ABA8();
        v17 = v35;
        v32 = 3;
        sub_255DB04F4();
        sub_255E3ABA8();
        (*(v6 + 8))(v9, v5);
        if (v34)
        {
          sub_255D3CE1C(v33, &v35);
          sub_255DB0548(v33);
        }

        else
        {
          sub_255D395E4(v33, &qword_27F7E7F20, &qword_255E528E0);
          v35 = 0u;
          v36 = 0u;
          v37 = 0;
        }

        v38 = v35;
        v39 = v36;
        *v40 = v37;
        sub_255D34630(&v22, &v40[8]);
        *&v41[16] = v17;
        v19 = 1;
      }

      else
      {
        v33[0] = 3;
        sub_255DB04F4();
        sub_255E3ABA8();
        if (*(&v36 + 1))
        {
          sub_255D3CE1C(&v35, &v22);
          sub_255DB0548(&v35);
        }

        else
        {
          sub_255D395E4(&v35, &qword_27F7E7F20, &qword_255E528E0);
          v22 = 0u;
          v23 = 0u;
          *&v24 = 0;
        }

        v33[0] = 4;
        sub_255D3EA0C();
        sub_255E3ABA8();
        (*(v6 + 8))(v9, v5);
        v38 = v22;
        v39 = v23;
        *&v40[8] = v35;
        *v40 = v24;
        *&v40[24] = v36;
        v41[0] = BYTE8(v36);
        v19 = 2;
      }

      v41[18] = v19;
    }

    v20 = *&v40[16];
    *(a2 + 32) = *v40;
    *(a2 + 48) = v20;
    *(a2 + 64) = *v41;
    *(a2 + 79) = *&v41[15];
    v21 = v39;
    *a2 = v38;
    *(a2 + 16) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v42);
}

unint64_t sub_255DB0378(uint64_t a1)
{
  result = sub_255DB03A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DB03A0()
{
  result = qword_27F7E7EC8;
  if (!qword_27F7E7EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7EC8);
  }

  return result;
}

uint64_t sub_255DB042C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7ED0, &qword_255E528B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_255DB04A0()
{
  result = qword_27F7E7F10;
  if (!qword_27F7E7F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F10);
  }

  return result;
}

unint64_t sub_255DB04F4()
{
  result = qword_27F7E7F18;
  if (!qword_27F7E7F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F18);
  }

  return result;
}

unint64_t sub_255DB059C()
{
  result = qword_27F7E7F28;
  if (!qword_27F7E7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F28);
  }

  return result;
}

unint64_t sub_255DB05F0()
{
  result = qword_27F7E7F30;
  if (!qword_27F7E7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F30);
  }

  return result;
}

uint64_t sub_255DB0654(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 83))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 82);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255DB0690(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 79) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 82) = -a2;
    }
  }

  return result;
}

uint64_t sub_255DB06E4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 82) = a2;
  return result;
}

unint64_t sub_255DB0728()
{
  result = qword_27F7E7F38;
  if (!qword_27F7E7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F38);
  }

  return result;
}

unint64_t sub_255DB0780()
{
  result = qword_27F7E7F40;
  if (!qword_27F7E7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F40);
  }

  return result;
}

unint64_t sub_255DB07D8()
{
  result = qword_27F7E7F48;
  if (!qword_27F7E7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F48);
  }

  return result;
}

uint64_t sub_255DB082C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_255E3AC68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (sub_255E3AC68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000255E65E50 == a2 || (sub_255E3AC68() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C7974536C6C6966 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = sub_255E3AC68();

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

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_255DB0A6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255DB0AB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255DB0B28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = *(v3 + 40);
  v18 = *(v3 + 48);
  v21 = *(v3 + 56);
  v24 = *(v3 + 64);
  sub_255D612A0(v15, v18, v21, v24);
  sub_255D8F6FC(a2);
  v8 = v7;
  sub_255D4CB98(v15, v18, v21, v24);
  if (v8)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = *(v3 + 24);
  v11 = *(v3 + 32);
  __swift_project_boxed_opaque_existential_1(v3, v12);
  (*(v11 + 16))(a2, v12, v11);
  v13 = *(v3 + 96);
  if (v13 <= 0xFD)
  {
    v16 = *(v3 + 72);
    v19 = *(v3 + 80);
    v22 = *(v3 + 88);
    v25 = *(v3 + 96);
    sub_255D612A0(v16, v19, v22, v13);
    sub_255D8F6FC(a2);
    sub_255D4CB98(v16, v19, v22, v25);
  }

  v14 = *(v3 + 128);
  if (v14 <= 0xFD)
  {
    v17 = *(v3 + 104);
    v20 = *(v3 + 112);
    v23 = *(v3 + 120);
    v26 = *(v3 + 128);
    sub_255D612A0(v17, v20, v23, v14);
    sub_255D8F6FC(a2);
    sub_255D4CB98(v17, v20, v23, v26);
  }

  a3[3] = sub_255E38AE8();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39C18();
}

uint64_t sub_255DB0D68()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DB0E0C()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DB0E9C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DB0F3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DB1810();
  *a2 = result;
  return result;
}

void sub_255DB0F6C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726F6C6F63;
  v4 = 120;
  if (*v1 != 2)
  {
    v4 = 121;
  }

  if (*v1)
  {
    v3 = 0x737569646172;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE100000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_255DB0FCC()
{
  v1 = 0x726F6C6F63;
  v2 = 120;
  if (*v0 != 2)
  {
    v2 = 121;
  }

  if (*v0)
  {
    v1 = 0x737569646172;
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

uint64_t sub_255DB1028@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DB1810();
  *a1 = result;
  return result;
}

uint64_t sub_255DB1050(uint64_t a1)
{
  v2 = sub_255DB1580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DB108C(uint64_t a1)
{
  v2 = sub_255DB1580();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255DB10C8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F58, &qword_255E53538);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_255DB1580();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else
  {
    v16 = a2;
    v17 = v6;
    LOBYTE(v20[0]) = 1;
    v12 = sub_255D64774();
    sub_255E3ABC8();
    v15 = v12;
    *&v25[40] = v21;
    v26 = v22;
    v27 = v23;
    v18 = 0;
    sub_255D65E28();
    sub_255E3ABA8();
    if (v19[3])
    {
      sub_255D3CE1C(v19, v20);
      sub_255D65FFC(v19);
      sub_255D34630(v20, &v21);
    }

    else
    {
      sub_255DB15D4(v19);
      v23 = &type metadata for MonoColor;
      v24 = sub_255DB163C();
      v13 = swift_allocObject();
      *&v21 = v13;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = 0;
      *(v13 + 40) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      *(v13 + 48) = 0x3FD51EB851EB851FLL;
      *(v13 + 72) = 0;
    }

    sub_255D34630(&v21, v25);
    LOBYTE(v20[0]) = 2;
    sub_255E3ABA8();
    v14 = v17;
    v28 = v21;
    v29 = v22;
    v30 = v23;
    LOBYTE(v20[0]) = 3;
    sub_255E3ABA8();
    (*(v14 + 8))(v9, v5);
    v31 = v21;
    v32 = v22;
    v33 = v23;
    sub_255DB1690(v25, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    sub_255DB16C8(v25);
  }
}

unint64_t sub_255DB1504(uint64_t a1)
{
  result = sub_255DB152C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DB152C()
{
  result = qword_27F7E7F50;
  if (!qword_27F7E7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F50);
  }

  return result;
}

unint64_t sub_255DB1580()
{
  result = qword_27F7E7F60;
  if (!qword_27F7E7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F60);
  }

  return result;
}

uint64_t sub_255DB15D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F68, &qword_255E53540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255DB163C()
{
  result = qword_27F7E7F70;
  if (!qword_27F7E7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F70);
  }

  return result;
}

unint64_t sub_255DB170C()
{
  result = qword_27F7E7F78;
  if (!qword_27F7E7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F78);
  }

  return result;
}

unint64_t sub_255DB1764()
{
  result = qword_27F7E7F80;
  if (!qword_27F7E7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F80);
  }

  return result;
}

unint64_t sub_255DB17BC()
{
  result = qword_27F7E7F88;
  if (!qword_27F7E7F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7F88);
  }

  return result;
}

uint64_t sub_255DB1810()
{
  v0 = sub_255E3AB48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255DB185C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  v8 = *v2;
  v7 = __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_255E390C8();
  sub_255DC8544(&qword_27F7E63D0, MEMORY[0x277CDDEE0]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39588();
  sub_255DC8544(&qword_27F7E63C8, MEMORY[0x277CDE400]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  sub_255E38BB8();
  sub_255DC8544(&qword_27F7E63C0, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39388();
  sub_255DC8544(&qword_27F7E63B8, MEMORY[0x277CDE0B8]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  sub_255E39268();
  sub_255E38E48();
  sub_255DC8544(&qword_27F7E63B0, MEMORY[0x277CDDE40]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39508();
  sub_255DC8544(&qword_27F7E63A8, MEMORY[0x277CDE340]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  sub_255E38B68();
  sub_255DC8544(&qword_27F7E63A0, MEMORY[0x277CDDA98]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  a2[3] = sub_255E39268();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255D3FA00(v7, v8, v4, v3, boxed_opaque_existential_1);
}

uint64_t sub_255DB1DB0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = sub_255DBFA2C(a2, *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
  if (v4)
  {

    return sub_255D3CE1C(a1, a3);
  }

  else
  {
    v41 = v11;
    v42 = v10;
    v54 = v9;
    v13 = a1[3];
    v39 = a1[4];
    v40 = __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = *(v5 + 8);
    v15 = *(v5 + 16);
    v16 = *(v5 + 24);
    v44 = *v5;
    v45 = v14;
    v46 = v15;
    LOBYTE(v47) = v16;
    sub_255D3E5A8(v44, v14, v15, v16);
    v34 = a3;
    v17 = StringResolvable.resolved(with:)(a2);
    v19 = v18;
    v43 = 0;
    v20 = sub_255D38060(v44, v45, v46, v47);
    v35 = v19;
    v38 = &v33;
    v52 = v17;
    v53 = v19;
    v21 = MEMORY[0x28223BE20](v20);
    v37 = v32;
    v32[2] = v5;
    MEMORY[0x28223BE20](v21);
    v36 = v31;
    v31[2] = v5;
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
    v24 = sub_255D6EEE8();
    v25 = sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840);
    v26 = sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
    v44 = v13;
    v45 = MEMORY[0x277D837D0];
    v46 = v22;
    v47 = v23;
    v27 = v13;
    v28 = v39;
    v48 = v39;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v30 = v34;
    v34[3] = OpaqueTypeMetadata2;
    v44 = v27;
    v45 = MEMORY[0x277D837D0];
    v46 = v22;
    v47 = v23;
    v48 = v28;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    v30[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v30);
    sub_255E39BA8();
  }
}

uint64_t sub_255DB20F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[32];
  if (v6 > 0xFD)
  {
    goto LABEL_3;
  }

  v13 = *(v3 + 1);
  v14 = *(v3 + 2);
  v15 = *(v3 + 3);
  v16 = v3[32];
  v8 = a1;
  sub_255D91714(v13, v14, v15, v6, sub_255D348B4);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v9;
  sub_255D9176C(v13, v14, v15, v16, sub_255D34870);
  a1 = v8;
  if (a2)
  {
LABEL_3:
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a3[3] = sub_255E38AE8();
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  else
  {
    v11 = v8[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a3[3] = sub_255E38AE8();
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
  }

  return sub_255E39C58();
}

uint64_t sub_255DB22F8()
{
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v0 = sub_255E386A8();
  __swift_project_value_buffer(v0, qword_27F8152D8);
  v1 = sub_255E38688();
  v2 = sub_255E3A858();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_255D2E000, v1, v2, "No modifyView() has been implemented, returning view without modifier applied", v3, 2u);
    MEMORY[0x259C4F9E0](v3, -1, -1);
  }
}

uint64_t sub_255DB2420(uint64_t a1, uint64_t a2)
{
  v22[3] = MEMORY[0x277CE11C8];
  v22[4] = MEMORY[0x277CE11C0];
  v22[0] = a1;
  v4 = type metadata accessor for LocalStateStore(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = qword_27F7E8608;

  v9 = MEMORY[0x277D84F90];
  *(v7 + v8) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v7 + qword_27F7E8610) = 0;
  v10 = *(*v7 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v7 + 112);
  *(v7 + v11) = sub_255DC513C(v9);
  *(v7 + *(*v7 + 128)) = 0;
  *(v7 + *(*v7 + 120)) = 0;
  *(v7 + *(*v7 + 128)) = 0;
  v12 = sub_255DC84F0();
  (*(v12 + 16))(v23, v22, a2, v7, &type metadata for ToolbarModifier, v12);
  swift_setDeallocating();
  if (v2)
  {
    v13 = v7;
    v14 = *LocalStateStore.deinit();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  else
  {
    v17 = *LocalStateStore.deinit();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v20 = v24;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = View.anyView.getter(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  return v13;
}

uint64_t sub_255DB2680(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v21 = MEMORY[0x277CE11C8];
  v22 = MEMORY[0x277CE11C0];
  v20[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  v23[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  sub_255DDF1BC(a2, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  if (v3)
  {

    sub_255D3CE1C(v20, v23);
  }

  else
  {
    sub_255DDF1BC(a2, *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56));
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v24 = sub_255E38AE8();
    WitnessTable = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v23);
    sub_255E39CD8();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  v17 = v24;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v18 = View.anyView.getter(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v18;
}

uint64_t sub_255DB2934(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v6 = MEMORY[0x277CE11C8];
  v7 = MEMORY[0x277CE11C0];
  v40 = MEMORY[0x277CE11C8];
  v41 = MEMORY[0x277CE11C0];
  v39[0] = a1;
  v8 = type metadata accessor for LocalStateStore(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v14 = *(*v11 + 104);
  v42 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v11 + 112);
  *(v11 + v15) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  *(v11 + *(*v11 + 128)) = 0;
  swift_setDeallocating();
  v16 = *LocalStateStore.deinit();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_deallocClassInstance();
  v19 = *(v4 + 64);
  if (v19 > 0xFD)
  {
    goto LABEL_2;
  }

  v21 = *(v4 + 48);
  v22 = *(v4 + 56);
  v42 = *(v4 + 40);
  v43 = v21;
  v44 = v22;
  LOBYTE(v45) = v19;
  sub_255D3E5A8(v42, v21, v22, v19);
  StringResolvable.resolved(with:)(a2);
  if (v3)
  {

    sub_255D38060(v42, v43, v44, v45);
    v31 = 0;
    v6 = v40;
    v20 = v41;
    goto LABEL_5;
  }

  sub_255D38060(v42, v43, v44, v45);
  v27 = sub_255E0C470();
  v6 = v40;
  v7 = v41;
  if (v27 == 9)
  {
LABEL_2:
    v31 = v3;
    v20 = v7;
LABEL_5:
    v30 = __swift_project_boxed_opaque_existential_1(v39, v6);
    v46 = &v30;
    MEMORY[0x28223BE20](v30);
    sub_255E3A228();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A38, &qword_255E3E560);
    v37 = sub_255E38AE8();
    v23 = sub_255D38950(&qword_27F7E6A40, &qword_27F7E6A38, &qword_255E3E560);
    v34 = v20;
    v35 = v23;
    WitnessTable = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(&v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
    sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
    sub_255E39B88();
    goto LABEL_6;
  }

  v31 = __swift_project_boxed_opaque_existential_1(v39, v40);
  if (v27 <= 3)
  {
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = sub_255E3A248();
      }

      else
      {
        v28 = sub_255E3A208();
      }
    }

    else if (v27)
    {
      v28 = sub_255E3A238();
    }

    else
    {
      v28 = sub_255E3A228();
    }
  }

  else if (v27 <= 5)
  {
    if (v27 == 4)
    {
      v28 = sub_255E3A218();
    }

    else
    {
      v28 = sub_255E3A1C8();
    }
  }

  else if (v27 == 6)
  {
    v28 = sub_255E3A1D8();
  }

  else if (v27 == 7)
  {
    v28 = sub_255E3A1E8();
  }

  else
  {
    v28 = sub_255E3A1F8();
  }

  v30 = v28;
  v46 = &v30;
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6A38, &qword_255E3E560);
  v37 = sub_255E38AE8();
  v29 = sub_255D38950(&qword_27F7E6A40, &qword_27F7E6A38, &qword_255E3E560);
  v32 = v7;
  v33 = v29;
  WitnessTable = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(&v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E66F0, &unk_255E3E190);
  sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
  sub_255E39B88();
LABEL_6:
  sub_255D34630(&v36, &v42);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  v24 = v45;
  __swift_project_boxed_opaque_existential_1(&v42, v45);
  v25 = View.anyView.getter(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(&v42);
  return v25;
}

void *sub_255DB2F18(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v22[3] = MEMORY[0x277CE11C8];
  v22[4] = MEMORY[0x277CE11C0];
  v22[0] = a1;
  v7 = type metadata accessor for LocalStateStore(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = qword_27F7E8608;

  v12 = MEMORY[0x277D84F90];
  *(v10 + v11) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v10 + qword_27F7E8610) = 0;
  v13 = *(*v10 + 104);
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v14 = *(*v10 + 112);
  *(v10 + v14) = sub_255DC513C(v12);
  *(v10 + *(*v10 + 128)) = 0;
  *(v10 + *(*v10 + 120)) = 0;
  *(v10 + *(*v10 + 128)) = 0;
  swift_setDeallocating();
  v15 = *LocalStateStore.deinit();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_deallocClassInstance();
  v25 = v4;
  v18 = sub_255DC8544(&qword_27F7E6AD0, type metadata accessor for DismissAction);
  v19 = &v25;
  (*(v18 + 24))(v23, v22, a2, v6, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (!v3)
  {
    v20 = v24;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v19 = View.anyView.getter(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  return v19;
}

_OWORD *sub_255DB3194(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v26[3] = MEMORY[0x277CE11C8];
  v26[4] = MEMORY[0x277CE11C0];
  v26[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  *&v24[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = v4[7];
  v24[6] = v4[6];
  v24[7] = v17;
  v25[0] = v4[8];
  *(v25 + 9) = *(v4 + 137);
  v18 = v4[3];
  v24[2] = v4[2];
  v24[3] = v18;
  v19 = v4[5];
  v24[4] = v4[4];
  v24[5] = v19;
  v20 = v4[1];
  v24[0] = *v4;
  v24[1] = v20;
  v21 = v24;
  sub_255D74EF4(v26, a2, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  if (!v3)
  {
    v22 = v28;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v21 = View.anyView.getter(v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  return v21;
}

void *sub_255DB33C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v36 = a8;
  v33[3] = MEMORY[0x277CE11C8];
  v33[4] = MEMORY[0x277CE11C0];
  v33[0] = a1;
  v14 = type metadata accessor for LocalStateStore(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = qword_27F7E8608;

  v19 = MEMORY[0x277D84F90];
  *(v17 + v18) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v17 + qword_27F7E8610) = 0;
  v20 = *(*v17 + 104);
  v31[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v21 = *(*v17 + 112);
  *(v17 + v21) = sub_255DC513C(v19);
  *(v17 + *(*v17 + 128)) = 0;
  *(v17 + *(*v17 + 120)) = 0;
  *(v17 + *(*v17 + 128)) = 0;
  swift_setDeallocating();
  v22 = *LocalStateStore.deinit();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_deallocClassInstance();
  v31[0] = a3;
  v31[1] = a4;
  v31[2] = a5;
  v32 = a6;
  v26 = a7(v25);
  v27 = v31;
  (*(v26 + 24))(v34, v33, a2, v36, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  if (!v30)
  {
    v28 = v35;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v27 = View.anyView.getter(v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  return v27;
}

uint64_t sub_255DB3614(uint64_t a1, uint64_t a2)
{
  v18[3] = MEMORY[0x277CE11C8];
  v18[4] = MEMORY[0x277CE11C0];
  v18[0] = a1;
  v4 = type metadata accessor for LocalStateStore(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = qword_27F7E8608;

  v9 = MEMORY[0x277D84F90];
  *(v7 + v8) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v7 + qword_27F7E8610) = 0;
  v10 = *(*v7 + 104);
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v7 + 112);
  *(v7 + v11) = sub_255DC513C(v9);
  *(v7 + *(*v7 + 128)) = 0;
  *(v7 + *(*v7 + 120)) = 0;
  *(v7 + *(*v7 + 128)) = 0;
  swift_setDeallocating();
  v12 = *LocalStateStore.deinit();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_deallocClassInstance();
  v15 = sub_255DC823C();
  (*(v15 + 24))(v19, v18, a2, &type metadata for MonospacedDigitModifier, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if (!v2)
  {
    v16 = v20;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v7 = View.anyView.getter(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return v7;
}

void *sub_255DB3828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v36 = a8;
  v33[3] = MEMORY[0x277CE11C8];
  v33[4] = MEMORY[0x277CE11C0];
  v33[0] = a1;
  v14 = type metadata accessor for LocalStateStore(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = qword_27F7E8608;

  v19 = MEMORY[0x277D84F90];
  *(v17 + v18) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v17 + qword_27F7E8610) = 0;
  v20 = *(*v17 + 104);
  v31[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v21 = *(*v17 + 112);
  *(v17 + v21) = sub_255DC513C(v19);
  *(v17 + *(*v17 + 128)) = 0;
  *(v17 + *(*v17 + 120)) = 0;
  *(v17 + *(*v17 + 128)) = 0;
  swift_setDeallocating();
  v22 = *LocalStateStore.deinit();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_deallocClassInstance();
  v31[0] = a3;
  v31[1] = a4;
  v31[2] = a5;
  v32 = a6 & 1;
  v26 = a7(v25);
  v27 = v31;
  (*(v26 + 24))(v34, v33, a2, v36, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  if (!v30)
  {
    v28 = v35;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v27 = View.anyView.getter(v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  return v27;
}

uint64_t sub_255DB3A78(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v36[3] = MEMORY[0x277CE11C8];
  v36[4] = MEMORY[0x277CE11C0];
  v36[0] = a1;
  v10 = type metadata accessor for LocalStateStore(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = qword_27F7E8608;

  v15 = MEMORY[0x277D84F90];
  *(v13 + v14) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v13 + qword_27F7E8610) = 0;
  v16 = *(*v13 + 104);
  *&v34[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v6 + 32))(v13 + v16, v9, v5);
  v17 = *(*v13 + 112);
  *(v13 + v17) = sub_255DC513C(v15);
  *(v13 + *(*v13 + 128)) = 0;
  *(v13 + *(*v13 + 120)) = 0;
  *(v13 + *(*v13 + 128)) = 0;
  v18 = v2[16];
  v39 = v2[17];
  v19 = v2[18];
  v35 = v39;

  sub_255D3957C(&v39, v34, &qword_27F7E8170, &qword_255E53920);

  sub_255D3D51C(v18);
  sub_255D3D51C(v19);
  v20 = v35;
  result = sub_255D3CE1C(v36, v34);
  v22 = *(v20 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v20 + 32;
    while (v23 < *(v20 + 16))
    {
      sub_255D3CE1C(v24, v31);
      v26 = v32;
      v25 = v33;
      v27 = __swift_project_boxed_opaque_existential_1(v31, v32);
      (*(*(v25 + 8) + 16))(v30, v34, v29, v13, v26);
      if (v3)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        return v27;
      }

      ++v23;
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      result = sub_255D34630(v30, v34);
      v24 += 40;
      if (v22 == v23)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_255D34630(v34, v37);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v28 = v38;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v27 = View.anyView.getter(v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    return v27;
  }

  return result;
}

uint64_t sub_255DB3E10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v26[3] = MEMORY[0x277CE11C8];
  v26[4] = MEMORY[0x277CE11C0];
  v26[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v27[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  swift_setDeallocating();
  v20 = *LocalStateStore.deinit();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v26, MEMORY[0x277CE11C8]);
  sub_255DDF1BC(a2, a3, a4, a5, a6 & 1);
  if (v6)
  {
  }

  v23 = sub_255E38AE8();
  v27[3] = v23;
  v27[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_255E39A08();
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v24 = View.anyView.getter(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v24;
}

uint64_t sub_255DB40C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v25[3] = MEMORY[0x277CE11C8];
  v25[4] = MEMORY[0x277CE11C0];
  v25[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v26[6] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  swift_setDeallocating();
  v20 = *LocalStateStore.deinit();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_deallocClassInstance();
  sub_255DDF1BC(a2, a3, a4, a5, a6 & 1);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v25, MEMORY[0x277CE11C8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E74A0, &unk_255E538A0);
    v23 = sub_255E38AE8();
    v26[3] = v23;
    sub_255D38950(&qword_27F7E74A8, &qword_27F7E74A0, &unk_255E538A0);
    v26[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v26);
    sub_255E39C78();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v19 = View.anyView.getter(v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  return v19;
}

uint64_t sub_255DB43A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v10 = MEMORY[0x277CE11C8];
  v27[3] = MEMORY[0x277CE11C8];
  v27[4] = MEMORY[0x277CE11C0];
  v11 = a6;
  v27[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v28 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  swift_setDeallocating();
  v20 = *LocalStateStore.deinit();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v27, v10);
  if (v11 <= 0xFD)
  {
    v28 = a3;
    v29 = a4;
    v30 = a5;
    LOBYTE(v31) = a6;
    sub_255DC65BC(a3, a4, a5, a6);
    sub_255D8F9E4(a2);
    sub_255D9176C(v28, v29, v30, v31, sub_255D34870);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7568, &qword_255E48DA8);
  v23 = sub_255E38AE8();
  v31 = v23;
  sub_255D38950(&qword_27F7E7570, &qword_27F7E7568, &qword_255E48DA8);
  WitnessTable = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_255E39CF8();
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v24 = View.anyView.getter(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  return v24;
}

uint64_t sub_255DB46C0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v34 = MEMORY[0x277CE11C8];
  v35 = MEMORY[0x277CE11C0];
  v33[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  v36[10] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = *(v4 + 24);
  v18 = 1.0;
  if (v17 == 255)
  {
    v20 = 1.0;
  }

  else
  {
    sub_255DDEF98(a2, *v4, *(v4 + 8), *(v4 + 16), v17 & 1);
    if (v3)
    {
      goto LABEL_14;
    }

    v20 = v19;
  }

  v21 = *(v4 + 56);
  if (v21 != 255)
  {
    sub_255DDEF98(a2, *(v4 + 32), *(v4 + 40), *(v4 + 48), v21 & 1);
    if (v3)
    {
      goto LABEL_14;
    }

    v18 = v22;
  }

  v23 = *(v4 + 88);
  v24 = 0.5;
  if (v23 == 255)
  {
    v26 = 0.5;
LABEL_12:
    v27 = *(v4 + 120);
    if (v27 != 255)
    {
      sub_255DDEF98(a2, *(v4 + 96), *(v4 + 104), *(v4 + 112), v27 & 1);
      if (v3)
      {
        goto LABEL_14;
      }

      v24 = v28;
    }

    v30 = v34;
    v31 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v32 = sub_255E38AE8();
    v36[3] = v32;
    v36[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v36);
    MEMORY[0x259C4DC60](v30, v31, v20, v18, v26, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v9 = View.anyView.getter(v32);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    return v9;
  }

  sub_255DDEF98(a2, *(v4 + 64), *(v4 + 72), *(v4 + 80), v23 & 1);
  if (!v3)
  {
    v26 = v25;
    goto LABEL_12;
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  return v9;
}

void *sub_255DB4A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(uint64_t *__return_ptr, uint64_t *, uint64_t))
{
  v32 = a7;
  v29[3] = MEMORY[0x277CE11C8];
  v29[4] = MEMORY[0x277CE11C0];
  v29[0] = a1;
  v13 = type metadata accessor for LocalStateStore(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = qword_27F7E8608;

  v18 = MEMORY[0x277D84F90];
  *(v16 + v17) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v16 + qword_27F7E8610) = 0;
  v19 = *(*v16 + 104);
  v27[0] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v20 = *(*v16 + 112);
  *(v16 + v20) = sub_255DC513C(v18);
  *(v16 + *(*v16 + 128)) = 0;
  *(v16 + *(*v16 + 120)) = 0;
  *(v16 + *(*v16 + 128)) = 0;
  swift_setDeallocating();
  v21 = *LocalStateStore.deinit();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_deallocClassInstance();
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v28 = a6;
  v24 = v27;
  v32(v30, v29, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  if (!v7)
  {
    v25 = v31;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v24 = View.anyView.getter(v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return v24;
}

_OWORD *sub_255DB4C44(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v23[3] = MEMORY[0x277CE11C8];
  v23[4] = MEMORY[0x277CE11C0];
  v23[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  *&v22[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = v4[3];
  v22[2] = v4[2];
  v22[3] = v17;
  v22[4] = v4[4];
  v18 = v4[1];
  v22[0] = *v4;
  v22[1] = v18;
  v19 = v22;
  sub_255D92DAC(v23, a2, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (!v3)
  {
    v20 = v25;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v19 = View.anyView.getter(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  return v19;
}

_OWORD *sub_255DB4E58(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v24[3] = MEMORY[0x277CE11C8];
  v24[4] = MEMORY[0x277CE11C0];
  v24[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  *&v22[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = v4[3];
  v22[2] = v4[2];
  v22[3] = v17;
  v23[0] = v4[4];
  *(v23 + 10) = *(v4 + 74);
  v18 = v4[1];
  v22[0] = *v4;
  v22[1] = v18;
  v19 = v22;
  sub_255D95D74(v24, a2, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  if (!v3)
  {
    v20 = v26;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v19 = View.anyView.getter(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  return v19;
}

uint64_t sub_255DB5074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v29[3] = MEMORY[0x277CE11C8];
  v29[4] = MEMORY[0x277CE11C0];
  v29[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v32 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  sub_255DC0C5C(v29, a2, a3, a4, a5, a6 & 1, v30);
  swift_setDeallocating();
  if (v6)
  {
    v20 = v15;
    v21 = *LocalStateStore.deinit();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    v24 = *LocalStateStore.deinit();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v27 = v31;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v20 = View.anyView.getter(v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return v20;
}

uint64_t sub_255DB52E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277CE11C8];
  v37[3] = MEMORY[0x277CE11C8];
  v37[4] = MEMORY[0x277CE11C0];
  v37[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  *&v39[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = v3[5];
  v34 = v3[4];
  v35 = v17;
  v36[0] = v3[6];
  *(v36 + 9) = *(v3 + 105);
  v18 = v3[1];
  v30 = *v3;
  v31 = v18;
  v19 = v3[3];
  v32 = v3[2];
  v33 = v19;
  __swift_project_boxed_opaque_existential_1(v37, v5);
  sub_255DC85E0(v3, v39);
  v20 = sub_255DAAB58(a2);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v39[4] = v34;
  v39[5] = v35;
  v40[0] = v36[0];
  *(v40 + 9) = *(v36 + 9);
  v39[0] = v30;
  v39[1] = v31;
  v39[2] = v32;
  v39[3] = v33;
  sub_255DAD76C(v39);
  *&v37[5] = v20;
  v37[6] = v22;
  v37[7] = v24;
  v37[8] = v26;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D80, &unk_255E51260);
  v27 = sub_255E38AE8();
  *(&v31 + 1) = v27;
  sub_255D38950(&qword_27F7E7D88, &qword_27F7E7D80, &unk_255E51260);
  *&v32 = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(&v30);
  sub_255E39968();
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  v28 = View.anyView.getter(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  return v28;
}

_OWORD *sub_255DB5614(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t))
{
  v6 = v3;
  v25[0] = a1;
  v25[3] = MEMORY[0x277CE11C8];
  v25[4] = MEMORY[0x277CE11C0];
  v8 = type metadata accessor for LocalStateStore(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v14 = *(*v11 + 104);
  *&v23[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v11 + 112);
  *(v11 + v15) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  *(v11 + *(*v11 + 128)) = 0;
  swift_setDeallocating();
  v16 = *LocalStateStore.deinit();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_deallocClassInstance();
  v19 = v6[1];
  v23[0] = *v6;
  v23[1] = v19;
  v24[0] = v6[2];
  *(v24 + 9) = *(v6 + 41);
  v20 = v23;
  a3(v26, v25, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (!v4)
  {
    v21 = v27;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v20 = View.anyView.getter(v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  return v20;
}

_OWORD *sub_255DB583C(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v23[3] = MEMORY[0x277CE11C8];
  v23[4] = MEMORY[0x277CE11C0];
  v23[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  *&v21[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = v4[1];
  v21[0] = *v4;
  v21[1] = v17;
  v22[0] = v4[2];
  *(v22 + 9) = *(v4 + 41);
  v18 = v21;
  sub_255DABBD4(v23, a2, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (!v3)
  {
    v19 = v25;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v18 = View.anyView.getter(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  return v18;
}

uint64_t sub_255DB5A50(uint64_t a1)
{
  v3 = v1;
  v18[3] = MEMORY[0x277CE11C8];
  v18[4] = MEMORY[0x277CE11C0];
  v18[0] = a1;
  v4 = type metadata accessor for LocalStateStore(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = qword_27F7E8608;

  v9 = MEMORY[0x277D84F90];
  *(v7 + v8) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v7 + qword_27F7E8610) = 0;
  v10 = *(*v7 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v7 + 112);
  *(v7 + v11) = sub_255DC513C(v9);
  *(v7 + *(*v7 + 128)) = 0;
  *(v7 + *(*v7 + 120)) = 0;
  *(v7 + *(*v7 + 128)) = 0;
  swift_setDeallocating();
  v12 = *LocalStateStore.deinit();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_deallocClassInstance();
  v15 = v3;
  sub_255DAC898(v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if (!v2)
  {
    v16 = v20;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v15 = View.anyView.getter(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return v15;
}

uint64_t sub_255DB5C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = MEMORY[0x277CE11C8];
  v26[3] = MEMORY[0x277CE11C8];
  v26[4] = MEMORY[0x277CE11C0];
  v26[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v27 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  swift_setDeallocating();
  v20 = *LocalStateStore.deinit();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v26, v11);
  v27 = a3;
  v28 = a4;
  v29 = a5;
  LOBYTE(v30) = a6;
  sub_255D91714(a3, a4, a5, a6, sub_255D348B4);
  sub_255D8F6FC(a2);
  sub_255D9176C(v27, v28, v29, v30, sub_255D34870);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA0, &unk_255E538D0);
  sub_255E38AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA8, &qword_255E51280);
  v23 = sub_255E38AE8();
  v30 = v23;
  sub_255D38950(&qword_27F7E7DB0, &qword_27F7E7DA0, &unk_255E538D0);
  swift_getWitnessTable();
  sub_255D38950(&qword_27F7E7DB8, &qword_27F7E7DA8, &qword_255E51280);
  WitnessTable = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(&v27);
  sub_255E39A58();
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v24 = View.anyView.getter(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  return v24;
}

uint64_t *sub_255DB5FE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v33 = MEMORY[0x277CE11C8];
  v34 = MEMORY[0x277CE11C0];
  v32[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v28 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  swift_setDeallocating();
  v20 = *LocalStateStore.deinit();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_deallocClassInstance();
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  v23 = &v28;
  StringResolvable.resolved(with:)(a2);
  sub_255D38060(v28, v29, v30, v31);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    sub_255E3AB48();

    v24 = v33;
    v25 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v28 = v24;
    v29 = v25;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v35[3] = OpaqueTypeMetadata2;
    v28 = v24;
    v29 = v25;
    v35[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v35);
    sub_255E39B28();
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v23 = View.anyView.getter(OpaqueTypeMetadata2);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  return v23;
}

uint64_t sub_255DB62F8(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  v21[3] = MEMORY[0x277CE11C8];
  v21[4] = MEMORY[0x277CE11C0];
  v21[0] = a1;
  v11 = type metadata accessor for LocalStateStore(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = qword_27F7E8608;

  v16 = MEMORY[0x277D84F90];
  *(v14 + v15) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v14 + qword_27F7E8610) = 0;
  v17 = *(*v14 + 104);
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v14 + v17, v10, v6);
  v18 = *(*v14 + 112);
  *(v14 + v18) = sub_255DC513C(v16);
  *(v14 + *(*v14 + 128)) = 0;
  *(v14 + *(*v14 + 120)) = 0;
  *(v14 + *(*v14 + 128)) = 0;
  sub_255DAEC00(v21, a2, v14, v22);

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (!v3)
  {
    v19 = v23;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v2 = View.anyView.getter(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  return v2;
}

uint64_t sub_255DB6568(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v20[3] = MEMORY[0x277CE11C8];
  v20[4] = MEMORY[0x277CE11C0];
  v20[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = v4;
  sub_255DB0B28(v20, a2, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (!v3)
  {
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v17 = View.anyView.getter(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return v17;
}

uint64_t sub_255DB6764(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v27 - v10;
  v27[3] = MEMORY[0x277CE11C8];
  v27[4] = MEMORY[0x277CE11C0];
  v27[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v30 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v8 + 32))(v15 + v18, v11, v7);
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  v20 = v4[3];
  v21 = v4[4];
  *(v15 + *(*v15 + 128)) = 0;
  v22 = __swift_project_boxed_opaque_existential_1(v4, v20);
  v23 = a2;
  v24 = v22;
  (*(v21 + 16))(v28, v27, v23, v15, v20, v21);

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  if (!v3)
  {
    v25 = v29;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v24 = View.anyView.getter(v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return v24;
}

uint64_t sub_255DB6A08(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v20[3] = MEMORY[0x277CE11C8];
  v20[4] = MEMORY[0x277CE11C0];
  v20[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = v4;
  sub_255DC9910(v20, a2, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (!v3)
  {
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v17 = View.anyView.getter(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return v17;
}

uint64_t *sub_255DB6C04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v39 = MEMORY[0x277CE11C8];
  v40 = MEMORY[0x277CE11C0];
  v38[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v32 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  swift_setDeallocating();
  v20 = *LocalStateStore.deinit();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_deallocClassInstance();
  v32 = a3;
  v33 = a4;
  v34 = a5;
  LOBYTE(v35) = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  v23 = &v32;
  v24 = StringResolvable.resolved(with:)(a2);
  if (v6)
  {
    sub_255D38060(v32, v33, v34, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  else
  {
    v26 = v24;
    v27 = v25;
    sub_255D38060(v32, v33, v34, v35);
    v28 = v39;
    v29 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v36 = v26;
    v37 = v27;
    v32 = v28;
    v33 = MEMORY[0x277D837D0];
    v34 = v29;
    v35 = MEMORY[0x277D837E0];
    v30 = sub_255E39FE8();
    v41[3] = v30;
    v41[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v41);
    sub_255E39B68();

    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v23 = View.anyView.getter(v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  return v23;
}

uint64_t sub_255DB6EF0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v28[3] = MEMORY[0x277CE11C8];
  v28[4] = MEMORY[0x277CE11C0];
  v28[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v29 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  swift_setDeallocating();
  v20 = *LocalStateStore.deinit();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_deallocClassInstance();
  v29 = a3;
  v30 = a4;
  v31 = a5;
  LOBYTE(v32) = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  StringResolvable.resolved(with:)(a2);
  if (v6)
  {
  }

  sub_255D38060(v29, v30, v31, v32);
  v23 = MEMORY[0x277CE11C8];
  v34 = __swift_project_boxed_opaque_existential_1(v28, MEMORY[0x277CE11C8]);
  v24 = sub_255D6EEE8();
  v29 = v23;
  v30 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277CE11C0];
  v32 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = OpaqueTypeMetadata2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v29);
  sub_255E399F8();

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v26 = View.anyView.getter(OpaqueTypeMetadata2);
  __swift_destroy_boxed_opaque_existential_1Tm(&v29);
  return v26;
}

uint64_t sub_255DB7208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37[0] = a5;
  v37[1] = a3;
  v48 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v37 - v12;
  v14 = type metadata accessor for LocalStateStore(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = qword_27F7E8608;
  v19 = MEMORY[0x277D84F90];
  *(v17 + v18) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v17 + qword_27F7E8610) = 0;
  v20 = *(*v17 + 104);
  v45[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v10 + 32))(v17 + v20, v13, v9);
  v21 = *(*v17 + 112);
  *(v17 + v21) = sub_255DC513C(v19);
  *(v17 + *(*v17 + 128)) = 0;
  *(v17 + *(*v17 + 120)) = 0;
  *(v17 + *(*v17 + 128)) = 0;
  if (sub_255E1AAC0(a2))
  {
    if (a4)
    {
      v22 = a4;
    }

    else
    {
      v22 = v19;
    }

    v23 = sub_255D48C6C(v22);

    v43 = MEMORY[0x277CE11C8];
    v44 = MEMORY[0x277CE11C0];
    *&v42 = v48;
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = v23 + 32;

      do
      {
        sub_255D3CE1C(v25, v45);
        v26 = v46;
        v27 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        (*(v27 + 16))(&v38, &v42, a2, v17, v26, v27);
        if (v6)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          sub_255D3CE1C(&v42, v41);
          v6 = 0;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          sub_255D34630(&v38, v41);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v42);
        sub_255D34630(v41, &v42);
        v25 += 40;
        --v24;
      }

      while (v24);
      goto LABEL_21;
    }

LABEL_20:

    goto LABEL_21;
  }

  if (v37[0])
  {
    v28 = v37[0];
  }

  else
  {
    v28 = v19;
  }

  v29 = sub_255D48C6C(v28);

  v43 = MEMORY[0x277CE11C8];
  v44 = MEMORY[0x277CE11C0];
  *&v42 = v48;
  v30 = *(v29 + 16);
  if (!v30)
  {
    goto LABEL_20;
  }

  v31 = v29 + 32;

  do
  {
    sub_255D3CE1C(v31, v45);
    v32 = v46;
    v33 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    (*(v33 + 16))(&v38, &v42, a2, v17, v32, v33);
    if (v6)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      sub_255D3CE1C(&v42, v41);
      v6 = 0;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      sub_255D34630(&v38, v41);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    sub_255D34630(v41, &v42);
    v31 += 40;
    --v30;
  }

  while (v30);
LABEL_21:

  sub_255D34630(&v42, v45);
  v34 = v46;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  v35 = View.anyView.getter(v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  return v35;
}

uint64_t sub_255DB7690(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v41 - v9;
  v56[3] = MEMORY[0x277CE11C8];
  v56[4] = MEMORY[0x277CE11C0];
  v56[0] = a1;
  v11 = type metadata accessor for LocalStateStore(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = qword_27F7E8608;

  v16 = MEMORY[0x277D84F90];
  *(v14 + v15) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v14 + qword_27F7E8610) = 0;
  v17 = *(*v14 + 104);
  v57[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v14 + v17, v10, v6);
  v18 = *(*v14 + 112);
  *(v14 + v18) = sub_255DC513C(v16);
  *(v14 + *(*v14 + 128)) = 0;
  *(v14 + *(*v14 + 120)) = 0;
  *(v14 + *(*v14 + 128)) = 0;
  sub_255D3CE1C(v56, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8028, &unk_255E55A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8128, &qword_255E538F8);
  if (swift_dynamicCast())
  {
    sub_255D34630(&v50, v53);
    v61 = *v2;
    v19 = v61;
    if (v61)
    {
      v42 = v55;
      v41[1] = __swift_project_boxed_opaque_existential_1(v53, v54);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8138, &qword_255E53908);
      v20 = sub_255E38AE8();
      v44 = v41;
      v21 = *(v20 - 8);
      v45 = v3;
      v43 = v21;
      v22 = *(v21 + 64);
      MEMORY[0x28223BE20](v20);
      v24 = v41 - v23;
      v50 = *(v2 + 8);
      v60 = *(v2 + 24);
      v25 = swift_allocObject();
      *(v25 + 16) = a2;
      v26 = *(v2 + 16);
      *(v25 + 24) = *v2;
      *(v25 + 40) = v26;
      *(v25 + 56) = *(v2 + 32);
      *(v25 + 64) = v19;
      *(v25 + 72) = v14;
      sub_255D3957C(&v61, v57, &qword_27F7E8148, &qword_255E53910);
      sub_255D3957C(&v61, v57, &qword_27F7E8148, &qword_255E53910);

      sub_255DC8A90(&v50, v57);
      sub_255DC8A90(&v60, v57);

      v27 = v42;
      sub_255E38E98();

      v28 = sub_255D48A94(v19);
      v29 = *(v27 + 8);
      v30 = sub_255D38950(&qword_27F7E8140, &qword_27F7E8138, &qword_255E53908);
      v46 = v29;
      v47 = v30;
      WitnessTable = swift_getWitnessTable();
      View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v28, a2, v14, v20, WitnessTable, v57);

      (*(v43 + 8))(v24, v20);
    }

    else
    {
      v32 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8138, &qword_255E53908);
      *(&v51 + 1) = sub_255E38AE8();
      v33 = sub_255D38950(&qword_27F7E8140, &qword_27F7E8138, &qword_255E53908);
      v48 = v32;
      v49 = v33;
      v52 = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(&v50);
      sub_255E38E98();
      v34 = *(&v51 + 1);
      v35 = v52;
      v36 = __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
      v58 = v34;
      v59 = *(v35 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
      (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v36, v34);

      __swift_destroy_boxed_opaque_existential_1Tm(&v50);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  else
  {

    v52 = 0;
    v51 = 0u;
    v50 = 0u;
    sub_255D395E4(&v50, &qword_27F7E8130, &qword_255E53900);
    sub_255D3CE1C(v56, v57);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  v38 = v58;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v39 = View.anyView.getter(v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  return v39;
}

uint64_t sub_255DB7D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v57[3] = MEMORY[0x277CE11C8];
  v57[4] = MEMORY[0x277CE11C0];
  v57[0] = a1;
  v14 = type metadata accessor for LocalStateStore(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = qword_27F7E8608;

  v19 = MEMORY[0x277D84F90];
  *(v17 + v18) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v17 + qword_27F7E8610) = 0;
  v20 = *(*v17 + 104);
  v58[0] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v10 + 32))(v17 + v20, v13, v9);
  v21 = *(*v17 + 112);
  *(v17 + v21) = sub_255DC513C(v19);
  *(v17 + *(*v17 + 128)) = 0;
  *(v17 + *(*v17 + 120)) = 0;
  *(v17 + *(*v17 + 128)) = 0;
  sub_255D3CE1C(v57, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8028, &unk_255E55A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8128, &qword_255E538F8);
  if (swift_dynamicCast())
  {
    sub_255D34630(&v51, v54);
    if (a3)
    {
      v22 = v56;
      v43 = __swift_project_boxed_opaque_existential_1(v54, v55);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8150, &qword_255E55A10);
      v23 = sub_255E38AE8();
      v45 = &v43;
      v44 = *(v23 - 8);
      v24 = *(v44 + 64);
      MEMORY[0x28223BE20](v23);
      v26 = &v43 - v25;
      v27 = swift_allocObject();
      v28 = a4;
      v29 = v46;
      v27[2] = v46;
      v27[3] = a3;
      v27[4] = v28;
      v27[5] = a5;
      v27[6] = a3;
      v27[7] = v17;
      swift_bridgeObjectRetain_n();

      sub_255E38EA8();

      v30 = sub_255D48A94(a3);
      v31 = *(v22 + 8);
      v32 = sub_255D38950(&qword_27F7E8158, &qword_27F7E8150, &qword_255E55A10);
      v47 = v31;
      v48 = v32;
      WitnessTable = swift_getWitnessTable();
      View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v30, v29, v17, v23, WitnessTable, v58);

      (*(v44 + 8))(v26, v23);
    }

    else
    {
      v34 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8150, &qword_255E55A10);
      *(&v52 + 1) = sub_255E38AE8();
      v35 = sub_255D38950(&qword_27F7E8158, &qword_27F7E8150, &qword_255E55A10);
      v49 = v34;
      v50 = v35;
      v53 = swift_getWitnessTable();
      __swift_allocate_boxed_opaque_existential_1(&v51);
      sub_255E38EA8();
      v36 = *(&v52 + 1);
      v37 = v53;
      v38 = __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
      v59 = v36;
      v60 = *(v37 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
      (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v38, v36);

      __swift_destroy_boxed_opaque_existential_1Tm(&v51);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  else
  {

    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_255D395E4(&v51, &qword_27F7E8130, &qword_255E53900);
    sub_255D3CE1C(v57, v58);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  v40 = v59;
  __swift_project_boxed_opaque_existential_1(v58, v59);
  v41 = View.anyView.getter(v40);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  return v41;
}

uint64_t sub_255DB838C(uint64_t a1, uint64_t a2)
{
  v18[3] = MEMORY[0x277CE11C8];
  v18[4] = MEMORY[0x277CE11C0];
  v18[0] = a1;
  v4 = type metadata accessor for LocalStateStore(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = qword_27F7E8608;

  v9 = MEMORY[0x277D84F90];
  *(v7 + v8) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v7 + qword_27F7E8610) = 0;
  v10 = *(*v7 + 104);
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v7 + 112);
  *(v7 + v11) = sub_255DC513C(v9);
  *(v7 + *(*v7 + 128)) = 0;
  *(v7 + *(*v7 + 120)) = 0;
  *(v7 + *(*v7 + 128)) = 0;
  v12 = sub_255DC8AFC();
  (*(v12 + 16))(v19, v18, a2, v7, &type metadata for GlassEffectModifier, v12);
  swift_setDeallocating();
  v13 = *LocalStateStore.deinit();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if (!v2)
  {
    v16 = v20;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v7 = View.anyView.getter(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return v7;
}

uint64_t sub_255DB85E4(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  v11 = type metadata accessor for LocalStateStore(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = qword_27F7E8608;
  v16 = MEMORY[0x277D84F90];
  *(v14 + v15) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v14 + qword_27F7E8610) = 0;
  v17 = *(*v14 + 104);
  v35[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v14 + v17, v10, v6);
  v18 = *(*v14 + 112);
  *(v14 + v18) = sub_255DC513C(v16);
  *(v14 + *(*v14 + 128)) = 0;
  *(v14 + *(*v14 + 120)) = 0;
  v19 = *(v2 + 8);
  *(v14 + *(*v14 + 128)) = 0;
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  v21 = sub_255D48A94(v20);

  v33 = MEMORY[0x277CE11C8];
  v34 = MEMORY[0x277CE11C0];
  *&v32 = v38;
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v21 + 32;

    do
    {
      sub_255D3CE1C(v23, v35);
      v24 = v36;
      v25 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      (*(v25 + 16))(v29, &v32, a2, v14, v24, v25);
      if (v4)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        v30 = 0;
        memset(v29, 0, sizeof(v29));
        sub_255D3CE1C(&v32, v31);
        v4 = 0;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        sub_255D34630(v29, v31);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v32);
      sub_255D34630(v31, &v32);
      v23 += 40;
      --v22;
    }

    while (v22);
  }

  else
  {
  }

  sub_255D34630(&v32, v35);
  v26 = v36;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v27 = View.anyView.getter(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return v27;
}

uint64_t sub_255DB8930(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277CE11C8];
  v27 = MEMORY[0x277CE11C8];
  v28 = MEMORY[0x277CE11C0];
  v26[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  v29 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = *v3;
  v18 = v3[32];
  if (v18 > 0xFD)
  {
    goto LABEL_3;
  }

  v19 = *(v3 + 2);
  v20 = *(v3 + 3);
  v29 = *(v3 + 1);
  v30 = v19;
  v31 = v20;
  LOBYTE(v32) = v18;
  sub_255D91714(v29, v19, v20, v18, sub_255D348B4);
  sub_255D8F6FC(a2);
  v22 = v21;
  sub_255D9176C(v29, v30, v31, v32, sub_255D34870);
  v5 = v27;
  if (v22)
  {
LABEL_3:
    __swift_project_boxed_opaque_existential_1(v26, v5);
    v32 = sub_255E38AE8();
    WitnessTable = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(&v29);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v32 = sub_255E38AE8();
    WitnessTable = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(&v29);
  }

  sub_255E39C58();
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v23 = v32;
  __swift_project_boxed_opaque_existential_1(&v29, v32);
  v24 = View.anyView.getter(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(&v29);
  return v24;
}

uint64_t sub_255DB8C88(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  v12 = *(*(v37 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v37);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v43 = MEMORY[0x277CE11C8];
  v44 = MEMORY[0x277CE11C0];
  v42[0] = a1;
  v17 = type metadata accessor for LocalStateStore(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = qword_27F7E8608;

  v22 = MEMORY[0x277D84F90];
  *(v20 + v21) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v20 + qword_27F7E8610) = 0;
  v23 = *(*v20 + 104);
  v38 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v24 = *(*v20 + 112);
  *(v20 + v24) = sub_255DC513C(v22);
  *(v20 + *(*v20 + 128)) = 0;
  *(v20 + *(*v20 + 120)) = 0;
  *(v20 + *(*v20 + 128)) = 0;
  swift_setDeallocating();
  v25 = *LocalStateStore.deinit();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_deallocClassInstance();
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  v28 = v45;
  StringResolvable.resolved(with:)(a2);
  sub_255D38060(v38, v39, v40, v41);
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else
  {
    v29 = v43;
    v30 = __swift_project_boxed_opaque_existential_1(v42, v43);
    v31 = *(*(v29 - 8) + 64);
    MEMORY[0x28223BE20](v30);
    (*(v33 + 16))(&v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    v38 = sub_255E3A038();
    sub_255E39B18();

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    sub_255D3957C(v16, v36, &qword_27F7E80A8, &qword_255E53890);
    sub_255DC83E0();
    a3 = sub_255E3A038();
    sub_255D395E4(v16, &qword_27F7E80A8, &qword_255E53890);
  }

  return a3;
}

uint64_t sub_255DB907C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6 & 1;
  v26[3] = MEMORY[0x277CE11C8];
  v26[4] = MEMORY[0x277CE11C0];
  v26[0] = a1;
  v8 = type metadata accessor for LocalStateStore(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v14 = *(*v11 + 104);
  v33 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v11 + 112);
  *(v11 + v15) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  *(v11 + *(*v11 + 128)) = 0;
  v16 = sub_255DC849C();
  (*(v16 + 16))(v27, v26, a2, v11, &type metadata for AccessibilityHiddenModifier, v16);
  swift_setDeallocating();
  if (v6)
  {
    v17 = v11;
    v18 = *LocalStateStore.deinit();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    v21 = *LocalStateStore.deinit();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v24 = v28;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v17 = View.anyView.getter(v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  return v17;
}

uint64_t sub_255DB92F0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, void (*a7)(uint64_t *, uint64_t, void, uint64_t, unint64_t))
{
  v44 = a7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  v13 = *(*(v46 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v46);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v53 = MEMORY[0x277CE11C8];
  v54 = MEMORY[0x277CE11C0];
  v52[0] = a1;
  v18 = type metadata accessor for LocalStateStore(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = qword_27F7E8608;

  v23 = MEMORY[0x277D84F90];
  *(v21 + v22) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v21 + qword_27F7E8610) = 0;
  v24 = *(*v21 + 104);
  v48 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v25 = *(*v21 + 112);
  *(v21 + v25) = sub_255DC513C(v23);
  *(v21 + *(*v21 + 128)) = 0;
  *(v21 + *(*v21 + 120)) = 0;
  *(v21 + *(*v21 + 128)) = 0;
  swift_setDeallocating();
  v26 = *LocalStateStore.deinit();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_deallocClassInstance();
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v51 = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  v29 = v47;
  v30 = StringResolvable.resolved(with:)(a2);
  if (v29)
  {
    sub_255D38060(v48, v49, v50, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  else
  {
    v32 = v30;
    v33 = v31;
    sub_255D38060(v48, v49, v50, v51);
    v34 = v53;
    v35 = __swift_project_boxed_opaque_existential_1(v52, v53);
    v36 = *(*(v34 - 8) + 64);
    MEMORY[0x28223BE20](v35);
    (*(v38 + 16))(&v43 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    v39 = MEMORY[0x277CE11C8];
    v40 = MEMORY[0x277CE11C0];
    v55 = sub_255E3A038();
    v48 = v32;
    v49 = v33;
    v41 = sub_255D6EEE8();
    v44(&v48, v39, MEMORY[0x277D837D0], v40, v41);

    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    sub_255D3957C(v17, v45, &qword_27F7E80A8, &qword_255E53890);
    sub_255DC83E0();
    a3 = sub_255E3A038();
    sub_255D395E4(v17, &qword_27F7E80A8, &qword_255E53890);
  }

  return a3;
}

uint64_t sub_255DB96FC(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for AccessibilityFocusedModifier();
  v73 = *(v7 - 8);
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v71[3] = MEMORY[0x277CE11C8];
  v71[4] = MEMORY[0x277CE11C0];
  v71[0] = a1;
  v9 = type metadata accessor for LocalStateStore(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v15 = *(*v12 + 104);
  v68[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v16 = *(*v12 + 112);
  *(v12 + v16) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  v17 = *LocalStateStore.deinit();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_deallocClassInstance();
  v20 = sub_255DBFA2C(a2, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  else
  {
    v49 = v20;
    v52 = v21;
    v23 = MEMORY[0x277CE11C8];
    LODWORD(v48) = v22;
    v47 = __swift_project_boxed_opaque_existential_1(v71, MEMORY[0x277CE11C8]);
    v24 = *(v7 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
    v50 = 0;
    sub_255E39478();
    v53 = v8;
    v68[0] = v23;
    v25 = MEMORY[0x277CE11C0];
    v68[1] = MEMORY[0x277CE11C0];
    v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v63 = v23;
    v64 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v68);
    sub_255E39AB8();

    v26 = OpaqueTypeMetadata2;
    v27 = OpaqueTypeConformance2;
    v46 = __swift_project_boxed_opaque_existential_1(v68, OpaqueTypeMetadata2);
    sub_255E39458();
    LOBYTE(v56) = v63;
    v28 = v51;
    sub_255DC87A8(v4, v51);
    v47 = *(v73 + 80);
    v29 = (v47 + 33) & ~v47;
    v73 = v29;
    v30 = swift_allocObject();
    v31 = v49;
    v32 = v52;
    *(v30 + 16) = v49;
    *(v30 + 24) = v32;
    HIDWORD(v45) = v48 & 1;
    *(v30 + 32) = v48 & 1;
    sub_255DC880C(v28, v30 + v29);
    v63 = v26;
    v64 = MEMORY[0x277D839B0];
    v33 = MEMORY[0x277D839B0];
    v65 = v27;
    v66 = MEMORY[0x277D839C8];
    v34 = MEMORY[0x277D839C8];
    v48 = MEMORY[0x277CE0E40];
    v66 = swift_getOpaqueTypeMetadata2();
    v59 = v26;
    v60 = v33;
    v61 = v27;
    v62 = v34;
    v67 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(&v63);

    sub_255E39CA8();

    v36 = v66;
    v35 = v67;
    v46 = __swift_project_boxed_opaque_existential_1(&v63, v66);
    v56 = v31;
    v57 = v32;
    LOBYTE(v28) = BYTE4(v45);
    v58 = BYTE4(v45);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8118, &qword_255E57E20);
    MEMORY[0x259C4E3A0](&v55, v37);
    v54 = v55;
    v38 = v4;
    v39 = v51;
    sub_255DC87A8(v38, v51);
    v40 = v73;
    v41 = swift_allocObject();
    *(v41 + 16) = v31;
    *(v41 + 24) = v32;
    *(v41 + 32) = v28;
    sub_255DC880C(v39, v41 + v40);
    v59 = v36;
    v42 = MEMORY[0x277D839B0];
    v60 = MEMORY[0x277D839B0];
    v61 = v35;
    v43 = MEMORY[0x277D839C8];
    v62 = MEMORY[0x277D839C8];
    v73 = swift_getOpaqueTypeMetadata2();
    v72[3] = v73;
    v59 = v36;
    v60 = v42;
    v61 = v35;
    v62 = v43;
    v72[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v72);

    sub_255E39CA8();

    __swift_destroy_boxed_opaque_existential_1Tm(&v63);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    v4 = View.anyView.getter(v73);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
  }

  return v4;
}

uint64_t *sub_255DB9E2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v36 = MEMORY[0x277CE11C8];
  v37 = MEMORY[0x277CE11C0];
  v35[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v31 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  swift_setDeallocating();
  v20 = *LocalStateStore.deinit();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_deallocClassInstance();
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  sub_255D3E5A8(a3, a4, a5, a6);
  v23 = &v31;
  StringResolvable.resolved(with:)(a2);
  if (v6)
  {
    sub_255D38060(v31, v32, v33, v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {
    sub_255D38060(v31, v32, v33, v34);
    if (sub_255E02250() == 5)
    {
      sub_255D3CE1C(v35, v38);
    }

    else
    {
      v24 = v36;
      v25 = __swift_project_boxed_opaque_existential_1(v35, v36);
      v26 = *(*(v24 - 8) + 64);
      MEMORY[0x28223BE20](v25);
      (*(v28 + 16))(&v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = sub_255E3A038();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
      v40 = sub_255DC83E0();
      __swift_allocate_boxed_opaque_existential_1(v38);
      sub_255E39AC8();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v29 = v39;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v23 = View.anyView.getter(v29);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  return v23;
}

uint64_t sub_255DBA1D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v35 = a2;
  v34 = a5;
  v10 = a6;
  v45 = sub_255E39568();
  v37 = *(v45 - 8);
  v11 = *(v37 + 64);
  v12 = MEMORY[0x28223BE20](v45);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  *&v40 = MEMORY[0x277CE11C8];
  *(&v40 + 1) = MEMORY[0x277CE11C0];
  v39[0] = a1;
  v17 = type metadata accessor for LocalStateStore(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = qword_27F7E8608;

  v22 = MEMORY[0x277D84F90];
  *(v20 + v21) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v20 + qword_27F7E8610) = 0;
  v23 = *(*v20 + 104);
  *&v41 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v24 = *(*v20 + 112);
  *(v20 + v24) = sub_255DC513C(v22);
  *(v20 + *(*v20 + 128)) = 0;
  *(v20 + *(*v20 + 120)) = 0;
  *(v20 + *(*v20 + 128)) = 0;
  swift_setDeallocating();
  v25 = *LocalStateStore.deinit();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_deallocClassInstance();
  if (v10 > 0xFD)
  {
    goto LABEL_4;
  }

  *&v41 = a3;
  *(&v41 + 1) = a4;
  v42 = v34;
  LOBYTE(OpaqueTypeMetadata2) = a6;
  sub_255D94C04(a3, a4, v34, a6);
  v28 = v36;
  StringResolvable.resolved(with:)(v35);
  if (!v28)
  {
    sub_255D38060(v41, *(&v41 + 1), v42, OpaqueTypeMetadata2);
    v33 = sub_255E3AB48();

    if (v33)
    {
      if (v33 == 1)
      {
        v36 = v40;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        sub_255E39548();
      }

      else
      {
        if (v33 != 2)
        {
          goto LABEL_4;
        }

        v36 = v40;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        sub_255E39558();
      }
    }

    else
    {
      v36 = v40;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      sub_255E39538();
    }

    v41 = v36;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v38 = v36;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(&v41);
    sub_255E39AA8();
    goto LABEL_5;
  }

  sub_255D38060(v41, *(&v41 + 1), v42, OpaqueTypeMetadata2);
LABEL_4:
  v29 = v40;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  sub_255E39538();
  v41 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_255E39AA8();
  v16 = v14;
LABEL_5:
  (*(v37 + 8))(v16, v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  v30 = OpaqueTypeMetadata2;
  __swift_project_boxed_opaque_existential_1(&v41, OpaqueTypeMetadata2);
  v31 = View.anyView.getter(v30);
  __swift_destroy_boxed_opaque_existential_1Tm(&v41);
  return v31;
}

uint64_t sub_255DBA688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v23[3] = MEMORY[0x277CE11C8];
  v23[4] = MEMORY[0x277CE11C0];
  v23[0] = a1;
  v5 = type metadata accessor for LocalStateStore(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = qword_27F7E8608;

  v10 = MEMORY[0x277D84F90];
  *(v8 + v9) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v8 + qword_27F7E8610) = 0;
  v11 = *(*v8 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v12 = *(*v8 + 112);
  *(v8 + v12) = sub_255DC513C(v10);
  *(v8 + *(*v8 + 128)) = 0;
  *(v8 + *(*v8 + 120)) = 0;
  *(v8 + *(*v8 + 128)) = 0;
  v13 = sub_255DC8754();
  (*(v13 + 16))(v24, v23, a2, v8, &type metadata for AccessibilityChildrenModifier, v13);
  swift_setDeallocating();
  if (v3)
  {
    v14 = v8;
    v15 = *LocalStateStore.deinit();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    v18 = *LocalStateStore.deinit();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v21 = v25;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v14 = View.anyView.getter(v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  return v14;
}

_OWORD *sub_255DBA8F0(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  v11 = *(v2 + 16);
  v26[0] = *v2;
  v26[1] = v11;
  v27 = *(v2 + 32);
  v23[3] = MEMORY[0x277CE11C8];
  v23[4] = MEMORY[0x277CE11C0];
  v23[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v28 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v15 + v18, v10, v6);
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  v20 = v26;
  sub_255E001D8(v23, a2, v15, v24);

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (!v3)
  {
    v21 = v25;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v20 = View.anyView.getter(v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  return v20;
}

uint64_t sub_255DBAB74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v25[0] = a1;
  v25[3] = MEMORY[0x277CE11C8];
  v25[4] = MEMORY[0x277CE11C0];
  v8 = type metadata accessor for LocalStateStore(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v14 = *(*v11 + 104);
  v28 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v11 + 112);
  *(v11 + v15) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  *(v11 + *(*v11 + 128)) = 0;
  a4(v26, v25, a2, v11, a3);
  swift_setDeallocating();
  if (v4)
  {
    v16 = v11;
    v17 = *LocalStateStore.deinit();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v20 = *LocalStateStore.deinit();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v23 = v27;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v16 = View.anyView.getter(v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  return v16;
}

uint64_t sub_255DBADD0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v20[3] = MEMORY[0x277CE11C8];
  v20[4] = MEMORY[0x277CE11C0];
  v20[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = v4;
  sub_255E030A4(v20, a2, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (!v3)
  {
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v17 = View.anyView.getter(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return v17;
}

uint64_t sub_255DBAFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v34[3] = MEMORY[0x277CE11C8];
  v34[4] = MEMORY[0x277CE11C0];
  v34[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v35[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  sub_255DDEBF8(a2, a3, a4, a5, a6 & 1, v35);
  if (v6)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v20 = sub_255E386A8();
    __swift_project_value_buffer(v20, qword_27F8152D8);
    v21 = sub_255E38688();
    v22 = sub_255E3A868();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_255D2E000, v21, v22, "TagModifier Unable to resolve tag value", v23, 2u);
      MEMORY[0x259C4F9E0](v23, -1, -1);
    }

    sub_255D3CE1C(v34, v35);
  }

  else
  {
    v24 = v35[0];
    v25 = MEMORY[0x277CE11C8];
    __swift_project_boxed_opaque_existential_1(v34, MEMORY[0x277CE11C8]);
    v38 = v24;
    v26 = sub_255D6F180();
    v35[0] = v25;
    v35[1] = &type metadata for DecodableState;
    v27 = MEMORY[0x277CE11C0];
    v35[2] = MEMORY[0x277CE11C0];
    OpaqueTypeMetadata2 = v26;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v35);
    sub_255D37560(&v38, 1, v25, &type metadata for DecodableState, v27);
  }

  swift_setDeallocating();
  v28 = *LocalStateStore.deinit();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v31 = OpaqueTypeMetadata2;
  __swift_project_boxed_opaque_existential_1(v35, OpaqueTypeMetadata2);
  v32 = View.anyView.getter(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  return v32;
}

uint64_t sub_255DBB378(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  *&v35.f64[0] = MEMORY[0x277CE11C8];
  *&v35.f64[1] = MEMORY[0x277CE11C0];
  v11 = a6;
  v34[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  *&v36 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  swift_setDeallocating();
  v20 = *LocalStateStore.deinit();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_deallocClassInstance();
  if (v11 <= 0xFD)
  {
    *&v36 = a3;
    *(&v36 + 1) = a4;
    *&v37 = a5;
    BYTE8(v37) = a6;
    sub_255D94C04(a3, a4, a5, a6);
    StringResolvable.resolved(with:)(a2);
    if (v6)
    {
    }

    sub_255D38060(v36, *(&v36 + 1), v37, BYTE8(v37));
  }

  v23 = sub_255E04CD8();
  if (v23 == 7)
  {
    v36 = 0u;
    v37 = 0u;
    OpaqueTypeConformance2 = 0;
    *&v33.f64[0] = sub_255E38E68();
    *&v33.f64[1] = MEMORY[0x277CDDE48];
    __swift_allocate_boxed_opaque_existential_1(v32);
    sub_255E38E58();
    if (*(&v37 + 1))
    {
      sub_255D395E4(&v36, &qword_27F7E8120, &qword_255E538F0);
    }
  }

  else
  {
    sub_255E04704(v23, &v36);
    sub_255D34630(&v36, v32);
  }

  v30.val[0] = v35;
  __swift_project_boxed_opaque_existential_1(v34, *&v35.f64[0]);
  v30.val[1] = v33;
  __swift_project_boxed_opaque_existential_1(v32, *&v33.f64[0]);
  v24 = &v36;
  v39 = v30;
  vst2q_f64(v24, v39);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *(&v37 + 1) = OpaqueTypeMetadata2;
  v26 = &v31;
  v40 = v30;
  vst2q_f64(v26, v40);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(&v36);
  sub_255E398F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v27 = View.anyView.getter(OpaqueTypeMetadata2);
  __swift_destroy_boxed_opaque_existential_1Tm(&v36);
  return v27;
}

uint64_t sub_255DBB75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v27 = MEMORY[0x277CE11C8];
  v28 = MEMORY[0x277CE11C0];
  v26[0] = a1;
  v11 = type metadata accessor for LocalStateStore(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = qword_27F7E8608;

  v16 = MEMORY[0x277D84F90];
  *(v14 + v15) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v14 + qword_27F7E8610) = 0;
  v17 = *(*v14 + 104);
  v29[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v18 = *(*v14 + 112);
  *(v14 + v18) = sub_255DC513C(v16);
  *(v14 + *(*v14 + 128)) = 0;
  *(v14 + *(*v14 + 120)) = 0;
  *(v14 + *(*v14 + 128)) = 0;
  swift_setDeallocating();
  v19 = *LocalStateStore.deinit();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_deallocClassInstance();
  v29[0] = a3;
  v29[1] = a4;
  v29[2] = a5;
  LOBYTE(v30) = a6;
  sub_255D91714(a3, a4, a5, a6, sub_255D348B4);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v22;
  sub_255D9176C(a3, a4, a5, a6, sub_255D34870);
  if (a2)
  {
    sub_255D3CE1C(v26, v29);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8000, &qword_255E59630);
    v30 = sub_255E38AE8();
    sub_255D38950(&qword_27F7E8008, &qword_27F7E8000, &qword_255E59630);
    WitnessTable = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v29);
    sub_255E399A8();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v23 = v30;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v24 = View.anyView.getter(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return v24;
}

uint64_t sub_255DBBA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void *, uint64_t, void))
{
  v37 = a5;
  v38 = a6;
  v36[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - v12;
  v14 = MEMORY[0x277CE11C8];
  v41[3] = MEMORY[0x277CE11C8];
  v41[4] = MEMORY[0x277CE11C0];
  v41[0] = a1;
  v15 = type metadata accessor for LocalStateStore(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = qword_27F7E8608;

  v20 = MEMORY[0x277D84F90];
  *(v18 + v19) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v18 + qword_27F7E8610) = 0;
  v21 = *(*v18 + 104);
  v42[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v10 + 32))(v18 + v21, v13, v9);
  v22 = *(*v18 + 112);
  *(v18 + v22) = sub_255DC513C(v20);
  *(v18 + *(*v18 + 128)) = 0;
  *(v18 + *(*v18 + 120)) = 0;
  *(v18 + *(*v18 + 128)) = 0;
  __swift_project_boxed_opaque_existential_1(v41, v14);
  v23 = sub_255E38AE8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v36 - v26;
  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = a2;
  v28[4] = v18;

  v29 = v14;
  v30 = MEMORY[0x277CE11C0];
  v38(v37, v28, v29, MEMORY[0x277CE11C0]);

  v31 = sub_255D48A94(a3);
  v39 = v30;
  v40 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v31, a2, v18, v23, WitnessTable, v42);

  (*(v24 + 8))(v27, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  v33 = v43;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v34 = View.anyView.getter(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  return v34;
}

uint64_t *sub_255DBBE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-1] - v10;
  v28 = a3;
  v25[3] = MEMORY[0x277CE11C8];
  v25[4] = MEMORY[0x277CE11C0];
  v25[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v24 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v8 + 32))(v15 + v18, v11, v7);
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  v20 = sub_255DC80E4();
  v21 = &v28;
  (*(v20 + 16))(v26, v25, a2, v15, &type metadata for OnTapModifier, v20);

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (!v3)
  {
    v22 = v27;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v21 = View.anyView.getter(v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  return v21;
}

uint64_t sub_255DBC0E8(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v56 = MEMORY[0x277CE11C8];
  v57 = MEMORY[0x277CE11C0];
  v55[0] = a1;
  v11 = type metadata accessor for LocalStateStore(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = qword_27F7E8608;

  v16 = MEMORY[0x277D84F90];
  *(v14 + v15) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v14 + qword_27F7E8610) = 0;
  v17 = *(*v14 + 104);
  v51 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v14 + v17, v10, v6);
  v18 = *(*v14 + 112);
  *(v14 + v18) = sub_255DC513C(v16);
  *(v14 + *(*v14 + 128)) = 0;
  *(v14 + *(*v14 + 120)) = 0;
  v19 = *(v2 + 8);
  v20 = *(v2 + 16);
  *(v14 + *(*v14 + 128)) = 0;
  sub_255DDEBF8(a2, v19, v20, *(v2 + 24), *(v2 + 32), &v51);
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v55);
  }

  else
  {
    v21 = v51;
    v22 = *(v2 + 64);
    v44 = a2;
    if (v22 == 255)
    {
      v48 = 0;
    }

    else
    {
      v48 = sub_255DDF1BC(a2, *(v2 + 40), *(v2 + 48), *(v2 + 56), v22 & 1);
    }

    v23 = v56;
    v24 = v57;
    v45 = __swift_project_boxed_opaque_existential_1(v55, v56);
    v25 = sub_255D8AE34();
    v51 = v23;
    v52 = &type metadata for DecodableState;
    v53 = v24;
    v54 = v25;
    v26 = v25;
    v46 = MEMORY[0x277CE0E30];
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v50 = &v41;
    v49 = *(OpaqueTypeMetadata2 - 8);
    v27 = *(v49 + 64);
    MEMORY[0x28223BE20](OpaqueTypeMetadata2);
    v42 = &v41 - v28;
    v43 = v21;
    v60 = v21;
    v29 = swift_allocObject();
    v30 = *(v2 + 112);
    *(v29 + 112) = *(v2 + 96);
    *(v29 + 128) = v30;
    *(v29 + 144) = *(v2 + 128);
    v31 = *(v2 + 48);
    *(v29 + 48) = *(v2 + 32);
    *(v29 + 64) = v31;
    v32 = *(v2 + 80);
    *(v29 + 80) = *(v2 + 64);
    *(v29 + 96) = v32;
    v33 = *(v2 + 16);
    *(v29 + 16) = *v2;
    *(v29 + 32) = v33;
    v34 = v44;
    *(v29 + 152) = v44;
    *(v29 + 160) = v14;
    sub_255DC86F0(v2, &v51);

    sub_255E39C98();

    v35 = sub_255D48A94(*v2);
    v51 = v23;
    v52 = &type metadata for DecodableState;
    v53 = v24;
    v54 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = OpaqueTypeMetadata2;
    v38 = v42;
    View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v35, v34, v14, OpaqueTypeMetadata2, OpaqueTypeConformance2, &v58);

    (*(v49 + 8))(v38, v37);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    v39 = v59;
    __swift_project_boxed_opaque_existential_1(&v58, v59);
    v18 = View.anyView.getter(v39);
    __swift_destroy_boxed_opaque_existential_1Tm(&v58);
  }

  return v18;
}

uint64_t sub_255DBC658(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = MEMORY[0x277CE11C8];
  v44[3] = MEMORY[0x277CE11C8];
  v44[4] = MEMORY[0x277CE11C0];
  v44[0] = a1;
  v11 = type metadata accessor for LocalStateStore(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = qword_27F7E8608;

  v16 = MEMORY[0x277D84F90];
  *(v14 + v15) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v14 + qword_27F7E8610) = 0;
  v17 = *(*v14 + 104);
  *&v43[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v6 + 32))(v14 + v17, v9, v5);
  v18 = *(*v14 + 112);
  *(v14 + v18) = sub_255DC513C(v16);
  *(v14 + *(*v14 + 128)) = 0;
  *(v14 + *(*v14 + 120)) = 0;
  *(v14 + *(*v14 + 128)) = 0;
  v19 = v10;
  v20 = __swift_project_boxed_opaque_existential_1(v44, v10);
  v21 = v46;
  v22 = sub_255DBFA2C(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  if (v21)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  else
  {
    v46 = v23;
    v37 = v22;
    v36 = v24;
    sub_255DC8068(v2, v43);
    v25 = swift_allocObject();
    v26 = v43[3];
    *(v25 + 48) = v43[2];
    *(v25 + 64) = v26;
    *(v25 + 80) = v43[4];
    v27 = v43[1];
    *(v25 + 16) = v43[0];
    *(v25 + 32) = v27;
    *(v25 + 96) = a2;
    *(v25 + 104) = v14;
    sub_255DC8068(v2, &v38);
    v28 = swift_allocObject();
    v35 = v20;
    v29 = v41;
    v28[3] = v40;
    v28[4] = v29;
    v28[5] = v42;
    v30 = v39;
    v28[1] = v38;
    v28[2] = v30;
    *&v38 = v10;
    *(&v38 + 1) = v10;
    v31 = MEMORY[0x277CE11C0];
    *&v39 = MEMORY[0x277CE11C0];
    *(&v39 + 1) = MEMORY[0x277CE11C0];
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v45[3] = OpaqueTypeMetadata2;
    *&v38 = v10;
    *(&v38 + 1) = v10;
    *&v39 = v31;
    *(&v39 + 1) = v31;
    v45[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v45);

    sub_255E39BD8();

    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v19 = View.anyView.getter(OpaqueTypeMetadata2);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  return v19;
}

uint64_t sub_255DBCAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v27 = MEMORY[0x277CE11C8];
  v28 = MEMORY[0x277CE11C0];
  v26[0] = a1;
  v11 = type metadata accessor for LocalStateStore(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = qword_27F7E8608;

  v16 = MEMORY[0x277D84F90];
  *(v14 + v15) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v14 + qword_27F7E8610) = 0;
  v17 = *(*v14 + 104);
  v29[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v18 = *(*v14 + 112);
  *(v14 + v18) = sub_255DC513C(v16);
  *(v14 + *(*v14 + 128)) = 0;
  *(v14 + *(*v14 + 120)) = 0;
  *(v14 + *(*v14 + 128)) = 0;
  swift_setDeallocating();
  v19 = *LocalStateStore.deinit();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_deallocClassInstance();
  v29[0] = a3;
  v29[1] = a4;
  v29[2] = a5;
  LOBYTE(v30) = a6;
  sub_255D91714(a3, a4, a5, a6, sub_255D348B4);
  sub_255D8F6FC(a2);
  LOBYTE(v14) = v22;
  sub_255D9176C(a3, a4, a5, a6, sub_255D34870);
  if (v14)
  {
    sub_255D3CE1C(v26, v29);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FF0, &qword_255E5C660);
    v30 = sub_255E38AE8();
    sub_255D38950(&qword_27F7E7FF8, &qword_27F7E7FF0, &qword_255E5C660);
    WitnessTable = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v29);
    sub_255E39948();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v23 = v30;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v24 = View.anyView.getter(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return v24;
}

_OWORD *sub_255DBCE20(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v24[3] = MEMORY[0x277CE11C8];
  v24[4] = MEMORY[0x277CE11C0];
  v24[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  *&v22[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = v4[3];
  v22[2] = v4[2];
  v22[3] = v17;
  v23[0] = v4[4];
  *(v23 + 9) = *(v4 + 73);
  v18 = v4[1];
  v22[0] = *v4;
  v22[1] = v18;
  v19 = v22;
  sub_255E1E040(v24, a2, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  if (!v3)
  {
    v20 = v26;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v19 = View.anyView.getter(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  return v19;
}

uint64_t sub_255DBD03C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v21[3] = MEMORY[0x277CE11C8];
  v21[4] = MEMORY[0x277CE11C0];
  v21[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = sub_255DC838C();
  v18 = v4;
  (*(v17 + 24))(v22, v21, a2, &type metadata for FormStyleModifier, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (!v3)
  {
    v19 = v23;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v18 = View.anyView.getter(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  return v18;
}

uint64_t sub_255DBD258(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v20[3] = MEMORY[0x277CE11C8];
  v20[4] = MEMORY[0x277CE11C0];
  v20[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = v4;
  sub_255E23CF4(v20, a2, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (!v3)
  {
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v17 = View.anyView.getter(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return v17;
}

uint64_t sub_255DBD454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x277CE11C8];
  v22[3] = MEMORY[0x277CE11C8];
  v22[4] = MEMORY[0x277CE11C0];
  v22[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  v23[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v22, v5);
  v17 = v3[3];
  v18 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v17);
  v23[6] = (*(v18 + 16))(a2, v17, v18);
  sub_255E395E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FC0, &qword_255E53808);
  v19 = sub_255E38AE8();
  v23[3] = v19;
  sub_255D38950(&qword_27F7E7FC8, &qword_27F7E7FC0, &qword_255E53808);
  v23[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_255E39868();

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  v20 = View.anyView.getter(v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v20;
}

uint64_t sub_255DBD744(uint64_t a1, uint64_t a2)
{
  v21[3] = MEMORY[0x277CE11C8];
  v21[4] = MEMORY[0x277CE11C0];
  v21[0] = a1;
  v4 = type metadata accessor for LocalStateStore(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = qword_27F7E8608;

  v9 = MEMORY[0x277D84F90];
  *(v7 + v8) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v7 + qword_27F7E8610) = 0;
  v10 = *(*v7 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v7 + 112);
  *(v7 + v11) = sub_255DC513C(v9);
  *(v7 + *(*v7 + 128)) = 0;
  *(v7 + *(*v7 + 120)) = 0;
  *(v7 + *(*v7 + 128)) = 0;
  sub_255E24A04(v21, a2, v22);
  swift_setDeallocating();
  if (v2)
  {
    v12 = v7;
    v13 = *LocalStateStore.deinit();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    v16 = *LocalStateStore.deinit();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_deallocClassInstance();
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v19 = v23;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v12 = View.anyView.getter(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  return v12;
}

uint64_t sub_255DBD984(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = v3;
  v26[0] = a1;
  v7 = MEMORY[0x277CE11C8];
  v26[3] = MEMORY[0x277CE11C8];
  v8 = MEMORY[0x277CE11C0];
  v26[4] = MEMORY[0x277CE11C0];
  v9 = type metadata accessor for LocalStateStore(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = qword_27F7E8608;

  v14 = MEMORY[0x277D84F90];
  *(v12 + v13) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v12 + qword_27F7E8610) = 0;
  v15 = *(*v12 + 104);
  v27[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v16 = *(*v12 + 112);
  *(v12 + v16) = sub_255DC513C(v14);
  *(v12 + *(*v12 + 128)) = 0;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  swift_setDeallocating();
  v17 = *LocalStateStore.deinit();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v26, v7);
  v21 = v5[3];
  v20 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v21);
  v22 = (*(v20 + 16))(a2, v21, v20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FD0, &unk_255E53810);
  v23 = sub_255E38AE8();
  v27[3] = v23;
  sub_255D38950(&qword_27F7E7FD8, &qword_27F7E7FD0, &unk_255E53810);
  v27[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v27);
  a3(v22, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v24 = View.anyView.getter(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v24;
}

uint64_t sub_255DBDC60(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v20[3] = MEMORY[0x277CE11C8];
  v20[4] = MEMORY[0x277CE11C0];
  v20[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = v4;
  sub_255E25AAC(v20, a2, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (!v3)
  {
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v17 = View.anyView.getter(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  return v17;
}

uint64_t sub_255DBDE5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = MEMORY[0x277CE11C8];
  v29[3] = MEMORY[0x277CE11C8];
  v29[4] = MEMORY[0x277CE11C0];
  v29[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  *&v28 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v15 + v18, v10, v6);
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  __swift_project_boxed_opaque_existential_1(v29, v11);
  v20 = v3[3];
  v21 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v20);
  v22 = v30[6];
  (*(v21 + 48))(&v28, a2, v15, v20, v21);
  if (v22)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    v27 = v28;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8040, &qword_255E53880);
    v23 = sub_255E38AE8();
    v30[3] = v23;
    v24 = sub_255D38950(&qword_27F7E8048, &qword_27F7E8040, &qword_255E53880);
    v26[0] = MEMORY[0x277CE11C0];
    v26[1] = v24;
    v30[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v30);
    sub_255D3D6B0();
    sub_255E39CC8();

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v19 = View.anyView.getter(v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return v19;
}

uint64_t sub_255DBE1E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  v11 = MEMORY[0x277CE11C8];
  v29[3] = MEMORY[0x277CE11C8];
  v29[4] = MEMORY[0x277CE11C0];
  v29[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  *&v28 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v7 + 32))(v15 + v18, v10, v6);
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  __swift_project_boxed_opaque_existential_1(v29, v11);
  v20 = v3[3];
  v21 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v20);
  v22 = v30[6];
  (*(v21 + 48))(&v28, a2, v15, v20, v21);
  if (v22)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    v27 = v28;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E80D0, &qword_255E53898);
    v23 = sub_255E38AE8();
    v30[3] = v23;
    v24 = sub_255D38950(&qword_27F7E80D8, &qword_27F7E80D0, &qword_255E53898);
    v26[0] = MEMORY[0x277CE11C0];
    v26[1] = v24;
    v30[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v30);
    sub_255D3D6B0();
    sub_255E39938();

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v19 = View.anyView.getter(v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return v19;
}

uint64_t sub_255DBE574(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v55[3] = MEMORY[0x277CE11C8];
  v55[4] = MEMORY[0x277CE11C0];
  v55[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  v45 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  v17 = sub_255DBFA2C(a2, *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56));
  if (v3)
  {

    sub_255D3CE1C(v55, v56);
  }

  else
  {
    v43 = v19;
    v44 = v18;
    v59 = v17;
    v20 = MEMORY[0x277CE11C8];
    v42[6] = __swift_project_boxed_opaque_existential_1(v55, MEMORY[0x277CE11C8]);
    v21 = *(v4 + 8);
    v22 = *(v4 + 16);
    v23 = *(v4 + 24);
    v45 = *v4;
    v46 = v21;
    v47 = v22;
    LOBYTE(v48) = v23;
    sub_255D3E5A8(v45, v21, v22, v23);
    v24 = StringResolvable.resolved(with:)(a2);
    v26 = v25;
    v42[1] = 0;
    v27 = sub_255D38060(v45, v46, v47, v48);
    v42[3] = v26;
    v42[5] = v42;
    v53 = v24;
    v54 = v26;
    v28 = MEMORY[0x28223BE20](v27);
    v42[4] = v41;
    v41[2] = v4;
    MEMORY[0x28223BE20](v28);
    v42[2] = v40;
    v40[2] = v4;
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
    v31 = sub_255D6EEE8();
    v32 = sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840);
    v33 = sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
    v34 = MEMORY[0x277D837D0];
    v45 = v20;
    v46 = MEMORY[0x277D837D0];
    v47 = v29;
    v48 = v30;
    v35 = v20;
    v36 = MEMORY[0x277CE11C0];
    v49 = MEMORY[0x277CE11C0];
    v50 = v31;
    v51 = v32;
    v52 = v33;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v45 = v35;
    v46 = v34;
    v47 = v29;
    v48 = v30;
    v49 = v36;
    v50 = v31;
    v51 = v32;
    v52 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v56);
    sub_255E39BA8();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  v37 = OpaqueTypeMetadata2;
  __swift_project_boxed_opaque_existential_1(v56, OpaqueTypeMetadata2);
  v38 = View.anyView.getter(v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  return v38;
}

uint64_t sub_255DBEA80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t))
{
  v6 = v3;
  v22[0] = a1;
  v22[3] = MEMORY[0x277CE11C8];
  v22[4] = MEMORY[0x277CE11C0];
  v8 = type metadata accessor for LocalStateStore(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = qword_27F7E8608;

  v13 = MEMORY[0x277D84F90];
  *(v11 + v12) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v11 + qword_27F7E8610) = 0;
  v14 = *(*v11 + 104);
  v25 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v15 = *(*v11 + 112);
  *(v11 + v15) = sub_255DC513C(v13);
  *(v11 + *(*v11 + 128)) = 0;
  *(v11 + *(*v11 + 120)) = 0;
  *(v11 + *(*v11 + 128)) = 0;
  swift_setDeallocating();
  v16 = *LocalStateStore.deinit();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_deallocClassInstance();
  v19 = v6;
  a3(v23, v22, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (!v4)
  {
    v20 = v24;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v19 = View.anyView.getter(v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  return v19;
}

void *sub_255DBEC90(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v21[3] = MEMORY[0x277CE11C8];
  v21[4] = MEMORY[0x277CE11C0];
  v21[0] = a1;
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = qword_27F7E8608;

  v11 = MEMORY[0x277D84F90];
  *(v9 + v10) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v9 + qword_27F7E8610) = 0;
  v12 = *(*v9 + 104);
  v20[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v13 = *(*v9 + 112);
  *(v9 + v13) = sub_255DC513C(v11);
  *(v9 + *(*v9 + 128)) = 0;
  *(v9 + *(*v9 + 120)) = 0;
  *(v9 + *(*v9 + 128)) = 0;
  swift_setDeallocating();
  v14 = *LocalStateStore.deinit();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_deallocClassInstance();
  memcpy(v20, v4, sizeof(v20));
  v17 = v20;
  sub_255E36FAC(v21, a2, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (!v3)
  {
    v18 = v23;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = View.anyView.getter(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  return v17;
}

uint64_t sub_255DBEEA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v28 = a5;
  v26[3] = MEMORY[0x277CE11C8];
  v26[4] = MEMORY[0x277CE11C0];
  v11 = ~a6;
  v26[0] = a1;
  v12 = type metadata accessor for LocalStateStore(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = qword_27F7E8608;

  v17 = MEMORY[0x277D84F90];
  *(v15 + v16) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v15 + qword_27F7E8610) = 0;
  v18 = *(*v15 + 104);
  v27[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v19 = *(*v15 + 112);
  *(v15 + v19) = sub_255DC513C(v17);
  *(v15 + *(*v15 + 128)) = 0;
  *(v15 + *(*v15 + 120)) = 0;
  *(v15 + *(*v15 + 128)) = 0;
  swift_setDeallocating();
  v20 = *LocalStateStore.deinit();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_deallocClassInstance();
  if (v11)
  {
    sub_255DDF1BC(a2, a3, a4, v28, a6 & 1);
    if (v6)
    {
    }
  }

  __swift_project_boxed_opaque_existential_1(v26, MEMORY[0x277CE11C8]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E80F0, &unk_255E538B0);
  v23 = sub_255E38AE8();
  v27[3] = v23;
  sub_255D38950(&qword_27F7E80F8, &qword_27F7E80F0, &unk_255E538B0);
  v27[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_255E39C28();
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  v24 = View.anyView.getter(v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v24;
}

uint64_t ContentModifier.modifyView(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v25[3] = MEMORY[0x277CE11C8];
  v25[4] = MEMORY[0x277CE11C0];
  v25[0] = a1;
  v13 = type metadata accessor for LocalStateStore(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = qword_27F7E8608;

  v18 = MEMORY[0x277D84F90];
  *(v16 + v17) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v16 + qword_27F7E8610) = 0;
  v19 = *(*v16 + 104);
  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v9 + 32))(v16 + v19, v12, v8);
  v20 = *(*v16 + 112);
  *(v16 + v20) = sub_255DC513C(v18);
  *(v16 + *(*v16 + 128)) = 0;
  *(v16 + *(*v16 + 120)) = 0;
  *(v16 + *(*v16 + 128)) = 0;
  v21 = v24[1];
  (*(a4 + 16))(v26, v25, a2, v16, v24[0], a4);

  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (!v21)
  {
    v22 = v27;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v4 = View.anyView.getter(v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  return v4;
}

uint64_t sub_255DBF48C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_255E3A038();
  v9 = sub_255DB22F8();

  if (!v2)
  {
    v11 = MEMORY[0x277CE11C0];
    a2[3] = MEMORY[0x277CE11C8];
    a2[4] = v11;
    *a2 = v9;
  }

  return result;
}

uint64_t ContentModifier.modifyView(_:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = a1[3];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  (*(v10 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_255E3A038();
  v11 = (*(a2 + 32))();

  if (!v3)
  {
    v13 = MEMORY[0x277CE11C0];
    a3[3] = MEMORY[0x277CE11C8];
    a3[4] = v13;
    *a3 = v11;
  }

  return result;
}

uint64_t sub_255DBF6FC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (v4)
  {

    return sub_255D3CE1C(a1, a3);
  }

  else
  {
    sub_255DDF1BC(a2, v8, v9, v10, v11);
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a3[3] = sub_255E38AE8();
    a3[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_255E39CD8();
  }
}

uint64_t sub_255DBF838(uint64_t a1, unint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_255DB2680(a1, a2);
}

uint64_t sub_255DBF87C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6508, &unk_255E53830);
  a2[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E6510, &qword_27F7E6508, &unk_255E53830);
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E398C8();
}

uint64_t sub_255DBFA2C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_255E3A078();
    return v21;
  }

  if ((~a4 & 0xF000000000000007) != 0)
  {
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a1;
    v14[5] = a2;
    v14[6] = a3;
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = a3;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_255D34858(a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E3A068();
    sub_255E3A098();
    if (v19)
    {
      sub_255DC26E0(v18, v19, v20, a1, a4);
      if (!v5)
      {
        sub_255E3A098();
        sub_255DC6C84(v18, v19);
        sub_255D2F870(a4);
        return v18;
      }

      sub_255DC6C84(v18, v19);
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      *v17 = a2;
      *(v17 + 8) = a3;
      *(v17 + 16) = MEMORY[0x277D839B0];
      *(v17 + 32) = 0;
      swift_willThrow();
    }

    return sub_255D2F870(a4);
  }

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8010, &unk_255E53850);
  sub_255E3A068();
  v12 = MEMORY[0x277D839B0];
  sub_255E3A098();
  if (v19)
  {
    return v18;
  }

  sub_255D5C33C();
  swift_allocError();
  *v16 = a2;
  *(v16 + 8) = a3;
  *(v16 + 16) = v12;
  *(v16 + 32) = 0;
  swift_willThrow();
}

uint64_t sub_255DBFDEC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if ((a5 & 1) == 0)
  {

    sub_255E3A078();
  }

  if ((~a4 & 0xF000000000000007) != 0)
  {
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = a3;
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_255D34858(a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E3A068();
    sub_255E3A098();
    if (*(&v19 + 1))
    {
      sub_255DC2CD0(v19, *(&v19 + 1), v20, a1, a4);
      if (!v6)
      {
        sub_255E3A098();
        sub_255DC6C84(v19, *(&v19 + 1));
        result = sub_255D2F870(a4);
        *a6 = v19;
        *(a6 + 16) = v20;
        return result;
      }

      sub_255DC6C84(v19, *(&v19 + 1));
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      *v18 = a2;
      *(v18 + 8) = a3;
      *(v18 + 16) = &type metadata for DecodableState;
      *(v18 + 32) = 0;
      swift_willThrow();
    }

    return sub_255D2F870(a4);
  }

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
  sub_255E3A068();
  sub_255E3A098();
  result = v19;
  if (*(&v19 + 1))
  {
    *a6 = v19;
    *(a6 + 16) = v20;
  }

  else
  {
    sub_255DC6C84(v19, 0);
    sub_255D5C33C();
    swift_allocError();
    *v17 = a2;
    *(v17 + 8) = a3;
    *(v17 + 16) = &type metadata for DecodableState;
    *(v17 + 32) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_255DC01B4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v11 = v3[6];
  v12 = v3[7];
  *v13 = v3[8];
  *&v13[9] = *(v3 + 137);
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v5 = *v3;
  v6 = v3[1];
  return sub_255D74EF4(a1, a2, a3);
}

_OWORD *sub_255DC0210(uint64_t a1, unint64_t a2)
{
  v10 = v2[6];
  v11 = v2[7];
  *v12 = v2[8];
  *&v12[9] = *(v2 + 137);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v4 = *v2;
  v5 = v2[1];
  return sub_255DB3194(a1, a2);
}

uint64_t sub_255DC02EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *(v5 + 2);
  v9 = *(v5 + 24);
  return (*(a5 + 24))(a1, a2, a4, a5);
}

uint64_t sub_255DC0490(uint64_t a1, uint64_t a2)
{
  v12 = v2[8];
  v13 = v2[9];
  v14 = *(v2 + 20);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_255DB3A78(a1, a2);
}

uint64_t sub_255DC0534@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v9 <= 0xFD)
  {
    sub_255D91714(v6, v7, v8, v9, sub_255D348B4);
    sub_255D8F9E4(a2);
    sub_255D9176C(v6, v7, v8, v9, sub_255D34870);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7568, &qword_255E48DA8);
  a3[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E7570, &qword_27F7E7568, &qword_255E48DA8);
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39CF8();
}

uint64_t sub_255DC06E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9 = v3[4];
  v10 = v3[5];
  *v11 = v3[6];
  *&v11[9] = *(v3 + 105);
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  return sub_255D8C234(a1, a2, a3);
}

uint64_t sub_255DC073C(uint64_t a1, uint64_t a2)
{
  v8 = v2[4];
  v9 = v2[5];
  *v10 = v2[6];
  *&v10[9] = *(v2 + 105);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_255DB46C0(a1, a2);
}

uint64_t sub_255DC07F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v5 = *v3;
  v6 = v3[1];
  return sub_255D92DAC(a1, a2, a3);
}

_OWORD *sub_255DC0838(uint64_t a1, unint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v4 = *v2;
  v5 = v2[1];
  return sub_255DB4C44(a1, a2);
}

uint64_t sub_255DC087C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  *v9 = v3[4];
  *&v9[10] = *(v3 + 74);
  v5 = *v3;
  v6 = v3[1];
  return sub_255D95D74(a1, a2, a3);
}

_OWORD *sub_255DC08C8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  *v8 = v2[4];
  *&v8[10] = *(v2 + 74);
  v4 = *v2;
  v5 = v2[1];
  return sub_255DB4E58(a1, a2);
}

uint64_t sub_255DC0914@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  *v7 = v3[2];
  *&v7[9] = *(v3 + 41);
  return sub_255D96E58(a1, a2, a3);
}

_OWORD *sub_255DC0958(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_255DB5614(a1, a2, sub_255D96E58);
}

uint64_t sub_255DC09B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  v9 = *v2;
  v8 = __swift_project_boxed_opaque_existential_1(a1, v3);
  sub_255E38E88();
  sub_255DC8544(&qword_27F7E7BA8, MEMORY[0x277CDDE68]);
  swift_getOpaqueTypeMetadata2();
  sub_255E38C98();
  sub_255DC8544(&qword_27F7E7BA0, MEMORY[0x277CDDBD0]);
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  sub_255E38DB8();
  sub_255DC8544(&qword_27F7E7B98, MEMORY[0x277CDDDF0]);
  swift_getOpaqueTypeMetadata2();
  a2[3] = sub_255E39268();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255DA30DC(v8, v9, v3, v4, boxed_opaque_existential_1);
}

uint64_t sub_255DC0C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t *a7@<X8>)
{
  sub_255D3CE1C(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8028, &unk_255E55A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8030, &qword_255E53870);
  if (swift_dynamicCast())
  {
    sub_255D34630(v24, v29);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_255DDEF98(a2, a3, a4, a5, a6 & 1);
    if (v7)
    {
    }

    v27 = sub_255E38968();
    WitnessTable = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v26);
    sub_255E39F78();
    v20 = v27;
    v21 = WitnessTable;
    v22 = __swift_project_boxed_opaque_existential_1(v26, v27);
    a7[3] = v20;
    a7[4] = *(v21 + 16);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v22, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_255D395E4(v24, &qword_27F7E8038, &qword_255E53878);
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v15 = sub_255E386A8();
    __swift_project_value_buffer(v15, qword_27F8152D8);
    v16 = sub_255E38688();
    v17 = sub_255E3A848();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_255D2E000, v16, v17, "Shape modifier applied to non-shape view", v18, 2u);
      MEMORY[0x259C4F9E0](v18, -1, -1);
    }

    return sub_255D3CE1C(a1, a7);
  }
}

uint64_t sub_255DC0F1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_255E3A038();
  v9 = sub_255DB22F8();

  if (!v2)
  {
    v11 = MEMORY[0x277CE11C0];
    a2[3] = MEMORY[0x277CE11C8];
    a2[4] = v11;
    *a2 = v9;
  }

  return result;
}

uint64_t sub_255DC1058@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = *(v2 + 8);
  v6 = a1[4];
  v8 = *v2;
  v9 = *(v2 + 16);
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D00, &unk_255E4FB00);
  sub_255E38AE8();
  sub_255E39268();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
  sub_255E39268();
  sub_255E39268();
  a2[3] = sub_255E39268();
  sub_255D38950(&qword_27F7E7D08, &qword_27F7E7D00, &unk_255E4FB00);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
  swift_getWitnessTable();
  swift_getWitnessTable();
  a2[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255DA8994(v7, v10, v9, v8, v6, boxed_opaque_existential_1);
}

uint64_t sub_255DC129C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = v3[5];
  v18[4] = v3[4];
  v18[5] = v6;
  v19[0] = v3[6];
  *(v19 + 9) = *(v3 + 105);
  v7 = v3[1];
  v18[0] = *v3;
  v18[1] = v7;
  v8 = v3[3];
  v18[2] = v3[2];
  v18[3] = v8;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v3[4];
  v16 = v3[5];
  *v17 = v3[6];
  *&v17[9] = *(v3 + 105);
  v11 = *v3;
  v12 = v3[1];
  v13 = v3[2];
  v14 = v3[3];
  sub_255DAD734(v18, v20);
  sub_255DAAB58(a2);
  v20[4] = v15;
  v20[5] = v16;
  v21[0] = *v17;
  *(v21 + 9) = *&v17[9];
  v20[0] = v11;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v14;
  sub_255DAD76C(v20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D80, &unk_255E51260);
  a3[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E7D88, &qword_27F7E7D80, &unk_255E51260);
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39968();
}

uint64_t sub_255DC146C(uint64_t a1, uint64_t a2)
{
  v8 = v2[4];
  v9 = v2[5];
  *v10 = v2[6];
  *&v10[9] = *(v2 + 105);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_255DB52E4(a1, a2);
}

uint64_t sub_255DC14C0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  *v7 = v3[2];
  *&v7[9] = *(v3 + 41);
  return sub_255DAB4F4(a1, a2, a3);
}

_OWORD *sub_255DC1504(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_255DB5614(a1, a2, sub_255DAB4F4);
}

uint64_t sub_255DC155C@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  *v7 = v3[2];
  *&v7[9] = *(v3 + 41);
  return sub_255DABBD4(a1, a2, a3);
}

_OWORD *sub_255DC15A0(uint64_t a1, unint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  *v6 = v2[2];
  *&v6[9] = *(v2 + 41);
  return sub_255DB583C(a1, a2);
}

uint64_t sub_255DC15FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  v9 = a1[4];
  v10 = *(v3 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D91714(v6, v7, v8, v10, sub_255D348B4);
  sub_255D8F6FC(a2);
  sub_255D9176C(v6, v7, v8, v10, sub_255D34870);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA0, &unk_255E538D0);
  sub_255E38AE8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7DA8, &qword_255E51280);
  a3[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E7DB0, &qword_27F7E7DA0, &unk_255E538D0);
  swift_getWitnessTable();
  sub_255D38950(&qword_27F7E7DB8, &qword_27F7E7DA8, &qword_255E51280);
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39A58();
}

uint64_t AnyViewModifier.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v12 = sub_255E3AAE8();
  v13 = __swift_project_value_buffer(v12, qword_27F8152F0);
  if (!*(v11 + 16) || (v14 = sub_255D3CA98(v13), (v15 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v11 + 56) + 32 * v14, &v47);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError();
    sub_255DC8544(&qword_27F7E61A0, type metadata accessor for ContentRegistryError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v41 = v5;
  v52 = v6;
  v40 = a2;
  v16 = v46;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_255D3CAFC();
  sub_255E3AE28();
  if (v2)
  {
  }

  else
  {
    v39 = v16;
    v20 = v41;
    v21 = sub_255E3ABD8();
    if (*(v21 + 16))
    {
      v22 = *(v21 + 32);
      v23 = *(v21 + 40);
      v38 = *(v21 + 48);
      v37 = *(v21 + 56);
      swift_bridgeObjectRetain_n();

      v24 = sub_255E3AB68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      *(inited + 56) = &type metadata for DynamicKey;
      *(inited + 64) = v18;
      v26 = swift_allocObject();
      *(inited + 32) = v26;
      *(v26 + 16) = v22;
      *(v26 + 24) = v23;
      *(v26 + 32) = v38;
      *(v26 + 40) = v37;
      *&v47 = v24;

      sub_255D3CDA0(inited);
      v27 = v22;
      v28 = sub_255E08224(v22, v23);
      v29 = v52;
      v36 = v30;
      v35 = v28;

      v42 = v27;
      v43 = v23;
      v44 = v38;
      v45 = v37;
      sub_255E3AB78();

      v31 = v36;
      v48 = v35;
      v49 = v36;
      __swift_allocate_boxed_opaque_existential_1(&v47);
      v32 = *(v31 + 8);
      sub_255E3A7B8();
      (*(v29 + 8))(v9, v20);

      sub_255D34630(&v47, v50);
      v33 = v50[1];
      v34 = v40;
      *v40 = v50[0];
      v34[1] = v33;
      *(v34 + 4) = v51;
    }

    else
    {

      type metadata accessor for DynamicKeyError();
      sub_255DC8544(&qword_27F7E61D8, type metadata accessor for DynamicKeyError);
      swift_allocError();
      sub_255E3AB68();
      sub_255E3A9C8();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v52 + 8))(v9, v20);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AnyViewModifier.modifyView(_:with:localStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 16))(a1, a2, a3, v7, v8);
}

uint64_t sub_255DC1F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 16))(a1, a2, a3, v7, v8);
}

uint64_t AnyImageModifierBox.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v12 = sub_255E3AAE8();
  v13 = __swift_project_value_buffer(v12, qword_27F8152F0);
  if (!*(v11 + 16) || (v14 = sub_255D3CA98(v13), (v15 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v11 + 56) + 32 * v14, &v47);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError();
    sub_255DC8544(&qword_27F7E61A0, type metadata accessor for ContentRegistryError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v41 = v5;
  v52 = v6;
  v40 = a2;
  v16 = v46;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_255D3CAFC();
  sub_255E3AE28();
  if (v2)
  {
  }

  else
  {
    v39 = v16;
    v20 = v41;
    v21 = sub_255E3ABD8();
    if (*(v21 + 16))
    {
      v22 = *(v21 + 32);
      v23 = *(v21 + 40);
      v38 = *(v21 + 48);
      v37 = *(v21 + 56);
      swift_bridgeObjectRetain_n();

      v24 = sub_255E3AB68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      *(inited + 56) = &type metadata for DynamicKey;
      *(inited + 64) = v18;
      v26 = swift_allocObject();
      *(inited + 32) = v26;
      *(v26 + 16) = v22;
      *(v26 + 24) = v23;
      *(v26 + 32) = v38;
      *(v26 + 40) = v37;
      *&v47 = v24;

      sub_255D3CDA0(inited);
      v27 = v22;
      v28 = sub_255E0843C(v22, v23);
      v29 = v52;
      v36 = v30;
      v35 = v28;

      v42 = v27;
      v43 = v23;
      v44 = v38;
      v45 = v37;
      sub_255E3AB78();

      v31 = v36;
      v48 = v35;
      v49 = v36;
      __swift_allocate_boxed_opaque_existential_1(&v47);
      v32 = *(v31 + 8);
      sub_255E3A7B8();
      (*(v29 + 8))(v9, v20);

      sub_255D34630(&v47, v50);
      v33 = v50[1];
      v34 = v40;
      *v40 = v50[0];
      v34[1] = v33;
      *(v34 + 4) = v51;
    }

    else
    {

      type metadata accessor for DynamicKeyError();
      sub_255DC8544(&qword_27F7E61D8, type metadata accessor for DynamicKeyError);
      swift_allocError();
      sub_255E3AB68();
      sub_255E3A9C8();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v52 + 8))(v9, v20);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}