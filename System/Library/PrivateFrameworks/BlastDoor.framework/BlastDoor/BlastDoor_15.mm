uint64_t sub_21412FCA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, int a11, __int128 a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, char *a17)
{
  *&v122 = a5;
  *(&v122 + 1) = a6;
  v145 = a4;
  v107 = *a17;
  v21 = sub_2146D8B88();
  v119 = *(v21 - 8);
  v22 = *(v119 + 16);
  v121 = a1;
  v22(a9, a1, v21);
  v23 = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  v118 = a2;
  sub_213FB2E54(a2, a9 + v23[5], &unk_27C904F30, &unk_2146EFA20);
  v117 = a3;
  v120 = v21;
  v22(a9 + v23[6], a3, v21);
  sub_213FB2E54(v145, a9 + v23[7], &unk_27C904F30, &unk_2146EFA20);
  sub_214607DEC(&v141);
  v24 = v142;
  v102 = v143;
  v101 = v144;
  sub_214607E20(&v137);
  v99 = v139;
  v100 = v138;
  LOBYTE(a2) = v140;
  sub_214607F44(&v133);
  v104 = v135;
  v105 = v134;
  v103 = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146F3C60;
  *(v26 + 16) = sub_21438F468;
  *(v26 + 24) = v27;
  *(inited + 32) = v26;
  sub_21404328C(inited, &v129);
  v28 = v130;
  v29 = v131;
  v98 = v132;
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v31 = swift_allocObject();
  v32 = swift_allocObject();
  *(v32 + 16) = 1;
  *(v31 + 16) = sub_21438F758;
  *(v31 + 24) = v32;
  *(v30 + 32) = v31;
  sub_214042B80(v30, v127);
  v33 = v128;
  v34 = a9 + v23[8];
  *v34 = v141;
  *(v34 + 16) = v24;
  *(v34 + 24) = v102;
  *(v34 + 32) = v101;
  v35 = a9 + v23[9];
  *v35 = v137;
  *(v35 + 16) = v100;
  *(v35 + 24) = v99;
  *(v35 + 32) = a2;
  *(a9 + v23[10]) = a10;
  *(a9 + v23[11]) = a11;
  v36 = a9 + v23[12];
  *v36 = v133;
  *(v36 + 16) = v105;
  *(v36 + 24) = v104;
  *(v36 + 32) = v103;
  v37 = a9 + v23[13];
  *v37 = v129;
  *(v37 + 16) = v28;
  *(v37 + 24) = v29;
  *(v37 + 25) = v98;
  v38 = a9 + v23[14];
  v39 = v127[1];
  *v38 = v127[0];
  *(v38 + 16) = v39;
  *(v38 + 32) = v33;
  *(a9 + v23[15]) = a15;
  *(a9 + v23[16]) = a16;
  *(a9 + v23[17]) = v107;
  v41 = *v34;
  v40 = *(v34 + 8);
  v108 = *(v34 + 16);
  v110 = *(v34 + 24);
  v42 = *(v34 + 32);
  v137 = v122;
  v111 = v42;
  LOBYTE(v133) = v42;
  *&v141 = 0xD000000000000022;
  *(&v141 + 1) = 0x800000021478E110;
  v142 = 0xD00000000000001CLL;
  v143 = 0x800000021478A360;

  v43 = v41(&v137, &v133, &v141);
  if (v112)
  {

LABEL_6:

    sub_213FB2DF4(v145, &unk_27C904F30, &unk_2146EFA20);
    v52 = *(v119 + 8);
    v52(v117, v120);
    sub_213FB2DF4(v118, &unk_27C904F30, &unk_2146EFA20);
    v52(v121, v120);
    v53 = *(v34 + 8);
    v54 = *(v34 + 24);

    *v34 = v41;
    *(v34 + 8) = v40;
    *(v34 + 16) = v108;
    *(v34 + 24) = v110;
    *(v34 + 32) = v111;
    return sub_21432887C(a9, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  v106 = v37;
  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD000000000000022;
    v51[1] = 0x800000021478E110;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v109 = v38;

  v44 = *(v34 + 8);
  v45 = *(v34 + 24);

  *v34 = v41;
  *(v34 + 8) = v40;
  *(v34 + 16) = v122;
  *(v34 + 32) = v111;
  v47 = *v35;
  v46 = *(v35 + 8);
  v48 = *(v35 + 24);
  v113 = *(v35 + 16);
  v49 = *(v35 + 32);
  *&v137 = a7;
  *(&v137 + 1) = a8;
  v123 = v49;
  LOBYTE(v133) = v49;
  *&v141 = 0xD00000000000002ALL;
  *(&v141 + 1) = 0x800000021478E140;
  v142 = 0xD00000000000001CLL;
  v143 = 0x800000021478A360;

  v50 = v47(&v137, &v133, &v141);
  if ((v50 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v64 = 0xD00000000000002ALL;
    v64[1] = 0x800000021478E140;
    v64[2] = 0xD00000000000001CLL;
    v64[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v145, &unk_27C904F30, &unk_2146EFA20);
    v65 = *(v119 + 8);
    v65(v117, v120);
    sub_213FB2DF4(v118, &unk_27C904F30, &unk_2146EFA20);
    v65(v121, v120);
    v66 = *(v35 + 8);
    v67 = *(v35 + 24);

    *v35 = v47;
    *(v35 + 8) = v46;
    *(v35 + 16) = v113;
    *(v35 + 24) = v48;
    *(v35 + 32) = v123;
    return sub_21432887C(a9, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  v56 = *(v35 + 8);
  v57 = *(v35 + 24);

  *v35 = v47;
  *(v35 + 8) = v46;
  *(v35 + 16) = a7;
  *(v35 + 24) = a8;
  *(v35 + 32) = v123;
  v59 = *v36;
  v58 = *(v36 + 8);
  v61 = *(v36 + 16);
  v60 = *(v36 + 24);
  v62 = *(v36 + 32);
  v137 = a12;
  v124 = v62;
  LOBYTE(v133) = v62;
  *&v141 = 0xD000000000000027;
  *(&v141 + 1) = 0x800000021478E170;
  v142 = 0xD00000000000001CLL;
  v143 = 0x800000021478A360;
  v114 = v60;

  v116 = v59;
  v63 = v59(&v137, &v133, &v141);
  if ((v63 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v75 = 0xD000000000000027;
    v75[1] = 0x800000021478E170;
    v75[2] = 0xD00000000000001CLL;
    v75[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v145, &unk_27C904F30, &unk_2146EFA20);
    v76 = *(v119 + 8);
    v76(v117, v120);
    sub_213FB2DF4(v118, &unk_27C904F30, &unk_2146EFA20);
    v76(v121, v120);
    v77 = *(v36 + 8);
    v78 = *(v36 + 24);

    *v36 = v116;
    *(v36 + 8) = v58;
    *(v36 + 16) = v61;
    *(v36 + 24) = v114;
    *(v36 + 32) = v124;
    return sub_21432887C(a9, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  v68 = *(v36 + 8);
  v69 = *(v36 + 24);

  *v36 = v59;
  *(v36 + 8) = v58;
  *(v36 + 16) = a12;
  *(v36 + 32) = v124;
  v70 = *v37;
  v71 = *(v106 + 8);
  v72 = *(v106 + 16);
  v73 = *(v106 + 25);
  LOBYTE(v133) = *(v106 + 24);
  *&v137 = a13;
  LOBYTE(v127[0]) = v73;
  *&v141 = 0xD000000000000021;
  *(&v141 + 1) = 0x800000021478E1A0;
  v142 = 0xD00000000000001CLL;
  v143 = 0x800000021478A360;

  v74 = v70(&v137, v127, &v141);
  if ((v74 & 1) == 0)
  {
    v126 = v72;

    sub_214031C4C();
    swift_allocError();
    *v86 = 0xD000000000000021;
    v86[1] = 0x800000021478E1A0;
    v86[2] = 0xD00000000000001CLL;
    v86[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB2DF4(v145, &unk_27C904F30, &unk_2146EFA20);
    v87 = *(v119 + 8);
    v87(v117, v120);
    sub_213FB2DF4(v118, &unk_27C904F30, &unk_2146EFA20);
    v87(v121, v120);
    v88 = v133;
    v89 = *(v106 + 8);

    *v106 = v70;
    *(v106 + 8) = v71;
    *(v106 + 16) = v126;
    *(v106 + 24) = v88;
    *(v106 + 25) = v73;
    return sub_21432887C(a9, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  v79 = *(v106 + 8);

  *v106 = v70;
  *(v106 + 8) = v71;
  *(v106 + 16) = a13;
  *(v106 + 24) = 0;
  *(v106 + 25) = v73;
  v81 = *v109;
  v80 = *(v109 + 8);
  v83 = *(v109 + 16);
  v82 = *(v109 + 24);
  v84 = *(v109 + 32);
  v137 = a14;
  v125 = v84;
  LOBYTE(v133) = v84;
  *&v141 = 0xD000000000000022;
  *(&v141 + 1) = 0x800000021478E1D0;
  v142 = 0xD00000000000001CLL;
  v143 = 0x800000021478A360;

  v85 = v81(&v137, &v133, &v141);
  if (v85)
  {

    sub_213FB2DF4(v145, &unk_27C904F30, &unk_2146EFA20);
    v90 = *(v119 + 8);
    v90(v117, v120);
    sub_213FB2DF4(v118, &unk_27C904F30, &unk_2146EFA20);
    v90(v121, v120);
    v91 = *(v109 + 8);
    v92 = *(v109 + 24);

    *v109 = v81;
    *(v109 + 8) = v80;
    *(v109 + 16) = a14;
    *(v109 + 32) = v125;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v93 = 0xD000000000000022;
    v93[1] = 0x800000021478E1D0;
    v93[2] = 0xD00000000000001CLL;
    v93[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v145, &unk_27C904F30, &unk_2146EFA20);
    v94 = *(v119 + 8);
    v94(v117, v120);
    sub_213FB2DF4(v118, &unk_27C904F30, &unk_2146EFA20);
    v94(v121, v120);
    v95 = *(v109 + 8);
    v96 = *(v109 + 24);

    *v109 = v81;
    *(v109 + 8) = v80;
    *(v109 + 16) = v83;
    *(v109 + 24) = v82;
    *(v109 + 32) = v125;
    return sub_21432887C(a9, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  return result;
}

unint64_t sub_214130A5C(char a1)
{
  result = 0x6564496572616873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6C65646F6DLL;
      break;
    case 5:
      result = 0x65566D6574737973;
      break;
    case 6:
      result = 0x6449726F646E6576;
      break;
    case 7:
      result = 0x49746375646F7270;
      break;
    case 8:
      result = 0x614E6E6F63616562;
      break;
    case 9:
      result = 1701605234;
      break;
    case 10:
      result = 0x696A6F6D65;
      break;
    case 11:
      result = 0x616B63615079656BLL;
      break;
    case 12:
      result = 0x5064657473757274;
      break;
    case 13:
      result = 0x7079546572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214130C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214365A38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214130C40(uint64_t a1)
{
  v2 = sub_2142EFB54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214130C7C(uint64_t a1)
{
  v2 = sub_2142EFB54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214130CB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a2;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v3 = *(*(v180 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v180);
  v178 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v181 = &v151 - v6;
  v182 = sub_2146D8B88();
  v179 = *(v182 - 8);
  v7 = v179[8];
  v8 = MEMORY[0x28223BE20](v182);
  v10 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v183 = &v151 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D18, &qword_2146F4790);
  v184 = *(v12 - 8);
  v13 = *(v184 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v151 - v14;
  v16 = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v21 = a1[4];
  v185 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2142EFB54();
  v22 = v204;
  sub_2146DAA08();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v185);
  }

  v175 = v16;
  v176 = v19;
  v204 = v10;
  LOBYTE(v200) = 0;
  sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
  v23 = v182;
  v24 = v15;
  sub_2146DA1C8();
  LOBYTE(v200) = 1;
  sub_2142EFBA8();
  sub_2146DA1C8();
  LOBYTE(v200) = 2;
  sub_2146DA1C8();
  LOBYTE(v200) = 3;
  sub_2146DA1C8();
  LOBYTE(v200) = 4;
  v174 = sub_2146DA168();
  v180 = v26;
  LOBYTE(v200) = 5;
  v27 = sub_2146DA168();
  v29 = v28;
  v173 = v27;
  LOBYTE(v200) = 6;
  LODWORD(v172) = sub_2146DA218();
  LOBYTE(v200) = 7;
  v30 = sub_2146DA218();
  LOBYTE(v200) = 8;
  v171 = sub_2146DA168();
  v32 = v31;
  LOBYTE(v200) = 9;
  v170 = v12;
  v33 = v24;
  v169 = sub_2146DA1A8();
  LOBYTE(v200) = 10;
  *&v168 = sub_2146DA168();
  *(&v168 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D28, &qword_2146F4798);
  LOBYTE(v196) = 11;
  sub_2142EFC5C();
  sub_2146DA1C8();
  v167 = v200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D40, &qword_2146F47A0);
  LOBYTE(v196) = 12;
  sub_2142EFD10();
  sub_2146DA1C8();
  v165 = v200;
  LOBYTE(v196) = 13;
  sub_2142EFDC4();
  sub_2146DA1C8();
  v166 = 0;
  LODWORD(v164) = v200;
  v163 = v179[2];
  v35 = v176;
  v163(v176, v183, v23);
  v36 = v175;
  sub_213FB2E54(v181, v35 + *(v175 + 20), &unk_27C904F30, &unk_2146EFA20);
  v163((v35 + *(v36 + 24)), v204, v182);
  sub_213FB2E54(v178, v35 + *(v36 + 28), &unk_27C904F30, &unk_2146EFA20);
  sub_214607DEC(&v200);
  v159 = v202;
  v160 = v201;
  v158 = v203;
  sub_214607E20(&v196);
  v156 = v198;
  v157 = v197;
  v155 = v199;
  sub_214607F44(&v192);
  v162 = v194;
  v163 = v193;
  LODWORD(v161) = v195;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v151 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v38 = swift_allocObject();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2146F3C60;
  *(v38 + 16) = sub_21438F468;
  *(v38 + 24) = v39;
  *(inited + 32) = v38;
  sub_21404328C(inited, &v188);
  v154 = v189;
  v152 = v191;
  v153 = v190;
  v40 = swift_initStackObject();
  *(v40 + 16) = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v41 = swift_allocObject();
  v42 = swift_allocObject();
  *(v42 + 16) = 1;
  *(v41 + 16) = sub_21438F758;
  *(v41 + 24) = v42;
  *(v40 + 32) = v41;
  sub_214042B80(v40, v186);
  v43 = v187;
  v44 = v175;
  v45 = v176;
  v46 = &v176[*(v175 + 32)];
  *v46 = v200;
  *(v46 + 2) = v160;
  *(v46 + 3) = v159;
  v46[32] = v158;
  v47 = v45 + v44[9];
  *v47 = v196;
  *(v47 + 16) = v157;
  *(v47 + 24) = v156;
  v160 = v47;
  *(v47 + 32) = v155;
  *(v45 + v44[10]) = v172;
  *(v45 + v44[11]) = v30;
  v48 = v45 + v44[12];
  *v48 = v192;
  *(v48 + 16) = v163;
  *(v48 + 24) = v162;
  v162 = v48;
  *(v48 + 32) = v161;
  v49 = v45 + v44[13];
  *v49 = v188;
  *(v49 + 16) = v154;
  *(v49 + 24) = v153;
  v161 = v49;
  *(v49 + 25) = v152;
  v50 = v45 + v44[14];
  v51 = v186[1];
  *v50 = v186[0];
  *(v50 + 16) = v51;
  v159 = v50;
  *(v50 + 32) = v43;
  *(v45 + v44[15]) = v167;
  *(v45 + v44[16]) = v165;
  *(v45 + v44[17]) = v164;
  v53 = *v46;
  v52 = *(v46 + 1);
  v54 = *(v46 + 3);
  v163 = *(v46 + 2);
  v164 = v54;
  v55 = v46[32];
  *&v196 = v174;
  *(&v196 + 1) = v180;
  LODWORD(v172) = v55;
  LOBYTE(v192) = v55;
  *&v200 = 0xD000000000000022;
  *(&v200 + 1) = 0x800000021478E110;
  v201 = 0xD00000000000001CLL;
  v202 = 0x800000021478A360;
  v175 = 0x800000021478A360;

  v165 = v52;
  v56 = v166;
  v167 = v53;
  v57 = v53(&v196, &v192, &v200);
  v166 = v56;
  if (v56)
  {

LABEL_10:

    sub_213FB2DF4(v178, &unk_27C904F30, &unk_2146EFA20);
    v71 = v179[1];
    v71(v204, v23);
    sub_213FB2DF4(v181, &unk_27C904F30, &unk_2146EFA20);
    v71(v183, v23);
    (*(v184 + 8))(v33, v170);
    v72 = *(v46 + 1);
    v73 = *(v46 + 3);

    v74 = v165;
    *v46 = v167;
    *(v46 + 1) = v74;
    v75 = v164;
    *(v46 + 2) = v163;
    *(v46 + 3) = v75;
    v46[32] = v172;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v185);
    return sub_21432887C(v176, type metadata accessor for CircleTrustEnvelopeV1Payload);
  }

  if ((v57 & 1) == 0)
  {
    sub_214031C4C();
    v68 = swift_allocError();
    *v69 = 0xD000000000000022;
    v69[1] = 0x800000021478E110;
    v70 = v175;
    v69[2] = 0xD00000000000001CLL;
    v69[3] = v70;
    v166 = v68;
    swift_willThrow();

    goto LABEL_10;
  }

  v58 = *(v46 + 1);
  v59 = *(v46 + 3);

  v60 = v165;
  *v46 = v167;
  *(v46 + 1) = v60;
  v61 = v180;
  *(v46 + 2) = v174;
  *(v46 + 3) = v61;
  v46[32] = v172;
  v63 = *v160;
  v62 = *(v160 + 8);
  v64 = *(v160 + 24);
  v167 = *(v160 + 16);
  v65 = *(v160 + 32);
  *&v196 = v173;
  *(&v196 + 1) = v29;
  LOBYTE(v192) = v65;
  *&v200 = 0xD00000000000002ALL;
  *(&v200 + 1) = 0x800000021478E140;
  v201 = 0xD00000000000001CLL;
  v202 = v175;
  v172 = v64;

  v174 = v62;
  v66 = v166;
  v180 = v63;
  v67 = v63(&v196, &v192, &v200);
  v166 = v66;
  if (v66)
  {

LABEL_16:

    sub_213FB2DF4(v178, &unk_27C904F30, &unk_2146EFA20);
    v91 = v179[1];
    v91(v204, v23);
    sub_213FB2DF4(v181, &unk_27C904F30, &unk_2146EFA20);
    v91(v183, v23);
    (*(v184 + 8))(v33, v170);
    v92 = v160;
    v93 = *(v160 + 8);
    v94 = *(v160 + 24);

    v95 = v174;
    *v92 = v180;
    *(v92 + 8) = v95;
    v96 = v172;
    *(v92 + 16) = v167;
    *(v92 + 24) = v96;
    *(v92 + 32) = v65;
    goto LABEL_11;
  }

  if ((v67 & 1) == 0)
  {
    sub_214031C4C();
    v88 = swift_allocError();
    *v89 = 0xD00000000000002ALL;
    v89[1] = 0x800000021478E140;
    v90 = v175;
    v89[2] = 0xD00000000000001CLL;
    v89[3] = v90;
    v166 = v88;
    swift_willThrow();

    goto LABEL_16;
  }

  v76 = v175;

  v77 = v160;
  v78 = *(v160 + 8);
  v79 = *(v160 + 24);

  v80 = v173;
  v81 = v174;
  *v77 = v180;
  *(v77 + 8) = v81;
  *(v77 + 16) = v80;
  *(v77 + 24) = v29;
  *(v77 + 32) = v65;
  v83 = *v162;
  v82 = *(v162 + 8);
  v84 = *(v162 + 24);
  v167 = *(v162 + 16);
  v85 = *(v162 + 32);
  *&v196 = v171;
  *(&v196 + 1) = v32;
  LODWORD(v180) = v85;
  LOBYTE(v192) = v85;
  *&v200 = 0xD000000000000027;
  *(&v200 + 1) = 0x800000021478E170;
  v201 = 0xD00000000000001CLL;
  v202 = v76;
  v172 = v84;

  v173 = v82;
  v174 = v83;
  v86 = v166;
  v87 = v83(&v196, &v192, &v200);
  v166 = v86;
  if (v86)
  {

LABEL_21:

    sub_213FB2DF4(v178, &unk_27C904F30, &unk_2146EFA20);
    v111 = v179[1];
    v111(v204, v23);
    sub_213FB2DF4(v181, &unk_27C904F30, &unk_2146EFA20);
    v111(v183, v23);
    (*(v184 + 8))(v33, v170);
    v112 = v162;
    v113 = *(v162 + 8);
    v114 = *(v162 + 24);

    v115 = v173;
    *v112 = v174;
    *(v112 + 8) = v115;
    v116 = v172;
    *(v112 + 16) = v167;
    *(v112 + 24) = v116;
    *(v112 + 32) = v180;
    goto LABEL_11;
  }

  if ((v87 & 1) == 0)
  {
    sub_214031C4C();
    v108 = swift_allocError();
    *v109 = 0xD000000000000027;
    v109[1] = 0x800000021478E170;
    v110 = v175;
    v109[2] = 0xD00000000000001CLL;
    v109[3] = v110;
    v166 = v108;
    swift_willThrow();

    goto LABEL_21;
  }

  v97 = v175;

  v98 = v162;
  v99 = *(v162 + 8);
  v100 = *(v162 + 24);

  v101 = v173;
  *v98 = v174;
  *(v98 + 8) = v101;
  *(v98 + 16) = v171;
  *(v98 + 24) = v32;
  *(v98 + 32) = v180;
  v103 = *v161;
  v102 = *(v161 + 8);
  v171 = *(v161 + 16);
  v172 = 0x800000021478E1A0;
  v104 = *(v161 + 25);
  LOBYTE(v192) = *(v161 + 24);
  *&v196 = v169;
  LODWORD(v180) = v104;
  LOBYTE(v186[0]) = v104;
  *&v200 = 0xD000000000000021;
  *(&v200 + 1) = 0x800000021478E1A0;
  v201 = 0xD00000000000001CLL;
  v202 = v97;

  v173 = v102;
  v174 = v103;
  v105 = v166;
  v106 = v103(&v196, v186, &v200);
  v166 = v105;
  if (v105)
  {

    sub_213FB2DF4(v178, &unk_27C904F30, &unk_2146EFA20);
    v107 = v179[1];
    v107(v204, v23);
    sub_213FB2DF4(v181, &unk_27C904F30, &unk_2146EFA20);
    v107(v183, v23);
    (*(v184 + 8))(v33, v170);

LABEL_26:
    v132 = v192;
    v133 = v161;
    v134 = *(v161 + 8);

    v135 = v173;
    *v133 = v174;
    *(v133 + 8) = v135;
    *(v133 + 16) = v171;
    *(v133 + 24) = v132;
    *(v133 + 25) = v180;
    goto LABEL_11;
  }

  if ((v106 & 1) == 0)
  {

    sub_214031C4C();
    v127 = swift_allocError();
    v128 = v172;
    *v129 = 0xD000000000000021;
    v129[1] = v128;
    v130 = v175;
    v129[2] = 0xD00000000000001CLL;
    v129[3] = v130;
    v166 = v127;
    swift_willThrow();
    sub_213FB2DF4(v178, &unk_27C904F30, &unk_2146EFA20);
    v131 = v179[1];
    v131(v204, v23);
    sub_213FB2DF4(v181, &unk_27C904F30, &unk_2146EFA20);
    v131(v183, v23);
    (*(v184 + 8))(v33, v170);
    goto LABEL_26;
  }

  v117 = v175;

  v118 = v161;
  v119 = *(v161 + 8);

  v120 = v173;
  *v118 = v174;
  *(v118 + 8) = v120;
  *(v118 + 16) = v169;
  *(v118 + 24) = 0;
  *(v118 + 25) = v180;
  v122 = *v159;
  v121 = *(v159 + 8);
  v123 = *(v159 + 24);
  v172 = *(v159 + 16);
  v173 = v123;
  v124 = *(v159 + 32);
  v196 = v168;
  LOBYTE(v192) = v124;
  *&v200 = 0xD000000000000022;
  *(&v200 + 1) = 0x800000021478E1D0;
  v201 = 0xD00000000000001CLL;
  v202 = v117;

  v174 = v121;
  v125 = v166;
  v180 = v122;
  v126 = v122(&v196, &v192, &v200);
  v166 = v125;
  if (v125)
  {

LABEL_30:

    sub_213FB2DF4(v178, &unk_27C904F30, &unk_2146EFA20);
    v145 = v179[1];
    v145(v204, v23);
    sub_213FB2DF4(v181, &unk_27C904F30, &unk_2146EFA20);
    v145(v183, v23);
    (*(v184 + 8))(v33, v170);
    v146 = v159;
    v147 = *(v159 + 8);
    v148 = *(v159 + 24);

    v149 = v174;
    *v146 = v180;
    *(v146 + 8) = v149;
    v150 = v173;
    *(v146 + 16) = v172;
    *(v146 + 24) = v150;
    *(v146 + 32) = v124;
    goto LABEL_11;
  }

  if ((v126 & 1) == 0)
  {
    sub_214031C4C();
    v142 = swift_allocError();
    *v143 = 0xD000000000000022;
    v143[1] = 0x800000021478E1D0;
    v144 = v175;
    v143[2] = 0xD00000000000001CLL;
    v143[3] = v144;
    v166 = v142;
    swift_willThrow();
    goto LABEL_30;
  }

  sub_213FB2DF4(v178, &unk_27C904F30, &unk_2146EFA20);
  v136 = v179[1];
  v136(v204, v23);
  sub_213FB2DF4(v181, &unk_27C904F30, &unk_2146EFA20);
  v136(v183, v23);
  (*(v184 + 8))(v33, v170);
  v137 = v159;
  v138 = *(v159 + 8);
  v139 = *(v159 + 24);

  v140 = v174;
  *v137 = v180;
  *(v137 + 8) = v140;
  v141 = *(&v168 + 1);
  *(v137 + 16) = v168;
  *(v137 + 24) = v141;
  *(v137 + 32) = v124;
  sub_214328704(v176, v177, type metadata accessor for CircleTrustEnvelopeV1Payload);
  return __swift_destroy_boxed_opaque_existential_1(v185);
}

uint64_t sub_214132408(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D60, &qword_2146F47A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142EFB54();
  sub_2146DAA28();
  LOBYTE(v32) = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v30 = v6;
  v29 = type metadata accessor for CircleTrustEnvelopeV1Payload(0);
  v12 = *(v29 + 20);
  LOBYTE(v32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  sub_2142EFE18();
  sub_2146DA388();
  v13 = v29;
  v14 = *(v29 + 24);
  LOBYTE(v32) = 2;
  sub_2146DA388();
  v15 = v13[7];
  LOBYTE(v32) = 3;
  sub_2146DA388();
  v28 = v5;
  v16 = v3 + v13[8];
  if (!*(v16 + 24))
  {
    goto LABEL_9;
  }

  v17 = *(v16 + 16);
  LOBYTE(v32) = 4;

  sub_2146DA328();

  v18 = v3 + v13[9];
  if (!*(v18 + 24))
  {
    goto LABEL_9;
  }

  v19 = *(v18 + 16);
  LOBYTE(v32) = 5;

  sub_2146DA328();

  v20 = *(v3 + v13[10]);
  LOBYTE(v32) = 6;
  sub_2146DA3D8();
  v21 = *v13[11];
  LOBYTE(v32) = 7;
  sub_2146DA3D8();
  if (!*(v13[12] + 0x18))
  {
    goto LABEL_9;
  }

  v22 = *(v13[12] + 0x10);
  LOBYTE(v32) = 8;

  sub_2146DA328();

  v23 = v3 + v13[13];
  if (*(v23 + 24))
  {
    goto LABEL_9;
  }

  v24 = *(v23 + 16);
  LOBYTE(v32) = 9;
  sub_2146DA368();
  v25 = v3 + v13[14];
  if (*(v25 + 24))
  {
    v26 = *(v25 + 16);
    LOBYTE(v32) = 10;

    sub_2146DA328();

    v32 = *(v3 + v13[15]);
    v31 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D28, &qword_2146F4798);
    sub_2142EFECC();
    sub_2146DA388();
    v32 = *(v3 + v13[16]);
    v31 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D40, &qword_2146F47A0);
    sub_2142EFF80();
    sub_2146DA388();
    LOBYTE(v32) = *(v3 + MEMORY[0x44]);
    v31 = 13;
    sub_2142F0034();
    v27 = v28;
    sub_2146DA388();
    return (*(v30 + 8))(v9, v27);
  }

  else
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214132A80@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001ELL;
  v19 = 0x800000021478E200;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ELL;
    v15[1] = 0x800000021478E200;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214132C84(uint64_t a1)
{
  v2 = sub_2142F0088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214132CC0(uint64_t a1)
{
  v2 = sub_2142F0088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214132CFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906D90, &unk_2146F47B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0088();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DA0, qword_21476BCB0);
  LOBYTE(v36) = 0;
  sub_2142F00DC();
  sub_2146DA1C8();
  v11 = v31;
  LOBYTE(v36) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v12 = v31;
  LOBYTE(v31) = 2;
  v13 = sub_2146DA1A8();
  v28 = v11;
  v27 = v12;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  v17[1] = vdupq_n_s64(1uLL);
  *(v16 + 16) = sub_21438F468;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_21404328C(inited, &v31);
  v19 = v31;
  v18 = v32;
  v36 = v30;
  v26 = BYTE1(v34);
  v35 = BYTE1(v34);
  v31 = 0xD00000000000001ELL;
  v32 = 0x800000021478E200;
  v29 = 0x800000021478E200;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v25 = v19;
  v20 = v19(&v36, &v35, &v31);
  v21 = v28;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v21;
    *(a2 + 8) = v27;
    *(a2 + 16) = v25;
    *(a2 + 24) = v18;
    *(a2 + 32) = v30;
    *(a2 + 40) = 0;
    *(a2 + 41) = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v29;
    *v23 = 0xD00000000000001ELL;
    v23[1] = v22;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214133148(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DB8, &qword_2146F47C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v16 = *(v1 + 8);
  v15 = v1[4];
  v14 = *(v1 + 40);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0088();
  sub_2146DAA28();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DA0, qword_21476BCB0);
  sub_2142F01B4();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v11 = v14;
  v19 = v16;
  v18 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v11 & 1) == 0)
  {
    v17 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141333B4(uint64_t a1)
{
  v2 = sub_2142F028C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141333F0(uint64_t a1)
{
  v2 = sub_2142F028C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413342C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DD0, &qword_2146F47C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F028C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
    sub_2142F02E0();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141335AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DF0, &qword_2146F47D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F028C();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
  sub_2142F0394();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_214133750@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001ALL;
  v19 = 0x800000021478E220;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ALL;
    v15[1] = 0x800000021478E220;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214133954(uint64_t a1)
{
  v2 = sub_2142F0448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214133990(uint64_t a1)
{
  v2 = sub_2142F0448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141339CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E00, &unk_2146F47E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0448();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E10, qword_21476B1F0);
  LOBYTE(v36) = 0;
  sub_2142F049C();
  sub_2146DA1C8();
  v11 = v31;
  LOBYTE(v36) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v12 = v31;
  LOBYTE(v31) = 2;
  v13 = sub_2146DA1A8();
  v28 = v11;
  v27 = v12;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  v17[1] = vdupq_n_s64(1uLL);
  *(v16 + 16) = sub_21438F468;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_21404328C(inited, &v31);
  v19 = v31;
  v18 = v32;
  v36 = v30;
  v26 = BYTE1(v34);
  v35 = BYTE1(v34);
  v31 = 0xD00000000000001ALL;
  v32 = 0x800000021478E220;
  v29 = 0x800000021478E220;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v25 = v19;
  v20 = v19(&v36, &v35, &v31);
  v21 = v28;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v21;
    *(a2 + 8) = v27;
    *(a2 + 16) = v25;
    *(a2 + 24) = v18;
    *(a2 + 32) = v30;
    *(a2 + 40) = 0;
    *(a2 + 41) = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v29;
    *v23 = 0xD00000000000001ALL;
    v23[1] = v22;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214133E18(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E28, &qword_2146F47F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v16 = *(v1 + 8);
  v15 = v1[4];
  v14 = *(v1 + 40);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0448();
  sub_2146DAA28();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E10, qword_21476B1F0);
  sub_2142F0574();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v11 = v14;
  v19 = v16;
  v18 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v11 & 1) == 0)
  {
    v17 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214134084(uint64_t a1)
{
  v2 = sub_2142F064C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141340C0(uint64_t a1)
{
  v2 = sub_2142F064C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141340FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E40, &qword_2146F47F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F064C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
    sub_2142F02E0();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413427C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E50, &qword_2146F4800);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F064C();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
  sub_2142F0394();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_214134420@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD00000000000001ALL;
  v19 = 0x800000021478E240;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000001ALL;
    v15[1] = 0x800000021478E240;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214134624(uint64_t a1)
{
  v2 = sub_2142F06A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214134660(uint64_t a1)
{
  v2 = sub_2142F06A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413469C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E58, &qword_2146F4808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F06A0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E68, &qword_2146F4810);
  LOBYTE(v36) = 0;
  sub_2142F06F4();
  sub_2146DA1C8();
  v11 = v31;
  LOBYTE(v36) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v12 = v31;
  LOBYTE(v31) = 2;
  v13 = sub_2146DA1A8();
  v28 = v11;
  v27 = v12;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  v17[1] = vdupq_n_s64(1uLL);
  *(v16 + 16) = sub_21438F468;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_21404328C(inited, &v31);
  v19 = v31;
  v18 = v32;
  v36 = v30;
  v26 = BYTE1(v34);
  v35 = BYTE1(v34);
  v31 = 0xD00000000000001ALL;
  v32 = 0x800000021478E240;
  v29 = 0x800000021478E240;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v25 = v19;
  v20 = v19(&v36, &v35, &v31);
  v21 = v28;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v21;
    *(a2 + 8) = v27;
    *(a2 + 16) = v25;
    *(a2 + 24) = v18;
    *(a2 + 32) = v30;
    *(a2 + 40) = 0;
    *(a2 + 41) = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v29;
    *v23 = 0xD00000000000001ALL;
    v23[1] = v22;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214134AE8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E80, &qword_2146F4818);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v16 = *(v1 + 8);
  v15 = v1[4];
  v14 = *(v1 + 40);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F06A0();
  sub_2146DAA28();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E68, &qword_2146F4810);
  sub_2142F07CC();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v11 = v14;
  v19 = v16;
  v18 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v11 & 1) == 0)
  {
    v17 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214134D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000214794960 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_2146DA6A8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_214134DE8(uint64_t a1)
{
  v2 = sub_2142F08A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214134E24(uint64_t a1)
{
  v2 = sub_2142F08A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214134E60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906E98, &qword_2146F4820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F08A4();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
    sub_2142F02E0();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214134FE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EA8, &qword_2146F4828);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F08A4();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906DE0, &qword_2146F47D0);
  sub_2142F0394();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_214135184@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD000000000000024;
  v19 = 0x800000021478E260;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD000000000000024;
    v15[1] = 0x800000021478E260;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214135388(uint64_t a1)
{
  v2 = sub_2142F08F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141353C4(uint64_t a1)
{
  v2 = sub_2142F08F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214135400@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EB0, &unk_2146F4830);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F08F8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EC0, &qword_21476BDF0);
  LOBYTE(v36) = 0;
  sub_2142F094C();
  sub_2146DA1C8();
  v11 = v31;
  LOBYTE(v36) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v12 = v31;
  LOBYTE(v31) = 2;
  v13 = sub_2146DA1A8();
  v28 = v11;
  v27 = v12;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  v17[1] = vdupq_n_s64(1uLL);
  *(v16 + 16) = sub_21438F468;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_21404328C(inited, &v31);
  v19 = v31;
  v18 = v32;
  v36 = v30;
  v26 = BYTE1(v34);
  v35 = BYTE1(v34);
  v31 = 0xD000000000000024;
  v32 = 0x800000021478E260;
  v29 = 0x800000021478E260;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v25 = v19;
  v20 = v19(&v36, &v35, &v31);
  v21 = v28;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v21;
    *(a2 + 8) = v27;
    *(a2 + 16) = v25;
    *(a2 + 24) = v18;
    *(a2 + 32) = v30;
    *(a2 + 40) = 0;
    *(a2 + 41) = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v29;
    *v23 = 0xD000000000000024;
    v23[1] = v22;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413584C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906ED8, &qword_2146F4840);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v16 = *(v1 + 8);
  v15 = v1[4];
  v14 = *(v1 + 40);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F08F8();
  sub_2146DAA28();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906EC0, &qword_21476BDF0);
  sub_2142F0A00();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v11 = v14;
  v19 = v16;
  v18 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v11 & 1) == 0)
  {
    v17 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214135AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6564496572616873 && a2 == 0xEF7265696669746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214135B48(uint64_t a1)
{
  v2 = sub_2142F0AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214135B84(uint64_t a1)
{
  v2 = sub_2142F0AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214135C04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F00, &qword_2146F4850);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0AB4();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_214135D94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F00, &qword_2146F4850);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0AB4();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_214135F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_214135FB4(uint64_t a1)
{
  v2 = sub_2142F0B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214135FF0(uint64_t a1)
{
  v2 = sub_2142F0B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413602C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F08, &qword_2146F4858);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0B08();
  sub_2146DAA08();
  if (!v2)
  {
    v11 = sub_2146DA1A8();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214136180(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F18, &qword_2146F4860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0B08();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141362D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F18, &qword_2146F4860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0B08();
  sub_2146DAA28();
  sub_2146DA368();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FindMyMessage.init(with:V:peerTrustAck:circleTrust:circleTrustAck:circleTrustAccept:circleTrustDecline:circlesUpdated:circleTrustStopped:circleTrustRequest:delegatedReunited:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v26 = *a1;
  v27 = *a3;
  v28 = a3[1];
  v29 = a3[2];
  v30 = a3[3];
  v31 = a3[4];
  v32 = *(a3 + 20);
  v33 = *a4;
  v34 = a4[1];
  v35 = a4[2];
  v36 = a4[3];
  v37 = a4[4];
  v38 = *(a4 + 20);
  v39 = *a5;
  v40 = a5[1];
  v41 = a5[2];
  v42 = a5[3];
  v43 = a5[4];
  v44 = *(a5 + 20);
  v45 = *a6;
  v46 = a6[1];
  v47 = a6[2];
  v48 = a6[3];
  v49 = a6[4];
  v50 = *(a6 + 20);
  v51 = *a7;
  v52 = a7[1];
  v53 = a7[2];
  v54 = a7[3];
  v55 = a7[4];
  v56 = *(a7 + 20);
  v57 = *a8;
  v58 = a8[1];
  v59 = a8[2];
  v60 = a8[3];
  v61 = a8[4];
  v62 = *(a8 + 20);
  v63 = *a10;
  v64 = a10[1];
  v65 = a10[2];
  v66 = a10[3];
  v67 = a10[4];
  v68 = *(a10 + 20);
  v69 = *a11;
  v70 = a11[1];
  v71 = a11[2];
  v72 = a11[3];
  v73 = a11[4];
  v180 = *(a11 + 20);
  v74 = *a12;
  v75 = a12[1];
  v76 = a12[2];
  v77 = a12[3];
  v78 = a12[4];
  v181 = *(a12 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  v16[1] = vdupq_n_s64(1uLL);
  *(v15 + 16) = sub_21438F468;
  *(v15 + 24) = v16;
  *(v14 + 32) = v15;
  sub_21404328C(v14, &v79);
  v18 = v79;
  v17 = v80;
  v19 = v81;
  v20 = v82;
  v21 = BYTE1(v82);
  v178 = v82;
  v159 = v82;
  v158 = a2;
  v157 = BYTE1(v82);
  v79 = 0x654D794D646E6946;
  v80 = 0xEF562E6567617373;
  v81 = 0xD00000000000001CLL;
  v82 = 0x800000021478A360;

  v22 = v18(&v158, &v157, &v79);
  if (v25)
  {
  }

  else
  {
    if (v22)
    {

      *a9 = v26;
      *(a9 + 8) = v18;
      *(a9 + 16) = v17;
      *(a9 + 24) = a2;
      *(a9 + 33) = v21;
      *(a9 + 40) = v27;
      *(a9 + 48) = v28;
      *(a9 + 56) = v29;
      *(a9 + 64) = v30;
      *(a9 + 72) = v31;
      *(a9 + 80) = v32;
      *(a9 + 88) = v33;
      *(a9 + 96) = v34;
      *(a9 + 104) = v35;
      *(a9 + 112) = v36;
      *(a9 + 120) = v37;
      *(a9 + 128) = v38;
      *(a9 + 136) = v39;
      *(a9 + 144) = v40;
      *(a9 + 152) = v41;
      *(a9 + 160) = v42;
      *(a9 + 168) = v43;
      *(a9 + 176) = v44;
      *(a9 + 184) = v45;
      *(a9 + 192) = v46;
      *(a9 + 200) = v47;
      *(a9 + 208) = v48;
      *(a9 + 216) = v49;
      *(a9 + 224) = v50;
      v178 = 0;
      *(a9 + 32) = 0;
      *(a9 + 232) = v51;
      *(a9 + 240) = v52;
      *(a9 + 248) = v53;
      *(a9 + 256) = v54;
      *(a9 + 264) = v55;
      *(a9 + 272) = v56;
      *(a9 + 280) = v57;
      *(a9 + 288) = v58;
      *(a9 + 296) = v59;
      *(a9 + 304) = v60;
      *(a9 + 312) = v61;
      *(a9 + 320) = v62;
      *(a9 + 328) = v63;
      *(a9 + 336) = v64;
      *(a9 + 344) = v65;
      *(a9 + 352) = v66;
      *(a9 + 360) = v67;
      *(a9 + 368) = v68;
      *(a9 + 376) = v69;
      *(a9 + 384) = v70;
      *(a9 + 392) = v71;
      *(a9 + 400) = v72;
      *(a9 + 408) = v73;
      *(a9 + 416) = v180;
      *(a9 + 424) = v74;
      *(a9 + 432) = v75;
      *(a9 + 440) = v76;
      *(a9 + 448) = v77;
      *(a9 + 456) = v78;
      *(a9 + 464) = v181;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0x654D794D646E6946;
    v24[1] = 0xEF562E6567617373;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();
    v20 = v159;
  }

  LOBYTE(v79) = v26;
  v80 = v18;
  v81 = v17;
  v82 = v19;
  v84 = v21;
  v87 = v27;
  v88 = v28;
  v89 = v29;
  v90 = v30;
  v91 = v31;
  v92 = v32;
  v95 = v33;
  v96 = v34;
  v97 = v35;
  v98 = v36;
  v99 = v37;
  v100 = v38;
  v103 = v39;
  v104 = v40;
  v105 = v41;
  v106 = v42;
  v107 = v43;
  v108 = v44;
  v111 = v45;
  v112 = v46;
  v113 = v47;
  v114 = v48;
  v115 = v49;
  v116 = v50;
  v119 = v51;
  v120 = v52;
  *(&v79 + 1) = v179[0];
  HIDWORD(v79) = *(v179 + 3);
  v178 = v20;
  v83 = v20;
  v85 = v176;
  v86 = v177;
  v93 = v174;
  v94 = v175;
  v101 = v172;
  v102 = v173;
  v110 = v171;
  v109 = v170;
  v118 = v169;
  v117 = v168;
  v121 = v53;
  v122 = v54;
  v123 = v55;
  v124 = v56;
  v125 = v166;
  v126 = v167;
  v127 = v57;
  v128 = v58;
  v129 = v59;
  v130 = v60;
  v131 = v61;
  v132 = v62;
  v133 = v164;
  v134 = v165;
  v135 = v63;
  v136 = v64;
  v137 = v65;
  v138 = v66;
  v139 = v67;
  v140 = v68;
  v141 = v162;
  v142 = v163;
  v143 = v69;
  v144 = v70;
  v145 = v71;
  v146 = v72;
  v147 = v73;
  v148 = v180;
  v149 = v160;
  v150 = v161;
  v151 = v74;
  v152 = v75;
  v153 = v76;
  v154 = v77;
  v155 = v78;
  v156 = v181;
  return sub_2142F0B5C(&v79);
}

unint64_t sub_214136ADC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 84;
    v6 = 0x7375725472656570;
    if (a1 != 2)
    {
      v6 = 0x7254656C63726963;
    }

    if (a1)
    {
      v5 = 86;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0xD000000000000012;
    if (a1 != 9)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 6)
    {
      v3 = 0x5573656C63726963;
    }

    if (a1 == 5)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_214136C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214365EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214136C80(uint64_t a1)
{
  v2 = sub_2142F0BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214136CBC(uint64_t a1)
{
  v2 = sub_2142F0BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FindMyMessage.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F20, &qword_2146F4868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v213 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F0BB0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v213);
  }

  v106 = a2;
  v107 = v6;
  LOBYTE(v108[0]) = 0;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v12 = v109;
  LOBYTE(v109) = 1;
  v13 = sub_2146DA1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F30, &qword_2146F4870);
  LOBYTE(v108[0]) = 2;
  sub_2142F0C04();
  sub_2146DA1C8();
  v101 = v12;
  v103 = v109;
  v104 = v110;
  v15 = v111;
  v102 = v112;
  v16 = v113;
  v105 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F48, &qword_2146F4878);
  LOBYTE(v108[0]) = 3;
  sub_2142F0CDC();
  sub_2146DA1C8();
  v95 = v15;
  v96 = v16;
  v17 = v109;
  v18 = v111;
  v97 = v110;
  v98 = v112;
  v99 = v113;
  v100 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F60, &qword_2146F4880);
  LOBYTE(v108[0]) = 4;
  sub_2142F0DB4();
  sub_2146DA1C8();
  v89 = v17;
  v19 = v109;
  v90 = v110;
  v91 = v18;
  v92 = v111;
  v94 = v112;
  v20 = v113;
  v93 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F78, &qword_2146F4888);
  LOBYTE(v108[0]) = 5;
  sub_2142F0E8C();
  sub_2146DA1C8();
  v83 = v19;
  v87 = v20;
  v21 = v109;
  v22 = v110;
  v84 = v111;
  v85 = v112;
  v86 = v113;
  v88 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F90, &qword_2146F4890);
  LOBYTE(v108[0]) = 6;
  sub_2142F0F64();
  sub_2146DA1C8();
  v77 = v21;
  v78 = v22;
  v23 = v109;
  v24 = v110;
  v79 = v111;
  v80 = v112;
  v81 = v113;
  v82 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FA8, &qword_2146F4898);
  LOBYTE(v108[0]) = 7;
  sub_2142F103C();
  sub_2146DA1C8();
  v71 = v24;
  v72 = v23;
  v73 = v109;
  v74 = v110;
  v25 = v112;
  v75 = v111;
  v76 = v113;
  LODWORD(v24) = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FC0, &qword_2146F48A0);
  LOBYTE(v108[0]) = 8;
  sub_2142F1114();
  sub_2146DA1C8();
  v26 = v25;
  v27 = v71;
  v69 = v26;
  v70 = v24;
  v28 = v109;
  v63 = v13;
  v64 = v110;
  v65 = v111;
  v66 = v112;
  v67 = v113;
  v68 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FD8, &qword_2146F48A8);
  LOBYTE(v108[0]) = 9;
  sub_2142F11EC();
  v29 = v5;
  sub_2146DA1C8();
  v57 = v109;
  v58 = v110;
  v59 = v111;
  v60 = v112;
  v61 = v113;
  v62 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FF0, &qword_2146F48B0);
  v186 = 10;
  sub_2142F12C4();
  sub_2146DA1C8();
  v30 = v187;
  v55 = v189;
  v56 = v188;
  v53 = v191;
  v54 = v190;
  v52 = v192;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v32 = swift_allocObject();
  v33 = swift_allocObject();
  v33[1] = vdupq_n_s64(1uLL);
  *(v32 + 16) = sub_21438F468;
  *(v32 + 24) = v33;
  *(v31 + 32) = v32;
  sub_2142F139C(v103);
  sub_2142F139C(v89);
  sub_2142F139C(v83);
  sub_2142F139C(v77);
  sub_2142F139C(v72);
  sub_2142F139C(v73);
  sub_2142F139C(v28);
  sub_2142F139C(v57);
  v51 = v30;
  sub_2142F139C(v30);
  sub_21404328C(v31, &v109);
  v34 = v109;
  v35 = v110;
  v46 = v111;
  v211 = v112;
  v47 = v112;
  v185 = v112;
  v184 = v63;
  v49 = BYTE1(v112);
  LOBYTE(v108[0]) = BYTE1(v112);
  v109 = 0x654D794D646E6946;
  v110 = 0xEF562E6567617373;
  v111 = 0xD00000000000001CLL;
  v48 = 0x800000021478A360;
  v112 = 0x800000021478A360;

  v50 = v34;
  v36 = v34(&v184, v108, &v109);
  if (v36)
  {

    v37 = v102;
    sub_2142F13DC(v103);
    sub_2142F13DC(v89);
    sub_2142F13DC(v83);
    sub_2142F13DC(v77);
    sub_2142F13DC(v72);
    sub_2142F13DC(v73);
    v45 = v28;
    sub_2142F13DC(v28);
    sub_2142F13DC(v57);
    sub_2142F13DC(v51);
    (*(v107 + 8))(v9, v29);
    v185 = 0;

    *(&v108[16] + 2) = v205;
    *(&v108[22] + 2) = v203;
    *(&v108[28] + 2) = v201;
    *(&v108[34] + 2) = v199;
    *(&v108[40] + 2) = v197;
    *(&v108[46] + 2) = v195;
    *(&v108[52] + 2) = v193;
    *(v108 + 1) = v212[0];
    HIDWORD(v108[0]) = *(v212 + 3);
    *(&v108[4] + 2) = v209;
    HIWORD(v108[4]) = v210;
    *(&v108[10] + 2) = v207;
    HIWORD(v108[10]) = v208;
    HIWORD(v108[16]) = v206;
    HIWORD(v108[22]) = v204;
    HIWORD(v108[28]) = v202;
    HIWORD(v108[34]) = v200;
    HIWORD(v108[40]) = v198;
    HIWORD(v108[46]) = v196;
    HIWORD(v108[52]) = v194;
    v211 = 0;
    v38 = v101;
    LOBYTE(v108[0]) = v101;
    v39 = v50;
    v108[1] = v50;
    v108[2] = v35;
    v40 = v63;
    v108[3] = v63;
    LOBYTE(v108[4]) = 0;
    v41 = v49;
    BYTE1(v108[4]) = v49;
    v108[5] = v103;
    v108[6] = v104;
    v42 = v95;
    v108[7] = v95;
    v108[8] = v37;
    v43 = v96;
    v108[9] = v96;
    LOWORD(v108[10]) = v105;
    v108[11] = v89;
    v108[12] = v97;
    v108[13] = v91;
    v108[14] = v98;
    v108[15] = v99;
    LOWORD(v108[16]) = v100;
    v108[17] = v83;
    v108[18] = v90;
    v108[19] = v92;
    v108[20] = v94;
    v108[21] = v87;
    LOWORD(v108[22]) = v93;
    v108[23] = v77;
    v108[24] = v78;
    v108[25] = v84;
    v108[26] = v85;
    v108[27] = v86;
    LOWORD(v108[28]) = v88;
    v108[29] = v72;
    v108[30] = v71;
    v108[31] = v79;
    v108[32] = v80;
    v108[33] = v81;
    LOWORD(v108[34]) = v82;
    v108[35] = v73;
    v108[36] = v74;
    v108[37] = v75;
    v108[38] = v69;
    v108[39] = v76;
    LOWORD(v108[40]) = v70;
    v108[41] = v45;
    v108[42] = v64;
    v108[43] = v65;
    v108[44] = v66;
    v108[45] = v67;
    LOWORD(v108[46]) = v68;
    v108[47] = v57;
    v108[48] = v58;
    v108[49] = v59;
    v108[50] = v60;
    v108[51] = v61;
    LOWORD(v108[52]) = v62;
    v108[53] = v51;
    v108[54] = v56;
    v108[55] = v55;
    v108[56] = v54;
    v108[57] = v53;
    LOWORD(v108[58]) = v52;
    memcpy(v106, v108, 0x1D2uLL);
    sub_2142F141C(v108, &v109);
    __swift_destroy_boxed_opaque_existential_1(v213);
    LOBYTE(v109) = v38;
    v110 = v39;
    v111 = v35;
    v112 = v40;
    BYTE1(v113) = v41;
    v114 = v103;
    v115 = v104;
    v116 = v42;
    v117 = v102;
    v118 = v43;
    v119 = v105;
    v122 = v89;
    v123 = v97;
    v124 = v91;
    v125 = v98;
    v126 = v99;
    v127 = v100;
    v130 = v83;
    v131 = v90;
    v132 = v92;
    v133 = v94;
    v134 = v87;
    v135 = v93;
    v138 = v77;
    v139 = v78;
    v140 = v84;
    v141 = v85;
    v142 = v86;
    v143 = v88;
    v146 = v72;
    v147 = v71;
    *(&v109 + 1) = v212[0];
    *(&v113 + 2) = v209;
    v120 = v207;
    v128 = v205;
    v136 = v203;
    v144 = v201;
    HIDWORD(v109) = *(v212 + 3);
    LOBYTE(v113) = 0;
    HIWORD(v113) = v210;
    v121 = v208;
    v129 = v206;
    v137 = v204;
    v145 = v202;
    v148 = v79;
    v149 = v80;
    v150 = v81;
    v151 = v82;
    v152 = v199;
    v153 = v200;
    v154 = v73;
    v155 = v74;
    v156 = v75;
    v157 = v69;
    v158 = v76;
    v159 = v70;
    v160 = v197;
    v161 = v198;
    v162 = v45;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0x654D794D646E6946;
    v44[1] = 0xEF562E6567617373;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = v48;
    swift_willThrow();
    sub_2142F13DC(v103);
    sub_2142F13DC(v89);
    sub_2142F13DC(v83);
    sub_2142F13DC(v77);
    sub_2142F13DC(v72);
    sub_2142F13DC(v73);
    sub_2142F13DC(v28);
    sub_2142F13DC(v57);
    sub_2142F13DC(v51);
    (*(v107 + 8))(v9, v29);
    v47 = v185;

    v211 = v47;
    __swift_destroy_boxed_opaque_existential_1(v213);
    LOBYTE(v109) = v101;
    v110 = v50;
    v111 = v35;
    v112 = v46;
    BYTE1(v113) = v49;
    v114 = v103;
    v115 = v104;
    v116 = v95;
    v117 = v102;
    v118 = v96;
    v119 = v105;
    v122 = v89;
    v123 = v97;
    v124 = v91;
    v125 = v98;
    v126 = v99;
    v127 = v100;
    v130 = v83;
    v131 = v90;
    v132 = v92;
    v133 = v94;
    v134 = v87;
    v135 = v93;
    v138 = v77;
    v139 = v78;
    v140 = v84;
    v141 = v85;
    v142 = v86;
    v143 = v88;
    v146 = v72;
    v147 = v27;
    *(&v109 + 1) = v212[0];
    HIDWORD(v109) = *(v212 + 3);
    LOBYTE(v113) = v211;
    *(&v113 + 2) = v209;
    HIWORD(v113) = v210;
    v120 = v207;
    v121 = v208;
    v128 = v205;
    v129 = v206;
    v137 = v204;
    v136 = v203;
    v145 = v202;
    v144 = v201;
    v148 = v79;
    v149 = v80;
    v150 = v81;
    v151 = v82;
    v152 = v199;
    v153 = v200;
    v154 = v73;
    v155 = v74;
    v156 = v75;
    v157 = v69;
    v158 = v76;
    v159 = v70;
    v160 = v197;
    v161 = v198;
    v162 = v28;
  }

  v163 = v64;
  v164 = v65;
  v165 = v66;
  v166 = v67;
  v167 = v68;
  v168 = v195;
  v169 = v196;
  v170 = v57;
  v171 = v58;
  v172 = v59;
  v173 = v60;
  v174 = v61;
  v175 = v62;
  v176 = v193;
  v177 = v194;
  v178 = v51;
  v179 = v56;
  v180 = v55;
  v181 = v54;
  v182 = v53;
  v183 = v52;
  return sub_2142F0B5C(&v109);
}

uint64_t FindMyMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907008, &qword_2146F48B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v40 - v6;
  v8 = *v1;
  v9 = *(v1 + 3);
  v103 = v1[32];
  v10 = *(v1 + 6);
  v92 = *(v1 + 5);
  v93 = v9;
  v11 = *(v1 + 8);
  v90 = *(v1 + 7);
  v91 = v10;
  v88 = *(v1 + 9);
  v89 = v11;
  v86 = *(v1 + 40);
  v12 = *(v1 + 12);
  v80 = *(v1 + 11);
  v81 = v12;
  v13 = *(v1 + 13);
  v84 = *(v1 + 14);
  v85 = v13;
  v83 = *(v1 + 15);
  v82 = *(v1 + 64);
  v14 = *(v1 + 18);
  v74 = *(v1 + 17);
  v75 = v14;
  v15 = *(v1 + 20);
  v79 = *(v1 + 19);
  v78 = v15;
  v77 = *(v1 + 21);
  v76 = *(v1 + 88);
  v16 = *(v1 + 24);
  v68 = *(v1 + 23);
  v69 = v16;
  v17 = *(v1 + 26);
  v73 = *(v1 + 25);
  v72 = v17;
  v71 = *(v1 + 27);
  v70 = *(v1 + 112);
  v18 = *(v1 + 30);
  v62 = *(v1 + 29);
  v63 = v18;
  v19 = *(v1 + 32);
  v67 = *(v1 + 31);
  v66 = v19;
  v65 = *(v1 + 33);
  v64 = *(v1 + 136);
  v20 = *(v1 + 36);
  v56 = *(v1 + 35);
  v57 = v20;
  v21 = *(v1 + 38);
  v61 = *(v1 + 37);
  v60 = v21;
  v59 = *(v1 + 39);
  v58 = *(v1 + 160);
  v22 = *(v1 + 42);
  v50 = *(v1 + 41);
  v51 = v22;
  v23 = *(v1 + 44);
  v55 = *(v1 + 43);
  v54 = v23;
  v53 = *(v1 + 45);
  v52 = *(v1 + 184);
  v24 = *(v1 + 48);
  v87 = *(v1 + 47);
  v45 = v24;
  v25 = *(v1 + 50);
  v49 = *(v1 + 49);
  v48 = v25;
  v47 = *(v1 + 51);
  v46 = *(v1 + 208);
  v26 = *(v1 + 54);
  v40 = *(v1 + 53);
  v44 = v26;
  v27 = *(v1 + 56);
  v43 = *(v1 + 55);
  v42 = v27;
  v41 = *(v1 + 57);
  v28 = *(v1 + 232);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F0BB0();
  sub_2146DAA28();
  LOBYTE(v97) = v8;
  v104 = 0;
  sub_2142EF4D0();
  v95 = v7;
  v96 = v3;
  v30 = v94;
  sub_2146DA388();
  if (v30)
  {
    return (*(v4 + 8))(v95, v96);
  }

  v31 = v92;
  v33 = v88;
  v32 = v89;
  v35 = v90;
  v34 = v91;
  v36 = v87;
  LODWORD(v94) = v28;
  if (v103)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    LOBYTE(v97) = 1;
    sub_2146DA368();
    v97 = v31;
    v98 = v34;
    v99 = v35;
    v100 = v32;
    v101 = v33;
    v102 = v86;
    v104 = 2;
    sub_2142F139C(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F30, &qword_2146F4870);
    sub_2142F1478();
    sub_2146DA388();
    sub_2142F13DC(v97);
    v97 = v80;
    v98 = v81;
    v99 = v85;
    v100 = v84;
    v101 = v83;
    v102 = v82;
    v104 = 3;
    sub_2142F139C(v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F48, &qword_2146F4878);
    sub_2142F1550();
    sub_2146DA388();
    sub_2142F13DC(v97);
    v97 = v74;
    v98 = v75;
    v99 = v79;
    v100 = v78;
    v101 = v77;
    v102 = v76;
    v104 = 4;
    sub_2142F139C(v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F60, &qword_2146F4880);
    sub_2142F1628();
    sub_2146DA388();
    sub_2142F13DC(v97);
    v97 = v68;
    v98 = v69;
    v99 = v73;
    v100 = v72;
    v101 = v71;
    v102 = v70;
    v104 = 5;
    sub_2142F139C(v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F78, &qword_2146F4888);
    sub_2142F1700();
    sub_2146DA388();
    sub_2142F13DC(v97);
    v97 = v62;
    v98 = v63;
    v99 = v67;
    v100 = v66;
    v101 = v65;
    v102 = v64;
    v104 = 6;
    sub_2142F139C(v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906F90, &qword_2146F4890);
    sub_2142F17D8();
    sub_2146DA388();
    sub_2142F13DC(v97);
    v97 = v56;
    v98 = v57;
    v99 = v61;
    v100 = v60;
    v101 = v59;
    v102 = v58;
    v104 = 7;
    sub_2142F139C(v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FA8, &qword_2146F4898);
    sub_2142F18B0();
    sub_2146DA388();
    sub_2142F13DC(v97);
    v97 = v50;
    v98 = v51;
    v99 = v55;
    v100 = v54;
    v101 = v53;
    v102 = v52;
    v104 = 8;
    sub_2142F139C(v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FC0, &qword_2146F48A0);
    sub_2142F1988();
    sub_2146DA388();
    sub_2142F13DC(v97);
    v97 = v36;
    v98 = v45;
    v99 = v49;
    v100 = v48;
    v101 = v47;
    v102 = v46;
    v104 = 9;
    sub_2142F139C(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FD8, &qword_2146F48A8);
    sub_2142F1A60();
    sub_2146DA388();
    sub_2142F13DC(v97);
    v97 = v40;
    v98 = v44;
    v99 = v43;
    v100 = v42;
    v101 = v41;
    v102 = v94;
    v104 = 10;
    sub_2142F139C(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C906FF0, &qword_2146F48B0);
    sub_2142F1B38();
    v37 = v96;
    v38 = v95;
    sub_2146DA388();
    sub_2142F13DC(v97);
    return (*(v4 + 8))(v38, v37);
  }

  return result;
}

uint64_t DecodedKey.init(with:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_214612754(v13);
  v6 = v13[0];
  v5 = v13[1];
  v7 = v14;
  v16 = a2;
  v15 = v14;
  strcpy(v13, "DecodedKey.key");
  HIBYTE(v13[1]) = -18;
  v13[2] = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  v8 = v6(&v16, &v15, v13);
  if (v3)
  {
  }

  else
  {
    if (v8)
    {

      *a3 = a1;
      *(a3 + 8) = v6;
      *(a3 + 16) = v5;
      *(a3 + 24) = a2;
      *(a3 + 32) = v7;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    strcpy(v10, "DecodedKey.key");
    v10[15] = -18;
    *(v10 + 2) = 0xD00000000000001CLL;
    *(v10 + 3) = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214138F24()
{
  if (*v0)
  {
    result = 7955819;
  }

  else
  {
    result = 0x7865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_214138F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_21413902C(uint64_t a1)
{
  v2 = sub_2142F1C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214139068(uint64_t a1)
{
  v2 = sub_2142F1C10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DecodedKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070A0, &qword_2146F48C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1C10();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v27[0]) = 0;
  v26 = sub_2146DA1A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
  LOBYTE(v31) = 1;
  sub_2142E554C();
  sub_2146DA1C8();
  v12 = v27[0];
  sub_214612754(v27);
  v14 = v27[0];
  v13 = v27[1];
  v24 = v28;
  v25 = v12;
  v31 = v12;
  v22 = v29;
  v30 = v29;
  strcpy(v27, "DecodedKey.key");
  HIBYTE(v27[1]) = -18;
  v28 = 0xD00000000000001CLL;
  v29 = 0x800000021478A360;

  v23 = v13;
  v15 = v14(&v31, &v30, v27);
  v21 = v14;
  if (v15)
  {

    (*(v6 + 8))(v9, v5);

    v16 = v23;

    v17 = v25;
    v18 = v21;
    *a2 = v26;
    *(a2 + 8) = v18;
    *(a2 + 16) = v16;
    *(a2 + 24) = v17;
    *(a2 + 32) = v22;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    strcpy(v19, "DecodedKey.key");
    v19[15] = -18;
    *(v19 + 2) = 0xD00000000000001CLL;
    *(v19 + 3) = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DecodedKey.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070B0, &qword_2146F48C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = v1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1C10();
  sub_2146DAA28();
  v14 = 0;
  sub_2146DA368();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905978, &qword_2146F3EF0);
    sub_2142E562C();
    sub_2146DA388();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t KeyPackage.init(with:keys:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_214328704(a1, a5, type metadata accessor for Alignment);
  result = type metadata accessor for KeyPackage(0);
  *(a5 + *(result + 20)) = a2;
  v10 = (a5 + *(result + 24));
  *v10 = a3;
  v10[1] = a4;
  return result;
}

uint64_t sub_2141396E0()
{
  v1 = 1937335659;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656D6E67696C61;
  }
}

uint64_t sub_214139730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214366244(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214139758(uint64_t a1)
{
  v2 = sub_2142F1C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214139794(uint64_t a1)
{
  v2 = sub_2142F1C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyPackage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for Alignment();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070B8, &qword_2146F48D0);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1C64();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v24;
    v29 = 0;
    sub_214328930(&qword_27C9070C8, type metadata accessor for Alignment);
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070D0, &qword_2146F48D8);
    v28 = 1;
    sub_2142F1CB8();
    sub_2146DA1C8();
    v15 = v26;
    v27 = 2;
    v16 = sub_2146DA168();
    v17 = (v8 + 8);
    v19 = v18;
    v20 = v16;
    (*v17)(v11, v25);
    sub_214328704(v7, v13, type metadata accessor for Alignment);
    v21 = type metadata accessor for KeyPackage(0);
    *(v13 + *(v21 + 20)) = v15;
    v22 = (v13 + *(v21 + 24));
    *v22 = v20;
    v22[1] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t KeyPackage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070E8, &qword_2146F48E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1C64();
  sub_2146DAA28();
  v18 = 0;
  type metadata accessor for Alignment();
  sub_214328930(&qword_27C9070F0, type metadata accessor for Alignment);
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for KeyPackage(0);
    v17 = *(v3 + *(v11 + 20));
    v16[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9070D0, &qword_2146F48D8);
    sub_2142F1D90();
    sub_2146DA388();
    v12 = (v3 + *(v11 + 24));
    v13 = *v12;
    v14 = v12[1];
    v16[14] = 2;
    sub_2146DA328();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214139D44@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  v9[1] = vdupq_n_s64(1uLL);
  *(v8 + 16) = sub_21438F468;
  *(v8 + 24) = v9;
  *(inited + 32) = v8;
  sub_21404328C(inited, &v18);
  v10 = v18;
  v11 = v19;
  v12 = BYTE1(v21);
  v23 = a3;
  v22 = BYTE1(v21);
  v18 = 0xD000000000000018;
  v19 = 0x800000021478E290;
  v20 = 0xD00000000000001CLL;
  v21 = 0x800000021478A360;

  v13 = v10(&v23, &v22, &v18);
  if (v4)
  {
  }

  else
  {
    if (v13)
    {

      *a4 = a1;
      *(a4 + 8) = v16;
      *(a4 + 16) = v10;
      *(a4 + 24) = v11;
      *(a4 + 32) = a3;
      *(a4 + 40) = 0;
      *(a4 + 41) = v12;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD000000000000018;
    v15[1] = 0x800000021478E290;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214139F48(uint64_t a1)
{
  v2 = sub_2142F1E68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214139F84(uint64_t a1)
{
  v2 = sub_2142F1E68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214139FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907108, &qword_2146F48E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1E68();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907118, &qword_2146F48F0);
  LOBYTE(v36) = 0;
  sub_2142F1EBC();
  sub_2146DA1C8();
  v11 = v31;
  LOBYTE(v36) = 1;
  sub_2142EF3C8();
  sub_2146DA1C8();
  v12 = v31;
  LOBYTE(v31) = 2;
  v13 = sub_2146DA1A8();
  v28 = v11;
  v27 = v12;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  v17[1] = vdupq_n_s64(1uLL);
  *(v16 + 16) = sub_21438F468;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  sub_21404328C(inited, &v31);
  v19 = v31;
  v18 = v32;
  v36 = v30;
  v26 = BYTE1(v34);
  v35 = BYTE1(v34);
  v31 = 0xD000000000000018;
  v32 = 0x800000021478E290;
  v29 = 0x800000021478E290;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v25 = v19;
  v20 = v19(&v36, &v35, &v31);
  v21 = v28;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    *a2 = v21;
    *(a2 + 8) = v27;
    *(a2 + 16) = v25;
    *(a2 + 24) = v18;
    *(a2 + 32) = v30;
    *(a2 + 40) = 0;
    *(a2 + 41) = v26;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v22 = v29;
    *v23 = 0xD000000000000018;
    v23[1] = v22;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413A40C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907130, &qword_2146F48F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v16 = *(v1 + 8);
  v15 = v1[4];
  v14 = *(v1 + 40);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F1E68();
  sub_2146DAA28();
  v21 = v9;
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907118, &qword_2146F48F0);
  sub_2142F1F70();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v11 = v14;
  v19 = v16;
  v18 = 1;
  sub_2142EF4D0();
  sub_2146DA388();
  if ((v11 & 1) == 0)
  {
    v17 = 2;
    sub_2146DA368();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21413A6C0(uint64_t a1)
{
  v2 = sub_2142F2024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413A6FC(uint64_t a1)
{
  v2 = sub_2142F2024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413A77C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907158, &qword_2146F4908);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2024();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21413A90C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907158, &qword_2146F4908);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2024();
  sub_2146DAA28();
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21413AA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 + 2);
  v10 = *(a4 + 3);
  v11 = *(a4 + 32);
  v12 = sub_2146D8B88();
  v31 = *(v12 - 8);
  v33 = *a4;
  v35 = v12;
  v36 = a1;
  (*(v31 + 16))(a5, a1);
  sub_214615990(&v38);
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v16 = type metadata accessor for PeerTrustEnvelopeV1();
  v17 = a5 + *(v16 + 20);
  *v17 = v38;
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  *(v17 + 32) = v15;
  v18 = a5 + *(v16 + 24);
  *v18 = v33;
  *(v18 + 16) = v9;
  *(v18 + 24) = v10;
  *(v18 + 32) = v11;
  v20 = *v17;
  v19 = *(v17 + 8);
  v21 = *(v17 + 24);
  v29 = *(v17 + 16);
  LOBYTE(v18) = *(v17 + 32);
  v37[0] = a2;
  v37[1] = a3;
  v34 = v18;
  v42 = v18;
  *&v38 = 0xD000000000000025;
  *(&v38 + 1) = 0x800000021478E2B0;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  v22 = v20(v37, &v42, &v38);
  if (v32)
  {
  }

  else
  {
    if (v22)
    {

      (*(v31 + 8))(v36, v35);
      v23 = *(v17 + 8);
      v24 = *(v17 + 24);

      *v17 = v20;
      *(v17 + 8) = v19;
      *(v17 + 16) = a2;
      *(v17 + 24) = a3;
      *(v17 + 32) = v34;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000025;
    v26[1] = 0x800000021478E2B0;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
  }

  (*(v31 + 8))(v36, v35);
  v27 = *(v17 + 8);
  v28 = *(v17 + 24);

  *v17 = v20;
  *(v17 + 8) = v19;
  *(v17 + 16) = v29;
  *(v17 + 24) = v21;
  *(v17 + 32) = v34;
  return sub_21432887C(a5, type metadata accessor for PeerTrustEnvelopeV1);
}

uint64_t sub_21413AD3C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6553646572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_21413ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436645C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21413ADD0(uint64_t a1)
{
  v2 = sub_2142F2078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413AE0C(uint64_t a1)
{
  v2 = sub_2142F2078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413AE48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_2146D8B88();
  v60 = *(v3 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907160, &qword_2146F4910);
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v11 = type metadata accessor for PeerTrustEnvelopeV1();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142F2078();
  v17 = v62;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v62 = v14;
  v18 = v60;
  LOBYTE(v65) = 0;
  sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
  v19 = v10;
  sub_2146DA1C8();
  LOBYTE(v65) = 1;
  v20 = sub_2146DA168();
  v22 = v21;
  v58 = v20;
  LOBYTE(v64[0]) = 2;
  sub_2142F20CC();
  sub_2146DA1C8();
  v56 = v19;
  v51 = v7;
  v24 = v66;
  v25 = v3;
  v26 = v67;
  v54 = v65;
  v27 = v18;
  v28 = *(v18 + 16);
  v29 = v62;
  v55 = v6;
  v57 = v25;
  v28(v62, v6);
  sub_214615990(&v65);
  v30 = v67;
  v31 = v29 + *(v11 + 20);
  v32 = v66;
  *v31 = v65;
  *(v31 + 16) = v32;
  *(v31 + 32) = v30;
  v33 = v29 + *(v11 + 24);
  *v33 = v54;
  *(v33 + 16) = v24;
  *(v33 + 32) = v26;
  v35 = *v31;
  v34 = *(v31 + 8);
  v36 = *(v31 + 24);
  v50 = *(v31 + 16);
  v37 = *(v31 + 32);
  v64[0] = v58;
  v64[1] = v22;
  LODWORD(v54) = v37;
  v68 = v37;
  *&v65 = 0xD000000000000025;
  *(&v65 + 1) = 0x800000021478E2B0;
  *&v66 = 0xD00000000000001CLL;
  *(&v66 + 1) = 0x800000021478A360;
  v52 = v36;

  v53 = v35;
  v38 = v35(v64, &v68, &v65);
  v49 = v22;
  v39 = v51;
  if (v38)
  {

    (*(v27 + 8))(v55, v57);
    (*(v61 + 8))(*(&v24 + 1), v39);
    v40 = *(v31 + 8);
    v41 = *(v31 + 24);

    *v31 = v53;
    *(v31 + 8) = v34;
    v42 = v59;
    v43 = v49;
    *(v31 + 16) = v58;
    *(v31 + 24) = v43;
    *(v31 + 32) = v54;
    sub_214328704(v29, v42, type metadata accessor for PeerTrustEnvelopeV1);
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  sub_214031C4C();
  swift_allocError();
  *v44 = 0xD000000000000025;
  v44[1] = 0x800000021478E2B0;
  v44[2] = 0xD00000000000001CLL;
  v44[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v27 + 8))(v55, v57);
  (*(v61 + 8))(*(&v24 + 1), v39);
  v45 = *(v31 + 8);
  v46 = *(v31 + 24);

  *v31 = v53;
  *(v31 + 8) = v34;
  v47 = v52;
  *(v31 + 16) = v50;
  *(v31 + 24) = v47;
  *(v31 + 32) = v54;
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_21432887C(v62, type metadata accessor for PeerTrustEnvelopeV1);
}

uint64_t sub_21413B42C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907178, &qword_2146F4918);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2078();
  sub_2146DAA28();
  LOBYTE(v24) = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = type metadata accessor for PeerTrustEnvelopeV1();
  v13 = v3 + *(v12 + 20);
  if (*(v13 + 24))
  {
    v14 = v12;
    v15 = *(v13 + 16);
    LOBYTE(v24) = 1;

    sub_2146DA328();

    v16 = (v3 + *(v14 + 24));
    v18 = *v16;
    v17 = v16[1];
    v20 = v16[2];
    v19 = v16[3];
    LOBYTE(v16) = *(v16 + 32);
    v24 = v18;
    v25 = v17;
    v26 = v20;
    v27 = v19;
    v28 = v16;
    v23[7] = 2;

    sub_213FDCA18(v20, v19);
    sub_2142F2120();
    sub_2146DA388();
    v21 = v26;
    v22 = v27;

    sub_213FDC6BC(v21, v22);
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_21413B728@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_21413B74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21413B7D4(uint64_t a1)
{
  v2 = sub_2142F2174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413B810(uint64_t a1)
{
  v2 = sub_2142F2174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413B84C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907188, &qword_2146F4920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2174();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142F21C8();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413B9C4(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071A0, &qword_2146F4928);
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v17);
  v6 = &v15 - v5;
  v7 = v1[1];
  v16 = *v1;
  v8 = v1[2];
  v9 = v1[3];
  HIDWORD(v15) = *(v1 + 32);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_213FDCA18(v8, v9);
  sub_2142F2174();
  sub_2146DAA28();
  v18 = v16;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = BYTE4(v15);
  sub_2142F221C();
  v11 = v17;
  sub_2146DA388();
  v12 = v20;
  v13 = v21;

  sub_213FDC6BC(v12, v13);
  return (*(v3 + 8))(v6, v11);
}

__n128 sub_21413BB94@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[2] = sub_213FB7988;
  v8[3] = 0;
  v8[4] = 32;
  v8[5] = sub_21403C354;
  v8[6] = 0;
  *(v7 + 16) = sub_21438F670;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042CD0(inited, &v14);
  v9 = v15;

  sub_213FDCA18(v9.n128_i64[0], v9.n128_u64[1]);
  sub_214032024(a1, a2, 2, 0xD00000000000001DLL, 0x800000021478E2E0, 0xD00000000000001CLL, 0x800000021478A360);

  sub_213FDC6BC(v9.n128_i64[0], v9.n128_u64[1]);
  sub_213FB54FC(a1, a2);

  if (v3)
  {
    v10 = v15;

    sub_213FDC6BC(v10.n128_i64[0], v10.n128_u64[1]);
  }

  else
  {
    v12 = v16;
    result = v15;
    v13 = v17;
    *v17 = v14;
    v13[1] = result;
    v13[2].n128_u8[0] = v12;
  }

  return result;
}

uint64_t sub_21413BD94(uint64_t a1)
{
  v2 = sub_2142F2270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413BDD0(uint64_t a1)
{
  v2 = sub_2142F2270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413BE0C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071B0, &qword_2146F4930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2270();
  sub_2146DAA08();
  if (!v2)
  {
    sub_21406116C();
    sub_2146DA1C8();
    v22 = a2;
    v27 = *(&v28 + 1);
    v31 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146E9BF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
    v13 = swift_allocObject();
    v14 = swift_allocObject();
    v14[2] = sub_213FB7988;
    v14[3] = 0;
    v14[4] = 32;
    v14[5] = sub_21403C354;
    v14[6] = 0;
    *(v13 + 16) = sub_21438F670;
    *(v13 + 24) = v14;
    *(inited + 32) = v13;
    sub_214042CD0(inited, &v28);
    v15 = v29;
    v25 = *(&v29 + 1);
    v26 = v29;
    v23 = "eV1.displayIdentifier";
    v24 = *(&v28 + 1);

    sub_213FDCA18(v15, *(&v15 + 1));
    v16 = v31;
    v17 = v27;
    sub_214032024(v31, v27, 2, 0xD00000000000001DLL, 0x800000021478E2E0, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FB54FC(v16, v17);
    (*(v6 + 8))(v9, v5);

    sub_213FDC6BC(v26, v25);
    v18 = v30;
    v19 = v29;
    v20 = v22;
    *v22 = v28;
    v20[1] = v19;
    *(v20 + 32) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t GroupContext.init(with:participantDestinationIdentifiers:groupID:currentGroupName:groupParticipantVersion:groupProtocolVersion:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0AD0();
  sub_2140433DC(inited, &v57);
  v66 = v57;
  v33 = v59;
  v34 = v58;
  v31 = v60;
  sub_2146830BC(&v40);
  v16 = v40;
  v15 = v41;
  v17 = v42;
  v18 = v43;
  v35 = v44;
  v36 = a8 & 1;
  v61 = a11 & 1;
  v57 = a3;
  v58 = a4;
  v62[0] = v44;
  v40 = 0xD000000000000014;
  v41 = 0x800000021478E300;
  v42 = 0xD00000000000001CLL;
  v43 = 0x800000021478A360;

  sub_213FDC9D0(v17, v18);
  v30 = v15;
  v19 = v16(&v57, v62, &v40);
  if (v28)
  {
  }

  else
  {
    v29 = a4;
    if (v19)
    {
      sub_213FDC6D0(v17, v18);

      sub_213FDC6D0(v17, v18);
      v40 = v66;
      v41 = v34;
      v42 = v33;
      LOBYTE(v43) = v31;

      sub_2140325F8(a2, v27, 0xD00000000000002ELL, 0x800000021478E320, 0xD00000000000001CLL, 0x800000021478A360);

      v21 = v40;
      v20 = v41;
      v22 = v42;
      v23 = v43;

      *a9 = v21;
      *(a9 + 8) = v20;
      *(a9 + 16) = v22;
      *(a9 + 24) = v23;
      *(a9 + 32) = v16;
      *(a9 + 40) = v30;
      *(a9 + 48) = a3;
      *(a9 + 56) = v29;
      *(a9 + 64) = v35;
      *(a9 + 72) = a5;
      *(a9 + 80) = a6;
      *(a9 + 88) = a7;
      *(a9 + 96) = v36;
      *(a9 + 104) = a10;
      *(a9 + 112) = a11 & 1;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v25 = 0xD000000000000014;
    v25[1] = 0x800000021478E300;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v17, v18);
  v40 = v66;
  v41 = v34;
  v42 = v33;
  LOBYTE(v43) = v31;
  *(&v43 + 1) = v65[0];
  HIDWORD(v43) = *(v65 + 3);
  v44 = v16;
  v45 = v15;
  v46 = v17;
  v47 = v18;
  v48 = v35;
  *v49 = v64[0];
  *&v49[3] = *(v64 + 3);
  v50 = a5;
  v51 = a6;
  v52 = a7;
  v53 = a8 & 1;
  *&v54[3] = *(v63 + 3);
  *v54 = v63[0];
  v55 = a10;
  v56 = a11 & 1;
  return sub_2142F22C4(&v40);
}

unint64_t sub_21413C5A0()
{
  v1 = *v0;
  v2 = 0x444970756F7267;
  v3 = 0xD000000000000017;
  if (v1 != 4)
  {
    v3 = 0xD000000000000014;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = v3;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000032;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000021;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_21413C664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214366588(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21413C68C(uint64_t a1)
{
  v2 = sub_2142F2318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413C6C8(uint64_t a1)
{
  v2 = sub_2142F2318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071C8, &qword_2146F4940);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2318();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v72 = a1;
  v73 = v5;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v12 = sub_2146DA008();
  v13 = __swift_project_value_buffer(v12, qword_27CA19EC8);
  v14 = v4;
  if (*(v11 + 16))
  {
    v15 = sub_21408C508(v13);
    v16 = v8;
    if (v17)
    {
      sub_2140537E4(*(v11 + 56) + 32 * v15, &v85);

      if (swift_dynamicCast())
      {
        v18 = v74;
      }

      else
      {
        v18 = 2;
      }
    }

    else
    {

      v18 = 2;
    }
  }

  else
  {

    v18 = 2;
    v16 = v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v74) = 0;
  sub_2142E15CC();
  sub_2146DA1C8();
  v19 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v74) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  LODWORD(v70) = v18;
  v71 = v19;
  v20 = v85;
  LOBYTE(v74) = 3;
  sub_2146DA1C8();
  v69 = v20;
  v21 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v74) = 4;
  sub_2142E3570();
  sub_2146DA1C8();
  v68 = *(&v21 + 1);
  v66 = v21;
  v23 = v85;
  v67 = BYTE8(v85);
  v102 = 5;
  sub_2146DA1C8();
  v61 = v23;
  v59 = v103;
  v24 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  *(v25 + 32) = sub_2142E0AD0();
  sub_2140433DC(v25, &v74);
  v64 = v74;
  v57 = v75;
  v62 = BYTE8(v75);
  sub_2146830BC(&v85);
  v26 = *(&v85 + 1);
  v65 = v85;
  v27 = v86;
  v28 = v87;
  v60 = v24;
  v101 = v24;
  v74 = v69;
  v58 = v88;
  LOBYTE(v82) = v88;
  *&v85 = 0xD000000000000014;
  *(&v85 + 1) = 0x800000021478E300;
  v86 = 0xD00000000000001CLL;
  v87 = 0x800000021478A360;

  v55 = v28;
  v56 = v27;
  sub_213FDC9D0(v27, v28);
  v63 = v26;
  if (v65(&v74, &v82, &v85))
  {
    v30 = v55;
    v29 = v56;
    sub_213FDC6D0(v56, v55);

    sub_213FDC6D0(v29, v30);
    v82 = v64;
    v83 = v57;
    v84 = v62;

    v56 = *(&v64 + 1);

    sub_2140325F8(v71, v70, 0xD00000000000002ELL, 0x800000021478E320, 0xD00000000000001CLL, 0x800000021478A360);

    (*(v73 + 8))(v16, v14);
    v39 = v82;
    v70 = *(&v82 + 1);
    v71 = v82;
    v40 = v83;
    *&v64 = v83;
    v41 = v84;
    LODWORD(v73) = v84;

    v74 = v39;
    *&v75 = v40;
    BYTE8(v75) = v41;
    *(&v75 + 9) = v107[0];
    HIDWORD(v75) = *(v107 + 3);
    *&v76 = v65;
    *(&v76 + 1) = v63;
    v42 = *(&v69 + 1);
    v77 = v69;
    LOBYTE(v30) = v58;
    LOBYTE(v78) = v58;
    *(&v78 + 1) = *v106;
    DWORD1(v78) = *&v106[3];
    v43 = v68;
    *(&v78 + 1) = v66;
    *&v79 = v68;
    v44 = v61;
    *(&v79 + 1) = v61;
    LOBYTE(v80) = v67;
    DWORD1(v80) = *&v105[3];
    *(&v80 + 1) = *v105;
    v45 = v59;
    *(&v80 + 1) = v59;
    v46 = v60;
    v81 = v60;
    v48 = v78;
    v47 = v79;
    v49 = v80;
    v50 = v108;
    *(v108 + 112) = v60;
    v50[5] = v47;
    v50[6] = v49;
    v51 = v74;
    v52 = v75;
    v53 = v76;
    v50[3] = v77;
    v50[4] = v48;
    v50[1] = v52;
    v50[2] = v53;
    *v50 = v51;
    sub_2142F236C(&v74, &v85);
    __swift_destroy_boxed_opaque_existential_1(v72);
    *&v85 = v71;
    *(&v85 + 1) = v70;
    v86 = v64;
    LOBYTE(v87) = v73;
    *(&v87 + 1) = v107[0];
    HIDWORD(v87) = *(v107 + 3);
    v88 = v65;
    v89 = v63;
    v90 = v69;
    v91 = v42;
    v92 = v30;
    *v93 = *v106;
    *&v93[3] = *&v106[3];
    v94 = v66;
    v95 = v43;
    v96 = v44;
    v97 = v67;
    *v98 = *v105;
    *&v98[3] = *&v105[3];
    v99 = v45;
    v100 = v46;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000014;
    v31[1] = 0x800000021478E300;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v32 = v72;
    v33 = v63;
    (*(v73 + 8))(v16, v14);

    v34 = v55;
    v35 = v56;
    sub_213FDC6D0(v56, v55);
    v36 = v66;
    v37 = v68;
    v38 = v57;
    __swift_destroy_boxed_opaque_existential_1(v32);
    v85 = v64;
    v86 = v38;
    LOBYTE(v87) = v62;
    *(&v87 + 1) = v107[0];
    HIDWORD(v87) = *(v107 + 3);
    v88 = v65;
    v89 = v33;
    v90 = v35;
    v91 = v34;
    v92 = v58;
    *v93 = *v106;
    *&v93[3] = *&v106[3];
    v94 = v36;
    v95 = v37;
    v96 = v61;
    v97 = v67;
    *&v98[3] = *&v105[3];
    *v98 = *v105;
    v99 = v59;
    v100 = v60;
  }

  return sub_2142F22C4(&v85);
}

uint64_t GroupContext.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071D8, &qword_2146F4948);
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 80);
  v19 = *(v1 + 72);
  v20 = v9;
  v17 = *(v1 + 88);
  v18 = v11;
  v24 = *(v1 + 96);
  v16 = *(v1 + 104);
  v15 = *(v1 + 112);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F2318();
  sub_2146DAA28();
  if (v8)
  {
    v22 = v8;
    v25 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    if (v2)
    {
      return (*(v21 + 8))(v7, v4);
    }

    if (v10 != 1)
    {
      v22 = v20;
      v23 = v10;
      v25 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v22 = v19;
      v23 = v18;
      v25 = 3;
      sub_2146DA388();
      v22 = v17;
      LOBYTE(v23) = v24;
      v25 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
      sub_2142E3778();
      sub_2146DA388();
      v22 = v16;
      LOBYTE(v23) = v15;
      v25 = 5;
      sub_2146DA388();
      return (*(v21 + 8))(v7, v4);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21413D3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 1024;
  *(v7 + 16) = sub_21438F758;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478E350;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  v12 = v10(v16, &v22, &v17);
  if (v3)
  {
  }

  else
  {
    if (v12)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v10;
      *(a3 + 8) = v9;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v11;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD00000000000001CLL;
    v14[1] = 0x800000021478E350;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21413D618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21413D6A4(uint64_t a1)
{
  v2 = sub_2142F23C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413D6E0(uint64_t a1)
{
  v2 = sub_2142F23C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413D71C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071E0, &qword_2146F4950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F23C8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v26 = a2;
  v29 = v11;
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 1024;
  *(v15 + 16) = sub_21438F758;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v32);
  v18 = v32;
  v17 = v33;
  v19 = v35;
  v31[0] = v29;
  v31[1] = v30;
  v37 = v36;
  v38 = v36;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478E350;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;
  v28 = v19;

  v27 = v18;
  v20 = v18(v31, &v38, &v32);
  v21 = v27;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    v22 = v26;
    *v26 = v21;
    v22[1] = v17;
    v23 = v30;
    v22[2] = v29;
    v22[3] = v23;
    *(v22 + 32) = v37;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v24 = 0xD00000000000001CLL;
  v24[1] = 0x800000021478E350;
  v24[2] = 0xD00000000000001CLL;
  v24[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413DB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_214698BE4(&v14);
  v7 = v14;
  v6 = v15;
  v8 = v18;
  v13[0] = a1;
  v13[1] = a2;
  v19 = v18;
  v14 = 0x2E444970756F7247;
  v15 = 0xEA00000000006469;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  v9 = v7(v13, &v19, &v14);
  if (v3)
  {
  }

  else
  {
    if (v9)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v7;
      *(a3 + 8) = v6;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v11 = 0x2E444970756F7247;
    v11[1] = 0xEA00000000006469;
    v11[2] = 0xD00000000000001CLL;
    v11[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21413DCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2146DA6A8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21413DD48(uint64_t a1)
{
  v2 = sub_2142F241C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413DD84(uint64_t a1)
{
  v2 = sub_2142F241C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413DDC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9071F8, &qword_2146F4960);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F241C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v26 = a2;
  v14 = v13;
  v15 = v11;
  sub_214698BE4(&v32);
  v17 = v32;
  v16 = v33;
  v27 = v15;
  v31[0] = v15;
  v31[1] = v14;
  v29 = v14;
  v30 = v35;
  v18 = v36;
  v38 = v36;
  v32 = 0x2E444970756F7247;
  v33 = 0xEA00000000006469;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v28 = v16;
  v19 = v17(v31, &v38, &v32);
  v37 = v18;
  v25 = v17;
  if (v19)
  {

    (*(v6 + 8))(v9, v5);

    v20 = v28;

    v21 = v26;
    *v26 = v25;
    v21[1] = v20;
    v22 = v29;
    v21[2] = v27;
    v21[3] = v22;
    *(v21 + 32) = v37;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0x2E444970756F7247;
  v23[1] = 0xEA00000000006469;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21413E164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  sub_213FDCA18(a3, a4);
  v30 = a5;
  v31 = a6;
  sub_213FDCA18(a5, a6);
  sub_213FDCA18(a7, a8);
  sub_213FDCA18(a10, a11);
  sub_2144B95DC(&v32);
  v18 = v32;
  v19 = v33;
  v20 = v34;
  v21 = v35;
  v46[0] = a1;
  v46[1] = a2;
  v27 = v36;
  v48 = v36;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478E370;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  sub_213FDC9D0(v20, v21);
  v22 = v18(v46, &v48, &v32);
  if (v28)
  {

    sub_213FDC6BC(a10, a11);
    sub_213FDC6BC(a7, a8);
    v25 = a11;
  }

  else
  {
    if (v22)
    {
      sub_213FDC6D0(v20, v21);
      sub_213FDC6BC(a10, a11);
      sub_213FDC6BC(a7, a8);
      sub_213FDC6BC(v30, v31);
      sub_213FDC6BC(a3, a4);

      result = sub_213FDC6D0(v20, v21);
      *a9 = v18;
      *(a9 + 8) = v19;
      *(a9 + 16) = a1;
      *(a9 + 24) = a2;
      *(a9 + 32) = v27;
      *(a9 + 40) = a3;
      *(a9 + 48) = a4;
      *(a9 + 56) = v30;
      *(a9 + 64) = v31;
      *(a9 + 72) = a7;
      *(a9 + 80) = a8;
      *(a9 + 88) = a10;
      *(a9 + 96) = a11;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD00000000000001CLL;
    v24[1] = 0x800000021478E370;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    v25 = a11;
    sub_213FDC6BC(a10, a11);
    sub_213FDC6BC(a7, a8);
  }

  sub_213FDC6BC(v30, v31);
  sub_213FDC6BC(a3, a4);

  sub_213FDC6D0(v20, v21);
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v27;
  *v37 = *v47;
  *&v37[3] = *&v47[3];
  v38 = a3;
  v39 = a4;
  v40 = v30;
  v41 = v31;
  v42 = a7;
  v43 = a8;
  v44 = a10;
  v45 = v25;
  return sub_2142F2470(&v32);
}

uint64_t sub_21413E4A4()
{
  v1 = *v0;
  v2 = 1145656661;
  v3 = 0x6F666E496C6C6163;
  v4 = 7221858;
  if (v1 != 3)
  {
    v4 = 7811682;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F6C42616964656DLL;
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

uint64_t sub_21413E538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214366784(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21413E560(uint64_t a1)
{
  v2 = sub_2142F24C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21413E59C(uint64_t a1)
{
  v2 = sub_2142F24C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21413E5D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907210, &qword_2146F4970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v97 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F24C4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v97);
  }

  v69 = a2;
  v70 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v71) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v13 = v78;
  v12 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v71) = 1;
  v14 = sub_2142E1278();
  sub_2146DA1C8();
  v68 = v12;
  v15 = v14;
  v17 = v78;
  v16 = v79;
  LOBYTE(v71) = 2;
  v67 = v15;
  sub_2146DA1C8();
  v65 = v17;
  v66 = v16;
  v19 = v78;
  v18 = v79;
  LOBYTE(v71) = 3;
  sub_2146DA1C8();
  v62 = v13;
  v63 = v18;
  v64 = v19;
  v21 = v78;
  v20 = v79;
  v93 = 4;
  sub_2146DA1C8();
  v23 = v20;
  v24 = v94;
  v25 = v95;
  sub_213FDCA18(v65, v66);
  sub_213FDCA18(v64, v63);
  v61 = v21;
  v58 = v23;
  sub_213FDCA18(v21, v23);
  v67 = v24;
  v60 = v25;
  sub_213FDCA18(v24, v25);
  sub_2144B95DC(&v78);
  v27 = v78;
  v26 = v79;
  v28 = v80;
  v29 = v81;
  v92[0] = v62;
  v92[1] = v68;
  v57 = v82;
  LOBYTE(v71) = v82;
  v78 = 0xD00000000000001CLL;
  v79 = 0x800000021478E370;
  v80 = 0xD00000000000001CLL;
  v81 = 0x800000021478A360;

  v55 = v29;
  v56 = v28;
  sub_213FDC9D0(v28, v29);
  v54 = v26;
  v59 = v27;
  v30 = v27(v92, &v71, &v78);
  v31 = v60;
  v32 = v67;
  if (v30)
  {
    sub_213FDC6D0(v56, v55);

    sub_213FDC6BC(v32, v31);
    v33 = v61;
    v34 = v58;
    sub_213FDC6BC(v61, v58);
    v35 = v64;
    sub_213FDC6BC(v64, v63);
    v36 = v65;
    sub_213FDC6BC(v65, v66);
    (*(v70 + 8))(v9, v5);
    v37 = v54;

    sub_213FDC6D0(v56, v55);
    *&v71 = v59;
    *(&v71 + 1) = v37;
    v38 = v63;
    *&v72 = v62;
    *(&v72 + 1) = v68;
    LOBYTE(v73) = v57;
    v39 = v66;
    *(&v73 + 1) = v36;
    *&v74 = v66;
    *(&v74 + 1) = v35;
    *&v75 = v63;
    *(&v75 + 1) = v33;
    *&v76 = v34;
    v40 = v60;
    *(&v76 + 1) = v67;
    v77 = v60;
    v41 = v69;
    *(v69 + 96) = v60;
    v42 = v76;
    v41[4] = v75;
    v41[5] = v42;
    v43 = v72;
    *v41 = v71;
    v41[1] = v43;
    v44 = v74;
    v41[2] = v73;
    v41[3] = v44;
    sub_2142F2518(&v71, &v78);
    __swift_destroy_boxed_opaque_existential_1(v97);
    v78 = v59;
    v79 = v37;
    v80 = v62;
    v81 = v68;
    v82 = v57;
    v84 = v36;
    v85 = v39;
    v86 = v35;
    v87 = v38;
    v88 = v61;
    v89 = v58;
    v90 = v67;
    v91 = v40;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v45 = 0xD00000000000001CLL;
    v45[1] = 0x800000021478E370;
    v45[2] = 0xD00000000000001CLL;
    v45[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v32, v31);
    v46 = v64;
    v47 = v58;
    sub_213FDC6BC(v61, v58);
    v48 = v63;
    sub_213FDC6BC(v46, v63);
    v49 = v65;
    v50 = v66;
    sub_213FDC6BC(v65, v66);
    (*(v70 + 8))(v9, v5);
    v51 = v54;

    v53 = v55;
    v52 = v56;
    sub_213FDC6D0(v56, v55);
    __swift_destroy_boxed_opaque_existential_1(v97);
    v78 = v59;
    v79 = v51;
    v80 = v52;
    v81 = v53;
    v82 = v57;
    *v83 = v96[0];
    *&v83[3] = *(v96 + 3);
    v84 = v49;
    v85 = v50;
    v86 = v64;
    v87 = v48;
    v88 = v61;
    v89 = v47;
    v90 = v67;
    v91 = v60;
  }

  return sub_2142F2470(&v78);
}

uint64_t sub_21413EC7C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907220, &qword_2146F4978);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v8 = v1[2];
  v7 = v1[3];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[8];
  v23 = v1[7];
  v24 = v9;
  v12 = v1[10];
  v21 = v1[9];
  v22 = v11;
  v13 = v1[12];
  v19 = v1[11];
  v20 = v12;
  v18 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F24C4();
  sub_2146DAA28();
  if (v7 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v27 = v8;
    v28 = v7;
    v29 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v15 = v25;
    sub_2146DA388();
    if (!v15)
    {
      v27 = v24;
      v28 = v10;
      v29 = 1;
      sub_213FDCA18(v24, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v27, v28);
      v27 = v23;
      v28 = v22;
      v29 = 2;
      sub_213FDCA18(v23, v22);
      sub_2146DA388();
      sub_213FDC6BC(v27, v28);
      v27 = v21;
      v28 = v20;
      v29 = 3;
      sub_213FDCA18(v21, v20);
      sub_2146DA388();
      sub_213FDC6BC(v27, v28);
      v27 = v19;
      v28 = v18;
      v29 = 4;
      sub_213FDCA18(v19, v18);
      sub_2146DA388();
      sub_213FDC6BC(v27, v28);
    }

    return (*(v26 + 8))(v6, v3);
  }

  return result;
}

void *sub_21413EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void, void *, _BYTE *), char a10, uint64_t a11, __int128 *a12, uint64_t (*a13)(void, void *, _BYTE *), const void *a14, uint64_t a15, unint64_t a16, uint64_t (*a17)(void, void *, _BYTE *), char a18)
{
  v19 = MEMORY[0x28223BE20](a1);
  v82 = v20;
  v106 = v21;
  v83 = v22;
  v71 = v24;
  v72 = v23;
  v100 = v25;
  v27 = v26;
  v29 = v28;
  v30 = a12[2];
  v152 = a12[3];
  v31 = a12[5];
  v153 = a12[4];
  v154 = v31;
  v32 = a12[1];
  v149 = *a12;
  v150 = v32;
  v81 = *v19;
  v155 = *(a12 + 12);
  v151 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_214059900;
  *(v34 + 24) = 0;
  *(v33 + 32) = v34;
  sub_214042B80(v33, &v140);
  v35 = v140;
  v36 = v141;
  v73 = v142;
  v37 = v143;
  v38 = v144;
  sub_2144B983C(v138);
  v108 = v138[0];
  v110 = v138[1];
  v165 = v138[2];
  v109 = v139;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2146E9BF0;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_214059900;
  *(v40 + 24) = 0;
  *(v39 + 32) = v40;
  sub_214042B80(v39, v136);
  v102 = v136[0];
  v74 = v136[2];
  v104 = v136[1];
  v105 = v136[3];
  v103 = v137;
  sub_2144B99A8(v132);
  v98 = v132[0];
  v101 = v132[1];
  v75 = v132[2];
  v96 = v133;
  v41 = v134;
  v99 = v135;
  sub_2144B99E4(v130);
  v89 = v130[0];
  v97 = v130[1];
  v94 = v130[2];
  v84 = v131;
  sub_2144B9B54(v128);
  v91 = v128[0];
  v92 = v128[1];
  v88 = v128[2];
  v93 = v128[3];
  v90 = v129;
  sub_2144B9D2C(v124);
  v85 = v124[0];
  v87 = v124[1];
  v78 = v124[2];
  v77 = v125;
  v86 = v127;
  v79 = v106 & 1;
  v146 = v41;
  memcpy(&__src[7], a14, 0xB81uLL);
  v145 = v126;
  memcpy(v164, __src, 0xB88uLL);
  v42 = v126;
  v158 = v41;
  v147 = v126;
  v140 = v29;
  v141 = v27;
  v80 = v38;
  LOBYTE(v136[0]) = v38;
  *__src = 0xD00000000000001ELL;
  *&__src[8] = 0x800000021478E390;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  v107 = v36;
  v43 = v35(&v140, v136, __src);
  if (v18)
  {
    v44 = a15;
LABEL_6:
    sub_213FDC6BC(v44, a16);

    v47 = v89;

    v48 = v107;

    v49 = v73;
    v50 = v84;
LABEL_7:
    v51 = v88;
    v52 = v94;
    v54 = v74;
    v53 = v75;
LABEL_8:
    __src[0] = v81;
    *&__src[1] = *v163;
    *&__src[4] = *&v163[3];
    *&__src[8] = v35;
    *&__src[16] = v48;
    *&__src[24] = v49;
    *&__src[32] = v37;
    __src[40] = v80;
    *&__src[41] = *v162;
    *&__src[44] = *&v162[3];
    *&__src[48] = v108;
    *&__src[56] = v110;
    *&__src[64] = v165;
    __src[72] = v109;
    *&__src[73] = *v161;
    *&__src[76] = *&v161[3];
    *&__src[80] = v102;
    *&__src[88] = v104;
    *&__src[96] = v54;
    *&__src[104] = v105;
    __src[112] = v103;
    __src[113] = v79;
    __src[114] = v82;
    *&__src[115] = v159;
    __src[119] = v160;
    *&__src[120] = v98;
    *&__src[128] = v101;
    *&__src[136] = v53;
    __src[144] = v96;
    __src[145] = v158;
    __src[146] = v99;
    __src[151] = v157;
    *&__src[147] = v156;
    *&__src[152] = a11;
    *&__src[240] = v154;
    *&__src[224] = v153;
    *&__src[208] = v152;
    *&__src[192] = v151;
    *&__src[176] = v150;
    *&__src[160] = v149;
    *&__src[256] = v155;
    *&__src[264] = v47;
    *&__src[272] = v97;
    *&__src[280] = v52;
    __src[288] = v50;
    memcpy(&__src[289], v164, 0xB8FuLL);
    v112 = v91;
    v113 = v92;
    v114 = v51;
    v115 = v93;
    v116 = v90;
    *v117 = *v148;
    *&v117[3] = *&v148[3];
    v118 = v85;
    v119 = v87;
    v120 = v78;
    v121 = v77;
    v122 = v147;
    v123 = v86;
    return sub_2142F2574(__src);
  }

  if ((v43 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD00000000000001ELL;
    v46[1] = 0x800000021478E390;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();

    v44 = a15;
    goto LABEL_6;
  }

  v140 = v100;
  LOBYTE(v136[0]) = v109;
  *__src = 0xD000000000000023;
  *&__src[8] = 0x800000021478E3B0;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  v45 = v108(&v140, v136, __src);
  if ((v45 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD000000000000023;
    v58[1] = 0x800000021478E3B0;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a15, a16);

    v47 = v89;

    v37 = v27;
LABEL_13:
    v50 = v84;
    v49 = v29;
    v48 = v107;
    goto LABEL_7;
  }

  v140 = v72;
  v141 = v83;
  LOBYTE(v136[0]) = v103;
  *__src = 0xD00000000000001ALL;
  *&__src[8] = 0x800000021478E3E0;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  if ((v102(&v140, v136, __src) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v59 = 0xD00000000000001ALL;
    v59[1] = 0x800000021478E3E0;
    v59[2] = 0xD00000000000001CLL;
    v59[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a15, a16);

    v47 = v89;

    v37 = v27;
    v165 = v100;
    goto LABEL_13;
  }

  v165 = 0xD00000000000001ALL;

  v140 = a9;
  v56 = v165;
  LOBYTE(v141) = a10 & 1;
  LOBYTE(v136[0]) = v99;
  *__src = v165;
  *&__src[8] = 0x800000021478E400;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  v57 = v98(&v140, v136, __src);
  if ((v57 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v61 = v56;
    v61[1] = 0x800000021478E400;
    v61[2] = 0xD00000000000001CLL;
    v61[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a15, a16);
    v47 = v89;

    v158 = v41 & 1;
    v37 = v27;
    v165 = v100;
    v54 = v72;
    v105 = v83;
    v50 = v84;
    v49 = v29;
    v48 = v107;
    v51 = v88;
    v52 = v94;
    v53 = v75;
    goto LABEL_8;
  }

  v96 = a10 & 1;

  v158 = 0;
  v140 = a13;
  v50 = v84;
  LOBYTE(v136[0]) = v84;
  *__src = 0xD000000000000023;
  *&__src[8] = 0x800000021478E420;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  sub_213FBE134(v94);
  v60 = v89(&v140, v136, __src);
  v47 = v89;
  if ((v60 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v62 = 0xD000000000000023;
    v62[1] = 0x800000021478E420;
    v62[2] = 0xD00000000000001CLL;
    v62[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a15, a16);

    v52 = v94;
    sub_213FB7170(v94);
    v37 = v27;
    v165 = v100;
    v54 = v72;
    v105 = v83;
    v53 = a9;
    v49 = v29;
    v48 = v107;
    v51 = v88;
    goto LABEL_8;
  }

  sub_213FB7170(v94);

  sub_213FB7170(v94);
  *__src = v91;
  *&__src[8] = v92;
  *&__src[16] = v88;
  *&__src[24] = v93;
  __src[32] = v90;

  sub_21404F7E0(v88, v93);
  sub_214032118(a15, a16, 2, v56, 0x800000021478E450, 0xD00000000000001CLL, 0x800000021478A360);

  v91 = *__src;
  v70 = *&__src[8];
  v76 = *&__src[16];
  v95 = *&__src[24];
  v90 = __src[32];

  sub_214032564(v88, v93);
  v140 = a17;
  LOBYTE(v141) = a18 & 1;
  LOBYTE(v136[0]) = v86;
  *__src = 0xD000000000000019;
  *&__src[8] = 0x800000021478E470;
  *&__src[16] = 0xD00000000000001CLL;
  *&__src[24] = 0x800000021478A360;

  v63 = v85(&v140, v136, __src);
  if ((v63 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v69 = 0xD000000000000019;
    v69[1] = 0x800000021478E470;
    v69[2] = 0xD00000000000001CLL;
    v69[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FDC6BC(a15, a16);

    v37 = v27;
    v147 = v42 & 1;
    v165 = v100;
    v54 = v72;
    v105 = v83;
    v53 = a9;
    v51 = v76;
    v52 = a13;
    v92 = v70;
    v93 = v95;
    v50 = v84;
    v47 = v89;
    v49 = v29;
    v48 = v107;
    goto LABEL_8;
  }

  sub_213FDC6BC(a15, a16);

  v147 = 0;
  v64 = v158;
  *v71 = v81;
  *(v71 + 1) = *v163;
  *(v71 + 4) = *&v163[3];
  *(v71 + 8) = v35;
  *(v71 + 16) = v107;
  *(v71 + 24) = v29;
  *(v71 + 32) = v27;
  *(v71 + 40) = v38;
  *(v71 + 41) = *v162;
  *(v71 + 44) = *&v162[3];
  *(v71 + 48) = v108;
  *(v71 + 56) = v110;
  *(v71 + 64) = v100;
  *(v71 + 72) = v109;
  *(v71 + 73) = *v161;
  *(v71 + 76) = *&v161[3];
  *(v71 + 80) = v102;
  *(v71 + 88) = v104;
  *(v71 + 96) = v72;
  *(v71 + 104) = v83;
  *(v71 + 112) = v103;
  *(v71 + 113) = v79;
  *(v71 + 114) = v82;
  *(v71 + 115) = v159;
  *(v71 + 119) = v160;
  *(v71 + 120) = v98;
  *(v71 + 128) = v101;
  *(v71 + 136) = a9;
  *(v71 + 144) = v96;
  *(v71 + 145) = v64;
  *(v71 + 146) = v99;
  *(v71 + 151) = v157;
  *(v71 + 147) = v156;
  *(v71 + 152) = a11;
  v65 = v155;
  v66 = v154;
  *(v71 + 224) = v153;
  *(v71 + 240) = v66;
  v67 = v152;
  *(v71 + 192) = v151;
  *(v71 + 208) = v67;
  v68 = v150;
  *(v71 + 160) = v149;
  *(v71 + 176) = v68;
  *(v71 + 256) = v65;
  *(v71 + 264) = v89;
  *(v71 + 272) = v97;
  *(v71 + 280) = a13;
  *(v71 + 288) = v84;
  result = memcpy((v71 + 289), v164, 0xB8FuLL);
  *(v71 + 3248) = v91;
  *(v71 + 3256) = v70;
  *(v71 + 3264) = v76;
  *(v71 + 3272) = v95;
  *(v71 + 3280) = v90;
  *(v71 + 3281) = *v148;
  *(v71 + 3284) = *&v148[3];
  *(v71 + 3288) = v85;
  *(v71 + 3296) = v87;
  *(v71 + 3304) = a17;
  *(v71 + 3312) = a18 & 1;
  *(v71 + 3313) = 0;
  *(v71 + 3314) = v86;
  return result;
}

unint64_t sub_214140008(char a1)
{
  result = 0x724774756F6E6166;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x496E6F6973736573;
      break;
    case 4:
      result = 0x616974696E497369;
      break;
    case 5:
      result = 0x4F73756C50557369;
      break;
    case 6:
      result = 0x6D617473656D6974;
      break;
    case 7:
    case 8:
      result = 0x7069636974726170;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x6F43746E65696C63;
      break;
    case 11:
      result = 0x654B63696C627570;
      break;
    case 12:
      result = 0x65646F4D70617277;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2141401B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436693C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141401D8(uint64_t a1)
{
  v2 = sub_2142F25C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214140214(uint64_t a1)
{
  v2 = sub_2142F25C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214140250(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v219 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907228, &qword_2146F4980);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - v7;
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2142F25C8();
  sub_2146DAA08();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  v106 = v2;
  v10 = v5;
  v107[0] = 0;
  sub_2142F261C();
  sub_2146DA1C8();
  v11 = v8;
  v12 = v108;
  LOBYTE(v108) = 1;
  v13 = sub_2146DA168();
  v15 = v14;
  v105 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  v107[0] = 2;
  sub_2142E15CC();
  sub_2146DA1C8();
  v104 = v12;
  v16 = v108;
  LOBYTE(v108) = 3;
  v101 = sub_2146DA168();
  v102 = v17;
  v103 = v16;
  LOBYTE(v108) = 4;
  LODWORD(v100) = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v107[0] = 5;
  sub_2142E1378();
  sub_2146DA1C8();
  v99 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  v107[0] = 6;
  sub_2142E35EC();
  sub_2146DA1C8();
  v98 = v108;
  v19 = v109;
  LOBYTE(v108) = 7;
  v97 = sub_2146DA228();
  v193 = 8;
  sub_2142F2670();
  sub_2146DA1C8();
  v96 = v15;
  v190 = v198;
  v191 = v199;
  v192 = v200;
  v186 = v194;
  v187 = v195;
  v188 = v196;
  v189 = v197;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907248, &qword_2146F4988);
  v107[0] = 9;
  sub_2142F26C4();
  v20 = v4;
  v21 = v11;
  sub_2146DA1C8();
  v95 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907278, &qword_2146F49A0);
  v184[2951] = 10;
  sub_2142F2850();
  sub_2146DA1C8();
  memcpy(v184, v185, 0xB81uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v107[0] = 11;
  sub_2142E1278();
  sub_2146DA1C8();
  v93 = v108;
  v94 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  v181[2959] = 12;
  sub_2142E11FC();
  sub_2146DA1C8();
  v56 = v182;
  v57 = v183;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v22 = swift_allocObject();
  v85 = xmmword_2146E9BF0;
  *(v22 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_214059900;
  *(v23 + 24) = 0;
  *(v22 + 32) = v23;
  sub_2142F2518(&v186, &v108);
  sub_213FB2E54(v184, &v108, &qword_27C907278, &qword_2146F49A0);
  sub_214042B80(v22, &v108);
  v90 = v108;
  v92 = v109;
  v59 = v110;
  v62 = v111;
  v91 = v112;
  sub_2144B983C(v178);
  v86 = v178[0];
  v88 = v178[1];
  v89 = v178[2];
  v87 = v179;
  v24 = swift_allocObject();
  *(v24 + 16) = v85;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214059900;
  *(v25 + 24) = 0;
  *(v24 + 32) = v25;
  sub_214042B80(v24, v107);
  v82 = *v107;
  v78 = *&v107[16];
  v84 = *&v107[8];
  *&v85 = *&v107[24];
  v83 = v107[32];
  sub_2144B99A8(v174);
  v79 = v174[0];
  v81 = v174[1];
  v73 = v174[2];
  v72 = v175;
  LOBYTE(v24) = v176;
  v80 = v177;
  sub_2144B99E4(v172);
  v74 = v172[0];
  v76 = v172[1];
  v77 = v172[2];
  v75 = v173;
  sub_2144B9B54(&v167);
  v67 = v167;
  v69 = v168;
  v70 = v169;
  v71 = v170;
  v68 = v171;
  sub_2144B9D2C(v163);
  v64 = v163[0];
  v66 = v163[1];
  v61 = v163[2];
  v60 = v164;
  v65 = v166;
  v63 = v100 & 1;
  v181[2958] = v24;
  v208 = v190;
  v209 = v191;
  v210 = v192;
  v204 = v186;
  v205 = v187;
  v206 = v188;
  v207 = v189;
  memcpy(&v181[7], v184, 0xB81uLL);
  v180 = v165;
  LODWORD(v58) = v24;
  v213 = v24;
  v55 = v165;
  v201 = v165;
  *v107 = v105;
  *&v107[8] = v96;
  LOBYTE(v167) = v91;
  v108 = 0xD00000000000001ELL;
  v109 = 0x800000021478E390;
  v110 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;
  v111 = 0x800000021478A360;
  v26 = v62;

  if (v90(v107, &v167, &v108))
  {
    v27 = v100;

    *v107 = v103;
    LOBYTE(v167) = v87;
    v108 = 0xD000000000000023;
    v109 = 0x800000021478E3B0;
    v110 = 0xD00000000000001CLL;
    v111 = v27;

    v28 = v86(v107, &v167, &v108);
    if (v28)
    {
      v31 = v100;

      *v107 = v101;
      *&v107[8] = v102;
      LOBYTE(v167) = v83;
      v108 = 0xD00000000000001ALL;
      v109 = 0x800000021478E3E0;
      v110 = 0xD00000000000001CLL;
      v111 = v31;

      v32 = v82(v107, &v167, &v108);
      if (v32)
      {
        v35 = v100;

        *v107 = v98;
        v107[8] = v19;
        LOBYTE(v167) = v80;
        v108 = 0xD00000000000001ALL;
        v109 = 0x800000021478E400;
        v110 = 0xD00000000000001CLL;
        v111 = v35;

        v36 = v79(v107, &v167, &v108);
        if (v36)
        {
          v38 = v100;

          v213 = 0;
          *v107 = v95;
          LOBYTE(v167) = v75;
          v108 = 0xD000000000000023;
          v109 = 0x800000021478E420;
          v110 = 0xD00000000000001CLL;
          v111 = v38;

          sub_213FBE134(v77);
          v39 = v74(v107, &v167, &v108);
          if (v39)
          {
            v41 = v77;
            sub_213FB7170(v77);

            sub_213FB7170(v41);
            v108 = v67;
            v42 = v70;
            v109 = v69;
            v110 = v70;
            v43 = v71;
            v111 = v71;
            LOBYTE(v112) = v68;

            sub_21404F7E0(v42, v43);
            sub_214032118(v93, v94, 2, 0xD00000000000001ALL, 0x800000021478E450, 0xD00000000000001CLL, v100);
            v46 = v100;

            v67 = v108;
            v58 = v109;
            v59 = v110;
            v62 = v111;
            v68 = v112;

            sub_214032564(v70, v71);
            v167 = v56;
            LOBYTE(v168) = v57;
            v107[0] = v65;
            v108 = 0xD000000000000019;
            v109 = 0x800000021478E470;
            v110 = 0xD00000000000001CLL;
            v111 = v46;

            v47 = v64(&v167, v107, &v108);
            if (v47)
            {
              sub_213FDC6BC(v93, v94);

              sub_2142F2470(&v186);
              sub_213FB2DF4(v184, &qword_27C907278, &qword_2146F49A0);
              (*(v10 + 8))(v21, v4);
              v48 = v66;

              v201 = 0;
              v107[0] = v104;
              *&v107[1] = v218[0];
              *&v107[4] = *(v218 + 3);
              *&v107[8] = v90;
              *&v107[16] = v92;
              *&v107[24] = v105;
              *&v107[32] = v96;
              v107[40] = v91;
              *&v107[41] = *v217;
              *&v107[44] = *&v217[3];
              *&v107[48] = v86;
              *&v107[56] = v88;
              *&v107[64] = v103;
              v107[72] = v87;
              *&v107[73] = *v216;
              *&v107[76] = *&v216[3];
              *&v107[80] = v82;
              *&v107[88] = v84;
              *&v107[96] = v101;
              *&v107[104] = v102;
              v107[112] = v83;
              v107[113] = v63;
              v107[114] = v99;
              *&v107[115] = v214;
              v107[119] = v215;
              *&v107[120] = v79;
              *&v107[128] = v81;
              *&v107[136] = v98;
              v54 = v19;
              v107[144] = v19;
              LODWORD(v100) = v213;
              v107[145] = v213;
              v107[146] = v80;
              v107[151] = v212;
              *&v107[147] = v211;
              *&v107[152] = v97;
              *&v107[240] = v209;
              *&v107[224] = v208;
              *&v107[208] = v207;
              *&v107[192] = v206;
              *&v107[176] = v205;
              *&v107[160] = v204;
              *&v107[256] = v210;
              *&v107[264] = v74;
              *&v107[272] = v76;
              *&v107[280] = v95;
              v107[288] = v75;
              memcpy(&v107[289], v181, 0xB88uLL);
              *&v107[3241] = *v203;
              *&v107[3244] = *&v203[3];
              v49 = v67;
              *&v107[3248] = v67;
              *&v107[3256] = v58;
              *&v107[3264] = v59;
              *&v107[3272] = v62;
              v107[3280] = v68;
              *&v107[3281] = *v202;
              *&v107[3284] = *&v202[3];
              v50 = v64;
              *&v107[3288] = v64;
              *&v107[3296] = v48;
              v51 = v56;
              *&v107[3304] = v56;
              v107[3312] = v57;
              LODWORD(v94) = 0;
              v107[3313] = 0;
              v52 = v65;
              v107[3314] = v65;
              memcpy(v219, v107, 0xCF3uLL);
              sub_2142F2928(v107, &v108);
              __swift_destroy_boxed_opaque_existential_1(v106);
              LOBYTE(v108) = v104;
              *(&v108 + 1) = v218[0];
              HIDWORD(v108) = *(v218 + 3);
              v109 = v90;
              v110 = v92;
              v111 = v105;
              v112 = v96;
              v113 = v91;
              *v114 = *v217;
              *&v114[3] = *&v217[3];
              v115 = v86;
              v116 = v88;
              v117 = v103;
              v118 = v87;
              *v119 = *v216;
              *&v119[3] = *&v216[3];
              v120 = v82;
              v121 = v84;
              v122 = v101;
              v123 = v102;
              v124 = v83;
              v125 = v63;
              v126 = v99;
              v127 = v214;
              v128 = v215;
              v129 = v79;
              v130 = v81;
              v131 = v98;
              v132 = v54;
              v133 = v100;
              v134 = v80;
              v136 = v212;
              v135 = v211;
              v137 = v97;
              v144 = v210;
              v142 = v208;
              v143 = v209;
              v140 = v206;
              v141 = v207;
              v138 = v204;
              v139 = v205;
              v145 = v74;
              v146 = v76;
              v147 = v95;
              v148 = v75;
              memcpy(v149, v181, sizeof(v149));
              *v150 = *v203;
              *&v150[3] = *&v203[3];
              v151 = v49;
              v152 = v58;
              v153 = v59;
              v154 = v62;
              v155 = v68;
              *v156 = *v202;
              *&v156[3] = *&v202[3];
              v157 = v50;
              v158 = v66;
              v159 = v51;
              v160 = v57;
              v161 = v94;
              v162 = v52;
              return sub_2142F2574(&v108);
            }

            sub_214031C4C();
            swift_allocError();
            *v53 = 0xD000000000000019;
            v53[1] = 0x800000021478E470;
            v53[2] = 0xD00000000000001CLL;
            v53[3] = v100;
            swift_willThrow();
            sub_213FDC6BC(v93, v94);
            sub_2142F2470(&v186);
            sub_213FB2DF4(v184, &qword_27C907278, &qword_2146F49A0);
            (*(v10 + 8))(v21, v4);

            v89 = v103;
            v201 = v55;
            *&v85 = v102;
            v73 = v98;
            v72 = v19;
            v26 = v96;
            v77 = v95;
            v78 = v101;
            v69 = v58;
            v70 = v59;
            v71 = v62;
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v44 = 0xD000000000000023;
            v44[1] = 0x800000021478E420;
            v45 = v100;
            v44[2] = 0xD00000000000001CLL;
            v44[3] = v45;
            swift_willThrow();

            sub_213FDC6BC(v93, v94);

            sub_2142F2470(&v186);
            sub_213FB2DF4(v184, &qword_27C907278, &qword_2146F49A0);
            (*(v10 + 8))(v21, v20);

            sub_213FB7170(v77);
            v26 = v96;
            v89 = v103;
            v78 = v101;
            *&v85 = v102;
            v73 = v98;
            v72 = v19;
          }
        }

        else
        {

          sub_214031C4C();
          swift_allocError();
          *v40 = 0xD00000000000001ALL;
          v40[1] = 0x800000021478E400;
          v40[2] = 0xD00000000000001CLL;
          v40[3] = v100;
          swift_willThrow();
          sub_213FDC6BC(v93, v94);
          sub_2142F2470(&v186);
          sub_213FB2DF4(v184, &qword_27C907278, &qword_2146F49A0);
          (*(v10 + 8))(v21, v4);

          v213 = v58 & 1;
          v26 = v96;
          v89 = v103;
          v78 = v101;
          *&v85 = v102;
        }
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v37 = 0xD00000000000001ALL;
        v37[1] = 0x800000021478E3E0;
        v37[2] = 0xD00000000000001CLL;
        v37[3] = v100;
        swift_willThrow();

        sub_213FDC6BC(v93, v94);
        sub_2142F2470(&v186);
        sub_213FB2DF4(v184, &qword_27C907278, &qword_2146F49A0);
        (*(v10 + 8))(v21, v4);

        v26 = v96;
        v89 = v103;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v33 = 0xD000000000000023;
      v33[1] = 0x800000021478E3B0;
      v34 = v100;
      v33[2] = 0xD00000000000001CLL;
      v33[3] = v34;
      swift_willThrow();

      sub_213FDC6BC(v93, v94);
      sub_2142F2470(&v186);
      sub_213FB2DF4(v184, &qword_27C907278, &qword_2146F49A0);
      (*(v10 + 8))(v21, v4);

      v26 = v96;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD00000000000001ELL;
    v29[1] = 0x800000021478E390;
    v30 = v100;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = v30;
    swift_willThrow();

    sub_213FDC6BC(v93, v94);
    sub_2142F2470(&v186);
    sub_213FB2DF4(v184, &qword_27C907278, &qword_2146F49A0);
    (*(v10 + 8))(v21, v4);

    v105 = v59;
  }

  __swift_destroy_boxed_opaque_existential_1(v106);
  LOBYTE(v108) = v104;
  *(&v108 + 1) = v218[0];
  HIDWORD(v108) = *(v218 + 3);
  v109 = v90;
  v110 = v92;
  v111 = v105;
  v112 = v26;
  v113 = v91;
  *v114 = *v217;
  *&v114[3] = *&v217[3];
  v115 = v86;
  v116 = v88;
  v117 = v89;
  v118 = v87;
  *v119 = *v216;
  *&v119[3] = *&v216[3];
  v120 = v82;
  v121 = v84;
  v122 = v78;
  v123 = v85;
  v124 = v83;
  v125 = v63;
  v126 = v99;
  v127 = v214;
  v128 = v215;
  v129 = v79;
  v130 = v81;
  v131 = v73;
  v132 = v72;
  v133 = v213;
  v134 = v80;
  v136 = v212;
  v135 = v211;
  v137 = v97;
  v144 = v210;
  v142 = v208;
  v143 = v209;
  v140 = v206;
  v141 = v207;
  v138 = v204;
  v139 = v205;
  v145 = v74;
  v146 = v76;
  v147 = v77;
  v148 = v75;
  memcpy(v149, v181, sizeof(v149));
  *v150 = *v203;
  *&v150[3] = *&v203[3];
  v151 = v67;
  v152 = v69;
  v153 = v70;
  v154 = v71;
  v155 = v68;
  *v156 = *v202;
  *&v156[3] = *&v202[3];
  v157 = v64;
  v158 = v66;
  v159 = v61;
  v160 = v60;
  v161 = v201;
  v162 = v65;
  return sub_2142F2574(&v108);
}

uint64_t sub_214141E54(uint64_t a1)
{
  v41 = v2;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907290, &qword_2146F49A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = *(v1 + 12);
  v60 = *(v1 + 13);
  v10 = *(v1 + 15);
  v61 = *(v1 + 14);
  v62 = v10;
  v11 = *(v1 + 11);
  v57 = *(v1 + 10);
  v58 = v11;
  v12 = *v1;
  v13 = *(v1 + 4);
  v40 = *(v1 + 3);
  v65 = v13;
  v14 = *(v1 + 8);
  v15 = *(v1 + 13);
  v35 = *(v1 + 12);
  v38 = v15;
  v39 = v14;
  v36 = v1[113];
  LODWORD(v14) = v1[114];
  v32 = *(v1 + 17);
  v33 = v1[144];
  v34 = v14;
  v31 = v1[145];
  v37 = *(v1 + 19);
  v63 = *(v1 + 32);
  v59 = v9;
  v30 = *(v1 + 35);
  memcpy(v64, v1 + 296, 0xB81uLL);
  v16 = *(v1 + 409);
  v28 = *(v1 + 408);
  v29 = v16;
  v26 = *(v1 + 413);
  v27 = v1[3312];
  v25 = v1[3313];
  v17 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2142F25C8();
  v18 = v8;
  sub_2146DAA28();
  LOBYTE(v46[0]) = v12;
  v45[0] = 0;
  sub_2142F2984();
  v19 = v41;
  sub_2146DA388();
  if (v19)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v21 = v39;
  v22 = v38;
  v24 = v5;
  if (!v65)
  {
    goto LABEL_11;
  }

  LOBYTE(v46[0]) = 1;

  sub_2146DA328();

  if (!v21)
  {
    goto LABEL_11;
  }

  v46[0] = v21;
  v45[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2142E1F00();
  sub_2146DA388();
  if (!v22)
  {
    goto LABEL_11;
  }

  LOBYTE(v46[0]) = 3;

  sub_2146DA328();

  LOBYTE(v46[0]) = 4;
  sub_2146DA338();
  LOBYTE(v46[0]) = v34;
  v45[0] = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  if (v31)
  {
    goto LABEL_11;
  }

  v46[0] = v32;
  LOBYTE(v46[1]) = v33 & 1;
  v45[0] = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  sub_2142E37F4();
  sub_2146DA388();
  LOBYTE(v46[0]) = 7;
  sub_2146DA3E8();
  v53 = v60;
  v54 = v61;
  v55 = v62;
  v56 = v63;
  v50 = v57;
  v51 = v58;
  v52 = v59;
  v49 = 8;
  sub_2142F2518(&v57, v46);
  sub_2142F29D8();
  sub_2146DA388();
  v47[3] = v53;
  v47[4] = v54;
  v47[5] = v55;
  v48 = v56;
  v47[0] = v50;
  v47[1] = v51;
  v47[2] = v52;
  sub_2142F2470(v47);
  if (v30 == 1)
  {
    goto LABEL_11;
  }

  v46[0] = v30;
  v45[0] = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907248, &qword_2146F4988);
  sub_2142F2A2C();
  sub_2146DA388();
  memcpy(v46, v64, 0xB81uLL);
  v45[2951] = 10;
  sub_213FB2E54(v64, v45, &qword_27C907278, &qword_2146F49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907278, &qword_2146F49A0);
  sub_2142F2BB8();
  sub_2146DA388();
  memcpy(v45, v46, 0xB81uLL);
  sub_213FB2DF4(v45, &qword_27C907278, &qword_2146F49A0);
  if (v29 >> 60 == 11)
  {
    goto LABEL_11;
  }

  v43 = v28;
  v44 = v29;
  v42 = 11;
  sub_213FDCA18(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  sub_2146DA388();
  sub_213FDC6BC(v43, v44);
  if (v25)
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v43 = v26;
    LOBYTE(v44) = v27 & 1;
    v42 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    return (*(v24 + 8))(v18, v4);
  }

  return result;
}

uint64_t sub_2141426CC@<X0>(char *a1@<X0>, unsigned int *a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, unint64_t a6@<X5>, uint64_t (*a7)(void, void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, uint64_t (*a12)(void, void, void), char a13)
{
  v54 = *a1;
  v55 = *a2 | (*(a2 + 2) << 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_214059900;
  *(v16 + 24) = 0;
  *(v15 + 32) = v16;
  sub_214042B80(v15, &v67);
  v18 = v67;
  v17 = v68;
  v19 = v70;
  v46 = v69;
  v20 = v71;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214059900;
  *(v22 + 24) = 0;
  *(v21 + 32) = v22;
  sub_214042B80(v21, &v103);
  v65 = v103;
  v66 = v104;
  v47 = v105;
  v64 = v106;
  v120 = v107;
  sub_2144BA538(v101);
  v57 = v101[0];
  v63 = v101[1];
  v60 = v101[2];
  v58 = v102;
  sub_2144BA6A4(v97);
  v53 = v97[0];
  v59 = v97[1];
  v50 = v97[2];
  v49 = v98;
  v119 = v100;
  v108 = v99;
  v48 = v99;
  v109 = v99;
  v103 = a3;
  v104 = a4;
  v52 = v20;
  LOBYTE(v97[0]) = v20;
  v67 = 0xD00000000000001BLL;
  v68 = 0x800000021478E490;
  v69 = 0xD00000000000001CLL;
  v70 = 0x800000021478A360;

  v23 = v17;
  v24 = v18(&v103, v97, &v67);
  if (v51)
  {

LABEL_6:

    v29 = v53;
    v25 = v23;
    v27 = v57;

    a3 = v46;
    v30 = v47;
    v31 = v58;
    v32 = v48;
    v33 = v60;
    v34 = v64;
LABEL_7:
    LOBYTE(v67) = v54;
    *(&v67 + 1) = v117;
    BYTE3(v67) = v118;
    HIDWORD(v67) = v55;
    LOWORD(v68) = WORD2(v55);
    *(&v68 + 2) = v115;
    HIWORD(v68) = v116;
    v69 = v18;
    v70 = v25;
    v71 = a3;
    v72 = v19;
    v73 = v52;
    *&v74[3] = *&v114[3];
    *v74 = *v114;
    v75 = v65;
    v76 = v66;
    v77 = v30;
    v78 = v34;
    v79 = v120;
    *v80 = *v113;
    *&v80[3] = *&v113[3];
    v81 = v27;
    v82 = v63;
    v83 = v33;
    v84 = v31;
    *v85 = v112[0];
    *&v85[3] = *(v112 + 3);
    v86 = a8;
    v87 = a10 & 1;
    v88 = a11;
    v90 = v111;
    v89 = v110;
    v91 = v29;
    v92 = v59;
    v93 = v50;
    v94 = v49;
    v95 = v32;
    v96 = v119;
    return sub_2142F2C90(&v67);
  }

  v43 = a4;
  if ((v24 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001BLL;
    v28[1] = 0x800000021478E490;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v25 = v17;

  v103 = a5;
  v104 = a6;
  LOBYTE(v97[0]) = v120;
  v67 = 0xD00000000000001FLL;
  v68 = 0x800000021478E4B0;
  v69 = 0xD00000000000001CLL;
  v70 = 0x800000021478A360;

  v26 = v65(&v103, v97, &v67);
  v27 = v57;
  v19 = v43;
  v31 = v58;
  if ((v26 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD00000000000001FLL;
    v37[1] = 0x800000021478E4B0;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    v29 = v53;
    v34 = v64;

    v32 = v48;
    v33 = v60;
    v30 = v47;
    goto LABEL_7;
  }

  v103 = a7;
  LOBYTE(v97[0]) = v58;
  v67 = 0xD000000000000024;
  v68 = 0x800000021478E4D0;
  v69 = 0xD00000000000001CLL;
  v70 = 0x800000021478A360;

  v36 = v57(&v103, v97, &v67);
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000024;
    v39[1] = 0x800000021478E4D0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    v29 = v53;
    v33 = v60;

    v30 = a5;
    v34 = a6;
    v32 = v48;
    goto LABEL_7;
  }

  v103 = a12;
  LOBYTE(v104) = a13 & 1;
  LOBYTE(v97[0]) = v119;
  v67 = 0xD00000000000001BLL;
  v68 = 0x800000021478E500;
  v69 = 0xD00000000000001CLL;
  v70 = 0x800000021478A360;

  v38 = v53(&v103, v97, &v67);
  v29 = v53;
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD00000000000001BLL;
    v42[1] = 0x800000021478E500;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();
    v31 = v58;
    v27 = v57;

    v32 = v48;
    v109 = v48;
    v19 = v43;
    v30 = a5;
    v33 = a7;
    v34 = a6;
    goto LABEL_7;
  }

  v109 = 0;
  *a9 = v54;
  *(a9 + 1) = v117;
  *(a9 + 3) = v118;
  *(a9 + 8) = WORD2(v55);
  *(a9 + 4) = v55;
  v40 = *&v114[3];
  *(a9 + 10) = v115;
  *(a9 + 14) = v116;
  *(a9 + 16) = v18;
  *(a9 + 24) = v25;
  *(a9 + 32) = a3;
  *(a9 + 40) = v43;
  *(a9 + 48) = v52;
  v41 = *v114;
  *(a9 + 52) = v40;
  *(a9 + 49) = v41;
  *(a9 + 56) = v65;
  *(a9 + 64) = v66;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = v120;
  *(a9 + 89) = *v113;
  *(a9 + 92) = *&v113[3];
  *(a9 + 96) = v57;
  *(a9 + 104) = v63;
  *(a9 + 112) = a7;
  *(a9 + 120) = v58;
  *(a9 + 124) = *(v112 + 3);
  *(a9 + 121) = v112[0];
  *(a9 + 128) = a8;
  *(a9 + 136) = a10 & 1;
  *(a9 + 137) = a11;
  *(a9 + 142) = v111;
  *(a9 + 138) = v110;
  *(a9 + 144) = v53;
  *(a9 + 152) = v59;
  *(a9 + 160) = a12;
  *(a9 + 168) = a13 & 1;
  *(a9 + 169) = 0;
  *(a9 + 170) = v119;
  return result;
}

unint64_t sub_214142FB0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F43746E65696C63;
    v6 = 0x496E6F6973736573;
    if (a1 != 2)
    {
      v6 = 0x724774756F6E6166;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x616974696E497369;
    v2 = 0x4F73756C50557369;
    if (a1 != 7)
    {
      v2 = 0x6D617473656D6974;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    if (a1 != 4)
    {
      v3 = 0x7069636974726170;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21414311C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214366D88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214143144(uint64_t a1)
{
  v2 = sub_2142F2CE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214143180(uint64_t a1)
{
  v2 = sub_2142F2CE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141431BC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9072D0, &qword_2146F49B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v141 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F2CE4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v141);
  }

  v12 = v6;
  LOBYTE(v82) = 0;
  sub_2142F261C();
  sub_2146DA1C8();
  v13 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9072E0, &qword_2146F49B8);
  LOBYTE(v82) = 1;
  sub_2142F2D38();
  sub_2146DA1C8();
  v81 = v13;
  v15 = WORD2(v91);
  v16 = v91;
  LOBYTE(v91) = 2;
  *&v80 = sub_2146DA168();
  *(&v80 + 1) = v17;
  LOBYTE(v91) = 3;
  *&v79 = sub_2146DA168();
  *(&v79 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v82) = 4;
  sub_2142E15CC();
  sub_2146DA1C8();
  v78 = v91;
  LOBYTE(v91) = 5;
  v77 = sub_2146DA228();
  LOBYTE(v91) = 6;
  v19 = sub_2146DA178();
  *&v76 = v15;
  LODWORD(v15) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v82) = 7;
  sub_2142E1378();
  sub_2146DA1C8();
  LODWORD(v74) = v15;
  v75 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  v128 = 8;
  sub_2142E35EC();
  sub_2146DA1C8();
  v50 = v129;
  v49 = v130;
  v56 = v16 | (v76 << 32);
  v57 = v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v20 = swift_allocObject();
  v76 = xmmword_2146E9BF0;
  *(v20 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214059900;
  *(v21 + 24) = 0;
  *(v20 + 32) = v21;
  sub_214042B80(v20, &v91);
  v22 = v92;
  v72 = v91;
  v23 = v94;
  v52 = v93;
  v73 = v95;
  v24 = swift_allocObject();
  *(v24 + 16) = v76;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214059900;
  *(v25 + 24) = 0;
  *(v24 + 32) = v25;
  sub_214042B80(v24, &v82);
  v67 = v82;
  v62 = v83;
  v70 = *(&v82 + 1);
  v71 = *(&v83 + 1);
  v68 = v84;
  sub_2144BA538(v125);
  v63 = v125[0];
  v65 = v125[1];
  v66 = v125[2];
  v64 = v126;
  sub_2144BA6A4(&v119);
  v60 = v119;
  v61 = v120;
  v54 = v121;
  v53 = v122;
  v58 = v74 & 1;
  v59 = v124;
  v127 = v123;
  v48 = v123;
  v131 = v123;
  v82 = v80;
  LOBYTE(v119) = v73;
  v51 = 0xD00000000000001BLL;
  v91 = 0xD00000000000001BLL;
  v92 = 0x800000021478E490;
  v55 = 0x800000021478E490;
  v93 = 0xD00000000000001CLL;
  v94 = 0x800000021478A360;
  v69 = 0x800000021478A360;
  *&v76 = v23;

  v74 = v22;
  if (v72(&v82, &v119, &v91))
  {
    v26 = v69;

    v82 = v79;
    LOBYTE(v119) = v68;
    v91 = 0xD00000000000001FLL;
    v92 = 0x800000021478E4B0;
    v93 = 0xD00000000000001CLL;
    v94 = v26;

    if (v67(&v82, &v119, &v91))
    {
      v29 = v69;

      *&v82 = v78;
      LOBYTE(v119) = v64;
      v91 = 0xD000000000000024;
      v92 = 0x800000021478E4D0;
      v93 = 0xD00000000000001CLL;
      v94 = v29;

      if (v63(&v82, &v119, &v91))
      {
        v32 = v69;

        v119 = v50;
        LOBYTE(v120) = v49;
        LOBYTE(v82) = v59;
        v91 = v51;
        v92 = 0x800000021478E500;
        v93 = 0xD00000000000001CLL;
        v94 = v32;

        if (v60(&v119, &v82, &v91))
        {

          (*(v12 + 8))(v9, v57);
          v35 = v61;

          v131 = 0;
          LOBYTE(v82) = v81;
          *(&v82 + 1) = v139;
          BYTE3(v82) = v140;
          v36 = v56;
          *&v76 = HIDWORD(v56);
          WORD4(v82) = WORD2(v56);
          DWORD1(v82) = v56;
          *(&v82 + 10) = v137;
          HIWORD(v82) = v138;
          *&v83 = v72;
          *(&v83 + 1) = v74;
          v84 = v80;
          LOBYTE(v85) = v73;
          *(&v85 + 1) = *v136;
          DWORD1(v85) = *&v136[3];
          *(&v85 + 1) = v67;
          *v86 = v70;
          *&v86[8] = v79;
          v86[24] = v68;
          *&v86[25] = *v135;
          *&v86[28] = *&v135[3];
          v37 = v65;
          *&v87 = v63;
          *(&v87 + 1) = v65;
          v38 = v77;
          *&v88 = v78;
          BYTE8(v88) = v64;
          *(&v88 + 9) = *v134;
          HIDWORD(v88) = *&v134[3];
          *&v89 = v77;
          BYTE8(v89) = v58;
          v39 = v75;
          BYTE9(v89) = v75;
          HIWORD(v89) = v133;
          *(&v89 + 10) = v132;
          *&v90[0] = v60;
          *(&v90[0] + 1) = v35;
          *&v90[1] = v50;
          WORD4(v90[1]) = v49;
          LODWORD(v71) = 0;
          LOBYTE(v35) = v59;
          BYTE10(v90[1]) = v59;
          v40 = v83;
          *a2 = v82;
          a2[1] = v40;
          v41 = v84;
          v42 = v85;
          v43 = *&v86[16];
          a2[4] = *v86;
          a2[5] = v43;
          a2[2] = v41;
          a2[3] = v42;
          v44 = v87;
          v45 = v88;
          *(a2 + 155) = *(v90 + 11);
          v46 = v90[0];
          a2[8] = v89;
          a2[9] = v46;
          a2[6] = v44;
          a2[7] = v45;
          sub_2142F2E10(&v82, &v91);
          __swift_destroy_boxed_opaque_existential_1(v141);
          LOBYTE(v91) = v81;
          *(&v91 + 1) = v139;
          BYTE3(v91) = v140;
          LOWORD(v92) = v76;
          HIDWORD(v91) = v36;
          *(&v92 + 2) = v137;
          HIWORD(v92) = v138;
          v93 = v72;
          v94 = v74;
          v95 = v80;
          v96 = v73;
          *&v97[3] = *&v136[3];
          *v97 = *v136;
          v98 = v67;
          v99 = v70;
          v100 = v79;
          v101 = v68;
          *v102 = *v135;
          *&v102[3] = *&v135[3];
          v103 = v63;
          v104 = v37;
          v105 = v78;
          v106 = v64;
          *v107 = *v134;
          *&v107[3] = *&v134[3];
          v108 = v38;
          v109 = v58;
          v110 = v39;
          v112 = v133;
          v111 = v132;
          v113 = v60;
          v114 = v61;
          v115 = v50;
          v116 = v49;
          v117 = v71;
          v118 = v35;
          return sub_2142F2C90(&v91);
        }

        sub_214031C4C();
        swift_allocError();
        *v47 = v51;
        v47[1] = 0x800000021478E500;
        v47[2] = 0xD00000000000001CLL;
        v47[3] = v69;
        swift_willThrow();
        (*(v12 + 8))(v9, v57);

        v131 = v48;
        *&v76 = *(&v80 + 1);
        v71 = *(&v79 + 1);
        v62 = v79;
        v66 = v78;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v33 = 0xD000000000000024;
        v33[1] = 0x800000021478E4D0;
        v34 = v69;
        v33[2] = 0xD00000000000001CLL;
        v33[3] = v34;
        swift_willThrow();

        (*(v12 + 8))(v9, v57);

        *&v76 = *(&v80 + 1);
        v71 = *(&v79 + 1);
        v62 = v79;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v30 = 0xD00000000000001FLL;
      v30[1] = 0x800000021478E4B0;
      v31 = v69;
      v30[2] = 0xD00000000000001CLL;
      v30[3] = v31;
      swift_willThrow();

      (*(v12 + 8))(v9, v57);

      *&v76 = *(&v80 + 1);
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v27 = v55;
    *v28 = v51;
    v28[1] = v27;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v69;
    swift_willThrow();

    (*(v12 + 8))(v9, v57);

    *&v80 = v52;
  }

  __swift_destroy_boxed_opaque_existential_1(v141);
  LOBYTE(v91) = v81;
  *(&v91 + 1) = v139;
  BYTE3(v91) = v140;
  LOWORD(v92) = WORD2(v56);
  HIDWORD(v91) = v56;
  *(&v92 + 2) = v137;
  HIWORD(v92) = v138;
  v93 = v72;
  v94 = v74;
  *&v95 = v80;
  *(&v95 + 1) = v76;
  v96 = v73;
  *&v97[3] = *&v136[3];
  *v97 = *v136;
  v98 = v67;
  v99 = v70;
  *&v100 = v62;
  *(&v100 + 1) = v71;
  v101 = v68;
  *v102 = *v135;
  *&v102[3] = *&v135[3];
  v103 = v63;
  v104 = v65;
  v105 = v66;
  v106 = v64;
  *v107 = *v134;
  *&v107[3] = *&v134[3];
  v108 = v77;
  v109 = v58;
  v110 = v75;
  v112 = v133;
  v111 = v132;
  v113 = v60;
  v114 = v61;
  v115 = v54;
  v116 = v53;
  v117 = v131;
  v118 = v59;
  return sub_2142F2C90(&v91);
}

uint64_t sub_21414409C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9072F8, &qword_2146F49C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v26 - v6;
  v8 = *v1;
  v35 = *(v1 + 4);
  v34 = *(v1 + 1);
  v9 = *(v1 + 4);
  v32 = *(v1 + 5);
  v33 = v9;
  v10 = *(v1 + 9);
  v29 = *(v1 + 10);
  v30 = v10;
  v11 = *(v1 + 14);
  v27 = *(v1 + 16);
  v28 = v11;
  v26[3] = v1[136];
  v39 = v1[137];
  v31 = *(v1 + 20);
  v12 = v1[168];
  v13 = v1[169];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_2142F2CE4();
  sub_2146DAA28();
  LOBYTE(v37) = v8;
  v40 = 0;
  sub_2142F2984();
  v19 = v36;
  sub_2146DA388();
  if (v19)
  {
    return (*(v4 + 8))(v7, v18);
  }

  v20 = v32;
  LODWORD(v36) = v13;
  v21 = v12;
  v22 = v31;
  WORD2(v37) = (v34 | (v35 << 32)) >> 32;
  LODWORD(v37) = v34;
  v40 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9072E0, &qword_2146F49B8);
  sub_2142F2E6C();
  sub_2146DA388();
  v35 = v4;
  if (!v20)
  {
    goto LABEL_9;
  }

  LOBYTE(v37) = 2;

  sub_2146DA328();

  if (!v29)
  {
    goto LABEL_9;
  }

  LOBYTE(v37) = 3;

  sub_2146DA328();

  if (!v28)
  {
    goto LABEL_9;
  }

  v37 = v28;
  v40 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2142E1F00();
  sub_2146DA388();
  v24 = v36;
  v25 = v39;
  LOBYTE(v37) = 5;
  sub_2146DA3E8();
  LOBYTE(v37) = 6;
  sub_2146DA338();
  LOBYTE(v37) = v25;
  v40 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  sub_2142E1D30();
  sub_2146DA388();
  if ((v24 & 1) == 0)
  {
    v37 = v22;
    v38 = v21 & 1;
    v40 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    return (*(v35 + 8))(v7, v18);
  }

  else
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t KeyMaterial.init(with:index:wrappedData:salt:generation:wrapMode:participantId:shortKILength:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t (*a10)(void, void, void), char a11, uint64_t a12, char a13, __int16 a14)
{
  v99 = a8;
  v51 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  v20[2] = sub_213FB7988;
  v20[3] = 0;
  v20[4] = 16;
  v20[5] = sub_21403C354;
  v20[6] = 0;
  *(v19 + 16) = sub_21438F670;
  *(v19 + 24) = v20;
  *(inited + 32) = v19;
  v52 = a4;
  v53 = a5;
  sub_21402D9F8(a4, a5);
  v21 = a6;
  sub_21402D9F8(a6, a7);
  sub_214042CD0(inited, v58);
  v22 = *v58;
  v24 = *&v58[16];
  v23 = v59;
  v25 = v60;
  sub_2144BAC70(&v82);
  v54 = v82;
  v57 = v83;
  v44 = v84;
  v43 = v85;
  v46 = v87;
  v91[0] = BYTE4(v99) & 1;
  v90 = v86;
  v89 = a13 & 1;
  v88 = HIBYTE(a14) & 1;
  v50 = BYTE4(v99) & 1;
  v42 = v86;
  v94 = v86;
  *v58 = v22;
  *&v58[16] = v24;
  v59 = v23;
  LOBYTE(v60) = v25;

  v45 = v23;
  sub_213FDCA18(v24, v23);
  sub_214032024(a2, a3, 2, 0xD000000000000011, 0x800000021478E520, 0xD00000000000001CLL, 0x800000021478A360);
  if (v47)
  {
    sub_213FB54FC(a2, a3);
    v26 = a7;
    sub_213FB54FC(a6, a7);
    v28 = v52;
    v27 = v53;
    sub_213FB54FC(v52, v53);

    v48 = *v58;
    v29 = *&v58[16];
    v30 = v60;
    v31 = v59;

    sub_213FDC6BC(v24, v45);
    v32 = v48;
    v33 = v46;
    v34 = v57;
  }

  else
  {

    v49 = *v58;
    v38 = *&v58[16];
    v40 = v59;
    v35 = v60;

    sub_213FDC6BC(v24, v23);
    v82 = a10;
    LOBYTE(v83) = a11 & 1;
    v33 = v46;
    v91[0] = v46;
    *v58 = 0xD000000000000014;
    *&v58[8] = 0x800000021478E540;
    *&v58[16] = 0xD00000000000001CLL;
    v59 = 0x800000021478A360;

    v39 = v35;
    v26 = a7;
    if (v54(&v82, v91, v58))
    {
      sub_213FB54FC(a2, a3);

      sub_213FB54FC(a6, a7);
      sub_213FB54FC(v52, v53);

      v94 = 0;
      *a9 = v51;
      *(a9 + 8) = v49;
      *(a9 + 24) = v38;
      *(a9 + 32) = v40;
      *(a9 + 40) = v35;
      *(a9 + 48) = v52;
      *(a9 + 56) = v53;
      *(a9 + 64) = a6;
      *(a9 + 72) = a7;
      *(a9 + 80) = v99;
      *(a9 + 84) = v50;
      *(a9 + 88) = v54;
      *(a9 + 96) = v57;
      *(a9 + 104) = a10;
      *(a9 + 112) = a11 & 1;
      *(a9 + 113) = 0;
      *(a9 + 114) = v46;
      *(a9 + 120) = a12;
      *(a9 + 128) = a13 & 1;
      *(a9 + 129) = a14;
      *(a9 + 130) = HIBYTE(a14) & 1;
      return result;
    }

    v29 = v38;
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000014;
    v37[1] = 0x800000021478E540;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB54FC(a2, a3);
    sub_213FB54FC(a6, a7);
    v28 = v52;
    v27 = v53;
    sub_213FB54FC(v52, v53);
    v34 = v57;

    v32 = v49;
    v31 = v40;
    v30 = v39;
  }

  v58[0] = v51;
  *&v58[1] = v98[0];
  *&v58[4] = *(v98 + 3);
  *&v58[8] = v32;
  v59 = v29;
  v60 = v31;
  v61 = v30;
  *v62 = v97[0];
  *&v62[3] = *(v97 + 3);
  v63 = v28;
  v64 = v27;
  v65 = v21;
  v66 = v26;
  v67 = v99;
  v68 = v50;
  v70 = v96;
  v69 = v95;
  v71 = v54;
  v72 = v34;
  v73 = v44;
  v74 = v43;
  v75 = v42;
  v76 = v33;
  v78 = v93;
  v77 = v92;
  v79 = a12;
  v80 = a13 & 1;
  v81 = a14 & 0x1FF;
  return sub_2142F2F44(v58);
}

uint64_t sub_214144B88()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x7069636974726170;
  if (v1 != 6)
  {
    v3 = 0x4C494B74726F6873;
  }

  v4 = 0x69746172656E6567;
  if (v1 != 4)
  {
    v4 = 0x65646F4D70617277;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4464657070617277;
  if (v1 != 2)
  {
    v5 = 1953259891;
  }

  if (*v0)
  {
    v2 = 0x7865646E69;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214144C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143670A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214144CBC(uint64_t a1)
{
  v2 = sub_2142F2F98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214144CF8(uint64_t a1)
{
  v2 = sub_2142F2F98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KeyMaterial.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907310, &qword_2146F49C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v124 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F2F98();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  v76 = a2;
  v77 = v6;
  LOBYTE(v78[0]) = 0;
  sub_2142F2FEC();
  sub_2146DA1C8();
  v12 = v87[0];
  LOBYTE(v78[0]) = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v15 = *v87;
  v14 = *&v87[8];
  LOBYTE(v78[0]) = 2;
  sub_2146DA1C8();
  v74 = v15;
  v75 = v14;
  v73 = v12;
  v17 = *v87;
  v16 = *&v87[8];
  LOBYTE(v78[0]) = 3;
  sub_2146DA1C8();
  v71 = v17;
  v72 = v16;
  v18 = *v87;
  v19 = *&v87[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v78[0]) = 4;
  sub_2142E6128();
  sub_2146DA1C8();
  v69 = v19;
  v70 = v18;
  LODWORD(v19) = *v87;
  LODWORD(v18) = v87[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v78[0]) = 5;
  sub_2142E11FC();
  sub_2146DA1C8();
  v68 = v19;
  v20 = *v87;
  LODWORD(v19) = v87[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v78[0]) = 6;
  sub_2142E18D0();
  sub_2146DA1C8();
  v65 = v19;
  v66 = v20;
  v67 = *v87;
  LODWORD(v20) = v87[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907328, &qword_2146F49D0);
  v114 = 7;
  sub_2142F3040();
  sub_2146DA1C8();
  v57 = v115;
  v64 = v116;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  v23[2] = sub_213FB7988;
  v23[3] = 0;
  v23[4] = 16;
  v23[5] = sub_21403C354;
  v23[6] = 0;
  *(v22 + 16) = sub_21438F670;
  *(v22 + 24) = v23;
  *(v21 + 32) = v22;
  sub_21402D9F8(v71, v72);
  sub_21402D9F8(v70, v69);
  sub_214042CD0(v21, v87);
  v24 = *&v87[8];
  v59 = *v87;
  v26 = *&v87[16];
  v25 = v88;
  LODWORD(v58) = v89;
  sub_2144BAC70(v78);
  v63 = v78[0];
  v53 = *&v78[1];
  v61 = v18;
  v62 = BYTE10(v78[1]);
  LOBYTE(v85) = v18;
  v113 = BYTE9(v78[1]);
  v60 = v20;
  v112 = v20;
  v111 = v64;
  v51 = BYTE9(v78[1]);
  v52 = BYTE8(v78[1]);
  v119 = BYTE9(v78[1]);
  *v87 = v59;
  *&v87[8] = v24;
  *&v87[16] = v26;
  v88 = v25;
  LOBYTE(v89) = v58;
  v54 = v24;

  v55 = v25;
  v56 = v26;
  sub_213FDCA18(v26, v25);
  sub_214032024(v74, v75, 2, 0xD000000000000011, 0x800000021478E520, 0xD00000000000001CLL, 0x800000021478A360);

  v58 = *v87;
  v59 = *&v87[16];
  v50 = v88;
  HIDWORD(v49) = v89;

  sub_213FDC6BC(v56, v55);
  v85 = v66;
  v86 = v65;
  LOBYTE(v78[0]) = v62;
  *v87 = 0xD000000000000014;
  *&v87[8] = 0x800000021478E540;
  *&v87[16] = 0xD00000000000001CLL;
  v88 = 0x800000021478A360;

  v27 = (v63)(&v85, v78, v87);
  if (v27)
  {
    sub_213FB54FC(v74, v75);

    v28 = v69;
    v29 = v70;
    sub_213FB54FC(v70, v69);
    v30 = v71;
    v31 = v72;
    sub_213FB54FC(v71, v72);
    (*(v77 + 8))(v9, v5);
    v32 = *(&v63 + 1);

    v119 = 0;
    LOBYTE(v78[0]) = v73;
    *(v78 + 1) = v123[0];
    DWORD1(v78[0]) = *(v123 + 3);
    *(v78 + 8) = v58;
    *(&v78[1] + 1) = v59;
    *&v79 = v50;
    BYTE8(v79) = BYTE4(v49);
    *(&v79 + 9) = *v122;
    HIDWORD(v79) = *&v122[3];
    *&v80 = v30;
    *(&v80 + 1) = v31;
    *&v81 = v29;
    *(&v81 + 1) = v28;
    LODWORD(v82) = v68;
    LOBYTE(v28) = v62;
    BYTE4(v82) = v61;
    *(&v82 + 5) = v120;
    BYTE7(v82) = v121;
    *(&v82 + 1) = v63;
    *&v83 = v32;
    v33 = v67;
    *(&v83 + 1) = v66;
    LOBYTE(v31) = v64;
    v84[0] = v65;
    LODWORD(v77) = 0;
    v84[1] = 0;
    v84[2] = v62;
    *&v84[3] = v117;
    v84[7] = v118;
    *&v84[8] = v67;
    v84[16] = v60;
    v34 = v57;
    v84[17] = v57;
    v84[18] = v64;
    v35 = v80;
    v36 = v76;
    *(v76 + 32) = v79;
    *(v36 + 48) = v35;
    v37 = v78[1];
    *v36 = v78[0];
    *(v36 + 16) = v37;
    v38 = v81;
    v39 = v82;
    v40 = v83;
    v41 = *v84;
    *(v36 + 127) = *&v84[15];
    *(v36 + 96) = v40;
    *(v36 + 112) = v41;
    *(v36 + 64) = v38;
    *(v36 + 80) = v39;
    sub_2142F30BC(v78, v87);
    __swift_destroy_boxed_opaque_existential_1(v124);
    v87[0] = v73;
    *&v87[1] = v123[0];
    *&v87[4] = *(v123 + 3);
    *&v87[8] = v58;
    v88 = v59;
    v89 = v50;
    v90 = BYTE4(v49);
    *v91 = *v122;
    *&v91[3] = *&v122[3];
    v92 = v71;
    v93 = v72;
    v94 = v70;
    v95 = v69;
    v96 = v68;
    v97 = v61;
    v98 = v120;
    v99 = v121;
    *&v100 = v63;
    *(&v100 + 1) = v32;
    v101 = v66;
    v102 = v65;
    v103 = v77;
    v104 = v28;
    v105 = v117;
    v106 = v118;
    v107 = v33;
    v108 = v60;
    v109 = v34;
    v110 = v31;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000014;
    v42[1] = 0x800000021478E540;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB54FC(v74, v75);
    sub_213FB54FC(v70, v69);
    sub_213FB54FC(v71, v72);
    (*(v77 + 8))(v9, v5);

    v43 = v71;
    v44 = v72;
    v45 = v69;
    v46 = v70;
    v47 = v50;
    v48 = BYTE4(v49);
    __swift_destroy_boxed_opaque_existential_1(v124);
    v87[0] = v73;
    *&v87[1] = v123[0];
    *&v87[4] = *(v123 + 3);
    *&v87[8] = v58;
    v88 = v59;
    v89 = v47;
    v90 = v48;
    *v91 = *v122;
    *&v91[3] = *&v122[3];
    v92 = v43;
    v93 = v44;
    v94 = v46;
    v95 = v45;
    v96 = v68;
    v97 = v61;
    v99 = v121;
    v98 = v120;
    v100 = v63;
    v101 = v53;
    v102 = v52;
    v103 = v51;
    v104 = v62;
    v106 = v118;
    v105 = v117;
    v107 = v67;
    v108 = v60;
    v109 = v57;
    v110 = v64;
  }

  return sub_2142F2F44(v87);
}

uint64_t KeyMaterial.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907338, &qword_2146F49D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = *v1;
  v9 = *(v1 + 3);
  v10 = *(v1 + 4);
  v11 = *(v1 + 6);
  v35 = *(v1 + 7);
  v36 = v11;
  v12 = *(v1 + 8);
  v33 = *(v1 + 9);
  v34 = v12;
  LODWORD(v12) = *(v1 + 20);
  v31 = v1[84];
  v32 = v12;
  v37 = *(v1 + 13);
  v38 = v9;
  LODWORD(v9) = v1[112];
  v27 = v1[113];
  v28 = v9;
  v30 = *(v1 + 15);
  v29 = v1[128];
  v42 = v1[129];
  v13 = v1[130];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_2142F2F98();
  v19 = v7;
  sub_2146DAA28();
  LOBYTE(v40) = v8;
  v43 = 0;
  sub_2142F3118();
  v20 = v39;
  sub_2146DA388();
  if (v20)
  {
    return (*(v4 + 8))(v7, v18);
  }

  v22 = v37;
  LODWORD(v39) = v13;
  v23 = v42;
  if (v10 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v40 = v38;
  v41 = v10;
  v43 = 1;
  sub_21402D9F8(v38, v10);
  sub_214061684();
  sub_2146DA388();
  v24 = v4;
  sub_213FB54FC(v40, v41);
  v40 = v36;
  v41 = v35;
  v43 = 2;
  sub_21402D9F8(v36, v35);
  sub_2146DA388();
  sub_213FB54FC(v40, v41);
  v40 = v34;
  v41 = v33;
  v43 = 3;
  sub_21402D9F8(v34, v33);
  sub_2146DA388();
  sub_213FB54FC(v40, v41);
  LODWORD(v40) = v32;
  BYTE4(v40) = v31;
  v43 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  sub_2146DA388();
  if (v27)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v40 = v22;
    LOBYTE(v41) = v28 & 1;
    v43 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
    v25 = v39;
    v40 = v30;
    LOBYTE(v41) = v29;
    v43 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
    sub_2142E2204();
    sub_2146DA388();
    LOBYTE(v40) = v23;
    BYTE1(v40) = v25;
    v43 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907328, &qword_2146F49D0);
    sub_2142F316C();
    sub_2146DA388();
    return (*(v24 + 8))(v19, v18);
  }

  return result;
}

void *sub_214145DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  v80 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_214059900;
  *(v12 + 24) = 0;
  *(v11 + 32) = v12;
  sub_214042B80(v11, v73);
  v64 = v73[0];
  v13 = v73[1];
  v45 = v73[2];
  v14 = v73[3];
  v15 = v74;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_214059900;
  *(v17 + 24) = 0;
  *(v16 + 32) = v17;
  sub_214042B80(v16, v71);
  v62 = v71[0];
  v65 = v71[1];
  v46 = v71[2];
  v49 = v71[3];
  v63 = v72;
  sub_2144BB028(v69);
  v54 = v69[0];
  v58 = v69[1];
  v59 = v69[2];
  v50 = v70;
  sub_2144BB198(v67);
  v18 = a7[4];
  *(&v66[5] + 7) = a7[5];
  v19 = a7[7];
  *(&v66[6] + 7) = a7[6];
  *(&v66[7] + 7) = v19;
  *(&v66[8] + 6) = *(a7 + 127);
  v20 = *a7;
  *(&v66[1] + 7) = a7[1];
  v21 = a7[3];
  *(&v66[2] + 7) = a7[2];
  *(&v66[3] + 7) = v21;
  *(&v66[4] + 7) = v18;
  *(v66 + 7) = v20;
  v22 = a8[4];
  *&v75[85] = a8[5];
  v23 = a8[7];
  *&v75[101] = a8[6];
  *&v75[117] = v23;
  v24 = *a8;
  *&v75[21] = a8[1];
  v25 = a8[3];
  *&v75[37] = a8[2];
  *&v75[53] = v25;
  *&v75[69] = v22;
  *&v75[5] = v24;
  __src[6] = v66[6];
  __src[7] = v66[7];
  *(&__src[7] + 10) = *(&v66[7] + 10);
  __src[2] = v66[2];
  __src[3] = v66[3];
  __src[4] = v66[4];
  __src[5] = v66[5];
  __src[0] = v66[0];
  __src[1] = v66[1];
  *(&__src[13] + 10) = *&v75[80];
  *(&__src[14] + 10) = *&v75[96];
  *(&__src[15] + 10) = *&v75[112];
  *(&__src[9] + 10) = *&v75[16];
  *(&__src[10] + 10) = *&v75[32];
  *(&__src[11] + 10) = *&v75[48];
  *(&__src[12] + 10) = *&v75[64];
  v52 = v67[0];
  v55 = v67[2];
  v56 = v67[1];
  v53 = v68;
  *&v75[132] = *(a8 + 127);
  *(&__src[16] + 10) = *&v75[128];
  *(&__src[8] + 10) = *v75;
  v26 = v64;
  *v75 = a1;
  *&v75[8] = v80;
  LOBYTE(v73[0]) = v15;
  *&v66[0] = 0xD00000000000001DLL;
  *(&v66[0] + 1) = 0x800000021478E560;
  *&v66[1] = 0xD00000000000001CLL;
  *(&v66[1] + 1) = 0x800000021478A360;

  v60 = v13;
  v27 = v64(v75, v73, v66);
  if (v47)
  {

LABEL_6:

    v28 = v49;

    v31 = v45;
    v32 = v46;
    v33 = v50;
    v34 = v54;
LABEL_7:
    *&v66[0] = v26;
    *(&v66[0] + 1) = v13;
    *&v66[1] = v31;
    *(&v66[1] + 1) = v14;
    LOBYTE(v66[2]) = v15;
    *(&v66[2] + 1) = *v78;
    DWORD1(v66[2]) = *&v78[3];
    *(&v66[2] + 1) = v62;
    *&v66[3] = v65;
    *(&v66[3] + 1) = v32;
    *&v66[4] = v28;
    BYTE8(v66[4]) = v63;
    *(&v66[4] + 9) = *v77;
    HIDWORD(v66[4]) = *&v77[3];
    *&v66[5] = v34;
    *(&v66[5] + 1) = v58;
    *&v66[6] = v59;
    BYTE8(v66[6]) = v33;
    HIDWORD(v66[6]) = *&v76[3];
    *(&v66[6] + 9) = *v76;
    *&v66[7] = v52;
    *(&v66[7] + 1) = v56;
    *&v66[8] = v55;
    BYTE8(v66[8]) = v53;
    memcpy(&v66[8] + 9, __src, 0x112uLL);
    return sub_2142F31E8(v66);
  }

  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001DLL;
    v30[1] = 0x800000021478E560;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  *v75 = a3;
  *&v75[8] = a4;
  LOBYTE(v73[0]) = v63;
  *&v66[0] = 0xD000000000000019;
  *(&v66[0] + 1) = 0x800000021478E580;
  *&v66[1] = 0xD00000000000001CLL;
  *(&v66[1] + 1) = 0x800000021478A360;
  v28 = v49;

  v29 = v62(v75, v73, v66);
  if ((v29 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000019;
    v37[1] = 0x800000021478E580;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v80;
    v34 = v54;

    v14 = v38;
    v26 = v64;
    v13 = v60;
    v31 = a1;
    v33 = v50;
    v32 = v46;
    goto LABEL_7;
  }

  *v75 = a5;
  v33 = v50;
  LOBYTE(v73[0]) = v50;
  *&v66[0] = 0xD000000000000024;
  *(&v66[0] + 1) = 0x800000021478E5A0;
  *&v66[1] = 0xD00000000000001CLL;
  *(&v66[1] + 1) = 0x800000021478A360;

  sub_213FBE134(v59);
  v36 = v54(v75, v73, v66);
  v34 = v54;
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000024;
    v40[1] = 0x800000021478E5A0;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = 0x800000021478A360;
    swift_willThrow();

    v14 = v80;
    v32 = a3;

    sub_213FB7170(v59);
    v28 = a4;
LABEL_14:
    v26 = v64;
    v13 = v60;
    v31 = a1;
    goto LABEL_7;
  }

  sub_213FB7170(v59);

  sub_213FB7170(v59);
  *v75 = a6;
  LOBYTE(v73[0]) = v53;
  *&v66[0] = 0xD000000000000028;
  *(&v66[0] + 1) = 0x800000021478E5D0;
  *&v66[1] = 0xD00000000000001CLL;
  *(&v66[1] + 1) = 0x800000021478A360;

  v39 = v52(v75, v73, v66);
  v41 = v80;
  v34 = v54;
  if ((v39 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000028;
    v42[1] = 0x800000021478E5D0;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    v14 = v41;
    v32 = a3;
    v28 = a4;
    v59 = a5;
    goto LABEL_14;
  }

  swift_bridgeObjectRelease_n();
  *a9 = v64;
  *(a9 + 8) = v60;
  *(a9 + 16) = a1;
  *(a9 + 24) = v41;
  *(a9 + 32) = v15;
  *(a9 + 33) = *v78;
  *(a9 + 36) = *&v78[3];
  *(a9 + 40) = v62;
  *(a9 + 48) = v65;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v63;
  *(a9 + 73) = *v77;
  *(a9 + 76) = *&v77[3];
  *(a9 + 80) = v54;
  *(a9 + 88) = v58;
  *(a9 + 96) = a5;
  *(a9 + 104) = v50;
  *(a9 + 108) = *&v76[3];
  *(a9 + 105) = *v76;
  *(a9 + 112) = v52;
  *(a9 + 120) = v56;
  *(a9 + 128) = a6;
  *(a9 + 136) = v53;
  return memcpy((a9 + 137), __src, 0x112uLL);
}

unint64_t sub_214146724()
{
  v1 = *v0;
  v2 = 0x724774756F6E6166;
  v3 = 0xD000000000000018;
  v4 = 0x726574614D79656BLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x496E6F6973736573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

uint64_t sub_214146804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436734C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21414682C(uint64_t a1)
{
  v2 = sub_2142F323C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214146868(uint64_t a1)
{
  v2 = sub_2142F323C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141468A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907350, &qword_2146F49E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v150 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F323C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v150);
  }

  v74 = a2;
  v75 = v6;
  LOBYTE(v77) = 0;
  v12 = sub_2146DA168();
  v14 = v13;
  v73 = v12;
  LOBYTE(v77) = 1;
  v15 = sub_2146DA168();
  v17 = v16;
  v72 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907360, &qword_2146F49E8);
  LOBYTE(v76[0]) = 2;
  sub_2142F3290();
  sub_2146DA1C8();
  v71 = v14;
  v18 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v76[0]) = 3;
  sub_2142E15CC();
  sub_2146DA1C8();
  v69 = v18;
  v70 = v17;
  v20 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907388, &qword_2147519C0);
  v138 = 4;
  sub_2142F33EC();
  sub_2146DA1C8();
  v135 = v144;
  v136 = v145;
  *v137 = *v146;
  *&v137[15] = *&v146[15];
  v132 = v141;
  v133 = v142;
  v134 = v143;
  v130 = v139;
  v131 = v140;
  v121 = 5;
  sub_2146DA1C8();
  v54 = v20;
  v118 = v127;
  v119 = v128;
  *v120 = *v129;
  *&v120[15] = *&v129[15];
  v115 = v124;
  v116 = v125;
  v117 = v126;
  v113 = v122;
  v114 = v123;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v21 = swift_allocObject();
  v65 = xmmword_2146E9BF0;
  *(v21 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214059900;
  *(v22 + 24) = 0;
  *(v21 + 32) = v22;
  sub_213FB2E54(&v130, &v77, &qword_27C907388, &qword_2147519C0);
  sub_213FB2E54(&v113, &v77, &qword_27C907388, &qword_2147519C0);
  sub_214042B80(v21, &v77);
  v68 = v77;
  v23 = v78;
  v50 = v79;
  v66 = v80;
  v67 = v81;
  v24 = swift_allocObject();
  *(v24 + 16) = v65;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214059900;
  *(v25 + 24) = 0;
  *(v24 + 32) = v25;
  sub_214042B80(v24, v76);
  *&v65 = v76[1];
  v51 = v76[2];
  v61 = v76[3];
  v62 = v76[0];
  v63 = LOBYTE(v76[4]);
  sub_2144BB028(v109);
  v60 = v109[1];
  v57 = v109[2];
  v58 = v109[0];
  v59 = v110;
  sub_2144BB198(v107);
  *(&v112[5] + 7) = v135;
  *(&v112[6] + 7) = v136;
  *(&v112[7] + 7) = *v137;
  *(&v112[1] + 7) = v131;
  *(&v112[2] + 7) = v132;
  *(&v112[3] + 7) = v133;
  *(&v112[4] + 7) = v134;
  *(v112 + 7) = v130;
  *&v111[85] = v118;
  *&v111[101] = v119;
  *&v111[117] = *v120;
  *&v111[21] = v114;
  *&v111[37] = v115;
  *&v111[53] = v116;
  *&v111[69] = v117;
  v52 = v107[0];
  v55 = v107[2];
  v56 = v107[1];
  v53 = v108;
  *(&v112[8] + 6) = *&v137[15];
  *&v111[132] = *&v120[15];
  *&v111[5] = v113;
  v76[0] = v73;
  v76[1] = v71;
  LOBYTE(v109[0]) = v67;
  v77 = 0xD00000000000001DLL;
  v78 = 0x800000021478E560;
  v79 = 0xD00000000000001CLL;
  v80 = 0x800000021478A360;

  v64 = v23;
  v26 = v68(v76, v109, &v77);
  v49 = 0x800000021478A360;
  if (v26)
  {
    v27 = v49;

    v76[0] = v72;
    v76[1] = v70;
    LOBYTE(v109[0]) = v63;
    v77 = 0xD000000000000019;
    v78 = 0x800000021478E580;
    v79 = 0xD00000000000001CLL;
    v80 = v27;

    if (v62(v76, v109, &v77))
    {

      v76[0] = v69;
      LOBYTE(v109[0]) = v59;
      v77 = 0xD000000000000024;
      v78 = 0x800000021478E5A0;
      v79 = 0xD00000000000001CLL;
      v80 = v27;

      sub_213FBE134(v57);
      if (v58(v76, v109, &v77))
      {
        v38 = v57;
        sub_213FB7170(v57);
        v39 = v49;

        sub_213FB7170(v38);
        v109[0] = v54;
        LOBYTE(v76[0]) = v53;
        v77 = 0xD000000000000028;
        v78 = 0x800000021478E5D0;
        v79 = 0xD00000000000001CLL;
        v80 = v39;

        if (v52(v109, v76, &v77))
        {

          sub_213FB2DF4(&v130, &qword_27C907388, &qword_2147519C0);
          sub_213FB2DF4(&v113, &qword_27C907388, &qword_2147519C0);
          (*(v75 + 8))(v9, v5);

          v42 = v56;

          *(&v76[32] + 3) = *(&v112[7] + 10);
          *(&v76[27] + 1) = v112[5];
          *(&v76[29] + 1) = v112[6];
          *(&v76[31] + 1) = v112[7];
          *(&v76[19] + 1) = v112[1];
          *(&v76[21] + 1) = v112[2];
          *(&v76[23] + 1) = v112[3];
          v76[0] = v68;
          v76[1] = v64;
          v43 = v73;
          v44 = v70;
          v45 = v71;
          v76[2] = v73;
          v76[3] = v71;
          LOBYTE(v76[4]) = v67;
          *(&v76[4] + 1) = v149[0];
          HIDWORD(v76[4]) = *(v149 + 3);
          v76[5] = v62;
          v76[6] = v65;
          v76[7] = v72;
          v76[8] = v70;
          LOBYTE(v76[9]) = v63;
          *(&v76[9] + 1) = *v148;
          HIDWORD(v76[9]) = *&v148[3];
          v76[10] = v58;
          v76[11] = v60;
          v46 = v69;
          v76[12] = v69;
          LOBYTE(v76[13]) = v59;
          *(&v76[13] + 1) = *v147;
          HIDWORD(v76[13]) = *&v147[3];
          v76[14] = v52;
          v76[15] = v42;
          v76[16] = v54;
          LOBYTE(v76[17]) = v53;
          *(&v76[25] + 1) = v112[4];
          *(&v76[17] + 1) = v112[0];
          *(&v76[46] + 3) = *&v111[96];
          *(&v76[48] + 3) = *&v111[112];
          *(&v76[50] + 3) = *&v111[128];
          *(&v76[38] + 3) = *&v111[32];
          *(&v76[40] + 3) = *&v111[48];
          *(&v76[42] + 3) = *&v111[64];
          *(&v76[44] + 3) = *&v111[80];
          *(&v76[34] + 3) = *v111;
          *(&v76[36] + 3) = *&v111[16];
          memcpy(v74, v76, 0x19BuLL);
          sub_2142F3470(v76, &v77);
          __swift_destroy_boxed_opaque_existential_1(v150);
          *&v105[5] = *(&v112[7] + 10);
          v103 = v112[5];
          v104 = v112[6];
          *v105 = v112[7];
          v99 = v112[1];
          v100 = v112[2];
          v101 = v112[3];
          v77 = v68;
          v78 = v64;
          v79 = v43;
          v80 = v45;
          v81 = v67;
          *v82 = v149[0];
          *&v82[3] = *(v149 + 3);
          v83 = v62;
          v84 = v65;
          v85 = v72;
          v86 = v44;
          v87 = v63;
          *v88 = *v148;
          *&v88[3] = *&v148[3];
          v89 = v58;
          v90 = v60;
          v91 = v46;
          v92 = v59;
          *v93 = *v147;
          *&v93[3] = *&v147[3];
          v94 = v52;
          v95 = v42;
          v96 = v54;
          v97 = v53;
          v102 = v112[4];
          v98 = v112[0];
          goto LABEL_8;
        }

        sub_214031C4C();
        swift_allocError();
        *v47 = 0xD000000000000028;
        v47[1] = 0x800000021478E5D0;
        v48 = v49;
        v47[2] = 0xD00000000000001CLL;
        v47[3] = v48;
        swift_willThrow();

        sub_213FB2DF4(&v130, &qword_27C907388, &qword_2147519C0);
        sub_213FB2DF4(&v113, &qword_27C907388, &qword_2147519C0);
        (*(v75 + 8))(v9, v5);

        v31 = v71;
        v33 = v72;
        v35 = v69;
        v34 = v70;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v40 = 0xD000000000000024;
        v40[1] = 0x800000021478E5A0;
        v41 = v49;
        v40[2] = 0xD00000000000001CLL;
        v40[3] = v41;
        swift_willThrow();

        sub_213FB2DF4(&v130, &qword_27C907388, &qword_2147519C0);
        sub_213FB2DF4(&v113, &qword_27C907388, &qword_2147519C0);
        (*(v75 + 8))(v9, v5);

        v35 = v57;
        sub_213FB7170(v57);
        v31 = v71;
        v33 = v72;
        v34 = v70;
      }

      v36 = v68;
      v32 = v64;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v37 = 0xD000000000000019;
      v37[1] = 0x800000021478E580;
      v37[2] = 0xD00000000000001CLL;
      v37[3] = v27;
      swift_willThrow();

      sub_213FB2DF4(&v130, &qword_27C907388, &qword_2147519C0);
      sub_213FB2DF4(&v113, &qword_27C907388, &qword_2147519C0);
      (*(v75 + 8))(v9, v5);
      v34 = v61;

      v31 = v71;
      v36 = v68;
      v32 = v64;
      v33 = v51;
      v35 = v57;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000001DLL;
    v28[1] = 0x800000021478E560;
    v29 = v49;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v29;
    swift_willThrow();

    v30 = v75;

    sub_213FB2DF4(&v130, &qword_27C907388, &qword_2147519C0);
    sub_213FB2DF4(&v113, &qword_27C907388, &qword_2147519C0);
    (*(v30 + 8))(v9, v5);
    v31 = v66;

    v32 = v64;

    v33 = v51;
    v73 = v50;
    v34 = v61;
    v35 = v57;
    v36 = v68;
  }

  __swift_destroy_boxed_opaque_existential_1(v150);
  *&v105[5] = *(&v112[7] + 10);
  v98 = v112[0];
  v102 = v112[4];
  v101 = v112[3];
  v100 = v112[2];
  v99 = v112[1];
  *v105 = v112[7];
  v77 = v36;
  v78 = v32;
  v79 = v73;
  v80 = v31;
  v81 = v67;
  *v82 = v149[0];
  *&v82[3] = *(v149 + 3);
  v83 = v62;
  v84 = v65;
  v85 = v33;
  v86 = v34;
  v87 = v63;
  *v88 = *v148;
  *&v88[3] = *&v148[3];
  v89 = v58;
  v90 = v60;
  v91 = v35;
  v92 = v59;
  *&v93[3] = *&v147[3];
  *v93 = *v147;
  v94 = v52;
  v95 = v56;
  v96 = v55;
  v97 = v53;
  v104 = v112[6];
  v103 = v112[5];
LABEL_8:
  *&v105[61] = *&v111[96];
  *&v105[69] = *&v111[112];
  v106 = *&v111[128];
  *&v105[29] = *&v111[32];
  *&v105[37] = *&v111[48];
  *&v105[45] = *&v111[64];
  *&v105[53] = *&v111[80];
  *&v105[13] = *v111;
  *&v105[21] = *&v111[16];
  return sub_2142F31E8(&v77);
}

uint64_t sub_2141479A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907398, &qword_2146F4A00);
  v67 = *(v3 - 8);
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v26 = *(v1 + 96);
  v27 = v7;
  v25 = *(v1 + 128);
  v9 = *(v1 + 256);
  v57 = *(v1 + 240);
  v58[0] = v9;
  *(v58 + 15) = *(v1 + 271);
  v10 = *(v1 + 192);
  v53 = *(v1 + 176);
  v54 = v10;
  v11 = *(v1 + 224);
  v55 = *(v1 + 208);
  v56 = v11;
  v12 = *(v1 + 160);
  v51 = *(v1 + 144);
  v52 = v12;
  v13 = *(v1 + 392);
  v65 = *(v1 + 376);
  v66[0] = v13;
  *(v66 + 15) = *(v1 + 407);
  v14 = *(v1 + 328);
  v61 = *(v1 + 312);
  v62 = v14;
  v15 = *(v1 + 360);
  v63 = *(v1 + 344);
  v64 = v15;
  v16 = *(v1 + 296);
  v59 = *(v1 + 280);
  v60 = v16;
  v18 = a1[3];
  v17 = a1[4];
  v19 = a1;
  v21 = &v25 - v20;
  __swift_project_boxed_opaque_existential_1(v19, v18);
  sub_2142F323C();
  sub_2146DAA28();
  if (!v5)
  {
    goto LABEL_8;
  }

  LOBYTE(v43) = 0;

  v22 = v28;
  sub_2146DA328();
  if (v22)
  {
    (*(v67 + 8))(v21, v3);
  }

  if (!v8)
  {
    goto LABEL_8;
  }

  LOBYTE(v43) = 1;

  sub_2146DA328();

  if (v26 == 1)
  {
    goto LABEL_8;
  }

  *&v43 = v26;
  LOBYTE(v40[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907360, &qword_2146F49E8);
  sub_2142F34CC();
  sub_2146DA388();
  if (v25)
  {
    *&v43 = v25;
    LOBYTE(v40[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v49 = v57;
    v50[0] = v58[0];
    *(v50 + 15) = *(v58 + 15);
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v48 = v56;
    v43 = v51;
    v44 = v52;
    v42 = 4;
    sub_213FB2E54(&v51, v40, &qword_27C907388, &qword_2147519C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907388, &qword_2147519C0);
    sub_2142F3628();
    sub_2146DA388();
    v40[6] = v49;
    *v41 = v50[0];
    *&v41[15] = *(v50 + 15);
    v40[2] = v45;
    v40[3] = v46;
    v40[4] = v47;
    v40[5] = v48;
    v40[0] = v43;
    v40[1] = v44;
    sub_213FB2DF4(v40, &qword_27C907388, &qword_2147519C0);
    v38 = v65;
    v39[0] = v66[0];
    *(v39 + 15) = *(v66 + 15);
    v34 = v61;
    v35 = v62;
    v36 = v63;
    v37 = v64;
    v32 = v59;
    v33 = v60;
    v31 = 5;
    sub_213FB2E54(&v59, v29, &qword_27C907388, &qword_2147519C0);
    sub_2146DA388();
    v24 = (v67 + 8);
    v29[6] = v38;
    *v30 = v39[0];
    *&v30[15] = *(v39 + 15);
    v29[2] = v34;
    v29[3] = v35;
    v29[4] = v36;
    v29[5] = v37;
    v29[0] = v32;
    v29[1] = v33;
    sub_213FB2DF4(v29, &qword_27C907388, &qword_2147519C0);
    return (*v24)(v21, v3);
  }

  else
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214147F50@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2144BB778(&v71);
  v13 = v71;
  v14 = v72;
  v15 = v74;
  v44 = v73;
  v100[0] = *v76;
  *(v100 + 3) = *&v76[3];
  v64 = v77;
  v49 = v78;
  v101 = v79;
  v50 = v81;
  v99[0] = *v82;
  *(v99 + 3) = *&v82[3];
  v62 = v83;
  v66 = v84;
  v67 = v80;
  v46 = v85;
  v58 = v86;
  v63 = v88;
  v97 = v90;
  v96 = v89;
  v54 = v91;
  v57 = v92;
  v48 = v93;
  v59 = v94;
  v55 = v95;
  v47 = v87;
  v98 = v87;
  v69 = a1;
  v70 = a2;
  v53 = v75;
  v68 = v75;
  v71 = 0xD000000000000020;
  v72 = 0x800000021478E600;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;

  v61 = v14;
  v52 = v13;
  v16 = v13(&v69, &v68, &v71);
  if (v9)
  {
    sub_213FB54FC(a3, a4);

    v17 = v54;
    v18 = v61;
    v19 = v64;
LABEL_6:

    v22 = v44;
    v23 = v46;
    v31 = v55;
    v29 = v50;
    v24 = v47;
    v25 = v101;
    v26 = v67;
    v27 = v49;
LABEL_7:
    v71 = v52;
    v72 = v18;
    v73 = v22;
    v74 = v15;
    v75 = v53;
    *v76 = v100[0];
    *&v76[3] = *(v100 + 3);
    v77 = v19;
    v78 = v27;
    v79 = v25;
    v80 = v26;
    v81 = v29;
    *v82 = v99[0];
    *&v82[3] = *(v99 + 3);
    v83 = v62;
    v84 = v66;
    v85 = v23;
    v86 = v58;
    v87 = v24;
    v88 = v63;
    v90 = v97;
    v89 = v96;
    v91 = v17;
    v92 = v57;
    v93 = v48;
    v94 = v59;
    v95 = v31;
    return sub_2142F36AC(&v71);
  }

  v38 = a1;
  v39 = a2;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000020;
    v21[1] = 0x800000021478E600;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(a3, a4);

    v17 = v54;
    v18 = v61;
    v19 = v64;
    goto LABEL_6;
  }

  v71 = v64;
  v72 = v49;
  v20 = v101;
  v73 = v101;
  v74 = v67;
  v75 = v50;

  sub_213FDCA18(v20, v67);
  sub_214032024(a3, a4, 2, 0xD00000000000001CLL, 0x800000021478E630, 0xD00000000000001CLL, 0x800000021478A360);
  v36 = a3;

  v65 = v71;
  v37 = v72;
  v45 = v73;
  v51 = v74;
  v29 = v75;

  sub_213FDC6BC(v101, v67);
  v69 = a5;
  LOBYTE(v70) = a6 & 1;
  v68 = v63;
  v71 = 0xD00000000000001BLL;
  v72 = 0x800000021478E650;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;

  v30 = v62(&v69, &v68, &v71);
  v31 = v55;
  if ((v30 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD00000000000001BLL;
    v33[1] = 0x800000021478E650;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();
    sub_213FB54FC(v36, a4);
    v17 = v54;
    v15 = a2;

    v27 = v37;
    v25 = v45;
    v26 = v51;
    v18 = v61;
    v19 = v65;
    v22 = v38;
    v24 = v47;
    v23 = v46;
    goto LABEL_7;
  }

  v58 = a6 & 1;

  v98 = 0;
  v69 = a7;
  v70 = a8;
  v68 = v55;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478E670;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;

  v32 = v54(&v69, &v68, &v71);
  v17 = v54;
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD00000000000001CLL;
    v35[1] = 0x800000021478E670;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB54FC(v36, a4);

    v19 = v65;

    v22 = v38;
    v15 = v39;
    v24 = v98;
    v27 = v37;
    v23 = a5;
    v25 = v45;
    v26 = v51;
    v18 = v61;
    goto LABEL_7;
  }

  sub_213FB54FC(v36, a4);

  v34 = v98;
  *a9 = v13;
  *(a9 + 8) = v61;
  *(a9 + 16) = v38;
  *(a9 + 24) = a2;
  *(a9 + 32) = v53;
  *(a9 + 33) = v100[0];
  *(a9 + 36) = *(v100 + 3);
  *(a9 + 40) = v65;
  *(a9 + 48) = v37;
  *(a9 + 56) = v45;
  *(a9 + 64) = v51;
  *(a9 + 72) = v29;
  *(a9 + 73) = v99[0];
  *(a9 + 76) = *(v99 + 3);
  *(a9 + 80) = v62;
  *(a9 + 88) = v66;
  *(a9 + 96) = a5;
  *(a9 + 104) = v58;
  *(a9 + 105) = v34;
  *(a9 + 106) = v63;
  *(a9 + 107) = v96;
  *(a9 + 111) = v97;
  *(a9 + 112) = v54;
  *(a9 + 120) = v57;
  *(a9 + 128) = a7;
  *(a9 + 136) = a8;
  *(a9 + 144) = v55;
  return result;
}

uint64_t sub_21414873C()
{
  v1 = 0x724774756F6E6166;
  v2 = 0x65646F4D70617277;
  if (*v0 != 2)
  {
    v2 = 0x496E6F6973736573;
  }

  if (*v0)
  {
    v1 = 0x654B63696C627570;
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

uint64_t sub_2141487C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214367564(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141487F0(uint64_t a1)
{
  v2 = sub_2142F3700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21414882C(uint64_t a1)
{
  v2 = sub_2142F3700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214148868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9073C0, &qword_2146F4A08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v134 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142F3700();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v134);
  }

  v90 = v6;
  LOBYTE(v103) = 0;
  v12 = sub_2146DA168();
  v14 = v13;
  v89 = v12;
  LOBYTE(v91) = 1;
  sub_21406116C();
  sub_2146DA1C8();
  v88 = v14;
  v15 = v103;
  v16 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v91) = 2;
  sub_2142E11FC();
  sub_2146DA1C8();
  v86 = v16;
  v87 = v15;
  v17 = v103;
  v18 = v104;
  v128 = 3;
  v19 = sub_2146DA168();
  v63 = v18;
  v61 = v19;
  v71 = v21;
  v64 = v17;
  sub_2144BB778(&v103);
  v22 = v104;
  v23 = v106;
  v65 = v105;
  v133[0] = *v108;
  *(v133 + 3) = *&v108[3];
  v84 = v110;
  v85 = v103;
  v80 = v112;
  v81 = v111;
  LODWORD(v83) = v113;
  v132[0] = *v114;
  *(v132 + 3) = *&v114[3];
  v77 = v115;
  v78 = v109;
  v79 = v116;
  v66 = v118;
  v76 = v120;
  v130 = v122;
  v129 = v121;
  v72 = v123;
  v75 = v124;
  v67 = v117;
  v68 = v125;
  v74 = v126;
  v73 = v127;
  v62 = v119;
  v131 = v119;
  *&v91 = v89;
  *(&v91 + 1) = v88;
  v70 = v107;
  LOBYTE(v101[0]) = v107;
  v103 = 0xD000000000000020;
  v104 = 0x800000021478E600;
  v105 = 0xD00000000000001CLL;
  v106 = 0x800000021478A360;
  v69 = v23;

  v82 = v22;
  v24 = v85(&v91, v101, &v103);
  v25 = v87;
  v60 = 0x800000021478A360;
  if (v24)
  {
    v26 = v60;

    v27 = v25;

    v103 = v78;
    v104 = v84;
    v29 = v80;
    v28 = v81;
    v105 = v81;
    v106 = v80;
    v107 = v83;

    sub_213FDCA18(v28, v29);
    v83 = "ey.fanoutGroupId";
    sub_214032024(v27, v86, 2, 0xD00000000000001CLL, 0x800000021478E630, 0xD00000000000001CLL, v26);

    v78 = v103;
    v65 = v104;
    v69 = v105;
    v59 = v106;
    LODWORD(v83) = v107;

    sub_213FDC6BC(v81, v80);
    LOBYTE(v101[0]) = v62 & 1;
    *&v91 = v64;
    BYTE8(v91) = v63;
    v102 = v76;
    v103 = 0xD00000000000001BLL;
    v104 = 0x800000021478E650;
    v105 = 0xD00000000000001CLL;
    v106 = v26;

    v39 = v77(&v91, &v102, &v103);
    v40 = v71;
    if (v39)
    {
      v42 = v59;
      v41 = v60;

      v131 = 0;
      v101[0] = v61;
      v101[1] = v40;
      LOBYTE(v91) = v73;
      v103 = 0xD00000000000001CLL;
      v104 = 0x800000021478E670;
      v105 = 0xD00000000000001CLL;
      v106 = v41;

      if (v72(v101, &v91, &v103))
      {

        sub_213FB54FC(v87, v86);
        (*(v90 + 8))(v9, v5);

        v46 = v75;

        *&v91 = v85;
        *(&v91 + 1) = v82;
        *&v92 = v89;
        *(&v92 + 1) = v88;
        LOBYTE(v93) = v70;
        *(&v93 + 1) = v133[0];
        DWORD1(v93) = *(v133 + 3);
        *(&v93 + 1) = v78;
        *&v94 = v65;
        *(&v94 + 1) = v69;
        *&v95 = v42;
        BYTE8(v95) = v83;
        *(&v95 + 9) = v132[0];
        HIDWORD(v95) = *(v132 + 3);
        *&v96 = v77;
        *(&v96 + 1) = v79;
        *&v97 = v64;
        v47 = v63;
        BYTE8(v97) = v63;
        LODWORD(v90) = v131;
        BYTE9(v97) = v131;
        v48 = v76;
        BYTE10(v97) = v76;
        *(&v97 + 11) = v129;
        HIBYTE(v97) = v130;
        v49 = v71;
        v50 = v72;
        *&v98 = v72;
        *(&v98 + 1) = v46;
        *&v99 = v61;
        *(&v99 + 1) = v71;
        LOBYTE(v46) = v73;
        v100 = v73;
        v51 = v92;
        *a2 = v91;
        *(a2 + 16) = v51;
        v52 = v93;
        v53 = v94;
        v54 = v96;
        *(a2 + 64) = v95;
        *(a2 + 80) = v54;
        *(a2 + 32) = v52;
        *(a2 + 48) = v53;
        v55 = v97;
        v56 = v98;
        v57 = v99;
        *(a2 + 144) = v46;
        *(a2 + 112) = v56;
        *(a2 + 128) = v57;
        *(a2 + 96) = v55;
        sub_2142F3754(&v91, &v103);
        __swift_destroy_boxed_opaque_existential_1(v134);
        v103 = v85;
        v104 = v82;
        v105 = v89;
        v106 = v88;
        v107 = v70;
        *v108 = v133[0];
        *&v108[3] = *(v133 + 3);
        v109 = v78;
        v110 = v65;
        v111 = v69;
        v112 = v59;
        v113 = v83;
        *v114 = v132[0];
        *&v114[3] = *(v132 + 3);
        v115 = v77;
        v116 = v79;
        v117 = v64;
        v118 = v47;
        v119 = v90;
        v120 = v48;
        v121 = v129;
        v122 = v130;
        v123 = v50;
        v124 = v75;
        v125 = v61;
        v126 = v49;
        v127 = v46;
        return sub_2142F36AC(&v103);
      }

      sub_214031C4C();
      swift_allocError();
      *v58 = 0xD00000000000001CLL;
      v58[1] = 0x800000021478E670;
      v58[2] = 0xD00000000000001CLL;
      v58[3] = v60;
      swift_willThrow();

      sub_213FB54FC(v87, v86);
      (*(v90 + 8))(v9, v5);

      v33 = v88;
      v36 = v64;
      v84 = v65;
      v37 = v42;
      v38 = v69;
      v32 = v63;
      v34 = v82;
      v35 = v78;
    }

    else
    {

      sub_214031C4C();
      swift_allocError();
      *v43 = 0xD00000000000001BLL;
      v43[1] = 0x800000021478E650;
      v43[2] = 0xD00000000000001CLL;
      v43[3] = v60;
      swift_willThrow();
      sub_213FB54FC(v87, v86);
      (*(v90 + 8))(v9, v5);
      v44 = v88;
      v32 = v66;
      v45 = v101[0];

      v131 = v45;
      v33 = v44;
      v84 = v65;
      v38 = v69;
      v37 = v59;
      v34 = v82;
      v35 = v78;
      v36 = v67;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000020;
    v30[1] = 0x800000021478E600;
    v31 = v60;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = v31;
    swift_willThrow();

    v32 = v66;
    sub_213FB54FC(v25, v86);
    (*(v90 + 8))(v9, v5);
    v33 = v69;

    v34 = v82;

    v89 = v65;
    v35 = v78;
    v36 = v67;
    v37 = v80;
    v38 = v81;
  }

  __swift_destroy_boxed_opaque_existential_1(v134);
  v103 = v85;
  v104 = v34;
  v105 = v89;
  v106 = v33;
  v107 = v70;
  *v108 = v133[0];
  *&v108[3] = *(v133 + 3);
  v109 = v35;
  v110 = v84;
  v111 = v38;
  v112 = v37;
  v113 = v83;
  *v114 = v132[0];
  *&v114[3] = *(v132 + 3);
  v115 = v77;
  v116 = v79;
  v117 = v36;
  v118 = v32;
  v119 = v131;
  v120 = v76;
  v121 = v129;
  v122 = v130;
  v123 = v72;
  v124 = v75;
  v125 = v68;
  v126 = v74;
  v127 = v73;
  return sub_2142F36AC(&v103);
}

uint64_t sub_214149454(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9073D0, &qword_2146F4A10);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v18 = *(v1 + 96);
  v19 = v9;
  v24 = *(v1 + 104);
  v17 = *(v1 + 105);
  v11 = *(v1 + 136);
  v15[1] = *(v1 + 128);
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142F3700();
  sub_2146DAA28();
  if (v8)
  {
    LOBYTE(v22) = 0;

    v13 = v20;
    sub_2146DA328();
    if (v13)
    {
      (*(v21 + 8))(v6, v3);
    }

    if (v10 >> 60 != 15)
    {
      v22 = v19;
      v23 = v10;
      v25 = 1;
      sub_21402D9F8(v19, v10);
      sub_214061684();
      sub_2146DA388();
      sub_213FB54FC(v22, v23);
      if ((v17 & 1) == 0)
      {
        v22 = v18;
        LOBYTE(v23) = v24 & 1;
        v25 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
        sub_2142E1C30();
        sub_2146DA388();
        if (v16)
        {
          LOBYTE(v22) = 3;

          sub_2146DA328();
          (*(v21 + 8))(v6, v3);
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void *sub_214149798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t (*a10)(void, void, void), const void *a11)
{
  v12 = MEMORY[0x28223BE20](a1);
  v72 = v14;
  v73 = v13;
  v69 = v15;
  v61 = v17;
  v62 = v16;
  v76 = v18;
  v20 = v19;
  v22 = v21;
  v71 = *v12;
  v23 = a9[5];
  v130 = a9[4];
  v131 = v23;
  v132 = *(a9 + 12);
  v24 = a9[1];
  v126 = *a9;
  v127 = v24;
  v25 = a9[3];
  v128 = a9[2];
  v129 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_214059900;
  *(v27 + 24) = 0;
  *(v26 + 32) = v27;
  sub_214042B80(v26, &v83);
  v28 = v83;
  v29 = v84;
  v30 = v86;
  v63 = v85;
  LOBYTE(v26) = v87;
  sub_2144BBF10(v123);
  v79 = v123[0];
  v82 = v123[1];
  v138 = v123[2];
  v81 = v124;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_2146E9BF0;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_214059900;
  *(v32 + 24) = 0;
  *(v31 + 32) = v32;
  sub_214042B80(v31, &v118);
  v80 = v119;
  v64 = v120;
  v77 = v121;
  v78 = v118;
  v74 = v122;
  sub_2144BC164(v116);
  v68 = v116[0];
  v65 = v116[1];
  v75 = v116[2];
  v66 = v69 & 1;
  v70 = v117;
  memcpy(&__src[7], a11, 0xB81uLL);
  v118 = v22;
  v119 = v20;
  v67 = v26;
  LOBYTE(v123[0]) = v26;
  v33 = v29;
  v83 = 0xD000000000000020;
  v84 = 0x800000021478E690;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v34 = v28(&v118, v123, &v83);
  if (v11)
  {

LABEL_6:

    v38 = v68;
    v36 = v79;

    v39 = v63;
    v40 = v65;
    v41 = v33;
    v42 = v70;
    v43 = v74;
LABEL_7:
    v44 = v77;
LABEL_8:
    v45 = v64;
LABEL_9:
    LOBYTE(v83) = v71;
    *(&v83 + 1) = v137[0];
    HIDWORD(v83) = *(v137 + 3);
    v84 = v28;
    v85 = v41;
    v86 = v39;
    v87 = v30;
    v88 = v67;
    *v89 = *v136;
    *&v89[3] = *&v136[3];
    v90 = v36;
    v91 = v82;
    v92 = v138;
    v93 = v81;
    *&v94[3] = *&v135[3];
    *v94 = *v135;
    v95 = v78;
    v96 = v80;
    v97 = v45;
    v98 = v44;
    v99 = v43;
    v100 = v66;
    v102 = v134;
    v101 = v133;
    v103 = v72;
    v104 = v126;
    v105 = v127;
    v108 = v130;
    v109 = v131;
    v106 = v128;
    v107 = v129;
    v110 = v132;
    v111 = v38;
    v112 = v40;
    v113 = v75;
    v114 = v42;
    memcpy(v115, __src, sizeof(v115));
    return sub_2142F37B0(&v83);
  }

  v59 = v22;
  v60 = v20;
  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000020;
    v37[1] = 0x800000021478E690;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v118 = v76;
  LOBYTE(v123[0]) = v81;
  v83 = 0xD000000000000025;
  v84 = 0x800000021478E6C0;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v35 = v79(&v118, v123, &v83);
  v36 = v79;
  v58 = v29;
  v40 = v65;
  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v48 = 0xD000000000000025;
    v48[1] = 0x800000021478E6C0;
    v48[2] = 0xD00000000000001CLL;
    v48[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v68;
    v42 = v70;
    v30 = v60;
    v43 = v74;

    v41 = v58;
    v39 = v59;
    goto LABEL_7;
  }

  v118 = v62;
  v119 = v73;
  v43 = v74;
  LOBYTE(v123[0]) = v74;
  v83 = 0xD00000000000001CLL;
  v84 = 0x800000021478E6F0;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v47 = v78(&v118, v123, &v83);
  v42 = v70;
  if ((v47 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD00000000000001CLL;
    v50[1] = 0x800000021478E6F0;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v68;
    v30 = v60;
    v36 = v79;
    v44 = v77;

    v138 = v76;
    v41 = v58;
    v39 = v59;
    goto LABEL_8;
  }

  v118 = a10;
  LOBYTE(v123[0]) = v70;
  v83 = 0xD000000000000025;
  v84 = 0x800000021478E710;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  sub_213FBE134(v75);
  v49 = v68(&v118, v123, &v83);
  v38 = v68;
  v138 = 0x800000021478E710;
  v43 = v74;
  if ((v49 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    v56 = v138;
    *v57 = 0xD000000000000025;
    v57[1] = v56;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB7170(v75);
    v30 = v60;
    v138 = v76;
    v45 = v62;
    v44 = v73;
    v41 = v58;
    v39 = v59;
    v36 = v79;
    goto LABEL_9;
  }

  sub_213FB7170(v75);

  sub_213FB7170(v75);
  *v61 = v71;
  *(v61 + 1) = v137[0];
  *(v61 + 4) = *(v137 + 3);
  *(v61 + 8) = v28;
  *(v61 + 16) = v58;
  *(v61 + 24) = v59;
  *(v61 + 32) = v60;
  *(v61 + 40) = v67;
  *(v61 + 41) = *v136;
  *(v61 + 44) = *&v136[3];
  *(v61 + 48) = v79;
  *(v61 + 56) = v82;
  *(v61 + 64) = v76;
  *(v61 + 72) = v81;
  *(v61 + 76) = *&v135[3];
  *(v61 + 73) = *v135;
  *(v61 + 80) = v78;
  *(v61 + 88) = v80;
  *(v61 + 96) = v62;
  *(v61 + 104) = v73;
  *(v61 + 112) = v74;
  *(v61 + 113) = v66;
  *(v61 + 118) = v134;
  *(v61 + 114) = v133;
  *(v61 + 120) = v72;
  v51 = v127;
  *(v61 + 128) = v126;
  *(v61 + 144) = v51;
  v52 = v128;
  v53 = v129;
  v54 = v131;
  v55 = v132;
  *(v61 + 192) = v130;
  *(v61 + 208) = v54;
  *(v61 + 160) = v52;
  *(v61 + 176) = v53;
  *(v61 + 224) = v55;
  *(v61 + 232) = v68;
  *(v61 + 240) = v65;
  *(v61 + 248) = a10;
  *(v61 + 256) = v70;
  return memcpy((v61 + 257), __src, 0xB88uLL);
}