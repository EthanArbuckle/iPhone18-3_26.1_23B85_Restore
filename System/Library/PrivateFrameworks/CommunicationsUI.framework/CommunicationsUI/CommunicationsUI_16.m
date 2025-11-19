unint64_t sub_1C2E202FC()
{
  result = qword_1EC05B560;
  if (!qword_1EC05B560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063DC0);
    sub_1C2E1F904();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063DA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC061560);
    sub_1C2E1FBD0(&qword_1EC05B6C8, &qword_1EC063D98, &unk_1C2E8FA80, sub_1C2E1F82C);
    sub_1C2C94F38(&qword_1EC05B200, &qword_1EC061560);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B560);
  }

  return result;
}

uint64_t CallTranscriptsView.init(transcripts:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for CallTranscriptsView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for CallTranscriptsView()
{
  result = qword_1EC063E08;
  if (!qword_1EC063E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1C2E20588@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v2 = dword_1C2E90140[a1];
  v3 = dword_1C2E9014C[a1];
  v4 = dword_1C2E90158[a1];
  v5 = dword_1C2E90164[a1];
  v6 = dword_1C2E90170[a1];
  v7 = dword_1C2E9017C[a1];
  *a2 = dword_1C2E90134[a1];
  *(a2 + 4) = v5;
  *(a2 + 8) = v3;
  *(a2 + 12) = 0;
  *(a2 + 16) = v7;
  *(a2 + 20) = v4;
  *(a2 + 24) = v2;
  *(a2 + 28) = v3;
  *(a2 + 32) = 0;
  *(a2 + 36) = v7;
  *(a2 + 40) = v4;
  *(a2 + 44) = v5;
  *(a2 + 48) = v6;
  *(a2 + 52) = 0;
  *(a2 + 56) = v7;
  result = 0.0;
  *(a2 + 60) = xmmword_1C2E8FD00;
  *(a2 + 76) = 0;
  return result;
}

uint64_t CallTranscriptsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C2E2069C(a1);
  v2 = sub_1C2E74444();
  sub_1C2E73034();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E00);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

uint64_t sub_1C2E2069C@<X0>(uint64_t a1@<X8>)
{
  v27[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E58);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v27 - v3;
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E48);
  MEMORY[0x1EEE9AC00](v27[0]);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E60);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E38);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = v1;
  v14 = *v1;
  swift_getKeyPath();
  *&v28 = v14;
  sub_1C2D95224();
  sub_1C2E71A64();

  v15 = *(v14 + 112);
  if (v15)
  {
    v16 = *(v14 + 104);

    *v12 = sub_1C2E73DC4();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E70);
    sub_1C2E20AD4(v16, v15, v13, &v12[*(v17 + 44)]);

    v18 = &qword_1EC063E38;
    sub_1C2C736A4(v12, v9, &qword_1EC063E38);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC063E30, &qword_1EC063E38);
    sub_1C2E23314();
    sub_1C2E73F44();
    v19 = v12;
  }

  else
  {
    v20 = v27[0];
    *v4 = sub_1C2E73C24();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E68);
    sub_1C2E21034(v13, &v4[*(v21 + 44)]);
    if (*(v14 + 32) == 1)
    {
      sub_1C2E75754();
    }

    else
    {
      sub_1C2E75764();
    }

    sub_1C2E737F4();
    sub_1C2C71D5C(v4, v6, &qword_1EC063E58);
    v22 = &v6[*(v20 + 36)];
    v23 = v33;
    *(v22 + 4) = v32;
    *(v22 + 5) = v23;
    *(v22 + 6) = v34;
    v24 = v29;
    *v22 = v28;
    *(v22 + 1) = v24;
    v25 = v31;
    *(v22 + 2) = v30;
    *(v22 + 3) = v25;
    v18 = &qword_1EC063E48;
    sub_1C2C736A4(v6, v9, &qword_1EC063E48);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC063E30, &qword_1EC063E38);
    sub_1C2E23314();
    sub_1C2E73F44();
    v19 = v6;
  }

  return sub_1C2C73644(v19, v18);
}

uint64_t sub_1C2E20AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X8>)
{
  v56 = a3;
  v63 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v52 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E48);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v52 - v10;
  v11 = sub_1C2E756D4();
  v12 = *(v11 - 8);
  v53 = v11;
  v54 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  v74 = a2;
  sub_1C2C74960();

  v15 = sub_1C2E748A4();
  v17 = v16;
  v19 = v18;
  sub_1C2E74634();
  v20 = sub_1C2E747F4();
  v22 = v21;
  v24 = v23;
  v52 = v25;

  sub_1C2C72340(v15, v17, v19 & 1);

  LOBYTE(v73) = 2;
  v74 = 0;
  v75 = 1;
  sub_1C2D1EF10();
  sub_1C2E756C4();
  v26 = v53;
  v27 = sub_1C2E74794();
  v57 = v28;
  v58 = v27;
  v30 = v29;
  v59 = v31;
  sub_1C2C72340(v20, v22, v24 & 1);

  (*(v54 + 8))(v14, v26);
  sub_1C2E75744();
  sub_1C2E737F4();
  v32 = v30 & 1;
  v33 = v55;
  v93 = v32;
  *v33 = sub_1C2E73C24();
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E68);
  v35 = v56;
  sub_1C2E21034(v56, v33 + *(v34 + 44));
  if (*(*v35 + 32) == 1)
  {
    sub_1C2E75754();
  }

  else
  {
    sub_1C2E75764();
  }

  sub_1C2E737F4();
  v36 = v61;
  sub_1C2C71D5C(v33, v61, &qword_1EC063E58);
  v37 = (v36 + *(v60 + 36));
  v38 = v97;
  v39 = v99;
  v37[4] = v98;
  v37[5] = v39;
  v37[6] = v100;
  v40 = v95;
  *v37 = v94;
  v37[1] = v40;
  v37[2] = v96;
  v37[3] = v38;
  v41 = v62;
  sub_1C2C736A4(v36, v62, &qword_1EC063E48);
  v42 = v57;
  v43 = v58;
  *&v64 = v58;
  *(&v64 + 1) = v57;
  LOBYTE(v65) = v32;
  *(&v65 + 1) = *v92;
  DWORD1(v65) = *&v92[3];
  LODWORD(v60) = v32;
  v44 = v59;
  *(&v65 + 1) = v59;
  v70 = v89;
  v71 = v90;
  v72 = v91;
  v66 = v85;
  v67 = v86;
  v68 = v87;
  v69 = v88;
  v45 = v90;
  v46 = v63;
  v63[6] = v89;
  v46[7] = v45;
  v46[8] = v72;
  v47 = v67;
  v46[2] = v66;
  v46[3] = v47;
  v48 = v69;
  v46[4] = v68;
  v46[5] = v48;
  v49 = v65;
  *v46 = v64;
  v46[1] = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E78);
  sub_1C2C736A4(v41, v46 + *(v50 + 48), &qword_1EC063E48);
  sub_1C2C736A4(&v64, &v73, &qword_1EC060B90);
  sub_1C2C73644(v36, &qword_1EC063E48);
  sub_1C2C73644(v41, &qword_1EC063E48);
  v73 = v43;
  v74 = v42;
  v75 = v60;
  *v76 = *v92;
  *&v76[3] = *&v92[3];
  v77 = v44;
  v82 = v89;
  v83 = v90;
  v84 = v91;
  v78 = v85;
  v79 = v86;
  v80 = v87;
  v81 = v88;
  return sub_1C2C73644(&v73, &qword_1EC060B90);
}

uint64_t sub_1C2E21034@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for CallTranscriptsView();
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = v4;
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E80);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E88);
  MEMORY[0x1EEE9AC00](v53);
  v65 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E90);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v50 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E98);
  MEMORY[0x1EEE9AC00](v54);
  v63 = &v50 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063EA0);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v50 - v12;
  v13 = sub_1C2E73DD4();
  LOBYTE(v66) = 0;
  sub_1C2E218E8(a1, v68);
  v83 = v68[12];
  v84 = v68[13];
  v85 = v68[14];
  v79 = v68[8];
  v80 = v68[9];
  v81 = v68[10];
  v82 = v68[11];
  v75 = v68[4];
  v76 = v68[5];
  v77 = v68[6];
  v78 = v68[7];
  v71 = v68[0];
  v72 = v68[1];
  v73 = v68[2];
  v74 = v68[3];
  v87[12] = v68[12];
  v87[13] = v68[13];
  v87[14] = v68[14];
  v87[8] = v68[8];
  v87[9] = v68[9];
  v87[10] = v68[10];
  v87[11] = v68[11];
  v87[4] = v68[4];
  v87[5] = v68[5];
  v87[6] = v68[6];
  v87[7] = v68[7];
  v87[0] = v68[0];
  v87[1] = v68[1];
  v86 = *&v68[15];
  v88 = *&v68[15];
  v87[2] = v68[2];
  v87[3] = v68[3];
  sub_1C2C736A4(&v71, v67, &qword_1EC063EA8);
  sub_1C2C73644(v87, &qword_1EC063EA8);
  *(&v69[12] + 7) = v83;
  *(&v69[13] + 7) = v84;
  *(&v69[14] + 7) = v85;
  *(&v69[8] + 7) = v79;
  *(&v69[9] + 7) = v80;
  *(&v69[10] + 7) = v81;
  *(&v69[11] + 7) = v82;
  *(&v69[4] + 7) = v75;
  *(&v69[5] + 7) = v76;
  *(&v69[6] + 7) = v77;
  *(&v69[7] + 7) = v78;
  *(v69 + 7) = v71;
  *(&v69[1] + 7) = v72;
  *(&v69[2] + 7) = v73;
  *(&v69[15] + 7) = v86;
  *(&v69[3] + 7) = v74;
  v14 = v66;
  v15 = sub_1C2E744B4();
  sub_1C2E73034();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v68[0]) = 0;
  v24 = sub_1C2E74444();
  sub_1C2E73034();
  *(&v68[13] + 1) = v69[12];
  *(&v68[14] + 1) = v69[13];
  *(&v68[15] + 1) = v69[14];
  v68[16] = *(&v69[14] + 15);
  *(&v68[9] + 1) = v69[8];
  *(&v68[10] + 1) = v69[9];
  *(&v68[11] + 1) = v69[10];
  *(&v68[12] + 1) = v69[11];
  *(&v68[5] + 1) = v69[4];
  *(&v68[6] + 1) = v69[5];
  *(&v68[7] + 1) = v69[6];
  *(&v68[8] + 1) = v69[7];
  *(&v68[1] + 1) = v69[0];
  *(&v68[2] + 1) = v69[1];
  *(&v68[3] + 1) = v69[2];
  v70 = 0;
  v68[0] = v13;
  LOBYTE(v68[1]) = v14;
  *(&v68[4] + 1) = v69[3];
  LOBYTE(v68[17]) = v15;
  *(&v68[17] + 1) = v17;
  *&v68[18] = v19;
  *(&v68[18] + 1) = v21;
  *&v68[19] = v23;
  BYTE8(v68[19]) = 0;
  LOBYTE(v68[20]) = v24;
  *(&v68[20] + 1) = v25;
  *&v68[21] = v26;
  *(&v68[21] + 1) = v27;
  *&v68[22] = v28;
  BYTE8(v68[22]) = 0;
  v29 = sub_1C2E75AD4();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  v34 = *(*a1 + 32) == 1;
  v50 = a1;
  if (v34)
  {
    sub_1C2E22718(v32);
  }

  else
  {
    sub_1C2E22C3C(v32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063EB0);
  sub_1C2E233CC(&qword_1EC063EB8, &qword_1EC063EB0, &unk_1C2E8FE88, sub_1C2E23450);
  sub_1C2E748D4();
  (*(v30 + 8))(v32, v29);
  memcpy(v67, v68, 0x169uLL);
  sub_1C2C73644(v67, &qword_1EC063EB0);
  v35 = v65;
  (*(v51 + 32))(v65, v7, v52);
  v35[*(v53 + 36)] = 0;
  sub_1C2E74414();
  if (*(v33 + 32) == 1)
  {
    sub_1C2E75754();
  }

  else
  {
    sub_1C2E75764();
  }

  v36 = v58;
  sub_1C2E23508(v50, v58);
  v37 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v38 = swift_allocObject();
  sub_1C2E2356C(v36, v38 + v37);
  sub_1C2E23604();
  v39 = v55;
  v40 = v65;
  sub_1C2E74C44();

  sub_1C2C73644(v40, &qword_1EC063E88);
  v41 = sub_1C2E757A4();
  swift_getKeyPath();
  v66 = v33;
  sub_1C2D95224();
  sub_1C2E71A64();

  LOBYTE(v40) = *(v33 + 80);
  v42 = v63;
  (*(v59 + 32))(v63, v39, v60);
  v43 = v42 + *(v54 + 36);
  *v43 = v41;
  *(v43 + 8) = v40;
  v44 = MEMORY[0x1C69261C0](0.15, 0.85, 0.0);
  swift_getKeyPath();
  v66 = v33;
  sub_1C2E71A64();

  v46 = *(v33 + 64);
  v45 = *(v33 + 72);
  v47 = v61;
  sub_1C2C71D5C(v42, v61, &qword_1EC063E98);
  v48 = (v47 + *(v62 + 36));
  *v48 = v44;
  v48[1] = v46;
  v48[2] = v45;
  sub_1C2C71D5C(v47, v64, &qword_1EC063EA0);
}

uint64_t sub_1C2E218E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v117 = a2;
  v111 = sub_1C2E756D4();
  v3 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C2E74624();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC16CommunicationsUI15CallTranscripts___observationRegistrar;
  *&v166 = v10;
  v118 = sub_1C2D95224();
  v119 = v11;
  sub_1C2E71A64();

  v12 = *(v10 + 48);
  v112 = v10;
  v109 = v5;
  v110 = v3;
  v107 = v7;
  v108 = v6;
  v106 = v9;
  if (v12)
  {
    *&v166 = *(v10 + 40);
    *(&v166 + 1) = v12;
    sub_1C2C74960();

    v13 = sub_1C2E748A4();
    v15 = v14;
    v17 = v16;
    v114 = v18;
    sub_1C2E74684();
    (*(v7 + 104))(v9, *MEMORY[0x1E6980EA8], v6);
    sub_1C2E74664();

    (*(v7 + 8))(v9, v6);
    v115 = sub_1C2E747F4();
    v116 = v19;
    v21 = v20;

    v22 = v110;
    sub_1C2C72340(v13, v15, v17 & 1);
    v23 = v111;

    LOBYTE(v166) = 2;
    *(&v166 + 1) = 0;
    LOBYTE(v167) = 1;
    sub_1C2D1EF10();
    sub_1C2E756C4();
    v24 = v115;
    v25 = v116;
    v26 = sub_1C2E74794();
    v28 = v27;
    v30 = v29;
    v31 = v21 & 1;
    v32 = v24;
    v34 = v33;
    v35 = v26;
    sub_1C2C72340(v32, v25, v31);

    (*(v22 + 8))(v5, v23);
    v115 = v34;
    v116 = v35;
    v36 = v34;
    v10 = v112;
    v113 = v28 & 1;
    sub_1C2C72330(v35, v36, v28 & 1);
    v114 = v30;
  }

  else
  {
    v115 = 0;
    v116 = 0;
    v113 = 0;
    v114 = 0;
  }

  swift_getKeyPath();
  *&v166 = v10;
  sub_1C2E71A64();

  if (*(v10 + 80) == 1 && (swift_getKeyPath(), *&v166 = v10, sub_1C2E71A64(), , (v37 = *(v10 + 96)) != 0))
  {
    *&v166 = *(v10 + 88);
    *(&v166 + 1) = v37;
    sub_1C2C74960();

    v38 = sub_1C2E748A4();
    v40 = v39;
    v42 = v41;
    sub_1C2E74684();
    v44 = v106;
    v43 = v107;
    v45 = v108;
    (*(v107 + 104))(v106, *MEMORY[0x1E6980EA8], v108);
    sub_1C2E74664();

    (*(v43 + 8))(v44, v45);
    v46 = sub_1C2E747F4();
    v48 = v47;
    v50 = v49;

    sub_1C2C72340(v38, v40, v42 & 1);

    LOBYTE(v166) = 2;
    *(&v166 + 1) = 0;
    LOBYTE(v167) = 1;
    sub_1C2D1EF10();
    v51 = v109;
    sub_1C2E756C4();
    v52 = v111;
    v53 = sub_1C2E74794();
    v108 = v54;
    v56 = v55;
    v58 = v57;
    sub_1C2C72340(v46, v48, v50 & 1);

    (*(v110 + 8))(v51, v52);
    v59 = sub_1C2E74474();
    sub_1C2E73034();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    LOBYTE(v166) = v56 & 1;
    LOBYTE(v157) = 0;
    LODWORD(v46) = sub_1C2E740E4();
    sub_1C2E75744();
    sub_1C2E73274();
    *&v120[2] = v178;
    *&v120[18] = v179;
    *&v120[34] = v180;
    LOBYTE(v51) = sub_1C2E74474();
    sub_1C2E73034();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    *(&v124 + 1) = v122[0];
    DWORD1(v124) = *(v122 + 3);
    DWORD1(v125) = *&v121[3];
    *(&v125 + 1) = *v121;
    LOBYTE(v166) = 0;
    *&v123 = v53;
    *(&v123 + 1) = v108;
    LOBYTE(v124) = v56 & 1;
    *(&v124 + 1) = v58;
    LOBYTE(v125) = v59;
    *(&v125 + 1) = v61;
    *&v126[0] = v63;
    *(&v126[0] + 1) = v65;
    *&v126[1] = v67;
    BYTE8(v126[1]) = 0;
    *(v149 + 9) = *(v126 + 9);
    v148 = v125;
    v149[0] = v126[0];
    v146 = v123;
    v147 = v124;
    *&v134 = v53;
    *(&v134 + 1) = v108;
    v10 = v112;
    LOBYTE(v135) = v56 & 1;
    DWORD1(v135) = *(v122 + 3);
    *(&v135 + 1) = v122[0];
    *(&v135 + 1) = v58;
    LOBYTE(v136) = v59;
    DWORD1(v136) = *&v121[3];
    *(&v136 + 1) = *v121;
    *(&v136 + 1) = v61;
    *&v137 = v63;
    *(&v137 + 1) = v65;
    *&v138 = v67;
    BYTE8(v138) = 0;
    sub_1C2C736A4(&v123, &v166, &qword_1EC05E518);
    sub_1C2C73644(&v134, &qword_1EC05E518);
    v159 = v148;
    v160 = v149[0];
    v161 = v149[1];
    v157 = v146;
    v158 = v147;
    *(v162 + 6) = *v120;
    LODWORD(v162[0]) = v46;
    WORD2(v162[0]) = 256;
    *(&v162[1] + 6) = *&v120[16];
    *(&v162[2] + 6) = *&v120[32];
    WORD3(v162[3]) = *&v120[48];
    BYTE8(v162[3]) = v51;
    *&v163 = v69;
    *(&v163 + 1) = v71;
    *&v164 = v73;
    *(&v164 + 1) = v75;
    v165 = 0;
    CGPointMake(&v157);
    v174 = v162[3];
    v175 = v163;
    v176 = v164;
    v177 = v165;
    v170 = v161;
    v171 = v162[0];
    v172 = v162[1];
    v173 = v162[2];
    v166 = v157;
    v167 = v158;
    v168 = v159;
    v169 = v160;
  }

  else
  {
    sub_1C2E236F4(&v166);
  }

  swift_getKeyPath();
  *&v157 = v10;
  sub_1C2E71A64();

  if (*(v10 + 56) == 1 && (swift_getKeyPath(), *&v157 = v10, sub_1C2E71A64(), , (v76 = *(v10 + 72)) != 0))
  {
    *&v157 = *(v10 + 64);
    *(&v157 + 1) = v76;
    sub_1C2C74960();

    v77 = sub_1C2E748A4();
    v79 = v78;
    v81 = v80;
    sub_1C2E745F4();
    v82 = sub_1C2E747F4();
    v84 = v83;
    v86 = v85;
    v88 = v87;

    sub_1C2C72340(v77, v79, v81 & 1);

    v89 = v86 & 1;
    v119 = v82;
    v90 = v84;
    v91 = v84;
    v92 = v89;
    sub_1C2C72330(v82, v91, v89);
    v93 = v88;
  }

  else
  {
    v119 = 0;
    v90 = 0;
    v92 = 0;
    v93 = 0;
  }

  v130 = v174;
  v131 = v175;
  v132 = v176;
  v126[1] = v170;
  v127 = v171;
  v128 = v172;
  v129 = v173;
  v123 = v166;
  v124 = v167;
  v125 = v168;
  v126[0] = v169;
  v142 = v174;
  v143 = v175;
  v144 = v176;
  v138 = v170;
  v139 = v171;
  v140 = v172;
  v141 = v173;
  v134 = v166;
  v135 = v167;
  v136 = v168;
  v137 = v169;
  v153 = v174;
  v154 = v175;
  v155 = v176;
  v149[1] = v170;
  v150 = v171;
  v151 = v172;
  v152 = v173;
  v146 = v166;
  v147 = v167;
  v133 = v177;
  v145 = v177;
  v156 = v177;
  v148 = v168;
  v149[0] = v169;
  sub_1C2C736A4(&v166, &v157, &qword_1EC063EF8);
  v94 = v115;
  v95 = v116;
  v97 = v113;
  v96 = v114;
  sub_1C2C7DD04(v116, v115, v113, v114);
  sub_1C2C736A4(&v134, &v157, &qword_1EC063EF8);
  v98 = v119;
  sub_1C2C7DD04(v119, v90, v92, v93);
  sub_1C2C7F6D4(v95, v94, v97, v96);
  sub_1C2C7F6D4(v98, v90, v92, v93);
  sub_1C2C73644(&v166, &qword_1EC063EF8);
  v99 = v117;
  *v117 = v95;
  v99[1] = v94;
  v99[2] = v97;
  v99[3] = v96;
  v100 = v154;
  *(v99 + 10) = v153;
  *(v99 + 11) = v100;
  *(v99 + 12) = v155;
  *(v99 + 208) = v156;
  v101 = v150;
  *(v99 + 6) = v149[1];
  *(v99 + 7) = v101;
  v102 = v152;
  *(v99 + 8) = v151;
  *(v99 + 9) = v102;
  v103 = v147;
  *(v99 + 2) = v146;
  *(v99 + 3) = v103;
  v104 = v149[0];
  *(v99 + 4) = v148;
  *(v99 + 5) = v104;
  v99[27] = v98;
  v99[28] = v90;
  v99[29] = v92;
  v99[30] = v93;
  sub_1C2C7F6D4(v98, v90, v92, v93);
  v162[3] = v130;
  v163 = v131;
  v164 = v132;
  v165 = v133;
  v161 = v126[1];
  v162[0] = v127;
  v162[1] = v128;
  v162[2] = v129;
  v157 = v123;
  v158 = v124;
  v159 = v125;
  v160 = v126[0];
  sub_1C2C73644(&v157, &qword_1EC063EF8);
  return sub_1C2C7F6D4(v95, v94, v97, v96);
}

uint64_t sub_1C2E22408@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2E73BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DA58);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CallTranscriptsView();
  sub_1C2C736A4(v1 + *(v10 + 20), v9, &qword_1EC05DA58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C2E73554();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C2E75FD4();
    v13 = sub_1C2E74404();
    sub_1C2E72B14();

    sub_1C2E73B94();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C2E22634(uint64_t a1)
{
  v2 = sub_1C2E73554();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C2E73954();
}

uint64_t sub_1C2E22718@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v1 = sub_1C2E73554();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E75B04();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C2E75B24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063EE8) + 48);
  v10 = *MEMORY[0x1E698F610];
  v11 = sub_1C2E75B14();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  *&v8[v9] = 0x3FF0000000000000;
  (*(v6 + 104))(v8, *MEMORY[0x1E698F630], v5);
  v12 = sub_1C2E75AE4();
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 104))(v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E698F5F8], v13);
  sub_1C2E75AF4();
  v16 = sub_1C2E75AA4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1C2E75A74();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063EF0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  v24 = sub_1C2E74F44();
  v25 = MEMORY[0x1E6981568];
  v20[3] = MEMORY[0x1E69815C0];
  v20[4] = v25;
  *v20 = v24;
  v38 = sub_1C2E756D4();
  v39 = MEMORY[0x1E6981AD0];
  __swift_allocate_boxed_opaque_existential_1(v37);
  v34 = 1;
  v35 = 0;
  v36 = 1;
  sub_1C2D1EF10();
  sub_1C2E756C4();
  sub_1C2E75AB4();
  v26 = sub_1C2E75AC4();
  (*(*(v26 - 8) + 56))(v20 + v22, 0, 1, v26);
  *(v20 + v23) = 0;
  (*(v18 + 104))(v20, *MEMORY[0x1E698F598], v17);
  v27 = sub_1C2E740D4();
  v38 = MEMORY[0x1E697FE80];
  v39 = MEMORY[0x1E697FE70];
  LODWORD(v37[0]) = v27;
  sub_1C2E75A94();
  sub_1C2E22408(v3);
  v28 = sub_1C2E75A84();
  v29 = MEMORY[0x1EEE9AC00](v28);
  (*(v31 + 104))(v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E698F5A0], v29);
  return sub_1C2E75A64();
}

uint64_t sub_1C2E22C3C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_1C2E73554();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C2E75B04();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C2E75B24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063EE8) + 48);
  v10 = *MEMORY[0x1E698F628];
  v11 = sub_1C2E75B14();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  *&v8[v9] = 0x3FF0000000000000;
  (*(v6 + 104))(v8, *MEMORY[0x1E698F630], v5);
  v12 = sub_1C2E75AE4();
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 104))(&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E698F5F8], v13);
  sub_1C2E75AF4();
  v16 = sub_1C2E75AA4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1C2E75A74();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063EF0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  v24 = sub_1C2E756D4();
  v25 = MEMORY[0x1E6981AD0];
  v20[3] = v24;
  v20[4] = v25;
  __swift_allocate_boxed_opaque_existential_1(v20);
  LOBYTE(v34) = 0;
  v35 = 0;
  v36 = 1;
  sub_1C2D1EF10();
  sub_1C2E756C4();
  v26 = sub_1C2E75AC4();
  (*(*(v26 - 8) + 56))(v20 + v22, 1, 1, v26);
  *(v20 + v23) = 0;
  (*(v18 + 104))(v20, *MEMORY[0x1E698F598], v17);
  v27 = sub_1C2E740D4();
  v37 = MEMORY[0x1E697FE80];
  v38 = MEMORY[0x1E697FE70];
  v34 = v27;
  sub_1C2E75A94();
  sub_1C2E22408(v3);
  v28 = sub_1C2E75A84();
  v29 = MEMORY[0x1EEE9AC00](v28);
  (*(v31 + 104))(&v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E698F5A0], v29);
  return sub_1C2E75A64();
}

uint64_t sub_1C2E23130@<X0>(uint64_t a1@<X8>)
{
  sub_1C2E2069C(a1);
  v2 = sub_1C2E74444();
  sub_1C2E73034();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063E00);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

void sub_1C2E231D8()
{
  type metadata accessor for CallTranscripts();
  if (v0 <= 0x3F)
  {
    sub_1C2C7E4D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C2E2325C()
{
  result = qword_1EC063E20;
  if (!qword_1EC063E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063E28);
    sub_1C2C94F38(&qword_1EC063E30, &qword_1EC063E38);
    sub_1C2E23314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063E20);
  }

  return result;
}

unint64_t sub_1C2E23314()
{
  result = qword_1EC063E40;
  if (!qword_1EC063E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063E48);
    sub_1C2C94F38(&qword_1EC063E50, &qword_1EC063E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063E40);
  }

  return result;
}

uint64_t sub_1C2E233CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C2E23450()
{
  result = qword_1EC063EC0;
  if (!qword_1EC063EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063EC8);
    sub_1C2C94F38(&qword_1EC063ED0, &qword_1EC063ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063EC0);
  }

  return result;
}

uint64_t sub_1C2E23508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallTranscriptsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2E2356C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallTranscriptsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2E23604()
{
  result = qword_1EC063EE0;
  if (!qword_1EC063EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063EB0);
    sub_1C2E233CC(&qword_1EC063EB8, &qword_1EC063EB0, &unk_1C2E8FE88, sub_1C2E23450);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063EE0);
  }

  return result;
}

double sub_1C2E236F4(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for CallTranscriptsMaterial.Provider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[17])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CallTranscriptsMaterial.Provider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t *sub_1C2E237B0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C2E237C8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v29 = sub_1C2E74EC4();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v30[-2] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2E75694();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30[-2] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30[-2] - v14;
  if (a4)
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C2E75674();
    v16 = sub_1C2DD2904(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1C2DD2904(v17 > 1, v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    (*(v10 + 32))(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v15, v9);
  }

  v19 = dword_1C2E90140[a2];
  v20 = dword_1C2E9014C[a2];
  v21 = dword_1C2E90158[a2];
  v22 = dword_1C2E90164[a2];
  v23 = dword_1C2E90170[a2];
  v24 = dword_1C2E9017C[a2];
  v30[0] = dword_1C2E90134[a2];
  v30[1] = v22;
  v30[2] = v20;
  v30[3] = 0;
  v30[4] = v24;
  v30[5] = v21;
  v30[6] = v19;
  v30[7] = v20;
  v30[8] = 0;
  v30[9] = v24;
  v30[10] = v21;
  v30[11] = v22;
  v30[12] = v23;
  v30[13] = 0;
  v30[14] = v24;
  v31 = xmmword_1C2E8FD00;
  v32 = 0;
  sub_1C2CE5094(v30, v33);
  sub_1C2E75664();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1C2DD2904(0, v16[2] + 1, 1, v16);
  }

  v26 = v16[2];
  v25 = v16[3];
  if (v26 >= v25 >> 1)
  {
    v16 = sub_1C2DD2904(v25 > 1, v26 + 1, 1, v16);
  }

  v16[2] = v26 + 1;
  (*(v10 + 32))(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v12, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05DAE0);
  sub_1C2E756B4();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C2E7A930;
  (*(v6 + 104))(v8, *MEMORY[0x1E69814D8], v29);
  sub_1C2E74F94();
  sub_1C2E756A4();

  return v27;
}

uint64_t sub_1C2E23C10(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  MEMORY[0x1C6927290](a2);
  if (a4)
  {
    return sub_1C2E76874();
  }

  sub_1C2E76874();
  if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x1C69272B0](v7);
}

uint64_t sub_1C2E23C6C(unsigned __int8 a1, uint64_t a2, char a3)
{
  sub_1C2E76854();
  MEMORY[0x1C6927290](a1);
  if (a3)
  {
    sub_1C2E76874();
  }

  else
  {
    sub_1C2E76874();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1C69272B0](v6);
  }

  return sub_1C2E76894();
}

uint64_t sub_1C2E23D30()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_1C2E76854();
  MEMORY[0x1C6927290](v1);
  if (v3 == 1)
  {
    sub_1C2E76874();
  }

  else
  {
    sub_1C2E76874();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1C69272B0](v4);
  }

  return sub_1C2E76894();
}

uint64_t sub_1C2E23DB4(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (a1[2])
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (a1[1] != a2[1])
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_1C2E23DFC()
{
  result = qword_1EC063F00;
  if (!qword_1EC063F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063F00);
  }

  return result;
}

unint64_t sub_1C2E23E54()
{
  result = qword_1EC063F08;
  if (!qword_1EC063F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063F08);
  }

  return result;
}

unint64_t sub_1C2E23ECC()
{
  result = qword_1EC063F10;
  if (!qword_1EC063F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063F10);
  }

  return result;
}

id IntelligenceBodyViewModel.__allocating_init(showsViewButton:displaysAvatarView:callImageURL:contactIdentifier:action:)(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v34 = a3;
  v36 = a4;
  v37 = a5;
  v35 = a2;
  v32 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31[-v9];
  v11 = sub_1C2E71784();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for IntelligenceBodyViewModel.Action(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31[-v22];
  if (a6)
  {
    v24 = v33;
    *v20 = a6;
    v20[1] = v24;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    sub_1C2DB0388(v20, v23);
    v27 = v34;
    sub_1C2C736A4(v34, v10, &unk_1EC061C20);
    sub_1C2CBE768(v23, v17);
    v28 = swift_allocObject();
    sub_1C2E71A94();
    sub_1C2C73644(v27, &unk_1EC061C20);
    sub_1C2CBE7CC(v23);
    *(v28 + 16) = v35 & 1;
    sub_1C2C71D5C(v10, v28 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_callImageURL, &unk_1EC061C20);
    v29 = (v28 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_contactIdentifier);
    v30 = v37;
    *v29 = v36;
    v29[1] = v30;
    sub_1C2DB0388(v17, v28 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_action);
    return v28;
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_6;
  }

  result = [objc_opt_self() faceTimeShowInCallUIURL];
  if (result)
  {
    v26 = result;
    sub_1C2E71754();

    (*(v12 + 32))(v20, v14, v11);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1C2E24240()
{
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1C2E71684();
  v4 = v3;

  qword_1EC063F18 = v2;
  unk_1EC063F20 = v4;
}

uint64_t sub_1C2E24310@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063F80);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v12 = *(sub_1C2E737C4() + 20);
  v13 = *MEMORY[0x1E697F468];
  v14 = sub_1C2E73D44();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #25.0 }

  *v11 = _Q0;
  v20 = sub_1C2E74F14();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0628F0);
  *&v11[*(v21 + 52)] = v20;
  *&v11[*(v21 + 56)] = 256;
  sub_1C2E75744();
  sub_1C2E73274();
  v22 = &v11[*(v6 + 44)];
  v23 = v31[1];
  *v22 = v31[0];
  *(v22 + 1) = v23;
  *(v22 + 2) = v31[2];
  v24 = sub_1C2E75044();
  v25 = sub_1C2E74534();
  (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
  v26 = sub_1C2E745C4();
  sub_1C2C73644(v4, &qword_1EC05D810);
  KeyPath = swift_getKeyPath();
  v28 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  sub_1C2C736A4(v11, v8, &qword_1EC063F80);
  sub_1C2C736A4(v8, a1, &qword_1EC063F80);
  v29 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063F88) + 48));
  *v29 = v24;
  v29[1] = KeyPath;
  v29[2] = v26;
  v29[3] = v28;

  sub_1C2C73644(v11, &qword_1EC063F80);

  return sub_1C2C73644(v8, &qword_1EC063F80);
}

uint64_t sub_1C2E24644@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C2E75744();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063F78);
  return sub_1C2E24310(a1 + *(v3 + 44));
}

uint64_t IntelligenceBodyViewModel.contactIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_contactIdentifier);

  return v1;
}

uint64_t IntelligenceBodyViewModel.__allocating_init(displaysAvatarView:callImageURL:contactIdentifier:action:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_1C2E71A94();
  *(v10 + 16) = a1;
  sub_1C2C71D5C(a2, v10 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_callImageURL, &unk_1EC061C20);
  v11 = (v10 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_contactIdentifier);
  *v11 = a3;
  v11[1] = a4;
  sub_1C2DB0388(a5, v10 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_action);
  return v10;
}

uint64_t IntelligenceBodyViewModel.init(displaysAvatarView:callImageURL:contactIdentifier:action:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C2E71A94();
  *(v5 + 16) = a1;
  sub_1C2C71D5C(a2, v5 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_callImageURL, &unk_1EC061C20);
  v11 = (v5 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_contactIdentifier);
  *v11 = a3;
  v11[1] = a4;
  sub_1C2DB0388(a5, v5 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_action);
  return v5;
}

Swift::Bool __swiftcall IntelligenceBodyViewModel.shouldDisplayGenericBusinessIcon()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_1C2E71784();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2C736A4(v0 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_callImageURL, v3, &unk_1EC061C20);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C2C73644(v3, &unk_1EC061C20);
    v8 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    if (sub_1C2E716F4() == 0x6B636F74732FLL && v9 == 0xE600000000000000)
    {

      (*(v5 + 8))(v7, v4);
      v8 = 1;
    }

    else
    {
      v8 = sub_1C2E767A4();

      (*(v5 + 8))(v7, v4);
    }
  }

  return v8 & 1;
}

CNContact __swiftcall IntelligenceBodyViewModel.contact()()
{
  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_contactIdentifier + 8))
  {
    v1 = objc_opt_self();
    v2 = sub_1C2E75C24();
    v3 = [v1 tu:v2 contactStoreConfigurationForBundleIdentifier:?];

    v4 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
    v5 = sub_1C2E75C24();
    v6 = [v4 contactForIdentifier_];

    if (!v6)
    {
      v6 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    }

    return v6;
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x1E695CD58]);

    return [v8 init];
  }
}

uint64_t IntelligenceBodyViewModel.deinit()
{
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_callImageURL, &unk_1EC061C20);

  sub_1C2CBE7CC(v0 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_action);
  v1 = OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t IntelligenceBodyViewModel.__deallocating_deinit()
{
  sub_1C2C73644(v0 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_callImageURL, &unk_1EC061C20);

  sub_1C2CBE7CC(v0 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_action);
  v1 = OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

__n128 sub_1C2E24D54@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1C2E75744();
  v4 = v3;
  v5 = sub_1C2E75044();
  v6 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  sub_1C2E745E4();
  sub_1C2E74594();
  v7 = sub_1C2E74604();

  KeyPath = swift_getKeyPath();
  sub_1C2E75744();
  sub_1C2E73274();
  v9 = [objc_opt_self() systemOrangeColor];
  v10 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v11 = [v9 resolvedColorWithTraitCollection_];

  v12 = sub_1C2E74E94();
  v13 = sub_1C2E74454();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v7;
  *(a1 + 48) = xmmword_1C2E90190;
  *(a1 + 64) = v15;
  result = v17;
  *(a1 + 80) = v16;
  *(a1 + 96) = v17;
  *(a1 + 112) = v12;
  *(a1 + 120) = v13;
  *(a1 + 121) = 256;
  return result;
}

uint64_t IntelligenceBodyView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  sub_1C2E75184();
  return v1;
}

uint64_t sub_1C2E24F30@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  result = sub_1C2E75184();
  *a1 = v3;
  return result;
}

uint64_t sub_1C2E24F88()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  return sub_1C2E75194();
}

uint64_t (*IntelligenceBodyView.viewModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  sub_1C2E75184();
  return sub_1C2CBE888;
}

uint64_t IntelligenceBodyView.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  sub_1C2E751A4();
  return v1;
}

uint64_t IntelligenceBodyView.participantLabelViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  sub_1C2E75184();
  return v1;
}

uint64_t (*IntelligenceBodyView.participantLabelViewModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4[6] = v6;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  sub_1C2E75184();
  return sub_1C2CBD824;
}

uint64_t IntelligenceBodyView.$participantLabelViewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  sub_1C2E751A4();
  return v1;
}

uint64_t IntelligenceBodyView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6 = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  *a1 = sub_1C2E73C24();
  *(a1 + 8) = 0x4022000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063F30);
  sub_1C2E25360(&v6, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063F38);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1C2E25360@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063F90);
  MEMORY[0x1EEE9AC00](v130);
  v115 = (&v108 - v3);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063F98);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v108 - v6;
  v125 = sub_1C2E71784();
  v124 = *(v125 - 8);
  v7 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v109 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v131 = &v108 - v9;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063FA0);
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v108 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063FA8);
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v108 - v11;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063FB0);
  MEMORY[0x1EEE9AC00](v137);
  v129 = &v108 - v12;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063FB8);
  MEMORY[0x1EEE9AC00](v127);
  v111 = (&v108 - v13);
  v121 = sub_1C2E742D4();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060760);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v108 - v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063FC0);
  MEMORY[0x1EEE9AC00](v123);
  v110 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v122 = (&v108 - v18);
  v19 = type metadata accessor for IntelligenceBodyViewModel.Action(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063FC8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v136 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v135 = &v108 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063FD0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v108 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063FD8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v134 = &v108 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v108 - v33;
  v144 = *a1;
  v141 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  sub_1C2E75184();
  v35 = *(v143 + 16);

  if (v35 == 1)
  {
    v36 = a1[1];
    v141 = *a1;
    *v142 = v36;
    *&v142[9] = *(a1 + 25);
    sub_1C2E26714(v29);
    sub_1C2C71D5C(v29, v34, &qword_1EC063FD0);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = *(v27 + 56);
  v133 = v34;
  v38(v34, v37, 1, v26);
  v141 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E040);
  sub_1C2E75184();
  type metadata accessor for ParticipantLabelViewModel();
  sub_1C2E75174();
  v132 = v141;
  v141 = v144;
  sub_1C2E75184();
  sub_1C2CBE768(v143 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_action, v21);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = v124;
      v41 = *(v124 + 32);
      v42 = v131;
      v43 = v125;
      v41(v131, v21, v125);
      v122 = *(v40 + 16);
      v44 = v109;
      v122(v109, v42, v43);
      v45 = (*(v40 + 80) + 16) & ~*(v40 + 80);
      v46 = swift_allocObject();
      v41((v46 + v45), v44, v43);
      v47 = swift_allocObject();
      *(v47 + 16) = sub_1C2E27CB8;
      *(v47 + 24) = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060798);
      sub_1C2E27D18();
      v48 = v116;
      sub_1C2E751C4();
      v49 = v117;
      sub_1C2E742C4();
      sub_1C2C94F38(&qword_1EC0607A8, &qword_1EC060760);
      sub_1C2E27E60(&qword_1EC060160, MEMORY[0x1E697CB70]);
      v50 = v114;
      v51 = v119;
      v52 = v121;
      sub_1C2E74974();
      (*(v120 + 8))(v49, v52);
      (*(v118 + 8))(v48, v51);
      v53 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064000) + 36));
      v54 = *(sub_1C2E737C4() + 20);
      v55 = *MEMORY[0x1E697F468];
      v56 = sub_1C2E73D44();
      (*(*(v56 - 8) + 104))(&v53[v54], v55, v56);
      __asm { FMOV            V0.2D, #20.0 }

      *v53 = _Q0;
      *&v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDE0) + 36)] = 256;
      v62 = [objc_opt_self() systemFillColor];
      v63 = sub_1C2E74E94();
      KeyPath = swift_getKeyPath();
      *&v141 = v63;
      v65 = sub_1C2E73284();

      v66 = (v50 + *(v123 + 36));
      *v66 = KeyPath;
      v66[1] = v65;
      v67 = v50 + *(v112 + 36);
      v122(v67, v131, v43);
      v68 = swift_getKeyPath();
      v69 = type metadata accessor for EmbedInLinkIfNeededModifier();
      v70 = (v67 + *(v69 + 20));
      *v70 = sub_1C2C94754;
      v70[1] = 0;
      v71 = v67 + *(v69 + 24);
      *v71 = v68;
      *(v71 + 8) = 0;
      v72 = v113;
      sub_1C2C736A4(v50, v113, &qword_1EC063F98);
      v73 = v115;
      *v115 = 0;
      *(v73 + 8) = 1;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064008);
      sub_1C2C736A4(v72, v73 + *(v74 + 48), &qword_1EC063F98);
      sub_1C2C73644(v72, &qword_1EC063F98);
      sub_1C2C736A4(v73, v128, &qword_1EC063F90);
      swift_storeEnumTagMultiPayload();
      sub_1C2C94F38(&qword_1EC063FE8, &qword_1EC063FB8);
      sub_1C2C94F38(&qword_1EC063FF0, &qword_1EC063F90);
      v75 = v129;
      sub_1C2E73F44();
      sub_1C2C736A4(v75, v139, &qword_1EC063FB0);
      swift_storeEnumTagMultiPayload();
      sub_1C2E27BD8();
      v76 = v135;
      sub_1C2E73F44();
      sub_1C2C73644(v75, &qword_1EC063FB0);
      sub_1C2C73644(v73, &qword_1EC063F90);
      sub_1C2C73644(v50, &qword_1EC063F98);
      (*(v124 + 8))(v131, v125);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1C2E27BD8();
      v76 = v135;
      sub_1C2E73F44();
    }
  }

  else
  {
    v77 = *v21;
    v131 = v21[1];
    v78 = v131;
    v79 = swift_allocObject();
    *(v79 + 16) = v77;
    *(v79 + 24) = v78;
    v80 = swift_allocObject();
    *(v80 + 16) = sub_1C2D0BD8C;
    *(v80 + 24) = v79;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC060798);
    sub_1C2E27D18();
    v81 = v116;
    sub_1C2E751C4();
    v82 = v117;
    sub_1C2E742C4();
    sub_1C2C94F38(&qword_1EC0607A8, &qword_1EC060760);
    sub_1C2E27E60(&qword_1EC060160, MEMORY[0x1E697CB70]);
    v83 = v122;
    v84 = v119;
    v85 = v121;
    sub_1C2E74974();
    (*(v120 + 8))(v82, v85);
    (*(v118 + 8))(v81, v84);
    v86 = v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064000) + 36);
    v87 = *(sub_1C2E737C4() + 20);
    v88 = *MEMORY[0x1E697F468];
    v89 = sub_1C2E73D44();
    (*(*(v89 - 8) + 104))(&v86[v87], v88, v89);
    __asm { FMOV            V0.2D, #20.0 }

    *v86 = _Q0;
    *&v86[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDE0) + 36)] = 256;
    v91 = [objc_opt_self() systemFillColor];
    v92 = sub_1C2E74E94();
    v93 = swift_getKeyPath();
    *&v141 = v92;
    v94 = sub_1C2E73284();

    v95 = (v83 + *(v123 + 36));
    *v95 = v93;
    v95[1] = v94;
    v96 = v110;
    sub_1C2C736A4(v83, v110, &qword_1EC063FC0);
    v97 = v111;
    *v111 = 0;
    *(v97 + 8) = 1;
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064010);
    sub_1C2C736A4(v96, v97 + *(v98 + 48), &qword_1EC063FC0);
    sub_1C2C73644(v96, &qword_1EC063FC0);
    sub_1C2C736A4(v97, v128, &qword_1EC063FB8);
    swift_storeEnumTagMultiPayload();
    sub_1C2C94F38(&qword_1EC063FE8, &qword_1EC063FB8);
    sub_1C2C94F38(&qword_1EC063FF0, &qword_1EC063F90);
    v99 = v129;
    sub_1C2E73F44();
    sub_1C2C736A4(v99, v139, &qword_1EC063FB0);
    swift_storeEnumTagMultiPayload();
    sub_1C2E27BD8();
    v76 = v135;
    sub_1C2E73F44();

    sub_1C2C73644(v99, &qword_1EC063FB0);
    sub_1C2C73644(v97, &qword_1EC063FB8);
    sub_1C2C73644(v122, &qword_1EC063FC0);
  }

  v100 = v140;
  v101 = v136;
  v103 = v133;
  v102 = v134;
  sub_1C2C736A4(v133, v134, &qword_1EC063FD8);
  sub_1C2C736A4(v76, v101, &qword_1EC063FC8);
  sub_1C2C736A4(v102, v100, &qword_1EC063FD8);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063FF8);
  v105 = v100 + *(v104 + 48);
  v106 = *(&v132 + 1);
  *v105 = v132;
  *(v105 + 8) = v106;
  *(v105 + 16) = 256;
  sub_1C2C736A4(v101, v100 + *(v104 + 64), &qword_1EC063FC8);

  sub_1C2C73644(v76, &qword_1EC063FC8);
  sub_1C2C73644(v103, &qword_1EC063FD8);
  sub_1C2C73644(v101, &qword_1EC063FC8);

  return sub_1C2C73644(v102, &qword_1EC063FD8);
}

uint64_t sub_1C2E26714@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064018);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v54 - v2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064020);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v54 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064028);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v54 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05EC30);
  MEMORY[0x1EEE9AC00](v65);
  v57 = &v54 - v5;
  v56 = sub_1C2E73BA4();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064030);
  MEMORY[0x1EEE9AC00](v81);
  v66 = &v54 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064038);
  MEMORY[0x1EEE9AC00](v77);
  v62 = &v54 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064040);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v54 - v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064048);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v54 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064050);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC061C20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v20 = sub_1C2E71784();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v61 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  v26 = *v1;
  v27 = v1[1];
  v59 = v1[4];
  v58 = *(v1 + 40);
  v72 = v27;
  v73 = v26;
  *&v85 = v26;
  *(&v85 + 1) = v27;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E048);
  sub_1C2E75184();
  sub_1C2C736A4(v84 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_callImageURL, v19, &unk_1EC061C20);
  v28 = *(v21 + 48);
  if (v28(v19, 1, v20) == 1)
  {

    sub_1C2C73644(v19, &unk_1EC061C20);
    goto LABEL_3;
  }

  (*(v21 + 32))(v25, v19, v20);
  if (sub_1C2E716F4() == 0x6B636F74732FLL && v38 == 0xE600000000000000)
  {

    (*(v21 + 8))(v25, v20);
  }

  else
  {
    v46 = sub_1C2E767A4();

    (*(v21 + 8))(v25, v20);
    if ((v46 & 1) == 0)
    {
LABEL_3:
      v30 = v72;
      v29 = v73;
      *&v85 = v73;
      *(&v85 + 1) = v72;
      sub_1C2E75184();
      sub_1C2C736A4(v84 + OBJC_IVAR____TtC16CommunicationsUI25IntelligenceBodyViewModel_callImageURL, v16, &unk_1EC061C20);

      if (v28(v16, 1, v20) != 1)
      {
        v39 = v61;
        (*(v21 + 32))(v61, v16, v20);
        v40 = v60;
        (*(v21 + 16))(v60, v39, v20);
        (*(v21 + 56))(v40, 0, 1, v20);
        v41 = v62;
        sub_1C2E72FF4();
        sub_1C2E75744();
        sub_1C2E73274();
        v42 = (v41 + *(v77 + 36));
        v43 = v86;
        *v42 = v85;
        v42[1] = v43;
        v42[2] = v87;
        sub_1C2C736A4(v41, v75, &qword_1EC064038);
        swift_storeEnumTagMultiPayload();
        sub_1C2E28014();
        sub_1C2E28068();
        v44 = v76;
        sub_1C2E73F44();
        sub_1C2C736A4(v44, v80, &qword_1EC064050);
        swift_storeEnumTagMultiPayload();
        sub_1C2E27F88();
        sub_1C2E28120();
        sub_1C2E73F44();
        sub_1C2C73644(v44, &qword_1EC064050);
        sub_1C2C73644(v41, &qword_1EC064038);
        return (*(v21 + 8))(v39, v20);
      }

      sub_1C2C73644(v16, &unk_1EC061C20);
      if (v58)
      {
        v83 = v59 & 1;
        v31 = v66;
        if ((v59 & 1) == 0)
        {
LABEL_6:
          *&v85 = v29;
          *(&v85 + 1) = v30;
          sub_1C2E75184();
          IntelligenceBodyViewModel.contact()();

          v32 = v57;
          sub_1C2E714F4();
          sub_1C2E75744();
          sub_1C2E73274();
          v33 = (v32 + *(v65 + 36));
          v34 = v86;
          *v33 = v85;
          v33[1] = v34;
          v33[2] = v87;
          sub_1C2C736A4(v32, v64, &qword_1EC05EC30);
          swift_storeEnumTagMultiPayload();
          sub_1C2E27DA4();
          sub_1C2E27EA8();
          v35 = v68;
          sub_1C2E73F44();
          sub_1C2C736A4(v35, v70, &qword_1EC064028);
          swift_storeEnumTagMultiPayload();
          sub_1C2E27EFC();
          sub_1C2E73F44();
          sub_1C2C73644(v35, &qword_1EC064028);
          v36 = v32;
          v37 = &qword_1EC05EC30;
LABEL_15:
          sub_1C2C73644(v36, v37);
          v48 = &qword_1EC064030;
          sub_1C2C736A4(v31, v80, &qword_1EC064030);
          swift_storeEnumTagMultiPayload();
          sub_1C2E27F88();
          sub_1C2E28120();
          sub_1C2E73F44();
          v49 = v31;
          return sub_1C2C73644(v49, v48);
        }
      }

      else
      {
        v50 = v59;

        sub_1C2E75FD4();
        v51 = sub_1C2E74404();
        sub_1C2E72B14();

        v52 = v54;
        sub_1C2E73B94();
        swift_getAtKeyPath();
        sub_1C2CBE87C(v50, 0);
        (*(v55 + 8))(v52, v56);
        v31 = v66;
        if ((v83 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      swift_storeEnumTagMultiPayload();
      sub_1C2E27DA4();
      sub_1C2E27EA8();
      v53 = v68;
      sub_1C2E73F44();
      sub_1C2C736A4(v53, v70, &qword_1EC064028);
      swift_storeEnumTagMultiPayload();
      sub_1C2E27EFC();
      sub_1C2E73F44();
      v36 = v53;
      v37 = &qword_1EC064028;
      goto LABEL_15;
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1C2E28014();
  sub_1C2E28068();
  v47 = v76;
  sub_1C2E73F44();
  v48 = &qword_1EC064050;
  sub_1C2C736A4(v47, v80, &qword_1EC064050);
  swift_storeEnumTagMultiPayload();
  sub_1C2E27F88();
  sub_1C2E28120();
  sub_1C2E73F44();
  v49 = v47;
  return sub_1C2C73644(v49, v48);
}

void sub_1C2E27448()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_1C2E71734();
    sub_1C2D950D4(MEMORY[0x1E69E7CC0]);
    v3 = sub_1C2E75B34();

    [v1 openSensitiveURL:v2 withOptions:v3];
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1C2E2751C@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1EC05D0B0 != -1)
  {
    swift_once();
  }

  sub_1C2E745A4();
  v2 = sub_1C2E74764();
  v4 = v3;
  v6 = v5;

  sub_1C2E74514();
  v7 = sub_1C2E747F4();
  v9 = v8;
  v11 = v10;

  sub_1C2C72340(v2, v4, v6 & 1);

  LODWORD(v30) = sub_1C2E740D4();
  v12 = sub_1C2E74794();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1C2C72340(v7, v9, v11 & 1);

  v19 = sub_1C2E74444();
  sub_1C2E73034();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1C2E75744();
  sub_1C2E737F4();
  *&v29[55] = v33;
  *&v29[71] = v34;
  *&v29[87] = v35;
  *&v29[103] = v36;
  *&v29[7] = v30;
  *&v29[23] = v31;
  *&v29[39] = v32;
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  *(a1 + 40) = v21;
  *(a1 + 48) = v23;
  *(a1 + 56) = v25;
  *(a1 + 64) = v27;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v29[64];
  *(a1 + 153) = *&v29[80];
  *(a1 + 169) = *&v29[96];
  *(a1 + 184) = *(&v36 + 1);
  *(a1 + 73) = *v29;
  *(a1 + 89) = *&v29[16];
  result = *&v29[32];
  *(a1 + 105) = *&v29[32];
  *(a1 + 121) = *&v29[48];
  return result;
}

uint64_t sub_1C2E277AC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6 = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  *a1 = sub_1C2E73C24();
  *(a1 + 8) = 0x4022000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063F30);
  sub_1C2E25360(&v6, a1 + *(v4 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC063F38);
  *(a1 + *(result + 36)) = 256;
  return result;
}

void sub_1C2E27860()
{
  sub_1C2CE92C4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IntelligenceBodyViewModel.Action(319);
    if (v1 <= 0x3F)
    {
      sub_1C2E71AA4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1C2E279A4()
{
  result = sub_1C2D72450();
  if (v1 <= 0x3F)
  {
    result = sub_1C2E71784();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2E27A24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2E27A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C2E27AC8()
{
  result = qword_1EC063F60;
  if (!qword_1EC063F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063F38);
    sub_1C2C94F38(&qword_1EC063F68, &qword_1EC063F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063F60);
  }

  return result;
}

unint64_t sub_1C2E27BD8()
{
  result = qword_1EC063FE0;
  if (!qword_1EC063FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC063FB0);
    sub_1C2C94F38(&qword_1EC063FE8, &qword_1EC063FB8);
    sub_1C2C94F38(&qword_1EC063FF0, &qword_1EC063F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC063FE0);
  }

  return result;
}

void sub_1C2E27CB8()
{
  sub_1C2E71784();

  sub_1C2E27448();
}

unint64_t sub_1C2E27D18()
{
  result = qword_1EC0607A0;
  if (!qword_1EC0607A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC060798);
    sub_1C2CD8E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0607A0);
  }

  return result;
}

unint64_t sub_1C2E27DA4()
{
  result = qword_1EC064058;
  if (!qword_1EC064058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC05EC30);
    sub_1C2E27E60(&qword_1EDDCDAC8, MEMORY[0x1E695CFD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064058);
  }

  return result;
}

uint64_t sub_1C2E27E60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C2E27EA8()
{
  result = qword_1EC064060;
  if (!qword_1EC064060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064060);
  }

  return result;
}

unint64_t sub_1C2E27EFC()
{
  result = qword_1EC064068;
  if (!qword_1EC064068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064028);
    sub_1C2E27DA4();
    sub_1C2E27EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064068);
  }

  return result;
}

unint64_t sub_1C2E27F88()
{
  result = qword_1EC064070;
  if (!qword_1EC064070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064050);
    sub_1C2E28014();
    sub_1C2E28068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064070);
  }

  return result;
}

unint64_t sub_1C2E28014()
{
  result = qword_1EC064078;
  if (!qword_1EC064078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064078);
  }

  return result;
}

unint64_t sub_1C2E28068()
{
  result = qword_1EC064080;
  if (!qword_1EC064080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064038);
    sub_1C2C94F38(&qword_1EC064088, &qword_1EC064090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064080);
  }

  return result;
}

unint64_t sub_1C2E28120()
{
  result = qword_1EC064098;
  if (!qword_1EC064098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064030);
    sub_1C2E27EFC();
    sub_1C2E27DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064098);
  }

  return result;
}

unint64_t sub_1C2E281AC()
{
  result = qword_1EC0640A0;
  if (!qword_1EC0640A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0640A8);
    sub_1C2E28264();
    sub_1C2C94F38(&qword_1EC05BA78, &qword_1EC05DD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0640A0);
  }

  return result;
}

unint64_t sub_1C2E28264()
{
  result = qword_1EC0640B0;
  if (!qword_1EC0640B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0640B8);
    sub_1C2E2831C();
    sub_1C2C94F38(&qword_1EC05E3E0, &qword_1EC05E3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0640B0);
  }

  return result;
}

unint64_t sub_1C2E2831C()
{
  result = qword_1EC0640C0;
  if (!qword_1EC0640C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0640C8);
    sub_1C2C94F38(&qword_1EC0640D0, &qword_1EC0640D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0640C0);
  }

  return result;
}

void VariableBlurModifier.init(isBlurred:safeAreaPadding:blurPoint:)(char a1@<W0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v6 = sub_1C2E75894();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C2E73C34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v46 = a1;
  do
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    ++v13;
  }

  while (v14 * 0.1 + 0.0 < 1.0);
  v45 = MEMORY[0x1E69E7CC0];
  sub_1C2CA4EC0(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    goto LABEL_22;
  }

  v41 = v10;
  v42 = v9;
  v43 = a2;
  v15 = v45;
  if (!v14)
  {
LABEL_13:
    v29 = (v44 + 8);
    while (1)
    {
      v30 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_20;
      }

      _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
      sub_1C2E75884();
      sub_1C2E75864();
      (*v29)(v8, v6);
      sub_1C2E74F74();

      v31 = sub_1C2E75534();
      v45 = v15;
      v34 = *(v15 + 16);
      v33 = *(v15 + 24);
      if (v34 >= v33 >> 1)
      {
        v36 = v31;
        v37 = a3;
        v38 = v32;
        sub_1C2CA4EC0((v33 > 1), v34 + 1, 1);
        v32 = v38;
        a3 = v37;
        v31 = v36;
        v15 = v45;
      }

      *(v15 + 16) = v34 + 1;
      v35 = v15 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v32;
      ++v13;
      if (v30 * 0.1 + 0.0 >= 1.0)
      {
        goto LABEL_12;
      }
    }
  }

  v40 = a3;
  v16 = 0;
  v17 = (v44 + 8);
  v18 = 0.0;
  while (v18 < 1.0)
  {
    _s7SwiftUI5ColorV014CommunicationsB0E027defaultSelectedControlImageC0ACvgZ_0();
    sub_1C2E75884();
    sub_1C2E75864();
    (*v17)(v8, v6);
    sub_1C2E74F74();

    v19 = sub_1C2E75534();
    v45 = v15;
    v22 = *(v15 + 16);
    v21 = *(v15 + 24);
    if (v22 >= v21 >> 1)
    {
      v24 = v19;
      v25 = v20;
      sub_1C2CA4EC0((v21 > 1), v22 + 1, 1);
      v20 = v25;
      v19 = v24;
      v15 = v45;
    }

    v18 = ++v16 * 0.1 + 0.0;
    *(v15 + 16) = v22 + 1;
    v23 = v15 + 16 * v22;
    *(v23 + 32) = v19;
    *(v23 + 40) = v20;
    if (v13 == v16)
    {
      a3 = v40;
      if (v18 < 1.0)
      {
        goto LABEL_13;
      }

LABEL_12:
      *(swift_allocObject() + 16) = v15;
      (*(v41 + 104))(v12, *MEMORY[0x1E697F3A0], v42);
      v26 = sub_1C2E75094();
      v27 = v46;
      v28 = v43;
      *v43 = v26;
      *(v28 + 1) = a3;
      *(v28 + 16) = v27;
      return;
    }
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1C2E28838()
{
  v0 = sub_1C2E735E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C2E74744();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC061CA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A930;
  sub_1C2E74F44();
  *(v4 + 32) = sub_1C2E75534();
  *(v4 + 40) = v5;
  v8 = v4;

  sub_1C2CA325C(v6);
  sub_1C2E75544();
  sub_1C2E735C4();

  sub_1C2E73594();
  sub_1C2D7294C(v9);
  return (*(v1 + 8))(v3, v0);
}

uint64_t VariableBlurModifier.body(content:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0640F0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - v4;
  v6 = *(v1 + 8);
  sub_1C2E74454();
  v9[1] = v6;
  v9[2] = v6;
  v9[3] = v6;
  v9[4] = v6;
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0640F8);
  sub_1C2E74194();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064100);
  (*(*(v7 - 8) + 16))(v5, a1, v7);
  sub_1C2E28C9C();
  sub_1C2E74A14();
  return sub_1C2E28E70(v5);
}

uint64_t sub_1C2E28B2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0640F0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v9 - v4;
  v6 = *(v1 + 8);
  sub_1C2E74454();
  v9[1] = v6;
  v9[2] = v6;
  v9[3] = v6;
  v9[4] = v6;
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0640F8);
  sub_1C2E74194();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064100);
  (*(*(v7 - 8) + 16))(v5, a1, v7);
  sub_1C2E28C9C();
  sub_1C2E74A14();
  return sub_1C2E28E70(v5);
}

unint64_t sub_1C2E28C9C()
{
  result = qword_1EC05CB80;
  if (!qword_1EC05CB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0640F0);
    sub_1C2E28D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB80);
  }

  return result;
}

unint64_t sub_1C2E28D28()
{
  result = qword_1EC05CBB8;
  if (!qword_1EC05CBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0640F8);
    sub_1C2E28DB4();
    sub_1C2E28E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CBB8);
  }

  return result;
}

unint64_t sub_1C2E28DB4()
{
  result = qword_1EC05CB30;
  if (!qword_1EC05CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB30);
  }

  return result;
}

unint64_t sub_1C2E28E18()
{
  result = qword_1EC05CB28;
  if (!qword_1EC05CB28)
  {
    sub_1C2E741A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05CB28);
  }

  return result;
}

uint64_t sub_1C2E28E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0640F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2E28EF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2E28F3C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_1C2E28F8C()
{
  result = [objc_opt_self() sbui:1 systemAperturePreferredFontForTextStyle:?];
  qword_1EC064108 = result;
  return result;
}

id static UIFont.smallAperture.getter()
{
  if (qword_1EC05D0B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC064108;

  return v1;
}

uint64_t ControlGridViewConfiguration.__allocating_init(arrangement:width:buttonSizeRatio:buttonPadding:rowSpacing:edgeInsets:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  sub_1C2E71A94();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;
  *(v18 + 80) = a9;
  return v18;
}

uint64_t sub_1C2E290C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C2E29154()
{
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A54();
}

uint64_t sub_1C2E291F0()
{
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2E29278()
{
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A54();
}

void (*sub_1C2E29318(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI28ControlGridViewConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2E2A704();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2CF0F6C();
  return sub_1C2E29420;
}

double sub_1C2E2942C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  result = *(v3 + 24);
  *a2 = result;
  return result;
}

double sub_1C2E294E0()
{
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1C2E29564(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E2A704();
    sub_1C2E71A54();
  }

  return result;
}

void (*sub_1C2E29660(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI28ControlGridViewConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2E2A704();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2E09C7C();
  return sub_1C2E29768;
}

double sub_1C2E29774@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  result = *(v3 + 32);
  *a2 = result;
  return result;
}

double sub_1C2E29828()
{
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t sub_1C2E298AC(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E2A704();
    sub_1C2E71A54();
  }

  return result;
}

void (*sub_1C2E299A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI28ControlGridViewConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2E2A704();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2DFE15C();
  return sub_1C2E29AB0;
}

double sub_1C2E29ABC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  result = *(v3 + 40);
  *a2 = result;
  return result;
}

double sub_1C2E29B70()
{
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t sub_1C2E29BF4(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E2A704();
    sub_1C2E71A54();
  }

  return result;
}

void (*sub_1C2E29CF0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI28ControlGridViewConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2E2A704();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2E0A35C();
  return sub_1C2E29DF8;
}

double sub_1C2E29E54@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  result = *(v3 + 48);
  *a2 = result;
  return result;
}

double sub_1C2E29F08()
{
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 48);
}

uint64_t sub_1C2E29F8C(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E2A704();
    sub_1C2E71A54();
  }

  return result;
}

void (*sub_1C2E2A088(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI28ControlGridViewConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2E2A704();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2E29E04();
  return sub_1C2E2A190;
}

__n128 sub_1C2E2A19C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  result = *(v3 + 56);
  v5 = *(v3 + 72);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double sub_1C2E2A258()
{
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_1C2E2A2E0(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  result = sub_1C2E73024();
  if (result)
  {
    v4[7] = a1;
    v4[8] = a2;
    v4[9] = a3;
    v4[10] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E2A704();
    sub_1C2E71A54();
  }

  return result;
}

void (*sub_1C2E2A40C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI28ControlGridViewConfiguration___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2E2A704();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2DFE5FC();
  return sub_1C2E2A514;
}

double sub_1C2E2A520()
{
  swift_getKeyPath();
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_getKeyPath();
  sub_1C2E71A64();

  swift_beginAccess();
  v2 = v1 * *(v0 + 32);
  swift_getKeyPath();
  sub_1C2E71A64();

  swift_getKeyPath();
  sub_1C2E71A64();

  return v2;
}

uint64_t ControlGridViewConfiguration.init(arrangement:width:buttonSizeRatio:buttonPadding:rowSpacing:edgeInsets:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  sub_1C2E71A94();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 80) = a9;
  return v9;
}

unint64_t sub_1C2E2A704()
{
  result = qword_1EC064118;
  if (!qword_1EC064118)
  {
    type metadata accessor for ControlGridViewConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064118);
  }

  return result;
}

uint64_t type metadata accessor for ControlGridViewConfiguration()
{
  result = qword_1EC064128;
  if (!qword_1EC064128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1C2E2A7A8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *(v1 + 72) = v3;
  *(v1 + 56) = v4;
  return result;
}

uint64_t ControlGridViewConfiguration.deinit()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI28ControlGridViewConfiguration___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ControlGridViewConfiguration.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC16CommunicationsUI28ControlGridViewConfiguration___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t ControlGridView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  swift_getKeyPath();
  *&v42 = v2;
  sub_1C2E2A704();
  sub_1C2E71A64();

  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v34 = v4;

    result = sub_1C2CA4E1C(0, v34, 0);
    v7 = v34;
    v8 = 0;
    v9 = v46;
    v35 = v3 + 32;
    v33 = v3;
    while (v8 < *(v3 + 16))
    {
      v10 = *(v35 + 8 * v8);
      v11 = *(v10 + 16);
      if (v11)
      {
        v37 = v9;
        v45 = v5;

        sub_1C2CA4E5C(0, v11, 0);
        v12 = v45;
        v13 = v10 + 32;
        do
        {
          sub_1C2E2AEC4(v13, &v42);
          v39[0] = v42;
          v39[1] = v43;
          v40 = v44;
          if (*(&v43 + 1))
          {
            sub_1C2C716EC(v39, v41);
            sub_1C2C716EC(v41, v39);
            v14 = swift_allocObject();
            sub_1C2C716EC(v39, v14 + 16);
            *(v14 + 56) = v2;

            v15 = sub_1C2E2AF9C;
          }

          else
          {
            sub_1C2E2AF34(v39);
            v15 = 0;
            v14 = 0;
          }

          v45 = v12;
          v17 = *(v12 + 16);
          v16 = *(v12 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1C2CA4E5C((v16 > 1), v17 + 1, 1);
            v12 = v45;
          }

          *(v12 + 16) = v17 + 1;
          v18 = v12 + 16 * v17;
          *(v18 + 32) = v15;
          *(v18 + 40) = v14;
          v13 += 40;
          --v11;
        }

        while (v11);

        v9 = v37;
        v3 = v33;
        v7 = v34;
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v12 = v5;
      }

      v46 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_1C2CA4E1C((v19 > 1), v20 + 1, 1);
        v7 = v34;
        v9 = v46;
      }

      ++v8;
      *(v9 + 16) = v20 + 1;
      *(v9 + 8 * v20 + 32) = v12;
      if (v8 == v7)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_19:
    swift_getKeyPath();
    *&v42 = v2;
    sub_1C2E71A64();

    swift_beginAccess();
    v21 = *(v2 + 40) + *(v2 + 40);
    swift_getKeyPath();
    *&v41[0] = v2;
    sub_1C2E71A64();

    swift_beginAccess();
    v22 = *(v2 + 48);
    v23 = sub_1C2E2A520();
    v25 = v24;
    type metadata accessor for GridViewConfiguration();
    v26 = swift_allocObject();
    sub_1C2E71A94();
    *(v26 + 16) = v9;
    *(v26 + 24) = v21;
    *(v26 + 32) = v22;
    *(v26 + 40) = v23;
    *(v26 + 48) = v25;
    *(v26 + 56) = 0;
    swift_getKeyPath();
    *&v39[0] = v2;
    sub_1C2E71A64();

    swift_beginAccess();
    v36 = *(v2 + 72);
    v38 = *(v2 + 56);
    v27 = sub_1C2E74454();
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064120) + 36);
    v29 = *MEMORY[0x1E697DBA8];
    v30 = sub_1C2E730D4();
    v31 = *(v30 - 8);
    (*(v31 + 104))(a1 + v28, v29, v30);
    result = (*(v31 + 56))(a1 + v28, 0, 1, v30);
    *a1 = v26;
    *(a1 + 8) = v27;
    *(a1 + 16) = v38;
    *(a1 + 32) = v36;
    *(a1 + 48) = 0;
  }

  return result;
}

uint64_t sub_1C2E2ADD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 16))(v6, v7);
  sub_1C2E2A520();
  sub_1C2D08E7C();
  result = sub_1C2E75374();
  *a2 = result;
  return result;
}

uint64_t sub_1C2E2AEC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2E2AF34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F4B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2E2AFCC()
{
  result = sub_1C2E71AA4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C2E2B3AC()
{
  result = qword_1EC064138;
  if (!qword_1EC064138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064120);
    sub_1C2E2B438();
    sub_1C2E2B518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064138);
  }

  return result;
}

unint64_t sub_1C2E2B438()
{
  result = qword_1EC064140;
  if (!qword_1EC064140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064148);
    sub_1C2E2B4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064140);
  }

  return result;
}

unint64_t sub_1C2E2B4C4()
{
  result = qword_1EC064150;
  if (!qword_1EC064150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064150);
  }

  return result;
}

unint64_t sub_1C2E2B518()
{
  result = qword_1EC062188;
  if (!qword_1EC062188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC062190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC062188);
  }

  return result;
}

id sub_1C2E2B648@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__contactStore;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_1C2E2B718()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  v1 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__contactStore;
  swift_beginAccess();
  v2 = *(v4 + v1);

  return v2;
}

unint64_t sub_1C2E2B7B4()
{
  result = qword_1EC064168;
  if (!qword_1EC064168)
  {
    type metadata accessor for ContactDetailsCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064168);
  }

  return result;
}

uint64_t type metadata accessor for ContactDetailsCoordinator()
{
  result = qword_1EC0641B0;
  if (!qword_1EC0641B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C2E2B858(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__contactStore;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_1C2C6E1B4(0, &qword_1EC064178);
  v6 = v5;
  v7 = sub_1C2E76234();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E2B7B4();
    sub_1C2E71A54();
  }
}

void sub_1C2E2B990(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__contactStore;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void (*sub_1C2E2BA1C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2E2B7B4();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2E2B57C();
  return sub_1C2E2BB24;
}

uint64_t sub_1C2E2BB90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__observableConfiguration;
  swift_beginAccess();
  return sub_1C2C6E3A4(v3 + v4, a2);
}

uint64_t sub_1C2E2BC28(uint64_t a1)
{
  sub_1C2C6E3A4(a1, v2);
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A54();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1C2E2BCD8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  v3 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__observableConfiguration;
  swift_beginAccess();
  return sub_1C2C6E3A4(v5 + v3, a1);
}

uint64_t sub_1C2E2BD70(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A54();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C2E2BE10(uint64_t a1, uint64_t a2)
{
  sub_1C2C6E3A4(a2, v5);
  v3 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__observableConfiguration;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(a1 + v3);
  sub_1C2C716EC(v5, a1 + v3);
  return swift_endAccess();
}

void (*sub_1C2E2BEAC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2E2B7B4();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2E2BB30();
  return sub_1C2E2BFB4;
}

void (*sub_1C2E2BFC0(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__detailsViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C2E2C058;
}

void sub_1C2E2C058(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1C2E2C0D4@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_1C2E2C16C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C2E2C22C(v1);
}

uint64_t sub_1C2E2C19C()
{
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void sub_1C2E2C22C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      sub_1C2C6E1B4(0, &qword_1EC064190);
      v4 = v3;
      v5 = sub_1C2E76234();

      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2E2B7B4();
  sub_1C2E71A54();
}

void (*sub_1C2E2C3EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2E2B7B4();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2E2BFC0(v4);
  return sub_1C2E2C4F4;
}

id ContactDetailsCoordinator.__allocating_init(detailsViewController:observableConfiguration:contactStore:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1C2E2DC94(a1, a2, a3);

  return v8;
}

id ContactDetailsCoordinator.init(detailsViewController:observableConfiguration:contactStore:)(void *a1, void *a2, void *a3)
{
  v5 = sub_1C2E2DC94(a1, a2, a3);

  return v5;
}

uint64_t sub_1C2E2C59C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A54();
  sub_1C2C71668(a1);
}

uint64_t sub_1C2E2C6B0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  v4 = (v3 + OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__didUpdateContacts);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1C2CB1B14;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return sub_1C2C6EE50(v5);
}

uint64_t sub_1C2E2C78C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C2CB1B1C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C2C6EE50(v1);
  sub_1C2E2B7B4();
  sub_1C2E71A54();
  sub_1C2C71668(v4);
}

uint64_t sub_1C2E2C8B8()
{
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  v1 = (v0 + OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__didUpdateContacts);
  swift_beginAccess();
  v2 = *v1;
  sub_1C2C6EE50(*v1);
  return v2;
}

uint64_t sub_1C2E2C95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__didUpdateContacts);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a2;
  v5[1] = a3;
  sub_1C2C6EE50(a2);
  return sub_1C2C71668(v6);
}

void (*sub_1C2E2C9E0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2E2B7B4();
  sub_1C2E71A64();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2E71A84();

  v4[7] = sub_1C2E2C650();
  return sub_1C2E2CAE8;
}

uint64_t sub_1C2E2CAF4()
{
  v1 = v0;
  v92 = *MEMORY[0x1E69E9840];
  swift_getKeyPath();
  v89[0] = v0;
  v84 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator___observationRegistrar;
  v83 = sub_1C2E2B7B4();
  sub_1C2E71A64();

  v2 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__observableConfiguration;
  swift_beginAccess();
  sub_1C2C6E3A4(&v0[v2], v89);
  v3 = v90;
  v4 = v91;
  __swift_project_boxed_opaque_existential_1(v89, v90);
  v5 = (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v89);
  if (v5 >> 62)
  {
    goto LABEL_76;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
LABEL_3:
    v82 = v6;
    v72 = v2;
    v7 = MEMORY[0x1E69E7CC0];
    v89[0] = MEMORY[0x1E69E7CC0];
    v8 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__contactStore;
    v85 = v1;
    swift_beginAccess();
    v9 = 0;
    v1 = 0;
    v81 = v5 & 0xC000000000000001;
    v80 = v5 & 0xFFFFFFFFFFFFFF8;
    v79 = v5;
    v73 = v5 + 32;
    v78 = v7;
    while (1)
    {
      v10 = v9;
      while (1)
      {
        if (v81)
        {
          v11 = MEMORY[0x1C6927010](v10, v79);
        }

        else
        {
          if (v10 >= *(v80 + 16))
          {
            goto LABEL_73;
          }

          v11 = *(v79 + 8 * v10 + 32);
        }

        v2 = v11;
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          v6 = sub_1C2E764E4();
          if (!v6)
          {
          }

          goto LABEL_3;
        }

        swift_getKeyPath();
        v88[0] = v85;
        sub_1C2E71A64();

        v12 = *&v85[v8];
        v13 = [v2 identifier];
        if (!v13)
        {
          sub_1C2E75C64();
          v13 = sub_1C2E75C24();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0641C0);
        v14 = sub_1C2E75D64();
        v88[0] = 0;
        v5 = [v12 unifiedContactWithIdentifier:v13 keysToFetch:v14 error:v88];

        if (v5)
        {
          break;
        }

        v15 = v88[0];
        v16 = sub_1C2E716D4();

        v5 = v16;
        swift_willThrow();
        v1 = 0;

        ++v10;
        if (v9 == v82)
        {
          goto LABEL_18;
        }
      }

      v17 = v88[0];

      MEMORY[0x1C6926780]();
      if (*((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C2E75D94();
      }

      sub_1C2E75DB4();
      v78 = v89[0];
      if (v9 == v82)
      {
LABEL_18:
        v18 = v78;
        v19 = v78 >> 62;
        if (v78 >> 62)
        {
          goto LABEL_81;
        }

        v75 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
        if (!v75)
        {
          goto LABEL_66;
        }

        v71 = v19;
        v19 = 0;
        v77 = v18 & 0xC000000000000001;
        v76 = v18 & 0xFFFFFFFFFFFFFF8;
        while (2)
        {
          if (v19 == v82)
          {
LABEL_66:
          }

          if (!v81)
          {
            if (v19 >= *(v80 + 16))
            {
              __break(1u);
            }

            else
            {
              v20 = *(v73 + 8 * v19);
LABEL_26:
              v21 = v20;
              if (!__OFADD__(v19++, 1))
              {
                v74 = v19;
                v2 = 0;
                while (1)
                {
                  if (v77)
                  {
                    v23 = MEMORY[0x1C6927010](v2, v18);
                  }

                  else
                  {
                    if (v2 >= *(v76 + 16))
                    {
                      goto LABEL_75;
                    }

                    v23 = *(v18 + 8 * v2 + 32);
                  }

                  v24 = v23;
                  v25 = v2 + 1;
                  if (__OFADD__(v2, 1))
                  {
                    goto LABEL_74;
                  }

                  v26 = [v23 identifier];
                  v27 = sub_1C2E75C64();
                  v29 = v28;

                  v30 = [v21 identifier];
                  v31 = sub_1C2E75C64();
                  v33 = v32;

                  if (v27 == v31 && v29 == v33)
                  {
                    break;
                  }

                  v5 = sub_1C2E767A4();

                  if (v5)
                  {
                    goto LABEL_41;
                  }

                  ++v2;
                  v35 = v85;
                  v18 = v78;
                  if (v25 == v75)
                  {

                    goto LABEL_44;
                  }
                }

LABEL_41:
                v5 = v24;
                v36 = [v21 isEqual_];

                v35 = v85;
                v18 = v78;
                v19 = v74;
                if (v36)
                {
                  continue;
                }

LABEL_44:

                swift_getKeyPath();
                v89[0] = v35;
                sub_1C2E71A64();

                sub_1C2C6E3A4(&v35[v72], v89);
                v74 = v91;
                v75 = v90;
                v37 = __swift_project_boxed_opaque_existential_1(v89, v90);
                if (v71)
                {
                  v38 = sub_1C2E764E4();
                  if (!v38)
                  {
                    goto LABEL_68;
                  }

LABEL_46:
                  v76 = v37;
                  v87 = MEMORY[0x1E69E7CC0];
                  sub_1C2CA4DA4(0, v38 & ~(v38 >> 63), 0);
                  if (v38 < 0)
                  {
                    __break(1u);
                  }

                  v39 = v87;
                  v40 = sub_1C2E71D54();
                  v41 = 0;
                  v81 = v40;
                  v42 = *(v40 - 8);
                  v80 = *(v42 + 64);
                  v79 = v42 + 32;
                  v82 = v38;
                  do
                  {
                    v43 = MEMORY[0x1EEE9AC00](v40);
                    v45 = &v70 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
                    if (v77)
                    {
                      v46 = MEMORY[0x1C6927010](v41, v18, v43);
                    }

                    else
                    {
                      v46 = *(v18 + 8 * v41 + 32);
                    }

                    v47 = v46;
                    if (![v46 isUnknown])
                    {
                      goto LABEL_60;
                    }

                    v48 = [v47 givenName];
                    v49 = sub_1C2E75C64();
                    v51 = v50;

                    v52 = HIBYTE(v51) & 0xF;
                    if ((v51 & 0x2000000000000000) == 0)
                    {
                      v52 = v49 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v52)
                    {
                      goto LABEL_58;
                    }

                    v53 = [v47 familyName];
                    v54 = sub_1C2E75C64();
                    v56 = v55;

                    v57 = HIBYTE(v56) & 0xF;
                    if ((v56 & 0x2000000000000000) == 0)
                    {
                      v57 = v54 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v57)
                    {
LABEL_58:
                      v58 = [objc_opt_self() stringFromContact:v47 style:0];
                      if (v58)
                      {
                        v59 = v58;
                        sub_1C2E75C64();
                      }

                      [v47 mutableCopy];
                      sub_1C2E76444();
                      swift_unknownObjectRelease();
                      sub_1C2C6E1B4(0, &unk_1EC05F1A0);
                      swift_dynamicCast();
                      v60 = v86;
                      v61 = sub_1C2E75C24();
                      [v60 setGivenName_];

                      v62 = sub_1C2E75C24();
                      [v60 setFamilyName_];

                      sub_1C2E71D24();
                    }

                    else
                    {
LABEL_60:
                      sub_1C2E71D44();
                    }

                    v87 = v39;
                    v64 = *(v39 + 16);
                    v63 = *(v39 + 24);
                    v18 = v78;
                    if (v64 >= v63 >> 1)
                    {
                      sub_1C2CA4DA4(v63 > 1, v64 + 1, 1);
                      v39 = v87;
                    }

                    ++v41;
                    *(v39 + 16) = v64 + 1;
                    v40 = (*(v42 + 32))(v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v64, v45, v81);
                  }

                  while (v82 != v41);
                }

                else
                {
                  v38 = *(v76 + 16);
                  if (v38)
                  {
                    goto LABEL_46;
                  }

LABEL_68:

                  v39 = MEMORY[0x1E69E7CC0];
                }

                (*(v74 + 24))(v39, v75);

                __swift_destroy_boxed_opaque_existential_1(v89);
                swift_getKeyPath();
                v65 = v85;
                v89[0] = v85;
                sub_1C2E71A64();

                v66 = &v65[OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__didUpdateContacts];
                result = swift_beginAccess();
                v68 = *v66;
                if (*v66)
                {

                  v68(v69);
                  return sub_1C2C71668(v68);
                }

                return result;
              }
            }

            __break(1u);
LABEL_81:
            v75 = sub_1C2E764E4();
            goto LABEL_20;
          }

          break;
        }

        v20 = MEMORY[0x1C6927010](v19, v79);
        goto LABEL_26;
      }
    }
  }
}

id ContactDetailsCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContactDetailsCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContactDetailsCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C2E2D898@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  v4 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__observableConfiguration;
  swift_beginAccess();
  return sub_1C2C6E3A4(v3 + v4, a1);
}

uint64_t sub_1C2E2D930()
{
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1C2E2D9C0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  v2 = (v1 + OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__didUpdateContacts);
  swift_beginAccess();
  v3 = *v2;
  sub_1C2C6EE50(*v2);
  return v3;
}

uint64_t sub_1C2E2DA64(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A54();
  sub_1C2C71668(a1);
}

void (*sub_1C2E2DB1C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1C2E2C9E0(v2);
  return sub_1C2CC3834;
}

id sub_1C2E2DB90()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1C2E2B7B4();
  sub_1C2E71A64();

  v2 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__contactStore;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

void sub_1C2E2DC2C(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = objc_allocWithZone(type metadata accessor for ContactDetailsCoordinator());
  v9 = sub_1C2E2DC94(a1, a2, a3);

  *a4 = v9;
}

id sub_1C2E2DC94(void *a1, void *a2, void *a3)
{
  v40 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__detailsViewController;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = &v3[OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__didUpdateContacts];
  *v4 = 0;
  *(v4 + 1) = 0;
  v39 = OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator_keys;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C2E90920;
  v6 = *MEMORY[0x1E695C258];
  v7 = *MEMORY[0x1E695C228];
  *(v5 + 32) = *MEMORY[0x1E695C258];
  *(v5 + 40) = v7;
  v8 = *MEMORY[0x1E695C208];
  v9 = *MEMORY[0x1E695C330];
  *(v5 + 48) = *MEMORY[0x1E695C208];
  *(v5 + 56) = v9;
  v10 = *MEMORY[0x1E695C410];
  v11 = *MEMORY[0x1E695C240];
  *(v5 + 64) = *MEMORY[0x1E695C410];
  *(v5 + 72) = v11;
  v12 = *MEMORY[0x1E695C230];
  v13 = *MEMORY[0x1E695C328];
  *(v5 + 80) = *MEMORY[0x1E695C230];
  *(v5 + 88) = v13;
  v38 = objc_opt_self();
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  *(v5 + 96) = [v38 descriptorForRequiredKeysForStyle_];
  v22 = [objc_opt_self() descriptorForRequiredKeys];
  v23 = *MEMORY[0x1E695C420];
  *(v5 + 104) = v22;
  *(v5 + 112) = v23;
  v24 = *MEMORY[0x1E695C428];
  v25 = *MEMORY[0x1E695C430];
  *(v5 + 120) = *MEMORY[0x1E695C428];
  *(v5 + 128) = v25;
  *&v3[v39] = v5;
  v26 = v23;
  v27 = v24;
  v28 = v25;
  sub_1C2E71A94();
  v29 = a1;
  MEMORY[0x1C6927ED0](&v3[v40]);
  swift_unknownObjectWeakInit();

  sub_1C2C6E3A4(a2, &v3[OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__observableConfiguration]);
  *&v3[OBJC_IVAR____TtC16CommunicationsUI25ContactDetailsCoordinator__contactStore] = a3;
  v44.receiver = v3;
  v44.super_class = type metadata accessor for ContactDetailsCoordinator();
  v30 = a3;
  v31 = objc_msgSendSuper2(&v44, sel_init);
  v32 = a2[3];
  v33 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v32);
  v34 = *(v33 + 8);
  v35 = v31;
  v34(v32, v33);

  v36 = [objc_opt_self() defaultCenter];
  [v36 addObserver:v35 selector:sel_contactStoreDidChangeWithNotification_ name:*MEMORY[0x1E695C3D8] object:0];

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v35;
}

uint64_t sub_1C2E2E084()
{
  result = sub_1C2E71AA4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t View.acceptsFirstMouse()()
{
  sub_1C2E75744();
  sub_1C2E2E63C();

  return sub_1C2E74D64();
}

id AcceptFirstMouseView.makeUIView(context:)()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC8F0]);

  return [v0 init];
}

id sub_1C2E2E514()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC8F0]);

  return [v0 init];
}

uint64_t sub_1C2E2E54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E2E708();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C2E2E5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2E2E708();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C2E2E614()
{
  sub_1C2E2E708();
  sub_1C2E73EE4();
  __break(1u);
}

unint64_t sub_1C2E2E63C()
{
  result = qword_1EC0641C8;
  if (!qword_1EC0641C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0641C8);
  }

  return result;
}

unint64_t sub_1C2E2E6A4()
{
  result = qword_1EC0628C8;
  if (!qword_1EC0628C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0628D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0628C8);
  }

  return result;
}

unint64_t sub_1C2E2E708()
{
  result = qword_1EC0641D0;
  if (!qword_1EC0641D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0641D0);
  }

  return result;
}

id iOSAudioCallLayoutViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iOSAudioCallLayoutViewController.init()()
{
  ObjectType = swift_getObjectType();
  v1 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_trailingPanelLayoutGuide;
  v65 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_trailingPanelLayoutGuide;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v3 = sub_1C2E75C24();
  [v2 setIdentifier_];

  *&v0[v1] = v2;
  v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfOpened] = 0;
  v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfEmpty] = 1;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_currentConstraints] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_currentLayoutConditions] = xmmword_1C2E90C20;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___trailingPanelLandscapeConstraints] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___trailingPanelPortraintConstraints] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___containerOpenConstraints] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___containerCloseConstraints] = 0;
  v4 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_landscapeContainerLayoutGuide;
  v64 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_landscapeContainerLayoutGuide;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v6 = sub_1C2E75C24();
  [v5 setIdentifier_];

  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___middleShelfTopConstraint] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___bottomShelfTopConstraint] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___landscapeContainerTopConstraint] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___landscapeContainerBottomConstraint] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitCallerDetailsTopConstraints] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitPosterTopConstraint] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitBottomShelfTopConstraint] = 0;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitBottomShelfBottomConstraint] = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v67 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_callerDetailsLayoutGuide;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_callerDetailsLayoutGuide] = v7;
  v8 = v7;
  v9 = sub_1C2E75C24();
  [v8 setIdentifier_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v66 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide] = v10;
  v11 = v10;
  v12 = sub_1C2E75C24();
  [v11 setIdentifier_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v63 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_bottomShelfLayoutGuide;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_bottomShelfLayoutGuide] = v13;
  v14 = v13;
  v15 = sub_1C2E75C24();
  [v14 setIdentifier_];

  v16 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v60 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_posterLayoutGuide;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_posterLayoutGuide] = v16;
  v17 = v16;
  v18 = sub_1C2E75C24();
  [v17 setIdentifier_];

  v19 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v20 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_photoPosterLayoutGuide;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_photoPosterLayoutGuide] = v19;
  v21 = v19;
  v22 = sub_1C2E75C24();
  [v21 setIdentifier_];

  v23 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v62 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_monogramPosterLayoutGuide;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_monogramPosterLayoutGuide] = v23;
  v24 = v23;
  v25 = sub_1C2E75C24();
  [v24 setIdentifier_];

  v26 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v61 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_memojiPosterLayoutGuide;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_memojiPosterLayoutGuide] = v26;
  v27 = v26;
  v28 = sub_1C2E75C24();
  [v27 setIdentifier_];

  v29 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v30 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_monogramPosterPortraitCenteringLayoutGuide;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_monogramPosterPortraitCenteringLayoutGuide] = v29;
  v31 = v29;
  v32 = sub_1C2E75C24();
  [v31 setIdentifier_];

  v33 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v59 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_sensitiveContentWarningCenteringLayoutGuide;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_sensitiveContentWarningCenteringLayoutGuide] = v33;
  v34 = v33;
  v35 = sub_1C2E75C24();
  [v34 setIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1C2E854D0;
  v37 = *&v0[v65];
  v38 = *&v0[v60];
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  v39 = *&v0[v64];
  v40 = *&v0[v67];
  *(v36 + 48) = v39;
  *(v36 + 56) = v40;
  v41 = *&v0[v66];
  v42 = *&v0[v63];
  *(v36 + 64) = v41;
  *(v36 + 72) = v42;
  v43 = *&v0[v20];
  v44 = *&v0[v62];
  *(v36 + 80) = v43;
  *(v36 + 88) = v44;
  v45 = *&v0[v61];
  v46 = *&v0[v30];
  *(v36 + 96) = v45;
  *(v36 + 104) = v46;
  v68 = *&v0[v59];
  *(v36 + 112) = v68;
  *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_layoutGuides] = v36;
  v70.receiver = v0;
  v70.super_class = ObjectType;
  v47 = v37;
  v48 = v38;
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v57 = v68;
  return objc_msgSendSuper2(&v70, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall iOSAudioCallLayoutViewController.viewDidLoad()()
{
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, sel_viewDidLoad);
  v24 = v0;
  v1 = *&v0[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_layoutGuides];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F9D8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1C2E7A930;
    v10 = sub_1C2E72BE4();
    v11 = MEMORY[0x1E69DC130];
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    sub_1C2E76034();
    swift_unknownObjectRelease();

    v12 = [v24 viewIfLoaded];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 window];
      if (v14)
      {
        v15 = v14;
        [v14 bounds];
        v17 = v16;
        v19 = v18;
      }

      else
      {
        [v13 bounds];
        v17 = v20;
        v19 = v21;
      }

      LODWORD(v13) = v19 < v17;
    }

    v22 = [v24 traitCollection];
    v23 = [v22 horizontalSizeClass];

    sub_1C2E2F0F4(v13, v23);
    return;
  }

LABEL_14:
  v2 = sub_1C2E764E4();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6927010](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v7 = [v24 view];
    if (!v7)
    {
      break;
    }

    v8 = v7;
    [v7 addLayoutGuide_];

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1C2E2F0F4(int a1, uint64_t a2)
{
  v4 = a1;
  v5 = (v2 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_currentLayoutConditions);
  v6 = *(v2 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_currentLayoutConditions);
  if (v6 == 2 || ((v6 ^ a1) & 1) != 0 || v5[1] != a2)
  {
    if (a2 == 2)
    {
      if (a1)
      {
        sub_1C2E2FF28();
LABEL_13:
        *v5 = v4 & 1;
        v5[1] = a2;
        return;
      }
    }

    else if (a2 == 1)
    {
      if (a1)
      {
        v7 = "Updating layout guides: Landscape, compact.";
        v8 = sub_1C2E2FF28;
      }

      else
      {
        v7 = "Updating layout guides: Portrait, compact.";
        v8 = sub_1C2E310C4;
      }

      sub_1C2E2FE20(v7, v8);
      goto LABEL_13;
    }

    sub_1C2E310C4();
    goto LABEL_13;
  }
}

Swift::Void __swiftcall iOSAudioCallLayoutViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewIsAppearing_, a1);
  v3 = [v1 viewIfLoaded];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 window];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
    }

    else
    {
      [v4 bounds];
      v8 = v11;
      v10 = v12;
    }

    LODWORD(v4) = v10 < v8;
  }

  v13 = [v1 traitCollection];
  v14 = [v13 horizontalSizeClass];

  sub_1C2E2F0F4(v4, v14);
  v15 = [v1 view];
  if (v15)
  {
    v16 = v15;
    [v15 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void iOSAudioCallLayoutViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = [v3 traitCollection];
  v8 = [v7 horizontalSizeClass];

  sub_1C2E2F0F4(a3 < a2, v8);
  sub_1C2E2F510(a3 < a2, *&a2, *&a3, 0);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_1C2E32E34;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C2D9F5B8;
  v11[3] = &block_descriptor_25;
  v10 = _Block_copy(v11);

  [a1 animateAlongsideTransition:v10 completion:0];
  _Block_release(v10);
}

void sub_1C2E2F510(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1C2E32864(a1, a2, a3, a4 & 1);
  v9 = v8;
  sub_1C2E32960(a2, a3, a4 & 1);
  v11 = v10;
  v12 = sub_1C2E326E8(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___landscapeContainerTopConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_landscapeContainerLayoutGuide, &selRef_topAnchor);
  [v12 setConstant_];

  v13 = sub_1C2E326E8(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___landscapeContainerBottomConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_landscapeContainerLayoutGuide, &selRef_bottomAnchor);
  [v13 setConstant_];

  v14 = v11 * 0.025125;
  v15 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfOpened;
  LODWORD(v13) = *(v4 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfOpened);
  v16 = sub_1C2E32620(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___middleShelfTopConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide, &selRef_topAnchor, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_callerDetailsLayoutGuide);
  v17 = v16;
  if (v13 == 1)
  {
    [v16 setConstant_];

    v18 = sub_1C2E32620(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___bottomShelfTopConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_bottomShelfLayoutGuide, &selRef_topAnchor, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide);
    v19 = v18;
    if (*(v4 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfEmpty))
    {
      v20 = 0.0;
    }

    else
    {
      v20 = v11 * 0.025125;
    }

    [v18 setConstant_];
  }

  else
  {
    [v16 setConstant_];

    v19 = sub_1C2E32620(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___bottomShelfTopConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_bottomShelfLayoutGuide, &selRef_topAnchor, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide);
    [v19 setConstant_];
  }

  v21 = sub_1C2E326E8(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitPosterTopConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_posterLayoutGuide, &selRef_topAnchor);
  [v21 setConstant_];

  v22 = sub_1C2E326E8(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitCallerDetailsTopConstraints, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_callerDetailsLayoutGuide, &selRef_topAnchor);
  [v22 setConstant_];

  v23 = sub_1C2E32620(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitBottomShelfTopConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_bottomShelfLayoutGuide, &selRef_topAnchor, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide);
  v24 = v23;
  if (*(v4 + v15) == 1 && *(v4 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfEmpty))
  {
    v14 = 0.0;
  }

  [v23 setConstant_];

  v25 = sub_1C2E32620(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitBottomShelfBottomConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_bottomShelfLayoutGuide, &selRef_bottomAnchor, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_trailingPanelLayoutGuide);
  [v25 setConstant_];
}

void sub_1C2E2F7FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      [v2 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

void iOSAudioCallLayoutViewController.updateMiddleShelfState(isOpen:contentView:animation:completion:)(char a1, void *a2, void (*a3)(void), uint64_t a4, void (*a5)(void), uint64_t a6)
{
  if (*(v6 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfOpened) == (a1 & 1))
  {
    if (a3)
    {
      v7 = a5;
      a3();
      a5 = v7;
    }

    if (a5)
    {
      a5();
    }
  }

  else
  {
    *(v6 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfOpened) = a1 & 1;

    sub_1C2E2F9A8(a2, a3, a4, a5, a6);
  }
}

void sub_1C2E2F9A8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = [v5 viewIfLoaded];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 window];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];
      v14 = v13;
      v16 = v15;
    }

    else
    {
      [v10 bounds];
      v14 = v17;
      v16 = v18;
    }

    v9 = v16 < v14;
  }

  sub_1C2E2F510(v9, 0, 0, 1);
  if (a1)
  {
    [*&v5[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide] layoutFrame];
    [a1 setFrame_];
  }

  [a1 layoutIfNeeded];
  v19 = [v5 viewIfLoaded];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 window];
    if (v21)
    {
      v22 = v21;
      [v21 bounds];
      v24 = v23;
      v26 = v25;
    }

    else
    {
      [v20 bounds];
      v24 = v27;
      v26 = v28;
    }

    if (v26 < v24)
    {
      v29 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfOpened;
      if (v5[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfOpened] == 1)
      {
        sub_1C2E325D8();
      }

      else
      {
        sub_1C2E32508();
      }

      if (v5[v29] == 1)
      {
        sub_1C2E32508();
      }

      else
      {
        sub_1C2E325D8();
      }

      v30 = objc_opt_self();
      sub_1C2C6E1B4(0, &qword_1EC062670);
      v31 = sub_1C2E75D64();
      [v30 deactivateConstraints_];

      v32 = sub_1C2E75D64();
      [v30 activateConstraints_];

      v33 = [v5 view];
      if (!v33)
      {
        __break(1u);
        return;
      }

      v34 = v33;

      [v34 property descriptor for ControlGridViewConfiguration.rowSpacing];
    }
  }

  if (a2)
  {
    v35 = sub_1C2C6E1B4(0, &qword_1EC062710);
    MEMORY[0x1EEE9AC00](v35);
    v36 = swift_allocObject();
    *(v36 + 16) = a4;
    *(v36 + 24) = a5;
    sub_1C2C9A508(a2);
    sub_1C2C9A508(a4);
    sub_1C2E761C4();

    sub_1C2C71668(a2);
  }

  else if (a4)
  {
    a4();
  }
}

Swift::Void __swiftcall iOSAudioCallLayoutViewController.updateMiddleState(isEmpty:)(Swift::Bool isEmpty)
{
  if (v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfEmpty] != isEmpty)
  {
    v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfEmpty] = isEmpty;
    v2 = [v1 viewIfLoaded];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 window];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
      }

      else
      {
        [v3 bounds];
        v7 = v10;
        v9 = v11;
      }

      v2 = v9 < v7;
    }

    sub_1C2E2F510(v2, 0, 0, 1);
  }
}

uint64_t sub_1C2E2FE20(const char *a1, uint64_t (*a2)(void))
{
  if (qword_1EC05CFD8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2E72B44();
  __swift_project_value_buffer(v3, qword_1EC075B58);
  v4 = sub_1C2E72B24();
  v5 = sub_1C2E75FE4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C2C6B000, v4, v5, a1, v6, 2u);
    MEMORY[0x1C6927DF0](v6, -1, -1);
  }

  return a2();
}

void sub_1C2E2FF28()
{
  v1 = v0;
  if (qword_1EC05CFD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2E72B44();
  __swift_project_value_buffer(v2, qword_1EC075B58);
  v3 = sub_1C2E72B24();
  v4 = sub_1C2E75FE4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C2C6B000, v3, v4, "Updating layout guides: Landscape, regular.", v5, 2u);
    MEMORY[0x1C6927DF0](v5, -1, -1);
  }

  v6 = objc_opt_self();
  v7 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_currentConstraints;
  swift_beginAccess();
  sub_1C2C6E1B4(0, &qword_1EC062670);

  v8 = sub_1C2E75D64();

  [v6 deactivateConstraints_];

  *&v1[v7] = sub_1C2E3225C(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___trailingPanelLandscapeConstraints, &selRef_centerXAnchor);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E90C30;
  v10 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_posterLayoutGuide];
  v11 = [v10 topAnchor];
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_26;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(inited + 32) = v15;
  v16 = [v10 bottomAnchor];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = [v17 bottomAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(inited + 40) = v20;
  v21 = [v10 trailingAnchor];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = v22;
  v173 = v6;
  v24 = [v22 centerXAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(inited + 48) = v25;
  v26 = [v10 leadingAnchor];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v28 = v27;
  v29 = [v27 leadingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(inited + 56) = v30;
  v31 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_monogramPosterLayoutGuide];
  v32 = [v31 heightAnchor];
  v33 = objc_opt_self();
  v34 = [v33 mainScreen];
  [v34 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v174.origin.x = v36;
  v174.origin.y = v38;
  v174.size.width = v40;
  v174.size.height = v42;
  Width = CGRectGetWidth(v174);
  v44 = [v33 mainScreen];
  [v44 bounds];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v175.origin.x = v46;
  v175.origin.y = v48;
  v175.size.width = v50;
  v175.size.height = v52;
  Height = CGRectGetHeight(v175);
  if (Height >= Width)
  {
    Height = Width;
  }

  v54 = [v32 constraintEqualToConstant_];

  *(inited + 64) = v54;
  v55 = [v31 widthAnchor];
  v56 = [v33 mainScreen];
  [v56 bounds];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v176.origin.x = v58;
  v176.origin.y = v60;
  v176.size.width = v62;
  v176.size.height = v64;
  v65 = CGRectGetWidth(v176);
  v66 = [v33 mainScreen];
  [v66 bounds];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;

  v177.origin.x = v68;
  v177.origin.y = v70;
  v177.size.width = v72;
  v177.size.height = v74;
  v75 = CGRectGetHeight(v177);
  if (v75 >= v65)
  {
    v75 = v65;
  }

  v76 = [v55 constraintEqualToConstant_];

  *(inited + 72) = v76;
  v77 = [v31 trailingAnchor];
  v78 = [v10 trailingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78 constant:-sub_1C2E33078()];

  *(inited + 80) = v79;
  v80 = [v31 centerYAnchor];
  v81 = [v10 centerYAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(inited + 88) = v82;
  v83 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_memojiPosterLayoutGuide];
  v84 = [v83 topAnchor];
  v85 = [v10 topAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(inited + 96) = v86;
  v87 = [v83 bottomAnchor];
  v88 = [v10 bottomAnchor];
  v89 = [v87 constraintEqualToAnchor_];

  *(inited + 104) = v89;
  v90 = [v83 trailingAnchor];
  v91 = [v10 trailingAnchor];
  v92 = [v90 constraintEqualToAnchor_];

  *(inited + 112) = v92;
  v93 = [v83 leadingAnchor];
  v94 = [v10 leadingAnchor];
  v95 = [v93 constraintEqualToAnchor_];

  *(inited + 120) = v95;
  v96 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_photoPosterLayoutGuide];
  v97 = [v96 topAnchor];
  v98 = [v10 topAnchor];
  v99 = [v97 constraintEqualToAnchor_];

  *(inited + 128) = v99;
  v100 = [v96 bottomAnchor];
  v101 = [v10 bottomAnchor];
  v102 = [v100 constraintEqualToAnchor_];

  *(inited + 136) = v102;
  v103 = [v96 trailingAnchor];
  v104 = [v10 trailingAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(inited + 144) = v105;
  v106 = [v96 leadingAnchor];
  v107 = [v10 leadingAnchor];
  v108 = [v106 constraintEqualToAnchor_];

  *(inited + 152) = v108;
  v109 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_sensitiveContentWarningCenteringLayoutGuide];
  v110 = [v109 centerXAnchor];
  v111 = [v10 centerXAnchor];
  v112 = [v110 constraintEqualToAnchor_];

  *(inited + 160) = v112;
  v113 = [v109 centerYAnchor];
  v114 = [v10 centerYAnchor];
  v115 = [v113 constraintEqualToAnchor_];

  *(inited + 168) = v115;
  swift_beginAccess();
  sub_1C2CA2AE4(inited);
  swift_endAccess();
  v116 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_landscapeContainerLayoutGuide];
  v117 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_trailingPanelLayoutGuide];
  v118 = swift_initStackObject();
  *(v118 + 16) = xmmword_1C2E7A720;
  v119 = [v116 centerYAnchor];
  v120 = [v1 view];
  if (!v120)
  {
    goto LABEL_29;
  }

  v121 = v120;
  v122 = [v120 centerYAnchor];

  v123 = [v119 constraintEqualToAnchor_];
  *(v118 + 32) = v123;
  v124 = sub_1C2E332D8(v116, v117);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_beginAccess();
  sub_1C2CA2AE4(v124);
  swift_endAccess();
  v125 = swift_initStackObject();
  *(v125 + 16) = xmmword_1C2E7A710;
  v126 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_callerDetailsLayoutGuide];
  v127 = [v126 topAnchor];
  v172 = v116;
  v128 = [v116 topAnchor];
  v129 = [v127 constraintEqualToAnchor_];

  *(v125 + 32) = v129;
  v130 = [v126 centerXAnchor];
  v131 = [v117 centerXAnchor];
  v132 = [v130 constraintEqualToAnchor_];

  *(v125 + 40) = v132;
  v133 = [v126 widthAnchor];
  v134 = [v117 widthAnchor];
  v135 = [v133 constraintEqualToAnchor_];

  *(v125 + 48) = v135;
  swift_beginAccess();
  sub_1C2CA2AE4(v125);
  swift_endAccess();
  v136 = swift_initStackObject();
  *(v136 + 16) = xmmword_1C2E7A710;
  *(v136 + 32) = sub_1C2E32620(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___middleShelfTopConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide, &selRef_topAnchor, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_callerDetailsLayoutGuide);
  v137 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide];
  v138 = [v137 widthAnchor];
  v139 = [v1 view];
  if (!v139)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v140 = v139;
  v141 = [v139 widthAnchor];

  v142 = [v138 constraintEqualToAnchor:v141 multiplier:0.33];
  *(v136 + 40) = v142;
  v143 = [v137 centerXAnchor];
  v144 = [v117 centerXAnchor];
  v145 = [v143 constraintEqualToAnchor_];

  *(v136 + 48) = v145;
  swift_beginAccess();
  sub_1C2CA2AE4(v136);
  swift_endAccess();
  v146 = swift_initStackObject();
  *(v146 + 16) = xmmword_1C2E7A700;
  *(v146 + 32) = sub_1C2E32620(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___bottomShelfTopConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_bottomShelfLayoutGuide, &selRef_topAnchor, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide);
  v147 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_bottomShelfLayoutGuide];
  v148 = [v147 centerXAnchor];
  v149 = [v117 centerXAnchor];
  v150 = [v148 constraintEqualToAnchor_];

  *(v146 + 40) = v150;
  v151 = [v147 widthAnchor];
  v152 = [v1 view];
  if (!v152)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v153 = v152;
  v154 = [v152 widthAnchor];

  v155 = [v151 constraintEqualToAnchor:v154 multiplier:0.26];
  *(v146 + 48) = v155;
  v156 = [v147 bottomAnchor];
  v157 = [v172 bottomAnchor];
  v158 = [v156 constraintEqualToAnchor_];

  *(v146 + 56) = v158;
  swift_beginAccess();
  sub_1C2CA2AE4(v146);
  swift_endAccess();
  if (v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfOpened] == 1)
  {
    v159 = sub_1C2E32508();
  }

  else
  {
    v159 = sub_1C2E325D8();
  }

  v160 = v159;
  swift_beginAccess();
  sub_1C2CA2AE4(v160);
  swift_endAccess();
  v161 = [v1 viewIfLoaded];
  if (v161)
  {
    v162 = v161;
    v163 = [v161 window];
    if (v163)
    {
      v164 = v163;
      [v163 bounds];
      v166 = v165;
      v168 = v167;
    }

    else
    {
      [v162 bounds];
      v166 = v169;
      v168 = v170;
    }

    v161 = v168 < v166;
  }

  sub_1C2E2F510(v161, 0, 0, 1);

  v171 = sub_1C2E75D64();

  [v173 activateConstraints_];
}

void sub_1C2E310C4()
{
  v1 = v0;
  if (qword_1EC05CFD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2E72B44();
  __swift_project_value_buffer(v2, qword_1EC075B58);
  v3 = sub_1C2E72B24();
  v4 = sub_1C2E75FE4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C2C6B000, v3, v4, "Updating layout guides: Portrait, regular.", v5, 2u);
    MEMORY[0x1C6927DF0](v5, -1, -1);
  }

  v6 = objc_opt_self();
  v7 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_currentConstraints;
  swift_beginAccess();
  sub_1C2C6E1B4(0, &qword_1EC062670);

  v8 = sub_1C2E75D64();

  [v6 deactivateConstraints_];

  *&v1[v7] = sub_1C2E3225C(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___trailingPanelPortraintConstraints, &selRef_leadingAnchor);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C2E90C40;
  *(inited + 32) = sub_1C2E326E8(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitPosterTopConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_posterLayoutGuide, &selRef_topAnchor);
  v10 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_posterLayoutGuide];
  v11 = [v10 leadingAnchor];
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_24;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(inited + 40) = v15;
  v16 = [v10 bottomAnchor];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = v17;
  v173 = v6;
  v19 = [v17 bottomAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(inited + 48) = v20;
  v21 = [v10 trailingAnchor];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(inited + 56) = v25;
  v26 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_monogramPosterLayoutGuide];
  v27 = [v26 heightAnchor];
  v28 = objc_opt_self();
  v29 = [v28 mainScreen];
  [v29 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v174.origin.x = v31;
  v174.origin.y = v33;
  v174.size.width = v35;
  v174.size.height = v37;
  Width = CGRectGetWidth(v174);
  v39 = [v28 mainScreen];
  [v39 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v175.origin.x = v41;
  v175.origin.y = v43;
  v175.size.width = v45;
  v175.size.height = v47;
  Height = CGRectGetHeight(v175);
  if (Height >= Width)
  {
    Height = Width;
  }

  v49 = [v27 constraintEqualToConstant_];

  *(inited + 64) = v49;
  v50 = [v26 widthAnchor];
  v51 = [v28 mainScreen];
  [v51 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;

  v176.origin.x = v53;
  v176.origin.y = v55;
  v176.size.width = v57;
  v176.size.height = v59;
  v60 = CGRectGetWidth(v176);
  v61 = [v28 mainScreen];
  [v61 bounds];
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;

  v177.origin.x = v63;
  v177.origin.y = v65;
  v177.size.width = v67;
  v177.size.height = v69;
  v70 = CGRectGetHeight(v177);
  if (v70 >= v60)
  {
    v70 = v60;
  }

  v71 = [v50 constraintEqualToConstant_];

  *(inited + 72) = v71;
  v72 = [v26 centerXAnchor];
  v73 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_monogramPosterPortraitCenteringLayoutGuide];
  v74 = [v73 centerXAnchor];
  v75 = [v72 constraintEqualToAnchor_];

  *(inited + 80) = v75;
  v76 = [v26 centerYAnchor];
  v77 = [v73 centerYAnchor];
  v78 = [v76 constraintEqualToAnchor_];

  *(inited + 88) = v78;
  v79 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_memojiPosterLayoutGuide];
  v80 = [v79 topAnchor];
  v81 = [v10 topAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(inited + 96) = v82;
  v83 = [v79 bottomAnchor];
  v84 = [v10 bottomAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  *(inited + 104) = v85;
  v86 = [v79 trailingAnchor];
  v87 = [v10 trailingAnchor];
  v88 = [v86 constraintEqualToAnchor_];

  *(inited + 112) = v88;
  v89 = [v79 leadingAnchor];
  v90 = [v10 leadingAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  *(inited + 120) = v91;
  v92 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_photoPosterLayoutGuide];
  v93 = [v92 topAnchor];
  v94 = [v1 view];
  if (!v94)
  {
    goto LABEL_26;
  }

  v95 = v94;
  v96 = [v94 topAnchor];

  v97 = [v93 constraintEqualToAnchor_];
  *(inited + 128) = v97;
  v98 = [v92 bottomAnchor];
  v99 = [v1 view];
  if (!v99)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v100 = v99;
  v101 = [v99 bottomAnchor];

  v102 = [v98 constraintEqualToAnchor_];
  *(inited + 136) = v102;
  v103 = [v92 trailingAnchor];
  v104 = [v1 view];
  if (!v104)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v105 = v104;
  v106 = [v104 trailingAnchor];

  v107 = [v103 constraintEqualToAnchor_];
  *(inited + 144) = v107;
  v108 = [v92 leadingAnchor];
  v109 = [v1 view];
  if (!v109)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v110 = v109;
  v111 = [v109 leadingAnchor];

  v112 = [v108 constraintEqualToAnchor_];
  *(inited + 152) = v112;
  v113 = [v73 topAnchor];
  v114 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_callerDetailsLayoutGuide];
  v115 = [v114 bottomAnchor];
  v116 = [v113 constraintEqualToAnchor_];

  *(inited + 160) = v116;
  v117 = [v73 bottomAnchor];
  v172 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_bottomShelfLayoutGuide];
  v118 = [v172 topAnchor];
  v119 = [v117 constraintEqualToAnchor_];

  *(inited + 168) = v119;
  v120 = [v73 leadingAnchor];
  v121 = [v1 view];
  if (!v121)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v122 = v121;
  v123 = [v121 leadingAnchor];

  v124 = [v120 constraintEqualToAnchor_];
  *(inited + 176) = v124;
  v125 = [v73 trailingAnchor];
  v126 = [v1 view];
  if (!v126)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v127 = v126;
  v128 = [v126 trailingAnchor];

  v129 = [v125 constraintEqualToAnchor_];
  *(inited + 184) = v129;
  v130 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_sensitiveContentWarningCenteringLayoutGuide];
  v131 = [v130 centerXAnchor];
  v132 = [v73 centerXAnchor];
  v133 = [v131 constraintEqualToAnchor_];

  *(inited + 192) = v133;
  v134 = [v130 centerYAnchor];
  v135 = [v73 centerYAnchor];
  v136 = [v134 constraintEqualToAnchor_];

  *(inited + 200) = v136;
  swift_beginAccess();
  sub_1C2CA2AE4(inited);
  swift_endAccess();
  v137 = swift_initStackObject();
  *(v137 + 16) = xmmword_1C2E7A710;
  *(v137 + 32) = sub_1C2E326E8(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitCallerDetailsTopConstraints, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_callerDetailsLayoutGuide, &selRef_topAnchor);
  v138 = [v114 leadingAnchor];
  v139 = [v1 view];
  if (!v139)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v140 = v139;
  v141 = [v139 leadingAnchor];

  v142 = [v138 constraintEqualToAnchor_];
  *(v137 + 40) = v142;
  v143 = [v114 trailingAnchor];
  v144 = [v1 view];
  if (!v144)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v145 = v144;
  v146 = [v144 trailingAnchor];

  v147 = [v143 constraintEqualToAnchor_];
  *(v137 + 48) = v147;
  swift_beginAccess();
  sub_1C2CA2AE4(v137);
  swift_endAccess();
  v148 = swift_initStackObject();
  *(v148 + 16) = xmmword_1C2E7A710;
  v149 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide];
  v150 = [v149 topAnchor];
  v151 = [v114 bottomAnchor];
  v152 = [v150 constraintEqualToAnchor_];

  *(v148 + 32) = v152;
  v153 = [v149 widthAnchor];
  v154 = [v1 view];
  if (!v154)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v155 = v154;
  v156 = [v154 heightAnchor];

  v157 = [v153 constraintEqualToAnchor:v156 multiplier:0.33];
  *(v148 + 40) = v157;
  v158 = [v149 centerXAnchor];
  v159 = *&v1[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_trailingPanelLayoutGuide];
  v160 = [v159 centerXAnchor];
  v161 = [v158 constraintEqualToAnchor_];

  *(v148 + 48) = v161;
  swift_beginAccess();
  sub_1C2CA2AE4(v148);
  swift_endAccess();
  v162 = swift_initStackObject();
  *(v162 + 16) = xmmword_1C2E7A700;
  *(v162 + 32) = sub_1C2E32620(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitBottomShelfTopConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_bottomShelfLayoutGuide, &selRef_topAnchor, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_middleShelfLayoutGuide);
  v163 = [v172 centerXAnchor];
  v164 = [v159 centerXAnchor];
  v165 = [v163 constraintEqualToAnchor_];

  *(v162 + 40) = v165;
  v166 = [v172 widthAnchor];
  v167 = [v1 view];
  if (v167)
  {
    v168 = v167;
    v169 = [v167 heightAnchor];

    v170 = [v166 constraintEqualToAnchor:v169 multiplier:0.26];
    *(v162 + 48) = v170;
    *(v162 + 56) = sub_1C2E32620(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitBottomShelfBottomConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_bottomShelfLayoutGuide, &selRef_bottomAnchor, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_trailingPanelLayoutGuide);
    swift_beginAccess();
    sub_1C2CA2AE4(v162);
    swift_endAccess();
    sub_1C2E2F510(0, 0, 0, 1);

    v171 = sub_1C2E75D64();

    [v173 activateConstraints_];

    return;
  }

LABEL_35:
  __break(1u);
}

id sub_1C2E3225C(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = v4;
LABEL_8:

    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C2E7A700;
  v7 = *&v2[OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_trailingPanelLayoutGuide];
  v8 = [v7 topAnchor];
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = result;
  v11 = [result topAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  *(v5 + 32) = v12;
  v13 = [v7 leadingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  v15 = [result *a2];

  v16 = [v13 constraintEqualToAnchor_];
  *(v5 + 40) = v16;
  v17 = [v7 trailingAnchor];
  result = [v2 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = result;
  v19 = [result trailingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v5 + 48) = v20;
  v21 = [v7 bottomAnchor];
  result = [v2 view];
  if (result)
  {
    v22 = result;
    v23 = [result bottomAnchor];

    v24 = [v21 constraintEqualToAnchor_];
    *(v5 + 56) = v24;
    *&v2[v3] = v5;

    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C2E32508()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___containerOpenConstraints;
  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___containerOpenConstraints))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___containerOpenConstraints);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C2E81350;
    *(v2 + 32) = sub_1C2E326E8(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___landscapeContainerTopConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_landscapeContainerLayoutGuide, &selRef_topAnchor);
    *(v2 + 40) = sub_1C2E326E8(&OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___landscapeContainerBottomConstraint, &OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_landscapeContainerLayoutGuide, &selRef_bottomAnchor);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1C2E325D8()
{
  if (*(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___containerCloseConstraints))
  {
    v1 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___containerCloseConstraints);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___containerCloseConstraints) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

id sub_1C2E32620(uint64_t *a1, void *a2, SEL *a3, void *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v9 = [*(v4 + *a2) *a3];
    v10 = [*(v4 + *a4) bottomAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    v12 = *(v4 + v5);
    *(v4 + v5) = v11;
    v7 = v11;

    v6 = 0;
  }

  v13 = v6;
  return v7;
}

id sub_1C2E326E8(uint64_t *a1, void *a2, SEL *a3)
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = *&v3[*a1];
LABEL_5:
    v14 = v5;
    return v6;
  }

  v8 = [*&v3[*a2] *a3];
  result = [v3 view];
  if (result)
  {
    v10 = result;
    v11 = [result *a3];

    v12 = [v8 constraintEqualToAnchor_];
    v13 = *&v3[v4];
    *&v3[v4] = v12;
    v6 = v12;

    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1C2E327CC(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  v4 = [a3 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 superview];

    [v6 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

void sub_1C2E32864(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 window];

      if (v7)
      {
        [v7 bounds];

        return;
      }

      v8 = [v4 view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1C2E32960(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 window];

      if (v6)
      {
        [v6 bounds];

        return;
      }

      v7 = [v3 view];
      if (v7)
      {
        v8 = v7;
        [v7 bounds];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id iOSAudioCallLayoutViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1C2E75C24();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id iOSAudioCallLayoutViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C2E32D0C(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 != [a2 horizontalSizeClass])
  {
    v6 = [a1 viewIfLoaded];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 window];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];
        v11 = v10;
        v13 = v12;
      }

      else
      {
        [v7 bounds];
        v11 = v14;
        v13 = v15;
      }

      LODWORD(v7) = v13 < v11;
    }

    v16 = [a1 traitCollection];
    v17 = [v16 horizontalSizeClass];

    sub_1C2E2F0F4(v7, v17);
  }
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C2E32E78()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_trailingPanelLayoutGuide;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v3 = sub_1C2E75C24();
  [v2 setIdentifier_];

  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfOpened) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_isMiddleShelfEmpty) = 1;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_currentConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_currentLayoutConditions) = xmmword_1C2E90C20;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___trailingPanelLandscapeConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___trailingPanelPortraintConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___containerOpenConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___containerCloseConstraints) = 0;
  v4 = OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController_landscapeContainerLayoutGuide;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
  v6 = sub_1C2E75C24();
  [v5 setIdentifier_];

  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___middleShelfTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___bottomShelfTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___landscapeContainerTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___landscapeContainerBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitCallerDetailsTopConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitPosterTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitBottomShelfTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16CommunicationsUI32iOSAudioCallLayoutViewController____lazy_storage___portraitBottomShelfBottomConstraint) = 0;
  sub_1C2E766F4();
  __break(1u);
}

double sub_1C2E33078()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v64.origin.x = v3;
  v64.origin.y = v5;
  v64.size.width = v7;
  v64.size.height = v9;
  Height = CGRectGetHeight(v64);
  v11 = [v0 mainScreen];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v65.origin.x = v13;
  v65.origin.y = v15;
  v65.size.width = v17;
  v65.size.height = v19;
  Width = CGRectGetWidth(v65);
  if (Height > Width)
  {
    Width = Height;
  }

  v21 = Width * 0.5;
  v22 = [v0 mainScreen];
  [v22 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v66.origin.x = v24;
  v66.origin.y = v26;
  v66.size.width = v28;
  v66.size.height = v30;
  v31 = CGRectGetHeight(v66);
  v32 = [v0 mainScreen];
  [v32 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v67.origin.x = v34;
  v67.origin.y = v36;
  v67.size.width = v38;
  v67.size.height = v40;
  v41 = CGRectGetWidth(v67);
  if (v31 > v41)
  {
    v41 = v31;
  }

  v42 = (v21 + v41 * -0.26) * 0.25;
  v43 = [v0 mainScreen];
  [v43 bounds];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v68.origin.x = v45;
  v68.origin.y = v47;
  v68.size.width = v49;
  v68.size.height = v51;
  v52 = CGRectGetHeight(v68);
  v53 = [v0 mainScreen];
  [v53 bounds];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v69.origin.x = v55;
  v69.origin.y = v57;
  v69.size.width = v59;
  v69.size.height = v61;
  v62 = CGRectGetWidth(v69);
  if (v62 >= v52)
  {
    v62 = v52;
  }

  return v42 + v62 * -0.57 * 0.1;
}

uint64_t sub_1C2E332D8(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E81350;
  v5 = [a1 leadingAnchor];
  v6 = [a2 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [a1 trailingAnchor];
  v9 = [a2 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;

  sub_1C2CA2AE4(v11);
  return v4;
}

double AvatarStackView.init(contacts:size:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 16) = 0x4024000000000000;
  *a2 = a1;
  result = a3 + 2.0;
  *(a2 + 8) = result;
  return result;
}

uint64_t AvatarStackView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v13 - v4;
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  *v5 = sub_1C2E73C24();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642C0);
  sub_1C2E335B0(v6, &v5[*(v9 + 44)], v7, v8);
  if (v6 >> 62)
  {
    result = sub_1C2E764E4();
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!__OFSUB__(result, 1))
    {
LABEL_3:
      sub_1C2E75744();
      sub_1C2E73274();
      sub_1C2E33834(v5, a1);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642C8);
      v11 = (a1 + *(result + 36));
      v12 = v13[1];
      *v11 = v13[0];
      v11[1] = v12;
      v11[2] = v13[2];
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2E335B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642F0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v27 - v12);
  *v13 = sub_1C2E75754();
  v13[1] = v14;
  v27 = v8;
  v28 = a2;
  if (a1 >> 62)
  {
    v26 = sub_1C2E764E4();
    if (v26 < 0)
    {
      __break(1u);
    }

    v15 = v26;
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642F8);
  v29 = 0;
  v30 = v15;
  swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064300);
  sub_1C2CFB474();
  sub_1C2E33CB8();
  sub_1C2E75434();
  v17 = sub_1C2E73674();
  v18 = sub_1C2E74454();
  v19 = v13 + *(v27 + 36);
  *v19 = v17;
  v19[8] = v18;
  if (a1 >> 62)
  {
    v20 = sub_1C2E764E4();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = v28;
  v22 = v20 < 2;
  v23 = v20 > 1;
  sub_1C2E33E50(v13, v10);
  sub_1C2E33E50(v10, v21);
  v24 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064318) + 48);
  *v24 = 0;
  *(v24 + 8) = v23;
  *(v24 + 9) = v22;
  sub_1C2E33EC0(v13);
  return sub_1C2E33EC0(v10);
}

uint64_t sub_1C2E33834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1C2E338C0@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *result;
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1C6927010](*result, a2);
    if (!(a2 >> 62))
    {
LABEL_5:
      v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = __OFSUB__(v10, v9);
      v12 = v10 - v9;
      if (!v11)
      {
LABEL_6:
        *a3 = result;
        *(a3 + 8) = a4;
        *(a3 + 16) = v9 * a5;
        *(a3 + 24) = 0;
        *(a3 + 32) = v12;
        return result;
      }

      goto LABEL_10;
    }

LABEL_8:
    v13 = result;
    v14 = sub_1C2E764E4();
    result = v13;
    v11 = __OFSUB__(v14, v9);
    v12 = v14 - v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(a2 + 8 * v9 + 32);
    if (!(a2 >> 62))
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1C2E339B8()
{
  result = qword_1EC05B838;
  if (!qword_1EC05B838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0642C8);
    sub_1C2C94F38(&qword_1EC05B388, &qword_1EC0642B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B838);
  }

  return result;
}

double sub_1C2E33A9C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C2E7A720;
  *(v4 + 32) = a1;
  v5 = a1;
  sub_1C2E71504();
  v6 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  sub_1C2E73134();
  v7 = sub_1C2E75744();
  v9 = v8;
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642D0) + 36);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642D8) + 36);
  v12 = *MEMORY[0x1E6981DC0];
  v13 = sub_1C2E757E4();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = v20;
  *(v10 + 8) = v21;
  *(v10 + 16) = v22;
  *(v10 + 24) = v23;
  *(v10 + 32) = v24;
  *(v10 + 40) = v6;
  *(v10 + 48) = 256;
  *(v10 + 56) = v7;
  *(v10 + 64) = v9;
  v14 = sub_1C2E75744();
  v16 = v15;
  v17 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642E0) + 36));
  *v17 = v14;
  v17[1] = v16;
  sub_1C2E75744();
  sub_1C2E73274();
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642E8) + 36));
  *v18 = v25;
  v18[1] = v26;
  result = *&v27;
  v18[2] = v27;
  return result;
}

unint64_t sub_1C2E33CB8()
{
  result = qword_1EC05B810;
  if (!qword_1EC05B810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064300);
    sub_1C2E33D70();
    sub_1C2C94F38(&qword_1EC05B4E8, &qword_1EC064310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B810);
  }

  return result;
}

unint64_t sub_1C2E33D70()
{
  result = qword_1EC05B9C8;
  if (!qword_1EC05B9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064308);
    sub_1C2E33DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B9C8);
  }

  return result;
}

unint64_t sub_1C2E33DFC()
{
  result = qword_1EC05C2E0[0];
  if (!qword_1EC05C2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC05C2E0);
  }

  return result;
}

uint64_t sub_1C2E33E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2E33EC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0642F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C2E33F28()
{
  result = qword_1EC05B7F0;
  if (!qword_1EC05B7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0642E8);
    sub_1C2E33FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B7F0);
  }

  return result;
}

unint64_t sub_1C2E33FB4()
{
  result = qword_1EC05B998;
  if (!qword_1EC05B998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0642D0);
    sub_1C2C7A654();
    sub_1C2C94F38(&qword_1EC05B618, &qword_1EC0642E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC05B998);
  }

  return result;
}

uint64_t StateHolder.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  swift_getKeyPath();
  sub_1C2E3426C();

  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v1 + v4, v3);
}

uint64_t StateHolder.state.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1C2E348C0();
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t StateHolder.__allocating_init(state:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StateHolder.init(state:)(a1);
  return v2;
}

uint64_t sub_1C2E3430C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 88);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 24))(a1 + v5, a2);
  return swift_endAccess();
}

uint64_t (*StateHolder.state.modify(void *a1))()
{
  a1[3] = v1;
  swift_getKeyPath();
  sub_1C2E3426C();

  *a1 = v1;
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A84();

  swift_beginAccess();
  return sub_1C2E345F8;
}

uint64_t sub_1C2E345F8()
{
  swift_endAccess();

  return sub_1C2E34630();
}

uint64_t sub_1C2E34630()
{
  swift_getKeyPath();
  swift_getWitnessTable();
  sub_1C2E71A74();
}

uint64_t StateHolder.init(state:)(uint64_t a1)
{
  sub_1C2E71A94();
  (*(*(*(*v1 + 80) - 8) + 32))(v1 + *(*v1 + 88), a1);
  return v1;
}

uint64_t StateHolder.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 96);
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t StateHolder.__deallocating_deinit()
{
  StateHolder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C2E348C0()
{
  swift_getKeyPath();
  sub_1C2E343C8();
}

uint64_t sub_1C2E34954()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C2E71AA4();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id CallRecordingButton.iconColor.getter()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton_iconColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1C2E34AD8()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton____lazy_storage___icon;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton____lazy_storage___icon);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_opt_self() preferredFontForTextStyle_];
  v4 = [objc_opt_self() configurationWithFont_];

  v5 = sub_1C2E75C24();
  v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v6)
  {
    v7 = [v6 imageWithRenderingMode_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v7;

    v2 = 0;
LABEL_4:
    v9 = v2;
    return;
  }

  __break(1u);
}

void sub_1C2E34C18()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_setEnabled_, 0);
  v1 = OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton_iconColor;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = [v0 imageView];
  if (v3)
  {
    v4 = v3;
    if ([v0 state] == 2)
    {
      v5 = [v2 colorWithAlphaComponent_];
    }

    else
    {
      v5 = v2;
    }

    v6 = v5;
    [v4 setTintColor_];

    v2 = v6;
  }

  sub_1C2E34AD8();
  v8 = v7;
  [v0 setImage:v7 forState:0];

  [v0 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v9 = [v0 imageView];
  if (v9)
  {
    v10 = v9;
    [v10 setContentMode_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C2E81350;
    v13 = [v10 heightAnchor];
    v14 = [v0 heightAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v12 + 32) = v15;
    v16 = [v10 widthAnchor];
    v17 = [v10 heightAnchor];

    v18 = [v16 constraintEqualToAnchor_];
    *(v12 + 40) = v18;
    sub_1C2CBF630();
    v19 = sub_1C2E75D64();

    [v11 activateConstraints_];
  }
}

void CallRecordingButton.isEnabled.setter(char a1)
{
  v2 = v1;
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_setEnabled_, a1 & 1);
  v4 = OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton_iconColor;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = [v1 imageView];
  if (v6)
  {
    v7 = v6;
    if ([v2 state] == 2)
    {
      v8 = [v5 colorWithAlphaComponent_];
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
    [v7 setTintColor_];

    v5 = v9;
  }
}

Swift::Void __swiftcall CallRecordingButton.overrideTintColor(_:)(Swift::Bool a1)
{
  v3 = objc_opt_self();
  v4 = &selRef_whiteColor;
  if (!a1)
  {
    v4 = &selRef_blackColor;
  }

  v5 = [v3 *v4];
  v6 = OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton_iconColor;
  swift_beginAccess();
  v7 = *&v1[v6];
  *&v1[v6] = v5;
  v8 = v5;

  v9 = [v1 imageView];
  if (v9)
  {
    v10 = v9;
    if ([v1 state] == 2)
    {
      v11 = [v8 colorWithAlphaComponent_];
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;
    [v10 setTintColor_];

    v8 = v12;
  }
}

id CallRecordingButton.isEnabled.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_isEnabled);
}

void (*CallRecordingButton.isEnabled.modify(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 80) = ObjectType;
  *(v4 + 24) = v1;
  *(v4 + 32) = ObjectType;
  *v4 = objc_msgSendSuper2((v4 + 24), sel_isEnabled);
  return sub_1C2E353DC;
}

void sub_1C2E353DC(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v5 = *(*a1 + 9);
  v4 = *(*a1 + 10);
  v6 = *a1;
  if (a2)
  {
    v6[5] = v5;
    v6[6] = v4;
    objc_msgSendSuper2((v6 + 5), sel_setEnabled_, v3);
  }

  else
  {
    v6[7] = v5;
    v2[8] = v4;
    objc_msgSendSuper2((v6 + 7), sel_setEnabled_, v3);
    v7 = OBJC_IVAR____TtC16CommunicationsUI19CallRecordingButton_iconColor;
    swift_beginAccess();
    v8 = *&v5[v7];
    v9 = [v5 imageView];
    if (v9)
    {
      v10 = v9;
      if ([v2[9] state] == 2)
      {
        v11 = [v8 colorWithAlphaComponent_];
      }

      else
      {
        v11 = v8;
      }

      v12 = v11;
      [v10 setTintColor_];
    }
  }

  free(v2);
}

id CallRecordingButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ApertureCallScreeningReceptionistRingingComposer.init(bottomStatusViewModel:participantViewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void __swiftcall ApertureCallScreeningReceptionistRingingComposer.compose(hostingVC:leadingButton:trailingButton:)(UIView *__return_ptr retstr, UIViewController *hostingVC, UIButton *leadingButton, UIButton *trailingButton)
{
  v9 = *v4;
  v8 = v4[1];
  v20[0] = 1;
  v20[1] = swift_getKeyPath();
  v21 = xmmword_1C2E88FE0;
  v22 = xmmword_1C2E88FE0;
  v23 = 0;
  v18 = leadingButton;
  v19 = trailingButton;
  v15 = v9;
  v16 = v8;
  v12 = v9;
  v13 = v8;
  v10 = hostingVC;
  sub_1C2DAFE74(v10, v20, sub_1C2DAF3A4, 0, sub_1C2E35728, v17, sub_1C2E35730, v14, sub_1C2E35A28, v11);
}

double sub_1C2E356A4@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  a2;
  sub_1C2E75174();
  sub_1C2E75174();
  result = *&v7;
  *a3 = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  return result;
}

double sub_1C2E35778@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v19 - v7;
  v9 = *a1;
  v19[3] = a2;
  type metadata accessor for ParticipantLabelViewModel();

  sub_1C2E75174();
  v10 = v19[0];
  v11 = v19[1];
  LOBYTE(a1) = sub_1C2E74474();
  swift_getKeyPath();
  v19[0] = v9;
  sub_1C2D16CBC();
  sub_1C2E71A64();

  v12 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage;
  swift_beginAccess();
  sub_1C2C736A4(v9 + v12, v8, &qword_1EC05E088);
  v13 = sub_1C2E71664();
  (*(*(v13 - 8) + 48))(v8, 1, v13);
  sub_1C2C73644(v8, &qword_1EC05E088);
  sub_1C2E73034();
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = a1;
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  *(a3 + 40) = v16;
  *(a3 + 48) = v17;
  *(a3 + 56) = 0;
  result = 0.0;
  *(a3 + 64) = xmmword_1C2E90F90;
  return result;
}

__n128 sub_1C2E35950@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X4>, __n128 *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  type metadata accessor for IntelligenceMessageViewModel();
  swift_retain_n();

  sub_1C2E75174();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  sub_1C2E75174();
  result = v10;
  *a4 = v10;
  a4[1] = v10;
  a4[2].n128_u64[0] = v11;
  return result;
}

uint64_t sub_1C2E35A70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F7E0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05E088);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26[-v9];
  v32 = *a1;
  v11 = v32;
  type metadata accessor for IntelligenceMessageViewModel();

  sub_1C2E75174();
  v28 = v31;
  v29 = v30;
  v27 = sub_1C2E74474();
  swift_getKeyPath();
  v30 = v11;
  sub_1C2D16CBC();
  sub_1C2E71A64();

  v12 = OBJC_IVAR____TtC16CommunicationsUI28IntelligenceMessageViewModel__statusMessage;
  swift_beginAccess();
  sub_1C2C736A4(v11 + v12, v10, &qword_1EC05E088);
  v13 = sub_1C2E71664();
  (*(*(v13 - 8) + 48))(v10, 1, v13);
  sub_1C2C73644(v10, &qword_1EC05E088);
  sub_1C2E73034();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v33 = 0;
  v22 = sub_1C2E757A4();
  swift_getKeyPath();
  v32 = v11;
  sub_1C2E71A64();

  sub_1C2C736A4(v11 + v12, v7 + *(v5 + 44), &qword_1EC05E088);
  *v7 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064338);
  sub_1C2C736A4(v7, a2 + *(v23 + 36), &qword_1EC05F7E0);
  v24 = v28;
  *a2 = v29;
  *(a2 + 8) = v24;
  *(a2 + 16) = v27;
  *(a2 + 24) = v15;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21;
  *(a2 + 56) = 0;
  return sub_1C2C73644(v7, &qword_1EC05F7E0);
}

uint64_t sub_1C2E35D60()
{
  swift_getFunctionTypeMetadata1();
  sub_1C2E751B4();
  sub_1C2E75184();
  return v1;
}

uint64_t sub_1C2E35DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = *(a1 + 16);
  v18[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  v14 = sub_1C2E35D60();
  sub_1C2E751B4();
  sub_1C2E75184();
  v14(v5);

  (*(v18[0] + 8))(v5, v3);
  v15 = *(a1 + 32);
  sub_1C2C6EE48(v10, v7, v15);
  v16 = *(v8 + 8);
  v16(v10, v7);
  sub_1C2C6EE48(v13, v7, v15);
  return (v16)(v13, v7);
}

uint64_t sub_1C2E35FE8()
{
  result = sub_1C2E751B4();
  if (v1 <= 0x3F)
  {
    swift_getFunctionTypeMetadata1();
    result = sub_1C2E751B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2E3608C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v6;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v7 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v16) + 1;
}

void sub_1C2E361D0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v8 >= a3)
  {
    v14 = 0;
    v15 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = a3 - v8;
    if (((v9 + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
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

    v15 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_20:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
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

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v19 = v9 + 8;
      if (v6 < 0x7FFFFFFF)
      {
        v22 = (&a1[v19 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
          v22[1] = 0;
          v22[2] = 0;
        }

        else
        {
          v23 = a2 - 1;
        }

        *v22 = v23;
      }

      else if (v7 >= a2)
      {
        v24 = *(v5 + 56);

        v24();
      }

      else if (v9 != -8)
      {
        v20 = ~v7 + a2;
        v21 = a1;
        bzero(a1, v19);
        *v21 = v20;
      }

      return;
    }
  }

  if (((v9 + 15) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + 15) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v17 = ~v8 + a2;
    v18 = a1;
    bzero(a1, ((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
    a1 = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&a1[v10] = v16;
    }

    else
    {
      *&a1[v10] = v16;
    }
  }

  else if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1C2E36440@<X0>(uint64_t a1@<X8>)
{
  _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v2 = sub_1C2E74F74();

  v3 = sub_1C2E75044();
  result = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  *a1 = 0x4014000000000000;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF6666666666666;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = result;
  return result;
}

uint64_t RecentsCellVideoMessageLeadingView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C2E75054();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2, v4);
  v7 = sub_1C2E750C4();
  (*(v3 + 8))(v6, v2);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0643C8) + 36);
  v9 = *(sub_1C2E737C4() + 20);
  v10 = *MEMORY[0x1E697F468];
  v11 = sub_1C2E73D44();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #20.0 }

  *v8 = _Q0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05FDE0) + 36)] = 256;
  v47 = a1;
  *a1 = v7;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0643D0) + 36);
  *v17 = 0x3FE70A3D70A3D70ALL;
  *(v17 + 4) = 0;
  v18 = sub_1C2E75744();
  v20 = v19;
  v21 = sub_1C2E75744();
  v23 = v22;
  sub_1C2E36440(&v59);
  v24 = v59;
  LOBYTE(v8) = v60;
  v25 = v61;
  v26 = v62;
  v27 = v63;
  v46 = v62;
  v28 = v64;
  v29 = sub_1C2E74444();
  sub_1C2E73034();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LOBYTE(v59) = 0;
  *&v51 = v21;
  *(&v51 + 1) = v23;
  *&v52 = v24;
  BYTE8(v52) = v8;
  *(&v52 + 9) = *v49;
  HIDWORD(v52) = *&v49[3];
  *&v53 = v25;
  *(&v53 + 1) = v26;
  *&v54 = v27;
  *(&v54 + 1) = v28;
  LOBYTE(v55) = v29;
  DWORD1(v55) = *&v50[3];
  *(&v55 + 1) = *v50;
  *(&v55 + 1) = v30;
  *&v56 = v32;
  *(&v56 + 1) = v34;
  *&v57 = v36;
  BYTE8(v57) = 0;
  *&v58 = v18;
  *(&v58 + 1) = v20;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0643D8);
  v39 = (v47 + *(v38 + 36));
  v40 = v56;
  v39[4] = v55;
  v39[5] = v40;
  v41 = v58;
  v39[6] = v57;
  v39[7] = v41;
  v42 = v52;
  *v39 = v51;
  v39[1] = v42;
  v43 = v54;
  v39[2] = v53;
  v39[3] = v43;
  v59 = v21;
  v60 = v23;
  v61 = v24;
  LOBYTE(v62) = v8;
  HIDWORD(v62) = *&v49[3];
  *(&v62 + 1) = *v49;
  v63 = v25;
  v64 = v46;
  v65 = v27;
  v66 = v28;
  v67 = v29;
  *&v68[3] = *&v50[3];
  *v68 = *v50;
  v69 = v31;
  v70 = v33;
  v71 = v35;
  v72 = v37;
  v73 = 0;
  v74 = v18;
  v75 = v20;
  sub_1C2E36850(&v51, &v48);
  return sub_1C2E368C0(&v59);
}

uint64_t sub_1C2E36850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0643E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C2E368C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0643E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C2E36958()
{
  result = qword_1EC0643E8;
  if (!qword_1EC0643E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0643D8);
    sub_1C2E36A10();
    sub_1C2C94F38(&qword_1EC064400, &qword_1EC0643E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0643E8);
  }

  return result;
}

unint64_t sub_1C2E36A10()
{
  result = qword_1EC0643F0;
  if (!qword_1EC0643F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0643D0);
    sub_1C2E36A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0643F0);
  }

  return result;
}

unint64_t sub_1C2E36A9C()
{
  result = qword_1EC0643F8;
  if (!qword_1EC0643F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC0643C8);
    sub_1C2C94F38(&qword_1EC05BA80, &qword_1EC05FDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0643F8);
  }

  return result;
}

uint64_t RecentsCellVoicemailSummaryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C2E36BD0(v7);
  v2 = v7[0];
  v3 = v7[1];
  v4 = v8;
  v5 = v9;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1C2E36BD0@<X0>(uint64_t a1@<X8>)
{
  sub_1C2E75044();
  v1 = sub_1C2E748B4();
  v3 = v2;
  v5 = v4;
  sub_1C2E74F14();
  v6 = sub_1C2E74794();
  v8 = v7;
  v10 = v9;
  sub_1C2C72340(v1, v3, v5 & 1);

  sub_1C2E73D14();
  v11 = sub_1C2E74884();
  v13 = v12;
  LOBYTE(v1) = v14;
  v15 = sub_1C2E747C4();
  v35 = v16;
  v34 = v17;
  sub_1C2C72340(v11, v13, v1 & 1);

  sub_1C2C72340(v6, v8, v10 & 1);

  sub_1C2C74960();

  v18 = sub_1C2E748A4();
  v20 = v19;
  v22 = v21;
  sub_1C2E740E4();
  v23 = sub_1C2E74794();
  v25 = v24;
  LOBYTE(v6) = v26;
  sub_1C2C72340(v18, v20, v22 & 1);

  v27 = sub_1C2E747C4();
  v29 = v28;
  v31 = v30;
  v36 = v32;
  sub_1C2C72340(v23, v25, v6 & 1);

  sub_1C2C72340(v15, v35, v34 & 1);

  *a1 = v27;
  *(a1 + 8) = v29;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v36;
  return result;
}

uint64_t sub_1C2E36E70@<X0>(uint64_t a1@<X8>)
{
  sub_1C2E36BD0(v7);
  v2 = v7[0];
  v3 = v7[1];
  v4 = v8;
  v5 = v9;
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  return result;
}

unint64_t sub_1C2E36F10()
{
  result = qword_1EC064408;
  if (!qword_1EC064408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064410);
    sub_1C2E36F9C();
    sub_1C2D98990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064408);
  }

  return result;
}

unint64_t sub_1C2E36F9C()
{
  result = qword_1EC064418;
  if (!qword_1EC064418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064418);
  }

  return result;
}

uint64_t (*AudioCallDeclineControlViewModel.buttonAction.getter())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2E37118;
}

uint64_t sub_1C2E37078()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2C6E3A4(result + 24, v3);

    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 8))(v1, v2);
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

uint64_t AudioCallDeclineControlViewModel.__allocating_init(service:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AudioCallDeclineControlViewModel.init(service:)(a1);
  return v2;
}

uint64_t AudioCallDeclineControlViewModel.init(service:)(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v24 = sub_1C2E757E4();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, v1 + 24);
  v29 = xmmword_1C2E8AB00;
  v30 = 1;
  sub_1C2E37880(&qword_1EC064430, type metadata accessor for AudioCallDeclineControlViewModel);
  v9 = sub_1C2DFDC24(0, &v29);
  sub_1C2C77608(v29, *(&v29 + 1), v30);
  v10 = sub_1C2E74EF4();
  swift_getKeyPath();
  *&v29 = v9;
  sub_1C2E37880(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

  sub_1C2E71A64();

  *&v29 = v9;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  v11 = *(v9 + 24);
  *(v9 + 24) = v10;
  v12 = *(v9 + 32);
  *(v9 + 32) = 1;
  sub_1C2CC2678(v11, v12);
  v28 = v9;
  swift_getKeyPath();
  sub_1C2E71A74();

  v13 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v14 = sub_1C2E74534();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = sub_1C2E745C4();
  sub_1C2CB410C(v8);
  v17 = v23;
  v16 = v24;
  (*(v4 + 104))(v23, *MEMORY[0x1E6981DF0], v24);
  type metadata accessor for ControlTextConfiguration();
  v18 = swift_allocObject();
  v19 = v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v19 = 0;
  v19[8] = 1;
  sub_1C2E71A94();
  v18[2] = 0x656E696C636544;
  v18[3] = 0xE700000000000000;
  v18[4] = v13;
  v18[5] = v15;
  (*(v4 + 32))(v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v17, v16);
  *(v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v19 = 0;
  v19[8] = 1;
  *(v18 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
  type metadata accessor for StackedControlButtonConfiguration();
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  sub_1C2E71A94();
  *(v20 + 16) = v9;
  swift_getKeyPath();
  v26 = v20;
  v27 = v18;
  v28 = v20;
  sub_1C2E37880(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  __swift_destroy_boxed_opaque_existential_1(v25);
  *(v2 + 16) = v20;
  return v2;
}

uint64_t type metadata accessor for AudioCallDeclineControlViewModel()
{
  result = qword_1EC064440;
  if (!qword_1EC064440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudioCallDeclineControlViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC16CommunicationsUI32AudioCallDeclineControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioCallDeclineControlViewModel.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v1 = OBJC_IVAR____TtC16CommunicationsUI32AudioCallDeclineControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t (*sub_1C2E377CC())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2E379A4;
}

uint64_t sub_1C2E37828(uint64_t a1)
{
  result = sub_1C2E37880(&qword_1EC064438, type metadata accessor for AudioCallDeclineControlViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2E37880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C2E378D0()
{
  result = sub_1C2E71AA4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 ControlsView.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 25);
  *(a2 + 25) = result;
  return result;
}

uint64_t ControlsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C2E37CC0(v1, v17);
  if (v18 <= 1u)
  {
    *v13 = v17[0];
    v13[8] = v18 != 0;
    sub_1C2E2B4C4();
    sub_1C2E37E2C();

    sub_1C2E73F44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064468);
    sub_1C2E37DA0();
    sub_1C2E37E80();
    sub_1C2E73F44();
LABEL_5:

    *a1 = *v13;
    *(a1 + 16) = *&v13[16];
    *(a1 + 32) = v14;
    *(a1 + 40) = v15;
    *(a1 + 41) = v16;
    return result;
  }

  if (v18 == 2)
  {
    v4 = v17[0];
    v3 = v17[1];
    v5 = sub_1C2E73DC4();

    *v13 = v5;
    *&v13[8] = xmmword_1C2E7CBF0;
    *&v13[24] = v3;
    v14 = v4;
    v15 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064450);
    sub_1C2E37CF8();
    sub_1C2E73F44();
    sub_1C2E37D5C(v7, v8, v9, v10, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC064468);
    sub_1C2E37DA0();
    sub_1C2E37E80();
    sub_1C2E73F44();

    sub_1C2E37F0C(v7, v8, v9, v10, v11, v12);

    goto LABEL_5;
  }

  result = sub_1C2E766F4();
  __break(1u);
  return result;
}

unint64_t sub_1C2E37CF8()
{
  result = qword_1EC064458;
  if (!qword_1EC064458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064458);
  }

  return result;
}

uint64_t sub_1C2E37D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C2E37DA0()
{
  result = qword_1EC064470;
  if (!qword_1EC064470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064460);
    sub_1C2E2B4C4();
    sub_1C2E37E2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064470);
  }

  return result;
}

unint64_t sub_1C2E37E2C()
{
  result = qword_1EC064478;
  if (!qword_1EC064478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064478);
  }

  return result;
}

unint64_t sub_1C2E37E80()
{
  result = qword_1EC064480;
  if (!qword_1EC064480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064468);
    sub_1C2E37CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064480);
  }

  return result;
}

uint64_t sub_1C2E37F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C2E37F7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2E37FB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1C2E38004(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1C2E3803C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C2E38084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_1C2E380E4()
{
  result = qword_1EC064488;
  if (!qword_1EC064488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC064490);
    sub_1C2E37DA0();
    sub_1C2E37E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC064488);
  }

  return result;
}

id CallHoldingButton.iconColor.getter()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton_iconColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1C2E381C4()
{
  v1 = OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton____lazy_storage___icon;
  v2 = *(v0 + OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton____lazy_storage___icon);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_opt_self() preferredFontForTextStyle_];
  v4 = [objc_opt_self() configurationWithFont_];

  v5 = sub_1C2E75C24();
  v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v6)
  {
    v7 = [v6 imageWithRenderingMode_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v7;

    v2 = 0;
LABEL_4:
    v9 = v2;
    return;
  }

  __break(1u);
}

void sub_1C2E38304()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_setEnabled_, 0);
  v1 = OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton_iconColor;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = [v0 imageView];
  if (v3)
  {
    v4 = v3;
    if ([v0 state] == 2)
    {
      v5 = [v2 colorWithAlphaComponent_];
    }

    else
    {
      v5 = v2;
    }

    v6 = v5;
    [v4 setTintColor_];

    v2 = v6;
  }

  sub_1C2E381C4();
  v8 = v7;
  [v0 setImage:v7 forState:0];

  [v0 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v9 = [v0 imageView];
  if (v9)
  {
    v10 = v9;
    [v10 setContentMode_];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC05D8D0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C2E81350;
    v13 = [v10 heightAnchor];
    v14 = [v0 heightAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v12 + 32) = v15;
    v16 = [v10 widthAnchor];
    v17 = [v10 heightAnchor];

    v18 = [v16 constraintEqualToAnchor_];
    *(v12 + 40) = v18;
    sub_1C2CBF630();
    v19 = sub_1C2E75D64();

    [v11 activateConstraints_];
  }
}

void CallHoldingButton.isEnabled.setter(char a1)
{
  v2 = v1;
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_setEnabled_, a1 & 1);
  v4 = OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton_iconColor;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = [v1 imageView];
  if (v6)
  {
    v7 = v6;
    if ([v2 state] == 2)
    {
      v8 = [v5 colorWithAlphaComponent_];
    }

    else
    {
      v8 = v5;
    }

    v9 = v8;
    [v7 setTintColor_];

    v5 = v9;
  }
}

Swift::Void __swiftcall CallHoldingButton.overrideTintColor(_:)(Swift::Bool a1)
{
  v3 = objc_opt_self();
  v4 = &selRef_whiteColor;
  if (!a1)
  {
    v4 = &selRef_blackColor;
  }

  v5 = [v3 *v4];
  v6 = OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton_iconColor;
  swift_beginAccess();
  v7 = *&v1[v6];
  *&v1[v6] = v5;
  v8 = v5;

  v9 = [v1 imageView];
  if (v9)
  {
    v10 = v9;
    if ([v1 state] == 2)
    {
      v11 = [v8 colorWithAlphaComponent_];
    }

    else
    {
      v11 = v8;
    }

    v12 = v11;
    [v10 setTintColor_];

    v8 = v12;
  }
}

id CallHoldingButton.isEnabled.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_isEnabled);
}

void (*CallHoldingButton.isEnabled.modify(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  ObjectType = swift_getObjectType();
  *(v4 + 80) = ObjectType;
  *(v4 + 24) = v1;
  *(v4 + 32) = ObjectType;
  *v4 = objc_msgSendSuper2((v4 + 24), sel_isEnabled);
  return sub_1C2E38A88;
}

void sub_1C2E38A88(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v5 = *(*a1 + 9);
  v4 = *(*a1 + 10);
  v6 = *a1;
  if (a2)
  {
    v6[5] = v5;
    v6[6] = v4;
    objc_msgSendSuper2((v6 + 5), sel_setEnabled_, v3);
  }

  else
  {
    v6[7] = v5;
    v2[8] = v4;
    objc_msgSendSuper2((v6 + 7), sel_setEnabled_, v3);
    v7 = OBJC_IVAR____TtC16CommunicationsUI17CallHoldingButton_iconColor;
    swift_beginAccess();
    v8 = *&v5[v7];
    v9 = [v5 imageView];
    if (v9)
    {
      v10 = v9;
      if ([v2[9] state] == 2)
      {
        v11 = [v8 colorWithAlphaComponent_];
      }

      else
      {
        v11 = v8;
      }

      v12 = v11;
      [v10 setTintColor_];
    }
  }

  free(v2);
}

id CallHoldingButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1C2E38C54(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16CommunicationsUI38VoicemailNavigationBarTitleViewWrapper_principalView] = 0;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI38VoicemailNavigationBarTitleViewWrapper_maximumOrnamentWidth] = 0x407AE00000000000;
  *&v4[OBJC_IVAR____TtC16CommunicationsUI38VoicemailNavigationBarTitleViewWrapper_maximumOrnamentWidthRatio] = 0x3FE999999999999ALL;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for VoicemailNavigationBarTitleViewWrapper();
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setHideStandardTitle_];
  [v9 setPreferredContentAlignment_];
  v10 = *&v9[OBJC_IVAR____TtC16CommunicationsUI38VoicemailNavigationBarTitleViewWrapper_principalView];
  if (v10)
  {
    v11 = v10;
    [v9 addSubview_];
  }

  return v9;
}

char *VoicemailNavigationBarTitleViewWrapper.init(titleView:)(void *a1)
{
  v3 = OBJC_IVAR____TtC16CommunicationsUI38VoicemailNavigationBarTitleViewWrapper_principalView;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI38VoicemailNavigationBarTitleViewWrapper_principalView] = 0;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI38VoicemailNavigationBarTitleViewWrapper_maximumOrnamentWidth] = 0x407AE00000000000;
  *&v1[OBJC_IVAR____TtC16CommunicationsUI38VoicemailNavigationBarTitleViewWrapper_maximumOrnamentWidthRatio] = 0x3FE999999999999ALL;
  *&v1[v3] = a1;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v13.receiver = v1;
  v13.super_class = type metadata accessor for VoicemailNavigationBarTitleViewWrapper();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v13, sel_initWithFrame_, v4, v5, v6, v7);
  [v9 setHideStandardTitle_];
  [v9 setPreferredContentAlignment_];
  v10 = *&v9[OBJC_IVAR____TtC16CommunicationsUI38VoicemailNavigationBarTitleViewWrapper_principalView];
  if (v10)
  {
    v11 = v10;
    [v9 addSubview_];
  }

  return v9;
}

void sub_1C2E38F9C()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for VoicemailNavigationBarTitleViewWrapper();
  objc_msgSendSuper2(&v35, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC16CommunicationsUI38VoicemailNavigationBarTitleViewWrapper_principalView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v0 safeAreaInsets];
    v14 = UIEdgeInsetsInsetRect_0(v5, v7, v9, v11, v12, v13);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v0 overlays];
    if (v21)
    {
      v22 = v21;
      sub_1C2E76174();
      v23 = 0.0;
      Width = 0.0;
      if ((v37 & 1) == 0)
      {
        Width = CGRectGetWidth(v36);
      }

      sub_1C2E76184();
      if ((v39 & 1) == 0)
      {
        v23 = CGRectGetWidth(v38);
      }

      if (Width > v23)
      {
        v25 = Width;
      }

      else
      {
        v25 = v23;
      }

      v26 = 0.0;
    }

    else
    {
      v26 = *MEMORY[0x1E69DDCE0];
      v25 = *(MEMORY[0x1E69DDCE0] + 8);
    }

    UIEdgeInsetsInsetRect_0(v14, v16, v18, v20, v26, v25);
    v29 = v28 * 0.8;
    if (v28 * 0.8 > 430.0)
    {
      v29 = 430.0;
    }

    [v3 sizeThatFits_];
    v31 = v30;
    v33 = v32;
    [v1 frame];
    v34 = (CGRectGetWidth(v40) - v31) * 0.5;
    [v3 setFrame_];
    v41.origin.y = 0.0;
    v41.origin.x = v34;
    v41.size.width = v31;
    v41.size.height = v33;
    [v1 setHeight_];
  }
}

id VoicemailNavigationBarTitleViewWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailNavigationBarTitleViewWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*AudioCallMuteControlViewModel.buttonAction.getter())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2E39418;
}

uint64_t sub_1C2E392F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    v5[0] = v1;
    sub_1C2E3ABEC(&qword_1EC0644D8, type metadata accessor for AudioCallMuteControlViewModel);
    sub_1C2E71A64();

    swift_beginAccess();
    sub_1C2C6E3A4(v1 + 24, v4);

    sub_1C2C716EC(v4, v5);
    v2 = v6;
    v3 = v7;
    __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
    sub_1C2E394E0(v2, v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_1C2E39420@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2E3ABEC(&qword_1EC0644D8, type metadata accessor for AudioCallMuteControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return sub_1C2C6E3A4(v1 + 24, a1);
}

uint64_t sub_1C2E394E0(uint64_t a1, uint64_t a2)
{
  MuteControlServiceProtocol.muteState.getter(a1, a2);
  v5[0] = (v5[1] & 1) == 0;
  return MuteControlServiceProtocol.muteState.setter(v5, a1, a2);
}

uint64_t sub_1C2E3953C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E3ABEC(&qword_1EC0644D8, type metadata accessor for AudioCallMuteControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  return sub_1C2C6E3A4(v3 + 24, a2);
}

uint64_t sub_1C2E395FC(uint64_t a1)
{
  sub_1C2C6E3A4(a1, v2);
  swift_getKeyPath();
  sub_1C2E3ABEC(&qword_1EC0644D8, type metadata accessor for AudioCallMuteControlViewModel);
  sub_1C2E71A54();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1C2E396DC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + 24), a2);
  return swift_endAccess();
}

uint64_t sub_1C2E39740()
{
  swift_getKeyPath();
  sub_1C2E3ABEC(&qword_1EC0644D8, type metadata accessor for AudioCallMuteControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
}

uint64_t sub_1C2E397F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2E3ABEC(&qword_1EC0644D8, type metadata accessor for AudioCallMuteControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1C2E398B8(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1C2CD61E4(v3, a1);

  if (v4)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E3ABEC(&qword_1EC0644D8, type metadata accessor for AudioCallMuteControlViewModel);
    sub_1C2E71A54();
  }
}

uint64_t AudioCallMuteControlViewModel.__allocating_init(service:)(void *a1)
{
  v2 = swift_allocObject();
  AudioCallMuteControlViewModel.init(service:)(a1);
  return v2;
}

uint64_t AudioCallMuteControlViewModel.init(service:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0644C0);
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F468);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - v9;
  v10 = sub_1C2E757E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05D810);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v37 - v15;
  *(v2 + 64) = MEMORY[0x1E69E7CD0];
  v42 = v2 + 64;
  sub_1C2E71A94();
  sub_1C2C6E3A4(a1, v2 + 24);
  v17 = a1;
  v46 = a1;
  v18 = a1[3];
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v18);
  LOBYTE(v18) = sub_1C2E3A3B8(v18, v19);
  v49 = xmmword_1C2E91710;
  v50 = 1;
  v38 = type metadata accessor for AudioCallMuteControlViewModel;
  sub_1C2E3ABEC(&qword_1EC0644D0, type metadata accessor for AudioCallMuteControlViewModel);
  v20 = sub_1C2DFDC24(v18, &v49);
  sub_1C2C77608(v49, *(&v49 + 1), v50);
  v21 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  v22 = sub_1C2E74534();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  v23 = sub_1C2E745C4();
  sub_1C2CB410C(v16);
  (*(v11 + 104))(v13, *MEMORY[0x1E6981DF0], v10);
  type metadata accessor for ControlTextConfiguration();
  v24 = swift_allocObject();
  v25 = v24 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__lineLimit;
  *v25 = 0;
  v25[8] = 1;
  sub_1C2E71A94();
  v24[2] = 1702131021;
  v24[3] = 0xE400000000000000;
  v24[4] = v21;
  v24[5] = v23;
  (*(v11 + 32))(v24 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__blendMode, v13, v10);
  *(v24 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__wrapText) = 0;
  *v25 = 0;
  v25[8] = 1;
  *(v24 + OBJC_IVAR____TtC16CommunicationsUI24ControlTextConfiguration__alignment) = 0;
  type metadata accessor for StackedControlButtonConfiguration();
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  sub_1C2E71A94();
  *(v26 + 16) = v20;
  swift_getKeyPath();
  v47 = v26;
  v48 = v24;
  *&v49 = v26;
  sub_1C2E3ABEC(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);

  sub_1C2E71A54();

  *(v2 + 16) = v26;
  v28 = v46[3];
  v27 = v46[4];
  v29 = v46;
  __swift_project_boxed_opaque_existential_1(v46, v28);
  *&v49 = (*(*(v27 + 8) + 8))(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC05F478);
  v37 = MEMORY[0x1E695BFB0];
  sub_1C2C94F38(&qword_1EC05F480, &qword_1EC05F478);
  v30 = v39;
  sub_1C2E72F04();

  swift_allocObject();
  swift_weakInit();
  sub_1C2C94F38(&qword_1EC05F488, &qword_1EC05F468);

  v31 = v40;
  sub_1C2E72F14();

  (*(v41 + 8))(v30, v31);
  swift_getKeyPath();
  *&v49 = v2;
  sub_1C2E3ABEC(&qword_1EC0644D8, v38);
  sub_1C2E71A64();

  *&v49 = v2;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  *&v49 = v2;
  swift_getKeyPath();
  sub_1C2E71A74();

  v32 = v29[3];
  v33 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v32);
  *&v49 = (*(v33 + 16))(v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0644E0);
  sub_1C2C94F38(&qword_1EC0644E8, &qword_1EC0644E0);
  sub_1C2D0D4E4();
  v34 = v43;
  sub_1C2E72F04();

  swift_allocObject();
  swift_weakInit();

  sub_1C2C94F38(&qword_1EC0644F0, &qword_1EC0644C0);
  v35 = v44;
  sub_1C2E72F14();

  (*(v45 + 8))(v34, v35);
  swift_getKeyPath();
  *&v49 = v2;
  sub_1C2E71A64();

  *&v49 = v2;
  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  sub_1C2E72D94();
  swift_endAccess();

  *&v49 = v2;
  swift_getKeyPath();
  sub_1C2E71A74();

  sub_1C2E3A460();
  __swift_destroy_boxed_opaque_existential_1(v46);
  return v2;
}

uint64_t sub_1C2E3A3B8(uint64_t a1, uint64_t a2)
{
  if ((DisableableControlService.controlEnabled.getter(a1, *(a2 + 8)) & 1) == 0)
  {
    return 2;
  }

  MuteControlServiceProtocol.muteState.getter(a1, a2);
  return v5;
}

uint64_t type metadata accessor for AudioCallMuteControlViewModel()
{
  result = qword_1EC0644F8;
  if (!qword_1EC0644F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2E3A460()
{
  v1 = v0;
  swift_getKeyPath();
  v14[0] = v0;
  sub_1C2E3ABEC(&qword_1EC0644D8, type metadata accessor for AudioCallMuteControlViewModel);
  sub_1C2E71A64();

  swift_beginAccess();
  sub_1C2C6E3A4(v0 + 24, v14);
  v2 = v15;
  v3 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v4 = sub_1C2E3A3B8(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v14);
  if (v4 != 1)
  {
    return sub_1C2CFCB98(v4);
  }

  v5 = *(v1 + 16);
  swift_getKeyPath();
  v14[0] = v5;
  sub_1C2E3ABEC(&qword_1EC05BC60, type metadata accessor for StackedControlButtonConfiguration);
  sub_1C2E71A64();

  swift_beginAccess();
  v6 = *(v5 + 16);
  swift_beginAccess();
  if (*(v6 + 16) == 1)
  {
    *(v6 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2E3ABEC(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

    sub_1C2E71A54();
  }

  swift_getKeyPath();
  sub_1C2E71A64();

  v9 = *(v5 + 16);

  v10 = _s7SwiftUI5ColorV014CommunicationsB0E029defaultUnselectedControlImageC0ACvgZ_0();
  swift_getKeyPath();
  sub_1C2E3ABEC(&qword_1EC05BDA0, type metadata accessor for ControlButtonConfiguration);

  sub_1C2E71A64();

  swift_getKeyPath();
  sub_1C2E71A84();

  swift_beginAccess();
  v11 = *(v9 + 24);
  *(v9 + 24) = v10;
  v12 = *(v9 + 32);
  *(v9 + 32) = 1;
  sub_1C2CC2678(v11, v12);
  swift_getKeyPath();
  sub_1C2E71A74();

  swift_getKeyPath();
  sub_1C2E71A64();

  v13 = sub_1C2E74EF4();
  sub_1C2D7E3B0(v13);
}

uint64_t sub_1C2E3A8AC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C2E3A460();
  }

  return result;
}

uint64_t AudioCallMuteControlViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v1 = OBJC_IVAR____TtC16CommunicationsUI29AudioCallMuteControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioCallMuteControlViewModel.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v1 = OBJC_IVAR____TtC16CommunicationsUI29AudioCallMuteControlViewModel___observationRegistrar;
  v2 = sub_1C2E71AA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t (*sub_1C2E3AA4C())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1C2E3AC54;
}

uint64_t sub_1C2E3AAA8(uint64_t a1)
{
  result = sub_1C2E3ABEC(&qword_1EC0644D8, type metadata accessor for AudioCallMuteControlViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C2E3AB08()
{
  result = sub_1C2E71AA4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2E3ABEC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C2E3AC58(unint64_t a1, id *a2, _BYTE *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C2E764E4())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v18 = MEMORY[0x1E69E7CC0];
    result = sub_1C2E76634();
    if (i < 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C6927010](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = *(a1 + 8 * j + 32);
      }

      v11 = v10;
      v12 = *a2;
      result = [v11 identifier];
      if (!result)
      {
        goto LABEL_22;
      }

      v13 = result;
      v14 = [v12 objectForKeyedSubscript_];

      if (v14)
      {
      }

      else
      {
        *a3 = 1;
        v7 = type metadata accessor for PosterAvatarContact();
        v8 = objc_allocWithZone(v7);
        *&v8[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_contact] = v11;
        *&v8[OBJC_IVAR____TtC16CommunicationsUI19PosterAvatarContact_highResolutionPosterSnapshot] = 0;
        v17.receiver = v8;
        v17.super_class = v7;
        objc_msgSendSuper2(&v17, sel_init);
      }

      sub_1C2E76614();
      sub_1C2E76644();
      sub_1C2E76654();
      sub_1C2E76624();
      if (v9 == i)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return result;
}

uint64_t sub_1C2E3AE4C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();

  v3 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v3;
}

unint64_t sub_1C2E3AEFC()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();

  v1 = *(v0 + 32);
  sub_1C2D9E5A0(v1, *(v3 + 40));
  return v1;
}

uint64_t sub_1C2E3AFB4()
{
  swift_getKeyPath();
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();
}

uint64_t sub_1C2E3B05C()
{
  swift_getKeyPath();
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();

  return *(v0 + 24);
}

void sub_1C2E3B100(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  swift_getKeyPath();
  v10[0] = v1;
  sub_1C2E45254(&qword_1EC05CE90, 255, _s5ModelCMa);
  sub_1C2E71A64();

  if (*(v1 + 72))
  {
    if (v3)
    {
      if (*(v1 + 64) == v4)
      {
        v5 = *(v1 + 72);
        swift_bridgeObjectRetain_n();

        v6 = sub_1C2CF6E00(v5, v3);

        swift_bridgeObjectRelease_n();
        if (v6)
        {
          return;
        }
      }

      goto LABEL_8;
    }
  }

  else if (!v3)
  {

    return;
  }

LABEL_8:
  v10[0] = v4;
  v10[1] = v3;

  sub_1C2E3B974(v10);
  swift_getKeyPath();
  v10[0] = v2;
  sub_1C2E71A64();

  v7 = *(v2 + 40);
  v8 = *(v2 + 32) >> 62;
  if (v8)
  {
    if (v8 != 1)
    {
      return;
    }

    v9 = v7;
    sub_1C2E3D2C8(v9);
  }

  else
  {
    v9 = v7;
    sub_1C2E3D4D8(v9);
  }
}