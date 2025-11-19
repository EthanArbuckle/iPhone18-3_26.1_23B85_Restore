uint64_t sub_1AE4AFFA4(uint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 - v3;
  if (!v3)
  {
    v5 = 0;
  }

  if (v2 < 0 || v5 < v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v1[1];
  if (v6 < 0 || v5 < v6)
  {
    goto LABEL_17;
  }

  if (v6 - v2 <= 1)
  {
    if (v3)
    {
      v7 = v3 + v2;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      return v7;
    }

    goto LABEL_18;
  }

  if (v3)
  {
    v8 = bswap32(*(v3 + v2)) >> 16;
    if (result)
    {
      LOWORD(v7) = v8;
    }

    else
    {
      LOWORD(v7) = *(v3 + v2);
    }

    *v1 = sub_1AE4A7CA4(2uLL, v2, v6, v3, v4);
    v1[1] = v9;
    v1[2] = v10;
    v1[3] = v11;
    return v7;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AE4B00A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *MEMORY[0x1E69E9840];
  result = sub_1AE4B00F4(a1, a2, a3, a4, a5, a6, a7);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4B00F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *MEMORY[0x1E69E9840];
  result = sub_1AE4AD490(a1, a2, a3, a4, a5, a6, a7, sub_1AE4E1300);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4B0154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, a1, a2, a3);
  if (!v9)
  {
    v18 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v17 = 0;
    v16 = 0xE400000000000000;
    v15 = 1684632949;
    goto LABEL_18;
  }

  v39 = a3;
  result = sub_1AE4AEC7C(v9, v10);
  v15 = result;
  v16 = v12;
  if (v4)
  {
    v17 = v13;
    v18 = v14;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

LABEL_18:
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    *a4 = v15;
    *(a4 + 8) = v16;
    *(a4 + 16) = v17;
    *(a4 + 24) = v18;
    *(a4 + 32) = 64;
    return result;
  }

  v19 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_17;
    }

    v21 = *(result + 16);
    v20 = *(result + 24);
    v22 = __OFSUB__(v20, v21);
    v23 = v20 - v21;
    if (!v22)
    {
      if (v23 == 16)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v19)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 16)
      {
        goto LABEL_12;
      }

LABEL_17:
      v18 = 0x80;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      sub_1AE4A41E8(v15, v16);
      v16 = 0;
      v17 = 0;
      v15 = 7;
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  if (BYTE6(v12) != 16)
  {
    goto LABEL_17;
  }

LABEL_12:
  sub_1AE4A41E8(result, v12);

  v24 = sub_1AE4AC6E0(1836345698, 0xE400000000000000, 0, a1, a2, v39);
  if (!v24)
  {
    v18 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v17 = 0;
    v16 = 0xE400000000000000;
    v15 = 1836345698;
    goto LABEL_18;
  }

  v26 = sub_1AE4AEC7C(v24, v25);
  v28 = v27;

  sub_1AE4A41E8(v26, v28);
  v29 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, a1, a2, v39);
  if (!v29)
  {
    v18 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v17 = 0;
    v16 = 0xE400000000000000;
    v15 = 1919181921;
    goto LABEL_18;
  }

  sub_1AE4A6A00(v29);
  v15 = 1701603686;

  v30 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, a1, a2, v39);
  if (!v30)
  {
    v18 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v17 = 0;
    v16 = 0xE400000000000000;
    goto LABEL_18;
  }

  sub_1AE4AF28C(v30);

  v31 = v39;
  v32 = sub_1AE4AC6E0(1919181153, 0xE400000000000000, 0, a1, a2, v39);
  if (v32)
  {
    sub_1AE4A6A00(v32);

    v31 = v39;
  }

  result = sub_1AE4AC6E0(1684632929, 0xE400000000000000, 0, a1, a2, v31);
  if (!result)
  {
    return result;
  }

  result = sub_1AE4AEC7C(result, v33);
  v15 = result;
  v16 = v34;
  v35 = v34 >> 62;
  if ((v34 >> 62) > 1)
  {
    if (v35 != 2)
    {
      goto LABEL_17;
    }

    v38 = *(result + 16);
    v37 = *(result + 24);
    v22 = __OFSUB__(v37, v38);
    v36 = v37 - v38;
    if (!v22)
    {
      goto LABEL_37;
    }

    goto LABEL_42;
  }

  if (v35)
  {
    LODWORD(v36) = HIDWORD(result) - result;
    if (!__OFSUB__(HIDWORD(result), result))
    {
      v36 = v36;
      goto LABEL_37;
    }

LABEL_43:
    __break(1u);
    return result;
  }

  v36 = BYTE6(v34);
LABEL_37:
  if (v36 != 16)
  {
    goto LABEL_17;
  }

  return sub_1AE4A41E8(v15, v16);
}

uint64_t sub_1AE4B06C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AE4B0730(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    if (a1 <= a1 >> 32)
    {
      v10 = sub_1AE4EA990();
      if (!v10)
      {
LABEL_22:
        result = sub_1AE4EA9A0();
        __break(1u);
        goto LABEL_23;
      }

      v11 = v10;
      v12 = sub_1AE4EA9B0();
      if (!__OFSUB__(a1, v12))
      {
        v9 = (a1 - v12 + v11);
        result = sub_1AE4EA9A0();
        if (v9)
        {
          goto LABEL_13;
        }

LABEL_23:
        __break(1u);
        return result;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 16);
    v6 = sub_1AE4EA990();
    if (!v6)
    {
LABEL_20:
      sub_1AE4EA9A0();
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v7 = v6;
    v8 = sub_1AE4EA9B0();
    if (!__OFSUB__(v5, v8))
    {
      v9 = (v5 - v8 + v7);
      sub_1AE4EA9A0();
      if (v9)
      {
LABEL_13:
        v14 = *v9;
        v15 = v9[1];
        v16 = v9[2];
        v17 = v9[3];
        v18 = v9[4];
        v19 = v9[5];
        v20 = v9[6];
        v21 = v9[7];
        v22 = v9[8];
        v23 = v9[9];
        v24 = v9[10];
        v25 = v9[11];
        v26 = v9[12];
        v27 = v9[13];
        v28 = v9[14];
        v29 = v9[15];
        goto LABEL_14;
      }

      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_14:
  sub_1AE4EAAF0();

  return sub_1AE4A41E8(a1, a2);
}

uint64_t sub_1AE4B0920@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v571) = a4;
  *&v572 = a3;
  *&v573 = a5;
  v616 = *MEMORY[0x1E69E9840];
  v7 = sub_1AE4EAA30();
  v562 = *(v7 - 8);
  v563 = v7;
  v8 = *(v562 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v561 = &v536 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE4EAA00();
  v567 = *(v10 - 8);
  v568 = v10;
  v11 = *(v567 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v566 = &v536 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD588, &qword_1AE4EDBF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v556 = &v536 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v536 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v536 - v21;
  v23 = sub_1AE4EAC50();
  v24 = *(v23 - 8);
  v576 = v23;
  v577 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v555 = &v536 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v553 = &v536 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v554 = &v536 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v564 = &v536 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v565 = (&v536 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v569 = &v536 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v574 = &v536 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v549 = &v536 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v552 = &v536 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v557 = &v536 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v536 - v47;
  v49 = sub_1AE4EAB10();
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v548 = &v536 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v550 = &v536 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v551 = &v536 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v536 - v57;
  v558 = a1;
  v59 = a1;
  v61 = v60;
  v63 = v62;
  sub_1AE4B441C(v59, v48, &qword_1EB5DD4B8, "R3");
  v559 = *(v63 + 48);
  v560 = v63 + 48;
  if (v559(v48, 1, v61) == 1)
  {
    v547 = v63;
    *&v570 = a2;
    sub_1AE4B4558(v48, &qword_1EB5DD4B8, "R3");
  }

  else
  {
    (*(v63 + 32))(v58, v48, v61);
    v64 = *a2;
    if (*(*a2 + 16))
    {
      v65 = sub_1AE4B4484(v58);
      if (v66)
      {
        v67 = (*(v64 + 56) + 24 * v65);
        v68 = *v67;
        v69 = v67[1];
        v70 = v67[2];
        v71 = *(v63 + 8);

        result = v71(v58, v61);
        v73 = v573;
        *v573 = v68;
        *(v73 + 8) = v69;
        *(v73 + 16) = v70;
        goto LABEL_17;
      }
    }

    *&v570 = a2;
    v547 = v63;
    (*(v63 + 8))(v58, v61);
  }

  sub_1AE4B441C(v572, v22, &qword_1EB5DD520, &qword_1AE4EDB98);
  v75 = v576;
  v74 = v577;
  if ((*(v577 + 48))(v22, 1, v576) == 1)
  {
    v76 = &qword_1EB5DD520;
    v77 = &qword_1AE4EDB98;
    v78 = v22;
LABEL_16:
    result = sub_1AE4B4558(v78, v76, v77);
    v97 = v573;
    *(v573 + 8) = 0;
    v97[2] = 0;
    *v97 = 0;
    goto LABEL_17;
  }

  *&v572 = v61;
  v79 = v574;
  v80 = (*(v74 + 32))(v574, v22, v75);
  if ((v571 & 1) == 0)
  {
    v81 = sub_1AE4EABC0();
    v83 = *(v570 + 8);
    if (*(v83 + 16))
    {
      v84 = sub_1AE4E8FE4(v81, v82);
      v86 = v85;
      v74 = v577;

      v79 = v574;
      if (v86)
      {
        v87 = (*(v83 + 56) + 24 * v84);
        v88 = *v87;
        v89 = v87[1];
        v90 = v74;
        v91 = v87[2];
        v92 = *(v90 + 8);

        result = v92(v79, v75);
        v93 = v573;
        *v573 = v88;
        *(v93 + 8) = v89;
        *(v93 + 16) = v91;
        goto LABEL_17;
      }
    }

    else
    {

      v79 = v574;
    }
  }

  MEMORY[0x1B2700FE0](v80);
  v94 = sub_1AE4EAC00();
  v95 = *(v94 - 8);
  v96 = *(v95 + 48);
  if (v96(v18, 1, v94) == 1)
  {
    (*(v74 + 8))(v79, v576);
    v76 = &qword_1EB5DD588;
    v77 = &qword_1AE4EDBF0;
    v78 = v18;
    goto LABEL_16;
  }

  v543 = (v95 + 48);
  v544 = v96;
  v99 = sub_1AE4EABE0();
  v101 = v100;
  v102 = *(v95 + 8);
  v545 = v94;
  v546 = v95 + 8;
  v542 = v102;
  (v102)(v18, v94);
  v592 = 0x73616C74612ELL;
  v593 = 0xE600000000000000;
  v580[0] = v99;
  v580[1] = v101;
  v580[0] = sub_1AE4EAE30();
  v580[1] = v103;
  v104 = v577;
  sub_1AE4EADD0();
  v105 = v580[1];
  v106 = v104 + 16;
  v107 = v576;
  v541 = *(v104 + 16);
  v541(v564, v79, v576);
  sub_1AE4EAB90();

  v108 = v569;
  v564 = v105;
  sub_1AE4EAC30();
  sub_1AE4EABC0();
  v110 = *(v104 + 8);
  v109 = v104 + 8;
  v565 = v110;
  v110(v108, v107);
  v111 = v566;
  sub_1AE4EA9F0();

  v112 = v575;
  v113 = sub_1AE4EAA10();
  if (v112)
  {

    v115 = 0;
    *&v575 = 0;
    v116 = 0xF000000000000000;
  }

  else
  {
    v115 = v113;
    v116 = v114;
    *&v575 = 0;
  }

  (*(v567 + 8))(v111, v568);
  v117 = v574;
  if (v571)
  {
    sub_1AE4ABE40(v115, v116);
  }

  else if (v116 >> 60 != 15)
  {
    v540 = v106;
    sub_1AE4A6FD8(v115, v116);
    v563 = 0;
    v567 = 0xF000000000000000;
    v123 = v115;
    v124 = v116;
    goto LABEL_30;
  }

  v592 = 0;
  sub_1AE4EABC0();
  v118 = sub_1AE4EADA0();

  v119 = scavengeCache(v118 + 32, &v592);

  if (!v119)
  {
    v565(v117, v576);

    goto LABEL_28;
  }

  v540 = v106;
  v120 = v592;
  if (v592 < 0)
  {
    __break(1u);
    goto LABEL_73;
  }

  v121 = v561;
  (*(v562 + 104))(v561, *MEMORY[0x1E6969000], v563);
  v115 = sub_1AE4AB2E4(v119, v120, v121);
  v116 = v122;
  sub_1AE4A6FD8(v115, v122);
  v123 = 0;
  v124 = 0xF000000000000000;
  v563 = v115;
  v567 = v116;
LABEL_30:
  v126 = v570;
  v127 = *(v570 + 16);
  v571 = v115;
  v568 = v116;
  sub_1AE4A6FD8(v115, v116);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v126 + 16) = v127;
  v577 = v109;
  v566 = v123;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v127 = sub_1AE4E8DE0(0, *(v127 + 2) + 1, 1, v127);
    *(v570 + 16) = v127;
  }

  v129 = v571;
  v130 = v572;
  v132 = *(v127 + 2);
  v131 = *(v127 + 3);
  if (v132 >= v131 >> 1)
  {
    v127 = sub_1AE4E8DE0((v131 > 1), v132 + 1, 1, v127);
    *(v570 + 16) = v127;
  }

  *(v127 + 2) = v132 + 1;
  v133 = &v127[16 * v132];
  v134 = v568;
  *(v133 + 4) = v129;
  *(v133 + 5) = v134;
  sub_1AE4A6FD8(v129, v134);
  v135 = v575;
  v136 = sub_1AE4A702C(v129, v134, v590);
  if (v135)
  {
    v140 = v591;
    v575 = v590[0];
    v573 = v590[1];

    sub_1AE4C9530();
    swift_allocError();
    v141 = v573;
    *v142 = v575;
    *(v142 + 16) = v141;
    *(v142 + 32) = v140;
    sub_1AE4A41E8(v129, v134);
    sub_1AE4ABE40(v563, v567);
    sub_1AE4ABE40(v566, v124);
    result = (v565)(v574, v576);
    goto LABEL_17;
  }

  v143 = 0;
  v592 = v136;
  v593 = v137;
  v594 = v138;
  v595 = v139;
  v144 = v557;
  sub_1AE4B441C(v558, v557, &qword_1EB5DD4B8, "R3");
  v145 = v559(v144, 1, v130);
  v562 = v124;
  if (v145 == 1)
  {
    sub_1AE4B4558(v144, &qword_1EB5DD4B8, "R3");
    v580[0] = 0;
    v580[1] = 0xE000000000000000;
    sub_1AE4EB0A0();

    strcpy(v580, "caches/names/");
    HIWORD(v580[1]) = -4864;
    v147 = v556;
    MEMORY[0x1B2700FE0](v146);
    v148 = v545;
    if (v544(v147, 1, v545) == 1)
    {
      goto LABEL_346;
    }

    v152 = sub_1AE4EABF0();
    v154 = v153;
    (v542)(v147, v148);
    MEMORY[0x1B2701270](v152, v154);

    MEMORY[0x1B2701270](0x7473696C702ELL, 0xE600000000000000);
    v156 = v580[0];
    v155 = v580[1];
  }

  else
  {
    v580[0] = 0;
    v580[1] = 0xE000000000000000;
    sub_1AE4EB0A0();

    strcpy(v580, "caches/uuids/");
    HIWORD(v580[1]) = -4864;
    sub_1AE4EAAC0();
    v157 = sub_1AE4EAD90();
    v159 = v158;

    MEMORY[0x1B2701270](v157, v159);

    MEMORY[0x1B2701270](0x7473696C702ELL, 0xE600000000000000);
    v156 = v580[0];
    v155 = v580[1];
    (*(v547 + 8))(v144, v130);
  }

  v160 = sub_1AE4AA0F0(v156, v155, v590);
  v161 = v576;
  v162 = v160;
  v164 = v163;

  if (v164 >> 60 == 15)
  {
LABEL_42:
    v166 = v562;
    v167 = v566;
    v168 = v574;
    sub_1AE4A41E8(v571, v568);
    sub_1AE4ABE40(v563, v567);
    sub_1AE4ABE40(v167, v166);
    v169 = v594;
    v170 = v595;

    sub_1AE4A41E8(v169, v170);
    result = (v565)(v168, v161);
    v171 = v573;
    *v573 = 0;
    *(v171 + 8) = 0;
    *(v171 + 16) = 0;
    goto LABEL_17;
  }

  sub_1AE4AB600(v162, v164);
  v165 = sub_1AE4AB614(v162, v164);
  sub_1AE4ABE40(v162, v164);
  v172 = sub_1AE4AC2B4(v165);
  v174 = v173;
  v176 = v175;

  v561 = v176;
  *&v575 = v174;
  v177 = sub_1AE4AC6E0(0x73656D616ELL, 0xE500000000000000, 0, v172, v176, v174);
  if (!v177)
  {
LABEL_45:

    sub_1AE4ABE40(v162, v164);
    goto LABEL_42;
  }

  v564 = v172;
  v178 = sub_1AE4AC2B4(v177);
  v544 = v179;
  v545 = v180;
  v546 = v178;

  v181 = sub_1AE4AC6E0(0x7364697575, 0xE500000000000000, 0, v564, v561, v575);
  if (!v181)
  {

    goto LABEL_45;
  }

  v182 = sub_1AE4AC2B4(v181);
  LODWORD(v561) = v185;
  *&v575 = 0;
  v556 = v183;
  v557 = v184;
  v539 = v182;
  v536 = v162;
  v537 = v164;

  if (v567 >> 60 == 15)
  {
    v186 = &off_1F240C790;
    v187 = 18;
    while (--v187)
    {
      v188 = v186 + 2;
      v190 = *(v186 - 1);
      v189 = *v186;

      sub_1AE4EABC0();
      LOBYTE(v190) = sub_1AE4EAE10();

      v186 = v188;
      if (v190)
      {
        goto LABEL_92;
      }
    }
  }

  v580[0] = v546;
  v580[1] = v544;
  v581 = v545;
  v582 = 0;

  sub_1AE4B87FC(&v596);
  v129 = v599;
  if (v599)
  {
    v191 = v598;
    v192 = v597;
    v132 = v578;
    v193 = v575;
    while (1)
    {
      v194 = v600;
      v195 = sub_1AE4A67B4(v596, v192, v191 & 1);
      MEMORY[0x1EEE9AC00](v195);
      *(&v536 - 2) = v129;
      *(&v536 - 1) = v194;
      v196 = *(v129 + 72);
      v197 = (*(v129 + 64))(v129, v194);
      v198 = v197;
      v199 = *(v129 + 16);
      v143 = *(v129 + 24);
      v200 = v143 >> 62;
      if ((v143 >> 62) > 1)
      {
        break;
      }

      if (v200)
      {
        v215 = v199;
        v216 = v199 >> 32;
        if (v199 >> 32 < v199)
        {
          goto LABEL_330;
        }

LABEL_67:
        swift_retain_n();
        v217 = sub_1AE4EA5A8(v215, v216, v143 & 0x3FFFFFFFFFFFFFFFLL, v198, v129, sub_1AE4EA7EC);
        v214 = v193;
        if (v193)
        {

          v446 = v193;
          *&v575 = 0;
          goto LABEL_311;
        }

        v213 = v217;
        v212 = v218;
        v210 = v219;

        goto LABEL_69;
      }

      *&v575 = v193;
      v578[0] = v199;
      LOWORD(v578[1]) = v143;
      BYTE2(v578[1]) = BYTE2(v143);
      BYTE3(v578[1]) = BYTE3(v143);
      BYTE4(v578[1]) = BYTE4(v143);
      BYTE5(v578[1]) = BYTE5(v143);
      if (BYTE6(v143) < v197)
      {
        goto LABEL_329;
      }

      if (v197 < 0)
      {
        goto LABEL_331;
      }

      if (BYTE6(v143) <= v197)
      {
        v459 = v578 + v197;
        *&v585 = v578 + v197;
        *(&v585 + 1) = v578 + BYTE6(v143);
        *&v586 = 1;
        BYTE8(v586) = 64;
        sub_1AE4C78AC();

        swift_willThrowTypedImpl();
        v446 = swift_allocError();
        *v460 = v459;
        *(v460 + 8) = v578 + BYTE6(v143);
        *(v460 + 16) = 1;
        *(v460 + 24) = 64;
        goto LABEL_310;
      }

      swift_retain_n();
      v201 = *(v578 + v198);
      *&v588 = sub_1AE4A7CA4(1uLL, v198, BYTE6(v143), v578, v578 + BYTE6(v143));
      *(&v588 + 1) = v202;
      *&v589 = v203;
      *(&v589 + 1) = v204;
      v205 = v575;
      sub_1AE4A65CC(v201);
      v210 = v209;
      *&v575 = v205;
      if (v205)
      {
LABEL_307:
        v464 = v206;
        v465 = v207;
        v466 = v208;
        sub_1AE4C78AC();
        v446 = swift_allocError();
        *v467 = v210;
        *(v467 + 8) = v464;
        *(v467 + 16) = v465;
        *(v467 + 24) = v466;
LABEL_308:

        *&v575 = 0;
        goto LABEL_310;
      }

      v211 = sub_1AE4AC038(v201);
      if (v211 != 4)
      {
        if (v211 != 6)
        {
          goto LABEL_309;
        }

LABEL_301:
        sub_1AE4C78AC();
        v446 = swift_allocError();
        *(v461 + 8) = 0;
        *(v461 + 16) = 0;
        *v461 = 0;
        *(v461 + 24) = 0x80;
        swift_willThrow();
        goto LABEL_308;
      }

      v585 = v588;
      v586 = v589;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();

      v212 = v579[0];
      v213 = v129;
      v214 = v575;
LABEL_69:
      sub_1AE4E15F0(v213, v212, v210, v583);
      if (v214)
      {
LABEL_293:
        v453 = v583[0];
        v452 = v583[1];
        v454 = v583[2];
        v455 = v583[3];
        v456 = v584;

        sub_1AE4ABE40(v536, v537);
        sub_1AE4A41E8(v571, v568);
        sub_1AE4ABE40(v563, v567);
        sub_1AE4ABE40(v566, v562);

        v457 = v594;
        v458 = v595;

        sub_1AE4A41E8(v457, v458);
        v565(v574, v576);
        result = sub_1AE4DFB40(v453, v452, v454, v455, v456);
        *&v575 = 0;
        goto LABEL_28;
      }

      v193 = 0;

      sub_1AE4B87FC(&v596);
      v192 = v597;
      v129 = v599;
      v191 = v598;
      if (!v599)
      {
        goto LABEL_74;
      }
    }

    if (v200 != 2)
    {
      *&v575 = v193;
      *(&v585 + 6) = 0;
      *&v585 = 0;
      if (v197 > 0)
      {
        goto LABEL_354;
      }

      if ((v197 & 0x8000000000000000) == 0)
      {
        goto LABEL_305;
      }

LABEL_355:
      __break(1u);
LABEL_356:
      __break(1u);
      goto LABEL_357;
    }

    v215 = *(v199 + 16);
    v216 = *(v199 + 24);
    goto LABEL_67;
  }

LABEL_73:
  v193 = v575;
LABEL_74:
  *&v575 = v193;

  v580[0] = v539;
  v580[1] = v556;
  v581 = v557;
  v582 = 0;

  sub_1AE4B87FC(&v601);
  v129 = v604;
  if (!v604)
  {
LABEL_91:

LABEL_92:
    v580[0] = v539;
    v580[1] = v556;
    v581 = v557;
    v582 = 0;

    sub_1AE4B87FC(&v606);
    if (v609)
    {
      v246 = v609;
      v247 = v608;
      v248 = v607;
      v542 = (v547 + 8);
      v543 = (v547 + 32);
      v538 = (v547 + 16);
      v143 = v610;
      v132 = v570;
      v129 = v572;
      v250 = v551;
      v249 = v552;
      while (1)
      {
        LODWORD(v557) = v247;
        v561 = v606;
        if ((v247 & 1) == 0)
        {

          goto LABEL_145;
        }

        v556 = v246;
        v251 = *(v606 + 72);
        v252 = (*(v606 + 64))(v606, v248);
        v132 = v252;
        v253 = *(v561 + 16);
        v254 = *(v561 + 24);
        v255 = v254 >> 62;
        if ((v254 >> 62) > 1)
        {
          break;
        }

        v256 = v248;
        if (v255)
        {
          v280 = v253;
          v281 = v253 >> 32;
          v282 = v281 - v280;
          if (v281 < v280)
          {
            goto LABEL_320;
          }

          v129 = sub_1AE4EA990();
          if (v129)
          {
            v283 = sub_1AE4EA9B0();
            if (__OFSUB__(v280, v283))
            {
              goto LABEL_345;
            }

            v129 += v280 - v283;
          }

          v284 = sub_1AE4EA9A0();
          if (v284 >= v282)
          {
            v285 = v282;
          }

          else
          {
            v285 = v284;
          }

          v277 = v129 + v285;
          if (v129)
          {
            v286 = v129 + v285;
          }

          else
          {
            v286 = 0;
          }

          v150 = v286 - v129;
          if (v129)
          {
            v287 = v286 - v129;
          }

          else
          {
            v287 = 0;
          }

          if (v287 < v132)
          {
            goto LABEL_323;
          }

          if (v132 < 0)
          {
            goto LABEL_325;
          }

          if (v287 <= v132)
          {
            goto LABEL_362;
          }

          if (!v129)
          {
            goto LABEL_364;
          }

LABEL_142:
          v288 = *(v129 + v132);
          *&v588 = sub_1AE4A7CA4(1uLL, v132, v150, v129, v277);
          *(&v588 + 1) = v289;
          *&v589 = v290;
          *(&v589 + 1) = v291;
          v292 = v575;
          sub_1AE4A65CC(v288);
          v268 = v296;
          if (v292)
          {
            v493 = v293;
            v494 = v294;
            v495 = v295;
            sub_1AE4C78AC();
            v484 = swift_allocError();
            *v496 = v268;
            *(v496 + 8) = v493;
LABEL_388:
            *(v496 + 16) = v494;
            *(v496 + 24) = v495;
            goto LABEL_389;
          }

          v269 = sub_1AE4AC038(v288);
          if (v269 == 6)
          {
LABEL_374:
            sub_1AE4C78AC();
            v484 = swift_allocError();
            *(v485 + 8) = 0;
            *(v485 + 16) = 0;
            *v485 = 0;
            *(v485 + 24) = 0x80;
            swift_willThrow();
            goto LABEL_389;
          }

          goto LABEL_144;
        }

        v578[0] = *(v561 + 16);
        LOWORD(v578[1]) = v254;
        BYTE2(v578[1]) = BYTE2(v254);
        BYTE3(v578[1]) = BYTE3(v254);
        BYTE4(v578[1]) = BYTE4(v254);
        v150 = BYTE6(v254);
        BYTE5(v578[1]) = BYTE5(v254);
        if (BYTE6(v254) < v252)
        {
          goto LABEL_319;
        }

        if (v252 < 0)
        {
          goto LABEL_322;
        }

        v257 = v578;
        v258 = v578 + BYTE6(v254);
        if (BYTE6(v254) <= v252)
        {
          goto LABEL_385;
        }

        v259 = *(v578 + v252);
        *&v588 = sub_1AE4A7CA4(1uLL, v252, BYTE6(v254), v578, v258);
        *(&v588 + 1) = v260;
        *&v589 = v261;
        *(&v589 + 1) = v262;
        v263 = v575;
        sub_1AE4A65CC(v259);
        v268 = v267;
        if (v263)
        {
          v512 = v264;
          v494 = v265;
          v495 = v266;
          sub_1AE4C78AC();
          v484 = swift_allocError();
          *v496 = v268;
          *(v496 + 8) = v512;
          goto LABEL_388;
        }

        v269 = sub_1AE4AC038(v259);
        if (v269 == 6)
        {
          goto LABEL_374;
        }

LABEL_144:
        sub_1AE4AF684(v269, v268, v588, *(&v588 + 1), v589, *(&v589 + 1), v587, v579);
        *&v575 = 0;
        v132 = v570;
        v129 = v572;
        v250 = v551;
        v249 = v552;
        v248 = v256;
        v246 = v556;
LABEL_145:
        sub_1AE4EAAB0();

        if (v559(v249, 1, v129) != 1)
        {
          (*v543)(v250, v249, v129);
          v297 = *v132;
          if (*(*v132 + 16))
          {
            v298 = sub_1AE4B4484(v250);
            if (v299)
            {
              v300 = *(*(v297 + 56) + 24 * v298);

              sub_1AE4A67B4(v561, v248, v557 & 1);

LABEL_186:
              (*v542)(v250, v129);
              goto LABEL_95;
            }
          }

          (*v538)(v550, v250, v129);
          v301 = *(v246 + 72);
          v302 = (*(v246 + 64))(v246, v143);
          v143 = v302;
          v303 = *(v246 + 16);
          v129 = *(v246 + 24);
          v304 = v129 >> 62;
          if ((v129 >> 62) > 1)
          {
            if (v304 != 2)
            {
              goto LABEL_367;
            }

            v318 = *(v303 + 16);
            v319 = *(v303 + 24);
            v132 = sub_1AE4EA990();
            if (v132)
            {
              v320 = sub_1AE4EA9B0();
              if (__OFSUB__(v318, v320))
              {
                goto LABEL_352;
              }

              v132 += v318 - v320;
            }

            v273 = __OFSUB__(v319, v318);
            v321 = v319 - v318;
            if (v273)
            {
              goto LABEL_340;
            }

            v322 = sub_1AE4EA9A0();
            if (v322 >= v321)
            {
              v323 = v321;
            }

            else
            {
              v323 = v322;
            }

            if (v132)
            {
              v324 = v323;
            }

            else
            {
              v324 = 0;
            }

            if (v324 < v143)
            {
              goto LABEL_343;
            }
          }

          else
          {
            if (!v304)
            {
              v578[0] = *(v246 + 16);
              LOWORD(v578[1]) = v129;
              BYTE2(v578[1]) = BYTE2(v129);
              BYTE3(v578[1]) = BYTE3(v129);
              BYTE4(v578[1]) = BYTE4(v129);
              v150 = BYTE6(v129);
              BYTE5(v578[1]) = BYTE5(v129);
              if (BYTE6(v129) < v302)
              {
                goto LABEL_339;
              }

              if (v302 < 0)
              {
                goto LABEL_341;
              }

              v305 = v578;
              v306 = v578 + BYTE6(v129);
              if (BYTE6(v129) <= v302)
              {
                goto LABEL_395;
              }

              v307 = *(v578 + v302);
              *&v588 = sub_1AE4A7CA4(1uLL, v302, BYTE6(v129), v578, v306);
              *(&v588 + 1) = v308;
              *&v589 = v309;
              *(&v589 + 1) = v310;
              v311 = v575;
              sub_1AE4A65CC(v307);
              v316 = v315;
              *&v575 = v311;
              if (v311)
              {
                v527 = v312;
                v500 = v313;
                v501 = v314;
                sub_1AE4C78AC();
                v497 = swift_allocError();
                *v502 = v316;
                goto LABEL_397;
              }

              v317 = v307;
              goto LABEL_184;
            }

            v325 = v303;
            v326 = v303 >> 32;
            v327 = v326 - v325;
            if (v326 < v325)
            {
              goto LABEL_338;
            }

            v132 = sub_1AE4EA990();
            if (v132)
            {
              v328 = sub_1AE4EA9B0();
              if (__OFSUB__(v325, v328))
              {
                goto LABEL_353;
              }

              v132 += v325 - v328;
            }

            v329 = sub_1AE4EA9A0();
            if (v329 >= v327)
            {
              v323 = v327;
            }

            else
            {
              v323 = v329;
            }

            if (v132)
            {
              v324 = v323;
            }

            else
            {
              v324 = 0;
            }

            if (v324 < v143)
            {
              goto LABEL_342;
            }
          }

          v330 = v323 + v132;
          if (!v132)
          {
            v330 = 0;
          }

          *&v588 = v143;
          *(&v588 + 1) = v324;
          *&v589 = v132;
          *(&v589 + 1) = v330;
          v331 = v575;
          sub_1AE4A5694();
          v336 = v332;
          if (v331)
          {
            v499 = v333;
            v500 = v334;
            v501 = v335;
            sub_1AE4C78AC();
            v497 = swift_allocError();
            *v502 = v336;
            *(v502 + 8) = v499;
            goto LABEL_398;
          }

          sub_1AE4A65CC(v332);
          v316 = v337;
          *&v575 = 0;
          v317 = v336;
LABEL_184:
          v338 = sub_1AE4AC038(v317);
          if (v338 != 4)
          {
            if (v338 == 6)
            {
              sub_1AE4C78AC();
              v497 = swift_allocError();
              *(v498 + 8) = 0;
              *(v498 + 16) = 0;
              *v498 = 0;
              *(v498 + 24) = 0x80;
              swift_willThrow();
              goto LABEL_399;
            }

            goto LABEL_391;
          }

          v585 = v588;
          v586 = v589;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
          sub_1AE4EB230();
          v132 = v570;
          v129 = v572;
          v250 = v551;
          v249 = v552;
          sub_1AE4E8698(v246, v579[0], v316, v550);

          sub_1AE4A67B4(v561, v248, v557 & 1);
          goto LABEL_186;
        }

        sub_1AE4A67B4(v561, v248, v557 & 1);
        sub_1AE4B4558(v249, &qword_1EB5DD4B8, "R3");
LABEL_95:
        sub_1AE4B87FC(&v606);
        v248 = v607;
        v246 = v609;
        v143 = v610;
        v247 = v608;
        if (!v609)
        {
          goto LABEL_187;
        }
      }

      if (v255 != 2)
      {
        goto LABEL_358;
      }

      v256 = v248;
      v270 = *(v253 + 16);
      v271 = *(v253 + 24);
      v129 = sub_1AE4EA990();
      if (v129)
      {
        v272 = sub_1AE4EA9B0();
        if (__OFSUB__(v270, v272))
        {
          goto LABEL_344;
        }

        v129 += v270 - v272;
      }

      v273 = __OFSUB__(v271, v270);
      v274 = v271 - v270;
      if (v273)
      {
        goto LABEL_321;
      }

      v275 = sub_1AE4EA9A0();
      if (v275 >= v274)
      {
        v276 = v274;
      }

      else
      {
        v276 = v275;
      }

      v277 = v129 + v276;
      if (v129)
      {
        v278 = v129 + v276;
      }

      else
      {
        v278 = 0;
      }

      v150 = v278 - v129;
      if (v129)
      {
        v279 = v278 - v129;
      }

      else
      {
        v279 = 0;
      }

      if (v279 < v132)
      {
        goto LABEL_324;
      }

      if (v132 < 0)
      {
        goto LABEL_326;
      }

      if (v279 <= v132)
      {
        goto LABEL_365;
      }

      if (!v129)
      {
        goto LABEL_361;
      }

      goto LABEL_142;
    }

LABEL_187:

    v541(v569, v574, v576);
    sub_1AE4EAB90();
    v580[0] = v546;
    v580[1] = v544;
    v581 = v545;
    v582 = 0;

    sub_1AE4B87FC(&v611);
    v339 = v614;
    if (v614)
    {
      v340 = v613;
      v143 = v612;
      v132 = v615;
      v341 = v576;
      v342 = v570;
      while (1)
      {
        v343 = v611;
        v541(v555, v554, v341);
        LODWORD(v561) = v340;
        v569 = v143;
        v557 = v343;
        if ((v340 & 1) == 0)
        {

          goto LABEL_230;
        }

        v344 = *(v343 + 72);
        v345 = (*(v343 + 64))(v343, v143);
        v129 = v345;
        v346 = *(v343 + 16);
        v347 = *(v343 + 24);
        v348 = v347 >> 62;
        if ((v347 >> 62) <= 1)
        {
          break;
        }

        if (v348 == 2)
        {
          v350 = *(v346 + 16);
          v351 = *(v346 + 24);
          v143 = sub_1AE4EA990();
          if (v143)
          {
            v352 = sub_1AE4EA9B0();
            if (__OFSUB__(v350, v352))
            {
              goto LABEL_347;
            }

            v143 += v350 - v352;
          }

          v273 = __OFSUB__(v351, v350);
          v353 = v351 - v350;
          if (v273)
          {
            goto LABEL_335;
          }

          v354 = sub_1AE4EA9A0();
          if (v354 >= v353)
          {
            v355 = v353;
          }

          else
          {
            v355 = v354;
          }

          if (v143)
          {
            v356 = v355;
          }

          else
          {
            v356 = 0;
          }

          if (v356 < v129)
          {
            goto LABEL_337;
          }

          goto LABEL_221;
        }

        memset(v579, 0, 14);
        if (v345 > 0)
        {
          goto LABEL_333;
        }

        v588 = v345;
        *&v589 = v579;
        *(&v589 + 1) = v579;
        v368 = v575;
        sub_1AE4A5694();
        v367 = v363;
        if (v368)
        {
          v519 = v369;
          v520 = v370;
          v521 = v371;
          sub_1AE4C78AC();
          v487 = swift_allocError();
          *v522 = v367;
          *(v522 + 8) = v519;
          *(v522 + 16) = v520;
          *(v522 + 24) = v521;
          goto LABEL_393;
        }

LABEL_228:
        sub_1AE4A65CC(v363);
        v373 = v372;
        v374 = sub_1AE4AC038(v367);
        if (v374 == 6)
        {
          sub_1AE4C78AC();
          v487 = swift_allocError();
          *(v488 + 8) = 0;
          *(v488 + 16) = 0;
          *v488 = 0;
          *(v488 + 24) = 0x80;
          swift_willThrow();
LABEL_393:
          v579[0] = v487;
          v523 = v487;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
          swift_dynamicCast();
          v515 = *(&v588 + 1);
          v514 = v588;
          v516 = v589;
          v517 = BYTE8(v589);
          v585 = v588;
          *&v586 = v589;
          BYTE8(v586) = BYTE8(v589);
          v143 = sub_1AE4C78AC();
          swift_willThrowTypedImpl();

          goto LABEL_394;
        }

        sub_1AE4AF684(v374, v373, v588, *(&v588 + 1), v589, *(&v589 + 1), v587, &v585);
        *&v575 = 0;
        v341 = v576;
        v342 = v570;
LABEL_230:
        v143 = v553;
        sub_1AE4EAC30();
        v129 = sub_1AE4EABC0();
        v556 = v375;
        v565(v143, v341);
        v376 = *(v339 + 72);
        v377 = (*(v339 + 64))(v339, v132);
        v132 = v377;
        v378 = *(v339 + 16);
        v379 = *(v339 + 24);
        v380 = v379 >> 62;
        if ((v379 >> 62) > 1)
        {
          if (v380 == 2)
          {
            v389 = *(v378 + 16);
            v388 = *(v378 + 24);
            v143 = sub_1AE4EA990();
            if (v143)
            {
              v390 = sub_1AE4EA9B0();
              if (__OFSUB__(v389, v390))
              {
                goto LABEL_327;
              }

              v143 += v389 - v390;
            }

            v273 = __OFSUB__(v388, v389);
            v391 = v388 - v389;
            if (v273)
            {
              goto LABEL_315;
            }

            v392 = sub_1AE4EA9A0();
            if (v392 >= v391)
            {
              v393 = v391;
            }

            else
            {
              v393 = v392;
            }

            if (v143)
            {
              v394 = v393;
            }

            else
            {
              v394 = 0;
            }

            v341 = v576;
            v342 = v570;
            if (v394 < v132)
            {
              goto LABEL_318;
            }

            v395 = v393 + v143;
            if (!v143)
            {
              v395 = 0;
            }

            *&v588 = v132;
            *(&v588 + 1) = v394;
            *&v589 = v143;
            *(&v589 + 1) = v395;
            v396 = v575;
            sub_1AE4A5694();
            v401 = v400;
            if (v396)
            {
LABEL_373:
              v480 = v397;
              v481 = v398;
              v482 = v399;
              sub_1AE4C78AC();
              v478 = swift_allocError();
              *v483 = v401;
              *(v483 + 8) = v480;
              *(v483 + 16) = v481;
              *(v483 + 24) = v482;
              goto LABEL_384;
            }

LABEL_267:
            sub_1AE4A65CC(v401);
            v132 = v412;
            *&v575 = v396;
            v143 = v556;
          }

          else
          {
            memset(v578, 0, 14);
            if (v377 > 0)
            {
              goto LABEL_314;
            }

            v588 = v377;
            *&v589 = v578;
            *(&v589 + 1) = v578;
            v413 = v575;
            sub_1AE4A5694();
            v401 = v414;
            v143 = v556;
            if (v413)
            {
              goto LABEL_373;
            }

            sub_1AE4A65CC(v414);
            v132 = v415;
            *&v575 = 0;
          }

          v387 = v401;
          goto LABEL_272;
        }

        if (v380)
        {
          v402 = v378;
          v403 = v378 >> 32;
          v404 = v403 - v402;
          if (v403 < v402)
          {
            goto LABEL_313;
          }

          v143 = sub_1AE4EA990();
          if (v143)
          {
            v405 = sub_1AE4EA9B0();
            if (__OFSUB__(v402, v405))
            {
              goto LABEL_328;
            }

            v143 += v402 - v405;
          }

          v406 = v575;
          v407 = sub_1AE4EA9A0();
          if (v407 >= v404)
          {
            v408 = v404;
          }

          else
          {
            v408 = v407;
          }

          if (v143)
          {
            v409 = v408;
          }

          else
          {
            v409 = 0;
          }

          if (v409 < v132)
          {
            goto LABEL_317;
          }

          v410 = v408 + v143;
          if (!v143)
          {
            v410 = 0;
          }

          *&v588 = v132;
          *(&v588 + 1) = v409;
          *&v589 = v143;
          *(&v589 + 1) = v410;
          v396 = v406;
          sub_1AE4A5694();
          v401 = v411;
          v341 = v576;
          v342 = v570;
          if (v396)
          {
            goto LABEL_373;
          }

          goto LABEL_267;
        }

        v578[0] = *(v339 + 16);
        LOWORD(v578[1]) = v379;
        BYTE2(v578[1]) = BYTE2(v379);
        BYTE3(v578[1]) = BYTE3(v379);
        BYTE4(v578[1]) = BYTE4(v379);
        v150 = BYTE6(v379);
        BYTE5(v578[1]) = BYTE5(v379);
        v143 = v556;
        if (BYTE6(v379) < v377)
        {
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
          goto LABEL_355;
        }

        if (v377 < 0)
        {
          goto LABEL_316;
        }

        if (BYTE6(v379) <= v377)
        {
          v503 = v578 + v377;
          *&v585 = v578 + v377;
          *(&v585 + 1) = v578 + BYTE6(v379);
          v476 = 1;
          *&v586 = 1;
          LOBYTE(v379) = 64;
          BYTE8(v586) = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v478 = swift_allocError();
          *v477 = v503;
          *(v477 + 8) = v578 + BYTE6(v379);
          goto LABEL_383;
        }

        v381 = *(v578 + v377);
        *&v588 = sub_1AE4A7CA4(1uLL, v377, BYTE6(v379), v578, v578 + BYTE6(v379));
        *(&v588 + 1) = v382;
        *&v589 = v383;
        *(&v589 + 1) = v384;
        v385 = v575;
        sub_1AE4A65CC(v381);
        v132 = v386;
        *&v575 = v385;
        if (v385)
        {
          goto LABEL_370;
        }

        v387 = v381;
LABEL_272:
        v416 = sub_1AE4AC038(v387);
        if (v416 != 4)
        {
          if (v416 == 6)
          {
            sub_1AE4C78AC();
            v478 = swift_allocError();
            *(v479 + 8) = 0;
            *(v479 + 16) = 0;
            *v479 = 0;
            *(v479 + 24) = 0x80;
            swift_willThrow();
          }

          else
          {
            *&v586 = 0;
            v585 = 6uLL;
            BYTE8(v586) = 0x80;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v478 = swift_allocError();
            *(v486 + 8) = 0;
            *(v486 + 16) = 0;
            *v486 = 6;
            *(v486 + 24) = 0x80;
          }

          goto LABEL_384;
        }

        v585 = v588;
        v586 = v589;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
        sub_1AE4EB230();
        v417 = v579[0];
        if (*(*(v342 + 8) + 16) && (sub_1AE4E8FE4(v129, v143), (v418 & 1) != 0))
        {

          sub_1AE4A67B4(v557, v569, v561 & 1);
        }

        else
        {
          sub_1AE4E8870(v339, v417, v132, v129, v143);

          sub_1AE4A67B4(v557, v569, v561 & 1);
        }

        sub_1AE4B87FC(&v611);
        v143 = v612;
        v339 = v614;
        v132 = v615;
        v340 = v613;
        if (!v614)
        {
          goto LABEL_276;
        }
      }

      if (v348)
      {
        v357 = v346;
        v358 = v346 >> 32;
        v359 = v358 - v357;
        if (v358 < v357)
        {
          goto LABEL_332;
        }

        v143 = sub_1AE4EA990();
        if (v143)
        {
          v360 = sub_1AE4EA9B0();
          if (__OFSUB__(v357, v360))
          {
            goto LABEL_348;
          }

          v143 += v357 - v360;
        }

        v361 = sub_1AE4EA9A0();
        if (v361 >= v359)
        {
          v355 = v359;
        }

        else
        {
          v355 = v361;
        }

        if (v143)
        {
          v356 = v355;
        }

        else
        {
          v356 = 0;
        }

        if (v356 < v129)
        {
          goto LABEL_336;
        }

LABEL_221:
        v349 = (v355 + v143);
        if (!v143)
        {
          v349 = 0;
        }

        *&v588 = v129;
        *(&v588 + 1) = v356;
        *&v589 = v143;
      }

      else
      {
        v579[0] = v346;
        LOWORD(v579[1]) = v347;
        BYTE2(v579[1]) = BYTE2(v347);
        BYTE3(v579[1]) = BYTE3(v347);
        BYTE4(v579[1]) = BYTE4(v347);
        BYTE5(v579[1]) = BYTE5(v347);
        if (BYTE6(v347) < v345)
        {
          goto LABEL_334;
        }

        v349 = v579 + BYTE6(v347);
        *&v588 = v345;
        *(&v588 + 1) = BYTE6(v347);
        *&v589 = v579;
      }

      *(&v589 + 1) = v349;
      v362 = v575;
      sub_1AE4A5694();
      v367 = v363;
      if (v362)
      {
        v489 = v364;
        v490 = v365;
        v491 = v366;
        sub_1AE4C78AC();
        v487 = swift_allocError();
        *v492 = v367;
        *(v492 + 8) = v489;
        *(v492 + 16) = v490;
        *(v492 + 24) = v491;
        goto LABEL_393;
      }

      goto LABEL_228;
    }

LABEL_276:

    v419 = v549;
    sub_1AE4B441C(v558, v549, &qword_1EB5DD4B8, "R3");
    if (v559(v419, 1, v572) != 1)
    {
      (*(v547 + 32))(v548, v549, v572);
      v432 = *v570;
      if (*(*v570 + 16) && (v433 = sub_1AE4B4484(v548), (v434 & 1) != 0))
      {
        v435 = *(v432 + 56) + 24 * v433;
        v436 = *v435;
        v570 = *(v435 + 8);

        sub_1AE4ABE40(v536, v537);
        sub_1AE4A41E8(v571, v568);
        sub_1AE4ABE40(v563, v567);
        sub_1AE4ABE40(v566, v562);
        (*(v547 + 8))(v548, v572);
        v437 = v576;
        v438 = v565;
        v565(v554, v576);
        v439 = v594;
        v440 = v595;

        sub_1AE4A41E8(v439, v440);
        result = v438(v574, v437);
      }

      else
      {

        sub_1AE4ABE40(v536, v537);
        sub_1AE4A41E8(v571, v568);
        sub_1AE4ABE40(v563, v567);
        sub_1AE4ABE40(v566, v562);
        (*(v547 + 8))(v548, v572);
        v441 = v576;
        v442 = v565;
        v565(v554, v576);
        v443 = v594;
        v444 = v595;

        sub_1AE4A41E8(v443, v444);
        result = v442(v574, v441);
        v436 = 0;
        v570 = 0u;
      }

      v445 = v573;
      *v573 = v436;
      *(v445 + 8) = v570;
      goto LABEL_17;
    }

    sub_1AE4B4558(v549, &qword_1EB5DD4B8, "R3");
    v420 = sub_1AE4EABC0();
    v422 = *(v570 + 8);
    if (*(v422 + 16))
    {
      v423 = sub_1AE4E8FE4(v420, v421);
      v425 = v424;

      if (v425)
      {
        v426 = *(v422 + 56) + 24 * v423;
        v427 = *v426;
        v572 = *(v426 + 8);

        sub_1AE4ABE40(v536, v537);
        sub_1AE4A41E8(v571, v568);
        sub_1AE4ABE40(v563, v567);
        sub_1AE4ABE40(v566, v562);
        v428 = v576;
        v429 = v565;
        v565(v554, v576);
        v430 = v594;
        v431 = v595;

        sub_1AE4A41E8(v430, v431);
        result = v429(v574, v428);
LABEL_292:
        v451 = v573;
        *v573 = v427;
        *(v451 + 8) = v572;
        goto LABEL_17;
      }
    }

    else
    {
    }

    sub_1AE4ABE40(v536, v537);
    sub_1AE4A41E8(v571, v568);
    sub_1AE4ABE40(v563, v567);
    sub_1AE4ABE40(v566, v562);
    v447 = v576;
    v448 = v565;
    v565(v554, v576);
    v449 = v594;
    v450 = v595;

    sub_1AE4A41E8(v449, v450);
    result = v448(v574, v447);
    v427 = 0;
    v572 = 0u;
    goto LABEL_292;
  }

  v220 = v603;
  v221 = v602;
  v132 = &qword_1AE4ECE10;
  while (1)
  {
    v222 = v605;
    v223 = sub_1AE4A67B4(v601, v221, v220 & 1);
    v561 = &v536;
    MEMORY[0x1EEE9AC00](v223);
    *(&v536 - 2) = v129;
    *(&v536 - 1) = v222;
    v224 = *(v129 + 72);
    v225 = (*(v129 + 64))(v129, v222);
    v226 = v225;
    v227 = *(v129 + 16);
    v143 = *(v129 + 24);
    v228 = v143 >> 62;
    if ((v143 >> 62) > 1)
    {
      if (v228 != 2)
      {
        *(&v585 + 6) = 0;
        *&v585 = 0;
        if (v225 > 0)
        {
          goto LABEL_356;
        }

        if ((v225 & 0x8000000000000000) == 0)
        {
LABEL_305:
          *&v588 = &v585;
          *(&v588 + 1) = &v585;
          *&v589 = 1;
          BYTE8(v589) = 64;
          sub_1AE4C78AC();

          swift_willThrowTypedImpl();
          v446 = swift_allocError();
          *v462 = &v585;
          *(v462 + 8) = &v585;
          *(v462 + 16) = 1;
          *(v462 + 24) = 64;
          goto LABEL_310;
        }

LABEL_357:
        __break(1u);
LABEL_358:
        *(&v585 + 6) = 0;
        *&v585 = 0;
        if (v132 <= 0)
        {
          if ((v132 & 0x8000000000000000) == 0)
          {
            goto LABEL_401;
          }

          __break(1u);
LABEL_361:
          __break(1u);
LABEL_362:
          if (v129)
          {
            goto LABEL_402;
          }

          __break(1u);
LABEL_364:
          __break(1u);
LABEL_365:
          if (v129)
          {
LABEL_402:
            v533 = v129 + v132;
            v534 = v129 + v150;
            *&v585 = v533;
            *(&v585 + 1) = v534;
            *&v586 = 1;
            BYTE8(v586) = 64;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v484 = swift_allocError();
            *v535 = v533;
            *(v535 + 8) = v534;
            *(v535 + 16) = 1;
            *(v535 + 24) = 64;
            goto LABEL_389;
          }

          __break(1u);
LABEL_367:
          *(&v585 + 6) = 0;
          *&v585 = 0;
          if (v143 > 0)
          {
            goto LABEL_400;
          }

          if (v143 < 0)
          {
            __break(1u);
LABEL_370:
            v475 = v149;
            v476 = v150;
            LOBYTE(v379) = v151;
            sub_1AE4C78AC();
            v478 = swift_allocError();
            *v477 = v132;
            *(v477 + 8) = v475;
LABEL_383:
            *(v477 + 16) = v476;
            *(v477 + 24) = v379;
LABEL_384:
            v579[0] = v478;
            v504 = v478;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
            swift_dynamicCast();
            v505 = v588;
            v506 = v589;
            v507 = BYTE8(v589);
            v585 = v588;
            *&v586 = v589;
            BYTE8(v586) = BYTE8(v589);
            v132 = sub_1AE4C78AC();
            swift_willThrowTypedImpl();

            swift_allocError();
            *v508 = v505;
            *(v508 + 16) = v506;
            *(v508 + 24) = v507;
            swift_unexpectedError();
            __break(1u);
LABEL_385:
            v509 = v257 + v132;
            *&v585 = v509;
            *(&v585 + 1) = v258;
            *&v586 = 1;
            BYTE8(v586) = 64;
            v510 = v258;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v484 = swift_allocError();
            *v511 = v509;
            for (*(v511 + 8) = v510; ; *(v511 + 8) = &v585)
            {
              *(v511 + 16) = 1;
              *(v511 + 24) = 64;
LABEL_389:
              v579[0] = v484;
              v513 = v484;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
              v143 = &type metadata for BPListError;
              swift_dynamicCast();
              v515 = *(&v588 + 1);
              v514 = v588;
              v516 = v589;
              v517 = BYTE8(v589);
              v585 = v588;
              *&v586 = v589;
              BYTE8(v586) = BYTE8(v589);
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();

LABEL_394:
              swift_allocError();
              *v524 = v514;
              *(v524 + 8) = v515;
              *(v524 + 16) = v516;
              *(v524 + 24) = v517;
              swift_unexpectedError();
              __break(1u);
LABEL_395:
              v525 = v305 + v143;
              *&v585 = v305 + v143;
              *(&v585 + 1) = v306;
              v500 = 1;
              *&v586 = 1;
              v501 = 64;
              BYTE8(v586) = 64;
              v526 = v306;
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();
              v497 = swift_allocError();
              *v502 = v525;
              *(v502 + 8) = v526;
LABEL_398:
              *(v502 + 16) = v500;
              *(v502 + 24) = v501;
LABEL_399:
              v579[0] = v497;
              v528 = v497;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
              swift_dynamicCast();
              v529 = v588;
              v530 = v589;
              v531 = BYTE8(v589);
              v585 = v588;
              *&v586 = v589;
              BYTE8(v586) = BYTE8(v589);
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();

              swift_allocError();
              *v532 = v529;
              *(v532 + 16) = v530;
              *(v532 + 24) = v531;
              swift_unexpectedError();
              __break(1u);
LABEL_400:
              __break(1u);
LABEL_401:
              *&v588 = &v585;
              *(&v588 + 1) = &v585;
              *&v589 = 1;
              BYTE8(v589) = 64;
              sub_1AE4C78AC();
              swift_willThrowTypedImpl();
              v484 = swift_allocError();
              *v511 = &v585;
            }
          }

          v527 = &v585;
          *&v588 = &v585;
          *(&v588 + 1) = &v585;
          v500 = 1;
          *&v589 = 1;
          v501 = 64;
          BYTE8(v589) = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v497 = swift_allocError();
          *v502 = &v585;
LABEL_397:
          *(v502 + 8) = v527;
          goto LABEL_398;
        }

        __break(1u);
LABEL_391:
        *&v586 = 0;
        v585 = 6uLL;
        BYTE8(v586) = 0x80;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v497 = swift_allocError();
        *(v518 + 8) = 0;
        *(v518 + 16) = 0;
        *v518 = 6;
        *(v518 + 24) = 0x80;
        goto LABEL_399;
      }

      v238 = *(v227 + 16);
      v239 = *(v227 + 24);
      goto LABEL_87;
    }

    if (!v228)
    {
      break;
    }

    v238 = v227;
    v239 = v227 >> 32;
    if (v227 >> 32 < v227)
    {
      goto LABEL_350;
    }

LABEL_87:
    swift_retain_n();
    v240 = v226;
    v241 = v575;
    v242 = sub_1AE4EA5A8(v238, v239, v143 & 0x3FFFFFFFFFFFFFFFLL, v240, v129, sub_1AE4EA57C);
    *&v575 = v241;
    if (v241)
    {

      v446 = v575;
      *&v575 = 0;
      goto LABEL_311;
    }

    v237 = v242;
    v236 = v243;
    v210 = v244;

LABEL_89:
    v245 = v575;
    sub_1AE4E15F0(v237, v236, v210, v583);
    *&v575 = v245;
    if (v245)
    {
      goto LABEL_293;
    }

    sub_1AE4B87FC(&v601);
    v221 = v602;
    v129 = v604;
    v220 = v603;
    if (!v604)
    {
      goto LABEL_91;
    }
  }

  v578[0] = *(v129 + 16);
  LOWORD(v578[1]) = v143;
  BYTE2(v578[1]) = BYTE2(v143);
  BYTE3(v578[1]) = BYTE3(v143);
  BYTE4(v578[1]) = BYTE4(v143);
  BYTE5(v578[1]) = BYTE5(v143);
  if (BYTE6(v143) < v225)
  {
    goto LABEL_349;
  }

  if (v225 < 0)
  {
    goto LABEL_351;
  }

  if (BYTE6(v143) <= v225)
  {
    *&v585 = v578 + v225;
    *(&v585 + 1) = v578 + BYTE6(v143);
    *&v586 = 1;
    BYTE8(v586) = 64;
    sub_1AE4C78AC();

    swift_willThrowTypedImpl();
    v446 = swift_allocError();
    *v463 = v578 + v226;
    *(v463 + 8) = v578 + BYTE6(v143);
    *(v463 + 16) = 1;
    *(v463 + 24) = 64;
    goto LABEL_310;
  }

  swift_retain_n();
  v229 = *(v578 + v226);
  *&v588 = sub_1AE4A7CA4(1uLL, v226, BYTE6(v143), v578, v578 + BYTE6(v143));
  *(&v588 + 1) = v230;
  *&v589 = v231;
  *(&v589 + 1) = v232;
  v233 = v575;
  sub_1AE4A65CC(v229);
  v210 = v234;
  *&v575 = v233;
  if (v233)
  {
    goto LABEL_307;
  }

  v235 = sub_1AE4AC038(v229);
  if (v235 == 4)
  {
    v585 = v588;
    v586 = v589;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    sub_1AE4EB230();

    v236 = v579[0];
    v237 = v129;
    goto LABEL_89;
  }

  if (v235 == 6)
  {
    goto LABEL_301;
  }

LABEL_309:
  *&v586 = 0;
  v585 = 6uLL;
  BYTE8(v586) = 0x80;
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();
  v446 = swift_allocError();
  *(v468 + 8) = 0;
  *(v468 + 16) = 0;
  *v468 = 6;
  *(v468 + 24) = 0x80;

LABEL_310:

LABEL_311:
  v579[0] = v446;
  v469 = v446;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v470 = v588;
  v471 = v589;
  v472 = BYTE8(v589);
  v585 = v588;
  *&v586 = v589;
  BYTE8(v586) = BYTE8(v589);
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();

  sub_1AE4DB684(v470, *(&v470 + 1), v471, v472);

  sub_1AE4ABE40(v536, v537);
  sub_1AE4A41E8(v571, v568);
  sub_1AE4ABE40(v563, v567);
  sub_1AE4ABE40(v566, v562);

  v473 = v594;
  v474 = v595;

  sub_1AE4A41E8(v473, v474);
  result = (v565)(v574, v576);
LABEL_28:
  v125 = v573;
  *v573 = 0;
  *(v125 + 8) = 0;
  *(v125 + 16) = 0;
LABEL_17:
  v98 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4B441C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1AE4B4484(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1AE4EAB10();
  v5 = MEMORY[0x1E69695A8];
  sub_1AE4A9918(&qword_1EB5DD190, MEMORY[0x1E69695A8]);
  v6 = sub_1AE4EACE0();
  return sub_1AE4A9960(a1, v6, MEMORY[0x1E69695A8], &unk_1EB5DD148, v5, MEMORY[0x1E69695C8]);
}

uint64_t sub_1AE4B4558(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AE4B45DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  swift_weakInit();
  v4[6] = 0;
  v13 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
  swift_beginAccess();
  sub_1AE4B441C(a4 + v13, v12, &qword_1EB5DD520, &qword_1AE4EDB98);
  v14 = sub_1AE4EAC50();
  LODWORD(v13) = (*(*(v14 - 8) + 48))(v12, 1, v14);
  result = sub_1AE4B4558(v12, &qword_1EB5DD520, &qword_1AE4EDB98);
  if (v13 == 1)
  {
    __break(1u);
  }

  else
  {
    v4[2] = a1;
    v4[3] = a2;
    v4[4] = a3;
    v16 = *(a4 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache);
    *(a4 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache) = v4;

    swift_weakAssign();
    return v4;
  }

  return result;
}

CFTypeRef dyld_process_snapshot_create_for_process(void *a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
    if (!a1)
    {
      v3 = 0;
      *a2 = 5;
      return v3;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  v9 = 0;
  v4 = [a1 getCurrentSnapshotAndReturnError:&v9];
  v5 = v9;
  v6 = v5;
  if (v5)
  {
    KernReturn = extractKernReturn(v5);
    v3 = 0;
    if (a2)
    {
      *a2 = KernReturn;
    }
  }

  else
  {
    v3 = CFRetain(v4);
  }

  return v3;
}

uint64_t sub_1AE4B486C()
{
  v1 = OBJC_IVAR____DYProcess_impl;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    v4 = *(v3 + 80);
    v5 = *(v3 + 88);
    v6 = objc_allocWithZone(_DYSnapshot);

    v7 = [v6 initWithInternal_];
    v8 = &v7[OBJC_IVAR____DYSnapshot_impl];
    v9 = *&v7[OBJC_IVAR____DYSnapshot_impl];
    v10 = *&v7[OBJC_IVAR____DYSnapshot_impl + 8];
    *v8 = v4;
    *(v8 + 1) = v5;
    v11 = v7;
    sub_1AE4B4990(v9);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4B4990(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *dyld_process_snapshot_get_shared_cache(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 sharedCache];

  return v1;
}

void *sub_1AE4B4A50()
{
  v1 = OBJC_IVAR____DYSnapshot____lazy_storage___sharedCache;
  v2 = *(v0 + OBJC_IVAR____DYSnapshot____lazy_storage___sharedCache);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1AE4B4AC0(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1AE4B51C8(v4);
  }

  sub_1AE4B51D8(v2);
  return v3;
}

uint64_t sub_1AE4B4AC0(uint64_t result)
{
  if (*(result + OBJC_IVAR____DYSnapshot_impl))
  {
    v1 = *(result + OBJC_IVAR____DYSnapshot_impl + 8);
    v2 = *(result + OBJC_IVAR____DYSnapshot_impl);

    v3 = sub_1AE4B4BA0();
    if (!v3)
    {

      return v3;
    }

    result = swift_weakLoadStrong();
    if (result)
    {
      v4 = result;

      v5 = [objc_allocWithZone(_DYSharedCache) initWithInternal_];
      v6 = &v5[OBJC_IVAR____DYSharedCache_impl];
      v7 = *&v5[OBJC_IVAR____DYSharedCache_impl];
      v8 = *&v5[OBJC_IVAR____DYSharedCache_impl + 8];
      *v6 = v3;
      *(v6 + 1) = v4;
      v3 = v5;
      sub_1AE4B4990(v7);

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4B4BA0()
{
  v1 = sub_1AE4EAB10();
  v54 = *(v1 - 8);
  v2 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v51 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v51 - v11;
  v13 = *(v0 + 72);
  v53 = v13;
  v14 = *(v13 + 56);
  if (!v14)
  {
    return 0;
  }

  v15 = v14[2];
  v16 = v14[3];
  v17 = v14[4];
  v18 = *(v13 + 56);

  v19 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v15, v16, v17);
  if (!v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_1AE4AEC7C(v19, v20);
  v16 = v23;

  sub_1AE4B0730(v17, v16);
  (*(v54 + 56))(v12, 0, 1, v1);
  v24 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, v14[2], v14[3], v14[4]);
  if (!v24)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = sub_1AE4AF28C(v24);
  v27 = v26;

  MEMORY[0x1B27010F0](v25, v27);
  v28 = sub_1AE4EAC50();
  (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
  if (qword_1EB5DD140 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = qword_1EB5DD188;

  os_unfair_lock_lock(v16 + 4);
  sub_1AE4B0920(v12, &qword_1EB5DD170, v8, 0, v55);
  v52 = v1;
  v37 = v55[0];
  v38 = v55[1];
  v17 = v55[2];
  os_unfair_lock_unlock(v16 + 4);
  swift_endAccess();

  sub_1AE4B4558(v8, &qword_1EB5DD520, &qword_1AE4EDB98);
  sub_1AE4B4558(v12, &qword_1EB5DD4B8, "R3");
  if (v37)
  {
    goto LABEL_11;
  }

  v42 = v52;
  v29 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v14[2], v14[3], v14[4]);
  if (v29)
  {
    v31 = v42;
    v32 = sub_1AE4AEC7C(v29, v30);
    v34 = v33;

    sub_1AE4B0730(v32, v34);
    v37 = sub_1AE4D1B1C();
    v38 = v35;
    v17 = v36;
    (*(v54 + 8))(v4, v31);
    if (v37)
    {
LABEL_11:
      v39 = v53;

      type metadata accessor for SharedCache.Impl();
      swift_allocObject();

      v40 = sub_1AE4B45DC(v37, v38, v17, v39);

      return v40;
    }

    return 0;
  }

LABEL_16:
  __break(1u);
  v43 = v21;
  v44 = v22;
  sub_1AE4C78AC();
  swift_allocError();
  *v45 = v17;
  *(v45 + 8) = v16;
  *(v45 + 16) = v43;
  *(v45 + 24) = v44;
  swift_unexpectedError();
  __break(1u);
  v47 = v46;
  v49 = v48;
  sub_1AE4C78AC();
  swift_allocError();
  *v50 = v17;
  *(v50 + 8) = v16;
  *(v50 + 16) = v47;
  *(v50 + 24) = v49;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4B5120()
{
  v1 = *(v0 + 16);

  swift_weakDestroy();
  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void sub_1AE4B51C8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1AE4B51D8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void *dyld_shared_cache_get_mapped_size(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 vmsize];
  }

  return a1;
}

uint64_t sub_1AE4B5228(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYSharedCache_impl);
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v4 + OBJC_IVAR____DYSharedCache_impl + 8);
  v8 = v6[2];
  v5 = v6[3];
  v9 = v6[4];

  v10 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, v8, v5, v9);
  if (v10)
  {
    v5 = sub_1AE4A6A00(v10);

    if ((v5 & 0x8000000000000000) == 0)
    {
      return v5;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v15 = v5;
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *dyld_shared_cache_get_base_address(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 address];
  }

  return a1;
}

uint64_t sub_1AE4B5380(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYSharedCache_impl);
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *(v4 + OBJC_IVAR____DYSharedCache_impl + 8);
  v8 = v6[2];
  v5 = v6[3];
  v9 = v6[4];

  v10 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v8, v5, v9);
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_1AE4A6A00(v10);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;

    v13 = *(v12 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide);

    return v13 + v5;
  }

LABEL_7:
  __break(1u);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v18 = v5;
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4B54F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_1AE4B55F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v367 = a1;
  v407 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v366 = &v354 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v372 = &v354 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v374 = &v354 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4E8, &qword_1AE4EDB68);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v365 = &v354 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v364 = &v354 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v354 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v354 - v19;
  v21 = OBJC_IVAR____TtCV4Dyld5Image4Impl__info;
  swift_beginAccess();
  sub_1AE4B441C(v1 + v21, v20, &qword_1EB5DD4E8, &qword_1AE4EDB68);
  v22 = type metadata accessor for Image.Info(0);
  v363 = *(v22 - 8);
  v24 = v363 + 48;
  v23 = *(v363 + 48);
  v25 = v23(v20, 1, v22);
  sub_1AE4B4558(v20, &qword_1EB5DD4E8, &qword_1AE4EDB68);
  if (v25 != 1)
  {
    sub_1AE4B441C(v1 + v21, v18, &qword_1EB5DD4E8, &qword_1AE4EDB68);
    v291 = v23(v18, 1, v22);
    v292 = v367;
    if (v291 == 1)
    {
      __break(1u);
LABEL_322:
      v290 = v357;
      goto LABEL_323;
    }

    goto LABEL_334;
  }

  v358 = v23;
  v359 = v24;
  v360 = v22;
  v361 = v21;
  v26 = sub_1AE4EAB10();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v29 = v374;
  v370 = v26;
  v369 = v28;
  v368 = v27 + 56;
  (v28)(v374, 1, 1);
  v30 = *(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist);
  v401 = *(v1 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8);
  v400 = v30;
  v402 = 0;

  sub_1AE4B87FC(&v403);
  v31 = v403;
  v384 = v404;
  v32 = v405;
  if (!v405)
  {

    v378 = 0;
    v377 = 0;
    *&v380 = 0;
    v296 = 0;
    v373 = 0;
    v362 = 0;
    v371 = 1;
    v376 = 255;
    v379 = 255;
    v290 = 1;
    v293 = v361;
    v294 = v360;
    v295 = v366;
    v292 = v367;
LABEL_330:
    sub_1AE4B441C(v29, v295, &qword_1EB5DD4B8, "R3");
    v298 = 0;
    if (v290 & 1) != 0 && (v371)
    {
      goto LABEL_418;
    }

    goto LABEL_332;
  }

  v355 = v1;
  v356 = v30;
  v378 = 0;
  v377 = 0;
  *&v380 = 0;
  v375 = 0;
  v362 = 0;
  v373 = 0;
  v33 = v406;
  v34 = 1;
  v376 = 255;
  LODWORD(v35) = v384;
  v379 = 255;
  v371 = 1;
  do
  {
    v357 = v34;
    while (1)
    {
      v36 = *(&v31 + 1);
      v37 = v31;
      v38 = sub_1AE4B8C4C(v31, *(&v31 + 1), v35 & 1, 1701667182, 0xE400000000000000, 0);
      v382 = v36;
      v383 = v37;
      v381 = v35;
      if ((v38 & 1) == 0)
      {
        goto LABEL_98;
      }

      v39 = *(v32 + 72);
      v40 = (*(v32 + 64))(v32, v33);
      v42 = v40;
      v43 = *(v32 + 16);
      v35 = *(v32 + 24);
      v44 = v35 >> 62;
      if ((v35 >> 62) > 1)
      {
        if (v44 != 2)
        {
          goto LABEL_391;
        }

        v52 = *(v43 + 16);
        v51 = *(v43 + 24);
        v53 = sub_1AE4EA990();
        if (v53)
        {
          v37 = v53;
          v54 = sub_1AE4EA9B0();
          if (__OFSUB__(v52, v54))
          {
            goto LABEL_359;
          }

          v24 = v52 - v54 + v37;
          v55 = __OFSUB__(v51, v52);
          v56 = v51 - v52;
          if (v55)
          {
            goto LABEL_337;
          }
        }

        else
        {
          v24 = 0;
          v55 = __OFSUB__(v51, v52);
          v56 = v51 - v52;
          if (v55)
          {
            goto LABEL_337;
          }
        }

        v62 = sub_1AE4EA9A0();
        if (v62 >= v56)
        {
          v63 = v56;
        }

        else
        {
          v63 = v62;
        }

        v64 = v24 + v63;
        if (v24)
        {
          v65 = v24 + v63;
        }

        else
        {
          v65 = 0;
        }

        v37 = v65 - v24;
        if (v24)
        {
          v66 = v65 - v24;
        }

        else
        {
          v66 = 0;
        }

        if (v66 < v42)
        {
          goto LABEL_340;
        }

        if (sub_1AE4BA9B0(v42, v66, v24, v65) <= 0)
        {
          goto LABEL_398;
        }

        v36 = v382;
        if (!v24)
        {
          goto LABEL_397;
        }
      }

      else
      {
        if (!v44)
        {
          v385 = *(v32 + 16);
          v386 = v35;
          v387 = BYTE2(v35);
          v388 = BYTE3(v35);
          v389 = BYTE4(v35);
          v390 = BYTE5(v35);
          if (BYTE6(v35) < v40)
          {
            goto LABEL_336;
          }

          if (v40 < 0)
          {
            goto LABEL_338;
          }

          v45 = &v385;
          v41 = &v385 + BYTE6(v35);
          if (BYTE6(v35) <= v40)
          {
            goto LABEL_430;
          }

          v46 = *(&v385 + v40);
          *&v397 = sub_1AE4A7CA4(1uLL, v40, BYTE6(v35), &v385, v41);
          *(&v397 + 1) = v47;
          v398 = v48;
          v399 = v49;
          sub_1AE4A65CC(v46);
          LOBYTE(v35) = v381;
          v50 = sub_1AE4AC038(v46);
          if (v50 == 6)
          {
LABEL_422:
            sub_1AE4C78AC();
            v42 = swift_allocError();
            *(v311 + 8) = 0;
            *(v311 + 16) = 0;
            *v311 = 0;
            *(v311 + 24) = 0x80;
            swift_willThrow();
            goto LABEL_432;
          }

          goto LABEL_52;
        }

        v57 = v43;
        v58 = v43 >> 32;
        v59 = v58 - v57;
        if (v58 < v57)
        {
          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
LABEL_356:
          __break(1u);
LABEL_357:
          __break(1u);
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
LABEL_361:
          __break(1u);
LABEL_362:
          __break(1u);
LABEL_363:
          __break(1u);
LABEL_364:
          __break(1u);
LABEL_365:
          __break(1u);
LABEL_366:
          __break(1u);
LABEL_367:
          __break(1u);
LABEL_368:
          __break(1u);
LABEL_369:
          __break(1u);
LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
LABEL_374:
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          __break(1u);
LABEL_377:
          __break(1u);
LABEL_378:
          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
LABEL_382:
          __break(1u);
          goto LABEL_383;
        }

        v60 = sub_1AE4EA990();
        if (v60)
        {
          v37 = v60;
          v61 = sub_1AE4EA9B0();
          if (__OFSUB__(v57, v61))
          {
            goto LABEL_360;
          }

          v24 = v57 - v61 + v37;
        }

        else
        {
          v24 = 0;
        }

        v67 = sub_1AE4EA9A0();
        if (v67 >= v59)
        {
          v68 = v59;
        }

        else
        {
          v68 = v67;
        }

        v64 = v24 + v68;
        if (v24)
        {
          v69 = v24 + v68;
        }

        else
        {
          v69 = 0;
        }

        v37 = v69 - v24;
        if (v24)
        {
          v70 = v69 - v24;
        }

        else
        {
          v70 = 0;
        }

        if (v70 < v42)
        {
          goto LABEL_339;
        }

        if (sub_1AE4BA9B0(v42, v70, v24, v69) <= 0)
        {
          goto LABEL_401;
        }

        v36 = v382;
        if (!v24)
        {
          goto LABEL_400;
        }
      }

      v71 = *(v24 + v42);
      *&v397 = sub_1AE4A7CA4(1uLL, v42, v37, v24, v64);
      *(&v397 + 1) = v72;
      v398 = v73;
      v399 = v74;
      sub_1AE4A65CC(v71);
      v50 = sub_1AE4AC038(v71);
      v37 = v383;
      if (v50 == 6)
      {
        goto LABEL_422;
      }

      LOBYTE(v35) = v381;
LABEL_52:
      if (v50 == 1)
      {
        v75 = *(v32 + 72);
        v76 = (*(v32 + 64))(v32, v33);
        v42 = v76;
        v77 = *(v32 + 16);
        v24 = *(v32 + 24);
        v78 = v24 >> 62;
        if ((v24 >> 62) > 1)
        {
          if (v78 == 2)
          {
            v84 = *(v77 + 16);
            v83 = *(v77 + 24);
            v85 = sub_1AE4EA990();
            if (v85)
            {
              v37 = v85;
              v86 = sub_1AE4EA9B0();
              if (__OFSUB__(v84, v86))
              {
                goto LABEL_379;
              }

              v87 = v84 - v86 + v37;
            }

            else
            {
              v87 = 0;
            }

            v55 = __OFSUB__(v83, v84);
            v100 = v83 - v84;
            v37 = v383;
            if (v55)
            {
              goto LABEL_370;
            }

            v101 = sub_1AE4EA9A0();
            if (v101 >= v100)
            {
              v102 = v100;
            }

            else
            {
              v102 = v101;
            }

            if (v87)
            {
              v103 = v102;
            }

            else
            {
              v103 = 0;
            }

            if (v103 < v42)
            {
              goto LABEL_372;
            }

            v104 = (v102 + v87);
            if (!v87)
            {
              v104 = 0;
            }

            *&v397 = v42;
            *(&v397 + 1) = v103;
            v398 = v87;
            v399 = v104;
            sub_1AE4A5694();
            v24 = v105;
            sub_1AE4A65CC(v105);
            v81 = v106;
            LOBYTE(v35) = v381;
            v36 = v382;
            if (sub_1AE4AC038(v24) == 6)
            {
              goto LABEL_420;
            }

            v82 = v398;
            if (!v398)
            {
              goto LABEL_411;
            }
          }

          else
          {
            *(&v394 + 6) = 0;
            *&v394 = 0;
            if (v76 > 0)
            {
              goto LABEL_367;
            }

            v397 = v76;
            v398 = &v394;
            v399 = &v394;
            sub_1AE4A5694();
            v24 = v98;
            sub_1AE4A65CC(v98);
            v81 = v99;
            if (sub_1AE4AC038(v24) == 6)
            {
              goto LABEL_420;
            }

            v82 = v398;
            if (!v398)
            {
              goto LABEL_410;
            }
          }
        }

        else if (v78)
        {
          v88 = v77;
          v89 = v77 >> 32;
          v90 = v89 - v88;
          if (v89 < v88)
          {
            goto LABEL_369;
          }

          v37 = sub_1AE4EA990();
          if (v37)
          {
            v91 = sub_1AE4EA9B0();
            if (__OFSUB__(v88, v91))
            {
              goto LABEL_380;
            }

            v37 += v88 - v91;
          }

          v92 = sub_1AE4EA9A0();
          if (v92 >= v90)
          {
            v93 = v90;
          }

          else
          {
            v93 = v92;
          }

          if (v37)
          {
            v94 = v93;
          }

          else
          {
            v94 = 0;
          }

          if (v94 < v42)
          {
            goto LABEL_371;
          }

          v95 = (v93 + v37);
          if (!v37)
          {
            v95 = 0;
          }

          *&v397 = v42;
          *(&v397 + 1) = v94;
          v398 = v37;
          v399 = v95;
          sub_1AE4A5694();
          v24 = v96;
          sub_1AE4A65CC(v96);
          v81 = v97;
          v36 = v382;
          v37 = v383;
          if (sub_1AE4AC038(v24) == 6)
          {
            goto LABEL_420;
          }

          v82 = v398;
          if (!v398)
          {
            goto LABEL_413;
          }
        }

        else
        {
          *&v394 = *(v32 + 16);
          WORD4(v394) = v24;
          BYTE10(v394) = BYTE2(v24);
          BYTE11(v394) = BYTE3(v24);
          BYTE12(v394) = BYTE4(v24);
          BYTE13(v394) = BYTE5(v24);
          if (BYTE6(v24) < v76)
          {
            goto LABEL_368;
          }

          *&v397 = v76;
          *(&v397 + 1) = BYTE6(v24);
          v398 = &v394;
          v399 = &v394 + BYTE6(v24);
          sub_1AE4A5694();
          v24 = v79;
          sub_1AE4A65CC(v79);
          v81 = v80;
          if (sub_1AE4AC038(v24) == 6)
          {
            goto LABEL_420;
          }

          v82 = v398;
          if (!v398)
          {
            __break(1u);
LABEL_410:
            __break(1u);
LABEL_411:
            __break(1u);
LABEL_412:
            __break(1u);
LABEL_413:
            __break(1u);
LABEL_414:
            __break(1u);
LABEL_415:
            __break(1u);
LABEL_416:
            __break(1u);
LABEL_417:
            __break(1u);
LABEL_418:
            __break(1u);
LABEL_419:
            __break(1u);
LABEL_420:
            sub_1AE4C78AC();
            v309 = swift_allocError();
            *(v310 + 8) = 0;
            *(v310 + 16) = 0;
            *v310 = 0;
            *(v310 + 24) = 0x80;
            swift_willThrow();
            goto LABEL_425;
          }
        }

        v107 = v397;
        sub_1AE4BA998(v375, v380, v379);
        v375 = v82 + v107;
        *&v380 = v82 + v107 + v81;
        v379 = 0;
      }

      else
      {
        sub_1AE4BA998(v375, v380, v379);

        v379 = 1;
        v375 = v32;
        *&v380 = v33;
      }

LABEL_98:
      if ((sub_1AE4B8C4C(v37, v36, v35 & 1, 1701603686, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_187;
      }

      v108 = *(v32 + 72);
      v109 = (*(v32 + 64))(v32, v33);
      v42 = v109;
      v110 = *(v32 + 16);
      v35 = *(v32 + 24);
      v111 = v35 >> 62;
      if ((v35 >> 62) > 1)
      {
        if (v111 != 2)
        {
          goto LABEL_394;
        }

        v24 = *(v110 + 16);
        v119 = *(v110 + 24);
        v120 = sub_1AE4EA990();
        if (v120)
        {
          v37 = v120;
          v121 = sub_1AE4EA9B0();
          if (__OFSUB__(v24, v121))
          {
            goto LABEL_361;
          }

          v122 = v24 - v121 + v37;
        }

        else
        {
          v122 = 0;
        }

        v55 = __OFSUB__(v119, v24);
        v128 = v119 - v24;
        v37 = v383;
        if (v55)
        {
          goto LABEL_343;
        }

        v129 = sub_1AE4EA9A0();
        if (v129 >= v128)
        {
          v130 = v128;
        }

        else
        {
          v130 = v129;
        }

        if (v122)
        {
          v131 = v130;
        }

        else
        {
          v131 = 0;
        }

        if (v131 < v42)
        {
          goto LABEL_346;
        }

        v132 = (v130 + v122);
        if (!v122)
        {
          v132 = 0;
        }

        *&v397 = v42;
        *(&v397 + 1) = v131;
        v398 = v122;
        v399 = v132;
        sub_1AE4A5694();
        v134 = v133;
        sub_1AE4A65CC(v133);
        LOBYTE(v35) = v381;
        v36 = v382;
        v118 = v134;
      }

      else
      {
        if (v111)
        {
          v123 = v110;
          v124 = v110 >> 32;
          v125 = v124 - v123;
          if (v124 < v123)
          {
            goto LABEL_342;
          }

          v126 = sub_1AE4EA990();
          if (v126)
          {
            v37 = v126;
            v127 = sub_1AE4EA9B0();
            if (__OFSUB__(v123, v127))
            {
              goto LABEL_362;
            }

            v24 = v123 - v127 + v37;
          }

          else
          {
            v24 = 0;
          }

          v136 = sub_1AE4EA9A0();
          if (v136 >= v125)
          {
            v137 = v125;
          }

          else
          {
            v137 = v136;
          }

          v138 = v24 + v137;
          if (v24)
          {
            v139 = v24 + v137;
          }

          else
          {
            v139 = 0;
          }

          v37 = v139 - v24;
          if (v24)
          {
            v140 = v139 - v24;
          }

          else
          {
            v140 = 0;
          }

          if (v140 < v42)
          {
            goto LABEL_345;
          }

          if (sub_1AE4BA9B0(v42, v140, v24, v139) <= 0)
          {
            goto LABEL_404;
          }

          v36 = v382;
          if (!v24)
          {
            goto LABEL_403;
          }

          v141 = *(v24 + v42);
          *&v397 = sub_1AE4A7CA4(1uLL, v42, v37, v24, v138);
          *(&v397 + 1) = v142;
          v398 = v143;
          v399 = v144;
          sub_1AE4A65CC(v141);
          v135 = sub_1AE4AC038(v141);
          v37 = v383;
          if (v135 == 6)
          {
LABEL_423:
            sub_1AE4C78AC();
            v312 = swift_allocError();
            *(v313 + 8) = 0;
            *(v313 + 16) = 0;
            *v313 = 0;
            *(v313 + 24) = 0x80;
            swift_willThrow();
            goto LABEL_424;
          }

          LOBYTE(v35) = v381;
          goto LABEL_142;
        }

        v385 = *(v32 + 16);
        v386 = v35;
        v387 = BYTE2(v35);
        v388 = BYTE3(v35);
        v389 = BYTE4(v35);
        v390 = BYTE5(v35);
        if (BYTE6(v35) < v109)
        {
          goto LABEL_341;
        }

        if (v109 < 0)
        {
          goto LABEL_344;
        }

        v112 = &v385;
        v113 = &v385 + BYTE6(v35);
        if (BYTE6(v35) <= v109)
        {
          goto LABEL_433;
        }

        v114 = *(&v385 + v109);
        *&v397 = sub_1AE4A7CA4(1uLL, v109, BYTE6(v35), &v385, v113);
        *(&v397 + 1) = v115;
        v398 = v116;
        v399 = v117;
        sub_1AE4A65CC(v114);
        LOBYTE(v35) = v381;
        v118 = v114;
      }

      v135 = sub_1AE4AC038(v118);
      if (v135 == 6)
      {
        goto LABEL_423;
      }

LABEL_142:
      if (v135 == 1)
      {
        v145 = *(v32 + 72);
        v146 = (*(v32 + 64))(v32, v33);
        v42 = v146;
        v147 = *(v32 + 16);
        v24 = *(v32 + 24);
        v148 = v24 >> 62;
        if ((v24 >> 62) > 1)
        {
          if (v148 == 2)
          {
            v152 = *(v147 + 16);
            v151 = *(v147 + 24);
            v153 = sub_1AE4EA990();
            if (v153)
            {
              v37 = v153;
              v154 = sub_1AE4EA9B0();
              if (__OFSUB__(v152, v154))
              {
                goto LABEL_381;
              }

              v155 = v152 - v154 + v37;
            }

            else
            {
              v155 = 0;
            }

            v55 = __OFSUB__(v151, v152);
            v168 = v151 - v152;
            v37 = v383;
            if (v55)
            {
              goto LABEL_376;
            }

            v169 = sub_1AE4EA9A0();
            if (v169 >= v168)
            {
              v170 = v168;
            }

            else
            {
              v170 = v169;
            }

            if (v155)
            {
              v171 = v170;
            }

            else
            {
              v171 = 0;
            }

            if (v171 < v42)
            {
              goto LABEL_377;
            }

            v172 = (v170 + v155);
            if (!v155)
            {
              v172 = 0;
            }

            *&v397 = v42;
            *(&v397 + 1) = v171;
            v398 = v155;
            v399 = v172;
            sub_1AE4A5694();
            v174 = v173;
            sub_1AE4A65CC(v173);
            LOBYTE(v35) = v381;
            v36 = v382;
            if (sub_1AE4AC038(v174) == 6)
            {
              goto LABEL_420;
            }

            if (!v398)
            {
              goto LABEL_416;
            }
          }

          else
          {
            *(&v394 + 6) = 0;
            *&v394 = 0;
            if (v146 > 0)
            {
              goto LABEL_375;
            }

            v397 = v146;
            v398 = &v394;
            v399 = &v394;
            sub_1AE4A5694();
            v167 = v166;
            sub_1AE4A65CC(v166);
            if (sub_1AE4AC038(v167) == 6)
            {
              goto LABEL_420;
            }

            if (!v398)
            {
              goto LABEL_415;
            }
          }
        }

        else if (v148)
        {
          v156 = v147;
          v157 = v147 >> 32;
          v158 = v157 - v156;
          if (v157 < v156)
          {
            goto LABEL_373;
          }

          v37 = sub_1AE4EA990();
          if (v37)
          {
            v159 = sub_1AE4EA9B0();
            if (__OFSUB__(v156, v159))
            {
              goto LABEL_382;
            }

            v37 += v156 - v159;
          }

          v160 = sub_1AE4EA9A0();
          if (v160 >= v158)
          {
            v161 = v158;
          }

          else
          {
            v161 = v160;
          }

          if (v37)
          {
            v162 = v161;
          }

          else
          {
            v162 = 0;
          }

          if (v162 < v42)
          {
            goto LABEL_378;
          }

          v163 = (v161 + v37);
          if (!v37)
          {
            v163 = 0;
          }

          *&v397 = v42;
          *(&v397 + 1) = v162;
          v398 = v37;
          v399 = v163;
          sub_1AE4A5694();
          v165 = v164;
          sub_1AE4A65CC(v164);
          v36 = v382;
          v37 = v383;
          if (sub_1AE4AC038(v165) == 6)
          {
            goto LABEL_420;
          }

          if (!v398)
          {
            goto LABEL_412;
          }
        }

        else
        {
          *&v394 = *(v32 + 16);
          WORD4(v394) = v24;
          BYTE10(v394) = BYTE2(v24);
          BYTE11(v394) = BYTE3(v24);
          BYTE12(v394) = BYTE4(v24);
          BYTE13(v394) = BYTE5(v24);
          if (BYTE6(v24) < v146)
          {
            goto LABEL_374;
          }

          *&v397 = v146;
          *(&v397 + 1) = BYTE6(v24);
          v398 = &v394;
          v399 = &v394 + BYTE6(v24);
          sub_1AE4A5694();
          v150 = v149;
          sub_1AE4A65CC(v149);
          if (sub_1AE4AC038(v150) == 6)
          {
            goto LABEL_420;
          }

          if (!v398)
          {
            goto LABEL_414;
          }
        }
      }

      sub_1AE4BA998(v377, v378, v376);

      v376 = 1;
      v377 = v32;
      v378 = v33;
LABEL_187:
      if ((sub_1AE4B8C4C(v37, v36, v35 & 1, 1684632949, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_233;
      }

      v175 = *(v32 + 72);
      v176 = (*(v32 + 64))(v32, v33);
      v42 = v176;
      v177 = *(v32 + 16);
      v24 = *(v32 + 24);
      v178 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        if (v178 != 2)
        {
          *(&v394 + 6) = 0;
          *&v394 = 0;
          if (v176 > 0)
          {
            goto LABEL_349;
          }

          v397 = v176;
          v398 = &v394;
          v399 = &v394;
          sub_1AE4A5694();
          v199 = v198;
          sub_1AE4A65CC(v198);
          if (sub_1AE4AC038(v199) == 6)
          {
            goto LABEL_420;
          }

          v181 = v398;
          if (!v398)
          {
            goto LABEL_407;
          }

          goto LABEL_217;
        }

        v183 = *(v177 + 16);
        v182 = *(v177 + 24);
        v184 = sub_1AE4EA990();
        if (v184)
        {
          v37 = v184;
          v185 = sub_1AE4EA9B0();
          if (__OFSUB__(v183, v185))
          {
            goto LABEL_363;
          }

          v186 = v183 - v185 + v37;
        }

        else
        {
          v186 = 0;
        }

        v55 = __OFSUB__(v182, v183);
        v201 = v182 - v183;
        v37 = v383;
        if (v55)
        {
          goto LABEL_350;
        }

        v202 = sub_1AE4EA9A0();
        if (v202 >= v201)
        {
          v203 = v201;
        }

        else
        {
          v203 = v202;
        }

        if (v186)
        {
          v204 = v203;
        }

        else
        {
          v204 = 0;
        }

        if (v204 < v42)
        {
          goto LABEL_356;
        }

        v205 = (v203 + v186);
        if (!v186)
        {
          v205 = 0;
        }

        *&v397 = v42;
        *(&v397 + 1) = v204;
        v398 = v186;
        v399 = v205;
        sub_1AE4A5694();
        v207 = v206;
        sub_1AE4A65CC(v206);
        LOBYTE(v35) = v381;
        v36 = v382;
        if (sub_1AE4AC038(v207) == 6)
        {
          goto LABEL_420;
        }

        v197 = v398;
        if (!v398)
        {
          goto LABEL_408;
        }

LABEL_231:
        v200 = (v397 + v197);
        goto LABEL_232;
      }

      if (v178)
      {
        v187 = v177;
        v188 = v177 >> 32;
        v189 = v188 - v187;
        if (v188 < v187)
        {
          goto LABEL_347;
        }

        v37 = sub_1AE4EA990();
        if (v37)
        {
          v190 = sub_1AE4EA9B0();
          if (__OFSUB__(v187, v190))
          {
            goto LABEL_365;
          }

          v37 += v187 - v190;
        }

        v191 = sub_1AE4EA9A0();
        if (v191 >= v189)
        {
          v192 = v189;
        }

        else
        {
          v192 = v191;
        }

        if (v37)
        {
          v193 = v192;
        }

        else
        {
          v193 = 0;
        }

        if (v193 < v42)
        {
          goto LABEL_355;
        }

        v194 = (v192 + v37);
        if (!v37)
        {
          v194 = 0;
        }

        *&v397 = v42;
        *(&v397 + 1) = v193;
        v398 = v37;
        v399 = v194;
        sub_1AE4A5694();
        v196 = v195;
        sub_1AE4A65CC(v195);
        v36 = v382;
        v37 = v383;
        if (sub_1AE4AC038(v196) == 6)
        {
          goto LABEL_420;
        }

        v197 = v398;
        if (!v398)
        {
          goto LABEL_409;
        }

        goto LABEL_231;
      }

      *&v394 = *(v32 + 16);
      WORD4(v394) = v24;
      BYTE10(v394) = BYTE2(v24);
      BYTE11(v394) = BYTE3(v24);
      BYTE12(v394) = BYTE4(v24);
      BYTE13(v394) = BYTE5(v24);
      if (BYTE6(v24) < v176)
      {
        goto LABEL_348;
      }

      *&v397 = v176;
      *(&v397 + 1) = BYTE6(v24);
      v398 = &v394;
      v399 = &v394 + BYTE6(v24);
      sub_1AE4A5694();
      v180 = v179;
      sub_1AE4A65CC(v179);
      if (sub_1AE4AC038(v180) == 6)
      {
        goto LABEL_420;
      }

      v181 = v398;
      if (!v398)
      {
        goto LABEL_406;
      }

LABEL_217:
      v200 = (v181 + v397);
LABEL_232:
      v208 = v200[7];
      v209 = v200[6];
      v210 = v200[5];
      v211 = v200[4];
      v212 = v200[3];
      v213 = v200[2];
      v214 = v200[1];
      v215 = *v200;
      v353 = *(v200 + 1);
      v216 = v372;
      sub_1AE4EAAF0();
      v217 = v374;
      sub_1AE4B4558(v374, &qword_1EB5DD4B8, "R3");
      v369(v216, 0, 1, v370);
      sub_1AE4BA928(v216, v217);
LABEL_233:
      if ((sub_1AE4B8C4C(v37, v36, v35 & 1, 1919181921, 0xE400000000000000, 0) & 1) == 0)
      {
        goto LABEL_275;
      }

      v218 = *(v32 + 72);
      v219 = (*(v32 + 64))(v32, v33);
      v42 = v219;
      v220 = *(v32 + 16);
      v24 = *(v32 + 24);
      v221 = v24 >> 62;
      if ((v24 >> 62) > 1)
      {
        if (v221 != 2)
        {
          *(&v394 + 6) = 0;
          *&v394 = 0;
          if (v219 > 0)
          {
            goto LABEL_352;
          }

          v397 = v219;
          v398 = &v394;
          v399 = &v394;
          goto LABEL_258;
        }

        v223 = *(v220 + 16);
        v222 = *(v220 + 24);
        v224 = sub_1AE4EA990();
        if (v224)
        {
          v37 = v224;
          v225 = sub_1AE4EA9B0();
          if (__OFSUB__(v223, v225))
          {
            goto LABEL_364;
          }

          v226 = v223 - v225 + v37;
        }

        else
        {
          v226 = 0;
        }

        v55 = __OFSUB__(v222, v223);
        v243 = v222 - v223;
        v37 = v383;
        if (v55)
        {
          goto LABEL_354;
        }

        v244 = sub_1AE4EA9A0();
        if (v244 >= v243)
        {
          v245 = v243;
        }

        else
        {
          v245 = v244;
        }

        if (v226)
        {
          v246 = v245;
        }

        else
        {
          v246 = 0;
        }

        if (v246 < v42)
        {
          goto LABEL_358;
        }

        v247 = (v245 + v226);
        if (!v226)
        {
          v247 = 0;
        }

        *&v397 = v42;
        *(&v397 + 1) = v246;
        v398 = v226;
        v399 = v247;
        sub_1AE4A5694();
        v24 = v248;
        sub_1AE4A65CC(v248);
        v237 = v249;
        LOBYTE(v35) = v381;
        v36 = v382;
LABEL_272:
        v250 = sub_1AE4AC038(v24);
        if (v250 == 6)
        {
          goto LABEL_420;
        }

        sub_1AE4AD198(v250, v237, v397, *(&v397 + 1), &v391, &v394);
        v371 = 0;
        v242 = &v409;
        goto LABEL_274;
      }

      if (v221)
      {
        v227 = v220;
        v228 = v220 >> 32;
        v229 = v228 - v227;
        if (v228 < v227)
        {
          goto LABEL_353;
        }

        v37 = sub_1AE4EA990();
        if (v37)
        {
          v230 = sub_1AE4EA9B0();
          if (__OFSUB__(v227, v230))
          {
            goto LABEL_366;
          }

          v37 += v227 - v230;
        }

        v231 = sub_1AE4EA9A0();
        if (v231 >= v229)
        {
          v232 = v229;
        }

        else
        {
          v232 = v231;
        }

        if (v37)
        {
          v233 = v232;
        }

        else
        {
          v233 = 0;
        }

        if (v233 < v42)
        {
          goto LABEL_357;
        }

        v234 = (v232 + v37);
        if (!v37)
        {
          v234 = 0;
        }

        *&v397 = v42;
        *(&v397 + 1) = v233;
        v398 = v37;
        v399 = v234;
        sub_1AE4A5694();
        v24 = v235;
        sub_1AE4A65CC(v235);
        v237 = v236;
        v36 = v382;
        v37 = v383;
        goto LABEL_272;
      }

      *&v394 = *(v32 + 16);
      WORD4(v394) = v24;
      BYTE10(v394) = BYTE2(v24);
      BYTE11(v394) = BYTE3(v24);
      BYTE12(v394) = BYTE4(v24);
      BYTE13(v394) = BYTE5(v24);
      if (BYTE6(v24) < v219)
      {
        goto LABEL_351;
      }

      *&v397 = v219;
      *(&v397 + 1) = BYTE6(v24);
      v398 = &v394;
      v399 = &v394 + BYTE6(v24);
LABEL_258:
      sub_1AE4A5694();
      v24 = v238;
      sub_1AE4A65CC(v238);
      v240 = v239;
      v241 = sub_1AE4AC038(v24);
      if (v241 == 6)
      {
        goto LABEL_420;
      }

      sub_1AE4AD198(v241, v240, v397, *(&v397 + 1), &v391, &v385);
      v371 = 0;
      v242 = &v408;
LABEL_274:
      v373 = *(v242 - 32);
LABEL_275:
      if (sub_1AE4B8C4C(v37, v36, v35 & 1, 1919181168, 0xE400000000000000, 0))
      {
        break;
      }

      sub_1AE4A67B4(v37, v36, v35 & 1);
      sub_1AE4B87FC(&v403);
      v31 = v403;
      LODWORD(v35) = v404;
      v384 = v404;
      v32 = v405;
      v33 = v406;
      if (!v405)
      {
        goto LABEL_322;
      }
    }

    v251 = *(v32 + 72);
    v252 = (*(v32 + 64))(v32, v33);
    v42 = v252;
    v253 = *(v32 + 16);
    v37 = *(v32 + 24);
    v254 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v254 == 2)
      {
        v24 = *(v253 + 16);
        v255 = *(v253 + 24);
        v256 = sub_1AE4EA990();
        if (v256)
        {
          v257 = v256;
          v258 = sub_1AE4EA9B0();
          if (__OFSUB__(v24, v258))
          {
            goto LABEL_389;
          }

          v259 = v24 - v258 + v257;
        }

        else
        {
          v259 = 0;
        }

        v55 = __OFSUB__(v255, v24);
        v282 = v255 - v24;
        if (v55)
        {
          goto LABEL_386;
        }

        v283 = sub_1AE4EA9A0();
        if (v283 >= v282)
        {
          v284 = v282;
        }

        else
        {
          v284 = v283;
        }

        if (v259)
        {
          v285 = v284;
        }

        else
        {
          v285 = 0;
        }

        if (v285 < v42)
        {
          goto LABEL_388;
        }

        v286 = (v284 + v259);
        if (!v259)
        {
          v286 = 0;
        }

        *&v397 = v42;
        *(&v397 + 1) = v285;
        v398 = v259;
        v399 = v286;
        sub_1AE4A5694();
        v270 = v287;
        v272 = v383;
        sub_1AE4A65CC(v287);
        v274 = v288;
        v271 = v382;
        goto LABEL_316;
      }

      *(&v394 + 6) = 0;
      *&v394 = 0;
      if (v252 > 0)
      {
        goto LABEL_385;
      }

      v397 = v252;
      v398 = &v394;
      v399 = &v394;
LABEL_302:
      sub_1AE4A5694();
      v276 = v275;
      v277 = v383;
      sub_1AE4A65CC(v275);
      v279 = v278;
      v280 = sub_1AE4AC038(v276);
      if (v280 != 6)
      {
        sub_1AE4AD198(v280, v279, v397, *(&v397 + 1), &v391, &v385);
        sub_1AE4A67B4(v277, v36, v35 & 1);

        v281 = &v408;
        goto LABEL_318;
      }

LABEL_434:
      sub_1AE4C78AC();
      v309 = swift_allocError();
      *(v347 + 8) = 0;
      *(v347 + 16) = 0;
      *v347 = 0;
      *(v347 + 24) = 0x80;
      swift_willThrow();
      v385 = v309;
      v348 = v309;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v324 = *(&v397 + 1);
      v323 = v397;
      v325 = v398;
      v326 = v399;
      v394 = v397;
      v395 = v398;
      v396 = v399;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v327 = v35 & 1;
      goto LABEL_426;
    }

    if (!v254)
    {
      *&v394 = *(v32 + 16);
      WORD4(v394) = v37;
      BYTE10(v394) = BYTE2(v37);
      BYTE11(v394) = BYTE3(v37);
      BYTE12(v394) = BYTE4(v37);
      BYTE13(v394) = BYTE5(v37);
      if (BYTE6(v37) >= v252)
      {
        *&v397 = v252;
        *(&v397 + 1) = BYTE6(v37);
        v398 = &v394;
        v399 = &v394 + BYTE6(v37);
        goto LABEL_302;
      }

LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      *(&v394 + 6) = 0;
      v45 = &v409;
      *&v394 = 0;
      if (v42 > 0)
      {
        __break(1u);
      }

      else
      {
        if ((v42 & 0x8000000000000000) == 0)
        {
          v331 = &v394;
          *&v397 = &v394;
          *(&v397 + 1) = &v394;
          v333 = 1;
          v398 = 1;
          v335 = 64;
          LOBYTE(v399) = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v42 = swift_allocError();
          *v336 = &v394;
          goto LABEL_427;
        }

        __break(1u);
LABEL_394:
        *(&v394 + 6) = 0;
        v45 = &v409;
        *&v394 = 0;
        if (v42 <= 0)
        {
          if ((v42 & 0x8000000000000000) == 0)
          {
            *&v397 = &v394;
            *(&v397 + 1) = &v394;
            v398 = 1;
            LOBYTE(v399) = 64;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v312 = swift_allocError();
            *v346 = &v394;
            *(v346 + 8) = &v394;
            goto LABEL_421;
          }

          __break(1u);
LABEL_397:
          __break(1u);
LABEL_398:
          if (!v24)
          {
            __break(1u);
LABEL_400:
            __break(1u);
LABEL_401:
            if (!v24)
            {
              __break(1u);
LABEL_403:
              __break(1u);
LABEL_404:
              if (v24)
              {
                v351 = v24 + v42;
                *&v394 = v24 + v42;
                *(&v394 + 1) = v24 + v37;
                v395 = 1;
                v396 = 64;
                sub_1AE4C78AC();
                swift_willThrowTypedImpl();
                v312 = swift_allocError();
                *v352 = v351;
                *(v352 + 8) = v24 + v37;
                *(v352 + 16) = 1;
                *(v352 + 24) = 64;
                goto LABEL_424;
              }

              __break(1u);
LABEL_406:
              __break(1u);
LABEL_407:
              __break(1u);
LABEL_408:
              __break(1u);
LABEL_409:
              __break(1u);
            }
          }

          v349 = v24 + v42;
          *&v394 = v24 + v42;
          *(&v394 + 1) = v24 + v37;
          v395 = 1;
          v396 = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v42 = swift_allocError();
          *v350 = v349;
          *(v350 + 8) = v24 + v37;
          *(v350 + 16) = 1;
          *(v350 + 24) = 64;
          while (1)
          {
LABEL_432:
            v385 = v42;
            v339 = v42;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
            swift_dynamicCast();
            v340 = v397;
            v341 = v398;
            v342 = v399;
            v394 = v397;
            v395 = v398;
            v396 = v399;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();

            swift_allocError();
            *v343 = v340;
            *(v343 + 16) = v341;
            *(v343 + 24) = v342;
            swift_unexpectedError();
            __break(1u);
LABEL_433:
            v344 = v112 + v42;
            *&v394 = v112 + v42;
            *(&v394 + 1) = v113;
            v395 = 1;
            v396 = 64;
            v345 = v113;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v312 = swift_allocError();
            *v346 = v344;
            *(v346 + 8) = v345;
LABEL_421:
            *(v346 + 16) = 1;
            *(v346 + 24) = 64;
LABEL_424:
            v385 = v312;
            v314 = v312;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
            swift_dynamicCast();
            v315 = v397;
            v316 = v398;
            v317 = v399;
            v394 = v397;
            v395 = v398;
            v396 = v399;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();

            swift_allocError();
            *v318 = v315;
            *(v318 + 16) = v316;
            *(v318 + 24) = v317;
            swift_unexpectedError();
            __break(1u);
            v380 = v391;
            v319 = v392;
            v320 = v393;
            sub_1AE4C78AC();
            v309 = swift_allocError();
            *v321 = v380;
            *(v321 + 16) = v319;
            *(v321 + 24) = v320;
LABEL_425:
            v385 = v309;
            v322 = v309;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
            swift_dynamicCast();
            v324 = *(&v397 + 1);
            v323 = v397;
            v325 = v398;
            v326 = v399;
            v394 = v397;
            v395 = v398;
            v396 = v399;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v327 = v381 & 1;
LABEL_426:
            sub_1AE4A67B4(v383, v382, v327);

            sub_1AE4DB684(v323, v324, v325, v326);
            v328 = sub_1AE4EB140();
            __break(1u);
            v329 = v328;
            v331 = v330;
            v333 = v332;
            v335 = v334;
            sub_1AE4C78AC();
            v42 = swift_allocError();
            *v336 = v329;
LABEL_427:
            *(v336 + 8) = v331;
LABEL_431:
            *(v336 + 16) = v333;
            *(v336 + 24) = v335;
          }
        }
      }

      __break(1u);
LABEL_430:
      v337 = v45 + v42;
      *&v394 = v45 + v42;
      v333 = 1;
      *(&v394 + 1) = v41;
      v395 = 1;
      v335 = 64;
      v396 = 64;
      v338 = v41;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v42 = swift_allocError();
      *v336 = v337;
      *(v336 + 8) = v338;
      goto LABEL_431;
    }

    v260 = v253;
    v261 = v253 >> 32;
    v262 = v261 - v260;
    if (v261 < v260)
    {
      goto LABEL_384;
    }

    v263 = sub_1AE4EA990();
    if (v263)
    {
      v264 = sub_1AE4EA9B0();
      if (__OFSUB__(v260, v264))
      {
        goto LABEL_390;
      }

      v263 += v260 - v264;
    }

    v265 = sub_1AE4EA9A0();
    if (v265 >= v262)
    {
      v266 = v262;
    }

    else
    {
      v266 = v265;
    }

    if (v263)
    {
      v267 = v266;
    }

    else
    {
      v267 = 0;
    }

    if (v267 < v42)
    {
      goto LABEL_387;
    }

    v268 = (v266 + v263);
    if (!v263)
    {
      v268 = 0;
    }

    *&v397 = v42;
    *(&v397 + 1) = v267;
    v398 = v263;
    v399 = v268;
    sub_1AE4A5694();
    v270 = v269;
    v271 = v382;
    v272 = v383;
    sub_1AE4A65CC(v269);
    v274 = v273;
LABEL_316:
    v289 = sub_1AE4AC038(v270);
    if (v289 == 6)
    {
      goto LABEL_434;
    }

    sub_1AE4AD198(v289, v274, v397, *(&v397 + 1), &v391, &v394);
    sub_1AE4A67B4(v272, v271, v35 & 1);

    v281 = &v409;
LABEL_318:
    v362 = *(v281 - 32);
    sub_1AE4B87FC(&v403);
    v34 = 0;
    v290 = 0;
    v31 = v403;
    LODWORD(v35) = v404;
    v384 = v404;
    v32 = v405;
    v33 = v406;
  }

  while (v405);
LABEL_323:

  v293 = v361;
  v294 = v360;
  if (v290)
  {
    v292 = v367;
    v2 = v355;
    v29 = v374;
    v295 = v366;
    v296 = v375;
    goto LABEL_330;
  }

  v292 = v367;
  v29 = v374;
  v295 = v366;
  v296 = v375;
  if ((v371 ^ 1))
  {
    v2 = v355;
    goto LABEL_330;
  }

  v2 = v355;
  v297 = *(v355 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context);
  v298 = *(v297 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache);
  if (!v298)
  {
    goto LABEL_419;
  }

  v373 = *(v297 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide) + v362;

  sub_1AE4B441C(v29, v295, &qword_1EB5DD4B8, "R3");
LABEL_332:
  v299 = v295;
  v300 = v364;
  sub_1AE4BA928(v299, v364);
  v301 = v300 + v294[5];
  v302 = v378;
  *v301 = v377;
  *(v301 + 8) = v302;
  *(v301 + 16) = v376;
  v303 = v300 + v294[6];
  v304 = v380;
  *v303 = v296;
  *(v303 + 8) = v304;
  *(v303 + 16) = v379;
  v305 = v300 + v294[7];
  *v305 = v362;
  *(v305 + 8) = v290 & 1;
  *(v300 + v294[8]) = v373;
  *(v300 + v294[9]) = v298;
  (*(v363 + 56))(v300, 0, 1, v294);
  swift_beginAccess();
  sub_1AE4B06C8(v300, v2 + v293, &qword_1EB5DD4E8, &qword_1AE4EDB68);
  swift_endAccess();
  v306 = v2 + v293;
  v18 = v365;
  sub_1AE4B441C(v306, v365, &qword_1EB5DD4E8, &qword_1AE4EDB68);
  if (v358(v18, 1, v294) == 1)
  {
    goto LABEL_417;
  }

  sub_1AE4B4558(v29, &qword_1EB5DD4B8, "R3");
LABEL_334:
  result = sub_1AE4BA8A8(v18, v292, type metadata accessor for Image.Info);
  v308 = *MEMORY[0x1E69E9840];
  return result;
}

void _dyld_process_info_for_each_image(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v24 = a1;
    v4 = [v24 environment];
    v5 = [v4 rootPath];

    if (v5)
    {
      v6 = [v24 environment];
      v7 = [v6 rootPath];
      v5 = [v7 UTF8String];

      v25 = strlen(v5);
    }

    else
    {
      v25 = 0;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = [v24 images];
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v9)
    {
      v10 = *v27;
      do
      {
        v11 = 0;
        do
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v26 + 1) + 8 * v11);
          v34 = 0u;
          v33 = 0u;
          *__source = 0u;
          v31 = 0u;
          [v12 getFastPathData:&v31];
          if (v5 && BYTE8(v34) == 1)
          {
            strlcpy(__dst, v5, 0x400uLL);
            v13 = v25;
          }

          else
          {
            v13 = 0;
            __dst[0] = 0;
          }

          v14 = __source[0];
          v15 = &__source[1];
          if (__source[0])
          {
            goto LABEL_15;
          }

          if (BYTE10(v34) == 1)
          {
            v19 = [v12 filePath];
            v20 = v19;
            strlcat(__dst, [v19 UTF8String], 0x400uLL);
LABEL_21:

            v18 = __dst;
            goto LABEL_22;
          }

          v14 = v31;
          v15 = &v31 + 1;
          if (v31)
          {
LABEL_15:
            v16 = &(*v15)[v13];
            if ((v16 + 1) < 0x400)
            {
              v17 = (v16 + 1);
            }

            else
            {
              v17 = 1024;
            }

            v18 = __dst;
            strlcat(__dst, v14, v17);
          }

          else
          {
            v18 = "<bad_string>";
            if (BYTE9(v34) == 1)
            {
              v19 = [v12 installname];
              v21 = v19;
              strlcat(__dst, [v19 UTF8String], 0x400uLL);
              goto LABEL_21;
            }
          }

LABEL_22:
          v3[2](v3, v34, &v33, v18);
          ++v11;
        }

        while (v9 != v11);
        v22 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
        v9 = v22;
      }

      while (v22);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1AE4B81C8@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v10 = *(*a5 + 33);
  v11 = qword_1AE4ED448[v10];
  v12 = a5[3];
  if ((v11 * v12) >> 64 == (v11 * v12) >> 63)
  {
    v17 = result;
    result = sub_1AE4A67C4(*(*a5 + 33), v11 * v12, result, a2, a3, a4);
    if (v7)
    {
      *a6 = result;
      *(a6 + 8) = v18;
      *(a6 + 16) = v19;
      *(a6 + 24) = v20;
      return result;
    }

    v22 = a5[2];
    v21 = a5[3];
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (!v23)
    {
      if ((v11 * v24) >> 64 == (v11 * v24) >> 63)
      {
        v25 = result;
        result = sub_1AE4A67C4(v10, v11 * v24, v17, a2, a3, a4);
        *a7 = v25;
        a7[1] = result;
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1AE4B82C4(uint64_t *a1)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v41 - v5;
  v7 = sub_1AE4EAB10();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Image.Info(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - v19;
  v21 = OBJC_IVAR____DYImage_impl;
  if (!*(v1 + OBJC_IVAR____DYImage_impl))
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1AE4B55F8(v20);

  v22 = &v20[*(v10 + 24)];
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = v22[16];
  sub_1AE4BA890(*v22, v24, v22[16]);
  result = sub_1AE4BA56C(v20);
  v26 = v44;
  if (v25 != 255)
  {
    if (v25)
    {
      result = sub_1AE4BA998(v23, v24, v25);
      *(v26 + 57) = 1;
    }

    else
    {
      if (!v23)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      *v44 = v23;
      v26[1] = v24 - v23;
    }
  }

  if (!*(v2 + v21))
  {
    goto LABEL_23;
  }

  v27 = *(v2 + v21);

  sub_1AE4B55F8(v17);

  v28 = &v17[*(v10 + 20)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v31 = v28[16];
  sub_1AE4BA890(*v28, v30, v28[16]);
  result = sub_1AE4BA56C(v17);
  if (v31 != 255)
  {
    if (v31)
    {
      result = sub_1AE4BA998(v29, v30, v31);
      *(v26 + 58) = 1;
    }

    else
    {
      if (!v29)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v26[2] = v29;
      v26[3] = v30 - v29;
    }
  }

  if (!*(v2 + v21))
  {
    goto LABEL_24;
  }

  v32 = *(v2 + v21);

  sub_1AE4B55F8(v14);

  sub_1AE4BA820(v14, v6);
  sub_1AE4BA56C(v14);
  v34 = v42;
  v33 = v43;
  if ((*(v42 + 48))(v6, 1, v43) == 1)
  {
    result = sub_1AE4B4558(v6, &qword_1EB5DD4B8, "R3");
  }

  else
  {
    v35 = v41;
    (*(v34 + 32))(v41, v6, v33);
    v26[4] = sub_1AE4EAB00();
    v26[5] = v36;
    result = (*(v34 + 8))(v35, v33);
  }

  if (!*(v2 + v21))
  {
    goto LABEL_25;
  }

  v37 = *(v2 + v21);

  v38 = sub_1AE4BA6DC();

  v26[6] = v38;
  if (!*(v2 + v21))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = *(v2 + v21);

  v40 = sub_1AE4BA5C8();

  if (v40)
  {
    result = sub_1AE4B4990(v40);
    *(v26 + 56) = 1;
  }

  return result;
}

uint64_t sub_1AE4B86B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1AE4B87FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = 0;
  v4 = 0;
  result = 0;
  v6 = 0;
  v39[4] = *MEMORY[0x1E69E9840];
  v8 = v1[2];
  v7 = v1[3];
  if (v7 < v8)
  {
    v9 = *v1;
    v10 = v1[1];
    MEMORY[0x1EEE9AC00](0);
    v36[2] = v1;
    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    v13 = v12 >> 62;
    v38 = v14;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        memset(v39, 0, 14);
        if (v10 > 0)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v27 = v10;
        v28 = *(v9 + 33);
        v29 = qword_1AE4ED448[v28];
        if ((v29 * v7) >> 64 != (v29 * v7) >> 63)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v3 = sub_1AE4A67C4(v28, v29 * v7, v27, 0, v39, v39);
        v30 = v7 + v8;
        if (__OFADD__(v7, v8))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v19 = v29 * v30;
        if ((v29 * v30) >> 64 != (v29 * v30) >> 63)
        {
          goto LABEL_31;
        }

        v20 = v28;
        v21 = v39;
        v22 = v27;
        v23 = 0;
LABEL_18:
        v6 = sub_1AE4A67C4(v20, v19, v22, v23, v39, v21);
        goto LABEL_19;
      }

      v24 = *(v11 + 16);
      v25 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        v39[0] = v11;
        LOWORD(v39[1]) = v12;
        BYTE2(v39[1]) = BYTE2(v12);
        BYTE3(v39[1]) = BYTE3(v12);
        BYTE4(v39[1]) = BYTE4(v12);
        v15 = BYTE6(v12);
        BYTE5(v39[1]) = BYTE5(v12);
        v37 = v10;
        if (BYTE6(v12) < v10)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v16 = *(v9 + 33);
        v17 = qword_1AE4ED448[v16];
        if ((v17 * v7) >> 64 != (v17 * v7) >> 63)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v3 = sub_1AE4A67C4(v16, v17 * v7, v37, v15, v39, v39 + v15);
        v18 = v7 + v8;
        if (__OFADD__(v7, v8))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v19 = v17 * v18;
        if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
        }

        v20 = v16;
        v21 = v39 + v15;
        v22 = v37;
        v23 = v15;
        goto LABEL_18;
      }

      v24 = v11;
      v25 = v11 >> 32;
      if (v11 >> 32 < v11)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    v3 = sub_1AE4AD03C(v24, v25, v12 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE4B87DC, v36, v10);
    v6 = v26;
LABEL_19:

    v31 = v1[3];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      v1[3] = v33;
      v34 = *v1;
      result = swift_retain_n();
      v4 = 1;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = result;
  a1[4] = v6;
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4B8C4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a6)
    {
      v10 = a2 == a5;
LABEL_55:
      v62 = *MEMORY[0x1E69E9840];
      return v10;
    }

    v11 = a4;
    v12 = a5;
    v13 = a1;
    v14 = a2;
  }

  else
  {
    v11 = a1;
    v12 = a2;
    v13 = a4;
    v14 = a5;
    if ((a6 & 1) == 0)
    {
      if (a1 == a4 && a2 == a5)
      {
        v10 = 1;
        goto LABEL_55;
      }

      goto LABEL_26;
    }
  }

  *v70 = v11;
  v71 = v12;
  v16 = v13[8];
  v15 = v13[9];

  sub_1AE4A63DC(a1, a2, a3 & 1);
  sub_1AE4A63DC(a4, a5, a6 & 1);
  v19 = v16(v13, v14);
  v20 = v19;
  v21 = v13[2];
  v22 = v13[3];
  v23 = v22 >> 62;
  if ((v22 >> 62) <= 1)
  {
    if (!v23)
    {
      *&v72 = v13[2];
      WORD4(v72) = v22;
      BYTE10(v72) = BYTE2(v22);
      BYTE11(v72) = BYTE3(v22);
      BYTE12(v72) = BYTE4(v22);
      BYTE13(v72) = BYTE5(v22);
      v24 = v71;
      if (BYTE6(v22) >= v19)
      {
        *&v75 = v19;
        *(&v75 + 1) = BYTE6(v22);
        v76 = &v72;
        v77 = &v72 + BYTE6(v22);
        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_57;
    }

    v37 = v21;
    v38 = v21 >> 32;
    v39 = v38 - v37;
    v28 = v71;
    if (v38 < v37)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v27 = sub_1AE4EA990();
    if (v27)
    {
      v40 = sub_1AE4EA9B0();
      if (__OFSUB__(v37, v40))
      {
        goto LABEL_62;
      }

      v27 += v37 - v40;
    }

    v41 = sub_1AE4EA9A0();
    if (v41 >= v39)
    {
      v33 = v39;
    }

    else
    {
      v33 = v41;
    }

    if (v27)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    if (v34 < v20)
    {
      goto LABEL_60;
    }

LABEL_40:
    v42 = (v33 + v27);
    if (!v27)
    {
      v42 = 0;
    }

    *&v75 = v20;
    *(&v75 + 1) = v34;
    v76 = v27;
    v77 = v42;
    sub_1AE4A5694();
    v44 = v43;
    sub_1AE4A65CC(v43);
    v46 = v45;
    if (sub_1AE4AC038(v44) != 6)
    {

      if (v76)
      {
        v47 = v76 + v75;
        v48 = *v70;
        v49 = v28;
        v50 = DWORD2(v75) - v75;
      }

      else
      {
        v48 = *v70;
        v49 = v28;
        v47 = 0;
        v50 = 0;
      }

      v10 = sub_1AE4A66EC(v48, v49, v47, v50, v46);

      goto LABEL_54;
    }

    goto LABEL_63;
  }

  if (v23 != 2)
  {
    *(&v72 + 6) = 0;
    *&v72 = 0;
    v24 = v71;
    if (v19 <= 0)
    {
      v75 = v19;
      v76 = &v72;
      v77 = &v72;
LABEL_47:
      sub_1AE4A5694();
      v52 = v51;
      sub_1AE4A65CC(v51);
      v54 = v53;
      if (sub_1AE4AC038(v52) != 6)
      {
        v55 = v76;
        if (v76)
        {
          v56 = v75;
          v57 = DWORD2(v75) - v75;

          v58 = v55 + v56;
          v59 = *v70;
          v60 = v24;
          v61 = v57;
        }

        else
        {

          v59 = *v70;
          v60 = v24;
          v58 = 0;
          v61 = 0;
        }

        v10 = sub_1AE4A66EC(v59, v60, v58, v61, v54);

LABEL_54:
        swift_bridgeObjectRelease_n();
        goto LABEL_55;
      }

LABEL_63:
      sub_1AE4C78AC();
      v63 = swift_allocError();
      *(v64 + 8) = 0;
      *(v64 + 16) = 0;
      *v64 = 0;
      *(v64 + 24) = 0x80;
      swift_willThrow();
      v65 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v66 = v75;
      v67 = v76;
      v68 = v77;
      v72 = v75;
      v73 = v76;
      v74 = v77;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      swift_allocError();
      *v69 = v66;
      *(v69 + 16) = v67;
      *(v69 + 24) = v68;
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    goto LABEL_58;
  }

  v25 = *(v21 + 16);
  v26 = *(v21 + 24);
  v27 = sub_1AE4EA990();
  v28 = v71;
  if (v27)
  {
    v29 = sub_1AE4EA9B0();
    if (__OFSUB__(v25, v29))
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
    }

    v27 += v25 - v29;
  }

  v30 = __OFSUB__(v26, v25);
  v31 = v26 - v25;
  if (v30)
  {
    goto LABEL_59;
  }

  v32 = sub_1AE4EA9A0();
  if (v32 >= v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  if (v27)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (v34 >= v20)
  {
    goto LABEL_40;
  }

  __break(1u);
LABEL_26:
  v35 = *MEMORY[0x1E69E9840];

  return sub_1AE4EB190();
}

uint64_t sub_1AE4B921C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    *(&v75 + 6) = 0;
    *&v75 = 0;
    if (v7 > 0)
    {
      __break(1u);
LABEL_86:
      v56 = v4 + v7;
      goto LABEL_87;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      *&v77 = &v75;
      *(&v77 + 1) = &v75;
      *&v78 = 1;
      BYTE8(v78) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v52 = swift_allocError();
      *v63 = &v75;
      *(v63 + 8) = &v75;
      *(v63 + 16) = 1;
      *(v63 + 24) = 64;
      goto LABEL_88;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    if (!v6)
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      if (!v6)
      {
        __break(1u);
      }
    }

    while (1)
    {
      v56 = &v6[v7];
      v6 += v3;
LABEL_87:
      *&v75 = v56;
      *(&v75 + 1) = v6;
      *&v76 = 1;
      BYTE8(v76) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v52 = swift_allocError();
      *v57 = v56;
      *(v57 + 8) = v6;
      *(v57 + 16) = 1;
      *(v57 + 24) = 64;
LABEL_88:
      v73 = v52;
      v58 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v59 = v77;
      v60 = v78;
      v61 = BYTE8(v78);
      v75 = v77;
      *&v76 = v78;
      BYTE8(v76) = BYTE8(v78);
      v6 = sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      swift_allocError();
      *v62 = v59;
      *(v62 + 16) = v60;
      *(v62 + 24) = v61;
      swift_unexpectedError();
      __break(1u);
    }
  }

  v8 = a3;
  result = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v74 = MEMORY[0x1E69E7CC0];
    sub_1AE4EB0F0();
    v10 = 0;
    v64 = v8;
    while (1)
    {
      if (v8 == v10)
      {
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
        goto LABEL_69;
      }

      v11 = sub_1AE4B9974(v10, a1, a2, v8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 64))();
      v7 = v13;
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v3 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v3 != 2)
        {
          goto LABEL_71;
        }

        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        v6 = sub_1AE4EA990();
        if (v6)
        {
          v19 = sub_1AE4EA9B0();
          if (__OFSUB__(v18, v19))
          {
            goto LABEL_67;
          }

          v6 += v18 - v19;
        }

        v20 = __OFSUB__(v17, v18);
        v21 = v17 - v18;
        if (v20)
        {
          goto LABEL_59;
        }

        v22 = sub_1AE4EA9A0();
        if (v22 >= v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        v24 = &v6[v23];
        if (v6)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v3 = v25 - v6;
        if (v6)
        {
          v4 = v3;
        }

        else
        {
          v4 = 0;
        }

        if (v4 < v7)
        {
          goto LABEL_62;
        }

        if (v7 < 0)
        {
          goto LABEL_63;
        }

        if (v4 <= v7)
        {
          goto LABEL_78;
        }

        v8 = v64;
        if (!v6)
        {
          goto LABEL_77;
        }

        if (v3 <= v7)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (!v3)
        {
          v67 = *(v11 + 16);
          v68 = v15;
          v69 = BYTE2(v15);
          v3 = HIDWORD(v15);
          v70 = BYTE3(v15);
          v4 = (v15 >> 40);
          v71 = BYTE4(v15);
          v72 = BYTE5(v15);
          if (BYTE6(v15) < v13)
          {
            goto LABEL_58;
          }

          if (v13 < 0)
          {
            goto LABEL_60;
          }

          v4 = &v67;
          v6 = &v67 + BYTE6(v15);
          if (BYTE6(v15) <= v13)
          {
            goto LABEL_86;
          }

          v16 = *(&v67 + v13);
          *&v77 = v13 + 1;
          *(&v77 + 1) = BYTE6(v15);
          *&v78 = &v67;
          *(&v78 + 1) = &v67 + BYTE6(v15);
          goto LABEL_50;
        }

        v26 = v14;
        v27 = v14 >> 32;
        v28 = v27 - v26;
        if (v27 < v26)
        {
          goto LABEL_57;
        }

        v6 = sub_1AE4EA990();
        if (v6)
        {
          v29 = sub_1AE4EA9B0();
          if (__OFSUB__(v26, v29))
          {
            goto LABEL_68;
          }

          v6 += v26 - v29;
        }

        v30 = sub_1AE4EA9A0();
        if (v30 >= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = v30;
        }

        v24 = &v6[v31];
        if (v6)
        {
          v32 = v24;
        }

        else
        {
          v32 = 0;
        }

        v3 = v32 - v6;
        if (v6)
        {
          v4 = v3;
        }

        else
        {
          v4 = 0;
        }

        if (v4 < v7)
        {
          goto LABEL_61;
        }

        if (v7 < 0)
        {
          goto LABEL_64;
        }

        if (v4 <= v7)
        {
          goto LABEL_75;
        }

        v8 = v64;
        if (!v6)
        {
          goto LABEL_74;
        }

        if (v3 <= v7)
        {
          goto LABEL_65;
        }
      }

      v16 = v6[v7];
      *&v77 = v7 + 1;
      *(&v77 + 1) = v3;
      *&v78 = v6;
      *(&v78 + 1) = v24;
LABEL_50:
      sub_1AE4A65CC(v16);
      v7 = v36;
      if (v5)
      {
        v49 = v33;
        v50 = v34;
        v51 = v35;
        sub_1AE4C78AC();
        v52 = swift_allocError();
        *v53 = v7;
        *(v53 + 8) = v49;
        *(v53 + 16) = v50;
        *(v53 + 24) = v51;
        goto LABEL_88;
      }

      v37 = v16 >> 4;
      if (v16 >> 4 != 13)
      {
        if (v37 <= 0xA && ((1 << v37) & 0x472) != 0)
        {
          *&v76 = 0;
          v75 = 6uLL;
          BYTE8(v76) = 0x80;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v52 = swift_allocError();
          *(v54 + 8) = 0;
          *(v54 + 16) = 0;
          *v54 = 6;
          *(v54 + 24) = 0x80;
        }

        else
        {
          sub_1AE4C78AC();
          v52 = swift_allocError();
          *(v55 + 8) = 0;
          *(v55 + 16) = 0;
          *v55 = 0;
          *(v55 + 24) = 0x80;
          swift_willThrow();
        }

        goto LABEL_88;
      }

      v75 = v77;
      v76 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();
      v38 = v73;
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_70;
      }

      v40 = Strong;
      ++v10;
      v41 = type metadata accessor for Image.Impl(0);
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      v6 = swift_allocObject();
      v44 = OBJC_IVAR____TtCV4Dyld5Image4Impl__info;
      v45 = type metadata accessor for Image.Info(0);
      (*(*(v45 - 8) + 56))(&v6[v44], 1, 1, v45);
      v46 = &v6[OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist];
      *v46 = v11;
      v46[1] = v38;
      v46[2] = v7;
      *&v6[OBJC_IVAR____TtCV4Dyld5Image4Impl_context] = v40;
      sub_1AE4EB0D0();
      v47 = *(v74 + 16);
      sub_1AE4EB100();
      sub_1AE4EB110();
      sub_1AE4EB0E0();
      if (v8 == v10)
      {
        result = v74;
        break;
      }
    }
  }

  v48 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1AE4B98C4@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, unint64_t *a7@<X8>, uint64_t a8)
{
  v10 = qword_1AE4ED448[*(a5 + 33)];
  if ((v10 * a6) >> 64 == (v10 * a6) >> 63)
  {
    result = sub_1AE4A67C4(*(a5 + 33), v10 * a6, result, a2, a3, a4);
    if (v8)
    {
      *a8 = result;
      *(a8 + 8) = v11;
      *(a8 + 16) = v12;
      *(a8 + 24) = v13;
    }

    else
    {
      *a7 = result;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1AE4B9944@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v7 = v6[3];
  v8 = v6[4];
  return sub_1AE4B98C4(a1, a2, a3, a4, v6[2], v6[5], a6, a5);
}

uint64_t sub_1AE4B9974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[4] = *MEMORY[0x1E69E9840];
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a1;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v30, 0, 14);
      if (a3 <= 0)
      {
        v20 = *(a2 + 33);
        v21 = qword_1AE4ED448[v20];
        v22 = v21 * a1;
        if ((v21 * a1) >> 64 == (v21 * a1) >> 63)
        {

          v13 = v20;
          v14 = v30;
          v15 = v22;
          v16 = a3;
          v17 = 0;
          goto LABEL_13;
        }

LABEL_19:
        __break(1u);
      }

      goto LABEL_17;
    }

    v18 = *(v6 + 16);
    v19 = *(v6 + 24);
  }

  else
  {
    if (!v8)
    {
      v30[0] = *(a2 + 16);
      LOWORD(v30[1]) = v7;
      BYTE2(v30[1]) = BYTE2(v7);
      BYTE3(v30[1]) = BYTE3(v7);
      BYTE4(v30[1]) = BYTE4(v7);
      v9 = BYTE6(v7);
      BYTE5(v30[1]) = BYTE5(v7);
      if (BYTE6(v7) >= a3)
      {
        v10 = *(a2 + 33);
        v11 = qword_1AE4ED448[v10];
        v12 = v11 * a1;
        if ((v11 * a1) >> 64 == (v11 * a1) >> 63)
        {

          v13 = v10;
          v14 = v30 + v9;
          v15 = v12;
          v16 = a3;
          v17 = v9;
LABEL_13:
          sub_1AE4A67C4(v13, v15, v16, v17, v30, v14);
          goto LABEL_14;
        }

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_16;
    }

    v18 = v6;
    v19 = v6 >> 32;
    if (v6 >> 32 < v6)
    {
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  sub_1AE4AE738(v18, v19, v7 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE4B9944, v25, a3);
LABEL_14:
  v23 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1AE4B9C8C()
{
  v6 = sub_1AE4AC6E0(1936158057, 0xE400000000000000, 0, v1[6], v1[7], v1[8]);
  if (!v6)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = v6;
  v8 = sub_1AE4B9FBC(v6);
  v10 = v9;
  v12 = v11;

  v0 = sub_1AE4BAEF4(v8, v10, v12, v1);

  v13 = v1[9];
  v2 = *(v13 + 56);
  if (!v2)
  {
    return v0;
  }

  v14 = *(v13 + 56);

  v15 = sub_1AE4B4BA0();
  if (!v15)
  {
LABEL_12:

    return v0;
  }

  v3 = v15;
  v16 = sub_1AE4AC6E0(1936158057, 0xE400000000000000, 0, v15[2], v15[3], v15[4]);
  if (!v16)
  {
    goto LABEL_15;
  }

  v4 = sub_1AE4B9FBC(v16);
  v5 = v17;
  v19 = v18;

  v20 = sub_1AE4B921C(v4, v5, v19);

  v21 = sub_1AE4AC6E0(1836345698, 0xE400000000000000, 0, v2[2], v2[3], v2[4]);
  if (v21)
  {
    v23 = sub_1AE4AEC7C(v21, v22);
    v25 = v24;

    v26 = sub_1AE4BBE84(v20, v23, v25);
    v27 = *(v26 + 16);
    if (v27)
    {
      v43 = MEMORY[0x1E69E7CC0];
      sub_1AE4EB0F0();
      v28 = 32;
      do
      {
        v29 = *(v26 + v28);

        sub_1AE4EB0D0();
        v30 = *(v43 + 16);
        sub_1AE4EB100();
        sub_1AE4EB110();
        sub_1AE4EB0E0();
        v28 += 16;
        --v27;
      }

      while (v27);

      v33 = v43;
    }

    else
    {

      v33 = MEMORY[0x1E69E7CC0];
    }

    v34 = sub_1AE4BC400(v0, v33, v31, v32);

    v0 = v34;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  v36 = v7;
  sub_1AE4C78AC();
  swift_allocError();
  *v37 = v2;
  *(v37 + 8) = v3;
  *(v37 + 16) = v0;
  *(v37 + 24) = v36;
  swift_unexpectedError();
  __break(1u);
  v39 = v38;
  v41 = v40;
  sub_1AE4C78AC();
  swift_allocError();
  *v42 = v5;
  *(v42 + 8) = v4;
  *(v42 + 16) = v39;
  *(v42 + 24) = v41;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4B9FBC(uint64_t a1)
{
  v2 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 72);
  v4 = (*(a1 + 64))();
  v5 = v4;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v41[0] = *(v2 + 16);
      LOWORD(v41[1]) = v7;
      BYTE2(v41[1]) = BYTE2(v7);
      BYTE3(v41[1]) = BYTE3(v7);
      BYTE4(v41[1]) = BYTE4(v7);
      BYTE5(v41[1]) = BYTE5(v7);
      if (BYTE6(v7) >= v4)
      {
        *&v44 = v4;
        *(&v44 + 1) = BYTE6(v7);
        *&v45 = v41;
        *(&v45 + 1) = v41 + BYTE6(v7);
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_44;
    }

    goto LABEL_18;
  }

  if (v8 == 2)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = sub_1AE4EA990();
    if (v11)
    {
      v12 = sub_1AE4EA9B0();
      if (__OFSUB__(v9, v12))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (v13)
    {
      goto LABEL_46;
    }

    v15 = sub_1AE4EA9A0();
    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    if (v11)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v6 >= v5)
    {
LABEL_29:
      v22 = v16 + v11;
      if (!v11)
      {
        v22 = 0;
      }

      *&v44 = v5;
      *(&v44 + 1) = v6;
      *&v45 = v11;
      *(&v45 + 1) = v22;
      goto LABEL_34;
    }

    __break(1u);
LABEL_18:
    v17 = v6;
    v18 = v6 >> 32;
    v19 = v18 - v17;
    if (v18 < v17)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v11 = sub_1AE4EA990();
    if (v11)
    {
      v20 = sub_1AE4EA9B0();
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_49;
      }

      v11 += v17 - v20;
    }

    v21 = sub_1AE4EA9A0();
    if (v21 >= v19)
    {
      v16 = v19;
    }

    else
    {
      v16 = v21;
    }

    if (v11)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v6 < v5)
    {
      goto LABEL_47;
    }

    goto LABEL_29;
  }

  memset(v41, 0, 14);
  if (v4 > 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v44 = v4;
  *&v45 = v41;
  *(&v45 + 1) = v41;
LABEL_34:
  sub_1AE4A5694();
  v27 = v23;
  if (v1)
  {
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1AE4C78AC();
    v31 = swift_allocError();
    *v32 = v27;
    *(v32 + 8) = v28;
    *(v32 + 16) = v29;
    *(v32 + 24) = v30;
  }

  else
  {
    sub_1AE4A65CC(v23);
    v33 = sub_1AE4AC038(v27);
    if (v33 == 6)
    {
      sub_1AE4C78AC();
      v34 = swift_allocError();
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;
      *v35 = 0;
      *(v35 + 24) = 0x80;
      swift_willThrow();
      v31 = v34;
    }

    else
    {
      if (v33 >= 5)
      {
        v42 = v44;
        v43 = v45;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
        sub_1AE4EB230();
        goto LABEL_41;
      }

      *&v43 = 0;
      v42 = 4uLL;
      BYTE8(v43) = 0x80;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v31 = swift_allocError();
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      *v36 = 4;
      *(v36 + 24) = 0x80;
    }
  }

  v41[2] = v31;
  v37 = v31;
  v38 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v2 = v44;
  v42 = v44;
  *&v43 = v45;
  BYTE8(v43) = BYTE8(v45);
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();

LABEL_41:
  v39 = *MEMORY[0x1E69E9840];
  return v2;
}

CFTypeRef _dyld_process_info_create(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v15 = 0;
  v5 = [[_DYProcess alloc] initWithTask:a1 queue:0 error:&v15];
  v6 = v15;
  if (!v6)
  {
    v14 = 0;
    v10 = [(_DYProcess *)v5 getCurrentSnapshotAndReturnError:&v14];
    v11 = v14;
    v7 = v11;
    if (v11)
    {
      KernReturn = extractKernReturn(v11);
      if (a3)
      {
        v9 = 0;
        *a3 = KernReturn;
LABEL_13:

        goto LABEL_14;
      }
    }

    else if (![v10 timestamp] || objc_msgSend(v10, "timestamp") != a2)
    {
      v9 = CFRetain(v10);
      goto LABEL_13;
    }

    v9 = 0;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = extractKernReturn(v6);
  v9 = 0;
  if (a3)
  {
    *a3 = v8;
  }

LABEL_14:

  return v9;
}

void *sub_1AE4BA544()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1F240E408;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1AE4BA56C(uint64_t a1)
{
  v2 = type metadata accessor for Image.Info(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE4BA5C8()
{
  Strong = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist), *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8), *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 16));
  if (Strong)
  {
    sub_1AE4A6A00(Strong);

    return 0;
  }

  v5 = *(*(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context) + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache);
  if (v5)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  v7 = Strong;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_1AE4C78AC();
  swift_allocError();
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4BA6DC()
{
  v1 = *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist);
  v2 = *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8);
  v3 = *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 16);
  v4 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, v1, v2, v3);
  if (v4)
  {
    v5 = sub_1AE4A6A00(v4);

    return v5;
  }

  v6 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v1, v2, v3);
  if (v6)
  {
    v10 = sub_1AE4A6A00(v6);

    return *(*(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context) + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide) + v10;
  }

  __break(1u);
  v12 = v7;
  v13 = v8;
  v14 = v9;
  sub_1AE4C78AC();
  swift_allocError();
  *v15 = v1;
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4BA820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE4BA890(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AE4BB78C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1AE4BA8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AE4BA928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE4BA998(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AE4BB6EC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1AE4BA9B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4BAA7C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  sub_1AE4A41E8(v3, v4);
  v5 = v0[6];

  v6 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4BAAEC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  sub_1AE4B4558(v0 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath, &qword_1EB5DD520, &qword_1AE4EDB98);
  v2 = *(v0 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4BAB84()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1AE4BABBC()
{
  sub_1AE4A41E8(v0[2], v0[3]);
  v1 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm()
{
  sub_1AE4A41E8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void dyld_shared_cache_for_each_file(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 filePaths];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v3[2](v3, [*(*(&v13 + 1) + 8 * v8++) UTF8String]);
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v9 = [v4 localSymbolPath];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      v3[2](v3, [v10 UTF8String]);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1AE4BADDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYSnapshot_impl);
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(v4 + OBJC_IVAR____DYSnapshot_impl + 8);
  v5 = v6[6];
  v9 = v6[7];
  v10 = v6[8];

  v11 = sub_1AE4AC6E0(a1, 0xE400000000000000, 0, v5, v9, v10);
  if (v11)
  {
    v5 = sub_1AE4A6A00(v11);

    if ((v5 & 0x8000000000000000) == 0)
    {
      return v5;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  v13 = a2;
  v14 = a3;
  v15 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v16 = v5;
  *(v16 + 8) = v13;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4BAEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = *MEMORY[0x1E69E9840];
  if (a3 < 0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    *(&v75 + 6) = 0;
    *&v75 = 0;
    if (v8 > 0)
    {
      __break(1u);
LABEL_84:
      v55 = (v7 + v8);
      goto LABEL_85;
    }

    if (v8 < 0)
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      if (v6)
      {
        goto LABEL_87;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      if (!v6)
      {
        __break(1u);
      }

      goto LABEL_87;
    }

    *&v77 = &v75;
    *(&v77 + 1) = &v75;
    *&v78 = 1;
    BYTE8(v78) = 64;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v51 = swift_allocError();
    *v62 = &v75;
    *(v62 + 8) = &v75;
    *(v62 + 16) = 1;
    *(v62 + 24) = 64;
    while (1)
    {
LABEL_86:
      v73 = v51;
      v57 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v58 = v77;
      v59 = v78;
      v60 = BYTE8(v78);
      v75 = v77;
      *&v76 = v78;
      BYTE8(v76) = BYTE8(v78);
      v6 = sub_1AE4C78AC();
      swift_willThrowTypedImpl();

      swift_allocError();
      *v61 = v58;
      *(v61 + 16) = v59;
      *(v61 + 24) = v60;
      swift_unexpectedError();
      __break(1u);
LABEL_87:
      v55 = &v6[v8];
      v6 += v4;
LABEL_85:
      *&v75 = v55;
      *(&v75 + 1) = v6;
      *&v76 = 1;
      BYTE8(v76) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v51 = swift_allocError();
      *v56 = v55;
      *(v56 + 8) = v6;
      *(v56 + 16) = 1;
      *(v56 + 24) = 64;
    }
  }

  v9 = a3;
  result = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v74 = MEMORY[0x1E69E7CC0];
    sub_1AE4EB0F0();
    v11 = 0;
    v7 = &v67;
    v63 = v9;
    while (1)
    {
      if (v9 == v11)
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
        goto LABEL_68;
      }

      v12 = sub_1AE4B9974(v11, a1, a2, v9);
      v13 = *(v12 + 72);
      v14 = (*(v12 + 64))();
      v8 = v14;
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v4 = v16 >> 62;
      if ((v16 >> 62) > 1)
      {
        break;
      }

      if (v4)
      {
        v7 = v15;
        v26 = v15 >> 32;
        v27 = v26 - v7;
        if (v26 < v7)
        {
          goto LABEL_57;
        }

        v6 = sub_1AE4EA990();
        if (v6)
        {
          v28 = sub_1AE4EA9B0();
          if (__OFSUB__(v7, v28))
          {
            goto LABEL_67;
          }

          v6 += v7 - v28;
        }

        v29 = sub_1AE4EA9A0();
        if (v29 >= v27)
        {
          v30 = v27;
        }

        else
        {
          v30 = v29;
        }

        v23 = &v6[v30];
        if (v6)
        {
          v31 = v23;
        }

        else
        {
          v31 = 0;
        }

        v4 = v31 - v6;
        if (v6)
        {
          v32 = v4;
        }

        else
        {
          v32 = 0;
        }

        if (v32 < v8)
        {
          goto LABEL_61;
        }

        if (v8 < 0)
        {
          goto LABEL_63;
        }

        if (v32 <= v8)
        {
          goto LABEL_73;
        }

        v9 = v63;
        if (!v6)
        {
          goto LABEL_72;
        }

        if (v4 <= v8)
        {
          goto LABEL_64;
        }

        goto LABEL_49;
      }

      v67 = *(v12 + 16);
      v68 = v16;
      v69 = BYTE2(v16);
      v4 = HIDWORD(v16);
      v70 = BYTE3(v16);
      v71 = BYTE4(v16);
      v72 = BYTE5(v16);
      if (BYTE6(v16) < v14)
      {
        goto LABEL_56;
      }

      if (v14 < 0)
      {
        goto LABEL_59;
      }

      v6 = &v67 + BYTE6(v16);
      if (BYTE6(v16) <= v14)
      {
        goto LABEL_84;
      }

      v17 = *(&v67 + v14);
      *&v77 = v14 + 1;
      *(&v77 + 1) = BYTE6(v16);
      *&v78 = &v67;
      *(&v78 + 1) = &v67 + BYTE6(v16);
LABEL_50:
      sub_1AE4A65CC(v17);
      v8 = v36;
      if (v5)
      {
        v48 = v33;
        v49 = v34;
        v50 = v35;
        sub_1AE4C78AC();
        v51 = swift_allocError();
        *v52 = v8;
        *(v52 + 8) = v48;
        *(v52 + 16) = v49;
        *(v52 + 24) = v50;
        goto LABEL_86;
      }

      v37 = v17 >> 4;
      if (v17 >> 4 != 13)
      {
        if (v37 <= 0xA && ((1 << v37) & 0x472) != 0)
        {
          *&v76 = 0;
          v75 = 6uLL;
          BYTE8(v76) = 0x80;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v51 = swift_allocError();
          *(v53 + 8) = 0;
          *(v53 + 16) = 0;
          *v53 = 6;
          *(v53 + 24) = 0x80;
        }

        else
        {
          sub_1AE4C78AC();
          v51 = swift_allocError();
          *(v54 + 8) = 0;
          *(v54 + 16) = 0;
          *v54 = 0;
          *(v54 + 24) = 0x80;
          swift_willThrow();
        }

        goto LABEL_86;
      }

      v75 = v77;
      v76 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();
      v38 = v73;
      ++v11;
      v39 = *(a4 + 72);
      v40 = type metadata accessor for Image.Impl(0);
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      v6 = swift_allocObject();
      v43 = OBJC_IVAR____TtCV4Dyld5Image4Impl__info;
      v44 = type metadata accessor for Image.Info(0);
      (*(*(v44 - 8) + 56))(&v6[v43], 1, 1, v44);
      v45 = &v6[OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist];
      *v45 = v12;
      v45[1] = v38;
      v45[2] = v8;
      *&v6[OBJC_IVAR____TtCV4Dyld5Image4Impl_context] = v39;

      sub_1AE4EB0D0();
      v46 = *(v74 + 16);
      sub_1AE4EB100();
      sub_1AE4EB110();
      sub_1AE4EB0E0();
      v7 = &v67;
      if (v9 == v11)
      {
        result = v74;
        goto LABEL_54;
      }
    }

    if (v4 != 2)
    {
      goto LABEL_69;
    }

    v18 = *(v15 + 16);
    v7 = *(v15 + 24);
    v6 = sub_1AE4EA990();
    if (v6)
    {
      v19 = sub_1AE4EA9B0();
      if (__OFSUB__(v18, v19))
      {
        goto LABEL_66;
      }

      v6 += v18 - v19;
    }

    v20 = __OFSUB__(v7, v18);
    v7 -= v18;
    if (v20)
    {
      goto LABEL_58;
    }

    v21 = sub_1AE4EA9A0();
    if (v21 >= v7)
    {
      v22 = v7;
    }

    else
    {
      v22 = v21;
    }

    v23 = &v6[v22];
    if (v6)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v4 = v24 - v6;
    if (v6)
    {
      v25 = v4;
    }

    else
    {
      v25 = 0;
    }

    if (v25 < v8)
    {
      goto LABEL_60;
    }

    if (v8 < 0)
    {
      goto LABEL_62;
    }

    if (v25 <= v8)
    {
      goto LABEL_76;
    }

    v9 = v63;
    if (!v6)
    {
      goto LABEL_75;
    }

    if (v4 <= v8)
    {
      goto LABEL_65;
    }

LABEL_49:
    v17 = v6[v8];
    *&v77 = v8 + 1;
    *(&v77 + 1) = v4;
    *&v78 = v6;
    *(&v78 + 1) = v23;
    goto LABEL_50;
  }

LABEL_54:
  v47 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AE4BB598()
{
  v1 = v0 + OBJC_IVAR____DYSnapshot_impl;
  v2 = *(v0 + OBJC_IVAR____DYSnapshot_impl);
  if (v2)
  {
    v3 = *(v1 + 8);
    sub_1AE4BD9A8(v2);
    v4 = sub_1AE4BD470();

    v5 = *(v4 + 16);
    if (v5)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1AE4EB0F0();
      v6 = 32;
      do
      {
        v7 = *(v4 + v6);
        v8 = objc_allocWithZone(_DYImage);

        v9 = [v8 initWithInternal_];
        v10 = *&v9[OBJC_IVAR____DYImage_impl];
        *&v9[OBJC_IVAR____DYImage_impl] = v7;

        sub_1AE4EB0D0();
        v11 = *(v12 + 16);
        sub_1AE4EB100();
        sub_1AE4EB110();
        sub_1AE4EB0E0();
        v6 += 8;
        --v5;
      }

      while (v5);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AE4BB6EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1AE4BB700(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1AE4BB748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AE4BB78C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1AE4BB7B0()
{
  v1 = type metadata accessor for Image.Info(0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____DYImage_impl))
  {

    sub_1AE4B55F8(v5);
    v6 = &v5[*(v1 + 20)];
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = v6[16];
    sub_1AE4BA890(*v6, v8, v6[16]);
    sub_1AE4BA56C(v5);
    if (v9 == 255)
    {

      return 0;
    }

    else
    {
      v10 = sub_1AE4BB8CC(v7, v8, v9 & 1);

      sub_1AE4BA998(v7, v8, v9);
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4BB8CC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1AE4EAD70();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  if (a3)
  {
    return sub_1AE4AF28C(a1);
  }

  v9 = a2 - a1;
  if (!a1)
  {
    v9 = 0;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AE4EAD60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD2A0, &qword_1AE4ECE18);
  sub_1AE4AC078(&qword_1EB5DD088, &unk_1EB5DD2A0, &qword_1AE4ECE18);
  result = sub_1AE4EAD50();
  if (!v10)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4BBA3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1AE4EB150();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1AE4EB150();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1AE4BBB2C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1AE4BBBCC(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1AE4BBB2C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1AE4EB150();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1AE4EB0C0();
  *v1 = result;
  return result;
}

uint64_t sub_1AE4BBBCC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AE4EB150();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1AE4EB150();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AE4AC078(&qword_1EB5DD500, &qword_1EB5DD4F8, &qword_1AE4EDB78);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4F8, &qword_1AE4EDB78);
            v9 = sub_1AE4DB038(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Image.Impl(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1AE4BBD70(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1AE4EAD30();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1AE4BBDF0()
{
  sub_1AE4B4558(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl__info, &qword_1EB5DD4E8, &qword_1AE4EDB68);
  v1 = *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist);

  v2 = *(v0 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1AE4BBE84(unint64_t result, uint64_t a2, unint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  if (result >> 62)
  {
    goto LABEL_65;
  }

  v44 = result & 0xFFFFFFFFFFFFFF8;
  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v36 = HIDWORD(a2);
  v6 = __OFSUB__(HIDWORD(a2), a2);
  v37 = v6;
  if (!v5)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_53;
  }

  v7 = 0;
  v8 = 0;
  v43 = result & 0xC000000000000001;
  v9 = a3 >> 62;
  v41 = BYTE6(a3);
  v34 = a2;
  v35 = HIDWORD(a2) - a2;
  v10 = MEMORY[0x1E69E7CC0];
  v33 = a2 >> 32;
  v38 = a2;
  v39 = a3;
  v40 = v5;
  v42 = result;
LABEL_8:
  v32 = v10;
  v11 = v8;
  v12 = v7;
  while (1)
  {
    if (v43)
    {
      result = MEMORY[0x1B2701540](v12, result);
      v13 = result;
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v12 >= *(v44 + 16))
      {
        goto LABEL_55;
      }

      v13 = *(result + 8 * v12 + 32);

      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_54:
        __break(1u);
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
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v31 = result;
        v44 = result & 0xFFFFFFFFFFFFFF8;
        v5 = sub_1AE4EB150();
        result = v31;
        goto LABEL_3;
      }
    }

    v14 = v11 >> 3;
    if (v9 > 1)
    {
      break;
    }

    v15 = v41;
    if (v9)
    {
      v15 = v35;
      if (v37)
      {
        goto LABEL_57;
      }
    }

LABEL_18:
    if (v14 >= v15)
    {
      v10 = v32;
LABEL_52:

      goto LABEL_53;
    }

    if (v9 == 2)
    {
      if (v14 < *(a2 + 16))
      {
        goto LABEL_60;
      }

      if (v14 >= *(a2 + 24))
      {
        goto LABEL_62;
      }

      a2 = a3;
      v22 = sub_1AE4EA990();
      if (!v22)
      {
        goto LABEL_67;
      }

      v20 = v22;
      a3 &= 0x3FFFFFFFFFFFFFFFuLL;
      result = sub_1AE4EA9B0();
      v21 = v14 - result;
      if (__OFSUB__(v14, result))
      {
        goto LABEL_64;
      }

      goto LABEL_31;
    }

    if (v9 == 1)
    {
      if (v14 < v34 || v14 >= v33)
      {
        goto LABEL_61;
      }

      a2 = a3;
      v19 = sub_1AE4EA990();
      if (!v19)
      {
        __break(1u);
LABEL_67:
        __break(1u);
      }

      v20 = v19;
      a3 &= 0x3FFFFFFFFFFFFFFFuLL;
      result = sub_1AE4EA9B0();
      v21 = v14 - result;
      if (__OFSUB__(v14, result))
      {
        goto LABEL_63;
      }

LABEL_31:
      v23 = *(v20 + v21);
      a2 = v38;
      a3 = v39;
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_56;
      }

      goto LABEL_36;
    }

    if (v14 >= v41)
    {
      goto LABEL_59;
    }

    v45 = a2;
    v46 = BYTE2(a2);
    v47 = BYTE3(a2);
    v48 = v36;
    v49 = BYTE5(a2);
    v50 = BYTE6(a2);
    v51 = HIBYTE(a2);
    v52 = a3;
    v53 = BYTE2(a3);
    v54 = BYTE3(a3);
    v55 = BYTE4(a3);
    v56 = BYTE5(a3);
    v23 = *(&v45 + v14);
    v8 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_56;
    }

LABEL_36:
    if ((v23 >> (v11 & 7)))
    {
      v24 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AE4BC3DC(0, *(v32 + 16) + 1, 1);
        a3 = v39;
        v24 = v57;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v28 = v24;
      if (v27 >= v26 >> 1)
      {
        sub_1AE4BC3DC((v26 > 1), v27 + 1, 1);
        a3 = v39;
        v28 = v57;
      }

      *(v28 + 16) = v27 + 1;
      v29 = v28 + 16 * v27;
      *(v29 + 32) = v13;
      *(v29 + 40) = 1;
      result = v42;
      v10 = v28;
      if (v7 == v40)
      {
LABEL_53:

        sub_1AE4A41E8(a2, a3);
        v30 = *MEMORY[0x1E69E9840];
        return v10;
      }

      goto LABEL_8;
    }

    ++v12;
    ++v11;
    result = v42;
    if (v7 == v40)
    {
      v10 = v32;
      goto LABEL_53;
    }
  }

  if (v9 == 2)
  {
    v17 = *(a2 + 16);
    v16 = *(a2 + 24);
    v18 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (v18)
    {
      goto LABEL_58;
    }

    goto LABEL_18;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

void *sub_1AE4BC2A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD508, &qword_1AE4EDB80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD510, &unk_1AE4EDB88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AE4BC3DC(void *a1, int64_t a2, char a3)
{
  result = sub_1AE4BC2A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AE4BC400(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v6 = a2;
  v7 = a1;
  v65 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_104;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (a2 >> 62)
  {
    goto LABEL_105;
  }

LABEL_3:
  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_4:
  sub_1AE4BCC14(v11);

  while (2)
  {
    v12 = v6 & 0xFFFFFFFFFFFFFF8;
    v61 = v6;
    v62 = v6 & 0xC000000000000001;
    v13 = v6 >> 62;
    v59 = v6 & 0xFFFFFFFFFFFFFF8;
    v60 = v6 >> 62;
    if (!(v7 >> 62))
    {
LABEL_6:
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_7;
      }

LABEL_92:
      sub_1AE4BBA3C(v7);
      sub_1AE4BBA3C(v6);
      return v65;
    }

    while (1)
    {
      if (sub_1AE4EB150() < 1)
      {
        goto LABEL_92;
      }

LABEL_7:
      if (v13)
      {
        if (sub_1AE4EB150() < 1)
        {
          goto LABEL_92;
        }
      }

      else if (*(v12 + 16) < 1)
      {
        goto LABEL_92;
      }

      v14 = v7 >> 62;
      if (v7 >> 62)
      {
        if (!sub_1AE4EB150())
        {
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
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
LABEL_104:
          v8 = sub_1AE4EB150();
          if (!(v6 >> 62))
          {
            goto LABEL_3;
          }

LABEL_105:
          v52 = sub_1AE4EB150();
          v10 = __OFADD__(v8, v52);
          v11 = v8 + v52;
          if (v10)
          {
            goto LABEL_107;
          }

          goto LABEL_4;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1B2701540](0, v7);
        if (!v13)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_95;
        }

        v64 = *(v7 + 32);

        if (!v13)
        {
LABEL_14:
          if (!*(v12 + 16))
          {
            goto LABEL_94;
          }

          goto LABEL_15;
        }
      }

      if (!sub_1AE4EB150())
      {
        goto LABEL_94;
      }

LABEL_15:
      if (v62)
      {
        v15 = MEMORY[0x1B2701540](0, v6);
      }

      else
      {
        if (!*(v12 + 16))
        {
          goto LABEL_96;
        }

        v15 = *(v6 + 32);
      }

      v16 = *(v64 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist);
      v17 = *(v64 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8);
      v18 = *(v64 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 16);
      v19 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, v16, v17, v18);
      if (v19)
      {
        v20 = v5;
        v5 = sub_1AE4A6A00(v19);
        if (v20)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v21 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v16, v17, v18);
        if (!v21)
        {
          goto LABEL_116;
        }

        v22 = v5;
        v26 = sub_1AE4A6A00(v21);
        if (v22)
        {
          v57 = v23;
          v58 = v24;
          v55 = v25;
          sub_1AE4C78AC();
          swift_allocError();
          *v56 = v26;
          *(v56 + 8) = v57;
          *(v56 + 16) = v58;
          goto LABEL_119;
        }

        v5 = *(*(v64 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context) + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide) + v26;
      }

      v63 = v15;
      v27 = *(v15 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist);
      v28 = *(v15 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 8);
      v29 = *(v15 + OBJC_IVAR____TtCV4Dyld5Image4Impl_bplist + 16);
      v30 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, v27, v28, v29);
      if (!v30)
      {
        break;
      }

      v31 = v5;
      v32 = sub_1AE4A6A00(v30);
      v5 = 0;

      v6 = v61;
      if (v31 >= v32)
      {
        goto LABEL_66;
      }

LABEL_29:
      v13 = v60;
      if (v14)
      {
        if (!sub_1AE4EB150())
        {
          goto LABEL_99;
        }

        if (!sub_1AE4EB150())
        {
          goto LABEL_100;
        }
      }

      else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B2701540](0, v7);
        v37 = v7 & 0xFFFFFFFFFFFFFF8;
        if (!v14)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_103;
        }

        v39 = *(v7 + 32);

        v37 = v7 & 0xFFFFFFFFFFFFFF8;
        if (!v14)
        {
LABEL_36:
          v38 = *(v37 + 16);
          if (!v38)
          {
            goto LABEL_101;
          }

          goto LABEL_43;
        }
      }

      if (!sub_1AE4EB150())
      {
        goto LABEL_101;
      }

      if (sub_1AE4EB150() < 1)
      {
        goto LABEL_102;
      }

      v38 = sub_1AE4EB150();
LABEL_43:
      v40 = v38 - 1;
      if (__OFSUB__(v38, 1))
      {
        goto LABEL_97;
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v14)
        {
LABEL_51:
          sub_1AE4EB150();
        }

        else
        {
          v41 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_50:
          v42 = *(v41 + 16);
        }

        v7 = sub_1AE4EB0C0();
        goto LABEL_53;
      }

      if (v14)
      {
        goto LABEL_51;
      }

      v41 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v40 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_50;
      }

LABEL_53:
      v43 = sub_1AE4BCCB0(0, 1, 0);
      MEMORY[0x1B27012F0](v43);
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v44 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1AE4EAE90();
      }

      sub_1AE4EAEA0();
      v12 = v59;
      if (!(v7 >> 62))
      {
        goto LABEL_6;
      }
    }

    v33 = v5;
    v34 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v27, v28, v29);
    if (!v34)
    {
      goto LABEL_115;
    }

    v35 = sub_1AE4A6A00(v34);
    v6 = v61;
    v5 = 0;

    v36 = *(*(v63 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context) + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide);

    if (v33 < v36 + v35)
    {
      goto LABEL_29;
    }

LABEL_66:
    if (!v60)
    {
      if (!*(v59 + 16))
      {
        goto LABEL_110;
      }

      goto LABEL_71;
    }

    if (!sub_1AE4EB150())
    {
      goto LABEL_109;
    }

    if (!sub_1AE4EB150())
    {
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

LABEL_71:
    if (!v62)
    {
      if (!*(v59 + 16))
      {
        goto LABEL_114;
      }

      v46 = *(v6 + 32);

      if (v60)
      {
        goto LABEL_77;
      }

LABEL_73:
      v45 = *(v59 + 16);
      if (!v45)
      {
        goto LABEL_112;
      }

LABEL_80:
      v47 = v45 - 1;
      if (__OFSUB__(v45, 1))
      {
        goto LABEL_108;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v60)
        {
          if (v47 <= *(v59 + 24) >> 1)
          {
LABEL_89:
            v49 = sub_1AE4BCCB0(0, 1, 0);
            MEMORY[0x1B27012F0](v49);
            if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v50 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1AE4EAE90();
            }

            sub_1AE4EAEA0();
            continue;
          }

          goto LABEL_86;
        }
      }

      else if (!v60)
      {
LABEL_86:
        v48 = *(v59 + 16);
LABEL_88:
        v6 = sub_1AE4EB0C0();
        goto LABEL_89;
      }

      sub_1AE4EB150();
      goto LABEL_88;
    }

    break;
  }

  MEMORY[0x1B2701540](0, v6);
  if (!v60)
  {
    goto LABEL_73;
  }

LABEL_77:
  if (!sub_1AE4EB150())
  {
    goto LABEL_112;
  }

  if (sub_1AE4EB150() >= 1)
  {
    v45 = sub_1AE4EB150();
    goto LABEL_80;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  v53 = a2;
  v54 = a3;
  v55 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v56 = v5;
  *(v56 + 8) = v53;
  *(v56 + 16) = v54;
LABEL_119:
  *(v56 + 24) = v55;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AE4BCC14(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_1AE4EB0C0();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_1AE4EB150();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_1AE4BCCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for Image.Impl(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1AE4EB150();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1AE4EB150();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void _dyld_process_info_get_state(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = a1;
    *a2 = [v4 timestamp];
    v3 = [v4 images];
    *(a2 + 8) = [v3 count];

    *(a2 + 12) = [v4 initialImageCount];
    *(a2 + 16) = [v4 state];
  }
}

uint64_t sub_1AE4BD01C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(v4 + OBJC_IVAR____DYSnapshot_impl);
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(v4 + OBJC_IVAR____DYSnapshot_impl + 8);
  v8 = v6[6];
  v5 = v6[7];
  v9 = v6[8];

  v10 = sub_1AE4AC6E0(1952543859, 0xE400000000000000, 0, v8, v5, v9);
  if (v10)
  {
    v5 = sub_1AE4A6A00(v10);

    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 <= 0xFF)
    {
      return v5;
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  v12 = a2;
  v13 = a3;
  v14 = a4;
  sub_1AE4C78AC();
  swift_allocError();
  *v15 = v5;
  *(v15 + 8) = v12;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_1AE4BD140(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void))
{
  v6 = a1;
  v7 = a3();

  if (v7)
  {
    a4();
    v8 = sub_1AE4EAE70();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void _dyld_process_info_get_cache(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v8 = a1;
    v3 = [v8 sharedCache];

    if (v3)
    {
      v4 = [v8 sharedCache];
      v5 = [v4 uuid];
      [v5 getUUIDBytes:a2];

      v6 = [v8 sharedCache];
      *(a2 + 16) = [v6 address];

      *(a2 + 24) = 0;
      v7 = [v8 sharedCache];
      *(a2 + 25) = [v7 mappedPrivate];
    }

    else
    {
      uuid_copy(a2, UUID_NULL);
      *(a2 + 16) = 0;
      *(a2 + 24) = 1;
    }
  }
}

uint64_t sub_1AE4BD300(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + OBJC_IVAR____DYSharedCache_impl);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(v4 + OBJC_IVAR____DYSharedCache_impl + 8);
  v9 = v7[2];
  v10 = v7[3];
  v5 = v7[4];

  v11 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v9, v10, v5);
  if (!v11)
  {
LABEL_7:
    __break(1u);
    v17 = a3;
    v18 = a4;
    sub_1AE4C78AC();
    swift_allocError();
    *v19 = v6;
    *(v19 + 8) = v5;
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v13 = sub_1AE4AEC7C(v11, v12);
  v15 = v14;

  sub_1AE4B0730(v13, v15);
}

uint64_t sub_1AE4BD470()
{
  v0 = sub_1AE4B9C8C();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1AE4EB150();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = MEMORY[0x1E69E7CC0];
  result = sub_1AE4EB0F0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B2701540](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      ++v4;
      sub_1AE4EB0D0();
      v5 = *(v7 + 16);
      sub_1AE4EB100();
      sub_1AE4EB110();
      sub_1AE4EB0E0();
    }

    while (v2 != v4);

    return v7;
  }

  return result;
}

uint64_t sub_1AE4BD5C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(v4 + OBJC_IVAR____DYSnapshot_impl);
  if (v8)
  {
    v9 = *(v4 + OBJC_IVAR____DYSnapshot_impl + 8);
    v10 = v8[6];
    v11 = v8[7];
    v12 = v8[8];

    v13 = sub_1AE4AC6E0(1886809701, 0xE400000000000000, 0, v10, v11, v12);
    if (v13)
    {
      v14 = sub_1AE4AC2B4(v13);
      v16 = v15;
      v18 = v17;

      type metadata accessor for Environment.Impl();
      v19 = swift_allocObject();
      v19[2] = v14;
      v19[3] = v16;
      v19[4] = v18;

      v20 = [objc_allocWithZone(_DYEnvironment) initWithInternal_];
      v21 = *&v20[OBJC_IVAR____DYEnvironment_impl];
      *&v20[OBJC_IVAR____DYEnvironment_impl] = v19;
    }

    else
    {

      return 0;
    }

    return v20;
  }

  else
  {
    __break(1u);
    sub_1AE4C78AC();
    swift_allocError();
    *v24 = v7;
    *(v24 + 8) = v6;
    *(v24 + 16) = v5;
    *(v24 + 24) = a4;
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4BD788()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = qword_1EB5DD1C0;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_1AE4EAF80();
    if (v11 == 2 || (v11 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v5);
      sub_1AE4EAFA0();
    }

    else
    {
      swift_beginAccess();
      sub_1AE4D4124(v1 + 40, 0x100000000);
      swift_endAccess();
    }
  }

  v6 = *(v1 + 16);

  v7 = *(v1 + 24);

  mach_port_deallocate(*MEMORY[0x1E69E9A60], *(v1 + 32));
  sub_1AE4BD9E8(*(v1 + 40), *(v1 + 48), *(v1 + 56));

  v9 = *(v1 + 80);
  v8 = *(v1 + 88);

  return v1;
}

uint64_t sub_1AE4BD974()
{
  sub_1AE4BD788();

  return swift_deallocClassInstance();
}