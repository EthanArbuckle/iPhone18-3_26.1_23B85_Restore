double sub_24F1746A4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  type metadata accessor for ShelfView.Grid(0);
  sub_24F927618();
  sub_24F9238C8();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8 & 1;
  result = *&v9;
  *(a2 + 40) = v9;
  return result;
}

uint64_t sub_24F174764@<X0>(_BYTE *a1@<X8>)
{
  if ((*v1 | 2) == 0x12)
  {
    result = sub_24F924E28();
    v4 = v5;
  }

  else
  {
    result = sub_24F924E28();
    v4 = v6;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24F174804@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9D0);
  v3 = *(v2 - 8);
  v55 = v2;
  v56 = v3;
  MEMORY[0x28223BE20](v2);
  v52 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v9 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v11 = &v51 - v10;
  v12 = type metadata accessor for ShelfView.ShelfDivider(0);
  v13 = (v1 + *(v12 + 28));
  v14 = v13[3];
  v15 = v13[4];
  v53 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v58 = *v1;
  type metadata accessor for Shelf();

  sub_24F928A78();
  sub_24E60169C(v1 + *(v12 + 20), v8, &unk_27F23A680);
  v16 = *(v6 + 56);
  v17 = (*(v15 + 32))(v11, v8, &v8[v16], v14, v15);
  (*(v9 + 8))(v11, v54);
  sub_24E601704(&v8[v16], &unk_27F23A690);
  sub_24E601704(v8, &unk_27F23A690);
  if (v17)
  {
    v18 = v52;
    sub_24F9271E8();
    v19 = sub_24F925818();
    sub_24F174BD4();
    sub_24F923318();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E08) + 36);
    *v28 = v19;
    *(v28 + 8) = v21;
    *(v28 + 16) = v23;
    *(v28 + 24) = v25;
    *(v28 + 32) = v27;
    *(v28 + 40) = 0;
    v29 = sub_24F925838();
    sub_24F923318();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A9D8) + 36);
    *v38 = v29;
    *(v38 + 8) = v31;
    *(v38 + 16) = v33;
    *(v38 + 24) = v35;
    *(v38 + 32) = v37;
    *(v38 + 40) = 0;
    v39 = sub_24F925858();
    sub_24F923318();
    v40 = v55;
    v41 = v18 + *(v55 + 36);
    *v41 = v39;
    *(v41 + 8) = v42;
    *(v41 + 16) = v43;
    *(v41 + 24) = v44;
    *(v41 + 32) = v45;
    *(v41 + 40) = 0;
    v46 = v57;
    sub_24E6009C8(v18, v57, &qword_27F23A9D0);
    v47 = 0;
    v48 = v46;
    v49 = v40;
  }

  else
  {
    v47 = 1;
    v48 = v57;
    v49 = v55;
  }

  return (*(v56 + 56))(v48, v47, 1, v49);
}

double sub_24F174BD4()
{
  v1 = v0;
  v74 = sub_24F924848();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F925218();
  v100 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v71 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v96);
  v80 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v95 = &v70 - v11;
  MEMORY[0x28223BE20](v12);
  v79 = &v70 - v13;
  MEMORY[0x28223BE20](v14);
  v94 = &v70 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  v92 = sub_24F923E98();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PageEnvironment();
  MEMORY[0x28223BE20](v98);
  v99 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  MEMORY[0x28223BE20](v84);
  v26 = &v70 - v25;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v28 = &v70 - v27;
  v29 = type metadata accessor for ShelfView.ShelfDivider(0);
  sub_24E615E00(v1 + *(v29 + 28), &v104);
  v82 = v106;
  v83 = v105;
  v81 = __swift_project_boxed_opaque_existential_1(&v104, v105);
  v101 = *v1;
  type metadata accessor for Shelf();

  v85 = v28;
  sub_24F928A78();
  v30 = v1 + *(v29 + 20);
  v89 = v26;
  sub_24E60169C(v30, v26, &unk_27F23A680);
  v88 = v23;
  sub_24F769788(v23);
  v97 = v29;
  v91 = v1;
  sub_24F769764(v21);
  v31 = v93;
  v32 = v100;
  v33 = *(v100 + 104);
  v77 = *MEMORY[0x277CE0558];
  v76 = v33;
  v33(v18);
  v75 = *(v32 + 56);
  v75(v18, 0, 1, v3);
  v34 = *(v96 + 48);
  sub_24E60169C(v21, v31, &qword_27F215598);
  sub_24E60169C(v18, v31 + v34, &qword_27F215598);
  v35 = *(v32 + 48);
  if (v35(v31, 1, v3) == 1)
  {
    sub_24E601704(v18, &qword_27F215598);
    sub_24E601704(v21, &qword_27F215598);
    if (v35(v31 + v34, 1, v3) == 1)
    {
      sub_24E601704(v31, &qword_27F215598);
      v78 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24E60169C(v31, v94, &qword_27F215598);
  if (v35(v31 + v34, 1, v3) == 1)
  {
    sub_24E601704(v18, &qword_27F215598);
    sub_24E601704(v21, &qword_27F215598);
    (*(v100 + 8))(v94, v3);
LABEL_6:
    sub_24E601704(v31, &unk_27F254F20);
    v78 = 0;
    goto LABEL_8;
  }

  v36 = v71;
  (*(v100 + 32))(v71, v31 + v34, v3);
  sub_24F178F7C(&qword_27F215650, MEMORY[0x277CE0570]);
  v78 = sub_24F92AFF8();
  v37 = *(v100 + 8);
  v37(v36, v3);
  sub_24E601704(v18, &qword_27F215598);
  sub_24E601704(v21, &qword_27F215598);
  v37(v94, v3);
  sub_24E601704(v93, &qword_27F215598);
LABEL_8:
  v38 = v91;
  v39 = v79;
  sub_24F769764(v79);
  v40 = v95;
  v76(v95, v77, v3);
  v75(v40, 0, 1, v3);
  v41 = *(v96 + 48);
  v42 = v80;
  sub_24E60169C(v39, v80, &qword_27F215598);
  sub_24E60169C(v40, v42 + v41, &qword_27F215598);
  if (v35(v42, 1, v3) == 1)
  {
    sub_24E601704(v40, &qword_27F215598);
    sub_24E601704(v39, &qword_27F215598);
    if (v35(v42 + v41, 1, v3) == 1)
    {
      sub_24E601704(v42, &qword_27F215598);
      LODWORD(v43) = 1;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v44 = v70;
  sub_24E60169C(v42, v70, &qword_27F215598);
  if (v35(v42 + v41, 1, v3) == 1)
  {
    sub_24E601704(v95, &qword_27F215598);
    sub_24E601704(v39, &qword_27F215598);
    (*(v100 + 8))(v44, v3);
LABEL_13:
    sub_24E601704(v42, &unk_27F254F20);
    LODWORD(v43) = 0;
    goto LABEL_15;
  }

  v45 = v100;
  v46 = v39;
  v47 = v71;
  (*(v100 + 32))(v71, v42 + v41, v3);
  sub_24F178F7C(&qword_27F215650, MEMORY[0x277CE0570]);
  LODWORD(v43) = sub_24F92AFF8();
  v48 = *(v45 + 8);
  v48(v47, v3);
  sub_24E601704(v95, &qword_27F215598);
  sub_24E601704(v46, &qword_27F215598);
  v48(v44, v3);
  sub_24E601704(v42, &qword_27F215598);
LABEL_15:
  v49 = v97;
  sub_24F7699B0(&v99[*(v98 + 28)]);
  v50 = v38 + *(v49 + 44);
  v51 = *(v50 + 8);
  v52 = *(v50 + 24);
  if (*(v50 + 32) == 1)
  {
    v53 = *(v50 + 8);
    v54 = *(v50 + 24);
  }

  else
  {
    v55 = *v50;
    v56 = *(v50 + 16);

    sub_24F92BDC8();
    v57 = sub_24F9257A8();
    LODWORD(v100) = v43;
    v58 = v57;
    sub_24F921FD8();

    v59 = v72;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v55, v51, v56, v52, 0);
    v60 = *(v73 + 8);
    v61 = v74;
    v60(v59, v74);
    v53 = v102;

    sub_24F92BDC8();
    v43 = sub_24F9257A8();
    sub_24F921FD8();

    LOBYTE(v43) = v100;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v55, v51, v56, v52, 0);
    v60(v59, v61);
    v54 = v103;
  }

  v62 = *(v84 + 48);
  v63 = v53 + v54 > 0.0;
  v64 = v99;
  (*(v90 + 32))(v99, v88, v92);
  v65 = v98;
  *(v64 + *(v98 + 20)) = v78 & 1;
  *(v64 + *(v65 + 24)) = v43 & 1;
  *(v64 + *(v65 + 32)) = v63;
  v66 = v89;
  v67 = v85;
  v68 = (*(v82 + 40))(v85, v89, &v89[v62], v64, v83);
  sub_24F17665C(v64, type metadata accessor for PageEnvironment);
  (*(v86 + 8))(v67, v87);
  sub_24E601704(v66 + v62, &unk_27F23A690);
  sub_24E601704(v66, &unk_27F23A690);
  __swift_destroy_boxed_opaque_existential_1(&v104);
  return v68;
}

uint64_t sub_24F1759EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215AE8) + 36);
  sub_24E615E00(a2, v6);
  *(v6 + 40) = swift_getKeyPath();
  *(v6 + 48) = 0;
  return sub_24E60169C(a1, a3, &qword_27F215AE0);
}

uint64_t sub_24F175A74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v40 = sub_24F926CE8();
  if (qword_27F2119B8 != -1)
  {
LABEL_16:
    swift_once();
  }

  v6 = sub_24F924EC8();
  __swift_project_value_buffer(v6, qword_27F255A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AA18);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA00);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D8);
  v9 = sub_24F178254();
  v10 = sub_24F09D94C();
  *v66 = MEMORY[0x277CE1428];
  *&v66[8] = v8;
  *&v66[16] = v9;
  *&v66[24] = MEMORY[0x277CE1410];
  *&v66[32] = MEMORY[0x277CE1410];
  *&v66[40] = v10;
  swift_getOpaqueTypeConformance2();
  *&v65 = v7;
  *(&v65 + 1) = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_24F9263D8();
  v11 = sub_24F927618();
  v13 = v12;
  v14 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AAD8) + 36));
  *v14 = sub_24F178C7C;
  v14[1] = v40;
  v14[2] = v11;
  v14[3] = v13;
  v15 = sub_24F927618();
  v40 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226848);
  v17 = swift_allocObject();
  *&v65 = 0x203A736D657469;
  *(&v65 + 1) = 0xE700000000000000;
  __src[0] = a1;
  v18 = sub_24F92CD88();
  MEMORY[0x253050C20](v18);

  v17[4] = 0x203A736D657469;
  v17[5] = 0xE700000000000000;
  v17[6] = a2;
  v17[7] = a3;

  v19 = 0;
  v17[8] = sub_24F496AF0();
  v17[9] = v20;
  v21 = MEMORY[0x277D84F90];
  v22 = 3;
  v23 = a5;
LABEL_3:
  if (v19 > 3)
  {
    v22 = v19;
  }

  v24 = v22 + 1;
  v25 = 16 * v19 + 40;
  while (v19 != 3)
  {
    if (v24 == ++v19)
    {
      __break(1u);
      goto LABEL_16;
    }

    v26 = v25 + 16;
    v27 = *(v17 + v25);
    v25 += 16;
    if (v27)
    {
      v28 = v15;
      v29 = *(v17 + v26 - 24);

      a5 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24E615CF4(0, *(v21 + 2) + 1, 1, v21);
      }

      v31 = *(v21 + 2);
      v30 = *(v21 + 3);
      if (v31 >= v30 >> 1)
      {
        v21 = sub_24E615CF4((v30 > 1), v31 + 1, 1, v21);
      }

      *(v21 + 2) = v31 + 1;
      v32 = &v21[16 * v31];
      *(v32 + 4) = v29;
      *(v32 + 5) = v27;
      v23 = a5;
      v15 = v28;
      v22 = 3;
      goto LABEL_3;
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *&v65 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E602068(&qword_27F23E240, &unk_27F2285F0);
  v33 = sub_24F92AF68();
  v35 = v34;

  v36 = sub_24F9249A8();
  v44[0] = 0;
  sub_24F496E4C(a4, v33, v35, &v65);
  v59 = *&v66[176];
  v60 = *&v66[192];
  v55 = *&v66[112];
  v56 = *&v66[128];
  v57 = *&v66[144];
  v58 = *&v66[160];
  v51 = *&v66[48];
  v52 = *&v66[64];
  v53 = *&v66[80];
  v54 = *&v66[96];
  v47 = v65;
  v48 = *v66;
  v49 = *&v66[16];
  v50 = *&v66[32];
  v62[12] = *&v66[176];
  v62[13] = *&v66[192];
  v62[7] = *&v66[96];
  v62[8] = *&v66[112];
  v62[9] = *&v66[128];
  v62[11] = *&v66[160];
  v62[10] = *&v66[144];
  v62[4] = *&v66[48];
  v62[5] = *&v66[64];
  v62[6] = *&v66[80];
  v62[0] = v65;
  v62[1] = *v66;
  v61 = *&v66[208];
  v63 = *&v66[208];
  v62[2] = *&v66[16];
  v62[3] = *&v66[32];
  sub_24E60169C(&v47, __src, &qword_27F23AB38);
  sub_24E601704(v62, &qword_27F23AB38);

  *&v45[183] = v58;
  *&v45[199] = v59;
  *&v45[215] = v60;
  *&v45[119] = v54;
  *&v45[135] = v55;
  *&v45[151] = v56;
  *&v45[167] = v57;
  *&v45[55] = v50;
  *&v45[71] = v51;
  *&v45[87] = v52;
  *&v45[103] = v53;
  *&v45[7] = v47;
  *&v45[23] = v48;
  *&v45[231] = v61;
  *&v45[39] = v49;
  sub_24F927618();
  sub_24F9238C8();
  *&v46[6] = v72;
  *&v46[22] = v73;
  *&v46[38] = v74;
  *(&__src[24] + 1) = *&v45[176];
  *(&__src[26] + 1) = *&v45[192];
  *(&__src[28] + 1) = *&v45[208];
  *(&__src[29] + 2) = *&v45[217];
  *(&__src[16] + 1) = *&v45[112];
  *(&__src[18] + 1) = *&v45[128];
  *(&__src[20] + 1) = *&v45[144];
  *(&__src[22] + 1) = *&v45[160];
  *(&__src[8] + 1) = *&v45[48];
  *(&__src[10] + 1) = *&v45[64];
  *(&__src[12] + 1) = *&v45[80];
  *(&__src[14] + 1) = *&v45[96];
  *(&__src[2] + 1) = *v45;
  *(&__src[4] + 1) = *&v45[16];
  *(&__src[6] + 1) = *&v45[32];
  *(&__src[33] + 2) = *&v46[16];
  *(&__src[35] + 2) = *&v46[32];
  __src[0] = v36;
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  *(&__src[31] + 2) = *v46;
  __src[37] = *(&v74 + 1);
  __src[38] = v15;
  __src[39] = v40;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AAC0);
  memcpy((v23 + *(v37 + 36)), __src, 0x140uLL);
  *&v66[177] = *&v45[176];
  *&v66[193] = *&v45[192];
  *&v66[209] = *&v45[208];
  *&v66[218] = *&v45[217];
  *&v66[113] = *&v45[112];
  *&v66[129] = *&v45[128];
  *&v66[145] = *&v45[144];
  *&v66[161] = *&v45[160];
  *&v66[49] = *&v45[48];
  *&v66[65] = *&v45[64];
  *&v66[81] = *&v45[80];
  *&v66[97] = *&v45[96];
  *&v66[1] = *v45;
  *&v66[17] = *&v45[16];
  *&v66[33] = *&v45[32];
  v68 = *&v46[16];
  *v69 = *&v46[32];
  v65 = v36;
  v66[0] = 0;
  v67 = *v46;
  *&v69[14] = *&v46[46];
  v70 = v15;
  v71 = v40;
  sub_24E60169C(__src, v44, &qword_27F2387C8);
  return sub_24E601704(&v65, &qword_27F2387C8);
}

unint64_t sub_24F176268()
{
  result = qword_27F23A988;
  if (!qword_27F23A988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215968);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215970);
    sub_24E66B7FC();
    sub_24E6695B8();
    sub_24E66BF00();
    swift_getOpaqueTypeConformance2();
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23A988);
  }

  return result;
}

void sub_24F176378(id a1, void *a2, void *a3, void *a4, int a5)
{
  if ((~a5 & 0xFCFC) != 0)
  {
    sub_24E951FEC(a1, a2, a3, a4, a5);
  }
}

id sub_24F17638C(id result, void *a2, void *a3, void *a4, int a5)
{
  if ((~a5 & 0xFCFC) != 0)
  {
    return sub_24E951F10(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t objectdestroyTm_55()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F9234D8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F176520(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EE895A8(a1, v4);
}

uint64_t sub_24F1765BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F17665C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F176700(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[12]];

  return v16(v17, a2, v15);
}

char *sub_24F1768F8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[12]];

  return v16(v17, a2, a2, v15);
}

void sub_24F176ADC()
{
  type metadata accessor for Shelf();
  if (v0 <= 0x3F)
  {
    sub_24F15B198();
    if (v1 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F23A968);
      if (v2 <= 0x3F)
      {
        sub_24F16DB84(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_24E684120();
          if (v4 <= 0x3F)
          {
            sub_24E746BEC(319, &qword_27F254DF0);
            if (v5 <= 0x3F)
            {
              sub_24F16DB84(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
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

uint64_t sub_24F176C60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_24F176CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F176D74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F923E98();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F176EB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F923E98();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F176FE8()
{
  type metadata accessor for Shelf();
  if (v0 <= 0x3F)
  {
    sub_24F15B198();
    if (v1 <= 0x3F)
    {
      sub_24E8EFB54(319, &qword_27F23A968);
      if (v2 <= 0x3F)
      {
        sub_24E8EFB54(319, &qword_27F23A970);
        if (v3 <= 0x3F)
        {
          sub_24F923E98();
          if (v4 <= 0x3F)
          {
            sub_24F928FD8();
            if (v5 <= 0x3F)
            {
              sub_24E746BEC(319, &qword_27F215590);
              if (v6 <= 0x3F)
              {
                sub_24E746BEC(319, &qword_27F254DF0);
                if (v7 <= 0x3F)
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

uint64_t sub_24F177168(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24F177238(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F1772E8()
{
  type metadata accessor for Shelf();
  if (v0 <= 0x3F)
  {
    sub_24F15B198();
    if (v1 <= 0x3F)
    {
      sub_24E746BEC(319, &qword_27F215590);
      if (v2 <= 0x3F)
      {
        sub_24E746BEC(319, &qword_27F254DF0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F1773C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A978);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215968);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215970);
  sub_24E66B7FC();
  sub_24E6695B8();
  sub_24E66BF00();
  swift_getOpaqueTypeConformance2();
  sub_24E669340();
  sub_24F176268();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F17759C()
{
  v1 = type metadata accessor for ShelfView.Grid(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = sub_24F9218F8();
  v17 = *(v3 - 8);
  v18 = v3;
  v4 = *(v17 + 80);
  v19 = v0;
  v5 = v0 + ((v2 + 16) & ~v2);

  v6 = v5 + v1[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680) + 48);
  if (!v9(v6 + v10, 1, v7))
  {
    (*(v8 + 8))(v6 + v10, v7);
  }

  v11 = (((v2 + 16) & ~v2) + v16 + v4) & ~v4;

  __swift_destroy_boxed_opaque_existential_1(v5 + v1[7]);
  __swift_destroy_boxed_opaque_existential_1(v5 + v1[8]);
  v12 = v1[10];
  v13 = sub_24F923E98();
  (*(*(v13 - 8) + 8))(v5 + v12, v13);

  sub_24E62A5EC(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_24E62A5EC(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v14 = v5 + v1[14];
  sub_24E669FC4(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32));
  (*(v17 + 8))(v19 + v11, v18);

  return swift_deallocObject();
}

uint64_t sub_24F177880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShelfView.Grid(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_24F9218F8() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_24F17280C(a1, (v2 + v6), v9, a2);
}

uint64_t sub_24F177964()
{
  v1 = type metadata accessor for ShelfView.Grid(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680) + 48);
  if (!v6(v3 + v7, 1, v4))
  {
    (*(v5 + 8))(v3 + v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[8]);
  v8 = v1[10];
  v9 = sub_24F923E98();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  sub_24E62A5EC(*(v2 + v1[12]), *(v2 + v1[12] + 8));
  sub_24E62A5EC(*(v2 + v1[13]), *(v2 + v1[13] + 8));
  v10 = v2 + v1[14];
  sub_24E669FC4(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));

  return swift_deallocObject();
}

double sub_24F177BBC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfView.Grid(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F1746A4(v4, a1);
}

unint64_t sub_24F177C3C()
{
  result = qword_27F23AA50;
  if (!qword_27F23AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA60);
    sub_24F177D78();
    sub_24F09B68C();
    sub_24F178094();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F238898, &qword_27F2388A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA50);
  }

  return result;
}

unint64_t sub_24F177D78()
{
  result = qword_27F23AA68;
  if (!qword_27F23AA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA58);
    sub_24F177E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA68);
  }

  return result;
}

unint64_t sub_24F177E04()
{
  result = qword_27F23AA70;
  if (!qword_27F23AA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE8);
    sub_24E66C09C();
    sub_24E6695B8();
    sub_24E66DAE0();
    swift_getOpaqueTypeConformance2();
    sub_24E669340();
    sub_24F177F84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA70);
  }

  return result;
}

unint64_t sub_24F177F84()
{
  result = qword_27F23AA88;
  if (!qword_27F23AA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215AE8);
    sub_24E66C09C();
    sub_24E6695B8();
    sub_24E66DAE0();
    swift_getOpaqueTypeConformance2();
    sub_24E669450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA88);
  }

  return result;
}

unint64_t sub_24F178094()
{
  result = qword_27F23AA90;
  if (!qword_27F23AA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA60);
    sub_24F177D78();
    sub_24F178120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA90);
  }

  return result;
}

unint64_t sub_24F178120()
{
  result = qword_27F23AA98;
  if (!qword_27F23AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AA98);
  }

  return result;
}

unint64_t sub_24F178174()
{
  result = qword_27F23AAA0;
  if (!qword_27F23AAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA38);
    sub_24F178200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAA0);
  }

  return result;
}

unint64_t sub_24F178200()
{
  result = qword_27F23AAA8;
  if (!qword_27F23AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAA8);
  }

  return result;
}

unint64_t sub_24F178254()
{
  result = qword_27F23AAB8;
  if (!qword_27F23AAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A9F8);
    type metadata accessor for Shelf();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA38);
    sub_24F178F7C(&qword_27F23AA40, type metadata accessor for Shelf);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA48);
    sub_24F177C3C();
    swift_getOpaqueTypeConformance2();
    sub_24F178174();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAB8);
  }

  return result;
}

unint64_t sub_24F178428()
{
  result = qword_27F23AAC8;
  if (!qword_27F23AAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AAC0);
    sub_24F1784E0();
    sub_24E602068(&qword_27F2387E0, &qword_27F2387C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAC8);
  }

  return result;
}

unint64_t sub_24F1784E0()
{
  result = qword_27F23AAD0;
  if (!qword_27F23AAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AAD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D8);
    sub_24F178254();
    sub_24F09D94C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2387D8, &qword_27F2387C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAD0);
  }

  return result;
}

unint64_t sub_24F1786DC()
{
  result = qword_27F23AAE0;
  if (!qword_27F23AAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA28);
    sub_24F178768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAE0);
  }

  return result;
}

unint64_t sub_24F178768()
{
  result = qword_27F23AAE8;
  if (!qword_27F23AAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AAF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AAF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB08);
    sub_24F1788F4();
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB28);
    sub_24F178B88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AAE8);
  }

  return result;
}

unint64_t sub_24F1788F4()
{
  result = qword_27F23AB10;
  if (!qword_27F23AB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB08);
    sub_24F178980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AB10);
  }

  return result;
}

unint64_t sub_24F178980()
{
  result = qword_27F23AB18;
  if (!qword_27F23AB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AA00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2388D8);
    sub_24F178254();
    sub_24F09D94C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24F09B68C();
    sub_24F178428();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AB18);
  }

  return result;
}

unint64_t sub_24F178B88()
{
  result = qword_27F23AB30;
  if (!qword_27F23AB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB08);
    sub_24F1788F4();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AB30);
  }

  return result;
}

uint64_t sub_24F178C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F178D1C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_24F178DA8()
{
  result = qword_27F23ABA0;
  if (!qword_27F23ABA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A9D0);
    sub_24F178E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ABA0);
  }

  return result;
}

unint64_t sub_24F178E34()
{
  result = qword_27F23ABA8;
  if (!qword_27F23ABA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23A9D8);
    sub_24F178EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ABA8);
  }

  return result;
}

unint64_t sub_24F178EC0()
{
  result = qword_27F23ABB0;
  if (!qword_27F23ABB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F223E08);
    sub_24F178F7C(&qword_27F2388C0, MEMORY[0x277CDF088]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ABB0);
  }

  return result;
}

uint64_t sub_24F178F7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F179018(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24F179094()
{
  result = qword_27F23ABC8;
  if (!qword_27F23ABC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB78);
    sub_24F179120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ABC8);
  }

  return result;
}

unint64_t sub_24F179120()
{
  result = qword_27F23ABD0;
  if (!qword_27F23ABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B10);
    sub_24EE536D0();
    swift_getOpaqueTypeConformance2();
    sub_24E8F20E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F231B08);
    sub_24EE5392C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23ABD0);
  }

  return result;
}

uint64_t sub_24F179300(unint64_t *a1, uint64_t *a2)
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

id sub_24F179378()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_24F1794C4(0x745C725C6E5C5B28, 0xEC000000292B5D20, 0);
  qword_27F39DBA0 = result;
  return result;
}

uint64_t sub_24F1793F4()
{
  v0 = sub_24F91EAA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EA68();
  v4 = sub_24F91EA58();
  result = (*(v1 + 8))(v3, v0);
  qword_27F39DBA8 = v4;
  return result;
}

id sub_24F1794C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_24F92B098();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_24F91F278();

    swift_willThrow();
  }

  return v6;
}

uint64_t static Notification.makePersonalizationDataProviderDidRefreshNotification(with:object:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0xD00000000000003ALL;
  v5 = inited + 32;
  *(inited + 40) = 0x800000024FA560B0;
  *(inited + 48) = v3;
  v6 = sub_24E60E3D8(inited);
  swift_setDeallocating();
  sub_24E601704(v5, &qword_27F22B068);
  if (qword_27F210F50 != -1)
  {
    swift_once();
  }

  v7 = qword_27F23ABD8;
  sub_24E94E17C(a2, v10);
  v8 = v7;
  sub_24E954AC4(v6);

  return sub_24F91EB18();
}

uint64_t Notification.updatedStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_24F91EB28();
  if (qword_27F210F50 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92B0D8();
  v5 = v4;
  if (v3 == sub_24F92B0D8() && v5 == v6)
  {

    v10 = sub_24F91EB48();
    if (!v10)
    {
LABEL_17:
      v15 = 0u;
      v16 = 0u;
      goto LABEL_18;
    }
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      goto LABEL_19;
    }

    v10 = sub_24F91EB48();
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v11 = v10;
  sub_24F92C7F8();
  if (!*(v11 + 16) || (v12 = sub_24E76D934(v14), (v13 & 1) == 0))
  {

    sub_24E6585F8(v14);
    goto LABEL_17;
  }

  sub_24E643A9C(*(v11 + 56) + 32 * v12, &v15);
  sub_24E6585F8(v14);

  if (!*(&v16 + 1))
  {
LABEL_18:
    result = sub_24E601704(&v15, &qword_27F2129B0);
    goto LABEL_19;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_19:
    *a1 = 2;
  }

  return result;
}

uint64_t sub_24F1798A8()
{
  result = sub_24F92B098();
  qword_27F23ABD8 = result;
  return result;
}

id static NSNotificationName.PersonalizationDataProviderDidRefresh.getter()
{
  if (qword_27F210F50 != -1)
  {
    swift_once();
  }

  v1 = qword_27F23ABD8;

  return v1;
}

uint64_t GameCenterAchievementsAction.bundleId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_bundleId);

  return v1;
}

uint64_t GameCenterAchievementsAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v59 = a2;
  v3 = v2;
  v52 = *v3;
  v5 = sub_24F9285B8();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_24F92AC28();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v61 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v23 = v22;
  v24 = v20;
  v25 = *(v13 + 8);
  v25(v24, v12);
  if (v23)
  {
    v48 = v21;
    v52 = v3;
    v26 = v25;
    v27 = v61;
    sub_24F928398();
    sub_24F9282B8();
    v49 = v12;
    v50 = v26;
    v26(v18, v12);
    v29 = v53;
    v28 = v54;
    if ((*(v53 + 48))(v9, 1, v54) == 1)
    {
      sub_24E601704(v9, &qword_27F2213B0);
      v30 = MEMORY[0x277D84F90];
    }

    else
    {
      v34 = v51;
      (*(v29 + 32))(v51, v9, v28);
      v35 = v60;
      v30 = sub_24F92ABB8();
      v60 = v35;
      (*(v29 + 8))(v34, v28);
    }

    v31 = v52;
    v36 = v57;
    *(v52 + OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_achievementIdsToHighlight) = v30;
    v37 = (v31 + OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_bundleId);
    *v37 = v48;
    v37[1] = v23;
    v38 = v55;
    v39 = v27;
    v40 = v49;
    (*(v13 + 16))(v55, v39, v49);
    v41 = v56;
    v43 = v58;
    v42 = v59;
    (*(v36 + 16))(v56, v59, v58);
    v44 = v60;
    v45 = Action.init(deserializing:using:)(v38, v41);
    if (!v44)
    {
      v31 = v45;
    }

    (*(v36 + 8))(v42, v43);
    v50(v61, v40);
  }

  else
  {
    v31 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v32 = 0x6449656C646E7562;
    v33 = v52;
    v32[1] = 0xE800000000000000;
    v32[2] = v33;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D22530], v31);
    swift_willThrow();
    (*(v57 + 8))(v59, v58);
    v25(v61, v12);
    swift_deallocPartialClassInstance();
  }

  return v31;
}

char *GameCenterAchievementsAction.__allocating_init(bundleID:achievementIdsToHighlight:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = &v12[OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_bundleId];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v12[OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_achievementIdsToHighlight] = a3;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v12[v14], a4, v15);
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
  v19 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &v12[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v30, &v27);
  if (*(&v28 + 1))
  {
    v21 = v28;
    *v20 = v27;
    *(v20 + 1) = v21;
    *(v20 + 4) = v29;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v24 = v23;
    (*(v9 + 8))(v11, v8);
    v26[1] = v22;
    v26[2] = v24;
    sub_24F92C7F8();
    sub_24E601704(&v27, &qword_27F235830);
  }

  (*(v16 + 8))(a4, v15);
  sub_24E601704(v30, &qword_27F235830);
  *(v12 + 2) = 0xD00000000000001FLL;
  *(v12 + 3) = 0x800000024FA6DDC0;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  return v12;
}

void *GameCenterAchievementsAction.init(bundleID:achievementIdsToHighlight:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v5 + OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_bundleId);
  *v20 = a1;
  v20[1] = a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit28GameCenterAchievementsAction_achievementIdsToHighlight) = a3;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  (*(v17 + 16))(v19, a4, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v5 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v40, &v34);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v30 + 8))(v12, v31);
    v32 = v23;
    v33 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830);
  }

  (*(v17 + 8))(a4, v16);
  sub_24E601704(v40, &qword_27F235830);
  v26 = v5 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v26 + 4) = v39;
  v27 = v38;
  *v26 = v37;
  *(v26 + 1) = v27;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v5[2] = 0xD00000000000001FLL;
  v5[3] = 0x800000024FA6DDC0;
  v5[4] = 0;
  v5[5] = 0;
  (*(v17 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v5;
}

uint64_t sub_24F17A614()
{
}

uint64_t GameCenterAchievementsAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t GameCenterAchievementsAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GameCenterAchievementsAction()
{
  result = qword_27F23ABE0;
  if (!qword_27F23ABE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24F17AA00@<D0>(uint64_t a1@<X8>)
{
  v55 = sub_24F91F6B8();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  static AccountSectionLink.createActionMetrics(targetId:)(1936748641, 0xE400000000000000, &v50 - v16);
  v18 = sub_24F91F4A8();
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  memset(v70, 0, sizeof(v70));
  v53 = v9;
  v19 = *(v9 + 16);
  v57 = v17;
  v19(v14, v17, v8);
  v20 = sub_24F929D18();
  v22 = v21;
  type metadata accessor for FlowAction();
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 14;
  v56 = v7;
  sub_24E60169C(v7, v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  v27 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v27 = xmmword_24F9406F0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v28 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v28 = v20;
  v28[1] = v22;
  sub_24E60169C(&v71, &v67, &qword_27F235830);
  v54 = v11;
  v58 = v8;
  v29 = v8;
  v30 = v52;
  v19(v11, v14, v29);
  v31 = sub_24F929608();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  v32 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_24E60169C(&v67, &v61, &qword_27F235830);
  if (*(&v62 + 1))
  {
    v64 = v61;
    v65 = v62;
    v66 = v63;
    v33 = v55;
  }

  else
  {
    v34 = v50;
    sub_24F91F6A8();
    v35 = sub_24F91F668();
    v37 = v36;
    v33 = v55;
    (*(v51 + 8))(v34, v55);
    v59 = v35;
    v60 = v37;
    sub_24F92C7F8();
    sub_24E601704(&v61, &qword_27F235830);
  }

  sub_24E601704(&v67, &qword_27F235830);
  v38 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v39 = v65;
  *v38 = v64;
  *(v38 + 16) = v39;
  *(v38 + 32) = v66;
  sub_24E65E0D4(v30, v23 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  v40 = v53;
  v41 = v58;
  (*(v53 + 32))(v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v54, v58);

  FlowAction.setPageData(_:)(v70);

  v42 = *(v40 + 8);
  v42(v14, v41);
  sub_24E601704(v70, &qword_27F2129B0);
  sub_24E601704(v56, &qword_27F228530);
  sub_24E601704(&v71, &qword_27F235830);
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  sub_24E60169C(&v71, &v64, &qword_27F235830);
  if (*(&v65 + 1))
  {
    sub_24E601704(&v71, &qword_27F235830);
    v42(v57, v41);
    v67 = v64;
    v68 = v65;
    v69 = v66;
  }

  else
  {

    v43 = v50;
    sub_24F91F6A8();
    v44 = sub_24F91F668();
    v45 = v41;
    v47 = v46;
    (*(v51 + 8))(v43, v33);
    *&v61 = v44;
    *(&v61 + 1) = v47;
    sub_24F92C7F8();

    sub_24E601704(&v71, &qword_27F235830);
    v42(v57, v45);
    sub_24E601704(&v64, &qword_27F235830);
  }

  result = *&v67;
  v49 = v68;
  *(a1 + 48) = v67;
  *(a1 + 64) = v49;
  *(a1 + 80) = v69;
  *(a1 + 16) = sub_24F17B658;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  return result;
}

uint64_t static AccountSectionLink.createActionMetrics(targetId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v5 = sub_24F9294C8();
  MEMORY[0x28223BE20](v5 - 8);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_24F942000;
  v8 = MEMORY[0x277D83B88];
  *(inited + 40) = 0x800000024FA45740;
  *(inited + 48) = 0;
  *(inited + 72) = v8;
  strcpy((inited + 80), "locationType");
  v9 = MEMORY[0x277D837D0];
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 1802398060;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 120) = v9;
  *(inited + 128) = 0x657079546469;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = 0x64695F737469;
  *(inited + 152) = 0xE600000000000000;
  *(inited + 168) = v9;
  *(inited + 176) = 25705;
  *(inited + 184) = 0xE200000000000000;
  *(inited + 192) = a1;
  *(inited + 200) = a2;
  *(inited + 216) = v9;
  *(inited + 224) = 1701667182;
  *(inited + 264) = v9;
  *(inited + 232) = 0xE400000000000000;
  *(inited + 240) = a1;
  *(inited + 248) = a2;
  swift_bridgeObjectRetain_n();
  v10 = sub_24E608448(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0);
  swift_arrayDestroy();
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_24F93A400;
  *(v11 + 32) = 0x6E6F697461636F6CLL;
  *(v11 + 40) = 0xE800000000000000;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  *(v11 + 48) = v10;
  *(v11 + 72) = v12;
  *(v11 + 80) = 0x79546E6F69746361;
  *(v11 + 120) = v9;
  *(v11 + 88) = 0xEA00000000006570;
  *(v11 + 96) = 0x657461676976616ELL;
  *(v11 + 104) = 0xE800000000000000;
  v13 = sub_24E608448(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v14 = sub_24F92A2C8();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v23 = xmmword_24F93DE60;
  *(v17 + 16) = xmmword_24F93DE60;
  sub_24F92A288();
  v18 = sub_24E805DFC(v17);
  swift_setDeallocating();
  (*(v15 + 8))(v17 + v16, v14);
  swift_deallocClassInstance();
  type metadata accessor for ClickMetricsEvent();
  v19 = swift_initStackObject();
  v19[6] = 0x6D657449756E656DLL;
  v19[7] = 0xE800000000000000;
  v19[4] = a1;
  v19[5] = a2;
  v20 = MEMORY[0x277D84FA0];
  v19[8] = v18;
  v19[9] = v20;
  v21 = MEMORY[0x277D84F90];
  v19[2] = v13;
  v19[3] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8);
  sub_24F928698();
  *(swift_allocObject() + 16) = v23;

  sub_24E98C2FC();
  sub_24F9294B8();
  sub_24F928AA8();
  swift_setDeallocating();
  return ClickMetricsEvent.__deallocating_deinit();
}

uint64_t sub_24F17B658()
{
  v0._countAndFlagsBits = 0x5F544E554F434341;
  v0._object = 0xEC00000053505041;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  return localizedString(_:comment:)(v0, v1)._countAndFlagsBits;
}

double sub_24F17B6B0@<D0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v61 = sub_24F91F6B8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v54 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v54 - v3;
  v4 = sub_24F928AD8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  sub_24F91F488();
  static AccountSectionLink.createActionMetrics(targetId:)(0xD00000000000001BLL, 0x800000024FA6DF50, v13);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v62 = v19;
  sub_24E60169C(v19, v16, &qword_27F228530);
  memset(v76, 0, sizeof(v76));
  v64 = v5;
  v20 = *(v5 + 16);
  v63 = v13;
  v20(v10, v13, v4);
  v21 = sub_24F929D18();
  v23 = v22;
  type metadata accessor for FlowAction();
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v25 = v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v26 = 0;
  v26[1] = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 18;
  v58 = v16;
  sub_24E60169C(v16, v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v27 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v27 = 0;
  v27[1] = 0;
  v28 = v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v28 = xmmword_24F9406F0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 16) = 0;
  *(v28 + 40) = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 2;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v29 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v29 = v21;
  v29[1] = v23;
  sub_24E60169C(&v77, &v73, &qword_27F235830);
  v57 = v7;
  v59 = v10;
  v30 = v10;
  v31 = v55;
  v32 = v4;
  v20(v7, v30, v4);
  v33 = sub_24F929608();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v34 = (v24 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_24E60169C(&v73, &v67, &qword_27F235830);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
    v35 = v61;
    v36 = v60;
  }

  else
  {
    v37 = v54;
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v40 = v39;
    v36 = v60;
    v41 = v37;
    v35 = v61;
    (*(v60 + 8))(v41, v61);
    v65 = v38;
    v66 = v40;
    sub_24F92C7F8();
    sub_24E601704(&v67, &qword_27F235830);
  }

  sub_24E601704(&v73, &qword_27F235830);
  v42 = v24 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v43 = v71;
  *v42 = v70;
  *(v42 + 16) = v43;
  *(v42 + 32) = v72;
  sub_24E65E0D4(v31, v24 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  v44 = v64;
  v45 = v32;
  (*(v64 + 32))(v24 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v57, v32);

  FlowAction.setPageData(_:)(v76);

  v46 = *(v44 + 8);
  v46(v59, v45);
  sub_24E601704(v76, &qword_27F2129B0);
  sub_24E601704(v58, &qword_27F228530);
  sub_24E601704(&v77, &qword_27F235830);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_24E60169C(&v77, &v70, &qword_27F235830);
  if (*(&v71 + 1))
  {
    sub_24E601704(&v77, &qword_27F235830);
    v46(v63, v45);
    sub_24E601704(v62, &qword_27F228530);
    v73 = v70;
    v74 = v71;
    v75 = v72;
  }

  else
  {

    v47 = v54;
    sub_24F91F6A8();
    v48 = sub_24F91F668();
    v50 = v49;
    (*(v36 + 8))(v47, v35);
    *&v67 = v48;
    *(&v67 + 1) = v50;
    sub_24F92C7F8();

    sub_24E601704(&v77, &qword_27F235830);
    v46(v63, v45);
    sub_24E601704(v62, &qword_27F228530);
    sub_24E601704(&v70, &qword_27F235830);
  }

  result = *&v73;
  v52 = v74;
  v53 = v56;
  *(v56 + 48) = v73;
  *(v53 + 64) = v52;
  *(v53 + 80) = v75;
  *(v53 + 16) = sub_24F17DA28;
  *(v53 + 24) = 0;
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 32) = v24;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_24F17BF30()
{
  v0._object = 0x800000024FA6DF70;
  v0._countAndFlagsBits = 0xD00000000000001CLL;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  return localizedString(_:comment:)(v0, v1)._countAndFlagsBits;
}

double sub_24F17BF84@<D0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v61 = sub_24F91F6B8();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v54 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v54 - v3;
  v4 = sub_24F928AD8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - v18;
  sub_24F91F488();
  static AccountSectionLink.createActionMetrics(targetId:)(0xD00000000000001BLL, 0x800000024FA6DF50, v13);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v62 = v19;
  sub_24E60169C(v19, v16, &qword_27F228530);
  memset(v76, 0, sizeof(v76));
  v64 = v5;
  v20 = *(v5 + 16);
  v63 = v13;
  v20(v10, v13, v4);
  v21 = sub_24F929D18();
  v23 = v22;
  type metadata accessor for FlowAction();
  v24 = swift_allocObject();
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v25 = v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v26 = 0;
  v26[1] = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 18;
  v58 = v16;
  sub_24E60169C(v16, v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v27 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v27 = 0;
  v27[1] = 0;
  v28 = v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v28 = xmmword_24F9406F0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 16) = 0;
  *(v28 + 40) = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 2;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v29 = (v24 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v29 = v21;
  v29[1] = v23;
  sub_24E60169C(&v77, &v73, &qword_27F235830);
  v57 = v7;
  v59 = v10;
  v30 = v10;
  v31 = v55;
  v32 = v4;
  v20(v7, v30, v4);
  v33 = sub_24F929608();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v34 = (v24 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_24E60169C(&v73, &v67, &qword_27F235830);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
    v35 = v61;
    v36 = v60;
  }

  else
  {
    v37 = v54;
    sub_24F91F6A8();
    v38 = sub_24F91F668();
    v40 = v39;
    v36 = v60;
    v41 = v37;
    v35 = v61;
    (*(v60 + 8))(v41, v61);
    v65 = v38;
    v66 = v40;
    sub_24F92C7F8();
    sub_24E601704(&v67, &qword_27F235830);
  }

  sub_24E601704(&v73, &qword_27F235830);
  v42 = v24 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v43 = v71;
  *v42 = v70;
  *(v42 + 16) = v43;
  *(v42 + 32) = v72;
  sub_24E65E0D4(v31, v24 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  v44 = v64;
  v45 = v32;
  (*(v64 + 32))(v24 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v57, v32);

  FlowAction.setPageData(_:)(v76);

  v46 = *(v44 + 8);
  v46(v59, v45);
  sub_24E601704(v76, &qword_27F2129B0);
  sub_24E601704(v58, &qword_27F228530);
  sub_24E601704(&v77, &qword_27F235830);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  sub_24E60169C(&v77, &v70, &qword_27F235830);
  if (*(&v71 + 1))
  {
    sub_24E601704(&v77, &qword_27F235830);
    v46(v63, v45);
    sub_24E601704(v62, &qword_27F228530);
    v73 = v70;
    v74 = v71;
    v75 = v72;
  }

  else
  {

    v47 = v54;
    sub_24F91F6A8();
    v48 = sub_24F91F668();
    v50 = v49;
    (*(v36 + 8))(v47, v35);
    *&v67 = v48;
    *(&v67 + 1) = v50;
    sub_24F92C7F8();

    sub_24E601704(&v77, &qword_27F235830);
    v46(v63, v45);
    sub_24E601704(v62, &qword_27F228530);
    sub_24E601704(&v70, &qword_27F235830);
  }

  result = *&v73;
  v52 = v74;
  v53 = v56;
  *(v56 + 48) = v73;
  *(v53 + 64) = v52;
  *(v53 + 80) = v75;
  *(v53 + 16) = sub_24F17DA28;
  *(v53 + 24) = 0;
  *v53 = 0;
  *(v53 + 8) = 0;
  *(v53 + 32) = v24;
  *(v53 + 40) = 0;
  return result;
}

double sub_24F17C834@<D0>(uint64_t a1@<X8>)
{
  v55 = sub_24F91F6B8();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  static AccountSectionLink.createActionMetrics(targetId:)(0xD00000000000001BLL, 0x800000024FA6DF50, &v50 - v16);
  v18 = sub_24F91F4A8();
  v71 = 0u;
  v72 = 0u;
  v73 = 0;
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  memset(v70, 0, sizeof(v70));
  v53 = v9;
  v19 = *(v9 + 16);
  v57 = v17;
  v19(v14, v17, v8);
  v20 = sub_24F929D18();
  v22 = v21;
  type metadata accessor for FlowAction();
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v24 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 53;
  v56 = v7;
  sub_24E60169C(v7, v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v26 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v26 = 0;
  v26[1] = 0;
  v27 = v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v27 = xmmword_24F9406F0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 16) = 0;
  *(v27 + 40) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 2;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v28 = (v23 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v28 = v20;
  v28[1] = v22;
  sub_24E60169C(&v71, &v67, &qword_27F235830);
  v54 = v11;
  v58 = v8;
  v29 = v8;
  v30 = v52;
  v19(v11, v14, v29);
  v31 = sub_24F929608();
  (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  v32 = (v23 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v32 = 0u;
  v32[1] = 0u;
  sub_24E60169C(&v67, &v61, &qword_27F235830);
  if (*(&v62 + 1))
  {
    v64 = v61;
    v65 = v62;
    v66 = v63;
    v33 = v55;
  }

  else
  {
    v34 = v50;
    sub_24F91F6A8();
    v35 = sub_24F91F668();
    v37 = v36;
    v33 = v55;
    (*(v51 + 8))(v34, v55);
    v59 = v35;
    v60 = v37;
    sub_24F92C7F8();
    sub_24E601704(&v61, &qword_27F235830);
  }

  sub_24E601704(&v67, &qword_27F235830);
  v38 = v23 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v39 = v65;
  *v38 = v64;
  *(v38 + 16) = v39;
  *(v38 + 32) = v66;
  sub_24E65E0D4(v30, v23 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  v40 = v53;
  v41 = v58;
  (*(v53 + 32))(v23 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v54, v58);

  FlowAction.setPageData(_:)(v70);

  v42 = *(v40 + 8);
  v42(v14, v41);
  sub_24E601704(v70, &qword_27F2129B0);
  sub_24E601704(v56, &qword_27F228530);
  sub_24E601704(&v71, &qword_27F235830);
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  sub_24E60169C(&v71, &v64, &qword_27F235830);
  if (*(&v65 + 1))
  {
    sub_24E601704(&v71, &qword_27F235830);
    v42(v57, v41);
    v67 = v64;
    v68 = v65;
    v69 = v66;
  }

  else
  {

    v43 = v50;
    sub_24F91F6A8();
    v44 = sub_24F91F668();
    v45 = v41;
    v47 = v46;
    (*(v51 + 8))(v43, v33);
    *&v61 = v44;
    *(&v61 + 1) = v47;
    sub_24F92C7F8();

    sub_24E601704(&v71, &qword_27F235830);
    v42(v57, v45);
    sub_24E601704(&v64, &qword_27F235830);
  }

  result = *&v67;
  v49 = v68;
  *(a1 + 48) = v67;
  *(a1 + 64) = v49;
  *(a1 + 80) = v69;
  *(a1 + 16) = sub_24F17DA28;
  *(a1 + 24) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = v23;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_24F17D068@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_24F17D8F4(a2, v4);
}

double sub_24F17D100@<D0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v14 = sub_24E76DB14(a2), (v15 & 1) != 0))
  {
    v16 = *(*(a1 + 56) + 8 * v14);
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    sub_24E60169C(v30, &v24, &qword_27F235830);
    v17 = *(&v25 + 1);
    swift_retain_n();
    if (v17)
    {
      sub_24E601704(v30, &qword_27F235830);
      v27 = v24;
      v28 = v25;
      v29 = v26;
    }

    else
    {

      sub_24F91F6A8();
      v19 = sub_24F91F668();
      v21 = v20;
      (*(v11 + 8))(v13, v10);
      v23[1] = v19;
      v23[2] = v21;
      sub_24F92C7F8();

      sub_24E601704(v30, &qword_27F235830);
      sub_24E601704(&v24, &qword_27F235830);
    }

    result = *&v27;
    v22 = v28;
    *(a5 + 48) = v27;
    *(a5 + 64) = v22;
    *(a5 + 80) = v29;
    *(a5 + 16) = a3;
    *(a5 + 24) = v16;
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 32) = v16;
    *(a5 + 40) = a4;
  }

  else
  {
    *(a5 + 80) = 0;
    result = 0.0;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t sub_24F17D320(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x800000024FA6DF30;
    v2._countAndFlagsBits = 0xD000000000000011;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

double static AccountSectionLink.addFunds(from:bag:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v8 = sub_24E76DB14(3u), (v9 & 1) != 0))
  {
    v10 = *(*(a1 + 56) + 8 * v8);
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_24E60169C(v24, &v18, &qword_27F235830);
    v11 = *(&v19 + 1);
    swift_retain_n();
    if (v11)
    {
      sub_24E601704(v24, &qword_27F235830);
      v21 = v18;
      v22 = v19;
      v23 = v20;
    }

    else
    {

      sub_24F91F6A8();
      v13 = sub_24F91F668();
      v15 = v14;
      (*(v5 + 8))(v7, v4);
      v17[1] = v13;
      v17[2] = v15;
      sub_24F92C7F8();

      sub_24E601704(v24, &qword_27F235830);
      sub_24E601704(&v18, &qword_27F235830);
    }

    result = *&v21;
    v16 = v22;
    *(a2 + 48) = v21;
    *(a2 + 64) = v16;
    *(a2 + 80) = v23;
    *(a2 + 16) = sub_24F17D984;
    *(a2 + 24) = v10;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 32) = v10;
    *(a2 + 40) = 1;
  }

  else
  {
    *(a2 + 80) = 0;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_24F17D5B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v3 = 0x5F544E554F434341;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(*(&a2 - 1), v4)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_24F17D638(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x800000024FA6DF10;
    v2._countAndFlagsBits = 0xD00000000000001CLL;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_24F17D6C8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x800000024FA6DEF0;
    v2._countAndFlagsBits = 0xD000000000000015;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_24F17D758(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2._object = 0x800000024FA6DED0;
    v2._countAndFlagsBits = 0xD000000000000018;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_24F17D7E8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    countAndFlagsBits = *(a1 + 16);
  }

  else
  {
    v2 = sub_24F91FE58();
    v8[3] = v2;
    v8[4] = sub_24F17D9D0();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D08030], v2);
    LOBYTE(v2) = sub_24F91FE68();
    __swift_destroy_boxed_opaque_existential_1(v8);
    if (v2)
    {
      v4 = 0xD00000000000001FLL;
      v5 = 0x800000024FA6DEB0;
    }

    else
    {
      v5 = 0x800000024FA6DE90;
      v4 = 0xD000000000000017;
    }

    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(*&v4, v6)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

unint64_t sub_24F17D9D0()
{
  result = qword_27F22ED40;
  if (!qword_27F22ED40)
  {
    sub_24F91FE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22ED40);
  }

  return result;
}

uint64_t sub_24F17DA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24F17DAEC;

  return sub_24F17DC08(a3);
}

uint64_t sub_24F17DAEC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_24F17DC08(uint64_t a1)
{
  *(v1 + 384) = a1;
  v2 = type metadata accessor for GameActivityDraftBuilder();
  v3 = swift_task_alloc();
  *(v1 + 392) = v3;
  *v3 = v1;
  v3[1] = sub_24F17DCF0;

  return MEMORY[0x28217F228](v1 + 328, v2, v2);
}

uint64_t sub_24F17DCF0()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_24F17EBF0;
  }

  else
  {
    v2 = sub_24F17DE30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F17DE30()
{
  v55 = v0;
  v54[9] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 328);
  *(v0 + 408) = v1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 416) = v2;
  if (!v2)
  {

    v13 = MEMORY[0x277D84F90];
LABEL_39:
    v43 = *(v0 + 8);
    v44 = MEMORY[0x277D84F90];

    return v43(v13, v44);
  }

  swift_getKeyPath();
  *(v0 + 336) = v2;
  sub_24E6D6F58();

  sub_24F91FD88();

  v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite);
  v4 = *(v3 + 2);
  v50 = v2;
  if (v4)
  {
    v52 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite);
    v54[0] = MEMORY[0x277D84F90];
    swift_bridgeObjectRetain_n();
    sub_24F4578E0(0, v4, 0);
    v5 = 0;
    v6 = v54[0];
    v7 = *(v54[0] + 16);
    v8 = 16 * v7;
    do
    {
      v9 = *&v52[v5 + 32];
      v10 = *&v52[v5 + 40];
      v54[0] = v6;
      v11 = *(v6 + 24);

      if (v7 >= v11 >> 1)
      {
        sub_24F4578E0((v11 > 1), v7 + 1, 1);
        v6 = v54[0];
      }

      *(v6 + 16) = v7 + 1;
      v12 = v6 + v8;
      *(v12 + 32) = v9;
      *(v12 + 40) = v10;
      v8 += 16;
      v5 += 72;
      ++v7;
      --v4;
    }

    while (v4);
    v3 = v52;

    v2 = v50;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v14 = sub_24F45D828(v6);

  *(v0 + 344) = v14;
  v15 = sub_24F34F43C();
  v16 = v15;
  v53 = *(v15 + 2);
  if (v53)
  {
    v17 = 0;
    v51 = v15 + 32;
    while (1)
    {
      v18 = &v51[72 * v17];
      *(v0 + 16) = *v18;
      v19 = *(v18 + 1);
      v20 = *(v18 + 2);
      v21 = *(v18 + 3);
      *(v0 + 80) = *(v18 + 32);
      *(v0 + 48) = v20;
      *(v0 + 64) = v21;
      *(v0 + 32) = v19;
      v23 = *(v0 + 16);
      v22 = *(v0 + 24);
      v24 = *(v0 + 344);
      if (!*(v24 + 16))
      {
        break;
      }

      v25 = v3;
      sub_24F92D068();
      sub_24E627A14(v0 + 16, v0 + 88);

      sub_24F92B218();
      v26 = sub_24F92D0B8();
      v27 = -1 << *(v24 + 32);
      v28 = v26 & ~v27;
      if (((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
LABEL_21:

        v3 = v25;
LABEL_23:
        sub_24E627A14(v0 + 16, v0 + 160);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_24E615E80(0, *(v3 + 2) + 1, 1, v3);
        }

        v33 = *(v3 + 2);
        v32 = *(v3 + 3);
        if (v33 >= v32 >> 1)
        {
          v3 = sub_24E615E80((v32 > 1), v33 + 1, 1, v3);
        }

        *(v3 + 2) = v33 + 1;
        v34 = &v3[72 * v33];
        *(v34 + 2) = *(v0 + 16);
        v35 = *(v0 + 32);
        v36 = *(v0 + 48);
        v37 = *(v0 + 64);
        *(v34 + 48) = *(v0 + 80);
        *(v34 + 4) = v36;
        *(v34 + 5) = v37;
        *(v34 + 3) = v35;

        sub_24ED7C5F0(v54, v23, v22);
        sub_24E627A70(v0 + 16);

        goto LABEL_29;
      }

      v29 = ~v27;
      while (1)
      {
        v30 = (*(v24 + 48) + 16 * v28);
        v31 = *v30 == v23 && v30[1] == v22;
        if (v31 || (sub_24F92CE08() & 1) != 0)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v24 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_24E627A70(v0 + 16);

      v3 = v25;
LABEL_29:
      if (++v17 == v53)
      {

        v2 = v50;
        goto LABEL_34;
      }

      if (v17 >= *(v16 + 2))
      {
        __break(1u);
      }
    }

    sub_24E627A14(v0 + 16, v0 + 232);
    goto LABEL_23;
  }

LABEL_34:
  *(v0 + 424) = v3;

  swift_getKeyPath();
  *(v0 + 352) = v2;
  sub_24F91FD88();

  v38 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite;
  if (!*(*(v2 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite) + 16))
  {
LABEL_38:

    v13 = *(v0 + 424);
    goto LABEL_39;
  }

  swift_getKeyPath();
  *(v0 + 360) = v2;
  sub_24F91FD88();

  v39 = *(v2 + v38);
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = sub_24EAE678C(*(v39 + 16), 0);
    v42 = sub_24EAEAC9C(v54, v41 + 4, v40, v39);

    sub_24E6D71D4();
    if (v42 != v40)
    {
      __break(1u);
      goto LABEL_38;
    }
  }

  v46 = objc_opt_self();
  v47 = sub_24F92B588();

  *(v0 + 432) = [v46 predicateForContactsWithIdentifiers_];

  v48 = sub_24E69A5C4(0, &qword_27F22D170);
  v49 = swift_task_alloc();
  *(v0 + 440) = v49;
  *v49 = v0;
  v49[1] = sub_24F17E4D8;

  return MEMORY[0x28217F228](v0 + 368, v48, v48);
}

uint64_t sub_24F17E4D8()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_24F17EC78;
  }

  else
  {
    v2 = sub_24F17E618;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F17E618()
{
  v2 = v0[54];
  v3 = v0[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F941C80;
  *(v4 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0);
  v5 = sub_24F92B588();

  v0[47] = 0;
  v6 = [v3 unifiedContactsMatchingPredicate:v2 keysToFetch:v5 error:v0 + 47];

  v7 = v0[47];
  if (!v6)
  {
    v42 = v7;
    v1 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F2113E8 == -1)
    {
LABEL_16:
      v43 = sub_24F9220D8();
      __swift_project_value_buffer(v43, qword_27F39E808);
      v44 = v1;
      v45 = sub_24F9220B8();
      v46 = sub_24F92BDB8();

      v47 = os_log_type_enabled(v45, v46);
      v48 = v0[54];
      if (!v47)
      {

LABEL_22:
        v13 = MEMORY[0x277D84F90];
        goto LABEL_23;
      }

      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      v51 = v1;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      _os_log_impl(&dword_24E5DD000, v45, v46, "fetchRecommendedFriends: CNContactStore threw an exception: %@", v49, 0xCu);
      sub_24E6D44CC(v50);
      MEMORY[0x2530542D0](v50, -1, -1);
      MEMORY[0x2530542D0](v49, -1, -1);

LABEL_21:

      goto LABEL_22;
    }

LABEL_27:
    swift_once();
    goto LABEL_16;
  }

  sub_24E69A5C4(0, &qword_27F223450);
  v8 = sub_24F92B5A8();
  v9 = v7;

  v10 = v8;
  if (!(v8 >> 62))
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_20:
    v53 = v0[54];

    goto LABEL_21;
  }

  v11 = sub_24F92C738();
  v10 = v8;
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_4:
  if (v11 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v57 = v3;
  v58 = v0;
  v12 = 0;
  v59 = v10 & 0xC000000000000001;
  v13 = MEMORY[0x277D84F90];
  v60 = v11;
  v61 = v10;
  do
  {
    if (v59)
    {
      v14 = MEMORY[0x253052270](v12);
    }

    else
    {
      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = [v14 identifier];
    v70 = sub_24F92B0D8();
    v69 = v17;

    v18 = [v15 namePrefix];
    v19 = sub_24F92B0D8();
    v67 = v20;
    v68 = v19;

    v21 = [v15 givenName];
    v22 = sub_24F92B0D8();
    v65 = v23;
    v66 = v22;

    v24 = [v15 middleName];
    v25 = sub_24F92B0D8();
    v63 = v26;
    v64 = v25;

    v27 = [v15 familyName];
    v28 = sub_24F92B0D8();
    v62 = v29;

    v30 = [v15 nameSuffix];
    v31 = sub_24F92B0D8();
    v33 = v32;

    v34 = [v15 nickname];
    v35 = sub_24F92B0D8();
    v37 = v36;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_24E619EE4(0, *(v13 + 2) + 1, 1, v13);
    }

    v39 = *(v13 + 2);
    v38 = *(v13 + 3);
    if (v39 >= v38 >> 1)
    {
      v13 = sub_24E619EE4((v38 > 1), v39 + 1, 1, v13);
    }

    ++v12;

    *(v13 + 2) = v39 + 1;
    v40 = &v13[112 * v39];
    *(v40 + 4) = v70;
    *(v40 + 5) = v69;
    *(v40 + 6) = v68;
    *(v40 + 7) = v67;
    *(v40 + 8) = v66;
    *(v40 + 9) = v65;
    *(v40 + 10) = v64;
    *(v40 + 11) = v63;
    *(v40 + 12) = v28;
    *(v40 + 13) = v62;
    *(v40 + 14) = v31;
    *(v40 + 15) = v33;
    *(v40 + 16) = v35;
    *(v40 + 17) = v37;
    v10 = v61;
  }

  while (v60 != v12);
  v0 = v58;
  v41 = v58[54];

LABEL_23:
  v54 = v0[53];
  v55 = v0[1];

  return v55(v54, v13);
}

uint64_t sub_24F17EBF0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F17EC78()
{
  v1 = v0[56];
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[54];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "fetchRecommendedFriends: CNContactStore threw an exception: %@", v8, 0xCu);
    sub_24E6D44CC(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[53];
  v13 = v0[1];
  v14 = MEMORY[0x277D84F90];

  return v13(v12, v14);
}

uint64_t sub_24F17EEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_24E60169C(a1, v20 - v9, &unk_27F21B570);
  v11 = sub_24F92B858();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &unk_27F21B570);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_24F92B778();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24F92B848();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_24F17F10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CompleteWelcomeMoltresAction();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24F1831BC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24E710918(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9CF7C0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F17F33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_24F928AE8();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_24F920958();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = sub_24F921338();
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F17F5CC, 0, 0);
}

uint64_t sub_24F17F5CC()
{
  v1 = objc_opt_self();
  v0[40] = v1;
  v2 = [v1 standardUserDefaults];
  v3 = sub_24F92B098();
  [v2 setBool:0 forKey:v3];

  v4 = objc_opt_self();
  v5 = [v4 shared];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v5;
  [v5 setForcePrivacyNotice_];

  v5 = [v4 shared];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x28217F228](v5, v6, v7);
  }

  v9 = v5;
  [v5 setForceGamesPrivacyNotice_];

  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_24F17F758;
  v5 = v0[39];
  v6 = v0[37];
  v7 = v6;

  return MEMORY[0x28217F228](v5, v6, v7);
}

uint64_t sub_24F17F758()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_24F1815A8;
  }

  else
  {
    v2 = sub_24F17F86C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F17F86C()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[43] = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "CompleteWelcomeMoltresActionImplementation: Getting authenticated player..", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[24];
  v10 = v0[25];

  v11 = *(v8 + 56);
  v0[44] = v11;
  v0[45] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v5, 1, 1, v7);
  v12 = *(v10 + 56);
  v0[46] = v12;
  v0[47] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(v6, 1, 1, v9);
  sub_24F921318();
  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  v15 = swift_task_alloc();
  v0[48] = v15;
  *v15 = v0;
  v15[1] = sub_24F17FA5C;

  return MEMORY[0x282165230](v13, v14);
}

uint64_t sub_24F17FA5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_24F181698;
  }

  else
  {
    v4 = sub_24F17FB70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F17FB70()
{
  v1 = *(v0 + 392);
  if (*(v1 + 16))
  {
    (*(*(v0 + 224) + 16))(*(v0 + 280), v1 + ((*(*(v0 + 224) + 80) + 32) & ~*(*(v0 + 224) + 80)), *(v0 + 216));
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 352);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);

  v3(v5, v2, 1, v7);
  sub_24F1836FC(v5, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24E60169C(v4, v6, &qword_27F22D4E0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(*(v0 + 272), &qword_27F22D4E0);
    *(v0 + 424) = *(v0 + 400);
    v9 = *(v0 + 248);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    sub_24E60169C(*(v0 + 264), v9, &qword_27F22D4D8);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_24E601704(*(v0 + 248), &qword_27F22D4D8);
      v12 = *(v0 + 288);
      v13 = *(v0 + 216);
      v14 = *(v0 + 224);
      if ((*(v14 + 48))(v12, 1, v13))
      {
LABEL_7:
        v15 = *(v0 + 152);
        if ((*(v15 + 8) & 1) == 0)
        {
          v16 = *v15;
          v17 = [*(v0 + 320) standardUserDefaults];
          sub_24F005DA4(v16);
        }

        v18 = *(v0 + 304);
        v19 = *(v0 + 312);
        v20 = *(v0 + 288);
        v21 = *(v0 + 296);
        v22 = *(v0 + 176);
        v23 = *(v0 + 168);
        v24 = *(v0 + 136);
        sub_24E601704(*(v0 + 264), &qword_27F22D4D8);
        (*(v22 + 104))(v24, *MEMORY[0x277D21CA8], v23);
        sub_24E601704(v20, &qword_27F22D4E0);
        (*(v18 + 8))(v19, v21);

        v25 = *(v0 + 8);

        return v25();
      }

      v41 = *(v0 + 424);
      (*(v14 + 16))(*(v0 + 232), v12, v13);
      v43 = sub_24F920FD8();
      v45 = *(v0 + 224);
      v44 = *(v0 + 232);
      v46 = *(v0 + 216);
      if (v41)
      {
        (*(v45 + 8))(v44, *(v0 + 216));
        v47 = v41;
        v48 = sub_24F9220B8();
        v49 = sub_24F92BD98();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138412290;
          v52 = v41;
          v53 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 4) = v53;
          *v51 = v53;
          _os_log_impl(&dword_24E5DD000, v48, v49, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v50, 0xCu);
          sub_24E601704(v51, &qword_27F227B20);
          MEMORY[0x2530542D0](v51, -1, -1);
          MEMORY[0x2530542D0](v50, -1, -1);
        }

        else
        {
        }

        goto LABEL_7;
      }

      *(v0 + 448) = v42;
      v54 = v42;
      (*(v45 + 8))(v44, v46);
      v55 = swift_task_alloc();
      *(v0 + 456) = v55;
      *v55 = v0;
      v55[1] = sub_24F180DBC;

      return sub_24F183444(v43, v54);
    }

    else
    {
      v32 = *(v0 + 312);
      v33 = *(v0 + 288);
      v34 = *(v0 + 208);
      v35 = *(v0 + 160);
      (*(*(v0 + 200) + 32))(v34, *(v0 + 248), *(v0 + 192));
      v36 = swift_task_alloc();
      *(v0 + 432) = v36;
      v36[2] = v35;
      v36[3] = v33;
      v36[4] = v32;
      v36[5] = v34;
      v37 = swift_task_alloc();
      *(v0 + 440) = v37;
      *v37 = v0;
      v37[1] = sub_24F1808CC;
      v38 = MEMORY[0x277D84F78] + 8;
      v39 = MEMORY[0x277D84F78] + 8;
      v40 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200600](v37, v38, v39, 0, 0, &unk_24F9CF7E8, v36, v40);
    }
  }

  else
  {
    (*(*(v0 + 224) + 32))(*(v0 + 240), *(v0 + 272), *(v0 + 216));
    sub_24F9212E8();
    v27 = *(v0 + 120);
    v28 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v27);
    v29 = swift_task_alloc();
    *(v0 + 408) = v29;
    *v29 = v0;
    v29[1] = sub_24F180234;
    v30 = *(v0 + 256);
    v31 = *(v0 + 240);

    return MEMORY[0x282165208](v30, v31, v27, v28);
  }
}

uint64_t sub_24F180234()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_24F181CB0;
  }

  else
  {
    v2 = sub_24F180348;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F180348()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 192);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  sub_24E601704(v3, &qword_27F22D4D8);
  v1(v2, 0, 1, v4);
  sub_24F18376C(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  *(v0 + 424) = *(v0 + 416);
  v5 = *(v0 + 248);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  sub_24E60169C(*(v0 + 264), v5, &qword_27F22D4D8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24E601704(*(v0 + 248), &qword_27F22D4D8);
    v8 = *(v0 + 288);
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);
    if ((*(v10 + 48))(v8, 1, v9))
    {
LABEL_3:
      v11 = *(v0 + 152);
      if ((*(v11 + 8) & 1) == 0)
      {
        v12 = *v11;
        v13 = [*(v0 + 320) standardUserDefaults];
        sub_24F005DA4(v12);
      }

      v14 = *(v0 + 304);
      v15 = *(v0 + 312);
      v16 = *(v0 + 288);
      v17 = *(v0 + 296);
      v18 = *(v0 + 176);
      v19 = *(v0 + 168);
      v20 = *(v0 + 136);
      sub_24E601704(*(v0 + 264), &qword_27F22D4D8);
      (*(v18 + 104))(v20, *MEMORY[0x277D21CA8], v19);
      sub_24E601704(v16, &qword_27F22D4E0);
      (*(v14 + 8))(v15, v17);

      v21 = *(v0 + 8);

      return v21();
    }

    v32 = *(v0 + 424);
    (*(v10 + 16))(*(v0 + 232), v8, v9);
    v34 = sub_24F920FD8();
    v36 = *(v0 + 224);
    v35 = *(v0 + 232);
    v37 = *(v0 + 216);
    if (v32)
    {
      (*(v36 + 8))(v35, *(v0 + 216));
      v38 = v32;
      v39 = sub_24F9220B8();
      v40 = sub_24F92BD98();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v32;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_24E5DD000, v39, v40, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v41, 0xCu);
        sub_24E601704(v42, &qword_27F227B20);
        MEMORY[0x2530542D0](v42, -1, -1);
        MEMORY[0x2530542D0](v41, -1, -1);
      }

      else
      {
      }

      goto LABEL_3;
    }

    *(v0 + 448) = v33;
    v45 = v33;
    (*(v36 + 8))(v35, v37);
    v46 = swift_task_alloc();
    *(v0 + 456) = v46;
    *v46 = v0;
    v46[1] = sub_24F180DBC;

    return sub_24F183444(v34, v45);
  }

  else
  {
    v23 = *(v0 + 312);
    v24 = *(v0 + 288);
    v25 = *(v0 + 208);
    v26 = *(v0 + 160);
    (*(*(v0 + 200) + 32))(v25, *(v0 + 248), *(v0 + 192));
    v27 = swift_task_alloc();
    *(v0 + 432) = v27;
    v27[2] = v26;
    v27[3] = v24;
    v27[4] = v23;
    v27[5] = v25;
    v28 = swift_task_alloc();
    *(v0 + 440) = v28;
    *v28 = v0;
    v28[1] = sub_24F1808CC;
    v29 = MEMORY[0x277D84F78] + 8;
    v30 = MEMORY[0x277D84F78] + 8;
    v31 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600](v28, v29, v30, 0, 0, &unk_24F9CF7E8, v27, v31);
  }
}

uint64_t sub_24F1808CC()
{

  return MEMORY[0x2822009F8](sub_24F1809E4, 0, 0);
}

uint64_t sub_24F1809E4()
{
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v1 = *(v0 + 288);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    goto LABEL_2;
  }

  v16 = *(v0 + 424);
  (*(v3 + 16))(*(v0 + 232), v1, v2);
  v18 = sub_24F920FD8();
  v20 = *(v0 + 224);
  v19 = *(v0 + 232);
  v21 = *(v0 + 216);
  if (v16)
  {
    (*(v20 + 8))(v19, *(v0 + 216));
    v22 = v16;
    v23 = sub_24F9220B8();
    v24 = sub_24F92BD98();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v16;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_24E5DD000, v23, v24, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v25, 0xCu);
      sub_24E601704(v26, &qword_27F227B20);
      MEMORY[0x2530542D0](v26, -1, -1);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    else
    {
    }

LABEL_2:
    v4 = *(v0 + 152);
    if ((*(v4 + 8) & 1) == 0)
    {
      v5 = *v4;
      v6 = [*(v0 + 320) standardUserDefaults];
      sub_24F005DA4(v5);
    }

    v7 = *(v0 + 304);
    v8 = *(v0 + 312);
    v9 = *(v0 + 288);
    v10 = *(v0 + 296);
    v11 = *(v0 + 176);
    v12 = *(v0 + 168);
    v13 = *(v0 + 136);
    sub_24E601704(*(v0 + 264), &qword_27F22D4D8);
    (*(v11 + 104))(v13, *MEMORY[0x277D21CA8], v12);
    sub_24E601704(v9, &qword_27F22D4E0);
    (*(v7 + 8))(v8, v10);

    v14 = *(v0 + 8);

    return v14();
  }

  *(v0 + 448) = v17;
  v29 = v17;
  (*(v20 + 8))(v19, v21);
  v30 = swift_task_alloc();
  *(v0 + 456) = v30;
  *v30 = v0;
  v30[1] = sub_24F180DBC;

  return sub_24F183444(v18, v29);
}

uint64_t sub_24F180DBC(char a1)
{
  *(*v1 + 480) = a1;

  return MEMORY[0x2822009F8](sub_24F180EDC, 0, 0);
}

uint64_t sub_24F180EDC()
{
  v1 = *(v0 + 480);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  if (v1 == 1)
  {
    if (v4)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v2, v3, "CompleteWelcomeMoltresActionImplementation: The player is an adult.", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    v6 = *(v0 + 152);

    v7 = *(type metadata accessor for CompleteWelcomeMoltresAction() + 20);
    v8 = type metadata accessor for SetContactsIntegrationConsentAction();
    *(v0 + 80) = v8;
    *(v0 + 88) = sub_24F1835EC(&qword_27F216388, type metadata accessor for SetContactsIntegrationConsentAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    v10 = *(v8 + 20);
    v11 = sub_24F928AD8();
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1 + v10, v6 + v7, v11);
    *boxed_opaque_existential_1 = 2;
    v12 = swift_task_alloc();
    *(v0 + 464) = v12;
    v13 = type metadata accessor for CompleteWelcomeMoltresActionImplementation();
    WitnessTable = swift_getWitnessTable();
    *v12 = v0;
    v12[1] = sub_24F1812C0;
    v15 = *(v0 + 184);
    v16 = *(v0 + 144);

    return sub_24F1487B0(v15, v0 + 56, v16, v13, WitnessTable);
  }

  else
  {
    if (v4)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v2, v3, "CompleteWelcomeMoltresActionImplementation: The player is not an adult.", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    v19 = *(v0 + 152);
    if ((*(v19 + 8) & 1) == 0)
    {
      v20 = *v19;
      v21 = [*(v0 + 320) standardUserDefaults];
      sub_24F005DA4(v20);
    }

    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    v24 = *(v0 + 288);
    v25 = *(v0 + 296);
    v26 = *(v0 + 176);
    v27 = *(v0 + 168);
    v28 = *(v0 + 136);
    sub_24E601704(*(v0 + 264), &qword_27F22D4D8);
    (*(v26 + 104))(v28, *MEMORY[0x277D21CA8], v27);
    sub_24E601704(v24, &qword_27F22D4E0);
    (*(v22 + 8))(v23, v25);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_24F1812C0()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_24F1822E0;
  }

  else
  {
    (*(v2[22] + 8))(v2[23], v2[21]);
    __swift_destroy_boxed_opaque_existential_1((v2 + 7));
    v3 = sub_24F1813F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F1813F4()
{
  v1 = *(v0 + 152);
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = *v1;
    v3 = [*(v0 + 320) standardUserDefaults];
    sub_24F005DA4(v2);
  }

  v4 = *(v0 + 304);
  v5 = *(v0 + 312);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 176);
  v9 = *(v0 + 168);
  v10 = *(v0 + 136);
  sub_24E601704(*(v0 + 264), &qword_27F22D4D8);
  (*(v8 + 104))(v10, *MEMORY[0x277D21CA8], v9);
  sub_24E601704(v6, &qword_27F22D4E0);
  (*(v4 + 8))(v5, v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F1815A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F181698()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 400);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteWelcomeMoltresActionImplementation: Could not get the player or onboarding state, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  *(v0 + 424) = 0;
  v9 = *(v0 + 248);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  sub_24E60169C(*(v0 + 264), v9, &qword_27F22D4D8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(*(v0 + 248), &qword_27F22D4D8);
    v12 = *(v0 + 288);
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    if ((*(v14 + 48))(v12, 1, v13))
    {
LABEL_6:
      v15 = *(v0 + 152);
      if ((*(v15 + 8) & 1) == 0)
      {
        v16 = *v15;
        v17 = [*(v0 + 320) standardUserDefaults];
        sub_24F005DA4(v16);
      }

      v18 = *(v0 + 304);
      v19 = *(v0 + 312);
      v20 = *(v0 + 288);
      v21 = *(v0 + 296);
      v22 = *(v0 + 176);
      v23 = *(v0 + 168);
      v24 = *(v0 + 136);
      sub_24E601704(*(v0 + 264), &qword_27F22D4D8);
      (*(v22 + 104))(v24, *MEMORY[0x277D21CA8], v23);
      sub_24E601704(v20, &qword_27F22D4E0);
      (*(v18 + 8))(v19, v21);

      v25 = *(v0 + 8);

      return v25();
    }

    v36 = *(v0 + 424);
    (*(v14 + 16))(*(v0 + 232), v12, v13);
    v38 = sub_24F920FD8();
    v40 = *(v0 + 224);
    v39 = *(v0 + 232);
    v41 = *(v0 + 216);
    if (v36)
    {
      (*(v40 + 8))(v39, *(v0 + 216));
      v42 = v36;
      v43 = sub_24F9220B8();
      v44 = sub_24F92BD98();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v36;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_24E5DD000, v43, v44, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v45, 0xCu);
        sub_24E601704(v46, &qword_27F227B20);
        MEMORY[0x2530542D0](v46, -1, -1);
        MEMORY[0x2530542D0](v45, -1, -1);
      }

      else
      {
      }

      goto LABEL_6;
    }

    *(v0 + 448) = v37;
    v49 = v37;
    (*(v40 + 8))(v39, v41);
    v50 = swift_task_alloc();
    *(v0 + 456) = v50;
    *v50 = v0;
    v50[1] = sub_24F180DBC;

    return sub_24F183444(v38, v49);
  }

  else
  {
    v27 = *(v0 + 312);
    v28 = *(v0 + 288);
    v29 = *(v0 + 208);
    v30 = *(v0 + 160);
    (*(*(v0 + 200) + 32))(v29, *(v0 + 248), *(v0 + 192));
    v31 = swift_task_alloc();
    *(v0 + 432) = v31;
    v31[2] = v30;
    v31[3] = v28;
    v31[4] = v27;
    v31[5] = v29;
    v32 = swift_task_alloc();
    *(v0 + 440) = v32;
    *v32 = v0;
    v32[1] = sub_24F1808CC;
    v33 = MEMORY[0x277D84F78] + 8;
    v34 = MEMORY[0x277D84F78] + 8;
    v35 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600](v32, v33, v34, 0, 0, &unk_24F9CF7E8, v31, v35);
  }
}

uint64_t sub_24F181CB0()
{
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v1 = *(v0 + 416);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteWelcomeMoltresActionImplementation: Could not get the player or onboarding state, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  *(v0 + 424) = 0;
  v9 = *(v0 + 248);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  sub_24E60169C(*(v0 + 264), v9, &qword_27F22D4D8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24E601704(*(v0 + 248), &qword_27F22D4D8);
    v12 = *(v0 + 288);
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    if ((*(v14 + 48))(v12, 1, v13))
    {
LABEL_6:
      v15 = *(v0 + 152);
      if ((*(v15 + 8) & 1) == 0)
      {
        v16 = *v15;
        v17 = [*(v0 + 320) standardUserDefaults];
        sub_24F005DA4(v16);
      }

      v18 = *(v0 + 304);
      v19 = *(v0 + 312);
      v20 = *(v0 + 288);
      v21 = *(v0 + 296);
      v22 = *(v0 + 176);
      v23 = *(v0 + 168);
      v24 = *(v0 + 136);
      sub_24E601704(*(v0 + 264), &qword_27F22D4D8);
      (*(v22 + 104))(v24, *MEMORY[0x277D21CA8], v23);
      sub_24E601704(v20, &qword_27F22D4E0);
      (*(v18 + 8))(v19, v21);

      v25 = *(v0 + 8);

      return v25();
    }

    v36 = *(v0 + 424);
    (*(v14 + 16))(*(v0 + 232), v12, v13);
    v38 = sub_24F920FD8();
    v40 = *(v0 + 224);
    v39 = *(v0 + 232);
    v41 = *(v0 + 216);
    if (v36)
    {
      (*(v40 + 8))(v39, *(v0 + 216));
      v42 = v36;
      v43 = sub_24F9220B8();
      v44 = sub_24F92BD98();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v36;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_24E5DD000, v43, v44, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v45, 0xCu);
        sub_24E601704(v46, &qword_27F227B20);
        MEMORY[0x2530542D0](v46, -1, -1);
        MEMORY[0x2530542D0](v45, -1, -1);
      }

      else
      {
      }

      goto LABEL_6;
    }

    *(v0 + 448) = v37;
    v49 = v37;
    (*(v40 + 8))(v39, v41);
    v50 = swift_task_alloc();
    *(v0 + 456) = v50;
    *v50 = v0;
    v50[1] = sub_24F180DBC;

    return sub_24F183444(v38, v49);
  }

  else
  {
    v27 = *(v0 + 312);
    v28 = *(v0 + 288);
    v29 = *(v0 + 208);
    v30 = *(v0 + 160);
    (*(*(v0 + 200) + 32))(v29, *(v0 + 248), *(v0 + 192));
    v31 = swift_task_alloc();
    *(v0 + 432) = v31;
    v31[2] = v30;
    v31[3] = v28;
    v31[4] = v27;
    v31[5] = v29;
    v32 = swift_task_alloc();
    *(v0 + 440) = v32;
    *v32 = v0;
    v32[1] = sub_24F1808CC;
    v33 = MEMORY[0x277D84F78] + 8;
    v34 = MEMORY[0x277D84F78] + 8;
    v35 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200600](v32, v33, v34, 0, 0, &unk_24F9CF7E8, v31, v35);
  }
}

uint64_t sub_24F1822E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = *(v0 + 472);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "CompleteWelcomeMoltresActionImplementation: Error checking and setting the contacts integration consent, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 152);
  if ((*(v9 + 8) & 1) == 0)
  {
    v10 = *v9;
    v11 = [*(v0 + 320) standardUserDefaults];
    sub_24F005DA4(v10);
  }

  v12 = *(v0 + 304);
  v13 = *(v0 + 312);
  v14 = *(v0 + 288);
  v15 = *(v0 + 296);
  v16 = *(v0 + 176);
  v17 = *(v0 + 168);
  v18 = *(v0 + 136);
  sub_24E601704(*(v0 + 264), &qword_27F22D4D8);
  (*(v16 + 104))(v18, *MEMORY[0x277D21CA8], v17);
  sub_24E601704(v14, &qword_27F22D4E0);
  (*(v12 + 8))(v13, v15);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24F182590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v7 = sub_24F920958();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  v9 = sub_24F921338();
  v6[11] = v9;
  v10 = *(v9 - 8);
  v6[12] = v10;
  v6[13] = *(v10 + 64);
  v6[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  v6[16] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v6[17] = v11;
  v12 = *(v11 - 8);
  v6[18] = v12;
  v6[19] = *(v12 + 64);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F1827B0, 0, 0);
}

uint64_t sub_24F1827B0()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_24E60169C(v0[3], v3, &qword_27F22D4E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[16], &qword_27F22D4E0);
  }

  else
  {
    v4 = v0[21];
    v40 = v0[20];
    v5 = v0[18];
    v34 = v0[19];
    v6 = v0[17];
    v7 = v0[14];
    v8 = v0[15];
    v37 = v8;
    v9 = v0[12];
    v33 = v0[13];
    v10 = v0[11];
    v30 = v10;
    v31 = v7;
    v39 = v0[10];
    v11 = v0[8];
    v32 = v0[7];
    v35 = v0[6];
    v29 = v0[5];
    v28 = v0[4];
    v38 = *(v5 + 32);
    v36 = v4;
    v38(v4, v0[16], v6);
    v12 = sub_24F92B858();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    (*(v9 + 16))(v7, v28, v10);
    (*(v5 + 16))(v40, v4, v6);
    (*(v11 + 16))(v39, v29, v32);
    v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v14 = (v33 + *(v5 + 80) + v13) & ~*(v5 + 80);
    v15 = (v34 + *(v11 + 80) + v14) & ~*(v11 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = 0;
    *(v16 + 3) = 0;
    *(v16 + 4) = v35;
    (*(v9 + 32))(&v16[v13], v31, v30);
    v38(&v16[v14], v40, v6);
    (*(v11 + 32))(&v16[v15], v39, v32);
    sub_24F17EEF4(v37, &unk_24F9CF808, v16);
    sub_24E601704(v37, &unk_27F21B570);
    (*(v5 + 8))(v36, v6);
  }

  v17 = v0[15];
  v18 = v0[10];
  v20 = v0[7];
  v19 = v0[8];
  v22 = v0[5];
  v21 = v0[6];
  v23 = sub_24F92B858();
  (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
  (*(v19 + 16))(v18, v22, v20);
  v24 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v21;
  (*(v19 + 32))(&v25[v24], v18, v20);
  sub_24F17EEF4(v17, &unk_24F9CF7F8, v25);
  sub_24E601704(v17, &unk_27F21B570);

  v26 = v0[1];

  return v26();
}

uint64_t sub_24F182BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_24E6541E4;

  return sub_24F183D48(a4, a5, a6);
}

uint64_t sub_24F182CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_24E614970;

  return sub_24F1847EC(a4);
}

void sub_24F182D48(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADD8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = sub_24F92BB08();
  v11 = [a2 acknowledgePrivacy_];

  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_24F184D48;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9F9FFC;
  aBlock[3] = &block_descriptor_123;
  v14 = _Block_copy(aBlock);

  [v11 addFinishBlock_];
  _Block_release(v14);
}

uint64_t sub_24F182F34(char a1, id a2, uint64_t a3)
{
  if (a2)
  {
    v5 = a2;
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E8E0);
    v7 = a2;
    v8 = sub_24F9220B8();
    v9 = sub_24F92BDB8();

    if (!os_log_type_enabled(v8, v9))
    {

      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 134218242;
    *(v10 + 4) = a3;
    *(v10 + 12) = 2112;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_24E5DD000, v8, v9, "CompleteWelcomeMoltresActionImplementation: (AS) Failed to acknowledge Games GDPR (version %ld) , reason: %@", v10, 0x16u);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v15 = sub_24F9220D8();
    __swift_project_value_buffer(v15, qword_27F39E8E0);
    v8 = sub_24F9220B8();
    v16 = sub_24F92BD98();
    if (os_log_type_enabled(v8, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134218240;
      *(v17 + 4) = a3;
      *(v17 + 12) = 1024;
      *(v17 + 14) = a1 & 1;
      _os_log_impl(&dword_24E5DD000, v8, v16, "CompleteWelcomeMoltresActionImplementation: (AS) Acknowledged Games GDPR (version %ld), success: %{BOOL}d", v17, 0x12u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADD8);
  return sub_24F92B798();
}

uint64_t sub_24F1831BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompleteWelcomeMoltresAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F183220()
{
  v1 = (type metadata accessor for CompleteWelcomeMoltresAction() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v0 + v1[7];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_24F183308(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for CompleteWelcomeMoltresAction() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F17F33C(a1, v7, v1 + v6, v4);
}

uint64_t sub_24F1833FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F183444(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_24F183464, 0, 0);
}

uint64_t sub_24F183464()
{
  v1 = [objc_opt_self() proxyForLocalPlayer];
  v2 = [v1 accountServicePrivate];
  v0[20] = v2;

  v3 = sub_24F92B098();
  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_24EB78FBC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229BE0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24EBF219C;
  v0[13] = &block_descriptor_35;
  v0[14] = v4;
  [v2 getAccountAgeCategoryForPlayerID:v3 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F1835EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F183634(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24E614970;

  return sub_24F182590(a1, a2, v7, v9, v8, v6);
}

uint64_t sub_24F1836FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F18376C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1837DC()
{
  v1 = sub_24F920958();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F1838A0(uint64_t a1)
{
  v4 = *(sub_24F920958() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F182CAC(a1, v6, v7, v1 + v5);
}

uint64_t sub_24F183998()
{
  v1 = sub_24F921338();
  v2 = *(v1 - 8);
  v12 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v13 = v1;
  v3 = v12 + *(v2 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_24F920958();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v12, v13);
  (*(v5 + 8))(v0 + v6, v4);
  (*(v9 + 8))(v0 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_24F183B80(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_24F921338() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_24F920958() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_24E6541E4;

  return sub_24F182BF8(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_24F183D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = sub_24F920988();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_24F9208F8();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F183E68, 0, 0);
}

uint64_t sub_24F183E68()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = sub_24F920908();
  *(v0 + 160) = MEMORY[0x253046260](v4);
  *(v0 + 65) = v5;
  v6 = *(v1 + 8);
  v6(v2, v3);
  v7 = sub_24F920918();
  *(v0 + 168) = MEMORY[0x253046260](v7);
  *(v0 + 66) = v8;
  v6(v2, v3);
  sub_24F9212E8();
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  sub_24F920978();
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  *v11 = v0;
  v11[1] = sub_24F183FF4;
  v12 = *(v0 + 128);
  v13 = *(v0 + 96);

  return MEMORY[0x282165200](v12, v13, v9, v10);
}

uint64_t sub_24F183FF4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24F184444;
  }

  else
  {
    v5 = sub_24F184164;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F184164()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "CompleteWelcomeMoltresActionImplementation: Call to setProfileSettings completed.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = *(v0 + 65);

  v6 = sub_24F9220B8();
  if (v5)
  {
    v7 = sub_24F92BDB8();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "CompleteWelcomeMoltresActionImplementation: (GC) Unable to acknowledge Game Center GDPR because the obtained OnboardingState has a nil version.";
    v10 = v7;
    v11 = v6;
    v12 = v8;
    v13 = 2;
  }

  else
  {
    v14 = sub_24F92BD98();
    if (!os_log_type_enabled(v6, v14))
    {
      goto LABEL_11;
    }

    v15 = *(v0 + 160);
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v15;
    v9 = "CompleteWelcomeMoltresActionImplementation: (GC) Acknowledged Game Center GDPR (version %ld)";
    v10 = v14;
    v11 = v6;
    v12 = v8;
    v13 = 12;
  }

  _os_log_impl(&dword_24E5DD000, v11, v10, v9, v12, v13);
  MEMORY[0x2530542D0](v8, -1, -1);
LABEL_11:
  v16 = *(v0 + 66);

  v17 = sub_24F9220B8();
  if (v16)
  {
    v18 = sub_24F92BDB8();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_17;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "CompleteWelcomeMoltresActionImplementation: (GC) Unable to acknowledge Games GDPR because the obtained OnboardingState has a nil version.";
    v21 = v18;
    v22 = v17;
    v23 = v19;
    v24 = 2;
  }

  else
  {
    v25 = sub_24F92BD98();
    if (!os_log_type_enabled(v17, v25))
    {
      goto LABEL_17;
    }

    v26 = *(v0 + 168);
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v26;
    v20 = "CompleteWelcomeMoltresActionImplementation: (GC) Acknowledged Games GDPR (version %ld)";
    v21 = v25;
    v22 = v17;
    v23 = v19;
    v24 = 12;
  }

  _os_log_impl(&dword_24E5DD000, v22, v21, v20, v23, v24);
  MEMORY[0x2530542D0](v19, -1, -1);
LABEL_17:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24F184444()
{
  v26 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8E0);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 184);
  if (v6)
  {
    v24 = *(v0 + 66);
    v8 = *(v0 + 65);
    v9 = *(v0 + 160);
    v23 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v10 = 136315650;
    *(v0 + 56) = v9;
    *(v0 + 64) = v8 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215390);
    v13 = sub_24F92B188();
    v15 = sub_24E7620D4(v13, v14, &v25);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v0 + 72) = v23;
    *(v0 + 80) = v24 & 1;
    v16 = sub_24F92B188();
    v18 = sub_24E7620D4(v16, v17, &v25);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2112;
    v19 = v7;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v20;
    *v11 = v20;
    _os_log_impl(&dword_24E5DD000, v4, v5, "CompleteWelcomeMoltresActionImplementation: (GC) Failed to acknowledge GDPRs (Game Center: %s | Games: %s, reason: %@", v10, 0x20u);
    sub_24E601704(v11, &qword_27F227B20);
    MEMORY[0x2530542D0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24F1846FC()
{

  return swift_deallocObject();
}

uint64_t sub_24F184734(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24E7B1F20(a1, v4);
}

uint64_t sub_24F1847EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24F9208F8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F1848AC, 0, 0);
}

uint64_t sub_24F1848AC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_24F920918();
  v5 = MEMORY[0x253046260](v4);
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (v7)
  {
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v8 = sub_24F9220D8();
    __swift_project_value_buffer(v8, qword_27F39E8E0);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BDB8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "CompleteWelcomeMoltresActionImplementation: (AS) Unable to acknowledge Games GDPR because its version is nil from OnboardingState.", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = objc_allocWithZone(MEMORY[0x277CEE3D0]);
    v15 = sub_24F92B098();
    v16 = [v14 initWithPrivacyIdentifier_];
    v0[6] = v16;

    v17 = swift_task_alloc();
    v0[7] = v17;
    *(v17 + 16) = v16;
    *(v17 + 24) = v5;
    v18 = swift_task_alloc();
    v0[8] = v18;
    *v18 = v0;
    v18[1] = sub_24F184B2C;
    v19 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v18, 0, 0, 0xD00000000000003BLL, 0x800000024FA6E030, sub_24F184CAC, v17, v19);
  }
}

uint64_t sub_24F184B2C()
{

  return MEMORY[0x2822009F8](sub_24F184C44, 0, 0);
}

uint64_t sub_24F184C44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F184CB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADD8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F184D48(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADD8);
  v5 = *(v2 + 16);

  return sub_24F182F34(a1, a2, v5);
}

uint64_t block_copy_helper_123(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F184E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementDetails();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 88);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F184F04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementDetails();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 88) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for UnifiedSingleColumnViewWithGameLockup()
{
  result = qword_27F23ADE0;
  if (!qword_27F23ADE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F18500C()
{
  result = type metadata accessor for AchievementDetails();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F1850AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADF8);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v16[8] = a1;
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE00);
  sub_24F186048(&qword_27F23AE08, &qword_27F23AE00, &unk_24F9CF8D0, sub_24F186018);
  sub_24F923438();
  type metadata accessor for UnifiedSingleColumnViewWithGameLockup();

  sub_24F927878();
  sub_24F927898();
  sub_24F923BD8();
  v10 = sub_24F925818();
  v11 = sub_24F924058();
  v12 = &v9[*(v7 + 36)];
  *v12 = v16[11];
  v13 = v18;
  *(v12 + 8) = v17;
  *(v12 + 24) = v13;
  *(v12 + 5) = v11;
  v12[48] = v10;
  v14 = sub_24E6A4C1C();
  sub_24F924B68();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE40);
  sub_24F18618C();
  v16[9] = &type metadata for GameOverlayViewPredicate;
  v16[10] = v14;
  swift_getOpaqueTypeConformance2();
  sub_24F186270();
  sub_24F926B08();
  (*(v4 + 8))(v6, v3);
  return sub_24E601704(v9, &qword_27F23ADF8);
}

uint64_t sub_24F1853B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE28);
  MEMORY[0x28223BE20](v6);
  v8 = v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE18);
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  *v5 = sub_24F924C88();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v12 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEA8) + 44)];
  v40[1] = a1;
  sub_24F186330(a1, v12, type metadata accessor for AchievementDetails);
  v13 = *(type metadata accessor for AchievementDetailsSingleColumnView() + 20);
  if (qword_27F210E90 != -1)
  {
    swift_once();
  }

  memcpy(v43, &xmmword_27F237800, 0x178uLL);
  memcpy((v12 + v13), &xmmword_27F237800, 0x178uLL);
  sub_24E76A93C(v43, v42);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v5, v8, &qword_27F23AE38);
  v14 = &v8[*(v6 + 36)];
  v15 = v42[5];
  *(v14 + 4) = v42[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v42[6];
  v16 = v42[1];
  *v14 = v42[0];
  *(v14 + 1) = v16;
  v17 = v42[3];
  *(v14 + 2) = v42[2];
  *(v14 + 3) = v17;
  v18 = sub_24F925828();
  sub_24F923318();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_24E6009C8(v8, v11, &qword_27F23AE28);
  v27 = &v11[*(v9 + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  v28 = sub_24F9257F8();
  type metadata accessor for UnifiedSingleColumnViewWithGameLockup();
  sub_24F923318();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v41;
  sub_24E6009C8(v11, v41, &qword_27F23AE18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE00);
  v39 = v37 + *(result + 36);
  *v39 = v28;
  *(v39 + 8) = v30;
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_24F185734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924C88();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE40) + 36);
  sub_24F18580C(a2, v7);
  v8 = sub_24F923868();
  LOBYTE(a2) = MEMORY[0x25304B200]((2 * v8));
  v9 = sub_24F924068();
  v10 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE80) + 36);
  *v10 = v9;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v10 + 17) = a2;
  *(v10 + 24) = v6;
  return sub_24E60169C(a1, a3, &qword_27F23ADF8);
}

uint64_t sub_24F18580C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE88);
  MEMORY[0x28223BE20](v73);
  v4 = &v70 - v3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE90);
  MEMORY[0x28223BE20](v74);
  v6 = &v70 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AE98);
  MEMORY[0x28223BE20](v75);
  v77 = &v70 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEA0);
  v8 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v71 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221FC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70 - v13;
  v15 = type metadata accessor for GameLockup(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for AchievementDetails() + 20);
  v72 = a1;
  sub_24E60169C(a1 + v19, v14, &qword_27F221FC0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24E601704(v14, &qword_27F221FC0);
    v20 = 1;
    v21 = v79;
    v22 = v78;
  }

  else
  {
    sub_24E7A3ED0(v14, v18);
    *&v82[8] = v15;
    *&v82[16] = sub_24EC5F38C(&qword_27F216AD0, type metadata accessor for GameLockup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v81);
    sub_24F186330(v18, boxed_opaque_existential_1, type metadata accessor for GameLockup);
    type metadata accessor for GSKComponentContentBuilder();
    sub_24EC5F38C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
    *&v80 = sub_24F923598();
    BYTE8(v80) = v24 & 1;
    *&v82[24] = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    v26 = sub_24F925838();
    *(inited + 32) = v26;
    v27 = sub_24F925858();
    *(inited + 33) = v27;
    v28 = sub_24F925848();
    sub_24F925848();
    if (sub_24F925848() != v26)
    {
      v28 = sub_24F925848();
    }

    sub_24F925848();
    if (sub_24F925848() != v27)
    {
      v28 = sub_24F925848();
    }

    v29 = v72 + *(type metadata accessor for UnifiedSingleColumnViewWithGameLockup() + 24);
    sub_24F923318();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v84 = v80;
    v85 = v81;
    *v86 = *v82;
    *&v86[10] = *&v82[10];
    v83 = 0;
    v38 = &v4[*(v73 + 36)];
    v39 = *(v29 + 8);
    v40 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
    v41 = type metadata accessor for GradientBackground(0);
    (*(*(v41 - 8) + 56))(&v38[v40], 1, 1, v41);
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    *(v38 + 2) = v39;
    *(v38 + 3) = 0;
    *(v38 + 4) = 0;
    *(v38 + 20) = 257;
    v42 = v85;
    *v4 = v84;
    *(v4 + 1) = v42;
    v43 = *&v86[16];
    *(v4 + 2) = *v86;
    *(v4 + 3) = v43;
    v4[64] = v28;
    *(v4 + 65) = v80;
    *(v4 + 17) = *(&v80 + 3);
    *(v4 + 9) = v31;
    *(v4 + 10) = v33;
    *(v4 + 11) = v35;
    *(v4 + 12) = v37;
    v4[104] = v83;
    sub_24F926C88();
    v44 = sub_24F926D08();

    sub_24E6009C8(v4, v6, &qword_27F23AE88);
    v45 = &v6[*(v74 + 36)];
    *v45 = v44;
    *(v45 + 8) = xmmword_24F94D5F0;
    *(v45 + 3) = 0x4020000000000000;
    LOBYTE(v38) = sub_24F9257F8();
    sub_24F923318();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = v77;
    sub_24E6009C8(v6, v77, &qword_27F23AE90);
    v55 = v54 + *(v75 + 36);
    *v55 = v38;
    *(v55 + 8) = v47;
    *(v55 + 16) = v49;
    *(v55 + 24) = v51;
    *(v55 + 32) = v53;
    *(v55 + 40) = 0;
    LOBYTE(v38) = sub_24F925828();
    sub_24F923318();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    sub_24EC5F3DC(v18);
    v64 = v71;
    sub_24E6009C8(v54, v71, &qword_27F23AE98);
    v22 = v78;
    v65 = v64 + *(v78 + 36);
    *v65 = v38;
    *(v65 + 8) = v57;
    *(v65 + 16) = v59;
    *(v65 + 24) = v61;
    *(v65 + 32) = v63;
    *(v65 + 40) = 0;
    v66 = v64;
    v67 = v76;
    sub_24E6009C8(v66, v76, &qword_27F23AEA0);
    v68 = v67;
    v21 = v79;
    sub_24E6009C8(v68, v79, &qword_27F23AEA0);
    v20 = 0;
  }

  return (*(v8 + 56))(v21, v20, 1, v22);
}

uint64_t sub_24F185FC0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C88();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23ADF0);
  return sub_24F1850AC(v1, a1 + *(v3 + 44));
}

uint64_t sub_24F186048(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24F1860CC()
{
  result = qword_27F23AE20;
  if (!qword_27F23AE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AE28);
    sub_24E602068(&qword_27F23AE30, &qword_27F23AE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AE20);
  }

  return result;
}

unint64_t sub_24F18618C()
{
  result = qword_27F23AE48;
  if (!qword_27F23AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23ADF8);
    sub_24E602068(&qword_27F23AE50, &qword_27F23AE58);
    sub_24E602068(&qword_27F23AE60, &qword_27F23AE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AE48);
  }

  return result;
}

unint64_t sub_24F186270()
{
  result = qword_27F23AE70;
  if (!qword_27F23AE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AE40);
    sub_24F18618C();
    sub_24E602068(&qword_27F23AE78, &qword_27F23AE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AE70);
  }

  return result;
}

uint64_t sub_24F186330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id static BundleImage.load(_:bundle:with:compatibleWith:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = a3;
  }

  else
  {
    if (qword_27F2103D8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = qword_27F22B5B8;
  }

  v11 = a3;
  v12 = sub_24F92B098();
  v13 = [objc_opt_self() imageNamed:v12 inBundle:v10 compatibleWithTraitCollection:a5];

  if (v13)
  {
    if (a4)
    {
      v14 = [v13 imageWithConfiguration_];

      return v14;
    }
  }

  else
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v16 = sub_24F92AAE8();
    __swift_project_value_buffer(v16, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v17[3] = MEMORY[0x277D837D0];
    v17[0] = a1;
    v17[1] = a2;

    sub_24F928458();
    sub_24E601704(v17, &qword_27F2129B0);
    sub_24F92A5A8();

    return [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  return v13;
}

id _s12GameStoreKit11BundleImageC4load7artwork4withSo7UIImageCSgAA7ArtworkC_So0I19SymbolConfigurationCSgtFZ_0(uint64_t a1, id a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F488();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F228530);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_24F91F438();
  if (!v12)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  v13 = v11;
  v14 = v12;
  v15 = *(a1 + 24);
  v30 = *(a1 + 16);
  v31 = v15;
  if (!Artwork.URLTemplate.isBundleImage.getter())
  {
    (*(v8 + 8))(v10, v7);

    return 0;
  }

  if (*(a1 + 96) > 1u)
  {
    if (*(a1 + 96) != 2)
    {
      goto LABEL_18;
    }

    v16 = 3;
  }

  else if (*(a1 + 96))
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v18 = [objc_opt_self() configurationWithScale_];
  if (v18)
  {
    v19 = v18;
    if (a2)
    {
      v20 = a2;
      a2 = [v19 configurationByApplyingConfiguration_];

      goto LABEL_19;
    }
  }

LABEL_18:
  v21 = a2;
LABEL_19:
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = qword_27F22B5B8;
  v23 = sub_24F92B098();
  v24 = [objc_opt_self() imageNamed:v23 inBundle:v22 compatibleWithTraitCollection:0];

  if (!v24)
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v28 = sub_24F92AAE8();
    v29 = __swift_project_value_buffer(v28, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v32 = MEMORY[0x277D837D0];
    v30 = v13;
    v31 = v14;
    sub_24F928458();
    sub_24E601704(&v30, &qword_27F2129B0);
    sub_24F92A5A8();

    v25 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v27 = a2;
    goto LABEL_27;
  }

  v25 = v24;

  if (a2)
  {
    v26 = a2;
    v27 = v24;
    v25 = [v24 imageWithConfiguration_];

LABEL_27:
  }

  (*(v8 + 8))(v10, v7);
  return v25;
}

id sub_24F186C18(uint64_t a1)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (Artwork.URLTemplate.isSystemImage.getter())
  {
    _s12GameStoreKit11SystemImageO4name3forSSSgAA7ArtworkC_tFZ_0(a1);
    if (v2)
    {
      if (*(a1 + 96) > 1u)
      {
        if (*(a1 + 96) != 2)
        {
LABEL_15:
          v5 = sub_24F92B098();

          v6 = [objc_opt_self() _systemImageNamed_withConfiguration_];

          return v6;
        }

        v3 = 3;
      }

      else if (*(a1 + 96))
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }

      goto LABEL_15;
    }

    return 0;
  }

  if (!Artwork.URLTemplate.isBundleImage.getter())
  {
    return 0;
  }

  return _s12GameStoreKit11BundleImageC4load7artwork4withSo7UIImageCSgAA7ArtworkC_So0I19SymbolConfigurationCSgtFZ_0(a1, 0);
}

uint64_t sub_24F186D5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F186DA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F186E28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A8);
  sub_24F924038();
  sub_24F09B638();
  sub_24E602068(&qword_27F2387B8, &qword_27F2387A8);
  swift_getWitnessTable();
  return sub_24F926B08();
}

uint64_t sub_24F186F48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  sub_24F924038();
  sub_24E6695B8();
  sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  swift_getWitnessTable();
  return sub_24F926B08();
}

uint64_t sub_24F187068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  v33[1] = a1;
  v34 = a7;
  v35 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98);
  v21 = sub_24F924038();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v33 - v26;
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v40 = a9;
  v41 = a10;
  v42 = a11;
  v43 = a12;
  v44 = a6;
  sub_24F927618();
  sub_24EB1FC40();
  v28 = v34;
  sub_24F926A08();
  v29 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
  v45 = v28;
  v46 = v29;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v24, v21, WitnessTable);
  v31 = *(v22 + 8);
  v31(v24, v21);
  sub_24E7896B8(v27, v21, WitnessTable);
  return (v31)(v27, v21);
}

uint64_t sub_24F1872B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  if (byte_27F39DBC0 == 1)
  {
  }

  else
  {
    a1 = 0;
    a2 = 0;
  }

  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  v20 = byte_27F39DBC1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = a9;
  *(a6 + 56) = a10;
  *(a6 + 64) = a5;
  *(a6 + 72) = 0x4024000000000000;
  *(a6 + 80) = v20;
}

uint64_t sub_24F1873D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v28 = a1;
  v29 = a8;
  v26 = a7;
  v27 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387A8);
  v14 = sub_24F924038();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  v30 = a2;
  v31 = a3;
  v32 = a4 & 1;
  v33 = a5;
  v34 = a6;
  v35 = v26;
  sub_24F927618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AF58);
  sub_24F18AB54();
  v21 = v27;
  sub_24F926A08();
  v22 = sub_24E602068(&qword_27F2387B8, &qword_27F2387A8);
  v36 = v21;
  v37 = v22;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v17, v14, WitnessTable);
  v24 = *(v15 + 8);
  v24(v17, v14);
  sub_24E7896B8(v20, v14, WitnessTable);
  return (v24)(v20, v14);
}

double sub_24F187614@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24[0] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92ADC8();
  v16 = sub_24F929608();
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) != 1)
  {
    sub_24E601704(v15, &qword_27F213E68);
    if (a3)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v20 = sub_24E6438B4();
      if (v21)
      {
        goto LABEL_3;
      }

      v24[0] = v20;
    }

    v24[1] = v24[0];
    v17 = sub_24F92CD88();
    v18 = v22;

    v19 = 0x4024000000000000;
    goto LABEL_8;
  }

  sub_24E601704(v15, &qword_27F213E68);
LABEL_3:
  v17 = 0;
  v18 = 0;
  a4 = 0;
  a5 = 0;
  a6 = 0;
  v19 = 0;
LABEL_8:
  *a7 = v17;
  *(a7 + 8) = v18;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  result = 0.0;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = a6;
  *(a7 + 72) = v19;
  *(a7 + 80) = 0;
  return result;
}

uint64_t sub_24F1877E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_getKeyPath();
  v10 = result;
  v11 = *(v2 + 40);
  if (*(v2 + 48) == 1)
  {
    v42 = *(v2 + 40);
  }

  else
  {

    sub_24F92BDC8();
    v23 = v5;
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v11, 0);
    result = (*(v6 + 8))(v8, v23);
    v11 = v42;
  }

  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AF40);
    (*(*(v13 - 8) + 16))(a2, a1, v13);
    v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AF48) + 36));
    *v14 = v10;
    v14[1] = v11 + 1;
    v15 = sub_24F927618();
    v17 = v16;
    sub_24F187B00(v2, &v25);
    v33 = v27;
    v34 = v28;
    v35 = v29;
    v31 = v25;
    v32 = v26;
    *&v36 = v30;
    *(&v36 + 1) = v15;
    v37 = v17;
    v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AF50) + 36);
    v19 = v36;
    *(v18 + 64) = v35;
    *(v18 + 80) = v19;
    *(v18 + 96) = v37;
    v20 = v32;
    *v18 = v31;
    *(v18 + 16) = v20;
    v21 = v34;
    *(v18 + 32) = v33;
    *(v18 + 48) = v21;
    v38[0] = v25;
    v38[1] = v26;
    v38[3] = v28;
    v38[4] = v29;
    v38[2] = v27;
    v39 = v30;
    v40 = v15;
    v41 = v17;
    sub_24E60169C(&v31, &v24, &qword_27F215A98);
    return sub_24E601704(v38, &qword_27F215A98);
  }

  return result;
}

uint64_t sub_24F187AC4()
{
  sub_24F189AF8();
  sub_24F924868();
  return v1;
}

double sub_24F187B00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210F78 != -1)
  {
    swift_once();
  }

  v30 = byte_27F39DBC0;
  if (qword_27F210F80 != -1)
  {
    swift_once();
  }

  v8 = byte_27F39DBC1;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v9;
  if ((v10 & 1) == 0)
  {

    sub_24F92BDC8();
    v12 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v9, 0);
    (*(v5 + 8))(v7, v4);
    v11 = v31;
  }

  if (v11 < 1)
  {
    v13 = sub_24F9275A8();
  }

  else
  {
    v13 = sub_24F9275B8();
  }

  v15 = v13;
  v16 = v14;
  if ((v10 & 1) == 0)
  {

    sub_24F92BDC8();
    v17 = sub_24F9257A8();
    v29 = v4;
    v18 = v16;
    v19 = v15;
    v20 = v8;
    v21 = v17;
    sub_24F921FD8();

    v8 = v20;
    v15 = v19;
    v16 = v18;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v9, 0);
    (*(v5 + 8))(v7, v29);
    v9 = v31;
  }

  if (v9 < 1)
  {
    v22 = sub_24F926C68();
  }

  else
  {
    v22 = sub_24F926CC8();
  }

  v23 = v22;
  if (v30)
  {
    v24 = *(a1 + 24);
    __swift_project_boxed_opaque_existential_1(a1, v24);
    v25 = sub_24F187E00(v24);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  *a2 = v25;
  *(a2 + 8) = v26;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = v23;
  *(a2 + 72) = 0x4024000000000000;
  *(a2 + 80) = v8;
  return result;
}

uint64_t sub_24F187E00(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D988);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ComponentGrid();
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v15 = sub_24F92B188();
  v17 = v16;
  (*(v7 + 16))(v10, v2, a1);
  v18 = swift_dynamicCast();
  v19 = *(v12 + 56);
  if (v18)
  {
    v19(v6, 0, 1, v11);
    sub_24F18AA48(v6, v14);
    v20 = v14[v11[9]];
    if (v20 <= 4)
    {
      if (v14[v11[9]] <= 1u)
      {
        v21 = 0xE700000000000000;
        if (v14[v11[9]])
        {
          v22 = 0x426E6769736564;
        }

        else
        {
          v22 = 0x416E6769736564;
        }
      }

      else if (v20 == 2)
      {
        v21 = 0xE700000000000000;
        v22 = 0x436E6769736564;
      }

      else if (v20 == 3)
      {
        v21 = 0xE700000000000000;
        v22 = 0x446E6769736564;
      }

      else
      {
        v21 = 0xEC00000065736E65;
        v22 = 0x44446E6769736564;
      }
    }

    else
    {
      v21 = 0xE700000000000000;
      if (v14[v11[9]] > 7u)
      {
        if (v20 == 8)
        {
          v22 = 0x486E6769736564;
        }

        else if (v20 == 9)
        {
          v22 = 0x496E6769736564;
        }

        else
        {
          v22 = 0x6E776F6E6B6E75;
        }
      }

      else if (v20 == 5)
      {
        v22 = 0x456E6769736564;
      }

      else if (v20 == 6)
      {
        v22 = 0x466E6769736564;
      }

      else
      {
        v22 = 0x476E6769736564;
      }
    }

    v23 = v14[v11[11]];
    if (v14[v11[10]])
    {
      DynamicType = v22;
      v30 = v21;
      if (v23)
      {
        v24 = 0x29522C524628;
        v25 = 0xE600000000000000;
      }

      else
      {
        v24 = 693257768;
        v25 = 0xE400000000000000;
      }
    }

    else
    {
      if (!v14[v11[11]])
      {
LABEL_31:
        DynamicType = v15;
        v30 = v17;
        MEMORY[0x253050C20](0x3A736D6574690ALL, 0xE700000000000000);
        v28[1] = *(*&v14[v11[8]] + 16);
        v26 = sub_24F92CD88();
        MEMORY[0x253050C20](v26);

        MEMORY[0x253050C20](10, 0xE100000000000000);
        MEMORY[0x253050C20](v22, v21);

        v15 = DynamicType;
        sub_24F18AAAC(v14);
        return v15;
      }

      DynamicType = v22;
      v30 = v21;
      v24 = 2708008;
      v25 = 0xE300000000000000;
    }

    MEMORY[0x253050C20](v24, v25);
    v22 = DynamicType;
    v21 = v30;
    goto LABEL_31;
  }

  v19(v6, 1, 1, v11);
  sub_24E601704(v6, &qword_27F22D988);
  return v15;
}

void *sub_24F188298@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (sub_24F9257C8() == a1)
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231730);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93A400;
  v7 = sub_24F9257B8();
  *(v6 + 32) = v7;
  v8 = sub_24F9257D8();
  *(v6 + 33) = v8;
  v9 = sub_24F9257C8();
  sub_24F9257C8();
  if (sub_24F9257C8() != v7)
  {
    v9 = sub_24F9257C8();
  }

  sub_24F9257C8();
  if (sub_24F9257C8() != v8)
  {
    v9 = sub_24F9257C8();
  }

  if (v9 == a1)
  {
LABEL_7:
    sub_24F923998();
    sub_24F188528(v10, v11);
  }

  else
  {
    if (sub_24F9257B8() == a1)
    {
      sub_24F923998();
      v18 = v17;
    }

    else
    {
      if (sub_24F9257D8() != a1)
      {
        goto LABEL_8;
      }

      sub_24F923998();
      v18 = v19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24F93DE60;
    *(v20 + 56) = MEMORY[0x277D85048];
    *(v20 + 64) = sub_24E99D9C8();
    *(v20 + 32) = v18;
    sub_24F92B118();
  }

LABEL_8:
  v12 = sub_24F926C98();
  v13 = sub_24F927618();
  v15 = v14;
  sub_24F188624(a2, __src);

  memcpy(__dst, __src, 0x128uLL);
  __dst[37] = v13;
  __dst[38] = v15;
  memcpy(v27, __dst, sizeof(v27));
  memcpy(v24, __src, sizeof(v24));
  v25 = v13;
  v26 = v15;
  sub_24E60169C(__dst, v21, &qword_27F23AF90);
  sub_24E601704(v24, &qword_27F23AF90);
  *a3 = v12;
  result = memcpy((a3 + 8), v27, 0x138uLL);
  *(a3 + 320) = 0;
  return result;
}

uint64_t sub_24F188528(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24F93DE60;
  v5 = MEMORY[0x277D85048];
  *(v4 + 56) = MEMORY[0x277D85048];
  v6 = sub_24E99D9C8();
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  v10 = sub_24F92B118();
  MEMORY[0x253050C20](120, 0xE100000000000000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
  *(v7 + 32) = a2;
  v8 = sub_24F92B118();
  MEMORY[0x253050C20](v8);

  return v10;
}

uint64_t sub_24F188624@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{

  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v3 = sub_24F925C48();
  v5 = v4;
  v7 = v6;

  sub_24F9259E8();
  v8 = sub_24F925C98();
  v10 = v9;
  v12 = v11;

  sub_24E600B40(v3, v5, v7 & 1);

  v13 = sub_24F925B88();
  v41 = v14;
  v42 = v13;
  v16 = v15;
  v40 = v17;
  sub_24E600B40(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = v16 & 1;
  v21 = sub_24F925868();
  sub_24F9257B8();
  sub_24F9257C8();
  sub_24F9257C8();
  sub_24F923318();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v8) = sub_24F9257F8();
  sub_24F9257D8();
  sub_24F9257C8();
  sub_24F9257C8();
  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_24F9257B8();
  sub_24F9257C8();
  sub_24F9257C8();
  sub_24F9257D8();
  sub_24F9257C8();
  sub_24F9257C8();
  sub_24F927618();
  sub_24F9242E8();
  *&v44[55] = v48;
  *&v44[71] = v49;
  *&v44[87] = v50;
  *&v44[103] = v51;
  *&v44[7] = v45;
  *&v44[23] = v46;
  *&v44[39] = v47;
  v38 = sub_24F925808();
  *a2 = v42;
  *(a2 + 8) = v41;
  *(a2 + 16) = v20;
  *(a2 + 24) = v40;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0x3FE0000000000000;
  *(a2 + 48) = v19;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = v21;
  *(a2 + 80) = v23;
  *(a2 + 88) = v25;
  *(a2 + 96) = v27;
  *(a2 + 104) = v29;
  *(a2 + 112) = 0;
  *(a2 + 120) = v8;
  *(a2 + 128) = v31;
  *(a2 + 136) = v33;
  *(a2 + 144) = v35;
  *(a2 + 152) = v37;
  *(a2 + 160) = 0;
  *(a2 + 225) = *&v44[64];
  *(a2 + 241) = *&v44[80];
  *(a2 + 257) = *&v44[96];
  *(a2 + 161) = *v44;
  *(a2 + 177) = *&v44[16];
  *(a2 + 193) = *&v44[32];
  *(a2 + 209) = *&v44[48];
  *(a2 + 272) = *(&v51 + 1);
  *(a2 + 280) = a1;
  *(a2 + 288) = v38;
}

uint64_t sub_24F1889AC@<X0>(void *(**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = sub_24F18ADFC;
  a1[1] = v5;
}

__n128 sub_24F188A20@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v107 = *a1;
  if (v107.n128_u64[1])
  {
    if ((*(a1 + 80) & 1) == 0)
    {
      v14 = *(a1 + 16);
      v15 = *(a1 + 24);
      sub_24F18964C(a1, &v108);
      v30 = v116;
      v31 = v117;
      v32 = v118;
      v26 = v112;
      v27 = v113;
      v28 = v114;
      v29 = v115;
      v22 = v108;
      v23 = v109;
      v24 = v110;
      v25 = v111;
      v41 = v116;
      v42 = v117;
      v43 = v118;
      v37 = v112;
      v38 = v113;
      v39 = v114;
      v40 = v115;
      v33 = v108;
      v34 = v109;
      v35 = v110;
      v36 = v111;
      sub_24E60169C(&v22, &v95, &unk_27F23AF08);
      sub_24E601704(&v33, &unk_27F23AF08);
      v53 = v30;
      v54 = v31;
      v55 = v32;
      v49 = v26;
      v50 = v27;
      v51 = v28;
      v52 = v29;
      v45 = v22;
      v46 = v23;
      v47 = v24;
      v48 = v25;
      v44.n128_u64[0] = v14;
      v44.n128_u64[1] = v15;
      v56 = 0;
      LOBYTE(v94) = 0;
      v92 = v31;
      v93 = v32;
      v88 = v27;
      v89 = v28;
      v91 = v30;
      v90 = v29;
      v84 = v23;
      v85 = v24;
      v87 = v26;
      v86 = v25;
      v82 = v44;
      v83 = v22;
      sub_24F189D68(&v82);
      v118 = v92;
      *v119 = v93;
      *&v119[16] = v94;
      v114 = v88;
      v115 = v89;
      v117 = v91;
      v116 = v90;
      v110 = v84;
      v111 = v85;
      v113 = v87;
      v112 = v86;
      v109 = v83;
      v108 = v82;
      sub_24E60169C(&v44, &v95, &qword_27F23AEC8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEC8);
      sub_24F189B94();
      sub_24F924E28();
      v105 = v79;
      *v106 = v80;
      *&v106[16] = v81;
      v101 = v75;
      v102 = v76;
      v104 = v78;
      v103 = v77;
      v97 = v71;
      v98 = v72;
      v100 = v74;
      v99 = v73;
      v96 = v70;
      v95 = v69;
      sub_24F189D74(&v95);
      v118 = v105;
      *v119 = *v106;
      *&v119[15] = *&v106[15];
      v114 = v101;
      v115 = v102;
      v117 = v104;
      v116 = v103;
      v110 = v97;
      v111 = v98;
      v113 = v100;
      v112 = v99;
      v109 = v96;
      v108 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEF0);
      sub_24F189C58();
      sub_24F189CDC();
      sub_24F924E28();
      sub_24E601704(&v44, &qword_27F23AEC8);
      v118 = v67;
      *v119 = *v68;
      v13 = *&v68[15];
      goto LABEL_8;
    }

    v108 = v107;
    sub_24E60169C(&v107, &v95, &unk_27F23B740);
    MEMORY[0x253050C20](10, 0xE100000000000000);
    sub_24F923998();
    v6 = sub_24F188528(v4, v5);
    MEMORY[0x253050C20](v6);

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    sub_24F18964C(a1, &v108);
    v30 = v116;
    v31 = v117;
    v32 = v118;
    v26 = v112;
    v27 = v113;
    v28 = v114;
    v29 = v115;
    v22 = v108;
    v23 = v109;
    v24 = v110;
    v25 = v111;
    v41 = v116;
    v42 = v117;
    v43 = v118;
    v37 = v112;
    v38 = v113;
    v39 = v114;
    v40 = v115;
    v33 = v108;
    v34 = v109;
    v35 = v110;
    v36 = v111;
    sub_24E60169C(&v22, &v95, &unk_27F23AF08);
    sub_24E601704(&v33, &unk_27F23AF08);

    v53 = v30;
    v54 = v31;
    v55 = v32;
    v49 = v26;
    v50 = v27;
    v51 = v28;
    v52 = v29;
    v45 = v22;
    v46 = v23;
    v47 = v24;
    v48 = v25;
    v44.n128_u64[0] = v8;
    v44.n128_u64[1] = v7;
    v56 = 0;
    LOBYTE(v94) = 0;
    v92 = v31;
    v93 = v32;
    v88 = v27;
    v89 = v28;
    v91 = v30;
    v90 = v29;
    v84 = v23;
    v85 = v24;
    v87 = v26;
    v86 = v25;
    v82 = v44;
    v83 = v22;
    sub_24F189D7C(&v82);
    v118 = v92;
    *v119 = v93;
    *&v119[16] = v94;
    v114 = v88;
    v115 = v89;
    v117 = v91;
    v116 = v90;
    v110 = v84;
    v111 = v85;
    v113 = v87;
    v112 = v86;
    v109 = v83;
    v108 = v82;
    sub_24E60169C(&v44, &v95, &qword_27F23AEC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEC8);
    sub_24F189B94();
    sub_24F924E28();
    v105 = v79;
    *v106 = v80;
    *&v106[16] = v81;
    v101 = v75;
    v102 = v76;
    v104 = v78;
    v103 = v77;
    v97 = v71;
    v98 = v72;
    v100 = v74;
    v99 = v73;
    v96 = v70;
    v95 = v69;
    sub_24F189D74(&v95);
  }

  else
  {
    if ((*(a1 + 80) & 1) == 0)
    {
      sub_24F189D68(&v82);
      v118 = v92;
      *v119 = v93;
      *&v119[16] = v94;
      v114 = v88;
      v115 = v89;
      v117 = v91;
      v116 = v90;
      v110 = v84;
      v111 = v85;
      v113 = v87;
      v112 = v86;
      v109 = v83;
      v108 = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEC8);
      sub_24F189B94();
      sub_24F924E28();
      v105 = v79;
      *v106 = v80;
      *&v106[16] = v81;
      v101 = v75;
      v102 = v76;
      v104 = v78;
      v103 = v77;
      v97 = v71;
      v98 = v72;
      v100 = v74;
      v99 = v73;
      v96 = v70;
      v95 = v69;
      sub_24F189C4C(&v95);
      v67 = v105;
      *v68 = *v106;
      *&v68[15] = *&v106[15];
      v63 = v101;
      v64 = v102;
      v65 = v103;
      v66 = v104;
      v59 = v97;
      v60 = v98;
      v61 = v99;
      v62 = v100;
      v57 = v95;
      v58 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEF0);
      sub_24F189C58();
      sub_24F189CDC();
      sub_24F924E28();
      goto LABEL_9;
    }

    sub_24F923998();
    sub_24F188528(v9, v10);
    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    sub_24F18964C(a1, &v108);
    v30 = v116;
    v31 = v117;
    v32 = v118;
    v26 = v112;
    v27 = v113;
    v28 = v114;
    v29 = v115;
    v22 = v108;
    v23 = v109;
    v24 = v110;
    v25 = v111;
    v41 = v116;
    v42 = v117;
    v43 = v118;
    v37 = v112;
    v38 = v113;
    v39 = v114;
    v40 = v115;
    v33 = v108;
    v34 = v109;
    v35 = v110;
    v36 = v111;
    sub_24E60169C(&v22, &v95, &unk_27F23AF08);
    sub_24E601704(&v33, &unk_27F23AF08);

    v53 = v30;
    v54 = v31;
    v55 = v32;
    v49 = v26;
    v50 = v27;
    v51 = v28;
    v52 = v29;
    v45 = v22;
    v46 = v23;
    v47 = v24;
    v48 = v25;
    v44.n128_u64[0] = v11;
    v44.n128_u64[1] = v12;
    v56 = 0;
    LOBYTE(v94) = 0;
    v92 = v31;
    v93 = v32;
    v88 = v27;
    v89 = v28;
    v91 = v30;
    v90 = v29;
    v84 = v23;
    v85 = v24;
    v87 = v26;
    v86 = v25;
    v82 = v44;
    v83 = v22;
    sub_24F189D7C(&v82);
    v118 = v92;
    *v119 = v93;
    *&v119[16] = v94;
    v114 = v88;
    v115 = v89;
    v117 = v91;
    v116 = v90;
    v110 = v84;
    v111 = v85;
    v113 = v87;
    v112 = v86;
    v109 = v83;
    v108 = v82;
    sub_24E60169C(&v44, &v95, &qword_27F23AEC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEC8);
    sub_24F189B94();
    sub_24F924E28();
    v105 = v79;
    *v106 = v80;
    *&v106[16] = v81;
    v101 = v75;
    v102 = v76;
    v104 = v78;
    v103 = v77;
    v97 = v71;
    v98 = v72;
    v100 = v74;
    v99 = v73;
    v96 = v70;
    v95 = v69;
    sub_24F189C4C(&v95);
  }

  v118 = v105;
  *v119 = *v106;
  *&v119[15] = *&v106[15];
  v114 = v101;
  v115 = v102;
  v117 = v104;
  v116 = v103;
  v110 = v97;
  v111 = v98;
  v113 = v100;
  v112 = v99;
  v109 = v96;
  v108 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AEF0);
  sub_24F189C58();
  sub_24F189CDC();
  sub_24F924E28();
  sub_24E601704(&v44, &qword_27F23AEC8);
  v118 = v67;
  *v119 = *v68;
  v13 = *&v68[15];
LABEL_8:
  *&v119[15] = v13;
  v114 = v63;
  v115 = v64;
  v117 = v66;
  v116 = v65;
  v110 = v59;
  v111 = v60;
  v113 = v62;
  v112 = v61;
  v109 = v58;
  v108 = v57;
LABEL_9:
  v16 = *v119;
  *(a2 + 160) = v118;
  *(a2 + 176) = v16;
  *(a2 + 191) = *&v119[15];
  v17 = v115;
  *(a2 + 96) = v114;
  *(a2 + 112) = v17;
  v18 = v117;
  *(a2 + 128) = v116;
  *(a2 + 144) = v18;
  v19 = v111;
  *(a2 + 32) = v110;
  *(a2 + 48) = v19;
  v20 = v113;
  *(a2 + 64) = v112;
  *(a2 + 80) = v20;
  result = v109;
  *a2 = v108;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_24F18964C@<X0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{

  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v3 = sub_24F925C48();
  v5 = v4;
  v7 = v6;

  sub_24F9259E8();
  v8 = sub_24F925C98();
  v10 = v9;
  v12 = v11;

  sub_24E600B40(v3, v5, v7 & 1);

  v13 = sub_24F925B88();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_24E600B40(v8, v10, v12 & 1);

  v20 = sub_24F925808();
  sub_24F923318();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v17 & 1;
  LOBYTE(v68[0]) = v17 & 1;
  LOBYTE(v51) = 0;
  v30 = *(a1 + 64);
  v31 = sub_24F925808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AE0);
  result = swift_allocObject();
  *(result + 16) = xmmword_24F93DE60;
  v33 = *(a1 + 72);
  *(result + 32) = v33;
  if (v33 < 0.0)
  {
    __break(1u);
  }

  else if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {

    sub_24EFB3288(0x20000000000001uLL);
    sub_24F923658();
    v34 = v80;
    v35 = v81;
    v36 = DWORD1(v81);
    v37 = *(&v81 + 1);
    v38 = v82;
    v39 = sub_24F927618();
    *&v51 = v13;
    *(&v51 + 1) = v15;
    LOBYTE(v52) = v29;
    *(&v52 + 1) = v19;
    LOBYTE(v53) = v20;
    *(&v53 + 1) = v22;
    *&v54 = v24;
    *(&v54 + 1) = v26;
    *v55 = v28;
    v55[8] = 0;
    *&v55[16] = v30;
    v55[24] = v31;
    *&v55[25] = 0;
    *&v45[11] = *&v55[11];
    v43 = v53;
    v44 = v54;
    *v56 = v80 * 0.5;
    *(v56 + 1) = v80;
    v56[1] = v81;
    v56[2] = v82;
    LOWORD(v57) = 256;
    *(&v57 + 1) = v39;
    *&v58 = v40;
    *(&v58 + 1) = v30;
    *v45 = *v55;
    v46 = v56[0];
    v47 = v81;
    v49 = v57;
    v50 = v58;
    v48 = v82;
    v41 = v52;
    *a2 = v51;
    a2[1] = v41;
    a2[4] = *v45;
    a2[5] = *&v45[16];
    a2[2] = v43;
    a2[3] = v44;
    a2[9] = v49;
    a2[10] = v50;
    a2[7] = v47;
    a2[8] = v48;
    a2[6] = v46;
    v59[0] = v34 * 0.5;
    v59[1] = v34;
    v60 = v35;
    v61 = v36;
    v62 = v37;
    v63 = v38;
    v64 = 256;
    v65 = v39;
    v66 = v40;
    v67 = v30;

    sub_24E60169C(&v51, v68, &qword_27F23AF10);
    sub_24E60169C(v56, v68, &qword_27F23AF18);
    sub_24E601704(v59, &qword_27F23AF18);
    v68[0] = v13;
    v68[1] = v15;
    v69 = v29;
    v70 = v19;
    v71 = v20;
    v72 = v22;
    v73 = v24;
    v74 = v26;
    v75 = v28;
    v76 = 0;
    v77 = v30;
    v78 = v31;
    v79 = 0;
    return sub_24E601704(v68, &qword_27F23AF10);
  }

  __break(1u);
  return result;
}

__n128 sub_24F189A24@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v16 = *(v1 + 48);
  v17 = v4;
  v18 = *(v1 + 80);
  v5 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v5;
  v15 = v3;
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v11 = v16;
  v12 = v15;
  sub_24EB1FB58(v14, v13);
  v9 = sub_24F925808();
  *a1 = sub_24F189B8C;
  *(a1 + 8) = v6;
  *(a1 + 16) = v9;
  result = v12;
  *(a1 + 40) = v11;
  *(a1 + 24) = v12;
  *(a1 + 56) = 0;
  return result;
}

unint64_t sub_24F189AF8()
{
  result = qword_27F23AEC0;
  if (!qword_27F23AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AEC0);
  }

  return result;
}

uint64_t sub_24F189B4C()
{

  return swift_deallocObject();
}

unint64_t sub_24F189B94()
{
  result = qword_27F23AED0;
  if (!qword_27F23AED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AEC8);
    sub_24E602068(&qword_27F23AED8, &qword_27F23AEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AED0);
  }

  return result;
}

unint64_t sub_24F189C58()
{
  result = qword_27F23AEF8;
  if (!qword_27F23AEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AEE8);
    sub_24F189B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AEF8);
  }

  return result;
}

unint64_t sub_24F189CDC()
{
  result = qword_27F23AF00;
  if (!qword_27F23AF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AEF0);
    sub_24F189B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AF00);
  }

  return result;
}

uint64_t sub_24F189D84()
{
  v1 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F9479A0;
  *(v2 + 32) = @"debug";
  *(v2 + 40) = @"internal";
  *(v2 + 48) = @"convergence";
  type metadata accessor for BuildType(0);
  v3 = @"debug";
  v4 = @"internal";
  v5 = @"convergence";
  v6 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v1, v6);

  if (IsAnyOf && (v8 = sub_24F92B098(), v9 = [v0 arrayForKey_], v8, v9) && (v10 = sub_24F92B5A8(), v9, v11 = sub_24E9E2340(v10), v12 = , v11))
  {
    v16[0] = 0xD00000000000001FLL;
    v16[1] = 0x800000024FA6E0D0;
    MEMORY[0x28223BE20](v12);
    v15[2] = v16;
    v13 = sub_24E6159B8(sub_24E7FAFB0, v15, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_24F189F74()
{
  v1 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F9479A0;
  *(v2 + 32) = @"debug";
  *(v2 + 40) = @"internal";
  *(v2 + 48) = @"convergence";
  type metadata accessor for BuildType(0);
  v3 = @"debug";
  v4 = @"internal";
  v5 = @"convergence";
  v6 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v1, v6);

  if (IsAnyOf && (v8 = sub_24F92B098(), v9 = [v0 arrayForKey_], v8, v9) && (v10 = sub_24F92B5A8(), v9, v11 = sub_24E9E2340(v10), v12 = , v11))
  {
    v16[0] = 0xD000000000000016;
    v16[1] = 0x800000024FA6E0F0;
    MEMORY[0x28223BE20](v12);
    v15[2] = v16;
    v13 = sub_24E6159B8(sub_24E7FAFB0, v15, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_24F18A164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v7 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F9479A0;
  *(v8 + 32) = @"debug";
  *(v8 + 40) = @"internal";
  *(v8 + 48) = @"convergence";
  type metadata accessor for BuildType(0);
  v9 = @"debug";
  v10 = @"internal";
  v11 = @"convergence";
  v12 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v7, v12);

  if (IsAnyOf && (v14 = sub_24F92B098(), v15 = [v3 arrayForKey_], v14, v15) && (v16 = sub_24F92B5A8(), v15, v17 = sub_24E9E2340(v16), v18 = , v17))
  {
    v22[0] = a1;
    v22[1] = a2;
    MEMORY[0x28223BE20](v18);
    v21[2] = v22;
    v19 = sub_24E6159B8(a3, v21, v17);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

id sub_24F18A344()
{
  v1 = ASKBuildTypeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F9479A0;
  *(v2 + 32) = @"debug";
  *(v2 + 40) = @"internal";
  *(v2 + 48) = @"convergence";
  type metadata accessor for BuildType(0);
  v3 = @"debug";
  v4 = @"internal";
  v5 = @"convergence";
  v6 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v1, v6);

  if (!IsAnyOf)
  {
    return 0;
  }

  v8 = sub_24F92B098();
  v9 = [v0 BOOLForKey_];

  return v9;
}

void sub_24F18A51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *), _BYTE *a5)
{
  v9 = [objc_opt_self() standardUserDefaults];
  LOBYTE(a4) = sub_24F18A164(a2, a3, a4);

  *a5 = a4 & 1;
}

uint64_t sub_24F18A59C()
{
  if (qword_27F210F78 != -1)
  {
    result = swift_once();
  }

  if (byte_27F39DBC0)
  {
    v0 = 1;
  }

  else
  {
    if (qword_27F210F80 != -1)
    {
      result = swift_once();
    }

    v0 = byte_27F39DBC1;
  }

  byte_27F39DBC2 = v0;
  return result;
}

void sub_24F18A67C(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  LOBYTE(a2) = a2();

  *a3 = a2 & 1;
}

uint64_t sub_24F18A7F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 *a5)
{
  if (*a4 == -1)
  {
    return *a5;
  }

  swift_once();
  return *a5;
}

uint64_t sub_24F18A8B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_24F18A8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F18A96C()
{
  result = qword_27F23AF20;
  if (!qword_27F23AF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AF28);
    sub_24E602068(&qword_27F23AF30, &qword_27F23AF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AF20);
  }

  return result;
}

uint64_t sub_24F18AA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentGrid();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F18AAAC(uint64_t a1)
{
  v2 = type metadata accessor for ComponentGrid();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F18AB54()
{
  result = qword_27F23AF60;
  if (!qword_27F23AF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AF58);
    sub_24EB1FC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AF60);
  }

  return result;
}

unint64_t sub_24F18AC0C()
{
  result = qword_27F23AF68;
  if (!qword_27F23AF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AF50);
    sub_24F18ACC4();
    sub_24E602068(&qword_27F2551A0, &qword_27F215A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AF68);
  }

  return result;
}

unint64_t sub_24F18ACC4()
{
  result = qword_27F23AF70;
  if (!qword_27F23AF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AF48);
    sub_24E602068(&qword_27F23AF78, &qword_27F23AF40);
    sub_24E602068(&qword_27F23AF80, &qword_27F23AF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AF70);
  }

  return result;
}

uint64_t sub_24F18ADC4()
{

  return swift_deallocObject();
}

__n128 OffsetGridLayout.__allocating_init(metrics:views:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v4 + 48) = result;
  *(v4 + 64) = v7;
  *(v4 + 80) = a2;
  return result;
}

uint64_t OffsetGridLayout.init(metrics:views:)(_OWORD *a1, uint64_t a2)
{
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  v4 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v4;
  *(v2 + 80) = a2;
  return v2;
}

__n128 OffsetGridLayout.metrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  v4 = *(v1 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t OffsetGridLayout.Metrics.init(itemSize:interItemSpacing:lineSpacing:numberOfRows:originOffset:interRowHorizontalOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = result;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  return result;
}

double static OffsetGridLayout.Metrics.centerOffsetLayout(with:interItemSpacing:lineSpacing:numberOfRows:originOffset:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a1;
  result = (a3 + a5) * 0.5;
  *(a2 + 40) = a7;
  *(a2 + 48) = a8;
  *(a2 + 56) = result;
  return result;
}

uint64_t static OffsetGridLayout.numberOfViewsNeeded(toFill:with:)(_OWORD *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  v7 = *(sub_24F18B240(v9, a2, a3, a4, a5) + 2);

  return v7;
}

uint64_t sub_24F18AFB0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v6 = *(v4 + 32);
  v17 = *(v4 + 16);
  v18 = v6;
  v7 = *(v4 + 64);
  v19 = *(v4 + 48);
  v20 = v7;
  result = sub_24F18B240(&v17, a1, a2, a3, a4);
  v9 = result;
  v10 = *(v4 + 80);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    v14 = result + 56;
    while (v12 < *(v10 + 16))
    {
      result = sub_24E615E00(v13, v16);
      v15 = *(v9 + 16);
      if (v12 == v15)
      {

        __swift_destroy_boxed_opaque_existential_1(v16);
        return sub_24F922128();
      }

      if (v12 >= v15)
      {
        goto LABEL_11;
      }

      ++v12;
      sub_24E612E28(v16, &v17);
      __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
      sub_24F922228();
      result = __swift_destroy_boxed_opaque_existential_1(&v17);
      v13 += 40;
      v14 += 32;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_7:

    return sub_24F922128();
  }

  return result;
}

uint64_t OffsetGridLayout.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24F18B1A4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  WitnessTable = swift_getWitnessTable();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, WitnessTable, a3, v11, v12);
}

__n128 sub_24F18B228@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *a1 = *(*v1 + 16);
  *(a1 + 16) = v3;
  result = *(v2 + 48);
  v5 = *(v2 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

char *sub_24F18B240(char *result, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = *(result + 4);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v5)
    {
      return MEMORY[0x277D84F90];
    }

    v9 = 0;
    v10 = *result;
    v11 = *(result + 1);
    v18 = v11 + *(result + 3);
    v12 = *result + *(result + 2);
    v19 = *(result + 5) - v12 * trunc(*(result + 5) / v12);
    v20 = *(result + 7);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v14 = v19 + v20 * v9 - v12 * ceil((v19 + v20 * v9) / v12);
      v22.origin.x = a2;
      v22.origin.y = a3;
      v22.size.width = a4;
      v22.size.height = a5;
      if (v14 < CGRectGetMaxX(v22))
      {
        do
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_24E617B8C(0, *(v13 + 2) + 1, 1, v13);
          }

          v16 = *(v13 + 2);
          v15 = *(v13 + 3);
          if (v16 >= v15 >> 1)
          {
            v13 = sub_24E617B8C((v15 > 1), v16 + 1, 1, v13);
          }

          *(v13 + 2) = v16 + 1;
          v17 = &v13[32 * v16];
          v17[4] = v14;
          v17[5] = v18 * v9;
          v17[6] = v10;
          v17[7] = v11;
          v14 = v12 + v14;
          v23.origin.x = a2;
          v23.origin.y = a3;
          v23.size.width = a4;
          v23.size.height = a5;
        }

        while (v14 < CGRectGetMaxX(v23));
      }

      ++v9;
    }

    while (v9 != v5);
    return v13;
  }

  return result;
}

uint64_t _s12GameStoreKit16OffsetGridLayoutC21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_24F9225E8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F922618();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v13 = a1[3];
  v14 = a1[4];
  (*(v4 + 104))(v6, *MEMORY[0x277D22788], v3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85048];
  v17 = MEMORY[0x277D225F8];
  *(v15 + 16) = xmmword_24F93A400;
  v23 = v16;
  v24 = v17;
  v22 = v12;
  v18 = sub_24F9229A8();
  v19 = MEMORY[0x277D228E0];
  *(v15 + 56) = v18;
  *(v15 + 64) = v19;
  __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  result = sub_24F9229B8();
  v23 = v16;
  v24 = v17;
  v22 = v13;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    *(v15 + 96) = v18;
    *(v15 + 104) = v19;
    __swift_allocate_boxed_opaque_existential_1((v15 + 72));
    sub_24F9229B8();
    sub_24F9225F8();
    sub_24F9225D8();
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

unint64_t sub_24F18B684()
{
  result = qword_27F23AFA8;
  if (!qword_27F23AFA8)
  {
    type metadata accessor for OffsetGridLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23AFA8);
  }

  return result;
}

uint64_t ImpedimentFlowConfig.UseCase.rawValue.getter()
{
  v1 = 0x736572746C6F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x42656D6F636C6577;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D61476E69;
  }
}

uint64_t sub_24F18B7C0()
{
  result = sub_24F92B098();
  qword_27F39DBC8 = result;
  return result;
}

uint64_t sub_24F18B7F8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24F18B818, 0, 0);
}

uint64_t sub_24F18B818()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  *(v0 + 40) = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Resetting impediments and rebootstrap...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = type metadata accessor for ImpedimentFlowDestinationStates();
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_24F18B988;

  return MEMORY[0x28217F228](v0 + 16, v5, v5);
}

uint64_t sub_24F18B988()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_24F18BB18;
  }

  else
  {
    v2 = sub_24F18BA9C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F18BA9C()
{
  v1 = *(v0 + 32);
  ImpedimentFlowDestinationStates.reset()();
  [v1 notify];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F18BB18()
{
  v1 = *(v0 + 56);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Failed to reset impediments and rebootstrap, reason: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

void ImpedimentFlowView.init<>(objectGraph:window:config:inAppSettings:content:)(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a3[1];
  v32 = *a3;
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v17 = sub_24F9220D8();
  __swift_project_value_buffer(v17, qword_27F39E8E0);
  v18 = sub_24F9220B8();
  v19 = sub_24F92BD98();
  if (os_log_type_enabled(v18, v19))
  {
    v30 = a8;
    v20 = a7;
    v21 = a9;
    v22 = a1;
    v23 = a2;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_24E5DD000, v18, v19, "Initializing ImpedimentFlowView requiring authenticated players..", v27, 2u);
    v28 = v27;
    a6 = v26;
    a5 = v25;
    a4 = v24;
    a2 = v23;
    a1 = v22;
    a9 = v21;
    a7 = v20;
    a8 = v30;
    MEMORY[0x2530542D0](v28, -1, -1);
  }

  v33[0] = v32;
  v33[1] = v31;
  *&v29 = a7;
  *(&v29 + 1) = MEMORY[0x277CE1428];
  sub_24F18BE28(a1, a2, v33, a4, a5, a6, 0, 0, a9, v29, a8, MEMORY[0x277CE1410]);
}

void sub_24F18BE28(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v57 = a7;
  v58 = a8;
  v59 = a6;
  v55 = a4;
  v56 = a5;
  v53 = a1;
  v54 = a2;
  v44 = a10;
  v52 = type metadata accessor for ImpedimentFlowAction();
  MEMORY[0x28223BE20](v52);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A0);
  v50 = *(v16 - 8);
  v51 = v16;
  MEMORY[0x28223BE20](v16);
  v49 = &v44 - v17;
  v18 = sub_24F928188();
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a3;
  v22 = a3[1];
  swift_unknownObjectWeakInit();
  v60 = v44;
  v61 = a11;
  v62 = a12;
  v23 = type metadata accessor for ImpedimentFlowView();
  v24 = [objc_opt_self() defaultCenter];
  if (qword_27F210FB0 != -1)
  {
    swift_once();
  }

  sub_24F92C0F8();

  v25 = *(v23 + 80);
  *(a9 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectWeakAssign();
  v45 = v22;
  v46 = v21;
  *(a9 + 32) = v21;
  *(a9 + 33) = v22;
  v27 = v55;
  v26 = v56;
  v29 = v58;
  v28 = v59;
  *(a9 + 40) = v56;
  *(a9 + 48) = v28;
  v30 = v57;
  *(a9 + 56) = v57;
  *(a9 + 64) = v29;
  *(a9 + 72) = v27;
  type metadata accessor for ASKBagContract();

  sub_24E5FCA4C(v26);
  sub_24E5FCA4C(v30);
  sub_24F928F28();
  v31 = v60;
  type metadata accessor for NetworkConnectionMonitor();
  swift_allocObject();
  v32 = NetworkConnectionMonitor.init(bagContract:)(v31);
  v33 = sub_24F921338();
  MEMORY[0x25304DAD0](v33, &unk_24F9D0728, 0, v33);
  sub_24F928F88();
  v34 = v48;
  v35 = *(v47 + 8);
  v35(v20, v48);
  *&v60 = v32;

  sub_24F928168();
  v36 = sub_24F928F88();

  v35(v20, v34);
  type metadata accessor for ImpedimentFlowAuthorityProvider(0);
  v37 = swift_allocObject();
  v38 = v52;

  sub_24F928A98();
  type metadata accessor for ImpedimentFlowDestination();
  swift_storeEnumTagMultiPayload();
  v39 = sub_24F929D28();
  *v15 = 1953460082;
  v15[1] = 0xE400000000000000;
  v40 = (v15 + *(v38 + 28));
  *v40 = v39;
  v40[1] = v41;
  sub_24F199FC4(&qword_27F23AFD0, type metadata accessor for ImpedimentFlowAction);
  sub_24F199FC4(&qword_27F23AFD8, type metadata accessor for ImpedimentFlowAction);
  v42 = v49;
  sub_24F921878();
  (*(v50 + 32))(v37 + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__flowAuthority, v42, v51);
  type metadata accessor for ImpedimentFlowAuthorityProvider.State(0);
  swift_storeEnumTagMultiPayload();
  sub_24F91FDB8();
  *(v37 + 16) = v36;
  v43 = v45;
  *(v37 + 24) = v46;
  *(v37 + 25) = v43;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider_inAppSettings) = v55;

  sub_24E824448(v57);
  sub_24E824448(v56);

  *a9 = v37;
  *(a9 + 8) = 0;
  *(a9 + 16) = v36;
}

void ImpedimentFlowView.init<>(objectGraph:window:config:content:)(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a3;
  v30 = a3[1];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v16 = sub_24F9220D8();
  __swift_project_value_buffer(v16, qword_27F39E8E0);
  v17 = sub_24F9220B8();
  v18 = sub_24F92BD98();
  if (os_log_type_enabled(v17, v18))
  {
    v29 = v15;
    v19 = a7;
    v20 = a6;
    v21 = a8;
    v22 = a1;
    v23 = a2;
    v24 = a4;
    v25 = a5;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24E5DD000, v17, v18, "Initializing ImpedimentFlowView allowing unauthenticated players..", v26, 2u);
    v27 = v26;
    a5 = v25;
    a4 = v24;
    a2 = v23;
    a1 = v22;
    a8 = v21;
    a6 = v20;
    a7 = v19;
    v15 = v29;
    MEMORY[0x2530542D0](v27, -1, -1);
  }

  v31[0] = v15;
  v31[1] = v30;
  *&v28 = MEMORY[0x277CE1428];
  *(&v28 + 1) = a6;
  sub_24F18BE28(a1, a2, v31, 0, 0, 0, a4, a5, a8, v28, MEMORY[0x277CE1410], a7);
}

uint64_t sub_24F18C548()
{
  v1 = [objc_opt_self() daemonProxy];
  sub_24F9212F8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F18C5E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A8);
  sub_24F926F38();
  return v1;
}

uint64_t sub_24F18C638()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A8);
  sub_24F926F58();
  return v1;
}

uint64_t sub_24F18C68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924848();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_24E60169C(v2 + *(a1 + 80), &v15 - v10, &qword_27F235CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923418();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t ImpedimentFlowView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v223 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AFB0);
  MEMORY[0x28223BE20](v3 - 8);
  v217 = &v177 - v4;
  v5 = type metadata accessor for ImpedimentFlowAction();
  v232 = a1;
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v237 = a1[2];
  v238 = v8;
  v236 = v7;
  v257 = v237;
  v258 = v6;
  v259 = v8;
  v260 = v7;
  type metadata accessor for ImpedimentFlowView.StartView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFB8);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC0);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC8);
  sub_24F924E38();
  v9 = sub_24F926DC8();
  v10 = sub_24F199FC4(&qword_27F23AFD0, type metadata accessor for ImpedimentFlowAction);
  v11 = sub_24F199FC4(&qword_27F23AFD8, type metadata accessor for ImpedimentFlowAction);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_24F195940();
  v269 = WitnessTable;
  v270 = v13;
  v14 = MEMORY[0x277CE0340];
  v15 = swift_getWitnessTable();
  v16 = sub_24F195A50();
  v267 = v15;
  v268 = v16;
  v230 = v14;
  v17 = swift_getWitnessTable();
  v18 = sub_24F195C54();
  v265 = v17;
  v266 = v18;
  v264 = swift_getWitnessTable();
  v234 = MEMORY[0x277CE0FB0];
  v19 = swift_getWitnessTable();
  v208 = v9;
  v209 = v5;
  v257 = v5;
  v258 = MEMORY[0x277CE1428];
  v259 = v9;
  v260 = v10;
  v207 = v10;
  v206 = v11;
  v261 = v11;
  v262 = MEMORY[0x277CE1410];
  v199 = v19;
  v263 = v19;
  v20 = sub_24F921CE8();
  v203 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v202 = &v177 - v21;
  v22 = sub_24F928FD8();
  v23 = swift_getWitnessTable();
  v257 = v20;
  v258 = v22;
  v259 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v198 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v195 = &v177 - v25;
  v196 = v22;
  v205 = v20;
  v257 = v20;
  v258 = v22;
  v197 = v23;
  v259 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_24F19602C();
  v235 = OpaqueTypeMetadata2;
  v257 = OpaqueTypeMetadata2;
  v258 = &type metadata for PlayerMonogramProtocol;
  v228 = v27;
  v229 = OpaqueTypeConformance2;
  v259 = OpaqueTypeConformance2;
  v260 = v27;
  v233 = swift_getOpaqueTypeMetadata2();
  v204 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v201 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v200 = &v177 - v30;
  v31 = type metadata accessor for ImpedimentFlowDestination();
  v190 = *(v31 - 8);
  MEMORY[0x28223BE20](v31 - 8);
  v191 = v32;
  v192 = &v177 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v216 = (&v177 - v34);
  v239 = sub_24F923418();
  v194 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v193 = &v177 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F924E38();
  sub_24F92C4A8();
  v231 = v6;
  sub_24F92C4A8();
  v36 = sub_24F924E38();
  v37 = sub_24F926DC8();
  v187 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v186 = &v177 - v38;
  v39 = sub_24F92C0E8();
  v40 = sub_24F199FC4(&qword_27F21F480, MEMORY[0x277CC9DB0]);
  v41 = v236;
  v255 = v238;
  v256 = v236;
  v254 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v253 = v41;
  v43 = swift_getWitnessTable();
  v251 = v42;
  v252 = v43;
  v182 = v36;
  v180 = swift_getWitnessTable();
  v250 = v180;
  v44 = v226;
  v45 = swift_getWitnessTable();
  v184 = v40;
  v185 = v39;
  v257 = v39;
  v258 = v37;
  v189 = v37;
  v259 = v40;
  v260 = v45;
  v181 = v45;
  v46 = sub_24F924288();
  v183 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v48 = &v177 - v47;
  v49 = swift_getWitnessTable();
  v50 = sub_24F199FC4(&qword_27F235EA0, MEMORY[0x277CDD6C8]);
  v227 = v46;
  v257 = v46;
  v258 = v239;
  v230 = v49;
  v259 = v49;
  v260 = v50;
  v234 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v188 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v213 = &v177 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v212 = &v177 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v55 - 8);
  v210 = &v177 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23B0A8);
  v58 = sub_24F924E38();
  v215 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v214 = &v177 - v59;
  v218 = *(v232 - 1);
  MEMORY[0x28223BE20](v60);
  v224 = v61;
  v225 = &v177 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = v57;
  MEMORY[0x28223BE20](v62);
  v64 = &v177 - v63;
  v65 = type metadata accessor for ImpedimentFlowAuthorityProvider.State(0);
  MEMORY[0x28223BE20](v65);
  v67 = &v177 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = v58;
  v68 = sub_24F924E38();
  v220 = *(v68 - 8);
  v221 = v68;
  MEMORY[0x28223BE20](v68);
  v219 = &v177 - v69;
  v70 = v44;
  v71 = sub_24F18C5E8();
  swift_getKeyPath();
  v257 = v71;
  sub_24F199FC4(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider);
  sub_24F91FD88();

  v72 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__state;
  swift_beginAccess();
  sub_24F199F30(v71 + v72, v67, type metadata accessor for ImpedimentFlowAuthorityProvider.State);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v116 = *&v67[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B110) + 48)];
    v117 = v210;
    v118 = sub_24E6009C8(v67, v210, &unk_27F23E1F0);
    MEMORY[0x28223BE20](v118);
    v217 = v51;
    v119 = v231;
    *(&v177 - 8) = v237;
    *(&v177 - 7) = v119;
    v120 = v236;
    *(&v177 - 6) = v238;
    *(&v177 - 5) = v120;
    *(&v177 - 4) = v117;
    *(&v177 - 3) = v70;
    *(&v177 - 2) = vand_s8(v116, 0x101010101010101);
    v121 = v186;
    sub_24F926DB8();
    v122 = v232;
    v209 = *(v232 + 19);
    v123 = v218;
    v179 = v48;
    v216 = *(v218 + 16);
    v124 = v225;
    (v216)(v225, v70, v232);
    v125 = (*(v123 + 80) + 48) & ~*(v123 + 80);
    v126 = swift_allocObject();
    v127 = v231;
    v126[2] = v237;
    v126[3] = v127;
    v128 = v236;
    v126[4] = v238;
    v126[5] = v128;
    v218 = *(v123 + 32);
    (v218)(v126 + v125, v124, v122);
    v129 = v189;
    sub_24F926BC8();

    (*(v187 + 8))(v121, v129);
    v130 = v193;
    sub_24F18C68C(v122, v193);
    v131 = v225;
    (v216)(v225, v70, v122);
    v132 = swift_allocObject();
    v133 = v231;
    v132[2] = v237;
    v132[3] = v133;
    v134 = v236;
    v132[4] = v238;
    v132[5] = v134;
    (v218)(v132 + v125, v131, v122);
    v135 = v213;
    v136 = v227;
    v137 = v239;
    v138 = v230;
    v139 = v234;
    v140 = v179;
    sub_24F926AB8();

    (*(v194 + 8))(v130, v137);
    (*(v183 + 8))(v140, v136);
    v257 = v136;
    v258 = v137;
    v259 = v138;
    v260 = v139;
    v141 = swift_getOpaqueTypeConformance2();
    v142 = v212;
    v143 = v217;
    sub_24E7896B8(v135, v217, v141);
    v238 = *(v188 + 8);
    v238(v135, v143);
    sub_24E7896B8(v142, v143, v141);
    v144 = sub_24F197290();
    v145 = v214;
    sub_24ECCCC98(v135, v211, v143);
    v242 = v144;
    v243 = v141;
    v146 = v222;
    swift_getWitnessTable();
    v257 = v235;
    v114 = v228;
    v113 = v229;
    v258 = &type metadata for PlayerMonogramProtocol;
    v259 = v229;
    v260 = v228;
    swift_getOpaqueTypeConformance2();
    v108 = v219;
    sub_24ECCCBA0(v145, v146);
    v147 = v145;
    v115 = v230;
    (*(v215 + 1))(v147, v146);
    v148 = v238;
    v238(v213, v143);
    v148(v212, v143);
    v110 = v227;
    v149 = v210;
    v150 = &unk_27F23E1F0;
LABEL_6:
    sub_24E601704(v149, v150);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v151 = v70;
    v217 = v51;
    v152 = v237;
    v153 = v238;
    v154 = v231;
    v155 = v236;
    sub_24F18E068(v70);
    v156 = v218;
    v157 = *(v218 + 16);
    v178 = v64;
    v158 = v225;
    v159 = v232;
    v157(v225, v151, v232);
    v160 = (*(v156 + 80) + 48) & ~*(v156 + 80);
    v161 = swift_allocObject();
    *(v161 + 2) = v152;
    *(v161 + 3) = v154;
    *(v161 + 4) = v153;
    *(v161 + 5) = v155;
    (*(v156 + 32))(&v161[v160], v158, v159);
    v162 = v211;
    v163 = v178;
    v164 = &v178[*(v211 + 36)];
    sub_24F923AD8();
    sub_24F92B818();
    *v164 = &unk_24F9D01C0;
    *(v164 + 1) = v161;
    v165 = sub_24F197290();
    v110 = v227;
    v257 = v227;
    v258 = v239;
    v166 = v230;
    v259 = v230;
    v260 = v234;
    v167 = swift_getOpaqueTypeConformance2();
    v168 = v214;
    sub_24ECCCBA0(v163, v162);
    v240 = v165;
    v241 = v167;
    v169 = v222;
    swift_getWitnessTable();
    v257 = v235;
    v114 = v228;
    v113 = v229;
    v258 = &type metadata for PlayerMonogramProtocol;
    v259 = v229;
    v260 = v228;
    swift_getOpaqueTypeConformance2();
    v108 = v219;
    sub_24ECCCBA0(v168, v169);
    (*(v215 + 1))(v168, v169);
    v150 = &qword_27F23B0A8;
    v149 = v178;
    v115 = v166;
    goto LABEL_6;
  }

  v215 = type metadata accessor for ImpedimentFlowDestination;
  v74 = v216;
  sub_24F19A00C(v67, v216, type metadata accessor for ImpedimentFlowDestination);
  v75 = v70;
  v76 = sub_24F18C638();
  v78 = v77;
  v80 = v79;
  swift_getKeyPath();
  v257 = v76;
  v258 = v78;
  v259 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0B8);
  sub_24F927188();

  v81 = v192;
  sub_24F199F30(v74, v192, type metadata accessor for ImpedimentFlowDestination);
  v82 = v218;
  v83 = v225;
  v84 = v232;
  (*(v218 + 16))(v225, v75, v232);
  v85 = (*(v190 + 80) + 48) & ~*(v190 + 80);
  v86 = (v191 + *(v82 + 80) + v85) & ~*(v82 + 80);
  v87 = swift_allocObject();
  v88 = v236;
  v89 = v231;
  *(v87 + 2) = v237;
  *(v87 + 3) = v89;
  *(v87 + 4) = v238;
  *(v87 + 5) = v88;
  v90 = v235;
  sub_24F19A00C(v81, &v87[v85], v215);
  (*(v82 + 32))(&v87[v86], v83, v84);
  v91 = v202;
  v92 = sub_24F921CD8();
  MEMORY[0x28223BE20](v92);
  v93 = v231;
  *(&v177 - 6) = v237;
  *(&v177 - 5) = v93;
  *(&v177 - 4) = v238;
  *(&v177 - 3) = v88;
  *(&v177 - 2) = v94;
  swift_checkMetadataState();
  v95 = v195;
  v96 = v205;
  sub_24F925EB8();
  (*(v203 + 8))(v91, v96);
  v97 = v201;
  v98 = v229;
  v99 = v228;
  sub_24F925F08();
  (*(v198 + 8))(v95, v90);
  v257 = v90;
  v258 = &type metadata for PlayerMonogramProtocol;
  v259 = v98;
  v260 = v99;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v200;
  v102 = v233;
  sub_24E7896B8(v97, v233, v100);
  v103 = *(v204 + 8);
  v103(v97, v102);
  sub_24E7896B8(v101, v102, v100);
  v104 = sub_24F197290();
  v105 = v227;
  v257 = v227;
  v258 = v239;
  v259 = v230;
  v260 = v234;
  v106 = swift_getOpaqueTypeConformance2();
  v248 = v104;
  v249 = v106;
  v107 = v222;
  swift_getWitnessTable();
  v108 = v219;
  sub_24ECCCC98(v97, v107, v102);
  v109 = v97;
  v110 = v105;
  v103(v109, v102);
  v111 = v101;
  v112 = v102;
  v114 = v228;
  v113 = v229;
  v103(v111, v112);
  v115 = v230;
  sub_24F19A0B4(v216, type metadata accessor for ImpedimentFlowDestination);
LABEL_7:
  v170 = sub_24F197290();
  v257 = v110;
  v258 = v239;
  v259 = v115;
  v260 = v234;
  v171 = swift_getOpaqueTypeConformance2();
  v246 = v170;
  v247 = v171;
  v172 = swift_getWitnessTable();
  v257 = v235;
  v258 = &type metadata for PlayerMonogramProtocol;
  v259 = v113;
  v260 = v114;
  v173 = swift_getOpaqueTypeConformance2();
  v244 = v172;
  v245 = v173;
  v174 = v221;
  v175 = swift_getWitnessTable();
  sub_24E7896B8(v108, v174, v175);
  return (*(v220 + 8))(v108, v174);
}

uint64_t sub_24F18E068(uint64_t a1)
{
  v2 = sub_24F921AA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B298);
  MEMORY[0x28223BE20](v6);
  v8 = (&v10 - v7);
  if (*(a1 + 32) == 1)
  {
    sub_24F921A98();
    (*(v3 + 16))(v8, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_24F199FC4(&qword_27F215638, MEMORY[0x277D7EBB0]);
    sub_24F924E28();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    *v8 = sub_24F926C98();
    swift_storeEnumTagMultiPayload();
    sub_24F199FC4(&qword_27F215638, MEMORY[0x277D7EBB0]);
    return sub_24F924E28();
  }
}

uint64_t sub_24F18E29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  sub_24F92B7F8();
  v5[11] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v5[12] = v7;
  v5[13] = v6;

  return MEMORY[0x2822009F8](sub_24F18E33C, v7, v6);
}

uint64_t sub_24F18E33C()
{
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = *(v0 + 72);
  type metadata accessor for ImpedimentFlowView();
  *(v0 + 112) = sub_24F18C5E8();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_24F18E3F4;

  return sub_24F64BEDC();
}

uint64_t sub_24F18E3F4()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_24E70AEC8, v3, v2);
}

uint64_t sub_24F18E538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v102 = a6;
  v104 = a5;
  v85 = a3;
  v96 = a2;
  v103 = a7;
  v94 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v88 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = &v80 - v11;
  v84 = *(v12 - 8);
  MEMORY[0x28223BE20](v13);
  v83 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v80 - v16;
  v87 = v17;
  v105 = sub_24F924E38();
  v18 = sub_24F92C4A8();
  v93 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v92 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v91 = &v80 - v21;
  v22 = sub_24F92C4A8();
  v90 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v89 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v95 = &v80 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v80 - v30;
  v32 = type metadata accessor for Player(0);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v18;
  v100 = v22;
  v99 = sub_24F924E38();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v80 - v36;
  sub_24E60169C(a1, v31, &unk_27F23E1F0);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_24E601704(v31, &unk_27F23E1F0);
    v37 = *(v96 + 56);
    if (v37)
    {
      v109[0] = v85;

      v38 = v88;
      v37(a1, v109);
      sub_24E824448(v37);
      v39 = v86;
      v40 = v102;
      sub_24E7896B8(v38, a4, v102);
      v41 = v94;
      v42 = *(v94 + 8);
      v42(v38, a4);
      sub_24E7896B8(v39, a4, v40);
      v42(v39, a4);
      v43 = v89;
      (*(v41 + 32))(v89, v38, a4);
      v44 = 0;
      v45 = v104;
      v46 = v101;
      v47 = v100;
    }

    else
    {
      v44 = 1;
      v40 = v102;
      v45 = v104;
      v46 = v101;
      v47 = v100;
      v41 = v94;
      v43 = v89;
    }

    (*(v41 + 56))(v43, v44, 1, a4);
    v59 = v95;
    sub_24E8D5004(v43, v95);
    v60 = *(v90 + 8);
    v60(v43, v47);
    v109[10] = v40;
    WitnessTable = swift_getWitnessTable();
    sub_24E7896B8(v59, v47, WitnessTable);
    v109[8] = v45;
    v109[9] = v40;
    v109[7] = swift_getWitnessTable();
    swift_getWitnessTable();
    v62 = v97;
    sub_24ECCCC98(v43, v46, v47);
    v63 = v43;
    v64 = v45;
    v60(v63, v47);
    v60(v95, v47);
  }

  else
  {
    sub_24F19A00C(v31, v35, type metadata accessor for Player);
    v48 = *(v96 + 40);
    v49 = v35;
    v81 = v35;
    if (v48)
    {

      v50 = v83;
      v48(v49);
      v51 = v82;
      v52 = v87;
      v53 = v104;
      sub_24E7896B8(v50, v87, v104);
      v54 = *(v84 + 8);
      v54(v50, v52);
      sub_24E7896B8(v51, v52, v53);
      v55 = v92;
      v56 = v102;
      sub_24ECCCBA0(v50, v52);
      sub_24E824448(v48);
      v54(v50, v52);
      v54(v51, v52);
      (*(*(v105 - 8) + 56))(v55, 0, 1, v105);
      v57 = v53;
      v106 = v53;
      v58 = &v106;
    }

    else
    {
      v65 = *(v96 + 56);
      v66 = v102;
      v67 = v104;
      v55 = v92;
      if (v65)
      {
        sub_24F199F30(v35, v28, type metadata accessor for Player);
        (*(v33 + 56))(v28, 0, 1, v32);
        v109[0] = v85;

        v68 = v88;
        v65(v28, v109);
        sub_24E601704(v28, &unk_27F23E1F0);
        v69 = v86;
        sub_24E7896B8(v68, a4, v66);
        v70 = *(v94 + 8);
        v70(v68, a4);
        sub_24E7896B8(v69, a4, v66);
        sub_24ECCCC98(v68, v87, a4);
        sub_24E824448(v65);
        v70(v68, a4);
        v70(v69, a4);
        (*(*(v105 - 8) + 56))(v55, 0, 1, v105);
        v57 = v67;
        v107[0] = v67;
        v58 = v107;
      }

      else
      {
        (*(*(v105 - 8) + 56))(v92, 1, 1, v105);
        v57 = v67;
        v108 = v67;
        v58 = &v108;
      }

      v56 = v66;
    }

    v58[1] = v56;
    swift_getWitnessTable();
    v71 = v91;
    sub_24E8D5004(v55, v91);
    v72 = *(v93 + 8);
    v73 = v101;
    v72(v55, v101);
    v40 = v56;
    v107[4] = v57;
    v107[5] = v56;
    v107[3] = swift_getWitnessTable();
    v74 = swift_getWitnessTable();
    sub_24E7896B8(v71, v73, v74);
    v107[2] = v56;
    swift_getWitnessTable();
    v62 = v97;
    sub_24ECCCBA0(v55, v73);
    v64 = v104;
    v72(v55, v73);
    v72(v71, v73);
    sub_24F19A0B4(v81, type metadata accessor for Player);
  }

  v109[5] = v64;
  v109[6] = v40;
  v109[4] = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v109[3] = v40;
  v76 = swift_getWitnessTable();
  v109[1] = v75;
  v109[2] = v76;
  v77 = v99;
  v78 = swift_getWitnessTable();
  sub_24E7896B8(v62, v77, v78);
  return (*(v98 + 8))(v62, v77);
}

uint64_t sub_24F18F24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v38 = a3;
  v39 = a4;
  v36 = a5;
  v37 = a6;
  v40 = a5;
  v41 = a6;
  v9 = type metadata accessor for ImpedimentFlowView();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v16 = sub_24F9220D8();
  __swift_project_value_buffer(v16, qword_27F39E8E0);
  v17 = sub_24F9220B8();
  v18 = sub_24F92BD98();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v15;
    v20 = v12;
    v21 = v9;
    v22 = v7;
    v23 = v6;
    v24 = a2;
    v25 = v19;
    *v19 = 0;
    _os_log_impl(&dword_24E5DD000, v17, v18, "Received a request to rebootstrap with impediments.", v19, 2u);
    v26 = v25;
    a2 = v24;
    v6 = v23;
    v7 = v22;
    v9 = v21;
    v12 = v20;
    v15 = v35;
    MEMORY[0x2530542D0](v26, -1, -1);
  }

  v27 = sub_24F92B858();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  (*(v10 + 16))(v12, a2, v9);
  sub_24F92B7F8();
  v28 = sub_24F92B7E8();
  v29 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  *(v30 + 2) = v28;
  *(v30 + 3) = v31;
  *(v30 + 4) = v7;
  *(v30 + 5) = v6;
  v32 = v37;
  *(v30 + 6) = v36;
  *(v30 + 7) = v32;
  (*(v10 + 32))(&v30[v29], v12, v9);
  sub_24EA998B8(0, 0, v15, &unk_24F9D0540, v30);
}

uint64_t sub_24F18F554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_24F92B7F8();
  v4[3] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24F18F5EC, v6, v5);
}

uint64_t sub_24F18F5EC()
{
  v1 = v0[2];
  v0[6] = [objc_opt_self() sharedCoordinator];
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_24F18F6AC;

  return sub_24F18B7F8(v2);
}

uint64_t sub_24F18F6AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24E8FAD8C, v4, v3);
}

void sub_24F18F7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a3;
  v33 = a4;
  v37 = a4;
  v38 = a5;
  v34 = a5;
  v35 = a6;
  v39 = a6;
  v40 = a7;
  v36 = a7;
  v7 = type metadata accessor for ImpedimentFlowView();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = sub_24F923418();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *MEMORY[0x277CDD6B8], v14, v16);
  v19 = sub_24F923408();
  (*(v15 + 8))(v18, v14);
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v20 = sub_24F9220D8();
  __swift_project_value_buffer(v20, qword_27F39E8E0);
  v21 = sub_24F9220B8();
  v22 = sub_24F92BD98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v19 & 1;
    _os_log_impl(&dword_24E5DD000, v21, v22, "App is foregrounded: %{BOOL}d", v23, 8u);
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  if (v19)
  {
    v24 = sub_24F92B858();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
    (*(v8 + 16))(v10, v32, v7);
    sub_24F92B7F8();
    v25 = sub_24F92B7E8();
    v26 = (*(v8 + 80) + 64) & ~*(v8 + 80);
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    *(v27 + 2) = v25;
    *(v27 + 3) = v28;
    v29 = v34;
    *(v27 + 4) = v33;
    *(v27 + 5) = v29;
    v30 = v36;
    *(v27 + 6) = v35;
    *(v27 + 7) = v30;
    (*(v8 + 32))(&v27[v26], v10, v7);
    sub_24EA998B8(0, 0, v13, &unk_24F9D0518, v27);
  }
}

uint64_t sub_24F18FB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = sub_24F92B7F8();
  v8[7] = sub_24F92B7E8();
  v13 = swift_task_alloc();
  v8[8] = v13;
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v14 = type metadata accessor for ImpedimentFlowView();
  *v13 = v8;
  v13[1] = sub_24F18FC84;

  return sub_24F18FDC0(v14);
}

uint64_t sub_24F18FC84()
{

  v1 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E7AFF18, v1, v0);
}

uint64_t sub_24F18FDC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_24F92B7F8();
  v2[4] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_24F18FE58, v4, v3);
}

uint64_t sub_24F18FE58()
{
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[7] = __swift_project_value_buffer(v1, qword_27F39E8E0);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Checking if the impediment flow needs to reset...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v0[8] = sub_24F18C5E8();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_24F18FFB4;

  return sub_24F64CB34();
}

uint64_t sub_24F18FFB4(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_24F190100, v4, v3);
}

uint64_t sub_24F190100()
{
  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 96);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_24E5DD000, v1, v2, "Need to reset the impediment flow: %{BOOL}d", v4, 8u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = *(v0 + 96);

  if (v5 == 1)
  {
    v6 = *(v0 + 24);
    *(v0 + 80) = [objc_opt_self() sharedCoordinator];
    v7 = *(v6 + 16);
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = sub_24F190290;

    return sub_24F18B7F8(v7);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_24F190290()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_24EA9C5F8, v4, v3);
}

uint64_t sub_24F1903D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F199FC4(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit31ImpedimentFlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A0);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24F1904D4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3A0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  (*(v5 + 16))(&v11[-v7], a1, v4, v6);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_24F199FC4(&qword_27F23B0B0, type metadata accessor for ImpedimentFlowAuthorityProvider);
  sub_24F91FD78();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24F190664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a7;
  v27 = a6;
  v31 = a3;
  v30 = a2;
  v29 = a1;
  v32 = a8;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  type metadata accessor for ImpedimentFlowView.StartView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFB8);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC0);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23AFC8);
  sub_24F924E38();
  v10 = sub_24F926DC8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v33 = a4;
  v34 = a5;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_24F195940();
  v45 = WitnessTable;
  v46 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_24F195A50();
  v43 = v19;
  v44 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_24F195C54();
  v41 = v21;
  v42 = v22;
  v23 = swift_getWitnessTable();
  sub_24F926DB8();
  v40 = v23;
  v24 = swift_getWitnessTable();
  sub_24E7896B8(v13, v10, v24);
  v25 = *(v11 + 8);
  v25(v13, v10);
  sub_24E7896B8(v16, v10, v24);
  return (v25)(v16, v10);
}

uint64_t sub_24F190974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v319 = a3;
  v285 = a2;
  *&v321 = a1;
  v328 = a8;
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B380);
  MEMORY[0x28223BE20](v294);
  v297 = &v279 - v12;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B080);
  MEMORY[0x28223BE20](v315);
  v303 = &v279 - v13;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B090);
  MEMORY[0x28223BE20](v293);
  v288 = &v279 - v14;
  v15 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v15 - 8);
  v302 = &v279 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B068);
  MEMORY[0x28223BE20](v309);
  v289 = &v279 - v17;
  *&v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B388);
  MEMORY[0x28223BE20](v311);
  v313 = &v279 - v18;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B390);
  MEMORY[0x28223BE20](v304);
  v306 = &v279 - v19;
  *&v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B040);
  MEMORY[0x28223BE20](v312);
  v308 = &v279 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AFC8);
  MEMORY[0x28223BE20](v21);
  *&v318 = &v279 - v22;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B050);
  MEMORY[0x28223BE20](v300);
  v287 = &v279 - v23;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B020);
  MEMORY[0x28223BE20](v305);
  v286 = &v279 - v24;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B398);
  MEMORY[0x28223BE20](v299);
  v301 = &v279 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AFC0);
  MEMORY[0x28223BE20](v26);
  v307 = &v279 - v27;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B008);
  MEMORY[0x28223BE20](v298);
  v29 = &v279 - v28;
  v331 = sub_24F928818();
  v329 = *(v331 - 1);
  MEMORY[0x28223BE20](v331);
  v330 = &v279 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = type metadata accessor for CancelSignInAction();
  MEMORY[0x28223BE20](v280);
  v281 = &v279 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = type metadata accessor for SignInGameCenterView();
  MEMORY[0x28223BE20](v283);
  v33 = &v279 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23AFB8);
  MEMORY[0x28223BE20](v34);
  v282 = &v279 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v284 = &v279 - v37;
  *&v295 = a4;
  *(&v295 + 1) = a5;
  *&v368 = a4;
  *(&v368 + 1) = a5;
  *&v296 = a6;
  *(&v296 + 1) = a7;
  *&v369 = a6;
  *(&v369 + 1) = a7;
  started = type metadata accessor for ImpedimentFlowView.StartView();
  v290 = v34;
  v39 = sub_24F924E38();
  v292 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v291 = &v279 - v40;
  v327 = v41;
  *&v317 = v26;
  v42 = sub_24F924E38();
  *&v316 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v314 = &v279 - v43;
  v326 = started;
  v310 = *(started - 8);
  MEMORY[0x28223BE20](v44);
  v46 = &v279 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v279 - v48;
  v50 = type metadata accessor for ImpedimentFlowDestination();
  MEMORY[0x28223BE20](v50);
  v52 = &v279 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v279 - v54;
  v324 = v21;
  v325 = v42;
  v56 = sub_24F924E38();
  v323 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v322 = &v279 - v57;
  sub_24F199F30(v321, v55, type metadata accessor for ImpedimentFlowDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    v320 = v56;
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        swift_storeEnumTagMultiPayload();
        sub_24F195F70();
        v136 = v303;
        sub_24F924E28();
        sub_24E60169C(v136, v313, &qword_27F23B080);
        swift_storeEnumTagMultiPayload();
        sub_24F195CE0();
        sub_24F195EE4();
        v137 = v318;
        sub_24F924E28();
        sub_24E601704(v136, &qword_27F23B080);
        WitnessTable = swift_getWitnessTable();
        v139 = sub_24F195940();
        v379 = WitnessTable;
        v380 = v139;
        v140 = swift_getWitnessTable();
        v141 = sub_24F195A50();
        v377 = v140;
        v378 = v141;
        v142 = v325;
        swift_getWitnessTable();
        sub_24F195C54();
        v103 = v322;
        sub_24ECCCC98(v137, v142, v324);
        sub_24E601704(v137, &qword_27F23AFC8);
        v143 = &unk_27F23E1F0;
        v144 = v55;
LABEL_22:
        sub_24E601704(v144, v143);
        goto LABEL_23;
      }

      sub_24F199F30(v285, v52, type metadata accessor for ImpedimentFlowDestination);
      sub_24F192CE8(v52, v46);
      v235 = v326;
      v236 = swift_getWitnessTable();
      sub_24E7896B8(v46, v235, v236);
      v237 = *(v310 + 8);
      v310 += 8;
      v331 = v237;
      v237(v46, v235);
      sub_24E7896B8(v49, v235, v236);
      v238 = sub_24F195940();
      v239 = v291;
      sub_24ECCCBA0(v46, v235);
      v334 = v236;
      v335 = v238;
      v240 = v327;
      v241 = swift_getWitnessTable();
      v242 = sub_24F195A50();
      v243 = v314;
      sub_24ECCCBA0(v239, v240);
      (*(v292 + 8))(v239, v240);
      v332 = v241;
      v333 = v242;
      v244 = v325;
      swift_getWitnessTable();
      sub_24F195C54();
      v245 = v322;
      sub_24ECCCBA0(v243, v244);
      (*(v316 + 8))(v243, v244);
      v246 = v331;
      v331(v46, v235);
      v247 = v49;
      v103 = v245;
      v246(v247, v235);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v72 = *(v55 + 1);
        v321 = *v55;
        v317 = v72;
        *&v316 = *(v55 + 4);
        v73 = *(v55 + 11);
        v314 = *(v55 + 10);
        v310 = v73;
        v74 = *(v55 + 17);
        v75 = *(v55 + 18);
        v76 = v55[152];
        v77 = *(v55 + 21);
        v307 = *(v55 + 20);
        v305 = v77;
        v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0D8) + 176);
        v79 = *(v55 + 56);
        v368 = *(v55 + 40);
        v369 = v79;
        v370 = *(v55 + 9);
        v80 = *(v55 + 7);
        v361 = *(v55 + 6);
        v362 = v80;
        v363 = *(v55 + 16);
        v81 = v329;
        v82 = &v55[v78];
        v83 = v330;
        v84 = v331;
        (*(v329 + 32))(v330, v82, v331);
        v85 = v289;
        sub_24E615E00(&v368, (v289 + 40));
        sub_24E60169C(&v361, v85 + 96, qword_27F21B590);
        v86 = *(v319 + 16);
        v87 = type metadata accessor for OnboardingCrossUseConsentView();
        (*(v81 + 16))(v85 + v87[14], v83, v84);
        v88 = v317;
        *v85 = v321;
        *(v85 + 16) = v88;
        *(v85 + 32) = v316;
        v89 = v310;
        *(v85 + 80) = v314;
        *(v85 + 88) = v89;
        *(v85 + 136) = v74;
        *(v85 + 144) = v75;
        *(v85 + 152) = v76;
        v90 = v305;
        *(v85 + 160) = v307;
        *(v85 + 168) = v90;
        *(v85 + 176) = v86;
        v91 = v87[15];
        *(v85 + v91) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
        swift_storeEnumTagMultiPayload();
        v92 = v87[16];
        *(v85 + v92) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v93 = v87[17];
        *(v85 + v93) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
        swift_storeEnumTagMultiPayload();
        v94 = v85 + v87[18];
        LOBYTE(v341) = 0;

        sub_24F926F28();
        v95 = *(&v342 + 1);
        *v94 = v342;
        *(v94 + 8) = v95;
        sub_24E60169C(v85, v306, &qword_27F23B068);
        swift_storeEnumTagMultiPayload();
        sub_24F195D6C();
        sub_24F195E28();
        v96 = v308;
        sub_24F924E28();
        sub_24E60169C(v96, v313, &qword_27F23B040);
        swift_storeEnumTagMultiPayload();
        sub_24F195CE0();
        sub_24F195EE4();
        v97 = v318;
        sub_24F924E28();
        sub_24E601704(v96, &qword_27F23B040);
        v98 = swift_getWitnessTable();
        v99 = sub_24F195940();
        v359 = v98;
        v360 = v99;
        v100 = swift_getWitnessTable();
        v101 = sub_24F195A50();
        v357 = v100;
        v358 = v101;
        v102 = v325;
        swift_getWitnessTable();
        sub_24F195C54();
        v103 = v322;
        sub_24ECCCC98(v97, v102, v324);
        sub_24E601704(v97, &qword_27F23AFC8);
        v104 = v85;
        v105 = &qword_27F23B068;
        goto LABEL_14;
      }

      v181 = *(v55 + 1);
      v321 = *v55;
      v316 = *(v55 + 2);
      v317 = v181;
      v182 = *(v55 + 7);
      v314 = *(v55 + 6);
      v310 = v182;
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0E0);
      v184 = &v55[v183[28]];
      v185 = &v55[v183[32]];
      v186 = *v185;
      v187 = *(v185 + 1);
      v188 = v183[36];
      v189 = v302;
      sub_24F19A00C(&v55[v183[24]], v302, type metadata accessor for Player);
      v190 = *(v184 + 1);
      v368 = *v184;
      v369 = v190;
      v370 = *(v184 + 4);
      v191 = v329;
      v192 = &v55[v188];
      v193 = v330;
      v194 = v331;
      (*(v329 + 32))(v330, v192, v331);
      v195 = type metadata accessor for GSKOnboardingProfileCreationView();
      v196 = v288;
      sub_24F199F30(v189, &v288[v195[8]], type metadata accessor for Player);
      sub_24E615E00(&v368, v196 + v195[9]);
      v197 = *(v319 + 16);
      (*(v191 + 16))(v196 + v195[12], v193, v194);
      v198 = v316;
      v199 = v317;
      *v196 = v321;
      *(v196 + 16) = v199;
      *(v196 + 32) = v198;
      v200 = v310;
      *(v196 + 48) = v314;
      *(v196 + 56) = v200;
      v201 = (v196 + v195[10]);
      *v201 = v186;
      v201[1] = v187;
      *(v196 + v195[11]) = v197;
      sub_24E60169C(v196, v297, &qword_27F23B090);
      swift_storeEnumTagMultiPayload();
      sub_24F195F70();

      v202 = v303;
      sub_24F924E28();
      sub_24E60169C(v202, v313, &qword_27F23B080);
      swift_storeEnumTagMultiPayload();
      sub_24F195CE0();
      sub_24F195EE4();
      v203 = v318;
      sub_24F924E28();
      sub_24E601704(v202, &qword_27F23B080);
      v204 = swift_getWitnessTable();
      v205 = sub_24F195940();
      v366 = v204;
      v367 = v205;
      v206 = swift_getWitnessTable();
      v207 = sub_24F195A50();
      v364 = v206;
      v365 = v207;
      v208 = v325;
      swift_getWitnessTable();
      sub_24F195C54();
      v103 = v322;
      sub_24ECCCC98(v203, v208, v324);
      sub_24E601704(v203, &qword_27F23AFC8);
      sub_24E601704(v196, &qword_27F23B090);
      (*(v191 + 8))(v330, v331);
      sub_24E601704(&v368, &qword_27F2169E8);
      sub_24F19A0B4(v302, type metadata accessor for Player);
    }

LABEL_23:
    v56 = v320;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v320 = v56;
    if (!EnumCaseMultiPayload)
    {
      v59 = *v55;
      v60 = *(v55 + 1);
      v61 = *(v55 + 2);
      v62 = *(v55 + 3);
      v64 = *(v55 + 10);
      v63 = *(v55 + 11);
      v330 = *(v55 + 4);
      v331 = v63;
      v65 = *(v55 + 56);
      v368 = *(v55 + 40);
      v369 = v65;
      v370 = *(v55 + 9);
      v66 = v319;
      Strong = swift_unknownObjectWeakLoadStrong();
      v68 = [Strong rootViewController];

      v69 = [v68 presentedViewController];
      sub_24E615E00(&v368, &v361);
      v342 = v295;
      v343 = v296;
      type metadata accessor for ImpedimentFlowView();
      if (*(v66 + 56))
      {
        v70 = v281;
        sub_24F928A98();
        *(&v343 + 1) = v280;
        v344 = sub_24F199FC4(&qword_27F216248, type metadata accessor for CancelSignInAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v342);
        sub_24F19A00C(v70, boxed_opaque_existential_1, type metadata accessor for CancelSignInAction);
      }

      else
      {
        v344 = 0;
        v342 = 0u;
        v343 = 0u;
      }

      v248 = *(v66 + 16);
      *v33 = v69;
      *(v33 + 1) = v59;
      *(v33 + 2) = v60;
      *(v33 + 3) = v61;
      v249 = v330;
      *(v33 + 4) = v62;
      *(v33 + 5) = v249;
      sub_24E612C80(&v361, (v33 + 48));
      v250 = v331;
      *(v33 + 11) = v64;
      *(v33 + 12) = v250;
      v251 = v343;
      *(v33 + 104) = v342;
      *(v33 + 120) = v251;
      *(v33 + 17) = v344;
      *(v33 + 18) = v248;
      v252 = v283;
      v253 = *(v283 + 48);
      *&v33[v253] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
      swift_storeEnumTagMultiPayload();
      v254 = v252[13];
      *&v33[v254] = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v255 = &v33[v252[14]];
      LOBYTE(v340) = 0;

      sub_24F926F28();
      v256 = *(&v341 + 1);
      *v255 = v341;
      *(v255 + 1) = v256;
      v257 = v252[15];
      v340 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670);
      sub_24F926F28();
      *&v33[v257] = v341;
      v258 = v33;
      v259 = v282;
      sub_24F19A00C(v258, v282, type metadata accessor for SignInGameCenterView);
      v260 = v259;
      v261 = v284;
      sub_24E6009C8(v260, v284, &qword_27F23AFB8);
      v262 = v326;
      v263 = swift_getWitnessTable();
      v264 = sub_24F195940();
      v265 = v291;
      sub_24ECCCC98(v261, v262, v290);
      v338 = v263;
      v339 = v264;
      v266 = v327;
      v267 = swift_getWitnessTable();
      v268 = sub_24F195A50();
      v269 = v314;
      sub_24ECCCBA0(v265, v266);
      (*(v292 + 8))(v265, v266);
      v336 = v267;
      v337 = v268;
      v270 = v325;
      swift_getWitnessTable();
      sub_24F195C54();
      v103 = v322;
      sub_24ECCCBA0(v269, v270);
      (*(v316 + 8))(v269, v270);
      v180 = v261;
      v179 = &qword_27F23AFB8;
      goto LABEL_21;
    }

    v145 = *(v55 + 1);
    v321 = *v55;
    v318 = v145;
    v315 = *(v55 + 4);
    v146 = *(v55 + 11);
    v313 = *(v55 + 10);
    v147 = *(v55 + 136);
    v311 = *(v55 + 152);
    v312 = v147;
    v148 = *(v55 + 21);
    v149 = *(v55 + 22);
    v150 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0C0) + 176);
    v151 = *(v55 + 56);
    v368 = *(v55 + 40);
    v369 = v151;
    v370 = *(v55 + 9);
    v152 = *(v55 + 7);
    v361 = *(v55 + 6);
    v362 = v152;
    v363 = *(v55 + 16);
    v153 = v329;
    v154 = &v55[v150];
    v155 = v330;
    v156 = v331;
    (*(v329 + 32))(v330, v154, v331);
    sub_24E615E00(&v368, (v29 + 40));
    sub_24E60169C(&v361, (v29 + 96), qword_27F21B590);
    v157 = *(v319 + 16);
    v158 = type metadata accessor for WelcomeGameCenterView();
    (*(v153 + 16))(&v29[v158[14]], v155, v156);
    v159 = v318;
    *v29 = v321;
    *(v29 + 1) = v159;
    *(v29 + 4) = v315;
    *(v29 + 10) = v313;
    *(v29 + 11) = v146;
    v160 = v311;
    *(v29 + 136) = v312;
    *(v29 + 152) = v160;
    *(v29 + 21) = v148;
    *(v29 + 22) = v149;
    *(v29 + 23) = v157;
    v161 = v158[15];
    *&v29[v161] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    v162 = v158[16];
    *&v29[v162] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v163 = &v29[v158[17]];
    LOBYTE(v341) = 0;

    sub_24F926F28();
    v164 = *(&v342 + 1);
    *v163 = v342;
    *(v163 + 1) = v164;
    v165 = &v29[v158[18]];
    LOBYTE(v341) = 0;
    sub_24F926F28();
    v166 = *(&v342 + 1);
    *v165 = v342;
    *(v165 + 1) = v166;
    v167 = &v29[v158[19]];
    sub_24F929EB8();
    *&v341 = sub_24F929EA8();
    sub_24F926F28();
    v168 = *(&v342 + 1);
    *v167 = v342;
    *(v167 + 1) = v168;
    v169 = &v29[v158[20]];
    *&v341 = 0;
    sub_24F926F28();
    v170 = *(&v342 + 1);
    *v169 = v342;
    *(v169 + 1) = v170;
    sub_24E60169C(v29, v301, &qword_27F23B008);
    swift_storeEnumTagMultiPayload();
    sub_24F195ADC();
    sub_24F195B98();
    v171 = v307;
    sub_24F924E28();
    v172 = swift_getWitnessTable();
    v173 = sub_24F195940();
    v347 = v172;
    v348 = v173;
    v174 = v327;
    v175 = swift_getWitnessTable();
    v176 = sub_24F195A50();
    v177 = v314;
    sub_24ECCCC98(v171, v174, v317);
    sub_24E601704(v171, &qword_27F23AFC0);
    v345 = v175;
    v346 = v176;
    v178 = v325;
    swift_getWitnessTable();
    sub_24F195C54();
    v103 = v322;
    sub_24ECCCBA0(v177, v178);
    (*(v316 + 8))(v177, v178);
    v104 = v29;
    v105 = &qword_27F23B008;
LABEL_14:
    sub_24E601704(v104, v105);
    (*(v329 + 8))(v330, v331);
    v179 = &qword_27F213EA8;
    v180 = &v361;
LABEL_21:
    sub_24E601704(v180, v179);
    v143 = &qword_27F2169E8;
    v144 = &v368;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v106 = *(v55 + 1);
    v321 = *v55;
    v318 = v106;
    v315 = *(v55 + 4);
    v107 = *(v55 + 11);
    v313 = *(v55 + 10);
    *&v312 = v107;
    v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0C8) + 112);
    v109 = *(v55 + 56);
    v368 = *(v55 + 40);
    v369 = v109;
    v370 = *(v55 + 9);
    v110 = v329;
    v111 = v330;
    v112 = v331;
    (*(v329 + 32))(v330, &v55[v108], v331);
    v113 = v319;
    v114 = swift_unknownObjectWeakLoadStrong();
    v115 = [v114 rootViewController];

    v116 = [v115 presentedViewController];
    v117 = v286;
    sub_24E615E00(&v368, (v286 + 48));
    v118 = *(v113 + 16);
    v119 = type metadata accessor for SignInMoltresView();
    (*(v110 + 16))(v117 + v119[11], v111, v112);
    *v117 = v116;
    *(v117 + 8) = v321;
    *(v117 + 24) = v318;
    *(v117 + 40) = v315;
    v120 = v312;
    *(v117 + 88) = v313;
    *(v117 + 96) = v120;
    *(v117 + 104) = v118;
    v121 = v119[12];
    *(v117 + v121) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    v122 = v119[13];
    *(v117 + v122) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v123 = v117 + v119[14];
    LOBYTE(v342) = 0;

    sub_24F926F28();
    v124 = *(&v361 + 1);
    *v123 = v361;
    *(v123 + 8) = v124;
    v125 = v119[15];
    *&v342 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670);
    sub_24F926F28();
    *(v117 + v125) = v361;
    sub_24E60169C(v117, v301, &qword_27F23B020);
    swift_storeEnumTagMultiPayload();
    sub_24F195ADC();
    sub_24F195B98();
    v126 = v307;
    sub_24F924E28();
    v127 = swift_getWitnessTable();
    v128 = sub_24F195940();
    v351 = v127;
    v352 = v128;
    v129 = v327;
    v130 = swift_getWitnessTable();
    v131 = sub_24F195A50();
    v132 = v314;
    sub_24ECCCC98(v126, v129, v317);
    sub_24E601704(v126, &qword_27F23AFC0);
    v349 = v130;
    v350 = v131;
    v133 = v325;
    swift_getWitnessTable();
    sub_24F195C54();
    v103 = v322;
    sub_24ECCCBA0(v132, v133);
    (*(v316 + 8))(v132, v133);
    v134 = v117;
    v135 = &qword_27F23B020;
  }

  else
  {
    v209 = *v55;
    v210 = *(v55 + 1);
    v211 = *(v55 + 10);
    *&v321 = *(v55 + 9);
    v212 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0D0) + 112);
    v214 = *(v55 + 2);
    v213 = *(v55 + 3);
    v317 = *(v55 + 1);
    v368 = v214;
    v369 = v213;
    v370 = *(v55 + 8);
    v215 = v329;
    v216 = &v55[v212];
    v217 = v330;
    v218 = v331;
    (*(v329 + 32))(v330, v216, v331);
    v219 = v287;
    sub_24E615E00(&v368, (v287 + 32));
    v220 = *(v319 + 16);
    v221 = type metadata accessor for GamesOnboardingWelcomeView(0);
    v320 = v56;
    v222 = v221;
    (*(v215 + 16))(v219 + *(v221 + 40), v217, v218);
    *v219 = v209;
    *(v219 + 8) = v210;
    *(v219 + 16) = v317;
    *(v219 + 72) = v321;
    *(v219 + 80) = v211;
    *(v219 + 88) = v220;
    v223 = v222[11];
    *(v219 + v223) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
    swift_storeEnumTagMultiPayload();
    v224 = v222[12];
    *(v219 + v224) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v225 = v222[13];
    *(v219 + v225) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v226 = v219 + v222[14];
    LOBYTE(v342) = 0;

    sub_24F926F28();
    v227 = *(&v361 + 1);
    *v226 = v361;
    *(v226 + 8) = v227;
    sub_24E60169C(v219, v306, &qword_27F23B050);
    swift_storeEnumTagMultiPayload();
    sub_24F195D6C();
    sub_24F195E28();
    v228 = v308;
    sub_24F924E28();
    sub_24E60169C(v228, v313, &qword_27F23B040);
    swift_storeEnumTagMultiPayload();
    sub_24F195CE0();
    sub_24F195EE4();
    v229 = v318;
    sub_24F924E28();
    sub_24E601704(v228, &qword_27F23B040);
    v230 = swift_getWitnessTable();
    v231 = sub_24F195940();
    v355 = v230;
    v356 = v231;
    v232 = swift_getWitnessTable();
    v233 = sub_24F195A50();
    v353 = v232;
    v354 = v233;
    v234 = v325;
    swift_getWitnessTable();
    sub_24F195C54();
    v103 = v322;
    sub_24ECCCC98(v229, v234, v324);
    sub_24E601704(v229, &qword_27F23AFC8);
    v134 = v219;
    v135 = &qword_27F23B050;
    v56 = v320;
  }

  sub_24E601704(v134, v135);
  (*(v329 + 8))(v330, v331);
  sub_24E601704(&v368, &qword_27F2169E8);
LABEL_24:
  v271 = swift_getWitnessTable();
  v272 = sub_24F195940();
  v375 = v271;
  v376 = v272;
  v273 = swift_getWitnessTable();
  v274 = sub_24F195A50();
  v373 = v273;
  v374 = v274;
  v275 = swift_getWitnessTable();
  v276 = sub_24F195C54();
  v371 = v275;
  v372 = v276;
  v277 = swift_getWitnessTable();
  sub_24E7896B8(v103, v56, v277);
  return (*(v323 + 8))(v103, v56);
}