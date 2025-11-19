uint64_t sub_1C0D058D0(void *a1, uint64_t a2)
{
  v4 = sub_1C0D786CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v9 = sub_1C0D786BC();
  (*(v5 + 8))(v8, v4);
  v10 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  v11 = [v10 serializedPublicKey_];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C0D7832C();
    v15 = v14;

    v16 = *(a2 + 8);
    v17 = *(a2 + 16);
    strcpy(v25, "HashToGroup-");
    BYTE5(v25[1]) = 0;
    HIWORD(v25[1]) = -5120;
    MEMORY[0x1C68E3B00](v16, v17);
    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](0x6F746172656E6567, 0xEA00000000004872);

    v18 = sub_1C0D07698(v25[0], v25[1]);
    v20 = v19;
    sub_1C0D3F5F4(v13, v15, v18, v19);
    v22 = v21;
    sub_1C0CF448C(v18, v20);
    sub_1C0CF448C(v13, v15);
    *a1 = v22;
    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1C0D05B24(id a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v13 = *(v6 + 72);
  v39[0] = *(v6 + 56);
  v39[1] = v13;
  v14 = *(v6 + 96);
  v40 = *(v6 + 88);
  v15 = *(v6 + 104);
  v16 = sub_1C0D05CEC(v14, v15, v39, a1, a2, a3, a4);
  if (!v7)
  {
    if (v16)
    {
      v31 = *(v6 + 8);
      v33 = *v6;
      v27 = *(v6 + 24);
      v29 = *(v6 + 16);
      v25 = *(v6 + 32);
      v26 = *(v6 + 40);
      v17 = *(v6 + 48);
      v41 = 0;
      v37 = a1;
      v36 = a2;
      v35 = a3;
      sub_1C0D78BFC();
      v34 = v33;
      v32 = v31;
      v30 = v29;
      v28 = v27;
      v18 = v25;
      v19 = v26;
      v20 = v17;
      v21 = v14;
      v22 = v15;
      v23 = a5;
      sub_1C0D13734(v39, v38, &qword_1EBE6D420, &qword_1C0D7BF10);
      sub_1C0D0620C(v37, v36, v35, v34, v32, v30, v28, a6, v18, v19, v20, v21, v22, v23, v39);
    }

    else
    {
      sub_1C0CFC3D4();
      swift_allocError();
      *v24 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1C0D05CEC(void *a1, void *a2, uint64_t a3, id a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = a4;
  if ([a4 isEqual_])
  {
    goto LABEL_7;
  }

  if ([v12 isEqual_])
  {
    goto LABEL_7;
  }

  v52 = a6;
  v60 = a7;
  v16 = sub_1C0D0DFC0(v12, v12);
  v17 = [v12 isEqual_];

  if (v17 & 1) != 0 || ([a5 isEqual_] & 1) != 0 || (objc_msgSend(a5, sel_isEqual_, a2) & 1) != 0 || (v18 = sub_1C0D0DFC0(a5, a5), v19 = objc_msgSend(a5, sel_isEqual_, v18), v18, (v19))
  {
LABEL_7:
    LOBYTE(v20) = 0;
    return v20 & 1;
  }

  v22 = *(a3 + 8);
  v23 = *(a3 + 16);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](v22, v23);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0xD000000000000011, 0x80000001C0D808D0);

  v53 = v22;
  v54 = v23;
  v56 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  v24 = sub_1C0CF49E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  v27 = v25 >> 1;
  v28 = v26 + 1;
  v51 = v26;
  if (v25 >> 1 <= v26)
  {
    v43 = sub_1C0CF49E8((v25 > 1), v26 + 1, 1, v24);
    v26 = v51;
    v24 = v43;
    v25 = *(v43 + 3);
    v27 = v25 >> 1;
  }

  *(v24 + 2) = v28;
  v29 = &v24[16 * v26];
  *(v29 + 4) = 12653;
  *(v29 + 5) = 0xE200000000000000;
  v55 = v24;
  v30 = v26 + 2;
  if (v27 < (v26 + 2))
  {
    v44 = sub_1C0CF49E8((v25 > 1), v26 + 2, 1, v24);
    v26 = v51;
    v24 = v44;
  }

  *(v24 + 2) = v30;
  v31 = &v24[16 * v28];
  *(v31 + 32) = 12909;
  *(v31 + 40) = 0xE200000000000000;
  v32 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v24 + 3);
    v28 = v26 + 3;
    if ((v26 + 3) <= (v31 >> 1))
    {
      goto LABEL_15;
    }
  }

  v45 = sub_1C0CF49E8((v31 > 1), v28, 1, v24);
  v26 = v51;
  v24 = v45;
LABEL_15:
  *(v24 + 2) = v28;
  v33 = &v24[16 * v30];
  *(v33 + 32) = 12658;
  *(v33 + 40) = 0xE200000000000000;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = *(v24 + 3);
    v30 = v26 + 4;
    v50 = v28 - 1;
    if ((v26 + 4) <= (v33 >> 1))
    {
      goto LABEL_17;
    }
  }

  v24 = sub_1C0CF49E8((v33 > 1), v30, 1, v24);
LABEL_17:
  *(v24 + 2) = v30;
  v34 = &v24[16 * v28];
  *(v34 + 4) = 12914;
  *(v34 + 5) = 0xE200000000000000;
  v55 = v24;
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v28 = sub_1C0D2EC40(1198417255, 0xE400000000000000, a1, &v53);
  a2 = sub_1C0D2EC40(1215194471, 0xE400000000000000, a2, &v53);
  v48 = sub_1C0D2EC40(0x636E45316DLL, 0xE500000000000000, v12, &v53);
  v49 = sub_1C0D2EC40(0x636E45326DLL, 0xE500000000000000, a5, &v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
  v12 = swift_allocObject();
  v47 = xmmword_1C0D7BEE0;
  *(v12 + 1) = xmmword_1C0D7BEE0;
  *(v12 + 4) = v51;
  *(v12 + 5) = v28;
  *(v12 + 6) = v50;
  *(v12 + 7) = a2;
  a5 = v58;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_31:
    a5 = sub_1C0CF4AF4(0, a5[2] + 1, 1, a5);
  }

  v36 = a5[2];
  v35 = a5[3];
  if (v36 >= v35 >> 1)
  {
    a5 = sub_1C0CF4AF4((v35 > 1), v36 + 1, 1, a5);
  }

  a5[2] = v36 + 1;
  v37 = &a5[2 * v36];
  v37[4] = v48;
  v37[5] = v12;
  v58 = a5;
  v38 = swift_allocObject();
  *(v38 + 16) = v47;
  *(v38 + 32) = v32;
  *(v38 + 40) = v28;
  *(v38 + 48) = v30 - 1;
  *(v38 + 56) = a2;
  v40 = a5[2];
  v39 = a5[3];
  if (v40 >= v39 >> 1)
  {
    v46 = v38;
    a5 = sub_1C0CF4AF4((v39 > 1), v40 + 1, 1, a5);
    v38 = v46;
  }

  a5[2] = v40 + 1;
  v41 = &a5[2 * v40];
  v41[4] = v49;
  v41[5] = v38;
  v59[0] = v53;
  v59[1] = v54;
  v59[2] = v55;
  v59[3] = v56;
  v59[4] = v57;
  v59[5] = a5;
  v20 = v59;
  v42 = sub_1C0D21C50(v52, v60);
  if (!v8)
  {
    LOBYTE(v20) = v42;
  }

  return v20 & 1;
}

void sub_1C0D0620C(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X4>, void *a5@<X5>, void *a6@<X6>, void *a7@<X7>, void *a8@<X8>, void *a9, void *a10, void *a11, id a12, void *a13, void *a14, uint64_t a15)
{
  v132 = sub_1C0D0DE9C(a14, a12);
  v19 = sub_1C0D30290(a14, a7);
  v123 = sub_1C0D0DE9C(v19, a13);

  v122 = sub_1C0D0DE9C(a14, a10);
  v121 = sub_1C0D0DE9C(a14, a11);
  v120 = sub_1C0D0DE9C(a14, a13);
  v20 = sub_1C0D0DE9C(a5, a1);
  v21 = sub_1C0D0DFC0(a9, v20);

  v22 = sub_1C0D0DE9C(a6, a2);
  v23 = sub_1C0D0DFC0(v21, v22);

  v24 = sub_1C0D0DE9C(a14, v23);
  v25 = *(a15 + 8);
  v26 = *(a15 + 16);
  *&v125 = v25;
  *(&v125 + 1) = v26;
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](v25, v26);
  sub_1C0D13578(a15, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0xD000000000000012, 0x80000001C0D808B0);

  v126 = v125;
  *&v127 = MEMORY[0x1E69E7CC0];
  *(&v127 + 1) = MEMORY[0x1E69E7CC0];
  *&v128 = MEMORY[0x1E69E7CC0];
  *(&v128 + 1) = MEMORY[0x1E69E7CC0];
  v129 = MEMORY[0x1E69E7CC0];
  v124 = sub_1C0D21940(12408, 0xE200000000000000, a4);

  v97 = sub_1C0D21940(12664, 0xE200000000000000, a5);
  v99 = sub_1C0D21940(12920, 0xE200000000000000, a6);
  v27 = sub_1C0D21940(0x69646E696C423078, 0xEA0000000000676ELL, a7);

  v28 = sub_1C0D21940(98, 0xE100000000000000, a14);
  v29 = sub_1C0D30290(a14, a5);

  v105 = sub_1C0D21940(12660, 0xE200000000000000, v29);
  v30 = sub_1C0D30290(a14, a6);

  v109 = sub_1C0D21940(12916, 0xE200000000000000, v30);
  v31 = sub_1C0D2EAB0(1198417255, 0xE400000000000000, a12, &v126);
  v32 = sub_1C0D2EAB0(1215194471, 0xE400000000000000, a13, &v126);
  v103 = sub_1C0D2EAB0(0x636E45316DLL, 0xE500000000000000, a1, &v126);
  v102 = sub_1C0D2EAB0(0x636E45326DLL, 0xE500000000000000, a2, &v126);
  v100 = sub_1C0D2EAB0(85, 0xE100000000000000, v132, &v126);
  v106 = v24;
  v104 = sub_1C0D2EAB0(0x6D69725055636E65, 0xE900000000000065, v24, &v126);
  v111 = sub_1C0D2EAB0(12376, 0xE200000000000000, a9, &v126);
  v113 = sub_1C0D2EAB0(12632, 0xE200000000000000, a10, &v126);
  v115 = sub_1C0D2EAB0(12888, 0xE200000000000000, a11, &v126);
  v96 = sub_1C0D2EAB0(0x7875413058, 0xE500000000000000, v123, &v126);
  v98 = sub_1C0D2EAB0(0x7875413158, 0xE500000000000000, v122, &v126);
  v117 = sub_1C0D2EAB0(0x7875413258, 0xE500000000000000, v121, &v126);
  v33 = sub_1C0D2EAB0(2020950344, 0xE400000000000000, v120, &v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C0D7BEE0;
  *(v34 + 32) = v124;
  *(v34 + 40) = v31;
  v101 = v31;
  v35 = v27;
  *(v34 + 48) = v27;
  *(v34 + 56) = v32;
  v36 = v129;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1C0CF4AF4(0, v36[2] + 1, 1, v36);
  }

  v38 = v36[2];
  v37 = v36[3];
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1C0CF4AF4((v37 > 1), v38 + 1, 1, v36);
  }

  v36[2] = v38 + 1;
  v39 = &v36[2 * v38];
  v40 = v111;
  v39[4] = v111;
  v39[5] = v34;
  v129 = v36;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C0D7B690;
  *(v41 + 32) = v97;
  *(v41 + 40) = v32;
  v43 = v36[2];
  v42 = v36[3];
  if (v43 >= v42 >> 1)
  {
    v86 = v41;
    v36 = sub_1C0CF4AF4((v42 > 1), v43 + 1, 1, v36);
    v41 = v86;
    v40 = v111;
  }

  v36[2] = v43 + 1;
  v44 = &v36[2 * v43];
  v44[4] = v113;
  v44[5] = v41;
  v129 = v36;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1C0D7B690;
  *(v45 + 32) = v99;
  *(v45 + 40) = v32;
  v47 = v36[2];
  v46 = v36[3];
  if (v47 >= v46 >> 1)
  {
    v87 = v45;
    v36 = sub_1C0CF4AF4((v46 > 1), v47 + 1, 1, v36);
    v45 = v87;
    v40 = v111;
  }

  v36[2] = v47 + 1;
  v48 = &v36[2 * v47];
  v48[4] = v115;
  v48[5] = v45;
  v129 = v36;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1C0D7B690;
  *(v49 + 32) = v28;
  *(v49 + 40) = v32;
  v51 = v36[2];
  v50 = v36[3];
  if (v51 >= v50 >> 1)
  {
    v88 = v49;
    v36 = sub_1C0CF4AF4((v50 > 1), v51 + 1, 1, v36);
    v49 = v88;
    v40 = v111;
  }

  v36[2] = v51 + 1;
  v52 = &v36[2 * v51];
  v52[4] = v33;
  v52[5] = v49;
  v129 = v36;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C0D7B690;
  *(v53 + 32) = v35;
  *(v53 + 40) = v33;
  v55 = v36[2];
  v54 = v36[3];
  if (v55 >= v54 >> 1)
  {
    v89 = v53;
    v36 = sub_1C0CF4AF4((v54 > 1), v55 + 1, 1, v36);
    v53 = v89;
    v40 = v111;
  }

  v36[2] = v55 + 1;
  v56 = &v36[2 * v55];
  v56[4] = v96;
  v56[5] = v53;
  v129 = v36;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1C0D7B690;
  *(v57 + 32) = v105;
  *(v57 + 40) = v32;
  v59 = v36[2];
  v58 = v36[3];
  if (v59 >= v58 >> 1)
  {
    v90 = v57;
    v36 = sub_1C0CF4AF4((v58 > 1), v59 + 1, 1, v36);
    v57 = v90;
    v40 = v111;
  }

  v36[2] = v59 + 1;
  v60 = &v36[2 * v59];
  v60[4] = v98;
  v60[5] = v57;
  v129 = v36;
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1C0D7B690;
  *(v61 + 32) = v28;
  *(v61 + 40) = v113;
  v63 = v36[2];
  v62 = v36[3];
  if (v63 >= v62 >> 1)
  {
    v91 = v61;
    v36 = sub_1C0CF4AF4((v62 > 1), v63 + 1, 1, v36);
    v61 = v91;
    v40 = v111;
  }

  v36[2] = v63 + 1;
  v64 = &v36[2 * v63];
  v64[4] = v98;
  v64[5] = v61;
  v129 = v36;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1C0D7B690;
  *(v65 + 32) = v28;
  *(v65 + 40) = v115;
  v67 = v36[2];
  v66 = v36[3];
  if (v67 >= v66 >> 1)
  {
    v92 = v65;
    v36 = sub_1C0CF4AF4((v66 > 1), v67 + 1, 1, v36);
    v65 = v92;
  }

  v36[2] = v67 + 1;
  v68 = &v36[2 * v67];
  v68[4] = v117;
  v68[5] = v65;
  v129 = v36;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1C0D7B690;
  v70 = v109;
  *(v69 + 32) = v109;
  *(v69 + 40) = v32;
  v72 = v36[2];
  v71 = v36[3];
  if (v72 >= v71 >> 1)
  {
    v93 = v69;
    v36 = sub_1C0CF4AF4((v71 > 1), v72 + 1, 1, v36);
    v69 = v93;
    v70 = v109;
  }

  v36[2] = v72 + 1;
  v73 = &v36[2 * v72];
  v73[4] = v117;
  v73[5] = v69;
  v129 = v36;
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1C0D7B690;
  *(v74 + 32) = v28;
  *(v74 + 40) = v101;
  v76 = v36[2];
  v75 = v36[3];
  if (v76 >= v75 >> 1)
  {
    v94 = v74;
    v36 = sub_1C0CF4AF4((v75 > 1), v76 + 1, 1, v36);
    v74 = v94;
    v70 = v109;
  }

  v36[2] = v76 + 1;
  v77 = &v36[2 * v76];
  v77[4] = v100;
  v77[5] = v74;
  v129 = v36;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1C0D7BEF0;
  *(v78 + 32) = v28;
  *(v78 + 40) = v40;
  *(v78 + 48) = v105;
  *(v78 + 56) = v103;
  *(v78 + 64) = v70;
  *(v78 + 72) = v102;
  v80 = v36[2];
  v79 = v36[3];
  if (v80 >= v79 >> 1)
  {
    v36 = sub_1C0CF4AF4((v79 > 1), v80 + 1, 1, v36);
  }

  v36[2] = v80 + 1;
  v81 = &v36[2 * v80];
  v81[4] = v104;
  v81[5] = v78;

  v129 = v36;

  v130[0] = v126;
  v130[1] = v127;
  v130[2] = v128;
  v131 = v129;
  v82 = sub_1C0D21A5C();
  if (v108)
  {
    sub_1C0D13578(v130, &qword_1EBE6D4E0, &qword_1C0D7C038);
  }

  else
  {
    v84 = v82;
    v85 = v83;
    sub_1C0D13578(v130, &qword_1EBE6D4E0, &qword_1C0D7C038);
    *a8 = v132;
    a8[1] = v106;
    a8[2] = v123;
    a8[3] = v122;
    a8[4] = v121;
    a8[5] = v120;
    a8[6] = v84;
    a8[7] = v85;
  }
}

uint64_t sub_1C0D06CA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v116 = *MEMORY[0x1E69E9840];
  v14 = *(v7 + 64);
  v13 = *(v7 + 72);
  v104[0] = v14;
  v104[1] = v13;
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0x4374736575716572, 0xEE00747865746E6FLL);
  v15 = sub_1C0D07698(v14, v13);
  v17 = v16;
  v18 = sub_1C0D0E630(a2, a3, v15, v16);
  sub_1C0CF448C(v15, v17);
  if (v8)
  {
    goto LABEL_9;
  }

  if (a7 < 0 || (v93 = a7, a7 >= a6))
  {

    goto LABEL_8;
  }

  v19 = v14;
  v101 = v18;
  v20 = *v9;
  v87 = v9[1];
  v89 = v9[2];
  v21 = v9[5];
  v83 = v9[12];
  v84 = v9[13];
  v22 = *a1;
  v23 = *(a1 + 8);
  v91 = *(a1 + 24);
  v92 = *(a1 + 16);
  v85 = *(a1 + 40);
  v86 = *(a1 + 32);
  v24 = sub_1C0D0DFC0(*a1, *a1);
  v98[0] = v22;
  LOBYTE(v22) = [v22 isEqual_];

  if ((v22 & 1) != 0 || (v25 = sub_1C0D0DFC0(v23, v23), v26 = [v23 isEqual_], v25, v26))
  {

LABEL_8:
    LOBYTE(v15) = 0;
LABEL_9:
    v27 = *MEMORY[0x1E69E9840];
    return v15 & 1;
  }

  v82 = v21;
  v29 = sub_1C0D0DE9C(v20, v98[0]);
  v30 = sub_1C0D0DE9C(v87, v92);
  v31 = sub_1C0D0DFC0(v29, v30);

  v32 = sub_1C0D30290(v89, v101);
  v33 = sub_1C0D0DE9C(v32, v98[0]);

  v34 = sub_1C0D0DFC0(v31, v33);
  v90 = v23;
  v35 = sub_1C0D2BEDC(v34, v23);

  strcpy(v104, "HashToGroup-");
  BYTE5(v104[1]) = 0;
  HIWORD(v104[1]) = -5120;
  v36 = v19;
  v37 = v19;
  v38 = v13;
  MEMORY[0x1C68E3B00](v37, v13);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](6775124, 0xE300000000000000);

  v39 = sub_1C0D07698(v104[0], v104[1]);
  v41 = v40;
  sub_1C0D3F5F4(a4, a5, v39, v40);
  v43 = v42;
  sub_1C0CF448C(v39, v41);
  v44 = v43;
  v97 = v44;
  v45 = v91;
  v46 = v93;
  if (!v93)
  {
LABEL_14:
    v102 = v36;
    v103 = v38;
    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](v36, v38);
    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](0xD000000000000016, 0x80000001C0D80860);

    v104[0] = v102;
    v104[1] = v103;
    v106 = MEMORY[0x1E69E7CC0];
    v107 = MEMORY[0x1E69E7CC0];
    v108 = MEMORY[0x1E69E7CC0];
    v49 = sub_1C0CF49E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    v52 = v50 >> 1;
    v53 = v51 + 1;
    if (v50 >> 1 <= v51)
    {
      v49 = sub_1C0CF49E8((v50 > 1), v51 + 1, 1, v49);
      v50 = *(v49 + 3);
      v52 = v50 >> 1;
    }

    *(v49 + 2) = v53;
    v54 = &v49[16 * v51];
    *(v54 + 4) = 12653;
    *(v54 + 5) = 0xE200000000000000;
    v55 = v51 + 2;
    if (v52 < (v51 + 2))
    {
      v49 = sub_1C0CF49E8((v50 > 1), v51 + 2, 1, v49);
    }

    *(v49 + 2) = v55;
    v56 = &v49[16 * v53];
    *(v56 + 4) = 122;
    *(v56 + 5) = 0xE100000000000000;
    v105 = v49;
    v57 = v51 + 1;
    v95 = v51 + 1;
    if (__OFSUB__(v55, 1))
    {
      __break(1u);
    }

    else
    {
      v57 = *(v49 + 3);
      v53 = v51 + 3;
      if ((v51 + 3) <= (v57 >> 1))
      {
        goto LABEL_20;
      }
    }

    v49 = sub_1C0CF49E8((v57 > 1), v53, 1, v49);
LABEL_20:
    *(v49 + 2) = v53;
    v58 = &v49[16 * v55];
    *(v58 + 32) = 29229;
    *(v58 + 40) = 0xE200000000000000;
    v105 = v49;
    if (__OFSUB__(v53, 1))
    {
      __break(1u);
    }

    else
    {
      v58 = *(v49 + 3);
      v55 = v51 + 4;
      v81 = v53 - 1;
      if ((v51 + 4) <= (v58 >> 1))
      {
        goto LABEL_22;
      }
    }

    v49 = sub_1C0CF49E8((v58 > 1), v55, 1, v49);
LABEL_22:
    *(v49 + 2) = v55;
    v59 = &v49[16 * v53];
    *(v59 + 4) = 0x65636E6F6ELL;
    *(v59 + 5) = 0xE500000000000000;
    v105 = v49;
    *v88 = v55 - 1;
    if (__OFSUB__(v55, 1))
    {
      __break(1u);
    }

    else
    {
      v83 = sub_1C0D2EC40(1198417255, 0xE400000000000000, v83, v104);
      v60 = sub_1C0D2EC40(1215194471, 0xE400000000000000, v84, v104);
      v61 = sub_1C0D2EC40(85, 0xE100000000000000, v98[0], v104);
      sub_1C0D2EC40(0x6F43656D69725055, 0xEC00000074696D6DLL, v90, v104);
      v84 = sub_1C0D2EC40(0x74696D6D6F43316DLL, 0xE800000000000000, v92, v104);
      v90 = sub_1C0D2EC40(86, 0xE100000000000000, v35, v104);
      v38 = sub_1C0D2EC40(12632, 0xE200000000000000, v82, v104);
      v45 = sub_1C0D2EC40(6775156, 0xE300000000000000, v91, v104);
      v91 = sub_1C0D2EC40(1416521063, 0xE400000000000000, v97, v104);
      v92 = sub_1C0D2EC40(0x676154316DLL, 0xE500000000000000, v44, v104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
      v53 = swift_allocObject();
      *v98 = xmmword_1C0D7BEE0;
      *(v53 + 16) = xmmword_1C0D7BEE0;
      *(v53 + 32) = v51;
      *(v53 + 40) = v61;
      *(v53 + 48) = v95;
      *(v53 + 56) = v60;
      v46 = v108;
      v80 = v35;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_24:
        v63 = v46[2];
        v62 = v46[3];
        if (v63 >= v62 >> 1)
        {
          v46 = sub_1C0CF4AF4((v62 > 1), v63 + 1, 1, v46);
        }

        v46[2] = v63 + 1;
        v64 = &v46[2 * v63];
        v64[4] = v84;
        v64[5] = v53;
        v108 = v46;
        v65 = swift_allocObject();
        *(v65 + 16) = *v98;
        *(v65 + 32) = v95;
        *(v65 + 40) = v38;
        *(v65 + 48) = v81;
        *(v65 + 56) = v83;
        v67 = v46[2];
        v66 = v46[3];
        if (v67 >= v66 >> 1)
        {
          v76 = v65;
          v46 = sub_1C0CF4AF4((v66 > 1), v67 + 1, 1, v46);
          v65 = v76;
        }

        v46[2] = v67 + 1;
        v68 = &v46[2 * v67];
        v68[4] = v90;
        v68[5] = v65;
        v108 = v46;
        v69 = swift_allocObject();
        *(v69 + 16) = *v98;
        *(v69 + 32) = v51;
        *(v69 + 40) = v45;
        *(v69 + 48) = *v88;
        *(v69 + 56) = v45;
        v71 = v46[2];
        v70 = v46[3];
        if (v71 >= v70 >> 1)
        {
          v77 = v69;
          v46 = sub_1C0CF4AF4((v70 > 1), v71 + 1, 1, v46);
          v69 = v77;
        }

        v46[2] = v71 + 1;
        v72 = &v46[2 * v71];
        v72[4] = v91;
        v72[5] = v69;
        v108 = v46;
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1C0D7B690;
        *(v73 + 32) = v51;
        *(v73 + 40) = v45;
        v15 = v46[2];
        v74 = v46[3];
        if (v15 >= v74 >> 1)
        {
          v78 = v73;
          v46 = sub_1C0CF4AF4((v74 > 1), v15 + 1, 1, v46);
          v73 = v78;
        }

        v46[2] = v15 + 1;
        v75 = &v46[2 * v15];
        v75[4] = v92;
        v75[5] = v73;
        v110 = v104[0];
        v111 = v104[1];
        v112 = v105;
        v113 = v106;
        v114 = v107;
        v115 = v46;
        LOBYTE(v15) = sub_1C0D21C50(v86, v85);

        goto LABEL_9;
      }
    }

    v46 = sub_1C0CF4AF4(0, v46[2] + 1, 1, v46);
    goto LABEL_24;
  }

  v47 = v44;
  while (1)
  {
    LODWORD(v102) = 0;
    v48 = [v47 sub:v91 corecryptoError:&v102];
    if (!v48)
    {
      break;
    }

    v44 = v48;

    v47 = v44;
    v46 = (v46 - 1);
    if (!v46)
    {
      goto LABEL_14;
    }
  }

  v104[0] = 0;
  v104[1] = 0xE000000000000000;
  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD00000000000003FLL, 0x80000001C0D80820);
  v109 = v102;
  v79 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v79);

  sub_1C0D78EBC();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C0D07698(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;
  sub_1C0D78BFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4B0, &qword_1C0D7C010);
  if (swift_dynamicCast())
  {
    sub_1C0D13498(v39, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1C0D7819C();
    v39[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_1C0D13578(v39, &qword_1EBE6D4B8, &qword_1C0D7C018);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&v39[0] = a1;
    *(&v39[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v39;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1C0D78DFC();
  }

  sub_1C0D0EB00(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    v39[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v39[0] = sub_1C0D0F990(v8);
  *(&v39[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v39[0]);
  v10 = sub_1C0D773F0(sub_1C0D1379C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&v39[0] + 1) >> 62;
  if ((*(&v39[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&v39[0] + 16);
      v18 = *(*&v39[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(v39[0]), v39[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(v39[0]) - LODWORD(v39[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&v39[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&v39[0] >> 32;
      }

      else
      {
        v22 = BYTE14(v39[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1C0D782AC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(v39[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1C0D77C68(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1C0D78B2C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1C0D78B5C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1C0D78DFC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1C0D77C68(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1C0D78B3C();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1C0D782CC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1C0D782CC();
    sub_1C0CEACDC(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1C0CEACDC(v36, v6);
LABEL_63:
  v32 = v39[0];
  sub_1C0CF6468(*&v39[0], *(&v39[0] + 1));

  sub_1C0CF448C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

void sub_1C0D07BB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4C8, &qword_1C0D7C028);
  v16[3] = v8;
  v16[4] = sub_1C0CF3914(&qword_1EBE6C9C0, &qword_1EBE6D4C8, &qword_1C0D7C028);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_1C0D20850((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }
}

unint64_t sub_1C0D07CD0(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1C0D77CE4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1C0D77DA4(v3, v4);
    }

    else
    {
      v6 = sub_1C0D77E20(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1C0D07D8C(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D498, &qword_1C0D7BFF8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4A0, &qword_1C0D7C000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v44 - v8);
  v10 = *a1;
  v54 = *(a1 + 16);
  v55 = *(a1 + 32);
  v53 = v10;
  v11 = v10;
  v12 = v54;
  v49 = v10;
  v50 = v54;
  v51 = v55;
  sub_1C0D78BFC();
  sub_1C0CF6468(*(&v11 + 1), v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4A8, &qword_1C0D7C008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4B0, &qword_1C0D7C010);
  if (!swift_dynamicCast())
  {
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    sub_1C0D13578(v47, &qword_1EBE6D4B8, &qword_1C0D7C018);
    v13 = *(&v53 + 1);
    v14 = *(v11 + 16);
    v15 = v54 >> 62;
    if ((v54 >> 62) > 1)
    {
      v16 = 0;
      if (v15 != 2)
      {
        goto LABEL_15;
      }

      v17 = *(*(&v53 + 1) + 16);
      v18 = *(*(&v53 + 1) + 24);
      v19 = __OFSUB__(v18, v17);
      v13 = v18 - v17;
      if (!v19)
      {
LABEL_12:
        if (v13 >= v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v13;
        }

LABEL_15:
        *&v49 = sub_1C0D0F990(v16);
        *(&v49 + 1) = v20;
        MEMORY[0x1EEE9AC00](v49);
        *(&v44 - 2) = &v53;
        sub_1C0D77794(sub_1C0D1340C);
        v21 = *&v5[*(v2 + 48)];
        sub_1C0D13428(v5, v9);
        v22 = *(&v49 + 1) >> 62;
        if ((*(&v49 + 1) >> 62) > 1)
        {
          if (v22 != 2)
          {
            if (!v21)
            {
              goto LABEL_30;
            }

            v26 = 0;
LABEL_37:
            if (v26 < v21)
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            sub_1C0D782AC();
LABEL_39:
            sub_1C0D13578(v9, &qword_1EBE6D4A0, &qword_1C0D7C000);
            goto LABEL_40;
          }

          v24 = *(v49 + 16);
          v23 = *(v49 + 24);
          v19 = __OFSUB__(v23, v24);
          v25 = v23 - v24;
          if (v19)
          {
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
          }

          if (v21 != v25)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (!v22)
          {
            if (v21 == BYTE14(v49))
            {
              goto LABEL_30;
            }

            goto LABEL_25;
          }

          if (__OFSUB__(DWORD1(v49), v49))
          {
            goto LABEL_53;
          }

          if (v21 != DWORD1(v49) - v49)
          {
LABEL_25:
            if (v22 == 2)
            {
              v26 = *(v49 + 24);
            }

            else if (v22 == 1)
            {
              v26 = v49 >> 32;
            }

            else
            {
              v26 = BYTE14(v49);
            }

            goto LABEL_37;
          }
        }

LABEL_30:
        memset(v52, 0, 15);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4C0, &qword_1C0D7C020);
        if ((*(v9 + *(v27 + 56)) & 1) == 0)
        {
          v45 = *(v27 + 56);
          v28 = *v9;
          v29 = v9[1];
          v30 = *(*v9 + 16);
          if (v29 == v30)
          {
            LOBYTE(v31) = 0;
LABEL_33:
            *(v9 + v45) = 1;
            if (v31)
            {
              *&v47[0] = v52[0];
              *(v47 + 6) = *(v52 + 6);
              sub_1C0D782CC();
            }

            goto LABEL_39;
          }

          v37 = v27;
          LOBYTE(v31) = 0;
          while (v29 < v30)
          {
            v38 = *(v28 + v29 + 32);
            v9[1] = v29 + 1;
            v39 = *(v37 + 52);
            sub_1C0D7836C();
            sub_1C0D13530(&qword_1ED9076D8, MEMORY[0x1E6969050]);
            sub_1C0D78D4C();
            if (BYTE1(v47[0]) == 1)
            {
              goto LABEL_33;
            }

            v40 = v47[0];
            v41 = v9 + *(v6 + 44);
            v42 = *v41;
            v43 = *(v41 + 1);
            LOBYTE(v47[0]) = v38;
            BYTE1(v47[0]) = v40;
            v42(&v46, v47);
            *(v52 + v31) = v46;
            v31 = v31 + 1;
            if ((v31 >> 8))
            {
              goto LABEL_49;
            }

            if (v31 == 14)
            {
              *&v47[0] = v52[0];
              *(v47 + 6) = *(v52 + 6);
              sub_1C0D782CC();
              LOBYTE(v31) = 0;
            }

            v28 = *v9;
            v29 = v9[1];
            v30 = *(*v9 + 16);
            if (v29 == v30)
            {
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        goto LABEL_39;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v13 = BYTE6(v54);
      goto LABEL_12;
    }

    v19 = __OFSUB__(HIDWORD(v13), v13);
    LODWORD(v13) = HIDWORD(v13) - v13;
    if (v19)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v13 = v13;
    goto LABEL_12;
  }

  sub_1C0D13498(v47, v52);
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  sub_1C0D7819C();
  v49 = v47[0];
  __swift_destroy_boxed_opaque_existential_1(v52);
LABEL_40:
  v32 = v49;
  v33 = *(&v53 + 1);
  v34 = v54;
  sub_1C0CF6468(v49, *(&v49 + 1));

  sub_1C0CF448C(v33, v34);

  sub_1C0CF448C(v32, *(&v32 + 1));
  v35 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_1C0D0837C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>, void *a10)
{
  v122 = a7;
  v131 = a6;
  v129 = a5;
  v106 = a9;
  v140 = *MEMORY[0x1E69E9840];
  *&v123 = sub_1C0D786CC();
  v15 = *(v123 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v18 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 48);
  v116 = *(a1 + 40);
  v115 = v19;
  v121 = *(a1 + 56);
  v20 = sub_1C0D0DE9C(a2, *(a1 + 8));
  v118 = *a1;
  v130 = v20;
  v21 = sub_1C0D0DE9C(v118, v20);
  v125 = a10;
  v22 = sub_1C0D0DE9C(a4, a10);
  v128 = sub_1C0D0DFC0(v21, v22);

  v23 = sub_1C0D0DE9C(a2, *(a1 + 16));
  v24 = sub_1C0D0DE9C(a3, a8);
  v120 = v23;
  v127 = sub_1C0D0DFC0(v23, v24);

  v25 = *(a1 + 24);
  v119 = a4;
  v26 = a4;
  v27 = a3;
  v117 = v25;
  v28 = sub_1C0D0DE9C(v26, v25);
  v126 = a8;
  v29 = sub_1C0D0DE9C(a3, a8);
  v124 = sub_1C0D2BEDC(v28, v29);

  v30 = sub_1C0D053E8(v122, v121);
  v32 = v31;
  LODWORD(v133) = 0;
  sub_1C0D7884C();
  sub_1C0CF6468(v30, v32);
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v33 = sub_1C0D786BC();
  (*(v15 + 8))(v18, v123);
  v34 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v35 = sub_1C0D7830C();
  v36 = [v34 initWithData:v35 inGroup:v33 reduction:1 corecryptoError:&v133];

  sub_1C0CF448C(v30, v32);
  if (!v36)
  {
    v92 = v27;
    v93 = v133;
    sub_1C0CF8DE0();
    swift_allocError();
    *v94 = v93;
    *(v94 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v30, v32);
    sub_1C0CF448C(v129, v131);

    v91 = a1;
    goto LABEL_17;
  }

  *&v123 = v27;
  v121 = a1;
  sub_1C0CF448C(v30, v32);
  v37 = v118;
  v38 = sub_1C0D302E8(v36, v118);
  v39 = [v38 inverseModOrder];

  if (v39)
  {
    strcpy(&v133, "HashToGroup-");
    BYTE13(v133) = 0;
    HIWORD(v133) = -5120;
    v41 = v116;
    v42 = v115;
    MEMORY[0x1C68E3B00](v116, v115);
    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](6775124, 0xE300000000000000);

    v43 = sub_1C0D07698(v133, *(&v133 + 1));
    v45 = v44;
    v46 = v114;
    sub_1C0D3F5F4(v129, v131, v43, v44);
    v40 = v138;
    v113 = v46;
    if (!v46)
    {
      v48 = v47;
      sub_1C0CF448C(v43, v45);
      v114 = v39;
      v49 = sub_1C0D0DE9C(v39, v48);
      v50 = v37;
      v51 = sub_1C0D0DE9C(v37, v49);
      *&v132 = v41;
      *(&v132 + 1) = v42;
      sub_1C0D78BFC();
      MEMORY[0x1C68E3B00](v41, v42);
      sub_1C0D78BFC();
      MEMORY[0x1C68E3B00](0xD000000000000016, 0x80000001C0D80860);

      v133 = v132;
      *&v134 = MEMORY[0x1E69E7CC0];
      *(&v134 + 1) = MEMORY[0x1E69E7CC0];
      *&v135 = MEMORY[0x1E69E7CC0];
      *(&v135 + 1) = MEMORY[0x1E69E7CC0];
      v136 = MEMORY[0x1E69E7CC0];
      v52 = sub_1C0D21940(12653, 0xE200000000000000, v50);
      v53 = v119;
      v108 = sub_1C0D21940(122, 0xE100000000000000, v119);

      v54 = v123;
      v55 = sub_1C0D2C288(v123);

      v112 = sub_1C0D21940(29229, 0xE200000000000000, v55);
      v118 = v36;
      v119 = sub_1C0D21940(0x65636E6F6ELL, 0xE500000000000000, v36);
      v110 = sub_1C0D2EAB0(1198417255, 0xE400000000000000, v126, &v133);
      v56 = sub_1C0D2EAB0(1215194471, 0xE400000000000000, v125, &v133);
      v57 = sub_1C0D2EAB0(85, 0xE100000000000000, v130, &v133);
      sub_1C0D2EAB0(0x6F43656D69725055, 0xEC00000074696D6DLL, v127, &v133);
      v58 = sub_1C0D2EAB0(0x74696D6D6F43316DLL, 0xE800000000000000, v128, &v133);
      v107 = sub_1C0D2EAB0(86, 0xE100000000000000, v124, &v133);
      v59 = sub_1C0D2EAB0(12632, 0xE200000000000000, v117, &v133);
      v117 = v49;
      v60 = sub_1C0D2EAB0(6775156, 0xE300000000000000, v49, &v133);
      v116 = v48;
      v109 = sub_1C0D2EAB0(1416521063, 0xE400000000000000, v48, &v133);
      v115 = v51;
      v61 = sub_1C0D2EAB0(0x676154316DLL, 0xE500000000000000, v51, &v133);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
      v62 = swift_allocObject();
      v123 = xmmword_1C0D7BEE0;
      *(v62 + 16) = xmmword_1C0D7BEE0;
      v122 = v52;
      *(v62 + 32) = v52;
      *(v62 + 40) = v57;
      v63 = v108;
      *(v62 + 48) = v108;
      *(v62 + 56) = v56;
      v64 = v136;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v64 = sub_1C0CF4AF4(0, v64[2] + 1, 1, v64);
      }

      v67 = v64[2];
      v66 = v64[3];
      if (v67 >= v66 >> 1)
      {
        v64 = sub_1C0CF4AF4((v66 > 1), v67 + 1, 1, v64);
      }

      v64[2] = v67 + 1;
      v68 = &v64[2 * v67];
      v68[4] = v58;
      v68[5] = v62;
      v136 = v64;
      v69 = swift_allocObject();
      *(v69 + 16) = v123;
      *(v69 + 32) = v63;
      *(v69 + 40) = v59;
      v70 = v110;
      *(v69 + 48) = v112;
      *(v69 + 56) = v70;
      v72 = v64[2];
      v71 = v64[3];
      if (v72 >= v71 >> 1)
      {
        v102 = v69;
        v64 = sub_1C0CF4AF4((v71 > 1), v72 + 1, 1, v64);
        v69 = v102;
      }

      v73 = v130;
      v74 = v128;
      v75 = v126;
      v64[2] = v72 + 1;
      v76 = &v64[2 * v72];
      v76[4] = v107;
      v76[5] = v69;
      v136 = v64;
      v77 = swift_allocObject();
      *(v77 + 16) = v123;
      v78 = v122;
      *(v77 + 32) = v122;
      *(v77 + 40) = v60;
      *(v77 + 48) = v119;
      *(v77 + 56) = v60;
      v80 = v64[2];
      v79 = v64[3];
      if (v80 >= v79 >> 1)
      {
        v103 = v77;
        v64 = sub_1C0CF4AF4((v79 > 1), v80 + 1, 1, v64);
        v77 = v103;
        v78 = v122;
      }

      v64[2] = v80 + 1;
      v81 = &v64[2 * v80];
      v81[4] = v109;
      v81[5] = v77;
      v136 = v64;
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1C0D7B690;
      *(v82 + 32) = v78;
      *(v82 + 40) = v60;
      v84 = v64[2];
      v83 = v64[3];
      if (v84 >= v83 >> 1)
      {
        v64 = sub_1C0CF4AF4((v83 > 1), v84 + 1, 1, v64);
      }

      v85 = v121;
      v86 = v120;

      v64[2] = v84 + 1;
      v87 = &v64[2 * v84];
      v87[4] = v111;
      v87[5] = v82;
      v136 = v64;
      v139 = v64;
      v137 = v133;
      v138[0] = v134;
      v138[1] = v135;
      v88 = v113;
      v89 = sub_1C0D21A5C();
      if (!v88)
      {
        v96 = v89;
        v97 = v90;

        sub_1C0D13578(&v137, &qword_1EBE6D4E0, &qword_1C0D7C038);
        sub_1C0CF448C(v129, v131);
        result = sub_1C0D13578(v85, &qword_1EBE6D450, &unk_1C0D7BF20);
        v98 = v106;
        v99 = v127;
        *v106 = v73;
        v98[1] = v99;
        v100 = v117;
        v98[2] = v74;
        v98[3] = v100;
        v98[4] = v96;
        v98[5] = v97;
        goto LABEL_19;
      }

      sub_1C0D13578(&v137, &qword_1EBE6D4E0, &qword_1C0D7C038);
      sub_1C0CF448C(v129, v131);

      v91 = v85;
LABEL_17:
      result = sub_1C0D13578(v91, &qword_1EBE6D450, &unk_1C0D7BF20);
LABEL_19:
      v101 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  v104 = *(v40 - 32);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1C0D08F3C(void *a1, void *a2, void *a3, void *a4, id a5, void *a6, uint64_t a7)
{
  v14 = sub_1C0D0DE9C(a1, a5);
  v15 = sub_1C0D0DE9C(a3, a6);
  v48 = sub_1C0D0DFC0(v14, v15);

  v16 = sub_1C0D0DE9C(a2, a5);
  v17 = sub_1C0D0DE9C(a4, a6);
  v40 = sub_1C0D0DFC0(v16, v17);

  v18 = *(a7 + 8);
  v19 = *(a7 + 16);
  *&v41 = v18;
  *(&v41 + 1) = v19;
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](v18, v19);
  sub_1C0D13578(a7, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0xD000000000000011, 0x80000001C0D808D0);

  v42 = v41;
  *&v43 = MEMORY[0x1E69E7CC0];
  *(&v43 + 1) = MEMORY[0x1E69E7CC0];
  *&v44 = MEMORY[0x1E69E7CC0];
  *(&v44 + 1) = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v20 = sub_1C0D21940(12653, 0xE200000000000000, a1);

  v35 = sub_1C0D21940(12909, 0xE200000000000000, a2);
  v21 = sub_1C0D21940(12658, 0xE200000000000000, a3);

  v39 = sub_1C0D21940(12914, 0xE200000000000000, a4);
  v36 = a5;
  v22 = sub_1C0D2EAB0(1198417255, 0xE400000000000000, a5, &v42);
  v37 = a6;
  v23 = sub_1C0D2EAB0(1215194471, 0xE400000000000000, a6, &v42);
  v24 = sub_1C0D2EAB0(0x636E45316DLL, 0xE500000000000000, v48, &v42);
  v25 = sub_1C0D2EAB0(0x636E45326DLL, 0xE500000000000000, v40, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C0D7BEE0;
  *(v26 + 32) = v20;
  *(v26 + 40) = v22;
  *(v26 + 48) = v21;
  *(v26 + 56) = v23;
  v27 = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1C0CF4AF4(0, v27[2] + 1, 1, v27);
  }

  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1C0CF4AF4((v28 > 1), v29 + 1, 1, v27);
  }

  v27[2] = v29 + 1;
  v30 = &v27[2 * v29];
  v30[4] = v24;
  v30[5] = v26;
  v45 = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C0D7BEE0;
  *(v31 + 32) = v35;
  *(v31 + 40) = v22;
  *(v31 + 48) = v39;
  *(v31 + 56) = v23;
  v33 = v27[2];
  v32 = v27[3];
  if (v33 >= v32 >> 1)
  {
    v27 = sub_1C0CF4AF4((v32 > 1), v33 + 1, 1, v27);
  }

  v27[2] = v33 + 1;
  v34 = &v27[2 * v33];
  v34[4] = v25;
  v34[5] = v31;
  v45 = v27;
  v47 = v27;
  v46[0] = v42;
  v46[1] = v43;
  v46[2] = v44;
  sub_1C0D21A5C();
  sub_1C0D13578(v46, &qword_1EBE6D4E0, &qword_1C0D7C038);
  if (v38)
  {
  }
}

char *ARCAwaitingActivationWrapper.init(requestContext:serverPublicKeyData:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = sub_1C0D786CC();
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = *(v73 + 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D099E4(v85);
  v14 = &v4[OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_ciphersuite];
  v15 = v85[1];
  *v14 = v85[0];
  *(v14 + 1) = v15;
  v16 = v86;
  v89 = v14;
  *(v14 + 4) = v86;
  sub_1C0D13734(v85, v84, &qword_1EBE6D420, &qword_1C0D7BF10);
  v17 = sub_1C0D105F4(a3, a4, v16);
  if (v5)
  {
    sub_1C0CF448C(a1, a2);
    sub_1C0D13578(v85, &qword_1EBE6D420, &qword_1C0D7BF10);
    sub_1C0CF448C(a3, a4);
    goto LABEL_9;
  }

  v67 = v19;
  v68 = v18;
  v69 = v17;
  v70 = a1;
  v64 = a3;
  v65 = 0;
  v71 = a4;
  v72 = a2;
  v66 = v4;
  sub_1C0D13578(v85, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D099E4(v87);
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v20 = sub_1C0D786BC();
  v21 = v74;
  v22 = *(v73 + 1);
  v22(v13, v74);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v24 = result;
  sub_1C0D786EC();
  v25 = sub_1C0D786BC();
  v22(v13, v21);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  v73 = result;
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1C0D786EC();
  v26 = sub_1C0D786BC();
  v22(v13, v21);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v27 = result;
    v76 = *(v87 + 8);
    v28 = v70;
    v29 = v72;
    sub_1C0CF6468(v70, v72);
    sub_1C0D13734(v87, v84, &qword_1EBE6D420, &qword_1C0D7BF10);
    MEMORY[0x1C68E3B00](0x4374736575716572, 0xEE00747865746E6FLL);
    v30 = sub_1C0D07698(v76, *(&v76 + 1));
    v32 = v31;
    v33 = v65;
    v34 = sub_1C0D0E630(v28, v29, v30, v31);
    v35 = v71;
    if (!v33)
    {
      v36 = v34;
      sub_1C0CF448C(v30, v32);
      *&v77 = v24;
      *(&v77 + 1) = v36;
      v37 = v73;
      *&v78 = v73;
      *(&v78 + 1) = v27;
      *&v79 = v69;
      *(&v79 + 1) = v68;
      *&v80[0] = v67;
      *(v80 + 8) = v87[0];
      *(&v80[1] + 8) = v87[1];
      *(&v80[2] + 1) = v88;
      sub_1C0D13734(v87, v84, &qword_1EBE6D420, &qword_1C0D7BF10);
      v38 = v24;
      v39 = v36;
      v40 = v37;
      v41 = v27;
      *&v81 = sub_1C0D058D0(&v81 + 1, v87);
      v42 = *(&v81 + 1);
      v43 = v81;
      v44 = v42;
      v73 = v39;
      v74 = v38;
      v65 = v43;
      v63 = v44;
      sub_1C0D08F3C(v38, v39, v40, v41, v43, v44, v87);
      v45 = v66;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v55 = v70;
      v56 = v72;
      sub_1C0CF448C(v70, v72);
      *&v82 = v48;
      *(&v82 + 1) = v50;
      *&v83 = v52;
      *(&v83 + 1) = v54;
      v57 = &v45[OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential];
      v58 = v82;
      *(v57 + 6) = v81;
      *(v57 + 7) = v58;
      v59 = v80[0];
      *(v57 + 2) = v79;
      *(v57 + 3) = v59;
      v60 = v80[2];
      *(v57 + 4) = v80[1];
      *(v57 + 5) = v60;
      v61 = v78;
      *v57 = v77;
      *(v57 + 1) = v61;
      *(v57 + 8) = v83;
      v62 = type metadata accessor for ARCAwaitingActivationWrapper();
      v75.receiver = v45;
      v75.super_class = v62;
      v4 = objc_msgSendSuper2(&v75, sel_init);
      sub_1C0CF448C(v64, v71);
      sub_1C0CF448C(v55, v56);
      return v4;
    }

    sub_1C0CF448C(v28, v29);
    sub_1C0CF448C(v64, v35);

    sub_1C0CF448C(v30, v32);
    sub_1C0CF448C(v28, v29);
    sub_1C0D13578(v87, &qword_1EBE6D420, &qword_1C0D7BF10);
    v4 = v66;
LABEL_9:
    v46 = *(v89 + 2);

    type metadata accessor for ARCAwaitingActivationWrapper();
    swift_deallocPartialClassInstance();
    return v4;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_1C0D099E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v8 = sub_1C0D786BC();
  v9 = *(v3 + 8);
  v9(v6, v2);
  result = [v7 groupOrderByteCountForCP_];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    sub_1C0D786EC();
    v12 = sub_1C0D786BC();
    v9(v6, v2);
    result = [v7 compressedx962PointByteCountForCurveParameters_];
    if ((result & 0x8000000000000000) == 0)
    {
      *a1 = xmmword_1C0D7BF00;
      *(a1 + 16) = 0xEA00000000003635;
      *(a1 + 24) = v11;
      *(a1 + 32) = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_1C0D09D5C(uint64_t a1, unint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential);
  v5 = *(v2 + OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 72);
  v37[0] = *(v2 + OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 56);
  v37[1] = v5;
  v38 = *(v2 + OBJC_IVAR____TtC16CryptoKitPrivate28ARCAwaitingActivationWrapper_precredential + 88);
  sub_1C0D09F10(a1, a2, v37, &v28);
  if (!v3)
  {
    v36[0] = v28;
    v36[1] = v29;
    v36[2] = v30;
    v36[3] = v31;
    v6 = v4[7];
    v36[10] = v4[6];
    v36[11] = v6;
    v36[12] = v4[8];
    v7 = v4[3];
    v36[6] = v4[2];
    v36[7] = v7;
    v8 = v4[5];
    v36[8] = v4[4];
    v36[9] = v8;
    v9 = v4[1];
    v36[4] = *v4;
    v36[5] = v9;
    sub_1C0D0AAF0(v36, &v28);
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v27 = v33;
    v22 = v28;
    v23 = v29;
    v10 = type metadata accessor for ARCCredentialWrapper();
    v11 = objc_allocWithZone(v10);
    sub_1C0D099E4(v34);
    v12 = &v11[OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_ciphersuite];
    v13 = v34[1];
    *v12 = v34[0];
    *(v12 + 1) = v13;
    *(v12 + 4) = v35;
    v14 = &v11[OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_credential];
    v15 = v23;
    *v14 = v22;
    *(v14 + 1) = v15;
    v16 = v27;
    v18 = v24;
    v17 = v25;
    *(v14 + 4) = v26;
    *(v14 + 5) = v16;
    *(v14 + 2) = v18;
    *(v14 + 3) = v17;
    sub_1C0D13734(&v22, v21, &qword_1EBE6D450, &unk_1C0D7BF20);
    v20.receiver = v11;
    v20.super_class = v10;
    v4 = objc_msgSendSuper2(&v20, sel_init);
    sub_1C0D13578(v36, &qword_1EBE6D438, &qword_1C0D7BF18);
    sub_1C0D13578(&v22, &qword_1EBE6D450, &unk_1C0D7BF20);
  }

  return v4;
}

uint64_t sub_1C0D09F10@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v136 = *MEMORY[0x1E69E9840];
  v9 = sub_1C0D786CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v15 = 0;
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v18 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (!v18)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v15) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v15 = v15;
LABEL_10:
  v19 = *(a3 + 32);
  v20 = 6 * v19;
  if ((v19 * 6) >> 64 != (6 * v19) >> 63)
  {
    __break(1u);
    goto LABEL_58;
  }

  v21 = *(a3 + 24);
  if ((v21 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v18 = __OFADD__(v20, 8 * v21);
  v22 = v20 + 8 * v21;
  if (v18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v15 == v22)
  {
    v123 = *(a3 + 24);
    v132 = MEMORY[0x1E6969080];
    v133 = MEMORY[0x1E6969078];
    v130 = a1;
    v131 = a2;
    v23 = __swift_project_boxed_opaque_existential_1(&v130, MEMORY[0x1E6969080]);
    v24 = *v23;
    v25 = v23[1];
    v26 = v25 >> 62;
    v121 = a4;
    v127 = v9;
    if ((v25 >> 62) > 1)
    {
      if (v26 != 2)
      {
        memset(v128, 0, 14);
        sub_1C0CF6468(a1, a2);
        v27 = v128;
        v28 = v128;
        goto LABEL_37;
      }

      v31 = *(v24 + 16);
      v32 = *(v24 + 24);
      sub_1C0CF6468(a1, a2);
      a2 = v25 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = sub_1C0D7812C();
      if (a1)
      {
        a2 = v25 & 0x3FFFFFFFFFFFFFFFLL;
        v33 = sub_1C0D7815C();
        v24 = v31 - v33;
        if (__OFSUB__(v31, v33))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        a1 += v24;
      }

      v18 = __OFSUB__(v32, v31);
      v34 = v32 - v31;
      if (!v18)
      {
        goto LABEL_29;
      }

      __break(1u);
    }

    else if (!v26)
    {
      v128[0] = v24;
      LOWORD(v128[1]) = v25;
      BYTE2(v128[1]) = BYTE2(v25);
      BYTE3(v128[1]) = BYTE3(v25);
      BYTE4(v128[1]) = BYTE4(v25);
      BYTE5(v128[1]) = BYTE5(v25);
      sub_1C0CF6468(a1, a2);
      v27 = v128;
      v28 = v128 + BYTE6(v25);
      goto LABEL_37;
    }

    v35 = v24;
    v36 = v24 >> 32;
    v34 = v36 - v35;
    if (v36 >= v35)
    {
      sub_1C0CF6468(a1, a2);
      a1 = sub_1C0D7812C();
      if (!a1)
      {
LABEL_29:
        v38 = sub_1C0D7814C();
        if (v38 >= v34)
        {
          v39 = v34;
        }

        else
        {
          v39 = v38;
        }

        v40 = (v39 + a1);
        if (a1)
        {
          v28 = v40;
        }

        else
        {
          v28 = 0;
        }

        v27 = a1;
LABEL_37:
        sub_1C0D20850(v27, v28, v129);
        v122 = v4;
        v41 = v129[0];
        v42 = v129[1];
        __swift_destroy_boxed_opaque_existential_1(&v130);
        v134 = v41;
        v135 = v42;
        sub_1C0CF6468(v41, v42);
        sub_1C0D01560(v19, v41, v42, &v130);
        v44 = v130;
        v43 = v131;
        sub_1C0D22268(v19);
        LODWORD(v130) = 0;
        sub_1C0D7884C();
        sub_1C0CF6468(v44, v43);
        v126 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
        sub_1C0D786EC();
        v45 = sub_1C0D786BC();
        v125 = *(v10 + 8);
        v125(v13, v127);
        v46 = objc_allocWithZone(MEMORY[0x1E6999648]);
        v47 = sub_1C0D7830C();
        v48 = [v46 initFromPublicKeyBytes:v47 inGroup:v45 compressed:1 corecryptoError:&v130];

        sub_1C0CF448C(v44, v43);
        if (!v48)
        {
          v96 = v130;
          sub_1C0CF8DE0();
          swift_allocError();
          *v97 = v96;
          *(v97 + 4) = 0;
          swift_willThrow();
          sub_1C0CF448C(v44, v43);
LABEL_52:
          v94 = v134;
          v95 = v135;
LABEL_53:
          result = sub_1C0CF448C(v94, v95);
          goto LABEL_54;
        }

        v124 = v48;
        sub_1C0CF448C(v44, v43);
        v49 = v134;
        v50 = v135;
        sub_1C0CF6468(v134, v135);
        sub_1C0D01560(v19, v49, v50, &v130);
        v51 = v130;
        v52 = v131;
        sub_1C0D22268(v19);
        LODWORD(v130) = 0;
        sub_1C0CF6468(v51, v52);
        sub_1C0D786EC();
        v53 = sub_1C0D786BC();
        v125(v13, v127);
        v54 = objc_allocWithZone(MEMORY[0x1E6999648]);
        v55 = sub_1C0D7830C();
        v56 = [v54 initFromPublicKeyBytes:v55 inGroup:v53 compressed:1 corecryptoError:&v130];

        sub_1C0CF448C(v51, v52);
        if (v56)
        {
          v120 = v56;
          sub_1C0CF448C(v51, v52);
          v57 = v134;
          v58 = v135;
          sub_1C0CF6468(v134, v135);
          sub_1C0D01560(v19, v57, v58, &v130);
          v59 = v130;
          v60 = v131;
          sub_1C0D22268(v19);
          LODWORD(v130) = 0;
          sub_1C0CF6468(v59, v60);
          sub_1C0D786EC();
          v61 = sub_1C0D786BC();
          v125(v13, v127);
          v62 = objc_allocWithZone(MEMORY[0x1E6999648]);
          v63 = sub_1C0D7830C();
          v64 = [v62 initFromPublicKeyBytes:v63 inGroup:v61 compressed:1 corecryptoError:&v130];

          sub_1C0CF448C(v59, v60);
          if (!v64)
          {
            v101 = v130;
            sub_1C0CF8DE0();
            swift_allocError();
            *v102 = v101;
            *(v102 + 4) = 0;
            swift_willThrow();
            sub_1C0CF448C(v59, v60);
LABEL_50:

            v100 = v120;
            goto LABEL_51;
          }

          v119 = v64;
          sub_1C0CF448C(v59, v60);
          v65 = v134;
          v66 = v135;
          sub_1C0CF6468(v134, v135);
          sub_1C0D01560(v19, v65, v66, &v130);
          v67 = v130;
          v68 = v131;
          sub_1C0D22268(v19);
          LODWORD(v130) = 0;
          sub_1C0CF6468(v67, v68);
          sub_1C0D786EC();
          v69 = sub_1C0D786BC();
          v125(v13, v127);
          v70 = objc_allocWithZone(MEMORY[0x1E6999648]);
          v71 = sub_1C0D7830C();
          v72 = [v70 initFromPublicKeyBytes:v71 inGroup:v69 compressed:1 corecryptoError:&v130];

          sub_1C0CF448C(v67, v68);
          if (v72)
          {
            v118 = v72;
            sub_1C0CF448C(v67, v68);
            v73 = v134;
            v74 = v135;
            sub_1C0CF6468(v134, v135);
            sub_1C0D01560(v19, v73, v74, &v130);
            v75 = v130;
            v76 = v131;
            sub_1C0D22268(v19);
            LODWORD(v130) = 0;
            sub_1C0CF6468(v75, v76);
            sub_1C0D786EC();
            v77 = sub_1C0D786BC();
            v125(v13, v127);
            v78 = objc_allocWithZone(MEMORY[0x1E6999648]);
            v79 = sub_1C0D7830C();
            v80 = [v78 initFromPublicKeyBytes:v79 inGroup:v77 compressed:1 corecryptoError:&v130];

            sub_1C0CF448C(v75, v76);
            if (v80)
            {
              v117 = v80;
              sub_1C0CF448C(v75, v76);
              v81 = v134;
              v82 = v135;
              sub_1C0CF6468(v134, v135);
              sub_1C0D01560(v19, v81, v82, &v130);
              v83 = v130;
              v84 = v131;
              sub_1C0D22268(v19);
              LODWORD(v130) = 0;
              sub_1C0CF6468(v83, v84);
              sub_1C0D786EC();
              v85 = sub_1C0D786BC();
              v125(v13, v127);
              v86 = objc_allocWithZone(MEMORY[0x1E6999648]);
              v87 = sub_1C0D7830C();
              v88 = [v86 initFromPublicKeyBytes:v87 inGroup:v85 compressed:1 corecryptoError:&v130];

              sub_1C0CF448C(v83, v84);
              if (v88)
              {
                sub_1C0CF448C(v83, v84);
                v89 = v134;
                v90 = v135;
                v91 = v122;
                v92 = sub_1C0D11094(v134, v135, 8, v123);
                if (!v91)
                {
                  v110 = v92;
                  v111 = v89;
                  v112 = v93;
                  result = sub_1C0CF448C(v111, v90);
                  v113 = v121;
                  v114 = v119;
                  v115 = v120;
                  *v121 = v124;
                  v113[1] = v115;
                  v113[2] = v114;
                  v116 = v117;
                  v113[3] = v118;
                  v113[4] = v116;
                  v113[5] = v88;
                  v113[6] = v110;
                  v113[7] = v112;
                  goto LABEL_54;
                }

                v94 = v89;
                v95 = v90;
                goto LABEL_53;
              }

              v108 = v130;
              sub_1C0CF8DE0();
              swift_allocError();
              *v109 = v108;
              *(v109 + 4) = 0;
              swift_willThrow();
              sub_1C0CF448C(v83, v84);

              v100 = v119;
              goto LABEL_51;
            }

            v105 = v130;
            sub_1C0CF8DE0();
            swift_allocError();
            *v106 = v105;
            *(v106 + 4) = 0;
            swift_willThrow();
            sub_1C0CF448C(v75, v76);

            goto LABEL_50;
          }

          v103 = v130;
          sub_1C0CF8DE0();
          swift_allocError();
          *v104 = v103;
          *(v104 + 4) = 0;
          swift_willThrow();
          sub_1C0CF448C(v67, v68);

          v100 = v124;
        }

        else
        {
          v98 = v130;
          sub_1C0CF8DE0();
          swift_allocError();
          *v99 = v98;
          *(v99 + 4) = 0;
          swift_willThrow();
          sub_1C0CF448C(v51, v52);
          v100 = v124;
        }

LABEL_51:

        goto LABEL_52;
      }

      v37 = sub_1C0D7815C();
      if (!__OFSUB__(v35, v37))
      {
        a1 += v35 - v37;
        goto LABEL_29;
      }

LABEL_63:
      __break(1u);
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_1C0CFC3D4();
  swift_allocError();
  *v29 = 4;
  result = swift_willThrow();
LABEL_54:
  v107 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1C0D0AAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[14];
  v29 = v2[15];
  v5 = v2[2];
  v6 = v2[3];
  v36 = *v2;
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = *(v2 + 9);
  v33 = *(v2 + 7);
  v34 = v10;
  v11 = v2[12];
  v35 = v2[11];
  v12 = v2[13];
  sub_1C0D13734(&v36, v32, &qword_1EBE6D480, &unk_1C0D7BF30);
  v13 = v5;
  v14 = v6;
  sub_1C0D13734(&v33, v32, &qword_1EBE6D420, &qword_1C0D7BF10);
  v15 = v11;
  v16 = v12;
  sub_1C0D13734(a1, v32, &qword_1EBE6D438, &qword_1C0D7BF18);
  v17 = sub_1C0D0FB0C(v4, v29, v7, v8, v9, v15, v16, &v33);
  if (v30)
  {

    sub_1C0D13578(&v33, &qword_1EBE6D420, &qword_1C0D7BF10);
    sub_1C0D13578(&v36, &qword_1EBE6D480, &unk_1C0D7BF30);
    return sub_1C0D13578(a1, &qword_1EBE6D438, &qword_1C0D7BF18);
  }

  else if (v17)
  {
    v31 = v16;
    v19 = sub_1C0D2BEDC(*(a1 + 8), *(a1 + 16));
    v20 = sub_1C0D0DE9C(v13, *(a1 + 24));

    v21 = sub_1C0D2BEDC(v19, v20);
    v22 = sub_1C0D0DE9C(v14, *(a1 + 32));

    v23 = sub_1C0D2BEDC(v21, v22);
    v24 = *a1;
    sub_1C0D13578(a1, &qword_1EBE6D438, &qword_1C0D7BF18);
    *a2 = v36;
    *(a2 + 8) = v24;
    *(a2 + 16) = v23;
    *(a2 + 24) = v8;
    v25 = v34;
    *(a2 + 32) = v33;
    *(a2 + 48) = v25;
    *(a2 + 64) = v35;
    *(a2 + 72) = v15;
    v26 = MEMORY[0x1E69E7CC8];
    *(a2 + 80) = v31;
    *(a2 + 88) = v26;
    return v8;
  }

  else
  {

    sub_1C0D13578(&v33, &qword_1EBE6D420, &qword_1C0D7BF10);
    sub_1C0D13578(&v36, &qword_1EBE6D480, &unk_1C0D7BF30);
    sub_1C0D13578(a1, &qword_1EBE6D438, &qword_1C0D7BF18);
    sub_1C0CFC3D4();
    swift_allocError();
    *v27 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1C0D0AFB0()
{
  v1 = (v0 + OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_credential);
  swift_beginAccess();
  v2 = v1[2];
  v3 = v1[4];
  v12 = v1[3];
  v13 = v3;
  v4 = v1[1];
  v11[0] = *v1;
  v11[1] = v4;
  v11[2] = v2;
  v5 = v1[5];
  v15[0] = v2;
  v15[1] = v12;
  v14 = v5;
  v16 = *(v1 + 8);
  v6 = v16;
  v7 = *(&v12 + 1);
  sub_1C0D13734(v11, v10, &qword_1EBE6D450, &unk_1C0D7BF20);
  sub_1C0D13734(v15, v10, &qword_1EBE6D420, &qword_1C0D7BF10);
  v8 = sub_1C0D11774(v7, v6);
  sub_1C0D13578(v15, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D13578(v11, &qword_1EBE6D450, &unk_1C0D7BF20);
  return v8;
}

char *ARCCredentialWrapper.init(credentialData:)(uint64_t a1, unint64_t a2)
{
  sub_1C0D099E4(v16);
  v6 = &v2[OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_ciphersuite];
  v7 = v16[1];
  *v6 = v16[0];
  *(v6 + 1) = v7;
  *(v6 + 4) = v17;
  sub_1C0D78BFC();
  sub_1C0D0B424(a1, a2, v16, v15);
  sub_1C0D13578(v16, &qword_1EBE6D420, &qword_1C0D7BF10);
  if (v3)
  {
    sub_1C0CF448C(a1, a2);
    v8 = *(v6 + 2);

    type metadata accessor for ARCCredentialWrapper();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_credential];
    v10 = v15[3];
    *(v9 + 2) = v15[2];
    *(v9 + 3) = v10;
    v11 = v15[5];
    *(v9 + 4) = v15[4];
    *(v9 + 5) = v11;
    v12 = v15[1];
    *v9 = v15[0];
    *(v9 + 1) = v12;
    v14.receiver = v2;
    v14.super_class = type metadata accessor for ARCCredentialWrapper();
    v2 = objc_msgSendSuper2(&v14, sel_init);
    sub_1C0CF448C(a1, a2);
  }

  return v2;
}

uint64_t sub_1C0D0B424@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v152 = *MEMORY[0x1E69E9840];
  v9 = sub_1C0D786CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v15 = 0;
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v18 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (!v18)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v15) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v15 = v15;
LABEL_10:
  v19 = *(a3 + 32);
  v20 = 5 * v19;
  if ((v19 * 5) >> 64 != (5 * v19) >> 63)
  {
    __break(1u);
    goto LABEL_80;
  }

  v21 = *(a3 + 24);
  v18 = __OFADD__(v20, v21);
  v22 = v20 + v21;
  if (v18)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v18 = __OFSUB__(v15, v22);
  v23 = v15 - v22;
  if (v18)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    v137 = v19;
    v143 = v11;
    v134 = a4;
    v24 = MEMORY[0x1E6969080];
    v25 = MEMORY[0x1E6969078];
    v150 = MEMORY[0x1E6969080];
    v151 = MEMORY[0x1E6969078];
    *&v149 = a1;
    *(&v149 + 1) = a2;
    v26 = __swift_project_boxed_opaque_existential_1(&v149, MEMORY[0x1E6969080]);
    v27 = *v26;
    v28 = v26[1];
    v29 = v28 >> 62;
    v140 = v9;
    if ((v28 >> 62) > 1)
    {
      if (v29 != 2)
      {
        *(&v147 + 6) = 0;
        *&v147 = 0;
        sub_1C0CF6468(a1, a2);
        v30 = &v147;
        goto LABEL_37;
      }

      v33 = *(v27 + 16);
      v34 = *(v27 + 24);
      sub_1C0CF6468(a1, a2);
      a2 = v28 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = sub_1C0D7812C();
      if (a1)
      {
        a2 = v28 & 0x3FFFFFFFFFFFFFFFLL;
        v35 = sub_1C0D7815C();
        v27 = v33 - v35;
        if (__OFSUB__(v33, v35))
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        a1 += v27;
      }

      v18 = __OFSUB__(v34, v33);
      v36 = v34 - v33;
      if (!v18)
      {
LABEL_29:
        v40 = sub_1C0D7814C();
        if (v40 >= v36)
        {
          v41 = v36;
        }

        else
        {
          v41 = v40;
        }

        v42 = (v41 + a1);
        if (a1)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }

        sub_1C0D20850(a1, v43, &v148);
        v44 = v4;
        v25 = MEMORY[0x1E6969078];
        goto LABEL_38;
      }

      __break(1u);
    }

    else if (!v29)
    {
      *&v147 = v27;
      WORD4(v147) = v28;
      BYTE10(v147) = BYTE2(v28);
      BYTE11(v147) = BYTE3(v28);
      BYTE12(v147) = BYTE4(v28);
      BYTE13(v147) = BYTE5(v28);
      sub_1C0CF6468(a1, a2);
      v30 = (&v147 + BYTE6(v28));
LABEL_37:
      sub_1C0D20850(&v147, v30, &v148);
      v44 = v4;
LABEL_38:
      v46 = *(&v148 + 1);
      v45 = v148;
      __swift_destroy_boxed_opaque_existential_1(&v149);
      v150 = v24;
      v151 = v25;
      v149 = __PAIR128__(v46, v45);
      v47 = __swift_project_boxed_opaque_existential_1(&v149, v24);
      v48 = *v47;
      v49 = v47[1];
      v50 = v49 >> 62;
      v139 = v45;
      v138 = v46;
      if ((v49 >> 62) > 1)
      {
        if (v50 != 2)
        {
          memset(v144, 0, 14);
          sub_1C0CF6468(v45, v46);
          v51 = v144;
          v52 = v144;
          goto LABEL_60;
        }

        v53 = v46;
        v54 = *(v48 + 16);
        v46 = *(v48 + 24);
        sub_1C0CF6468(v45, v53);
        v45 = sub_1C0D7812C();
        if (v45)
        {
          v55 = sub_1C0D7815C();
          v48 = v54 - v55;
          if (__OFSUB__(v54, v55))
          {
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          v45 += v48;
        }

        v18 = __OFSUB__(v46, v54);
        v56 = v46 - v54;
        if (!v18)
        {
          goto LABEL_52;
        }

        __break(1u);
      }

      else if (!v50)
      {
        v144[0] = v48;
        LOWORD(v144[1]) = v49;
        BYTE2(v144[1]) = BYTE2(v49);
        BYTE3(v144[1]) = BYTE3(v49);
        BYTE4(v144[1]) = BYTE4(v49);
        BYTE5(v144[1]) = BYTE5(v49);
        sub_1C0CF6468(v45, v46);
        v51 = v144;
        v52 = v144 + BYTE6(v49);
        goto LABEL_60;
      }

      v57 = v46;
      v58 = v48;
      v59 = v48 >> 32;
      v56 = v59 - v58;
      if (v59 >= v58)
      {
        sub_1C0CF6468(v45, v57);
        v45 = sub_1C0D7812C();
        if (!v45)
        {
LABEL_52:
          v61 = sub_1C0D7814C();
          if (v61 >= v56)
          {
            v62 = v56;
          }

          else
          {
            v62 = v61;
          }

          v63 = (v62 + v45);
          if (v45)
          {
            v52 = v63;
          }

          else
          {
            v52 = 0;
          }

          v51 = v45;
LABEL_60:
          sub_1C0D20850(v51, v52, &v147);
          v135 = v44;
          v64 = v143;
          v65 = v147;
          __swift_destroy_boxed_opaque_existential_1(&v149);
          v148 = v65;
          sub_1C0CF6468(v65, *(&v65 + 1));
          sub_1C0D01560(v21, v65, *(&v65 + 1), &v149);
          v66 = v149;
          sub_1C0D22268(v21);
          LODWORD(v149) = 0;
          sub_1C0D7884C();
          sub_1C0CF6468(v66, *(&v66 + 1));
          v142 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
          sub_1C0D786EC();
          v67 = sub_1C0D786BC();
          v68 = *(v64 + 8);
          v143 = v64 + 8;
          v69 = v140;
          v141 = v68;
          v68(v13, v140);
          v70 = objc_allocWithZone(MEMORY[0x1E6999650]);
          v71 = sub_1C0D7830C();
          v72 = [v70 initWithData:v71 inGroup:v67 reduction:1 corecryptoError:&v149];

          sub_1C0CF448C(v66, *(&v66 + 1));
          if (!v72)
          {
            v111 = v149;
            sub_1C0CF8DE0();
            swift_allocError();
            *v112 = v111;
            *(v112 + 4) = 0;
            swift_willThrow();
            sub_1C0CF448C(v66, *(&v66 + 1));
            sub_1C0CF448C(v148, *(&v148 + 1));
            v109 = v139;
            v110 = v138;
LABEL_75:
            result = sub_1C0CF448C(v109, v110);
            goto LABEL_76;
          }

          v136 = v72;
          sub_1C0CF448C(v66, *(&v66 + 1));
          v73 = v148;
          sub_1C0CF6468(v148, *(&v148 + 1));
          v74 = v137;
          sub_1C0D01560(v137, v73, *(&v73 + 1), &v149);
          v75 = v149;
          sub_1C0D22268(v74);
          LODWORD(v149) = 0;
          sub_1C0CF6468(v75, *(&v75 + 1));
          sub_1C0D786EC();
          v76 = sub_1C0D786BC();
          v141(v13, v69);
          v77 = objc_allocWithZone(MEMORY[0x1E6999648]);
          v78 = sub_1C0D7830C();
          v79 = [v77 initFromPublicKeyBytes:v78 inGroup:v76 compressed:1 corecryptoError:&v149];

          sub_1C0CF448C(v75, *(&v75 + 1));
          if (v79)
          {
            v133 = v79;
            sub_1C0CF448C(v75, *(&v75 + 1));
            v80 = v148;
            sub_1C0CF6468(v148, *(&v148 + 1));
            sub_1C0D01560(v74, v80, *(&v80 + 1), &v149);
            v81 = v149;
            sub_1C0D22268(v74);
            LODWORD(v149) = 0;
            sub_1C0CF6468(v81, *(&v81 + 1));
            sub_1C0D786EC();
            v82 = sub_1C0D786BC();
            v141(v13, v69);
            v83 = objc_allocWithZone(MEMORY[0x1E6999648]);
            v84 = sub_1C0D7830C();
            v85 = [v83 initFromPublicKeyBytes:v84 inGroup:v82 compressed:1 corecryptoError:&v149];

            sub_1C0CF448C(v81, *(&v81 + 1));
            if (!v85)
            {
              v116 = v149;
              sub_1C0CF8DE0();
              swift_allocError();
              *v117 = v116;
              *(v117 + 4) = 0;
              swift_willThrow();
              sub_1C0CF448C(v81, *(&v81 + 1));
LABEL_73:

              v115 = &v154;
              goto LABEL_74;
            }

            v132 = v85;
            sub_1C0CF448C(v81, *(&v81 + 1));
            v86 = v148;
            sub_1C0CF6468(v148, *(&v148 + 1));
            sub_1C0D01560(v74, v86, *(&v86 + 1), &v149);
            v87 = v149;
            sub_1C0D22268(v74);
            LODWORD(v149) = 0;
            sub_1C0CF6468(v87, *(&v87 + 1));
            sub_1C0D786EC();
            v88 = sub_1C0D786BC();
            v141(v13, v69);
            v89 = objc_allocWithZone(MEMORY[0x1E6999648]);
            v90 = sub_1C0D7830C();
            v91 = [v89 initFromPublicKeyBytes:v90 inGroup:v88 compressed:1 corecryptoError:&v149];

            sub_1C0CF448C(v87, *(&v87 + 1));
            if (v91)
            {
              v131 = v91;
              sub_1C0CF448C(v87, *(&v87 + 1));
              v92 = v148;
              sub_1C0CF6468(v148, *(&v148 + 1));
              sub_1C0D01560(v74, v92, *(&v92 + 1), &v149);
              v93 = v149;
              sub_1C0D22268(v74);
              LODWORD(v149) = 0;
              sub_1C0CF6468(v93, *(&v93 + 1));
              sub_1C0D786EC();
              v94 = sub_1C0D786BC();
              v141(v13, v69);
              v95 = objc_allocWithZone(MEMORY[0x1E6999648]);
              v96 = sub_1C0D7830C();
              v97 = [v95 initFromPublicKeyBytes:v96 inGroup:v94 compressed:1 corecryptoError:&v149];

              v98 = v97;
              sub_1C0CF448C(v93, *(&v93 + 1));
              if (v97)
              {
                sub_1C0CF448C(v93, *(&v93 + 1));
                v99 = v148;
                sub_1C0CF6468(v148, *(&v148 + 1));
                sub_1C0D01560(v74, v99, *(&v99 + 1), &v149);
                v100 = v149;
                sub_1C0D22268(v74);
                LODWORD(v149) = 0;
                sub_1C0CF6468(v100, *(&v100 + 1));
                sub_1C0D786EC();
                v101 = sub_1C0D786BC();
                v141(v13, v69);
                v102 = objc_allocWithZone(MEMORY[0x1E6999648]);
                v103 = sub_1C0D7830C();
                v104 = [v102 initFromPublicKeyBytes:v103 inGroup:v101 compressed:1 corecryptoError:&v149];

                sub_1C0CF448C(v100, *(&v100 + 1));
                if (v104)
                {
                  sub_1C0CF448C(v100, *(&v100 + 1));
                  v105 = v148;
                  v106 = v135;
                  v107 = sub_1C0D0E0DC(v148, *(&v148 + 1));
                  v108 = v138;
                  if (!v106)
                  {
                    v125 = v107;
                    sub_1C0D099E4(v145);
                    sub_1C0CF448C(v139, v108);
                    result = sub_1C0CF448C(v105, *(&v105 + 1));
                    v126 = v134;
                    v127 = v133;
                    *v134 = v136;
                    v126[1] = v127;
                    v128 = v131;
                    v126[2] = v132;
                    v126[3] = v128;
                    v129 = v145[1];
                    *(v126 + 2) = v145[0];
                    *(v126 + 3) = v129;
                    v126[8] = v146;
                    v126[9] = v98;
                    v126[10] = v104;
                    v126[11] = v125;
                    goto LABEL_76;
                  }

                  sub_1C0CF448C(v139, v108);
                  v110 = v105 >> 64;
                  v109 = v105;
                  goto LABEL_75;
                }

                v123 = v149;
                sub_1C0CF8DE0();
                swift_allocError();
                *v124 = v123;
                *(v124 + 4) = 0;
                swift_willThrow();
                sub_1C0CF448C(v100, *(&v100 + 1));

                v115 = &v153;
                goto LABEL_74;
              }

              v120 = v149;
              sub_1C0CF8DE0();
              swift_allocError();
              *v121 = v120;
              *(v121 + 4) = 0;
              swift_willThrow();
              sub_1C0CF448C(v93, *(&v93 + 1));

              goto LABEL_73;
            }

            v118 = v149;
            sub_1C0CF8DE0();
            swift_allocError();
            *v119 = v118;
            *(v119 + 4) = 0;
            swift_willThrow();
            sub_1C0CF448C(v87, *(&v87 + 1));

            v115 = &v155;
          }

          else
          {
            v113 = v149;
            sub_1C0CF8DE0();
            swift_allocError();
            *v114 = v113;
            *(v114 + 4) = 0;
            swift_willThrow();
            sub_1C0CF448C(v75, *(&v75 + 1));
            v115 = &v155;
          }

LABEL_74:

          sub_1C0CF448C(v139, v138);
          v110 = *(&v148 + 1);
          v109 = v148;
          goto LABEL_75;
        }

        v60 = sub_1C0D7815C();
        if (!__OFSUB__(v58, v60))
        {
          v45 += v58 - v60;
          goto LABEL_52;
        }

LABEL_88:
        __break(1u);
      }

      goto LABEL_84;
    }

    v37 = v27;
    v38 = v27 >> 32;
    v36 = v38 - v37;
    if (v38 >= v37)
    {
      sub_1C0CF6468(a1, a2);
      a1 = sub_1C0D7812C();
      if (a1)
      {
        v39 = sub_1C0D7815C();
        if (__OFSUB__(v37, v39))
        {
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        a1 += v37 - v39;
      }

      goto LABEL_29;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  sub_1C0CFC3D4();
  swift_allocError();
  *v31 = 5;
  result = swift_willThrow();
LABEL_76:
  v122 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1C0D0C338(uint64_t a1, unint64_t a2, int64_t a3)
{
  v38 = a3;
  v49 = a2;
  v40 = a1;
  v4 = sub_1C0D786CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v3 + OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_credential);
  swift_beginAccess();
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v10 = sub_1C0D786BC();
  v11 = *(v5 + 8);
  v11(v8, v4);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  v37 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  v11(v8, v4);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  v36 = result;
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C0D786EC();
  v14 = sub_1C0D786BC();
  v11(v8, v4);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = v39;
  v17 = v40;
  v18 = v49;
  v19 = sub_1C0CFACAC(v40, v49, v38, 0, 1);
  if (v16)
  {

    return swift_endAccess();
  }

  else
  {
    v20 = v19;
    v21 = v9[5];
    v47 = v9[4];
    v48 = v21;
    v22 = v9[3];
    v46[2] = v9[2];
    v46[3] = v22;
    v23 = v9[1];
    v46[0] = *v9;
    v46[1] = v23;
    v24 = *(&v47 + 1);
    v25 = v48;
    sub_1C0D13734(v46, &v42, &qword_1EBE6D450, &unk_1C0D7BF20);
    v26 = v24;
    v27 = v25;
    sub_1C0CF6468(v17, v18);
    sub_1C0D0837C(v46, v37, v36, v15, v17, v18, v20, v26, v43, v27);
    swift_endAccess();
    v28 = type metadata accessor for ARCPresentationWrapper();
    v29 = objc_allocWithZone(v28);
    sub_1C0D099E4(v44);
    v30 = &v29[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_ciphersuite];
    v31 = v44[1];
    *v30 = v44[0];
    *(v30 + 1) = v31;
    *(v30 + 4) = v45;
    v32 = &v29[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation];
    v33 = v43[1];
    v34 = v43[2];
    *v32 = v43[0];
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *&v29[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_nonce] = v20;
    v41.receiver = v29;
    v41.super_class = v28;
    return objc_msgSendSuper2(&v41, sel_init);
  }
}

uint64_t sub_1C0D0C7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC16CryptoKitPrivate20ARCCredentialWrapper_credential;
  swift_beginAccess();
  if (!*(*(v7 + 88) + 16))
  {
    return a3;
  }

  v8 = *(v7 + 88);
  sub_1C0D78BFC();
  sub_1C0D0F06C(a1, a2, MEMORY[0x1E6969048], sub_1C0D0F1B0);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    return a3;
  }

  v12 = *(v7 + 88);
  if (*(v12 + 16))
  {
    v13 = *(v7 + 88);
    sub_1C0D78BFC();
    result = sub_1C0D0F06C(a1, a2, MEMORY[0x1E6969048], sub_1C0D0F1B0);
    if (v14)
    {
      v15 = (*(v12 + 56) + 16 * result);
      v17 = *v15;
      v16 = v15[1];
      sub_1C0D78BFC();

      if (v17 == a3)
      {
        v18 = *(v16 + 16);

        v19 = __OFSUB__(a3, v18);
        a3 -= v18;
        if (!v19)
        {
          return a3;
        }

        __break(1u);
      }

      return -1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id ARCCredentialWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C0D0CB00()
{
  v2 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation);
  v3 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation + 16);
  v4 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation + 32);
  return sub_1C0D11AD4(*(v0 + OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_ciphersuite + 24), *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_ciphersuite + 32));
}

char *ARCPresentationWrapper.__allocating_init(presentationData:nonce:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  sub_1C0D099E4(&v20);
  v8 = &v7[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_ciphersuite];
  v9 = v22;
  v10 = v21;
  *v8 = v20;
  *(v8 + 1) = v10;
  *(v8 + 4) = v9;
  v12 = *(&v21 + 1);
  v11 = v22;
  sub_1C0D13734(&v20, v19, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D11CE4(a1, a2, v12, v11, v23);
  sub_1C0D13578(&v20, &qword_1EBE6D420, &qword_1C0D7BF10);
  if (v4)
  {
    sub_1C0CF448C(a1, a2);
    v13 = *(v8 + 2);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = &v7[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation];
    v15 = v23[1];
    *v14 = v23[0];
    *(v14 + 1) = v15;
    *(v14 + 2) = v23[2];
    *&v7[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_nonce] = a3;
    v18.receiver = v7;
    v18.super_class = v24;
    v8 = objc_msgSendSuper2(&v18, sel_init);
    sub_1C0CF448C(a1, a2);
  }

  return v8;
}

char *ARCPresentationWrapper.init(presentationData:nonce:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1C0D099E4(&v18);
  v8 = &v3[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_ciphersuite];
  v9 = v19;
  *v8 = v18;
  *(v8 + 1) = v9;
  v11 = *(&v19 + 1);
  v10 = v20;
  *(v8 + 4) = v20;
  sub_1C0D13734(&v18, v17, &qword_1EBE6D420, &qword_1C0D7BF10);
  sub_1C0D11CE4(a1, a2, v11, v10, v21);
  sub_1C0D13578(&v18, &qword_1EBE6D420, &qword_1C0D7BF10);
  if (v4)
  {
    sub_1C0CF448C(a1, a2);
    v12 = *(v8 + 2);

    type metadata accessor for ARCPresentationWrapper();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = &v3[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_presentation];
    v14 = v21[1];
    *v13 = v21[0];
    *(v13 + 1) = v14;
    *(v13 + 2) = v21[2];
    *&v3[OBJC_IVAR____TtC16CryptoKitPrivate22ARCPresentationWrapper_nonce] = a3;
    v16.receiver = v3;
    v16.super_class = type metadata accessor for ARCPresentationWrapper();
    v3 = objc_msgSendSuper2(&v16, sel_init);
    sub_1C0CF448C(a1, a2);
  }

  return v3;
}

id ARCServer.init()()
{
  v1 = v0;
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D099E4(v38);
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v7 = sub_1C0D786BC();
  v8 = *(v3 + 8);
  v8(v6, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = result;
  v31 = v1;
  sub_1C0D786EC();
  v11 = sub_1C0D786BC();
  v8(v6, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  v8(v6, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = result;
  sub_1C0D786EC();
  v15 = sub_1C0D786BC();
  v8(v6, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v16 = result;
    *&v36[8] = v38[0];
    *&v36[24] = v38[1];
    *&v36[40] = v39;
    sub_1C0D78BFC();
    v17 = sub_1C0D058D0(&v37 + 1, v38);
    sub_1C0D13578(v38, &qword_1EBE6D420, &qword_1C0D7BF10);
    *&v37 = v17;
    *&v33 = v10;
    *(&v33 + 1) = v12;
    *&v34 = v14;
    *(&v34 + 1) = v16;
    v18 = *(&v37 + 1);
    v19 = sub_1C0D0DE9C(v10, v17);
    v20 = sub_1C0D0DE9C(v16, v18);
    v21 = sub_1C0D0DFC0(v19, v20);

    v22 = sub_1C0D0DE9C(v12, v18);
    v23 = sub_1C0D0DE9C(v14, v18);
    *&v35 = v21;
    *(&v35 + 1) = v22;
    *v36 = v23;
    v24 = v31;
    v25 = &v31[OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server];
    v26 = *&v36[32];
    *(v25 + 4) = *&v36[16];
    *(v25 + 5) = v26;
    *(v25 + 6) = v37;
    v27 = v34;
    *v25 = v33;
    *(v25 + 1) = v27;
    v28 = *v36;
    *(v25 + 2) = v35;
    *(v25 + 3) = v28;
    v29 = type metadata accessor for ARCServer();
    v32.receiver = v24;
    v32.super_class = v29;
    return objc_msgSendSuper2(&v32, sel_init);
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_1C0D0D43C(void *a1, unint64_t a2)
{
  v6 = sub_1C0D786CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server;
  v12 = sub_1C0D12624(a1, a2, *(v11 + 80), *(v11 + 88));
  if (v3)
  {
    return v11;
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = *(v11 + 80);
  v27[8] = *(v11 + 64);
  v28 = v20;
  v29 = *(v11 + 96);
  v21 = *(v11 + 16);
  v27[4] = *v11;
  v27[5] = v21;
  v22 = *(v11 + 48);
  v27[6] = *(v11 + 32);
  v27[7] = v22;
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  sub_1C0D786EC();
  v23 = sub_1C0D786BC();
  (*(v7 + 8))(v10, v6);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v25 = result;
    sub_1C0D05B24(v16, v17, v18, v19, result, v26);

    v27[0] = v26[0];
    v27[1] = v26[1];
    v27[2] = v26[2];
    v27[3] = v26[3];
    v11 = sub_1C0D12CF0(v28, *(&v28 + 1));

    sub_1C0D13578(v27, &qword_1EBE6D438, &qword_1C0D7BF18);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D0D7D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (v8 + OBJC_IVAR____TtC16CryptoKitPrivate9ARCServer_server);
  sub_1C0D11CE4(a1, a2, *(v15 + 10), *(v15 + 11), v21);
  v16 = v15[5];
  v32 = v15[4];
  v33 = v16;
  v34 = v15[6];
  v17 = v15[1];
  v28 = *v15;
  v29 = v17;
  v18 = v15[3];
  v30 = v15[2];
  v31 = v18;
  LOBYTE(a8) = sub_1C0D06CA0(v21, a4, a5, a6, a7, a8, a3);
  v27 = v21[0];
  sub_1C0D13578(&v27, &qword_1EBE6D478, &unk_1C0D7C850);
  v26 = v21[1];
  sub_1C0D13578(&v26, &qword_1EBE6D478, &unk_1C0D7C850);
  v25 = v21[2];
  sub_1C0D13578(&v25, &qword_1EBE6D478, &unk_1C0D7C850);
  v24 = v21[3];
  sub_1C0D13578(&v24, &qword_1EBE6D478, &unk_1C0D7C850);
  v19 = v21[5];
  v23 = v21[4];
  sub_1C0D13578(&v23, &qword_1EBE6D480, &unk_1C0D7BF30);
  v22 = v19;
  sub_1C0D13578(&v22, &qword_1EBE6D488, &qword_1C0D7C860);
  return a8 & 1;
}

id sub_1C0D0DDC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1C0D0DE9C(uint64_t a1, id a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  result = [a2 multiply:a1 corecryptoError:&v5];
  if (result)
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
    v4 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v4);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

id sub_1C0D0DFC0(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  result = [a1 add:a2 corecryptoError:&v5];
  if (result)
  {
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
    v4 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v4);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

void *sub_1C0D0E0DC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v71[5] = *MEMORY[0x1E69E9840];
  v6 = sub_1C0D781DC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1C0D781CC();
  v71[3] = MEMORY[0x1E6969080];
  v71[4] = MEMORY[0x1E6969078];
  v71[0] = a1;
  v71[1] = a2;
  v9 = __swift_project_boxed_opaque_existential_1(v71, MEMORY[0x1E6969080]);
  v10 = *v9;
  v11 = v9[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      memset(v69, 0, 14);
      sub_1C0CF6468(a1, a2);
      v13 = v69;
      v14 = v69;
      goto LABEL_24;
    }

    v15 = *(v10 + 16);
    v16 = *(v10 + 24);
    sub_1C0CF6468(a1, a2);
    v17 = sub_1C0D7812C();
    if (v17)
    {
      v18 = sub_1C0D7815C();
      if (__OFSUB__(v15, v18))
      {
        goto LABEL_58;
      }

      v17 += v15 - v18;
    }

    if (__OFSUB__(v16, v15))
    {
      goto LABEL_57;
    }

    v19 = sub_1C0D7814C();
    if (v19 >= v16 - v15)
    {
      v20 = v16 - v15;
    }

    else
    {
      v20 = v19;
    }
  }

  else
  {
    if (!v12)
    {
      v69[0] = *v9;
      LOWORD(v69[1]) = v11;
      BYTE2(v69[1]) = BYTE2(v11);
      BYTE3(v69[1]) = BYTE3(v11);
      BYTE4(v69[1]) = BYTE4(v11);
      BYTE5(v69[1]) = BYTE5(v11);
      sub_1C0CF6468(a1, a2);
      v13 = v69;
      v14 = v69 + BYTE6(v11);
      goto LABEL_24;
    }

    v21 = v10;
    v22 = v10 >> 32;
    v23 = v22 - v21;
    if (v22 < v21)
    {
      goto LABEL_56;
    }

    sub_1C0CF6468(a1, a2);
    v17 = sub_1C0D7812C();
    if (v17)
    {
      v24 = sub_1C0D7815C();
      if (__OFSUB__(v21, v24))
      {
        goto LABEL_59;
      }

      v17 += v21 - v24;
    }

    v25 = sub_1C0D7814C();
    if (v25 >= v23)
    {
      v20 = v23;
    }

    else
    {
      v20 = v25;
    }
  }

  v26 = (v20 + v17);
  if (v17)
  {
    v14 = v26;
  }

  else
  {
    v14 = 0;
  }

  v13 = v17;
LABEL_24:
  sub_1C0D20850(v13, v14, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4E8, &qword_1C0D7C040);
  v27 = v70[0];
  v28 = v70[1];
  __swift_destroy_boxed_opaque_existential_1(v71);
  sub_1C0D135D8();
  sub_1C0D781BC();
  if (v2)
  {

    sub_1C0CF448C(v27, v28);
  }

  else
  {
    sub_1C0CF448C(v27, v28);
    v29 = v69[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D340, &qword_1C0D7BA90);
    v30 = sub_1C0D78EEC();
    v3 = v30;
    v31 = 0;
    v60 = v29 + 64;
    v61 = v29;
    v32 = 1 << *(v29 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v29 + 64);
    v35 = (v32 + 63) >> 6;
    v63 = v35;
    v64 = v30 + 64;
    v62 = v30;
    if (v34)
    {
      goto LABEL_30;
    }

LABEL_31:
    v38 = v31;
    while (1)
    {
      v31 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v31 >= v35)
      {
        break;
      }

      v39 = *(v60 + 8 * v31);
      ++v38;
      if (v39)
      {
        v36 = __clz(__rbit64(v39));
        v37 = (v39 - 1) & v39;
        while (2)
        {
          v40 = v36 | (v31 << 6);
          v41 = *(*(v29 + 56) + 8 * v40);
          v42 = *(v41 + 16);
          if (v42)
          {
            v68 = v36 | (v31 << 6);
            v65 = v37;
            v66 = *(v41 + 32);
            v67 = *(*(v29 + 48) + 16 * v40);
            sub_1C0CF6468(*(*(v29 + 48) + 16 * v40), *(*(v29 + 48) + 16 * v40 + 8));
            sub_1C0D78BFC();
            v43 = MEMORY[0x1C68E3C40](v42 - 1, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
            v44 = v43;
            if (v42 == 1)
            {
            }

            else
            {
              v45 = 1;
              v46 = v43 + 56;
              do
              {
                while (1)
                {
                  v47 = *(v41 + 32 + 8 * v45++);
                  v48 = *(v44 + 40);
                  v49 = sub_1C0D78FEC();
                  v50 = -1 << *(v44 + 32);
                  v51 = v49 & ~v50;
                  if ((*(v46 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
                  {
                    break;
                  }

LABEL_45:
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v71[0] = v44;
                  sub_1C0CFBEF8(v47, v51, isUniquelyReferenced_nonNull_native);
                  v44 = v71[0];
                  if (v45 == v42)
                  {
                    goto LABEL_47;
                  }

                  v46 = v71[0] + 56;
                }

                v52 = ~v50;
                while (*(*(v44 + 48) + 8 * v51) != v47)
                {
                  v51 = (v51 + 1) & v52;
                  if (((*(v46 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
                  {
                    goto LABEL_45;
                  }
                }
              }

              while (v45 != v42);
LABEL_47:

              v3 = v62;
              v29 = v61;
            }

            *(v64 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
            *(v3[6] + 16 * v68) = v67;
            v54 = (v3[7] + 16 * v68);
            *v54 = v66;
            v54[1] = v44;
            v55 = v3[2];
            v56 = __OFADD__(v55, 1);
            v57 = v55 + 1;
            if (!v56)
            {
              v3[2] = v57;
              v35 = v63;
              v34 = v65;
              if (!v65)
              {
                goto LABEL_31;
              }

LABEL_30:
              v36 = __clz(__rbit64(v34));
              v37 = (v34 - 1) & v34;
              continue;
            }

LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
          }

          break;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }
  }

  v58 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1C0D0E630(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v29 = a2;
  v8 = sub_1C0D78AEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v13 = sub_1C0D78AAC();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  if (v15 >> 60 == 15)
  {
    __break(1u);
LABEL_8:

    __break(1u);
    return result;
  }

  v27 = v13;
  v28 = v15;
  v26[3] = MEMORY[0x1E6969080];
  v26[4] = MEMORY[0x1E6969078];
  v26[0] = a3;
  v26[1] = a4;
  v16 = __swift_project_boxed_opaque_existential_1(v26, MEMORY[0x1E6969080]);
  v17 = *v16;
  v18 = v16[1];
  sub_1C0D134D0(v13, v15);
  sub_1C0CF6468(a3, a4);
  sub_1C0D4268C(v17, v18);
  sub_1C0CEACDC(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v19 = v27;
  v20 = v28;
  sub_1C0D7884C();
  sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  v21 = sub_1C0D786DC();
  v22 = sub_1C0D3ECE4(a1, v29, 1, v19, v20, v21, 0);
  if (v4)
  {
    return sub_1C0CF448C(v19, v20);
  }

  if (!*(v22 + 16))
  {
    goto LABEL_8;
  }

  v24 = *(v22 + 32);

  sub_1C0CF448C(v19, v20);
  return v24;
}

uint64_t sub_1C0D0E898(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v29 = a2;
  v8 = sub_1C0D78AEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v13 = sub_1C0D78AAC();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  if (v15 >> 60 == 15)
  {
    __break(1u);
LABEL_8:

    __break(1u);
    return result;
  }

  v27 = v13;
  v28 = v15;
  v26[3] = MEMORY[0x1E6969080];
  v26[4] = MEMORY[0x1E6969078];
  v26[0] = a3;
  v26[1] = a4;
  v16 = __swift_project_boxed_opaque_existential_1(v26, MEMORY[0x1E6969080]);
  v17 = *v16;
  v18 = v16[1];
  sub_1C0D134D0(v13, v15);
  sub_1C0CF6468(a3, a4);
  sub_1C0D4268C(v17, v18);
  sub_1C0CEACDC(v13, v15);
  __swift_destroy_boxed_opaque_existential_1(v26);
  v19 = v27;
  v20 = v28;
  sub_1C0D7896C();
  sub_1C0D13530(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  v21 = sub_1C0D786DC();
  v22 = sub_1C0D3F16C(a1, v29, 1, v19, v20, v21, 0);
  if (v4)
  {
    return sub_1C0CF448C(v19, v20);
  }

  if (!*(v22 + 16))
  {
    goto LABEL_8;
  }

  v24 = *(v22 + 32);

  sub_1C0CF448C(v19, v20);
  return v24;
}

unint64_t sub_1C0D0EB00@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1C0D77CE4(a1, &a1[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1C0D7818C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1C0D7811C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1C0D7828C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1C0D0EBC8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1C0D0ECC8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26 = a3;
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4A0, &qword_1C0D7C000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v24 - v7);
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  *v8 = *v3;
  v8[1] = 0;
  v27 = a1;
  if (v11 >> 62 == 2)
  {
    v12 = *(v10 + 16);
  }

  v13 = v3[3];
  v14 = v3[4];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4C0, &qword_1C0D7C020);
  v16 = *(v15 + 52);
  result = sub_1C0D7837C();
  v18 = *(v15 + 56);
  *(v8 + v18) = 0;
  v19 = (v8 + *(v5 + 44));
  *v19 = v13;
  v19[1] = v14;
  if (v30)
  {
    v25 = v18;
    v20 = v26;
    if (v26)
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v21 = *(v9 + 16);
      if (v21)
      {
        v20 = 0;
        v28 = v26 - 1;
        v29 = v9 + 32;
        while (v20 < *(v9 + 16))
        {
          v22 = *(v29 + v20);
          v8[1] = v20 + 1;
          sub_1C0D7836C();
          sub_1C0D13530(&qword_1ED9076D8, MEMORY[0x1E6969050]);
          sub_1C0D78D4C();
          if ((v31 & 0x100000000) != 0)
          {
            goto LABEL_13;
          }

          BYTE1(v31) = v22;
          BYTE2(v31) = BYTE3(v31);
          result = v13(&v31, &v31 + 1);
          *(v30 + v20) = v31;
          if (v28 == v20)
          {
            v20 = v26;
            v23 = v27;
            goto LABEL_16;
          }

          if (v21 == ++v20)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_19;
      }

LABEL_12:
      v20 = v21;
LABEL_13:
      *(v8 + v25) = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  v23 = v27;
LABEL_16:
  sub_1C0D13428(v8, v23);
  return v20;
}

unint64_t sub_1C0D0EF18(unsigned int a1)
{
  v3 = MEMORY[0x1C68E3FC0](*(v1 + 40), a1, 4);

  return sub_1C0D0F144(a1, v3);
}

unint64_t sub_1C0D0EF8C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1C0D78FFC();
  type metadata accessor for CFString(0);
  sub_1C0D13530(&qword_1EBE6D4D0, type metadata accessor for CFString);
  sub_1C0D783AC();
  v4 = sub_1C0D7902C();

  return sub_1C0D0F5B0(a1, v4);
}

uint64_t sub_1C0D0F06C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_1C0D78FFC();
  a3(v12, a1, a2);
  v9 = sub_1C0D7902C();

  return a4(a1, a2, v9);
}

unint64_t sub_1C0D0F100(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C0D78D1C();

  return sub_1C0D0F774(a1, v5);
}

unint64_t sub_1C0D0F144(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C0D0F1B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v46[3] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a2;
    v9 = a1;
    v10 = ~v5;
    if (a1)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2 == 0xC000000000000000;
    }

    v12 = !v11;
    v44 = v12;
    v13 = a2 >> 62;
    v14 = __OFSUB__(HIDWORD(a1), a1);
    v41 = v14;
    v40 = HIDWORD(a1) - a1;
    v42 = v10;
    v43 = BYTE6(a2);
    v37 = v4;
    while (1)
    {
      v15 = (*(v7 + 48) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];
      v18 = v16 >> 62;
      if (v16 >> 62 == 3)
      {
        break;
      }

      if (v18 > 1)
      {
        if (v18 != 2)
        {
          goto LABEL_36;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        v25 = __OFSUB__(v23, v24);
        v22 = v23 - v24;
        if (v25)
        {
          goto LABEL_64;
        }

        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

      else if (v18)
      {
        LODWORD(v22) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_65;
        }

        v22 = v22;
        if (v13 <= 1)
        {
LABEL_33:
          v26 = v43;
          if (v13)
          {
            v26 = v40;
            if (v41)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v22 = BYTE6(v16);
        if (v13 <= 1)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      if (v13 != 2)
      {
        if (!v22)
        {
          goto LABEL_61;
        }

        goto LABEL_13;
      }

      v28 = *(v9 + 16);
      v27 = *(v9 + 24);
      v25 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (v25)
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
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
      }

LABEL_39:
      if (v22 != v26)
      {
        goto LABEL_13;
      }

      if (v22 < 1)
      {
        goto LABEL_61;
      }

      if (v18 <= 1)
      {
        if (!v18)
        {
          v46[0] = v17;
          LOWORD(v46[1]) = v16;
          BYTE2(v46[1]) = BYTE2(v16);
          BYTE3(v46[1]) = BYTE3(v16);
          BYTE4(v46[1]) = BYTE4(v16);
          BYTE5(v46[1]) = BYTE5(v16);
          sub_1C0CF6468(v17, v16);
          sub_1C0D198E4(v46, v9, v8, &v45);
          sub_1C0CF448C(v17, v16);
          if (v45)
          {
            goto LABEL_61;
          }

          v10 = v42;
          goto LABEL_13;
        }

        if (v17 >> 32 < v17)
        {
          goto LABEL_66;
        }

        sub_1C0CF6468(v17, v16);
        v31 = sub_1C0D7812C();
        if (v31)
        {
          v33 = sub_1C0D7815C();
          if (__OFSUB__(v17, v33))
          {
            goto LABEL_69;
          }

          v31 += v17 - v33;
        }

        goto LABEL_58;
      }

      if (v18 == 2)
      {
        v30 = *(v17 + 16);
        v29 = *(v17 + 24);
        sub_1C0CF6468(v17, v16);
        v31 = sub_1C0D7812C();
        if (v31)
        {
          v32 = sub_1C0D7815C();
          if (__OFSUB__(v30, v32))
          {
            goto LABEL_68;
          }

          v31 += v30 - v32;
        }

        if (__OFSUB__(v29, v30))
        {
          goto LABEL_67;
        }

LABEL_58:
        sub_1C0D7814C();
        v34 = v31;
        v9 = a1;
        v8 = a2;
        sub_1C0D198E4(v34, a1, a2, v46);
        sub_1C0CF448C(v17, v16);
        if (v46[0])
        {
          goto LABEL_61;
        }

        v4 = v37;
        v10 = v42;
        goto LABEL_13;
      }

      memset(v46, 0, 14);
      sub_1C0CF6468(v17, v16);
      sub_1C0D198E4(v46, v9, v8, &v45);
      sub_1C0CF448C(v17, v16);
      if (v45)
      {
        goto LABEL_61;
      }

LABEL_13:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    if (v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16 == 0xC000000000000000;
    }

    v21 = !v19 || v13 < 3;
    if (((v21 | v44) & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_36:
    v22 = 0;
    if (v13 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_61:
  v35 = *MEMORY[0x1E69E9840];
  return v6;
}

unint64_t sub_1C0D0F5B0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1C0D13530(&qword_1EBE6D4D0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C0D7839C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C0D0F6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C0D78F3C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C0D0F774(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C0D134E4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C0D78D2C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1C0D0F838@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1C0D78DBC();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D0F888(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v3 = *(a3 + 3);
  v7 = *(a3 + 1);
  v8 = v3;
  v5[2] = &v6;
  return sub_1C0D75340(sub_1C0D134B0, v5, a1, a2);
}

void *sub_1C0D0F8EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v7;
  v12 = *(a3 + 32);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D498, &qword_1C0D7BFF8) + 48);
  sub_1C0D13734(v11, v10, &qword_1EBE6D4A8, &qword_1C0D7C008);
  result = sub_1C0D0ECC8(a4, a1, a2);
  *(a4 + v8) = result;
  return result;
}

uint64_t sub_1C0D0F990(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1C0D42970(result);
    }

    else
    {
      v2 = sub_1C0D7818C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1C0D7813C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C0D7828C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1C0D0FA30(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D1F0, &qword_1C0D7BFF0);
  v10 = sub_1C0CF3914(qword_1ED907618, &qword_1EBE6D1F0, &qword_1C0D7BFF0);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);
  sub_1C0D78BFC();
  sub_1C0D20850(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_1C0D0FB0C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  v127 = a4;
  v13 = *v8;
  v14 = sub_1C0D0DFC0(*v8, *v8);
  v15 = [v13 isEqual_];

  if (v15)
  {
    LOBYTE(v16) = 0;
    return v16 & 1;
  }

  v114 = v9;
  v17 = v8[1];
  v18 = sub_1C0D0DFC0(v17, v17);
  v19 = [v17 isEqual_];

  if (v19)
  {
    LOBYTE(v16) = 0;
    return v16 & 1;
  }

  v20 = v8;
  v21 = *(a8 + 8);
  v119 = *(a8 + 16);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](v21, v119);
  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](0xD000000000000012, 0x80000001C0D808B0);

  v120 = v21;
  v121 = v119;
  v123 = MEMORY[0x1E69E7CC0];
  v124 = MEMORY[0x1E69E7CC0];
  v125 = MEMORY[0x1E69E7CC0];
  v22 = sub_1C0CF49E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  v25 = v23 >> 1;
  v26 = v24 + 1;
  if (v23 >> 1 <= v24)
  {
    v22 = sub_1C0CF49E8((v23 > 1), v24 + 1, 1, v22);
    v23 = *(v22 + 3);
    v25 = v23 >> 1;
  }

  *(v22 + 2) = v26;
  v27 = &v22[16 * v24];
  *(v27 + 4) = 12408;
  *(v27 + 5) = 0xE200000000000000;
  v122 = v22;
  v28 = v24 + 2;
  if (v25 < (v24 + 2))
  {
    v22 = sub_1C0CF49E8((v23 > 1), v24 + 2, 1, v22);
  }

  *(v22 + 2) = v28;
  v29 = &v22[16 * v26];
  *(v29 + 32) = 12664;
  *(v29 + 40) = 0xE200000000000000;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v29 = *(v22 + 3);
    v26 = v24 + 3;
    v111 = v24 + 1;
    if ((v24 + 3) <= (v29 >> 1))
    {
      goto LABEL_11;
    }
  }

  v22 = sub_1C0CF49E8((v29 > 1), v26, 1, v22);
LABEL_11:
  *(v22 + 2) = v26;
  v30 = &v22[16 * v28];
  *(v30 + 32) = 12920;
  *(v30 + 40) = 0xE200000000000000;
  v31 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = *(v22 + 3);
    v28 = v24 + 4;
    if ((v24 + 4) <= (v30 >> 1))
    {
      goto LABEL_13;
    }
  }

  v22 = sub_1C0CF49E8((v30 > 1), v28, 1, v22);
LABEL_13:
  *(v22 + 2) = v28;
  v32 = &v22[16 * v26];
  *(v32 + 4) = 0x69646E696C423078;
  *(v32 + 5) = 0xEA0000000000676ELL;
  v122 = v22;
  v33 = v28 - 1;
  v113 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v33 = *(v22 + 3);
    v26 = v24 + 5;
    if ((v24 + 5) <= (v33 >> 1))
    {
      goto LABEL_15;
    }
  }

  v22 = sub_1C0CF49E8((v33 > 1), v26, 1, v22);
LABEL_15:
  *(v22 + 2) = v26;
  v34 = &v22[16 * v28];
  *(v34 + 4) = 98;
  *(v34 + 5) = 0xE100000000000000;
  v35 = v26 - 1;
  v112 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
  }

  else
  {
    v35 = *(v22 + 3);
    v28 = v24 + 6;
    v110 = v31;
    if ((v24 + 6) <= (v35 >> 1))
    {
      goto LABEL_17;
    }
  }

  v22 = sub_1C0CF49E8((v35 > 1), v28, 1, v22);
LABEL_17:
  *(v22 + 2) = v28;
  v36 = &v22[16 * v26];
  *(v36 + 32) = 12660;
  *(v36 + 40) = 0xE200000000000000;
  v37 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v36 = *(v22 + 3);
    v26 = v24 + 7;
    if ((v24 + 7) <= (v36 >> 1))
    {
      goto LABEL_19;
    }
  }

  v22 = sub_1C0CF49E8((v36 > 1), v26, 1, v22);
LABEL_19:
  *(v22 + 2) = v26;
  v38 = &v22[16 * v28];
  *(v38 + 4) = 12916;
  *(v38 + 5) = 0xE200000000000000;
  v122 = v22;
  v109 = v26 - 1;
  if (__OFSUB__(v26, 1))
  {
    __break(1u);
    goto LABEL_58;
  }

  v107 = v28 - 1;
  v108 = v20;
  v39 = v20[2];
  v40 = v20[3];
  v41 = v20[4];
  v104 = v20[5];
  v42 = sub_1C0D2EC40(1198417255, 0xE400000000000000, a6, &v120);
  a7 = sub_1C0D2EC40(1215194471, 0xE400000000000000, a7, &v120);
  a1 = sub_1C0D2EC40(0x636E45316DLL, 0xE500000000000000, a1, &v120);
  v105 = sub_1C0D2EC40(0x636E45326DLL, 0xE500000000000000, a2, &v120);
  v102 = sub_1C0D2EC40(85, 0xE100000000000000, v13, &v120);
  v106 = sub_1C0D2EC40(0x6D69725055636E65, 0xE900000000000065, v17, &v120);
  a3 = sub_1C0D2EC40(12376, 0xE200000000000000, a3, &v120);
  v17 = sub_1C0D2EC40(12632, 0xE200000000000000, v127, &v120);
  v127 = sub_1C0D2EC40(12888, 0xE200000000000000, a5, &v120);
  v101 = sub_1C0D2EC40(0x7875413058, 0xE500000000000000, v39, &v120);
  v20 = sub_1C0D2EC40(0x7875413158, 0xE500000000000000, v40, &v120);
  a2 = sub_1C0D2EC40(0x7875413258, 0xE500000000000000, v41, &v120);
  v37 = sub_1C0D2EC40(2020950344, 0xE400000000000000, v104, &v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C0D7BEE0;
  *(v13 + 32) = v24;
  *(v13 + 40) = v42;
  v103 = v42;
  *(v13 + 48) = v113;
  *(v13 + 56) = a7;
  a6 = v125;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_58:
    a6 = sub_1C0CF4AF4(0, a6[2] + 1, 1, a6);
  }

  v44 = a6[2];
  v43 = a6[3];
  if (v44 >= v43 >> 1)
  {
    a6 = sub_1C0CF4AF4((v43 > 1), v44 + 1, 1, a6);
  }

  a6[2] = v44 + 1;
  v45 = &a6[2 * v44];
  v45[4] = a3;
  v45[5] = v13;
  v125 = a6;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C0D7B690;
  *(v46 + 32) = v111;
  *(v46 + 40) = a7;
  v48 = a6[2];
  v47 = a6[3];
  if (v48 >= v47 >> 1)
  {
    v91 = v46;
    a6 = sub_1C0CF4AF4((v47 > 1), v48 + 1, 1, a6);
    v46 = v91;
  }

  a6[2] = v48 + 1;
  v49 = &a6[2 * v48];
  v49[4] = v17;
  v49[5] = v46;
  v125 = a6;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C0D7B690;
  *(v50 + 32) = v110;
  *(v50 + 40) = a7;
  v52 = a6[2];
  v51 = a6[3];
  v53 = v112;
  if (v52 >= v51 >> 1)
  {
    v92 = v50;
    a6 = sub_1C0CF4AF4((v51 > 1), v52 + 1, 1, a6);
    v50 = v92;
    v53 = v112;
  }

  a6[2] = v52 + 1;
  v54 = &a6[2 * v52];
  v54[4] = v127;
  v54[5] = v50;
  v125 = a6;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1C0D7B690;
  *(v55 + 32) = v53;
  *(v55 + 40) = a7;
  v57 = a6[2];
  v56 = a6[3];
  if (v57 >= v56 >> 1)
  {
    v93 = v55;
    a6 = sub_1C0CF4AF4((v56 > 1), v57 + 1, 1, a6);
    v55 = v93;
    v53 = v112;
  }

  a6[2] = v57 + 1;
  v58 = &a6[2 * v57];
  v58[4] = v37;
  v58[5] = v55;
  v125 = a6;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1C0D7B690;
  *(v59 + 32) = v113;
  *(v59 + 40) = v37;
  v61 = a6[2];
  v60 = a6[3];
  if (v61 >= v60 >> 1)
  {
    v94 = v59;
    a6 = sub_1C0CF4AF4((v60 > 1), v61 + 1, 1, a6);
    v59 = v94;
    v53 = v112;
  }

  a6[2] = v61 + 1;
  v62 = &a6[2 * v61];
  v62[4] = v101;
  v62[5] = v59;
  v125 = a6;
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1C0D7B690;
  *(v63 + 32) = v107;
  *(v63 + 40) = a7;
  v65 = a6[2];
  v64 = a6[3];
  if (v65 >= v64 >> 1)
  {
    v95 = v63;
    a6 = sub_1C0CF4AF4((v64 > 1), v65 + 1, 1, a6);
    v63 = v95;
    v53 = v112;
  }

  a6[2] = v65 + 1;
  v66 = &a6[2 * v65];
  v66[4] = v20;
  v66[5] = v63;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1C0D7B690;
  *(v67 + 32) = v53;
  *(v67 + 40) = v17;
  v125 = a6;
  v69 = a6[2];
  v68 = a6[3];
  if (v69 >= v68 >> 1)
  {
    v96 = v67;
    a6 = sub_1C0CF4AF4((v68 > 1), v69 + 1, 1, a6);
    v67 = v96;
  }

  a6[2] = v69 + 1;
  v70 = &a6[2 * v69];
  v70[4] = v20;
  v70[5] = v67;
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1C0D7B690;
  v72 = v127;
  *(v71 + 32) = v53;
  *(v71 + 40) = v72;
  v125 = a6;
  v74 = a6[2];
  v73 = a6[3];
  v75 = a2;
  if (v74 >= v73 >> 1)
  {
    v97 = v71;
    a6 = sub_1C0CF4AF4((v73 > 1), v74 + 1, 1, a6);
    v71 = v97;
    v75 = a2;
  }

  a6[2] = v74 + 1;
  v76 = &a6[2 * v74];
  v76[4] = v75;
  v76[5] = v71;
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1C0D7B690;
  *(v77 + 32) = v109;
  *(v77 + 40) = a7;
  v125 = a6;
  v79 = a6[2];
  v78 = a6[3];
  if (v79 >= v78 >> 1)
  {
    v98 = v77;
    a6 = sub_1C0CF4AF4((v78 > 1), v79 + 1, 1, a6);
    v77 = v98;
    v75 = a2;
  }

  a6[2] = v79 + 1;
  v80 = &a6[2 * v79];
  v80[4] = v75;
  v80[5] = v77;
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1C0D7B690;
  *(v81 + 32) = v53;
  *(v81 + 40) = v103;
  v125 = a6;
  v83 = a6[2];
  v82 = a6[3];
  if (v83 >= v82 >> 1)
  {
    v99 = v81;
    a6 = sub_1C0CF4AF4((v82 > 1), v83 + 1, 1, a6);
    v81 = v99;
  }

  a6[2] = v83 + 1;
  v84 = &a6[2 * v83];
  v84[4] = v102;
  v84[5] = v81;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1C0D7BEF0;
  *(v85 + 32) = v53;
  *(v85 + 40) = a3;
  *(v85 + 48) = v107;
  *(v85 + 56) = a1;
  *(v85 + 64) = v109;
  *(v85 + 72) = v105;
  v125 = a6;
  v87 = a6[2];
  v86 = a6[3];
  if (v87 >= v86 >> 1)
  {
    v100 = v85;
    a6 = sub_1C0CF4AF4((v86 > 1), v87 + 1, 1, a6);
    v85 = v100;
  }

  a6[2] = v87 + 1;
  v88 = &a6[2 * v87];
  v88[4] = v106;
  v88[5] = v85;
  v126[0] = v120;
  v126[1] = v121;
  v126[2] = v122;
  v126[3] = v123;
  v126[4] = v124;
  v126[5] = a6;
  v16 = v126;
  v89 = sub_1C0D21C50(v108[6], v108[7]);
  if (!v114)
  {
    LOBYTE(v16) = v89;
  }

  return v16 & 1;
}

id sub_1C0D105F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = sub_1C0D786CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = __OFSUB__(v14, v15);
    v13 = v14 - v15;
    if (!v16)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v13) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v13 = v13;
LABEL_10:
  if ((a3 * 3) >> 64 != (3 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (v13 == 3 * a3)
  {
    v80 = MEMORY[0x1E6969080];
    v81 = MEMORY[0x1E6969078];
    v78 = a1;
    v79 = a2;
    v17 = __swift_project_boxed_opaque_existential_1(&v78, MEMORY[0x1E6969080]);
    v18 = *v17;
    v19 = v17[1];
    v20 = v19 >> 62;
    v72 = v7;
    v74 = v8;
    if ((v19 >> 62) > 1)
    {
      if (v20 != 2)
      {
        memset(v76, 0, 14);
        sub_1C0CF6468(a1, a2);
        v21 = v76;
        goto LABEL_36;
      }

      v24 = *(v18 + 16);
      v25 = *(v18 + 24);
      sub_1C0CF6468(a1, a2);
      v26 = sub_1C0D7812C();
      if (v26)
      {
        v27 = sub_1C0D7815C();
        if (__OFSUB__(v24, v27))
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v26 += v24 - v27;
      }

      if (!__OFSUB__(v25, v24))
      {
        v28 = sub_1C0D7814C();
        if (v28 >= v25 - v24)
        {
          v29 = v25 - v24;
        }

        else
        {
          v29 = v28;
        }

LABEL_31:
        v35 = &v26[v29];
        if (v26)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        sub_1C0D20850(v26, v36, v77);
        v70 = v3;
        v7 = v72;
LABEL_37:
        v37 = v77[0];
        v38 = v77[1];
        __swift_destroy_boxed_opaque_existential_1(&v78);
        v82 = v37;
        v83 = v38;
        sub_1C0CF6468(v37, v38);
        sub_1C0D01560(a3, v37, v38, &v78);
        v40 = v78;
        v39 = v79;
        sub_1C0D22268(a3);
        LODWORD(v78) = 0;
        sub_1C0D7884C();
        sub_1C0CF6468(v40, v39);
        v75 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
        sub_1C0D786EC();
        v41 = sub_1C0D786BC();
        v73 = a3;
        v74 = *(v74 + 8);
        (v74)(v11, v7);
        v42 = objc_allocWithZone(MEMORY[0x1E6999648]);
        v43 = sub_1C0D7830C();
        v44 = [v42 initFromPublicKeyBytes:v43 inGroup:v41 compressed:1 corecryptoError:&v78];

        sub_1C0CF448C(v40, v39);
        if (v44)
        {
          v71 = v44;
          sub_1C0CF448C(v40, v39);
          v45 = v82;
          v46 = v83;
          sub_1C0CF6468(v82, v83);
          v47 = v73;
          sub_1C0D01560(v73, v45, v46, &v78);
          v48 = v78;
          v49 = v79;
          sub_1C0D22268(v47);
          LODWORD(v78) = 0;
          sub_1C0CF6468(v48, v49);
          sub_1C0D786EC();
          v50 = sub_1C0D786BC();
          (v74)(v11, v7);
          v51 = objc_allocWithZone(MEMORY[0x1E6999648]);
          v52 = sub_1C0D7830C();
          v53 = [v51 initFromPublicKeyBytes:v52 inGroup:v50 compressed:1 corecryptoError:&v78];

          sub_1C0CF448C(v48, v49);
          if (v53)
          {
            sub_1C0CF448C(v48, v49);
            v54 = v82;
            v55 = v83;
            sub_1C0CF6468(v82, v83);
            v56 = v73;
            sub_1C0D01560(v73, v54, v55, &v78);
            v57 = v78;
            v58 = v79;
            sub_1C0D22268(v56);
            LODWORD(v78) = 0;
            sub_1C0CF6468(v57, v58);
            sub_1C0D786EC();
            v59 = sub_1C0D786BC();
            (v74)(v11, v72);
            v60 = objc_allocWithZone(MEMORY[0x1E6999648]);
            v61 = sub_1C0D7830C();
            v62 = [v60 initFromPublicKeyBytes:v61 inGroup:v59 compressed:1 corecryptoError:&v78];

            sub_1C0CF448C(v57, v58);
            if (v62)
            {
              sub_1C0CF448C(v57, v58);
              sub_1C0CF448C(v82, v83);
              result = v71;
              goto LABEL_45;
            }

            v67 = v78;
            sub_1C0CF8DE0();
            swift_allocError();
            *v68 = v67;
            *(v68 + 4) = 0;
            swift_willThrow();
            sub_1C0CF448C(v57, v58);
          }

          else
          {
            v65 = v78;
            sub_1C0CF8DE0();
            swift_allocError();
            *v66 = v65;
            *(v66 + 4) = 0;
            swift_willThrow();
            sub_1C0CF448C(v48, v49);
          }
        }

        else
        {
          v63 = v78;
          sub_1C0CF8DE0();
          swift_allocError();
          *v64 = v63;
          *(v64 + 4) = 0;
          swift_willThrow();
          sub_1C0CF448C(v40, v39);
        }

        result = sub_1C0CF448C(v82, v83);
        goto LABEL_45;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (!v20)
    {
      v76[0] = v18;
      LOWORD(v76[1]) = v19;
      BYTE2(v76[1]) = BYTE2(v19);
      BYTE3(v76[1]) = BYTE3(v19);
      BYTE4(v76[1]) = BYTE4(v19);
      BYTE5(v76[1]) = BYTE5(v19);
      sub_1C0CF6468(a1, a2);
      v21 = v76 + BYTE6(v19);
LABEL_36:
      sub_1C0D20850(v76, v21, v77);
      v70 = v3;
      goto LABEL_37;
    }

    v30 = v18;
    v31 = v18 >> 32;
    v32 = v31 - v30;
    if (v31 >= v30)
    {
      sub_1C0CF6468(a1, a2);
      v26 = sub_1C0D7812C();
      if (!v26)
      {
        goto LABEL_28;
      }

      v33 = sub_1C0D7815C();
      if (!__OFSUB__(v30, v33))
      {
        v26 += v30 - v33;
LABEL_28:
        v34 = sub_1C0D7814C();
        if (v34 >= v32)
        {
          v29 = v32;
        }

        else
        {
          v29 = v34;
        }

        goto LABEL_31;
      }

LABEL_51:
      __break(1u);
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_1C0CFC3D4();
  swift_allocError();
  *v22 = 8;
  result = swift_willThrow();
LABEL_45:
  v69 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D10D8C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (v4 + 1) * a1;
  if (((v4 + 1) * a1) >> 64 == v5 >> 63)
  {
    v21 = sub_1C0D6E528(v5);
    v8 = [a2 serializedBigEndianScalar];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1C0D7832C();
      v12 = v11;

      sub_1C0D7834C();
      sub_1C0CF448C(v10, v12);
      if (!v4)
      {
        return v21;
      }

      sub_1C0D78BFC();
      for (i = 32; ; i += 8)
      {
        v14 = *(a3 + i);
        v15 = [v14 serializedBigEndianScalar];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = sub_1C0D7832C();
        v19 = v18;

        sub_1C0D7834C();
        sub_1C0CF448C(v17, v19);
        if (!--v4)
        {

          return v21;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

uint64_t sub_1C0D10F0C(uint64_t result, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  v7 = 5 * result;
  if ((result * 5) >> 64 != (5 * result) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = 2 * a2 + v7;
  if (__OFADD__(2 * a2, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v23 = sub_1C0D6E528(result);
  result = [a3 serializedPublicKey_];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = result;
  v13 = sub_1C0D7832C();
  v15 = v14;

  sub_1C0D7834C();
  sub_1C0CF448C(v13, v15);
  result = [a4 serializedPublicKey_];
  if (result)
  {
    v16 = result;
    v17 = sub_1C0D7832C();
    v19 = v18;

    sub_1C0D7834C();
    sub_1C0CF448C(v17, v19);
    v20 = sub_1C0D10D8C(v6, a5, a6);
    v22 = v21;
    sub_1C0D7834C();
    sub_1C0CF448C(v20, v22);
    return v23;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_1C0D11094(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v85 = *MEMORY[0x1E69E9840];
  v75 = sub_1C0D786CC();
  v8 = *(v75 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = __OFSUB__(v13, v14);
    v12 = v13 - v14;
    if (!v15)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v12) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v12 = v12;
LABEL_10:
  if ((a3 * v76) >> 64 != (a3 * v76) >> 63)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v12 != a3 * v76)
  {
    sub_1C0CFC3D4();
    swift_allocError();
    *v22 = 7;
    result = swift_willThrow();
    goto LABEL_48;
  }

  v81 = MEMORY[0x1E6969080];
  v82 = MEMORY[0x1E6969078];
  v79 = a1;
  v80 = a2;
  v16 = __swift_project_boxed_opaque_existential_1(&v79, MEMORY[0x1E6969080]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v18 >> 62;
  if ((v18 >> 62) <= 1)
  {
    if (!v19)
    {
      v77[0] = *v16;
      LOWORD(v77[1]) = v18;
      BYTE2(v77[1]) = BYTE2(v18);
      BYTE3(v77[1]) = BYTE3(v18);
      BYTE4(v77[1]) = BYTE4(v18);
      BYTE5(v77[1]) = BYTE5(v18);
      sub_1C0CF6468(a1, a2);
      v20 = v77;
      v21 = v77 + BYTE6(v18);
      goto LABEL_35;
    }

    goto LABEL_23;
  }

  if (v19 != 2)
  {
    memset(v77, 0, 14);
    sub_1C0CF6468(a1, a2);
    v20 = v77;
    v21 = v77;
    goto LABEL_35;
  }

  v24 = *(v17 + 16);
  v25 = *(v17 + 24);
  sub_1C0CF6468(a1, a2);
  a2 = v18 & 0x3FFFFFFFFFFFFFFFLL;
  v26 = sub_1C0D7812C();
  if (v26)
  {
    a2 = v18 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = sub_1C0D7815C();
    v17 = v24 - v27;
    if (__OFSUB__(v24, v27))
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

    v26 += v17;
  }

  v15 = __OFSUB__(v25, v24);
  v28 = v25 - v24;
  if (v15)
  {
    __break(1u);
LABEL_23:
    v29 = v17;
    v30 = v17 >> 32;
    v28 = v30 - v29;
    if (v30 < v29)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    sub_1C0CF6468(a1, a2);
    v26 = sub_1C0D7812C();
    if (v26)
    {
      v31 = sub_1C0D7815C();
      if (__OFSUB__(v29, v31))
      {
        goto LABEL_56;
      }

      v26 += v29 - v31;
    }
  }

  v32 = sub_1C0D7814C();
  if (v32 >= v28)
  {
    v33 = v28;
  }

  else
  {
    v33 = v32;
  }

  v34 = (v33 + v26);
  if (v26)
  {
    v21 = v34;
  }

  else
  {
    v21 = 0;
  }

  v20 = v26;
LABEL_35:
  sub_1C0D20850(v20, v21, v78);
  v35 = v78[0];
  v36 = v78[1];
  __swift_destroy_boxed_opaque_existential_1(&v79);
  v83 = v35;
  v84 = v36;
  sub_1C0CF6468(v35, v36);
  v37 = v76;
  sub_1C0D01560(v76, v35, v36, &v79);
  v39 = v79;
  v38 = v80;
  sub_1C0D22268(v37);
  LODWORD(v79) = 0;
  v40 = sub_1C0D7884C();
  sub_1C0CF6468(v39, v38);
  v41 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  v42 = v74;
  v70 = v40;
  v72 = v41;
  sub_1C0D786EC();
  v43 = sub_1C0D786BC();
  v44 = *(v8 + 8);
  v73 = v8 + 8;
  v71 = v44;
  v44(v42, v75);
  v45 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v46 = sub_1C0D7830C();
  v47 = [v45 initWithData:v46 inGroup:v43 reduction:1 corecryptoError:&v79];

  sub_1C0CF448C(v39, v38);
  if (v47)
  {
    sub_1C0CF448C(v39, v38);
    v48 = a3 - 1;
    if (__OFSUB__(a3, 1))
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v78[0] = sub_1C0D78DEC();
    if (v48 < 0)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v68 = v4;
    v69 = v47;
    if (a3 != 1)
    {
      v49 = 0;
      while (1)
      {
        v50 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        v51 = v83;
        v52 = v84;
        sub_1C0CF6468(v83, v84);
        v53 = v76;
        sub_1C0D01560(v76, v51, v52, &v79);
        v54 = v79;
        v55 = v80;
        sub_1C0D22268(v53);
        LODWORD(v79) = 0;
        sub_1C0CF6468(v54, v55);
        v56 = v74;
        sub_1C0D786EC();
        v57 = sub_1C0D786BC();
        v71(v56, v75);
        v58 = objc_allocWithZone(MEMORY[0x1E6999650]);
        v59 = sub_1C0D7830C();
        v60 = [v58 initWithData:v59 inGroup:v57 reduction:1 corecryptoError:&v79];

        sub_1C0CF448C(v54, v55);
        if (!v60)
        {
          v65 = v79;
          sub_1C0CF8DE0();
          swift_allocError();
          *v66 = v65;
          *(v66 + 4) = 0;
          swift_willThrow();

          sub_1C0CF448C(v54, v55);
          sub_1C0CF448C(v83, v84);

          goto LABEL_48;
        }

        sub_1C0CF448C(v54, v55);
        v61 = v60;
        MEMORY[0x1C68E3BD0]();
        if (*(v78[0] + 16) >= *(v78[0] + 24) >> 1)
        {
          v62 = *(v78[0] + 16);
          sub_1C0D78C0C();
        }

        sub_1C0D78C3C();

        ++v49;
        if (v50 == v48)
        {
          goto LABEL_45;
        }
      }

      __break(1u);
      goto LABEL_50;
    }

LABEL_45:
    sub_1C0CF448C(v83, v84);
    result = v69;
  }

  else
  {
    v63 = v79;
    sub_1C0CF8DE0();
    swift_allocError();
    *v64 = v63;
    *(v64 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v39, v38);
    result = sub_1C0CF448C(v83, v84);
  }

LABEL_48:
  v67 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D11774(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = sub_1C0D387FC(*(v4 + 88));
  if (!v3)
  {
    v9 = 5 * a2;
    if ((a2 * 5) >> 64 == (5 * a2) >> 63)
    {
      v10 = __OFADD__(v9, a1);
      v11 = v9 + a1;
      if (!v10)
      {
        v12 = v8 >> 62;
        if ((v8 >> 62) <= 1)
        {
          if (!v12)
          {
            v13 = BYTE6(v8);
            goto LABEL_14;
          }

LABEL_11:
          LODWORD(v13) = HIDWORD(result) - result;
          if (__OFSUB__(HIDWORD(result), result))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v13 = v13;
          goto LABEL_14;
        }

        if (v12 == 2)
        {
          v15 = *(result + 16);
          v14 = *(result + 24);
          v10 = __OFSUB__(v14, v15);
          v13 = v14 - v15;
          if (v10)
          {
            __break(1u);
            goto LABEL_11;
          }
        }

        else
        {
          v13 = 0;
        }

LABEL_14:
        v10 = __OFADD__(v11, v13);
        v16 = v11 + v13;
        if (!v10)
        {
          v17 = v8;
          v18 = result;
          v49 = sub_1C0D6E528(v16);
          v19 = [*v4 serializedBigEndianScalar];
          if (!v19)
          {
LABEL_32:
            result = sub_1C0D78EBC();
            __break(1u);
            return result;
          }

          v20 = v19;
          v21 = sub_1C0D7832C();
          v23 = v22;

          sub_1C0D7834C();
          sub_1C0CF448C(v21, v23);
          v24 = [*(v4 + 8) serializedPublicKey_];
          if (v24)
          {
            v25 = v24;
            v26 = sub_1C0D7832C();
            v28 = v27;

            sub_1C0D7834C();
            sub_1C0CF448C(v26, v28);
            v29 = [*(v4 + 16) serializedPublicKey_];
            if (v29)
            {
              v30 = v29;
              v31 = sub_1C0D7832C();
              v33 = v32;

              sub_1C0D7834C();
              sub_1C0CF448C(v31, v33);
              v34 = [*(v4 + 24) serializedPublicKey_];
              if (v34)
              {
                v35 = v34;
                v36 = sub_1C0D7832C();
                v38 = v37;

                sub_1C0D7834C();
                sub_1C0CF448C(v36, v38);
                v39 = [*(v4 + 72) serializedPublicKey_];
                if (v39)
                {
                  v40 = v39;
                  v41 = sub_1C0D7832C();
                  v43 = v42;

                  sub_1C0D7834C();
                  sub_1C0CF448C(v41, v43);
                  v44 = [*(v4 + 80) serializedPublicKey_];
                  if (v44)
                  {
                    v45 = v44;
                    v46 = sub_1C0D7832C();
                    v48 = v47;

                    sub_1C0D7834C();
                    sub_1C0CF448C(v46, v48);
                    sub_1C0D7834C();
                    sub_1C0CF448C(v18, v17);
                    return v49;
                  }

                  goto LABEL_31;
                }

LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1C0D11AD4(uint64_t result, uint64_t a2)
{
  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  v4 = 5 * result;
  if ((result * 5) >> 64 != (5 * result) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = 4 * a2 + v4;
  if (__OFADD__(4 * a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *v2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);
  v30 = sub_1C0D6E528(result);
  result = [v6 serializedPublicKey_];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  v12 = sub_1C0D7832C();
  v14 = v13;

  sub_1C0D7834C();
  sub_1C0CF448C(v12, v14);
  result = [v5 serializedPublicKey_];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = result;
  v16 = sub_1C0D7832C();
  v18 = v17;

  sub_1C0D7834C();
  sub_1C0CF448C(v16, v18);
  result = [v8 serializedPublicKey_];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19 = result;
  v20 = sub_1C0D7832C();
  v22 = v21;

  sub_1C0D7834C();
  sub_1C0CF448C(v20, v22);
  result = [v7 serializedPublicKey_];
  if (result)
  {
    v23 = result;
    v24 = sub_1C0D7832C();
    v26 = v25;

    sub_1C0D7834C();
    sub_1C0CF448C(v24, v26);
    v27 = sub_1C0D10D8C(v3, v9, v10);
    v29 = v28;
    sub_1C0D7834C();
    sub_1C0CF448C(v27, v29);
    return v30;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C0D11CE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v112 = *MEMORY[0x1E69E9840];
  v11 = sub_1C0D786CC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v17 = 0;
    if (v16 != 2)
    {
      goto LABEL_10;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v20 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v20)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v17) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v17 = v17;
LABEL_10:
  if ((a4 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_53;
  }

  v21 = 5 * a3;
  if ((a3 * 5) >> 64 != (5 * a3) >> 63)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v20 = __OFADD__(4 * a4, v21);
  v22 = 4 * a4 + v21;
  if (v20)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v17 == v22)
  {
    v101 = v13;
    v108 = MEMORY[0x1E6969080];
    v109 = MEMORY[0x1E6969078];
    v106 = a1;
    v107 = a2;
    v23 = __swift_project_boxed_opaque_existential_1(&v106, MEMORY[0x1E6969080]);
    v24 = *v23;
    v25 = v23[1];
    v26 = v25 >> 62;
    v97 = a5;
    v99 = a3;
    v103 = v11;
    if ((v25 >> 62) > 1)
    {
      if (v26 != 2)
      {
        memset(v104, 0, 14);
        sub_1C0CF6468(a1, a2);
        v27 = v104;
        v28 = v104;
        goto LABEL_37;
      }

      v31 = *(v24 + 16);
      v32 = *(v24 + 24);
      sub_1C0CF6468(a1, a2);
      a1 = v25 & 0x3FFFFFFFFFFFFFFFLL;
      a2 = sub_1C0D7812C();
      if (a2)
      {
        a1 = v25 & 0x3FFFFFFFFFFFFFFFLL;
        v33 = sub_1C0D7815C();
        v24 = v31 - v33;
        if (__OFSUB__(v31, v33))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        a2 += v24;
      }

      v20 = __OFSUB__(v32, v31);
      v34 = v32 - v31;
      if (!v20)
      {
        goto LABEL_29;
      }

      __break(1u);
    }

    else if (!v26)
    {
      v104[0] = v24;
      LOWORD(v104[1]) = v25;
      BYTE2(v104[1]) = BYTE2(v25);
      BYTE3(v104[1]) = BYTE3(v25);
      BYTE4(v104[1]) = BYTE4(v25);
      BYTE5(v104[1]) = BYTE5(v25);
      sub_1C0CF6468(a1, a2);
      v27 = v104;
      v28 = v104 + BYTE6(v25);
      goto LABEL_37;
    }

    v35 = v24;
    v36 = v24 >> 32;
    v34 = v36 - v35;
    if (v36 >= v35)
    {
      sub_1C0CF6468(a1, a2);
      a2 = sub_1C0D7812C();
      if (!a2)
      {
LABEL_29:
        v38 = sub_1C0D7814C();
        if (v38 >= v34)
        {
          v39 = v34;
        }

        else
        {
          v39 = v38;
        }

        v40 = (v39 + a2);
        if (a2)
        {
          v28 = v40;
        }

        else
        {
          v28 = 0;
        }

        v27 = a2;
LABEL_37:
        sub_1C0D20850(v27, v28, v105);
        v98 = v5;
        v41 = v105[0];
        v42 = v105[1];
        __swift_destroy_boxed_opaque_existential_1(&v106);
        v110 = v41;
        v111 = v42;
        sub_1C0CF6468(v41, v42);
        sub_1C0D01560(a4, v41, v42, &v106);
        v44 = v106;
        v43 = v107;
        sub_1C0D22268(a4);
        LODWORD(v106) = 0;
        sub_1C0D7884C();
        sub_1C0CF6468(v44, v43);
        v102 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
        sub_1C0D786EC();
        v45 = sub_1C0D786BC();
        v101 = *(v101 + 8);
        (v101)(v15, v103);
        v46 = objc_allocWithZone(MEMORY[0x1E6999648]);
        v47 = sub_1C0D7830C();
        v48 = [v46 initFromPublicKeyBytes:v47 inGroup:v45 compressed:1 corecryptoError:&v106];

        sub_1C0CF448C(v44, v43);
        if (v48)
        {
          v100 = v48;
          sub_1C0CF448C(v44, v43);
          v49 = v110;
          v50 = v111;
          sub_1C0CF6468(v110, v111);
          sub_1C0D01560(a4, v49, v50, &v106);
          v51 = v106;
          v52 = v107;
          sub_1C0D22268(a4);
          LODWORD(v106) = 0;
          sub_1C0CF6468(v51, v52);
          sub_1C0D786EC();
          v53 = sub_1C0D786BC();
          (v101)(v15, v103);
          v54 = objc_allocWithZone(MEMORY[0x1E6999648]);
          v55 = sub_1C0D7830C();
          v56 = [v54 initFromPublicKeyBytes:v55 inGroup:v53 compressed:1 corecryptoError:&v106];

          sub_1C0CF448C(v51, v52);
          if (v56)
          {
            v96 = v56;
            sub_1C0CF448C(v51, v52);
            v57 = v110;
            v58 = v111;
            sub_1C0CF6468(v110, v111);
            sub_1C0D01560(a4, v57, v58, &v106);
            v59 = v106;
            v60 = v107;
            sub_1C0D22268(a4);
            LODWORD(v106) = 0;
            sub_1C0CF6468(v59, v60);
            sub_1C0D786EC();
            v61 = sub_1C0D786BC();
            (v101)(v15, v103);
            v62 = objc_allocWithZone(MEMORY[0x1E6999648]);
            v63 = sub_1C0D7830C();
            v64 = [v62 initFromPublicKeyBytes:v63 inGroup:v61 compressed:1 corecryptoError:&v106];

            sub_1C0CF448C(v59, v60);
            if (v64)
            {
              v95 = v64;
              sub_1C0CF448C(v59, v60);
              v65 = v110;
              v66 = v111;
              sub_1C0CF6468(v110, v111);
              sub_1C0D01560(a4, v65, v66, &v106);
              v67 = v106;
              v68 = v107;
              sub_1C0D22268(a4);
              LODWORD(v106) = 0;
              sub_1C0CF6468(v67, v68);
              sub_1C0D786EC();
              v69 = sub_1C0D786BC();
              (v101)(v15, v103);
              v70 = objc_allocWithZone(MEMORY[0x1E6999648]);
              v71 = sub_1C0D7830C();
              v72 = [v70 initFromPublicKeyBytes:v71 inGroup:v69 compressed:1 corecryptoError:&v106];

              sub_1C0CF448C(v67, v68);
              if (v72)
              {
                sub_1C0CF448C(v67, v68);
                v73 = v110;
                v74 = v111;
                v75 = v98;
                v76 = sub_1C0D11094(v110, v111, 5, v99);
                if (!v75)
                {
                  v90 = v76;
                  v91 = v77;
                  result = sub_1C0CF448C(v73, v74);
                  v92 = v97;
                  v93 = v95;
                  v94 = v96;
                  *v97 = v100;
                  v92[1] = v94;
                  v92[2] = v93;
                  v92[3] = v72;
                  v92[4] = v90;
                  v92[5] = v91;
                  goto LABEL_50;
                }

                v78 = v73;
                v79 = v74;
                goto LABEL_49;
              }

              v87 = v106;
              sub_1C0CF8DE0();
              swift_allocError();
              *v88 = v87;
              *(v88 + 4) = 0;
              swift_willThrow();
              sub_1C0CF448C(v67, v68);

              v84 = v95;
            }

            else
            {
              v85 = v106;
              sub_1C0CF8DE0();
              swift_allocError();
              *v86 = v85;
              *(v86 + 4) = 0;
              swift_willThrow();
              sub_1C0CF448C(v59, v60);

              v84 = v96;
            }
          }

          else
          {
            v82 = v106;
            sub_1C0CF8DE0();
            swift_allocError();
            *v83 = v82;
            *(v83 + 4) = 0;
            swift_willThrow();
            sub_1C0CF448C(v51, v52);
            v84 = v100;
          }
        }

        else
        {
          v80 = v106;
          sub_1C0CF8DE0();
          swift_allocError();
          *v81 = v80;
          *(v81 + 4) = 0;
          swift_willThrow();
          sub_1C0CF448C(v44, v43);
        }

        v78 = v110;
        v79 = v111;
LABEL_49:
        result = sub_1C0CF448C(v78, v79);
        goto LABEL_50;
      }

      v37 = sub_1C0D7815C();
      if (!__OFSUB__(v35, v37))
      {
        a2 += v35 - v37;
        goto LABEL_29;
      }

LABEL_58:
      __break(1u);
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_1C0CFC3D4();
  swift_allocError();
  *v29 = 6;
  result = swift_willThrow();
LABEL_50:
  v89 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1C0D12624(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  v9 = sub_1C0D786CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v15 = 0;
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v17 = a1[2];
    v16 = a1[3];
    v18 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (!v18)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v14)
  {
    v15 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v15) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v15 = v15;
LABEL_10:
  if (a4 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  v19 = 5 * a3;
  if ((a3 * 5) >> 64 != (5 * a3) >> 63)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v18 = __OFADD__(2 * a4, v19);
  v20 = 2 * a4 + v19;
  if (v18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v15 == v20)
  {
    v83 = MEMORY[0x1E6969080];
    v84 = MEMORY[0x1E6969078];
    v81 = a1;
    v82 = a2;
    v21 = __swift_project_boxed_opaque_existential_1(&v81, MEMORY[0x1E6969080]);
    v22 = *v21;
    v23 = v21[1];
    v24 = v23 >> 62;
    v75 = a3;
    v78 = v9;
    if ((v23 >> 62) > 1)
    {
      if (v24 != 2)
      {
        memset(v79, 0, 14);
        sub_1C0CF6468(a1, a2);
        v25 = v79;
        goto LABEL_42;
      }

      v76 = a4;
      v77 = v10;
      v27 = *(v22 + 16);
      v28 = *(v22 + 24);
      sub_1C0CF6468(a1, a2);
      v29 = sub_1C0D7812C();
      if (v29)
      {
        v30 = sub_1C0D7815C();
        if (__OFSUB__(v27, v30))
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v29 += v27 - v30;
      }

      v18 = __OFSUB__(v28, v27);
      v31 = v28 - v27;
      if (!v18)
      {
        v32 = sub_1C0D7814C();
        if (v32 >= v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = v32;
        }

        v34 = &v29[v33];
        if (v29)
        {
          v35 = v34;
        }

        else
        {
          v35 = 0;
        }

        sub_1C0D20850(v29, v35, v80);
        v74 = v4;
        a4 = v76;
        v10 = v77;
LABEL_43:
        v46 = v80[0];
        v47 = v80[1];
        __swift_destroy_boxed_opaque_existential_1(&v81);
        v85 = v46;
        v86 = v47;
        sub_1C0CF6468(v46, v47);
        sub_1C0D01560(a4, v46, v47, &v81);
        v48 = a4;
        v49 = v81;
        v50 = v82;
        sub_1C0D22268(v48);
        LODWORD(v81) = 0;
        sub_1C0D7884C();
        sub_1C0CF6468(v49, v50);
        v77 = sub_1C0D13530(&qword_1EBE6D428, MEMORY[0x1E6966580]);
        sub_1C0D786EC();
        v51 = sub_1C0D786BC();
        v76 = *(v10 + 8);
        v76(v13, v78);
        v52 = objc_allocWithZone(MEMORY[0x1E6999648]);
        v53 = sub_1C0D7830C();
        a1 = [v52 initFromPublicKeyBytes:v53 inGroup:v51 compressed:1 corecryptoError:&v81];

        sub_1C0CF448C(v49, v50);
        if (a1)
        {
          sub_1C0CF448C(v49, v50);
          v54 = v85;
          v55 = v86;
          sub_1C0CF6468(v85, v86);
          sub_1C0D01560(v48, v54, v55, &v81);
          v56 = v81;
          v57 = v82;
          sub_1C0D22268(v48);
          LODWORD(v81) = 0;
          sub_1C0CF6468(v56, v57);
          sub_1C0D786EC();
          v58 = sub_1C0D786BC();
          v76(v13, v78);
          v59 = objc_allocWithZone(MEMORY[0x1E6999648]);
          v60 = sub_1C0D7830C();
          v61 = [v59 initFromPublicKeyBytes:v60 inGroup:v58 compressed:1 corecryptoError:&v81];

          sub_1C0CF448C(v56, v57);
          if (v61)
          {
            sub_1C0CF448C(v56, v57);
            v62 = v85;
            v63 = v86;
            v64 = v74;
            sub_1C0D11094(v85, v86, 5, v75);
            if (!v64)
            {
              sub_1C0CF448C(v62, v63);
              goto LABEL_51;
            }

            v65 = v62;
            v66 = v63;
            goto LABEL_50;
          }

          v69 = v81;
          sub_1C0CF8DE0();
          swift_allocError();
          *v70 = v69;
          *(v70 + 4) = 0;
          swift_willThrow();
          sub_1C0CF448C(v56, v57);
        }

        else
        {
          v67 = v81;
          sub_1C0CF8DE0();
          swift_allocError();
          *v68 = v67;
          *(v68 + 4) = 0;
          swift_willThrow();
          sub_1C0CF448C(v49, v50);
        }

        v65 = v85;
        v66 = v86;
LABEL_50:
        sub_1C0CF448C(v65, v66);
        goto LABEL_51;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (!v24)
    {
      v79[0] = v22;
      LOWORD(v79[1]) = v23;
      BYTE2(v79[1]) = BYTE2(v23);
      BYTE3(v79[1]) = BYTE3(v23);
      BYTE4(v79[1]) = BYTE4(v23);
      BYTE5(v79[1]) = BYTE5(v23);
      sub_1C0CF6468(a1, a2);
      v25 = v79 + BYTE6(v23);
LABEL_42:
      sub_1C0D20850(v79, v25, v80);
      v74 = v4;
      goto LABEL_43;
    }

    v76 = v13;
    v77 = v10;
    v36 = a4;
    v37 = v22;
    v38 = v22 >> 32;
    v39 = v38 - v37;
    if (v38 >= v37)
    {
      sub_1C0CF6468(a1, a2);
      v40 = sub_1C0D7812C();
      if (!v40)
      {
LABEL_34:
        a4 = v36;
        v42 = sub_1C0D7814C();
        if (v42 >= v39)
        {
          v43 = v39;
        }

        else
        {
          v43 = v42;
        }

        v44 = &v40[v43];
        if (v40)
        {
          v45 = v44;
        }

        else
        {
          v45 = 0;
        }

        sub_1C0D20850(v40, v45, v80);
        v74 = v4;
        v13 = v76;
        v10 = v77;
        goto LABEL_43;
      }

      v41 = sub_1C0D7815C();
      if (!__OFSUB__(v37, v41))
      {
        v40 += v37 - v41;
        goto LABEL_34;
      }

LABEL_60:
      __break(1u);
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  sub_1C0CFC3D4();
  swift_allocError();
  *v26 = 3;
  swift_willThrow();
LABEL_51:
  v71 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1C0D12CF0(uint64_t result, uint64_t a2)
{
  v3 = 6 * a2;
  if ((a2 * 6) >> 64 != (6 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v3 + 8 * result;
  if (__OFADD__(v3, 8 * v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v2;
  v33 = sub_1C0D6E528(result);
  result = [*v2 serializedPublicKey_];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  v7 = sub_1C0D7832C();
  v9 = v8;

  sub_1C0D7834C();
  sub_1C0CF448C(v7, v9);
  result = [v5[1] serializedPublicKey_];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  v11 = sub_1C0D7832C();
  v13 = v12;

  sub_1C0D7834C();
  sub_1C0CF448C(v11, v13);
  result = [v5[2] serializedPublicKey_];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = sub_1C0D7832C();
  v17 = v16;

  sub_1C0D7834C();
  sub_1C0CF448C(v15, v17);
  result = [v5[3] serializedPublicKey_];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = result;
  v19 = sub_1C0D7832C();
  v21 = v20;

  sub_1C0D7834C();
  sub_1C0CF448C(v19, v21);
  result = [v5[4] serializedPublicKey_];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = result;
  v23 = sub_1C0D7832C();
  v25 = v24;

  sub_1C0D7834C();
  sub_1C0CF448C(v23, v25);
  result = [v5[5] serializedPublicKey_];
  if (result)
  {
    v26 = result;
    v27 = sub_1C0D7832C();
    v29 = v28;

    sub_1C0D7834C();
    sub_1C0CF448C(v27, v29);
    v30 = sub_1C0D10D8C(v4, v5[6], v5[7]);
    v32 = v31;
    sub_1C0D7834C();
    sub_1C0CF448C(v30, v32);
    return v33;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1C0D12F84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = (a1 * 3) >> 64;
  result = 3 * a1;
  if (v4 != result >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v21 = sub_1C0D6E528(result);
  result = [a2 serializedPublicKey_];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  v10 = sub_1C0D7832C();
  v12 = v11;

  sub_1C0D7834C();
  sub_1C0CF448C(v10, v12);
  result = [a3 serializedPublicKey_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = result;
  v14 = sub_1C0D7832C();
  v16 = v15;

  sub_1C0D7834C();
  sub_1C0CF448C(v14, v16);
  result = [a4 serializedPublicKey_];
  if (result)
  {
    v17 = result;
    v18 = sub_1C0D7832C();
    v20 = v19;

    sub_1C0D7834C();
    sub_1C0CF448C(v18, v20);
    return v21;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C0D13428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4A0, &qword_1C0D7C000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0D13498(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C0D134D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C0CF6468(a1, a2);
  }

  return a1;
}

unint64_t sub_1C0D134E4()
{
  result = qword_1EBE6C9C8;
  if (!qword_1EBE6C9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE6C9C8);
  }

  return result;
}

uint64_t sub_1C0D13530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C0D13578(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C0D135D8()
{
  result = qword_1EBE6D4F0;
  if (!qword_1EBE6D4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D4E8, &qword_1C0D7C040);
    sub_1C0D13664();
    sub_1C0D136B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D4F0);
  }

  return result;
}

unint64_t sub_1C0D13664()
{
  result = qword_1EBE6D4F8;
  if (!qword_1EBE6D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D4F8);
  }

  return result;
}

unint64_t sub_1C0D136B8()
{
  result = qword_1EBE6D500[0];
  if (!qword_1EBE6D500[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6D500);
  }

  return result;
}

uint64_t sub_1C0D13734(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_1C0D1379C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1C0D752D4(sub_1C0D13804, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

id sub_1C0D13834(uint64_t a1, id a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1C0CEABF4(a1, a2);
}

id sub_1C0D1388C(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1C0CEAC4C(a1, a2);
}

uint64_t sub_1C0D138E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v7 = v6;
    result = sub_1C0D78C4C();
    if (v8 <= 0x3F)
    {
      if (v7 > 0x3F)
      {
        return AssociatedTypeWitness;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C0D13A54(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v8 + 64);
  v13 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v13 + 8;
  if (v15 >= a2)
  {
    goto LABEL_30;
  }

  v17 = ((*(*(v10 - 8) + 64) + ((*(*(v10 - 8) + 64) + v13 + ((*(*(v10 - 8) + 64) + v13 + ((v16 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13)) & ~v13)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v15 + 1;
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
        goto LABEL_30;
      }
    }

    else
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
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

    return v15 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v17);
    if (v22)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v9 == v15)
  {
    v26 = *(v8 + 48);

    return v26(a1, v9, AssociatedTypeWitness);
  }

  else
  {
    v27 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v14 & 0x80000000) != 0)
    {
      v29 = *(v11 + 48);

      return v29((v16 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13);
    }

    else
    {
      v28 = *v27;
      if (*v27 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }
  }
}

void sub_1C0D13DA0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  swift_getAssociatedConformanceWitness();
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v10 + 64);
  v14 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = v11;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((*(v12 + 64) + ((*(v12 + 64) + v14 + ((*(v12 + 64) + v14 + ((v14 + 8 + ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14)) & ~v14)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v12 + 64) + ((*(v12 + 64) + v14 + ((*(v12 + 64) + v14 + ((v14 + 8 + ((((v13 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v14)) & ~v14)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v16 + 1;
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

    v21 = a2 - v16;
    if (a2 <= v16)
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
      if (v11 == v16)
      {
        v24 = *(v10 + 56);

        v24(a1, a2, v11, AssociatedTypeWitness);
      }

      else
      {
        v25 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v15 & 0x80000000) != 0)
        {
          v27 = *(v12 + 56);

          v27((v14 + 8 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v14, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *v25 = v26;
        }
      }

      return;
    }
  }

  if (((*(v12 + 64) + ((*(v12 + 64) + v14 + ((*(v12 + 64) + v14 + ((v14 + 8 + ((((v13 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v14)) & ~v14)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(v12 + 64) + ((*(v12 + 64) + v14 + ((*(v12 + 64) + v14 + ((v14 + 8 + ((((v13 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v14)) & ~v14)) & ~v14) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v23 = ~v16 + a2;
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

uint64_t sub_1C0D14150(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = dword_1C0D7C14C[v2];
  v5 = cche_param_ctx_sizeof();
  v6 = swift_slowAlloc();
  *(v1 + 16) = v6;
  *(v1 + 24) = v6 + v5;
  *(v1 + 32) = v6;
  v7 = cche_param_ctx_init();
  if (v7)
  {
    v8 = v7;
    sub_1C0CF8DE0();
    swift_allocError();
    *v9 = v8;
    *(v9 + 4) = 0;
    swift_willThrow();
    _s12ParamContextCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 40) = v2;
    *(v1 + 41) = v3;
  }

  return v1;
}

uint64_t sub_1C0D14234()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1C68E4EB0](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1C0D1429C()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  cche_param_ctx_polynomial_degree();
  v2 = cche_ciphertext_galois_elt_rotate_rows_right();
  if (v2)
  {
    v3 = v2;
    sub_1C0CF8DE0();
    swift_allocError();
    *v4 = v3;
    *(v4 + 4) = 0;
    result = swift_willThrow();
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D1435C()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  cche_param_ctx_polynomial_degree();
  v2 = cche_ciphertext_galois_elt_swap_columns();
  if (v2)
  {
    v3 = v2;
    sub_1C0CF8DE0();
    swift_allocError();
    *v4 = v3;
    *(v4 + 4) = 0;
    result = swift_willThrow();
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D14438()
{
  result = cche_ciphertext_fresh_npolys();
  qword_1EBE72CC0 = result;
  return result;
}

uint64_t sub_1C0D1445C()
{
  result = cche_ciphertext_fresh_correction_factor();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    qword_1EBE72CC8 = result;
  }

  return result;
}

uint64_t sub_1C0D14484@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 32);
  v9 = cche_plaintext_sizeof();
  type metadata accessor for HE.ObjectStorage();
  v10 = swift_allocObject();
  v10[2] = v4;

  result = swift_slowAlloc();
  v10[3] = result;
  v10[4] = result + v9;
  if (HIDWORD(*(a1 + 16)))
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      result = cche_encode_simd_reduced_int64();
      if (!result)
      {
LABEL_4:
        *a3 = v10;
        return result;
      }
    }

    else
    {
      result = cche_encode_simd_int64();
      if (!result)
      {
        goto LABEL_4;
      }
    }

    v12 = result;
    sub_1C0CF8DE0();
    swift_allocError();
    *v13 = v12;
    *(v13 + 4) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1C0D14588(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 41);
  v7[0] = *(*a1 + 40);
  v7[1] = v3;
  v4 = *(v2 + 40);
  LOBYTE(v2) = *(v2 + 41);
  v6[0] = v4;
  v6[1] = v2;
  return _s16CryptoKitPrivate2HEO16EncryptionParamsV2eeoiySbAE_AEtFZ_0(v7, v6) & 1;
}

void sub_1C0D145DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 != 0)
  {
    v4 = a1 + 32;
    v5 = *(*(a1 + 32) + 16);
    v24 = v5;
    if (v5)
    {
      v6 = sub_1C0D78C2C();
      *(v6 + 16) = v5;
      bzero((v6 + 32), 8 * v5);
    }

    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v10 = *(v4 + 8 * v7);
      v11 = *(v10 + 16);
      v12 = *(v8 + 2);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_33;
      }

      v14 = *(v4 + 8 * v7);
      sub_1C0D78BFC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= *(v8 + 3) >> 1)
      {
        if (*(v10 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v16 = v12 + v11;
        }

        else
        {
          v16 = v12;
        }

        v8 = sub_1C0CF4C50(isUniquelyReferenced_nonNull_native, v16, 1, v8);
        if (*(v10 + 16))
        {
LABEL_20:
          v17 = *(v8 + 2);
          if ((*(v8 + 3) >> 1) - v17 < v11)
          {
            goto LABEL_35;
          }

          memcpy(&v8[8 * v17 + 32], (v10 + 32), 8 * v11);

          if (v11)
          {
            v18 = *(v8 + 2);
            v19 = __OFADD__(v18, v11);
            v20 = v18 + v11;
            if (v19)
            {
              goto LABEL_36;
            }

            *(v8 + 2) = v20;
          }

          goto LABEL_9;
        }
      }

      if (v11)
      {
        goto LABEL_34;
      }

LABEL_9:
      ++v7;
      if (v9 == v2)
      {
        if ((v24 * v2) >> 64 == (v24 * v2) >> 63)
        {
          if (*(v8 + 2) != v24 * v2)
          {

            break;
          }

          sub_1C0D78BFC();
          v21 = cche_crt_compose();

          if (!v21)
          {
            return;
          }

          v22 = 0;
          goto LABEL_30;
        }

LABEL_37:
        __break(1u);
        return;
      }
    }
  }

  v22 = 1;
  v21 = 5;
LABEL_30:
  sub_1C0CF8DE0();
  swift_allocError();
  *v23 = v21;
  *(v23 + 4) = v22;
  swift_willThrow();
}

uint64_t sub_1C0D14838(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_1C0D78C4C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0D14978(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_28;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v10 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v12)) == 0)
  {
LABEL_28:
    if (v9 < 0x7FFFFFFF)
    {
      v21 = *((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      v20 = *(v8 + 48);

      return v20(a1);
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v10 + (v13 | v19) + 1;
}

void sub_1C0D14BB4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = a3 - v12 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 > v12)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v12;
    }

    else
    {
      v18 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v12 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v17)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v13) = 0;
  }

  else if (v17)
  {
    *(a1 + v13) = 0;
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
  if (v10 < 0x7FFFFFFF)
  {
    v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = (a2 - 1);
    }

    *v21 = v22;
  }

  else
  {
    v20 = *(v9 + 56);

    v20(a1, a2);
  }
}

unint64_t sub_1C0D14E7C()
{
  result = qword_1EBE6D608;
  if (!qword_1EBE6D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D608);
  }

  return result;
}

uint64_t sub_1C0D14EE0()
{
  result = sub_1C0D07698(0x654B204153444345, 0xEF646E696C422079);
  qword_1EBE72CD0 = result;
  *algn_1EBE72CD8 = v1;
  return result;
}

id sub_1C0D15298(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(id, id, id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7(v10, v11, v12);

  return v13;
}

id CKPIETFKeyBlinding.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKPIETFKeyBlinding.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPIETFKeyBlinding();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKPIETFKeyBlinding.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPIETFKeyBlinding();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0D15450(__SecKey *a1)
{
  result = SecKeyCopyAttributes(a1);
  if (result)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    *&v2 = 0;
    type metadata accessor for CFString(0);
    sub_1C0D17DC4(&qword_1EBE6CD60, type metadata accessor for CFString);
    result = sub_1C0D78A2C();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

void sub_1C0D1573C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D618, &qword_1C0D7C2D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0D7BEF0;
  v1 = *MEMORY[0x1E697AD68];
  *(inited + 32) = *MEMORY[0x1E697AD68];
  v2 = *MEMORY[0x1E697AD78];
  v3 = *MEMORY[0x1E697AD30];
  *(inited + 40) = *MEMORY[0x1E697AD78];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x1E697AD40];
  v5 = *MEMORY[0x1E697AD50];
  *(inited + 56) = *MEMORY[0x1E697AD40];
  *(inited + 64) = v5;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  *(inited + 72) = sub_1C0D78C6C();
  sub_1C0D39A80(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D620, &qword_1C0D7C2E0);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1C0D17DC4(&qword_1EBE6CD60, type metadata accessor for CFString);
  v11 = sub_1C0D78A1C();

  v12 = sub_1C0D7830C();
  v13 = SecKeyCreateWithData(v12, v11, 0);

  if (v13)
  {
  }

  else
  {
    __break(1u);
  }
}

void _s16CryptoKitPrivate18CKPIETFKeyBlindingC23privateScalarFromSecKeyy10Foundation4DataVSgSo0iJ3RefaFZ_0(__SecKey *a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = error - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D15450(a1);
  error[0] = 0;
  v8 = SecKeyCopyExternalRepresentation(a1, error);
  if (!v8)
  {
    goto LABEL_2;
  }

  v9 = v8;
  v10 = sub_1C0D7832C();
  v12 = v11;

  sub_1C0D7896C();
  sub_1C0D17DC4(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  (*(v3 + 8))(v6, v2);
  v14 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v15 = sub_1C0D7830C();
  v16 = [v14 initWithx963Representation:v15 group:v13];

  if (v16)
  {
    v17 = [v16 serializedBigEndianScalar];
    if (v17)
    {
      v18 = v17;
      sub_1C0D7832C();

      sub_1C0CF448C(v10, v12);
    }

    else
    {

      sub_1C0CF448C(v10, v12);
    }

LABEL_2:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  __break(1u);
}

CFDataRef _s16CryptoKitPrivate18CKPIETFKeyBlindingC7isValid9signature3for4with7contextSb10Foundation4DataV_AKSo9SecKeyRefaSo6NSDataCtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, __SecKey *a5)
{
  v50 = a3;
  v51 = a4;
  v48 = a1;
  v49 = a2;
  error[1] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D640, &qword_1C0D7C2F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - v8;
  v10 = sub_1C0D788FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D630, &qword_1C0D7C2F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v41 - v17;
  v19 = sub_1C0D7895C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D15450(a5);
  v45 = v23;
  v46 = v19;
  v41 = v14;
  v42 = v9;
  v47 = v20;
  v43 = v10;
  v44 = v11;
  v25 = v50;
  v26 = v51;
  error[0] = 0;
  result = SecKeyCopyExternalRepresentation(a5, error);
  if (result)
  {
    v28 = result;
    v29 = sub_1C0D7832C();
    v31 = v30;

    v52 = v29;
    v53 = v31;
    sub_1C0CF6468(v29, v31);
    sub_1C0D7892C();
    v32 = v46;
    v33 = v47;
    (*(v47 + 56))(v18, 0, 1, v46);
    (*(v33 + 32))(v45, v18, v32);
    v52 = v48;
    v53 = v49;
    sub_1C0CF6468(v48, v49);
    sub_1C0D17E68();
    v34 = v42;
    sub_1C0D788EC();
    v36 = v43;
    v35 = v44;
    (*(v44 + 56))(v34, 0, 1, v43);
    v37 = *(v35 + 32);
    v49 = v31;
    v38 = v41;
    v37(v41, v34, v36);
    v52 = v25;
    v53 = v26;
    v39 = v45;
    v40 = sub_1C0D7890C();
    sub_1C0CF448C(v29, v49);
    (*(v35 + 8))(v38, v36);
    (*(v33 + 8))(v39, v32);
LABEL_2:
    v24 = *MEMORY[0x1E69E9840];
    return (v40 & 1);
  }

  if (error[0])
  {

    v40 = 0;
    goto LABEL_2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D15FC8(void *a1, uint64_t a2, unint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = [a1 serializedBigEndianScalar];
  if (!v6)
  {
LABEL_9:
    __break(1u);
  }

  v7 = v6;
  v8 = sub_1C0D7832C();
  v10 = v9;

  v31 = sub_1C0D42970(1uLL);
  LODWORD(v32) = v11;
  BYTE6(v32) = v12;
  WORD2(v32) = v13;
  bzero(&v31, v12);
  v35 = v8;
  v36 = v10;
  v14 = MEMORY[0x1E6969080];
  v15 = MEMORY[0x1E6969078];
  v33 = MEMORY[0x1E6969080];
  v34 = MEMORY[0x1E6969078];
  v32 = v32 | ((WORD2(v32) | (BYTE6(v32) << 16)) << 32);
  v16 = __swift_project_boxed_opaque_existential_1(&v31, MEMORY[0x1E6969080]);
  v17 = *v16;
  v18 = v16[1];
  sub_1C0CF6468(v8, v10);
  sub_1C0D4268C(v17, v18);
  sub_1C0CF448C(v8, v10);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v19 = v35;
  v20 = v36;
  v37 = v35;
  v38 = v36;
  v33 = v14;
  v34 = v15;
  v31 = a2;
  v32 = a3;
  v21 = __swift_project_boxed_opaque_existential_1(&v31, v14);
  v22 = *v21;
  v23 = v21[1];
  sub_1C0CF6468(v19, v20);
  sub_1C0CF6468(a2, a3);
  sub_1C0D4268C(v22, v23);
  sub_1C0CF448C(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v24 = v37;
  v25 = v38;
  if (qword_1EBE6CC58 != -1)
  {
    swift_once();
  }

  v26 = sub_1C0D3F16C(v24, v25, 1, qword_1EBE72CD0, *algn_1EBE72CD8, 72, 0);
  if (v3)
  {
    result = sub_1C0CF448C(v24, v25);
    v28 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = *(v26 + 32);
  sub_1C0CF448C(v24, v25);

  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

uint64_t sub_1C0D16244(uint64_t a1, uint64_t a2, __SecKey *a3, __SecKey *a4, uint64_t a5)
{
  v79 = a4;
  v78 = a5;
  v75 = a1;
  v76 = a2;
  error[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C0D788FC();
  v77 = *(v6 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C0D788CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C0D786CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  error[0] = 0;
  v20 = v80;
  sub_1C0D15450(a3);
  if (v20)
  {
    goto LABEL_14;
  }

  v80 = v19;
  v73 = a3;
  v74 = v16;
  v69 = v9;
  v70 = v14;
  v71 = v6;
  v72 = v11;
  a3 = v79;
  sub_1C0D15450(v79);
  v68 = 0;
  v21 = SecKeyCopyExternalRepresentation(a3, error);
  if (!v21)
  {
    if (error[0])
    {

      sub_1C0D17CF0();
      swift_allocError();
      *v47 = 3;
      swift_willThrow();
LABEL_14:
      v49 = *MEMORY[0x1E69E9840];
      return a3;
    }

    goto LABEL_21;
  }

  v66 = v10;
  v22 = v21;
  v23 = sub_1C0D7832C();
  v25 = v24;

  sub_1C0D7896C();
  v26 = sub_1C0D17DC4(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  v27 = v80;
  v67 = v26;
  sub_1C0D786EC();
  v79 = sub_1C0D786BC();
  v28 = *(v74 + 8);
  v28(v27, v15);
  v29 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v74 = v23;
  v30 = sub_1C0D7830C();
  a3 = [v29 initWithx963Representation:v30 group:v79];

  if (!a3)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = SecKeyCopyExternalRepresentation(v73, error);
  if (!v31)
  {
    if (error[0])
    {

      sub_1C0D17CF0();
      swift_allocError();
      *v48 = 3;
      swift_willThrow();

      goto LABEL_13;
    }

    goto LABEL_22;
  }

  v79 = a3;
  v73 = v25;
  v32 = v31;
  v33 = sub_1C0D7832C();
  v35 = v34;

  v36 = v80;
  sub_1C0D786EC();
  v37 = sub_1C0D786BC();
  v28(v36, v15);
  a3 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v67 = v33;
  v80 = v35;
  v38 = sub_1C0D7830C();
  v39 = [(__SecKey *)a3 initWithx963Representation:v38 group:v37];

  if (!v39)
  {
    goto LABEL_20;
  }

  v40 = sub_1C0D7832C();
  v42 = v41;
  v43 = v68;
  v44 = sub_1C0D15FC8(v39, v40, v41);
  v45 = v72;
  v25 = v73;
  if (v43)
  {

    sub_1C0CF448C(v40, v42);
    sub_1C0D17CF0();
    swift_allocError();
    *v46 = 4;
    swift_willThrow();

    sub_1C0CF448C(v67, v80);
LABEL_13:
    sub_1C0CF448C(v74, v25);
    goto LABEL_14;
  }

  v51 = v44;
  sub_1C0CF448C(v40, v42);
  v52 = sub_1C0D30290(v79, v51);

  v53 = [v52 x963Representation];
  if (v53)
  {
    v54 = v53;
    v55 = sub_1C0D7832C();
    v57 = v56;

    v81 = v55;
    v82 = v57;
    v58 = v70;
    sub_1C0D788AC();
    v81 = v75;
    v82 = v76;
    sub_1C0D17E68();
    v59 = v69;
    sub_1C0D788BC();
    v60 = sub_1C0D788DC();
    v61 = v59;
    v62 = v60;
    v64 = v63;
    (*(v77 + 8))(v61, v71);
    a3 = sub_1C0D7830C();
    sub_1C0CF448C(v62, v64);

    sub_1C0CF448C(v67, v80);
    sub_1C0CF448C(v74, v25);

    (*(v45 + 8))(v58, v66);
    goto LABEL_14;
  }

LABEL_23:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

CFDataRef _s16CryptoKitPrivate18CKPIETFKeyBlindingC28compressedRepresentationFrom6secKeySo6NSDataCSgSo03SecJ3Refa_tFZ_0(__SecKey *a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D630, &qword_1C0D7C2F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v21 - v4;
  v6 = sub_1C0D7895C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  error[0] = 0;
  sub_1C0D15450(a1);
  result = SecKeyCopyExternalRepresentation(a1, error);
  if (result)
  {
    v13 = result;
    v14 = sub_1C0D7832C();
    v16 = v15;

    v21[2] = v14;
    v21[3] = v16;
    sub_1C0CF6468(v14, v16);
    sub_1C0D7892C();
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v10, v5, v6);
    v17 = sub_1C0D7893C();
    v19 = v18;
    v20 = sub_1C0D7830C();
    sub_1C0CF448C(v17, v19);
    sub_1C0CF448C(v14, v16);
    (*(v7 + 8))(v10, v6);
    result = v20;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s16CryptoKitPrivate18CKPIETFKeyBlindingC10secKeyFrom24compressedRepresentationSo03SecG3RefaSgSo6NSDataC_tFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D630, &qword_1C0D7C2F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v17 - v2;
  v4 = sub_1C0D7895C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[2] = sub_1C0D7832C();
  v17[3] = v9;
  sub_1C0D7894C();
  (*(v5 + 56))(v3, 0, 1, v4);
  v10 = (*(v5 + 32))(v8, v3, v4);
  v11 = MEMORY[0x1C68E3900](v10);
  v13 = v12;
  sub_1C0D1573C();
  v15 = v14;
  sub_1C0CF448C(v11, v13);
  (*(v5 + 8))(v8, v4);
  return v15;
}

void sub_1C0D16D68(__SecKey *a1, __SecKey *a2, void *a3)
{
  v93 = a3;
  v95 = a2;
  error[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C0D786CC();
  v94 = *(v5 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C0D7895C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v80 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v80 - v18;
  sub_1C0D15450(a1);
  if (v3)
  {
    goto LABEL_3;
  }

  v90 = v17;
  v91 = v8;
  v88 = v14;
  v92 = v19;
  v20 = v95;
  sub_1C0D15450(v95);
  v89 = 0;
  error[0] = 0;
  v22 = SecKeyCopyExternalRepresentation(a1, error);
  if (!v22)
  {
    if (error[0])
    {

      sub_1C0D17CF0();
      swift_allocError();
      *v29 = 3;
      swift_willThrow();
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  v24 = sub_1C0D7832C();
  v26 = v25;

  v96 = v24;
  v97 = v26;
  sub_1C0CF6468(v24, v26);
  v27 = v92;
  v28 = v89;
  sub_1C0D7892C();
  v89 = v28;
  if (v28)
  {
    sub_1C0CF448C(v24, v26);
LABEL_3:
    v21 = *MEMORY[0x1E69E9840];
    return;
  }

  v86 = v26;
  v87 = v10;
  v84 = v24;
  v30 = v90;
  (*(v10 + 16))(v90, v27, v9);
  v31 = sub_1C0D7893C();
  v33 = v32;
  LODWORD(v96) = 0;
  v34 = sub_1C0D7896C();
  sub_1C0CF6468(v31, v33);
  v35 = sub_1C0D17DC4(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  v36 = v91;
  v82 = v35;
  v83 = v34;
  sub_1C0D786EC();
  v85 = sub_1C0D786BC();
  v81 = *(v94 + 8);
  v94 += 8;
  v81(v36, v5);
  v37 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v38 = sub_1C0D7830C();
  v39 = v37;
  v40 = v33;
  v41 = [v39 initFromPublicKeyBytes:v38 inGroup:v85 compressed:1 corecryptoError:&v96];

  sub_1C0CF448C(v31, v40);
  if (!v41)
  {
    v62 = v96;
    sub_1C0CF8DE0();
    swift_allocError();
    *v63 = v62;
    *(v63 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v31, v40);
    sub_1C0CF448C(v84, v86);
    v64 = *(v87 + 8);
    v64(v30, v9);
    v64(v92, v9);
    goto LABEL_3;
  }

  sub_1C0CF448C(v31, v40);
  v42 = v87 + 8;
  v43 = *(v87 + 8);
  v44 = v30;
  v45 = v9;
  (v43)(v44, v9);
  v46 = SecKeyCopyExternalRepresentation(v20, error);
  v47 = v86;
  if (!v46)
  {
    if (error[0])
    {

      sub_1C0D17CF0();
      swift_allocError();
      *v65 = 3;
      swift_willThrow();

      sub_1C0CF448C(v84, v47);
      (v43)(v92, v45);
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  v95 = v43;
  v87 = v42;
  v48 = v46;
  v49 = v36;
  v50 = sub_1C0D7832C();
  v52 = v51;

  sub_1C0D786EC();
  v53 = sub_1C0D786BC();
  v81(v49, v5);
  v54 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v94 = v52;
  v55 = sub_1C0D7830C();
  v56 = [v54 initWithx963Representation:v55 group:v53];

  if (!v56)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v57 = sub_1C0D7832C();
  v59 = v58;
  v60 = v89;
  v61 = sub_1C0D15FC8(v56, v57, v58);
  if (v60)
  {
    (v95)(v92, v45);
    sub_1C0CF448C(v84, v47);
    sub_1C0CF448C(v57, v59);

    sub_1C0CF448C(v50, v94);
    goto LABEL_3;
  }

  v66 = v61;
  sub_1C0CF448C(v57, v59);
  v93 = v41;
  v67 = sub_1C0D13834(v66, v41);

  v91 = v67;
  v68 = [v67 serializedPublicKey_];
  if (v68)
  {
    v69 = v68;
    v70 = sub_1C0D7832C();
    v72 = v71;

    v96 = v70;
    v97 = v72;
    v73 = v88;
    v74 = sub_1C0D7894C();
    v75 = MEMORY[0x1C68E3900](v74);
    v77 = v76;
    sub_1C0D1573C();
    sub_1C0CF448C(v75, v77);

    sub_1C0CF448C(v50, v94);
    sub_1C0CF448C(v84, v47);
    v78 = v73;
    v79 = v95;
    (v95)(v78, v45);
    (v79)(v92, v45);
    goto LABEL_3;
  }

LABEL_22:
  __break(1u);
}

void sub_1C0D17500(__SecKey *a1, __SecKey *a2, void *a3)
{
  v92 = a3;
  v94 = a2;
  error[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C0D786CC();
  v93 = *(v5 - 8);
  v6 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C0D7895C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v79 - v18;
  error[0] = 0;
  sub_1C0D15450(a1);
  if (v3)
  {
    goto LABEL_3;
  }

  v89 = v17;
  v90 = v8;
  v87 = v14;
  v91 = v19;
  v20 = v94;
  sub_1C0D15450(v94);
  v88 = 0;
  v22 = SecKeyCopyExternalRepresentation(a1, error);
  if (!v22)
  {
    if (error[0])
    {

      sub_1C0D17CF0();
      swift_allocError();
      *v29 = 3;
      swift_willThrow();
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_21;
  }

  v23 = v22;
  v24 = sub_1C0D7832C();
  v26 = v25;

  v95 = v24;
  v96 = v26;
  sub_1C0CF6468(v24, v26);
  v27 = v91;
  v28 = v88;
  sub_1C0D7892C();
  v88 = v28;
  if (v28)
  {
    sub_1C0CF448C(v24, v26);
LABEL_3:
    v21 = *MEMORY[0x1E69E9840];
    return;
  }

  v84 = v26;
  v85 = v24;
  v86 = v10;
  v30 = v89;
  (*(v10 + 16))(v89, v27, v9);
  v31 = sub_1C0D7893C();
  v33 = v32;
  LODWORD(v95) = 0;
  v34 = sub_1C0D7896C();
  sub_1C0CF6468(v31, v33);
  v35 = sub_1C0D17DC4(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  v36 = v90;
  v81 = v35;
  v82 = v34;
  sub_1C0D786EC();
  v83 = sub_1C0D786BC();
  v80 = *(v93 + 8);
  v93 += 8;
  v80(v36, v5);
  v37 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v38 = sub_1C0D7830C();
  v39 = [v37 initFromPublicKeyBytes:v38 inGroup:v83 compressed:1 corecryptoError:&v95];

  sub_1C0CF448C(v31, v33);
  if (!v39)
  {
    v59 = v95;
    sub_1C0CF8DE0();
    swift_allocError();
    *v60 = v59;
    *(v60 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v31, v33);
    sub_1C0CF448C(v85, v84);
    v61 = *(v86 + 8);
    v61(v30, v9);
    v61(v91, v9);
    goto LABEL_3;
  }

  v83 = v39;
  sub_1C0CF448C(v31, v33);
  v40 = v86 + 8;
  v41 = *(v86 + 8);
  (v41)(v30, v9);
  v42 = SecKeyCopyExternalRepresentation(v20, error);
  v43 = v84;
  if (!v42)
  {
    if (error[0])
    {

      sub_1C0D17CF0();
      swift_allocError();
      *v62 = 3;
      swift_willThrow();

      sub_1C0CF448C(v85, v43);
      (v41)(v91, v9);
      goto LABEL_3;
    }

    goto LABEL_22;
  }

  v94 = v41;
  v86 = v40;
  v44 = v42;
  v45 = v36;
  v46 = sub_1C0D7832C();
  v48 = v47;

  sub_1C0D786EC();
  v49 = sub_1C0D786BC();
  v80(v45, v5);
  v50 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v93 = v48;
  v51 = sub_1C0D7830C();
  v52 = [v50 initWithx963Representation:v51 group:v49];

  if (!v52)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v53 = sub_1C0D7832C();
  v55 = v54;
  v56 = v88;
  v57 = sub_1C0D15FC8(v52, v53, v54);
  v58 = v85;
  if (v56)
  {
    (v94)(v91, v9);
    sub_1C0CF448C(v58, v43);
    sub_1C0CF448C(v53, v55);

    sub_1C0CF448C(v46, v93);
    goto LABEL_3;
  }

  v63 = v57;
  sub_1C0CF448C(v53, v55);
  v64 = [v63 inverseModOrder];
  if (!v64)
  {
    goto LABEL_23;
  }

  v92 = v63;
  v90 = v9;
  v65 = v64;
  v89 = sub_1C0D13834(v64, v83);
  v66 = [v89 serializedPublicKey_];
  if (v66)
  {
    v67 = v66;
    v68 = sub_1C0D7832C();
    v70 = v69;

    v95 = v68;
    v96 = v70;
    v71 = v87;
    v72 = sub_1C0D7894C();
    v73 = MEMORY[0x1C68E3900](v72);
    v75 = v74;
    sub_1C0D1573C();
    sub_1C0CF448C(v73, v75);

    sub_1C0CF448C(v46, v93);
    sub_1C0CF448C(v85, v43);
    v76 = v71;
    v77 = v90;
    v78 = v94;
    (v94)(v76, v90);
    (v78)(v91, v77);
    goto LABEL_3;
  }

LABEL_24:
  __break(1u);
}

unint64_t sub_1C0D17CF0()
{
  result = qword_1EBE6D610;
  if (!qword_1EBE6D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D610);
  }

  return result;
}

uint64_t sub_1C0D17D44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D628, &qword_1C0D7C2E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C0D17DB4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C0D17DC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C0D17E0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C0D17E68()
{
  result = qword_1EBE6D638;
  if (!qword_1EBE6D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D638);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKPIETFKeyBlindingErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CKPIETFKeyBlindingErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0D18010()
{
  result = qword_1EBE6D648[0];
  if (!qword_1EBE6D648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6D648);
  }

  return result;
}

objc_class *RSAPSSSPKI_Bridging.__allocating_init(data:)(uint64_t a1, unint64_t a2)
{
  v6 = sub_1C0D785FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v2);
  sub_1C0CF6468(a1, a2);
  sub_1C0D785DC();
  if (v3)
  {
    sub_1C0CF448C(a1, a2);
    v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x30);
    v13 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v7 + 32))(v11 + OBJC_IVAR____TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging_backingStruct, v10, v6);
    v15.receiver = v11;
    v15.super_class = v2;
    v2 = objc_msgSendSuper2(&v15, sel_init);
    sub_1C0CF448C(a1, a2);
  }

  return v2;
}

void *RSAPSSSPKI_Bridging.init(data:)(uint64_t a1, unint64_t a2)
{
  v6 = sub_1C0D785FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0CF6468(a1, a2);
  sub_1C0D785DC();
  if (v3)
  {
    sub_1C0CF448C(a1, a2);
    type metadata accessor for RSAPSSSPKI_Bridging();
    v11 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v12 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v7 + 32))(v2 + OBJC_IVAR____TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging_backingStruct, v10, v6);
    v13 = type metadata accessor for RSAPSSSPKI_Bridging();
    v15.receiver = v2;
    v15.super_class = v13;
    v2 = objc_msgSendSuper2(&v15, sel_init);
    sub_1C0CF448C(a1, a2);
  }

  return v2;
}

uint64_t type metadata accessor for RSAPSSSPKI_Bridging()
{
  result = qword_1ED907588;
  if (!qword_1ED907588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id RSAPSSSPKI_Bridging.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RSAPSSSPKI_Bridging.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RSAPSSSPKI_Bridging();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0D188D0()
{
  result = sub_1C0D785FC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0D189D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0D18AB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
LABEL_23:
    v14 = *(v7 + 48);

    return v14(a1);
  }

  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v8)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
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

  return v8 + (v9 | v13) + 1;
}