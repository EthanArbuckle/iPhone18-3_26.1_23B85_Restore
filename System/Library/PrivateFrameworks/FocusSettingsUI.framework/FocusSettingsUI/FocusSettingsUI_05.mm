uint64_t sub_24B94B418@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v1 = sub_24BAA922C();
  v72 = *(v1 - 8);
  v73 = v1;
  MEMORY[0x28223BE20](v1);
  v71 = &v67[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_24BAA975C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0657A0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v76 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v67[-v11];
  *v12 = sub_24BAA9D1C();
  v12[1] = v13;
  v14 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0657A8) + 44));
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3);
  v15 = sub_24BAA98BC();
  v16 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0657B0) + 36);
  *v16 = v15;
  *(v16 + 8) = xmmword_24BAB1C10;
  *(v16 + 3) = 0x4010000000000000;
  LOBYTE(v15) = sub_24BAA90AC();
  v17 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0657B8) + 36);
  *v17 = v15;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  v17[40] = 1;
  LOBYTE(v15) = sub_24BAA90CC();
  v18 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0657C0) + 36);
  *v18 = v15;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v18[40] = 1;
  v19 = sub_24BAA90DC();
  v20 = *(v8 + 44);
  v75 = v12;
  v21 = v12 + v20;
  *v21 = v19;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v91 = sub_24BAA7C2C();
  v92 = v22;
  sub_24B8F5E3C();
  v23 = sub_24BAA93CC();
  v25 = v24;
  v27 = v26;
  sub_24BAA988C();
  v28 = sub_24BAA933C();
  v30 = v29;
  v32 = v31;

  sub_24B900910(v23, v25, v27 & 1);

  sub_24BAA914C();
  v34 = v71;
  v33 = v72;
  v35 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x277CE0A10], v73);
  sub_24BAA925C();

  (*(v33 + 8))(v34, v35);
  sub_24BAA917C();

  v36 = sub_24BAA939C();
  v71 = v37;
  v72 = v36;
  v39 = v38;
  v41 = v40;
  v73 = v40;

  sub_24B900910(v28, v30, v32 & 1);

  KeyPath = swift_getKeyPath();
  v70 = KeyPath;
  v43 = v39 & 1;
  LOBYTE(v91) = v39 & 1;
  LOBYTE(v83) = 0;
  v69 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v68 = sub_24BAA90AC();
  sub_24BAA828C();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  LOBYTE(v91) = 0;
  v54 = v75;
  v53 = v76;
  sub_24B8F3208(v75, v76, &qword_27F0657A0);
  v55 = v53;
  v56 = v74;
  sub_24B8F3208(v55, v74, &qword_27F0657A0);
  v57 = (v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0657C8) + 48));
  v59 = v71;
  v58 = v72;
  *&v83 = v72;
  *(&v83 + 1) = v71;
  LOBYTE(v84) = v43;
  *(&v84 + 1) = *v79;
  DWORD1(v84) = *&v79[3];
  *(&v84 + 1) = v41;
  LOWORD(v85) = 256;
  *(&v85 + 2) = v77;
  WORD3(v85) = v78;
  *(&v85 + 1) = KeyPath;
  *&v86 = 4;
  BYTE8(v86) = 0;
  *(&v86 + 9) = *v80;
  HIDWORD(v86) = *&v80[3];
  v60 = v69;
  *&v87 = v69;
  *(&v87 + 1) = 0x3FE3333333333333;
  *&v88 = v44;
  BYTE8(v88) = 1;
  *(&v88 + 9) = *v82;
  HIDWORD(v88) = *&v82[3];
  LOBYTE(v56) = v68;
  LOBYTE(v89) = v68;
  DWORD1(v89) = *&v81[3];
  *(&v89 + 1) = *v81;
  *(&v89 + 1) = v46;
  *&v90[0] = v48;
  *(&v90[0] + 1) = v50;
  *&v90[1] = v52;
  BYTE8(v90[1]) = 0;
  v61 = v84;
  *v57 = v83;
  v57[1] = v61;
  v62 = v86;
  v57[2] = v85;
  v57[3] = v62;
  v63 = v87;
  v64 = v88;
  *(v57 + 121) = *(v90 + 9);
  v65 = v90[0];
  v57[6] = v89;
  v57[7] = v65;
  v57[4] = v63;
  v57[5] = v64;
  sub_24B8F3208(&v83, &v91, &qword_27F0657D0);
  sub_24B8F35E4(v54, &qword_27F0657A0);
  v91 = v58;
  v92 = v59;
  v93 = v43;
  *v94 = *v79;
  *&v94[3] = *&v79[3];
  v95 = v73;
  v96 = 256;
  v97 = v77;
  v98 = v78;
  v99 = v70;
  v100 = 4;
  v101 = 0;
  *&v102[3] = *&v80[3];
  *v102 = *v80;
  v103 = v60;
  v104 = 0x3FE3333333333333;
  v105 = v44;
  v106 = 1;
  *v107 = *v82;
  *&v107[3] = *&v82[3];
  v108 = v56;
  *v109 = *v81;
  *&v109[3] = *&v81[3];
  v110 = v46;
  v111 = v48;
  v112 = v50;
  v113 = v52;
  v114 = 0;
  sub_24B8F35E4(&v91, &qword_27F0657D0);
  return sub_24B8F35E4(v76, &qword_27F0657A0);
}

uint64_t sub_24B94BB94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA82DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24B94BD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065908);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = (&v52 - v6);
  v7 = sub_24BAA82DC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  v14 = sub_24BAA992C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA991C();
  (*(v15 + 104))(v17, *MEMORY[0x277CE0FE0], v14);
  v60 = sub_24BAA997C();

  (*(v15 + 8))(v17, v14);
  sub_24B94BB94(v13);
  (*(v8 + 104))(v11, *MEMORY[0x277CDF3D0], v7);
  LOBYTE(v14) = sub_24BAA82CC();
  v18 = *(v8 + 8);
  v18(v11, v7);
  v18(v13, v7);
  if (v14)
  {
    v19 = [objc_opt_self() systemBackgroundColor];
    v20 = sub_24BAA973C();
  }

  else
  {
    v20 = sub_24BAA989C();
  }

  v21 = v20;
  v55 = v20;
  KeyPath = swift_getKeyPath();
  v57 = KeyPath;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v125 = 1;
  v23 = sub_24BAA8BDC();
  v24 = v58;
  *v58 = v23;
  *(v24 + 8) = 0x4018000000000000;
  *(v24 + 16) = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065910);
  sub_24B94C5D8(v24 + *(v25 + 44));
  v59 = sub_24BAA9D1C();
  v56 = v26;
  sub_24B94CE54(MEMORY[0x277CE0EF0], &v106);
  v79 = v106;
  v80 = v107;
  v81 = v108;
  v82 = v109;
  v83[0] = v106;
  v83[1] = v107;
  v83[2] = v108;
  v84 = v109;
  sub_24B8F3208(&v79, v98, &qword_27F065918);
  sub_24B8F35E4(v83, &qword_27F065918);
  v72 = v79;
  v73 = v80;
  v74 = v81;
  v75 = v82;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v27 = sub_24BAA9D1C();
  v53 = v28;
  v54 = v27;
  sub_24B94CE54(MEMORY[0x277CE0F28], &v106);
  v85 = v106;
  v86 = v107;
  v87 = v108;
  v88 = v109;
  v89[0] = v106;
  v89[1] = v107;
  v89[2] = v108;
  v90 = v109;
  sub_24B8F3208(&v85, v98, &qword_27F065918);
  sub_24B8F35E4(v89, &qword_27F065918);
  v65 = v85;
  v66 = v86;
  v67 = v87;
  v68 = v88;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v29 = v61;
  sub_24B8F3208(v24, v61, &qword_27F065908);
  v91 = v60;
  LOWORD(v92) = 1;
  *(&v92 + 2) = v123;
  WORD3(v92) = v124;
  *(&v92 + 1) = KeyPath;
  *v93 = v21;
  *&v93[40] = v78;
  *&v93[8] = v76;
  *&v93[24] = v77;
  *(a2 + 80) = *(&v78 + 1);
  v30 = *&v93[16];
  *(a2 + 32) = *v93;
  *(a2 + 48) = v30;
  *(a2 + 64) = *&v93[32];
  v31 = v92;
  *a2 = v91;
  *(a2 + 16) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065920);
  sub_24B8F3208(v29, a2 + v32[12], &qword_27F065908);
  v33 = a2 + v32[16];
  *v33 = 0;
  *(v33 + 8) = 0;
  v34 = a2 + v32[20];
  *&v94[0] = v59;
  v35 = v56;
  *(&v94[0] + 1) = v56;
  *v95 = v75;
  v94[1] = v72;
  v94[2] = v73;
  v94[3] = v74;
  *&v95[8] = v69;
  *&v95[24] = v70;
  *&v95[40] = v71;
  v36 = v94[0];
  v37 = v72;
  v38 = v74;
  *(v34 + 32) = v73;
  *(v34 + 48) = v38;
  *v34 = v36;
  *(v34 + 16) = v37;
  v39 = *v95;
  v40 = *&v95[16];
  v41 = *&v95[32];
  *(v34 + 112) = *&v95[48];
  *(v34 + 80) = v40;
  *(v34 + 96) = v41;
  *(v34 + 64) = v39;
  v42 = a2 + v32[24];
  v43 = v53;
  v44 = v54;
  *&v96[0] = v54;
  *(&v96[0] + 1) = v53;
  *v97 = v68;
  v96[2] = v66;
  v96[3] = v67;
  v96[1] = v65;
  *&v97[24] = v63;
  *&v97[40] = v64;
  *&v97[8] = v62;
  v45 = v96[0];
  v46 = v65;
  v47 = v67;
  *(v42 + 32) = v66;
  *(v42 + 48) = v47;
  *v42 = v45;
  *(v42 + 16) = v46;
  v48 = *v97;
  v49 = *&v97[16];
  v50 = *&v97[32];
  *(v42 + 112) = *&v97[48];
  *(v42 + 80) = v49;
  *(v42 + 96) = v50;
  *(v42 + 64) = v48;
  sub_24B8F3208(&v91, &v106, &qword_27F065928);
  sub_24B8F3208(v94, &v106, &qword_27F065930);
  sub_24B8F3208(v96, &v106, &qword_27F065930);
  sub_24B8F35E4(v24, &qword_27F065908);
  v98[0] = v44;
  v98[1] = v43;
  v99 = v65;
  v100 = v66;
  v101 = v67;
  v102 = v68;
  v103 = v62;
  v104 = v63;
  v105 = v64;
  sub_24B8F35E4(v98, &qword_27F065930);
  v107 = v72;
  v108 = v73;
  v109 = v74;
  v111 = v69;
  *&v106 = v59;
  *(&v106 + 1) = v35;
  v110 = v75;
  v112 = v70;
  v113 = v71;
  sub_24B8F35E4(&v106, &qword_27F065930);
  sub_24B8F35E4(v61, &qword_27F065908);
  v114[0] = v60;
  v114[1] = 0;
  v115 = 1;
  v116 = v123;
  v117 = v124;
  v118 = v57;
  v119 = v55;
  v120 = v76;
  v121 = v77;
  v122 = v78;
  return sub_24B8F35E4(v114, &qword_27F065928);
}

uint64_t sub_24B94C5D8@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v1 = sub_24BAA82DC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v82 - v6;
  v8 = sub_24BAA869C();
  v9 = MEMORY[0x28223BE20](v8);
  v102 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v82 - v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065518);
  v13 = MEMORY[0x28223BE20](v98);
  v101 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v82 - v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065510);
  v16 = MEMORY[0x28223BE20](v97);
  v105 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v95 = &v82 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v104 = &v82 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v82 - v22;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065938);
  v24 = MEMORY[0x28223BE20](v90);
  v103 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v82 - v27;
  MEMORY[0x28223BE20](v26);
  v96 = &v82 - v29;
  v93 = v8;
  v30 = *(v8 + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_24BAA8B2C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  v89 = v31;
  v88 = v32;
  v87 = v34;
  v86 = v33 + 104;
  (v34)(v12 + v30, v31);
  __asm { FMOV            V0.2D, #2.75 }

  v92 = v12;
  v84 = _Q0;
  *v12 = _Q0;
  sub_24B94BB94(v7);
  v40 = *(v2 + 104);
  v85 = *MEMORY[0x277CDF3D0];
  v83 = v40;
  v40(v5);
  LOBYTE(v12) = sub_24BAA82CC();
  v41 = *(v2 + 8);
  v94 = v5;
  v41(v5, v1);
  v100 = v1;
  v99 = v2 + 8;
  v41(v7, v1);
  if (v12)
  {
    v42 = [objc_opt_self() systemBackgroundColor];
    v43 = sub_24BAA973C();
  }

  else
  {
    v43 = sub_24BAA989C();
  }

  v44 = v43;
  KeyPath = swift_getKeyPath();
  v46 = v91;
  sub_24B954A88(v92, v91, MEMORY[0x277CDFC08]);
  v47 = v98;
  v48 = (v46 + *(v98 + 36));
  *v48 = KeyPath;
  v48[1] = v44;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  sub_24B90294C(v46, v23, &qword_27F065518);
  v49 = v97;
  v50 = &v23[*(v97 + 36)];
  v51 = v108;
  *v50 = v107;
  *(v50 + 1) = v51;
  *(v50 + 2) = v109;
  LOBYTE(v46) = sub_24BAA910C();
  sub_24BAA828C();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_24B90294C(v23, v28, &qword_27F065510);
  v60 = &v28[*(v90 + 36)];
  *v60 = v46;
  *(v60 + 1) = v53;
  *(v60 + 2) = v55;
  *(v60 + 3) = v57;
  *(v60 + 4) = v59;
  v60[40] = 0;
  v61 = v96;
  sub_24B90294C(v28, v96, &qword_27F065938);
  v62 = v102;
  v87(&v102[*(v93 + 20)], v89, v88);
  *v62 = v84;
  sub_24B94BB94(v7);
  v63 = v94;
  v64 = v100;
  v83(v94, v85, v100);
  v65 = sub_24BAA82CC();
  v41(v63, v64);
  v41(v7, v64);
  if (v65)
  {
    v66 = [objc_opt_self() systemBackgroundColor];
    v67 = sub_24BAA973C();
  }

  else
  {
    v67 = sub_24BAA989C();
  }

  v68 = v67;
  v69 = swift_getKeyPath();
  v70 = v101;
  sub_24B954A88(v62, v101, MEMORY[0x277CDFC08]);
  v71 = (v70 + *(v47 + 36));
  *v71 = v69;
  v71[1] = v68;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v72 = v70;
  v73 = v95;
  sub_24B90294C(v72, v95, &qword_27F065518);
  v74 = (v73 + *(v49 + 36));
  v75 = v111;
  *v74 = v110;
  v74[1] = v75;
  v74[2] = v112;
  v76 = v104;
  sub_24B90294C(v73, v104, &qword_27F065510);
  v77 = v103;
  sub_24B8F3208(v61, v103, &qword_27F065938);
  v78 = v105;
  sub_24B8F3208(v76, v105, &qword_27F065510);
  v79 = v106;
  sub_24B8F3208(v77, v106, &qword_27F065938);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065940);
  sub_24B8F3208(v78, v79 + *(v80 + 48), &qword_27F065510);
  sub_24B8F35E4(v76, &qword_27F065510);
  sub_24B8F35E4(v61, &qword_27F065938);
  sub_24B8F35E4(v78, &qword_27F065510);
  return sub_24B8F35E4(v77, &qword_27F065938);
}

uint64_t sub_24B94CE54@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = a1(v5);
  v9 = sub_24BAA994C();
  v10 = sub_24BAA919C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_24BAA91FC();
  sub_24B8F35E4(v7, &qword_27F063CD8);
  sub_24BAA91EC();
  v11 = sub_24BAA921C();

  KeyPath = swift_getKeyPath();
  v13 = sub_24BAA982C();
  result = swift_getKeyPath();
  *a2 = v8;
  *(a2 + 8) = 256;
  *(a2 + 16) = v9;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v11;
  *(a2 + 40) = result;
  *(a2 + 48) = v13;
  return result;
}

uint64_t sub_24B94CFC8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24BAA9D1C();
  a1[1] = v3;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0658D0) + 44);
  *v4 = sub_24BAA8AAC();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0658D8);
  sub_24B94BD94(v1, &v4[*(v5 + 44)]);
  v6 = sub_24BAA90AC();
  sub_24BAA828C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0658E0) + 36)];
  *v15 = v6;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  v16 = sub_24BAA911C();
  sub_24BAA828C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0658E8) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v26 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0658F0) + 36));
  *v26 = v40;
  v26[1] = v41;
  v26[2] = v42;
  v27 = [objc_opt_self() systemGray5Color];
  v28 = sub_24BAA973C();
  LOBYTE(v4) = sub_24BAA90BC();
  v29 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0658F8) + 36);
  *v29 = v28;
  v29[8] = v4;
  v30 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065900) + 36);
  v31 = *(sub_24BAA869C() + 20);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_24BAA8B2C();
  (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
  __asm { FMOV            V0.2D, #13.0 }

  *v30 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8);
  *&v30[*(result + 36)] = 256;
  return result;
}

uint64_t sub_24B94D238()
{
  v0 = sub_24BAA8ABC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065788);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  *v6 = sub_24BAA8BCC();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065790);
  sub_24B94B418(&v6[*(v7 + 44)]);
  (*(v1 + 104))(v3, *MEMORY[0x277CE00F0], v0);
  sub_24B8F384C(&qword_27F065798, &qword_27F065788);
  sub_24BAA94AC();
  (*(v1 + 8))(v3, v0);
  return sub_24B8F35E4(v6, &qword_27F065788);
}

uint64_t sub_24B94D408()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_24BAAA7FC();
  sub_24BAAA07C();
  sub_24BAAA81C();
  if (v2 != 1)
  {
    MEMORY[0x24C2508C0](v1);
  }

  sub_24BAAA07C();
  return sub_24BAAA84C();
}

uint64_t sub_24B94D4B4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_24BAAA07C();
  sub_24BAAA81C();
  if (v2 != 1)
  {
    MEMORY[0x24C2508C0](v1);
  }

  return sub_24BAAA07C();
}

uint64_t sub_24B94D540()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_24BAAA7FC();
  sub_24BAAA07C();
  sub_24BAAA81C();
  if (v2 != 1)
  {
    MEMORY[0x24C2508C0](v1);
  }

  sub_24BAAA07C();
  return sub_24BAAA84C();
}

uint64_t sub_24B94D5E8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t sub_24B94D5F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v10 = sub_24BAAA78C(), v11 = 0, (v10 & 1) != 0))
  {
    if (v4 == v8 && v5 == v9)
    {
      v11 = v7;
      if (v3)
      {
        return v11 & 1;
      }

      goto LABEL_10;
    }

    v12 = sub_24BAAA78C();
    if (!(v3 & 1 | ((v12 & 1) == 0)))
    {
LABEL_10:
      v11 = (v2 == v6) & ~v7;
      return v11 & 1;
    }

    v11 = v12 & v7;
  }

  return v11 & 1;
}

uint64_t sub_24B94D6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655E0);
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x28223BE20](v3);
  v101 = v96 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655E8);
  v5 = MEMORY[0x28223BE20](v116);
  v100 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = (v96 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655F0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v114 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v119 = v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655F8);
  v13 = MEMORY[0x28223BE20](v12);
  v120 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v96 - v15;
  *v16 = sub_24BAA8BDC();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065600);
  sub_24B94F7B4(a1, sub_24B94E358);
  KeyPath = swift_getKeyPath();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065608);
  v18 = &v16[*(v97 + 36)];
  *v18 = KeyPath;
  v96[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for exceptionsPlatter(0);
  *(v18 + *(v19 + 20)) = 1;
  v20 = sub_24BAA9D1C();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065610);
  v24 = (v18 + *(v23 + 36));
  *v24 = v20;
  v24[1] = v22;
  v25 = sub_24BAA90AC();
  v26 = *(v12 + 36);
  v118 = v16;
  v27 = &v16[v26];
  *v27 = v25;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  v166 = *(a1 + 32);
  v167 = *(a1 + 48);
  v138 = *(a1 + 32);
  v139 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8);
  sub_24BAA99FC();
  if (v130 == 0xD000000000000018 && 0x800000024BAC1760 == v131)
  {

    v117 = 0;
    v110 = 0;
    v111 = 0;
    v108 = 0;
    v109 = 0;
    v106 = 0;
    v107 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v32 = sub_24BAAA78C();

    if (v32)
    {
      v117 = 0;
      v110 = 0;
      v111 = 0;
      v108 = 0;
      v109 = 0;
      v106 = 0;
      v107 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v117 = sub_24BAA8AAC();
      type metadata accessor for ActivityConfigViewModel();
      sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      v33 = sub_24BAA86FC();
      v110 = v34;
      v111 = v33;
      v109 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];

      LOBYTE(v138) = 1;
      LOBYTE(v130) = 0;
      v107 = 1;
      v108 = 0;
      v35 = sub_24BAA90AC();
      sub_24BAA828C();
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      LOBYTE(v160) = 0;
      v106 = v35;
    }
  }

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v104 = v162;
  v105 = v160;
  v102 = v165;
  v103 = v164;
  v159 = 1;
  v158 = v161;
  v157 = v163;
  v138 = v166;
  v139 = v167;
  sub_24BAA99FC();
  if (v130 == 0xD000000000000018 && 0x800000024BAC1760 == v131)
  {
  }

  else
  {
    v40 = sub_24BAAA78C();

    if ((v40 & 1) == 0)
    {
      v78 = v119;
      (*(v112 + 56))(v119, 1, 1, v113);
      goto LABEL_13;
    }
  }

  v41 = sub_24BAA8BDC();
  v42 = v99;
  *v99 = v41;
  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  sub_24B94F7B4(a1, sub_24B94EE40);
  v43 = swift_getKeyPath();
  v44 = (v42 + *(v97 + 36));
  *v44 = v43;
  swift_storeEnumTagMultiPayload();
  *(v44 + *(v19 + 20)) = 1;
  v45 = sub_24BAA9D1C();
  v46 = (v44 + *(v23 + 36));
  *v46 = v45;
  v46[1] = v47;
  v48 = sub_24BAA90AC();
  v49 = v42 + *(v12 + 36);
  *v49 = v48;
  *(v49 + 8) = 0u;
  *(v49 + 24) = 0u;
  *(v49 + 40) = 1;
  v50 = swift_allocObject();
  v51 = *(a1 + 48);
  *(v50 + 48) = *(a1 + 32);
  *(v50 + 64) = v51;
  *(v50 + 80) = *(a1 + 64);
  *(v50 + 96) = *(a1 + 80);
  v52 = *(a1 + 16);
  *(v50 + 16) = *a1;
  *(v50 + 32) = v52;
  v53 = (v42 + *(v116 + 36));
  *v53 = sub_24B952864;
  v53[1] = v50;
  v53[2] = 0;
  v53[3] = 0;
  sub_24B9516C8(a1, &v138);
  v116 = sub_24BAA8AAC();
  type metadata accessor for ActivityConfigViewModel();
  sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v54 = sub_24BAA86FC();
  v56 = v55;
  v98 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];

  v129 = 1;
  v127 = 0;
  v57 = sub_24BAA90AC();
  sub_24BAA828C();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v121 = 0;
  v66 = sub_24BAA90DC();
  v124 = 1;
  v67 = v100;
  sub_24B8F3208(v42, v100, &qword_27F0655E8);
  v68 = v101;
  sub_24B8F3208(v67, v101, &qword_27F0655E8);
  v69 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065628) + 48));
  v130 = v116;
  v131 = 0;
  LOBYTE(v132) = 1;
  *(&v132 + 1) = *v128;
  DWORD1(v132) = *&v128[3];
  *(&v132 + 1) = v54;
  *&v133 = v56;
  v70 = v98;
  *(&v133 + 1) = v98;
  *&v134 = 0;
  BYTE8(v134) = 0;
  *(&v134 + 9) = *v123;
  HIDWORD(v134) = *&v123[3];
  LOBYTE(v135) = v57;
  *(&v135 + 1) = *v122;
  DWORD1(v135) = *&v122[3];
  *(&v135 + 1) = v59;
  *&v136[0] = v61;
  *(&v136[0] + 1) = v63;
  *&v136[1] = v65;
  BYTE8(v136[1]) = 0;
  *(&v136[1] + 9) = *v126;
  HIDWORD(v136[1]) = *&v126[3];
  LOBYTE(v137[0]) = v66;
  *(v137 + 1) = *v125;
  DWORD1(v137[0]) = *&v125[3];
  *(&v137[1] + 8) = 0u;
  *(v137 + 8) = 0u;
  BYTE8(v137[2]) = 1;
  v71 = v132;
  *v69 = v116;
  v69[1] = v71;
  v72 = v133;
  v73 = v134;
  v74 = v136[0];
  v69[4] = v135;
  v69[5] = v74;
  v69[2] = v72;
  v69[3] = v73;
  v75 = v136[1];
  v76 = v137[0];
  v77 = v137[1];
  *(v69 + 137) = *(&v137[1] + 9);
  v69[7] = v76;
  v69[8] = v77;
  v69[6] = v75;
  sub_24B8F3208(&v130, &v138, &qword_27F065630);
  sub_24B8F35E4(v42, &qword_27F0655E8);
  v138 = v116;
  LOBYTE(v139) = 1;
  *(&v139 + 1) = *v128;
  HIDWORD(v139) = *&v128[3];
  v140 = v54;
  v141 = v56;
  v142 = v70;
  v143 = 0;
  LOBYTE(v144) = 0;
  *(&v144 + 1) = *v123;
  HIDWORD(v144) = *&v123[3];
  LOBYTE(v145) = v57;
  HIDWORD(v145) = *&v122[3];
  *(&v145 + 1) = *v122;
  v146 = v59;
  v147 = v61;
  v148 = v63;
  v149 = v65;
  v150 = 0;
  *v151 = *v126;
  *&v151[3] = *&v126[3];
  v152 = v66;
  *v153 = *v125;
  *&v153[3] = *&v125[3];
  v154 = 0u;
  v155 = 0u;
  v156 = 1;
  sub_24B8F35E4(&v138, &qword_27F065630);
  sub_24B8F35E4(v67, &qword_27F0655E8);
  v78 = v119;
  sub_24B90294C(v68, v119, &qword_27F0655E0);
  (*(v112 + 56))(v78, 0, 1, v113);
LABEL_13:
  v79 = v120;
  sub_24B8F3208(v118, v120, &qword_27F0655F8);
  LODWORD(v112) = v159;
  LODWORD(v113) = v158;
  LODWORD(v116) = v157;
  v80 = v114;
  sub_24B8F3208(v78, v114, &qword_27F0655F0);
  v81 = v115;
  sub_24B8F3208(v79, v115, &qword_27F0655F8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065618);
  v83 = (v81 + v82[16]);
  v130 = v117;
  v131 = 0;
  v84 = v107;
  v85 = v108;
  v87 = v110;
  v86 = v111;
  *&v132 = v107;
  *(&v132 + 1) = v111;
  v88 = v109;
  *&v133 = v110;
  *(&v133 + 1) = v109;
  *&v134 = 0;
  *(&v134 + 1) = v108;
  v89 = v106;
  *&v135 = v106;
  *(&v135 + 1) = v28;
  *&v136[0] = v29;
  *(&v136[0] + 1) = v30;
  *&v136[1] = v31;
  BYTE8(v136[1]) = 0;
  v90 = v132;
  *v83 = v117;
  v83[1] = v90;
  v91 = v134;
  v83[2] = v133;
  v83[3] = v91;
  v92 = v136[0];
  v83[4] = v135;
  v83[5] = v92;
  *(v83 + 89) = *(v136 + 9);
  v93 = v81 + v82[20];
  *v93 = 0;
  *(v93 + 8) = v112;
  *(v93 + 16) = v105;
  *(v93 + 24) = v113;
  *(v93 + 32) = v104;
  *(v93 + 40) = v116;
  v94 = v102;
  *(v93 + 48) = v103;
  *(v93 + 56) = v94;
  sub_24B8F3208(v80, v81 + v82[24], &qword_27F0655F0);
  sub_24B8F3208(&v130, &v138, &qword_27F065620);
  sub_24B8F35E4(v119, &qword_27F0655F0);
  sub_24B8F35E4(v118, &qword_27F0655F8);
  sub_24B8F35E4(v80, &qword_27F0655F0);
  v138 = v117;
  v139 = v84;
  v140 = v86;
  v141 = v87;
  v142 = v88;
  v143 = 0;
  v144 = v85;
  v145 = v89;
  v146 = v28;
  v147 = v29;
  v148 = v30;
  v149 = v31;
  v150 = 0;
  sub_24B8F35E4(&v138, &qword_27F065620);
  return sub_24B8F35E4(v120, &qword_27F0655F8);
}

char *sub_24B94E358()
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v0 = sub_24BAA7C2C();
  v2 = v1;
  v3 = sub_24B99A860(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_24B99A860((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[64 * v5];
  *(v6 + 4) = v0;
  *(v6 + 5) = v2;
  *(v6 + 6) = 0xD00000000000001BLL;
  *(v6 + 7) = 0x800000024BAC1780;
  *(v6 + 8) = 1;
  v6[72] = 0;
  strcpy(v6 + 80, "group_everyone");
  v6[95] = -18;
  v7 = sub_24BAA7C2C();
  v10 = *(v3 + 2);
  v9 = *(v3 + 3);
  if (v10 >= v9 >> 1)
  {
    v29 = v7;
    v30 = v8;
    v31 = sub_24B99A860((v9 > 1), v10 + 1, 1, v3);
    v8 = v30;
    v3 = v31;
    v7 = v29;
  }

  *(v3 + 2) = v10 + 1;
  v11 = &v3[64 * v10];
  *(v11 + 4) = v7;
  *(v11 + 5) = v8;
  *(v11 + 6) = 0xD000000000000013;
  *(v11 + 7) = 0x800000024BAC17C0;
  *(v11 + 8) = 2;
  v11[72] = 0;
  *(v11 + 19) = *&v44[3];
  *(v11 + 73) = *v44;
  strcpy(v11 + 80, "group_no_one");
  v11[93] = 0;
  *(v11 + 47) = -5120;
  v12 = sub_24BAA7C2C();
  v15 = *(v3 + 2);
  v14 = *(v3 + 3);
  if (v15 >= v14 >> 1)
  {
    v32 = v12;
    v33 = v13;
    v34 = sub_24B99A860((v14 > 1), v15 + 1, 1, v3);
    v13 = v33;
    v3 = v34;
    v12 = v32;
  }

  *(v3 + 2) = v15 + 1;
  v16 = &v3[64 * v15];
  *(v16 + 4) = v12;
  *(v16 + 5) = v13;
  *(v16 + 6) = 0x6C69662E72617473;
  *(v16 + 7) = 0xE90000000000006CLL;
  *(v16 + 8) = 3;
  v16[72] = 0;
  *(v16 + 19) = *&v43[3];
  *(v16 + 73) = *v43;
  *(v16 + 10) = 0x61665F70756F7267;
  *(v16 + 11) = 0xEF73657469726F76;
  v17 = sub_24BAA7C2C();
  v20 = *(v3 + 2);
  v19 = *(v3 + 3);
  if (v20 >= v19 >> 1)
  {
    v35 = v17;
    v36 = v18;
    v37 = sub_24B99A860((v19 > 1), v20 + 1, 1, v3);
    v18 = v36;
    v3 = v37;
    v17 = v35;
  }

  *(v3 + 2) = v20 + 1;
  v21 = &v3[64 * v20];
  *(v21 + 4) = v17;
  *(v21 + 5) = v18;
  *(v21 + 6) = 0xD000000000000015;
  *(v21 + 7) = 0x800000024BAC17E0;
  *(v21 + 8) = 4;
  v21[72] = 0;
  *(v21 + 19) = *&v42[3];
  *(v21 + 73) = *v42;
  strcpy(v21 + 80, "group_contacts");
  v21[95] = -18;
  v22 = *(sub_24B94EE40() + 16);

  if (v22)
  {
    v23 = sub_24BAA7C2C();
    v26 = *(v3 + 2);
    v25 = *(v3 + 3);
    if (v26 >= v25 >> 1)
    {
      v38 = v23;
      v39 = v24;
      v40 = sub_24B99A860((v25 > 1), v26 + 1, 1, v3);
      v24 = v39;
      v3 = v40;
      v23 = v38;
    }

    *(v3 + 2) = v26 + 1;
    v27 = &v3[64 * v26];
    *(v27 + 4) = v23;
    *(v27 + 5) = v24;
    *(v27 + 6) = 0x322E6E6F73726570;
    *(v27 + 7) = 0xEF656C637269632ELL;
    *(v27 + 8) = 5;
    v27[72] = 0;
    *(v27 + 19) = *&v41[3];
    *(v27 + 73) = *v41;
    *(v27 + 10) = 0xD000000000000018;
    *(v27 + 11) = 0x800000024BAC1760;
  }

  return v3;
}

uint64_t sub_24B94E88C(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v3 = *(a2 + 56);
  v67 = *(a1 + 2);
  v68 = a1[6];
  v63 = *(a1 + 2);
  *&v64 = a1[6];
  *&v51 = v4;
  *(&v51 + 1) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8);
  sub_24BAA9A0C();
  v5 = sub_24B94E358();
  v6 = *(v5 + 2);
  if (!v6)
  {

    v7 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v29 = 0;
    v28 = 0;
    v30 = 0;
    goto LABEL_26;
  }

  v47 = 0;
  v43 = a1;
  v44 = v5;
  v7 = 0;
  v48 = 0uLL;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v49 = v6 - 1;
  for (i = 32; ; i += 64)
  {
    v14 = *&v5[i];
    v15 = *&v5[i + 16];
    v16 = *&v5[i + 48];
    v65 = *&v5[i + 32];
    v66 = v16;
    v63 = v14;
    v64 = v15;
    v17 = v16;
    v61 = v67;
    v62 = v68;
    sub_24B952A50(&v63, &v51);
    sub_24BAA99FC();
    if (v17 == v51)
    {

LABEL_6:
      v19 = v63;
      v20 = v12;
      v12 = *(&v64 + 1);
      v21 = v64;
      v22 = v11;
      v23 = v65;
      v24 = v7;
      v7 = BYTE8(v65);
      v25 = v8;
      v8 = *(&v65 + 9) | ((*(&v65 + 13) | (HIBYTE(v65) << 16)) << 32);
      v26 = v9;
      v27 = v10;
      v10 = *(&v66 + 1);
      v9 = v66;
      v51 = v48;
      v52 = v22;
      v53 = v20;
      v54 = v47;
      v55 = v24;
      v56 = v25;
      v58 = BYTE6(v25);
      v57 = WORD2(v25);
      v59 = v26;
      v60 = v27;
      sub_24B8F35E4(&v51, &qword_27F0656C8);
      v48 = v19;
      v47 = v23;
      v11 = v21;
      goto LABEL_8;
    }

    v18 = sub_24BAAA78C();

    if (v18)
    {
      goto LABEL_6;
    }

    sub_24B952E3C(&v63);
LABEL_8:
    v5 = v44;
    if (!v49)
    {
      break;
    }

    --v49;
  }

  v28 = *(&v48 + 1);
  v29 = v47;
  if (!*(&v48 + 1))
  {
    v30 = v48;
    goto LABEL_26;
  }

  v30 = v48;
  if (v7)
  {
    goto LABEL_26;
  }

  v50 = v12;
  if (v47 != 5)
  {
    v45 = v11;
    v63 = v67;
    *&v64 = v68;
    sub_24BAA99FC();
    v37 = *(&v51 + 1);
    v46 = v51;
    v38 = *v43;
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    if (v38)
    {

      sub_24BAA814C();
      sub_24BAA816C();

      sub_24B984444();
      v29 = v47;
      sub_24B8DA728(v47, v46, v37);

      v28 = *(&v48 + 1);
      v12 = v50;
      v11 = v45;
      goto LABEL_26;
    }

    sub_24BAA86DC();
    __break(1u);
    goto LABEL_28;
  }

  v63 = *(v43 + 7);
  *&v64 = v43[9];
  sub_24BAA99FC();
  v32 = *(&v51 + 1);
  v31 = v51;

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v34 = v7;
    v63 = *(v43 + 7);
    *&v64 = v43[9];
    sub_24BAA99FC();
    v35 = *(&v51 + 1);
    v36 = v51;
  }

  else
  {
    v34 = v7;
    v39 = sub_24B94EE40();
    if (*(v39 + 16))
    {
      v40 = *(v39 + 48);
      v63 = *(v39 + 32);
      v64 = v40;
      v41 = *(v39 + 80);
      v65 = *(v39 + 64);
      v66 = v41;
      sub_24B952A50(&v63, &v51);

      v35 = *(&v66 + 1);
      v36 = v66;

      sub_24B952E3C(&v63);
    }

    else
    {

      v36 = 0;
      v35 = 0;
    }
  }

  if (!*v43)
  {
LABEL_28:
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8DA728(5, v36, v35);

  v7 = v34;
  v28 = *(&v48 + 1);
  v30 = v48;
  v12 = v50;
  v29 = 5;
LABEL_26:
  *&v63 = v30;
  *(&v63 + 1) = v28;
  *&v64 = v11;
  *(&v64 + 1) = v12;
  *&v65 = v29;
  BYTE8(v65) = v7;
  *(&v65 + 9) = v8;
  HIBYTE(v65) = BYTE6(v8);
  *(&v65 + 13) = WORD2(v8);
  *&v66 = v9;
  *(&v66 + 1) = v10;
  return sub_24B8F35E4(&v63, &qword_27F0656C8);
}

uint64_t sub_24B94EE40()
{
  v0 = sub_24B950F3C();
  v1 = v0;
  if (!(v0 >> 62))
  {
    result = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  result = sub_24BAAA52C();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  v19 = result - 1;
  if (result >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    v18 = v1 & 0xC000000000000001;
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = MEMORY[0x24C2506E0](v3, v1); ; i = *(v1 + 8 * v3 + 32))
    {
      v6 = i;
      v7 = [i name];
      v8 = sub_24BAAA01C();
      v10 = v9;

      v11 = [v6 identifier];
      v12 = sub_24BAAA01C();
      v14 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24B99A860(0, *(v4 + 2) + 1, 1, v4);
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = sub_24B99A860((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      v17 = &v4[64 * v16];
      *(v17 + 4) = v8;
      *(v17 + 5) = v10;
      strcpy(v17 + 48, "person.2.fill");
      *(v17 + 31) = -4864;
      *(v17 + 8) = 5;
      v17[72] = 0;
      *(v17 + 19) = *&v20[3];
      *(v17 + 73) = *v20;
      *(v17 + 10) = v12;
      *(v17 + 11) = v14;
      if (v19 == v3)
      {
        break;
      }

      ++v3;
      if (v18)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B94F04C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0656B8);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v59 - v6;

  v70 = sub_24BAA994C();
  sub_24BAA9D1C();
  sub_24BAA86BC();
  sub_24BAA916C();
  sub_24BAA91EC();
  v69 = sub_24BAA921C();

  KeyPath = swift_getKeyPath();
  v96 = *(a2 + 32);
  v97 = *(a2 + 48);
  *v88 = *(a2 + 32);
  v88[2] = *(a2 + 48);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8);
  sub_24BAA99FC();
  v7 = a1[6];
  v8 = a1[7];
  *&v61 = v8;
  *(&v61 + 1) = v7;
  if (v78 == __PAIR128__(v8, v7))
  {

    v9 = sub_24BAA974C();
  }

  else
  {
    v10 = sub_24BAAA78C();

    if (v10)
    {
      v9 = sub_24BAA974C();
    }

    else
    {
      v9 = sub_24BAA989C();
    }
  }

  v71 = v9;
  v67 = swift_getKeyPath();
  v11 = a1[1];
  v88[0] = *a1;
  v88[1] = v11;
  sub_24B8F5E3C();

  v12 = sub_24BAA93CC();
  v14 = v13;
  v16 = v15;
  sub_24BAA988C();
  v17 = sub_24BAA933C();
  v19 = v18;
  v21 = v20;

  sub_24B900910(v12, v14, v16 & 1);

  *v88 = v96;
  v88[2] = v97;
  sub_24BAA99FC();
  v22 = *(&v61 + 1);
  v23 = v61;
  if (__PAIR128__(v78, *(&v78 + 1)) == v61)
  {

LABEL_9:
    sub_24BAA916C();
    sub_24BAA917C();

    goto LABEL_11;
  }

  v24 = sub_24BAAA78C();

  if (v24)
  {
    goto LABEL_9;
  }

  sub_24BAA916C();
LABEL_11:
  v25 = sub_24BAA939C();
  v63 = v26;
  v64 = v25;
  v28 = v27;
  v65 = v29;

  sub_24B900910(v17, v19, v21 & 1);

  v62 = swift_getKeyPath();
  *v88 = v96;
  v88[2] = v97;
  sub_24BAA99FC();
  if (v78 == __PAIR128__(v23, v22))
  {
  }

  else
  {
    v30 = sub_24BAAA78C();

    if ((v30 & 1) == 0)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v66 = 0;
      v43 = 0;
      goto LABEL_16;
    }
  }

  sub_24BAA994C();
  v31 = *MEMORY[0x277CE1020];
  v32 = sub_24BAA995C();
  v33 = *(v32 - 8);
  v34 = v59;
  (*(v33 + 104))(v59, v31, v32);
  (*(v33 + 56))(v34, 0, 1, v32);
  v35 = sub_24BAA993C();

  sub_24B8F35E4(v34, &qword_27F0656B8);
  sub_24BAA916C();
  v36 = sub_24BAA917C();

  v37 = swift_getKeyPath();
  LOBYTE(v34) = v28;
  v38 = sub_24BAA974C();
  v39 = swift_getKeyPath();
  v40 = v35;

  v41 = v37;

  v42 = v36;

  v66 = v39;

  v43 = v38;
  v28 = v34;

LABEL_16:
  *&v75[0] = v70;
  *(&v75[3] + 8) = v92;
  *(&v75[4] + 8) = v93;
  *(&v75[5] + 8) = v94;
  *(&v75[6] + 8) = v95;
  *(v75 + 8) = v89;
  *(&v75[1] + 8) = v90;
  *(&v75[2] + 8) = v91;
  *(&v75[7] + 1) = KeyPath;
  *&v76 = v69;
  *(&v76 + 1) = v67;
  v84 = v75[6];
  v85 = v75[7];
  v80 = v75[2];
  v81 = v75[3];
  v82 = v75[4];
  v83 = v75[5];
  v78 = v75[0];
  v79 = v75[1];
  v77 = v71;
  v87 = v71;
  v86 = v76;
  v74 = v28 & 1;
  DWORD2(v61) = v28 & 1;
  v73 = 1;
  v72 = 1;
  sub_24B8F3208(v75, v88, &qword_27F0656C0);
  v45 = v63;
  v44 = v64;
  sub_24B8F319C(v64, v63, v28 & 1);
  v46 = v65;

  v47 = v62;

  v48 = v66;
  sub_24B952BE4(v40);
  sub_24B952C54(v40);
  v49 = v74;
  v50 = v73;
  v51 = v72;
  v52 = v85;
  v53 = v60;
  *(v60 + 96) = v84;
  *(v53 + 112) = v52;
  *(v53 + 128) = v86;
  v54 = v87;
  v55 = v81;
  *(v53 + 32) = v80;
  *(v53 + 48) = v55;
  v56 = v83;
  *(v53 + 64) = v82;
  *(v53 + 80) = v56;
  v57 = v79;
  *v53 = v78;
  *(v53 + 16) = v57;
  *(v53 + 144) = v54;
  *(v53 + 152) = v44;
  *(v53 + 160) = v45;
  *(v53 + 168) = v49;
  *(v53 + 176) = v46;
  *(v53 + 184) = v47;
  *(v53 + 192) = 0;
  *(v53 + 200) = v50;
  *(v53 + 208) = 0;
  *(v53 + 216) = v51;
  *(v53 + 224) = v40;
  *(v53 + 232) = v41;
  *(v53 + 240) = v42;
  *(v53 + 248) = v48;
  *(v53 + 256) = v43;
  sub_24B952C54(v40);
  sub_24B900910(v44, v45, SBYTE8(v61));

  *&v88[7] = v92;
  *&v88[9] = v93;
  *&v88[11] = v94;
  *&v88[13] = v95;
  *&v88[1] = v89;
  *&v88[3] = v90;
  *&v88[5] = v91;
  v88[0] = v70;
  v88[15] = KeyPath;
  v88[16] = v69;
  v88[17] = v67;
  v88[18] = v71;
  return sub_24B8F35E4(v88, &qword_27F0656C0);
}

uint64_t sub_24B94F7B4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + (v5 << 6);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
  }

  else
  {

    v8 = 0;
    v7 = 0;
  }

  v16 = (a2)(v9);
  swift_getKeyPath();
  v10 = swift_allocObject();
  v11 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a1 + 64);
  v12 = *(a1 + 80);
  v13 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v13;
  *(v10 + 96) = v12;
  *(v10 + 104) = v8;
  *(v10 + 112) = v7;
  sub_24B9516C8(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065648);
  sub_24B8F384C(&qword_27F065650, &qword_27F065640);
  sub_24B9529BC();
  sub_24B8F384C(&qword_27F065660, &qword_27F065648);
  return sub_24BAA9BFC();
}

uint64_t sub_24B94F998@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v42[2] = a6;
  v42[1] = a5;
  v43 = a4;
  v47 = a7;
  v10 = sub_24BAA9BDC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42[0] = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065668);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v42 - v17;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065670);
  v44 = *(v45 - 8);
  v19 = MEMORY[0x28223BE20](v45);
  v46 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v42 - v21;
  v23 = a1[1];
  v51[0] = *a1;
  v51[1] = v23;
  v24 = a1[3];
  v51[2] = a1[2];
  v52 = v24;
  v25 = swift_allocObject();
  v26 = *(a2 + 48);
  *(v25 + 48) = *(a2 + 32);
  *(v25 + 64) = v26;
  *(v25 + 80) = *(a2 + 64);
  v27 = *(a2 + 16);
  *(v25 + 16) = *a2;
  *(v25 + 32) = v27;
  v28 = a1[2];
  *(v25 + 152) = a1[3];
  *(v25 + 136) = v28;
  v29 = *a1;
  *(v25 + 120) = a1[1];
  *(v25 + 96) = *(a2 + 80);
  *(v25 + 104) = v29;
  v48 = v51;
  v49 = a2;
  sub_24B9516C8(a2, v50);
  sub_24B952A50(v51, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065678);
  sub_24B952A88();
  v30 = v22;
  sub_24BAA9A5C();
  if (v43 && (v52 == __PAIR128__(v43, a3) || (sub_24BAAA78C() & 1) != 0))
  {
    v31 = 1;
  }

  else
  {
    v32 = v42[0];
    sub_24BAA9BCC();
    (*(v11 + 32))(v18, v32, v10);
    v31 = 0;
  }

  (*(v11 + 56))(v18, v31, 1, v10);
  v33 = v44;
  v34 = *(v44 + 16);
  v35 = v46;
  v36 = v45;
  v34(v46, v30, v45);
  sub_24B8F3208(v18, v16, &qword_27F065668);
  v37 = v16;
  v38 = v47;
  v34(v47, v35, v36);
  v39 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0656A8) + 48)];
  sub_24B8F3208(v37, v39, &qword_27F065668);
  sub_24B8F35E4(v18, &qword_27F065668);
  v40 = *(v33 + 8);
  v40(v30, v36);
  sub_24B8F35E4(v37, &qword_27F065668);
  return (v40)(v35, v36);
}

uint64_t sub_24B94FE0C(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8);
  sub_24BAA9A0C();
  v6 = *(a2 + 48);
  v7 = *(a2 + 56);

  sub_24BAA9A0C();
  sub_24BAA99FC();
  v4 = *a1;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  if (v4)
  {

    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    sub_24B8DA728(5, v6, v7);
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

double sub_24B94FFAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24BAA8AAC();
  v21 = 1;
  a3(__src, a1, a2);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v23, __src, sizeof(v23));
  sub_24B8F3208(__dst, &v18, &qword_27F0656B0);
  sub_24B8F35E4(v23, &qword_27F0656B0);
  memcpy(&v20[7], __dst, 0x108uLL);
  LOBYTE(a1) = v21;
  LOBYTE(a3) = sub_24BAA90AC();
  LOBYTE(__src[0]) = 1;
  LOBYTE(a2) = sub_24BAA911C();
  sub_24BAA828C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = a1;
  memcpy((a4 + 17), v20, 0x10FuLL);
  *(a4 + 288) = a3;
  result = 0.0;
  *(a4 + 296) = 0u;
  *(a4 + 312) = 0u;
  *(a4 + 328) = 1;
  *(a4 + 336) = a2;
  *(a4 + 344) = v10;
  *(a4 + 352) = v12;
  *(a4 + 360) = v14;
  *(a4 + 368) = v16;
  *(a4 + 376) = 0;
  return result;
}

uint64_t sub_24B950100@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0656B8);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v59 - v6;

  v70 = sub_24BAA994C();
  sub_24BAA9D1C();
  sub_24BAA86BC();
  sub_24BAA916C();
  sub_24BAA91EC();
  v69 = sub_24BAA921C();

  KeyPath = swift_getKeyPath();
  v96 = *(a2 + 56);
  v97 = *(a2 + 72);
  *v88 = *(a2 + 56);
  v88[2] = *(a2 + 72);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8);
  sub_24BAA99FC();
  v7 = a1[6];
  v8 = a1[7];
  *&v61 = v8;
  *(&v61 + 1) = v7;
  if (v78 == __PAIR128__(v8, v7))
  {

    v9 = sub_24BAA974C();
  }

  else
  {
    v10 = sub_24BAAA78C();

    if (v10)
    {
      v9 = sub_24BAA974C();
    }

    else
    {
      v9 = sub_24BAA989C();
    }
  }

  v71 = v9;
  v67 = swift_getKeyPath();
  v11 = a1[1];
  v88[0] = *a1;
  v88[1] = v11;
  sub_24B8F5E3C();

  v12 = sub_24BAA93CC();
  v14 = v13;
  v16 = v15;
  sub_24BAA988C();
  v17 = sub_24BAA933C();
  v19 = v18;
  v21 = v20;

  sub_24B900910(v12, v14, v16 & 1);

  *v88 = v96;
  v88[2] = v97;
  sub_24BAA99FC();
  v22 = *(&v61 + 1);
  v23 = v61;
  if (__PAIR128__(v78, *(&v78 + 1)) == v61)
  {

LABEL_9:
    sub_24BAA916C();
    sub_24BAA917C();

    goto LABEL_11;
  }

  v24 = sub_24BAAA78C();

  if (v24)
  {
    goto LABEL_9;
  }

  sub_24BAA916C();
LABEL_11:
  v25 = sub_24BAA939C();
  v63 = v26;
  v64 = v25;
  v28 = v27;
  v65 = v29;

  sub_24B900910(v17, v19, v21 & 1);

  v62 = swift_getKeyPath();
  *v88 = v96;
  v88[2] = v97;
  sub_24BAA99FC();
  if (v78 == __PAIR128__(v23, v22))
  {
  }

  else
  {
    v30 = sub_24BAAA78C();

    if ((v30 & 1) == 0)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v66 = 0;
      v43 = 0;
      goto LABEL_16;
    }
  }

  sub_24BAA994C();
  v31 = *MEMORY[0x277CE1020];
  v32 = sub_24BAA995C();
  v33 = *(v32 - 8);
  v34 = v59;
  (*(v33 + 104))(v59, v31, v32);
  (*(v33 + 56))(v34, 0, 1, v32);
  v35 = sub_24BAA993C();

  sub_24B8F35E4(v34, &qword_27F0656B8);
  sub_24BAA916C();
  v36 = sub_24BAA917C();

  v37 = swift_getKeyPath();
  LOBYTE(v34) = v28;
  v38 = sub_24BAA974C();
  v39 = swift_getKeyPath();
  v40 = v35;

  v41 = v37;

  v42 = v36;

  v66 = v39;

  v43 = v38;
  v28 = v34;

LABEL_16:
  *&v75[0] = v70;
  *(&v75[3] + 8) = v92;
  *(&v75[4] + 8) = v93;
  *(&v75[5] + 8) = v94;
  *(&v75[6] + 8) = v95;
  *(v75 + 8) = v89;
  *(&v75[1] + 8) = v90;
  *(&v75[2] + 8) = v91;
  *(&v75[7] + 1) = KeyPath;
  *&v76 = v69;
  *(&v76 + 1) = v67;
  v84 = v75[6];
  v85 = v75[7];
  v80 = v75[2];
  v81 = v75[3];
  v82 = v75[4];
  v83 = v75[5];
  v78 = v75[0];
  v79 = v75[1];
  v77 = v71;
  v87 = v71;
  v86 = v76;
  v74 = v28 & 1;
  DWORD2(v61) = v28 & 1;
  v73 = 1;
  v72 = 1;
  sub_24B8F3208(v75, v88, &qword_27F0656C0);
  v45 = v63;
  v44 = v64;
  sub_24B8F319C(v64, v63, v28 & 1);
  v46 = v65;

  v47 = v62;

  v48 = v66;
  sub_24B952BE4(v40);
  sub_24B952C54(v40);
  v49 = v74;
  v50 = v73;
  v51 = v72;
  v52 = v85;
  v53 = v60;
  *(v60 + 96) = v84;
  *(v53 + 112) = v52;
  *(v53 + 128) = v86;
  v54 = v87;
  v55 = v81;
  *(v53 + 32) = v80;
  *(v53 + 48) = v55;
  v56 = v83;
  *(v53 + 64) = v82;
  *(v53 + 80) = v56;
  v57 = v79;
  *v53 = v78;
  *(v53 + 16) = v57;
  *(v53 + 144) = v54;
  *(v53 + 152) = v44;
  *(v53 + 160) = v45;
  *(v53 + 168) = v49;
  *(v53 + 176) = v46;
  *(v53 + 184) = v47;
  *(v53 + 192) = 0;
  *(v53 + 200) = v50;
  *(v53 + 208) = 0;
  *(v53 + 216) = v51;
  *(v53 + 224) = v40;
  *(v53 + 232) = v41;
  *(v53 + 240) = v42;
  *(v53 + 248) = v48;
  *(v53 + 256) = v43;
  sub_24B952C54(v40);
  sub_24B900910(v44, v45, SBYTE8(v61));

  *&v88[7] = v92;
  *&v88[9] = v93;
  *&v88[11] = v94;
  *&v88[13] = v95;
  *&v88[1] = v89;
  *&v88[3] = v90;
  *&v88[5] = v91;
  v88[0] = v70;
  v88[15] = KeyPath;
  v88[16] = v69;
  v88[17] = v67;
  v88[18] = v71;
  return sub_24B8F35E4(v88, &qword_27F0656C0);
}

uint64_t sub_24B950868(uint64_t *a1)
{
  v17 = *(a1 + 7);
  v2 = a1[9];
  v19 = v17;
  v18 = v2;
  v15 = *(a1 + 7);
  v16 = v2;
  sub_24B95286C(&v19, &v13);
  sub_24B8F3208(&v18, &v13, &qword_27F065638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8);
  sub_24BAA99FC();
  v4 = v13;
  v3 = v14;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_24B9528C8(&v19);
    return sub_24B8F35E4(&v18, &qword_27F065638);
  }

  else
  {
    v7 = sub_24B94EE40();
    if (v7[2])
    {
      v9 = v7[10];
      v8 = v7[11];
    }

    else
    {

      v9 = 0;
      v8 = 0xE000000000000000;
    }

    v15 = v17;
    v16 = v2;
    v13 = v9;
    v14 = v8;
    sub_24BAA9A0C();
    sub_24B9528C8(&v19);
    sub_24B8F35E4(&v18, &qword_27F065638);
    v15 = v17;
    v16 = v2;
    sub_24BAA99FC();
    v11 = v13;
    v10 = v14;
    v12 = *a1;
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    if (v12)
    {

      sub_24BAA814C();
      sub_24BAA816C();

      sub_24B984444();
      sub_24B8DA728(5, v11, v10);
    }

    else
    {
      result = sub_24BAA86DC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_24B950AD8(void *a1)
{
  if (*a1)
  {

    sub_24B984444();
    v1 = sub_24B8D7188();

    if (v1)
    {
      v2 = [v1 configuration];

      v1 = [v2 phoneCallBypassSettings];
    }

    sub_24B95269C(v1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8);
    return sub_24BAA9A0C();
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B950C3C(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DBC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24B950E28(uint64_t a1)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v8 = sub_24BAA7C2C();
  v9 = v2;
  v3 = swift_allocObject();
  v4 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = *(a1 + 80);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  sub_24B9516C8(a1, v7);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

id sub_24B950F3C()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 80);
  v10[0] = 0;
  v2 = [v1 groupsMatchingPredicate:0 error:v10];
  v3 = v10[0];
  if (v2)
  {
    v4 = v2;
    sub_24B95291C();
    sub_24BAAA12C();
    v5 = v3;

    v10[0] = sub_24B8F04F8(v6);
    sub_24B9517EC(v10);

    return v10[0];
  }

  else
  {
    v8 = v10[0];
    v9 = sub_24BAA7CCC();

    swift_willThrow();
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_24B951058()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655A8);
  MEMORY[0x28223BE20](v1);
  v3 = &v13[-v2];
  v4 = v0[3];
  v19 = v0[2];
  v20 = v4;
  v21 = v0[4];
  v22 = *(v0 + 10);
  v5 = v0[1];
  v17 = *v0;
  v18 = v5;
  v15 = &v17;
  sub_24BAA909C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655B0);
  sub_24B8F384C(&qword_27F0655B8, &qword_27F0655B0);
  sub_24BAA829C();
  v6 = swift_allocObject();
  v7 = v20;
  *(v6 + 48) = v19;
  *(v6 + 64) = v7;
  *(v6 + 80) = v21;
  *(v6 + 96) = v22;
  v8 = v18;
  *(v6 + 16) = v17;
  *(v6 + 32) = v8;
  v9 = &v3[*(v1 + 36)];
  *v9 = sub_24B9516B8;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = 0;
  v14 = &v17;
  sub_24B9516C8(&v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FA0);
  sub_24B951700();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  v11 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  v16[0] = v10;
  v16[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_24BAA96CC();
  return sub_24B8F35E4(v3, &qword_27F0655A8);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24B951340(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B951388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B951400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
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

uint64_t sub_24B9514E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_24B9515CC()
{
  sub_24B936680(319, &qword_27F063A30, MEMORY[0x277CE02A8]);
  if (v0 <= 0x3F)
  {
    sub_24B8F47B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24B951700()
{
  result = qword_27F0655C0;
  if (!qword_27F0655C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0655A8);
    sub_24B8F384C(&qword_27F0655C8, &qword_27F0655D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0655C0);
  }

  return result;
}

uint64_t sub_24B9517EC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24B9A2FBC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24B951868(v6);
  return sub_24BAAA67C();
}

uint64_t sub_24B951868(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24BAAA75C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24B95291C();
        v6 = sub_24BAAA15C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_24B951AE0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24B95196C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24B95196C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_5:
    v18 = a3;
    v6 = *(v19 + 8 * a3);
    v16 = v5;
    v17 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 name];
      sub_24BAAA01C();

      v11 = [v9 name];
      sub_24BAAA01C();

      sub_24B8F5E3C();
      v12 = sub_24BAAA43C();

      if (v12 != -1)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 8;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      v13 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v13;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B951AE0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v104 = result;
    while (1)
    {
      v11 = v9 + 1;
      v105 = v9;
      if (v9 + 1 < v8)
      {
        v12 = v9;
        v109 = v8;
        v100 = v10;
        v102 = v5;
        v13 = *(*v6 + 8 * v11);
        v106 = 8 * v9;
        v14 = (*v6 + 8 * v9);
        v16 = *v14;
        v15 = v14 + 2;
        v17 = v13;
        v9 = v16;
        v18 = [v17 name];
        sub_24BAAA01C();

        v19 = [v9 name];
        sub_24BAAA01C();

        sub_24B8F5E3C();
        v111 = sub_24BAAA43C();

        v20 = v12 + 2;
        while (1)
        {
          v11 = v109;
          if (v109 == v20)
          {
            break;
          }

          v21 = *(v15 - 1);
          v9 = *v15;
          v22 = v21;
          v23 = [v9 name];
          sub_24BAAA01C();

          v24 = [v22 name];
          sub_24BAAA01C();

          v25 = sub_24BAAA43C();

          ++v20;
          ++v15;
          if ((v111 == -1) == (v25 != -1))
          {
            v11 = (v20 - 1);
            break;
          }
        }

        v10 = v100;
        v5 = v102;
        v6 = a3;
        v7 = v104;
        v26 = v106;
        if (v111 == -1)
        {
          v27 = v105;
          if (v11 < v105)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            return result;
          }

          if (v105 < v11)
          {
            v28 = 8 * v11 - 8;
            v29 = v11;
            do
            {
              if (v27 != --v29)
              {
                v31 = *a3;
                if (!*a3)
                {
                  goto LABEL_124;
                }

                v30 = *(v31 + v26);
                *(v31 + v26) = *(v31 + v28);
                *(v31 + v28) = v30;
              }

              ++v27;
              v28 -= 8;
              v26 += 8;
            }

            while (v27 < v29);
          }
        }
      }

      v32 = v6[1];
      if (v11 >= v32)
      {
        goto LABEL_36;
      }

      if (__OFSUB__(v11, v105))
      {
        goto LABEL_116;
      }

      if (v11 - v105 >= a4)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v105, a4))
      {
        goto LABEL_117;
      }

      if (&v105[a4] >= v32)
      {
        v33 = v6[1];
      }

      else
      {
        v33 = &v105[a4];
      }

      if (v33 < v105)
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      v34 = v105;
      if (v11 != v33)
      {
        break;
      }

LABEL_37:
      if (v11 < v34)
      {
        goto LABEL_115;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24B99A39C(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v47 = *(v10 + 2);
      v46 = *(v10 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        result = sub_24B99A39C((v46 > 1), v47 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v48;
      v49 = &v10[16 * v47];
      *(v49 + 4) = v105;
      *(v49 + 5) = v11;
      v50 = *v7;
      if (!v50)
      {
        goto LABEL_125;
      }

      v9 = v11;
      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v52 = *(v10 + 4);
            v53 = *(v10 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_57:
            if (v55)
            {
              goto LABEL_104;
            }

            v68 = &v10[16 * v48];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_107;
            }

            v74 = &v10[16 * v51 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_111;
            }

            if (v72 + v77 >= v54)
            {
              if (v54 < v77)
              {
                v51 = v48 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v78 = &v10[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_71:
          if (v73)
          {
            goto LABEL_106;
          }

          v81 = &v10[16 * v51];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_109;
          }

          if (v84 < v72)
          {
            goto LABEL_3;
          }

LABEL_78:
          v89 = v51 - 1;
          if (v51 - 1 >= v48)
          {
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
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

          if (!*v6)
          {
            goto LABEL_122;
          }

          v90 = *&v10[16 * v89 + 32];
          v91 = *&v10[16 * v51 + 40];
          sub_24B9522A4((*v6 + 8 * v90), (*v6 + 8 * *&v10[16 * v51 + 32]), (*v6 + 8 * v91), v50);
          if (v5)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_24B99FEB4(v10);
          }

          if (v89 >= *(v10 + 2))
          {
            goto LABEL_101;
          }

          v92 = &v10[16 * v89];
          *(v92 + 4) = v90;
          *(v92 + 5) = v91;
          result = sub_24B99FE28(v51);
          v48 = *(v10 + 2);
          if (v48 <= 1)
          {
            goto LABEL_3;
          }
        }

        v56 = &v10[16 * v48 + 32];
        v57 = *(v56 - 64);
        v58 = *(v56 - 56);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_102;
        }

        v61 = *(v56 - 48);
        v60 = *(v56 - 40);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_103;
        }

        v63 = &v10[16 * v48];
        v65 = *v63;
        v64 = *(v63 + 1);
        v62 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v62)
        {
          goto LABEL_105;
        }

        v62 = __OFADD__(v54, v66);
        v67 = v54 + v66;
        if (v62)
        {
          goto LABEL_108;
        }

        if (v67 >= v59)
        {
          v85 = &v10[16 * v51 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v62 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v62)
          {
            goto LABEL_112;
          }

          if (v54 < v88)
          {
            v51 = v48 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v104;
      if (v9 >= v8)
      {
        goto LABEL_88;
      }
    }

    v101 = v10;
    v103 = v5;
    v35 = *v6;
    v36 = *v6 + 8 * v11 - 8;
    v37 = &v105[-v11];
    v107 = v33;
    do
    {
      v110 = v36;
      v112 = v11;
      v38 = *(v35 + 8 * v11);
      v108 = v37;
      do
      {
        v39 = *v36;
        v9 = v38;
        v40 = v39;
        v41 = [v9 name];
        sub_24BAAA01C();

        v42 = [v40 name];
        sub_24BAAA01C();

        sub_24B8F5E3C();
        v43 = sub_24BAAA43C();

        if (v43 != -1)
        {
          break;
        }

        if (!v35)
        {
          goto LABEL_121;
        }

        v44 = *v36;
        v38 = *(v36 + 8);
        *v36 = v38;
        *(v36 + 8) = v44;
        v36 -= 8;
      }

      while (!__CFADD__(v37++, 1));
      ++v11;
      v36 = v110 + 8;
      v37 = v108 - 1;
    }

    while ((v112 + 1) != v107);
    v11 = v107;
    v10 = v101;
    v5 = v103;
    v6 = a3;
    v7 = v104;
LABEL_36:
    v34 = v105;
    goto LABEL_37;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_88:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_126;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_119:
    result = sub_24B99FEB4(v10);
    v10 = result;
  }

  v93 = *(v10 + 2);
  if (v93 >= 2)
  {
    while (*v6)
    {
      v94 = v10;
      v10 = (v93 - 1);
      v95 = *&v94[16 * v93];
      v96 = *&v94[16 * v93 + 24];
      sub_24B9522A4((*v6 + 8 * v95), (*v6 + 8 * *&v94[16 * v93 + 16]), (*v6 + 8 * v96), v9);
      if (v5)
      {
      }

      if (v96 < v95)
      {
        goto LABEL_113;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_24B99FEB4(v94);
      }

      if (v93 - 2 >= *(v94 + 2))
      {
        goto LABEL_114;
      }

      v97 = &v94[16 * v93];
      *v97 = v95;
      *(v97 + 1) = v96;
      result = sub_24B99FE28(v93 - 1);
      v10 = v94;
      v93 = *(v94 + 2);
      if (v93 <= 1)
      {
      }
    }

    goto LABEL_123;
  }
}

uint64_t sub_24B9522A4(void **__src, id *a2, id *a3, void **__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = __dst;
    if (__dst != a2 || &a2[v12] <= __dst)
    {
      memmove(__dst, a2, 8 * v12);
      v5 = a2;
    }

    v44 = &v15[v12];
    if (v10 < 8 || v5 <= v6)
    {
      v39 = v5;
    }

    else
    {
      __srca = v15;
LABEL_25:
      v41 = v5;
      v27 = v5 - 1;
      v28 = v4 - 1;
      v29 = v44;
      v42 = v27;
      do
      {
        v30 = v28;
        v31 = (v28 + 1);
        v32 = *(v29 - 1);
        v29 -= 8;
        v33 = *v27;
        v34 = v32;
        v35 = v33;
        v36 = [v34 name];
        sub_24BAAA01C();

        v37 = [v35 name];
        sub_24BAAA01C();

        sub_24B8F5E3C();
        v38 = sub_24BAAA43C();

        if (v38 == -1)
        {
          v25 = v31 == v41;
          v4 = v30;
          if (!v25)
          {
            *v30 = *v42;
          }

          v15 = __srca;
          if (v44 <= __srca || (v5 = v42, v42 <= v6))
          {
            v39 = v42;
            goto LABEL_38;
          }

          goto LABEL_25;
        }

        if (v31 != v44)
        {
          *v30 = *v29;
        }

        v28 = v30 - 1;
        v44 = v29;
        v27 = v42;
      }

      while (v29 > __srca);
      v44 = v29;
      v39 = v41;
      v15 = __srca;
    }
  }

  else
  {
    if (__dst != __src || &__src[v9] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
      __dst = v13;
    }

    v44 = &__dst[v9];
    v15 = __dst;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = *v15;
        v18 = v5;
        v19 = *v5;
        v20 = v17;
        v21 = [v19 name];
        sub_24BAAA01C();

        v22 = [v20 name];
        sub_24BAAA01C();

        sub_24B8F5E3C();
        v23 = sub_24BAAA43C();

        if (v23 != -1)
        {
          break;
        }

        v24 = v18;
        v5 = v18 + 1;
        if (v6 != v18)
        {
          goto LABEL_13;
        }

LABEL_14:
        ++v6;
        if (v15 < v44)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_35;
      }

      v24 = v15;
      v25 = v6 == v15++;
      v5 = v18;
      if (v25)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v6 = *v24;
      goto LABEL_14;
    }

LABEL_35:
    v39 = v6;
  }

LABEL_38:
  if (v39 != v15 || v39 >= (v15 + ((v44 - v15 + (v44 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v39, v15, 8 * ((v44 - v15) / 8));
  }

  return 1;
}

uint64_t sub_24B95269C(void *a1)
{
  v1 = 0x61665F70756F7267;
  if (a1)
  {
    v2 = a1;
    v3 = [v2 immediateBypassEventSourceType];
    if (v3 <= 2)
    {
      if (v3)
      {
        if (v3 == 1)
        {

          return 0x76655F70756F7267;
        }

        if (v3 == 2)
        {

          return 0x6F6E5F70756F7267;
        }
      }

LABEL_11:

      return v1;
    }

    if (v3 == 3)
    {
      goto LABEL_11;
    }

    if (v3 != 5)
    {
      if (v3 == 4)
      {

        return 0x6F635F70756F7267;
      }

      goto LABEL_11;
    }

    v4 = [v2 immediateBypassCNGroupIdentifier];
    if (v4)
    {
      v5 = v4;
      v1 = sub_24BAAA01C();
    }

    else
    {

      return 0;
    }
  }

  return v1;
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_24B95291C()
{
  result = qword_27F0633B8;
  if (!qword_27F0633B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F0633B8);
  }

  return result;
}

unint64_t sub_24B9529BC()
{
  result = qword_27F065658;
  if (!qword_27F065658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065658);
  }

  return result;
}

unint64_t sub_24B952A88()
{
  result = qword_27F065680;
  if (!qword_27F065680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065678);
    sub_24B952B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065680);
  }

  return result;
}

unint64_t sub_24B952B14()
{
  result = qword_27F065688;
  if (!qword_27F065688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065690);
    sub_24B8F384C(&qword_27F065698, &qword_27F0656A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065688);
  }

  return result;
}

uint64_t sub_24B952BE4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24B952C54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t objectdestroy_21Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

unint64_t sub_24B952E6C()
{
  result = qword_27F065700;
  if (!qword_27F065700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065700);
  }

  return result;
}

uint64_t sub_24B952EC0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_24B952F08(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_24B952F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for allowedGroupsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B952FB0()
{
  v1 = *(type metadata accessor for allowedGroupsView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA8B9C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9530D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for allowedGroupsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24B9485A0(v4, a1);
}

id sub_24B953158(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v1 = [a1 groupsMatchingPredicate:0 error:v9];
  v2 = v9[0];
  if (v1)
  {
    v3 = v1;
    sub_24B95291C();
    sub_24BAAA12C();
    v4 = v2;

    v9[0] = sub_24B8F04F8(v5);
    sub_24B9517EC(v9);

    return v9[0];
  }

  else
  {
    v7 = v9[0];
    v8 = sub_24BAA7CCC();

    swift_willThrow();
    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_24B953270(void *a1)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v2 = sub_24BAA7C2C();
  v4 = v3;
  v5 = sub_24B99A740(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_24B99A740((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[48 * v7];
  *(v8 + 4) = v2;
  *(v8 + 5) = v4;
  *(v8 + 6) = 1;
  v8[56] = 0;
  strcpy(v8 + 64, "group_everyone");
  v8[79] = -18;
  v9 = sub_24BAA7C2C();
  v12 = *(v5 + 2);
  v11 = *(v5 + 3);
  if (v12 >= v11 >> 1)
  {
    v41 = v9;
    v42 = v10;
    v43 = sub_24B99A740((v11 > 1), v12 + 1, 1, v5);
    v10 = v42;
    v5 = v43;
    v9 = v41;
  }

  *(v5 + 2) = v12 + 1;
  v13 = &v5[48 * v12];
  *(v13 + 4) = v9;
  *(v13 + 5) = v10;
  *(v13 + 6) = 2;
  v13[56] = 0;
  strcpy(v13 + 64, "group_no_one");
  v13[77] = 0;
  *(v13 + 39) = -5120;
  v14 = sub_24BAA7C2C();
  v17 = *(v5 + 2);
  v16 = *(v5 + 3);
  if (v17 >= v16 >> 1)
  {
    v44 = v14;
    v45 = v15;
    v46 = sub_24B99A740((v16 > 1), v17 + 1, 1, v5);
    v15 = v45;
    v5 = v46;
    v14 = v44;
  }

  *(v5 + 2) = v17 + 1;
  v18 = &v5[48 * v17];
  *(v18 + 4) = v14;
  *(v18 + 5) = v15;
  *(v18 + 6) = 3;
  v18[56] = 0;
  *(v18 + 8) = 0x61665F70756F7267;
  *(v18 + 9) = 0xEF73657469726F76;
  v51 = 0xE000000000000000;
  v19 = sub_24BAA7C2C();
  v22 = *(v5 + 2);
  v21 = *(v5 + 3);
  if (v22 >= v21 >> 1)
  {
    v47 = v19;
    v48 = v20;
    v49 = sub_24B99A740((v21 > 1), v22 + 1, 1, v5);
    v20 = v48;
    v5 = v49;
    v19 = v47;
  }

  *(v5 + 2) = v22 + 1;
  v23 = &v5[48 * v22];
  *(v23 + 4) = v19;
  *(v23 + 5) = v20;
  *(v23 + 6) = 4;
  v23[56] = 0;
  strcpy(v23 + 64, "group_contacts");
  v23[79] = -18;
  result = sub_24B953158(a1);
  v25 = result;
  if (!(result >> 62))
  {
    v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_13;
    }

LABEL_23:

    return v5;
  }

  v50 = result;
  result = sub_24BAAA52C();
  v25 = v50;
  v26 = result;
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_13:
  if (v26 >= 1)
  {
    v27 = 0;
    v52 = v25 & 0xC000000000000001;
    v53 = v25;
    do
    {
      if (v52)
      {
        v28 = MEMORY[0x24C2506E0](v27);
      }

      else
      {
        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = [v28 name];
      v31 = sub_24BAAA01C();
      v33 = v32;

      v34 = [v29 identifier];
      v35 = sub_24BAAA01C();
      v37 = v36;

      v39 = *(v5 + 2);
      v38 = *(v5 + 3);
      if (v39 >= v38 >> 1)
      {
        v5 = sub_24B99A740((v38 > 1), v39 + 1, 1, v5);
      }

      ++v27;

      *(v5 + 2) = v39 + 1;
      v40 = &v5[48 * v39];
      *(v40 + 4) = v31;
      *(v40 + 5) = v33;
      *(v40 + 6) = 5;
      v40[56] = 0;
      *(v40 + 8) = v35;
      *(v40 + 9) = v37;
      v25 = v53;
    }

    while (v26 != v27);
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B953744(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  swift_retain_n();
  sub_24B984444();
  v3 = sub_24B8D7188();

  if (!v3)
  {

LABEL_7:
    v7 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  v4 = [v3 configuration];

  v5 = [v4 phoneCallBypassSettings];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [v5 immediateBypassCNGroupIdentifier];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = sub_24BAAA01C();
  v9 = v8;

LABEL_8:
  type metadata accessor for ActivityConfigViewModel();
  sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8DA728(a1, v7, v9);
}

__n128 sub_24B953940@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24B91B804(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v6 = sub_24BAA86FC();
  v8 = v7;
  sub_24BAA99EC();
  sub_24BAA99EC();
  v9 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  result = v11;
  *(a3 + 32) = v11;
  *(a3 + 48) = v12;
  *(a3 + 56) = v11;
  *(a3 + 72) = v12;
  *(a3 + 80) = v9;
  return result;
}

uint64_t sub_24B953A7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24B953AC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_24B953B60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24B953BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24B953C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B953C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24B953CD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B953D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B953D74()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0655A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068FA0);
  sub_24B951700();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24B953F54()
{
  result = qword_27F065750;
  if (!qword_27F065750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065750);
  }

  return result;
}

uint64_t sub_24B953FAC@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  result = sub_24BAA99FC();
  *a1 = v3;
  return result;
}

uint64_t objectdestroy_87Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

BOOL sub_24B954060@<W0>(_BYTE *a1@<X8>)
{
  result = sub_24B99950C();
  *a1 = result;
  return result;
}

uint64_t sub_24B954098@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0655D8);
  result = sub_24BAA99FC();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t objectdestroy_101Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_24B954164()
{
  result = qword_27F065810;
  if (!qword_27F065810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065808);
    sub_24B8F384C(&qword_27F065818, &qword_27F065820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065810);
  }

  return result;
}

uint64_t sub_24B954214()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24B95426C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24B9542C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B954350(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24B9543EC()
{
  sub_24B936680(319, &qword_27F068F10, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24B954474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24B9544BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B95455C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065788);
  sub_24B8F384C(&qword_27F065798, &qword_27F065788);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24B95463C()
{
  result = qword_27F065880;
  if (!qword_27F065880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065888);
    sub_24B9546F4();
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065880);
  }

  return result;
}

unint64_t sub_24B9546F4()
{
  result = qword_27F065890;
  if (!qword_27F065890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065898);
    sub_24B8F384C(&unk_27F069060, &qword_27F0658A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065890);
  }

  return result;
}

unint64_t sub_24B9547B0()
{
  result = qword_27F0658A8;
  if (!qword_27F0658A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065838);
    sub_24B95483C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0658A8);
  }

  return result;
}

unint64_t sub_24B95483C()
{
  result = qword_27F0658B0;
  if (!qword_27F0658B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065830);
    sub_24B9548C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0658B0);
  }

  return result;
}

unint64_t sub_24B9548C8()
{
  result = qword_27F0658B8;
  if (!qword_27F0658B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0658C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0657F8);
    sub_24BAA857C();
    sub_24B8F384C(&qword_27F065828, &qword_27F0657F8);
    swift_getOpaqueTypeConformance2();
    sub_24B91B804(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0658B8);
  }

  return result;
}

unint64_t sub_24B954A18()
{
  result = qword_27F0658C8;
  if (!qword_27F0658C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0658C8);
  }

  return result;
}

uint64_t sub_24B954A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B954AF4()
{
  result = qword_27F065948;
  if (!qword_27F065948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065900);
    sub_24B954BAC();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065948);
  }

  return result;
}

unint64_t sub_24B954BAC()
{
  result = qword_27F065950;
  if (!qword_27F065950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0658F8);
    sub_24B954C64();
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065950);
  }

  return result;
}

unint64_t sub_24B954C64()
{
  result = qword_27F065958;
  if (!qword_27F065958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065960);
    sub_24B954CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065958);
  }

  return result;
}

unint64_t sub_24B954CF0()
{
  result = qword_27F065968;
  if (!qword_27F065968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0658F0);
    sub_24B8F384C(&qword_27F065970, &qword_27F065978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065968);
  }

  return result;
}

uint64_t sub_24B954DC8()
{
  result = sub_24BAA982C();
  qword_27F065980 = result;
  return result;
}

uint64_t sub_24B954DE8()
{
  result = sub_24BAA982C();
  qword_27F065988 = result;
  return result;
}

uint64_t sub_24B954E08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA82DC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PagesAndHomeScreenHeader.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PagesAndHomeScreenHeader();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  *a1 = sub_24BAA8BCC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065990);
  sub_24B9551B4(v1, a1 + *(v6 + 44));
  sub_24B95BAE4(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagesAndHomeScreenHeader);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_24B95B554(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PagesAndHomeScreenHeader);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065998);
  v10 = (a1 + *(result + 36));
  *v10 = sub_24B95648C;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t type metadata accessor for PagesAndHomeScreenHeader()
{
  result = qword_27F0659A0;
  if (!qword_27F0659A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B9551B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C08);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = sub_24BAA9D0C();
  v11 = v10;
  sub_24B955628(a1, v42);
  memcpy(v40, v42, sizeof(v40));
  memcpy(v41, v42, sizeof(v41));
  sub_24B8F3208(v40, v39, &qword_27F065C10);
  sub_24B8F35E4(v41, &qword_27F065C10);
  memcpy(&v39[16], v40, 0x1C8uLL);
  *v39 = v9;
  *&v39[8] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C18);
  sub_24B8F384C(&qword_27F065C20, &qword_27F065C18);
  sub_24BAA95EC();
  memcpy(v42, v39, sizeof(v42));
  sub_24B8F35E4(v42, &qword_27F065C18);
  v12 = sub_24BAA8BCC();
  v38 = 0;
  sub_24B9561C0(a1, v39);
  v43 = *v39;
  v44[0] = *&v39[16];
  *(v44 + 11) = *&v39[27];
  v45 = *v39;
  v46[0] = *&v39[16];
  *(v46 + 11) = *&v39[27];
  sub_24B8F3208(&v43, &v47, &qword_27F065C28);
  sub_24B8F35E4(&v45, &qword_27F065C28);
  *&v37[7] = v43;
  *&v37[23] = v44[0];
  *&v37[34] = *(v44 + 11);
  v13 = v38;
  LOBYTE(a1) = sub_24BAA90AC();
  sub_24BAA828C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v39[0] = 0;
  LOBYTE(v11) = sub_24BAA90CC();
  v35 = v6;
  sub_24B8F3208(v8, v6, &qword_27F065C08);
  v22 = v6;
  v23 = v36;
  sub_24B8F3208(v22, v36, &qword_27F065C08);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C30) + 48);
  *&v47 = v12;
  *(&v47 + 1) = 0x4000000000000000;
  LOBYTE(v48[0]) = v13;
  *(&v48[3] + 1) = *&v37[48];
  *(&v48[2] + 1) = *&v37[32];
  *(&v48[1] + 1) = *&v37[16];
  *(v48 + 1) = *v37;
  BYTE8(v48[3]) = a1;
  *&v49 = v15;
  *(&v49 + 1) = v17;
  *&v50 = v19;
  *(&v50 + 1) = v21;
  LOBYTE(v51) = 0;
  BYTE8(v51) = v11;
  v53 = 0u;
  v52 = 0u;
  v54 = 1;
  v25 = v48[0];
  *v24 = v47;
  *(v24 + 16) = v25;
  v26 = v48[1];
  v27 = v48[2];
  v28 = v49;
  *(v24 + 64) = v48[3];
  *(v24 + 80) = v28;
  *(v24 + 32) = v26;
  *(v24 + 48) = v27;
  v29 = v50;
  v30 = v51;
  v31 = v52;
  v32 = v53;
  *(v24 + 160) = 1;
  *(v24 + 128) = v31;
  *(v24 + 144) = v32;
  *(v24 + 96) = v29;
  *(v24 + 112) = v30;
  sub_24B8F3208(&v47, v39, &qword_27F065C38);
  sub_24B8F35E4(v8, &qword_27F065C08);
  *&v39[17] = *v37;
  *v39 = v12;
  *&v39[8] = 0x4000000000000000;
  v39[16] = v13;
  *&v39[33] = *&v37[16];
  *&v39[49] = *&v37[32];
  *&v39[65] = *&v37[48];
  v39[72] = a1;
  *&v39[80] = v15;
  *&v39[88] = v17;
  *&v39[96] = v19;
  *&v39[104] = v21;
  v39[112] = 0;
  v39[120] = v11;
  memset(&v39[128], 0, 32);
  v39[160] = 1;
  sub_24B8F35E4(v39, &qword_27F065C38);
  return sub_24B8F35E4(v35, &qword_27F065C08);
}

uint64_t sub_24B955628@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = 24.0;
  }

  else
  {
    v5 = 10.0;
  }

  v6 = type metadata accessor for PagesAndHomeScreenHeader();
  v7 = *(a1 + v6[6]);
  v8 = *(a1 + v6[9]);
  v9 = *(a1 + v6[10]);
  v10 = *(a1 + v6[11]);
  v11 = (a1 + v6[14]);
  v12 = v11[1];
  *&v98 = *v11;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C00);
  sub_24BAA99FC();
  v42 = *v95 * 0.92;
  sub_24BAA9DFC();
  *&v44 = v13;
  *(&v44 + 1) = v14;
  sub_24BAA99FC();
  v15 = *v95 * -0.0174532925;
  v40 = *v95 * -0.0174532925;
  sub_24BAA9DFC();
  *&v43 = v16;
  *(&v43 + 1) = v17;
  sub_24BAA99FC();
  v18 = -v5 - *v95;

  sub_24BAA99FC();
  v37 = *v95 * 0.92;
  sub_24BAA9DFC();
  v36 = v19;
  v21 = v20;
  v39 = v20;
  sub_24BAA99FC();
  v22 = *v95 * 0.0174532925;
  sub_24BAA9DFC();
  v34 = v24;
  v35 = v23;
  sub_24BAA99FC();
  v38 = v5 + *v95;
  *(&v98 + 1) = v12;
  sub_24BAA99FC();
  v25 = *&v95[0];
  sub_24BAA9DFC();
  v32 = v27;
  v33 = v26;
  v28 = sub_24BAA9D1C();
  v30 = v29;
  sub_24B955E24(a1, &v98);
  v71 = v100;
  v72 = v101;
  v73 = v102;
  v74 = v103;
  v69 = v98;
  v70 = v99;
  v76 = v103;
  v75[2] = v100;
  v75[3] = v101;
  v75[4] = v102;
  v75[0] = v98;
  v75[1] = v99;
  sub_24B8F3208(&v69, v95, &qword_27F065C40);
  sub_24B8F35E4(v75, &qword_27F065C40);
  v65 = v71;
  v66 = v72;
  v67 = v73;
  v68 = v74;
  v63 = v69;
  v64 = v70;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  LOBYTE(v77) = (v7 & 1) == 0;
  BYTE1(v77) = v4 == 1;
  BYTE2(v77) = 1;
  *(&v77 + 3) = v132;
  BYTE7(v77) = v133;
  *(&v77 + 1) = v8;
  *&v78 = v9;
  *(&v78 + 1) = v10;
  *&v79 = v42;
  *(&v79 + 1) = v42;
  v80 = v44;
  *&v81 = 0x3FE3333333333333;
  *(&v81 + 1) = v15;
  v82 = v43;
  *&v83 = v18;
  *(&v83 + 1) = 0x4008000000000000;
  __src[4] = v81;
  __src[5] = v43;
  __src[2] = v79;
  __src[3] = v44;
  __src[0] = v77;
  __src[1] = v78;
  LOBYTE(v84) = v77;
  BYTE1(v84) = v4 == 1;
  BYTE2(v84) = 2;
  *(&v84 + 1) = v8;
  *&v85 = v9;
  *(&v85 + 1) = v10;
  *&v86 = v37;
  *(&v86 + 1) = v37;
  *&v87 = v36;
  *(&v87 + 1) = v21;
  *&v88 = 0x3FE3333333333333;
  *(&v88 + 1) = v22;
  *&v89 = v35;
  *(&v89 + 1) = v34;
  *&v90 = v38;
  *(&v90 + 1) = 0x4008000000000000;
  __src[8] = v85;
  __src[9] = v86;
  __src[6] = v83;
  __src[7] = v84;
  __src[12] = v89;
  __src[13] = v90;
  __src[10] = v87;
  __src[11] = v88;
  LOBYTE(v91) = v77;
  BYTE1(v91) = v4 == 1;
  BYTE2(v91) = 0;
  *(&v91 + 1) = v8;
  *&v92 = v9;
  *(&v92 + 1) = v10;
  *&v93 = v25;
  *(&v93 + 1) = v25;
  *&v94 = v33;
  *(&v94 + 1) = v32;
  __src[16] = v93;
  __src[17] = v94;
  __src[14] = v91;
  __src[15] = v92;
  *&v95[0] = v28;
  *(&v95[0] + 1) = v30;
  v95[2] = v64;
  v95[1] = v63;
  v95[5] = v67;
  v95[4] = v66;
  v95[3] = v65;
  *&v96[40] = v62;
  *&v96[24] = v61;
  *&v96[8] = v60;
  *v96 = v68;
  *&v96[56] = 0xC039000000000000;
  v97 = 0x4000000000000000;
  __src[18] = v95[0];
  __src[19] = v63;
  __src[22] = v66;
  __src[23] = v67;
  __src[20] = v64;
  __src[21] = v65;
  *&__src[28] = 0x4000000000000000;
  __src[26] = *&v96[32];
  __src[27] = *&v96[48];
  __src[24] = *v96;
  __src[25] = *&v96[16];
  memcpy(a2, __src, 0x1C8uLL);
  v101 = v65;
  v102 = v66;
  v103 = v67;
  v99 = v63;
  v100 = v64;
  v105 = v60;
  v106 = v61;
  *&v98 = v28;
  *(&v98 + 1) = v30;
  v107 = v62;
  v104 = v68;
  v108 = 0xC039000000000000;
  v109 = 0x4000000000000000;
  sub_24B8F3208(&v77, v45, &qword_27F065C48);
  sub_24B8F3208(&v84, v45, &qword_27F065C48);
  sub_24B8F3208(&v91, v45, &qword_27F065C50);
  sub_24B8F3208(v95, v45, &qword_27F065C58);
  sub_24B8F35E4(&v98, &qword_27F065C58);
  v110[0] = (v7 & 1) == 0;
  v110[1] = v4 == 1;
  v110[2] = 0;
  v111 = v8;
  v112 = v9;
  v113 = v10;
  v114 = v25;
  v115 = v25;
  v116 = v33;
  v117 = v32;
  sub_24B8F35E4(v110, &qword_27F065C50);
  v118[0] = (v7 & 1) == 0;
  v118[1] = v4 == 1;
  v118[2] = 2;
  v119 = v8;
  v120 = v9;
  v121 = v10;
  v122 = v37;
  v123 = v37;
  v124 = v36;
  v125 = v39;
  v126 = 0x3FE3333333333333;
  v127 = v22;
  v128 = v35;
  v129 = v34;
  v130 = v38;
  v131 = 0x4008000000000000;
  sub_24B8F35E4(v118, &qword_27F065C48);
  v45[0] = (v7 & 1) == 0;
  v45[1] = v4 == 1;
  v45[2] = 1;
  v46 = v132;
  v47 = v133;
  v48 = v8;
  v49 = v9;
  v50 = v10;
  v51 = v42;
  v52 = v42;
  v53 = v44;
  v54 = 0x3FE3333333333333;
  v55 = v40;
  v56 = v43;
  v57 = v18;
  v58 = 0x4008000000000000;
  return sub_24B8F35E4(v45, &qword_27F065C48);
}

uint64_t sub_24B955E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v32 = sub_24BAA975C();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24BAA82DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v33 = a1;
  sub_24B954E08(&v32 - v15);
  (*(v11 + 104))(v14, *MEMORY[0x277CDF3C0], v10);
  v17 = sub_24BAA82CC();
  v18 = *(v11 + 8);
  v18(v14, v10);
  v18(v16, v10);
  if (v17)
  {
    v19 = [objc_opt_self() systemGray4Color];
    v20 = sub_24BAA973C();
  }

  else
  {
    v20 = sub_24BAA982C();
  }

  v21 = v20;
  (*(v7 + 104))(v9, *MEMORY[0x277CE0EE0], v32);
  v22 = sub_24BAA98BC();
  v23 = type metadata accessor for PagesAndHomeScreenHeader();
  v24 = v33;

  v25 = sub_24BAA994C();
  sub_24BAA91AC();
  v26 = sub_24BAA919C();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = sub_24BAA91FC();
  sub_24B8F35E4(v6, &qword_27F063CD8);
  KeyPath = swift_getKeyPath();
  v29 = *(v24 + *(v23 + 32));
  v30 = swift_getKeyPath();
  *a2 = v21;
  *(a2 + 8) = 256;
  *(a2 + 16) = v22;
  *(a2 + 24) = xmmword_24BAB2760;
  *(a2 + 40) = 0x4000000000000000;
  *(a2 + 48) = v25;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v27;
  *(a2 + 72) = v30;
  *(a2 + 80) = v29;
}

uint64_t sub_24B9561C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA922C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for PagesAndHomeScreenHeader() + 20));
  v9 = v8[1];
  v33 = *v8;
  v34 = v9;
  sub_24B8F5E3C();

  v10 = sub_24BAA93CC();
  v12 = v11;
  v14 = v13;
  sub_24BAA988C();
  v15 = sub_24BAA933C();
  v31 = v16;
  v32 = v15;
  v18 = v17;
  v30[1] = v19;

  sub_24B900910(v10, v12, v14 & 1);

  sub_24BAA914C();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v4);
  sub_24BAA925C();

  (*(v5 + 8))(v7, v4);
  sub_24BAA917C();

  v21 = v31;
  v20 = v32;
  v22 = sub_24BAA939C();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_24B900910(v20, v21, v18 & 1);

  result = swift_getKeyPath();
  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = result;
  *(a2 + 40) = 1;
  *(a2 + 42) = 1;
  return result;
}

uint64_t sub_24B956408()
{
  sub_24BAA9D2C();
  sub_24BAA842C();
}

uint64_t sub_24B9564AC()
{
  type metadata accessor for PagesAndHomeScreenHeader();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C00);
  sub_24BAA9A0C();
  sub_24BAA9A0C();
  return sub_24BAA9A0C();
}

uint64_t sub_24B9565A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v117 = a4;
  v116 = a3;
  v115 = a2;
  v135 = a5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0659D8);
  MEMORY[0x28223BE20](v133);
  v134 = &v100 - v6;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0659E0);
  MEMORY[0x28223BE20](v109);
  v102 = (&v100 - v7);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0659E8);
  MEMORY[0x28223BE20](v106);
  v108 = &v100 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0659F0);
  MEMORY[0x28223BE20](v107);
  v101 = (&v100 - v9);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0659F8);
  MEMORY[0x28223BE20](v130);
  v129 = &v100 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065A00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v132 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v131 = &v100 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065518);
  MEMORY[0x28223BE20](v110);
  v112 = &v100 - v15;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065510);
  MEMORY[0x28223BE20](v111);
  v17 = &v100 - v16;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065A08);
  v18 = MEMORY[0x28223BE20](v127);
  v113 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v114 = &v100 - v20;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065A10);
  MEMORY[0x28223BE20](v125);
  v126 = &v100 - v21;
  v121 = sub_24BAA975C();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24BAA869C();
  v24 = v23 - 8;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v100 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065A18);
  MEMORY[0x28223BE20](v30);
  v32 = &v100 - v31;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065A20);
  MEMORY[0x28223BE20](v103);
  v34 = &v100 - v33;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065A28);
  v35 = MEMORY[0x28223BE20](v124);
  v37 = &v100 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v104 = &v100 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065A30);
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v128 = &v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v122 = &v100 - v42;
  v43 = *(v24 + 28);
  v44 = sub_24BAA8B2C();
  v123 = a1 & 0x100;
  v45 = *MEMORY[0x277CE0118];
  v46 = *(*(v44 - 8) + 104);
  v105 = a1 & 0xFF0000;
  v118 = a1;
  if ((a1 & 0xFF0000) != 0)
  {
    v46(&v27[v43], v45, v44);
    __asm { FMOV            V0.2D, #7.0 }

    *v27 = _Q0;
    v52 = [objc_opt_self() systemGray4Color];
    v53 = sub_24BAA973C();
    KeyPath = swift_getKeyPath();
    v55 = v27;
    v56 = v112;
    sub_24B95B554(v55, v112, MEMORY[0x277CDFC08]);
    v57 = (v56 + *(v110 + 36));
    *v57 = KeyPath;
    v57[1] = v53;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    sub_24B90294C(v56, v17, &qword_27F065518);
    v58 = &v17[*(v111 + 36)];
    v59 = v139;
    *v58 = v138;
    *(v58 + 1) = v59;
    *(v58 + 2) = v140;
    (*(v119 + 104))(v120, *MEMORY[0x277CE0EE0], v121);
    v60 = sub_24BAA98BC();
    v61 = v113;
    sub_24B90294C(v17, v113, &qword_27F065510);
    v62 = v61 + *(v127 + 36);
    *v62 = v60;
    *(v62 + 8) = xmmword_24BAB2770;
    *(v62 + 24) = 0x4018000000000000;
    v63 = &qword_27F065A08;
    v64 = v114;
    sub_24B90294C(v61, v114, &qword_27F065A08);
    sub_24B8F3208(v64, v126, &qword_27F065A08);
    swift_storeEnumTagMultiPayload();
    sub_24B95B5BC(&qword_27F065A38, &qword_27F065A28, &unk_24BAB2920, sub_24B95B640);
    sub_24B95B5BC(&qword_27F065A50, &qword_27F065A08, &unk_24BAB2900, sub_24B95B6F8);
    v65 = v122;
    sub_24BAA8D0C();
    v66 = v64;
  }

  else
  {
    v46(&v29[v43], v45, v44);
    __asm { FMOV            V0.2D, #7.0 }

    *v29 = _Q0;
    sub_24B95758C(a1 & 1, SBYTE2(a1), v115, v116, v117, v136);
    sub_24B95B554(v29, v32, MEMORY[0x277CDFC08]);
    v68 = &v32[*(v30 + 52)];
    v69 = v136[1];
    *v68 = v136[0];
    *(v68 + 1) = v69;
    *(v68 + 4) = v137;
    *&v32[*(v30 + 56)] = 256;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    sub_24B90294C(v32, v34, &qword_27F065A18);
    v70 = &v34[*(v103 + 36)];
    v71 = v139;
    *v70 = v138;
    *(v70 + 1) = v71;
    *(v70 + 2) = v140;
    (*(v119 + 104))(v120, *MEMORY[0x277CE0EE0], v121);
    v72 = sub_24BAA98BC();
    sub_24B90294C(v34, v37, &qword_27F065A20);
    v73 = &v37[*(v124 + 36)];
    *v73 = v72;
    *(v73 + 8) = xmmword_24BAB2770;
    *(v73 + 3) = 0x4018000000000000;
    v63 = &qword_27F065A28;
    v74 = v104;
    sub_24B90294C(v37, v104, &qword_27F065A28);
    sub_24B8F3208(v74, v126, &qword_27F065A28);
    swift_storeEnumTagMultiPayload();
    sub_24B95B5BC(&qword_27F065A38, &qword_27F065A28, &unk_24BAB2920, sub_24B95B640);
    sub_24B95B5BC(&qword_27F065A50, &qword_27F065A08, &unk_24BAB2900, sub_24B95B6F8);
    v65 = v122;
    sub_24BAA8D0C();
    v66 = v74;
  }

  sub_24B8F35E4(v66, v63);
  v75 = v131;
  v76 = v129;
  if (v118)
  {
    v77 = v134;
    *v134 = BYTE2(v118);
    v77[1] = BYTE1(v123);
    swift_storeEnumTagMultiPayload();
    sub_24B95B894();
    sub_24B95BA90();
    sub_24BAA8D0C();
  }

  else
  {
    v78 = sub_24BAA8BCC();
    if (v123)
    {
      v79 = v101;
      *v101 = v78;
      *(v79 + 8) = 0;
      *(v79 + 16) = 0;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AC0);
      sub_24B9576F4(v105 | 0x100, v115, v116, v117, v79 + *(v88 + 44));
      v89 = sub_24BAA90CC();
      sub_24BAA828C();
      v90 = v79 + *(v107 + 36);
      *v90 = v89;
      *(v90 + 8) = v91;
      *(v90 + 16) = v92;
      *(v90 + 24) = v93;
      *(v90 + 32) = v94;
      *(v90 + 40) = 0;
      v87 = &qword_27F0659F0;
      sub_24B8F3208(v79, v108, &qword_27F0659F0);
    }

    else
    {
      v79 = v102;
      *v102 = v78;
      *(v79 + 8) = 0;
      *(v79 + 16) = 0;
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AB8);
      sub_24B959240(v105, v79 + *(v80 + 44));
      v81 = sub_24BAA90CC();
      sub_24BAA828C();
      v82 = v79 + *(v109 + 36);
      *v82 = v81;
      *(v82 + 8) = v83;
      *(v82 + 16) = v84;
      *(v82 + 24) = v85;
      *(v82 + 32) = v86;
      *(v82 + 40) = 0;
      v87 = &qword_27F0659E0;
      sub_24B8F3208(v79, v108, &qword_27F0659E0);
    }

    swift_storeEnumTagMultiPayload();
    sub_24B95B920();
    sub_24B95B9D8();
    sub_24BAA8D0C();
    sub_24B8F35E4(v79, v87);
    sub_24B8F3208(v76, v134, &qword_27F0659F8);
    swift_storeEnumTagMultiPayload();
    sub_24B95B894();
    sub_24B95BA90();
    sub_24BAA8D0C();
    sub_24B8F35E4(v76, &qword_27F0659F8);
  }

  v95 = v128;
  sub_24B8F3208(v65, v128, &qword_27F065A30);
  v96 = v132;
  sub_24B8F3208(v75, v132, &qword_27F065A00);
  v97 = v135;
  sub_24B8F3208(v95, v135, &qword_27F065A30);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AB0);
  sub_24B8F3208(v96, v97 + *(v98 + 48), &qword_27F065A00);
  sub_24B8F35E4(v75, &qword_27F065A00);
  sub_24B8F35E4(v65, &qword_27F065A30);
  sub_24B8F35E4(v96, &qword_27F065A00);
  return sub_24B8F35E4(v95, &qword_27F065A30);
}

__n128 sub_24B95758C@<Q0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064DD8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24BAAD820;
  if ((a1 & 1) == 0 || !a2)
  {
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    v14 = v12;

    v15 = v14;
LABEL_6:
    MEMORY[0x24C24FD10](v15);
    goto LABEL_7;
  }

  if (a2 != 1)
  {
    v17 = a5;
    v18 = a5;
    if (!a5)
    {
      v19 = v12;

      v12 = v19;
      v17 = a4;
      v18 = a3;
    }

    *(v12 + 32) = v17;
    *(v12 + 40) = v18;
    v20 = v12;
    swift_retain_n();
    v15 = v20;
    goto LABEL_6;
  }

  *(v12 + 32) = a4;
  *(v12 + 40) = a3;
  v13 = v12;

  MEMORY[0x24C24FD10](v13);
LABEL_7:
  sub_24BAA847C();
  result = v22;
  *a6 = v21;
  *(a6 + 8) = v22;
  *(a6 + 24) = v23;
  return result;
}

uint64_t sub_24B9576F4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a5;
  v9 = sub_24BAA869C();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AC8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AD0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v70 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v65 - v22;
  *v23 = sub_24BAA8BCC();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AD8) + 44);
  v69 = v23;
  sub_24B957C60(a1 & 0xFF0101, a2, a3, a4, &v23[v24]);
  v25 = sub_24BAA90BC();
  sub_24BAA828C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = *(v10 + 28);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_24BAA8B2C();
  (*(*(v36 - 8) + 104))(&v12[v34], v35, v36);
  __asm { FMOV            V0.2D, #2.0 }

  *v12 = _Q0;
  if (qword_27F063098 != -1)
  {
    swift_once();
  }

  v42 = (a1 >> 8) & 1;
  v43 = qword_27F065980;
  sub_24BAA832C();
  v44 = &v18[*(v13 + 36)];
  sub_24B95BAE4(v12, v44, MEMORY[0x277CDFC08]);
  v45 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE0) + 36);
  v46 = v73;
  *v45 = v72;
  *(v45 + 16) = v46;
  *(v45 + 32) = v74;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE8);
  *(v44 + *(v47 + 52)) = v43;
  *(v44 + *(v47 + 56)) = 256;

  v48 = sub_24BAA9D1C();
  v50 = v49;
  sub_24B95BB4C(v12);
  v51 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AF0) + 36));
  *v51 = v48;
  v51[1] = v50;
  v52 = sub_24BAA9D1C();
  v54 = v53;
  v55 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AF8) + 36));
  *v55 = v52;
  v55[1] = v54;
  *v18 = v42;
  v18[8] = v25;
  *(v18 + 2) = v27;
  *(v18 + 3) = v29;
  *(v18 + 4) = v31;
  *(v18 + 5) = v33;
  v18[48] = 0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v68 = v75;
  v67 = v77;
  v66 = v79;
  v65 = v80;
  v83 = 1;
  v82 = v76;
  v81 = v78;
  v57 = v69;
  v56 = v70;
  sub_24B8F3208(v69, v70, &qword_27F065AD0);
  sub_24B8F3208(v18, v16, &qword_27F065AC8);
  LOBYTE(v52) = v83;
  v58 = v82;
  LOBYTE(v42) = v81;
  v59 = v71;
  sub_24B8F3208(v56, v71, &qword_27F065AD0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B00);
  v61 = v59 + v60[12];
  *v61 = 0;
  *(v61 + 8) = 0;
  sub_24B8F3208(v16, v59 + v60[16], &qword_27F065AC8);
  v62 = v59 + v60[20];
  *v62 = 0;
  *(v62 + 8) = v52;
  *(v62 + 16) = v68;
  *(v62 + 24) = v58;
  *(v62 + 32) = v67;
  *(v62 + 40) = v42;
  v63 = v65;
  *(v62 + 48) = v66;
  *(v62 + 56) = v63;
  sub_24B8F35E4(v18, &qword_27F065AC8);
  sub_24B8F35E4(v57, &qword_27F065AD0);
  sub_24B8F35E4(v16, &qword_27F065AC8);
  return sub_24B8F35E4(v56, &qword_27F065AD0);
}

uint64_t sub_24B957C60@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v99 = a4;
  v98 = a3;
  v97 = a2;
  v107 = a5;
  v103 = a1 & 0x100;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B08);
  MEMORY[0x28223BE20](v108);
  v7 = &v83[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B10);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v83[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v83[-v12];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B18);
  MEMORY[0x28223BE20](v104);
  v106 = &v83[-v14];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B20);
  MEMORY[0x28223BE20](v100);
  v16 = &v83[-v15];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B28);
  MEMORY[0x28223BE20](v105);
  v102 = &v83[-v17];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B30);
  MEMORY[0x28223BE20](v101);
  v19 = &v83[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B38);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v25 = &v83[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B40);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v83[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v31 = &v83[-v30];
  if (BYTE2(a1) == 1)
  {
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v50 = v119;
    v51 = v121;
    v52 = v123;
    v53 = v124;
    v111 = 1;
    v110 = v120;
    v109 = v122;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v54 = v125;
    v55 = v127;
    v56 = v129;
    v57 = v130;
    v115 = 1;
    v113 = v126;
    v112 = v128;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v58 = v131;
    v59 = v132;
    v60 = v133;
    v61 = v134;
    v118 = 1;
    v117 = v132;
    v116 = v134;
    v62 = v103 >> 8;
    v63 = v111;
    v64 = v110;
    v65 = v109;
    v66 = v115;
    v67 = v113;
    v68 = v112;
    *v16 = BYTE1(v103);
    *(v16 + 1) = 0;
    v16[16] = v63;
    *(v16 + 3) = v50;
    v16[32] = v64;
    *(v16 + 5) = v51;
    v16[48] = v65;
    *(v16 + 7) = v52;
    *(v16 + 8) = v53;
    v16[72] = v62;
    *(v16 + 10) = 0;
    v16[88] = v66;
    *(v16 + 12) = v54;
    v16[104] = v67;
    *(v16 + 14) = v55;
    v16[120] = v68;
    *(v16 + 16) = v56;
    *(v16 + 17) = v57;
    v16[144] = v62;
    *(v16 + 19) = 0;
    v16[160] = 1;
    *(v16 + 21) = v58;
    v16[176] = v59;
    *(v16 + 23) = v60;
    v16[192] = v61;
    *(v16 + 193) = *v114;
    *(v16 + 49) = *&v114[3];
    *(v16 + 200) = v135;
    v16[216] = v62;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B70);
    sub_24B8F384C(&qword_27F065B60, &qword_27F065B30);
    sub_24B8F384C(&qword_27F065B68, &qword_27F065B70);
    v69 = v102;
    sub_24BAA8D0C();
    sub_24B8F3208(v69, v106, &qword_27F065B28);
    swift_storeEnumTagMultiPayload();
    sub_24B95BBA8();
    sub_24B8F384C(&qword_27F065B78, &qword_27F065B08);
    sub_24BAA8D0C();
    v48 = v69;
    v49 = &qword_27F065B28;
  }

  else if (BYTE2(a1))
  {
    *v13 = sub_24BAA8AAC();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B48) + 44);
    v103 >>= 8;
    sub_24B958DFC(a1 & 0xFF0101, &v13[v70]);
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v101 = v125;
    v100 = v127;
    v99 = v129;
    v98 = v130;
    v117 = 1;
    v116 = v126;
    v115 = v128;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v97 = v131;
    v96 = v133;
    v94 = *(&v135 + 1);
    v95 = v135;
    LOBYTE(v119) = 1;
    v114[0] = v132;
    v118 = v134;
    v102 = v13;
    sub_24B8F3208(v13, v11, &qword_27F065B10);
    v71 = v117;
    v72 = v116;
    v73 = v115;
    v74 = v119;
    v75 = v114[0];
    v76 = v118;
    sub_24B8F3208(v11, v7, &qword_27F065B10);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B50);
    v78 = &v7[v77[12]];
    *v78 = 0;
    v78[8] = v71;
    *(v78 + 2) = v101;
    v78[24] = v72;
    *(v78 + 4) = v100;
    v78[40] = v73;
    v79 = v98;
    *(v78 + 6) = v99;
    *(v78 + 7) = v79;
    v7[v77[16]] = v103;
    v80 = &v7[v77[20]];
    *v80 = 0;
    v80[8] = v74;
    *(v80 + 2) = v97;
    v80[24] = v75;
    *(v80 + 4) = v96;
    v80[40] = v76;
    v81 = v94;
    *(v80 + 6) = v95;
    *(v80 + 7) = v81;
    sub_24B8F35E4(v11, &qword_27F065B10);
    sub_24B8F3208(v7, v106, &qword_27F065B08);
    swift_storeEnumTagMultiPayload();
    sub_24B95BBA8();
    sub_24B8F384C(&qword_27F065B78, &qword_27F065B08);
    sub_24BAA8D0C();
    sub_24B8F35E4(v7, &qword_27F065B08);
    v48 = v102;
    v49 = &qword_27F065B10;
  }

  else
  {
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v96 = v119;
    v95 = v121;
    v94 = v123;
    v93 = v124;
    v112 = 1;
    v111 = v120;
    v110 = v122;
    *v31 = sub_24BAA8AAC();
    *(v31 + 1) = 0x4000000000000000;
    v31[16] = 0;
    v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B80) + 44)];
    *v25 = sub_24BAA8BCC();
    *(v25 + 1) = 0x4000000000000000;
    v25[16] = 0;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B88) + 44);
    v92 = v31;
    v103 >>= 8;
    v34 = v103;
    sub_24B958BB0(a1 & 0xFF0101, &v25[v33]);
    sub_24B8F3208(v25, v23, &qword_27F065B38);
    sub_24B8F3208(v23, v32, &qword_27F065B38);
    *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B90) + 48)) = v34;
    sub_24B8F35E4(v25, &qword_27F065B38);
    sub_24B8F35E4(v23, &qword_27F065B38);
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v99 = v125;
    v98 = v127;
    v97 = v129;
    v91 = v130;
    v116 = 1;
    v115 = v126;
    v113 = v128;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v90 = v131;
    v89 = v133;
    v87 = *(&v135 + 1);
    v88 = v135;
    v114[0] = 1;
    v118 = v132;
    v117 = v134;
    v35 = v112;
    v36 = v111;
    LOBYTE(v32) = v110;
    v37 = v92;
    sub_24B8F3208(v92, v29, &qword_27F065B40);
    v38 = v116;
    v39 = v115;
    v40 = v113;
    v84 = v114[0];
    v85 = v118;
    v86 = v117;
    *v19 = 0;
    v19[8] = v35;
    *(v19 + 2) = v96;
    v19[24] = v36;
    *(v19 + 4) = v95;
    v19[40] = v32;
    v41 = v93;
    *(v19 + 6) = v94;
    *(v19 + 7) = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B98);
    sub_24B8F3208(v29, &v19[v42[16]], &qword_27F065B40);
    v43 = &v19[v42[20]];
    *v43 = 0;
    v43[8] = v38;
    *(v43 + 2) = v99;
    v43[24] = v39;
    *(v43 + 4) = v98;
    v43[40] = v40;
    v44 = v91;
    *(v43 + 6) = v97;
    *(v43 + 7) = v44;
    LOBYTE(v44) = v103;
    v19[v42[24]] = v103;
    v45 = &v19[v42[28]];
    *v45 = 0;
    v45[8] = v84;
    *(v45 + 2) = v90;
    v45[24] = v85;
    *(v45 + 4) = v89;
    v45[40] = v86;
    v46 = v87;
    *(v45 + 6) = v88;
    *(v45 + 7) = v46;
    v19[v42[32]] = v44;
    sub_24B8F35E4(v29, &qword_27F065B40);
    sub_24B8F3208(v19, v16, &qword_27F065B30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065B70);
    sub_24B8F384C(&qword_27F065B60, &qword_27F065B30);
    sub_24B8F384C(&qword_27F065B68, &qword_27F065B70);
    v47 = v102;
    sub_24BAA8D0C();
    sub_24B8F3208(v47, v106, &qword_27F065B28);
    swift_storeEnumTagMultiPayload();
    sub_24B95BBA8();
    sub_24B8F384C(&qword_27F065B78, &qword_27F065B08);
    sub_24BAA8D0C();
    sub_24B8F35E4(v47, &qword_27F065B28);
    sub_24B8F35E4(v19, &qword_27F065B30);
    v48 = v37;
    v49 = &qword_27F065B40;
  }

  return sub_24B8F35E4(v48, v49);
}

uint64_t sub_24B958BB0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = sub_24BAA8AAC();
  v11 = *(sub_24BAA869C() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_24BAA8B2C();
  (*(*(v13 - 8) + 104))(&v9[v11], v12, v13);
  __asm { FMOV            V0.2D, #2.0 }

  *v9 = _Q0;
  if (qword_27F063098 != -1)
  {
    swift_once();
  }

  v19 = (a1 >> 8) & 1;
  v20 = qword_27F065980;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&v9[*(v21 + 52)] = v20;
  *&v9[*(v21 + 56)] = 256;

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v22 = &v9[*(v4 + 36)];
  v23 = v26[1];
  *v22 = v26[0];
  *(v22 + 1) = v23;
  *(v22 + 2) = v26[2];
  sub_24B8F3208(v9, v7, &qword_27F065BA0);
  *a2 = v10;
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 17) = v19;
  *(a2 + 18) = v19;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA8);
  sub_24B8F3208(v7, a2 + *(v24 + 48), &qword_27F065BA0);
  sub_24B8F35E4(v9, &qword_27F065BA0);
  return sub_24B8F35E4(v7, &qword_27F065BA0);
}

uint64_t sub_24B958DFC@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  v9 = *(sub_24BAA869C() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24BAA8B2C();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  __asm { FMOV            V0.2D, #2.0 }

  *v8 = _Q0;
  if (qword_27F063098 != -1)
  {
    swift_once();
  }

  v17 = qword_27F065980;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&v8[*(v18 + 52)] = v17;
  *&v8[*(v18 + 56)] = 256;

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v19 = &v8[*(v3 + 36)];
  v20 = v50;
  *v19 = v49;
  *(v19 + 1) = v20;
  *(v19 + 2) = v51;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v47 = v52;
  v46 = v54;
  v45 = v56;
  v44 = v57;
  v66 = 1;
  v65 = v53;
  v64 = v55;
  v43 = sub_24BAA8BCC();
  v21 = (a1 >> 8) & 1;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v42 = v58;
  v41 = v60;
  v40 = v62;
  v39 = v63;
  v69 = 1;
  v68 = v59;
  v67 = v61;
  v38 = sub_24BAA8BCC();
  sub_24B8F3208(v8, v6, &qword_27F065BA0);
  v22 = v66;
  v23 = v65;
  v24 = v64;
  v25 = v69;
  v36 = v68;
  v37 = v67;
  v26 = v48;
  sub_24B8F3208(v6, v48, &qword_27F065BA0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BB0);
  v28 = v26 + v27[12];
  *v28 = 0;
  *(v28 + 8) = v22;
  *(v28 + 16) = v47;
  *(v28 + 24) = v23;
  *(v28 + 32) = v46;
  *(v28 + 40) = v24;
  v29 = v44;
  *(v28 + 48) = v45;
  *(v28 + 56) = v29;
  v30 = v26 + v27[16];
  *v30 = v43;
  *(v30 + 8) = 0x400C000000000000;
  *(v30 + 16) = 0;
  *(v30 + 17) = v21;
  *(v30 + 18) = v21;
  *(v30 + 19) = v21;
  v31 = v26 + v27[20];
  *v31 = 0;
  *(v31 + 8) = v25;
  *(v31 + 16) = v42;
  *(v31 + 24) = v36;
  *(v31 + 32) = v41;
  *(v31 + 40) = v37;
  v32 = v39;
  *(v31 + 48) = v40;
  *(v31 + 56) = v32;
  v33 = v26 + v27[24];
  *v33 = v38;
  *(v33 + 8) = 0x400C000000000000;
  *(v33 + 16) = 0;
  *(v33 + 17) = v21;
  *(v33 + 18) = v21;
  *(v33 + 19) = v21;
  sub_24B8F35E4(v8, &qword_27F065BA0);
  return sub_24B8F35E4(v6, &qword_27F065BA0);
}

uint64_t sub_24B959240@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_24BAA869C();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AC8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v54 = sub_24BAA8BCC();
  sub_24B9596B4(a1 & 0xFF0101, &v58);
  v14 = v58 | (BYTE4(v58) << 32);
  v53 = BYTE5(v58);
  v15 = sub_24BAA90BC();
  sub_24BAA828C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = *(v5 + 28);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_24BAA8B2C();
  (*(*(v26 - 8) + 104))(&v7[v24], v25, v26);
  __asm { FMOV            V0.2D, #2.0 }

  *v7 = _Q0;
  if (qword_27F063098 != -1)
  {
    swift_once();
  }

  v32 = (a1 >> 8) & 1;
  v33 = qword_27F065980;
  sub_24BAA832C();
  v34 = &v13[*(v8 + 36)];
  sub_24B95BAE4(v7, v34, MEMORY[0x277CDFC08]);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE0) + 36);
  v36 = v56;
  *v35 = v55;
  *(v35 + 16) = v36;
  *(v35 + 32) = v57;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE8);
  *(v34 + *(v37 + 52)) = v33;
  *(v34 + *(v37 + 56)) = 256;

  v38 = sub_24BAA9D1C();
  v40 = v39;
  sub_24B95BB4C(v7);
  v41 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AF0) + 36));
  *v41 = v38;
  v41[1] = v40;
  v42 = sub_24BAA9D1C();
  v44 = v43;
  v45 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AF8) + 36));
  *v45 = v42;
  v45[1] = v44;
  *v13 = v32;
  v13[8] = v15;
  *(v13 + 2) = v17;
  *(v13 + 3) = v19;
  *(v13 + 4) = v21;
  *(v13 + 5) = v23;
  v13[48] = 0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v52 = v58;
  v51 = v60;
  v46 = v63;
  v50 = v62;
  v66 = 1;
  v65 = v59;
  v64 = v61;
  sub_24B8F3208(v13, v11, &qword_27F065AC8);
  LOBYTE(v32) = v66;
  LOBYTE(v34) = v65;
  LOBYTE(v40) = v64;
  *a2 = v54;
  *(a2 + 8) = 0x4012000000000000;
  *(a2 + 16) = 0;
  *(a2 + 21) = BYTE4(v14);
  *(a2 + 17) = v14;
  *(a2 + 22) = v53;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BB8);
  sub_24B8F3208(v11, a2 + *(v47 + 64), &qword_27F065AC8);
  v48 = a2 + *(v47 + 80);
  *v48 = 0;
  *(v48 + 8) = v32;
  *(v48 + 16) = v52;
  *(v48 + 24) = v34;
  *(v48 + 32) = v51;
  *(v48 + 40) = v40;
  *(v48 + 48) = v50;
  *(v48 + 56) = v46;
  sub_24B8F35E4(v13, &qword_27F065AC8);
  return sub_24B8F35E4(v11, &qword_27F065AC8);
}

uint64_t sub_24B9596B4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (BYTE2(a1) == 1 || !BYTE2(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BF0);
    sub_24B8F384C(&qword_27F065BD8, &qword_27F065BE0);
    sub_24B8F384C(&qword_27F065BE8, &qword_27F065BF0);
    sub_24BAA8D0C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BC8);
  sub_24B95BC88();
  sub_24B8F384C(&qword_27F065BF8, &qword_27F065BC8);
  result = sub_24BAA8D0C();
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  return result;
}

uint64_t sub_24B959928@<X0>(int a1@<W0>, _OWORD *a2@<X8>)
{
  v119 = a2;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065518);
  MEMORY[0x28223BE20](v112);
  v4 = &v106 - v3;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065510);
  v5 = MEMORY[0x28223BE20](v114);
  v118 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v113 = &v106 - v8;
  MEMORY[0x28223BE20](v7);
  v117 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v106 - v11;
  v13 = sub_24B95C400();
  LODWORD(v115) = a1;
  v116 = v4;
  if (a1 == 1)
  {
    *&v128 = v13;
    *(&v128 + 1) = v14;
    sub_24B8F5E3C();
    v36 = sub_24BAA93CC();
    v38 = v37;
    v40 = v39;
    sub_24BAA91DC();
    v41 = *MEMORY[0x277CE0980];
    v42 = sub_24BAA919C();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v12, v41, v42);
    (*(v43 + 56))(v12, 0, 1, v42);
    sub_24BAA91FC();
    sub_24B8F35E4(v12, &qword_27F063CD8);
    v44 = sub_24BAA939C();
    v46 = v45;
    v48 = v47;

    sub_24B900910(v36, v38, v40 & 1);

    if (qword_27F0630A0 != -1)
    {
      swift_once();
    }

    v111 = qword_27F065988;
    v28 = sub_24BAA933C();
    v30 = v49;
    v51 = v50;
    v53 = v52;
    sub_24B900910(v44, v46, v48 & 1);

    v35 = v51 & 1;
    *&v125 = v28;
    *(&v125 + 1) = v30;
    *&v126 = v51 & 1;
    *(&v126 + 1) = v53;
    LOBYTE(v127) = 1;
    goto LABEL_9;
  }

  if (!a1)
  {
    *&v128 = v13;
    *(&v128 + 1) = v14;
    sub_24B8F5E3C();
    v15 = sub_24BAA93CC();
    v17 = v16;
    v19 = v18;
    sub_24BAA91BC();
    v20 = *MEMORY[0x277CE0990];
    v21 = sub_24BAA919C();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v12, v20, v21);
    (*(v22 + 56))(v12, 0, 1, v21);
    sub_24BAA91FC();
    sub_24B8F35E4(v12, &qword_27F063CD8);
    v23 = sub_24BAA939C();
    v25 = v24;
    v27 = v26;

    sub_24B900910(v15, v17, v19 & 1);

    if (qword_27F0630A0 != -1)
    {
      swift_once();
    }

    v111 = qword_27F065988;
    v28 = sub_24BAA933C();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_24B900910(v23, v25, v27 & 1);

    v35 = v32 & 1;
    *&v125 = v28;
    *(&v125 + 1) = v30;
    *&v126 = v32 & 1;
    *(&v126 + 1) = v34;
    LOBYTE(v127) = 0;
LABEL_9:
    sub_24B8F319C(v28, v30, v35);

    sub_24BAA8D0C();
    v125 = v128;
    v126 = v129;
    LOWORD(v127) = v130;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C98);
    sub_24B95CA00();
    sub_24BAA8D0C();
    sub_24B900910(v28, v30, v35);

    v54 = v129;
    goto LABEL_13;
  }

  *&v128 = v13;
  *(&v128 + 1) = v14;
  sub_24B8F5E3C();
  v55 = sub_24BAA93CC();
  v57 = v56;
  v59 = v58;
  sub_24BAA91EC();
  v60 = *MEMORY[0x277CE09A0];
  v61 = sub_24BAA919C();
  v62 = *(v61 - 8);
  (*(v62 + 104))(v12, v60, v61);
  (*(v62 + 56))(v12, 0, 1, v61);
  sub_24BAA91FC();
  sub_24B8F35E4(v12, &qword_27F063CD8);
  v63 = sub_24BAA939C();
  v65 = v64;
  v67 = v66;

  sub_24B900910(v55, v57, v59 & 1);

  if (qword_27F0630A0 != -1)
  {
    swift_once();
  }

  v111 = qword_27F065988;
  v68 = sub_24BAA933C();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  sub_24B900910(v63, v65, v67 & 1);

  *&v125 = v68;
  *(&v125 + 1) = v70;
  *&v126 = v72 & 1;
  *(&v126 + 1) = v74;
  LOWORD(v127) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C98);
  sub_24B95CA00();
  sub_24BAA8D0C();
  v54 = v129;
LABEL_13:
  v121 = v54;
  v120 = v128;
  v75 = v130;
  v76 = BYTE1(v130);
  v77 = *(sub_24BAA869C() + 20);
  v78 = *MEMORY[0x277CE0118];
  v79 = sub_24BAA8B2C();
  v80 = v116 + v77;
  v81 = v116;
  (*(*(v79 - 8) + 104))(v80, v78, v79);
  __asm { FMOV            V0.2D, #0.75 }

  *v81 = _Q0;
  v109 = *(&v120 + 1);
  v110 = v120;
  v107 = *(&v121 + 1);
  v108 = v121;
  sub_24B95CA7C(v120, *(&v120 + 1), v121, *(&v121 + 1), v75, v76);
  if (qword_27F0630A0 != -1)
  {
    swift_once();
  }

  KeyPath = swift_getKeyPath();
  v88 = (v81 + *(v112 + 36));
  *v88 = KeyPath;
  v88[1] = v111;

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v89 = v81;
  v90 = v113;
  sub_24B90294C(v89, v113, &qword_27F065518);
  v91 = (v90 + *(v114 + 36));
  v92 = v126;
  *v91 = v125;
  v91[1] = v92;
  v91[2] = v127;
  v93 = v117;
  sub_24B90294C(v90, v117, &qword_27F065510);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v116 = v128;
  v115 = v129;
  v114 = v130;
  v113 = v131;
  v124 = 1;
  v123 = BYTE8(v128);
  v122 = BYTE8(v129);
  v94 = v118;
  sub_24B8F3208(v93, v118, &qword_27F065510);
  LOBYTE(v90) = v124;
  LODWORD(v111) = v123;
  LODWORD(v112) = v122;
  v95 = v119;
  v96 = v121;
  *v119 = v120;
  v95[1] = v96;
  *(v95 + 32) = v75;
  *(v95 + 33) = v76;
  *(v95 + 5) = 0;
  *(v95 + 48) = 1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065CA8);
  sub_24B8F3208(v94, v95 + *(v97 + 64), &qword_27F065510);
  v98 = v95 + *(v97 + 80);
  v99 = v110;
  v100 = v109;
  v101 = v108;
  v102 = v75;
  v103 = v107;
  sub_24B95CA7C(v110, v109, v108, v107, v102, v76);
  sub_24B95CB0C(v99, v100, v101, v103, v102, v76);
  *v98 = 0;
  v98[8] = v90;
  *(v98 + 2) = v116;
  v98[24] = v111;
  *(v98 + 4) = v115;
  v98[40] = v112;
  v104 = v113;
  *(v98 + 6) = v114;
  *(v98 + 7) = v104;
  sub_24B8F35E4(v93, &qword_27F065510);
  sub_24B8F35E4(v94, &qword_27F065510);
  return sub_24B95CB0C(v99, v100, v101, v103, v102, v76);
}

uint64_t sub_24B95A518@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = *v1;
  v7 = v1[1];
  *v5 = sub_24BAA8BCC();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C88);
  if (v7)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  sub_24B959928(v9 | v6, &v5[*(v8 + 44)]);
  v10 = sub_24BAA90CC();
  sub_24BAA828C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_24B90294C(v5, a1, &qword_27F065C80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065C90);
  v20 = a1 + *(result + 36);
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_24B95A654@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = 16843009 * (result & 1);
  *(a2 + 4) = v2;
  return result;
}

uint64_t sub_24B95A674@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3)
  {
    v4 = 0x4014000000000000;
  }

  else
  {
    v4 = 0x4008000000000000;
  }

  v5 = sub_24BAA8AAC();
  v14 = 0;
  result = sub_24B95A654(v3, v13);
  v7 = v13[0];
  v8 = v13[1];
  v9 = v13[2];
  v10 = v13[3];
  v11 = v13[4];
  v12 = v14;
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 17) = v7;
  *(a1 + 18) = v8;
  *(a1 + 19) = v9;
  *(a1 + 20) = v10;
  *(a1 + 21) = v11;
  return result;
}

double sub_24B95A704@<D0>(char *a1@<X8>)
{
  v2 = *(sub_24BAA869C() + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_24BAA8B2C();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  __asm { FMOV            V0.2D, #2.0 }

  *a1 = _Q0;
  if (qword_27F063098 != -1)
  {
    swift_once();
  }

  v10 = qword_27F065980;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&a1[*(v11 + 52)] = v10;
  *&a1[*(v11 + 56)] = 256;

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v12 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0) + 36)];
  *v12 = v14;
  *(v12 + 1) = v15;
  result = *&v16;
  *(v12 + 2) = v16;
  return result;
}

uint64_t sub_24B95A848@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  if (result)
  {
    v2 = 257;
  }

  else
  {
    v2 = 2;
  }

  *(a2 + 1) = result;
  *(a2 + 2) = v2;
  return result;
}

uint64_t sub_24B95A868@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3)
  {
    v4 = 0x4000000000000000;
  }

  else
  {
    v4 = 0x4010000000000000;
  }

  v5 = sub_24BAA8AAC();
  result = sub_24B95A848(v3, v10);
  v7 = v10[0];
  v8 = v10[1];
  v9 = v11;
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 17) = v7;
  *(a1 + 18) = v8;
  *(a1 + 19) = v9;
  return result;
}

double sub_24B95A8E0@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_24BAA8AAC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065CB0);
  sub_24B8F384C(&qword_27F065CB8, &qword_27F065CB0);
  sub_24B95CB9C();
  sub_24BAA8D0C();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 18) = v6;
  *(a2 + 19) = v7;
  return result;
}

double sub_24B95A9E0@<D0>(char *a1@<X8>)
{
  v2 = *(sub_24BAA869C() + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_24BAA8B2C();
  (*(*(v4 - 8) + 104))(&a1[v2], v3, v4);
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = _Q0;
  if (qword_27F063098 != -1)
  {
    swift_once();
  }

  v10 = qword_27F065980;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&a1[*(v11 + 52)] = v10;
  *&a1[*(v11 + 56)] = 256;

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v12 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0) + 36)];
  *v12 = v14;
  *(v12 + 1) = v15;
  result = *&v16;
  *(v12 + 2) = v16;
  return result;
}

double sub_24B95AB38@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA869C();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = *(v3 + 28);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24BAA8B2C();
  (*(*(v11 - 8) + 104))(&v5[v9], v10, v11);
  __asm { FMOV            V0.2D, #2.0 }

  *v5 = _Q0;
  if (qword_27F063098 != -1)
  {
    swift_once();
  }

  v17 = qword_27F065980;
  sub_24B95B554(v5, v8, MEMORY[0x277CDFC08]);
  *&v8[*(v6 + 52)] = v17;
  *&v8[*(v6 + 56)] = 256;

  sub_24BAA9D1C();
  sub_24BAA83BC();
  sub_24B90294C(v8, a1, &qword_27F063CB8);
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0) + 36));
  v19 = v21[1];
  *v18 = v21[0];
  v18[1] = v19;
  result = *&v22;
  v18[2] = v22;
  return result;
}

double sub_24B95AD6C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  MEMORY[0x28223BE20](v2);
  v4 = v16 - v3;
  v5 = *(sub_24BAA869C() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_24BAA8B2C();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #2.0 }

  *v4 = _Q0;
  if (qword_27F063098 != -1)
  {
    swift_once();
  }

  *&v4[*(v2 + 52)] = qword_27F065980;
  *&v4[*(v2 + 56)] = 256;

  sub_24BAA9D1C();
  sub_24BAA83BC();
  sub_24B90294C(v4, a1, &qword_27F063CB8);
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0) + 36));
  v14 = v16[1];
  *v13 = v16[0];
  v13[1] = v14;
  result = *&v17;
  v13[2] = v17;
  return result;
}

uint64_t sub_24B95AF24@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  *a1 = sub_24BAA9CFC();
  a1[1] = v9;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0659D0) + 44);
  if (v4)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  return sub_24B9565A0(v11 | v3 | (v5 << 16), v6, v7, v8, a1 + v10);
}

uint64_t sub_24B95AFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_24BAA8BCC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065990);
  sub_24B9551B4(v2, a2 + *(v6 + 44));
  sub_24B95BAE4(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagesAndHomeScreenHeader);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_24B95B554(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PagesAndHomeScreenHeader);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065998);
  v10 = (a2 + *(result + 36));
  *v10 = sub_24B95CEB0;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_24B95B124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B95B204(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24B95B2CC()
{
  sub_24B936C64();
  if (v0 <= 0x3F)
  {
    sub_24B92646C(319, &qword_27F064968, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24B92646C(319, &qword_27F0659B0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24B95B3E0()
{
  result = qword_27F0659B8;
  if (!qword_27F0659B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065998);
    sub_24B8F384C(&qword_27F0659C0, &qword_27F0659C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0659B8);
  }

  return result;
}

uint64_t sub_24B95B498(uint64_t a1, int a2)
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

uint64_t sub_24B95B4E0(uint64_t result, int a2, int a3)
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

uint64_t sub_24B95B554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B95B5BC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24B95B640()
{
  result = qword_27F065A40;
  if (!qword_27F065A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065A20);
    sub_24B8F384C(&qword_27F065A48, &qword_27F065A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065A40);
  }

  return result;
}

unint64_t sub_24B95B6F8()
{
  result = qword_27F065A58;
  if (!qword_27F065A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065510);
    sub_24B95B784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065A58);
  }

  return result;
}

unint64_t sub_24B95B784()
{
  result = qword_27F065A60;
  if (!qword_27F065A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065518);
    sub_24B95B83C();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065A60);
  }

  return result;
}

unint64_t sub_24B95B83C()
{
  result = qword_27F065A68;
  if (!qword_27F065A68)
  {
    sub_24BAA869C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065A68);
  }

  return result;
}

unint64_t sub_24B95B894()
{
  result = qword_27F065A70;
  if (!qword_27F065A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0659F8);
    sub_24B95B920();
    sub_24B95B9D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065A70);
  }

  return result;
}

unint64_t sub_24B95B920()
{
  result = qword_27F065A78;
  if (!qword_27F065A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0659F0);
    sub_24B8F384C(&qword_27F065A80, &qword_27F065A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065A78);
  }

  return result;
}

unint64_t sub_24B95B9D8()
{
  result = qword_27F065A90;
  if (!qword_27F065A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0659E0);
    sub_24B8F384C(&qword_27F065A98, &qword_27F065AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065A90);
  }

  return result;
}

unint64_t sub_24B95BA90()
{
  result = qword_27F065AA8;
  if (!qword_27F065AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065AA8);
  }

  return result;
}

uint64_t sub_24B95BAE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B95BB4C(uint64_t a1)
{
  v2 = sub_24BAA869C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B95BBA8()
{
  result = qword_27F065B58;
  if (!qword_27F065B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065B28);
    sub_24B8F384C(&qword_27F065B60, &qword_27F065B30);
    sub_24B8F384C(&qword_27F065B68, &qword_27F065B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065B58);
  }

  return result;
}

unint64_t sub_24B95BC88()
{
  result = qword_27F065BD0;
  if (!qword_27F065BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065BC0);
    sub_24B8F384C(&qword_27F065BD8, &qword_27F065BE0);
    sub_24B8F384C(&qword_27F065BE8, &qword_27F065BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065BD0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = *(type metadata accessor for PagesAndHomeScreenHeader() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA82DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B95BEFC()
{
  type metadata accessor for PagesAndHomeScreenHeader();

  return sub_24B956408();
}

uint64_t getEnumTagSinglePayload for PagesAndHomeScreenHeader.DeviceView.TimeView(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PagesAndHomeScreenHeader.DeviceView.TimeView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeScreenColoringBookView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_24B95C274()
{
  result = qword_27F065C70;
  if (!qword_27F065C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065C70);
  }

  return result;
}

unint64_t sub_24B95C2CC()
{
  result = qword_27F065C78;
  if (!qword_27F065C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065C78);
  }

  return result;
}

uint64_t sub_24B95C400()
{
  v40 = sub_24BAA7F2C();
  v0 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063488);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_24BAA7DCC();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B38);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064B40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_24BAA7C1C();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24BAA7E8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_24BAA7E6C();
  v20 = sub_24BAA7E5C();
  v21 = v15;
  v22 = v4;
  v23 = v38;
  (*(v16 + 8))(v18, v21);
  v24 = v5;
  [v19 setLocale_];

  v25 = sub_24BAA9FDC();
  [v19 setLocalizedDateFormatFromTemplate_];

  v26 = v40;
  (*(v0 + 56))(v11, 1, 1, v40);
  v27 = sub_24BAA7F3C();
  (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
  sub_24BAA7BFC();
  sub_24BAA7BAC();
  sub_24BAA7BEC();
  v28 = v41;
  sub_24BAA7EBC();
  sub_24BAA7EEC();
  (*(v0 + 8))(v28, v26);
  v29 = *(v23 + 48);
  if (v29(v22, 1, v24) == 1)
  {
    v30 = v42;
    sub_24BAA7DBC();
    v31 = v29(v22, 1, v24);
    v32 = v30;
    if (v31 != 1)
    {
      sub_24B8F35E4(v22, &qword_27F063488);
    }
  }

  else
  {
    v32 = v42;
    (*(v23 + 32))(v42, v22, v24);
  }

  v33 = sub_24BAA7D8C();
  (*(v23 + 8))(v32, v24);
  v34 = [v19 stringFromDate_];

  v35 = sub_24BAAA01C();
  (*(v43 + 8))(v14, v44);
  return v35;
}

unint64_t sub_24B95CA00()
{
  result = qword_27F065CA0;
  if (!qword_27F065CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065CA0);
  }

  return result;
}

uint64_t sub_24B95CA7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_24B8F319C(a1, a2, a3 & 1);
  }

  else
  {

    return sub_24B95CAD0(a1, a2, a3);
  }
}

uint64_t sub_24B95CAD0(uint64_t a1, uint64_t a2, char a3)
{
  sub_24B8F319C(a1, a2, a3 & 1);
}

uint64_t sub_24B95CB0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_24B900910(a1, a2, a3 & 1);
  }

  else
  {

    return sub_24B95CB60(a1, a2, a3);
  }
}

uint64_t sub_24B95CB60(uint64_t a1, uint64_t a2, char a3)
{
  sub_24B900910(a1, a2, a3 & 1);
}

unint64_t sub_24B95CB9C()
{
  result = qword_27F065CC0;
  if (!qword_27F065CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065CC0);
  }

  return result;
}

unint64_t sub_24B95CBF4()
{
  result = qword_27F065CC8;
  if (!qword_27F065CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065C90);
    sub_24B8F384C(&qword_27F065CD0, &qword_27F065C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065CC8);
  }

  return result;
}

unint64_t sub_24B95CCB0()
{
  result = qword_27F065CD8;
  if (!qword_27F065CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065BA0);
    sub_24B8F384C(&qword_27F065CE0, &qword_27F063CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065CD8);
  }

  return result;
}

unint64_t sub_24B95CDB0()
{
  result = qword_27F065CF8;
  if (!qword_27F065CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F065D00);
    sub_24B8F384C(&qword_27F065CB8, &qword_27F065CB0);
    sub_24B95CB9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F065CF8);
  }

  return result;
}

uint64_t sub_24B95CECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24B95CFAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24B95D094()
{
  sub_24B919814(319, &qword_27F063A30, MEMORY[0x277CE02A8]);
  if (v0 <= 0x3F)
  {
    sub_24B965C70(319, &qword_27F063A38, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24B9663A4(319, &qword_27F065D28, &qword_27F065D30, &unk_24BAB3018, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24B8F47B4();
        if (v3 <= 0x3F)
        {
          sub_24B965C70(319, &qword_27F063A40, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24B9663A4(319, &qword_27F063A48, &qword_27F063A10, &unk_24BAB3020, MEMORY[0x277CE10B8]);
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

uint64_t sub_24B95D244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Trigger(0) - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  while (1)
  {
    swift_getAtKeyPath();
    if (v9)
    {
      break;
    }

    v5 += v6;
    if (!--v2)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_24B95D30C()
{
  v1 = sub_24BAA89FC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for AutomationListSection(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_24BAAA2BC();
    v7 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();
    sub_24B8FFD5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_24B95D464@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-v5];
  v15 = v1;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v7 = sub_24BAA7C2C();
  v9 = v8;
  v10 = sub_24BAA7C2C();
  v16 = v7;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  sub_24B8FF838();
  sub_24B965280();
  v20 = 0u;
  v21 = 0u;
  sub_24BAA9C2C();
  if (sub_24B95D30C())
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.55;
  }

  (*(v4 + 32))(a1, v6, v3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D48);
  *(a1 + *(result + 36)) = v12;
  return result;
}

__n128 sub_24B95D6B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AutomationListSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  v5 = v11;
  v6 = a1 + *(v4 + 36);
  *v15 = *v6;
  *&v15[16] = *(v6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B30);
  sub_24BAA9A1C();
  v10 = v11;
  v12 = *(a1 + *(v4 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D50);
  sub_24BAA9B8C();
  v7 = sub_24B95D894();
  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *a2 = sub_24BAA86FC();
  *(a2 + 8) = v8;
  *(a2 + 16) = sub_24B8FC66C;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 33) = v12;
  *(a2 + 36) = *(&v12 + 3);
  *(a2 + 40) = v5;
  *(a2 + 56) = v13;
  *(a2 + 57) = *v15;
  *(a2 + 60) = *&v15[3];
  result = *&v15[8];
  *(a2 + 64) = v10;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  *(a2 + 96) = *v15;
  *(a2 + 104) = *&v15[8];
  *(a2 + 120) = v7 & 1;
  return result;
}

uint64_t sub_24B95D894()
{
  if (*(v0 + *(type metadata accessor for AutomationListSection(0) + 28)))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24BAA81BC();

    if (v6 != 0xD000000000000023 || 0x800000024BAC1A00 != v7)
    {
      v1 = sub_24BAAA78C();

      if (v1)
      {
        goto LABEL_6;
      }

      swift_getKeyPath();
      swift_getKeyPath();

      sub_24BAA81BC();

      if (v6 != 0xD00000000000001ALL || 0x800000024BAC1A30 != v7)
      {
        v4 = sub_24BAAA78C();

        if (v4)
        {
          goto LABEL_6;
        }

        swift_getKeyPath();
        swift_getKeyPath();

        sub_24BAA81BC();

        if (v6 != 0xD000000000000023 || 0x800000024BAC1A50 != v7)
        {
          v5 = sub_24BAAA78C();

          v2 = v5 ^ 1;
          return v2 & 1;
        }
      }
    }

LABEL_6:
    v2 = 0;
    return v2 & 1;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24B95DB20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v99 = a1;
  v97 = type metadata accessor for AutomationListSection.addAutomationView(0);
  v3 = MEMORY[0x28223BE20](v97);
  v101 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v100 = (&v93 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D68);
  v7 = *(v6 - 8);
  v102 = v6;
  *&v103 = v7;
  MEMORY[0x28223BE20](v6);
  v94 = &v93 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D70);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v98 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v133 = &v93 - v12;
  v13 = *v1;
  if (!*v1)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_24BAA81BC();

  if (__PAIR128__(0x800000024BAC1A00, 0xD000000000000023) == v159)
  {

LABEL_5:
    v15 = *(v1 + 80);
    v159 = *(v1 + 64);
    v160 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    sub_24BAA9B8C();
    v130 = *(&v147[0] + 1);
    v131 = *&v147[0];
    v128 = *(&v147[1] + 1);
    v129 = *&v147[1];
    v159 = *(v1 + 96);
    *&v160 = *(v1 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D50);
    sub_24BAA9B8C();
    v126 = *(&v147[0] + 1);
    v127 = *&v147[0];
    v134 = *&v147[1];
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v16 = sub_24BAA86FC();
    v124 = v17;
    v125 = v16;
    goto LABEL_7;
  }

  v14 = sub_24BAAA78C();

  if (v14)
  {
    goto LABEL_5;
  }

  v124 = 0;
  v125 = 0;
  v130 = 0;
  v131 = 0;
  v128 = 0;
  v129 = 0;
  v126 = 0;
  v127 = 0;
  v134 = 0;
LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  if (__PAIR128__(0x800000024BAC1A80, 0xD00000000000001BLL) == v159)
  {

LABEL_10:
    v19 = *(v1 + 80);
    v159 = *(v1 + 64);
    v160 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    sub_24BAA9B8C();
    v122 = *(&v147[0] + 1);
    v123 = *&v147[0];
    v120 = *(&v147[1] + 1);
    v121 = *&v147[1];
    v159 = *(v1 + 96);
    *&v160 = *(v1 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D50);
    sub_24BAA9B8C();
    v118 = *(&v147[0] + 1);
    v119 = *&v147[0];
    v96 = *&v147[1];
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v20 = sub_24BAA86FC();
    v116 = v21;
    v117 = v20;
    goto LABEL_12;
  }

  v18 = sub_24BAAA78C();

  if (v18)
  {
    goto LABEL_10;
  }

  v116 = 0;
  v117 = 0;
  v122 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v96 = 0;
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  if (__PAIR128__(0x800000024BAC1AA0, 0xD000000000000016) == v159)
  {

    goto LABEL_15;
  }

  v22 = sub_24BAAA78C();

  if (v22)
  {
LABEL_15:
    v132 = v13;
    v159 = *(v1 + 96);
    *&v160 = *(v1 + 112);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D50);
    MEMORY[0x24C24FC10](v147, v23);
    v24 = *&v147[0];
    KeyPath = swift_getKeyPath();
    v26 = sub_24B95D244(KeyPath, v24);
    v28 = v27;

    v29 = *(v2 + 80);
    v159 = *(v2 + 64);
    v160 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    sub_24BAA9B8C();
    v115 = v147[0];
    v30 = *&v147[1];
    if (v28)
    {
      v31 = *(&v147[1] + 1);
      type metadata accessor for ActivityConfigViewModel();
      sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      v32 = v28;
      *&v154 = sub_24BAA86FC();
      *(&v154 + 1) = v33;
      v155 = v115;
      *&v156 = v30;
      *(&v156 + 1) = v31;
      LOBYTE(v157) = v26 & 1;
      *(&v157 + 1) = v32;
      v147[0] = v154;
      v147[1] = v115;
      v148 = v156;
      v149 = v157;
      LOBYTE(v153[0]) = 0;
      LOBYTE(v150) = 0;
      sub_24B9658F8(&v154, &v159);
      sub_24B965850();
      sub_24B9658A4();
      sub_24BAA8D0C();

      sub_24B965930(&v154);
    }

    else
    {
      v34 = *(&v147[1] + 1);
      type metadata accessor for ActivityConfigViewModel();
      sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      v35 = sub_24BAA86FC();
      v37 = v36;
      LOBYTE(v147[0]) = 0;
      sub_24BAA99EC();
      LOBYTE(v154) = 1;
      *&v147[0] = v35;
      *(&v147[0] + 1) = v37;
      v147[1] = v115;
      *&v148 = v30;
      *(&v148 + 1) = v34;
      LOBYTE(v149) = v159;
      *(&v149 + 1) = *(&v159 + 1);
      LOBYTE(v150) = 1;
      sub_24B965850();
      sub_24B9658A4();
      sub_24BAA8D0C();
    }

    v114 = v160;
    v115 = v159;
    v112 = v161;
    v113 = v162;
    v95 = v163;
    if (*(v2 + 120))
    {
      goto LABEL_19;
    }

LABEL_22:
    v106 = 0;
    v107 = 0;
    v43 = 0;
    v109 = 0;
    v110 = 0;
    v132 = 0;
    v105 = 0uLL;
    v47 = 0;
    v108 = 1;
    goto LABEL_24;
  }

  v114 = 0u;
  v115 = 0u;
  v95 = 255;
  v112 = 0u;
  v113 = 0u;
  if ((*(v1 + 120) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v159 = *(v2 + 96);
  *&v160 = *(v2 + 112);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D50);
  MEMORY[0x24C24FC10](v147, v38);
  v39 = *&v147[0];
  v40 = swift_getKeyPath();
  v41 = sub_24B95D244(v40, v39);
  v43 = v42;

  v132 = v43;
  if (v43)
  {
    v44 = *(v2 + 80);
    v159 = *(v2 + 64);
    v160 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    sub_24BAA9B8C();
    v43 = *&v147[0];
    v110 = *&v147[1];
    v108 = *(&v147[0] + 1);
    v109 = *(&v147[1] + 1);
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v45 = sub_24BAA86FC();
    v106 = v46;
    v107 = v45;
    LOBYTE(v147[0]) = 0;
    sub_24BAA99EC();
    *&v105 = v159;
    *(&v105 + 1) = *(&v159 + 1);
    v47 = v41 & 1;
  }

  else
  {
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v132 = 0;
    v105 = 0uLL;
    v47 = 0;
  }

LABEL_24:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v111 = v43;
  v104 = v47;
  if (__PAIR128__(0x800000024BAC1A30, 0xD00000000000001ALL) == v159)
  {
    v48 = v2;

    v49 = 1;
  }

  else
  {
    v50 = sub_24BAAA78C();

    if (v50)
    {
      v48 = v2;
      v49 = 1;
    }

    else
    {
      v159 = *(v2 + 96);
      *&v160 = *(v2 + 112);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D50);
      MEMORY[0x24C24FC10](v147, v51);
      swift_getKeyPath();
      v52 = swift_allocObject();
      v53 = *(v2 + 80);
      v52[5] = *(v2 + 64);
      v52[6] = v53;
      v52[7] = *(v2 + 96);
      *(v52 + 121) = *(v2 + 105);
      v54 = *(v2 + 16);
      v52[1] = *v2;
      v52[2] = v54;
      v55 = *(v2 + 48);
      v52[3] = *(v2 + 32);
      v52[4] = v55;
      v48 = v2;
      sub_24B965530(v2, &v159);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D78);
      sub_24B8F384C(&qword_27F065D80, &qword_27F065D30);
      sub_24B965568(&qword_27F065D88, type metadata accessor for Trigger);
      sub_24B9655B0();
      v56 = v94;
      v57 = v102;
      sub_24BAA9BFC();
      (*(v103 + 32))(v133, v56, v57);
      v49 = 0;
    }
  }

  v58 = v133;
  (*(v103 + 56))(v133, v49, 1, v102);
  v159 = *(v48 + 40);
  LOBYTE(v160) = *(v48 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B8C();
  v59 = v147[0];
  v60 = v147[1];
  v159 = *(v48 + 96);
  *&v160 = *(v48 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D50);
  sub_24BAA9B8C();
  v61 = *&v147[0];
  v103 = *(v147 + 8);
  v62 = swift_getKeyPath();
  v63 = v97;
  v64 = v100;
  *(v100 + *(v97 + 20)) = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v64 = sub_24BAA86FC();
  v64[1] = v65;
  v66 = v64 + v63[6];
  *v66 = v59;
  v66[16] = v60;
  v67 = v64 + v63[7];
  *v67 = v61;
  *(v67 + 8) = v103;
  v68 = v64 + v63[8];
  LOBYTE(v147[0]) = 0;
  sub_24BAA99EC();
  v69 = *(&v159 + 1);
  *v68 = v159;
  *(v68 + 1) = v69;
  v70 = v64 + v63[9];
  LOBYTE(v147[0]) = 0;
  sub_24BAA99EC();
  v71 = *(&v159 + 1);
  *v70 = v159;
  *(v70 + 1) = v71;
  v72 = v64 + v63[10];
  LOBYTE(v147[0]) = 0;
  sub_24BAA99EC();
  v73 = *(&v159 + 1);
  *v72 = v159;
  *(v72 + 1) = v73;
  v74 = v98;
  sub_24B8F3208(v58, v98, &qword_27F065D70);
  v75 = v101;
  sub_24B965960(v64, v101, type metadata accessor for AutomationListSection.addAutomationView);
  v76 = v99;
  *(&v147[0] + 1) = v106;
  *&v147[1] = v111;
  *(&v147[1] + 1) = v108;
  *&v148 = v110;
  *(&v148 + 1) = v109;
  *&v149 = v104;
  *(&v149 + 1) = v132;
  v150 = v105;
  v77 = v105;
  *(v99 + 264) = v149;
  *(v76 + 280) = v77;
  *&v147[0] = v107;
  v78 = v148;
  *&v135 = v125;
  *(&v135 + 1) = v124;
  *&v136 = v131;
  *(&v136 + 1) = v130;
  *&v137 = v129;
  *(&v137 + 1) = v128;
  *&v138 = v127;
  *(&v138 + 1) = v126;
  v139 = v134;
  *(v76 + 64) = v134;
  v79 = v138;
  *(v76 + 32) = v137;
  *(v76 + 48) = v79;
  v80 = v136;
  *v76 = v135;
  *(v76 + 16) = v80;
  *&v140 = v117;
  *(&v140 + 1) = v116;
  *&v141 = v123;
  *(&v141 + 1) = v122;
  *&v142 = v121;
  *(&v142 + 1) = v120;
  *&v143 = v119;
  *(&v143 + 1) = v118;
  v81 = v96;
  v144 = v96;
  v82 = v141;
  *(v76 + 72) = v140;
  v83 = v142;
  v84 = v143;
  *(v76 + 136) = v81;
  *(v76 + 120) = v84;
  *(v76 + 104) = v83;
  *(v76 + 88) = v82;
  v145[1] = v114;
  v145[0] = v115;
  v145[3] = v113;
  v145[2] = v112;
  v85 = v95;
  v146 = v95;
  v86 = v115;
  v87 = v114;
  v88 = v112;
  v89 = v113;
  *(v76 + 208) = v95;
  *(v76 + 176) = v88;
  *(v76 + 192) = v89;
  *(v76 + 144) = v86;
  *(v76 + 160) = v87;
  v90 = v147[1];
  *(v76 + 216) = v147[0];
  *(v76 + 248) = v78;
  *(v76 + 232) = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065DD0);
  sub_24B8F3208(v74, v76 + *(v91 + 96), &qword_27F065D70);
  sub_24B965960(v75, v76 + *(v91 + 112), type metadata accessor for AutomationListSection.addAutomationView);
  sub_24B8F3208(&v135, &v159, &qword_27F065DD8);
  sub_24B8F3208(&v140, &v159, &qword_27F065DE0);
  sub_24B8F3208(v145, &v159, &qword_27F065DE8);
  sub_24B8F3208(v147, &v159, &qword_27F065DF0);
  sub_24B9659C8(v64, type metadata accessor for AutomationListSection.addAutomationView);
  sub_24B8F35E4(v133, &qword_27F065D70);
  sub_24B9659C8(v75, type metadata accessor for AutomationListSection.addAutomationView);
  sub_24B8F35E4(v74, &qword_27F065D70);
  *&v159 = v107;
  *(&v159 + 1) = v106;
  *&v160 = v111;
  *(&v160 + 1) = v108;
  *&v161 = v110;
  *(&v161 + 1) = v109;
  *&v162 = v104;
  *(&v162 + 1) = v132;
  v163 = v105;
  sub_24B8F35E4(&v159, &qword_27F065DF0);
  v151[0] = v115;
  v151[1] = v114;
  v151[2] = v112;
  v151[3] = v113;
  v152 = v85;
  sub_24B8F35E4(v151, &qword_27F065DE8);
  v153[0] = v117;
  v153[1] = v116;
  v153[2] = v123;
  v153[3] = v122;
  v153[4] = v121;
  v153[5] = v120;
  v153[6] = v119;
  v153[7] = v118;
  v153[8] = v81;
  sub_24B8F35E4(v153, &qword_27F065DE0);
  *&v154 = v125;
  *(&v154 + 1) = v124;
  *&v155 = v131;
  *(&v155 + 1) = v130;
  *&v156 = v129;
  *(&v156 + 1) = v128;
  *&v157 = v127;
  *(&v157 + 1) = v126;
  v158 = v134;
  return sub_24B8F35E4(&v154, &qword_27F065DD8);
}

uint64_t sub_24B95ED80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B965960(a1, v6, type metadata accessor for Trigger);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
  }

  else
  {
    result = sub_24B9659C8(v6, type metadata accessor for Trigger);
    v8 = 0;
    v9 = 0;
  }

  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_24B95EE64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B965960(a1, v6, type metadata accessor for Trigger);
  result = swift_getEnumCaseMultiPayload();
  if (result == 3)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
  }

  else
  {
    result = sub_24B9659C8(v6, type metadata accessor for Trigger);
    v8 = 0;
    v9 = 0;
  }

  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_24B95EF48@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *&v80 = a1;
  v85 = a3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065E08);
  MEMORY[0x28223BE20](v73);
  v75 = &v70 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065DC0);
  MEMORY[0x28223BE20](v84);
  v77 = &v70 - v5;
  v6 = type metadata accessor for AutomationListSection.editAppAutomationView(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065E10);
  v9 = MEMORY[0x28223BE20](v71);
  v70 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - v11;
  v79 = type metadata accessor for AutomationListSection.editLocationAutomationView(0);
  MEMORY[0x28223BE20](v79);
  v14 = (&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065E18);
  MEMORY[0x28223BE20](v81);
  v83 = &v70 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065E20);
  MEMORY[0x28223BE20](v72);
  v76 = &v70 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065DA0);
  MEMORY[0x28223BE20](v82);
  v78 = &v70 - v17;
  v74 = type metadata accessor for AutomationListSection.editScheduleAutomationView(0);
  MEMORY[0x28223BE20](v74);
  v19 = (&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Trigger.Schedule(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Trigger(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B965960(v80, v26, type metadata accessor for Trigger);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v52 = *v26;
    v53 = v26[8];
    v54 = *(v26 + 2);
    v55 = a2[5];
    v89 = a2[4];
    v90 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    sub_24BAA9B8C();
    v80 = v93;
    v56 = v94;
    v57 = swift_allocObject();
    v58 = a2[5];
    v57[5] = a2[4];
    v57[6] = v58;
    v57[7] = a2[6];
    *(v57 + 121) = *(a2 + 105);
    v59 = a2[1];
    v57[1] = *a2;
    v57[2] = v59;
    v60 = a2[3];
    v57[3] = a2[2];
    v57[4] = v60;
    sub_24B965530(a2, &v89);
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    *v8 = sub_24BAA86FC();
    v8[1] = v61;
    v62 = v6[5];
    *(v8 + v62) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
    swift_storeEnumTagMultiPayload();
    v63 = (v8 + v6[6]);
    *v63 = v80;
    v63[1] = v56;
    v64 = v8 + v6[7];
    *v64 = sub_24B965AAC;
    *(v64 + 1) = v57;
    v64[16] = 0;
    v65 = v8 + v6[8];
    *v65 = v52;
    v65[8] = v53;
    *(v65 + 2) = v54;
    v66 = v8 + v6[9];
    *v66 = sub_24B91CCE8;
    *(v66 + 1) = 0;
    v66[16] = 0;
    sub_24B965960(v8, v75, type metadata accessor for AutomationListSection.editAppAutomationView);
    swift_storeEnumTagMultiPayload();
    sub_24B965568(&qword_27F065DC8, type metadata accessor for AutomationListSection.editAppAutomationView);
    v67 = v77;
    sub_24BAA8D0C();
    sub_24B8F3208(v67, v83, &qword_27F065DC0);
    swift_storeEnumTagMultiPayload();
    sub_24B96563C();
    sub_24B965768();
    sub_24BAA8D0C();
    sub_24B8F35E4(v67, &qword_27F065DC0);
    v37 = type metadata accessor for AutomationListSection.editAppAutomationView;
    v38 = v8;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v39 = *(v26 + 1);
    v89 = *v26;
    v90 = v39;
    v40 = *(v26 + 3);
    v91 = *(v26 + 2);
    v92 = v40;
    v41 = a2[5];
    v93 = a2[4];
    v94 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    sub_24BAA9B8C();
    v80 = v86;
    v42 = v87;
    v43 = v88;
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    *v14 = sub_24BAA86FC();
    v14[1] = v44;
    v45 = v79;
    v46 = *(v79 + 20);
    *(v14 + v46) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
    swift_storeEnumTagMultiPayload();
    v47 = v14 + *(v45 + 24);
    *v47 = v80;
    *(v47 + 2) = v42;
    *(v47 + 3) = v43;
    v48 = (v14 + *(v45 + 28));
    v49 = v90;
    *v48 = v89;
    v48[1] = v49;
    v50 = v92;
    v48[2] = v91;
    v48[3] = v50;
    (*(v24 + 56))(v12, 1, 1, v23);
    sub_24B8F3208(v12, v70, &qword_27F065E10);
    sub_24BAA99EC();
    sub_24B8F35E4(v12, &qword_27F065E10);
    sub_24B965960(v14, v76, type metadata accessor for AutomationListSection.editLocationAutomationView);
    swift_storeEnumTagMultiPayload();
    sub_24B965568(&qword_27F065DA8, type metadata accessor for AutomationListSection.editScheduleAutomationView);
    sub_24B965568(&qword_27F065DB0, type metadata accessor for AutomationListSection.editLocationAutomationView);
    v51 = v78;
    sub_24BAA8D0C();
    sub_24B8F3208(v51, v83, &qword_27F065DA0);
    swift_storeEnumTagMultiPayload();
    sub_24B96563C();
    sub_24B965768();
    sub_24BAA8D0C();
    sub_24B8F35E4(v51, &qword_27F065DA0);
    v37 = type metadata accessor for AutomationListSection.editLocationAutomationView;
    v38 = v14;
  }

  else if (EnumCaseMultiPayload)
  {
    swift_storeEnumTagMultiPayload();
    sub_24B965568(&qword_27F065DC8, type metadata accessor for AutomationListSection.editAppAutomationView);
    v68 = v77;
    sub_24BAA8D0C();
    sub_24B8F3208(v68, v83, &qword_27F065DC0);
    swift_storeEnumTagMultiPayload();
    sub_24B96563C();
    sub_24B965768();
    sub_24BAA8D0C();
    sub_24B8F35E4(v68, &qword_27F065DC0);
    v37 = type metadata accessor for Trigger;
    v38 = v26;
  }

  else
  {
    sub_24B966AA4(v26, v22, type metadata accessor for Trigger.Schedule);
    v28 = a2[5];
    v89 = a2[4];
    v90 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    sub_24BAA9B8C();
    v80 = v93;
    v29 = v94;
    v30 = v74;
    sub_24B965960(v22, v19 + *(v74 + 28), type metadata accessor for Trigger.Schedule);
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    *v19 = sub_24BAA86FC();
    v19[1] = v31;
    v32 = v30[5];
    *(v19 + v32) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FC0);
    swift_storeEnumTagMultiPayload();
    v33 = (v19 + v30[6]);
    *v33 = v80;
    v33[1] = v29;
    v34 = v19 + v30[8];
    LOBYTE(v93) = 0;
    sub_24BAA99EC();
    v35 = *(&v89 + 1);
    *v34 = v89;
    *(v34 + 1) = v35;
    sub_24B965960(v19, v76, type metadata accessor for AutomationListSection.editScheduleAutomationView);
    swift_storeEnumTagMultiPayload();
    sub_24B965568(&qword_27F065DA8, type metadata accessor for AutomationListSection.editScheduleAutomationView);
    sub_24B965568(&qword_27F065DB0, type metadata accessor for AutomationListSection.editLocationAutomationView);
    v36 = v78;
    sub_24BAA8D0C();
    sub_24B8F3208(v36, v83, &qword_27F065DA0);
    swift_storeEnumTagMultiPayload();
    sub_24B96563C();
    sub_24B965768();
    sub_24BAA8D0C();
    sub_24B8F35E4(v36, &qword_27F065DA0);
    sub_24B9659C8(v19, type metadata accessor for AutomationListSection.editScheduleAutomationView);
    v37 = type metadata accessor for Trigger.Schedule;
    v38 = v22;
  }

  return sub_24B9659C8(v38, v37);
}

uint64_t sub_24B95FDA8()
{
  type metadata accessor for AppIconCache();
  sub_24B965568(&qword_27F0651D0, type metadata accessor for AppIconCache);

  return sub_24BAA82FC();
}

uint64_t sub_24B95FE8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  WorkoutTriggerView = type metadata accessor for CreateWorkoutTriggerView(0);
  MEMORY[0x28223BE20](WorkoutTriggerView);
  v69 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0660B0);
  MEMORY[0x28223BE20](v81);
  v67 = &v65 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0660B8);
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v65 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0660C0);
  v75 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v7 = &v65 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0660C8);
  MEMORY[0x28223BE20](v77);
  v79 = &v65 - v8;
  v9 = type metadata accessor for EditExistingWorkoutTriggerView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0660D0);
  MEMORY[0x28223BE20](v76);
  v13 = &v65 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0660D8);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v15 = &v65 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0660E0);
  v74 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = &v65 - v16;
  v86 = *(v1 + 48);
  *&v87 = *(v1 + 64);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D50);
  MEMORY[0x24C24FC10](&v83, v17);
  v18 = v83;
  KeyPath = swift_getKeyPath();
  v20 = sub_24B95D244(KeyPath, v18);
  v22 = v21;

  if (v22)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v23 = v22;
    *(v11 + 3) = sub_24BAA86FC();
    *(v11 + 4) = v24;
    v25 = *(v9 + 24);
    *&v11[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
    swift_storeEnumTagMultiPayload();
    *v11 = v20 & 1;
    v75 = v23;
    *(v11 + 1) = v23;
    *(v11 + 2) = 0;
    v26 = *v2;
    if (*v2)
    {

      v27 = sub_24BAA813C();
      sub_24B966AA4(v11, v13, type metadata accessor for EditExistingWorkoutTriggerView);
      v28 = v76;
      v29 = &v13[*(v76 + 36)];
      *v29 = v27;
      v29[1] = v26;
      strcpy(v85, "workout");
      v85[1] = 0xE700000000000000;
      v30 = *(v2 + 32);
      v86 = *(v2 + 16);
      v87 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
      v31 = sub_24BAA9B8C();
      v86 = v83;
      v87 = v84;
      MEMORY[0x28223BE20](v31);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F80);
      v33 = sub_24B8F384C(&qword_27F065F88, &qword_27F065F80);
      v34 = sub_24B9681C0();
      sub_24BAA849C();
      v35 = v73;
      v36 = v72;
      sub_24BAA848C();
      (*(v71 + 8))(v15, v36);
      v37 = v74;
      v38 = v78;
      (*(v74 + 16))(v79, v35, v78);
      swift_storeEnumTagMultiPayload();
      *&v86 = v32;
      *(&v86 + 1) = v28;
      *&v87 = v33;
      *(&v87 + 1) = v34;
      swift_getOpaqueTypeConformance2();
      v39 = sub_24B9680D8();
      *&v86 = v32;
      *(&v86 + 1) = v81;
      *&v87 = v33;
      *(&v87 + 1) = v39;
      swift_getOpaqueTypeConformance2();
      sub_24BAA8D0C();

      return (*(v37 + 8))(v35, v38);
    }

    sub_24BAA86DC();
    __break(1u);
    goto LABEL_8;
  }

  v41 = v65;
  v42 = v67;
  v43 = v66;
  v44 = v7;
  v45 = swift_allocObject();
  v46 = *(v2 + 48);
  *(v45 + 48) = *(v2 + 32);
  *(v45 + 64) = v46;
  *(v45 + 80) = *(v2 + 64);
  v47 = *(v2 + 16);
  *(v45 + 16) = *v2;
  *(v45 + 32) = v47;
  v48 = v69;
  *v69 = sub_24B968080;
  *(v48 + 8) = v45;
  v49 = objc_allocWithZone(MEMORY[0x277D059E8]);
  sub_24B9680A0(v2, &v86);
  v50 = [v49 initWithEnabledSetting_];
  LOBYTE(v83) = [v50 isEnabled];
  *(&v83 + 1) = v50;
  sub_24BAA99EC();
  v51 = *(&v86 + 1);
  v52 = v87;
  *(v48 + 16) = v86;
  *(v48 + 24) = v51;
  *(v48 + 32) = v52;
  v53 = *(WorkoutTriggerView + 24);
  *(v48 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  v54 = *v2;
  if (!*v2)
  {
LABEL_8:
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

  v55 = sub_24BAA813C();
  sub_24B966AA4(v48, v42, type metadata accessor for CreateWorkoutTriggerView);
  v56 = v81;
  v57 = (v42 + *(v81 + 36));
  *v57 = v55;
  v57[1] = v54;
  strcpy(v85, "create workout");
  HIBYTE(v85[1]) = -18;
  v58 = *(v2 + 32);
  v86 = *(v2 + 16);
  v87 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
  sub_24BAA9B8C();
  v86 = v83;
  v87 = v84;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F80);
  v60 = sub_24B8F384C(&qword_27F065F88, &qword_27F065F80);
  v61 = sub_24B9680D8();
  sub_24BAA849C();
  sub_24BAA848C();
  (*(v70 + 8))(v41, v43);
  v62 = v75;
  v63 = v80;
  (*(v75 + 2))(v79, v44, v80);
  swift_storeEnumTagMultiPayload();
  v64 = sub_24B9681C0();
  *&v86 = v59;
  *(&v86 + 1) = v76;
  *&v87 = v60;
  *(&v87 + 1) = v64;
  swift_getOpaqueTypeConformance2();
  *&v86 = v59;
  *(&v86 + 1) = v56;
  *&v87 = v60;
  *(&v87 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  sub_24BAA8D0C();
  return (v62)[1](v44, v63);
}

uint64_t sub_24B960A6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B965960(a1, v6, type metadata accessor for Trigger);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
  }

  else
  {
    result = sub_24B9659C8(v6, type metadata accessor for Trigger);
    v8 = 0;
    v9 = 0;
  }

  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_24B960B94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  MindfulnessTriggerView = type metadata accessor for CreateMindfulnessTriggerView(0);
  MEMORY[0x28223BE20](MindfulnessTriggerView);
  v69 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066048);
  MEMORY[0x28223BE20](v81);
  v67 = &v65 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066050);
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v65 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066058);
  v75 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v7 = &v65 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066060);
  MEMORY[0x28223BE20](v77);
  v79 = &v65 - v8;
  v9 = type metadata accessor for EditExistingMindfulnessTriggerView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066068);
  MEMORY[0x28223BE20](v76);
  v13 = &v65 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066070);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v15 = &v65 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066078);
  v74 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = &v65 - v16;
  v87 = *(v1 + 48);
  *&v88 = *(v1 + 64);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D50);
  MEMORY[0x24C24FC10](&v83, v17);
  v18 = v83;
  KeyPath = swift_getKeyPath();
  v20 = sub_24B95D244(KeyPath, v18);
  v22 = v21;

  if (v22)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    v23 = v22;
    *(v11 + 3) = sub_24BAA86FC();
    *(v11 + 4) = v24;
    v25 = *(v9 + 24);
    *&v11[v25] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
    swift_storeEnumTagMultiPayload();
    *v11 = v20 & 1;
    v75 = v23;
    *(v11 + 1) = v23;
    *(v11 + 2) = 0;
    v26 = *v2;
    if (*v2)
    {

      v27 = sub_24BAA813C();
      sub_24B966AA4(v11, v13, type metadata accessor for EditExistingMindfulnessTriggerView);
      v28 = v76;
      v29 = &v13[*(v76 + 36)];
      *v29 = v27;
      v29[1] = v26;
      v85 = 0x6E6C7566646E696DLL;
      v86 = 0xEB00000000737365;
      v30 = *(v2 + 32);
      v87 = *(v2 + 16);
      v88 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
      v31 = sub_24BAA9B8C();
      v87 = v83;
      v88 = v84;
      MEMORY[0x28223BE20](v31);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066080);
      v33 = sub_24B8F384C(&qword_27F066088, &qword_27F066080);
      v34 = sub_24B967EDC();
      sub_24BAA849C();
      v35 = v73;
      v36 = v72;
      sub_24BAA848C();
      (*(v71 + 8))(v15, v36);
      v37 = v74;
      v38 = v78;
      (*(v74 + 16))(v79, v35, v78);
      swift_storeEnumTagMultiPayload();
      *&v87 = v32;
      *(&v87 + 1) = v28;
      *&v88 = v33;
      *(&v88 + 1) = v34;
      swift_getOpaqueTypeConformance2();
      v39 = sub_24B967DF4();
      *&v87 = v32;
      *(&v87 + 1) = v81;
      *&v88 = v33;
      *(&v88 + 1) = v39;
      swift_getOpaqueTypeConformance2();
      sub_24BAA8D0C();

      return (*(v37 + 8))(v35, v38);
    }

    sub_24BAA86DC();
    __break(1u);
    goto LABEL_8;
  }

  v41 = v65;
  v42 = v67;
  v43 = v66;
  v44 = v7;
  v45 = swift_allocObject();
  v46 = *(v2 + 48);
  *(v45 + 48) = *(v2 + 32);
  *(v45 + 64) = v46;
  *(v45 + 80) = *(v2 + 64);
  v47 = *(v2 + 16);
  *(v45 + 16) = *v2;
  *(v45 + 32) = v47;
  v48 = v69;
  *v69 = sub_24B967D9C;
  *(v48 + 8) = v45;
  v49 = objc_allocWithZone(MEMORY[0x277D059B8]);
  sub_24B967DBC(v2, &v87);
  v50 = [v49 initWithEnabledSetting_];
  LOBYTE(v83) = [v50 isEnabled];
  *(&v83 + 1) = v50;
  sub_24BAA99EC();
  v51 = *(&v87 + 1);
  v52 = v88;
  *(v48 + 16) = v87;
  *(v48 + 24) = v51;
  *(v48 + 32) = v52;
  v53 = *(MindfulnessTriggerView + 24);
  *(v48 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  v54 = *v2;
  if (!*v2)
  {
LABEL_8:
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

  v55 = sub_24BAA813C();
  sub_24B966AA4(v48, v42, type metadata accessor for CreateMindfulnessTriggerView);
  v56 = v81;
  v57 = (v42 + *(v81 + 36));
  *v57 = v55;
  v57[1] = v54;
  v85 = 0xD000000000000012;
  v86 = 0x800000024BAC1AE0;
  v58 = *(v2 + 32);
  v87 = *(v2 + 16);
  v88 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
  sub_24BAA9B8C();
  v87 = v83;
  v88 = v84;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066080);
  v60 = sub_24B8F384C(&qword_27F066088, &qword_27F066080);
  v61 = sub_24B967DF4();
  sub_24BAA849C();
  sub_24BAA848C();
  (*(v70 + 8))(v41, v43);
  v62 = v75;
  v63 = v80;
  (*(v75 + 2))(v79, v44, v80);
  swift_storeEnumTagMultiPayload();
  v64 = sub_24B967EDC();
  *&v87 = v59;
  *(&v87 + 1) = v76;
  *&v88 = v60;
  *(&v88 + 1) = v64;
  swift_getOpaqueTypeConformance2();
  *&v87 = v59;
  *(&v87 + 1) = v56;
  *&v88 = v60;
  *(&v88 + 1) = v61;
  swift_getOpaqueTypeConformance2();
  sub_24BAA8D0C();
  return (v62)[1](v44, v63);
}

uint64_t sub_24B961774@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Trigger(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B965960(a1, v6, type metadata accessor for Trigger);
  result = swift_getEnumCaseMultiPayload();
  if (result == 5)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
  }

  else
  {
    result = sub_24B9659C8(v6, type metadata accessor for Trigger);
    v8 = 0;
    v9 = 0;
  }

  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_24B961858(char a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Trigger(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3)
  {
    *v9 = a1 & 1;
    *(v9 + 1) = a2;
    swift_storeEnumTagMultiPayload();

    v10 = a2;
    sub_24B984444();
    v11 = sub_24B8DF718();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_24B99A4A0(0, v11[2] + 1, 1, v11);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_24B99A4A0(v12 > 1, v13 + 1, 1, v11);
    }

    v11[2] = v13 + 1;
    sub_24B966AA4(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, type metadata accessor for Trigger);
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    sub_24B8DFC94(v11);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B961B24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[1] = a1;
  GameControllerTriggerView = type metadata accessor for CreateGameControllerTriggerView(0);
  v4 = GameControllerTriggerView - 8;
  MEMORY[0x28223BE20](GameControllerTriggerView);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F70);
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F78);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = swift_allocObject();
  v15 = v2[1];
  v14[1] = *v2;
  v14[2] = v15;
  v16 = v2[3];
  v14[3] = v2[2];
  v14[4] = v16;
  *v6 = sub_24B967514;
  *(v6 + 1) = v14;
  v17 = objc_allocWithZone(MEMORY[0x277D059A8]);
  sub_24B96751C(v2, &v31);
  v18 = [v17 initWithEnabledSetting_];
  LOBYTE(v28) = [v18 isEnabled];
  *(&v28 + 1) = v18;
  sub_24BAA99EC();
  v19 = *(&v31 + 1);
  v20 = v32;
  v6[16] = v31;
  *(v6 + 3) = v19;
  *(v6 + 4) = v20;
  v21 = *(v4 + 32);
  *&v6[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  v22 = *v2;
  if (*v2)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

    v23 = sub_24BAA813C();
    sub_24B966AA4(v6, v9, type metadata accessor for CreateGameControllerTriggerView);
    v24 = &v9[*(v7 + 36)];
    *v24 = v23;
    v24[1] = v22;
    strcpy(v30, "create gaming");
    v30[7] = -4864;
    v25 = v2[2];
    v31 = v2[1];
    v32 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    sub_24BAA9B8C();
    v31 = v28;
    v32 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F80);
    sub_24B8F384C(&qword_27F065F88, &qword_27F065F80);
    sub_24B967554();
    sub_24BAA849C();
    sub_24BAA848C();
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B961F80(char a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Trigger(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3)
  {
    *v9 = a1 & 1;
    *(v9 + 1) = a2;
    swift_storeEnumTagMultiPayload();

    v10 = a2;
    sub_24B984444();
    v11 = sub_24B8DF718();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_24B99A4A0(0, v11[2] + 1, 1, v11);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_24B99A4A0(v12 > 1, v13 + 1, 1, v11);
    }

    v11[2] = v13 + 1;
    sub_24B966AA4(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, type metadata accessor for Trigger);
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();
    sub_24B8DFC94(v11);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B962238@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for EditExistingSmartTriggerView();
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066018);
  MEMORY[0x28223BE20](v27);
  v8 = &v25 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066020);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v25 - v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  LOBYTE(v29) = 0;
  v14 = v13;
  sub_24BAA99EC();
  v15 = *(&v31 + 1);
  v6[24] = v31;
  *(v6 + 4) = v15;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *(v6 + 5) = sub_24BAA86FC();
  *(v6 + 6) = v16;
  v17 = *(v4 + 36);
  *&v6[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  *v6 = v12;
  *(v6 + 1) = v14;
  *(v6 + 2) = 0;
  v18 = *v2;
  if (*v2)
  {

    v19 = sub_24BAA813C();
    sub_24B966AA4(v6, v8, type metadata accessor for EditExistingSmartTriggerView);
    v20 = &v8[*(v27 + 36)];
    *v20 = v19;
    v20[1] = v18;
    strcpy(v33, "smart trigger");
    v33[7] = -4864;
    v21 = *(v2 + 32);
    v31 = *(v2 + 16);
    v32 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    v22 = sub_24BAA9B8C();
    v31 = v29;
    v32 = v30;
    MEMORY[0x28223BE20](v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066028);
    sub_24B8F384C(&qword_27F066030, &qword_27F066028);
    sub_24B967CAC();
    sub_24BAA849C();
    v23 = v26;
    sub_24BAA848C();
    return (*(v9 + 8))(v11, v23);
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B962678@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = type metadata accessor for EditExistingGameControllerTriggerView(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F40);
  MEMORY[0x28223BE20](v26);
  v8 = &v24 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F48);
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v24 - v10;
  v12 = *(v2 + 48);
  v13 = *(v2 + 56);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v14 = v13;
  *(v6 + 3) = sub_24BAA86FC();
  *(v6 + 4) = v15;
  v16 = *(v4 + 32);
  *&v6[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  *v6 = v12;
  *(v6 + 1) = v14;
  *(v6 + 2) = 0;
  v17 = *v2;
  if (*v2)
  {

    v18 = sub_24BAA813C();
    sub_24B966AA4(v6, v8, type metadata accessor for EditExistingGameControllerTriggerView);
    v19 = &v8[*(v26 + 36)];
    *v19 = v18;
    v19[1] = v17;
    v32 = 0x676E696D6167;
    v33 = 0xE600000000000000;
    v20 = *(v2 + 32);
    v30 = *(v2 + 16);
    v31 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    v21 = sub_24BAA9B8C();
    v30 = v28;
    v31 = v29;
    MEMORY[0x28223BE20](v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F50);
    sub_24B8F384C(&qword_27F065F58, &qword_27F065F50);
    sub_24B9673D4();
    sub_24BAA849C();
    v22 = v25;
    sub_24BAA848C();
    return (*(v9 + 8))(v11, v22);
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B962A78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for EditExistingScheduleTriggerView(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065E88);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AutomationListSection.editScheduleAutomationView(0);
  v11 = v2 + *(v10 + 28);
  sub_24B965960(v11, v6, type metadata accessor for Trigger.Schedule);
  v12 = &v6[*(v4 + 28)];
  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v12 = sub_24BAA86FC();
  v12[1] = v13;
  v14 = *(v4 + 32);
  *&v6[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064910) + 28)] = 0;
  v15 = *v2;
  if (*v2)
  {

    v16 = sub_24BAA813C();
    sub_24B966AA4(v6, v9, type metadata accessor for EditExistingScheduleTriggerView);
    v17 = &v9[*(v7 + 36)];
    *v17 = v16;
    v17[1] = v15;
    v25 = 0x656C756465686373;
    v26 = 0xE900000000000020;
    sub_24BAAA7FC();
    sub_24BAA7DCC();
    sub_24B965568(&qword_27F064C00, MEMORY[0x277CC9578]);
    sub_24BAA9F1C();
    v18 = type metadata accessor for Trigger.Schedule(0);
    sub_24BAA9F1C();
    sub_24B92C2F4(&v30, *(v11 + *(v18 + 24)));
    sub_24BAAA81C();
    sub_24BAAA3DC();
    v30 = sub_24BAAA84C();
    v19 = sub_24BAAA76C();
    MEMORY[0x24C250160](v19);

    v28 = v25;
    v29 = v26;
    v20 = v2 + *(v10 + 24);
    v21 = *(v20 + 1);
    v30 = *v20;
    v31 = v21;
    v32 = *(v20 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    v22 = sub_24BAA9B8C();
    v30 = v25;
    v31 = v26;
    v32 = v27;
    MEMORY[0x28223BE20](v22);
    type metadata accessor for ScheduleTriggerRowView();
    sub_24B965568(&qword_27F065E90, type metadata accessor for ScheduleTriggerRowView);
    sub_24B966B14();
    return sub_24BAA849C();
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B962ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AutomationListSection.editScheduleAutomationView(0);
  sub_24B965960(a1 + *(v4 + 28), a2, type metadata accessor for Trigger.Schedule);
  KeyPath = swift_getKeyPath();
  v6 = type metadata accessor for ScheduleTriggerRowView();
  *(a2 + v6[5]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v7 = (a2 + v6[6]);
  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v7 = sub_24BAA86FC();
  v7[1] = v8;
  v9 = v6[7];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063FC0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24B96302C(uint64_t a1)
{
  v2 = sub_24BAA7F2C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24BAA897C();
}

uint64_t sub_24B9630F8@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = type metadata accessor for AutomationListSection.editLocationAutomationView(0);
  v50 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v51 = v3;
  v52 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EditExistingLocationTriggerView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065EA8);
  MEMORY[0x28223BE20](v47);
  v8 = &v42 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065EB0);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v10 = &v42 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065EB8);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v42 - v11;
  v43 = v2;
  v12 = *(v2 + 28);
  v54 = v1;
  v13 = (v1 + v12);
  v14 = *(v1 + v12 + 16);
  v67 = *(v1 + v12);
  v68 = v14;
  v15 = *(v1 + v12 + 48);
  v69 = *(v1 + v12 + 32);
  v70 = v15;
  if (qword_27F063108 != -1)
  {
    swift_once();
  }

  type metadata accessor for LocationSuggestions(0);
  sub_24B965568(&qword_27F065EC0, type metadata accessor for LocationSuggestions);

  *v6 = sub_24BAA84DC();
  *(v6 + 1) = v16;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *(v6 + 13) = sub_24BAA86FC();
  *(v6 + 14) = v17;
  v18 = *(v4 + 32);
  *&v6[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  v19 = v68;
  *(v6 + 2) = v67;
  *(v6 + 3) = v19;
  v20 = v70;
  *(v6 + 4) = v69;
  *(v6 + 5) = v20;
  *(v6 + 12) = 0;
  v21 = objc_allocWithZone(type metadata accessor for ReverseGeocoder(0));
  sub_24B966C04(&v67, &v60);
  sub_24B966C04(&v67, &v60);
  sub_24B91315C(&v67);
  sub_24B965568(&qword_27F065EC8, type metadata accessor for ReverseGeocoder);
  *(v6 + 2) = sub_24BAA84DC();
  *(v6 + 3) = v22;
  v23 = *v54;
  if (*v54)
  {

    v24 = sub_24BAA813C();
    sub_24B966AA4(v6, v8, type metadata accessor for EditExistingLocationTriggerView);
    v25 = v13[1];
    v63 = *v13;
    v26 = v13[2];
    v27 = v13[3];
    v64 = v25;
    v65 = v26;
    v28 = &v8[*(v47 + 36)];
    *v28 = v24;
    v28[1] = v23;
    v55 = 0x6E6F697461636F6CLL;
    v56 = 0xE900000000000020;
    v66 = v27;
    sub_24BAAA7FC();
    sub_24B929618();
    v60 = sub_24BAAA84C();
    v29 = sub_24BAAA76C();
    MEMORY[0x24C250160](v29);

    v58 = v55;
    v59 = v56;
    v30 = v54;
    v31 = v54 + *(v43 + 24);
    v32 = *(v31 + 1);
    v60 = *v31;
    v61 = v32;
    v62 = *(v31 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    v33 = sub_24BAA9B8C();
    v60 = v55;
    v61 = v56;
    v62 = v57;
    MEMORY[0x28223BE20](v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065ED0);
    sub_24B8F384C(&qword_27F065ED8, &qword_27F065ED0);
    sub_24B966C68();
    sub_24BAA849C();
    v34 = v45;
    v35 = v46;
    sub_24BAA848C();
    (*(v44 + 8))(v10, v35);
    v36 = v52;
    sub_24B965960(v30, v52, type metadata accessor for AutomationListSection.editLocationAutomationView);
    v37 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v38 = swift_allocObject();
    sub_24B966AA4(v36, v38 + v37, type metadata accessor for AutomationListSection.editLocationAutomationView);
    v39 = v53;
    (*(v48 + 32))(v53, v34, v49);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065EF0);
    v41 = (v39 + *(result + 36));
    *v41 = sub_24B96705C;
    v41[1] = v38;
    v41[2] = 0;
    v41[3] = 0;
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B963914@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AutomationListSection.editLocationAutomationView(0) + 28));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_24B966C04(v8, &v7);
  return sub_24BA8F968(v8, a2);
}

uint64_t sub_24B963978(void *a1)
{
  if (*a1)
  {

    sub_24B9848F0();
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B963A1C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = type metadata accessor for EditExistingAppTriggerView();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065EF8);
  MEMORY[0x28223BE20](v38);
  v7 = &v36 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F00);
  MEMORY[0x28223BE20](v44);
  v41 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F08);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v36 - v10;
  v37 = type metadata accessor for AutomationListSection.editAppAutomationView(0);
  v11 = v1 + *(v37 + 32);
  v12 = *v11;
  v13 = v11[8];
  v14 = *(v11 + 2);
  *(v5 + 4) = sub_24B91CCE8;
  *(v5 + 5) = 0;
  v5[48] = 0;
  type metadata accessor for ActivityConfigViewModel();
  sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v15 = v12;
  v16 = v14;
  *(v5 + 7) = sub_24BAA86FC();
  *(v5 + 8) = v17;
  v18 = *(v3 + 36);
  *&v5[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
  swift_storeEnumTagMultiPayload();
  *v5 = v15;
  v39 = v13;
  v5[8] = v13;
  v19 = v1;
  *(v5 + 2) = v16;
  *(v5 + 3) = 0;
  v20 = *v1;
  if (*v1)
  {

    v21 = sub_24BAA813C();
    sub_24B966AA4(v5, v7, type metadata accessor for EditExistingAppTriggerView);
    v22 = &v7[*(v38 + 36)];
    *v22 = v21;
    v22[1] = v20;
    v23 = v37;
    type metadata accessor for AppIconCache();
    sub_24B965568(&qword_27F0651D0, type metadata accessor for AppIconCache);
    v24 = sub_24BAA82FC();
    v25 = sub_24BAA813C();
    v26 = v7;
    v27 = v41;
    sub_24B967088(v26, v41);
    v28 = (v27 + *(v44 + 36));
    *v28 = v25;
    v28[1] = v24;
    v46 = 544239713;
    v47 = 0xE400000000000000;
    sub_24BAAA7FC();
    sub_24BAAA3DC();
    sub_24BAAA81C();
    sub_24BAAA3DC();
    v51 = sub_24BAAA84C();
    v29 = sub_24BAAA76C();
    MEMORY[0x24C250160](v29);

    v49 = v46;
    v50 = v47;
    v30 = v19 + *(v23 + 24);
    v31 = *(v30 + 1);
    v51 = *v30;
    v52 = v31;
    v53 = *(v30 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
    v32 = sub_24BAA9B8C();
    v51 = v46;
    v52 = v47;
    v53 = v48;
    MEMORY[0x28223BE20](v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F10);
    sub_24B967100();
    sub_24B9671E8();
    v33 = v40;
    sub_24BAA849C();
    v34 = v43;
    sub_24BAA848C();
    return (*(v42 + 8))(v33, v34);
  }

  else
  {
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24B963F8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AutomationListSection.editAppAutomationView(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for AppTriggerRowView();
  v8 = a2 + *(v7 + 20);
  *v8 = sub_24B91CCE8;
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = a2 + *(v7 + 24);
  *v9 = v4;
  v9[8] = v5;
  *(v9 + 2) = v6;
  type metadata accessor for AppIconCache();
  sub_24B965568(&qword_27F0651D0, type metadata accessor for AppIconCache);
  v10 = v4;
  v11 = v6;
  v12 = sub_24BAA82FC();
  v13 = sub_24BAA813C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F10);
  v15 = (a2 + *(result + 36));
  *v15 = v13;
  v15[1] = v12;
  return result;
}

uint64_t sub_24B964108@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_24BAA8FBC();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AutomationListSection.addAutomationView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v38[1] = v8;
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065FA0);
  MEMORY[0x28223BE20](v40);
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065FA8);
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  MEMORY[0x28223BE20](v12);
  v41 = v38 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065FB0);
  v16 = *(v15 - 8);
  v45 = v15;
  v46 = v16;
  MEMORY[0x28223BE20](v15);
  v42 = v38 - v17;
  v39 = type metadata accessor for AutomationListSection.addAutomationView;
  sub_24B965960(v2, v9, type metadata accessor for AutomationListSection.addAutomationView);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v38[0] = type metadata accessor for AutomationListSection.addAutomationView;
  sub_24B966AA4(v9, v19 + v18, type metadata accessor for AutomationListSection.addAutomationView);
  v51 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065FB8);
  sub_24B967720(&qword_27F065FC0, &qword_27F065FB8, &unk_24BAB3968, sub_24B9676F0);
  sub_24BAA9A5C();
  LOBYTE(v7) = sub_24B964A34();
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v7 & 1;
  v22 = v40;
  v23 = &v11[*(v40 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_24B9027F8;
  v23[2] = v21;
  v24 = v2 + *(v6 + 32);
  v25 = *v24;
  v26 = *(v24 + 8);
  LOBYTE(v24) = *(v24 + 16);
  v52 = v25;
  v53 = v26;
  LOBYTE(v54) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B8C();
  sub_24B965960(v2, v9, v39);
  v27 = swift_allocObject();
  sub_24B966AA4(v9, v27 + v18, v38[0]);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065FE8);
  v36 = sub_24B967A98();
  v37 = sub_24B967B7C();
  v29 = v41;
  sub_24BAA968C();

  sub_24B8F35E4(v11, &qword_27F065FA0);
  v30 = v47;
  sub_24BAA8FAC();
  v52 = v22;
  v53 = v28;
  v54 = v36;
  v55 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v42;
  v32 = v43;
  sub_24BAA95FC();
  (*(v48 + 8))(v30, v49);
  (*(v44 + 8))(v29, v32);
  v52 = v32;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v45;
  sub_24BAA94DC();
  return (*(v46 + 8))(v33, v34);
}

uint64_t sub_24B964730()
{
  type metadata accessor for AutomationListSection.addAutomationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  return sub_24BAA9B6C();
}

double sub_24B9647A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v36 = sub_24BAA7C2C();
  *&v37 = v3;
  sub_24B8F5E3C();
  v4 = sub_24BAA93CC();
  v6 = v5;
  v8 = v7;
  sub_24BAA916C();
  v9 = sub_24BAA939C();
  v11 = v10;
  v13 = v12;

  sub_24B900910(v4, v6, v8 & 1);

  sub_24BAA974C();
  v33 = sub_24BAA933C();
  v15 = v14;
  LOBYTE(v4) = v16;
  v18 = v17;

  sub_24B900910(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v39 = v4 & 1;
  v38 = 1;
  LOBYTE(v9) = sub_24BAA90EC();
  v21 = a1 + *(type metadata accessor for AutomationListSection.addAutomationView(0) + 28);
  v36 = *v21;
  v37 = *(v21 + 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065D50);
  MEMORY[0x24C24FC10](&v35, v22);

  sub_24BAA828C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  LOBYTE(v35) = 0;
  v31 = sub_24BAA910C();
  *a2 = v33;
  *(a2 + 8) = v15;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v18;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v20;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = v9;
  *(a2 + 80) = v24;
  *(a2 + 88) = v26;
  *(a2 + 96) = v28;
  *(a2 + 104) = v30;
  *(a2 + 112) = 0;
  *(a2 + 120) = v31;
  result = 0.0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 1;
  return result;
}

uint64_t sub_24B964A34()
{
  v1 = type metadata accessor for FocusSystemConfigurationAction(0);
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v41 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v40 = v37 - v4;
  v5 = type metadata accessor for FocusConfigurationAction(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v43 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - v9;
  v11 = *v0;
  if (!*v0)
  {
    goto LABEL_35;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  if (v44 == 0xD00000000000001ALL && 0x800000024BAC1A30 == v45)
  {
  }

  else
  {
    v12 = sub_24BAAA78C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  v37[1] = v11;

  v13 = v44;
  v14 = *(v44 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v42 = v5;
    while (v15 < *(v13 + 16))
    {
      v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v18 = *(v6 + 72);
      sub_24B965960(v13 + v17 + v18 * v15, v10, type metadata accessor for FocusConfigurationAction);
      if (v10[*(v5 + 20)])
      {
        sub_24B9659C8(v10, type metadata accessor for FocusConfigurationAction);
      }

      else
      {
        sub_24B966AA4(v10, v43, type metadata accessor for FocusConfigurationAction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24B914E10(0, *(v16 + 16) + 1, 1);
          v16 = v44;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_24B914E10(v20 > 1, v21 + 1, 1);
          v16 = v44;
        }

        *(v16 + 16) = v21 + 1;
        sub_24B966AA4(v43, v16 + v17 + v21 * v18, type metadata accessor for FocusConfigurationAction);
        v5 = v42;
      }

      if (v14 == ++v15)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_18:

  v22 = *(v16 + 16);

  if (v22)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  v24 = v44;
  v25 = *(v44 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = MEMORY[0x277D84F90];
    v29 = v38;
    v28 = v39;
    v30 = v40;
    while (v26 < *(v24 + 16))
    {
      v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v32 = *(v29 + 72);
      sub_24B965960(v24 + v31 + v32 * v26, v30, type metadata accessor for FocusSystemConfigurationAction);
      if (*(v30 + *(v28 + 20)))
      {
        sub_24B9659C8(v30, type metadata accessor for FocusSystemConfigurationAction);
      }

      else
      {
        sub_24B966AA4(v30, v41, type metadata accessor for FocusSystemConfigurationAction);
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v44 = v27;
        if ((v33 & 1) == 0)
        {
          sub_24B914DCC(0, *(v27 + 16) + 1, 1);
          v27 = v44;
        }

        v35 = *(v27 + 16);
        v34 = *(v27 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_24B914DCC(v34 > 1, v35 + 1, 1);
          v27 = v44;
        }

        *(v27 + 16) = v35 + 1;
        sub_24B966AA4(v41, v27 + v31 + v35 * v32, type metadata accessor for FocusSystemConfigurationAction);
        v30 = v40;
      }

      if (v25 == ++v26)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    type metadata accessor for ActivityConfigViewModel();
    sub_24B965568(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_32:

  v36 = *(v27 + 16);

  return v36 == 0;
}