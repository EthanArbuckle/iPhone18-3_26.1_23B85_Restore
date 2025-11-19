uint64_t sub_21419A5E4()
{
  v1 = 0x756F72676B636162;
  v2 = 0x6552726174617661;
  if (*v0 != 2)
  {
    v2 = 0x79646F42736168;
  }

  if (*v0)
  {
    v1 = 0x6D49726174617661;
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

uint64_t sub_21419A67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436E898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21419A6A4(uint64_t a1)
{
  v2 = sub_2142FCDB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419A6E0(uint64_t a1)
{
  v2 = sub_2142FCDB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MemojiPoster.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9084A8, &qword_2146F5070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142FCDB8();
  sub_2146DAA08();
  if (!v2)
  {
    v33 = v6;
    LOBYTE(v34[0]) = 0;
    sub_2142FCE0C();
    v12 = v5;
    sub_2146DA1C8();
    v31 = v37[1];
    v32 = v37[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    LOBYTE(v34[0]) = 1;
    sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0);
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9084C0, &qword_2146F5078);
    LOBYTE(v35[0]) = 2;
    sub_2142FCE60();
    sub_2146DA1C8();
    v15 = v34[0];
    v14 = v34[1];
    v28 = v34[2];
    v29 = v34[3];
    v16 = v34[5];
    v30 = v34[4];
    v36 = 3;
    v17 = sub_2146DA178();
    v18 = *(v33 + 8);
    LODWORD(v33) = v17;
    v18(v9, v12);
    LOWORD(v35[0]) = 0;
    sub_2140615D0(v35);
    v19 = v35[9];
    *(a2 + 408) = v35[8];
    *(a2 + 424) = v19;
    v20 = v35[11];
    *(a2 + 440) = v35[10];
    *(a2 + 456) = v20;
    v21 = v35[5];
    *(a2 + 344) = v35[4];
    *(a2 + 360) = v21;
    v22 = v35[7];
    *(a2 + 376) = v35[6];
    *(a2 + 392) = v22;
    v23 = v35[1];
    *(a2 + 280) = v35[0];
    *(a2 + 296) = v23;
    v24 = v35[3];
    *(a2 + 312) = v35[2];
    *(a2 + 328) = v24;
    *(a2 + 272) = 0;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 32) = 0u;
    v25 = v31;
    *a2 = v32;
    *(a2 + 16) = v25;
    *(a2 + 472) = v15;
    *(a2 + 480) = v14;
    v26 = v29;
    *(a2 + 488) = v28;
    *(a2 + 496) = v26;
    *(a2 + 504) = v30;
    *(a2 + 512) = v16;
    *(a2 + 520) = v33 & 1;
    memcpy(v34, v37, sizeof(v34));
    sub_213FB2DF4(a2 + 32, &qword_27C905500, &qword_2146F2BE0);
    memcpy((a2 + 32), v34, 0x1B8uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t MemojiPoster.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9084D8, &qword_2146F5080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FCDB8();
  sub_2146DAA28();
  v11 = v3[1];
  v19 = *v3;
  v20 = v11;
  v23 = 0;
  sub_2142FCF88();
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v19) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0);
    sub_2146DA388();
    v12 = *(v3 + 60);
    v13 = *(v3 + 61);
    v14 = *(v3 + 62);
    v15 = *(v3 + 63);
    v16 = *(v3 + 64);
    *&v19 = *(v3 + 59);
    *(&v19 + 1) = v12;
    *&v20 = v13;
    *(&v20 + 1) = v14;
    v21 = v15;
    v22 = v16;
    v23 = 2;
    sub_2142FCFDC(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9084C0, &qword_2146F5078);
    sub_2142FD02C();
    sub_2146DA388();
    sub_2142FCF38(v19);
    v17 = *(v3 + 520);
    LOBYTE(v19) = 3;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_21419ADA8@<Q0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  LOBYTE(v16) = *(a1 + 112);
  v7 = a1[4];
  v8 = a1[6];
  v9 = *a1;
  v14 = a1[1];
  v10 = a1[2];
  v15 = a1[3];
  *(a7 + 80) = a1[5];
  *(a7 + 96) = v8;
  *(a7 + 48) = v15;
  *(a7 + 64) = v7;
  *(a7 + 16) = v14;
  *(a7 + 32) = v10;
  *a7 = v9;
  *(a7 + 112) = v16;
  v11 = a2[1];
  *(a7 + 120) = *a2;
  *(a7 + 136) = v11;
  result = *a3;
  v13 = *(a3 + 16);
  *(a7 + 152) = *a3;
  *(a7 + 168) = v13;
  *(a7 + 184) = a4;
  *(a7 + 192) = a5;
  *(a7 + 200) = a6;
  return result;
}

unint64_t sub_21419AE14()
{
  v1 = *v0;
  v2 = 0x756F72676B636162;
  v3 = 0x736C616974696E69;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0xD000000000000012;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21419AECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436EA0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21419AEF4(uint64_t a1)
{
  v2 = sub_2142FD104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419AF30(uint64_t a1)
{
  v2 = sub_2142FD104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21419AF6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9084F8, &qword_2146F5088);
  v5 = *(v56 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v56);
  v8 = &v23 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD104();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908508, &qword_2146F5090);
    v47 = 0;
    sub_2142FD158();
    sub_2146DA1C8();
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v38 = 1;
    sub_2142FCE0C();
    sub_2146DA1C8();
    v27 = v30;
    v28 = v29;
    v38 = 2;
    sub_2146DA1C8();
    v25 = v30;
    v26 = v29;
    LOBYTE(v29) = 3;
    v10 = sub_2146DA168();
    v13 = v12;
    v24 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v37 = 4;
    sub_2142E1378();
    sub_2146DA1C8();
    (*(v5 + 8))(v8, v56);
    v14 = v38;
    LOBYTE(v36) = v46;
    v16 = v44;
    v15 = v45;
    v34 = v44;
    v35 = v45;
    v32 = v42;
    v33 = v43;
    v18 = v39;
    v17 = v40;
    v29 = v39;
    v30 = v40;
    v19 = v41;
    v31 = v41;
    *(a2 + 64) = v43;
    *(a2 + 80) = v16;
    *(a2 + 96) = v15;
    *a2 = v18;
    *(a2 + 16) = v17;
    *(a2 + 112) = v36;
    v20 = v32;
    *(a2 + 32) = v19;
    *(a2 + 48) = v20;
    v21 = v28;
    *(a2 + 136) = v27;
    *(a2 + 120) = v21;
    v22 = v26;
    *(a2 + 168) = v25;
    *(a2 + 152) = v22;
    *(a2 + 184) = v24;
    *(a2 + 192) = v13;
    *(a2 + 200) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21419B328(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908520, &qword_2146F5098);
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - v5;
  v7 = v1[5];
  v50 = v1[4];
  v51 = v7;
  v52 = v1[6];
  v53 = *(v1 + 112);
  v8 = v1[1];
  v46 = *v1;
  v47 = v8;
  v9 = v1[3];
  v48 = v1[2];
  v49 = v9;
  v10 = *(v1 + 120);
  v23 = *(v1 + 136);
  v24 = v10;
  v11 = *(v1 + 152);
  v19 = *(v1 + 168);
  v20 = v11;
  v12 = *(v1 + 23);
  v21 = *(v1 + 24);
  v22 = v12;
  v18 = *(v1 + 200);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v46, &v38, &qword_27C908508, &qword_2146F5090);
  sub_2142FD104();
  sub_2146DAA28();
  v42 = v50;
  v43 = v51;
  v44 = v52;
  v45 = v53;
  v38 = v46;
  v39 = v47;
  v40 = v48;
  v41 = v49;
  v37 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908508, &qword_2146F5090);
  sub_2142FD230();
  v14 = v25;
  sub_2146DA388();
  if (v14)
  {
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    sub_213FB2DF4(&v29, &qword_27C908508, &qword_2146F5090);
    return (*(v54 + 8))(v6, v3);
  }

  else
  {
    v16 = v54;
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    sub_213FB2DF4(&v29, &qword_27C908508, &qword_2146F5090);
    v27 = v24;
    v28 = v23;
    v26 = 1;
    sub_2142FCF88();
    sub_2146DA388();
    v27 = v20;
    v28 = v19;
    v26 = 2;
    sub_2146DA388();
    LOBYTE(v27) = 3;
    sub_2146DA328();
    LOBYTE(v27) = v18;
    v26 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    return (*(v16 + 8))(v6, v3);
  }
}

__n128 sub_21419B6F4@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  return result;
}

uint64_t sub_21419B708()
{
  if (*v0)
  {
    result = 0x746E6169726176;
  }

  else
  {
    result = 0x6F6C6F4365736162;
  }

  *v0;
  return result;
}

uint64_t sub_21419B748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6C6F4365736162 && a2 == 0xE900000000000072;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
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

uint64_t sub_21419B82C(uint64_t a1)
{
  v2 = sub_2142FD308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419B868(uint64_t a1)
{
  v2 = sub_2142FD308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21419B8A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908538, &qword_2146F50A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD308();
  sub_2146DAA08();
  if (!v2)
  {
    v18 = 0;
    sub_2142FCE0C();
    sub_2146DA1C8();
    v14 = v17;
    v15 = v16;
    v18 = 1;
    sub_2142FD35C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v16;
    v12 = v14;
    *a2 = v15;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21419BA84(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908550, &qword_2146F50A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = *(v3 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD308();
  sub_2146DAA28();
  v12 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v12;
  v15 = 0;
  sub_2142FCF88();
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v14[0]) = v10;
    v15 = 1;
    sub_2142FD3B0();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21419BC50@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>, float a7@<S5>, float a8@<S6>, float a9@<S7>)
{
  sub_214449A94(&v97);
  v16 = v98;
  v149 = v97;
  v17 = *&v99;
  v18 = BYTE5(v99);
  v67 = HIWORD(v99);
  v92 = v100;
  v94 = v101;
  v57 = v102;
  v93 = v104;
  v69 = v105;
  v89 = v106;
  v91 = v107;
  v58 = v108;
  v90 = v110;
  v70 = v111;
  v86 = v112;
  v88 = v113;
  v59 = v114;
  v87 = v116;
  v71 = v117;
  v84 = v118;
  v85 = v119;
  v60 = v120;
  v19 = v121;
  v79 = v122;
  v72 = v123;
  v81 = v124;
  v80 = v125;
  v61 = v126;
  v20 = v127;
  v82 = v128;
  v62 = v132;
  v21 = v133;
  v22 = v139;
  v148 = BYTE4(v99);
  v147 = v103;
  v146 = v109;
  v56 = v115;
  v145 = v115;
  v144 = v121;
  v143 = v127;
  v142 = v133;
  v141 = v139;
  v96 = a2;
  v95 = BYTE5(v99);
  v97 = 0xD000000000000016;
  v98 = 0x800000021478F430;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;
  v65 = v129;
  v66 = v18;
  v77 = v130;
  v83 = v131;
  v78 = v134;
  v68 = v135;
  v73 = v136;
  v75 = v137;
  v63 = v138;
  v74 = v140;

  v76 = v16;
  v23 = v149(&v96, &v95, &v97);
  if (v64)
  {

LABEL_6:
    v24 = v16;

LABEL_7:
    v27 = v82;
    v28 = v80;
    v29 = v81;
    v30 = v79;
    a7 = v61;
    a8 = v62;
    a6 = v60;
    a4 = v58;
    a5 = v59;
    a3 = v57;
LABEL_8:
    v97 = v149;
    v98 = v24;
    BYTE4(v99) = v148;
    *&v99 = v17;
    BYTE5(v99) = v66;
    HIWORD(v99) = v67;
    v100 = v92;
    v101 = v94;
    v102 = a3;
    v103 = v147;
    v104 = v93;
    v105 = v69;
    v106 = v89;
    v107 = v91;
    v108 = a4;
    v109 = v146;
    v110 = v90;
    v111 = v70;
    v112 = v86;
    v113 = v88;
    v114 = a5;
    v115 = v145;
    v116 = v87;
    v117 = v71;
    v118 = v84;
    v119 = v85;
    v120 = a6;
    v121 = v144;
    v122 = v30;
    v123 = v72;
    v124 = v29;
    v125 = v28;
    v126 = a7;
    v127 = v143;
    v128 = v27;
    v129 = v65;
    v130 = v77;
    v131 = v83;
    v132 = a8;
    v133 = v142;
    v134 = v78;
    v135 = v68;
    v136 = v73;
    v137 = v75;
    v138 = v63;
    v139 = v141;
    v140 = v74;
    return sub_2142FD404(&v97);
  }

  v53 = v20;
  v51 = v22;
  v52 = v21;
  if ((v23 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000016;
    v26[1] = 0x800000021478F430;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v24 = v16;

  v148 = 0;
  v96 = a3;
  v95 = v93;
  v97 = 0xD000000000000018;
  v98 = 0x800000021478F450;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v25 = v92(&v96, &v95, &v97);
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000018;
    v33[1] = 0x800000021478F450;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = a2;
    goto LABEL_7;
  }

  v147 = 0;
  v96 = a4;
  v95 = v90;
  v97 = 0xD000000000000017;
  v98 = 0x800000021478F470;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v32 = v89(&v96, &v95, &v97);
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD000000000000017;
    v35[1] = 0x800000021478F470;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = a2;
    v27 = v82;
    v28 = v80;
    v29 = v81;
    v30 = v79;
    a7 = v61;
    a8 = v62;
    a6 = v60;
    a4 = v58;
    a5 = v59;
    goto LABEL_8;
  }

  v146 = 0;
  v96 = a5;
  v95 = v87;
  v97 = 0xD000000000000018;
  v98 = 0x800000021478F490;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v34 = v86(&v96, &v95, &v97);
  if ((v34 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v37 = 0xD000000000000018;
    v37[1] = 0x800000021478F490;
    v37[2] = 0xD00000000000001CLL;
    v37[3] = 0x800000021478A360;
    swift_willThrow();

    v145 = v56 & 1;
    v17 = a2;
    v27 = v82;
    v28 = v80;
    v29 = v81;
    v30 = v79;
    a7 = v61;
    a8 = v62;
    a6 = v60;
    a5 = v59;
    goto LABEL_8;
  }

  v145 = 0;
  v96 = a6;
  v30 = v79;
  v95 = v79;
  v97 = 0xD000000000000016;
  v98 = 0x800000021478F4B0;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v36 = v84(&v96, &v95, &v97);
  v28 = v80;
  if ((v36 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000016;
    v39[1] = 0x800000021478F4B0;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    v144 = v19 & 1;
    v17 = a2;
    v27 = v82;
    v29 = v81;
    a7 = v61;
    a8 = v62;
    a6 = v60;
    goto LABEL_8;
  }

  v144 = 0;
  v96 = a7;
  v27 = v82;
  v95 = v82;
  v97 = 0xD000000000000018;
  v98 = 0x800000021478F4D0;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v29 = v81;
  v38 = v81(&v96, &v95, &v97);
  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000018;
    v41[1] = 0x800000021478F4D0;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();
    v17 = a2;

    v143 = v53 & 1;
    a7 = v61;
    a8 = v62;
    goto LABEL_8;
  }

  v143 = 0;
  v96 = a8;
  v95 = v78;
  v97 = 0xD000000000000017;
  v98 = 0x800000021478F4F0;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v40 = v77(&v96, &v95, &v97);
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD000000000000017;
    v43[1] = 0x800000021478F4F0;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = a2;
    v142 = v52 & 1;
    v27 = v82;
    v28 = v80;
    v29 = v81;
    v30 = v79;
    v24 = v76;
    a8 = v62;
    goto LABEL_8;
  }

  v142 = 0;
  v96 = a9;
  v95 = v74;
  v97 = 0xD000000000000018;
  v98 = 0x800000021478F510;
  v99 = 0xD00000000000001CLL;
  v100 = 0x800000021478A360;

  v42 = v73(&v96, &v95, &v97);
  if ((v42 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000018;
    v50[1] = 0x800000021478F510;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();

    v141 = v51 & 1;
    v17 = a2;
    v27 = v82;
    v28 = v80;
    v29 = v81;
    v30 = v79;
    v24 = v76;
    goto LABEL_8;
  }

  *a1 = v149;
  *(a1 + 8) = v76;
  v141 = 0;
  *(a1 + 20) = v148;
  v44 = v147;
  *(a1 + 21) = v66;
  v45 = v146;
  *(a1 + 22) = v67;
  v46 = v145;
  *(a1 + 24) = v92;
  v47 = v144;
  *(a1 + 32) = v94;
  v48 = v143;
  *(a1 + 44) = v44;
  v49 = v142;
  *(a1 + 16) = a2;
  *(a1 + 40) = a3;
  *(a1 + 45) = v93;
  *(a1 + 46) = v69;
  *(a1 + 48) = v89;
  *(a1 + 56) = v91;
  *(a1 + 64) = a4;
  *(a1 + 68) = v45;
  *(a1 + 69) = v90;
  *(a1 + 70) = v70;
  *(a1 + 72) = v86;
  *(a1 + 80) = v88;
  *(a1 + 88) = a5;
  *(a1 + 92) = v46;
  *(a1 + 93) = v87;
  *(a1 + 94) = v71;
  *(a1 + 96) = v84;
  *(a1 + 104) = v85;
  *(a1 + 112) = a6;
  *(a1 + 116) = v47;
  *(a1 + 117) = v79;
  *(a1 + 118) = v72;
  *(a1 + 120) = v81;
  *(a1 + 128) = v80;
  *(a1 + 136) = a7;
  *(a1 + 140) = v48;
  *(a1 + 141) = v82;
  *(a1 + 142) = v65;
  *(a1 + 144) = v77;
  *(a1 + 152) = v83;
  *(a1 + 160) = a8;
  *(a1 + 164) = v49;
  *(a1 + 165) = v78;
  *(a1 + 166) = v68;
  *(a1 + 168) = v73;
  *(a1 + 176) = v75;
  *(a1 + 184) = a9;
  *(a1 + 188) = 0;
  *(a1 + 189) = v74;
  return result;
}

uint64_t sub_21419C8A0()
{
  v1 = *v0;
  v2 = 828663154;
  v3 = 0x3265756C62;
  if (v1 != 6)
  {
    v3 = 0x326168706C61;
  }

  v4 = 845440370;
  if (v1 != 4)
  {
    v4 = 0x326E65657267;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x3165756C62;
  if (v1 != 2)
  {
    v5 = 0x316168706C61;
  }

  if (*v0)
  {
    v2 = 0x316E65657267;
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

uint64_t sub_21419C96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436EBD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21419C994(uint64_t a1)
{
  v2 = sub_2142FD458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419C9D0(uint64_t a1)
{
  v2 = sub_2142FD458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21419CA0C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v116 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908560, &qword_2146F50B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v68 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD458();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v115 = a1;
  v10 = v5;
  v11 = v116;
  LOBYTE(v129) = 0;
  sub_2146DA198();
  v13 = v12;
  LOBYTE(v129) = 1;
  sub_2146DA198();
  v15 = v14;
  LOBYTE(v129) = 2;
  sub_2146DA198();
  v17 = v16;
  LOBYTE(v129) = 3;
  sub_2146DA198();
  v19 = v18;
  LOBYTE(v129) = 4;
  sub_2146DA198();
  v21 = v20;
  LOBYTE(v129) = 5;
  sub_2146DA198();
  v23 = v22;
  LOBYTE(v129) = 6;
  sub_2146DA198();
  v114 = v25;
  v181 = 7;
  sub_2146DA198();
  v71 = v26;
  sub_214449A94(&v129);
  v27 = v130;
  v28 = v131;
  v29 = BYTE5(v131);
  v85 = HIWORD(v131);
  v112 = v133;
  v113 = v129;
  v30 = v134;
  v111 = v136;
  v87 = v137;
  v106 = v138;
  v108 = v139;
  v109 = v132;
  v107 = v142;
  v88 = v143;
  v103 = v144;
  v105 = v145;
  v77 = v140;
  v78 = v146;
  v104 = v148;
  v89 = v149;
  v100 = v150;
  v102 = v151;
  v101 = v154;
  v90 = v155;
  v97 = v156;
  v99 = v157;
  v79 = v152;
  v80 = v158;
  v98 = v160;
  v81 = v164;
  v180 = BYTE4(v131);
  v179 = v135;
  v178 = v141;
  v74 = v153;
  v75 = v147;
  v177 = v147;
  v176 = v153;
  v72 = v165;
  v73 = v159;
  v175 = v159;
  v174 = v165;
  v70 = v171;
  v173 = v171;
  LODWORD(v117) = v13;
  LOBYTE(v128) = BYTE5(v131);
  v76 = 0xD000000000000016;
  v129 = 0xD000000000000016;
  v130 = 0x800000021478F430;
  v131 = 0xD00000000000001CLL;
  v132 = 0x800000021478A360;
  v83 = v29;
  v84 = v161;
  v96 = v163;
  v95 = v166;
  v86 = v167;
  v92 = v168;
  v93 = v169;
  v94 = v162;
  v82 = v170;
  v91 = v172;

  v110 = v27;
  v31 = v113(&v117, &v128, &v129);
  v69 = 0x800000021478A360;
  if (v31)
  {
    v32 = v69;

    v180 = 0;
    LODWORD(v117) = v15;
    LOBYTE(v128) = v111;
    v68 = 0xD000000000000018;
    v129 = 0xD000000000000018;
    v130 = 0x800000021478F450;
    v131 = 0xD00000000000001CLL;
    v132 = v32;

    if (v109(&v117, &v128, &v129))
    {
      v37 = v69;

      v179 = 0;
      LODWORD(v117) = v17;
      LOBYTE(v128) = v107;
      v129 = 0xD000000000000017;
      v130 = 0x800000021478F470;
      v131 = 0xD00000000000001CLL;
      v132 = v37;

      if (v106(&v117, &v128, &v129))
      {
        v40 = v69;

        v178 = 0;
        LODWORD(v117) = v19;
        LOBYTE(v128) = v104;
        v129 = v68;
        v130 = 0x800000021478F490;
        v131 = 0xD00000000000001CLL;
        v132 = v40;

        if (v103(&v117, &v128, &v129))
        {
          v42 = v69;

          v177 = 0;
          LODWORD(v117) = v21;
          LOBYTE(v128) = v101;
          v129 = v76;
          v130 = 0x800000021478F4B0;
          v131 = 0xD00000000000001CLL;
          v132 = v42;

          if (v100(&v117, &v128, &v129))
          {
            v44 = v69;

            v176 = 0;
            LODWORD(v117) = v23;
            LOBYTE(v128) = v98;
            v129 = v68;
            v130 = 0x800000021478F4D0;
            v131 = 0xD00000000000001CLL;
            v132 = v44;

            if (v97(&v117, &v128, &v129))
            {
              v46 = v69;

              v175 = 0;
              LODWORD(v117) = v114;
              LOBYTE(v128) = v95;
              v129 = 0xD000000000000017;
              v130 = 0x800000021478F4F0;
              v131 = 0xD00000000000001CLL;
              v132 = v46;

              if (v94(&v117, &v128, &v129))
              {
                v48 = v69;

                v174 = 0;
                v128 = v71;
                LOBYTE(v117) = v91;
                v129 = v68;
                v130 = 0x800000021478F510;
                v131 = 0xD00000000000001CLL;
                v132 = v48;

                if (v92(&v128, &v117, &v129))
                {

                  (*(v10 + 8))(v8, v4);
                  v50 = v93;

                  v173 = 0;
                  v51 = v112;
                  v52 = v109;
                  *&v117 = v113;
                  *(&v117 + 1) = v110;
                  LODWORD(v118) = v13;
                  v77 = v180;
                  BYTE4(v118) = v180;
                  v53 = v83;
                  BYTE5(v118) = v83;
                  WORD3(v118) = v85;
                  *(&v118 + 1) = v109;
                  *&v119 = v112;
                  DWORD2(v119) = v15;
                  v54 = v179;
                  BYTE12(v119) = v179;
                  BYTE13(v119) = v111;
                  HIWORD(v119) = v87;
                  *&v120 = v106;
                  *(&v120 + 1) = v108;
                  LODWORD(v121) = v17;
                  v82 = v178;
                  BYTE4(v121) = v178;
                  BYTE5(v121) = v107;
                  WORD3(v121) = v88;
                  *(&v121 + 1) = v103;
                  *&v122 = v105;
                  DWORD2(v122) = v19;
                  v81 = v177;
                  BYTE12(v122) = v177;
                  BYTE13(v122) = v104;
                  HIWORD(v122) = v89;
                  *&v123 = v100;
                  *(&v123 + 1) = v102;
                  LODWORD(v124) = v21;
                  v80 = v176;
                  BYTE4(v124) = v176;
                  BYTE5(v124) = v101;
                  WORD3(v124) = v90;
                  *(&v124 + 1) = v97;
                  *&v125 = v99;
                  DWORD2(v125) = v23;
                  v79 = v175;
                  BYTE12(v125) = v175;
                  BYTE13(v125) = v98;
                  HIWORD(v125) = v84;
                  *&v126 = v94;
                  *(&v126 + 1) = v96;
                  v55 = v114;
                  LODWORD(v127[0]) = v114;
                  v78 = v174;
                  BYTE4(v127[0]) = v174;
                  BYTE5(v127[0]) = v95;
                  WORD3(v127[0]) = v86;
                  *(&v127[0] + 1) = v92;
                  *&v127[1] = v50;
                  v56 = v71;
                  DWORD2(v127[1]) = v71;
                  LODWORD(v76) = 0;
                  BYTE12(v127[1]) = 0;
                  v57 = v91;
                  BYTE13(v127[1]) = v91;
                  v58 = v117;
                  v59 = v118;
                  v60 = v120;
                  v11[2] = v119;
                  v11[3] = v60;
                  *v11 = v58;
                  v11[1] = v59;
                  v61 = v121;
                  v62 = v122;
                  v63 = v124;
                  v11[6] = v123;
                  v11[7] = v63;
                  v11[4] = v61;
                  v11[5] = v62;
                  v64 = v125;
                  v65 = v126;
                  v66 = v127[0];
                  *(v11 + 174) = *(v127 + 14);
                  v11[9] = v65;
                  v11[10] = v66;
                  v11[8] = v64;
                  sub_2142FD4AC(&v117, &v129);
                  __swift_destroy_boxed_opaque_existential_1(v115);
                  v129 = v113;
                  v130 = v110;
                  BYTE4(v131) = v77;
                  BYTE5(v131) = v53;
                  HIWORD(v131) = v85;
                  v132 = v52;
                  v133 = v51;
                  v135 = v54;
                  LODWORD(v131) = v13;
                  v134 = v15;
                  v136 = v111;
                  v137 = v87;
                  v138 = v106;
                  v139 = v108;
                  v140 = v17;
                  v141 = v82;
                  v142 = v107;
                  v143 = v88;
                  v144 = v103;
                  v145 = v105;
                  v146 = v19;
                  v147 = v81;
                  v148 = v104;
                  v149 = v89;
                  v150 = v100;
                  v151 = v102;
                  v152 = v21;
                  v153 = v80;
                  v154 = v101;
                  v155 = v90;
                  v156 = v97;
                  v157 = v99;
                  v158 = v23;
                  v159 = v79;
                  v160 = v98;
                  v161 = v84;
                  v162 = v94;
                  v163 = v96;
                  v164 = v55;
                  v165 = v78;
                  v166 = v95;
                  v167 = v86;
                  v168 = v92;
                  v169 = v50;
                  v170 = v56;
                  v171 = v76;
                  v172 = v57;
                  return sub_2142FD404(&v129);
                }

                sub_214031C4C();
                swift_allocError();
                *v67 = v68;
                v67[1] = 0x800000021478F510;
                v67[2] = 0xD00000000000001CLL;
                v67[3] = v69;
                swift_willThrow();
                (*(v10 + 8))(v8, v4);

                v173 = v70 & 1;
                v28 = v13;
                v30 = v15;
                v36 = v114;
              }

              else
              {
                sub_214031C4C();
                swift_allocError();
                *v49 = 0xD000000000000017;
                v49[1] = 0x800000021478F4F0;
                v49[2] = 0xD00000000000001CLL;
                v49[3] = v69;
                swift_willThrow();
                (*(v10 + 8))(v8, v4);

                v28 = v13;
                v174 = v72 & 1;
                v30 = v15;
                v36 = v81;
              }
            }

            else
            {
              sub_214031C4C();
              swift_allocError();
              *v47 = v68;
              v47[1] = 0x800000021478F4D0;
              v47[2] = 0xD00000000000001CLL;
              v47[3] = v69;
              swift_willThrow();
              (*(v10 + 8))(v8, v4);

              v28 = v13;
              v175 = v73 & 1;
              v30 = v15;
              v23 = v80;
              v36 = v81;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v45 = v76;
            v45[1] = 0x800000021478F4B0;
            v45[2] = 0xD00000000000001CLL;
            v45[3] = v69;
            swift_willThrow();
            (*(v10 + 8))(v8, v4);

            v176 = v74 & 1;
            v28 = v13;
            v30 = v15;
            v23 = v80;
            v36 = v81;
            v21 = v79;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v43 = v68;
          v43[1] = 0x800000021478F490;
          v43[2] = 0xD00000000000001CLL;
          v43[3] = v69;
          swift_willThrow();
          (*(v10 + 8))(v8, v4);

          v177 = v75 & 1;
          v28 = v13;
          v30 = v15;
          v23 = v80;
          v36 = v81;
          v19 = v78;
          v21 = v79;
        }

        goto LABEL_12;
      }

      sub_214031C4C();
      swift_allocError();
      *v41 = 0xD000000000000017;
      v41[1] = 0x800000021478F470;
      v41[2] = 0xD00000000000001CLL;
      v41[3] = v69;
      swift_willThrow();
      (*(v10 + 8))(v8, v4);

      v28 = v13;
      v30 = v15;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v38 = v69;
      *v39 = v68;
      v39[1] = 0x800000021478F450;
      v39[2] = 0xD00000000000001CLL;
      v39[3] = v38;
      swift_willThrow();
      (*(v10 + 8))(v8, v4);

      v28 = v13;
    }

    v23 = v80;
    v36 = v81;
    v19 = v78;
    v21 = v79;
    v17 = v77;
LABEL_12:
    v34 = v113;
    v35 = v110;
    goto LABEL_6;
  }

  sub_214031C4C();
  swift_allocError();
  *v33 = v76;
  v33[1] = 0x800000021478F430;
  v33[2] = 0xD00000000000001CLL;
  v33[3] = v69;
  swift_willThrow();
  (*(v10 + 8))(v8, v4);
  v34 = v113;
  v35 = v110;

  v23 = v80;
  v36 = v81;
  v19 = v78;
  v21 = v79;
  v17 = v77;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v115);
  v129 = v34;
  v130 = v35;
  LODWORD(v131) = v28;
  BYTE4(v131) = v180;
  BYTE5(v131) = v83;
  HIWORD(v131) = v85;
  v132 = v109;
  v133 = v112;
  v134 = v30;
  v135 = v179;
  v136 = v111;
  v137 = v87;
  v138 = v106;
  v139 = v108;
  v140 = v17;
  v141 = v178;
  v142 = v107;
  v143 = v88;
  v144 = v103;
  v145 = v105;
  v146 = v19;
  v147 = v177;
  v148 = v104;
  v149 = v89;
  v150 = v100;
  v151 = v102;
  v152 = v21;
  v153 = v176;
  v154 = v101;
  v155 = v90;
  v156 = v97;
  v157 = v99;
  v158 = v23;
  v159 = v175;
  v160 = v98;
  v161 = v84;
  v162 = v94;
  v163 = v96;
  v164 = v36;
  v165 = v174;
  v166 = v95;
  v167 = v86;
  v168 = v92;
  v169 = v93;
  v170 = v82;
  v171 = v173;
  v172 = v91;
  return sub_2142FD404(&v129);
}

uint64_t sub_21419DC74(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908570, &qword_2146F50B8);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 20);
  v10 = *(v1 + 40);
  v11 = *(v1 + 44);
  v12 = *(v1 + 64);
  v13 = *(v1 + 68);
  v14 = *(v1 + 88);
  v27 = *(v1 + 92);
  v28 = v13;
  v15 = *(v1 + 112);
  v16 = *(v1 + 116);
  v17 = *(v1 + 136);
  v25 = *(v1 + 140);
  v26 = v16;
  v18 = *(v1 + 160);
  v19 = *(v1 + 164);
  v20 = *(v1 + 184);
  v23 = *(v1 + 188);
  v24 = v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD458();
  sub_2146DAA28();
  if (v9)
  {
    goto LABEL_13;
  }

  v37 = 0;
  sub_2146DA358();
  if (v2)
  {
    return (*(v29 + 8))(v7, v4);
  }

  if (v11)
  {
    goto LABEL_13;
  }

  v36 = 1;
  sub_2146DA358();
  if (v28)
  {
    goto LABEL_13;
  }

  v35 = 2;
  sub_2146DA358();
  if (v27)
  {
    goto LABEL_13;
  }

  v34 = 3;
  sub_2146DA358();
  if (v26 & 1) != 0 || (v33 = 4, sub_2146DA358(), (v25) || (v32 = 5, sub_2146DA358(), (v24) || (v31 = 6, sub_2146DA358(), (v23))
  {
LABEL_13:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v30 = 7;
    sub_2146DA358();
    return (*(v29 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_21419DFF8()
{
  if (*v0)
  {
    result = 0x6F436D6F74737563;
  }

  else
  {
    result = 0x7954726574736F70;
  }

  *v0;
  return result;
}

uint64_t sub_21419E040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7954726574736F70 && a2 == 0xEA00000000006570;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F436D6F74737563 && a2 == 0xEB00000000726F6CLL)
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

uint64_t sub_21419E128(uint64_t a1)
{
  v2 = sub_2142FD508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419E164(uint64_t a1)
{
  v2 = sub_2142FD508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicPoster.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908578, &qword_2146F50C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD508();
  sub_2146DAA08();
  if (!v2)
  {
    v18 = 0;
    sub_2142FD55C();
    sub_2146DA1C8();
    v11 = v16[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8);
    v18 = 1;
    sub_2142FD5B0();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v17;
    v13 = v16[0];
    v14 = v16[1];
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 24) = v14;
    *(a2 + 40) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DynamicPoster.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085A0, &qword_2146F50D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v13 = *(v1 + 24);
  v14 = v10;
  v18 = v1[40];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD508();
  sub_2146DAA28();
  LOBYTE(v15) = v9;
  v19 = 0;
  sub_2142FD634();
  sub_2146DA388();
  if (!v2)
  {
    v16 = v13;
    v15 = v14;
    v17 = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8);
    sub_2142FD688();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21419E594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143287C0(a1, a3, type metadata accessor for Metadata);
  sub_214684434(&v20);
  v6 = v20;
  v5 = v21;
  v7 = v22;
  v8 = v23;
  v9 = a3 + *(type metadata accessor for PriorityMessageCommand() + 20);
  *v9 = v6;
  *(v9 + 8) = v5;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v25 = a2;
  v19 = v8;
  v24 = v8;
  v20 = 0xD00000000000002BLL;
  v21 = 0x800000021478F530;
  v22 = 0xD00000000000001CLL;
  v23 = 0x800000021478A360;

  v10 = v6(&v25, &v24, &v20);
  if (v17)
  {
  }

  else
  {
    if (v10)
    {

      sub_21432887C(a1, type metadata accessor for Metadata);
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);

      *v9 = v6;
      *(v9 + 8) = v5;
      *(v9 + 16) = a2;
      *(v9 + 24) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v14 = 0xD00000000000002BLL;
    v14[1] = 0x800000021478F530;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(a1, type metadata accessor for Metadata);
  v15 = *(v9 + 8);
  v16 = *(v9 + 16);

  *v9 = v6;
  *(v9 + 8) = v5;
  *(v9 + 16) = v7;
  *(v9 + 24) = v19;
  return sub_21432887C(a3, type metadata accessor for PriorityMessageCommand);
}

unint64_t sub_21419E7B8()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x617461646174656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_21419E7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002147954E0 == a2)
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

uint64_t sub_21419E8DC(uint64_t a1)
{
  v2 = sub_2142FD70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419E918(uint64_t a1)
{
  v2 = sub_2142FD70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21419E954@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085B8, &qword_2146F50D8);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = type metadata accessor for PriorityMessageCommand();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142FD70C();
  v17 = v40;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  LOBYTE(v42) = 0;
  sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v47) = 1;
  sub_2142E15CC();
  sub_2146DA1C8();
  v19 = v42;
  v40 = v6;
  sub_2143287C0(v6, v14, type metadata accessor for Metadata);
  sub_214684434(&v42);
  v20 = v42;
  v21 = v43;
  v22 = v44;
  v23 = v45;
  v24 = *(v11 + 20);
  v36 = v14;
  v25 = &v14[v24];
  *v25 = v42;
  *(v25 + 1) = v21;
  *(v25 + 2) = v22;
  v25[24] = v23;
  v47 = v19;
  v35 = v23;
  v46 = v23;
  v42 = 0xD00000000000002BLL;
  v43 = 0x800000021478F530;
  v44 = 0xD00000000000001CLL;
  v45 = 0x800000021478A360;
  v34 = v22;

  v37 = v20;
  v26 = v20(&v47, &v46, &v42);
  if (v26)
  {

    sub_21432887C(v40, type metadata accessor for Metadata);
    (*(v39 + 8))(v10, v7);
    v27 = *(v25 + 1);
    v28 = *(v25 + 2);

    v29 = v36;
    *v25 = v37;
    *(v25 + 1) = v21;
    *(v25 + 2) = v19;
    v25[24] = v35;
    sub_214328704(v29, v38, type metadata accessor for PriorityMessageCommand);
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  sub_214031C4C();
  swift_allocError();
  *v30 = 0xD00000000000002BLL;
  v30[1] = 0x800000021478F530;
  v30[2] = 0xD00000000000001CLL;
  v30[3] = 0x800000021478A360;
  swift_willThrow();

  sub_21432887C(v40, type metadata accessor for Metadata);
  (*(v39 + 8))(v10, v7);
  v31 = *(v25 + 1);
  v32 = *(v25 + 2);

  *v25 = v37;
  *(v25 + 1) = v21;
  *(v25 + 2) = v34;
  v25[24] = v35;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_21432887C(v36, type metadata accessor for PriorityMessageCommand);
}

uint64_t sub_21419EE74(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085C8, &qword_2146F50E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD70C();
  sub_2146DAA28();
  v15 = 0;
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + *(type metadata accessor for PriorityMessageCommand() + 20) + 16);
  if (v11)
  {
    v14 = v11;
    v13[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    return (*(v6 + 8))(v9, v5);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_21419F0D4@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  *&v6[119] = *(a2 + 112);
  *&v6[135] = *(a2 + 128);
  *&v6[151] = *(a2 + 144);
  *&v6[55] = *(a2 + 48);
  *&v6[71] = *(a2 + 64);
  *&v6[87] = *(a2 + 80);
  *&v6[103] = *(a2 + 96);
  *&v6[7] = *a2;
  *&v6[23] = *(a2 + 16);
  *&v6[39] = *(a2 + 32);
  *&v5[151] = a3[9];
  *&v5[167] = a3[10];
  *&v5[183] = a3[11];
  *&v5[192] = *(a3 + 185);
  *&v5[87] = a3[5];
  *&v5[103] = a3[6];
  *&v5[119] = a3[7];
  *&v5[135] = a3[8];
  *&v5[23] = a3[1];
  *&v5[39] = a3[2];
  *&v5[55] = a3[3];
  *&v5[71] = a3[4];
  *&v5[7] = *a3;
  *(a4 + 113) = *&v6[112];
  *(a4 + 129) = *&v6[128];
  *(a4 + 145) = *&v6[144];
  *(a4 + 49) = *&v6[48];
  *(a4 + 65) = *&v6[64];
  *(a4 + 81) = *&v6[80];
  *(a4 + 97) = *&v6[96];
  *(a4 + 1) = *v6;
  *(a4 + 17) = *&v6[16];
  *(a4 + 33) = *&v6[32];
  *(a4 + 329) = *&v5[160];
  *(a4 + 345) = *&v5[176];
  *(a4 + 361) = *&v5[192];
  *(a4 + 249) = *&v5[80];
  *(a4 + 265) = *&v5[96];
  *(a4 + 281) = *&v5[112];
  *(a4 + 297) = *&v5[128];
  *(a4 + 313) = *&v5[144];
  *(a4 + 185) = *&v5[16];
  result = *&v5[32];
  *(a4 + 201) = *&v5[32];
  *(a4 + 217) = *&v5[48];
  *(a4 + 233) = *&v5[64];
  v6[167] = *(a2 + 160);
  *a4 = *a1;
  *(a4 + 161) = *&v6[160];
  *(a4 + 169) = *v5;
  return result;
}

uint64_t sub_21419F25C()
{
  v1 = 0x654D646E65697266;
  if (*v0 != 1)
  {
    v1 = 0x654D796C696D6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x546567617373656DLL;
  }
}

uint64_t sub_21419F2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436EE50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21419F300(uint64_t a1)
{
  v2 = sub_2142FD760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21419F33C(uint64_t a1)
{
  v2 = sub_2142FD760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21419F378@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085D0, &qword_2146F50E8);
  v5 = *(v65 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v65);
  v8 = v27 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD760();
  sub_2146DAA08();
  if (v2)
  {
    v26 = a1;
  }

  else
  {
    v10 = a1;
    v11 = v5;
    LOBYTE(v54) = 0;
    sub_2142FD7B4();
    v12 = v65;
    sub_2146DA1C8();
    v13 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085E8, &qword_2146F50F0);
    v53 = 1;
    sub_2142FD808();
    sub_2146DA1C8();
    v50 = v62;
    v51 = v63;
    v52 = v64;
    v46 = v58;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v42 = v54;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908600, &qword_2146F50F8);
    v29 = 2;
    sub_2142FD8E0();
    sub_2146DA1C8();
    (*(v11 + 8))(v8, v12);
    *&v28[119] = v49;
    *&v28[135] = v50;
    *&v28[151] = v51;
    *&v28[55] = v45;
    *&v28[71] = v46;
    *&v28[87] = v47;
    *&v28[103] = v48;
    *&v28[7] = v42;
    *&v28[23] = v43;
    *&v28[39] = v44;
    *(&v27[9] + 7) = v39;
    *(&v27[10] + 7) = v40;
    *(&v27[11] + 7) = v41[0];
    v27[12] = *(v41 + 9);
    *(&v27[5] + 7) = v35;
    *(&v27[6] + 7) = v36;
    *(&v27[7] + 7) = v37;
    *(&v27[8] + 7) = v38;
    *(&v27[1] + 7) = v31;
    *(&v27[2] + 7) = v32;
    *(&v27[3] + 7) = v33;
    *(&v27[4] + 7) = v34;
    *(v27 + 7) = v30;
    v15 = *&v28[96];
    *(a2 + 113) = *&v28[112];
    v16 = *&v28[144];
    *(a2 + 129) = *&v28[128];
    *(a2 + 145) = v16;
    v17 = *&v28[32];
    *(a2 + 49) = *&v28[48];
    v18 = *&v28[80];
    *(a2 + 65) = *&v28[64];
    *(a2 + 81) = v18;
    *(a2 + 97) = v15;
    v19 = *&v28[16];
    *(a2 + 1) = *v28;
    *(a2 + 17) = v19;
    *(a2 + 33) = v17;
    v20 = v27[11];
    *(a2 + 329) = v27[10];
    *(a2 + 345) = v20;
    *(a2 + 361) = v27[12];
    v21 = v27[4];
    *(a2 + 249) = v27[5];
    v22 = v27[7];
    *(a2 + 265) = v27[6];
    *(a2 + 281) = v22;
    v23 = v27[9];
    *(a2 + 297) = v27[8];
    *(a2 + 313) = v23;
    v24 = v27[0];
    *(a2 + 185) = v27[1];
    v25 = v27[3];
    *(a2 + 201) = v27[2];
    *(a2 + 217) = v25;
    *(a2 + 233) = v21;
    v28[167] = v52;
    *a2 = v13;
    *(a2 + 161) = *&v28[160];
    *(a2 + 169) = v24;
    v26 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_21419F740(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908618, &qword_2146F5100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - v6;
  v8 = *v1;
  v9 = *(v1 + 120);
  v10 = *(v1 + 152);
  v60 = *(v1 + 136);
  v61 = v10;
  v62 = v1[168];
  v11 = *(v1 + 56);
  v12 = *(v1 + 88);
  v56 = *(v1 + 72);
  v57 = v12;
  v58 = *(v1 + 104);
  v59 = v9;
  v13 = *(v1 + 24);
  v52 = *(v1 + 8);
  v53 = v13;
  v54 = *(v1 + 40);
  v55 = v11;
  v14 = *(v1 + 22);
  v73 = *(v1 + 21);
  v74[0] = v14;
  *(v74 + 9) = *(v1 + 361);
  v15 = *(v1 + 18);
  v69 = *(v1 + 17);
  v70 = v15;
  v16 = *(v1 + 19);
  v72 = *(v1 + 20);
  v71 = v16;
  v17 = *(v1 + 14);
  v65 = *(v1 + 13);
  v66 = v17;
  v18 = *(v1 + 16);
  v67 = *(v1 + 15);
  v68 = v18;
  v19 = *(v1 + 12);
  v63 = *(v1 + 11);
  v64 = v19;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FD760();
  sub_2146DAA28();
  LOBYTE(v26) = v8;
  LOBYTE(v23[0]) = 0;
  sub_2142FD9B8();
  v21 = v75;
  sub_2146DA388();
  if (!v21)
  {
    v49 = v60;
    v50 = v61;
    v51 = v62;
    v45 = v56;
    v46 = v57;
    v47 = v58;
    v48 = v59;
    v41 = v52;
    v42 = v53;
    v43 = v54;
    v44 = v55;
    v40 = 1;
    sub_213FB2E54(&v52, &v26, &qword_27C9085E8, &qword_2146F50F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9085E8, &qword_2146F50F0);
    sub_2142FDA0C();
    sub_2146DA388();
    v38[8] = v49;
    v38[9] = v50;
    v39 = v51;
    v38[4] = v45;
    v38[5] = v46;
    v38[6] = v47;
    v38[7] = v48;
    v38[0] = v41;
    v38[1] = v42;
    v38[2] = v43;
    v38[3] = v44;
    sub_213FB2DF4(v38, &qword_27C9085E8, &qword_2146F50F0);
    v36 = v73;
    v37[0] = v74[0];
    *(v37 + 9) = *(v74 + 9);
    v32 = v69;
    v33 = v70;
    v34 = v71;
    v35 = v72;
    v28 = v65;
    v29 = v66;
    v30 = v67;
    v31 = v68;
    v26 = v63;
    v27 = v64;
    v25 = 2;
    sub_213FB2E54(&v63, v23, &qword_27C908600, &qword_2146F50F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908600, &qword_2146F50F8);
    sub_2142FDAE4();
    sub_2146DA388();
    v23[10] = v36;
    *v24 = v37[0];
    *&v24[9] = *(v37 + 9);
    v23[6] = v32;
    v23[7] = v33;
    v23[8] = v34;
    v23[9] = v35;
    v23[2] = v28;
    v23[3] = v29;
    v23[4] = v30;
    v23[5] = v31;
    v23[0] = v26;
    v23[1] = v27;
    sub_213FB2DF4(v23, &qword_27C908600, &qword_2146F50F8);
  }

  return (*(v4 + 8))(v7, v3);
}

__n128 sub_21419FBA4@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  sub_2143DAF70(&v71);
  v13 = v71;
  v15 = v72;
  v14 = v73;
  v16 = v74;
  sub_2143DB0D8(&v101);
  v60 = v101;
  v112 = v102;
  v48 = v103;
  v68 = v104;
  v70 = v105;
  sub_2143DB274(v99);
  v55 = v99[0];
  v67 = v99[2];
  v65 = v99[1];
  v66 = v99[3];
  v64 = v100;
  sub_2143DB2A8(v97);
  v61 = v97[0];
  v53 = v97[1];
  v58 = v97[3];
  v59 = v97[2];
  v62 = v98;
  v56 = a7;
  v106 = BYTE4(a7) & 1;
  v54 = BYTE4(a7) & 1;
  v71 = v13;
  v72 = v15;
  v73 = v14;
  v74 = v16;

  sub_21404F7E0(v15, v14);
  sub_214032118(a1, a2, 2, 0xD000000000000027, 0x800000021478F560, 0xD00000000000001CLL, 0x800000021478A360);
  if (v50)
  {
    sub_213FDC6BC(a8, a10);
    sub_213FDC6BC(a1, a2);

    v51 = v71;
    v17 = v72;
    v18 = v73;
    v19 = v74;

    sub_214032564(v15, v14);
    v20 = v19;
    v21 = v18;
    v22 = v51;
    v23 = v17;
    v24 = v64;
    v25 = v55;
    v26 = v70;
    v27 = v65;
    v28 = v59;
    v29 = v60;
    v30 = v112;
    v31 = v58;
    v32 = v53;
    v33 = v48;
    v34 = v68;
  }

  else
  {

    v52 = v71;
    v43 = v73;
    v44 = v72;
    v42 = v74;

    sub_214032564(v15, v14);
    v101 = a3;
    v102 = a4;
    LOBYTE(v99[0]) = v70;
    v71.n128_u64[0] = 0xD000000000000023;
    v71.n128_u64[1] = 0x800000021478F590;
    v72 = 0xD00000000000001CLL;
    v73 = 0x800000021478A360;

    sub_213FDC9D0(v48, v68);
    v29 = v60;
    if (v60(&v101, v99, &v71))
    {
      sub_213FDC6D0(v48, v68);

      sub_213FDC6D0(v48, v68);
      v101 = a5;
      v102 = a6;
      LOBYTE(v99[0]) = v64;
      v24 = v64;
      v71.n128_u64[0] = 0xD000000000000031;
      v71.n128_u64[1] = 0x800000021478F5C0;
      v72 = 0xD00000000000001CLL;
      v73 = 0x800000021478A360;

      sub_213FDC9D0(v67, v66);
      v25 = v55;
      if (v55(&v101, v99, &v71))
      {
        sub_213FDC6D0(v67, v66);

        sub_213FDC6D0(v67, v66);
        v71.n128_u64[0] = v61;
        v71.n128_u64[1] = v53;
        v72 = v59;
        v73 = v58;
        v74 = v62;

        sub_21404F7E0(v59, v58);
        sub_214032118(a8, a10, 2, 0xD000000000000022, 0x800000021478F600, 0xD00000000000001CLL, 0x800000021478A360);
        sub_213FDC6BC(a8, a10);
        sub_213FDC6BC(a1, a2);

        v35 = v71;
        v36 = v73;
        v69 = v72;
        v37 = v74;

        sub_214032564(v59, v58);
        result = v52;
        *a9 = v52;
        *(a9 + 16) = v44;
        *(a9 + 24) = v43;
        *(a9 + 32) = v42;
        *(a9 + 33) = v111[0];
        *(a9 + 36) = *(v111 + 3);
        v41 = v112;
        *(a9 + 40) = v60;
        *(a9 + 48) = v41;
        *(a9 + 56) = a3;
        *(a9 + 64) = a4;
        *(a9 + 72) = v70;
        *(a9 + 80) = v55;
        *(a9 + 88) = v65;
        *(a9 + 96) = a5;
        *(a9 + 104) = a6;
        *(a9 + 112) = v64;
        *(a9 + 116) = a7;
        *(a9 + 120) = v54;
        *(a9 + 128) = v35;
        *(a9 + 144) = v69;
        *(a9 + 152) = v36;
        *(a9 + 160) = v37;
        return result;
      }

      sub_214031C4C();
      swift_allocError();
      *v39 = 0xD000000000000031;
      v39[1] = 0x800000021478F5C0;
      v39[2] = 0xD00000000000001CLL;
      v39[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FDC6BC(a8, a10);

      sub_213FDC6BC(a1, a2);
      v30 = v112;
      v27 = v65;

      sub_213FDC6D0(v67, v66);
      v33 = a3;
      v34 = a4;
      v31 = v58;
      v28 = v59;
      v32 = v53;
      v21 = v43;
      v23 = v44;
      v22 = v52;
      v20 = v42;
      v26 = v70;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v38 = 0xD000000000000023;
      v38[1] = 0x800000021478F590;
      v38[2] = 0xD00000000000001CLL;
      v38[3] = 0x800000021478A360;
      swift_willThrow();

      sub_213FDC6BC(a8, a10);

      sub_213FDC6BC(a1, a2);
      v25 = v55;
      v30 = v112;

      sub_213FDC6D0(v48, v68);
      v34 = v68;
      v33 = v48;
      v31 = v58;
      v28 = v59;
      v32 = v53;
      v21 = v43;
      v23 = v44;
      v22 = v52;
      v20 = v42;
      v26 = v70;
      v24 = v64;
      v27 = v65;
    }
  }

  v71 = v22;
  v72 = v23;
  v73 = v21;
  v74 = v20;
  *v75 = v111[0];
  *&v75[3] = *(v111 + 3);
  v76 = v29;
  v77 = v30;
  v78 = v33;
  v79 = v34;
  v80 = v26;
  *v81 = *v110;
  *&v81[3] = *&v110[3];
  v82 = v25;
  v83 = v27;
  v84 = v67;
  v85 = v66;
  v86 = v24;
  v88 = v109;
  v87 = v108;
  v89 = v56;
  v90 = v54;
  *&v91[3] = *(v107 + 3);
  *v91 = v107[0];
  v92 = v61;
  v93 = v32;
  v94 = v28;
  v95 = v31;
  v96 = v62;
  sub_2142FDBBC(&v71);
  return result;
}

unint64_t sub_2141A0300()
{
  v1 = *v0;
  v2 = 0xD00000000000001FLL;
  v3 = 0xD000000000000018;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = v4;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_2141A0390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436EF7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141A03B8(uint64_t a1)
{
  v2 = sub_2142FDC10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A03F4(uint64_t a1)
{
  v2 = sub_2142FDC10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A0430@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v150 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908648, &qword_2146F5108);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDC10();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v96 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v97) = 0;
  sub_2142E1278();
  sub_2146DA1C8();
  v94 = v108;
  v95 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v10 = v8;
  LOBYTE(v97) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v11 = *(&v108 + 1);
  v93 = v108;
  LOBYTE(v97) = 2;
  sub_2146DA1C8();
  v91 = v108;
  v92 = v11;
  v12 = *(&v108 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v97) = 3;
  sub_2142E6128();
  sub_2146DA1C8();
  v90 = v12;
  v13 = v108;
  LODWORD(v12) = BYTE4(v108);
  v142 = 4;
  sub_2146DA1C8();
  v69 = v10;
  v70 = v4;
  v71 = v13;
  v73 = v143;
  v74 = v144;
  sub_2143DAF70(&v108);
  v15 = v108;
  v16 = v109;
  v17 = v110;
  v18 = v111;
  sub_2143DB0D8(&v97);
  v85 = v97;
  v88 = v98;
  v89 = *(&v97 + 1);
  v87 = *(&v98 + 1);
  v86 = v99;
  sub_2143DB274(&v137);
  v80 = v137;
  v81 = v138;
  v83 = v139;
  v84 = *(&v137 + 1);
  v82 = v140;
  sub_2143DB2A8(&v133);
  v76 = v133;
  v78 = v134;
  v79 = v135;
  v75 = v136;
  v141 = v12;
  v77 = v12;
  v108 = v15;
  v109 = v16;
  v110 = v17;
  v111 = v18;
  v66 = *(&v15 + 1);

  v67 = v17;
  v68 = v16;
  sub_21404F7E0(v16, v17);
  sub_214032118(v94, *(&v94 + 1), 2, 0xD000000000000027, 0x800000021478F560, 0xD00000000000001CLL, 0x800000021478A360);

  v72 = v108;
  v19 = v110;
  v65 = v109;
  v63 = v111;

  sub_214032564(v68, v67);
  *&v97 = v93;
  *(&v97 + 1) = v92;
  LOBYTE(v137) = v86;
  *&v108 = 0xD000000000000023;
  *(&v108 + 1) = 0x800000021478F590;
  v109 = 0xD00000000000001CLL;
  v110 = 0x800000021478A360;

  v21 = v87;
  v20 = v88;
  sub_213FDC9D0(v88, v87);
  v22 = v85(&v97, &v137, &v108);
  v64 = v19;
  v68 = 0x800000021478A360;
  v23 = v82;
  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000023;
    v28[1] = 0x800000021478F590;
    v29 = v68;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v29;
    swift_willThrow();

    v30 = v73;
    sub_213FDC6BC(v94, *(&v94 + 1));
    sub_213FDC6BC(v30, v74);
    (*(v96 + 8))(v69, v70);
    v31 = v89;

    sub_213FDC6D0(v20, v21);
    v32 = v86;
LABEL_7:
    v33 = v64;
    v34 = v65;
    v35 = v63;
    v36 = v82;
    __swift_destroy_boxed_opaque_existential_1(v95);
    v108 = v72;
    v109 = v34;
    v110 = v33;
    v111 = v35;
    *v112 = v149[0];
    *&v112[3] = *(v149 + 3);
    v113 = v85;
    v114 = v31;
    v115 = v88;
    v116 = v87;
    v117 = v32;
    *v118 = *v148;
    *&v118[3] = *&v148[3];
    v119 = v80;
    v120 = v84;
    v121 = v81;
    v122 = v83;
    v123 = v36;
    v125 = v147;
    v124 = v146;
    v126 = v71;
    v127 = v77;
    *&v128[3] = *&v145[3];
    *v128 = *v145;
    v129 = v76;
    v130 = v78;
    v131 = v79;
    v132 = v75;
    return sub_2142FDBBC(&v108);
  }

  v24 = v21;
  sub_213FDC6D0(v20, v21);
  v25 = v23;
  v26 = v68;

  sub_213FDC6D0(v20, v24);
  *&v97 = v91;
  *(&v97 + 1) = v90;
  LOBYTE(v137) = v25;
  *&v108 = 0xD000000000000031;
  *(&v108 + 1) = 0x800000021478F5C0;
  v109 = 0xD00000000000001CLL;
  v110 = v26;

  sub_213FDC9D0(v81, v83);
  v27 = v80(&v97, &v137, &v108);
  v37 = v77;
  if ((v27 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD000000000000031;
    v43[1] = 0x800000021478F5C0;
    v44 = v68;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = v44;
    swift_willThrow();

    sub_213FDC6BC(v94, *(&v94 + 1));
    v45 = v81;
    sub_213FDC6BC(v73, v74);
    (*(v96 + 8))(v69, v70);

    sub_213FDC6D0(v45, v83);
    v87 = v92;
    v88 = v93;
    v32 = v86;
    v31 = v89;
    goto LABEL_7;
  }

  v38 = v81;
  v39 = v83;
  sub_213FDC6D0(v81, v83);
  v40 = v68;

  sub_213FDC6D0(v38, v39);
  v137 = v76;
  v41 = v78;
  v42 = v79;
  v138 = v78;
  v139 = v79;
  v140 = v75;

  sub_21404F7E0(v41, v42);
  sub_214032118(v73, v74, 2, 0xD000000000000022, 0x800000021478F600, 0xD00000000000001CLL, v40);
  v67 = 0;

  sub_213FDC6BC(v94, *(&v94 + 1));
  sub_213FDC6BC(v73, v74);
  (*(v96 + 8))(v69, v70);
  v46 = v137;
  v96 = v137;
  v47 = v139;
  v88 = v138;
  *&v94 = v139;
  *(&v94 + 1) = *(&v137 + 1);
  LODWORD(v87) = v140;

  sub_214032564(v78, v79);
  v97 = v72;
  *&v98 = v65;
  *(&v98 + 1) = v64;
  LOBYTE(v99) = v63;
  *(&v99 + 1) = v149[0];
  DWORD1(v99) = *(v149 + 3);
  *(&v99 + 1) = v85;
  *&v100 = v89;
  *(&v100 + 1) = v93;
  *&v101 = v92;
  BYTE8(v101) = v86;
  *(&v101 + 9) = *v148;
  HIDWORD(v101) = *&v148[3];
  v48 = v80;
  *&v102 = v80;
  *(&v102 + 1) = v84;
  *&v103 = v91;
  *(&v103 + 1) = v90;
  v49 = v82;
  LOBYTE(v104) = v82;
  *(&v104 + 1) = v146;
  BYTE3(v104) = v147;
  v50 = v71;
  DWORD1(v104) = v71;
  BYTE8(v104) = v37;
  *(&v104 + 9) = *v145;
  HIDWORD(v104) = *&v145[3];
  v105 = v46;
  v51 = v88;
  *&v106 = v88;
  *(&v106 + 1) = v47;
  v52 = v87;
  v107 = v87;
  v53 = v98;
  v54 = v150;
  *v150 = v72;
  v54[1] = v53;
  v55 = v99;
  v56 = v100;
  v57 = v102;
  v54[4] = v101;
  v54[5] = v57;
  v54[2] = v55;
  v54[3] = v56;
  v58 = v103;
  v59 = v104;
  v60 = v105;
  v61 = v106;
  *(v54 + 160) = v52;
  LOBYTE(v47) = v52;
  v54[8] = v60;
  v54[9] = v61;
  v54[6] = v58;
  v54[7] = v59;
  sub_2142FDC64(&v97, &v108);
  __swift_destroy_boxed_opaque_existential_1(v95);
  v108 = v72;
  v109 = v65;
  v110 = v64;
  v111 = v63;
  *v112 = v149[0];
  *&v112[3] = *(v149 + 3);
  v113 = v85;
  v114 = v89;
  v115 = v93;
  v116 = v92;
  v117 = v86;
  *v118 = *v148;
  *&v118[3] = *&v148[3];
  v119 = v48;
  v120 = v84;
  v121 = v91;
  v122 = v90;
  v123 = v49;
  v125 = v147;
  v124 = v146;
  v126 = v50;
  v127 = v37;
  *&v128[3] = *&v145[3];
  *v128 = *v145;
  *&v129 = v96;
  *(&v129 + 1) = *(&v94 + 1);
  v130 = v51;
  v131 = v94;
  v132 = v47;
  return sub_2142FDBBC(&v108);
}

uint64_t sub_2141A1124(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908658, &qword_2146F5110);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 56);
  v20 = *(v1 + 64);
  v21 = v10;
  v11 = *(v1 + 96);
  v18 = *(v1 + 104);
  v19 = v11;
  v25 = *(v1 + 116);
  v17 = *(v1 + 120);
  v12 = *(v1 + 144);
  v15 = *(v1 + 152);
  v16 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDC10();
  sub_2146DAA28();
  if (v8 >> 60 == 11)
  {
    goto LABEL_12;
  }

  v23 = v9;
  v24 = v8;
  v26 = 0;
  sub_213FDCA18(v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  sub_2142E1CAC();
  sub_2146DA388();
  if (v2)
  {
    goto LABEL_3;
  }

  sub_213FDC6BC(v23, v24);
  if (v20 == 1)
  {
    goto LABEL_12;
  }

  v23 = v21;
  v24 = v20;
  v26 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v18 == 1)
  {
    goto LABEL_12;
  }

  v23 = v19;
  v24 = v18;
  v26 = 2;
  sub_2146DA388();
  LODWORD(v23) = v25;
  BYTE4(v23) = v17;
  v26 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  sub_2146DA388();
  if (v15 >> 60 == 11)
  {
LABEL_12:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v23 = v16;
  v24 = v15;
  v26 = 4;
  sub_213FDCA18(v16, v15);
  sub_2146DA388();
LABEL_3:
  sub_213FDC6BC(v23, v24);
  return (*(v22 + 8))(v7, v4);
}

uint64_t sub_2141A14B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12)
{
  sub_2143DB928(&v82);
  v16 = v82;
  v15 = v83;
  v17 = v84;
  v18 = v85;
  v19 = v86;
  sub_2143DBAC4(&v118);
  v130 = v118;
  v49 = v119;
  v77 = v121;
  v79 = v120;
  v81 = v122;
  sub_2143DBC34(v116);
  v75 = v116[0];
  v69 = v116[1];
  v70 = v116[2];
  v76 = v116[3];
  v59 = v117;
  sub_2143DBC68(v114);
  v50 = v114[1];
  v51 = v114[2];
  v64 = v114[0];
  v66 = v114[3];
  v62 = v115;
  sub_2143DBDD0(v112);
  v55 = v112[0];
  v56 = v112[1];
  v60 = v112[2];
  v61 = v112[3];
  v58 = v113;
  v54 = a1;
  v123 = BYTE4(a1) & 1;
  v52 = BYTE4(a1) & 1;
  v53 = v19;
  v20 = a2;
  v118 = a2;
  v119 = a3;
  LOBYTE(v116[0]) = v19;
  v82 = 0xD000000000000023;
  v83 = 0x800000021478F630;
  v84 = 0xD00000000000001CLL;
  v85 = 0x800000021478A360;

  v21 = v17;
  sub_213FDC9D0(v17, v18);
  v74 = v15;
  v22 = v16(&v118, v116, &v82);
  if (v68)
  {
    sub_213FDC6BC(a8, a10);
    sub_213FDC6BC(a4, a5);
LABEL_6:

    v25 = v55;
    v26 = v74;
    v23 = v64;

    sub_213FDC6D0(v21, v18);
    v27 = v18;
    v36 = v59;
    v38 = v62;
    v28 = v50;
    v29 = v51;
    v30 = v66;
    v31 = v70;
    v33 = v77;
    v32 = v79;
    v34 = v49;
LABEL_7:
    LODWORD(v82) = v54;
    BYTE4(v82) = v52;
    *(&v82 + 5) = v128;
    HIBYTE(v82) = v129;
    v83 = v16;
    v84 = v26;
    v85 = v21;
    v86 = v27;
    v87 = v53;
    *v88 = *v127;
    *&v88[3] = *&v127[3];
    v89 = v130;
    v90 = v34;
    v91 = v32;
    v92 = v33;
    v93 = v81;
    *&v94[3] = *&v126[3];
    *v94 = *v126;
    v95 = v75;
    v96 = v69;
    v97 = v31;
    v98 = v76;
    v99 = v36;
    *&v100[3] = *&v125[3];
    *v100 = *v125;
    v101 = v23;
    v102 = v28;
    v103 = v29;
    v104 = v30;
    v105 = v38;
    *&v106[3] = *&v124[3];
    *v106 = *v124;
    v107 = v25;
    v108 = v56;
    v109 = v60;
    v110 = v61;
    v111 = v58;
    return sub_2142FDCC0(&v82);
  }

  v45 = a3;
  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000023;
    v24[1] = 0x800000021478F630;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a8, a10);
    sub_213FDC6BC(a4, a5);
    goto LABEL_6;
  }

  sub_213FDC6D0(v17, v18);

  sub_213FDC6D0(v17, v18);
  v82 = v130;
  v83 = v49;
  v84 = v79;
  v85 = v77;
  LOBYTE(v86) = v81;

  sub_21404F7E0(v79, v77);
  sub_214032118(a4, a5, 2, 0xD000000000000022, 0x800000021478F660, 0xD00000000000001CLL, 0x800000021478A360);
  v23 = v64;

  v130 = v82;
  v43 = v83;
  v44 = v84;
  v48 = v85;
  v81 = v86;

  sub_214032564(v79, v77);
  v118 = a6;
  v119 = a7;
  v36 = v59;
  LOBYTE(v116[0]) = v59;
  v82 = 0xD000000000000031;
  v83 = 0x800000021478F690;
  v84 = 0xD00000000000001CLL;
  v85 = 0x800000021478A360;

  sub_213FDC9D0(v70, v76);
  v37 = v75(&v118, v116, &v82);
  v38 = v62;
  if ((v37 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000031;
    v39[1] = 0x800000021478F690;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a8, a10);

    sub_213FDC6BC(a4, a5);
    v25 = v55;

    v31 = v70;
    sub_213FDC6D0(v70, v76);
    v27 = v45;
    v34 = v43;
    v32 = v44;
    v33 = v48;
    v21 = v20;
    v26 = v74;
    v28 = v50;
    v29 = v51;
    v30 = v66;
    goto LABEL_7;
  }

  sub_213FDC6D0(v70, v76);

  sub_213FDC6D0(v70, v76);
  v82 = v64;
  v83 = v50;
  v84 = v51;
  v85 = v66;
  LOBYTE(v86) = v62;

  sub_21404F7E0(v51, v66);
  sub_214032118(a8, a10, 2, 0xD000000000000027, 0x800000021478F6D0, 0xD00000000000001CLL, 0x800000021478A360);

  v65 = v82;
  v71 = v83;
  v78 = v84;
  v80 = v85;
  v63 = v86;

  sub_214032564(v51, v66);
  v118 = a11;
  v119 = a12;
  LOBYTE(v116[0]) = v58;
  v82 = 0xD000000000000022;
  v83 = 0x800000021478F700;
  v84 = 0xD00000000000001CLL;
  v85 = 0x800000021478A360;

  sub_213FDC9D0(v60, v61);
  v40 = v55(&v118, v116, &v82);
  v25 = v55;
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000022;
    v42[1] = 0x800000021478F700;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a8, a10);
    sub_213FDC6BC(a4, a5);
    v21 = v20;
    v31 = a6;

    sub_213FDC6D0(v60, v61);
    v27 = v45;
    v34 = v43;
    v32 = v44;
    v33 = v48;
    v76 = a7;
    v28 = v71;
    v29 = v78;
    v30 = v80;
    v26 = v74;
    v23 = v65;
    v38 = v63;
    goto LABEL_7;
  }

  sub_213FDC6D0(v60, v61);
  sub_213FDC6BC(a8, a10);
  sub_213FDC6BC(a4, a5);

  result = sub_213FDC6D0(v60, v61);
  *a9 = v54;
  *(a9 + 4) = v52;
  *(a9 + 5) = v128;
  *(a9 + 7) = v129;
  *(a9 + 8) = v16;
  *(a9 + 16) = v74;
  *(a9 + 24) = v20;
  *(a9 + 32) = v45;
  *(a9 + 40) = v53;
  *(a9 + 41) = *v127;
  *(a9 + 44) = *&v127[3];
  *(a9 + 48) = v130;
  *(a9 + 56) = v43;
  *(a9 + 64) = v44;
  *(a9 + 72) = v48;
  *(a9 + 80) = v81;
  *(a9 + 84) = *&v126[3];
  *(a9 + 81) = *v126;
  *(a9 + 88) = v75;
  *(a9 + 96) = v69;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = v59;
  *(a9 + 124) = *&v125[3];
  *(a9 + 121) = *v125;
  *(a9 + 128) = v65;
  *(a9 + 136) = v71;
  *(a9 + 144) = v78;
  *(a9 + 152) = v80;
  *(a9 + 160) = v63;
  v41 = *v124;
  *(a9 + 164) = *&v124[3];
  *(a9 + 161) = v41;
  *(a9 + 168) = v55;
  *(a9 + 176) = v56;
  *(a9 + 184) = a11;
  *(a9 + 192) = a12;
  *(a9 + 200) = v58;
  return result;
}

unint64_t sub_2141A1F20()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD00000000000001FLL;
  v4 = 0xD000000000000015;
  if (v2 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_2141A1FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436F138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141A1FEC(uint64_t a1)
{
  v2 = sub_2142FDD14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A2028(uint64_t a1)
{
  v2 = sub_2142FDD14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A2064@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908660, &qword_2146F5118);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v78 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v185 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142FDD14();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v185);
  }

  v123 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v124) = 0;
  sub_2142E6128();
  sub_2146DA1C8();
  v122 = v6;
  v12 = v136;
  v13 = v5;
  v14 = BYTE4(v136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v124) = 1;
  v15 = sub_2142E12FC();
  sub_2146DA1C8();
  v121 = v15;
  v118 = v12;
  v120 = v14;
  v119 = v136;
  v16 = v137;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v124) = 2;
  v18 = sub_2142E1278();
  sub_2146DA1C8();
  v115 = v18;
  v116 = v17;
  v117 = v16;
  v19 = v136;
  v20 = v137;
  LOBYTE(v124) = 3;
  sub_2146DA1C8();
  v113 = v19;
  v114 = v20;
  v21 = v136;
  v22 = v137;
  LOBYTE(v124) = 4;
  sub_2146DA1C8();
  v111 = v21;
  v116 = v22;
  v23 = v136;
  v24 = v137;
  v176 = 5;
  sub_2146DA1C8();
  v95 = v23;
  v96 = v24;
  v84 = v177;
  v85 = v13;
  v87 = v178;
  sub_2143DB928(&v136);
  v112 = v136;
  v26 = v137;
  v121 = v138;
  v27 = v139;
  v28 = v140;
  sub_2143DBAC4(&v124);
  v102 = v124;
  v106 = v125;
  v109 = *(&v124 + 1);
  v110 = *(&v125 + 1);
  v108 = v126;
  sub_2143DBC34(&v170);
  v100 = v170;
  v105 = v172;
  v103 = v171;
  v104 = v173;
  v101 = v174;
  sub_2143DBC68(v168);
  v93 = v168[0];
  v94 = v168[2];
  v98 = v168[1];
  v99 = v168[3];
  v97 = v169;
  sub_2143DBDD0(v166);
  v89 = v166[0];
  v90 = v166[2];
  v91 = v166[3];
  v92 = v166[1];
  v88 = v167;
  v175 = v120;
  *&v124 = v119;
  *(&v124 + 1) = v117;
  v86 = v28;
  LOBYTE(v170) = v28;
  v136 = 0xD000000000000023;
  v137 = 0x800000021478F630;
  v138 = 0xD00000000000001CLL;
  v139 = 0x800000021478A360;

  v115 = v27;
  sub_213FDC9D0(v121, v27);
  v107 = v26;
  v29 = v112(&v124, &v170, &v136);
  v83 = 0x800000021478A360;
  v30 = v113;
  if (v29)
  {
    v31 = v121;
    v32 = v115;
    sub_213FDC6D0(v121, v115);
    v33 = v83;

    sub_213FDC6D0(v31, v32);
    v136 = v102;
    v34 = v110;
    v137 = v109;
    v35 = v106;
    v138 = v106;
    v139 = v110;
    LOBYTE(v140) = v108;

    sub_21404F7E0(v35, v34);
    sub_214032118(v30, v114, 2, 0xD000000000000022, 0x800000021478F660, 0xD00000000000001CLL, v33);
    v47 = v87;

    v102 = v136;
    v81 = v137;
    v82 = v138;
    v80 = v139;
    v108 = v140;

    sub_214032564(v106, v110);
    *&v124 = v111;
    *(&v124 + 1) = v116;
    LOBYTE(v170) = v101;
    v136 = 0xD000000000000031;
    v137 = 0x800000021478F690;
    v138 = 0xD00000000000001CLL;
    v139 = v33;

    sub_213FDC9D0(v105, v104);
    v48 = v100(&v124, &v170, &v136);
    if (v48)
    {
      v50 = v104;
      v49 = v105;
      sub_213FDC6D0(v105, v104);
      v51 = v83;

      sub_213FDC6D0(v49, v50);
      v52 = v94;
      v136 = v93;
      v53 = v99;
      v137 = v98;
      v138 = v94;
      v139 = v99;
      LOBYTE(v140) = v97;

      sub_21404F7E0(v52, v53);
      sub_214032118(v95, v96, 2, 0xD000000000000027, 0x800000021478F6D0, 0xD00000000000001CLL, v51);
      v56 = v83;

      v93 = v136;
      v57 = v137;
      v79 = v138;
      v106 = v139;
      v97 = v140;

      sub_214032564(v94, v99);
      v170 = v84;
      v171 = v47;
      LOBYTE(v124) = v88;
      v136 = 0xD000000000000022;
      v137 = 0x800000021478F700;
      v138 = 0xD00000000000001CLL;
      v139 = v56;

      sub_213FDC9D0(v90, v91);
      v58 = v89(&v170, &v124, &v136);
      if (v58)
      {
        v60 = v90;
        v59 = v91;
        sub_213FDC6D0(v90, v91);

        sub_213FDC6BC(v95, v96);
        sub_213FDC6BC(v113, v114);

        (*(v122 + 8))(v9, v85);
        v61 = v92;

        sub_213FDC6D0(v60, v59);
        *(&v124 + 5) = v183;
        BYTE7(v124) = v184;
        *(&v126 + 9) = *v182;
        HIDWORD(v126) = *&v182[3];
        *(&v129 + 1) = *v181;
        DWORD1(v129) = *&v181[3];
        *(&v131 + 9) = *v180;
        HIDWORD(v131) = *&v180[3];
        DWORD1(v134) = *&v179[3];
        *(&v134 + 1) = *v179;
        v62 = v118;
        LODWORD(v124) = v118;
        v63 = v120;
        BYTE4(v124) = v120;
        v64 = v112;
        *(&v124 + 1) = v112;
        *&v125 = v107;
        *(&v125 + 1) = v119;
        *&v126 = v117;
        BYTE8(v126) = v86;
        *&v127 = v102;
        *(&v127 + 1) = v81;
        v65 = v80;
        *&v128 = v82;
        *(&v128 + 1) = v80;
        LOBYTE(v129) = v108;
        *(&v129 + 1) = v100;
        *&v130 = v103;
        *(&v130 + 1) = v111;
        *&v131 = v116;
        BYTE8(v131) = v101;
        *&v132 = v93;
        *(&v132 + 1) = v57;
        v78 = v57;
        *&v133 = v79;
        *(&v133 + 1) = v106;
        LOBYTE(v134) = v97;
        *(&v134 + 1) = v89;
        *&v135[0] = v61;
        *(&v135[0] + 1) = v84;
        *&v135[1] = v87;
        LOBYTE(v61) = v88;
        BYTE8(v135[1]) = v88;
        v66 = v124;
        v67 = v125;
        v68 = v127;
        v69 = v123;
        v123[2] = v126;
        v69[3] = v68;
        *v69 = v66;
        v69[1] = v67;
        v70 = v128;
        v71 = v129;
        v72 = v131;
        v69[6] = v130;
        v69[7] = v72;
        v69[4] = v70;
        v69[5] = v71;
        v73 = v132;
        v74 = v133;
        *(v69 + 185) = *(v135 + 9);
        v75 = v135[0];
        v69[10] = v134;
        v69[11] = v75;
        v69[8] = v73;
        v69[9] = v74;
        sub_2142FDD68(&v124, &v136);
        __swift_destroy_boxed_opaque_existential_1(v185);
        LODWORD(v136) = v62;
        BYTE4(v136) = v63;
        *(&v136 + 5) = v183;
        HIBYTE(v136) = v184;
        v137 = v64;
        v138 = v107;
        v139 = v119;
        v140 = v117;
        v141 = v86;
        *v142 = *v182;
        *&v142[3] = *&v182[3];
        v143 = v102;
        v144 = v81;
        v145 = v82;
        v146 = v65;
        v147 = v108;
        *v148 = *v181;
        *&v148[3] = *&v181[3];
        v149 = v100;
        v150 = v103;
        v151 = v111;
        v152 = v116;
        v153 = v101;
        *v154 = *v180;
        *&v154[3] = *&v180[3];
        v155 = v93;
        v156 = v78;
        v157 = v79;
        v158 = v106;
        v159 = v97;
        *&v160[3] = *&v179[3];
        *v160 = *v179;
        v161 = v89;
        v162 = v92;
        v163 = v84;
        v164 = v87;
        v165 = v61;
        return sub_2142FDCC0(&v136);
      }

      sub_214031C4C();
      swift_allocError();
      *v76 = 0xD000000000000022;
      v76[1] = 0x800000021478F700;
      v77 = v83;
      v76[2] = 0xD00000000000001CLL;
      v76[3] = v77;
      swift_willThrow();
      sub_213FDC6BC(v95, v96);
      sub_213FDC6BC(v113, v114);

      (*(v122 + 8))(v9, v85);

      sub_213FDC6D0(v90, v91);
      v121 = v119;
      v115 = v117;
      v46 = v82;
      v43 = v79;
      v109 = v81;
      v110 = v80;
      v104 = v116;
      v105 = v111;
      v39 = v107;
      v98 = v57;
      v99 = v106;
      v38 = v120;
      v42 = v118;
      v44 = v93;
      v45 = v102;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v54 = 0xD000000000000031;
      v54[1] = 0x800000021478F690;
      v55 = v83;
      v54[2] = 0xD00000000000001CLL;
      v54[3] = v55;
      swift_willThrow();

      sub_213FDC6BC(v95, v96);
      sub_213FDC6BC(v113, v114);
      (*(v122 + 8))(v9, v85);

      sub_213FDC6D0(v105, v104);
      v121 = v119;
      v115 = v117;
      v46 = v82;
      v109 = v81;
      v110 = v80;
      v38 = v120;
      v42 = v118;
      v39 = v107;
      v44 = v93;
      v43 = v94;
      v45 = v102;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000023;
    v36[1] = 0x800000021478F630;
    v37 = v83;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v37;
    swift_willThrow();

    v38 = v120;
    v39 = v107;
    v40 = v121;
    v41 = v115;

    sub_213FDC6BC(v95, v96);
    sub_213FDC6BC(v30, v114);
    (*(v122 + 8))(v9, v85);

    sub_213FDC6D0(v40, v41);
    v42 = v118;
    v44 = v93;
    v43 = v94;
    v45 = v102;
    v46 = v106;
  }

  __swift_destroy_boxed_opaque_existential_1(v185);
  LODWORD(v136) = v42;
  BYTE4(v136) = v38;
  *(&v136 + 5) = v183;
  HIBYTE(v136) = v184;
  v137 = v112;
  v138 = v39;
  v139 = v121;
  v140 = v115;
  v141 = v86;
  *v142 = *v182;
  *&v142[3] = *&v182[3];
  v143 = v45;
  v144 = v109;
  v145 = v46;
  v146 = v110;
  v147 = v108;
  *&v148[3] = *&v181[3];
  *v148 = *v181;
  v149 = v100;
  v150 = v103;
  v151 = v105;
  v152 = v104;
  v153 = v101;
  *&v154[3] = *&v180[3];
  *v154 = *v180;
  v155 = v44;
  v156 = v98;
  v157 = v43;
  v158 = v99;
  v159 = v97;
  *&v160[3] = *&v179[3];
  *v160 = *v179;
  v161 = v89;
  v162 = v92;
  v163 = v90;
  v164 = v91;
  v165 = v88;
  return sub_2142FDCC0(&v136);
}

uint64_t sub_2141A30C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908670, &qword_2146F5120);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = *v1;
  v9 = *(v1 + 4);
  v10 = *(v1 + 4);
  v31 = *(v1 + 3);
  v32 = v10;
  v11 = *(v1 + 8);
  v29 = *(v1 + 9);
  v30 = v11;
  v12 = *(v1 + 13);
  v27 = *(v1 + 14);
  v28 = v12;
  v13 = *(v1 + 18);
  v25 = *(v1 + 19);
  v26 = v13;
  v14 = *(v1 + 24);
  v23 = *(v1 + 23);
  v24 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDD14();
  sub_2146DAA28();
  LODWORD(v34) = v8;
  BYTE4(v34) = v9;
  v16 = v7;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  sub_2142E62D8();
  v17 = v33;
  sub_2146DA388();
  if (v17)
  {
    return (*(v4 + 8))(v16, v3);
  }

  v18 = v30;
  v19 = v29;
  if (v32 != 1)
  {
    v34 = v31;
    v35 = v32;
    v36 = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v33 = v20;
    if (v19 >> 60 != 11)
    {
      v34 = v18;
      v35 = v19;
      v36 = 2;
      sub_213FDCA18(v18, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v34, v35);
      if (v27 != 1)
      {
        v34 = v28;
        v35 = v27;
        v36 = 3;
        sub_2146DA388();
        if (v25 >> 60 != 11)
        {
          v34 = v26;
          v35 = v25;
          v36 = 4;
          sub_213FDCA18(v26, v25);
          sub_2146DA388();
          sub_213FDC6BC(v34, v35);
          if (v24 != 1)
          {
            v34 = v23;
            v35 = v24;
            v36 = 5;
            sub_2146DA388();
            return (*(v4 + 8))(v16, v3);
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t ReadReceipt.init(with:metadata:participantDestinationIdentifiers:groupID:groupName:originalMessageTimestamp:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v59 = *a1;
  sub_2143287C0(a2, a9, type metadata accessor for Metadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0CB4();
  sub_2140433DC(inited, &v56);
  v13 = v57;
  LOBYTE(inited) = v58;
  sub_21469E590(&v52);
  v14 = v53;
  v15 = v54;
  v16 = v55;
  Receipt = type metadata accessor for ReadReceipt();
  v18 = a9 + Receipt[5];
  *v18 = v56;
  *(v18 + 16) = v13;
  *(v18 + 24) = inited;
  v19 = a9 + Receipt[6];
  *v19 = v52;
  *(v19 + 16) = v14;
  *(v19 + 24) = v15;
  *(v19 + 32) = v16;
  v20 = (a9 + Receipt[7]);
  *v20 = a6;
  v20[1] = a7;
  v21 = a9 + Receipt[8];
  *v21 = a8;
  *(v21 + 8) = a10 & 1;
  v22 = *v19;
  v23 = *(v19 + 8);
  v24 = *(v19 + 16);
  v25 = *(v19 + 24);
  v26 = *(v19 + 32);
  v43 = a4;
  *&v56 = a4;
  *(&v56 + 1) = a5;
  v27 = v22;
  v48 = v26;
  v60 = v26;
  *&v52 = 0xD000000000000013;
  *(&v52 + 1) = 0x800000021478F730;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  sub_213FDC9D0(v24, v25);
  v28 = v27(&v56, &v60, &v52);
  if (v46)
  {
  }

  else
  {
    if (v28)
    {
      sub_213FDC6D0(v24, v25);

      v29 = *(v19 + 8);
      v30 = *(v19 + 16);
      v31 = *(v19 + 24);

      sub_213FDC6D0(v30, v31);
      *v19 = v27;
      *(v19 + 8) = v23;
      *(v19 + 16) = v43;
      *(v19 + 24) = a5;
      *(v19 + 32) = v48;
      v32 = *(v18 + 8);
      v33 = *(v18 + 16);
      v34 = *(v18 + 24);
      *&v52 = *v18;
      *(&v52 + 1) = v32;
      v53 = v33;
      LOBYTE(v54) = v34;

      sub_2140325F8(a3, v59, 0xD00000000000002DLL, 0x800000021478F750, 0xD00000000000001CLL, 0x800000021478A360);

      sub_21432887C(a2, type metadata accessor for Metadata);
      v35 = v53;
      LOBYTE(v31) = v54;
      v36 = *(v18 + 8);
      v37 = *(v18 + 16);

      *v18 = v52;
      *(v18 + 16) = v35;
      *(v18 + 24) = v31;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000013;
    v39[1] = 0x800000021478F730;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(a2, type metadata accessor for Metadata);
  v40 = *(v19 + 8);
  v41 = *(v19 + 16);
  v42 = *(v19 + 24);

  sub_213FDC6D0(v41, v42);
  *v19 = v27;
  *(v19 + 8) = v23;
  *(v19 + 16) = v24;
  *(v19 + 24) = v25;
  *(v19 + 32) = v48;
  return sub_21432887C(a9, type metadata accessor for ReadReceipt);
}

uint64_t sub_2141A385C()
{
  v1 = *v0;
  v2 = 0x617461646174656DLL;
  v3 = 0x444970756F7267;
  v4 = 0x6D614E70756F7267;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v1 != 1)
  {
    v5 = 0xD000000000000032;
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

uint64_t sub_2141A3920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436F338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141A3948(uint64_t a1)
{
  v2 = sub_2142FDDC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A3984(uint64_t a1)
{
  v2 = sub_2142FDDC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReadReceipt.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v81 = type metadata accessor for Metadata();
  v3 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908678, &qword_2146F5128);
  v82 = *(v6 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v68 - v8;
  Receipt = type metadata accessor for ReadReceipt();
  v11 = *(*(Receipt - 8) + 64);
  MEMORY[0x28223BE20](Receipt);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDDC4();
  v15 = v83;
  sub_2146DAA08();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v78 = Receipt;
  v79 = v13;
  v83 = v5;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_2146DA9F8();
  if (qword_27C903238 != -1)
  {
    swift_once();
  }

  v18 = sub_2146DA008();
  v19 = __swift_project_value_buffer(v18, qword_27CA19EC8);
  v20 = v9;
  if (*(v17 + 16) && (v21 = sub_21408C508(v19), (v22 & 1) != 0))
  {
    sub_2140537E4(*(v17 + 56) + 32 * v21, &v84);

    if (swift_dynamicCast())
    {
      v23 = v87;
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {

    v23 = 2;
  }

  v24 = v83;
  LOBYTE(v84) = 0;
  sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
  sub_2146DA1C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v87) = 1;
  sub_2142E15CC();
  sub_2146DA1C8();
  v90 = v23;
  v25 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v87) = 3;
  v81 = sub_2142E12FC();
  sub_2146DA1C8();
  v77 = v25;
  v27 = *(&v84 + 1);
  v76 = v84;
  LOBYTE(v87) = 4;
  sub_2146DA1C8();
  v81 = v27;
  v28 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
  LOBYTE(v87) = 5;
  sub_2142E18D0();
  sub_2146DA1C8();
  v75 = v84;
  LODWORD(v74) = BYTE8(v84);
  v29 = v24;
  v30 = v79;
  sub_2143287C0(v29, v79, type metadata accessor for Metadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_2142E0CB4();
  sub_2140433DC(inited, &v87);
  v32 = v88;
  v33 = v89;
  sub_21469E590(&v84);
  v34 = v86;
  v35 = v78;
  v36 = v30 + v78[5];
  *v36 = v87;
  *(v36 + 16) = v32;
  *(v36 + 24) = v33;
  v37 = v30 + v35[6];
  v38 = v85;
  *v37 = v84;
  *(v37 + 16) = v38;
  *(v37 + 32) = v34;
  *(v30 + v35[7]) = v28;
  v39 = v30 + v35[8];
  *v39 = v75;
  *(v39 + 8) = v74;
  v41 = *v37;
  v40 = *(v37 + 8);
  v42 = *(v37 + 16);
  v43 = *(v37 + 24);
  v44 = *(v37 + 32);
  *&v87 = v76;
  *(&v87 + 1) = v81;
  LODWORD(v75) = v44;
  v91 = v44;
  v69 = 0xD000000000000013;
  *&v84 = 0xD000000000000013;
  *(&v84 + 1) = 0x800000021478F730;
  v71 = 0x800000021478F730;
  *&v85 = 0xD00000000000001CLL;
  *(&v85 + 1) = 0x800000021478A360;
  v70 = 0x800000021478A360;

  v74 = v42;
  v73 = v43;
  sub_213FDC9D0(v42, v43);
  v72 = v40;
  v78 = v41;
  v45 = (v41)(&v87, &v91, &v84);
  v46 = v71;
  v47 = v36;
  v48 = v70;
  if (v45)
  {
    sub_213FDC6D0(v74, v73);

    v49 = *(v37 + 8);
    v50 = *(v37 + 16);
    v51 = *(v37 + 24);

    sub_213FDC6D0(v50, v51);
    v52 = v72;
    *v37 = v78;
    *(v37 + 8) = v52;
    v53 = v81;
    *(v37 + 16) = v76;
    *(v37 + 24) = v53;
    *(v37 + 32) = v75;
    v54 = *(v47 + 8);
    v55 = *(v47 + 16);
    v56 = *(v47 + 24);
    *&v84 = *v47;
    *(&v84 + 1) = v54;
    *&v85 = v55;
    BYTE8(v85) = v56;

    sub_2140325F8(v77, v90, 0xD00000000000002DLL, 0x800000021478F750, 0xD00000000000001CLL, v48);

    sub_21432887C(v83, type metadata accessor for Metadata);
    (*(v82 + 8))(v20, v6);
    v64 = v85;
    v65 = BYTE8(v85);
    v66 = *(v47 + 8);
    v67 = *(v47 + 16);

    *v47 = v84;
    *(v47 + 16) = v64;
    *(v47 + 24) = v65;
    sub_214328704(v79, v80, type metadata accessor for ReadReceipt);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v57 = v69;
  v57[1] = v46;
  v57[2] = 0xD00000000000001CLL;
  v57[3] = v48;
  swift_willThrow();

  sub_21432887C(v83, type metadata accessor for Metadata);
  (*(v82 + 8))(v20, v6);
  v58 = *(v37 + 8);
  v59 = *(v37 + 16);
  v60 = *(v37 + 24);

  sub_213FDC6D0(v59, v60);
  v61 = v72;
  *v37 = v78;
  *(v37 + 8) = v61;
  v62 = v73;
  *(v37 + 16) = v74;
  *(v37 + 24) = v62;
  *(v37 + 32) = v75;
  v63 = v79;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21432887C(v63, type metadata accessor for ReadReceipt);
}

uint64_t ReadReceipt.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908680, &qword_2146F5130);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDDC4();
  sub_2146DAA28();
  LOBYTE(v18) = 0;
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  Receipt = type metadata accessor for ReadReceipt();
  if (*(v3 + *(Receipt + 20) + 16))
  {
    v12 = Receipt;
    *&v18 = *(v3 + *(Receipt + 20) + 16);
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v13 = v3 + v12[6];
    v14 = *(v13 + 24);
    if (v14 != 1)
    {
      *&v18 = *(v13 + 16);
      *(&v18 + 1) = v14;
      v19 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v18 = *(v3 + v12[7]);
      v19 = 4;
      sub_2146DA388();
      v15 = (v3 + v12[8]);
      v16 = *v15;
      LOBYTE(v15) = *(v15 + 8);
      *&v18 = v16;
      BYTE8(v18) = v15;
      v19 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9056B8, &qword_2146F3D20);
      sub_2142E2204();
      sub_2146DA388();
      return (*(v6 + 8))(v9, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141A473C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_2141A47C4(uint64_t a1)
{
  v2 = sub_2142FDE18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A4800(uint64_t a1)
{
  v2 = sub_2142FDE18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A483C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908688, &qword_2146F5138);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDE18();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v17;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    v14 = v18;
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    sub_214328704(v14, v13, type metadata accessor for Metadata);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141A4A48(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908698, &qword_2146F5140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDE18();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2141A4BD8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908698, &qword_2146F5140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDE18();
  sub_2146DAA28();
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2141A4D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, __int128 *a12)
{
  *&v70 = a1;
  *(&v70 + 1) = a2;
  v78 = a11;
  v16 = *(a5 + 3);
  v59 = *(a5 + 2);
  v17 = *(a5 + 32);
  v61 = *(a6 + 3);
  v62 = *(a6 + 2);
  v60 = *(a6 + 32);
  v65 = *(a12 + 16);
  v18 = type metadata accessor for RelayGroupMutationMessage();
  v19 = v18[8];
  v20 = sub_2146D8B88();
  v67 = *(v20 - 8);
  v68 = v20;
  v57 = a12[1];
  v58 = *a12;
  v21 = *a5;
  v55 = *a5;
  v56 = *a6;
  v69 = a7;
  (*(v67 + 16))(a9 + v19, a7);
  sub_21461A82C(&v74);
  v22 = v75;
  v23 = v76;
  LOBYTE(v19) = v77;
  sub_21461AA54(v72);
  v24 = v73;
  *a9 = v74;
  *(a9 + 16) = v22;
  *(a9 + 24) = v23;
  *(a9 + 32) = v19;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = v55;
  *(a9 + 72) = v59;
  *(a9 + 80) = v16;
  *(a9 + 88) = v17;
  *(a9 + 96) = v56;
  *(a9 + 112) = v62;
  *(a9 + 120) = v61;
  *(a9 + 128) = v60;
  v25 = a9 + v18[9];
  v26 = v72[1];
  *v25 = v72[0];
  *(v25 + 16) = v26;
  *(v25 + 32) = v24;
  *(a9 + v18[10]) = v78;
  v27 = a9 + v18[11];
  *v27 = v58;
  *(v27 + 16) = v57;
  *(v27 + 32) = v65;
  v29 = *a9;
  v28 = *(a9 + 8);
  v31 = *(a9 + 16);
  v30 = *(a9 + 24);
  LODWORD(v27) = *(a9 + 32);
  v72[0] = v70;
  v78 = v27;
  v79 = v27;
  *&v74 = 0xD000000000000020;
  *(&v74 + 1) = 0x800000021478F780;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  sub_213FDC9D0(v31, v30);
  v32 = v29(v72, &v79, &v74);
  if (v66)
  {

LABEL_6:
    (*(v67 + 8))(v69, v68);
    v43 = *(a9 + 8);
    v44 = *(a9 + 16);
    v45 = *(a9 + 24);

    sub_213FDC6D0(v44, v45);
    *a9 = v29;
    *(a9 + 8) = v28;
    *(a9 + 16) = v31;
    *(a9 + 24) = v30;
    *(a9 + 32) = v78;
    return sub_21432887C(a9, type metadata accessor for RelayGroupMutationMessage);
  }

  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000020;
    v42[1] = 0x800000021478F780;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v31, v30);

  v33 = *(a9 + 8);
  v34 = *(a9 + 16);
  v35 = *(a9 + 24);

  sub_213FDC6D0(v34, v35);
  *a9 = v29;
  *(a9 + 8) = v28;
  *(a9 + 16) = v70;
  *(a9 + 32) = v78;
  v37 = *v25;
  v36 = *(v25 + 8);
  v38 = *(v25 + 16);
  v39 = *(v25 + 24);
  v40 = *(v25 + 32);
  *&v72[0] = a8;
  *(&v72[0] + 1) = a10;
  v71 = v40;
  v79 = v40;
  *&v74 = 0xD00000000000002DLL;
  *(&v74 + 1) = 0x800000021478F7B0;
  v75 = 0xD00000000000001CLL;
  v76 = 0x800000021478A360;

  sub_213FDC9D0(v38, v39);
  v41 = v37(v72, &v79, &v74);
  if ((v41 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD00000000000002DLL;
    v50[1] = 0x800000021478F7B0;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v67 + 8))(v69, v68);
    v51 = *(v25 + 8);
    v52 = *(v25 + 16);
    v53 = *(v25 + 24);

    sub_213FDC6D0(v52, v53);
    *v25 = v37;
    *(v25 + 8) = v36;
    *(v25 + 16) = v38;
    *(v25 + 24) = v39;
    *(v25 + 32) = v71;
    return sub_21432887C(a9, type metadata accessor for RelayGroupMutationMessage);
  }

  sub_213FDC6D0(v38, v39);

  (*(v67 + 8))(v69, v68);
  v47 = *(v25 + 8);
  v48 = *(v25 + 16);
  v49 = *(v25 + 24);

  result = sub_213FDC6D0(v48, v49);
  *v25 = v37;
  *(v25 + 8) = v36;
  *(v25 + 16) = a8;
  *(v25 + 24) = a10;
  *(v25 + 32) = v71;
  return result;
}

uint64_t sub_2141A5244()
{
  v1 = *v0;
  v2 = 0x7265646E6573;
  v3 = 0x654D6D6F7266;
  if (v1 != 6)
  {
    v3 = 0x6E6F69746174756DLL;
  }

  v4 = 1684632935;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x444970756F7267;
  if (v1 != 2)
  {
    v5 = 0x6C616E696769726FLL;
  }

  if (*v0)
  {
    v2 = 0x65636976726573;
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

uint64_t sub_2141A5340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436F544(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141A5368(uint64_t a1)
{
  v2 = sub_2142FDE6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A53A4(uint64_t a1)
{
  v2 = sub_2142FDE6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A53E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_2146D8B88();
  v101 = *(v3 - 8);
  v4 = *(v101 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v79[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9086A0, &qword_2146F5148);
  v102 = *(v7 - 8);
  v8 = *(v102 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v79[-v9];
  v11 = type metadata accessor for RelayGroupMutationMessage();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v79[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1[3];
  v16 = a1[4];
  v104 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142FDE6C();
  v17 = v103;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v104);
  }

  v97 = v11;
  v98 = v3;
  v103 = v14;
  v99 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v105[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v18 = v107;
  LOBYTE(v107) = 1;
  v19 = sub_2146DA168();
  v21 = v20;
  v95 = v19;
  v96 = *(&v18 + 1);
  LOBYTE(v105[0]) = 2;
  sub_2142FDEC0();
  sub_2146DA1C8();
  v93 = v21;
  v22 = *(&v107 + 1);
  v92 = v107;
  v94 = *(&v108 + 1);
  v91 = v108;
  LODWORD(v90) = v109;
  LOBYTE(v105[0]) = 3;
  sub_2146DA1C8();
  v88 = v22;
  v87 = __PAIR128__(*(&v107 + 1), v18);
  v86 = v107;
  v89 = *(&v108 + 1);
  v85 = v108;
  v110 = v109;
  LOBYTE(v107) = 4;
  sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
  sub_2146DA1C8();
  LOBYTE(v105[0]) = 5;
  sub_2146DA1C8();
  v25 = *(&v107 + 1);
  v24 = v107;
  LOBYTE(v107) = 6;
  v26 = sub_2146DA178();
  v27 = v101;
  v28 = v98;
  v84 = __PAIR128__(v25, v24);
  LOBYTE(v25) = v26;
  LOBYTE(v105[0]) = 7;
  sub_2142FDF14();
  sub_2146DA1C8();
  v83 = v109;
  v80 = v25 & 1;
  v82 = v108;
  v81 = v107;
  v29 = v97;
  v30 = v103;
  (*(v27 + 16))(v103 + v97[8], v99, v28);
  sub_21461A82C(&v107);
  v31 = v108;
  LOBYTE(v24) = v109;
  sub_21461AA54(v105);
  v32 = v106;
  *v30 = v107;
  *(v30 + 1) = v31;
  *(v30 + 32) = v24;
  v33 = v93;
  v30[5] = v95;
  v30[6] = v33;
  v34 = v88;
  v30[7] = v92;
  v30[8] = v34;
  v35 = v94;
  v30[9] = v91;
  v30[10] = v35;
  *(v30 + 88) = v90;
  v36 = *(&v87 + 1);
  v30[12] = v86;
  v30[13] = v36;
  v37 = v89;
  v30[14] = v85;
  v30[15] = v37;
  *(v30 + 128) = v110;
  v38 = v30 + v29[9];
  v39 = v105[1];
  *v38 = v105[0];
  *(v38 + 1) = v39;
  v38[32] = v32;
  *(v30 + v29[10]) = v80;
  v40 = v30 + v29[11];
  v41 = v82;
  *v40 = v81;
  *(v40 + 1) = v41;
  *(v40 + 16) = v83;
  v43 = *v30;
  v42 = v30[1];
  v44 = v30[2];
  v45 = v30[3];
  LODWORD(v37) = *(v30 + 32);
  *&v105[0] = v87;
  *(&v105[0] + 1) = v96;
  LODWORD(v95) = v37;
  v111 = v37;
  *&v107 = 0xD000000000000020;
  *(&v107 + 1) = 0x800000021478F780;
  v92 = 0x800000021478F780;
  *&v108 = 0xD00000000000001CLL;
  *(&v108 + 1) = 0x800000021478A360;
  v91 = 0x800000021478A360;

  v94 = v44;
  v93 = v45;
  sub_213FDC9D0(v44, v45);
  v46 = v42;
  v97 = v43;
  v47 = (v43)(v105, &v111, &v107);
  v48 = v92;
  v49 = v91;
  v90 = v7;
  if (v47)
  {
    v50 = v38;
    sub_213FDC6D0(v94, v93);

    v51 = v103;
    v52 = v103[1];
    v53 = v103[2];
    v54 = v103[3];

    sub_213FDC6D0(v53, v54);
    *v51 = v97;
    v51[1] = v46;
    v55 = v96;
    v51[2] = v87;
    v51[3] = v55;
    *(v51 + 32) = v95;
    v57 = *v50;
    v56 = *(v50 + 1);
    v59 = *(v50 + 2);
    v58 = *(v50 + 3);
    v60 = v50[32];
    v105[0] = v84;
    LODWORD(v97) = v60;
    v111 = v60;
    *&v107 = 0xD00000000000002DLL;
    *(&v107 + 1) = 0x800000021478F7B0;
    *&v108 = 0xD00000000000001CLL;
    *(&v108 + 1) = v49;

    v96 = v58;
    sub_213FDC9D0(v59, v58);
    v61 = v57;
    v62 = v57(v105, &v111, &v107);
    if (v62)
    {
      sub_213FDC6D0(v59, v96);

      (*(v101 + 8))(v99, v98);
      (*(v102 + 8))(v10, v90);
      v70 = *(v50 + 1);
      v71 = *(v50 + 2);
      v72 = *(v50 + 3);

      sub_213FDC6D0(v71, v72);
      *v50 = v61;
      *(v50 + 1) = v56;
      v73 = *(&v84 + 1);
      *(v50 + 2) = v84;
      *(v50 + 3) = v73;
      v50[32] = v97;
      sub_214328704(v103, v100, type metadata accessor for RelayGroupMutationMessage);
      return __swift_destroy_boxed_opaque_existential_1(v104);
    }

    sub_214031C4C();
    swift_allocError();
    *v74 = 0xD00000000000002DLL;
    v74[1] = 0x800000021478F7B0;
    v74[2] = 0xD00000000000001CLL;
    v74[3] = v49;
    swift_willThrow();

    (*(v101 + 8))(v99, v98);
    (*(v102 + 8))(v10, v90);
    v75 = *(v50 + 1);
    v76 = *(v50 + 2);
    v77 = *(v50 + 3);

    sub_213FDC6D0(v76, v77);
    *v50 = v61;
    *(v50 + 1) = v56;
    v78 = v96;
    *(v50 + 2) = v59;
    *(v50 + 3) = v78;
    v50[32] = v97;
    v65 = v103;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v63 = 0xD000000000000020;
    v63[1] = v48;
    v63[2] = 0xD00000000000001CLL;
    v63[3] = v49;
    swift_willThrow();

    v64 = v90;
    v65 = v103;
    (*(v101 + 8))(v99, v98);
    (*(v102 + 8))(v10, v64);
    v66 = v65[1];
    v67 = v65[2];
    v68 = v65[3];

    sub_213FDC6D0(v67, v68);
    *v65 = v97;
    v65[1] = v46;
    v69 = v93;
    v65[2] = v94;
    v65[3] = v69;
    *(v65 + 32) = v95;
  }

  __swift_destroy_boxed_opaque_existential_1(v104);
  return sub_21432887C(v65, type metadata accessor for RelayGroupMutationMessage);
}

uint64_t sub_2141A6030(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9086C0, &qword_2146F5150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FDE6C();
  sub_2146DAA28();
  v11 = *(v3 + 24);
  if (v11 != 1)
  {
    v35 = *(v3 + 16);
    v36 = v11;
    v41 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v9, v5);
    }

    v12 = *(v3 + 40);
    v13 = *(v3 + 48);
    LOBYTE(v35) = 1;
    sub_2146DA328();
    v14 = *(v3 + 64);
    v15 = *(v3 + 72);
    v16 = *(v3 + 80);
    v17 = *(v3 + 88);
    v35 = *(v3 + 56);
    v36 = v14;
    v37 = v15;
    v38 = v16;
    v39 = v17;
    v41 = 2;
    sub_2142FDF68();

    sub_2146DA388();

    v18 = *(v3 + 104);
    v20 = *(v3 + 112);
    v19 = *(v3 + 120);
    v21 = *(v3 + 128);
    v35 = *(v3 + 96);
    v36 = v18;
    v37 = v20;
    v38 = v19;
    v39 = v21;
    v41 = 3;

    sub_2146DA388();

    v34 = type metadata accessor for RelayGroupMutationMessage();
    v23 = *(v34 + 32);
    LOBYTE(v35) = 4;
    sub_2146D8B88();
    sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
    sub_2146DA388();
    v24 = v34;
    v25 = v3 + *(v34 + 36);
    v26 = *(v25 + 24);
    if (v26 != 1)
    {
      v35 = *(v25 + 16);
      v36 = v26;
      v41 = 5;
      sub_2146DA388();
      v27 = *(v3 + *(v24 + 40));
      LOBYTE(v35) = 6;
      sub_2146DA338();
      v28 = v3 + *(v24 + 44);
      v29 = *(v28 + 8);
      v30 = *(v28 + 16);
      v31 = *(v28 + 24);
      v32 = *(v28 + 33);
      v33 = *(v28 + 32);
      v35 = *v28;
      v36 = v29;
      v37 = v30;
      v38 = v31;
      v39 = v33;
      v40 = v32;
      v41 = 7;
      sub_2142FDFBC(v35, v29, v30, v31, v33, v32);
      sub_2142FDFFC();
      sub_2146DA388();
      sub_2142FE050(v35, v36, v37, v38, v39, v40);
      return (*(v6 + 8))(v9, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_2141A64C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_2141A64F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E64657461647075 && a2 == 0xEB00000000656D61)
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

uint64_t sub_2141A6580(uint64_t a1)
{
  v2 = sub_2142FE090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A65BC(uint64_t a1)
{
  v2 = sub_2142FE090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A65F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9086D8, &qword_2146F5158);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE090();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9086E8, &qword_2146F5160);
    sub_2142FE0E4();
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

uint64_t sub_2141A6784(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908700, &qword_2146F5168);
  v21 = *(v15 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v15);
  v5 = &v14 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = a1[3];
  v14 = a1[4];
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21431C5DC(v6);
  sub_2142FE090();
  sub_2146DAA28();
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9086E8, &qword_2146F5160);
  sub_2142FE1BC();
  v12 = v15;
  sub_2146DA388();
  sub_21431E10C(v16);
  return (*(v21 + 8))(v5, v12);
}

uint64_t sub_2141A6958@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21461AF7C(&v32);
  v9 = v32;
  v8 = v33;
  v10 = v34;
  v11 = v35;
  *v43 = *v37;
  *&v43[3] = *&v37[3];
  v26 = v38;
  v22 = v40;
  v28 = v41;
  v29 = v39;
  v23 = v36;
  v24 = v42;
  v30 = a1;
  v31 = a2;
  v44 = v36;
  v32 = 0xD000000000000026;
  v33 = 0x800000021478F7E0;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v25 = v9;
  v12 = v9(&v30, &v44, &v32);
  if (v5)
  {

LABEL_6:
    v13 = v24;
    v14 = v26;
LABEL_7:

    v32 = v25;
    v33 = v8;
    v34 = v10;
    v35 = v11;
    v36 = v23;
    *v37 = *v43;
    *&v37[3] = *&v43[3];
    v38 = v14;
    v39 = v29;
    v40 = v22;
    v41 = v28;
    v42 = v13;
    return sub_2142FE294(&v32);
  }

  v19 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000026;
    v16[1] = 0x800000021478F7E0;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v30 = a3;
  v31 = a4;
  v13 = v24;
  v44 = v24;
  v32 = 0xD000000000000024;
  v33 = 0x800000021478F810;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v14 = v26;
  v15 = v26(&v30, &v44, &v32);
  if ((v15 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000024;
    v18[1] = 0x800000021478F810;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    v10 = a1;
    v11 = v19;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a5 = v25;
  *(a5 + 8) = v8;
  *(a5 + 16) = a1;
  *(a5 + 24) = v19;
  *(a5 + 32) = v23;
  *(a5 + 33) = *v43;
  *(a5 + 36) = *&v43[3];
  *(a5 + 40) = v26;
  *(a5 + 48) = v29;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v24;
  return result;
}

uint64_t sub_2141A6CD8()
{
  if (*v0)
  {
    result = 0x44496D657469;
  }

  else
  {
    result = 0x4449656C646E6168;
  }

  *v0;
  return result;
}

uint64_t sub_2141A6D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E6168 && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000)
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

uint64_t sub_2141A6DE8(uint64_t a1)
{
  v2 = sub_2142FE2E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A6E24(uint64_t a1)
{
  v2 = sub_2142FE2E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A6E60@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908718, &qword_2146F5170);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE2E8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v55) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v49 = a2;
  v14 = v11;
  v66 = 1;
  v37 = sub_2146DA168();
  v44 = v16;
  v68 = v14;
  sub_21461AF7C(&v55);
  v18 = v55;
  v17 = v56;
  v19 = v58;
  v38 = v57;
  v67[0] = *v60;
  *(v67 + 3) = *&v60[3];
  v45 = v61;
  v48 = v62;
  v39 = v63;
  v47 = v64;
  v46 = v65;
  *&v50 = v68;
  v41 = v13;
  *(&v50 + 1) = v13;
  v42 = v59;
  LOBYTE(v54[0]) = v59;
  v55 = 0xD000000000000026;
  v56 = 0x800000021478F7E0;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;
  v40 = v19;

  v43 = v18;
  v20 = v18(&v50, v54, &v55);
  v21 = v40;
  v36 = v17;
  if (v20)
  {

    v54[0] = v37;
    v54[1] = v44;
    LOBYTE(v50) = v46;
    v55 = 0xD000000000000024;
    v56 = 0x800000021478F810;
    v57 = 0xD00000000000001CLL;
    v58 = 0x800000021478A360;

    v22 = v45(v54, &v50, &v55);
    v21 = v41;
    if (v22)
    {

      (*(v6 + 8))(v9, v5);

      v25 = v48;

      v26 = v43;
      *&v50 = v43;
      v27 = v36;
      *(&v50 + 1) = v36;
      *&v51 = v68;
      *(&v51 + 1) = v21;
      v28 = v42;
      LOBYTE(v52) = v42;
      *(&v52 + 1) = v67[0];
      DWORD1(v52) = *(v67 + 3);
      v29 = v45;
      *(&v52 + 1) = v45;
      *v53 = v25;
      *&v53[8] = v37;
      *&v53[16] = v44;
      v30 = v46;
      v53[24] = v46;
      v31 = v50;
      v32 = v49;
      *(v49 + 57) = *&v53[9];
      v33 = v51;
      v34 = *v53;
      v32[2] = v52;
      v32[3] = v34;
      *v32 = v31;
      v32[1] = v33;
      sub_2142FE33C(&v50, &v55);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v55 = v26;
      v56 = v27;
      v57 = v68;
      v58 = v21;
      v59 = v28;
      *v60 = v67[0];
      *&v60[3] = *(v67 + 3);
      v61 = v29;
      v62 = v25;
      v63 = v37;
      v64 = v44;
      v65 = v30;
      return sub_2142FE294(&v55);
    }

    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD000000000000024;
    v35[1] = 0x800000021478F810;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    v24 = v36;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000026;
    v23[1] = 0x800000021478F7E0;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    v24 = v36;
    v68 = v38;
  }

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v55 = v43;
  v56 = v24;
  v57 = v68;
  v58 = v21;
  v59 = v42;
  *v60 = v67[0];
  *&v60[3] = *(v67 + 3);
  v61 = v45;
  v62 = v48;
  v63 = v39;
  v64 = v47;
  v65 = v46;
  return sub_2142FE294(&v55);
}

unint64_t sub_2141A75A0()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_2141A75D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000214795600 == a2)
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

uint64_t sub_2141A76BC(uint64_t a1)
{
  v2 = sub_2142FE398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A76F8(uint64_t a1)
{
  v2 = sub_2142FE398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A7734@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908730, &qword_2146F5180);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE398();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    sub_2142FE3EC();
    sub_2146DA1C8();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908748, &qword_2146F5188);
    v15 = 1;
    sub_2142FE440();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141A7920(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908760, &qword_2146F5190);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE398();
  sub_2146DAA28();
  v15 = v9;
  v14 = 0;
  sub_2142FE518();
  sub_2146DA388();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908748, &qword_2146F5188);
    sub_2142FE56C();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2141A7B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18)
{
  v77 = a2;
  v62 = *a3;
  v20 = type metadata accessor for RelayReachabilityContext();
  v67 = a6;
  sub_213FB2E54(a6, a9 + v20[7], &unk_27C904F30, &unk_2146EFA20);
  sub_21463839C(&v73);
  v21 = v74;
  v22 = v75;
  v23 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  *(v25 + 32) = sub_21469B388();
  v26 = sub_2142E091C(v25, &qword_27C903F20, &unk_2146E9D20, sub_21438ED7C, sub_21438F6FC);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = sub_21403254C;
  *(v27 + 24) = v28;
  *(inited + 32) = v27;
  sub_214042A28(inited, v71);
  *a9 = v73;
  v29 = v71[1];
  *(a9 + 40) = v71[0];
  v30 = v72;
  *(a9 + 16) = v21;
  *(a9 + 24) = v22;
  *(a9 + 32) = v23;
  *(a9 + 33) = v62;
  *(a9 + 56) = v29;
  *(a9 + 72) = v30;
  v31 = (a9 + v20[8]);
  *v31 = a7;
  v31[1] = a8;
  v32 = (a9 + v20[9]);
  *v32 = a10;
  v32[1] = a11;
  *(a9 + v20[10]) = a12;
  *(a9 + v20[11]) = a13;
  *(a9 + v20[12]) = a14;
  *(a9 + v20[13]) = a15;
  *(a9 + v20[14]) = a16;
  *(a9 + v20[15]) = a17;
  *(a9 + v20[16]) = a18;
  v34 = *a9;
  v33 = *(a9 + 8);
  v36 = *(a9 + 16);
  v35 = *(a9 + 24);
  v37 = *(a9 + 32);
  *&v71[0] = a1;
  *(&v71[0] + 1) = v77;
  v65 = v37;
  v70 = v37;
  *&v73 = 0xD000000000000027;
  *(&v73 + 1) = 0x800000021478F840;
  v74 = 0xD00000000000001CLL;
  v75 = 0x800000021478A360;

  sub_213FDC9D0(v36, v35);
  v38 = v34(v71, &v70, &v73);
  if (v66)
  {

LABEL_6:

    sub_213FB2DF4(v67, &unk_27C904F30, &unk_2146EFA20);
    v50 = *(a9 + 8);
    v51 = *(a9 + 16);
    v52 = *(a9 + 24);

    sub_213FDC6D0(v51, v52);
    *a9 = v34;
    *(a9 + 8) = v33;
    *(a9 + 16) = v36;
    *(a9 + 24) = v35;
    *(a9 + 32) = v65;
    return sub_21432887C(a9, type metadata accessor for RelayReachabilityContext);
  }

  if ((v38 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD000000000000027;
    v49[1] = 0x800000021478F840;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v36, v35);

  v39 = *(a9 + 8);
  v40 = *(a9 + 16);
  v41 = *(a9 + 24);

  sub_213FDC6D0(v40, v41);
  *a9 = v34;
  *(a9 + 8) = v33;
  v42 = v77;
  *(a9 + 16) = a1;
  *(a9 + 24) = v42;
  *(a9 + 32) = v65;
  v44 = *(a9 + 40);
  v43 = *(a9 + 48);
  v45 = *(a9 + 56);
  v46 = *(a9 + 64);
  v47 = *(a9 + 72);
  *&v71[0] = a4;
  *(&v71[0] + 1) = a5;
  LODWORD(v77) = v47;
  v70 = v47;
  *&v73 = 0xD000000000000032;
  *(&v73 + 1) = 0x800000021478F870;
  v74 = 0xD00000000000001CLL;
  v75 = 0x800000021478A360;

  sub_213FDC9D0(v45, v46);
  v48 = v44(v71, &v70, &v73);
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD000000000000032;
    v57[1] = 0x800000021478F870;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v67, &unk_27C904F30, &unk_2146EFA20);
    v58 = *(a9 + 48);
    v59 = *(a9 + 56);
    v60 = *(a9 + 64);

    sub_213FDC6D0(v59, v60);
    *(a9 + 40) = v44;
    *(a9 + 48) = v43;
    *(a9 + 56) = v45;
    *(a9 + 64) = v46;
    *(a9 + 72) = v77;
    return sub_21432887C(a9, type metadata accessor for RelayReachabilityContext);
  }

  sub_213FDC6D0(v45, v46);

  sub_213FB2DF4(v67, &unk_27C904F30, &unk_2146EFA20);
  v54 = *(a9 + 48);
  v55 = *(a9 + 56);
  v56 = *(a9 + 64);

  result = sub_213FDC6D0(v55, v56);
  *(a9 + 40) = v44;
  *(a9 + 48) = v43;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = v77;
  return result;
}

unint64_t sub_2141A80C4(char a1)
{
  result = 0x6E65644974616863;
  switch(a1)
  {
    case 1:
      result = 0x6C79745374616863;
      break;
    case 2:
    case 6:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0x534D4D6563726F66;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2141A8264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436F7E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141A828C(uint64_t a1)
{
  v2 = sub_2142FE644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A82C8(uint64_t a1)
{
  v2 = sub_2142FE644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A8304@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v81 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908780, &qword_2146F5198);
  v102 = *(v7 - 8);
  v8 = *(v102 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v81 - v9;
  v11 = type metadata accessor for RelayReachabilityContext();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2142FE644();
  v17 = v103;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v111);
  }

  v99 = v11;
  v100 = v14;
  v103 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v105[0]) = 0;
  sub_2142E12FC();
  v18 = v10;
  sub_2146DA1C8();
  v19 = v107;
  LOBYTE(v105[0]) = 1;
  sub_2142FE698();
  sub_2146DA1C8();
  v98 = *(&v19 + 1);
  v97 = v107;
  LOBYTE(v105[0]) = 2;
  sub_2146DA1C8();
  v96 = v19;
  v20 = *(&v107 + 1);
  v95 = v107;
  LOBYTE(v107) = 3;
  sub_2142EFBA8();
  sub_2146DA1C8();
  LOBYTE(v105[0]) = 4;
  sub_2146DA1C8();
  v94 = v107;
  LOBYTE(v105[0]) = 5;
  sub_2146DA1C8();
  v23 = *(&v107 + 1);
  v22 = v107;
  LOBYTE(v107) = 6;
  v92 = sub_2146DA178();
  v93 = __PAIR128__(v23, v22);
  LOBYTE(v107) = 7;
  LOBYTE(v22) = sub_2146DA178();
  v24 = v94;
  LOBYTE(v107) = 8;
  v91 = sub_2146DA178();
  v25 = v98;
  v90 = v20;
  LOBYTE(v107) = 9;
  v26 = v7;
  v27 = v18;
  v89 = sub_2146DA178();
  LOBYTE(v107) = 10;
  v88 = sub_2146DA178();
  LOBYTE(v107) = 11;
  v87 = sub_2146DA178();
  LOBYTE(v107) = 12;
  v85 = sub_2146DA178();
  v86 = 0;
  v28 = v99;
  v29 = v100;
  sub_213FB2E54(v103, v100 + *(v99 + 28), &unk_27C904F30, &unk_2146EFA20);
  sub_21463839C(&v107);
  v84 = v108;
  v83 = v109;
  v82 = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v81 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v31 = swift_initStackObject();
  *(v31 + 16) = v81;
  *(v31 + 32) = sub_21469B388();
  *&v81 = sub_2142E091C(v31, &qword_27C903F20, &unk_2146E9D20, sub_21438ED7C, sub_21438F6FC);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v32 = swift_allocObject();
  v33 = swift_allocObject();
  *(v33 + 16) = v81;
  *(v32 + 16) = sub_214032610;
  *(v32 + 24) = v33;
  *(inited + 32) = v32;
  sub_214042A28(inited, v105);
  *v29 = v107;
  v34 = v105[1];
  *(v29 + 5) = v105[0];
  v35 = v106;
  v36 = v83;
  v29[2] = v84;
  v29[3] = v36;
  *(v29 + 32) = v82;
  *(v29 + 33) = v97;
  *(v29 + 7) = v34;
  *(v29 + 72) = v35;
  v37 = (v29 + v28[8]);
  v38 = *(&v94 + 1);
  *v37 = v24;
  v37[1] = v38;
  v39 = (v29 + v28[9]);
  v40 = *(&v93 + 1);
  *v39 = v93;
  v39[1] = v40;
  *(v29 + v28[10]) = v92 & 1;
  *(v29 + v28[11]) = v22 & 1;
  *(v29 + v28[12]) = v91 & 1;
  *(v29 + v28[13]) = v89 & 1;
  *(v29 + v28[14]) = v88 & 1;
  *(v29 + v28[15]) = v87 & 1;
  *(v29 + v28[16]) = v85 & 1;
  v42 = *v29;
  v41 = v29[1];
  v44 = v29[2];
  v43 = v29[3];
  LODWORD(v40) = *(v29 + 32);
  *&v105[0] = v96;
  *(&v105[0] + 1) = v25;
  v97 = v40;
  v104 = v40;
  *&v107 = 0xD000000000000027;
  *(&v107 + 1) = 0x800000021478F840;
  v108 = 0xD00000000000001CLL;
  v109 = 0x800000021478A360;
  v99 = 0x800000021478A360;

  *(&v94 + 1) = v44;
  *&v94 = v43;
  sub_213FDC9D0(v44, v43);
  v45 = v86;
  v46 = v42;
  v47 = v42(v105, &v104, &v107);
  v86 = v45;
  if (v45)
  {

LABEL_10:

    sub_213FB2DF4(v103, &unk_27C904F30, &unk_2146EFA20);
    (*(v102 + 8))(v27, v26);
    v64 = v100;
    v65 = v100[1];
    v66 = v100[2];
    v67 = v100[3];

    sub_213FDC6D0(v66, v67);
    *v64 = v42;
    v64[1] = v41;
    v68 = v94;
    v64[2] = *(&v94 + 1);
    v64[3] = v68;
    *(v64 + 32) = v97;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v111);
    return sub_21432887C(v100, type metadata accessor for RelayReachabilityContext);
  }

  if ((v47 & 1) == 0)
  {
    sub_214031C4C();
    v61 = swift_allocError();
    *v62 = 0xD000000000000027;
    v62[1] = 0x800000021478F840;
    v63 = v99;
    v62[2] = 0xD00000000000001CLL;
    v62[3] = v63;
    v86 = v61;
    swift_willThrow();
    goto LABEL_10;
  }

  sub_213FDC6D0(*(&v94 + 1), v94);
  v48 = v99;

  v49 = v100;
  v50 = v100[1];
  v51 = v100[2];
  v52 = v100[3];

  sub_213FDC6D0(v51, v52);
  *v49 = v46;
  v49[1] = v41;
  v49[2] = v96;
  v49[3] = v25;
  *(v49 + 32) = v97;
  v54 = v49[5];
  v53 = v49[6];
  v56 = v49[7];
  v55 = v49[8];
  v57 = *(v49 + 72);
  *&v105[0] = v95;
  *(&v105[0] + 1) = v90;
  LODWORD(v98) = v57;
  v104 = v57;
  *&v107 = 0xD000000000000032;
  *(&v107 + 1) = 0x800000021478F870;
  v108 = 0xD00000000000001CLL;
  v109 = v48;

  sub_213FDC9D0(v56, v55);
  v58 = v86;
  v59 = v54;
  v60 = v54(v105, &v104, &v107);
  v86 = v58;
  if (v58)
  {

LABEL_15:

    sub_213FB2DF4(v103, &unk_27C904F30, &unk_2146EFA20);
    (*(v102 + 8))(v27, v26);
    v77 = v100;
    v78 = v100[6];
    v79 = v100[7];
    v80 = v100[8];

    sub_213FDC6D0(v79, v80);
    v77[5] = v59;
    v77[6] = v53;
    v77[7] = v56;
    v77[8] = v55;
    *(v77 + 72) = v98;
    goto LABEL_11;
  }

  if ((v60 & 1) == 0)
  {
    sub_214031C4C();
    v74 = swift_allocError();
    *v75 = 0xD000000000000032;
    v75[1] = 0x800000021478F870;
    v76 = v99;
    v75[2] = 0xD00000000000001CLL;
    v75[3] = v76;
    v86 = v74;
    swift_willThrow();
    goto LABEL_15;
  }

  sub_213FDC6D0(v56, v55);

  sub_213FB2DF4(v103, &unk_27C904F30, &unk_2146EFA20);
  (*(v102 + 8))(v27, v26);
  v69 = v100;
  v70 = v100[6];
  v71 = v100[7];
  v72 = v100[8];

  sub_213FDC6D0(v71, v72);
  v69[5] = v59;
  v69[6] = v53;
  v73 = v90;
  v69[7] = v95;
  v69[8] = v73;
  *(v69 + 72) = v98;
  sub_214328704(v69, v101, type metadata accessor for RelayReachabilityContext);
  return __swift_destroy_boxed_opaque_existential_1(v111);
}

uint64_t sub_2141A9160(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908798, &unk_2146F51A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE644();
  sub_2146DAA28();
  v11 = *(v3 + 24);
  if (v11 != 1)
  {
    *&v25 = *(v3 + 16);
    *(&v25 + 1) = v11;
    v26 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v9, v5);
    }

    LOBYTE(v25) = *(v3 + 33);
    v26 = 1;
    sub_2142FE6EC();
    sub_2146DA388();
    v12 = *(v3 + 64);
    if (v12 != 1)
    {
      *&v25 = *(v3 + 56);
      *(&v25 + 1) = v12;
      v26 = 2;
      sub_2146DA388();
      v24 = type metadata accessor for RelayReachabilityContext();
      v13 = v24[7];
      LOBYTE(v25) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
      sub_2142EFE18();
      sub_2146DA388();
      v14 = v24;
      v25 = *(v3 + v24[8]);
      v26 = 4;
      sub_2146DA388();
      v25 = *(v3 + v14[9]);
      v26 = 5;
      sub_2146DA388();
      v15 = *(v3 + v14[10]);
      LOBYTE(v25) = 6;
      sub_2146DA338();
      v16 = *(v3 + v14[11]);
      LOBYTE(v25) = 7;
      sub_2146DA338();
      v17 = *(v3 + v14[12]);
      LOBYTE(v25) = 8;
      sub_2146DA338();
      v18 = *(v3 + v14[13]);
      LOBYTE(v25) = 9;
      sub_2146DA338();
      v19 = *(v3 + v14[14]);
      LOBYTE(v25) = 10;
      sub_2146DA338();
      v20 = *(v3 + v24[15]);
      LOBYTE(v25) = 11;
      sub_2146DA338();
      v21 = *(v3 + v24[16]);
      LOBYTE(v25) = 12;
      sub_2146DA338();
      return (*(v6 + 8))(v9, v5);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141A95EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for RelayReachabilityRequest();
  v26 = a4;
  sub_2143287C0(a4, a5 + *(v11 + 24), type metadata accessor for RelayReachabilityContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v13 = sub_21469B388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2142FE740;
  *(v14 + 24) = v13;
  *(inited + 32) = v14;
  sub_2140433DC(inited, &v27);
  v16 = v27;
  v15 = v28;
  v17 = v29;
  v18 = v30;
  *a5 = v27;
  *(a5 + 8) = v15;
  *(a5 + 16) = v17;
  *(a5 + 24) = v18;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  v32 = a1;
  v31 = v18;
  v27 = 0xD000000000000020;
  v28 = 0x800000021478F8B0;
  v29 = 0xD00000000000001CLL;
  v30 = 0x800000021478A360;

  v19 = v16(&v32, &v31, &v27);
  if (v5)
  {
  }

  else
  {
    if (v19)
    {

      sub_21432887C(v26, type metadata accessor for RelayReachabilityContext);
      v20 = *(a5 + 8);
      v21 = *(a5 + 16);

      *a5 = v16;
      *(a5 + 8) = v15;
      *(a5 + 16) = a1;
      *(a5 + 24) = v18;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000020;
    v23[1] = 0x800000021478F8B0;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21432887C(v26, type metadata accessor for RelayReachabilityContext);
  v24 = *(a5 + 8);
  v25 = *(a5 + 16);

  *a5 = v16;
  *(a5 + 8) = v15;
  *(a5 + 16) = v17;
  *(a5 + 24) = v18;
  return sub_21432887C(a5, type metadata accessor for RelayReachabilityRequest);
}

uint64_t sub_2141A9884()
{
  v1 = 0x4E65636976726573;
  if (*v0 != 1)
  {
    v1 = 0x747865746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C646E6168;
  }
}

uint64_t sub_2141A98E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436FBF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141A9910(uint64_t a1)
{
  v2 = sub_2142FE744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141A994C(uint64_t a1)
{
  v2 = sub_2142FE744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141A9988@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for RelayReachabilityContext();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087A8, &qword_2146F51B0);
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = type metadata accessor for RelayReachabilityRequest();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2142FE744();
  v17 = v44;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v44 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  LOBYTE(v51) = 0;
  sub_2142E15CC();
  sub_2146DA1C8();
  v18 = v10;
  v19 = v46;
  LOBYTE(v46) = 1;
  v39 = sub_2146DA168();
  v40 = v20;
  v41 = v19;
  LOBYTE(v46) = 2;
  sub_214328930(&qword_27C9087B8, type metadata accessor for RelayReachabilityContext);
  v21 = v44;
  sub_2146DA1C8();
  v38 = v7;
  v23 = v14;
  sub_2143287C0(v21, &v14[*(v11 + 24)], type metadata accessor for RelayReachabilityContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v25 = sub_21469B388();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_21438F680;
  *(v26 + 24) = v25;
  *(inited + 32) = v26;
  sub_2140433DC(inited, &v46);
  v28 = v46;
  v27 = v47;
  v29 = v48;
  v30 = v49;
  *v23 = v46;
  *(v23 + 8) = v27;
  *(v23 + 16) = v29;
  *(v23 + 24) = v30;
  v31 = v40;
  *(v23 + 32) = v39;
  *(v23 + 40) = v31;
  v51 = v41;
  LODWORD(v40) = v30;
  v50 = v30;
  v46 = 0xD000000000000020;
  v47 = 0x800000021478F8B0;
  v48 = 0xD00000000000001CLL;
  v49 = 0x800000021478A360;

  if (v28(&v51, &v50, &v46))
  {

    sub_21432887C(v44, type metadata accessor for RelayReachabilityContext);
    (*(v43 + 8))(v18, v38);
    v32 = *(v23 + 8);
    v33 = *(v23 + 16);

    *v23 = v28;
    *(v23 + 8) = v27;
    v34 = v42;
    *(v23 + 16) = v41;
    *(v23 + 24) = v40;
    sub_214328704(v23, v34, type metadata accessor for RelayReachabilityRequest);
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  sub_214031C4C();
  swift_allocError();
  *v35 = 0xD000000000000020;
  v35[1] = 0x800000021478F8B0;
  v35[2] = 0xD00000000000001CLL;
  v35[3] = 0x800000021478A360;
  swift_willThrow();

  sub_21432887C(v44, type metadata accessor for RelayReachabilityContext);
  (*(v43 + 8))(v18, v38);
  v36 = *(v23 + 8);
  v37 = *(v23 + 16);

  *v23 = v28;
  *(v23 + 8) = v27;
  *(v23 + 16) = v29;
  *(v23 + 24) = v40;
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_21432887C(v23, type metadata accessor for RelayReachabilityRequest);
}

uint64_t sub_2141A9F50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087C0, &qword_2146F51B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE744();
  sub_2146DAA28();
  if (v3[2])
  {
    v16 = v3[2];
    v15[7] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    if (!v2)
    {
      v12 = v3[4];
      v13 = v3[5];
      v15[6] = 1;
      sub_2146DA328();
      v14 = *(type metadata accessor for RelayReachabilityRequest() + 24);
      v15[5] = 2;
      type metadata accessor for RelayReachabilityContext();
      sub_214328930(&qword_27C9087C8, type metadata accessor for RelayReachabilityContext);
      sub_2146DA388();
    }

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141AA210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, int a6@<W5>, __int128 *a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v44 = a6;
  sub_213FB2E54(a10, a9 + 640, &qword_27C9087D0, &qword_2146F51C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = sub_21469B388();
  sub_214042B80(inited, &v39);
  v18 = v39;
  v17 = v40;
  v19 = v41;
  v20 = v42;
  v21 = v43;
  *a9 = v39;
  *(a9 + 8) = v17;
  v34 = v19;
  *(a9 + 16) = v19;
  *(a9 + 24) = v20;
  *(a9 + 32) = v21;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 57) = v44;
  v22 = *a7;
  v23 = a7[1];
  v24 = a7[4];
  *(a9 + 112) = a7[3];
  *(a9 + 128) = v24;
  v25 = a7[2];
  v26 = v21;
  *(a9 + 80) = v23;
  *(a9 + 96) = v25;
  *(a9 + 64) = v22;
  memcpy((a9 + 144), a8, 0x1F0uLL);
  v38[0] = a1;
  v38[1] = a2;
  v45 = v26;
  v39 = 0xD000000000000026;
  v40 = 0x800000021478F8E0;
  v41 = 0xD00000000000001CLL;
  v42 = 0x800000021478A360;

  v27 = v18(v38, &v45, &v39);
  if (v37)
  {
  }

  else
  {
    if (v27)
    {

      sub_213FB2DF4(a10, &qword_27C9087D0, &qword_2146F51C0);
      v28 = *(a9 + 8);
      v29 = *(a9 + 24);

      *a9 = v18;
      *(a9 + 8) = v17;
      *(a9 + 16) = a1;
      *(a9 + 24) = a2;
      *(a9 + 32) = v26;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000026;
    v31[1] = 0x800000021478F8E0;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB2DF4(a10, &qword_27C9087D0, &qword_2146F51C0);
  v32 = *(a9 + 8);
  v33 = *(a9 + 24);

  *a9 = v18;
  *(a9 + 8) = v17;
  *(a9 + 16) = v34;
  *(a9 + 24) = v20;
  *(a9 + 32) = v26;
  return sub_2142FE798(a9);
}

uint64_t sub_2141AA4B8()
{
  v1 = *v0;
  v2 = 0x4449656C646E6168;
  v3 = 0x666E49646E617262;
  if (v1 != 5)
  {
    v3 = 0x676F4C646E617262;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6574736973726570;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65636976726573;
  if (v1 != 1)
  {
    v5 = 0x6168636165527369;
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

uint64_t sub_2141AA5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436FD10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141AA5DC(uint64_t a1)
{
  v2 = sub_2142FE7EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141AA618(uint64_t a1)
{
  v2 = sub_2142FE7EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141AA654@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087D8, &qword_2146F51C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142FE7EC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v33 = a2;
  v41[0] = 0;
  v12 = sub_2146DA168();
  v14 = v13;
  v32 = v12;
  v41[0] = 1;
  v15 = v5;
  v16 = v6;
  v17 = sub_2146DA168();
  v19 = v18;
  v41[0] = 2;
  v31 = sub_2146DA178();
  v41[0] = 3;
  LODWORD(v30) = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087E8, &qword_2146F51D0);
  v47 = 4;
  sub_2142FE840();
  sub_2146DA1C8();
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v42 = v48;
  v43 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908800, &qword_2146F51D8);
  v40[503] = 5;
  sub_2142FE918();
  sub_2146DA1C8();
  memcpy(v40, v41, 0x1F0uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087D0, &qword_2146F51C0);
  LOBYTE(v36) = 6;
  sub_2142FE9F0();
  sub_2146DA1C8();
  v28 = v15;
  sub_213FB2E54(v39, &v53[40], &qword_27C9087D0, &qword_2146F51C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  *(v21 + 32) = sub_21469B388();
  sub_214042B80(v21, &v36);
  v22 = *(&v36 + 1);
  v29 = v36;
  v23 = *(&v37 + 1);
  v53[0] = v36;
  v27 = v37;
  v53[1] = v37;
  LOBYTE(v53[2]) = v38;
  *(&v53[2] + 1) = v17;
  *&v53[3] = v19;
  BYTE8(v53[3]) = v31 & 1;
  BYTE9(v53[3]) = v30 & 1;
  v53[4] = v42;
  v53[7] = v45;
  v53[8] = v46;
  v53[5] = v43;
  v53[6] = v44;
  memcpy(&v53[9], v40, 0x1F0uLL);
  v35[0] = v32;
  v35[1] = v14;
  v31 = v38;
  v34 = v38;
  *&v36 = 0xD000000000000026;
  *(&v36 + 1) = 0x800000021478F8E0;
  *&v37 = 0xD00000000000001CLL;
  *(&v37 + 1) = 0x800000021478A360;
  v30 = v23;

  v24 = v29(v35, &v34, &v36);
  if (v24)
  {

    sub_213FB2DF4(v39, &qword_27C9087D0, &qword_2146F51C0);
    (*(v16 + 8))(v9, v28);

    *&v53[0] = v29;
    *(&v53[0] + 1) = v22;
    *&v53[1] = v32;
    *(&v53[1] + 1) = v14;
    LOBYTE(v53[2]) = v31;
    memcpy(v33, v53, 0x438uLL);
    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  sub_214031C4C();
  swift_allocError();
  *v25 = 0xD000000000000026;
  v25[1] = 0x800000021478F8E0;
  v25[2] = 0xD00000000000001CLL;
  v25[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v39, &qword_27C9087D0, &qword_2146F51C0);
  (*(v16 + 8))(v9, v28);

  *&v53[0] = v29;
  *(&v53[0] + 1) = v22;
  *&v53[1] = v27;
  *(&v53[1] + 1) = v30;
  LOBYTE(v53[2]) = v31;
  __swift_destroy_boxed_opaque_existential_1(v54);
  return sub_2142FE798(v53);
}

uint64_t sub_2141AACE0(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908828, &qword_2146F51E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FE7EC();
  sub_2146DAA28();
  if (*(v4 + 24))
  {
    v12 = *(v4 + 16);
    v27[0] = 0;

    sub_2146DA328();
    if (v3)
    {
      (*(v7 + 8))(v10, v6);
    }

    else
    {

      v14 = *(v4 + 40);
      v15 = *(v4 + 48);
      v27[0] = 1;
      sub_2146DA328();
      v16 = *(v4 + 56);
      v27[0] = 2;
      sub_2146DA338();
      v17 = *(v4 + 57);
      v38 = 3;
      sub_2146DA338();
      v18 = *(v4 + 96);
      v19 = *(v4 + 64);
      v34 = *(v4 + 80);
      v35 = v18;
      v20 = *(v4 + 96);
      v21 = *(v4 + 128);
      v36 = *(v4 + 112);
      v37 = v21;
      v22 = *(v4 + 64);
      v30 = v20;
      v31 = v36;
      v32 = *(v4 + 128);
      v33 = v22;
      v28 = v19;
      v29 = v34;
      v27[511] = 4;
      sub_213FB2E54(&v33, v27, &qword_27C9087E8, &qword_2146F51D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087E8, &qword_2146F51D0);
      sub_2142FEAC8();
      sub_2146DA388();
      v26[2] = v30;
      v26[3] = v31;
      v26[4] = v32;
      v26[0] = v28;
      v26[1] = v29;
      sub_213FB2DF4(v26, &qword_27C9087E8, &qword_2146F51D0);
      memcpy(v27, (v4 + 144), 0x1F0uLL);
      memcpy(v25, (v4 + 144), sizeof(v25));
      v24[503] = 5;
      sub_213FB2E54(v27, v24, &qword_27C908800, &qword_2146F51D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908800, &qword_2146F51D8);
      sub_2142FEBA0();
      sub_2146DA388();
      memcpy(v24, v25, 0x1F0uLL);
      sub_213FB2DF4(v24, &qword_27C908800, &qword_2146F51D8);
      v23[7] = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9087D0, &qword_2146F51C0);
      sub_2142FEC78();
      sub_2146DA388();
      return (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2141AB170@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = v8;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;
  *(a8 + 34) = a7;
  return result;
}

uint64_t sub_2141AB190()
{
  v1 = *v0;
  v2 = 0x65636976726573;
  v3 = 0x6C616E69467369;
  v4 = 0x65526572416C6C61;
  if (v1 != 4)
  {
    v4 = 0x6B63656843646964;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726F727265;
  if (v1 != 1)
  {
    v5 = 0x6552656C646E6168;
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

uint64_t sub_2141AB26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21436FF7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141AB294(uint64_t a1)
{
  v2 = sub_2142FED50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141AB2D0(uint64_t a1)
{
  v2 = sub_2142FED50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141AB30C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908860, &qword_2146F51E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FED50();
  sub_2146DAA08();
  if (!v2)
  {
    v31 = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    v23 = v11;
    v29 = 1;
    sub_2142FEDA4();
    sub_2146DA1C8();
    v14 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908878, &qword_2146F51F0);
    v28 = 2;
    sub_2142FEDF8();
    sub_2146DA1C8();
    v22 = v14;
    v16 = v24;
    v27 = 3;
    v21 = sub_2146DA178();
    v26 = 4;
    HIDWORD(v20) = sub_2146DA178();
    v25 = 5;
    v17 = sub_2146DA178();
    (*(v6 + 8))(v9, v5);
    v18 = v21 & 1;
    v19 = BYTE4(v20) & 1;
    *a2 = v23;
    *(a2 + 8) = v13;
    *(a2 + 16) = v22;
    *(a2 + 24) = v16;
    *(a2 + 32) = v18;
    *(a2 + 33) = v19;
    *(a2 + 34) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141AB600(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908890, &qword_2146F51F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v17 = *(v1 + 16);
  v16 = v1[3];
  v10 = *(v1 + 32);
  v15[2] = *(v1 + 33);
  v15[3] = v10;
  v15[1] = *(v1 + 34);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FED50();
  sub_2146DAA28();
  v26 = 0;
  v12 = v18;
  sub_2146DA328();
  if (!v12)
  {
    v13 = v16;
    v25 = v17;
    v24 = 1;
    sub_2142FEED0();
    sub_2146DA388();
    v19 = v13;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908878, &qword_2146F51F0);
    sub_2142FEF24();
    sub_2146DA388();
    v22 = 3;
    sub_2146DA338();
    v21 = 4;
    sub_2146DA338();
    v20 = 5;
    sub_2146DA338();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141AB8B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = *(result + 33);
  v7 = *(result + 34);
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 33) = v6;
  *(a2 + 34) = v7;
  return result;
}

uint64_t sub_2141AB8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
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

uint64_t sub_2141AB96C(uint64_t a1)
{
  v2 = sub_2142FEFFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141AB9A8(uint64_t a1)
{
  v2 = sub_2142FEFFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141AB9E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9088B0, &qword_2146F5200);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FEFFC();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2142FF050();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v11 = v18[2];
    v12 = v19;
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v16 = v23;
    *a2 = v18[1];
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 33) = v15;
    *(a2 + 34) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141ABB7C(void *a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9088C8, &qword_2146F5208);
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v19);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = v1[3];
  v17 = *(v1 + 32);
  v18 = v9;
  v11 = *(v1 + 33);
  v15 = *(v1 + 34);
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FEFFC();

  sub_2146DAA28();
  v20 = v7;
  v21 = v8;
  v22 = v18;
  v23 = v10;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  sub_2142FF0A4();
  v13 = v19;
  sub_2146DA388();

  return (*(v3 + 8))(v6, v13);
}

void *sub_2141ABD60@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_214328704(a1, a5, type metadata accessor for Metadata);
  v9 = type metadata accessor for RepositionStickerCommand();
  result = memcpy((a5 + *(v9 + 20)), a2, 0x139uLL);
  v11 = (a5 + *(v9 + 24));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t sub_2141ABDEC()
{
  v1 = 0x4D72656B63697473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_2141ABE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437018C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141ABE80(uint64_t a1)
{
  v2 = sub_2142FF0F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141ABEBC(uint64_t a1)
{
  v2 = sub_2142FF0F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141ABEF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9088D8, &qword_2146F5210);
  v25 = *(v27 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF0F8();
  v26 = v10;
  sub_2146DAA08();
  if (v2)
  {
    v22 = a1;
  }

  else
  {
    v23 = a1;
    v12 = v25;
    v29[0] = 0;
    sub_214328930(&qword_280B2E650, type metadata accessor for Metadata);
    v13 = v26;
    sub_2146DA1C8();
    v29[343] = 1;
    sub_2142FF14C();
    sub_2146DA1C8();
    memcpy(v28, v29, sizeof(v28));
    v29[342] = 2;
    v15 = sub_2146DA168();
    v17 = v16;
    (*(v12 + 8))(v13, v27);
    v18 = v7;
    v19 = v24;
    sub_214328704(v18, v24, type metadata accessor for Metadata);
    v20 = type metadata accessor for RepositionStickerCommand();
    memcpy((v19 + *(v20 + 20)), v28, 0x139uLL);
    v21 = (v19 + *(v20 + 24));
    *v21 = v15;
    v21[1] = v17;
    v22 = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_2141AC234(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9088F0, &qword_2146F5218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF0F8();
  sub_2146DAA28();
  v20[343] = 0;
  type metadata accessor for Metadata();
  sub_214328930(&qword_280B2E658, type metadata accessor for Metadata);
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for RepositionStickerCommand();
    v12 = *(v11 + 20);
    memcpy(v20, (v3 + v12), 0x139uLL);
    memcpy(v19, (v3 + v12), sizeof(v19));
    v20[342] = 1;
    sub_2142E371C(v20, v18);
    sub_2142FF1A0();
    sub_2146DA388();
    memcpy(v18, v19, 0x139uLL);
    sub_2142E34C8(v18);
    v13 = (v3 + *(v11 + 24));
    v14 = *v13;
    v15 = v13[1];
    v20[341] = 2;
    sub_2146DA328();
  }

  return (*(v6 + 8))(v9, v5);
}

void *MBDRichCard.init(with:media:title:cardDescription:chipList:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *(a1 + 16);
  __src[0] = *a1;
  __src[1] = v11;
  __src[2] = *(a1 + 32);
  LOBYTE(__src[3]) = *(a1 + 48);
  memcpy(&__src[3] + 8, a2, 0x101uLL);
  v36 = *a7;
  v37 = *(a7 + 8);
  sub_21462CA80(__dst);
  v13 = __dst[0];
  v12 = __dst[1];
  v14 = __dst[2];
  v15 = __dst[3];
  v16 = __dst[4];
  sub_21462CBCC(&v52);
  v33 = v52;
  v38 = v53;
  v39 = v54;
  v60 = v55;
  v34 = v56;
  v29 = a3;
  v52 = a3;
  v53 = a4;
  v51 = v16;
  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x800000021478F910;
  __dst[2] = 0xD00000000000001CLL;
  __dst[3] = 0x800000021478A360;

  v31 = v14;
  v17 = v14;
  v18 = v15;
  sub_213FDC9D0(v17, v15);
  v19 = v13(&v52, &v51, __dst);
  if (v35)
  {

LABEL_6:

    v21 = v33;
    v24 = v31;

    sub_213FDC6D0(v31, v18);
    v20 = v34;
LABEL_7:
    memcpy(__dst, __src, 0x140uLL);
    __dst[40] = v13;
    __dst[41] = v12;
    __dst[42] = v24;
    __dst[43] = v18;
    v41 = v16;
    *v42 = v59[0];
    *&v42[3] = *(v59 + 3);
    v43 = v21;
    v44 = v38;
    v45 = v39;
    v46 = v60;
    v47 = v20;
    *v48 = v58[0];
    *&v48[3] = *(v58 + 3);
    v49 = v36;
    v50 = v37;
    return sub_2142FF1F4(__dst);
  }

  if ((v19 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000011;
    v23[1] = 0x800000021478F910;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v31, v15);

  sub_213FDC6D0(v31, v15);
  v52 = a5;
  v53 = a6;
  v20 = v34;
  v51 = v34;
  __dst[0] = 0xD00000000000001BLL;
  __dst[1] = 0x800000021478F930;
  __dst[2] = 0xD00000000000001CLL;
  __dst[3] = 0x800000021478A360;

  sub_213FDC9D0(v39, v60);
  v21 = v33;
  v22 = v33(&v52, &v51, __dst);
  if ((v22 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000001BLL;
    v27[1] = 0x800000021478F930;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v39, v60);
    v24 = v29;
    v18 = a4;
    goto LABEL_7;
  }

  v26 = v60;
  sub_213FDC6D0(v39, v60);

  sub_213FDC6D0(v39, v26);
  result = memcpy(a8, __src, 0x140uLL);
  *(a8 + 320) = v13;
  *(a8 + 328) = v12;
  *(a8 + 336) = v29;
  *(a8 + 344) = a4;
  *(a8 + 352) = v16;
  *(a8 + 360) = v33;
  *(a8 + 368) = v38;
  *(a8 + 376) = a5;
  *(a8 + 384) = a6;
  *(a8 + 392) = v34;
  *(a8 + 400) = v36;
  *(a8 + 408) = v37;
  return result;
}

uint64_t sub_2141AC924()
{
  v1 = *v0;
  v2 = 0x74756F79616CLL;
  v3 = 0x656C746974;
  v4 = 0x6373654464726163;
  if (v1 != 3)
  {
    v4 = 0x7473694C70696863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x616964656DLL;
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

uint64_t sub_2141AC9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2143702B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141AC9E8(uint64_t a1)
{
  v2 = sub_2142FF248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141ACA24(uint64_t a1)
{
  v2 = sub_2142FF248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDRichCard.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908900, &unk_2146F5220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2142FF248();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v93);
  }

  v57 = a2;
  v58 = v6;
  v86 = 0;
  sub_2142FF29C();
  sub_2146DA1C8();
  v82 = v87;
  v83 = v88;
  v84 = v89;
  v85 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908918, &qword_214767BD0);
  v80[263] = 1;
  sub_2142FF2F0();
  sub_2146DA1C8();
  memcpy(v80, v81, 0x101uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v59[0]) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v12 = v61[0];
  v13 = v61[1];
  LOBYTE(v59[0]) = 3;
  sub_2146DA1C8();
  v56 = v13;
  v14 = v61[0];
  v15 = v61[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908928, &qword_2146F5230);
  v77 = 4;
  sub_2142FF374();
  sub_2146DA1C8();
  v42 = v14;
  v47 = v15;
  v44 = v78;
  v45 = v79;
  sub_2142FF3F8(&v82, v61);
  sub_213FB2E54(v80, v61, &qword_27C908918, &qword_214767BD0);
  sub_21462CA80(v61);
  v17 = v61[1];
  v54 = v61[2];
  v55 = v61[0];
  v53 = v61[3];
  LODWORD(v15) = LOBYTE(v61[4]);
  sub_21462CBCC(v59);
  v49 = v59[0];
  v50 = v59[2];
  v51 = v59[3];
  v52 = v59[1];
  v48 = LOBYTE(v59[4]);
  v76[0] = v82;
  v76[1] = v83;
  v76[2] = v84;
  LOBYTE(v76[3]) = v85;
  memcpy(&v76[3] + 8, v80, 0x101uLL);
  v41 = v12;
  v59[0] = v12;
  v59[1] = v56;
  v43 = v15;
  LOBYTE(v60[0]) = v15;
  v61[0] = 0xD000000000000011;
  v61[1] = 0x800000021478F910;
  v61[2] = 0xD00000000000001CLL;
  v61[3] = 0x800000021478A360;

  sub_213FDC9D0(v54, v53);
  v46 = v17;
  v18 = v55(v59, v60, v61);
  v40 = 0x800000021478A360;
  if (v18)
  {
    v20 = v53;
    v19 = v54;
    sub_213FDC6D0(v54, v53);
    v21 = v40;

    v22 = v46;

    sub_213FDC6D0(v19, v20);
    v60[0] = v42;
    v60[1] = v47;
    LOBYTE(v59[0]) = v48;
    v54 = 0xD00000000000001BLL;
    v61[0] = 0xD00000000000001BLL;
    v61[1] = 0x800000021478F930;
    v61[2] = 0xD00000000000001CLL;
    v61[3] = v21;

    sub_213FDC9D0(v50, v51);
    v23 = v49(v60, v59, v61);
    v29 = v54;
    v30 = v58;
    if (v23)
    {
      v31 = v50;
      v32 = v51;
      sub_213FDC6D0(v50, v51);

      sub_21405C980(&v82);
      sub_213FB2DF4(v80, &qword_27C908918, &qword_214767BD0);
      (*(v30 + 8))(v9, v5);
      v33 = v52;

      sub_213FDC6D0(v31, v32);
      memcpy(v59, v76, 0x140uLL);
      v34 = v55;
      v59[40] = v55;
      v59[41] = v22;
      v35 = v56;
      v59[42] = v41;
      v59[43] = v56;
      LOBYTE(v31) = v43;
      LOBYTE(v59[44]) = v43;
      *(&v59[44] + 1) = v92[0];
      HIDWORD(v59[44]) = *(v92 + 3);
      v59[45] = v49;
      v59[46] = v33;
      v59[47] = v42;
      v59[48] = v47;
      LOBYTE(v33) = v48;
      LOBYTE(v59[49]) = v48;
      *(&v59[49] + 1) = *v91;
      HIDWORD(v59[49]) = *&v91[3];
      v36 = v44;
      v59[50] = v44;
      v37 = v45;
      LOBYTE(v59[51]) = v45;
      memcpy(v57, v59, 0x199uLL);
      sub_2142FF454(v59, v61);
      __swift_destroy_boxed_opaque_existential_1(v93);
      memcpy(v61, v76, sizeof(v61));
      v62 = v34;
      v63 = v46;
      v64 = v41;
      v65 = v35;
      v66 = v31;
      *v67 = v92[0];
      *&v67[3] = *(v92 + 3);
      v68 = v49;
      v69 = v52;
      v70 = v42;
      v71 = v47;
      v72 = v33;
      *v73 = *v91;
      *&v73[3] = *&v91[3];
      v74 = v36;
      v75 = v37;
      return sub_2142FF1F4(v61);
    }

    sub_214031C4C();
    swift_allocError();
    *v38 = v29;
    v38[1] = 0x800000021478F930;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = v40;
    swift_willThrow();

    sub_21405C980(&v82);
    sub_213FB2DF4(v80, &qword_27C908918, &qword_214767BD0);
    (*(v30 + 8))(v9, v5);

    sub_213FDC6D0(v50, v51);
    v27 = v41;
    v28 = v56;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000011;
    v24[1] = 0x800000021478F910;
    v25 = v40;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = v25;
    swift_willThrow();

    v26 = v58;
    v22 = v46;
    sub_21405C980(&v82);
    sub_213FB2DF4(v80, &qword_27C908918, &qword_214767BD0);
    (*(v26 + 8))(v9, v5);

    v28 = v53;
    v27 = v54;
    sub_213FDC6D0(v54, v53);
  }

  __swift_destroy_boxed_opaque_existential_1(v93);
  memcpy(v61, v76, sizeof(v61));
  v62 = v55;
  v63 = v22;
  v64 = v27;
  v65 = v28;
  v66 = v43;
  *v67 = v92[0];
  *&v67[3] = *(v92 + 3);
  v68 = v49;
  v69 = v52;
  v70 = v50;
  v71 = v51;
  v72 = v48;
  *v73 = *v91;
  *&v73[3] = *&v91[3];
  v74 = v44;
  v75 = v45;
  return sub_2142FF1F4(v61);
}

uint64_t MBDRichCard.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908938, &qword_2146F5238);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = v1[1];
  v38 = *v1;
  v39 = v8;
  v40 = v1[2];
  v41 = *(v1 + 48);
  memcpy(v42, v1 + 56, 0x101uLL);
  v9 = *(v1 + 42);
  v10 = *(v1 + 43);
  v11 = *(v1 + 48);
  v22 = *(v1 + 47);
  v23 = v9;
  v21 = v11;
  v24 = *(v1 + 50);
  v25 = v10;
  HIDWORD(v20) = *(v1 + 408);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF248();
  v13 = v7;
  sub_2146DAA28();
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v33 = 0;
  sub_2142FF3F8(&v38, v30);
  sub_2142FF4B0();
  v14 = v43;
  sub_2146DA388();
  if (v14)
  {
    v30[0] = v34;
    v30[1] = v35;
    v30[2] = v36;
    LOBYTE(v30[3]) = v37;
    sub_21405C980(v30);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v15 = v25;
    v31[0] = v34;
    v31[1] = v35;
    v31[2] = v36;
    v32 = v37;
    sub_21405C980(v31);
    memcpy(v30, v42, 0x101uLL);
    v29[263] = 1;
    sub_213FB2E54(v42, v29, &qword_27C908918, &qword_214767BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908918, &qword_214767BD0);
    sub_2142FF504();
    sub_2146DA388();
    v43 = v13;
    memcpy(v29, v30, 0x101uLL);
    sub_213FB2DF4(v29, &qword_27C908918, &qword_214767BD0);
    if (v15 == 1)
    {
      goto LABEL_6;
    }

    v17 = v4;
    v27 = v23;
    v28 = v15;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v18 = v24;
    if (v21 == 1)
    {
LABEL_6:
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v27 = v22;
      v28 = v21;
      v26 = 3;
      v19 = v43;
      sub_2146DA388();
      v27 = v18;
      LOBYTE(v28) = BYTE4(v20);
      v26 = 4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908928, &qword_2146F5230);
      sub_2142FF588();
      sub_2146DA388();

      return (*(v17 + 8))(v19, 0);
    }
  }

  return result;
}

uint64_t sub_2141AD89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214370460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141AD8C4(uint64_t a1)
{
  v2 = sub_2142FF60C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141AD900(uint64_t a1)
{
  v2 = sub_2142FF60C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141AD93C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908958, &unk_2146F5240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF60C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43) = 0;
  sub_2142FF660();
  sub_2146DA1C8();
  v11 = v47;
  LOBYTE(v43) = 1;
  sub_2142FF6B4();
  sub_2146DA1C8();
  v12 = v47;
  LOBYTE(v43) = 2;
  sub_2142FF708();
  sub_2146DA1C8();
  v59 = v12;
  v60 = v11;
  v42 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904478, &qword_2146EC048);
  LOBYTE(v43) = 3;
  sub_2142FF75C();
  sub_2146DA1C8();
  v41[0] = BYTE2(v47);
  LODWORD(v40) = v47;
  LOBYTE(v43) = 4;
  sub_2146DA1C8();
  v13 = v40;
  v14 = v41[0];
  LODWORD(v39) = BYTE2(v47);
  LODWORD(v38) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v55 = 5;
  sub_2142E12FC();
  sub_2146DA1C8();
  v37 = v13 | (v14 << 16);
  v16 = v57;
  v40 = v56;
  v36 = v38 | (v39 << 16);
  sub_214509038(&v47);
  v17 = v48;
  *v41 = v47;
  v18 = v49;
  v19 = v50;
  v54[0] = v40;
  v54[1] = v16;
  v34 = v16;
  v35 = v51;
  LOBYTE(v43) = v51;
  v47 = 0xD00000000000001ELL;
  v48 = 0x800000021478B1A0;
  v49 = 0xD00000000000001CLL;
  v50 = 0x800000021478A360;
  v33 = 0x800000021478A360;

  v39 = v18;
  v38 = v19;
  sub_213FDC9D0(v18, v19);
  v20 = v17;
  v21 = (*v41)(v54, &v43, &v47);
  v22 = v33;
  if (v21)
  {
    sub_213FDC6D0(v39, v38);

    (*(v6 + 8))(v9, v5);
    v23 = v17;

    sub_213FDC6D0(v39, v38);
    LOBYTE(v43) = v60;
    BYTE1(v43) = v59;
    BYTE2(v43) = v42;
    v24 = v37;
    LODWORD(v39) = HIWORD(v37);
    BYTE5(v43) = BYTE2(v37);
    *(&v43 + 3) = v37;
    v25 = v36;
    LODWORD(v38) = HIWORD(v36);
    BYTE8(v43) = BYTE2(v36);
    WORD3(v43) = v36;
    v26 = *v41;
    *&v44 = *v41;
    *(&v44 + 1) = v17;
    v27 = v34;
    *&v45 = v40;
    *(&v45 + 1) = v34;
    v28 = v35;
    v46 = v35;
    *(a2 + 48) = v35;
    v29 = v44;
    *a2 = v43;
    *(a2 + 16) = v29;
    *(a2 + 32) = v45;
    sub_2142FF3F8(&v43, &v47);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v47) = v60;
    BYTE1(v47) = v59;
    BYTE2(v47) = v42;
    BYTE5(v47) = v39;
    *(&v47 + 3) = v24;
    LOBYTE(v48) = v38;
    HIWORD(v47) = v25;
    v49 = v26;
    v50 = v23;
    v51 = v40;
    v52 = v27;
    v53 = v28;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD00000000000001ELL;
    v30[1] = 0x800000021478B1A0;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = v22;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    v31 = v39;
    v32 = v38;
    sub_213FDC6D0(v39, v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v47) = v60;
    BYTE1(v47) = v59;
    BYTE2(v47) = v42;
    BYTE5(v47) = BYTE2(v37);
    *(&v47 + 3) = v37;
    LOBYTE(v48) = BYTE2(v36);
    HIWORD(v47) = v36;
    *(&v48 + 1) = v58[0];
    HIDWORD(v48) = *(v58 + 3);
    v49 = *v41;
    v50 = v20;
    v51 = v31;
    v52 = v32;
    v53 = v35;
  }

  return sub_21405C980(&v47);
}

uint64_t sub_2141ADFC8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908988, &qword_2146F5250);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = *v1;
  v29 = v1[1];
  v10 = v1[2];
  v25 = v1[5];
  v26 = v10;
  v11 = *(v1 + 3);
  v22 = v1[8];
  v23 = *(v1 + 3);
  v24 = v11;
  v12 = *(v1 + 4);
  v20 = *(v1 + 5);
  v21 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF60C();
  sub_2146DAA28();
  LOBYTE(v27) = v9;
  v30 = 0;
  sub_2142FF7E0();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = v25;
  v14 = v26;
  v16 = v23;
  v17 = v24;
  LOBYTE(v27) = v29;
  v30 = 1;
  sub_2142FF834();
  sub_2146DA388();
  LOBYTE(v27) = v14;
  v30 = 2;
  sub_2142FF888();
  sub_2146DA388();
  BYTE2(v27) = (v17 | (v15 << 16)) >> 16;
  LOWORD(v27) = v17;
  v30 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904478, &qword_2146EC048);
  sub_21405C9D4();
  sub_2146DA388();
  BYTE2(v27) = (v16 | (v22 << 16)) >> 16;
  LOWORD(v27) = v16;
  v30 = 4;
  sub_2146DA388();
  if (v20 != 1)
  {
    v27 = v21;
    v28 = v20;
    v30 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2141AE36C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, void, void)@<X4>, uint64_t (*a6)(void, void, void)@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t (*a11)(void, void, void), char a12, char *a13, uint64_t (*a14)(void, void, void), uint64_t a15)
{
  v70 = *a13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = sub_214069764(&unk_2826534E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = sub_2142FF8DC;
  *(v18 + 24) = v19;
  *(v16 + 32) = v18;
  sub_214042B80(v16, &v100);
  v20 = v101;
  v96 = v100;
  v21 = v103;
  v64 = v102;
  v22 = v104;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2142E3358;
  *(v24 + 24) = 0;
  *(v23 + 32) = v24;
  sub_214042B80(v23, &v156);
  v97 = v156;
  v98 = v157;
  v65 = v158;
  v171 = v159;
  v74 = v160;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146ED240;
  *(v26 + 16) = sub_21438F468;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  sub_21404328C(v25, v153);
  v92 = v153[0];
  v95 = v153[1];
  v66 = v153[2];
  v28 = v154;
  v93 = v155;
  sub_2140637C0(v151);
  v87 = v151[2];
  v88 = v151[0];
  v90 = v151[1];
  v91 = v151[3];
  v89 = v152;
  sub_214063914(v149);
  v86 = v149[1];
  v83 = v149[2];
  v84 = v149[0];
  v82 = v149[3];
  v85 = v150;
  sub_214063A34(v145);
  v79 = v145[0];
  v81 = v145[1];
  v67 = v145[2];
  v71 = v146;
  v29 = v147;
  v80 = v148;
  sub_214063B78(v143);
  v72 = v143[0];
  v75 = v143[2];
  v76 = v143[3];
  v77 = v143[1];
  v73 = v144;
  v162 = v28;
  v161 = v29;
  v168 = v28;
  v163 = v29;
  v156 = a1;
  v157 = a2;
  v69 = v22;
  LOBYTE(v151[0]) = v22;
  v100 = 0xD000000000000019;
  v101 = 0x800000021478F950;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  v30 = v96(&v156, v151, &v100);
  v31 = v96;
  if (v68)
  {

LABEL_7:
    v35 = v21;

    v36 = v20;

    a1 = v64;
    v32 = v74;
LABEL_8:
    v38 = v66;
    v37 = v67;
    v40 = v82;
    v39 = v83;
    v41 = v87;
    v42 = v65;
LABEL_9:
    v100 = v31;
    v101 = v36;
    v102 = a1;
    v103 = v35;
    v104 = v69;
    *v105 = v170[0];
    *&v105[3] = *(v170 + 3);
    v106 = v97;
    v107 = v98;
    v108 = v42;
    v109 = v171;
    v110 = v32;
    *v111 = *v169;
    *&v111[3] = *&v169[3];
    v112 = v92;
    v113 = v95;
    v114 = v38;
    v115 = v168;
    v116 = v93;
    v117 = v166;
    v118 = v167;
    v119 = v88;
    v120 = v90;
    v121 = v41;
    v122 = v91;
    v123 = v89;
    *&v124[3] = *&v165[3];
    *v124 = *v165;
    v125 = v84;
    v126 = v86;
    v127 = v39;
    v128 = v40;
    v129 = v85;
    *&v130[3] = *&v164[3];
    *v130 = *v164;
    v131 = v79;
    v132 = v81;
    v133 = v37;
    v134 = v71;
    v135 = v163;
    v136 = v80;
    v137 = v70;
    v138 = v72;
    v139 = v77;
    v140 = v75;
    v141 = v76;
    v142 = v73;
    return sub_2142FF8EC(&v100);
  }

  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v34 = 0xD000000000000019;
    v34[1] = 0x800000021478F950;
    v34[2] = 0xD00000000000001CLL;
    v34[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_7;
  }

  v156 = a3;
  v157 = a4;
  v32 = v74;
  LOBYTE(v151[0]) = v74;
  v100 = 0xD000000000000021;
  v101 = 0x800000021478F970;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  if ((v97(&v156, v151, &v100) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v44 = 0xD000000000000021;
    v44[1] = 0x800000021478F970;
    v44[2] = 0xD00000000000001CLL;
    v44[3] = 0x800000021478A360;
    swift_willThrow();

    v31 = v96;

    v35 = a2;
    v36 = v20;
    goto LABEL_8;
  }

  LOBYTE(v151[0]) = v28;
  v156 = a5;
  LOBYTE(v149[0]) = v93;
  v100 = 0xD00000000000001ELL;
  v101 = 0x800000021478F9A0;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  v33 = v92(&v156, v149, &v100);
  v35 = a2;
  if ((v33 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD00000000000001ELL;
    v46[1] = 0x800000021478F9A0;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = 0x800000021478A360;
    swift_willThrow();
    v47 = v151[0];
    v31 = v96;

    v168 = v47;
    v42 = a3;
    v171 = a4;
    v36 = v20;
    v38 = v66;
    v37 = v67;
    v40 = v82;
    v39 = v83;
    v41 = v87;
    goto LABEL_9;
  }

  v168 = 0;
  v156 = a6;
  v157 = a7;
  LOBYTE(v151[0]) = v89;
  v100 = 0xD00000000000001DLL;
  v101 = 0x800000021478F9C0;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  sub_213FDC9D0(v87, v91);
  v45 = v88(&v156, v151, &v100);
  if ((v45 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD00000000000001DLL;
    v49[1] = 0x800000021478F9C0;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();

    v31 = v96;

    v41 = v87;
    sub_213FDC6D0(v87, v91);
    v42 = a3;
    v171 = a4;
    v38 = a5;
    v36 = v20;
    v37 = v67;
    v40 = v82;
    v39 = v83;
    goto LABEL_9;
  }

  sub_213FDC6D0(v87, v91);

  sub_213FDC6D0(v87, v91);
  v156 = a8;
  v157 = a10;
  LOBYTE(v151[0]) = v85;
  v100 = 0xD000000000000025;
  v101 = 0x800000021478F9E0;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  sub_213FDC9D0(v83, v82);
  v48 = v84(&v156, v151, &v100);
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD000000000000025;
    v51[1] = 0x800000021478F9E0;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();

    v31 = v96;

    v40 = v82;
    v39 = v83;
    sub_213FDC6D0(v83, v82);
    v42 = a3;
    v171 = a4;
    v41 = a6;
    v38 = a5;
    v91 = a7;
LABEL_20:
    v36 = v20;
    v37 = v67;
    goto LABEL_9;
  }

  sub_213FDC6D0(v83, v82);

  sub_213FDC6D0(v83, v82);
  v156 = a11;
  LOBYTE(v157) = a12 & 1;
  LOBYTE(v151[0]) = v80;
  v100 = 0xD000000000000022;
  v101 = 0x800000021478FA10;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  v50 = v79(&v156, v151, &v100);
  if ((v50 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v53 = 0xD000000000000022;
    v53[1] = 0x800000021478FA10;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    swift_willThrow();
    v31 = v96;
    v39 = a8;

    v163 = v29;
    v35 = a2;
    v42 = a3;
    v171 = a4;
    v41 = a6;
    v38 = a5;
    v91 = a7;
    v40 = a10;
    goto LABEL_20;
  }

  v71 = a12 & 1;

  v163 = 0;
  v156 = a14;
  v157 = a15;
  LOBYTE(v151[0]) = v73;
  v100 = 0xD000000000000023;
  v101 = 0x800000021478FA40;
  v102 = 0xD00000000000001CLL;
  v103 = 0x800000021478A360;

  sub_213FDC9D0(v75, v76);
  v52 = v72(&v156, v151, &v100);
  if ((v52 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v58 = 0xD000000000000023;
    v58[1] = 0x800000021478FA40;
    v58[2] = 0xD00000000000001CLL;
    v58[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v75, v76);
    v35 = a2;
    v42 = a3;
    v171 = a4;
    v41 = a6;
    v38 = a5;
    v91 = a7;
    v39 = a8;
    v40 = a10;
    v37 = a11;
    v32 = v74;
    v31 = v96;
    v36 = v20;
    goto LABEL_9;
  }

  sub_213FDC6D0(v75, v76);

  result = sub_213FDC6D0(v75, v76);
  *a9 = v96;
  *(a9 + 8) = v20;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = v69;
  *(a9 + 40) = v97;
  *(a9 + 48) = v98;
  *(a9 + 33) = v170[0];
  *(a9 + 36) = *(v170 + 3);
  v54 = v168;
  v55 = v163;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v74;
  v56 = *v169;
  *(a9 + 76) = *&v169[3];
  *(a9 + 73) = v56;
  *(a9 + 80) = v92;
  *(a9 + 88) = v95;
  *(a9 + 96) = a5;
  *(a9 + 104) = v54;
  *(a9 + 105) = v93;
  *(a9 + 106) = v166;
  *(a9 + 110) = v167;
  *(a9 + 112) = v88;
  *(a9 + 120) = v90;
  *(a9 + 128) = a6;
  *(a9 + 136) = a7;
  *(a9 + 144) = v89;
  v57 = *v165;
  *(a9 + 148) = *&v165[3];
  *(a9 + 145) = v57;
  *(a9 + 152) = v84;
  *(a9 + 160) = v86;
  *(a9 + 168) = a8;
  *(a9 + 176) = a10;
  *(a9 + 184) = v85;
  *(a9 + 188) = *&v164[3];
  *(a9 + 185) = *v164;
  *(a9 + 192) = v79;
  *(a9 + 200) = v81;
  *(a9 + 208) = a11;
  *(a9 + 216) = v71;
  *(a9 + 217) = v55;
  *(a9 + 218) = v80;
  *(a9 + 219) = v70;
  *(a9 + 224) = v72;
  *(a9 + 232) = v77;
  *(a9 + 240) = a14;
  *(a9 + 248) = a15;
  *(a9 + 256) = v73;
  return result;
}

uint64_t sub_2141AF290()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x746867696568;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000011;
    if (v1 == 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6C7255616964656DLL;
    v3 = 0x6C6946616964656DLL;
    if (v1 != 2)
    {
      v3 = 0x69616E626D756874;
    }

    if (*v0)
    {
      v2 = 0xD000000000000010;
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
}

uint64_t sub_2141AF3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214370678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141AF3D0(uint64_t a1)
{
  v2 = sub_2142FF940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141AF40C(uint64_t a1)
{
  v2 = sub_2142FF940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141AF448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v189 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089A8, &qword_2146F5258);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v63 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF940();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v114 = a1;
  v115 = v5;
  LOBYTE(v117) = 0;
  v11 = v8;
  v10 = sub_2146DA168();
  v13 = v12;
  v113 = v10;
  LOBYTE(v117) = 1;
  v14 = sub_2146DA168();
  v16 = v15;
  v112 = v14;
  LOBYTE(v117) = 2;
  v109 = sub_2146DA1A8();
  v110 = v16;
  v111 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v116[0]) = 3;
  sub_2142E12FC();
  sub_2146DA1C8();
  v107 = v117;
  v108 = v118;
  LOBYTE(v116[0]) = 4;
  sub_2146DA1C8();
  v105 = v117;
  v106 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  LOBYTE(v116[0]) = 5;
  sub_2142E11FC();
  sub_2146DA1C8();
  v103 = v117;
  v104 = v118;
  LOBYTE(v116[0]) = 6;
  sub_214063DDC();
  sub_2146DA1C8();
  v102 = v117;
  v178 = 7;
  sub_2146DA1C8();
  v63 = v179;
  v69 = v180;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v18 = swift_allocObject();
  v98 = xmmword_2146E9BF0;
  *(v18 + 16) = xmmword_2146E9BF0;
  v101 = sub_214069764(&unk_2826534E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v101;
  *(v19 + 16) = sub_21438F45C;
  *(v19 + 24) = v20;
  *(v18 + 32) = v19;
  sub_214042B80(v18, &v117);
  v96 = v117;
  v101 = v118;
  v66 = v119;
  v99 = v120;
  v100 = v121;
  v21 = swift_allocObject();
  *(v21 + 16) = v98;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214064194;
  *(v22 + 24) = 0;
  *(v21 + 32) = v22;
  sub_214042B80(v21, v116);
  v93 = v116[0];
  v95 = v116[1];
  v89 = v116[2];
  v97 = v116[3];
  v94 = LOBYTE(v116[4]);
  v23 = swift_allocObject();
  *(v23 + 16) = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146ED240;
  *(v24 + 16) = sub_21438F468;
  *(v24 + 24) = v25;
  *(v23 + 32) = v24;
  sub_21404328C(v23, v173);
  v91 = v173[0];
  v92 = v173[1];
  v83 = v173[2];
  LODWORD(v24) = v174;
  v90 = v175;
  sub_2140637C0(&v168);
  v84 = v168;
  v88 = v170;
  v86 = v169;
  v87 = v171;
  v85 = v172;
  sub_214063914(v166);
  v78 = v166[0];
  v82 = v166[2];
  v80 = v166[1];
  v81 = v166[3];
  v79 = v167;
  sub_214063A34(v162);
  v75 = v162[0];
  v77 = v162[1];
  v68 = v162[2];
  v67 = v163;
  LODWORD(v23) = v164;
  v76 = v165;
  sub_214063B78(v160);
  v70 = v160[0];
  v72 = v160[2];
  v73 = v160[3];
  v74 = v160[1];
  v71 = v161;
  v177 = v24;
  v176 = v23;
  v64 = v23;
  v65 = v24;
  v186 = v24;
  v181 = v23;
  v116[0] = v113;
  v116[1] = v111;
  LOBYTE(v168) = v100;
  v117 = 0xD000000000000019;
  v118 = 0x800000021478F950;
  v119 = 0xD00000000000001CLL;
  *&v98 = 0x800000021478A360;
  v120 = 0x800000021478A360;

  if (v96(v116, &v168, &v117))
  {
    v26 = v98;

    v116[0] = v112;
    v116[1] = v110;
    LOBYTE(v168) = v94;
    v117 = 0xD000000000000021;
    v118 = 0x800000021478F970;
    v119 = 0xD00000000000001CLL;
    v120 = v26;

    if (v93(v116, &v168, &v117))
    {
      v27 = v98;

      LOBYTE(v168) = v65;
      v116[0] = v109;
      LOBYTE(v166[0]) = v90;
      v117 = 0xD00000000000001ELL;
      v118 = 0x800000021478F9A0;
      v119 = 0xD00000000000001CLL;
      v120 = v27;

      if (v91(v116, v166, &v117))
      {
        v38 = v98;

        v186 = 0;
        v116[0] = v107;
        v116[1] = v108;
        LOBYTE(v168) = v85;
        v117 = 0xD00000000000001DLL;
        v118 = 0x800000021478F9C0;
        v119 = 0xD00000000000001CLL;
        v120 = v38;

        sub_213FDC9D0(v88, v87);
        if (v84(v116, &v168, &v117))
        {
          v42 = v87;
          v41 = v88;
          sub_213FDC6D0(v88, v87);
          v43 = v98;

          sub_213FDC6D0(v41, v42);
          v116[0] = v105;
          v116[1] = v106;
          LOBYTE(v168) = v79;
          v117 = 0xD000000000000025;
          v118 = 0x800000021478F9E0;
          v119 = 0xD00000000000001CLL;
          v120 = v43;

          sub_213FDC9D0(v82, v81);
          if (v78(v116, &v168, &v117))
          {
            v47 = v81;
            v46 = v82;
            sub_213FDC6D0(v82, v81);
            v48 = v98;

            sub_213FDC6D0(v46, v47);
            v116[0] = v103;
            LOBYTE(v116[1]) = v104;
            LOBYTE(v168) = v76;
            v117 = 0xD000000000000022;
            v118 = 0x800000021478FA10;
            v119 = 0xD00000000000001CLL;
            v120 = v48;

            if (v75(v116, &v168, &v117))
            {
              v51 = v98;

              v181 = 0;
              v168 = v63;
              v169 = v69;
              LOBYTE(v116[0]) = v71;
              v117 = 0xD000000000000023;
              v118 = 0x800000021478FA40;
              v119 = 0xD00000000000001CLL;
              v120 = v51;

              sub_213FDC9D0(v72, v73);
              if (v70(&v168, v116, &v117))
              {
                v55 = v72;
                v54 = v73;
                sub_213FDC6D0(v72, v73);

                (*(v115 + 8))(v8, v4);
                v56 = v74;

                sub_213FDC6D0(v55, v54);
                v116[0] = v96;
                v116[1] = v101;
                v116[2] = v113;
                v116[3] = v111;
                LOBYTE(v116[4]) = v100;
                *(&v116[4] + 1) = v188[0];
                HIDWORD(v116[4]) = *(v188 + 3);
                v116[5] = v93;
                v116[6] = v95;
                v116[7] = v112;
                v116[8] = v110;
                LOBYTE(v116[9]) = v94;
                *(&v116[9] + 1) = *v187;
                HIDWORD(v116[9]) = *&v187[3];
                v116[10] = v91;
                v116[11] = v92;
                v116[12] = v109;
                *(&v116[18] + 1) = *v183;
                HIDWORD(v116[23]) = *&v182[3];
                *(&v116[23] + 1) = *v182;
                LODWORD(v99) = v186;
                LOBYTE(v116[13]) = v186;
                LOBYTE(v55) = v90;
                BYTE1(v116[13]) = v90;
                *(&v116[13] + 2) = v184;
                HIWORD(v116[13]) = v185;
                v57 = v84;
                v116[14] = v84;
                v58 = v86;
                v116[15] = v86;
                v59 = v108;
                v116[16] = v107;
                v116[17] = v108;
                LOBYTE(v54) = v85;
                LOBYTE(v116[18]) = v85;
                HIDWORD(v116[18]) = *&v183[3];
                v116[19] = v78;
                v116[20] = v80;
                v116[21] = v105;
                v116[22] = v106;
                LOBYTE(v116[23]) = v79;
                v116[24] = v75;
                v116[25] = v77;
                v116[26] = v103;
                LOBYTE(v116[27]) = v104;
                LODWORD(v115) = v181;
                BYTE1(v116[27]) = v181;
                BYTE2(v116[27]) = v76;
                BYTE3(v116[27]) = v102;
                v116[28] = v70;
                v116[29] = v56;
                v60 = v63;
                v116[30] = v63;
                v116[31] = v69;
                LOBYTE(v116[32]) = v71;
                memcpy(v189, v116, 0x101uLL);
                sub_2142FF994(v116, &v117);
                __swift_destroy_boxed_opaque_existential_1(v114);
                v117 = v96;
                v118 = v101;
                v119 = v113;
                v120 = v111;
                v121 = v100;
                v123 = v93;
                v124 = v95;
                v125 = v112;
                v126 = v110;
                *v122 = v188[0];
                *&v122[3] = *(v188 + 3);
                v127 = v94;
                *v128 = *v187;
                *&v128[3] = *&v187[3];
                v129 = v91;
                v130 = v92;
                v131 = v109;
                v132 = v99;
                v133 = v55;
                v134 = v184;
                v135 = v185;
                v136 = v57;
                v137 = v58;
                v138 = v107;
                v139 = v59;
                v140 = v54;
                *v141 = *v183;
                *&v141[3] = *&v183[3];
                v142 = v78;
                v143 = v80;
                v144 = v105;
                v145 = v106;
                v146 = v79;
                *&v147[3] = *&v182[3];
                *v147 = *v182;
                v148 = v75;
                v149 = v77;
                v150 = v103;
                v151 = v104;
                v152 = v115;
                v153 = v76;
                v154 = v102;
                v155 = v70;
                v156 = v74;
                v157 = v60;
                v35 = v69;
                goto LABEL_8;
              }

              sub_214031C4C();
              swift_allocError();
              *v61 = 0xD000000000000023;
              v61[1] = 0x800000021478FA40;
              v62 = v98;
              v61[2] = 0xD00000000000001CLL;
              v61[3] = v62;
              swift_willThrow();

              (*(v115 + 8))(v8, v4);

              sub_213FDC6D0(v72, v73);
              v33 = v111;
              v97 = v110;
              v88 = v107;
              v89 = v112;
              v87 = v108;
              v82 = v105;
              v83 = v109;
              v81 = v106;
              v68 = v103;
              v67 = v104;
            }

            else
            {

              sub_214031C4C();
              swift_allocError();
              *v52 = 0xD000000000000022;
              v52[1] = 0x800000021478FA10;
              v53 = v98;
              v52[2] = 0xD00000000000001CLL;
              v52[3] = v53;
              swift_willThrow();
              (*(v115 + 8))(v8, v4);

              v181 = v64;
              v33 = v111;
              v97 = v110;
              v88 = v107;
              v89 = v112;
              v87 = v108;
              v82 = v105;
              v83 = v109;
              v81 = v106;
            }
          }

          else
          {
            sub_214031C4C();
            swift_allocError();
            *v49 = 0xD000000000000025;
            v49[1] = 0x800000021478F9E0;
            v50 = v98;
            v49[2] = 0xD00000000000001CLL;
            v49[3] = v50;
            swift_willThrow();

            (*(v115 + 8))(v8, v4);

            sub_213FDC6D0(v82, v81);
            v33 = v111;
            v97 = v110;
            v83 = v109;
            v88 = v107;
            v89 = v112;
            v87 = v108;
          }
        }

        else
        {
          sub_214031C4C();
          swift_allocError();
          *v44 = 0xD00000000000001DLL;
          v44[1] = 0x800000021478F9C0;
          v45 = v98;
          v44[2] = 0xD00000000000001CLL;
          v44[3] = v45;
          swift_willThrow();

          (*(v115 + 8))(v8, v4);

          sub_213FDC6D0(v88, v87);
          v33 = v111;
          v89 = v112;
          v97 = v110;
          v83 = v109;
        }
      }

      else
      {

        sub_214031C4C();
        swift_allocError();
        *v39 = 0xD00000000000001ELL;
        v39[1] = 0x800000021478F9A0;
        v40 = v98;
        v39[2] = 0xD00000000000001CLL;
        v39[3] = v40;
        swift_willThrow();
        (*(v115 + 8))(v8, v4);
        v65 = v168;

        v186 = v65;
        v33 = v111;
        v89 = v112;
        v97 = v110;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v36 = 0xD000000000000021;
      v36[1] = 0x800000021478F970;
      v37 = v98;
      v36[2] = 0xD00000000000001CLL;
      v36[3] = v37;
      swift_willThrow();

      (*(v115 + 8))(v8, v4);

      v33 = v111;
    }

    v30 = v96;
    v34 = v101;
    v31 = v114;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000019;
    v28[1] = 0x800000021478F950;
    v29 = v98;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v29;
    swift_willThrow();

    v30 = v96;
    v31 = v114;
    v32 = v115;

    (*(v32 + 8))(v11, v4);
    v33 = v99;

    v34 = v101;

    v113 = v66;
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  v117 = v30;
  v118 = v34;
  v119 = v113;
  v120 = v33;
  v121 = v100;
  v123 = v93;
  v124 = v95;
  *v122 = v188[0];
  *&v122[3] = *(v188 + 3);
  v125 = v89;
  v126 = v97;
  v127 = v94;
  *v128 = *v187;
  *&v128[3] = *&v187[3];
  v129 = v91;
  v130 = v92;
  v131 = v83;
  v132 = v186;
  v133 = v90;
  v134 = v184;
  v135 = v185;
  v136 = v84;
  v137 = v86;
  v138 = v88;
  v139 = v87;
  v140 = v85;
  *v141 = *v183;
  *&v141[3] = *&v183[3];
  v142 = v78;
  v143 = v80;
  v144 = v82;
  v145 = v81;
  v146 = v79;
  *&v147[3] = *&v182[3];
  *v147 = *v182;
  v148 = v75;
  v149 = v77;
  v150 = v68;
  v151 = v67;
  v152 = v181;
  v153 = v76;
  v154 = v102;
  v155 = v70;
  v156 = v74;
  v35 = v73;
  v157 = v72;
LABEL_8:
  v158 = v35;
  v159 = v71;
  return sub_2142FF8EC(&v117);
}

uint64_t sub_2141B09D0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089B8, &qword_2146F5260);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v29 = *(v1 + 96);
  v30 = v8;
  v34 = *(v1 + 104);
  v10 = *(v1 + 128);
  v27 = *(v1 + 136);
  v28 = v10;
  v11 = *(v1 + 168);
  v25 = *(v1 + 176);
  v26 = v11;
  v24 = *(v1 + 208);
  LODWORD(v11) = *(v1 + 216);
  v22 = *(v1 + 217);
  v23 = v11;
  v21 = *(v1 + 219);
  v12 = *(v1 + 240);
  v19 = *(v1 + 248);
  v20 = v12;
  v14 = a1[3];
  v13 = a1[4];
  v15 = a1;
  v17 = &v19 - v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_2142FF940();
  sub_2146DAA28();
  if (!v6)
  {
    goto LABEL_11;
  }

  LOBYTE(v32) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v31 + 8))(v17, v4);
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  LOBYTE(v32) = 1;

  sub_2146DA328();

  if (v34)
  {
    goto LABEL_11;
  }

  LOBYTE(v32) = 2;
  sub_2146DA368();
  if (v27 == 1)
  {
    goto LABEL_11;
  }

  v32 = v28;
  v33 = v27;
  v35 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v25 == 1)
  {
    goto LABEL_11;
  }

  v32 = v26;
  v33 = v25;
  v35 = 4;
  sub_2146DA388();
  if (v22)
  {
    goto LABEL_11;
  }

  v32 = v24;
  LOBYTE(v33) = v23 & 1;
  v35 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
  sub_2142E1C30();
  sub_2146DA388();
  LOBYTE(v32) = v21;
  v35 = 6;
  sub_214063E30();
  sub_2146DA388();
  if (v19 == 1)
  {
LABEL_11:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v32 = v20;
    v33 = v19;
    v35 = 7;
    sub_2146DA388();
    return (*(v31 + 8))(v17, v4);
  }

  return result;
}

uint64_t sub_2141B0E68@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2141B0E78()
{
  v1 = 0x7363696C617469;
  if (*v0 != 1)
  {
    v1 = 0x6E696C7265646E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684828002;
  }
}

uint64_t sub_2141B0ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214370918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141B0EF8(uint64_t a1)
{
  v2 = sub_2142FF9F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B0F34(uint64_t a1)
{
  v2 = sub_2142FF9F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B0F70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089C0, &qword_2146F5268);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF9F0();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_2146DA178();
    v18 = 1;
    v16 = sub_2146DA178();
    v17 = 2;
    v13 = sub_2146DA178();
    (*(v6 + 8))(v9, v5);
    v14 = v16 & 1;
    *a2 = v11 & 1;
    a2[1] = v14;
    a2[2] = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B1148(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089D0, &qword_2146F5270);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = v1[1];
  v12[3] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FF9F0();
  sub_2146DAA28();
  v15 = 0;
  sub_2146DA338();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_2146DA338();
  v13 = 2;
  sub_2146DA338();
  return (*(v5 + 8))(v8, v4);
}

BlastDoor::MBDRichCards __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MBDRichCards.init(with:urlToTransferMap:)(Swift::OpaquePointer with, BlastDoor::MBDUrlToTransferMap_optional urlToTransferMap)
{
  v3 = *urlToTransferMap.value.urlToTransferGuids._rawValue;
  v2->_rawValue = with._rawValue;
  v2[1]._rawValue = v3;
  result.urlToTransferMap = urlToTransferMap;
  result.cards = with;
  return result;
}

unint64_t sub_2141B1340()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x7364726163;
  }

  *v0;
  return result;
}

uint64_t sub_2141B137C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7364726163 && a2 == 0xE500000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000214788010 == a2)
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

uint64_t sub_2141B145C(uint64_t a1)
{
  v2 = sub_2142FFA44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B1498(uint64_t a1)
{
  v2 = sub_2142FFA44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDRichCards.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089D8, &qword_2146F5278);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFA44();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089E8, &qword_2146F5280);
    v15 = 0;
    sub_2142FFA98();
    sub_2146DA1C8();
    v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A00, &qword_2146F5288);
    v15 = 1;
    sub_2142FFB70();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MBDRichCards.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A18, &qword_2146F5290);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFA44();

  sub_2146DAA28();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9089E8, &qword_2146F5280);
  sub_2142FFC48();
  sub_2146DA388();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A00, &qword_2146F5288);
    sub_2142FFD20();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2141B190C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000002147957A0 == a2)
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

uint64_t sub_2141B19A0(uint64_t a1)
{
  v2 = sub_2142FFDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B19DC(uint64_t a1)
{
  v2 = sub_2142FFDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B1A18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A40, &unk_2146F5298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFDF8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
    sub_2142FFE4C(&qword_27C908A50);
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B1BBC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A58, &qword_2146F52A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFDF8();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904CA0, &qword_2146EE770);
  sub_2142FFE4C(&qword_27C908A60);
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141B1DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
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

uint64_t sub_2141B1E24(uint64_t a1)
{
  v2 = sub_2142FFEB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B1E60(uint64_t a1)
{
  v2 = sub_2142FFEB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A68, &qword_2146F52B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFEB8();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A78, &qword_2146F52B8);
    sub_2142FFF0C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StyleSheet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A90, &qword_2146F52C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2142FFEB8();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908A78, &qword_2146F52B8);
  sub_2142FFFE4();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

__n128 sub_2141B21C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a7 + 32);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  result = *a7;
  v10 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v10;
  *(a8 + 80) = v8;
  return result;
}

uint64_t sub_2141B21E0()
{
  v1 = 0x54746E65746E6F63;
  v2 = 0x4C746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    v1 = 0x49746E65746E6F63;
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

uint64_t sub_2141B2274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214370A38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2141B229C(uint64_t a1)
{
  v2 = sub_2143000BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B22D8(uint64_t a1)
{
  v2 = sub_2143000BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B2314@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AA8, &qword_2146F52C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143000BC();
  sub_2146DAA08();
  if (!v2)
  {
    v24 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v28 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = *(&v25 + 1);
    v23 = v25;
    v28 = 1;
    sub_2146DA1C8();
    v22 = v11;
    v21 = *(&v25 + 1);
    v12 = v25;
    v28 = 2;
    sub_2146DA1C8();
    v13 = v12;
    v14 = v25;
    v28 = 3;
    sub_21405D0D0();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v16 = v27;
    v17 = v24;
    v18 = v22;
    *v24 = v23;
    v17[1] = v18;
    v19 = v21;
    v17[2] = v13;
    v17[3] = v19;
    *(v17 + 2) = v14;
    v20 = v26;
    *(v17 + 3) = v25;
    *(v17 + 4) = v20;
    *(v17 + 80) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B260C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AB0, &qword_2146F52D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v25 = *(v1 + 24);
  v26 = v10;
  v11 = *(v1 + 32);
  v23 = *(v1 + 40);
  v24 = v11;
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 72);
  v21 = *(v1 + 64);
  v22 = v13;
  v19 = v12;
  v20 = v14;
  v33 = *(v1 + 80);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143000BC();

  sub_2146DAA28();
  v28 = v9;
  v29 = v8;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v16 = v27;
  sub_2146DA388();
  if (v16)
  {
  }

  else
  {
    v17 = v24;

    v28 = v26;
    v29 = v25;
    v34 = 1;
    sub_2146DA388();
    v28 = v17;
    v29 = v23;
    v34 = 2;
    sub_2146DA388();
    v28 = v19;
    v29 = v22;
    v30 = v21;
    v31 = v20;
    v32 = v33;
    v34 = 3;
    sub_214300110(v19, v22, v21, v20, v33);
    sub_21405D124();
    sub_2146DA388();
    sub_2143001FC(v28, v29, v30, v31, v32);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2141B28D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_2141B28F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000002147957C0 == a2)
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

uint64_t sub_2141B2988(uint64_t a1)
{
  v2 = sub_2143002E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B29C4(uint64_t a1)
{
  v2 = sub_2143002E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2141B2A00@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908AB8, &qword_2146F52D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143002E4();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2141B2BC8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = v4[1];
  v14 = *v4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();

  sub_2146DAA28();
  v16 = v14;
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2141B2D7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_2141B2DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7473694C70696863 && a2 == 0xE800000000000000)
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

uint64_t sub_2141B2E30(uint64_t a1)
{
  v2 = sub_214300338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2141B2E6C(uint64_t a1)
{
  v2 = sub_214300338();

  return MEMORY[0x2821FE720](a1, v2);
}