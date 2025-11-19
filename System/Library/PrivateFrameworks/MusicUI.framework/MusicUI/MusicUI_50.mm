uint64_t sub_216BA5ADC@<X0>(void (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v30 = a1;
  v29 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v29);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for MenuConfiguration(0);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v26 = sub_2170067A4();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_216CCB7C4();
  sub_216DE9428();
  sub_216DE9428();
  sub_216BA9048(v5, type metadata accessor for SquareLockup);
  swift_storeEnumTagMultiPayload();
  sub_2168A91B0();
  sub_216BA9048(v2, type metadata accessor for MenuContext);
  sub_216BA9048(v8, type metadata accessor for SquareLockup);
  v17 = *(v12 + 32);
  v18 = v25;
  v19 = v16;
  v20 = v26;
  v17(v25, v19, v26);
  sub_216BA88E0();
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v17((v22 + v21), v18, v20);
  result = sub_216BA88E0();
  v24 = v30;
  *v30 = sub_21680CDC8;
  v24[1] = v22;
  return result;
}

uint64_t sub_216BA5E6C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2170067A4();
  v16 = sub_2166D7B10(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(&v14);
  sub_216CCB7C4();
  sub_216DE9428();
  sub_2166A6EA4();
  sub_216BA9048(v4, type metadata accessor for SquareLockup);
  LOBYTE(v4) = v13 != 0;
  sub_216697664(v12, &qword_27CAB6DB0);
  v5 = type metadata accessor for ContextMenuPreview(0);
  v6 = v5[7];
  v7 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
  v8 = v5[8];
  v9 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v9);
  sub_2167B8EF0(&v14, a1 + v5[6]);
  *(a1 + v5[5]) = v4;
  v10 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
}

uint64_t sub_216BA6028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v27 = sub_2170075A4();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9428();
  sub_2166A6EA4();
  sub_216BA9048(v12, type metadata accessor for SquareLockup);
  sub_216CCB7C4();
  type metadata accessor for SquareLockupView(0);
  v13 = sub_216C0C534(&v28);
  sub_216C0C548(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v21 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  sub_2167B9BDC(&v33, v9, &v28, v5, v2, v22, v23, v24, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  sub_216697664(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v27);
  sub_216697664(&v28, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_216697664(&v33, &qword_27CAB6DB0);
}

uint64_t sub_216BA631C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for SquareLockupView(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v5 = result;
  v5[40] = 0;
  return result;
}

uint64_t sub_216BA63F8(uint64_t a1)
{
  result = sub_2166D7B10(qword_280E40720, type metadata accessor for SquareLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BA6450()
{
  v0 = type metadata accessor for SquareLockupContent(0);
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4900);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - v3);
  sub_2166A6EA4();
  v5 = v2[13];
  v6 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v4 + v5, 1, 1, v6);
  sub_216BA8888();
  v7 = swift_allocObject();
  sub_216BA88E0();
  v8 = v2[14];
  *(v4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v9 = v4 + v2[15];
  *v9 = swift_getKeyPath();
  v9[40] = 0;
  v4[5] = sub_216BA8FDC;
  v4[6] = v7;
  v4[7] = 0;
  v4[8] = 0;
  sub_216E31798();
  return sub_216697664(v4, &qword_27CAC4900);
}

uint64_t sub_216BA668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = sub_2170090F4();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2170067A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4908);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  *v16 = sub_2170093C4();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4910);
  sub_216BA6A6C(a1, &v16[*(v17 + 44)]);
  sub_216CCB7C4();
  sub_216DE9428();
  v18 = v9[57];
  sub_216BA9048(v9, type metadata accessor for SquareLockup);
  if (v18 != 1)
  {
    sub_21700F7D4();
  }

  sub_216E30AB8();
  (*(v11 + 8))(v13, v10);
  sub_216697664(v16, &qword_27CAC4908);
  v19 = *a1;
  if ((*(a1 + 8) & 1) == 0)
  {

    sub_21700ED94();
    v20 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v19, 0);
    (*(v4 + 8))(v6, v27);
  }

  sub_21700B3B4();
  sub_2170083C4();
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4918) + 36));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  v21[2] = v30;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4920);
  v25 = a2 + *(result + 36);
  *v25 = KeyPath;
  *(v25 + 8) = 0;
  return result;
}

uint64_t sub_216BA6A6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4928);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = (&v73 - v6);
  v89 = sub_21700D864();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v84 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700D8E4();
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x28223BE20](v8);
  v85 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_217008B44();
  MEMORY[0x28223BE20](v78);
  v11 = (&v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_2170090F4();
  v12 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4930);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v73 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4938);
  MEMORY[0x28223BE20](v80);
  v19 = &v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4940);
  v81 = *(v20 - 8);
  v82 = v20;
  MEMORY[0x28223BE20](v20);
  v79 = &v73 - v21;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4948);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v96 = &v73 - v24;
  v25 = type metadata accessor for SquareLockupContent(0);
  sub_2166A6EA4();
  v26 = (a1 + *(v25 + 28));
  v27 = *v26;
  v28 = v26[1];
  v29 = *a1;
  LODWORD(v26) = *(a1 + 8);
  v95 = a1;
  v76 = v28;
  v77 = v27;
  if (v26 == 1)
  {
    v30 = a1;
    sub_2167B8890(v27, v28);
    v31 = v29;
    v105 = v29;
    v32 = v29;
  }

  else
  {
    sub_2167B8890(v27, v28);
    sub_2167B88A8(v29, 0);
    sub_21700ED94();
    v74 = v11;
    v33 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v29, 0);
    v34 = *(v12 + 8);
    v73 = v25;
    v35 = v75;
    v34(v14, v75);
    v32 = __dst[0];

    sub_21700ED94();
    v36 = sub_217009C34();
    sub_217007BC4();

    v11 = v74;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v29, 0);
    v37 = v35;
    v25 = v73;
    v34(v14, v37);
    v30 = v95;
    v31 = v105;
  }

  v38 = type metadata accessor for ArtworkView();
  v39 = &v17[*(v38 + 20)];
  v40 = v76;
  *v39 = v77;
  *(v39 + 1) = v40;
  v41 = &v17[*(v38 + 24)];
  *v41 = v32;
  *(v41 + 1) = v31;
  v42 = *(v78 + 20);
  v43 = *MEMORY[0x277CE0118];
  v44 = sub_217009294();
  (*(*(v44 - 8) + 104))(v11 + v42, v43, v44);
  __asm { FMOV            V0.2D, #7.0 }

  *v11 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  sub_216E301C4();
  sub_216BA9048(v11, MEMORY[0x277CDFC08]);
  sub_216697664(v17, &qword_27CAC4930);
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4950) + 36)] = xmmword_217026E20;
  v50 = *(v25 + 60);
  memcpy(__dst, (v30 + v50), sizeof(__dst));
  v51 = v80;
  memcpy(&v19[*(v80 + 36)], (v30 + v50), 0x78uLL);
  sub_2166A6EA4();
  v52 = sub_216BA90A0();
  v53 = v79;
  sub_21700A6E4();
  sub_216697664(v19, &qword_27CAC4938);
  v54 = v87;
  v55 = v84;
  v56 = v89;
  (*(v87 + 104))(v84, *MEMORY[0x277D22060], v89);
  v98 = 0u;
  v99 = 0u;
  memset(v97, 0, sizeof(v97));
  v57 = v85;
  sub_21700D874();
  sub_216697664(v97, &unk_27CABF7A0);
  sub_216697664(&v98, &unk_27CABF7A0);
  (*(v54 + 8))(v55, v56);
  *&v98 = v51;
  *(&v98 + 1) = MEMORY[0x277D84030];
  *&v99 = v52;
  *(&v99 + 1) = MEMORY[0x277D84038];
  swift_getOpaqueTypeConformance2();
  v58 = v96;
  v59 = v82;
  sub_21700A204();
  (*(v90 + 8))(v57, v91);
  (*(v81 + 8))(v53, v59);
  sub_21700B3B4();
  sub_2170083C4();
  v90 = v99;
  v91 = v98;
  v89 = v100;
  v87 = v101;
  v97[0] = 1;
  v104 = BYTE8(v98);
  v103 = BYTE8(v99);
  v60 = sub_2170093C4();
  v61 = v92;
  *v92 = v60;
  *(v61 + 8) = 0;
  *(v61 + 16) = 0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49B0);
  sub_216BA74F0(v95, (v61 + *(v62 + 44)));
  v63 = v86;
  v64 = *(v86 + 16);
  v65 = v83;
  v66 = v88;
  v64(v83, v58, v88);
  LOBYTE(v58) = v97[0];
  LODWORD(v85) = v104;
  LODWORD(v95) = v103;
  v67 = v94;
  sub_21674568C();
  v68 = v93;
  v64(v93, v65, v66);
  v69 = &v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49B8) + 48)];
  *v69 = 0;
  v69[8] = v58;
  *(v69 + 2) = v91;
  v69[24] = v85;
  *(v69 + 4) = v90;
  v69[40] = v95;
  v70 = v87;
  *(v69 + 6) = v89;
  *(v69 + 7) = v70;
  sub_21674568C();
  sub_216697664(v61, &qword_27CAC4928);
  v71 = *(v63 + 8);
  v71(v96, v66);
  sub_216697664(v67, &qword_27CAC4928);
  return (v71)(v65, v66);
}

uint64_t sub_216BA74F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v110 = a2;
  v126 = sub_21700D864();
  v133 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v121 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_21700D8E4();
  v131 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v119 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49C0);
  v130 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v107 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v106 = &v99 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49C8);
  v108 = *(v8 - 8);
  v109 = v8;
  MEMORY[0x28223BE20](v8);
  v127 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v134 = &v99 - v11;
  MEMORY[0x28223BE20](v12);
  v122 = &v99 - v13;
  MEMORY[0x28223BE20](v14);
  v132 = &v99 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49D0);
  v124 = *(v16 - 8);
  v125 = v16;
  MEMORY[0x28223BE20](v16);
  v120 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v129 = &v99 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD478);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v99 - v21;
  v23 = type metadata accessor for SquareLockupContent(0);
  sub_2166A6EA4();
  v24 = sub_21693D75C(v22);
  v116 = v25;
  v117 = v24;
  v114 = v27;
  v115 = v26;
  if (qword_280E2C370 != -1)
  {
    swift_once();
  }

  v28 = qword_280E2C378;
  *&v113 = swift_getKeyPath();
  *(&v113 + 1) = v28;

  *(&v112 + 1) = sub_21700AD14();
  *&v112 = swift_getKeyPath();
  v29 = (a1 + v23[8]);
  v30 = *(a1 + v23[12]);
  v32 = *v29;
  v31 = v29[1];
  v33 = *(a1 + v23[13]);
  v34 = *(a1 + v23[18]);
  sub_21700DF14();
  v128 = a1;
  v35 = sub_216BA81BC();
  type metadata accessor for ExplicitBadgingPresenter();
  sub_2166D7B10(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);
  v37 = sub_217008CF4();
  v111 = v23;
  if (!v31)
  {

    v37 = 0;
    v105 = 0;
    v41 = 0;
LABEL_11:
    v103 = 0;
    v104 = 0;
    v40 = 0;
    v43 = 0;
    goto LABEL_14;
  }

  v38 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v38 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {

    v37 = 0;
    v105 = 0;
    v41 = 0;
    v31 = 0;
    goto LABEL_11;
  }

  LODWORD(v102) = v34;
  v39 = v36;
  v40 = v35;
  v41 = v32;
  if (v30)
  {
    v42 = sub_217009154();
  }

  else
  {
    v42 = sub_2170091A4();
  }

  v145[0] = v37;
  v145[1] = v39;
  v145[2] = v32;
  v145[3] = v31;
  LOBYTE(v145[4]) = v30;
  BYTE1(v145[4]) = v33;
  *(&v145[4] + 2) = v148;
  HIWORD(v145[4]) = v149;
  v145[5] = v40;
  LOBYTE(v145[6]) = v102;
  *(&v145[6] + 1) = *v147;
  HIDWORD(v145[6]) = *&v147[3];
  v145[7] = v42;
  v103 = v145[6];
  v104 = v145[4];
  __src[0] = v37;
  __src[1] = v39;
  v105 = v39;
  __src[2] = v32;
  __src[3] = v31;
  LOBYTE(__src[4]) = v30;
  BYTE1(__src[4]) = v33;
  HIWORD(__src[4]) = v149;
  *(&__src[4] + 2) = v148;
  __src[5] = v40;
  LOBYTE(__src[6]) = v102;
  HIDWORD(__src[6]) = *&v147[3];
  *(&__src[6] + 1) = *v147;
  v43 = v42;
  __src[7] = v42;
  sub_21680DAEC(v145, v144);
  sub_21680DB48(__src);
LABEL_14:
  v44 = v128;
  v45 = sub_216BA81BC();
  KeyPath = swift_getKeyPath();
  v47 = sub_21700AD14();
  v48 = swift_getKeyPath();
  __src[0] = v37;
  __src[1] = v105;
  __src[2] = v41;
  __src[3] = v31;
  __src[4] = v104;
  __src[5] = v40;
  __src[6] = v103;
  __src[7] = v43;
  __src[8] = KeyPath;
  __src[9] = v45;
  __src[10] = v48;
  __src[11] = v47;
  v49 = (v44 + v111[9]);
  v51 = *v49;
  v50 = v49[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC49D8);
  sub_216BA95B8();
  sub_21700ABA4();
  memcpy(v145, __src, sizeof(v145));
  sub_216697664(v145, &qword_27CAC49D8);
  if (v50)
  {
    v52 = MEMORY[0x277D84F90];
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  sub_21700DF14();
  v53 = sub_216BA8318();
  v54 = swift_getKeyPath();
  v55 = sub_21700AD34();
  v56 = swift_getKeyPath();
  *&v140 = v51;
  *(&v140 + 1) = v50;
  *&v141 = 0;
  *(&v141 + 1) = v52;
  *&v142 = v54;
  *(&v142 + 1) = v53;
  *&v143 = v56;
  *(&v143 + 1) = v55;
  sub_216BA8474();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1C0);
  v58 = sub_21686BF40();
  v59 = v106;
  sub_21700ABA4();
  v144[0] = v140;
  v144[1] = v141;
  v144[2] = v142;
  v144[3] = v143;
  sub_216697664(v144, &qword_27CABA1C0);
  v60 = *MEMORY[0x277D22070];
  v61 = v133;
  v62 = v121;
  v63 = v126;
  v102 = *(v133 + 104);
  v103 = v133 + 104;
  v102(v121, v60, v126);
  v140 = 0u;
  v141 = 0u;
  v136 = 0u;
  v137 = 0u;
  v64 = v119;
  sub_21700D874();
  sub_216697664(&v136, &unk_27CABF7A0);
  sub_216697664(&v140, &unk_27CABF7A0);
  v65 = *(v61 + 8);
  v133 = v61 + 8;
  v101 = v65;
  v65(v62, v63);
  v104 = v58;
  v105 = v57;
  *&v140 = v57;
  *(&v140 + 1) = v58;
  swift_getOpaqueTypeConformance2();
  v66 = v118;
  sub_21700A204();
  v67 = *(v131 + 8);
  v131 += 8;
  v100 = v67;
  v67(v64, v123);
  v68 = v59;
  v69 = *(v130 + 8);
  v130 += 8;
  v69(v68, v66);
  v70 = (v128 + v111[10]);
  v71 = v70[1];
  if (v71)
  {
    v72 = *v70;
    v73 = MEMORY[0x277D84F90];
  }

  else
  {
    v72 = 0;
    v73 = 0;
  }

  sub_21700DF14();
  v74 = sub_216BA8584();
  v75 = swift_getKeyPath();
  v76 = sub_21700AD34();
  v77 = swift_getKeyPath();
  *&v140 = v72;
  *(&v140 + 1) = v71;
  *&v141 = 0;
  *(&v141 + 1) = v73;
  *&v142 = v75;
  *(&v142 + 1) = v74;
  *&v143 = v77;
  *(&v143 + 1) = v76;
  v78 = v107;
  sub_21700ABA4();
  v135[0] = v140;
  v135[1] = v141;
  v135[2] = v142;
  v135[3] = v143;
  sub_216697664(v135, &qword_27CABA1C0);
  v79 = v121;
  v80 = v126;
  v102(v121, *MEMORY[0x277D22048], v126);
  v140 = 0u;
  v141 = 0u;
  v136 = 0u;
  v137 = 0u;
  v81 = v119;
  sub_21700D874();
  sub_216697664(&v136, &unk_27CABF7A0);
  sub_216697664(&v140, &unk_27CABF7A0);
  v101(v79, v80);
  v82 = v122;
  v83 = v118;
  sub_21700A204();
  v100(v81, v123);
  v69(v78, v83);
  v84 = *(v124 + 16);
  v85 = v120;
  v84(v120, v129, v125);
  v86 = v108;
  v87 = v109;
  v88 = *(v108 + 16);
  v88(v134, v132, v109);
  v88(v127, v82, v87);
  *&v136 = v117;
  *(&v136 + 1) = v116;
  *&v137 = v115;
  *(&v137 + 1) = v114;
  v138 = v113;
  v139 = v112;
  v89 = v137;
  v90 = v110;
  *v110 = v136;
  *(v90 + 1) = v89;
  v91 = v139;
  *(v90 + 2) = v138;
  *(v90 + 3) = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A08);
  v93 = v85;
  v94 = v125;
  v84(&v90[v92[12]], v93, v125);
  v88(&v90[v92[16]], v134, v87);
  v95 = v127;
  v88(&v90[v92[20]], v127, v87);
  sub_2166A6EA4();
  v96 = *(v86 + 8);
  v96(v122, v87);
  v96(v132, v87);
  v97 = *(v124 + 8);
  v97(v129, v94);
  v96(v95, v87);
  v96(v134, v87);
  v97(v120, v94);
  *&v140 = v117;
  *(&v140 + 1) = v116;
  *&v141 = v115;
  *(&v141 + 1) = v114;
  v142 = v113;
  v143 = v112;
  return sub_216697664(&v140, &qword_27CABA1C0);
}

uint64_t sub_216BA81BC()
{
  v0 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9428();
  v3 = v2[57];
  sub_216BA9048(v2, type metadata accessor for SquareLockup);
  if (v3 == 1)
  {

    goto LABEL_4;
  }

  v4 = sub_21700F7D4();

  if (v4)
  {
LABEL_4:
    if (qword_27CAB5E98 == -1)
    {
    }

    goto LABEL_8;
  }

  if (qword_280E2C270 != -1)
  {
LABEL_8:
    swift_once();
  }
}

uint64_t sub_216BA8318()
{
  v0 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9428();
  v3 = v2[57];
  sub_216BA9048(v2, type metadata accessor for SquareLockup);
  if (v3 == 1)
  {

    goto LABEL_4;
  }

  v4 = sub_21700F7D4();

  if (v4)
  {
LABEL_4:
    if (qword_27CAB5EA0 == -1)
    {
    }

    goto LABEL_8;
  }

  if (qword_280E2C448 != -1)
  {
LABEL_8:
    swift_once();
  }
}

uint64_t sub_216BA8474()
{
  v1 = type metadata accessor for SquareLockupContent(0);
  if (*(v0 + v1[16]))
  {
    goto LABEL_2;
  }

  v2 = sub_21700F7D4();

  if (v2)
  {
    goto LABEL_4;
  }

  if (*(v0 + v1[19]))
  {
LABEL_2:
  }

  else
  {
    v8 = sub_21700F7D4();

    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

LABEL_4:
  v3 = (v0 + v1[10]);
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v5)
    {
      return 1;
    }
  }

  return 2;
}

uint64_t sub_216BA8584()
{
  v0 = type metadata accessor for SquareLockup();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9428();
  v3 = v2[57];
  sub_216BA9048(v2, type metadata accessor for SquareLockup);
  if (v3 == 1)
  {

    goto LABEL_4;
  }

  v4 = sub_21700F7D4();

  if (v4)
  {
LABEL_4:
    if (qword_27CAB5EA8 == -1)
    {
    }

    goto LABEL_8;
  }

  if (qword_27CAB5E90 != -1)
  {
LABEL_8:
    swift_once();
  }
}

uint64_t sub_216BA8718()
{
  result = sub_217009E94();
  qword_280E2C450 = result;
  return result;
}

uint64_t sub_216BA8738()
{
  result = sub_217009E94();
  qword_27CAC48A0 = result;
  return result;
}

uint64_t sub_216BA878C()
{
  result = sub_217009D44();
  qword_27CAC48B0 = result;
  return result;
}

uint64_t sub_216BA87AC()
{
  result = sub_217009D44();
  qword_27CAC48B8 = result;
  return result;
}

uint64_t sub_216BA8800(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t *a4)
{
  a2();
  a3();
  v6 = sub_217009E34();

  *a4 = v6;
  return result;
}

uint64_t sub_216BA8888()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216BA88E0()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216BA8938()
{
  v0 = type metadata accessor for SquareLockupView(0);
  OUTLINED_FUNCTION_36(v0);

  return sub_216BA6028();
}

unint64_t sub_216BA8994()
{
  result = qword_27CAC48D8;
  if (!qword_27CAC48D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC48C8);
    sub_216BA8A4C();
    sub_2166D9530(&qword_280E2A810, &qword_27CAB8A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC48D8);
  }

  return result;
}

unint64_t sub_216BA8A4C()
{
  result = qword_27CAC48E0;
  if (!qword_27CAC48E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC48C0);
    sub_2166D7B10(qword_280E3D070, type metadata accessor for SquareLockupContent);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC48E0);
  }

  return result;
}

void sub_216BA8B30()
{
  sub_216BA8DCC(319, &qword_280E2B480, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_216BA4B6C();
    if (v1 <= 0x3F)
    {
      sub_216BA8D68(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216BA8DCC(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_216BA8D68(319, &qword_27CAC2530, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_2169109EC(319, &qword_280E2A2A8, &qword_27CAB6D68, &unk_2170153A0, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_216BA8DCC(319, &qword_27CAC48F0, &_s30SocialProfileRequestDescriptorVN, MEMORY[0x277D83D88]);
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

void sub_216BA8D68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_216BA8DCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_216BA8E1C()
{
  result = qword_27CAC48F8;
  if (!qword_27CAC48F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC48E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC48C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8AA0);
    type metadata accessor for ContextMenuPreview(255);
    sub_216BA8994();
    sub_2166D9530(qword_280E2BAE8, &qword_27CAB8AA0);
    sub_2166D7B10(qword_280E3F158, type metadata accessor for ContextMenuPreview);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC48F8);
  }

  return result;
}

uint64_t sub_216BA8FDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SquareLockupContent(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_216BA668C(v5, a1);
}

uint64_t sub_216BA9048(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216BA90A0()
{
  result = qword_27CAC4958;
  if (!qword_27CAC4958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4938);
    sub_216BA912C();
    sub_216BA9564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4958);
  }

  return result;
}

unint64_t sub_216BA912C()
{
  result = qword_27CAC4960;
  if (!qword_27CAC4960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4968);
    sub_216BA91F4();
    swift_getOpaqueTypeConformance2();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4960);
  }

  return result;
}

unint64_t sub_216BA91F4()
{
  result = qword_27CAC4970;
  if (!qword_27CAC4970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4968);
    sub_216BA92AC();
    sub_2166D9530(&qword_280E2A808, &qword_27CAB72E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4970);
  }

  return result;
}

unint64_t sub_216BA92AC()
{
  result = qword_27CAC4978;
  if (!qword_27CAC4978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4980);
    sub_216BA9364();
    sub_2166D9530(qword_280E382B8, &qword_27CAB7440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4978);
  }

  return result;
}

unint64_t sub_216BA9364()
{
  result = qword_27CAC4988;
  if (!qword_27CAC4988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4990);
    sub_216BA93F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4988);
  }

  return result;
}

unint64_t sub_216BA93F0()
{
  result = qword_27CAC4998;
  if (!qword_27CAC4998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC49A0);
    sub_216BA94A8();
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4998);
  }

  return result;
}

unint64_t sub_216BA94A8()
{
  result = qword_27CAC49A8;
  if (!qword_27CAC49A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4930);
    sub_2166D7B10(&qword_27CAB7430, type metadata accessor for ArtworkView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC49A8);
  }

  return result;
}

unint64_t sub_216BA9564()
{
  result = qword_280E34F10[0];
  if (!qword_280E34F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E34F10);
  }

  return result;
}

unint64_t sub_216BA95B8()
{
  result = qword_27CAC49E0;
  if (!qword_27CAC49E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC49D8);
    sub_216BA9670();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC49E0);
  }

  return result;
}

unint64_t sub_216BA9670()
{
  result = qword_27CAC49E8;
  if (!qword_27CAC49E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC49F0);
    sub_216BA9728();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC49E8);
  }

  return result;
}

unint64_t sub_216BA9728()
{
  result = qword_27CAC49F8;
  if (!qword_27CAC49F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4A00);
    sub_21686C64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC49F8);
  }

  return result;
}

uint64_t sub_216BA97AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB938);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB948);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A20);
  OUTLINED_FUNCTION_34();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v20 = *(a1 + 56);
  if (v20 >= 2)
  {
    v39 = v17;
    v40 = v12;
    v41 = v10;
    v42 = v6;
    v43 = v4;
    v44 = a2;
    v23 = *(a1 + 48);
    v24 = qword_27CAB5EB8;
    sub_21700DF14();
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = sub_21700A094();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_2167EF724(v23, v20);
    KeyPath = swift_getKeyPath();
    v33 = sub_21700ACF4();
    v34 = swift_getKeyPath();
    v53 = v29 & 1;
    *&v49 = v25;
    *(&v49 + 1) = v27;
    LOBYTE(v50) = v29 & 1;
    *(&v50 + 1) = v31;
    *&v51 = KeyPath;
    BYTE8(v51) = 0;
    *&v52 = v34;
    *(&v52 + 1) = v33;
    v45 = v49;
    v46 = v50;
    v47 = v51;
    v48 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB958);
    sub_2168D0FE4();
    sub_21700A2A4();
    sub_216697664(&v49, &qword_27CABB958);
    v35 = v43;
    sub_217006484();
    (*(v42 + 8))(v9, v35);
    sub_217009C74();
    sub_217007F24();
    OUTLINED_FUNCTION_1_27();
    (*(v40 + 32))(v19, v15, v41);
    OUTLINED_FUNCTION_1_99(&v19[*(v39 + 36)]);
    sub_217009CE4();
    sub_217007F24();
    OUTLINED_FUNCTION_1_27();
    v36 = v44;
    sub_2167457E8(v19, v44);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A28);
    OUTLINED_FUNCTION_1_99(v36 + *(v37 + 36));
    return __swift_storeEnumTagSinglePayload(v36, 0, 1, v38);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A28);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v21);
  }
}

uint64_t sub_216BA9BE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  sub_217009D94();
  v3 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = sub_217009DF4();
  result = sub_216697664(v2, &qword_27CAB81D0);
  qword_27CAC4A18 = v4;
  return result;
}

uint64_t sub_216BA9D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v29 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A78);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = type metadata accessor for FlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = v21 - v20;
  v23 = *(v14 + 16);
  v23(v17, v5, a2);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
    sub_216AF64B8(v13, v22);
    if (sub_2168ED65C())
    {
      a4[3] = v18;
      a4[4] = sub_2166D7B58(qword_280E45BB8, type metadata accessor for FlowAction);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
      sub_216BAC12C(v22, boxed_opaque_existential_1, type metadata accessor for FlowAction);
      v25 = *(v18 + 40);
      sub_216697664(boxed_opaque_existential_1 + v25, &qword_27CABF7B0);
      sub_216788294(v29, boxed_opaque_existential_1 + v25);
      return OUTLINED_FUNCTION_4_103();
    }

    OUTLINED_FUNCTION_4_103();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v18);
    sub_216697664(v13, &qword_27CAC4A78);
  }

  a4[3] = a2;
  a4[4] = a3;
  v27 = __swift_allocate_boxed_opaque_existential_1(a4);
  return (v23)(v27, v5, a2);
}

void sub_216BAA010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_217007CA4();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  v32 = v31 - v30;
  if ((v25 & 1) == 0)
  {
    sub_217007C94();
    v33 = sub_217007C84();
    v34 = sub_21700ED84();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      a10 = v36;
      *v35 = 136315394;
      v37 = sub_21700F784();
      v39 = sub_2166A85FC(v37, v38, &a10);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(v23);
      v40 = sub_21700E594();
      v42 = sub_2166A85FC(v40, v41, &a10);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_216679000, v33, v34, "Unrecognized value '%s' for type '%s'", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v36, -1, -1);
      MEMORY[0x21CEA1440](v35, -1, -1);
    }

    (*(v28 + 8))(v32, v26);
  }

  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216BAA278(char a1)
{
  if (a1)
  {
    return 0x6F697463656C6573;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_216BAA2C0(char a1)
{
  if (a1)
  {
    return 0x6465646E61707865;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_216BAA304(char a1)
{
  if (a1)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_216BAA340(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_21700F7D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21700F7D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_216BAA404(char a1)
{
  if (a1)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 1954047348;
  }
}

void sub_216BAA430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_22_3();
  a23 = v25;
  a24 = v26;
  a10 = v27;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4AA8);
  OUTLINED_FUNCTION_1();
  v32 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_216BAC2DC();
  sub_21700F974();
  a14 = 0;
  sub_21700F724();
  if (!v24)
  {
    a13 = a10;
    a12 = 1;
    sub_216BAC384();
    sub_21700F704();
  }

  (*(v32 + 8))(v35, v30);
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_216BAA59C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4A90);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_216BAC2DC();
  sub_21700F964();
  if (!v1)
  {
    v4 = sub_21700F664();
    sub_216BAC330();
    sub_21700F644();
    v6 = OUTLINED_FUNCTION_13_54();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t sub_216BAA764@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216786440();
  *a1 = result;
  return result;
}

uint64_t sub_216BAA79C()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_21691A2FC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_216BAA7E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216786440();
  *a1 = result;
  return result;
}

uint64_t sub_216BAA820()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216BAA278(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_216BAA86C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216786440();
  *a1 = result;
  return result;
}

uint64_t sub_216BAA8A4()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216BAA2C0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_216BAA8F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216786440();
  *a1 = result;
  return result;
}

uint64_t sub_216BAA928()
{
  v1 = OUTLINED_FUNCTION_18_45();
  result = sub_216BAA304(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_216BAAA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_216BAA340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_216BAAA30(uint64_t a1)
{
  v2 = sub_216BAC2DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_216BAAA6C(uint64_t a1)
{
  v2 = sub_216BAC2DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_216BAAAA8(uint64_t a1@<X8>)
{
  sub_216E29494();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_216BAAAD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_216BAA59C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_216BAAB2C()
{
  result = qword_27CAC4A30;
  if (!qword_27CAC4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A30);
  }

  return result;
}

unint64_t sub_216BAAB84()
{
  result = qword_27CAC4A38;
  if (!qword_27CAC4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A38);
  }

  return result;
}

unint64_t sub_216BAABDC()
{
  result = qword_27CAC4A40;
  if (!qword_27CAC4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A40);
  }

  return result;
}

void sub_216BAAC30()
{
  OUTLINED_FUNCTION_22_3();
  v92 = v0;
  v111 = v1;
  v3 = v2;
  v103 = v4;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v100 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  v20 = v90 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v90 - v22;
  sub_21700D7A4();
  sub_21700CE04();
  v24 = *(v100 + 16);
  v102 = v5;
  v98 = v100 + 16;
  v97 = v24;
  (v24)(v10, v111, v5);
  v101 = type metadata accessor for SquareLockup();
  v96 = v101[12];
  v91 = v23;
  v95 = v10;
  sub_21700D734();
  v25 = 25705;
  v26 = 0xE200000000000000;
  v27 = v3;
  sub_21700CE04();
  *&v94 = sub_21700CDB4();
  v29 = v28;
  v32 = *(v13 + 8);
  v31 = v13 + 8;
  v30 = v32;
  v32(v20, v11);
  v99 = v32;
  if (!v29)
  {
    goto LABEL_4;
  }

  v33 = v29;
  v26 = 0x8000000217081C10;
  v25 = 0xD000000000000014;
  v34 = *(&v94 + 1);
  sub_21700CE04();
  v90[0] = sub_21700CD24();
  v36 = v35;
  v30(v34, v11);
  if (v36)
  {

LABEL_4:
    v37 = sub_21700E2E4();
    sub_2166D7B58(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    *v38 = v25;
    v38[1] = v26;
    v38[2] = v101;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    v39 = OUTLINED_FUNCTION_21_44();
    v40(v39);
    v99(v27, v11);
    sub_216697664(v103 + v96, &qword_27CAB6D58);
    goto LABEL_14;
  }

  v93 = v11;
  v41 = v101;
  *&v108 = v94;
  *(&v108 + 1) = v33;
  *(&v94 + 1) = v33;
  sub_21700DF14();
  v42 = v103;
  sub_21700F364();
  *(v42 + v41[14]) = v90[0];
  type metadata accessor for ContentDescriptor();
  v43 = v91;
  sub_21700CE04();
  OUTLINED_FUNCTION_17_50();
  v44();
  sub_2166D7B58(qword_280E40390, type metadata accessor for ContentDescriptor);
  sub_21700D734();
  sub_21700CE04();
  OUTLINED_FUNCTION_39();
  sub_21700D2E4();
  v96 = v31;
  v99(v43, v93);
  v45 = v106;
  if (v106)
  {
    v46 = v107;
    __swift_project_boxed_opaque_existential_1(v105, v106);
    v108 = v94;
    sub_21700F364();
    sub_216BA9D20(v104, v45, v46, &v108);
    sub_216788110(v104);
    __swift_destroy_boxed_opaque_existential_1Tm(v105);
  }

  else
  {

    sub_216697664(v105, &qword_27CAB6DB0);
    v108 = 0u;
    v109 = 0u;
    v110 = 0;
  }

  v47 = v42 + v101[18];
  v48 = v109;
  *v47 = v108;
  *(v47 + 1) = v48;
  *(v47 + 4) = v110;
  type metadata accessor for Artwork();
  sub_21700CE04();
  v49 = OUTLINED_FUNCTION_108();
  v50 = v97;
  v97(v49);
  sub_2166D7B58(&qword_280E2BF60, type metadata accessor for Artwork);
  OUTLINED_FUNCTION_25_7();
  sub_21700D734();
  OUTLINED_FUNCTION_25_37();
  v51 = OUTLINED_FUNCTION_108();
  v50(v51);
  OUTLINED_FUNCTION_25_7();
  sub_216AC6598();
  *v42 = v52;
  sub_21700CE04();
  v53 = OUTLINED_FUNCTION_108();
  v50(v53);
  OUTLINED_FUNCTION_25_7();
  sub_216AC6598();
  v42[1] = v54;
  sub_21700CE04();
  OUTLINED_FUNCTION_39();
  sub_21700D2E4();
  v55 = v93;
  v56 = v99;
  v99(v43, v93);
  sub_21700CE04();
  v57 = sub_21700CD44();
  v58 = v55;
  v59 = v27;
  v60 = v103;
  v56(v43, v58);
  *(v60 + 32) = v57;
  sub_21700CE04();
  OUTLINED_FUNCTION_17_50();
  v61();
  sub_216BAC18C();
  OUTLINED_FUNCTION_25_7();
  sub_21700D734();
  v62 = *(&v108 + 1);
  if (*(&v108 + 1))
  {
    v63 = v109;
    v60[5] = v108;
    v60[6] = v62;
    *(v60 + 56) = v63;
  }

  else
  {
    v64 = v90[1];
    sub_21700CE04();
    v65 = sub_21700CDB4();
    v67 = v66;
    v99(v64, v93);
    if (v67)
    {
      v60[5] = v65;
      v60[6] = v67;
      *(v60 + 56) = 2;
    }

    else
    {
      v60[5] = 0;
      v60[6] = 0;
      *(v60 + 56) = 0;
    }
  }

  sub_21700CE04();
  sub_216BAC1E0();
  OUTLINED_FUNCTION_10_70();
  v68 = v93;
  v69 = v99;
  v99(v43, v93);
  *(v60 + 57) = v108;
  sub_21700CE04();
  sub_216BAC234();
  OUTLINED_FUNCTION_10_70();
  v70 = OUTLINED_FUNCTION_39();
  v69(v70);
  *(v60 + 58) = v108;
  sub_21700CE04();
  v71 = sub_21700CD44();
  v72 = OUTLINED_FUNCTION_108();
  v69(v72);
  v73 = v101;
  *(v60 + v101[16]) = v71 & 1;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_25_37();
  sub_21700CDB4();
  v74 = OUTLINED_FUNCTION_8_80();
  v69(v74);
  v75 = (v60 + v73[23]);
  *v75 = v71;
  v75[1] = v43;
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_25_37();
  sub_21700CDB4();
  v76 = OUTLINED_FUNCTION_8_80();
  v69(v76);
  v77 = v69;
  v60[8] = v71;
  v60[9] = v43;
  OUTLINED_FUNCTION_11_0();
  v78 = v90[3];
  sub_21700CE04();
  v79 = sub_21700CD44();
  v77(v78, v68);
  v80 = v101;
  *(v60 + v101[15]) = v79 & 1;
  sub_21700CE04();
  sub_21700CDB4();
  v81 = OUTLINED_FUNCTION_8_80();
  (v77)(v81);
  v82 = (v60 + v80[21]);
  *v82 = v79;
  v82[1] = v43;
  sub_21700CE04();
  sub_216BAC288();
  OUTLINED_FUNCTION_10_70();
  v83 = OUTLINED_FUNCTION_39();
  (v77)(v83);
  *(v60 + v80[13]) = v108;
  OUTLINED_FUNCTION_25_37();
  v84 = sub_21700CDB4();
  v86 = v85;
  v87 = OUTLINED_FUNCTION_21_44();
  v88(v87);
  v77(v59, v68);
  v89 = OUTLINED_FUNCTION_39();
  (v77)(v89);
  v60[2] = v84;
  v60[3] = v86;
LABEL_14:
  OUTLINED_FUNCTION_21_4();
}

unint64_t sub_216BAB95C()
{
  result = qword_27CAC4A48;
  if (!qword_27CAC4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A48);
  }

  return result;
}

unint64_t sub_216BAC038()
{
  result = qword_27CAC4A50;
  if (!qword_27CAC4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A50);
  }

  return result;
}

uint64_t sub_216BAC0D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BAC12C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_216BAC18C()
{
  result = qword_27CAC4A80;
  if (!qword_27CAC4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A80);
  }

  return result;
}

unint64_t sub_216BAC1E0()
{
  result = qword_280E445F8;
  if (!qword_280E445F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E445F8);
  }

  return result;
}

unint64_t sub_216BAC234()
{
  result = qword_280E44608;
  if (!qword_280E44608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E44608);
  }

  return result;
}

unint64_t sub_216BAC288()
{
  result = qword_27CAC4A88;
  if (!qword_27CAC4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A88);
  }

  return result;
}

unint64_t sub_216BAC2DC()
{
  result = qword_27CAC4A98;
  if (!qword_27CAC4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4A98);
  }

  return result;
}

unint64_t sub_216BAC330()
{
  result = qword_27CAC4AA0;
  if (!qword_27CAC4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AA0);
  }

  return result;
}

unint64_t sub_216BAC384()
{
  result = qword_27CAC4AB0;
  if (!qword_27CAC4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AB0);
  }

  return result;
}

uint64_t sub_216BAC3E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216BAC43C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *sub_216BAC4A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216BAC580()
{
  result = qword_27CAC4AB8;
  if (!qword_27CAC4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AB8);
  }

  return result;
}

unint64_t sub_216BAC5D8()
{
  result = qword_27CAC4AC0;
  if (!qword_27CAC4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AC0);
  }

  return result;
}

unint64_t sub_216BAC630()
{
  result = qword_27CAC4AC8;
  if (!qword_27CAC4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AC8);
  }

  return result;
}

unint64_t sub_216BAC688()
{
  result = qword_27CAC4AD0;
  if (!qword_27CAC4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AD0);
  }

  return result;
}

unint64_t sub_216BAC6DC()
{
  result = qword_27CAC4AD8;
  if (!qword_27CAC4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AD8);
  }

  return result;
}

uint64_t type metadata accessor for MenuActionType()
{
  result = qword_280E43220;
  if (!qword_280E43220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216BAC7AC()
{
  type metadata accessor for ShareableMusicItem(319);
  if (v0 <= 0x3F)
  {
    sub_216688560(319, &qword_280E452C8);
    if (v1 <= 0x3F)
    {
      sub_217006AC4();
      if (v2 <= 0x3F)
      {
        sub_21700C924();
        if (v3 <= 0x3F)
        {
          sub_216BAC8A8();
          if (v4 <= 0x3F)
          {
            sub_217006C84();
            if (v5 <= 0x3F)
            {
              sub_216BAC920();
              if (v6 <= 0x3F)
              {
                sub_216BAC978();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_216BAC8A8()
{
  if (!qword_280E2A088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CABD310);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E2A088);
    }
  }
}

void sub_216BAC920()
{
  if (!qword_280E2A078)
  {
    sub_216688560(0, &qword_280E2A070);
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A078);
    }
  }
}

uint64_t sub_216BAC978()
{
  result = qword_280E29DE8;
  if (!qword_280E29DE8)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_280E29DE8);
  }

  return result;
}

uint64_t sub_216BAC9A0()
{
  type metadata accessor for MenuActionType();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_91(v2);
  v3 = OUTLINED_FUNCTION_17_51();
  if (v3 == 12)
  {
    LOWORD(v3) = 350;
  }

  else if (v3 != 9)
  {
    sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
    return 0;
  }

  return sub_216983738(v3);
}

uint64_t sub_216BACA44()
{
  v2 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v48 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v7 = v6 - v5;
  v49 = sub_217006AC4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_53();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = type metadata accessor for MenuActionType();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  sub_21691775C(v0, v24 - v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v50 = *v25;
      sub_216BAE400(&v50);
      goto LABEL_53;
    case 2u:
      v33 = v9;
      OUTLINED_FUNCTION_18_11();
      v34 = v49;
      v35(v20, v25, v49);
      (*(v33 + 16))(v18, v20, v34);
      v36 = (*(v33 + 88))(v18, v34);
      if (v36 == *MEMORY[0x277D2A750])
      {
        v37 = 184;
LABEL_75:
        sub_216983738(v37);
        OUTLINED_FUNCTION_1_118();
        goto LABEL_76;
      }

      if (v36 == *MEMORY[0x277D2A758])
      {
        v37 = 185;
        goto LABEL_75;
      }

      if (v36 == *MEMORY[0x277D2A740])
      {
        v37 = 188;
        goto LABEL_75;
      }

      if (v36 == *MEMORY[0x277D2A760])
      {
        v37 = 186;
        goto LABEL_75;
      }

      if (v36 == *MEMORY[0x277D2A748])
      {
        v37 = 187;
        goto LABEL_75;
      }

      v21 = 0;
LABEL_76:
      v46 = *(v33 + 8);
      v46(v18, v34);
      v46(v20, v34);
      return v21;
    case 3u:
      v28 = v9;
      OUTLINED_FUNCTION_18_11();
      v29 = v49;
      v30(v1, v25, v49);
      (*(v28 + 16))(v13, v1, v29);
      v31 = (*(v28 + 88))(v13, v29);
      if (v31 == *MEMORY[0x277D2A750])
      {
        v32 = 357;
LABEL_71:
        sub_216983738(v32);
        OUTLINED_FUNCTION_1_118();
        goto LABEL_72;
      }

      if (v31 == *MEMORY[0x277D2A758])
      {
        v32 = 358;
        goto LABEL_71;
      }

      if (v31 == *MEMORY[0x277D2A740])
      {
        v32 = 361;
        goto LABEL_71;
      }

      if (v31 == *MEMORY[0x277D2A760])
      {
        v32 = 359;
        goto LABEL_71;
      }

      if (v31 == *MEMORY[0x277D2A748])
      {
        v32 = 360;
        goto LABEL_71;
      }

      v21 = 0;
LABEL_72:
      v45 = *(v28 + 8);
      v45(v13, v29);
      v45(v1, v29);
      return v21;
    case 4u:
      v39 = v48;
      OUTLINED_FUNCTION_18_11();
      v40(v7, v25, v2);
      v41 = sub_21700C6C4();
      if (v41 == 2 || (v41 & 1) == 0)
      {
        v42 = 337;
      }

      else
      {
        v42 = 149;
      }

      sub_216983738(v42);
      OUTLINED_FUNCTION_1_118();
      (*(v39 + 8))(v7, v2);
      return v21;
    case 5u:
      v21 = *v25;

      return v21;
    case 6u:
      sub_216983738(190);
      OUTLINED_FUNCTION_1_118();
      OUTLINED_FUNCTION_0_186();
      sub_216BAE5AC(v25, v38);
      return v21;
    case 7u:
      OUTLINED_FUNCTION_0_186();
      sub_216BAE5AC(v25, v43);
      v27 = 133;
      goto LABEL_52;
    case 8u:
      if (*v25 != 1)
      {
        goto LABEL_39;
      }

      v27 = 234;
      goto LABEL_52;
    case 9u:
      v27 = 8;
      goto LABEL_52;
    case 0xAu:
      v27 = 91;
      goto LABEL_52;
    case 0xBu:
      v27 = 6;
      goto LABEL_52;
    case 0xCu:
      v27 = 351;
      goto LABEL_52;
    case 0xDu:
      goto LABEL_3;
    case 0xEu:
      v27 = 189;
      goto LABEL_52;
    case 0xFu:
      v27 = 318;
      goto LABEL_52;
    case 0x10u:
      v27 = 4;
      goto LABEL_52;
    case 0x11u:
      v27 = 159;
      goto LABEL_52;
    case 0x12u:
      v27 = 167;
      goto LABEL_52;
    case 0x13u:
      v27 = 97;
      goto LABEL_52;
    case 0x14u:
      v27 = 140;
      goto LABEL_52;
    case 0x15u:
      v27 = 289;
      goto LABEL_52;
    case 0x16u:
      v27 = 122;
      goto LABEL_52;
    case 0x17u:
      v27 = 44;
      goto LABEL_52;
    case 0x18u:
      v27 = 355;
      goto LABEL_52;
    case 0x19u:
      v27 = 39;
      goto LABEL_52;
    case 0x1Au:
      v27 = 237;
      goto LABEL_52;
    case 0x1Bu:
      v27 = 348;
      goto LABEL_52;
    case 0x1Cu:
      v27 = 194;
      goto LABEL_52;
    case 0x1Du:
      v27 = 11;
      goto LABEL_52;
    case 0x1Eu:
      v27 = 192;
      goto LABEL_52;
    case 0x1Fu:
      v27 = 66;
      goto LABEL_52;
    case 0x20u:
      v27 = 134;
      goto LABEL_52;
    case 0x21u:
      v27 = 135;
      goto LABEL_52;
    case 0x22u:
      v27 = 370;
      goto LABEL_52;
    case 0x23u:
      v27 = 369;
      goto LABEL_52;
    case 0x24u:
      v27 = 182;
      goto LABEL_52;
    case 0x25u:
      v27 = 340;
      goto LABEL_52;
    case 0x26u:
      v27 = 147;
      goto LABEL_52;
    case 0x27u:
      v27 = 352;
      goto LABEL_52;
    case 0x28u:
      v27 = 356;
      goto LABEL_52;
    case 0x29u:
      v27 = 269;
      goto LABEL_52;
    case 0x2Au:
LABEL_39:
      v27 = 71;
      goto LABEL_52;
    case 0x2Bu:
      v27 = 235;
      goto LABEL_52;
    case 0x2Cu:
      v27 = 262;
      goto LABEL_52;
    default:
      OUTLINED_FUNCTION_0_186();
      sub_216BAE5AC(v25, v26);
LABEL_3:
      v27 = 296;
LABEL_52:
      sub_216983738(v27);
LABEL_53:
      OUTLINED_FUNCTION_1_118();
      return v21;
  }
}

uint64_t sub_216BAD07C()
{
  v1 = v0;
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v41 = v3;
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v43 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = sub_217006C84();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v40 - v21;
  type metadata accessor for MenuActionType();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  sub_21691775C(v1, v25 - v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_18_11();
      v28(v22, v26, v13);
      (*(v15 + 16))(v19, v22, v13);
      v29 = (*(v15 + 88))(v19, v13);
      if (v29 == *MEMORY[0x277D2A8E8])
      {
        v30 = OUTLINED_FUNCTION_13_55();
        v31(v30);
        v32 = v43;
        (*(v43 + 32))(v12, v19, v7);
        v33 = sub_21700C184();
        (*(v32 + 8))(v12, v7);
LABEL_9:
        (*(v15 + 8))(v22, v13);
        return v33;
      }

      if (v29 == *MEMORY[0x277D2A8F0])
      {
        v34 = OUTLINED_FUNCTION_13_55();
        v35(v34);
        v37 = v41;
        v36 = v42;
        (*(v41 + 32))(v6, v19, v42);
        v33 = sub_21700C804();
        (*(v37 + 8))(v6, v36);
        goto LABEL_9;
      }

      v38 = *(v15 + 8);
      v38(v22, v13);
      v38(v19, v13);
    }

    else
    {
      sub_216BAE5AC(v26, type metadata accessor for MenuActionType);
    }

    return 0;
  }

  return *v26;
}

uint64_t sub_216BAD428(unsigned __int8 *a1, uint64_t a2)
{
  v133 = a1;
  v134 = a2;
  sub_217006C84();
  OUTLINED_FUNCTION_1();
  v129 = v4;
  v130 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v124 = v6 - v5;
  OUTLINED_FUNCTION_4_1();
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v127 = v8;
  v128 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v123 = v10 - v9;
  OUTLINED_FUNCTION_4_1();
  sub_217006AC4();
  OUTLINED_FUNCTION_1();
  v131 = v12;
  v132 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  v122 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v121 = &v120 - v16;
  v17 = OUTLINED_FUNCTION_4_1();
  v18 = type metadata accessor for ShareableMusicItem(v17);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_7();
  v120 = v20 - v19;
  OUTLINED_FUNCTION_4_1();
  v21 = type metadata accessor for MenuActionType();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  v125 = (v23 - v24);
  MEMORY[0x28223BE20](v25);
  v27 = (&v120 - v26);
  MEMORY[0x28223BE20](v28);
  v126 = &v120 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = (&v120 - v31);
  MEMORY[0x28223BE20](v33);
  v35 = &v120 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v120 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v120 - v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15_53();
  MEMORY[0x28223BE20](v43);
  v45 = &v120 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4AE0);
  MEMORY[0x28223BE20](v46 - 8);
  v48 = &v120 - v47;
  v50 = &v120 + *(v49 + 56) - v47;
  v51 = OUTLINED_FUNCTION_4_104();
  sub_21691775C(v51, v52);
  v133 = v50;
  sub_21691775C(v134, v50);
  v134 = v48;
  v53 = v21;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v79, v2);
      v80 = *v2;
      v81 = v133;
      OUTLINED_FUNCTION_227();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_84;
      }

      v82 = *v81;
      if (v80 == 23)
      {
        if (v82 == 23)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v136 = v80;
        if (v82 != 23)
        {
          v135 = v82;
          if (static ContentKind.== infix(_:_:)(&v136, &v135))
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_98;
    case 2u:
      v62 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v62, v41);
      v63 = v133;
      OUTLINED_FUNCTION_227();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v65 = v131;
        v64 = v132;
        v66 = v121;
        (*(v131 + 32))(v121, v63, v132);
        v53 = sub_217006AA4();
        v67 = *(v65 + 8);
        v67(v66, v64);
        v67(v41, v64);
        goto LABEL_56;
      }

      v105 = *(v131 + 8);
      v106 = v41;
      goto LABEL_79;
    case 3u:
      v68 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v68, v38);
      if (OUTLINED_FUNCTION_8_81() == 3)
      {
        v57 = v132;
        v69 = OUTLINED_FUNCTION_10_71();
        v70(v69);
        sub_217006AA4();
        v71 = OUTLINED_FUNCTION_6_80();
        (v41)(v71);
        v61 = v38;
        goto LABEL_55;
      }

      v105 = *(v131 + 8);
      v106 = v38;
LABEL_79:
      v107 = v132;
      goto LABEL_83;
    case 4u:
      v56 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v56, v35);
      if (OUTLINED_FUNCTION_8_81() == 4)
      {
        v57 = v128;
        v58 = OUTLINED_FUNCTION_10_71();
        v59(v58);
        sub_21700C7B4();
        v60 = OUTLINED_FUNCTION_6_80();
        (v41)(v60);
        v61 = v35;
        goto LABEL_55;
      }

      (*(v127 + 8))(v35, v128);
      goto LABEL_84;
    case 5u:
      sub_21691775C(v134, v32);
      v84 = *v32;
      v83 = v32[1];
      v85 = v32[2];
      if (OUTLINED_FUNCTION_8_81() != 5)
      {

        v32 = v134;
        goto LABEL_84;
      }

      v86 = *v41;
      v87 = *(v41 + 1);
      v88 = *(v41 + 2);
      if (v84 == v86 && v83 == v87)
      {
      }

      else
      {
        v90 = sub_21700F7D4();

        if ((v90 & 1) == 0)
        {

          OUTLINED_FUNCTION_0_186();
          v92 = v134;
          goto LABEL_105;
        }
      }

      if (v85)
      {
        if (v88)
        {
          sub_21693D428();
          v117 = v85;
          v118 = sub_21700F104();

          v119 = v134;
          if ((v118 & 1) == 0)
          {
            goto LABEL_104;
          }

LABEL_100:
          OUTLINED_FUNCTION_0_186();
          v104 = v119;
          goto LABEL_75;
        }

        v88 = v85;
        v119 = v134;
      }

      else
      {
        v119 = v134;
        if (!v88)
        {
          goto LABEL_100;
        }
      }

LABEL_104:
      OUTLINED_FUNCTION_0_186();
      v92 = v119;
LABEL_105:
      sub_216BAE5AC(v92, v91);
LABEL_85:
      v53 = 0;
      return v53 & 1;
    case 6u:
      v93 = OUTLINED_FUNCTION_9_74();
      v94 = v126;
      sub_21691775C(v93, v126);
      if (OUTLINED_FUNCTION_8_81() != 6)
      {
        v107 = v130;
        v105 = *(v129 + 8);
        v106 = v94;
LABEL_83:
        v105(v106, v107);
        goto LABEL_84;
      }

      v57 = v130;
      v95 = OUTLINED_FUNCTION_10_71();
      v96(v95);
      sub_217006C74();
      v97 = OUTLINED_FUNCTION_6_80();
      (v41)(v97);
      v61 = v94;
LABEL_55:
      (v41)(v61, v57);
      goto LABEL_56;
    case 7u:
      v72 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v72, v27);
      v74 = *v27;
      v73 = v27[1];
      v75 = v133;
      if (swift_getEnumCaseMultiPayload() != 7)
      {

        goto LABEL_84;
      }

      v76 = *(v75 + 1);
      if (v73)
      {
        if (v76)
        {
          if (v74 == *v75 && v73 == v76)
          {
          }

          else
          {
            v78 = sub_21700F7D4();

            if ((v78 & 1) == 0)
            {
              goto LABEL_98;
            }
          }

LABEL_74:
          OUTLINED_FUNCTION_0_186();
          v104 = v32;
LABEL_75:
          sub_216BAE5AC(v104, v103);
          v53 = 1;
          return v53 & 1;
        }
      }

      else if (!v76)
      {
        goto LABEL_74;
      }

LABEL_98:
      OUTLINED_FUNCTION_0_186();
      v92 = v32;
      goto LABEL_105;
    case 8u:
      v99 = OUTLINED_FUNCTION_9_74();
      v100 = v125;
      sub_21691775C(v99, v125);
      if (OUTLINED_FUNCTION_8_81() != 8)
      {
        goto LABEL_84;
      }

      v101 = *v100 ^ *v41;
      OUTLINED_FUNCTION_0_186();
      sub_216BAE5AC(v32, v102);
      v53 = v101 ^ 1;
      return v53 & 1;
    case 9u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 9;
      goto LABEL_72;
    case 0xAu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 10;
      goto LABEL_72;
    case 0xBu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 11;
      goto LABEL_72;
    case 0xCu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 12;
      goto LABEL_72;
    case 0xDu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 13;
      goto LABEL_72;
    case 0xEu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 14;
      goto LABEL_72;
    case 0xFu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 15;
      goto LABEL_72;
    case 0x10u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 16;
      goto LABEL_72;
    case 0x11u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 17;
      goto LABEL_72;
    case 0x12u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 18;
      goto LABEL_72;
    case 0x13u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 19;
      goto LABEL_72;
    case 0x14u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 20;
      goto LABEL_72;
    case 0x15u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 21;
      goto LABEL_72;
    case 0x16u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 22;
      goto LABEL_72;
    case 0x17u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 23;
      goto LABEL_72;
    case 0x18u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 24;
      goto LABEL_72;
    case 0x19u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 25;
      goto LABEL_72;
    case 0x1Au:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 26;
      goto LABEL_72;
    case 0x1Bu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 27;
      goto LABEL_72;
    case 0x1Cu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 28;
      goto LABEL_72;
    case 0x1Du:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 29;
      goto LABEL_72;
    case 0x1Eu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 30;
      goto LABEL_72;
    case 0x1Fu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 31;
      goto LABEL_72;
    case 0x20u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 32;
      goto LABEL_72;
    case 0x21u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 33;
      goto LABEL_72;
    case 0x22u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 34;
      goto LABEL_72;
    case 0x23u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 35;
      goto LABEL_72;
    case 0x24u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 36;
      goto LABEL_72;
    case 0x25u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 37;
      goto LABEL_72;
    case 0x26u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 38;
      goto LABEL_72;
    case 0x27u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 39;
      goto LABEL_72;
    case 0x28u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 40;
      goto LABEL_72;
    case 0x29u:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 41;
      goto LABEL_72;
    case 0x2Au:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 42;
      goto LABEL_72;
    case 0x2Bu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 43;
      goto LABEL_72;
    case 0x2Cu:
      OUTLINED_FUNCTION_4_104();
      v55 = swift_getEnumCaseMultiPayload() == 44;
LABEL_72:
      v32 = v134;
      if (!v55)
      {
        goto LABEL_84;
      }

      goto LABEL_74;
    default:
      v54 = OUTLINED_FUNCTION_9_74();
      sub_21691775C(v54, v45);
      if (!OUTLINED_FUNCTION_8_81())
      {
        v109 = v120;
        sub_2168D2070(v41, v120);
        static ShareableMusicItem.== infix(_:_:)(v45, v109, v110, v111, v112, v113, v114, v115, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
        v53 = v116;
        sub_216BAE5AC(v109, type metadata accessor for ShareableMusicItem);
        sub_216BAE5AC(v45, type metadata accessor for ShareableMusicItem);
LABEL_56:
        OUTLINED_FUNCTION_0_186();
        sub_216BAE5AC(v32, v98);
        return v53 & 1;
      }

      sub_216BAE5AC(v45, type metadata accessor for ShareableMusicItem);
LABEL_84:
      sub_216BAE544(v32);
      goto LABEL_85;
  }
}

uint64_t sub_216BADF14()
{
  type metadata accessor for MenuActionType();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_91(v2);
  v3 = OUTLINED_FUNCTION_17_51();
  result = 0;
  switch(v3)
  {
    case 1:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      return result;
    case 2:
    case 3:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      return 5;
    case 4:
    case 5:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      goto LABEL_2;
    case 6:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      goto LABEL_10;
    case 7:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      goto LABEL_12;
    case 8:
    case 42:
    case 43:
    case 44:
      return 3;
    case 14:
    case 15:
      return 2;
    case 16:
      return 5;
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
LABEL_2:
      result = 14;
      break;
    case 28:
    case 29:
    case 30:
    case 31:
LABEL_10:
      result = 7;
      break;
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
LABEL_12:
      result = 4;
      break;
    case 37:
    case 38:
    case 39:
    case 40:
      result = 9;
      break;
    case 41:
      result = 10;
      break;
    default:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_216BAE074()
{
  type metadata accessor for MenuActionType();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_91(v2);
  v3 = OUTLINED_FUNCTION_17_51();
  result = 101;
  switch(v3)
  {
    case 1:
      result = 106;
      break;
    case 2:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 301;
      break;
    case 3:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 302;
      break;
    case 4:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 401;
      break;
    case 5:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 407;
      break;
    case 6:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 504;
      break;
    case 7:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 601;
      break;
    case 8:
      result = 904;
      break;
    case 9:
      return result;
    case 10:
      result = 102;
      break;
    case 11:
      result = 103;
      break;
    case 12:
      result = 104;
      break;
    case 13:
      result = 107;
      break;
    case 14:
      result = 201;
      break;
    case 15:
      result = 202;
      break;
    case 16:
      result = 303;
      break;
    case 17:
      result = 402;
      break;
    case 18:
      result = 403;
      break;
    case 19:
      result = 404;
      break;
    case 20:
      result = 405;
      break;
    case 21:
      result = 406;
      break;
    case 22:
      result = 408;
      break;
    case 23:
      result = 409;
      break;
    case 24:
      result = 410;
      break;
    case 25:
      result = 411;
      break;
    case 26:
      result = 412;
      break;
    case 27:
      result = 413;
      break;
    case 28:
      result = 501;
      break;
    case 29:
      result = 502;
      break;
    case 30:
      result = 503;
      break;
    case 31:
      result = 505;
      break;
    case 32:
      result = 602;
      break;
    case 33:
      result = 603;
      break;
    case 34:
      result = 605;
      break;
    case 35:
      result = 604;
      break;
    case 36:
      result = 606;
      break;
    case 37:
      result = 701;
      break;
    case 38:
      result = 702;
      break;
    case 39:
      result = 703;
      break;
    case 40:
      result = 704;
      break;
    case 41:
      result = 801;
      break;
    case 42:
      result = 903;
      break;
    case 43:
      result = 902;
      break;
    case 44:
      result = 901;
      break;
    default:
      sub_216BAE5AC(v0, type metadata accessor for MenuActionType);
      result = 105;
      break;
  }

  return result;
}

uint64_t sub_216BAE324@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MenuActionType();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v5 = v4 - v3;
  v6 = OUTLINED_FUNCTION_227();
  sub_21691775C(v6, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 42 || EnumCaseMultiPayload == 8)
  {
    sub_217007ED4();
    v10 = sub_217007F04();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
  }

  else
  {
    v11 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
    OUTLINED_FUNCTION_0_186();
    return sub_216BAE5AC(v5, v12);
  }
}

uint64_t sub_216BAE400(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 3) >= 0x15)
  {
    if (sub_21688D2E4(v1, 1))
    {
      v2 = 310;
    }

    else
    {
      v2 = 300;
    }
  }

  else
  {
    v2 = word_21704EE82[(v1 - 3)];
  }

  return sub_216983738(v2);
}

uint64_t sub_216BAE460()
{
  type metadata accessor for MenuActionType();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_91(v2);
  v3 = OUTLINED_FUNCTION_17_51();
  if (v3 != 9 && v3 != 12)
  {
    v4 = sub_216BACA44();
    sub_216E1A4E0(v4, v5);

    OUTLINED_FUNCTION_0_186();
    sub_216BAE5AC(v0, v6);
  }

  return OUTLINED_FUNCTION_227();
}

uint64_t sub_216BAE544(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216BAE5AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BAE65C()
{
  sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v72 = v1;
  v73 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_7();
  v70 = v3 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v79 = v5;
  v80 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  v78 = v7;
  OUTLINED_FUNCTION_4_1();
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v76 = v9;
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v75 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  v84 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v83 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  v81 = v17;
  v18 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v18);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v22 = (v21 - v20);
  v71 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v69 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7();
  v68 = v26 - v25;
  v27 = OUTLINED_FUNCTION_4_1();
  v28 = type metadata accessor for FlowAction(v27);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  v32 = v31 - v30;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v74 = v33;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_105();
  v36 = v35;
  OUTLINED_FUNCTION_4_1();
  v37 = type metadata accessor for SocialFollowRequestsPageIntent();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7();
  v41 = v40 - v39;
  OUTLINED_FUNCTION_4_1();
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v42 = v85;
  if (*(v85 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded) == 1)
  {
    v43 = type metadata accessor for ReferrerInfo();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
    v67 = v36;
    sub_21700E094();
    sub_21700D234();
    v22[3] = v37;
    v22[4] = sub_216BAEE8C(&qword_27CAC4AE8, type metadata accessor for SocialFollowRequestsPageIntent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    sub_216BAEED4(v41, boxed_opaque_existential_1, type metadata accessor for SocialFollowRequestsPageIntent);
    swift_storeEnumTagMultiPayload();
    sub_217005EF4();
    v85 = 0u;
    v86 = 0u;
    v87 = 0;
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    type metadata accessor for Page.Header(0);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v43);
    v59 = v32 + v28[10];
    *(v59 + 32) = 0;
    *v59 = 0u;
    *(v59 + 16) = 0u;
    (*(v69 + 16))(v32, v68, v71);
    sub_216BAEED4(v22, v32 + v28[5], type metadata accessor for FlowAction.Destination);
    sub_217006214();
    v60 = sub_2170061F4();
    v62 = v61;
    (*(v76 + 8))(v75, v77);
    (*(v69 + 8))(v68, v71);
    sub_216BAEF34(v22, type metadata accessor for FlowAction.Destination);
    v63 = (v32 + v28[6]);
    *v63 = v60;
    v63[1] = v62;
    *(v32 + v28[7]) = 0;
    sub_2167A66B4(&v85, v59);
    sub_2167A6724(v81, v32 + v28[8], &qword_27CABA820);
    sub_2167A6724(v83, v32 + v28[11], &qword_27CAB6BF0);
    sub_2167A6724(v84, v32 + v28[9], &qword_27CAB6FD0);
    *(&v86 + 1) = v28;
    v87 = sub_216BAEE8C(qword_280E45BB8, type metadata accessor for FlowAction);
    v64 = __swift_allocate_boxed_opaque_existential_1(&v85);
    sub_216BAEED4(v32, v64, type metadata accessor for FlowAction);
    (*(v79 + 104))(v78, *MEMORY[0x277D21E18], v80);
    v65 = sub_21700D5E4();

    (*(v79 + 8))(v78, v80);
    sub_216BAEF34(v32, type metadata accessor for FlowAction);
    (*(v74 + 8))(v67, v82);
    sub_216BAEF34(v41, type metadata accessor for SocialFollowRequestsPageIntent);
    __swift_destroy_boxed_opaque_existential_1Tm(&v85);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
    (*(v72 + 104))(v70, *MEMORY[0x277D21CA0], v73);
    v65 = sub_21700E1F4();
  }

  return v65;
}

uint64_t sub_216BAEE8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216BAEED4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216BAEF34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BAEF8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_216BAEFCC(uint64_t result, int a2, int a3)
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

id sub_216BAF070(void *a1)
{
  sub_216BAF374(v1, v10);
  sub_2166A0F18(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4AF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B00);
  if (swift_dynamicCast())
  {
    sub_2166A0F18(v7, v11);
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v3 = sub_21700DCD4();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_216BAF3E4(v7);
    result = [objc_opt_self() valueWithNewObjectInContext_];
    v3 = result;
    if (!result)
    {
      goto LABEL_9;
    }
  }

  v5 = *(v1 + 40);
  if (!v5)
  {
    return v3;
  }

  sub_2166F1DCC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
  v11[0] = v5;
  v6 = a1;
  sub_21700DF14();
  result = sub_2166F1E10(v11, a1);
  if (result)
  {
    sub_21700F0B4();
    return v3;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_216BAF254(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216BAF29C(uint64_t a1)
{
  *(a1 + 8) = sub_216BAF2CC();
  result = sub_216BAF320();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_216BAF2CC()
{
  result = qword_280E3D120;
  if (!qword_280E3D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3D120);
  }

  return result;
}

unint64_t sub_216BAF320()
{
  result = qword_27CAC4AF0;
  if (!qword_27CAC4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4AF0);
  }

  return result;
}

uint64_t sub_216BAF374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBB28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BAF3E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216BAF44C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216BAF46C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_216BAF4A8()
{
  sub_2170085B4();
  sub_216BB0970(&qword_27CABE790);
  sub_21700EC54();
  sub_21700EC94();
  result = v2;
  if (v1 < v2)
  {
    __break(1u);
  }

  return result;
}

double sub_216BAF534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2170085B4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  (*(v9 + 16))(v8 - v7, a5);
  sub_216BAF634();
  v11 = v10;

  return v11;
}

void sub_216BAF634()
{
  OUTLINED_FUNCTION_19_41();
  v158 = v0;
  v166 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v4;
  v144 = sub_217008274();
  OUTLINED_FUNCTION_1();
  v165 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  v143 = &v135 - v10;
  v153 = sub_2170084B4();
  OUTLINED_FUNCTION_1();
  v164 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  v149 = &v135 - v17;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B18);
  MEMORY[0x28223BE20](v148);
  v147 = &v135 - v18;
  v19 = sub_2170085B4();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7();
  v25 = v24 - v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B20);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v135 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B28);
  MEMORY[0x28223BE20](v30);
  v32 = (&v135 - v31);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v33 = 1.79769313e308;
  }

  else
  {
    v33 = v5;
  }

  v169 = MEMORY[0x277D84F90];
  v34 = sub_216BAF4A8();
  v35 = *(v27 + 60);
  v37 = v36;
  v38 = *(v21 + 16);
  v161 = v3;
  v38(&v29[v35], v3, v19);
  *v32 = v34;
  v32[1] = v37;
  v32[2] = v34;
  v137 = v21;
  (*(v21 + 32))(v25, &v29[v35], v19);
  v136 = v30;
  v39 = *(v30 + 52);
  v152 = v32;
  v40 = v32 + v39;
  sub_216BB0970(&qword_27CABE788);
  v163 = v40;
  sub_21700E754();
  swift_beginAccess();
  v41 = 0;
  v146 = (v164 + 16);
  v145 = (v164 + 32);
  v156 = v166;
  v42 = v153;
  v155 = (v164 + 8);
  v142 = (v165 + 8);
  v159 = 0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = MEMORY[0x277D84F90];
  v166 = MEMORY[0x277D84F90];
  v151 = v34;
  v46 = v34;
  v154 = v19;
  v160 = v37;
  while (1)
  {
    if (v37 == v46)
    {
LABEL_60:
      v134 = v152;
      *(v152 + *(v136 + 56)) = 1;
      (*(v137 + 8))(v161, v19);
      sub_216BB09B4(v134);

      OUTLINED_FUNCTION_20_43();
      return;
    }

    if (v37 < v151)
    {
      break;
    }

    if (v46 >= v37)
    {
      goto LABEL_62;
    }

    v157 = v46 + 1;
    v152[2] = (v46 + 1);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE780) + 36);
    sub_216BB0970(&qword_27CABE790);
    v48 = v163;
    sub_21700EC94();
    if (*&v48[v47] == v168)
    {
      goto LABEL_60;
    }

    v164 = v45;
    v49 = sub_21700ECE4();
    v50 = v150;
    (*v146)(v150);
    v49(&v168, 0);
    sub_21700ECA4();
    v165 = v46;
    v51 = *v145;
    v52 = v149;
    (*v145)(v149, v50, v42);
    v53 = *(v148 + 48);
    v54 = v147;
    v51(&v147[v53], v52, v42);
    v51(v162, &v54[v53], v42);
    v55 = v165;
    sub_217008B04();
    LOBYTE(v168) = v56 & 1;
    v167 = v57 & 1;
    sub_217008484();
    v59 = v58;
    v61 = v60;
    if (v55)
    {
      v37 = v160;
      v45 = v164;
      if (v41 < 1)
      {
        if (v33 >= v58)
        {
LABEL_34:
          v80 = 0.0;
LABEL_36:
          v77 = v59 + v80;
          goto LABEL_37;
        }

LABEL_21:
        if (__OFSUB__(v55, 1))
        {
          goto LABEL_68;
        }

        if (__OFSUB__(v41, 1))
        {
          goto LABEL_69;
        }

        v85 = (v55 - 1) & ~((v55 - 1) >> 63);
        v86 = (v41 - 1) & ~((v41 - 1) >> 63);
        v87 = v85 - v86;
        v19 = v85 + 1;
        if (v85 + 1 < v85 - v86)
        {
          goto LABEL_70;
        }

        sub_21700DF14();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_29_0();
          sub_2169391D4();
          v166 = v132;
        }

        v89 = *(*&v166 + 16);
        v88 = *(*&v166 + 24);
        v90 = v89 + 1;
        if (v89 >= v88 >> 1)
        {
          OUTLINED_FUNCTION_10_22(v88);
          sub_2169391D4();
          v166 = v133;
        }

        v91 = OUTLINED_FUNCTION_16_52();
        v94 = v93 + v89 * v92;
        *(v94 + 32) = v87;
        *(v94 + 40) = v19;
        OUTLINED_FUNCTION_5_92(v94, v91);
        v96 = *(v95 - 256);
        OUTLINED_FUNCTION_12_59();
        if (v97)
        {
          OUTLINED_FUNCTION_15_54();
          sub_217008264();
          sub_217008264();
          sub_217008254();
          v96 = v98;
          v99 = OUTLINED_FUNCTION_10_72();
          v100 = v144;
          (v37)(v99, v144);
          v101 = OUTLINED_FUNCTION_3_120();
          (v37)(v101, v100);
          v90 = *(*&v166 + 16);
        }

        v80 = 0.0;
        if (v90 <= 1)
        {
          v102 = 0.0;
        }

        else
        {
          v102 = v96;
        }

        OUTLINED_FUNCTION_8_82(v102);
        v43 = v43 + v44 + v96;
        v45 = MEMORY[0x277D84F90];
        v169 = MEMORY[0x277D84F90];

        v41 = 0;
        v77 = v59 + 0.0;
        v44 = 0.0;
        v33 = v5;
        OUTLINED_FUNCTION_11_67();
        goto LABEL_37;
      }

      v62 = v156;
      OUTLINED_FUNCTION_12_59();
      if (v63)
      {
        if (__OFSUB__(v55, 1))
        {
          goto LABEL_72;
        }

        v64 = v141;
        sub_2170085C4();
        OUTLINED_FUNCTION_15_54();
        sub_2170084A4();
        v65 = *v155;
        (*v155)(v64, v42);
        OUTLINED_FUNCTION_13_56();
        v55 = v165;
        sub_2170085C4();
        sub_2170084A4();
        OUTLINED_FUNCTION_11_67();
        v65();
        sub_217008254();
        v62 = v66;
        v67 = OUTLINED_FUNCTION_10_72();
        v45 = v164;
        v68 = v144;
        (v37)(v67, v144);
        v69 = OUTLINED_FUNCTION_3_120();
        (v37)(v69, v68);
      }

      if (v33 < v59 + v62)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v37 = v160;
      v45 = v164;
      if (v41 < 1)
      {
        goto LABEL_34;
      }
    }

    OUTLINED_FUNCTION_12_59();
    if ((v70 & 1) == 0)
    {
      v80 = v156;
      goto LABEL_36;
    }

    if (__OFSUB__(v55, 1))
    {
      goto LABEL_71;
    }

    v140 = v55 - 1;
    sub_2170085C4();
    v71 = v143;
    sub_2170084A4();
    v72 = *v155;
    OUTLINED_FUNCTION_14_55();
    v72();
    v138 = v72;
    OUTLINED_FUNCTION_13_56();
    sub_2170085C4();
    OUTLINED_FUNCTION_15_54();
    sub_2170084A4();
    OUTLINED_FUNCTION_14_55();
    v72();
    sub_217008254();
    v74 = v73;
    v75 = *v142;
    v139 = v75;
    v76 = v144;
    v75(v37, v144);
    v75(v71, v76);
    v77 = v59 + v74;
    sub_2170085C4();
    sub_2170084A4();
    OUTLINED_FUNCTION_14_55();
    v78 = v138;
    v138();
    sub_2170085C4();
    sub_2170084A4();
    OUTLINED_FUNCTION_11_67();
    OUTLINED_FUNCTION_14_55();
    v78();
    v55 = v165;
    sub_217008254();
    v80 = v79;
    v81 = OUTLINED_FUNCTION_3_120();
    v82 = v139;
    v139(v81, v76);
    v83 = v71;
    v42 = v153;
    v84 = v76;
    v45 = v164;
    v82(v83, v84);
LABEL_37:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_29_0();
      sub_216939108();
      v45 = v128;
    }

    v104 = *(v45 + 16);
    v103 = *(v45 + 24);
    if (v104 >= v103 >> 1)
    {
      OUTLINED_FUNCTION_10_22(v103);
      sub_216939108();
      v45 = v129;
    }

    *(v45 + 16) = v104 + 1;
    *(v45 + 8 * v104 + 32) = v80 + v5 - v33;
    v169 = v45;
    if (v44 <= v61)
    {
      v44 = v61;
    }

    if (__OFADD__(v41++, 1))
    {
      goto LABEL_63;
    }

    sub_21700EC54();
    sub_21700EC94();
    v106 = sub_21700EC84();
    if (__OFSUB__(v106, 1))
    {
      goto LABEL_64;
    }

    v33 = v33 - v77;
    if (v55 == (v106 - 1))
    {
      if (__OFSUB__(v41, 1))
      {
        goto LABEL_65;
      }

      v107 = (v41 - 1) & ~((v41 - 1) >> 63);
      v108 = &v55[-v107];
      if (__OFSUB__(v55, v107))
      {
        goto LABEL_66;
      }

      v109 = v157;
      if (v157 < v108)
      {
        goto LABEL_67;
      }

      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        sub_2169391D4();
        v166 = v130;
      }

      v19 = *(*&v166 + 16);
      v110 = *(*&v166 + 24);
      if (v19 >= v110 >> 1)
      {
        OUTLINED_FUNCTION_10_22(v110);
        sub_2169391D4();
        v166 = v131;
      }

      v111 = OUTLINED_FUNCTION_16_52();
      v114 = v113 + v19 * v112;
      *(v114 + 32) = v108;
      *(v114 + 40) = v109;
      OUTLINED_FUNCTION_5_92(v114, v111);
      v116 = *(v115 - 256);
      OUTLINED_FUNCTION_12_59();
      if (v117)
      {
        v118 = v143;
        sub_217008264();
        OUTLINED_FUNCTION_15_54();
        sub_217008264();
        sub_217008254();
        v116 = v119;
        v120 = *v142;
        v121 = OUTLINED_FUNCTION_3_120();
        v122 = v144;
        v120(v121, v144);
        v120(v118, v122);
      }

      v123 = OUTLINED_FUNCTION_6_81();
      v124(v123);
      v125 = 0.0;
      if (*(*&v166 + 16) > 1uLL)
      {
        v125 = v116;
      }

      OUTLINED_FUNCTION_8_82(v125);
      v43 = v43 + v44 + v116;
      v45 = MEMORY[0x277D84F90];
      v169 = MEMORY[0x277D84F90];

      v41 = 0;
      v44 = 0.0;
      v33 = v5;
      OUTLINED_FUNCTION_11_67();
    }

    else
    {
      v126 = OUTLINED_FUNCTION_6_81();
      v127(v126);
    }

    v46 = v55 + 1;
  }

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
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void sub_216BB03AC()
{
  OUTLINED_FUNCTION_19_41();
  v1 = v0;
  v36.size.width = v2;
  v36.size.height = v3;
  v36.origin.x = v4;
  v36.origin.y = v5;
  v35 = sub_2170084B4();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  sub_2170085B4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  (*(v15 + 16))(v14 - v13, v1);
  sub_216BAF634();
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = 0;
    v32 = v16 + 32;
    v20 = (v7 + 8);
    v31 = v16;
    v30 = *(v16 + 16);
    while (v19 < *(v17 + 16))
    {
      v33 = v19;
      v21 = (v32 + 56 * v19);
      v23 = *v21;
      v22 = *(v21 + 1);
      v25 = v21[5];
      v24 = v21[6];
      v27 = v21[3];
      v26 = v21[4];
      v34 = *(v21 + 2);
      sub_21700DF14();
      CGRectGetWidth(v36);
      v37.origin.x = OUTLINED_FUNCTION_17_52();
      CGRectGetWidth(v37);
      sub_2170093C4();
      if (sub_217009174())
      {
        if (*&v23 != v22)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_2170093D4();
        if (sub_217009174())
        {
          if (*&v23 != v22)
          {
            goto LABEL_12;
          }
        }

        else if (*&v23 != v22)
        {
LABEL_12:
          if (v22 < *&v23)
          {
            goto LABEL_26;
          }

          if (*&v23 >= v22)
          {
            goto LABEL_27;
          }

          v28 = v23;
          while (1)
          {
            v38.origin.x = OUTLINED_FUNCTION_17_52();
            CGRectGetMinX(v38);
            if (__OFSUB__(*&v28, *&v23))
            {
              break;
            }

            if (*&v28 - *&v23 >= *(v34 + 16))
            {
              goto LABEL_24;
            }

            CGRectGetMinX(v36);
            v39.origin.x = v27;
            v39.origin.y = v26;
            v39.size.width = v25;
            v39.size.height = v24;
            CGRectGetHeight(v39);
            sub_2170085C4();
            sub_217008B04();
            sub_217008484();
            v29 = *v20;
            (*v20)(v11, v35);
            sub_217009184();
            if ((sub_217009174() & 1) == 0)
            {
              sub_217009194();
              sub_217009174();
            }

            v40.origin.x = v27;
            v40.origin.y = v26;
            v40.size.width = v25;
            v40.size.height = v24;
            CGRectGetMinY(v40);
            CGRectGetMinY(v36);
            sub_2170085C4();
            sub_21700B534();
            sub_217008B04();
            sub_217008494();
            v29(v11, v35);
            if (v22 == ++*&v28)
            {

              v17 = v31;
              v18 = v30;
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
          break;
        }
      }

LABEL_21:
      v19 = v33 + 1;
      if (v33 + 1 == v18)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_22:

    OUTLINED_FUNCTION_20_43();
  }
}

void (*sub_216BB08A4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_2167CA09C;
}

unint64_t sub_216BB091C()
{
  result = qword_27CAC4B10;
  if (!qword_27CAC4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4B10);
  }

  return result;
}

uint64_t sub_216BB0970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2170085B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_216BB09B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216BB0A28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_216BB0A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216BB0AC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_3_121();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph();

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI25DislikeMenuActionProvider_actionDispatcher, v8, v2);
  return v1;
}

uint64_t sub_216BB0C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B40);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006824();
  v30 = sub_21700C1E4();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 1702125928;
    *(&v123 + 1) = 0xE400000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820);
    v74 = MEMORY[0x277D2B180];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 0;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction();
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB1A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B40);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006824();
  v30 = sub_21700C384();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 1702125928;
    *(&v123 + 1) = 0xE400000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820);
    v74 = MEMORY[0x277D2B1D8];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 0;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction();
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB2820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B40);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006824();
  v30 = sub_21700BA44();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 1702125928;
    *(&v123 + 1) = 0xE400000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820);
    v74 = MEMORY[0x277D2AE68];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 0;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction();
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB3630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B40);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006824();
  v30 = sub_21700C924();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 1702125928;
    *(&v123 + 1) = 0xE400000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820);
    v74 = MEMORY[0x277D2B2A8];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 0;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction();
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB4440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BB64();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B40);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006824();
  v30 = sub_21700C084();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 1702125928;
    *(&v123 + 1) = 0xE400000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820);
    v74 = MEMORY[0x277D2B158];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 0;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction();
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA118;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB5250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BC74();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B30);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067B4();
  v30 = sub_21700C1E4();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 0x657461686E75;
    *(&v123 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820);
    v74 = MEMORY[0x277D2B180];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 1;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction();
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB606C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BC74();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B30);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067B4();
  v30 = sub_21700C384();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 0x657461686E75;
    *(&v123 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820);
    v74 = MEMORY[0x277D2B1D8];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 1;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction();
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB6E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BC74();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B30);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067B4();
  v30 = sub_21700BA44();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 0x657461686E75;
    *(&v123 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820);
    v74 = MEMORY[0x277D2AE68];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 1;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction();
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB7CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BC74();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B30);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067B4();
  v30 = sub_21700C924();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 0x657461686E75;
    *(&v123 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820);
    v74 = MEMORY[0x277D2B2A8];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 1;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction();
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB8AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v114 = a2;
  v119 = a7;
  v117 = sub_2170075A4();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = v8;
  v115 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DislikeAction();
  v110 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v112 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v9;
  MEMORY[0x28223BE20](v10);
  v101 = &v87 - v11;
  v108 = sub_21700CFB4();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_217005EF4();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_21700D704();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v100 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v87 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v87 - v20;
  v103 = sub_21700D284();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21700BC74();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4B30);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - v28;
  sub_21700BE44();
  sub_21700BE34();
  sub_2170067B4();
  v30 = sub_21700C084();
  sub_21700BC04();

  (*(v23 + 8))(v25, v22);
  v31 = (*(v27 + 88))(v29, v26);
  LODWORD(v22) = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v29, v26);
  if (v31 == v22)
  {
    v88 = a1;
    v32 = sub_21700B934();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v36 = (v93 + *(type metadata accessor for MenuConfiguration(0) + 36));
    v37 = v36[1];
    v38 = MEMORY[0x277D837D0];
    *(inited + 48) = *v36;
    *(inited + 56) = v37;
    *(inited + 72) = v38;
    *(inited + 80) = 1684957547;
    v39 = 0xE400000000000000;
    *(inited + 120) = v38;
    v40 = v94;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v40;
    *(inited + 104) = v95;
    sub_21700DF14();
    sub_21700DF14();
    v41 = sub_21700E384();
    v42 = v120;
    v43 = v96;
    __swift_storeEnumTagSinglePayload(v120, 1, 1, v96);
    v44 = v92;
    sub_21700D6F4();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v123 = v41;
    sub_2166EF9C4(&v123, &v122);
    v45 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v45;
    sub_2166EF9D4();
    v46 = v121;
    v124 = v38;
    *&v123 = 0x657461686E75;
    *(&v123 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v46;
    sub_2166EF9D4();
    v47 = v121;
    v48 = 1701998445;
    v49 = v44;
    switch(v98)
    {
      case 1:
        v39 = 0xE500000000000000;
        v48 = 0x79726F7473;
        break;
      case 2:
        break;
      case 3:
        v39 = 0xE500000000000000;
        v48 = 0x636972796CLL;
        break;
      case 4:
        v48 = 0xD000000000000010;
        v39 = 0x80000002170801D0;
        break;
      case 5:
        v39 = 0x80000002170801F0;
        v48 = 0xD000000000000012;
        break;
      case 6:
        v39 = 0xE900000000000075;
        v48 = 0x6E654D6570697773;
        break;
      case 7:
        v39 = 0x8000000217080210;
        v48 = 0xD000000000000015;
        break;
      default:
        v39 = 0xE800000000000000;
        v48 = 0x6472616F6279656BLL;
        break;
    }

    v124 = v38;
    *&v123 = v48;
    *(&v123 + 1) = v39;
    sub_2166EF9C4(&v123, &v122);
    swift_isUniquelyReferenced_nonNull_native();
    v121 = v47;
    sub_2166EF9D4();
    v52 = v121;
    v53 = v97;
    sub_2167DE934(v42, v97);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v43);
    v89 = v30;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v53, &qword_27CABA820);
    }

    else
    {
      v55 = v34;
      v56 = v91;
      v57 = v32;
      v58 = v90;
      (*(v91 + 32))(v90, v53, v43);
      v59 = sub_217005DE4();
      v124 = v38;
      *&v123 = v59;
      *(&v123 + 1) = v60;
      sub_2166EF9C4(&v123, &v122);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v52;
      sub_2166EF9D4();
      v52 = v121;
      v61 = v58;
      v32 = v57;
      (*(v56 + 8))(v61, v43);
      v34 = v55;
    }

    v62 = v119;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v63 = sub_21700CF84();
    v64 = __swift_project_value_buffer(v63, qword_280E73DB0);
    v65 = v106;
    MEMORY[0x21CE9DD70](v32, v34, 0x6E6F74747562, 0xE600000000000000, v52, v64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v66 = v107;
    v67 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_217013DA0;
    v69 = v68 + v67;
    v70 = v108;
    (*(v66 + 16))(v69, v65, v108);
    v71 = v104;
    v72 = v105;
    (*(v104 + 16))(v100, v44, v105);
    v73 = v99;
    sub_21700D244();
    (*(v66 + 8))(v65, v70);
    (*(v71 + 8))(v49, v72);
    sub_216697664(v120, &qword_27CABA820);
    v74 = MEMORY[0x277D2B158];
    v75 = v101;
    v76 = v89;
    *(v101 + 3) = v89;
    *(v75 + 32) = v74;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(*(v76 - 8) + 16))(boxed_opaque_existential_1, v88, v76);
    *(v75 + 40) = 1;
    (*(v102 + 32))(v75 + *(v109 + 20), v73, v103);
    type metadata accessor for MenuActionType();
    swift_storeEnumTagMultiPayload();
    v78 = v112;
    sub_216BB9FF8(v75, v112);
    v79 = v116;
    v80 = v115;
    v81 = v117;
    (*(v116 + 16))(v115, v114, v117);
    v82 = (*(v110 + 80) + 24) & ~*(v110 + 80);
    v83 = (v111 + *(v79 + 80) + v82) & ~*(v79 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = v118;
    sub_216BB9FF8(v78, v84 + v82);
    (*(v79 + 32))(v84 + v83, v80, v81);
    v85 = type metadata accessor for MenuAction();
    v86 = (v62 + *(v85 + 20));
    *v86 = sub_216BBA1E0;
    v86[1] = v84;
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v85);
  }

  else
  {
    v50 = type metadata accessor for MenuAction();
    return __swift_storeEnumTagSinglePayload(v119, 1, 1, v50);
  }
}

uint64_t sub_216BB9918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  v19 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = OUTLINED_FUNCTION_2_126();
  a6(v11);
  v12 = sub_21678C1C4();
  sub_216697664(v10, &qword_27CAB6DF0);
  v13 = OUTLINED_FUNCTION_2_126();
  v19(v13);
  v14 = sub_21678C1C4();
  sub_216697664(v10, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  v16 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v16;
}

uint64_t sub_216BB9AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30[-v5];
  type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(type metadata accessor for MenuConfiguration(0) + 20);
  swift_storeEnumTagMultiPayload();
  sub_216B88F54(a3 + v10, v9);
  sub_2168CD6E4(v9);
  v11 = OUTLINED_FUNCTION_1_160();
  sub_216BB4440(v11, v12, v13, v14, v15, v16, v17);
  v18 = sub_21678C1C4();
  sub_216697664(v6, &qword_27CAB6DF0);
  v19 = OUTLINED_FUNCTION_1_160();
  sub_216BB8AC0(v19, v20, v21, v22, v23, v24, v25);
  v26 = sub_21678C1C4();
  sub_216697664(v6, &qword_27CAB6DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = v18;
  *(inited + 40) = v26;
  v28 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v28;
}

uint64_t sub_216BB9CB0(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for DislikeAction();
  v5[4] = sub_216BBA05C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_216BBA0B4(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_216BB9D5C()
{

  v1 = OBJC_IVAR____TtC7MusicUI25DislikeMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for DislikeMenuActionProvider()
{
  result = qword_280E359E8;
  if (!qword_280E359E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216BB9FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DislikeAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216BBA05C()
{
  result = qword_27CAC4B38;
  if (!qword_27CAC4B38)
  {
    type metadata accessor for DislikeAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4B38);
  }

  return result;
}

uint64_t sub_216BBA0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DislikeAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BBA11C()
{
  v1 = *(type metadata accessor for DislikeAction() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_2170075A4();
  return sub_216BB9CB0(*(v0 + 16), v0 + v2);
}

id sub_216BBA1E4()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700D4D4();
  sub_21700E094();
  *&v0[OBJC_IVAR____TtC7MusicUI31JSSubscriptionStatusCoordinator_subscriptionStatusCoordinator] = v5;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v4, sel_init);

  return v2;
}

uint64_t sub_216BBA2F4()
{
  swift_getObjectType();
  sub_216685F4C(0, &qword_280E29AF8);
  v0 = sub_21700F124();
  v1 = sub_21700F134();

  return v1;
}

char *sub_216BBA388(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21700E314();
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D904();
  v10 = MEMORY[0x21CE9E710]();
  if (v10)
  {
    v11 = v10;
    v12 = sub_21700F0A4();
    v13 = sub_21700F094();

    v14 = sub_216E3DC8C(v13 & 1);
    v15 = swift_allocObject();
    *(v15 + 2) = v14;
    *(v15 + 3) = v11;
    *(v15 + 4) = a4;
    v16 = a1;

    sub_21700E2F4();
    if (v4)
    {
    }

    else
    {
      v15 = sub_21700E304();

      (*(v19 + 8))(v9, v7);
    }
  }

  else
  {
    v15 = "iptionStatusCoordinator";
    sub_21700E0D4();
    sub_216973E30();
    swift_allocError();
    sub_21700E0A4();
    swift_willThrow();
  }

  return v15;
}

uint64_t sub_216BBA5E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v30 = a6;
  v25 = a3;
  v26 = a5;
  v28 = a1;
  v7 = sub_21700CCA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v8 + 16);
  v24(v11, a2, v7, v10);
  v12 = *(v8 + 80);
  v13 = (v12 + 24) & ~v12;
  v23 = v9 + 7;
  v14 = swift_allocObject();
  *(v14 + 16) = v28;
  v22 = *(v8 + 32);
  v22(v14 + v13, v11, v7);
  *(v14 + ((v9 + 7 + v13) & 0xFFFFFFFFFFFFFFF8)) = v30;
  (v24)(v11, v25, v7);
  v15 = (v12 + 16) & ~v12;
  v16 = (v23 + v15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v22(v17 + v15, v11, v7);
  v18 = v28;
  *(v17 + v16) = v28;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v29[3] = sub_21700D904();
  v29[4] = MEMORY[0x277D22078];
  v29[0] = v26;
  v19 = v18;

  sub_21700E1C4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

void sub_216BBA838(uint64_t a1, void *a2)
{
  v2 = sub_2166F3D44(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_217013DA0;
  *(v3 + 56) = sub_216685F4C(0, &qword_280E29B58);
  *(v3 + 32) = v2;
  v4 = v2;
  oslog = sub_21700CC94();
}

void sub_216BBAA74()
{
  v0 = sub_21700E0D4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB93C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013DA0;
  swift_getErrorValue();
  sub_21700F884();
  sub_21700E0A4();
  v5 = sub_21700E0C4();
  (*(v1 + 8))(v3, v0);
  *(v4 + 56) = sub_216685F4C(0, &qword_280E29B58);
  *(v4 + 32) = v5;
  v6 = sub_21700CC94();
}

uint64_t sub_216BBADE0()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC4B48);
  __swift_project_value_buffer(v0, qword_27CAC4B48);
  return sub_217007C94();
}

void sub_216BBAEC4(uint64_t a1)
{
  sub_21700CCA4();
  v3 = *(v1 + 16);

  sub_216BBA838(a1, v3);
}

void sub_216BBAF64()
{
  sub_21700CCA4();

  sub_216BBAA74();
}

uint64_t sub_216BBB00C()
{
  result = sub_21700E4D4();
  qword_27CAC4B68 = result;
  return result;
}

id static NSNotificationName.recentLibrarySearchesDidChange.getter()
{
  if (qword_27CAB5EC8 != -1)
  {
    swift_once();
  }

  v1 = qword_27CAC4B68;

  return v1;
}

uint64_t sub_216BBB12C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_216BBB180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v8[8] = a1;
  v8[15] = type metadata accessor for OpenAddToPlaylistAction();
  v8[16] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v8[17] = OUTLINED_FUNCTION_80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0);
  v8[18] = OUTLINED_FUNCTION_80();
  v9 = sub_217006924();
  v8[19] = v9;
  OUTLINED_FUNCTION_2(v9);
  v8[20] = v10;
  v8[21] = OUTLINED_FUNCTION_80();
  v11 = type metadata accessor for PlayActionItem();
  v8[22] = v11;
  OUTLINED_FUNCTION_2(v11);
  v8[23] = v12;
  v8[24] = OUTLINED_FUNCTION_80();
  v13 = type metadata accessor for PlayAction();
  v8[25] = v13;
  OUTLINED_FUNCTION_2(v13);
  v8[26] = v14;
  v8[27] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v8[28] = sub_21700EA24();
  v16 = sub_21700E9B4();
  v8[29] = v16;
  v8[30] = v15;

  return MEMORY[0x2822009F8](sub_216BBB390, v16, v15);
}

void sub_216BBB390()
{
  v1 = *(v0 + 72);
  v2 = *v1;
  v3 = v1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = sub_216EE9CCC(v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v0 + 208);
    v9 = *(v0 + 216);
    v10 = *(*(v0 + 200) + 20);
    v11 = v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v12 = *(v8 + 72);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v14 = *(v0 + 216);
      sub_216BBC520(v11, v14, type metadata accessor for PlayAction);
      v15 = *(v9 + v10);
      sub_21700DF14();
      sub_216BBC598(v14, type metadata accessor for PlayAction);
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_216937748();
          v13 = v17;
        }

        v16 = *(v13 + 16);
        if (v16 >= *(v13 + 24) >> 1)
        {
          sub_216937748();
          v13 = v18;
        }

        *(v13 + 16) = v16 + 1;
        *(v13 + 8 * v16 + 32) = v15;
      }

      v11 += v12;
      --v7;
    }

    while (v7);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v19 = 0;
  v20 = *(v0 + 184);
  v21 = *(v13 + 16);
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v21 == v19)
    {

      v33 = *(v22 + 16);
      if (!v33)
      {

        v35 = MEMORY[0x277D84F90];
LABEL_43:
        if (*(v35 + 16) && (v50 = *(v0 + 80), v51 = swift_task_alloc(), *(v51 + 16) = *(v0 + 104), *(v51 + 32) = v50, v53 = sub_216A95C5C(sub_216BBC4B4, v51, v35), , , *(v53 + 16)))
        {
          v55 = *(v0 + 120);
          v54 = *(v0 + 128);
          v56 = *(v0 + 72);
          v57 = *(type metadata accessor for AddItemsToPlaylistAction() + 20);
          v58 = *(v55 + 20);
          sub_21700D284();
          OUTLINED_FUNCTION_34();
          (*(v59 + 16))(v54 + v58, v56 + v57);
          *v54 = v53;
          *(v0 + 40) = v55;
          *(v0 + 48) = sub_216BBC4D8(&qword_27CABA7A8, type metadata accessor for OpenAddToPlaylistAction);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          sub_216BBC520(v54, boxed_opaque_existential_1, type metadata accessor for OpenAddToPlaylistAction);
          v61 = swift_task_alloc();
          *(v0 + 248) = v61;
          OUTLINED_FUNCTION_5_93();
          type metadata accessor for MapAddItemsToPlaylistActionImplementation();
          swift_getWitnessTable();
          *v61 = v0;
          v61[1] = sub_216BBBB40;

          sub_216B6DB60();
        }

        else
        {

          OUTLINED_FUNCTION_5_93();
          type metadata accessor for MapAddItemsToPlaylistActionImplementation.Error();
          OUTLINED_FUNCTION_1_161();
          OUTLINED_FUNCTION_4();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          OUTLINED_FUNCTION_3_122();

          OUTLINED_FUNCTION_3();

          v52();
        }

        return;
      }

      v64 = *(*(v0 + 176) + 24);
      v65 = *(v0 + 192);
      v34 = v22 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v62 = *(v0 + 160);
      v63 = (v62 + 32);
      v35 = MEMORY[0x277D84F90];
      v36 = *(v20 + 72);
      while (1)
      {
        v37 = *(v0 + 136);
        sub_216BBC520(v34, *(v0 + 192), type metadata accessor for PlayActionItem);
        sub_216919014(v65 + v64, v37);
        v38 = type metadata accessor for ContentDescriptor();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v38);
        v40 = *(v0 + 144);
        v41 = *(v0 + 152);
        v42 = *(v0 + 136);
        if (EnumTagSinglePayload == 1)
        {
          OUTLINED_FUNCTION_2_127();
          sub_216697664(v42, &qword_27CAB6A00);
          __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
        }

        else
        {
          sub_216C6C5E8(*(v0 + 144));
          OUTLINED_FUNCTION_2_127();
          sub_216BBC598(v42, type metadata accessor for ContentDescriptor);
          if (__swift_getEnumTagSinglePayload(v40, 1, v41) != 1)
          {
            v43 = *v63;
            (*v63)(*(v0 + 168), *(v0 + 144), *(v0 + 152));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2169375D4(0, *(v35 + 16) + 1, 1, v35);
              v35 = v48;
            }

            v45 = *(v35 + 16);
            v44 = *(v35 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_2169375D4(v44 > 1, v45 + 1, 1, v35);
              v35 = v49;
            }

            v46 = *(v0 + 168);
            v47 = *(v0 + 152);
            *(v35 + 16) = v45 + 1;
            v43(v35 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v45, v46, v47);
            goto LABEL_40;
          }
        }

        sub_216697664(*(v0 + 144), &unk_27CABF9C0);
LABEL_40:
        v34 += v36;
        if (!--v33)
        {

          goto LABEL_43;
        }
      }
    }

    if (v19 >= *(v13 + 16))
    {
      break;
    }

    v23 = *(v13 + 8 * v19 + 32);
    v24 = *(v23 + 16);
    v25 = *(v22 + 16);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_54;
    }

    sub_21700DF14();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v26 > *(v22 + 24) >> 1)
    {
      if (v25 <= v26)
      {
        v28 = v25 + v24;
      }

      else
      {
        v28 = v25;
      }

      sub_216937708(isUniquelyReferenced_nonNull_native, v28, 1, v22);
      v22 = v29;
    }

    if (*(v23 + 16))
    {
      if ((*(v22 + 24) >> 1) - *(v22 + 16) < v24)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v24)
      {
        v30 = *(v22 + 16);
        v31 = __OFADD__(v30, v24);
        v32 = v30 + v24;
        if (v31)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v32;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_55;
      }
    }

    ++v19;
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_216BBBB40()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_216BBBD0C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 16);
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_216BBBC5C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_216BBBC5C()
{
  OUTLINED_FUNCTION_3_122();

  OUTLINED_FUNCTION_0_187();
  sub_216BBC598(v0, v1);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_216BBBD0C()
{
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_0_187();
  sub_216BBC598(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_3_122();

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_216BBBDC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v25 = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_2170067A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  sub_217006A84();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_216697664(v6, &qword_27CAB7088);
    type metadata accessor for MapAddItemsToPlaylistActionImplementation.Error();
    swift_getWitnessTable();
    v14 = swift_allocError();
    v16 = v15;
    v17 = sub_217006924();
    (*(*(v17 - 8) + 16))(v16, a1, v17);
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
LABEL_3:
    *v25 = v14;
    return result;
  }

  (*(v8 + 32))(v13, v6, v7);
  v19 = *(v8 + 16);
  v19(v10, v13, v7);
  v20 = (*(v8 + 88))(v10, v7);
  if (v20 == *MEMORY[0x277D2A400])
  {
    (*(v8 + 8))(v13, v7);
    (*(v8 + 96))(v10, v7);
    v21 = sub_21700C1E4();
  }

  else if (v20 == *MEMORY[0x277D2A3B8])
  {
    (*(v8 + 8))(v13, v7);
    (*(v8 + 96))(v10, v7);
    v21 = sub_21700BA44();
  }

  else if (v20 == *MEMORY[0x277D2A440])
  {
    (*(v8 + 8))(v13, v7);
    (*(v8 + 96))(v10, v7);
    v21 = sub_21700C924();
  }

  else
  {
    if (v20 != *MEMORY[0x277D2A3F8])
    {
      type metadata accessor for MapAddItemsToPlaylistActionImplementation.Error();
      swift_getWitnessTable();
      v14 = swift_allocError();
      v19(v22, v13, v7);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v23 = *(v8 + 8);
      v23(v13, v7);
      result = (v23)(v10, v7);
      goto LABEL_3;
    }

    (*(v8 + 8))(v13, v7);
    (*(v8 + 96))(v10, v7);
    v21 = sub_21700C084();
  }

  (*(*(v21 - 8) + 32))(v24, v10);
  type metadata accessor for PlaylistAddableItem();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_216BBC2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  v15 = *(a6 + 16);
  v16 = *(a6 + 24);
  *v14 = v6;
  v14[1] = sub_2167AF644;

  return sub_216BBB180(a1, a2, a3, a4, a5, v13, v15, v16);
}

uint64_t sub_216BBC388(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BBC3C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BBC448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216BBC4D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216BBC520(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216BBC598(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216BBC5F0()
{
  result = sub_217006924();
  if (v1 <= 0x3F)
  {
    result = sub_2170067A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_216BBC694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = v5;
  Strong = swift_weakLoadStrong();
  if (!Strong || (v12 = Strong, , v12 != a1) || (v16 = swift_weakLoadStrong()) == 0 || (v17 = v16, , v17 != a2) || (v13 = swift_weakLoadStrong()) == 0)
  {
    sub_216E9C900(a1, a2);
    a5(v7);

    OUTLINED_FUNCTION_7_0();
    v13 = sub_216C0CD74();

    OUTLINED_FUNCTION_7_0();
    swift_weakAssign();
    swift_weakAssign();
    OUTLINED_FUNCTION_7_0();
    swift_weakAssign();
    OUTLINED_FUNCTION_7_0();
    *(v7 + *(v14 + 304) + 8) = a4;
    swift_unknownObjectWeakAssign();
  }

  return v13;
}

uint64_t sub_216BBC838(uint64_t a1)
{
  v2 = sub_21700DFD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v6 = type metadata accessor for ReplayIntent();
  v11[3] = v6;
  v11[4] = sub_216BBD6A0(&qword_27CAC4BF0, type metadata accessor for ReplayIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  *boxed_opaque_existential_1 = 0;
  *(boxed_opaque_existential_1 + 8) = 1;
  boxed_opaque_existential_1[2] = 0;
  *(boxed_opaque_existential_1 + 24) = 1;
  sub_216B19908(1, 0x2D796E612F31762FLL, 0xEE0079616C706572, boxed_opaque_existential_1 + *(v6 + 24));
  (*(v3 + 8))(v5, v2);
  v8 = sub_216CE06EC(v11, a1, 0, 0);
  sub_21669987C(v11, &qword_27CAC4BF8);
  return v8;
}

uint64_t sub_216BBCA20@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA758);
  sub_2166D9530(&qword_27CABA760, &qword_27CABA758);
  OUTLINED_FUNCTION_0_188();
  v2 = *(v1 + 8);
  if (v2)
  {
    type metadata accessor for AppDestinationPageProviderBox();
    type metadata accessor for ObjectGraph();

    sub_21700E094();
    v3 = sub_216BBC694(v2, v13, 0, 0, sub_216C521A4);

    sub_216BBCC50(v1, v3, a1);
    v4 = OUTLINED_FUNCTION_0_188();
    v5 = sub_217007D54();
    v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C00) + 36));
    *v6 = v5;
    v6[1] = v4;
    OUTLINED_FUNCTION_0_188();
    v7 = sub_217008684();
    v9 = v8;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C08);
    v11 = (a1 + *(result + 36));
    *v11 = v3;
    v11[1] = v7;
    v11[2] = v9;
  }

  else
  {
    type metadata accessor for MusicStackAuthority();
    sub_216BBD6A0(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216BBCC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v53 = a3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150);
  v45 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v44 = v39 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C10);
  MEMORY[0x28223BE20](v52);
  v47 = v39 - v5;
  v6 = type metadata accessor for MappedReplayModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = v39 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C18);
  MEMORY[0x28223BE20](v54);
  v11 = v39 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C20);
  MEMORY[0x28223BE20](v49);
  v13 = v39 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4C28);
  MEMORY[0x28223BE20](v55);
  v51 = v39 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v16 = v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE088);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (v39 - v18);
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA758);
  sub_2166D9530(&qword_27CABA760, &qword_27CABA758);
  v41 = v20;
  v40 = v21;
  v39[1] = v22;
  sub_2170081B4();
  v23 = type metadata accessor for ReplayModel(0);
  v59 = v23;
  v24 = sub_216BBD6A0(&qword_27CAB6FA0, type metadata accessor for ReplayModel);
  v60 = v24;
  swift_getKeyPath();
  v57 = v23;
  v58 = v24;
  swift_getKeyPath();
  sub_217007DE4();

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE0A0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v25) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v36 = v46;
      sub_216BBD6E8(v19, v46);
      sub_216BBD74C(v36, v42);
      sub_2170081B4();

      v37 = v47;
      sub_21687F49C();
      sub_216681B64(v37, v13, &qword_27CAC4C10);
      swift_storeEnumTagMultiPayload();
      sub_2166D9530(qword_280E48638, &qword_27CAB9140);
      sub_216BBD5EC();
      v38 = v51;
      sub_217009554();
      sub_216681B64(v38, v11, &qword_27CAC4C28);
      swift_storeEnumTagMultiPayload();
      sub_216BBD534();
      sub_2166D9530(&qword_280E48630, &qword_27CAB9150);
      sub_217009554();
      sub_21669987C(v38, &qword_27CAC4C28);
      sub_21669987C(v37, &qword_27CAC4C10);
      return sub_216BBD7B0(v36);
    }

    v27 = v56;
    if (EnumCaseMultiPayload == 1)
    {
      v28 = *v19;
      v29 = *v19;

      v30 = v44;
      sub_217007564();
      v31 = v45;
      (*(v45 + 16))(v11, v30, v27);
      swift_storeEnumTagMultiPayload();
      sub_216BBD534();
      sub_2166D9530(&qword_280E48630, &qword_27CAB9150);
      sub_217009554();

      return (*(v31 + 8))(v30, v27);
    }
  }

  sub_217007514();
  v33 = v48;
  v34 = v50;
  (*(v48 + 16))(v13, v16, v50);
  swift_storeEnumTagMultiPayload();
  sub_2166D9530(qword_280E48638, &qword_27CAB9140);
  sub_216BBD5EC();
  v35 = v51;
  sub_217009554();
  sub_216681B64(v35, v11, &qword_27CAC4C28);
  swift_storeEnumTagMultiPayload();
  sub_216BBD534();
  sub_2166D9530(&qword_280E48630, &qword_27CAB9150);
  sub_217009554();
  sub_21669987C(v35, &qword_27CAC4C28);
  return (*(v33 + 8))(v16, v34);
}

unint64_t sub_216BBD534()
{
  result = qword_27CAC4C30;
  if (!qword_27CAC4C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C28);
    sub_2166D9530(qword_280E48638, &qword_27CAB9140);
    sub_216BBD5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C30);
  }

  return result;
}

unint64_t sub_216BBD5EC()
{
  result = qword_27CAC4C38;
  if (!qword_27CAC4C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C10);
    sub_216BBD6A0(&qword_27CAC4C40, type metadata accessor for ReplaySwiftMusicContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C38);
  }

  return result;
}

uint64_t sub_216BBD6A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216BBD6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MappedReplayModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BBD74C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MappedReplayModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216BBD7B0(uint64_t a1)
{
  v2 = type metadata accessor for MappedReplayModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_216BBD80C()
{
  result = qword_27CAC4C48;
  if (!qword_27CAC4C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C08);
    sub_216BBD8C4();
    sub_2166D9530(&qword_27CAC4C88, &qword_27CAC4C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C48);
  }

  return result;
}

unint64_t sub_216BBD8C4()
{
  result = qword_27CAC4C50;
  if (!qword_27CAC4C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C00);
    sub_216BBD97C();
    sub_2166D9530(&qword_27CAC4C78, &qword_27CAC4C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C50);
  }

  return result;
}

unint64_t sub_216BBD97C()
{
  result = qword_27CAC4C58;
  if (!qword_27CAC4C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C60);
    sub_216BBDA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C58);
  }

  return result;
}

unint64_t sub_216BBDA00()
{
  result = qword_27CAC4C68;
  if (!qword_27CAC4C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC4C70);
    sub_216BBD534();
    sub_2166D9530(&qword_280E48630, &qword_27CAB9150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC4C68);
  }

  return result;
}

void sub_216BBDB00()
{
  sub_216BBDC14();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MenuContext(319);
    if (v1 <= 0x3F)
    {
      sub_2167B84AC();
      if (v2 <= 0x3F)
      {
        sub_216BC5268(319, &qword_280E2B4C0, MEMORY[0x277D7EC08]);
        if (v3 <= 0x3F)
        {
          sub_2169109EC(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_216BBDC14()
{
  if (!qword_280E458F0)
  {
    type metadata accessor for TrackLockup();
    sub_2166D3CEC(&qword_280E44FA0, type metadata accessor for TrackLockup);
    sub_2166D3CEC(&qword_280E44F88, type metadata accessor for TrackLockup);
    v0 = type metadata accessor for MappedItem();
    if (!v1)
    {
      atomic_store(v0, &qword_280E458F0);
    }
  }
}

__n128 sub_216BBDD0C@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v11 = *(v3 + 16);
  v12 = *v3;
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  if (a2)
  {
    v7 = [objc_opt_self() tertiaryLabelColor];
    v8 = sub_21700AC44();
  }

  else
  {
    v8 = a1;
  }

  v9 = *(v3 + 16);
  v15[0] = *v3;
  v15[1] = v9;
  v14 = v6;
  sub_216683A80(v15, v13, &qword_27CAB7668);

  sub_216683A80(&v14, v13, &qword_27CAC5010);
  result = v12;
  *a3 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v5;
  *(a3 + 40) = v6;
  *(a3 + 48) = v8;
  return result;
}

uint64_t sub_216BBDDE4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_8_1();
  v4 = type metadata accessor for TrackShelfLockupView(v3);
  v5 = (v1 + v4[6]);
  type metadata accessor for PlaybackPresenter();
  OUTLINED_FUNCTION_4_105();
  sub_2166D3CEC(v6, v7);
  OUTLINED_FUNCTION_2_101();
  *v5 = sub_217008CF4();
  v5[1] = v8;
  v9 = v4[7];
  *(v1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v10 = v1 + v4[8];
  *v10 = swift_getKeyPath();
  v10[40] = 0;
  *v1 = a1;
  type metadata accessor for MenuContext(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_216BBDEE4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v50 = v2;
  v3 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v48 = v4;
  MEMORY[0x28223BE20](v5);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TrackShelfLockupView(0);
  v8 = v7 - 8;
  v41 = *(v7 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4CF8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D00);
  OUTLINED_FUNCTION_1();
  v45 = v15;
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v44 = &v40 - v16;
  v17 = *v0;
  sub_2167B5BEC();
  v18 = *(v8 + 28);
  v19 = type metadata accessor for TrackShelfLockupContent(0);
  sub_216BC4DB0(v1 + v18, &v13[v19[6]], type metadata accessor for MenuContext);

  LOBYTE(v18) = sub_216BBE5AC();
  v20 = &v13[v19[8]];
  type metadata accessor for PlaybackPresenter();
  OUTLINED_FUNCTION_4_105();
  sub_2166D3CEC(v21, v22);
  *v20 = sub_217008CF4();
  v20[1] = v23;
  v24 = v19[9];
  *&v13[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  *(v13 + 5) = v17;
  v13[v19[7]] = v18 & 1;
  v49 = v3;
  v51[3] = v3;
  v51[4] = sub_2166D3CEC(&qword_280E4A480, MEMORY[0x277D2A460]);
  __swift_allocate_boxed_opaque_existential_1(v51);
  v43 = v17;
  sub_216CCB1E8();
  v25 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D08) + 36)];
  sub_2167B7D58(v51, (v25 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D3CEC(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  OUTLINED_FUNCTION_42_0();
  *v25 = sub_217008CF4();
  v25[1] = v26;
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  v27 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D10) + 36)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90);
  sub_217008C64();
  if (qword_27CAB5938 != -1)
  {
    swift_once();
  }

  v29 = sub_217008B34();
  v30 = __swift_project_value_buffer(v29, qword_27CB22830);
  v31 = sub_216BC4DB0(v30, v27, MEMORY[0x277CDFBC8]);
  v40 = &v40;
  *(v27 + *(v28 + 36)) = 0;
  *&v13[*(v42 + 36)] = xmmword_21704F620;
  MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v32);
  sub_216BC4DB0(v1, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrackShelfLockupView);
  v33 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v34 = swift_allocObject();
  sub_216BC50C4(v10, v34 + v33, type metadata accessor for TrackShelfLockupView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0);
  type metadata accessor for ContextMenuPreview(0);
  sub_216BC4E70();
  sub_21680DFBC(qword_280E2BAE8, &qword_27CAB8AA0);
  sub_2166D3CEC(qword_280E3F158, type metadata accessor for ContextMenuPreview);
  v35 = v44;
  sub_21700A394();

  sub_2167FDB84(v13, &qword_27CAC4CF8);
  v36 = v47;
  sub_216CCB1E8();
  v37 = v50;
  sub_216E30D08();
  (*(v48 + 8))(v36, v49);
  (*(v45 + 8))(v35, v46);
  KeyPath = swift_getKeyPath();
  v39 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D38) + 36);
  *v39 = KeyPath;
  *(v39 + 8) = 0;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216BBE5AC()
{
  v1 = sub_2170067A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for TrackShelfLockupView(0) + 24)))
  {

    sub_216CCB1E8();
    v5 = sub_216C6D880(v4);

    (*(v2 + 8))(v4, v1);
    return (v5 & 1) == 0;
  }

  else
  {
    type metadata accessor for PlaybackPresenter();
    sub_2166D3CEC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216BBE714@<X0>(void *a1@<X8>)
{
  v28 = a1;
  v26 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TrackLockup();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_216CCB1E8();
  sub_216DE90F8();
  swift_storeEnumTagMultiPayload();
  sub_2168A9598();
  sub_216BC5070(v2, type metadata accessor for MenuContext);
  sub_216BC5070(v5, type metadata accessor for TrackLockup);
  v18 = *(v12 + 32);
  v18(v14, v17, v11);
  v19 = v25;
  sub_216BC50C4(v10, v25, type metadata accessor for MenuConfiguration);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v18((v22 + v20), v14, v11);
  result = sub_216BC50C4(v19, v22 + v21, type metadata accessor for MenuConfiguration);
  v24 = v28;
  *v28 = sub_216BC5120;
  v24[1] = v22;
  return result;
}

uint64_t sub_216BBEA4C()
{
  v0 = type metadata accessor for TrackLockup();
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_2170067A4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_216CCB1E8();
  sub_216DE90F8();
  sub_216683A80(&v3[*(v1 + 32)], v9, &qword_27CAB6DB0);
  sub_216BC5070(v3, type metadata accessor for TrackLockup);
  return sub_2167BA710(v6, v9);
}

uint64_t sub_216BBEB74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v27 - v1;
  v28 = sub_2170075A4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TrackLockup();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE90F8();
  sub_216683A80(&v13[*(v11 + 32)], &v34, &qword_27CAB6DB0);
  sub_216BC5070(v13, type metadata accessor for TrackLockup);
  sub_216CCB1E8();
  type metadata accessor for TrackShelfLockupView(0);
  v14 = sub_216C0C534(&v29);
  sub_216C0C548(v14, v15, v16, v17, v18, v19, v20, v21, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  v22 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v22);
  sub_2167B9BDC(&v34, v9, &v29, v5, v2, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
  sub_2167FDB84(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v28);
  sub_2167FDB84(&v29, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_2167FDB84(&v34, &qword_27CAB6DB0);
}

uint64_t sub_216BBEEB8(uint64_t a1)
{
  result = sub_2166D3CEC(qword_280E3AE78, type metadata accessor for TrackShelfLockupView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BBEF10@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v63 = sub_217009314();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TrackLockup() - 8;
  MEMORY[0x28223BE20](v59);
  v58 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2170099D4();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D68);
  MEMORY[0x28223BE20](v51);
  v7 = &v47 - v6;
  v8 = type metadata accessor for TrackShelfLockupContent(0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D70);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v47 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D78);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D80);
  v19 = *(v18 - 8);
  v53 = v18;
  v54 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D88);
  MEMORY[0x28223BE20](v52);
  v50 = &v47 - v22;
  v48 = v1;
  sub_216683A80(v1, v14, &qword_27CAB6DB0);
  v23 = v12[13];
  v24 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v14 + v23, 1, 1, v24);
  sub_216BC4DB0(v1, v10, type metadata accessor for TrackShelfLockupContent);
  v25 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v26 = swift_allocObject();
  sub_216BC50C4(v10, v26 + v25, type metadata accessor for TrackShelfLockupContent);
  v27 = v12[14];
  *(v14 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v28 = v14 + v12[15];
  *v28 = swift_getKeyPath();
  v28[40] = 0;
  v14[5] = sub_216BC5534;
  v14[6] = v26;
  v14[7] = 0;
  v14[8] = 0;
  sub_216F09984();
  sub_2167FDB84(v14, &qword_27CAC4D70);
  v29 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D90) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AE8);
  sub_217008C54();
  *v29 = 0x4043000000000000;
  v29[8] = 0;
  v30 = sub_21700B3D4();
  v32 = v31;
  v33 = &v17[*(v15 + 36)];
  sub_216BBF9A8(v7);
  sub_216BC5594();
  sub_21700A8B4();
  sub_2167FDB84(v7, &qword_27CAC4D68);
  v34 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4DA8) + 36)];
  *v34 = v30;
  v34[1] = v32;
  v35 = v55;
  sub_2170099C4();
  v36 = sub_216BC5670();
  sub_21700A784();
  (*(v56 + 8))(v35, v57);
  sub_2167FDB84(v17, &qword_27CAC4D78);
  v37 = v58;
  sub_216DE90F8();
  v38 = (v37 + *(v59 + 40));
  v40 = *v38;
  v39 = v38[1];
  sub_21700DF14();
  sub_216BC5070(v37, type metadata accessor for TrackLockup);
  if (v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (v39)
  {
    v42 = v39;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

  v66 = v41;
  v67 = v42;
  v64 = v15;
  v65 = v36;
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  v43 = v50;
  v44 = v53;
  sub_21700A6B4();

  (*(v54 + 8))(v21, v44);
  v45 = v60;
  sub_2170092F4();
  sub_2170089A4();
  (*(v61 + 8))(v45, v63);
  return sub_2167FDB84(v43, &qword_27CAC4D88);
}

uint64_t sub_216BBF650()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4DD0);
  MEMORY[0x28223BE20](v0);
  v2 = &v4 - v1;
  sub_216BBF718(&v4 - v1);
  sub_216BC58A0();
  sub_21700A8B4();
  return sub_2167FDB84(v2, &qword_27CAC4DD0);
}

uint64_t sub_216BBF718@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4DF8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &__src[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4DE8);
  MEMORY[0x28223BE20](v6);
  v8 = &__src[-v7];
  *v5 = sub_2170091A4();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E10);
  sub_216BBFCA0(v1, &v5[*(v9 + 44)]);
  v10 = [objc_opt_self() defaultMetrics];
  [v10 scaledValueForValue_];

  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v5, v8, &qword_27CAC4DF8);
  memcpy(&v8[*(v6 + 36)], __src, 0x70uLL);
  v11 = sub_21700B3C4();
  MEMORY[0x28223BE20](v11);
  sub_216CB73E4(v12, v13, sub_216BC5A10, a1);
  return sub_2167FDB84(v8, &qword_27CAC4DE8);
}

uint64_t sub_216BBF9A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for TrackLockup();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  sub_216CCB1E8();
  sub_216DE90F8();
  sub_216683A80(&v15[*(v10 + 128)], v8, &qword_27CAB6A00);
  sub_216BC5070(v15, type metadata accessor for TrackLockup);
  v16 = type metadata accessor for TrackShelfLockupContent(0);
  sub_216BC4DB0(v1 + *(v16 + 24), v5, type metadata accessor for MenuContext);
  sub_216DE90F8();
  v17 = &v12[*(v10 + 120)];
  v19 = *v17;
  v18 = *(v17 + 1);
  sub_21700DF14();
  sub_216BC5070(v12, type metadata accessor for TrackLockup);
  v20 = a1 + *(type metadata accessor for ContextMenuButton(0) + 20);
  sub_216683A80(v8, v20, &qword_27CAB6A00);
  v21 = type metadata accessor for MenuConfiguration(0);
  sub_216BC4DB0(v5, v20 + v21[5], type metadata accessor for MenuContext);
  v22 = (v20 + v21[6]);
  *v22 = v19;
  v22[1] = v18;
  *(v20 + v21[7]) = 0;
  v23 = v20 + v21[8];
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  sub_216BC5070(v5, type metadata accessor for MenuContext);
  sub_2167FDB84(v8, &qword_27CAB6A00);
  v24 = (v20 + v21[9]);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  LOBYTE(v18) = sub_217009CD4();
  sub_217007F24();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4D68);
  v34 = a1 + *(result + 36);
  *v34 = v18;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_216BBFCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E18);
  MEMORY[0x28223BE20](v89);
  v86 = &v77 - v3;
  v4 = type metadata accessor for PrimaryTextView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v77 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E20);
  MEMORY[0x28223BE20](v82);
  v78 = &v77 - v8;
  v80 = type metadata accessor for TrackLockup();
  MEMORY[0x28223BE20](v80);
  v79 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E28);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v92 = &v77 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E30);
  v84 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v81 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v77 - v16;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E38);
  MEMORY[0x28223BE20](v88);
  v18 = &v77 - v17;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E40);
  MEMORY[0x28223BE20](v90);
  v20 = &v77 - v19;
  v21 = sub_217008844();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v77 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E48);
  MEMORY[0x28223BE20](v28 - 8);
  v94 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - v31;
  v33 = type metadata accessor for TrackShelfLockupContent(0);
  v34 = a1;
  sub_216C0C570(v33, v35, v36, v37, v38, v39, v40, v41, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88);
  (*(v22 + 104))(v24, *MEMORY[0x277CDF9A8], v21);
  sub_2166D3CEC(&qword_27CABA188, MEMORY[0x277CDFA28]);
  LOBYTE(a1) = sub_21700E464();
  v42 = *(v22 + 8);
  v42(v24, v21);
  v42(v27, v21);
  v96 = v32;
  if (a1)
  {
    v77 = v18;
    v43 = v87;
    sub_216BC1170(v87);
    v44 = v79;
    sub_216DE90F8();
    v45 = *(v44 + *(v80 + 72) + 8);
    sub_216BC5070(v44, type metadata accessor for TrackLockup);
    if (v45)
    {
      v46 = v78;
      sub_216BC0E28(v78);
      v47 = v92;
      sub_2167C5834(v46, v92, &qword_27CAC4E20);
      v48 = 0;
    }

    else
    {
      v48 = 1;
      v47 = v92;
    }

    __swift_storeEnumTagSinglePayload(v47, v48, 1, v82);
    v50 = v93;
    sub_216BC1A40(v93);
    v51 = v84;
    v82 = v34;
    v52 = *(v84 + 16);
    v53 = v81;
    v54 = v91;
    v52(v81, v43, v91);
    v55 = v83;
    sub_216683A80(v47, v83, &qword_27CAC4E28);
    v56 = v50;
    v57 = v85;
    sub_216BC4DB0(v56, v85, type metadata accessor for PrimaryTextView);
    v58 = v86;
    v52(v86, v53, v54);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E70);
    sub_216683A80(v55, v58 + *(v59 + 48), &qword_27CAC4E28);
    sub_216BC4DB0(v57, v58 + *(v59 + 64), type metadata accessor for PrimaryTextView);
    sub_216BC5070(v57, type metadata accessor for PrimaryTextView);
    sub_2167FDB84(v55, &qword_27CAC4E28);
    v60 = *(v51 + 8);
    v61 = v53;
    v62 = v91;
    v60(v61, v91);
    sub_216683A80(v58, v77, &qword_27CAC4E18);
    swift_storeEnumTagMultiPayload();
    sub_21680DFBC(&qword_27CAC4E58, &qword_27CAC4E40);
    sub_21680DFBC(&qword_27CAC4E60, &qword_27CAC4E18);
    v32 = v96;
    sub_217009554();
    sub_2167FDB84(v58, &qword_27CAC4E18);
    sub_216BC5070(v93, type metadata accessor for PrimaryTextView);
    sub_2167FDB84(v92, &qword_27CAC4E28);
    v60(v87, v62);
    v34 = v82;
  }

  else
  {
    *v20 = sub_2170093C4();
    *(v20 + 1) = 0;
    v20[16] = 0;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E50);
    sub_216BC0784(&v20[*(v49 + 44)]);
    sub_216683A80(v20, v18, &qword_27CAC4E40);
    swift_storeEnumTagMultiPayload();
    sub_21680DFBC(&qword_27CAC4E58, &qword_27CAC4E40);
    sub_21680DFBC(&qword_27CAC4E60, &qword_27CAC4E18);
    sub_217009554();
    sub_2167FDB84(v20, &qword_27CAC4E40);
  }

  v63 = *(v34 + 40);
  swift_retain_n();
  sub_21700B3B4();
  sub_2170083C4();
  v92 = v102;
  v93 = v100;
  v64 = v104;
  v65 = v105;
  v99 = 1;
  v98 = v101;
  v97 = v103;
  v66 = v94;
  sub_216683A80(v32, v94, &qword_27CAC4E48);
  v67 = v99;
  v68 = v98;
  v69 = v97;
  v70 = v95;
  sub_216683A80(v66, v95, &qword_27CAC4E48);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E68);
  v72 = v70 + v71[12];
  *v72 = 0x4024000000000000;
  *(v72 + 8) = 0;
  v73 = v70 + v71[16];
  *v73 = v63;
  *(v73 + 8) = sub_216BC5A38;
  *(v73 + 16) = v63;
  *(v73 + 24) = 0;
  v74 = v70 + v71[20];
  *v74 = 0;
  *(v74 + 8) = v67;
  v75 = v92;
  *(v74 + 16) = v93;
  *(v74 + 24) = v68;
  *(v74 + 32) = v75;
  *(v74 + 40) = v69;
  *(v74 + 48) = v64;
  *(v74 + 56) = v65;

  sub_2167759EC();
  sub_2167FDB84(v96, &qword_27CAC4E48);

  sub_2166B8588();
  return sub_2167FDB84(v66, &qword_27CAC4E48);
}

uint64_t sub_216BC0784@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4EE0);
  MEMORY[0x28223BE20](v59);
  v60 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4EE8);
  MEMORY[0x28223BE20](v57);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v50 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v53);
  v9 = &v50 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E20);
  MEMORY[0x28223BE20](v52);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4EF0);
  v51 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = type metadata accessor for TrackLockup();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4EF8);
  MEMORY[0x28223BE20](v19 - 8);
  v56 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  sub_216DE90F8();
  v24 = *&v18[*(v16 + 80) + 8];
  sub_216BC5070(v18, type metadata accessor for TrackLockup);
  if (!v24)
  {
    v28 = 1;
    goto LABEL_5;
  }

  sub_216BC0E28(v11);
  v25 = *MEMORY[0x277CDF988];
  v26 = sub_217008844();
  (*(*(v26 - 8) + 104))(v9, v25, v26);
  sub_2166D3CEC(&qword_280E2B340, MEMORY[0x277CDFA28]);
  result = sub_21700E494();
  if (result)
  {
    sub_216BC5E34();
    sub_21680DFBC(&qword_280E29AE8, &qword_27CAB75D0);
    sub_21700A5B4();
    sub_2167FDB84(v9, &qword_27CAB75D0);
    sub_2167FDB84(v11, &qword_27CAC4E20);
    (*(v51 + 32))(v23, v14, v12);
    v28 = 0;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v23, v28, 1, v12);
    v29 = v58;
    sub_216BC1170(v58);
    v30 = sub_217009C94();
    v54 = v23;
    v31 = v30;
    sub_217007F24();
    v32 = v29 + *(v57 + 36);
    *v32 = v31;
    *(v32 + 8) = v33;
    *(v32 + 16) = v34;
    *(v32 + 24) = v35;
    *(v32 + 32) = v36;
    *(v32 + 40) = 0;
    sub_216BC1A40(v4);
    v37 = sub_217009CA4();
    sub_217007F24();
    v38 = &v4[*(v59 + 36)];
    *v38 = v37;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    v43 = v56;
    sub_216683A80(v23, v56, &qword_27CAC4EF8);
    v44 = v55;
    sub_216683A80(v29, v55, &qword_27CAC4EE8);
    v45 = v60;
    sub_216683A80(v4, v60, &qword_27CAC4EE0);
    v46 = v4;
    v47 = v44;
    v48 = v61;
    sub_216683A80(v43, v61, &qword_27CAC4EF8);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4F00);
    sub_216683A80(v47, v48 + *(v49 + 48), &qword_27CAC4EE8);
    sub_216683A80(v45, v48 + *(v49 + 64), &qword_27CAC4EE0);
    sub_2167FDB84(v46, &qword_27CAC4EE0);
    sub_2167FDB84(v29, &qword_27CAC4EE8);
    sub_2167FDB84(v54, &qword_27CAC4EF8);
    sub_2167FDB84(v45, &qword_27CAC4EE0);
    sub_2167FDB84(v47, &qword_27CAC4EE8);
    return sub_2167FDB84(v43, &qword_27CAC4EF8);
  }

  __break(1u);
  return result;
}

double sub_216BC0E28@<D0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for TrackLockup();
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDF98);
  MEMORY[0x28223BE20](v22);
  v9 = &v22 - v8;
  sub_216DE90F8();
  v10 = &v4[*(v2 + 80)];
  v11 = *v10;
  v12 = v10[1];
  sub_21700DF14();
  sub_216BC5070(v4, type metadata accessor for TrackLockup);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = 0;
  }

  if (qword_27CAB5ED0 != -1)
  {
    swift_once();
  }

  v15 = qword_27CAC4C98;
  KeyPath = swift_getKeyPath();
  *&v26 = v13;
  *(&v26 + 1) = v12;
  *&v27 = 0;
  *(&v27 + 1) = v14;
  *&v28 = KeyPath;
  *(&v28 + 1) = v15;

  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();
  sub_2167C4DF0(v13, v12, 0, v14);

  if (qword_27CAB5ED8 != -1)
  {
    swift_once();
  }

  v17 = qword_27CAC4CA0;
  (*(v23 + 32))(v9, v7, v24);
  *&v9[*(v22 + 36)] = v17;

  sub_21700B3B4();
  sub_2170083C4();
  v18 = v25;
  sub_2167C5834(v9, v25, &qword_27CABDF98);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E20) + 36));
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  result = *&v28;
  v19[2] = v28;
  return result;
}

uint64_t sub_216BC1170@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v82 = sub_21700D864();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_21700D8E4();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for TrackLockup();
  MEMORY[0x28223BE20](v76);
  v75 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2170067A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E78);
  MEMORY[0x28223BE20](v72);
  v13 = &v69 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E80);
  MEMORY[0x28223BE20](v73);
  v74 = &v69 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E88);
  MEMORY[0x28223BE20](v77);
  v16 = &v69 - v15;
  sub_216DE90F8();
  _s7MusicUI18ArtworkContentViewVMa_1(0);
  *&v86[0] = 0x4048000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v71 = sub_21700B3B4();
  v70 = v17;
  v18 = *(v1 + *(type metadata accessor for TrackShelfLockupContent(0) + 32));
  if (v18)
  {

    sub_216CCB1E8();
    (*(v6 + 16))(v8, v11, v5);
    v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    (*(v6 + 32))(v20 + v19, v8, v5);
    type metadata accessor for PlaybackPresenter();
    sub_2166D3CEC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);

    v21 = sub_217008684();
    v23 = v22;
    (*(v6 + 8))(v11, v5);
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E90) + 36)];
    *v24 = sub_21680CE98;
    *(v24 + 1) = v20;
    v24[16] = 0;
    *(v24 + 3) = v21;
    *(v24 + 4) = v23;
    v25 = v70;
    *(v24 + 5) = v71;
    *(v24 + 6) = v25;
    v26 = &v13[*(v72 + 36)];
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7440);
    v28 = &v26[*(v27 + 36)];
    v29 = *(sub_217008B44() + 20);
    v30 = *MEMORY[0x277CE0118];
    v31 = sub_217009294();
    (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
    __asm { FMOV            V0.2D, #5.0 }

    *v28 = _Q0;
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v37 = qword_280E73AA0;
    v38 = byte_280E73AA8;
    v39 = qword_280E73AB0;
    v40 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC4E98) + 36)];
    sub_216BC4DB0(v28, v40, MEMORY[0x277CDFC08]);
    *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)) = 256;
    *v26 = v37;
    v26[8] = v38;
    *(v26 + 2) = v39;
    v41 = &v26[*(v27 + 40)];
    *v41 = swift_getKeyPath();
    v41[8] = 0;

    v42 = sub_217009CD4();
    v43 = v75;
    sub_216DE90F8();
    sub_216BC5070(v43, type metadata accessor for TrackLockup);
    sub_217007F24();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = v74;
    sub_2167C5834(v13, v74, &qword_27CAC4E78);
    v53 = v52 + *(v73 + 36);
    *v53 = v42;
    *(v53 + 8) = v45;
    *(v53 + 16) = v47;
    *(v53 + 24) = v49;
    *(v53 + 32) = v51;
    *(v53 + 40) = 0;
    v54 = sub_217009CE4();
    sub_217007F24();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_2167C5834(v52, v16, &qword_27CAC4E80);
    v63 = v78;
    v64 = &v16[*(v77 + 36)];
    *v64 = v54;
    *(v64 + 1) = v56;
    *(v64 + 2) = v58;
    *(v64 + 3) = v60;
    *(v64 + 4) = v62;
    v64[40] = 0;
    v65 = v80;
    v66 = v82;
    (*(v80 + 104))(v63, *MEMORY[0x277D22060], v82);
    memset(v86, 0, 32);
    memset(v85, 0, sizeof(v85));
    v67 = v79;
    sub_21700D874();
    sub_2167FDB84(v85, &unk_27CABF7A0);
    sub_2167FDB84(v86, &unk_27CABF7A0);
    (*(v65 + 8))(v63, v66);
    sub_216BC5AD0(&qword_27CAC4EA0, &qword_27CAC4E88, &unk_21704F988, sub_216BC5AA0);
    sub_21700A204();
    (*(v81 + 8))(v67, v83);
    return sub_2167FDB84(v16, &qword_27CAC4E88);
  }

  else
  {
    type metadata accessor for PlaybackPresenter();
    sub_2166D3CEC(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_216BC1A40@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TrackLockup();
  MEMORY[0x28223BE20](v3);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  v57 = v1;
  sub_216DE90F8();
  v23 = &v22[v3[7]];
  v24 = *(v23 + 1);
  *&v55 = *v23;
  *(&v55 + 1) = v24;
  sub_21700DF14();
  sub_216BC5070(v22, type metadata accessor for TrackLockup);
  sub_216DE90F8();
  v25 = &v19[v3[8]];
  v26 = *(v25 + 1);
  *&v54 = *v25;
  *(&v54 + 1) = v26;
  sub_21700DF14();
  sub_216BC5070(v19, type metadata accessor for TrackLockup);
  sub_216DE90F8();
  v27 = *&v16[v3[9]];
  sub_21700DF14();
  sub_216BC5070(v16, type metadata accessor for TrackLockup);
  if (v27)
  {
    v28 = sub_216B80C28(v27);
    v52 = v29;
    v53 = v28;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  sub_216DE90F8();
  v30 = &v13[v3[10]];
  v32 = *v30;
  v31 = v30[1];
  v33 = *v30;
  v50 = v30[2];
  v51 = v31;
  sub_216BC5A40(v33);
  sub_216BC5070(v13, type metadata accessor for TrackLockup);
  sub_216DE90F8();
  v34 = *&v10[v3[11]];
  sub_21700DF14();
  sub_216BC5070(v10, type metadata accessor for TrackLockup);
  if (v34)
  {
    v35 = sub_216B80C28(v34);
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  sub_216DE90F8();
  v38 = v7[v3[15]];
  sub_216BC5070(v7, type metadata accessor for TrackLockup);
  v39 = type metadata accessor for TrackShelfLockupContent(0);
  v40 = v56;
  v41 = *(v57 + *(v39 + 28));
  sub_216DE90F8();
  v42 = *(v40 + v3[14]);
  sub_216BC5070(v40, type metadata accessor for TrackLockup);
  v43 = v42 >> 13 == 3 || v42 >> 13 == 4 && v42 == 0x8000;
  v44 = v54;
  *a1 = v55;
  *(a1 + 16) = v44;
  v45 = v52;
  *(a1 + 32) = v53;
  *(a1 + 40) = v45;
  v46 = v50;
  v47 = v51;
  *(a1 + 48) = v32;
  *(a1 + 56) = v47;
  *(a1 + 64) = v46;
  *(a1 + 72) = v35;
  *(a1 + 80) = v37;
  *(a1 + 88) = v38;
  *(a1 + 89) = 0;
  *(a1 + 90) = v41;
  *(a1 + 91) = v43;
  v48 = *(type metadata accessor for PrimaryTextView(0) + 52);
  *(a1 + v48) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  return swift_storeEnumTagMultiPayload();
}

double sub_216BC1DE4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2170067A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_216CCB1E8();
  v6 = sub_216EB939C();
  (*(v3 + 8))(v5, v2);
  sub_21700B3B4();
  sub_2170083C4();
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  *a1 = v6 & 1;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v17;
  result = -16.0;
  *(a1 + 56) = xmmword_21704F630;
  return result;
}

char *sub_216BC1F34()
{
  v0 = sub_2170067A4();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216CCB1E8();
  type metadata accessor for GenericItemStateObserver(0);
  swift_allocObject();
  return sub_216EBA37C(v2);
}

uint64_t sub_216BC1FC4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GenericItemStateObserver(0);
  sub_2166D3CEC(&qword_280E36920, type metadata accessor for GenericItemStateObserver);
  sub_2170081B4();
  sub_216EB9284(a1);

  type metadata accessor for DownloadStatusIndicator();
  sub_2167CD8D8();
  sub_2170082B4();
  return sub_2170082B4();
}

uint64_t sub_216BC20E0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = sub_21700D8E4();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = sub_2170091A4();
  v10 = 0;
  KeyPath = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v30 = 1;
  if (a1)
  {
    v10 = sub_21700ADB4();
    if (qword_27CAB5F18 != -1)
    {
      swift_once();
    }

    v12 = qword_27CAC4CE0;
    KeyPath = swift_getKeyPath();
    v15 = qword_27CAB5F20;

    if (v15 != -1)
    {
      swift_once();
    }

    v14 = qword_27CAC4CE8;
    v13 = swift_getKeyPath();
  }

  v22 = v9;
  LOBYTE(v23) = v30;
  *(&v23 + 1) = v10;
  *&v24 = KeyPath;
  *(&v24 + 1) = v12;
  *&v25 = v13;
  *(&v25 + 1) = v14;
  v26 = 0u;
  v27 = 0u;
  memset(v21, 0, sizeof(v21));
  sub_21700D884();
  sub_2167FDB84(v21, &unk_27CABF7A0);
  sub_2167FDB84(&v26, &unk_27CABF7A0);
  *(&v27 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v26) = a1 & 1;
  sub_21700D8C4();
  v16 = *(v3 + 8);
  v17 = v20;
  v16(v5, v20);
  sub_2167FDB84(&v26, &unk_27CABF7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3780);
  sub_21680DFBC(&qword_27CAC3778, &qword_27CAC3780);
  sub_21700A204();
  v16(v8, v17);
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v29 = v25;
  return sub_2167FDB84(&v26, &qword_27CAC3780);
}

uint64_t sub_216BC243C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_21700C444();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  v18 = sub_217007474();
  v39 = *(v18 - 8);
  v40 = v18;
  MEMORY[0x28223BE20](v18);
  v38 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v37 = &v34 - v21;
  _s7MusicUI18ArtworkContentViewVMa_1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  sub_216BC29E0();
  v22 = *(type metadata accessor for TrackLockup() + 116);
  v35 = v1;
  sub_216683A80(v1 + v22, v14, &qword_27CAB6D60);
  v23 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v14, 1, v23) == 1)
  {
    sub_2167FDB84(v14, &qword_27CAB6D60);
    v24 = sub_21700C4B4();
    v25 = v17;
    v26 = 1;
  }

  else
  {
    v27 = sub_21700C4B4();
    v34 = v8;
    v28 = v27;
    (*(*(v27 - 8) + 16))(v17, v14, v27);
    sub_216BC5070(v14, type metadata accessor for Artwork);
    v25 = v17;
    v26 = 0;
    v24 = v28;
    v8 = v34;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
  v29 = v37;
  sub_217007434();
  sub_216683A80(v35 + v22, v11, &qword_27CAB6D60);
  if (__swift_getEnumTagSinglePayload(v11, 1, v23) == 1)
  {
    sub_2167FDB84(v11, &qword_27CAB6D60);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
    sub_21700C404();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      sub_2167FDB84(v4, &qword_27CAB7530);
    }
  }

  else
  {
    (*(v6 + 16))(v4, &v11[*(v23 + 20)], v5);
    sub_216BC5070(v11, type metadata accessor for Artwork);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
  }

  v30 = v38;
  sub_2170073E4();
  (*(v6 + 8))(v8, v5);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  v31 = v40;
  v32 = *(v39 + 8);
  v32(v30, v40);
  return (v32)(v29, v31);
}

double sub_216BC29E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v2 = OUTLINED_FUNCTION_36(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TrackLockup();
  sub_216683A80(v0 + *(v5 + 120), v4, &qword_27CAB6A00);
  v6 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    sub_2167FDB84(v4, &qword_27CAB6A00);
  }

  else
  {
    v7 = *v4;
    sub_216BC5070(v4, type metadata accessor for ContentDescriptor);
    if (v7 != 23)
    {
      v11 = v7;
      v10 = 13;
      if (static ContentKind.== infix(_:_:)(&v11, &v10))
      {
        return 1.77777778;
      }
    }
  }

  return 1.0;
}