uint64_t sub_1BE4D4934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27[0] = a3;
  v27[1] = a4;
  v6 = *(a2 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - v11;
  v13 = sub_1BE4BF11C(&qword_1EBDABF38, &qword_1BE54E4D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v27 - v18;
  v20 = type metadata accessor for OnboardingSheetView();
  v21 = sub_1BE4D4BB0(v20, v19);
  v22 = a1 + *(v20 + 36);
  v23 = *(v22 + 8);
  (*v22)(v21);
  v24 = v6[2];
  v24(v12, v10, a2);
  v25 = v6[1];
  v25(v10, a2);
  sub_1BE4D9250(v19, v17, &qword_1EBDABF38, &qword_1BE54E4D8);
  v29[0] = v17;
  v24(v10, v12, a2);
  v29[1] = v10;
  v28[0] = v13;
  v28[1] = a2;
  v27[2] = sub_1BE4D8E2C();
  v27[3] = v27[0];
  sub_1BE4D13E8(v29, 2, v28);
  v25(v12, a2);
  sub_1BE4D0E58(v19, &qword_1EBDABF38, &qword_1BE54E4D8);
  v25(v10, a2);
  return sub_1BE4D0E58(v17, &qword_1EBDABF38, &qword_1BE54E4D8);
}

uint64_t sub_1BE4D4BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE54BB1C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_1BE4BF11C(&qword_1EBDAC210, &qword_1BE54E9D8);
  sub_1BE4D5190(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
  *(a2 + *(sub_1BE4BF11C(&qword_1EBDAC1F8, &qword_1BE54E9C8) + 36)) = 256;
  v6 = sub_1BE54BE5C();
  sub_1BE54B59C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(sub_1BE4BF11C(&qword_1EBDAC1E8, &qword_1BE54E9C0) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_1BE54BE6C();
  sub_1BE54B59C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = a2 + *(sub_1BE4BF11C(&qword_1EBDAC1D8, &qword_1BE54E9B8) + 36);
  *v25 = v16;
  *(v25 + 8) = v18;
  *(v25 + 16) = v20;
  *(v25 + 24) = v22;
  *(v25 + 32) = v24;
  *(v25 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v27 = a2 + *(sub_1BE4BF11C(&qword_1EBDAC1C8, &qword_1BE54E9B0) + 36);
  *v27 = KeyPath;
  *(v27 + 8) = 0;
  v28 = swift_getKeyPath();
  result = sub_1BE4BF11C(&qword_1EBDABF38, &qword_1BE54E4D8);
  v30 = a2 + *(result + 36);
  *v30 = v28;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  return result;
}

uint64_t sub_1BE4D4D44(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for OnboardingSheetView();
  return sub_1BE4D20C4(v2);
}

uint64_t sub_1BE4D4DA0()
{
  v0 = sub_1BE54BE2C();
  v1 = sub_1BE54BE1C();
  sub_1BE54BE1C();
  if (sub_1BE54BE1C() == v0)
  {
    return v1;
  }

  return sub_1BE54BE1C();
}

uint64_t sub_1BE4D4E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v10 = type metadata accessor for OnboardingSheetView();
  v11 = sub_1BE4C7500(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v21 - v16;
  (*(v13 + 16))(&v21 - v16, a1, v10);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  result = (*(v13 + 32))(v19 + v18, v17, v10);
  *a5 = a4;
  a5[1] = v19;
  return result;
}

uint64_t sub_1BE4D4F34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v41 = a4;
  v42 = a5;
  v39 = a1;
  v40 = a3;
  v8 = type metadata accessor for OnboardingSheetView();
  v9 = sub_1BE4C7500(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v39 - v14;
  v16 = sub_1BE54BCCC();
  v17 = sub_1BE4C7500(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1BE4C757C();
  v24 = v23 - v22;
  sub_1BE54BD2C();
  sub_1BE54B6BC();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  (*(v19 + 8))(v24, v16);
  v33 = sub_1BE54C1BC();
  v43.origin.x = v26;
  v43.origin.y = v28;
  v43.size.width = v30;
  v43.size.height = v32;
  MaxY = CGRectGetMaxY(v43);
  (*(v11 + 16))(v15, v39, v8);
  v35 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v36 = swift_allocObject();
  v37 = v40;
  *(v36 + 16) = a2;
  *(v36 + 24) = v37;
  result = (*(v11 + 32))(v36 + v35, v15, v8);
  *a6 = v33;
  *(a6 + 1) = MaxY;
  a6[2] = v42;
  a6[3] = v36;
  return result;
}

uint64_t sub_1BE4D514C(uint64_t *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for OnboardingSheetView();
  return sub_1BE4D2308(v2);
}

uint64_t sub_1BE4D5190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a3;
  v94 = a2;
  v6 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v84 - v8;
  v10 = sub_1BE54ADAC();
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v84 - v15;
  v16 = sub_1BE4BF11C(&qword_1EBDAC218, &qword_1BE54EA10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v84 - v18;
  v20 = sub_1BE4BF11C(&qword_1EBDAC220, &qword_1BE54EA18);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v97 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v84 - v24;
  v26 = *(a1 + 8);
  if (v26)
  {
    v27 = *(a1 + 8);

    *v19 = sub_1BE54BA4C();
    *(v19 + 1) = 0;
    v19[16] = 1;
    v28 = sub_1BE4BF11C(&qword_1EBDAC238, &unk_1BE54EA30);
    sub_1BE4D5908(v26, &v19[*(v28 + 44)]);
    v29 = sub_1BE54BE6C();
    sub_1BE54B59C();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = &v19[*(v16 + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    sub_1BE4D9204(v19, v25, &qword_1EBDAC218, &qword_1BE54EA10);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = v25;
  sub_1BE4C63F8(v25, v39, 1, v16);
  v95 = sub_1BE54BA4C();
  sub_1BE4D5B2C(a1, &v99);
  v92 = v100;
  v93 = v99;
  v86 = v103;
  v96 = v104;
  v120 = 1;
  LODWORD(v94) = v101;
  v119 = v101;
  v87 = v105;
  v118 = v105;
  v91 = sub_1BE54BE5C();
  sub_1BE54B59C();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  LOBYTE(v99) = 0;
  v49 = type metadata accessor for OnboardingSheetSetup(0);
  sub_1BE4D9250(a1 + *(v49 + 28), v9, &qword_1EBDABE68, &qword_1BE54E470);
  v50 = v89;
  v51 = sub_1BE4C63BC(v9, 1, v89);
  v90 = v25;
  if (v51 == 1)
  {
    sub_1BE4D0E58(v9, &qword_1EBDABE68, &qword_1BE54E470);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = v88;
    v57 = v85;
    (*(v88 + 32))(v85, v9, v50);
    (*(v56 + 16))(v14, v57, v50);
    v58 = sub_1BE54BF7C();
    v60 = v59;
    v62 = v61;
    sub_1BE54BEFC();
    v63 = sub_1BE54BF5C();
    v65 = v64;
    v84 = a4;
    v67 = v66;

    sub_1BE4C68C8(v58, v60, v62 & 1);

    sub_1BE54BECC();
    v68 = sub_1BE54BF3C();
    v70 = v69;
    LOBYTE(v57) = v71;
    sub_1BE4C68C8(v63, v65, v67 & 1);

    LODWORD(v99) = sub_1BE54BCFC();
    v52 = sub_1BE54BF4C();
    v53 = v72;
    v74 = v73;
    v55 = v75;
    v76 = v68;
    v40 = v90;
    sub_1BE4C68C8(v76, v70, v57 & 1);

    (*(v88 + 8))(v85, v89);
    v54 = v74 & 1;
    a4 = v84;
    sub_1BE4D91B0(v52, v53, v54);
  }

  v77 = v97;
  sub_1BE4D9250(v40, v97, &qword_1EBDAC220, &qword_1BE54EA18);
  sub_1BE4D9250(v77, a4, &qword_1EBDAC220, &qword_1BE54EA18);
  v78 = sub_1BE4BF11C(&qword_1EBDAC228, &qword_1BE54EA20);
  v79 = *(v78 + 48);
  v98[0] = v95;
  v98[1] = 0;
  LOBYTE(v98[2]) = 1;
  *(&v98[2] + 1) = v124[0];
  HIDWORD(v98[2]) = *(v124 + 3);
  v98[3] = v93;
  v98[4] = v92;
  LOBYTE(v98[5]) = v94;
  *(&v98[5] + 1) = *v123;
  HIDWORD(v98[5]) = *&v123[3];
  v80 = v86;
  v98[6] = v86;
  v98[7] = v96;
  v81 = v87;
  LOBYTE(v98[8]) = v87;
  HIDWORD(v98[8]) = *&v122[3];
  *(&v98[8] + 1) = *v122;
  LOBYTE(v98[9]) = v91;
  HIDWORD(v98[9]) = *&v121[3];
  *(&v98[9] + 1) = *v121;
  v98[10] = v42;
  v98[11] = v44;
  v98[12] = v46;
  v98[13] = v48;
  LOBYTE(v98[14]) = 0;
  memcpy((a4 + v79), v98, 0x71uLL);
  v82 = (a4 + *(v78 + 64));
  sub_1BE4D9250(v98, &v99, &qword_1EBDAC230, &qword_1BE54EA28);
  sub_1BE4D916C(v52, v53, v54, v55);
  sub_1BE4D91C0(v52, v53, v54, v55);
  *v82 = v52;
  v82[1] = v53;
  v82[2] = v54;
  v82[3] = v55;
  sub_1BE4D0E58(v90, &qword_1EBDAC220, &qword_1BE54EA18);
  sub_1BE4D91C0(v52, v53, v54, v55);
  v99 = v95;
  v100 = 0;
  v101 = 1;
  *v102 = v124[0];
  *&v102[3] = *(v124 + 3);
  v103 = v93;
  v104 = v92;
  v105 = v94;
  *v106 = *v123;
  *&v106[3] = *&v123[3];
  v107 = v80;
  v108 = v96;
  v109 = v81;
  *&v110[3] = *&v122[3];
  *v110 = *v122;
  v111 = v91;
  *&v112[3] = *&v121[3];
  *v112 = *v121;
  v113 = v42;
  v114 = v44;
  v115 = v46;
  v116 = v48;
  v117 = 0;
  sub_1BE4D0E58(&v99, &qword_1EBDAC230, &qword_1BE54EA28);
  return sub_1BE4D0E58(v97, &qword_1EBDAC220, &qword_1BE54EA18);
}

uint64_t sub_1BE4D5908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAC240, &qword_1BE5509B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_1BE4BF11C(&qword_1EBDAC248, &qword_1BE54EA40);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v23 - v14);
  v16 = sub_1BE54BEAC();
  sub_1BE4C63F8(v7, 1, 1, v16);
  sub_1BE54BEEC();
  sub_1BE4D0E58(v7, &qword_1EBDAC240, &qword_1BE5509B0);
  sub_1BE54BECC();
  v17 = sub_1BE54BF1C();

  KeyPath = swift_getKeyPath();
  v19 = *(v9 + 44);

  sub_1BE54B75C();
  *v15 = a1;
  v15[1] = KeyPath;
  v15[2] = v17;
  sub_1BE4D9250(v15, v13, &qword_1EBDAC248, &qword_1BE54EA40);
  *a2 = 0;
  *(a2 + 8) = 1;
  v20 = sub_1BE4BF11C(&qword_1EBDAC250, &qword_1BE54EA78);
  sub_1BE4D9250(v13, a2 + *(v20 + 48), &qword_1EBDAC248, &qword_1BE54EA40);
  v21 = a2 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_1BE4D0E58(v15, &qword_1EBDAC248, &qword_1BE54EA40);
  return sub_1BE4D0E58(v13, &qword_1EBDAC248, &qword_1BE54EA40);
}

uint64_t sub_1BE4D5B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54ADAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OnboardingSheetSetup(0);
  (*(v5 + 16))(v8, a1 + *(v9 + 24), v4);
  v10 = sub_1BE54BF7C();
  v12 = v11;
  LOBYTE(v8) = v13;
  sub_1BE54BEFC();
  sub_1BE54BEBC();
  sub_1BE54BF1C();

  v14 = sub_1BE54BF5C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_1BE4C68C8(v10, v12, v8 & 1);

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_1BE4D91B0(v14, v16, v18 & 1);

  sub_1BE4C68C8(v14, v16, v18 & 1);
}

uint64_t sub_1BE4D5CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a4;
  v7 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = &v76 - v9;
  v10 = sub_1BE54ADAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v83 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v76 - v16;
  v18 = *(a2 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x1EEE9AC00](v15);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v76 - v23;
  v89 = a3;
  v25 = *(type metadata accessor for OnboardingSheetView() + 36);
  v78 = a1;
  v26 = a1 + v25;
  v27 = *(v26 + 8);
  (*v26)();
  v28 = v18[2];
  v93 = v24;
  v82 = v18 + 2;
  v81 = v28;
  (v28)(v24, v22, a2);
  v29 = v18[1];
  v94 = v22;
  v92 = a2;
  v90 = v18 + 1;
  v88 = v29;
  v29(v22, a2);
  v30 = type metadata accessor for OnboardingSheetSetup(0);
  v31 = *(v30 + 24);
  v86 = v11;
  v77 = *(v11 + 16);
  v77(v17, a1 + v31, v10);
  v32 = sub_1BE54BF7C();
  v34 = v33;
  v36 = v35;
  sub_1BE54BF0C();
  sub_1BE54BEDC();
  sub_1BE54BF1C();

  v85 = sub_1BE54BF5C();
  v84 = v37;
  v80 = v38;
  v87 = v39;

  v40 = v32;
  v41 = v79;
  sub_1BE4C68C8(v40, v34, v36 & 1);

  sub_1BE4D9250(v78 + *(v30 + 28), v41, &qword_1EBDABE68, &qword_1BE54E470);
  if (sub_1BE4C63BC(v41, 1, v10) == 1)
  {
    sub_1BE4D0E58(v41, &qword_1EBDABE68, &qword_1BE54E470);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v46 = *(v86 + 32);
    v47 = v83;
    v76 = v10;
    v46(v83, v41, v10);
    v77(v17, v47, v10);
    v48 = sub_1BE54BF7C();
    v50 = v49;
    v52 = v51;
    sub_1BE54BF0C();
    sub_1BE54BECC();
    sub_1BE54BF1C();

    v53 = sub_1BE54BF5C();
    v55 = v54;
    v57 = v56;

    sub_1BE4C68C8(v48, v50, v52 & 1);

    LODWORD(v113[0]) = sub_1BE54BCFC();
    v58 = sub_1BE54BF4C();
    v60 = v59;
    LOBYTE(v48) = v61;
    v63 = v62;
    sub_1BE4C68C8(v53, v55, v57 & 1);

    (*(v86 + 8))(v83, v76);
    v42 = v58;
    v64 = v58;
    v43 = v60;
    v44 = v48 & 1;
    sub_1BE4D91B0(v64, v60, v48 & 1);
    v45 = v63;
  }

  v111 = 0;
  v112 = 1;
  v113[0] = &v111;
  v65 = v94;
  v66 = v92;
  v81();
  v67 = v85;
  v68 = v84;
  v107 = v85;
  v108 = v84;
  v69 = v80 & 1;
  v109 = v80 & 1;
  v110 = v87;
  v113[1] = v65;
  v113[2] = &v107;
  v103 = v42;
  v104 = v43;
  v86 = v44;
  v105 = v44;
  v106 = v45;
  v70 = v45;
  v101 = 0;
  v102 = 1;
  v113[3] = &v103;
  v113[4] = &v101;
  sub_1BE4D91B0(v85, v84, v80 & 1);

  v71 = MEMORY[0x1E6981840];
  v100[0] = MEMORY[0x1E6981840];
  v100[1] = v66;
  v100[2] = MEMORY[0x1E6981148];
  v72 = sub_1BE4BF11C(&qword_1EBDABB60, &unk_1BE54E4F0);
  v73 = MEMORY[0x1E6981838];
  v100[3] = v72;
  v100[4] = v71;
  v95 = MEMORY[0x1E6981838];
  v96 = v89;
  v97 = MEMORY[0x1E6981138];
  v98 = sub_1BE4C5F2C();
  v99 = v73;
  sub_1BE4D13E8(v113, 5, v100);
  sub_1BE4D91C0(v42, v43, v86, v70);
  sub_1BE4C68C8(v67, v68, v69);

  v74 = v88;
  v88(v93, v66);
  sub_1BE4D91C0(v103, v104, v105, v106);
  sub_1BE4C68C8(v107, v108, v109);

  return v74(v94, v66);
}

void *sub_1BE4D6420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BE4BF11C(&qword_1EBDAC138, &qword_1BE54E968);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &__src[-v9];
  v11 = sub_1BE4BF11C(&qword_1EBDAC128, &qword_1BE54E960);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &__src[-v14];
  *v10 = sub_1BE54BB0C();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v16 = sub_1BE4BF11C(&qword_1EBDAC260, &qword_1BE54EA88);
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  sub_1BE4D6788(v3, &v10[*(v16 + 44)]);
  KeyPath = swift_getKeyPath();
  v20 = &v10[*(sub_1BE4BF11C(&qword_1EBDAC158, &qword_1BE54E978) + 36)];
  *v20 = KeyPath;
  *(v20 + 1) = 1;
  v20[16] = 0;
  LOBYTE(KeyPath) = sub_1BE54BE5C();
  sub_1BE54B59C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v10[*(sub_1BE4BF11C(&qword_1EBDAC148, &qword_1BE54E970) + 36)];
  *v29 = KeyPath;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  LOBYTE(KeyPath) = sub_1BE54BE3C();
  sub_1BE54B59C();
  v30 = &v10[*(v7 + 44)];
  *v30 = KeyPath;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  LOBYTE(v7) = sub_1BE54BE6C();
  v35 = [objc_opt_self() currentDevice];
  [v35 userInterfaceIdiom];

  sub_1BE54B59C();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_1BE4D9204(v10, v15, &qword_1EBDAC138, &qword_1BE54E968);
  v44 = &v15[*(v12 + 44)];
  *v44 = v7;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = *(v3 + *(a1 + 52));
  sub_1BE54C39C();
  sub_1BE54B7FC();
  sub_1BE4D9204(v15, a2, &qword_1EBDAC128, &qword_1BE54E960);
  v46 = sub_1BE4BF11C(&qword_1EBDAC118, &qword_1BE54E958);
  return memcpy((a2 + *(v46 + 36)), __src, 0x70uLL);
}

uint64_t sub_1BE4D6788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for OnboardingButton(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE4BF11C(&qword_1EBDABF18, &qword_1BE54E4C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  v14 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  v21 = sub_1BE4BF11C(&qword_1EBDAC268, &qword_1BE54EA90);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v55 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v54 = &v51 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v51 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v51 - v30;
  v53 = type metadata accessor for OnboardingSheetSetup(0);
  sub_1BE4D9250(a1 + *(v53 + 32), v13, &qword_1EBDABF18, &qword_1BE54E4C0);
  if (sub_1BE4C63BC(v13, 1, v14) == 1)
  {
    sub_1BE4D0E58(v13, &qword_1EBDABF18, &qword_1BE54E4C0);
    v32 = 1;
  }

  else
  {
    sub_1BE4D224C(v13, v20, type metadata accessor for OnboardingSheetSetup.ButtonSetup);
    v33 = sub_1BE54ADAC();
    (*(*(v33 - 8) + 16))(v6, v20, v33);
    v34 = &v20[*(v14 + 20)];
    v52 = v31;
    v35 = v29;
    v36 = a1;
    v37 = *v34;
    v38 = *(v34 + 1);

    sub_1BE4D21F0(v20);
    v6[*(v3 + 20)] = 1;
    v39 = &v6[*(v3 + 24)];
    *v39 = v37;
    *(v39 + 1) = v38;
    a1 = v36;
    v29 = v35;
    v31 = v52;
    sub_1BE4D224C(v6, v52, type metadata accessor for OnboardingButton);
    v32 = 0;
  }

  sub_1BE4C63F8(v31, v32, 1, v3);
  sub_1BE4D9250(a1 + *(v53 + 36), v11, &qword_1EBDABF18, &qword_1BE54E4C0);
  if (sub_1BE4C63BC(v11, 1, v14) == 1)
  {
    sub_1BE4D0E58(v11, &qword_1EBDABF18, &qword_1BE54E4C0);
    v40 = 1;
  }

  else
  {
    sub_1BE4D224C(v11, v18, type metadata accessor for OnboardingSheetSetup.ButtonSetup);
    v41 = sub_1BE54ADAC();
    (*(*(v41 - 8) + 16))(v6, v18, v41);
    v42 = &v18[*(v14 + 20)];
    v43 = *v42;
    v44 = *(v42 + 1);

    sub_1BE4D21F0(v18);
    v6[*(v3 + 20)] = 0;
    v45 = &v6[*(v3 + 24)];
    *v45 = v43;
    *(v45 + 1) = v44;
    sub_1BE4D224C(v6, v29, type metadata accessor for OnboardingButton);
    v40 = 0;
  }

  sub_1BE4C63F8(v29, v40, 1, v3);
  v46 = v54;
  sub_1BE4D9250(v31, v54, &qword_1EBDAC268, &qword_1BE54EA90);
  v47 = v55;
  sub_1BE4D9250(v29, v55, &qword_1EBDAC268, &qword_1BE54EA90);
  v48 = v56;
  sub_1BE4D9250(v46, v56, &qword_1EBDAC268, &qword_1BE54EA90);
  v49 = sub_1BE4BF11C(&qword_1EBDAC270, &qword_1BE54EA98);
  sub_1BE4D9250(v47, v48 + *(v49 + 48), &qword_1EBDAC268, &qword_1BE54EA90);
  sub_1BE4D0E58(v29, &qword_1EBDAC268, &qword_1BE54EA90);
  sub_1BE4D0E58(v31, &qword_1EBDAC268, &qword_1BE54EA90);
  sub_1BE4D0E58(v47, &qword_1EBDAC268, &qword_1BE54EA90);
  return sub_1BE4D0E58(v46, &qword_1EBDAC268, &qword_1BE54EA90);
}

void sub_1BE4D6D00()
{
  sub_1BE4D7038(319, &qword_1EBDABF88, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BE54ADAC();
    if (v1 <= 0x3F)
    {
      sub_1BE4D6E20(319, &qword_1EBDABEA0, MEMORY[0x1E6968E10]);
      if (v2 <= 0x3F)
      {
        sub_1BE4D6E20(319, &qword_1EBDABF90, type metadata accessor for OnboardingSheetSetup.ButtonSetup);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BE4D6E20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1BE4D985C();
    v4 = sub_1BE54C9EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BE4D6EA8()
{
  result = sub_1BE54ADAC();
  if (v1 <= 0x3F)
  {
    result = sub_1BE4C65D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BE4D6F34()
{
  type metadata accessor for OnboardingSheetSetup(319);
  if (v0 <= 0x3F)
  {
    sub_1BE4C65D8();
    if (v1 <= 0x3F)
    {
      sub_1BE4D7038(319, &qword_1EBDAC028, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1BE4D7088();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BE4D7038(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BE4D7088()
{
  if (!qword_1EBDAC030)
  {
    sub_1BE4C5948(&qword_1EBDAC038, qword_1BE54E6A8);
    v0 = sub_1BE54B62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDAC030);
    }
  }
}

unint64_t sub_1BE4D7134()
{
  result = sub_1BE54ADAC();
  if (v1 <= 0x3F)
  {
    result = sub_1BE4C65D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1BE4D71C0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BE4D72BC@<X0>(uint64_t a1@<X8>)
{
  sub_1BE4D73A4(a1);
  v2 = (a1 + *(sub_1BE4BF11C(&qword_1EBDAC058, &qword_1BE54E868) + 36));
  v3 = v2 + *(sub_1BE4BF11C(&qword_1EBDAC060, &qword_1BE54E870) + 28);
  sub_1BE54B80C();
  *v2 = swift_getKeyPath();
  sub_1BE54C39C();
  sub_1BE54B69C();
  v4 = (a1 + *(sub_1BE4BF11C(&qword_1EBDAC068, &qword_1BE54E8A8) + 36));
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  result = sub_1BE4BF11C(&qword_1EBDAC070, &qword_1BE54E8B0);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1BE4D73A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v56 = sub_1BE54BD6C();
  v49 = *(v56 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1BE4BF11C(&qword_1EBDAC078, &qword_1BE54E8B8);
  v51 = *(v57 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v50 = &v45 - v6;
  v54 = sub_1BE4BF11C(&qword_1EBDAC080, &qword_1BE54E8C0);
  v7 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v45 - v8;
  v9 = sub_1BE54B7DC();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OnboardingButton(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v52 = sub_1BE4BF11C(&qword_1EBDAC088, &qword_1BE54E8C8);
  v17 = *(v52 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v20 = &v45 - v19;
  v53 = sub_1BE4BF11C(&qword_1EBDAC090, &qword_1BE54E8D0);
  v21 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v23 = &v45 - v22;
  v24 = *(v2 + *(v14 + 28));
  sub_1BE4D806C(v2, &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v26 = (v17 + 8);
  v27 = swift_allocObject();
  v28 = sub_1BE4D224C(&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v25, type metadata accessor for OnboardingButton);
  MEMORY[0x1EEE9AC00](v28);
  *(&v45 - 2) = v2;
  sub_1BE4BF11C(&qword_1EBDAC098, &qword_1BE54E8D8);
  sub_1BE4D80DC();
  sub_1BE54C29C();
  if (v24)
  {
    v29 = v48;
    sub_1BE54BD5C();
    v30 = sub_1BE4D9668(&qword_1EBDAC0C0, &qword_1EBDAC088, &qword_1BE54E8C8);
    v31 = sub_1BE4D83D4(&qword_1EBDAC0C8, MEMORY[0x1E697C9D8]);
    v32 = v50;
    v33 = v52;
    v34 = v56;
    sub_1BE54C01C();
    (*(v49 + 8))(v29, v34);
    (*v26)(v20, v33);
    v35 = v51;
    v36 = v57;
    (*(v51 + 16))(v55, v32, v57);
    swift_storeEnumTagMultiPayload();
    sub_1BE4D825C();
    v59 = v33;
    v60 = v34;
    v61 = v30;
    v62 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1BE54BC0C();
    return (*(v35 + 8))(v32, v36);
  }

  else
  {
    sub_1BE54B7CC();
    v38 = sub_1BE4D9668(&qword_1EBDAC0C0, &qword_1EBDAC088, &qword_1BE54E8C8);
    sub_1BE4D83D4(&qword_1EBDAC0D8, MEMORY[0x1E697C1D8]);
    v39 = v52;
    v40 = v47;
    sub_1BE54C01C();
    (*(v46 + 8))(v12, v40);
    (*v26)(v20, v39);
    v41 = sub_1BE54C1DC();
    KeyPath = swift_getKeyPath();
    v43 = &v23[*(v53 + 36)];
    *v43 = KeyPath;
    v43[1] = v41;
    sub_1BE4BBAB8(v23, v55);
    swift_storeEnumTagMultiPayload();
    sub_1BE4D825C();
    v44 = sub_1BE4D83D4(&qword_1EBDAC0C8, MEMORY[0x1E697C9D8]);
    v59 = v39;
    v60 = v56;
    v61 = v38;
    v62 = v44;
    swift_getOpaqueTypeConformance2();
    sub_1BE54BC0C();
    return sub_1BE4BBB1C(v23);
  }
}

uint64_t sub_1BE4D7BB8(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for OnboardingButton(0) + 24);
  v2 = *(v1 + 8);
  return (*v1)();
}

void *sub_1BE4D7BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1BE54ADAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE4BF11C(&qword_1EBDAC0F0, &qword_1BE54E920);
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v11 = &v22 - v10;
  (*(v4 + 16))(v7, a1, v3);
  v12 = sub_1BE54BF7C();
  v14 = v13;
  LOBYTE(a1) = v15;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  __src[0] = v12;
  __src[1] = v14;
  LOBYTE(__src[2]) = a1 & 1;
  __src[3] = v17;
  __src[4] = KeyPath;
  LOBYTE(__src[5]) = 1;
  sub_1BE54BEDC();
  sub_1BE4BF11C(&qword_1EBDAC0A8, &qword_1BE54E8E0);
  sub_1BE4D81A4();
  sub_1BE54BFFC();
  sub_1BE4C68C8(v12, v14, a1 & 1);

  sub_1BE54C39C();
  sub_1BE54B7FC();
  v19 = v23;
  (*(v8 + 32))(v23, v11, v22);
  v20 = sub_1BE4BF11C(&qword_1EBDAC098, &qword_1BE54E8D8);
  return memcpy((v19 + *(v20 + 36)), __src, 0x70uLL);
}

unint64_t sub_1BE4D7E90()
{
  result = qword_1EBDAC050;
  if (!qword_1EBDAC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC050);
  }

  return result;
}

uint64_t sub_1BE4D7F00()
{
  sub_1BE4D982C();
  result = sub_1BE54B91C();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4D7F28(uint64_t *a1)
{
  v1 = *a1;

  return sub_1BE54B92C();
}

uint64_t sub_1BE4D7F54()
{
  sub_1BE4D982C();
  result = sub_1BE54B8FC();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4D7FA4(uint64_t a1)
{
  v2 = sub_1BE54B81C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BE54B8CC();
}

uint64_t sub_1BE4D806C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BE4D80DC()
{
  result = qword_1EBDAC0A0;
  if (!qword_1EBDAC0A0)
  {
    sub_1BE4C5948(&qword_1EBDAC098, &qword_1BE54E8D8);
    sub_1BE4C5948(&qword_1EBDAC0A8, &qword_1BE54E8E0);
    sub_1BE4D81A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC0A0);
  }

  return result;
}

unint64_t sub_1BE4D81A4()
{
  result = qword_1EBDAC0B0;
  if (!qword_1EBDAC0B0)
  {
    sub_1BE4C5948(&qword_1EBDAC0A8, &qword_1BE54E8E0);
    sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC0B0);
  }

  return result;
}

unint64_t sub_1BE4D825C()
{
  result = qword_1EBDAC0D0;
  if (!qword_1EBDAC0D0)
  {
    sub_1BE4C5948(&qword_1EBDAC090, &qword_1BE54E8D0);
    sub_1BE4C5948(&qword_1EBDAC088, &qword_1BE54E8C8);
    sub_1BE54B7DC();
    sub_1BE4D9668(&qword_1EBDAC0C0, &qword_1EBDAC088, &qword_1BE54E8C8);
    sub_1BE4D83D4(&qword_1EBDAC0D8, MEMORY[0x1E697C1D8]);
    swift_getOpaqueTypeConformance2();
    sub_1BE4D9668(&qword_1EBDAC0E0, &qword_1EBDAC0E8, &qword_1BE54E8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC0D0);
  }

  return result;
}

uint64_t sub_1BE4D83D4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1BE4D985C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE4D8418()
{
  v1 = (type metadata accessor for OnboardingButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1BE54ADAC();
  sub_1BE4C7470(v5);
  (*(v6 + 8))(v0 + v3);
  v7 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BE4D84FC()
{
  v1 = type metadata accessor for OnboardingButton(0);
  sub_1BE4C7570(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1BE4D7BB8(v3);
}

unint64_t sub_1BE4D8558()
{
  result = qword_1EBDAC108;
  if (!qword_1EBDAC108)
  {
    sub_1BE4C5948(&qword_1EBDABF68, &qword_1BE54E508);
    sub_1BE4D85E4();
    sub_1BE4D88F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC108);
  }

  return result;
}

unint64_t sub_1BE4D85E4()
{
  result = qword_1EBDAC110;
  if (!qword_1EBDAC110)
  {
    sub_1BE4C5948(&qword_1EBDAC118, &qword_1BE54E958);
    sub_1BE4D8670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC110);
  }

  return result;
}

unint64_t sub_1BE4D8670()
{
  result = qword_1EBDAC120;
  if (!qword_1EBDAC120)
  {
    sub_1BE4C5948(&qword_1EBDAC128, &qword_1BE54E960);
    sub_1BE4D86FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC120);
  }

  return result;
}

unint64_t sub_1BE4D86FC()
{
  result = qword_1EBDAC130;
  if (!qword_1EBDAC130)
  {
    sub_1BE4C5948(&qword_1EBDAC138, &qword_1BE54E968);
    sub_1BE4D8788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC130);
  }

  return result;
}

unint64_t sub_1BE4D8788()
{
  result = qword_1EBDAC140;
  if (!qword_1EBDAC140)
  {
    sub_1BE4C5948(&qword_1EBDAC148, &qword_1BE54E970);
    sub_1BE4D8814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC140);
  }

  return result;
}

unint64_t sub_1BE4D8814()
{
  result = qword_1EBDAC150;
  if (!qword_1EBDAC150)
  {
    sub_1BE4C5948(&qword_1EBDAC158, &qword_1BE54E978);
    sub_1BE4D9668(&qword_1EBDAC160, &qword_1EBDAC168, &qword_1BE54E980);
    sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC150);
  }

  return result;
}

unint64_t sub_1BE4D88F8()
{
  result = qword_1EBDAC170;
  if (!qword_1EBDAC170)
  {
    sub_1BE4C5948(&qword_1EBDAC178, &qword_1BE54E988);
    sub_1BE4D85E4();
    sub_1BE4D9668(&qword_1EBDAC180, &qword_1EBDAC188, &qword_1BE54E990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC170);
  }

  return result;
}

uint64_t sub_1BE4D89F8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1BE4BF07C(result);
  }

  else
  {
  }
}

uint64_t sub_1BE4D8A24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for OnboardingSheetView();
  v4 = *(*(v3 - 1) + 80);
  v24 = *(*(v3 - 1) + 64);
  v25 = (v4 + 32) & ~v4;
  v5 = v0 + v25;
  v6 = *(v0 + v25 + 8);

  v7 = type metadata accessor for OnboardingSheetSetup(0);
  v8 = v7[6];
  v9 = sub_1BE54ADAC();
  sub_1BE4C7470(v9);
  v11 = *(v10 + 8);
  v11(v0 + v25 + v8, v9);
  v12 = v7[7];
  if (!sub_1BE4C63BC(v0 + v25 + v12, 1, v9))
  {
    v11(v5 + v12, v9);
  }

  v13 = v5 + v7[8];
  v14 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
  if (!sub_1BE4C63BC(v13, 1, v14))
  {
    v11(v13, v9);
    v15 = *(v13 + *(v14 + 20) + 8);

    v16 = *(v13 + *(v14 + 24) + 8);
  }

  v17 = v5 + v7[9];
  if (!sub_1BE4C63BC(v17, 1, v14))
  {
    v11(v17, v9);
    v18 = *(v17 + *(v14 + 20) + 8);

    v19 = *(v17 + *(v14 + 24) + 8);
  }

  v20 = *(v5 + v3[9] + 8);

  v21 = *(v5 + v3[10] + 8);

  v22 = *(v5 + v3[11] + 8);

  sub_1BE4D89F8(*(v5 + v3[12]), *(v5 + v3[12] + 8), *(v5 + v3[12] + 16));

  return MEMORY[0x1EEE6BDD0](v0, v25 + v24, v4 | 7);
}

uint64_t sub_1BE4D8CD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = type metadata accessor for OnboardingSheetView();
  sub_1BE4C7570(v9);
  return sub_1BE4D4F34(v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v7, v8, a1, a2, a3);
}

uint64_t sub_1BE4D8D94(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = type metadata accessor for OnboardingSheetView();
  sub_1BE4C7570(v5);
  v7 = *(v6 + 80);
  v8 = sub_1BE4D9844();

  return a2(v8);
}

unint64_t sub_1BE4D8E2C()
{
  result = qword_1EBDAC1B8;
  if (!qword_1EBDAC1B8)
  {
    sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
    sub_1BE4D8EE4();
    sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC1B8);
  }

  return result;
}

unint64_t sub_1BE4D8EE4()
{
  result = qword_1EBDAC1C0;
  if (!qword_1EBDAC1C0)
  {
    sub_1BE4C5948(&qword_1EBDAC1C8, &qword_1BE54E9B0);
    sub_1BE4D8F9C();
    sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC1C0);
  }

  return result;
}

unint64_t sub_1BE4D8F9C()
{
  result = qword_1EBDAC1D0;
  if (!qword_1EBDAC1D0)
  {
    sub_1BE4C5948(&qword_1EBDAC1D8, &qword_1BE54E9B8);
    sub_1BE4D9028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC1D0);
  }

  return result;
}

unint64_t sub_1BE4D9028()
{
  result = qword_1EBDAC1E0;
  if (!qword_1EBDAC1E0)
  {
    sub_1BE4C5948(&qword_1EBDAC1E8, &qword_1BE54E9C0);
    sub_1BE4D90B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC1E0);
  }

  return result;
}

unint64_t sub_1BE4D90B4()
{
  result = qword_1EBDAC1F0;
  if (!qword_1EBDAC1F0)
  {
    sub_1BE4C5948(&qword_1EBDAC1F8, &qword_1BE54E9C8);
    sub_1BE4D9668(&qword_1EBDAC200, &qword_1EBDAC208, &qword_1BE54E9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC1F0);
  }

  return result;
}

uint64_t sub_1BE4D916C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BE4D91B0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BE4D91B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BE4D91C0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BE4C68C8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BE4D9204(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470(v5);
  v7 = *(v6 + 32);
  v8 = sub_1BE4D9800();
  v9(v8);
  return v4;
}

uint64_t sub_1BE4D9250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470(v5);
  v7 = *(v6 + 16);
  v8 = sub_1BE4D9800();
  v9(v8);
  return v4;
}

unint64_t sub_1BE4D92B0()
{
  result = qword_1EBDAC278;
  if (!qword_1EBDAC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC278);
  }

  return result;
}

unint64_t sub_1BE4D934C()
{
  result = qword_1EBDAC280;
  if (!qword_1EBDAC280)
  {
    sub_1BE4C5948(&qword_1EBDAC070, &qword_1BE54E8B0);
    sub_1BE4D93D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC280);
  }

  return result;
}

unint64_t sub_1BE4D93D8()
{
  result = qword_1EBDAC288;
  if (!qword_1EBDAC288)
  {
    sub_1BE4C5948(&qword_1EBDAC068, &qword_1BE54E8A8);
    sub_1BE4D9464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC288);
  }

  return result;
}

unint64_t sub_1BE4D9464()
{
  result = qword_1EBDAC290;
  if (!qword_1EBDAC290)
  {
    sub_1BE4C5948(&qword_1EBDAC058, &qword_1BE54E868);
    sub_1BE4D951C();
    sub_1BE4D9668(&qword_1EBDAC2A8, &qword_1EBDAC060, &qword_1BE54E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC290);
  }

  return result;
}

unint64_t sub_1BE4D951C()
{
  result = qword_1EBDAC298;
  if (!qword_1EBDAC298)
  {
    sub_1BE4C5948(&qword_1EBDAC2A0, &qword_1BE54EAB8);
    sub_1BE4D825C();
    sub_1BE4C5948(&qword_1EBDAC088, &qword_1BE54E8C8);
    sub_1BE54BD6C();
    sub_1BE4D9668(&qword_1EBDAC0C0, &qword_1EBDAC088, &qword_1BE54E8C8);
    sub_1BE4D83D4(&qword_1EBDAC0C8, MEMORY[0x1E697C9D8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC298);
  }

  return result;
}

uint64_t sub_1BE4D9668(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BE4C5948(a2, a3);
    sub_1BE4D985C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE4D9744@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE4D97E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1BE4BF11C(a3, a4);
}

uint64_t sub_1BE4D9868()
{

  return type metadata accessor for OnboardingSheetSetup(0);
}

uint64_t sub_1BE4D9880(uint64_t a1, uint64_t a2)
{

  return sub_1BE4D9250(a1, a2, v2, v3);
}

uint64_t sub_1BE4D98B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 24 * v1;
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);

  return v3;
}

uint64_t sub_1BE4D9918(char a1)
{
  result = 0x6F72746E69;
  switch(a1)
  {
    case 1:
      result = sub_1BE4DCF90();
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = sub_1BE4DCF58();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BE4D99CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EDDD6890 != -1)
  {
LABEL_14:
    swift_once();
  }

  v6 = off_1EDDD6898;
  swift_beginAccess();
  v7 = v6[2];
  v8 = *(v7 + 16);
  v9 = v7 + 32;

  for (i = 0; v8 != i; ++i)
  {
    if (i >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    sub_1BE4C6918(v9, &v17);
    v11 = v18;
    v12 = v19;
    sub_1BE4C52F4(&v17, v18);
    if ((*(v12 + 8))(v11, v12) == a1 && v13 == a2)
    {

LABEL_12:

      sub_1BE4BF094(&v17, v20);
      return sub_1BE4BF094(v20, a3);
    }

    v15 = sub_1BE54CCDC();

    if (v15)
    {
      goto LABEL_12;
    }

    sub_1BE4C58A8(&v17);
    v9 += 40;
  }

  *&v20[0] = 0;
  *(&v20[0] + 1) = 0xE000000000000000;
  sub_1BE54CADC();
  MEMORY[0x1BFB47CA0](0xD0000000000000ACLL, 0x80000001BE553A10);
  MEMORY[0x1BFB47CA0](a1, a2);
  MEMORY[0x1BFB47CA0](15906, 0xE200000000000000);
  result = sub_1BE54CBBC();
  __break(1u);
  return result;
}

uint64_t sub_1BE4D9BE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BE4DB7C0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1BE4D9C40()
{
  v0 = 1952543335;
  sub_1BE4DD074();
  v2 = 0xD000000000000013;
  v3 = 0x65746E4969726973;
  v5 = v4;
  v6 = "imagePlaygroundExpansion";
  v7 = 0x65746E4969726973;
  v8 = 1952543335;
  v9 = "moreVisualIntelligence";
  switch(v5)
  {
    case 1:
      v8 = 0x80000001BE552A90;
      v7 = 0xD000000000000016;
      break;
    case 2:
      v7 = sub_1BE4DD04C();
      break;
    case 3:
      v8 = 0x80000001BE552AD0;
      v7 = 0xD000000000000018;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = (v9 - 32) | 0x8000000000000000;
      v3 = v2 + 3;
      break;
    case 2:
      sub_1BE4DD0A0();
      break;
    case 3:
      v0 = (v6 - 32) | 0x8000000000000000;
      v3 = v2 + 5;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE4DD014();
  }

  return v11 & 1;
}

uint64_t sub_1BE4D9D68(char a1, char a2)
{
  v2 = 0x6465636E61766461;
  if (a1)
  {
    sub_1BE4DD080();
    if (v3)
    {
      v5 = 0x6369736162;
    }

    else
    {
      v5 = 0x696D694C64726168;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEB00000000646574;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
    v5 = 0x6465636E61766461;
  }

  if (a2)
  {
    sub_1BE4DD080();
    if (v7)
    {
      v2 = 0x6369736162;
    }

    else
    {
      v2 = 0x696D694C64726168;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEB00000000646574;
    }
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE4DD030();
  }

  return v11 & 1;
}

uint64_t sub_1BE4D9E58(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000044;
  v3 = 0xD000000000000013;
  v4 = 0x496D616441707061;
  v5 = a1;
  v6 = "subscriptionManageAppleURL";
  v7 = 0x496D616441707061;
  v8 = 0xE900000000000044;
  v9 = "subscriptionPunchoutURL";
  switch(v5)
  {
    case 1:
      v7 = 0x6C646E7542707061;
      v8 = 0xEB00000000444965;
      break;
    case 2:
      v8 = 0x80000001BE552A20;
      v7 = 0xD000000000000017;
      break;
    case 3:
      v7 = sub_1BE4DD04C();
      break;
    case 4:
      v8 = 0x80000001BE552A60;
      v7 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v4 = 0x6C646E7542707061;
      v2 = 0xEB00000000444965;
      break;
    case 2:
      v2 = (v9 - 32) | 0x8000000000000000;
      v4 = v3 + 4;
      break;
    case 3:
      sub_1BE4DD0A0();
      break;
    case 4:
      v2 = (v6 - 32) | 0x8000000000000000;
      v4 = v3 + 7;
      break;
    default:
      break;
  }

  if (v7 == v4 && v8 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE4DD014();
  }

  return v11 & 1;
}

uint64_t sub_1BE4D9FC0(unsigned __int8 a1, char a2)
{
  v2 = 0x54504774616863;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x54504774616863;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v3 = 0x80000001BE5529C0;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1769105779;
      break;
    case 3:
      v5 = 0x54676E6974697277;
      v3 = 0xEC000000736C6F6FLL;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000010;
      v6 = 0x80000001BE5529C0;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1769105779;
      break;
    case 3:
      v2 = 0x54676E6974697277;
      v6 = 0xEC000000736C6F6FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BE4DD030();
  }

  return v8 & 1;
}

uint64_t sub_1BE4DA100()
{
  v0 = 1952671084;
  sub_1BE4DD074();
  v2 = 0x655365676E616863;
  v4 = v3;
  v5 = 0x655365676E616863;
  v6 = 1952671084;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6E496E676973;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x74754F6E676973;
      break;
    case 3:
      v5 = 0x5065646172677075;
      v6 = 0xEB000000006E616CLL;
      break;
    case 4:
      v5 = 0x6168437055746573;
      v6 = 0xEC00000054504774;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE600000000000000;
      v2 = 0x6E496E676973;
      break;
    case 2:
      v0 = 0xE700000000000000;
      v2 = 0x74754F6E676973;
      break;
    case 3:
      v2 = 0x5065646172677075;
      v0 = 0xEB000000006E616CLL;
      break;
    case 4:
      v2 = 0x6168437055746573;
      v0 = 0xEC00000054504774;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BE4DD014();
  }

  return v8 & 1;
}

uint64_t sub_1BE4DA298()
{
  sub_1BE4DD08C();
  v4 = v3;
  v5 = "signInHostingPage";
  v6 = v2;
  v7 = "enableWithAccountInfo";
  switch(v4)
  {
    case 1:
      v6 = sub_1BE4DCF90();
      v0 = 0xEB000000006F666ELL;
      break;
    case 2:
      v6 = sub_1BE4DCFD8();
      break;
    case 3:
      v6 = sub_1BE4DD060();
      break;
    case 4:
      v0 = 0xE800000000000000;
      v6 = sub_1BE4DCF58();
      break;
    default:
      break;
  }

  v8 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      sub_1BE4DCF20();
      v8 = 0xEB000000006F666ELL;
      break;
    case 2:
      v8 = (v7 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000015;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v8 = (v5 - 32) | 0x8000000000000000;
      break;
    case 4:
      v8 = 0xE800000000000000;
      sub_1BE4DCEFC();
      break;
    default:
      break;
  }

  if (v6 == v2 && v0 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1BE4DD030();
  }

  return v10 & 1;
}

uint64_t sub_1BE4DA3C4()
{
  v0 = sub_1BE54CC0C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BE4DA410(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1BE4DA298();
}

uint64_t sub_1BE4DA44C()
{
  sub_1BE54CD8C();
  sub_1BE54C77C();
  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DA4E8()
{
  sub_1BE4DD0B4();
  v0(v1);
  sub_1BE4DCF34();

  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DA548()
{
  sub_1BE4DD0B4();
  v0(v3, v1);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DA590()
{
  sub_1BE4DD074();
  switch(v0)
  {
    case 1:
    case 3:
      sub_1BE4DCED0();
      break;
    default:
      break;
  }

  sub_1BE54C77C();
}

uint64_t sub_1BE4DA64C(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1BE4DD080();
  }

  else
  {
    sub_1BE4DCFC0();
  }

  sub_1BE54C77C();
}

uint64_t sub_1BE4DA6C8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 4:
      sub_1BE4DCED0();
      break;
    default:
      break;
  }

  sub_1BE54C77C();
}

uint64_t sub_1BE4DA7A0()
{
  sub_1BE54C77C();
}

uint64_t sub_1BE4DA85C()
{
  sub_1BE4DD074();
  sub_1BE54C77C();
}

uint64_t sub_1BE4DA94C()
{
  sub_1BE54C77C();
}

uint64_t sub_1BE4DAA5C()
{
  sub_1BE54CD8C();
  sub_1BE54C77C();
  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DAAE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1BE54CD8C();
  a3(a2);
  sub_1BE4DCF34();

  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DAB3C(uint64_t a1, char a2)
{
  sub_1BE54CD8C();
  if (a2)
  {
    sub_1BE4DD080();
  }

  else
  {
    sub_1BE4DCFC0();
  }

  sub_1BE54C77C();

  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DABE4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1BE54CD8C();
  a3(v6, a2);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DAC30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BE4DA3C4();
  *a2 = result;
  return result;
}

uint64_t sub_1BE4DAC60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE4D9918(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BE4DAC8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a1 == a4 && a2 == a5;
  if (v9 || (v10 = 0, (sub_1BE54CCDC() & 1) != 0))
  {
    sub_1BE4DD08C();
    v12 = "signInHostingPage";
    v13 = v11;
    v14 = "enableWithAccountInfo";
    switch(a3)
    {
      case 1:
        v13 = sub_1BE4DCF90();
        v6 = 0xEB000000006F666ELL;
        break;
      case 2:
        v13 = sub_1BE4DCFD8();
        break;
      case 3:
        v13 = sub_1BE4DD060();
        break;
      case 4:
        v6 = 0xE800000000000000;
        v13 = sub_1BE4DCF58();
        break;
      default:
        break;
    }

    v15 = 0xE500000000000000;
    switch(a6)
    {
      case 1:
        sub_1BE4DCF20();
        v15 = 0xEB000000006F666ELL;
        break;
      case 2:
        v15 = (v14 - 32) | 0x8000000000000000;
        v11 = 0xD000000000000015;
        break;
      case 3:
        v11 = 0xD000000000000011;
        v15 = (v12 - 32) | 0x8000000000000000;
        break;
      case 4:
        v15 = 0xE800000000000000;
        sub_1BE4DCEFC();
        break;
      default:
        break;
    }

    if (v13 == v11 && v6 == v15)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1BE54CCDC();
    }
  }

  return v10 & 1;
}

uint64_t sub_1BE4DADF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1BE54C77C();
  sub_1BE4D9918(a4);
  sub_1BE54C77C();
}

uint64_t sub_1BE4DAE4C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BE54CD8C();
  sub_1BE54C77C();
  sub_1BE4D9918(a3);
  sub_1BE4DCF34();

  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DAED4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1BE54CD8C();
  sub_1BE54C77C();
  sub_1BE4D9918(v3);
  sub_1BE54C77C();

  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DAF6C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1BE4DC948();
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v1);
  sub_1BE54AFCC();

  sub_1BE4DCFA4();
  return sub_1BE4DCE50(v1 + 16, a1, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE4DB018(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1BE4DCE00(a2, a1 + 16, &qword_1EBDABAF8, &qword_1BE54DC20);
  return swift_endAccess();
}

uint64_t sub_1BE4DB08C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1BE4DC948();
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v1);
  sub_1BE54AFCC();

  sub_1BE4DCFA4();
  return sub_1BE4DCE50(v1 + 56, a1, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE4DB118(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  sub_1BE4DCE50(a1, v9, &qword_1EBDABAF8, &qword_1BE54DC20);
  v7 = *a2;
  return a5(v9);
}

uint64_t sub_1BE4DB18C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1BE4DC1D0();

  return sub_1BE4D0E58(a1, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE4DB208(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1BE4DCE00(a2, a1 + 56, &qword_1EBDABAF8, &qword_1BE54DC20);
  return swift_endAccess();
}

uint64_t sub_1BE4DB27C()
{
  v0 = sub_1BE4DB5F0();
  sub_1BE4D98B8(v0);
  v2 = v1;
  v27 = v3;

  if (v2)
  {

    result = sub_1BE4DB5F0();
    v5 = result;
    v6 = 0;
    v26 = *(result + 16);
    v25 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v7 = 24 * v6;
    while (v26 != v6)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v9 = *(v5 + v7 + 32);
      v8 = *(v5 + v7 + 40);
      v10 = *(v5 + v7 + 48);
      v11 = 0xE500000000000000;
      v12 = 0x6F72746E69;
      switch(v10)
      {
        case 1:
          v12 = sub_1BE4DCF90();
          v11 = 0xEB000000006F666ELL;
          break;
        case 2:
          v12 = 0xD000000000000015;
          v11 = 0x80000001BE5528F0;
          break;
        case 3:
          v12 = 0xD000000000000011;
          v11 = 0x80000001BE552910;
          break;
        case 4:
          v11 = 0xE800000000000000;
          v12 = sub_1BE4DCF58();
          break;
        default:
          break;
      }

      v13 = 0xE500000000000000;
      v14 = 0x6F72746E69;
      switch(v27)
      {
        case 1:
          sub_1BE4DCF20();
          v13 = 0xEB000000006F666ELL;
          break;
        case 2:
          v14 = 0xD000000000000015;
          v13 = 0x80000001BE5528F0;
          break;
        case 3:
          v14 = 0xD000000000000011;
          v13 = 0x80000001BE552910;
          break;
        case 4:
          v13 = 0xE800000000000000;
          sub_1BE4DCEFC();
          break;
        default:
          break;
      }

      if (v12 == v14 && v11 == v13)
      {

LABEL_23:
        v17 = v25;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1BE52B808(0, *(v25 + 16) + 1, 1);
          v17 = v25;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        if (v19 >= v18 >> 1)
        {
          result = sub_1BE52B808(v18 > 1, v19 + 1, 1);
          v17 = v25;
        }

        ++v6;
        *(v17 + 16) = v19 + 1;
        v25 = v17;
        v20 = v17 + 24 * v19;
        *(v20 + 32) = v9;
        *(v20 + 40) = v8;
        *(v20 + 48) = v10;
        goto LABEL_3;
      }

      v16 = sub_1BE54CCDC();

      if (v16)
      {
        goto LABEL_23;
      }

      v7 += 24;
      ++v6;
    }

    v21 = *(v25 + 16);

    if (v21 <= 1)
    {
      type metadata accessor for GenerativePartnerServiceAnalytics();
      sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE54E1A0;
      *(inited + 32) = 0x6567617473;
      *(inited + 40) = 0xE500000000000000;
      sub_1BE4D9918(v27);
      v23 = sub_1BE54C6DC();

      *(inited + 48) = v23;
      sub_1BE4C70B0();
      v24 = sub_1BE54C61C();
      sub_1BE52D9C4(0, v24);
    }
  }

  return result;
}

uint64_t sub_1BE4DB5F0()
{
  swift_getKeyPath();
  v1 = sub_1BE4DC948();
  sub_1BE4DCEC0(v1, v2, v3, v4, v5, v6, v7, v8, v11, v0);
  sub_1BE54AFCC();

  sub_1BE4DCFA4();
  v9 = *(v0 + 96);
}

uint64_t sub_1BE4DB664(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);

  v5 = sub_1BE4DCB54(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 96);
    *(v1 + 96) = a1;

    return sub_1BE4DB27C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BE4DC1D0();
  }
}

uint64_t sub_1BE4DB750(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 96);
  *(a1 + 96) = a2;

  return sub_1BE4DB27C();
}

uint64_t sub_1BE4DB7C0()
{
  swift_getKeyPath();
  v1 = sub_1BE4DC948();
  sub_1BE4DCEC0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1BE54AFCC();

  return *(v0 + 104);
}

uint64_t sub_1BE4DB828(uint64_t result)
{
  if (*(v1 + 104) == (result & 1))
  {
    *(v1 + 104) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_1BE4DC1D0();
  }

  return result;
}

uint64_t sub_1BE4DB8D0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1BE4DC948();
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v12, v1);
  sub_1BE54AFCC();

  sub_1BE4DCFA4();
  return sub_1BE4DCE50(v1 + 112, a1, &qword_1EBDABD30, &qword_1BE54DEC0);
}

uint64_t sub_1BE4DB95C(uint64_t a1, uint64_t *a2)
{
  sub_1BE4DCE50(a1, v5, &qword_1EBDABD30, &qword_1BE54DEC0);
  v3 = *a2;
  return sub_1BE4DB9A8(v5);
}

uint64_t sub_1BE4DB9A8(uint64_t a1)
{
  swift_getKeyPath();
  sub_1BE4DC1D0();

  return sub_1BE4D0E58(a1, &qword_1EBDABD30, &qword_1BE54DEC0);
}

uint64_t sub_1BE4DBA2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1BE4DCE00(a2, a1 + 112, &qword_1EBDABD30, &qword_1BE54DEC0);
  return swift_endAccess();
}

uint64_t sub_1BE4DBAA0()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = sub_1BE4DC948();
  sub_1BE4DCEC0(v2, v3, v4, v5, v6, v7, v8, v9, v13, v0);
  sub_1BE54AFCC();

  v11 = *(v0 + 192);
  v10 = *(v1 + 200);
  sub_1BE4BF0D8(v11);
  return v11;
}

uint64_t sub_1BE4DBB1C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1, unsigned __int8 *a2)@<X8>)
{
  v3 = *a1;
  result = sub_1BE4DBAA0();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1BE4DCAFC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1BE4DBB8C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1BE4DCAC4;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  sub_1BE4BF0D8(v3);
  return sub_1BE4DBC1C(v6);
}

uint64_t sub_1BE4DBC1C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1BE4DC1D0();
  sub_1BE4BF07C(a1);
}

uint64_t sub_1BE4DBCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 192);
  v4 = *(a1 + 200);
  *(a1 + 192) = a2;
  *(a1 + 200) = a3;
  sub_1BE4BF0D8(a2);
  return sub_1BE4BF07C(v3);
}

uint64_t sub_1BE4DBCF0(char a1, void *a2)
{
  if (a1)
  {
    goto LABEL_2;
  }

  sub_1BE4DAF6C(v9);
  sub_1BE4DB08C(v8);
  sub_1BE4DBECC(v9, v8, __src);
  if (!*(&__src[1] + 1))
  {
    sub_1BE4D0E58(__src, &qword_1EBDABD30, &qword_1BE54DEC0);
LABEL_2:
    v4 = a2[3];
    v5 = a2[4];
    sub_1BE4C52F4(a2, v4);
    (*(v5 + 8))(v4, v5);
    swift_getKeyPath();
    __dst[0] = v2;
    sub_1BE4DC948();
    sub_1BE4DCF10();
    sub_1BE54AFCC();

    __dst[0] = v2;
    swift_getKeyPath();
    sub_1BE4DCF10();
    sub_1BE54AFEC();

    swift_beginAccess();
    sub_1BE4DCEE4();
    sub_1BE4DC9B8(v6);
    sub_1BE4DCFF0();
    sub_1BE4DCF6C();
    swift_endAccess();
    sub_1BE4DB27C();
    __dst[0] = v2;
    swift_getKeyPath();
    sub_1BE54AFDC();
  }

  memcpy(__dst, __src, 0x50uLL);
  sub_1BE4DB828(1);
  sub_1BE4C6B90(__dst, __src);
  sub_1BE4DB9A8(__src);
  return sub_1BE4DCA74(__dst);
}

double sub_1BE4DBECC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a1 + 24))
  {
    sub_1BE4BF094(a1, v12);
    v6 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v6;
    v10 = *(a2 + 32);
    if (*(&v6 + 1))
    {
      sub_1BE4BF094(v9, v11);
      sub_1BE4BF094(v12, __src);
      sub_1BE4BF094(v11, &__src[40]);
      memcpy(a3, __src, 0x50uLL);
      return result;
    }

    sub_1BE4C58A8(v12);
    v8 = v9;
  }

  else
  {
    sub_1BE4D0E58(a2, &qword_1EBDABAF8, &qword_1BE54DC20);
    v8 = a1;
  }

  sub_1BE4D0E58(v8, &qword_1EBDABAF8, &qword_1BE54DC20);
  result = 0.0;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1BE4DBFD4(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  sub_1BE4C52F4(a2, v2);
  (*(v3 + 8))(v2, v3);
  swift_getKeyPath();
  sub_1BE4DC948();
  sub_1BE4DCF10();
  sub_1BE54AFCC();

  swift_getKeyPath();
  sub_1BE4DCF10();
  sub_1BE54AFEC();

  swift_beginAccess();
  sub_1BE4DCEE4();
  sub_1BE4DC9B8(v4);
  sub_1BE4DCFF0();
  sub_1BE4DCF6C();
  swift_endAccess();
  sub_1BE4DB27C();
  swift_getKeyPath();
  sub_1BE54AFDC();
}

uint64_t sub_1BE4DC120(uint64_t a1)
{
  result = sub_1BE4DBAA0();
  if (result)
  {
    v3 = result;
    v4 = sub_1BE4DB5F0();
    sub_1BE4D98B8(v4);
    v6 = v5;
    v8 = v7;

    if (v6)
    {
    }

    else
    {
      v8 = 5;
    }

    v3(a1, v8);

    return sub_1BE4BF07C(v3);
  }

  return result;
}

char *sub_1BE4DC258()
{
  sub_1BE4D0E58((v0 + 16), &qword_1EBDABAF8, &qword_1BE54DC20);
  sub_1BE4D0E58((v0 + 56), &qword_1EBDABAF8, &qword_1BE54DC20);
  v1 = *(v0 + 12);

  sub_1BE4D0E58((v0 + 112), &qword_1EBDABD30, &qword_1BE54DEC0);
  v2 = *(v0 + 25);
  sub_1BE4BF07C(*(v0 + 24));
  v3 = *(v0 + 27);
  sub_1BE4BF07C(*(v0 + 26));
  v4 = *(v0 + 28);

  v5 = OBJC_IVAR____TtC26GenerativePartnerServiceUI26PartnerOnboardingViewModel___observationRegistrar;
  v6 = sub_1BE54B00C();
  sub_1BE4C7470(v6);
  (*(v7 + 8))(&v0[v5]);
  return v0;
}

uint64_t sub_1BE4DC320()
{
  sub_1BE4DC258();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for PartnerOnboardingViewModel()
{
  result = qword_1EDDD64F8;
  if (!qword_1EDDD64F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE4DC3CC()
{
  result = sub_1BE54B00C();
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

uint64_t getEnumTagSinglePayload for PartnerOnboardingStageData.Stage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PartnerOnboardingStageData.Stage(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BE4DC5FC(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_1BE4DC618(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BE4DC62C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BE4DC668(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BE4DC6B4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1BE4DC6F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE4DC734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1BE4DC798(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BE4DC7AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE4DC7EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BE4DC840()
{
  result = qword_1EBDAC2B0;
  if (!qword_1EBDAC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC2B0);
  }

  return result;
}

unint64_t sub_1BE4DC898()
{
  result = qword_1EBDAC2B8;
  if (!qword_1EBDAC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC2B8);
  }

  return result;
}

uint64_t sub_1BE4DC8EC()
{
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = MEMORY[0x1E69E7CC0];
  *(v0 + 104) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = v1;
  sub_1BE54AFFC();
  return v0;
}

unint64_t sub_1BE4DC948()
{
  result = qword_1EBDABD78;
  if (!qword_1EBDABD78)
  {
    type metadata accessor for PartnerOnboardingViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABD78);
  }

  return result;
}

uint64_t sub_1BE4DC9B8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1BE4DCA2C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1BE4DCAC4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  return v3(a1, &v6);
}

uint64_t sub_1BE4DCAFC(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2);
}

uint64_t sub_1BE4DCB54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = *(a1 + 48);
    v6 = *(a2 + 48);
    v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v7 || (sub_1BE54CCDC() & 1) != 0)
    {
      v8 = 0;
      for (i = 1; ; ++i)
      {
        v10 = 0xE500000000000000;
        v11 = 0x6F72746E69;
        switch(v5)
        {
          case 1:
            v11 = 0x4979636176697270;
            v10 = 0xEB000000006F666ELL;
            break;
          case 2:
            v11 = 0xD000000000000015;
            v10 = 0x80000001BE5528F0;
            break;
          case 3:
            v11 = 0xD000000000000011;
            v10 = 0x80000001BE552910;
            break;
          case 4:
            v10 = 0xE800000000000000;
            v11 = 0x6574656C706D6F63;
            break;
          default:
            break;
        }

        v12 = 0xE500000000000000;
        v13 = 0x6F72746E69;
        switch(v6)
        {
          case 1:
            v13 = 0x4979636176697270;
            v12 = 0xEB000000006F666ELL;
            break;
          case 2:
            v13 = 0xD000000000000015;
            v12 = 0x80000001BE5528F0;
            break;
          case 3:
            v13 = 0xD000000000000011;
            v12 = 0x80000001BE552910;
            break;
          case 4:
            v12 = 0xE800000000000000;
            v13 = 0x6574656C706D6F63;
            break;
          default:
            break;
        }

        if (v11 == v13 && v10 == v12)
        {
        }

        else
        {
          v15 = sub_1BE54CCDC();

          if ((v15 & 1) == 0)
          {
            return 0;
          }
        }

        if (v2 == i)
        {
          break;
        }

        if (i >= v2)
        {
          __break(1u);
          return result;
        }

        v5 = *(a1 + v8 + 72);
        v6 = *(a2 + v8 + 72);
        v17 = *(a1 + v8 + 56) == *(a2 + v8 + 56) && *(a1 + v8 + 64) == *(a2 + v8 + 64);
        if (!v17 && (sub_1BE54CCDC() & 1) == 0)
        {
          return 0;
        }

        v8 += 24;
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1BE4DCE00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470(v6);
  (*(v7 + 24))(v4, v5);
  return v4;
}

uint64_t sub_1BE4DCE50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1BE4DCF34()
{

  return sub_1BE54C77C();
}

void sub_1BE4DCF6C()
{
  v5 = *(v0 + 96);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 24 * v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  *(v6 + 48) = v1;
  *(v0 + 96) = v5;
}

uint64_t sub_1BE4DCFA4()
{

  return swift_beginAccess();
}

uint64_t sub_1BE4DCFF0()
{
  v3 = *(*(v0 + 96) + 16);

  return sub_1BE4DCA2C(v3, v1);
}

uint64_t sub_1BE4DD014()
{

  return sub_1BE54CCDC();
}

uint64_t sub_1BE4DD030()
{

  return sub_1BE54CCDC();
}

uint64_t sub_1BE4DD0B4()
{

  return sub_1BE54CD8C();
}

uint64_t sub_1BE4DD0DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE4DD11C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BE4DD19C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE4BF11C(&qword_1EBDAC2C0, &qword_1BE54EFC8);
  v4 = sub_1BE4C7470(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v71 - v7;
  v74 = sub_1BE4BF11C(&qword_1EBDAC2C8, &unk_1BE54EFD0);
  v9 = sub_1BE4C7470(v74);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v75 = v71 - v12;
  v13 = sub_1BE54AF6C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1BE4C757C();
  v71[2] = v16 - v15;
  v17 = sub_1BE54AD8C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1BE4C757C();
  v22 = (v21 - v20);
  v23 = sub_1BE54C6BC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  sub_1BE4C757C();
  v73 = sub_1BE4BF11C(&qword_1EBDABB90, &qword_1BE54DCB8);
  v25 = sub_1BE4C7470(v73);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v71 - v28;
  LOBYTE(v28) = *(v1 + 56);
  v72 = v1;
  v30 = *(v1 + 64);
  v76[0] = v28;
  v77 = v30;
  sub_1BE4BF11C(&qword_1EBDAC2D0, &qword_1BE54EFE0);
  sub_1BE54C24C();
  if (v78 == 3)
  {
    sub_1BE54C65C();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4();
    }

    v31 = sub_1BE4C52BC(v17, qword_1EBDB0C08);
    (*(v18 + 16))(v22, v31, v17);
    sub_1BE54AF2C();
    v32 = type metadata accessor for OnboardingSheetSetup(0);
    v33 = &v8[v32[6]];
    sub_1BE54ADBC();
    v34 = v32[7];
    v35 = sub_1BE54ADAC();
    sub_1BE4C63F8(&v8[v34], 1, 1, v35);
    v36 = v32[8];
    v37 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
    sub_1BE4C63F8(&v8[v36], 1, 1, v37);
    v38 = v72;
    sub_1BE4DDFA8(v72, &v8[v32[9]]);
    *v8 = 1;
    *(v8 + 1) = 0;
    v39 = sub_1BE4BF11C(&qword_1EBDAC2D8, &qword_1BE54EFE8);
    v40 = &v8[v39[10]];
    v78 = 0;
    sub_1BE4E0240();
    sub_1BE54C23C();
    *v40 = sub_1BE4E0234();
    *(v40 + 1) = v41;
    v42 = &v8[v39[11]];
    v78 = 0;
    sub_1BE4E0240();
    sub_1BE54C23C();
    *v42 = sub_1BE4E0234();
    *(v42 + 1) = v43;
    v44 = &v8[v39[12]];
    *v44 = swift_getKeyPath();
    *(v44 + 1) = 0;
    v44[16] = 0;
    *&v8[v39[13]] = 0x407C200000000000;
    v45 = &v8[v39[9]];
    *v45 = sub_1BE4DE3AC;
    v45[1] = 0;
    sub_1BE4DF820(v38, v76);
    v46 = swift_allocObject();
    sub_1BE4E026C(v46);
    v47 = &v8[*(v3 + 36)];
    v48 = &v47[*(sub_1BE54B73C() + 20)];
    sub_1BE54C8EC();
    *v47 = &unk_1BE54F020;
    *(v47 + 1) = v39;
    v49 = &qword_1EBDAC2C0;
    v50 = &qword_1BE54EFC8;
    sub_1BE4E024C(v8);
    swift_storeEnumTagMultiPayload();
    sub_1BE4DFA9C(&qword_1EBDABB88, &qword_1EBDABB90, &qword_1BE54DCB8);
    sub_1BE4DF9C8();
    sub_1BE54BC0C();
    v51 = v8;
  }

  else
  {
    v71[0] = v3;
    v71[1] = a1;
    sub_1BE54C65C();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4();
    }

    v52 = sub_1BE4C52BC(v17, qword_1EBDB0C08);
    v53 = *(v18 + 16);
    v53(v22, v52, v17);
    sub_1BE54AF2C();
    v54 = type metadata accessor for OnboardingSheetSetup(0);
    v55 = &v29[v54[6]];
    sub_1BE4E01EC();
    sub_1BE4DD920(&v29[v54[7]]);
    v56 = v54;
    v57 = &v29[v54[8]];
    sub_1BE54C65C();
    v53(v22, v52, v17);
    sub_1BE54AF2C();
    sub_1BE4E01EC();
    v58 = v72;
    sub_1BE4DF820(v72, v76);
    v59 = swift_allocObject();
    sub_1BE4E026C(v59);
    v60 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
    v61 = (v57 + *(v60 + 20));
    *v61 = sub_1BE4DFAF0;
    v61[1] = v22;
    v62 = (v57 + *(v60 + 24));
    *v62 = sub_1BE4D15F4;
    v62[1] = 0;
    sub_1BE4C63F8(v57, 0, 1, v60);
    sub_1BE4DDBE0(v58, &v29[v56[9]]);
    *v29 = 1;
    *(v29 + 1) = 0;
    v63 = v73;
    v64 = &v29[v73[10]];
    v78 = 0;
    sub_1BE4E0240();
    sub_1BE54C23C();
    *v64 = sub_1BE4E0234();
    *(v64 + 1) = v65;
    v66 = &v29[v63[11]];
    v78 = 0;
    sub_1BE4E0240();
    sub_1BE54C23C();
    *v66 = sub_1BE4E0234();
    *(v66 + 1) = v67;
    v68 = &v29[v63[12]];
    *v68 = swift_getKeyPath();
    *(v68 + 1) = 0;
    v68[16] = 0;
    *&v29[v63[13]] = 0x407C200000000000;
    v69 = &v29[v63[9]];
    *v69 = j_nullsub_1;
    *(v69 + 1) = 0;
    v49 = &qword_1EBDABB90;
    v50 = &qword_1BE54DCB8;
    sub_1BE4E024C(v29);
    swift_storeEnumTagMultiPayload();
    sub_1BE4DFA9C(&qword_1EBDABB88, &qword_1EBDABB90, &qword_1BE54DCB8);
    sub_1BE4DF9C8();
    sub_1BE54BC0C();
    v51 = v29;
  }

  return sub_1BE4D0E58(v51, v49, v50);
}

uint64_t sub_1BE4DD920@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54AF6C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1BE54AD8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE54C6BC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v11 = sub_1BE4C52BC(v4, qword_1EBDB0C08);
  (*(v5 + 16))(v8, v11, v4);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  v12 = sub_1BE54ADAC();
  return sub_1BE4C63F8(a1, 0, 1, v12);
}

uint64_t sub_1BE4DDB80(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  sub_1BE4BF11C(&qword_1EBDAC2D0, &qword_1BE54EFE0);
  return sub_1BE54C25C();
}

uint64_t sub_1BE4DDBE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54AF6C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1BE54AD8C();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1BE54C69C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = a1[3];
  v15 = a1[4];
  sub_1BE4C52F4(a1, v14);
  (*(v15 + 216))(__src, v14, v15);
  if (LOBYTE(__src[0]) == 128)
  {
    v16 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);

    return sub_1BE4C63F8(a2, 1, 1, v16);
  }

  else
  {
    sub_1BE54C68C();
    sub_1BE54C67C();
    v18 = a1[3];
    v19 = a1[4];
    sub_1BE4C52F4(a1, v18);
    (*(v19 + 16))(v18, v19);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v20 = sub_1BE4C52BC(v6, qword_1EBDB0C08);
    (*(v26 + 16))(v9, v20, v6);
    sub_1BE54AF2C();
    sub_1BE54ADBC();
    sub_1BE4DF820(a1, __src);
    v21 = swift_allocObject();
    memcpy((v21 + 16), __src, 0x48uLL);
    v22 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
    v23 = (a2 + *(v22 + 20));
    *v23 = sub_1BE4DFAF8;
    v23[1] = v21;
    v24 = (a2 + *(v22 + 24));
    *v24 = sub_1BE4D15F4;
    v24[1] = 0;
    return sub_1BE4C63F8(a2, 0, 1, v22);
  }
}

uint64_t sub_1BE4DDFA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54AF6C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1BE54AD8C();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1BE54C69C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = a1[3];
  v15 = a1[4];
  sub_1BE4C52F4(a1, v14);
  (*(v15 + 216))(__src, v14, v15);
  if (LOBYTE(__src[0]) == 128)
  {
    v16 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);

    return sub_1BE4C63F8(a2, 1, 1, v16);
  }

  else
  {
    sub_1BE54C68C();
    sub_1BE54C67C();
    v18 = a1[3];
    v19 = a1[4];
    sub_1BE4C52F4(a1, v18);
    (*(v19 + 16))(v18, v19);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v20 = sub_1BE4C52BC(v6, qword_1EBDB0C08);
    (*(v26 + 16))(v9, v20, v6);
    sub_1BE54AF2C();
    sub_1BE54ADBC();
    sub_1BE4DF820(a1, __src);
    v21 = swift_allocObject();
    memcpy((v21 + 16), __src, 0x48uLL);
    v22 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
    v23 = (a2 + *(v22 + 20));
    *v23 = sub_1BE4E01BC;
    v23[1] = v21;
    v24 = (a2 + *(v22 + 24));
    *v24 = sub_1BE4D15F4;
    v24[1] = 0;
    return sub_1BE4C63F8(a2, 0, 1, v22);
  }
}

uint64_t sub_1BE4DE364(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  sub_1BE4C6918(a1, v4);
  v4[40] = 0;
  v1(v4);
  return sub_1BE4C6AB4(v4);
}

uint64_t sub_1BE4DE3AC@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54B66C();
  v2 = sub_1BE54C1AC();
  KeyPath = swift_getKeyPath();
  result = sub_1BE4BF11C(&qword_1EBDAC310, &qword_1BE54F090);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_1BE4DE410()
{
  v0[2] = sub_1BE54C8CC();
  v0[3] = sub_1BE54C8BC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BE4DE4BC;

  return sub_1BE4DE640();
}

uint64_t sub_1BE4DE4BC()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_1BE4E01C4();
  *v6 = v5;

  v8 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE4DE5E8, v8, v7);
}

uint64_t sub_1BE4DE5E8()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 24);

  sub_1BE4E01E0();

  return v2();
}

uint64_t sub_1BE4DE640()
{
  v1[20] = v0;
  v2 = sub_1BE54B3DC();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  sub_1BE54C8CC();
  v1[24] = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();
  v1[25] = v6;
  v1[26] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BE4DE734, v6, v5);
}

uint64_t sub_1BE4DE734()
{
  if (qword_1EBDABA70 != -1)
  {
    swift_once();
  }

  if (byte_1EBDB0BF0 == 1)
  {
    sub_1BE4C6918(v0[20], (v0 + 15));
    v1 = type metadata accessor for ExternalAIAuthenticatorHelper();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    v0[27] = sub_1BE534D4C(v0 + 15);
    v4 = swift_task_alloc();
    v0[28] = v4;
    *v4 = v0;
    v4[1] = sub_1BE4DE930;
    v5 = v0[23];

    return sub_1BE533AE4();
  }

  else
  {
    v7 = v0[24];

    if (qword_1EBDABAB8 != -1)
    {
      sub_1BE4C7514();
    }

    v8 = sub_1BE54B2EC();
    sub_1BE4C52BC(v8, qword_1EBDB0C68);
    v9 = sub_1BE54B2BC();
    v10 = sub_1BE54C98C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BE4B8000, v9, v10, "Current process does not have Anvil entitlements, falling back to punchout", v11, 2u);
      MEMORY[0x1BFB48AC0](v11, -1, -1);
    }

    v12 = v0[20];

    sub_1BE4DEDB8();
    v13 = v0[23];

    sub_1BE4E01E0();

    return v14();
  }
}

uint64_t sub_1BE4DE930()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = v2;
  v4 = v2[28];
  v5 = *v1;
  sub_1BE4E01C4();
  *v6 = v5;
  v3[29] = v0;

  if (v0)
  {
    v7 = v3[25];
    v8 = v3[26];
    v9 = sub_1BE4DEB9C;
  }

  else
  {
    v10 = v3[27];
    (*(v3[22] + 8))(v3[23], v3[21]);

    v7 = v3[25];
    v8 = v3[26];
    v9 = sub_1BE4DEA58;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BE4DEA58()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 160);

  type metadata accessor for GenerativePartnerServiceAnalytics();
  sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE54E1A0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_1BE54C6DC();
  sub_1BE4C70B0();
  v4 = sub_1BE54C61C();
  sub_1BE52D9C4(3, v4);

  v6 = *(v2 + 40);
  v5 = *(v2 + 48);
  sub_1BE4C6918(v2, v0 + 72);
  *(v0 + 112) = 1;
  v6(v0 + 72);
  sub_1BE4C6AB4(v0 + 72);
  v7 = *(v0 + 184);

  sub_1BE4E01E0();

  return v8();
}

uint64_t sub_1BE4DEB9C()
{
  sub_1BE4E01D4();
  v1 = v0[27];

  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_1BE4DEC38;
  v3 = v0[29];
  v4 = v0[20];

  return sub_1BE4DF200(v3);
}

uint64_t sub_1BE4DEC38()
{
  sub_1BE4E01D4();
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *v0;
  sub_1BE4E01C4();
  *v4 = v3;

  v5 = *(v1 + 208);
  v6 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1BE4DED4C, v6, v5);
}

uint64_t sub_1BE4DED4C()
{
  sub_1BE4E01D4();
  v1 = v0[29];
  v2 = v0[24];

  v3 = v0[23];

  sub_1BE4E01E0();

  return v4();
}

void sub_1BE4DEDB8()
{
  v1 = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_1BE54AE3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativePartnerServiceAnalytics();
  sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
  inited = swift_initStackObject();
  v28 = xmmword_1BE54E1A0;
  *(inited + 16) = xmmword_1BE54E1A0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_1BE54C6DC();
  sub_1BE4C70B0();
  v12 = sub_1BE54C61C();
  sub_1BE52D9C4(3, v12);

  v13 = [objc_opt_self() defaultWorkspace];
  if (v13)
  {
    v14 = v13;
    sub_1BE4BF11C(&qword_1EBDAC308, &qword_1BE551D60);
    v15 = *(sub_1BE54ACDC() - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v28;
    sub_1BE54ACCC();
    v29 = v18;
    sub_1BE4E0A98(MEMORY[0x1E69E7CC0]);
    sub_1BE54AE1C();
    if (sub_1BE4C63BC(v5, 1, v6) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1BE54AE2C();

      v19 = *(v7 + 8);
      v19(v5, v6);
      v20 = sub_1BE54ADFC();
      v21 = sub_1BE54C61C();
      sub_1BE4E004C(v20, v21, v14);

      v22 = *(v1 + 40);
      v23 = *(v1 + 48);
      v29 = 2;
      v30 = 0u;
      v31 = 0u;
      v32 = 2;
      v22(&v29);

      sub_1BE4C6AB4(&v29);
      v19(v10, v6);
    }
  }

  else
  {
    if (qword_1EBDABAB8 != -1)
    {
      swift_once();
    }

    v24 = sub_1BE54B2EC();
    sub_1BE4C52BC(v24, qword_1EBDB0C68);
    v25 = sub_1BE54B2BC();
    v26 = sub_1BE54C98C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BE4B8000, v25, v26, "Punchout failed: LSApplicationWorkspace.default() returns nil", v27, 2u);
      MEMORY[0x1BFB48AC0](v27, -1, -1);
    }
  }
}

uint64_t sub_1BE4DF200(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1BE54CB8C();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  sub_1BE54C8CC();
  v2[23] = sub_1BE54C8BC();
  v7 = sub_1BE54C87C();
  v2[24] = v7;
  v2[25] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BE4DF2F4, v7, v6);
}

uint64_t sub_1BE4DF2F4()
{
  sub_1BE4E021C();
  if (qword_1EBDABAB8 != -1)
  {
    sub_1BE4C7514();
  }

  v1 = *(v0 + 144);
  v2 = sub_1BE54B2EC();
  sub_1BE4C52BC(v2, qword_1EBDB0C68);
  v3 = v1;
  v4 = sub_1BE54B2BC();
  v5 = sub_1BE54C98C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BE4B8000, v4, v5, "Anvil sign in failed: %{public}@", v7, 0xCu);
    sub_1BE4D0E58(v8, &qword_1EBDAC2F0, &qword_1BE54F880);
    MEMORY[0x1BFB48AC0](v8, -1, -1);
    MEMORY[0x1BFB48AC0](v7, -1, -1);
  }

  v11 = *(v0 + 144);

  *(v0 + 217) = sub_1BE537CBC(v11);
  type metadata accessor for GenerativePartnerServiceAnalytics();
  sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE54E1A0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_1BE54C6DC();
  v13 = *(v0 + 176);
  sub_1BE4C70B0();
  v14 = sub_1BE54C61C();
  sub_1BE52D9C4(3, v14);

  sub_1BE54CDDC();
  sub_1BE54CD2C();
  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  *v15 = v0;
  v15[1] = sub_1BE4DF5E4;
  v16 = *(v0 + 176);

  return sub_1BE4DFB14();
}

uint64_t sub_1BE4DF5E4()
{
  sub_1BE4E021C();
  v2 = *v1;
  v3 = *v1;
  sub_1BE4E01C4();
  *v4 = v3;
  v5 = v2[26];
  *v4 = *v1;

  v6 = v2[22];
  v7 = v2[21];
  v8 = v2[20];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[24];
    v10 = v3[25];
    v11 = sub_1BE4E01C0;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[24];
    v10 = v3[25];
    v11 = sub_1BE4DF76C;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1BE4DF76C()
{
  v1 = *(v0 + 217);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 152);

  v5 = *(v4 + 64);
  *(v0 + 128) = *(v4 + 56);
  *(v0 + 136) = v5;
  *(v0 + 216) = v1;
  sub_1BE4BF11C(&qword_1EBDAC2D0, &qword_1BE54EFE0);
  sub_1BE54C25C();

  sub_1BE4E01E0();

  return v6();
}

uint64_t sub_1BE4DF858()
{
  sub_1BE4E01D4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BE4DF8E8;

  return sub_1BE4DE410();
}

uint64_t sub_1BE4DF8E8()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1BE4E01C4();
  *v4 = v3;

  sub_1BE4E01E0();

  return v5();
}

unint64_t sub_1BE4DF9C8()
{
  result = qword_1EBDAC2E0;
  if (!qword_1EBDAC2E0)
  {
    sub_1BE4C5948(&qword_1EBDAC2C0, &qword_1BE54EFC8);
    sub_1BE4DFA9C(&qword_1EBDAC2E8, &qword_1EBDAC2D8, &qword_1BE54EFE8);
    sub_1BE4DFFAC(&qword_1EBDABCA0, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC2E0);
  }

  return result;
}

uint64_t sub_1BE4DFA9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BE4C5948(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE4DFB14()
{
  sub_1BE4E021C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_1BE54CB7C();
  *(v1 + 64) = v12;
  v13 = *(v12 - 8);
  *(v1 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BE4DFC10, 0, 0);
}

uint64_t sub_1BE4DFC10()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1BE54CB8C();
  v7 = sub_1BE4DFFAC(&qword_1EBDAC2F8, MEMORY[0x1E69E8820]);
  sub_1BE54CD0C();
  sub_1BE4DFFAC(&qword_1EBDAC300, MEMORY[0x1E69E87E8]);
  sub_1BE54CB9C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1BE4DFDA0;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1BE4DFDA0()
{
  sub_1BE4E021C();
  sub_1BE4E0228();
  v3 = v2;
  v4 = v2[14];
  v5 = v2[13];
  v6 = v2[12];
  v7 = v2[11];
  v8 = v2[8];
  v9 = *v1;
  sub_1BE4E01C4();
  *v10 = v9;
  v3[15] = v0;

  v6(v7, v8);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BE4DFF48, 0, 0);
  }

  else
  {
    v12 = v3[10];
    v11 = v3[11];

    sub_1BE4E01E0();

    return v13();
  }
}

uint64_t sub_1BE4DFF48()
{
  sub_1BE4E01D4();
  v2 = v0[10];
  v1 = v0[11];

  sub_1BE4E01E0();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1BE4DFFAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BE4DFFF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE54B9BC();
  *a1 = result;
  return result;
}

uint64_t sub_1BE4E0020(uint64_t *a1)
{
  v1 = *a1;

  return sub_1BE54B9CC();
}

id sub_1BE4E004C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BE54C5DC();

  v6 = [a3 openSensitiveURL:a1 withOptions:v5];

  return v6;
}

uint64_t sub_1BE4E00D0()
{
  sub_1BE4C58A8(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

unint64_t sub_1BE4E0118()
{
  result = qword_1EBDAC318;
  if (!qword_1EBDAC318)
  {
    sub_1BE4C5948(&qword_1EBDAC320, qword_1BE54F098);
    sub_1BE4DFA9C(&qword_1EBDABB88, &qword_1EBDABB90, &qword_1BE54DCB8);
    sub_1BE4DF9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC318);
  }

  return result;
}

uint64_t sub_1BE4E01E0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1BE4E01EC()
{

  return sub_1BE54ADBC();
}

double sub_1BE4E0234()
{
  result = *(v0 - 176);
  v2 = *(v0 - 168);
  return result;
}

uint64_t sub_1BE4E024C(uint64_t a1)
{
  v5 = *(v3 - 192);

  return sub_1BE4C6EFC(a1, v5, v1, v2);
}

void *sub_1BE4E026C(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 - 176), 0x48uLL);
}

uint64_t (*EnvironmentValues.settingsPaneDismissAction.getter())()
{
  sub_1BE4E0370();
  sub_1BE54B9FC();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1BE4E03C4;
}

unint64_t sub_1BE4E0370()
{
  result = qword_1EBDAC328;
  if (!qword_1EBDAC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC328);
  }

  return result;
}

uint64_t sub_1BE4E03C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t EnvironmentValues.settingsPaneDismissAction.setter(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_1BE4E0370();
  return sub_1BE54BA0C();
}

uint64_t (*EnvironmentValues.settingsPaneDismissAction.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = EnvironmentValues.settingsPaneDismissAction.getter();
  a1[1] = v3;
  return sub_1BE4E04BC;
}

uint64_t sub_1BE4E04BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = sub_1BE4E0628();
    sub_1BE4BF0D8(v5);
    v6 = sub_1BE4E0628();
    EnvironmentValues.settingsPaneDismissAction.setter(v6, v7);
    v8 = sub_1BE4E0628();

    return sub_1BE4DCEBC(v8);
  }

  else
  {
    v10 = sub_1BE4E0628();
    return EnvironmentValues.settingsPaneDismissAction.setter(v10, v11);
  }
}

uint64_t getEnumTagSinglePayload for GenerativePartnerSettingsPaneDismissActionKey(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for GenerativePartnerSettingsPaneDismissActionKey(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t static GenerativePartnerSettingsDeepLinks.deepLinkURL(action:queryItems:)(unsigned __int8 *a1)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v15 - v4;
  v6 = *a1;
  sub_1BE4BF11C(&qword_1EBDAC308, &qword_1BE551D60);
  v7 = *(sub_1BE54ACDC() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BE54E1A0;
  v11 = v10;
  sub_1BE54ACCC();

  v15[1] = v11;

  sub_1BE4E0A98(v12);
  sub_1BE54AE1C();
  v13 = sub_1BE54AE3C();
  result = sub_1BE4C63BC(v5, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1BE54AE2C();

    return (*(*(v13 - 8) + 8))(v5, v13);
  }

  return result;
}

uint64_t static GenerativePartnerSettingsDeepLinks.deepLinkURL(destination:)@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54ADDC();
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - v4;
  sub_1BE54AE1C();
  v6 = sub_1BE54AE3C();
  result = sub_1BE4C63BC(v5, 1, v6);
  if (result != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t GenerativePartnerSettingsDeepLinks.Action.rawValue.getter()
{
  result = 0x655365676E616863;
  switch(*v0)
  {
    case 1:
      result = 0x6E496E676973;
      break;
    case 2:
      result = 0x74754F6E676973;
      break;
    case 3:
      result = 0x5065646172677075;
      break;
    case 4:
      result = 0x6168437055746573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BE4E0A98(uint64_t a1)
{
  result = sub_1BE4E1F64(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BE542670(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1BE54ACDC();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BE4E0B88(uint64_t a1)
{
  result = sub_1BE4E1F64(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1BE542688(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t static GenerativePartnerSettingsDeepLinks.Destination.entityIdentifier(for:)@<X0>(BOOL *a1@<X8>)
{

  v2 = sub_1BE54CC0C();

  *a1 = v2 != 0;
  return result;
}

uint64_t GenerativePartnerSettingsDeepLinks.Destination.init(rawValue:)()
{
  sub_1BE4E1F54();
  v1 = sub_1BE54CC0C();

  *v0 = v1 != 0;
  return result;
}

uint64_t sub_1BE4E0D28(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return GenerativePartnerSettingsDeepLinks.Destination.init(rawValue:)();
}

GenerativePartnerServiceUI::GenerativePartnerSettingsDeepLinks::Action_optional __swiftcall GenerativePartnerSettingsDeepLinks.Action.init(rawValue:)(Swift::String rawValue)
{
  sub_1BE4E1F54();
  v2 = sub_1BE54CC0C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BE4E0DB8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1BE4DA100();
}

uint64_t sub_1BE4E0DE8@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativePartnerSettingsDeepLinks.Action.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GenerativePartnerServiceUI::GenerativePartnerSettingsDeepLinks::Origin_optional __swiftcall GenerativePartnerSettingsDeepLinks.Origin.init(rawValue:)(Swift::String rawValue)
{
  sub_1BE4E1F54();
  v2 = sub_1BE54CC0C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t GenerativePartnerSettingsDeepLinks.Origin.rawValue.getter()
{
  result = 0x54504774616863;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 1769105779;
      break;
    case 3:
      result = 0x54676E6974697277;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BE4E0F00()
{
  result = qword_1EBDAC330;
  if (!qword_1EBDAC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC330);
  }

  return result;
}

unint64_t sub_1BE4E0F58()
{
  result = qword_1EBDAC338;
  if (!qword_1EBDAC338)
  {
    sub_1BE4C5948(&qword_1EBDAC340, &qword_1BE54F1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC338);
  }

  return result;
}

unint64_t sub_1BE4E0FBC(uint64_t a1)
{
  result = sub_1BE4E0FE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BE4E0FE4()
{
  result = qword_1EBDAC348;
  if (!qword_1EBDAC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC348);
  }

  return result;
}

unint64_t sub_1BE4E103C()
{
  result = qword_1EBDAC350;
  if (!qword_1EBDAC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC350);
  }

  return result;
}

unint64_t sub_1BE4E1090(uint64_t a1)
{
  result = sub_1BE4E10B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BE4E10B8()
{
  result = qword_1EBDAC358;
  if (!qword_1EBDAC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC358);
  }

  return result;
}

unint64_t sub_1BE4E111C()
{
  result = qword_1EBDAC360;
  if (!qword_1EBDAC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC360);
  }

  return result;
}

unint64_t sub_1BE4E1194@<X0>(unint64_t *a1@<X8>)
{
  result = GenerativePartnerSettingsDeepLinks.Origin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BE4E11BC(uint64_t a1)
{
  result = sub_1BE4E11E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BE4E11E4()
{
  result = qword_1EBDAC368;
  if (!qword_1EBDAC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC368);
  }

  return result;
}

_BYTE *sub_1BE4E1244(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GenerativePartnerSettingsDeepLinks.Action(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativePartnerSettingsDeepLinks.Origin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GenerativePartnerSettingsDeepLinks.Origin(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BE4E1524(uint64_t a1, unint64_t a2)
{
  v32 = 63;
  v33 = 0xE100000000000000;
  v31 = &v32;

  v4 = sub_1BE4E1B68(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BE4E1F04, v30, a1, a2);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];
  }

  else
  {

    v9 = sub_1BE4E1780();
    v5 = v9;
    v6 = v10;
    v7 = v11;
    v8 = v12;
  }

  v32 = 47;
  v33 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v9);
  v29[2] = &v32;
  v13 = sub_1BE4E17B4(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1BE4E1F30, v29, v5, v6, v7, v8);
  v14 = *(v13 + 16);
  if (v14)
  {
    v32 = MEMORY[0x1E69E7CC0];
    result = sub_1BE52B7C8(0, v14, 0);
    v16 = 0;
    v17 = v32;
    v18 = (v13 + 56);
    while (v16 < *(v13 + 16))
    {
      v19 = *(v18 - 3);
      v20 = *(v18 - 2);
      v21 = *(v18 - 1);
      v22 = *v18;

      v23 = MEMORY[0x1BFB47C70](v19, v20, v21, v22);
      v25 = v24;

      v32 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_1BE52B7C8(v26 > 1, v27 + 1, 1);
        v17 = v32;
      }

      ++v16;
      *(v17 + 16) = v27 + 1;
      v28 = v17 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v18 += 4;
      if (v14 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1BE4E17B4(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v53[3] = a7;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v16 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v16 != v13)
  {
    v8 = a4;
    v51 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v49 = v10;
      while (1)
      {
        v17 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v10 = v49;
          goto LABEL_24;
        }

        v12 = a8;
        v18 = sub_1BE54CA0C();
        a8 = v19;
        v53[0] = v18;
        v53[1] = v19;
        v20 = a3(v53);
        if (v9)
        {

          return a8;
        }

        v21 = v20;

        if (v21)
        {
          break;
        }

        a8 = v12;
        v10 = sub_1BE54C9FC();
      }

      v23 = (v49 >> 14 == v17) & a2;
      a8 = v12;
      if (!v23)
      {
        if (v17 < v49 >> 14)
        {
          __break(1u);
          return result;
        }

        v50 = sub_1BE54CA1C();
        v45 = v25;
        v46 = v24;
        v44 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v51 + 16);
          sub_1BE541DB4();
          v51 = v30;
        }

        v27 = *(v51 + 16);
        if (v27 >= *(v51 + 24) >> 1)
        {
          sub_1BE541DB4();
          v51 = v31;
        }

        *(v51 + 16) = v27 + 1;
        v28 = (v51 + 32 * v27);
        v28[4] = v50;
        v28[5] = v46;
        v28[6] = v45;
        v28[7] = v44;
        a8 = v12;
      }

      v10 = sub_1BE54C9FC();
    }

    while (v23 || *(v51 + 16) != a1);
LABEL_24:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v51;
    }

    a8 = v51;
    if (v13 >= v10 >> 14)
    {
      v8 = sub_1BE54CA1C();
      v10 = v37;
      v12 = v38;
      v13 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_32:
      v14 = *(a8 + 16);
      v36 = *(a8 + 24);
LABEL_33:
      v11 = v14 + 1;
      if (v14 < v36 >> 1)
      {
LABEL_34:
        *(a8 + 16) = v11;
        v40 = (a8 + 32 * v14);
        v40[4] = v8;
        v40[5] = v10;
        v40[6] = v12;
        v40[7] = v13;
        return a8;
      }

LABEL_37:
      sub_1BE541DB4();
      a8 = v41;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    v42 = *(a8 + 16);
    sub_1BE541DB4();
    a8 = v43;
    goto LABEL_32;
  }

  if (v16 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v16)
    {
      v8 = sub_1BE54CA1C();
      v10 = v32;
      v12 = v33;
      v13 = v34;

      sub_1BE541DB4();
      a8 = v35;
      v14 = *(v35 + 16);
      v36 = *(v35 + 24);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_39;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BE4E1B68(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_1BE54C7DC();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_1BE541DB4();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1BE541DB4();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = sub_1BE54C7CC();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_1BE54C78C();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = sub_1BE54C7DC();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v49 + 16);
      sub_1BE541DB4();
      v49 = v28;
    }

    v12 = *(v49 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v49 + 24) >> 1)
    {
      sub_1BE541DB4();
      v49 = v29;
    }

    *(v49 + 16) = v11;
    v26 = (v49 + 32 * v12);
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = sub_1BE54C78C();
    if ((v22 & 1) == 0 && *(v49 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1BE54C7DC();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_1BE541DB4();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE4E1F7C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = EnvironmentValues.settingsPaneDismissAction.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1BE4D9304;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1BE4E1FEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BE4D92A8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1BE4BF0D8(v1);
  return EnvironmentValues.settingsPaneDismissAction.setter(v4, v3);
}

uint64_t sub_1BE4E2078()
{
  sub_1BE4E01D4();
  v1[15] = v2;
  v1[16] = v0;
  v3 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  v1[17] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  sub_1BE54C8CC();
  v1[19] = sub_1BE54C8BC();
  v6 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE4E213C, v6, v5);
}

uint64_t sub_1BE4E213C()
{
  v53 = v0;
  v1 = v0[19];
  v2 = v0[15];

  if (!v2 || (v3 = sub_1BE4E279C(v0[15])) == 0)
  {
    if (qword_1EBDABAB0 == -1)
    {
LABEL_17:
      v30 = sub_1BE54B2EC();
      sub_1BE4C52BC(v30, qword_1EBDB0C50);
      v31 = sub_1BE54B2BC();
      v32 = sub_1BE54C98C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1BE4B8000, v31, v32, "[Deep Links] Unable to convert resourceDictionary: NSDictionary to [String: Any]", v33, 2u);
        MEMORY[0x1BFB48AC0](v33, -1, -1);
      }

      goto LABEL_25;
    }

LABEL_30:
    sub_1BE4E43AC();
    goto LABEL_17;
  }

  v4 = v3;
  sub_1BE4BF11C(&qword_1EBDAC370, &qword_1BE550530);
  v5 = sub_1BE54CBDC();
  v6 = 0;
  v8 = v4 + 64;
  v7 = *(v4 + 64);
  v9 = *(v4 + 32);
  sub_1BE4E43EC();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v50 = v15 + 8;
  v51 = v15;
  v49 = v4;
  if ((v11 & v10) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v19 = v16 | (v6 << 6);
      v20 = (*(v4 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      sub_1BE4C6FB8(*(v4 + 56) + 32 * v19, (v0 + 2));
      sub_1BE4C6FB8((v0 + 2), (v0 + 6));

      if (swift_dynamicCast())
      {
        v23 = v0[13];
        v24 = v0[14];
      }

      else
      {
        v23 = 0;
        v24 = 0xE000000000000000;
      }

      sub_1BE4C58A8(v0 + 2);
      *(v50 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v25 = (v51[6] + 16 * v19);
      *v25 = v22;
      v25[1] = v21;
      v26 = (v51[7] + 16 * v19);
      *v26 = v23;
      v26[1] = v24;
      v27 = v51[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v5 = v51;
      v51[2] = v29;
      v4 = v49;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_5:
  v17 = v6;
  while (1)
  {
    v6 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v6 >= v14)
    {
      break;
    }

    v18 = *(v8 + 8 * v6);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v12 = (v18 - 1) & v18;
      goto LABEL_10;
    }
  }

  if (qword_1EBDABAB0 != -1)
  {
    sub_1BE4E43AC();
  }

  v34 = sub_1BE54B2EC();
  sub_1BE4C52BC(v34, qword_1EBDB0C50);

  v35 = sub_1BE54B2BC();
  v36 = sub_1BE54C97C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52 = v38;
    *v37 = 136446210;
    v39 = sub_1BE54C60C();
    v41 = sub_1BE4C5338(v39, v40, &v52);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1BE4B8000, v35, v36, "[Deep Links] resourceDictionary dump:\n%{public}s", v37, 0xCu);
    sub_1BE4C58A8(v38);
    MEMORY[0x1BFB48AC0](v38, -1, -1);
    MEMORY[0x1BFB48AC0](v37, -1, -1);
  }

  v42 = v0[17];
  v43 = v0[18];
  v44 = v0[16];
  sub_1BE54AECC();
  *(v43 + *(v42 + 20)) = v5;
  v45 = OBJC_IVAR____TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController_deepLinkParams;
  swift_beginAccess();
  sub_1BE4E3630(v43, v44 + v45);
  swift_endAccess();
LABEL_25:
  v46 = v0[18];

  sub_1BE4E01E0();

  return v47();
}

unint64_t sub_1BE4E255C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BE4BF11C(&qword_1EBDAC3A0, &qword_1BE54F510);
    v2 = sub_1BE54CBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  sub_1BE4E43EC();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          return v2;
        }

        v7 = *(a1 + 64 + 8 * v12);
        ++v11;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    sub_1BE4C6FB8(*(a1 + 56) + 32 * v13, v29);
    *&v28 = v15;
    *(&v28 + 1) = v16;
    v26[2] = v28;
    v27[0] = v29[0];
    v27[1] = v29[1];
    v17 = v28;
    sub_1BE4E3E7C(v27, v26);

    if (!swift_dynamicCast())
    {
      break;
    }

    v7 &= v7 - 1;
    result = sub_1BE52F67C();
    v18 = result;
    if (v19)
    {
      v20 = v2[6] + 16 * result;
      v21 = *(v20 + 8);
      *v20 = v17;

      *(v2[7] + v18) = v25 & 1;
      v11 = v12;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_20;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v17;
      *(v2[7] + result) = v25 & 1;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_21;
      }

      v2[2] = v24;
      v11 = v12;
    }
  }

  return 0;
}

unint64_t sub_1BE4E279C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BE4BF11C(&qword_1EBDAC3B0, &qword_1BE54F570);
    v2 = sub_1BE54CBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1BE4E42EC(*(a1 + 48) + 40 * v10, __src);
    sub_1BE4C6FB8(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1BE4E42EC(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1BE4C6FB8(&__dst[40], v22);
    sub_1BE4E4348(__dst, &qword_1EBDAC3B8, &qword_1BE54F578);
    v23 = v20;
    sub_1BE4E3E7C(v22, v24);
    v11 = v23;
    sub_1BE4E3E7C(v24, v25);
    sub_1BE4E3E7C(v25, &v23);
    result = sub_1BE52F67C();
    v12 = result;
    if (v13)
    {
      v14 = v2[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v2[7] + 32 * v12);
      sub_1BE4C58A8(v16);
      result = sub_1BE4E3E7C(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1BE4E3E7C(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  sub_1BE4E4348(__dst, &qword_1EBDAC3B8, &qword_1BE54F578);

  return 0;
}

uint64_t sub_1BE4E2ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1BE54C8CC();
  v3[5] = sub_1BE54C8BC();
  v5 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE4E2B78, v5, v4);
}

uint64_t sub_1BE4E2B78()
{
  sub_1BE4E4418();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 16);
    v5 = sub_1BE54C5FC();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 56) = v5;
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1BE4E2C6C;
  v8 = *(v0 + 32);

  return sub_1BE4E2078();
}

uint64_t sub_1BE4E2C6C()
{
  sub_1BE4E4418();
  sub_1BE4E0228();
  v2 = v1;
  v3 = v1[8];
  v4 = v1[7];
  v5 = v1[6];
  v6 = v1[4];
  v7 = *v0;
  sub_1BE4E01C4();
  *v8 = v7;

  if (v5)
  {
    v9 = v2[6];
    v9[2](v9);
    _Block_release(v9);
  }

  sub_1BE4E01E0();

  return v10();
}

uint64_t sub_1BE4E2DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1BE54C91C();
  sub_1BE4C63F8(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1BE54F538;
  v10[5] = v9;
  sub_1BE4E3864(0, 0, v7, &unk_1BE54F548, v10);
}

id GenerativePartnerSettingsPanelController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE54C6DC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GenerativePartnerSettingsPanelController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController_deepLinkParams];
  sub_1BE54AECC();
  *&v6[*(type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0) + 20)] = 0;
  if (a2)
  {
    v7 = sub_1BE54C6DC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for GenerativePartnerSettingsPanelController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id GenerativePartnerSettingsPanelController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GenerativePartnerSettingsPanelController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController_deepLinkParams];
  sub_1BE54AECC();
  *&v3[*(type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0) + 20)] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for GenerativePartnerSettingsPanelController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id GenerativePartnerSettingsPanelController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativePartnerSettingsPanelController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall GenerativePartnerSettingsPanelController.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE4BF11C(&qword_1EBDAC380, &qword_1BE54F470);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v37 - v12;
  v14 = type metadata accessor for GenerativePartnerSettingsPanelController();
  v38.receiver = v1;
  v38.super_class = v14;
  objc_msgSendSuper2(&v38, sel_viewDidLoad);
  v15 = OBJC_IVAR____TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController_deepLinkParams;
  swift_beginAccess();
  sub_1BE4E3D68(v1 + v15, v5);
  GenerativePartnerSettingsPanelView.init(identifiablePathParams:)(v5, v16, v17, v18, v19, v20, v21, v22, v37[0], v37[1], v37[2], v37[3], v38.receiver, v38.super_class, v39, v40, v41, v42, v43, v44);
  KeyPath = swift_getKeyPath();
  v24 = &v13[*(v7 + 44)];
  *v24 = KeyPath;
  v24[1] = sub_1BE4E348C;
  v24[2] = 0;
  sub_1BE4E4100(v13, v11, &qword_1EBDAC380, &qword_1BE54F470);
  v25 = objc_allocWithZone(sub_1BE4BF11C(&qword_1EBDAC388, qword_1BE54F4A0));
  v26 = sub_1BE54BB2C();
  v27 = [v26 view];
  if (v27)
  {
    v28 = v27;
    v29 = [v1 view];
    if (v29)
    {
      v30 = v29;
      [v29 addSubview_];

      v31 = [v1 view];
      if (v31)
      {
        v32 = v31;
        [v31 bounds];
        v34 = v33;
        v36 = v35;

        [v28 setFrame_];
        [v28 setAutoresizingMask_];
        [v1 addChildViewController_];
        [v26 didMoveToParentViewController_];

        sub_1BE4E4348(v13, &qword_1EBDAC380, &qword_1BE54F470);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1BE4E4348(v13, &qword_1EBDAC380, &qword_1BE54F470);
  }
}

void sub_1BE4E348C()
{
  v0 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v9 - v2;
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    sub_1BE54AE1C();
    v6 = sub_1BE54AE3C();
    v7 = 0;
    if (sub_1BE4C63BC(v3, 1, v6) != 1)
    {
      v7 = sub_1BE54ADFC();
      (*(*(v6 - 8) + 8))(v3, v6);
    }

    v8 = sub_1BE54C61C();
    sub_1BE4E004C(v7, v8, v5);
  }
}

uint64_t sub_1BE4E3630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4E3694(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1BE4E43A8;

  return v7();
}

uint64_t sub_1BE4E377C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1BE4DF8E8;

  return v8();
}

uint64_t sub_1BE4E3864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1BE4E4100(a3, v25 - v11, &qword_1EBDAC3A8, &qword_1BE550DA0);
  v13 = sub_1BE54C91C();
  if (sub_1BE4C63BC(v12, 1, v13) == 1)
  {
    sub_1BE4E4348(v12, &qword_1EBDAC3A8, &qword_1BE550DA0);
  }

  else
  {
    sub_1BE54C90C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_1BE54C87C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BE54C75C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1BE4E4348(a3, &qword_1EBDAC3A8, &qword_1BE550DA0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BE4E4348(a3, &qword_1EBDAC3A8, &qword_1BE550DA0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1BE4E3B40(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BE4E3C38;

  return v7(a1);
}

uint64_t sub_1BE4E3C38()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1BE4E01C4();
  *v4 = v3;

  sub_1BE4E01E0();

  return v5();
}

uint64_t type metadata accessor for GenerativePartnerSettingsPanelController()
{
  result = qword_1EBDAC390;
  if (!qword_1EBDAC390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE4E3D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4E3DD4()
{
  result = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(319);
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

_OWORD *sub_1BE4E3E7C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BE4E3E8C()
{
  sub_1BE4E4418();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BE4DF8E8;

  return sub_1BE4E2ADC(v2, v3, v4);
}

uint64_t sub_1BE4E3F3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BE4E43A8;

  return sub_1BE4E3694(v2, v3, v5);
}

uint64_t sub_1BE4E3FFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BE4E403C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_1BE4E4408(v7);
  *v8 = v9;
  v8[1] = sub_1BE4E43A8;

  return sub_1BE4E377C(a1, v3, v4, v6);
}

uint64_t sub_1BE4E4100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BE4BF11C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BE4E4168()
{
  sub_1BE4E4418();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1BE4E4408(v3);
  *v4 = v5;
  v6 = sub_1BE4E43CC(v4);

  return v7(v6);
}

uint64_t sub_1BE4E41FC()
{
  sub_1BE4E4418();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1BE4E4408(v3);
  *v4 = v5;
  v6 = sub_1BE4E43CC(v4);

  return v7(v6);
}

uint64_t sub_1BE4E4290(uint64_t a1)
{
  v2 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE4E4348(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BE4BF11C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BE4E43AC()
{

  return swift_once();
}

uint64_t sub_1BE4E43CC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_1BE4E4424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1BE4BF11C(&qword_1EBDAC660, &qword_1BE54F9A8);
  (*(*(v5 - 8) + 16))(a2, v4, v5);
  v6 = sub_1BE4BF11C(&qword_1EBDACA48, &qword_1BE54FCF0);
  v7 = v6[12];
  v8 = a1[1];
  sub_1BE4FF0AC();
  v9 = v6[16];
  v10 = a1[2];
  v11 = sub_1BE4BF11C(&qword_1EBDAC620, &qword_1BE54F968);
  (*(*(v11 - 8) + 16))(a2 + v9, v10, v11);
  v12 = v6[20];
  v13 = a1[3];
  sub_1BE4FF0AC();
  v14 = v6[24];
  v15 = a1[4];
  sub_1BE4FF0AC();
  v16 = v6[28];
  v17 = a1[5];
  return sub_1BE4FF0AC();
}

void GenerativePartnerSettingsPanelView.init(identifiablePathParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BE4FFB64();
  a19 = v20;
  a20 = v21;
  v102 = v22;
  v108 = v23;
  v24 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  v25 = sub_1BE4C7570(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1BE4C757C();
  sub_1BE4FFC48(v28);
  v105 = sub_1BE54AF6C();
  v29 = sub_1BE4C7500(v105);
  v107 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1BE4CE5E4();
  v104 = v33;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v90 - v35;
  v37 = sub_1BE54AD8C();
  v38 = sub_1BE4C7500(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1BE4C757C();
  v45 = v44 - v43;
  v106 = sub_1BE54C6BC();
  v46 = sub_1BE4C7500(v106);
  v109 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1BE4CE5E4();
  v100 = v50;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v90 - v52;
  sub_1BE4FFAA0();
  sub_1BE4FFEC8();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4();
  }

  sub_1BE4C52BC(v37, qword_1EBDB0C08);
  v101 = v40;
  v54 = *(v40 + 16);
  v55 = sub_1BE4FFC38();
  v54(v55);
  sub_1BE54AF2C();
  v56 = v108;
  sub_1BE4CE6EC();
  sub_1BE4FFEB0();
  v57 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v58 = v57[5];
  sub_1BE4FFA38();
  sub_1BE4FFE80();
  v59 = sub_1BE4FFC38();
  v54(v59);
  sub_1BE54AF2C();
  sub_1BE4CE6EC();
  sub_1BE4FFE68();
  v60 = v57[6];
  sub_1BE4FF90C();
  sub_1BE54C65C();
  v61 = sub_1BE4FFC38();
  v54(v61);
  sub_1BE54AF2C();
  v62 = v45;
  sub_1BE4CE6EC();
  sub_1BE4CE6D0();
  v63 = v56 + v57[7];
  *v63 = swift_getKeyPath();
  *(v63 + 8) = 0;
  *(v63 + 16) = 0;
  v64 = v57[8];
  *(v56 + v64) = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  swift_storeEnumTagMultiPayload();
  v65 = (v56 + v57[9]);
  v66 = type metadata accessor for SettingsViewModel(0);
  v103 = v37;
  sub_1BE4FFCE4(v66);
  v67 = SettingsViewModel.init()();
  sub_1BE4FF9BC(v67);
  sub_1BE54C23C();
  v68 = v113;
  v98 = v113;
  v99 = v112;
  *v65 = v112;
  v65[1] = v68;
  v69 = v57[10];
  sub_1BE4FFDF0();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA60();
  v70 = (v56 + v57[11]);
  v110 = 0;
  v111 = 0;
  sub_1BE4BF11C(&qword_1EBDAC3C8, &qword_1BE54F5F0);
  sub_1BE4FF9EC();
  sub_1BE54C23C();
  *v70 = sub_1BE4FFDB0();
  v70[1].n128_u64[0] = v71;
  v72 = v57[12];
  sub_1BE4FFDF0();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA60();
  v73 = v57[13];
  sub_1BE4FFDF0();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA60();
  v74 = v57[14];
  sub_1BE4FFDF0();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA60();
  v75 = (v56 + v57[15]);
  v110 = [objc_allocWithZone(type metadata accessor for LockupViewDelegate()) init];
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  v76 = v113;
  *v75 = v112;
  v75[1] = v76;
  v97 = v57;
  sub_1BE4FF98C(v57[16]);
  sub_1BE4FF9CC();
  if (qword_1EBDABA80 != -1)
  {
    sub_1BE4FF8DC();
  }

  v77 = qword_1EBDB0C00;
  v94 = qword_1EBDB0C00;
  sub_1BE54AF2C();
  v96 = *(v109 + 16);
  v78 = v100;
  v96(v100, v53, v106);
  v79 = v107;
  v91 = v53;
  v95 = *(v107 + 16);
  v95(v104, v36, v105);
  v80 = [v77 bundleURL];
  sub_1BE54AE0C();

  v92 = *MEMORY[0x1E6968DF8];
  v101 = *(v101 + 104);
  (v101)(v62);
  sub_1BE4FFD20();
  sub_1BE4FF96C();
  sub_1BE4CE6D0();
  v81 = *(v79 + 8);
  v107 = v79 + 8;
  v93 = v81;
  v82 = sub_1BE4D9800();
  v83(v82);
  v84 = *(v109 + 8);
  v109 += 8;
  v85 = v91;
  v86 = v106;
  v84(v91, v106);
  sub_1BE4FFD14(&a18);
  sub_1BE4FF9A4(v87);
  sub_1BE4FF9CC();
  sub_1BE54AF2C();
  v96(v78, v85, v86);
  v95(v104, v36, v105);
  v88 = [v94 bundleURL];
  sub_1BE54AE0C();

  (v101)(v62, v92, v103);
  sub_1BE4FFDE4(v108);
  sub_1BE4FF96C();
  sub_1BE4CE6D0();
  sub_1BE4FFD20();
  v89();
  v84(v85, v106);
  v112 = v99;
  v113 = v98;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE4E0628();
  sub_1BE4FCF80();
  sub_1BE5018B4();

  sub_1BE4FD560();
  sub_1BE4FFB4C();
}

uint64_t sub_1BE4E4CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54B9EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v16 - v9);
  v11 = *(type metadata accessor for GenerativePartnerSettingsPanelView() + 32);
  sub_1BE4FF0AC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1BE54B5BC();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = *v10;
    sub_1BE54C99C();
    v15 = sub_1BE54BE0C();
    sub_1BE54B2AC();

    sub_1BE54B9DC();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v6, v2);
  }
}

void GenerativePartnerSettingsPanelView.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BE4FFB64();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v86 = sub_1BE54AF6C();
  v25 = sub_1BE4C7500(v86);
  v94 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1BE4CE5E4();
  v93 = v29;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v30);
  v31 = sub_1BE4FFE28();
  v32 = sub_1BE4C7500(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1BE4C757C();
  v39 = v38 - v37;
  v92 = sub_1BE54C6BC();
  v40 = sub_1BE4C7500(v92);
  v95 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1BE4CE5E4();
  v91 = v44;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v80 - v46;
  sub_1BE4FFAA0();
  sub_1BE4FFEC8();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4();
  }

  sub_1BE4C52BC(v31, qword_1EBDB0C08);
  v88 = v34;
  v48 = *(v34 + 16);
  v49 = sub_1BE4FFD2C();
  v48(v49);
  sub_1BE54AF2C();
  sub_1BE4FF96C();
  sub_1BE4FFEB0();
  v50 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v51 = v50[5];
  sub_1BE4FFA38();
  sub_1BE4FFE80();
  v52 = sub_1BE4FFD2C();
  v48(v52);
  sub_1BE54AF2C();
  sub_1BE4FF96C();
  sub_1BE4FFE68();
  v53 = v50[6];
  sub_1BE4FF90C();
  sub_1BE54C65C();
  v54 = sub_1BE4FFD2C();
  v90 = v31;
  v48(v54);
  sub_1BE54AF2C();
  sub_1BE4FF96C();
  v87 = v39;
  sub_1BE4CE6D0();
  v55 = v24 + v50[7];
  *v55 = swift_getKeyPath();
  *(v55 + 8) = 0;
  *(v55 + 16) = 0;
  v56 = v50[8];
  *(v24 + v56) = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  swift_storeEnumTagMultiPayload();
  v57 = (v24 + v50[9]);
  v58 = type metadata accessor for SettingsViewModel(0);
  sub_1BE4FFCE4(v58);
  v59 = SettingsViewModel.init()();
  sub_1BE4FF9BC(v59);
  sub_1BE54C23C();
  v60 = v99;
  *v57 = v98;
  v57[1] = v60;
  v61 = v50[10];
  sub_1BE4FFD38();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA74();
  v62 = (v24 + v50[11]);
  v96 = 0;
  v97 = 0;
  sub_1BE4BF11C(&qword_1EBDAC3C8, &qword_1BE54F5F0);
  sub_1BE4FF9EC();
  sub_1BE54C23C();
  *v62 = sub_1BE4FFDB0();
  v62[1].n128_u64[0] = v63;
  v64 = v50[12];
  sub_1BE4FFD38();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA74();
  v65 = v50[13];
  sub_1BE4FFD38();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA74();
  v66 = v50[14];
  sub_1BE4FFD38();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA74();
  v67 = (v24 + v50[15]);
  v96 = [objc_allocWithZone(type metadata accessor for LockupViewDelegate()) init];
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  v68 = v99;
  *v67 = v98;
  v67[1] = v68;
  v80[1] = v50;
  sub_1BE4FF98C(v50[16]);
  sub_1BE4FF9CC();
  v89 = v24;
  if (qword_1EBDABA80 != -1)
  {
    sub_1BE4FF8DC();
  }

  v69 = qword_1EBDB0C00;
  v83 = qword_1EBDB0C00;
  sub_1BE54AF2C();
  v85 = *(v95 + 16);
  v85(v91, v47, v92);
  v70 = v94;
  v84 = *(v94 + 16);
  v71 = v86;
  (v84)(v93, v20, v86);
  v72 = [v69 bundleURL];
  v73 = v87;
  sub_1BE54AE0C();

  v81 = *MEMORY[0x1E6968DF8];
  v88 = *(v88 + 104);
  (v88)(v73);
  sub_1BE4FF96C();
  sub_1BE4CE6D0();
  v74 = *(v70 + 8);
  v94 = v70 + 8;
  v82 = v74;
  v74(v20, v71);
  v75 = *(v95 + 8);
  v95 += 8;
  v80[0] = v75;
  v76 = v92;
  v75(v47, v92);
  sub_1BE4FFD14(&a16);
  sub_1BE4FF9A4(v77);
  sub_1BE4FF9CC();
  sub_1BE54AF2C();
  v78 = sub_1BE4FFBD8();
  (v85)(v78);
  sub_1BE4FFB7C();
  v84();
  v79 = [v83 bundleURL];
  sub_1BE54AE0C();

  (v88)(v73, v81, v90);
  sub_1BE4FFDE4(v89);
  sub_1BE4FF96C();
  sub_1BE4CE6D0();
  v82(v20, v71);
  (v80[0])(v47, v76);
  sub_1BE4FFB4C();
}

void GenerativePartnerSettingsPanelView.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BE4FFB64();
  a19 = v20;
  a20 = v21;
  v100 = v22;
  v24 = v23;
  v99 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  v25 = sub_1BE4C7470(v99);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1BE4C757C();
  sub_1BE4FFC48(v28);
  v97 = sub_1BE54AF6C();
  v29 = sub_1BE4C7500(v97);
  v105 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1BE4CE5E4();
  v103 = v33;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v86 - v35;
  v37 = sub_1BE54AD8C();
  v38 = sub_1BE4C7500(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1BE4C757C();
  v45 = v44 - v43;
  v104 = sub_1BE54C6BC();
  v46 = sub_1BE4C7500(v104);
  v106 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1BE4CE5E4();
  v95 = v50;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v86 - v52;
  sub_1BE4FFAA0();
  sub_1BE4FFEC8();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4();
  }

  sub_1BE4C52BC(v37, qword_1EBDB0C08);
  v96 = v40;
  v54 = *(v40 + 16);
  sub_1BE4FFB7C();
  v54();
  sub_1BE54AF2C();
  sub_1BE4FF96C();
  sub_1BE4FFEB0();
  v55 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v56 = v55[5];
  sub_1BE4FFA38();
  sub_1BE4FFE80();
  sub_1BE4FFB7C();
  v54();
  sub_1BE54AF2C();
  sub_1BE4FF96C();
  sub_1BE4FFE68();
  v57 = v55[6];
  sub_1BE4FF90C();
  sub_1BE54C65C();
  sub_1BE4FFB7C();
  v54();
  sub_1BE54AF2C();
  sub_1BE4FF96C();
  sub_1BE4CE6D0();
  v58 = v24 + v55[7];
  *v58 = swift_getKeyPath();
  *(v58 + 8) = 0;
  *(v58 + 16) = 0;
  v59 = v55[8];
  *(v24 + v59) = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  swift_storeEnumTagMultiPayload();
  v60 = (v24 + v55[9]);
  v61 = type metadata accessor for SettingsViewModel(0);
  v102 = v37;
  sub_1BE4FFCE4(v61);
  v62 = SettingsViewModel.init()();
  sub_1BE4FF9BC(v62);
  sub_1BE54C23C();
  v63 = v110;
  v94 = v109;
  *v60 = v109;
  v60[1] = v63;
  v93 = v63;
  v64 = v55[10];
  sub_1BE4FFD98();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v65 = (v24 + v55[11]);
  v107 = 0;
  v108 = 0;
  sub_1BE4BF11C(&qword_1EBDAC3C8, &qword_1BE54F5F0);
  sub_1BE4FF9EC();
  sub_1BE54C23C();
  *v65 = sub_1BE4FFDB0();
  v65[1].n128_u64[0] = v66;
  v67 = v55[12];
  sub_1BE4FFD98();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v68 = v55[13];
  sub_1BE4FFD98();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v69 = v55[14];
  sub_1BE4FFD98();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v70 = (v24 + v55[15]);
  v107 = [objc_allocWithZone(type metadata accessor for LockupViewDelegate()) init];
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  v71 = v110;
  *v70 = v109;
  v70[1] = v71;
  v92 = v55;
  sub_1BE4FF98C(v55[16]);
  sub_1BE4FF9CC();
  v101 = v24;
  if (qword_1EBDABA80 != -1)
  {
    sub_1BE4FF8DC();
  }

  v72 = qword_1EBDB0C00;
  v89 = qword_1EBDB0C00;
  sub_1BE54AF2C();
  v91 = *(v106 + 16);
  v73 = v95;
  v91(v95, v53, v104);
  v74 = v105;
  v75 = v36;
  v76 = *(v105 + 16);
  v86 = v105 + 16;
  v90 = v76;
  v77 = v36;
  v78 = v97;
  (v76)(v103, v77);
  v79 = [v72 bundleURL];
  sub_1BE54AE0C();

  v87 = *MEMORY[0x1E6968DF8];
  v96 = *(v96 + 104);
  (v96)(v45);
  sub_1BE4CE6EC();
  sub_1BE4CE6D0();
  v80 = *(v74 + 8);
  v105 = v74 + 8;
  v88 = v80;
  v80(v75, v78);
  v81 = *(v106 + 8);
  v106 += 8;
  v82 = v104;
  v81(v53, v104);
  sub_1BE4FFD14(&a17);
  sub_1BE4FF9A4(v83);
  sub_1BE4FF9CC();
  sub_1BE54AF2C();
  v91(v73, v53, v82);
  v90(v103, v75, v78);
  v84 = [v89 bundleURL];
  sub_1BE54AE0C();

  (v96)(v45, v87, v102);
  sub_1BE4FFDE4(v101);
  sub_1BE4CE6EC();
  sub_1BE4CE6D0();
  v88(v75, v78);
  v81(v53, v104);
  v109 = v94;
  v110 = v93;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v85 = v98;
  sub_1BE54AECC();
  *(v85 + *(v99 + 20)) = v100;
  sub_1BE5018B4();

  sub_1BE4FFB4C();
}

void GenerativePartnerSettingsPanelView.init(viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BE4FFB64();
  a19 = v21;
  a20 = v22;
  v95 = v23;
  v99 = v24;
  v91 = sub_1BE54AF6C();
  v25 = sub_1BE4C7500(v91);
  v94 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1BE4CE5E4();
  v98 = v29;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v30);
  v31 = sub_1BE4FFE28();
  v32 = sub_1BE4C7500(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1BE4C757C();
  v39 = v38 - v37;
  v40 = sub_1BE54C6BC();
  v100 = sub_1BE4C7500(v40);
  v101 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v100);
  sub_1BE4CE5E4();
  v97 = v44;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v79 - v46;
  sub_1BE4FFAA0();
  sub_1BE4FFEC8();
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4();
  }

  sub_1BE4C52BC(v31, qword_1EBDB0C08);
  v93 = v34;
  v48 = *(v34 + 16);
  sub_1BE4FFB7C();
  v48();
  sub_1BE54AF2C();
  v49 = v99;
  sub_1BE4FF97C();
  sub_1BE4FFEB0();
  v50 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v51 = v50[5];
  sub_1BE4FFA38();
  sub_1BE4FFE80();
  sub_1BE4FFB7C();
  v48();
  sub_1BE54AF2C();
  sub_1BE4FF97C();
  sub_1BE4FFE68();
  v52 = v50[6];
  sub_1BE4FF90C();
  sub_1BE54C65C();
  sub_1BE4FFB7C();
  v48();
  sub_1BE54AF2C();
  sub_1BE4FF97C();
  v92 = v39;
  sub_1BE4CE6D0();
  v53 = v49 + v50[7];
  *v53 = swift_getKeyPath();
  *(v53 + 8) = 0;
  *(v53 + 16) = 0;
  v54 = v50[8];
  *(v49 + v54) = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  swift_storeEnumTagMultiPayload();
  v96 = v31;
  v55 = v50[9];
  v56 = type metadata accessor for SettingsViewModel(0);
  sub_1BE4FFCE4(v56);
  v57 = SettingsViewModel.init()();
  sub_1BE4FF9BC(v57);
  v90 = v56;
  sub_1BE54C23C();
  v88 = v104;
  v89 = v105;
  v58 = v50[10];
  sub_1BE4FFDFC();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v59 = (v49 + v50[11]);
  v102 = 0;
  v103 = 0;
  sub_1BE4BF11C(&qword_1EBDAC3C8, &qword_1BE54F5F0);
  sub_1BE4FF9EC();
  sub_1BE54C23C();
  *v59 = sub_1BE4FFDB0();
  v59[1].n128_u64[0] = v60;
  v61 = v50[12];
  sub_1BE4FFDFC();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v62 = v50[13];
  sub_1BE4FFDFC();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v63 = v50[14];
  sub_1BE4FFDFC();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v64 = (v49 + v50[15]);
  v102 = [objc_allocWithZone(type metadata accessor for LockupViewDelegate()) init];
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  v65 = v105;
  *v64 = v104;
  v64[1] = v65;
  v83 = v50;
  sub_1BE4FF98C(v50[16]);
  sub_1BE4FF9CC();
  if (qword_1EBDABA80 != -1)
  {
    sub_1BE4FF8DC();
  }

  v87 = (v99 + v55);
  v66 = qword_1EBDB0C00;
  v82 = qword_1EBDB0C00;
  sub_1BE54AF2C();
  v86 = *(v101 + 16);
  v86(v97, v47, v100);
  v67 = v94;
  v80 = v47;
  v85 = *(v94 + 16);
  v68 = v91;
  v85(v98, v20, v91);
  v69 = [v66 bundleURL];
  v70 = v92;
  sub_1BE54AE0C();

  v81 = *MEMORY[0x1E6968DF8];
  v93 = *(v93 + 104);
  (v93)(v70);
  sub_1BE4FFD20();
  sub_1BE4CE6EC();
  sub_1BE4CE6D0();
  v94 = *(v67 + 8);
  (v94)(v20, v68);
  v71 = *(v101 + 8);
  v101 += 8;
  v84 = v71;
  v72 = v80;
  v73 = v100;
  v71(v80, v100);
  sub_1BE4FFD14(&a13);
  sub_1BE4FF9A4(v74);
  sub_1BE4FF9CC();
  sub_1BE54AF2C();
  v86(v97, v72, v73);
  v85(v98, v20, v68);
  v75 = [v82 bundleURL];
  sub_1BE54AE0C();

  (v93)(v70, v81, v96);
  sub_1BE4FFDE4(v99);
  sub_1BE4FF97C();
  sub_1BE4CE6D0();
  (v94)(v20, v68);
  sub_1BE4FFD20();
  v76();
  v102 = v95;
  sub_1BE4FF9EC();
  sub_1BE54C23C();

  v77 = v105;
  v78 = v87;
  *v87 = v104;
  v78[1] = v77;
  sub_1BE4FFB4C();
}

void GenerativePartnerSettingsPanelView.body.getter()
{
  sub_1BE4FFB64();
  v84 = v0;
  v82 = v1;
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  sub_1BE4C7570(v2);
  v4 = *(v3 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v70 - v6;
  v83 = sub_1BE54AE3C();
  v8 = sub_1BE4C7500(v83);
  v81 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1BE4CE5E4();
  v77 = v12;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v70 - v14;
  v15 = sub_1BE54C3CC();
  v16 = sub_1BE4C7500(v15);
  v85 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1BE4C757C();
  v22 = (v21 - v20);
  v23 = sub_1BE4BF11C(&qword_1EBDAC3D8, &qword_1BE54F608);
  sub_1BE4C7500(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v70 - v29;
  v75 = sub_1BE4BF11C(&qword_1EBDAC3E0, &qword_1BE54F610);
  sub_1BE4C7500(v75);
  v73 = v31;
  v33 = *(v32 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v70 - v35;
  v78 = sub_1BE4BF11C(&qword_1EBDAC3E8, &qword_1BE54F618);
  sub_1BE4C7500(v78);
  v76 = v37;
  v39 = *(v38 + 64);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v40);
  sub_1BE4FFC48(v41);
  v86 = v0;
  sub_1BE4BF11C(&qword_1EBDAC3F0, &qword_1BE54F620);
  sub_1BE4FC524();
  sub_1BE54BF2C();
  v42 = sub_1BE4FF864(&qword_1EBDAC488, &qword_1EBDAC3D8);
  v72 = v36;
  sub_1BE54BF9C();
  v43 = *(v25 + 8);
  v71 = v23;
  v43(v30, v23);
  strcpy(v22, "com.apple.siri");
  v22[15] = -18;
  v44 = *MEMORY[0x1E69CA990];
  v45 = *(v85 + 104);
  v80 = v15;
  v45(v22, v44, v15);
  sub_1BE4BF11C(&qword_1EBDAC490, &qword_1BE54F670);
  sub_1BE4D97A4();
  v46 = sub_1BE54ADAC();
  sub_1BE4C7500(v46);
  v48 = v47;
  v50 = *(v49 + 72);
  v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1BE54E1A0;
  (*(v48 + 16))(v52 + v51, v84, v46);
  sub_1BE4FFAA0();
  sub_1BE54AE1C();
  v53 = v7;
  v54 = v83;
  if (sub_1BE4C63BC(v7, 1, v83) == 1)
  {
    __break(1u);
  }

  else
  {
    v55 = *(type metadata accessor for GenerativePartnerSettingsPanelView() + 20);
    v56 = v81;
    v57 = *(v81 + 32);
    v58 = v77;
    v57(v77, v53, v54);
    v59 = v79;
    v57(v79, v58, v54);
    v87 = v71;
    v88 = v42;
    swift_getOpaqueTypeConformance2();
    v61 = v74;
    v60 = v75;
    v62 = v72;
    sub_1BE54BFAC();

    (*(v56 + 8))(v59, v54);
    (*(v85 + 8))(v22, v80);
    (*(v73 + 8))(v62, v60);
    v63 = sub_1BE54C39C();
    v65 = v64;
    v66 = sub_1BE4BF11C(&qword_1EBDAC498, &qword_1BE54F678);
    v67 = v82;
    v68 = v82 + *(v66 + 36);
    sub_1BE4E69B8(v68);
    v69 = (v68 + *(sub_1BE4BF11C(&qword_1EBDAC4A0, &qword_1BE54F680) + 36));
    *v69 = v63;
    v69[1] = v65;
    (*(v76 + 32))(v67, v61, v78);
    sub_1BE4FFB4C();
  }
}

uint64_t sub_1BE4E69B8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1BE4BF11C(&qword_1EBDAC4F0, "ު");
  v21 = *(v1 - 8);
  v2 = v21;
  v3 = *(v21 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = sub_1BE4BF11C(&qword_1EBDAC4F8, &qword_1BE54F728);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  sub_1BE4E6C00(&v21 - v14);
  sub_1BE4E7E44(v8);
  sub_1BE4FF0AC();
  v16 = *(v2 + 16);
  v16(v6, v8, v1);
  v17 = v22;
  sub_1BE4FF0AC();
  v18 = sub_1BE4BF11C(&qword_1EBDAC500, &qword_1BE54F730);
  v16((v17 + *(v18 + 48)), v6, v1);
  v19 = *(v21 + 8);
  v19(v8, v1);
  sub_1BE4FF104(v15, &qword_1EBDAC4F8);
  v19(v6, v1);
  return sub_1BE4FF104(v13, &qword_1EBDAC4F8);
}

uint64_t sub_1BE4E6C00@<X0>(uint64_t a1@<X8>)
{
  v124 = a1;
  v123 = sub_1BE4BF11C(&qword_1EBDAC558, &qword_1BE54F7D8);
  v122 = *(v123 - 8);
  v2 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v103 - v3;
  v120 = sub_1BE4BF11C(&qword_1EBDAC560, &qword_1BE54F7E0);
  v119 = *(v120 - 8);
  v4 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v103 - v5;
  v117 = sub_1BE4BF11C(&qword_1EBDAC568, &qword_1BE54F7E8);
  v116 = *(v117 - 8);
  v6 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v131 = &v103 - v7;
  v130 = sub_1BE4BF11C(&qword_1EBDAC570, &qword_1BE54F7F0);
  v115 = *(v130 - 8);
  v8 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v103 - v9;
  v127 = sub_1BE4BF11C(&qword_1EBDAC578, &qword_1BE54F7F8);
  v10 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v114 = &v103 - v11;
  v113 = sub_1BE4BF11C(&qword_1EBDAC580, &qword_1BE54F800);
  v112 = *(v113 - 8);
  v12 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v14 = &v103 - v13;
  v15 = sub_1BE54C1BC();
  sub_1BE54C39C();
  sub_1BE54B69C();
  v110 = v144;
  LODWORD(v111) = v145;
  v125 = v146;
  LODWORD(v126) = v147;
  v132 = v148;
  v135 = v149;
  v129 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v16 = *(v129 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v134 = v1;
  sub_1BE4FCF80();
  sub_1BE54C8CC();
  v18 = sub_1BE54C8BC();
  v19 = *(v16 + 80);
  v109 = ~v19;
  v20 = (v19 + 32) & ~v19;
  v133 = v17;
  v136 = v19;
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 16) = v18;
  *(v21 + 24) = v22;
  sub_1BE4FCFD8(&v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v23 = sub_1BE54C91C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = &v103 - v26;
  sub_1BE54C8EC();
  if (sub_1BE54A794(2, 26, 4, 0))
  {
    v107 = sub_1BE54B78C();
    v108 = &v103;
    v106 = *(v107 - 8);
    v28 = *(v106 + 64);
    MEMORY[0x1EEE9AC00](v107);
    v105 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v139 = 0;
    v140 = 0xE000000000000000;
    sub_1BE54CADC();

    v139 = 0xD000000000000044;
    v140 = 0x80000001BE553DA0;
    v137 = 217;
    v30 = sub_1BE54CC9C();
    MEMORY[0x1BFB47CA0](v30);

    v104 = v15;
    MEMORY[0x1EEE9AC00](v31);
    (*(v24 + 16))(&v103 - v26, &v103 - v26, v23);
    v32 = v105;
    sub_1BE54B77C();
    (*(v24 + 8))(v27, v23);
    v33 = sub_1BE4BF11C(&qword_1EBDABCA8, &qword_1BE54DD68);
    v34 = (*(v106 + 32))(&v14[*(v33 + 36)], v32, v107);
    v35 = v110;
    *v14 = v104;
  }

  else
  {
    v37 = &v14[*(sub_1BE4BF11C(&qword_1EBDABCB0, &qword_1BE54DD70) + 36)];
    v38 = sub_1BE54B73C();
    v34 = (*(v24 + 32))(&v37[*(v38 + 20)], &v103 - v26, v23);
    *v37 = &unk_1BE54F810;
    *(v37 + 1) = v21;
    v35 = v110;
    *v14 = v15;
  }

  *(v14 + 1) = v35;
  v14[16] = v111;
  *(v14 + 3) = v125;
  v14[32] = v126;
  v36 = v135;
  *(v14 + 5) = v132;
  *(v14 + 6) = v36;
  v39 = v133;
  MEMORY[0x1EEE9AC00](v34);
  v125 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v103 - v125;
  v126 = type metadata accessor for GenerativePartnerSettingsPanelView;
  v41 = v134;
  sub_1BE4FCF80();
  v135 = ((v136 + 16) & v109) + v39;
  v42 = (v136 + 16) & v109;
  v43 = swift_allocObject();
  v132 = v42;
  sub_1BE4FCFD8(v40, v43 + v42);
  v44 = v114;
  (*(v112 + 32))(v114, v14, v113);
  v45 = (v44 + *(v127 + 36));
  *v45 = sub_1BE4FD1D8;
  v45[1] = v43;
  v45[2] = 0;
  v45[3] = 0;
  v46 = (v41 + *(v129 + 36));
  v48 = *v46;
  v47 = v46[1];
  v113 = v48;
  v112 = v47;
  v139 = v48;
  v140 = v47;
  v111 = sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v49 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  v110 = &v103;
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1BE5017DC();

  v108 = &v103;
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v103 - v125;
  sub_1BE4FCF80();
  v53 = swift_allocObject();
  sub_1BE4FCFD8(v52, v53 + v42);
  v109 = sub_1BE4FD244();
  v54 = sub_1BE4FEB10(&qword_1EBDAC590, type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams);
  v55 = v127;
  sub_1BE54C16C();

  sub_1BE4FD560();
  sub_1BE4FF104(v44, &qword_1EBDAC578);
  v56 = sub_1BE54B5BC();
  v114 = &v103;
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v103 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1BE4E4CDC(v60);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v103 - v125;
  sub_1BE4FCF80();
  v63 = swift_allocObject();
  sub_1BE4FCFD8(v62, v63 + v132);
  v139 = v55;
  v140 = v49;
  v141 = v109;
  v142 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = sub_1BE4FEB10(&qword_1EBDAC598, MEMORY[0x1E697BE48]);
  v66 = v130;
  v67 = v128;
  sub_1BE54C15C();

  v68 = *(v57 + 8);
  v127 = v56;
  v68(v60, v56);
  (*(v115 + 8))(v67, v66);
  v139 = v113;
  v140 = v112;
  sub_1BE54C24C();
  sub_1BE5010B4(&v139);

  v69 = v142;
  if (v142)
  {
    v70 = v143;
    v71 = sub_1BE4C52F4(&v139, v142);
    v72 = *(v69 - 8);
    v73 = *(v72 + 64);
    MEMORY[0x1EEE9AC00](v71);
    v75 = &v103 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v75);
    sub_1BE4FF104(&v139, &qword_1EBDABAF8);
    v76 = (*(v70 + 8))(v69, v70);
    v78 = v77;
    v79 = (*(v72 + 8))(v75, v69);
  }

  else
  {
    v79 = sub_1BE4FF104(&v139, &qword_1EBDABAF8);
    v76 = 0;
    v78 = 0;
  }

  v137 = v76;
  v138 = v78;
  v80 = v133;
  MEMORY[0x1EEE9AC00](v79);
  v128 = ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = (&v103 - v128);
  v126 = type metadata accessor for GenerativePartnerSettingsPanelView;
  v82 = v134;
  sub_1BE4FCF80();
  v83 = swift_allocObject();
  sub_1BE4FCFD8(v81, v83 + v132);
  v125 = sub_1BE4BF11C(&qword_1EBDAC3C8, &qword_1BE54F5F0);
  v139 = v130;
  v140 = v127;
  v141 = OpaqueTypeConformance2;
  v142 = v65;
  v130 = MEMORY[0x1E6981440];
  v84 = swift_getOpaqueTypeConformance2();
  v85 = sub_1BE4FD3F4();
  v86 = v118;
  v87 = v117;
  v88 = v131;
  sub_1BE54C15C();

  (*(v116 + 8))(v88, v87);
  v89 = (v82 + *(v129 + 40));
  v90 = *v89;
  v91 = *(v89 + 1);
  LOBYTE(v139) = v90;
  v140 = v91;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  v92 = sub_1BE54C24C();
  v131 = &v103;
  MEMORY[0x1EEE9AC00](v92);
  v93 = v128;
  sub_1BE4FCF80();
  v94 = swift_allocObject();
  v95 = v132;
  sub_1BE4FCFD8(&v103 - v93, v94 + v132);
  v139 = v87;
  v140 = v125;
  v141 = v84;
  v142 = v85;
  swift_getOpaqueTypeConformance2();
  v96 = v121;
  v97 = v120;
  sub_1BE54C16C();

  v98 = (*(v119 + 8))(v86, v97);
  MEMORY[0x1EEE9AC00](v98);
  sub_1BE4FCF80();
  v99 = swift_allocObject();
  sub_1BE4FCFD8(&v103 - v93, v99 + v95);
  v100 = v124;
  (*(v122 + 32))(v124, v96, v123);
  result = sub_1BE4BF11C(&qword_1EBDAC4F8, &qword_1BE54F728);
  v102 = (v100 + *(result + 36));
  *v102 = 0;
  v102[1] = 0;
  v102[2] = sub_1BE4FD488;
  v102[3] = v99;
  return result;
}

uint64_t sub_1BE4E7E44@<X0>(uint64_t a1@<X8>)
{
  v117 = a1;
  v1 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v114 = *(v1 - 8);
  v2 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v115 = v3;
  v116 = v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE54C69C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v104 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1BE54AF6C();
  v109 = *(v110 - 8);
  v7 = *(v109 + 64);
  v8 = MEMORY[0x1EEE9AC00](v110);
  v108 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v90 - v10;
  v12 = sub_1BE54AD8C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1BE54C6BC();
  v105 = *(v106 - 8);
  v17 = *(v105 + 64);
  v18 = MEMORY[0x1EEE9AC00](v106);
  v103 = v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v90 - v20;
  v130 = sub_1BE54ADAC();
  v132 = *(v130 - 8);
  v22 = *(v132 + 64);
  v23 = MEMORY[0x1EEE9AC00](v130);
  v129 = v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v90 - v25;
  v126 = sub_1BE4BF11C(&qword_1EBDAC508, &qword_1BE54F738);
  v102 = *(v126 - 8);
  v27 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v124 = v90 - v28;
  v111 = sub_1BE4BF11C(&qword_1EBDAC510, &qword_1BE54F740);
  v107 = *(v111 - 8);
  v29 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v127 = v90 - v30;
  v113 = sub_1BE4BF11C(&qword_1EBDAC518, &qword_1BE54F748);
  v112 = *(v113 - 8);
  v31 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v128 = v90 - v32;
  v119 = sub_1BE54C1BC();
  sub_1BE54C39C();
  sub_1BE54B69C();
  v33 = v145;
  v34 = v146;
  v122 = v147;
  LODWORD(v121) = v148;
  v92 = v149;
  v91 = v150;
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v97 = sub_1BE4C52BC(v12, qword_1EBDB0C08);
  v101 = v13;
  v35 = *(v13 + 16);
  v98 = v13 + 16;
  OpaqueTypeConformance2 = v35;
  v35(v16, v97, v12);
  sub_1BE54AF2C();
  v118 = v21;
  sub_1BE54ADBC();
  v36 = (v131 + *(v1 + 36));
  v38 = *v36;
  v37 = v36[1];
  v96 = v38;
  v95 = v37;
  v142 = v38;
  v143 = v37;
  v94 = sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v125 = v1;
  sub_1BE54C26C();
  v123 = v11;
  v39 = v134;
  v40 = v135;
  v41 = v136;
  swift_getKeyPath();
  v133 = v26;
  v142 = v39;
  v143 = v40;
  v144 = v41;
  v93 = sub_1BE4BF11C(&qword_1EBDAC520, &qword_1BE54F778);
  sub_1BE54C31C();

  v120 = v12;
  v42 = v16;
  v90[1] = v141;

  v134 = v119;
  v135 = v33;
  LOBYTE(v136) = v34;
  v137 = v122;
  LOBYTE(v138) = v121;
  v139 = v92;
  v140 = v91;
  v43 = v132;
  v44 = v132 + 16;
  v122 = *(v132 + 16);
  v122(v129, v133, v130);
  v45 = sub_1BE54BF7C();
  v47 = v46;
  LOBYTE(v41) = v48;
  v91 = sub_1BE4BF11C(&qword_1EBDAC528, &qword_1BE54F780);
  v92 = sub_1BE4FCEFC();
  sub_1BE54C10C();
  sub_1BE4C68C8(v45, v47, v41 & 1);

  v49 = *(v43 + 8);
  v132 = v43 + 8;
  v121 = v49;
  v50 = v130;
  v49(v133, v130);

  sub_1BE54C65C();
  OpaqueTypeConformance2(v42, v97, v120);
  sub_1BE54AF2C();
  v100 = v42;
  sub_1BE54ADBC();
  v142 = v96;
  v143 = v95;
  sub_1BE54C26C();
  v51 = v134;
  v52 = v135;
  v53 = v136;
  swift_getKeyPath();
  v142 = v51;
  v143 = v52;
  v144 = v53;
  sub_1BE54C31C();

  LODWORD(v98) = v141;

  v119 = v44;
  v122(v129, v133, v50);
  v54 = sub_1BE54BF7C();
  v56 = v55;
  LOBYTE(v53) = v57;
  v134 = v91;
  v135 = MEMORY[0x1E6981E70];
  v136 = MEMORY[0x1E6981148];
  v137 = v92;
  v138 = MEMORY[0x1E6981E60];
  v139 = MEMORY[0x1E6981138];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v126;
  v59 = v124;
  sub_1BE54C10C();
  sub_1BE4C68C8(v54, v56, v53 & 1);

  v121(v133, v130);
  (*(v102 + 8))(v59, v58);
  sub_1BE54C68C();
  sub_1BE54C67C();
  sub_1BE4E92F8();
  sub_1BE54C66C();

  sub_1BE54C67C();
  v60 = v118;
  sub_1BE54C6AC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v61 = qword_1EBDB0C00;
  v62 = v123;
  sub_1BE54AF2C();
  v63 = v105;
  v64 = v106;
  (*(v105 + 16))(v103, v60, v106);
  v65 = v109;
  v66 = v110;
  (*(v109 + 16))(v108, v62, v110);
  v67 = [v61 bundleURL];
  v68 = v100;
  sub_1BE54AE0C();

  (*(v101 + 104))(v68, *MEMORY[0x1E6968DF8], v120);
  v69 = v133;
  sub_1BE54ADBC();
  (*(v65 + 8))(v62, v66);
  (*(v63 + 8))(v60, v64);
  v70 = (v131 + *(v125 + 56));
  v71 = *v70;
  v72 = *(v70 + 1);
  LOBYTE(v142) = v71;
  v143 = v72;
  v73 = v69;
  v124 = sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  sub_1BE54C26C();
  LODWORD(v123) = v136;
  v74 = v130;
  v122(v129, v69, v130);
  v75 = sub_1BE54BF7C();
  v77 = v76;
  LOBYTE(v64) = v78;
  v134 = v126;
  v135 = MEMORY[0x1E6981E70];
  v136 = MEMORY[0x1E6981148];
  v137 = OpaqueTypeConformance2;
  v138 = MEMORY[0x1E6981E60];
  v139 = MEMORY[0x1E6981138];
  v129 = MEMORY[0x1E697D4E0];
  v126 = swift_getOpaqueTypeConformance2();
  v79 = v111;
  v80 = v127;
  sub_1BE54C10C();
  sub_1BE4C68C8(v75, v77, v64 & 1);

  v121(v73, v74);
  (*(v107 + 8))(v80, v79);
  v81 = (v131 + *(v125 + 40));
  v82 = *v81;
  v83 = *(v81 + 1);
  LOBYTE(v142) = v82;
  v143 = v83;
  sub_1BE54C26C();
  v84 = v116;
  sub_1BE4FCF80();
  v85 = (*(v114 + 80) + 16) & ~*(v114 + 80);
  v86 = swift_allocObject();
  sub_1BE4FCFD8(v84, v86 + v85);
  type metadata accessor for GenerativePartnerOnboardingSheet();
  v134 = v79;
  v135 = MEMORY[0x1E6981E70];
  v136 = MEMORY[0x1E6981E70];
  v137 = v126;
  v138 = MEMORY[0x1E6981E60];
  v139 = MEMORY[0x1E6981E60];
  swift_getOpaqueTypeConformance2();
  sub_1BE4FEB10(&qword_1EBDAC538, type metadata accessor for GenerativePartnerOnboardingSheet);
  v87 = v113;
  v88 = v128;
  sub_1BE54C12C();

  return (*(v112 + 8))(v88, v87);
}

uint64_t sub_1BE4E9004@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE54BA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE4BF11C(&qword_1EBDAC400, &qword_1BE54F628);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = sub_1BE4BF11C(&qword_1EBDAC5D8, &qword_1BE54F8C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  sub_1BE4E9638(v2, v12);
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(v9 + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
  sub_1BE54BA1C();
  sub_1BE4FC668();
  sub_1BE4FEB10(&qword_1EBDAC470, MEMORY[0x1E697C480]);
  sub_1BE54C02C();
  (*(v5 + 8))(v8, v4);
  sub_1BE4FF104(v12, &qword_1EBDAC400);
  if ((AFMontaraRestricted() & 1) != 0 || (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) != 0 || (sub_1BE52AA84() & 1) == 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1BE52AC38();
  }

  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20 & 1;
  (*(v14 + 32))(a1, v17, v13);
  result = sub_1BE4BF11C(&qword_1EBDAC3F0, &qword_1BE54F620);
  v24 = (a1 + *(result + 36));
  *v24 = v21;
  v24[1] = sub_1BE4FDD90;
  v24[2] = v22;
  return result;
}

unint64_t sub_1BE4E92F8()
{
  v1 = (v0 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
  v3 = *v1;
  v2 = v1[1];
  v12[0] = v3;
  v12[1] = v2;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(v12);

  if (v13)
  {
    sub_1BE4C6918(v12, v9);
    sub_1BE4FF104(v12, &qword_1EBDABAF8);
    v4 = v10;
    v5 = v11;
    sub_1BE4C52F4(v9, v10);
    v6 = (*(v5 + 16))(v4, v5);
    v7 = v9;
  }

  else
  {
    sub_1BE4FF104(v12, &qword_1EBDABAF8);
    sub_1BE54B24C();
    sub_1BE54B22C();
    sub_1BE54B20C();

    if (!v13)
    {
      sub_1BE4FF104(v12, &unk_1EBDAC550);
      return 0xD000000000000016;
    }

    sub_1BE4C52F4(v12, v13);
    v6 = sub_1BE54B26C();
    v7 = v12;
  }

  sub_1BE4C58A8(v7);
  return v6;
}

BOOL sub_1BE4E948C()
{
  v1 = (v0 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
  v3 = *v1;
  v2 = v1[1];
  v12[0] = v3;
  v12[1] = v2;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(v12);

  v4 = v13;
  if (v13)
  {
    v5 = v14;
    v6 = sub_1BE4C52F4(v12, v13);
    v7 = *(v4 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x1EEE9AC00](v6);
    v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    sub_1BE4FF104(v12, &qword_1EBDABAF8);
    (*(v5 + 216))(&v15, v4, v5);
    (*(v7 + 8))(v10, v4);
    return (v15 & 0xC0) == 64;
  }

  else
  {
    sub_1BE4FF104(v12, &qword_1EBDABAF8);
    return 1;
  }
}

uint64_t sub_1BE4E9638@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v80 = sub_1BE4BF11C(&qword_1EBDAC450, &qword_1BE54F650);
  v3 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v69 = &v67 - v4;
  v5 = sub_1BE4BF11C(&qword_1EBDAC5E0, &qword_1BE54F928);
  v68 = *(v5 - 8);
  v6 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - v7;
  v81 = sub_1BE4BF11C(&qword_1EBDAC5E8, &qword_1BE54F930);
  v9 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v11 = &v67 - v10;
  v78 = sub_1BE4BF11C(&qword_1EBDAC5F0, &qword_1BE54F938);
  v12 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v14 = &v67 - v13;
  v15 = sub_1BE4BF11C(&qword_1EBDAC438, &qword_1BE54F640);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v67 - v17;
  v19 = sub_1BE54BACC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v77 = sub_1BE4BF11C(&qword_1EBDAC440, &qword_1BE54F648);
  v21 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v23 = &v67 - v22;
  v79 = sub_1BE4BF11C(&qword_1EBDAC5F8, &qword_1BE54F940);
  v75 = *(v79 - 8);
  v24 = *(v75 + 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v67 - v25;
  v26 = &a1[*(type metadata accessor for GenerativePartnerSettingsPanelView() + 36)];
  v28 = *v26;
  v27 = *(v26 + 1);
  *&v86 = v28;
  *(&v86 + 1) = v27;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(&v86);

  if (*(&v87 + 1))
  {
    v70 = v14;
    v76 = v18;
    v71 = v5;
    v72 = v15;
    v73 = v11;
    sub_1BE4BF094(&v86, v89);
    sub_1BE4EA314(v89, v23);
    sub_1BE54BABC();
    sub_1BE54BAAC();
    v29 = v90;
    v30 = v91;
    sub_1BE4C52F4(v89, v90);
    (*(v30 + 16))(v29, v30);
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v31 = qword_1EBDB0C00;
    v32 = sub_1BE54BF6C();
    v34 = v33;
    v36 = v35;
    v37 = sub_1BE4FF864(&qword_1EBDAC448, &qword_1EBDAC440);
    v38 = v74;
    v39 = v77;
    sub_1BE54C05C();
    sub_1BE4C68C8(v32, v34, v36 & 1);

    sub_1BE4FF104(v23, &qword_1EBDAC440);
    v40 = v75;
    v41 = v79;
    (*(v75 + 2))(v70, v38, v79);
    swift_storeEnumTagMultiPayload();
    *&v86 = v39;
    *(&v86 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    v42 = sub_1BE4FF864(&qword_1EBDAC458, &qword_1EBDAC450);
    *&v86 = v80;
    *(&v86 + 1) = v42;
    swift_getOpaqueTypeConformance2();
    v43 = v76;
    sub_1BE54BC0C();
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4BF11C(&qword_1EBDAC468, &qword_1BE54F658);
    sub_1BE4FC830();
    sub_1BE4FC98C();
    sub_1BE54BC0C();
    sub_1BE4FF104(v43, &qword_1EBDAC438);
    v40[1](v38, v41);
    return sub_1BE4C58A8(v89);
  }

  v74 = a1;
  v45 = v69;
  v75 = v8;
  sub_1BE4FF104(&v86, &qword_1EBDABAF8);
  sub_1BE54B24C();
  sub_1BE54B22C();
  sub_1BE54B20C();

  if (v85)
  {
    v76 = v18;
    sub_1BE4C52F4(v84, v85);
    sub_1BE4EB2CC(&v86);
    sub_1BE4C58A8(v84);
    if (*(&v87 + 1))
    {
      v70 = v14;
      v71 = v5;
      v72 = v15;
      v73 = v11;
      sub_1BE4BF094(&v86, v89);
      sub_1BE4EB364(v45);
      sub_1BE54BABC();
      sub_1BE54BAAC();
      v46 = v90;
      v47 = v91;
      sub_1BE4C52F4(v89, v90);
      (*(v47 + 16))(v46, v47);
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE54BAEC();
      if (qword_1EBDABA80 != -1)
      {
        swift_once();
      }

      v48 = qword_1EBDB0C00;
      v49 = sub_1BE54BF6C();
      v51 = v50;
      v53 = v52;
      v54 = sub_1BE4FF864(&qword_1EBDAC458, &qword_1EBDAC450);
      v55 = v75;
      v56 = v80;
      v57 = v69;
      sub_1BE54C05C();
      sub_1BE4C68C8(v49, v51, v53 & 1);

      sub_1BE4FF104(v57, &qword_1EBDAC450);
      v58 = v68;
      v59 = v71;
      (*(v68 + 16))(v70, v55, v71);
      swift_storeEnumTagMultiPayload();
      v60 = sub_1BE4FF864(&qword_1EBDAC448, &qword_1EBDAC440);
      *&v86 = v77;
      *(&v86 + 1) = v60;
      swift_getOpaqueTypeConformance2();
      *&v86 = v56;
      *(&v86 + 1) = v54;
      swift_getOpaqueTypeConformance2();
      v61 = v76;
      sub_1BE54BC0C();
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4BF11C(&qword_1EBDAC468, &qword_1BE54F658);
      sub_1BE4FC830();
      sub_1BE4FC98C();
      sub_1BE54BC0C();
      sub_1BE4FF104(v61, &qword_1EBDAC438);
      (*(v58 + 8))(v55, v59);
      return sub_1BE4C58A8(v89);
    }
  }

  else
  {
    sub_1BE4FF104(v84, &qword_1EBDAC550);
    v86 = 0u;
    v87 = 0u;
    v88 = 0;
  }

  sub_1BE4FF104(&v86, &qword_1EBDABAF8);
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v62 = qword_1EBDB0C00;
  v63 = sub_1BE54BF6C();
  v83 = v64 & 1;
  *v11 = v63;
  *(v11 + 1) = v65;
  v11[16] = v64 & 1;
  *(v11 + 17) = v84[0];
  *(v11 + 5) = *(v84 + 3);
  *(v11 + 3) = v66;
  *(v11 + 4) = sub_1BE4EBD40;
  *(v11 + 5) = 0;
  *(v11 + 6) = 0;
  *(v11 + 7) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1BE4BF11C(&qword_1EBDAC468, &qword_1BE54F658);
  sub_1BE4FC830();
  sub_1BE4FC98C();
  return sub_1BE54BC0C();
}

uint64_t sub_1BE4EA314@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v114 = a2;
  v5 = sub_1BE4BF11C(&qword_1EBDAC600, &qword_1BE54F948);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v115 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v95 - v9;
  v108 = sub_1BE4BF11C(&qword_1EBDAC608, &qword_1BE54F950);
  v96 = *(v108 - 8);
  v10 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v95 = &v95 - v11;
  v12 = sub_1BE4BF11C(&qword_1EBDAC610, &qword_1BE54F958);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v112 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v116 = &v95 - v16;
  v17 = sub_1BE4BF11C(&qword_1EBDAC618, &qword_1BE54F960);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v111 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v109 = &v95 - v21;
  v122 = sub_1BE4BF11C(&qword_1EBDAC620, &qword_1BE54F968);
  v110 = *(v122 - 8);
  v22 = *(v110 + 64);
  v23 = MEMORY[0x1EEE9AC00](v122);
  v121 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v124 = &v95 - v25;
  v103 = sub_1BE4BF11C(&qword_1EBDAC628, &qword_1BE54F970);
  v26 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v98 = &v95 - v27;
  v28 = sub_1BE4BF11C(&qword_1EBDAC630, &qword_1BE54F978);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v97 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v101 = &v95 - v32;
  v106 = sub_1BE4BF11C(&qword_1EBDAC638, &qword_1BE54F980);
  v33 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v99 = sub_1BE4BF11C(&qword_1EBDAC640, &qword_1BE54F988);
  v34 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v105 = sub_1BE4BF11C(&qword_1EBDAC648, &qword_1BE54F990);
  v35 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v95 - v36;
  v100 = sub_1BE4BF11C(&qword_1EBDAC650, &qword_1BE54F998);
  v37 = *(*(v100 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v100);
  v40 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v104 = &v95 - v41;
  v42 = sub_1BE4BF11C(&qword_1EBDAC658, &qword_1BE54F9A0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v120 = &v95 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v123 = &v95 - v46;
  v119 = sub_1BE4BF11C(&qword_1EBDAC660, &qword_1BE54F9A8);
  v107 = *(v119 - 8);
  v47 = *(v107 + 64);
  v48 = MEMORY[0x1EEE9AC00](v119);
  v118 = &v95 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v95 - v50;
  v125 = v2;
  sub_1BE4FA3E8(&v126);
  sub_1BE4BF11C(&qword_1EBDAC668, &qword_1BE54F9B0);
  sub_1BE4BF11C(&qword_1EBDAC670, &qword_1BE54F9B8);
  sub_1BE4FF864(&qword_1EBDAC678, &qword_1EBDAC668);
  sub_1BE4FDDB0();
  v117 = v51;
  sub_1BE54C37C();
  v52 = a1[3];
  v53 = a1[4];
  sub_1BE4C52F4(a1, v52);
  (*(v53 + 216))(&v126, v52, v53);
  v54 = v126 >> 6;
  if (!v54)
  {
    sub_1BE4EE190(a1, v104);
    sub_1BE4EE604(a1, v101);
    sub_1BE4FF0AC();
    v56 = v97;
    sub_1BE4FF0AC();
    v57 = v98;
    sub_1BE4FF0AC();
    v58 = *(sub_1BE4BF11C(&qword_1EBDAC7D8, &qword_1BE54FA68) + 48);
    sub_1BE4FF0AC();
    sub_1BE4FF104(v56, &qword_1EBDAC630);
    sub_1BE4FF104(v40, &qword_1EBDAC650);
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FDF68();
    sub_1BE4FF864(&qword_1EBDAC798, &qword_1EBDAC628);
    v59 = v102;
    sub_1BE54BC0C();
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FDEB0();
    sub_1BE54BC0C();
    sub_1BE4FF104(v59, &qword_1EBDAC648);
    sub_1BE4FF104(v57, &qword_1EBDAC628);
    sub_1BE4FF104(v101, &qword_1EBDAC630);
    v60 = v104;
LABEL_6:
    v55 = sub_1BE4FF104(v60, &qword_1EBDAC650);
    goto LABEL_7;
  }

  if (v54 != 1)
  {
    v61 = v104;
    sub_1BE4EE190(a1, v104);
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FDF68();
    sub_1BE4FF864(&qword_1EBDAC798, &qword_1EBDAC628);
    v62 = v102;
    sub_1BE54BC0C();
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FDEB0();
    sub_1BE54BC0C();
    sub_1BE4FF104(v62, &qword_1EBDAC648);
    v60 = v61;
    goto LABEL_6;
  }

  swift_storeEnumTagMultiPayload();
  sub_1BE4FDEB0();
  v55 = sub_1BE54BC0C();
LABEL_7:
  v63 = v113;
  v64 = v109;
  v65 = v108;
  MEMORY[0x1EEE9AC00](v55);
  *(&v95 - 2) = v3;
  sub_1BE4FC244(v3, &v126);
  sub_1BE4BF11C(&qword_1EBDAC7A0, &qword_1BE54FA48);
  sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
  sub_1BE4FE6D4();
  sub_1BE4FDE34();
  sub_1BE54C37C();
  sub_1BE4EDE9C(v64);
  v66 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v67 = (v3 + *(v66 + 36));
  v69 = *v67;
  v68 = v67[1];
  *&v126 = v69;
  *(&v126 + 1) = v68;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE502204();
  v71 = v70;

  if (!v71)
  {
    goto LABEL_9;
  }

  v72 = (v3 + *(v66 + 60));
  v74 = *v72;
  v73 = v72[1];
  *&v126 = v74;
  *(&v126 + 1) = v73;
  sub_1BE4BF11C(&qword_1EBDAC7C8, &qword_1BE54FA60);
  sub_1BE54C24C();
  v75 = v131;
  v76 = sub_1BE527E4C();

  if ((v76 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v77);
    *(&v95 - 2) = v3;
    sub_1BE4FE78C();
    v79 = v95;
    sub_1BE54C36C();
    (*(v96 + 32))(v116, v79, v65);
    v78 = 0;
  }

  else
  {
LABEL_9:
    v78 = 1;
  }

  v80 = v116;
  sub_1BE4C63F8(v116, v78, 1, v65);
  v81 = sub_1BE4BF11C(&qword_1EBDAC7C0, &qword_1BE54FA58);
  sub_1BE4C63F8(v63, 1, 1, v81);
  v82 = v107;
  v83 = v118;
  (*(v107 + 16))(v118, v117, v119);
  *&v126 = v83;
  v84 = v120;
  sub_1BE4FF0AC();
  *(&v126 + 1) = v84;
  v85 = v110;
  v86 = v121;
  (*(v110 + 16))(v121, v124, v122);
  v127 = v86;
  v87 = v111;
  sub_1BE4FF0AC();
  v128 = v87;
  v88 = v112;
  sub_1BE4FF0AC();
  v129 = v88;
  v89 = v115;
  sub_1BE4FF0AC();
  v130 = v89;
  sub_1BE4E4424(&v126, v114);
  sub_1BE4FF104(v63, &qword_1EBDAC600);
  sub_1BE4FF104(v80, &qword_1EBDAC610);
  sub_1BE4FF104(v64, &qword_1EBDAC618);
  v90 = *(v85 + 8);
  v91 = v122;
  v90(v124, v122);
  sub_1BE4FF104(v123, &qword_1EBDAC658);
  v92 = *(v82 + 8);
  v93 = v119;
  v92(v117, v119);
  sub_1BE4FF104(v89, &qword_1EBDAC600);
  sub_1BE4FF104(v88, &qword_1EBDAC610);
  sub_1BE4FF104(v87, &qword_1EBDAC618);
  v90(v121, v91);
  sub_1BE4FF104(v120, &qword_1EBDAC658);
  return (v92)(v118, v93);
}

uint64_t sub_1BE4EB2CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54986C();
  sub_1BE549D98(v2, 0);

  sub_1BE4FFBD8();
  v3 = sub_1BE54B28C();
  ProviderDeclarations.provider(id:)(v3, v4, a1);
}

uint64_t sub_1BE4EB364@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = sub_1BE4BF11C(&qword_1EBDAC618, &qword_1BE54F960);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v87 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v84 = &v71 - v6;
  v81 = sub_1BE4BF11C(&qword_1EBDACAA0, &qword_1BE54FDB8);
  v7 = *(*(v81 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v81);
  v85 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v71 - v10;
  v79 = sub_1BE4BF11C(&qword_1EBDACAA8, &qword_1BE54FDC0);
  v72 = *(v79 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v71 = &v71 - v12;
  v13 = sub_1BE4BF11C(&qword_1EBDACAB0, &qword_1BE54FDC8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v82 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v71 - v17;
  v18 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v74 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v71 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v71 - v25;
  v27 = sub_1BE4BF11C(&qword_1EBDACAB8, &qword_1BE54FDD0);
  v28 = *(v27 - 8);
  v89 = (v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27 - 8);
  v80 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v71 - v32;
  v91 = v1;
  sub_1BE4FA3E8(&v92);
  sub_1BE4BF11C(&qword_1EBDAC668, &qword_1BE54F9B0);
  sub_1BE4BF11C(&qword_1EBDAC670, &qword_1BE54F9B8);
  sub_1BE4FF864(&qword_1EBDAC678, &qword_1EBDAC668);
  sub_1BE4FDDB0();
  sub_1BE54C37C();
  v34 = *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36);
  v88 = v1;
  v35 = &v1[v34];
  v36 = *(v35 + 1);
  *&v92 = *v35;
  v37 = v92;
  *(&v92 + 1) = v36;
  v38 = sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE50149C();

  v39 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  sub_1BE4C63F8(v24, 2, 4, v39);
  sub_1BE5005B4(v26, v24);
  v41 = v40;
  v76 = v24;
  sub_1BE4FD560();
  sub_1BE4FD560();
  KeyPath = swift_getKeyPath();
  v43 = swift_allocObject();
  *(v43 + 16) = v41 & 1;
  v44 = *(v89 + 11);
  v89 = v33;
  v45 = &v33[v44];
  *v45 = KeyPath;
  v45[1] = sub_1BE4FF8C4;
  v45[2] = v43;
  v78 = v37;
  *&v92 = v37;
  *(&v92 + 1) = v36;
  v73 = v36;
  v77 = v38;
  sub_1BE54C24C();
  v46 = v74;
  sub_1BE50149C();

  v75 = v39;
  LODWORD(v46) = sub_1BE4C63BC(v46, 4, v39);
  v47 = sub_1BE4FD560();
  if (v46 == 2)
  {
    MEMORY[0x1EEE9AC00](v47);
    *(&v71 - 2) = v88;
    sub_1BE4BF11C(&qword_1EBDACAC8, &qword_1BE54FDE0);
    sub_1BE4FF780();
    v48 = v71;
    sub_1BE54C36C();
    v49 = v79;
    (*(v72 + 32))(v90, v48, v79);
    v50 = 0;
    v51 = v49;
  }

  else
  {
    v50 = 1;
    v51 = v79;
  }

  v52 = sub_1BE4C63F8(v90, v50, 1, v51);
  MEMORY[0x1EEE9AC00](v52);
  v53 = v88;
  *(&v71 - 2) = v88;
  sub_1BE4FC244(v53, &v92);
  sub_1BE4BF11C(&qword_1EBDAC7A0, &qword_1BE54FA48);
  sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
  sub_1BE4FE6D4();
  sub_1BE4FDE34();
  v54 = v83;
  sub_1BE54C37C();
  *&v92 = v78;
  *(&v92 + 1) = v73;
  sub_1BE54C24C();
  sub_1BE50149C();

  v55 = v76;
  sub_1BE4C63F8(v76, 2, 4, v75);
  sub_1BE5005B4(v26, v55);
  v57 = v56;
  sub_1BE4FD560();
  sub_1BE4FD560();
  v58 = swift_getKeyPath();
  v59 = swift_allocObject();
  *(v59 + 16) = v57 & 1;
  v60 = (v54 + *(v81 + 36));
  *v60 = v58;
  v60[1] = sub_1BE4FF8C4;
  v60[2] = v59;
  v61 = v84;
  sub_1BE4EDE9C(v84);
  v62 = v80;
  sub_1BE4FF0AC();
  v63 = v82;
  sub_1BE4FF0AC();
  v64 = v85;
  sub_1BE4FF0AC();
  v65 = v87;
  sub_1BE4FF0AC();
  sub_1BE4FF0AC();
  v66 = sub_1BE4BF11C(&qword_1EBDACAC0, &qword_1BE54FDD8);
  v67 = v66[12];
  sub_1BE4FF0AC();
  v68 = v66[16];
  sub_1BE4FF0AC();
  v69 = v66[20];
  sub_1BE4FF0AC();
  sub_1BE4FF104(v61, &qword_1EBDAC618);
  sub_1BE4FF104(v54, &qword_1EBDACAA0);
  sub_1BE4FF104(v90, &qword_1EBDACAB0);
  sub_1BE4FF104(v89, &qword_1EBDACAB8);
  sub_1BE4FF104(v65, &qword_1EBDAC618);
  sub_1BE4FF104(v64, &qword_1EBDACAA0);
  sub_1BE4FF104(v63, &qword_1EBDACAB0);
  return sub_1BE4FF104(v62, &qword_1EBDACAB8);
}

void sub_1BE4EBD40()
{
  if (qword_1EBDABAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE54B2EC();
  sub_1BE4C52BC(v0, qword_1EBDB0C38);
  oslog = sub_1BE54B2BC();
  v1 = sub_1BE54C98C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1BE4B8000, oslog, v1, "intendedDefaultLLM is nil", v2, 2u);
    MEMORY[0x1BFB48AC0](v2, -1, -1);
  }
}

uint64_t sub_1BE4EBE28@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BE4EBF08@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BE4EBFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (a1 + *(MEMORY[0x1EEE9AC00](v4 - 8) + 52));
  v8 = *(v7 + 2);
  v13 = *v7;
  v14 = v8;
  sub_1BE4BF11C(&qword_1EBDAC540, &unk_1BE54F7B8);
  sub_1BE54C24C();
  sub_1BE4FCF80();
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1BE4FCFD8(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return sub_1BE4BF9A0(sub_1BE4FD0A0, v10, a2);
}

uint64_t sub_1BE4EC158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v9 = (a2 + v8[9]);
  v10 = *v9;
  v11 = v9[1];
  *&v20 = *v9;
  *(&v20 + 1) = v11;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE4FF0AC();
  sub_1BE5011B0(&v20);

  if (*(a1 + 40) == 1)
  {
    *&v20 = v10;
    *(&v20 + 1) = v11;
    sub_1BE54C24C();
    v12 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4C63F8(v7, 1, 4, v12);
  }

  else
  {
    *&v20 = v10;
    *(&v20 + 1) = v11;
    sub_1BE54C24C();
    sub_1BE500020(v7);
  }

  sub_1BE5014C4();

  v13 = (a2 + v8[10]);
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v20) = v14;
  *(&v20 + 1) = v15;
  LOBYTE(v19[0]) = 0;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  sub_1BE54C25C();
  v16 = (a2 + v8[11]);
  v17 = *(v16 + 2);
  v20 = *v16;
  v21 = v17;
  v19[0] = 0;
  v19[1] = 0;
  sub_1BE4BF11C(&qword_1EBDAC540, &unk_1BE54F7B8);
  return sub_1BE54C25C();
}

uint64_t sub_1BE4EC34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  sub_1BE54C8CC();
  *(v3 + 48) = sub_1BE54C8BC();
  v5 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE4EC3E4, v5, v4);
}

uint64_t sub_1BE4EC3E4()
{
  sub_1BE4E01D4();
  v2 = v0[5];
  v1 = v0[6];

  v3 = type metadata accessor for GenerativePartnerSettingsPanelView();
  sub_1BE4FFDBC(v3);
  *(v2 + 16) = v4;
  v0[3] = v5;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v6 = v0[4];
  sub_1BE503918();

  sub_1BE4E01E0();

  return v7();
}

uint64_t sub_1BE4EC47C(uint64_t a1)
{
  sub_1BE4EC4F0();
  v2 = (a1 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
  v4 = *v2;
  v5 = v2[1];
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE503EB0();
}

uint64_t sub_1BE4ECE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v5 = sub_1BE54B5BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  (*(v6 + 104))(&v40 - v14, *MEMORY[0x1E697BE38], v5);
  v16 = sub_1BE54B5AC();
  v17 = *(v6 + 8);
  result = v17(v15, v5);
  if (v16)
  {
    v43 = a3;
    if (qword_1EBDABAC8 != -1)
    {
      swift_once();
    }

    v19 = sub_1BE54B2EC();
    sub_1BE4C52BC(v19, qword_1EBDB0C98);
    v20 = *(v6 + 16);
    v20(v13, v44, v5);
    v20(v10, a2, v5);
    v21 = sub_1BE54B2BC();
    v22 = sub_1BE54C97C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v42 = v22;
      v24 = v23;
      v44 = swift_slowAlloc();
      v45[0] = v44;
      *v24 = 136446466;
      v20(v15, v13, v5);
      v25 = sub_1BE54C73C();
      v40 = v10;
      v41 = v21;
      v26 = v25;
      v28 = v27;
      v17(v13, v5);
      v29 = sub_1BE4C5338(v26, v28, v45);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2082;
      v30 = v40;
      v20(v15, v40, v5);
      v31 = sub_1BE54C73C();
      v33 = v32;
      v17(v30, v5);
      v34 = sub_1BE4C5338(v31, v33, v45);

      *(v24 + 14) = v34;
      v35 = v41;
      _os_log_impl(&dword_1BE4B8000, v41, v42, "Phase change from %{public}s to %{public}s", v24, 0x16u);
      v36 = v44;
      swift_arrayDestroy();
      MEMORY[0x1BFB48AC0](v36, -1, -1);
      MEMORY[0x1BFB48AC0](v24, -1, -1);
    }

    else
    {

      v17(v10, v5);
      v17(v13, v5);
    }

    v37 = (v43 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
    v39 = *v37;
    v38 = v37[1];
    v45[0] = v39;
    v45[1] = v38;
    sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
    sub_1BE54C24C();
    sub_1BE506954();
  }

  return result;
}

uint64_t sub_1BE4ED264(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v49 - v12;
  v14 = sub_1BE4BF11C(&qword_1EBDAC5B0, &unk_1BE54F820);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v49 - v16);
  v18 = sub_1BE54B3DC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 8))
  {
    v49 = v20;
    v23 = (a3 + *(type metadata accessor for GenerativePartnerSettingsPanelView() + 36));
    v25 = *v23;
    v24 = v23[1];
    *&v53 = *v23;
    *(&v53 + 1) = v24;
    sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
    sub_1BE54C24C();
    sub_1BE5010B4(&v53);

    if (!v54)
    {
      v45 = &qword_1EBDABAF8;
      v46 = &v53;
      return sub_1BE4FF104(v46, v45);
    }

    sub_1BE4BF094(&v53, v55);
    sub_1BE4C6918(v55, &v53);
    v26 = type metadata accessor for ExternalAIAuthenticatorHelper();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_1BE534D4C(&v53);
    sub_1BE533EC4();

    v29 = sub_1BE54B4FC();
    if (sub_1BE4C63BC(v13, 1, v29) == 1)
    {
      sub_1BE4C58A8(v55);
      sub_1BE4FF104(v13, &qword_1EBDAC5A8);
      sub_1BE4C63F8(v17, 1, 1, v18);
LABEL_22:
      v45 = &qword_1EBDAC5B0;
      v46 = v17;
      return sub_1BE4FF104(v46, v45);
    }

    sub_1BE54B45C();
    (*(*(v29 - 8) + 8))(v13, v29);
    if (sub_1BE4C63BC(v17, 1, v18) == 1)
    {
      sub_1BE4C58A8(v55);
      goto LABEL_22;
    }

    v47 = v49;
    (*(v49 + 32))(v22, v17, v18);
    *&v53 = v25;
    *(&v53 + 1) = v24;
    sub_1BE54C24C();
    (*(v47 + 16))(v9, v22, v18);
    v48 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4C63F8(v9, 0, 4, v48);
    sub_1BE5014C4();

    (*(v47 + 8))(v22, v18);
    return sub_1BE4C58A8(v55);
  }

  else
  {
    v30 = *a1;
    v31 = a1[1];
    if (qword_1EDDD6890 != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v32 = off_1EDDD6898;
      result = swift_beginAccess();
      v34 = v32[2];
      v35 = *(v34 + 16);
      if (!v35)
      {
        break;
      }

      v36 = v34 + 32;
      v37 = v32[2];

      v38 = 0;
      while (v38 < *(v34 + 16))
      {
        sub_1BE4C6918(v36, &v50);
        v39 = v51;
        v40 = v52;
        sub_1BE4C52F4(&v50, v51);
        v41 = (*(v40 + 8))(v39, v40);
        if (v31)
        {
          if (v41 == v30 && v31 == v42)
          {

LABEL_26:

            sub_1BE4BF094(&v50, &v53);
            sub_1BE4BF094(&v53, v55);
            sub_1BE4ED7BC(0, v55);
            return sub_1BE4C58A8(v55);
          }

          v44 = sub_1BE54CCDC();

          if (v44)
          {
            goto LABEL_26;
          }
        }

        else
        {
        }

        ++v38;
        sub_1BE4C58A8(&v50);
        v36 += 40;
        if (v35 == v38)
        {
        }
      }

      __break(1u);
LABEL_30:
      swift_once();
    }
  }

  return result;
}

uint64_t sub_1BE4ED7BC(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for GenerativePartnerSettingsPanelView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36[-v12];
  v14 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36[-v19];
  if (a1)
  {
    goto LABEL_3;
  }

  v21 = (v3 + *(v6 + 36));
  v23 = *v21;
  v22 = v21[1];
  *&v38[0] = v23;
  *(&v38[0] + 1) = v22;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE50149C();

  v24 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  sub_1BE4C63F8(v18, 2, 4, v24);
  sub_1BE5005B4(v20, v18);
  v37 = v25;
  sub_1BE4FD560();
  result = sub_1BE4FD560();
  if ((v37 & 1) == 0)
  {
LABEL_3:
    v27 = (v3 + *(v6 + 36));
    v29 = *v27;
    v28 = v27[1];
    *&v38[0] = v29;
    *(&v38[0] + 1) = v28;
    sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
    sub_1BE54C24C();
    v30 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4C63F8(v20, 3, 4, v30);
    sub_1BE5014C4();

    v31 = sub_1BE54C91C();
    sub_1BE4C63F8(v13, 1, 1, v31);
    sub_1BE4C6918(a2, v38);
    sub_1BE4FCF80();
    sub_1BE54C8CC();
    v32 = sub_1BE54C8BC();
    v33 = (*(v7 + 80) + 72) & ~*(v7 + 80);
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    *(v34 + 16) = v32;
    *(v34 + 24) = v35;
    sub_1BE4BF094(v38, v34 + 32);
    sub_1BE4FCFD8(v9, v34 + v33);
    sub_1BE50BA3C();
  }

  return result;
}