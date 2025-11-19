uint64_t sub_21421AB54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A158, &qword_2146F5C80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BBFC();
  sub_2146DAA28();
  v11 = *(v3 + 24);
  if (v11 != 1)
  {
    v23 = *(v3 + 16);
    v24 = v11;
    v25 = 0;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v6 + 8))(v9, v5);
    }

    v21 = v12;
    v22 = v6;
    v14 = type metadata accessor for IDSHealthInvitation.SharingSetupMetadata(0);
    v15 = v14[5];
    LOBYTE(v23) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
    sub_2142F511C();
    sub_2146DA388();
    v16 = v14[6];
    LOBYTE(v23) = 2;
    sub_2146DA388();
    v17 = v3 + v14[7];
    v18 = *(v17 + 24);
    v6 = v22;
    if (v18 != 1)
    {
      v23 = *(v17 + 16);
      v24 = v18;
      v25 = 3;
      sub_2146DA388();
      LOBYTE(v23) = *(v3 + v14[8]);
      v25 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A130, &qword_2146F5C70);
      sub_21430BDDC();
      sub_2146DA388();
      v19 = v3 + v14[9];
      v20 = *(v19 + 24);
      if (v20 != 1)
      {
        v23 = *(v19 + 16);
        v24 = v20;
        v25 = 5;
        sub_2146DA388();
        v23 = *(v3 + v14[10]);
        v25 = 6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A148, &qword_2146F5C78);
        sub_21430BEB4();
        sub_2146DA388();
        return (*(v6 + 8))(v9, v5);
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21421AF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2143940DC(&v23);
  v10 = v23;
  v9 = v24;
  v11 = v25;
  v12 = v26;
  v33[0] = a1;
  v33[1] = a2;
  v17 = v27;
  v35 = v27;
  v23 = 0xD000000000000040;
  v24 = 0x8000000214791700;
  v25 = 0xD00000000000001CLL;
  v26 = 0x800000021478A360;

  sub_213FDC9D0(v11, v12);
  v13 = v10(v33, &v35, &v23);
  if (v18)
  {
  }

  else
  {
    if (v13)
    {
      sub_213FDC6D0(v11, v12);

      result = sub_213FDC6D0(v11, v12);
      *a7 = v10;
      *(a7 + 8) = v9;
      *(a7 + 16) = a1;
      *(a7 + 24) = a2;
      *(a7 + 32) = v17;
      *(a7 + 40) = a3;
      *(a7 + 48) = a4;
      *(a7 + 56) = a5;
      *(a7 + 64) = a6;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD000000000000040;
    v15[1] = 0x8000000214791700;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v11, v12);
  v23 = v10;
  v24 = v9;
  v25 = v11;
  v26 = v12;
  v27 = v17;
  *v28 = *v34;
  *&v28[3] = *&v34[3];
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  return sub_21430BF68(&v23);
}

unint64_t sub_21421B148()
{
  v1 = 0x4E79616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x5379616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_21421B1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214379A10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21421B1E4(uint64_t a1)
{
  v2 = sub_21430BFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421B220(uint64_t a1)
{
  v2 = sub_21430BFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21421B25C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A178, &qword_2146F5C88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BFBC();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v65 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v45) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v11 = v51;
  v44 = v50;
  LOBYTE(v45) = 1;
  sub_2146DA1C8();
  v43 = v11;
  v12 = v51;
  v42 = v50;
  v61 = 2;
  sub_2146DA1C8();
  v38 = v12;
  v36 = v62;
  v37 = v63;
  sub_2143940DC(&v50);
  v15 = v50;
  v14 = v51;
  v16 = v52;
  v17 = v53;
  v60[0] = v44;
  v60[1] = v43;
  v40 = v54;
  LOBYTE(v45) = v54;
  v50 = 0xD000000000000040;
  v51 = 0x8000000214791700;
  v34 = 0x8000000214791700;
  v52 = 0xD00000000000001CLL;
  v53 = 0x800000021478A360;

  v39 = v16;
  v35 = v17;
  sub_213FDC9D0(v16, v17);
  v18 = v14;
  v41 = v15;
  v19 = v15(v60, &v45, &v50);
  v20 = v34;
  if (v19)
  {
    v21 = v35;
    sub_213FDC6D0(v39, v35);

    (*(v6 + 8))(v9, v5);
    v22 = v18;

    sub_213FDC6D0(v39, v21);
    *&v45 = v41;
    *(&v45 + 1) = v18;
    *&v46 = v44;
    v23 = v43;
    *(&v46 + 1) = v43;
    LOBYTE(v47) = v40;
    v24 = v42;
    v25 = v38;
    *(&v47 + 1) = v42;
    *&v48 = v38;
    v26 = v36;
    v27 = v37;
    *(&v48 + 1) = v36;
    v49 = v37;
    v28 = v65;
    *(v65 + 64) = v37;
    v29 = v48;
    v28[2] = v47;
    v28[3] = v29;
    v30 = v46;
    *v28 = v45;
    v28[1] = v30;
    sub_21430C010(&v45, &v50);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v50 = v41;
    v51 = v22;
    v52 = v44;
    v53 = v23;
    v54 = v40;
    v56 = v24;
    v57 = v25;
    v58 = v26;
    v59 = v27;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000040;
    v31[1] = v20;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    v32 = v39;
    v33 = v35;
    sub_213FDC6D0(v39, v35);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v50 = v41;
    v51 = v18;
    v52 = v32;
    v53 = v33;
    v54 = v40;
    *v55 = *v64;
    *&v55[3] = *&v64[3];
    v56 = v42;
    v57 = v38;
    v58 = v36;
    v59 = v37;
  }

  return sub_21430BF68(&v50);
}

uint64_t sub_21421B7E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A188, &qword_2146F5C90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v18 = v1[6];
  v19 = v10;
  v11 = v1[7];
  v16 = v1[8];
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430BFBC();
  sub_2146DAA28();
  if (v9 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v21 = v8;
    v22 = v9;
    v23 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v13 = v20;
    sub_2146DA388();
    if (v13)
    {
      return (*(v4 + 8))(v7, v3);
    }

    else
    {
      v21 = v19;
      v22 = v18;
      v23 = 1;
      sub_2146DA388();
      v21 = v17;
      v22 = v16;
      v23 = 2;
      sub_2146DA388();
      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_21421BA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_2144B3CA4(&v13);
  v7 = v13;
  v6 = v14;
  v8 = v16;
  v18 = a1;
  v17 = v16;
  v13 = 0xD000000000000054;
  v14 = 0x8000000214791750;
  v15 = 0xD00000000000001CLL;
  v16 = 0x800000021478A360;

  v9 = v7(&v18, &v17, &v13);
  if (v3)
  {
  }

  else
  {
    if (v9)
    {

      *a2 = a3;
      *(a2 + 8) = v7;
      *(a2 + 16) = v6;
      *(a2 + 24) = a1;
      *(a2 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v11 = 0xD000000000000054;
    v11[1] = 0x8000000214791750;
    v11[2] = 0xD00000000000001CLL;
    v11[3] = 0x800000021478A360;
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
}

unint64_t sub_21421BBFC()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_21421BC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000214796B10 == a2)
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

uint64_t sub_21421BD20(uint64_t a1)
{
  v2 = sub_21430C06C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421BD5C(uint64_t a1)
{
  v2 = sub_21430C06C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21421BD98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A190, &qword_2146F5C98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C06C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v27) = 0;
  sub_2146DA188();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D0, &qword_2146F5CA0);
  LOBYTE(v32) = 1;
  sub_21430C0C0();
  sub_2146DA1C8();
  v14 = v27;
  sub_2144B3CA4(&v27);
  v16 = v27;
  v15 = v28;
  v25 = v14;
  v26 = v29;
  v32 = v14;
  v22 = v30;
  v31 = v30;
  v27 = 0xD000000000000054;
  v28 = 0x8000000214791750;
  v23 = 0x8000000214791750;
  v29 = 0xD00000000000001CLL;
  v30 = 0x800000021478A360;

  v24 = v15;
  v17 = v16(&v32, &v31, &v27);
  v21 = v16;
  v18 = v23;
  if (v17)
  {

    (*(v6 + 8))(v9, v5);

    v19 = v24;

    *a2 = v12;
    *(a2 + 8) = v21;
    *(a2 + 16) = v19;
    *(a2 + 24) = v25;
    *(a2 + 32) = v22;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000054;
    v20[1] = v18;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21421C10C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1A8, &qword_2146F5CA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = v1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C06C();
  sub_2146DAA28();
  v15 = 0;
  sub_2146DA348();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  if (v10)
  {
    v14 = v10;
    v13[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D0, &qword_2146F5CA0);
    sub_21430C13C();
    sub_2146DA388();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 sub_21421C324@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t (*a17)(void, void, void), uint64_t a18, char a19, char a20, uint64_t (*a21)(void, void, void), uint64_t a22, uint64_t (*a23)(void, void, void), uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char *a29)
{
  v29 = a1[3];
  v170 = a1[2];
  v171 = v29;
  LOBYTE(v172) = *(a1 + 64);
  v30 = a1[1];
  v168 = *a1;
  v169 = v30;
  v66 = *a29;
  sub_2145B2490(&v83);
  v31 = v83;
  v32 = v84;
  v33 = v85;
  sub_2145B24C4(&v143);
  v80 = v143;
  v82 = v144;
  v79 = v145;
  v173 = v146;
  v75 = v147;
  sub_2145B24F8(v141);
  v76 = v141[0];
  v74 = v141[2];
  v77 = v141[1];
  v78 = v141[3];
  v81 = v142;
  sub_2145B252C(v139);
  v68 = v139[0];
  v71 = v139[2];
  v72 = v139[3];
  v73 = v139[1];
  v69 = v140;
  v155 = a3 & 1;
  v154 = a5 & 1;
  v153 = a7 & 1;
  v152 = a10 & 1;
  v151 = a12 & 1;
  v150 = a14 & 1;
  v149 = a16 & 1;
  v148 = a26 & 1;
  v143 = a17;
  v144 = a18;
  v63 = v33;
  LOBYTE(v141[0]) = v33;
  *&v83 = 0xD000000000000035;
  *(&v83 + 1) = 0x80000002147917B0;
  v84.n128_u64[0] = 0xD00000000000001CLL;
  v84.n128_u64[1] = 0x800000021478A360;

  v34 = v32.n128_u64[0];
  sub_213FDC9D0(v32.n128_i64[0], v32.n128_i64[1]);
  v35 = (v31)(&v143, v141, &v83);
  if (v70)
  {

    v36 = v69;
    v37 = *(&v31 + 1);
    v38 = v68;
LABEL_6:

    v42 = v32.n128_i64[1];
    sub_213FDC6D0(v32.n128_i64[0], v32.n128_i64[1]);
    v39 = v75;
    v43 = v74;
    v44 = v79;
    v45 = a26 & 1;
LABEL_7:
    v89 = a3 & 1;
    v91 = a4;
    v92 = a5 & 1;
    v94 = a6;
    v95 = a7 & 1;
    v97 = a8;
    v98 = a10 & 1;
    v100 = a11;
    v101 = a12 & 1;
    v87 = v172;
    v88 = a2;
    *v90 = *v167;
    *&v90[3] = *&v167[3];
    *&v93[3] = *&v166[3];
    *v93 = *v166;
    *&v96[3] = *&v165[3];
    *v96 = *v165;
    *&v99[3] = *&v164[3];
    *v99 = *v164;
    *&v102[3] = *&v163[3];
    *v102 = *v163;
    v85 = v170;
    v86 = v171;
    v83 = v168;
    v84 = v169;
    v103 = a13;
    v104 = a14 & 1;
    *&v105[3] = *&v162[3];
    *v105 = *v162;
    v106 = a15;
    v107 = a16 & 1;
    *&v108[3] = *&v161[3];
    *v108 = *v161;
    v109 = v31;
    v110 = v37;
    v111 = v34;
    v112 = v42;
    v113 = v63;
    v114 = a19;
    v115 = a20;
    v117 = v160;
    v116 = v159;
    v118 = v80;
    v119 = v82;
    v120 = v44;
    v121 = v173;
    v122 = v39;
    *v123 = *v158;
    *&v123[3] = *&v158[3];
    v124 = v76;
    v125 = v77;
    v126 = v43;
    v127 = v78;
    v128 = v81;
    *v129 = v157[0];
    *&v129[3] = *(v157 + 3);
    v130 = a25;
    v131 = v45;
    *v132 = v156[0];
    *&v132[3] = *(v156 + 3);
    v133 = v38;
    v134 = v73;
    v135 = v71;
    v136 = v72;
    v137 = v36;
    v138 = v66;
    sub_21430C1B8(&v83);
    return result;
  }

  if ((v35 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000035;
    v41[1] = 0x80000002147917B0;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = 0x800000021478A360;
    swift_willThrow();

    v36 = v69;
    v37 = *(&v31 + 1);
    v38 = v68;
    goto LABEL_6;
  }

  sub_213FDC6D0(v32.n128_i64[0], v32.n128_i64[1]);

  v37 = *(&v31 + 1);

  sub_213FDC6D0(v32.n128_i64[0], v32.n128_i64[1]);
  v143 = a21;
  v144 = a22;
  v39 = v75;
  LOBYTE(v141[0]) = v75;
  *&v83 = 0xD00000000000003FLL;
  *(&v83 + 1) = 0x80000002147917F0;
  v84.n128_u64[0] = 0xD00000000000001CLL;
  v84.n128_u64[1] = 0x800000021478A360;

  sub_213FDC9D0(v79, v173);
  v40 = v80(&v143, v141, &v83);
  if ((v40 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v49 = 0xD00000000000003FLL;
    v49[1] = 0x80000002147917F0;
    v49[2] = 0xD00000000000001CLL;
    v49[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v68;

    v44 = v79;
    sub_213FDC6D0(v79, v173);
    v34 = a17;
    v42 = a18;
    v45 = a26 & 1;
    v36 = v69;
    v43 = v74;
    goto LABEL_7;
  }

  v43 = a23;
  v47 = v173;
  sub_213FDC6D0(v79, v173);

  sub_213FDC6D0(v79, v47);
  v143 = a23;
  v144 = a24;
  LOBYTE(v141[0]) = v81;
  *&v83 = 0xD000000000000038;
  *(&v83 + 1) = 0x8000000214791830;
  v84.n128_u64[0] = 0xD00000000000001CLL;
  v84.n128_u64[1] = 0x800000021478A360;

  sub_213FDC9D0(v74, v78);
  v48 = v76(&v143, v141, &v83);
  if ((v48 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v51 = 0xD000000000000038;
    v51[1] = 0x8000000214791830;
    v51[2] = 0xD00000000000001CLL;
    v51[3] = 0x800000021478A360;
    swift_willThrow();

    v38 = v68;

    v43 = v74;
    sub_213FDC6D0(v74, v78);
    v34 = a17;
    v42 = a18;
    v44 = a21;
    v173 = a22;
    v39 = v75;
    v45 = a26 & 1;
    v36 = v69;
    goto LABEL_7;
  }

  sub_213FDC6D0(v74, v78);

  sub_213FDC6D0(v74, v78);
  v143 = a27;
  v144 = a28;
  LOBYTE(v141[0]) = v69;
  *&v83 = 0xD00000000000004CLL;
  *(&v83 + 1) = 0x8000000214791870;
  v84.n128_u64[0] = 0xD00000000000001CLL;
  v84.n128_u64[1] = 0x800000021478A360;

  sub_213FDC9D0(v71, v72);
  v50 = v68(&v143, v141, &v83);
  v173 = a27;
  if ((v50 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v57 = 0xD00000000000004CLL;
    v57[1] = 0x8000000214791870;
    v57[2] = 0xD00000000000001CLL;
    v57[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v71, v72);
    v34 = a17;
    v42 = a18;
    v44 = a21;
    v173 = a22;
    v37 = *(&v31 + 1);
    v78 = a24;
    v39 = v75;
    v45 = a26 & 1;
    v36 = v69;
    v38 = v68;
    goto LABEL_7;
  }

  sub_213FDC6D0(v71, v72);

  sub_213FDC6D0(v71, v72);
  *(a9 + 80) = a3 & 1;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5 & 1;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7 & 1;
  *(a9 + 120) = a8;
  *(a9 + 128) = a10 & 1;
  *(a9 + 136) = a11;
  *(a9 + 144) = a12 & 1;
  *(a9 + 152) = a13;
  v52 = v172;
  v53 = v171;
  *(a9 + 32) = v170;
  *(a9 + 48) = v53;
  result = v169;
  *a9 = v168;
  *(a9 + 16) = result;
  *(a9 + 64) = v52;
  *(a9 + 72) = a2;
  *(a9 + 81) = *v167;
  *(a9 + 84) = *&v167[3];
  *(a9 + 100) = *&v166[3];
  *(a9 + 97) = *v166;
  *(a9 + 116) = *&v165[3];
  *(a9 + 113) = *v165;
  *(a9 + 132) = *&v164[3];
  *(a9 + 129) = *v164;
  *(a9 + 148) = *&v163[3];
  *(a9 + 145) = *v163;
  *(a9 + 160) = a14 & 1;
  v54 = *v162;
  *(a9 + 164) = *&v162[3];
  *(a9 + 161) = v54;
  *(a9 + 168) = a15;
  *(a9 + 176) = a16 & 1;
  v55 = *v161;
  *(a9 + 180) = *&v161[3];
  *(a9 + 177) = v55;
  *(a9 + 184) = v31;
  *(a9 + 200) = a17;
  *(a9 + 208) = a18;
  *(a9 + 216) = v33;
  *(a9 + 217) = a19;
  *(a9 + 218) = a20;
  v56 = v159;
  *(a9 + 223) = v160;
  *(a9 + 219) = v56;
  *(a9 + 224) = v80;
  *(a9 + 232) = v82;
  *(a9 + 240) = a21;
  *(a9 + 248) = a22;
  *(a9 + 256) = v75;
  LODWORD(v52) = *v158;
  *(a9 + 260) = *&v158[3];
  *(a9 + 257) = v52;
  *(a9 + 264) = v76;
  *(a9 + 272) = v77;
  *(a9 + 280) = a23;
  *(a9 + 288) = a24;
  *(a9 + 296) = v81;
  LODWORD(v52) = v157[0];
  *(a9 + 300) = *(v157 + 3);
  *(a9 + 297) = v52;
  *(a9 + 304) = a25;
  *(a9 + 312) = a26 & 1;
  LODWORD(v52) = v156[0];
  *(a9 + 316) = *(v156 + 3);
  *(a9 + 313) = v52;
  *(a9 + 320) = v68;
  *(a9 + 328) = v73;
  *(a9 + 336) = v173;
  *(a9 + 344) = a28;
  *(a9 + 352) = v69;
  *(a9 + 353) = v66;
  return result;
}

unint64_t sub_21421CEE4(char a1)
{
  result = 0x656C706D6173;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x6E6F697461727564;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0x657079546C616F67;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x4449656C646E7562;
      break;
    case 9:
      result = 0x5768637461577369;
      break;
    case 10:
      result = 0x726F6F646E497369;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x6F4D656369766564;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21421D0CC(uint64_t a1)
{
  v2 = sub_21430C20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421D108(uint64_t a1)
{
  v2 = sub_21430C20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21421D144@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1B8, &qword_2146F5CB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v182 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430C20C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v182);
  }

  v81 = a2;
  v82 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  v159 = 0;
  sub_21430B48C();
  sub_2146DA1C8();
  v156 = v162;
  v157 = v163;
  v158 = v164;
  v155 = v161;
  v154 = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
  LOBYTE(v83[0]) = 1;
  v12 = sub_2142E14CC();
  sub_2146DA1C8();
  v78 = v84;
  v79 = v12;
  LODWORD(v12) = BYTE8(v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
  LOBYTE(v83[0]) = 2;
  v80 = sub_2142E35EC();
  sub_2146DA1C8();
  v77 = v12;
  v76 = v84;
  LODWORD(v12) = BYTE8(v84);
  LOBYTE(v83[0]) = 3;
  sub_2146DA1C8();
  v75 = v12;
  v74 = v84;
  LODWORD(v12) = BYTE8(v84);
  LOBYTE(v83[0]) = 4;
  sub_2146DA1C8();
  v73 = v12;
  v72 = v84;
  LODWORD(v12) = BYTE8(v84);
  LOBYTE(v83[0]) = 5;
  sub_2146DA1C8();
  v71 = v12;
  v70 = v84;
  LODWORD(v12) = BYTE8(v84);
  LOBYTE(v83[0]) = 6;
  sub_2146DA1C8();
  v69 = v12;
  v68 = v84;
  LODWORD(v12) = BYTE8(v84);
  LOBYTE(v83[0]) = 7;
  sub_2146DA1C8();
  v66 = v12;
  v65 = v84;
  LODWORD(v12) = BYTE8(v84);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v83[0]) = 8;
  v14 = sub_2142E12FC();
  v80 = v13;
  v67 = v14;
  sub_2146DA1C8();
  v63 = v12;
  v16 = *(&v84 + 1);
  v62 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v83[0]) = 9;
  sub_2142E1378();
  v64 = v9;
  sub_2146DA1C8();
  v61 = v84;
  LOBYTE(v83[0]) = 10;
  sub_2146DA1C8();
  v17 = v84;
  LOBYTE(v83[0]) = 11;
  sub_2146DA1C8();
  v18 = v84;
  LOBYTE(v83[0]) = 12;
  sub_2146DA1C8();
  v60 = v84;
  LOBYTE(v83[0]) = 13;
  sub_2146DA1C8();
  v59 = v84;
  LODWORD(v79) = BYTE8(v84);
  LOBYTE(v83[0]) = 14;
  sub_2146DA1C8();
  v80 = *(&v84 + 1);
  v54 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A060, &qword_2146F5BF8);
  v152 = 15;
  sub_21430B740();
  sub_2146DA1C8();
  v39 = v153;
  sub_213FB2E54(&v154, &v84, &qword_27C90A020, &qword_2146F5BE0);
  sub_2145B2490(&v84);
  v19 = *(&v84 + 1);
  v57 = v84;
  v20 = *(&v85 + 1);
  v67 = v85;
  v56 = v86;
  sub_2145B24C4(v83);
  v51 = *(&v83[0] + 1);
  v49 = *&v83[0];
  v52 = v83[1];
  v50 = LOBYTE(v83[2]);
  sub_2145B24F8(&v140);
  v45 = v140;
  v47 = v141;
  v48 = v142;
  v46 = v143;
  sub_2145B252C(v138);
  v40 = v138[0];
  v43 = v138[2];
  v44 = v138[1];
  v42 = v138[3];
  v41 = v139;
  v179 = v156;
  v180 = v157;
  LOBYTE(v181) = v158;
  v177 = v154;
  v178 = v155;
  v151 = v77;
  v150 = v75;
  v149 = v73;
  v148 = v71;
  v147 = v69;
  v146 = v66;
  v145 = v63;
  v144 = v79;
  *&v83[0] = v62;
  *(&v83[0] + 1) = v16;
  LOBYTE(v140) = v56;
  *&v84 = 0xD000000000000035;
  v38 = 0x80000002147917B0;
  *(&v84 + 1) = 0x80000002147917B0;
  *&v85 = 0xD00000000000001CLL;
  v53 = 0x800000021478A360;
  *(&v85 + 1) = 0x800000021478A360;

  v58 = v20;
  sub_213FDC9D0(v67, v20);
  v55 = v19;
  if (v57(v83, &v140, &v84))
  {
    v21 = v67;
    v22 = v58;
    sub_213FDC6D0(v67, v58);

    sub_213FDC6D0(v21, v22);
    v83[0] = v18;
    LOBYTE(v140) = v50;
    *&v84 = 0xD00000000000003FLL;
    *(&v84 + 1) = 0x80000002147917F0;
    *&v85 = 0xD00000000000001CLL;
    *(&v85 + 1) = v53;

    sub_213FDC9D0(v52, *(&v52 + 1));
    if (v49(v83, &v140, &v84))
    {
      v27 = v52;
      sub_213FDC6D0(v52, *(&v52 + 1));

      sub_213FDC6D0(v27, *(&v52 + 1));
      v83[0] = v60;
      LOBYTE(v140) = v46;
      *&v84 = 0xD000000000000038;
      *(&v84 + 1) = 0x8000000214791830;
      *&v85 = 0xD00000000000001CLL;
      *(&v85 + 1) = v53;

      sub_213FDC9D0(v48, *(&v48 + 1));
      if (v45(v83, &v140, &v84))
      {
        v30 = v48;
        sub_213FDC6D0(v48, *(&v48 + 1));

        sub_213FDC6D0(v30, *(&v48 + 1));
        v140 = v54;
        v141 = v80;
        LOBYTE(v83[0]) = v41;
        *&v84 = 0xD00000000000004CLL;
        *(&v84 + 1) = 0x8000000214791870;
        *&v85 = 0xD00000000000001CLL;
        *(&v85 + 1) = v53;

        sub_213FDC9D0(v43, v42);
        if (v40(&v140, v83, &v84))
        {
          v33 = v42;
          sub_213FDC6D0(v43, v42);

          sub_213FB2DF4(&v154, &qword_27C90A020, &qword_2146F5BE0);
          (*(v82 + 8))(v64, v5);

          sub_213FDC6D0(v43, v33);
          *(&v83[8] + 1) = *v173;
          DWORD1(v83[9]) = *&v172[3];
          *(&v83[9] + 1) = *v172;
          DWORD1(v83[10]) = *&v171[3];
          *(&v83[10] + 1) = *v171;
          DWORD1(v83[11]) = *&v170[3];
          *(&v83[11] + 1) = *v170;
          *(&v83[13] + 11) = v168;
          *(&v83[16] + 1) = *v167;
          *(&v83[18] + 9) = *v166;
          *(&v83[19] + 9) = *v165;
          *&v83[4] = v181;
          *(&v83[5] + 1) = *v176;
          DWORD1(v83[5]) = *&v176[3];
          *(&v83[6] + 1) = *v175;
          DWORD1(v83[6]) = *&v175[3];
          *(&v83[7] + 1) = *v174;
          DWORD1(v83[7]) = *&v174[3];
          DWORD1(v83[8]) = *&v173[3];
          HIBYTE(v83[13]) = v169;
          DWORD1(v83[16]) = *&v167[3];
          HIDWORD(v83[18]) = *&v166[3];
          HIDWORD(v83[19]) = *&v165[3];
          v83[2] = v179;
          v83[3] = v180;
          v83[0] = v177;
          v83[1] = v178;
          *(&v83[4] + 1) = v78;
          v34 = v77;
          LOBYTE(v83[5]) = v77;
          *(&v83[5] + 1) = v76;
          LOBYTE(v83[6]) = v75;
          *(&v83[6] + 1) = v74;
          LOBYTE(v83[7]) = v73;
          *(&v83[7] + 1) = v72;
          LOBYTE(v83[8]) = v71;
          *(&v83[8] + 1) = v70;
          LOBYTE(v83[9]) = v69;
          *(&v83[9] + 1) = v68;
          v35 = v66;
          LOBYTE(v83[10]) = v66;
          *(&v83[10] + 1) = v65;
          LOBYTE(v83[11]) = v63;
          *(&v83[11] + 1) = v57;
          *&v83[12] = v55;
          *(&v83[12] + 1) = v62;
          *&v83[13] = v16;
          BYTE8(v83[13]) = v56;
          BYTE9(v83[13]) = v61;
          BYTE10(v83[13]) = v17;
          *&v83[14] = v49;
          *(&v83[14] + 1) = v51;
          v83[15] = v18;
          LOBYTE(v83[16]) = v50;
          *(&v83[16] + 1) = v45;
          *&v83[17] = v47;
          *(&v83[17] + 8) = v60;
          BYTE8(v83[18]) = v46;
          *&v83[19] = v59;
          BYTE8(v83[19]) = v79;
          *&v83[20] = v40;
          *(&v83[20] + 1) = v44;
          *&v83[21] = v54;
          *(&v83[21] + 1) = v80;
          LOBYTE(v83[22]) = v41;
          BYTE1(v83[22]) = v39;
          memcpy(v81, v83, 0x162uLL);
          sub_21430C260(v83, &v84);
          __swift_destroy_boxed_opaque_existential_1(v182);
          v90 = v34;
          v92 = v76;
          v93 = v75;
          v95 = v74;
          v96 = v73;
          v98 = v72;
          v99 = v71;
          v101 = v70;
          v102 = v69;
          v104 = v68;
          v105 = v35;
          v88 = v181;
          v86 = v179;
          v87 = v180;
          v84 = v177;
          v85 = v178;
          v89 = v78;
          *v91 = *v176;
          *&v91[3] = *&v176[3];
          *v94 = *v175;
          *&v94[3] = *&v175[3];
          *v97 = *v174;
          *&v97[3] = *&v174[3];
          *v100 = *v173;
          *&v100[3] = *&v173[3];
          *&v103[3] = *&v172[3];
          *v103 = *v172;
          *&v106[3] = *&v171[3];
          *v106 = *v171;
          v107 = v65;
          v108 = v63;
          *&v109[3] = *&v170[3];
          *v109 = *v170;
          v110 = v57;
          v111 = v55;
          v112 = v62;
          v113 = v16;
          v114 = v56;
          v115 = v61;
          v116 = v17;
          v118 = v169;
          v117 = v168;
          v119 = v49;
          v120 = v51;
          v121 = v18;
          v122 = v50;
          *v123 = *v167;
          *&v123[3] = *&v167[3];
          v124 = v45;
          v125 = v47;
          v126 = v60;
          v127 = v46;
          *v128 = *v166;
          *&v128[3] = *&v166[3];
          v129 = v59;
          v130 = v79;
          *v131 = *v165;
          *&v131[3] = *&v165[3];
          v132 = v40;
          v133 = v44;
          v134 = v54;
          v26 = v80;
          goto LABEL_8;
        }

        sub_214031C4C();
        swift_allocError();
        *v36 = 0xD00000000000004CLL;
        v36[1] = 0x8000000214791870;
        v37 = v53;
        v36[2] = 0xD00000000000001CLL;
        v36[3] = v37;
        swift_willThrow();

        sub_213FB2DF4(&v154, &qword_27C90A020, &qword_2146F5BE0);
        (*(v82 + 8))(v64, v5);

        sub_213FDC6D0(v43, v42);
        v67 = v62;
        v58 = v16;
        v52 = v18;
        v48 = v60;
      }

      else
      {
        sub_214031C4C();
        swift_allocError();
        *v31 = 0xD000000000000038;
        v31[1] = 0x8000000214791830;
        v32 = v53;
        v31[2] = 0xD00000000000001CLL;
        v31[3] = v32;
        swift_willThrow();

        sub_213FB2DF4(&v154, &qword_27C90A020, &qword_2146F5BE0);
        (*(v82 + 8))(v64, v5);

        sub_213FDC6D0(v48, *(&v48 + 1));
        v67 = v62;
        v58 = v16;
        v52 = v18;
      }
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v28 = 0xD00000000000003FLL;
      v28[1] = 0x80000002147917F0;
      v29 = v53;
      v28[2] = 0xD00000000000001CLL;
      v28[3] = v29;
      swift_willThrow();

      sub_213FB2DF4(&v154, &qword_27C90A020, &qword_2146F5BE0);
      (*(v82 + 8))(v64, v5);

      sub_213FDC6D0(v52, *(&v52 + 1));
      v67 = v62;
      v58 = v16;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v23 = v38;
    *v24 = 0xD000000000000035;
    v24[1] = v23;
    v25 = v53;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = v25;
    swift_willThrow();

    sub_213FB2DF4(&v154, &qword_27C90A020, &qword_2146F5BE0);
    (*(v82 + 8))(v64, v5);

    sub_213FDC6D0(v67, v58);
  }

  __swift_destroy_boxed_opaque_existential_1(v182);
  v90 = v77;
  v92 = v76;
  v93 = v75;
  v95 = v74;
  v96 = v73;
  v98 = v72;
  v99 = v71;
  v101 = v70;
  v102 = v69;
  v104 = v68;
  v88 = v181;
  v86 = v179;
  v87 = v180;
  v84 = v177;
  v85 = v178;
  v89 = v78;
  *v91 = *v176;
  *&v91[3] = *&v176[3];
  *&v94[3] = *&v175[3];
  *v94 = *v175;
  *&v97[3] = *&v174[3];
  *v97 = *v174;
  *&v100[3] = *&v173[3];
  *v100 = *v173;
  *&v103[3] = *&v172[3];
  *v103 = *v172;
  v105 = v66;
  *&v106[3] = *&v171[3];
  *v106 = *v171;
  v107 = v65;
  v108 = v63;
  *&v109[3] = *&v170[3];
  *v109 = *v170;
  v110 = v57;
  v111 = v55;
  v112 = v67;
  v113 = v58;
  v114 = v56;
  v115 = v61;
  v116 = v17;
  v118 = v169;
  v117 = v168;
  v119 = v49;
  v120 = v51;
  v121 = v52;
  v122 = v50;
  *v123 = *v167;
  *&v123[3] = *&v167[3];
  v124 = v45;
  v125 = v47;
  v126 = v48;
  v127 = v46;
  *v128 = *v166;
  *&v128[3] = *&v166[3];
  v129 = v59;
  v130 = v79;
  *v131 = *v165;
  *&v131[3] = *&v165[3];
  v132 = v40;
  v133 = v44;
  v134 = v43;
  v26 = v42;
LABEL_8:
  v135 = v26;
  v136 = v41;
  v137 = v39;
  return sub_21430C1B8(&v84);
}

uint64_t sub_21421E62C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1C8, &qword_2146F5CB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = v1[3];
  v69 = v1[2];
  v70 = v8;
  v71 = *(v1 + 64);
  v9 = v1[1];
  v67 = *v1;
  v68 = v9;
  v52 = *(v1 + 9);
  v51 = *(v1 + 80);
  v50 = *(v1 + 11);
  v10 = *(v1 + 96);
  v47 = *(v1 + 13);
  v48 = *(v1 + 112);
  v49 = v10;
  v45 = *(v1 + 15);
  v46 = *(v1 + 128);
  v11 = *(v1 + 17);
  v44 = *(v1 + 144);
  v42 = *(v1 + 19);
  v43 = v11;
  v41 = *(v1 + 160);
  v40 = *(v1 + 21);
  LODWORD(v11) = *(v1 + 176);
  v12 = *(v1 + 26);
  v36 = *(v1 + 25);
  v37 = v12;
  v38 = *(v1 + 217);
  v39 = v11;
  v35 = *(v1 + 218);
  v13 = *(v1 + 31);
  v33 = *(v1 + 30);
  v34 = v13;
  v14 = *(v1 + 36);
  v31 = *(v1 + 35);
  v32 = v14;
  v30 = *(v1 + 38);
  v29 = *(v1 + 312);
  v15 = *(v1 + 43);
  v27 = *(v1 + 42);
  v28 = v15;
  v26 = *(v1 + 353);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C20C();
  sub_2146DAA28();
  v64 = v69;
  v65 = v70;
  v66 = v71;
  v62 = v67;
  v63 = v68;
  v61 = 0;
  sub_213FB2E54(&v67, &v56, &qword_27C90A020, &qword_2146F5BE0);
  v17 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A020, &qword_2146F5BE0);
  sub_21430B5C0();
  v18 = v72;
  sub_2146DA388();
  if (v18)
  {
    v58 = v64;
    v59 = v65;
    v60 = v66;
    v56 = v62;
    v57 = v63;
    sub_213FB2DF4(&v56, &qword_27C90A020, &qword_2146F5BE0);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v20 = v49;
    v21 = v50;
    v25 = v4;
    v58 = v64;
    v59 = v65;
    v60 = v66;
    v56 = v62;
    v57 = v63;
    sub_213FB2DF4(&v56, &qword_27C90A020, &qword_2146F5BE0);
    v53 = v52;
    LOBYTE(v54) = v51;
    v55 = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905698, &qword_2146F3D00);
    v23 = sub_2142E1E84();
    sub_2146DA388();
    v72 = v23;
    v53 = v21;
    LOBYTE(v54) = v20;
    v55 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9058A0, &unk_2147379A0);
    sub_2142E37F4();
    sub_2146DA388();
    v53 = v47;
    LOBYTE(v54) = v48;
    v55 = 3;
    sub_2146DA388();
    v53 = v45;
    LOBYTE(v54) = v46;
    v55 = 4;
    sub_2146DA388();
    v53 = v43;
    LOBYTE(v54) = v44;
    v55 = 5;
    sub_2146DA388();
    v53 = v42;
    LOBYTE(v54) = v41;
    v55 = 6;
    sub_2146DA388();
    v53 = v40;
    LOBYTE(v54) = v39;
    v55 = 7;
    sub_2146DA388();
    v52 = v22;
    if (v37 == 1)
    {
      goto LABEL_8;
    }

    v53 = v36;
    v54 = v37;
    v55 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    LOBYTE(v53) = v38;
    v55 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    LOBYTE(v53) = v35;
    v55 = 10;
    sub_2146DA388();
    if (v34 == 1)
    {
      goto LABEL_8;
    }

    v53 = v33;
    v54 = v34;
    v55 = 11;
    sub_2146DA388();
    if (v32 == 1)
    {
      goto LABEL_8;
    }

    v53 = v31;
    v54 = v32;
    v55 = 12;
    sub_2146DA388();
    v53 = v30;
    LOBYTE(v54) = v29;
    v55 = 13;
    sub_2146DA388();
    if (v28 == 1)
    {
LABEL_8:
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v53 = v27;
      v54 = v28;
      v55 = 14;
      sub_2146DA388();
      LOBYTE(v53) = v26;
      v55 = 15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A060, &qword_2146F5BF8);
      sub_21430B874();
      sub_2146DA388();
      return (*(v25 + 8))(0, v17);
    }
  }

  return result;
}

void *sub_21421EE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, const void *a12)
{
  sub_2145B2A64(&v46);
  v15 = v46;
  v14 = v47;
  v17 = v48;
  v16 = v49;
  v18 = v50;
  sub_2145B2A98(&v66);
  v38 = v67;
  v44 = v68;
  v33 = v66;
  v34 = v69;
  v35 = v70;
  v72[0] = a11 & 1;
  memcpy(&__src[7], a12, 0x189uLL);
  v66 = a1;
  v67 = a2;
  v72[0] = v18;
  v46 = 0xD000000000000032;
  v47 = 0x80000002147918C0;
  v48 = 0xD00000000000001CLL;
  v49 = 0x800000021478A360;

  sub_213FDC9D0(v17, v16);
  v45 = v14;
  v19 = v36;
  v37 = v15;
  v20 = v15(&v66, v72, &v46);
  if (v19)
  {

LABEL_6:

    v24 = v33;
    v23 = v34;
    v27 = v14;

    sub_213FDC6D0(v17, v16);
    v21 = v35;
    v22 = v38;
LABEL_7:
    v46 = v37;
    v47 = v27;
    v48 = v17;
    v49 = v16;
    v50 = v18;
    *v51 = v75[0];
    *&v51[3] = *(v75 + 3);
    v52 = a3;
    v53 = a4;
    v54 = a5;
    v55 = a6;
    v56 = v24;
    v57 = v22;
    v58 = v44;
    v59 = v23;
    v60 = v21;
    v62 = v74;
    v61 = v73;
    v63 = a10;
    v64 = a11 & 1;
    memcpy(v65, __src, sizeof(v65));
    return sub_21430C2BC(&v46);
  }

  v30 = a2;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000032;
    v26[1] = 0x80000002147918C0;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v17, v16);

  sub_213FDC6D0(v17, v16);
  v66 = a7;
  v67 = a8;
  v21 = v35;
  v72[0] = v35;
  v46 = 0xD000000000000036;
  v47 = 0x8000000214791900;
  v48 = 0xD00000000000001CLL;
  v49 = 0x800000021478A360;
  v22 = v38;

  v23 = v34;
  sub_213FDC9D0(v44, v34);
  v24 = v33;
  v25 = v33(&v66, v72, &v46);
  if ((v25 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000036;
    v29[1] = 0x8000000214791900;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = a1;

    sub_213FDC6D0(v44, v34);
    v16 = v30;
    v27 = v45;
    goto LABEL_7;
  }

  sub_213FDC6D0(v44, v34);

  sub_213FDC6D0(v44, v34);
  *a9 = v37;
  *(a9 + 8) = v45;
  *(a9 + 16) = a1;
  *(a9 + 24) = v30;
  *(a9 + 32) = v18;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 56) = a5;
  *(a9 + 64) = a6;
  *(a9 + 72) = v33;
  *(a9 + 80) = v38;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v35;
  *(a9 + 108) = a10;
  *(a9 + 112) = a11 & 1;
  return memcpy((a9 + 113), __src, 0x190uLL);
}

unint64_t sub_21421F258()
{
  v1 = *v0;
  v2 = 0x6B616873646E6168;
  v3 = 0x5672657469766E69;
  if (v1 != 4)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000016;
  if (v1 != 1)
  {
    v4 = 0x4372657469766E69;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_21421F33C(uint64_t a1)
{
  v2 = sub_21430C310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21421F378(uint64_t a1)
{
  v2 = sub_21430C310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21421F3B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1D0, &qword_2146F5CC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430C310();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v100);
  }

  v71 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v72[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v70 = v6;
  v12 = v74;
  v13 = v75;
  LOBYTE(v72[0]) = 1;
  sub_2146DA1C8();
  v68 = v12;
  v69 = v13;
  v14 = v74;
  v15 = v75;
  LOBYTE(v72[0]) = 2;
  sub_2146DA1C8();
  v66 = v14;
  v67 = v15;
  v16 = v74;
  v17 = v75;
  LOBYTE(v72[0]) = 3;
  sub_2146DA1C8();
  v18 = v70;
  v64 = v16;
  v65 = v17;
  v19 = v74;
  v20 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  LOBYTE(v72[0]) = 4;
  sub_2142E6128();
  sub_2146DA1C8();
  v61 = v19;
  v21 = v74;
  LOBYTE(v19) = BYTE4(v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
  v95[399] = 5;
  sub_21430A4B0();
  sub_2146DA1C8();
  v55 = v20;
  v54 = v21;
  memcpy(v95, v96, 0x189uLL);
  sub_213FB2E54(v95, &v74, &qword_27C909E50, &unk_2146F5B30);
  sub_2145B2A64(&v74);
  v23 = v75;
  v62 = v76;
  v63 = v74;
  v24 = v77;
  LODWORD(v20) = v78;
  sub_2145B2A98(v72);
  v56 = v72[0];
  v58 = v72[2];
  v59 = v72[3];
  v60 = v72[1];
  v57 = LOBYTE(v72[4]);
  memcpy(&v94[7], v95, 0x189uLL);
  v51 = v19;
  v52 = v20;
  v72[0] = v68;
  v72[1] = v69;
  LOBYTE(v73[0]) = v20;
  v74 = 0xD000000000000032;
  v75 = 0x80000002147918C0;
  v76 = 0xD00000000000001CLL;
  v77 = 0x800000021478A360;

  v50 = v24;
  sub_213FDC9D0(v62, v24);
  v53 = v23;
  v25 = v63(v72, v73, &v74);
  v49 = 0x800000021478A360;
  if (v25)
  {
    v26 = v62;
    v27 = v50;
    sub_213FDC6D0(v62, v50);
    v28 = v49;

    v29 = v53;

    sub_213FDC6D0(v26, v27);
    v73[0] = v61;
    v73[1] = v55;
    LOBYTE(v72[0]) = v57;
    v74 = 0xD000000000000036;
    v75 = 0x8000000214791900;
    v76 = 0xD00000000000001CLL;
    v77 = v28;

    sub_213FDC9D0(v58, v59);
    v30 = v56(v73, v72, &v74);
    if (v30)
    {
      v39 = v58;
      v38 = v59;
      sub_213FDC6D0(v58, v59);

      sub_213FB2DF4(v95, &qword_27C909E50, &unk_2146F5B30);
      (*(v18 + 8))(v9, v5);
      v40 = v60;

      sub_213FDC6D0(v39, v38);
      v41 = v64;
      v72[0] = v63;
      v72[1] = v29;
      v42 = v69;
      v72[2] = v68;
      v72[3] = v69;
      LOBYTE(v72[4]) = v52;
      *(&v72[4] + 1) = v99[0];
      HIDWORD(v72[4]) = *(v99 + 3);
      v43 = v66;
      v72[5] = v66;
      v72[6] = v67;
      v44 = v65;
      v72[7] = v64;
      v72[8] = v65;
      v45 = v55;
      v72[9] = v56;
      v72[10] = v40;
      v72[11] = v61;
      v72[12] = v55;
      LOBYTE(v72[13]) = v57;
      BYTE3(v72[13]) = v98;
      *(&v72[13] + 1) = v97;
      HIDWORD(v72[13]) = v54;
      LOBYTE(v38) = v51;
      LOBYTE(v72[14]) = v51;
      memcpy(&v72[14] + 1, v94, 0x190uLL);
      memcpy(v71, v72, 0x201uLL);
      sub_21430C364(v72, &v74);
      __swift_destroy_boxed_opaque_existential_1(v100);
      v74 = v63;
      v75 = v53;
      v76 = v68;
      v77 = v42;
      v78 = v52;
      *v79 = v99[0];
      *&v79[3] = *(v99 + 3);
      v80 = v43;
      v81 = v67;
      v82 = v41;
      v83 = v44;
      v84 = v56;
      v85 = v40;
      v86 = v61;
      v87 = v45;
      v88 = v57;
      v90 = v98;
      v89 = v97;
      v91 = v54;
      v92 = v38;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v46 = 0xD000000000000036;
    v46[1] = 0x8000000214791900;
    v47 = v49;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = v47;
    swift_willThrow();

    sub_213FB2DF4(v95, &qword_27C909E50, &unk_2146F5B30);
    v33 = v68;
    v48 = v69;
    (*(v18 + 8))(v9, v5);

    sub_213FDC6D0(v58, v59);
    v34 = v48;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v31 = 0xD000000000000032;
    v31[1] = 0x80000002147918C0;
    v32 = v49;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = v32;
    swift_willThrow();

    v29 = v53;
    sub_213FB2DF4(v95, &qword_27C909E50, &unk_2146F5B30);
    (*(v18 + 8))(v9, v5);

    v33 = v62;
    v34 = v50;
    sub_213FDC6D0(v62, v50);
  }

  v36 = v66;
  v35 = v67;
  v37 = v65;
  __swift_destroy_boxed_opaque_existential_1(v100);
  v74 = v63;
  v75 = v29;
  v76 = v33;
  v77 = v34;
  v78 = v52;
  *v79 = v99[0];
  *&v79[3] = *(v99 + 3);
  v80 = v36;
  v81 = v35;
  v82 = v64;
  v83 = v37;
  v84 = v56;
  v85 = v60;
  v86 = v58;
  v87 = v59;
  v88 = v57;
  v90 = v98;
  v89 = v97;
  v91 = v54;
  v92 = v51;
LABEL_8:
  memcpy(v93, v94, sizeof(v93));
  return sub_21430C2BC(&v74);
}

uint64_t sub_21421FD24(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1E0, &qword_2146F5CC8);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v21 = *(v1 + 48);
  v22 = v9;
  v10 = *(v1 + 56);
  v19 = *(v1 + 64);
  v20 = v10;
  v11 = *(v1 + 88);
  v17 = *(v1 + 96);
  v18 = v11;
  v28 = *(v1 + 108);
  HIDWORD(v16) = *(v1 + 112);
  memcpy(v27, (v1 + 120), 0x189uLL);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C310();
  sub_2146DAA28();
  if (v8 == 1)
  {
    goto LABEL_7;
  }

  v26[0] = v7;
  v26[1] = v8;
  v25[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v13 = v23;
  sub_2146DA388();
  if (v13)
  {
    return (*(v24 + 8))(v6, v3);
  }

  v26[0] = v22;
  v26[1] = v21;
  v25[0] = 1;
  sub_2146DA388();
  v26[0] = v20;
  v26[1] = v19;
  v25[0] = 2;
  sub_2146DA388();
  if (v17 == 1)
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v26[0] = v18;
    v26[1] = v17;
    v25[0] = 3;
    sub_2146DA388();
    LODWORD(v26[0]) = v28;
    BYTE4(v26[0]) = BYTE4(v16);
    v25[0] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
    sub_2142E62D8();
    sub_2146DA388();
    memcpy(v26, v27, 0x189uLL);
    v29 = 5;
    sub_213FB2E54(v27, v25, &qword_27C909E50, &unk_2146F5B30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
    sub_21430A714();
    sub_2146DA388();
    v15 = (v24 + 8);
    memcpy(v25, v26, 0x189uLL);
    sub_213FB2DF4(v25, &qword_27C909E50, &unk_2146F5B30);
    return (*v15)(v6, v3);
  }

  return result;
}

void *sub_214220110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, int a10, char a11, const void *a12)
{
  v67 = a2;
  v15 = a6[3];
  v62 = a6[2];
  v63[0] = v15;
  *(v63 + 9) = *(a6 + 57);
  v16 = a6[1];
  v60 = *a6;
  v61 = v16;
  sub_2145B2D30(&v34);
  v17 = v34;
  v18 = v37;
  LOBYTE(v56[0]) = BYTE4(a3) & 1;
  v58[0] = a11 & 1;
  memcpy(&v57[3], a12, 0x189uLL);
  v56[0] = a1;
  v56[1] = v67;
  v28 = v38;
  v58[0] = v38;
  v19 = v36;
  v20 = v35;
  v34 = 0xD000000000000033;
  v35 = 0x8000000214791940;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  sub_213FDC9D0(v19, v18);
  v21 = v17(v56, v58, &v34);
  if (v29)
  {
  }

  else
  {
    if (v21)
    {
      sub_213FDC6D0(v19, v18);

      sub_213FDC6D0(v19, v18);
      *a9 = v17;
      *(a9 + 8) = v20;
      v22 = v67;
      *(a9 + 16) = a1;
      *(a9 + 24) = v22;
      *(a9 + 32) = v28;
      *(a9 + 36) = a3;
      *(a9 + 40) = BYTE4(a3) & 1;
      *(a9 + 48) = a4;
      *(a9 + 56) = a5;
      v23 = a6[3];
      *(a9 + 96) = a6[2];
      *(a9 + 112) = v23;
      *(a9 + 121) = *(a6 + 57);
      v24 = a6[1];
      *(a9 + 64) = *a6;
      *(a9 + 80) = v24;
      *(a9 + 144) = a7;
      *(a9 + 152) = a8;
      *(a9 + 160) = a10;
      *(a9 + 164) = a11 & 1;
      return memcpy((a9 + 165), v57, 0x18CuLL);
    }

    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000033;
    v26[1] = 0x8000000214791940;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v19, v18);
  v34 = v17;
  v35 = v20;
  v36 = v19;
  v37 = v18;
  v38 = v28;
  v39 = v65;
  v40 = v66;
  v41 = a3;
  v42 = BYTE4(a3) & 1;
  *v43 = v64[0];
  *&v43[3] = *(v64 + 3);
  v44 = a4;
  v45 = a5;
  *&v49[9] = *(v63 + 9);
  v48 = v62;
  *v49 = v63[0];
  v46 = v60;
  v47 = v61;
  *&v50[3] = *(v59 + 3);
  *v50 = v59[0];
  v51 = a7;
  v52 = a8;
  v53 = a10;
  v54 = a11 & 1;
  memcpy(v55, v57, sizeof(v55));
  return sub_21430C3C0(&v34);
}

uint64_t sub_214220450()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x65736E6F70736572;
    if (v1 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6B616873646E6168;
    }
  }

  else
  {
    v2 = 0x5665657469766E69;
    if (v1 != 5)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_214220560(uint64_t a1)
{
  v2 = sub_21430C414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422059C(uint64_t a1)
{
  v2 = sub_21430C414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142205D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1E8, &qword_2146F5CD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430C414();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v51 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v52[0] = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v50 = v6;
  v12 = v53;
  v13 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DC8, &qword_2146F40C0);
  v52[0] = 1;
  sub_2142E7FB4();
  sub_2146DA1C8();
  v48 = v12;
  v49 = v13;
  LODWORD(v12) = v53;
  LODWORD(v13) = BYTE4(v53);
  v52[0] = 2;
  sub_2146DA1C8();
  v45 = v13;
  v46 = v12;
  v14 = v53;
  v47 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
  v83 = 3;
  sub_21430A588();
  sub_2146DA1C8();
  v15 = v50;
  v44 = v14;
  v81 = v86;
  *v82 = *v87;
  *&v82[9] = *&v87[9];
  v80 = v85;
  v79 = v84;
  v52[0] = 4;
  sub_2146DA1C8();
  v17 = v53;
  v18 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
  v52[0] = 5;
  sub_2142E6128();
  sub_2146DA1C8();
  v42 = v17;
  v43 = v18;
  LODWORD(v17) = v53;
  LOBYTE(v18) = BYTE4(v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
  v77[399] = 6;
  sub_21430A4B0();
  sub_2146DA1C8();
  v38 = v17;
  memcpy(v77, v78, 0x189uLL);
  sub_213FB2E54(&v79, &v53, &qword_27C909E68, &qword_214761070);
  sub_213FB2E54(v77, &v53, &qword_27C909E50, &unk_2146F5B30);
  sub_2145B2D30(&v53);
  v19 = v54;
  v40 = v53;
  v41 = v55;
  v39 = v56;
  v91 = v81;
  v92[0] = *v82;
  *(v92 + 9) = *&v82[9];
  v89 = v79;
  v90 = v80;
  memcpy(&v76[3], v77, 0x189uLL);
  v36 = v18;
  v37 = v45;
  v75[0] = v48;
  v75[1] = v49;
  v45 = v57;
  v52[0] = v57;
  v53 = 0xD000000000000033;
  v54 = 0x8000000214791940;
  v55 = 0xD00000000000001CLL;
  v56 = 0x800000021478A360;

  sub_213FDC9D0(v41, v39);
  v35 = v19;
  v20 = v40(v75, v52, &v53);
  if (v20)
  {
    v21 = v41;
    v22 = v39;
    sub_213FDC6D0(v41, v39);

    sub_213FB2DF4(&v79, &qword_27C909E68, &qword_214761070);
    sub_213FB2DF4(v77, &qword_27C909E50, &unk_2146F5B30);
    (*(v15 + 8))(v9, v5);
    v23 = v35;

    sub_213FDC6D0(v21, v22);
    v24 = v40;
    *v52 = v40;
    *&v52[8] = v23;
    v25 = v49;
    *&v52[16] = v48;
    *&v52[24] = v49;
    v52[32] = v45;
    *&v52[33] = v94;
    v52[35] = v95;
    *&v52[36] = v46;
    v52[40] = v37;
    *&v52[41] = *v93;
    *&v52[44] = *&v93[3];
    v26 = v44;
    *&v52[48] = v44;
    *&v52[56] = v47;
    *&v52[96] = v91;
    *&v52[112] = v92[0];
    *&v52[121] = *(v92 + 9);
    *&v52[64] = v89;
    *&v52[80] = v90;
    *&v52[137] = *v88;
    *&v52[140] = *&v88[3];
    v27 = v43;
    *&v52[144] = v42;
    *&v52[152] = v43;
    *&v52[160] = v38;
    v28 = v36;
    v52[164] = v36;
    memcpy(&v52[165], v76, 0x18CuLL);
    memcpy(v51, v52, 0x231uLL);
    sub_21430C468(v52, &v53);
    __swift_destroy_boxed_opaque_existential_1(v96);
    v53 = v24;
    v54 = v23;
    v55 = v48;
    v56 = v25;
    v57 = v45;
    v58 = v94;
    v59 = v95;
    v60 = v46;
    v61 = v37;
    *v62 = *v93;
    *&v62[3] = *&v93[3];
    v63 = v26;
    v64 = v47;
    v67 = v91;
    *v68 = v92[0];
    *&v68[9] = *(v92 + 9);
    v65 = v89;
    v66 = v90;
    *v69 = *v88;
    *&v69[3] = *&v88[3];
    v70 = v42;
    v71 = v27;
    v72 = v38;
    v73 = v28;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000033;
    v29[1] = 0x8000000214791940;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(&v79, &qword_27C909E68, &qword_214761070);
    v30 = v46;
    sub_213FB2DF4(v77, &qword_27C909E50, &unk_2146F5B30);
    (*(v15 + 8))(v9, v5);
    v31 = v35;

    v32 = v41;
    v33 = v39;
    sub_213FDC6D0(v41, v39);
    __swift_destroy_boxed_opaque_existential_1(v96);
    v53 = v40;
    v54 = v31;
    v55 = v32;
    v56 = v33;
    v57 = v45;
    v58 = v94;
    v59 = v95;
    v60 = v30;
    v61 = v37;
    *v62 = *v93;
    *&v62[3] = *&v93[3];
    v63 = v44;
    v64 = v47;
    *&v68[9] = *(v92 + 9);
    v67 = v91;
    *v68 = v92[0];
    v65 = v89;
    v66 = v90;
    *&v69[3] = *&v88[3];
    *v69 = *v88;
    v70 = v42;
    v71 = v43;
    v72 = v38;
    v73 = v36;
  }

  memcpy(v74, v76, sizeof(v74));
  return sub_21430C3C0(&v53);
}

uint64_t sub_214220FA8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A1F8, &qword_2146F5CD8);
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 36);
  v26 = *(v1 + 40);
  v27 = v9;
  v10 = *(v1 + 48);
  v24 = *(v1 + 56);
  v25 = v10;
  v11 = *(v1 + 112);
  v40 = *(v1 + 96);
  v41[0] = v11;
  *(v41 + 9) = *(v1 + 121);
  v12 = *(v1 + 64);
  v39 = *(v1 + 80);
  v38 = v12;
  v13 = *(v1 + 144);
  v22 = *(v1 + 152);
  v23 = v13;
  LODWORD(v13) = *(v1 + 160);
  v20 = *(v1 + 164);
  v21 = v13;
  memcpy(v42, (v1 + 168), 0x189uLL);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C414();
  sub_2146DAA28();
  if (v7 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v30[0] = v8;
    v30[1] = v7;
    v29[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v15 = v3;
    v16 = v28;
    sub_2146DA388();
    if (v16)
    {
      return (*(v43 + 8))(v6, v3);
    }

    else
    {
      LODWORD(v30[0]) = v27;
      BYTE4(v30[0]) = v26;
      v29[0] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905DC8, &qword_2146F40C0);
      sub_2142E883C();
      sub_2146DA388();
      v30[0] = v25;
      v30[1] = v24;
      v29[0] = 2;
      sub_2146DA388();
      v36 = v40;
      v37[0] = v41[0];
      *(v37 + 9) = *(v41 + 9);
      v34 = v38;
      v35 = v39;
      v33 = 3;
      sub_213FB2E54(&v38, v30, &qword_27C909E68, &qword_214761070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
      sub_21430A7EC();
      sub_2146DA388();
      v31[2] = v36;
      *v32 = v37[0];
      *&v32[9] = *(v37 + 9);
      v31[0] = v34;
      v31[1] = v35;
      sub_213FB2DF4(v31, &qword_27C909E68, &qword_214761070);
      v30[0] = v23;
      v30[1] = v22;
      v29[0] = 4;
      sub_2146DA388();
      LODWORD(v30[0]) = v21;
      BYTE4(v30[0]) = v20;
      v29[0] = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905AC0, &unk_2146F3F90);
      sub_2142E62D8();
      sub_2146DA388();
      memcpy(v30, v42, 0x189uLL);
      v29[399] = 6;
      sub_213FB2E54(v42, v29, &qword_27C909E50, &unk_2146F5B30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
      sub_21430A714();
      sub_2146DA388();
      v17 = (v43 + 8);
      memcpy(v29, v30, 0x189uLL);
      sub_213FB2DF4(v29, &qword_27C909E50, &unk_2146F5B30);
      return (*v17)(v6, v15);
    }
  }

  return result;
}

void *sub_2142214C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, const void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_2145B2EA4(v21);
  v9 = *a3;
  *&v23[23] = a3[1];
  v10 = a3[3];
  *&v23[39] = a3[2];
  *&v23[55] = v10;
  *&v23[64] = *(a3 + 57);
  v11 = v21[0];
  v12 = v21[1];
  v13 = v21[2];
  v14 = v21[3];
  *&v23[7] = v9;
  memcpy(__src + 7, a4, 0x189uLL);
  v24[2] = *&v23[32];
  v24[3] = *&v23[48];
  v24[4] = *&v23[64];
  v24[0] = *v23;
  v24[1] = *&v23[16];
  memcpy(&v24[5], __src, 0x190uLL);
  *v23 = a1;
  *&v23[8] = a2;
  v25 = v22;
  LOBYTE(v21[0]) = v22;
  __src[0] = 0xD000000000000036;
  __src[1] = 0x8000000214791980;
  __src[2] = 0xD00000000000001CLL;
  __src[3] = 0x800000021478A360;

  sub_213FDC9D0(v13, v14);
  v15 = v11(v23, v21, __src);
  if (v19)
  {
  }

  else
  {
    if (v15)
    {
      sub_213FDC6D0(v13, v14);

      sub_213FDC6D0(v13, v14);
      *a5 = v11;
      *(a5 + 8) = v12;
      *(a5 + 16) = a1;
      *(a5 + 24) = a2;
      *(a5 + 32) = v25;
      return memcpy((a5 + 33), v24, 0x1E0uLL);
    }

    sub_214031C4C();
    swift_allocError();
    *v17 = 0xD000000000000036;
    v17[1] = 0x8000000214791980;
    v17[2] = 0xD00000000000001CLL;
    v17[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v13, v14);
  __src[0] = v11;
  __src[1] = v12;
  __src[2] = v13;
  __src[3] = v14;
  LOBYTE(__src[4]) = v25;
  memcpy(&__src[4] + 1, v24, 0x1E0uLL);
  return sub_21430C4C4(__src);
}

uint64_t sub_214221708(uint64_t a1)
{
  v2 = sub_21430C518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214221744(uint64_t a1)
{
  v2 = sub_21430C518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214221780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A200, &qword_2146F5CE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430C518();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v12 = v6;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v38[0]) = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v14 = v39;
  v15 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
  v59 = 1;
  sub_21430A588();
  sub_2146DA1C8();
  v57 = v62;
  *v58 = v63[0];
  *&v58[9] = *(v63 + 9);
  v55 = v60;
  v56 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
  v53[399] = 2;
  sub_21430A4B0();
  sub_2146DA1C8();
  v35 = v14;
  memcpy(v53, v54, 0x189uLL);
  sub_213FB2E54(&v55, &v39, &qword_27C909E68, &qword_214761070);
  sub_213FB2E54(v53, &v39, &qword_27C909E50, &unk_2146F5B30);
  sub_2145B2EA4(&v39);
  *(&v52[1] + 7) = v56;
  *(&v52[2] + 7) = v57;
  *(&v52[3] + 7) = *v58;
  v52[4] = *&v58[9];
  v31 = v39;
  v17 = v15;
  v18 = v40;
  v36 = v41;
  v37 = v42;
  *(v52 + 7) = v55;
  memcpy(&v51[7], v53, 0x189uLL);
  v50[0] = v35;
  v32 = v17;
  v50[1] = v17;
  v34 = v43;
  LOBYTE(v38[0]) = v43;
  v39 = 0xD000000000000036;
  v30 = 0x8000000214791980;
  v40 = 0x8000000214791980;
  v41 = 0xD00000000000001CLL;
  v42 = 0x800000021478A360;

  sub_213FDC9D0(v36, v37);
  v33 = v18;
  v19 = v31;
  v20 = v31(v50, v38, &v39);
  v21 = v30;
  if (v20)
  {
    sub_213FDC6D0(v36, v37);

    sub_213FB2DF4(&v55, &qword_27C909E68, &qword_214761070);
    sub_213FB2DF4(v53, &qword_27C909E50, &unk_2146F5B30);
    (*(v12 + 8))(v9, v5);
    v22 = v33;

    sub_213FDC6D0(v36, v37);
    *(&v38[6] + 1) = v52[1];
    *(&v38[8] + 1) = v52[2];
    *(&v38[10] + 1) = v52[3];
    *(&v38[12] + 1) = v52[4];
    v38[0] = v19;
    v38[1] = v22;
    v23 = v35;
    v24 = v32;
    v38[2] = v35;
    v38[3] = v32;
    v25 = v34;
    LOBYTE(v38[4]) = v34;
    *(&v38[4] + 1) = v52[0];
    memcpy(&v38[14] + 1, v51, 0x190uLL);
    memcpy(v13, v38, 0x201uLL);
    sub_21430C56C(v38, &v39);
    __swift_destroy_boxed_opaque_existential_1(v64);
    v45 = v52[1];
    v46 = v52[2];
    v47 = v52[3];
    v48 = v52[4];
    v39 = v19;
    v40 = v22;
    v41 = v23;
    v42 = v24;
    v43 = v25;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD000000000000036;
    v26[1] = v21;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(&v55, &qword_27C909E68, &qword_214761070);
    sub_213FB2DF4(v53, &qword_27C909E50, &unk_2146F5B30);
    (*(v12 + 8))(v9, v5);
    v27 = v33;

    v29 = v36;
    v28 = v37;
    sub_213FDC6D0(v36, v37);
    __swift_destroy_boxed_opaque_existential_1(v64);
    v45 = v52[1];
    v46 = v52[2];
    v47 = v52[3];
    v48 = v52[4];
    v39 = v19;
    v40 = v27;
    v41 = v29;
    v42 = v28;
    v43 = v34;
  }

  v44 = v52[0];
  memcpy(v49, v51, sizeof(v49));
  return sub_21430C4C4(&v39);
}

uint64_t sub_214221DE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A210, &qword_2146F5CE8);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  v10 = *(v1 + 88);
  v27 = *(v1 + 72);
  v28[0] = v10;
  *(v28 + 9) = *(v1 + 97);
  v25 = *(v1 + 40);
  v26 = v9;
  memcpy(v29, (v1 + 120), 0x189uLL);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C518();
  sub_2146DAA28();
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17[0] = v7;
    v17[1] = v8;
    v16[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    v12 = v15[1];
    sub_2146DA388();
    if (v12)
    {
      return (*(v30 + 8))(v6, v3);
    }

    else
    {
      v23 = v27;
      v24[0] = v28[0];
      *(v24 + 9) = *(v28 + 9);
      v21 = v25;
      v22 = v26;
      v20 = 1;
      sub_213FB2E54(&v25, v17, &qword_27C909E68, &qword_214761070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E68, &qword_214761070);
      sub_21430A7EC();
      sub_2146DA388();
      v18[2] = v23;
      *v19 = v24[0];
      *&v19[9] = *(v24 + 9);
      v18[0] = v21;
      v18[1] = v22;
      sub_213FB2DF4(v18, &qword_27C909E68, &qword_214761070);
      memcpy(v17, v29, 0x189uLL);
      v16[399] = 2;
      sub_213FB2E54(v29, v16, &qword_27C909E50, &unk_2146F5B30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909E50, &unk_2146F5B30);
      sub_21430A714();
      sub_2146DA388();
      v13 = (v30 + 8);
      memcpy(v16, v17, 0x189uLL);
      sub_213FB2DF4(v16, &qword_27C909E50, &unk_2146F5B30);
      return (*v13)(v6, v3);
    }
  }

  return result;
}

uint64_t sub_2142221B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2145B2ED8(&v17);
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000003ALL;
  v18 = 0x80000002147919C0;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;
  v10 = v5;

  sub_213FDC9D0(v7, v8);
  v11 = v10(v16, &v22, &v17);
  if (v15)
  {

    sub_213FDC6D0(v7, v8);
  }

  else
  {
    if (v11)
    {
      sub_213FDC6D0(v7, v8);

      sub_213FDC6D0(v7, v8);

      *a3 = v10;
      *(a3 + 8) = v6;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD00000000000003ALL;
    v13[1] = 0x80000002147919C0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6D0(v7, v8);
  }

  return sub_213FDC6D0(v7, v8);
}

uint64_t sub_2142223A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B616873646E6168 && a2 == 0xEE006E656B6F5465)
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

uint64_t sub_214222434(uint64_t a1)
{
  v2 = sub_21430C5C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214222470(uint64_t a1)
{
  v2 = sub_21430C5C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142224AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A218, &qword_2146F5CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C5C8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_2142E12FC();
  sub_2146DA1C8();
  v28 = a2;
  v12 = v36;
  v13 = v37;
  sub_2145B2ED8(&v36);
  v14 = v37;
  v33 = v36;
  v15 = v38;
  v16 = v39;
  v29 = v12;
  v35[0] = v12;
  v35[1] = v13;
  v31 = v13;
  v41 = v40;
  v42 = v40;
  v36 = 0xD00000000000003ALL;
  v37 = 0x80000002147919C0;
  v38 = 0xD00000000000001CLL;
  v39 = 0x800000021478A360;

  v34 = v15;
  v32 = v16;
  v17 = v16;
  v18 = v33;
  sub_213FDC9D0(v15, v17);
  v30 = v14;
  v19 = v18(v35, &v42, &v36);
  v20 = v41;
  if (v19)
  {
    v21 = v32;
    sub_213FDC6D0(v34, v32);

    (*(v6 + 8))(v9, v5);
    v22 = v30;

    sub_213FDC6D0(v34, v21);
    v23 = v28;
    *v28 = v33;
    v23[1] = v22;
    v24 = v31;
    v23[2] = v29;
    v23[3] = v24;
    *(v23 + 32) = v20;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v25 = 0xD00000000000003ALL;
  v25[1] = 0x80000002147919C0;
  v25[2] = 0xD00000000000001CLL;
  v25[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  v26 = v34;
  v27 = v32;
  sub_213FDC6D0(v34, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FDC6D0(v26, v27);
}

__n128 sub_21422287C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, char a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13 & 1;
  return result;
}

uint64_t sub_2142228B4()
{
  v1 = *v0;
  v2 = 0x6E6F6974706163;
  v3 = 0x6275536567616D69;
  if (v1 != 5)
  {
    v3 = 0x6F69746341706174;
  }

  v4 = 0x7469546567616D69;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 0x6974706163627573;
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

uint64_t sub_2142229A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437A5EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142229D0(uint64_t a1)
{
  v2 = sub_21430C61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214222A0C(uint64_t a1)
{
  v2 = sub_21430C61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214222A48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A230, &qword_2146F5D00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C61C();
  sub_2146DAA08();
  if (!v2)
  {
    v35 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v38 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v11 = v37;
    v34 = v36;
    v38 = 1;
    sub_2146DA1C8();
    v33 = v11;
    v12 = v36;
    v32 = v37;
    v38 = 2;
    sub_2146DA1C8();
    v30 = v36;
    v31 = v12;
    v13 = v37;
    v38 = 3;
    sub_2146DA1C8();
    v29 = v13;
    v14 = v36;
    v28 = v37;
    v38 = 4;
    sub_2146DA1C8();
    v26 = v14;
    v15 = v36;
    v27 = v37;
    v38 = 5;
    sub_2146DA1C8();
    v16 = v27;
    v17 = v37;
    v25 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    v38 = 6;
    sub_2142E11FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v19 = v37;
    v20 = v15;
    v22 = v35;
    v21 = v36;
    *v35 = v34;
    v22[1] = v33;
    v22[2] = v31;
    v22[3] = v32;
    v22[4] = v30;
    v22[5] = v29;
    v22[6] = v26;
    v22[7] = v28;
    v22[8] = v20;
    v23 = v25;
    v22[9] = v16;
    v22[10] = v23;
    v22[11] = v17;
    v22[12] = v21;
    *(v22 + 104) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214222F08(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A240, &qword_2146F5D08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v28 = v1[3];
  v29 = v10;
  v11 = v1[4];
  v26 = v1[5];
  v27 = v11;
  v12 = v1[7];
  v24 = v1[6];
  v25 = v12;
  v13 = v1[9];
  v22 = v1[8];
  v23 = v13;
  v14 = v1[11];
  v20 = v1[10];
  v21 = v14;
  v19 = v1[12];
  v33 = *(v1 + 104);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C61C();

  sub_2146DAA28();
  v31 = v9;
  v32 = v8;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v16 = v30;
  sub_2146DA388();
  if (v16)
  {
  }

  else
  {
    v17 = v27;

    v31 = v29;
    v32 = v28;
    v34 = 1;
    sub_2146DA388();
    v31 = v17;
    v32 = v26;
    v34 = 2;
    sub_2146DA388();
    v31 = v24;
    v32 = v25;
    v34 = 3;
    sub_2146DA388();
    v31 = v22;
    v32 = v23;
    v34 = 4;
    sub_2146DA388();
    v31 = v20;
    v32 = v21;
    v34 = 5;
    sub_2146DA388();
    v31 = v19;
    LOBYTE(v32) = v33;
    v34 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904798, qword_21473CFD0);
    sub_2142E1C30();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

__n128 sub_21422327C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_214061854(v21);
  v4 = v21[8];
  v5 = v21[10];
  v6 = v21[11];
  *(a2 + 392) = v21[9];
  *(a2 + 408) = v5;
  *(a2 + 424) = v6;
  v7 = v21[4];
  v8 = v21[6];
  v9 = v21[7];
  *(a2 + 328) = v21[5];
  *(a2 + 344) = v8;
  *(a2 + 360) = v9;
  *(a2 + 376) = v4;
  v10 = v21[1];
  *(a2 + 248) = v21[0];
  v11 = v21[2];
  v12 = v21[3];
  *(a2 + 264) = v10;
  *(a2 + 280) = v11;
  *(a2 + 296) = v12;
  *(a2 + 312) = v7;
  *(a2 + 240) = 0;
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
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v13 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v13;
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 240) = *(a1 + 240);
  v14 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v14;
  v15 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v15;
  v16 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v16;
  v17 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v17;
  v18 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v18;
  result = *(a1 + 32);
  v20 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v20;
  return result;
}

uint64_t sub_214223380(uint64_t a1)
{
  v2 = sub_21430C670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142233BC(uint64_t a1)
{
  v2 = sub_21430C670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142233F8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A248, &qword_2146F5D10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-v7 - 8];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C670();
  sub_2146DAA08();
  if (!v2)
  {
    v21 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0);
    sub_2146DA1C8();
    (*(v21 + 8))(v8, v4);
    sub_214061854(v23);
    v10 = v25;
    v11 = v23[8];
    v12 = v23[10];
    v13 = v23[11];
    *(v25 + 392) = v23[9];
    *(v10 + 408) = v12;
    *(v10 + 424) = v13;
    v14 = v23[4];
    v15 = v23[6];
    v16 = v23[7];
    *(v10 + 328) = v23[5];
    *(v10 + 344) = v15;
    *(v10 + 360) = v16;
    *(v10 + 376) = v11;
    v17 = v23[1];
    *(v10 + 248) = v23[0];
    v18 = v23[2];
    v19 = v23[3];
    *(v10 + 264) = v17;
    *(v10 + 280) = v18;
    *(v10 + 296) = v19;
    *(v10 + 312) = v14;
    *(v10 + 30) = 0;
    *(v10 + 13) = 0u;
    *(v10 + 14) = 0u;
    *(v10 + 11) = 0u;
    *(v10 + 12) = 0u;
    *(v10 + 9) = 0u;
    *(v10 + 10) = 0u;
    *(v10 + 7) = 0u;
    *(v10 + 8) = 0u;
    *(v10 + 5) = 0u;
    *(v10 + 6) = 0u;
    *(v10 + 3) = 0u;
    *(v10 + 4) = 0u;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    memcpy(v22, v24, sizeof(v22));
    sub_213FB2DF4(v10, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v10, v22, 0x1B8uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214223734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C4374756F79616CLL && a2 == 0xEB00000000737361)
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

uint64_t sub_2142237C0(uint64_t a1)
{
  v2 = sub_21430C6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142237FC(uint64_t a1)
{
  v2 = sub_21430C6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2142238F0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x74536D6F72467369;
  }

  *v0;
  return result;
}

uint64_t sub_21422393C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74536D6F72467369 && a2 == 0xED0000656761726FLL;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000214796B70 == a2)
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

uint64_t sub_214223A28(uint64_t a1)
{
  v2 = sub_21430C718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214223A64(uint64_t a1)
{
  v2 = sub_21430C718();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *sub_214223B58@<X0>(_BYTE *result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, _BYTE *a5@<X8>)
{
  *a5 = *result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_214223B70()
{
  v1 = 0x65636E6569647561;
  v2 = 0x6B726F46656D616ELL;
  if (*v0 != 2)
  {
    v2 = 0x726F466567616D69;
  }

  if (*v0)
  {
    v1 = 0x45676E6972616873;
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

uint64_t sub_214223C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437A858(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214223C2C(uint64_t a1)
{
  v2 = sub_21430C76C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214223C68(uint64_t a1)
{
  v2 = sub_21430C76C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214223CA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A288, &qword_2146F5D40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C76C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A298, &qword_2146F5D48);
    v23 = 0;
    sub_21430C7C0();
    sub_2146DA1C8();
    v16 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    v21 = 1;
    sub_2142E1378();
    sub_2146DA1C8();
    v15 = v22;
    v19 = 2;
    sub_2146DA1C8();
    HIDWORD(v14) = v20;
    v17 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v18;
    v13 = v15;
    *a2 = v16;
    a2[1] = v13;
    a2[2] = BYTE4(v14);
    a2[3] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214223F34(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2B0, &qword_2146F5D50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v16 = v1[2];
  v17 = v10;
  HIDWORD(v15) = v1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C76C();
  sub_2146DAA28();
  v25 = v9;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A298, &qword_2146F5D48);
  sub_21430C898();
  sub_2146DA388();
  if (!v2)
  {
    v12 = BYTE4(v15);
    v13 = v16;
    v23 = v17;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    v21 = v13;
    v20 = 2;
    sub_2146DA388();
    v19 = v12;
    v18 = 3;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

double sub_2142241A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, char a12, uint64_t a13, unint64_t a14)
{
  sub_2146ABB50(&v73);
  v16 = v73;
  v18 = v74;
  v17 = v75;
  v19 = v76;
  sub_2146ABCA4(&v118);
  v70 = v118;
  v37 = v119;
  v39 = v120;
  v35 = v121;
  v68 = v122;
  sub_2146ABE0C(v116);
  v129 = v116[0];
  v40 = v116[1];
  v42 = v116[2];
  v64 = v116[3];
  v71 = v117;
  sub_2146ABF7C(v114);
  v63 = v114[0];
  v60 = v114[2];
  v43 = v114[1];
  v45 = v114[3];
  v61 = v115;
  sub_2146AC0EC(v112);
  v52 = v112[0];
  v54 = v112[2];
  v55 = v112[1];
  v56 = v112[3];
  v50 = v113;
  sub_2146AC25C(&v108);
  v48 = v108;
  v46 = v109;
  v49 = v110;
  v47 = v111;
  v118 = a1;
  v119 = a2;
  LOBYTE(v116[0]) = v19;
  *&v73 = 0xD000000000000052;
  *(&v73 + 1) = 0x8000000214791A00;
  v74 = 0xD00000000000001CLL;
  v75 = 0x800000021478A360;

  sub_213FDC9D0(v18, v17);
  v20 = (v16)(&v118, v116, &v73);
  if (!v33)
  {
    if (v20)
    {
      sub_213FDC6D0(v18, v17);

      sub_213FDC6D0(v18, v17);
      *&v73 = v70;
      *(&v73 + 1) = v37;
      v74 = v39;
      v75 = v35;
      v76 = v68;

      sub_21404F7E0(v39, v35);
      sub_214032118(a3, a4, 2, 0xD00000000000004FLL, 0x8000000214791A60, 0xD00000000000001CLL, 0x800000021478A360);

      v22 = v73;
      v31 = v74;
      v34 = v75;
      v69 = v76;

      sub_214032564(v39, v35);
      *&v73 = v129;
      *(&v73 + 1) = v40;
      v74 = v42;
      v75 = v64;
      v76 = v71;

      sub_21404F7E0(v42, v64);
      sub_214032118(a5, a6, 2, 0xD000000000000042, 0x8000000214791AB0, 0xD00000000000001CLL, 0x800000021478A360);

      v30 = *(&v73 + 1);
      v129 = v73;
      v36 = v74;
      v38 = v75;
      v72 = v76;

      sub_214032564(v42, v64);
      *&v73 = v63;
      *(&v73 + 1) = v43;
      v74 = v60;
      v75 = v45;
      v76 = v61;

      sub_21404F7E0(v60, v45);
      sub_214032118(a7, a8, 2, 0xD000000000000048, 0x8000000214791B00, 0xD00000000000001CLL, 0x800000021478A360);

      v23 = v73;
      v24 = v75;
      v65 = v74;
      v62 = v76;

      sub_214032564(v60, v45);
      *&v73 = v52;
      *(&v73 + 1) = v55;
      v74 = v54;
      v75 = v56;
      v76 = v50;

      sub_21404F7E0(v54, v56);
      sub_214032118(a10, a11, 2, 0xD000000000000046, 0x8000000214791B50, 0xD00000000000001CLL, 0x800000021478A360);

      v25 = v73;
      v41 = v74;
      v44 = v75;
      v51 = v76;

      sub_214032564(v54, v56);
      v73 = v48;
      v74 = v46;
      v75 = v49;
      v76 = v47;

      sub_21404F7E0(v46, v49);
      sub_214032118(a13, a14, 2, 0xD000000000000045, 0x8000000214791BA0, 0xD00000000000001CLL, 0x800000021478A360);
      sub_213FDC6BC(a13, a14);
      sub_213FDC6BC(a10, a11);
      sub_213FDC6BC(a7, a8);
      sub_213FDC6BC(a5, a6);
      sub_213FDC6BC(a3, a4);

      v26 = v74;
      v27 = v75;
      v28 = v76;

      sub_214032564(v46, v49);
      *a9 = v16;
      *(a9 + 16) = a1;
      *(a9 + 24) = a2;
      *(a9 + 32) = v19;
      *(a9 + 33) = v128[0];
      *(a9 + 36) = *(v128 + 3);
      *(a9 + 40) = v22;
      *(a9 + 56) = v31;
      *(a9 + 64) = v34;
      *(a9 + 72) = v69;
      *(a9 + 73) = *v127;
      *(a9 + 76) = *&v127[3];
      *(a9 + 80) = v129;
      *(a9 + 88) = v30;
      *(a9 + 96) = v36;
      *(a9 + 104) = v38;
      *(a9 + 112) = v72;
      *(a9 + 113) = *v126;
      *(a9 + 116) = *&v126[3];
      *(a9 + 120) = v23;
      *(a9 + 136) = v65;
      *(a9 + 144) = v24;
      *(a9 + 152) = v62;
      *(a9 + 153) = *v125;
      *(a9 + 156) = *&v125[3];
      *(a9 + 160) = v25;
      *(a9 + 176) = v41;
      *(a9 + 184) = v44;
      *(a9 + 192) = v51;
      *(a9 + 193) = a12;
      *(a9 + 198) = v124;
      *(a9 + 194) = v123;
      result = *&v73;
      *(a9 + 200) = v73;
      *(a9 + 216) = v26;
      *(a9 + 224) = v27;
      *(a9 + 232) = v28;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000052;
    v21[1] = 0x8000000214791A00;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6BC(a13, a14);
  sub_213FDC6BC(a10, a11);
  sub_213FDC6BC(a7, a8);
  sub_213FDC6BC(a5, a6);
  sub_213FDC6BC(a3, a4);

  sub_213FDC6D0(v18, v17);
  v73 = v16;
  v74 = v18;
  v75 = v17;
  v76 = v19;
  *v77 = v128[0];
  *&v77[3] = *(v128 + 3);
  v78 = v70;
  v79 = v37;
  v80 = v39;
  v81 = v35;
  v82 = v68;
  *v83 = *v127;
  *&v83[3] = *&v127[3];
  v84 = v129;
  v85 = v40;
  v86 = v42;
  v87 = v64;
  v88 = v71;
  *&v89[3] = *&v126[3];
  *v89 = *v126;
  v90 = v63;
  v91 = v43;
  v92 = v60;
  v93 = v45;
  v94 = v61;
  *v95 = *v125;
  *&v95[3] = *&v125[3];
  v96 = v52;
  v97 = v55;
  v98 = v54;
  v99 = v56;
  v100 = v50;
  v101 = a12;
  v103 = v124;
  v102 = v123;
  v104 = v48;
  v105 = v46;
  v106 = v49;
  v107 = v47;
  sub_2142F9DF8(&v73);
  return result;
}

unint64_t sub_214224E2C()
{
  v1 = *v0;
  v2 = 0x706C6C6157736168;
  if (v1 != 5)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000016;
  if (v1 != 3)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001DLL;
  if (v1 != 1)
  {
    v4 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000020;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214224F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437A9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214224F48(uint64_t a1)
{
  v2 = sub_21430C970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214224F84(uint64_t a1)
{
  v2 = sub_21430C970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214224FC0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2C8, &qword_2146F5D58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v70 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v184 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430C970();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v184);
  }

  v118 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v119[0] = 0;
  sub_2142E12FC();
  sub_2146DA1C8();
  v117 = v6;
  v12 = v5;
  v13 = v131;
  v14 = *v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v119[0] = 1;
  v15 = sub_2142E1278();
  sub_2146DA1C8();
  *&v116 = v13;
  *(&v116 + 1) = v14;
  v16 = v131;
  v17 = v15;
  v18 = *v132;
  v119[0] = 2;
  sub_2146DA1C8();
  v114 = v16;
  v115 = v18;
  v19 = v131;
  v20 = *v132;
  v119[0] = 3;
  sub_2146DA1C8();
  v112 = v20;
  v113 = v19;
  v21 = v131;
  v22 = *v132;
  v119[0] = 4;
  sub_2146DA1C8();
  v110 = v17;
  v111 = v21;
  v23 = v131;
  v24 = *v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v119[0] = 5;
  sub_2142E1378();
  sub_2146DA1C8();
  v109 = v23;
  LODWORD(v23) = v131;
  v175 = 6;
  sub_2146DA1C8();
  v90 = v24;
  v92 = v22;
  v79 = v12;
  v81 = v23;
  v82 = v177;
  v83 = v176;
  sub_2146ABB50(&v131);
  v110 = v131;
  v26 = *v132;
  v27 = *&v132[8];
  v28 = *&v132[16];
  v29 = v133;
  sub_2146ABCA4(v119);
  v106 = *&v119[8];
  v108 = *v119;
  v105 = *&v119[24];
  v107 = v120;
  sub_2146ABE0C(&v171);
  v101 = v171;
  v96 = v172;
  v103 = *(&v171 + 1);
  v104 = v173;
  v100 = v174;
  sub_2146ABF7C(v169);
  v91 = v169[0];
  v99 = v169[2];
  v97 = v169[1];
  v98 = v169[3];
  v95 = v170;
  sub_2146AC0EC(v166);
  v89 = v166[0];
  v93 = v166[1];
  v94 = v167;
  v88 = v168;
  sub_2146AC25C(&v162);
  v86 = v162;
  v87 = v163;
  v84 = v164;
  v85 = v165;
  *v119 = v116;
  v80 = v29;
  LOBYTE(v171) = v29;
  v131 = 0xD000000000000052;
  *v132 = 0x8000000214791A00;
  *&v132[8] = 0xD00000000000001CLL;
  *&v132[16] = 0x800000021478A360;

  sub_213FDC9D0(v27, v28);
  v102 = v26;
  v30 = v110(v119, &v171, &v131);
  if (v30)
  {
    sub_213FDC6D0(v27, v28);

    sub_213FDC6D0(v27, v28);
    v131 = v108;
    v31 = *(&v106 + 1);
    *v132 = v106;
    v32 = v105;
    *&v132[16] = v105;
    v133 = v107;

    sub_21404F7E0(v31, v32);
    sub_214032118(v114, v115, 2, 0xD00000000000004FLL, 0x8000000214791A60, 0xD00000000000001CLL, 0x800000021478A360);

    v108 = v131;
    v77 = *v132;
    v78 = *&v132[16];
    v107 = v133;

    sub_214032564(v31, v32);
    v131 = v101;
    v42 = v104;
    *v132 = v103;
    v43 = v96;
    *&v132[8] = v96;
    *&v132[16] = v104;
    v133 = v100;

    sub_21404F7E0(v43, v42);
    sub_214032118(v113, v112, 2, 0xD000000000000042, 0x8000000214791AB0, 0xD00000000000001CLL, 0x800000021478A360);

    v101 = v131;
    v75 = *v132;
    v76 = *&v132[8];
    v100 = v133;

    sub_214032564(v96, v104);
    v131 = v91;
    v44 = v98;
    *v132 = v97;
    v45 = v99;
    *&v132[8] = v99;
    *&v132[16] = v98;
    v133 = v95;

    sub_21404F7E0(v45, v44);
    sub_214032118(v111, v92, 2, 0xD000000000000048, 0x8000000214791B00, 0xD00000000000001CLL, 0x800000021478A360);

    v91 = v131;
    v46 = *v132;
    v96 = *&v132[8];
    v74 = *&v132[16];
    v95 = v133;

    sub_214032564(v99, v98);
    v131 = v89;
    v47 = v94;
    *v132 = v93;
    v48 = *(&v94 + 1);
    *&v132[8] = v94;
    v133 = v88;

    sub_21404F7E0(v47, v48);
    sub_214032118(v109, v90, 2, 0xD000000000000046, 0x8000000214791B50, 0xD00000000000001CLL, 0x800000021478A360);

    v89 = v131;
    v72 = *v132;
    v73 = *&v132[8];
    v88 = v133;

    sub_214032564(v94, *(&v94 + 1));
    v171 = v86;
    v49 = v87;
    v50 = v84;
    v172 = v87;
    v173 = v84;
    v174 = v85;

    sub_21404F7E0(v49, v50);
    sub_214032118(v83, v82, 2, 0xD000000000000045, 0x8000000214791BA0, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v109, v90);
    sub_213FDC6BC(v111, v92);
    sub_213FDC6BC(v113, v112);
    sub_213FDC6BC(v114, v115);
    sub_213FDC6BC(v83, v82);
    (*(v117 + 8))(v9, v79);
    v51 = v171;
    v117 = v171;
    v52 = v172;
    v114 = v172;
    v115 = *(&v171 + 1);
    v113 = v173;
    v53 = v174;

    sub_214032564(v87, v84);
    *(&v120 + 1) = v183[0];
    DWORD1(v120) = *(v183 + 3);
    *(&v122 + 9) = *v182;
    HIDWORD(v122) = *&v182[3];
    *(&v125 + 1) = *v181;
    DWORD1(v125) = *&v181[3];
    *(&v127 + 9) = *v180;
    HIDWORD(v127) = *&v180[3];
    *&v130[6] = v179;
    *&v130[2] = v178;
    v54 = v102;
    *&v119[8] = v102;
    *&v119[16] = v116;
    LOBYTE(v120) = v80;
    *(&v120 + 1) = v108;
    v121 = v77;
    *&v122 = v78;
    BYTE8(v122) = v107;
    *&v123 = v101;
    *(&v123 + 1) = v75;
    v124 = v76;
    LOBYTE(v125) = v100;
    *(&v125 + 1) = v91;
    v71 = v46;
    *&v126 = v46;
    *(&v126 + 1) = v96;
    v55 = v74;
    *&v127 = v74;
    BYTE8(v127) = v95;
    *&v128 = v89;
    *(&v128 + 1) = v72;
    v129 = v73;
    v130[0] = v88;
    v130[1] = v81;
    *&v130[8] = v51;
    *&v130[24] = v52;
    v56 = v113;
    *&v130[32] = v113;
    v130[40] = v53;
    v57 = *&v130[25];
    v58 = v110;
    *v119 = v110;
    v59 = v116;
    v60 = v118;
    *v118 = *v119;
    v60[1] = v59;
    v61 = v120;
    v62 = v121;
    v63 = v123;
    v60[4] = v122;
    v60[5] = v63;
    v60[2] = v61;
    v60[3] = v62;
    v64 = v124;
    v65 = v125;
    v66 = v127;
    v60[8] = v126;
    v60[9] = v66;
    v60[6] = v64;
    v60[7] = v65;
    v67 = v128;
    v68 = v129;
    *(v60 + 217) = v57;
    v69 = *&v130[16];
    v60[12] = *v130;
    v60[13] = v69;
    v60[10] = v67;
    v60[11] = v68;
    sub_2142FA098(v119, &v131);
    __swift_destroy_boxed_opaque_existential_1(v184);
    v131 = v58;
    *v132 = v54;
    *&v132[8] = v116;
    v133 = v80;
    *v134 = v183[0];
    *&v134[3] = *(v183 + 3);
    v135 = v108;
    v136 = v77;
    v137 = v78;
    v138 = v107;
    *v139 = *v182;
    *&v139[3] = *&v182[3];
    v140 = v101;
    v141 = v75;
    v142 = v76;
    v143 = v100;
    *v144 = *v181;
    *&v144[3] = *&v181[3];
    v145 = v91;
    v146 = v71;
    v147 = v96;
    v148 = v55;
    v149 = v95;
    *v150 = *v180;
    *&v150[3] = *&v180[3];
    v151 = v89;
    v152 = v72;
    v153 = v73;
    v154 = v88;
    v155 = v81;
    v157 = v179;
    v156 = v178;
    *&v158 = v117;
    *(&v158 + 1) = v115;
    v159 = v114;
    v160 = v56;
    v161 = v53;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000052;
    v33[1] = 0x8000000214791A00;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v109, v90);
    v34 = v81;
    v35 = v113;
    sub_213FDC6BC(v111, v92);
    sub_213FDC6BC(v35, v112);
    sub_213FDC6BC(v114, v115);
    sub_213FDC6BC(v83, v82);
    (*(v117 + 8))(v9, v79);
    v36 = v102;

    sub_213FDC6D0(v27, v28);
    v117 = v28;
    v118 = v27;
    v37 = v89;
    v38 = v88;
    v39 = v91;
    v40 = v84;
    v41 = v96;
    __swift_destroy_boxed_opaque_existential_1(v184);
    v131 = v110;
    *v132 = v36;
    *&v132[8] = v118;
    *&v132[16] = v117;
    v133 = v80;
    *v134 = v183[0];
    *&v134[3] = *(v183 + 3);
    v135 = v108;
    v136 = v106;
    v137 = v105;
    v138 = v107;
    *v139 = *v182;
    *&v139[3] = *&v182[3];
    v140 = v101;
    v141 = v103;
    *&v142 = v41;
    *(&v142 + 1) = v104;
    v143 = v100;
    *&v144[3] = *&v181[3];
    *v144 = *v181;
    v145 = v39;
    v146 = v97;
    v147 = v99;
    v148 = v98;
    v149 = v95;
    *&v150[3] = *&v180[3];
    *v150 = *v180;
    v151 = v37;
    v152 = v93;
    v153 = v94;
    v154 = v38;
    v155 = v34;
    v157 = v179;
    v156 = v178;
    v158 = v86;
    v159 = v87;
    v160 = v40;
    v161 = v85;
  }

  return sub_2142F9DF8(&v131);
}

uint64_t sub_214226284(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2D8, &qword_2146F5D60);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 104);
  v27 = *(v1 + 96);
  v28 = v8;
  v26 = v10;
  v11 = *(v1 + 136);
  v24 = *(v1 + 144);
  v25 = v11;
  v12 = *(v1 + 176);
  v22 = *(v1 + 184);
  v23 = v12;
  v32 = *(v1 + 193);
  v13 = *(v1 + 216);
  v20 = *(v1 + 224);
  v21 = v13;
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = &v20 - v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_21430C970();
  sub_2146DAA28();
  if (v6 != 1)
  {
    v30 = v7;
    v31 = v6;
    v33 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v2)
    {
      return (*(v29 + 8))(v18, v4);
    }

    if (v9 >> 60 != 11)
    {
      v30 = v28;
      v31 = v9;
      v33 = 1;
      sub_213FDCA18(v28, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
      sub_2142E1CAC();
      sub_2146DA388();
      sub_213FDC6BC(v30, v31);
      if (v26 >> 60 != 11)
      {
        v30 = v27;
        v31 = v26;
        v33 = 2;
        sub_213FDCA18(v27, v26);
        sub_2146DA388();
        sub_213FDC6BC(v30, v31);
        if (v24 >> 60 != 11)
        {
          v30 = v25;
          v31 = v24;
          v33 = 3;
          sub_213FDCA18(v25, v24);
          sub_2146DA388();
          sub_213FDC6BC(v30, v31);
          if (v22 >> 60 != 11)
          {
            v30 = v23;
            v31 = v22;
            v33 = 4;
            sub_213FDCA18(v23, v22);
            sub_2146DA388();
            sub_213FDC6BC(v30, v31);
            LOBYTE(v30) = v32;
            v33 = 5;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
            sub_2142E1D30();
            sub_2146DA388();
            if (v20 >> 60 != 11)
            {
              v30 = v21;
              v31 = v20;
              v33 = 6;
              sub_213FDCA18(v21, v20);
              sub_2146DA388();
              sub_213FDC6BC(v30, v31);
              return (*(v29 + 8))(v18, v4);
            }
          }
        }
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2142266C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2146ACB74(&v16);
  v7 = v16;
  v6 = v17;
  v8 = v18;
  v9 = v19;
  v21 = a3;
  v20 = v19;
  v16 = 0xD000000000000044;
  v17 = 0x8000000214791BF0;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  sub_213FBE134(v8);
  v10 = v7(&v21, &v20, &v16);
  if (v4)
  {
  }

  else
  {
    if (v10)
    {
      sub_213FB7170(v8);

      result = sub_213FB7170(v8);
      *a4 = a1;
      *(a4 + 8) = a2 & 1;
      *(a4 + 16) = v7;
      *(a4 + 24) = v6;
      *(a4 + 32) = a3;
      *(a4 + 40) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000044;
    v12[1] = 0x8000000214791BF0;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB7170(v8);

  return sub_213FB7170(v8);
}

unint64_t sub_214226868()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD00000000000001ELL;
  }

  *v0;
  return result;
}

uint64_t sub_2142268A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001ELL && 0x8000000214796BE0 == a2;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000214796C00 == a2)
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

uint64_t sub_214226988(uint64_t a1)
{
  v2 = sub_21430C9C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142269C4(uint64_t a1)
{
  v2 = sub_21430C9C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214226A00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2E0, &qword_2146F5D68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C9C4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v35) = 0;
  sub_2142E3570();
  sub_2146DA1C8();
  v11 = v30;
  v12 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v35) = 1;
  sub_2142E1548();
  sub_2146DA1C8();
  v24 = v12;
  v25 = v11;
  v14 = v30;
  sub_2146ACB74(&v30);
  v15 = v31;
  v28 = v14;
  v29 = v30;
  v16 = v32;
  v35 = v14;
  v23 = v33;
  v34 = v33;
  v30 = 0xD000000000000044;
  v31 = 0x8000000214791BF0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v27 = v16;
  sub_213FBE134(v16);
  v26 = v15;
  v17 = v29(&v35, &v34, &v30);
  if (v17)
  {
    v18 = v27;
    sub_213FB7170(v27);

    (*(v6 + 8))(v9, v5);
    v19 = v26;

    sub_213FB7170(v18);
    *a2 = v25;
    *(a2 + 8) = v24;
    v20 = v28;
    *(a2 + 16) = v29;
    *(a2 + 24) = v19;
    *(a2 + 32) = v20;
    *(a2 + 40) = v23;

    sub_213FBE134(v20);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000044;
    v21[1] = 0x8000000214791BF0;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    v20 = v27;
    sub_213FB7170(v27);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FB7170(v20);
}

uint64_t sub_214226DAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2F0, &qword_2146F5D70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13[0] = v1[4];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430C9C4();
  sub_2146DAA28();
  v14 = v8;
  v15 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  v11 = v13[1];
  sub_2146DA388();
  if (v11)
  {
    return (*(v4 + 8))(v7, v3);
  }

  if (v13[0] != 1)
  {
    v14 = v13[0];
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214226FF8@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2146ACDE8(&v29);
  v10 = v29;
  v9 = v30;
  v27 = v29;
  v11 = v31;
  v12 = v32;
  sub_2146AD02C(v40);
  v22 = v40[1];
  v23 = v40[0];
  v25 = v41;
  v26 = v12;
  v40[0] = a3;
  v43 = v12;
  v28 = v40[2];
  v29 = 0xD000000000000035;
  v30 = 0x8000000214791C40;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;

  sub_213FBE134(v11);
  v13 = v10(v40, &v43, &v29);
  if (v5)
  {

LABEL_6:
    a3 = v11;
    v14 = v25;
    v15 = v22;
    v16 = v23;
LABEL_7:

    sub_213FB7170(v11);
    v29 = a1;
    LOBYTE(v30) = a2 & 1;
    *(&v30 + 1) = *v44;
    HIDWORD(v30) = *&v44[3];
    v31 = v27;
    v32 = v9;
    v33 = a3;
    v34 = v26;
    *v35 = v42[0];
    *&v35[3] = *(v42 + 3);
    v36 = v16;
    v37 = v15;
    v38 = v28;
    v39 = v14;
    return sub_2142F9EF4(&v29);
  }

  if ((v13 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000035;
    v18[1] = 0x8000000214791C40;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FB7170(v11);

  sub_213FB7170(v11);
  v40[0] = a4;
  v14 = v25;
  v43 = v25;
  v29 = 0xD000000000000034;
  v30 = 0x8000000214791C80;
  v31 = 0xD00000000000001CLL;
  v32 = 0x800000021478A360;
  v15 = v22;

  sub_213FBE134(v28);
  v16 = v23;
  v17 = v23(v40, &v43, &v29);
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000034;
    v20[1] = 0x8000000214791C80;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    v11 = v28;
    goto LABEL_7;
  }

  sub_213FB7170(v28);

  result = sub_213FB7170(v28);
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = v27;
  *(a5 + 24) = v9;
  *(a5 + 32) = a3;
  *(a5 + 40) = v26;
  *(a5 + 48) = v23;
  *(a5 + 56) = v22;
  *(a5 + 64) = a4;
  *(a5 + 72) = v25;
  return result;
}

unint64_t sub_214227378()
{
  v1 = 0x73694C776F6C6C61;
  if (*v0 != 1)
  {
    v1 = 0x7473694C796E6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_2142273DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437AC18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214227404(uint64_t a1)
{
  v2 = sub_21430CA18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214227440(uint64_t a1)
{
  v2 = sub_21430CA18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422747C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A2F8, &qword_2146F5D78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CA18();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v57) = 0;
  sub_2142E3570();
  sub_2146DA1C8();
  v56 = a2;
  v77 = v62;
  v11 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v57) = 1;
  sub_2142E1548();
  sub_2146DA1C8();
  v55 = v11;
  v13 = v62;
  v73 = 2;
  sub_2146DA1C8();
  v48 = v74;
  sub_2146ACDE8(&v62);
  v14 = v63;
  v52 = v62;
  v15 = v64;
  v16 = v65;
  sub_2146AD02C(&v57);
  v47 = *(&v57 + 1);
  v49 = v57;
  v50 = v58;
  v51 = BYTE8(v58);
  v54 = v13;
  *&v57 = v13;
  v46 = v16;
  LOBYTE(v61) = v16;
  v62 = 0xD000000000000035;
  v63 = 0x8000000214791C40;
  v45 = 0x8000000214791C40;
  v64 = 0xD00000000000001CLL;
  v65 = 0x800000021478A360;

  v53 = v15;
  sub_213FBE134(v15);
  v17 = v14;
  v18 = v52(&v57, &v61, &v62);
  v19 = v51;
  v43 = 0x800000021478A360;
  v20 = v53;
  v44 = v17;
  if (v18)
  {
    sub_213FB7170(v53);
    v21 = v43;

    sub_213FB7170(v20);
    LOBYTE(v57) = v19;
    v61 = v48;
    v62 = 0xD000000000000034;
    v63 = 0x8000000214791C80;
    v64 = 0xD00000000000001CLL;
    v65 = v21;
    v22 = v47;

    sub_213FBE134(v50);
    v23 = v49(&v61, &v57, &v62);
    v29 = v44;
    if (v23)
    {
      v30 = v50;
      sub_213FB7170(v50);

      (*(v6 + 8))(v9, v5);

      sub_213FB7170(v30);
      *&v57 = v77;
      BYTE8(v57) = v55;
      v31 = v52;
      *&v58 = v52;
      v32 = v54;
      *(&v58 + 1) = v29;
      *&v59 = v54;
      v33 = v46;
      BYTE8(v59) = v46;
      v34 = v49;
      *v60 = v49;
      *&v60[8] = v22;
      v35 = v48;
      *&v60[16] = v48;
      v36 = v51;
      v60[24] = v51;
      v37 = *v60;
      v38 = v56;
      v56[2] = v59;
      v38[3] = v37;
      *(v38 + 57) = *&v60[9];
      v39 = v58;
      *v38 = v57;
      v38[1] = v39;
      sub_2142FA19C(&v57, &v62);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v62 = v77;
      LOBYTE(v63) = v55;
      v64 = v31;
      v65 = v44;
      v66 = v32;
      v67 = v33;
      v69 = v34;
      v70 = v22;
      v71 = v35;
      v72 = v36;
      return sub_2142F9EF4(&v62);
    }

    sub_214031C4C();
    swift_allocError();
    *v40 = 0xD000000000000034;
    v40[1] = 0x8000000214791C80;
    v41 = v43;
    v40[2] = 0xD00000000000001CLL;
    v40[3] = v41;
    swift_willThrow();

    v53 = v50;
    v27 = v29;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v24 = v45;
    *v25 = 0xD000000000000035;
    v25[1] = v24;
    v26 = v43;
    v25[2] = 0xD00000000000001CLL;
    v25[3] = v26;
    swift_willThrow();

    v27 = v44;
    v54 = v20;
  }

  v28 = v77;
  (*(v6 + 8))(v9, v5);

  sub_213FB7170(v53);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v62 = v28;
  LOBYTE(v63) = v55;
  *(&v63 + 1) = *v76;
  HIDWORD(v63) = *&v76[3];
  v64 = v52;
  v65 = v27;
  v66 = v54;
  v67 = v46;
  *v68 = *v75;
  *&v68[3] = *&v75[3];
  v69 = v49;
  v70 = v47;
  v71 = v50;
  v72 = v51;
  return sub_2142F9EF4(&v62);
}

uint64_t sub_214227C30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A308, &qword_2146F5D80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[4];
  v16 = v1[8];
  v17 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CA18();
  sub_2146DAA28();
  v19 = v8;
  v20 = v9;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  v12 = v18;
  sub_2146DA388();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v13 = v16;
  if (v17 != 1)
  {
    v19 = v17;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
    if (v13 != 1)
    {
      v19 = v13;
      v21 = 2;
      sub_2146DA388();
      return (*(v4 + 8))(v7, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214227EC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2146AD4A0(&v16);
  v7 = v16;
  v6 = v17;
  v8 = v18;
  v9 = v19;
  v21 = a3;
  v20 = v19;
  v16 = 0xD00000000000003ELL;
  v17 = 0x8000000214791CC0;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  sub_213FBE134(v8);
  v10 = v7(&v21, &v20, &v16);
  if (v4)
  {
  }

  else
  {
    if (v10)
    {
      sub_213FB7170(v8);

      result = sub_213FB7170(v8);
      *a4 = a1;
      *(a4 + 8) = a2 & 1;
      *(a4 + 16) = v7;
      *(a4 + 24) = v6;
      *(a4 + 32) = a3;
      *(a4 + 40) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD00000000000003ELL;
    v12[1] = 0x8000000214791CC0;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB7170(v8);

  return sub_213FB7170(v8);
}

unint64_t sub_21422806C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD00000000000001FLL;
  }

  *v0;
  return result;
}

uint64_t sub_2142280A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001FLL && 0x8000000214796C40 == a2;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000214795220 == a2)
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

uint64_t sub_21422818C(uint64_t a1)
{
  v2 = sub_21430CA6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142281C8(uint64_t a1)
{
  v2 = sub_21430CA6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214228204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A310, &qword_2146F5D88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CA6C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v35) = 0;
  sub_2142E3570();
  sub_2146DA1C8();
  v11 = v30;
  v12 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v35) = 1;
  sub_2142E1548();
  sub_2146DA1C8();
  v23 = v12;
  v24 = v11;
  v14 = v30;
  sub_2146AD4A0(&v30);
  v15 = v31;
  v27 = v14;
  v28 = v30;
  v16 = v32;
  v35 = v14;
  v22 = v33;
  v34 = v33;
  v30 = 0xD00000000000003ELL;
  v31 = 0x8000000214791CC0;
  v25 = 0x8000000214791CC0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v29 = v16;
  sub_213FBE134(v16);
  v26 = v15;
  v17 = v28(&v35, &v34, &v30);
  v18 = v25;
  if (v17)
  {
    sub_213FB7170(v29);

    (*(v6 + 8))(v9, v5);
    v19 = v26;

    sub_213FB7170(v29);
    *a2 = v24;
    *(a2 + 8) = v23;
    v20 = v27;
    *(a2 + 16) = v28;
    *(a2 + 24) = v19;
    *(a2 + 32) = v20;
    *(a2 + 40) = v22;

    sub_213FBE134(v20);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD00000000000003ELL;
    v21[1] = v18;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    v20 = v29;
    sub_213FB7170(v29);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FB7170(v20);
}

uint64_t sub_2142285B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A320, &qword_2146F5D90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13[0] = v1[4];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CA6C();
  sub_2146DAA28();
  v14 = v8;
  v15 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  v11 = v13[1];
  sub_2146DA388();
  if (v11)
  {
    return (*(v4 + 8))(v7, v3);
  }

  if (v13[0] != 1)
  {
    v14 = v13[0];
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214228800@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2146AD6E4(&v16);
  v7 = v16;
  v6 = v17;
  v8 = v18;
  v9 = v19;
  v21 = a3;
  v20 = v19;
  v16 = 0xD000000000000032;
  v17 = 0x8000000214791D00;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  sub_213FBE134(v8);
  v10 = v7(&v21, &v20, &v16);
  if (v4)
  {
  }

  else
  {
    if (v10)
    {
      sub_213FB7170(v8);

      result = sub_213FB7170(v8);
      *a4 = a1;
      *(a4 + 8) = a2 & 1;
      *(a4 + 16) = v7;
      *(a4 + 24) = v6;
      *(a4 + 32) = a3;
      *(a4 + 40) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000032;
    v12[1] = 0x8000000214791D00;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB7170(v8);

  return sub_213FB7170(v8);
}

unint64_t sub_2142289A8()
{
  if (*v0)
  {
    result = 0x694C657669746361;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_2142289EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000214796C60 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x694C657669746361 && a2 == 0xEA00000000007473)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_214228ADC(uint64_t a1)
{
  v2 = sub_21430CAC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214228B18(uint64_t a1)
{
  v2 = sub_21430CAC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214228B54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A328, &qword_2146F5D98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CAC0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v35) = 0;
  sub_2142E3570();
  sub_2146DA1C8();
  v11 = v30;
  v12 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A338, &qword_2146F5DA0);
  LOBYTE(v35) = 1;
  sub_21430CB14();
  sub_2146DA1C8();
  v24 = v12;
  v25 = v11;
  v14 = v30;
  sub_2146AD6E4(&v30);
  v15 = v31;
  v28 = v14;
  v29 = v30;
  v16 = v32;
  v35 = v14;
  v23 = v33;
  v34 = v33;
  v30 = 0xD000000000000032;
  v31 = 0x8000000214791D00;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v27 = v16;
  sub_213FBE134(v16);
  v26 = v15;
  v17 = v29(&v35, &v34, &v30);
  if (v17)
  {
    v18 = v27;
    sub_213FB7170(v27);

    (*(v6 + 8))(v9, v5);
    v19 = v26;

    sub_213FB7170(v18);
    *a2 = v25;
    *(a2 + 8) = v24;
    v20 = v28;
    *(a2 + 16) = v29;
    *(a2 + 24) = v19;
    *(a2 + 32) = v20;
    *(a2 + 40) = v23;

    sub_213FBE134(v20);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000032;
    v21[1] = 0x8000000214791D00;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    v20 = v27;
    sub_213FB7170(v27);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FB7170(v20);
}

uint64_t sub_214228F00(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A348, &qword_2146F5DA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13[0] = v1[4];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CAC0();
  sub_2146DAA28();
  v14 = v8;
  v15 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  v11 = v13[1];
  sub_2146DA388();
  if (v11)
  {
    return (*(v4 + 8))(v7, v3);
  }

  if (v13[0] != 1)
  {
    v14 = v13[0];
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A338, &qword_2146F5DA0);
    sub_21430CBBC();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21422914C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2146AD760(&v16);
  v7 = v16;
  v6 = v17;
  v8 = v18;
  v9 = v19;
  v21 = a3;
  v20 = v19;
  v16 = 0xD000000000000034;
  v17 = 0x8000000214791D40;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  sub_213FBE134(v8);
  v10 = v7(&v21, &v20, &v16);
  if (v4)
  {
  }

  else
  {
    if (v10)
    {
      sub_213FB7170(v8);

      result = sub_213FB7170(v8);
      *a4 = a1;
      *(a4 + 8) = a2 & 1;
      *(a4 + 16) = v7;
      *(a4 + 24) = v6;
      *(a4 + 32) = a3;
      *(a4 + 40) = v9;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000034;
    v12[1] = 0x8000000214791D40;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FB7170(v8);

  return sub_213FB7170(v8);
}

unint64_t sub_2142292F4()
{
  if (*v0)
  {
    result = 0x4C6465726F6E6769;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_21422933C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000214796C80 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x4C6465726F6E6769 && a2 == 0xEB00000000747369)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_214229428(uint64_t a1)
{
  v2 = sub_21430CC64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214229464(uint64_t a1)
{
  v2 = sub_21430CC64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142294A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A358, &qword_2146F5DB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CC64();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  LOBYTE(v35) = 0;
  sub_2142E3570();
  sub_2146DA1C8();
  v11 = v30;
  v12 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A338, &qword_2146F5DA0);
  LOBYTE(v35) = 1;
  sub_21430CB14();
  sub_2146DA1C8();
  v24 = v12;
  v25 = v11;
  v14 = v30;
  sub_2146AD760(&v30);
  v15 = v31;
  v28 = v14;
  v29 = v30;
  v16 = v32;
  v35 = v14;
  v23 = v33;
  v34 = v33;
  v30 = 0xD000000000000034;
  v31 = 0x8000000214791D40;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v27 = v16;
  sub_213FBE134(v16);
  v26 = v15;
  v17 = v29(&v35, &v34, &v30);
  if (v17)
  {
    v18 = v27;
    sub_213FB7170(v27);

    (*(v6 + 8))(v9, v5);
    v19 = v26;

    sub_213FB7170(v18);
    *a2 = v25;
    *(a2 + 8) = v24;
    v20 = v28;
    *(a2 + 16) = v29;
    *(a2 + 24) = v19;
    *(a2 + 32) = v20;
    *(a2 + 40) = v23;

    sub_213FBE134(v20);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000034;
    v21[1] = 0x8000000214791D40;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    v20 = v27;
    sub_213FB7170(v27);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_213FB7170(v20);
}

uint64_t sub_21422984C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A368, &qword_2146F5DB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v13[0] = v1[4];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CC64();
  sub_2146DAA28();
  v14 = v8;
  v15 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905898, &unk_2146F3E40);
  sub_2142E3778();
  v11 = v13[1];
  sub_2146DA388();
  if (v11)
  {
    return (*(v4 + 8))(v7, v3);
  }

  if (v13[0] != 1)
  {
    v14 = v13[0];
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A338, &qword_2146F5DA0);
    sub_21430CBBC();
    sub_2146DA388();
    return (*(v4 + 8))(v7, v3);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214229A98@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2146ADA20(&v37);
  v9 = v37;
  v8 = v38;
  v10 = v39;
  *v51 = *(&v40 + 1);
  *&v51[3] = HIDWORD(v40);
  v33 = v41;
  v35 = v42;
  v34 = v44;
  v50[0] = *v45;
  *(v50 + 3) = *&v45[3];
  v30 = v46;
  v31 = v47;
  v26 = v43;
  v27 = v48;
  v32 = v49;
  v28 = v40;
  v52 = v40;
  v36 = a1;
  v37 = 0xD000000000000043;
  v38 = 0x8000000214791D80;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  sub_213FBE134(v10);
  v11 = v8;
  v29 = v9;
  v12 = v9(&v36, &v52, &v37);
  if (v4)
  {

    v13 = v30;
LABEL_6:
    v17 = v27;
    v14 = v11;

    v19 = v10;
    v15 = v26;
LABEL_7:
    sub_213FB7170(v10);
    v37 = v29;
    v38 = v14;
    v39 = v19;
    LOBYTE(v40) = v28;
    *(&v40 + 1) = *v51;
    HIDWORD(v40) = *&v51[3];
    v41 = v33;
    v42 = v35;
    v43 = v15;
    v44 = v34;
    *v45 = v50[0];
    *&v45[3] = *(v50 + 3);
    v46 = v13;
    v47 = v31;
    v48 = v17;
    v49 = v32;
    return sub_2142FA3F8(&v37);
  }

  v24 = a3;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD000000000000043;
    v18[1] = 0x8000000214791D80;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    v13 = v30;
    goto LABEL_6;
  }

  sub_213FB7170(v10);

  v14 = v8;

  sub_213FB7170(v10);
  v52 = v34;
  v36 = a2;
  v37 = 0xD000000000000043;
  v38 = 0x8000000214791DD0;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  v15 = v26;
  sub_213FBE134(v26);
  v16 = v33(&v36, &v52, &v37);
  v17 = v27;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v22 = 0xD000000000000043;
    v22[1] = 0x8000000214791DD0;
    v22[2] = 0xD00000000000001CLL;
    v22[3] = 0x800000021478A360;
    swift_willThrow();

    v13 = v30;

    v10 = v26;
LABEL_11:
    v19 = a1;
    goto LABEL_7;
  }

  sub_213FB7170(v26);

  sub_213FB7170(v26);
  v52 = v32;
  v36 = v24;
  v37 = 0xD000000000000044;
  v38 = 0x8000000214791E20;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  sub_213FBE134(v27);
  v21 = v30(&v36, &v52, &v37);
  v13 = v30;
  if ((v21 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v23 = 0xD000000000000044;
    v23[1] = 0x8000000214791E20;
    v23[2] = 0xD00000000000001CLL;
    v23[3] = 0x800000021478A360;
    swift_willThrow();

    v10 = v27;
    v15 = a2;
    goto LABEL_11;
  }

  sub_213FB7170(v27);

  result = sub_213FB7170(v27);
  *a4 = v29;
  *(a4 + 8) = v14;
  *(a4 + 16) = a1;
  *(a4 + 24) = v28;
  *(a4 + 25) = *v51;
  *(a4 + 28) = *&v51[3];
  *(a4 + 32) = v33;
  *(a4 + 40) = v35;
  *(a4 + 48) = a2;
  *(a4 + 56) = v34;
  *(a4 + 57) = v50[0];
  *(a4 + 60) = *(v50 + 3);
  *(a4 + 64) = v30;
  *(a4 + 72) = v31;
  *(a4 + 80) = v24;
  *(a4 + 88) = v32;
  return result;
}

unint64_t sub_214229FD8()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    result = v2;
  }

  else
  {
    result = 0xD000000000000018;
  }

  *v0;
  return result;
}

uint64_t sub_21422A028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437AD44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21422A050(uint64_t a1)
{
  v2 = sub_21430CCB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422A08C(uint64_t a1)
{
  v2 = sub_21430CCB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422A0C8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A370, &qword_2146F5DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CCB8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v82 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  LOBYTE(v59) = 0;
  sub_2142E1548();
  sub_2146DA1C8();
  v11 = v65;
  LOBYTE(v59) = 1;
  sub_2146DA1C8();
  v58 = v11;
  v12 = v65;
  v78 = 2;
  sub_2146DA1C8();
  v52 = v12;
  v49 = v79;
  sub_2146ADA20(&v65);
  v15 = v65;
  v14 = v66;
  v16 = v67;
  *v81 = *(&v68 + 1);
  *&v81[3] = HIDWORD(v68);
  v53 = v69;
  v56 = v70;
  v57 = v71;
  v54 = v72;
  v80[0] = *v73;
  *(v80 + 3) = *&v73[3];
  v47 = v74;
  v51 = v75;
  v50 = v76;
  v48 = v77;
  *&v59 = v58;
  v45 = v68;
  LOBYTE(v64) = v68;
  v65 = 0xD000000000000043;
  v66 = 0x8000000214791D80;
  v67 = 0xD00000000000001CLL;
  v68 = 0x800000021478A360;

  v44 = v16;
  sub_213FBE134(v16);
  v55 = v14;
  v46 = v15;
  v17 = v15(&v59, &v64, &v65);
  if (v17)
  {
    v18 = v44;
    sub_213FB7170(v44);

    sub_213FB7170(v18);
    *&v59 = v52;
    LOBYTE(v64) = v54;
    v65 = 0xD000000000000043;
    v66 = 0x8000000214791DD0;
    v67 = 0xD00000000000001CLL;
    v68 = 0x800000021478A360;

    sub_213FBE134(v57);
    v19 = v53(&v59, &v64, &v65);
    v44 = 0x800000021478A360;
    v25 = v48;
    if ((v19 & 1) == 0)
    {
      sub_214031C4C();
      swift_allocError();
      *v28 = 0xD000000000000043;
      v28[1] = 0x8000000214791DD0;
      v29 = v44;
      v28[2] = 0xD00000000000001CLL;
      v28[3] = v29;
      swift_willThrow();

      v22 = v57;
      v23 = v25;
      v21 = v55;
      goto LABEL_8;
    }

    v26 = v57;
    sub_213FB7170(v57);
    v27 = v44;

    sub_213FB7170(v26);
    LOBYTE(v59) = v25;
    v64 = v49;
    v65 = 0xD000000000000044;
    v66 = 0x8000000214791E20;
    v67 = 0xD00000000000001CLL;
    v68 = v27;

    sub_213FBE134(v50);
    if (v47(&v64, &v59, &v65))
    {
      v30 = v50;
      sub_213FB7170(v50);

      (*(v6 + 8))(v9, v5);
      v31 = v51;

      sub_213FB7170(v30);
      *&v59 = v46;
      *(&v59 + 1) = v55;
      *&v60 = v58;
      BYTE8(v60) = v45;
      HIDWORD(v60) = *&v81[3];
      *(&v60 + 9) = *v81;
      v32 = v53;
      *&v61 = v53;
      v33 = v56;
      *(&v61 + 1) = v56;
      v34 = v52;
      *&v62 = v52;
      v35 = v54;
      BYTE8(v62) = v54;
      *(&v62 + 9) = v80[0];
      HIDWORD(v62) = *(v80 + 3);
      v36 = v47;
      *v63 = v47;
      *&v63[8] = v31;
      *&v63[16] = v49;
      v23 = v48;
      v63[24] = v48;
      v37 = v60;
      v38 = v82;
      *v82 = v59;
      v38[1] = v37;
      v39 = v61;
      v40 = v62;
      v41 = *v63;
      *(v38 + 73) = *&v63[9];
      v38[3] = v40;
      v38[4] = v41;
      v38[2] = v39;
      sub_2142FA348(&v59, &v65);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v65 = v46;
      v66 = v55;
      v67 = v58;
      LOBYTE(v68) = v45;
      *(&v68 + 1) = *v81;
      HIDWORD(v68) = *&v81[3];
      v69 = v32;
      v70 = v33;
      v71 = v34;
      v72 = v35;
      *v73 = v80[0];
      *&v73[3] = *(v80 + 3);
      v74 = v36;
      v75 = v51;
      v24 = &v75;
      goto LABEL_9;
    }

    sub_214031C4C();
    swift_allocError();
    *v42 = 0xD000000000000044;
    v42[1] = 0x8000000214791E20;
    v43 = v44;
    v42[2] = 0xD00000000000001CLL;
    v42[3] = v43;
    swift_willThrow();

    v22 = v50;
    v57 = v52;
    v21 = v55;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000043;
    v20[1] = 0x8000000214791D80;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();

    v21 = v55;

    v22 = v44;
    v58 = v44;
  }

  v23 = v48;
LABEL_8:
  (*(v6 + 8))(v9, v5);

  sub_213FB7170(v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v65 = v46;
  v66 = v21;
  v67 = v58;
  LOBYTE(v68) = v45;
  *(&v68 + 1) = *v81;
  HIDWORD(v68) = *&v81[3];
  v69 = v53;
  v70 = v56;
  v71 = v57;
  v72 = v54;
  *v73 = v80[0];
  *&v73[3] = *(v80 + 3);
  v74 = v47;
  v75 = v51;
  v24 = &v76;
LABEL_9:
  v76 = *(v24 - 32);
  v77 = v23;
  return sub_2142FA3F8(&v65);
}

uint64_t sub_21422AA98(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A380, &qword_2146F5DC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = v1[2];
  v10 = v1[6];
  v14 = v1[10];
  v15 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CCB8();
  sub_2146DAA28();
  if (v9 == 1)
  {
LABEL_9:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v17 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
  sub_2140459AC();
  sub_2146DA388();
  if (!v2)
  {
    if (v15 != 1)
    {
      v17 = v15;
      v16 = 1;
      sub_2146DA388();
      if (v14 != 1)
      {
        v17 = v14;
        v16 = 2;
        sub_2146DA388();
        return (*(v5 + 8))(v8, v4);
      }
    }

    goto LABEL_9;
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21422AD24@<X0>(unint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, unint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2146222A0(&v69);
  v13 = v69;
  v12 = v70;
  v14 = v72;
  v94[0] = *v74;
  *(v94 + 3) = *&v74[3];
  v60 = v75;
  v65 = v76;
  v44 = v71;
  v45 = v77;
  v95 = v78;
  v61 = v79;
  v93[0] = *v80;
  *(v93 + 3) = *&v80[3];
  v64 = v83;
  v62 = v82;
  v63 = v84;
  v49 = v85;
  *(v92 + 3) = *&v86[3];
  v92[0] = *v86;
  v48 = v87;
  v52 = v81;
  v53 = v88;
  v54 = v90;
  v55 = v89;
  v56 = v91;
  v67 = a1;
  v68 = a2;
  v51 = v73;
  v66 = v73;
  v69 = 0xD000000000000034;
  v70 = 0x8000000214791E70;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  v15 = v12;
  v50 = v13;
  v16 = v13(&v67, &v66, &v69);
  if (v9)
  {
    sub_213FDC6BC(a7, a8);

    v17 = v60;
    v18 = v15;
LABEL_6:

    v22 = v44;
    v23 = v45;
    v24 = v49;
    v25 = v52;
    v26 = v53;
    v19 = v61;
    v27 = v56;
    v29 = v54;
    v28 = v55;
    v30 = v48;
LABEL_7:
    v69 = v50;
    v70 = v18;
    v71 = v22;
    v72 = v14;
    v73 = v51;
    *v74 = v94[0];
    *&v74[3] = *(v94 + 3);
    v75 = v17;
    v76 = v65;
    v77 = v23;
    v78 = v95;
    v79 = v19;
    *v80 = v93[0];
    *&v80[3] = *(v93 + 3);
    v81 = v25;
    v82 = v62;
    v83 = v64;
    v84 = v63;
    v85 = v24;
    *&v86[3] = *(v92 + 3);
    *v86 = v92[0];
    v87 = v30;
    v88 = v26;
    v89 = v28;
    v90 = v29;
    v91 = v27;
    return sub_21430CD0C(&v69);
  }

  v39 = a1;
  v40 = a2;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD000000000000034;
    v21[1] = 0x8000000214791E70;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a7, a8);

    v17 = v60;
    v18 = v15;
    goto LABEL_6;
  }

  v18 = v12;

  v67 = a3;
  v68 = a4;
  v19 = v61;
  v66 = v61;
  v69 = 0xD000000000000030;
  v70 = 0x8000000214791EB0;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  v20 = v60(&v67, &v66, &v69);
  v17 = v60;
  v24 = v49;
  if ((v20 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v33 = 0xD000000000000030;
    v33[1] = 0x8000000214791EB0;
    v33[2] = 0xD00000000000001CLL;
    v33[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a7, a8);

    v25 = v52;

    v22 = a1;
    v14 = v40;
    v27 = v56;
    v29 = v54;
    v28 = v55;
    v30 = v48;
    v26 = v53;
    v23 = v45;
    goto LABEL_7;
  }

  v67 = a5;
  v68 = a6;
  v66 = v49;
  v69 = 0xD000000000000035;
  v70 = 0x8000000214791EF0;
  v71 = 0xD00000000000001CLL;
  v72 = 0x800000021478A360;

  sub_213FDC9D0(v64, v63);
  v25 = v52;
  v32 = v52(&v67, &v66, &v69);
  if ((v32 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v38 = 0xD000000000000035;
    v38[1] = 0x8000000214791EF0;
    v38[2] = 0xD00000000000001CLL;
    v38[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a7, a8);

    v17 = v60;

    sub_213FDC6D0(v64, v63);
    v14 = v40;
    v23 = a3;
    v95 = a4;
    v19 = v61;
    v27 = v56;
    v29 = v54;
    v28 = v55;
    v30 = v48;
    v26 = v53;
    v22 = v39;
    goto LABEL_7;
  }

  sub_213FDC6D0(v64, v63);

  sub_213FDC6D0(v64, v63);
  v95 = "onRequest.displayName";
  v69 = v48;
  v70 = v53;
  v71 = v55;
  v72 = v54;
  v73 = v56;

  sub_21404F7E0(v55, v54);
  sub_214032118(a7, a8, 2, 0xD000000000000032, 0x8000000214791F30, 0xD00000000000001CLL, 0x800000021478A360);
  sub_213FDC6BC(a7, a8);

  v34 = v69;
  v35 = v70;
  v37 = v71;
  v36 = v72;
  v57 = v73;

  result = sub_214032564(v55, v54);
  *a9 = v50;
  *(a9 + 8) = v18;
  *(a9 + 16) = v39;
  *(a9 + 24) = v40;
  *(a9 + 32) = v51;
  *(a9 + 33) = v94[0];
  *(a9 + 36) = *(v94 + 3);
  *(a9 + 40) = v60;
  *(a9 + 48) = v65;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = v61;
  *(a9 + 73) = v93[0];
  *(a9 + 76) = *(v93 + 3);
  *(a9 + 80) = v52;
  *(a9 + 88) = v62;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = v49;
  *(a9 + 116) = *(v92 + 3);
  *(a9 + 113) = v92[0];
  *(a9 + 120) = v34;
  *(a9 + 128) = v35;
  *(a9 + 136) = v37;
  *(a9 + 144) = v36;
  *(a9 + 152) = v57;
  return result;
}

uint64_t sub_21422B4C8()
{
  v1 = 0x696669746E656469;
  v2 = 0x4E79616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    v1 = 0x656C646E6168;
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

uint64_t sub_21422B54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437AE6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21422B574(uint64_t a1)
{
  v2 = sub_21430CD60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422B5B0(uint64_t a1)
{
  v2 = sub_21430CD60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422B5EC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A388, &qword_2146F5DD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v64 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v134 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430CD60();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v134);
  }

  v12 = v6;
  v93 = a2;
  LOBYTE(v106) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v92 = v13;
  LOBYTE(v106) = 1;
  v17 = v5;
  v16 = sub_2146DA168();
  v19 = v18;
  v91 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v94) = 2;
  sub_2142E12FC();
  sub_2146DA1C8();
  v90 = v19;
  v21 = v106;
  v22 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  v128 = 3;
  sub_2142E1278();
  sub_2146DA1C8();
  v67 = v21;
  v71 = v17;
  v79 = v22;
  v73 = v129;
  v74 = v130;
  sub_2146222A0(&v106);
  v23 = v107;
  v24 = v109;
  v133[0] = *v111;
  *(v133 + 3) = *&v111[3];
  v86 = v112;
  v88 = v113;
  v89 = v106;
  v68 = v108;
  v69 = v114;
  v87 = v116;
  v132[0] = *v117;
  *(v132 + 3) = *&v117[3];
  v83 = v119;
  v84 = v115;
  v82 = v120;
  v80 = v121;
  v81 = v122;
  *(v131 + 3) = *&v123[3];
  v131[0] = *v123;
  v76 = v124;
  v77 = v118;
  v78 = v125;
  v25 = v126;
  LODWORD(v75) = v127;
  *&v94 = v92;
  *(&v94 + 1) = v15;
  v72 = v110;
  LOBYTE(v102) = v110;
  v106 = 0xD000000000000034;
  v107 = 0x8000000214791E70;
  v108 = 0xD00000000000001CLL;
  v109 = 0x800000021478A360;
  v70 = v24;

  v85 = v23;
  v26 = v89(&v94, &v102, &v106);
  v65 = v25;
  v66 = 0x800000021478A360;
  v27 = v90;
  if (v26)
  {
    v28 = v66;

    *&v94 = v91;
    *(&v94 + 1) = v27;
    LOBYTE(v102) = v87;
    v106 = 0xD000000000000030;
    v107 = 0x8000000214791EB0;
    v108 = 0xD00000000000001CLL;
    v109 = v28;

    v29 = v86(&v94, &v102, &v106);
    v37 = v79;
    if (v29)
    {
      v38 = v66;

      *&v94 = v67;
      *(&v94 + 1) = v37;
      LOBYTE(v102) = v81;
      v106 = 0xD000000000000035;
      v107 = 0x8000000214791EF0;
      v108 = 0xD00000000000001CLL;
      v109 = v38;

      v39 = v80;
      sub_213FDC9D0(v82, v80);
      v40 = v77(&v94, &v102, &v106);
      if (v40)
      {
        v84 = v15;
        v43 = v82;
        v44 = v39;
        sub_213FDC6D0(v82, v39);
        v45 = v66;

        sub_213FDC6D0(v43, v44);
        v102 = v76;
        v46 = v78;
        v47 = v65;
        v103 = v78;
        v104 = v65;
        v105 = v75;

        sub_21404F7E0(v46, v47);
        sub_214032118(v73, v74, 2, 0xD000000000000032, 0x8000000214791F30, 0xD00000000000001CLL, v45);

        sub_213FDC6BC(v73, v74);
        (*(v12 + 8))(v9, v71);
        v50 = v102;
        v80 = *(&v102 + 1);
        v82 = v102;
        v51 = v104;
        v75 = v103;
        *&v76 = v104;
        LODWORD(v74) = v105;

        sub_214032564(v78, v65);
        v52 = v84;
        *&v94 = v89;
        *(&v94 + 1) = v85;
        *&v95 = v92;
        *(&v95 + 1) = v84;
        LOBYTE(v96) = v72;
        *(&v96 + 1) = v133[0];
        DWORD1(v96) = *(v133 + 3);
        *(&v96 + 1) = v86;
        *&v97 = v88;
        *(&v97 + 1) = v91;
        *&v98 = v90;
        BYTE8(v98) = v87;
        *(&v98 + 9) = v132[0];
        HIDWORD(v98) = *(v132 + 3);
        v53 = v77;
        *&v99 = v77;
        *(&v99 + 1) = v83;
        v54 = v79;
        *&v100 = v67;
        *(&v100 + 1) = v79;
        v101[0] = v81;
        *&v101[1] = v131[0];
        *&v101[4] = *(v131 + 3);
        *&v101[8] = v50;
        v55 = v75;
        *&v101[24] = v75;
        *&v101[32] = v51;
        LOBYTE(v51) = v74;
        v101[40] = v74;
        v56 = v95;
        v57 = v93;
        *v93 = v94;
        v57[1] = v56;
        v58 = v96;
        v59 = v97;
        v60 = v99;
        v57[4] = v98;
        v57[5] = v60;
        v57[2] = v58;
        v57[3] = v59;
        v61 = v100;
        v62 = *v101;
        v63 = *&v101[16];
        *(v57 + 137) = *&v101[25];
        v57[7] = v62;
        v57[8] = v63;
        v57[6] = v61;
        sub_21430CDB4(&v94, &v106);
        __swift_destroy_boxed_opaque_existential_1(v134);
        v106 = v89;
        v107 = v85;
        v108 = v92;
        v109 = v52;
        v110 = v72;
        *v111 = v133[0];
        *&v111[3] = *(v133 + 3);
        v112 = v86;
        v113 = v88;
        v114 = v91;
        v115 = v90;
        v116 = v87;
        *v117 = v132[0];
        *&v117[3] = *(v132 + 3);
        v118 = v53;
        v119 = v83;
        v120 = v67;
        v121 = v54;
        v122 = v81;
        *v123 = v131[0];
        *&v123[3] = *(v131 + 3);
        *&v124 = v82;
        *(&v124 + 1) = v80;
        v125 = v55;
        v126 = v76;
        v127 = v51;
        return sub_21430CD0C(&v106);
      }

      sub_214031C4C();
      swift_allocError();
      *v48 = 0xD000000000000035;
      v48[1] = 0x8000000214791EF0;
      v49 = v66;
      v48[2] = 0xD00000000000001CLL;
      v48[3] = v49;
      swift_willThrow();

      sub_213FDC6BC(v73, v74);
      v32 = v77;
      (*(v12 + 8))(v9, v71);

      sub_213FDC6D0(v82, v39);
      v36 = v90;
      v35 = v91;
      v34 = v85;
      v33 = v65;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v41 = 0xD000000000000030;
      v41[1] = 0x8000000214791EB0;
      v42 = v66;
      v41[2] = 0xD00000000000001CLL;
      v41[3] = v42;
      swift_willThrow();

      v32 = v77;
      sub_213FDC6BC(v73, v74);
      (*(v12 + 8))(v9, v71);
      v36 = v84;

      v34 = v85;
      v33 = v65;
      v35 = v69;
    }
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v30 = 0xD000000000000034;
    v30[1] = 0x8000000214791E70;
    v31 = v66;
    v30[2] = 0xD00000000000001CLL;
    v30[3] = v31;
    swift_willThrow();

    v32 = v77;
    v33 = v65;

    sub_213FDC6BC(v73, v74);
    (*(v12 + 8))(v9, v71);
    v15 = v70;

    v34 = v85;

    v35 = v69;
    v92 = v68;
    v36 = v84;
  }

  __swift_destroy_boxed_opaque_existential_1(v134);
  v106 = v89;
  v107 = v34;
  v108 = v92;
  v109 = v15;
  v110 = v72;
  *v111 = v133[0];
  *&v111[3] = *(v133 + 3);
  v112 = v86;
  v113 = v88;
  v114 = v35;
  v115 = v36;
  v116 = v87;
  *v117 = v132[0];
  *&v117[3] = *(v132 + 3);
  v118 = v32;
  v119 = v83;
  v120 = v82;
  v121 = v80;
  v122 = v81;
  *&v123[3] = *(v131 + 3);
  *v123 = v131[0];
  v124 = v76;
  v125 = v78;
  v126 = v33;
  v127 = v75;
  return sub_21430CD0C(&v106);
}

uint64_t sub_21422C188(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A398, &qword_2146F5DD8);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[13];
  v20 = v1[12];
  v21 = v9;
  v12 = v1[18];
  v18 = v1[17];
  v19 = v11;
  v17 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CD60();
  sub_2146DAA28();
  if (!v8)
  {
    goto LABEL_8;
  }

  LOBYTE(v24) = 0;

  v14 = v22;
  sub_2146DA328();
  if (v14)
  {
    (*(v23 + 8))(v6, v3);
  }

  if (!v10)
  {
    goto LABEL_8;
  }

  LOBYTE(v24) = 1;

  sub_2146DA328();

  if (v19 == 1 || (v24 = v20, v25 = v19, v26 = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v17 >> 60 == 11))
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v24 = v18;
    v25 = v17;
    v26 = 3;
    sub_213FDCA18(v18, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v24, v25);
    return (*(v23 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_21422C4D4@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v32 = *a5;
  v33 = *a6;
  v34 = a6[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_214059900;
  *(v9 + 24) = 0;
  *(inited + 32) = v9;
  sub_214042B80(inited, &v37);
  v11 = v37;
  v10 = v38;
  v12 = v40;
  v26 = v39;
  v13 = v41;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21430CE10;
  *(v15 + 24) = 0;
  *(v14 + 32) = v15;
  sub_214042B80(v14, &v54);
  v35 = v54;
  v36 = v55;
  v25 = v56;
  v62 = v57;
  v29 = v58;
  v30 = v13;
  v54 = a1;
  v55 = a2;
  v53 = v13;
  v37 = 0xD000000000000035;
  v38 = 0x8000000214791F70;
  v39 = 0xD00000000000001CLL;
  v40 = 0x800000021478A360;

  v16 = v11(&v54, &v53, &v37);
  if (v31)
  {

    v17 = v26;
    v18 = v29;
  }

  else
  {
    v17 = v26;
    if (v16)
    {

      v54 = a3;
      v55 = a4;
      v18 = v29;
      v53 = v29;
      v37 = 0xD000000000000031;
      v38 = 0x8000000214791FB0;
      v39 = 0xD00000000000001CLL;
      v40 = 0x800000021478A360;

      v19 = v35(&v54, &v53, &v37);
      v17 = a1;
      if (v19)
      {

        result = swift_bridgeObjectRelease_n();
        *a7 = v11;
        *(a7 + 8) = v10;
        *(a7 + 16) = a1;
        *(a7 + 24) = a2;
        *(a7 + 32) = v30;
        *(a7 + 40) = v35;
        *(a7 + 48) = v36;
        *(a7 + 56) = a3;
        *(a7 + 64) = a4;
        *(a7 + 72) = v29;
        *(a7 + 73) = v32;
        *(a7 + 80) = v33;
        *(a7 + 88) = v34;
        return result;
      }

      sub_214031C4C();
      swift_allocError();
      *v22 = 0xD000000000000031;
      v22[1] = 0x8000000214791FB0;
      v22[2] = 0xD00000000000001CLL;
      v22[3] = 0x800000021478A360;
      swift_willThrow();

      v12 = a2;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      *v20 = 0xD000000000000035;
      v20[1] = 0x8000000214791F70;
      v20[2] = 0xD00000000000001CLL;
      v20[3] = 0x800000021478A360;
      swift_willThrow();

      v18 = v29;
    }
  }

  v37 = v11;
  v38 = v10;
  v39 = v17;
  v40 = v12;
  v41 = v30;
  *v42 = v61[0];
  *&v42[3] = *(v61 + 3);
  v43 = v35;
  v44 = v36;
  v45 = v25;
  v46 = v62;
  v47 = v18;
  v48 = v32;
  v49 = v59;
  v50 = v60;
  v51 = v33;
  v52 = v34;
  return sub_21430CE14(&v37);
}

uint64_t sub_21422C948()
{
  v1 = 0x696669746E656469;
  v2 = 0x6F6974617265706FLL;
  if (*v0 != 2)
  {
    v2 = 0x6C61766F72707061;
  }

  if (*v0)
  {
    v1 = 0x656C646E6168;
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

uint64_t sub_21422C9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437AFD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21422C9FC(uint64_t a1)
{
  v2 = sub_21430CE68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422CA38(uint64_t a1)
{
  v2 = sub_21430CE68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422CA74@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A3A0, &qword_2146F5DE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430CE68();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v88);
  }

  v12 = v6;
  LOBYTE(v67) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v16 = v13;
  LOBYTE(v67) = 1;
  v58 = sub_2146DA168();
  v59 = v17;
  LOBYTE(v60) = 2;
  sub_21430CEBC();
  sub_2146DA1C8();
  v56 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A3B8, &qword_2146F5DE8);
  v82 = 3;
  sub_21430CF10();
  sub_2146DA1C8();
  v57 = v83;
  v55 = v84;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  v50 = xmmword_2146E9BF0;
  *(inited + 16) = xmmword_2146E9BF0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_214059900;
  *(v20 + 24) = 0;
  *(inited + 32) = v20;
  sub_213FDCA18(v57, v55);
  sub_214042B80(inited, &v67);
  v54 = v67;
  v44 = v68;
  v52 = v69;
  v53 = v70;
  v21 = swift_initStackObject();
  *(v21 + 16) = v50;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21438F68C;
  *(v22 + 24) = 0;
  *(v21 + 32) = v22;
  sub_214042B80(v21, &v60);
  *&v50 = *(&v60 + 1);
  v48 = v60;
  v51 = *(&v61 + 1);
  v45 = v61;
  LODWORD(v49) = v62;
  *&v60 = v16;
  *(&v60 + 1) = v15;
  LOBYTE(v66[0]) = v53;
  *&v67 = 0xD000000000000035;
  *(&v67 + 1) = 0x8000000214791F70;
  v46 = 0x8000000214791F70;
  v47 = 0x800000021478A360;
  v68 = 0xD00000000000001CLL;
  v69 = 0x800000021478A360;

  v23 = (v54)(&v60, v66, &v67);
  v24 = v46;
  if (v23)
  {
    v25 = v47;
    v44 = 0;

    v66[0] = v58;
    v66[1] = v59;
    LOBYTE(v60) = v49;
    *&v67 = 0xD000000000000031;
    *(&v67 + 1) = 0x8000000214791FB0;
    v52 = 0x8000000214791FB0;
    v68 = 0xD00000000000001CLL;
    v69 = v25;

    v26 = v44;
    v27 = v48(v66, &v60, &v67);
    if (v26)
    {
    }

    else
    {
      v33 = v52;
      if (v27)
      {

        v34 = v57;

        sub_213FDC6BC(v34, v55);
        (*(v12 + 8))(v9, v5);

        v35 = v50;

        v60 = v54;
        *&v61 = v16;
        *(&v61 + 1) = v15;
        v36 = v53;
        LOBYTE(v62) = v53;
        *(&v62 + 1) = v87[0];
        DWORD1(v62) = *(v87 + 3);
        *(&v62 + 1) = v48;
        *&v63 = v35;
        *(&v63 + 1) = v58;
        *&v64 = v59;
        BYTE8(v64) = v49;
        v37 = v34;
        LOBYTE(v34) = v56;
        BYTE9(v64) = v56;
        *(&v64 + 10) = v85;
        HIWORD(v64) = v86;
        *&v65 = v37;
        *(&v65 + 1) = v55;
        v38 = v61;
        *a2 = v54;
        a2[1] = v38;
        v39 = v62;
        v40 = v63;
        v41 = v65;
        a2[4] = v64;
        a2[5] = v41;
        a2[2] = v39;
        a2[3] = v40;
        sub_21430CFE8(&v60, &v67);
        __swift_destroy_boxed_opaque_existential_1(v88);
        v67 = v54;
        v68 = v16;
        v69 = v15;
        v70 = v36;
        *v71 = v87[0];
        *&v71[3] = *(v87 + 3);
        v72 = v48;
        v73 = v35;
        v74 = v58;
        v75 = v59;
        v76 = v49;
        v77 = v34;
        v78 = v85;
        v79 = v86;
        v80 = v57;
        v81 = v55;
        return sub_21430CE14(&v67);
      }

      sub_214031C4C();
      swift_allocError();
      *v42 = 0xD000000000000031;
      v42[1] = v33;
      v43 = v47;
      v42[2] = 0xD00000000000001CLL;
      v42[3] = v43;
      swift_willThrow();
    }

    sub_213FDC6BC(v57, v55);
    v58 = v51;
    v59 = v50;
    v31 = v15;
    v32 = *(&v54 + 1);
    v30 = v55;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD000000000000035;
    v28[1] = v24;
    v29 = v47;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = v29;
    swift_willThrow();

    v30 = v55;
    sub_213FDC6BC(v57, v55);
    v31 = v52;
    v32 = *(&v54 + 1);
    v58 = v52;
    v59 = *(&v54 + 1);
    v16 = v44;
  }

  (*(v12 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(v88);
  *&v67 = v54;
  *(&v67 + 1) = v32;
  v68 = v16;
  v69 = v31;
  v70 = v53;
  *v71 = v87[0];
  *&v71[3] = *(v87 + 3);
  v72 = v48;
  v73 = v50;
  v74 = v45;
  v75 = v51;
  v76 = v49;
  v77 = v56;
  v78 = v85;
  v79 = v86;
  v80 = v57;
  v81 = v30;
  return sub_21430CE14(&v67);
}

uint64_t sub_21422D228(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A3D0, &qword_2146F5DF0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v23 = *(v1 + 73);
  v11 = *(v1 + 88);
  v17 = *(v1 + 80);
  v18 = v9;
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430CE68();
  sub_2146DAA28();
  if (!v8)
  {
    goto LABEL_6;
  }

  LOBYTE(v21) = 0;

  v13 = v19;
  sub_2146DA328();
  if (v13)
  {
    (*(v20 + 8))(v6, v3);
  }

  if (v10)
  {
    LOBYTE(v21) = 1;

    sub_2146DA328();

    LOBYTE(v21) = v23;
    v24 = 2;
    sub_21430D044();
    sub_2146DA388();
    v21 = v17;
    v22 = v16;
    v24 = 3;
    sub_213FDCA18(v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A3B8, &qword_2146F5DE8);
    sub_21430D098();
    sub_2146DA388();
    sub_213FDC6BC(v21, v22);
    return (*(v20 + 8))(v6, v3);
  }

  else
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21422D568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974617469766E69 && a2 == 0xEE00617461446E6FLL)
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

uint64_t sub_21422D5F8(uint64_t a1)
{
  v2 = sub_21430D170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422D634(uint64_t a1)
{
  v2 = sub_21430D170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422D6B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v16 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v13 = v16;
    sub_21406116C();
    sub_2146DA1C8();
    (*(v18 + 8))(v11, v8);
    *v13 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21422D870(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v12 = *v5;
  v13 = v5[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_21402D9F8(v12, v13);
  (v17[0])(v15);
  sub_2146DAA28();
  v18 = v12;
  v19 = v13;
  sub_214061684();
  sub_2146DA388();
  sub_213FB54FC(v18, v19);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_21422DA04@<X0>(uint64_t (*a1)(void, void, void)@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_214059900;
  *(v12 + 24) = 0;
  *(inited + 32) = v12;
  sub_214042B80(inited, &v58);
  v14 = v58;
  v13 = v59;
  v15 = v61;
  v40 = v60;
  v16 = v62;
  sub_214622C9C(&v78);
  v49 = v78;
  v47 = v79;
  v85 = v80;
  v57 = v81;
  v48 = v82;
  sub_214622DE8(v76);
  v55 = v76[0];
  v46 = v76[1];
  v52 = v76[3];
  v53 = v76[2];
  v44 = v77;
  v78 = a1;
  v79 = a2;
  v50 = v16;
  LOBYTE(v76[0]) = v16;
  v58 = 0xD00000000000002ELL;
  v59 = 0x8000000214791FF0;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;

  v56 = v13;
  v17 = v14(&v78, v76, &v58);
  v18 = v14;
  if (v8)
  {
    sub_213FDC6BC(a5, a6);
LABEL_7:

    v20 = v47;
    v29 = v13;

    v30 = v40;
    v19 = v48;
    v21 = v49;
    v32 = v52;
    v31 = v53;
    v33 = v46;
    v34 = v44;
    goto LABEL_8;
  }

  v36 = a1;
  v37 = a2;
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v28 = 0xD00000000000002ELL;
    v28[1] = 0x8000000214791FF0;
    v28[2] = 0xD00000000000001CLL;
    v28[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(a5, a6);
    goto LABEL_7;
  }

  v41 = v14;

  v78 = a3;
  v79 = a4;
  v19 = v48;
  LOBYTE(v76[0]) = v48;
  v58 = 0xD00000000000002FLL;
  v59 = 0x8000000214792020;
  v60 = 0xD00000000000001CLL;
  v61 = 0x800000021478A360;
  v20 = v47;

  sub_213FDC9D0(v85, v57);
  v21 = v49;
  if (v49(&v78, v76, &v58))
  {
    v22 = v85;
    sub_213FDC6D0(v85, v57);

    sub_213FDC6D0(v22, v57);
    v85 = "Message.JoinRequest.displayName";
    v58 = v55;
    v59 = v46;
    v60 = v53;
    v61 = v52;
    v62 = v44;

    sub_21404F7E0(v53, v52);
    sub_214032118(a5, a6, 2, 0xD00000000000002CLL, 0x8000000214792050, 0xD00000000000001CLL, 0x800000021478A360);
    sub_213FDC6BC(a5, a6);

    v24 = v58;
    v23 = v59;
    v25 = v61;
    v45 = v60;
    v26 = v62;

    result = sub_214032564(v53, v52);
    *a8 = v41;
    *(a8 + 8) = v56;
    *(a8 + 16) = v36;
    *(a8 + 24) = v37;
    *(a8 + 32) = v50;
    *(a8 + 40) = v49;
    *(a8 + 48) = v47;
    *(a8 + 56) = a3;
    *(a8 + 64) = a4;
    *(a8 + 72) = v48;
    *(a8 + 80) = v24;
    *(a8 + 88) = v23;
    *(a8 + 96) = v45;
    *(a8 + 104) = v25;
    *(a8 + 112) = v26;
    *(a8 + 113) = a7;
    return result;
  }

  sub_214031C4C();
  swift_allocError();
  *v35 = 0xD00000000000002FLL;
  v35[1] = 0x8000000214792020;
  v35[2] = 0xD00000000000001CLL;
  v35[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FDC6BC(a5, a6);

  v18 = v41;
  v15 = v37;
  v34 = v44;

  sub_213FDC6D0(v85, v57);
  v29 = v56;
  v32 = v52;
  v31 = v53;
  v30 = v36;
  v33 = v46;
LABEL_8:
  v58 = v18;
  v59 = v29;
  v60 = v30;
  v61 = v15;
  v62 = v50;
  *v63 = v84[0];
  *&v63[3] = *(v84 + 3);
  v64 = v21;
  v65 = v20;
  v66 = v85;
  v67 = v57;
  v68 = v19;
  *v69 = *v83;
  *&v69[3] = *&v83[3];
  v70 = v55;
  v71 = v33;
  v72 = v31;
  v73 = v32;
  v74 = v34;
  v75 = a7;
  return sub_21430D1C4(&v58);
}

uint64_t sub_21422DF8C()
{
  v1 = 0x696669746E656469;
  v2 = 0x6F666E4972657375;
  if (*v0 != 2)
  {
    v2 = 0x6B6F5473746E6177;
  }

  if (*v0)
  {
    v1 = 0x4E79616C70736964;
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

uint64_t sub_21422E020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437B150(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21422E048(uint64_t a1)
{
  v2 = sub_21430D218();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422E084(uint64_t a1)
{
  v2 = sub_21430D218();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422E0C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A408, &qword_2146F5E08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430D218();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v112);
  }

  v12 = v6;
  v77 = a2;
  LOBYTE(v87) = 0;
  v13 = sub_2146DA168();
  v78 = v14;
  v76 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v79) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v16 = v87;
  v15 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
  LOBYTE(v79) = 2;
  sub_2142E1278();
  sub_2146DA1C8();
  *(&v73 + 1) = v16;
  v75 = v15;
  v18 = v87;
  v17 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v108 = 3;
  sub_2142E1378();
  sub_2146DA1C8();
  v60 = v18;
  v61 = v17;
  v62 = v5;
  v63 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214059900;
  *(v21 + 24) = 0;
  *(v20 + 32) = v21;
  sub_214042B80(v20, &v87);
  v22 = v88;
  v74 = v87;
  v23 = v90;
  v57 = v89;
  LODWORD(v20) = v91;
  sub_214622C9C(&v79);
  *&v73 = *(&v79 + 1);
  v71 = v79;
  v68 = *(&v80 + 1);
  v69 = v80;
  v72 = v81;
  sub_214622DE8(&v104);
  v65 = v104;
  v66 = v105;
  v67 = v106;
  v59 = v107;
  *&v79 = v76;
  *(&v79 + 1) = v78;
  v64 = v20;
  LOBYTE(v104) = v20;
  v87 = 0xD00000000000002ELL;
  v88 = 0x8000000214791FF0;
  v89 = 0xD00000000000001CLL;
  v90 = 0x800000021478A360;
  v58 = v23;

  v70 = v22;
  v24 = v74(&v79, &v104, &v87);
  v25 = v75;
  if (v24)
  {

    *&v79 = *(&v73 + 1);
    *(&v79 + 1) = v25;
    LOBYTE(v104) = v72;
    v87 = 0xD00000000000002FLL;
    v88 = 0x8000000214792020;
    v89 = 0xD00000000000001CLL;
    v90 = 0x800000021478A360;

    sub_213FDC9D0(v69, v68);
    v26 = v71(&v79, &v104, &v87);
    if (v26)
    {
      v36 = v69;
      v37 = v68;
      sub_213FDC6D0(v69, v68);

      sub_213FDC6D0(v36, v37);
      v104 = v65;
      v39 = v66;
      v38 = v67;
      v105 = v66;
      v106 = v67;
      v107 = v59;
      v69 = *(&v65 + 1);

      sub_21404F7E0(v39, v38);
      v41 = v60;
      v40 = v61;
      sub_214032118(v60, v61, 2, 0xD00000000000002CLL, 0x8000000214792050, 0xD00000000000001CLL, 0x800000021478A360);
      v42 = v62;

      sub_213FDC6BC(v41, v40);
      (*(v12 + 8))(v9, v42);
      v44 = v104;
      *&v65 = *(&v104 + 1);
      v68 = v104;
      v45 = v105;
      v46 = v106;
      v62 = v105;
      LODWORD(v61) = v107;

      sub_214032564(v66, v67);
      v47 = *(&v73 + 1);
      *&v79 = v74;
      *(&v79 + 1) = v70;
      v48 = v76;
      *&v80 = v76;
      *(&v80 + 1) = v78;
      LOBYTE(v81) = v64;
      *(&v81 + 1) = v111[0];
      DWORD1(v81) = *(v111 + 3);
      *(&v81 + 1) = v71;
      v82 = v73;
      *&v83 = v75;
      BYTE8(v83) = v72;
      *(&v83 + 9) = *v110;
      HIDWORD(v83) = *&v110[3];
      v84 = v44;
      *&v85 = v45;
      *(&v85 + 1) = v46;
      LOBYTE(v42) = v61;
      LOBYTE(v86) = v61;
      LOBYTE(v45) = v63;
      HIBYTE(v86) = v63;
      v49 = v79;
      v50 = v80;
      v51 = v73;
      v52 = v77;
      *(v77 + 32) = v81;
      *(v52 + 48) = v51;
      *v52 = v49;
      *(v52 + 16) = v50;
      v53 = v83;
      v54 = v84;
      v55 = v85;
      *(v52 + 112) = v86;
      *(v52 + 80) = v54;
      *(v52 + 96) = v55;
      *(v52 + 64) = v53;
      sub_21430D26C(&v79, &v87);
      __swift_destroy_boxed_opaque_existential_1(v112);
      v87 = v74;
      v88 = v70;
      v89 = v48;
      v90 = v78;
      v91 = v64;
      *v92 = v111[0];
      *&v92[3] = *(v111 + 3);
      v93 = v71;
      v94 = v73;
      v95 = v47;
      v96 = v75;
      v97 = v72;
      *v98 = *v110;
      *&v98[3] = *&v110[3];
      *&v99 = v68;
      *(&v99 + 1) = v65;
      v100 = v62;
      v101 = v46;
      v102 = v42;
      v103 = v45;
      return sub_21430D1C4(&v87);
    }

    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000002FLL;
    v43[1] = 0x8000000214792020;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FDC6BC(v60, v61);
    v35 = v72;
    v29 = v68;
    (*(v12 + 8))(v9, v62);

    v34 = v69;
    sub_213FDC6D0(v69, v29);
    v30 = v78;
    v31 = v70;
    v32 = v71;
    v33 = v59;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000002ELL;
    v27[1] = 0x8000000214791FF0;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();

    v28 = v62;
    v29 = v68;
    sub_213FDC6BC(v60, v61);
    (*(v6 + 8))(v9, v28);
    v30 = v58;

    v31 = v70;

    v76 = v57;
    v32 = v71;
    v33 = v59;
    v34 = v69;
    v35 = v72;
  }

  __swift_destroy_boxed_opaque_existential_1(v112);
  v87 = v74;
  v88 = v31;
  v89 = v76;
  v90 = v30;
  v91 = v64;
  *v92 = v111[0];
  *&v92[3] = *(v111 + 3);
  v93 = v32;
  v94 = v73;
  v95 = v34;
  v96 = v29;
  v97 = v35;
  *v98 = *v110;
  *&v98[3] = *&v110[3];
  v99 = v65;
  v100 = v66;
  v101 = v67;
  v102 = v33;
  v103 = v63;
  return sub_21430D1C4(&v87);
}

uint64_t sub_21422EA68(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A418, &qword_2146F5E10);
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + 56);
  v17 = *(v1 + 64);
  v18 = v10;
  v11 = *(v1 + 96);
  v15 = *(v1 + 104);
  v16 = v11;
  v22 = *(v1 + 113);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430D218();
  sub_2146DAA28();
  if (!v8)
  {
    goto LABEL_7;
  }

  LOBYTE(v20) = 0;

  sub_2146DA328();
  if (v2)
  {
    (*(v19 + 8))(v7, v4);
  }

  if (v17 == 1 || (v20 = v18, v21 = v17, v23 = 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v15 >> 60 == 11))
  {
LABEL_7:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v20 = v16;
    v21 = v15;
    v23 = 2;
    sub_213FDCA18(v16, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v20, v21);
    LOBYTE(v20) = v22;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
    sub_2142E1D30();
    sub_2146DA388();
    return (*(v19 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_21422EDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v36 = *a3;
  v19 = *a4;
  v20 = a4[1];
  v21 = a4[2];
  v22 = a4[3];
  v23 = a4[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_214059900;
  *(v8 + 24) = 0;
  *(inited + 32) = v8;
  sub_214042B80(inited, &v24);
  v10 = v24;
  v9 = v25;
  v11 = v27;
  v17 = v26;
  v12 = v28;
  v35[0] = a1;
  v35[1] = a2;
  v37 = v28;
  v24 = 0xD00000000000002FLL;
  v25 = 0x8000000214792080;
  v26 = 0xD00000000000001CLL;
  v27 = 0x800000021478A360;

  v13 = v10(v35, &v37, &v24);
  if (v18)
  {
  }

  else
  {
    if (v13)
    {

      result = swift_bridgeObjectRelease_n();
      *a5 = v10;
      *(a5 + 8) = v9;
      *(a5 + 16) = a1;
      *(a5 + 24) = a2;
      *(a5 + 32) = v12;
      *(a5 + 33) = v36;
      *(a5 + 40) = v19;
      *(a5 + 48) = v20;
      *(a5 + 56) = v21;
      *(a5 + 64) = v22;
      *(a5 + 72) = v23;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v15 = 0xD00000000000002FLL;
    v15[1] = 0x8000000214792080;
    v15[2] = 0xD00000000000001CLL;
    v15[3] = 0x800000021478A360;
    swift_willThrow();
  }

  v24 = v10;
  v25 = v9;
  v26 = v17;
  v27 = v11;
  v28 = v12;
  v29 = v36;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  return sub_21430D2C8(&v24);
}

uint64_t sub_21422F010()
{
  v1 = 0x6F6974617265706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6C61766F72707061;
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

uint64_t sub_21422F080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437B2C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21422F0A8(uint64_t a1)
{
  v2 = sub_21430D31C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422F0E4(uint64_t a1)
{
  v2 = sub_21430D31C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422F120@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A420, &qword_2146F5E18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430D31C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  v12 = v6;
  v48 = a2;
  LOBYTE(v55) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  LOBYTE(v50) = 1;
  sub_21430D370();
  sub_2146DA1C8();
  v16 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A438, &qword_2146F5E20);
  v69 = 2;
  sub_21430D3C4();
  sub_2146DA1C8();
  v41 = v16;
  v43 = v68[8];
  v45 = v68[9];
  v46 = v68[7];
  v47 = v68[10];
  v18 = v68[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_214059900;
  *(v20 + 24) = 0;
  *(inited + 32) = v20;
  v44 = v18;
  sub_21430D49C(v46, v43, v45, v47, v18);
  sub_214042B80(inited, &v55);
  v21 = v56;
  v42 = v55;
  v22 = v58;
  v68[0] = v13;
  v68[1] = v15;
  v40 = v59;
  LOBYTE(v50) = v59;
  v55 = 0xD00000000000002FLL;
  v56 = 0x8000000214792080;
  v37 = v57;
  v38 = 0x8000000214792080;
  v57 = 0xD00000000000001CLL;
  v58 = 0x800000021478A360;
  v39 = v22;

  if (v42(v68, &v50, &v55))
  {

    sub_21430D4FC(v46, v43, v45, v47, v44);
    (*(v12 + 8))(v9, v5);

    v24 = v42;
    v23 = v43;
    *&v50 = v42;
    *(&v50 + 1) = v21;
    *&v51 = v13;
    *(&v51 + 1) = v15;
    v26 = v40;
    v25 = v41;
    LOBYTE(v52) = v40;
    BYTE1(v52) = v41;
    *(&v52 + 1) = v46;
    *&v53 = v43;
    *(&v53 + 1) = v45;
    *&v54 = v47;
    *(&v54 + 1) = v44;
    v27 = v53;
    v28 = v48;
    v48[2] = v52;
    v28[3] = v27;
    v28[4] = v54;
    v29 = v51;
    *v28 = v50;
    v28[1] = v29;
    sub_21430D55C(&v50, &v55);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v55 = v24;
    v56 = v21;
    v57 = v13;
    v58 = v15;
    v59 = v26;
    v60 = v25;
    v63 = v46;
    v64 = v23;
    v65 = v45;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v30 = v38;
    *v31 = 0xD00000000000002FLL;
    v31[1] = v30;
    v31[2] = 0xD00000000000001CLL;
    v31[3] = 0x800000021478A360;
    swift_willThrow();

    v33 = v45;
    v32 = v46;
    v34 = v43;
    sub_21430D4FC(v46, v43, v45, v47, v44);
    (*(v12 + 8))(v9, v5);
    v35 = v39;

    __swift_destroy_boxed_opaque_existential_1(v49);
    v55 = v42;
    v56 = v21;
    v57 = v37;
    v58 = v35;
    v59 = v40;
    v60 = v41;
    v61 = v70;
    v62 = v71;
    v63 = v32;
    v64 = v34;
    v65 = v33;
  }

  v66 = v47;
  v67 = v44;
  return sub_21430D2C8(&v55);
}

uint64_t sub_21422F64C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A450, &qword_2146F5E28);
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v26 = *(v1 + 33);
  v10 = *(v1 + 40);
  v18 = *(v1 + 48);
  v19 = v10;
  v11 = *(v1 + 56);
  v16 = *(v1 + 64);
  v17 = v11;
  v15 = *(v1 + 72);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430D31C();
  sub_2146DAA28();
  if (v8)
  {
    LOBYTE(v21) = 0;

    sub_2146DA328();
    if (v2)
    {
      (*(v20 + 8))(v7, v4);
    }

    else
    {

      LOBYTE(v21) = v26;
      v27 = 1;
      sub_21430D5B8();
      sub_2146DA388();
      v21 = v19;
      v22 = v18;
      v23 = v17;
      v24 = v16;
      v25 = v15;
      v27 = 2;
      sub_21430D49C(v19, v18, v17, v16, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A438, &qword_2146F5E20);
      sub_21430D60C();
      sub_2146DA388();
      sub_21430D4FC(v21, v22, v23, v24, v25);
      return (*(v20 + 8))(v7, v4);
    }
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21422F920@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_21422F930()
{
  v1 = 0x61487265626D656DLL;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_21422F99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437B3F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21422F9C4(uint64_t a1)
{
  v2 = sub_21430D6E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21422FA00(uint64_t a1)
{
  v2 = sub_21430D6E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21422FA3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A470, &qword_2146F5E30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430D6E4();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v19) = 0;
    v11 = sub_2146DA168();
    v13 = v12;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    v20 = 1;
    sub_2142E15CC();
    sub_2146DA1C8();
    v18 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    v20 = 2;
    sub_2142E1278();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v16 = v19;
    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v18;
    *(a2 + 24) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21422FCBC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A480, &qword_2146F5E38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v16 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430D6E4();
  sub_2146DAA28();
  LOBYTE(v20) = 0;
  v12 = v19;
  sub_2146DA328();
  if (!v12)
  {
    v14 = v16;
    v13 = v17;
    v20 = v18;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2142E1F00();
    sub_2146DA388();
    v20 = v13;
    v21 = v14;
    v22 = 2;
    sub_213FDCA18(v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905680, &unk_2146F3CE0);
    sub_2142E1CAC();
    sub_2146DA388();
    sub_213FDC6BC(v20, v21);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_21422FF04@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  *a6 = *a1;
  v11 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
  sub_21408AC04(a2, &a6[v11[5]], &qword_27C90A488, &qword_2146F5E40);
  sub_21408AC04(a3, &a6[v11[6]], &qword_27C90A490, &qword_2146F5E48);
  sub_21408AC04(a4, &a6[v11[7]], &qword_27C90A490, &qword_2146F5E48);
  return sub_21408AC04(a5, &a6[v11[8]], &qword_27C90A498, &qword_2146F5E50);
}

uint64_t sub_21422FFE8()
{
  v1 = *v0;
  v2 = 0x746E657665;
  v3 = 0x64417265626D656DLL;
  v4 = 0x65527265626D656DLL;
  if (v1 != 3)
  {
    v4 = 0x654C7265626D656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696C616974696E69;
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

uint64_t sub_2142300A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437B524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142300CC(uint64_t a1)
{
  v2 = sub_21430D738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214230108(uint64_t a1)
{
  v2 = sub_21430D738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214230144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A498, &qword_2146F5E50);
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v31[-v4];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
  v5 = *(*(v36 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v36);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v31[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A488, &qword_2146F5E40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31[-v13];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A4A0, &qword_2146F5E58);
  v15 = *(v37 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v37);
  v18 = &v31[-v17];
  v19 = a1[3];
  v20 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_21430D738();
  v38 = v18;
  v21 = v39;
  sub_2146DAA08();
  if (!v21)
  {
    v39 = v14;
    v22 = v15;
    v23 = v8;
    v45 = 0;
    sub_21430D78C();
    v24 = v37;
    sub_2146DA1C8();
    v25 = v46;
    v44 = 1;
    sub_21430D7E0();
    sub_2146DA1C8();
    v32 = v25;
    v43 = 2;
    sub_21430D894();
    sub_2146DA1C8();
    v42 = 3;
    sub_2146DA1C8();
    v26 = v39;
    v41 = 4;
    sub_21430D948();
    v27 = v34;
    sub_2146DA1C8();
    (*(v22 + 8))(v38, v24);
    v29 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
    v30 = v33;
    sub_21408AC04(v26, &v33[v29[5]], &qword_27C90A488, &qword_2146F5E40);
    sub_21408AC04(v10, &v30[v29[6]], &qword_27C90A490, &qword_2146F5E48);
    sub_21408AC04(v23, &v30[v29[7]], &qword_27C90A490, &qword_2146F5E48);
    sub_21408AC04(v27, &v30[v29[8]], &qword_27C90A498, &qword_2146F5E50);
    *v30 = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_214230614(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A4E8, &qword_2146F5E60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430D738();
  sub_2146DAA28();
  v23 = *v3;
  v22 = 0;
  sub_21430D9FC();
  sub_2146DA388();
  if (!v2)
  {
    v11 = type metadata accessor for IDSNearbySessionMessage.GroupMessage(0);
    v12 = v11[5];
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A488, &qword_2146F5E40);
    sub_21430DA50();
    sub_2146DA388();
    v13 = v11[6];
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A490, &qword_2146F5E48);
    sub_21430DB04();
    sub_2146DA388();
    v14 = v11[7];
    v19 = 3;
    sub_2146DA388();
    v15 = v11[8];
    v18 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A498, &qword_2146F5E50);
    sub_21430DBB8();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2142308D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2146D8B88();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_214230954()
{
  if (*v0)
  {
    result = 0x737265626D656DLL;
  }

  else
  {
    result = 0x69755570756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_214230994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69755570756F7267 && a2 == 0xE900000000000064;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000)
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

uint64_t sub_214230A78(uint64_t a1)
{
  v2 = sub_21430DC6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214230AB4(uint64_t a1)
{
  v2 = sub_21430DC6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214230AF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_2146D8B88();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A528, &qword_2146F5E68);
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DC6C();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v20;
    v24 = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
    v15 = v21;
    sub_2146DA1C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A538, &qword_2146F5E70);
    v23 = 1;
    sub_21430DCC0();
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v15);
    v17 = v22;
    v18 = v19;
    (*(v14 + 32))(v19, v7, v4);
    *(v18 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0) + 20)) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214230DC8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A550, &qword_2146F5E78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DC6C();
  sub_2146DAA28();
  v14 = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.Initialization(0) + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A538, &qword_2146F5E70);
    sub_21430DD98();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_214230FDC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2146D8B88();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20);
  v8 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v8;
  *(v7 + 57) = *(a2 + 57);
  result = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = result;
  return result;
}

uint64_t sub_214231078()
{
  if (*v0)
  {
    result = 0x7265626D656DLL;
  }

  else
  {
    result = 0x69755570756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_2142310B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69755570756F7267 && a2 == 0xE900000000000064;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265626D656DLL && a2 == 0xE600000000000000)
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

uint64_t sub_214231194(uint64_t a1)
{
  v2 = sub_21430DE70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142311D0(uint64_t a1)
{
  v2 = sub_21430DE70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21423120C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_2146D8B88();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A568, &qword_2146F5E80);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DE70();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v23;
    LOBYTE(v29) = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
    v15 = v24;
    sub_2146DA1C8();
    v33 = 1;
    sub_21430DD44();
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v15);
    v27 = v31;
    v28[0] = v32[0];
    *(v28 + 9) = *(v32 + 9);
    v25 = v29;
    v26 = v30;
    v17 = v22;
    (*(v14 + 32))(v22, v7, v4);
    v18 = (v17 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20));
    v19 = v28[0];
    v18[2] = v27;
    v18[3] = v19;
    *(v18 + 57) = *(v28 + 9);
    v20 = v26;
    *v18 = v25;
    v18[1] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21423151C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A578, &qword_2146F5E88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DE70();
  sub_2146DAA28();
  v27 = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  if (!v2)
  {
    v12 = (v3 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberAddedRemoved(0) + 20));
    v13 = v12[1];
    v14 = v12[3];
    v25 = v12[2];
    *v26 = v14;
    *&v26[9] = *(v12 + 57);
    v15 = v12[1];
    v24[0] = *v12;
    v24[1] = v15;
    v16 = v12[3];
    v22 = v25;
    v23[0] = v16;
    *(v23 + 9) = *(v12 + 57);
    v20 = v24[0];
    v21 = v13;
    v19 = 1;
    sub_21430DEC4(v24, v17);
    sub_21430DE1C();
    sub_2146DA388();
    v17[2] = v22;
    *v18 = v23[0];
    *&v18[9] = *(v23 + 9);
    v17[1] = v21;
    v17[0] = v20;
    sub_21430DF20(v17);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2142317C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2146D8B88();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_214231844()
{
  if (*v0)
  {
    result = 0x656B6F5473657375;
  }

  else
  {
    result = 0x69755570756F7267;
  }

  *v0;
  return result;
}

uint64_t sub_214231888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69755570756F7267 && a2 == 0xE900000000000064;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656B6F5473657375 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_214231968(uint64_t a1)
{
  v2 = sub_21430DF74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142319A4(uint64_t a1)
{
  v2 = sub_21430DF74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142319E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_2146D8B88();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A580, &qword_2146F5E90);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DF74();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v14 = v21;
    v24 = 0;
    sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0]);
    v15 = v22;
    sub_2146DA1C8();
    v23 = 1;
    v17 = sub_2146DA178();
    (*(v13 + 8))(v11, v15);
    v18 = v20;
    (*(v14 + 32))(v20, v7, v4);
    *(v18 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0) + 20)) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214231C90(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A590, &qword_2146F5E98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DF74();
  sub_2146DAA28();
  v13[15] = 0;
  sub_2146D8B88();
  sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0]);
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for IDSNearbySessionMessage.GroupMessage.MemberLeft(0) + 20));
    v13[14] = 1;
    sub_2146DA338();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_214231E78@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2146233F8(&v34);
  v10 = v34;
  v9 = v35;
  v11 = v37;
  v23 = v36;
  *v45 = *v39;
  *&v45[3] = *&v39[3];
  v27 = v40;
  v28 = v41;
  v30 = v42;
  v31 = v43;
  v24 = v44;
  v32 = a1;
  v33 = a2;
  v26 = v38;
  v46 = v38;
  v34 = 0xD000000000000032;
  v35 = 0x80000002147920B0;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  v29 = v9;
  v25 = v10;
  v12 = v10(&v32, &v46, &v34);
  if (v5)
  {

LABEL_6:

    v15 = v27;
    v17 = v29;

    a1 = v23;
    v13 = v24;
LABEL_7:
    v34 = v25;
    v35 = v17;
    v36 = a1;
    v37 = v11;
    v38 = v26;
    *v39 = *v45;
    *&v39[3] = *&v45[3];
    v40 = v15;
    v41 = v28;
    v42 = v30;
    v43 = v31;
    v44 = v13;
    return sub_21430DF20(&v34);
  }

  v20 = a2;
  if ((v12 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000032;
    v16[1] = 0x80000002147920B0;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  v32 = a3;
  v33 = a4;
  v13 = v24;
  v46 = v24;
  v34 = 0xD000000000000033;
  v35 = 0x80000002147920F0;
  v36 = 0xD00000000000001CLL;
  v37 = 0x800000021478A360;

  sub_213FDC9D0(v30, v31);
  v14 = v27(&v32, &v46, &v34);
  v15 = v27;
  if ((v14 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v19 = 0xD000000000000033;
    v19[1] = 0x80000002147920F0;
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000021478A360;
    swift_willThrow();

    v17 = v29;

    sub_213FDC6D0(v30, v31);
    v11 = v20;
    goto LABEL_7;
  }

  sub_213FDC6D0(v30, v31);

  result = sub_213FDC6D0(v30, v31);
  *a5 = v10;
  *(a5 + 8) = v29;
  *(a5 + 16) = a1;
  *(a5 + 24) = v20;
  *(a5 + 32) = v26;
  *(a5 + 33) = *v45;
  *(a5 + 36) = *&v45[3];
  *(a5 + 40) = v27;
  *(a5 + 48) = v28;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = v24;
  return result;
}

uint64_t sub_214232214()
{
  if (*v0)
  {
    result = 0x64496E656B6F74;
  }

  else
  {
    result = 0x656C646E6168;
  }

  *v0;
  return result;
}

uint64_t sub_21423224C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64496E656B6F74 && a2 == 0xE700000000000000)
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

uint64_t sub_214232324(uint64_t a1)
{
  v2 = sub_21430DFC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214232360(uint64_t a1)
{
  v2 = sub_21430DFC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21423239C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A598, &qword_2146F5EA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430DFC8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v62) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v72[7] = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v45 = v73;
  v51 = v74;
  sub_2146233F8(&v62);
  v16 = v63;
  v76 = v62;
  v17 = v65;
  v46 = v64;
  *v75 = *v67;
  *&v75[3] = *&v67[3];
  v50 = v68;
  v54 = v69;
  v55 = v70;
  v56 = v71;
  v52 = v72[0];
  v44 = v14;
  *&v57 = v14;
  *(&v57 + 1) = v13;
  v49 = v66;
  LOBYTE(v61[0]) = v66;
  v62 = 0xD000000000000032;
  v63 = 0x80000002147920B0;
  v47 = 0x80000002147920B0;
  v64 = 0xD00000000000001CLL;
  v65 = 0x800000021478A360;
  v48 = v17;

  v53 = v16;
  v18 = v76(&v57, v61, &v62);
  v19 = v47;
  v43 = 0x800000021478A360;
  v42 = v13;
  if (v18)
  {
    v20 = v43;

    v61[0] = v45;
    v61[1] = v51;
    LOBYTE(v57) = v52;
    v62 = 0xD000000000000033;
    v63 = 0x80000002147920F0;
    v64 = 0xD00000000000001CLL;
    v65 = v20;

    sub_213FDC9D0(v55, v56);
    v21 = v50;
    v22 = v50(v61, &v57, &v62);
    v23 = v21;
    if (v22)
    {
      sub_213FDC6D0(v55, v56);

      (*(v6 + 8))(v9, v5);
      v30 = v54;

      sub_213FDC6D0(v55, v56);
      v31 = v76;
      *&v57 = v76;
      *(&v57 + 1) = v53;
      *&v58 = v44;
      v32 = v42;
      *(&v58 + 1) = v42;
      v33 = v49;
      LOBYTE(v59) = v49;
      *(&v59 + 1) = *v75;
      DWORD1(v59) = *&v75[3];
      *(&v59 + 1) = v21;
      *v60 = v30;
      v34 = v51;
      *&v60[8] = v45;
      *&v60[16] = v51;
      v35 = v52;
      v60[24] = v52;
      v36 = v57;
      v37 = v58;
      *(a2 + 57) = *&v60[9];
      v38 = *v60;
      a2[2] = v59;
      a2[3] = v38;
      *a2 = v36;
      a2[1] = v37;
      sub_21430DEC4(&v57, &v62);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v62 = v31;
      v63 = v53;
      v64 = v44;
      v65 = v32;
      v66 = v33;
      *v67 = *v75;
      *&v67[3] = *&v75[3];
      v68 = v50;
      v69 = v30;
      v70 = v45;
      v71 = v34;
      v72[0] = v35;
      return sub_21430DF20(&v62);
    }

    sub_214031C4C();
    swift_allocError();
    *v39 = 0xD000000000000033;
    v39[1] = 0x80000002147920F0;
    v40 = v43;
    v39[2] = 0xD00000000000001CLL;
    v39[3] = v40;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);

    sub_213FDC6D0(v55, v56);
    v26 = v42;
    v27 = v53;
    v28 = &v70;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v24 = 0xD000000000000032;
    v24[1] = v19;
    v25 = v43;
    v24[2] = 0xD00000000000001CLL;
    v24[3] = v25;
    swift_willThrow();

    v23 = v50;
    v26 = v48;
    (*(v6 + 8))(v9, v5);

    v27 = v53;

    v28 = v72;
  }

  v29 = *(v28 - 32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v62 = v76;
  v63 = v27;
  v64 = v29;
  v65 = v26;
  v66 = v49;
  *v67 = *v75;
  *&v67[3] = *&v75[3];
  v68 = v23;
  v69 = v54;
  v70 = v55;
  v71 = v56;
  v72[0] = v52;
  return sub_21430DF20(&v62);
}

BlastDoor::AvatarRecipe::MonogramRecipe __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AvatarRecipe.MonogramRecipe.init(with:center:)(Swift::OpaquePointer with, BlastDoor::AvatarRecipe::MonogramRecipe::Point center)
{
  *v3 = with;
  v4 = *v2;
  *(v3 + 8) = *v2;
  result.center.y = center.y;
  result.center.x = *&v4;
  result.commands = with;
  return result;
}

uint64_t sub_214232B5C()
{
  if (*v0)
  {
    result = 0x7265746E6563;
  }

  else
  {
    result = 0x73646E616D6D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_214232B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73646E616D6D6F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000)
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

uint64_t sub_214232C6C(uint64_t a1)
{
  v2 = sub_21430E01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214232CA8(uint64_t a1)
{
  v2 = sub_21430E01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvatarRecipe.MonogramRecipe.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A5B0, &qword_2146F5EB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E01C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A5C0, &qword_2146F5EB8);
    v15 = 0;
    sub_21430E070();
    sub_2146DA1C8();
    v11 = v14;
    v15 = 1;
    sub_21430E148();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AvatarRecipe.MonogramRecipe.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A5E0, &qword_2146F5EC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E01C();

  sub_2146DAA28();
  v14[0] = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A5C0, &qword_2146F5EB8);
  sub_21430E19C();
  sub_2146DA388();

  if (!v2)
  {
    v14[0] = v10;
    v14[1] = v11;
    v15 = 1;
    sub_21430E274();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

BlastDoor::AvatarRecipe::MonogramRecipe::Point __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AvatarRecipe.MonogramRecipe.Point.init(with:y:)(Swift::Double with, Swift::Double y)
{
  *v2 = with;
  v2[1] = y;
  result.y = y;
  result.x = with;
  return result;
}

uint64_t sub_2142330DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2142331A4(uint64_t a1)
{
  v2 = sub_21430E2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142331E0(uint64_t a1)
{
  v2 = sub_21430E2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214233260@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, void *a5@<X8>)
{
  v21 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v14 = v20;
    v13 = v21;
    v23 = 0;
    sub_2146DA188();
    v16 = v15;
    v22 = 1;
    sub_2146DA188();
    v18 = v17;
    (*(v14 + 8))(v11, v8);
    *v13 = v16;
    v13[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214233454(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v13 = *v4;
  v12 = v4[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA28();
  v19 = 0;
  v15 = v17[1];
  sub_2146DA348();
  if (!v15)
  {
    v18 = 1;
    sub_2146DA348();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t AvatarRecipe.EmojiRecipe.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
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
  v17 = 0xD00000000000001ELL;
  v18 = 0x8000000214792130;
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
    *v14 = 0xD00000000000001ELL;
    v14[1] = 0x8000000214792130;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214233844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000)
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

uint64_t sub_2142338C8(uint64_t a1)
{
  v2 = sub_21430E31C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214233904(uint64_t a1)
{
  v2 = sub_21430E31C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvatarRecipe.EmojiRecipe.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A618, &qword_2146F5ED8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E31C();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v25 = a2;
  v28 = v11;
  v29 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 1;
  *(v15 + 16) = sub_21438F758;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v31);
  v18 = v31;
  v17 = v32;
  v30[0] = v28;
  v30[1] = v29;
  v36 = v35;
  v37 = v35;
  v31 = 0xD00000000000001ELL;
  v32 = 0x8000000214792130;
  v26 = 0x8000000214792130;
  v27 = v34;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v19 = v18(v30, &v37, &v31);
  v20 = v26;
  if (v19)
  {

    (*(v6 + 8))(v9, v5);

    v21 = v25;
    *v25 = v18;
    v21[1] = v17;
    v22 = v29;
    v21[2] = v28;
    v21[3] = v22;
    *(v21 + 32) = v36;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0xD00000000000001ELL;
  v23[1] = v20;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}