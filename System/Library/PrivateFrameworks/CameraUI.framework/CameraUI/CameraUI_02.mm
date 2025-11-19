uint64_t sub_1A389C24C()
{
  v0 = sub_1A3A2F9E0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A3A2FF40();
  v5 = sub_1A3A30EB0();
  sub_1A3A2EA60();
  sub_1A389F1A4(0x65736F6C43, 0xE500000000000000, 0);
  v6 = MEMORY[0x1E69E7CC0];
  sub_1A3A2EA50();
  sub_1A389F1B4(0x65736F6C43, 0xE500000000000000, 0);

  v15 = 1;
  v14 = 0;
  v8[0] = v4;
  v8[1] = 0;
  v9 = 1;
  v10 = v5;
  v11 = xmmword_1A3A6C4E0;
  v12 = 0;
  v13 = v6;
  (*(v1 + 104))(v3, *MEMORY[0x1E697E728], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC6A0);
  sub_1A38A08F8(&qword_1EB0FC6A8, &qword_1EB0FC6A0);
  sub_1A3A30A20();
  (*(v1 + 8))(v3, v0);

  sub_1A389F1B4(0x65736F6C43, 0xE500000000000000, 0);
}

uint64_t sub_1A389C478@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v17[0] = sub_1A3A30070();
  v2 = *(v17[0] - 8);
  MEMORY[0x1EEE9AC00](v17[0]);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC690);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC698);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC6A0);
  v14 = sub_1A38A08F8(&qword_1EB0FC6A8, &qword_1EB0FC6A0);
  v17[2] = v13;
  v17[3] = v14;
  swift_getOpaqueTypeConformance2();
  sub_1A3A30FE0();
  sub_1A3A30060();
  sub_1A38A08F8(&qword_1EB0FC6B0, &qword_1EB0FC690);
  sub_1A389FBA0(&qword_1EB0FC610, MEMORY[0x1E697C540]);
  v15 = v17[0];
  sub_1A3A30960();
  (*(v2 + 8))(v4, v15);
  return (*(v6 + 8))(v8, v5);
}

void *sub_1A389C774@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC778);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC748);
  v7 = MEMORY[0x1EEE9AC00](v69);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v68 = &v57 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - v12;
  v14 = sub_1A3A2FEE0();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v80 = 0;
  *(&v80 + 1) = 0xE000000000000000;
  sub_1A3A31F20();
  v17 = *(a1 + 4);
  v16 = *(a1 + 5);
  sub_1A3A2EA50();

  *&v74 = v17;
  *(&v74 + 1) = v16;
  MEMORY[0x1A58F7770](0x203A687464695720, 0xE800000000000000);
  v80 = *a1;
  v81 = *(a1 + 2);
  v76 = *a1;
  v77 = *(a1 + 2);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC758);
  result = MEMORY[0x1A58F7010](&v78);
  if ((v78 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (*&v78 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*&v78 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v66 = v18;
  *&v76 = *&v78;
  v20 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v20);

  result = MEMORY[0x1A58F7770](543584032, 0xE400000000000000);
  v79 = *(a1 + 64);
  v78 = a1[3];
  v21 = *&v78;
  v22 = v79;
  v57 = *(&v78 + 1);
  if (v79 == 1)
  {
    v24 = *(&v78 + 1);
    v23 = *&v78;
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v25 = sub_1A3A305C0();
    sub_1A3A2F270();

    v26 = v70;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v78, &qword_1EB0FC798);
    result = (*(v71 + 8))(v26, v72);
    v24 = *(&v76 + 1);
    v23 = *&v76;
  }

  if (v23 >= v24)
  {
    v23 = v24;
  }

  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v65 = v6;
  v62 = v4;
  v63 = v3;
  v64 = v9;
  *&v76 = v23;
  v27 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v27);

  v61 = sub_1A3A30880();
  v60 = v28;
  v59 = v29;
  v73 = v30;

  *&v76 = 0x7464695720726145;
  *(&v76 + 1) = 0xEB00000000203A68;
  *&v74 = *(a1 + 3);
  v31 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v31);

  sub_1A3A307A0();
  v32 = sub_1A3A308A0();
  v34 = v33;
  v36 = v35;

  v37 = sub_1A3A30880();
  v39 = v38;
  v58 = v40;
  v42 = v41;
  sub_1A389F1B4(v32, v34, v36 & 1);

  v76 = v80;
  v77 = v81;
  result = sub_1A3A311B0();
  v76 = v74;
  v77 = v75;
  if (v22)
  {
    v43 = v21;
    v44 = v57;
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v45 = sub_1A3A305C0();
    sub_1A3A2F270();

    v46 = v70;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v78, &qword_1EB0FC798);
    result = (*(v71 + 8))(v46, v72);
    v44 = *(&v74 + 1);
    v43 = *&v74;
  }

  v47 = v65;
  if (v43 >= v44)
  {
    v43 = v44;
  }

  if (v43 >= 0.0)
  {
    *&v74 = 0;
    *(&v74 + 1) = v43;
    sub_1A389FE28();
    sub_1A3A310A0();
    v48 = sub_1A3A30600();
    v49 = v68;
    (*(v62 + 32))(v68, v47, v63);
    v50 = v49 + *(v69 + 36);
    *v50 = v48;
    *(v50 + 8) = 0u;
    *(v50 + 24) = 0u;
    *(v50 + 40) = 1;
    sub_1A389FF98(v49, v13);
    LOBYTE(v49) = v59 & 1;
    LOBYTE(v76) = v59 & 1;
    v51 = v64;
    sub_1A388F6D8(v13, v64, &qword_1EB0FC748);
    v52 = v67;
    v53 = v61;
    v54 = v60;
    *v67 = v61;
    v52[1] = v54;
    *(v52 + 16) = v49;
    v52[3] = v73;
    v52[4] = v37;
    v52[5] = v39;
    v55 = v58 & 1;
    *(v52 + 48) = v58 & 1;
    v52[7] = v42;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC7A0);
    sub_1A388F6D8(v51, v52 + *(v56 + 64), &qword_1EB0FC748);
    sub_1A389F1A4(v53, v54, v49);
    sub_1A3A2EA50();
    sub_1A389F1A4(v37, v39, v55);
    sub_1A3A2EA50();
    sub_1A388F740(v13, &qword_1EB0FC748);
    sub_1A388F740(v51, &qword_1EB0FC748);
    sub_1A389F1B4(v37, v39, v55);

    sub_1A389F1B4(v53, v54, v76);
  }

LABEL_25:
  __break(1u);
  return result;
}

__n128 sub_1A389CFEC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v16 = *(v1 + 32);
  v17 = v3;
  LOBYTE(v18) = *(v1 + 64);
  v4 = *(v1 + 16);
  v14 = *v1;
  v15 = v4;
  *a1 = sub_1A3A300B0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC788);
  sub_1A389C774(&v14, (a1 + *(v5 + 44)));
  v6 = [objc_opt_self() secondarySystemBackgroundColor];
  v7 = sub_1A3A30E60();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC790) + 36));
  v8->n128_u64[0] = 0x4028000000000000;
  v8->n128_u64[1] = v7;
  __asm { FMOV            V0.2D, #16.0 }

  v8[1] = result;
  return result;
}

void *sub_1A389D0B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC748);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v61 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC750);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - v11;
  v73 = sub_1A3A2FEE0();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(a1 + 40);
  v82 = v88;
  sub_1A389FDCC(&v88, &v79);
  MEMORY[0x1A58F7770](32, 0xE100000000000000);
  MEMORY[0x1A58F7770](*(a1 + 24), *(a1 + 32));
  MEMORY[0x1A58F7770](8250, 0xE200000000000000);
  v86 = *a1;
  v87 = *(a1 + 16);
  v79 = *a1;
  v80 = *(a1 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC758);
  result = MEMORY[0x1A58F7010](&v84);
  if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v84 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v84 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v69 = v3;
  v78 = v12;
  *&v79 = v84;
  v16 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v16);

  v76 = sub_1A3A30880();
  v75 = v17;
  v68 = v18;
  v77 = v19;

  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;
  sub_1A3A31F20();

  *&v79 = 0xD000000000000016;
  *(&v79 + 1) = 0x80000001A3AA1CB0;
  v85 = *(a1 + 88);
  v20 = *(a1 + 80);
  v84 = v20;
  v21 = v85;
  if (v85 == 1)
  {
    v22 = v20;
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v23 = sub_1A3A305C0();
    sub_1A3A2F270();

    v24 = v71;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v84, &qword_1EB0FC680);
    result = (*(v72 + 8))(v24, v73);
    v22 = *&v82;
  }

  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v67 = v5;
  v64 = v10;
  v65 = v7;
  v66 = v6;
  *&v82 = v22;
  v25 = sub_1A3A321A0();
  MEMORY[0x1A58F7770](v25);

  sub_1A3A307A0();
  v26 = sub_1A3A308A0();
  v28 = v27;
  v30 = v29;

  v74 = sub_1A3A30880();
  v63 = v31;
  v62 = v32;
  v34 = v33;
  sub_1A389F1B4(v26, v28, v30 & 1);

  v79 = v86;
  v80 = v87;
  result = sub_1A3A311B0();
  v79 = v82;
  v80 = v83;
  if (v21)
  {
    v35 = v20;
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v36 = sub_1A3A305C0();
    sub_1A3A2F270();

    v37 = v71;
    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v84, &qword_1EB0FC680);
    result = (*(v72 + 8))(v37, v73);
    v35 = *&v82;
  }

  v38 = v67;
  v39 = v69;
  if (v35 >= 0.0)
  {
    *(&v82 + 1) = v35;
    v81 = 0x3FF0000000000000;
    *&v82 = 0;
    sub_1A389FE28();
    sub_1A3A310B0();
    v40 = sub_1A3A30600();
    v41 = v38 + *(v39 + 36);
    *v41 = v40;
    *(v41 + 8) = 0u;
    *(v41 + 24) = 0u;
    *(v41 + 40) = 1;
    v79 = v86;
    v80 = v87;
    MEMORY[0x1A58F7010](&v82, v14);
    v42 = swift_allocObject();
    v43 = *(a1 + 48);
    v42[3] = *(a1 + 32);
    v42[4] = v43;
    v42[5] = *(a1 + 64);
    *(v42 + 89) = *(a1 + 73);
    v44 = *(a1 + 16);
    v42[1] = *a1;
    v42[2] = v44;
    sub_1A389F338(a1, &v79);
    sub_1A389FEE0();
    sub_1A389EEE0();
    v45 = v78;
    sub_1A3A30CA0();

    sub_1A388F740(v38, &qword_1EB0FC748);
    v46 = v68 & 1;
    LOBYTE(v79) = v68 & 1;
    v47 = v65;
    v48 = *(v65 + 16);
    v49 = v64;
    v50 = v66;
    v48(v64, v45, v66);
    v51 = v70;
    v52 = v34;
    v61 = v34;
    v53 = v75;
    *v70 = v76;
    v51[1] = v53;
    *(v51 + 16) = v46;
    v54 = v74;
    v51[3] = v77;
    v51[4] = v54;
    v55 = v63;
    v51[5] = v63;
    v56 = v62 & 1;
    *(v51 + 48) = v62 & 1;
    v51[7] = v52;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC780);
    v48(v51 + *(v57 + 64), v49, v50);
    v58 = v76;
    sub_1A389F1A4(v76, v53, v46);
    sub_1A3A2EA50();
    v59 = v74;
    sub_1A389F1A4(v74, v55, v56);
    v60 = *(v47 + 8);
    sub_1A3A2EA50();
    v60(v78, v50);
    v60(v49, v50);
    sub_1A389F1B4(v59, v55, v56);

    sub_1A389F1B4(v58, v75, v79);
  }

LABEL_21:
  __break(1u);
  return result;
}

__n128 sub_1A389DA24@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v16 = v1[2];
  v17 = v3;
  v18[0] = v1[4];
  *(v18 + 9) = *(v1 + 73);
  v4 = v1[1];
  v14 = *v1;
  v15 = v4;
  *a1 = sub_1A3A300B0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC738);
  sub_1A389D0B4(&v14, (a1 + *(v5 + 44)));
  v6 = [objc_opt_self() secondarySystemBackgroundColor];
  v7 = sub_1A3A30E60();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC740) + 36));
  v8->n128_u64[0] = 0x4028000000000000;
  v8->n128_u64[1] = v7;
  __asm { FMOV            V0.2D, #16.0 }

  v8[1] = result;
  return result;
}

__n128 sub_1A389DAF4@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC6B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC6C0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - v8;
  v11 = *v1;
  v10 = *(v1 + 8);
  v12 = *(v1 + 16);
  *v5 = sub_1A3A300B0();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC6C8);
  sub_1A389DD18(v11, v10, v12, &v5[*(v13 + 44)]);
  sub_1A3A31480();
  sub_1A3A2FBF0();
  sub_1A388F670(v5, v9, &qword_1EB0FC6B8);
  v14 = &v9[*(v7 + 44)];
  v15 = v26[5];
  *(v14 + 4) = v26[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v26[6];
  v16 = v26[1];
  *v14 = v26[0];
  *(v14 + 1) = v16;
  v17 = v26[3];
  *(v14 + 2) = v26[2];
  *(v14 + 3) = v17;
  v18 = [objc_opt_self() secondarySystemBackgroundColor];
  v19 = sub_1A3A30E60();
  sub_1A388F670(v9, a1, &qword_1EB0FC6C0);
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC6D0) + 36));
  v20->n128_u64[0] = 0x4028000000000000;
  v20->n128_u64[1] = v19;
  __asm { FMOV            V0.2D, #16.0 }

  v20[1] = result;
  return result;
}

uint64_t sub_1A389DD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1A3A30070();
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC6D8);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC6E0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v31 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  v39 = a1;
  v40 = a2;
  v30 = 0x80000001A3AA1BF0;
  v41 = a3;
  v36 = a1;
  v37 = a2;
  v38 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC6E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC6F0);
  sub_1A38A08F8(&qword_1EB0FC6F8, &qword_1EB0FC6E8);
  sub_1A389FC0C();
  sub_1A3A30800();
  sub_1A3A30060();
  sub_1A38A08F8(&qword_1EB0FC708, &qword_1EB0FC6D8);
  sub_1A389FBA0(&qword_1EB0FC610, MEMORY[0x1E697C540]);
  v22 = v32;
  v23 = v34;
  sub_1A3A30960();
  (*(v35 + 8))(v11, v23);
  (*(v33 + 8))(v15, v22);
  v24 = *(v17 + 16);
  v25 = v31;
  v24(v31, v21, v16);
  v26 = v30;
  *a4 = 0xD000000000000012;
  *(a4 + 8) = v26;
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x1E69E7CC0];
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC710);
  v24((a4 + *(v27 + 64)), v25, v16);
  sub_1A389F1A4(0xD000000000000012, v26, 0);
  v28 = *(v17 + 8);
  sub_1A3A2EA50();
  v28(v21, v16);
  v28(v25, v16);
  sub_1A389F1B4(0xD000000000000012, v26, 0);
}

uint64_t sub_1A389E184(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC5F8);
  sub_1A38A08F8(&qword_1EB0FC728, &qword_1EB0FC720);
  sub_1A389FCC8();
  sub_1A38A08F8(&qword_1EB0FC608, &qword_1EB0FC5F8);
  return sub_1A3A31200();
}

uint64_t sub_1A389E2FC(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 33) = v4;
  sub_1A389FD78();
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  return sub_1A3A31000();
}

uint64_t sub_1A389E404()
{
  sub_1A3A2EA60();
  sub_1A3A2EA60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC718);
  sub_1A3A311A0();
}

__n128 sub_1A389E478@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1A3A2FF40();
  sub_1A389E504(&v6);
  v3 = v7;
  result = v6;
  v5 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v5;
  return result;
}

uint64_t sub_1A389E504@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC718);
  MEMORY[0x1A58F7010](&v10, v2);
  v3 = "chevron.up.chevron.down";
  v4 = 0xD00000000000001CLL;
  if (v10 != 1)
  {
    v4 = 0xD000000000000025;
    v3 = "Vertical Alignment";
  }

  if (v10)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v10)
  {
    v6 = v3;
  }

  else
  {
    v6 = "Centered within Inset Height";
  }

  v7 = v6 | 0x8000000000000000;
  v8 = sub_1A3A30EB0();
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = v8;
  sub_1A389F1A4(v5, v7, 0);
  sub_1A3A2EA50();
  sub_1A389F1B4(v5, v7, 0);
}

uint64_t sub_1A389E618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = sub_1A3A30610();
  sub_1A3A2F520();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC868);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC870) + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  v18 = sub_1A3A30610();
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC878) + 36);
  *v19 = v6;
  *(v19 + 8) = v18;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC880) + 36));
  v21 = *(sub_1A3A2FBC0() + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1A3A30000();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  *v20 = v5;
  *(v20 + 1) = v5;
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC888) + 36)] = 256;
  sub_1A3A2EA60();
  LOBYTE(v22) = sub_1A3A30600();
  sub_1A3A2F520();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC890);
  v33 = a2 + *(result + 36);
  *v33 = v22;
  *(v33 + 8) = v25;
  *(v33 + 16) = v27;
  *(v33 + 24) = v29;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_1A389E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A389EEE0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A389E88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A389FBA0(&qword_1ED9966B0, type metadata accessor for CGSize);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

id sub_1A389E924()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    v2 = MobileGestalt_copy_deviceClass_obj();

    if (v2)
    {
      v3 = sub_1A3A31850();
      v5 = v4;

      if (v3 == 0x656E6F685069 && v5 == 0xE600000000000000 || (sub_1A3A321C0() & 1) != 0)
      {
        result = MobileGestalt_get_current_device();
        if (result)
        {
          v6 = result;

          pearlIDCapability = MobileGestalt_get_pearlIDCapability();

          return pearlIDCapability;
        }

        goto LABEL_11;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1A389EA48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A389EA90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1A389EB28@<Q0>(uint64_t a1@<X8>)
{
  sub_1A3899614(v8);
  v2 = v8[11];
  *(a1 + 160) = v8[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v8[12];
  v3 = v8[7];
  *(a1 + 96) = v8[6];
  *(a1 + 112) = v3;
  v4 = v8[9];
  *(a1 + 128) = v8[8];
  *(a1 + 144) = v4;
  v5 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v5;
  v6 = v8[5];
  *(a1 + 64) = v8[4];
  *(a1 + 80) = v6;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1A389EBCC@<Q0>(uint64_t a1@<X8>)
{
  sub_1A3899834(v8);
  v2 = v8[11];
  *(a1 + 160) = v8[10];
  *(a1 + 176) = v2;
  *(a1 + 192) = v8[12];
  v3 = v8[7];
  *(a1 + 96) = v8[6];
  *(a1 + 112) = v3;
  v4 = v8[9];
  *(a1 + 128) = v8[8];
  *(a1 + 144) = v4;
  v5 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v5;
  v6 = v8[5];
  *(a1 + 64) = v8[4];
  *(a1 + 80) = v6;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A389ECB8()
{
  result = qword_1EB0FC508;
  if (!qword_1EB0FC508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC4B8);
    sub_1A389ED44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC508);
  }

  return result;
}

unint64_t sub_1A389ED44()
{
  result = qword_1EB0FC510;
  if (!qword_1EB0FC510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC500);
    sub_1A389EDFC();
    sub_1A38A08F8(&qword_1EB0FC538, &qword_1EB0FC540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC510);
  }

  return result;
}

unint64_t sub_1A389EDFC()
{
  result = qword_1EB0FC518;
  if (!qword_1EB0FC518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC4E0);
    sub_1A38A08F8(&qword_1EB0FC520, &qword_1EB0FC528);
    sub_1A38A08F8(&qword_1EB0FC530, &qword_1EB0FC4E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC518);
  }

  return result;
}

unint64_t sub_1A389EEE0()
{
  result = qword_1EB0FC548;
  if (!qword_1EB0FC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC548);
  }

  return result;
}

unint64_t sub_1A389EF34()
{
  result = qword_1EB0FC550;
  if (!qword_1EB0FC550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC4D0);
    sub_1A389EFEC();
    sub_1A38A08F8(&qword_1EB0FC570, &qword_1EB0FC578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC550);
  }

  return result;
}

unint64_t sub_1A389EFEC()
{
  result = qword_1EB0FC558;
  if (!qword_1EB0FC558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC4C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC4B8);
    sub_1A389ECB8();
    sub_1A389EEE0();
    swift_getOpaqueTypeConformance2();
    sub_1A38A08F8(&qword_1EB0FC560, &qword_1EB0FC568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC558);
  }

  return result;
}

unint64_t sub_1A389F0FC()
{
  result = qword_1EB0FC580;
  if (!qword_1EB0FC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC580);
  }

  return result;
}

unint64_t sub_1A389F150()
{
  result = qword_1EB0FC588;
  if (!qword_1EB0FC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC588);
  }

  return result;
}

uint64_t sub_1A389F1A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1A3A2EA60();
  }

  else
  {
    return sub_1A3A2EA50();
  }
}

uint64_t sub_1A389F1B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1A389F1C4()
{
  result = qword_1EB0FC5A0;
  if (!qword_1EB0FC5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC5A0);
  }

  return result;
}

uint64_t sub_1A389F218(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1A3890B88(a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1A389F23C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1A3890B50(a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1A389F268(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1A3A2EA60();
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  sub_1A3670FF4(*(v0 + 152), *(v0 + 160));

  return swift_deallocObject();
}

unint64_t sub_1A389F3D0()
{
  result = qword_1EB0FC630;
  if (!qword_1EB0FC630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC628);
    sub_1A389F488();
    sub_1A38A08F8(&qword_1ED9966A8, &qword_1EB0FC678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC630);
  }

  return result;
}

unint64_t sub_1A389F488()
{
  result = qword_1EB0FC638;
  if (!qword_1EB0FC638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC640);
    sub_1A389F514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC638);
  }

  return result;
}

unint64_t sub_1A389F514()
{
  result = qword_1EB0FC648;
  if (!qword_1EB0FC648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC650);
    sub_1A389F5A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC648);
  }

  return result;
}

unint64_t sub_1A389F5A0()
{
  result = qword_1EB0FC658;
  if (!qword_1EB0FC658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC660);
    sub_1A38A08F8(&qword_1EB0FC668, &qword_1EB0FC670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC658);
  }

  return result;
}

uint64_t sub_1A389F650(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A389F1A4(a1, a2, a3 & 1);

  return sub_1A3A2EA50();
}

uint64_t sub_1A389F68C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A389F1B4(a1, a2, a3 & 1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A389F70C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A389F754(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1A389F7D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A389F81C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A389F8A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A389F8F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A389F970(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A389F9B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1A389FA2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1A389FA74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1A389FBA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A389FC0C()
{
  result = qword_1EB0FC700;
  if (!qword_1EB0FC700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC6F0);
    sub_1A38A08F8(&qword_1EB0FC608, &qword_1EB0FC5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC700);
  }

  return result;
}

unint64_t sub_1A389FCC8()
{
  result = qword_1EB0FC730;
  if (!qword_1EB0FC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC730);
  }

  return result;
}

uint64_t objectdestroy_69Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1A389FD78()
{
  result = qword_1ED9966B8;
  if (!qword_1ED9966B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9966B8);
  }

  return result;
}

unint64_t sub_1A389FE28()
{
  result = qword_1EB0FC760;
  if (!qword_1EB0FC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC760);
  }

  return result;
}

unint64_t sub_1A389FEE0()
{
  result = qword_1EB0FC768;
  if (!qword_1EB0FC768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC748);
    sub_1A38A08F8(&qword_1EB0FC770, &qword_1EB0FC778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC768);
  }

  return result;
}

uint64_t sub_1A389FF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A38A0008(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A38A0050(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A38A00A0()
{
  result = qword_1EB0FC7C8;
  if (!qword_1EB0FC7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC6D0);
    sub_1A38A012C();
    sub_1A38A01E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC7C8);
  }

  return result;
}

unint64_t sub_1A38A012C()
{
  result = qword_1EB0FC7D0;
  if (!qword_1EB0FC7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC6C0);
    sub_1A38A08F8(&qword_1EB0FC7D8, &qword_1EB0FC6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC7D0);
  }

  return result;
}

unint64_t sub_1A38A01E4()
{
  result = qword_1EB0FC7E0;
  if (!qword_1EB0FC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC7E0);
  }

  return result;
}

unint64_t sub_1A38A0238()
{
  result = qword_1EB0FC7E8;
  if (!qword_1EB0FC7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC740);
    sub_1A38A08F8(&qword_1EB0FC7F0, &qword_1EB0FC7F8);
    sub_1A38A01E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC7E8);
  }

  return result;
}

unint64_t sub_1A38A02F0()
{
  result = qword_1EB0FC800;
  if (!qword_1EB0FC800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC790);
    sub_1A38A08F8(&qword_1EB0FC808, &qword_1EB0FC810);
    sub_1A38A01E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC800);
  }

  return result;
}

unint64_t sub_1A38A03A8()
{
  result = qword_1EB0FC818;
  if (!qword_1EB0FC818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC820);
    sub_1A38A0460();
    sub_1A38A08F8(&qword_1EB0FC840, &qword_1EB0FC7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC818);
  }

  return result;
}

unint64_t sub_1A38A0460()
{
  result = qword_1EB0FC828;
  if (!qword_1EB0FC828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC7B8);
    sub_1A38A04EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC828);
  }

  return result;
}

unint64_t sub_1A38A04EC()
{
  result = qword_1EB0FC830;
  if (!qword_1EB0FC830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC830);
  }

  return result;
}

unint64_t sub_1A38A0570()
{
  result = qword_1EB0FC848;
  if (!qword_1EB0FC848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC850);
    sub_1A38A08F8(&qword_1EB0FC858, &qword_1EB0FC860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC848);
  }

  return result;
}

unint64_t sub_1A38A0644()
{
  result = qword_1EB0FC898;
  if (!qword_1EB0FC898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC890);
    sub_1A38A06D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC898);
  }

  return result;
}

unint64_t sub_1A38A06D0()
{
  result = qword_1EB0FC8A0;
  if (!qword_1EB0FC8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC880);
    sub_1A38A0788();
    sub_1A38A08F8(&qword_1EB0FC8D0, &qword_1EB0FC888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC8A0);
  }

  return result;
}

unint64_t sub_1A38A0788()
{
  result = qword_1EB0FC8A8;
  if (!qword_1EB0FC8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC878);
    sub_1A38A0840();
    sub_1A38A08F8(&qword_1EB0FC8C0, &qword_1EB0FC8C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC8A8);
  }

  return result;
}

unint64_t sub_1A38A0840()
{
  result = qword_1EB0FC8B0;
  if (!qword_1EB0FC8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC870);
    sub_1A38A08F8(&qword_1EB0FC8B8, &qword_1EB0FC868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC8B0);
  }

  return result;
}

uint64_t sub_1A38A08F8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A38A096C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
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

uint64_t sub_1A38A09B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A38A0A28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v2 + 32);
  v35 = *(v2 + 24);
  v8 = v35;
  v9 = v36;
  sub_1A3A2EA60();
  v10 = v8;
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v35, &qword_1EB0FC3C0);
    (*(v5 + 8))(v7, v4);
    v10 = v33;
  }

  v12 = sub_1A395BFFC(v10, 9);
  v14 = v13;

  v30 = sub_1A3A30DB0();
  if (v9)
  {
    v32 = v8;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v15 = v4;
    v16 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v35, &qword_1EB0FC3C0);
    (*(v5 + 8))(v7, v15);
    v8 = v32;
  }

  swift_getKeyPath();
  v33 = v8;
  sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v17 = *(v8 + 424);
  v18 = *(v8 + 432);

  v33 = *(v2 + 8);
  v34 = *(v2 + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = v12;
  v20 = *(v2 + 16);
  *(v19 + 24) = *v2;
  *(v19 + 40) = v20;
  *(v19 + 56) = *(v2 + 32);
  v21 = swift_allocObject();
  v22 = *(v2 + 16);
  *(v21 + 24) = *v2;
  *(v21 + 16) = v14;
  *(v21 + 40) = v22;
  *(v21 + 56) = *(v2 + 32);
  v31[0] = 1;
  v31[32] = 1;
  v31[24] = 1;
  v31[16] = 1;
  v27 = 1;
  v28 = 1;
  v29 = 1;
  sub_1A388F6D8(&v35, v31, &qword_1EB0FC3C0);
  sub_1A388F6D8(&v33, v31, &qword_1EB0FC8D8);
  sub_1A388F6D8(&v35, v31, &qword_1EB0FC3C0);
  sub_1A388F6D8(&v33, v31, &qword_1EB0FC8D8);
  sub_1A3A2EA50();
  sub_1A3A2EA50();
  v23 = sub_1A3A314E0();
  result = sub_1A3A314E0();
  *a1 = v30;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  v25 = v28;
  *(a1 + 48) = v27;
  *(a1 + 56) = 0;
  *(a1 + 64) = v25;
  *(a1 + 72) = 0;
  *(a1 + 80) = v29;
  *(a1 + 81) = 512;
  *(a1 + 88) = sub_1A38A8A6C;
  *(a1 + 96) = v19;
  *(a1 + 104) = sub_1A38A8AC4;
  *(a1 + 112) = v21;
  *(a1 + 120) = v23;
  *(a1 + 128) = v12;
  *(a1 + 136) = result;
  *(a1 + 144) = v14;
  return result;
}

uint64_t sub_1A38A0E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1A3A2FF40();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCBC8);
  return sub_1A38A0EEC(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_1A38A0EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A3A2FEE0();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 8);
  v28 = *(a2 + 16);
  v26 = *(a2 + 32);
  v9 = *(a2 + 24);
  v24[2] = a1;
  v25 = v9;
  v10 = v26;
  v11 = swift_allocObject();
  v12 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a2 + 32);
  sub_1A3A2EA50();
  sub_1A388F6D8(&v27, v24, &qword_1EB0FC8D8);
  sub_1A388F6D8(&v25, v24, &qword_1EB0FC3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8F0);
  sub_1A38A08F8(&qword_1ED9966C0, &qword_1EB0FC8E8);
  sub_1A38A8AD0();
  sub_1A38A8EFC();
  sub_1A3A31210();
  v13 = sub_1A3A314E0();
  sub_1A3A2EA60();
  v14 = v9;
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v25, &qword_1EB0FC3C0);
    (*(v23 + 8))(v8, v6);
    v14 = v24[0];
  }

  swift_getKeyPath();
  v24[0] = v14;
  sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v16 = *(v14 + 712);

  v17 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCBD0) + 36));
  *v17 = v13;
  v17[1] = v16;
  v18 = sub_1A3A314E0();
  sub_1A3A2EA60();
  if ((v10 & 1) == 0)
  {
    sub_1A3A31C30();
    v19 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v25, &qword_1EB0FC3C0);
    (*(v23 + 8))(v8, v6);
    v9 = v24[0];
  }

  swift_getKeyPath();
  v24[0] = v9;
  sub_1A3A2F080();

  v20 = *(v9 + 672);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCBD8);
  v22 = (a3 + *(result + 36));
  *v22 = v18;
  v22[1] = v20;
  return result;
}

uint64_t sub_1A38A1350@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v66 = sub_1A3A2FEE0();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3A2FB90();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC940);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC928);
  MEMORY[0x1EEE9AC00](v67);
  v14 = &v63 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC918);
  v15 = MEMORY[0x1EEE9AC00](v70);
  v68 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v69 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v63 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC908);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v63 - v20;
  v82 = *(v2 + 8);
  v83 = *(v2 + 16);
  v80 = *(v2 + 24);
  v81 = *(v2 + 32);
  v21 = swift_allocObject();
  v22 = *(v2 + 16);
  *(v21 + 16) = *v2;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(v2 + 32);
  *(v21 + 56) = a1;
  v75 = v2;
  v76 = a1;
  sub_1A388F6D8(&v82, v79, &qword_1EB0FC8D8);
  sub_1A388F6D8(&v80, v79, &qword_1EB0FC3C0);
  sub_1A38A8F64(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC958);
  sub_1A38A8F74();
  sub_1A3A30FE0();
  sub_1A3A2FB80();
  sub_1A38A08F8(&qword_1EB0FC948, &qword_1EB0FC940);
  sub_1A38AAA7C(&qword_1ED9966C8, MEMORY[0x1E697C248]);
  sub_1A3A30960();
  v23 = v5;
  v24 = a1;
  (*(v6 + 8))(v8, v23);
  v25 = v9;
  v26 = v67;
  (*(v10 + 8))(v12, v25);
  v61 = sub_1A3A31480();
  v62 = v27;
  v60 = 1;
  v59 = 0;
  sub_1A3A2FBF0();
  v28 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC938) + 36)];
  v29 = v79[5];
  *(v28 + 4) = v79[4];
  *(v28 + 5) = v29;
  *(v28 + 6) = v79[6];
  v30 = v79[1];
  *v28 = v79[0];
  *(v28 + 1) = v30;
  v31 = v79[3];
  *(v28 + 2) = v79[2];
  *(v28 + 3) = v31;
  v14[*(v26 + 36)] = 0;
  if (a1 == 15)
  {
    v32 = 0xE90000000000006FLL;
    v33 = 0x7263614D6F747541;
  }

  else if (a1 == 16)
  {
    v32 = 0x80000001A3AA1CD0;
    v33 = 0xD000000000000015;
  }

  else
  {
    v77 = sub_1A39FDA64(a1);
    v78 = v34;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](0x6E6F74747542, 0xE600000000000000);

    v33 = v77;
    v32 = v78;
  }

  v35 = v80;
  LODWORD(v70) = v81;
  v77 = 0x2E73726145706F54;
  v78 = 0xE800000000000000;
  MEMORY[0x1A58F7770](v33, v32);

  sub_1A38A8CA4();
  v36 = v68;
  sub_1A3A30B70();

  sub_1A388F740(v14, &qword_1EB0FC928);
  v77 = sub_1A39FCA4C(v24);
  v78 = v37;
  sub_1A389FD78();
  v38 = v69;
  sub_1A3A2FA10();

  sub_1A388F740(v36, &qword_1EB0FC918);
  v77 = sub_1A38A9DC8(v24, v35, v70);
  v78 = v39;
  sub_1A3A2FA20();

  v40 = sub_1A388F740(v38, &qword_1EB0FC918);
  v77 = v24;
  MEMORY[0x1EEE9AC00](v40);
  v61 = &v77;
  v41 = sub_1A38EDEDC(sub_1A38AA264, &v59, &unk_1F16542C0);
  swift_arrayDestroy();
  v42 = 1;
  if (v41)
  {
    v42 = v82;
    if (v83 != 1)
    {
      sub_1A3A2EA60();
      sub_1A3A31C30();
      v43 = sub_1A3A305C0();
      sub_1A3A2F270();

      v44 = v64;
      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A388F740(&v82, &qword_1EB0FC8D8);
      (*(v65 + 8))(v44, v66);
      v42 = v77;
    }
  }

  v45 = v72;
  v46 = sub_1A388F670(v74, v72, &qword_1EB0FC918);
  *(v45 + *(v71 + 36)) = v42 & 1;
  v77 = v24;
  MEMORY[0x1EEE9AC00](v46);
  v61 = &v77;
  v47 = sub_1A38EDEDC(sub_1A38AB6D4, &v59, &unk_1F16542F0);
  swift_arrayDestroy();
  if (v47)
  {
    v48 = 3;
  }

  else
  {
    v48 = 1;
  }

  sub_1A3A31590();
  v50 = v49;
  v52 = v51;
  type metadata accessor for ChromeViewModel();
  sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v53 = sub_1A3A2F650();
  v55 = v54;
  v56 = v73;
  sub_1A388F670(v45, v73, &qword_1EB0FC908);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8F0);
  v58 = v56 + *(result + 36);
  *v58 = v48;
  *(v58 + 8) = v50;
  *(v58 + 16) = v52;
  *(v58 + 24) = 1;
  *(v58 + 32) = v53;
  *(v58 + 40) = v55 & 1;
  return result;
}

uint64_t sub_1A38A1DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1A3A2FF40();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E0);
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v6 = *(a2 + 24);
  v11 = a1;
  v12 = v6;
  v13 = *(a2 + 32);
  v7 = swift_allocObject();
  v8 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a2 + 32);
  sub_1A3A2EA50();
  sub_1A388F6D8(&v14, v10, &qword_1EB0FC8D8);
  sub_1A388F6D8(&v12, v10, &qword_1EB0FC3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8F0);
  sub_1A38A08F8(&qword_1ED9966C0, &qword_1EB0FC8E8);
  sub_1A38A8AD0();
  sub_1A38A8EFC();
  return sub_1A3A31210();
}

uint64_t sub_1A38A1F54()
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();
}

void sub_1A38A1FC0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A3A2FEE0();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 32);
  v30 = *(a1 + 24);
  v10 = v30;
  v11 = v31;
  sub_1A3A2EA60();
  v12 = v10;
  if ((v11 & 1) == 0)
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v30, &qword_1EB0FC3C0);
    (*(v29 + 8))(v6, v4);
    v12 = v32;
  }

  v28 = v4;
  swift_getKeyPath();
  v32 = v12;
  sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (v12[149])
  {
    sub_1A3A2EA60();
    v14 = sub_1A38BC058(a2);

    (*(v14 + 56))(v15);

    v16 = *&v9[*(v7 + 44)];
    sub_1A3A2EA60();
    sub_1A3890834(v9);
    v17 = v16(9, 0);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    LODWORD(v16) = v22;

    if (v16 <= 0xFB)
    {
      sub_1A3A2EA60();
      if ((v11 & 1) == 0)
      {
        sub_1A3A31C30();
        v24 = sub_1A3A305C0();
        sub_1A3A2F270();

        sub_1A3A2FED0();
        swift_getAtKeyPath();
        sub_1A388F740(&v30, &qword_1EB0FC3C0);
        (*(v29 + 8))(v6, v28);
        v10 = v32;
      }

      v25 = v10[153];
      v26 = v10[154];
      __swift_project_boxed_opaque_existential_1(v10 + 150, v25);
      (*(v26 + 8))(v17, v19, v21, v23, v10, v25, v26);

      sub_1A3890EA8(v17, v19, v21, v23);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A38A2390@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2FF20();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  sub_1A38A2520(a1, a2);
  sub_1A3A2FF10();
  (*(v5 + 16))(v8, v10, v4);
  sub_1A38AAA7C(&qword_1ED996708, MEMORY[0x1E697F260]);
  v11 = sub_1A3A2F7F0();
  (*(v5 + 8))(v10, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC958);
  *(a2 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_1A38A2520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v268 = a1;
  v267 = a2;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCAC0);
  MEMORY[0x1EEE9AC00](v233);
  v235 = v213 - v2;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCAB8);
  MEMORY[0x1EEE9AC00](v261);
  v237 = v213 - v3;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCAC8);
  v221 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v219 = v213 - v4;
  v262 = type metadata accessor for ChromeElementIcon();
  MEMORY[0x1EEE9AC00](v262);
  v218 = (v213 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCAA0);
  MEMORY[0x1EEE9AC00](v244);
  v220 = v213 - v6;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCAD0);
  v224 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v238 = v213 - v7;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCAD8);
  MEMORY[0x1EEE9AC00](v257);
  v259 = v213 - v8;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCAE0);
  MEMORY[0x1EEE9AC00](v240);
  v241 = v213 - v9;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCA58);
  MEMORY[0x1EEE9AC00](v258);
  v245 = v213 - v10;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCA48);
  MEMORY[0x1EEE9AC00](v266);
  v260 = v213 - v11;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCAE8);
  v223 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v234 = v213 - v12;
  v13 = sub_1A3A2F1E0();
  v230 = *(v13 - 8);
  v231 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v229 = (v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCAF0);
  v216 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v232 = v213 - v15;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCAF8);
  MEMORY[0x1EEE9AC00](v239);
  v248 = v213 - v16;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCA00);
  MEMORY[0x1EEE9AC00](v256);
  v242 = v213 - v17;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB00);
  MEMORY[0x1EEE9AC00](v217);
  v222 = v213 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB08);
  v215 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v213 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCA10);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v213 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB10);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v213 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB18);
  v214 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v213 - v29;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC9C8);
  MEMORY[0x1EEE9AC00](v228);
  v32 = v213 - v31;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB20);
  MEMORY[0x1EEE9AC00](v263);
  v265 = v213 - v33;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB28);
  MEMORY[0x1EEE9AC00](v252);
  v254 = v213 - v34;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB30);
  MEMORY[0x1EEE9AC00](v225);
  v226 = v213 - v35;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC990);
  MEMORY[0x1EEE9AC00](v253);
  v227 = v213 - v36;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC980);
  MEMORY[0x1EEE9AC00](v264);
  v255 = v213 - v37;
  v38 = sub_1A3A2FEE0();
  v250 = *(v38 - 8);
  v251 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v249 = v213 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB38);
  v41 = MEMORY[0x1EEE9AC00](v40);
  if (v268 <= 20)
  {
    v240 = v21;
    v241 = v25;
    v238 = v30;
    v247 = v24;
    v243 = v27;
    v244 = v28;
    v213[1] = v22;
    v245 = v32;
    if (v268 != 2)
    {
      if (v268 != 5)
      {
        v58 = v248;
        if (v268 == 6)
        {
          v60 = v229;
          v59 = v230;
          *v229 = 0x662E6172656D6163;
          v60[1] = 0xEE00737265746C69;
          v61 = v231;
          (*(v59 + 104))(v60, *MEMORY[0x1E69C1D38], v231);
          v62 = sub_1A3A2F200();
          v63 = (*(v59 + 8))(v60, v61);
          *&v271[0] = v62;
          MEMORY[0x1EEE9AC00](v63);
          v213[-2] = 6;
          v213[-1] = v269;
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCA28);
          v65 = sub_1A38A97A8();
          v66 = sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
          v67 = v232;
          v68 = v262;
          sub_1A3A30BD0();

          v69 = v216;
          v70 = v67;
          v71 = v246;
          (*(v216 + 16))(v58, v70, v246);
          swift_storeEnumTagMultiPayload();
          sub_1A38A965C();
          *&v271[0] = v64;
          *(&v271[0] + 1) = v68;
          *&v271[1] = v65;
          *(&v271[1] + 1) = v66;
          swift_getOpaqueTypeConformance2();
          v72 = v242;
          sub_1A3A301F0();
          sub_1A388F6D8(v72, v254, &qword_1EB0FCA00);
          swift_storeEnumTagMultiPayload();
          sub_1A38A9144();
          sub_1A38A953C();
          v73 = v255;
          sub_1A3A301F0();
          sub_1A388F740(v72, &qword_1EB0FCA00);
          sub_1A388F6D8(v73, v265, &qword_1EB0FC980);
          swift_storeEnumTagMultiPayload();
          sub_1A38A90B8();
          sub_1A38A9888();
          sub_1A3A301F0();
          sub_1A388F740(v73, &qword_1EB0FC980);
          return (*(v69 + 8))(v232, v71);
        }

        goto LABEL_21;
      }

      if (qword_1EB0FC150 != -1)
      {
        swift_once();
      }

      v281 = *(v269 + 32);
      v119 = *(v269 + 24);
      v280 = v119;
      v120 = v281;
      v121 = qword_1EB101AD8;
      sub_1A388F6D8(&v280, v271, &qword_1EB0FC3C0);
      if (v120 != 1)
      {
        sub_1A3A31C30();
        v158 = sub_1A3A305C0();
        sub_1A3A2F270();

        v159 = v249;
        sub_1A3A2FED0();
        swift_getAtKeyPath();
        sub_1A388F740(&v280, &qword_1EB0FC3C0);
        (*(v250 + 8))(v159, v251);
        v119 = *&v271[0];
      }

      swift_getKeyPath();
      *&v271[0] = v119;
      sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v160 = *(v119 + 672);

      v161 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v162 = [v121 stringFromNumber_];

      if (v162)
      {
        v163 = sub_1A3A31850();
        v165 = v164;

        v166 = sub_1A3A2FF40();
        LOBYTE(v272) = 0;
        v167 = v269;
        sub_1A38A763C(v163, v165, v269, v271);
        v275[4] = v271[4];
        v275[5] = v271[5];
        *&v275[6] = *&v271[6];
        v275[0] = v271[0];
        v275[1] = v271[1];
        v275[3] = v271[3];
        v275[2] = v271[2];
        v276[1] = v271[1];
        v276[0] = v271[0];
        v276[2] = v271[2];
        v276[3] = v271[3];
        v276[4] = v271[4];
        v276[5] = v271[5];
        *&v276[6] = *&v271[6];
        sub_1A388F6D8(v275, v270, &qword_1EB0FCB40);
        sub_1A388F740(v276, &qword_1EB0FCB40);

        v268 = v213;
        *(&v278[3] + 7) = v275[3];
        *(&v278[4] + 7) = v275[4];
        *(&v278[5] + 7) = v275[5];
        *(v278 + 7) = v275[0];
        *(&v278[1] + 7) = v275[1];
        *(&v278[6] + 7) = *&v275[6];
        *(&v278[2] + 7) = v275[2];
        *&v270[0] = v166;
        *(&v270[0] + 1) = 0x3FF0000000000000;
        LOBYTE(v270[1]) = v272;
        *(&v270[4] + 1) = v278[3];
        *(&v270[5] + 1) = v278[4];
        *(&v270[6] + 1) = v278[5];
        v270[7] = *(&v278[5] + 15);
        *(&v270[1] + 1) = v278[0];
        *(&v270[2] + 1) = v278[1];
        *(&v270[3] + 1) = v278[2];
        MEMORY[0x1EEE9AC00](v168);
        v213[-2] = 5;
        v213[-1] = v167;
        v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCA18);
        v170 = sub_1A38A08F8(&qword_1EB0FCA20, &qword_1EB0FCA18);
        v171 = sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
        v172 = v19;
        v173 = v240;
        v174 = v262;
        sub_1A3A30BD0();
        v271[4] = v270[4];
        v271[5] = v270[5];
        v271[6] = v270[6];
        v271[7] = v270[7];
        v271[0] = v270[0];
        v271[1] = v270[1];
        v271[2] = v270[2];
        v271[3] = v270[3];
        sub_1A388F740(v271, &qword_1EB0FCA18);
        v175 = v215;
        (*(v215 + 16))(v222, v173, v172);
        swift_storeEnumTagMultiPayload();
        *&v270[0] = v169;
        *(&v270[0] + 1) = v174;
        *&v270[1] = v170;
        *(&v270[1] + 1) = v171;
        swift_getOpaqueTypeConformance2();
        v176 = v172;
        v177 = v247;
        sub_1A3A301F0();
        (*(v175 + 8))(v173, v176);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v178 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA18);
        v179 = sub_1A38A08F8(&qword_1EB0FCA20, &qword_1EB0FCA18);
        v180 = sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
        *&v271[0] = v178;
        v174 = v262;
        *(&v271[0] + 1) = v262;
        *&v271[1] = v179;
        *(&v271[1] + 1) = v180;
        swift_getOpaqueTypeConformance2();
        v177 = v247;
        sub_1A3A301F0();
      }

      v91 = &qword_1EB0FCA10;
      sub_1A388F6D8(v177, v248, &qword_1EB0FCA10);
      swift_storeEnumTagMultiPayload();
      sub_1A38A965C();
      v181 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA28);
      v182 = sub_1A38A97A8();
      v183 = sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
      *&v271[0] = v181;
      *(&v271[0] + 1) = v174;
      *&v271[1] = v182;
      *(&v271[1] + 1) = v183;
      swift_getOpaqueTypeConformance2();
      v184 = v242;
      sub_1A3A301F0();
      v185 = &qword_1EB0FCA00;
      sub_1A388F6D8(v184, v254, &qword_1EB0FCA00);
LABEL_56:
      swift_storeEnumTagMultiPayload();
      sub_1A38A9144();
      sub_1A38A953C();
      v212 = v255;
      sub_1A3A301F0();
      sub_1A388F740(v184, v185);
      sub_1A388F6D8(v212, v265, &qword_1EB0FC980);
      swift_storeEnumTagMultiPayload();
      sub_1A38A90B8();
      sub_1A38A9888();
      sub_1A3A301F0();
      sub_1A388F740(v212, &qword_1EB0FC980);
      v92 = v177;
      return sub_1A388F740(v92, v91);
    }

    v268 = v41;
    v281 = *(v269 + 32);
    v280 = *(v269 + 24);
    v79 = v280;
    v80 = v281;
    sub_1A3A2EA60();
    v81 = v79;
    if ((v80 & 1) == 0)
    {
      sub_1A3A31C30();
      v82 = sub_1A3A305C0();
      sub_1A3A2F270();

      v83 = v249;
      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A388F740(&v280, &qword_1EB0FC3C0);
      (*(v250 + 8))(v83, v251);
      v81 = *&v271[0];
    }

    swift_getKeyPath();
    *&v271[0] = v81;
    sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v84 = *(v81 + 712);

    if (v84 < 10.0)
    {
      if (qword_1EB0FC150 != -1)
      {
        swift_once();
      }

      v85 = qword_1EB101AD8;
      sub_1A388F6D8(&v280, v271, &qword_1EB0FC3C0);
      v86 = v85;
      if (!v80)
      {
        sub_1A3A31C30();
        v186 = sub_1A3A305C0();
        sub_1A3A2F270();

        v187 = v249;
        sub_1A3A2FED0();
        swift_getAtKeyPath();
        sub_1A388F740(&v280, &qword_1EB0FC3C0);
        (*(v250 + 8))(v187, v251);
        v79 = *&v271[0];
      }

      v125 = v245;
      swift_getKeyPath();
      *&v271[0] = v79;
      sub_1A3A2F080();

      v188 = *(v79 + 712);

      v189 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v190 = [v85 stringFromNumber_];

      if (v190)
      {
        v126 = sub_1A3A31850();
        v128 = v191;

        if (v128)
        {
          goto LABEL_53;
        }
      }

      goto LABEL_54;
    }

    sub_1A3A2EA60();
    if ((v80 & 1) == 0)
    {
      sub_1A3A31C30();
      v122 = sub_1A3A305C0();
      sub_1A3A2F270();

      v123 = v249;
      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A388F740(&v280, &qword_1EB0FC3C0);
      (*(v250 + 8))(v123, v251);
      v79 = *&v271[0];
    }

    swift_getKeyPath();
    *&v271[0] = v79;
    sub_1A3A2F080();

    v124 = *(v79 + 712);

    if ((*&v124 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v125 = v245;
      if (v124 > -9.22337204e18)
      {
        if (v124 < 9.22337204e18)
        {
          *&v271[0] = v124;
          v126 = sub_1A3A321A0();
          v128 = v127;
          if (v127)
          {
LABEL_53:
            v192 = sub_1A3A2FF40();
            LOBYTE(v272) = 0;
            v193 = v269;
            sub_1A38A700C(v126, v128, v269, v271);
            v275[2] = v271[2];
            v275[3] = v271[3];
            v275[4] = v271[4];
            v275[1] = v271[1];
            v275[0] = v271[0];
            v276[2] = v271[2];
            v276[3] = v271[3];
            v276[4] = v271[4];
            v276[1] = v271[1];
            v276[0] = v271[0];
            sub_1A388F6D8(v275, v270, &qword_1EB0FCB48);
            sub_1A388F740(v276, &qword_1EB0FCB48);

            *&v277[23] = v275[1];
            *&v277[39] = v275[2];
            *&v277[55] = v275[3];
            *&v277[71] = v275[4];
            *&v277[7] = v275[0];
            v194 = v272;
            sub_1A3A31590();
            v271[0] = 0uLL;
            *&v271[1] = v195;
            *(&v271[1] + 1) = v196;
            *&v271[2] = 0x4020000000000000;
            v270[0] = xmmword_1A3A6A8B0;
            *&v270[1] = v195;
            *(&v270[1] + 1) = v196;
            *&v270[2] = 0x4020000000000000;
            sub_1A38AA284();
            v197 = sub_1A3A2F7E0();
            *(&v270[3] + 1) = *&v277[32];
            *(&v270[4] + 1) = *&v277[48];
            *(&v270[5] + 1) = *&v277[64];
            *(&v270[1] + 1) = *v277;
            *&v270[0] = v192;
            *(&v270[0] + 1) = 0x3FF0000000000000;
            LOBYTE(v270[1]) = v194;
            *(&v270[2] + 1) = *&v277[16];
            *&v270[6] = *&v277[79];
            *(&v270[6] + 1) = v197;
            MEMORY[0x1EEE9AC00](v197);
            v213[-2] = 2;
            v213[-1] = v193;
            v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC9D0);
            v199 = sub_1A38A9458();
            v200 = v125;
            v201 = sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
            v202 = v238;
            v203 = v262;
            sub_1A3A30BD0();
            v271[4] = v270[4];
            v271[5] = v270[5];
            v271[6] = v270[6];
            v271[0] = v270[0];
            v271[1] = v270[1];
            v271[2] = v270[2];
            v271[3] = v270[3];
            sub_1A388F740(v271, &qword_1EB0FC9D0);
            v204 = v214;
            v205 = v244;
            (*(v214 + 16))(v243, v202, v244);
            swift_storeEnumTagMultiPayload();
            *&v270[0] = v198;
            *(&v270[0] + 1) = v203;
            *&v270[1] = v199;
            *(&v270[1] + 1) = v201;
            v125 = v200;
            swift_getOpaqueTypeConformance2();
            sub_1A3A301F0();
            (*(v204 + 8))(v202, v205);
LABEL_55:
            v91 = &qword_1EB0FC9C8;
            sub_1A388F6D8(v125, v226, &qword_1EB0FC9C8);
            swift_storeEnumTagMultiPayload();
            v209 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC998);
            v210 = sub_1A38A925C();
            v211 = sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
            *&v271[0] = v209;
            *(&v271[0] + 1) = v203;
            *&v271[1] = v210;
            *(&v271[1] + 1) = v211;
            swift_getOpaqueTypeConformance2();
            sub_1A38A9340();
            v184 = v227;
            sub_1A3A301F0();
            v185 = &qword_1EB0FC990;
            v177 = v125;
            sub_1A388F6D8(v184, v254, &qword_1EB0FC990);
            goto LABEL_56;
          }

LABEL_54:
          swift_storeEnumTagMultiPayload();
          v206 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9D0);
          v207 = sub_1A38A9458();
          v208 = sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
          *&v271[0] = v206;
          v203 = v262;
          *(&v271[0] + 1) = v262;
          *&v271[1] = v207;
          *(&v271[1] + 1) = v208;
          swift_getOpaqueTypeConformance2();
          sub_1A3A301F0();
          goto LABEL_55;
        }

LABEL_60:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  if (v268 > 24)
  {
    if (v268 == 25)
    {
      BYTE8(v270[0]) = *(v269 + 32);
      v98 = *(v269 + 24);
      *&v270[0] = v98;
      v99 = BYTE8(v270[0]);
      sub_1A3A2EA60();
      if ((v99 & 1) == 0)
      {
        sub_1A3A31C30();
        v100 = sub_1A3A305C0();
        sub_1A3A2F270();

        v101 = v249;
        sub_1A3A2FED0();
        swift_getAtKeyPath();
        sub_1A388F740(v270, &qword_1EB0FC3C0);
        (*(v250 + 8))(v101, v251);
        v98 = *&v271[0];
      }

      swift_getKeyPath();
      *&v271[0] = v98;
      sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v102 = *(v98 + 928);
      sub_1A3A2EA60();

      swift_getKeyPath();
      *&v271[0] = v102;
      sub_1A38AAA7C(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel);
      sub_1A3A2F080();

      v103 = *(v102 + 81);

      v104 = 0xD000000000000033;
      if (v103)
      {
        v105 = ".dotted.xaxis.bold.yaxis.bold";
      }

      else
      {
        v104 = 0xD00000000000002DLL;
        v105 = "square.3.layers.3d.down.left";
      }

      v106 = v218;
      *v218 = v104;
      *(v106 + 8) = v105 | 0x8000000000000000;
      *(v106 + 16) = 0;
      *(v106 + 24) = 0;
      *(v106 + 32) = 0;
      v107 = v262;
      swift_storeEnumTagMultiPayload();
      v108 = v220;
      v109 = sub_1A3890890(v106, v220);
      MEMORY[0x1EEE9AC00](v109);
      v213[-2] = 25;
      v213[-1] = v269;
      v269 = sub_1A38A9C30();
      v110 = sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
      v111 = v238;
      v112 = v244;
      sub_1A3A30BD0();
      sub_1A388F740(v108, &qword_1EB0FCAA0);
      v113 = v224;
      v114 = v247;
      (*(v224 + 16))(v241, v111, v247);
      swift_storeEnumTagMultiPayload();
      v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA60);
      v116 = sub_1A38A9A6C();
      *&v271[0] = v115;
      *(&v271[0] + 1) = v107;
      *&v271[1] = v116;
      *(&v271[1] + 1) = v110;
      swift_getOpaqueTypeConformance2();
      *&v271[0] = v112;
      *(&v271[0] + 1) = v107;
      *&v271[1] = v269;
      *(&v271[1] + 1) = v110;
      swift_getOpaqueTypeConformance2();
      v117 = v245;
      sub_1A3A301F0();
      sub_1A388F6D8(v117, v259, &qword_1EB0FCA58);
      swift_storeEnumTagMultiPayload();
      sub_1A38A9914();
      sub_1A38A9CEC();
      v118 = v260;
      sub_1A3A301F0();
      sub_1A388F740(v117, &qword_1EB0FCA58);
      sub_1A388F6D8(v118, v265, &qword_1EB0FCA48);
      swift_storeEnumTagMultiPayload();
      sub_1A38A90B8();
      sub_1A38A9888();
      sub_1A3A301F0();
      sub_1A388F740(v118, &qword_1EB0FCA48);
      return (*(v113 + 8))(v238, v114);
    }

    else
    {
      if (v268 != 31)
      {
LABEL_21:
        swift_storeEnumTagMultiPayload();
        v87 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA28);
        v88 = sub_1A38A97A8();
        *&v271[0] = v87;
        *(&v271[0] + 1) = MEMORY[0x1E6981748];
        *&v271[1] = v88;
        *(&v271[1] + 1) = MEMORY[0x1E6981710];
        swift_getOpaqueTypeConformance2();
        v89 = v237;
        sub_1A3A301F0();
        sub_1A388F6D8(v89, v259, &qword_1EB0FCAB8);
        swift_storeEnumTagMultiPayload();
        sub_1A38A9914();
        sub_1A38A9CEC();
        v90 = v260;
        sub_1A3A301F0();
        sub_1A388F740(v89, &qword_1EB0FCAB8);
        v91 = &qword_1EB0FCA48;
        sub_1A388F6D8(v90, v265, &qword_1EB0FCA48);
        swift_storeEnumTagMultiPayload();
        sub_1A38A90B8();
        sub_1A38A9888();
        sub_1A3A301F0();
        v92 = v90;
        return sub_1A388F740(v92, v91);
      }

      v213[0] = v213 - v42;
      v261 = v43;
      v268 = v41;
      v74 = sub_1A3A300B0();
      v274 = 1;
      v75 = v269;
      sub_1A38A5638(v269, v271);
      memcpy(v275, v271, 0x118uLL);
      memcpy(v276, v271, 0x118uLL);
      sub_1A388F6D8(v275, v270, &qword_1EB0FCB50);
      sub_1A388F740(v276, &qword_1EB0FCB50);
      memcpy(&v273[7], v275, 0x118uLL);
      v76 = v274;
      v77 = sub_1A3A314E0();
      v78 = *(v75 + 24);
      v280 = v78;
      v281 = *(v75 + 32);
      if (v281 == 1)
      {
        v272 = v78;
        sub_1A3A2EA60();
      }

      else
      {
        sub_1A3A2EA60();
        sub_1A3A31C30();
        v145 = sub_1A3A305C0();
        sub_1A3A2F270();

        v146 = v249;
        sub_1A3A2FED0();
        swift_getAtKeyPath();
        sub_1A388F740(&v280, &qword_1EB0FC3C0);
        (*(v250 + 8))(v146, v251);
        v78 = v272;
      }

      swift_getKeyPath();
      *&v271[0] = v78;
      sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
      sub_1A3A2F080();

      v147 = *(v78 + 1067);

      v270[0] = v74;
      LOBYTE(v270[1]) = v76;
      v148 = memcpy(&v270[1] + 1, v273, 0x11FuLL);
      *&v270[19] = v77;
      BYTE8(v270[19]) = v147;
      MEMORY[0x1EEE9AC00](v148);
      v213[-2] = 31;
      v213[-1] = v269;
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC998);
      v150 = sub_1A38A925C();
      v151 = sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
      v152 = v213[0];
      v153 = v262;
      sub_1A3A30BD0();
      memcpy(v271, v270, 0x139uLL);
      sub_1A388F740(v271, &qword_1EB0FC998);
      v154 = v261;
      v155 = v268;
      (*(v261 + 16))(v226, v152, v268);
      swift_storeEnumTagMultiPayload();
      *&v270[0] = v149;
      *(&v270[0] + 1) = v153;
      *&v270[1] = v150;
      *(&v270[1] + 1) = v151;
      swift_getOpaqueTypeConformance2();
      sub_1A38A9340();
      v156 = v227;
      sub_1A3A301F0();
      sub_1A388F6D8(v156, v254, &qword_1EB0FC990);
      swift_storeEnumTagMultiPayload();
      sub_1A38A9144();
      sub_1A38A953C();
      v157 = v255;
      sub_1A3A301F0();
      sub_1A388F740(v156, &qword_1EB0FC990);
      sub_1A388F6D8(v157, v265, &qword_1EB0FC980);
      swift_storeEnumTagMultiPayload();
      sub_1A38A90B8();
      sub_1A38A9888();
      sub_1A3A301F0();
      sub_1A388F740(v157, &qword_1EB0FC980);
      return (*(v154 + 8))(v213[0], v155);
    }
  }

  else
  {
    if (v268 != 21)
    {
      if (v268 == 24)
      {
        v45 = v229;
        v44 = v230;
        *v229 = 0xD00000000000001CLL;
        v45[1] = 0x80000001A3AA1CF0;
        v46 = v231;
        (*(v44 + 104))(v45, *MEMORY[0x1E69C1D38], v231);
        v47 = sub_1A3A2F200();
        (*(v44 + 8))(v45, v46);
        *&v271[0] = v47;
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCA28);
        v49 = sub_1A38A97A8();
        v50 = MEMORY[0x1E6981748];
        v51 = MEMORY[0x1E6981710];
        v52 = v219;
        sub_1A3A30BD0();

        v53 = v221;
        v54 = v236;
        (*(v221 + 16))(v235, v52, v236);
        swift_storeEnumTagMultiPayload();
        *&v271[0] = v48;
        *(&v271[0] + 1) = v50;
        *&v271[1] = v49;
        *(&v271[1] + 1) = v51;
        swift_getOpaqueTypeConformance2();
        v55 = v237;
        sub_1A3A301F0();
        sub_1A388F6D8(v55, v259, &qword_1EB0FCAB8);
        swift_storeEnumTagMultiPayload();
        sub_1A38A9914();
        sub_1A38A9CEC();
        v56 = v260;
        sub_1A3A301F0();
        sub_1A388F740(v55, &qword_1EB0FCAB8);
        sub_1A388F6D8(v56, v265, &qword_1EB0FCA48);
        swift_storeEnumTagMultiPayload();
        sub_1A38A90B8();
        sub_1A38A9888();
        sub_1A3A301F0();
        sub_1A388F740(v56, &qword_1EB0FCA48);
        return (*(v53 + 8))(v52, v54);
      }

      goto LABEL_21;
    }

    v93 = sub_1A3A300B0();
    LOBYTE(v271[0]) = 1;
    v94 = v269;
    sub_1A38A7A48(21, v269, v276);
    *&v279[7] = v276[0];
    *&v279[23] = v276[1];
    *&v279[39] = v276[2];
    *&v279[55] = v276[3];
    v95 = v271[0];
    v96 = sub_1A3A314E0();
    v97 = *(v94 + 24);
    *&v275[0] = v97;
    BYTE8(v275[0]) = *(v94 + 32);
    if (BYTE8(v275[0]) == 1)
    {
      v280 = v97;
      sub_1A3A2EA60();
    }

    else
    {
      sub_1A3A2EA60();
      sub_1A3A31C30();
      v129 = sub_1A3A305C0();
      sub_1A3A2F270();

      v130 = v249;
      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A388F740(v275, &qword_1EB0FC3C0);
      (*(v250 + 8))(v130, v251);
      v97 = v280;
    }

    swift_getKeyPath();
    *&v271[0] = v97;
    sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v131 = *(v97 + 976);

    v132 = sub_1A38EB870(v131);
    v270[0] = v93;
    LOBYTE(v270[1]) = v95;
    *(&v270[2] + 1) = *&v279[16];
    *(&v270[3] + 1) = *&v279[32];
    *(&v270[4] + 1) = *&v279[48];
    *(&v270[1] + 1) = *v279;
    *&v270[5] = *&v279[63];
    *(&v270[5] + 1) = v96;
    *&v270[6] = v132;
    *(&v270[6] + 1) = v133;
    MEMORY[0x1EEE9AC00](v132);
    v213[-2] = 21;
    v213[-1] = v269;
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCA60);
    v135 = sub_1A38A9A6C();
    v136 = sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
    v137 = v234;
    v138 = v262;
    sub_1A3A30BD0();
    v271[4] = v270[4];
    v271[5] = v270[5];
    v271[6] = v270[6];
    v271[0] = v270[0];
    v271[1] = v270[1];
    v271[2] = v270[2];
    v271[3] = v270[3];
    sub_1A388F740(v271, &qword_1EB0FCA60);
    v139 = v223;
    v140 = v137;
    v141 = v243;
    (*(v223 + 16))(v241, v140, v243);
    swift_storeEnumTagMultiPayload();
    *&v270[0] = v134;
    *(&v270[0] + 1) = v138;
    *&v270[1] = v135;
    *(&v270[1] + 1) = v136;
    swift_getOpaqueTypeConformance2();
    v142 = sub_1A38A9C30();
    *&v270[0] = v244;
    *(&v270[0] + 1) = v138;
    *&v270[1] = v142;
    *(&v270[1] + 1) = v136;
    swift_getOpaqueTypeConformance2();
    v143 = v245;
    sub_1A3A301F0();
    sub_1A388F6D8(v143, v259, &qword_1EB0FCA58);
    swift_storeEnumTagMultiPayload();
    sub_1A38A9914();
    sub_1A38A9CEC();
    v144 = v260;
    sub_1A3A301F0();
    sub_1A388F740(v143, &qword_1EB0FCA58);
    sub_1A388F6D8(v144, v265, &qword_1EB0FCA48);
    swift_storeEnumTagMultiPayload();
    sub_1A38A90B8();
    sub_1A38A9888();
    sub_1A3A301F0();
    sub_1A388F740(v144, &qword_1EB0FCA48);
    return (*(v139 + 8))(v234, v141);
  }
}

uint64_t sub_1A38A5638@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_1A3A2FF40();
  LOBYTE(v35[0]) = 0;
  sub_1A38A59D0(a1, &v41);
  v19 = *&v42[80];
  v20 = *&v42[96];
  v21 = *&v42[112];
  v15 = *&v42[16];
  v16 = *&v42[32];
  v17 = *&v42[48];
  v18 = *&v42[64];
  v13 = v41;
  v14 = *v42;
  v23[6] = *&v42[80];
  v23[7] = *&v42[96];
  v23[8] = *&v42[112];
  v23[2] = *&v42[16];
  v23[3] = *&v42[32];
  v23[4] = *&v42[48];
  v23[5] = *&v42[64];
  v22 = v42[128];
  v24 = v42[128];
  v23[0] = v41;
  v23[1] = *v42;
  sub_1A388F6D8(&v13, &v31, &qword_1EB0FCB58);
  sub_1A388F740(v23, &qword_1EB0FCB58);
  *&v12[103] = v19;
  *&v12[119] = v20;
  *&v12[135] = v21;
  *&v12[39] = v15;
  *&v12[55] = v16;
  *&v12[71] = v17;
  *&v12[87] = v18;
  *&v12[7] = v13;
  v12[151] = v22;
  *&v12[23] = v14;
  v4 = v35[0];
  v5 = sub_1A3A30DD0();
  v6 = sub_1A3A31480();
  v8 = v7;
  sub_1A38A6CC0(a1, &v41);
  v27 = *&v42[16];
  v28 = *&v42[32];
  v25 = v41;
  v26 = *v42;
  v30[2] = *&v42[16];
  v30[3] = *&v42[32];
  v30[4] = *&v42[48];
  v30[1] = *v42;
  v29 = *&v42[48];
  v30[0] = v41;
  sub_1A388F6D8(&v25, &v31, &qword_1EB0FCB60);
  sub_1A388F740(v30, &qword_1EB0FCB60);
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v36 = v25;
  v37 = v26;
  *&v31 = v3;
  *(&v31 + 1) = 0x3FF0000000000000;
  v32[0] = v4;
  *&v32[1] = *v12;
  *&v32[17] = *&v12[16];
  *&v32[81] = *&v12[80];
  *&v32[65] = *&v12[64];
  *&v32[49] = *&v12[48];
  *&v32[33] = *&v12[32];
  *&v32[129] = *&v12[128];
  *&v32[145] = *&v12[144];
  *&v32[113] = *&v12[112];
  *&v32[97] = *&v12[96];
  *&__src[128] = *&v32[112];
  *&__src[144] = *&v32[128];
  *&__src[160] = *&v32[144];
  *&__src[64] = *&v32[48];
  *&__src[80] = *&v32[64];
  *&__src[96] = *&v32[80];
  *&__src[112] = *&v32[96];
  *__src = v31;
  *&__src[16] = *v32;
  *&__src[32] = *&v32[16];
  *&__src[48] = *&v32[32];
  v33 = v5;
  *&__src[176] = v5;
  *&v34[0] = v6;
  *(&v34[0] + 1) = v8;
  v34[2] = v26;
  v34[3] = v27;
  v34[4] = v28;
  v34[5] = v29;
  v34[1] = v25;
  *&__src[264] = v29;
  *&__src[216] = v26;
  *&__src[232] = v27;
  *&__src[248] = v28;
  *&__src[200] = v25;
  *&__src[184] = v34[0];
  memcpy(a2, __src, 0x118uLL);
  v35[0] = v6;
  v35[1] = v8;
  sub_1A388F6D8(&v31, &v41, &qword_1EB0FCB68);
  sub_1A388F6D8(v34, &v41, &qword_1EB0FCB70);
  sub_1A388F740(v35, &qword_1EB0FCB70);
  *&v42[97] = *&v12[96];
  *&v42[113] = *&v12[112];
  v43 = *&v12[128];
  *&v42[33] = *&v12[32];
  *&v42[49] = *&v12[48];
  *&v42[65] = *&v12[64];
  *&v42[81] = *&v12[80];
  *&v42[1] = *v12;
  *&v41 = v3;
  *(&v41 + 1) = 0x3FF0000000000000;
  v42[0] = v4;
  v44 = *&v12[144];
  *&v42[17] = *&v12[16];
  v45 = v5;
  return sub_1A388F740(&v41, &qword_1EB0FCB68);
}

uint64_t sub_1A38A59D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = *(a1 + 32);
  v7 = *(a1 + 24);
  v166 = v7;
  LODWORD(v127) = v167;
  if (v167 == 1)
  {
    v165 = v7;
    sub_1A3A2EA60();
    v8 = v7;
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v9 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v166, &qword_1EB0FC3C0);
    (*(v4 + 8))(v6, v3);
    v8 = v165;
  }

  swift_getKeyPath();
  *&v155 = v8;
  v128 = sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v10 = *(v8 + 1160);
  sub_1A3A2EA60();

  swift_getKeyPath();
  *&v155 = v10;
  v11 = sub_1A38AAA7C(&qword_1ED996718, type metadata accessor for ChromeRemainingRecordingTimeModel);
  sub_1A3A2F080();

  v12 = *(v10 + 16);

  v14 = v12 / 3600.0;
  if (COERCE__INT64(fabs(v12 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v125 = v11;
  if (v14 > 8)
  {
    sub_1A3A2EA60();
    v61 = v7;
    if ((v127 & 1) == 0)
    {
      sub_1A3A31C30();
      v62 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A388F740(&v166, &qword_1EB0FC3C0);
      (*(v4 + 8))(v6, v3);
      v61 = v155;
    }

    v123 = v4;
    v126 = v3;
    swift_getKeyPath();
    *&v155 = v61;
    sub_1A3A2F080();

    sub_1A3A2EA60();

    v63 = sub_1A3914750();
    v65 = v64;

    v66 = sub_1A3A31810();
    v67 = CAMLocalizedFrameworkString(v66, 0);

    v68 = sub_1A3A31850();
    v70 = v69;

    *&v155 = v63;
    *(&v155 + 1) = v65;
    sub_1A3A2EA50();
    MEMORY[0x1A58F7770](v68, v70);

    sub_1A389FD78();
    v71 = sub_1A3A308E0();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = sub_1A3A314E0();
    if (v127)
    {
      v154 = v7;
      sub_1A3A2EA60();
    }

    else
    {
      sub_1A3A2EA60();
      sub_1A3A31C30();
      v79 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A388F740(&v166, &qword_1EB0FC3C0);
      (*(v123 + 8))(v6, v126);
      v7 = v154;
    }

    swift_getKeyPath();
    *&v155 = v7;
    sub_1A3A2F080();

    v80 = *(v7 + 1160);
    sub_1A3A2EA60();

    swift_getKeyPath();
    *&v155 = v80;
    sub_1A3A2F080();

    v81 = *(v80 + 16);

    v82 = v81 / 3600.0;
    if (COERCE__INT64(fabs(v81 / 3600.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v82 > -9.22337204e18)
      {
        if (v82 < 9.22337204e18)
        {
          *&v144 = v71;
          *(&v144 + 1) = v73;
          LOBYTE(v145) = v75 & 1;
          *(&v145 + 1) = v77;
          *&v146 = v78;
          *(&v146 + 1) = v82;
          sub_1A38AA2F4(&v144);
          v140 = v150;
          v141 = v151;
          v142 = v152;
          v143 = v153;
          v136 = v146;
          v137 = v147;
          v138 = v148;
          v139 = v149;
          v134 = v144;
          v135 = v145;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB80);
          sub_1A38A08F8(&qword_1EB0FCB88, &qword_1EB0FCB78);
          sub_1A38AA300();
          result = sub_1A3A301F0();
LABEL_38:
          v105 = v162;
          v106 = v124;
          *(v124 + 96) = v161;
          *(v106 + 112) = v105;
          *(v106 + 128) = v163;
          *(v106 + 144) = v164;
          v107 = v158;
          *(v106 + 32) = v157;
          *(v106 + 48) = v107;
          v108 = v160;
          *(v106 + 64) = v159;
          *(v106 + 80) = v108;
          v109 = v156;
          *v106 = v155;
          *(v106 + 16) = v109;
          return result;
        }

        goto LABEL_47;
      }

      goto LABEL_45;
    }

    goto LABEL_43;
  }

  sub_1A3A2EA60();
  v15 = v7;
  if ((v127 & 1) == 0)
  {
    sub_1A3A31C30();
    v16 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v166, &qword_1EB0FC3C0);
    (*(v4 + 8))(v6, v3);
    v15 = v155;
  }

  swift_getKeyPath();
  *&v155 = v15;
  sub_1A3A2F080();

  sub_1A3A2EA60();

  v17 = sub_1A3914750();
  v19 = v18;

  *&v155 = v17;
  *(&v155 + 1) = v19;
  v126 = sub_1A389FD78();
  v20 = sub_1A3A308E0();
  v121 = v21;
  v122 = v20;
  LODWORD(v113) = v22;
  v123 = v23;
  v120 = sub_1A3A314E0();
  sub_1A3A2EA60();
  v24 = v7;
  if ((v127 & 1) == 0)
  {
    sub_1A3A31C30();
    v25 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v166, &qword_1EB0FC3C0);
    (*(v4 + 8))(v6, v3);
    v24 = v155;
  }

  swift_getKeyPath();
  *&v155 = v24;
  sub_1A3A2F080();

  v26 = *(v24 + 1160);
  sub_1A3A2EA60();

  swift_getKeyPath();
  *&v155 = v26;
  sub_1A3A2F080();

  v27 = *(v26 + 16);

  v28 = v27 / 3600.0;
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v29 = sub_1A3A31810();
  v30 = CAMLocalizedFrameworkString(v29, 0);

  v31 = sub_1A3A31850();
  v33 = v32;

  *&v155 = v31;
  *(&v155 + 1) = v33;
  v34 = sub_1A3A308E0();
  v36 = v35;
  v37 = v4;
  v39 = v38;
  sub_1A3A30730();
  sub_1A391A414();
  v40 = CEKFontOfSizeWeightStyle();
  sub_1A3A307B0();
  v41 = sub_1A3A308A0();
  v117 = v42;
  v118 = v41;
  v112 = v43;
  v119 = v44;

  sub_1A389F1B4(v34, v36, v39 & 1);

  v45 = sub_1A3A314E0();
  sub_1A3A2EA60();
  v46 = v7;
  if ((v127 & 1) == 0)
  {
    sub_1A3A31C30();
    v47 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v166, &qword_1EB0FC3C0);
    (*(v37 + 8))(v6, v3);
    v46 = v155;
  }

  swift_getKeyPath();
  *&v155 = v46;
  sub_1A3A2F080();

  v48 = *(v46 + 1160);
  sub_1A3A2EA60();

  swift_getKeyPath();
  *&v155 = v48;
  sub_1A3A2F080();

  v49 = *(v48 + 16);

  v50 = v49 / 3600.0;
  if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v50 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  sub_1A3A2EA60();
  v51 = v7;
  if ((v127 & 1) == 0)
  {
    sub_1A3A31C30();
    v52 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v166, &qword_1EB0FC3C0);
    (*(v37 + 8))(v6, v3);
    v51 = v155;
  }

  swift_getKeyPath();
  *&v155 = v51;
  sub_1A3A2F080();

  sub_1A3A2EA60();

  v53 = sub_1A3914870();
  v55 = v54;

  *&v155 = v53;
  *(&v155 + 1) = v55;
  v56 = sub_1A3A308E0();
  v116 = v57;
  v111 = v58;
  v60 = v59;
  v115 = sub_1A3A314E0();
  if (v127)
  {
    v154 = v7;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v83 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v166, &qword_1EB0FC3C0);
    (*(v37 + 8))(v6, v3);
    v7 = v154;
  }

  swift_getKeyPath();
  *&v155 = v7;
  sub_1A3A2F080();

  v84 = *(v7 + 1160);
  sub_1A3A2EA60();

  swift_getKeyPath();
  *&v155 = v84;
  sub_1A3A2F080();

  v85 = *(v84 + 16);

  if ((*&v85 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_51;
  }

  if (v85 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v85 < 9.22337204e18)
  {
    v125 = v28;
    v126 = v56;
    v127 = v50;
    v86 = v113 & 1;
    v133 = v113 & 1;
    v113 = ((((34953 * (v85 % 3600)) >> 16) >> 5) + (((v85 % 3600 + ((-30583 * (v85 % 3600)) >> 16)) & 0x8000) >> 15));
    v87 = v112 & 1;
    v132 = v112 & 1;
    v131 = v133;
    v130 = v112 & 1;
    v88 = v111 & 1;
    v129 = v111 & 1;
    v111 &= 1u;
    v90 = v121;
    v89 = v122;
    LODWORD(v128) = v86;
    sub_1A389F1A4(v122, v121, v86);
    sub_1A3A2EA50();
    sub_1A3A2EA60();
    v114 = v60;
    v91 = v117;
    v112 = v87;
    sub_1A389F1A4(v118, v117, v87);
    sub_1A3A2EA50();
    sub_1A3A2EA60();
    sub_1A389F1A4(v126, v116, v88);
    sub_1A3A2EA50();
    sub_1A3A2EA60();
    sub_1A389F1A4(v89, v90, v86);
    sub_1A3A2EA50();
    v92 = v120;
    sub_1A3A2EA60();
    v93 = v118;
    sub_1A389F1A4(v118, v91, v87);
    v94 = v119;
    sub_1A3A2EA50();
    v110 = v45;
    sub_1A3A2EA60();
    v95 = v126;
    v96 = v116;
    LOBYTE(v91) = v111;
    sub_1A389F1A4(v126, v116, v111);
    v97 = v114;
    sub_1A3A2EA50();
    sub_1A3A2EA60();
    sub_1A389F1B4(v95, v96, v91);

    v98 = v93;
    v99 = v93;
    v100 = v117;
    sub_1A389F1B4(v98, v117, v132);

    v101 = v121;
    v102 = v122;
    sub_1A389F1B4(v122, v121, v133);

    v103 = v123;

    *&v144 = v102;
    *(&v144 + 1) = v101;
    LOBYTE(v145) = v128;
    *(&v145 + 1) = v103;
    *&v146 = v92;
    *(&v146 + 1) = v125;
    *&v147 = v99;
    *(&v147 + 1) = v100;
    LOBYTE(v100) = v112;
    LOBYTE(v148) = v112;
    *(&v148 + 1) = v94;
    *&v149 = v110;
    *(&v149 + 1) = v127;
    v104 = v116;
    *&v150 = v126;
    *(&v150 + 1) = v116;
    LOBYTE(v151) = v91;
    *(&v151 + 1) = v97;
    *&v152 = v115;
    *(&v152 + 1) = v113;
    sub_1A38AA498(&v144);
    v161 = v150;
    v162 = v151;
    v163 = v152;
    v164 = v153;
    v157 = v146;
    v158 = v147;
    v159 = v148;
    v160 = v149;
    v155 = v144;
    v156 = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCB80);
    sub_1A38A08F8(&qword_1EB0FCB88, &qword_1EB0FCB78);
    sub_1A38AA300();
    sub_1A3A301F0();
    sub_1A389F1B4(v126, v104, v91);

    sub_1A389F1B4(v118, v117, v100);

    sub_1A389F1B4(v122, v121, v128);

    v161 = v140;
    v162 = v141;
    v163 = v142;
    v164 = v143;
    v157 = v136;
    v158 = v137;
    v159 = v138;
    v160 = v139;
    v155 = v134;
    v156 = v135;
    goto LABEL_38;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1A38A6CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A2F1E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A3A2FEE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 32);
  v12 = *(a1 + 24);
  v30 = v12;
  if (v31 == 1)
  {
    v26 = v12;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v30, &qword_1EB0FC3C0);
    (*(v9 + 8))(v11, v8);
    v12 = v26;
  }

  swift_getKeyPath();
  *&v27 = v12;
  sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v14 = *(v12 + 1067);

  if (v14 == 1)
  {
    *v7 = 6452085;
    v7[1] = 0xE300000000000000;
    (*(v5 + 104))(v7, *MEMORY[0x1E69C1D40], v4);
    v16 = sub_1A3A2F200();
    (*(v5 + 8))(v7, v4);
    sub_1A3A31590();
    v24 = v17;
    v25 = v18;
    sub_1A3A31480();
    result = sub_1A3A2F780();
    *&v23 = v24;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = 0x3FF921FB54442D18;
    *(&v23 + 1) = v25;
  }

  else
  {
    v16 = 0;
    v22 = 0;
    v23 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
  }

  *a2 = v16;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *(a2 + 64) = v21;
  return result;
}

uint64_t sub_1A38A700C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = sub_1A3A2FEE0();
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A3A2F1E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = 0x7669737275632E66;
  v13[1] = 0xE900000000000065;
  (*(v11 + 104))(v13, *MEMORY[0x1E69C1D38], v10);
  v14 = sub_1A3A2F200();
  (*(v11 + 8))(v13, v10);
  v41 = a1;
  v42 = a2;
  sub_1A389FD78();
  sub_1A3A2EA50();
  v33 = sub_1A3A308E0();
  v16 = v15;
  LOBYTE(a2) = v17;
  v34 = v18;
  KeyPath = swift_getKeyPath();
  v20 = a2 & 1;
  LOBYTE(v41) = a2 & 1;
  LOBYTE(v36) = 0;
  v21 = sub_1A3A314E0();
  v22 = *(a3 + 24);
  v57 = v22;
  v58 = *(a3 + 32);
  if (v58 == 1)
  {
    v54 = v22;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v23 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v57, &qword_1EB0FC3C0);
    (*(v31 + 8))(v9, v32);
    v22 = v54;
  }

  swift_getKeyPath();
  v41 = v22;
  sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v24 = *(v22 + 712);

  v25 = v33;
  *&v36 = v33;
  *(&v36 + 1) = v16;
  LOBYTE(v37) = v20;
  *(&v37 + 1) = *v59;
  DWORD1(v37) = *&v59[3];
  v26 = v34;
  *(&v37 + 1) = v34;
  *&v38 = KeyPath;
  *(&v38 + 1) = 1;
  LOWORD(v39) = 256;
  BYTE2(v39) = 0;
  *(&v39 + 3) = v55;
  BYTE7(v39) = v56;
  *(&v39 + 1) = v21;
  v40 = v24;
  *a4 = v14;
  v27 = v37;
  *(a4 + 8) = v36;
  v28 = v38;
  v29 = v39;
  *(a4 + 72) = v40;
  *(a4 + 56) = v29;
  *(a4 + 40) = v28;
  *(a4 + 24) = v27;
  v41 = v25;
  v42 = v16;
  v43 = v20;
  *&v44[3] = *&v59[3];
  *v44 = *v59;
  v45 = v26;
  v46 = KeyPath;
  v47 = 1;
  v48 = 256;
  v49 = 0;
  v51 = v56;
  v50 = v55;
  v52 = v21;
  v53 = v24;
  sub_1A3A2EA60();
  sub_1A388F6D8(&v36, v35, &qword_1EB0FCBC0);
  sub_1A388F740(&v41, &qword_1EB0FCBC0);
}

uint64_t sub_1A38A74A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1A3A2FEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 32);
  v10 = *(a2 + 24);
  v15 = v10;
  v11 = v16;
  sub_1A3A2EA60();
  if ((v11 & 1) == 0)
  {
    sub_1A3A31C30();
    v12 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v15, &qword_1EB0FC3C0);
    (*(v7 + 8))(v9, v6);
    v10 = v14[1];
  }

  type metadata accessor for ChromeElementModel();
  sub_1A39AE314(a1, 11, 0, v10, a3);
}

uint64_t sub_1A38A763C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A3A2FEE0();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A3A31810();
  v12 = CAMLocalizedFrameworkString(v11, 0);

  v13 = sub_1A3A31850();
  v15 = v14;

  v56 = v13;
  v57 = v15;
  sub_1A389FD78();
  v48 = sub_1A3A308E0();
  v49 = v16;
  v18 = v17;
  v44 = v19;
  v56 = a1;
  v57 = a2;
  sub_1A3A2EA50();
  v20 = sub_1A3A308E0();
  v45 = v21;
  v46 = v20;
  v23 = v22;
  v47 = v24;
  KeyPath = swift_getKeyPath();
  LOBYTE(v56) = v23 & 1;
  LOBYTE(v51) = 0;
  v26 = sub_1A3A314E0();
  v27 = *(a3 + 24);
  v72 = v27;
  v73 = *(a3 + 32);
  if (v73 == 1)
  {
    v69 = v27;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v28 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v72, &qword_1EB0FC3C0);
    (*(v42 + 8))(v10, v43);
    v27 = v69;
  }

  swift_getKeyPath();
  v56 = v27;
  sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v29 = *(v27 + 672);

  v30 = v44 & 1;
  v50[72] = v44 & 1;
  v32 = v45;
  v31 = v46;
  *&v51 = v46;
  *(&v51 + 1) = v45;
  LOBYTE(v52) = v23 & 1;
  *(&v52 + 1) = v74[0];
  DWORD1(v52) = *(v74 + 3);
  v33 = v47;
  v34 = v48;
  *(&v52 + 1) = v47;
  *&v53 = KeyPath;
  *(&v53 + 1) = 1;
  LOWORD(v54) = 256;
  BYTE2(v54) = 0;
  *(&v54 + 3) = v70;
  BYTE7(v54) = v71;
  *(&v54 + 1) = v26;
  v55 = v29;
  v35 = v44 & 1;
  *a4 = v48;
  *(a4 + 8) = v18;
  *(a4 + 16) = v35;
  *(a4 + 24) = v49;
  v36 = v51;
  v37 = v52;
  v38 = v53;
  v39 = v54;
  *(a4 + 96) = v55;
  *(a4 + 64) = v38;
  *(a4 + 80) = v39;
  *(a4 + 32) = v36;
  *(a4 + 48) = v37;
  v56 = v31;
  v57 = v32;
  v58 = v23 & 1;
  *&v59[3] = *(v74 + 3);
  *v59 = v74[0];
  v60 = v33;
  v61 = KeyPath;
  v62 = 1;
  v63 = 256;
  v64 = 0;
  v66 = v71;
  v65 = v70;
  v67 = v26;
  v68 = v29;
  sub_1A389F1A4(v34, v18, v30);
  sub_1A3A2EA50();
  sub_1A388F6D8(&v51, v50, &qword_1EB0FCBC0);
  sub_1A388F740(&v56, &qword_1EB0FCBC0);
  sub_1A389F1B4(v34, v18, v30);
}

uint64_t sub_1A38A7A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = sub_1A3A2FEE0();
  v6 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A39FDA64(a1);
  v43 = 0x2E656D6F726843;
  v44 = 0xE700000000000000;
  MEMORY[0x1A58F7770](v9);

  sub_1A3A2EA50();
  MEMORY[0x1A58F7770](0x656C7469542ELL, 0xE600000000000000);

  v10 = sub_1A3A31810();

  v11 = CAMLocalizedFrameworkString(v10, 0);

  v12 = sub_1A3A31850();
  v14 = v13;

  v15 = sub_1A3907C58(v12, v14);
  v17 = v16;

  v43 = v15;
  v44 = v17;
  sub_1A389FD78();
  v18 = sub_1A3A308E0();
  v20 = v19;
  v42 = v21;
  v23 = v22;
  v24 = *(a2 + 24);
  v45 = v24;
  v46 = *(a2 + 32);
  LOBYTE(v15) = v46;
  sub_1A3A2EA60();
  if ((v15 & 1) == 0)
  {
    sub_1A3A31C30();
    v25 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A388F740(&v45, &qword_1EB0FC3C0);
    (*(v6 + 8))(v8, v41);
    v24 = v43;
  }

  swift_getKeyPath();
  v43 = v24;
  sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v26 = *(v24 + 976);

  v27 = sub_1A38EB870(v26);
  if (v28)
  {
    v29 = sub_1A3907C58(v27, v28);
    v31 = v30;

    v43 = v29;
    v44 = v31;
    v32 = sub_1A3A308E0();
    v34 = v33;
    v36 = v35;
    v38 = v37 & 1;
    sub_1A389F1A4(v32, v33, v37 & 1);
    sub_1A3A2EA50();
  }

  else
  {
    v32 = 0;
    v34 = 0;
    v38 = 0;
    v36 = 0;
  }

  v39 = v42 & 1;
  sub_1A389F1A4(v18, v20, v42 & 1);
  sub_1A3A2EA50();
  sub_1A38AA4A0(v32, v34, v38, v36);
  sub_1A38AA4E4(v32, v34, v38, v36);
  LOBYTE(v43) = v39;
  *a3 = v18;
  *(a3 + 8) = v20;
  *(a3 + 16) = v39;
  *(a3 + 24) = v23;
  *(a3 + 32) = v32;
  *(a3 + 40) = v34;
  *(a3 + 48) = v38;
  *(a3 + 56) = v36;
  sub_1A38AA4E4(v32, v34, v38, v36);
  sub_1A389F1B4(v18, v20, v39);
}

uint64_t sub_1A38A7E24@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A3A2F1E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = 0xD00000000000001CLL;
  v5[1] = 0x80000001A3AA1CF0;
  (*(v3 + 104))(v5, *MEMORY[0x1E69C1D38], v2);
  v6 = sub_1A3A2F200();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t sub_1A38A7F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC28) + 36));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC30) + 28);
  sub_1A3A300D0();
  v6 = sub_1A3A300F0();
  (*(*(v6 - 8) + 56))(v4 + v5, 0, 1, v6);
  *v4 = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC38);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = sub_1A3A30DD0();
  KeyPath = swift_getKeyPath();
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC40) + 36));
  *v10 = KeyPath;
  v10[1] = v8;
  sub_1A3A30730();
  if (qword_1EB0FC108 != -1)
  {
    swift_once();
  }

  sub_1A391A414();
  v11 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  v12 = sub_1A3A307B0();
  v13 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC48);
  v15 = (a2 + *(result + 36));
  *v15 = v13;
  v15[1] = v12;
  return result;
}

uint64_t sub_1A38A811C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3A30730();
  if (qword_1EB0FC108 != -1)
  {
    swift_once();
  }

  sub_1A391A414();
  v4 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  v5 = sub_1A3A307B0();
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCB8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCC0) + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCC8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCA8);
  sub_1A3A2FC60();
  *v9 = swift_getKeyPath();
  v10 = sub_1A3A30DD0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCD0);
  *(a2 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_1A38A82A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3A30730();
  sub_1A391A414();
  v4 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  v5 = sub_1A3A307B0();
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC90);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC98) + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCA0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCA8);
  sub_1A3A2FC60();
  *v9 = swift_getKeyPath();
  v10 = sub_1A3A30DD0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCB0);
  *(a2 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_1A38A83E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC50);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  sub_1A3A30730();
  sub_1A391A414();
  v5 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  v6 = sub_1A3A307B0();
  KeyPath = swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC58);
  (*(*(v8 - 8) + 16))(v4, a1, v8);
  v9 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC60) + 36)];
  *v9 = KeyPath;
  v9[1] = v6;
  v10 = sub_1A3A30D80();
  v11 = swift_getKeyPath();
  v12 = &v4[*(v2 + 36)];
  *v12 = v11;
  v12[1] = v10;
  sub_1A38AA8E0();
  sub_1A3A30C50();
  return sub_1A388F740(v4, &qword_1EB0FCC50);
}

uint64_t sub_1A38A8578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A3A31620();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3A31640();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A30730();
  if (qword_1EB0FC110 != -1)
  {
    swift_once();
  }

  sub_1A391A414();
  v12 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  v13 = sub_1A3A307B0();
  KeyPath = swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCF8);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCD00) + 36));
  *v16 = KeyPath;
  v16[1] = v13;
  sub_1A3A31480();
  sub_1A3A2F780();
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCD08) + 36));
  v18 = v24[1];
  *v17 = v24[0];
  v17[1] = v18;
  v17[2] = v24[2];
  v19 = sub_1A3A30D80();
  v20 = swift_getKeyPath();
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCD10) + 36));
  *v21 = v20;
  v21[1] = v19;
  sub_1A3A31630();
  sub_1A3A31610();
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCD18) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCA8);
  sub_1A38AAA7C(&qword_1ED996728, MEMORY[0x1E69821A0]);
  sub_1A3A2FC70();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  result = swift_getKeyPath();
  *v22 = result;
  return result;
}

uint64_t sub_1A38A88F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3A30730();
  if (qword_1EB0FC110 != -1)
  {
    swift_once();
  }

  sub_1A391A414();
  v4 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  v5 = sub_1A3A307B0();
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCD8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCE0) + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCE8) + 36)) = xmmword_1A3A6D0F0;
  v9 = sub_1A3A30D80();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCF0);
  v12 = (a2 + *(result + 36));
  *v12 = v10;
  v12[1] = v9;
  return result;
}

uint64_t objectdestroyTm_2()
{

  sub_1A3670FF4(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_1A38A8AD0()
{
  result = qword_1EB0FC8F8;
  if (!qword_1EB0FC8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC8F0);
    sub_1A38A8B5C();
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC8F8);
  }

  return result;
}

unint64_t sub_1A38A8B5C()
{
  result = qword_1EB0FC900;
  if (!qword_1EB0FC900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC908);
    sub_1A38A8BE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC900);
  }

  return result;
}

unint64_t sub_1A38A8BE8()
{
  result = qword_1EB0FC910;
  if (!qword_1EB0FC910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC918);
    sub_1A38A8CA4();
    sub_1A38AAA7C(&qword_1ED9966D8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC910);
  }

  return result;
}

unint64_t sub_1A38A8CA4()
{
  result = qword_1EB0FC920;
  if (!qword_1EB0FC920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC928);
    sub_1A38A8D5C();
    sub_1A38A08F8(&qword_1ED9966D0, &qword_1EB0FC950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC920);
  }

  return result;
}

unint64_t sub_1A38A8D5C()
{
  result = qword_1EB0FC930;
  if (!qword_1EB0FC930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC940);
    sub_1A3A2FB90();
    sub_1A38A08F8(&qword_1EB0FC948, &qword_1EB0FC940);
    sub_1A38AAA7C(&qword_1ED9966C8, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC930);
  }

  return result;
}

unint64_t sub_1A38A8EA8()
{
  result = qword_1ED9966E0;
  if (!qword_1ED9966E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9966E0);
  }

  return result;
}

unint64_t sub_1A38A8EFC()
{
  result = qword_1ED9966E8;
  if (!qword_1ED9966E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9966E8);
  }

  return result;
}

unint64_t sub_1A38A8F64(unint64_t result)
{
  if (result >= 0x23)
  {
    return sub_1A3A2EA50();
  }

  return result;
}

unint64_t sub_1A38A8F74()
{
  result = qword_1EB0FC960;
  if (!qword_1EB0FC960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC958);
    sub_1A38A902C();
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC960);
  }

  return result;
}

unint64_t sub_1A38A902C()
{
  result = qword_1EB0FC968;
  if (!qword_1EB0FC968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC970);
    sub_1A38A90B8();
    sub_1A38A9888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC968);
  }

  return result;
}

unint64_t sub_1A38A90B8()
{
  result = qword_1EB0FC978;
  if (!qword_1EB0FC978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC980);
    sub_1A38A9144();
    sub_1A38A953C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC978);
  }

  return result;
}

unint64_t sub_1A38A9144()
{
  result = qword_1EB0FC988;
  if (!qword_1EB0FC988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC990);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC998);
    type metadata accessor for ChromeElementIcon();
    sub_1A38A925C();
    sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
    swift_getOpaqueTypeConformance2();
    sub_1A38A9340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC988);
  }

  return result;
}

unint64_t sub_1A38A925C()
{
  result = qword_1EB0FC9A0;
  if (!qword_1EB0FC9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC998);
    sub_1A38A08F8(&qword_1EB0FC9A8, &qword_1EB0FC9B0);
    sub_1A38A08F8(&qword_1ED9966F0, &qword_1EB0FC9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC9A0);
  }

  return result;
}

unint64_t sub_1A38A9340()
{
  result = qword_1EB0FC9C0;
  if (!qword_1EB0FC9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9D0);
    type metadata accessor for ChromeElementIcon();
    sub_1A38A9458();
    sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC9C0);
  }

  return result;
}

unint64_t sub_1A38A9458()
{
  result = qword_1EB0FC9D8;
  if (!qword_1EB0FC9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FC9D0);
    sub_1A38A08F8(&qword_1EB0FC9E0, &qword_1EB0FC9E8);
    sub_1A38A08F8(&qword_1ED9966F8, &qword_1EB0FC9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC9D8);
  }

  return result;
}

unint64_t sub_1A38A953C()
{
  result = qword_1EB0FC9F8;
  if (!qword_1EB0FC9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA00);
    sub_1A38A965C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA28);
    type metadata accessor for ChromeElementIcon();
    sub_1A38A97A8();
    sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FC9F8);
  }

  return result;
}

unint64_t sub_1A38A965C()
{
  result = qword_1EB0FCA08;
  if (!qword_1EB0FCA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA18);
    type metadata accessor for ChromeElementIcon();
    sub_1A38A08F8(&qword_1EB0FCA20, &qword_1EB0FCA18);
    sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCA08);
  }

  return result;
}

unint64_t sub_1A38A97A8()
{
  result = qword_1EB0FCA30;
  if (!qword_1EB0FCA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA28);
    sub_1A38A9834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCA30);
  }

  return result;
}

unint64_t sub_1A38A9834()
{
  result = qword_1EB0FCA38;
  if (!qword_1EB0FCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCA38);
  }

  return result;
}

unint64_t sub_1A38A9888()
{
  result = qword_1EB0FCA40;
  if (!qword_1EB0FCA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA48);
    sub_1A38A9914();
    sub_1A38A9CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCA40);
  }

  return result;
}

unint64_t sub_1A38A9914()
{
  result = qword_1EB0FCA50;
  if (!qword_1EB0FCA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA60);
    type metadata accessor for ChromeElementIcon();
    sub_1A38A9A6C();
    sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCAA0);
    sub_1A38A9C30();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCA50);
  }

  return result;
}

unint64_t sub_1A38A9A6C()
{
  result = qword_1EB0FCA68;
  if (!qword_1EB0FCA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA60);
    sub_1A38A9B24();
    sub_1A38A08F8(&qword_1ED996700, &qword_1EB0FCA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCA68);
  }

  return result;
}

unint64_t sub_1A38A9B24()
{
  result = qword_1EB0FCA70;
  if (!qword_1EB0FCA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA78);
    sub_1A38A08F8(&qword_1EB0FCA80, &qword_1EB0FCA88);
    sub_1A38A9BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCA70);
  }

  return result;
}

unint64_t sub_1A38A9BDC()
{
  result = qword_1EB0FCA90;
  if (!qword_1EB0FCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCA90);
  }

  return result;
}

unint64_t sub_1A38A9C30()
{
  result = qword_1EB0FCAA8;
  if (!qword_1EB0FCAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCAA0);
    sub_1A38AAA7C(&qword_1ED996630, type metadata accessor for ChromeElementIcon);
    sub_1A38A9834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCAA8);
  }

  return result;
}

unint64_t sub_1A38A9CEC()
{
  result = qword_1EB0FCAB0;
  if (!qword_1EB0FCAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCAB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCA28);
    sub_1A38A97A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCAB0);
  }

  return result;
}

uint64_t sub_1A38A9DC8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1A3A2FEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 2)
  {
    return 0;
  }

  sub_1A3A2EA60();
  v10 = a2;
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v24;
  }

  swift_getKeyPath();
  v24 = v10;
  sub_1A38AAA7C(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v12 = *(v10 + 712);

  if (v12 < 10.0)
  {
    if (qword_1EB0FC150 != -1)
    {
      swift_once();
    }

    v13 = qword_1EB101AD8;
    sub_1A3A2EA60();
    v14 = v13;
    if ((a3 & 1) == 0)
    {
      sub_1A3A31C30();
      v15 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v7 + 8))(v9, v6);
      a2 = v24;
    }

    swift_getKeyPath();
    v24 = a2;
    sub_1A3A2F080();

    v16 = *(a2 + 712);

    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v18 = [v14 stringFromNumber_];

    if (v18)
    {
      v19 = sub_1A3A31850();

      return v19;
    }

    return 0;
  }

  sub_1A3A2EA60();
  if ((a3 & 1) == 0)
  {
    sub_1A3A31C30();
    v21 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a2 = v24;
  }

  swift_getKeyPath();
  v24 = a2;
  sub_1A3A2F080();

  v22 = *(a2 + 712);

  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v22 < 9.22337204e18)
  {
    v24 = v22;
    return sub_1A3A321A0();
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1A38AA284()
{
  result = qword_1ED996710;
  if (!qword_1ED996710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED996710);
  }

  return result;
}

unint64_t sub_1A38AA300()
{
  result = qword_1EB0FCB90;
  if (!qword_1EB0FCB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCB80);
    sub_1A38AA3B8();
    sub_1A38A08F8(&qword_1EB0FCBB0, &qword_1EB0FCBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCB90);
  }

  return result;
}

unint64_t sub_1A38AA3B8()
{
  result = qword_1EB0FCB98;
  if (!qword_1EB0FCB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCBA0);
    sub_1A38AA444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCB98);
  }

  return result;
}

unint64_t sub_1A38AA444()
{
  result = qword_1EB0FCBA8;
  if (!qword_1EB0FCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCBA8);
  }

  return result;
}

uint64_t sub_1A38AA4A0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A389F1A4(result, a2, a3 & 1);

    return sub_1A3A2EA50();
  }

  return result;
}

uint64_t sub_1A38AA4E4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1A389F1B4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  sub_1A3670FF4(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_1A38AA610()
{
  result = qword_1EB0FCBE0;
  if (!qword_1EB0FCBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCBE8);
    sub_1A38AA6C8();
    sub_1A38A08F8(&qword_1ED996720, &qword_1EB0FCC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCBE0);
  }

  return result;
}

unint64_t sub_1A38AA6C8()
{
  result = qword_1EB0FCBF0;
  if (!qword_1EB0FCBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCBF8);
    sub_1A38AA780();
    sub_1A38A08F8(&qword_1ED996720, &qword_1EB0FCC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCBF0);
  }

  return result;
}

unint64_t sub_1A38AA780()
{
  result = qword_1EB0FCC00;
  if (!qword_1EB0FCC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCC08);
    sub_1A38A08F8(&qword_1EB0FCC10, &qword_1EB0FCC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCC00);
  }

  return result;
}

unint64_t sub_1A38AA8E0()
{
  result = qword_1EB0FCC68;
  if (!qword_1EB0FCC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCC50);
    sub_1A38AA998();
    sub_1A38A08F8(&qword_1EB0FCC80, &qword_1EB0FCC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCC68);
  }

  return result;
}

unint64_t sub_1A38AA998()
{
  result = qword_1EB0FCC70;
  if (!qword_1EB0FCC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCC60);
    sub_1A38A08F8(&qword_1EB0FCC78, &qword_1EB0FCC58);
    sub_1A38A08F8(&qword_1ED9966A8, &qword_1EB0FC678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCC70);
  }

  return result;
}

uint64_t sub_1A38AAA7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A38AAAC4()
{
  result = qword_1EB0FCD20;
  if (!qword_1EB0FCD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCC48);
    sub_1A38AAB7C();
    sub_1A38A08F8(&qword_1ED9966A8, &qword_1EB0FC678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD20);
  }

  return result;
}

unint64_t sub_1A38AAB7C()
{
  result = qword_1EB0FCD28;
  if (!qword_1EB0FCD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCC40);
    sub_1A38AAC34();
    sub_1A38A08F8(&qword_1EB0FCC80, &qword_1EB0FCC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD28);
  }

  return result;
}

unint64_t sub_1A38AAC34()
{
  result = qword_1EB0FCD30;
  if (!qword_1EB0FCD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCC28);
    sub_1A38A08F8(&qword_1EB0FCD38, &qword_1EB0FCC38);
    sub_1A38A08F8(&qword_1ED996730, &qword_1EB0FCC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD30);
  }

  return result;
}

unint64_t sub_1A38AAD18()
{
  result = qword_1EB0FCD40;
  if (!qword_1EB0FCD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCCB0);
    sub_1A38AADD0();
    sub_1A38A08F8(qword_1ED996740, &qword_1EB0FCD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD40);
  }

  return result;
}

unint64_t sub_1A38AADD0()
{
  result = qword_1EB0FCD48;
  if (!qword_1EB0FCD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCCA0);
    sub_1A38AAE88();
    sub_1A38A08F8(&qword_1ED996738, &qword_1EB0FCCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD48);
  }

  return result;
}

unint64_t sub_1A38AAE88()
{
  result = qword_1EB0FCD50;
  if (!qword_1EB0FCD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCC98);
    sub_1A38A08F8(&qword_1EB0FCD58, &qword_1EB0FCC90);
    sub_1A38A08F8(&qword_1ED9966A8, &qword_1EB0FC678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD50);
  }

  return result;
}

unint64_t sub_1A38AAF6C()
{
  result = qword_1EB0FCD68;
  if (!qword_1EB0FCD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCCD0);
    sub_1A38AB024();
    sub_1A38A08F8(qword_1ED996740, &qword_1EB0FCD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD68);
  }

  return result;
}

unint64_t sub_1A38AB024()
{
  result = qword_1EB0FCD70;
  if (!qword_1EB0FCD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCCC8);
    sub_1A38AB0DC();
    sub_1A38A08F8(&qword_1ED996738, &qword_1EB0FCCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD70);
  }

  return result;
}

unint64_t sub_1A38AB0DC()
{
  result = qword_1EB0FCD78;
  if (!qword_1EB0FCD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCCC0);
    sub_1A38A08F8(&qword_1EB0FCD80, &qword_1EB0FCCB8);
    sub_1A38A08F8(&qword_1ED9966A8, &qword_1EB0FC678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD78);
  }

  return result;
}

unint64_t sub_1A38AB1C0()
{
  result = qword_1EB0FCD88;
  if (!qword_1EB0FCD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCCF0);
    sub_1A38AB278();
    sub_1A38A08F8(&qword_1EB0FCC80, &qword_1EB0FCC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD88);
  }

  return result;
}

unint64_t sub_1A38AB278()
{
  result = qword_1EB0FCD90;
  if (!qword_1EB0FCD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCCE8);
    sub_1A38AB304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD90);
  }

  return result;
}

unint64_t sub_1A38AB304()
{
  result = qword_1EB0FCD98;
  if (!qword_1EB0FCD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCCE0);
    sub_1A38A08F8(&qword_1EB0FCDA0, &qword_1EB0FCCD8);
    sub_1A38A08F8(&qword_1ED9966A8, &qword_1EB0FC678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCD98);
  }

  return result;
}

unint64_t sub_1A38AB3E8()
{
  result = qword_1EB0FCDA8;
  if (!qword_1EB0FCDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCD18);
    sub_1A38AB4A0();
    sub_1A38A08F8(&qword_1ED996738, &qword_1EB0FCCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCDA8);
  }

  return result;
}

unint64_t sub_1A38AB4A0()
{
  result = qword_1EB0FCDB0;
  if (!qword_1EB0FCDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCD10);
    sub_1A38AB558();
    sub_1A38A08F8(&qword_1EB0FCC80, &qword_1EB0FCC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCDB0);
  }

  return result;
}

unint64_t sub_1A38AB558()
{
  result = qword_1EB0FCDB8;
  if (!qword_1EB0FCDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCD08);
    sub_1A38AB5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCDB8);
  }

  return result;
}

unint64_t sub_1A38AB5E4()
{
  result = qword_1EB0FCDC0;
  if (!qword_1EB0FCDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FCD00);
    sub_1A38A08F8(&qword_1EB0FCDC8, &qword_1EB0FCCF8);
    sub_1A38A08F8(&qword_1ED9966A8, &qword_1EB0FC678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCDC0);
  }

  return result;
}

uint64_t sub_1A38AB6FC()
{
  v1 = *v0;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](v1);
  return sub_1A3A32300();
}

void sub_1A38AB78C()
{
  sub_1A38BF170(319, &qword_1ED9967B0, &qword_1EB0FCDD8, &unk_1A3A6DA78, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1A38AB898(319, &qword_1ED9967B8, type metadata accessor for ChromeViewModel);
    if (v1 <= 0x3F)
    {
      sub_1A38AB898(319, qword_1ED9967C0, MEMORY[0x1E697F6A0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A38AB898(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A3A2F640();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ChromeTopBar.Position(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChromeTopBar.Position(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A38ABA4C()
{
  result = qword_1EB0FCDE0;
  if (!qword_1EB0FCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FCDE0);
  }

  return result;
}

uint64_t sub_1A38ABAA0()
{
  v1 = *v0;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](v1);
  return sub_1A3A32300();
}

uint64_t sub_1A38ABB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDF0);
  v3 = MEMORY[0x1EEE9AC00](v96);
  v99 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v97 = &v92 - v5;
  v6 = sub_1A3A2FEE0();
  v101 = *(v6 - 8);
  v102 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3A30090();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v92 - v13;
  v95 = sub_1A3A30DB0();
  v103 = a1;
  sub_1A38AC7DC(v14);
  (*(v9 + 16))(v12, v14, v8);
  v15 = (*(v9 + 88))(v12, v8);
  v18 = v15 == *MEMORY[0x1E697F658] || v15 == *MEMORY[0x1E697F690] || v15 == *MEMORY[0x1E697F698] || v15 == *MEMORY[0x1E697F680];
  if (v18 || v15 == *MEMORY[0x1E697F650] || v15 == *MEMORY[0x1E697F660] || v15 == *MEMORY[0x1E697F630] || v15 == *MEMORY[0x1E697F670] || v15 == *MEMORY[0x1E697F668] || v15 == *MEMORY[0x1E697F678] || v15 == *MEMORY[0x1E697F640] || v15 == *MEMORY[0x1E697F648])
  {
    (*(v9 + 8))(v14, v8);
    sub_1A3A31480();
    sub_1A3A2F780();
    v19 = v172;
    v20 = v173;
    v21 = v174;
    v22 = v175;
    v93 = v177;
    v94 = v176;
    KeyPath = swift_getKeyPath();
    v24 = *(v103 + 48);
    v25 = *(v103 + 56);
    if (v25 == 1)
    {
      v165 = *(v103 + 48);
      sub_1A3A2EA60();
      v26 = v24;
    }

    else
    {
      sub_1A3A2EA60();
      sub_1A3A31C30();
      v27 = sub_1A3A305C0();
      sub_1A3A2F270();

      v28 = v100;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v101 + 8))(v28, v102);
      v26 = v165;
    }

    v29 = swift_allocObject();
    *(v29 + 16) = 0x77656956746F6F52;
    *(v29 + 24) = 0xE800000000000000;
    v30 = swift_allocObject();
    *(v30 + 16) = v26;
    *(v30 + 24) = KeyPath;
    v169 = v20;
    v167 = v22;
    *&v159 = v95;
    *(&v159 + 1) = v19;
    LOBYTE(v160) = v20;
    *(&v160 + 1) = *v168;
    DWORD1(v160) = *&v168[3];
    *(&v160 + 1) = v21;
    LOBYTE(v161) = v22;
    *(&v161 + 1) = *v166;
    DWORD1(v161) = *&v166[3];
    *(&v161 + 1) = v94;
    *&v162 = v93;
    *(&v162 + 1) = sub_1A38BC230;
    *&v163 = v29;
    *(&v163 + 1) = sub_1A38BC24C;
    v164 = v30;
    sub_1A3A2EA60();
    v31 = v24;
    if ((v25 & 1) == 0)
    {
      sub_1A3A31C30();
      v32 = sub_1A3A305C0();
      sub_1A3A2F270();

      v33 = v100;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v101 + 8))(v33, v102);
      v31 = *&v142[0];
    }

    swift_getKeyPath();
    *&v142[0] = v31;
    sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v34 = *(v31 + 400);
    v35 = *(v31 + 408);

    sub_1A3A2EA60();
    v36 = v24;
    if ((v25 & 1) == 0)
    {
      sub_1A3A31C30();
      v37 = sub_1A3A305C0();
      sub_1A3A2F270();

      v38 = v100;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v101 + 8))(v38, v102);
      v36 = *&v142[0];
    }

    swift_getKeyPath();
    *&v142[0] = v36;
    sub_1A3A2F080();

    sub_1A3A2EA60();
    if ((v25 & 1) == 0)
    {
      sub_1A3A31C30();
      v39 = sub_1A3A305C0();
      sub_1A3A2F270();

      v40 = v100;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v101 + 8))(v40, v102);
      v24 = *&v142[0];
    }

    swift_getKeyPath();
    *&v142[0] = v24;
    sub_1A3A2F080();

    v41 = sub_1A3A30620();
    type metadata accessor for ChromeViewSpec();
    sub_1A391049C(v34, v35);
    sub_1A3A2F520();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v155 = v161;
    v156 = v162;
    v157 = v163;
    v158 = v164;
    v153 = v159;
    v154 = v160;
    v151 = 0;
    sub_1A388F6D8(&v159, v142, &qword_1EB0FCDF8);
    v50 = sub_1A3A30600();
    v106 = v155;
    v107 = v156;
    v108 = v157;
    *&v109 = v158;
    v104 = v153;
    v105 = v154;
    BYTE8(v109) = v41;
    *(&v109 + 9) = *v152;
    HIDWORD(v109) = *&v152[3];
    *&v110 = v43;
    *(&v110 + 1) = v45;
    *&v111 = v47;
    *(&v111 + 1) = v49;
    v51 = v151;
    v112 = v151;
    sub_1A3A2F520();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_1A388F740(&v159, &qword_1EB0FCDF8);
    v128 = v110;
    v129 = v111;
    LOBYTE(v130) = v112;
    v124 = v106;
    v125 = v107;
    v126 = v108;
    v127 = v109;
    v122 = v104;
    v123 = v105;
    v170 = 0;
    v113[2] = v155;
    v113[3] = v156;
    v113[4] = v157;
    v114 = v158;
    v113[0] = v153;
    v113[1] = v154;
    v115 = v41;
    *v116 = *v152;
    *&v116[3] = *&v152[3];
    v117 = v43;
    v118 = v45;
    v119 = v47;
    v120 = v49;
    v121 = v51;
    sub_1A388F6D8(&v104, v142, &qword_1EB0FCE00);
    sub_1A388F740(v113, &qword_1EB0FCE00);
    v60 = v97;
    *v97 = 1;
    v61 = v170;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE08);
    sub_1A38AC9E4(v60 + *(v62 + 36));
    type metadata accessor for ChromeViewModel();
    v63 = sub_1A3A2F650();
    v65 = v64;
    v66 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE10) + 36);
    *v66 = 1;
    *(v66 + 8) = v63;
    *(v66 + 16) = v65 & 1;
    v67 = sub_1A3A2F650();
    v69 = v68;
    v70 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE18) + 36);
    *v70 = 1;
    *(v70 + 8) = v67;
    *(v70 + 16) = v69 & 1;
    v71 = sub_1A3A2F650();
    v73 = v72;
    v74 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE20) + 36);
    *v74 = v71;
    *(v74 + 8) = v73 & 1;
    v75 = sub_1A3A2F650();
    v77 = v76;
    v78 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE28) + 36);
    *v78 = v75;
    *(v78 + 8) = v77 & 1;
    v79 = sub_1A3A2F650();
    v80 = v60 + *(v96 + 36);
    *v80 = sub_1A393C140;
    *(v80 + 8) = 0;
    *(v80 + 16) = v79;
    *(v80 + 24) = v81 & 1;
    v82 = v99;
    sub_1A388F6D8(v60, v99, &qword_1EB0FCDF0);
    v136 = v128;
    v137 = v129;
    *&v138 = v130;
    v132 = v124;
    v133 = v125;
    v83 = v127;
    v134 = v126;
    v135 = v127;
    v84 = v123;
    v131[0] = v122;
    v131[1] = v123;
    BYTE8(v138) = v50;
    *(&v138 + 9) = *v171;
    HIDWORD(v138) = *&v171[3];
    *&v139 = v53;
    *(&v139 + 1) = v55;
    *&v140 = v57;
    *(&v140 + 1) = v59;
    v141 = v61;
    v85 = v98;
    *(v98 + 176) = v61;
    v86 = v133;
    v85[4] = v134;
    v85[5] = v83;
    v87 = v137;
    v85[6] = v136;
    v85[7] = v87;
    v88 = v132;
    *v85 = v131[0];
    v85[1] = v84;
    v85[2] = v88;
    v85[3] = v86;
    v89 = v140;
    v85[9] = v139;
    v85[10] = v89;
    v85[8] = v138;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE30);
    sub_1A388F6D8(v82, v85 + *(v90 + 48), &qword_1EB0FCDF0);
    sub_1A388F6D8(v131, v142, &qword_1EB0FCE38);
    sub_1A388F740(v60, &qword_1EB0FCDF0);
    sub_1A388F740(v82, &qword_1EB0FCDF0);
    v142[6] = v128;
    v142[7] = v129;
    v143 = v130;
    v142[2] = v124;
    v142[3] = v125;
    v142[4] = v126;
    v142[5] = v127;
    v142[0] = v122;
    v142[1] = v123;
    v144 = v50;
    *v145 = *v171;
    *&v145[3] = *&v171[3];
    v146 = v53;
    v147 = v55;
    v148 = v57;
    v149 = v59;
    v150 = v61;
    return sub_1A388F740(v142, &qword_1EB0FCE38);
  }

  else
  {
    result = sub_1A3A32070();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A38AC7DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ChromeTopBar(0);
  sub_1A388F6D8(v1 + *(v10 + 28), v9, &qword_1EB0FCE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A3A30090();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A3A31C30();
    v13 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A38AC9E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v3 = type metadata accessor for ChromeTopBar(0);
  v85 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v86 = v4;
  v87 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE40);
  MEMORY[0x1EEE9AC00](v82);
  v6 = v75 - v5;
  v7 = sub_1A3A2FEE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE48);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (v75 - v12);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE50);
  MEMORY[0x1EEE9AC00](v81);
  v84 = v75 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE58);
  MEMORY[0x1EEE9AC00](v83);
  v89 = v75 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE60);
  MEMORY[0x1EEE9AC00](v88);
  v90 = v75 - v16;
  *v13 = sub_1A3A31480();
  v13[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE68);
  v19 = v13;
  sub_1A38AD53C(v2, v13 + *(v18 + 44));
  v20 = *(v2 + 8);
  v21 = *(v2 + 32);
  v22 = *(v2 + 40);
  v96 = *v2;
  v97 = v20;
  v98 = *(v2 + 16);
  v99 = v21;
  v100 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70);
  MEMORY[0x1A58F7010](v94, v23);
  v79 = v94[0];
  v78 = v94[1];
  v77 = v94[2];
  v76 = v95;
  v24 = *(v2 + 48);
  v80 = v2;
  v25 = *(v2 + 56);
  sub_1A3A2EA60();
  v26 = v24;
  if ((v25 & 1) == 0)
  {
    sub_1A3A31C30();
    v27 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    v26 = v96;
  }

  swift_getKeyPath();
  v96 = v26;
  v93 = sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v28 = *(v26 + 400);
  v29 = *(v26 + 408);

  sub_1A3A2EA60();
  v30 = v24;
  if ((v25 & 1) == 0)
  {
    sub_1A3A31C30();
    v31 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    v30 = v96;
  }

  swift_getKeyPath();
  v96 = v30;
  sub_1A3A2F080();

  v75[2] = *(v30 + 416);

  sub_1A3A2EA60();
  v32 = v24;
  v92 = v25;
  if ((v25 & 1) == 0)
  {
    sub_1A3A31C30();
    v33 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    v32 = v96;
  }

  swift_getKeyPath();
  v96 = v32;
  sub_1A3A2F080();

  v34 = sub_1A3A30620();
  type metadata accessor for ChromeViewSpec();
  sub_1A391049C(v28, v29);
  sub_1A3A2F520();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_1A388F6D8(v13, v6, &qword_1EB0FCE48);
  v43 = &v6[*(v82 + 36)];
  *v43 = v34;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  v44 = sub_1A3A30600();
  v45 = v76;
  sub_1A3A2F520();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_1A38BC250(v79, v78, v77, v45);
  sub_1A388F740(v19, &qword_1EB0FCE48);
  v54 = v84;
  sub_1A388F670(v6, v84, &qword_1EB0FCE40);
  v55 = v54 + *(v81 + 36);
  *v55 = v44;
  *(v55 + 8) = v47;
  *(v55 + 16) = v49;
  *(v55 + 24) = v51;
  *(v55 + 32) = v53;
  *(v55 + 40) = 0;
  v56 = v87;
  sub_1A38BD254(v80, v87, type metadata accessor for ChromeTopBar);
  v57 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v58 = swift_allocObject();
  sub_1A38BD2BC(v56, v58 + v57, type metadata accessor for ChromeTopBar);
  v59 = v54;
  v60 = v89;
  sub_1A388F670(v59, v89, &qword_1EB0FCE50);
  v61 = (v60 + *(v83 + 36));
  *v61 = sub_1A38C0494;
  v61[1] = 0;
  v61[2] = sub_1A38BC264;
  v61[3] = v58;
  v62 = sub_1A3A314E0();
  sub_1A3A2EA60();
  v63 = v24;
  if ((v92 & 1) == 0)
  {
    sub_1A3A31C30();
    v64 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    v63 = v96;
  }

  swift_getKeyPath();
  v96 = v63;
  sub_1A3A2F080();

  v65 = *(v63 + 616);
  sub_1A3A2EA60();

  swift_getKeyPath();
  v96 = v65;
  sub_1A38BC290(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel);
  sub_1A3A2F080();

  v66 = *(v65 + 18);

  v67 = v90;
  sub_1A388F670(v60, v90, &qword_1EB0FCE58);
  v68 = v67 + *(v88 + 36);
  *v68 = v62;
  *(v68 + 8) = v66;
  v69 = sub_1A3A314E0();
  sub_1A3A2EA60();
  if ((v92 & 1) == 0)
  {
    sub_1A3A31C30();
    v70 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    v24 = v96;
  }

  swift_getKeyPath();
  v96 = v24;
  sub_1A3A2F080();

  v71 = *(v24 + 904);

  v72 = v91;
  sub_1A388F670(v67, v91, &qword_1EB0FCE60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE80);
  v74 = (v72 + *(result + 36));
  *v74 = v69;
  v74[1] = v71;
  return result;
}

uint64_t sub_1A38AD53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v3 = sub_1A3A30090();
  v130 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v128 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v127 - v6;
  v8 = sub_1A3A2FF70();
  v138 = *(v8 - 8);
  v139 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v136 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v127 - v11;
  v12 = type metadata accessor for ChromeTopBar(0);
  v145 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v156 = v13;
  v157 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE88);
  MEMORY[0x1EEE9AC00](v147);
  v15 = &v127 - v14;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE90);
  v132 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v127 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE98);
  v133 = *(v17 - 8);
  v134 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v150 = &v127 - v18;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCEA0);
  v19 = MEMORY[0x1EEE9AC00](v135);
  v142 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v153 = &v127 - v21;
  v22 = sub_1A3A2FEE0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCEA8);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v141 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v127 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCEB0);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v152 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v127 - v34;
  *v35 = sub_1A3A2FF30();
  *(v35 + 1) = 0;
  v35[16] = 0;
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCEB8) + 44);
  v151 = v35;
  sub_1A38AEA68(a1, &v35[v36]);
  *v30 = sub_1A3A2FF30();
  *(v30 + 1) = 0;
  v30[16] = 1;
  v37 = *(a1 + 48);
  v159 = *(a1 + 56);
  v154 = v25;
  v155 = v23;
  v131 = v3;
  v129 = v7;
  if (v159 == 1)
  {
    *&v176 = v37;
    sub_1A3A2EA60();
    v38 = v37;
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v39 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v23 + 8))(v25, v22);
    v38 = v176;
  }

  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCEC0) + 44);
  v140 = v30;
  v41 = &v30[v40];
  sub_1A395CB84(v38);
  v43 = v42;

  v158 = a1;
  sub_1A38AEDFC(v43, 1, v41);

  KeyPath = swift_getKeyPath();
  sub_1A3A2EA60();
  v45 = v37;
  if ((v159 & 1) == 0)
  {
    sub_1A3A31C30();
    v46 = sub_1A3A305C0();
    sub_1A3A2F270();

    v47 = v154;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v155 + 8))(v47, v22);
    v45 = v176;
  }

  v48 = swift_allocObject();
  *(v48 + 16) = 0x77656956746F6F52;
  *(v48 + 24) = 0xE800000000000000;
  v49 = swift_allocObject();
  *(v49 + 16) = v45;
  *(v49 + 24) = KeyPath;
  v50 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCEC8) + 36));
  *v50 = sub_1A38C0490;
  v50[1] = v48;
  v50[2] = sub_1A38C0498;
  v50[3] = v49;
  *v15 = sub_1A3A2FF30();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCED0);
  v52 = v158;
  sub_1A38AF204(v158, &v15[*(v51 + 44)]);
  sub_1A3A2EA60();
  v53 = v37;
  if ((v159 & 1) == 0)
  {
    sub_1A3A31C30();
    v54 = sub_1A3A305C0();
    sub_1A3A2F270();

    v55 = v154;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v155 + 8))(v55, v22);
    v53 = v176;
  }

  v144 = v22;
  swift_getKeyPath();
  *&v176 = v53;
  v146 = sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v56 = *(v53 + 584);

  *&v176 = v56;
  v57 = v157;
  sub_1A38BD254(v52, v157, type metadata accessor for ChromeTopBar);
  v58 = (*(v145 + 80) + 16) & ~*(v145 + 80);
  v145 = *(v145 + 80);
  v59 = swift_allocObject();
  sub_1A38BD2BC(v57, v59 + v58, type metadata accessor for ChromeTopBar);
  v60 = sub_1A38A08F8(&qword_1EB0FCED8, &qword_1EB0FCE88);
  v61 = sub_1A38BCE7C();
  sub_1A3A30CA0();

  sub_1A388F740(v15, &qword_1EB0FCE88);
  sub_1A3A2EA60();
  v62 = v37;
  if ((v159 & 1) == 0)
  {
    sub_1A3A31C30();
    v63 = sub_1A3A305C0();
    sub_1A3A2F270();

    v64 = v154;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v155 + 8))(v64, v144);
    v62 = v176;
  }

  swift_getKeyPath();
  *&v176 = v62;
  sub_1A3A2F080();

  v65 = *(v62 + 1154);

  LOBYTE(v171) = v65;
  v66 = v157;
  sub_1A38BD254(v158, v157, type metadata accessor for ChromeTopBar);
  v67 = swift_allocObject();
  sub_1A38BD2BC(v66, v67 + v58, type metadata accessor for ChromeTopBar);
  *&v176 = v147;
  *(&v176 + 1) = &type metadata for ChromeRecordingState;
  *&v177 = v60;
  *(&v177 + 1) = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = MEMORY[0x1E69E6370];
  v70 = MEMORY[0x1E69E6388];
  v71 = v149;
  v72 = v148;
  sub_1A3A30CA0();

  (*(v132 + 8))(v72, v71);
  sub_1A3A2EA60();
  v73 = v37;
  if ((v159 & 1) == 0)
  {
    sub_1A3A31C30();
    v74 = sub_1A3A305C0();
    sub_1A3A2F270();

    v75 = v154;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v155 + 8))(v75, v144);
    v73 = v176;
  }

  swift_getKeyPath();
  *&v176 = v73;
  sub_1A3A2F080();

  v76 = *(v73 + 1153);

  LOBYTE(v171) = v76;
  v77 = v157;
  sub_1A38BD254(v158, v157, type metadata accessor for ChromeTopBar);
  v78 = swift_allocObject();
  sub_1A38BD2BC(v77, v78 + v58, type metadata accessor for ChromeTopBar);
  *&v176 = v149;
  *(&v176 + 1) = v69;
  *&v177 = OpaqueTypeConformance2;
  *(&v177 + 1) = v70;
  swift_getOpaqueTypeConformance2();
  v79 = v153;
  v80 = v134;
  v81 = v150;
  sub_1A3A30CA0();

  (*(v133 + 8))(v81, v80);
  type metadata accessor for ChromeViewModel();
  v82 = sub_1A3A2F650();
  LOBYTE(v80) = v83;
  v84 = v79 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCEE0) + 36);
  *v84 = sub_1A393C1E0;
  *(v84 + 8) = 0;
  *(v84 + 16) = v82;
  *(v84 + 24) = v80 & 1;
  v85 = v137;
  sub_1A3A2FF60();
  v87 = v138;
  v86 = v139;
  (*(v138 + 16))(v136, v85, v139);
  sub_1A38BC290(&qword_1EB0FCEE8, MEMORY[0x1E697F400]);
  v88 = sub_1A3A2F7F0();
  (*(v87 + 8))(v85, v86);
  *(v79 + *(v135 + 36)) = v88;
  if (v159)
  {
    v181 = v37;
    sub_1A3A2EA60();
  }

  else
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v89 = sub_1A3A305C0();
    sub_1A3A2F270();

    v90 = v154;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v155 + 8))(v90, v144);
    v37 = v181;
  }

  swift_getKeyPath();
  *&v176 = v37;
  sub_1A3A2F080();

  v92 = *(v37 + 24);
  v91 = *(v37 + 32);
  v93 = *(v37 + 40);
  v94 = *(v37 + 48);
  sub_1A38BCF64(v92, v91, v93, *(v37 + 48));

  if (v94 != 1)
  {
    if (v94 == 255)
    {
LABEL_21:
      v180 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
LABEL_22:
      v99 = v152;
      sub_1A388F6D8(v151, v152, &qword_1EB0FCEB0);
      v101 = v140;
      v100 = v141;
      sub_1A388F6D8(v140, v141, &qword_1EB0FCEA8);
      v102 = v153;
      v103 = v142;
      sub_1A388F6D8(v153, v142, &qword_1EB0FCEA0);
      v163 = v178;
      v164 = v179;
      v165 = v180;
      v161 = v176;
      v162 = v177;
      v104 = v99;
      v105 = v143;
      sub_1A388F6D8(v104, v143, &qword_1EB0FCEB0);
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCEF0);
      sub_1A388F6D8(v100, v105 + v106[12], &qword_1EB0FCEA8);
      sub_1A388F6D8(v103, v105 + v106[16], &qword_1EB0FCEA0);
      v107 = v105 + v106[20];
      v169 = v164;
      v170 = v165;
      v167 = v162;
      v168 = v163;
      v166 = v161;
      sub_1A388F6D8(&v166, &v171, &qword_1EB0FCEF8);
      sub_1A388F740(&v176, &qword_1EB0FCEF8);
      v108 = v167;
      v109 = v169;
      *(v107 + 32) = v168;
      *(v107 + 48) = v109;
      *(v107 + 64) = v170;
      *v107 = v166;
      *(v107 + 16) = v108;
      sub_1A388F740(v102, &qword_1EB0FCEA0);
      sub_1A388F740(v101, &qword_1EB0FCEA8);
      sub_1A388F740(v151, &qword_1EB0FCEB0);
      v173 = v163;
      v174 = v164;
      v175 = v165;
      v171 = v161;
      v172 = v162;
      sub_1A388F740(&v171, &qword_1EB0FCEF8);
      sub_1A388F740(v103, &qword_1EB0FCEA0);
      sub_1A388F740(v100, &qword_1EB0FCEA8);
      return sub_1A388F740(v152, &qword_1EB0FCEB0);
    }

    v95 = v92;
    v96 = v91;
    v97 = v93;
    v98 = v94;
LABEL_20:
    sub_1A38BC250(v95, v96, v97, v98);
    goto LABEL_21;
  }

  if (v92 == 35)
  {
    v95 = 35;
    v96 = v91;
    v97 = v93;
    v98 = 1;
    goto LABEL_20;
  }

  v111 = sub_1A3A018A8(v92, 0x19uLL);
  sub_1A38BC250(v92, v91, v93, 1);
  if ((v111 & 1) == 0)
  {
    goto LABEL_21;
  }

  v112 = sub_1A3A2F650();
  v114 = v113;
  v115 = v129;
  sub_1A38AC7DC(v129);
  v117 = v130;
  v116 = v131;
  v118 = v128;
  (*(v130 + 16))(v128, v115, v131);
  v119 = (*(v117 + 88))(v118, v116);
  if (v119 == *MEMORY[0x1E697F658] || v119 == *MEMORY[0x1E697F690] || v119 == *MEMORY[0x1E697F698] || v119 == *MEMORY[0x1E697F680] || v119 == *MEMORY[0x1E697F650] || v119 == *MEMORY[0x1E697F660] || v119 == *MEMORY[0x1E697F630] || v119 == *MEMORY[0x1E697F670] || v119 == *MEMORY[0x1E697F668] || v119 == *MEMORY[0x1E697F678] || v119 == *MEMORY[0x1E697F640] || v119 == *MEMORY[0x1E697F648])
  {
    (*(v117 + 8))(v115, v116);
    sub_1A3A31480();
    sub_1A3A2F780();
    v120 = v182;
    v121 = v184;
    v122 = v186;
    v123 = v187;
    LOBYTE(v166) = v114 & 1;
    LOBYTE(v161) = v183;
    v160 = v185;
    sub_1A3A31590();
    *&v176 = 0;
    *(&v176 + 1) = v124;
    *&v177 = v125;
    *(&v177 + 1) = 0x4020000000000000;
    *&v171 = 0x3FF0000000000000;
    *(&v171 + 1) = v124;
    *&v172 = v125;
    *(&v172 + 1) = 0x4020000000000000;
    sub_1A38BCFA8();
    v126 = sub_1A3A2F7E0();
    *&v176 = v112;
    BYTE8(v176) = v166;
    *&v177 = v120;
    BYTE8(v177) = v161;
    *&v178 = v121;
    BYTE8(v178) = v160;
    *&v179 = v122;
    *(&v179 + 1) = v123;
    v180 = v126;
    sub_1A3A2EA60();
    sub_1A3A2EA60();
    goto LABEL_22;
  }

  result = sub_1A3A32070();
  __break(1u);
  return result;
}

uint64_t sub_1A38AEA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCEC8);
  v7 = MEMORY[0x1EEE9AC00](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  sub_1A3A2EA60();
  v14 = v12;
  if ((v13 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v14 = v28;
  }

  v16 = sub_1A395C540(v14);

  sub_1A38AEDFC(v16, 0, v11);

  KeyPath = swift_getKeyPath();
  sub_1A3A2EA60();
  if ((v13 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v12 = v28;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = 0x77656956746F6F52;
  *(v19 + 24) = 0xE800000000000000;
  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  *(v20 + 24) = KeyPath;
  v21 = &v11[*(v26 + 36)];
  *v21 = sub_1A38C0490;
  *(v21 + 1) = v19;
  *(v21 + 2) = sub_1A38C0498;
  *(v21 + 3) = v20;
  sub_1A388F6D8(v11, v9, &qword_1EB0FCEC8);
  v22 = v27;
  sub_1A388F6D8(v9, v27, &qword_1EB0FCEC8);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF20) + 48);
  *v23 = 0;
  *(v23 + 8) = 0;
  sub_1A388F740(v11, &qword_1EB0FCEC8);
  return sub_1A388F740(v9, &qword_1EB0FCEC8);
}

uint64_t sub_1A38AEDFC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1A3A2FF70();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF08);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  if (*(a1 + 16))
  {
    v19 = v3[1];
    v20 = v3[4];
    v21 = *(v3 + 40);
    v45 = *v3;
    v46 = v19;
    v47 = *(v3 + 1);
    v48 = v20;
    v49 = v21;
    v39 = v15;
    v40 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70);
    sub_1A3A311B0();
    v35 = v42;
    v36 = v41;
    v22 = v43;
    v38 = a3;
    v23 = v44;
    KeyPath = swift_getKeyPath();
    v25 = type metadata accessor for ChromeTopBar.GroupsView(0);
    v37 = v11;
    *&v18[*(v25 + 36)] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
    swift_storeEnumTagMultiPayload();
    v26 = v35;
    *v18 = v36;
    *(v18 + 1) = v26;
    *(v18 + 4) = v22;
    v18[40] = v23;
    *(v18 + 6) = a1;
    v18[56] = a2;
    type metadata accessor for ChromeViewModel();
    sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2EA50();
    *(v18 + 8) = sub_1A3A2F650();
    v18[72] = v27 & 1;
    sub_1A3A2FF60();
    (*(v8 + 16))(v37, v13, v7);
    sub_1A38BC290(&qword_1EB0FCEE8, MEMORY[0x1E697F400]);
    v28 = sub_1A3A2F7F0();
    (*(v8 + 8))(v13, v7);
    *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF10) + 36)] = v28;
    v29 = sub_1A3A314E0();
    v30 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF18) + 36)];
    *v30 = v29;
    v30[1] = a1;
    v32 = v38;
    v31 = v39;
    v18[*(v39 + 52)] = a2;
    sub_1A388F670(v18, v32, &qword_1EB0FCF08);
    (*(v40 + 56))(v32, 0, 1, v31);
    return sub_1A3A2EA50();
  }

  else
  {
    v34 = *(v16 + 56);

    return v34(a3, 1, 1);
  }
}

uint64_t sub_1A38AF204@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v3 = sub_1A3A2FEE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCEC8);
  v7 = MEMORY[0x1EEE9AC00](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  sub_1A3A2EA60();
  v14 = v12;
  if ((v13 & 1) == 0)
  {
    sub_1A3A31C30();
    v15 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v14 = v28;
  }

  v16 = sub_1A395CDB8(v14);

  sub_1A38AEDFC(v16, 2, v11);

  KeyPath = swift_getKeyPath();
  sub_1A3A2EA60();
  if ((v13 & 1) == 0)
  {
    sub_1A3A31C30();
    v18 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v12 = v28;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = 0x77656956746F6F52;
  *(v19 + 24) = 0xE800000000000000;
  v20 = swift_allocObject();
  *(v20 + 16) = v12;
  *(v20 + 24) = KeyPath;
  v21 = &v11[*(v26 + 36)];
  *v21 = sub_1A38C0490;
  *(v21 + 1) = v19;
  *(v21 + 2) = sub_1A38C0498;
  *(v21 + 3) = v20;
  sub_1A388F6D8(v11, v9, &qword_1EB0FCEC8);
  v22 = v27;
  *v27 = 0;
  *(v22 + 8) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF00);
  sub_1A388F6D8(v9, v22 + *(v23 + 48), &qword_1EB0FCEC8);
  sub_1A388F740(v11, &qword_1EB0FCEC8);
  return sub_1A388F740(v9, &qword_1EB0FCEC8);
}

uint64_t sub_1A38AF594(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (v2 == 1)
    {
      MEMORY[0x1EEE9AC00](result);
      sub_1A3A314E0();
      sub_1A3A2F8A0();
    }

    else
    {
      result = sub_1A3A321F0();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A38AF664(uint64_t result, _BYTE *a2)
{
  if (*a2 == 1)
  {
    MEMORY[0x1EEE9AC00](result);
    sub_1A3A314E0();
    sub_1A3A2F8A0();
  }

  return result;
}

uint64_t sub_1A38AF784(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a2 + 8);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v26 = *a2;
  v27 = v9;
  v28 = *(a2 + 16);
  v29 = v10;
  v30 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70);
  MEMORY[0x1A58F7010](v24, v12);
  v13 = v25;
  if (v25 == 255)
  {
    goto LABEL_6;
  }

  sub_1A38BC250(v24[0], v24[1], v24[2], v25);
  if (v13)
  {
    goto LABEL_6;
  }

  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  sub_1A3A2EA60();
  if ((v15 & 1) == 0)
  {
    sub_1A3A31C30();
    v16 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v14 = v26;
  }

  swift_getKeyPath();
  v26 = v14;
  sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v17 = v14[100];

  if ((v17 - 3) >= 2)
  {
LABEL_6:
    v19 = *(a2 + 48);
    v20 = *(a2 + 56);
    sub_1A3A2EA60();
    if ((v20 & 1) == 0)
    {
      sub_1A3A31C30();
      v21 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v19 = v26;
    }

    v19[7] = v8;
    v22 = v19[153];
    v23 = v19[154];
    __swift_project_boxed_opaque_existential_1(v19 + 150, v22);
    (*(v23 + 8))(v8, 0, 0, 156, v19, v22, v23);
  }

  return result;
}

uint64_t sub_1A38AFAAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ChromeTopBar.GroupsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A3A30090();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF38);
  MEMORY[0x1EEE9AC00](v14);
  v18 = *(v2 + 48);
  if (*(v18 + 16))
  {
    v41[1] = v6;
    v42 = v16;
    v19 = v5;
    v20 = v15;
    v43 = a1;
    v41[0] = v41 - v17;
    *(v41 - v17) = 2;
    sub_1A39A13F8(v13);
    (*(v8 + 16))(v11, v13, v7);
    v21 = (*(v8 + 88))(v11, v7);
    if (v21 == *MEMORY[0x1E697F658] || v21 == *MEMORY[0x1E697F690] || v21 == *MEMORY[0x1E697F698] || v21 == *MEMORY[0x1E697F680])
    {
      v25 = v2;
      v26 = 0x4020000000000000;
      v27 = v20;
    }

    else
    {
      v27 = v20;
      if (v21 != *MEMORY[0x1E697F650])
      {
        v30 = v19;
        if (v21 == *MEMORY[0x1E697F660])
        {
          v25 = v2;
          v26 = 0x4025570A3D70A3D7;
        }

        else
        {
          v26 = 0x4028000000000000;
          if (v21 != *MEMORY[0x1E697F630] && v21 != *MEMORY[0x1E697F670] && v21 != *MEMORY[0x1E697F668] && v21 != *MEMORY[0x1E697F678])
          {
            v25 = v2;
            if (v21 == *MEMORY[0x1E697F640] || v21 == *MEMORY[0x1E697F648])
            {
              goto LABEL_20;
            }

            sub_1A3A32070();
            __break(1u);
          }

          v25 = v2;
        }

LABEL_20:
        v31 = v41[0];
        v32 = v41[0] + *(v27 + 36);
        v33 = v13;
        v34 = v27;
        (*(v8 + 8))(v33, v7);
        *v32 = sub_1A3A2FF40();
        *(v32 + 8) = v26;
        *(v32 + 16) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF40);
        v45 = sub_1A38BC40C(v18);
        swift_getKeyPath();
        v35 = v25;
        v36 = v44;
        sub_1A38BD254(v35, v44, type metadata accessor for ChromeTopBar.GroupsView);
        v37 = (*(v30 + 80) + 16) & ~*(v30 + 80);
        v38 = swift_allocObject();
        sub_1A38BD2BC(v36, v38 + v37, type metadata accessor for ChromeTopBar.GroupsView);
        v39 = swift_allocObject();
        *(v39 + 16) = sub_1A38BD324;
        *(v39 + 24) = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF50);
        sub_1A38A08F8(&qword_1ED9968B8, &qword_1EB0FCF48);
        sub_1A38BD3DC();
        sub_1A3A31200();
        v40 = v43;
        sub_1A388F670(v31, v43, &qword_1EB0FCF38);
        return (*(v42 + 56))(v40, 0, 1, v34);
      }

      v25 = v2;
      v26 = 0x4022A8F5C28F5C29;
    }

    v30 = v19;
    goto LABEL_20;
  }

  v28 = *(v16 + 56);

  return v28(a1, 1, 1);
}

uint64_t sub_1A38B00CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a1;
  v7 = sub_1A3A2FF70();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF68);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF60);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v52 - v18;
  v68 = a3;
  v62 = a2;
  if (sub_1A38EDEDC(sub_1A38BD5EC, v67, a2))
  {
    v54 = v8;
    v55 = v7;
    v58 = v13;
    v59 = v17;
    v60 = v16;
    v61 = a4;
    v57 = *(a3 + 56);
    v56 = *(a3[6] + 16);
    v19 = *a3;
    v20 = a3[1];
    v21 = a3[2];
    v22 = a3[3];
    v23 = a3[4];
    v24 = *(a3 + 40);
    v73 = *a3;
    v74 = v20;
    v75 = v21;
    v76 = v22;
    v77 = v23;
    v78 = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70);
    MEMORY[0x1A58F7010](&v69);
    if (BYTE8(v70) != 255)
    {
      *&v53 = v12;
      sub_1A38BC250(v69, *(&v69 + 1), v70, SBYTE8(v70));
      v73 = v19;
      v74 = v20;
      v75 = v21;
      v76 = v22;
      v77 = v23;
      v78 = v24;
      MEMORY[0x1A58F7010](&v69, v25);
      v26 = v69;
      if (BYTE8(v70) - 1 < 2)
      {
        sub_1A38BC250(v69, *(&v69 + 1), v70, SBYTE8(v70));
LABEL_11:
        v28 = 1;
        goto LABEL_12;
      }

      if (BYTE8(v70))
      {
        goto LABEL_11;
      }

      *&v52 = v70;
      sub_1A38BC250(v69, *(&v69 + 1), v70, 0);
      v28 = 1;
      if (v57 != v26)
      {
LABEL_12:
        v12 = v53;
        goto LABEL_13;
      }

      v12 = v53;
      if (*(&v26 + 1) != v65 || v52 != v56)
      {
        goto LABEL_13;
      }
    }

    v73 = v19;
    v74 = v20;
    v75 = v21;
    v76 = v22;
    v77 = v23;
    v78 = v24;
    sub_1A3A311B0();
    v53 = v69;
    v52 = v70;
    v29 = v71;
    v30 = v12;
    v31 = v72;
    *v15 = 0;
    v32 = type metadata accessor for ChromeTopBar.ExpandableGroup(0);
    sub_1A3A30320();
    sub_1A3A30320();
    v33 = &v15[v32[11]];
    *&v69 = 0;
    sub_1A3A30F80();
    v34 = v74;
    *v33 = v73;
    *(v33 + 1) = v34;
    v35 = &v15[v32[12]];
    *&v69 = 0;
    sub_1A3A30F80();
    v36 = v74;
    *v35 = v73;
    *(v35 + 1) = v36;
    v37 = &v15[v32[13]];
    LOBYTE(v69) = 0;
    sub_1A3A30F80();
    v38 = v74;
    *v37 = v73;
    *(v37 + 1) = v38;
    v39 = &v15[v32[14]];
    type metadata accessor for ChromeViewModel();
    sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    *v39 = sub_1A3A2F650();
    v39[8] = v40 & 1;
    v41 = v32[15];
    *&v15[v41] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
    swift_storeEnumTagMultiPayload();
    v42 = &v15[v32[16]];
    *v42 = swift_getKeyPath();
    v42[8] = 0;
    v43 = &v15[v32[17]];
    *v43 = swift_getKeyPath();
    v43[8] = 0;
    v44 = v57;
    *(v15 + 7) = v62;
    *(v15 + 8) = v44;
    v45 = v56;
    *(v15 + 9) = v65;
    *(v15 + 10) = v45;
    v15[88] = 0;
    v15[89] = v44;
    *(v15 + 8) = v53;
    *(v15 + 24) = v52;
    *(v15 + 5) = v29;
    v15[48] = v31;
    v12 = v30;
    sub_1A3A2EA50();
    v46 = v64;
    sub_1A3A2FF60();
    v47 = v54;
    v48 = v55;
    (*(v54 + 16))(v63, v46, v55);
    sub_1A38BC290(&qword_1EB0FCEE8, MEMORY[0x1E697F400]);
    v49 = sub_1A3A2F7F0();
    (*(v47 + 8))(v46, v48);
    *&v15[*(v12 + 36)] = v49;
    sub_1A388F670(v15, v66, &qword_1EB0FCF68);
    v28 = 0;
LABEL_13:
    v50 = v66;
    (*(v58 + 56))(v66, v28, 1, v12);
    a4 = v61;
    sub_1A388F670(v50, v61, &qword_1EB0FCF60);
    v27 = 0;
    v16 = v60;
    v17 = v59;
    return (*(v17 + 56))(a4, v27, 1, v16);
  }

  v27 = 1;
  return (*(v17 + 56))(a4, v27, 1, v16);
}

BOOL sub_1A38B07C0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChromeElementIcon();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v21 - v12);
  v14 = *a1;
  v15 = *(a2 + 64);
  v16 = *(a2 + 72);
  sub_1A3A2EA60();
  if ((v16 & 1) == 0)
  {
    sub_1A3A31C30();
    v17 = sub_1A3A305C0();
    v21[0] = v4;
    v18 = v17;
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v21[0]);
    v15 = v21[3];
  }

  type metadata accessor for ChromeElementModel();
  sub_1A39AE314(v14, 0, 0, v15, v13);

  swift_storeEnumTagMultiPayload();
  v19 = sub_1A397F430(v13, v11);
  sub_1A38BDFA4(v11, type metadata accessor for ChromeElementIcon);
  sub_1A38BDFA4(v13, type metadata accessor for ChromeElementIcon);
  return (v19 & 1) == 0;
}

uint64_t sub_1A38B0A14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v48 = sub_1A3A2FEE0();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChromeTopBar.ExpandableGroup(0);
  v5 = *(v4 - 8);
  v61 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = v6;
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCFA0);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCFA8);
  v12 = *(v11 - 8);
  v58 = v11;
  v59 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v46 - v13;
  *v10 = sub_1A3A31480();
  *(v10 + 1) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCFB0);
  sub_1A38B10C0(v2, &v10[*(v15 + 44)]);
  v16 = *(v2 + 72);
  v17 = *(v2 + 80);
  v18 = &v10[*(v8 + 52)];
  v19 = *(v2 + 56);
  v20 = *(v2 + 64);
  *v18 = v20;
  *(v18 + 1) = v16;
  *(v18 + 2) = v17;
  v21 = *(v2 + 88);
  v18[24] = v21;
  v65 = v19;
  v57 = type metadata accessor for ChromeTopBar.ExpandableGroup;
  v53 = v7;
  sub_1A38BD254(v2, v7, type metadata accessor for ChromeTopBar.ExpandableGroup);
  v55 = *(v5 + 80);
  v22 = (v55 + 16) & ~v55;
  v23 = swift_allocObject();
  v54 = type metadata accessor for ChromeTopBar.ExpandableGroup;
  sub_1A38BD2BC(v7, v23 + v22, type metadata accessor for ChromeTopBar.ExpandableGroup);
  sub_1A3A2EA50();
  sub_1A38BCF78(v20, v16, v17, v21);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC8E8);
  v50 = sub_1A38A08F8(&qword_1EB0FCFB8, &qword_1EB0FCFA0);
  v49 = sub_1A38BDAB4();
  v24 = v52;
  sub_1A3A30CA0();

  sub_1A388F740(v10, &qword_1EB0FCFA0);
  v25 = *(v2 + 16);
  v26 = *(v2 + 40);
  v27 = *(v2 + 48);
  v65 = *(v2 + 8);
  v66 = v25;
  v67 = *(v2 + 24);
  v68 = v26;
  v69 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70);
  MEMORY[0x1A58F7010](v63, v28);
  v29 = v63[0];
  v30 = v63[1];
  v31 = v63[2];
  LOBYTE(v20) = v64;
  v32 = v53;
  sub_1A38BD254(v2, v53, v57);
  v33 = swift_allocObject() + v22;
  v34 = v60;
  sub_1A38BD2BC(v32, v33, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCDD8);
  v65 = v24;
  v66 = v51;
  *&v67 = v50;
  *(&v67 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  sub_1A38BDECC();
  v35 = v34;
  v36 = v58;
  v37 = v62;
  sub_1A3A30CA0();

  sub_1A38BC250(v29, v30, v31, v20);
  (*(v59 + 8))(v37, v36);
  v38 = sub_1A3A314E0();
  v39 = v2 + *(v61 + 64);
  v40 = *v39;
  LOBYTE(v37) = *(v39 + 8);
  sub_1A3A2EA60();
  if ((v37 & 1) == 0)
  {
    sub_1A3A31C30();
    v41 = sub_1A3A305C0();
    sub_1A3A2F270();

    v42 = v46;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v47 + 8))(v42, v48);
    v40 = v65;
  }

  swift_getKeyPath();
  v65 = v40;
  sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v43 = *(v40 + 800);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCFC0);
  v45 = v35 + *(result + 36);
  *v45 = v38;
  *(v45 + 8) = (v43 - 3) < 2;
  return result;
}

uint64_t sub_1A38B10C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCFC8);
  MEMORY[0x1EEE9AC00](v223);
  v241 = &v220 - v4;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCFD0);
  MEMORY[0x1EEE9AC00](v236);
  v6 = (&v220 - v5);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCFD8);
  v225 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v237 = &v220 - v7;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCFE0);
  v226 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v238 = &v220 - v8;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCFE8);
  v228 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  *&v240 = &v220 - v9;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCFF0);
  MEMORY[0x1EEE9AC00](v278);
  v230 = &v220 - v10;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCFF8);
  v232 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v231 = &v220 - v11;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD000);
  MEMORY[0x1EEE9AC00](v276);
  v277 = &v220 - v12;
  v265 = sub_1A3A302F0();
  v264 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v263 = &v220 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = type metadata accessor for ChromeTopBar.ExpandableGroup(0);
  v266 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v287 = v14;
  v280 = &v220 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_1A3A2FEE0();
  v243 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v242 = &v220 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_1A3A302B0();
  v273 = *(v274 - 8);
  v16 = MEMORY[0x1EEE9AC00](v274);
  v224 = &v220 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v262 = &v220 - v18;
  v272 = sub_1A3A31170();
  v271 = *(v272 - 8);
  v19 = MEMORY[0x1EEE9AC00](v272);
  v267 = &v220 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v270 = &v220 - v21;
  v235 = sub_1A3A31370();
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v233 = &v220 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_1A3A31430();
  v268 = *(v269 - 8);
  v23 = MEMORY[0x1EEE9AC00](v269);
  v221 = &v220 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v222 = &v220 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v245 = &v220 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v247 = &v220 - v29;
  v30 = sub_1A3A2FBC0();
  MEMORY[0x1EEE9AC00](v30);
  v283 = &v220 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD008);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v220 - v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD010);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v220 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD018);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v220 - v39;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD020);
  MEMORY[0x1EEE9AC00](v289);
  v281 = &v220 - v41;
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD028);
  v246 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v282 = &v220 - v42;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD030);
  v248 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v284 = &v220 - v43;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD038);
  v251 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252);
  v286 = (&v220 - v44);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD040);
  MEMORY[0x1EEE9AC00](v250);
  v254 = &v220 - v45;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD048);
  MEMORY[0x1EEE9AC00](v253);
  v255 = &v220 - v46;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD050);
  MEMORY[0x1EEE9AC00](v257);
  v256 = &v220 - v47;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD058);
  v259 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v258 = &v220 - v48;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD060);
  MEMORY[0x1EEE9AC00](v275);
  v261 = &v220 - v49;
  v290 = a1;
  if (sub_1A38B3B04())
  {
    v241 = a2;
    *v34 = sub_1A3A31490();
    v34[1] = v50;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD130);
    sub_1A38B3D2C(v290, v34 + *(v51 + 44));
    sub_1A38B5374();
    sub_1A3A31480();
    sub_1A3A2F780();
    v52 = (v34 + *(v32 + 36));
    v53 = v300;
    *v52 = v299;
    v52[1] = v53;
    v52[2] = v301;
    sub_1A38B56CC();
    sub_1A3A31480();
    sub_1A3A2FBF0();
    sub_1A388F670(v34, v37, &qword_1EB0FD008);
    v54 = &v37[*(v35 + 36)];
    v55 = v307;
    *(v54 + 4) = v306;
    *(v54 + 5) = v55;
    *(v54 + 6) = v308;
    v56 = v303;
    *v54 = v302;
    *(v54 + 1) = v56;
    v57 = v305;
    *(v54 + 2) = v304;
    *(v54 + 3) = v57;
    v58 = &v40[*(v38 + 36)];
    v59 = v30;
    v60 = *(v30 + 20);
    v61 = *MEMORY[0x1E697F468];
    v62 = sub_1A3A30000();
    v63 = *(*(v62 - 8) + 104);
    v63(&v58[v60], v61, v62);
    __asm { FMOV            V0.2D, #20.0 }

    v240 = _Q0;
    *v58 = _Q0;
    v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD120) + 36)] = 0;
    sub_1A388F670(v37, v40, &qword_1EB0FD010);
    if (sub_1A38B5C14())
    {
      v69 = sub_1A3A2F7D0();
    }

    else
    {
      sub_1A3A31590();
      v295 = 0;
      v296 = v76;
      v297 = v77;
      v298 = 0x4020000000000000;
      v291 = 0x3FF0000000000000;
      v292 = v76;
      v293 = v77;
      v294 = 0x4020000000000000;
      sub_1A38BCFA8();
      v69 = sub_1A3A2F7E0();
    }

    v78 = v69;
    v79 = v281;
    sub_1A388F670(v40, v281, &qword_1EB0FD018);
    *(v79 + *(v289 + 9)) = v78;
    v80 = v283;
    v63(&v283[*(v59 + 20)], v61, v62);
    *v80 = v240;
    v81 = sub_1A38B5D6C();
    if (qword_1ED996480 != -1)
    {
      swift_once();
    }

    v82 = off_1ED997FE0;
    swift_getKeyPath();
    v295 = v82;
    sub_1A38BC290(&qword_1ED996650, type metadata accessor for SettingsManager);
    sub_1A3A2F080();

    v83 = *(v82 + 2);
    sub_1A3A2EA60();
    v84 = sub_1A394F77C(1);
    swift_getKeyPath();
    v295 = v83;
    sub_1A38BC290(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2F080();

    v85 = sub_1A394FC58(0xCu);
    swift_getKeyPath();
    v295 = v83;
    sub_1A3A2F080();

    v86 = sub_1A394FC58(0xEu);
    swift_getKeyPath();
    v295 = v83;
    sub_1A3A2F080();

    v87 = sub_1A394FC58(0xBu);

    v220 = v59;
    if (v84 - 2 >= 3)
    {
      if (v84 >= 2u)
      {
        v88 = v267;
        v89 = v245;
        sub_1A3A31380();
      }

      else
      {
        v88 = v267;
        if (v87)
        {
          v90 = 0x10000;
        }

        else
        {
          v90 = 0;
        }

        v91 = v90 | (v84 << 24);
        if (v86)
        {
          v92 = 256;
        }

        else
        {
          v92 = 0;
        }

        v93 = v81 & 1;
        v94 = v233;
        sub_1A3908D0C(v93, (v91 | v92) & 0xFFFFFFFE | v85 & 1, v233);
        v89 = v245;
        sub_1A3A31390();
        (*(v234 + 8))(v94, v235);
      }
    }

    else
    {
      v88 = v267;
      LOBYTE(v295) = v85 & 1;
      BYTE1(v295) = v86 & 1;
      BYTE2(v295) = v87 & 1;
      BYTE3(v295) = v84;
      sub_1A38BE1AC();
      v89 = v245;
      sub_1A3A31420();
    }

    v132 = v268;
    v133 = v247;
    v134 = v269;
    (*(v268 + 32))(v247, v89, v269);
    v135 = v88;
    sub_1A3A31160();
    v136 = v270;
    sub_1A3A31150();
    v137 = *(v271 + 8);
    v138 = v272;
    v137(v135, v272);
    v267 = sub_1A38BEA8C();
    v271 = sub_1A38BC290(&qword_1EB0FC480, MEMORY[0x1E697EAF0]);
    v139 = v283;
    v140 = v220;
    v141 = v281;
    sub_1A3A309A0();
    v137(v136, v138);
    (*(v132 + 8))(v133, v134);
    sub_1A38BDFA4(v139, MEMORY[0x1E697EAF0]);
    sub_1A388F740(v141, &qword_1EB0FD020);
    v143 = *(v290 + 64);
    v142 = *(v290 + 72);
    v144 = *(v290 + 80);
    v145 = *(v290 + 88);
    v291 = v143;
    v292 = v142;
    v293 = v144;
    LOBYTE(v294) = v145;
    v146 = *v290;
    sub_1A38BCF78(v143, v142, v144, v145);
    sub_1A38BCF78(v143, v142, v144, v145);
    v283 = v146;
    sub_1A3A31530();
    v295 = v289;
    v296 = v140;
    v297 = v267;
    v298 = v271;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v148 = sub_1A38BE4AC();
    v149 = v285;
    v150 = v282;
    sub_1A3A309F0();
    sub_1A3890EFC(v143, v142, v144, v145);
    (*(v246 + 8))(v150, v149);
    if (sub_1A38B5EC4())
    {
      v151 = v262;
      sub_1A3A30290();
    }

    else
    {
      v151 = v262;
      sub_1A3A302A0();
    }

    v295 = v285;
    v296 = &type metadata for ChromeMenuID;
    v297 = OpaqueTypeConformance2;
    v298 = v148;
    swift_getOpaqueTypeConformance2();
    v152 = v249;
    v153 = v284;
    sub_1A3A30B30();
    (*(v273 + 8))(v151, v274);
    (*(v248 + 8))(v153, v152);
    v154 = v290 + *(v288 + 64);
    if ((*(v154 + 8) & 1) == 0)
    {
      v155 = *v154;
      sub_1A3A2EA60();
      sub_1A3A31C30();
      v156 = sub_1A3A305C0();
      sub_1A3A2F270();

      v157 = v242;
      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A3670FF4(v155, 0);
      (*(v243 + 8))(v157, v244);
    }

    v158 = sub_1A3A31530();
    v159 = sub_1A3A30460();
    v160 = v254;
    (*(v251 + 32))(v254, v286, v252);
    v161 = &v160[*(v250 + 36)];
    *v161 = 0;
    *(v161 + 1) = v143;
    *(v161 + 2) = v142;
    *(v161 + 3) = v144;
    v161[32] = v145;
    *(v161 + 5) = v158;
    *(v161 + 12) = v159;
    v161[52] = 1;
    v162 = v290;
    v163 = v280;
    v289 = type metadata accessor for ChromeTopBar.ExpandableGroup;
    sub_1A38BD254(v290, v280, type metadata accessor for ChromeTopBar.ExpandableGroup);
    v164 = (*(v266 + 80) + 16) & ~*(v266 + 80);
    v165 = swift_allocObject();
    v286 = type metadata accessor for ChromeTopBar.ExpandableGroup;
    sub_1A38BD2BC(v163, v165 + v164, type metadata accessor for ChromeTopBar.ExpandableGroup);
    v166 = v160;
    v167 = v255;
    sub_1A388F670(v166, v255, &qword_1EB0FD040);
    v168 = (v167 + *(v253 + 36));
    *v168 = sub_1A38BED40;
    v168[1] = v165;
    v168[2] = 0;
    v168[3] = 0;
    sub_1A38BD254(v162, v163, type metadata accessor for ChromeTopBar.ExpandableGroup);
    v169 = swift_allocObject();
    sub_1A38BD2BC(v163, v169 + v164, type metadata accessor for ChromeTopBar.ExpandableGroup);
    v170 = v256;
    sub_1A388F670(v167, v256, &qword_1EB0FD048);
    v171 = v257;
    v172 = (v170 + *(v257 + 36));
    *v172 = 0;
    v172[1] = 0;
    v172[2] = sub_1A38BED48;
    v172[3] = v169;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
    sub_1A3A30310();
    v173 = sub_1A38BE79C();
    v174 = v258;
    sub_1A3A30B10();

    sub_1A388F740(v170, &qword_1EB0FD050);
    v175 = v263;
    sub_1A3A302D0();
    sub_1A38BD254(v290, v163, v289);
    v176 = swift_allocObject();
    sub_1A38BD2BC(v163, v176 + v164, v286);
    v295 = v171;
    v296 = v173;
    swift_getOpaqueTypeConformance2();
    v177 = v261;
    v178 = v260;
    sub_1A3A30AC0();

    (*(v264 + 8))(v175, v265);
    (*(v259 + 8))(v174, v178);
    sub_1A388F6D8(v177, v277, &qword_1EB0FD060);
    swift_storeEnumTagMultiPayload();
    sub_1A38BE6A4();
    v179 = sub_1A38BE500();
    v295 = v278;
    v296 = v179;
    swift_getOpaqueTypeConformance2();
    v180 = v241;
    sub_1A3A301F0();
    sub_1A388F740(v177, &qword_1EB0FD060);
    v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD128);
    v182 = *(*(v181 - 8) + 56);
    v183 = v180;
  }

  else
  {
    v70 = *(v290 + 16);
    v71 = *(v290 + 40);
    v72 = *(v290 + 48);
    *&v302 = *(v290 + 8);
    *(&v302 + 1) = v70;
    v303 = *(v290 + 24);
    *&v304 = v71;
    BYTE8(v304) = v72;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70);
    MEMORY[0x1A58F7010](&v299, v73);
    if (BYTE8(v300) != 255)
    {
      sub_1A38BC250(v299, *(&v299 + 1), v300, SBYTE8(v300));
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD128);
      return (*(*(v74 - 8) + 56))(a2, 1, 1, v74);
    }

    v289 = v6;
    v95 = v290;
    v96 = *(v290 + 56);
    v97 = v280;
    sub_1A38BD254(v290, v280, type metadata accessor for ChromeTopBar.ExpandableGroup);
    v98 = (*(v266 + 80) + 16) & ~*(v266 + 80);
    v99 = swift_allocObject();
    sub_1A38BD2BC(v97, v99 + v98, type metadata accessor for ChromeTopBar.ExpandableGroup);
    sub_1A38BD254(v95, v97, type metadata accessor for ChromeTopBar.ExpandableGroup);
    v100 = swift_allocObject();
    sub_1A38BD2BC(v97, v100 + v98, type metadata accessor for ChromeTopBar.ExpandableGroup);
    v101 = v95 + *(v288 + 64);
    v102 = *v101;
    LODWORD(v286) = *(v101 + 8);
    if (v286 == 1)
    {
      sub_1A3A2EA50();
    }

    else
    {
      sub_1A3A2EA50();
      sub_1A389F268(v102, 0);
      sub_1A3A31C30();
      v103 = sub_1A3A305C0();
      sub_1A3A2F270();

      v104 = v242;
      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A3670FF4(v102, 0);
      (*(v243 + 8))(v104, v244);
    }

    v105 = v241;
    type metadata accessor for ChromeViewModel();
    sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    *(v105 + 48) = sub_1A3A2F650();
    *(v105 + 56) = v106 & 1;
    v107 = *(type metadata accessor for ChromeTopBar.CollapsedGroup(0) + 36);
    *(v105 + v107) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
    swift_storeEnumTagMultiPayload();
    *v105 = v96;
    *(v105 + 8) = sub_1A38BE004;
    *(v105 + 16) = v99;
    *(v105 + 24) = sub_1A38BE068;
    *(v105 + 32) = v100;
    *(v105 + 40) = 0;
    v108 = v280;
    sub_1A38BD254(v290, v280, type metadata accessor for ChromeTopBar.ExpandableGroup);
    v109 = swift_allocObject();
    sub_1A38BD2BC(v108, v109 + v98, type metadata accessor for ChromeTopBar.ExpandableGroup);
    v110 = (v105 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD068) + 36));
    *v110 = sub_1A38B6850;
    v110[1] = 0;
    v110[2] = sub_1A38BE0F8;
    v110[3] = v109;
    v111 = sub_1A38B68F4();
    v112 = v105 + *(v223 + 36);
    *v112 = v111;
    *(v112 + 8) = 0;
    v113 = sub_1A38B5C14();
    v114 = v289;
    if (v113)
    {
      v115 = sub_1A3A2F7D0();
    }

    else
    {
      sub_1A3A31590();
      *&v302 = 0;
      *(&v302 + 1) = v116;
      *&v303 = v117;
      *(&v303 + 1) = 0x4020000000000000;
      *&v299 = 0x3FF0000000000000;
      *(&v299 + 1) = v116;
      *&v300 = v117;
      *(&v300 + 1) = 0x4020000000000000;
      sub_1A38BCFA8();
      v115 = sub_1A3A2F7E0();
    }

    v118 = v115;
    v284 = v102;
    v241 = a2;
    sub_1A388F670(v105, v114, &qword_1EB0FCFC8);
    *(v114 + *(v236 + 36)) = v118;
    v119 = sub_1A38B68F4();
    v120 = sub_1A38B5D6C();
    v287 = v119;
    *&v302 = v119;
    if (qword_1ED996480 != -1)
    {
      swift_once();
    }

    v121 = off_1ED997FE0;
    swift_getKeyPath();
    *&v299 = v121;
    sub_1A38BC290(&qword_1ED996650, type metadata accessor for SettingsManager);
    sub_1A3A2F080();

    v122 = v121[2];
    sub_1A3A2EA60();
    v123 = sub_1A394F77C(0);
    swift_getKeyPath();
    *&v299 = v122;
    sub_1A38BC290(&qword_1ED996658, type metadata accessor for CameraUISettings);
    sub_1A3A2F080();

    v124 = sub_1A394FC58(0xDu);
    swift_getKeyPath();
    *&v299 = v122;
    sub_1A3A2F080();

    v125 = sub_1A394FC58(0xEu);
    swift_getKeyPath();
    *&v299 = v122;
    sub_1A3A2F080();

    v126 = sub_1A394FC58(0xBu);

    if (v123 - 2 >= 3)
    {
      v127 = v221;
      if (v123 >= 2u)
      {
        sub_1A3A31380();
      }

      else
      {
        if (v126)
        {
          v128 = 0x10000;
        }

        else
        {
          v128 = 0;
        }

        v129 = v128 | (v123 << 24);
        if (v125)
        {
          v130 = 256;
        }

        else
        {
          v130 = 0;
        }

        v131 = v233;
        sub_1A3908D0C(v120 & 1, (v129 | v130) & 0xFFFFFFFE | v124 & 1, v233);
        sub_1A3A31390();
        (*(v234 + 8))(v131, v235);
      }
    }

    else
    {
      LOBYTE(v299) = v124 & 1;
      BYTE1(v299) = v125 & 1;
      BYTE2(v299) = v126 & 1;
      BYTE3(v299) = v123;
      sub_1A38BE1AC();
      v127 = v221;
      sub_1A3A31420();
    }

    v184 = v268;
    v185 = v222;
    v186 = v269;
    (*(v268 + 32))(v222, v127, v269);
    v187 = v267;
    sub_1A3A31160();
    v188 = v270;
    sub_1A3A31150();
    v189 = *(v271 + 8);
    v190 = v272;
    v189(v187, v272);
    v285 = sub_1A38BE200();
    v191 = sub_1A38BE458();
    v192 = v236;
    v193 = v289;
    sub_1A3A309A0();
    v189(v188, v190);
    (*(v184 + 8))(v185, v186);
    sub_1A388F740(v193, &qword_1EB0FCFD0);

    v194 = *(v290 + 64);
    v195 = *(v290 + 72);
    v196 = *(v290 + 80);
    v197 = *(v290 + 88);
    *&v299 = v194;
    *(&v299 + 1) = v195;
    *&v300 = v196;
    BYTE8(v300) = v197;
    v198 = *v290;
    sub_1A38BCF78(v194, v195, v196, v197);
    sub_1A38BCF78(v194, v195, v196, v197);
    v289 = v198;
    sub_1A3A31530();
    *&v302 = v192;
    v199 = v194;
    *(&v302 + 1) = MEMORY[0x1E6981A90];
    *&v303 = v285;
    *(&v303 + 1) = v191;
    v200 = swift_getOpaqueTypeConformance2();
    v201 = sub_1A38BE4AC();
    v202 = v239;
    v203 = v237;
    sub_1A3A309F0();
    sub_1A3890EFC(v199, v195, v196, v197);
    (*(v225 + 8))(v203, v202);
    if (sub_1A38B5EC4())
    {
      v204 = v224;
      sub_1A3A30290();
    }

    else
    {
      v204 = v224;
      sub_1A3A302A0();
    }

    *&v302 = v239;
    *(&v302 + 1) = &type metadata for ChromeMenuID;
    *&v303 = v200;
    *(&v303 + 1) = v201;
    swift_getOpaqueTypeConformance2();
    v205 = v227;
    v206 = v238;
    sub_1A3A30B30();
    (*(v273 + 8))(v204, v274);
    (*(v226 + 8))(v206, v205);
    if ((v286 & 1) == 0)
    {
      v207 = v284;
      sub_1A3A2EA60();
      sub_1A3A31C30();
      v208 = sub_1A3A305C0();
      sub_1A3A2F270();

      v209 = v242;
      sub_1A3A2FED0();
      swift_getAtKeyPath();
      sub_1A3670FF4(v207, 0);
      (*(v243 + 8))(v209, v244);
    }

    v210 = sub_1A3A31530();
    v211 = sub_1A3A30460();
    v212 = v230;
    (*(v228 + 32))(v230, v240, v229);
    v213 = v278;
    v214 = v212 + *(v278 + 36);
    *v214 = 0;
    *(v214 + 8) = v199;
    *(v214 + 16) = v195;
    *(v214 + 24) = v196;
    *(v214 + 32) = v197;
    *(v214 + 40) = v210;
    *(v214 + 48) = v211;
    *(v214 + 52) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
    sub_1A3A30310();
    v215 = sub_1A38BE500();
    v216 = v231;
    sub_1A3A30B10();

    sub_1A388F740(v212, &qword_1EB0FCFF0);
    v217 = v232;
    v218 = v279;
    (*(v232 + 16))(v277, v216, v279);
    swift_storeEnumTagMultiPayload();
    sub_1A38BE6A4();
    *&v302 = v213;
    *(&v302 + 1) = v215;
    swift_getOpaqueTypeConformance2();
    v219 = v241;
    sub_1A3A301F0();
    (*(v217 + 8))(v216, v218);
    v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD128);
    v182 = *(*(v181 - 8) + 56);
    v183 = v219;
  }

  return v182(v183, 0, 1, v181);
}

uint64_t sub_1A38B3B04()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v26 = *(v0 + 8);
  v27 = v2;
  v28 = *(v0 + 24);
  v29 = v3;
  v30 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70);
  MEMORY[0x1A58F7010](&v22, v5);
  v7 = v22;
  v6 = v23;
  v8 = v24;
  v10 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 88);
  if (v25 > 1u)
  {
    if (v25 != 2)
    {
      goto LABEL_26;
    }

    if (v12 == 2)
    {
      sub_1A38BCF78(v10, v9, v11, 2);
      v15 = sub_1A3A018A8(v7, v10);
      sub_1A3890EFC(v10, v9, v11, 2);
      sub_1A38BC250(v7, v6, v8, 2);
      return v15 & 1;
    }

    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = 2;
LABEL_25:
    sub_1A38BC250(v16, v17, v18, v19);
    goto LABEL_26;
  }

  if (v25)
  {
    if (v12 == 1)
    {
      if (v22 == 35)
      {
        if (v10 == 35)
        {
          v15 = 1;
          sub_1A38BCF78(0x23uLL, v9, v11, 1);
          sub_1A38BC250(0x23uLL, v6, v8, 1);
          return v15 & 1;
        }

        v7 = 35;
      }

      else
      {
        if (v10 != 35)
        {
          v15 = 1;
          sub_1A38BCF78(v10, v9, v11, 1);
          v21 = sub_1A3A018A8(v7, v10);
          sub_1A3890EFC(v10, v9, v11, 1);
          sub_1A38BC250(v7, v6, v8, 1);
          if (v21)
          {
            return v15 & 1;
          }

          goto LABEL_26;
        }

        sub_1A38BCF78(0x23uLL, v9, v11, 1);
      }
    }

    v16 = v7;
    v17 = v6;
    v18 = v8;
    v19 = 1;
    goto LABEL_25;
  }

  sub_1A38BC250(v22, v23, v24, 0);
  if (v12)
  {
LABEL_26:
    v15 = 0;
    return v15 & 1;
  }

  v15 = v10 == v7 && v6 == v9 && v8 == v11;
  return v15 & 1;
}

uint64_t sub_1A38B3D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = sub_1A3A2FEE0();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for ChromeTopBar.ExpandableGroup(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD138);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v51[-v9];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD140);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v51[-v11];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD148);
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v51[-v12];
  v13 = *(a1 + 56);
  sub_1A3A2EA50();
  v14 = sub_1A3A31530();
  sub_1A38BD254(a1, v8, type metadata accessor for ChromeTopBar.ExpandableGroup);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v57 = v7;
  v16 = swift_allocObject();
  sub_1A38BD2BC(v8, v16 + v15, type metadata accessor for ChromeTopBar.ExpandableGroup);
  v17 = type metadata accessor for ChromeViewModel();
  v18 = sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  v58 = v17;
  v64 = v18;
  *(v10 + 4) = sub_1A3A2F650();
  v10[40] = v19 & 1;
  v20 = *(type metadata accessor for TopBarMenu(0) + 32);
  *&v10[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE78);
  swift_storeEnumTagMultiPayload();
  *v10 = v13;
  *(v10 + 1) = v14;
  *(v10 + 2) = sub_1A38BEDE0;
  *(v10 + 3) = v16;
  v21 = a1 + *(v5 + 64);
  v22 = *v21;
  LODWORD(v20) = *(v21 + 8);
  sub_1A3A2EA60();
  v23 = v22;
  v52 = v20;
  if ((v20 & 1) == 0)
  {
    sub_1A3A31C30();
    v24 = sub_1A3A305C0();
    sub_1A3A2F270();

    v25 = v60;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v61 + 8))(v25, v62);
    v23 = v69;
  }

  swift_getKeyPath();
  *&v69 = v23;
  sub_1A3A2F080();

  sub_1A3A31480();
  sub_1A3A2F780();
  v26 = &v10[*(v53 + 36)];
  v27 = v67;
  *v26 = v66;
  v26[1] = v27;
  v26[2] = v68;
  sub_1A38B4C58();
  sub_1A3A31480();
  sub_1A3A2FBF0();
  v28 = v56;
  sub_1A388F670(v10, v56, &qword_1EB0FD138);
  v29 = &v28[*(v54 + 36)];
  v30 = v74;
  v31 = v75;
  v29[4] = v73;
  v29[5] = v30;
  v29[6] = v31;
  v32 = v70;
  *v29 = v69;
  v29[1] = v32;
  v33 = v72;
  v29[2] = v71;
  v29[3] = v33;
  sub_1A38BD254(a1, v8, type metadata accessor for ChromeTopBar.ExpandableGroup);
  v34 = swift_allocObject();
  sub_1A38BD2BC(v8, v34 + v15, type metadata accessor for ChromeTopBar.ExpandableGroup);
  v35 = v59;
  sub_1A388F670(v28, v59, &qword_1EB0FD140);
  v36 = &v35[*(v55 + 36)];
  *v36 = sub_1A38C0494;
  v36[1] = 0;
  v36[2] = sub_1A38BEE44;
  v36[3] = v34;
  sub_1A3A2EA60();
  if ((v52 & 1) == 0)
  {
    sub_1A3A31C30();
    v37 = sub_1A3A305C0();
    sub_1A3A2F270();

    v38 = v60;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v61 + 8))(v38, v62);
    v22 = v65;
  }

  swift_getKeyPath();
  v65 = v22;
  sub_1A3A2F080();

  v39 = *(v22 + 800);

  v40 = (v39 - 3) < 2;
  sub_1A3A31590();
  v42 = v41;
  v44 = v43;
  v45 = sub_1A3A2F650();
  v47 = v46;
  v48 = v63;
  sub_1A388F670(v35, v63, &qword_1EB0FD148);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD150);
  v50 = v48 + *(result + 36);
  *v50 = v40;
  *(v50 + 8) = v42;
  *(v50 + 16) = v44;
  *(v50 + 24) = 0;
  *(v50 + 32) = v45;
  *(v50 + 40) = v47 & 1;
  return result;
}

uint64_t sub_1A38B45A0(uint64_t a1)
{
  v3 = *(a1 + 48);
  v67 = *(a1 + 32);
  v68 = v3;
  v69 = *(a1 + 64);
  v70 = *(a1 + 80);
  v4 = *(a1 + 16);
  v65 = *a1;
  v66 = v4;
  v5 = sub_1A3A2FEE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3A2F2A0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (!*a1)
  {
    MEMORY[0x1EEE9AC00](v10);
    *(&v47 - 2) = v1;
    sub_1A3A314E0();
    sub_1A3A2F8A0();
  }

  v53 = v8;
  v54 = v6;
  v55 = v1;
  v15 = *(a1 + 56);
  if (*(a1 + 48))
  {
    v51 = v11;
    v52 = v5;
    v50 = *(a1 + 8);
    v16 = *(v55 + 7);
    v17 = *(a1 + 48);
    v18 = *(a1 + 64);
    v19 = *(a1 + 16);
    v61 = *(a1 + 32);
    v62 = v17;
    v63 = v18;
    v64 = *(a1 + 80);
    v59 = *a1;
    v60 = v19;
    sub_1A38BEE70(&v59, v57);
    v20 = sub_1A38B79A4(v16);
    if ((v20 & 1) == 0)
    {
      if (qword_1ED996460 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v9, qword_1ED99D868);
      v25 = v51;
      (*(v51 + 16))(v13, v24, v9);
      v57[3] = v68;
      v57[4] = v69;
      v58 = v70;
      v57[0] = v65;
      v57[1] = v66;
      v57[2] = v67;
      sub_1A38BEE70(v57, v56);
      v26 = sub_1A3A2F280();
      v27 = sub_1A3A31C40();
      sub_1A388F740(a1, &qword_1EB0FD158);
      v28 = os_log_type_enabled(v26, v27);
      v5 = v52;
      if (v28)
      {
        v29 = swift_slowAlloc();
        v47 = v29;
        v49 = swift_slowAlloc();
        v56[0] = v49;
        *v29 = 136315138;
        v48 = v27;
        v30 = v14();
        v32 = sub_1A39ABC10(v30, v31, v56);

        v33 = v47;
        *(v47 + 1) = v32;
        _os_log_impl(&dword_1A3640000, v26, v48, "User tapped on selected option %s, skipping action", v33, 0xCu);
        v34 = v49;
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x1A58FAC10](v34, -1, -1);
        MEMORY[0x1A58FAC10](v33, -1, -1);
      }

      (*(v25 + 8))(v13, v9);
      goto LABEL_13;
    }

    v5 = v52;
  }

  else
  {
    v22 = *(a1 + 48);
    v61 = *(a1 + 32);
    v62 = v22;
    v63 = *(a1 + 64);
    v64 = *(a1 + 80);
    v23 = *(a1 + 16);
    v59 = *a1;
    v60 = v23;
    v20 = sub_1A38BEE70(&v59, v57);
  }

  v15(v20);
LABEL_13:
  v35 = v55;
  v36 = *(v55 + 7);
  v37 = v35 + *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) + 56);
  v38 = *v37;
  v39 = *(v37 + 8);
  sub_1A3A2EA60();
  if ((v39 & 1) == 0)
  {
    sub_1A3A31C30();
    v40 = sub_1A3A305C0();
    sub_1A3A2F270();

    v41 = v53;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v54 + 8))(v41, v5);
    v38 = v59;
  }

  v42 = sub_1A38C68F8(v36, v38);

  if (v42 != 1)
  {
    return sub_1A388F740(a1, &qword_1EB0FD158);
  }

  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v43 = off_1ED997FE0;
  swift_getKeyPath();
  *&v59 = v43;
  sub_1A38BC290(&qword_1ED996650, type metadata accessor for SettingsManager);
  sub_1A3A2F080();

  v44 = v43[2];
  swift_getKeyPath();
  *&v59 = v44;
  sub_1A38BC290(&qword_1ED996658, type metadata accessor for CameraUISettings);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v45 = *(v44 + 65);

  if ((v45 & 1) == 0)
  {
    return sub_1A388F740(a1, &qword_1EB0FD158);
  }

  MEMORY[0x1EEE9AC00](v46);
  *(&v47 - 2) = v35;
  sub_1A3A314E0();
  sub_1A3A2F8A0();
  sub_1A388F740(a1, &qword_1EB0FD158);
}

double sub_1A38B4C58()
{
  v2 = sub_1A3A2FEE0();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3A30090();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v45 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  sub_1A38B779C(&v45 - v16);
  v51 = v6[2];
  v51(v15, v17, v5);
  v50 = v6[11];
  v18 = v50(v15, v5);
  v19 = *MEMORY[0x1E697F658];
  v20 = *MEMORY[0x1E697F690];
  v21 = *MEMORY[0x1E697F698];
  v22 = *MEMORY[0x1E697F680];
  v47 = *MEMORY[0x1E697F690];
  v48 = v19;
  v23 = v18 == v19 || v18 == v20;
  v45 = v22;
  v46 = v21;
  v25 = v23 || v18 == v21 || v18 == v22;
  v52 = v9;
  if (v25)
  {
    v26 = 0x4042000000000000;
LABEL_17:
    v27 = *&v26;
    goto LABEL_18;
  }

  if (v18 == *MEMORY[0x1E697F650])
  {
    v26 = 0x4043000000000000;
    goto LABEL_17;
  }

  if (v18 == *MEMORY[0x1E697F660])
  {
    v26 = 0x4044000000000000;
    goto LABEL_17;
  }

  v27 = 42.0;
  if (v18 != *MEMORY[0x1E697F630] && v18 != *MEMORY[0x1E697F670] && v18 != *MEMORY[0x1E697F668] && v18 != *MEMORY[0x1E697F678] && v18 != *MEMORY[0x1E697F640] && v18 != *MEMORY[0x1E697F648])
  {
    goto LABEL_36;
  }

LABEL_18:
  v49 = v6[1];
  v49(v17, v5);
  v28 = type metadata accessor for ChromeTopBar.ExpandableGroup(0);
  v29 = *(v28 + 56);
  v55 = v0;
  v30 = (v0 + v29);
  v31 = *v30;
  v32 = *(v30 + 8);
  sub_1A3A2EA60();
  if ((v32 & 1) == 0)
  {
    sub_1A3A31C30();
    v33 = v12;
    v34 = sub_1A3A305C0();
    sub_1A3A2F270();

    v12 = v33;
    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v53 + 8))(v4, v54);
    v31 = v57;
  }

  swift_getKeyPath();
  v57 = v31;
  sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v35 = *(v31 + 800);

  if ((v35 - 3) <= 1 && !*(v55 + 88))
  {
    v9 = *(v55 + 72);
    v36 = *(v55 + 80);
    v37 = *(v55 + 64);
    v38 = (v55 + *(v28 + 44));
    v39 = *v38;
    v40 = v38[1];
    v57 = v39;
    v58 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
    sub_1A3A30F90();
    if (v27 > v56 * 0.55)
    {
      v1 = v27;
    }

    else
    {
      v1 = v56 * 0.55;
    }

    if (!v37)
    {
      goto LABEL_37;
    }

    if (v37 == 1)
    {
      return v1;
    }

    if (__OFSUB__(v36, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v9 >= v36 - 1)
    {
      return v1;
    }

    else
    {
      while (1)
      {
        sub_1A38B779C(v12);
        v41 = v52;
        v51(v52, v12, v5);
        v42 = v50(v41, v5);
        v43 = 8.0;
        if (v42 == v48 || v42 == v47 || v42 == v46 || v42 == v45)
        {
          break;
        }

        if (v42 == *MEMORY[0x1E697F650])
        {
          v43 = 9.33;
          break;
        }

        if (v42 == *MEMORY[0x1E697F660])
        {
          v43 = 10.67;
          break;
        }

        v43 = 12.0;
        if (v42 == *MEMORY[0x1E697F630] || v42 == *MEMORY[0x1E697F670] || v42 == *MEMORY[0x1E697F668] || v42 == *MEMORY[0x1E697F678] || v42 == *MEMORY[0x1E697F640] || v42 == *MEMORY[0x1E697F648])
        {
          break;
        }

LABEL_36:
        sub_1A3A32070();
        __break(1u);
LABEL_37:
        if (v9 < 1)
        {
          return v1;
        }
      }

      v49(v12, v5);
      return v1 + v27 + v43;
    }
  }

  return v27;
}

uint64_t sub_1A38B52FC()
{
  type metadata accessor for ChromeTopBar.ExpandableGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
  return sub_1A3A30FA0();
}

uint64_t sub_1A38B5374()
{
  v1 = v0;
  v2 = sub_1A3A2FEE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChromeTopBar.ExpandableGroup(0);
  v7 = (v0 + v6[14]);
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_1A3A2EA60();
  v10 = v8;
  if ((v9 & 1) == 0)
  {
    sub_1A3A31C30();
    v11 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v10 = v22;
  }

  v21[0] = v3;
  swift_getKeyPath();
  v22 = v10;
  sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v12 = *(v10 + 800);

  if ((v12 - 3) > 1)
  {
    sub_1A3A2EA60();
    if ((v9 & 1) == 0)
    {
      sub_1A3A31C30();
      v16 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v21[0] + 8))(v5, v2);
      v8 = v22;
    }

    swift_getKeyPath();
    v22 = v8;
    sub_1A3A2F080();
  }

  else
  {
    v13 = (v1 + v6[12]);
    v14 = *v13;
    v15 = v13[1];
    v22 = *v13;
    v23 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
    sub_1A3A30F90();
    if (*&v21[1] <= 0.0)
    {
      v18 = (v1 + v6[11]);
      v19 = *v18;
      v20 = v18[1];
      v22 = v19;
      v23 = v20;
    }

    else
    {
      v22 = v14;
      v23 = v15;
    }

    return sub_1A3A30F90();
  }
}

uint64_t sub_1A38B56CC()
{
  v1 = sub_1A3A30090();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v22 - v5;
  v6 = sub_1A3A2FEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) + 56));
  v11 = *v10;
  v12 = *(v10 + 8);
  sub_1A3A2EA60();
  v13 = v11;
  if ((v12 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v13 = v27;
  }

  v23 = v7;
  swift_getKeyPath();
  v27 = v13;
  sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  v15 = *(v13 + 800);

  if ((v15 - 3) > 1)
  {
    v18 = v24;
    sub_1A38B779C(v24);
    v20 = v25;
    v19 = v26;
    (*(v25 + 16))(v4, v18, v26);
    v21 = (*(v20 + 88))(v4, v19);
    if (v21 == *MEMORY[0x1E697F658] || v21 == *MEMORY[0x1E697F690] || v21 == *MEMORY[0x1E697F698] || v21 == *MEMORY[0x1E697F680] || v21 == *MEMORY[0x1E697F650] || v21 == *MEMORY[0x1E697F660] || v21 == *MEMORY[0x1E697F630] || v21 == *MEMORY[0x1E697F670] || v21 == *MEMORY[0x1E697F668] || v21 == *MEMORY[0x1E697F678] || v21 == *MEMORY[0x1E697F640] || v21 == *MEMORY[0x1E697F648])
    {
      return (*(v20 + 8))(v18, v19);
    }

    else
    {
      result = sub_1A3A32070();
      __break(1u);
    }
  }

  else
  {
    sub_1A3A2EA60();
    if ((v12 & 1) == 0)
    {
      sub_1A3A31C30();
      v16 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v23 + 8))(v9, v6);
      v11 = v27;
    }

    swift_getKeyPath();
    v27 = v11;
    sub_1A3A2F080();
  }

  return result;
}

uint64_t sub_1A38B5C14()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) + 64);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1A38B5D6C()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) + 68);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

BOOL sub_1A38B5EC4()
{
  v1 = sub_1A3A2FEE0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) + 64);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {
    sub_1A3A2EA60();
    sub_1A3A31C30();
    v7 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();
    sub_1A3670FF4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return (v6 & 1) == 0;
}

uint64_t sub_1A38B6020()
{
  type metadata accessor for ChromeTopBar.ExpandableGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  return sub_1A3A30FA0();
}

uint64_t sub_1A38B6094()
{
  sub_1A3A314E0();
  sub_1A3A2F8A0();
}

uint64_t sub_1A38B6100(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1A3A2FEE0();
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v1 + *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) + 56);
  v11 = *v10;
  v12 = *(v10 + 8);
  sub_1A3A2EA60();
  v13 = v11;
  if ((v12 & 1) == 0)
  {
    sub_1A3A31C30();
    v14 = sub_1A3A305C0();
    sub_1A3A2F270();

    sub_1A3A2FED0();
    swift_getAtKeyPath();

    (*(v41 + 8))(v6, v4);
    v13 = v46;
  }

  v40 = v4;
  swift_getKeyPath();
  v46 = v13;
  sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
  sub_1A3A2F080();

  if (v13[149])
  {
    sub_1A3A2EA60();
    v16 = sub_1A38BC058(a1);

    (*(v16 + 56))(v17);

    v18 = (*&v9[*(v7 + 44)])(0, 0);
    if (v21 <= 0xFBu)
    {
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v39 = v21;
      if ((sub_1A3A018A8(a1, 0x1DuLL) & 1) == 0 && (sub_1A3A018A8(a1, 0x1CuLL) & 1) == 0 && (sub_1A3A018A8(a1, 0x12uLL) & 1) == 0 && (sub_1A3A018A8(a1, 0x13uLL) & 1) == 0)
      {
        if (sub_1A3A018A8(a1, 4uLL))
        {
          v32 = MEMORY[0x1A58F7350](0.5, 0.7, 0.0);
          MEMORY[0x1EEE9AC00](v32);
          *&v38[-48] = v2;
          *&v38[-40] = v22;
          *&v38[-32] = v23;
          *&v38[-24] = v24;
          v33 = v39;
          v38[-16] = v39;
          sub_1A3A2F8A0();
          sub_1A3890EA8(v22, v23, v24, v33);
        }

        else
        {
          sub_1A3A2EA60();
          if ((v12 & 1) == 0)
          {
            sub_1A3A31C30();
            v34 = sub_1A3A305C0();
            sub_1A3A2F270();

            sub_1A3A2FED0();
            swift_getAtKeyPath();

            (*(v41 + 8))(v6, v40);
            v11 = v46;
          }

          v35 = v11[153];
          v36 = v11[154];
          __swift_project_boxed_opaque_existential_1(v11 + 150, v35);
          v37 = v39;
          (*(v36 + 8))(v22, v23, v24, v39, v11, v35, v36);
          sub_1A3890EA8(v22, v23, v24, v37);
        }

        return sub_1A38BDFA4(v9, type metadata accessor for ChromeElementState);
      }

      sub_1A3890EA8(v22, v23, v24, v39);
    }

    if (*&v9[*(v7 + 48)])
    {
      if (sub_1A38B6E58())
      {
        v25 = *(v2 + 64);
        v26 = *(v2 + 72);
        v27 = *(v2 + 80);
        v28 = *(v2 + 16);
        v29 = *(v2 + 40);
        v30 = *(v2 + 48);
        v31 = *(v2 + 88);
        v46 = *(v2 + 8);
        v47 = v28;
        v48 = *(v2 + 24);
        v49 = v29;
        v50 = v30;
        v42 = v25;
        v43 = v26;
        v44 = v27;
        v45 = v31;
        sub_1A38BCF78(v25, v26, v27, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70);
        sub_1A3A311A0();
      }
    }

    return sub_1A38BDFA4(v9, type metadata accessor for ChromeElementState);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A38B6638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3A2FEE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1A38B6E58();
  if (result)
  {
    v9 = *(a2 + 64);
    v10 = *(a2 + 72);
    v11 = *(a2 + 80);
    v12 = *(a2 + 16);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v15 = *(a2 + 88);
    v24 = *(a2 + 8);
    v25 = v12;
    v26 = *(a2 + 24);
    v27 = v13;
    v28 = v14;
    v22[0] = v9;
    v22[1] = v10;
    v22[2] = v11;
    v23 = v15;
    sub_1A38BCF78(v9, v10, v11, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70);
    return sub_1A3A311A0();
  }

  else if (a1 == 23)
  {
    v16 = a2 + *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) + 56);
    v17 = *v16;
    v18 = *(v16 + 8);
    sub_1A3A2EA60();
    if ((v18 & 1) == 0)
    {
      sub_1A3A31C30();
      v19 = sub_1A3A305C0();
      sub_1A3A2F270();

      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v17 = v24;
    }

    v20 = v17[153];
    v21 = v17[154];
    __swift_project_boxed_opaque_existential_1(v17 + 150, v20);
    (*(v21 + 8))(4, 0, 0, 160, v17, v20, v21);
  }

  return result;
}

uint64_t sub_1A38B6850@<X0>(void *a1@<X8>)
{
  result = sub_1A3A2F800();
  *a1 = v3;
  return result;
}

uint64_t sub_1A38B687C()
{
  type metadata accessor for ChromeTopBar.ExpandableGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
  return sub_1A3A30FA0();
}

uint64_t sub_1A38B68F4()
{
  v1 = sub_1A3A311F0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v28[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1A3A30090();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28[-v9];
  v11 = sub_1A3A2FBC0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = (v0 + *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) + 52));
  v15 = *v14;
  v16 = *(v14 + 1);
  v28[16] = v15;
  v29 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC3C8);
  sub_1A3A30F90();
  if (v28[15] != 1)
  {
    v25 = *MEMORY[0x1E697F468];
    v26 = sub_1A3A30000();
    (*(*(v26 - 8) + 104))(v3, v25, v26);
    sub_1A38BC290(qword_1ED9969F8, MEMORY[0x1E6981998]);
    return sub_1A3A31290();
  }

  sub_1A38B779C(v10);
  (*(v5 + 16))(v8, v10, v4);
  v17 = (*(v5 + 88))(v8, v4);
  v18 = 18.0;
  v21 = v17 == *MEMORY[0x1E697F658] || v17 == *MEMORY[0x1E697F690] || v17 == *MEMORY[0x1E697F698] || v17 == *MEMORY[0x1E697F680];
  if (v21 || (v18 = 19.0, v17 == *MEMORY[0x1E697F650]) || (v18 = 20.0, v17 == *MEMORY[0x1E697F660]) || (v18 = 21.0, v17 == *MEMORY[0x1E697F630]) || v17 == *MEMORY[0x1E697F670] || v17 == *MEMORY[0x1E697F668] || v17 == *MEMORY[0x1E697F678] || v17 == *MEMORY[0x1E697F640] || v17 == *MEMORY[0x1E697F648])
  {
    (*(v5 + 8))(v10, v4);
    v22 = *(v11 + 20);
    v23 = *MEMORY[0x1E697F468];
    v24 = sub_1A3A30000();
    (*(*(v24 - 8) + 104))(v13 + v22, v23, v24);
    *v13 = v18;
    v13[1] = v18;
    sub_1A38BC290(&qword_1EB0FC480, MEMORY[0x1E697EAF0]);
    return sub_1A3A31290();
  }

  result = sub_1A3A32070();
  __break(1u);
  return result;
}

uint64_t sub_1A38B6D88()
{
  type metadata accessor for ChromeTopBar.ExpandableGroup(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FC4F0);
  sub_1A3A30FA0();
  result = sub_1A38B6E58();
  if ((result & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCE70);
    return sub_1A3A311A0();
  }

  return result;
}

uint64_t sub_1A38B6E58()
{
  v46 = sub_1A3A2FEE0();
  v1 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ChromeElementState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 56);
  v47 = *(v6 + 16);
  if (!v47)
  {
    return 0;
  }

  v7 = 0;
  v8 = (v0 + *(type metadata accessor for ChromeTopBar.ExpandableGroup(0) + 56));
  v50 = *v8;
  v49 = *(v8 + 8);
  v48 = v6 + 32;
  v43 = (v1 + 8);
  v44 = v6;
  while (1)
  {
    if (v7 >= *(v6 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      result = sub_1A3A32220();
      __break(1u);
      return result;
    }

    v9 = *(v48 + 8 * v7);
    if (v49)
    {
      v53 = v50;
      sub_1A38A8F64(v9);
      sub_1A3A2EA60();
    }

    else
    {
      sub_1A38A8F64(*(v48 + 8 * v7));
      sub_1A3A2EA60();
      sub_1A3A31C30();
      v10 = sub_1A3A305C0();
      sub_1A3A2F270();

      v11 = v45;
      sub_1A3A2FED0();
      swift_getAtKeyPath();

      (*v43)(v11, v46);
    }

    v12 = v53;
    swift_getKeyPath();
    v53 = v12;
    sub_1A38BC290(&qword_1ED996608, type metadata accessor for ChromeViewModel);
    sub_1A3A2F080();

    v13 = *(v12 + 1192);
    if (!v13)
    {
      goto LABEL_35;
    }

    v51 = v7;
    v54 = v9;
    swift_beginAccess();
    v14 = *(v13 + 32);
    v15 = *(v14 + 16);
    sub_1A3A2EA60();
    if (v15)
    {
      v16 = sub_1A3A1B72C(v9);
      if (v17)
      {
        v18 = *(*(v14 + 56) + 8 * v16);
        swift_endAccess();
        sub_1A3A2EA60();
        sub_1A3890F2C(v9);
        goto LABEL_25;
      }
    }

    v19 = v5;
    v20 = v3;
    swift_endAccess();
    v18 = (*(v13 + 16))(&v54);
    swift_beginAccess();
    sub_1A3A2EA60();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v13 + 32);
    v22 = v52;
    *(v13 + 32) = 0x8000000000000000;
    v24 = sub_1A3A1B72C(v9);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_33;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v52;
        if ((v23 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1A3A17ED4();
        v31 = v52;
        if ((v28 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_1A3A16B64(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1A3A1B72C(v9);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_36;
      }

      v24 = v29;
      v31 = v52;
      if ((v28 & 1) == 0)
      {
LABEL_22:
        v31[(v24 >> 6) + 8] |= 1 << v24;
        *(v31[6] + 8 * v24) = v9;
        *(v31[7] + 8 * v24) = v18;
        v32 = v31[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_34;
        }

        v31[2] = v34;
        goto LABEL_24;
      }
    }

    *(v31[7] + 8 * v24) = v18;

    sub_1A3890F2C(v9);
LABEL_24:
    *(v13 + 32) = v31;
    swift_endAccess();
    v3 = v20;
    v5 = v19;
    v6 = v44;
LABEL_25:

    (*(v18 + 56))(v35);

    v36 = *&v5[*(v3 + 48)];
    sub_1A365F488(v36);
    sub_1A38BDFA4(v5, type metadata accessor for ChromeElementState);
    if (v36)
    {
      break;
    }

LABEL_4:
    v7 = v51 + 1;
    if (v51 + 1 == v47)
    {
      return 0;
    }
  }

  v37 = v36(0);
  sub_1A3671090(v36);
  v38 = 0;
  v39 = *(v37 + 16);
  do
  {
    if (v39 == v38)
    {

      goto LABEL_4;
    }

    v40 = type metadata accessor for ChromeMenu();
    v41 = v37 + ((*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80)) + *(*(v40 - 8) + 72) * v38++;
  }

  while (*(*(v41 + *(v40 + 28)) + 16) < 2uLL);

  return 1;
}

uint64_t sub_1A38B73F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v24 = *(result + 16);
  v25 = *(result + 8);
  v4 = *(result + 24);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a3 + 64);
  v8 = *(a3 + 72);
  v10 = *(a3 + 80);
  v11 = *(a3 + 88);
  if (*(a2 + 24) > 1u)
  {
    if (*(a2 + 24) != 2 || v11 != 2)
    {
      goto LABEL_24;
    }

    sub_1A38BCF78(*(a3 + 64), *(a3 + 72), *(a3 + 80), 2);
    sub_1A38BCF64(v6, v5, v7, 2);
    v23 = sub_1A3A018A8(v6, v9);
    sub_1A3890EFC(v9, v8, v10, 2);
    v14 = v6;
    v15 = v5;
    v16 = v7;
    v17 = 2;
  }

  else
  {
    if (!*(a2 + 24))
    {
      result = sub_1A38BC250(*a2, *(a2 + 8), v7, 0);
      if (!v11)
      {
        v12 = v9 == v6 && v5 == v8;
        if (v12 && v7 == v10)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_24;
    }

    if (v11 != 1)
    {
      goto LABEL_24;
    }

    if (v6 == 35)
    {
      if (v9 == 35)
      {
        sub_1A38BCF98(0x23uLL);
        goto LABEL_40;
      }

      goto LABEL_24;
    }

    if (v9 == 35)
    {
      result = sub_1A38BCF98(0x23uLL);
      goto LABEL_24;
    }

    sub_1A38BCF78(*(a3 + 64), *(a3 + 72), *(a3 + 80), 1);
    sub_1A38BCF64(v6, v5, v7, 1);
    v23 = sub_1A3A018A8(v6, v9);
    sub_1A3890EFC(v9, v8, v10, 1);
    v14 = v6;
    v15 = v5;
    v16 = v7;
    v17 = 1;
  }

  result = sub_1A38BC250(v14, v15, v16, v17);
  if (v23)
  {
    goto LABEL_40;
  }

LABEL_24:
  if (v4 > 1)
  {
    if (v4 != 2 || v11 != 2)
    {
      return result;
    }

    sub_1A38BCF78(v9, v8, v10, 2);
    sub_1A38BCF64(v3, v25, v24, 2);
    v18 = sub_1A3A018A8(v3, v9);
    sub_1A3890EFC(v9, v8, v10, 2);
    v19 = v3;
    v20 = v25;
    v21 = v24;
    v22 = 2;
LABEL_34:
    result = sub_1A38BC250(v19, v20, v21, v22);
    if ((v18 & 1) == 0)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v4)
  {
    result = sub_1A38BC250(v3, v25, v24, 0);
    if (v11 || v9 != v3 || v25 != v8 || v24 != v10)
    {
      return result;
    }

LABEL_40:
    type metadata accessor for ChromeTopBar.ExpandableGroup(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCF78);
    return sub_1A3A30300();
  }

  if (v11 != 1)
  {
    return result;
  }

  if (v3 == 35)
  {
    if (v9 != 35)
    {
      return result;
    }

    sub_1A38BCF98(0x23uLL);
    goto LABEL_40;
  }

  if (v9 != 35)
  {
    sub_1A38BCF78(v9, v8, v10, 1);
    sub_1A38BCF64(v3, v25, v24, 1);
    v18 = sub_1A3A018A8(v3, v9);
    sub_1A3890EFC(v9, v8, v10, 1);
    v19 = v3;
    v20 = v25;
    v21 = v24;
    v22 = 1;
    goto LABEL_34;
  }

  return sub_1A38BCF98(0x23uLL);
}