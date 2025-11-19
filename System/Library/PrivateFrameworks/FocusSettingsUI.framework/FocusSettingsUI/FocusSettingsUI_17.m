uint64_t sub_24BA731B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_24BAA9C6C();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_24BAA9C7C();
  v36 = *(v34 - 8);
  v7 = v36;
  MEMORY[0x28223BE20](v34);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FacesAndPagesPicker.contents(0);
  v11 = (a1 + *(v10 + 24));
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v11) = *(v11 + 16);
  v40 = v12;
  v41 = v13;
  v42 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B8C();
  v32 = v38;
  v33 = v37;
  v31 = v39;
  v14 = (a1 + *(v10 + 28));
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v14) = *(v14 + 16);
  v40 = v15;
  v41 = v16;
  v42 = v14;
  sub_24BAA9B8C();
  v29 = v38;
  v30 = v37;
  v28 = v39;
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v27 = sub_24BAA86FC();
  v18 = v17;
  *v6 = xmmword_24BAAD830;
  (*(v4 + 104))(v6, *MEMORY[0x277CDF108], v35);
  sub_24BAA9C8C();
  v19 = v34;
  v20 = sub_24BAAA15C();
  *(v20 + 16) = 3;
  v21 = v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v22 = *(v7 + 16);
  v22(v21, v9, v19);
  v23 = *(v36 + 72);
  v22(v21 + v23, v9, v19);
  result = (*(v7 + 32))(v21 + 2 * v23, v9, v19);
  *a2 = v27;
  *(a2 + 8) = v18;
  v25 = v32;
  *(a2 + 16) = v33;
  *(a2 + 24) = v25;
  *(a2 + 32) = v31;
  v26 = v29;
  *(a2 + 40) = v30;
  *(a2 + 48) = v26;
  *(a2 + 56) = v28;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = v20;
  return result;
}

uint64_t sub_24BA734F0()
{
  type metadata accessor for FacesAndPagesPicker.contents(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  MEMORY[0x24C24FC10](&v1);
  sub_24BAA9B6C();
}

uint64_t sub_24BA735B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  *a4 = sub_24BAA8BCC();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  return a3(a1);
}

uint64_t sub_24BA73624@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A8B0);
  MEMORY[0x28223BE20](v59);
  v5 = &v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A8B8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v53 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A8C0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A8C8);
  MEMORY[0x28223BE20](v56);
  v58 = &v53 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A8D0);
  MEMORY[0x28223BE20](v57);
  v20 = (&v53 - v19);
  v21 = type metadata accessor for ChooseLabel(0);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v26 = (&v53 - v25);
  v27 = *a1;
  if (*a1)
  {
    v54 = v23;
    v55 = v24;
    v60 = a2;
    v28 = *(v27 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_selectedWatchFace);
    if (v28)
    {
      v29 = v28;
      v53 = v28;

      *v17 = sub_24BAA8BCC();
      *(v17 + 1) = 0;
      v17[16] = 1;
      v30 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A900) + 44)];
      *v11 = sub_24BAA9CCC();
      v11[1] = v31;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A908);
      sub_24BA74018(v29, a1, v11 + *(v32 + 44));
      sub_24B8F3208(v11, v9, &qword_27F06A8B8);
      *v30 = 0;
      v30[8] = 0;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A910);
      sub_24B8F3208(v9, &v30[*(v33 + 48)], &qword_27F06A8B8);
      sub_24B8F35E4(v11, &qword_27F06A8B8);
      sub_24B8F35E4(v9, &qword_27F06A8B8);
      type metadata accessor for ActivityConfigViewModel();
      sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      *v26 = sub_24BAA86FC();
      v26[1] = v34;
      v35 = v54;
      v36 = *(v54 + 20);
      *(v26 + v36) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
      swift_storeEnumTagMultiPayload();
      *(v26 + *(v35 + 24)) = 1;
      sub_24B8F3208(v17, v15, &qword_27F06A8C0);
      v37 = v55;
      sub_24BA7F4E4(v26, v55, type metadata accessor for ChooseLabel);
      sub_24B8F3208(v15, v5, &qword_27F06A8C0);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A918);
      sub_24BA7F4E4(v37, &v5[*(v38 + 48)], type metadata accessor for ChooseLabel);
      sub_24BA7FFB4(v37, type metadata accessor for ChooseLabel);
      sub_24B8F35E4(v15, &qword_27F06A8C0);
      sub_24B8F3208(v5, v58, &qword_27F06A8B0);
      swift_storeEnumTagMultiPayload();
      sub_24B8F384C(&qword_27F06A8F0, &qword_27F06A8B0);
      sub_24B8F384C(&qword_27F06A8F8, &qword_27F06A8D0);
      sub_24BAA8D0C();

      sub_24B8F35E4(v5, &qword_27F06A8B0);
      sub_24BA7FFB4(v26, type metadata accessor for ChooseLabel);
      return sub_24B8F35E4(v17, &qword_27F06A8C0);
    }

    else
    {
      v40 = sub_24BAA8BCC();
      LOBYTE(v61) = 1;
      sub_24BA757E8(v83);
      v73 = *&v83[64];
      v74 = *&v83[80];
      v75 = *&v83[96];
      v76 = v83[112];
      v69 = *v83;
      v70 = *&v83[16];
      v71 = *&v83[32];
      v72 = *&v83[48];
      v77[0] = *v83;
      v77[1] = *&v83[16];
      v77[2] = *&v83[32];
      v77[3] = *&v83[48];
      v77[4] = *&v83[64];
      v77[5] = *&v83[80];
      v77[6] = *&v83[96];
      v78 = v83[112];
      sub_24B8F3208(&v69, v81, &qword_27F06A8D8);
      sub_24B8F35E4(v77, &qword_27F06A8D8);
      *&v83[71] = v73;
      *&v83[87] = v74;
      *&v83[103] = v75;
      *&v83[7] = v69;
      *&v83[23] = v70;
      *&v83[39] = v71;
      *&v83[55] = v72;
      *(&v80[4] + 1) = *&v83[64];
      *(&v80[5] + 1) = *&v83[80];
      *(&v80[6] + 1) = *&v83[96];
      *(v80 + 1) = *v83;
      *(&v80[1] + 1) = *&v83[16];
      *(&v80[2] + 1) = *&v83[32];
      v83[119] = v76;
      v79 = v40;
      LOBYTE(v80[0]) = v61;
      *(&v80[7] + 1) = *&v83[112];
      *(&v80[3] + 1) = *&v83[48];
      type metadata accessor for ActivityConfigViewModel();
      sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
      *v26 = sub_24BAA86FC();
      v26[1] = v41;
      v42 = v54;
      v43 = *(v54 + 20);
      *(v26 + v43) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
      swift_storeEnumTagMultiPayload();
      *(v26 + *(v42 + 24)) = 0;
      v67 = v80[5];
      v68[0] = v80[6];
      *(v68 + 9) = *(&v80[6] + 9);
      v63 = v80[1];
      v64 = v80[2];
      v65 = v80[3];
      v66 = v80[4];
      v61 = v79;
      v62 = v80[0];
      v44 = v55;
      sub_24BA7F4E4(v26, v55, type metadata accessor for ChooseLabel);
      v45 = v68[0];
      v81[6] = v67;
      v82[0] = v68[0];
      *(v82 + 9) = *(v68 + 9);
      v46 = v63;
      v47 = v64;
      v81[2] = v63;
      v81[3] = v64;
      v49 = v65;
      v48 = v66;
      v81[4] = v65;
      v81[5] = v66;
      v51 = v61;
      v50 = v62;
      v81[0] = v61;
      v81[1] = v62;
      v20[6] = v67;
      v20[7] = v45;
      *(v20 + 121) = *(v68 + 9);
      v20[2] = v46;
      v20[3] = v47;
      v20[4] = v49;
      v20[5] = v48;
      *v20 = v51;
      v20[1] = v50;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A8E0);
      sub_24BA7F4E4(v44, v20 + *(v52 + 48), type metadata accessor for ChooseLabel);
      sub_24B8F3208(&v79, v83, &qword_27F06A8E8);
      sub_24B8F3208(v81, v83, &qword_27F06A8E8);
      sub_24BA7FFB4(v44, type metadata accessor for ChooseLabel);
      *&v83[96] = v67;
      *&v83[112] = v68[0];
      *&v83[121] = *(v68 + 9);
      *&v83[32] = v63;
      *&v83[48] = v64;
      *&v83[64] = v65;
      *&v83[80] = v66;
      *v83 = v61;
      *&v83[16] = v62;
      sub_24B8F35E4(v83, &qword_27F06A8E8);
      sub_24B8F3208(v20, v58, &qword_27F06A8D0);
      swift_storeEnumTagMultiPayload();
      sub_24B8F384C(&qword_27F06A8F0, &qword_27F06A8B0);
      sub_24B8F384C(&qword_27F06A8F8, &qword_27F06A8D0);
      sub_24BAA8D0C();
      sub_24B8F35E4(&v79, &qword_27F06A8E8);
      sub_24B8F35E4(v20, &qword_27F06A8D0);
      return sub_24BA7FFB4(v26, type metadata accessor for ChooseLabel);
    }
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA74018@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a2;
  v125 = a3;
  v4 = sub_24BAA866C();
  v123 = *(v4 - 8);
  v124 = v4;
  MEMORY[0x28223BE20](v4);
  v122 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FacesAndPagesPicker.contents(0);
  v112 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v113 = v7;
  v114 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A738);
  v117 = *(v8 - 8);
  v118 = v8;
  MEMORY[0x28223BE20](v8);
  v115 = &v103 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A740);
  v120 = *(v10 - 8);
  v121 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v119 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v103 - v13;
  v14 = sub_24BAA82DC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v103 - v19;
  v21 = sub_24BAA869C();
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = (&v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068970);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v103 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A920);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = (&v103 - v29);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A928);
  MEMORY[0x28223BE20](v104);
  v109 = &v103 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A930);
  MEMORY[0x28223BE20](v32 - 8);
  v108 = &v103 - v33;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A938);
  MEMORY[0x28223BE20](v107);
  v106 = &v103 - v34;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A940);
  v35 = MEMORY[0x28223BE20](v105);
  v111 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v103 = &v103 - v38;
  MEMORY[0x28223BE20](v37);
  v126 = &v103 - v39;
  *v30 = sub_24BAA9D1C();
  v30[1] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A948);
  sub_24BA74BEC(a1, v30 + *(v41 + 44));
  v42 = *(v22 + 28);
  v43 = *MEMORY[0x277CE0118];
  v44 = sub_24BAA8B2C();
  v45 = v24 + v42;
  v46 = v110;
  (*(*(v44 - 8) + 104))(v45, v43, v44);
  __asm { FMOV            V0.2D, #17.0 }

  *v24 = _Q0;
  sub_24BA8DCD0(v20);
  (*(v15 + 104))(v18, *MEMORY[0x277CDF3D0], v14);
  v52 = sub_24BAA82CC();
  v53 = *(v15 + 8);
  v53(v18, v14);
  v53(v20, v14);
  if (v52)
  {
    v54 = sub_24BAA97AC();
  }

  else
  {
    v55 = [objc_opt_self() systemGray3Color];
    v54 = sub_24BAA973C();
  }

  v56 = v54;
  sub_24BAA832C();
  sub_24BA7F4E4(v24, v27, MEMORY[0x277CDFC08]);
  v57 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE0) + 36)];
  v58 = v128;
  *v57 = v127;
  *(v57 + 1) = v58;
  *(v57 + 4) = v129;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE8);
  *&v27[*(v59 + 52)] = v56;
  *&v27[*(v59 + 56)] = 256;
  v60 = sub_24BAA9D1C();
  v62 = v61;
  sub_24BA7FFB4(v24, MEMORY[0x277CDFC08]);
  v63 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AF0) + 36)];
  *v63 = v60;
  v63[1] = v62;
  v64 = sub_24BAA9D1C();
  v66 = v65;
  v67 = v109;
  v68 = &v109[*(v104 + 36)];
  sub_24B90294C(v27, v68, &qword_27F068970);
  v69 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AF8) + 36));
  *v69 = v64;
  v69[1] = v66;
  sub_24B90294C(v30, v67, &qword_27F06A920);
  v70 = v108;
  sub_24B90294C(v67, v108, &qword_27F06A928);
  v71 = sub_24BAA90AC();
  sub_24BAA828C();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = v70;
  v81 = v106;
  sub_24B90294C(v80, v106, &qword_27F06A930);
  v82 = v81 + *(v107 + 36);
  *v82 = v71;
  *(v82 + 8) = v73;
  *(v82 + 16) = v75;
  *(v82 + 24) = v77;
  *(v82 + 32) = v79;
  *(v82 + 40) = 0;
  v83 = v103;
  sub_24B90294C(v81, v103, &qword_27F06A938);
  *(v83 + *(v105 + 36)) = 256;
  v84 = v83;
  v85 = v126;
  sub_24B90294C(v84, v126, &qword_27F06A940);
  v86 = v114;
  sub_24BA7F4E4(v46, v114, type metadata accessor for FacesAndPagesPicker.contents);
  v87 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v88 = swift_allocObject();
  sub_24BA7EF64(v86, v88 + v87, type metadata accessor for FacesAndPagesPicker.contents);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A760);
  sub_24BA80040();
  v89 = v115;
  sub_24BAA9A5C();
  v90 = v122;
  sub_24BAA865C();
  sub_24B8F384C(&qword_27F06A778, &qword_27F06A738);
  sub_24BA7EE98(&qword_27F063BF8, MEMORY[0x277CDDB18]);
  v91 = v116;
  v92 = v118;
  v93 = v124;
  sub_24BAA944C();
  (*(v123 + 8))(v90, v93);
  (*(v117 + 8))(v89, v92);
  v94 = v111;
  sub_24B8F3208(v85, v111, &qword_27F06A940);
  v96 = v119;
  v95 = v120;
  v97 = *(v120 + 16);
  v98 = v121;
  v97(v119, v91, v121);
  v99 = v125;
  sub_24B8F3208(v94, v125, &qword_27F06A940);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A950);
  v97((v99 + *(v100 + 48)), v96, v98);
  v101 = *(v95 + 8);
  v101(v91, v98);
  sub_24B8F35E4(v126, &qword_27F06A940);
  v101(v96, v98);
  return sub_24B8F35E4(v94, &qword_27F06A940);
}

uint64_t sub_24BA74BEC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v78 = a2;
  v74 = sub_24BAA975C();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24BAA992C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A958);
  MEMORY[0x28223BE20](v85);
  v5 = &v68 - v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A960);
  MEMORY[0x28223BE20](v79);
  v82 = &v68 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0671D8);
  MEMORY[0x28223BE20](v80);
  v68 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A968);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v86 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068A08);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v83 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v68 - v16);
  v18 = [objc_opt_self() blackColor];
  v19 = sub_24BAA976C();
  v20 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068A10) + 36);
  v75 = sub_24BAA869C();
  v21 = *(v75 + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24BAA8B2C();
  v24 = *(*(v23 - 8) + 104);
  v76 = v22;
  v24(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #17.0 }

  *v20 = _Q0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8);
  *&v20[*(v30 + 36)] = 256;
  *v17 = v19;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v31 = *(v13 + 44);
  v81 = v17;
  v32 = (v17 + v31);
  v33 = v88;
  *v32 = v87;
  v32[1] = v33;
  v32[2] = v89;
  v34 = *&v77[OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceImage];
  if (v34)
  {
    v77 = v34;
    sub_24BAA98FC();
    v35 = v70;
    v36 = v69;
    v37 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x277CE0FE0], v71);
    v38 = sub_24BAA997C();

    (*(v35 + 8))(v36, v37);
    v39 = sub_24BAA97EC();
    LOBYTE(v35) = sub_24BAA90BC();
    v40 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A9A0) + 36)];
    v24(&v40[*(v75 + 20)], v76, v23);
    __asm { FMOV            V0.2D, #13.0 }

    *v40 = _Q0;
    *&v40[*(v30 + 36)] = 256;
    *v5 = v38;
    *(v5 + 1) = 0;
    *(v5 + 8) = 1;
    *(v5 + 3) = v39;
    v5[32] = v35;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v42 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A990) + 36)];
    v43 = v91;
    *v42 = v90;
    *(v42 + 1) = v43;
    *(v42 + 2) = v92;
    (*(v73 + 104))(v72, *MEMORY[0x277CE0EE0], v74);
    v44 = sub_24BAA98BC();
    v45 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A980) + 36)];
    *v45 = v44;
    *(v45 + 8) = xmmword_24BAB8A30;
    *(v45 + 3) = 0x4018000000000000;
    LOBYTE(v44) = sub_24BAA90BC();
    sub_24BAA828C();
    v46 = &v5[*(v85 + 36)];
    *v46 = v44;
    *(v46 + 1) = v47;
    *(v46 + 2) = v48;
    *(v46 + 3) = v49;
    *(v46 + 4) = v50;
    v46[40] = 0;
    v51 = &qword_27F06A958;
    sub_24B8F3208(v5, v82, &qword_27F06A958);
    swift_storeEnumTagMultiPayload();
    sub_24BA80190();
    sub_24BA804C8();
    v52 = v84;
    sub_24BAA8D0C();

    v53 = v5;
  }

  else
  {
    v54 = v68;
    v24(&v68[*(v75 + 20)], v76, v23);
    __asm { FMOV            V0.2D, #13.0 }

    *v54 = _Q0;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v56 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0671D0) + 36));
    v57 = v91;
    *v56 = v90;
    v56[1] = v57;
    v56[2] = v92;
    v58 = [objc_opt_self() quaternarySystemFillColor];
    v59 = sub_24BAA973C();
    KeyPath = swift_getKeyPath();
    v61 = (v54 + *(v80 + 36));
    *v61 = KeyPath;
    v61[1] = v59;
    v51 = &qword_27F0671D8;
    sub_24B8F3208(v54, v82, &qword_27F0671D8);
    swift_storeEnumTagMultiPayload();
    sub_24BA80190();
    sub_24BA804C8();
    v52 = v84;
    sub_24BAA8D0C();
    v53 = v54;
  }

  sub_24B8F35E4(v53, v51);
  v62 = v81;
  v63 = v83;
  sub_24B8F3208(v81, v83, &qword_27F068A08);
  v64 = v86;
  sub_24B8F3208(v52, v86, &qword_27F06A968);
  v65 = v78;
  sub_24B8F3208(v63, v78, &qword_27F068A08);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A9C8);
  sub_24B8F3208(v64, v65 + *(v66 + 48), &qword_27F06A968);
  sub_24B8F35E4(v52, &qword_27F06A968);
  sub_24B8F35E4(v62, &qword_27F068A08);
  sub_24B8F35E4(v64, &qword_27F06A968);
  return sub_24B8F35E4(v63, &qword_27F068A08);
}

uint64_t sub_24BA75534(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  if (*a1)
  {
    v5 = qword_27F0630C0;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_24BAA7E4C();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v7 = v11[0];
    v8 = v11[1];
    v9 = swift_allocObject();
    swift_weakInit();

    sub_24B9EA0EC(v4, v7, v8, sub_24B9A1E64, v9);

    sub_24B8F35E4(v4, &qword_27F0669D0);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

__n128 sub_24BA75770@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  a1->n128_u64[0] = sub_24BAA86FC();
  a1->n128_u64[1] = v2;
  __asm { FMOV            V0.2D, #-10.0 }

  a1[1] = result;
  return result;
}

uint64_t sub_24BA757E8@<X0>(uint64_t a1@<X8>)
{
  sub_24BA8063C(&v17);
  v2 = sub_24BAA90EC();
  sub_24BAA828C();
  v3 = v20;
  *&v22 = v20;
  v21[0] = v17;
  v21[1] = v18;
  v5 = v17;
  v4 = v18;
  v21[2] = v19;
  BYTE8(v22) = v2;
  *&v23 = v6;
  *(&v23 + 1) = v7;
  *&v24 = v8;
  *(&v24 + 1) = v9;
  v15[103] = 0;
  *&v15[87] = v24;
  *&v15[71] = v23;
  *&v15[55] = v22;
  *&v15[39] = v19;
  *&v15[23] = v18;
  *&v15[7] = v17;
  v10 = *&v15[48];
  *(a1 + 41) = *&v15[32];
  v11 = *v15;
  *(a1 + 25) = *&v15[16];
  *(a1 + 9) = v11;
  v12 = *&v15[64];
  *(a1 + 89) = *&v15[80];
  *(a1 + 73) = v12;
  v16 = 0;
  *(a1 + 8) = 0;
  *(a1 + 105) = *&v15[96];
  v25 = 0;
  *a1 = 0;
  *(a1 + 57) = v10;
  v27 = v3;
  v26[1] = v4;
  v26[2] = v19;
  v26[0] = v5;
  v28 = v2;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v33 = 0;
  sub_24B8F3208(v21, &v14, &qword_27F06A9D0);
  return sub_24B8F35E4(v26, &qword_27F06A9D0);
}

uint64_t sub_24BA75924()
{
  type metadata accessor for WatchFaceSettingsView(0);
  sub_24BA7EE98(&qword_27F06A8A0, type metadata accessor for WatchFaceSettingsView);
  return sub_24BAA84CC();
}

uint64_t sub_24BA759B8@<X0>(void *a1@<X8>)
{
  type metadata accessor for FacesAndPagesPicker.contents(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  sub_24BAA9B8C();
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA7EE98(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v2 = sub_24BAA86FC();
  return sub_24BA075A0(v2, v3, v5, v6, v7, a1);
}

uint64_t sub_24BA75AA4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v40[-v3];
  v5 = sub_24BAA975C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_24BAA982C();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v69[3] = *&v69[27];
  *&v69[11] = *&v69[35];
  *&v69[19] = *&v69[43];
  v52 = sub_24BAA974C();
  KeyPath = swift_getKeyPath();
  v51 = KeyPath;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0EE0], v5);
  v10 = sub_24BAA98BC();
  v50 = v10;
  v11 = [objc_opt_self() quaternaryLabelColor];
  v47 = sub_24BAA973C();
  sub_24BAA832C();
  v12 = v70;
  v13 = v70 * 0.5;
  v14 = v71;
  v15 = v72;
  v41 = v72;
  v16 = v73;
  v43 = v74;
  v17 = v75;
  v44 = sub_24BAA9D1C();
  v19 = v18;
  v42 = v18;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v48 = sub_24BAA991C();
  sub_24BAA91BC();
  v20 = sub_24BAA919C();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  v46 = sub_24BAA91FC();
  sub_24B8F35E4(v4, &qword_27F063CD8);
  v45 = swift_getKeyPath();
  v21 = sub_24BAA974C();
  v22 = swift_getKeyPath();
  *&v81[0] = v53;
  WORD4(v81[0]) = 256;
  *(v81 + 10) = *v69;
  *(&v81[1] + 10) = *&v69[8];
  *(&v81[2] + 10) = *&v69[16];
  *(&v81[3] + 1) = *&v69[23];
  *&v82 = KeyPath;
  *(&v82 + 1) = v52;
  *&v83[0] = v10;
  v49 = xmmword_24BAB2760;
  *(v83 + 8) = xmmword_24BAB2760;
  *(&v83[1] + 1) = 0x4000000000000000;
  v54 = v81[0];
  v55 = v81[1];
  v58 = v82;
  v59 = v83[0];
  v56 = v81[2];
  v57 = v81[3];
  *&v84 = v13;
  *(&v84 + 1) = v12;
  *&v85 = __PAIR64__(v15, v14);
  LODWORD(KeyPath) = v14;
  *(&v85 + 1) = v16;
  v23 = v43;
  v24 = v44;
  *&v86 = v43;
  *(&v86 + 1) = v17;
  v25 = v47;
  *&v87 = v47;
  WORD4(v87) = 256;
  HIWORD(v87) = v77;
  *(&v87 + 10) = v76;
  *&v88 = v44;
  *(&v88 + 1) = v19;
  v90 = v79;
  v91 = v80;
  v89 = v78;
  v62 = v85;
  v63 = v86;
  v60 = v83[1];
  v61 = v84;
  v67 = v79;
  v68 = v80;
  v65 = v88;
  v66 = v78;
  v64 = v87;
  v26 = v81[1];
  *a1 = v81[0];
  *(a1 + 16) = v26;
  v27 = v56;
  v28 = v57;
  v29 = v59;
  *(a1 + 64) = v58;
  *(a1 + 80) = v29;
  *(a1 + 32) = v27;
  *(a1 + 48) = v28;
  v30 = v60;
  v31 = v61;
  v32 = v63;
  *(a1 + 128) = v62;
  *(a1 + 144) = v32;
  *(a1 + 96) = v30;
  *(a1 + 112) = v31;
  v33 = v64;
  v34 = v65;
  v35 = v68;
  *(a1 + 208) = v67;
  *(a1 + 224) = v35;
  v36 = v66;
  *(a1 + 176) = v34;
  *(a1 + 192) = v36;
  *(a1 + 160) = v33;
  v38 = v45;
  v37 = v46;
  *(a1 + 240) = v48;
  *(a1 + 248) = v38;
  *(a1 + 256) = v37;
  *(a1 + 264) = v22;
  *(a1 + 272) = v21;
  sub_24B8F3208(v81, v92, &qword_27F06AA20);
  sub_24B8F3208(&v84, v92, &qword_27F0692F0);
  *v92 = v13;
  *&v92[1] = v12;
  v93 = KeyPath;
  v94 = v41;
  v95 = v16;
  v96 = v23;
  v97 = v17;
  v98 = v25;
  v99 = 256;
  v100 = v76;
  v101 = v77;
  v102 = v24;
  v103 = v42;
  v105 = v79;
  v106 = v80;
  v104 = v78;
  sub_24B8F35E4(v92, &qword_27F0692F0);
  v109 = *v69;
  v107 = v53;
  v108 = 256;
  v110 = *&v69[8];
  *v111 = *&v69[16];
  *&v111[14] = *&v69[23];
  v112 = v51;
  v113 = v52;
  v114 = v50;
  v115 = v49;
  v116 = 0x4000000000000000;
  return sub_24B8F35E4(&v107, &qword_27F06AA20);
}

void *sub_24BA76018@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24BAA9D1C();
  v4 = v3;
  sub_24BA75AA4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_24B8F3208(__dst, &v6, &qword_27F06AA18);
  sub_24B8F35E4(v9, &qword_27F06AA18);
  *a1 = v2;
  a1[1] = v4;
  return memcpy(a1 + 2, __dst, 0x118uLL);
}

uint64_t sub_24BA760CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *a1 = sub_24BAA8A8C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA28);
  sub_24BA762D8(v1, a1 + *(v4 + 44));
  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA30) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA38) + 28);
  v8 = *MEMORY[0x277CDFA88];
  v9 = sub_24BAA855C();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = KeyPath;
  v19[0] = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA40);
  sub_24BAA99FC();
  v10 = v20;
  v11 = swift_allocObject();
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  *(v11 + 64) = *(v2 + 48);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA48);
  *(a1 + *(v13 + 52)) = v10;
  v14 = (a1 + *(v13 + 56));
  *v14 = sub_24BA81000;
  v14[1] = v11;
  v15 = swift_allocObject();
  v16 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v2 + 32);
  *(v15 + 64) = *(v2 + 48);
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA50) + 36));
  *v17 = sub_24BA81050;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  sub_24BA81078(v2, v19);
  return sub_24BA81078(v2, v19);
}

uint64_t sub_24BA762D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA68);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v22 - v8);
  *v9 = sub_24BAA9D1C();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA70);
  sub_24BA76458(a1, v9 + *(v11 + 44));
  LOBYTE(a1) = sub_24BAA90CC();
  sub_24BAA828C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_24B8F3208(v9, v7, &qword_27F06AA68);
  sub_24B8F3208(v7, a2, &qword_27F06AA68);
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA78) + 48);
  *v20 = a1;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  sub_24B8F35E4(v9, &qword_27F06AA68);
  return sub_24B8F35E4(v7, &qword_27F06AA68);
}

uint64_t sub_24BA76458@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA80) - 8;
  v3 = MEMORY[0x28223BE20](v127);
  v128 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v145 = &v123 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v140 = (&v123 - v8);
  MEMORY[0x28223BE20](v7);
  v132 = (&v123 - v9);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA88) - 8;
  v10 = MEMORY[0x28223BE20](v126);
  v144 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v146 = (&v123 - v12);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0671D8) - 8;
  v13 = MEMORY[0x28223BE20](v139);
  v143 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v147 = (&v123 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA90);
  v17 = v16 - 8;
  v18 = MEMORY[0x28223BE20](v16);
  v141 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v123 - v20;
  v22 = sub_24BAA869C();
  v23 = *(v22 + 20);
  v125 = v22;
  LODWORD(v131) = *MEMORY[0x277CE0118];
  v24 = v131;
  v25 = sub_24BAA8B2C();
  v26 = *(*(v25 - 8) + 104);
  v27 = v24;
  v28 = v25;
  v124 = v25;
  v26(&v21[v23], v27);
  __asm { FMOV            V0.2D, #17.0 }

  *v21 = _Q0;
  sub_24BAA832C();
  v34 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE0) + 36)];
  v35 = v149;
  *v34 = v148;
  *(v34 + 1) = v35;
  *(v34 + 4) = v150;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v36 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA98) + 36)];
  v142 = v21;
  v37 = v152;
  *v36 = v151;
  *(v36 + 1) = v37;
  *(v36 + 2) = v153;
  v38 = objc_opt_self();
  v39 = [v38 systemGray3Color];
  v40 = sub_24BAA973C();
  KeyPath = swift_getKeyPath();
  v42 = &v21[*(v17 + 44)];
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = *(v22 + 20);
  v44 = v147;
  (v26)(v147 + v43, v131, v28);
  v45 = v26;
  __asm { FMOV            V0.2D, #11.0 }

  *v44 = _Q0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0671D0);
  v48 = (v44 + *(v47 + 36));
  v49 = v155;
  *v48 = v154;
  v48[1] = v49;
  v48[2] = v156;
  v130 = v38;
  v50 = [v38 quaternarySystemFillColor];
  v51 = sub_24BAA973C();
  v52 = swift_getKeyPath();
  v53 = (v44 + *(v139 + 44));
  *v53 = v52;
  v53[1] = v51;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  LOBYTE(v51) = v158;
  v136 = v157;
  v137 = v159;
  LOBYTE(v26) = v160;
  v133 = v158;
  v134 = v160;
  v138 = v162;
  v139 = v161;
  v54 = [v38 systemGray3Color];
  *(&v135 + 1) = sub_24BAA973C();
  *&v135 = swift_getKeyPath();
  LOBYTE(v172) = v51;
  LOBYTE(v168) = v26;
  v55 = v146;
  (v45)(v146 + *(v125 + 20), v131, v124);
  __asm { FMOV            V0.2D, #0.5 }

  *v55 = _Q0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v57 = (v55 + *(v47 + 36));
  v58 = v164;
  *v57 = v163;
  v57[1] = v58;
  v57[2] = v165;
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAA0) + 36);
  v131 = xmmword_24BABD170;
  *(v55 + v59) = xmmword_24BABD170;
  v60 = a1[1];
  v172 = *a1;
  v173 = v60;
  v174 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA58);
  sub_24BAA99FC();
  v61 = (*(&v169 + 1) * 6.0 + 180.0) * 0.0174532925;
  sub_24BAA9DFC();
  v63 = v62;
  v65 = v64;
  v66 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAA8) + 36);
  v67 = v55;
  *v66 = v61;
  *(v66 + 1) = v63;
  *(v66 + 2) = v65;
  v68 = v130;
  v69 = [v130 systemGray3Color];
  v70 = sub_24BAA973C();
  v71 = swift_getKeyPath();
  v72 = (v67 + *(v126 + 44));
  *v72 = v71;
  v72[1] = v70;
  v73 = sub_24BAA9D0C();
  v74 = v132;
  *v132 = v73;
  v74[1] = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAB0);
  sub_24BA77028(0x4038000000000000, 0x4035000000000000, v74 + *(v76 + 44));
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAB8);
  *(v74 + *(v77 + 36)) = v131;
  v78 = a1[1];
  v172 = *a1;
  v173 = v78;
  v174 = *(a1 + 4);
  sub_24BAA99FC();
  v79 = *(&v168 + 1) * 6.0 + 180.0;
  v80 = a1[1];
  v172 = *a1;
  v173 = v80;
  v174 = *(a1 + 4);
  sub_24BAA99FC();
  v81 = (v79 + *&v169 * 0.1) * 0.0174532925;
  sub_24BAA9DFC();
  v83 = v82;
  v85 = v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAC0);
  v87 = v74 + *(v86 + 36);
  *v87 = v81;
  *(v87 + 1) = v83;
  *(v87 + 2) = v85;
  v88 = [v68 systemGray3Color];
  v89 = sub_24BAA973C();
  v90 = swift_getKeyPath();
  v91 = v127;
  v92 = (v74 + *(v127 + 44));
  *v92 = v90;
  v92[1] = v89;
  v93 = sub_24BAA9D0C();
  v94 = v140;
  *v140 = v93;
  v94[1] = v95;
  v96 = v94;
  sub_24BA77028(0x4030000000000000, 0x402A000000000000, v94 + *(v76 + 44));
  *(v96 + *(v77 + 36)) = xmmword_24BABD180;
  v97 = a1[1];
  v172 = *a1;
  v173 = v97;
  v174 = *(a1 + 4);
  sub_24BAA99FC();
  v98 = *&v168 * 30.0 + 180.0;
  v99 = a1[1];
  v172 = *a1;
  v173 = v99;
  v174 = *(a1 + 4);
  sub_24BAA99FC();
  v100 = (v98 + *(&v168 + 1) * 0.5) * 0.0174532925;
  sub_24BAA9DFC();
  v101 = v96 + *(v86 + 36);
  v102 = v96;
  *v101 = v100;
  *(v101 + 1) = v103;
  *(v101 + 2) = v104;
  v105 = [v130 systemGray3Color];
  v106 = sub_24BAA973C();
  v107 = swift_getKeyPath();
  v108 = (v102 + *(v91 + 44));
  *v108 = v107;
  v108[1] = v106;
  v109 = v141;
  sub_24B8F3208(v142, v141, &qword_27F06AA90);
  v110 = v143;
  sub_24B8F3208(v147, v143, &qword_27F0671D8);
  v111 = v144;
  sub_24B8F3208(v146, v144, &qword_27F06AA88);
  v112 = v145;
  sub_24B8F3208(v74, v145, &qword_27F06AA80);
  v113 = v102;
  v114 = v128;
  sub_24B8F3208(v113, v128, &qword_27F06AA80);
  v115 = v109;
  v116 = v129;
  sub_24B8F3208(v115, v129, &qword_27F06AA90);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAC8);
  sub_24B8F3208(v110, v116 + v117[12], &qword_27F0671D8);
  v118 = (v116 + v117[16]);
  *&v168 = v136;
  BYTE8(v168) = v133;
  HIDWORD(v168) = *&v167[3];
  *(&v168 + 9) = *v167;
  *&v169 = v137;
  BYTE8(v169) = v134;
  HIDWORD(v169) = *&v166[3];
  *(&v169 + 9) = *v166;
  *&v170 = v139;
  *(&v170 + 1) = v138;
  v171 = v135;
  v119 = v168;
  v120 = v169;
  v121 = v135;
  v118[2] = v170;
  v118[3] = v121;
  *v118 = v119;
  v118[1] = v120;
  sub_24B8F3208(v111, v116 + v117[20], &qword_27F06AA88);
  sub_24B8F3208(v112, v116 + v117[24], &qword_27F06AA80);
  sub_24B8F3208(v114, v116 + v117[28], &qword_27F06AA80);
  sub_24B8F3208(&v168, &v172, &qword_27F0671F0);
  sub_24B8F35E4(v140, &qword_27F06AA80);
  sub_24B8F35E4(v132, &qword_27F06AA80);
  sub_24B8F35E4(v146, &qword_27F06AA88);
  sub_24B8F35E4(v147, &qword_27F0671D8);
  sub_24B8F35E4(v142, &qword_27F06AA90);
  sub_24B8F35E4(v114, &qword_27F06AA80);
  sub_24B8F35E4(v145, &qword_27F06AA80);
  sub_24B8F35E4(v144, &qword_27F06AA88);
  *&v172 = v136;
  BYTE8(v172) = v133;
  *(&v172 + 9) = *v167;
  HIDWORD(v172) = *&v167[3];
  *&v173 = v137;
  BYTE8(v173) = v134;
  *(&v173 + 9) = *v166;
  HIDWORD(v173) = *&v166[3];
  v174 = v139;
  v175 = v138;
  v176 = v135;
  sub_24B8F35E4(&v172, &qword_27F0671F0);
  sub_24B8F35E4(v143, &qword_27F0671D8);
  return sub_24B8F35E4(v141, &qword_27F06AA90);
}

uint64_t sub_24BA77028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[0] = a1;
  v34[1] = a2;
  v36 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0671D0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v34 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v34 - v13;
  v15 = sub_24BAA869C();
  v16 = *(v15 + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_24BAA8B2C();
  v19 = *(*(v18 - 8) + 104);
  v19(&v14[v16], v17, v18);
  __asm { FMOV            V0.2D, #0.25 }

  *v14 = _Q0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v25 = &v14[*(v4 + 44)];
  v26 = v38;
  *v25 = v37;
  *(v25 + 1) = v26;
  *(v25 + 2) = v39;
  v19(&v12[*(v15 + 20)], v17, v18);
  __asm { FMOV            V0.2D, #1.0 }

  *v12 = _Q0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v28 = &v12[*(v4 + 44)];
  v29 = v41;
  *v28 = v40;
  *(v28 + 1) = v29;
  *(v28 + 2) = v42;
  sub_24B8F3208(v14, v9, &qword_27F0671D0);
  v30 = v35;
  sub_24B8F3208(v12, v35, &qword_27F0671D0);
  v31 = v36;
  sub_24B8F3208(v9, v36, &qword_27F0671D0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAD0);
  sub_24B8F3208(v30, v31 + *(v32 + 48), &qword_27F0671D0);
  sub_24B8F35E4(v12, &qword_27F0671D0);
  sub_24B8F35E4(v14, &qword_27F0671D0);
  sub_24B8F35E4(v30, &qword_27F0671D0);
  return sub_24B8F35E4(v9, &qword_27F0671D0);
}

uint64_t sub_24BA772EC(uint64_t a1)
{
  v2 = sub_24BAA855C();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24BAA884C();
}

uint64_t sub_24BA773B4(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v2 = sub_24BAA7F0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA7DCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24BAA7F2C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA7EBC();
  sub_24BAA7DBC();
  (*(v3 + 104))(v5, *MEMORY[0x277CC99A8], v2);
  v14 = sub_24BAA7F1C();
  (*(v3 + 8))(v5, v2);
  sub_24BAA9D3C();
  v18 = v17;
  v19 = v13;
  v20 = v9;
  v21 = v14;
  sub_24BAA842C();

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24BA77640(int a1)
{
  v20 = a1;
  v1 = sub_24BAA7F0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24BAA7DCC();
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_24BAA7F2C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24BAA7EBC();
  sub_24BAA7DBC();
  v10 = *(v2 + 104);
  v10(v4, *MEMORY[0x277CC99A8], v1);
  v11 = sub_24BAA7F1C();
  v12 = *(v2 + 8);
  v12(v4, v1);
  if (v20)
  {
    v13 = sub_24BAA9D3C();
    MEMORY[0x28223BE20](v13);
    *&v19[-32] = v22;
    *&v19[-24] = v9;
    *&v19[-16] = v7;
    *&v19[-8] = v11;
    sub_24BAA842C();
  }

  else
  {
    v10(v4, *MEMORY[0x277CC9980], v1);
    v14 = sub_24BAA7F1C();
    v12(v4, v1);
    v15 = v14;
    v10(v4, *MEMORY[0x277CC99A0], v1);
    v16 = sub_24BAA7F1C();
    v12(v4, v1);
    v17 = v22[1];
    v30 = *v22;
    v31 = v17;
    v32 = *(v22 + 4);
    v26 = v15;
    v27 = v16;
    v28 = v11;
    v29 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA58);
    sub_24BAA9A0C();
  }

  (*(v24 + 8))(v7, v25);
  return (*(v21 + 8))(v9, v23);
}

uint64_t sub_24BA779E8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v5 = sub_24BAA7F0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 104);
  v9(v8, *MEMORY[0x277CC9980], v5);
  v18 = sub_24BAA7F1C();
  v10 = *(v6 + 8);
  v10(v8, v5);
  v9(v8, *MEMORY[0x277CC99A0], v5);
  v11 = sub_24BAA7F1C();
  v10(v8, v5);
  if (v19)
  {
    v12 = v19;
  }

  else
  {
    v12 = 0.01;
  }

  v13 = v18;
  v27 = *(a1 + 4);
  v14 = a1[1];
  v25 = *a1;
  v26 = v14;
  v15 = a1[1];
  v22 = *a1;
  v23 = v15;
  v24 = *(a1 + 4);
  v28 = v27;
  sub_24B8F3208(&v28, v20, &qword_27F06AA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA58);
  sub_24BAA99FC();
  v22 = v25;
  v23 = v26;
  v24 = v27;
  *v20 = v13;
  *&v20[1] = v11;
  *&v20[2] = v12;
  v21 = v21 + 1.0;
  sub_24BAA9A0C();
  return sub_24B8F35E4(&v25, &qword_27F06AA58);
}

uint64_t sub_24BA77C34@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AD60);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v44[-v7];
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  v50 = sub_24BAA973C();
  sub_24BAA832C();
  v11 = v51;
  v12 = v51 * 0.5;
  v13 = v52;
  v45 = v52;
  v47 = v53;
  v14 = v54;
  v46 = v55;
  v15 = v56;
  v16 = sub_24BAA9D1C();
  v48 = v17;
  v49 = v16;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v18 = *(sub_24BAA869C() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_24BAA8B2C();
  (*(*(v20 - 8) + 104))(&v8[v18], v19, v20);
  __asm { FMOV            V0.2D, #2.0 }

  *v8 = _Q0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v26 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0671D0) + 36)];
  v27 = v58;
  *v26 = v57;
  *(v26 + 1) = v27;
  *(v26 + 2) = v59;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAA0) + 36)] = xmmword_24BAB6E10;
  v28 = [v9 systemGray3Color];
  v29 = sub_24BAA973C();
  KeyPath = swift_getKeyPath();
  v31 = &v8[*(v3 + 44)];
  *v31 = KeyPath;
  v31[1] = v29;
  sub_24B8F3208(v8, v6, &qword_27F06AD60);
  *&v65 = v12;
  *(&v65 + 1) = v11;
  *&v66 = __PAIR64__(v47, v13);
  v32 = v47;
  *(&v66 + 1) = v14;
  v33 = v46;
  *&v67 = v46;
  *(&v67 + 1) = v15;
  v34 = v49;
  *&v68 = v50;
  WORD4(v68) = 256;
  HIWORD(v68) = v64;
  *(&v68 + 10) = v63;
  v35 = v48;
  *&v69 = v49;
  *(&v69 + 1) = v48;
  v72 = v62;
  v71 = v61;
  v70 = v60;
  v36 = v65;
  v37 = v66;
  v38 = v68;
  a1[2] = v67;
  a1[3] = v38;
  *a1 = v36;
  a1[1] = v37;
  v39 = v69;
  v40 = v70;
  v41 = v72;
  a1[6] = v71;
  a1[7] = v41;
  a1[4] = v39;
  a1[5] = v40;
  v42 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AD68) + 48);
  sub_24B8F3208(v6, v42, &qword_27F06AD60);
  sub_24B8F3208(&v65, v73, &qword_27F06AD70);
  sub_24B8F35E4(v8, &qword_27F06AD60);
  sub_24B8F35E4(v6, &qword_27F06AD60);
  *v73 = v12;
  *&v73[1] = v11;
  v74 = v45;
  v75 = v32;
  v76 = v14;
  v77 = v33;
  v78 = v15;
  v79 = v50;
  v80 = 256;
  v81 = v63;
  v82 = v64;
  v83 = v34;
  v84 = v35;
  v87 = v62;
  v86 = v61;
  v85 = v60;
  return sub_24B8F35E4(v73, &qword_27F06AD70);
}

uint64_t sub_24BA78058@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24BAA9D1C();
  a1[1] = v2;
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AD50) + 44));
  *v3 = sub_24BAA9D1C();
  v3[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AD58);
  return sub_24BA77C34((v3 + *(v5 + 44)));
}

uint64_t sub_24BA78108@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v90 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAD8);
  MEMORY[0x28223BE20](v78);
  v3 = &v76 - v2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAE0);
  MEMORY[0x28223BE20](v80);
  v82 = &v76 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAE8);
  MEMORY[0x28223BE20](v81);
  v84 = &v76 - v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAF0);
  v6 = MEMORY[0x28223BE20](v89);
  v83 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v76 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AAF8);
  MEMORY[0x28223BE20](v87);
  v88 = &v76 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AB00);
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - v12;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AB08);
  MEMORY[0x28223BE20](v76);
  v15 = &v76 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AB10);
  MEMORY[0x28223BE20](v77);
  v17 = &v76 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AB18);
  v18 = MEMORY[0x28223BE20](v86);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v79 = &v76 - v21;
  v22 = objc_opt_self();
  v23 = [v22 currentDevice];
  v24 = [v23 userInterfaceIdiom];

  v25 = sub_24BAA8BCC();
  if (v24 == 1)
  {
    *v13 = v25;
    *(v13 + 1) = 0;
    v13[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AB88);
    sub_24BA78A40(v85 & 1, &v13[*(v26 + 44)]);
    v27 = sub_24BAA90AC();
    sub_24BAA828C();
    v28 = &v13[*(v11 + 36)];
    *v28 = v27;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    *(v28 + 3) = v31;
    *(v28 + 4) = v32;
    v28[40] = 0;
    v33 = [v22 currentDevice];
    [v33 userInterfaceIdiom];

    sub_24BA6ACDC();
    sub_24BAA9D1C();
    sub_24BAA83BC();
    sub_24B90294C(v13, v15, &qword_27F06AB00);
    v34 = &v15[*(v76 + 36)];
    v35 = v92;
    *v34 = v91;
    *(v34 + 1) = v35;
    *(v34 + 2) = v93;
    v36 = [objc_opt_self() quaternarySystemFillColor];
    v37 = sub_24BAA973C();
    v38 = sub_24BAA90BC();
    sub_24B90294C(v15, v17, &qword_27F06AB08);
    v39 = &v17[*(v77 + 36)];
    *v39 = v37;
    v39[8] = v38;
    v40 = &v20[*(v86 + 36)];
    v41 = *(sub_24BAA869C() + 20);
    v42 = *MEMORY[0x277CE0118];
    v43 = sub_24BAA8B2C();
    (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
    __asm { FMOV            V0.2D, #13.0 }

    *v40 = _Q0;
    *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
    sub_24B90294C(v17, v20, &qword_27F06AB10);
    v49 = v79;
    sub_24B90294C(v20, v79, &qword_27F06AB18);
    sub_24B8F3208(v49, v88, &qword_27F06AB18);
    swift_storeEnumTagMultiPayload();
    sub_24BA810D0();
    sub_24BA81324();
    sub_24BAA8D0C();
    v50 = v49;
    v51 = &qword_27F06AB18;
  }

  else
  {
    *v3 = v25;
    *(v3 + 1) = 0;
    v3[16] = 0;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AB20);
    sub_24BA7B294(&v3[*(v52 + 44)]);
    v53 = v9;
    v54 = sub_24BAA90CC();
    sub_24BAA828C();
    v55 = &v3[*(v78 + 36)];
    *v55 = v54;
    *(v55 + 1) = v56;
    *(v55 + 2) = v57;
    *(v55 + 3) = v58;
    *(v55 + 4) = v59;
    v55[40] = 0;
    v60 = [v22 currentDevice];
    [v60 userInterfaceIdiom];

    sub_24BA6ACDC();
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v61 = v82;
    sub_24B90294C(v3, v82, &qword_27F06AAD8);
    v62 = (v61 + *(v80 + 36));
    v63 = v92;
    *v62 = v91;
    v62[1] = v63;
    v62[2] = v93;
    v64 = [objc_opt_self() quaternarySystemFillColor];
    v65 = sub_24BAA973C();
    v66 = sub_24BAA90BC();
    v67 = v84;
    sub_24B90294C(v61, v84, &qword_27F06AAE0);
    v68 = v67 + *(v81 + 36);
    *v68 = v65;
    *(v68 + 8) = v66;
    v69 = v83;
    v70 = &v83[*(v89 + 36)];
    v71 = *(sub_24BAA869C() + 20);
    v72 = *MEMORY[0x277CE0118];
    v73 = sub_24BAA8B2C();
    (*(*(v73 - 8) + 104))(&v70[v71], v72, v73);
    __asm { FMOV            V0.2D, #13.0 }

    *v70 = _Q0;
    *&v70[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
    sub_24B90294C(v67, v69, &qword_27F06AAE8);
    sub_24B90294C(v69, v53, &qword_27F06AAF0);
    sub_24B8F3208(v53, v88, &qword_27F06AAF0);
    swift_storeEnumTagMultiPayload();
    sub_24BA810D0();
    sub_24BA81324();
    sub_24BAA8D0C();
    v50 = v53;
    v51 = &qword_27F06AAF0;
  }

  return sub_24B8F35E4(v50, v51);
}

uint64_t sub_24BA78A40@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v156) = a1;
  v164 = a2;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AB90);
  MEMORY[0x28223BE20](v163);
  v3 = &v121[-v2];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AB98);
  v4 = MEMORY[0x28223BE20](v150);
  v152 = &v121[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = &v121[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ABA0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v121[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v121[-v12];
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ABA8);
  MEMORY[0x28223BE20](v158);
  v161 = &v121[-v14];
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ABB0);
  MEMORY[0x28223BE20](v159);
  v16 = &v121[-v15];
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ABB8);
  v17 = MEMORY[0x28223BE20](v151);
  v155 = &v121[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v157 = &v121[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ABC0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v154 = &v121[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v24 = &v121[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0);
  v26 = MEMORY[0x28223BE20](v25);
  v153 = &v121[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v29 = &v121[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ABC8);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v162 = &v121[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  v160 = &v121[-v33];
  if (v156)
  {
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v156 = v179;
    v152 = v181;
    v149 = v184;
    v150 = v183;
    v173 = 1;
    v172 = v180;
    v171 = v182;
    v34 = *(sub_24BAA869C() + 20);
    v35 = *MEMORY[0x277CE0118];
    v36 = sub_24BAA8B2C();
    (*(*(v36 - 8) + 104))(&v29[v34], v35, v36);
    __asm { FMOV            V0.2D, #4.0 }

    *v29 = _Q0;
    v42 = [objc_opt_self() systemGray3Color];
    v43 = sub_24BAA973C();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
    *&v29[*(v44 + 52)] = v43;
    *&v29[*(v44 + 56)] = 256;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v45 = &v29[*(v25 + 36)];
    v46 = v186;
    *v45 = v185;
    *(v45 + 1) = v46;
    *(v45 + 2) = v187;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v147 = v190;
    v148 = v188;
    v145 = v193;
    v146 = v192;
    v176 = 1;
    v175 = v189;
    v174 = v191;
    *v24 = sub_24BAA8AAC();
    *(v24 + 1) = 0x4014000000000000;
    v24[16] = 0;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC00);
    sub_24BA79AF8(&v24[*(v47 + 44)]);
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v143 = v196;
    v144 = v194;
    v141 = v199;
    v142 = v198;
    LOBYTE(v206) = 1;
    v178 = v195;
    v177 = v197;
    v48 = v29;
    v49 = v24;
    if (sub_24BA79E00())
    {
      v140 = sub_24BAA8AAC();
      sub_24BAA9D1C();
      sub_24BAA83BC();
      v138 = v202;
      v139 = v200;
      v136 = v205;
      v137 = v204;
      v169 = 1;
      v168 = v201;
      v167 = v203;
      v135 = sub_24BAA8AAC();
      v134 = 0;
      v133 = v169;
      v132 = v168;
      v131 = v167;
      v166 = 0;
      v165 = 0;
      v128 = 0;
      v130 = 0;
      v129 = 0x4024000000000000;
      v170 = 0;
    }

    else
    {
      v139 = 0;
      v140 = 0;
      v132 = 0;
      v133 = 0;
      v137 = 0;
      v138 = 0;
      v131 = 0;
      v135 = 0;
      v136 = 0;
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v134 = 1;
    }

    v51 = sub_24BAA9D1C();
    v52 = v157;
    *v157 = v51;
    v52[1] = v53;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC08);
    sub_24BA7AF7C(0x4056800000000000, 0x4024000000000000, &qword_27F06AC20, &unk_24BABDD18, v52 + *(v54 + 44));
    v55 = sub_24BAA90BC();
    sub_24BAA828C();
    v56 = v52 + *(v151 + 36);
    *v56 = v55;
    *(v56 + 1) = v57;
    *(v56 + 2) = v58;
    *(v56 + 3) = v59;
    *(v56 + 4) = v60;
    v56[40] = 0;
    v61 = v173;
    v62 = v172;
    v63 = v171;
    v64 = v153;
    sub_24B8F3208(v48, v153, &qword_27F065BA0);
    v65 = v176;
    v122 = v175;
    v123 = v174;
    v66 = v49;
    v127 = v49;
    v67 = v154;
    sub_24B8F3208(v66, v154, &qword_27F06ABC0);
    v151 = v48;
    v124 = v206;
    v125 = v178;
    v126 = v177;
    v68 = v155;
    sub_24B8F3208(v52, v155, &qword_27F06ABB8);
    *v16 = 0;
    v16[8] = v61;
    *(v16 + 2) = v156;
    v16[24] = v62;
    *(v16 + 4) = v152;
    v16[40] = v63;
    v69 = v149;
    *(v16 + 6) = v150;
    *(v16 + 7) = v69;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC10);
    sub_24B8F3208(v64, &v16[v70[12]], &qword_27F065BA0);
    v71 = &v16[v70[16]];
    *v71 = 0;
    v71[8] = v65;
    *(v71 + 2) = v148;
    v71[24] = v122;
    *(v71 + 4) = v147;
    v71[40] = v123;
    v72 = v145;
    *(v71 + 6) = v146;
    *(v71 + 7) = v72;
    sub_24B8F3208(v67, &v16[v70[20]], &qword_27F06ABC0);
    v73 = &v16[v70[24]];
    *v73 = 0;
    v73[8] = v124;
    *(v73 + 2) = v144;
    v73[24] = v125;
    *(v73 + 4) = v143;
    v73[40] = v126;
    v74 = v141;
    *(v73 + 6) = v142;
    *(v73 + 7) = v74;
    v75 = &v16[v70[28]];
    v76 = v129;
    *v75 = v140;
    *(v75 + 1) = v76;
    *(v75 + 2) = v128;
    *(v75 + 3) = 0;
    v77 = v139;
    *(v75 + 4) = v133;
    *(v75 + 5) = v77;
    v78 = v138;
    *(v75 + 6) = v132;
    *(v75 + 7) = v78;
    v79 = v137;
    *(v75 + 8) = v131;
    *(v75 + 9) = v79;
    v80 = v135;
    *(v75 + 10) = v136;
    *(v75 + 11) = v80;
    *(v75 + 12) = v76;
    v75[104] = v130;
    v75[105] = v134;
    v81 = &v16[v70[32]];
    *v81 = 0;
    v81[8] = 1;
    sub_24B8F3208(v68, &v16[v70[36]], &qword_27F06ABB8);
    sub_24B8F35E4(v68, &qword_27F06ABB8);
    sub_24B8F35E4(v67, &qword_27F06ABC0);
    sub_24B8F35E4(v64, &qword_27F065BA0);
    sub_24B8F3208(v16, v161, &qword_27F06ABB0);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F06ABE8, &qword_27F06ABB0);
    sub_24B8F384C(&qword_27F06ABF0, &qword_27F06AB90);
    v82 = v160;
    sub_24BAA8D0C();
    sub_24B8F35E4(v16, &qword_27F06ABB0);
    sub_24B8F35E4(v157, &qword_27F06ABB8);
    sub_24B8F35E4(v127, &qword_27F06ABC0);
    v83 = v151;
    v84 = &qword_27F065BA0;
  }

  else
  {
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v156 = v190;
    v157 = v188;
    v154 = v193;
    v155 = v192;
    v178 = 1;
    v177 = v189;
    v176 = v191;
    *v13 = sub_24BAA8AAC();
    *(v13 + 1) = 0x4014000000000000;
    v13[16] = 0;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ABD0);
    sub_24BA7A488(&v13[*(v50 + 44)]);
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v153 = v194;
    v151 = v196;
    v148 = v199;
    v149 = v198;
    LOBYTE(v206) = 1;
    LOBYTE(v185) = v195;
    LOBYTE(v179) = v197;
    if (sub_24BA79E00())
    {
      v147 = sub_24BAA8AAC();
      sub_24BAA9D1C();
      sub_24BAA83BC();
      v145 = v202;
      v146 = v200;
      v143 = v205;
      v144 = v204;
      v174 = 1;
      v173 = v201;
      v172 = v203;
      v142 = sub_24BAA8AAC();
      LODWORD(v141) = 0;
      v140 = v174;
      v139 = v173;
      v138 = v172;
      v171 = 0;
      v170 = 0;
      v135 = 0;
      LODWORD(v137) = 0;
      v136 = 0x4030000000000000;
      v175 = 0;
    }

    else
    {
      v146 = 0;
      v147 = 0;
      v139 = 0;
      v140 = 0;
      v144 = 0;
      v145 = 0;
      v138 = 0;
      v142 = 0;
      v143 = 0;
      v135 = 0;
      v136 = 0;
      LODWORD(v137) = 0;
      LODWORD(v141) = 1;
    }

    *v7 = sub_24BAA9D1C();
    v7[1] = v85;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ABD8);
    sub_24BA7AF7C(0x4061800000000000, 0x4030000000000000, &qword_27F06AC60, &unk_24BABDD58, v7 + *(v86 + 44));
    v87 = sub_24BAA90BC();
    sub_24BAA828C();
    v88 = v7 + *(v150 + 36);
    *v88 = v87;
    *(v88 + 1) = v89;
    *(v88 + 2) = v90;
    *(v88 + 3) = v91;
    *(v88 + 4) = v92;
    v88[40] = 0;
    v93 = v178;
    v94 = v177;
    v95 = v176;
    v96 = v11;
    sub_24B8F3208(v13, v11, &qword_27F06ABA0);
    v150 = v13;
    v97 = v206;
    v98 = v185;
    v134 = v179;
    v99 = v152;
    sub_24B8F3208(v7, v152, &qword_27F06AB98);
    *v3 = 0;
    v3[8] = v93;
    v100 = v156;
    *(v3 + 2) = v157;
    v3[24] = v94;
    *(v3 + 4) = v100;
    v3[40] = v95;
    v101 = v154;
    *(v3 + 6) = v155;
    *(v3 + 7) = v101;
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ABE0);
    sub_24B8F3208(v96, &v3[v102[12]], &qword_27F06ABA0);
    v103 = &v3[v102[16]];
    *v103 = 0;
    v103[8] = v97;
    *(v103 + 2) = v153;
    v103[24] = v98;
    *(v103 + 4) = v151;
    v103[40] = v134;
    v104 = v148;
    *(v103 + 6) = v149;
    *(v103 + 7) = v104;
    v105 = &v3[v102[20]];
    v106 = v136;
    *v105 = v147;
    *(v105 + 1) = v106;
    *(v105 + 2) = v135;
    *(v105 + 3) = 0;
    v107 = v146;
    *(v105 + 4) = v140;
    *(v105 + 5) = v107;
    v108 = v145;
    *(v105 + 6) = v139;
    *(v105 + 7) = v108;
    v109 = v144;
    *(v105 + 8) = v138;
    *(v105 + 9) = v109;
    v110 = v142;
    *(v105 + 10) = v143;
    *(v105 + 11) = v110;
    *(v105 + 12) = v106;
    v105[104] = v137;
    v105[105] = v141;
    v111 = &v3[v102[24]];
    *v111 = 0;
    v111[8] = 1;
    sub_24B8F3208(v99, &v3[v102[28]], &qword_27F06AB98);
    sub_24B8F35E4(v99, &qword_27F06AB98);
    sub_24B8F35E4(v96, &qword_27F06ABA0);
    sub_24B8F3208(v3, v161, &qword_27F06AB90);
    swift_storeEnumTagMultiPayload();
    sub_24B8F384C(&qword_27F06ABE8, &qword_27F06ABB0);
    sub_24B8F384C(&qword_27F06ABF0, &qword_27F06AB90);
    v82 = v160;
    sub_24BAA8D0C();
    sub_24B8F35E4(v3, &qword_27F06AB90);
    sub_24B8F35E4(v7, &qword_27F06AB98);
    v83 = v150;
    v84 = &qword_27F06ABA0;
  }

  sub_24B8F35E4(v83, v84);
  sub_24BA79E00();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v163 = v206;
  v161 = v208;
  v112 = v211;
  v159 = v210;
  v178 = 1;
  v177 = v207;
  v176 = v209;
  v113 = v162;
  sub_24B8F3208(v82, v162, &qword_27F06ABC8);
  v114 = v178;
  v115 = v177;
  v116 = v82;
  v117 = v176;
  v118 = v164;
  sub_24B8F3208(v113, v164, &qword_27F06ABC8);
  v119 = v118 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ABF8) + 48);
  *v119 = 0;
  *(v119 + 8) = v114;
  *(v119 + 16) = v163;
  *(v119 + 24) = v115;
  *(v119 + 32) = v161;
  *(v119 + 40) = v117;
  *(v119 + 48) = v159;
  *(v119 + 56) = v112;
  sub_24B8F35E4(v116, &qword_27F06ABC8);
  return sub_24B8F35E4(v113, &qword_27F06ABC8);
}

uint64_t sub_24BA79AF8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC28);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  *v14 = sub_24BAA8BCC();
  *(v14 + 1) = 0x4014000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC30);
  sub_24BA7A900(0x4032000000000000, &v14[*(v15 + 44)]);
  v16 = *(sub_24BAA869C() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_24BAA8B2C();
  (*(*(v18 - 8) + 104))(&v8[v16], v17, v18);
  __asm { FMOV            V0.2D, #3.0 }

  *v8 = _Q0;
  v24 = [objc_opt_self() systemGray3Color];
  v25 = sub_24BAA973C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&v8[*(v26 + 52)] = v25;
  *&v8[*(v26 + 56)] = 256;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v27 = &v8[*(v3 + 44)];
  v28 = v31[1];
  *v27 = v31[0];
  *(v27 + 1) = v28;
  *(v27 + 2) = v31[2];
  sub_24B8F3208(v14, v12, &qword_27F06AC28);
  sub_24B8F3208(v8, v6, &qword_27F065BA0);
  sub_24B8F3208(v12, a1, &qword_27F06AC28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC38);
  sub_24B8F3208(v6, a1 + *(v29 + 48), &qword_27F065BA0);
  sub_24B8F35E4(v8, &qword_27F065BA0);
  sub_24B8F35E4(v14, &qword_27F06AC28);
  sub_24B8F35E4(v6, &qword_27F065BA0);
  return sub_24B8F35E4(v12, &qword_27F06AC28);
}

BOOL sub_24BA79E00()
{
  v49[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_24B8F37E8(0, &qword_27F066AB0);
  sub_24BA57E20();
  v2 = sub_24BAAA20C();

  v47[2] = 0;
  if ((v2 & 0xC000000000000001) == 0)
  {
    v19 = *(v2 + 32);
    v5 = ((1 << v19) + 63) >> 6;
    if ((v19 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_76;
  }

  v4 = MEMORY[0x277D84FA0];
  v49[0] = MEMORY[0x277D84FA0];
  v2 = sub_24BAAA4DC();
  v5 = v2;
  for (i = sub_24BAAA56C(); i; i = sub_24BAAA56C())
  {
    v47[3] = i;
    swift_dynamicCast();
    v7 = v48;
    if ([v48 activationState])
    {
    }

    else
    {
      v8 = v4[2];
      if (v4[3] <= v8)
      {
        sub_24B8E75B0(v8 + 1);
      }

      v4 = v49[0];
      v5 = v48;
      v9 = sub_24BAAA3BC();
      v10 = v49[0] + 56;
      v11 = -1 << *(v49[0] + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v49[0] + 56 + 8 * (v12 >> 6))) != 0)
      {
        v14 = __clz(__rbit64((-1 << v12) & ~*(v49[0] + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = 0;
        v16 = (63 - v11) >> 6;
        do
        {
          if (++v13 == v16 && (v15 & 1) != 0)
          {
            __break(1u);
            goto LABEL_55;
          }

          v17 = v13 == v16;
          if (v13 == v16)
          {
            v13 = 0;
          }

          v15 |= v17;
          v18 = *(v10 + 8 * v13);
        }

        while (v18 == -1);
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      }

      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v4[6] + 8 * v14) = v7;
      ++v4[2];
    }

    v5 = v2;
  }

LABEL_37:
  sub_24BA51258(v4);
  v2 = v33;

  if (v2 >> 62)
  {
    while (1)
    {
      if (!sub_24BAAA52C())
      {
        goto LABEL_59;
      }

LABEL_39:
      if ((v2 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x24C2506E0](0, v2);
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_71:
          if (!sub_24BAAA52C())
          {
LABEL_72:

            return 0;
          }

          goto LABEL_66;
        }

        v34 = *(v2 + 32);
      }

      v5 = v34;

      v35 = [v5 windows];

      sub_24B8F37E8(0, &qword_27F069E10);
      v2 = sub_24BAAA12C();

      v49[0] = MEMORY[0x277D84F90];
      if (v2 >> 62)
      {
        v36 = sub_24BAAA52C();
        if (v36)
        {
LABEL_44:
          v37 = 0;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v38 = MEMORY[0x24C2506E0](v37, v2);
            }

            else
            {
              if (v37 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }

              v38 = *(v2 + 8 * v37 + 32);
            }

            v39 = v38;
            v40 = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              break;
            }

            if ([v38 isKeyWindow])
            {
              v5 = v49;
              sub_24BAAA66C();
              sub_24BAAA69C();
              sub_24BAAA6AC();
              sub_24BAAA67C();
            }

            else
            {
            }

            ++v37;
            if (v40 == v36)
            {
              v5 = v49[0];
              goto LABEL_63;
            }
          }

LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      else
      {
        v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36)
        {
          goto LABEL_44;
        }
      }

      v5 = MEMORY[0x277D84F90];
LABEL_63:

      if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
      {
        goto LABEL_71;
      }

      if (!*(v5 + 16))
      {
        goto LABEL_72;
      }

LABEL_66:
      if ((v5 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x24C2506E0](0, v5);
        goto LABEL_69;
      }

      if (*(v5 + 16))
      {
        v41 = *(v5 + 32);
LABEL_69:
        v42 = v41;

        [v42 safeAreaInsets];
        v44 = v43;

        return v44 > 0.0;
      }

      __break(1u);
LABEL_76:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v46 = swift_slowAlloc();
        v4 = sub_24BA692A4(v46, v5, v2, sub_24BA51B5C, 0);

        MEMORY[0x24C251390](v46, -1, -1);
        goto LABEL_37;
      }

LABEL_22:
      v47[1] = v47;
      MEMORY[0x28223BE20](v3);
      v21 = v47 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v21, v20);
      v22 = 0;
      v23 = 0;
      v24 = 1 << *(v2 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v2 + 56);
      v27 = (v24 + 63) >> 6;
      while (v26)
      {
        v28 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
LABEL_32:
        v31 = v28 | (v23 << 6);
        if (![*(*(v2 + 48) + 8 * v31) activationState])
        {
          *&v21[(v31 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v31;
          if (__OFADD__(v22++, 1))
          {
            __break(1u);
LABEL_36:
            v4 = sub_24BA29F5C(v21, v5, v22, v2);
            goto LABEL_37;
          }
        }
      }

      v29 = v23;
      while (1)
      {
        v23 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v23 >= v27)
        {
          goto LABEL_36;
        }

        v30 = *(v2 + 56 + 8 * v23);
        ++v29;
        if (v30)
        {
          v28 = __clz(__rbit64(v30));
          v26 = (v30 - 1) & v30;
          goto LABEL_32;
        }
      }

LABEL_57:
      __break(1u);
    }
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

LABEL_59:

  return 0;
}

uint64_t sub_24BA7A488@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0) - 8;
  v1 = MEMORY[0x28223BE20](v45);
  v47 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v46 = &v43 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v43 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC28);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  *v14 = sub_24BAA8BCC();
  *(v14 + 1) = 0x4014000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC30);
  sub_24BA7A900(0x4033000000000000, &v14[*(v15 + 44)]);
  v16 = sub_24BAA869C();
  v17 = *(v16 + 20);
  v44 = *MEMORY[0x277CE0118];
  v18 = v44;
  v19 = sub_24BAA8B2C();
  v20 = *(*(v19 - 8) + 104);
  v20(&v9[v17], v18, v19);
  __asm { FMOV            V0.2D, #3.0 }

  v43 = _Q0;
  *v9 = _Q0;
  v26 = objc_opt_self();
  v27 = [v26 systemGray3Color];
  v28 = sub_24BAA973C();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&v9[*(v29 + 52)] = v28;
  *&v9[*(v29 + 56)] = 256;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v30 = v45;
  v31 = &v9[*(v45 + 44)];
  v32 = v51;
  *v31 = v50;
  *(v31 + 1) = v32;
  *(v31 + 2) = v52;
  v20(&v7[*(v16 + 20)], v44, v19);
  *v7 = v43;
  v33 = [v26 systemGray3Color];
  *&v7[*(v29 + 52)] = sub_24BAA973C();
  *&v7[*(v29 + 56)] = 256;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v34 = &v7[*(v30 + 44)];
  v35 = v54;
  *v34 = v53;
  *(v34 + 1) = v35;
  *(v34 + 2) = v55;
  v36 = v49;
  sub_24B8F3208(v14, v49, &qword_27F06AC28);
  v37 = v46;
  sub_24B8F3208(v9, v46, &qword_27F065BA0);
  v38 = v47;
  sub_24B8F3208(v7, v47, &qword_27F065BA0);
  v39 = v36;
  v40 = v48;
  sub_24B8F3208(v39, v48, &qword_27F06AC28);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC68);
  sub_24B8F3208(v37, v40 + *(v41 + 48), &qword_27F065BA0);
  sub_24B8F3208(v38, v40 + *(v41 + 64), &qword_27F065BA0);
  sub_24B8F35E4(v7, &qword_27F065BA0);
  sub_24B8F35E4(v9, &qword_27F065BA0);
  sub_24B8F35E4(v14, &qword_27F06AC28);
  sub_24B8F35E4(v38, &qword_27F065BA0);
  sub_24B8F35E4(v37, &qword_27F065BA0);
  return sub_24B8F35E4(v49, &qword_27F06AC28);
}

uint64_t sub_24BA7A900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v32 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC40);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  *v15 = sub_24BAA8AAC();
  *(v15 + 1) = 0x4014000000000000;
  v15[16] = 0;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC48) + 44);
  __asm { FMOV            V0.2D, #3.0 }

  v32 = _Q0;
  sub_24BA7AC14(0x4032000000000000, &v15[v16], _Q0);
  v22 = *(sub_24BAA869C() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_24BAA8B2C();
  (*(*(v24 - 8) + 104))(v9 + v22, v23, v24);
  *v9 = v32;
  v25 = [objc_opt_self() systemGray3Color];
  v26 = sub_24BAA973C();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *(v9->n128_u64 + *(v27 + 52)) = v26;
  *(v9->n128_u16 + *(v27 + 56)) = 256;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v28 = (v9->n128_u64 + *(v4 + 44));
  v29 = v35;
  *v28 = v34;
  v28[1] = v29;
  v28[2] = v36;
  sub_24B8F3208(v15, v13, &qword_27F06AC40);
  sub_24B8F3208(v9, v7, &qword_27F065BA0);
  sub_24B8F3208(v13, a2, &qword_27F06AC40);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC50);
  sub_24B8F3208(v7, a2 + *(v30 + 48), &qword_27F065BA0);
  sub_24B8F35E4(v9, &qword_27F065BA0);
  sub_24B8F35E4(v15, &qword_27F06AC40);
  sub_24B8F35E4(v7, &qword_27F065BA0);
  return sub_24B8F35E4(v13, &qword_27F06AC40);
}

uint64_t sub_24BA7AC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v35 = a1;
  v39 = a3;
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v37 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v33[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v33[-v12];
  v14 = sub_24BAA869C();
  v15 = *(v14 + 20);
  v34 = *MEMORY[0x277CE0118];
  v16 = v34;
  v17 = sub_24BAA8B2C();
  v18 = *(*(v17 - 8) + 104);
  v18(v13 + v15, v16, v17);
  *v13 = v39;
  v19 = objc_opt_self();
  v20 = [v19 systemGray3Color];
  v21 = sub_24BAA973C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *(v13->n128_u64 + *(v22 + 52)) = v21;
  *(v13->n128_u16 + *(v22 + 56)) = 256;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v23 = (v13->n128_u64 + *(v4 + 44));
  v24 = v41;
  *v23 = v40;
  v23[1] = v24;
  v23[2] = v42;
  v18(v11 + *(v14 + 20), v34, v17);
  *v11 = v39;
  v25 = [v19 systemGray3Color];
  *(v11->n128_u64 + *(v22 + 52)) = sub_24BAA973C();
  *(v11->n128_u16 + *(v22 + 56)) = 256;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v26 = (v11->n128_u64 + *(v4 + 44));
  v27 = v44;
  *v26 = v43;
  v26[1] = v27;
  v26[2] = v45;
  v28 = v36;
  sub_24B8F3208(v13, v36, &qword_27F065BA0);
  v29 = v37;
  sub_24B8F3208(v11, v37, &qword_27F065BA0);
  v30 = v38;
  sub_24B8F3208(v28, v38, &qword_27F065BA0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC58);
  sub_24B8F3208(v29, v30 + *(v31 + 48), &qword_27F065BA0);
  sub_24B8F35E4(v11, &qword_27F065BA0);
  sub_24B8F35E4(v13, &qword_27F065BA0);
  sub_24B8F35E4(v29, &qword_27F065BA0);
  return sub_24B8F35E4(v28, &qword_27F065BA0);
}

uint64_t sub_24BA7AF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a3;
  v44 = a4;
  v41[1] = a1;
  v42 = a2;
  v6 = sub_24BAA869C();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC18);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v41 - v15;
  v17 = sub_24BAA8AAC();
  v18 = *(v7 + 28);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_24BAA8B2C();
  (*(*(v20 - 8) + 104))(&v9[v18], v19, v20);
  __asm { FMOV            V0.2D, #4.0 }

  *v9 = _Q0;
  v26 = [objc_opt_self() systemGray3Color];
  v27 = sub_24BAA973C();
  sub_24BAA832C();
  sub_24BA7F4E4(v9, v16, MEMORY[0x277CDFC08]);
  v28 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE0) + 36)];
  v29 = v46;
  *v28 = v45;
  *(v28 + 1) = v29;
  *(v28 + 4) = v47;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE8);
  *&v16[*(v30 + 52)] = v27;
  *&v16[*(v30 + 56)] = 256;
  v31 = sub_24BAA9D1C();
  v33 = v32;
  sub_24BA7FFB4(v9, MEMORY[0x277CDFC08]);
  v34 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AF0) + 36)];
  *v34 = v31;
  v34[1] = v33;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v35 = &v16[*(v11 + 44)];
  v36 = v49;
  *v35 = v48;
  *(v35 + 1) = v36;
  *(v35 + 2) = v50;
  sub_24B8F3208(v16, v14, &qword_27F06AC18);
  v38 = v42;
  v37 = v43;
  *a5 = v17;
  *(a5 + 8) = v38;
  *(a5 + 16) = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(v37);
  sub_24B8F3208(v14, a5 + *(v39 + 48), &qword_27F06AC18);
  sub_24B8F35E4(v16, &qword_27F06AC18);
  return sub_24B8F35E4(v14, &qword_27F06AC18);
}

uint64_t sub_24BA7B294@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC70);
  v2 = MEMORY[0x28223BE20](v1);
  v98 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v96 = (&v75 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v75 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v75 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC80);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v95 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v101 = &v75 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC40);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v100 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v75 - v22;
  *v23 = sub_24BAA8AAC();
  *(v23 + 1) = 0x4018000000000000;
  v23[16] = 0;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC48) + 44);
  __asm { FMOV            V0.2D, #4.0 }

  v99 = v23;
  v90 = _Q0;
  sub_24BA7AC14(0x403C000000000000, &v23[v24], _Q0);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v93 = v110;
  v94 = v108;
  v91 = v113;
  v92 = v112;
  v137 = 1;
  v136 = v109;
  v135 = v111;
  if (sub_24BA79E00())
  {
    v30 = sub_24BAA869C();
    v88 = v5;
    v31 = *(v30 + 20);
    v89 = v1;
    v32 = *MEMORY[0x277CE0118];
    v33 = sub_24BAA8B2C();
    (*(*(v33 - 8) + 104))(v14 + v31, v32, v33);
    *v14 = v90;
    v34 = [objc_opt_self() systemGray3Color];
    v35 = sub_24BAA973C();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
    *(v14->n128_u64 + *(v36 + 52)) = v35;
    *(v14->n128_u16 + *(v36 + 56)) = 256;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v37 = (v14->n128_u64 + *(v9 + 36));
    v38 = v115;
    *v37 = v114;
    v37[1] = v38;
    v37[2] = v116;
    sub_24BAA9D1C();
    sub_24BAA83BC();
    v90.n128_u64[0] = v117;
    v86 = v121;
    v87 = v119;
    v85 = v122;
    LOBYTE(v129) = 1;
    LOBYTE(v123) = v118;
    v107 = v120;
    sub_24B8F3208(v14, v12, &qword_27F065BA0);
    v39 = v129;
    v40 = v123;
    LOBYTE(v31) = v107;
    sub_24B8F3208(v12, v8, &qword_27F065BA0);
    v41 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC98) + 48)];
    *v41 = 0;
    v41[8] = v39;
    v42 = v101;
    *(v41 + 2) = v90.n128_u64[0];
    v41[24] = v40;
    v43 = v86;
    *(v41 + 4) = v87;
    v41[40] = v31;
    v44 = v85;
    *(v41 + 6) = v43;
    *(v41 + 7) = v44;
    sub_24B8F35E4(v14, &qword_27F065BA0);
    v1 = v89;
    sub_24B8F35E4(v12, &qword_27F065BA0);
    sub_24B90294C(v8, v42, &qword_27F06AC78);
    (*(v6 + 56))(v42, 0, 1, v88);
  }

  else
  {
    (*(v6 + 56))(v101, 1, 1, v5);
  }

  v90.n128_u64[0] = sub_24BAA8AAC();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v88 = v125;
  v89 = v123;
  v86 = v128;
  v87 = v127;
  v104 = 1;
  v103 = v124;
  v102 = v126;
  v85 = sub_24BAA8AAC();
  v45 = sub_24BAA9D1C();
  v46 = v96;
  *v96 = v45;
  *(v46 + 8) = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC88);
  sub_24BA7BB9C(v46 + *(v48 + 44));
  v49 = sub_24BAA90BC();
  sub_24BAA828C();
  v50 = v46 + *(v1 + 36);
  *v50 = v49;
  *(v50 + 8) = v51;
  *(v50 + 16) = v52;
  *(v50 + 24) = v53;
  *(v50 + 32) = v54;
  *(v50 + 40) = 0;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v83 = v131;
  v84 = v129;
  v81 = v134;
  v82 = v133;
  v107 = 1;
  v106 = v130;
  v105 = v132;
  v55 = v100;
  sub_24B8F3208(v99, v100, &qword_27F06AC40);
  v56 = v137;
  v57 = v136;
  v58 = v135;
  v59 = v95;
  sub_24B8F3208(v101, v95, &qword_27F06AC80);
  v75 = v104;
  v76 = v103;
  v77 = v102;
  v60 = v98;
  sub_24B8F3208(v46, v98, &qword_27F06AC70);
  v78 = v107;
  v79 = v106;
  v80 = v105;
  v61 = v55;
  v62 = v97;
  sub_24B8F3208(v61, v97, &qword_27F06AC40);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC90);
  v64 = v62 + v63[12];
  *v64 = 0;
  *(v64 + 8) = v56;
  v65 = v93;
  *(v64 + 16) = v94;
  *(v64 + 24) = v57;
  *(v64 + 32) = v65;
  *(v64 + 40) = v58;
  v66 = v91;
  *(v64 + 48) = v92;
  *(v64 + 56) = v66;
  sub_24B8F3208(v59, v62 + v63[16], &qword_27F06AC80);
  v67 = v62 + v63[20];
  *v67 = v90.n128_u64[0];
  *(v67 + 8) = 0x4014000000000000;
  *(v67 + 16) = 0;
  v68 = v62 + v63[24];
  *v68 = 0;
  *(v68 + 8) = v75;
  *(v68 + 16) = v89;
  *(v68 + 24) = v76;
  *(v68 + 32) = v88;
  *(v68 + 40) = v77;
  v69 = v86;
  *(v68 + 48) = v87;
  *(v68 + 56) = v69;
  v70 = v62 + v63[28];
  *v70 = v85;
  *(v70 + 8) = 0x4014000000000000;
  *(v70 + 16) = 0;
  v71 = v62 + v63[32];
  *v71 = 0;
  *(v71 + 8) = 1;
  sub_24B8F3208(v60, v62 + v63[36], &qword_27F06AC70);
  v72 = v62 + v63[40];
  *v72 = 0;
  *(v72 + 8) = v78;
  *(v72 + 16) = v84;
  *(v72 + 24) = v79;
  *(v72 + 32) = v83;
  *(v72 + 40) = v80;
  v73 = v81;
  *(v72 + 48) = v82;
  *(v72 + 56) = v73;
  sub_24B8F35E4(v46, &qword_27F06AC70);
  sub_24B8F35E4(v101, &qword_27F06AC80);
  sub_24B8F35E4(v99, &qword_27F06AC40);
  sub_24B8F35E4(v60, &qword_27F06AC70);
  sub_24B8F35E4(v59, &qword_27F06AC80);
  return sub_24B8F35E4(v100, &qword_27F06AC40);
}

uint64_t sub_24BA7BB9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA869C();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC18);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v35[-v11];
  v13 = sub_24BAA8AAC();
  v14 = *(v3 + 28);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24BAA8B2C();
  (*(*(v16 - 8) + 104))(&v5[v14], v15, v16);
  __asm { FMOV            V0.2D, #4.0 }

  *v5 = _Q0;
  v22 = [objc_opt_self() systemGray3Color];
  v23 = sub_24BAA973C();
  sub_24BAA832C();
  sub_24BA7F4E4(v5, v12, MEMORY[0x277CDFC08]);
  v24 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE0) + 36)];
  v25 = v36;
  *v24 = *&v35[8];
  *(v24 + 1) = v25;
  *(v24 + 4) = v37;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE8);
  *&v12[*(v26 + 52)] = v23;
  *&v12[*(v26 + 56)] = 256;
  v27 = sub_24BAA9D1C();
  v29 = v28;
  sub_24BA7FFB4(v5, MEMORY[0x277CDFC08]);
  v30 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AF0) + 36)];
  *v30 = v27;
  v30[1] = v29;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v31 = &v12[*(v7 + 44)];
  v32 = v39;
  *v31 = v38;
  v31[1] = v32;
  v31[2] = v40;
  sub_24B8F3208(v12, v10, &qword_27F06AC18);
  *a1 = v13;
  *(a1 + 8) = 0x4014000000000000;
  *(a1 + 16) = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ACA0);
  sub_24B8F3208(v10, a1 + *(v33 + 48), &qword_27F06AC18);
  sub_24B8F35E4(v12, &qword_27F06AC18);
  return sub_24B8F35E4(v10, &qword_27F06AC18);
}

uint64_t sub_24BA7BEB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AD78);
  MEMORY[0x28223BE20](v0);
  v2 = v22 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0);
  MEMORY[0x28223BE20](v3);
  v5 = v22 - v4;
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = *(sub_24BAA869C() + 20);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_24BAA8B2C();
  (*(*(v10 - 8) + 104))(&v5[v8], v9, v10);
  if (v7 == 1)
  {
    __asm { FMOV            V0.2D, #1.5 }
  }

  else
  {
    __asm { FMOV            V0.2D, #3.0 }
  }

  *v5 = _Q0;
  v16 = [objc_opt_self() systemGray3Color];
  v17 = sub_24BAA973C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  *&v5[*(v18 + 52)] = v17;
  *&v5[*(v18 + 56)] = 256;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v19 = &v5[*(v3 + 36)];
  v20 = v22[1];
  *v19 = v22[0];
  *(v19 + 1) = v20;
  *(v19 + 2) = v22[2];
  sub_24B8F3208(v5, v2, &qword_27F065BA0);
  swift_storeEnumTagMultiPayload();
  sub_24B95CCB0();
  sub_24BAA8D0C();
  return sub_24B8F35E4(v5, &qword_27F065BA0);
}

uint64_t sub_24BA7C1C8@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = type metadata accessor for LockScreenColoringBookView(0);
  v66 = *(v2 - 8);
  v67 = v2 - 8;
  v65 = *(v66 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ACA8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v60 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ACB0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ACB8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ACC0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v61 = &v60 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ACC8) - 8;
  MEMORY[0x28223BE20](v63);
  v62 = &v60 - v19;
  *v7 = sub_24BAA8BCC();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ACD0) + 44)];
  v60 = v1;
  sub_24BA7C7CC(v20);
  v21 = sub_24BAA90CC();
  sub_24BAA828C();
  v22 = &v7[*(v5 + 44)];
  *v22 = v21;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  v27 = [objc_opt_self() currentDevice];
  [v27 userInterfaceIdiom];

  sub_24BA6ACDC();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  sub_24B90294C(v7, v11, &qword_27F06ACA8);
  v28 = &v11[*(v9 + 44)];
  v29 = v73;
  *v28 = v72;
  *(v28 + 1) = v29;
  *(v28 + 2) = v74;
  v30 = [objc_opt_self() quaternarySystemFillColor];
  v31 = sub_24BAA973C();
  LOBYTE(v7) = sub_24BAA90BC();
  sub_24B90294C(v11, v15, &qword_27F06ACB0);
  v32 = &v15[*(v13 + 44)];
  *v32 = v31;
  v32[8] = v7;
  v33 = v61;
  v34 = &v61[*(v17 + 44)];
  v35 = *(sub_24BAA869C() + 20);
  v36 = *MEMORY[0x277CE0118];
  v37 = sub_24BAA8B2C();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  __asm { FMOV            V0.2D, #13.0 }

  *v34 = _Q0;
  *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8) + 36)] = 256;
  v43 = v15;
  v44 = v33;
  sub_24B90294C(v43, v33, &qword_27F06ACB8);
  v45 = v60;
  v46 = v64;
  sub_24BA7F4E4(v60, v64, type metadata accessor for LockScreenColoringBookView);
  v47 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v48 = swift_allocObject();
  sub_24BA7EF64(v46, v48 + v47, type metadata accessor for LockScreenColoringBookView);
  v49 = v44;
  v50 = v62;
  sub_24B90294C(v49, v62, &qword_27F06ACC0);
  v51 = (v50 + *(v63 + 44));
  *v51 = sub_24BA8157C;
  v51[1] = v48;
  v51[2] = 0;
  v51[3] = 0;
  v52 = (v45 + *(v67 + 32));
  v54 = *v52;
  v53 = v52[1];
  v70 = v54;
  v71 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AA40);
  sub_24BAA99FC();
  v55 = v69;
  sub_24BA7F4E4(v45, v46, type metadata accessor for LockScreenColoringBookView);
  v56 = swift_allocObject();
  sub_24BA7EF64(v46, v56 + v47, type metadata accessor for LockScreenColoringBookView);
  v57 = v68;
  sub_24B90294C(v50, v68, &qword_27F06ACC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ACD8);
  *(v57 + *(result + 52)) = v55;
  v59 = (v57 + *(result + 56));
  *v59 = sub_24BA81738;
  v59[1] = v56;
  return result;
}

uint64_t sub_24BA7C7CC@<X0>(uint64_t *a1@<X8>)
{
  v90 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC78);
  v93 = *(v1 - 8);
  v94 = v1;
  MEMORY[0x28223BE20](v1);
  v84 = &v78 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  MEMORY[0x28223BE20](v78);
  v81 = &v78 - v3;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065BA0);
  v4 = MEMORY[0x28223BE20](v80);
  v83 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v79 = &v78 - v7;
  MEMORY[0x28223BE20](v6);
  v82 = &v78 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v95 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v78 - v12;
  v13 = sub_24BAA9FDC();
  v14 = objc_opt_self();
  v15 = [v14 currentDevice];
  v16 = [v15 userInterfaceIdiom];

  v85 = v14;
  if (v16)
  {
    v17 = [v14 currentDevice];
    v18 = [v17 userInterfaceIdiom];

    v19 = 17.0;
    if (v18 == 1)
    {
      v19 = 22.0;
    }
  }

  else
  {
    v19 = 22.0;
  }

  CTFontCreateWithNameAndOptions(v13, v19, 0, 0x20000uLL);

  v20 = sub_24BAA929C();
  v100[0] = sub_24BA7D124();
  v100[1] = v21;
  sub_24B8F5E3C();
  v22 = sub_24BAA93CC();
  v24 = v23;
  v26 = v25;

  v27 = sub_24BAA939C();
  v29 = v28;
  v31 = v30;
  v91 = v20;

  sub_24B900910(v22, v24, v26 & 1);

  v32 = objc_opt_self();
  v33 = [v32 systemGray3Color];
  sub_24BAA973C();
  v34 = sub_24BAA933C();
  v88 = v35;
  v89 = v34;
  v86 = v36;
  v87 = v37;

  sub_24B900910(v27, v29, v31 & 1);

  v38 = v85;
  v39 = [v85 currentDevice];
  v40 = [v39 userInterfaceIdiom];

  if (v40)
  {
    v41 = [v38 currentDevice];
    v42 = [v41 userInterfaceIdiom];

    if (v42 != 1)
    {
      sub_24BA81794(v100);
      if (sub_24BA79E00())
      {
        goto LABEL_9;
      }

LABEL_11:
      v69 = v92;
      (*(v93 + 56))(v92, 1, 1, v94);
      goto LABEL_12;
    }
  }

  v43 = sub_24BAA8AAC();
  LOBYTE(v104) = 0;
  sub_24BA7D594(v100);
  memcpy(v97, v100, 0x180uLL);
  memcpy(v98, v100, 0x180uLL);
  sub_24B8F3208(v97, v99, &qword_27F06ACF0);
  sub_24B8F35E4(v98, &qword_27F06ACF0);
  memcpy(&v96[7], v97, 0x180uLL);
  v99[0] = v43;
  v99[1] = 0x4008000000000000;
  LOBYTE(v99[2]) = v104;
  memcpy(&v99[2] + 1, v96, 0x187uLL);
  nullsub_1(v99);
  memcpy(v100, v99, sizeof(v100));
  if (!sub_24BA79E00())
  {
    goto LABEL_11;
  }

LABEL_9:
  v44 = *(sub_24BAA869C() + 20);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_24BAA8B2C();
  v47 = v81;
  (*(*(v46 - 8) + 104))(&v81[v44], v45, v46);
  __asm { FMOV            V0.2D, #1.0 }

  *v47 = _Q0;
  v53 = [v32 systemGray3Color];
  v54 = sub_24BAA973C();
  v55 = v78;
  *(v47 + *(v78 + 52)) = v54;
  *(v47 + *(v55 + 56)) = 256;
  v56 = [v38 currentDevice];
  [v56 &selRef_interfaceOrientation];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v57 = v79;
  sub_24B90294C(v47, v79, &qword_27F063CB8);
  v58 = (v57 + *(v80 + 36));
  v59 = v102;
  *v58 = v101;
  v58[1] = v59;
  v58[2] = v103;
  v60 = v82;
  sub_24B90294C(v57, v82, &qword_27F065BA0);
  v61 = [v38 currentDevice];
  [v61 &selRef_interfaceOrientation];

  sub_24BAA9D1C();
  sub_24BAA83BC();
  v85 = v104;
  v62 = v109;
  v80 = v108;
  v81 = v106;
  LOBYTE(v99[0]) = 1;
  v98[0] = v105;
  v97[0] = v107;
  v63 = v83;
  sub_24B8F3208(v60, v83, &qword_27F065BA0);
  LOBYTE(v44) = v99[0];
  v64 = v98[0];
  v65 = v97[0];
  v66 = v84;
  sub_24B8F3208(v63, v84, &qword_27F065BA0);
  v67 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AC98) + 48);
  *v67 = 0;
  *(v67 + 8) = v44;
  *(v67 + 16) = v85;
  *(v67 + 24) = v64;
  v68 = v80;
  *(v67 + 32) = v81;
  *(v67 + 40) = v65;
  *(v67 + 48) = v68;
  *(v67 + 56) = v62;
  sub_24B8F35E4(v60, &qword_27F065BA0);
  sub_24B8F35E4(v63, &qword_27F065BA0);
  v69 = v92;
  sub_24B90294C(v66, v92, &qword_27F06AC78);
  (*(v93 + 56))(v69, 0, 1, v94);
LABEL_12:
  memcpy(v97, v100, sizeof(v97));
  v70 = v95;
  sub_24B8F3208(v69, v95, &qword_27F06AC80);
  v72 = v89;
  v71 = v90;
  v73 = v87;
  v74 = v88;
  *v90 = v89;
  v71[1] = v74;
  v75 = v86 & 1;
  *(v71 + 16) = v86 & 1;
  v71[3] = v73;
  memcpy(v98, v97, sizeof(v98));
  memcpy(v71 + 4, v97, 0x198uLL);
  v71[55] = 0;
  *(v71 + 448) = 1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ACE0);
  sub_24B8F3208(v70, v71 + *(v76 + 80), &qword_27F06AC80);
  sub_24B8F319C(v72, v74, v75);

  sub_24B8F3208(v98, v99, &qword_27F06ACE8);

  sub_24B8F35E4(v69, &qword_27F06AC80);
  sub_24B8F35E4(v70, &qword_27F06AC80);
  memcpy(v99, v97, 0x198uLL);
  sub_24B8F35E4(v99, &qword_27F06ACE8);
  sub_24B900910(v72, v74, v75);
}

uint64_t sub_24BA7D124()
{
  v28 = sub_24BAA7C1C();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v24 = &v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_24BAA7F2C();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063488);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_24BAA7DCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24BAA7E8C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_24BAA7E6C();
  v16 = sub_24BAA7E5C();
  (*(v12 + 8))(v14, v11);
  [v15 setLocale_];

  v17 = sub_24BAA9FDC();
  [v15 setLocalizedDateFormatFromTemplate_];

  sub_24BAA7EBC();
  type metadata accessor for LockScreenColoringBookView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A9D8);
  v18 = v24;
  sub_24BAA99FC();
  sub_24BAA7EEC();
  (*(v27 + 8))(v18, v28);
  (*(v25 + 8))(v3, v26);
  v19 = *(v8 + 48);
  if (v19(v6, 1, v7) == 1)
  {
    sub_24BAA7DBC();
    if (v19(v6, 1, v7) != 1)
    {
      sub_24B8F35E4(v6, &qword_27F063488);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v20 = sub_24BAA7D8C();
  (*(v8 + 8))(v10, v7);
  v21 = [v15 stringFromDate_];

  v22 = sub_24BAAA01C();
  return v22;
}

uint64_t sub_24BA7D594@<X0>(void *a1@<X8>)
{
  v1 = objc_opt_self();
  v2 = [v1 systemGray3Color];
  v39 = sub_24BAA973C();
  sub_24BAA832C();
  v34 = v50 * 0.5;
  v4 = v51;
  v36 = v4 >> 64;
  v3 = v4;
  v35 = v52;
  v33 = sub_24BAA9D1C();
  v38 = v5;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v6 = [v1 systemGray3Color];
  v32 = sub_24BAA973C();
  sub_24BAA832C();
  v7 = v53;
  v31 = v54;
  v8 = *(&v54 + 1);
  v30 = v55;
  v28 = v53 * 0.5;
  v29 = *(&v55 + 1);
  v26 = sub_24BAA9D1C();
  v10 = v9;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v11 = [v1 systemGray3Color];
  v27 = sub_24BAA973C();
  sub_24BAA832C();
  v12 = v56;
  v13 = v56 * 0.5;
  v14 = sub_24BAA9D1C();
  v16 = v15;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *v59 = v50 * 0.5;
  v17 = v50;
  *(v59 + 1) = v50;
  v59[1] = v51;
  v59[2] = v52;
  v18 = *(&v52 + 1);
  *&v60 = v39;
  WORD4(v60) = 256;
  *&v61 = v33;
  *(&v61 + 1) = v38;
  v62 = v47;
  v63 = v48;
  v64 = v49;
  __src[2] = v52;
  __src[3] = v60;
  __src[0] = v59[0];
  __src[1] = v51;
  __src[6] = v48;
  __src[7] = v49;
  __src[4] = v61;
  __src[5] = v47;
  *v65 = v53 * 0.5;
  *(v65 + 1) = v53;
  v65[1] = v54;
  v19 = DWORD1(v54);
  v65[2] = v55;
  *&v66 = v32;
  WORD4(v66) = 256;
  *&v67 = v26;
  *(&v67 + 1) = v10;
  v70 = v46;
  v69 = v45;
  v68 = v44;
  __src[10] = v55;
  __src[11] = v66;
  __src[8] = v65[0];
  __src[9] = v54;
  __src[14] = v45;
  __src[15] = v46;
  __src[12] = v67;
  __src[13] = v44;
  *v71 = v56 * 0.5;
  *(v71 + 1) = v56;
  v21 = DWORD1(v57);
  v20 = v57;
  v71[1] = v57;
  v22 = *(&v57 + 1);
  v23 = v58;
  v71[2] = v58;
  v24 = *(&v58 + 1);
  *&v72 = v27;
  WORD4(v72) = 256;
  *&v73 = v14;
  *(&v73 + 1) = v16;
  v76 = v43;
  v75 = v42;
  v74 = v41;
  __src[18] = v58;
  __src[19] = v72;
  __src[16] = v71[0];
  __src[17] = v57;
  __src[22] = v42;
  __src[23] = v43;
  __src[20] = v73;
  __src[21] = v41;
  memcpy(a1, __src, 0x180uLL);
  *v77 = v13;
  *&v77[1] = v12;
  v78 = v20;
  v79 = v21;
  v80 = v22;
  v81 = v23;
  v82 = v24;
  v83 = v27;
  v84 = 256;
  v85 = v14;
  v86 = v16;
  v87 = v41;
  v88 = v42;
  v89 = v43;
  sub_24B8F3208(v59, v103, &qword_27F0692F0);
  sub_24B8F3208(v65, v103, &qword_27F0692F0);
  sub_24B8F3208(v71, v103, &qword_27F0692F0);
  sub_24B8F35E4(v77, &qword_27F0692F0);
  *v90 = v28;
  *&v90[1] = v7;
  v91 = v31;
  v92 = v19;
  v93 = v8;
  v94 = v30;
  v95 = v29;
  v96 = v32;
  v97 = 256;
  v98 = v26;
  v99 = v10;
  v100 = v44;
  v101 = v45;
  v102 = v46;
  sub_24B8F35E4(v90, &qword_27F0692F0);
  *v103 = v34;
  *&v103[1] = v17;
  v104 = __PAIR128__(v36, v3);
  v105 = v35;
  v106 = v18;
  v107 = v39;
  v108 = 256;
  v109 = v33;
  v110 = v38;
  v111 = v47;
  v112 = v48;
  v113 = v49;
  return sub_24B8F35E4(v103, &qword_27F0692F0);
}

uint64_t sub_24BA7DAE4()
{
  v0 = sub_24BAA7C1C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_24BAA7F0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24BAA7DCC();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v16 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24BAA7F2C();
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA7EBC();
  sub_24BAA7DBC();
  v10 = *MEMORY[0x277CC9980];
  v17 = *(v2 + 104);
  v17(v4, v10, v1);
  sub_24BAA7F1C();
  v11 = *(v2 + 8);
  v14[1] = v2 + 8;
  v15 = v11;
  v11(v4, v1);
  type metadata accessor for LockScreenColoringBookView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A9D8);
  sub_24BAA99FC();
  sub_24BAA7BAC();
  sub_24BAA9A0C();
  v17(v4, *MEMORY[0x277CC99A0], v1);
  v12 = v16;
  sub_24BAA7F1C();
  v15(v4, v1);
  sub_24BAA99FC();
  sub_24BAA7BEC();
  sub_24BAA9A0C();
  (*(v20 + 8))(v12, v21);
  return (*(v18 + 8))(v9, v19);
}

__n128 sub_24BA7DE4C@<Q0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v30 = sub_24BAA8B9C();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for ChooseLabel(0) + 24)) == 1)
  {
    if (qword_27F063110 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (qword_27F063110 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_5:
  *&v55 = sub_24BAA7C2C();
  *(&v55 + 1) = v5;
  sub_24B8F5E3C();
  v6 = sub_24BAA93CC();
  v8 = v7;
  v10 = v9;
  sub_24BAA974C();
  *&v31 = sub_24BAA933C();
  *(&v31 + 1) = v11;
  HIDWORD(v29) = v12;
  v32 = v13;

  sub_24B900910(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  sub_24BA8DAA8(v4);
  v15 = sub_24BAA8B8C();
  (*(v2 + 8))(v4, v30);
  if ((v15 & 1) != 0 || (v16 = objc_opt_self(), v17 = [v16 mainScreen], objc_msgSend(v17, sel_nativeScale), v19 = v18, v17, v20 = objc_msgSend(v16, sel_mainScreen), objc_msgSend(v20, sel_scale), v22 = v21, v20, v22 < v19))
  {
    LOBYTE(v40) = BYTE4(v29) & 1;
    LOBYTE(v35) = 0;
    v34[0] = 1;
    v49 = v31;
    LOBYTE(v50) = BYTE4(v29) & 1;
    *(&v50 + 1) = v32;
    *&v51 = KeyPath;
    *(&v51 + 1) = 1;
    LOBYTE(v52) = 0;
    v54 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ACF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067950);
    sub_24BA817DC();
    sub_24B9D39AC();
    sub_24BAA8D0C();
  }

  else
  {
    v23 = swift_getKeyPath();
    v24 = BYTE4(v29) & 1;
    v34[0] = BYTE4(v29) & 1;
    v48 = 0;
    v25 = v31;
    v35 = v31;
    LOBYTE(v36) = BYTE4(v29) & 1;
    *(&v36 + 1) = v32;
    *&v37 = KeyPath;
    *(&v37 + 1) = 1;
    LOBYTE(v38) = 0;
    *(&v38 + 1) = v23;
    v39 = 0x3FE0000000000000;
    v40 = v31;
    v41 = BYTE4(v29) & 1;
    v42 = v32;
    v43 = KeyPath;
    v44 = 1;
    v45 = 0;
    v46 = v23;
    v47 = 0x3FE0000000000000;
    sub_24B8F319C(v31, *(&v31 + 1), BYTE4(v29) & 1);

    sub_24B8F3208(&v35, &v49, &qword_27F06ACF8);
    sub_24B8F35E4(&v40, &qword_27F06ACF8);
    v51 = v37;
    v52 = v38;
    v53 = v39;
    v49 = v35;
    v50 = v36;
    v48 = 0;
    v54 = 0;
    sub_24B8F3208(&v35, v34, &qword_27F06ACF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ACF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067950);
    sub_24BA817DC();
    sub_24B9D39AC();
    sub_24BAA8D0C();
    sub_24B900910(v25, *(&v25 + 1), v24);

    sub_24B8F35E4(&v35, &qword_27F06ACF8);
  }

  v26 = v58[0];
  v27 = v33;
  *(v33 + 32) = v57;
  *(v27 + 48) = v26;
  *(v27 + 57) = *(v58 + 9);
  result = v56;
  *v27 = v55;
  *(v27 + 16) = result;
  return result;
}

uint64_t sub_24BA7E3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0674C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_24B8F3208(a1, &v11 - v8, &qword_27F0674C0);
  return a5(v9);
}

uint64_t sub_24BA7E4DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067490);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_24BA7E638(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067490);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24BA7E774()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24BA80BC8(319, &qword_27F068F10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24BA80C2C(319, &qword_27F0674B8, &qword_27F0674C0, &unk_24BAB6620, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24BA7F3B8(319, &qword_27F063A40, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24BA80C2C(319, &qword_27F06A500, &qword_27F06A4E0, &unk_24BABD230, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_24BA80C2C(319, &qword_27F06A508, &qword_27F06A4E8, &unk_24BABD238, MEMORY[0x277CE10B8]);
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

uint64_t objectdestroyTm_23()
{
  v1 = type metadata accessor for FacesAndPagesPicker(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24BAA82DC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24BAA8E5C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24BAA8E5C();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24BA7ECE8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_24BA7EDBC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24BA7EE98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24BA7EEE8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24BA7EF64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24BA7EFE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[10];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24BA7F138(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[10];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24BA7F27C()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24BA80BC8(319, &qword_27F068F10, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24BA7F3B8(319, &qword_27F063BA8, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24BA80BC8(319, &qword_27F063A30, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24BA7F3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24BA7F410()
{
  result = qword_27F06A580;
  if (!qword_27F06A580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A550);
    sub_24B8F384C(&qword_27F06A588, &qword_27F06A538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A580);
  }

  return result;
}

uint64_t sub_24BA7F4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24BA7F54C()
{
  v1 = type metadata accessor for FacesAndPagesPicker.contents(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24BAA82DC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24BAA8B9C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_24BA7F730@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FacesAndPagesPicker.contents(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v5 = *(v4 + *(v3 + 64));

  return sub_24BA6C334(v4, v5, a1);
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for FacesAndPagesPicker.contents(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24BAA82DC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24BAA8B9C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24BA7FA18()
{
  type metadata accessor for FacesAndPagesPicker.contents(0);

  return sub_24BA75924();
}

unint64_t sub_24BA7FA88()
{
  result = qword_27F06A650;
  if (!qword_27F06A650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A5B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A5A0);
    sub_24BAA866C();
    sub_24B8F384C(&qword_27F06A640, &qword_27F06A5A0);
    sub_24BA7EE98(&qword_27F063BF8, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_24BA7EE98(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A650);
  }

  return result;
}

uint64_t sub_24BA7FC9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FacesAndPagesPicker.contents(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24BA731B0(v4, a1);
}

unint64_t sub_24BA7FD0C()
{
  result = qword_27F06A680;
  if (!qword_27F06A680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A5E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A5D0);
    sub_24BAA866C();
    sub_24B8F384C(&qword_27F06A678, &qword_27F06A5D0);
    sub_24BA7EE98(&qword_27F063BF8, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_24BA7EE98(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A680);
  }

  return result;
}

unint64_t sub_24BA7FE88()
{
  result = qword_27F06A688;
  if (!qword_27F06A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A688);
  }

  return result;
}

uint64_t sub_24BA7FFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24BA80040()
{
  result = qword_27F06A768;
  if (!qword_27F06A768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A760);
    sub_24BA800CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A768);
  }

  return result;
}

unint64_t sub_24BA800CC()
{
  result = qword_27F06A770;
  if (!qword_27F06A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A770);
  }

  return result;
}

unint64_t sub_24BA80190()
{
  result = qword_27F06A970;
  if (!qword_27F06A970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A958);
    sub_24BA8021C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A970);
  }

  return result;
}

unint64_t sub_24BA8021C()
{
  result = qword_27F06A978;
  if (!qword_27F06A978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A980);
    sub_24BA802D4(&qword_27F06A988, &qword_27F06A990, &unk_24BABD820, sub_24BA80358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A978);
  }

  return result;
}

uint64_t sub_24BA802D4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24BA80358()
{
  result = qword_27F06A998;
  if (!qword_27F06A998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A9A0);
    sub_24BA80410();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A998);
  }

  return result;
}

unint64_t sub_24BA80410()
{
  result = qword_27F06A9A8;
  if (!qword_27F06A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06A9B0);
    sub_24B93B210();
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A9A8);
  }

  return result;
}

unint64_t sub_24BA804C8()
{
  result = qword_27F06A9B8;
  if (!qword_27F06A9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0671D8);
    sub_24BA80580();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A9B8);
  }

  return result;
}

unint64_t sub_24BA80580()
{
  result = qword_27F06A9C0;
  if (!qword_27F06A9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0671D0);
    sub_24BA7EE98(&qword_27F065A68, MEMORY[0x277CDFC08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06A9C0);
  }

  return result;
}

double sub_24BA8063C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A718);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v15 = 0u;
  v16 = 0u;
  sub_24BAA99EC();
  v5 = v19;
  sub_24B8F37E8(0, &qword_27F06A720);
  v13 = v18;
  v14 = v17;
  v6 = [objc_opt_self() currentRunLoop];
  v7 = sub_24BAAA3EC();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_24BAAA39C();

  sub_24B8F35E4(v4, &qword_27F06A718);
  *&v17 = v8;
  sub_24BAAA38C();
  sub_24BA7EE98(&qword_27F06A728, MEMORY[0x277CC9DF0]);
  v9 = sub_24BAA815C();

  *&v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A730);
  sub_24BAA99EC();
  v10 = v17;
  v12 = v13;
  result = *&v14;
  *a1 = v14;
  *(a1 + 16) = v12;
  *(a1 + 32) = v5;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_24BA80868(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24BA808B0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_24BA80930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A9D8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24BA80A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A9D8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_24BA80AD8()
{
  sub_24BA80BC8(319, &qword_27F06A9F0, MEMORY[0x277CC8990], MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_24BA80C2C(319, &qword_27F06A9F8, &qword_27F06A730, &unk_24BABD580, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24BA80BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24BA80C2C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24BA80CA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_24BA80D80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24BA80E30()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24BA80BC8(319, &qword_27F063A30, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t objectdestroy_141Tm()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_24BA810D0()
{
  result = qword_27F06AB28;
  if (!qword_27F06AB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AB18);
    sub_24BA81188();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AB28);
  }

  return result;
}

unint64_t sub_24BA81188()
{
  result = qword_27F06AB30;
  if (!qword_27F06AB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AB10);
    sub_24BA802D4(&qword_27F06AB38, &qword_27F06AB08, &unk_24BABDC50, sub_24BA8126C);
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AB30);
  }

  return result;
}

unint64_t sub_24BA8126C()
{
  result = qword_27F06AB40;
  if (!qword_27F06AB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AB00);
    sub_24B8F384C(&qword_27F06AB48, &qword_27F06AB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AB40);
  }

  return result;
}

unint64_t sub_24BA81324()
{
  result = qword_27F06AB58;
  if (!qword_27F06AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AAF0);
    sub_24BA813DC();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AB58);
  }

  return result;
}

unint64_t sub_24BA813DC()
{
  result = qword_27F06AB60;
  if (!qword_27F06AB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AAE8);
    sub_24BA802D4(&qword_27F06AB68, &qword_27F06AAE0, &unk_24BABDC28, sub_24BA814C0);
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AB60);
  }

  return result;
}

unint64_t sub_24BA814C0()
{
  result = qword_27F06AB70;
  if (!qword_27F06AB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AAD8);
    sub_24B8F384C(&qword_27F06AB78, &qword_27F06AB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AB70);
  }

  return result;
}

uint64_t objectdestroy_148Tm()
{
  v1 = type metadata accessor for LockScreenColoringBookView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3 + *(v1 + 20);
  v6 = sub_24BAA7C1C();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06A9D8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_24BA81794(uint64_t a1)
{
  *(a1 + 400) = 0;
  result = 0.0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
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

unint64_t sub_24BA817DC()
{
  result = qword_27F06AD00;
  if (!qword_27F06AD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06ACF8);
    sub_24B9D39AC();
    sub_24B8F384C(&qword_27F0681B0, &qword_27F0681B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AD00);
  }

  return result;
}

unint64_t sub_24BA81904()
{
  result = qword_27F06AD18;
  if (!qword_27F06AD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AA50);
    sub_24B8F384C(&qword_27F06AD20, &qword_27F06AA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AD18);
  }

  return result;
}

unint64_t sub_24BA819C0()
{
  result = qword_27F06AD28;
  if (!qword_27F06AD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AD30);
    sub_24BA810D0();
    sub_24BA81324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AD28);
  }

  return result;
}

unint64_t sub_24BA81A94()
{
  result = qword_27F06AD40;
  if (!qword_27F06AD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AD48);
    sub_24BA817DC();
    sub_24B9D39AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AD40);
  }

  return result;
}

unint64_t sub_24BA81BA0()
{
  result = qword_27F06AD90;
  if (!qword_27F06AD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AD98);
    sub_24B95CCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AD90);
  }

  return result;
}

uint64_t sub_24BA81C90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24BA81D7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_24BA81E60()
{
  sub_24B936C64();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24BA81F00@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v1 = sub_24BAA8B7C();
  v61 = *(v1 - 8);
  v62 = v1;
  MEMORY[0x28223BE20](v1);
  v59 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24BAA922C();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE18);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v60 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE20);
  MEMORY[0x28223BE20](v9);
  v11 = (&v53 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE28);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v56 = &v53 - v15;
  *v11 = sub_24BAA9CCC();
  v11[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE30);
  sub_24BA82570(v11 + *(v17 + 44));
  sub_24B8F384C(&qword_27F06AE38, &qword_27F06AE20);
  sub_24BAA95EC();
  sub_24B8F35E4(v11, &qword_27F06AE20);
  *&v73[0] = sub_24BA82E84();
  *(&v73[0] + 1) = v18;
  sub_24B8F5E3C();
  v19 = sub_24BAA93CC();
  v21 = v20;
  v23 = v22;
  sub_24BAA988C();
  v24 = sub_24BAA933C();
  v26 = v25;
  v28 = v27;

  sub_24B900910(v19, v21, v23 & 1);

  sub_24BAA914C();
  v30 = v53;
  v29 = v54;
  v31 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x277CE0A10], v55);
  sub_24BAA925C();

  (*(v29 + 8))(v30, v31);
  sub_24BAA917C();

  v32 = sub_24BAA939C();
  v34 = v33;
  LOBYTE(v29) = v35;
  v37 = v36;

  sub_24B900910(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v29) = v29 & 1;
  LOBYTE(v73[0]) = v29;
  LOBYTE(v64) = 0;
  v39 = swift_getKeyPath();
  v40 = swift_getKeyPath();
  LOBYTE(v26) = sub_24BAA90AC();
  sub_24BAA828C();
  v72 = 0;
  *&v64 = v32;
  *(&v64 + 1) = v34;
  LOBYTE(v65) = v29;
  *(&v65 + 1) = v37;
  LOWORD(v66) = 256;
  *(&v66 + 1) = KeyPath;
  *&v67 = 4;
  BYTE8(v67) = 0;
  *&v68 = v39;
  *(&v68 + 1) = 0x3FE3333333333333;
  *&v69 = v40;
  BYTE8(v69) = 1;
  LOBYTE(v70) = v26;
  *(&v70 + 1) = v41;
  *&v71[0] = v42;
  *(&v71[0] + 1) = v43;
  *&v71[1] = v44;
  BYTE8(v71[1]) = 0;
  v45 = v59;
  sub_24BAA8B6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0657D0);
  sub_24BA85358();
  v46 = v57;
  sub_24BAA961C();
  (*(v61 + 8))(v45, v62);
  v73[6] = v70;
  v74[0] = v71[0];
  *(v74 + 9) = *(v71 + 9);
  v73[2] = v66;
  v73[3] = v67;
  v73[4] = v68;
  v73[5] = v69;
  v73[0] = v64;
  v73[1] = v65;
  sub_24B8F35E4(v73, &qword_27F0657D0);
  v47 = v56;
  v48 = v58;
  sub_24B8F3208(v56, v58, &qword_27F06AE28);
  v49 = v60;
  sub_24B8F3208(v46, v60, &qword_27F06AE18);
  v50 = v63;
  sub_24B8F3208(v48, v63, &qword_27F06AE28);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE70);
  sub_24B8F3208(v49, v50 + *(v51 + 48), &qword_27F06AE18);
  sub_24B8F35E4(v46, &qword_27F06AE18);
  sub_24B8F35E4(v47, &qword_27F06AE28);
  sub_24B8F35E4(v49, &qword_27F06AE18);
  return sub_24B8F35E4(v48, &qword_27F06AE28);
}

uint64_t sub_24BA82570@<X0>(uint64_t a1@<X8>)
{
  *&v58 = a1;
  v1 = sub_24BAA975C();
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x28223BE20](v1);
  v55 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE80);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v50 - v10);
  *v11 = sub_24BAA9CFC();
  v11[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE88);
  sub_24BA82AF4(v11 + *(v13 + 44));
  v14 = sub_24BAA90AC();
  sub_24BAA828C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE90) + 36);
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = sub_24BAA90CC();
  sub_24BAA828C();
  v25 = v11 + *(v7 + 44);
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  if (sub_24BA83F8C())
  {
    v30 = sub_24BAA983C();
  }

  else
  {
    v30 = sub_24BAA981C();
  }

  v54 = v30;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v84[3] = *&v84[27];
  *&v84[11] = *&v84[35];
  *&v84[19] = *&v84[43];
  sub_24BA83F8C();
  v60 = sub_24BAA991C();
  sub_24BAA91AC();
  v31 = sub_24BAA919C();
  (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
  v59 = sub_24BAA91FC();
  sub_24B8F35E4(v5, &qword_27F063CD8);
  KeyPath = swift_getKeyPath();
  v52 = KeyPath;
  v33 = sub_24BAA9D1C();
  v50 = v34;
  v51 = v33;
  v35 = v34;
  v53 = sub_24BAA982C();
  v36 = swift_getKeyPath();
  (*(v56 + 104))(v55, *MEMORY[0x277CE0EE0], v57);
  v37 = sub_24BAA98BC();
  v38 = v61;
  v57 = v11;
  sub_24B8F3208(v11, v61, &qword_27F06AE80);
  v39 = v38;
  v40 = v58;
  sub_24B8F3208(v39, v58, &qword_27F06AE80);
  v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE98) + 48);
  *&v62[0] = v54;
  WORD4(v62[0]) = 256;
  *(&v62[2] + 10) = *&v84[16];
  *(v62 + 10) = *v84;
  *(&v62[1] + 10) = *&v84[8];
  *(&v62[3] + 1) = *&v84[23];
  *&v63 = v60;
  *(&v63 + 1) = KeyPath;
  *&v64 = v59;
  *(&v64 + 1) = v33;
  *&v65 = v35;
  *(&v65 + 1) = v36;
  v42 = v36;
  v43 = v53;
  *&v66 = v53;
  *(&v66 + 1) = v37;
  v58 = xmmword_24BAB9CE0;
  v67 = xmmword_24BAB9CE0;
  v44 = v54;
  v68 = 0x4000000000000000;
  *(v41 + 144) = 0x4000000000000000;
  v45 = v66;
  *(v41 + 96) = v65;
  *(v41 + 112) = v45;
  v46 = v62[3];
  *(v41 + 32) = v62[2];
  *(v41 + 48) = v46;
  v47 = v64;
  *(v41 + 64) = v63;
  *(v41 + 80) = v47;
  v48 = v62[1];
  *v41 = v62[0];
  *(v41 + 16) = v48;
  *(v41 + 128) = v67;
  sub_24B8F3208(v62, &v69, &qword_27F06AEA0);
  sub_24B8F35E4(v57, &qword_27F06AE80);
  v69 = v44;
  v70 = 256;
  v71 = *v84;
  v72 = *&v84[8];
  *v73 = *&v84[16];
  *&v73[14] = *&v84[23];
  v74 = v60;
  v75 = v52;
  v76 = v59;
  v77 = v51;
  v78 = v50;
  v79 = v42;
  v80 = v43;
  v82 = v58;
  v81 = v37;
  v83 = 0x4000000000000000;
  sub_24B8F35E4(&v69, &qword_27F06AEA0);
  return sub_24B8F35E4(v61, &qword_27F06AE80);
}

uint64_t sub_24BA82AF4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_24BAA975C();
  v1 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AEA8);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v34 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AEB0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v34 - v16);
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  sub_24BAA9DDC();
  v19 = v18;
  v21 = v20;
  v22 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AEB8) + 36));
  *v22 = vdupq_n_s64(0x3FEB333333333333uLL);
  v22[1].i64[0] = v19;
  v22[1].i64[1] = v21;
  v23 = sub_24BAA90CC();
  sub_24BAA828C();
  v24 = v17 + *(v12 + 44);
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  *v10 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  (*(v1 + 104))(v3, *MEMORY[0x277CE0EE0], v34);
  v29 = sub_24BAA98BC();
  v30 = v10 + *(v5 + 44);
  *v30 = v29;
  *(v30 + 8) = xmmword_24BAB1C10;
  *(v30 + 3) = 0x4010000000000000;
  sub_24B8F3208(v17, v15, &qword_27F06AEB0);
  sub_24B8F3208(v10, v8, &qword_27F06AEA8);
  v31 = v35;
  sub_24B8F3208(v15, v35, &qword_27F06AEB0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AEC0);
  sub_24B8F3208(v8, v31 + *(v32 + 48), &qword_27F06AEA8);
  sub_24B8F35E4(v10, &qword_27F06AEA8);
  sub_24B8F35E4(v17, &qword_27F06AEB0);
  sub_24B8F35E4(v8, &qword_27F06AEA8);
  return sub_24B8F35E4(v15, &qword_27F06AEB0);
}

uint64_t sub_24BA82E84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE78);
  sub_24BAA99FC();
  v0 = sub_24BA83F8C();
  if (v2 == 1)
  {
    if (!v0)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_11;
    }
  }

  else if (v0)
  {
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_11;
  }

  if (qword_27F063110 != -1)
  {
LABEL_11:
    swift_once();
  }

  return sub_24BAA7C2C();
}

uint64_t sub_24BA8301C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065908);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = sub_24BAA82DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = sub_24BAA992C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA991C();
  (*(v16 + 104))(v18, *MEMORY[0x277CE0FE0], v15);
  v33 = sub_24BAA997C();

  (*(v16 + 8))(v18, v15);
  sub_24BA84040(v14);
  (*(v9 + 104))(v12, *MEMORY[0x277CDF3D0], v8);
  v19 = sub_24BAA82CC();
  v20 = *(v9 + 8);
  v20(v12, v8);
  v20(v14, v8);
  if (v19)
  {
    v21 = [objc_opt_self() systemBackgroundColor];
    v22 = sub_24BAA973C();
  }

  else
  {
    v22 = sub_24BAA989C();
  }

  v23 = v22;
  KeyPath = swift_getKeyPath();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v52 = 1;
  *v7 = sub_24BAA8BDC();
  *(v7 + 1) = 0x4018000000000000;
  v7[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065910);
  sub_24BA83520(&v7[*(v25 + 44)]);
  v26 = v34;
  sub_24B8F3208(v7, v34, &qword_27F065908);
  v27 = v33;
  v38 = v33;
  LOWORD(v39) = 1;
  *(&v39 + 2) = v50;
  WORD3(v39) = v51;
  *(&v39 + 1) = KeyPath;
  *v40 = v23;
  *&v40[8] = v35;
  *&v40[24] = v36;
  *&v40[40] = v37;
  *(a2 + 80) = *(&v37 + 1);
  v28 = *&v40[16];
  *(a2 + 32) = *v40;
  *(a2 + 48) = v28;
  *(a2 + 64) = *&v40[32];
  v29 = v39;
  *a2 = v38;
  *(a2 + 16) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AF08);
  sub_24B8F3208(v26, a2 + *(v30 + 48), &qword_27F065908);
  sub_24B8F3208(&v38, v41, &qword_27F065928);
  sub_24B8F35E4(v7, &qword_27F065908);
  sub_24B8F35E4(v26, &qword_27F065908);
  v47 = v35;
  v41[0] = v27;
  v41[1] = 0;
  v42 = 1;
  v43 = v50;
  v44 = v51;
  v45 = KeyPath;
  v46 = v23;
  v48 = v36;
  v49 = v37;
  return sub_24B8F35E4(v41, &qword_27F065928);
}

uint64_t sub_24BA83520@<X0>(uint64_t a1@<X8>)
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
  sub_24BA84040(v7);
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
  sub_24BA50F34(v92, v91);
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
  sub_24BA84040(v7);
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
  sub_24BA50F34(v62, v101);
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

uint64_t sub_24BA83D78@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24BAA9D1C();
  a1[1] = v3;
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AED8) + 44);
  *v4 = sub_24BAA8AAC();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AEE0);
  sub_24BA8301C(v1, &v4[*(v5 + 44)]);
  v6 = sub_24BAA90AC();
  sub_24BAA828C();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AEE8) + 36)];
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
  v25 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AEF0) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = [objc_opt_self() systemGray5Color];
  v27 = sub_24BAA973C();
  LOBYTE(v4) = sub_24BAA90BC();
  v28 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AEF8) + 36);
  *v28 = v27;
  v28[8] = v4;
  v29 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AF00) + 36);
  v30 = *(sub_24BAA869C() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_24BAA8B2C();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #13.0 }

  *v29 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0642A8);
  *&v29[*(result + 36)] = 256;
  return result;
}

BOOL sub_24BA83F8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE78);
  sub_24BAA99FC();
  v1 = *v0;
  if (v3 == 1)
  {
    if (v1 != 2)
    {
      if (v1 != 1)
      {
        if (!v1)
        {
          return 0;
        }

        goto LABEL_9;
      }

      return 1;
    }
  }

  else if (v1 != 2)
  {
    if (v1 != 1)
    {
      if (!v1)
      {
        return 0;
      }

      goto LABEL_9;
    }

    return 1;
  }

LABEL_9:
  if (v0[4])
  {
    return 0;
  }

  return v0[3] == 5;
}

uint64_t sub_24BA84040@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_24BA84240()
{
  v1 = sub_24BAA8ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE00);
  MEMORY[0x28223BE20](v5);
  v7 = v12 - v6;
  v8 = *(v0 + 48);
  v12[2] = *(v0 + 32);
  v12[3] = v8;
  v13 = *(v0 + 64);
  v9 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v9;
  *v7 = sub_24BAA8BCC();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AE08);
  sub_24BA81F00(&v7[*(v10 + 44)]);
  (*(v2 + 104))(v4, *MEMORY[0x277CE00F0], v1);
  sub_24B8F384C(&qword_27F06AE10, &qword_27F06AE00);
  sub_24BAA94AC();
  (*(v2 + 8))(v4, v1);
  return sub_24B8F35E4(v7, &qword_27F06AE00);
}

uint64_t sub_24BA84438@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_24BAA975C();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x28223BE20](v1);
  v61 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24BAA82DC();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v58 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v57 = &v55 - v6;
  v7 = sub_24BAA869C();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068970);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v66 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v13);
  v65 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CB8);
  v18 = v17 - 8;
  v19 = MEMORY[0x28223BE20](v17);
  v64 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  v23 = *(v8 + 28);
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_24BAA8B2C();
  v26 = *(*(v25 - 8) + 104);
  v26(&v22[v23], v24, v25);
  __asm { FMOV            V0.2D, #12.0 }

  v55 = _Q0;
  *v22 = _Q0;
  *&v22[*(v18 + 60)] = sub_24BA84A0C();
  *&v22[*(v18 + 64)] = 256;
  v32 = v56;
  v26(&v56[*(v8 + 28)], v24, v25);
  v33 = v32;
  *v32 = v55;
  v34 = v57;
  sub_24BA84040(v57);
  v35 = v58;
  v36 = v59;
  v37 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x277CDF3D0], v60);
  v38 = v35;
  sub_24BAA82CC();
  v39 = *(v36 + 8);
  v39(v38, v37);
  v39(v34, v37);
  (*(v62 + 104))(v61, *MEMORY[0x277CE0EE0], v63);
  v40 = sub_24BAA98BC();
  sub_24BAA832C();
  sub_24BA84EA0(v33, v15);
  v41 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE0) + 36)];
  v42 = v69;
  *v41 = v68;
  *(v41 + 1) = v42;
  *(v41 + 4) = v70;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AE8);
  *&v15[*(v43 + 52)] = v40;
  *&v15[*(v43 + 56)] = 256;
  v44 = sub_24BAA9D1C();
  v46 = v45;
  sub_24B95BB4C(v33);
  v47 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065AF0) + 36)];
  *v47 = v44;
  v47[1] = v46;
  v48 = v15;
  v49 = v65;
  sub_24B90294C(v48, v65, &qword_27F068970);
  v50 = v64;
  sub_24B8F3208(v22, v64, &qword_27F063CB8);
  v51 = v66;
  sub_24B8F3208(v49, v66, &qword_27F068970);
  v52 = v67;
  sub_24B8F3208(v50, v67, &qword_27F063CB8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ADB8);
  sub_24B8F3208(v51, v52 + *(v53 + 48), &qword_27F068970);
  sub_24B8F35E4(v49, &qword_27F068970);
  sub_24B8F35E4(v22, &qword_27F063CB8);
  sub_24B8F35E4(v51, &qword_27F068970);
  return sub_24B8F35E4(v50, &qword_27F063CB8);
}

uint64_t sub_24BA84A0C()
{
  v1 = sub_24BAA82DC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  if (*(v0 + *(type metadata accessor for exceptionsPlatter(0) + 20)))
  {
    sub_24BA84040(v7);
    (*(v2 + 104))(v5, *MEMORY[0x277CDF3D0], v1);
    v8 = sub_24BAA82CC();
    v9 = *(v2 + 8);
    v9(v5, v1);
    v9(v7, v1);
    v10 = objc_opt_self();
    if (v8)
    {
      v11 = [v10 systemGroupedBackgroundColor];
    }

    else
    {
      v11 = [v10 secondarySystemGroupedBackgroundColor];
    }

    v14 = v11;
    return sub_24BAA973C();
  }

  else
  {
    v12 = [objc_opt_self() secondarySystemGroupedBackgroundColor];

    return sub_24BAA973C();
  }
}

uint64_t sub_24BA84BD8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24BAA9D1C();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ADB0);
  return sub_24BA84438(a1 + *(v3 + 44));
}

uint64_t sub_24BA84C24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA8E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ADC0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ADC8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  sub_24BAA8EAC();
  if (sub_24BAA8EBC())
  {
    v14 = 0.45;
  }

  else
  {
    v14 = 1.0;
  }

  (*(v3 + 32))(v9, v5, v2);
  *&v9[*(v7 + 44)] = v14;
  if (sub_24BAA8EBC())
  {
    v15 = 0.98;
  }

  else
  {
    v15 = 1.0;
  }

  sub_24BAA9DFC();
  v17 = v16;
  v19 = v18;
  sub_24B90294C(v9, v13, &qword_27F06ADC0);
  v20 = &v13[*(v11 + 44)];
  *v20 = v15;
  *(v20 + 1) = v15;
  *(v20 + 2) = v17;
  *(v20 + 3) = v19;
  v21 = sub_24BAA9D5C();
  v22 = sub_24BAA8EBC();
  sub_24B90294C(v13, a1, &qword_27F06ADC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06ADD0);
  v24 = a1 + *(result + 36);
  *v24 = v21;
  *(v24 + 8) = v22 & 1;
  return result;
}

uint64_t sub_24BA84EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24BAA869C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24BA84F4C()
{
  result = qword_27F06ADE8;
  if (!qword_27F06ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06ADD0);
    sub_24BA85004();
    sub_24B8F384C(&qword_27F069420, &qword_27F069428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06ADE8);
  }

  return result;
}

unint64_t sub_24BA85004()
{
  result = qword_27F06ADF0;
  if (!qword_27F06ADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06ADC8);
    sub_24BA85090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06ADF0);
  }

  return result;
}

unint64_t sub_24BA85090()
{
  result = qword_27F06ADF8;
  if (!qword_27F06ADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06ADC0);
    sub_24BA8511C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06ADF8);
  }

  return result;
}

unint64_t sub_24BA8511C()
{
  result = qword_27F069418;
  if (!qword_27F069418)
  {
    sub_24BAA8E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069418);
  }

  return result;
}

uint64_t sub_24BA85174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  sub_24BAA99EC();
  sub_24BAA99EC();
  result = sub_24BAA99EC();
  *a4 = a1;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3 & 1;
  *(a4 + 40) = v9;
  *(a4 + 48) = v10;
  *(a4 + 56) = v9;
  *(a4 + 64) = v10;
  return result;
}

uint64_t sub_24BA85254(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_24BA852B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_24BA85358()
{
  result = qword_27F06AE40;
  if (!qword_27F06AE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0657D0);
    sub_24BA853E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AE40);
  }

  return result;
}

unint64_t sub_24BA853E4()
{
  result = qword_27F06AE48;
  if (!qword_27F06AE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AE50);
    sub_24BA8549C();
    sub_24B8F384C(&unk_27F069060, &qword_27F0658A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AE48);
  }

  return result;
}

unint64_t sub_24BA8549C()
{
  result = qword_27F06AE58;
  if (!qword_27F06AE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AE60);
    sub_24BA85554();
    sub_24B8F384C(&qword_27F0681B0, &qword_27F0681B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AE58);
  }

  return result;
}

unint64_t sub_24BA85554()
{
  result = qword_27F06AE68;
  if (!qword_27F06AE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066230);
    sub_24B8F699C();
    sub_24B8F384C(&unk_27F069040, &unk_27F063278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AE68);
  }

  return result;
}

uint64_t sub_24BA85638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24BA856C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24BA85760()
{
  sub_24B936C64();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24BA857CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AE00);
  sub_24B8F384C(&qword_27F06AE10, &qword_27F06AE00);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24BA85884()
{
  result = qword_27F06AF10;
  if (!qword_27F06AF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AF00);
    sub_24BA8593C();
    sub_24B8F384C(&qword_27F064EB8, &qword_27F0642A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AF10);
  }

  return result;
}

unint64_t sub_24BA8593C()
{
  result = qword_27F06AF18;
  if (!qword_27F06AF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AEF8);
    sub_24BA859F4();
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AF18);
  }

  return result;
}

unint64_t sub_24BA859F4()
{
  result = qword_27F06AF20;
  if (!qword_27F06AF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AF28);
    sub_24B8F384C(&qword_27F06AF30, &qword_27F06AF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AF20);
  }

  return result;
}

uint64_t sub_24BA85AB0()
{
  type metadata accessor for CarStatus();
  swift_allocObject();
  return sub_24B97B558();
}

uint64_t sub_24BA85AF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24BA85B3C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_24BA85BB8()
{
  type metadata accessor for CarStatus();
  sub_24BA88680(&qword_27F06AF40, type metadata accessor for CarStatus);
  sub_24BAA82FC();
  sub_24BAA84DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063C00);
  sub_24BAA9B8C();
  type metadata accessor for AutoReplyRow();
  sub_24BA88680(&qword_27F06AF48, type metadata accessor for AutoReplyRow);
  sub_24BA85FC0();
  return sub_24BAA849C();
}

uint64_t sub_24BA85D68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CarStatus();
  sub_24BA88680(&qword_27F06AF40, type metadata accessor for CarStatus);
  sub_24BAA830C();
  swift_getKeyPath();
  sub_24BAA84FC();

  if (*a1)
  {

    v4 = sub_24B991A94();

    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
    swift_storeEnumTagMultiPayload();
    result = type metadata accessor for AutoReplyRow();
    v6 = a2 + *(result + 20);
    *v6 = v7;
    *(v6 + 2) = v8;
    *(a2 + *(result + 24)) = v4;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA88680(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AutoReplyRow()
{
  result = qword_27F06AF58;
  if (!qword_27F06AF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24BA85FC0()
{
  result = qword_27F06AF50;
  if (!qword_27F06AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06AF50);
  }

  return result;
}

uint64_t sub_24BA86048(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24BA86128(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24BA861F0()
{
  sub_24BA862EC(319, &qword_27F063A30, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24BA862EC(319, &qword_27F06AF68, type metadata accessor for CARAutoReplyAudience, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_24B9366D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24BA862EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24BA863B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AutoReplyRow();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_24BA88308(v1, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24BA884AC(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = sub_24BAA8AAC();
  v9 = sub_24BAA8BDC();
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AF80);
  v11 = a1 + v10[9];
  result = swift_getKeyPath();
  *v11 = result;
  v11[8] = 0;
  v13 = a1 + v10[10];
  *v13 = 0;
  v13[8] = 0;
  v14 = a1 + v10[11];
  *v14 = 0;
  v14[8] = 0;
  v15 = (a1 + v10[12]);
  *v15 = sub_24BA88510;
  v15[1] = v7;
  v16 = a1 + v10[13];
  *v16 = v8;
  v16[8] = 0;
  v17 = a1 + v10[14];
  *v17 = v9;
  v17[8] = 0;
  return result;
}

uint64_t sub_24BA86564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = sub_24BAA8AAC();
  sub_24BA867B4(&v35);
  v29 = *(&v35 + 1);
  v30 = v35;
  v31 = v37;
  v32 = v38;
  v27 = v36;
  v28 = v39;
  v42 = 0;
  v41 = v36;
  v40 = v39;
  v4 = (a1 + *(type metadata accessor for AutoReplyRow() + 20));
  v5 = *v4;
  v6 = *(v4 + 2);
  v35 = v5;
  v36 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AF88);
  MEMORY[0x24C24FC10](&v34, v7);
  *&v35 = sub_24BA86974(v34);
  *(&v35 + 1) = v8;
  sub_24B8F5E3C();
  v9 = sub_24BAA93CC();
  v11 = v10;
  v13 = v12;
  sub_24BAA916C();
  v14 = sub_24BAA939C();
  v16 = v15;
  v18 = v17;

  sub_24B900910(v9, v11, v13 & 1);

  LODWORD(v35) = sub_24BAA8E4C();
  v19 = sub_24BAA934C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_24B900910(v14, v16, v18 & 1);

  LOBYTE(v35) = v27;
  LOBYTE(v34) = 1;
  *a2 = v33;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v30;
  *(a2 + 32) = v29;
  *(a2 + 40) = v27;
  *(a2 + 48) = v31;
  *(a2 + 56) = v32;
  *(a2 + 64) = v28;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = v19;
  *(a2 + 96) = v21;
  *(a2 + 104) = v23 & 1;
  *(a2 + 112) = v25;
  sub_24B8F319C(v30, v29, v27);

  sub_24B8F319C(v19, v21, v23 & 1);

  sub_24B900910(v19, v21, v23 & 1);

  sub_24B900910(v30, v29, v35);
}

uint64_t sub_24BA867B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  v2 = sub_24BAA93CC();
  v4 = v3;
  v6 = v5;
  sub_24BAA916C();
  v7 = sub_24BAA939C();
  v9 = v8;
  v11 = v10;

  sub_24B900910(v2, v4, v6 & 1);

  sub_24BAA988C();
  v12 = sub_24BAA933C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_24B900910(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_24B8F319C(v12, v14, v16 & 1);

  sub_24B900910(v12, v14, v16 & 1);
}

uint64_t sub_24BA86974(uint64_t a1)
{
  result = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    goto LABEL_15;
  }

  if (a1 == 3)
  {
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

LABEL_15:
    swift_once();
    return sub_24BAA7C2C();
  }

  if (a1 != 4)
  {
    return result;
  }

  if (qword_27F063110 != -1)
  {
    goto LABEL_15;
  }

  return sub_24BAA7C2C();
}

uint64_t sub_24BA86B70@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AFA0);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v53 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v52 = v44 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AFA8);
  v45 = *(v47 - 8);
  v7 = MEMORY[0x28223BE20](v47);
  v46 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = v44 - v9;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v44[2] = qword_27F077088;
  v58 = sub_24BAA7C2C();
  v59 = v10;
  sub_24B8F5E3C();
  v63 = sub_24BAA93CC();
  v64 = v11;
  v65 = v12 & 1;
  v66 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v58 = sub_24BA871F0(v58);
  v59 = v14;
  v15 = sub_24BAA93CC();
  v44[1] = v44;
  v58 = v15;
  v59 = v16;
  v60 = v17 & 1;
  v61 = v18;
  v62 = 256;
  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AFB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639E0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AFB8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06AFC0);
  v21 = sub_24BAA8A3C();
  v44[0] = a1;
  v22 = v21;
  v23 = sub_24B8F384C(&qword_27F06AFC8, &qword_27F06AFC0);
  v54 = v20;
  v55 = v22;
  v56 = v23;
  v57 = MEMORY[0x277CDDDA0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v19;
  v55 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B8F699C();
  v25 = v51;
  sub_24BAA9C2C();
  v58 = sub_24BAA7C2C();
  v59 = v26;
  v58 = sub_24BAA93CC();
  v59 = v27;
  v60 = v28 & 1;
  v61 = v29;
  MEMORY[0x28223BE20](v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AFD0);
  sub_24B8F384C(&qword_27F06AFD8, &qword_27F06AFD0);
  v30 = v52;
  sub_24BAA9C1C();
  v31 = v45;
  v32 = *(v45 + 16);
  v33 = v46;
  v34 = v47;
  v32(v46, v25, v47);
  v36 = v49;
  v35 = v50;
  v37 = *(v49 + 16);
  v37(v53, v30, v50);
  v38 = v48;
  v32(v48, v33, v34);
  v39 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AFE0) + 48)];
  v40 = v53;
  v37(v39, v53, v35);
  v41 = *(v36 + 8);
  v41(v52, v35);
  v42 = *(v31 + 8);
  v42(v51, v34);
  v41(v40, v35);
  return (v42)(v33, v34);
}

uint64_t sub_24BA871F0(uint64_t a1)
{
  result = 0;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    else
    {
      if (a1 != 2)
      {
        return result;
      }

      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    goto LABEL_15;
  }

  if (a1 == 3)
  {
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

LABEL_15:
    swift_once();
    return sub_24BAA7C2C();
  }

  if (a1 != 4)
  {
    return result;
  }

  if (qword_27F063110 != -1)
  {
    goto LABEL_15;
  }

  return sub_24BAA7C2C();
}

uint64_t sub_24BA873E8@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_24BAA8A3C();
  v18 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AFC0);
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AFB8);
  v16 = *(v7 - 8);
  v17 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v25 = sub_24BAA7C2C();
  v26 = v10;
  type metadata accessor for CarStatus();
  sub_24BA88680(&qword_27F06AF40, type metadata accessor for CarStatus);
  sub_24BAA84EC();
  swift_getKeyPath();
  sub_24BAA84FC();

  v23 = v20;
  v24 = v21;
  type metadata accessor for CARAutoReplyAudience(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B000);
  sub_24BA88680(&qword_27F06B008, type metadata accessor for CARAutoReplyAudience);
  sub_24B8F384C(&qword_27F06B010, &qword_27F06B000);
  sub_24B8F5E3C();
  sub_24BAA9ADC();
  sub_24BAA8A2C();
  v11 = sub_24B8F384C(&qword_27F06AFC8, &qword_27F06AFC0);
  v12 = MEMORY[0x277CDDDA0];
  sub_24BAA947C();
  (*(v18 + 8))(v3, v1);
  (*(v15 + 8))(v6, v4);
  *&v20 = v4;
  *(&v20 + 1) = v1;
  v21 = v11;
  v22 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = v17;
  sub_24BAA94BC();
  return (*(v16 + 8))(v9, v13);
}

uint64_t sub_24BA8788C@<X0>(char *a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B018);
  v54 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v57 = &v50 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v55 = &v50 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v58 = &v50 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v53 = (&v50 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v50 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v60 = sub_24BAA7C2C();
  v61 = v20;
  sub_24B8F5E3C();
  *v19 = sub_24BAA93CC();
  *(v19 + 1) = v21;
  v19[16] = v22 & 1;
  *(v19 + 3) = v23;
  *(v19 + 4) = 1;
  v19[40] = 1;
  v52 = v19;
  v60 = sub_24BAA7C2C();
  v61 = v24;
  *v17 = sub_24BAA93CC();
  *(v17 + 1) = v25;
  v17[16] = v26 & 1;
  *(v17 + 3) = v27;
  *(v17 + 4) = 3;
  v17[40] = 1;
  v51 = v17;
  v60 = sub_24BAA7C2C();
  v61 = v28;
  *v14 = sub_24BAA93CC();
  *(v14 + 1) = v29;
  v14[16] = v30 & 1;
  *(v14 + 3) = v31;
  *(v14 + 4) = 4;
  v14[40] = 1;
  v60 = sub_24BAA7C2C();
  v61 = v32;
  v33 = sub_24BAA93CC();
  v35 = v53;
  v34 = v54;
  *v53 = v33;
  v35[1] = v36;
  *(v35 + 16) = v37 & 1;
  v35[3] = v38;
  v35[4] = 2;
  *(v35 + 40) = 1;
  v39 = *(v34 + 16);
  v40 = v58;
  v39(v58, v19, v1);
  v41 = v55;
  v39(v55, v17, v1);
  v39(v57, v14, v1);
  v39(v59, v35, v1);
  v42 = v41;
  v43 = v56;
  v39(v56, v40, v1);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B020);
  v39(&v43[v44[12]], v42, v1);
  v45 = v57;
  v39(&v43[v44[16]], v57, v1);
  v46 = &v43[v44[20]];
  v47 = v59;
  v39(v46, v59, v1);
  v48 = *(v34 + 8);
  v48(v35, v1);
  v48(v14, v1);
  v48(v51, v1);
  v48(v52, v1);
  v48(v47, v1);
  v48(v45, v1);
  v48(v42, v1);
  return (v48)(v58, v1);
}

uint64_t sub_24BA87DF4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24BAA9D1C();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AFE8);
  return sub_24BA87E54(a1 + *(v3 + 44));
}

uint64_t sub_24BA87E54@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v37 = sub_24BAA82BC();
  v35 = *(v37 - 8);
  v1 = v35;
  v2 = MEMORY[0x28223BE20](v37);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - v5;
  type metadata accessor for CarStatus();
  sub_24BA88680(&qword_27F06AF40, type metadata accessor for CarStatus);
  sub_24BAA84EC();
  swift_getKeyPath();
  sub_24BAA84FC();

  v34 = v6;
  sub_24BAA82AC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  sub_24B8F5E3C();
  v7 = sub_24BAA93CC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_24BAA90BC();
  sub_24BAA828C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v11 &= 1u;
  LOBYTE(v46[0]) = v11;
  LOBYTE(v40) = 0;
  v23 = *(v1 + 16);
  v24 = v6;
  v25 = v37;
  v23(v4, v24, v37);
  v26 = v36;
  v23(v36, v4, v25);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AFF0) + 48)];
  *&v40 = v7;
  *(&v40 + 1) = v9;
  LOBYTE(v41) = v11;
  *(&v41 + 1) = *v39;
  DWORD1(v41) = *&v39[3];
  *(&v41 + 1) = v13;
  *&v42 = 0;
  BYTE8(v42) = v14;
  HIDWORD(v42) = *&v38[3];
  *(&v42 + 9) = *v38;
  *&v43 = v16;
  *(&v43 + 1) = v18;
  *&v44 = v20;
  *(&v44 + 1) = v22;
  v45 = 0;
  v27[80] = 0;
  v28 = v41;
  *v27 = v40;
  *(v27 + 1) = v28;
  v29 = v44;
  v30 = v42;
  *(v27 + 3) = v43;
  *(v27 + 4) = v29;
  *(v27 + 2) = v30;
  sub_24BA885A8(&v40, v46);
  v31 = *(v35 + 8);
  v31(v34, v25);
  v46[0] = v7;
  v46[1] = v9;
  v47 = v11;
  *v48 = *v39;
  *&v48[3] = *&v39[3];
  v49 = v13;
  v50 = 0;
  v51 = v14;
  *v52 = *v38;
  *&v52[3] = *&v38[3];
  v53 = v16;
  v54 = v18;
  v55 = v20;
  v56 = v22;
  v57 = 0;
  sub_24BA88618(v46);
  return (v31)(v4, v25);
}

uint64_t sub_24BA88244()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AF90);
  sub_24B8F384C(&qword_27F06AF98, &qword_27F06AF90);
  return sub_24BAA92CC();
}

uint64_t sub_24BA88308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoReplyRow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA8836C()
{
  v1 = *(type metadata accessor for AutoReplyRow() - 8);
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

uint64_t sub_24BA884AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoReplyRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA88510@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutoReplyRow() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24BA86564(v4, a1);
}

uint64_t sub_24BA885A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AFF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA88618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06AFF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24BA88680(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_24BA88774()
{
  _s8SentinelCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F077088 = result;
  return result;
}

uint64_t sub_24BA887E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067490);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24BA88938(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067490);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24BA88A9C()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24BA02DAC(319, &qword_27F068F10, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_24BA88FC0(319, &qword_27F063BA8, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24BA88B88();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24BA88B88()
{
  if (!qword_27F0674B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0674C0);
    v0 = sub_24BAA82EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F0674B8);
    }
  }
}

uint64_t sub_24BA88C00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_24BA88D5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24BA88EB8()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24BA02DAC(319, &qword_27F063A30, MEMORY[0x277CE02A8]);
    if (v1 <= 0x3F)
    {
      sub_24BA02DAC(319, &qword_27F068F10, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        sub_24BA88FC0(319, &qword_27F063A40, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24BA88FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24BA89030@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_24BAAA5FC();

  v9 = 0xD00000000000002FLL;
  v10 = 0x800000024BAC62B0;
  v5 = sub_24BA89198();
  MEMORY[0x24C250160](v5);

  sub_24BAA7D4C();

  v6 = sub_24BAA7D5C();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result != 1)
  {
    return (*(v7 + 32))(a1, v4, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_24BA89198()
{
  if (*v0)
  {

    sub_24B984444();
    v1 = sub_24B8D7188();

    if (v1)
    {
      v2 = [v1 mode];

      v3 = [v2 semanticType];

      if (v3 > 4)
      {
        if (v3 <= 6)
        {
          if (v3 == 5)
          {
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_39;
          }

          goto LABEL_35;
        }

        switch(v3)
        {
          case 7:
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_39;
          case 8:
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

LABEL_39:
            swift_once();
            return sub_24BAA7C2C();
          case 9:
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_39;
        }
      }

      else
      {
        if (v3 > 1)
        {
          if (v3 != 2 && v3 != 3)
          {
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_39;
          }

LABEL_35:
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }

          goto LABEL_39;
        }

        if (!v3)
        {
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }

          goto LABEL_39;
        }

        if (v3 == 1)
        {
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }

          goto LABEL_39;
        }
      }
    }

    else
    {
    }

    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    sub_24BAA7C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24BAAD5B0;

    sub_24B984444();
    v5 = sub_24B8D7188();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 mode];

      v8 = [v7 name];
      v9 = sub_24BAAA01C();
      v11 = v10;
    }

    else
    {

      v9 = 0;
      v11 = 0xE000000000000000;
    }

    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_24B8F6A20();
    *(v4 + 32) = v9;
    *(v4 + 40) = v11;
    v12 = sub_24BAA9FEC();

    return v12;
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA897D4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v57 = sub_24BAA7D5C();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24BAA7E8C();
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24BAA7CDC();
  v64 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24BAA9FCC();
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24BAA9FAC();
  MEMORY[0x28223BE20](v8 - 8);
  v53 = sub_24BAA7CEC();
  v47 = *(v53 - 8);
  v48 = v53 - 8;
  v49 = v47;
  MEMORY[0x28223BE20](v53 - 8);
  v61 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24BAA9ECC();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v59 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FocusNameAndAppearanceView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B080);
  MEMORY[0x28223BE20](v43);
  v16 = &v43 - v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B088);
  v17 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B090);
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B098);
  MEMORY[0x28223BE20](v45);
  v60 = &v43 - v23;
  *v16 = sub_24BAA8BCC();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v24 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B0A0) + 44)];
  v58 = v1;
  sub_24BA8A1C4(v1, v24);
  sub_24BA8EA70(v1, &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusNameAndAppearanceView);
  v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v26 = swift_allocObject();
  sub_24BA8DFAC(&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  sub_24B8F384C(&qword_27F06B0A8, &qword_27F06B080);
  sub_24BAA94CC();

  sub_24B8F35E4(v16, &qword_27F06B080);
  sub_24BAA9D1C();
  sub_24BAA86BC();
  (*(v17 + 32))(v22, v19, v44);
  v27 = &v22[*(v20 + 36)];
  v28 = v70;
  *(v27 + 4) = v69;
  *(v27 + 5) = v28;
  *(v27 + 6) = v71;
  v29 = v66;
  *v27 = v65;
  *(v27 + 1) = v29;
  v30 = v68;
  *(v27 + 2) = v67;
  *(v27 + 3) = v30;
  sub_24BA8E028();
  sub_24BAA94DC();
  sub_24B8F35E4(v22, &qword_27F06B090);
  v31 = v59;
  *v59 = 0xD00000000000001CLL;
  v31[1] = 0x800000024BAC4440;
  (*(v62 + 104))();
  sub_24BAA9F9C();
  sub_24BAA9F8C();
  sub_24BA89198();
  sub_24BAA9F7C();

  sub_24BAA9F8C();
  sub_24BAA9FBC();
  v32 = type metadata accessor for ActivityConfigViewModel();
  v33 = v50;
  *v50 = v32;
  v34 = *MEMORY[0x277CC9120];
  v35 = *(v64 + 104);
  v64 += 104;
  v36 = v51;
  v35(v33, v34, v51);
  sub_24BAA7E7C();
  sub_24BAA7CFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EE0);
  v37 = v49;
  *(swift_allocObject() + 16) = xmmword_24BAAD5B0;
  sub_24BAA9F6C();
  *v33 = v32;
  v35(v33, v34, v36);
  sub_24BAA7E7C();
  sub_24BAA7CFC();
  v38 = v54;
  sub_24BA89030(v54);
  sub_24BA8E124();
  v40 = v59;
  v39 = v60;
  v41 = v61;
  sub_24BAA93DC();

  (*(v56 + 8))(v38, v57);
  (*(v37 + 8))(v41, v53);
  (*(v62 + 8))(v40, v63);
  return sub_24B8F35E4(v39, &qword_27F06B098);
}

uint64_t sub_24BA8A1C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a1;
  v144 = a2;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B0C0);
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v121 = &v117 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B0C8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v143 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v146 = &v117 - v6;
  v139 = sub_24BAA8B7C();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B0D0);
  MEMORY[0x28223BE20](v135);
  v136 = &v117 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B0D8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v140 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v151 = &v117 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B0E0);
  v120 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v119 = &v117 - v13;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B0E8);
  MEMORY[0x28223BE20](v129);
  v130 = &v117 - v14;
  v15 = sub_24BAA8E8C();
  v124 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v123 = (&v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = type metadata accessor for FocusNameAndAppearanceView(0);
  v149 = *(v125 - 8);
  v17 = *(v149 + 64);
  MEMORY[0x28223BE20](v125);
  v18 = sub_24BAA8FBC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FocusNameAndAppearanceView.MastheadLeadImageContent(0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0631E8);
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v147 = &v117 - v25;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B0F0);
  v122 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v145 = &v117 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B0F8);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v134 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v148 = &v117 - v30;
  v31 = [objc_opt_self() currentDevice];
  v32 = [v31 userInterfaceIdiom];

  type metadata accessor for ActivityConfigViewModel();
  v117 = sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *v24 = sub_24BAA86FC();
  v24[1] = v33;
  v34 = v22[5];
  *(v24 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v35 = v22[6];
  *(v24 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v36 = v24 + v22[7];
  v133 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v17;
  LOBYTE(v152) = 0;
  sub_24BAA99EC();
  v37 = *(&v158 + 1);
  *v36 = v158;
  *(v36 + 1) = v37;
  if (v32)
  {
    v38 = v24 + v22[8];
    LOBYTE(v152) = 0;
    sub_24BAA99EC();
    v39 = *(&v158 + 1);
    *v38 = v158;
    *(v38 + 1) = v39;
    sub_24BAA8F9C();
    v40 = sub_24BA8E1E0(&qword_27F0631F8, type metadata accessor for FocusNameAndAppearanceView.MastheadLeadImageContent);
    v41 = v18;
    v42 = v15;
    v118 = v15;
    sub_24BAA95FC();
    (*(v19 + 8))(v21, v41);
    sub_24BA8EAD8(v24, type metadata accessor for FocusNameAndAppearanceView.MastheadLeadImageContent);
    v43 = v150;
    v44 = v150 + *(v125 + 24);
    v45 = *v44;
    v46 = *(v44 + 1);
    LOBYTE(v44) = v44[16];
    *&v158 = v45;
    *(&v158 + 1) = v46;
    LOBYTE(v159) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
    sub_24BAA9B8C();
    LODWORD(v125) = v153;
    sub_24BA8EA70(v43, &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusNameAndAppearanceView);
    v47 = (*(v149 + 80) + 16) & ~*(v149 + 80);
    v48 = swift_allocObject();
    sub_24BA8DFAC(&v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47);
    v49 = sub_24BAA9A3C();
    v50 = v123;
    *v123 = v49;
    v51 = v124;
    (*(v124 + 104))(v50, *MEMORY[0x277CDE248], v42);
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0631F0);
    *&v158 = v22;
    *(&v158 + 1) = v40;
    *&v116 = swift_getOpaqueTypeConformance2();
    *(&v116 + 1) = sub_24B8F249C();
    v52 = v127;
    v53 = v145;
    v54 = v147;
    sub_24BAA948C();

    (*(v51 + 8))(v50, v118);
    (*(v126 + 8))(v54, v52);
    v55 = v122;
    v56 = v128;
    (*(v122 + 16))(v130, v53, v128);
    swift_storeEnumTagMultiPayload();
    *&v158 = v52;
    *(&v158 + 1) = v120;
    v159 = v116;
    swift_getOpaqueTypeConformance2();
    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B100);
    v58 = sub_24B8F384C(&qword_27F06B108, &qword_27F06B100);
    *&v158 = v52;
    *(&v158 + 1) = v57;
    *&v159 = v116;
    *(&v159 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v59 = v148;
    sub_24BAA8D0C();
    (*(v55 + 8))(v145, v56);
  }

  else
  {
    v60 = v24 + v22[8];
    LOBYTE(v152) = 0;
    sub_24BAA99EC();
    v61 = *(&v158 + 1);
    *v60 = v158;
    *(v60 + 1) = v61;
    sub_24BAA8F9C();
    v62 = sub_24BA8E1E0(&qword_27F0631F8, type metadata accessor for FocusNameAndAppearanceView.MastheadLeadImageContent);
    sub_24BAA95FC();
    (*(v19 + 8))(v21, v18);
    sub_24BA8EAD8(v24, type metadata accessor for FocusNameAndAppearanceView.MastheadLeadImageContent);
    v63 = v150;
    v64 = v150 + *(v125 + 24);
    v65 = *v64;
    v66 = *(v64 + 1);
    LOBYTE(v64) = v64[16];
    *&v158 = v65;
    *(&v158 + 1) = v66;
    LOBYTE(v159) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
    sub_24BAA9B8C();
    sub_24BA8EA70(v63, &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusNameAndAppearanceView);
    v67 = (*(v149 + 80) + 16) & ~*(v149 + 80);
    v68 = swift_allocObject();
    sub_24BA8DFAC(&v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v68 + v67);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B100);
    *&v158 = v22;
    *(&v158 + 1) = v62;
    *&v115 = swift_getOpaqueTypeConformance2();
    *(&v115 + 1) = sub_24B8F384C(&qword_27F06B108, &qword_27F06B100);
    v70 = v69;
    v71 = v119;
    v72 = v127;
    v73 = v147;
    sub_24BAA968C();

    (*(v126 + 8))(v73, v72);
    v74 = v120;
    v75 = v131;
    (*(v120 + 16))(v130, v71, v131);
    swift_storeEnumTagMultiPayload();
    v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0631F0);
    v77 = sub_24B8F249C();
    *&v158 = v72;
    *(&v158 + 1) = v76;
    *&v159 = v115;
    *(&v159 + 1) = v77;
    swift_getOpaqueTypeConformance2();
    *&v158 = v72;
    *(&v158 + 1) = v70;
    v159 = v115;
    swift_getOpaqueTypeConformance2();
    v59 = v148;
    sub_24BAA8D0C();
    (*(v74 + 8))(v71, v75);
  }

  v78 = v150;
  *&v158 = sub_24BA89198();
  *(&v158 + 1) = v79;
  sub_24B8F5E3C();
  v80 = sub_24BAA93CC();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  KeyPath = swift_getKeyPath();
  v88 = v84 & 1;
  LOBYTE(v158) = v84 & 1;
  v89 = sub_24BAA988C();
  v90 = swift_getKeyPath();
  v91 = sub_24BAA918C();
  v92 = swift_getKeyPath();
  *&v152 = v80;
  *(&v152 + 1) = v82;
  LOBYTE(v153) = v88;
  *(&v153 + 1) = v86;
  LOWORD(v154) = 256;
  *(&v154 + 1) = KeyPath;
  LOBYTE(v155) = 1;
  *(&v155 + 1) = v90;
  *&v156 = v89;
  *(&v156 + 1) = v92;
  v157 = v91;
  sub_24BAA91AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B110);
  sub_24BA8E460();
  v93 = v136;
  sub_24BAA941C();
  v161 = v155;
  v162 = v156;
  v163 = v157;
  v158 = v152;
  v159 = v153;
  v160 = v154;
  sub_24B8F35E4(&v158, &qword_27F06B110);
  v94 = swift_getKeyPath();
  v95 = v93 + *(v135 + 36);
  *v95 = v94;
  *(v95 + 8) = 4;
  *(v95 + 16) = 0;
  v96 = v137;
  sub_24BAA8B6C();
  sub_24BA8E690();
  sub_24BAA961C();
  (*(v138 + 8))(v96, v139);
  sub_24B8F35E4(v93, &qword_27F06B0D0);
  if (*v78)
  {

    sub_24B984444();
    v97 = sub_24B8D8FB0();

    v98 = 1;
    v99 = v142;
    v100 = v141;
    v101 = v133;
    v102 = v149;
    if (v97)
    {
      sub_24BA8EA70(v78, v133, type metadata accessor for FocusNameAndAppearanceView);
      v103 = (*(v102 + 80) + 16) & ~*(v102 + 80);
      v104 = swift_allocObject();
      sub_24BA8DFAC(v101, v104 + v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067950);
      sub_24B9D39AC();
      v105 = v121;
      sub_24BAA9A5C();
      (*(v100 + 32))(v146, v105, v99);
      v98 = 0;
    }

    v106 = v146;
    (*(v100 + 56))(v146, v98, 1, v99);
    v107 = v134;
    sub_24B8F3208(v59, v134, &qword_27F06B0F8);
    v108 = v151;
    v109 = v140;
    sub_24B8F3208(v151, v140, &qword_27F06B0D8);
    v110 = v143;
    sub_24B8F3208(v106, v143, &qword_27F06B0C8);
    v111 = v144;
    sub_24B8F3208(v107, v144, &qword_27F06B0F8);
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B148);
    v113 = v111 + v112[12];
    *v113 = 0;
    *(v113 + 8) = 1;
    sub_24B8F3208(v109, v111 + v112[16], &qword_27F06B0D8);
    sub_24B8F3208(v110, v111 + v112[20], &qword_27F06B0C8);
    sub_24B8F35E4(v106, &qword_27F06B0C8);
    sub_24B8F35E4(v108, &qword_27F06B0D8);
    sub_24B8F35E4(v148, &qword_27F06B0F8);
    sub_24B8F35E4(v110, &qword_27F06B0C8);
    sub_24B8F35E4(v109, &qword_27F06B0D8);
    return sub_24B8F35E4(v107, &qword_27F06B0F8);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA8B6E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FocusNameAndAppearanceView(0);
  v56 = *(v4 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for ActivityEditView(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  *&v52 = a1[1];
  if (v9)
  {

    sub_24B984444();
    v10 = sub_24B8D7188();

    v65 = a2;
    v59 = a1;
    v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = v5;
    if (v10)
    {
      v11 = [v10 mode];

      v60 = [v11 semanticType];
    }

    else
    {
      v60 = 0;
    }

    type metadata accessor for ActivityConfigViewModel();
    sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA86CC();
    swift_getKeyPath();
    sub_24BAA86EC();

    v63 = *(&v78 + 1);
    v64 = v78;
    v61 = *(&v79 + 1);
    v62 = v79;

    sub_24B984444();
    v12 = sub_24B8D7188();
    if (v12 && (v13 = v12, v14 = [v12 mode], v13, v14))
    {
      v15 = [v14 semanticType];

      v49 = v15 == -1;
    }

    else
    {

      v49 = 0;
    }

    v48 = v10 == 0;
    sub_24BAA86CC();
    swift_getKeyPath();
    sub_24BAA86EC();

    v55 = v75;
    v54 = v76;
    v53 = v77;
    sub_24BAA86CC();
    swift_getKeyPath();
    sub_24BAA86EC();

    v52 = v72;
    v51 = v73;
    v50 = v74;

    v16 = sub_24B984A68();

    v17 = sub_24B984A3C();

    v18 = v58;
    sub_24BA8EA70(v59, v58, type metadata accessor for FocusNameAndAppearanceView);
    v19 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v20 = swift_allocObject();
    sub_24BA8DFAC(v18, v20 + v19);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
    swift_storeEnumTagMultiPayload();
    v21 = v8 + v6[7];
    v22 = (v8 + v6[11]);
    v71 = 0;
    v70 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A10);
    sub_24BAA99EC();
    v59 = v68;
    v23 = v8 + v6[13];
    LOBYTE(v70) = 0;
    sub_24BAA99EC();
    v24 = v67;
    *v23 = v66;
    *(v23 + 1) = v24;
    v25 = v6[18];
    *(v8 + v25) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
    swift_storeEnumTagMultiPayload();
    *(v8 + v6[6]) = 0;
    *v21 = v60;
    v21[8] = v48;
    *(v8 + v6[5]) = v49;
    *(v8 + v6[14]) = v16;
    *(v8 + v6[15]) = v17;
    v26 = (v8 + v6[16]);
    *v26 = sub_24BA8EB38;
    v26[1] = v20;
    v27 = (v8 + v6[17]);
    *v27 = sub_24B9FA73C;
    v27[1] = 0;
    v28 = v64;
    v66 = v64;
    v29 = v63;
    v67 = v63;
    v30 = v62;
    v68 = v62;
    v31 = v61;
    v69 = v61;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650E8);
    MEMORY[0x24C24FC10](&v70);

    v33 = v71;
    *v22 = v70;
    v22[1] = v33;
    v22[2] = 0;
    v66 = v28;
    v67 = v29;
    v68 = v30;
    v69 = v31;
    MEMORY[0x24C24FC10](&v70, v32);
    v34 = v71;
    v35 = (v8 + v6[12]);
    *v35 = v70;
    v35[1] = v34;
    v35[2] = 0;
    v36 = (v8 + v6[8]);
    *v36 = v28;
    v36[1] = v29;
    v36[2] = v30;
    v36[3] = v31;
    v37 = v8 + v6[9];
    *v37 = v55;
    v38 = v53;
    *(v37 + 2) = v54;
    *(v37 + 3) = v38;
    v39 = v8 + v6[10];
    *v39 = v52;
    v40 = v50;
    *(v39 + 2) = v51;
    *(v39 + 3) = v40;
    sub_24BAA9D1C();
    sub_24BAA86BC();
    v41 = v65;
    sub_24BA8EA70(v8, v65, type metadata accessor for ActivityEditView);
    v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0631F0) + 36));
    v43 = v83;
    v42[4] = v82;
    v42[5] = v43;
    v42[6] = v84;
    v44 = v79;
    *v42 = v78;
    v42[1] = v44;
    v45 = v81;
    v42[2] = v80;
    v42[3] = v45;
    return sub_24BA8EAD8(v8, type metadata accessor for ActivityEditView);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

void sub_24BA8BF5C(uint64_t *a1@<X8>)
{
  sub_24B984444();
  v2 = sub_24B8D7188();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 mode];

    v5 = [v4 name];
    v6 = sub_24BAAA01C();
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *a1 = v6;
  a1[1] = v8;
}

uint64_t sub_24BA8C014(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

  sub_24BAA814C();
  sub_24BAA816C();

  sub_24B984444();
  sub_24B8D71E4(v1, v2);
}

void sub_24BA8C0E0(uint64_t *a1@<X8>)
{
  sub_24B984444();
  v2 = sub_24B8D7188();
  if (v2 && (v3 = v2, v4 = [v2 mode], v3, v5 = objc_msgSend(v4, sel_tintColorName), v4, v5))
  {
    v6 = sub_24BAAA01C();
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0xE000000000000000;
  }

  *a1 = v6;
  a1[1] = v8;
}

uint64_t sub_24BA8C19C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B150);
  sub_24BA8E8B4();
  return sub_24BAA84CC();
}

uint64_t sub_24BA8C20C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FocusNameAndAppearanceView(0);
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for ActivityEditView(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  *&v51 = a1[1];
  if (v9)
  {

    sub_24B984444();
    v10 = sub_24B8D7188();

    v64 = a2;
    v58 = a1;
    v57 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = v5;
    if (v10)
    {
      v11 = [v10 mode];

      v59 = [v11 semanticType];
    }

    else
    {
      v59 = 0;
    }

    type metadata accessor for ActivityConfigViewModel();
    sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA86CC();
    swift_getKeyPath();
    sub_24BAA86EC();

    v62 = v78;
    v63 = v77;
    v61 = v79;
    v60 = v80;

    sub_24B984444();
    v12 = sub_24B8D7188();
    if (v12 && (v13 = v12, v14 = [v12 mode], v13, v14))
    {
      v15 = [v14 semanticType];

      v48 = v15 == -1;
    }

    else
    {

      v48 = 0;
    }

    v47 = v10 == 0;
    sub_24BAA86CC();
    swift_getKeyPath();
    sub_24BAA86EC();

    v54 = v74;
    v53 = v75;
    v52 = v76;
    sub_24BAA86CC();
    swift_getKeyPath();
    sub_24BAA86EC();

    v51 = v71;
    v50 = v72;
    v49 = v73;

    v16 = sub_24B984A68();

    v17 = sub_24B984A3C();

    v18 = v57;
    sub_24BA8EA70(v58, v57, type metadata accessor for FocusNameAndAppearanceView);
    v19 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v20 = swift_allocObject();
    sub_24BA8DFAC(v18, v20 + v19);
    *v8 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
    swift_storeEnumTagMultiPayload();
    v21 = v8 + v6[7];
    v22 = (v8 + v6[11]);
    v69 = 0;
    v70 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A10);
    sub_24BAA99EC();
    v58 = v67;
    v23 = v8 + v6[13];
    LOBYTE(v69) = 0;
    sub_24BAA99EC();
    v24 = v66;
    *v23 = v65;
    *(v23 + 1) = v24;
    v25 = v6[18];
    *(v8 + v25) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063968);
    swift_storeEnumTagMultiPayload();
    *(v8 + v6[6]) = 0;
    *v21 = v59;
    v21[8] = v47;
    *(v8 + v6[5]) = v48;
    *(v8 + v6[14]) = v16;
    *(v8 + v6[15]) = v17;
    v26 = (v8 + v6[16]);
    *v26 = sub_24BA8EE54;
    v26[1] = v20;
    v27 = (v8 + v6[17]);
    *v27 = sub_24B9FA73C;
    v27[1] = 0;
    v29 = v62;
    v28 = v63;
    v65 = v63;
    v66 = v62;
    v30 = v61;
    v31 = v60;
    v67 = v61;
    v68 = v60;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650E8);
    MEMORY[0x24C24FC10](&v69);

    v33 = v70;
    *v22 = v69;
    v22[1] = v33;
    v22[2] = 0;
    v65 = v28;
    v66 = v29;
    v67 = v30;
    v68 = v31;
    MEMORY[0x24C24FC10](&v69, v32);
    v34 = v70;
    v35 = (v8 + v6[12]);
    *v35 = v69;
    v35[1] = v34;
    v35[2] = 0;
    v36 = (v8 + v6[8]);
    *v36 = v28;
    v36[1] = v29;
    v36[2] = v30;
    v36[3] = v31;
    v37 = v8 + v6[9];
    *v37 = v54;
    v38 = v52;
    *(v37 + 2) = v53;
    *(v37 + 3) = v38;
    v39 = v8 + v6[10];
    *v39 = v51;
    v40 = v49;
    *(v39 + 2) = v50;
    *(v39 + 3) = v40;
    v41 = [objc_opt_self() systemGroupedBackgroundColor];
    v42 = sub_24BAA973C();
    LOBYTE(v17) = sub_24BAA90BC();
    v43 = v64;
    sub_24BA8EA70(v8, v64, type metadata accessor for ActivityEditView);
    v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B150) + 36);
    *v44 = v42;
    *(v44 + 8) = v17;
    return sub_24BA8EAD8(v8, type metadata accessor for ActivityEditView);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA8C9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (*a7)
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();

    sub_24B8D71E4(a1, a2);

    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();

    sub_24B8D76E4(a3, a4);

    sub_24BAA814C();
    sub_24BAA816C();

    sub_24B984444();

    sub_24B8D7BC8(a5, a6);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA8CBC0()
{
  type metadata accessor for FocusNameAndAppearanceView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
  MEMORY[0x24C24FC10](&v1);
  sub_24BAA9B6C();
}

uint64_t sub_24BA8CC84@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  v2 = sub_24BAA93CC();
  v4 = v3;
  v6 = v5;
  sub_24BAA923C();
  v7 = sub_24BAA939C();
  v9 = v8;
  v11 = v10;

  sub_24B900910(v2, v4, v6 & 1);

  sub_24BAA974C();
  v12 = sub_24BAA933C();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_24B900910(v7, v9, v11 & 1);

  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_24BA8CE1C(void *a1)
{
  if (*a1)
  {

    sub_24B984444();
    v1 = sub_24B8D8FB0();

    if (v1)
    {
      type metadata accessor for FocusNameAndAppearanceView(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0650F0);
      MEMORY[0x24C24FC10](&v3);
      sub_24BAA9B6C();
    }
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA8CF74()
{
  v1 = v0;
  if (*v0)
  {

    sub_24B984444();
    v2 = sub_24B8D7188();

    if (v2)
    {
      v3 = [v2 mode];

      v4 = [v3 semanticType];

      v5 = v4 == 9;
    }

    else
    {

      v5 = 0;
    }

    v6 = sub_24BAA9D1C();
    v8 = v7;
    sub_24BA8D24C(v5, v1, &v33);
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v26 = v38;
    v21 = v33;
    v22 = v34;
    v31[6] = v39;
    v31[7] = v40;
    v31[8] = v41;
    v31[2] = v35;
    v31[3] = v36;
    v31[4] = v37;
    v31[5] = v38;
    v30 = v42;
    v32 = v42;
    v31[0] = v33;
    v31[1] = v34;
    sub_24B8F3208(&v21, &v10, &qword_27F06B060);
    sub_24B8F35E4(v31, &qword_27F06B060);
    v17 = v27;
    v18 = v28;
    v19 = v29;
    v20 = v30;
    v13 = v23;
    v14 = v24;
    v15 = v25;
    v16 = v26;
    v11 = v21;
    v12 = v22;
    *&v10 = v6;
    *(&v10 + 1) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B068);
    sub_24B8F384C(&qword_27F06B070, &qword_27F06B068);
    sub_24BAA95EC();
    v41 = v18;
    v42 = v19;
    v43 = v20;
    v37 = v14;
    v38 = v15;
    v39 = v16;
    v40 = v17;
    v33 = v10;
    v34 = v11;
    v35 = v12;
    v36 = v13;
    return sub_24B8F35E4(&v33, &qword_27F06B068);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_24BA8D24C@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a1;
  v5 = sub_24BAA992C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24BAA82DC();
  v9 = *(v43 - 8);
  v10 = MEMORY[0x28223BE20](v43);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  if (*a2)
  {

    v14 = sub_24B991A94();

    v50 = v6;
    v51 = v5;
    v49 = v8;
    v44 = a2;
    if (v14)
    {
      v52 = v14;
    }

    else
    {
      v52 = sub_24BAA989C();
    }

    sub_24BAA9D1C();
    sub_24BAA83BC();
    v47 = v89;
    v48 = v87;
    v45 = v92;
    v46 = v91;
    v86 = v88;
    v85 = v90;

    sub_24B984444();
    v15 = sub_24B8D7188();
    if (v15 && (v16 = v15, v17 = [v15 mode], v16, v18 = objc_msgSend(v17, sel_symbolImageName), v17, v18))
    {
      v40 = sub_24BAAA01C();
      v20 = v19;
    }

    else
    {

      v20 = 0x800000024BAC0720;
      v40 = 0xD000000000000012;
    }

    v42 &= 1u;
    type metadata accessor for FocusNameAndAppearanceView.MastheadLeadImageContent(0);
    sub_24BA8DAD0(&unk_27F068E60, MEMORY[0x277CDF3E0], v13);
    v21 = v41;
    v22 = v43;
    (*(v9 + 104))(v41, *MEMORY[0x277CDF3C0], v43);
    v23 = sub_24BAA82CC();
    v24 = *(v9 + 8);
    v24(v21, v22);
    v24(v13, v22);
    _s15FocusSettingsUI14ActivitySourceV25inverseVariantIfAvailable3for17isDarkColorSchemeS2S_SbtFZ_0(v40, v20, v23 & 1);

    sub_24BAA994C();
    v26 = v49;
    v25 = v50;
    v27 = v51;
    (*(v50 + 104))(v49, *MEMORY[0x277CE0FE0], v51);
    v28 = sub_24BAA997C();

    (*(v25 + 8))(v26, v27);
    v29 = sub_24BAA982C();
    KeyPath = swift_getKeyPath();
    sub_24BAA9D1C();
    sub_24BAA83BC();
    LOBYTE(v66) = v42;
    *(&v66 + 1) = v52;
    *&v67 = v48;
    BYTE8(v67) = v86;
    *&v68 = v47;
    BYTE8(v68) = v85;
    *&v69 = v46;
    *(&v69 + 1) = v45;
    v70[0] = v28;
    *&v53[88] = v66;
    v54 = v67;
    v55 = v68;
    v70[1] = 0;
    LOWORD(v71) = 1;
    WORD3(v71) = v83;
    *(&v71 + 2) = v82;
    *(&v71 + 1) = KeyPath;
    *v72 = v29;
    v32 = v64;
    *&v72[40] = v65;
    v31 = v65;
    v33 = v63;
    *&v72[24] = v64;
    *&v72[8] = v63;
    v56 = v69;
    v57 = v28;
    v60 = *&v72[16];
    v61 = *&v72[32];
    v58 = v71;
    v59 = *v72;
    v34 = v67;
    *a3 = v66;
    *(a3 + 16) = v34;
    v35 = v56;
    v36 = v58;
    v37 = v59;
    *(a3 + 64) = v57;
    *(a3 + 80) = v36;
    *(a3 + 32) = v55;
    *(a3 + 48) = v35;
    v38 = v61;
    *(a3 + 112) = v60;
    *(a3 + 128) = v38;
    v84 = 1;
    v62 = *&v72[48];
    *(a3 + 144) = *&v72[48];
    *(a3 + 96) = v37;
    v73[0] = v28;
    v73[1] = 0;
    v74 = 1;
    v75 = v82;
    v76 = v83;
    v77 = KeyPath;
    v78 = v29;
    v79 = v33;
    v80 = v32;
    v81 = v31;
    sub_24B8F3208(&v66, v53, &qword_27F06B078);
    sub_24B8F3208(v70, v53, &qword_27F065928);
    sub_24B8F35E4(v73, &qword_27F065928);
  }

  else
  {
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA8E1E0(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}

double sub_24BA8D848@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064DD8);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_24BAAD820;
    *(v5 + 32) = a2;

    *(v5 + 40) = sub_24BAA97DC();
    sub_24BAA9E0C();
    sub_24BAA9E1C();
    MEMORY[0x24C24FD10](v5);
    sub_24BAA847C();
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064DC8);
  sub_24B8F384C(&qword_27F064DA8, &qword_27F064DB0);
  sub_24B8F384C(&qword_27F064DC0, &qword_27F064DC8);
  sub_24BAA8D0C();
  result = *&v7;
  *a3 = v7;
  *(a3 + 16) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 42) = v11;
  return result;
}

uint64_t sub_24BA8DAD0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_24BAA89FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_24B8F3208(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_24BAAA2BC();
    v17 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_24BA8DD1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v16 = a3;
  v7 = sub_24BAA89FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20]();
  v12 = &v15 - v11;
  sub_24B8F3208(v6, &v15 - v11, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24B90294C(v12, v16, a2);
  }

  sub_24BAAA2BC();
  v14 = sub_24BAA907C();
  sub_24BAA80FC();

  sub_24BAA89EC();
  swift_getAtKeyPath();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24BA8DEF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24BAA881C();
  *a1 = result;
  return result;
}

uint64_t sub_24BA8DF50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24BAA881C();
  *a1 = result;
  return result;
}

uint64_t sub_24BA8DFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusNameAndAppearanceView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24BA8E028()
{
  result = qword_27F06B0B0;
  if (!qword_27F06B0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B080);
    sub_24B8F384C(&qword_27F06B0A8, &qword_27F06B080);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B0B0);
  }

  return result;
}

unint64_t sub_24BA8E124()
{
  result = qword_27F06B0B8;
  if (!qword_27F06B0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B098);
    sub_24BA8E028();
    sub_24BA8E1E0(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B0B8);
  }

  return result;
}

uint64_t sub_24BA8E1E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for FocusNameAndAppearanceView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24BAA82DC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067478);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24BAA8E5C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_24BA8E460()
{
  result = qword_27F06B118;
  if (!qword_27F06B118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B110);
    sub_24BA8E518();
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B118);
  }

  return result;
}

unint64_t sub_24BA8E518()
{
  result = qword_27F06B120;
  if (!qword_27F06B120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B128);
    sub_24BA8E5D0();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B120);
  }

  return result;
}

unint64_t sub_24BA8E5D0()
{
  result = qword_27F06B130;
  if (!qword_27F06B130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B138);
    sub_24B8F699C();
    sub_24B8F384C(&unk_27F069060, &qword_27F0658A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B130);
  }

  return result;
}

unint64_t sub_24BA8E690()
{
  result = qword_27F06B140;
  if (!qword_27F06B140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B0D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B110);
    sub_24BA8E460();
    swift_getOpaqueTypeConformance2();
    sub_24B8F384C(&unk_27F069040, &unk_27F063278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B140);
  }

  return result;
}

uint64_t sub_24BA8E79C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FocusNameAndAppearanceView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24BA8E828(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FocusNameAndAppearanceView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_24BA8E8B4()
{
  result = qword_27F06B158;
  if (!qword_27F06B158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B150);
    sub_24BA8E1E0(&qword_27F063208, type metadata accessor for ActivityEditView);
    sub_24B8F384C(&qword_27F063B18, &qword_27F063B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B158);
  }

  return result;
}

uint64_t sub_24BA8E9A4@<X0>(unint64_t *a1@<X8>)
{
  sub_24B984444();
  v2 = sub_24B8D763C();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t keypath_set_51Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_24BA8EA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24BA8EAD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24BA8EBF4()
{
  result = qword_27F06B160;
  if (!qword_27F06B160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B168);
    sub_24B8F384C(&qword_27F06B070, &qword_27F06B068);
    sub_24BA8E1E0(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B160);
  }

  return result;
}

uint64_t sub_24BA8ECDC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B098);
  sub_24BA8E124();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24BA8ED60()
{
  result = qword_27F06B170;
  if (!qword_27F06B170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F06B178);
    sub_24B8F384C(&qword_27F064DA8, &qword_27F064DB0);
    sub_24B8F384C(&qword_27F064DC0, &qword_27F064DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F06B170);
  }

  return result;
}

uint64_t sub_24BA8EE58()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC15FocusSettingsUI18PeopleSearchFilter__query;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15FocusSettingsUI18PeopleSearchFilter__filteredPeople;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F06B1A8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PeopleSearchFilter()
{
  result = qword_27F06B190;
  if (!qword_27F06B190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24BA8EFE0()
{
  sub_24B99989C();
  if (v0 <= 0x3F)
  {
    sub_24BA8F0B8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24BA8F0B8()
{
  if (!qword_27F06B1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F066A30);
    v0 = sub_24BAA81DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F06B1A0);
    }
  }
}

uint64_t sub_24BA8F11C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PeopleSearchFilter();
  result = sub_24BAA814C();
  *a1 = result;
  return result;
}

void sub_24BA8F15C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA9342C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *a3 = sub_24BAA86FC();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F80);
  v8 = v7[9];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v9 = v7[13];
  v10 = v7[14];
  v11 = (a3 + v7[10]);
  *v11 = a1;
  v11[1] = a2;
  v12 = (a3 + v7[11]);
  *v12 = 0xD000000000000011;
  v12[1] = 0x800000024BAC63F0;
  v13 = qword_27F063110;
  v14 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = (a3 + v10);
  v16 = (a3 + v9);
  v17 = sub_24BAA7C2C();
  v18 = (a3 + v7[12]);
  *v18 = v17;
  v18[1] = v19;
  *v16 = sub_24BAA7C2C();
  v16[1] = v20;

  *v15 = 0xD00000000000001FLL;
  v15[1] = 0x800000024BAC6430;
}

void sub_24BA8F360(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA9342C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *a3 = sub_24BAA86FC();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066080);
  v8 = v7[9];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v9 = v7[13];
  v10 = v7[14];
  v11 = (a3 + v7[10]);
  *v11 = a1;
  v11[1] = a2;
  v12 = (a3 + v7[11]);
  *v12 = 0xD000000000000011;
  v12[1] = 0x800000024BAC64A0;
  v13 = qword_27F063110;
  v14 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = (a3 + v10);
  v16 = (a3 + v9);
  v17 = sub_24BAA7C2C();
  v18 = (a3 + v7[12]);
  *v18 = v17;
  v18[1] = v19;
  *v16 = sub_24BAA7C2C();
  v16[1] = v20;

  *v15 = 0xD000000000000023;
  v15[1] = 0x800000024BAC64E0;
}

void sub_24BA8F564(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA9342C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *a3 = sub_24BAA86FC();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066028);
  v8 = v7[9];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v9 = v7[13];
  v10 = v7[14];
  v11 = (a3 + v7[10]);
  *v11 = a1;
  v11[1] = a2;
  v12 = (a3 + v7[11]);
  *v12 = 0x7265776F70;
  v12[1] = 0xE500000000000000;
  v13 = qword_27F063110;
  v14 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = (a3 + v10);
  v16 = (a3 + v9);
  v17 = sub_24BAA7C2C();
  v18 = (a3 + v7[12]);
  *v18 = v17;
  v18[1] = v19;
  *v16 = sub_24BAA7C2C();
  v16[1] = v20;

  *v15 = 0xD00000000000001DLL;
  v15[1] = 0x800000024BAC6480;
}

void sub_24BA8F764(char a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA9342C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *a3 = sub_24BAA86FC();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065F50);
  v8 = v7[9];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v9 = v7[13];
  v10 = v7[14];
  v11 = (a3 + v7[10]);
  *v11 = a1 & 1;
  v11[1] = a2;
  v12 = (a3 + v7[11]);
  *v12 = 0xD000000000000013;
  v12[1] = 0x800000024BAC6390;
  v13 = qword_27F063110;
  v14 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = (a3 + v10);
  v16 = (a3 + v9);
  v17 = sub_24BAA7C2C();
  v18 = (a3 + v7[12]);
  *v18 = v17;
  v18[1] = v19;
  *v16 = sub_24BAA7C2C();
  v16[1] = v20;

  *v15 = 0xD00000000000001ELL;
  v15[1] = 0x800000024BAC63D0;
}

uint64_t sub_24BA8F968@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v5 = a1[3];
  v23 = a1[2];
  v24 = v5;
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA9342C(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  *a2 = sub_24BAA86FC();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065ED0);
  v8 = v7[9];
  *(a2 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  v9 = v7[13];
  v10 = v7[14];
  v11 = (a2 + v7[10]);
  v12 = v22;
  *v11 = v21;
  v11[1] = v12;
  v13 = v24;
  v11[2] = v23;
  v11[3] = v13;
  v14 = a2 + v7[11];
  strcpy(v14, "location.fill");
  *(v14 + 7) = -4864;
  v20 = a1[2];
  *(a2 + v7[12]) = a1[2];
  sub_24B966C04(a1, v19);
  sub_24B95286C(&v20, v19);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v15 = (a2 + v10);
  v16 = (a2 + v9);
  *v16 = sub_24BAA7C2C();
  v16[1] = v17;
  result = sub_24B9142B0(a1);
  *v15 = 0xD000000000000020;
  v15[1] = 0x800000024BAC6360;
  return result;
}

void sub_24BA8FB74()
{
  sub_24B8F47B4();
  if (v0 <= 0x3F)
  {
    sub_24B980E74();
    if (v1 <= 0x3F)
    {
      sub_24BAAA3FC();
      if (v2 <= 0x3F)
      {
        sub_24BA1A484();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24BA8FC3C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24BAA8B9C() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v6 + 80);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  if (!v9)
  {
    ++v14;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 & 0xF8;
  v16 = v15 | 7;
  v17 = v7 + v13 + 1;
  v18 = v14 + 7;
  if (v11 >= a2)
  {
    goto LABEL_35;
  }

  v19 = ((((((((v18 + ((v17 + ((v15 + 23) & ~v16)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v11 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_35;
      }
    }

LABEL_32:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v11 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  v28 = (v17 + ((a1 + v16 + 16) & ~v16)) & ~v13;
  if (v10 < 0x7FFFFFFF)
  {
    v30 = *(((v18 + v28) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v30 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    return (v30 + 1);
  }

  else
  {
    v29 = (*(*(*(a3 + 16) - 8) + 48))(v28);
    if (v29 >= 2)
    {
      return v29 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_24BA8FE78(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_24BAA8B9C() - 8);
  v10 = *(v9 + 64);
  v11 = *(*(a4 + 16) - 8);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v11 + 84);
  v14 = *(v9 + 80);
  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = v14 & 0xF8;
  v20 = v19 | 7;
  v21 = (v19 + 23) & ~(v19 | 7);
  v22 = v10 + v15 + 1;
  v23 = (v22 + v21) & ~v15;
  if (v13)
  {
    v24 = v16;
  }

  else
  {
    v24 = v16 + 1;
  }

  v25 = ((((((((v24 + 7 + v23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v18 < a3)
  {
    if (((((((((v24 + 7 + v23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v26 = a3 - v18 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v8 = v27;
    }

    else
    {
      v8 = 0;
    }
  }

  if (a2 > v18)
  {
    if (v25)
    {
      v28 = 1;
    }

    else
    {
      v28 = a2 - v18;
    }

    if (v25)
    {
      v29 = ~v18 + a2;
      bzero(a1, v25);
      *a1 = v29;
    }

    if (v8 > 1)
    {
      if (v8 == 2)
      {
        *(a1 + v25) = v28;
      }

      else
      {
        *(a1 + v25) = v28;
      }
    }

    else if (v8)
    {
      *(a1 + v25) = v28;
    }

    return;
  }

  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *(a1 + v25) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v25) = 0;
LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!v8)
  {
    goto LABEL_40;
  }

  *(a1 + v25) = 0;
  if (!a2)
  {
    return;
  }

LABEL_41:
  v30 = ((v22 + ((a1 + v20 + 16) & ~v20)) & ~v15);
  if (v17 < 0x7FFFFFFF)
  {
    v34 = (&v30[v24 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v34 = a2 & 0x7FFFFFFF;
      v34[1] = 0;
    }

    else
    {
      v34[1] = a2 - 1;
    }
  }

  else if (v17 >= a2)
  {
    v35 = *(v12 + 56);

    v35(v30, a2 + 1);
  }

  else
  {
    if (v24 <= 3)
    {
      v31 = ~(-1 << (8 * v24));
    }

    else
    {
      v31 = -1;
    }

    if (v24)
    {
      v32 = v31 & (~v17 + a2);
      if (v24 <= 3)
      {
        v33 = v24;
      }

      else
      {
        v33 = 4;
      }

      bzero(v30, v24);
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          *v30 = v32;
          v30[2] = BYTE2(v32);
        }

        else
        {
          *v30 = v32;
        }
      }

      else if (v33 == 1)
      {
        *v30 = v32;
      }

      else
      {
        *v30 = v32;
      }
    }
  }
}

uint64_t sub_24BA901E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);

  v4 = sub_24BAA994C();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F38) + 36);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  *a1 = v4;
  KeyPath = swift_getKeyPath();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063F40) + 36));
  *v7 = KeyPath;
  v7[1] = v3;
}

uint64_t sub_24BA902BC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  if (v13 == 1)
  {
    if (qword_27F063110 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_27F063110 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  sub_24BAA7C2C();
  sub_24B8F5E3C();
  v2 = sub_24BAA93CC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = sub_24BAA989C();
  v11 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v11;
  *(a1 + 64) = v10;
  *(a1 + 72) = result;
  *(a1 + 80) = 2;
  return result;
}

uint64_t sub_24BA9046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24BAA89FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_24B8F3208(v2 + *(a1 + 36), &v15 - v10, &qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24BAA8B9C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_24BAAA2BC();
    v14 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_24BA9067C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B230);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v77 = &v72 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B238);
  v6 = MEMORY[0x28223BE20](v88);
  v80 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v72 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B240);
  MEMORY[0x28223BE20](v86);
  v87 = &v72 - v9;
  v10 = sub_24BAA8FBC();
  v83 = *(v10 - 8);
  v84 = v10;
  MEMORY[0x28223BE20](v10);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B248);
  MEMORY[0x28223BE20](v12);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B250);
  v73 = *(v15 - 8);
  v74 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v72 - v16;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B258);
  v18 = MEMORY[0x28223BE20](v85);
  v75 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v72 - v20;
  v21 = sub_24BAA8B9C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a1;
  v27 = v2;
  sub_24BA9046C(v26, v24);
  v28 = sub_24BAA8B8C();
  (*(v22 + 8))(v24, v21);
  if (v28)
  {
    *v14 = sub_24BAA8BDC();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B2B0);
    sub_24BA90F90(v27, *(v25 + 16), *(v25 + 24), &v14[*(v29 + 44)]);
    v30 = sub_24BAA90AC();
    sub_24BAA828C();
    v31 = &v14[*(v12 + 36)];
    *v31 = v30;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    v36 = v82;
    sub_24BAA8FAC();
    v37 = sub_24BA92C7C();
    sub_24BAA95FC();
    (*(v83 + 8))(v36, v84);
    sub_24B8F35E4(v14, &qword_27F06B248);
    v96[0] = v12;
    v96[1] = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v75;
    v39 = v74;
    sub_24BAA94DC();
    (*(v73 + 8))(v17, v39);
    v96[0] = sub_24BA91CE8(v25);
    v96[1] = v40;
    sub_24B8F5E3C();
    v41 = sub_24BAA93CC();
    v43 = v42;
    LOBYTE(v39) = v44;
    v45 = v76;
    sub_24BAA858C();
    sub_24B900910(v41, v43, v39 & 1);

    v46 = &qword_27F06B258;
    sub_24B8F35E4(v38, &qword_27F06B258);
    sub_24B8F3208(v45, v87, &qword_27F06B258);
    swift_storeEnumTagMultiPayload();
    sub_24BA92B84();
    sub_24BA92D34();
    sub_24BAA8D0C();
    v47 = v45;
  }

  else
  {
    v48 = sub_24BAA8AAC();
    v92 = 0;
    sub_24BA91F78(v27, *(v25 + 16), *(v25 + 24), v96);
    memcpy(v94, v96, 0x131uLL);
    memcpy(v95, v96, 0x131uLL);
    sub_24B8F3208(v94, v90, &qword_27F06B260);
    sub_24B8F35E4(v95, &qword_27F06B260);
    memcpy(&v91[7], v94, 0x131uLL);
    v49 = v92;
    v50 = sub_24BAA911C();
    sub_24BAA828C();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v93 = 0;
    v90[0] = v48;
    v90[1] = 0;
    LOBYTE(v90[2]) = v49;
    memcpy(&v90[2] + 1, v91, 0x138uLL);
    LOBYTE(v90[42]) = v50;
    v90[43] = v52;
    v90[44] = v54;
    v90[45] = v56;
    v90[46] = v58;
    LOBYTE(v90[47]) = 0;
    v59 = v82;
    sub_24BAA8FAC();
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F06B268);
    v61 = sub_24BA92ACC();
    v62 = v77;
    sub_24BAA95FC();
    (*(v83 + 8))(v59, v84);
    memcpy(v96, v90, 0x179uLL);
    sub_24B8F35E4(v96, &qword_27F06B268);
    v90[0] = v60;
    v90[1] = v61;
    swift_getOpaqueTypeConformance2();
    v63 = v80;
    v64 = v79;
    sub_24BAA94DC();
    (*(v78 + 8))(v62, v64);
    v90[0] = sub_24BA91CE8(v25);
    v90[1] = v65;
    sub_24B8F5E3C();
    v66 = sub_24BAA93CC();
    v68 = v67;
    LOBYTE(v60) = v69;
    v70 = v81;
    sub_24BAA858C();
    sub_24B900910(v66, v68, v60 & 1);

    v46 = &qword_27F06B238;
    sub_24B8F35E4(v63, &qword_27F06B238);
    sub_24B8F3208(v70, v87, &qword_27F06B238);
    swift_storeEnumTagMultiPayload();
    sub_24BA92B84();
    sub_24BA92D34();
    sub_24BAA8D0C();
    v47 = v70;
  }

  return sub_24B8F35E4(v47, v46);
}