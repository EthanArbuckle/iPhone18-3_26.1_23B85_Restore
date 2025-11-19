size_t sub_24B6610D8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_24B6612C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA18, "TU");
  v5 = sub_24B65C890(&qword_27F02DA20, &qword_27F02DA18, "TU");

  return MEMORY[0x282130840](v1, v2, v3, v4, v5);
}

uint64_t sub_24B661360(uint64_t a1)
{
  v1 = *(a1 + 36);
  v2 = *(a1 + 16);
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  sub_24B695708();
  sub_24B6956F8();
  return v4;
}

uint64_t OnboardingModalityDetailView.init(store:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_24B64C754;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  v7 = a3 + *(type metadata accessor for OnboardingModalityDetailView() + 36);
  return sub_24B64C04C();
}

uint64_t OnboardingModalityDetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v26 = *(a1 + 16);
  sub_24B6959A8();
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D970, &qword_24B6981B0);
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  swift_getWitnessTable();
  sub_24B695888();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v2 = sub_24B6959A8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D978, &qword_24B6981B8);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = MEMORY[0x277CE0880];
  WitnessTable = swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D980, &unk_24B6981C0);
  sub_24B65C890(qword_27F02D988, &qword_27F02D980, &unk_24B6981C0);
  v36 = v2;
  v37 = v3;
  v38 = WitnessTable;
  v39 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  sub_24B695C78();
  v5 = sub_24B6963E8();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v36 = v2;
  v37 = v3;
  v38 = WitnessTable;
  v9 = swift_getOpaqueTypeConformance2();
  v10 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
  v34 = v9;
  v35 = v10;
  v33 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v36 = v5;
  v37 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = *(OpaqueTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  v20 = *(v27 + 24);
  v30 = v26;
  v31 = v20;
  v32 = v28;
  sub_24B6963D8();
  sub_24B695FF8();
  (*(v25 + 8))(v8, v5);
  v36 = v5;
  v37 = v11;
  v21 = swift_getOpaqueTypeConformance2();
  sub_24B65C908(v17, OpaqueTypeMetadata2, v21);
  v22 = *(v13 + 8);
  v22(v17, OpaqueTypeMetadata2);
  sub_24B65C908(v19, OpaqueTypeMetadata2, v21);
  return (v22)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_24B6619F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a1;
  v112 = a3;
  v109 = a4;
  v5 = sub_24B695C98();
  v102 = *(v5 - 8);
  v103 = v5;
  v6 = *(v102 + 64);
  MEMORY[0x28223BE20](v5);
  v101 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B6959A8();
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D970, &qword_24B6981B0);
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v8 = sub_24B6964E8();
  WitnessTable = swift_getWitnessTable();
  v90 = v8;
  v88 = WitnessTable;
  v10 = sub_24B695888();
  v98 = *(v10 - 8);
  v11 = *(v98 + 64);
  MEMORY[0x28223BE20](v10);
  v91 = &v80 - v12;
  v13 = swift_getWitnessTable();
  v115 = v10;
  v116 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v95 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v93 = &v80 - v16;
  v96 = v17;
  v18 = sub_24B6959A8();
  v97 = *(v18 - 8);
  v19 = *(v97 + 64);
  MEMORY[0x28223BE20](v18);
  v94 = &v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D978, &qword_24B6981B8);
  v99 = v10;
  v115 = v10;
  v116 = v13;
  v92 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v119 = OpaqueTypeConformance2;
  v120 = MEMORY[0x277CE0880];
  v22 = swift_getWitnessTable();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D980, &unk_24B6981C0);
  v24 = sub_24B65C890(qword_27F02D988, &qword_27F02D980, &unk_24B6981C0);
  v115 = v23;
  v116 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v104 = v18;
  v105 = v22;
  v115 = v18;
  v116 = v21;
  v110 = v21;
  v117 = v22;
  v118 = v25;
  v108 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v89 = *(v26 - 8);
  v27 = *(v89 + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v87 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v84 = &v80 - v31;
  MEMORY[0x28223BE20](v30);
  v86 = &v80 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4B8, &qword_24B697608);
  v83 = *(v33 - 8);
  v34 = *(v83 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v80 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v80 - v39;
  v41 = type metadata accessor for OnboardingModality();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v80 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24B695C78();
  v106 = *(v46 - 8);
  v107 = v46;
  v47 = *(v106 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v80 - v48;
  v100 = a2;
  type metadata accessor for OnboardingModalityDetailView();
  sub_24B6612C0();
  swift_getKeyPath();
  sub_24B696718();

  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    sub_24B64BB2C(v40, &qword_27F02D3A8, &qword_24B697570);
    sub_24B695908();
    v50 = v104;
    v51 = v105;
    v52 = v110;
    v115 = v104;
    v116 = v110;
    v53 = v108;
    v117 = v105;
    v118 = v108;
    swift_getOpaqueTypeConformance2();
    sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
    sub_24B677224(v36, v26, v33);
    (*(v83 + 8))(v36, v33);
    v54 = v50;
    v55 = v53;
  }

  else
  {
    v81 = v49;
    v82 = v33;
    v83 = v26;
    v56 = v110;
    v54 = v104;
    v57 = sub_24B664D84(v40, v45, type metadata accessor for OnboardingModality);
    MEMORY[0x28223BE20](v57);
    v58 = v100;
    v59 = v112;
    *(&v80 - 4) = v100;
    *(&v80 - 3) = v59;
    v80 = v45;
    v60 = v111;
    *(&v80 - 2) = v45;
    *(&v80 - 1) = v60;
    sub_24B695E08();
    v61 = v91;
    sub_24B6770A8();
    v62 = v101;
    sub_24B695C88();
    v63 = sub_24B695E08();
    sub_24B695DF8();
    sub_24B695DF8();
    if (sub_24B695DF8() != v63)
    {
      sub_24B695DF8();
    }

    v64 = v93;
    v65 = v99;
    sub_24B6961E8();
    (*(v102 + 8))(v62, v103);
    (*(v98 + 8))(v61, v65);
    sub_24B695E38();
    sub_24B6959B8();
    v66 = v94;
    v67 = v96;
    sub_24B696178();
    v68 = (*(v95 + 8))(v64, v67);
    MEMORY[0x28223BE20](v68);
    *(&v80 - 4) = v58;
    *(&v80 - 3) = v59;
    *(&v80 - 2) = v60;
    v69 = v84;
    v51 = v105;
    v55 = v108;
    sub_24B6962A8();
    (*(v97 + 8))(v66, v54);
    v115 = v54;
    v116 = v56;
    v117 = v51;
    v118 = v55;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = v86;
    v72 = v83;
    sub_24B65C908(v69, v83, v70);
    v73 = *(v89 + 8);
    v73(v69, v72);
    v74 = v87;
    sub_24B65C908(v71, v72, v70);
    sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
    v49 = v81;
    sub_24B67712C(v74, v72);
    v73(v74, v72);
    v73(v71, v72);
    sub_24B65F438(v80, type metadata accessor for OnboardingModality);
    v52 = v110;
  }

  v115 = v54;
  v116 = v52;
  v117 = v51;
  v118 = v55;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
  v113 = v75;
  v114 = v76;
  v77 = v107;
  v78 = swift_getWitnessTable();
  sub_24B65C908(v49, v77, v78);
  return (*(v106 + 8))(v49, v77);
}

uint64_t sub_24B6626BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  sub_24B6959A8();
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D970, &qword_24B6981B0);
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v9 = sub_24B6964E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  sub_24B695BE8();
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a1;
  v20[7] = a2;
  sub_24B6964D8();
  WitnessTable = swift_getWitnessTable();
  sub_24B65C908(v14, v9, WitnessTable);
  v18 = *(v10 + 8);
  v18(v14, v9);
  sub_24B65C908(v16, v9, WitnessTable);
  return (v18)(v16, v9);
}

uint64_t sub_24B6628E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X8>)
{
  v74 = a4;
  *&v79 = a2;
  v76 = a5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D970, &qword_24B6981B0);
  v7 = *(*(v73 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v73);
  v75 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = (&v62 - v11);
  v67 = *(a3 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v65 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v78 = a3;
  v14 = sub_24B6959A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v68 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v62 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v62 - v22;
  v24 = type metadata accessor for OnboardingArtwork();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_24B696938();
  v29 = *(v71 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v71);
  v33 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v70 = &v62 - v34;
  v35 = type metadata accessor for OnboardingModality();
  v36 = *(v35 + 24);
  v77 = a1;
  sub_24B664C5C(a1 + v36, v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_24B64BB2C(v23, &qword_27F02D670, &qword_24B697840);
    (*(v15 + 56))(v33, 1, 1, v14);
    v37 = v74;
    v91 = v74;
    v92 = MEMORY[0x277CE01B0];
    swift_getWitnessTable();
  }

  else
  {
    v62 = type metadata accessor for OnboardingArtwork;
    sub_24B664D84(v23, v28, type metadata accessor for OnboardingArtwork);
    v64 = v29;
    v38 = v78;
    v37 = v74;
    v39 = type metadata accessor for OnboardingModalityDetailView();
    v63 = v15;
    v40 = sub_24B661360(v39);
    v41 = v77 + *(v35 + 28);
    v42 = v65;
    v40(v28, v41);

    sub_24B6612C0();
    swift_getKeyPath();
    sub_24B696718();

    v43 = v68;
    sub_24B6960B8();
    v44 = v38;
    v29 = v64;
    (*(v67 + 8))(v42, v44);
    sub_24B65F438(v28, v62);
    v80 = v37;
    v81 = MEMORY[0x277CE01B0];
    WitnessTable = swift_getWitnessTable();
    v46 = v66;
    sub_24B65C908(v43, v14, WitnessTable);
    v47 = v63;
    v48 = *(v63 + 8);
    v48(v43, v14);
    sub_24B65C908(v46, v14, WitnessTable);
    v48(v46, v14);
    (*(v47 + 32))(v33, v43, v14);
    (*(v47 + 56))(v33, 0, 1, v14);
  }

  v69 = v14;
  v49 = v70;
  sub_24B6770C0(v33, v70);
  v74 = *(v29 + 8);
  v50 = v33;
  v51 = v33;
  v52 = v71;
  v74(v50, v71);
  v53 = sub_24B695BE8();
  v54 = v72;
  *v72 = v53;
  *(v54 + 8) = 0;
  *(v54 + 16) = 0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DAF0, &qword_24B698338);
  sub_24B66318C(v77, v79, v78, v37, v54 + *(v55 + 44));
  type metadata accessor for OnboardingModalityDetailView();
  sub_24B6612C0();
  swift_getKeyPath();
  sub_24B696718();

  v79 = v89;
  v78 = v90;
  v56 = sub_24B695E28();
  v57 = v73;
  v58 = v54 + *(v73 + 36);
  *v58 = v56;
  *(v58 + 24) = v78;
  *(v58 + 8) = v79;
  *(v58 + 40) = 0;
  (*(v29 + 16))(v51, v49, v52);
  v88[0] = v51;
  v59 = v75;
  sub_24B64A3E0(v54, v75, &qword_27F02D970, &qword_24B6981B0);
  v88[1] = v59;
  v87[0] = v52;
  v87[1] = v57;
  v83 = v37;
  v84 = MEMORY[0x277CE01B0];
  v82 = swift_getWitnessTable();
  v85 = swift_getWitnessTable();
  v86 = sub_24B664CCC();
  sub_24B66D504(v88, 2uLL, v87);
  sub_24B64BB2C(v54, &qword_27F02D970, &qword_24B6981B0);
  v60 = v74;
  v74(v49, v52);
  sub_24B64BB2C(v59, &qword_27F02D970, &qword_24B6981B0);
  return v60(v51, v52);
}

uint64_t sub_24B66318C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v86 = a4;
  v81 = a3;
  v88 = a2;
  v84 = a1;
  v95 = a5;
  v93 = sub_24B695BA8();
  v92 = *(v93 - 8);
  v6 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B695F28();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B695648();
  v83 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB10, &qword_24B698368);
  v90 = *(v89 - 8);
  v18 = *(v90 + 64);
  MEMORY[0x28223BE20](v89);
  v72 = &v71 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB18, &unk_24B698370);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v94 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v79 = &v71 - v24;
  v87 = type metadata accessor for OnboardingModality();
  v25 = *(v87 + 40);
  v26 = *(v14 + 16);
  v82 = v14 + 16;
  v85 = v26;
  v80 = v17;
  v26(v17, a1 + v25, v13);
  v27 = sub_24B695FD8();
  v29 = v28;
  v31 = v30;
  sub_24B695ED8();
  sub_24B695EC8();

  v78 = *MEMORY[0x277CE0A10];
  v32 = v9[13];
  v76 = v9 + 13;
  v77 = v32;
  v73 = v8;
  v32(v12);
  sub_24B695F58();

  v33 = v9[1];
  v74 = v9 + 1;
  v75 = v33;
  v33(v12, v8);
  v34 = sub_24B695FC8();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_24B6557C0(v27, v29, v31 & 1);

  LOBYTE(v29) = sub_24B695E48();
  type metadata accessor for OnboardingModalityDetailView();
  sub_24B6612C0();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B695818();
  v101 = v38 & 1;
  v100 = 0;
  *&v96 = v34;
  *(&v96 + 1) = v36;
  LOBYTE(v97) = v38 & 1;
  *(&v97 + 1) = v40;
  LOBYTE(v98) = v29;
  *(&v98 + 1) = v41;
  *v99 = v42;
  *&v99[8] = v43;
  *&v99[16] = v44;
  v99[24] = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3C8, &qword_24B697590);
  v46 = sub_24B65B7DC();
  v47 = v72;
  sub_24B696028();
  v102[1] = v97;
  v102[2] = v98;
  *v103 = *v99;
  *&v103[9] = *&v99[9];
  v102[0] = v96;
  sub_24B64BB2C(v102, &qword_27F02D3C8, &qword_24B697590);
  v48 = v91;
  sub_24B695B98();
  *&v96 = v45;
  *(&v96 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  v49 = v79;
  v50 = v89;
  sub_24B6961F8();
  (*(v92 + 8))(v48, v93);
  (*(v90 + 8))(v47, v50);
  v85(v80, v84 + *(v87 + 44), v83);
  v51 = sub_24B695FD8();
  v53 = v52;
  LOBYTE(v50) = v54;
  sub_24B695E98();
  v55 = v73;
  v77(v12, v78, v73);
  sub_24B695F58();

  v75(v12, v55);
  v56 = sub_24B695FC8();
  v58 = v57;
  v60 = v59;

  sub_24B6557C0(v51, v53, v50 & 1);

  LODWORD(v96) = sub_24B695D28();
  v61 = sub_24B695FB8();
  v63 = v62;
  LOBYTE(v45) = v64;
  v66 = v65;
  sub_24B6557C0(v56, v58, v60 & 1);

  v67 = v94;
  sub_24B64A3E0(v49, v94, &qword_27F02DB18, &unk_24B698370);
  v68 = v95;
  sub_24B64A3E0(v67, v95, &qword_27F02DB18, &unk_24B698370);
  v69 = v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB20, &unk_24B698380) + 48);
  *v69 = v61;
  *(v69 + 8) = v63;
  LOBYTE(v45) = v45 & 1;
  *(v69 + 16) = v45;
  *(v69 + 24) = v66;
  sub_24B65B70C(v61, v63, v45);

  sub_24B64BB2C(v49, &qword_27F02DB18, &unk_24B698370);
  sub_24B6557C0(v61, v63, v45);

  return sub_24B64BB2C(v67, &qword_27F02DB18, &unk_24B698370);
}

uint64_t sub_24B6639EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = sub_24B695CB8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D980, &unk_24B6981C0);
  v10 = *(v9 - 8);
  v24 = v9;
  v25 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_24B695CA8();
  v27 = a2;
  v28 = a3;
  v29 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA28, &qword_24B698290);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA30, &qword_24B698298);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA38, &qword_24B6982A0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA40, &qword_24B6982A8);
  v17 = sub_24B65C890(&qword_27F02DA48, &qword_27F02DA38, &qword_24B6982A0);
  v18 = sub_24B65C890(&qword_27F02DA50, &qword_27F02DA40, &qword_24B6982A8);
  v30 = v15;
  v31 = MEMORY[0x277CE1350];
  v32 = v16;
  v33 = v17;
  v34 = MEMORY[0x277CE1340];
  v35 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v14;
  v31 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24B6958F8();
  v20 = sub_24B65C890(qword_27F02D988, &qword_27F02D980, &unk_24B6981C0);
  v21 = v24;
  MEMORY[0x24C245E60](v13, v24, v20);
  return (*(v25 + 8))(v13, v21);
}

uint64_t sub_24B663CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v37 = a4;
  v7 = type metadata accessor for OnboardingModalityDetailView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA38, &qword_24B6982A0);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA30, &qword_24B698298);
  v17 = *(v16 - 8);
  v35 = v16;
  v36 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  (*(v8 + 16))(v11, a1, v7);
  v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  (*(v8 + 32))(v22 + v21, v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA58, &qword_24B6982B0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA60, &qword_24B6982B8);
  v24 = sub_24B664724();
  v41 = v23;
  v42 = v24;
  swift_getOpaqueTypeConformance2();
  sub_24B696468();
  sub_24B6965D8();
  v38 = a2;
  v39 = a3;
  v40 = v33;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA40, &qword_24B6982A8);
  v26 = sub_24B65C890(&qword_27F02DA48, &qword_27F02DA38, &qword_24B6982A0);
  v27 = sub_24B65C890(&qword_27F02DA50, &qword_27F02DA40, &qword_24B6982A8);
  v28 = MEMORY[0x277CE1350];
  v29 = MEMORY[0x277CE1340];
  sub_24B6962E8();
  (*(v34 + 8))(v15, v12);
  v41 = v12;
  v42 = v28;
  v43 = v25;
  v44 = v26;
  v45 = v29;
  v46 = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_24B696028();
  return (*(v36 + 8))(v20, v30);
}

uint64_t sub_24B6640D4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_24B695978();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA60, &qword_24B6982B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v25 = sub_24B6963F8();
  sub_24B695F68();
  sub_24B695EE8();
  v9 = sub_24B695F18();

  KeyPath = swift_getKeyPath();
  sub_24B696348();
  v11 = sub_24B696358();

  v12 = sub_24B695E28();
  sub_24B695818();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v28 = 0;
  v21 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DA78, &qword_24B6982C0) + 36)];
  sub_24B6965A8();
  v22 = sub_24B695E28();
  v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DAD8, &qword_24B6982F0) + 36)] = v22;
  *v8 = v25;
  *(v8 + 1) = KeyPath;
  *(v8 + 2) = v9;
  *(v8 + 3) = v11;
  v8[32] = v12;
  *(v8 + 5) = v14;
  *(v8 + 6) = v16;
  *(v8 + 7) = v18;
  *(v8 + 8) = v20;
  v8[72] = 0;
  *&v8[*(v5 + 36)] = 256;
  v23 = v26;
  (*(v1 + 104))(v4, *MEMORY[0x277CDF9D8], v26);
  sub_24B664724();
  sub_24B696158();
  (*(v1 + 8))(v4, v23);
  return sub_24B64BB2C(v8, &qword_27F02DA60, &qword_24B6982B8);
}

uint64_t sub_24B664370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OnboardingModalityDetailView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = sub_24B695808();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B6957F8();
  (*(v8 + 16))(v11, a2, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v8 + 32))(v17 + v16, v11, v7);
  return MEMORY[0x24C2465E0](v15, sub_24B664BD4, v17);
}

uint64_t sub_24B664514()
{
  type metadata accessor for OnboardingModalityDetailView();
  sub_24B6612C0();
  sub_24B696728();
}

void sub_24B664568(uint64_t a1)
{
  sub_24B66465C();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    type metadata accessor for OnboardingArtwork();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    sub_24B695708();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B66465C()
{
  if (!qword_27F02DA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA18, "TU");
    sub_24B65C890(&qword_27F02DA20, &qword_27F02DA18, "TU");
    v0 = sub_24B6958D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F02DA10);
    }
  }
}

unint64_t sub_24B664724()
{
  result = qword_27F02DA68;
  if (!qword_27F02DA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA60, &qword_24B6982B8);
    sub_24B6647DC();
    sub_24B65C890(&qword_27F02DAE0, &qword_27F02DAE8, &qword_24B6982F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DA68);
  }

  return result;
}

unint64_t sub_24B6647DC()
{
  result = qword_27F02DA70;
  if (!qword_27F02DA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA78, &qword_24B6982C0);
    sub_24B664894();
    sub_24B65C890(&qword_27F02DAD0, &qword_27F02DAD8, &qword_24B6982F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DA70);
  }

  return result;
}

unint64_t sub_24B664894()
{
  result = qword_27F02DA80;
  if (!qword_27F02DA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA88, &qword_24B6982C8);
    sub_24B664920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DA80);
  }

  return result;
}

unint64_t sub_24B664920()
{
  result = qword_27F02DA90;
  if (!qword_27F02DA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DA98, &unk_24B6982D0);
    sub_24B6649D8();
    sub_24B65C890(&qword_27F02DAC0, &qword_27F02DAC8, &qword_24B69A370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DA90);
  }

  return result;
}

unint64_t sub_24B6649D8()
{
  result = qword_27F02DAA0;
  if (!qword_27F02DAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DAA8, &qword_24B698680);
    sub_24B65C890(&qword_27F02DAB0, &qword_27F02DAB8, &unk_24B6982E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DAA0);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for OnboardingModalityDetailView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5);
  v8 = *(v0 + v5 + 8);
  v9 = *(v0 + v5 + 16);
  sub_24B654DC8();
  v10 = v3[11];
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v11 = sub_24B695708();
  (*(*(v11 - 8) + 8))(v0 + v5 + v10, v11);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_24B664BD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for OnboardingModalityDetailView() - 8) + 80);
  return sub_24B664514();
}

uint64_t sub_24B664C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B664CCC()
{
  result = qword_27F02DAF8;
  if (!qword_27F02DAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D970, &qword_24B6981B0);
    sub_24B65C890(&qword_27F02DB00, &qword_27F02DB08, &qword_24B698360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DAF8);
  }

  return result;
}

uint64_t sub_24B664D84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B664E00()
{
  result = sub_24B6968F8();
  qword_27F02DB28 = v1;
  return result;
}

double static OnboardingConstants.initialSubscriptionWindow.getter()
{
  if (qword_27F02D2D0 != -1)
  {
    swift_once();
  }

  return *&qword_27F02DB28;
}

uint64_t getEnumTagSinglePayload for OnboardingConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for OnboardingConstants(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 OnboardingModalityPickerFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t OnboardingModalityPickerFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, unint64_t a2, char **a3, uint64_t a4)
{
  v158 = a3;
  v161 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D960, &qword_24B6981A0);
  v159 = *(v6 - 8);
  v160 = v6;
  v7 = *(v159 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v156 = (&v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v146 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v154 = &v146 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v153 = &v146 - v16;
  MEMORY[0x28223BE20](v15);
  v155 = &v146 - v17;
  v18 = type metadata accessor for OnboardingModality();
  v157 = *(v18 - 8);
  v19 = *(v157 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v146 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v146 - v25;
  v27 = type metadata accessor for OnboardingModalityPickerAction();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v4[1];
  v163 = *v4;
  v164 = v31;
  v165 = v4[2];
  sub_24B667280(a4, v30, type metadata accessor for OnboardingModalityPickerAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        result = type metadata accessor for OnboardingModalityPickerState();
        *(v161 + *(result + 36)) = 1;
      }

      else
      {
        result = type metadata accessor for OnboardingModalityPickerState();
        v106 = *(v161 + *(result + 28));
        if (*(v106 + 16))
        {
          v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D920, &qword_24B6980C8);
          v108 = v107[12];
          v109 = v107[16];
          v110 = v107[20];
          v111 = v153;
          v112 = &v153[v107[24]];
          LOBYTE(v162) = 2;
          v113 = sub_24B666044();

          v161 = v113;
          sub_24B696968();
          v114 = *MEMORY[0x277D04400];
          v115 = sub_24B696708();
          v116 = *(v115 - 8);
          v156 = *(v116 + 104);
          v157 = v115;
          v155 = (v116 + 104);
          (v156)(&v111[v109], v114);
          v117 = swift_allocObject();
          v118 = v164;
          *(v117 + 16) = v163;
          *(v117 + 32) = v118;
          *(v117 + 48) = v165;
          *(v117 + 64) = v106;
          *v112 = &unk_24B6983E8;
          *(v112 + 1) = v117;
          sub_24B666DBC(&v163, &v162);
          sub_24B6968E8();
          v119 = *MEMORY[0x277D043E8];
          v120 = sub_24B6966F8();
          v121 = *(v120 - 8);
          v122 = *(v121 + 104);
          v123 = (v121 + 104);
          v122(&v111[v110], v119, v120);
          v124 = *MEMORY[0x277D043B0];
          v125 = v159;
          v126 = *MEMORY[0x277D043B0];
          v147 = *(v159 + 104);
          v147(v111, v126, v160);
          v127 = *v158;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          LODWORD(v152) = v119;
          v149 = v123;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v127 = sub_24B6610B4(0, *(v127 + 2) + 1, 1, v127);
          }

          v130 = *(v127 + 2);
          v129 = *(v127 + 3);
          v151 = v120;
          v150 = v122;
          LODWORD(v148) = v124;
          if (v130 >= v129 >> 1)
          {
            v127 = sub_24B6610B4(v129 > 1, v130 + 1, 1, v127);
          }

          *(v127 + 2) = v130 + 1;
          v132 = *(v125 + 32);
          v131 = v125 + 32;
          v133 = (*(v131 + 48) + 32) & ~*(v131 + 48);
          v134 = *(v131 + 40);
          v135 = v153;
          v136 = v160;
          v159 = v131;
          v153 = v132;
          (v132)(&v127[v133 + v134 * v130], v135, v160);
          v137 = v107[12];
          v138 = v107[16];
          v139 = v107[20];
          v140 = v154;
          v141 = &v154[v107[24]];
          LOBYTE(v162) = 0;
          sub_24B696968();
          (v156)(&v140[v138], *MEMORY[0x277D043F0], v157);
          v142 = swift_allocObject();
          v143 = v164;
          v142[1] = v163;
          v142[2] = v143;
          v142[3] = v165;
          *v141 = &unk_24B6983F8;
          *(v141 + 1) = v142;
          sub_24B666DBC(&v163, &v162);
          sub_24B6968E8();
          v150(&v140[v139], v152, v151);
          v147(v140, v148, v136);
          v145 = *(v127 + 2);
          v144 = *(v127 + 3);
          if (v145 >= v144 >> 1)
          {
            v127 = sub_24B6610B4(v144 > 1, v145 + 1, 1, v127);
          }

          *(v127 + 2) = v145 + 1;
          result = (v153)(&v127[v133 + v145 * v134], v154, v160);
          *v158 = v127;
        }
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v64 = *(type metadata accessor for OnboardingModalityPickerState() + 28);
      v65 = v161;
      v66 = *(v161 + v64);

      *(v65 + v64) = MEMORY[0x277D84FA0];
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D920, &qword_24B6980C8);
      v68 = v67[12];
      v69 = v67[16];
      v70 = v67[20];
      v71 = v12 + v67[24];
      LOBYTE(v162) = 2;
      sub_24B666044();
      sub_24B696968();
      v72 = *MEMORY[0x277D04400];
      v73 = sub_24B696708();
      v74 = *(v73 - 8);
      v75 = *(v74 + 104);
      v157 = v74 + 104;
      v75(v12 + v69, v72, v73);
      v76 = swift_allocObject();
      v77 = v164;
      v76[1] = v163;
      v76[2] = v77;
      v76[3] = v165;
      *v71 = &unk_24B6983C8;
      *(v71 + 1) = v76;
      sub_24B666DBC(&v163, &v162);
      sub_24B6968E8();
      v78 = *MEMORY[0x277D043E8];
      v79 = sub_24B6966F8();
      v80 = *(v79 - 8);
      v153 = *(v80 + 104);
      v152 = v80 + 104;
      (v153)(v12 + v70, v78, v79);
      v81 = *(v159 + 104);
      LODWORD(v151) = *MEMORY[0x277D043B0];
      v150 = v81;
      (v81)(v12);
      v82 = *v158;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v161 = v73;
      LODWORD(v155) = v78;
      if ((v83 & 1) == 0)
      {
        v82 = sub_24B6610B4(0, *(v82 + 2) + 1, 1, v82);
      }

      v85 = *(v82 + 2);
      v84 = *(v82 + 3);
      v154 = v79;
      if (v85 >= v84 >> 1)
      {
        v82 = sub_24B6610B4(v84 > 1, v85 + 1, 1, v82);
      }

      *(v82 + 2) = v85 + 1;
      v86 = *(v159 + 32);
      v148 = (*(v159 + 80) + 32) & ~*(v159 + 80);
      v147 = *(v159 + 72);
      v87 = v160;
      v159 += 32;
      v149 = v86;
      v86(&v82[v148 + v147 * v85], v12, v160);
      v88 = v67[12];
      v89 = v67[16];
      v90 = v67[20];
      v91 = v156;
      v92 = (v156 + v67[24]);
      LOBYTE(v162) = 0;
      sub_24B696968();
      v75(v91 + v89, *MEMORY[0x277D043F0], v161);
      v93 = swift_allocObject();
      v94 = v164;
      v93[1] = v163;
      v93[2] = v94;
      v93[3] = v165;
      *v92 = &unk_24B6983D8;
      v92[1] = v93;
      sub_24B666DBC(&v163, &v162);
      sub_24B6968E8();
      (v153)(v91 + v90, v155, v154);
      v150(v91, v151, v87);
      v96 = *(v82 + 2);
      v95 = *(v82 + 3);
      if (v96 >= v95 >> 1)
      {
        v82 = sub_24B6610B4(v95 > 1, v96 + 1, 1, v82);
      }

      *(v82 + 2) = v96 + 1;
      result = v149(&v82[v148 + v96 * v147], v156, v160);
      *v158 = v82;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      result = type metadata accessor for OnboardingModalityPickerState();
      *(v161 + *(result + 36)) = 0;
    }

    else
    {
      v99 = *(type metadata accessor for OnboardingModalityPickerState() + 32);
      v100 = v161;
      sub_24B64BB2C(v161 + v99, &qword_27F02D3A8, &qword_24B697570);
      return (*(v157 + 56))(v100 + v99, 1, 1, v18);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0) + 64);
      sub_24B665FE0(v30, v26);
      v101 = &v26[*(v18 + 32)];
      v102 = *v101;
      v103 = v101[1];
      v104 = v161 + *(type metadata accessor for OnboardingModalityPickerState() + 28);
      sub_24B667514(v102, v103);
    }

    else
    {
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0) + 64);
      sub_24B665FE0(v30, v26);
      v39 = &v26[*(v18 + 32)];
      v40 = *v39;
      v41 = v39[1];
      v42 = *(type metadata accessor for OnboardingModalityPickerState() + 28);

      sub_24B6673C4(&v162, v40, v41);
    }

    sub_24B665F84(v26);
    v105 = sub_24B6956B8();
    return (*(*(v105 - 8) + 8))(&v30[v38], v105);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_24B665FE0(v30, v24);
    v43 = *(type metadata accessor for OnboardingModalityPickerState() + 32);
    v44 = v161;
    sub_24B64BB2C(v161 + v43, &qword_27F02D3A8, &qword_24B697570);
    v156 = type metadata accessor for OnboardingModality;
    sub_24B667280(v24, v44 + v43, type metadata accessor for OnboardingModality);
    v45 = v157 + 56;
    (*(v157 + 56))(v44 + v43, 0, 1, v18);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D920, &qword_24B6980C8);
    v161 = v46[12];
    v47 = v46[16];
    v48 = v46[20];
    v49 = v155;
    v50 = &v155[v46[24]];
    LOBYTE(v162) = 1;
    sub_24B666044();
    sub_24B696968();
    v51 = *MEMORY[0x277D043F0];
    v52 = sub_24B696708();
    (*(*(v52 - 8) + 104))(&v49[v47], v51, v52);
    v53 = *MEMORY[0x277D043E0];
    v54 = sub_24B6966F8();
    (*(*(v54 - 8) + 104))(&v49[v48], v53, v54);
    sub_24B667280(v24, v21, v156);
    v55 = (*(v45 + 24) + 64) & ~*(v45 + 24);
    v56 = swift_allocObject();
    v57 = v164;
    v56[1] = v163;
    v56[2] = v57;
    v56[3] = v165;
    sub_24B665FE0(v21, v56 + v55);
    *v50 = &unk_24B698410;
    *(v50 + 1) = v56;
    sub_24B666DBC(&v163, &v162);
    sub_24B6968E8();
    v58 = v159;
    (*(v159 + 104))(v49, *MEMORY[0x277D043B0], v160);
    v59 = *v158;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_24B6610B4(0, *(v59 + 2) + 1, 1, v59);
    }

    v61 = *(v59 + 2);
    v60 = *(v59 + 3);
    if (v61 >= v60 >> 1)
    {
      v59 = sub_24B6610B4(v60 > 1, v61 + 1, 1, v59);
    }

    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0) + 64);
    sub_24B665F84(v24);
    *(v59 + 2) = v61 + 1;
    (*(v58 + 32))(&v59[((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v61], v155, v160);
    *v158 = v59;
    v63 = sub_24B6956B8();
    return (*(*(v63 - 8) + 8))(&v30[v62], v63);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0) + 64);
    v34 = *(type metadata accessor for OnboardingModalityPickerState() + 32);
    v35 = v161;
    sub_24B64BB2C(v161 + v34, &qword_27F02D3A8, &qword_24B697570);
    sub_24B665FE0(v30, v35 + v34);
    (*(v157 + 56))(v35 + v34, 0, 1, v18);
    v36 = sub_24B6956B8();
    return (*(*(v36 - 8) + 8))(&v30[v33], v36);
  }

  else
  {
    v97 = *(type metadata accessor for OnboardingModalityPickerState() + 32);
    v98 = v161;
    sub_24B64BB2C(v161 + v97, &qword_27F02D3A8, &qword_24B697570);
    (*(v157 + 56))(v98 + v97, 1, 1, v18);
    return sub_24B665F84(v30);
  }

  return result;
}

uint64_t sub_24B665F84(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingModality();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B665FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingModality();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B666044()
{
  result = qword_27F02DB30;
  if (!qword_27F02DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DB30);
  }

  return result;
}

uint64_t sub_24B666098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_24B6968D8();
  v3[4] = sub_24B6968C8();
  v5 = sub_24B6968B8();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x2822009F8](sub_24B666130, v5, v4);
}

uint64_t sub_24B666130()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = (v2 + *(type metadata accessor for OnboardingModality() + 32));
  v6 = *v5;
  v7 = v5[1];
  v11 = (v3 + *v3);
  v8 = v3[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_24B666244;

  return v11(v6, v7);
}

uint64_t sub_24B666244()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_24B6663E4;
  }

  else
  {
    v7 = sub_24B666380;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24B666380()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B6663E4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_24B666448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_24B6968D8();
  v3[3] = sub_24B6968C8();
  v6 = *(a2 + 40);
  v10 = (*(a2 + 32) + **(a2 + 32));
  v7 = *(*(a2 + 32) + 4);
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_24B66655C;

  return v10(a3);
}

uint64_t sub_24B66655C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  v9 = sub_24B6968B8();
  if (v2)
  {
    v10 = sub_24B6666B4;
  }

  else
  {
    v10 = sub_24B660B44;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_24B6666B4()
{
  v1 = v0[3];

  if (qword_27F02D2D8 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_24B6957D8();
  __swift_project_value_buffer(v3, qword_27F033CC0);
  v4 = v2;
  v5 = sub_24B6957B8();
  v6 = sub_24B696928();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24B641000, v5, v6, "[Onboarding] Failed to save result: %{public}@", v8, 0xCu);
    sub_24B64BB2C(v9, &qword_27F02DB58, "RW");
    MEMORY[0x24C247140](v9, -1, -1);
    MEMORY[0x24C247140](v8, -1, -1);
  }

  v12 = v0[5];

  swift_willThrow();
  v13 = v0[1];
  v14 = v0[5];

  return v13();
}

uint64_t sub_24B666854(uint64_t a1, int **a2)
{
  v2[2] = sub_24B6968D8();
  v2[3] = sub_24B6968C8();
  v4 = a2[1];
  v8 = (*a2 + **a2);
  v5 = (*a2)[1];
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_24B66695C;

  return v8();
}

uint64_t sub_24B66695C()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_24B6968B8();
  if (v2)
  {
    v8 = sub_24B660BA8;
  }

  else
  {
    v8 = sub_24B6681A4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B666AB8(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_24B6968D8();
  v2[3] = sub_24B6968C8();
  v4 = *(a2 + 40);
  v9 = (*(a2 + 32) + **(a2 + 32));
  v5 = *(*(a2 + 32) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_24B666BCC;
  v7 = MEMORY[0x277D84FA0];

  return v9(v7);
}

uint64_t sub_24B666BCC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  v9 = sub_24B6968B8();
  if (v2)
  {
    v10 = sub_24B668198;
  }

  else
  {
    v10 = sub_24B6681A4;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_24B666D24(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B66819C;

  return sub_24B666AB8(a1, v1 + 16);
}

uint64_t sub_24B666DF4(uint64_t a1, int **a2)
{
  v2[2] = sub_24B6968D8();
  v2[3] = sub_24B6968C8();
  v4 = a2[1];
  v8 = (*a2 + **a2);
  v5 = (*a2)[1];
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_24B666EFC;

  return v8();
}

uint64_t sub_24B666EFC()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_24B6968B8();
  if (v2)
  {
    v8 = sub_24B6681A0;
  }

  else
  {
    v8 = sub_24B6681A4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B667060(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B66819C;

  return sub_24B666DF4(a1, (v1 + 16));
}

uint64_t sub_24B6670F8(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B660CB4;

  return sub_24B666448(a1, v1 + 16, v4);
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24B6671E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B66819C;

  return sub_24B666854(a1, (v1 + 16));
}

uint64_t sub_24B667280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B6672E8(uint64_t a1)
{
  v4 = *(type metadata accessor for OnboardingModality() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B66819C;

  return sub_24B666098(a1, v1 + 16, v1 + v5);
}

uint64_t sub_24B6673C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24B696AF8();
  sub_24B696888();
  v9 = sub_24B696B38();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24B696AD8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24B667FE0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24B667514(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_24B696AF8();
  sub_24B696888();
  v7 = sub_24B696B38();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_24B696AD8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24B667828();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_24B667E1C(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_24B667728(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24B667784(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24B6677CC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_24B667828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB50, "PW");
  v2 = *v0;
  v3 = sub_24B696978();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24B667984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB50, "PW");
  result = sub_24B696988();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_24B696AF8();

      sub_24B696888();
      result = sub_24B696B38();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24B667BBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DB50, "PW");
  result = sub_24B696988();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24B696AF8();
      sub_24B696888();
      result = sub_24B696B38();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_24B667E1C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_24B696958();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_24B696AF8();

        sub_24B696888();
        v15 = sub_24B696B38();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24B667FE0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24B667BBC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24B667828();
      goto LABEL_16;
    }

    sub_24B667984(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24B696AF8();
  sub_24B696888();
  result = sub_24B696B38();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24B696AD8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24B696AE8();
  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24B6681BC()
{
  result = qword_27F02DB60[0];
  if (!qword_27F02DB60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F02DB60);
  }

  return result;
}

unint64_t sub_24B668218()
{
  result = sub_24B6682FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OnboardingModality();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24B6682FC()
{
  result = qword_27F02DBE8;
  if (!qword_27F02DBE8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F02DBE8);
  }

  return result;
}

uint64_t sub_24B668390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a2;
  v221 = a1;
  v220 = *(a1 - 8);
  v2 = *(v220 + 64);
  v3 = a1 - 8;
  MEMORY[0x28223BE20](a1 - 8);
  v218 = v4;
  v219 = &WitnessTable - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B695698();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v217 = &WitnessTable - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B696868();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v216 = &WitnessTable - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_24B695BA8();
  v212 = *(v215 - 8);
  v213 = v215 - 8;
  v208 = v212;
  v11 = *(v212 + 64);
  MEMORY[0x28223BE20](v215 - 8);
  v214 = &WitnessTable - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B695D68();
  v209 = *(v13 - 8);
  v210 = v13;
  v14 = *(v209 + 64);
  MEMORY[0x28223BE20](v13);
  v207 = &WitnessTable - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_24B6959C8();
  v16 = *(*(v203 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v203);
  v211 = (&WitnessTable - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + 24);
  v223 = v3;
  v225 = v19;
  v182 = *(v19 - 8);
  v20 = *(v182 + 64);
  MEMORY[0x28223BE20](v17);
  v178 = &WitnessTable - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_24B695DA8();
  v22 = sub_24B6959A8();
  v180 = *(v22 - 8);
  v23 = *(v180 + 64);
  MEMORY[0x28223BE20](v22);
  v174 = &WitnessTable - v24;
  v155 = v22;
  v25 = sub_24B6959A8();
  v179 = *(v25 - 8);
  v26 = *(v179 + 64);
  MEMORY[0x28223BE20](v25);
  v173 = &WitnessTable - v27;
  v28 = sub_24B6959A8();
  v183 = *(v28 - 8);
  v29 = *(v183 + 64);
  MEMORY[0x28223BE20](v28);
  v172 = &WitnessTable - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DBF0, &qword_24B698610);
  v161 = v28;
  v31 = sub_24B6959A8();
  v185 = *(v31 - 8);
  v32 = *(v185 + 64);
  MEMORY[0x28223BE20](v31);
  v175 = &WitnessTable - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DBF8, &qword_24B698618);
  v163 = v31;
  v34 = sub_24B6959A8();
  v190 = *(v34 - 8);
  v35 = *(v190 + 64);
  MEMORY[0x28223BE20](v34);
  v177 = &WitnessTable - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC00, &qword_24B698620);
  v168 = v34;
  v37 = sub_24B6959A8();
  v192 = *(v37 - 8);
  v38 = *(v192 + 64);
  MEMORY[0x28223BE20](v37);
  v181 = &WitnessTable - v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC08, &qword_24B698628);
  v170 = v37;
  v40 = sub_24B6959A8();
  v191 = *(v40 - 8);
  v41 = *(v191 + 64);
  MEMORY[0x28223BE20](v40);
  v184 = &WitnessTable - v42;
  v43 = *(v3 + 32);
  v206 = sub_24B66B7C4(&qword_27F02DC10, MEMORY[0x277CDE470]);
  v251 = v43;
  v252 = v206;
  WitnessTable = swift_getWitnessTable();
  v249 = WitnessTable;
  v250 = MEMORY[0x277CE01B0];
  v156 = swift_getWitnessTable();
  v247 = v156;
  v248 = MEMORY[0x277CDF900];
  v44 = swift_getWitnessTable();
  v157 = v44;
  v45 = sub_24B65C890(&qword_27F02DC18, &qword_27F02DBF0, &qword_24B698610);
  v245 = v44;
  v246 = v45;
  v46 = swift_getWitnessTable();
  v162 = v46;
  v47 = sub_24B65C890(&qword_27F02DC20, &qword_27F02DBF8, &qword_24B698618);
  v243 = v46;
  v244 = v47;
  v48 = swift_getWitnessTable();
  v164 = v48;
  v49 = sub_24B65C890(&qword_27F02DC28, &qword_27F02DC00, &qword_24B698620);
  v241 = v48;
  v242 = v49;
  v50 = swift_getWitnessTable();
  v169 = v50;
  v51 = sub_24B65C890(&qword_27F02DC30, &qword_27F02DC08, &qword_24B698628);
  v239 = v50;
  v240 = v51;
  v52 = swift_getWitnessTable();
  v237 = v40;
  v238 = v52;
  v166 = v40;
  v167 = v52;
  v53 = v52;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v171 = *(OpaqueTypeMetadata2 - 8);
  v55 = *(v171 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v165 = &WitnessTable - v56;
  v237 = v40;
  v238 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v237 = OpaqueTypeMetadata2;
  v238 = OpaqueTypeConformance2;
  v58 = OpaqueTypeMetadata2;
  v159 = OpaqueTypeMetadata2;
  v160 = OpaqueTypeConformance2;
  v59 = OpaqueTypeConformance2;
  v60 = swift_getOpaqueTypeMetadata2();
  v187 = *(v60 - 8);
  v61 = *(v187 + 64);
  MEMORY[0x28223BE20](v60);
  v158 = &WitnessTable - v62;
  v189 = v63;
  v64 = sub_24B6959A8();
  v205 = *(v64 - 8);
  v65 = *(v205 + 64);
  v66 = MEMORY[0x28223BE20](v64);
  v224 = &WitnessTable - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v204 = &WitnessTable - v68;
  v237 = v58;
  v238 = v59;
  v176 = swift_getOpaqueTypeConformance2();
  v235 = v176;
  v236 = v206;
  v69 = swift_getWitnessTable();
  v237 = v64;
  v238 = v69;
  v70 = swift_getOpaqueTypeMetadata2();
  v200 = *(v70 - 8);
  v71 = *(v200 + 64);
  MEMORY[0x28223BE20](v70);
  v197 = &WitnessTable - v72;
  v206 = v64;
  v237 = v64;
  v238 = v69;
  v199 = v69;
  v73 = swift_getOpaqueTypeConformance2();
  v202 = v70;
  v237 = v70;
  v238 = v73;
  v196 = v73;
  v201 = swift_getOpaqueTypeMetadata2();
  v198 = *(v201 - 8);
  v74 = *(v198 + 64);
  v75 = MEMORY[0x28223BE20](v201);
  v194 = &WitnessTable - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v195 = &WitnessTable - v77;
  v78 = v193;
  v80 = *v193;
  v79 = *(v193 + 8);
  v81 = v193 + *(v223 + 56);
  v186 = type metadata accessor for OnboardingModality();
  v82 = v81 + *(v186 + 20);
  v83 = v178;
  v188 = v81;
  v80(v81, v82);
  v84 = v174;
  v85 = v225;
  sub_24B6961C8();
  v86 = v83;
  v87 = v85;
  (*(v182 + 8))(v86, v85);
  v88 = *(v78 + 24);
  v89 = *(v78 + 32);
  v90 = v173;
  v91 = v155;
  sub_24B6960B8();
  (*(v180 + 8))(v84, v91);
  *(v78 + 16);
  v92 = v172;
  sub_24B696278();
  (*(v179 + 8))(v90, v25);
  v232 = v87;
  v233 = v43;
  v234 = v78;
  sub_24B696648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC38, &qword_24B698630);
  sub_24B66AFC8();
  v93 = v175;
  v94 = v161;
  sub_24B696288();
  (*(v183 + 8))(v92, v94);
  sub_24B696608();
  v229 = v87;
  v230 = v43;
  v231 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC68, &qword_24B698648);
  sub_24B66B0B8();
  v95 = v177;
  v96 = v163;
  sub_24B696288();
  (*(v185 + 8))(v93, v96);
  if (sub_24B6965C8())
  {
    v97 = 16.0;
  }

  else
  {
    v97 = 8.0;
  }

  v98 = *(v203 + 20);
  v99 = *MEMORY[0x277CE0118];
  v100 = sub_24B695B58();
  v101 = v211;
  (*(*(v100 - 8) + 104))(v211 + v98, v99, v100);
  *v101 = v97;
  v101[1] = v97;
  v102 = v101;
  sub_24B66B7C4(&qword_27F02DCF0, MEMORY[0x277CDFC08]);
  v103 = v181;
  v104 = v168;
  sub_24B6962F8();
  sub_24B66B50C(v102);
  (*(v190 + 8))(v95, v104);
  v226 = v87;
  v105 = v78;
  v211 = v43;
  v227 = v43;
  v228 = v78;
  sub_24B696648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DCF8, &qword_24B698698);
  sub_24B66B574();
  v106 = v184;
  v107 = v170;
  v108 = v103;
  v109 = v158;
  sub_24B696288();
  v110 = v208;
  (*(v192 + 8))(v108, v107);
  v111 = (v105 + *(v223 + 60));
  v112 = *v111;
  v113 = v111[1];
  v115 = v165;
  v114 = v166;
  sub_24B696138();
  (*(v191 + 8))(v106, v114);
  v116 = v207;
  sub_24B695D58();
  v117 = v159;
  sub_24B6961D8();
  (*(v209 + 8))(v116, v210);
  (*(v171 + 8))(v115, v117);
  LODWORD(v108) = *(v105 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD18, &qword_24B6986A8);
  v118 = *(v212 + 72);
  v119 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  if (v108 == 1)
  {
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_24B698580;
    sub_24B695B88();
    sub_24B695B78();
  }

  else
  {
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_24B697540;
    sub_24B695B88();
  }

  v237 = v120;
  sub_24B66B7C4(&qword_27F02DD20, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD28, &qword_24B6986B0);
  sub_24B65C890(&qword_27F02DD30, &qword_27F02DD28, &qword_24B6986B0);
  v122 = v214;
  v121 = v215;
  sub_24B696948();
  v123 = v189;
  sub_24B6961F8();
  (*(v110 + 8))(v122, v121);
  (*(v187 + 8))(v109, v123);
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v125 = [objc_opt_self() bundleForClass_];
  sub_24B695688();
  v237 = sub_24B696878();
  v238 = v126;
  sub_24B64E810();
  v127 = sub_24B695FE8();
  v129 = v128;
  v131 = v130;
  v132 = v220;
  v133 = v219;
  v134 = v221;
  (*(v220 + 16))(v219, v105, v221);
  v135 = (*(v132 + 80) + 32) & ~*(v132 + 80);
  v136 = swift_allocObject();
  v137 = v211;
  *(v136 + 16) = v225;
  *(v136 + 24) = v137;
  (*(v132 + 32))(v136 + v135, v133, v134);
  v138 = v204;
  v139 = v206;
  v140 = v224;
  sub_24B695998();

  sub_24B6557C0(v127, v129, v131 & 1);

  v141 = *(v205 + 8);
  v141(v140, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6E8, &qword_24B697990);
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_24B697540;
  v143 = (v188 + *(v186 + 32));
  v144 = v143[1];
  *(v142 + 32) = *v143;
  *(v142 + 40) = v144;

  v145 = v197;
  sub_24B696028();

  v141(v138, v139);
  v146 = v194;
  v147 = v202;
  v148 = v196;
  sub_24B696018();
  (*(v200 + 8))(v145, v147);
  v237 = v147;
  v238 = v148;
  v149 = swift_getOpaqueTypeConformance2();
  v150 = v195;
  v151 = v201;
  sub_24B65C908(v146, v201, v149);
  v152 = *(v198 + 8);
  v152(v146, v151);
  sub_24B65C908(v150, v151, v149);
  return (v152)(v150, v151);
}

uint64_t sub_24B669914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC50, &qword_24B698638);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_24B695738();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B695748();
  (*(v13 + 16))(v11, v16, v12);
  sub_24B64A3E0(v11, a4, &qword_27F02DC50, &qword_24B698638);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC38, &qword_24B698630);
  sub_24B669AC4(a1, a2, a3, (a4 + *(v17 + 44)));
  sub_24B64BB2C(v11, &qword_27F02DC50, &qword_24B698638);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_24B669AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v68[1] = a2;
  v68[2] = a3;
  v68[0] = a1;
  v81 = a4;
  v4 = sub_24B695F28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B695648();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD78, &qword_24B698780);
  v14 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v16 = v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD80, &qword_24B698788);
  v79 = *(v17 - 8);
  v80 = v17;
  v18 = *(v79 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v78 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v77 = v68 - v21;
  v22 = type metadata accessor for OnboardingModalityCardButton();
  v23 = v68[0];
  v24 = v68[0] + *(v22 + 48);
  v25 = type metadata accessor for OnboardingModality();
  (*(v10 + 16))(v13, v24 + *(v25 + 40), v9);
  v26 = sub_24B695FD8();
  v74 = v27;
  v75 = v26;
  LOBYTE(v9) = v28;
  v73 = v29;
  v70 = *(v23 + 48);
  KeyPath = swift_getKeyPath();
  v71 = swift_getKeyPath();
  v30 = v9 & 1;
  LOBYTE(v92) = v9 & 1;
  LOBYTE(v88) = 0;
  sub_24B695F78();
  sub_24B695EC8();

  (*(v5 + 104))(v8, *MEMORY[0x277CE0A10], v4);
  v69 = sub_24B695F58();

  (*(v5 + 8))(v8, v4);
  v31 = swift_getKeyPath();
  v32 = sub_24B695E18();
  sub_24B695818();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  LOBYTE(v92) = 0;
  if (*(v23 + 16))
  {
    v41 = 0.77;
  }

  else
  {
    v41 = 1.0;
  }

  sub_24B696648();
  sub_24B6959F8();
  v42 = sub_24B696648();
  v44 = v43;
  sub_24B66A0E4(v23, &v88);
  v83[0] = v88;
  v83[1] = v89;
  v83[2] = v90;
  *&v84 = v42;
  *(&v84 + 1) = v44;
  v91 = v84;
  v85[0] = v88;
  v85[1] = v89;
  v85[2] = v90;
  v86 = v42;
  v87 = v44;
  sub_24B64A3E0(v83, &v82, &qword_27F02DD88, &unk_24B6987F0);
  sub_24B64BB2C(v85, &qword_27F02DD88, &unk_24B6987F0);
  v45 = &v16[*(v76 + 36)];
  sub_24B6965A8();
  LOBYTE(v42) = sub_24B695E28();
  v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DAD8, &qword_24B6982F0) + 36)] = v42;
  v46 = v74;
  *v16 = v75;
  *(v16 + 1) = v46;
  v16[16] = v30;
  v47 = KeyPath;
  *(v16 + 3) = v73;
  *(v16 + 4) = v47;
  v48 = v71;
  *(v16 + 5) = v70;
  v16[48] = 0;
  *(v16 + 7) = v48;
  v16[64] = 1;
  v49 = v69;
  *(v16 + 9) = v31;
  *(v16 + 10) = v49;
  v16[88] = v32;
  *(v16 + 12) = v34;
  *(v16 + 13) = v36;
  *(v16 + 14) = v38;
  *(v16 + 15) = v40;
  v16[128] = 0;
  *(v16 + 17) = v41;
  v50 = v97;
  *(v16 + 13) = v96;
  *(v16 + 14) = v50;
  v51 = v98;
  v52 = v93;
  *(v16 + 9) = v92;
  *(v16 + 10) = v52;
  v53 = v95;
  *(v16 + 11) = v94;
  *(v16 + 12) = v53;
  v54 = v88;
  v55 = v89;
  v56 = v91;
  *(v16 + 18) = v90;
  *(v16 + 19) = v56;
  *(v16 + 16) = v54;
  *(v16 + 17) = v55;
  *(v16 + 15) = v51;
  v57 = *(v23 + 40);
  sub_24B66B80C();
  v58 = v77;
  sub_24B696048();
  sub_24B64BB2C(v16, &qword_27F02DD78, &qword_24B698780);
  v60 = v78;
  v59 = v79;
  v61 = *(v79 + 16);
  v62 = v80;
  v61(v78, v58, v80);
  v63 = v81;
  *v81 = 0;
  *(v63 + 8) = 1;
  v64 = v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE30, &qword_24B698848);
  v61(&v64[*(v65 + 48)], v60, v62);
  v66 = *(v59 + 8);
  v66(v58, v62);
  return (v66)(v60, v62);
}

uint64_t sub_24B66A0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE38, &unk_24B698850);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24B698580;
  sub_24B696348();
  v5 = sub_24B696358();

  *(v4 + 32) = v5;
  sub_24B696348();
  v6 = sub_24B696358();

  *(v4 + 40) = v6;
  sub_24B6966A8();
  sub_24B6966B8();
  MEMORY[0x24C2466B0](v4);
  result = sub_24B695968();
  v8 = 0.77;
  if (!*(a1 + 16))
  {
    v8 = 1.0;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 24) = v11;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_24B66A214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v68 = a2;
  v73 = a1;
  v65 = a4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC80, &qword_24B69A160);
  v4 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v70 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD50, &qword_24B6986D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v59 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD58, &qword_24B6986D8);
  v71 = *(v72 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v12 = &v59 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC88, &qword_24B698660);
  v13 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v15 = &v59 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC78, &unk_24B698650);
  v59 = *(v60 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v75 = &v59 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD60, &qword_24B6986E0);
  v62 = *(v63 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v59 - v19;
  sub_24B6963F8();
  sub_24B695BF8();
  v20 = sub_24B695C18();
  (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
  v66 = sub_24B696408();

  sub_24B64BB2C(v9, &qword_27F02DD50, &qword_24B6986D0);
  v21 = sub_24B695E98();
  KeyPath = swift_getKeyPath();
  v23 = sub_24B696378();
  v24 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD68, &qword_24B69A2A0);
  inited = swift_initStackObject();
  v67 = xmmword_24B698580;
  *(inited + 16) = xmmword_24B698580;
  v26 = sub_24B695E38();
  *(inited + 32) = v26;
  v27 = sub_24B695E78();
  *(inited + 33) = v27;
  v28 = sub_24B695E68();
  sub_24B695E68();
  if (sub_24B695E68() != v26)
  {
    v28 = sub_24B695E68();
  }

  sub_24B695E68();
  if (sub_24B695E68() != v27)
  {
    v28 = sub_24B695E68();
  }

  sub_24B695818();
  v84 = 0;
  *&v76 = v66;
  *(&v76 + 1) = KeyPath;
  *&v77 = v21;
  *(&v77 + 1) = v24;
  *&v78 = v23;
  BYTE8(v78) = v28;
  *&v79 = v29;
  *(&v79 + 1) = v30;
  *&v80 = v31;
  *(&v80 + 1) = v32;
  v81 = 0;
  v33 = type metadata accessor for OnboardingModalityCardButton();
  v34 = v73;
  v35 = (v73 + *(v33 + 56));
  v36 = *v35;
  v37 = v35[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC98, &qword_24B698668);
  sub_24B66B310();
  sub_24B696138();
  v82[3] = v79;
  v82[4] = v80;
  v83 = v81;
  v82[0] = v76;
  v82[1] = v77;
  v82[2] = v78;
  sub_24B64BB2C(v82, &qword_27F02DC98, &qword_24B698668);
  if (*(v34 + 16))
  {
    v38 = 0.77;
  }

  else
  {
    v38 = 1.0;
  }

  (*(v71 + 32))(v15, v12, v72);
  v39 = v74;
  *&v15[*(v74 + 36)] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6E8, &qword_24B697990);
  v40 = swift_allocObject();
  *(v40 + 16) = v67;
  v41 = v34 + *(v33 + 48);
  v42 = (v41 + *(type metadata accessor for OnboardingModality() + 32));
  v43 = v42[1];
  *(v40 + 32) = *v42;
  *(v40 + 40) = v43;
  *(v40 + 48) = 0x747475426F666E49;
  *(v40 + 56) = 0xEA00000000006E6FLL;
  v44 = sub_24B66B248();

  v45 = v75;
  sub_24B696028();

  sub_24B6463DC(v15);
  v46 = *MEMORY[0x277CDFA00];
  v47 = sub_24B695978();
  v48 = v70;
  (*(*(v47 - 8) + 104))(v70, v46, v47);
  sub_24B66B7C4(&qword_27F02DD70, MEMORY[0x277CDFA28]);
  result = sub_24B6967E8();
  if (result)
  {
    *&v76 = v39;
    *(&v76 + 1) = v44;
    swift_getOpaqueTypeConformance2();
    sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160);
    v50 = v61;
    v51 = v60;
    sub_24B696168();
    sub_24B64BB2C(v48, &qword_27F02DC80, &qword_24B69A160);
    (*(v59 + 8))(v45, v51);
    v52 = swift_getKeyPath();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC68, &qword_24B698648);
    v54 = v65;
    v55 = (v65 + *(v53 + 36));
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DCE8, &qword_24B698690) + 28);
    v57 = *MEMORY[0x277CDF3D0];
    v58 = sub_24B6958A8();
    (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
    *v55 = v52;
    return (*(v62 + 32))(v54, v50, v63);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B66AB0C(uint64_t a1)
{
  v2 = sub_24B6958A8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B695A48();
}

uint64_t sub_24B66ABD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B696318();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24B6959C8();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD10, &qword_24B6986A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42[-v16];
  if (sub_24B6965C8())
  {
    v18 = 18.0;
  }

  else
  {
    v18 = 10.0;
  }

  v19 = *(v10 + 28);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_24B695B58();
  (*(*(v21 - 8) + 104))(v13 + v19, v20, v21);
  *v13 = v18;
  v13[1] = v18;
  if (*(a1 + 17) == 1)
  {
    (*(v5 + 104))(v8, *MEMORY[0x277CE0EE0], v4);
    v22 = sub_24B696388();
  }

  else
  {
    v22 = sub_24B696338();
  }

  v23 = v22;
  sub_24B6958E8();
  sub_24B66B69C(v13, v17);
  v24 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD38, &qword_24B6986B8) + 36)];
  v25 = v43;
  *v24 = *&v42[8];
  *(v24 + 1) = v25;
  *(v24 + 4) = v44;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD40, &qword_24B6986C0);
  *&v17[*(v26 + 52)] = v23;
  *&v17[*(v26 + 56)] = 256;
  v27 = sub_24B696648();
  v29 = v28;
  sub_24B66B50C(v13);
  v30 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD48, &qword_24B6986C8) + 36)];
  *v30 = v27;
  v30[1] = v29;
  v31 = sub_24B695E28();
  sub_24B695818();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_24B66B700(v17, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DCF8, &qword_24B698698);
  v41 = a2 + *(result + 36);
  *v41 = v31;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_24B66AF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = *(a5 + 16);
  v16 = *(a5 + 24);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 24) = *a5;
  *(a9 + 40) = v15;
  *(a9 + 48) = v16;
  v17 = type metadata accessor for OnboardingModalityCardButton();
  result = sub_24B665FE0(a6, a9 + v17[12]);
  v19 = (a9 + v17[13]);
  *v19 = a7;
  v19[1] = a8;
  v20 = (a9 + v17[14]);
  *v20 = a10;
  v20[1] = a11;
  return result;
}

unint64_t sub_24B66AFC8()
{
  result = qword_27F02DC40;
  if (!qword_27F02DC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC38, &qword_24B698630);
    sub_24B65C890(&qword_27F02DC48, &qword_27F02DC50, &qword_24B698638);
    sub_24B65C890(&qword_27F02DC58, &qword_27F02DC60, &qword_24B698640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DC40);
  }

  return result;
}

unint64_t sub_24B66B0B8()
{
  result = qword_27F02DC70;
  if (!qword_27F02DC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC68, &qword_24B698648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC78, &unk_24B698650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC88, &qword_24B698660);
    sub_24B66B248();
    swift_getOpaqueTypeConformance2();
    sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160);
    swift_getOpaqueTypeConformance2();
    sub_24B65C890(&qword_27F02DCE0, &qword_27F02DCE8, &qword_24B698690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DC70);
  }

  return result;
}

unint64_t sub_24B66B248()
{
  result = qword_27F02DC90;
  if (!qword_27F02DC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC88, &qword_24B698660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC98, &qword_24B698668);
    sub_24B66B310();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DC90);
  }

  return result;
}

unint64_t sub_24B66B310()
{
  result = qword_27F02DCA0;
  if (!qword_27F02DCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC98, &qword_24B698668);
    sub_24B66B3C8();
    sub_24B65C890(&qword_27F02DCC8, &qword_27F02DCD0, &qword_24B698688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DCA0);
  }

  return result;
}

unint64_t sub_24B66B3C8()
{
  result = qword_27F02DCA8;
  if (!qword_27F02DCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DCB0, &qword_24B698670);
    sub_24B66B454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DCA8);
  }

  return result;
}

unint64_t sub_24B66B454()
{
  result = qword_27F02DCB8;
  if (!qword_27F02DCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DCC0, &qword_24B698678);
    sub_24B6649D8();
    sub_24B65C890(&qword_27F02D478, &qword_27F02D480, &unk_24B6975F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DCB8);
  }

  return result;
}

uint64_t sub_24B66B50C(uint64_t a1)
{
  v2 = sub_24B6959C8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B66B568@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_24B66ABD4(v1[4], a1);
}

unint64_t sub_24B66B574()
{
  result = qword_27F02DD00;
  if (!qword_27F02DD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DCF8, &qword_24B698698);
    sub_24B65C890(&qword_27F02DD08, &qword_27F02DD10, &qword_24B6986A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DD00);
  }

  return result;
}

uint64_t sub_24B66B62C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for OnboardingModalityCardButton();
  v4 = v0 + *(v3 + 56) + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  v5 = *(v4 + 8);
  return (*v4)();
}

uint64_t sub_24B66B69C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B6959C8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B66B700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD10, &qword_24B6986A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B66B770@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B695A98();
  *a1 = result;
  return result;
}

uint64_t sub_24B66B7C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B66B80C()
{
  result = qword_27F02DD90;
  if (!qword_27F02DD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DD78, &qword_24B698780);
    sub_24B66B8C4();
    sub_24B65C890(&qword_27F02DAD0, &qword_27F02DAD8, &qword_24B6982F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DD90);
  }

  return result;
}

unint64_t sub_24B66B8C4()
{
  result = qword_27F02DD98;
  if (!qword_27F02DD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDA0, &qword_24B698800);
    sub_24B66B97C();
    sub_24B65C890(&qword_27F02DE28, &qword_27F02DD88, &unk_24B6987F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DD98);
  }

  return result;
}

unint64_t sub_24B66B97C()
{
  result = qword_27F02DDA8;
  if (!qword_27F02DDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDB0, &qword_24B698808);
    sub_24B66BA08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDA8);
  }

  return result;
}

unint64_t sub_24B66BA08()
{
  result = qword_27F02DDB8;
  if (!qword_27F02DDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDC0, &qword_24B698810);
    sub_24B66BA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDB8);
  }

  return result;
}

unint64_t sub_24B66BA94()
{
  result = qword_27F02DDC8;
  if (!qword_27F02DDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDD0, &qword_24B698818);
    sub_24B66BB20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDC8);
  }

  return result;
}

unint64_t sub_24B66BB20()
{
  result = qword_27F02DDD8;
  if (!qword_27F02DDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDE0, &qword_24B698820);
    sub_24B66BBD8();
    sub_24B65C890(&qword_27F02DE18, &qword_27F02DE20, &qword_24B698840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDD8);
  }

  return result;
}

unint64_t sub_24B66BBD8()
{
  result = qword_27F02DDE8;
  if (!qword_27F02DDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DDF0, &qword_24B698828);
    sub_24B66BC90();
    sub_24B65C890(&qword_27F02DAB0, &qword_27F02DAB8, &unk_24B6982E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDE8);
  }

  return result;
}

unint64_t sub_24B66BC90()
{
  result = qword_27F02DDF8;
  if (!qword_27F02DDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DE00, &qword_24B698830);
    sub_24B66BD48();
    sub_24B65C890(&qword_27F02D760, &qword_27F02D768, &unk_24B69A5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DDF8);
  }

  return result;
}

unint64_t sub_24B66BD48()
{
  result = qword_27F02DE08;
  if (!qword_27F02DE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DE10, &qword_24B698838);
    sub_24B65C890(&qword_27F02D770, &qword_27F02D778, &unk_24B697A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE08);
  }

  return result;
}

uint64_t OnboardingContentMargins.overriding(top:leading:bottom:trailing:)@<X0>(uint64_t result@<X0>, char a2@<W1>, double a3@<X2>, char a4@<W3>, double a5@<X4>, char a6@<W5>, double a7@<X6>, char a8@<W7>, double *a9@<X8>)
{
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  if ((a2 & 1) == 0)
  {
    v10 = *&result;
  }

  if ((a4 & 1) == 0)
  {
    v11 = a3;
  }

  if ((a6 & 1) == 0)
  {
    v12 = a5;
  }

  *a9 = v10;
  a9[1] = v11;
  if (a8)
  {
    v14 = v13;
  }

  else
  {
    v14 = a7;
  }

  a9[2] = v12;
  a9[3] = v14;
  return result;
}

uint64_t OnboardingModalityDetailEnvironment.dismiss.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OnboardingModalityDetailEnvironment.init(dismiss:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void OnboardingContentMargins.init(top:leading:bottom:trailing:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_24B66BED0()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x676E696C69617274;
  }

  if (*v0)
  {
    v1 = 0x676E696461656CLL;
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

uint64_t sub_24B66BF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B66C9A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B66BF74(uint64_t a1)
{
  v2 = sub_24B66C63C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B66BFB0(uint64_t a1)
{
  v2 = sub_24B66C63C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingContentMargins.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE40, &qword_24B6988C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B66C63C();
  sub_24B696B58();
  v16 = v10;
  HIBYTE(v15) = 0;
  sub_24B649AE0();
  sub_24B696AB8();
  if (!v2)
  {
    v16 = v9;
    HIBYTE(v15) = 1;
    sub_24B696AB8();
    v16 = v12;
    HIBYTE(v15) = 2;
    sub_24B696AB8();
    v16 = v11;
    HIBYTE(v15) = 3;
    sub_24B696AB8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t OnboardingContentMargins.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE50, &qword_24B6988C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B66C63C();
  sub_24B696B48();
  if (!v2)
  {
    HIBYTE(v16) = 0;
    sub_24B649E68();
    sub_24B696A38();
    v11 = v17;
    HIBYTE(v16) = 1;
    sub_24B696A38();
    v12 = v17;
    HIBYTE(v16) = 2;
    sub_24B696A38();
    v14 = v17;
    HIBYTE(v16) = 3;
    sub_24B696A38();
    (*(v6 + 8))(v9, v5);
    v15 = v17;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t OnboardingContentMargins.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x24C246C90](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x24C246C90](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x24C246C90](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x24C246C90](*&v7);
}

uint64_t OnboardingContentMargins.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_24B696AF8();
  OnboardingContentMargins.hash(into:)();
  return sub_24B696B38();
}

uint64_t sub_24B66C564()
{
  v2 = *v0;
  v3 = v0[1];
  sub_24B696AF8();
  OnboardingContentMargins.hash(into:)();
  return sub_24B696B38();
}

uint64_t sub_24B66C5B4()
{
  v2 = *v0;
  v3 = v0[1];
  sub_24B696AF8();
  OnboardingContentMargins.hash(into:)();
  return sub_24B696B38();
}

unint64_t sub_24B66C63C()
{
  result = qword_27F02DE48;
  if (!qword_27F02DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE48);
  }

  return result;
}

unint64_t sub_24B66C694()
{
  result = qword_27F02DE58;
  if (!qword_27F02DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE58);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B66C6F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B66C714(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingContentMargins.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingContentMargins.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B66C8A4()
{
  result = qword_27F02DE60;
  if (!qword_27F02DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE60);
  }

  return result;
}

unint64_t sub_24B66C8FC()
{
  result = qword_27F02DE68;
  if (!qword_27F02DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE68);
  }

  return result;
}

unint64_t sub_24B66C954()
{
  result = qword_27F02DE70;
  if (!qword_27F02DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE70);
  }

  return result;
}

uint64_t sub_24B66C9A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7368564 && a2 == 0xE300000000000000;
  if (v3 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000 || (sub_24B696AD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B696AD8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double OnboardingModalityCardLayout.aspectRatio.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OnboardingModalityCardLayout.init(aspectRatio:overlayHeightRatio:overlayTextLineLimit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_24B66CB30()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6152746365707361;
  }
}

uint64_t sub_24B66CB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B66D258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B66CBC0(uint64_t a1)
{
  v2 = sub_24B66CE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B66CBFC(uint64_t a1)
{
  v2 = sub_24B66CE30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityCardLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE78, &qword_24B698AF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B66CE30();
  sub_24B696B58();
  v17 = v9;
  v18 = v10;
  v16 = 0;
  type metadata accessor for CGSize();
  sub_24B649DD0(&qword_27F02D2F8);
  sub_24B696AB8();
  if (!v2)
  {
    v17 = v11;
    v16 = 1;
    sub_24B649AE0();
    sub_24B696AB8();
    LOBYTE(v17) = 2;
    sub_24B696AA8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B66CE30()
{
  result = qword_27F02DE80;
  if (!qword_27F02DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE80);
  }

  return result;
}

uint64_t OnboardingModalityCardLayout.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DE88, &qword_24B698AF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B66CE30();
  sub_24B696B48();
  if (!v2)
  {
    type metadata accessor for CGSize();
    v17 = 0;
    sub_24B649DD0(&qword_27F02D318);
    sub_24B696A38();
    v11 = v18;
    v12 = v19;
    v17 = 1;
    sub_24B649E68();
    sub_24B696A38();
    v14 = v18;
    LOBYTE(v18) = 2;
    v15 = sub_24B696A28();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B66D154()
{
  result = qword_27F02DE90;
  if (!qword_27F02DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE90);
  }

  return result;
}

unint64_t sub_24B66D1AC()
{
  result = qword_27F02DE98;
  if (!qword_27F02DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DE98);
  }

  return result;
}

unint64_t sub_24B66D204()
{
  result = qword_27F02DEA0[0];
  if (!qword_27F02DEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F02DEA0);
  }

  return result;
}

uint64_t sub_24B66D258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974;
  if (v4 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B69B3B0 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B69B3D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B696AD8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_24B66D380()
{
  sub_24B6682FC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for OnboardingModality();
    if (v1 <= 0x3F)
    {
      sub_24B66D468();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B66D468()
{
  if (!qword_27F02DF28)
  {
    v0 = sub_24B695878();
    if (!v1)
    {
      atomic_store(v0, &qword_27F02DF28);
    }
  }
}

uint64_t sub_24B66D504(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_24B696698();
}

uint64_t sub_24B66D6D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;
  v10 = type metadata accessor for TVOnboardingModalityCardButton();
  sub_24B665FE0(a7, a8 + *(v10 + 48));
  v11 = a8 + *(v10 + 52);
  result = sub_24B695858();
  *v11 = result & 1;
  *(v11 + 8) = v13;
  *(v11 + 16) = v14 & 1;
  return result;
}

uint64_t sub_24B66D758@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = (v2 + *(a1 + 52));
  v7 = *v4;
  v8 = *(v4 + 1);
  v9 = v4[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DF58, &unk_24B698D88);
  sub_24B695828();
  if (v6 == 1)
  {
    result = sub_24B695D08();
  }

  else if (*(v2 + 32) == 1)
  {
    result = sub_24B695D18();
  }

  else
  {
    result = sub_24B695D28();
  }

  *a2 = result;
  return result;
}

uint64_t sub_24B66D7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v103 = sub_24B6958B8();
  v102 = *(v103 - 8);
  v3 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v101 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B695CD8();
  v100 = *(v5 - 8);
  v6 = *(v100 + 64);
  MEMORY[0x28223BE20](v5);
  v97 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(a1 + 16);
  v8 = a1;
  v99 = a1;
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF30, &qword_24B698D70);
  v9 = sub_24B6959A8();
  v10 = sub_24B695988();
  v95 = *(v8 + 24);
  v118 = v95;
  v119 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v12 = sub_24B65C890(&qword_27F02DF38, &qword_27F02DF30, &qword_24B698D70);
  v116 = WitnessTable;
  v117 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_24B66F8DC(&qword_27F02DF40, MEMORY[0x277CDD9F8]);
  v112 = v9;
  v113 = v10;
  v114 = v13;
  v115 = v14;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF48, &unk_24B698D78);
  swift_getTupleTypeMetadata2();
  v92 = sub_24B696688();
  v91 = swift_getWitnessTable();
  v15 = sub_24B6964A8();
  v94 = *(v15 - 8);
  v16 = *(v94 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v70 - v17;
  v19 = swift_getWitnessTable();
  v20 = sub_24B66F8DC(&qword_27F02DF50, MEMORY[0x277CDE0B8]);
  v112 = v15;
  v113 = v5;
  v71 = v5;
  v114 = v19;
  v115 = v20;
  v21 = v19;
  v73 = v19;
  v22 = v20;
  v72 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v89 = *(OpaqueTypeMetadata2 - 8);
  v23 = *(v89 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v79 = v70 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v25 = sub_24B6959A8();
  v93 = *(v25 - 8);
  v26 = *(v93 + 64);
  MEMORY[0x28223BE20](v25);
  v80 = v70 - v27;
  v112 = v15;
  v113 = v5;
  v114 = v21;
  v115 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v75 = OpaqueTypeConformance2;
  v29 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600);
  v110 = OpaqueTypeConformance2;
  v111 = v29;
  v30 = swift_getWitnessTable();
  v112 = v25;
  v113 = v30;
  v31 = v30;
  v70[1] = v30;
  v81 = swift_getOpaqueTypeMetadata2();
  v85 = *(v81 - 8);
  v32 = *(v85 + 64);
  MEMORY[0x28223BE20](v81);
  v76 = v70 - v33;
  v34 = sub_24B6959A8();
  v90 = *(v34 - 8);
  v35 = *(v90 + 64);
  MEMORY[0x28223BE20](v34);
  v77 = v70 - v36;
  v112 = v25;
  v113 = v31;
  v74 = swift_getOpaqueTypeConformance2();
  v108 = v74;
  v109 = MEMORY[0x277CDF900];
  v83 = swift_getWitnessTable();
  v112 = v34;
  v113 = v83;
  v86 = MEMORY[0x277D09E70];
  v87 = swift_getOpaqueTypeMetadata2();
  v88 = *(v87 - 8);
  v37 = *(v88 + 64);
  v38 = MEMORY[0x28223BE20](v87);
  v78 = v70 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v82 = v70 - v40;
  v41 = v98;
  v42 = *v98;
  v43 = v98[1];
  v105 = v96;
  v106 = v95;
  v107 = v98;

  sub_24B696468();
  v44 = v97;
  sub_24B695CC8();
  v45 = v79;
  v46 = v71;
  sub_24B6960C8();
  (*(v100 + 8))(v44, v46);
  (*(v94 + 8))(v18, v15);
  v47 = v102;
  v48 = v101;
  v49 = v103;
  (*(v102 + 104))(v101, *MEMORY[0x277CDF438], v103);
  v50 = v80;
  v51 = OpaqueTypeMetadata2;
  sub_24B6960E8();
  (*(v47 + 8))(v48, v49);
  (*(v89 + 8))(v45, v51);
  v52 = v99;
  v53 = v41 + *(v99 + 52);
  v54 = *v53;
  v55 = *(v53 + 1);
  LOBYTE(v53) = v53[16];
  LOBYTE(v112) = v54;
  v113 = v55;
  LOBYTE(v114) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DF58, &unk_24B698D88);
  sub_24B695848();
  v56 = v76;
  sub_24B696268();

  (*(v93 + 8))(v50, v25);
  *(v41 + 32);
  v57 = v77;
  v58 = v81;
  sub_24B696278();
  (*(v85 + 8))(v56, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6E8, &qword_24B697990);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_24B698580;
  *(v59 + 32) = 0xD000000000000016;
  *(v59 + 40) = 0x800000024B69B120;
  v60 = v41 + *(v52 + 48);
  v61 = &v60[*(type metadata accessor for OnboardingModality() + 32)];
  v62 = *(v61 + 1);
  *(v59 + 48) = *v61;
  *(v59 + 56) = v62;

  v63 = v78;
  v64 = v83;
  sub_24B696028();

  (*(v90 + 8))(v57, v34);
  v112 = v34;
  v113 = v64;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v82;
  v67 = v87;
  sub_24B65C908(v63, v87, v65);
  v68 = *(v88 + 8);
  v68(v63, v67);
  sub_24B65C908(v66, v67, v65);
  return (v68)(v66, v67);
}

uint64_t sub_24B66E3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a4;
  v87 = sub_24B695F28();
  v86 = *(v87 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_24B695648();
  v83 = *(v84 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v82 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DF48, &unk_24B698D78);
  v11 = *(*(v88 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v88);
  v89 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v81 = &v62 - v14;
  v15 = sub_24B695988();
  v65 = v15;
  v80 = *(v15 - 8);
  v16 = *(v80 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  OpaqueTypeConformance2 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(a2 - 8);
  v19 = *(v75 + 64);
  MEMORY[0x28223BE20](v17);
  v73 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B6959A8();
  v78 = *(v21 - 8);
  v22 = *(v78 + 64);
  MEMORY[0x28223BE20](v21);
  v71 = &v62 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF30, &qword_24B698D70);
  v70 = v21;
  v24 = sub_24B6959A8();
  v77 = *(v24 - 8);
  v25 = *(v77 + 64);
  MEMORY[0x28223BE20](v24);
  v72 = &v62 - v26;
  v104 = a3;
  v105 = MEMORY[0x277CE01B0];
  WitnessTable = swift_getWitnessTable();
  v66 = WitnessTable;
  v28 = sub_24B65C890(&qword_27F02DF38, &qword_27F02DF30, &qword_24B698D70);
  v102 = WitnessTable;
  v103 = v28;
  v29 = swift_getWitnessTable();
  v64 = v29;
  v63 = sub_24B66F8DC(&qword_27F02DF40, MEMORY[0x277CDD9F8]);
  v98 = v24;
  v99 = v15;
  v100 = v29;
  v101 = v63;
  v67 = MEMORY[0x277CDE6B0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = *(OpaqueTypeMetadata2 - 8);
  v30 = *(v68 + 64);
  v31 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v33 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v91 = &v62 - v34;
  v36 = *(a1 + 16);
  v35 = *(a1 + 24);
  v76 = type metadata accessor for TVOnboardingModalityCardButton();
  v37 = a1 + *(v76 + 48);
  v74 = a1;
  v62 = type metadata accessor for OnboardingModality();
  v38 = v73;
  v36(v37, v37 + *(v62 + 20));
  v39 = v71;
  sub_24B6960B8();
  (*(v75 + 8))(v38, a2);
  v92 = a2;
  v93 = a3;
  v94 = a1;
  sub_24B696648();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DF60, &qword_24B698D98);
  sub_24B66F1C0();
  v40 = v72;
  v41 = v70;
  sub_24B696288();
  (*(v78 + 8))(v39, v41);
  v42 = OpaqueTypeConformance2;
  sub_24B695A28();
  v43 = v65;
  v44 = v64;
  v45 = v63;
  sub_24B696108();
  (*(v80 + 8))(v42, v43);
  (*(v77 + 8))(v40, v24);
  v98 = v24;
  v99 = v43;
  v100 = v44;
  v101 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = OpaqueTypeMetadata2;
  sub_24B65C908(v33, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v47 = v68;
  v80 = *(v68 + 8);
  (v80)(v33, v46);
  (*(v83 + 16))(v82, v37 + *(v62 + 40), v84);
  v48 = v81;
  sub_24B6956D8();
  sub_24B695F38();
  v49 = v86;
  v50 = v85;
  v51 = v87;
  (*(v86 + 104))(v85, *MEMORY[0x277CE0A10], v87);
  v52 = sub_24B695F58();

  (*(v49 + 8))(v50, v51);
  KeyPath = swift_getKeyPath();
  v54 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DFD0, &qword_24B698E08) + 36));
  *v54 = KeyPath;
  v54[1] = v52;
  v55 = swift_getKeyPath();
  v56 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DFD8, &unk_24B698E40) + 36);
  *v56 = v55;
  *(v56 + 8) = 1;
  *(v56 + 16) = 0;
  sub_24B66D758(v76, &v98);
  v57 = v88;
  *(v48 + *(v88 + 36)) = v98;
  v58 = v91;
  (*(v47 + 16))(v33, v91, v46);
  v98 = v33;
  v59 = v89;
  sub_24B66F614(v48, v89);
  v99 = v59;
  v97[0] = v46;
  v97[1] = v57;
  v95 = OpaqueTypeConformance2;
  v96 = sub_24B66F684();
  sub_24B66D504(&v98, 2uLL, v97);
  sub_24B64BB2C(v48, &qword_27F02DF48, &unk_24B698D78);
  v60 = v80;
  (v80)(v58, v46);
  sub_24B64BB2C(v59, &qword_27F02DF48, &unk_24B698D78);
  return v60(v33, v46);
}

__n128 sub_24B66EE10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B696318();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD50, &qword_24B6986D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v32 - v11;
  if (*(a1 + 33) == 1)
  {
    sub_24B6963F8();
    sub_24B695C08();
    v13 = sub_24B695C18();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
    v14 = sub_24B696408();

    sub_24B64BB2C(v12, &qword_27F02DD50, &qword_24B6986D0);
    (*(v5 + 104))(v8, *MEMORY[0x277CE0EE0], v4);
    v15 = sub_24B696388();
    v16 = sub_24B696328();
    v17 = sub_24B695F88();
    KeyPath = swift_getKeyPath();
    sub_24B696328();
    v19 = sub_24B696358();

    sub_24B696618();
    sub_24B6959F8();
    v20 = sub_24B695E28();
    sub_24B695818();
    v36 = xmmword_24B698CE0;
    *(&v37[3] + 8) = v32[3];
    *(&v37[4] + 8) = v32[4];
    *(&v37[5] + 8) = v32[5];
    *(&v37[6] + 8) = v32[6];
    *(v37 + 8) = v32[0];
    *(&v37[1] + 8) = v32[1];
    v41 = 0;
    *&v33 = v14;
    *(&v33 + 1) = v15;
    *&v34 = v16;
    *(&v34 + 1) = KeyPath;
    *&v35 = v17;
    *(&v35 + 1) = v19;
    *&v37[0] = 0x4000000000000000;
    *(&v37[2] + 8) = v32[2];
    BYTE8(v37[7]) = v20;
    *&v38 = v21;
    *(&v38 + 1) = v22;
    *&v39 = v23;
    *(&v39 + 1) = v24;
    v40 = 0;
    nullsub_1(&v33);
    v54 = v38;
    v55 = v39;
    v56 = v40;
    v50 = v37[4];
    v51 = v37[5];
    v52 = v37[6];
    v53 = v37[7];
    v46 = v37[0];
    v47 = v37[1];
    v48 = v37[2];
    v49 = v37[3];
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = v36;
  }

  else
  {
    sub_24B66F924(&v42);
  }

  v25 = v55;
  *(a2 + 192) = v54;
  *(a2 + 208) = v25;
  *(a2 + 224) = v56;
  v26 = v51;
  *(a2 + 128) = v50;
  *(a2 + 144) = v26;
  v27 = v53;
  *(a2 + 160) = v52;
  *(a2 + 176) = v27;
  v28 = v47;
  *(a2 + 64) = v46;
  *(a2 + 80) = v28;
  v29 = v49;
  *(a2 + 96) = v48;
  *(a2 + 112) = v29;
  v30 = v43;
  *a2 = v42;
  *(a2 + 16) = v30;
  result = v45;
  *(a2 + 32) = v44;
  *(a2 + 48) = result;
  return result;
}

double sub_24B66F1B4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *&result = sub_24B66EE10(v1[4], a1).n128_u64[0];
  return result;
}

unint64_t sub_24B66F1C0()
{
  result = qword_27F02DF68;
  if (!qword_27F02DF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF60, &qword_24B698D98);
    sub_24B66F244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DF68);
  }

  return result;
}

unint64_t sub_24B66F244()
{
  result = qword_27F02DF70;
  if (!qword_27F02DF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF78, &qword_24B698DA0);
    sub_24B66F2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DF70);
  }

  return result;
}

unint64_t sub_24B66F2D0()
{
  result = qword_27F02DF80;
  if (!qword_27F02DF80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF88, &qword_24B698DA8);
    sub_24B66F35C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DF80);
  }

  return result;
}

unint64_t sub_24B66F35C()
{
  result = qword_27F02DF90;
  if (!qword_27F02DF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF98, &qword_24B698DB0);
    sub_24B66F3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DF90);
  }

  return result;
}

unint64_t sub_24B66F3E8()
{
  result = qword_27F02DFA0;
  if (!qword_27F02DFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DFA8, &qword_24B698DB8);
    sub_24B66F4A0();
    sub_24B65C890(&qword_27F02DAB0, &qword_27F02DAB8, &unk_24B6982E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DFA0);
  }

  return result;
}

unint64_t sub_24B66F4A0()
{
  result = qword_27F02DFB0;
  if (!qword_27F02DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DFB8, &qword_24B698DC0);
    sub_24B65C890(&qword_27F02DFC0, &qword_27F02DFC8, &unk_24B698DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DFB0);
  }

  return result;
}

uint64_t sub_24B66F558@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B695AF8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B66F58C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24B695B08();
}

uint64_t sub_24B66F5BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B695AB8();
  *a1 = result;
  return result;
}

uint64_t sub_24B66F5E8(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B695AC8();
}

uint64_t sub_24B66F614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DF48, &unk_24B698D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B66F684()
{
  result = qword_27F02DFE0;
  if (!qword_27F02DFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF48, &unk_24B698D78);
    sub_24B66F73C();
    sub_24B65C890(&qword_27F02D780, &qword_27F02D788, &unk_24B698E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DFE0);
  }

  return result;
}

unint64_t sub_24B66F73C()
{
  result = qword_27F02DFE8;
  if (!qword_27F02DFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DFD8, &unk_24B698E40);
    sub_24B66F7F4();
    sub_24B65C890(&qword_27F02D770, &qword_27F02D778, &unk_24B697A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DFE8);
  }

  return result;
}

unint64_t sub_24B66F7F4()
{
  result = qword_27F02DFF0;
  if (!qword_27F02DFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DFD0, &qword_24B698E08);
    sub_24B66F8DC(&qword_27F02DFF8, MEMORY[0x277D09D48]);
    sub_24B65C890(&qword_27F02DAB0, &qword_27F02DAB8, &unk_24B6982E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02DFF0);
  }

  return result;
}

uint64_t sub_24B66F8DC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_24B66F924(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OnboardingModalityPickerState.activeStorefrontLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B695698();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OnboardingModalityPickerState.detail.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OnboardingModalityPickerState() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for OnboardingModalityPickerState()
{
  result = qword_27F02E070;
  if (!qword_27F02E070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *OnboardingModalityPickerState.layout.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for OnboardingModalityPickerState() + 24));

  return memcpy(a1, v3, 0x180uLL);
}

uint64_t OnboardingModalityPickerState.selectedModalityIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for OnboardingModalityPickerState() + 28));
}

uint64_t OnboardingModalityPickerState.selectedModalityIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OnboardingModalityPickerState() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t OnboardingModalityPickerState.presentedModality.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for OnboardingModalityPickerState() + 32);

  return sub_24B66FBD0(v3, a1);
}

uint64_t sub_24B66FBD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OnboardingModalityPickerState.presentedModality.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for OnboardingModalityPickerState() + 32);

  return sub_24B643408(a1, v3);
}

uint64_t OnboardingModalityPickerState.isPresentingDismissalConfirmationAlert.setter(char a1)
{
  result = type metadata accessor for OnboardingModalityPickerState();
  *(v1 + *(result + 36)) = a1;
  return result;
}

void *OnboardingModalityPickerState.init(activeStorefrontLocale:detail:selectedModalityIdentifiers:presentedModality:isPresentingDismissalConfirmationAlert:layout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, const void *a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for OnboardingModalityPickerState();
  v15 = v14[8];
  v16 = type metadata accessor for OnboardingModality();
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  v17 = sub_24B695698();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = v14[5];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  (*(*(v19 - 8) + 32))(a7 + v18, a2, v19);
  *(a7 + v14[7]) = a3;
  sub_24B643408(a4, a7 + v15);
  *(a7 + v14[9]) = a5;
  v20 = (a7 + v14[6]);

  return memcpy(v20, a6, 0x180uLL);
}

unint64_t sub_24B66FED4()
{
  v1 = *v0;
  v2 = 0x6C6961746564;
  v3 = 0xD00000000000001BLL;
  v4 = 0xD000000000000026;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x74756F79616CLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_24B66FF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B671584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B66FFCC(uint64_t a1)
{
  v2 = sub_24B6703B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B670008(uint64_t a1)
{
  v2 = sub_24B6703B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityPickerState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E000, &unk_24B698E70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6703B4();
  sub_24B696B58();
  LOBYTE(v17[0]) = 0;
  sub_24B695698();
  sub_24B6712E4(&qword_27F02E010, MEMORY[0x277CC9788]);
  sub_24B696AB8();
  if (!v2)
  {
    v11 = type metadata accessor for OnboardingModalityPickerState();
    v12 = v11[5];
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
    sub_24B670B90(&qword_27F02E018);
    sub_24B696AB8();
    memcpy(v17, (v3 + v11[6]), sizeof(v17));
    v18 = 2;
    sub_24B670408();
    sub_24B696AB8();
    v17[0] = *(v3 + v11[7]);
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E038, &qword_24B69AA70);
    sub_24B670CB8(&qword_27F02E040);
    sub_24B696AB8();
    v13 = v11[8];
    LOBYTE(v17[0]) = 4;
    type metadata accessor for OnboardingModality();
    sub_24B6712E4(&qword_2810E1DD0, type metadata accessor for OnboardingModality);
    sub_24B696A78();
    v14 = *(v3 + v11[9]);
    LOBYTE(v17[0]) = 5;
    sub_24B696A98();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B6703B4()
{
  result = qword_27F02E008;
  if (!qword_27F02E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E008);
  }

  return result;
}

unint64_t sub_24B670408()
{
  result = qword_27F02E030;
  if (!qword_27F02E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E030);
  }

  return result;
}

uint64_t OnboardingModalityPickerState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - v8;
  v44 = sub_24B695698();
  v39 = *(v44 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E048, &qword_24B698E80);
  v43 = *(v46 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v14 = &v36 - v13;
  v15 = type metadata accessor for OnboardingModalityPickerState();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 32);
  v21 = type metadata accessor for OnboardingModality();
  v22 = *(*(v21 - 8) + 56);
  v48 = v19;
  v49 = v20;
  v22(&v19[v20], 1, 1, v21);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6703B4();
  v45 = v14;
  v24 = v47;
  sub_24B696B48();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24B64BB2C(&v48[v49], &qword_27F02D3A8, &qword_24B697570);
  }

  else
  {
    v25 = v9;
    v36 = v21;
    v47 = v15;
    v27 = v40;
    v26 = v41;
    v28 = a1;
    v51[0] = 0;
    sub_24B6712E4(&qword_27F02E050, MEMORY[0x277CC9788]);
    v29 = v42;
    sub_24B696A38();
    v30 = v48;
    (*(v39 + 32))(v48, v29, v44);
    v51[0] = 1;
    sub_24B670B90(&qword_27F02E058);
    v31 = v26;
    sub_24B696A38();
    v32 = v47;
    (*(v27 + 32))(v30 + *(v47 + 20), v25, v31);
    v51[407] = 2;
    sub_24B670C64();
    v42 = 0;
    sub_24B696A38();
    memcpy((v30 + *(v32 + 24)), v51, 0x180uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E038, &qword_24B69AA70);
    v51[406] = 3;
    sub_24B670CB8(&qword_27F02E068);
    sub_24B696A38();
    *(v30 + *(v32 + 28)) = v50;
    LOBYTE(v50) = 4;
    sub_24B6712E4(&qword_27F02D868, type metadata accessor for OnboardingModality);
    v33 = v38;
    sub_24B6969F8();
    sub_24B643408(v33, v30 + v49);
    LOBYTE(v50) = 5;
    v34 = sub_24B696A18();
    (*(v43 + 8))(v45, v46);
    *(v30 + *(v47 + 36)) = v34 & 1;
    sub_24B670D24(v30, v37);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return sub_24B67177C(v30, type metadata accessor for OnboardingModalityPickerState);
  }
}

uint64_t sub_24B670B90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D660, &unk_24B698E60);
    sub_24B6712E4(&qword_27F02E020, type metadata accessor for OnboardingDetail);
    sub_24B6712E4(&qword_27F02E028, type metadata accessor for OnboardingDetail);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B670C64()
{
  result = qword_27F02E060;
  if (!qword_27F02E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E060);
  }

  return result;
}

uint64_t sub_24B670CB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E038, &qword_24B69AA70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B670D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingModalityPickerState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s17FitnessOnboarding0B19ModalityPickerStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingModality();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0A8, &qword_24B699068);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((MEMORY[0x24C2457E0](a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v27 = v8;
  v28 = v5;
  v17 = type metadata accessor for OnboardingModalityPickerState();
  v18 = v17[5];
  type metadata accessor for OnboardingDetail();
  sub_24B6712E4(&qword_27F02E088, type metadata accessor for OnboardingDetail);
  if ((sub_24B6966C8() & 1) == 0)
  {
    goto LABEL_11;
  }

  memcpy(v30, (a1 + v17[6]), 0x180uLL);
  memcpy(v29, (a2 + v17[6]), sizeof(v29));
  if ((_s17FitnessOnboarding0B20ModalityPickerLayoutV2eeoiySbAC_ACtFZ_0(v30, v29) & 1) == 0 || (sub_24B68F9E8(*(a1 + v17[7]), *(a2 + v17[7])) & 1) == 0)
  {
    goto LABEL_11;
  }

  v19 = v17[8];
  v20 = *(v13 + 48);
  sub_24B66FBD0(a1 + v19, v16);
  sub_24B66FBD0(a2 + v19, &v16[v20]);
  v21 = *(v28 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_24B64BB2C(v16, &qword_27F02D3A8, &qword_24B697570);
LABEL_14:
      v22 = *(a1 + v17[9]) ^ *(a2 + v17[9]) ^ 1;
      return v22 & 1;
    }

    goto LABEL_10;
  }

  sub_24B66FBD0(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_24B67177C(v12, type metadata accessor for OnboardingModality);
LABEL_10:
    sub_24B64BB2C(v16, &qword_27F02E0A8, &qword_24B699068);
    goto LABEL_11;
  }

  v24 = v27;
  sub_24B665FE0(&v16[v20], v27);
  v25 = static OnboardingModality.== infix(_:_:)(v12, v24);
  sub_24B67177C(v24, type metadata accessor for OnboardingModality);
  sub_24B67177C(v12, type metadata accessor for OnboardingModality);
  sub_24B64BB2C(v16, &qword_27F02D3A8, &qword_24B697570);
  if (v25)
  {
    goto LABEL_14;
  }

LABEL_11:
  v22 = 0;
  return v22 & 1;
}

void sub_24B67118C()
{
  sub_24B695698();
  if (v0 <= 0x3F)
  {
    sub_24B671250();
    if (v1 <= 0x3F)
    {
      sub_24B6428D8();
      if (v2 <= 0x3F)
      {
        sub_24B642930();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B671250()
{
  if (!qword_27F02E080)
  {
    type metadata accessor for OnboardingDetail();
    sub_24B6712E4(&qword_27F02E088, type metadata accessor for OnboardingDetail);
    v0 = sub_24B6966E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F02E080);
    }
  }
}

uint64_t sub_24B6712E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for OnboardingModalityPickerState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingModalityPickerState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B671480()
{
  result = qword_27F02E090;
  if (!qword_27F02E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E090);
  }

  return result;
}

unint64_t sub_24B6714D8()
{
  result = qword_27F02E098;
  if (!qword_27F02E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E098);
  }

  return result;
}

unint64_t sub_24B671530()
{
  result = qword_27F02E0A0;
  if (!qword_27F02E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0A0);
  }

  return result;
}

uint64_t sub_24B671584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x800000024B69B3F0 == a2;
  if (v4 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_24B696AD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024B69B410 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024B69B430 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000026 && 0x800000024B69B450 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B696AD8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B67177C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OnboardingModalityPickerEnvironment.dismiss.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t OnboardingModalityPickerEnvironment.presentModalityDetail.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t OnboardingModalityPickerEnvironment.saveResult.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t OnboardingModalityPickerEnvironment.init(dismiss:presentModalityDetail:saveResult:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_24B67188C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B6718C0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24B671920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x800000024B69B480 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24B696AD8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24B6719B4(uint64_t a1)
{
  v2 = sub_24B671D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6719F0(uint64_t a1)
{
  v2 = sub_24B671D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B671A2C(uint64_t a1)
{
  v2 = sub_24B671DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B671A68(uint64_t a1)
{
  v2 = sub_24B671DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityDetailAction.hashValue.getter()
{
  sub_24B696AF8();
  MEMORY[0x24C246C70](0);
  return sub_24B696B38();
}

uint64_t sub_24B671B10()
{
  sub_24B696AF8();
  MEMORY[0x24C246C70](0);
  return sub_24B696B38();
}

uint64_t sub_24B671B54()
{
  sub_24B696AF8();
  MEMORY[0x24C246C70](0);
  return sub_24B696B38();
}

uint64_t OnboardingModalityDetailAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0B0, &qword_24B6990E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0B8, &qword_24B6990E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B671D6C();
  sub_24B696B58();
  sub_24B671DC0();
  sub_24B696A58();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_24B671D6C()
{
  result = qword_27F02E0C0;
  if (!qword_27F02E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0C0);
  }

  return result;
}

unint64_t sub_24B671DC0()
{
  result = qword_27F02E0C8;
  if (!qword_27F02E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0C8);
  }

  return result;
}

uint64_t OnboardingModalityDetailAction.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0D0, &qword_24B6990F0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0D8, &unk_24B6990F8);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B671D6C();
  sub_24B696B48();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(sub_24B696A48() + 16) == 1)
    {
      sub_24B671DC0();
      sub_24B6969C8();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = sub_24B6969A8();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D820, &unk_24B697E00) + 48);
      *v16 = &type metadata for OnboardingModalityDetailAction;
      sub_24B6969D8();
      sub_24B696998();
      (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B67210C()
{
  result = qword_27F02E0E0;
  if (!qword_27F02E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0E0);
  }

  return result;
}

uint64_t sub_24B672178(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0B0, &qword_24B6990E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E0B8, &qword_24B6990E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B671D6C();
  sub_24B696B58();
  sub_24B671DC0();
  sub_24B696A58();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_24B672384()
{
  result = qword_27F02E0E8;
  if (!qword_27F02E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0E8);
  }

  return result;
}

unint64_t sub_24B6723DC()
{
  result = qword_27F02E0F0;
  if (!qword_27F02E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0F0);
  }

  return result;
}

unint64_t sub_24B672434()
{
  result = qword_27F02E0F8;
  if (!qword_27F02E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E0F8);
  }

  return result;
}

unint64_t sub_24B67248C()
{
  result = qword_27F02E100;
  if (!qword_27F02E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E100);
  }

  return result;
}

unint64_t sub_24B6724E4()
{
  result = qword_27F02E108;
  if (!qword_27F02E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E108);
  }

  return result;
}

unint64_t sub_24B67254C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000022;
    v6 = 0xD000000000000020;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000027;
    if (a1 == 5)
    {
      v7 = 0xD000000000000028;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    v2 = 0xD000000000000012;
    if (a1 == 3)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (!a1)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B672674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B676BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B6726A8(uint64_t a1)
{
  v2 = sub_24B6741E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6726E4(uint64_t a1)
{
  v2 = sub_24B6741E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672720(uint64_t a1)
{
  v2 = sub_24B674398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B67275C(uint64_t a1)
{
  v2 = sub_24B674398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672798(uint64_t a1)
{
  v2 = sub_24B6743EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6727D4(uint64_t a1)
{
  v2 = sub_24B6743EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672810(uint64_t a1)
{
  v2 = sub_24B674344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B67284C(uint64_t a1)
{
  v2 = sub_24B674344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672888(uint64_t a1)
{
  v2 = sub_24B67453C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B6728C4(uint64_t a1)
{
  v2 = sub_24B67453C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672900(uint64_t a1)
{
  v2 = sub_24B674590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B67293C(uint64_t a1)
{
  v2 = sub_24B674590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B696AD8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B672A18(uint64_t a1)
{
  v2 = sub_24B6742F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B672A54(uint64_t a1)
{
  v2 = sub_24B6742F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672A90(uint64_t a1)
{
  v2 = sub_24B67429C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B672ACC(uint64_t a1)
{
  v2 = sub_24B67429C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672B08(uint64_t a1)
{
  v2 = sub_24B6744E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B672B44(uint64_t a1)
{
  v2 = sub_24B6744E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672B80(uint64_t a1)
{
  v2 = sub_24B674494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B672BBC(uint64_t a1)
{
  v2 = sub_24B674494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B672BF8(uint64_t a1)
{
  v2 = sub_24B674440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B672C34(uint64_t a1)
{
  v2 = sub_24B674440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityPickerAction.encode(to:)(void *a1)
{
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E110, &qword_24B6993D0);
  v130 = *(v131 - 8);
  v2 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v129 = &v108 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E118, &qword_24B6993D8);
  v133 = *(v4 - 8);
  v134 = v4;
  v5 = *(v133 + 64);
  MEMORY[0x28223BE20](v4);
  v132 = &v108 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E120, &qword_24B6993E0);
  v136 = *(v7 - 8);
  v137 = v7;
  v8 = *(v136 + 64);
  MEMORY[0x28223BE20](v7);
  v135 = &v108 - v9;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E128, &qword_24B6993E8);
  v122 = *(v123 - 8);
  v10 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v118 = &v108 - v11;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E130, &qword_24B6993F0);
  v115 = *(v117 - 8);
  v12 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = &v108 - v13;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E138, &qword_24B6993F8);
  v112 = *(v113 - 8);
  v14 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v108 - v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E140, &qword_24B699400);
  v109 = *(v110 - 8);
  v16 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v18 = &v108 - v17;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E148, &qword_24B699408);
  v127 = *(v128 - 8);
  v19 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v126 = &v108 - v20;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E150, &qword_24B699410);
  v124 = *(v125 - 8);
  v21 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v121 = &v108 - v22;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E158, &qword_24B699418);
  v119 = *(v120 - 8);
  v23 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v116 = &v108 - v24;
  v146 = sub_24B6956B8();
  v25 = *(v146 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v146);
  v145 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v144 = &v108 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v143 = &v108 - v32;
  MEMORY[0x28223BE20](v31);
  v142 = &v108 - v33;
  v147 = type metadata accessor for OnboardingModality();
  v34 = *(*(v147 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v147);
  v37 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v141 = &v108 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v140 = &v108 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v139 = &v108 - v43;
  MEMORY[0x28223BE20](v42);
  v138 = &v108 - v44;
  v45 = type metadata accessor for OnboardingModalityPickerAction();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v48 = &v108 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E160, &unk_24B699420);
  v152 = *(v150 - 8);
  v49 = *(v152 + 64);
  MEMORY[0x28223BE20](v150);
  v51 = &v108 - v50;
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B6741E4();
  v149 = v51;
  sub_24B696B58();
  sub_24B674238(v148, v48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v65 = v150;
      v66 = v149;
      if (EnumCaseMultiPayload == 5)
      {
        v154 = 3;
        sub_24B674494();
        sub_24B696A58();
        (*(v109 + 8))(v18, v110);
      }

      else
      {
        v154 = 4;
        sub_24B674440();
        v99 = v111;
        sub_24B696A58();
        (*(v112 + 8))(v99, v113);
      }
    }

    else
    {
      v65 = v150;
      v66 = v149;
      if (EnumCaseMultiPayload == 7)
      {
        v154 = 5;
        sub_24B6743EC();
        v82 = v114;
        sub_24B696A58();
        (*(v115 + 8))(v82, v117);
      }

      else if (EnumCaseMultiPayload == 8)
      {
        v154 = 6;
        sub_24B674398();
        v67 = v118;
        sub_24B696A58();
        (*(v122 + 8))(v67, v123);
      }

      else
      {
        v154 = 9;
        sub_24B67429C();
        v88 = v129;
        sub_24B696A58();
        (*(v130 + 8))(v88, v131);
      }
    }

    v86 = *(v152 + 8);
    v87 = v66;
    return v86(v87, v65);
  }

  if (EnumCaseMultiPayload > 1)
  {
    v54 = v25;
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
        LODWORD(v148) = v48[*(v55 + 48)];
        v56 = *(v55 + 64);
        v57 = v141;
        sub_24B675DBC(v48, v141, type metadata accessor for OnboardingModality);
        v58 = *(v25 + 32);
        v59 = v146;
        v58(v145, &v48[v56], v146);
        v154 = 7;
        sub_24B674344();
        v60 = v135;
        v62 = v149;
        v61 = v150;
        sub_24B696A58();
        v154 = 0;
        sub_24B675E24(&qword_2810E1DD0, type metadata accessor for OnboardingModality);
        v63 = v137;
        v64 = v151;
        sub_24B696AB8();
        if (v64)
        {
          (*(v136 + 8))(v60, v63);
          (*(v54 + 8))(v145, v59);
LABEL_18:
          v80 = v57;
LABEL_19:
          sub_24B665F84(v80);
          return (*(v152 + 8))(v62, v61);
        }

        v154 = v148;
        v153 = 1;
        sub_24B65DCA4();
        sub_24B696AB8();
        v154 = 2;
        sub_24B675E24(&qword_27F02E188, MEMORY[0x277CC9AF8]);
        v104 = v145;
        sub_24B696AB8();
        v102 = v141;
        (*(v136 + 8))(v60, v63);
        (*(v54 + 8))(v104, v59);
LABEL_33:
        v80 = v102;
        goto LABEL_19;
      }

      sub_24B675DBC(v48, v37, type metadata accessor for OnboardingModality);
      v154 = 8;
      sub_24B6742F0();
      v83 = v132;
      v84 = v149;
      v65 = v150;
      sub_24B696A58();
      sub_24B675E24(&qword_2810E1DD0, type metadata accessor for OnboardingModality);
      v85 = v134;
      sub_24B696AB8();
      (*(v133 + 8))(v83, v85);
      sub_24B665F84(v37);
      v86 = *(v152 + 8);
      v87 = v84;
      return v86(v87, v65);
    }

    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
    LODWORD(v148) = v48[*(v76 + 48)];
    v77 = *(v76 + 64);
    v57 = v140;
    sub_24B675DBC(v48, v140, type metadata accessor for OnboardingModality);
    v78 = *(v25 + 32);
    v72 = v146;
    v78(v144, &v48[v77], v146);
    v154 = 2;
    sub_24B6744E8();
    v73 = v126;
    v62 = v149;
    v61 = v150;
    sub_24B696A58();
    v154 = 0;
    sub_24B675E24(&qword_2810E1DD0, type metadata accessor for OnboardingModality);
    v74 = v128;
    v79 = v151;
    sub_24B696AB8();
    if (v79)
    {
      (*(v127 + 8))(v73, v74);
      (*(v54 + 8))(v144, v72);
      goto LABEL_18;
    }

    v151 = v54;
    v154 = v148;
    v153 = 1;
    sub_24B65DCA4();
    sub_24B696AB8();
    v154 = 2;
    sub_24B675E24(&qword_27F02E188, MEMORY[0x277CC9AF8]);
    v101 = v144;
    sub_24B696AB8();
    v102 = v140;
    v103 = &v155;
LABEL_32:
    (*(*(v103 - 32) + 8))(v73, v74);
    (*(v151 + 8))(v101, v72);
    goto LABEL_33;
  }

  v68 = v25;
  if (!EnumCaseMultiPayload)
  {
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
    LODWORD(v148) = v48[*(v69 + 48)];
    v70 = *(v69 + 64);
    v57 = v138;
    sub_24B675DBC(v48, v138, type metadata accessor for OnboardingModality);
    v71 = *(v25 + 32);
    v72 = v146;
    v71(v142, &v48[v70], v146);
    v154 = 0;
    sub_24B674590();
    v73 = v116;
    v62 = v149;
    v61 = v150;
    sub_24B696A58();
    v154 = 0;
    sub_24B675E24(&qword_2810E1DD0, type metadata accessor for OnboardingModality);
    v74 = v120;
    v75 = v151;
    sub_24B696AB8();
    if (v75)
    {
      (*(v119 + 8))(v73, v74);
      (*(v68 + 8))(v142, v72);
      goto LABEL_18;
    }

    v151 = v68;
    v154 = v148;
    v153 = 1;
    sub_24B65DCA4();
    sub_24B696AB8();
    v154 = 2;
    sub_24B675E24(&qword_27F02E188, MEMORY[0x277CC9AF8]);
    v101 = v142;
    sub_24B696AB8();
    v102 = v138;
    v103 = &v151;
    goto LABEL_32;
  }

  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
  LODWORD(v148) = v48[*(v89 + 48)];
  v90 = *(v89 + 64);
  v91 = v139;
  sub_24B675DBC(v48, v139, type metadata accessor for OnboardingModality);
  v92 = v146;
  (*(v25 + 32))(v143, &v48[v90], v146);
  v154 = 1;
  sub_24B67453C();
  v93 = v121;
  v95 = v149;
  v94 = v150;
  sub_24B696A58();
  v154 = 0;
  sub_24B675E24(&qword_2810E1DD0, type metadata accessor for OnboardingModality);
  v96 = v125;
  v97 = v151;
  sub_24B696AB8();
  if (v97)
  {
    (*(v124 + 8))(v93, v96);
    (*(v68 + 8))(v143, v92);
    v98 = v91;
  }

  else
  {
    v154 = v148;
    v153 = 1;
    sub_24B65DCA4();
    v100 = v93;
    sub_24B696AB8();
    v154 = 2;
    sub_24B675E24(&qword_27F02E188, MEMORY[0x277CC9AF8]);
    v105 = v143;
    v106 = v92;
    sub_24B696AB8();
    v107 = v139;
    (*(v124 + 8))(v100, v96);
    (*(v68 + 8))(v105, v106);
    v98 = v107;
  }

  sub_24B665F84(v98);
  return (*(v152 + 8))(v95, v94);
}

uint64_t type metadata accessor for OnboardingModalityPickerAction()
{
  result = qword_27F02E228;
  if (!qword_27F02E228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B6741E4()
{
  result = qword_27F02E168;
  if (!qword_27F02E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E168);
  }

  return result;
}

uint64_t sub_24B674238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingModalityPickerAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B67429C()
{
  result = qword_27F02E170;
  if (!qword_27F02E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E170);
  }

  return result;
}

unint64_t sub_24B6742F0()
{
  result = qword_27F02E178;
  if (!qword_27F02E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E178);
  }

  return result;
}

unint64_t sub_24B674344()
{
  result = qword_27F02E180;
  if (!qword_27F02E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E180);
  }

  return result;
}

unint64_t sub_24B674398()
{
  result = qword_27F02E190;
  if (!qword_27F02E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E190);
  }

  return result;
}

unint64_t sub_24B6743EC()
{
  result = qword_27F02E198;
  if (!qword_27F02E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E198);
  }

  return result;
}

unint64_t sub_24B674440()
{
  result = qword_27F02E1A0;
  if (!qword_27F02E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E1A0);
  }

  return result;
}

unint64_t sub_24B674494()
{
  result = qword_27F02E1A8;
  if (!qword_27F02E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E1A8);
  }

  return result;
}

unint64_t sub_24B6744E8()
{
  result = qword_27F02E1B0;
  if (!qword_27F02E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E1B0);
  }

  return result;
}

unint64_t sub_24B67453C()
{
  result = qword_27F02E1B8;
  if (!qword_27F02E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E1B8);
  }

  return result;
}

unint64_t sub_24B674590()
{
  result = qword_27F02E1C0;
  if (!qword_27F02E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E1C0);
  }

  return result;
}

uint64_t OnboardingModalityPickerAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1C8, &qword_24B699430);
  v124 = *(v125 - 8);
  v3 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v135 = &v103 - v4;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1D0, &qword_24B699438);
  v127 = *(v126 - 8);
  v5 = *(v127 + 64);
  MEMORY[0x28223BE20](v126);
  v134 = &v103 - v6;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1D8, &qword_24B699440);
  v129 = *(v128 - 8);
  v7 = *(v129 + 64);
  MEMORY[0x28223BE20](v128);
  v142 = &v103 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1E0, &qword_24B699448);
  v119 = *(v120 - 8);
  v9 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v141 = &v103 - v10;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1E8, &qword_24B699450);
  v114 = *(v116 - 8);
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v116);
  v133 = &v103 - v12;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1F0, &qword_24B699458);
  v112 = *(v113 - 8);
  v13 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v131 = &v103 - v14;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E1F8, &qword_24B699460);
  v110 = *(v111 - 8);
  v15 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v130 = &v103 - v16;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E200, &qword_24B699468);
  v123 = *(v118 - 8);
  v17 = *(v123 + 64);
  MEMORY[0x28223BE20](v118);
  v140 = &v103 - v18;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E208, &qword_24B699470);
  v121 = *(v122 - 8);
  v19 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v139 = &v103 - v20;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E210, &qword_24B699478);
  v115 = *(v117 - 8);
  v21 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v132 = &v103 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E218, &unk_24B699480);
  v137 = *(v23 - 8);
  v138 = v23;
  v24 = *(v137 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v103 - v25;
  v136 = type metadata accessor for OnboardingModalityPickerAction();
  v27 = *(*(v136 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v136);
  v109 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v103 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v103 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v103 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v103 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = &v103 - v42;
  v45 = a1[3];
  v44 = a1[4];
  v144 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v45);
  sub_24B6741E4();
  v46 = v145;
  sub_24B696B48();
  if (v46)
  {
    goto LABEL_12;
  }

  v104 = v41;
  v105 = v38;
  v106 = v35;
  v107 = v32;
  v47 = v140;
  v48 = v141;
  v49 = v139;
  v145 = 0;
  v50 = v142;
  v108 = v43;
  v51 = v143;
  v52 = v138;
  v53 = sub_24B696A48();
  v54 = (2 * *(v53 + 16)) | 1;
  v146 = v53;
  v147 = v53 + 32;
  v148 = 0;
  v149 = v54;
  v55 = sub_24B6718C0();
  v56 = v26;
  if (v55 == 10 || v148 != v149 >> 1)
  {
    v60 = sub_24B6969A8();
    swift_allocError();
    v62 = v61;
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D820, &unk_24B697E00) + 48);
    *v62 = v136;
    sub_24B6969D8();
    sub_24B696998();
    (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277D84160], v60);
    swift_willThrow();
  }

  else if (v55 > 4u)
  {
    if (v55 <= 6u)
    {
      if (v55 == 5)
      {
        v150 = 5;
        sub_24B6743EC();
        v74 = v133;
        v75 = v145;
        sub_24B6969C8();
        if (!v75)
        {
          (*(v114 + 8))(v74, v116);
          (*(v137 + 8))(v26, v52);
          swift_unknownObjectRelease();
          v59 = v108;
          swift_storeEnumTagMultiPayload();
          goto LABEL_39;
        }
      }

      else
      {
        v150 = 6;
        sub_24B674398();
        v88 = v145;
        sub_24B6969C8();
        if (!v88)
        {
          (*(v119 + 8))(v48, v120);
          (*(v137 + 8))(v26, v52);
          swift_unknownObjectRelease();
          v59 = v108;
          swift_storeEnumTagMultiPayload();
          goto LABEL_39;
        }
      }

      goto LABEL_11;
    }

    if (v55 == 7)
    {
      v150 = 7;
      sub_24B674344();
      v79 = v145;
      sub_24B6969C8();
      if (!v79)
      {
        v145 = v26;
        type metadata accessor for OnboardingModality();
        v150 = 0;
        sub_24B675E24(&qword_27F02D868, type metadata accessor for OnboardingModality);
        v80 = v128;
        sub_24B696A38();
        v81 = v137;
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
        v93 = *(v92 + 48);
        v150 = 1;
        sub_24B65DF1C();
        sub_24B696A38();
        v94 = v129;
        v141 = *(v92 + 64);
        sub_24B6956B8();
        v150 = 2;
        sub_24B675E24(&qword_27F02E220, MEMORY[0x277CC9AF8]);
        sub_24B696A38();
        (*(v94 + 8))(v50, v80);
        (*(v81 + 8))(v145, v52);
        swift_unknownObjectRelease();
        v101 = v107;
        goto LABEL_37;
      }
    }

    else if (v55 == 8)
    {
      v150 = 8;
      sub_24B6742F0();
      v66 = v134;
      v67 = v145;
      sub_24B6969C8();
      if (!v67)
      {
        type metadata accessor for OnboardingModality();
        sub_24B675E24(&qword_27F02D868, type metadata accessor for OnboardingModality);
        v68 = v109;
        v69 = v126;
        sub_24B696A38();
        (*(v127 + 8))(v66, v69);
        (*(v137 + 8))(v26, v52);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v70 = v68;
LABEL_38:
        v59 = v108;
        sub_24B675DBC(v70, v108, type metadata accessor for OnboardingModalityPickerAction);
        goto LABEL_39;
      }
    }

    else
    {
      v150 = 9;
      sub_24B67429C();
      v83 = v135;
      v84 = v145;
      sub_24B6969C8();
      if (!v84)
      {
        (*(v124 + 8))(v83, v125);
        (*(v137 + 8))(v26, v52);
        swift_unknownObjectRelease();
        v59 = v108;
        swift_storeEnumTagMultiPayload();
        goto LABEL_39;
      }
    }
  }

  else
  {
    v57 = v145;
    if (v55 <= 1u)
    {
      if (v55)
      {
        v150 = 1;
        sub_24B67453C();
        v85 = v49;
        sub_24B6969C8();
        if (!v57)
        {
          v86 = v56;
          type metadata accessor for OnboardingModality();
          v150 = 0;
          sub_24B675E24(&qword_27F02D868, type metadata accessor for OnboardingModality);
          v87 = v122;
          sub_24B696A38();
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
          v99 = *(v98 + 48);
          v150 = 1;
          sub_24B65DF1C();
          sub_24B696A38();
          v100 = v121;
          v145 = *(v98 + 64);
          sub_24B6956B8();
          v150 = 2;
          sub_24B675E24(&qword_27F02E220, MEMORY[0x277CC9AF8]);
          sub_24B696A38();
          (*(v100 + 8))(v85, v87);
          (*(v137 + 8))(v86, v52);
          swift_unknownObjectRelease();
          v101 = v105;
          goto LABEL_37;
        }
      }

      else
      {
        v150 = 0;
        sub_24B674590();
        v71 = v132;
        sub_24B6969C8();
        if (!v57)
        {
          v72 = v56;
          type metadata accessor for OnboardingModality();
          v150 = 0;
          sub_24B675E24(&qword_27F02D868, type metadata accessor for OnboardingModality);
          v73 = v117;
          sub_24B696A38();
          v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
          v96 = *(v95 + 48);
          v150 = 1;
          sub_24B65DF1C();
          sub_24B696A38();
          v97 = v115;
          v145 = *(v95 + 64);
          sub_24B6956B8();
          v150 = 2;
          sub_24B675E24(&qword_27F02E220, MEMORY[0x277CC9AF8]);
          sub_24B696A38();
          (*(v97 + 8))(v71, v73);
          (*(v137 + 8))(v72, v52);
          swift_unknownObjectRelease();
          v101 = v104;
LABEL_37:
          swift_storeEnumTagMultiPayload();
          v70 = v101;
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (v55 != 2)
      {
        if (v55 == 3)
        {
          v150 = 3;
          sub_24B674494();
          v58 = v130;
          sub_24B6969C8();
          if (!v57)
          {
            (*(v110 + 8))(v58, v111);
            (*(v137 + 8))(v56, v52);
            swift_unknownObjectRelease();
            v59 = v108;
            swift_storeEnumTagMultiPayload();
LABEL_39:
            v102 = v144;
            sub_24B675DBC(v59, v51, type metadata accessor for OnboardingModalityPickerAction);
            v64 = v102;
            return __swift_destroy_boxed_opaque_existential_1(v64);
          }
        }

        else
        {
          v150 = 4;
          sub_24B674440();
          v82 = v131;
          sub_24B6969C8();
          if (!v57)
          {
            (*(v112 + 8))(v82, v113);
            (*(v137 + 8))(v56, v52);
            swift_unknownObjectRelease();
            v59 = v108;
            swift_storeEnumTagMultiPayload();
            goto LABEL_39;
          }
        }

        goto LABEL_11;
      }

      v150 = 2;
      sub_24B6744E8();
      v76 = v47;
      sub_24B6969C8();
      if (!v57)
      {
        v77 = v56;
        type metadata accessor for OnboardingModality();
        v150 = 0;
        sub_24B675E24(&qword_27F02D868, type metadata accessor for OnboardingModality);
        v78 = v118;
        sub_24B696A38();
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
        v90 = *(v89 + 48);
        v150 = 1;
        sub_24B65DF1C();
        sub_24B696A38();
        v91 = v123;
        v145 = *(v89 + 64);
        sub_24B6956B8();
        v150 = 2;
        sub_24B675E24(&qword_27F02E220, MEMORY[0x277CC9AF8]);
        sub_24B696A38();
        (*(v91 + 8))(v76, v78);
        (*(v137 + 8))(v77, v52);
        swift_unknownObjectRelease();
        v101 = v106;
        goto LABEL_37;
      }
    }
  }

LABEL_11:
  (*(v137 + 8))(v56, v52);
  swift_unknownObjectRelease();
LABEL_12:
  v64 = v144;
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_24B675DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B675E24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24B675EEC()
{
  sub_24B675F64();
  if (v0 <= 0x3F)
  {
    sub_24B675FE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24B675F64()
{
  if (!qword_27F02E238)
  {
    type metadata accessor for OnboardingModality();
    sub_24B6956B8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F02E238);
    }
  }
}

void sub_24B675FE0()
{
  if (!qword_27F02E240)
  {
    v0 = type metadata accessor for OnboardingModality();
    if (!v1)
    {
      atomic_store(v0, &qword_27F02E240);
    }
  }
}

uint64_t getEnumTagSinglePayload for OnboardingModalityPickerAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingModalityPickerAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B67621C()
{
  result = qword_27F02E248;
  if (!qword_27F02E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E248);
  }

  return result;
}

unint64_t sub_24B676274()
{
  result = qword_27F02E250;
  if (!qword_27F02E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E250);
  }

  return result;
}

unint64_t sub_24B6762CC()
{
  result = qword_27F02E258;
  if (!qword_27F02E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E258);
  }

  return result;
}

unint64_t sub_24B676324()
{
  result = qword_27F02E260;
  if (!qword_27F02E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E260);
  }

  return result;
}

unint64_t sub_24B67637C()
{
  result = qword_27F02E268;
  if (!qword_27F02E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E268);
  }

  return result;
}

unint64_t sub_24B6763D4()
{
  result = qword_27F02E270;
  if (!qword_27F02E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E270);
  }

  return result;
}

unint64_t sub_24B67642C()
{
  result = qword_27F02E278;
  if (!qword_27F02E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E278);
  }

  return result;
}

unint64_t sub_24B676484()
{
  result = qword_27F02E280;
  if (!qword_27F02E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E280);
  }

  return result;
}

unint64_t sub_24B6764DC()
{
  result = qword_27F02E288;
  if (!qword_27F02E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E288);
  }

  return result;
}

unint64_t sub_24B676534()
{
  result = qword_27F02E290;
  if (!qword_27F02E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E290);
  }

  return result;
}

unint64_t sub_24B67658C()
{
  result = qword_27F02E298;
  if (!qword_27F02E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E298);
  }

  return result;
}

unint64_t sub_24B6765E4()
{
  result = qword_27F02E2A0;
  if (!qword_27F02E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2A0);
  }

  return result;
}

unint64_t sub_24B67663C()
{
  result = qword_27F02E2A8;
  if (!qword_27F02E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2A8);
  }

  return result;
}

unint64_t sub_24B676694()
{
  result = qword_27F02E2B0;
  if (!qword_27F02E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2B0);
  }

  return result;
}

unint64_t sub_24B6766EC()
{
  result = qword_27F02E2B8;
  if (!qword_27F02E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2B8);
  }

  return result;
}

unint64_t sub_24B676744()
{
  result = qword_27F02E2C0;
  if (!qword_27F02E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2C0);
  }

  return result;
}

unint64_t sub_24B67679C()
{
  result = qword_27F02E2C8;
  if (!qword_27F02E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2C8);
  }

  return result;
}

unint64_t sub_24B6767F4()
{
  result = qword_27F02E2D0;
  if (!qword_27F02E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2D0);
  }

  return result;
}

unint64_t sub_24B67684C()
{
  result = qword_27F02E2D8;
  if (!qword_27F02E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2D8);
  }

  return result;
}

unint64_t sub_24B6768A4()
{
  result = qword_27F02E2E0;
  if (!qword_27F02E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2E0);
  }

  return result;
}

unint64_t sub_24B6768FC()
{
  result = qword_27F02E2E8;
  if (!qword_27F02E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2E8);
  }

  return result;
}

unint64_t sub_24B676954()
{
  result = qword_27F02E2F0;
  if (!qword_27F02E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2F0);
  }

  return result;
}

unint64_t sub_24B6769AC()
{
  result = qword_27F02E2F8;
  if (!qword_27F02E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E2F8);
  }

  return result;
}

unint64_t sub_24B676A04()
{
  result = qword_27F02E300;
  if (!qword_27F02E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E300);
  }

  return result;
}

unint64_t sub_24B676A5C()
{
  result = qword_27F02E308;
  if (!qword_27F02E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E308);
  }

  return result;
}

unint64_t sub_24B676AB4()
{
  result = qword_27F02E310;
  if (!qword_27F02E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E310);
  }

  return result;
}

unint64_t sub_24B676B0C()
{
  result = qword_27F02E318;
  if (!qword_27F02E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E318);
  }

  return result;
}

unint64_t sub_24B676B64()
{
  result = qword_27F02E320;
  if (!qword_27F02E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E320);
  }

  return result;
}

uint64_t sub_24B676BB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000024B69B4C0 == a2;
  if (v3 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B69B4E0 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024B69B500 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B69B520 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B69B540 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000028 && 0x800000024B69B560 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000027 && 0x800000024B69B590 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000022 && 0x800000024B69B5C0 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024B69B5F0 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024B69B620 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_24B696AD8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24B676ED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461507865646E69 && a2 == 0xE900000000000068)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B696AD8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_24B677028()
{
  result = qword_27F02E328;
  if (!qword_27F02E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E328);
  }

  return result;
}

uint64_t sub_24B67707C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B65F544();
  *a1 = result;
  return result;
}

uint64_t sub_24B6770C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B696938();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_24B67712C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B695C58();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_24B695C68();
}

uint64_t sub_24B677224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24B695C58();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_24B695C68();
}

uint64_t sub_24B67731C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_24B696AF8();
  sub_24B696888();
  v7 = sub_24B696B38();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_24B696AD8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24B677414@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for OnboardingModalityPickerState();
  *a2 = *(*(a1 + *(result + 28)) + 16) > 4uLL;
  return result;
}

uint64_t sub_24B677458(uint64_t a1)
{
  v3 = sub_24B695698();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B696868();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B696848();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D658, &unk_24B6977E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D668, &qword_24B6977F0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v33 - v22;
  v33[1] = a1;
  v34 = v1;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B6966D8();
  sub_24B689A78(v23);
  sub_24B64BB2C(v14, &qword_27F02D658, &unk_24B6977E0);
  (*(v16 + 8))(v19, v15);
  v24 = type metadata accessor for OnboardingDetail();
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
  {
    sub_24B64BB2C(v23, &qword_27F02D668, &qword_24B6977F0);
LABEL_5:
    sub_24B6967F8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    goto LABEL_6;
  }

  v25 = &v23[*(v24 + 28)];
  v27 = *v25;
  v26 = *(v25 + 1);

  sub_24B68B07C(v23, type metadata accessor for OnboardingDetail);
  if (!v26)
  {
    goto LABEL_5;
  }

  sub_24B696838();
  sub_24B696828();
  sub_24B696818();

  sub_24B696828();
  sub_24B696858();
  type metadata accessor for LocalizationBundle();
  v28 = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
LABEL_6:
  v31 = v29;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  return sub_24B696878();
}

uint64_t OnboardingModalityPickerView.init(store:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_24B64C754;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  v7 = a3 + *(type metadata accessor for OnboardingModalityPickerView() + 36);
  return sub_24B64C04C();
}

uint64_t OnboardingModalityPickerView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E330, &qword_24B69A110);
  v115 = *(v121 - 8);
  v3 = *(v115 + 64);
  MEMORY[0x28223BE20](v121);
  v113 = v98 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  v6 = *(a1 + 16);
  v119 = *(a1 + 24);
  v120 = v6;
  type metadata accessor for OnboardingModalityCardButton();
  v7 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v158 = MEMORY[0x277CDF678];
  v117 = MEMORY[0x277CDFAD8];
  v8 = swift_getWitnessTable();
  v132 = v7;
  v133 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130);
  v132 = v5;
  v133 = MEMORY[0x277D837D0];
  v134 = OpaqueTypeMetadata2;
  v135 = v10;
  v136 = MEMORY[0x277D837E0];
  sub_24B696538();
  v132 = v7;
  v133 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  v112 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  v11 = sub_24B6964E8();
  v12 = swift_getWitnessTable();
  v132 = v11;
  v133 = v12;
  v13 = swift_getOpaqueTypeMetadata2();
  v14 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  v15 = sub_24B64E3F8();
  v132 = v118;
  v133 = &type metadata for OnboardingModalityPickerSectionType;
  v134 = v13;
  v135 = v14;
  v136 = v15;
  sub_24B696538();
  v132 = v11;
  v133 = v12;
  v155 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v16 = sub_24B6964E8();
  v17 = swift_getWitnessTable();
  v132 = v16;
  v133 = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v111 = v18;
  v132 = MEMORY[0x277CE1350];
  v133 = MEMORY[0x277CE1340];
  v19 = swift_getOpaqueTypeConformance2();
  v122 = v19;
  v132 = v16;
  v133 = v17;
  v110 = swift_getOpaqueTypeConformance2();
  v20 = v121;
  v132 = v16;
  v133 = v121;
  v134 = v18;
  v135 = v17;
  v136 = v19;
  v137 = v110;
  v118 = MEMORY[0x277CE0E68];
  v109 = swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  sub_24B696938();
  v153 = v119;
  v154 = MEMORY[0x277CE01B0];
  v151 = swift_getWitnessTable();
  v152 = MEMORY[0x277CDF678];
  v21 = swift_getWitnessTable();
  v22 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138);
  v149 = v21;
  v150 = v22;
  v148 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  sub_24B6959A8();
  v132 = v16;
  v133 = v20;
  v134 = v111;
  v135 = v17;
  v136 = v122;
  v137 = v110;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = swift_getWitnessTable();
  v146 = v23;
  v147 = v24;
  swift_getWitnessTable();
  v25 = sub_24B695888();
  v26 = swift_getWitnessTable();
  v132 = v25;
  v133 = v26;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E368, &qword_24B69A140);
  sub_24B6959A8();
  v27 = sub_24B6959A8();
  v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E370, &qword_24B69A148);
  v132 = v25;
  v133 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_24B65C890(&qword_27F02E378, &qword_27F02E368, &qword_24B69A140);
  v144 = v28;
  v145 = v29;
  v142 = swift_getWitnessTable();
  v143 = MEMORY[0x277CE0880];
  v30 = v27;
  v31 = swift_getWitnessTable();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E380, &qword_24B69A150);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E388, &qword_24B69A158);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
  v35 = sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
  v36 = sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160);
  v132 = v33;
  v133 = v34;
  v134 = v35;
  v135 = v36;
  v37 = swift_getOpaqueTypeConformance2();
  v132 = v32;
  v133 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v111;
  v132 = v30;
  v133 = v111;
  v134 = v31;
  v135 = v38;
  swift_getOpaqueTypeMetadata2();
  v110 = sub_24B6959A8();
  v40 = sub_24B6965B8();
  v132 = v30;
  v133 = v32;
  v134 = v40;
  v135 = v31;
  v136 = v37;
  v137 = MEMORY[0x277CE1320];
  v109 = swift_getOpaqueTypeMetadata2();
  v132 = v30;
  v133 = v39;
  v134 = v31;
  v135 = v38;
  v140 = swift_getOpaqueTypeConformance2();
  v141 = MEMORY[0x277CE0880];
  v41 = v110;
  v42 = swift_getWitnessTable();
  v132 = v30;
  v133 = v32;
  v134 = v40;
  v135 = v31;
  v136 = v37;
  v137 = MEMORY[0x277CE1320];
  v43 = swift_getOpaqueTypeConformance2();
  v132 = v30;
  v133 = MEMORY[0x277CE1350];
  v134 = v41;
  v44 = v109;
  v135 = v109;
  v136 = v31;
  v45 = MEMORY[0x277CE1340];
  v137 = MEMORY[0x277CE1340];
  v138 = v42;
  v139 = v43;
  swift_getOpaqueTypeMetadata2();
  v132 = v30;
  v133 = MEMORY[0x277CE1350];
  v134 = v41;
  v135 = v44;
  v136 = v31;
  v137 = v45;
  v138 = v42;
  v139 = v43;
  swift_getOpaqueTypeConformance2();
  sub_24B695958();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  v110 = sub_24B695C78();
  v46 = sub_24B6963E8();
  v117 = *(v46 - 8);
  v47 = *(v117 + 64);
  MEMORY[0x28223BE20](v46);
  v111 = (v98 - v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4C0, &qword_24B697610);
  v50 = swift_getWitnessTable();
  v51 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
  v130 = v50;
  v131 = v51;
  v109 = swift_getWitnessTable();
  v129 = v109;
  v52 = swift_getWitnessTable();
  v53 = sub_24B64E810();
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4D8, &qword_24B697618);
  v55 = sub_24B65C890(&qword_27F02D4E0, &qword_27F02D4D8, &qword_24B697618);
  v132 = v54;
  v133 = v55;
  v56 = swift_getOpaqueTypeConformance2();
  v132 = v46;
  v57 = MEMORY[0x277D837D0];
  v133 = MEMORY[0x277D837D0];
  v134 = v49;
  v135 = MEMORY[0x277CE0BD8];
  v136 = v52;
  v137 = v53;
  v58 = MEMORY[0x277CE0BC8];
  v138 = v56;
  v139 = MEMORY[0x277CE0BC8];
  v59 = swift_getOpaqueTypeMetadata2();
  v132 = v46;
  v133 = v57;
  v134 = v49;
  v135 = MEMORY[0x277CE0BD8];
  v136 = v52;
  v137 = v53;
  v138 = v56;
  v139 = v58;
  v60 = swift_getOpaqueTypeConformance2();
  v100 = v46;
  v101 = v52;
  v62 = v121;
  v61 = v122;
  v132 = v46;
  v133 = v121;
  v98[0] = v59;
  v98[1] = v60;
  v134 = v59;
  v135 = v52;
  v136 = v122;
  v137 = v60;
  v63 = v60;
  v64 = swift_getOpaqueTypeMetadata2();
  v112 = *(v64 - 8);
  v65 = *(v112 + 64);
  MEMORY[0x28223BE20](v64);
  v99 = v98 - v66;
  v132 = v46;
  v133 = v62;
  v134 = v59;
  v135 = v52;
  v136 = v61;
  v137 = v63;
  v67 = swift_getOpaqueTypeConformance2();
  v104 = v64;
  v105 = v67;
  v132 = v64;
  v133 = v67;
  v68 = v67;
  v69 = swift_getOpaqueTypeMetadata2();
  v118 = *(v69 - 8);
  v70 = *(v118 + 64);
  MEMORY[0x28223BE20](v69);
  v103 = v98 - v71;
  v132 = v64;
  v133 = v68;
  v72 = swift_getOpaqueTypeConformance2();
  v132 = v69;
  v133 = v72;
  v106 = v72;
  v107 = MEMORY[0x277D09E58];
  v73 = swift_getOpaqueTypeMetadata2();
  v108 = *(v73 - 8);
  v74 = *(v108 + 64);
  v75 = MEMORY[0x28223BE20](v73);
  v77 = v98 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v102 = v98 - v78;
  v80 = v119;
  v79 = v120;
  v126 = v120;
  v127 = v119;
  v81 = v114;
  v128 = v114;
  v82 = v111;
  sub_24B6963D8();
  sub_24B6965D8();
  v83 = v113;
  sub_24B695B68();
  v123 = v79;
  v124 = v80;
  v125 = v81;
  swift_checkMetadataState();
  v85 = v99;
  v84 = v100;
  v86 = v121;
  sub_24B6962E8();
  (*(v115 + 8))(v83, v86);
  (*(v117 + 8))(v82, v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F02D508, &qword_24B69A180);
  v87 = *(sub_24B6959E8() - 8);
  v88 = *(v87 + 72);
  v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_24B697540;
  sub_24B6959D8();
  v92 = v103;
  v91 = v104;
  MEMORY[0x24C2462F0](2, v90, v104, v105);

  (*(v112 + 8))(v85, v91);
  v93 = v106;
  sub_24B695FF8();
  (*(v118 + 8))(v92, v69);
  v132 = v69;
  v133 = v93;
  v94 = swift_getOpaqueTypeConformance2();
  v95 = v102;
  sub_24B65C908(v77, v73, v94);
  v96 = *(v108 + 8);
  v96(v77, v73);
  sub_24B65C908(v95, v73, v94);
  return (v96)(v95, v73);
}

unint64_t sub_24B678B24()
{
  result = qword_27F02E398;
  if (!qword_27F02E398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E3A0, &qword_24B69A168);
    sub_24B65C890(&qword_27F02E3A8, qword_27F02E3B0, &unk_24B69A170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02E398);
  }

  return result;
}

uint64_t sub_24B678BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v113 = a1;
  v116 = a4;
  v117 = a2;
  v118 = a3;
  v114 = type metadata accessor for OnboardingModalityPickerView();
  v99 = *(v114 - 8);
  v97 = *(v99 + 64);
  MEMORY[0x28223BE20](v114);
  v98 = &v93 - v4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4B8, &qword_24B697608);
  v96 = *(v120 - 8);
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v120);
  v95 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D658, &unk_24B6977E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v111 = &v93 - v9;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v112 = *(v110 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D668, &qword_24B6977F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v93 - v14;
  v109 = type metadata accessor for OnboardingDetail();
  v106 = *(v109 - 8);
  v15 = *(v106 + 64);
  v16 = MEMORY[0x28223BE20](v109);
  v93 = v17;
  v94 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v115 = &v93 - v18;
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton();
  v20 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v153 = MEMORY[0x277CDF678];
  v119 = MEMORY[0x277CDFAD8];
  v21 = swift_getWitnessTable();
  v127 = v20;
  v128 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130);
  v127 = v19;
  v128 = MEMORY[0x277D837D0];
  v129 = OpaqueTypeMetadata2;
  v130 = v23;
  v131 = MEMORY[0x277D837E0];
  sub_24B696538();
  v127 = v20;
  v128 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v24 = sub_24B6964E8();
  v25 = swift_getWitnessTable();
  v127 = v24;
  v128 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  v28 = sub_24B64E3F8();
  v127 = v104;
  v128 = &type metadata for OnboardingModalityPickerSectionType;
  v129 = v26;
  v130 = v27;
  v131 = v28;
  sub_24B696538();
  v127 = v24;
  v128 = v25;
  v150 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v29 = sub_24B6964E8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E330, &qword_24B69A110);
  v105 = v30;
  v31 = swift_getWitnessTable();
  v127 = v29;
  v128 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v104 = v32;
  v127 = MEMORY[0x277CE1350];
  v128 = MEMORY[0x277CE1340];
  v33 = swift_getOpaqueTypeConformance2();
  v103 = v33;
  v127 = v29;
  v128 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v127 = v29;
  v128 = v30;
  v129 = v32;
  v130 = v31;
  v131 = v33;
  v132 = v34;
  v101 = MEMORY[0x277CE0E68];
  v102 = v34;
  v100 = swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  sub_24B696938();
  v148 = v118;
  v149 = MEMORY[0x277CE01B0];
  v146 = swift_getWitnessTable();
  v147 = MEMORY[0x277CDF678];
  v35 = swift_getWitnessTable();
  v36 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138);
  v144 = v35;
  v145 = v36;
  v143 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  sub_24B6959A8();
  v127 = v29;
  v128 = v105;
  v129 = v104;
  v130 = v31;
  v131 = v103;
  v132 = v102;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = swift_getWitnessTable();
  v141 = v37;
  v142 = v38;
  swift_getWitnessTable();
  v39 = sub_24B695888();
  v40 = swift_getWitnessTable();
  v127 = v39;
  v128 = v40;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E368, &qword_24B69A140);
  sub_24B6959A8();
  v41 = sub_24B6959A8();
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E370, &qword_24B69A148);
  v127 = v39;
  v128 = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_24B65C890(&qword_27F02E378, &qword_27F02E368, &qword_24B69A140);
  v139 = v42;
  v140 = v43;
  v137 = swift_getWitnessTable();
  v138 = MEMORY[0x277CE0880];
  v104 = swift_getWitnessTable();
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E380, &qword_24B69A150);
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E388, &qword_24B69A158);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
  v47 = sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
  v48 = sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160);
  v127 = v45;
  v128 = v46;
  v129 = v47;
  v130 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v44;
  v101 = v49;
  v102 = v44;
  v127 = v44;
  v128 = v49;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v41;
  v53 = v104;
  v54 = v105;
  v127 = v41;
  v128 = v105;
  v129 = v104;
  v130 = v51;
  swift_getOpaqueTypeMetadata2();
  v103 = sub_24B6959A8();
  v55 = sub_24B6965B8();
  v127 = v41;
  v128 = v50;
  v129 = v55;
  v130 = v53;
  v131 = v49;
  v132 = MEMORY[0x277CE1320];
  v56 = swift_getOpaqueTypeMetadata2();
  v127 = v52;
  v128 = v54;
  v129 = v53;
  v130 = v51;
  v57 = v53;
  v135 = swift_getOpaqueTypeConformance2();
  v136 = MEMORY[0x277CE0880];
  v58 = v103;
  v59 = swift_getWitnessTable();
  v127 = v52;
  v128 = v102;
  v129 = v55;
  v130 = v57;
  v131 = v101;
  v132 = MEMORY[0x277CE1320];
  v60 = swift_getOpaqueTypeConformance2();
  v127 = v52;
  v128 = MEMORY[0x277CE1350];
  v129 = v58;
  v61 = v56;
  v130 = v56;
  v131 = v57;
  v62 = MEMORY[0x277CE1340];
  v132 = MEMORY[0x277CE1340];
  v133 = v59;
  v134 = v60;
  v63 = swift_getOpaqueTypeMetadata2();
  v127 = v52;
  v128 = MEMORY[0x277CE1350];
  v129 = v58;
  v130 = v61;
  v131 = v57;
  v132 = v62;
  v133 = v59;
  v134 = v60;
  v64 = v113;
  v102 = swift_getOpaqueTypeConformance2();
  v103 = v63;
  v65 = sub_24B695958();
  v119 = sub_24B695C78();
  v105 = *(v119 - 8);
  v66 = *(v105 + 64);
  MEMORY[0x28223BE20](v119);
  v104 = &v93 - v67;
  v68 = v114;
  sub_24B64BC54();
  swift_getKeyPath();
  v69 = v108;
  sub_24B696718();

  v70 = v106;

  v72 = v110;
  v71 = v111;
  sub_24B6966D8();
  v73 = v107;
  sub_24B689A78(v107);
  sub_24B64BB2C(v71, &qword_27F02D658, &unk_24B6977E0);
  (*(v112 + 8))(v69, v72);
  if ((*(v70 + 48))(v73, 1, v109) == 1)
  {
    sub_24B64BB2C(v73, &qword_27F02D668, &qword_24B6977F0);
    v74 = v95;
    sub_24B695908();
    swift_getWitnessTable();
    sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
    v75 = v104;
    v76 = v120;
    sub_24B677224(v74, v65, v120);
    (*(v96 + 8))(v74, v76);
  }

  else
  {
    v77 = v115;
    sub_24B68BA8C(v73, v115, type metadata accessor for OnboardingDetail);
    v79 = v98;
    v78 = v99;
    (*(v99 + 16))(v98, v64, v68);
    v80 = v77;
    v81 = v94;
    sub_24B68BA24(v80, v94, type metadata accessor for OnboardingDetail);
    v82 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v83 = (v97 + *(v70 + 80) + v82) & ~*(v70 + 80);
    v84 = swift_allocObject();
    v85 = v118;
    *(v84 + 16) = v117;
    *(v84 + 24) = v85;
    (*(v78 + 32))(v84 + v82, v79, v68);
    sub_24B68BA8C(v81, v84 + v83, type metadata accessor for OnboardingDetail);
    v123 = sub_24B695948();
    v124 = v86;
    v87 = swift_getWitnessTable();
    sub_24B65C908(&v123, v65, v87);

    v121 = v127;
    v122 = v128;
    sub_24B65C908(&v121, v65, v87);
    v121 = v123;
    v122 = v124;
    sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
    v75 = v104;
    sub_24B67712C(&v121, v65);

    sub_24B68B07C(v115, type metadata accessor for OnboardingDetail);
  }

  v88 = swift_getWitnessTable();
  v89 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
  v125 = v88;
  v126 = v89;
  v90 = v119;
  v91 = swift_getWitnessTable();
  sub_24B65C908(v75, v90, v91);
  return (*(v105 + 8))(v75, v90);
}

uint64_t sub_24B679D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v121 = a4;
  v122 = a5;
  v119 = a2;
  v120 = a3;
  v112 = a1;
  v115 = a6;
  v6 = sub_24B695C98();
  v113 = *(v6 - 8);
  v114 = v6;
  v7 = *(v113 + 64);
  MEMORY[0x28223BE20](v6);
  v111 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  v116 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton();
  v10 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v154 = MEMORY[0x277CDF678];
  v117 = MEMORY[0x277CDFAD8];
  v11 = swift_getWitnessTable();
  v128 = v10;
  v129 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130);
  v128 = v9;
  v129 = MEMORY[0x277D837D0];
  v130 = OpaqueTypeMetadata2;
  v131 = v13;
  v132 = MEMORY[0x277D837E0];
  sub_24B696538();
  v128 = v10;
  v129 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v14 = sub_24B6964E8();
  v15 = swift_getWitnessTable();
  v128 = v14;
  v129 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  v18 = sub_24B64E3F8();
  v128 = v116;
  v129 = &type metadata for OnboardingModalityPickerSectionType;
  v130 = v16;
  v131 = v17;
  v132 = v18;
  sub_24B696538();
  v128 = v14;
  v129 = v15;
  v151 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v19 = sub_24B6964E8();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E330, &qword_24B69A110);
  v118 = v20;
  v21 = swift_getWitnessTable();
  v128 = v19;
  v129 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v116 = v22;
  v128 = MEMORY[0x277CE1350];
  v129 = MEMORY[0x277CE1340];
  v23 = swift_getOpaqueTypeConformance2();
  v110 = v23;
  v128 = v19;
  v129 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v128 = v19;
  v129 = v20;
  v130 = v22;
  v131 = v21;
  v132 = v23;
  v133 = v24;
  v108 = MEMORY[0x277CE0E68];
  v109 = v24;
  v107 = swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  sub_24B696938();
  v149 = v122;
  v150 = MEMORY[0x277CE01B0];
  v147 = swift_getWitnessTable();
  v148 = MEMORY[0x277CDF678];
  v25 = swift_getWitnessTable();
  v26 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138);
  v145 = v25;
  v146 = v26;
  v144 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  v27 = sub_24B6959A8();
  v128 = v19;
  v129 = v118;
  v130 = v116;
  v131 = v21;
  v132 = v110;
  v133 = v109;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = swift_getWitnessTable();
  v142 = v28;
  v143 = v29;
  v92[3] = v27;
  v92[2] = swift_getWitnessTable();
  v30 = sub_24B695888();
  v102 = *(v30 - 8);
  v31 = *(v102 + 64);
  MEMORY[0x28223BE20](v30);
  v92[0] = v92 - v32;
  v33 = swift_getWitnessTable();
  v128 = v30;
  v129 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v104 = *(v34 - 8);
  v35 = *(v104 + 64);
  MEMORY[0x28223BE20](v34);
  v101 = v92 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E368, &qword_24B69A140);
  v105 = v34;
  v37 = sub_24B6959A8();
  v107 = *(v37 - 8);
  v38 = *(v107 + 64);
  MEMORY[0x28223BE20](v37);
  v118 = (v92 - v39);
  v40 = sub_24B6959A8();
  v110 = *(v40 - 8);
  v41 = *(v110 + 64);
  MEMORY[0x28223BE20](v40);
  v109 = v92 - v42;
  v116 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E370, &qword_24B69A148);
  v103 = v30;
  v128 = v30;
  v129 = v33;
  v97 = v33;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_24B65C890(&qword_27F02E378, &qword_27F02E368, &qword_24B69A140);
  v92[1] = v43;
  v140 = v43;
  v141 = v44;
  v108 = v37;
  v106 = swift_getWitnessTable();
  v138 = v106;
  v139 = MEMORY[0x277CE0880];
  v45 = swift_getWitnessTable();
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E380, &qword_24B69A150);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E388, &qword_24B69A158);
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
  v49 = sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
  v50 = sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160);
  v128 = v47;
  v129 = v48;
  v130 = v49;
  v131 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v100 = v46;
  v128 = v46;
  v129 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v128 = v40;
  v129 = v116;
  v130 = v45;
  v131 = v52;
  swift_getOpaqueTypeMetadata2();
  v53 = sub_24B6959A8();
  v54 = sub_24B6965B8();
  v128 = v40;
  v129 = v46;
  v130 = v54;
  v131 = v45;
  v132 = v51;
  v133 = MEMORY[0x277CE1320];
  v55 = swift_getOpaqueTypeMetadata2();
  v128 = v40;
  v129 = v116;
  v130 = v45;
  v131 = v52;
  v136 = swift_getOpaqueTypeConformance2();
  v137 = MEMORY[0x277CE0880];
  v56 = swift_getWitnessTable();
  v128 = v40;
  v129 = v100;
  v130 = v54;
  v131 = v45;
  v57 = v111;
  v132 = v51;
  v133 = MEMORY[0x277CE1320];
  v58 = v92[0];
  v59 = swift_getOpaqueTypeConformance2();
  v100 = v40;
  v128 = v40;
  v129 = MEMORY[0x277CE1350];
  v130 = v53;
  v116 = v53;
  v117 = v45;
  v94 = v55;
  v131 = v55;
  v132 = v45;
  v133 = MEMORY[0x277CE1340];
  v134 = v56;
  v95 = v59;
  v96 = v56;
  v135 = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  v98 = *(v60 - 8);
  v99 = v60;
  v61 = *(v98 + 64);
  v62 = MEMORY[0x28223BE20](v60);
  v64 = v92 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v93 = v92 - v65;
  v123 = v121;
  v124 = v122;
  v125 = v119;
  v126 = v120;
  v127 = v112;
  sub_24B695E08();
  sub_24B695898();
  sub_24B695C88();
  LOBYTE(v51) = sub_24B695E08();
  sub_24B695DF8();
  sub_24B695DF8();
  if (sub_24B695DF8() != v51)
  {
    sub_24B695DF8();
  }

  v66 = v101;
  v67 = v103;
  sub_24B6961E8();
  (*(v113 + 8))(v57, v114);
  (*(v102 + 8))(v58, v67);
  v68 = [objc_opt_self() systemBackgroundColor];
  v128 = sub_24B696308();
  sub_24B695E28();
  v69 = v105;
  sub_24B6960A8();

  (*(v104 + 8))(v66, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DD68, &qword_24B69A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B69A0F0;
  v71 = sub_24B695E38();
  *(inited + 32) = v71;
  v72 = sub_24B695E58();
  *(inited + 33) = v72;
  v73 = sub_24B695E78();
  *(inited + 34) = v73;
  sub_24B695E68();
  sub_24B695E68();
  if (sub_24B695E68() != v71)
  {
    sub_24B695E68();
  }

  sub_24B695E68();
  if (sub_24B695E68() != v72)
  {
    sub_24B695E68();
  }

  sub_24B695E68();
  if (sub_24B695E68() != v73)
  {
    sub_24B695E68();
  }

  sub_24B6959B8();
  v75 = v108;
  v74 = v109;
  v76 = v118;
  sub_24B696178();
  (*(v107 + 8))(v76, v75);
  v77 = sub_24B6965D8();
  v118 = v92;
  v78 = MEMORY[0x28223BE20](v77);
  MEMORY[0x28223BE20](v78);
  v79 = swift_checkMetadataState();
  v80 = swift_checkMetadataState();
  v81 = v95;
  v82 = v96;
  v83 = v117;
  v122 = v64;
  v84 = v100;
  v85 = MEMORY[0x277CE1350];
  sub_24B6962D8();
  (*(v110 + 8))(v74, v84);
  v128 = v84;
  v129 = v85;
  v130 = v79;
  v131 = v80;
  v132 = v83;
  v133 = MEMORY[0x277CE1340];
  v134 = v82;
  v135 = v81;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v93;
  v88 = v122;
  v89 = v99;
  sub_24B65C908(v122, v99, v86);
  v90 = *(v98 + 8);
  v90(v88, v89);
  sub_24B65C908(v87, v89, v86);
  return (v90)(v87, v89);
}

uint64_t sub_24B67AE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v90 = a5;
  v89 = a4;
  v94 = a3;
  v92 = a2;
  v93 = a1;
  v87 = a6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E330, &qword_24B69A110);
  v86 = *(v91 - 8);
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v91);
  v85 = v68 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton();
  v9 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v113 = MEMORY[0x277CDF678];
  v84 = MEMORY[0x277CDFAD8];
  v10 = swift_getWitnessTable();
  v104 = v9;
  v105 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130);
  v104 = v8;
  v105 = MEMORY[0x277D837D0];
  v106 = OpaqueTypeMetadata2;
  v107 = v12;
  v108 = MEMORY[0x277D837E0];
  sub_24B696538();
  v104 = v9;
  v105 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v13 = sub_24B6964E8();
  v14 = swift_getWitnessTable();
  v104 = v13;
  v105 = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  v17 = sub_24B64E3F8();
  v104 = v83;
  v105 = &type metadata for OnboardingModalityPickerSectionType;
  v106 = v15;
  v107 = v16;
  v108 = v17;
  sub_24B696538();
  v104 = v13;
  v105 = v14;
  v110 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  v18 = sub_24B696688();
  v19 = swift_getWitnessTable();
  v77 = v18;
  v75 = v19;
  v20 = sub_24B6964E8();
  v82 = *(v20 - 8);
  v21 = *(v82 + 64);
  MEMORY[0x28223BE20](v20);
  v81 = v68 - v22;
  v23 = swift_getWitnessTable();
  v104 = v20;
  v105 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v104 = MEMORY[0x277CE1350];
  v105 = MEMORY[0x277CE1340];
  v25 = swift_getOpaqueTypeConformance2();
  v104 = v20;
  v105 = v23;
  v26 = swift_getOpaqueTypeConformance2();
  v78 = v20;
  v104 = v20;
  v105 = v91;
  v74 = v24;
  v106 = v24;
  v107 = v23;
  v83 = v23;
  v80 = v25;
  v108 = v25;
  v109 = v26;
  v76 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v79 = *(v27 - 8);
  v28 = *(v79 + 64);
  MEMORY[0x28223BE20](v27);
  v88 = v68 - v29;
  v30 = v89;
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  v31 = sub_24B696938();
  v32 = v90;
  v102 = v90;
  v103 = MEMORY[0x277CE01B0];
  v100 = swift_getWitnessTable();
  v101 = MEMORY[0x277CDF678];
  v33 = swift_getWitnessTable();
  v34 = sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138);
  v98 = v33;
  v99 = v34;
  v97 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v73 = v31;
  v68[0] = v35;
  v36 = sub_24B695C48();
  v84 = v27;
  v68[1] = v36;
  v72 = sub_24B6959A8();
  v71 = *(v72 - 8);
  v37 = *(v71 + 64);
  v38 = MEMORY[0x28223BE20](v72);
  v69 = v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v70 = v68 - v40;
  if (sub_24B6965C8())
  {
    v41 = sub_24B695BE8();
  }

  else
  {
    v41 = sub_24B695BD8();
  }

  MEMORY[0x28223BE20](v41);
  v68[-6] = v30;
  v68[-5] = v32;
  v42 = v92;
  v68[-4] = v93;
  v68[-3] = v42;
  v43 = v81;
  sub_24B6964D8();
  sub_24B6965D8();
  v44 = v85;
  v45 = sub_24B695B68();
  MEMORY[0x28223BE20](v45);
  v67 = v32;
  v46 = swift_checkMetadataState();
  v47 = v76;
  v66 = v76;
  v48 = v78;
  v49 = v91;
  v50 = v83;
  v51 = v80;
  sub_24B6962E8();
  (*(v86 + 8))(v44, v49);
  (*(v82 + 8))(v43, v48);
  v52 = sub_24B696628();
  MEMORY[0x28223BE20](v52);
  v53 = v90;
  v68[-6] = v89;
  v68[-5] = v53;
  v55 = v93;
  v54 = v94;
  v68[-4] = v92;
  v68[-3] = v55;
  v66 = v54;
  v104 = v48;
  v105 = v49;
  v106 = v46;
  v107 = v50;
  v108 = v51;
  v109 = v47;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v69;
  v58 = v84;
  v59 = v88;
  sub_24B696098();
  (*(v79 + 8))(v59, v58);
  v60 = swift_getWitnessTable();
  v95 = v56;
  v96 = v60;
  v61 = v72;
  v62 = swift_getWitnessTable();
  v63 = v70;
  sub_24B65C908(v57, v61, v62);
  v64 = *(v71 + 8);
  v64(v57, v61);
  sub_24B65C908(v63, v61, v62);
  return (v64)(v63, v61);
}

uint64_t sub_24B67B9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a4;
  v45 = a5;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v50 = a6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton();
  sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v81 = MEMORY[0x277CDF678];
  v49 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130);
  sub_24B696538();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v6 = sub_24B6964E8();
  v43 = MEMORY[0x277CE1198];
  v7 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  v75 = sub_24B64E3F8();
  v35[2] = sub_24B696538();
  v71 = v6;
  v72 = v7;
  v78 = swift_getOpaqueTypeConformance2();
  v35[1] = swift_getWitnessTable();
  v8 = sub_24B6964E8();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v35[0] = v35 - v10;
  v40 = sub_24B6959A8();
  v42 = *(v40 - 8);
  v11 = *(v42 + 64);
  v12 = MEMORY[0x28223BE20](v40);
  v36 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v38 = v35 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E338, &qword_24B69A118);
  v52 = *(v39 - 8);
  v15 = *(v52 + 64);
  v16 = MEMORY[0x28223BE20](v39);
  v37 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = v35 - v18;
  sub_24B6965D8();
  v20 = v44;
  v19 = v45;
  v62 = v44;
  v63 = v45;
  v21 = v46;
  v64 = v46;
  v65 = v47;
  v57 = v44;
  v58 = v45;
  v59 = v46;
  v60 = v47;
  v22 = v48;
  v61 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E5D8, &qword_24B69A438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E5E0, &qword_24B69A440);
  sub_24B68B178();
  sub_24B68B230();
  sub_24B6965E8();
  sub_24B695BE8();
  v53 = v20;
  v54 = v19;
  v55 = v21;
  v56 = v22;
  v23 = v35[0];
  sub_24B6964D8();
  type metadata accessor for OnboardingModalityPickerView();
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v70[0] = v76;
  v70[1] = v77;
  v24 = swift_getWitnessTable();
  v25 = v36;
  sub_24B66BE00(v70, v8, v24);
  (*(v41 + 8))(v23, v8);
  v68 = v24;
  v69 = MEMORY[0x277CDF918];
  v26 = v40;
  v27 = swift_getWitnessTable();
  v28 = v38;
  sub_24B65C908(v25, v26, v27);
  v29 = v42;
  v30 = *(v42 + 8);
  v30(v25, v26);
  v31 = v37;
  v32 = v39;
  (*(v52 + 16))(v37, v51, v39);
  v71 = v31;
  (*(v29 + 16))(v25, v28, v26);
  v72 = v25;
  *&v70[0] = v32;
  *(&v70[0] + 1) = v26;
  v66 = sub_24B68B2F4();
  v67 = v27;
  sub_24B66D504(&v71, 2uLL, v70);
  v30(v28, v26);
  v33 = *(v52 + 8);
  v33(v51, v32);
  v30(v25, v26);
  return (v33)(v31, v32);
}

uint64_t sub_24B67C170@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OnboardingModalityPickerView();
  sub_24B67C264(v2, a1);
  v3 = sub_24B695E38();
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B695818();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E5D8, &qword_24B69A438);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_24B67C264@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24B695BE8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E6A0, &qword_24B69A5C8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  return sub_24B68259C(v2, a2 + *(v5 + 44));
}

uint64_t sub_24B67C2C4@<X0>(uint64_t a1@<X8>)
{
  sub_24B695928();
  v2 = type metadata accessor for OnboardingModalityPickerView();
  sub_24B67C3CC(v2, a1);
  v3 = sub_24B695E38();
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B695818();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E5E0, &qword_24B69A440);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_24B67C3CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24B695BD8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02E658, &qword_24B69A508);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  return sub_24B682F70(v2, a2 + *(v5 + 44));
}

uint64_t sub_24B67C43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a2;
  v69 = a5;
  v61 = a1;
  v7 = sub_24B695938();
  v65 = *(v7 - 8);
  v66 = v7;
  v67 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v64 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a3;
  v60 = a4;
  v70 = type metadata accessor for OnboardingModalityPickerView();
  v62 = *(v70 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v70);
  v58 = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v53 = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton();
  v12 = sub_24B6959A8();
  WitnessTable = swift_getWitnessTable();
  v80 = MEMORY[0x277CDF678];
  v13 = swift_getWitnessTable();
  v74 = v12;
  v75 = v13;
  v14 = MEMORY[0x277D7EDA0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130);
  v74 = v11;
  v75 = MEMORY[0x277D837D0];
  v76 = OpaqueTypeMetadata2;
  v77 = v16;
  v78 = MEMORY[0x277D837E0];
  sub_24B696538();
  v74 = v12;
  v75 = v13;
  v52 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = MEMORY[0x277CE1290];
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v17 = sub_24B6964E8();
  v55 = v17;
  v54 = swift_getWitnessTable();
  v74 = v17;
  v75 = v54;
  v18 = swift_getOpaqueTypeMetadata2();
  v50 = v18;
  v19 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  v49 = v19;
  v48 = sub_24B64E3F8();
  v74 = v10;
  v75 = &type metadata for OnboardingModalityPickerSectionType;
  v76 = v18;
  v77 = v19;
  v78 = v48;
  v51 = sub_24B696538();
  v56 = *(v51 - 8);
  v20 = *(v56 + 64);
  v21 = MEMORY[0x28223BE20](v51);
  v46 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v47 = v45 - v23;
  v24 = v70;
  v25 = v61;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v26 = sub_24B68B38C(v74);

  v72 = v26;
  v45[1] = swift_getKeyPath();
  v27 = v62;
  v28 = v58;
  (*(v62 + 16))(v58, v25, v24);
  v30 = v64;
  v29 = v65;
  v31 = v66;
  (*(v65 + 16))(v64, v68, v66);
  v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v33 = (v63 + *(v29 + 80) + v32) & ~*(v29 + 80);
  v34 = swift_allocObject();
  v35 = v59;
  v36 = v60;
  *(v34 + 16) = v59;
  *(v34 + 24) = v36;
  (*(v27 + 32))(v34 + v32, v28, v70);
  (*(v29 + 32))(v34 + v33, v30, v31);
  v37 = swift_allocObject();
  v37[2] = v35;
  v37[3] = v36;
  v37[4] = sub_24B68B544;
  v37[5] = v34;
  v74 = v55;
  v75 = v54;
  v44 = swift_getOpaqueTypeConformance2();
  v38 = v46;
  sub_24B696528();
  v71 = v44;
  v39 = v51;
  v40 = swift_getWitnessTable();
  v41 = v47;
  sub_24B65C908(v38, v39, v40);
  v42 = *(v56 + 8);
  v42(v38, v39);
  sub_24B65C908(v41, v39, v40);
  return (v42)(v41, v39);
}