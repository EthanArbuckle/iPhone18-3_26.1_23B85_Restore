uint64_t sub_214233D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567616D69 && a2 == 0xE500000000000000)
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

uint64_t sub_214233DB4(uint64_t a1)
{
  v2 = sub_21430E370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214233DF0(uint64_t a1)
{
  v2 = sub_21430E370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214233F10@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v13 = *a3;
  v12 = a3[1];
  v15 = a3[2];
  v14 = a3[3];
  v42 = *a5;
  v43 = *a6;
  v44 = a6[1];
  v45 = a6[2];
  v46 = a6[3];
  v16 = *(a6 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2146F3C80;
  *(v18 + 16) = sub_21438F53C;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  sub_2140442CC(v17, &v49);
  v21 = v49;
  v20 = v50;
  v22 = *&v51;
  v23 = v52;
  v24 = BYTE1(v52);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146E9BF0;
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146F3C90;
  *(v26 + 16) = sub_21438F53C;
  *(v26 + 24) = v27;
  *(v25 + 32) = v26;
  sub_2140442CC(v25, v78);
  v28 = v78[1];
  v47 = v78[0];
  v38 = v78[2];
  v29 = v79;
  v48 = v80;
  v81 = v16;
  v91 = v23;
  v88 = v79;
  v83 = v23;
  *v78 = a8;
  v82[0] = v24;
  v49 = 0xD000000000000024;
  v50 = 0x8000000214792150;
  *&v51 = -2.31584178e77;
  v52 = 0x800000021478A360;

  v30 = v21(v78, v82, &v49);
  if (v39)
  {

LABEL_6:

    v91 = v23;
LABEL_7:
    v49 = a1;
    v50 = a2;
    v51 = v21;
    v52 = v20;
    v53 = v22;
    v54 = v91;
    v55 = v24;
    v56 = v89;
    v57 = v90;
    v58 = v47;
    v59 = v28;
    v60 = v38;
    v61 = v88;
    v62 = v48;
    v63 = v86;
    v64 = v87;
    v65 = v13;
    v66 = v12;
    v67 = v15;
    v68 = v14;
    v69 = a4 & 1;
    v70 = v42;
    v71 = v84;
    v72 = v85;
    v73 = v43;
    v74 = v44;
    v75 = v45;
    v76 = v46;
    v77 = v16;
    return sub_21430E3C4(&v49);
  }

  if ((v30 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v32 = 0xD000000000000024;
    v32[1] = 0x8000000214792150;
    v32[2] = 0xD00000000000001CLL;
    v32[3] = 0x800000021478A360;
    swift_willThrow();
    v23 = v83;
    goto LABEL_6;
  }

  v91 = 0;
  v83 = v29;
  *v78 = a9;
  v82[0] = v48;
  v49 = 0xD000000000000026;
  v50 = 0x8000000214792180;
  *&v51 = -2.31584178e77;
  v52 = 0x800000021478A360;

  v31 = v47(v78, v82, &v49);
  if ((v31 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD000000000000026;
    v35[1] = 0x8000000214792180;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();
    v36 = v83;

    v88 = v36;
    v22 = a8;
    goto LABEL_7;
  }

  v88 = 0;
  v34 = v91;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v21;
  *(a7 + 24) = v20;
  *(a7 + 32) = a8;
  *(a7 + 40) = v34;
  *(a7 + 41) = v24;
  *(a7 + 48) = v47;
  *(a7 + 56) = v28;
  *(a7 + 64) = a9;
  *(a7 + 72) = 0;
  *(a7 + 73) = v48;
  *(a7 + 80) = v13;
  *(a7 + 88) = v12;
  *(a7 + 96) = v15;
  *(a7 + 104) = v14;
  *(a7 + 112) = a4 & 1;
  *(a7 + 113) = v42;
  *(a7 + 120) = v43;
  *(a7 + 128) = v44;
  *(a7 + 136) = v45;
  *(a7 + 144) = v46;
  *(a7 + 152) = v16;
  return result;
}

uint64_t sub_214234418()
{
  v1 = *v0;
  v2 = 0x656D614E746E6F66;
  v3 = 1701869940;
  if (v1 != 5)
  {
    v3 = 0x756F72676B636162;
  }

  v4 = 0x6F6C6F43746E6F66;
  if (v1 != 3)
  {
    v4 = 0x6369747265567369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x657A6953746E6F66;
  if (v1 != 1)
  {
    v5 = 0x67696557746E6F66;
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

uint64_t sub_214234500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437B6EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214234528(uint64_t a1)
{
  v2 = sub_21430E418();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214234564(uint64_t a1)
{
  v2 = sub_21430E418();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142345A0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A648, &qword_2146F5EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430E418();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v12 = v6;
  LOBYTE(v81) = 0;
  v13 = sub_2146DA168();
  v15 = v14;
  v69 = v13;
  LOBYTE(v81) = 1;
  sub_2146DA188();
  v17 = v16;
  LOBYTE(v81) = 2;
  sub_2146DA188();
  v20 = v19;
  LOBYTE(v71) = 3;
  sub_2142FCE0C();
  sub_2146DA1C8();
  v22 = v81;
  v21 = v82;
  v24 = v83;
  v23 = v84;
  LOBYTE(v81) = 4;
  v25 = sub_2146DA178();
  LOBYTE(v71) = 5;
  sub_21430E46C();
  sub_2146DA1C8();
  v68 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8);
  v110[7] = 6;
  sub_2142FD5B0();
  sub_2146DA1C8();
  v55 = v112;
  v57 = v111;
  v58 = v113;
  v66 = v114;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v67 = swift_allocObject();
  v61 = xmmword_2146E9BF0;
  *(v67 + 16) = xmmword_2146E9BF0;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2146F3C80;
  *(v26 + 16) = sub_21438F53C;
  *(v26 + 24) = v27;
  v28 = v67;
  *(v67 + 32) = v26;
  sub_2140442CC(v28, &v81);
  v65 = v81;
  LODWORD(v59) = v25;
  v67 = v82;
  v29 = v83;
  v63 = v84;
  v64 = BYTE1(v84);
  v30 = swift_allocObject();
  *(v30 + 16) = v61;
  v31 = swift_allocObject();
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2146F3C90;
  *(v31 + 16) = sub_21438F53C;
  *(v31 + 24) = v32;
  *(v30 + 32) = v31;
  sub_2140442CC(v30, &v71);
  v62 = *(&v71 + 1);
  v60 = v71;
  v54 = v72;
  LODWORD(v61) = BYTE9(v72);
  v56 = v59 & 1;
  v109 = v66;
  v122 = v63;
  v53 = BYTE8(v72);
  v119 = BYTE8(v72);
  LOBYTE(v80) = v63;
  *&v71 = v17;
  v110[0] = v64;
  v81 = 0xD000000000000024;
  v82 = 0x8000000214792150;
  v83 = 0xD00000000000001CLL;
  v84 = 0x800000021478A360;
  v59 = 0x800000021478A360;

  v33 = v65(&v71, v110, &v81);
  if (v33)
  {
    v34 = v59;

    v122 = 0;
    v110[0] = v53;
    v80 = v20;
    LOBYTE(v71) = v61;
    v81 = 0xD000000000000026;
    v82 = 0x8000000214792180;
    v83 = 0xD00000000000001CLL;
    v84 = v34;

    v35 = v60(&v80, &v71, &v81);
    if (v35)
    {

      (*(v12 + 8))(v9, v5);
      v42 = v62;

      v119 = 0;
      *&v71 = v69;
      *(&v71 + 1) = v15;
      *&v72 = v65;
      *(&v72 + 1) = v67;
      *&v73 = v17;
      v63 = v122;
      BYTE8(v73) = v122;
      v43 = v64;
      BYTE9(v73) = v64;
      *(&v73 + 10) = v120;
      HIWORD(v73) = v121;
      *&v74 = v60;
      *(&v74 + 1) = v42;
      *&v75 = v20;
      BYTE8(v75) = 0;
      BYTE9(v75) = v61;
      HIWORD(v75) = v118;
      *(&v75 + 10) = v117;
      *&v76 = v22;
      *(&v76 + 1) = v21;
      *&v77 = v24;
      *(&v77 + 1) = v23;
      LOBYTE(v78) = v56;
      v44 = v68;
      BYTE1(v78) = v68;
      *(&v78 + 2) = v115;
      WORD3(v78) = v116;
      v45 = v55;
      *(&v78 + 1) = v57;
      v79[0] = v55;
      *&v79[1] = v58;
      BYTE8(v79[1]) = v66;
      a2[8] = v55;
      v46 = v76;
      a2[4] = v75;
      a2[5] = v46;
      v47 = v72;
      *a2 = v71;
      a2[1] = v47;
      *(a2 + 137) = *(v79 + 9);
      v48 = v78;
      a2[6] = v77;
      a2[7] = v48;
      v49 = v74;
      a2[2] = v73;
      a2[3] = v49;
      sub_21430E4C0(&v71, &v81);
      __swift_destroy_boxed_opaque_existential_1(v70);
      v81 = v69;
      v82 = v15;
      v83 = v65;
      v84 = v67;
      v85 = v17;
      v86 = v63;
      v87 = v43;
      v88 = v120;
      v89 = v121;
      v90 = v60;
      v91 = v42;
      v92 = v20;
      v93 = 0;
      v94 = v61;
      v95 = v117;
      v96 = v118;
      v97 = v22;
      v98 = v21;
      v99 = v24;
      v100 = v23;
      v101 = v56;
      v102 = v44;
      v103 = v115;
      v104 = v116;
      v105 = v57;
      v106 = v45;
      goto LABEL_8;
    }

    sub_214031C4C();
    swift_allocError();
    *v50 = 0xD000000000000026;
    v50[1] = 0x8000000214792180;
    v51 = v59;
    v50[2] = 0xD00000000000001CLL;
    v50[3] = v51;
    swift_willThrow();
    (*(v12 + 8))(v9, v5);
    v53 = v110[0];

    v119 = v53;
    v29 = v17;
    v39 = v68;
    v41 = v65;
    v40 = v67;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v36 = 0xD000000000000024;
    v36[1] = 0x8000000214792150;
    v37 = v59;
    v36[2] = 0xD00000000000001CLL;
    v36[3] = v37;
    swift_willThrow();
    (*(v12 + 8))(v9, v5);
    v38 = v80;
    v39 = v68;
    v40 = v67;

    v122 = v38;
    v41 = v65;
  }

  __swift_destroy_boxed_opaque_existential_1(v70);
  v81 = v69;
  v82 = v15;
  v83 = v41;
  v84 = v40;
  v85 = v29;
  v86 = v122;
  v87 = v64;
  v88 = v120;
  v89 = v121;
  v90 = v60;
  v91 = v62;
  v92 = v54;
  v93 = v119;
  v94 = v61;
  v96 = v118;
  v95 = v117;
  v97 = v22;
  v98 = v21;
  v99 = v24;
  v100 = v23;
  v101 = v56;
  v102 = v39;
  v103 = v115;
  v104 = v116;
  v105 = v57;
  v106 = v55;
LABEL_8:
  v107 = v58;
  v108 = v66;
  return sub_21430E3C4(&v81);
}

uint64_t sub_214234F18(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A660, &unk_2146F5F00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[4];
  v36 = *(v1 + 40);
  v11 = v1[8];
  v12 = *(v1 + 72);
  v13 = *(v1 + 5);
  v27 = *(v1 + 6);
  v28 = v13;
  v30 = *(v1 + 112);
  v31 = v12;
  v29 = *(v1 + 113);
  v14 = *(v1 + 15);
  v25 = *(v1 + 17);
  v26 = v14;
  v15 = *(v1 + 152);
  v17 = a1[3];
  v16 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_21430E418();
  sub_2146DAA28();
  LOBYTE(v33) = 0;
  v21 = v32;
  sub_2146DA328();
  if (v21)
  {
    return (*(v4 + 8))(v7, v20);
  }

  v23 = v31;
  v24 = v29;
  if (v36 & 1) != 0 || (LOBYTE(v33) = 1, sub_2146DA348(), (v23))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    LOBYTE(v33) = 2;
    sub_2146DA348();
    v34 = v27;
    v33 = v28;
    v37 = 3;
    sub_2142FCF88();
    sub_2146DA388();
    LOBYTE(v33) = 4;
    sub_2146DA338();
    LOBYTE(v33) = v24;
    v37 = 5;
    sub_21430E51C();
    sub_2146DA388();
    v34 = v25;
    v33 = v26;
    v35 = v15;
    v37 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908590, &qword_2146F50C8);
    sub_2142FD688();
    sub_2146DA388();
    return MEMORY[8](v7, v20);
  }

  return result;
}

uint64_t sub_2142352F8@<X0>(unint64_t a1@<X0>, void (*a2)(void, void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, unsigned __int8 a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v246 = a7;
  v263 = a6;
  v225 = a5;
  v243 = a3;
  v244 = a4;
  v290 = a2;
  v262 = a1;
  v258 = a32;
  v254 = a29;
  v255 = a21;
  v256 = a20;
  v257 = a19;
  v259 = a16;
  LODWORD(v261) = a27;
  LODWORD(v260) = a26;
  v249 = a25;
  v248 = a24;
  LODWORD(v247) = a23;
  LODWORD(v245) = a22;
  LODWORD(v242) = a12;
  v241 = a11;
  v240 = a10;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v34 = *(*(v222 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v222);
  v221 = &v220 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v223 = (&v220 - v37);
  v38 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
  v39 = a9 + v38[10];
  v253 = a13;
  sub_213FB2E54(a13, v39, &qword_27C913090, &unk_2146E9DB0);
  v40 = a9 + v38[11];
  v252 = a14;
  sub_213FB2E54(a14, v40, &unk_27C904F30, &unk_2146EFA20);
  v41 = a9 + v38[23];
  v251 = a30;
  sub_213FB2E54(a30, v41, &qword_27C913090, &unk_2146E9DB0);
  sub_2143E05AC(&v286);
  v231 = v288;
  v232 = v287;
  v236 = v289;
  sub_2143E05E0(&v282);
  v234 = v284;
  v235 = v283;
  v233 = v285;
  sub_2143E072C(&v278);
  v238 = v280;
  v239 = v279;
  v237 = v281;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B8, &qword_2146EAA08);
  v43 = swift_allocObject();
  v44 = swift_allocObject();
  *(v44 + 16) = 0x600000000;
  *(v43 + 16) = sub_21430E570;
  *(v43 + 24) = v44;
  *(v42 + 32) = v43;
  sub_214044C10(v42, &v274);
  v226 = v276;
  v227 = v275;
  v45 = v277;
  sub_2143E087C(&v270);
  v47 = v271;
  v46 = v272;
  v48 = v273;
  v224 = v38[15];
  sub_2143E08B0((a9 + v224));
  v220 = v38[16];
  sub_2143E0A5C((a9 + v220));
  sub_2143E0C08(&v266);
  v229 = v268;
  v230 = v267;
  v228 = v269;
  sub_2143E0C3C(v264);
  v49 = v231;
  *(a9 + 16) = v232;
  *(a9 + 24) = v49;
  *a9 = v286;
  *(a9 + 32) = v236;
  v50 = v244;
  *(a9 + 40) = v243;
  *(a9 + 48) = v50;
  *(a9 + 56) = v282;
  v51 = v234;
  *(a9 + 72) = v235;
  *(a9 + 80) = v51;
  *(a9 + 88) = v233;
  *(a9 + 96) = v246;
  *(a9 + 104) = a8;
  v52 = v241;
  *(a9 + 112) = v240;
  *(a9 + 120) = v52;
  *(a9 + 128) = v242;
  v53 = a9 + v38[12];
  *v53 = v278;
  v54 = v238;
  *(v53 + 16) = v239;
  *(v53 + 24) = v54;
  *(v53 + 32) = v237;
  v55 = a9 + v38[13];
  *v55 = v274;
  LOBYTE(v54) = v226;
  *(v55 + 16) = v227;
  *(v55 + 20) = v54;
  *(v55 + 21) = v45;
  v56 = a9 + v38[14];
  *v56 = v270;
  *(v56 + 16) = v47;
  *(v56 + 24) = v46;
  v57 = a9;
  *(v56 + 32) = v48;
  *(a9 + v38[17]) = v245;
  *(a9 + v38[18]) = v247;
  v58 = (a9 + v38[19]);
  *v58 = v248;
  v58[1] = v249;
  *(a9 + v38[20]) = v260;
  *(a9 + v38[21]) = v261;
  LOBYTE(v58) = v265;
  v59 = a9 + v38[22];
  *v59 = v266;
  *(v59 + 16) = v230;
  *(v59 + 24) = v229;
  *(v59 + 32) = v228;
  v60 = a9 + v38[24];
  v61 = v264[1];
  *v60 = v264[0];
  *(v60 + 16) = v61;
  *(v60 + 32) = v58;
  v62 = *a9;
  v63 = *(v57 + 8);
  v64 = *(v57 + 16);
  v65 = *(v57 + 24);
  v260 = v57;
  v66 = *(v57 + 32);
  *&v282 = v262;
  *(&v282 + 1) = v290;
  LODWORD(v249) = v66;
  LOBYTE(v278) = v66;
  *&v286 = 0xD000000000000035;
  *(&v286 + 1) = 0x80000002147921B0;
  v245 = 0x80000002147921B0;
  v287 = 0xD00000000000001CLL;
  v288 = 0x800000021478A360;
  v261 = 0x800000021478A360;

  v247 = v65;
  v248 = v64;
  sub_213FDC9D0(v64, v65);
  v246 = v63;
  v67 = v250;
  v250 = v62;
  v68 = v62(&v282, &v278, &v286);
  if (v67)
  {
    v262 = v67;

LABEL_6:

    sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v256, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);
    v71 = v260;
    v85 = v260[1];
    v86 = v260[2];
    v87 = v260[3];

    sub_213FDC6D0(v86, v87);
    v88 = v246;
    *v71 = v250;
    *(v71 + 8) = v88;
    v89 = v247;
    *(v71 + 16) = v248;
    *(v71 + 24) = v89;
    *(v71 + 32) = v249;
    return sub_21432887C(v71, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v69 = v245;
  v70 = v261;
  v243 = v55;
  v244 = v53;
  v241 = v59;
  v242 = v56;
  if ((v68 & 1) == 0)
  {
    sub_214031C4C();
    v83 = swift_allocError();
    *v84 = 0xD000000000000035;
    v84[1] = v69;
    v84[2] = 0xD00000000000001CLL;
    v84[3] = v70;
    v262 = v83;
    swift_willThrow();
    goto LABEL_6;
  }

  v240 = v60;
  sub_213FDC6D0(v248, v247);

  v71 = v260;
  v72 = v260[1];
  v73 = v260[2];
  v74 = v260[3];

  sub_213FDC6D0(v73, v74);
  v75 = v246;
  *v71 = v250;
  *(v71 + 8) = v75;
  v76 = v290;
  *(v71 + 16) = v262;
  *(v71 + 24) = v76;
  *(v71 + 32) = v249;
  v78 = *(v71 + 56);
  v77 = *(v71 + 64);
  v79 = *(v71 + 72);
  v80 = *(v71 + 80);
  v81 = *(v71 + 88);
  *&v282 = v225;
  *(&v282 + 1) = v263;
  LODWORD(v250) = v81;
  LOBYTE(v278) = v81;
  *&v286 = 0xD000000000000038;
  *(&v286 + 1) = 0x80000002147921F0;
  v287 = 0xD00000000000001CLL;
  v288 = v70;

  sub_213FDC9D0(v79, v80);
  v290 = v78;
  v82 = v78(&v282, &v278, &v286);
  if ((v82 & 1) == 0)
  {
    sub_214031C4C();
    v102 = swift_allocError();
    *v103 = 0xD000000000000038;
    v103[1] = 0x80000002147921F0;
    v104 = v261;
    v103[2] = 0xD00000000000001CLL;
    v103[3] = v104;
    v262 = v102;
    swift_willThrow();

    sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v256, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);
    v105 = *(v71 + 64);
    v106 = *(v71 + 72);
    v107 = *(v71 + 80);

    sub_213FDC6D0(v106, v107);
    *(v71 + 56) = v290;
    *(v71 + 64) = v77;
    *(v71 + 72) = v79;
    *(v71 + 80) = v80;
    *(v71 + 88) = v250;
    return sub_21432887C(v71, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v262 = 0;
  sub_213FDC6D0(v79, v80);
  v91 = v261;

  v92 = *(v71 + 64);
  v93 = *(v71 + 72);
  v94 = *(v71 + 80);

  sub_213FDC6D0(v93, v94);
  *(v71 + 56) = v290;
  *(v71 + 64) = v77;
  v95 = v263;
  *(v71 + 72) = v225;
  *(v71 + 80) = v95;
  *(v71 + 88) = v250;
  v97 = *v244;
  v96 = *(v244 + 8);
  v98 = *(v244 + 16);
  v99 = *(v244 + 24);
  LODWORD(v95) = *(v244 + 32);
  *&v282 = a15;
  *(&v282 + 1) = v259;
  LODWORD(v263) = v95;
  LOBYTE(v278) = v95;
  *&v286 = 0xD00000000000002FLL;
  *(&v286 + 1) = 0x8000000214792230;
  v287 = 0xD00000000000001CLL;
  v288 = v91;

  v249 = v99;
  v250 = v98;
  sub_213FDC9D0(v98, v99);
  v248 = v96;
  v100 = v262;
  v290 = v97;
  v101 = v97(&v282, &v278, &v286);
  if (v100)
  {

LABEL_15:

    sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v256, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);
    v122 = v244;
    v123 = *(v244 + 8);
    v124 = *(v244 + 16);
    v125 = *(v244 + 24);

    sub_213FDC6D0(v124, v125);
    v126 = v248;
    *v122 = v290;
    *(v122 + 8) = v126;
    v127 = v249;
    *(v122 + 16) = v250;
    *(v122 + 24) = v127;
    *(v122 + 32) = v263;
    v71 = v260;
    return sub_21432887C(v71, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v262 = a15;
  if ((v101 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v120 = 0xD00000000000002FLL;
    v120[1] = 0x8000000214792230;
    v121 = v261;
    v120[2] = 0xD00000000000001CLL;
    v120[3] = v121;
    swift_willThrow();
    goto LABEL_15;
  }

  sub_213FDC6D0(v250, v249);
  v108 = v261;

  v109 = v244;
  v110 = *(v244 + 8);
  v111 = *(v244 + 16);
  v112 = *(v244 + 24);

  sub_213FDC6D0(v111, v112);
  v113 = v248;
  *v109 = v290;
  *(v109 + 8) = v113;
  v114 = v259;
  *(v109 + 16) = v262;
  *(v109 + 24) = v114;
  *(v109 + 32) = v263;
  v115 = v243;
  v117 = *v243;
  v116 = *(v243 + 8);
  LODWORD(v259) = *(v243 + 16);
  LODWORD(v250) = *(v243 + 20);
  v118 = *(v243 + 21);
  LODWORD(v282) = a17;
  LOBYTE(v278) = v118;
  *&v286 = 0xD00000000000003CLL;
  *(&v286 + 1) = 0x8000000214792260;
  v262 = 0x8000000214792260;
  v287 = 0xD00000000000001CLL;
  v288 = v108;

  v290 = v116;
  v263 = v117;
  v119 = v117(&v282, &v278, &v286);
  v128 = v262;
  LODWORD(v249) = a17;
  if ((v119 & 1) == 0)
  {
    LODWORD(v249) = v118;

    sub_214031C4C();
    swift_allocError();
    *v137 = 0xD00000000000003CLL;
    v137[1] = v128;
    v137[2] = 0xD00000000000001CLL;
    v137[3] = v108;
    swift_willThrow();
    sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v256, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);
    v71 = v260;
    v138 = v243;
    v139 = *(v243 + 8);

    v140 = v290;
    *v138 = v263;
    *(v138 + 8) = v140;
    *(v138 + 16) = v259;
    *(v138 + 20) = v250;
    *(v138 + 21) = v249;
    return sub_21432887C(v71, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v129 = *(v115 + 8);

  v130 = v290;
  *v115 = v263;
  *(v115 + 8) = v130;
  *(v115 + 16) = v249;
  *(v115 + 20) = 0;
  *(v115 + 21) = v118;
  v132 = *v242;
  v131 = *(v242 + 8);
  v133 = *(v242 + 16);
  v134 = *(v242 + 24);
  v135 = *(v242 + 32);
  *&v282 = a18;
  *(&v282 + 1) = v257;
  LODWORD(v290) = v135;
  LOBYTE(v278) = v135;
  *&v286 = 0xD000000000000036;
  *(&v286 + 1) = 0x80000002147922A0;
  v287 = 0xD00000000000001CLL;
  v288 = v108;

  v263 = v133;
  sub_213FDC9D0(v133, v134);
  v136 = v132(&v282, &v278, &v286);
  v71 = v260;
  if ((v136 & 1) == 0)
  {
    sub_214031C4C();
    v154 = swift_allocError();
    *v155 = 0xD000000000000036;
    v155[1] = 0x80000002147922A0;
    v156 = v261;
    v155[2] = 0xD00000000000001CLL;
    v155[3] = v156;
    v262 = v154;
    swift_willThrow();

    sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v256, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);
    v157 = v242;
    v158 = *(v242 + 8);
    v159 = *(v242 + 16);
    v160 = *(v242 + 24);

    sub_213FDC6D0(v159, v160);
    *v157 = v132;
    *(v157 + 8) = v131;
    *(v157 + 16) = v263;
    *(v157 + 24) = v134;
    *(v157 + 32) = v290;
    return sub_21432887C(v71, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v262 = 0;
  sub_213FDC6D0(v263, v134);
  v141 = v261;

  v142 = v242;
  v143 = *(v242 + 8);
  v144 = *(v242 + 16);
  v145 = *(v242 + 24);

  sub_213FDC6D0(v144, v145);
  *v142 = v132;
  *(v142 + 8) = v131;
  v146 = v257;
  *(v142 + 16) = a18;
  *(v142 + 24) = v146;
  *(v142 + 32) = v290;
  v147 = v223;
  sub_213FB2E54(v71 + v224, v223, &qword_27C903F38, &unk_2146E9D40);
  v148 = *v147;
  v149 = v147[1];
  v150 = v222;
  LOBYTE(v282) = *(v147 + *(v222 + 32));
  *&v286 = 0xD00000000000002ELL;
  *(&v286 + 1) = 0x80000002147922E0;
  v287 = 0xD00000000000001CLL;
  v288 = v141;
  v151 = v256;
  v152 = v262;
  v153 = v148(v256, &v282, &v286);
  v262 = v152;
  if (v152)
  {

    sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v151, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);

LABEL_27:
    sub_21402EDB8(v223, v71 + v224, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(v71, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  if ((v153 & 1) == 0)
  {

    sub_214031C4C();
    v171 = swift_allocError();
    *v172 = 0xD00000000000002ELL;
    v172[1] = 0x80000002147922E0;
    v173 = v261;
    v172[2] = 0xD00000000000001CLL;
    v172[3] = v173;
    v262 = v171;
    swift_willThrow();
    sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v256, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);
    v71 = v260;
    goto LABEL_27;
  }

  v161 = v261;

  v162 = *(v150 + 28);
  sub_213FB2DF4(v147 + v162, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v256, v147 + v162, &unk_27C9131A0, &unk_2146E9D10);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v290 = *(*(v163 - 8) + 56);
  v290(v147 + v162, 0, 1, v163);
  v164 = v260;
  sub_21402EDB8(v147, v260 + v224, &qword_27C903F38, &unk_2146E9D40);
  v165 = v164 + v220;
  v166 = v221;
  sub_213FB2E54(v165, v221, &qword_27C903F38, &unk_2146E9D40);
  v167 = *v166;
  v168 = *(v166 + 8);
  LOBYTE(v282) = *(v166 + *(v150 + 32));
  *&v286 = 0xD000000000000034;
  *(&v286 + 1) = 0x8000000214792310;
  v287 = 0xD00000000000001CLL;
  v288 = v161;
  v169 = v262;
  v170 = v167(v255, &v282, &v286);
  if (v169)
  {

    sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v256, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);

LABEL_31:
    v71 = v260;
    sub_21402EDB8(v221, v260 + v220, &qword_27C903F38, &unk_2146E9D40);
    return sub_21432887C(v71, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  if ((v170 & 1) == 0)
  {

    sub_214031C4C();
    swift_allocError();
    *v184 = 0xD000000000000034;
    v184[1] = 0x8000000214792310;
    v185 = v261;
    v184[2] = 0xD00000000000001CLL;
    v184[3] = v185;
    swift_willThrow();
    sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v256, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);
    goto LABEL_31;
  }

  v174 = v261;

  v175 = v221;
  v176 = *(v222 + 28);
  sub_213FB2DF4(v221 + v176, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v255, v175 + v176, &unk_27C9131A0, &unk_2146E9D10);
  v290(v175 + v176, 0, 1, v163);
  sub_21402EDB8(v175, v260 + v220, &qword_27C903F38, &unk_2146E9D40);
  v178 = *v241;
  v177 = *(v241 + 8);
  v179 = *(v241 + 16);
  v180 = *(v241 + 24);
  v181 = *(v241 + 32);
  *&v282 = a28;
  *(&v282 + 1) = v254;
  LOBYTE(v278) = v181;
  *&v286 = 0xD00000000000003FLL;
  *(&v286 + 1) = 0x8000000214792350;
  v287 = 0xD00000000000001CLL;
  v288 = v174;

  v290 = v179;
  sub_213FDC9D0(v179, v180);
  v182 = v178;
  v183 = v178(&v282, &v278, &v286);
  v262 = 0;
  if ((v183 & 1) == 0)
  {
    sub_214031C4C();
    v200 = swift_allocError();
    *v201 = 0xD00000000000003FLL;
    v201[1] = 0x8000000214792350;
    v202 = v261;
    v201[2] = 0xD00000000000001CLL;
    v201[3] = v202;
    v262 = v200;
    swift_willThrow();

    sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v256, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);
    v203 = v241;
    v204 = *(v241 + 8);
    v205 = *(v241 + 16);
    v206 = *(v241 + 24);

    sub_213FDC6D0(v205, v206);
    *v203 = v178;
    *(v203 + 8) = v177;
    *(v203 + 16) = v290;
    *(v203 + 24) = v180;
    *(v203 + 32) = v181;
    v71 = v260;
    return sub_21432887C(v71, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  v259 = a31;
  sub_213FDC6D0(v290, v180);
  v186 = v261;

  v187 = v241;
  v188 = *(v241 + 8);
  v189 = *(v241 + 16);
  v190 = *(v241 + 24);

  sub_213FDC6D0(v189, v190);
  *v187 = v182;
  *(v187 + 8) = v177;
  v191 = v254;
  *(v187 + 16) = a28;
  *(v187 + 24) = v191;
  *(v187 + 32) = v181;
  v193 = *v240;
  v192 = *(v240 + 8);
  v194 = *(v240 + 16);
  v195 = *(v240 + 24);
  v196 = *(v240 + 32);
  v197 = v259;
  *&v282 = v259;
  *(&v282 + 1) = v258;
  LODWORD(v263) = v196;
  LOBYTE(v278) = v196;
  *&v286 = 0xD000000000000039;
  *(&v286 + 1) = 0x8000000214792390;
  v287 = 0xD00000000000001CLL;
  v288 = v186;

  sub_213FDC9D0(v194, v195);
  v290 = v192;
  v198 = v262;
  v199 = v193(&v282, &v278, &v286);
  if (v198)
  {

LABEL_39:

    sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v256, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);
    v215 = v240;
    v216 = *(v240 + 8);
    v217 = *(v240 + 16);
    v218 = *(v240 + 24);

    sub_213FDC6D0(v217, v218);
    v219 = v290;
    *v215 = v193;
    *(v215 + 8) = v219;
    *(v215 + 16) = v194;
    *(v215 + 24) = v195;
    *(v215 + 32) = v263;
    v71 = v260;
    return sub_21432887C(v71, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  if ((v199 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v213 = 0xD000000000000039;
    v213[1] = 0x8000000214792390;
    v214 = v261;
    v213[2] = 0xD00000000000001CLL;
    v213[3] = v214;
    swift_willThrow();
    goto LABEL_39;
  }

  sub_213FDC6D0(v194, v195);

  sub_213FB2DF4(v251, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v255, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v256, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v252, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2DF4(v253, &qword_27C913090, &unk_2146E9DB0);
  v207 = v240;
  v208 = *(v240 + 8);
  v209 = *(v240 + 16);
  v210 = *(v240 + 24);

  result = sub_213FDC6D0(v209, v210);
  v211 = v290;
  *v207 = v193;
  *(v207 + 8) = v211;
  v212 = v258;
  *(v207 + 16) = v197;
  *(v207 + 24) = v212;
  *(v207 + 32) = v263;
  return result;
}

unint64_t sub_214236C04(char a1)
{
  result = 0x616D4572656E776FLL;
  switch(a1)
  {
    case 1:
      result = 0x6C754672656E776FLL;
      break;
    case 2:
      result = 0x72655072656E776FLL;
      break;
    case 3:
      result = 0x72694672656E776FLL;
      break;
    case 4:
      result = 0x73614C72656E776FLL;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 1684632935;
      break;
    case 8:
      result = 1734440035;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x436E676965726F66;
      break;
    case 11:
      result = 7107189;
      break;
    case 12:
      result = 0x525563696C627570;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x6965726F46657375;
      break;
    case 15:
      result = 0x6D614E6D75626C61;
      break;
    case 16:
      result = 0x63696C6275507369;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x6E6F697461657263;
      break;
    case 20:
      result = 0x4172657469766E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214236EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437B950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214236EE0(uint64_t a1)
{
  v2 = sub_21430E588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214236F1C(uint64_t a1)
{
  v2 = sub_21430E588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214236F58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v240 = a2;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  v3 = *(*(v237 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v237);
  v239 = &v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v238 = &v196 - v6;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v236 = *(v243 - 8);
  v7 = *(v236 + 64);
  v8 = MEMORY[0x28223BE20](v243);
  v242 = &v196 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v244 = &v196 - v10;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v11 = *(*(v245 - 8) + 64);
  MEMORY[0x28223BE20](v245);
  v246 = &v196 - v12;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v13 = *(*(v247 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v247);
  v241 = &v196 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v196 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A670, &qword_2146F5F10);
  v248 = *(v18 - 8);
  v249 = v18;
  v19 = *(v248 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v196 - v20;
  v22 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v196 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E588();
  v27 = v276;
  sub_2146DAA08();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v233 = v22;
  v234 = v25;
  v235 = v17;
  v276 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v268) = 0;
  sub_2142E12FC();
  v28 = v21;
  sub_2146DA1C8();
  v30 = *(&v272 + 1);
  v31 = v272;
  LOBYTE(v268) = 1;
  sub_2146DA1C8();
  v32 = *(&v272 + 1);
  v232 = v272;
  LOBYTE(v268) = 2;
  sub_2146DA1C8();
  v231 = v32;
  v230 = __PAIR128__(v30, v31);
  v33 = *(&v272 + 1);
  v34 = v272;
  LOBYTE(v268) = 3;
  sub_2146DA1C8();
  v229 = v34;
  v35 = v272;
  LOBYTE(v268) = 4;
  sub_2146DA1C8();
  v227 = v35;
  v228 = *(&v272 + 1);
  v226 = v272;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  LOBYTE(v268) = 5;
  v37 = sub_2142E1378();
  sub_2146DA1C8();
  v223 = v37;
  v224 = v36;
  v225 = v272;
  LOBYTE(v272) = 6;
  v38 = sub_2142EC0C4();
  sub_2146DA1C8();
  v221 = v38;
  v222 = v33;
  LOBYTE(v272) = 7;
  sub_2142EFBA8();
  sub_2146DA1C8();
  LOBYTE(v38) = v225;
  LOBYTE(v268) = 8;
  sub_2146DA1C8();
  v39 = v227;
  v220 = v272;
  LOBYTE(v272) = 9;
  v245 = v28;
  v219 = sub_2146DA1D8();
  LOBYTE(v268) = 10;
  sub_2146DA1C8();
  v218 = v272;
  LOBYTE(v272) = 11;
  sub_2142E27A8();
  sub_2146DA1C8();
  LOBYTE(v272) = 12;
  sub_2146DA1C8();
  LOBYTE(v268) = 13;
  sub_2146DA1C8();
  LOBYTE(v33) = v272;
  LOBYTE(v268) = 14;
  sub_2146DA1C8();
  v217 = v272;
  LOBYTE(v268) = 15;
  sub_2146DA1C8();
  v216 = v272;
  LOBYTE(v268) = 16;
  sub_2146DA1C8();
  v215 = v272;
  LOBYTE(v268) = 17;
  sub_2146DA1C8();
  LODWORD(v224) = v272;
  LOBYTE(v268) = 18;
  sub_2146DA1C8();
  v223 = *(&v272 + 1);
  v214 = v272;
  LOBYTE(v272) = 19;
  sub_2146DA1C8();
  LOBYTE(v268) = 20;
  sub_2146DA1C8();
  v247 = 0;
  v221 = *(&v272 + 1);
  v196 = v272;
  v40 = v233;
  v41 = v234;
  sub_213FB2E54(v235, v234 + *(v233 + 40), &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2E54(v246, v41 + v40[11], &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v241, v41 + v40[23], &qword_27C913090, &unk_2146E9DB0);
  sub_2143E05AC(&v272);
  v205 = v274;
  v206 = v273;
  v210 = v275;
  sub_2143E05E0(&v268);
  v208 = v270;
  v209 = v269;
  v207 = v271;
  sub_2143E072C(&v264);
  v212 = v266;
  v213 = v265;
  v211 = v267;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040B8, &qword_2146EAA08);
  v43 = swift_allocObject();
  v44 = swift_allocObject();
  *(v44 + 16) = 0x600000000;
  *(v43 + 16) = sub_21438F474;
  *(v43 + 24) = v44;
  *(v42 + 32) = v43;
  sub_214044C10(v42, &v260);
  v200 = v262;
  v201 = v261;
  v199 = v263;
  sub_2143E087C(&v256);
  v45 = v257;
  v46 = v258;
  LOBYTE(v43) = v259;
  v198 = v40[15];
  sub_2143E08B0(v41 + v198);
  v197 = v40[16];
  sub_2143E0A5C(v41 + v197);
  sub_2143E0C08(&v252);
  v203 = v254;
  v204 = v253;
  v202 = v255;
  sub_2143E0C3C(v250);
  v47 = v205;
  v41[2] = v206;
  v41[3] = v47;
  *v41 = v272;
  *(v41 + 32) = v210;
  v48 = v231;
  v41[5] = v232;
  v41[6] = v48;
  *(v41 + 7) = v268;
  v49 = v208;
  v41[9] = v209;
  v41[10] = v49;
  *(v41 + 88) = v207;
  v50 = *(&v227 + 1);
  v41[12] = v39;
  v41[13] = v50;
  v51 = v228;
  v41[14] = v226;
  v41[15] = v51;
  *(v41 + 128) = v38;
  v52 = v41 + v40[12];
  *v52 = v264;
  v53 = v212;
  *(v52 + 2) = v213;
  *(v52 + 3) = v53;
  v228 = v52;
  v52[32] = v211;
  v54 = v41 + v40[13];
  *v54 = v260;
  LOBYTE(v52) = v200;
  *(v54 + 4) = v201;
  v54[20] = v52;
  v54[21] = v199;
  v55 = v41 + v40[14];
  *v55 = v256;
  *(v55 + 2) = v45;
  *(v55 + 3) = v46;
  *(&v227 + 1) = v55;
  v55[32] = v43;
  *(v41 + v40[17]) = v33;
  *(v41 + v40[18]) = v217;
  v56 = (v41 + v40[19]);
  v57 = *(&v216 + 1);
  *v56 = v216;
  v56[1] = v57;
  *(v41 + v40[20]) = v215;
  *(v41 + v40[21]) = v224;
  LOBYTE(v56) = v251;
  v58 = v41 + v40[22];
  *v58 = v252;
  v59 = v203;
  *(v58 + 2) = v204;
  *(v58 + 3) = v59;
  *&v227 = v58;
  v58[32] = v202;
  v60 = v41 + v40[24];
  v61 = v250[1];
  *v60 = v250[0];
  *(v60 + 1) = v61;
  v226 = v60;
  v60[32] = v56;
  v63 = *v41;
  v62 = v41[1];
  v64 = v41[2];
  v65 = v41[3];
  LODWORD(v59) = *(v41 + 32);
  v268 = v230;
  LODWORD(v231) = v59;
  LOBYTE(v264) = v59;
  *&v272 = 0xD000000000000035;
  *(&v272 + 1) = 0x80000002147921B0;
  v273 = 0xD00000000000001CLL;
  v274 = 0x800000021478A360;
  v233 = 0x800000021478A360;

  sub_213FDC9D0(v64, v65);
  v66 = v247;
  v232 = v63;
  v67 = v63(&v268, &v264, &v272);
  v247 = v66;
  if (v66)
  {

LABEL_9:

    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);
    v84 = v234;
LABEL_10:
    v85 = v84[1];
    v86 = v84[2];
    v87 = v84[3];

    sub_213FDC6D0(v86, v87);
    *v84 = v232;
    v84[1] = v62;
    v84[2] = v64;
    v84[3] = v65;
    v88 = v231;
LABEL_11:
    *(v84 + 32) = v88;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v276);
    return sub_21432887C(v234, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  }

  if ((v67 & 1) == 0)
  {
    sub_214031C4C();
    v81 = swift_allocError();
    *v82 = 0xD000000000000035;
    v82[1] = 0x80000002147921B0;
    v83 = v233;
    v82[2] = 0xD00000000000001CLL;
    v82[3] = v83;
    v247 = v81;
    swift_willThrow();
    goto LABEL_9;
  }

  sub_213FDC6D0(v64, v65);
  v68 = v233;

  v69 = v234;
  v70 = v234[1];
  v71 = v234[2];
  v72 = v234[3];

  sub_213FDC6D0(v71, v72);
  *v69 = v232;
  v69[1] = v62;
  v73 = *(&v230 + 1);
  v69[2] = v230;
  v69[3] = v73;
  *(v69 + 32) = v231;
  v75 = v69[7];
  v74 = v69[8];
  v76 = v69[9];
  v77 = v69[10];
  v78 = *(v69 + 88);
  *&v268 = v229;
  *(&v268 + 1) = v222;
  LODWORD(v231) = v78;
  LOBYTE(v264) = v78;
  *&v272 = 0xD000000000000038;
  *(&v272 + 1) = 0x80000002147921F0;
  v273 = 0xD00000000000001CLL;
  v274 = v68;

  sub_213FDC9D0(v76, v77);
  v79 = v247;
  v232 = v75;
  v80 = v75(&v268, &v264, &v272);
  v247 = v79;
  if (v79)
  {

LABEL_17:

    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);
    v102 = v234;
    v103 = v234[8];
    v104 = v234[9];
    v105 = v234[10];

    sub_213FDC6D0(v104, v105);
    v102[7] = v232;
    v102[8] = v74;
    v102[9] = v76;
    v102[10] = v77;
    *(v102 + 88) = v231;
    goto LABEL_12;
  }

  if ((v80 & 1) == 0)
  {
    sub_214031C4C();
    v99 = swift_allocError();
    *v100 = 0xD000000000000038;
    v100[1] = 0x80000002147921F0;
    v101 = v233;
    v100[2] = 0xD00000000000001CLL;
    v100[3] = v101;
    v247 = v99;
    swift_willThrow();
    goto LABEL_17;
  }

  sub_213FDC6D0(v76, v77);
  v89 = v233;

  v90 = v234;
  v91 = v234[8];
  v92 = v234[9];
  v93 = v234[10];

  sub_213FDC6D0(v92, v93);
  v90[7] = v232;
  v90[8] = v74;
  v94 = v222;
  v90[9] = v229;
  v90[10] = v94;
  *(v90 + 88) = v231;
  v95 = *v228;
  v62 = *(v228 + 1);
  v64 = *(v228 + 2);
  v65 = *(v228 + 3);
  v96 = v228[32];
  v268 = v220;
  LODWORD(v231) = v96;
  LOBYTE(v264) = v96;
  *&v272 = 0xD00000000000002FLL;
  *(&v272 + 1) = 0x8000000214792230;
  v273 = 0xD00000000000001CLL;
  v274 = v89;

  sub_213FDC9D0(v64, v65);
  v97 = v247;
  v232 = v95;
  v98 = v95(&v268, &v264, &v272);
  v247 = v97;
  if (v97)
  {

LABEL_22:

    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);
    v84 = v228;
    goto LABEL_10;
  }

  if ((v98 & 1) == 0)
  {
    sub_214031C4C();
    v117 = swift_allocError();
    *v118 = 0xD00000000000002FLL;
    v118[1] = 0x8000000214792230;
    v119 = v233;
    v118[2] = 0xD00000000000001CLL;
    v118[3] = v119;
    v247 = v117;
    swift_willThrow();
    goto LABEL_22;
  }

  sub_213FDC6D0(v64, v65);
  v106 = v233;

  v107 = v228;
  v108 = *(v228 + 1);
  v109 = *(v228 + 2);
  v110 = *(v228 + 3);

  sub_213FDC6D0(v109, v110);
  *v107 = v232;
  *(v107 + 1) = v62;
  v111 = *(&v220 + 1);
  *(v107 + 2) = v220;
  *(v107 + 3) = v111;
  v107[32] = v231;
  v113 = *v54;
  v112 = *(v54 + 1);
  LODWORD(v231) = *(v54 + 4);
  DWORD2(v230) = v54[20];
  v114 = v54[21];
  LODWORD(v268) = v219;
  LOBYTE(v264) = v114;
  *&v272 = 0xD00000000000003CLL;
  *(&v272 + 1) = 0x8000000214792260;
  v273 = 0xD00000000000001CLL;
  v274 = v106;

  v115 = v247;
  v232 = v113;
  v116 = v113(&v268, &v264, &v272);
  v247 = v115;
  if (v115)
  {

    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);

LABEL_29:
    v140 = *(v54 + 1);

    *v54 = v232;
    *(v54 + 1) = v112;
    *(v54 + 4) = v231;
    v54[20] = BYTE8(v230);
    v54[21] = v114;
    goto LABEL_12;
  }

  if ((v116 & 1) == 0)
  {

    sub_214031C4C();
    v137 = swift_allocError();
    *v138 = 0xD00000000000003CLL;
    v138[1] = 0x8000000214792260;
    v139 = v233;
    v138[2] = 0xD00000000000001CLL;
    v138[3] = v139;
    v247 = v137;
    swift_willThrow();
    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);
    goto LABEL_29;
  }

  v120 = v233;

  v121 = *(v54 + 1);

  *v54 = v232;
  *(v54 + 1) = v112;
  *(v54 + 4) = v219;
  v54[20] = 0;
  v54[21] = v114;
  v122 = **(&v227 + 1);
  v62 = *(*(&v227 + 1) + 8);
  v64 = *(*(&v227 + 1) + 16);
  v65 = *(*(&v227 + 1) + 24);
  v123 = *(*(&v227 + 1) + 32);
  v268 = v218;
  LODWORD(v231) = v123;
  LOBYTE(v264) = v123;
  *&v272 = 0xD000000000000036;
  *(&v272 + 1) = 0x80000002147922A0;
  v273 = 0xD00000000000001CLL;
  v274 = v120;

  sub_213FDC9D0(v64, v65);
  v124 = v247;
  v232 = v122;
  v125 = v122(&v268, &v264, &v272);
  v247 = v124;
  if (v124)
  {
LABEL_31:

    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);
    v84 = *(&v227 + 1);
    goto LABEL_10;
  }

  if ((v125 & 1) == 0)
  {
    sub_214031C4C();
    v141 = swift_allocError();
    *v142 = 0xD000000000000036;
    v142[1] = 0x80000002147922A0;
    v143 = v233;
    v142[2] = 0xD00000000000001CLL;
    v142[3] = v143;
    v247 = v141;
    swift_willThrow();

    goto LABEL_31;
  }

  sub_213FDC6D0(v64, v65);
  v126 = v233;

  v127 = *(&v227 + 1);
  v128 = *(*(&v227 + 1) + 8);
  v129 = *(*(&v227 + 1) + 16);
  v130 = *(*(&v227 + 1) + 24);

  sub_213FDC6D0(v129, v130);
  *v127 = v232;
  *(v127 + 8) = v62;
  v131 = *(&v218 + 1);
  *(v127 + 16) = v218;
  *(v127 + 24) = v131;
  *(v127 + 32) = v231;
  v132 = v238;
  sub_213FB2E54(v234 + v198, v238, &qword_27C903F38, &unk_2146E9D40);
  v133 = *v132;
  v134 = *(v132 + 8);
  LOBYTE(v268) = *(v132 + *(v237 + 32));
  *&v272 = 0xD00000000000002ELL;
  *(&v272 + 1) = 0x80000002147922E0;
  v273 = 0xD00000000000001CLL;
  v274 = v126;
  v135 = v247;
  v136 = v133(v244, &v268, &v272);
  v247 = v135;
  if (v135)
  {

    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);

LABEL_36:
    sub_21402EDB8(v238, v234 + v198, &qword_27C903F38, &unk_2146E9D40);
    goto LABEL_12;
  }

  if ((v136 & 1) == 0)
  {

    sub_214031C4C();
    v156 = swift_allocError();
    *v157 = 0xD00000000000002ELL;
    v157[1] = 0x80000002147922E0;
    v158 = v233;
    v157[2] = 0xD00000000000001CLL;
    v157[3] = v158;
    v247 = v156;
    swift_willThrow();
    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);
    goto LABEL_36;
  }

  v144 = v233;

  v146 = v237;
  v145 = v238;
  v147 = *(v237 + 28);
  sub_213FB2DF4(v238 + v147, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v244, v145 + v147, &unk_27C9131A0, &unk_2146E9D10);
  v148 = *(v236 + 56);
  v236 += 56;
  v148(v145 + v147, 0, 1, v243);
  v149 = v234;
  sub_21402EDB8(v145, v234 + v198, &qword_27C903F38, &unk_2146E9D40);
  v150 = v149 + v197;
  v151 = v239;
  sub_213FB2E54(v150, v239, &qword_27C903F38, &unk_2146E9D40);
  v152 = *v151;
  v153 = *(v151 + 8);
  LOBYTE(v268) = *(v151 + *(v146 + 32));
  *&v272 = 0xD000000000000034;
  *(&v272 + 1) = 0x8000000214792310;
  v273 = 0xD00000000000001CLL;
  v274 = v144;
  v154 = v247;
  v155 = v152(v242, &v268, &v272);
  v247 = v154;
  if (v154)
  {

    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);

LABEL_41:
    sub_21402EDB8(v239, v234 + v197, &qword_27C903F38, &unk_2146E9D40);
    goto LABEL_12;
  }

  if ((v155 & 1) == 0)
  {

    sub_214031C4C();
    v169 = swift_allocError();
    *v170 = 0xD000000000000034;
    v170[1] = 0x8000000214792310;
    v171 = v233;
    v170[2] = 0xD00000000000001CLL;
    v170[3] = v171;
    v247 = v169;
    swift_willThrow();
    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);
    goto LABEL_41;
  }

  v159 = v233;

  v160 = *(v237 + 28);
  v161 = v239;
  sub_213FB2DF4(v239 + v160, &qword_27C903F40, &unk_2146F1C50);
  sub_213FB2E54(v242, v161 + v160, &unk_27C9131A0, &unk_2146E9D10);
  v148(v161 + v160, 0, 1, v243);
  sub_21402EDB8(v161, v234 + v197, &qword_27C903F38, &unk_2146E9D40);
  v163 = *v227;
  v162 = *(v227 + 8);
  v164 = *(v227 + 16);
  v165 = *(v227 + 24);
  v166 = *(v227 + 32);
  *&v268 = v214;
  *(&v268 + 1) = v223;
  LODWORD(v239) = v166;
  LOBYTE(v264) = v166;
  *&v272 = 0xD00000000000003FLL;
  *(&v272 + 1) = 0x8000000214792350;
  v273 = 0xD00000000000001CLL;
  v274 = v159;

  sub_213FDC9D0(v164, v165);
  v167 = v247;
  v243 = v163;
  v168 = v163(&v268, &v264, &v272);
  v247 = v167;
  if (v167)
  {

LABEL_46:

    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);
    v84 = v227;
LABEL_47:
    v185 = v84[1];
    v186 = v84[2];
    v187 = v84[3];

    sub_213FDC6D0(v186, v187);
    *v84 = v243;
    v84[1] = v162;
    v84[2] = v164;
    v84[3] = v165;
    v88 = v239;
    goto LABEL_11;
  }

  if ((v168 & 1) == 0)
  {
    sub_214031C4C();
    v182 = swift_allocError();
    *v183 = 0xD00000000000003FLL;
    v183[1] = 0x8000000214792350;
    v184 = v233;
    v183[2] = 0xD00000000000001CLL;
    v183[3] = v184;
    v247 = v182;
    swift_willThrow();

    goto LABEL_46;
  }

  sub_213FDC6D0(v164, v165);
  v172 = v233;

  v173 = v227;
  v174 = *(v227 + 8);
  v175 = *(v227 + 16);
  v176 = *(v227 + 24);

  sub_213FDC6D0(v175, v176);
  *v173 = v243;
  *(v173 + 8) = v162;
  v177 = v223;
  *(v173 + 16) = v214;
  *(v173 + 24) = v177;
  *(v173 + 32) = v239;
  v178 = *v226;
  v162 = *(v226 + 1);
  v164 = *(v226 + 2);
  v165 = *(v226 + 3);
  v179 = v226[32];
  *&v268 = v196;
  *(&v268 + 1) = v221;
  LODWORD(v239) = v179;
  LOBYTE(v264) = v179;
  *&v272 = 0xD000000000000039;
  *(&v272 + 1) = 0x8000000214792390;
  v273 = 0xD00000000000001CLL;
  v274 = v172;

  sub_213FDC9D0(v164, v165);
  v180 = v247;
  v243 = v178;
  v181 = v178(&v268, &v264, &v272);
  v247 = v180;
  if (v180)
  {

LABEL_51:

    sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
    sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
    sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
    sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
    (*(v248 + 8))(v245, v249);
    v84 = v226;
    goto LABEL_47;
  }

  if ((v181 & 1) == 0)
  {
    sub_214031C4C();
    v193 = swift_allocError();
    *v194 = 0xD000000000000039;
    v194[1] = 0x8000000214792390;
    v195 = v233;
    v194[2] = 0xD00000000000001CLL;
    v194[3] = v195;
    v247 = v193;
    swift_willThrow();
    goto LABEL_51;
  }

  sub_213FDC6D0(v164, v165);

  sub_213FB2DF4(v241, &qword_27C913090, &unk_2146E9DB0);
  sub_213FB2DF4(v242, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v244, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2DF4(v246, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2DF4(v235, &qword_27C913090, &unk_2146E9DB0);
  (*(v248 + 8))(v245, v249);
  v188 = v226;
  v189 = *(v226 + 1);
  v190 = *(v226 + 2);
  v191 = *(v226 + 3);

  sub_213FDC6D0(v190, v191);
  *v188 = v243;
  *(v188 + 1) = v162;
  v192 = v221;
  *(v188 + 2) = v196;
  *(v188 + 3) = v192;
  v188[32] = v239;
  sub_214328704(v234, v240, type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum);
  return __swift_destroy_boxed_opaque_existential_1(v276);
}

uint64_t sub_214239524(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v63 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v58 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v62 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v64 = v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A680, &qword_2146F5F18);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v58 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E588();
  sub_2146DAA28();
  v22 = *(v3 + 24);
  if (v22 == 1)
  {
    goto LABEL_27;
  }

  *&v68 = *(v3 + 16);
  *(&v68 + 1) = v22;
  v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v2)
  {
    goto LABEL_5;
  }

  v68 = *(v3 + 40);
  v69 = 1;
  sub_2146DA388();
  v23 = *(v3 + 80);
  if (v23 == 1)
  {
    goto LABEL_27;
  }

  *&v68 = *(v3 + 72);
  *(&v68 + 1) = v23;
  v69 = 2;
  sub_2146DA388();
  v68 = *(v3 + 96);
  v69 = 3;
  sub_2146DA388();
  v68 = *(v3 + 112);
  v69 = 4;
  sub_2146DA388();
  v67 = 0;
  LOBYTE(v68) = *(v3 + 128);
  v69 = 5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905688, &qword_2146F3CF0);
  v26 = sub_2142E1D30();
  v61 = v25;
  v27 = v67;
  sub_2146DA388();
  v67 = v27;
  if (v27)
  {
    return (*(v17 + 8))(v20, v16);
  }

  v58[2] = v26;
  v28 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
  v29 = *(v28 + 40);
  v59 = v28;
  v60 = v29;
  LOBYTE(v68) = 6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v31 = sub_2142EC30C();
  v60 = v30;
  v32 = v67;
  sub_2146DA388();
  v67 = v32;
  if (v32)
  {
    return (*(v17 + 8))(v20, v16);
  }

  v58[1] = v31;
  v33 = v59[11];
  LOBYTE(v68) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  sub_2142EFE18();
  v2 = v67;
  sub_2146DA388();
  if (v2)
  {
LABEL_5:
    v67 = v2;
    return (*(v17 + 8))(v20, v16);
  }

  v34 = v59;
  v35 = v3 + v59[12];
  v36 = *(v35 + 24);
  if (v36 == 1)
  {
    goto LABEL_27;
  }

  *&v68 = *(v35 + 16);
  *(&v68 + 1) = v36;
  v69 = 8;
  sub_2146DA388();
  v37 = v3 + v34[13];
  if (*(v37 + 20))
  {
    goto LABEL_27;
  }

  v38 = *(v37 + 16);
  LOBYTE(v68) = 9;
  sub_2146DA398();
  v67 = 0;
  v39 = v3 + v34[14];
  v40 = *(v39 + 24);
  if (v40 == 1)
  {
    goto LABEL_27;
  }

  *&v68 = *(v39 + 16);
  *(&v68 + 1) = v40;
  v69 = 10;
  v41 = v67;
  sub_2146DA388();
  v67 = v41;
  v42 = v3 + v59[15];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v42 + *(v43 + 28), v10, &qword_27C903F40, &unk_2146F1C50);
  v44 = *(v65 + 48);
  v65 += 48;
  v58[0] = v44;
  if (v44(v10, 1, v66) == 1)
  {
    v57 = v10;
LABEL_26:
    sub_213FB2DF4(v57, &qword_27C903F40, &unk_2146F1C50);
    goto LABEL_27;
  }

  sub_21408AC04(v10, v64, &unk_27C9131A0, &unk_2146E9D10);
  LOBYTE(v68) = 11;
  sub_2142E2910();
  v45 = v67;
  sub_2146DA388();
  v67 = v45;
  if (v45)
  {
    v46 = v64;
LABEL_19:
    sub_213FB2DF4(v46, &unk_27C9131A0, &unk_2146E9D10);
    return (*(v17 + 8))(v20, v16);
  }

  sub_213FB2DF4(v64, &unk_27C9131A0, &unk_2146E9D10);
  v47 = v63;
  sub_213FB2E54(v3 + v59[16] + *(v43 + 28), v63, &qword_27C903F40, &unk_2146F1C50);
  if ((v58[0])(v47, 1, v66) == 1)
  {
    v57 = v63;
    goto LABEL_26;
  }

  sub_21408AC04(v63, v62, &unk_27C9131A0, &unk_2146E9D10);
  LOBYTE(v68) = 12;
  v48 = v67;
  sub_2146DA388();
  v67 = v48;
  if (v48)
  {
    v46 = v62;
    goto LABEL_19;
  }

  sub_213FB2DF4(v62, &unk_27C9131A0, &unk_2146E9D10);
  LOBYTE(v68) = *(v3 + v59[17]);
  v69 = 13;
  v49 = v67;
  sub_2146DA388();
  v67 = v49;
  if (v49)
  {
    return (*(v17 + 8))(v20, v16);
  }

  LOBYTE(v68) = *(v3 + v59[18]);
  v69 = 14;
  sub_2146DA388();
  v67 = 0;
  v68 = *(v3 + v59[19]);
  v69 = 15;
  sub_2146DA388();
  v67 = 0;
  LOBYTE(v68) = *(v3 + v59[20]);
  v69 = 16;
  sub_2146DA388();
  v67 = 0;
  LOBYTE(v68) = *(v3 + v59[21]);
  v69 = 17;
  sub_2146DA388();
  v67 = 0;
  v50 = v3 + v59[22];
  v51 = *(v50 + 24);
  if (v51 != 1)
  {
    *&v68 = *(v50 + 16);
    *(&v68 + 1) = v51;
    v69 = 18;
    v52 = v67;
    sub_2146DA388();
    v67 = v52;
    v53 = v59[23];
    LOBYTE(v68) = 19;
    sub_2146DA388();
    v67 = 0;
    v54 = v3 + v59[24];
    v55 = *(v54 + 24);
    if (v55 != 1)
    {
      *&v68 = *(v54 + 16);
      *(&v68 + 1) = v55;
      v69 = 20;
      v56 = v67;
      sub_2146DA388();
      result = (*(v17 + 8))(v20, v16);
      v67 = v56;
      return result;
    }
  }

LABEL_27:
  result = sub_2146DA018();
  __break(1u);
  return result;
}

__n128 PosterArchive.Configuration.init(with:renderingConfiguration:)@<Q0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a1 + 176);
  *(a3 + 160) = *(a1 + 160);
  *(a3 + 176) = v4;
  *(a3 + 192) = *(a1 + 192);
  *(a3 + 201) = *(a1 + 201);
  v5 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v5;
  v6 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v6;
  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  v8 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v10;
  *(a3 + 217) = v3;
  return result;
}

unint64_t sub_214239F2C()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t sub_214239F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x8000000214796DC0 == a2;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000214796DE0 == a2)
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

uint64_t sub_21423A048(uint64_t a1)
{
  v2 = sub_21430E5DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423A084(uint64_t a1)
{
  v2 = sub_21430E5DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A688, &qword_2146F5F20);
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v49);
  v8 = &v20[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E5DC();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A698, &qword_2146F5F28);
    v35 = 0;
    sub_21430E630();
    v11 = v49;
    sub_2146DA1C8();
    v32 = v46;
    v33 = v47;
    *v34 = v48[0];
    *&v34[9] = *(v48 + 9);
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v22 = v36;
    v23 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A6B0, &qword_2146F5F30);
    v20[13] = 1;
    sub_21430E708();
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v11);
    v12 = v21;
    v13 = v33;
    *(a2 + 160) = v32;
    *(a2 + 176) = v13;
    *(a2 + 192) = *v34;
    *(a2 + 201) = *&v34[9];
    v14 = v29;
    *(a2 + 96) = v28;
    *(a2 + 112) = v14;
    v15 = v31;
    *(a2 + 128) = v30;
    *(a2 + 144) = v15;
    v16 = v25;
    *(a2 + 32) = v24;
    *(a2 + 48) = v16;
    v17 = v27;
    *(a2 + 64) = v26;
    *(a2 + 80) = v17;
    v18 = v23;
    *a2 = v22;
    *(a2 + 16) = v18;
    *(a2 + 217) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A6C8, &qword_2146F5F38);
  v50 = *(v17 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - v4;
  v6 = v1[11];
  v47 = v1[10];
  v48 = v6;
  v49[0] = v1[12];
  *(v49 + 9) = *(v1 + 201);
  v7 = v1[7];
  v43 = v1[6];
  v44 = v7;
  v8 = v1[9];
  v45 = v1[8];
  v46 = v8;
  v9 = v1[3];
  v39 = v1[2];
  v40 = v9;
  v10 = v1[5];
  v41 = v1[4];
  v42 = v10;
  v11 = v1[1];
  v37 = *v1;
  v38 = v11;
  HIDWORD(v16) = *(v1 + 217);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_213FB2E54(&v37, &v24, &qword_27C90A698, &qword_2146F5F28);
  sub_21430E5DC();
  sub_2146DAA28();
  v34 = v47;
  v35 = v48;
  v36[0] = v49[0];
  *(v36 + 9) = *(v49 + 9);
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v24 = v37;
  v25 = v38;
  v23 = 0;
  v13 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A698, &qword_2146F5F28);
  sub_21430E7E0();
  v14 = v18;
  sub_2146DA388();
  v21[10] = v34;
  v21[11] = v35;
  *v22 = v36[0];
  *&v22[9] = *(v36 + 9);
  v21[6] = v30;
  v21[7] = v31;
  v21[8] = v32;
  v21[9] = v33;
  v21[2] = v26;
  v21[3] = v27;
  v21[4] = v28;
  v21[5] = v29;
  v21[0] = v24;
  v21[1] = v25;
  sub_213FB2DF4(v21, &qword_27C90A698, &qword_2146F5F28);
  if (!v14)
  {
    v20 = WORD2(v16);
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A6B0, &qword_2146F5F30);
    sub_21430E8B8();
    sub_2146DA388();
  }

  return (*(v50 + 8))(v5, v13);
}

unint64_t sub_21423A6D0()
{
  v1 = 0x746867696577;
  if (*v0 != 1)
  {
    v1 = 0x6D65747379537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_21423A734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437BFFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21423A75C(uint64_t a1)
{
  v2 = sub_21430E990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423A798(uint64_t a1)
{
  v2 = sub_21430E990();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.SystemTimeFontConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A6F0, &qword_2146F5F40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E990();
  sub_2146DAA08();
  if (!v2)
  {
    v16[14] = 0;
    sub_21430E9E4();
    sub_2146DA1C8();
    v11 = v16[15];
    v16[13] = 1;
    sub_2146DA188();
    v14 = v13;
    v16[12] = 2;
    v15 = sub_2146DA178();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.SystemTimeFontConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A708, &qword_2146F5F48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[2] = v1[16];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430E990();
  sub_2146DAA28();
  v17 = v9;
  v16 = 0;
  sub_21430EA38();
  sub_2146DA388();
  if (!v2)
  {
    v15 = 1;
    sub_2146DA348();
    v14 = 2;
    sub_2146DA338();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.init(with:preferredTitleAlignment:preferredTitleLayout:titleColor:titleContentStyle:timeNumberingSystem:isUserConfigured:contentsLuminance:isAlternateDateEnabled:groupName:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, unint64_t *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  v28 = *a1;
  v29 = *(a1 + 8);
  v32 = *a2;
  v30 = *(a1 + 16);
  v31 = *a3;
  v33 = *a4;
  v34 = a4[1];
  v35 = a4[2];
  v36 = a4[3];
  v37 = a4[4];
  v38 = a4[5];
  v39 = a4[6];
  v17 = a5[3];
  v71 = a5[2];
  v72 = v17;
  v73 = a5[4];
  v18 = a5[1];
  v69 = *a5;
  v70 = v18;
  v40 = *a6;
  sub_214449E4C(&v43);
  v19 = v43;
  v20 = v44;
  v21 = v46;
  v68[0] = a11;
  v68[1] = a12;
  v22 = v45;
  v41 = v47;
  v67 = v47;
  v43 = 0xD00000000000003DLL;
  v44 = 0x80000002147923D0;
  v45 = 0xD00000000000001CLL;
  v46 = 0x800000021478A360;

  sub_213FDC9D0(v22, v21);
  v23 = v19(v68, &v67, &v43);
  if (v42)
  {
  }

  else
  {
    if (v23)
    {
      sub_213FDC6D0(v22, v21);

      result = sub_213FDC6D0(v22, v21);
      *a9 = v28;
      *(a9 + 8) = v29;
      *(a9 + 16) = v30;
      *(a9 + 17) = v32;
      *(a9 + 18) = v31;
      *(a9 + 24) = v33;
      *(a9 + 32) = v34;
      *(a9 + 40) = v35;
      *(a9 + 48) = v36;
      *(a9 + 56) = v37;
      *(a9 + 64) = v38;
      *(a9 + 72) = v39;
      v25 = a5[3];
      *(a9 + 112) = a5[2];
      *(a9 + 128) = v25;
      *(a9 + 144) = a5[4];
      v26 = a5[1];
      *(a9 + 80) = *a5;
      *(a9 + 96) = v26;
      *(a9 + 160) = v40;
      *(a9 + 161) = a7 & 1;
      *(a9 + 168) = a10;
      *(a9 + 176) = a8 & 1;
      *(a9 + 184) = v19;
      *(a9 + 192) = v20;
      *(a9 + 200) = a11;
      *(a9 + 208) = a12;
      *(a9 + 216) = v41;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v27 = 0xD00000000000003DLL;
    v27[1] = 0x80000002147923D0;
    v27[2] = 0xD00000000000001CLL;
    v27[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v22, v21);
  v43 = v28;
  v44 = v29;
  LOBYTE(v45) = v30;
  BYTE1(v45) = v32;
  BYTE2(v45) = v31;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v49 = v36;
  v50 = v37;
  v51 = v38;
  v52 = v39;
  v55 = v71;
  v56 = v72;
  v57 = v73;
  v53 = v69;
  v54 = v70;
  v58 = v40;
  v59 = a7 & 1;
  v60 = a10;
  v61 = a8 & 1;
  v62 = v19;
  v63 = v20;
  v64 = v22;
  v65 = v21;
  v66 = v41;
  return sub_21430EA8C(&v43);
}

unint64_t sub_21423AEFC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000016;
    if (a1 != 8)
    {
      v4 = 0x6D614E70756F7267;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000011;
    }

    v5 = 0xD000000000000010;
    if (a1 == 5)
    {
      v5 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x6C6F43656C746974;
    if (a1 != 3)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0xD000000000000015;
    if (a1)
    {
      v2 = 0xD000000000000017;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21423B058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437C120(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21423B080(uint64_t a1)
{
  v2 = sub_21430EAE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423B0BC(uint64_t a1)
{
  v2 = sub_21430EAE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A718, &qword_2146F5F50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430EAE0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v12 = v6;
  v69 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A728, &qword_2146F5F58);
  LOBYTE(v71) = 0;
  sub_21430EB34();
  sub_2146DA1C8();
  v13 = v84;
  v14 = v85;
  LOBYTE(v71) = 1;
  sub_21430EC0C();
  sub_2146DA1C8();
  v68 = v13;
  v15 = v84;
  LOBYTE(v71) = 2;
  sub_21430EC60();
  sub_2146DA1C8();
  v16 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A750, &unk_2146F5F60);
  LOBYTE(v71) = 3;
  sub_21430ECB4();
  sub_2146DA1C8();
  v62 = v16;
  v63 = v15;
  v61 = v14;
  v18 = v84;
  v19 = v85;
  v20 = v86;
  v64 = v88;
  v65 = v87;
  v66 = v89;
  v67 = *(&v84 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A768, &unk_2147421A0);
  v119 = 4;
  sub_21430ED8C();
  sub_2146DA1C8();
  v58 = v19;
  v59 = v18;
  v60 = v20;
  v116 = v122;
  v117 = v123;
  v118 = v124;
  v114 = v120;
  v115 = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A780, &qword_2146F5F70);
  LOBYTE(v71) = 5;
  sub_21430EE78();
  sub_2146DA1C8();
  LODWORD(v20) = v84;
  LOBYTE(v84) = 6;
  v57 = sub_2146DA178();
  LOBYTE(v84) = 7;
  sub_2146DA188();
  v56 = v20;
  v55 = v21;
  LOBYTE(v84) = 8;
  LOBYTE(v20) = sub_2146DA178();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  v111 = 9;
  sub_2142E12FC();
  v54 = v5;
  sub_2146DA1C8();
  v22 = v112;
  v23 = v113;
  sub_214449E4C(&v84);
  v24 = *(&v84 + 1);
  v53 = v84;
  v25 = v85;
  v26 = v86;
  v130 = v116;
  v131 = v117;
  v132 = v118;
  v128 = v114;
  v129 = v115;
  v51 = v57 & 1;
  v52 = v20 & 1;
  v47 = v22;
  v110[0] = v22;
  v50 = v23;
  v110[1] = v23;
  v57 = v87;
  LOBYTE(v71) = v87;
  *&v84 = 0xD00000000000003DLL;
  *(&v84 + 1) = 0x80000002147923D0;
  v85 = 0xD00000000000001CLL;
  v86 = 0x800000021478A360;

  v48 = v26;
  sub_213FDC9D0(v25, v26);
  v49 = v24;
  v27 = v53(v110, &v71, &v84);
  if (v27)
  {
    v28 = v48;
    sub_213FDC6D0(v25, v48);

    (*(v12 + 8))(v9, v54);
    v29 = v49;

    sub_213FDC6D0(v25, v28);
    v71 = v68;
    v30 = v61;
    LOBYTE(v72) = v61;
    BYTE1(v72) = v63;
    BYTE2(v72) = v62;
    *(&v72 + 3) = v133;
    BYTE7(v72) = v134;
    v31 = v67;
    *(&v72 + 1) = v59;
    *&v73 = v67;
    *(&v73 + 1) = v58;
    *&v74 = v60;
    v32 = v64;
    *(&v74 + 1) = v65;
    *&v75 = v64;
    *(&v75 + 1) = v66;
    v80 = v132;
    v79 = v131;
    v78 = v130;
    v76 = v128;
    v77 = v129;
    LOBYTE(v81) = v56;
    BYTE1(v81) = v51;
    *(&v81 + 2) = v126;
    WORD3(v81) = v127;
    v33 = v55;
    *(&v81 + 1) = v55;
    LOBYTE(v82) = v52;
    *(&v82 + 1) = *v125;
    DWORD1(v82) = *&v125[3];
    v34 = v53;
    *(&v82 + 1) = v53;
    *&v83[0] = v29;
    v35 = v47;
    *(&v83[0] + 1) = v47;
    *&v83[1] = v50;
    BYTE8(v83[1]) = v57;
    v36 = v72;
    v37 = v69;
    *v69 = v68;
    v37[1] = v36;
    v38 = v76;
    v37[4] = v75;
    v37[5] = v38;
    v39 = v74;
    v37[2] = v73;
    v37[3] = v39;
    v40 = v80;
    v37[8] = v79;
    v37[9] = v40;
    v41 = v78;
    v37[6] = v77;
    v37[7] = v41;
    v42 = v82;
    v37[10] = v81;
    v37[11] = v42;
    v37[12] = v83[0];
    *(v37 + 201) = *(v83 + 9);
    sub_21430EF50(&v71, &v84);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v84 = v68;
    LOBYTE(v85) = v30;
    BYTE1(v85) = v63;
    BYTE2(v85) = v62;
    *(&v85 + 3) = v133;
    HIBYTE(v85) = v134;
    v86 = v59;
    v87 = v31;
    v88 = v58;
    v89 = v60;
    v90 = v65;
    v91 = v32;
    v92 = v66;
    v97 = v132;
    v96 = v131;
    v95 = v130;
    v93 = v128;
    v94 = v129;
    v98 = v56;
    v99 = v51;
    v100 = v126;
    v101 = v127;
    v102 = v33;
    v103 = v52;
    *v104 = *v125;
    *&v104[3] = *&v125[3];
    v105 = v34;
    v106 = v49;
    v107 = v35;
    v108 = v50;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD00000000000003DLL;
    v43[1] = 0x80000002147923D0;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v12 + 8))(v9, v54);
    v44 = v49;

    v45 = v48;
    sub_213FDC6D0(v25, v48);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v84 = v68;
    LOBYTE(v85) = v61;
    BYTE1(v85) = v63;
    BYTE2(v85) = v62;
    *(&v85 + 3) = v133;
    HIBYTE(v85) = v134;
    v86 = v59;
    v87 = v67;
    v88 = v58;
    v89 = v60;
    v90 = v65;
    v91 = v64;
    v92 = v66;
    v97 = v132;
    v96 = v131;
    v95 = v130;
    v93 = v128;
    v94 = v129;
    v98 = v56;
    v99 = v51;
    v101 = v127;
    v100 = v126;
    v102 = v55;
    v103 = v52;
    *&v104[3] = *&v125[3];
    *v104 = *v125;
    v105 = v53;
    v106 = v44;
    v107 = v25;
    v108 = v45;
  }

  v109 = v57;
  return sub_21430EA8C(&v84);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A798, &qword_2146F5F78);
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - v5;
  v7 = *v1;
  v41 = v1[1];
  v8 = *(v1 + 16);
  v9 = *(v1 + 17);
  v39 = *(v1 + 18);
  v40 = v9;
  v10 = v1[3];
  v37 = v1[4];
  v38 = v10;
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[8];
  v35 = v1[7];
  v36 = v12;
  v34 = v13;
  v14 = v1[9];
  v32 = v11;
  v33 = v14;
  v15 = *(v1 + 8);
  v56 = *(v1 + 7);
  v57 = v15;
  v58 = *(v1 + 9);
  v16 = *(v1 + 6);
  v54 = *(v1 + 5);
  v55 = v16;
  LODWORD(v11) = *(v1 + 160);
  v30 = *(v1 + 161);
  v31 = v11;
  v17 = v1[21];
  v29 = *(v1 + 176);
  v18 = v1[25];
  v27 = v1[26];
  v28 = v18;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430EAE0();
  v20 = v3;
  sub_2146DAA28();
  *&v49 = v7;
  *(&v49 + 1) = v41;
  LOBYTE(v50) = v8;
  LOBYTE(v47[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A728, &qword_2146F5F58);
  sub_21430EFAC();
  v21 = v43;
  sub_2146DA388();
  if (v21)
  {
    return (*(v42 + 8))(v6, v3);
  }

  v23 = v39;
  v25 = v37;
  v24 = v38;
  v26 = v42;
  LOBYTE(v49) = v40;
  LOBYTE(v47[0]) = 1;
  sub_21430F084();
  sub_2146DA388();
  LOBYTE(v49) = v23;
  LOBYTE(v47[0]) = 2;
  sub_21430F0D8();
  sub_2146DA388();
  *&v49 = v24;
  *(&v49 + 1) = v25;
  *&v50 = v32;
  *(&v50 + 1) = v36;
  *&v51 = v35;
  *(&v51 + 1) = v34;
  *&v52 = v33;
  LOBYTE(v47[0]) = 3;
  sub_21430F12C(v24, v25, v32, v36, v35, v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A750, &unk_2146F5F60);
  sub_21430F140();
  sub_2146DA388();
  sub_21430EE64(v49, *(&v49 + 1), v50, *(&v50 + 1), v51, *(&v51 + 1), v52);
  v50 = v55;
  v51 = v56;
  v52 = v57;
  v53 = v58;
  v49 = v54;
  v48 = 4;
  sub_213FB2E54(&v54, v47, &qword_27C90A768, &unk_2147421A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A768, &unk_2147421A0);
  sub_21430F218();
  sub_2146DA388();
  v47[2] = v51;
  v47[3] = v52;
  v47[4] = v53;
  v47[0] = v49;
  v47[1] = v50;
  sub_213FB2DF4(v47, &qword_27C90A768, &unk_2147421A0);
  LOBYTE(v44) = v31;
  v46 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A780, &qword_2146F5F70);
  sub_21430F2F0();
  sub_2146DA388();
  LOBYTE(v44) = 6;
  sub_2146DA338();
  LOBYTE(v44) = 7;
  sub_2146DA348();
  LOBYTE(v44) = 8;
  sub_2146DA338();
  if (v27 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v44 = v28;
    v45 = v27;
    v46 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    return (*(v26 + 8))(v6, v20);
  }

  return result;
}

uint64_t sub_21423C100()
{
  v1 = 0x6572726566657270;
  if (*v0 != 1)
  {
    v1 = 0x657A696C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_21423C170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437C458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21423C198(uint64_t a1)
{
  v2 = sub_21430F3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423C1D4(uint64_t a1)
{
  v2 = sub_21430F3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A7F0, &qword_2146F5F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430F3C8();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    sub_2142FCE0C();
    sub_2146DA1C8();
    v15 = v18;
    v16 = v17;
    v19 = 1;
    sub_21430F41C();
    sub_2146DA1C8();
    v12 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v19 = 2;
    sub_2142E12FC();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v13 = v15;
    v14 = v17;
    *a2 = v16;
    *(a2 + 16) = v13;
    *(a2 + 32) = v12;
    *(a2 + 40) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A808, &qword_2146F5F88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v20 = *(v3 + 32);
  v10 = *(v3 + 6);
  v17 = *(v3 + 5);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430F3C8();
  sub_2146DAA28();
  v12 = v3[1];
  v18 = *v3;
  v19 = v12;
  v21 = 0;
  sub_2142FCF88();
  sub_2146DA388();
  if (!v2)
  {
    v13 = v10;
    v14 = v17;
    LOBYTE(v18) = v20;
    v21 = 1;
    sub_21430F470();
    sub_2146DA388();
    *&v18 = v14;
    *(&v18 + 1) = v13;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.init(with:colors:discreteColorProperties:gradientProperties:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *a1;
  *(a5 + 8) = a2;
  v5 = *a4;
  v6 = a4[1];
  *(a5 + 16) = *a3;
  *(a5 + 32) = v5;
  result = a4[2];
  *(a5 + 48) = v6;
  *(a5 + 64) = result;
  return result;
}

unint64_t sub_21423C6A0()
{
  v1 = 1701869940;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x73726F6C6F63;
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

uint64_t sub_21423C718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437C57C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21423C740(uint64_t a1)
{
  v2 = sub_21430F4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423C77C(uint64_t a1)
{
  v2 = sub_21430F4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A818, &qword_2146F5F90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430F4C4();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = 0;
    sub_21430F518();
    sub_2146DA1C8();
    v11 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A830, &qword_2146F5F98);
    v22 = 1;
    sub_21430F56C();
    sub_2146DA1C8();
    v13 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A850, &qword_2146F5FA8);
    v22 = 2;
    sub_21430F674();
    sub_2146DA1C8();
    v17 = *(&v19 + 1);
    v18 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A868, &qword_2146F5FB0);
    v22 = 3;
    sub_21430F74C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    v14 = v17;
    v15 = v18;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
    *(a2 + 24) = v14;
    v16 = v20;
    *(a2 + 32) = v19;
    *(a2 + 48) = v16;
    *(a2 + 64) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A880, &qword_2146F5FB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v25 = *(v1 + 2);
  v26 = v10;
  v11 = *(v1 + 3);
  v12 = *(v1 + 2);
  v20 = *(v1 + 3);
  v21 = v12;
  v13 = *(v1 + 9);
  v23 = *(v1 + 8);
  v24 = v11;
  v22 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430F4C4();
  sub_2146DAA28();
  LOBYTE(v27) = v9;
  v31 = 0;
  sub_21430F824();
  sub_2146DA388();
  if (!v2)
  {
    v16 = v24;
    v15 = v25;
    v18 = v22;
    v17 = v23;
    *&v27 = v26;
    v31 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A830, &qword_2146F5F98);
    sub_21430F878();
    sub_2146DA388();
    *&v27 = v15;
    *(&v27 + 1) = v16;
    v31 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A850, &qword_2146F5FA8);
    sub_21430F980();
    sub_2146DA388();
    v27 = v21;
    v28 = v20;
    v29 = v17;
    v30 = v18;
    v31 = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A868, &qword_2146F5FB0);
    sub_21430FA58();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleContentStyle::TitleDiscreteColorContentStyleProperties __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleDiscreteColorContentStyleProperties.init(with:allowsVariation:variation:)(Swift::Bool with, Swift::Bool allowsVariation, Swift::Double variation)
{
  *v3 = with;
  *(v3 + 1) = allowsVariation;
  *(v3 + 8) = variation;
  result.variation = variation;
  result.vibrant = with;
  return result;
}

uint64_t sub_21423CD58()
{
  v1 = 0x615673776F6C6C61;
  if (*v0 != 1)
  {
    v1 = 0x6F69746169726176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6172626976;
  }
}

uint64_t sub_21423CDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437C6F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21423CDEC(uint64_t a1)
{
  v2 = sub_21430FB30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423CE28(uint64_t a1)
{
  v2 = sub_21430FB30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleDiscreteColorContentStyleProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8C0, &qword_2146F5FC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FB30();
  sub_2146DAA08();
  if (!v2)
  {
    v16[15] = 0;
    v11 = sub_2146DA178();
    v16[14] = 1;
    v13 = sub_2146DA178();
    v16[13] = 2;
    sub_2146DA188();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    *(a2 + 1) = v13 & 1;
    *(a2 + 8) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleDiscreteColorContentStyleProperties.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8D0, &qword_2146F5FC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v13[2] = v1[1];
  v10 = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FB30();
  sub_2146DAA28();
  v16 = 0;
  sub_2146DA338();
  if (!v2)
  {
    v15 = 1;
    sub_2146DA338();
    v14 = 2;
    sub_2146DA348();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21423D244()
{
  v1 = 0x746E656964617267;
  v2 = 0x696F507472617473;
  if (*v0 != 2)
  {
    v2 = 0x746E696F50646E65;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461636F6CLL;
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

uint64_t sub_21423D2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437C818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21423D2F8(uint64_t a1)
{
  v2 = sub_21430FB84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423D334(uint64_t a1)
{
  v2 = sub_21430FB84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8D8, &qword_2146F5FD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FB84();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    sub_21430FBD8();
    sub_2146DA1C8();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8F0, &qword_2146F5FD8);
    v19 = 1;
    sub_21430FC2C();
    sub_2146DA1C8();
    v18 = v11;
    v16 = v17;
    type metadata accessor for CGPoint(0);
    v19 = 2;
    sub_214328930(&qword_27C9058B8, type metadata accessor for CGPoint);
    sub_2146DA1C8();
    v13 = v17;
    v19 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v18;
    *(a2 + 8) = v16;
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.TitleGradientContentStyleProperties.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A900, &qword_2146F5FE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *v1;
  v17 = *(v1 + 1);
  v10 = *(v1 + 2);
  v11 = *(v1 + 3);
  v12 = *(v1 + 4);
  v13 = *(v1 + 5);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FB84();
  sub_2146DAA28();
  LOBYTE(v18) = v9;
  v20 = 0;
  sub_21430FCA8();
  sub_2146DA388();
  if (!v2)
  {
    v18 = v17;
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A8F0, &qword_2146F5FD8);
    sub_21430FCFC();
    sub_2146DA388();
    v18 = v10;
    v19 = v11;
    v20 = 2;
    type metadata accessor for CGPoint(0);
    sub_214328930(&qword_27C9058D0, type metadata accessor for CGPoint);
    sub_2146DA388();
    v18 = v12;
    v19 = v13;
    v20 = 3;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_21423D900()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_21423D93C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000214796F60 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000214796F80 == a2)
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

uint64_t sub_21423DA20(uint64_t a1)
{
  v2 = sub_21430FD78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423DA5C(uint64_t a1)
{
  v2 = sub_21430FD78();

  return MEMORY[0x2821FE720](a1, v2);
}

BlastDoor::PhotosPoster::Options __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotosPoster.Options.init(with:hidePrimaryActionButton:)(Swift::Bool with, Swift::Bool hidePrimaryActionButton)
{
  *v2 = with;
  v2[1] = hidePrimaryActionButton;
  result.hideShowPhotoInLibraryAction = with;
  return result;
}

unint64_t sub_21423DB5C()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD00000000000001CLL;
  }

  *v0;
  return result;
}

uint64_t sub_21423DB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001CLL && 0x8000000214796FA0 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000214796FC0 == a2)
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

uint64_t sub_21423DC78(uint64_t a1)
{
  v2 = sub_21430FDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423DCB4(uint64_t a1)
{
  v2 = sub_21430FDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21423DD34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _BYTE *a5@<X8>)
{
  v19 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v14 = v18;
    v13 = v19;
    v21 = 0;
    v15 = sub_2146DA178();
    v20 = 1;
    v16 = sub_2146DA178();
    (*(v14 + 8))(v11, v8);
    *v13 = v15 & 1;
    v13[1] = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21423DF2C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v15[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = *v4;
  v16 = v4[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v15[0])();
  sub_2146DAA28();
  v18 = 0;
  v13 = v15[1];
  sub_2146DA338();
  if (!v13)
  {
    v17 = 1;
    sub_2146DA338();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t PhotosPoster.Media.init(with:assetUUID:subpath:version:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = *a1;
  sub_214449FC0(&v32);
  v10 = v32;
  v9 = v33;
  v12 = v34;
  v11 = v35;
  v13 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2140676DC;
  *(v15 + 24) = 0;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v47);
  v30 = v47;
  v29 = v48;
  v24 = v49;
  v55 = v50;
  v31 = v51;
  v47 = a2;
  v48 = a3;
  v46 = v13;
  v32 = 0xD00000000000001CLL;
  v33 = 0x8000000214792410;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  sub_213FDC9D0(v12, v11);
  v16 = v10(&v47, &v46, &v32);
  if (v25)
  {

LABEL_6:

    v19 = v9;

    sub_213FDC6D0(v12, v11);
LABEL_7:
    LOBYTE(v32) = v27;
    *(&v32 + 1) = v54[0];
    HIDWORD(v32) = *(v54 + 3);
    v33 = v10;
    v34 = v19;
    v35 = v12;
    v36 = v11;
    v37 = v13;
    *v38 = *v53;
    *&v38[3] = *&v53[3];
    v39 = v30;
    v40 = v29;
    v41 = v24;
    v42 = v55;
    v43 = v31;
    *&v44[3] = *(v52 + 3);
    *v44 = v52[0];
    v45 = a6;
    return sub_2142FC3CC(&v32);
  }

  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000001CLL;
    v18[1] = 0x8000000214792410;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();

    goto LABEL_6;
  }

  sub_213FDC6D0(v12, v11);

  sub_213FDC6D0(v12, v11);
  v47 = a4;
  v48 = a5;
  v46 = v31;
  v32 = 0xD00000000000001ALL;
  v33 = 0x8000000214792430;
  v34 = 0xD00000000000001CLL;
  v35 = 0x800000021478A360;

  v17 = v30(&v47, &v46, &v32);
  if ((v17 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v21 = 0xD00000000000001ALL;
    v21[1] = 0x8000000214792430;
    v21[2] = 0xD00000000000001CLL;
    v21[3] = 0x800000021478A360;
    swift_willThrow();

    v12 = a2;
    v11 = a3;
    v19 = v9;
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a7 = v27;
  *(a7 + 8) = v10;
  *(a7 + 16) = v9;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = v13;
  *(a7 + 48) = v30;
  *(a7 + 56) = v29;
  *(a7 + 64) = a4;
  *(a7 + 72) = a5;
  *(a7 + 80) = v31;
  *(a7 + 88) = a6;
  return result;
}

uint64_t sub_21423E518()
{
  v1 = 0x707954616964656DLL;
  v2 = 0x68746170627573;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x4955557465737361;
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

uint64_t sub_21423E59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437C990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21423E5C4(uint64_t a1)
{
  v2 = sub_21430FE20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423E600(uint64_t a1)
{
  v2 = sub_21430FE20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.Media.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A948, &qword_2146F6008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21430FE20();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v89);
  }

  v12 = v6;
  LOBYTE(v64) = 0;
  sub_21430FE74();
  sub_2146DA1C8();
  v13 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v64) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v63 = v13;
  v14 = v71;
  v15 = v72;
  LOBYTE(v71) = 2;
  v56 = sub_2146DA168();
  v61 = v16;
  v62 = v15;
  *(&v60 + 1) = v14;
  v85 = 3;
  v51 = sub_2146DA1A8();
  sub_214449FC0(&v71);
  v54 = v71;
  *&v60 = v72;
  v57 = v74;
  v58 = v73;
  v59 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2140676DC;
  *(v19 + 24) = 0;
  *(inited + 32) = v19;
  sub_214042B80(inited, &v64);
  v55 = *(&v64 + 1);
  v52 = v64;
  v50 = v65;
  v53 = v66;
  *&v64 = *(&v60 + 1);
  *(&v64 + 1) = v62;
  LOBYTE(v70[0]) = v59;
  v71 = 0xD00000000000001CLL;
  v72 = 0x8000000214792410;
  v73 = 0xD00000000000001CLL;
  v74 = 0x800000021478A360;

  sub_213FDC9D0(v58, v57);
  v20 = v54;
  v21 = v54(&v64, v70, &v71);
  v22 = v20;
  v48 = 0x8000000214792410;
  v49 = 0x800000021478A360;
  if (v21)
  {
    v24 = v57;
    v23 = v58;
    sub_213FDC6D0(v58, v57);
    v25 = v49;

    sub_213FDC6D0(v23, v24);
    v70[0] = v56;
    v70[1] = v61;
    LOBYTE(v64) = v53;
    v58 = 0xD00000000000001ALL;
    v71 = 0xD00000000000001ALL;
    v72 = 0x8000000214792430;
    v73 = 0xD00000000000001CLL;
    v74 = v25;
    v26 = *(&v50 + 1);

    v27 = v52(v70, &v64, &v71);
    v57 = 0x8000000214792430;
    v22 = v54;
    v34 = v62;
    if (v27)
    {

      (*(v12 + 8))(v9, v5);

      v35 = v55;

      v36 = v63;
      LOBYTE(v64) = v63;
      v37 = v60;
      *(&v64 + 1) = v22;
      v65 = v60;
      v38 = v34;
      v39 = *(&v60 + 1);
      *&v66 = v38;
      v40 = v59;
      BYTE8(v66) = v59;
      v41 = v51;
      *&v67 = v52;
      *(&v67 + 1) = v35;
      *&v68 = v56;
      *(&v68 + 1) = v61;
      LOBYTE(v69) = v53;
      *(&v69 + 1) = v51;
      v42 = v67;
      a2[2] = v66;
      a2[3] = v42;
      v43 = v69;
      a2[4] = v68;
      a2[5] = v43;
      v44 = v65;
      *a2 = v64;
      a2[1] = v44;
      sub_2142FC684(&v64, &v71);
      __swift_destroy_boxed_opaque_existential_1(v89);
      LOBYTE(v71) = v36;
      *(&v71 + 1) = v88[0];
      HIDWORD(v71) = *(v88 + 3);
      v72 = v54;
      v73 = v37;
      v74 = v39;
      v75 = v62;
      v76 = v40;
      *v77 = *v87;
      *&v77[3] = *&v87[3];
      v78 = v52;
      v79 = v35;
      v80 = v56;
      v81 = v61;
      v82 = v53;
      *v83 = *v86;
      *&v83[3] = *&v86[3];
      v84 = v41;
      return sub_2142FC3CC(&v71);
    }

    sub_214031C4C();
    swift_allocError();
    v45 = v57;
    *v46 = v58;
    v46[1] = v45;
    v46[2] = 0xD00000000000001CLL;
    v46[3] = v49;
    swift_willThrow();

    (*(v12 + 8))(v9, v5);

    v31 = *(&v60 + 1);
    v30 = v60;
    v32 = v34;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    v28 = v48;
    *v29 = 0xD00000000000001CLL;
    v29[1] = v28;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = v49;
    swift_willThrow();

    v26 = *(&v50 + 1);
    (*(v12 + 8))(v9, v5);
    v30 = v60;

    v32 = v57;
    v31 = v58;
    sub_213FDC6D0(v58, v57);
  }

  v33 = v63;
  __swift_destroy_boxed_opaque_existential_1(v89);
  LOBYTE(v71) = v33;
  *(&v71 + 1) = v88[0];
  HIDWORD(v71) = *(v88 + 3);
  v72 = v22;
  v73 = v30;
  v74 = v31;
  v75 = v32;
  v76 = v59;
  *v77 = *v87;
  *&v77[3] = *&v87[3];
  v78 = v52;
  v79 = v55;
  v80 = v50;
  v81 = v26;
  v82 = v53;
  *&v83[3] = *&v86[3];
  *v83 = *v86;
  v84 = v51;
  return sub_2142FC3CC(&v71);
}

uint64_t PhotosPoster.Media.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A960, &qword_2146F6010);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 4);
  v18 = *(v1 + 3);
  v19 = v10;
  v11 = *(v1 + 8);
  v16 = *(v1 + 9);
  v17 = v11;
  v15[1] = *(v1 + 11);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FE20();
  sub_2146DAA28();
  LOBYTE(v20) = v9;
  v22 = 0;
  sub_21430FEC8();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = v16;
  if (v19 != 1)
  {
    v20 = v18;
    v21 = v19;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (v13)
    {
      LOBYTE(v20) = 2;

      sub_2146DA328();

      LOBYTE(v20) = 3;
      sub_2146DA368();
      return (*(v5 + 8))(v8, v4);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_21423F118(char a1)
{
  result = 0x7A69536567616D69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x78616C6C61726170;
      break;
    case 3:
      result = 0x46656C6269736976;
      break;
    case 4:
      result = 0x6576697463616E69;
      break;
    case 5:
      result = 0x6D617246656D6974;
      break;
    case 6:
      result = 0x79614C6B636F6C63;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x615674756F79616CLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
    case 13:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21423F2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437CB0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21423F2FC(uint64_t a1)
{
  v2 = sub_21430FF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21423F338(uint64_t a1)
{
  v2 = sub_21430FF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.Layout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A970, &qword_2146F6018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FF1C();
  sub_2146DAA08();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v38 = 0;
    sub_214328930(&qword_280B30B88, type metadata accessor for CGSize);
    sub_2146DA1C8();
    v11 = v35;
    v38 = 1;
    sub_2146DA1C8();
    v12 = v35;
    v38 = 2;
    sub_2146DA1C8();
    v13 = v35;
    type metadata accessor for CGRect(0);
    v38 = 3;
    sub_214328930(&qword_27C9083F0, type metadata accessor for CGRect);
    sub_2146DA1C8();
    v33 = v35;
    v34 = v36;
    v38 = 4;
    sub_2146DA1C8();
    v31 = v35;
    v32 = v36;
    v38 = 5;
    sub_2146DA1C8();
    v30 = v36;
    v29 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A980, &qword_2146F6020);
    v38 = 6;
    sub_21430FF70();
    sub_2146DA1C8();
    v37 = v35;
    v38 = 7;
    sub_214310048();
    sub_2146DA1C8();
    v28 = v35;
    v38 = 8;
    sub_21431009C();
    sub_2146DA1C8();
    v27 = v35;
    LOBYTE(v35) = 9;
    v26 = sub_2146DA178();
    v38 = 10;
    sub_2146DA1C8();
    v25 = v36;
    v24 = v35;
    v38 = 11;
    sub_2146DA1C8();
    v23 = v36;
    v22 = v35;
    v38 = 12;
    sub_2146DA1C8();
    v21 = v36;
    v20 = v35;
    v38 = 13;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v15 = v26 & 1;
    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    v16 = v34;
    *(a2 + 48) = v33;
    *(a2 + 64) = v16;
    v17 = v32;
    *(a2 + 80) = v31;
    *(a2 + 96) = v17;
    v18 = v30;
    *(a2 + 112) = v29;
    *(a2 + 128) = v18;
    *(a2 + 144) = v37;
    *(a2 + 145) = v28;
    *(a2 + 146) = v27;
    *(a2 + 147) = v15;
    *(a2 + 152) = v24;
    *(a2 + 168) = v25;
    *(a2 + 184) = v22;
    *(a2 + 200) = v23;
    *(a2 + 216) = v20;
    *(a2 + 232) = v21;
    v19 = v36;
    *(a2 + 248) = v35;
    *(a2 + 264) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PhotosPoster.Layout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9A8, &qword_2146F6028);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1[5];
  v15 = *(v1 + 3);
  v40 = *(v1 + 4);
  v41 = v15;
  v16 = *(v1 + 5);
  v38 = *(v1 + 6);
  v39 = v16;
  v17 = *(v1 + 7);
  v36 = *(v1 + 8);
  v37 = v17;
  v44 = *(v1 + 144);
  v35 = *(v1 + 145);
  v34 = *(v1 + 146);
  v18 = *(v1 + 147);
  v32 = *(v1 + 21);
  v33 = *(v1 + 19);
  v30 = *(v1 + 25);
  v31 = *(v1 + 23);
  v28 = *(v1 + 29);
  v29 = *(v1 + 27);
  v27 = *(v1 + 31);
  v26 = *(v1 + 33);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21430FF1C();
  sub_2146DAA28();
  *&v42 = v9;
  *(&v42 + 1) = v10;
  v45 = 0;
  type metadata accessor for CGSize(0);
  sub_214328930(&qword_280B2E368, type metadata accessor for CGSize);
  v20 = v4;
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v22 = v44;
  v25[3] = v18;
  *&v42 = v11;
  *(&v42 + 1) = v12;
  v45 = 1;
  sub_2146DA388();
  *&v42 = v13;
  *(&v42 + 1) = v14;
  v45 = 2;
  sub_2146DA388();
  v43 = v40;
  v42 = v41;
  v45 = 3;
  type metadata accessor for CGRect(0);
  v24 = v23;
  sub_214328930(&qword_27C908438, type metadata accessor for CGRect);
  sub_2146DA388();
  v43 = v38;
  v42 = v39;
  v45 = 4;
  sub_2146DA388();
  v43 = v36;
  v42 = v37;
  v45 = 5;
  sub_2146DA388();
  *&v41 = v24;
  LOBYTE(v42) = v22;
  v45 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A980, &qword_2146F6020);
  sub_2143100F0();
  sub_2146DA388();
  LOBYTE(v42) = v35;
  v45 = 7;
  sub_2143101C8();
  sub_2146DA388();
  LOBYTE(v42) = v34;
  v45 = 8;
  sub_21431021C();
  sub_2146DA388();
  LOBYTE(v42) = 9;
  sub_2146DA338();
  v43 = v32;
  v42 = v33;
  v45 = 10;
  sub_2146DA388();
  v43 = v30;
  v42 = v31;
  v45 = 11;
  sub_2146DA388();
  v43 = v28;
  v42 = v29;
  v45 = 12;
  sub_2146DA388();
  v43 = v26;
  v42 = v27;
  v45 = 13;
  sub_2146DA388();
  return (*(v5 + 8))(v8, v20);
}

uint64_t PhotosPoster.ParallaxLayer.init(with:frame:zPosition:identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  LOBYTE(v51) = 1;
  v60[0] = 1;
  v59 = 1;
  v58 = 1;
  v57 = 1;
  v56 = 1;
  v61 = 0uLL;
  *&v62 = 0;
  BYTE8(v62) = 1;
  *&v63 = 0;
  BYTE8(v63) = 1;
  *&v64 = 0;
  BYTE8(v64) = 1;
  *&v65 = 0;
  WORD4(v65) = 1025;
  v66 = 0uLL;
  *&v67 = 0;
  WORD4(v67) = 1;
  *&v68 = 0;
  BYTE8(v68) = 1;
  *&v69 = 0;
  BYTE8(v69) = 1;
  v70 = 0u;
  v71 = 0u;
  *&v72 = 0;
  *(&v72 + 1) = 0xF000000000000000;
  sub_2140611C0(&v61);
  v16 = v69;
  v17 = v71;
  v18 = v72;
  *(a4 + 392) = v70;
  *(a4 + 408) = v17;
  *(a4 + 424) = v18;
  v19 = v65;
  v20 = v67;
  v21 = v68;
  *(a4 + 328) = v66;
  *(a4 + 344) = v20;
  *(a4 + 360) = v21;
  *(a4 + 376) = v16;
  v22 = v62;
  *(a4 + 248) = v61;
  v23 = v63;
  v24 = v64;
  *(a4 + 264) = v22;
  *(a4 + 280) = v23;
  *(a4 + 296) = v24;
  *(a4 + 312) = v19;
  *(a4 + 240) = 0;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2140676DC;
  *(v26 + 24) = 0;
  *(inited + 32) = v26;
  sub_214042B80(inited, &v51);
  v28 = v51;
  v27 = v52;
  v29 = v53;
  v30 = v54;
  v31 = v55;
  *(a4 + 440) = a5;
  *(a4 + 448) = a6;
  *(a4 + 456) = a7;
  *(a4 + 464) = a8;
  *(a4 + 472) = a9;
  *(a4 + 480) = v28;
  *(a4 + 488) = v27;
  v46 = v29;
  *(a4 + 496) = v29;
  *(a4 + 504) = v30;
  *(a4 + 512) = v31;
  v50[0] = a2;
  v50[1] = a3;
  v60[0] = v31;
  v51 = 0xD000000000000025;
  v52 = 0x8000000214792450;
  v53 = 0xD00000000000001CLL;
  v54 = 0x800000021478A360;

  v32 = v28(v50, v60, &v51);
  if (v47)
  {
  }

  else
  {
    if (v32)
    {

      v33 = *(a4 + 488);
      v34 = *(a4 + 504);

      *(a4 + 480) = v28;
      *(a4 + 488) = v27;
      *(a4 + 496) = a2;
      *(a4 + 504) = a3;
      *(a4 + 512) = v31;
      result = sub_213FB2DF4(a4, &qword_27C904858, &qword_214736F00);
      v36 = *(a1 + 208);
      *(a4 + 192) = *(a1 + 192);
      *(a4 + 208) = v36;
      *(a4 + 224) = *(a1 + 224);
      *(a4 + 240) = *(a1 + 240);
      v37 = *(a1 + 144);
      *(a4 + 128) = *(a1 + 128);
      *(a4 + 144) = v37;
      v38 = *(a1 + 176);
      *(a4 + 160) = *(a1 + 160);
      *(a4 + 176) = v38;
      v39 = *(a1 + 80);
      *(a4 + 64) = *(a1 + 64);
      *(a4 + 80) = v39;
      v40 = *(a1 + 112);
      *(a4 + 96) = *(a1 + 96);
      *(a4 + 112) = v40;
      v41 = *(a1 + 16);
      *a4 = *a1;
      *(a4 + 16) = v41;
      v42 = *(a1 + 48);
      *(a4 + 32) = *(a1 + 32);
      *(a4 + 48) = v42;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v43 = 0xD000000000000025;
    v43[1] = 0x8000000214792450;
    v43[2] = 0xD00000000000001CLL;
    v43[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_21406D2CC(a1);
  v44 = *(a4 + 488);
  v45 = *(a4 + 504);

  *(a4 + 480) = v28;
  *(a4 + 488) = v27;
  *(a4 + 496) = v46;
  *(a4 + 504) = v30;
  *(a4 + 512) = v31;
  return sub_214310270(a4);
}

uint64_t sub_2142403B4()
{
  v1 = 0x6567616D69;
  v2 = 0x6F697469736F507ALL;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x656D617266;
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

uint64_t sub_214240430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437CFA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214240458(uint64_t a1)
{
  v2 = sub_2143102C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214240494(uint64_t a1)
{
  v2 = sub_2143102C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.ParallaxLayer.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9D0, &qword_2146F6030);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2143102C4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v34 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  v36[0] = 0;
  sub_21432076C(&qword_280B30CB8, &qword_27C905500, &qword_2146F2BE0);
  sub_2146DA1C8();
  v12 = v5;
  type metadata accessor for CGRect(0);
  LOBYTE(v43) = 1;
  sub_214328930(&qword_27C9083F0, type metadata accessor for CGRect);
  sub_2146DA1C8();
  v13 = v6;
  v32 = *&v36[16];
  v33 = *v36;
  v36[0] = 2;
  sub_2146DA188();
  v15 = v14;
  v55 = 3;
  v16 = sub_2146DA168();
  v19 = v18;
  v30 = v9;
  v31 = v12;
  v36[0] = 1;
  LOBYTE(v37[0]) = 1;
  v42[0] = 1;
  v41 = 1;
  v40 = 1;
  v39 = 1;
  v38 = 1;
  v43 = 0uLL;
  *&v44 = 0;
  BYTE8(v44) = 1;
  *&v45 = 0;
  BYTE8(v45) = 1;
  *&v46 = 0;
  BYTE8(v46) = 1;
  *&v47 = 0;
  WORD4(v47) = 1025;
  v48 = 0uLL;
  *&v49 = 0;
  WORD4(v49) = 1;
  *&v50 = 0;
  BYTE8(v50) = 1;
  *&v51 = 0;
  BYTE8(v51) = 1;
  v52 = 0u;
  v53 = 0u;
  *&v54 = 0;
  *(&v54 + 1) = 0xF000000000000000;
  v20 = v16;
  sub_2140611C0(&v43);
  *(&v57[24] + 8) = v52;
  *(&v57[25] + 8) = v53;
  *(&v57[26] + 8) = v54;
  *(&v57[20] + 8) = v48;
  *(&v57[21] + 8) = v49;
  *(&v57[22] + 8) = v50;
  *(&v57[23] + 8) = v51;
  *(&v57[16] + 8) = v44;
  *(&v57[17] + 8) = v45;
  *(&v57[18] + 8) = v46;
  *(&v57[19] + 8) = v47;
  *(&v57[15] + 8) = v43;
  memset(v57, 0, 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2140676DC;
  *(v22 + 24) = 0;
  *(v21 + 32) = v22;
  sub_214042B80(v21, v36);
  v24 = *v36;
  v23 = *&v36[8];
  *(&v57[27] + 8) = v33;
  *(&v57[28] + 8) = v32;
  *(&v57[29] + 1) = v15;
  v57[30] = *v36;
  *&v29 = *&v36[16];
  v57[31] = *&v36[16];
  LOBYTE(v57[32]) = v36[32];
  v37[0] = v20;
  v37[1] = v19;
  LODWORD(v33) = v36[32];
  v42[0] = v36[32];
  *v36 = 0xD000000000000025;
  *&v36[8] = 0x8000000214792450;
  *&v36[16] = 0xD00000000000001CLL;
  *&v36[24] = 0x800000021478A360;
  *(&v29 + 1) = *(&v57[31] + 1);

  *&v32 = v24;
  v25 = v24(v37, v42, v36);
  v28 = v20;
  if (v25)
  {

    (*(v13 + 8))(v30, v31);

    *&v57[30] = v32;
    *(&v57[30] + 1) = v23;
    *&v57[31] = v28;
    *(&v57[31] + 1) = v19;
    LOBYTE(v57[32]) = v33;
    memcpy(v36, v56, sizeof(v36));
    sub_213FB2DF4(v57, &qword_27C905500, &qword_2146F2BE0);
    memcpy(v57, v36, 0x1B8uLL);
    memcpy(v34, v57, 0x201uLL);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  sub_214031C4C();
  swift_allocError();
  *v26 = 0xD000000000000025;
  v26[1] = 0x8000000214792450;
  v26[2] = 0xD00000000000001CLL;
  v26[3] = 0x800000021478A360;
  swift_willThrow();

  sub_213FB2DF4(v56, &qword_27C905500, &qword_2146F2BE0);
  (*(v13 + 8))(v30, v31);

  *&v57[30] = v32;
  *(&v57[30] + 1) = v23;
  v57[31] = v29;
  LOBYTE(v57[32]) = v33;
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_214310270(v57);
}

uint64_t PhotosPoster.ParallaxLayer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9E0, &qword_2146F6038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143102C4();
  sub_2146DAA28();
  LOBYTE(v16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_21432076C(qword_280B2E688, &qword_27C905500, &qword_2146F2BE0);
  sub_2146DA388();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + 456);
  v16 = *(v3 + 440);
  v17 = v11;
  v15[15] = 1;
  type metadata accessor for CGRect(0);
  sub_214328930(&qword_27C908438, type metadata accessor for CGRect);
  sub_2146DA388();
  v12 = *(v3 + 472);
  LOBYTE(v16) = 2;
  sub_2146DA348();
  if (*(v3 + 504))
  {
    v14 = *(v3 + 496);
    LOBYTE(v16) = 3;

    sub_2146DA328();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotosPoster.ParallaxLayerStack.init(with:layout:depthEnabled:parallaxDisabled:clockAreaLuminance:settlingEffectEnabled:spatialPhotoEnabled:)(BlastDoor::PhotosPoster::ParallaxLayerStack *__return_ptr retstr, Swift::OpaquePointer with, BlastDoor::PhotosPoster::Layout *layout, Swift::Bool depthEnabled, Swift::Bool parallaxDisabled, Swift::Double clockAreaLuminance, Swift::Bool settlingEffectEnabled, Swift::Bool spatialPhotoEnabled)
{
  retstr->layers = with;
  memcpy(&retstr->layout, layout, sizeof(retstr->layout));
  retstr->depthEnabled = depthEnabled;
  retstr->parallaxDisabled = parallaxDisabled;
  retstr->clockAreaLuminance = clockAreaLuminance;
  retstr->settlingEffectEnabled = settlingEffectEnabled;
  retstr->spatialPhotoEnabled = spatialPhotoEnabled;
}

uint64_t sub_214240ED4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x74756F79616CLL;
    if (v1 != 1)
    {
      v5 = 0x616E456874706564;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x73726579616CLL;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 != 5)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000010;
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

uint64_t sub_214240FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437D10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214240FE8(uint64_t a1)
{
  v2 = sub_214310318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214241024(uint64_t a1)
{
  v2 = sub_214310318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.ParallaxLayerStack.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9E8, &qword_2146F6040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_214310318();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9F8, &qword_2146F6048);
    v28 = 0;
    sub_21431036C();
    v13 = v5;
    sub_2146DA1C8();
    v14 = v27[0];
    v28 = 1;
    sub_214310444();
    sub_2146DA1C8();
    memcpy(v26, v27, sizeof(v26));
    v25 = 2;
    v23 = sub_2146DA178();
    v25 = 3;
    v22 = sub_2146DA178();
    v25 = 4;
    sub_2146DA188();
    v17 = v16;
    v25 = 5;
    HIDWORD(v21) = sub_2146DA178();
    v25 = 6;
    v18 = sub_2146DA178();
    (*(v12 + 8))(v9, v13);
    LOBYTE(v13) = v23 & 1;
    v19 = v22 & 1;
    v20 = BYTE4(v21) & 1;
    *a2 = v14;
    memcpy((a2 + 8), v26, 0x118uLL);
    *(a2 + 288) = v13;
    *(a2 + 289) = v19;
    *(a2 + 296) = v17;
    *(a2 + 304) = v20;
    *(a2 + 305) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t PhotosPoster.ParallaxLayerStack.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA18, &qword_2146F6050);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = *v2;
  v10 = *(v2 + 288);
  v16[2] = *(v2 + 289);
  v16[3] = v10;
  v11 = v2[37];
  v12 = *(v2 + 304);
  v16[0] = *(v2 + 305);
  v16[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310318();

  sub_2146DAA28();
  v18[0] = v9;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A9F8, &qword_2146F6048);
  sub_214310498();
  v14 = v17;
  sub_2146DA388();
  if (v14)
  {
  }

  else
  {

    memcpy(v18, v2 + 1, sizeof(v18));
    v19 = 1;
    sub_214310570();
    sub_2146DA388();
    LOBYTE(v18[0]) = 2;
    sub_2146DA338();
    LOBYTE(v18[0]) = 3;
    sub_2146DA338();
    LOBYTE(v18[0]) = 4;
    sub_2146DA348();
    LOBYTE(v18[0]) = 5;
    sub_2146DA338();
    LOBYTE(v18[0]) = 6;
    sub_2146DA338();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2142416D8()
{
  v1 = *v0;
  v2 = 0x69536E6565726373;
  v3 = 0x74636552656D6974;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x78616C6C61726170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x63536E6565726373;
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

uint64_t sub_214241790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437D354(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2142417B8(uint64_t a1)
{
  v2 = sub_2143105C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142417F4(uint64_t a1)
{
  v2 = sub_2143105C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.ParallaxLayoutConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA38, &qword_2146F6058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143105C4();
  sub_2146DAA08();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v26 = 0;
    sub_214328930(&qword_280B30B88, type metadata accessor for CGSize);
    sub_2146DA1C8();
    v11 = v24;
    LOBYTE(v24) = 1;
    sub_2146DA188();
    v13 = v12;
    type metadata accessor for CGRect(0);
    v15 = v14;
    v26 = 2;
    v16 = sub_214328930(&qword_27C9083F0, type metadata accessor for CGRect);
    *&v23 = v15;
    *&v22 = v16;
    sub_2146DA1C8();
    v20 = v24;
    v21 = v25;
    v26 = 3;
    sub_2146DA1C8();
    v22 = v24;
    v23 = v25;
    v26 = 4;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 16) = v13;
    v18 = v21;
    *(a2 + 24) = v20;
    *(a2 + 40) = v18;
    v19 = v23;
    *(a2 + 56) = v22;
    *(a2 + 72) = v19;
    *(a2 + 88) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PhotosPoster.ParallaxLayoutConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA48, &qword_2146F6060);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = *(v1 + 3);
  v20 = *(v1 + 5);
  v21 = v12;
  v13 = *(v1 + 7);
  v18 = *(v1 + 9);
  v19 = v13;
  v14 = v1[11];
  v15 = v1[12];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143105C4();
  sub_2146DAA28();
  *&v22 = v9;
  *(&v22 + 1) = v10;
  v24 = 0;
  type metadata accessor for CGSize(0);
  sub_214328930(&qword_280B2E368, type metadata accessor for CGSize);
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v22) = 1;
    sub_2146DA348();
    v23 = v20;
    v22 = v21;
    v24 = 2;
    type metadata accessor for CGRect(0);
    sub_214328930(&qword_27C908438, type metadata accessor for CGRect);
    sub_2146DA388();
    v23 = v18;
    v22 = v19;
    v24 = 3;
    sub_2146DA388();
    *&v22 = v14;
    *(&v22 + 1) = v15;
    v24 = 4;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PhotosPoster.CompoundDeviceConfiguration.init(with:landscapeConfiguration:)(BlastDoor::PhotosPoster::CompoundDeviceConfiguration *__return_ptr retstr, BlastDoor::PhotosPoster::ParallaxLayoutConfiguration *with, BlastDoor::PhotosPoster::ParallaxLayoutConfiguration_optional *landscapeConfiguration)
{
  v6 = *&with->inactiveTimeRect.origin.y;
  v7 = *&with->inactiveTimeRect.size.height;
  *v8 = with->parallaxPadding.height;
  v4 = *&with->timeRect.origin.y;
  v5 = *&with->timeRect.size.height;
  *&v8[40] = *&landscapeConfiguration->value.timeRect.origin.y;
  *&v8[24] = *&landscapeConfiguration->value.screenScale;
  *&v8[8] = landscapeConfiguration->value.screenSize;
  *&v8[97] = *(&landscapeConfiguration->value.parallaxPadding + 1);
  *&v8[88] = *&landscapeConfiguration->value.inactiveTimeRect.size.height;
  *&v8[72] = *&landscapeConfiguration->value.inactiveTimeRect.origin.y;
  *&v8[56] = *&landscapeConfiguration->value.timeRect.size.height;
  v3 = *&with->screenScale;
  retstr->portraitConfiguration.screenSize = with->screenSize;
  *&retstr->portraitConfiguration.screenScale = v3;
  *&retstr->portraitConfiguration.inactiveTimeRect.origin.y = v6;
  *&retstr->portraitConfiguration.inactiveTimeRect.size.height = v7;
  *&retstr->portraitConfiguration.timeRect.origin.y = v4;
  *&retstr->portraitConfiguration.timeRect.size.height = v5;
  retstr->landscapeConfiguration.value.timeRect = *&v8[32];
  *&retstr->portraitConfiguration.parallaxPadding.height = *v8;
  *&retstr->landscapeConfiguration.value.screenSize.height = *&v8[16];
  retstr->landscapeConfiguration.is_nil = v8[112];
  retstr->landscapeConfiguration.value.inactiveTimeRect.size = *&v8[80];
  retstr->landscapeConfiguration.value.parallaxPadding = *&v8[96];
  retstr->landscapeConfiguration.value.inactiveTimeRect.origin = *&v8[64];
}

unint64_t sub_214241F2C()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_214241F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000214797160 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000214797180 == a2)
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

uint64_t sub_214242048(uint64_t a1)
{
  v2 = sub_214310618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214242084(uint64_t a1)
{
  v2 = sub_214310618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotosPoster.CompoundDeviceConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA50, &qword_2146F6068);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310618();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v5;
    v11 = v51;
    v43 = 0;
    sub_21431066C();
    sub_2146DA1C8();
    v40 = v48;
    v41 = v49;
    v42 = v50;
    v36 = v44;
    v37 = v45;
    v38 = v46;
    v39 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA68, &qword_2146F6070);
    v29 = 1;
    sub_2143106C0();
    sub_2146DA1C8();
    (*(v10 + 8))(v8, v4);
    *&v28[56] = v33;
    *&v28[72] = v34;
    *&v28[88] = v35[0];
    *&v28[97] = *(v35 + 9);
    *&v28[8] = v30;
    *&v28[24] = v31;
    *&v28[40] = v32;
    v23[0] = v36;
    v23[1] = v37;
    *v28 = v42;
    v26 = v40;
    v27 = v41;
    v24 = v38;
    v25 = v39;
    v12 = v37;
    *v11 = v36;
    *(v11 + 16) = v12;
    v13 = v24;
    v14 = v25;
    v15 = v27;
    *(v11 + 64) = v26;
    *(v11 + 80) = v15;
    *(v11 + 32) = v13;
    *(v11 + 48) = v14;
    v16 = *v28;
    v17 = *&v28[16];
    v18 = *&v28[48];
    *(v11 + 128) = *&v28[32];
    *(v11 + 144) = v18;
    *(v11 + 96) = v16;
    *(v11 + 112) = v17;
    v19 = *&v28[64];
    v20 = *&v28[80];
    v21 = *&v28[96];
    *(v11 + 208) = v28[112];
    *(v11 + 176) = v20;
    *(v11 + 192) = v21;
    *(v11 + 160) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PhotosPoster.CompoundDeviceConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA78, &qword_2146F6078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310618();
  sub_2146DAA28();
  v11 = v3[5];
  v22 = v3[4];
  *v23 = v11;
  *&v23[16] = *(v3 + 12);
  v12 = v3[1];
  v18 = *v3;
  v19 = v12;
  v13 = v3[3];
  v20 = v3[2];
  v21 = v13;
  v24 = 0;
  sub_214310744();
  sub_2146DA388();
  if (!v2)
  {
    v14 = *(v3 + 152);
    v15 = *(v3 + 184);
    v22 = *(v3 + 168);
    *v23 = v15;
    *&v23[9] = *(v3 + 193);
    v16 = *(v3 + 120);
    v18 = *(v3 + 104);
    v19 = v16;
    v20 = *(v3 + 136);
    v21 = v14;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA68, &qword_2146F6070);
    sub_214310798();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_214242574@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 32);
  *&v10[23] = *(a2 + 16);
  *&v10[39] = *(a2 + 32);
  *&v10[55] = *(a2 + 48);
  *&v10[71] = *(a2 + 64);
  *&v10[7] = *a2;
  *&v9[22] = *(a3 + 16);
  *&v9[38] = *(a3 + 32);
  *&v9[54] = *(a3 + 48);
  *&v9[70] = *(a3 + 64);
  *&v9[6] = *a3;
  *&v8[22] = *(a4 + 16);
  *&v8[38] = *(a4 + 32);
  *&v8[54] = *(a4 + 48);
  *&v8[70] = *(a4 + 64);
  *&v8[6] = *a4;
  v6 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v6;
  *(a5 + 32) = v5;
  *(a5 + 33) = *v10;
  *(a5 + 90) = *&v10[57];
  *(a5 + 81) = *&v10[48];
  *(a5 + 65) = *&v10[32];
  *(a5 + 49) = *&v10[16];
  *(a5 + 106) = *v9;
  *(a5 + 170) = *&v9[64];
  *(a5 + 154) = *&v9[48];
  *(a5 + 138) = *&v9[32];
  *(a5 + 122) = *&v9[16];
  *(a5 + 178) = *v8;
  result = *&v8[32];
  *(a5 + 242) = *&v8[64];
  *(a5 + 226) = *&v8[48];
  *(a5 + 210) = *&v8[32];
  *(a5 + 194) = *&v8[16];
  return result;
}

uint64_t sub_214242674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437D520(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21424269C(uint64_t a1)
{
  v2 = sub_21431081C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142426D8(uint64_t a1)
{
  v2 = sub_21431081C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214242714@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AA90, &qword_2146F6080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21431081C();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v6;
    v35 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAA0, &qword_2146F6088);
    LOBYTE(v56) = 0;
    sub_214310870();
    sub_2146DA1C8();
    v13 = *(&v62 + 1);
    v33 = v62;
    v34 = v63;
    v14 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAB8, &qword_2146F6090);
    v61 = 1;
    v32 = sub_214310948();
    sub_2146DA1C8();
    v30 = v13;
    v31 = v14;
    v58 = v64;
    v59 = v65;
    v60 = v66;
    v56 = v62;
    v57 = v63;
    v50 = 2;
    sub_2146DA1C8();
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v49 = v55;
    v45 = v51;
    v39 = 3;
    sub_2146DA1C8();
    (*(v12 + 8))(v9, v5);
    v15 = v31;
    v16 = v34;
    v17 = v30;
    *&v38[23] = v57;
    *&v38[39] = v58;
    *&v38[55] = v59;
    *&v38[71] = v60;
    *&v38[7] = v56;
    *&v37[22] = v46;
    *&v37[38] = v47;
    *&v37[54] = v48;
    *&v37[70] = v49;
    *&v37[6] = v45;
    *&v36[6] = v40;
    *&v36[70] = v44;
    *&v36[54] = v43;
    *&v36[38] = v42;
    *&v36[22] = v41;
    v19 = *(&v34 + 1);
    v20 = v35;
    *v35 = v33;
    v20[1] = v17;
    v20[2] = v16;
    v20[3] = v19;
    *(v20 + 32) = v15;
    v21 = *&v38[16];
    *(v20 + 33) = *v38;
    v22 = *&v38[32];
    v23 = *&v38[48];
    *(v20 + 90) = *&v38[57];
    *(v20 + 81) = v23;
    *(v20 + 65) = v22;
    *(v20 + 49) = v21;
    v24 = *&v37[16];
    *(v20 + 106) = *v37;
    v25 = *&v37[32];
    v26 = *&v37[48];
    *(v20 + 170) = *&v37[64];
    *(v20 + 154) = v26;
    *(v20 + 138) = v25;
    *(v20 + 122) = v24;
    v27 = *&v36[16];
    *(v20 + 178) = *v36;
    v28 = *&v36[32];
    v29 = *&v36[48];
    *(v20 + 242) = *&v36[64];
    *(v20 + 226) = v29;
    *(v20 + 210) = v28;
    *(v20 + 194) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_214242BB8(void *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAD0, &qword_2146F6098);
  v28 = *(v26 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v5 = v24 - v4;
  v6 = *(v1 + 8);
  v25 = *v1;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 56);
  v10 = *(v1 + 88);
  v52 = *(v1 + 72);
  v53 = v10;
  v54 = *(v1 + 104);
  v50 = *(v1 + 40);
  v51 = v9;
  v11 = *(v1 + 112);
  v12 = *(v1 + 128);
  v13 = *(v1 + 144);
  v14 = *(v1 + 160);
  v15 = *(v1 + 32);
  v59 = *(v1 + 176);
  v57 = v13;
  v58 = v14;
  v55 = v11;
  v56 = v12;
  v16 = *(v1 + 200);
  v17 = *(v1 + 232);
  v62 = *(v1 + 216);
  v63 = v17;
  v64 = *(v1 + 248);
  v60 = *(v1 + 184);
  v61 = v16;
  v18 = a1[3];
  v24[1] = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = v25;
  sub_21431C5DC(v25);
  sub_21431081C();
  sub_2146DAA28();
  *&v45 = v19;
  *(&v45 + 1) = v6;
  *&v46 = v8;
  *(&v46 + 1) = v7;
  LOBYTE(v47) = v15;
  v20 = v26;
  LOBYTE(v43[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAA0, &qword_2146F6088);
  sub_214310A20();
  v21 = v27;
  sub_2146DA388();
  if (v21)
  {
    sub_21431E10C(v45);
    return (*(v28 + 8))(v5, v20);
  }

  else
  {
    v23 = v28;
    sub_21431E10C(v45);
    v47 = v52;
    v48 = v53;
    v49 = v54;
    v45 = v50;
    v46 = v51;
    v67 = 1;
    sub_213FB2E54(&v50, v43, &qword_27C90AAB8, &qword_2146F6090);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAB8, &qword_2146F6090);
    sub_214310AF8();
    sub_2146DA388();
    v43[2] = v47;
    v43[3] = v48;
    v44 = v49;
    v43[0] = v45;
    v43[1] = v46;
    sub_213FB2DF4(v43, &qword_27C90AAB8, &qword_2146F6090);
    v40 = v57;
    v41 = v58;
    v42 = v59;
    v38 = v55;
    v39 = v56;
    v66 = 2;
    sub_213FB2E54(&v55, v36, &qword_27C90AAB8, &qword_2146F6090);
    sub_2146DA388();
    v36[2] = v40;
    v36[3] = v41;
    v37 = v42;
    v36[0] = v38;
    v36[1] = v39;
    sub_213FB2DF4(v36, &qword_27C90AAB8, &qword_2146F6090);
    v33 = v62;
    v34 = v63;
    v35 = v64;
    v31 = v60;
    v32 = v61;
    v65 = 3;
    sub_213FB2E54(&v60, v29, &qword_27C90AAB8, &qword_2146F6090);
    sub_2146DA388();
    v29[2] = v33;
    v29[3] = v34;
    v30 = v35;
    v29[0] = v31;
    v29[1] = v32;
    sub_213FB2DF4(v29, &qword_27C90AAB8, &qword_2146F6090);
    return (*(v23 + 8))(v5, v20);
  }
}

uint64_t sub_214243064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21444A480(&v15);
  v6 = v15;
  v7 = v16;
  v8 = v19;
  v14[0] = a1;
  v14[1] = a2;
  v20 = v19;
  v15 = 0xD000000000000035;
  v16 = 0x8000000214792480;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;
  v9 = v6;

  v10 = v9(v14, &v20, &v15);
  if (v3)
  {
  }

  else
  {
    if (v10)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v7;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000035;
    v12[1] = 0x8000000214792480;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2142431FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_21424328C(uint64_t a1)
{
  v2 = sub_214310BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142432C8(uint64_t a1)
{
  v2 = sub_214310BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214243304@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AAF8, &qword_2146F60A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310BD0();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v25 = a2;
  v14 = v13;
  v15 = v11;
  sub_21444A480(&v31);
  v17 = v31;
  v16 = v32;
  v26 = v15;
  v30[0] = v15;
  v30[1] = v14;
  v28 = v14;
  v29 = v34;
  v36 = v35;
  v37 = v35;
  v31 = 0xD000000000000035;
  v32 = 0x8000000214792480;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v27 = v16;
  v18 = v17(v30, &v37, &v31);
  v24 = v17;
  if (v18)
  {

    (*(v6 + 8))(v9, v5);

    v19 = v27;

    v20 = v25;
    *v25 = v24;
    v20[1] = v19;
    v21 = v28;
    v20[2] = v26;
    v20[3] = v21;
    *(v20 + 32) = v36;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v22 = 0xD000000000000035;
  v22[1] = 0x8000000214792480;
  v22[2] = 0xD00000000000001CLL;
  v22[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214243680@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  sub_21444A584(&v35);
  v10 = v35;
  v9 = v36;
  v11 = v38;
  v47[0] = *v40;
  *(v47 + 3) = *&v40[3];
  v29 = v41;
  v31 = v42;
  v25 = v37;
  v26 = v43;
  v12 = v44;
  v30 = v45;
  v46 = v44;
  v34[0] = a1;
  v34[1] = a2;
  v28 = v39;
  v33[0] = v39;
  v35 = 0xD00000000000002ELL;
  v36 = 0x80000002147924C0;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  v27 = v10;
  v13 = v10(v34, v33, &v35);
  if (v5)
  {

LABEL_6:

    v17 = v29;
    v14 = v9;

    a1 = v25;
    v15 = v30;
LABEL_7:
    v35 = v27;
    v36 = v14;
    v37 = a1;
    v38 = v11;
    v39 = v28;
    *v40 = v47[0];
    *&v40[3] = *(v47 + 3);
    v41 = v17;
    v42 = v31;
    v43 = v26;
    v44 = v46;
    v45 = v15;
    return sub_214310C24(&v35);
  }

  v22 = v12;
  v23 = a2;
  if ((v13 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v18 = 0xD00000000000002ELL;
    v18[1] = 0x80000002147924C0;
    v18[2] = 0xD00000000000001CLL;
    v18[3] = 0x800000021478A360;
    swift_willThrow();
    goto LABEL_6;
  }

  v14 = v9;

  v33[0] = v22 & 1;
  *v34 = a4;
  v15 = v30;
  v32 = v30;
  v35 = 0xD000000000000033;
  v36 = 0x80000002147924F0;
  v37 = 0xD00000000000001CLL;
  v38 = 0x800000021478A360;

  v16 = v29(v34, &v32, &v35);
  v17 = v29;
  if ((v16 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000033;
    v20[1] = 0x80000002147924F0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    v21 = v33[0];

    v46 = v21 & 1;
    v11 = v23;
    goto LABEL_7;
  }

  v46 = 0;
  *a3 = v27;
  *(a3 + 8) = v9;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v28;
  *(a3 + 33) = v47[0];
  *(a3 + 36) = *(v47 + 3);
  *(a3 + 40) = v29;
  *(a3 + 48) = v31;
  *(a3 + 56) = a4;
  *(a3 + 64) = 0;
  *(a3 + 65) = v30;
  return result;
}

uint64_t sub_2142439DC()
{
  if (*v0)
  {
    result = 0x6F69746169726176;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_214243A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746169726176 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_214243AF8(uint64_t a1)
{
  v2 = sub_214310C78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214243B34(uint64_t a1)
{
  v2 = sub_214310C78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214243B70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB10, &qword_2146F60B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310C78();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v66) = 0;
  v11 = sub_2146DA168();
  v13 = v12;
  v14 = v11;
  v57 = a2;
  v77 = 1;
  sub_2146DA188();
  v17 = v16;
  sub_21444A584(&v66);
  v18 = v67;
  v58 = v66;
  v19 = v69;
  v49 = v68;
  *v79 = *v71;
  *&v79[3] = *&v71[3];
  v53 = v72;
  v56 = v73;
  v50 = v74;
  v54 = v76;
  v48 = v75;
  v78 = v75;
  v47 = v14;
  *&v59 = v14;
  *(&v59 + 1) = v13;
  v52 = v70;
  LOBYTE(v64) = v70;
  v66 = 0xD00000000000002ELL;
  v67 = 0x80000002147924C0;
  v68 = 0xD00000000000001CLL;
  v69 = 0x800000021478A360;
  v51 = v19;

  v55 = v18;
  v20 = v58(&v59, &v64, &v66);
  v45 = v13;
  v21 = v48;
  v46 = 0x800000021478A360;
  if (v20)
  {
    v22 = v46;

    v65 = v21 & 1;
    v64 = v17;
    LOBYTE(v59) = v54;
    v66 = 0xD000000000000033;
    v67 = 0x80000002147924F0;
    v68 = 0xD00000000000001CLL;
    v69 = v22;

    v23 = v53;
    v24 = v53(&v64, &v59, &v66);
    v25 = v23;
    v28 = v45;
    if (v24)
    {

      (*(v6 + 8))(v9, v5);
      v31 = v56;

      v78 = 0;
      v32 = v58;
      *&v59 = v58;
      v33 = v47;
      *(&v59 + 1) = v55;
      *&v60 = v47;
      *(&v60 + 1) = v28;
      v34 = v52;
      LOBYTE(v61) = v52;
      *(&v61 + 1) = *v79;
      DWORD1(v61) = *&v79[3];
      *(&v61 + 1) = v23;
      *&v62 = v31;
      *(&v62 + 1) = v17;
      LOBYTE(v63) = 0;
      v35 = v54;
      HIBYTE(v63) = v54;
      v36 = v59;
      v37 = v60;
      v38 = v61;
      v39 = v62;
      v40 = v57;
      *(v57 + 64) = v63;
      v40[2] = v38;
      v40[3] = v39;
      *v40 = v36;
      v40[1] = v37;
      sub_214310CCC(&v59, &v66);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v66 = v32;
      v67 = v55;
      v68 = v33;
      v69 = v28;
      v70 = v34;
      *v71 = *v79;
      *&v71[3] = *&v79[3];
      v72 = v23;
      v73 = v31;
      v74 = v17;
      v75 = 0;
      v76 = v35;
      return sub_214310C24(&v66);
    }

    sub_214031C4C();
    swift_allocError();
    *v41 = 0xD000000000000033;
    v41[1] = 0x80000002147924F0;
    v42 = v46;
    v41[2] = 0xD00000000000001CLL;
    v41[3] = v42;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    v43 = v65;
    v30 = v47;

    v78 = v43 & 1;
    v29 = v55;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v26 = 0xD00000000000002ELL;
    v26[1] = 0x80000002147924C0;
    v27 = v46;
    v26[2] = 0xD00000000000001CLL;
    v26[3] = v27;
    swift_willThrow();

    v25 = v53;
    (*(v6 + 8))(v9, v5);
    v28 = v51;

    v29 = v55;

    v30 = v49;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v66 = v58;
  v67 = v29;
  v68 = v30;
  v69 = v28;
  v70 = v52;
  *v71 = *v79;
  *&v71[3] = *&v79[3];
  v72 = v25;
  v73 = v56;
  v74 = v50;
  v75 = v78;
  v76 = v54;
  return sub_214310C24(&v66);
}

uint64_t sub_214244230(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB20, &qword_2146F60B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 56);
  v15 = *(v1 + 64);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310C78();
  sub_2146DAA28();
  if (!v9)
  {
    goto LABEL_6;
  }

  v18 = 0;

  v12 = v16;
  sub_2146DA328();
  if (v12)
  {
    (*(v4 + 8))(v7, v3);
  }

  if (v15)
  {
LABEL_6:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v17 = 1;
    sub_2146DA348();
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

__n128 sub_214244468@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  *&v9[7] = *a5;
  *&v9[23] = a5[1];
  *&v9[39] = a5[2];
  *&v9[48] = *(a5 + 41);
  *(a6 + 24) = *a4;
  *(a6 + 49) = *v9;
  *(a6 + 65) = *&v9[16];
  result = *&v9[32];
  *(a6 + 81) = *&v9[32];
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v7;
  *(a6 + 48) = v8;
  *(a6 + 97) = *&v9[48];
  return result;
}

uint64_t sub_2142444D4()
{
  v1 = *v0;
  v2 = 0x6874646977;
  v3 = 0x73746E696F70;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746867696568;
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

uint64_t sub_214244568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437D674(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214244590(uint64_t a1)
{
  v2 = sub_214310D28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142445CC(uint64_t a1)
{
  v2 = sub_214310D28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214244608@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB28, &qword_2146F60C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310D28();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v26) = 0;
    v11 = sub_2146DA1A8();
    LOBYTE(v26) = 1;
    v24 = sub_2146DA1A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB38, &qword_2146F60C8);
    v30 = 2;
    sub_214310D7C();
    sub_2146DA1C8();
    v13 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB50, &qword_2146F60D0);
    v30 = 3;
    sub_214310E54();
    sub_2146DA1C8();
    v22 = *(&v26 + 1);
    v23 = v13;
    v20 = v26;
    v21 = v27;
    LOBYTE(v13) = BYTE8(v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB68, &qword_2146F60D8);
    v30 = 4;
    sub_214310F2C();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *&v25[7] = v26;
    *&v25[23] = v27;
    *&v25[39] = v28[0];
    *&v25[48] = *(v28 + 9);
    v14 = *&v25[16];
    *(a2 + 49) = *v25;
    *(a2 + 65) = v14;
    v15 = *&v25[48];
    *(a2 + 81) = *&v25[32];
    v29 = v13;
    v17 = v23;
    v16 = v24;
    *a2 = v11;
    *(a2 + 8) = v16;
    v18 = v20;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
    v19 = v21;
    *(a2 + 32) = v22;
    *(a2 + 40) = v19;
    *(a2 + 48) = v13;
    *(a2 + 97) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214244940(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB80, &qword_2146F60E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v11 = *v3;
  v10 = v3[1];
  v12 = v3[3];
  v25 = v3[2];
  v26 = v10;
  v13 = v3[5];
  v23 = v3[4];
  v24 = v12;
  v22 = v13;
  v30 = *(v3 + 48);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214310D28();
  v15 = v5;
  sub_2146DAA28();
  LOBYTE(v27) = 0;
  sub_2146DA368();
  if (!v2)
  {
    v16 = v24;
    v17 = v25;
    v18 = v23;
    LOBYTE(v27) = 1;
    sub_2146DA368();
    *&v27 = v17;
    v31 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB38, &qword_2146F60C8);
    sub_214311004();
    sub_2146DA388();
    *&v27 = v16;
    *(&v27 + 1) = v18;
    *&v28 = v22;
    BYTE8(v28) = v30;
    v31 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB50, &qword_2146F60D0);
    sub_2143110DC();
    sub_2146DA388();
    v19 = *(v3 + 9);
    v27 = *(v3 + 7);
    v28 = v19;
    v29[0] = *(v3 + 11);
    *(v29 + 9) = *(v3 + 97);
    v31 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AB68, &qword_2146F60D8);
    sub_2143111B4();
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v15);
}

void sub_214244C20(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

uint64_t sub_214244C2C()
{
  v1 = 0x59737569646172;
  if (*v0 != 1)
  {
    v1 = 0x616D676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x58737569646172;
  }
}

uint64_t sub_214244C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437D824(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214244CAC(uint64_t a1)
{
  v2 = sub_21431128C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214244CE8(uint64_t a1)
{
  v2 = sub_21431128C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214244D24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ABB8, &qword_2146F60E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431128C();
  sub_2146DAA08();
  if (!v2)
  {
    v16 = 0;
    sub_2143112E0();
    sub_2146DA1C8();
    v11 = v17;
    v16 = 1;
    sub_2146DA1C8();
    v13 = v17;
    v16 = 2;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214244F40(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ABD0, &qword_2146F60F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431128C();
  sub_2146DAA28();
  v16 = v10;
  v15 = 0;
  sub_214311334();
  sub_2146DA388();
  if (!v2)
  {
    v16 = v9;
    v15 = 1;
    sub_2146DA388();
    v16 = v11;
    v15 = 2;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

__n128 sub_21424515C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  result = *a1;
  v6 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v6;
  *(a2 + 40) = a4;
  *(a2 + 48) = a5;
  return result;
}

uint64_t sub_214245174()
{
  v1 = 0x726574656D616964;
  v2 = 0x6964615272756C62;
  if (*v0 != 2)
  {
    v2 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    v1 = 0x726F6C6F63;
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

uint64_t sub_2142451F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437D938(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214245218(uint64_t a1)
{
  v2 = sub_214311388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214245254(uint64_t a1)
{
  v2 = sub_214311388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214245290@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ABE0, &qword_2146F60F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311388();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = 0;
    sub_2143112E0();
    sub_2146DA1C8();
    v11 = v18;
    v20 = 1;
    sub_2142FCE0C();
    sub_2146DA1C8();
    v16 = v19;
    v17 = v18;
    v20 = 2;
    sub_2146DA1C8();
    v13 = v18;
    v20 = 3;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v18;
    *a2 = v11;
    v15 = v17;
    *(a2 + 24) = v16;
    *(a2 + 8) = v15;
    *(a2 + 40) = v13;
    *(a2 + 48) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142454FC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ABF0, &qword_2146F6100);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v15 = *(v1 + 3);
  v16 = v10;
  v12 = v1[5];
  v11 = v1[6];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311388();
  sub_2146DAA28();
  *&v17 = v9;
  v19 = 0;
  sub_214311334();
  sub_2146DA388();
  if (!v2)
  {
    v17 = v16;
    v18 = v15;
    v19 = 1;
    sub_2142FCF88();
    sub_2146DA388();
    *&v17 = v12;
    v19 = 2;
    sub_2146DA388();
    *&v17 = v11;
    v19 = 3;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_214245750@<X0>(uint64_t result@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  *(a4 + 8) = *a2;
  v9 = a3[1];
  *(a4 + 24) = *a3;
  *a4 = result;
  *(a4 + 40) = v9;
  *(a4 + 56) = a5;
  *(a4 + 64) = a6;
  *(a4 + 72) = a7;
  *(a4 + 80) = a8;
  *(a4 + 88) = a9;
  return result;
}

uint64_t sub_214245778()
{
  v1 = *v0;
  v2 = 0x506C61636F467369;
  v3 = 0x596D756D696E696DLL;
  if (v1 != 6)
  {
    v3 = 0x596D756D6978616DLL;
  }

  v4 = 0x586D756D696E696DLL;
  if (v1 != 4)
  {
    v4 = 0x586D756D6978616DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x726F6C6F63;
  if (v1 != 2)
  {
    v5 = 1936941421;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461636F6CLL;
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

uint64_t sub_21424586C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437DAA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214245894(uint64_t a1)
{
  v2 = sub_2143113DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142458D0(uint64_t a1)
{
  v2 = sub_2143113DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424590C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ABF8, &qword_2146F6108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143113DC();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v22) = 0;
    v11 = sub_2146DA178();
    v24 = 1;
    sub_214311430();
    sub_2146DA1C8();
    v12 = v22;
    v24 = 2;
    sub_2142FCE0C();
    sub_2146DA1C8();
    v20 = v22;
    v21 = v23;
    v24 = 3;
    sub_2143112E0();
    sub_2146DA1C8();
    v13 = v22;
    v24 = 4;
    sub_2146DA1C8();
    v14 = v22;
    v24 = 5;
    sub_2146DA1C8();
    v15 = v22;
    v24 = 6;
    sub_2146DA1C8();
    v17 = v22;
    v24 = 7;
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v18 = v22;
    *a2 = v11 & 1;
    *(a2 + 8) = v12;
    v19 = v21;
    *(a2 + 24) = v20;
    *(a2 + 40) = v19;
    *(a2 + 56) = v13;
    *(a2 + 64) = v14;
    *(a2 + 72) = v15;
    *(a2 + 80) = v17;
    *(a2 + 88) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214245C78(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC10, &qword_2146F6110);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v12 = *(v1 + 24);
  v20 = *(v1 + 40);
  v21 = v12;
  v14 = *(v1 + 7);
  v13 = *(v1 + 8);
  v16 = *(v1 + 9);
  v15 = *(v1 + 10);
  v17 = *(v1 + 11);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143113DC();
  sub_2146DAA28();
  LOBYTE(v22) = 0;
  sub_2146DA338();
  if (!v2)
  {
    *&v22 = v10;
    *(&v22 + 1) = v11;
    v24 = 1;
    sub_214311484();
    sub_2146DA388();
    v23 = v20;
    v22 = v21;
    v24 = 2;
    sub_2142FCF88();
    sub_2146DA388();
    *&v22 = v14;
    v24 = 3;
    sub_214311334();
    sub_2146DA388();
    *&v22 = v13;
    v24 = 4;
    sub_2146DA388();
    *&v22 = v16;
    v24 = 5;
    sub_2146DA388();
    *&v22 = v15;
    v24 = 6;
    sub_2146DA388();
    *&v22 = v17;
    v24 = 7;
    sub_2146DA388();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StyleSheet.Color.init(with:green:blue:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_214245FD4()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_21424601C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437DD34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214246044(uint64_t a1)
{
  v2 = sub_2143114D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214246080(uint64_t a1)
{
  v2 = sub_2143114D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Color.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC20, &qword_2146F6118);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143114D8();
  sub_2146DAA08();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_2146DA218();
    v18 = 1;
    v16 = sub_2146DA218();
    v17 = 2;
    v13 = sub_2146DA218();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StyleSheet.Color.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC30, &qword_2146F6120);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = v1[1];
  v12[3] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143114D8();
  sub_2146DAA28();
  v15 = 0;
  sub_2146DA3D8();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_2146DA3D8();
  v13 = 2;
  sub_2146DA3D8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t StyleSheet.Font.Specified.init(with:weight:style:variant:family:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(result + 8);
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  *a6 = *result;
  *(a6 + 8) = v6;
  *(a6 + 9) = v7;
  *(a6 + 10) = v8;
  *(a6 + 11) = v9;
  *(a6 + 16) = a5;
  return result;
}

uint64_t sub_21424649C()
{
  v1 = *v0;
  v2 = 1702521203;
  v3 = 0x656C797473;
  v4 = 0x746E6169726176;
  if (v1 != 3)
  {
    v4 = 0x796C696D6166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746867696577;
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

uint64_t sub_214246524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437DE48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21424654C(uint64_t a1)
{
  v2 = sub_21431152C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214246588(uint64_t a1)
{
  v2 = sub_21431152C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StyleSheet.Font.Specified.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC38, &qword_2146F6128);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431152C();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC48, &qword_2146F6130);
    v20 = 0;
    sub_214311580();
    sub_2146DA1C8();
    v11 = v17;
    v12 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC60, &qword_2146F6138);
    v20 = 1;
    sub_214311658();
    sub_2146DA1C8();
    v16 = v11;
    LODWORD(v11) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC78, &qword_2146F6140);
    v20 = 2;
    sub_214311730();
    sub_2146DA1C8();
    v19 = v11;
    LOBYTE(v11) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC90, &qword_2146F6148);
    v20 = 3;
    sub_214311808();
    sub_2146DA1C8();
    HIDWORD(v15) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    v20 = 4;
    sub_2142E1548();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    v14 = v17;
    *a2 = v16;
    *(a2 + 8) = v12;
    *(a2 + 9) = v19;
    *(a2 + 10) = v11;
    *(a2 + 11) = BYTE4(v15);
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StyleSheet.Font.Specified.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ACA8, &qword_2146F6150);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v24 = *(v1 + 9);
  v10 = *(v1 + 10);
  v19 = *(v1 + 11);
  v20 = v10;
  v18 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431152C();
  sub_2146DAA28();
  v22 = v8;
  v23 = v9;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC48, &qword_2146F6130);
  sub_2143118E0();
  v12 = v21;
  sub_2146DA388();
  if (!v12)
  {
    v14 = v19;
    v13 = v20;
    v15 = v18;
    LOBYTE(v22) = v24;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC60, &qword_2146F6138);
    sub_2143119B8();
    sub_2146DA388();
    LOBYTE(v22) = v13;
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC78, &qword_2146F6140);
    sub_214311A90();
    sub_2146DA388();
    LOBYTE(v22) = v14;
    v25 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AC90, &qword_2146F6148);
    sub_214311B68();
    sub_2146DA388();
    v22 = v15;
    v25 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904000, &unk_2146EA780);
    sub_2140459AC();
    sub_2146DA388();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SMSMessage.SMSFilteringSettings.init(with:smsFilterCapabilitiesOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_214246C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000214795800 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000214795820 == a2)
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

uint64_t sub_214246CE8(uint64_t a1)
{
  v2 = sub_214311C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214246D24(uint64_t a1)
{
  v2 = sub_214311C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214246DA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, void *a5@<X8>)
{
  v20 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_2146DAA08();
  if (!v5)
  {
    v14 = v19;
    v13 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    v23 = 0;
    sub_2142E12FC();
    sub_2146DA1C8();
    v15 = v21;
    v16 = v22;
    LOBYTE(v21) = 1;
    v17 = sub_2146DA228();
    (*(v14 + 8))(v11, v8);
    *v13 = v15;
    v13[1] = v16;
    v13[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214246FCC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v16 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v6 - 8);
  v7 = *(v18 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v11 = *v4;
  v10 = v4[1];
  v15 = v4[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16();

  sub_2146DAA28();
  v19 = v11;
  v20 = v10;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  v13 = v17;
  sub_2146DA388();

  if (!v13)
  {
    LOBYTE(v19) = 1;
    sub_2146DA3E8();
  }

  return (*(v18 + 8))(v9, v6);
}

uint64_t sub_2142471B0@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = *a1;
  sub_21447B280(&v25);
  v11 = v25;
  v10 = v26;
  v12 = v27;
  v13 = v28;
  v36[0] = a4;
  v36[1] = a5;
  v18 = v29;
  v38 = v29;
  v25 = 0xD000000000000029;
  v26 = 0x8000000214792530;
  v27 = 0xD00000000000001CLL;
  v28 = 0x800000021478A360;

  sub_213FDC9D0(v12, v13);
  v14 = v11(v36, &v38, &v25);
  if (v19)
  {
  }

  else
  {
    if (v14)
    {
      sub_213FDC6D0(v12, v13);

      result = sub_213FDC6D0(v12, v13);
      *a8 = v20;
      *(a8 + 8) = a2;
      *(a8 + 16) = a3;
      *(a8 + 24) = v11;
      *(a8 + 32) = v10;
      *(a8 + 40) = a4;
      *(a8 + 48) = a5;
      *(a8 + 56) = v18;
      *(a8 + 64) = a6;
      *(a8 + 72) = a7;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v16 = 0xD000000000000029;
    v16[1] = 0x8000000214792530;
    v16[2] = 0xD00000000000001CLL;
    v16[3] = 0x800000021478A360;
    swift_willThrow();
  }

  sub_213FDC6D0(v12, v13);
  LOBYTE(v25) = v20;
  v26 = a2;
  v27 = a3;
  v28 = v11;
  v29 = v10;
  v30 = v12;
  v31 = v13;
  v32 = v18;
  *v33 = *v37;
  *&v33[3] = *&v37[3];
  v34 = a6;
  v35 = a7;
  return sub_214311C94(&v25);
}

unint64_t sub_2142473BC()
{
  v1 = 0x54746E65746E6F63;
  v2 = 0x75426E6967756C70;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x7972616D6D7573;
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

uint64_t sub_214247450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437DFEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214247478(uint64_t a1)
{
  v2 = sub_214311CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142474B4(uint64_t a1)
{
  v2 = sub_214311CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142474F0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD08, &qword_2146F6168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311CE8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v45) = 0;
  sub_214311D3C();
  sub_2146DA1C8();
  v67 = a2;
  v11 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v45) = 1;
  sub_2142E12FC();
  sub_2146DA1C8();
  v43 = v11;
  v13 = v50;
  v44 = v51;
  LOBYTE(v45) = 2;
  sub_2146DA1C8();
  v41 = v13;
  v14 = v51;
  v42 = v50;
  v62 = 3;
  sub_2146DA1C8();
  v37 = v63;
  v36 = v64;
  sub_21447B280(&v50);
  v15 = v51;
  v40 = v50;
  v16 = v52;
  v17 = v53;
  v61[0] = v42;
  v61[1] = v14;
  v38 = v14;
  v39 = v54;
  LOBYTE(v45) = v54;
  v50 = 0xD000000000000029;
  v51 = 0x8000000214792530;
  v52 = 0xD00000000000001CLL;
  v53 = 0x800000021478A360;

  v35 = v16;
  v34 = v17;
  sub_213FDC9D0(v16, v17);
  v33 = v15;
  v18 = v40(v61, &v45, &v50);
  if (v18)
  {
    v19 = v35;
    v20 = v34;
    sub_213FDC6D0(v35, v34);

    (*(v6 + 8))(v9, v5);
    v21 = v33;

    sub_213FDC6D0(v19, v20);
    LOBYTE(v20) = v43;
    LOBYTE(v45) = v43;
    v22 = v41;
    *(&v45 + 1) = v41;
    v23 = v44;
    *&v46 = v44;
    *(&v46 + 1) = v40;
    *&v47 = v21;
    *(&v47 + 1) = v42;
    *&v48 = v38;
    BYTE8(v48) = v39;
    v24 = v37;
    v25 = v36;
    *&v49 = v37;
    *(&v49 + 1) = v36;
    v26 = v48;
    v27 = v67;
    v67[2] = v47;
    v27[3] = v26;
    v27[4] = v49;
    v28 = v46;
    *v27 = v45;
    v27[1] = v28;
    sub_214311D90(&v45, &v50);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v50) = v20;
    v51 = v22;
    v52 = v23;
    v53 = v40;
    v54 = v21;
    v55 = v42;
    v56 = v38;
    v57 = v39;
    v59 = v24;
    v60 = v25;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v29 = 0xD000000000000029;
    v29[1] = 0x8000000214792530;
    v29[2] = 0xD00000000000001CLL;
    v29[3] = 0x800000021478A360;
    swift_willThrow();

    (*(v6 + 8))(v9, v5);
    v30 = v33;

    v31 = v35;
    v32 = v34;
    sub_213FDC6D0(v35, v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    LOBYTE(v50) = v43;
    *(&v50 + 1) = *v66;
    HIDWORD(v50) = *&v66[3];
    v51 = v41;
    v52 = v44;
    v53 = v40;
    v54 = v30;
    v55 = v31;
    v56 = v32;
    v57 = v39;
    *v58 = *v65;
    *&v58[3] = *&v65[3];
    v59 = v37;
    v60 = v36;
  }

  return sub_214311C94(&v50);
}

uint64_t sub_214247B24(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD20, &qword_2146F6170);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v21 = *(v1 + 2);
  v22 = v10;
  v11 = *(v1 + 5);
  v19 = *(v1 + 6);
  v20 = v11;
  v12 = *(v1 + 9);
  v17 = *(v1 + 8);
  v18 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311CE8();
  sub_2146DAA28();
  LOBYTE(v23) = v9;
  v25 = 0;
  sub_214311DEC();
  sub_2146DA388();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = v19;
  v14 = v20;
  v23 = v22;
  v24 = v21;
  v25 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  sub_214045AC0();
  sub_2146DA388();
  if (v15 != 1)
  {
    v23 = v14;
    v24 = v15;
    v25 = 2;
    sub_2146DA388();
    v23 = v17;
    v24 = v18;
    v25 = 3;
    sub_2146DA388();
    return (*(v5 + 8))(v8, v4);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t CPIMMessage.ToHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143CDC34(&v15);
  v6 = v15;
  v7 = v16;
  v8 = v19;
  v14[0] = a1;
  v14[1] = a2;
  v20 = v19;
  v15 = 0xD000000000000029;
  v16 = 0x8000000214792560;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;
  v9 = v6;

  v10 = v9(v14, &v20, &v15);
  if (v3)
  {
  }

  else
  {
    if (v10)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v7;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000029;
    v12[1] = 0x8000000214792560;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214247F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000214797200 == a2)
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

uint64_t sub_214248020(uint64_t a1)
{
  v2 = sub_214311E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424805C(uint64_t a1)
{
  v2 = sub_214311E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.ToHeader.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD30, &qword_2146F6178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311E40();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v25 = a2;
  v14 = v13;
  v15 = v11;
  sub_2143CDC34(&v31);
  v17 = v31;
  v16 = v32;
  v26 = v15;
  v30[0] = v15;
  v30[1] = v14;
  v28 = v14;
  v29 = v34;
  v36 = v35;
  v37 = v35;
  v31 = 0xD000000000000029;
  v32 = 0x8000000214792560;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v27 = v16;
  v18 = v17(v30, &v37, &v31);
  v24 = v17;
  if (v18)
  {

    (*(v6 + 8))(v9, v5);

    v19 = v27;

    v20 = v25;
    *v25 = v24;
    v20[1] = v19;
    v21 = v28;
    v20[2] = v26;
    v20[3] = v21;
    *(v20 + 32) = v36;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v22 = 0xD000000000000029;
  v22[1] = 0x8000000214792560;
  v22[2] = 0xD00000000000001CLL;
  v22[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.FromHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143CDF98(&v15);
  v6 = v15;
  v7 = v16;
  v8 = v19;
  v14[0] = a1;
  v14[1] = a2;
  v20 = v19;
  v15 = 0xD000000000000026;
  v16 = 0x8000000214792590;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000021478A360;
  v9 = v6;

  v10 = v9(v14, &v20, &v15);
  if (v3)
  {
  }

  else
  {
    if (v10)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v7;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v8;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v12 = 0xD000000000000026;
    v12[1] = 0x8000000214792590;
    v12[2] = 0xD00000000000001CLL;
    v12[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_2142485D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5255656372756F73 && a2 == 0xEF676E6972745349)
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

uint64_t sub_214248660(uint64_t a1)
{
  v2 = sub_214311E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424869C(uint64_t a1)
{
  v2 = sub_214311E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.FromHeader.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD48, &qword_2146F6188);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311E94();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v25 = a2;
  v14 = v13;
  v15 = v11;
  sub_2143CDF98(&v31);
  v17 = v31;
  v16 = v32;
  v26 = v15;
  v30[0] = v15;
  v30[1] = v14;
  v28 = v14;
  v29 = v34;
  v36 = v35;
  v37 = v35;
  v31 = 0xD000000000000026;
  v32 = 0x8000000214792590;
  v33 = 0xD00000000000001CLL;
  v34 = 0x800000021478A360;

  v27 = v16;
  v18 = v17(v30, &v37, &v31);
  v24 = v17;
  if (v18)
  {

    (*(v6 + 8))(v9, v5);

    v19 = v27;

    v20 = v25;
    *v25 = v24;
    v20[1] = v19;
    v21 = v28;
    v20[2] = v26;
    v20[3] = v21;
    *(v20 + 32) = v36;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v22 = 0xD000000000000026;
  v22[1] = 0x8000000214792590;
  v22[2] = 0xD00000000000001CLL;
  v22[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214248B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D695465746164 && a2 == 0xE800000000000000)
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

uint64_t sub_214248B94(uint64_t a1)
{
  v2 = sub_214311EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214248BD0(uint64_t a1)
{
  v2 = sub_214311EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.DateTimeHeader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_2146D8B08();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD60, &qword_2146F6198);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311EE8();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = v16;
    v13 = v17;
    sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578]);
    sub_2146DA1C8();
    (*(v8 + 8))(v11, v7);
    (*(v14 + 32))(v13, v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.DateTimeHeader.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD70, &qword_2146F61A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311EE8();
  sub_2146DAA28();
  sub_2146D8B08();
  sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_214248FCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD70, &qword_2146F61A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311EE8();
  sub_2146DAA28();
  sub_2146D8B08();
  sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578]);
  sub_2146DA388();
  return (*(v3 + 8))(v6, v2);
}

uint64_t CPIMMessage.NamespaceHeader.init(with:namespaceURI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(type metadata accessor for CPIMMessage.NamespaceHeader(0) + 20);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v25 = v8;
  (*(v9 + 16))(a4 + v7, a3);
  sub_2143CE308(&v28);
  v11 = v28;
  v10 = v29;
  v12 = v30;
  v13 = v31;
  v14 = v32;
  *a4 = v28;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;
  v27[0] = a1;
  v33 = v14;
  v34 = v14;
  v27[1] = a2;
  v28 = 0xD000000000000026;
  v29 = 0x80000002147925C0;
  v30 = 0xD00000000000001CLL;
  v31 = 0x800000021478A360;

  sub_213FDC9D0(v12, v13);
  v15 = v11(v27, &v34, &v28);
  if (v26)
  {
  }

  else
  {
    if (v15)
    {
      sub_213FDC6D0(v12, v13);

      (*(v9 + 8))(a3, v25);
      v16 = *(a4 + 8);
      v17 = *(a4 + 16);
      v18 = *(a4 + 24);

      result = sub_213FDC6D0(v17, v18);
      *a4 = v11;
      *(a4 + 8) = v10;
      *(a4 + 16) = a1;
      *(a4 + 24) = a2;
      *(a4 + 32) = v33;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v20 = 0xD000000000000026;
    v20[1] = 0x80000002147925C0;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
  }

  (*(v9 + 8))(a3, v25);
  v21 = *(a4 + 8);
  v22 = *(a4 + 16);
  v23 = *(a4 + 24);

  sub_213FDC6D0(v22, v23);
  *a4 = v11;
  *(a4 + 8) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v33;
  return sub_21432887C(a4, type metadata accessor for CPIMMessage.NamespaceHeader);
}

uint64_t sub_2142493CC()
{
  if (*v0)
  {
    result = 0x63617073656D616ELL;
  }

  else
  {
    result = 0x66657250656D616ELL;
  }

  *v0;
  return result;
}

uint64_t sub_214249414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xEC00000049525565)
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

uint64_t sub_2142494FC(uint64_t a1)
{
  v2 = sub_214311F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214249538(uint64_t a1)
{
  v2 = sub_214311F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.NamespaceHeader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_2146D8958();
  v61 = *(v3 - 8);
  v4 = *(v61 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD78, &qword_2146F61A8);
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  v11 = type metadata accessor for CPIMMessage.NamespaceHeader(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_214311F3C();
  v17 = v62;
  sub_2146DAA08();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v62 = v6;
  v18 = v60;
  v19 = v61;
  v57 = v14;
  v58 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
  LOBYTE(v64[0]) = 0;
  sub_2142E12FC();
  v20 = v10;
  sub_2146DA1C8();
  v21 = v66;
  v56 = v65;
  LOBYTE(v65) = 1;
  sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260]);
  v22 = v62;
  v23 = v58;
  sub_2146DA1C8();
  v55 = v20;
  v52 = v7;
  v25 = v22;
  v26 = v57;
  (*(v19 + 16))(v57 + *(v11 + 20), v25, v23);
  sub_2143CE308(&v65);
  v28 = v65;
  v27 = v66;
  v29 = v67;
  v30 = v68;
  v31 = v69;
  *v26 = v65;
  v26[1] = v27;
  v26[2] = v29;
  v26[3] = v30;
  *(v26 + 32) = v31;
  v32 = v56;
  v64[0] = v56;
  v64[1] = v21;
  v70 = v31;
  v71 = v31;
  v65 = 0xD000000000000026;
  v66 = 0x80000002147925C0;
  v67 = 0xD00000000000001CLL;
  v68 = 0x800000021478A360;

  v53 = v30;
  v54 = v29;
  v33 = v30;
  v34 = v28;
  sub_213FDC9D0(v29, v33);
  v35 = v27;
  v36 = v34(v64, &v71, &v65);
  v51 = v21;
  v37 = v52;
  if (v36)
  {
    v38 = v32;
    sub_213FDC6D0(v54, v53);

    (*(v61 + 8))(v62, v58);
    (*(v18 + 8))(v55, v37);
    v39 = v57;
    v40 = v57[1];
    v41 = v57[2];
    v42 = v57[3];

    sub_213FDC6D0(v41, v42);
    *v39 = v34;
    *(v39 + 8) = v35;
    v43 = v51;
    *(v39 + 16) = v38;
    *(v39 + 24) = v43;
    *(v39 + 32) = v70;
    sub_214328704(v39, v59, type metadata accessor for CPIMMessage.NamespaceHeader);
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  sub_214031C4C();
  swift_allocError();
  *v44 = 0xD000000000000026;
  v44[1] = 0x80000002147925C0;
  v44[2] = 0xD00000000000001CLL;
  v44[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v61 + 8))(v62, v58);
  (*(v18 + 8))(v55, v37);
  v45 = v57;
  v46 = v57[1];
  v47 = v57[2];
  v48 = v57[3];

  sub_213FDC6D0(v47, v48);
  *v45 = v34;
  *(v45 + 8) = v35;
  v49 = v53;
  *(v45 + 16) = v54;
  *(v45 + 24) = v49;
  *(v45 + 32) = v70;
  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_21432887C(v45, type metadata accessor for CPIMMessage.NamespaceHeader);
}

uint64_t CPIMMessage.NamespaceHeader.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD88, &qword_2146F61B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311F3C();
  sub_2146DAA28();
  v11 = *(v3 + 24);
  if (v11 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v15 = *(v3 + 16);
    v16 = v11;
    v14[15] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    if (!v2)
    {
      v12 = *(type metadata accessor for CPIMMessage.NamespaceHeader(0) + 20);
      LOBYTE(v15) = 1;
      sub_2146D8958();
      sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260]);
      sub_2146DA388();
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t CPIMMessage.IMDNMessageIDHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2140676DC;
  *(v7 + 24) = 0;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v16);
  v9 = v16;
  v8 = v17;
  v10 = v20;
  v15[0] = a1;
  v15[1] = a2;
  v21 = v20;
  v16 = 0xD000000000000029;
  v17 = 0x80000002147925F0;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  v11 = v9(v15, &v21, &v16);
  if (v3)
  {
  }

  else
  {
    if (v11)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v8;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000029;
    v13[1] = 0x80000002147925F0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_214249F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
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

uint64_t sub_214249FDC(uint64_t a1)
{
  v2 = sub_214311F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424A018(uint64_t a1)
{
  v2 = sub_214311F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.IMDNMessageIDHeader.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AD90, &qword_2146F61B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311F90();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v27 = a2;
  v31 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2140676DC;
  *(v16 + 24) = 0;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v33);
  v18 = v33;
  v17 = v34;
  v32[0] = v31;
  v32[1] = v14;
  v29 = v36;
  v30 = v14;
  v38 = v37;
  v39 = v37;
  v33 = 0xD000000000000029;
  v34 = 0x80000002147925F0;
  v28 = 0x80000002147925F0;
  v35 = 0xD00000000000001CLL;
  v36 = 0x800000021478A360;

  v19 = v18;
  v20 = v18(v32, &v39, &v33);
  v21 = v38;
  v26 = v19;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    v22 = v27;
    *v27 = v26;
    v22[1] = v17;
    v23 = v30;
    v22[2] = v31;
    v22[3] = v23;
    *(v22 + 32) = v21;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  v24 = v28;
  *v25 = 0xD000000000000029;
  v25[1] = v24;
  v25[2] = 0xD00000000000001CLL;
  v25[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21424A44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D65726975716572 && a2 == 0xEC00000073746E65)
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

uint64_t sub_21424A4D8(uint64_t a1)
{
  v2 = sub_214311FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424A514(uint64_t a1)
{
  v2 = sub_214311FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.IMDNDispositionNotificationHeader.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ADA8, &qword_2146F61C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311FE4();
  sub_2146DAA08();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ADB8, &qword_2146F61D0);
    sub_214312038();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.IMDNDispositionNotificationHeader.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ADD0, &qword_2146F61D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214311FE4();

  sub_2146DAA28();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ADB8, &qword_2146F61D0);
  sub_214312110();
  sub_2146DA388();

  return (*(v4 + 8))(v7, v3);
}

uint64_t CPIMMessage.MlsDerivedContentSignatureHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = sub_213FDC8D0;
  *(v7 + 16) = sub_21438F678;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD000000000000044;
  v18 = 0x8000000214792620;
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
    *v14 = 0xD000000000000044;
    v14[1] = 0x8000000214792620;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21424AABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000214797220 == a2)
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

uint64_t sub_21424AB50(uint64_t a1)
{
  v2 = sub_2143121E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424AB8C(uint64_t a1)
{
  v2 = sub_2143121E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.MlsDerivedContentSignatureHeader.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90ADE8, &qword_2146F61E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143121E8();
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
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = sub_213FDC8D0;
  *(v15 + 16) = sub_21438F678;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v31);
  v18 = v31;
  v17 = v32;
  v30[0] = v28;
  v30[1] = v29;
  v36 = v35;
  v37 = v35;
  v31 = 0xD000000000000044;
  v32 = 0x8000000214792620;
  v26 = 0x8000000214792620;
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
  *v23 = 0xD000000000000044;
  v23[1] = v20;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.MlsEpochAuthenticatorHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = sub_213FDC8D0;
  *(v7 + 16) = sub_21438F678;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v17);
  v10 = v17;
  v9 = v18;
  v11 = v21;
  v16[0] = a1;
  v16[1] = a2;
  v22 = v21;
  v17 = 0xD00000000000003ALL;
  v18 = 0x8000000214792670;
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
    *v14 = 0xD00000000000003ALL;
    v14[1] = 0x8000000214792670;
    v14[2] = 0xD00000000000001CLL;
    v14[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21424B210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000214797240 == a2)
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

uint64_t sub_21424B2A4(uint64_t a1)
{
  v2 = sub_21431223C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424B2E0(uint64_t a1)
{
  v2 = sub_21431223C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.MlsEpochAuthenticatorHeader.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE00, &qword_2146F61F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431223C();
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
  v16[3] = 0;
  v16[4] = 0;
  v16[2] = sub_213FDC8D0;
  *(v15 + 16) = sub_21438F678;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214042B80(inited, &v31);
  v18 = v31;
  v17 = v32;
  v30[0] = v28;
  v30[1] = v29;
  v36 = v35;
  v37 = v35;
  v31 = 0xD00000000000003ALL;
  v32 = 0x8000000214792670;
  v26 = 0x8000000214792670;
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
  *v23 = 0xD00000000000003ALL;
  v23[1] = v20;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.MlsOriginalMessageIdHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2140676DC;
  *(v7 + 24) = 0;
  *(inited + 32) = v7;
  sub_214042B80(inited, &v16);
  v9 = v16;
  v8 = v17;
  v10 = v20;
  v15[0] = a1;
  v15[1] = a2;
  v21 = v20;
  v16 = 0xD000000000000038;
  v17 = 0x80000002147926B0;
  v18 = 0xD00000000000001CLL;
  v19 = 0x800000021478A360;

  v11 = v9(v15, &v21, &v16);
  if (v3)
  {
  }

  else
  {
    if (v11)
    {

      result = swift_bridgeObjectRelease_n();
      *a3 = v9;
      *(a3 + 8) = v8;
      *(a3 + 16) = a1;
      *(a3 + 24) = a2;
      *(a3 + 32) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000038;
    v13[1] = 0x80000002147926B0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21424B934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000214797260 == a2)
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

uint64_t sub_21424B9C8(uint64_t a1)
{
  v2 = sub_2143122A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424BA04(uint64_t a1)
{
  v2 = sub_2143122A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.MlsOriginalMessageIdHeader.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE18, &qword_2146F6200);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143122A4();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA168();
  v27 = a2;
  v31 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2140676DC;
  *(v16 + 24) = 0;
  *(inited + 32) = v16;
  sub_214042B80(inited, &v33);
  v18 = v33;
  v17 = v34;
  v32[0] = v31;
  v32[1] = v14;
  v29 = v36;
  v30 = v14;
  v38 = v37;
  v39 = v37;
  v33 = 0xD000000000000038;
  v34 = 0x80000002147926B0;
  v28 = 0x80000002147926B0;
  v35 = 0xD00000000000001CLL;
  v36 = 0x800000021478A360;

  v19 = v18;
  v20 = v18(v32, &v39, &v33);
  v21 = v38;
  v26 = v19;
  if (v20)
  {

    (*(v6 + 8))(v9, v5);

    v22 = v27;
    *v27 = v26;
    v22[1] = v17;
    v23 = v30;
    v22[2] = v31;
    v22[3] = v23;
    *(v22 + 32) = v21;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  v24 = v28;
  *v25 = 0xD000000000000038;
  v25[1] = v24;
  v25[2] = 0xD00000000000001CLL;
  v25[3] = 0x800000021478A360;
  swift_willThrow();

  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.MlsEraIdHeader.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2146ED240;
  *(v6 + 16) = sub_21438F468;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  sub_21404328C(inited, &v14);
  v9 = v14;
  v8 = v15;
  v10 = BYTE1(v17);
  v19 = a1;
  v18 = BYTE1(v17);
  v14 = 0xD000000000000020;
  v15 = 0x80000002147926F0;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  v11 = v9(&v19, &v18, &v14);
  if (v2)
  {
  }

  else
  {
    if (v11)
    {

      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = a1;
      *(a2 + 24) = 0;
      *(a2 + 25) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000020;
    v13[1] = 0x80000002147926F0;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21424C008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6449617265 && a2 == 0xE500000000000000)
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

uint64_t sub_21424C08C(uint64_t a1)
{
  v2 = sub_2143122F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424C0C8(uint64_t a1)
{
  v2 = sub_2143122F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.MlsEraIdHeader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *, char *, unint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE30, &qword_2146F6210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143122F8();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA1A8();
  v26 = a2;
  v27 = v11;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146ED240;
  *(v15 + 16) = sub_21438F468;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_21404328C(inited, &v30);
  v18 = v30;
  v17 = v31;
  v35 = v13;
  v28 = BYTE1(v33);
  v34 = BYTE1(v33);
  v29 = 0x80000002147926F0;
  v30 = 0xD000000000000020;
  v31 = 0x80000002147926F0;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v19 = v18(&v35, &v34, &v30);
  v25 = v18;
  v20 = v29;
  v21 = v28;
  if (v19)
  {

    (*(v6 + 8))(v9, v5);

    v22 = v26;
    *v26 = v25;
    v22[1] = v17;
    v22[2] = v27;
    *(v22 + 24) = 0;
    *(v22 + 25) = v21;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0xD000000000000020;
  v23[1] = v20;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();
  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21424C520()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 0x54746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_21424C564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_21424C644(uint64_t a1)
{
  v2 = sub_21431234C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424C680(uint64_t a1)
{
  v2 = sub_21431234C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CPIMMessage.EncapsulatedMessage.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE48, &qword_2146F6220);
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431234C();
  sub_2146DAA08();
  if (!v2)
  {
    v13 = v8;
    v22 = 0;
    sub_2143123A0();
    v14 = v19;
    sub_2146DA1C8();
    v20 = v23;
    v21 = 1;
    sub_214328930(&qword_27C90AE60, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    sub_2146DA1C8();
    (*(v13 + 8))(v11, v14);
    v15 = type metadata accessor for CPIMMessage.EncapsulatedMessage(0);
    v16 = v18;
    sub_214328704(v7, &v18[*(v15 + 20)], type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    *v16 = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CPIMMessage.EncapsulatedMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE68, &qword_2146F6228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431234C();
  sub_2146DAA28();
  v13[15] = *v3;
  v13[14] = 0;
  sub_2143123F4();
  sub_2146DA388();
  if (!v2)
  {
    v11 = *(type metadata accessor for CPIMMessage.EncapsulatedMessage(0) + 20);
    v13[13] = 1;
    type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
    sub_214328930(&qword_27C90AE78, type metadata accessor for CPIMMessage.EncapsulatedMessage.Content);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21424CB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2146ED240;
  *(v6 + 16) = sub_21438F468;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  sub_21404328C(inited, &v14);
  v9 = v14;
  v8 = v15;
  v10 = BYTE1(v17);
  v19 = a1;
  v18 = BYTE1(v17);
  v14 = 0xD000000000000028;
  v15 = 0x8000000214792720;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  v11 = v9(&v19, &v18, &v14);
  if (v2)
  {
  }

  else
  {
    if (v11)
    {

      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = a1;
      *(a2 + 24) = 0;
      *(a2 + 25) = v10;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    *v13 = 0xD000000000000028;
    v13[1] = 0x8000000214792720;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
  }
}

uint64_t sub_21424CD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F43)
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

uint64_t sub_21424CDCC(uint64_t a1)
{
  v2 = sub_214312448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424CE08(uint64_t a1)
{
  v2 = sub_214312448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424CE44@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *, char *, unint64_t *)@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE80, &qword_2146F6230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214312448();
  sub_2146DAA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2146DA1A8();
  v26 = a2;
  v27 = v11;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2146ED240;
  *(v15 + 16) = sub_21438F468;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_21404328C(inited, &v30);
  v18 = v30;
  v17 = v31;
  v35 = v13;
  v28 = BYTE1(v33);
  v34 = BYTE1(v33);
  v29 = 0x8000000214792720;
  v30 = 0xD000000000000028;
  v31 = 0x8000000214792720;
  v32 = 0xD00000000000001CLL;
  v33 = 0x800000021478A360;

  v19 = v18(&v35, &v34, &v30);
  v25 = v18;
  v20 = v29;
  v21 = v28;
  if (v19)
  {

    (*(v6 + 8))(v9, v5);

    v22 = v26;
    *v26 = v25;
    v22[1] = v17;
    v22[2] = v27;
    *(v22 + 24) = 0;
    *(v22 + 25) = v21;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_214031C4C();
  swift_allocError();
  *v23 = 0xD000000000000028;
  v23[1] = v20;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x800000021478A360;
  swift_willThrow();
  (*(v6 + 8))(v9, v5);

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21424D1F0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v14 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  sub_2146DAA28();
  if (v11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_2146DA368();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_21424D3D0(uint64_t a1)
{
  v2 = sub_21431249C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21424D40C(uint64_t a1)
{
  v2 = sub_21431249C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21424D448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90AE98, &qword_2146F6240);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431249C();
  sub_2146DAA08();
  if (!v2)
  {
    sub_2143124F0();
    sub_2146DA1C8();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}