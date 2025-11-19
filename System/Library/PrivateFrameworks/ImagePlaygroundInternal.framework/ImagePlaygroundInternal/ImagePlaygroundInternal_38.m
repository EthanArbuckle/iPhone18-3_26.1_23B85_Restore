uint64_t sub_1D26A69B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v18 = a3;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BubbleBackgroundViewModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a4, v13);
  sub_1D26A98FC(v10, a2, a4, v15);
  MEMORY[0x1D389F9A0](v15, v18, v11, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1D26A6B64@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for BubbleShadowModifier();
  *(a5 + v8[9]) = a2 & 1;
  *(a5 + v8[10]) = a3;
  v9 = a5 + v8[11];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a5 + v8[12];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  return result;
}

uint64_t sub_1D26A6C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[2] = a1;
  v18[3] = a3;
  swift_getWitnessTable();
  sub_1D2875D08();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1D2874658();
  sub_1D2874F68();
  WitnessTable = swift_getWitnessTable();
  v23 = MEMORY[0x1E697FB50];
  v18[1] = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v18[0] = sub_1D2875AD8();
  v7 = sub_1D2874F68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v18[6] = v5;
  v18[7] = v6;
  v19 = v3;
  sub_1D2877848();
  v14 = swift_getWitnessTable();
  sub_1D2876728();
  v15 = swift_getWitnessTable();
  v20 = v14;
  v21 = v15;
  swift_getWitnessTable();
  sub_1D245980C(v10);
  v16 = *(v8 + 8);
  v16(v10, v7);
  sub_1D245980C(v13);
  return (v16)(v13, v7);
}

uint64_t sub_1D26A6EE0@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a4;
  v7 = type metadata accessor for BubbleShadowModifier();
  v83 = *(v7 - 1);
  v79 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v70 - v8;
  v9 = sub_1D2875628();
  v86 = *(v9 - 8);
  v87 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a3;
  v16 = sub_1D2874658();
  v76 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v70 - v17;
  v77 = v18;
  v80 = sub_1D2874F68();
  v78 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v74 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v75 = &v70 - v22;
  v72 = v12;
  v23 = *(v12 + 16);
  v71 = v15;
  v23(v15, a1, a2, v21);
  if (*(a1 + v7[10]) != 1)
  {
    v70 = sub_1D2877098();
    goto LABEL_17;
  }

  v24 = a1 + v7[11];
  v25 = *v24;
  if (*(v24 + 8) == 1)
  {
    v26 = *v24;
    v92 = *v24;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v27 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v25, 0);
    (*(v86 + 8))(v11, v87);
    v26 = v92;
  }

  v28 = *(a1 + v7[9]);
  v29 = a1 + v7[12];
  v30 = *(v29 + 8);
  if (*(v29 + 16) == 1)
  {
    sub_1D2870F78();
    if (!v28)
    {
LABEL_8:
      v31 = sub_1D2877098();
LABEL_14:
      v70 = v31;

      goto LABEL_15;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v32 = sub_1D28762E8();
    v82 = v7;
    v33 = a2;
    v34 = v26;
    v35 = v32;
    sub_1D2873BE8();

    v26 = v34;
    a2 = v33;
    v7 = v82;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D26AB660();
    (*(v86 + 8))(v11, v87);
    v30 = v91;
    if (!v28)
    {
      goto LABEL_8;
    }
  }

  if (!v26)
  {
    v36 = [objc_opt_self() systemGray3Color];
    v31 = sub_1D2877128();
    goto LABEL_14;
  }

  if (v30)
  {
    v70 = v30;
  }

  else
  {
    v70 = sub_1D2877098();
  }

LABEL_15:
  v37 = *v24;
  if ((*(v24 + 8) & 1) == 0)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v38 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v37, 0);
    (*(v86 + 8))(v11, v87);
  }

LABEL_17:
  v39 = a1 + v7[11];
  v40 = *v39;
  if (*(v39 + 8) == 1)
  {
    v41 = *v39;
    v92 = *v39;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v42 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v40, 0);
    (*(v86 + 8))(v11, v87);
    v41 = v92;
  }

  v43 = v7[12];
  v82 = a1;
  v44 = a1 + v43;
  v46 = *v44;
  v45 = *(v44 + 8);
  v47 = *(v44 + 16);
  if (v47 == 1)
  {
    v48 = *v44;
    if (!sub_1D2870F78())
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v49 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D26AB660();
    (*(v86 + 8))(v11, v87);
    v48 = v90;
    if (!v91)
    {
      goto LABEL_25;
    }
  }

  if (v41)
  {
    cos(v48);
  }

LABEL_25:
  v50 = *v39;
  if (*(v39 + 8) == 1)
  {
    v51 = *v39;
    v92 = v50;
    if (!v47)
    {
      goto LABEL_27;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v55 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v50, 0);
    (*(v86 + 8))(v11, v87);
    v51 = v92;
    if (!v47)
    {
LABEL_27:
      sub_1D2870F78();
      sub_1D2878A28();
      v52 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D26AB660();
      (*(v86 + 8))(v11, v87);
      v53 = v90;
      v54 = v82;
      if (!v91)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  v53 = v46;
  sub_1D2870F78();
  v54 = v82;
  if (!v45)
  {
    goto LABEL_32;
  }

LABEL_28:

  if (v51)
  {
    sin(v53);
  }

LABEL_32:
  v56 = v73;
  v57 = v84;
  v58 = v71;
  sub_1D2877288();

  (*(v72 + 8))(v58, a2);
  v59 = v83;
  v60 = v81;
  (*(v83 + 16))(v81, v54, v7);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = a2;
  *(v62 + 24) = v57;
  (*(v59 + 32))(v62 + v61, v60, v7);
  v63 = v77;
  WitnessTable = swift_getWitnessTable();
  v65 = v74;
  sub_1D2876878();

  (*(v76 + 8))(v56, v63);
  v88 = WitnessTable;
  v89 = MEMORY[0x1E697FB50];
  v66 = v80;
  swift_getWitnessTable();
  v67 = v75;
  sub_1D245980C(v65);
  v68 = *(v78 + 8);
  v68(v65, v66);
  sub_1D245980C(v67);
  return (v68)(v67, v66);
}

uint64_t sub_1D26A79E0()
{
  type metadata accessor for BubbleShadowModifier();
  sub_1D28745D8();
  MEMORY[0x1D389D070](0x3FA1111111111111, 0);
  sub_1D2877908();
  return sub_1D2874608();
}

uint64_t sub_1D26A7A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v65 = a1;
  swift_getWitnessTable();
  v5 = sub_1D2875D08();
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = sub_1D2874408();
  WitnessTable = swift_getWitnessTable();
  v79 = v7;
  v80 = MEMORY[0x1E69815C0];
  v81 = v8;
  v82 = v6;
  v83 = MEMORY[0x1E6981568];
  v84 = WitnessTable;
  sub_1D2875038();
  sub_1D2878F18();
  v78 = swift_getWitnessTable();
  swift_getWitnessTable();
  v67 = sub_1D2875AD8();
  v10 = sub_1D2874F68();
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v50 - v13;
  v14 = swift_getWitnessTable();
  v79 = v5;
  v80 = v7;
  v81 = v14;
  v82 = v6;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_1D2874F68();
  v79 = v5;
  v80 = v7;
  v56 = v7;
  v81 = v14;
  v82 = v6;
  v55 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = MEMORY[0x1E697FD38];
  v16 = swift_getWitnessTable();
  v53 = v15;
  v52 = v16;
  v17 = sub_1D2875B38();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v50 - v22;
  v23 = sub_1D2875628();
  v57 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D2875B08();
  v63 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v62 = &v50 - v28;
  v61 = a2;
  v29 = *(a2 + 40);
  v66 = v3;
  v30 = v3 + v29;
  v31 = *v30;
  if (*(v30 + 8) == 1)
  {
    v32 = *v30;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v51 = v23;
    v33 = v10;
    v34 = v14;
    v35 = sub_1D28762E8();
    sub_1D2873BE8();

    v14 = v34;
    v10 = v33;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v31, 0);
    v27 = (*(v57 + 8))(v25, v51);
    v32 = v79;
  }

  v36 = v62;
  if (v32)
  {
    v37 = v60;
    sub_1D26A8708();
    v38 = swift_getWitnessTable();
    v74 = v14;
    v75 = v38;
    swift_getWitnessTable();
    v39 = v59;
    sub_1D245980C(v37);
    v40 = *(v58 + 8);
    v40(v37, v10);
    sub_1D245980C(v39);
    swift_getWitnessTable();
    sub_1D24CB7CC(v37, v17, v10);
    v40(v37, v10);
    v40(v39, v10);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v27);
    v41 = v55;
    *(&v50 - 4) = v56;
    *(&v50 - 3) = v41;
    v42 = v66;
    *(&v50 - 2) = v65;
    *(&v50 - 1) = v42;
    sub_1D2875B28();
    swift_getWitnessTable();
    v43 = v54;
    sub_1D245980C(v20);
    v44 = *(v18 + 8);
    v44(v20, v17);
    sub_1D245980C(v43);
    v45 = swift_getWitnessTable();
    v68 = v14;
    v69 = v45;
    swift_getWitnessTable();
    sub_1D24CB6D4(v20, v17);
    v44(v20, v17);
    v44(v43, v17);
  }

  v46 = swift_getWitnessTable();
  v47 = swift_getWitnessTable();
  v72 = v14;
  v73 = v47;
  v48 = swift_getWitnessTable();
  v70 = v46;
  v71 = v48;
  swift_getWitnessTable();
  sub_1D245980C(v36);
  return (*(v63 + 8))(v36, v26);
}

uint64_t sub_1D26A82EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a2;
  v42 = a1;
  v43 = a5;
  v7 = sub_1D2877158();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = a3;
  v37 = a4;
  type metadata accessor for BubbleBackgroundViewModifier();
  swift_getWitnessTable();
  v15 = sub_1D2875D08();
  WitnessTable = swift_getWitnessTable();
  v46 = v15;
  v47 = v14;
  v48 = WitnessTable;
  v49 = a4;
  v38 = MEMORY[0x1E69811D8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v33 = &v32 - v17;
  v18 = sub_1D2874F68();
  v40 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v34 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v36 = &v32 - v21;
  sub_1D2877138();
  MEMORY[0x1D389FBC0](1);
  v22 = *(v8 + 8);
  v22(v10, v7);
  v23 = swift_checkMetadataState();
  v24 = v37;
  sub_1D2876808();
  v22(v13, v7);
  v46 = v23;
  v47 = v14;
  v48 = WitnessTable;
  v49 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v34;
  v26 = OpaqueTypeMetadata2;
  v28 = v33;
  sub_1D2876928();
  (*(v39 + 8))(v28, v26);
  v44 = OpaqueTypeConformance2;
  v45 = MEMORY[0x1E697FD38];
  swift_getWitnessTable();
  v29 = v36;
  sub_1D245980C(v27);
  v30 = *(v40 + 8);
  v30(v27, v18);
  sub_1D245980C(v29);
  return (v30)(v29, v18);
}

uint64_t sub_1D26A8708()
{
  sub_1D2877848();
  swift_getWitnessTable();
  sub_1D2875D08();
  sub_1D2874408();
  swift_getWitnessTable();
  sub_1D2875038();
  sub_1D2878F18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1D2876728();
}

uint64_t sub_1D26A88B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a4;
  v52 = a2;
  v53 = MEMORY[0x1E697E0B8];
  v54 = a3;
  v55 = MEMORY[0x1E697E0A8];
  v7 = sub_1D2874408();
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v44 = v40 - v8;
  WitnessTable = swift_getWitnessTable();
  v52 = a2;
  v53 = MEMORY[0x1E69815C0];
  v46 = v7;
  v54 = v7;
  v55 = a3;
  v56 = MEMORY[0x1E6981568];
  v57 = WitnessTable;
  v10 = sub_1D2875038();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v43 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v41 = v40 - v13;
  v14 = sub_1D2875628();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D2878F18();
  v49 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v47 = v40 - v22;
  v40[0] = a2;
  v40[1] = a3;
  v23 = type metadata accessor for BubbleBackgroundViewModifier();
  v24 = *(v23 + 48);
  v42 = a1;
  v25 = a1 + v24;
  if (*(v25 + 8) == 1)
  {
    v52 = *v25;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v26 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v15 + 8))(v17, v14);
  }

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v52 = off_1ED8A4930;
  sub_1D2341C90();
  sub_1D28719E8();
  sub_1D23B7BB8();
  sub_1D2870F78();
  v27 = sub_1D2878A58();
  v28 = sub_1D2878068();
  v29 = [v27 BOOLForKey_];

  if (v29)
  {
    (*(v48 + 56))(v20, 1, 1, v10);
    swift_getWitnessTable();
  }

  else
  {
    v52 = sub_1D26A8FC4(v23);
    v30 = v44;
    sub_1D26A5300(&v52, 256, v40[0], MEMORY[0x1E697E0B8]);

    v52 = sub_1D26A951C(v23);
    sub_1D26A96D8(v23);
    v31 = v46;
    v32 = swift_getWitnessTable();
    v33 = v43;
    sub_1D26A5494(&v52, 1, v31, MEMORY[0x1E69815C0], v32, MEMORY[0x1E6981568], v43);

    (*(v45 + 8))(v30, v31);
    swift_getWitnessTable();
    v34 = v41;
    sub_1D245980C(v33);
    v35 = v48;
    v36 = *(v48 + 8);
    v36(v33, v10);
    sub_1D245980C(v34);
    v36(v34, v10);
    (*(v35 + 32))(v20, v33, v10);
    (*(v35 + 56))(v20, 0, 1, v10);
  }

  v37 = v47;
  sub_1D25DBE10(v20, v47);
  v38 = *(v49 + 8);
  v38(v20, v18);
  v51 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D245980C(v37);
  return (v38)(v37, v18);
}

uint64_t sub_1D26A8FC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF980);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v37 - v4;
  v6 = sub_1D2875628();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2874438();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v37 - v13;
  v15 = sub_1D28777D8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v42 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v41 = v37 - v19;
  if (*(v1 + *(a1 + 36)) != 1)
  {
    v45 = sub_1D2877098();
    return sub_1D28748D8();
  }

  v37[0] = v5;
  v37[1] = v3;
  v43 = v1;
  sub_1D24CC0E8(v14);
  (*(v9 + 104))(v11, *MEMORY[0x1E697DBB8], v8);
  v20 = sub_1D2874428();
  v21 = *(v9 + 8);
  v21(v11, v8);
  v21(v14, v8);
  v22 = a1;
  if (v20)
  {
    v23 = v16;
    if (qword_1EC6D8920 != -1)
    {
      swift_once();
    }

    v24 = qword_1EC6E3B60;
  }

  else
  {
    v23 = v16;
    if (qword_1ED8A4B98 != -1)
    {
      swift_once();
    }

    v24 = qword_1ED8B0240;
  }

  v26 = v37[0];
  v27 = v41;
  v28 = __swift_project_value_buffer(v15, v24);
  v29 = *(v23 + 16);
  v29(v27, v28, v15);
  v30 = v43 + *(v22 + 52);
  v31 = *v30;
  if (*(v30 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v33 = sub_1D28762E8();
    sub_1D2873BE8();

    v34 = v38;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v31, 0);
    (*(v39 + 8))(v34, v40);
    v32 = v42;
    if (v44 != 1)
    {
      goto LABEL_12;
    }

LABEL_14:
    sub_1D2877798();
    goto LABEL_15;
  }

  v32 = v42;
  if (v31)
  {
    goto LABEL_14;
  }

LABEL_12:
  v29(v32, v27, v15);
LABEL_15:
  sub_1D26A951C(v22);
  sub_1D28745A8();

  v29(v26, v32, v15);
  sub_1D22BB9D8(&qword_1ED89D6B8, &qword_1EC6DF980);
  v35 = sub_1D28748D8();
  v36 = *(v23 + 8);
  v36(v32, v15);
  v36(v27, v15);
  return v35;
}

uint64_t sub_1D26A951C(uint64_t a1)
{
  v3 = sub_1D2875628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v14 = *v7;
    if (v8)
    {
LABEL_3:
      v9 = [objc_opt_self() whiteColor];
      v10 = [v9 colorWithAlphaComponent_];

      return sub_1D2877128();
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v12 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  return sub_1D2877098();
}

double sub_1D26A96D8(uint64_t a1)
{
  v3 = sub_1D2875628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 40);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v13 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v15)
    {
      goto LABEL_3;
    }

    return 0.0;
  }

  v15 = *v7;
  if (!v8)
  {
    return 0.0;
  }

LABEL_3:
  v9 = v1 + *(a1 + 44);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v11 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v10, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v10) = v14[14];
  }

  result = 0.0;
  if (v10)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1D26A98FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = type metadata accessor for BubbleBackgroundViewModifier();
  *(a4 + v6[9]) = a2;
  v7 = a4 + v6[10];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a4 + v6[11];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a4 + v6[12];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a4 + v6[13];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = v6[14];
  *(a4 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D26A9A34()
{
  sub_1D26A9A70();
  sub_1D2875638();
  return v1;
}

unint64_t sub_1D26A9A70()
{
  result = qword_1ED8A1788;
  if (!qword_1ED8A1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A1788);
  }

  return result;
}

uint64_t sub_1D26A9B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF8E8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC6DF8F0);
  v9 = a2 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = v5;
  return result;
}

void sub_1D26A9BAC()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D2613D28(319, &qword_1ED89E040);
    if (v1 <= 0x3F)
    {
      sub_1D2613D28(319, &qword_1ED89E048);
      if (v2 <= 0x3F)
      {
        sub_1D26AA228(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings);
        if (v3 <= 0x3F)
        {
          sub_1D26AA228(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D26A9CE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1D2874438() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = v10 + ((((v11 + 42) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12) + 1;
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_9;
    }

    v16 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 >= 2)
    {
LABEL_9:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

LABEL_16:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v13)
      {
        if (v13 > 3)
        {
          LODWORD(v13) = 4;
        }

        if (v13 > 2)
        {
          if (v13 == 3)
          {
            LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v13) = *a1;
          }
        }

        else if (v13 == 1)
        {
          LODWORD(v13) = *a1;
        }

        else
        {
          LODWORD(v13) = *a1;
        }
      }

      v21 = v8 + (v13 | v17);
      return (v21 + 1);
    }
  }

LABEL_27:
  if (v7 < 0xFE)
  {
    v20 = *(a1 + v11);
    if (v20 < 2)
    {
      return 0;
    }

    v21 = (v20 + 2147483646) & 0x7FFFFFFF;
    return (v21 + 1);
  }

  v18 = *(v6 + 48);

  return v18(a1, v7, v5);
}

void sub_1D26A9F3C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1D2874438() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 42) & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    a1[v13] = a2 + 1;
  }

  else
  {
    v22 = *(v23 + 56);

    v22(a1, a2, v9, v7);
  }
}

void sub_1D26AA228(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D28744A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D26AA27C()
{
  result = qword_1ED89DDA0;
  if (!qword_1ED89DDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC6DF8F0);
    sub_1D22BB9D8(&qword_1ED89D458, &qword_1EC6DF8E8);
    sub_1D22BB9D8(&qword_1ED89D2C0, &qword_1EC6D9CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDA0);
  }

  return result;
}

uint64_t sub_1D26AA3D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D26AA43C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D2613D28(319, &qword_1ED89E040);
    if (v1 <= 0x3F)
    {
      sub_1D26AA808();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D26AA504(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 25) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = a1[v6];
    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1D26AA644(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 25) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        a1[v9] = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 25) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1D26AA808()
{
  if (!qword_1ED89E000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF978);
    v0 = sub_1D28744A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89E000);
    }
  }
}

void sub_1D26AA86C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D2613D28(319, &qword_1ED89E040);
    if (v1 <= 0x3F)
    {
      sub_1D2613D28(319, &qword_1ED89E048);
      if (v2 <= 0x3F)
      {
        sub_1D26AA228(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings);
        if (v3 <= 0x3F)
        {
          sub_1D2613D28(319, &qword_1ED89DFB0);
          if (v4 <= 0x3F)
          {
            sub_1D26AA228(319, &qword_1ED89DFE8, MEMORY[0x1E697DBD0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D26AA9C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1D2874438() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v12 = *(v9 + 80) & 0xF8 | 7;
    v13 = v10 + (((v11 & 0xFFFFFFFFFFFFFFF8) + v12 + 65) & ~v12) + 1;
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_9;
    }

    v16 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v16 >= 2)
    {
LABEL_9:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

LABEL_16:
      v17 = (v15 - 1) << v14;
      if (v13 > 3)
      {
        v17 = 0;
      }

      if (v13)
      {
        if (v13 > 3)
        {
          LODWORD(v13) = 4;
        }

        if (v13 > 2)
        {
          if (v13 == 3)
          {
            LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v13) = *a1;
          }
        }

        else if (v13 == 1)
        {
          LODWORD(v13) = *a1;
        }

        else
        {
          LODWORD(v13) = *a1;
        }
      }

      v21 = v8 + (v13 | v17);
      return (v21 + 1);
    }
  }

LABEL_27:
  if (v7 < 0xFE)
  {
    v20 = *(a1 + v11);
    if (v20 < 2)
    {
      return 0;
    }

    v21 = (v20 + 2147483646) & 0x7FFFFFFF;
    return (v21 + 1);
  }

  v18 = *(v6 + 48);

  return v18(a1, v7, v5);
}

void sub_1D26AAC1C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1D2874438() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + (((v13 & 0xFFFFFFFFFFFFFFF8) + v14 + 65) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    a1[v13] = a2 + 1;
  }

  else
  {
    v22 = *(v23 + 56);

    v22(a1, a2, v9, v7);
  }
}

uint64_t sub_1D26AAF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v30 = a8;
  v31 = a7;
  v32 = a3;
  v28 = a1;
  v29 = a2;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v27 - v21;
  sub_1D28779F8();
  (*(v16 + 16))(v19, v28, a5);
  (*(v12 + 16))(v14, v8, a4);
  v23 = v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = *(a6 + 8);
  sub_1D2870F68();
  return sub_1D26AB234(v22, v19, v23, v32, v14, AssociatedTypeWitness, v27, a4, v30, AssociatedConformanceWitness, v31, v25);
}

uint64_t sub_1D26AB234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a5;
  v42 = a4;
  v37 = a3;
  v38 = a8;
  v40 = a2;
  v47 = a9;
  v48 = a1;
  v33[1] = a10;
  v41 = *(a8 - 8);
  v45 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v39 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D2875AD8();
  MEMORY[0x1EEE9AC00](v46);
  v43 = v33 - v15;
  v36 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a6 - 8);
  v19 = v34;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D2874BB8();
  MEMORY[0x1EEE9AC00](v23);
  WitnessTable = swift_getWitnessTable();
  v49 = v23;
  v50 = a7;
  v51 = WitnessTable;
  v52 = a11;
  v35 = sub_1D2874408();
  v25 = MEMORY[0x1EEE9AC00](v35);
  v26 = *(v19 + 16);
  v33[0] = a6;
  v26(v22, v48, a6, v25);
  sub_1D2874BA8();
  v27 = v36;
  v28 = v40;
  (*(v36 + 16))(v18, v40, a7);
  sub_1D28743F8();
  v29 = v41;
  v30 = v38;
  v31 = v44;
  (*(v41 + 16))(v39, v44, v38);
  sub_1D2877848();
  (*(v29 + 8))(v31, v30);
  (*(v27 + 8))(v28, a7);
  (*(v34 + 8))(v48, v33[0]);
  sub_1D2875AC8();
  return sub_1D2874ED8();
}

uint64_t sub_1D26AB66C()
{
  type metadata accessor for BubbleShadowModifier();

  return sub_1D26A79E0();
}

uint64_t type metadata accessor for SceneConditioningImage()
{
  result = qword_1ED8A68A0;
  if (!qword_1ED8A68A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D26AB770()
{
  result = type metadata accessor for PlaygroundImage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D26AB7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PhotosPersonAsset();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D26AB868()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D26AB9A0@<X0>(uint64_t a1@<X8>)
{
  sub_1D239A330(v1, a1);
  v3 = type metadata accessor for PlaygroundImage();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1D26ABA48(uint64_t a1)
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D26ABEEC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  v3 = 0;
  v4 = *(v1 + *(a1 + 20));
  if (v4 != 2)
  {
    MEMORY[0x1D38A2260](1);
    v3 = v4 & 1;
  }

  MEMORY[0x1D38A2260](v3);
  return sub_1D2879828();
}

uint64_t sub_1D26ABB1C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D26ABEEC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  v4 = 0;
  v5 = *(v2 + *(a2 + 20));
  if (v5 != 2)
  {
    MEMORY[0x1D38A2260](1);
    v4 = v5 & 1;
  }

  return MEMORY[0x1D38A2260](v4);
}

uint64_t sub_1D26ABBE0(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D26ABEEC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  v4 = 0;
  v5 = *(v2 + *(a2 + 20));
  if (v5 != 2)
  {
    MEMORY[0x1D38A2260](1);
    v4 = v5 & 1;
  }

  MEMORY[0x1D38A2260](v4);
  return sub_1D2879828();
}

uint64_t sub_1D26ABCB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaygroundImage();
  result = sub_1D28717B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D26ABCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PlaygroundImage();
  if (_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);
    if (v7 == 2)
    {
      if (v8 == 2)
      {
        return 1;
      }
    }

    else
    {
      v10 = (v8 ^ v7) & 1;
      if (v8 != 2 && v10 == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D26ABDB8(uint64_t a1)
{
  result = sub_1D26ABEEC(&qword_1EC6DF990, type metadata accessor for SceneConditioningImage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D26ABE10(uint64_t a1)
{
  *(a1 + 8) = sub_1D26ABEEC(&qword_1EC6DF998, type metadata accessor for SceneConditioningImage);
  result = sub_1D26ABEEC(&qword_1EC6DF9A0, type metadata accessor for SceneConditioningImage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D26ABE94(uint64_t a1)
{
  result = sub_1D26ABEEC(&qword_1EC6DF7E0, type metadata accessor for SceneConditioningImage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D26ABEEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CreationFloatingBubblesView()
{
  result = qword_1ED89F790;
  if (!qword_1ED89F790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26ABFA8()
{
  sub_1D26AC308(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1D26AC308(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1D258D44C(319, &qword_1ED89D1E8, &qword_1EC6DF9B0, &unk_1D289C870, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1D26AC308(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1D258D44C(319, &qword_1ED89D198, &qword_1EC6D8F48, &unk_1D287CC90, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1D26AC358(319, &qword_1ED89D048, type metadata accessor for FloatingBubblesViewModel, MEMORY[0x1E6981AA0]);
            if (v5 <= 0x3F)
            {
              sub_1D26AC358(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1D26AC358(319, &unk_1ED89E010, type metadata accessor for ComposingAnimationCoordinator, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1D258D44C(319, &qword_1ED89DFC0, &qword_1EC6D99B8, &unk_1D287E890, MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1D26AC358(319, &qword_1ED89DFD0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1D26AC358(319, &qword_1ED89D178, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D26AC308(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D26AC358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D26AC3E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26B7D44(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState);
  return result;
}

uint64_t sub_1D26AC4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB60);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - v3;
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D28714D8();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB68);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for PhotoSharingConfirmationParams(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  sub_1D22BD1D0(v38, v12, &qword_1EC6DBFA0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6DBFA0);
    sub_1D22BD1D0(v40, v4, &qword_1EC6DBFA8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA8);
    sub_1D26B8104();
    sub_1D22BB9D8(&qword_1ED89D0F8, &qword_1EC6DBFA8);
    return sub_1D2875AF8();
  }

  else
  {
    v38 = v2;
    sub_1D26B7C14(v12, v19, type metadata accessor for PhotoSharingConfirmationParams);
    sub_1D26B7CDC(v19, v16, type metadata accessor for PhotoSharingConfirmationParams);
    v21 = v39 + *(v42 + 36);
    sub_1D26B7CDC(v16, v21, type metadata accessor for PhotoSharingConfirmationParams);
    v22 = v21 + *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) + 20);
    v23 = sub_1D2872008();
    (*(*(v23 - 8) + 16))(v22, v16, v23);
    v24 = &v16[v13[5]];
    v26 = *v24;
    v25 = *(v24 + 1);
    v27 = v16[v13[6]];
    v28 = v16[v13[7]];
    v29 = type metadata accessor for PhotoSharingViewConfiguration(0);
    v30 = (v22 + v29[5]);
    *v30 = v26;
    v30[1] = v25;
    *(v22 + v29[6]) = v27;
    *(v22 + v29[7]) = v28;
    sub_1D2870F68();
    sub_1D2877FE8();
    if (qword_1ED89E0F0 != -1)
    {
      swift_once();
    }

    v31 = v36;
    v32 = __swift_project_value_buffer(v36, qword_1ED8B0060);
    (*(v34 + 16))(v35, v32, v31);
    sub_1D28718C8();
    sub_1D2871508();
    sub_1D26B7C7C(v16, type metadata accessor for PhotoSharingConfirmationParams);
    v33 = v39;
    sub_1D22BD1D0(v40, v39, &qword_1EC6DBFA8);
    sub_1D22BD1D0(v33, v4, &qword_1EC6DFB68);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA8);
    sub_1D26B8104();
    sub_1D22BB9D8(&qword_1ED89D0F8, &qword_1EC6DBFA8);
    sub_1D2875AF8();
    sub_1D22BD238(v33, &qword_1EC6DFB68);
    return sub_1D26B7C7C(v19, type metadata accessor for PhotoSharingConfirmationParams);
  }
}

uint64_t sub_1D26ACB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6E0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - v3;
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1D28714D8();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC6C8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for PhotoSharingConfirmationParams(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  sub_1D22BD1D0(v38, v12, &qword_1EC6DBFA0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6DBFA0);
    sub_1D26B7CDC(v40, v4, type metadata accessor for GridPickerItemView);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GridPickerItemView();
    sub_1D24C1D9C();
    sub_1D26B7D44(qword_1ED8A2030, type metadata accessor for GridPickerItemView);
    return sub_1D2875AF8();
  }

  else
  {
    sub_1D26B7C14(v12, v19, type metadata accessor for PhotoSharingConfirmationParams);
    sub_1D26B7CDC(v19, v16, type metadata accessor for PhotoSharingConfirmationParams);
    v21 = v39 + *(v42 + 36);
    sub_1D26B7CDC(v16, v21, type metadata accessor for PhotoSharingConfirmationParams);
    v22 = v21 + *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) + 20);
    v23 = sub_1D2872008();
    (*(*(v23 - 8) + 16))(v22, v16, v23);
    v24 = &v16[v13[5]];
    v26 = *v24;
    v25 = *(v24 + 1);
    v27 = v16[v13[6]];
    v28 = v16[v13[7]];
    v29 = type metadata accessor for PhotoSharingViewConfiguration(0);
    v30 = (v22 + v29[5]);
    *v30 = v26;
    v30[1] = v25;
    *(v22 + v29[6]) = v27;
    *(v22 + v29[7]) = v28;
    sub_1D2870F68();
    sub_1D2877FE8();
    if (qword_1ED89E0F0 != -1)
    {
      swift_once();
    }

    v31 = v36;
    v32 = __swift_project_value_buffer(v36, qword_1ED8B0060);
    (*(v34 + 16))(v35, v32, v31);
    sub_1D28718C8();
    sub_1D2871508();
    sub_1D26B7C7C(v16, type metadata accessor for PhotoSharingConfirmationParams);
    v33 = v39;
    sub_1D26B7CDC(v40, v39, type metadata accessor for GridPickerItemView);
    sub_1D22BD1D0(v33, v4, &qword_1EC6DC6C8);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for GridPickerItemView();
    sub_1D24C1D9C();
    sub_1D26B7D44(qword_1ED8A2030, type metadata accessor for GridPickerItemView);
    sub_1D2875AF8();
    sub_1D22BD238(v33, &qword_1EC6DC6C8);
    return sub_1D26B7C7C(v19, type metadata accessor for PhotoSharingConfirmationParams);
  }
}

uint64_t sub_1D26AD1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB30);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v44 - v3;
  v5 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_1D28714D8();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA48);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for PhotoSharingConfirmationParams(0);
  v14 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  sub_1D22BD1D0(v48, v12, &qword_1EC6DBFA0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D22BD238(v12, &qword_1EC6DBFA0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB18);
    (*(*(v20 - 8) + 16))(v4, v50, v20);
    swift_storeEnumTagMultiPayload();
    sub_1D26B54B4();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA50);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA660);
    v23 = sub_1D26B560C();
    v24 = sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660);
    v53 = v21;
    v54 = v22;
    v55 = v23;
    v56 = v24;
    swift_getOpaqueTypeConformance2();
    return sub_1D2875AF8();
  }

  else
  {
    v48 = v2;
    sub_1D26B7C14(v12, v19, type metadata accessor for PhotoSharingConfirmationParams);
    sub_1D26B7CDC(v19, v16, type metadata accessor for PhotoSharingConfirmationParams);
    v26 = &v49[*(v52 + 36)];
    sub_1D26B7CDC(v16, v26, type metadata accessor for PhotoSharingConfirmationParams);
    v27 = v26 + *(type metadata accessor for PhotoSharingConfirmationViewModifier(0) + 20);
    v28 = sub_1D2872008();
    (*(*(v28 - 8) + 16))(v27, v16, v28);
    v29 = &v16[v13[5]];
    v31 = *v29;
    v30 = *(v29 + 1);
    v32 = v16[v13[6]];
    v33 = v16[v13[7]];
    v34 = type metadata accessor for PhotoSharingViewConfiguration(0);
    v35 = (v27 + v34[5]);
    *v35 = v31;
    v35[1] = v30;
    *(v27 + v34[6]) = v32;
    *(v27 + v34[7]) = v33;
    sub_1D2870F68();
    sub_1D2877FE8();
    if (qword_1ED89E0F0 != -1)
    {
      swift_once();
    }

    v36 = v46;
    v37 = __swift_project_value_buffer(v46, qword_1ED8B0060);
    (*(v44 + 16))(v45, v37, v36);
    sub_1D28718C8();
    sub_1D2871508();
    v47 = type metadata accessor for PhotoSharingConfirmationParams;
    sub_1D26B7C7C(v16, type metadata accessor for PhotoSharingConfirmationParams);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB18);
    v39 = v49;
    (*(*(v38 - 8) + 16))(v49, v50, v38);
    sub_1D22BD1D0(v39, v4, &qword_1EC6DFA48);
    swift_storeEnumTagMultiPayload();
    sub_1D26B54B4();
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA50);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA660);
    v42 = sub_1D26B560C();
    v43 = sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660);
    v53 = v40;
    v54 = v41;
    v55 = v42;
    v56 = v43;
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    sub_1D22BD238(v39, &qword_1EC6DFA48);
    return sub_1D26B7C7C(v19, v47);
  }
}

double sub_1D26AD918@<D0>(_OWORD *a1@<X8>)
{
  sub_1D26B7BC0();
  sub_1D2875638();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1D26AD968()
{
  sub_1D26B7BC0();
  sub_1D2870F78();
  return sub_1D2875648();
}

uint64_t sub_1D26AD9C8@<X0>(_BYTE *a1@<X8>)
{
  sub_1D26A9A70();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D26ADA64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for CreationFloatingBubblesView();
  v4 = v3 - 8;
  v53 = *(v3 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D2871818();
  v49 = *(v56 - 8);
  v6 = v49;
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9B8);
  MEMORY[0x1EEE9AC00](v57);
  v9 = &v45 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9C0);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v45 - v10;
  sub_1D26AE1D8(v1, v9);
  v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9C8) + 36)] = 1;
  KeyPath = swift_getKeyPath();
  v48 = *(v4 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  v11 = v59;
  swift_getKeyPath();
  v59 = v11;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentAnimationID;
  swift_beginAccess();
  v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9D0) + 36)];
  v47 = v9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9D8);
  v15 = *(v6 + 16);
  v15(v13 + *(v14 + 28), v11 + v12, v56);

  *v13 = KeyPath;
  v16 = v2 + *(v4 + 80);
  v17 = *(v16 + 16);
  v63 = *v16;
  v64 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  sub_1D2877328();
  v18 = v59;
  v19 = v60;
  v20 = v61;
  v21 = v62;
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v22[5] = v21;
  v23 = &v9[*(v57 + 36)];
  *v23 = sub_1D22A585C;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_1D2478FBC;
  *(v23 + 3) = v22;
  v45 = v2;
  sub_1D2877618();
  v24 = v59;
  swift_getKeyPath();
  v59 = v24;
  sub_1D28719E8();

  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentAnimationID;
  swift_beginAccess();
  v26 = v50;
  v27 = v56;
  v15(v50, v24 + v25, v56);

  v48 = type metadata accessor for CreationFloatingBubblesView;
  v28 = v58;
  sub_1D26B7CDC(v2, v58, type metadata accessor for CreationFloatingBubblesView);
  v29 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v30 = swift_allocObject();
  sub_1D26B7C14(v28, v30 + v29, type metadata accessor for CreationFloatingBubblesView);
  sub_1D26B4A7C();
  sub_1D26B7D44(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
  v31 = v51;
  v32 = v47;
  sub_1D2876F58();

  (*(v49 + 8))(v26, v27);
  sub_1D22BD238(v32, &qword_1EC6DF9B8);
  v33 = v45;
  v34 = v58;
  v35 = v48;
  sub_1D26B7CDC(v45, v58, v48);
  v36 = swift_allocObject();
  sub_1D26B7C14(v34, v36 + v29, type metadata accessor for CreationFloatingBubblesView);
  v37 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAE8) + 36));
  *v37 = sub_1D26B607C;
  v37[1] = v36;
  v37[2] = 0;
  v37[3] = 0;
  sub_1D26B7CDC(v33, v34, v35);
  v38 = swift_allocObject();
  sub_1D26B7C14(v34, v38 + v29, type metadata accessor for CreationFloatingBubblesView);
  v39 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAF0) + 36));
  *v39 = 0;
  v39[1] = 0;
  v39[2] = sub_1D26B6094;
  v39[3] = v38;
  sub_1D26B7CDC(v33, v34, v35);
  v40 = swift_allocObject();
  sub_1D26B7C14(v34, v40 + v29, type metadata accessor for CreationFloatingBubblesView);
  v41 = sub_1D2877848();
  v42 = (v31 + *(v54 + 36));
  *v42 = sub_1D26B60AC;
  v42[1] = v40;
  v42[2] = v41;
  v42[3] = v43;
  sub_1D26B611C();
  sub_1D2876CC8();
  return sub_1D22BD238(v31, &qword_1EC6DF9C0);
}

uint64_t sub_1D26AE1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAC8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v68 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAC0);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v68 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAB8);
  MEMORY[0x1EEE9AC00](v81);
  v74 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v68 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB08);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA00);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v68 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9F8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9F0);
  MEMORY[0x1EEE9AC00](v78);
  v71 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v68 - v19;
  v21 = sub_1D2875628();
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v26 = *(a1 + 24) == 1;
  v76 = v27;
  if (v26)
  {
    v30 = v22;
    if (!v25)
    {
LABEL_7:
      v31 = (a1 + *(type metadata accessor for CreationFloatingBubblesView() + 76));
      v32 = v31[1];
      *v13 = *v31;
      v13[1] = v32;
      sub_1D26AEC50(v13 + *(v11 + 44));
      sub_1D2877848();
      sub_1D2875208();
      v33 = sub_1D22EC9BC(v13, v16, &qword_1EC6DFA00);
      v34 = &v16[*(v14 + 36)];
      v35 = v88;
      *(v34 + 4) = v87;
      *(v34 + 5) = v35;
      *(v34 + 6) = v89;
      v36 = v84;
      *v34 = v83;
      *(v34 + 1) = v36;
      v37 = v86;
      *(v34 + 2) = v85;
      *(v34 + 3) = v37;
      v38 = MEMORY[0x1D38A0390](v33, 0.5, 1.0, 0.0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
      sub_1D2877618();
      v39 = v82;
      swift_getKeyPath();
      v82 = v39;
      sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
      sub_1D28719E8();

      v40 = *(v39 + 16);
      sub_1D2870F68();

      v41 = v71;
      sub_1D22EC9BC(v16, v71, &qword_1EC6DF9F8);
      v42 = (v41 + *(v78 + 36));
      *v42 = v38;
      v42[1] = v40;
      v43 = &qword_1EC6DF9F0;
      sub_1D22EC9BC(v41, v20, &qword_1EC6DF9F0);
      sub_1D22BD1D0(v20, v80, &qword_1EC6DF9F0);
      swift_storeEnumTagMultiPayload();
      sub_1D26B4D88();
      sub_1D26B5CA0();
      goto LABEL_10;
    }
  }

  else
  {
    v69 = v22;
    sub_1D2870F78();
    sub_1D2878A28();
    v70 = v11;
    v29 = sub_1D28762E8();
    v11 = v70;
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v25, 0);
    v30 = v69;
    (*(v76 + 8))(v24);
    if (!v83)
    {
      goto LABEL_7;
    }
  }

  v28 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    LOBYTE(v82) = *(a1 + 16);
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v44 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v28, 0);
    (*(v76 + 8))(v24, v30);
    LOBYTE(v28) = v82;
  }

  sub_1D26AF418();
  v46 = v45;
  v47 = type metadata accessor for CreationFloatingBubblesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  v48 = v83;
  swift_getKeyPath();
  *&v83 = v48;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  v49 = *(v48 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition);

  v50 = *(a1 + *(v47 + 56));
  *v5 = v28;
  *(v5 + 8) = xmmword_1D289C800;
  *(v5 + 3) = v46;
  *(v5 + 4) = v49;
  v5[40] = v50;
  *(v5 + 3) = xmmword_1D289C810;
  *(v5 + 4) = xmmword_1D289C820;
  *(v5 + 10) = 0x3FE24924A0000000;
  v51 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAD0) + 44)];
  sub_1D26AEC50(v51);
  v52 = *(a1 + *(v47 + 48));
  v53 = v52 * -0.79 + 1.0;
  sub_1D2877AE8();
  v55 = v54;
  v57 = v56;
  v58 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFAE0) + 36);
  *v58 = v53;
  *(v58 + 8) = v53;
  *(v58 + 16) = v55;
  *(v58 + 24) = v57;
  v59 = v5;
  v60 = v73;
  sub_1D22EC9BC(v59, v73, &qword_1EC6DFAC8);
  v61 = v60 + *(v72 + 36);
  *v61 = v52 * 5.0;
  *(v61 + 8) = 0;
  sub_1D2877848();
  sub_1D2875208();
  v62 = v74;
  sub_1D22EC9BC(v60, v74, &qword_1EC6DFAC0);
  v63 = (v62 + *(v81 + 36));
  v64 = v88;
  v63[4] = v87;
  v63[5] = v64;
  v63[6] = v89;
  v65 = v84;
  *v63 = v83;
  v63[1] = v65;
  v66 = v86;
  v63[2] = v85;
  v63[3] = v66;
  v43 = &qword_1EC6DFAB8;
  v20 = v75;
  sub_1D22EC9BC(v62, v75, &qword_1EC6DFAB8);
  sub_1D22BD1D0(v20, v80, &qword_1EC6DFAB8);
  swift_storeEnumTagMultiPayload();
  sub_1D26B4D88();
  sub_1D26B5CA0();
LABEL_10:
  sub_1D2875AF8();
  return sub_1D22BD238(v20, v43);
}

uint64_t sub_1D26AEC50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_1D2875628();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v50);
  v6 = &v40 - v5;
  v7 = type metadata accessor for CreationFloatingBubblesView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA18);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA10);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v40 - v13;
  v43 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  v14 = v52;
  swift_getKeyPath();
  *&v52 = v14;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  v15 = *(v14 + 16);
  sub_1D2870F68();

  *&v52 = v15;
  sub_1D26B7CDC(v2, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreationFloatingBubblesView);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v44 = v9;
  v17 = swift_allocObject();
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D26B7C14(v45, v17 + v16, type metadata accessor for CreationFloatingBubblesView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA30);
  sub_1D22BB9D8(&qword_1ED89CED0, &qword_1EC6DBD10);
  sub_1D26B526C();
  sub_1D26B7D44(&qword_1ED89E4D0, type metadata accessor for Bubble);
  v18 = sub_1D2877588();
  v19 = MEMORY[0x1D38A0390](v18, 0.5, 1.0, 0.0);
  v20 = *(v2 + 80);
  v52 = *(v2 + 64);
  v53 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB10);
  sub_1D2877308();
  v21 = v56;
  v22 = v57;
  v23 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA20) + 36)];
  *v23 = v19;
  v23[1] = v21;
  v23[2] = v22;
  v24 = v51;
  KeyPath = swift_getKeyPath();
  v26 = &v11[*(v24 + 36)];
  *v26 = KeyPath;
  v26[8] = 1;
  v27 = *MEMORY[0x1E697E728];
  v28 = sub_1D2874E88();
  (*(*(v28 - 8) + 104))(v6, v27, v28);
  sub_1D26B7D44(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  if (result)
  {
    v30 = sub_1D26B5078();
    v31 = sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    sub_1D28769B8();
    sub_1D22BD238(v6, &unk_1EC6DE860);
    sub_1D22BD238(v11, &qword_1EC6DFA18);
    v32 = v2 + *(v43 + 64);
    v33 = *v32;
    if (*(v32 + 8) == 1)
    {
      LOBYTE(v56) = *v32;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v34 = sub_1D28762E8();
      sub_1D2873BE8();

      v35 = v40;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v33, 0);
      (*(v41 + 8))(v35, v42);
      LOBYTE(v33) = v56;
    }

    v55 = v33;
    v36 = v45;
    sub_1D26B7CDC(v2, v45, type metadata accessor for CreationFloatingBubblesView);
    v37 = swift_allocObject();
    sub_1D26B7C14(v36, v37 + v16, type metadata accessor for CreationFloatingBubblesView);
    *&v52 = v51;
    *(&v52 + 1) = v50;
    v53 = v30;
    v54 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1D22EBCFC();
    v38 = v47;
    v39 = v49;
    sub_1D2876F48();

    return (*(v46 + 8))(v39, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D26AF418()
{
  type metadata accessor for CreationFloatingBubblesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA700);
  sub_1D2877308();
  return sub_1D2877308();
}

uint64_t sub_1D26AF4E4(uint64_t a1)
{
  v2 = sub_1D2871818();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_1D2695B4C();
  sub_1D2875648();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1D26AF628(uint64_t a1)
{
  v2 = type metadata accessor for BubbleAnimation();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2875628();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for CreationFloatingBubblesView() + 44));
  v10 = *v9;
  v11 = *(v9 + 8);
  sub_1D2870F78();
  if ((v11 & 1) == 0)
  {
    sub_1D2878A28();
    v12 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v10 = v21[0];
  }

  if (*(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState) == 1)
  {
    *(v10 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState) = 1;
    sub_1D245FDAC(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v21[-2] = v10;
    LOBYTE(v21[-1]) = 1;
    v21[0] = v10;
    sub_1D26B7D44(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
    sub_1D28719D8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  v14 = v21[0];
  swift_getKeyPath();
  v21[0] = v14;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentAnimationID;
  swift_beginAccess();
  v16 = *(v2 + 20);
  v17 = sub_1D2871818();
  (*(*(v17 - 8) + 16))(&v4[v16], v14 + v15, v17);

  *v4 = MEMORY[0x1D38A0390](v18, 0.5, 1.0, 0.0);
  *&v4[*(v2 + 24)] = 0x3FF0000000000000;
  sub_1D26B7D44(qword_1ED8A4210, type metadata accessor for BubbleAnimation);
  sub_1D2877978();
  sub_1D28778B8();

  MEMORY[0x1EEE9AC00](v19);
  v21[-2] = a1;
  sub_1D2874BE8();
}

uint64_t sub_1D26AFAA8(uint64_t a1)
{
  v2 = sub_1D2875628();
  v15 = *(v2 - 8);
  v16 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CreationFloatingBubblesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  v6 = v17;
  swift_getKeyPath();
  v17 = v6;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  if (*(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition) != 0.0)
  {
    KeyPath = swift_getKeyPath();
    v14[1] = v14;
    MEMORY[0x1EEE9AC00](KeyPath);
    v14[-2] = v6;
    v14[-1] = 0;
    v17 = v6;
    sub_1D28719D8();
  }

  v8 = (a1 + *(v5 + 44));
  v9 = *v8;
  v10 = *(v8 + 8);
  sub_1D2870F78();
  if ((v10 & 1) == 0)
  {
    sub_1D2878A28();
    v11 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v15 + 8))(v4, v16);
    v9 = v17;
  }

  if (*(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState))
  {
    v12 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v12);
    v14[-2] = v9;
    LOBYTE(v14[-1]) = 0;
    v17 = v9;
    sub_1D26B7D44(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
    sub_1D28719D8();
  }

  else
  {
    *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationState) = 0;
    sub_1D245FDAC(0);
  }
}

uint64_t sub_1D26AFE58()
{
  type metadata accessor for CreationFloatingBubblesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition) != 0.0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();
  }
}

uint64_t sub_1D26B002C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for CreationFloatingBubblesView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1D26B7CDC(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreationFloatingBubblesView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1D26B7C14(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for CreationFloatingBubblesView);
  type metadata accessor for AppStateMonitor();
  swift_allocObject();
  v9 = sub_1D27D909C(a1, sub_1D26B6378, v8);
  v12 = *(a2 + 32);
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB00);
  return sub_1D2877318();
}

uint64_t sub_1D26B01A8(__int16 a1)
{
  if ((a1 & 0x100) != 0 && (a1 & 1) == 0)
  {
    v1 = [objc_opt_self() processInfo];
    [v1 thermalState];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  return sub_1D2877318();
}

uint64_t sub_1D26B026C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v237 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v236 = &v188 - v6;
  v226 = sub_1D2875B48();
  MEMORY[0x1EEE9AC00](v226);
  v225 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_1D2874498();
  v228 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v227 = &v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA658);
  v231 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v230 = &v188 - v9;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA660);
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v232 = &v188 - v10;
  v219 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v219);
  v218 = &v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_1D28714D8();
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v206 = &v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v202 = &v188 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v200 = &v188 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CreationFloatingBubblesView();
  v247 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v209 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v252 = &v188 - v20;
  v203 = type metadata accessor for Bubble(0);
  v245 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v198 = &v188 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v211 = &v188 - v25;
  v249 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v251 = &v188 - v28;
  v199 = type metadata accessor for BubbleView();
  MEMORY[0x1EEE9AC00](v199);
  v192 = (&v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA70);
  MEMORY[0x1EEE9AC00](v207);
  v250 = &v188 - v30;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA68);
  MEMORY[0x1EEE9AC00](v212);
  v214 = &v188 - v31;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA60);
  MEMORY[0x1EEE9AC00](v213);
  v216 = &v188 - v32;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA58);
  MEMORY[0x1EEE9AC00](v215);
  v217 = &v188 - v33;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA50);
  MEMORY[0x1EEE9AC00](v248);
  v220 = &v188 - v34;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB18);
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v221 = &v188 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA40);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v222 = &v188 - v37;
  v38 = sub_1D2871818();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_1D2875628();
  v240 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v239 = &v188 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = a1;
  v244 = sub_1D2846EE0();
  v44 = v43;
  v238 = v17;
  v45 = *(v17 + 44);
  v254 = a2;
  v46 = (a2 + v45);
  v47 = *v46;
  v48 = *(v46 + 8);
  sub_1D2870F78();
  v49 = v47;
  if ((v48 & 1) == 0)
  {
    sub_1D2878A28();
    v50 = sub_1D28762E8();
    sub_1D2873BE8();

    v51 = v239;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v240 + 8))(v51, v241);
    v49 = v259;
  }

  swift_getKeyPath();
  *&v259 = v49;
  sub_1D26B7D44(&qword_1ED89F308, type metadata accessor for ComposingAnimationCoordinator);
  sub_1D28719E8();

  v52 = OBJC_IVAR____TtC23ImagePlaygroundInternal29ComposingAnimationCoordinator__bubbleAnimationID;
  swift_beginAccess();
  (*(v39 + 16))(v41, v49 + v52, v38);

  v53 = sub_1D28717B8();
  v55 = v54;
  (*(v39 + 8))(v41, v38);
  *&v259 = v244;
  *(&v259 + 1) = v44;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v53, v55);

  v56 = v259;
  sub_1D2870F78();
  v57 = v47;
  if ((v48 & 1) == 0)
  {
    sub_1D2878A28();
    v58 = sub_1D28762E8();
    sub_1D2873BE8();

    v59 = v239;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v240 + 8))(v59, v241);
    v57 = v259;
  }

  swift_getKeyPath();
  *&v259 = v57;
  sub_1D28719E8();

  v61 = *(v57 + 24);
  v60 = *(v57 + 32);
  sub_1D2870F68();

  if (v60)
  {
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  if (v60)
  {
    v63 = v60;
  }

  else
  {
    v63 = 0xE000000000000000;
  }

  v259 = v56;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v62, v63);

  v195 = *(&v259 + 1);
  v196 = v259;
  if (v48)
  {
    v258 = v47;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v64 = sub_1D28762E8();
    sub_1D2873BE8();

    v65 = v239;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v240 + 8))(v65, v241);
    v47 = v258;
  }

  v191 = *(v47 + 16);

  v66 = v253;
  sub_1D26B7CDC(v253, v251, type metadata accessor for Bubble);
  v67 = v252;
  v193 = type metadata accessor for CreationFloatingBubblesView;
  sub_1D26B7CDC(v254, v252, type metadata accessor for CreationFloatingBubblesView);
  v68 = v211;
  v242 = type metadata accessor for Bubble;
  sub_1D26B7CDC(v66, v211, type metadata accessor for Bubble);
  v197 = *(v247 + 80);
  v69 = (v197 + 16) & ~v197;
  v247 = v197 | 7;
  v243 = *(v245 + 80);
  v210 = v69 + v246;
  v70 = (v69 + v246 + v243) & ~v243;
  v71 = v70 + v249;
  v245 = v197 | 7 | v243;
  v72 = swift_allocObject();
  v190 = v72;
  v194 = type metadata accessor for CreationFloatingBubblesView;
  sub_1D26B7C14(v67, v72 + v69, type metadata accessor for CreationFloatingBubblesView);
  v244 = type metadata accessor for Bubble;
  sub_1D26B7C14(v68, v72 + v70, type metadata accessor for Bubble);
  v73 = v209;
  sub_1D26B7CDC(v254, v209, type metadata accessor for CreationFloatingBubblesView);
  v74 = v198;
  sub_1D26B7CDC(v66, v198, type metadata accessor for Bubble);
  v208 = v71;
  v75 = swift_allocObject();
  v189 = v75;
  v211 = v69;
  sub_1D26B7C14(v73, v75 + v69, type metadata accessor for CreationFloatingBubblesView);
  v209 = v70;
  sub_1D26B7C14(v74, v75 + v70, type metadata accessor for Bubble);
  KeyPath = swift_getKeyPath();
  v77 = v192;
  *v192 = KeyPath;
  *(v77 + 8) = 0;
  *(v77 + 16) = swift_getKeyPath();
  *(v77 + 24) = 0;
  *(v77 + 32) = swift_getKeyPath();
  *(v77 + 40) = 0;
  v78 = v199;
  v79 = *(v199 + 28);
  *(v77 + v79) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  v80 = v77 + v78[8];
  *v80 = swift_getKeyPath();
  *(v80 + 8) = 0;
  v81 = v77 + v78[9];
  *v81 = swift_getKeyPath();
  *(v81 + 8) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFB0);
  sub_1D2874328();
  sub_1D2877FE8();
  sub_1D28718C8();
  v82 = *MEMORY[0x1E6968DF0];
  v83 = *(v204 + 104);
  v84 = v206;
  v85 = v205;
  v83(v206, v82, v205);
  sub_1D28714F8();
  sub_1D2877FE8();
  sub_1D28718C8();
  v83(v84, v82, v85);
  sub_1D28714F8();
  sub_1D2877FE8();
  sub_1D28718C8();
  v83(v84, v82, v85);
  sub_1D28714F8();
  v86 = v77 + v78[22];
  *v86 = xmmword_1D288A490;
  *(v86 + 16) = xmmword_1D288A4A0;
  *(v86 + 32) = xmmword_1D288A4B0;
  *(v86 + 48) = xmmword_1D288A4C0;
  *(v86 + 64) = xmmword_1D288A4D0;
  *(v86 + 80) = xmmword_1D288A4E0;
  *(v86 + 96) = 0x3FE4CCCCCCCCCCCDLL;
  *(v77 + v78[10]) = v191;
  v87 = v251;
  v88 = v201;
  sub_1D26B7CDC(v251, v201, v242);
  v89 = (v243 + 16) & ~v243;
  v90 = swift_allocObject();
  sub_1D26B7C14(v88, v90 + v89, v244);
  sub_1D2874328();
  *(v77 + v78[12]) = 1;
  v91 = (v77 + v78[13]);
  v92 = v190;
  *v91 = sub_1D26B6564;
  v91[1] = v92;
  v93 = (v77 + v78[14]);
  v94 = v189;
  *v93 = sub_1D26B657C;
  v93[1] = v94;
  *(v77 + v78[16]) = 0;
  v95 = swift_allocObject();
  v96 = v195;
  *(v95 + 16) = v196;
  *(v95 + 24) = v96;
  sub_1D2874328();
  sub_1D26B7C7C(v87, type metadata accessor for Bubble);
  *(v77 + v78[17]) = 0;
  v97 = v254;
  LODWORD(v89) = *(v254 + *(v238 + 52));
  sub_1D26B7D44(&qword_1ED8A5240, type metadata accessor for BubbleView);
  v98 = v250;
  LODWORD(v206) = v89;
  v99 = v253;
  sub_1D2876B58();
  sub_1D26B7C7C(v77, type metadata accessor for BubbleView);
  v100 = sub_1D26B27A0(v99);
  v102 = v101;
  v103 = swift_getKeyPath();
  v104 = (v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA80) + 36));
  *v104 = v103;
  v104[1] = v100;
  v104[2] = v102;
  sub_1D2874938();
  sub_1D26B2B6C();
  v105 = sub_1D28748E8();

  *(v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA78) + 36)) = v105;
  v106 = v252;
  v107 = v193;
  sub_1D26B7CDC(v97, v252, v193);
  v108 = v87;
  sub_1D26B7CDC(v99, v87, v242);
  sub_1D2878568();
  v109 = sub_1D2878558();
  v110 = (v197 + 32) & ~v197;
  v111 = (v110 + v246 + v243) & ~v243;
  v112 = swift_allocObject();
  v113 = MEMORY[0x1E69E85E0];
  *(v112 + 16) = v109;
  *(v112 + 24) = v113;
  v114 = v106;
  v115 = v106;
  v116 = v194;
  sub_1D26B7C14(v115, v112 + v110, v194);
  v117 = v108;
  v118 = v97;
  sub_1D26B7C14(v117, v112 + v111, v244);
  sub_1D26B7CDC(v97, v114, v107);
  v119 = sub_1D2878558();
  v120 = swift_allocObject();
  *(v120 + 16) = v119;
  *(v120 + 24) = MEMORY[0x1E69E85E0];
  LOBYTE(v97) = v206;
  sub_1D26B7C14(v114, v120 + v110, v116);
  sub_1D2877528();
  v121 = v259;
  LOBYTE(v114) = v260;
  LOBYTE(v255) = 0;
  sub_1D28772F8();
  v122 = v257[0];
  v123 = *(&v257[0] + 1);
  v124 = v250 + *(v207 + 36);
  *v124 = v121;
  *(v124 + 16) = v114;
  *(v124 + 24) = v122;
  *(v124 + 32) = v123;
  v125 = v97;
  if (v97)
  {
    v126 = 0;
    v127 = v217;
    v128 = v253;
    goto LABEL_24;
  }

  v129 = v118 + *(v238 + 40);
  if (*(v129 + 8) == 1)
  {
    *&v259 = *v129;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v130 = sub_1D28762E8();
    sub_1D2873BE8();

    v131 = v239;
    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v240 + 8))(v131, v241);
  }

  v128 = v253;

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  *&v259 = off_1ED8A4930;
  sub_1D26B7D44(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  sub_1D2870F78();
  v132 = sub_1D2878A58();
  v133 = sub_1D2878068();
  v134 = [v132 BOOLForKey_];

  if (v134 & 1) != 0 || (v135 = *(v118 + 56), LOBYTE(v259) = *(v118 + 48), *(&v259 + 1) = v135, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890), sub_1D2877308(), (v257[0]))
  {
    v126 = 0;
    v127 = v217;
    goto LABEL_24;
  }

  v178 = *v118;
  if (*(v118 + 8) == 1)
  {
    v127 = v217;
    if (v178)
    {
      goto LABEL_44;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v179 = sub_1D28762E8();
    sub_1D2873BE8();

    v180 = v239;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v178, 0);
    (*(v240 + 8))(v180, v241);
    v127 = v217;
    if (v259)
    {
LABEL_44:
      v126 = 0;
      goto LABEL_24;
    }
  }

  v181 = *(v118 + 80);
  v259 = *(v118 + 64);
  v260 = v181;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB10);
  sub_1D2877308();
  v182 = v257[0];
  v183 = sub_1D2846EE0();
  if (*(&v182 + 1))
  {
    if (v182 == __PAIR128__(v184, v183))
    {

      v126 = 0;
      goto LABEL_24;
    }

    v185 = sub_1D2879618();

    if (v185)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  v186 = v259;
  swift_getKeyPath();
  *&v259 = v186;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  v187 = *(v186 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldDisableFloatingAnimation[0]);

  v126 = v187 ^ 1;
LABEL_24:
  sub_1D27346D4(v126 & 1, v257, 5.0);
  v136 = v214;
  sub_1D22EC9BC(v250, v214, &qword_1EC6DFA70);
  v137 = (v136 + *(v212 + 36));
  v138 = v257[3];
  v137[2] = v257[2];
  v137[3] = v138;
  v137[4] = v257[4];
  v139 = v257[1];
  *v137 = v257[0];
  v137[1] = v139;
  v140 = v216;
  sub_1D22EC9BC(v136, v216, &qword_1EC6DFA68);
  *(v140 + *(v213 + 36)) = v125;
  v141 = sub_1D2847634();
  v143 = v142;
  v144 = v218;
  sub_1D26B7CDC(v128, v218, type metadata accessor for Bubble.BubbleType);
  v145 = swift_getEnumCaseMultiPayload() == 5;
  sub_1D26B7C7C(v144, type metadata accessor for Bubble.BubbleType);
  sub_1D22EC9BC(v140, v127, &qword_1EC6DFA60);
  v146 = v127 + *(v215 + 36);
  *v146 = v141;
  *(v146 + 8) = v143;
  *(v146 + 16) = v145;
  if (!sub_1D26B2F90())
  {
    goto LABEL_33;
  }

  v147 = *(v118 + 80);
  v259 = *(v118 + 64);
  v260 = v147;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB10);
  sub_1D2877308();
  v148 = v255;
  v149 = v256;
  v150 = sub_1D2846EE0();
  if (!v149)
  {

    goto LABEL_33;
  }

  if (v148 != v150 || v149 != v151)
  {
    v153 = sub_1D2879618();

    if (v153)
    {
      v152 = v128;
      goto LABEL_32;
    }

LABEL_33:
    v152 = v128;
    v154 = 1.0;
    goto LABEL_34;
  }

  v152 = v128;

LABEL_32:
  v154 = 0.8;
LABEL_34:
  sub_1D2877AE8();
  v156 = v155;
  v158 = v157;
  v159 = v220;
  sub_1D22EC9BC(v127, v220, &qword_1EC6DFA58);
  v160 = (v159 + *(v248 + 36));
  *v160 = v154;
  v160[1] = v154;
  *(v160 + 2) = v156;
  *(v160 + 3) = v158;
  sub_1D2875E68();
  v161 = v227;
  sub_1D2874458();
  v162 = v252;
  sub_1D26B7CDC(v118, v252, type metadata accessor for CreationFloatingBubblesView);
  v163 = v152;
  v164 = v251;
  sub_1D26B7CDC(v163, v251, type metadata accessor for Bubble);
  v165 = swift_allocObject();
  v166 = v211;
  sub_1D26B7C14(v162, v165 + v211, type metadata accessor for CreationFloatingBubblesView);
  sub_1D26B7C14(v164, v165 + v209, type metadata accessor for Bubble);
  sub_1D26B7D44(&qword_1ED89E068, MEMORY[0x1E697BEA8]);
  sub_1D26B7D44(&qword_1ED89E070, MEMORY[0x1E697BE90]);
  v167 = v230;
  v168 = v229;
  sub_1D28775B8();

  (*(v228 + 8))(v161, v168);
  sub_1D26B7CDC(v254, v162, type metadata accessor for CreationFloatingBubblesView);
  v169 = swift_allocObject();
  sub_1D26B7C14(v162, v169 + v166, type metadata accessor for CreationFloatingBubblesView);
  sub_1D22BB9D8(&qword_1ED89D760, &qword_1EC6DA658);
  v170 = v232;
  v171 = v233;
  sub_1D28775A8();

  (*(v231 + 8))(v167, v171);
  sub_1D28744D8();
  sub_1D26B560C();
  sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660);
  v172 = v221;
  v173 = v235;
  sub_1D2876BC8();
  (*(v234 + 8))(v170, v173);
  sub_1D22BD238(v159, &qword_1EC6DFA50);
  v174 = v236;
  v175 = v253;
  sub_1D26B31B8(v253, v236);
  v176 = v222;
  sub_1D26AD1A4(v174, v222);
  sub_1D22BD238(v174, &qword_1EC6DBFA0);
  (*(v223 + 8))(v172, v224);
  sub_1D26B3890(v175, &v259);
  sub_1D26B3E34(&v259, v237);
  sub_1D22BD238(&v259, &qword_1EC6DFB20);
  return sub_1D22BD238(v176, &qword_1EC6DFA40);
}

uint64_t sub_1D26B2548(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CreationFloatingBubblesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  sub_1D26B7CDC(a2, v8, type metadata accessor for Bubble.BubbleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x5DF) != 0)
  {
    sub_1D26B7C7C(v8, type metadata accessor for Bubble.BubbleType);
    sub_1D269DFD8(a2);
  }

  else
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_1D26B7C14(v8, v5, type metadata accessor for Prompt);
      sub_1D269DC18(v5);

      v11 = type metadata accessor for Prompt;
      v12 = v5;
    }

    else
    {

      v11 = type metadata accessor for Bubble.BubbleType;
      v12 = v8;
    }

    return sub_1D26B7C7C(v12, v11);
  }
}

uint64_t sub_1D26B272C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CreationFloatingBubblesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  sub_1D269DFD8(a2);
}

uint64_t sub_1D26B27A0(uint64_t a1)
{
  v34 = a1;
  v2 = sub_1D2873CB8();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2874EA8();
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  type metadata accessor for CreationFloatingBubblesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  v31 = v1;
  sub_1D2877618();
  v11 = v35;
  swift_getKeyPath();
  v35 = v11;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  v12 = *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__attractorColors);
  sub_1D2870F68();

  if (*(v12 + 16) && (v13 = sub_1D25D0908(v34), (v14 & 1) != 0))
  {
    v15 = (*(v12 + 56) + 32 * v13);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];

    sub_1D2877618();
    sub_1D24CC6D4(v10);
    v20 = v30;
    (*(v30 + 104))(v7, *MEMORY[0x1E697E7D8], v5);
    v21 = sub_1D2874E98();
    v22 = *(v20 + 8);
    v22(v7, v5);
    v22(v10, v5);
    v23 = sub_1D269E8CC(v34, v21 & 1);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      CGColorCreateGenericRGB(v16, v17, v18, v19);
      sub_1D2877118();
      return v23;
    }
  }

  else
  {

    sub_1D2872658();
    v27 = sub_1D2873CA8();
    v28 = sub_1D2878A08();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D226E000, v27, v28, "No attractor color for bubble", v29, 2u);
      MEMORY[0x1D38A3520](v29, -1, -1);
    }

    (*(v32 + 8))(v4, v33);
  }

  return 0;
}

uint64_t sub_1D26B2B6C()
{
  sub_1D28772F8();
  sub_1D28772F8();
  sub_1D28772F8();
  sub_1D28772F8();
  sub_1D26B7B6C();
  sub_1D2874968();

  MEMORY[0x1D38A0390](v0, 0.8, 1.0, 0.0);
  v1 = sub_1D2874978();

  return v1;
}

uint64_t sub_1D26B2CDC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for CreationFloatingBubblesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  swift_getKeyPath();
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  v3 = *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID);
  v2 = *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID + 8);
  sub_1D2870F68();

  v4 = sub_1D2846EE0();
  if (v2)
  {
    if (v3 == v4 && v2 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_1D2879618();
    }
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7 & 1;
  return result;
}

uint64_t sub_1D26B2E38()
{
  type metadata accessor for CreationFloatingBubblesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  v0 = (v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID);
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID + 8))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
    sub_1D28719D8();
  }

  else
  {
    *v0 = 0;
    v0[1] = 0;
  }
}

BOOL sub_1D26B2F90()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CreationFloatingBubblesView() + 64);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v8 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  return v7 != 0;
}

uint64_t sub_1D26B30F4()
{
  sub_1D2846EE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB10);
  return sub_1D2877318();
}

uint64_t sub_1D26B31B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for CreationFloatingBubblesView();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = sub_1D2872008();
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D26B7CDC(a1, v15, type metadata accessor for Bubble.BubbleType);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v46 = v3;
    v47 = v11;
    v51 = a2;
    v17 = *v15;
    v16 = v15[1];
    sub_1D2877618();
    v18 = v58;
    swift_getKeyPath();
    v58 = v18;
    sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
    sub_1D28719E8();

    v19 = *(v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
    v20 = *(v18 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID + 8);
    sub_1D2870F68();

    if (v20)
    {
      v58 = v17;
      v59 = v16;
      v55 = v19;
      v56 = v20;
      sub_1D22BD06C();
      v21 = sub_1D2878FF8();

      a2 = v51;
      if (v21)
      {
        v22 = v46;
        sub_1D2877618();
        v23 = v58;
        swift_getKeyPath();
        v58 = v23;
        sub_1D28719E8();

        v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentStyle;
        swift_beginAccess();
        (*(v53 + 16))(v52, v23 + v24, v47);

        sub_1D2877628();
        swift_getKeyPath();
        sub_1D2877648();

        (*(v48 + 8))(v10, v8);
        v25 = v55;
        v26 = v56;
        LODWORD(v48) = v57;
        v27 = v50;
        sub_1D26B7CDC(v22, v50, type metadata accessor for CreationFloatingBubblesView);
        v28 = (*(v49 + 80) + 16) & ~*(v49 + 80);
        v29 = swift_allocObject();
        sub_1D26B7C14(v27, v29 + v28, type metadata accessor for CreationFloatingBubblesView);
        sub_1D2877618();
        v30 = v54;
        swift_getKeyPath();
        v54 = v30;
        sub_1D28719E8();

        v31 = v30 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v33 = *(v31 + 8);
          ObjectType = swift_getObjectType();
          if ((*(v33 + 48))(ObjectType, v33))
          {
            v35 = swift_allocObject();
            swift_weakInit();

            v36 = swift_allocObject();
            v36[2] = v35;
            v36[3] = Strong;
            v36[4] = v33;
            Strong = sub_1D26B7B40;
LABEL_14:
            v39 = v51;
            (*(v53 + 32))(v51, v52, v47);
            v40 = type metadata accessor for PhotoSharingConfirmationParams(0);
            v41 = (v39 + v40[5]);
            *v41 = 0;
            v41[1] = 0;
            *(v39 + v40[6]) = 0;
            *(v39 + v40[7]) = 0;
            v42 = v39 + v40[8];
            *v42 = v25;
            *(v42 + 8) = v26;
            *(v42 + 16) = v48;
            v43 = (v39 + v40[9]);
            *v43 = sub_1D26B7A58;
            v43[1] = v29;
            v44 = (v39 + v40[10]);
            *v44 = Strong;
            v44[1] = v36;
            return (*(*(v40 - 1) + 56))(v39, 0, 1, v40);
          }

          swift_unknownObjectRelease();

          Strong = 0;
        }

        else
        {
        }

        v36 = 0;
        goto LABEL_14;
      }
    }

    else
    {

      a2 = v51;
    }
  }

  else
  {
    sub_1D26B7C7C(v15, type metadata accessor for Bubble.BubbleType);
  }

  v37 = type metadata accessor for PhotoSharingConfirmationParams(0);
  return (*(*(v37 - 8) + 56))(a2, 1, 1, v37);
}

uint64_t sub_1D26B3890@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v40 - v8;
  v10 = sub_1D2871F38();
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D2872008();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D26B7CDC(a1, v17, type metadata accessor for Bubble.BubbleType);
  if (swift_getEnumCaseMultiPayload() != 9)
  {
    result = sub_1D26B7C7C(v17, type metadata accessor for Bubble.BubbleType);
    goto LABEL_7;
  }

  v18 = v5;
  v20 = *v17;
  v19 = v17[1];
  v21 = *(type metadata accessor for CreationFloatingBubblesView() + 36);
  v41 = v18;
  v42 = v2;
  v40[1] = v21;
  sub_1D2877618();
  v22 = v48;
  swift_getKeyPath();
  v48 = v22;
  sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
  sub_1D28719E8();

  v23 = *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
  v24 = *(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID + 8);
  sub_1D2870F68();

  if (!v24)
  {

    v29 = 0;
    v28 = 0;
    v30 = 0;
    goto LABEL_9;
  }

  v48 = v20;
  v49 = v19;
  v51 = v23;
  v52 = v24;
  sub_1D22BD06C();
  v25 = sub_1D2878FF8();

  if ((v25 & 1) == 0)
  {
LABEL_7:
    v29 = 0;
    v28 = 0;
    v30 = 0;
    v24 = 0;
LABEL_9:
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_10;
  }

  sub_1D2871EC8();
  sub_1D2871F58();
  v27 = v44;
  if ((*(v44 + 48))(v9, 1, v10) == 1)
  {
    sub_1D22BD238(v9, &qword_1EC6D9D58);
    (*(v43 + 8))(v14, v45);
    v40[0] = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    (*(v27 + 32))(v12, v9, v10);
    v40[0] = sub_1D2871ED8();
    v28 = v37;
    (*(v27 + 8))(v12, v10);
    (*(v43 + 8))(v14, v45);
  }

  v38 = v41;
  v39 = v46;
  sub_1D2877628();
  swift_getKeyPath();
  sub_1D2877648();

  (*(v47 + 8))(v39, v38);
  v30 = v48;
  v24 = v49;
  v35 = v50;
  sub_1D2877618();
  v32 = v51;
  result = sub_1D2877618();
  v34 = v51;
  v33 = sub_1D26B77A4;
  v31 = sub_1D26B779C;
  v36 = 1;
  v29 = v40[0];
LABEL_10:
  *a2 = v29;
  a2[1] = v28;
  a2[2] = v36;
  a2[3] = v30;
  a2[4] = v24;
  a2[5] = v35;
  a2[6] = v31;
  a2[7] = v32;
  a2[8] = v33;
  a2[9] = v34;
  return result;
}

uint64_t sub_1D26B3E34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB28);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24[-v7 - 8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA38);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10 - 8];
  v12 = a1[1];
  if (v12)
  {
    v23 = a2;
    v13 = *a1;
    v26 = 0;
    v14 = *(a1 + 2);
    v15 = *(a1 + 4);
    v27[3] = *(a1 + 3);
    v27[4] = v15;
    v16 = *a1;
    v27[1] = *(a1 + 1);
    v27[2] = v14;
    v27[0] = v16;
    sub_1D26B7740(v27, v24);
    sub_1D28772F8();
    v17 = v24[0];
    v18 = v25;
    sub_1D22BD1D0(v3, v11, &qword_1EC6DFA40);
    v19 = &v11[*(v9 + 36)];
    *v19 = v13;
    *(v19 + 1) = v12;
    v20 = *(a1 + 2);
    *(v19 + 1) = *(a1 + 1);
    *(v19 + 2) = v20;
    v21 = *(a1 + 4);
    *(v19 + 3) = *(a1 + 3);
    *(v19 + 4) = v21;
    v19[80] = v17;
    *(v19 + 11) = v18;
    sub_1D22BD1D0(v11, v8, &qword_1EC6DFA38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA40);
    sub_1D26B52F8();
    sub_1D26B5384();
    sub_1D2875AF8();
    return sub_1D22BD238(v11, &qword_1EC6DFA38);
  }

  else
  {
    sub_1D22BD1D0(v3, v8, &qword_1EC6DFA40);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFA40);
    sub_1D26B52F8();
    sub_1D26B5384();
    return sub_1D2875AF8();
  }
}

uint64_t sub_1D26B40C4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for CreationFloatingBubblesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  if (*(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__creationStyle) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D26B421C()
{
  type metadata accessor for CreationFloatingBubblesView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  sub_1D2877618();
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport) = 0;
  }
}

uint64_t sub_1D26B4370(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion) == 1)
  {
    *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__acceptedSwitchToExternalStyleSuggestion) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26B7D44(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel);
    sub_1D28719D8();
  }

  return result;
}

void sub_1D26B448C()
{
  v0 = sub_1D23C7CA8();
  v1 = sub_1D2878068();
  v8 = sub_1D2878068();
  v2 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v0 + 48))
  {
    sub_1D2870F68();
    v3 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v3, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v5 = sub_1D2878068();
  v6 = sub_1D2418030(v2);

  if (v6)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22BCFD0(0, &qword_1ED89CC48);
    sub_1D26B7D44(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey);
    v7 = sub_1D2877E78();
  }

  else
  {
    v7 = 0;
  }

  [objc_opt_self() asyncSendSignal:v8 toChannel:v1 withNullableUniqueStringID:v5 withPayload:v7];
}

uint64_t sub_1D26B4688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB40);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB48);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v28 = *(v2 + 8);
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD30);
  sub_1D2877308();
  v12 = v27;
  sub_1D2877AE8();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB50);
  (*(*(v17 - 8) + 16))(v8, a1, v17);
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFB58) + 36)];
  *v18 = v12;
  *(v18 + 1) = v12;
  *(v18 + 2) = v14;
  *(v18 + 3) = v16;
  v27 = *(v2 + 24);
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877308();
  *&v8[*(v6 + 44)] = v26;
  v19 = *v2;
  if (v19)
  {
    v20 = 5.0;
  }

  else
  {
    v20 = 0.0;
  }

  sub_1D22EC9BC(v8, v11, &qword_1EC6DFB40);
  v21 = &v11[*(v9 + 36)];
  *v21 = v20;
  v21[8] = 0;
  LOBYTE(v26) = v19;
  v22 = swift_allocObject();
  v23 = *(v3 + 1);
  *(v22 + 16) = *v3;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(v3 + 4);
  sub_1D22BD1D0(&v29, &v27, &qword_1EC6DBD30);
  sub_1D22BD1D0(&v28, &v27, &qword_1EC6DA708);
  sub_1D26B7F34();
  sub_1D2876F58();

  return sub_1D22BD238(v11, &qword_1EC6DFB48);
}

uint64_t sub_1D26B4978()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708);
  sub_1D2877318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBD30);
  return sub_1D2877318();
}

unint64_t sub_1D26B4A7C()
{
  result = qword_1ED89D8D0;
  if (!qword_1ED89D8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9B8);
    sub_1D26B4B34();
    sub_1D22BB9D8(&qword_1ED89D3A0, &qword_1EC6DA6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8D0);
  }

  return result;
}

unint64_t sub_1D26B4B34()
{
  result = qword_1ED89D9E8;
  if (!qword_1ED89D9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9D0);
    sub_1D26B4BEC();
    sub_1D22BB9D8(&unk_1ED89D360, &qword_1EC6DF9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D9E8);
  }

  return result;
}

unint64_t sub_1D26B4BEC()
{
  result = qword_1ED89DBF8;
  if (!qword_1ED89DBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9C8);
    sub_1D26B4C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DBF8);
  }

  return result;
}

unint64_t sub_1D26B4C78()
{
  result = qword_1ED89D240;
  if (!qword_1ED89D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9E0);
    sub_1D26B4CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D240);
  }

  return result;
}

unint64_t sub_1D26B4CFC()
{
  result = qword_1ED89D5F0;
  if (!qword_1ED89D5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9E8);
    sub_1D26B4D88();
    sub_1D26B5CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D5F0);
  }

  return result;
}

unint64_t sub_1D26B4D88()
{
  result = qword_1ED89DAC0;
  if (!qword_1ED89DAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9F0);
    sub_1D26B4E40();
    sub_1D22BB9D8(&qword_1ED89D688, &qword_1EC6DFAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAC0);
  }

  return result;
}

unint64_t sub_1D26B4E40()
{
  result = qword_1ED89DD28;
  if (!qword_1ED89DD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9F8);
    sub_1D26B4ECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD28);
  }

  return result;
}

unint64_t sub_1D26B4ECC()
{
  result = qword_1ED89DEB8;
  if (!qword_1ED89DEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA00);
    sub_1D22BB9D8(&qword_1ED89DF50, &qword_1EC6DFA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
    sub_1D26B5078();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    swift_getOpaqueTypeConformance2();
    sub_1D22EBCFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DEB8);
  }

  return result;
}

unint64_t sub_1D26B5078()
{
  result = qword_1ED89D988;
  if (!qword_1ED89D988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA18);
    sub_1D26B5130();
    sub_1D22BB9D8(&qword_1ED89D350, &qword_1EC6DFAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D988);
  }

  return result;
}

unint64_t sub_1D26B5130()
{
  result = qword_1ED89DB50;
  if (!qword_1ED89DB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA20);
    sub_1D26B51E8();
    sub_1D22BB9D8(&qword_1ED89D690, &qword_1EC6DFAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB50);
  }

  return result;
}

unint64_t sub_1D26B51E8()
{
  result = qword_1ED89D070;
  if (!qword_1ED89D070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA28);
    sub_1D26B526C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D070);
  }

  return result;
}

unint64_t sub_1D26B526C()
{
  result = qword_1ED89D608;
  if (!qword_1ED89D608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA30);
    sub_1D26B52F8();
    sub_1D26B5384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D608);
  }

  return result;
}

unint64_t sub_1D26B52F8()
{
  result = qword_1ED89DDD0;
  if (!qword_1ED89DDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA38);
    sub_1D26B5384();
    sub_1D26B5C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DDD0);
  }

  return result;
}

unint64_t sub_1D26B5384()
{
  result = qword_1ED89D618;
  if (!qword_1ED89D618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA40);
    sub_1D26B54B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA660);
    sub_1D26B560C();
    sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D618);
  }

  return result;
}

unint64_t sub_1D26B54B4()
{
  result = qword_1ED89DC50;
  if (!qword_1ED89DC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DA660);
    sub_1D26B560C();
    sub_1D22BB9D8(&qword_1ED89DEE0, &qword_1EC6DA660);
    swift_getOpaqueTypeConformance2();
    sub_1D26B7D44(qword_1ED89E730, type metadata accessor for PhotoSharingConfirmationViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC50);
  }

  return result;
}

unint64_t sub_1D26B560C()
{
  result = qword_1ED89D798;
  if (!qword_1ED89D798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA50);
    sub_1D26B5698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D798);
  }

  return result;
}

unint64_t sub_1D26B5698()
{
  result = qword_1ED89D7C0;
  if (!qword_1ED89D7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA58);
    sub_1D26B5750();
    sub_1D22BB9D8(&qword_1ED89D478, &qword_1EC6DFA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7C0);
  }

  return result;
}

unint64_t sub_1D26B5750()
{
  result = qword_1ED89D7F0;
  if (!qword_1ED89D7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA60);
    sub_1D26B57DC();
    sub_1D26B5BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D7F0);
  }

  return result;
}

unint64_t sub_1D26B57DC()
{
  result = qword_1ED89D838;
  if (!qword_1ED89D838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA68);
    sub_1D26B5868();
    sub_1D26B5BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D838);
  }

  return result;
}

unint64_t sub_1D26B5868()
{
  result = qword_1ED89D8A0;
  if (!qword_1ED89D8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA70);
    sub_1D26B58F4();
    sub_1D26B5B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8A0);
  }

  return result;
}

unint64_t sub_1D26B58F4()
{
  result = qword_1ED89D970;
  if (!qword_1ED89D970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA78);
    sub_1D26B59AC();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D970);
  }

  return result;
}

unint64_t sub_1D26B59AC()
{
  result = qword_1ED89DB38;
  if (!qword_1ED89DB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA80);
    sub_1D26B5A64();
    sub_1D22BB9D8(&qword_1ED89D338, &qword_1EC6DFA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB38);
  }

  return result;
}

unint64_t sub_1D26B5A64()
{
  result = qword_1ED89DE30;
  if (!qword_1ED89DE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA88);
    sub_1D26B7D44(&qword_1ED8A5240, type metadata accessor for BubbleView);
    sub_1D26B7D44(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DE30);
  }

  return result;
}

unint64_t sub_1D26B5B50()
{
  result = qword_1ED8A1E30;
  if (!qword_1ED8A1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A1E30);
  }

  return result;
}

unint64_t sub_1D26B5BA4()
{
  result = qword_1ED8A0918[0];
  if (!qword_1ED8A0918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8A0918);
  }

  return result;
}

unint64_t sub_1D26B5BF8()
{
  result = qword_1ED89F088[0];
  if (!qword_1ED89F088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89F088);
  }

  return result;
}

unint64_t sub_1D26B5C4C()
{
  result = qword_1ED89E5B8;
  if (!qword_1ED89E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89E5B8);
  }

  return result;
}

unint64_t sub_1D26B5CA0()
{
  result = qword_1ED89D920;
  if (!qword_1ED89D920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAB8);
    sub_1D26B5D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D920);
  }

  return result;
}

unint64_t sub_1D26B5D2C()
{
  result = qword_1ED89DAB8;
  if (!qword_1ED89DAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAC0);
    sub_1D26B5DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAB8);
  }

  return result;
}

unint64_t sub_1D26B5DB8()
{
  result = qword_1ED89DD20;
  if (!qword_1ED89DD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAC8);
    sub_1D26B5E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD20);
  }

  return result;
}

unint64_t sub_1D26B5E44()
{
  result = qword_1ED89DEB0;
  if (!qword_1ED89DEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAD0);
    sub_1D22BB9D8(&qword_1ED89DF48, &qword_1EC6DFAD8);
    sub_1D26B5EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DEB0);
  }

  return result;
}

unint64_t sub_1D26B5EFC()
{
  result = qword_1ED89DC28;
  if (!qword_1ED89DC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFA18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
    sub_1D26B5078();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    swift_getOpaqueTypeConformance2();
    sub_1D22EBCFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC28);
  }

  return result;
}

uint64_t sub_1D26B60AC(void *a1)
{
  v3 = *(type metadata accessor for CreationFloatingBubblesView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D26B002C(a1, v4);
}

unint64_t sub_1D26B611C()
{
  result = qword_1ED89D8E0;
  if (!qword_1ED89D8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9C0);
    sub_1D26B61D4();
    sub_1D22BB9D8(&qword_1ED89D660, &qword_1EC6DFAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D8E0);
  }

  return result;
}

unint64_t sub_1D26B61D4()
{
  result = qword_1ED89DA00;
  if (!qword_1ED89DA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAF0);
    sub_1D26B6260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DA00);
  }

  return result;
}

unint64_t sub_1D26B6260()
{
  result = qword_1ED89DC20;
  if (!qword_1ED89DC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFAE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF9B8);
    sub_1D2871818();
    sub_1D26B4A7C();
    sub_1D26B7D44(&unk_1ED8A6CA0, MEMORY[0x1E69695A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DC20);
  }

  return result;
}

uint64_t sub_1D26B6378(__int16 a1)
{
  type metadata accessor for CreationFloatingBubblesView();

  return sub_1D26B01A8(a1 & 0x101);
}

uint64_t sub_1D26B6444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CreationFloatingBubblesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D26B026C(a1, v6, a2);
}

uint64_t sub_1D26B64C4(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for CreationFloatingBubblesView();

  return sub_1D26B40C4(a1, a2);
}

uint64_t sub_1D26B6594(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CreationFloatingBubblesView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Bubble(0) - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

uint64_t sub_1D26B6674@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for CreationFloatingBubblesView();
  type metadata accessor for Bubble(0);

  return sub_1D26B2CDC(a1);
}

uint64_t sub_1D26B674C()
{
  type metadata accessor for CreationFloatingBubblesView();

  return sub_1D26B2E38();
}

uint64_t objectdestroy_66Tm()
{
  v1 = type metadata accessor for CreationFloatingBubblesView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(*(type metadata accessor for Bubble(0) - 8) + 80);
  v5 = v2 + v3 + v4;
  v6 = v0 + v2;
  sub_1D2273818(*(v0 + v2), *(v0 + v2 + 8));
  sub_1D2273818(*(v6 + 16), *(v6 + 24));

  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D2875E18();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v5 & ~v4;
  sub_1D2273818(*(v6 + v1[16]), *(v6 + v1[16] + 8));
  v13 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1D2874EA8();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
  }

  v15 = v0 + v12;
  type metadata accessor for Bubble.BubbleType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {

        v84 = *(type metadata accessor for Prompt(0) + 36);
        v85 = sub_1D2871798();
        (*(*(v85 - 8) + 8))(v15 + v84, v85);
        goto LABEL_66;
      }

      if (EnumCaseMultiPayload != 6)
      {
        goto LABEL_22;
      }

      v64 = type metadata accessor for PhotosPersonAsset();
      if (!(*(*(v64 - 8) + 48))(v0 + v12, 1, v64))
      {

        if (*(v15 + 32))
        {
        }

        v65 = v15 + *(v64 + 20);

        v66 = (v65 + *(type metadata accessor for PhotosPersonImage() + 24));

        v67 = type metadata accessor for PlaygroundImage();
        v68 = v67[8];
        v69 = sub_1D2871818();
        (*(*(v69 - 8) + 8))(v66 + v68, v69);
        v70 = (v66 + v67[10]);
        v71 = v70[1];
        if (v71 >> 60 != 15)
        {
          sub_1D22D6D60(*v70, v71);
        }

        v72 = v67[11];
        v73 = sub_1D2873AA8();
        v74 = *(v73 - 8);
        if (!(*(v74 + 48))(v66 + v72, 1, v73))
        {
          (*(v74 + 8))(v66 + v72, v73);
        }
      }

      v17 = *(type metadata accessor for PersonConditioningImage() + 20);
      goto LABEL_60;
    }

    if (EnumCaseMultiPayload == 8)
    {
LABEL_22:

      v18 = type metadata accessor for PlaygroundImage();
      v19 = v18[8];
      v20 = sub_1D2871818();
      (*(*(v20 - 8) + 8))(v15 + v19, v20);
      v21 = (v15 + v18[10]);
      v22 = v21[1];
      if (v22 >> 60 != 15)
      {
        sub_1D22D6D60(*v21, v22);
      }

      v23 = v18[11];
      v24 = sub_1D2873AA8();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v15 + v23, 1, v24))
      {
        (*(v25 + 8))(v15 + v23, v24);
      }

      goto LABEL_66;
    }

    if (EnumCaseMultiPayload != 9)
    {
      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_66;
      }

      goto LABEL_22;
    }

LABEL_40:

    goto LABEL_66;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v47 = sub_1D2872008();
      (*(*(v47 - 8) + 8))(v0 + v12, v47);
      goto LABEL_66;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_66;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_28:

    v26 = type metadata accessor for CuratedPrompt();
    v27 = (v15 + v26[8]);
    v28 = type metadata accessor for PlaygroundImage();
    v29 = *(*(v28 - 1) + 48);
    if (!v29(v27, 1, v28))
    {
      v91 = v29;

      v30 = v28[8];
      v31 = sub_1D2871818();
      (*(*(v31 - 8) + 8))(v27 + v30, v31);
      v32 = (v27 + v28[10]);
      v33 = v32[1];
      if (v33 >> 60 != 15)
      {
        sub_1D22D6D60(*v32, v33);
      }

      v34 = v28[11];
      v35 = sub_1D2873AA8();
      v88 = *(v35 - 8);
      v90 = v34;
      v36 = (*(v88 + 48))(v27 + v34, 1, v35);
      v29 = v91;
      if (!v36)
      {
        (*(v88 + 8))(v27 + v90, v35);
      }
    }

    v37 = (v15 + v26[9]);
    if (!v29(v37, 1, v28))
    {

      v38 = v28[8];
      v39 = sub_1D2871818();
      (*(*(v39 - 8) + 8))(v37 + v38, v39);
      v40 = (v37 + v28[10]);
      v41 = v40[1];
      if (v41 >> 60 != 15)
      {
        sub_1D22D6D60(*v40, v41);
      }

      v42 = v28[11];
      v43 = sub_1D2873AA8();
      v44 = *(v43 - 8);
      if (!(*(v44 + 48))(v37 + v42, 1, v43))
      {
        (*(v44 + 8))(v37 + v42, v43);
      }
    }

    v45 = v15 + v26[23];
    v46 = *(v45 + 48);
    if (v46 != 255)
    {
      sub_1D23B7DA0(*v45, *(v45 + 8), *(v45 + 16), *(v45 + 24), *(v45 + 32), *(v45 + 40), v46 & 1);
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload != 3)
  {

    if (*(v15 + 32))
    {
    }

    v15 += *(type metadata accessor for PhotosPersonAsset() + 20);

    v17 = *(type metadata accessor for PhotosPersonImage() + 24);
LABEL_60:
    v75 = v15 + v17;

    v76 = type metadata accessor for PlaygroundImage();
    v77 = v76[8];
    v78 = sub_1D2871818();
    (*(*(v78 - 8) + 8))(v75 + v77, v78);
    v79 = (v75 + v76[10]);
    v80 = v79[1];
    if (v80 >> 60 != 15)
    {
      sub_1D22D6D60(*v79, v80);
    }

    v81 = v76[11];
    v82 = sub_1D2873AA8();
    v83 = *(v82 - 8);
    if (!(*(v83 + 48))(v75 + v81, 1, v82))
    {
      (*(v83 + 8))(v75 + v81, v82);
    }

    goto LABEL_66;
  }

  v48 = type metadata accessor for PlaygroundImage();
  v49 = v48[8];
  v50 = sub_1D2871818();
  v92 = *(*(v50 - 8) + 8);
  v92(v15 + v49, v50);
  v51 = (v15 + v48[10]);
  v52 = v51[1];
  if (v52 >> 60 != 15)
  {
    sub_1D22D6D60(*v51, v52);
  }

  v53 = v48[11];
  v54 = sub_1D2873AA8();
  v55 = *(v54 - 8);
  v89 = *(v55 + 48);
  if (!v89(v15 + v53, 1, v54))
  {
    (*(v55 + 8))(v15 + v53, v54);
  }

  v87 = v55;
  v56 = type metadata accessor for CharacterAsset();
  v57 = (v15 + *(v56 + 20));
  if (!(*(*(v48 - 1) + 48))(v57, 1, v48))
  {

    v92(v57 + v48[8], v50);
    v58 = (v57 + v48[10]);
    v59 = v58[1];
    if (v59 >> 60 != 15)
    {
      sub_1D22D6D60(*v58, v59);
    }

    v60 = v48[11];
    if (!v89(v57 + v60, 1, v54))
    {
      (*(v87 + 8))(v57 + v60, v54);
    }
  }

  v61 = *(v56 + 24);
  v62 = v61 + *(type metadata accessor for CharacterRecipe() + 20);
  v63 = sub_1D28737A8();
  (*(*(v63 - 8) + 8))(v15 + v62, v63);
LABEL_66:

  return swift_deallocObject();
}

uint64_t sub_1D26B75FC()
{
  type metadata accessor for CreationFloatingBubblesView();
  type metadata accessor for Bubble(0);

  return sub_1D26B30F4();
}

uint64_t sub_1D26B76D0()
{
  type metadata accessor for CreationFloatingBubblesView();

  return sub_1D26B315C();
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = type metadata accessor for CreationFloatingBubblesView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1D2273818(*v2, *(v2 + 8));
  sub_1D2273818(*(v2 + 16), *(v2 + 24));

  v3 = v1[9];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF9A8);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1D2875E18();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  sub_1D2273818(*(v2 + v1[16]), *(v2 + v1[16] + 8));
  v8 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1D2874EA8();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D26B7A70(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CreationFloatingBubblesView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_27(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

unint64_t sub_1D26B7B6C()
{
  result = qword_1ED89F7A8;
  if (!qword_1ED89F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89F7A8);
  }

  return result;
}

unint64_t sub_1D26B7BC0()
{
  result = qword_1ED89D6E0;
  if (!qword_1ED89D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D6E0);
  }

  return result;
}

uint64_t sub_1D26B7C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26B7C7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D26B7CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26B7D44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D26B7D8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D26B7DE8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1D26B7E54()
{
  result = qword_1ED89D858;
  if (!qword_1ED89D858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFB38);
    sub_1D26B611C();
    sub_1D26B7D44(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D858);
  }

  return result;
}

unint64_t sub_1D26B7F34()
{
  result = qword_1ED89D938;
  if (!qword_1ED89D938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFB48);
    sub_1D26B7FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89D938);
  }

  return result;
}

unint64_t sub_1D26B7FC0()
{
  result = qword_1ED89DAF8;
  if (!qword_1ED89DAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFB40);
    sub_1D26B804C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAF8);
  }

  return result;
}

unint64_t sub_1D26B804C()
{
  result = qword_1ED89DD98;
  if (!qword_1ED89DD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFB58);
    sub_1D22BB9D8(&qword_1ED89D450, &qword_1EC6DFB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD98);
  }

  return result;
}

unint64_t sub_1D26B8104()
{
  result = qword_1ED89DB88;
  if (!qword_1ED89DB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFB68);
    sub_1D22BB9D8(&qword_1ED89D0F8, &qword_1EC6DBFA8);
    sub_1D26B7D44(qword_1ED89E730, type metadata accessor for PhotoSharingConfirmationViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DB88);
  }

  return result;
}

uint64_t type metadata accessor for SketchConditioningImage()
{
  result = qword_1ED8A6750;
  if (!qword_1ED8A6750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D26B8290()
{
  result = type metadata accessor for PlaygroundImage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D26B8304()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D26B843C()
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D26B87C4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D26B84DC()
{
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D26B87C4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  return sub_1D2877F08();
}

uint64_t sub_1D26B8564()
{
  sub_1D28797D8();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D26B87C4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D26B8600()
{
  type metadata accessor for PlaygroundImage();

  return _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D26B8690(uint64_t a1)
{
  result = sub_1D26B87C4(&qword_1EC6DFB78, type metadata accessor for SketchConditioningImage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D26B86E8(uint64_t a1)
{
  *(a1 + 8) = sub_1D26B87C4(&qword_1EC6DFB80, type metadata accessor for SketchConditioningImage);
  result = sub_1D26B87C4(&qword_1EC6DFB88, type metadata accessor for SketchConditioningImage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D26B876C(uint64_t a1)
{
  result = sub_1D26B87C4(&qword_1EC6DF7D8, type metadata accessor for SketchConditioningImage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D26B87C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PersonConditioningImage()
{
  result = qword_1ED8A6808;
  if (!qword_1ED8A6808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26B8880()
{
  sub_1D24A30D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlaygroundImage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D26B8904(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosPersonAsset();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v16 - v9;
  sub_1D24A3128(v2, v16 - v9);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D23DBC5C(v10, v7);
    sub_1D28797F8();
    v11 = v7[1];
    v16[0] = *v7;
    v16[1] = v11;
    v12 = v7[3];
    v16[2] = v7[2];
    v16[3] = v12;
    PhotosPerson.hash(into:)(a1);
    v13 = v7 + *(v4 + 20);
    sub_1D2877F38();
    if (v13[24])
    {
      sub_1D28797F8();
    }

    else
    {
      v14 = *(v13 + 2);
      sub_1D28797F8();
      MEMORY[0x1D38A2260](v14);
    }

    type metadata accessor for PhotosPersonImage();
    type metadata accessor for PlaygroundImage();
    sub_1D2871818();
    sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
    sub_1D2877F08();
    sub_1D28797F8();
    sub_1D24A3494(v7);
  }

  type metadata accessor for PersonConditioningImage();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  return sub_1D2877F08();
}

uint64_t sub_1D26B8BBC()
{
  v1 = v0;
  v2 = type metadata accessor for PhotosPersonAsset();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  sub_1D28797D8();
  sub_1D24A3128(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D23DBC5C(v8, v5);
    sub_1D28797F8();
    v9 = v5[1];
    v14[0] = *v5;
    v14[1] = v9;
    v10 = v5[3];
    v14[2] = v5[2];
    v14[3] = v10;
    PhotosPerson.hash(into:)(v15);
    v11 = v5 + *(v2 + 20);
    sub_1D2877F38();
    if (v11[24])
    {
      sub_1D28797F8();
    }

    else
    {
      v12 = *(v11 + 2);
      sub_1D28797F8();
      MEMORY[0x1D38A2260](v12);
    }

    type metadata accessor for PhotosPersonImage();
    type metadata accessor for PlaygroundImage();
    sub_1D2871818();
    sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
    sub_1D2877F08();
    sub_1D28797F8();
    sub_1D24A3494(v5);
  }

  type metadata accessor for PersonConditioningImage();
  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D26B8E98()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D26B8FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D239A330(v2 + *(a1 + 20), a2);
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_1D26B908C()
{
  v1 = v0;
  v2 = type metadata accessor for PhotosPersonAsset();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  sub_1D28797D8();
  sub_1D24A3128(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D23DBC5C(v8, v5);
    sub_1D28797F8();
    v9 = v5[1];
    v14[0] = *v5;
    v14[1] = v9;
    v10 = v5[3];
    v14[2] = v5[2];
    v14[3] = v10;
    PhotosPerson.hash(into:)(v15);
    v11 = v5 + *(v2 + 20);
    sub_1D2877F38();
    if (v11[24])
    {
      sub_1D28797F8();
    }

    else
    {
      v12 = *(v11 + 2);
      sub_1D28797F8();
      MEMORY[0x1D38A2260](v12);
    }

    type metadata accessor for PhotosPersonImage();
    type metadata accessor for PlaygroundImage();
    sub_1D2871818();
    sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
    sub_1D2877F08();
    sub_1D28797F8();
    sub_1D24A3494(v5);
  }

  type metadata accessor for PlaygroundImage();
  sub_1D2871818();
  sub_1D26B975C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D26B9354@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaygroundImage();
  result = sub_1D28717B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D26B93E0(uint64_t a1)
{
  result = sub_1D26B975C(&qword_1EC6DFB98, type metadata accessor for PersonConditioningImage);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D26B9438(uint64_t a1)
{
  *(a1 + 8) = sub_1D26B975C(&qword_1EC6DFBA0, type metadata accessor for PersonConditioningImage);
  result = sub_1D26B975C(&qword_1EC6DFBA8, type metadata accessor for PersonConditioningImage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D26B94BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonAsset();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC478);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1D24A3128(a1, &v20 - v13);
  sub_1D24A3128(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_1D22BD238(v14, &unk_1EC6DDDC0);
LABEL_9:
      type metadata accessor for PersonConditioningImage();
      type metadata accessor for PlaygroundImage();
      v17 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1D24A3128(v14, v10);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_1D24A3494(v10);
LABEL_6:
    sub_1D22BD238(v14, &qword_1EC6DC478);
    goto LABEL_7;
  }

  sub_1D23DBC5C(&v14[v15], v7);
  v18 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_1D24A3494(v7);
  sub_1D24A3494(v10);
  sub_1D22BD238(v14, &unk_1EC6DDDC0);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D26B975C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D26B97A8(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1D2873CB8();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26B986C, 0, 0);
}

uint64_t sub_1D26B986C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69AE3E8]) init];
  v0[10] = v1;
  [v1 setExtendedContextLength_];
  sub_1D28725A8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D28789F8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Started generation of text embedding for raw text", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];

  (*(v6 + 8))(v5, v7);
  v10 = swift_allocObject();
  v0[11] = v10;
  swift_weakInit();
  v11 = swift_task_alloc();
  v0[12] = v11;
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;
  v11[5] = v1;
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_1D26B9A68;
  v13 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x80000001D28BFDB0, sub_1D26BB81C, v11, v13);
}

uint64_t sub_1D26B9A68()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D26B9C18;
  }

  else
  {

    v2 = sub_1D26B9B8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D26B9B8C()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = v0[3];
  sub_1D26BA814("Finished generation of text embedding for raw text");

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1D26B9C18()
{
  v1 = *(v0 + 80);

  sub_1D26BA814("Finished generation of text embedding for raw text");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D26B9CA8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D2873CB8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D26B9D68, 0, 0);
}

uint64_t sub_1D26B9D68()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69AE3E8]) init];
  v0[8] = v1;
  [v1 setExtendedContextLength_];
  sub_1D28725A8();
  v2 = sub_1D2873CA8();
  v3 = sub_1D28789F8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Started generation of text embeddings for curated prompts", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = swift_allocObject();
  v0[9] = v9;
  swift_weakInit();
  v10 = swift_task_alloc();
  v0[10] = v10;
  v10[2] = v9;
  v10[3] = v1;
  v10[4] = v8;
  v11 = swift_task_alloc();
  v0[11] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBB8);
  *v11 = v0;
  v11[1] = sub_1D26B9F74;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001DLL, 0x80000001D28BFD70, sub_1D26BB270, v10, v12);
}

uint64_t sub_1D26B9F74()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D26BA120;
  }

  else
  {

    v2 = sub_1D26BA098;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D26BA098()
{
  v1 = v0[8];
  v2 = v0[2];
  sub_1D26BA814("Finished generation of text embeddings for curated prompts");

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D26BA120()
{
  v1 = *(v0 + 64);

  sub_1D26BA814("Finished generation of text embeddings for curated prompts");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D26BA1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBD0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v39 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    v43 = sub_1D26BA574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D28809B0;
    *(v15 + 32) = a5;
    sub_1D22BCFD0(0, &qword_1EC6D7530);
    v40 = a5;
    v42 = sub_1D28783C8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D287F500;
    *(v16 + 32) = a3;
    *(v16 + 40) = a4;
    sub_1D2870F68();
    v41 = sub_1D28783C8();

    v17 = *(v10 + 16);
    v39[1] = a1;
    v17(v13, a1, v9);
    v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = *(v10 + 32);
    v23 = v21 + v18;
    v39[0] = v9;
    v24 = a3;
    v25 = v44;
    v22(v23, v13, v9);
    v26 = v40;
    *(v21 + v19) = v40;
    *(v21 + v20) = v25;
    v27 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v27 = v24;
    v27[1] = a4;
    aBlock[4] = sub_1D26BB828;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D26BA79C;
    aBlock[3] = &block_descriptor_15_0;
    v28 = _Block_copy(aBlock);
    sub_1D2870F68();
    v29 = v26;
    sub_1D2870F78();

    v31 = v42;
    v30 = v43;
    v32 = v41;
    v33 = [v43 performRequests:v42 text:v41 identifier:0 completionHandler:v28];
    _Block_release(v28);

    if (v33 == -1)
    {
      sub_1D26BB27C();
      v34 = swift_allocError();
      *v35 = v24;
      v35[1] = a4;
      aBlock[0] = v34;
      sub_1D2870F68();
      sub_1D2878508();
    }
  }

  else
  {
    sub_1D26BB27C();
    v37 = swift_allocError();
    *v38 = a3;
    v38[1] = a4;
    aBlock[0] = v37;
    sub_1D2870F68();
    return sub_1D2878508();
  }
}

id sub_1D26BA574()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_opt_self() service];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1D26BA5E8(int a1, id a2, int a3, id a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v7 = a2;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBD0);
    sub_1D2878508();
    return;
  }

  if ([a4 error])
  {
    goto LABEL_14;
  }

  v11 = [a4 embeddingResults];
  if (!v11)
  {
LABEL_13:
    sub_1D26BB27C();
    swift_allocError();
    *v16 = a6;
    v16[1] = a7;
    sub_1D2870F68();
    goto LABEL_14;
  }

  v12 = v11;
  sub_1D22BCFD0(0, &qword_1EC6D7500);
  v13 = sub_1D28783E8();

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (!sub_1D2879368())
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_7:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1D38A1C30](0, v13);
    goto LABEL_10;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);
LABEL_10:
    v15 = v14;

    sub_1D26BB3B8(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBD0);
    sub_1D2878518();

    return;
  }

  __break(1u);
}

void sub_1D26BA79C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1D2870F78();
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1D26BA814(const char *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725A8();
  v6 = sub_1D2873CA8();
  v7 = sub_1D28789F8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, a1, v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D26BA950(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v43 = v11;
    v46 = Strong;
    v47 = v7;
    v44 = sub_1D26BA574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D28809B0;
    *(v13 + 32) = a3;
    sub_1D22BCFD0(0, &qword_1EC6D7530);
    v41 = a3;
    v42 = sub_1D28783C8();

    v14 = *(a4 + 16);
    v48 = a1;
    v45 = a4;
    if (v14)
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D23D81B8(0, v14, 0);
      v15 = aBlock[0];
      v16 = (a4 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        aBlock[0] = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        sub_1D2870F68();
        if (v20 >= v19 >> 1)
        {
          sub_1D23D81B8((v19 > 1), v20 + 1, 1);
          v15 = aBlock[0];
        }

        *(v15 + 16) = v20 + 1;
        v21 = v15 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        v16 += 4;
        --v14;
      }

      while (v14);
      a1 = v48;
    }

    v22 = sub_1D28783C8();

    v23 = v43;
    v24 = v47;
    (*(v8 + 16))(v43, a1, v47);
    v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v26 = (v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    (*(v8 + 32))(v28 + v25, v23, v24);
    v29 = v41;
    *(v28 + v26) = v41;
    v30 = v46;
    *(v28 + v27) = v45;
    *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
    aBlock[4] = sub_1D26BB2D0;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D26BA79C;
    aBlock[3] = &block_descriptor_37;
    v31 = _Block_copy(aBlock);
    v32 = v29;
    sub_1D2870F68();
    sub_1D2870F78();

    v33 = v44;
    v34 = v42;
    LODWORD(v26) = [v44 performRequests:v42 text:v22 identifier:0 completionHandler:v31];
    _Block_release(v31);

    if (v26 == -1)
    {
      sub_1D26BB27C();
      v35 = swift_allocError();
      *v36 = 0;
      v36[1] = 0;
      aBlock[0] = v35;
      sub_1D2878508();
    }
  }

  else
  {
    sub_1D26BB27C();
    v38 = swift_allocError();
    *v39 = 0;
    v39[1] = 0;
    aBlock[0] = v38;
    return sub_1D2878508();
  }
}

uint64_t sub_1D26BAD58(int a1, id a2, int a3, id a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBC0);
    return sub_1D2878508();
  }

  v8 = [a4 embeddingResults];
  if (!v8)
  {
    sub_1D26BB27C();
    swift_allocError();
    *v28 = 0;
    v28[1] = 0;
    goto LABEL_3;
  }

  v9 = v8;
  sub_1D22BCFD0(0, &qword_1EC6D7500);
  v10 = sub_1D28783E8();

  if (v10 >> 62)
  {
LABEL_31:
    v32 = v10 & 0xFFFFFFFFFFFFFF8;
    v34 = sub_1D2879368();
  }

  else
  {
    v32 = v10 & 0xFFFFFFFFFFFFFF8;
    v34 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v10 & 0xC000000000000001;
  v29 = v10;
  v31 = v10 + 32;
  sub_1D2870F68();
  v11 = 0;
  v12 = a5 + 56;
  v30 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v10 = v12 + 32 * v11;
  while (1)
  {
    if (v34 == v11)
    {

      goto LABEL_27;
    }

    if (v33)
    {
      v13 = MEMORY[0x1D38A1C30](v11, v29);
    }

    else
    {
      if (v11 >= *(v32 + 16))
      {
        goto LABEL_29;
      }

      v13 = *(v31 + 8 * v11);
    }

    v14 = v13;
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v16 = *(a5 + 16);
    if (v11 == v16)
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_30;
    }

    v17 = *(v10 - 8);
    v18 = *v10;
    v10 += 32;
    sub_1D2870F68();
    sub_1D2870F68();
    v19 = sub_1D26BB4F4(v14, v17, v18);
    v21 = v20;
    v23 = v22;

    ++v11;
    if (v23 >> 60 != 15)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1D27CD920(0, *(v30 + 2) + 1, 1, v30);
      }

      v26 = *(v30 + 2);
      v25 = *(v30 + 3);
      if (v26 >= v25 >> 1)
      {
        v30 = sub_1D27CD920((v25 > 1), v26 + 1, 1, v30);
      }

      *(v30 + 2) = v26 + 1;
      v27 = &v30[24 * v26];
      *(v27 + 4) = v19;
      *(v27 + 5) = v21;
      *(v27 + 6) = v23;
      v11 = v15;
      v12 = a5 + 56;
      goto LABEL_8;
    }
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBC0);
  return sub_1D2878518();
}

uint64_t sub_1D26BB060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v5 - 8);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A50);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D287F500;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D26BB9B4();
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    sub_1D2870F68();
    v7 = sub_1D2878078();

    return v7;
  }

  else
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED8B0058;
    sub_1D28718C8();
    return sub_1D28780E8();
  }
}

unint64_t sub_1D26BB27C()
{
  result = qword_1EC6DFBC8;
  if (!qword_1EC6DFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFBC8);
  }

  return result;
}

uint64_t sub_1D26BB2D0(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBC0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D26BAD58(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D26BB3B8(void *a1)
{
  v2 = [a1 embedding];
  v3 = [v2 type];

  if (v3 == 1)
  {
    v4 = objc_opt_self();
    v5 = [a1 embedding];
    v6 = [v5 data];

    v7 = sub_1D28716E8();
    v9 = v8;

    v10 = sub_1D28716D8();
    sub_1D22D6D60(v7, v9);
    v11 = [v4 convertFloat16ToFloat32_];
  }

  else
  {
    v10 = [a1 embedding];
    v11 = [v10 data];
  }

  v12 = v11;

  v13 = sub_1D28716E8();
  return v13;
}

void *sub_1D26BB4F4(void *result, uint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3) & 0xF;
  v5 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = v5;
  }

  if (!v6)
  {
    return 0;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v23 = result;
    sub_1D2870F68();
    v9 = sub_1D23BE2FC(a2, a3, 10);
    v26 = v25;

    if (v26)
    {
      return 0;
    }

    result = v23;
    goto LABEL_68;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v27 = result;
      v4 = sub_1D2879208();
      result = v27;
    }

    v7 = *v4;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v15 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_64;
          }

          v16 = (v4 + 1);
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            if (!is_mul_ok(v9, 0xAuLL))
            {
              break;
            }

            v12 = __CFADD__(10 * v9, v17);
            v9 = 10 * v9 + v17;
            if (v12)
            {
              break;
            }

            ++v16;
            if (!--v15)
            {
LABEL_55:
              LOBYTE(v4) = 0;
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      goto LABEL_73;
    }

    if (v7 == 45)
    {
      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_64;
          }

          v10 = (v4 + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v9, 0xAuLL))
            {
              break;
            }

            v12 = 10 * v9 >= v11;
            v9 = 10 * v9 - v11;
            if (!v12)
            {
              break;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_63;
      }

      __break(1u);
      goto LABEL_72;
    }

    if (v5)
    {
      v9 = 0;
      if (!v4)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v20 = *v4 - 48;
        if (v20 > 9)
        {
          break;
        }

        if (!is_mul_ok(v9, 0xAuLL))
        {
          break;
        }

        v12 = __CFADD__(10 * v9, v20);
        v9 = 10 * v9 + v20;
        if (v12)
        {
          break;
        }

        ++v4;
        if (!--v5)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_63;
  }

  v28[0] = a2;
  v28[1] = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 == 45)
    {
      if (!v4)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      if (--v4)
      {
        v9 = 0;
        v13 = v28 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          if (!is_mul_ok(v9, 0xAuLL))
          {
            break;
          }

          v12 = 10 * v9 >= v14;
          v9 = 10 * v9 - v14;
          if (!v12)
          {
            break;
          }

          ++v13;
          if (!--v4)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else if (v4)
    {
      v9 = 0;
      v21 = v28;
      while (1)
      {
        v22 = *v21 - 48;
        if (v22 > 9)
        {
          break;
        }

        if (!is_mul_ok(v9, 0xAuLL))
        {
          break;
        }

        v12 = __CFADD__(10 * v9, v22);
        v9 = 10 * v9 + v22;
        if (v12)
        {
          break;
        }

        ++v21;
        if (!--v4)
        {
          goto LABEL_64;
        }
      }
    }

LABEL_63:
    v9 = 0;
    LOBYTE(v4) = 1;
LABEL_64:
    v29 = v4;
    if (v4)
    {
      return 0;
    }

LABEL_68:
    sub_1D26BB3B8(result);
    return v9;
  }

  if (v4)
  {
    if (--v4)
    {
      v9 = 0;
      v18 = v28 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        if (!is_mul_ok(v9, 0xAuLL))
        {
          break;
        }

        v12 = __CFADD__(10 * v9, v19);
        v9 = 10 * v9 + v19;
        if (v12)
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_74:
  __break(1u);
  return result;
}

void sub_1D26BB828(int a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBD0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = (v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  sub_1D26BA5E8(a1, a2, v2 + v6, v9, v10, v12, v13);
}

uint64_t sub_1D26BB8FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D26BB94C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D26BB9B4()
{
  result = qword_1EC6DFBD8;
  if (!qword_1EC6DFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DFBD8);
  }

  return result;
}

double sub_1D26BBA10()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = *v0;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v7 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[15];
  }

  result = 54.0;
  if (v6 == 6)
  {
    return 40.0;
  }

  return result;
}

double sub_1D26BBB74()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = *v0;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v7 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[15];
  }

  result = 32.0;
  if (v6 == 6)
  {
    return 20.0;
  }

  return result;
}

double sub_1D26BBCD4()
{
  v1 = sub_1D2875628();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = *v0;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v7 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v11[15];
  }

  v8 = type metadata accessor for BubbleView();
  v9 = 32;
  if (v6 == 6)
  {
    v9 = 24;
  }

  return *(v0 + *(v8 + 88) + v9);
}

uint64_t sub_1D26BBE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_1D2870F68();
}

uint64_t type metadata accessor for BubbleView()
{
  result = qword_1ED8A5230;
  if (!qword_1ED8A5230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D26BBEFC()
{
  sub_1D26BC218(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1D26BC218(319, &qword_1ED89E048, &type metadata for BubbleStyle, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1D26BC1B4(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1D26BC268(319, &qword_1ED89DFC0, &qword_1EC6D99B8, &unk_1D287E890, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D26BC218(319, &qword_1ED89DFB0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1D26BC1B4(319, &qword_1EC6DFBF8, type metadata accessor for Bubble, MEMORY[0x1E697DA80]);
            if (v5 <= 0x3F)
            {
              sub_1D22BFAB4();
              if (v6 <= 0x3F)
              {
                sub_1D26BC218(319, &qword_1EC6DFC00, MEMORY[0x1E69E6158], MEMORY[0x1E697DA80]);
                if (v7 <= 0x3F)
                {
                  sub_1D26BC268(319, &qword_1EC6DFC08, &qword_1EC6DBFB0, &unk_1D288AE00, MEMORY[0x1E697DA80]);
                  if (v8 <= 0x3F)
                  {
                    sub_1D28714E8();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D26BC1B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D26BC218(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D26BC268(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D26BC2CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D26BC2EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 104) = v3;
  return result;
}

uint64_t sub_1D26BC35C@<X0>(void *a1@<X8>)
{
  v2 = sub_1D2846EE0();
  MEMORY[0x1D38A0C50](v2);

  *a1 = 0x2D656372756F53;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_1D26BC3C8@<X0>(uint64_t a1@<X8>)
{
  v140 = a1;
  v138 = sub_1D28785F8();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for BubbleView();
  v135 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = v3;
  v139 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1D28714E8();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1D2875628();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D28758D8();
  v151 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v113 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v106 - v9;
  v111 = sub_1D2876088();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v12 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC10);
  MEMORY[0x1EEE9AC00](v107);
  v14 = &v106 - v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC18);
  v145 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v16 = &v106 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC20);
  MEMORY[0x1EEE9AC00](v108);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v144 = &v106 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v106 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v146 = &v106 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v114 = &v106 - v26;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC28);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v106 - v27;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC30);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v106 - v28;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC38);
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v106 - v29;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC40);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v106 - v30;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC48);
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v106 - v31;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC50);
  MEMORY[0x1EEE9AC00](v147);
  v128 = &v106 - v32;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC58);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v148 = &v106 - v33;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC60);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v129 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v130 = &v106 - v36;
  v152 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC68);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFC70);
  v38 = sub_1D26CB56C();
  v153 = v37;
  v154 = v38;
  v39 = v6;
  swift_getOpaqueTypeConformance2();
  sub_1D2877168();
  sub_1D2876068();
  v40 = sub_1D26CD290();
  v41 = v107;
  sub_1D2876BE8();
  (*(v109 + 8))(v12, v111);
  sub_1D22BD238(v14, &qword_1EC6DFC10);
  v153 = sub_1D26C2268();
  v154 = v42;
  v158 = v41;
  v159 = v40;
  swift_getOpaqueTypeConformance2();
  sub_1D22BD06C();
  v43 = v110;
  sub_1D2876AC8();

  (*(v145 + 8))(v16, v43);
  v44 = v10;
  sub_1D28758B8();
  v45 = v108;
  sub_1D2874F38();
  v46 = *(v151 + 8);
  v46(v44, v39);
  sub_1D22BD238(v18, &qword_1EC6DFC20);
  v47 = *(v150 + 48);
  v151 = v1;
  LODWORD(v145) = *(v1 + v47);
  if (v145 == 1)
  {
    v48 = v113;
    sub_1D2875888();
  }

  else
  {
    v153 = MEMORY[0x1E69E7CC0];
    sub_1D26CF7A8(&qword_1ED89D678, MEMORY[0x1E697F5E0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD1C8);
    sub_1D22BB9D8(&qword_1ED89CEC8, &qword_1EC6DD1C8);
    v48 = v113;
    sub_1D2879088();
  }

  v49 = v112;
  v50 = v45;
  v51 = v144;
  sub_1D2874F38();
  v46(v48, v39);
  sub_1D22BD238(v51, &qword_1EC6DFC20);
  sub_1D2874F48();
  sub_1D22BD238(v49, &qword_1EC6DFC20);
  v52 = *(v151 + 16);
  v53 = *(v151 + 24);
  LODWORD(v144) = v53;
  if (v53 == 1)
  {
    v54 = v52;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v55 = sub_1D28762E8();
    sub_1D2873BE8();

    v56 = v141;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v52, 0);
    (*(v142 + 8))(v56, v143);
    v54 = v153;
  }

  v57 = v145;
  v58 = (v145 & v54) == 0;
  v59 = 80;
  if (!v58)
  {
    v59 = 84;
  }

  (*(v118 + 16))(v117, v151 + *(v150 + v59), v119);
  v60 = sub_1D2876688();
  v62 = v61;
  v64 = v63;
  v65 = v114;
  v66 = v146;
  sub_1D2874EE8();
  sub_1D22ED6E0(v60, v62, v64 & 1);

  sub_1D22BD238(v66, &qword_1EC6DFC20);
  v67 = sub_1D26C2268();
  v69 = v68;
  v70 = sub_1D26CD350();
  v71 = v116;
  sub_1D26C2900(v67, v69, v50, v70, v116);

  sub_1D22BD238(v65, &qword_1EC6DFC20);
  if (v57)
  {
    v72 = v120;
    v73 = v144;
    if (!v144)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v74 = sub_1D28762E8();
      sub_1D2873BE8();

      v75 = v141;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v52, 0);
      (*(v142 + 8))(v75, v143);
    }

    sub_1D26CD448();
    sub_1D2876ED8();
    sub_1D22BD238(v71, &qword_1EC6DFC28);
    if (!v73)
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v76 = sub_1D28762E8();
      sub_1D2873BE8();

      v77 = v141;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v52, 0);
      (*(v142 + 8))(v77, v143);
    }
  }

  else
  {
    sub_1D26CD448();
    v72 = v120;
    sub_1D2876ED8();
    sub_1D22BD238(v71, &qword_1EC6DFC28);
  }

  sub_1D26CD568();
  v78 = v123;
  sub_1D2876748();
  v79 = sub_1D22BD238(v72, &qword_1EC6DFC30);
  MEMORY[0x1D38A0390](v79, 0.5, 1.0, 0.0);
  LOBYTE(v153) = v145;
  sub_1D26CD5F4();
  v80 = v125;
  sub_1D2876F78();

  sub_1D22BD238(v78, &qword_1EC6DFC38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE8);
  v81 = v151;
  sub_1D2874338();
  sub_1D2875FF8();
  sub_1D2877AE8();
  sub_1D26CD680();
  v82 = v127;
  sub_1D2876C58();

  sub_1D22BD238(v80, &qword_1EC6DFC40);
  v83 = v139;
  sub_1D26CE38C(v81, v139, type metadata accessor for BubbleView);
  v84 = *(v135 + 80);
  v85 = swift_allocObject();
  v150 = (v84 + 16) & ~v84;
  sub_1D26CE3F4(v83, v85 + v150, type metadata accessor for BubbleView);
  sub_1D26CD798();
  v86 = v128;
  sub_1D2876F38();

  sub_1D22BD238(v82, &qword_1EC6DFC48);
  sub_1D26CE38C(v81, v83, type metadata accessor for BubbleView);
  sub_1D2878568();
  v87 = sub_1D2878558();
  v88 = swift_allocObject();
  v89 = MEMORY[0x1E69E85E0];
  *(v88 + 16) = v87;
  *(v88 + 24) = v89;
  sub_1D26CE3F4(v83, v88 + ((v84 + 32) & ~v84), type metadata accessor for BubbleView);
  v90 = v136;
  sub_1D2878588();
  v91 = sub_1D26CD92C();
  sub_1D22B8150(0, v90, 0xD000000000000028, 0x80000001D28BFE70, 213, &unk_1D289D660, v88, v148, v147, v91);
  (*(v137 + 8))(v90, v138);
  sub_1D22BD238(v86, &qword_1EC6DFC50);
  v92 = *v81;
  if (*(v81 + 8) == 1)
  {
    LOBYTE(v158) = *v81;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v93 = sub_1D28762E8();
    sub_1D2873BE8();

    v94 = v141;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v92, 0);
    (*(v142 + 8))(v94, v143);
    LOBYTE(v92) = v158;
  }

  v157 = v92;
  sub_1D26CE38C(v151, v83, type metadata accessor for BubbleView);
  v95 = v150;
  v96 = swift_allocObject();
  sub_1D26CE3F4(v83, v96 + v95, type metadata accessor for BubbleView);
  v153 = v147;
  v154 = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = sub_1D22EBCFC();
  v99 = v129;
  v100 = v132;
  v101 = v148;
  sub_1D2876F48();

  (*(v131 + 8))(v101, v100);
  v153 = v100;
  v154 = &type metadata for CreationViewStyle;
  v155 = OpaqueTypeConformance2;
  v156 = v98;
  swift_getOpaqueTypeConformance2();
  v102 = v130;
  v103 = v134;
  sub_1D245980C(v99);
  v104 = *(v133 + 8);
  v104(v99, v103);
  sub_1D245980C(v102);
  return (v104)(v102, v103);
}

uint64_t sub_1D26BD9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = type metadata accessor for BubbleView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC70);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC68);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  sub_1D26BDCAC(v8);
  sub_1D26CE38C(a1, v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BubbleView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_1D26CE3F4(v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for BubbleView);
  v18 = sub_1D26CB56C();
  sub_1D2876908();

  sub_1D22BD238(v8, &qword_1EC6DFC70);
  v21[2] = v6;
  v21[3] = v18;
  swift_getOpaqueTypeConformance2();
  sub_1D245980C(v12);
  v19 = *(v10 + 8);
  v19(v12, v9);
  sub_1D245980C(v15);
  return (v19)(v15, v9);
}

uint64_t sub_1D26BDCAC@<X0>(uint64_t a1@<X8>)
{
  v401 = a1;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEC8);
  MEMORY[0x1EEE9AC00](v363);
  v364 = &v300 - v1;
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE40);
  MEMORY[0x1EEE9AC00](v400);
  v365 = &v300 - v2;
  v3 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v334 = &v300 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v381);
  v380 = &v300 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v379);
  v384 = &v300 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = sub_1D2872008();
  v378 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383);
  v382 = &v300 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFED0);
  MEMORY[0x1EEE9AC00](v386);
  v369 = &v300 - v8;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFED8);
  MEMORY[0x1EEE9AC00](v355);
  v356 = &v300 - v9;
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE20);
  MEMORY[0x1EEE9AC00](v375);
  v357 = &v300 - v10;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE18);
  MEMORY[0x1EEE9AC00](v391);
  v385 = &v300 - v11;
  v12 = type metadata accessor for PlaygroundImage();
  v13 = *(v12 - 8);
  v389 = v12;
  v390 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v333 = &v300 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v305 = &v300 - v16;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEE0);
  MEMORY[0x1EEE9AC00](v338);
  v341 = &v300 - v17;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEE8);
  MEMORY[0x1EEE9AC00](v326);
  v327 = &v300 - v18;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE30);
  MEMORY[0x1EEE9AC00](v339);
  v328 = &v300 - v19;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFE28);
  MEMORY[0x1EEE9AC00](v354);
  v340 = &v300 - v20;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEF0);
  MEMORY[0x1EEE9AC00](v359);
  v361 = &v300 - v21;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDC8);
  MEMORY[0x1EEE9AC00](v360);
  v342 = &v300 - v22;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDC0);
  MEMORY[0x1EEE9AC00](v374);
  v348 = &v300 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v313 = &v300 - v25;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEF8);
  MEMORY[0x1EEE9AC00](v336);
  v337 = &v300 - v26;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD50);
  MEMORY[0x1EEE9AC00](v346);
  v329 = &v300 - v27;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF00);
  v321 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317);
  v301 = &v300 - v28;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF08);
  MEMORY[0x1EEE9AC00](v343);
  v345 = &v300 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF10);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v312 = &v300 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v325 = &v300 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v306 = &v300 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD58);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v311 = &v300 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v322 = &v300 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v309 = &v300 - v41;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD48);
  MEMORY[0x1EEE9AC00](v344);
  v323 = (&v300 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v43);
  v324 = (&v300 - v44);
  v320 = sub_1D2875628();
  v319 = *(v320 - 8);
  MEMORY[0x1EEE9AC00](v320);
  v318 = &v300 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD40);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v303 = &v300 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v315 = &v300 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v310 = &v300 - v51;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD38);
  MEMORY[0x1EEE9AC00](v358);
  v302 = &v300 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v304 = &v300 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v314 = &v300 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v316 = &v300 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v307 = &v300 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v308 = &v300 - v62;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD30);
  MEMORY[0x1EEE9AC00](v351);
  v335 = &v300 - v63;
  v347 = type metadata accessor for CuratedPrompt();
  MEMORY[0x1EEE9AC00](v347);
  v353 = &v300 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v362 = (&v300 - v66);
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF18);
  MEMORY[0x1EEE9AC00](v349);
  v350 = &v300 - v67;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD28);
  MEMORY[0x1EEE9AC00](v372);
  v352 = &v300 - v68;
  v69 = type metadata accessor for SketchConditioningImage();
  MEMORY[0x1EEE9AC00](v69 - 8);
  v332 = &v300 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SceneConditioningImage();
  MEMORY[0x1EEE9AC00](v71 - 8);
  v331 = &v300 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF20);
  MEMORY[0x1EEE9AC00](v393);
  v395 = &v300 - v73;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF28);
  MEMORY[0x1EEE9AC00](v370);
  v371 = &v300 - v74;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF30);
  MEMORY[0x1EEE9AC00](v366);
  v367 = &v300 - v75;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC90);
  MEMORY[0x1EEE9AC00](v392);
  v368 = &v300 - v76;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC88);
  MEMORY[0x1EEE9AC00](v394);
  v373 = &v300 - v77;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC80);
  MEMORY[0x1EEE9AC00](v397);
  v396 = &v300 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v79 - 8);
  v377 = &v300 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v376 = &v300 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v300 - v84;
  MEMORY[0x1EEE9AC00](v86);
  v88 = &v300 - v87;
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v300 - v90;
  MEMORY[0x1EEE9AC00](v92);
  v387 = &v300 - v93;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC98);
  MEMORY[0x1EEE9AC00](v402);
  v95 = &v300 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v96);
  v388 = &v300 - v97;
  v98 = type metadata accessor for PersonConditioningImage();
  MEMORY[0x1EEE9AC00](v98);
  v330 = &v300 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v300 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v103 - 8);
  v105 = &v300 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFC70);
  MEMORY[0x1EEE9AC00](v399);
  v398 = &v300 - v106;
  v107 = type metadata accessor for BubbleView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0);
  sub_1D2874338();
  sub_1D26CE3F4(v105, v102, type metadata accessor for Bubble.BubbleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v364 = v107;
    v363 = v88;
    v117 = v377;
    v118 = v376;
    v365 = v91;
    v119 = v379;
    v120 = v381;
    v121 = v380;
    v122 = v385;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          sub_1D26CE3F4(v102, v380, type metadata accessor for PhotosPersonAsset);
          v167 = *(v120 + 20);
          v168 = type metadata accessor for PhotosPersonImage();
          v169 = v387;
          sub_1D26CE38C(v121 + v167 + *(v168 + 24), v387, type metadata accessor for PlaygroundImage);
          (*(v390 + 56))(v169, 0, 1, v389);
          v170 = v388;
          sub_1D26C3BF4(v169, 0, 1, v388);
          sub_1D22BD238(v169, &unk_1EC6DE5A0);
          sub_1D22BD1D0(v170, v367, &qword_1EC6DFC98);
          swift_storeEnumTagMultiPayload();
          sub_1D26CB73C();
          v171 = v368;
          sub_1D2875AF8();
          sub_1D22BD1D0(v171, v369, &qword_1EC6DFC90);
          swift_storeEnumTagMultiPayload();
          sub_1D26CD008();
          sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &unk_1D289D450, sub_1D26CB73C);
          sub_1D2875AF8();
          sub_1D22BD238(v171, &qword_1EC6DFC90);
          sub_1D22BD1D0(v122, v395, &qword_1EC6DFE18);
          swift_storeEnumTagMultiPayload();
          sub_1D26CB684();
          sub_1D26CCF50();
          v172 = v396;
          sub_1D2875AF8();
          sub_1D22BD238(v122, &qword_1EC6DFE18);
          sub_1D26CB5F8();
          sub_1D26CD204();
          v115 = v398;
          sub_1D24CB6D4(v172, v397);
          sub_1D22BD238(v172, &qword_1EC6DFC80);
          sub_1D22BD238(v170, &qword_1EC6DFC98);
          v173 = type metadata accessor for PhotosPersonAsset;
LABEL_36:
          v160 = v173;
          v161 = v121;
          goto LABEL_37;
        }

        v123 = v384;
        sub_1D26CE3F4(v102, v384, type metadata accessor for CharacterAsset);
        if (*(v123 + *(v119 + 28)) == 1)
        {
          sub_1D26CE38C(v123, v117, type metadata accessor for PlaygroundImage);
          (*(v390 + 56))(v117, 0, 1, v389);
        }

        else
        {
          sub_1D22BD1D0(v123 + *(v119 + 20), v117, &unk_1EC6DE5A0);
        }

        v212 = v95;
        sub_1D22EC9BC(v117, v118, &unk_1EC6DE5A0);
        sub_1D26C3BF4(v118, 0, 1, v95);
        sub_1D22BD238(v118, &unk_1EC6DE5A0);
        sub_1D22BD1D0(v95, v367, &qword_1EC6DFC98);
        swift_storeEnumTagMultiPayload();
        sub_1D26CB73C();
        v213 = v368;
        sub_1D2875AF8();
        sub_1D22BD1D0(v213, v369, &qword_1EC6DFC90);
        swift_storeEnumTagMultiPayload();
        sub_1D26CD008();
        sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &unk_1D289D450, sub_1D26CB73C);
        sub_1D2875AF8();
        sub_1D22BD238(v213, &qword_1EC6DFC90);
        sub_1D22BD1D0(v122, v395, &qword_1EC6DFE18);
        swift_storeEnumTagMultiPayload();
        sub_1D26CB684();
        sub_1D26CCF50();
        v214 = v396;
        sub_1D2875AF8();
        sub_1D22BD238(v122, &qword_1EC6DFE18);
        sub_1D26CB5F8();
        sub_1D26CD204();
        v115 = v398;
        sub_1D24CB6D4(v214, v397);
        sub_1D22BD238(v214, &qword_1EC6DFC80);
        sub_1D22BD238(v212, &qword_1EC6DFC98);
        v215 = type metadata accessor for CharacterAsset;
        v216 = &v408;
LABEL_59:
        sub_1D26CEFC8(*(v216 - 32), v215);
        goto LABEL_38;
      }

      v134 = v362;
      sub_1D26CE3F4(v102, v362, type metadata accessor for CuratedPrompt);
      v135 = v134[6];
      v136 = v347;
      if ((*(v135 + 40) != 0x6973736572707845 || *(v135 + 48) != 0xEB00000000736E6FLL) && (sub_1D2879618() & 1) == 0 || (v137 = (v134 + v136[12]), (v138 = v137[1]) == 0))
      {
        v206 = sub_1D26C4724(v134);
        v207 = v335;
        if (v206)
        {
          v208 = v342;
          sub_1D26C48E0(v134[2], v134[3], v342);
          v209 = &qword_1EC6DFDC8;
          sub_1D22BD1D0(v208, v361, &qword_1EC6DFDC8);
          swift_storeEnumTagMultiPayload();
          sub_1D26CC95C();
          sub_1D26CB73C();
          v210 = v313;
          sub_1D2875AF8();
          v211 = v208;
        }

        else
        {
          v254 = v134 + v136[8];
          v255 = (*(v134 + v136[25]) & 1) == 0;
          v256 = v388;
          sub_1D26C3BF4(v254, 0, v255, v388);
          v209 = &qword_1EC6DFC98;
          sub_1D22BD1D0(v256, v361, &qword_1EC6DFC98);
          swift_storeEnumTagMultiPayload();
          sub_1D26CC95C();
          sub_1D26CB73C();
          v210 = v313;
          sub_1D2875AF8();
          v211 = v256;
        }

        sub_1D22BD238(v211, v209);
        v257 = v373;
        v258 = v352;
        sub_1D22BD1D0(v210, v337, &qword_1EC6DFDC0);
        swift_storeEnumTagMultiPayload();
        sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &unk_1D289D4F8, sub_1D26CC0E0);
        sub_1D26CC8D0();
        sub_1D2875AF8();
        sub_1D22BD238(v210, &qword_1EC6DFDC0);
        goto LABEL_67;
      }

      v139 = *v137;
      v140 = v136[8];
      v141 = v403;
      v142 = *(v403 + 16);
      if (*(v403 + 24) == 1)
      {
        v143 = v329;
        v144 = v364;
        if ((v142 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1D2870F78();
        sub_1D2878A28();
        v259 = sub_1D28762E8();
        sub_1D2873BE8();

        v260 = v318;
        sub_1D2875618();
        swift_getAtKeyPath();
        sub_1D2273818(v142, 0);
        (*(v319 + 8))(v260, v320);
        v143 = v329;
        v144 = v364;
        if ((v405 & 1) == 0)
        {
LABEL_22:
          v145 = sub_1D26BBCD4();
          v146 = sub_1D2875918();
          v147 = v324;
          *v324 = v146;
          v147[1] = v145;
          *(v147 + 16) = 0;
          v148 = 1;
          sub_1D26C8580(v139, v138, v362 + v140, 1, v309);
          v149 = *(v141 + *(v144 + 68));
          v150 = v322;
          v151 = v317;
          v152 = v321;
          if ((v149 & 1) == 0 && (*(v390 + 48))(v362 + v140, 1, v389) != 1)
          {
            v153 = *v141;
            if (*(v141 + 8) == 1)
            {
              v154 = *v141;
            }

            else
            {
              sub_1D2870F78();
              sub_1D2878A28();
              v286 = sub_1D28762E8();
              v150 = v322;
              sub_1D2873BE8();

              v152 = v321;
              v287 = v318;
              sub_1D2875618();
              swift_getAtKeyPath();
              sub_1D2273818(v153, 0);
              (*(v319 + 8))(v287, v320);
              v154 = v404;
            }

            v288 = v306;
            v289 = v301;
            if (v154 == 5 || v154 == 6)
            {
              v148 = 1;
            }

            else
            {
              sub_1D26C7A04(v301);
              sub_1D22EC9BC(v289, v288, &qword_1EC6DFF00);
              v148 = 0;
            }
          }

          v290 = v306;
          (*(v152 + 56))(v306, v148, 1, v151);
          v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF38);
          v292 = v324 + *(v291 + 44);
          v293 = v309;
          sub_1D22BD1D0(v309, v150, &qword_1EC6DFD58);
          v294 = v325;
          sub_1D22BD1D0(v290, v325, &qword_1EC6DFF10);
          sub_1D22BD1D0(v150, v292, &qword_1EC6DFD58);
          v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF40);
          sub_1D22BD1D0(v294, v292 + *(v295 + 48), &qword_1EC6DFF10);
          sub_1D22BD238(v290, &qword_1EC6DFF10);
          sub_1D22BD238(v293, &qword_1EC6DFD58);
          sub_1D22BD238(v294, &qword_1EC6DFF10);
          sub_1D22BD238(v150, &qword_1EC6DFD58);
          v296 = v324;
          sub_1D22BD1D0(v324, v345, &qword_1EC6DFD48);
          swift_storeEnumTagMultiPayload();
          sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48);
          sub_1D26CC198();
          v267 = v310;
          sub_1D2875AF8();
          sub_1D22BD238(v296, &qword_1EC6DFD48);
          goto LABEL_66;
        }
      }

      v261 = v362;
      sub_1D26C8580(v139, v138, v362 + v140, 1, v143);
      v262 = sub_1D2877838();
      v264 = v263;
      v265 = v143 + *(v346 + 36);
      sub_1D26C8E08(v141, v261 + v140, v265);
      v266 = (v265 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDB8) + 36));
      *v266 = v262;
      v266[1] = v264;
      sub_1D22BD1D0(v143, v345, &qword_1EC6DFD50);
      swift_storeEnumTagMultiPayload();
      sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48);
      sub_1D26CC198();
      v267 = v310;
      sub_1D2875AF8();
      sub_1D22BD238(v143, &qword_1EC6DFD50);
LABEL_66:
      v297 = v307;
      sub_1D22EC9BC(v267, v307, &qword_1EC6DFD40);
      v298 = v308;
      sub_1D22EC9BC(v297, v308, &qword_1EC6DFD38);
      sub_1D22BD1D0(v298, v337, &qword_1EC6DFD38);
      swift_storeEnumTagMultiPayload();
      sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &unk_1D289D4F8, sub_1D26CC0E0);
      sub_1D26CC8D0();
      v207 = v335;
      sub_1D2875AF8();
      sub_1D22BD238(v298, &qword_1EC6DFD38);
      v257 = v373;
      v258 = v352;
LABEL_67:
      sub_1D22BD1D0(v207, v350, &qword_1EC6DFD30);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB73C();
      sub_1D26CBFAC();
      sub_1D2875AF8();
      sub_1D22BD1D0(v258, v371, &qword_1EC6DFD28);
      swift_storeEnumTagMultiPayload();
      sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &unk_1D289D450, sub_1D26CB73C);
      sub_1D26CBF20();
      sub_1D2875AF8();
      sub_1D22BD238(v258, &qword_1EC6DFD28);
      sub_1D22BD1D0(v257, v395, &qword_1EC6DFC88);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB684();
      sub_1D26CCF50();
      v299 = v396;
      sub_1D2875AF8();
      sub_1D22BD238(v257, &qword_1EC6DFC88);
      sub_1D26CB5F8();
      sub_1D26CD204();
      v115 = v398;
      sub_1D24CB6D4(v299, v397);
      sub_1D22BD238(v299, &qword_1EC6DFC80);
      sub_1D22BD238(v207, &qword_1EC6DFD30);
      sub_1D26CEFC8(v362, type metadata accessor for CuratedPrompt);
      goto LABEL_38;
    }

    if (!EnumCaseMultiPayload)
    {
      v128 = v385;
      v129 = v378;
      (*(v378 + 32))(v382, v102, v383);
      v130 = v387;
      sub_1D24DD48C(v387);
      v131 = v388;
      sub_1D26C3BF4(v130, 0, 1, v388);
      sub_1D22BD238(v130, &unk_1EC6DE5A0);
      sub_1D22BD1D0(v131, v356, &qword_1EC6DFC98);
      swift_storeEnumTagMultiPayload();
      sub_1D26CD094();
      sub_1D26CB73C();
      v132 = v357;
      sub_1D2875AF8();
      sub_1D22BD1D0(v132, v369, &qword_1EC6DFE20);
      swift_storeEnumTagMultiPayload();
      sub_1D26CD008();
      sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &unk_1D289D450, sub_1D26CB73C);
      sub_1D2875AF8();
      sub_1D22BD238(v132, &qword_1EC6DFE20);
      sub_1D22BD1D0(v128, v395, &qword_1EC6DFE18);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB684();
      sub_1D26CCF50();
      v133 = v396;
      sub_1D2875AF8();
      sub_1D22BD238(v128, &qword_1EC6DFE18);
      sub_1D26CB5F8();
      sub_1D26CD204();
      v115 = v398;
      sub_1D24CB6D4(v133, v397);
      sub_1D22BD238(v133, &qword_1EC6DFC80);
      sub_1D22BD238(v131, &qword_1EC6DFC98);
      (*(v129 + 8))(v382, v383);
      goto LABEL_38;
    }

    v174 = v353;
    sub_1D26CE3F4(v102, v353, type metadata accessor for CuratedPrompt);
    v175 = v347;
    v176 = (v174 + *(v347 + 48));
    v177 = v176[1];
    if (v177)
    {
      v178 = *v176;
      v179 = v365;
      (*(v390 + 56))(v365, 1, 1, v389);
      v180 = *(v174 + *(v175 + 100)) ^ 1;
      v181 = *(v403 + 16);
      if (*(v403 + 24) == 1)
      {
        v182 = v346;
        v183 = v345;
        if ((v181 & 1) == 0)
        {
LABEL_32:
          v184 = sub_1D26BBCD4();
          v185 = sub_1D2875918();
          v186 = v323;
          *v323 = v185;
          *(v186 + 8) = v184;
          *(v186 + 16) = 0;
          v187 = v186 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF38) + 44);
          v188 = v322;
          sub_1D26C8580(v178, v177, v365, v180 & 1, v322);
          v189 = v325;
          (*(v321 + 56))(v325, 1, 1, v317);
          v190 = v311;
          sub_1D22BD1D0(v188, v311, &qword_1EC6DFD58);
          v191 = v183;
          v192 = v312;
          sub_1D22BD1D0(v189, v312, &qword_1EC6DFF10);
          sub_1D22BD1D0(v190, v187, &qword_1EC6DFD58);
          v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF40);
          sub_1D22BD1D0(v192, v187 + *(v193 + 48), &qword_1EC6DFF10);
          sub_1D22BD238(v189, &qword_1EC6DFF10);
          sub_1D22BD238(v188, &qword_1EC6DFD58);
          sub_1D22BD238(v192, &qword_1EC6DFF10);
          sub_1D22BD238(v190, &qword_1EC6DFD58);
          v194 = &qword_1EC6DFD48;
          sub_1D22BD1D0(v186, v191, &qword_1EC6DFD48);
          swift_storeEnumTagMultiPayload();
          sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48);
          sub_1D26CC198();
          v195 = v315;
          sub_1D2875AF8();
          v196 = v186;
          v179 = v365;
LABEL_49:
          sub_1D22BD238(v196, v194);
          v246 = v328;
          v247 = v327;
          v248 = v316;
          v249 = v314;
          sub_1D22EC9BC(v195, v314, &qword_1EC6DFD40);
          sub_1D22BD238(v179, &unk_1EC6DE5A0);
          sub_1D22EC9BC(v249, v248, &qword_1EC6DFD38);
          sub_1D22BD1D0(v248, v247, &qword_1EC6DFD38);
          swift_storeEnumTagMultiPayload();
          sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &unk_1D289D4F8, sub_1D26CC0E0);
          sub_1D26CB73C();
          sub_1D2875AF8();
          sub_1D22BD1D0(v246, v341, &qword_1EC6DFE30);
          swift_storeEnumTagMultiPayload();
          sub_1D26CD14C();
          v250 = v340;
          sub_1D2875AF8();
          sub_1D22BD238(v246, &qword_1EC6DFE30);
          sub_1D22BD238(v248, &qword_1EC6DFD38);
          v251 = v357;
          v252 = v356;
          v253 = v369;
LABEL_58:
          sub_1D22BD1D0(v250, v252, &qword_1EC6DFE28);
          swift_storeEnumTagMultiPayload();
          sub_1D26CD094();
          sub_1D26CB73C();
          sub_1D2875AF8();
          sub_1D22BD1D0(v251, v253, &qword_1EC6DFE20);
          swift_storeEnumTagMultiPayload();
          sub_1D26CD008();
          sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &unk_1D289D450, sub_1D26CB73C);
          v284 = v385;
          sub_1D2875AF8();
          sub_1D22BD238(v251, &qword_1EC6DFE20);
          sub_1D22BD1D0(v284, v395, &qword_1EC6DFE18);
          swift_storeEnumTagMultiPayload();
          sub_1D26CB684();
          sub_1D26CCF50();
          v285 = v396;
          sub_1D2875AF8();
          sub_1D22BD238(v284, &qword_1EC6DFE18);
          sub_1D26CB5F8();
          sub_1D26CD204();
          v115 = v398;
          sub_1D24CB6D4(v285, v397);
          sub_1D22BD238(v285, &qword_1EC6DFC80);
          sub_1D22BD238(v250, &qword_1EC6DFE28);
          v215 = type metadata accessor for CuratedPrompt;
          v216 = &v385;
          goto LABEL_59;
        }
      }

      else
      {
        sub_1D2870F78();
        sub_1D2878A28();
        v237 = sub_1D28762E8();
        sub_1D2873BE8();

        v238 = v318;
        sub_1D2875618();
        swift_getAtKeyPath();
        sub_1D2273818(v181, 0);
        (*(v319 + 8))(v238, v320);
        v182 = v346;
        v183 = v345;
        if ((v406 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v239 = v329;
      v240 = v403;
      sub_1D26C8580(v178, v177, v179, v180 & 1, v329);
      v241 = sub_1D2877838();
      v243 = v242;
      v244 = v239 + *(v182 + 36);
      sub_1D26C8E08(v240, v179, v244);
      v245 = (v244 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDB8) + 36));
      *v245 = v241;
      v245[1] = v243;
      v194 = &qword_1EC6DFD50;
      sub_1D22BD1D0(v239, v183, &qword_1EC6DFD50);
      swift_storeEnumTagMultiPayload();
      sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48);
      sub_1D26CC198();
      v195 = v315;
      sub_1D2875AF8();
      v196 = v239;
      goto LABEL_49;
    }

    v217 = v363;
    sub_1D22BD1D0(v174 + *(v347 + 36), v363, &unk_1EC6DE5A0);
    v219 = v389;
    v218 = v390;
    v220 = (*(v390 + 48))(v217, 1, v389);
    v221 = v341;
    v222 = v323;
    if (v220 != 1)
    {
      v268 = v217;
      v269 = v305;
      sub_1D26CE3F4(v268, v305, type metadata accessor for PlaygroundImage);
      v270 = v387;
      sub_1D26CE38C(v269, v387, type metadata accessor for PlaygroundImage);
      (*(v218 + 56))(v270, 0, 1, v219);
      v271 = v388;
      sub_1D26C3BF4(v270, 1, (*(v174 + *(v175 + 100)) & 1) == 0, v388);
      sub_1D22BD238(v270, &unk_1EC6DE5A0);
      sub_1D22BD1D0(v271, v327, &qword_1EC6DFC98);
      swift_storeEnumTagMultiPayload();
      sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &unk_1D289D4F8, sub_1D26CC0E0);
      sub_1D26CB73C();
      v272 = v328;
      sub_1D2875AF8();
      sub_1D22BD1D0(v272, v221, &qword_1EC6DFE30);
      swift_storeEnumTagMultiPayload();
      sub_1D26CD14C();
      v250 = v340;
      sub_1D2875AF8();
      sub_1D22BD238(v272, &qword_1EC6DFE30);
      sub_1D22BD238(v271, &qword_1EC6DFC98);
      sub_1D26CEFC8(v269, type metadata accessor for PlaygroundImage);
      v253 = v369;
      v252 = v356;
      v251 = v357;
      goto LABEL_58;
    }

    sub_1D22BD238(v217, &unk_1EC6DE5A0);
    v223 = v85;
    (*(v218 + 56))(v85, 1, 1, v219);
    v224 = *(v174 + *(v175 + 100)) ^ 1;
    v225 = *(v403 + 16);
    if (*(v403 + 24) == 1)
    {
      v226 = v325;
      v227 = v312;
      v228 = v311;
      if ((v225 & 1) == 0)
      {
LABEL_46:
        v229 = sub_1D26BBCD4();
        *v222 = sub_1D2875918();
        *(v222 + 8) = v229;
        *(v222 + 16) = 0;
        v230 = v222 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF38) + 44);
        v231 = v223;
        v300 = v223;
        v232 = v322;
        sub_1D26C8580(45, 0xE100000000000000, v231, v224 & 1, v322);
        (*(v321 + 56))(v226, 1, 1, v317);
        sub_1D22BD1D0(v232, v228, &qword_1EC6DFD58);
        sub_1D22BD1D0(v226, v227, &qword_1EC6DFF10);
        sub_1D22BD1D0(v228, v230, &qword_1EC6DFD58);
        v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF40);
        sub_1D22BD1D0(v227, v230 + *(v233 + 48), &qword_1EC6DFF10);
        sub_1D22BD238(v226, &qword_1EC6DFF10);
        sub_1D22BD238(v232, &qword_1EC6DFD58);
        sub_1D22BD238(v227, &qword_1EC6DFF10);
        sub_1D22BD238(v228, &qword_1EC6DFD58);
        sub_1D22BD1D0(v222, v345, &qword_1EC6DFD48);
        swift_storeEnumTagMultiPayload();
        sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48);
        sub_1D26CC198();
        v234 = v303;
        sub_1D2875AF8();
        v235 = v300;
        sub_1D22BD238(v222, &qword_1EC6DFD48);
        v236 = v304;
LABEL_57:
        v283 = v302;
        sub_1D22EC9BC(v234, v302, &qword_1EC6DFD40);
        sub_1D22BD238(v235, &unk_1EC6DE5A0);
        sub_1D22EC9BC(v283, v236, &qword_1EC6DFD38);
        sub_1D22BD1D0(v236, v341, &qword_1EC6DFD38);
        swift_storeEnumTagMultiPayload();
        sub_1D26CD14C();
        sub_1D26CC064(&qword_1ED89D220, &qword_1EC6DFD38, &unk_1D289D4F8, sub_1D26CC0E0);
        v250 = v340;
        sub_1D2875AF8();
        sub_1D22BD238(v236, &qword_1EC6DFD38);
        v252 = v356;
        v253 = v369;
        v251 = v357;
        goto LABEL_58;
      }
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v273 = sub_1D28762E8();
      sub_1D2873BE8();

      v274 = v318;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v225, 0);
      (*(v319 + 8))(v274, v320);
      v226 = v325;
      v227 = v312;
      v228 = v311;
      if ((v407 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v275 = v224 & 1;
    v276 = v329;
    v277 = v403;
    sub_1D26C8580(45, 0xE100000000000000, v223, v275, v329);
    v278 = sub_1D2877838();
    v280 = v279;
    v281 = v276 + *(v346 + 36);
    sub_1D26C8E08(v277, v223, v281);
    v282 = (v281 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFDB8) + 36));
    *v282 = v278;
    v282[1] = v280;
    sub_1D22BD1D0(v276, v345, &qword_1EC6DFD50);
    swift_storeEnumTagMultiPayload();
    sub_1D22BB9D8(&qword_1ED89D0B0, &qword_1EC6DFD48);
    sub_1D26CC198();
    v234 = v303;
    sub_1D2875AF8();
    sub_1D22BD238(v276, &qword_1EC6DFD50);
    v236 = v304;
    v235 = v223;
    goto LABEL_57;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v155 = v102;
      v156 = v334;
      sub_1D26CE3F4(v155, v334, type metadata accessor for Prompt);
      v157 = v342;
      sub_1D26C48E0(*(v156 + 8), *(v156 + 16), v342);
      sub_1D22BD1D0(v157, v361, &qword_1EC6DFDC8);
      swift_storeEnumTagMultiPayload();
      sub_1D26CC95C();
      sub_1D26CB73C();
      v158 = v348;
      sub_1D2875AF8();
      sub_1D22BD1D0(v158, v364, &qword_1EC6DFDC0);
      swift_storeEnumTagMultiPayload();
      sub_1D26CC8D0();
      v159 = v365;
      sub_1D2875AF8();
      sub_1D22BD238(v158, &qword_1EC6DFDC0);
      sub_1D26CB5F8();
      sub_1D26CD204();
      v115 = v398;
      sub_1D24CB7CC(v159, v397, v400);
      sub_1D22BD238(v159, &qword_1EC6DFE40);
      sub_1D22BD238(v157, &qword_1EC6DFDC8);
      v160 = type metadata accessor for Prompt;
      v161 = v156;
LABEL_37:
      sub_1D26CEFC8(v161, v160);
      goto LABEL_38;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v109 = v330;
      sub_1D26CE3F4(v102, v330, type metadata accessor for PersonConditioningImage);
      v110 = v387;
      sub_1D26CE38C(v109 + *(v98 + 20), v387, type metadata accessor for PlaygroundImage);
      (*(v390 + 56))(v110, 0, 1, v389);
      v111 = v388;
      sub_1D26C3BF4(v110, 0, 1, v388);
      sub_1D22BD238(v110, &unk_1EC6DE5A0);
      sub_1D22BD1D0(v111, v367, &qword_1EC6DFC98);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB73C();
      v112 = v368;
      sub_1D2875AF8();
      sub_1D22BD1D0(v112, v371, &qword_1EC6DFC90);
      swift_storeEnumTagMultiPayload();
      sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &unk_1D289D450, sub_1D26CB73C);
      sub_1D26CBF20();
      v113 = v373;
      sub_1D2875AF8();
      sub_1D22BD238(v112, &qword_1EC6DFC90);
      sub_1D22BD1D0(v113, v395, &qword_1EC6DFC88);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB684();
      sub_1D26CCF50();
      v114 = v396;
      sub_1D2875AF8();
      sub_1D22BD238(v113, &qword_1EC6DFC88);
      sub_1D26CB5F8();
      sub_1D26CD204();
      v115 = v398;
      sub_1D24CB6D4(v114, v397);
      sub_1D22BD238(v114, &qword_1EC6DFC80);
      sub_1D22BD238(v111, &qword_1EC6DFC98);
      v116 = type metadata accessor for PersonConditioningImage;
    }

    else
    {
      v109 = v331;
      sub_1D26CE3F4(v102, v331, type metadata accessor for SceneConditioningImage);
      v197 = v387;
      sub_1D26CE38C(v109, v387, type metadata accessor for PlaygroundImage);
      (*(v390 + 56))(v197, 0, 1, v389);
      v198 = v388;
      sub_1D26C3BF4(v197, 0, 1, v388);
      sub_1D22BD238(v197, &unk_1EC6DE5A0);
      sub_1D22BD1D0(v198, v367, &qword_1EC6DFC98);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB73C();
      v199 = v368;
      sub_1D2875AF8();
      sub_1D22BD1D0(v199, v371, &qword_1EC6DFC90);
      swift_storeEnumTagMultiPayload();
      sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &unk_1D289D450, sub_1D26CB73C);
      sub_1D26CBF20();
      v200 = v373;
      sub_1D2875AF8();
      sub_1D22BD238(v199, &qword_1EC6DFC90);
      sub_1D22BD1D0(v200, v395, &qword_1EC6DFC88);
      swift_storeEnumTagMultiPayload();
      sub_1D26CB684();
      sub_1D26CCF50();
      v201 = v396;
      sub_1D2875AF8();
      sub_1D22BD238(v200, &qword_1EC6DFC88);
      sub_1D26CB5F8();
      sub_1D26CD204();
      v115 = v398;
      sub_1D24CB6D4(v201, v397);
      sub_1D22BD238(v201, &qword_1EC6DFC80);
      sub_1D22BD238(v198, &qword_1EC6DFC98);
      v116 = type metadata accessor for SceneConditioningImage;
    }

LABEL_34:
    v160 = v116;
    v161 = v109;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v109 = v332;
    sub_1D26CE3F4(v102, v332, type metadata accessor for SketchConditioningImage);
    v162 = v387;
    sub_1D26CE38C(v109, v387, type metadata accessor for PlaygroundImage);
    (*(v390 + 56))(v162, 0, 1, v389);
    v163 = v388;
    sub_1D26C3BF4(v162, 0, 1, v388);
    sub_1D22BD238(v162, &unk_1EC6DE5A0);
    sub_1D22BD1D0(v163, v350, &qword_1EC6DFC98);
    swift_storeEnumTagMultiPayload();
    sub_1D26CB73C();
    sub_1D26CBFAC();
    v164 = v352;
    sub_1D2875AF8();
    sub_1D22BD1D0(v164, v371, &qword_1EC6DFD28);
    swift_storeEnumTagMultiPayload();
    sub_1D26CEAB8(&qword_1ED89D508, &qword_1EC6DFC90, &unk_1D289D450, sub_1D26CB73C);
    sub_1D26CBF20();
    v165 = v373;
    sub_1D2875AF8();
    sub_1D22BD238(v164, &qword_1EC6DFD28);
    sub_1D22BD1D0(v165, v395, &qword_1EC6DFC88);
    swift_storeEnumTagMultiPayload();
    sub_1D26CB684();
    sub_1D26CCF50();
    v166 = v396;
    sub_1D2875AF8();
    sub_1D22BD238(v165, &qword_1EC6DFC88);
    sub_1D26CB5F8();
    sub_1D26CD204();
    v115 = v398;
    sub_1D24CB6D4(v166, v397);
    sub_1D22BD238(v166, &qword_1EC6DFC80);
    sub_1D22BD238(v163, &qword_1EC6DFC98);
    v116 = type metadata accessor for SketchConditioningImage;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 9)
  {
    v121 = v333;
    sub_1D26CE3F4(v102, v333, type metadata accessor for PlaygroundImage);
    v202 = v387;
    sub_1D26CE38C(v121, v387, type metadata accessor for PlaygroundImage);
    (*(v390 + 56))(v202, 0, 1, v389);
    v203 = v388;
    sub_1D26C3BF4(v202, 0, 1, v388);
    sub_1D22BD238(v202, &unk_1EC6DE5A0);
    sub_1D22BD1D0(v203, v364, &qword_1EC6DFC98);
    swift_storeEnumTagMultiPayload();
    sub_1D26CC8D0();
    sub_1D26CB73C();
    v204 = v365;
    sub_1D2875AF8();
    sub_1D26CB5F8();
    sub_1D26CD204();
    v115 = v398;
    sub_1D24CB7CC(v204, v397, v400);
    sub_1D22BD238(v204, &qword_1EC6DFE40);
    sub_1D22BD238(v203, &qword_1EC6DFC98);
    v173 = type metadata accessor for PlaygroundImage;
    goto LABEL_36;
  }

  sub_1D26CEFC8(v102, type metadata accessor for Bubble.BubbleType);
  v124 = v387;
  (*(v390 + 56))(v387, 1, 1, v389);
  v125 = v388;
  sub_1D26C3BF4(v124, 0, 1, v388);
  sub_1D22BD238(v124, &unk_1EC6DE5A0);
  sub_1D22BD1D0(v125, v361, &qword_1EC6DFC98);
  swift_storeEnumTagMultiPayload();
  sub_1D26CC95C();
  sub_1D26CB73C();
  v126 = v348;
  sub_1D2875AF8();
  sub_1D22BD1D0(v126, v364, &qword_1EC6DFDC0);
  swift_storeEnumTagMultiPayload();
  sub_1D26CC8D0();
  v127 = v365;
  sub_1D2875AF8();
  sub_1D22BD238(v126, &qword_1EC6DFDC0);
  sub_1D26CB5F8();
  sub_1D26CD204();
  v115 = v398;
  sub_1D24CB7CC(v127, v397, v400);
  sub_1D22BD238(v127, &qword_1EC6DFE40);
  sub_1D22BD238(v125, &qword_1EC6DFC98);
LABEL_38:
  sub_1D26CB56C();
  sub_1D245980C(v115);
  return sub_1D22BD238(v115, &qword_1EC6DFC70);
}

uint64_t sub_1D26C2268()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v35 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PhotosPersonAsset();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2872008();
  v32 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CuratedPrompt();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = (&v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for BubbleView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0);
  sub_1D2874338();
  sub_1D26CE3F4(v18, v15, type metadata accessor for Bubble.BubbleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      sub_1D26CEFC8(v15, type metadata accessor for Bubble.BubbleType);
      sub_1D2877FE8();
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v25 = qword_1ED8B0058;
      sub_1D28718C8();
      return sub_1D28780E8();
    }

    else
    {
      if (EnumCaseMultiPayload != 9)
      {
        sub_1D2877FE8();
        if (qword_1ED89E0E8 != -1)
        {
          swift_once();
        }

        v29 = qword_1ED8B0058;
        sub_1D28718C8();
        v23 = sub_1D28780E8();
        v27 = type metadata accessor for Bubble.BubbleType;
        v28 = v15;
        goto LABEL_24;
      }

      sub_1D26CEFC8(v15, type metadata accessor for Bubble.BubbleType);
      return 0;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1D26CE3F4(v15, v9, type metadata accessor for CharacterAsset);
        v23 = sub_1D268B138();
        v27 = type metadata accessor for CharacterAsset;
        v28 = v9;
LABEL_24:
        sub_1D26CEFC8(v28, v27);
        return v23;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v21 = v33;
        sub_1D26CE3F4(v15, v33, type metadata accessor for PhotosPersonAsset);
        if (v21[1])
        {
          v23 = *v21;
        }

        else
        {
          v23 = 0;
        }

        sub_1D2870F68();
        v24 = type metadata accessor for PhotosPersonAsset;
      }

      else
      {
        v21 = v34;
        sub_1D26CE3F4(v15, v34, type metadata accessor for Prompt);
        v23 = v21[1];
        sub_1D2870F68();
        v24 = type metadata accessor for Prompt;
      }

LABEL_23:
      v27 = v24;
      v28 = v21;
      goto LABEL_24;
    }

    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_1D26CE3F4(v15, v21, type metadata accessor for CuratedPrompt);
      v23 = v21[2];
      sub_1D2870F68();
      v24 = type metadata accessor for CuratedPrompt;
      goto LABEL_23;
    }

    v26 = v32;
    (*(v32 + 32))(v12, v15, v10);
    v23 = sub_1D24DC8F0();
    (*(v26 + 8))(v12, v10);
  }

  return v23;
}

uint64_t sub_1D26C2900@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a5;
  v38 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DFE60);
  v14 = sub_1D22BB9D8(&qword_1ED89D1F8, &qword_1EC6DFE60);
  v46 = a3;
  v47 = v13;
  v42 = v14;
  v43 = v13;
  v48 = a4;
  v49 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v36 = &v36 - v20;
  v21 = sub_1D2875B08();
  v39 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v36 - v24;
  v26 = (a2 >> 56) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v26 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v26 | v23)
  {
    v37 = &v36;
    MEMORY[0x1EEE9AC00](v22);
    *(&v36 - 4) = a1;
    *(&v36 - 3) = a2;
    *(&v36 - 2) = v29;
    v30 = v43;
    v38 = v25;
    v31 = v21;
    v32 = v42;
    sub_1D2876DB8();
    v25 = v38;
    v46 = a3;
    v47 = v30;
    v48 = a4;
    v49 = v32;
    v21 = v31;
    swift_getOpaqueTypeConformance2();
    v33 = v36;
    sub_1D245980C(v18);
    v34 = *(v16 + 8);
    v34(v18, OpaqueTypeMetadata2);
    sub_1D245980C(v33);
    sub_1D24CB6D4(v18, OpaqueTypeMetadata2);
    v34(v18, OpaqueTypeMetadata2);
    v34(v33, OpaqueTypeMetadata2);
  }

  else
  {
    sub_1D245980C(v40);
    v27 = v37;
    sub_1D245980C(v12);
    v46 = a3;
    v47 = v43;
    v48 = a4;
    v49 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1D24CB7CC(v27, OpaqueTypeMetadata2, a3);
    v28 = *(v38 + 1);
    v28(v27, a3);
    v28(v12, a3);
  }

  v46 = a3;
  v47 = v43;
  v48 = a4;
  v49 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = a4;
  swift_getWitnessTable();
  sub_1D245980C(v25);
  return (*(v39 + 8))(v25, v21);
}

uint64_t sub_1D26C2DE8()
{
  sub_1D2877938();
  sub_1D2874BE8();
}

uint64_t sub_1D26C2E54(uint64_t a1)
{
  v2 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for BubbleView();
  if ((*(a1 + *(result + 64)) & 1) == 0)
  {
    strcpy(v9, "Destination-");
    HIBYTE(v9[6]) = 0;
    v9[7] = -5120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0);
    sub_1D2874338();
    v6 = sub_1D2846EE0();
    v8 = v7;
    sub_1D26CEFC8(v4, type metadata accessor for Bubble);
    MEMORY[0x1D38A0C50](v6, v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE8);
    return sub_1D2874348();
  }

  return result;
}

uint64_t sub_1D26C2FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = type metadata accessor for Bubble.BubbleType(0);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  type metadata accessor for Bubble(0);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for CuratedPrompt();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_1D2878568();
  v3[14] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D26C30FC, v5, v4);
}

uint64_t sub_1D26C30FC()
{
  *(v0 + 208) = *(type metadata accessor for BubbleView() + 72);
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBF0);
  sub_1D2874338();
  v1 = *(v0 + 16);
  if (v1)
  {

LABEL_17:

    v17 = *(v0 + 8);

    return v17();
  }

  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0);
  sub_1D2874338();
  sub_1D26CE3F4(v2, v3, type metadata accessor for Bubble.BubbleType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v9 = *(v0 + 72);
    v10 = *(v0 + 56);
    sub_1D26CEFC8(*(v0 + 64), type metadata accessor for Bubble.BubbleType);
    sub_1D2874338();
    sub_1D26CE3F4(v9, v10, type metadata accessor for Bubble.BubbleType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v15 = *(v0 + 56);

      v16 = type metadata accessor for Bubble.BubbleType;
LABEL_16:
      sub_1D26CEFC8(v15, v16);
      goto LABEL_17;
    }

    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    sub_1D26CE3F4(*(v0 + 56), v12, type metadata accessor for CuratedPrompt);
    v13 = (v12 + *(v11 + 48));
    v14 = v13[1];
    *(v0 + 176) = v14;
    if (v14)
    {
      *(v0 + 184) = *v13;
      *(v0 + 192) = sub_1D26BBA10();
      v8 = sub_1D26C35D8;
      goto LABEL_9;
    }

    v15 = *(v0 + 96);
LABEL_15:

    v16 = type metadata accessor for CuratedPrompt;
    goto LABEL_16;
  }

  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  sub_1D26CE3F4(*(v0 + 64), v4, type metadata accessor for CuratedPrompt);
  v6 = (v4 + *(v5 + 48));
  v7 = v6[1];
  *(v0 + 144) = v7;
  if (!v7)
  {
    v15 = *(v0 + 104);
    goto LABEL_15;
  }

  *(v0 + 152) = *v6;
  *(v0 + 160) = sub_1D26BBA10();
  v8 = sub_1D26C3404;
LABEL_9:

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D26C3404()
{
  CGRectMake(*(v0 + 160), *(v0 + 160));
  v1 = sub_1D2871C78();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 168) = v3;
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D26C34F0, v4, v5);
}

uint64_t sub_1D26C34F0()
{
  v1 = v0[21];
  v2 = v0[13];

  v0[4] = v1;
  sub_1D2874348();
  sub_1D26CEFC8(v2, type metadata accessor for CuratedPrompt);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D26C35D8()
{
  CGRectMake(*(v0 + 192), *(v0 + 192));
  v1 = sub_1D2871C78();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 200) = v3;
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D26C36C4, v4, v5);
}

uint64_t sub_1D26C36C4()
{
  v1 = v0[25];
  v2 = v0[12];

  v0[3] = v1;
  sub_1D2874348();
  sub_1D26CEFC8(v2, type metadata accessor for CuratedPrompt);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D26C37B0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v36 = a3;
  v4 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v34 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = type metadata accessor for CuratedPrompt();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v33 - v24;
  LODWORD(a2) = *a2 - 5;
  type metadata accessor for BubbleView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFBE0);
  if (a2 > 1)
  {
    sub_1D2874338();
    sub_1D26CE3F4(v14, v6, type metadata accessor for Bubble.BubbleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D26CE3F4(v6, v22, type metadata accessor for CuratedPrompt);
      v30 = v35;
      sub_1D26CE38C(v22, v35, type metadata accessor for CuratedPrompt);
      swift_storeEnumTagMultiPayload();
      v31 = v34;
      sub_1D2874338();
      sub_1D26CE270(v30, v31);
      sub_1D2874348();
      v28 = type metadata accessor for CuratedPrompt;
      v29 = v22;
    }

    else
    {
      v28 = type metadata accessor for Bubble.BubbleType;
      v29 = v6;
    }
  }

  else
  {
    sub_1D2874338();
    sub_1D26CE3F4(v19, v11, type metadata accessor for Bubble.BubbleType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D26CE3F4(v11, v25, type metadata accessor for CuratedPrompt);
      if (*&v25[v20[12] + 8] || *&v25[v20[11] + 8] || v25[v20[23] + 48] != 255)
      {
        v26 = v35;
        sub_1D26CE38C(v25, v35, type metadata accessor for CuratedPrompt);
        swift_storeEnumTagMultiPayload();
        v27 = v34;
        sub_1D2874338();
        sub_1D26CE270(v26, v27);
        sub_1D2874348();
      }

      v28 = type metadata accessor for CuratedPrompt;
      v29 = v25;
    }

    else
    {
      v28 = type metadata accessor for Bubble.BubbleType;
      v29 = v11;
    }
  }

  return sub_1D26CEFC8(v29, v28);
}

uint64_t sub_1D26C3BF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v87 = a2;
  v88 = a3;
  v89 = a1;
  v95 = a4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0030);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v73 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCB0);
  MEMORY[0x1EEE9AC00](v81);
  v75 = &v73 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCA8);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v73 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v73 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0038);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFF10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v80 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v73 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCB8);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFCA0);
  MEMORY[0x1EEE9AC00](v91);
  v21 = (&v73 - v20);
  v22 = sub_1D2875628();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v4 + 16);
  v28 = *(v4 + 24) == 1;
  v79 = v24;
  v78 = v23;
  v77 = v26;
  if (v28)
  {
    if (v27)
    {
      goto LABEL_7;
    }

LABEL_4:
    v29 = sub_1D26BBCD4();
    *v21 = sub_1D2875918();
    v21[1] = v29;
    *(v21 + 16) = 0;
    sub_1D26C6FCC(v89, v87 & 1, v88 & 1, v19);
    if (*(v4 + *(type metadata accessor for BubbleView() + 68)))
    {
      v30 = 1;
      v31 = v83;
LABEL_22:
      (*(v9 + 56))(v31, v30, 1, v8);
      v68 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0050) + 44);
      v69 = v86;
      sub_1D22BD1D0(v19, v86, &qword_1EC6DFCB8);
      v70 = v80;
      sub_1D22BD1D0(v31, v80, &qword_1EC6DFF10);
      sub_1D22BD1D0(v69, v68, &qword_1EC6DFCB8);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0058);
      sub_1D22BD1D0(v70, v68 + *(v71 + 48), &qword_1EC6DFF10);
      sub_1D22BD238(v31, &qword_1EC6DFF10);
      sub_1D22BD238(v19, &qword_1EC6DFCB8);
      sub_1D22BD238(v70, &qword_1EC6DFF10);
      sub_1D22BD238(v69, &qword_1EC6DFCB8);
      sub_1D22BD1D0(v21, v93, &qword_1EC6DFCA0);
      swift_storeEnumTagMultiPayload();
      sub_1D22BB9D8(&qword_1ED89D0A0, &qword_1EC6DFCA0);
      sub_1D26CB7F4();
      sub_1D2875AF8();
      v65 = v21;
      v66 = &qword_1EC6DFCA0;
      return sub_1D22BD238(v65, v66);
    }

    v38 = *v4;
    v31 = v83;
    if (*(v4 + 8))
    {
      v39 = *v4;
      if (v39 != 5)
      {
LABEL_17:
        if (v39 != 6)
        {
          v67 = v74;
          sub_1D26C7A04(v74);
          sub_1D22EC9BC(v67, v31, &qword_1EC6DFF00);
          v30 = 0;
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v76 = v19;
      v45 = sub_1D28762E8();
      v19 = v76;
      sub_1D2873BE8();

      v46 = v77;
      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v38, 0);
      (*(v78 + 8))(v46, v79);
      v39 = v96;
      if (v96 != 5)
      {
        goto LABEL_17;
      }
    }

    v30 = 1;
    goto LABEL_22;
  }

  v32 = v24;
  sub_1D2870F78();
  sub_1D2878A28();
  v76 = v19;
  v33 = sub_1D28762E8();
  v73 = v4;
  v34 = v33;
  sub_1D2873BE8();

  v19 = v76;
  v4 = v73;
  sub_1D2875618();
  swift_getAtKeyPath();
  sub_1D2273818(v27, 0);
  (*(v23 + 8))(v26, v32);
  if ((v98 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_7:
  v35 = v87;
  v36 = *v4;
  if (*(v4 + 8) == 1)
  {
    v37 = *v4;
    if (v37 == 5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v40 = sub_1D28762E8();
    sub_1D2873BE8();

    v41 = v77;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v36, 0);
    (*(v78 + 8))(v41, v79);
    v37 = v97;
    if (v97 == 5)
    {
      goto LABEL_15;
    }
  }

  if (v37 != 6)
  {
    v47 = v75;
    sub_1D26C6FCC(v89, v35 & 1, v88 & 1, v75);
    v48 = sub_1D2877838();
    v50 = v49;
    v51 = v47 + *(v81 + 36);
    sub_1D26C7A04(v51);
    v52 = sub_1D2875698();
    v53 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0040) + 36));
    *v53 = v52;
    v53[1] = sub_1D26CF834;
    v53[2] = 0;
    LOBYTE(v52) = sub_1D2876348();
    sub_1D26BBCD4();
    sub_1D2874298();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0048) + 36);
    *v62 = v52;
    *(v62 + 8) = v55;
    *(v62 + 16) = v57;
    *(v62 + 24) = v59;
    *(v62 + 32) = v61;
    *(v62 + 40) = 0;
    v63 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFD20) + 36));
    *v63 = v48;
    v63[1] = v50;
    v43 = &qword_1EC6DFCB0;
    sub_1D22BD1D0(v47, v82, &qword_1EC6DFCB0);
    swift_storeEnumTagMultiPayload();
    sub_1D26CB880();
    sub_1D26CB938();
    sub_1D2875AF8();
    v44 = v47;
    goto LABEL_20;
  }

LABEL_15:
  v42 = v86;
  sub_1D26C6FCC(v89, v35 & 1, v88 & 1, v86);
  v43 = &qword_1EC6DFCB8;
  sub_1D22BD1D0(v42, v82, &qword_1EC6DFCB8);
  swift_storeEnumTagMultiPayload();
  sub_1D26CB880();
  sub_1D26CB938();
  sub_1D2875AF8();
  v44 = v42;
LABEL_20:
  sub_1D22BD238(v44, v43);
  v64 = v90;
  sub_1D22BD1D0(v90, v93, &qword_1EC6DFCA8);
  swift_storeEnumTagMultiPayload();
  sub_1D22BB9D8(&qword_1ED89D0A0, &qword_1EC6DFCA0);
  sub_1D26CB7F4();
  sub_1D2875AF8();
  v65 = v64;
  v66 = &qword_1EC6DFCA8;
  return sub_1D22BD238(v65, v66);
}