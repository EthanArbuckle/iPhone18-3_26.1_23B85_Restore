uint64_t type metadata accessor for SocialOnboardingProfileCreationPageView()
{
  result = qword_280E2D878;
  if (!qword_280E2D878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2167CD8D8()
{
  result = qword_280E4A4A0;
  if (!qword_280E4A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E4A4A0);
  }

  return result;
}

void sub_2167CD92C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_216683A80(a2, &v11 - v7, &qword_27CAB7A20);
  v9 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_216699778(v8, &qword_27CAB7A20);
  }

  else
  {
    sub_21700DF14();
    sub_2167D2978(v8, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
  }

  v10 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  type metadata accessor for SocialProfileUpdater(0);
  swift_allocObject();

  sub_216AFBA30();
}

uint64_t sub_2167CDAE4@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = type metadata accessor for SocialOnboardingProfileCreationPageView();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2167D1CFC(v1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SocialOnboardingProfileCreationPageView);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  result = sub_2167D1D58(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *a1 = sub_2167D1DBC;
  a1[1] = v10;
  return result;
}

uint64_t sub_2167CDBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v55 = a3;
  v49 = sub_217008A64();
  v4 = *(v49 - 8);
  v48 = *(v4 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A48);
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  MEMORY[0x28223BE20](v6);
  v45 = v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A50);
  v10 = *(v9 - 8);
  v53 = v9;
  v54 = v10;
  MEMORY[0x28223BE20](v9);
  v47 = v43 - v11;
  v44 = sub_217009C64();
  v57 = a2;
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A58);
  v43[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A60);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A68);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A70);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A78);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A80);
  v16 = sub_2167D250C(&unk_27CAB7A88);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AB0);
  v18 = sub_2167D2D50(&unk_27CAB7AB8);
  v58 = v17;
  v59 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v14;
  v59 = v15;
  *&v60 = v16;
  *(&v60 + 1) = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v58 = v13;
  v59 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v58 = v12;
  v59 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v58 = v43[0];
  v59 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v45;
  sub_217008054();
  v24 = *(a2 + 48);
  v25 = *(a2 + 72);
  v58 = *(a2 + 40);
  LOBYTE(v59) = v24;
  v60 = *(a2 + 56);
  LOBYTE(v61) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AC0);
  sub_217007F44();
  v58 = v63;
  LOBYTE(v59) = v64;
  v26 = v46;
  v27 = v49;
  (*(v4 + 16))(v46, v50, v49);
  v28 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v29 = swift_allocObject();
  (*(v4 + 32))(v29 + v28, v26, v27);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0);
  v31 = sub_2167D2D50(&unk_27CAB7AC8);
  v32 = sub_2167D1F74(&unk_27CAB7AD0);
  v33 = v47;
  v34 = v51;
  sub_21700AB04();

  (*(v52 + 8))(v23, v34);
  v56 = a2;
  sub_2170093B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AD8);
  v58 = v34;
  v59 = v30;
  *&v60 = v31;
  *(&v60 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AE0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AE8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AF0);
  v38 = sub_2167D1FE4();
  v58 = MEMORY[0x277CE1350];
  v59 = MEMORY[0x277CE1340];
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_2167D209C();
  v58 = v35;
  v59 = v36;
  *&v60 = v37;
  *(&v60 + 1) = v38;
  v61 = v39;
  v62 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v53;
  sub_21700A444();
  return (*(v54 + 8))(v33, v41);
}

uint64_t sub_2167CE304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46[1] = a1;
  v60 = a2;
  v61 = sub_217008214();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_217009124();
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v50 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A78);
  MEMORY[0x28223BE20](v5);
  v7 = v46 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A70);
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = v46 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A68);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = v46 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A60);
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v48 = v46 - v11;
  *v7 = sub_2170093C4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C28);
  sub_2167CE9A8(a1, &v7[*(v12 + 44)]);
  v13 = sub_217009C94();
  sub_217007F24();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A98) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = sub_217009C74();
  sub_217007F24();
  v24 = &v7[*(v5 + 36)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A80);
  v30 = sub_2167D250C(&unk_27CAB7A88);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AB0);
  v32 = sub_2167D2D50(&unk_27CAB7AB8);
  v62 = v31;
  v63 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21700AAD4();
  sub_216699778(v7, &qword_27CAB7A78);
  v34 = v53;
  v35 = v50;
  v36 = v56;
  (*(v53 + 104))(v50, *MEMORY[0x277CDDDC8], v56);
  v62 = v5;
  v63 = v29;
  v64 = v30;
  v65 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v47;
  v39 = v49;
  sub_21700A904();
  (*(v34 + 8))(v35, v36);
  (*(v51 + 8))(v9, v39);
  sub_2167CF91C();
  v62 = v39;
  v63 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v48;
  v42 = v52;
  sub_21700A8F4();
  (*(v54 + 8))(v38, v42);
  v43 = v58;
  sub_217008204();
  v62 = v42;
  v63 = v40;
  swift_getOpaqueTypeConformance2();
  v44 = v55;
  sub_21700A454();
  (*(v59 + 8))(v43, v61);
  return (*(v57 + 8))(v41, v44);
}

uint64_t sub_2167CE9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C58);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v67 - v3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C60);
  v83 = *(v84 - 8);
  v4 = MEMORY[0x28223BE20](v84);
  v82 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v67 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v73 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v9 = &v67 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C68);
  MEMORY[0x28223BE20](v71);
  v11 = &v67 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C70);
  v12 = MEMORY[0x28223BE20](v72);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - v17;
  v75 = type metadata accessor for SocialOnboardingProfileCreationPageView();
  v19 = *(v75 + 44);
  v76 = a1;
  v20 = (a1 + v19);
  v21 = v20[1];
  v81 = v7;
  if (v21)
  {
    v22 = *v20;
    v23 = v21;
  }

  else
  {
    *&v22 = COERCE_DOUBLE(sub_216983738(137));
    v23 = v24;
  }

  sub_21700DF14();
  v25 = sub_217009D34();
  KeyPath = swift_getKeyPath();
  v95 = *&v22;
  v96 = v23;
  v97 = 0;
  v98 = MEMORY[0x277D84F90];
  v99 = KeyPath;
  v100 = v25;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();

  v27 = swift_getKeyPath();
  (*(*&v73 + 32))(v11, v9, v74);
  v28 = &v11[*(v71 + 36)];
  *v28 = v27;
  *(v28 + 1) = 0;
  v28[16] = 1;
  LOBYTE(v27) = sub_217009CA4();
  sub_217007F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_2167C5834(v11, v16, &qword_27CAB7C68);
  v37 = &v16[*(v72 + 36)];
  *v37 = v27;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v74 = v18;
  sub_2167C5834(v16, v18, &qword_27CAB7C70);
  v38 = v76;
  v39 = *(v76 + 32);
  LOBYTE(v90) = *(v76 + 24);
  v91 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AED4();
  v41 = v95;
  v40 = v96;
  v42 = v97;
  type metadata accessor for SocialProfileUpdater(0);
  sub_2167D29D0(&qword_280E3B500);
  v43 = sub_217008CF4();
  v45 = v44;
  v46 = sub_2170081B4();
  v47 = sub_217007D54();
  v95 = v41;
  v96 = v40;
  LOBYTE(v97) = v42;
  v98 = v43;
  v99 = v45;
  v100 = v47;
  v101 = v46;
  v73 = *(v38 + 40);
  LODWORD(v72) = *(v38 + 48);
  v71 = *(v38 + 56);
  v70 = *(v38 + 64);
  v69 = *(v38 + 72);
  v90 = *&v73;
  LOBYTE(v91) = v72;
  v92 = v71;
  v93 = v70;
  v94 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AC0);
  sub_217007F64();
  v90 = v86;
  v91 = v87;
  v92 = v88;
  LOBYTE(v93) = v89;
  v86 = 0;
  LOBYTE(v87) = 0;
  *&v68 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C80));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0);
  v49 = sub_2167D2AFC();
  v50 = sub_2167D1F74(&unk_280E29D98);
  v51 = v78;
  sub_21700AA74();

  v95 = v73;
  LOBYTE(v96) = v72;
  v97 = v71;
  v98 = v70;
  LOBYTE(v99) = v69;
  sub_217007F64();
  v86 = 1;
  LOBYTE(v87) = 0;
  v95 = *&v68;
  v96 = v48;
  v97 = v49;
  v98 = v50;
  swift_getOpaqueTypeConformance2();
  v52 = v81;
  v53 = v80;
  sub_21700AA74();

  (*(v79 + 8))(v51, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  v54 = v95;
  if (qword_27CAB58C0 != -1)
  {
    swift_once();
  }

  v55 = v54 + *&qword_27CAB7A18 + 50.0;
  v56 = v74;
  v57 = v77;
  sub_216683A80(v74, v77, &qword_27CAB7C70);
  v58 = v83;
  v59 = *(v83 + 16);
  v60 = v82;
  v61 = v84;
  v59(v82, v52, v84);
  v62 = v85;
  sub_216683A80(v57, v85, &qword_27CAB7C70);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7CA8);
  v59((v62 + *(v63 + 48)), v60, v61);
  v64 = v62 + *(v63 + 64);
  *v64 = v55;
  *(v64 + 8) = 0;
  v65 = *(v58 + 8);
  v65(v52, v61);
  sub_216699778(v56, &qword_27CAB7C70);
  v65(v60, v61);
  return sub_216699778(v57, &qword_27CAB7C70);
}

uint64_t sub_2167CF348()
{
  v0 = sub_217009684();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AB0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_217009634();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C30);
  sub_2167D2D50(&unk_27CAB7C38);
  sub_2170081F4();
  v5 = sub_2167D2D50(&unk_27CAB7AB8);
  MEMORY[0x21CE9A570](v4, v1, v5);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2167CF528@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DismissModalPresentationAction();
  a1[3] = v2;
  a1[4] = sub_2167D29D0(qword_280E30D30);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21700D234();
  v4 = boxed_opaque_existential_1 + *(v2 + 20);
  *v4 = 0;
  v4[8] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C30);
  v6 = v5[11];
  v7 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
  v8 = v5[12];
  *(a1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v9 = a1 + v5[13];
  result = swift_getKeyPath();
  *v9 = result;
  v9[40] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = sub_2167CF664;
  a1[6] = 0;
  return result;
}

uint64_t sub_2167CF664@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C40);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - v3;
  v5 = sub_216983738(178);
  v7 = v6;
  v8 = sub_21700AC54();
  KeyPath = swift_getKeyPath();
  v14 = v5;
  v15 = v7;
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v18 = KeyPath;
  v19 = v8;
  sub_217009DE4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8);
  v11 = sub_2167D2750();
  sub_21700A304();

  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C48);
  v14 = v10;
  v15 = v11;
  swift_getOpaqueTypeConformance2();
  sub_2167D2A34();
  sub_21700AB44();
  return (*(v2 + 8))(v4, v1);
}

double sub_2167CF86C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217009C84();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C40);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C48) + 36);
  *v6 = v4;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  return result;
}

uint64_t sub_2167CF91C()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SocialOnboardingProfileCreationPageView() + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_21700ED94();
    v7 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2167CFA74()
{
  sub_21700B3F4();
  sub_217008564();
}

uint64_t sub_2167CFAEC()
{
  sub_21700B544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0);
  sub_2167D1F74(&unk_280E29D98);
  return sub_217008A54();
}

uint64_t sub_2167CFBA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AE0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  *v8 = sub_2170093B4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B28);
  sub_2167CFE00(a1, &v8[*(v9 + 44)]);
  LOBYTE(a1) = sub_217009C74();
  sub_217007F24();
  v10 = &v8[*(v6 + 36)];
  *v10 = a1;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  sub_21700B314();
  v15 = MEMORY[0x277CE1340];
  v16 = MEMORY[0x277CE1350];
  sub_2170092A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AF0);
  sub_2167D1FE4();
  v18[0] = v16;
  v18[1] = v15;
  swift_getOpaqueTypeConformance2();
  sub_2167D209C();
  sub_21700AB44();
  (*(v3 + 8))(v5, v2);
  return sub_216699778(v8, &qword_27CAB7AE0);
}

uint64_t sub_2167CFE00@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for SocialOnboardingProfileCreationPageView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B30);
  MEMORY[0x28223BE20](v7);
  v9 = &v58[-v8];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B38);
  MEMORY[0x28223BE20](v61);
  v64 = &v58[-v10];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B40);
  MEMORY[0x28223BE20](v62);
  v65 = &v58[-v11];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B48);
  v12 = MEMORY[0x28223BE20](v63);
  v67 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v60 = &v58[-v15];
  MEMORY[0x28223BE20](v14);
  v66 = &v58[-v16];
  sub_21700B3B4();
  sub_217008BB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  memcpy(v70, v69, 0x70uLL);
  v59 = sub_217009C94();
  sub_217007F24();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v70[160] = 0;
  sub_2167D0548(v9);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B50);
  v26 = v25[11];
  v27 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v9 + v26, 1, 1, v27);
  sub_2167D1CFC(a1, v6, type metadata accessor for SocialOnboardingProfileCreationPageView);
  v28 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v29 = swift_allocObject();
  sub_2167D1D58(v6, v29 + v28);
  v30 = v25[12];
  *(v9 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v31 = v9 + v25[13];
  *v31 = swift_getKeyPath();
  v31[40] = 0;
  v9[5] = sub_2167D23B4;
  v9[6] = v29;
  v9[7] = 0;
  v9[8] = 0;
  if (qword_27CAB58C0 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  v32 = 1;
  sub_2170083C4();
  v33 = (v9 + *(v7 + 36));
  v34 = v72;
  *v33 = v71;
  v33[1] = v34;
  v33[2] = v73;
  type metadata accessor for SocialProfileUpdater(0);
  sub_2167D29D0(&qword_280E3B500);
  sub_2170081B4();
  v35 = sub_216AFF270();

  if (v35)
  {
    sub_2170081B4();
    v32 = sub_216AFF2F0();
  }

  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v32 & 1;
  v38 = v64;
  sub_2167C5834(v9, v64, &qword_27CAB7B30);
  v39 = &v38[*(v61 + 36)];
  *v39 = KeyPath;
  v39[1] = sub_2167D2420;
  v39[2] = v37;
  LOBYTE(KeyPath) = sub_217009CA4();
  sub_217007F24();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v65;
  sub_2167C5834(v38, v65, &qword_27CAB7B38);
  v49 = &v48[*(v62 + 36)];
  *v49 = KeyPath;
  *(v49 + 1) = v41;
  *(v49 + 2) = v43;
  *(v49 + 3) = v45;
  *(v49 + 4) = v47;
  v49[40] = 0;
  v50 = swift_getKeyPath();
  v51 = v60;
  sub_2167C5834(v48, v60, &qword_27CAB7B40);
  v52 = &v51[*(v63 + 36)];
  *v52 = v50;
  v52[8] = 0;
  v53 = v66;
  sub_2167C5834(v51, v66, &qword_27CAB7B48);
  v54 = v67;
  sub_216683A80(v53, v67, &qword_27CAB7B48);
  v55 = v68;
  memcpy(v68, v70, 0xA0uLL);
  v55[160] = v59;
  *(v55 + 21) = v18;
  *(v55 + 22) = v20;
  *(v55 + 23) = v22;
  *(v55 + 24) = v24;
  v55[200] = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B58);
  sub_216683A80(v54, &v55[*(v56 + 48)], &qword_27CAB7B48);
  sub_216699778(v53, &qword_27CAB7B48);
  return sub_216699778(v54, &qword_27CAB7B48);
}

uint64_t sub_2167D0548@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21700D284();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for SocialOnboardingProfileCreationPageView();
  sub_216683A80(v1 + *(v13 + 40), v12, &qword_27CAB7A30);
  v14 = type metadata accessor for LinkComponentModel();
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    sub_216699778(v12, &qword_27CAB7A30);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  else
  {
    sub_216683A80(&v12[*(v14 + 24)], &v33, &qword_27CAB6DB0);
    sub_2167D2978(v12, type metadata accessor for LinkComponentModel);
    if (*(&v34 + 1))
    {
      sub_2166A0F18(&v33, v36);
      sub_21700D234();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_217013D90;
      sub_21700D234();
      v32 = v9;
      type metadata accessor for SocialProfileUpdater(0);
      sub_2167D29D0(&qword_280E3B500);
      v31 = v3;
      sub_2170081B4();
      v16 = sub_216AFF340();
      v29 = v17;
      v30 = v16;

      v18 = sub_2170081B4();
      v19 = type metadata accessor for CheckSocialHandleAvailabilityAction();
      *(v15 + 56) = v19;
      *(v15 + 64) = sub_2167D29D0(&qword_27CAB7C20);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v15 + 32));
      (*(v4 + 32))(boxed_opaque_existential_1, v7, v31);
      v21 = (boxed_opaque_existential_1 + *(v19 + 20));
      v22 = v29;
      *v21 = v30;
      v21[1] = v22;
      *(boxed_opaque_existential_1 + *(v19 + 24)) = v18;
      sub_2167B7D58(v36, v15 + 72);
      v23 = sub_21700D3B4();
      v24 = MEMORY[0x277D21D10];
      a1[3] = v23;
      a1[4] = v24;
      __swift_allocate_boxed_opaque_existential_1(a1);
      sub_21700D394();
      return __swift_destroy_boxed_opaque_existential_1Tm(v36);
    }
  }

  sub_216699778(&v33, &qword_27CAB6DB0);
  v26 = type metadata accessor for DismissModalPresentationAction();
  a1[3] = v26;
  a1[4] = sub_2167D29D0(qword_280E30D30);
  v27 = __swift_allocate_boxed_opaque_existential_1(a1);
  result = sub_21700D234();
  v28 = v27 + *(v26 + 20);
  *v28 = 0;
  v28[8] = 1;
  return result;
}

double sub_2167D0968@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B68);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B70);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B78);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B80);
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v18 = &v26 - v17;
  sub_2167D0E00(a1, v5);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v5, v9, &qword_27CAB7B60);
  memcpy(&v9[*(v7 + 44)], __src, 0x70uLL);
  LOBYTE(a1) = sub_217009C84();
  sub_2167C5834(v9, v13, &qword_27CAB7B68);
  v19 = &v13[*(v11 + 44)];
  *v19 = a1;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = sub_21700AC54();
  LOBYTE(v7) = sub_217009C84();
  sub_2167C5834(v13, v16, &qword_27CAB7B70);
  v21 = &v16[*(v14 + 36)];
  *v21 = v20;
  v21[8] = v7;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B90);
  sub_2167D2428();
  sub_2167D2808();
  sub_2167D28C0();
  sub_21700AB34();
  sub_216699778(v16, &qword_27CAB7B78);
  if (qword_27CAB58C0 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v22 = v28;
  (*(v26 + 32))(v28, v18, v27);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C10) + 36));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  result = v32[0];
  v23[2] = *v32;
  return result;
}

uint64_t sub_2167D0E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C18);
  MEMORY[0x28223BE20](v6);
  v8 = (v24 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0);
  v24[0] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  type metadata accessor for SocialProfileUpdater(0);
  sub_2167D29D0(&qword_280E3B500);
  sub_2170081B4();
  v12 = sub_216AFF2F0();

  if (v12)
  {
    sub_217008294();
    v13 = v24[0];
    (*(v24[0] + 16))(v8, v11, v9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8);
    sub_2167D2D50(&unk_27CAB7BC8);
    sub_2167D2750();
    sub_217009554();
    return (*(v13 + 8))(v11, v9);
  }

  v15 = type metadata accessor for SocialOnboardingProfileCreationPageView();
  sub_216683A80(a1 + *(v15 + 40), v5, &qword_27CAB7A30);
  v16 = type metadata accessor for LinkComponentModel();
  if (__swift_getEnumTagSinglePayload(v5, 1, v16) == 1)
  {
    sub_216699778(v5, &qword_27CAB7A30);
LABEL_6:
    v18 = sub_216983738(168);
    v19 = v20;

    goto LABEL_7;
  }

  v17 = &v5[*(v16 + 28)];
  v18 = *v17;
  v19 = v17[1];
  sub_21700DF14();
  sub_2167D2978(v5, type metadata accessor for LinkComponentModel);
  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_7:
  v21 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  *v8 = v18;
  v8[1] = v19;
  v23 = MEMORY[0x277D84F90];
  v8[2] = 0;
  v8[3] = v23;
  v8[4] = KeyPath;
  v8[5] = v21;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8);
  sub_2167D2D50(&unk_27CAB7BC8);
  sub_2167D2750();
  return sub_217009554();
}

uint64_t sub_2167D120C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B88) + 36);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_217009294();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C00) + 36)) = 256;
  return sub_216683A80(a1, a2, &qword_27CAB7B78);
}

uint64_t sub_2167D12D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B90) + 36));
  v5 = *(sub_217008B44() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_217009294();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)] = 256;
  return sub_216683A80(a1, a2, &qword_27CAB7B78);
}

uint64_t sub_2167D13C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AF0) + 36);
  sub_21700B2E4();
  v5 = sub_217009C84();
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20) + 36)) = v5;
  return sub_216683A80(a1, a2, &qword_27CAB7AE0);
}

uint64_t sub_2167D1450()
{
  sub_2167D18AC();
  sub_217009104();
  return v1;
}

uint64_t sub_2167D148C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2167D1450();
  *a1 = result & 1;
  return result;
}

void sub_2167D14E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20);
  OUTLINED_FUNCTION_36(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_2167CD92C(v3, v4);
}

uint64_t sub_2167D1590@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2167D15BC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27CAB5C98 != -1)
  {
    swift_once();
  }

  KeyPath = swift_getKeyPath();

  result = sub_2170083D4();
  *a1 = KeyPath;
  a1[1] = result;
  return result;
}

uint64_t sub_2167D1660()
{
  v0 = objc_opt_self();
  v1 = sub_21700E4D4();
  v2 = [v0 linkWithBundleIdentifier_];

  if (v2)
  {
    return v2;
  }

  result = sub_21700F584();
  __break(1u);
  return result;
}

uint64_t sub_2167D1784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2167D2DA0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2167D17E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2167D2DA0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2167D184C()
{
  sub_2167D2DA0();
  sub_217009AF4();
  __break(1u);
}

uint64_t sub_2167D1874()
{
  result = sub_21700B304();
  v1 = 50.0;
  if (result)
  {
    v1 = 48.0;
  }

  qword_27CAB7A18 = *&v1;
  return result;
}

unint64_t sub_2167D18AC()
{
  result = qword_280E2AC50;
  if (!qword_280E2AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AC50);
  }

  return result;
}

void sub_2167D1938()
{
  sub_2167D1B08();
  if (v0 <= 0x3F)
  {
    sub_2166B37C8(319, &qword_280E2A590, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2167D1B9C();
      if (v2 <= 0x3F)
      {
        sub_2167D1C30();
        if (v3 <= 0x3F)
        {
          sub_2166B37C8(319, &qword_280E2B438, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2167D1C8C(319, qword_280E2D5A0, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
            if (v5 <= 0x3F)
            {
              sub_2167D1C8C(319, &qword_280E3EC00, type metadata accessor for LinkComponentModel);
              if (v6 <= 0x3F)
              {
                sub_2166B37C8(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ObjectGraph();
                  if (v8 <= 0x3F)
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

void sub_2167D1B08()
{
  if (!qword_280E2B3E8)
  {
    type metadata accessor for SocialProfileUpdater(255);
    sub_2167D29D0(&qword_280E3B500);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B3E8);
    }
  }
}

void sub_2167D1B9C()
{
  if (!qword_280E2B4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD7C0);
    sub_2167D1F74(&unk_280E29D98);
    v0 = sub_217007FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B4E0);
    }
  }
}

void sub_2167D1C30()
{
  if (!qword_280E2B378)
  {
    sub_2167CD8D8();
    v0 = sub_2170082D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B378);
    }
  }
}

void sub_2167D1C8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2167D1CFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2167D1D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialOnboardingProfileCreationPageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167D1DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SocialOnboardingProfileCreationPageView();
  OUTLINED_FUNCTION_36(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_2167CDBE4(a1, v7, a2);
}

unint64_t sub_2167D1E40()
{
  result = qword_27CAB7A90;
  if (!qword_27CAB7A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A98);
    sub_2167D2D50(&unk_27CAB7AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7A90);
  }

  return result;
}

uint64_t sub_2167D1EF8()
{
  v0 = sub_217008A64();
  OUTLINED_FUNCTION_36(v0);

  return sub_2167CFA74();
}

unint64_t sub_2167D1F74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD7C0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2167D1FE4()
{
  result = qword_27CAB7AF8;
  if (!qword_27CAB7AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AE0);
    sub_2167D2D50(&unk_27CAB7B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7AF8);
  }

  return result;
}

unint64_t sub_2167D209C()
{
  result = qword_27CAB7B10;
  if (!qword_27CAB7B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AF0);
    sub_2167D1FE4();
    sub_2167D2D50(&qword_27CAB7B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7B10);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v2 = type metadata accessor for SocialOnboardingProfileCreationPageView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80));
  sub_2166B8588();

  v4 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v3 + v4);
  sub_216684F5C(*(v3 + v2[8]), *(v3 + v2[8] + 8));
  v6 = v3 + v2[9];
  v7 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup();
  if (!OUTLINED_FUNCTION_9_1(v7))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v6 + 16);
    v8 = *(v1 + 24);
    v9 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(v6 + v8, 1, v9))
    {
      OUTLINED_FUNCTION_50();
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  v11 = v3 + v2[10];
  v12 = type metadata accessor for LinkComponentModel();
  if (!OUTLINED_FUNCTION_9_1(v12))
  {
    v13 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(v11, 1, v13))
    {
      OUTLINED_FUNCTION_50();
      (*(v14 + 8))(v11, v13);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v11 + *(v1 + 20));
    v15 = v11 + *(v1 + 24);
    if (*(v15 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }
  }

  return swift_deallocObject();
}

double sub_2167D23B4@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SocialOnboardingProfileCreationPageView();
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2167D0968(v5, a1);
}

unint64_t sub_2167D2428()
{
  result = qword_27CAB7B98;
  if (!qword_27CAB7B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7B78);
    sub_2167D250C(&unk_27CAB7BA0);
    sub_2167D2D50(&qword_280E2A840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7B98);
  }

  return result;
}

unint64_t sub_2167D250C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2167D2588()
{
  result = qword_27CAB7BA8;
  if (!qword_27CAB7BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7B68);
    sub_2167D2614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7BA8);
  }

  return result;
}

unint64_t sub_2167D2614()
{
  result = qword_27CAB7BB0;
  if (!qword_27CAB7BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7B60);
    sub_2167D2698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7BB0);
  }

  return result;
}

unint64_t sub_2167D2698()
{
  result = qword_27CAB7BB8;
  if (!qword_27CAB7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BC0);
    sub_2167D2D50(&unk_27CAB7BC8);
    sub_2167D2750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7BB8);
  }

  return result;
}

unint64_t sub_2167D2750()
{
  result = qword_280E2B1D8;
  if (!qword_280E2B1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BD8);
    sub_2167C4D74();
    sub_2167D2D50(&qword_280E2A718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1D8);
  }

  return result;
}

unint64_t sub_2167D2808()
{
  result = qword_27CAB7BF0;
  if (!qword_27CAB7BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7B88);
    sub_2167D2428();
    sub_2167D2D50(&qword_27CAB7BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7BF0);
  }

  return result;
}

unint64_t sub_2167D28C0()
{
  result = qword_27CAB7C08;
  if (!qword_27CAB7C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7B90);
    sub_2167D2428();
    sub_2167D2D50(&qword_280E2B390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7C08);
  }

  return result;
}

uint64_t sub_2167D2978(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2167D29D0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2167D2A34()
{
  result = qword_27CAB7C50;
  if (!qword_27CAB7C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7C48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BD8);
    sub_2167D2750();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7C50);
  }

  return result;
}

unint64_t sub_2167D2AFC()
{
  result = qword_27CAB7C88;
  if (!qword_27CAB7C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7C80);
    sub_2167D2BB4();
    sub_2167D2D50(&unk_27CAB7C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7C88);
  }

  return result;
}

unint64_t sub_2167D2BB4()
{
  result = qword_27CAB7C90;
  if (!qword_27CAB7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7C90);
  }

  return result;
}

unint64_t sub_2167D2C44()
{
  result = qword_27CAB7CC0;
  if (!qword_27CAB7CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7CC8);
    sub_2167D2CFC();
    sub_2167D2D50(&qword_27CAB7CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7CC0);
  }

  return result;
}

unint64_t sub_2167D2CFC()
{
  result = qword_27CAB7CD0;
  if (!qword_27CAB7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7CD0);
  }

  return result;
}

unint64_t sub_2167D2D50(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2167D2DA0()
{
  result = qword_27CAB7CE8;
  if (!qword_27CAB7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7CE8);
  }

  return result;
}

uint64_t sub_2167D2DF4()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167D2E48(char a1)
{
  if (a1)
  {
    return 0x657263536C6C7566;
  }

  else
  {
    return 0x7465656873;
  }
}

uint64_t sub_2167D2E88()
{
  v0 = sub_21700F5E4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2167D2ED4(char a1)
{
  result = 0xD000000000000011;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2167D2F74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2167D2DF4();
  *a1 = result;
  return result;
}

uint64_t sub_2167D2FA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167D2E48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2167D2FF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2167D2E88();
  *a1 = result;
  return result;
}

unint64_t sub_2167D3024@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2167D2ED4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2167D3050@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a3;
  v110 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_0();
  v100 = v5;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v6);
  v98 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v88 - v9;
  sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v105 = v11;
  v106 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v102 = v13 - v12;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v94 = v15;
  v95 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v93 = v17 - v16;
  v18 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  v109 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v111 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  v99 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  v97 = &v88 - v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  v96 = &v88 - v31;
  OUTLINED_FUNCTION_3_1();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v88 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v88 - v37;
  MEMORY[0x28223BE20](v36);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v103 = v40;
  v104 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7();
  v43 = v42 - v41;
  v112 = a1;
  sub_21700CE04();
  v44 = v110;
  (*(v20 + 16))(v24);
  v45 = v108;
  sub_21700D224();
  if (v45)
  {
    (*(v20 + 8))(v44, v18);
    return (*(v111 + 8))(v112, v109);
  }

  else
  {
    v91 = v35;
    v90 = 0;
    v92 = v20;
    v108 = v18;
    v47 = v107;
    (*(v103 + 32))(v107, v43, v104);
    sub_21700CE04();
    v48 = sub_21700CDB4();
    v50 = v49;
    v52 = v111 + 8;
    v51 = *(v111 + 8);
    v53 = v109;
    v51(v38, v109);
    if (!v50)
    {
      v54 = v93;
      sub_217006214();
      v48 = sub_2170061F4();
      v50 = v55;
      (*(v94 + 8))(v54, v95);
    }

    v56 = v105;
    v57 = type metadata accessor for OpenFinancePageAction(0);
    v58 = (v47 + *(v57 + 20));
    *v58 = v48;
    v58[1] = v50;
    v59 = v91;
    sub_21700CE04();
    v60 = v101;
    sub_21700CD34();
    v61 = v59;
    v62 = v53;
    v51(v61, v53);
    v63 = v106;
    if (__swift_getEnumTagSinglePayload(v60, 1, v106) == 1)
    {
      sub_21669987C(v60, &qword_27CABA820);
      sub_21700E2E4();
      sub_2167D3E54(&qword_280E2A0F8, MEMORY[0x277D22548]);
      swift_allocError();
      *v64 = 7107189;
      v64[1] = 0xE300000000000000;
      v64[2] = v57;
      OUTLINED_FUNCTION_2_12();
      (*(v65 + 104))();
      swift_willThrow();
      (*(v92 + 8))(v110, v108);
      v51(v112, v53);
      (*(v103 + 8))(v107, v104);
    }

    else
    {
      v66 = v102;
      (*(v56 + 32))(v102, v60, v63);
      v104 = v57;
      v67 = *(v57 + 24);
      v68 = v107;
      (*(v56 + 16))(v107 + v67, v66, v63);
      type metadata accessor for OpenFinancePageAction.Kind(0);
      swift_storeEnumTagMultiPayload();
      v69 = v96;
      v70 = v112;
      sub_21700CE04();
      v71 = v98;
      sub_21700CCB4();
      v111 = v52;
      v51(v69, v62);
      v72 = sub_21700D3E4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v72);
      v74 = v68;
      v75 = v92;
      v76 = v51;
      if (EnumTagSinglePayload == 1)
      {
        sub_21669987C(v71, &qword_27CAB7D20);
        v77 = 0;
      }

      else
      {
        v77 = sub_21700D3D4();
        OUTLINED_FUNCTION_2_12();
        (*(v78 + 8))(v71, v72);
      }

      *(v74 + *(v104 + 28)) = v77;
      v79 = v97;
      sub_21700CE04();
      v80 = v100;
      sub_21700CCB4();
      v76(v79, v109);
      v81 = __swift_getEnumTagSinglePayload(v80, 1, v72);
      v89 = v76;
      if (v81 == 1)
      {
        sub_21669987C(v80, &qword_27CAB7D20);
        v82 = 0;
      }

      else
      {
        v82 = sub_21700D3D4();
        OUTLINED_FUNCTION_2_12();
        (*(v83 + 8))(v80, v72);
      }

      v84 = v104;
      *(v74 + *(v104 + 32)) = v82;
      v85 = v99;
      sub_21700CE04();
      sub_2167D3E9C();
      sub_21700CCC4();
      (*(v75 + 8))(v110, v108);
      v86 = v109;
      v87 = v89;
      v89(v70, v109);
      v87(v85, v86);
      result = (*(v105 + 8))(v102, v106);
      *(v74 + *(v84 + 36)) = v113;
    }
  }

  return result;
}

uint64_t sub_2167D3A00()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAB7CF0);
  __swift_project_value_buffer(v0, qword_27CAB7CF0);
  return sub_217007C94();
}

uint64_t sub_2167D3A7C(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for ProcessDeepLinkAction();
  v5[4] = sub_2167D3E54(&qword_27CAB7D08, type metadata accessor for ProcessDeepLinkAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2167D3B48(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_2167D3B48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessDeepLinkAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for OpenFinancePageAction.Placement(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OpenFinancePageAction.PresentationStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2167D3D90()
{
  result = qword_27CAB7D10;
  if (!qword_27CAB7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7D10);
  }

  return result;
}

unint64_t sub_2167D3DE8()
{
  result = qword_27CAB7D18;
  if (!qword_27CAB7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7D18);
  }

  return result;
}

uint64_t sub_2167D3E54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2167D3E9C()
{
  result = qword_280E3A608[0];
  if (!qword_280E3A608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3A608);
  }

  return result;
}

uint64_t sub_2167D3F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptRemoveAppWithAccessAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_16();
  sub_2167D5768(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2167D5540(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_216ECDBF4(&unk_217018798, v9);
}

uint64_t sub_2167D4064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[45] = a2;
  v3[46] = a3;
  v3[44] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v3[47] = v4;
  v3[48] = *(v4 - 8);
  v3[49] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v3[50] = v5;
  v3[51] = *(v5 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = type metadata accessor for PresentAlertAction();
  v3[54] = swift_task_alloc();
  v6 = _s6ActionVMa();
  v3[55] = v6;
  v3[56] = *(v6 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v7 = sub_217006224();
  v3[59] = v7;
  v3[60] = *(v7 - 8);
  v3[61] = swift_task_alloc();
  v8 = type metadata accessor for PromptRemoveAppWithAccessAction();
  v3[62] = v8;
  v9 = *(v8 - 8);
  v3[63] = v9;
  v3[64] = *(v9 + 64);
  v3[65] = swift_task_alloc();
  v10 = sub_21700D284();
  v3[66] = v10;
  v3[67] = *(v10 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v11 = sub_21700D3B4();
  v3[70] = v11;
  v3[71] = *(v11 - 8);
  v3[72] = swift_task_alloc();
  sub_21700EA34();
  v3[73] = sub_21700EA24();
  v13 = sub_21700E9B4();
  v3[74] = v13;
  v3[75] = v12;

  return MEMORY[0x2822009F8](sub_2167D43F0, v13, v12);
}

uint64_t sub_2167D43F0()
{
  v1 = *(v0 + 360) + *(*(v0 + 496) + 36);
  v2 = *(v1 + 8);
  if (v2 && (v3 = *(v1 + 16), *(v0 + 312) = *v1, *(v0 + 320) = v2, *(v0 + 328) = v3 & 1, v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20), MEMORY[0x21CE9BEE0](v4), (*(v0 + 329) & 1) == 0))
  {
    v90 = *(v0 + 576);
    v77 = *(v0 + 560);
    v78 = *(v0 + 568);
    v7 = *(v0 + 544);
    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v72 = *(v0 + 520);
    v73 = *(v0 + 504);
    v11 = *(v0 + 488);
    v10 = *(v0 + 496);
    v74 = *(v0 + 480);
    v76 = *(v0 + 472);
    v88 = *(v0 + 464);
    v79 = *(v0 + 456);
    v80 = *(v0 + 448);
    v87 = *(v0 + 440);
    v81 = *(v0 + 432);
    v82 = *(v0 + 424);
    v85 = *(v0 + 392);
    v83 = *(v0 + 384);
    v84 = *(v0 + 376);
    v12 = *(v0 + 360);
    sub_21700D234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_217013D90;
    v89 = v10;
    v14 = v12;
    v86 = v12;
    v15 = (v12 + *(v10 + 28));
    v16 = *v15;
    v17 = v15[1];
    v18 = (v14 + *(v10 + 32));
    v19 = v18[1];
    v69 = v16;
    v70 = *v18;
    sub_21700DF14();
    sub_21700DF14();
    sub_21700D234();
    v20 = type metadata accessor for RemoveItemAction();
    *(v13 + 56) = v20;
    *(v13 + 64) = sub_2167D5988(qword_280E40948, type metadata accessor for RemoveItemAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
    v68 = v9;
    (*(v8 + 16))(boxed_opaque_existential_1, v7, v9);
    *(v0 + 336) = v69;
    *(v0 + 344) = v17;
    sub_21700F364();
    (*(v8 + 8))(v7, v9);
    v22 = (boxed_opaque_existential_1 + *(v20 + 20));
    *v22 = v70;
    v22[1] = v19;
    sub_21700D234();
    v23 = (v86 + *(v89 + 20));
    v25 = *v23;
    v24 = v23[1];
    v26 = type metadata accessor for RemoveAppWithAccessAction();
    *(v13 + 96) = v26;
    *(v13 + 104) = sub_2167D5988(qword_280E35180, type metadata accessor for RemoveAppWithAccessAction);
    v27 = __swift_allocate_boxed_opaque_existential_1((v13 + 72));
    (*(v8 + 32))(v27, v7, v68);
    v28 = (v27 + *(v26 + 20));
    *v28 = v25;
    v28[1] = v24;
    sub_21700DF14();
    sub_21700D394();
    v29 = sub_216983738(43);
    v71 = v30;
    sub_21700D234();
    OUTLINED_FUNCTION_1_16();
    sub_2167D5768(v86, v72, v31);
    v32 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v33 = swift_allocObject();
    sub_2167D5540(v72, v33 + v32);
    v34 = sub_21700D2C4();
    v35 = MEMORY[0x277D21CB8];
    *(v0 + 72) = v34;
    *(v0 + 80) = v35;
    __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    sub_21700D2B4();
    sub_217006214();
    sub_2170061F4();
    OUTLINED_FUNCTION_7_12();
    v36 = *(v74 + 8);
    v36(v11, v76);
    *(v0 + 16) = v33;
    *(v0 + 24) = v32;
    *(v0 + 32) = v29;
    *(v0 + 40) = v71;
    sub_2167ADC3C(v0 + 16, v88);
    v37 = *(v87 + 20);
    sub_217007EF4();
    v75 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v88 + v37, 0, 1, v75);
    sub_217006214();
    sub_2170061F4();
    OUTLINED_FUNCTION_7_12();
    v36(v11, v76);
    v38 = (v88 + *(v87 + 24));
    *v38 = v37;
    v38[1] = v32;
    sub_216983738(230);
    OUTLINED_FUNCTION_7_12();
    v39 = MEMORY[0x277D21D10];
    *(v0 + 144) = v77;
    *(v0 + 152) = v39;
    v40 = __swift_allocate_boxed_opaque_existential_1((v0 + 120));
    (*(v78 + 16))(v40, v90, v77);
    sub_217006214();
    v41 = sub_2170061F4();
    v43 = v42;
    v36(v11, v76);
    *(v0 + 88) = v41;
    *(v0 + 96) = v43;
    *(v0 + 104) = v37;
    *(v0 + 112) = v32;
    sub_2167ADC3C(v0 + 88, v79);
    v44 = *(v87 + 20);
    sub_217007ED4();
    __swift_storeEnumTagSinglePayload(v79 + v44, 0, 1, v75);
    sub_217006214();
    sub_2170061F4();
    OUTLINED_FUNCTION_7_12();
    v36(v11, v76);
    v45 = (v79 + *(v87 + 24));
    *v45 = v44;
    v45[1] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    v47 = (v86 + *(v89 + 24));
    v49 = *v47;
    v48 = v47[1];
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_2167C6E08();
    *(inited + 32) = v49;
    *(inited + 40) = v48;
    sub_21700DF14();
    v50 = sub_216983808(24);
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130);
    v53 = *(v80 + 72);
    v54 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_217013D90;
    v56 = v55 + v54;
    sub_2167D5768(v88, v56, _s6ActionVMa);
    sub_2167D5768(v79, v56 + v53, _s6ActionVMa);
    v57 = sub_216983738(294);
    sub_216933384(v50, v52, v55, v57, v58, (v0 + 232));
    sub_21700D234();
    v59 = v81 + *(v82 + 20);
    v60 = *(v0 + 232);
    v61 = *(v0 + 248);
    *(v59 + 32) = *(v0 + 264);
    *v59 = v60;
    *(v59 + 16) = v61;
    type metadata accessor for ObjectGraph();
    sub_21700E094();
    *(v0 + 296) = v82;
    *(v0 + 304) = sub_2167D5988(qword_280E3EB18, type metadata accessor for PresentAlertAction);
    v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
    sub_2167D5768(v81, v62, type metadata accessor for PresentAlertAction);
    (*(v83 + 104))(v85, *MEMORY[0x277D21E18], v84);
    v63 = swift_task_alloc();
    *(v0 + 608) = v63;
    *v63 = v0;
    v63[1] = sub_2167D4C60;
    v64 = *(v0 + 392);
    v65 = *(v0 + 400);
    v66 = *(v0 + 368);
    v67 = *(v0 + 352);

    return MEMORY[0x28217F468](v67, v0 + 272, v64, v66, v65);
  }

  else
  {

    sub_2167D56B0();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_3_29();

    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_2167D4C60()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  (*(v2[48] + 8))(v2[49], v2[47]);
  if (v0)
  {
    v3 = v2[75];
    v4 = v2[74];
    v5 = sub_2167D4F34;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 34));
    v3 = v2[75];
    v4 = v2[74];
    v5 = sub_2167D4DB4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2167D4DB4()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[57];
  v5 = v0[58];
  v6 = v0[54];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[50];

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_0_31();
  sub_2167D57C8(v6, v10);
  sub_2167D57C8(v4, _s6ActionVMa);
  sub_2167ADC98((v0 + 11));
  sub_2167D57C8(v5, _s6ActionVMa);
  sub_2167ADC98((v0 + 2));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_2167D4F34()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v5 = v0[57];
  v4 = v0[58];
  v6 = v0[54];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[50];

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_0_31();
  sub_2167D57C8(v6, v10);
  sub_2167D57C8(v5, _s6ActionVMa);
  sub_2167ADC98((v0 + 11));
  sub_2167D57C8(v4, _s6ActionVMa);
  sub_2167ADC98((v0 + 2));
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 34));
  OUTLINED_FUNCTION_3_29();

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_2167D50AC(uint64_t a1)
{
  v16 = a1;
  v1 = sub_21700B5A4();
  v18 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21700B5E4();
  v4 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PromptRemoveAppWithAccessAction();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2166AF2EC();
  v11 = sub_21700EE84();
  sub_2167D5768(v16, v10, type metadata accessor for PromptRemoveAppWithAccessAction);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_2167D5540(v10, v13 + v12);
  aBlock[4] = sub_2167D5928;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor;
  v14 = _Block_copy(aBlock);
  sub_21700B5C4();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_2167D5988(&qword_280E2A480, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
  sub_2167D59D0();
  sub_21700F214();
  MEMORY[0x21CE9FCB0](0, v6, v3, v14);
  _Block_release(v14);

  (*(v18 + 8))(v3, v1);
  (*(v4 + 8))(v6, v17);
}

uint64_t sub_2167D540C(uint64_t a1)
{
  result = type metadata accessor for PromptRemoveAppWithAccessAction();
  if (*(a1 + *(result + 36) + 8))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20);
    sub_21700B0D4();
  }

  return result;
}

uint64_t sub_2167D54B4()
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](0);
  return sub_21700F944();
}

uint64_t sub_2167D54FC()
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](0);
  return sub_21700F944();
}

uint64_t sub_2167D5540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptRemoveAppWithAccessAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167D55A4(uint64_t a1)
{
  v4 = *(type metadata accessor for PromptRemoveAppWithAccessAction() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2167AF644;

  return sub_2167D4064(a1, v1 + v5, v6);
}

unint64_t sub_2167D56B0()
{
  result = qword_27CAB7D28;
  if (!qword_27CAB7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7D28);
  }

  return result;
}

uint64_t sub_2167D5768(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2167D57C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_3Tm_0()
{
  type metadata accessor for PromptRemoveAppWithAccessAction();
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v3);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  if (*(v3 + *(v0 + 44) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167D5928()
{
  v1 = *(type metadata accessor for PromptRemoveAppWithAccessAction() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2167D540C(v2);
}

uint64_t sub_2167D5988(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2167D59D0()
{
  result = qword_280E29E50;
  if (!qword_280E29E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABC970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29E50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InlineUpsell.AssetName(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for PromptRemoveAppWithAccessActionImplementation.PromptRemoveAppWithAccessError(_BYTE *result, int a2, int a3)
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

unint64_t sub_2167D5B34()
{
  result = qword_27CAB7D30;
  if (!qword_27CAB7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7D30);
  }

  return result;
}

uint64_t sub_2167D5B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  v44 = &v41 - v13;
  v42 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28);
  v17 = OUTLINED_FUNCTION_36(v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  v24 = type metadata accessor for SocialOnboardingPrivacySettingsPageView();
  *(a6 + v24[8]) = a3;
  v25 = *(a5 + 40);
  v45 = a3;

  v46 = a4;
  v47 = a2;
  v25(a4, a5);
  v26 = type metadata accessor for Page.Footer(0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v26) == 1)
  {
    sub_216699778(v19, &qword_27CAB7A28);
    v27 = 1;
  }

  else
  {
    sub_2167D9130(&v19[*(v26 + 20)], v23, type metadata accessor for LinkComponentModel);
    sub_2167D97D0(v19, type metadata accessor for Page.Footer);
    v27 = 0;
  }

  v28 = type metadata accessor for LinkComponentModel();
  __swift_storeEnumTagSinglePayload(v23, v27, 1, v28);
  sub_2167D5FC4(v23, a6 + v24[6]);
  v29 = v46;
  v30 = v47;
  v31 = (*(a5 + 32))(v46, a5);
  if (v31)
  {
    v32 = v43;
    sub_216DE8DC8();

    v33 = (v32 + *(v42 + 24));
    v34 = *v33;
    v31 = v33[1];
    sub_21700DF14();
    sub_2167D97D0(v32, type metadata accessor for Page.Header);
  }

  else
  {
    v34 = 0;
  }

  v35 = (a6 + v24[7]);
  *v35 = v34;
  v35[1] = v31;
  v36 = v48;
  sub_2167D9130(v48, a6 + v24[5], type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
  v37 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v37);
  type metadata accessor for SocialProfileUpdater(0);
  swift_allocObject();
  sub_216AFBA30();
  v39 = v38;
  sub_216AFF53C();
  sub_216AFF564();
  (*(*(v29 - 8) + 8))(v30, v29);
  result = sub_2167D97D0(v36, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
  *a6 = sub_2167D8C58;
  *(a6 + 8) = v39;
  *(a6 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for SocialOnboardingPrivacySettingsPageView()
{
  result = qword_280E2D920;
  if (!qword_280E2D920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2167D5FC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167D6034()
{
  sub_217009C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7D50);
  sub_2167D8E28();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_217008054();
}

uint64_t sub_2167D613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = sub_217008214();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D50);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D48);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  *v9 = sub_2170093C4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D70);
  sub_2167D63D8(a1, &v9[*(v14 + 44)]);
  LOBYTE(a1) = sub_217009C74();
  sub_217007F24();
  v15 = &v9[*(v7 + 36)];
  *v15 = a1;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  v20 = sub_2167D8E28();
  sub_21700A8C4();
  sub_216699778(v9, &qword_27CAB7D50);
  sub_217008204();
  v22[2] = v7;
  v22[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_21700A454();
  (*(v4 + 8))(v6, v3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2167D63D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v3 = type metadata accessor for SocialOnboardingPrivacySettingsPageView();
  v4 = v3 - 8;
  v153 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v154 = v6;
  v155 = &v122[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v152 = &v122[-v7];
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D78);
  v8 = MEMORY[0x28223BE20](v156);
  v163 = &v122[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v11 = &v122[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D80);
  v161 = *(v12 - 8);
  v162 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v160 = &v122[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v173 = &v122[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D88);
  v157 = *(v16 - 8);
  v158 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v170 = &v122[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v122[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v166 = *(v21 - 8);
  v167 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v122[-v22];
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C68);
  MEMORY[0x28223BE20](v151);
  v25 = &v122[-v24];
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C70);
  v26 = MEMORY[0x28223BE20](v165);
  v169 = &v122[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v122[-v29];
  MEMORY[0x28223BE20](v28);
  v31 = *(v4 + 36);
  v168 = a1;
  v32 = (a1 + v31);
  v33 = v32[1];
  v159 = v11;
  v171 = &v122[-v34];
  v172 = v20;
  if (v33)
  {
    v35 = *v32;
    v36 = v33;
  }

  else
  {
    v35 = sub_216983738(48);
    v36 = v37;
  }

  sub_21700DF14();
  v38 = sub_217009D34();
  KeyPath = swift_getKeyPath();
  v191[0] = v35;
  v191[1] = v36;
  v191[2] = 0;
  v191[3] = MEMORY[0x277D84F90];
  v191[4] = KeyPath;
  v191[5] = v38;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();

  v40 = swift_getKeyPath();
  (*(v166 + 32))(v25, v23, v167);
  v41 = &v25[*(v151 + 36)];
  *v41 = v40;
  *(v41 + 1) = 0;
  v41[16] = 1;
  LOBYTE(v40) = sub_217009CA4();
  sub_217007F24();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_2167C5834(v25, v30, &qword_27CAB7C68);
  v50 = &v30[*(v165 + 36)];
  *v50 = v40;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  sub_2167C5834(v30, v171, &qword_27CAB7C70);
  v51 = type metadata accessor for SocialProfileUpdater(0);
  v52 = sub_2167D8D54();
  v53 = sub_217008CF4();
  v150 = v54;
  v151 = v53;
  v55 = *v168;
  v56 = *(v168 + 16);
  v166 = *(v168 + 8);
  v167 = v55;
  LODWORD(v165) = v56;
  v149 = sub_2170081B4();
  v148 = sub_217007D54();
  v147 = sub_217009CA4();
  sub_217007F24();
  v145 = v58;
  v146 = v57;
  v143 = v60;
  v144 = v59;
  LOBYTE(v191[0]) = 0;
  v61 = sub_216983738(131);
  v141 = v62;
  v142 = v61;
  v140 = sub_217009E94();
  v138 = swift_getKeyPath();
  v139 = sub_21700AD34();
  v137 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  v135 = swift_getKeyPath();
  v136 = sub_217009CA4();
  sub_217007F24();
  v133 = v64;
  v134 = v63;
  v131 = v66;
  v132 = v65;
  v195[112] = 0;
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D90);
  sub_2167D8FF8(&qword_27CAB7D98, &qword_27CAB7D90, &unk_217018A60, sub_2167D8EE0);
  sub_21700B044();
  v128 = sub_217009CA4();
  sub_217007F24();
  v126 = v68;
  v127 = v67;
  v124 = v70;
  v125 = v69;
  v191[3] = &unk_28293ACF8;
  v71 = sub_2167D8F98();
  v191[4] = v71;
  sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(v191);
  v191[3] = &unk_28293ACF8;
  v191[4] = v71;
  sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(v191);
  v130 = v51;
  sub_2170081C4();
  swift_getKeyPath();
  v129 = v52;
  sub_2170086A4();

  MEMORY[0x28223BE20](v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7DC8);
  sub_2167D8FF8(&qword_27CAB7DD0, &qword_27CAB7DC8, &unk_217018AA0, sub_2167D9078);
  sub_21700B044();
  v123 = sub_217009CA4();
  sub_217007F24();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v159;
  v82 = v168;
  sub_2167D7EFC(v159);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7DF8);
  v84 = v83[11];
  v85 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v81 + v84, 1, 1, v85);
  v86 = v152;
  sub_2167D9130(v82, v152, type metadata accessor for SocialOnboardingPrivacySettingsPageView);
  v87 = (*(v153 + 80) + 16) & ~*(v153 + 80);
  v88 = swift_allocObject();
  sub_2167D918C(v86, v88 + v87);
  v89 = v82;
  v90 = v155;
  sub_2167D9130(v89, v155, type metadata accessor for SocialOnboardingPrivacySettingsPageView);
  v91 = swift_allocObject();
  sub_2167D918C(v90, v91 + v87);
  v92 = v83[12];
  *(v81 + v92) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v93 = v81 + v83[13];
  *v93 = swift_getKeyPath();
  v93[40] = 0;
  v81[5] = sub_2167D91F0;
  v81[6] = v88;
  v81[7] = sub_2167D925C;
  v81[8] = v91;
  if (qword_27CAB58D0 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v94 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E00) + 36));
  v95 = v197;
  *v94 = v196;
  v94[1] = v95;
  v94[2] = v198;
  sub_2170081B4();
  v96 = sub_216AFF2F0();

  v97 = swift_getKeyPath();
  v98 = swift_allocObject();
  *(v98 + 16) = v96 & 1;
  v99 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E08) + 36));
  *v99 = v97;
  v99[1] = sub_2167D2420;
  v99[2] = v98;
  LOBYTE(v97) = sub_217009CA4();
  sub_217007F24();
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E10) + 36);
  *v108 = v97;
  *(v108 + 1) = v101;
  *(v108 + 2) = v103;
  *(v108 + 3) = v105;
  *(v108 + 4) = v107;
  v108[40] = 0;
  v109 = swift_getKeyPath();
  v110 = v81 + *(v156 + 36);
  *v110 = v109;
  v110[8] = 0;
  v111 = v169;
  sub_216683A80(v171, v169, &qword_27CAB7C70);
  v189[0] = v151;
  v189[1] = v150;
  v189[2] = v148;
  v189[3] = v149;
  LOBYTE(v189[4]) = v147;
  v189[5] = v146;
  v189[6] = v145;
  v189[7] = v144;
  v189[8] = v143;
  LOBYTE(v189[9]) = 0;
  v190[0] = v111;
  v190[2] = v189;
  v188[0] = v142;
  v188[1] = v141;
  v188[2] = 0;
  v188[3] = MEMORY[0x277D84F90];
  v188[4] = v138;
  v188[5] = v140;
  v188[6] = v137;
  v188[7] = v139;
  memcpy(&v188[8], v195, 0x70uLL);
  v188[22] = v135;
  LOBYTE(v188[23]) = 0;
  *(&v188[23] + 1) = *v194;
  HIDWORD(v188[23]) = *&v194[3];
  LOBYTE(v188[24]) = v136;
  *(&v188[24] + 1) = *v193;
  HIDWORD(v188[24]) = *&v193[3];
  v188[25] = v134;
  v188[26] = v133;
  v188[27] = v132;
  v188[28] = v131;
  LOBYTE(v188[29]) = 0;
  v190[3] = v188;
  v113 = v157;
  v112 = v158;
  v114 = v170;
  (*(v157 + 16))();
  v182 = v128;
  v183 = v127;
  v184 = v126;
  v185 = v125;
  v186 = v124;
  v187 = 0;
  v190[4] = v114;
  v190[5] = &v182;
  v115 = v160;
  v116 = v161;
  v117 = v162;
  (*(v161 + 16))(v160, v173, v162);
  v176 = v123;
  v177 = v74;
  v178 = v76;
  v179 = v78;
  v180 = v80;
  v181 = 0;
  v190[6] = v115;
  v190[7] = &v176;
  v174 = 0;
  v175 = 1;
  v190[8] = &v174;
  v118 = v163;
  sub_216683A80(v81, v163, &qword_27CAB7D78);
  v190[9] = v118;
  sub_2168AA4BC(v190);
  sub_216699778(v81, &qword_27CAB7D78);
  v119 = *(v116 + 8);
  v119(v173, v117);
  v120 = *(v113 + 8);
  v120(v172, v112);
  sub_216699778(v171, &qword_27CAB7C70);
  sub_216699778(v118, &qword_27CAB7D78);
  v119(v115, v117);
  v120(v170, v112);
  memcpy(v191, v188, 0xE9uLL);
  sub_216699778(v191, &qword_27CAB7E18);
  memcpy(v192, v189, 0x49uLL);
  sub_216699778(v192, &qword_27CAB7E20);
  return sub_216699778(v169, &qword_27CAB7C70);
}

uint64_t sub_2167D7324@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EE8);
  sub_2167D741C(a1 + *(v2 + 44));
  v3 = sub_217009CD4();
  sub_217007F24();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7DA8) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_217009CA4();
  sub_217007F24();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D90);
  v23 = a1 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_2167D741C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EB8);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EC0);
  v6 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v45 = sub_216983738(57);
  v46 = v14;
  v47 = 0;
  v48 = MEMORY[0x277D84F90];
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
  sub_2167C4D74();
  sub_21700A304();

  v15 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v17 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EC8) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  v18 = swift_getKeyPath();
  v19 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7ED0) + 36)];
  *v19 = v18;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = swift_getKeyPath();
  v21 = &v4[*(v2 + 44)];
  *v21 = v20;
  v21[8] = 0;
  sub_21700B3C4();
  sub_217008BB4();
  sub_2167C5834(v4, v11, &qword_27CAB7EB8);
  memcpy(&v11[*(v6 + 44)], v61, 0x70uLL);
  v38 = v13;
  sub_2167C5834(v11, v13, &qword_27CAB7EC0);
  v22 = sub_216983738(58);
  v24 = v23;
  v41 = sub_217009E94();
  v25 = swift_getKeyPath();
  v40 = sub_21700AD14();
  v26 = swift_getKeyPath();
  v37 = v26;
  v27 = swift_getKeyPath();
  LOBYTE(v45) = 1;
  v39 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  memcpy(&v60[5], __src, 0x70uLL);
  v28 = v43;
  sub_216683A80(v13, v43, &qword_27CAB7EC0);
  v29 = v42;
  sub_216683A80(v28, v42, &qword_27CAB7EC0);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EF0) + 48);
  v44[0] = v22;
  v44[1] = v24;
  v44[2] = 0;
  v44[3] = MEMORY[0x277D84F90];
  v44[4] = v25;
  v31 = v25;
  v32 = v41;
  v44[5] = v41;
  v44[6] = v26;
  v33 = v39;
  v34 = v40;
  v44[7] = v40;
  v44[8] = v27;
  v44[9] = 0;
  LOBYTE(v44[10]) = 1;
  v44[11] = v39;
  LOWORD(v44[12]) = 0;
  BYTE2(v44[12]) = 1;
  memcpy(&v44[12] + 3, v60, 0x75uLL);
  memcpy((v29 + v30), v44, 0xD8uLL);
  sub_216683A80(v44, &v45, &qword_27CAB7EF8);
  sub_216699778(v38, &qword_27CAB7EC0);
  v45 = v22;
  v46 = v24;
  v47 = 0;
  v48 = MEMORY[0x277D84F90];
  v49 = v31;
  v50 = v32;
  v51 = v37;
  v52 = v34;
  v53 = v27;
  v54 = 0;
  v55 = 1;
  v56 = v33;
  v57 = 0;
  v58 = 1;
  memcpy(v59, v60, sizeof(v59));
  sub_216699778(&v45, &qword_27CAB7EF8);
  return sub_216699778(v43, &qword_27CAB7EC0);
}

uint64_t sub_2167D7904@<X0>(__int16 a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = sub_2170093B4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EB0);
  sub_2167D7A14(a1, a2, a3 + *(v6 + 44));
  LOBYTE(a2) = sub_217009CD4();
  sub_217007F24();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7DE0) + 36);
  *v15 = a2;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  LOBYTE(a2) = sub_217009CA4();
  sub_217007F24();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7DC8);
  v25 = a3 + *(result + 36);
  *v25 = a2;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_2167D7A14@<X0>(__int16 a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v44) = a2;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EB8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EC0);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v48 = sub_216983738(a1);
  v49 = v17;
  v50 = 0;
  v51 = MEMORY[0x277D84F90];
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668);
  sub_2167C4D74();
  sub_21700A304();

  v18 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EC8) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = swift_getKeyPath();
  v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7ED0) + 36)];
  *v22 = v21;
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = swift_getKeyPath();
  v24 = &v7[*(v5 + 44)];
  *v24 = v23;
  v24[8] = 0;
  sub_21700B3C4();
  sub_217008BB4();
  sub_2167C5834(v7, v14, &qword_27CAB7EB8);
  memcpy(&v14[*(v9 + 44)], v63, 0x70uLL);
  v25 = v16;
  v40 = v16;
  sub_2167C5834(v14, v16, &qword_27CAB7EC0);
  v26 = sub_216983738(v44);
  v44 = v27;
  v43 = sub_217009E94();
  v28 = swift_getKeyPath();
  v42 = sub_21700AD14();
  v29 = swift_getKeyPath();
  v39 = v29;
  v30 = swift_getKeyPath();
  LOBYTE(v48) = 1;
  v41 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  memcpy(&v62[7], __src, 0x70uLL);
  v31 = v46;
  sub_216683A80(v25, v46, &qword_27CAB7EC0);
  v32 = v45;
  sub_216683A80(v31, v45, &qword_27CAB7EC0);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7ED8) + 48);
  v35 = v43;
  v34 = v44;
  v47[0] = v26;
  v47[1] = v44;
  v47[2] = 0;
  v47[3] = MEMORY[0x277D84F90];
  v47[4] = v28;
  v47[5] = v43;
  v47[6] = v29;
  v37 = v41;
  v36 = v42;
  v47[7] = v42;
  v47[8] = v30;
  v47[9] = 0;
  LOBYTE(v47[10]) = 1;
  v47[11] = v41;
  LOBYTE(v47[12]) = 0;
  memcpy(&v47[12] + 1, v62, 0x77uLL);
  memcpy((v32 + v33), v47, 0xD8uLL);
  sub_216683A80(v47, &v48, &qword_27CAB7EE0);
  sub_216699778(v40, &qword_27CAB7EC0);
  v48 = v26;
  v49 = v34;
  v50 = 0;
  v51 = MEMORY[0x277D84F90];
  v52 = v28;
  v53 = v35;
  v54 = v39;
  v55 = v36;
  v56 = v30;
  v57 = 0;
  v58 = 1;
  v59 = v37;
  v60 = 0;
  memcpy(v61, v62, sizeof(v61));
  sub_216699778(&v48, &qword_27CAB7EE0);
  return sub_216699778(v46, &qword_27CAB7EC0);
}

uint64_t sub_2167D7EFC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for SocialOnboardingPrivacySettingsPageView();
  if (*(v1 + *(v6 + 20) + 80) == 1)
  {
    sub_216683A80(v1 + *(v6 + 24), v5, &qword_27CAB7A30);
    v7 = type metadata accessor for LinkComponentModel();
    if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
    {
      result = sub_216699778(v5, &qword_27CAB7A30);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
    }

    else
    {
      sub_216683A80(&v5[*(v7 + 24)], a1, &qword_27CAB6DB0);
      return sub_2167D97D0(v5, type metadata accessor for LinkComponentModel);
    }
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_2167D8D54();
    sub_2170081B4();
    v9 = sub_21700D3B4();
    v10 = MEMORY[0x277D21D10];
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_216AFDE5C();
  }

  return result;
}

uint64_t sub_2167D80C4@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E28);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E30);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E38);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E40);
  MEMORY[0x28223BE20](v12);
  v14 = v19 - v13;
  sub_2167D841C(v3);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v3, v7, &qword_27CAB7E28);
  memcpy(&v7[*(v5 + 44)], __src, 0x70uLL);
  LOBYTE(v3) = sub_217009C84();
  sub_2167C5834(v7, v11, &qword_27CAB7E30);
  v15 = &v11[*(v9 + 44)];
  *v15 = v3;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  v15[40] = 1;
  v16 = sub_21700AC54();
  LOBYTE(v3) = sub_217009C84();
  sub_2167C5834(v11, v14, &qword_27CAB7E38);
  v17 = &v14[*(v12 + 36)];
  *v17 = v16;
  v17[8] = v3;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E50);
  sub_2167D92B8();
  sub_2167D9660();
  sub_2167D9718();
  sub_21700AB34();
  return sub_216699778(v14, &qword_27CAB7E40);
}

uint64_t sub_2167D841C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v25 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  type metadata accessor for SocialProfileUpdater(0);
  sub_2167D8D54();
  sub_2170081B4();
  v9 = sub_216AFF2F0();

  if (v9)
  {
    sub_217008294();
    (*(v6 + 16))(v4, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CAB7BC8, &qword_27CAB7BD0);
    v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E88);
    v11 = sub_2167D95A8();
    *&v33[0] = v10;
    *(&v33[0] + 1) = v11;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v13 = sub_2167D8870();
    v15 = v14;
    v16 = sub_21700ACF4();
    KeyPath = swift_getKeyPath();
    v18 = sub_217009D54();
    v19 = swift_getKeyPath();
    *&v29 = v13;
    *(&v29 + 1) = v15;
    *&v30 = 0;
    *(&v30 + 1) = MEMORY[0x277D84F90];
    *&v31 = KeyPath;
    *(&v31 + 1) = v16;
    *&v32 = v19;
    *(&v32 + 1) = v18;
    sub_217009DE4();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88);
    v21 = sub_2167D95A8();
    v22 = v25;
    sub_21700A304();
    v33[0] = v29;
    v33[1] = v30;
    v33[2] = v31;
    v33[3] = v32;
    sub_216699778(v33, &qword_27CAB7E88);
    v23 = v26;
    v24 = v28;
    (*(v26 + 16))(v4, v22, v28);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CAB7BC8, &qword_27CAB7BD0);
    *&v29 = v20;
    *(&v29 + 1) = v21;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v23 + 8))(v22, v24);
  }
}

uint64_t sub_2167D8870()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for SocialOnboardingPrivacySettingsPageView();
  sub_216683A80(v0 + *(v4 + 24), v3, &qword_27CAB7A30);
  v5 = type metadata accessor for LinkComponentModel();
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_216699778(v3, &qword_27CAB7A30);
  }

  else
  {
    v6 = &v3[*(v5 + 28)];
    v7 = *v6;
    v8 = *(v6 + 1);
    sub_21700DF14();
    sub_2167D97D0(v3, type metadata accessor for LinkComponentModel);
    if (v8)
    {
      return v7;
    }
  }

  if (*(v0 + *(v4 + 20) + 80))
  {
    v9 = 168;
  }

  else
  {
    v9 = 90;
  }

  return sub_216983738(v9);
}

uint64_t sub_2167D89BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E48) + 36);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_217009294();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C00) + 36)) = 256;
  return sub_216683A80(a1, a2, &qword_27CAB7E40);
}

uint64_t sub_2167D8A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E50) + 36));
  v5 = *(sub_217008B44() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_217009294();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438) + 36)] = 256;
  return sub_216683A80(a1, a2, &qword_27CAB7E40);
}

uint64_t sub_2167D8B70()
{
  type metadata accessor for SocialProfileUpdater(0);
  sub_2167D8D54();
  sub_2170081B4();
  sub_216AFF304();

  sub_2170081B4();
  sub_216AFD94C();
}

uint64_t sub_2167D8C20()
{
  result = sub_21700B304();
  v1 = 50.0;
  if (result)
  {
    v1 = 48.0;
  }

  qword_27CAB7D38 = *&v1;
  return result;
}

void sub_2167D8C88()
{
  sub_2167D1B08();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SocialOnboardingPrivacySettingsPageLockup();
    if (v1 <= 0x3F)
    {
      sub_2167D8DAC();
      if (v2 <= 0x3F)
      {
        sub_216688154();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ObjectGraph();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2167D8D54()
{
  result = qword_280E3B500;
  if (!qword_280E3B500)
  {
    type metadata accessor for SocialProfileUpdater(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3B500);
  }

  return result;
}

void sub_2167D8DAC()
{
  if (!qword_280E3EC00)
  {
    type metadata accessor for LinkComponentModel();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E3EC00);
    }
  }
}

unint64_t sub_2167D8E28()
{
  result = qword_27CAB7D58;
  if (!qword_27CAB7D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7D50);
    sub_21669E098(&qword_27CAB7D60, &unk_27CAB7D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7D58);
  }

  return result;
}

unint64_t sub_2167D8EE0()
{
  result = qword_27CAB7DA0;
  if (!qword_27CAB7DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7DA8);
    sub_21669E098(&qword_27CAB7DB0, &unk_27CAB7DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7DA0);
  }

  return result;
}

unint64_t sub_2167D8F98()
{
  result = qword_27CAB7DC0;
  if (!qword_27CAB7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7DC0);
  }

  return result;
}

uint64_t sub_2167D8FF8(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2167D9078()
{
  result = qword_27CAB7DD8;
  if (!qword_27CAB7DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7DE0);
    sub_21669E098(&qword_27CAB7DE8, &unk_27CAB7DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7DD8);
  }

  return result;
}

uint64_t sub_2167D9130(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2167D918C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialOnboardingPrivacySettingsPageView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167D91F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SocialOnboardingPrivacySettingsPageView();
  OUTLINED_FUNCTION_36(v2);

  return sub_2167D80C4(a1);
}

uint64_t sub_2167D925C()
{
  v0 = type metadata accessor for SocialOnboardingPrivacySettingsPageView();
  OUTLINED_FUNCTION_36(v0);

  return sub_2167D8B70();
}

unint64_t sub_2167D92B8()
{
  result = qword_27CAB7E58;
  if (!qword_27CAB7E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E40);
    sub_2167D8FF8(&qword_27CAB7E60, &unk_27CAB7E38, &unk_217018BC0, sub_2167D939C);
    sub_21669E098(&qword_280E2A840, &qword_27CAB7BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E58);
  }

  return result;
}

unint64_t sub_2167D939C()
{
  result = qword_27CAB7E68;
  if (!qword_27CAB7E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E30);
    sub_2167D9428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E68);
  }

  return result;
}

unint64_t sub_2167D9428()
{
  result = qword_27CAB7E70;
  if (!qword_27CAB7E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E28);
    sub_2167D94AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E70);
  }

  return result;
}

unint64_t sub_2167D94AC()
{
  result = qword_27CAB7E78;
  if (!qword_27CAB7E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E80);
    sub_21669E098(&qword_27CAB7BC8, &qword_27CAB7BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E88);
    sub_2167D95A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E78);
  }

  return result;
}

unint64_t sub_2167D95A8()
{
  result = qword_280E2B000;
  if (!qword_280E2B000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E88);
    sub_2167D2750();
    sub_21669E098(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B000);
  }

  return result;
}

unint64_t sub_2167D9660()
{
  result = qword_27CAB7E90;
  if (!qword_27CAB7E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E48);
    sub_2167D92B8();
    sub_21669E098(&qword_27CAB7BF8, &qword_27CAB7C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E90);
  }

  return result;
}

unint64_t sub_2167D9718()
{
  result = qword_27CAB7E98;
  if (!qword_27CAB7E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E50);
    sub_2167D92B8();
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E98);
  }

  return result;
}

uint64_t sub_2167D97D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2167D985C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  type metadata accessor for UserSocialProfileCoordinator();
  sub_21700D4B4();
  v10 = v14;
  if (!v14)
  {

LABEL_6:
    swift_deallocPartialClassInstance();
    return 0;
  }

  type metadata accessor for SocialGraphController();
  sub_21700D4B4();
  v11 = v14;
  if (!v14)
  {

    goto LABEL_6;
  }

  *(v2 + 16) = a1;
  type metadata accessor for ObjectGraph();

  sub_21700E094();

  (*(v6 + 32))(v2 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_actionDispatcher, v9, v4);
  *(v2 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_userSocialProfileCoordinator) = v10;
  *(v2 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_socialGraphController) = v11;
  return v2;
}

uint64_t sub_2167D9A44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  v1 = OUTLINED_FUNCTION_36(v0);
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_17();
  sub_2167D9B94(v2, v3, v4, v5);
  v6 = sub_21678C1C4();
  OUTLINED_FUNCTION_7_13();
  v7 = OUTLINED_FUNCTION_4_17();
  sub_2167DA7DC(v7, v8, v9, v10);
  v11 = sub_21678C1C4();
  OUTLINED_FUNCTION_7_13();
  v12 = OUTLINED_FUNCTION_4_17();
  sub_2167DCBE4(v12, v13, v14, v15);
  v16 = sub_21678C1C4();
  OUTLINED_FUNCTION_7_13();
  v17 = OUTLINED_FUNCTION_4_17();
  sub_2167DD8D8(v17, v18, v19, v20);
  v21 = sub_21678C1C4();
  OUTLINED_FUNCTION_7_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217018C90;
  *(inited + 32) = v6;
  *(inited + 40) = v11;
  *(inited + 48) = v16;
  *(inited + 56) = v21;
  v23 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v23;
}

uint64_t sub_2167D9B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v100 = a2;
  v103 = sub_2170075A4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = v7;
  v101 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OpenSocialProfileEditAction();
  v97 = *(v8 - 8);
  v9 = *(v97 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v98 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v83 - v11;
  v95 = sub_21700CFB4();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_217005EF4();
  v85 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_21700D704();
  v91 = *(v92 - 8);
  v16 = MEMORY[0x28223BE20](v92);
  v90 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v105 = &v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v104 = &v83 - v23;
  v89 = sub_21700D284();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v4;
  v25 = *(v4 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_userSocialProfileCoordinator);
  if (v25[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded] != 1)
  {
    goto LABEL_19;
  }

  v26 = (a1 + *(type metadata accessor for SocialProfileDescriptor(0) + 24));
  v27 = v26[1];
  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = *v26;
  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
LABEL_19:
    v44 = type metadata accessor for MenuAction();
    v45 = a4;
    goto LABEL_20;
  }

  v84 = a4;
  v30 = sub_216F0706C();
  if (sub_216F07FB4(v30) == 1718379891 && v31 == 0xE400000000000000)
  {
    goto LABEL_23;
  }

  v33 = sub_21700F7D4();

  if (v33)
  {
    goto LABEL_24;
  }

  v34 = *&v25[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v35 = *(v34 + 16);
  v36 = v25;
  os_unfair_lock_lock(v35);
  v37 = *&v36[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v38 = *(v34 + 16);
  v39 = v37;
  os_unfair_lock_unlock(v38);

  if (!v37)
  {
    goto LABEL_18;
  }

  v40 = sub_2167DEA8C(v39);
  if (!v41)
  {
    goto LABEL_18;
  }

  if (v28 == v40 && v27 == v41)
  {
LABEL_23:

    goto LABEL_24;
  }

  v43 = sub_21700F7D4();

  if ((v43 & 1) == 0)
  {
LABEL_18:
    v44 = type metadata accessor for MenuAction();
    v45 = v84;
LABEL_20:

    return __swift_storeEnumTagSinglePayload(v45, 1, 1, v44);
  }

LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v48 = (v86 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v49 = v48[1];
  v50 = MEMORY[0x277D837D0];
  *(inited + 48) = *v48;
  *(inited + 56) = v49;
  *(inited + 72) = v50;
  *(inited + 80) = 1684957547;
  *(inited + 120) = v50;
  *(inited + 88) = 0xE400000000000000;
  strcpy((inited + 96), "socialProfile");
  *(inited + 110) = -4864;
  sub_21700DF14();
  v51 = sub_21700E384();
  v52 = v104;
  __swift_storeEnumTagSinglePayload(v104, 1, 1, v13);
  sub_21700D6F4();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v109 = v51;
  sub_2166EF9C4(&v109, v108);
  v53 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v107 = v53;
  sub_2166EF9D4();
  v54 = v107;
  v110 = v50;
  *&v109 = 0x7463656C6573;
  *(&v109 + 1) = 0xE600000000000000;
  sub_2166EF9C4(&v109, v108);
  swift_isUniquelyReferenced_nonNull_native();
  v107 = v54;
  sub_2166EF9D4();
  v55 = v107;
  v110 = v50;
  *&v109 = 0xD000000000000010;
  *(&v109 + 1) = 0x80000002170801D0;
  sub_2166EF9C4(&v109, v108);
  swift_isUniquelyReferenced_nonNull_native();
  v107 = v55;
  sub_2166EF9D4();
  v56 = v107;
  sub_2167DE934(v52, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v13) == 1)
  {
    sub_2166997CC(v22, &qword_27CABA820);
  }

  else
  {
    v57 = v85;
    (*(v85 + 32))(v15, v22, v13);
    v58 = sub_217005DE4();
    v110 = v50;
    *&v109 = v58;
    *(&v109 + 1) = v59;
    sub_2166EF9C4(&v109, v108);
    swift_isUniquelyReferenced_nonNull_native();
    v107 = v56;
    sub_2166EF9D4();
    v56 = v107;
    (*(v57 + 8))(v15, v13);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v60 = sub_21700CF84();
  v61 = __swift_project_value_buffer(v60, qword_280E73DB0);
  v62 = v93;
  MEMORY[0x21CE9DD70](0xD000000000000011, 0x8000000217082580, 0x6E6F74747562, 0xE600000000000000, v56, v61);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v63 = v94;
  v64 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_217013DA0;
  v66 = v65 + v64;
  v67 = v95;
  (*(v63 + 16))(v66, v62, v95);
  v68 = v91;
  v69 = v105;
  v70 = v92;
  (*(v91 + 16))(v90, v105, v92);
  v71 = v87;
  sub_21700D244();
  (*(v63 + 8))(v62, v67);
  (*(v68 + 8))(v69, v70);
  sub_2166997CC(v104, &qword_27CABA820);
  v72 = v96;
  (*(v88 + 32))(v96, v71, v89);
  type metadata accessor for MenuActionType();
  v73 = v84;
  swift_storeEnumTagMultiPayload();
  v74 = v98;
  sub_2167DEF84(v72, v98, type metadata accessor for OpenSocialProfileEditAction);
  v75 = v102;
  v76 = v101;
  v77 = v103;
  (*(v102 + 16))(v101, v100, v103);
  v78 = (*(v97 + 80) + 24) & ~*(v97 + 80);
  v79 = (v9 + *(v75 + 80) + v78) & ~*(v75 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v106;
  sub_2167DEF84(v74, v80 + v78, type metadata accessor for OpenSocialProfileEditAction);
  (*(v75 + 32))(v80 + v79, v76, v77);
  v81 = type metadata accessor for MenuAction();
  v82 = (v73 + *(v81 + 20));
  *v82 = sub_2167DEFE0;
  v82[1] = v80;
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v81);
}

uint64_t sub_2167DA7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v296 = a3;
  v310 = a4;
  v282 = type metadata accessor for UnblockUserAction();
  v286 = *(v282 - 8);
  v8 = MEMORY[0x28223BE20](v282);
  v288 = &v247 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = v9;
  MEMORY[0x28223BE20](v8);
  v283 = (&v247 - v10);
  v277 = type metadata accessor for FollowUserAction();
  v263 = *(v277 - 8);
  v11 = MEMORY[0x28223BE20](v277);
  v285 = &v247 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = v12;
  MEMORY[0x28223BE20](v11);
  v279 = (&v247 - v13);
  v275 = type metadata accessor for CancelFollowUserRequestAction();
  v278 = *(v275 - 8);
  v14 = MEMORY[0x28223BE20](v275);
  v281 = &v247 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = v15;
  MEMORY[0x28223BE20](v14);
  v276 = (&v247 - v16);
  v301 = sub_2170075A4();
  v17 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v309 = v18;
  v19 = &v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for UnfollowUserAction();
  v272 = *(v270 - 8);
  v20 = MEMORY[0x28223BE20](v270);
  v274 = &v247 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = v21;
  MEMORY[0x28223BE20](v20);
  v271 = &v247 - v22;
  v308 = sub_21700CFB4();
  v307 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v306 = &v247 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = sub_217005EF4();
  v295 = *(v298 - 8);
  v24 = MEMORY[0x28223BE20](v298);
  v258 = &v247 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v257 = &v247 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v256 = &v247 - v29;
  MEMORY[0x28223BE20](v28);
  v255 = &v247 - v30;
  v305 = sub_21700D704();
  v304 = *(v305 - 8);
  v31 = MEMORY[0x28223BE20](v305);
  v269 = &v247 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v294 = &v247 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v293 = &v247 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v300 = &v247 - v38;
  MEMORY[0x28223BE20](v37);
  v268 = &v247 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v262 = &v247 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v292 = &v247 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v261 = &v247 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v291 = &v247 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v260 = &v247 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v290 = &v247 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v259 = &v247 - v54;
  MEMORY[0x28223BE20](v53);
  v289 = &v247 - v55;
  v303 = sub_21700D284();
  v302 = *(v303 - 8);
  v56 = MEMORY[0x28223BE20](v303);
  v267 = &v247 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v266 = &v247 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v265 = &v247 - v61;
  MEMORY[0x28223BE20](v60);
  v264 = &v247 - v62;
  v63 = type metadata accessor for SocialProfileDescriptor(0);
  v64 = (a1 + v63[5]);
  v65 = *v64;
  v66 = v64[1];
  sub_21700DF14();
  v299 = v65;
  v67 = sub_216F0706C();
  v68 = v67;
  v297 = v5;
  v69 = *(v5 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_userSocialProfileCoordinator);
  if ((v69[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded] & 1) == 0)
  {
    if (sub_216F07FB4(v67) == 0x64656B636F6C62 && v70 == 0xE700000000000000)
    {
    }

    else
    {
      v72 = sub_21700F7D4();

      if ((v72 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  if (*(a1 + v63[9]) != 1)
  {
LABEL_24:

    v105 = type metadata accessor for MenuAction();
    v106 = v310;

    return __swift_storeEnumTagSinglePayload(v106, 1, 1, v105);
  }

  v252 = a2;
  v253 = v19;
  v254 = v17;
  v73 = (a1 + v63[6]);
  v74 = v73[1];
  if (!v74)
  {
    goto LABEL_21;
  }

  v75 = *v73;
  v76 = HIBYTE(v74) & 0xF;
  v250 = v75;
  v77 = v75 & 0xFFFFFFFFFFFFLL;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v76 = v77;
  }

  if (!v76)
  {
    goto LABEL_21;
  }

  v78 = v63;
  v79 = v66;
  v80 = a1;
  v81 = *&v69[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v82 = *(v81 + 16);
  v83 = v69;
  os_unfair_lock_lock(v82);
  v84 = *&v83[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v85 = *(v81 + 16);
  a1 = v80;
  v66 = v79;
  v63 = v78;
  v86 = v84;
  os_unfair_lock_unlock(v85);

  if (!v84)
  {
    goto LABEL_21;
  }

  v87 = sub_2167DEA8C(v86);
  if (!v88)
  {
    goto LABEL_21;
  }

  if (v250 == v87 && v74 == v88)
  {

    goto LABEL_51;
  }

  v90 = sub_21700F7D4();

  if (v90)
  {
LABEL_51:
    v246 = type metadata accessor for MenuAction();
    __swift_storeEnumTagSinglePayload(v310, 1, 1, v246);
  }

LABEL_21:
  v251 = v66;
  switch(v68)
  {
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_217013D90;
      *(v91 + 32) = 0x4E6E6F6974636573;
      *(v91 + 40) = 0xEB00000000656D61;
      v92 = (v296 + *(type metadata accessor for MenuConfiguration(0) + 36));
      v93 = v92[1];
      v94 = MEMORY[0x277D837D0];
      *(v91 + 48) = *v92;
      *(v91 + 56) = v93;
      *(v91 + 72) = v94;
      *(v91 + 80) = 1684957547;
      *(v91 + 120) = v94;
      *(v91 + 88) = 0xE400000000000000;
      strcpy((v91 + 96), "socialProfile");
      *(v91 + 110) = -4864;
      sub_21700DF14();
      v95 = sub_21700E384();
      v96 = v289;
      v97 = v298;
      __swift_storeEnumTagSinglePayload(v289, 1, 1, v298);
      v98 = v268;
      sub_21700D6F4();
      v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
      *&v313 = v95;
      sub_2166EF9C4(&v313, &v312);
      v99 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v99;
      sub_2166EF9D4();
      v100 = v311;
      v314 = v94;
      *&v313 = 0x7463656C6573;
      *(&v313 + 1) = 0xE600000000000000;
      sub_2166EF9C4(&v313, &v312);
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v100;
      sub_2166EF9D4();
      v101 = v311;
      v102 = v259;
      sub_2167DE934(v96, v259);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v102, 1, v97);
      v104 = v254;
      if (EnumTagSinglePayload == 1)
      {
        sub_2166997CC(v102, &qword_27CABA820);
      }

      else
      {
        v199 = v295;
        v200 = v255;
        (*(v295 + 32))(v255, v102, v97);
        v201 = sub_217005DE4();
        v314 = v94;
        *&v313 = v201;
        *(&v313 + 1) = v202;
        sub_2166EF9C4(&v313, &v312);
        swift_isUniquelyReferenced_nonNull_native();
        v311 = v101;
        sub_2166EF9D4();
        v101 = v311;
        (*(v199 + 8))(v200, v97);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v203 = sub_21700CF84();
      v204 = __swift_project_value_buffer(v203, qword_280E73DB0);
      v205 = v306;
      MEMORY[0x21CE9DD70](0x6E556C6169636F73, 0xEE00776F6C6C6F66, 0x6E6F74747562, 0xE600000000000000, v101, v204);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
      v206 = v307;
      v207 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      v208 = swift_allocObject();
      *(v208 + 16) = xmmword_217013DA0;
      v209 = v208 + v207;
      v210 = v308;
      (*(v206 + 16))(v209, v205, v308);
      v211 = v304;
      v212 = v305;
      (*(v304 + 16))(v300, v98, v305);
      v213 = v264;
      sub_21700D244();
      (*(v206 + 8))(v205, v210);
      (*(v211 + 8))(v98, v212);
      sub_2166997CC(v289, &qword_27CABA820);
      v214 = v271;
      v215 = &v271[*(v270 + 20)];
      v216 = v251;
      *v215 = v299;
      *(v215 + 1) = v216;
      (*(v302 + 32))(v214, v213, v303);
      type metadata accessor for MenuActionType();
      v167 = v310;
      swift_storeEnumTagMultiPayload();
      v217 = v274;
      sub_2167DEF84(v214, v274, type metadata accessor for UnfollowUserAction);
      v218 = v253;
      v219 = v301;
      (*(v104 + 16))(v253, v252, v301);
      v220 = (*(v272 + 80) + 24) & ~*(v272 + 80);
      v221 = (v273 + *(v104 + 80) + v220) & ~*(v104 + 80);
      v173 = swift_allocObject();
      *(v173 + 16) = v297;
      sub_2167DEF84(v217, v173 + v220, type metadata accessor for UnfollowUserAction);
      (*(v104 + 32))(v173 + v221, v218, v219);
      v174 = type metadata accessor for MenuAction();
      v175 = (v167 + *(v174 + 20));
      v176 = sub_2167DEE9C;
      break;
    case 1:
      v135 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_217013D90;
      *(v136 + 32) = 0x4E6E6F6974636573;
      *(v136 + 40) = 0xEB00000000656D61;
      v137 = (v296 + *(type metadata accessor for MenuConfiguration(0) + 36));
      v138 = v137[1];
      v139 = MEMORY[0x277D837D0];
      *(v136 + 48) = *v137;
      *(v136 + 56) = v138;
      *(v136 + 72) = v139;
      *(v136 + 80) = 1684957547;
      *(v136 + 120) = v139;
      *(v136 + 88) = 0xE400000000000000;
      strcpy((v136 + 96), "socialProfile");
      *(v136 + 110) = -4864;
      sub_21700DF14();
      v140 = sub_21700E384();
      v141 = v291;
      v142 = v298;
      __swift_storeEnumTagSinglePayload(v291, 1, 1, v298);
      sub_21700D6F4();
      v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
      *&v313 = v140;
      sub_2166EF9C4(&v313, &v312);
      v143 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v143;
      sub_2166EF9D4();
      v144 = v311;
      v314 = v139;
      *&v313 = 0x7463656C6573;
      *(&v313 + 1) = 0xE600000000000000;
      sub_2166EF9C4(&v313, &v312);
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v144;
      sub_2166EF9D4();
      v145 = v311;
      v146 = v261;
      sub_2167DE934(v141, v261);
      v147 = __swift_getEnumTagSinglePayload(v146, 1, v142);
      v148 = v254;
      v249 = v63;
      v248 = v135;
      if (v147 == 1)
      {
        sub_2166997CC(v146, &qword_27CABA820);
      }

      else
      {
        v222 = v295;
        v223 = v257;
        (*(v295 + 32))(v257, v146, v142);
        v224 = sub_217005DE4();
        v314 = v139;
        *&v313 = v224;
        *(&v313 + 1) = v225;
        sub_2166EF9C4(&v313, &v312);
        swift_isUniquelyReferenced_nonNull_native();
        v311 = v145;
        sub_2166EF9D4();
        v145 = v311;
        (*(v222 + 8))(v223, v142);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v226 = sub_21700CF84();
      v227 = __swift_project_value_buffer(v226, qword_280E73DB0);
      v228 = v306;
      MEMORY[0x21CE9DD70](0x6F466C6169636F73, 0xEC000000776F6C6CLL, 0x6E6F74747562, 0xE600000000000000, v145, v227);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
      v229 = v307;
      v230 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      v231 = swift_allocObject();
      *(v231 + 16) = xmmword_217013DA0;
      v232 = v231 + v230;
      v233 = v308;
      (*(v229 + 16))(v232, v228, v308);
      v234 = v304;
      v235 = v294;
      v236 = v305;
      (*(v304 + 16))(v300, v294, v305);
      v237 = v266;
      sub_21700D244();
      (*(v229 + 8))(v228, v233);
      (*(v234 + 8))(v235, v236);
      sub_2166997CC(v291, &qword_27CABA820);
      v238 = *(v248 + v249[10]);
      v239 = v279;
      v240 = v251;
      *v279 = v299;
      *(v239 + 8) = v240;
      (*(v302 + 32))(v239 + *(v277 + 24), v237, v303);
      *(v239 + 16) = v238;
      type metadata accessor for MenuActionType();
      v167 = v310;
      swift_storeEnumTagMultiPayload();
      v241 = v285;
      sub_2167DEF84(v239, v285, type metadata accessor for FollowUserAction);
      v242 = v253;
      v243 = v301;
      (*(v148 + 16))(v253, v252, v301);
      v244 = (*(v263 + 80) + 24) & ~*(v263 + 80);
      v245 = (v284 + *(v148 + 80) + v244) & ~*(v148 + 80);
      v173 = swift_allocObject();
      *(v173 + 16) = v297;
      sub_2167DEF84(v241, v173 + v244, type metadata accessor for FollowUserAction);
      (*(v148 + 32))(v173 + v245, v242, v243);
      v174 = type metadata accessor for MenuAction();
      v175 = (v167 + *(v174 + 20));
      v176 = sub_2167DECCC;
      break;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_217013D90;
      *(v108 + 32) = 0x4E6E6F6974636573;
      *(v108 + 40) = 0xEB00000000656D61;
      v109 = (v296 + *(type metadata accessor for MenuConfiguration(0) + 36));
      v110 = v109[1];
      v111 = MEMORY[0x277D837D0];
      *(v108 + 48) = *v109;
      *(v108 + 56) = v110;
      *(v108 + 72) = v111;
      *(v108 + 80) = 1684957547;
      *(v108 + 120) = v111;
      *(v108 + 88) = 0xE400000000000000;
      strcpy((v108 + 96), "socialProfile");
      *(v108 + 110) = -4864;
      sub_21700DF14();
      v112 = sub_21700E384();
      v113 = v290;
      v114 = v298;
      __swift_storeEnumTagSinglePayload(v290, 1, 1, v298);
      sub_21700D6F4();
      v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
      *&v313 = v112;
      sub_2166EF9C4(&v313, &v312);
      v115 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v115;
      sub_2166EF9D4();
      v116 = v311;
      v314 = v111;
      *&v313 = 0x7463656C6573;
      *(&v313 + 1) = 0xE600000000000000;
      sub_2166EF9C4(&v313, &v312);
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v116;
      sub_2166EF9D4();
      v117 = v311;
      v118 = v260;
      sub_2167DE934(v113, v260);
      v119 = __swift_getEnumTagSinglePayload(v118, 1, v114);
      v120 = v254;
      if (v119 == 1)
      {
        sub_2166997CC(v118, &qword_27CABA820);
      }

      else
      {
        v149 = v295;
        v150 = v256;
        (*(v295 + 32))(v256, v118, v114);
        v151 = sub_217005DE4();
        v314 = v111;
        *&v313 = v151;
        *(&v313 + 1) = v152;
        sub_2166EF9C4(&v313, &v312);
        swift_isUniquelyReferenced_nonNull_native();
        v311 = v117;
        sub_2166EF9D4();
        v117 = v311;
        (*(v149 + 8))(v150, v114);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v153 = sub_21700CF84();
      v154 = __swift_project_value_buffer(v153, qword_280E73DB0);
      v155 = v306;
      MEMORY[0x21CE9DD70](0xD000000000000012, 0x8000000217082560, 0x6E6F74747562, 0xE600000000000000, v117, v154);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
      v156 = v307;
      v157 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      v158 = swift_allocObject();
      *(v158 + 16) = xmmword_217013DA0;
      v159 = v158 + v157;
      v160 = v308;
      (*(v156 + 16))(v159, v155, v308);
      v161 = v304;
      v162 = v293;
      v163 = v305;
      (*(v304 + 16))(v300, v293, v305);
      v164 = v265;
      sub_21700D244();
      (*(v156 + 8))(v155, v160);
      (*(v161 + 8))(v162, v163);
      sub_2166997CC(v290, &qword_27CABA820);
      v165 = v276;
      v166 = v251;
      *v276 = v299;
      *(v165 + 8) = v166;
      (*(v302 + 32))(v165 + *(v275 + 20), v164, v303);
      type metadata accessor for MenuActionType();
      v167 = v310;
      swift_storeEnumTagMultiPayload();
      v168 = v281;
      sub_2167DEF84(v165, v281, type metadata accessor for CancelFollowUserRequestAction);
      v169 = v253;
      v170 = v301;
      (*(v120 + 16))(v253, v252, v301);
      v171 = (*(v278 + 80) + 24) & ~*(v278 + 80);
      v172 = (v280 + *(v120 + 80) + v171) & ~*(v120 + 80);
      v173 = swift_allocObject();
      *(v173 + 16) = v297;
      sub_2167DEF84(v168, v173 + v171, type metadata accessor for CancelFollowUserRequestAction);
      (*(v120 + 32))(v173 + v172, v169, v170);
      v174 = type metadata accessor for MenuAction();
      v175 = (v167 + *(v174 + 20));
      v176 = sub_2167DEDB4;
      break;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_217013D90;
      *(inited + 32) = 0x4E6E6F6974636573;
      *(inited + 40) = 0xEB00000000656D61;
      v122 = (v296 + *(type metadata accessor for MenuConfiguration(0) + 36));
      v123 = v122[1];
      v124 = MEMORY[0x277D837D0];
      *(inited + 48) = *v122;
      *(inited + 56) = v123;
      *(inited + 72) = v124;
      *(inited + 80) = 1684957547;
      *(inited + 120) = v124;
      *(inited + 88) = 0xE400000000000000;
      strcpy((inited + 96), "socialProfile");
      *(inited + 110) = -4864;
      sub_21700DF14();
      v125 = sub_21700E384();
      v126 = v292;
      v127 = v298;
      __swift_storeEnumTagSinglePayload(v292, 1, 1, v298);
      v128 = v269;
      sub_21700D6F4();
      v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
      *&v313 = v125;
      sub_2166EF9C4(&v313, &v312);
      v129 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v129;
      sub_2166EF9D4();
      v130 = v311;
      v314 = v124;
      *&v313 = 0x7463656C6573;
      *(&v313 + 1) = 0xE600000000000000;
      sub_2166EF9C4(&v313, &v312);
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v130;
      sub_2166EF9D4();
      v131 = v311;
      v132 = v262;
      sub_2167DE934(v126, v262);
      v133 = __swift_getEnumTagSinglePayload(v132, 1, v127);
      v134 = v254;
      if (v133 == 1)
      {
        sub_2166997CC(v132, &qword_27CABA820);
      }

      else
      {
        v177 = v295;
        v178 = v258;
        (*(v295 + 32))(v258, v132, v127);
        v179 = sub_217005DE4();
        v314 = v124;
        *&v313 = v179;
        *(&v313 + 1) = v180;
        sub_2166EF9C4(&v313, &v312);
        swift_isUniquelyReferenced_nonNull_native();
        v311 = v131;
        sub_2166EF9D4();
        v131 = v311;
        (*(v177 + 8))(v178, v127);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v181 = sub_21700CF84();
      v182 = __swift_project_value_buffer(v181, qword_280E73DB0);
      v183 = v306;
      MEMORY[0x21CE9DD70](0x6E556C6169636F73, 0xED00006B636F6C62, 0x6E6F74747562, 0xE600000000000000, v131, v182);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
      v184 = v307;
      v185 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      v186 = swift_allocObject();
      *(v186 + 16) = xmmword_217013DA0;
      v187 = v186 + v185;
      v188 = v308;
      (*(v184 + 16))(v187, v183, v308);
      v189 = v304;
      v190 = v305;
      (*(v304 + 16))(v300, v128, v305);
      v191 = v267;
      sub_21700D244();
      (*(v184 + 8))(v183, v188);
      (*(v189 + 8))(v128, v190);
      sub_2166997CC(v292, &qword_27CABA820);
      v192 = v283;
      v193 = v251;
      *v283 = v299;
      *(v192 + 8) = v193;
      (*(v302 + 32))(v192 + *(v282 + 20), v191, v303);
      type metadata accessor for MenuActionType();
      v167 = v310;
      swift_storeEnumTagMultiPayload();
      v194 = v288;
      sub_2167DEF84(v192, v288, type metadata accessor for UnblockUserAction);
      v195 = v253;
      v196 = v301;
      (*(v134 + 16))(v253, v252, v301);
      v197 = (*(v286 + 80) + 24) & ~*(v286 + 80);
      v198 = (v287 + *(v134 + 80) + v197) & ~*(v134 + 80);
      v173 = swift_allocObject();
      *(v173 + 16) = v297;
      sub_2167DEF84(v194, v173 + v197, type metadata accessor for UnblockUserAction);
      (*(v134 + 32))(v173 + v198, v195, v196);
      v174 = type metadata accessor for MenuAction();
      v175 = (v167 + *(v174 + 20));
      v176 = sub_2167DEBE4;
      break;
    default:
      goto LABEL_51;
  }

  *v175 = v176;
  v175[1] = v173;
  __swift_storeEnumTagSinglePayload(v167, 0, 1, v174);
}

uint64_t sub_2167DCBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v95 = a3;
  v108 = a2;
  v8 = sub_2170075A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v107 = v10;
  v109 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for PromptBlockUserAction();
  v104 = *(v102 - 8);
  v11 = MEMORY[0x28223BE20](v102);
  v106 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v12;
  MEMORY[0x28223BE20](v11);
  v103 = (&v89 - v13);
  v114 = sub_21700CFB4();
  v101 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_217005EF4();
  v93 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v92 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_21700D704();
  v99 = *(v100 - 8);
  v16 = MEMORY[0x28223BE20](v100);
  v98 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v112 = &v89 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v94 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v116 = &v89 - v22;
  v97 = sub_21700D284();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v111 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SocialProfileDescriptor(0);
  v25 = a1;
  v26 = (a1 + *(v24 + 24));
  v27 = *v26;
  v28 = v26[1];
  if ((sub_216E1A4B8(*v26, v28) & 1) == 0)
  {
    v115 = v9;
    v91 = v8;
    v37 = a4;
    v38 = v5;
    v39 = *(v5 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_userSocialProfileCoordinator);
    v40 = *&v39[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v41 = *(v40 + 16);
    v42 = v39;
    os_unfair_lock_lock(v41);
    v43 = *&v42[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v44 = *(v40 + 16);
    v45 = v43;
    os_unfair_lock_unlock(v44);

    if (v43)
    {
      v46 = sub_2167DEA8C(v45);
      a4 = v37;
      v5 = v38;
      if (v28)
      {
        v8 = v91;
        v9 = v115;
        if (v47)
        {
          if (v27 == v46 && v28 == v47)
          {
            goto LABEL_18;
          }

          v49 = sub_21700F7D4();

          if (v49)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        v8 = v91;
        v9 = v115;
        if (!v47)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      a4 = v37;
      v5 = v38;
      v8 = v91;
      v9 = v115;
      if (!v28)
      {
        goto LABEL_19;
      }
    }
  }

  v29 = (v25 + *(v24 + 20));
  v30 = *v29;
  v31 = v29[1];
  sub_21700DF14();
  v32 = sub_216F0706C();
  if (sub_216F07FB4(v32) == 1718379891 && v33 == 0xE400000000000000)
  {
    goto LABEL_17;
  }

  v35 = v5;
  v36 = sub_21700F7D4();

  if (v36)
  {
    goto LABEL_18;
  }

  if (sub_216F07FB4(v32) == 0x64656B636F6C62 && v52 == 0xE700000000000000)
  {
LABEL_17:

LABEL_18:

LABEL_19:
    v50 = type metadata accessor for MenuAction();

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v50);
  }

  v54 = sub_21700F7D4();

  if (v54)
  {
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v56 = (v95 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v57 = v56[1];
  v58 = MEMORY[0x277D837D0];
  *(inited + 48) = *v56;
  *(inited + 56) = v57;
  *(inited + 72) = v58;
  *(inited + 80) = 1684957547;
  *(inited + 120) = v58;
  *(inited + 88) = 0xE400000000000000;
  strcpy((inited + 96), "socialProfile");
  *(inited + 110) = -4864;
  sub_21700DF14();
  v59 = sub_21700E384();
  v60 = v110;
  __swift_storeEnumTagSinglePayload(v116, 1, 1, v110);
  sub_21700D6F4();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v119 = v59;
  sub_2166EF9C4(&v119, v118);
  v61 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v117 = v61;
  sub_2166EF9D4();
  v62 = v117;
  v120 = v58;
  *&v119 = 0x7463656C6573;
  *(&v119 + 1) = 0xE600000000000000;
  sub_2166EF9C4(&v119, v118);
  swift_isUniquelyReferenced_nonNull_native();
  v117 = v62;
  sub_2166EF9D4();
  v63 = v117;
  v64 = v94;
  sub_2167DE934(v116, v94);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v60);
  v90 = v35;
  if (EnumTagSinglePayload == 1)
  {
    sub_2166997CC(v64, &qword_27CABA820);
  }

  else
  {
    v66 = v93;
    v67 = v60;
    v68 = v92;
    (*(v93 + 32))(v92, v64, v67);
    v69 = sub_217005DE4();
    v120 = MEMORY[0x277D837D0];
    *&v119 = v69;
    *(&v119 + 1) = v70;
    sub_2166EF9C4(&v119, v118);
    swift_isUniquelyReferenced_nonNull_native();
    v117 = v63;
    sub_2166EF9D4();
    v63 = v117;
    (*(v66 + 8))(v68, v110);
  }

  v115 = v9;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v71 = sub_21700CF84();
  v72 = __swift_project_value_buffer(v71, qword_280E73DB0);
  v73 = v113;
  MEMORY[0x21CE9DD70](0x6C426C6169636F73, 0xEB000000006B636FLL, 0x6E6F74747562, 0xE600000000000000, v63, v72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v74 = v101;
  v75 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_217013DA0;
  (*(v74 + 16))(v76 + v75, v73, v114);
  v77 = v99;
  v78 = v112;
  v79 = v100;
  (*(v99 + 16))(v98, v112, v100);
  sub_21700D244();
  (*(v74 + 8))(v113, v114);
  (*(v77 + 8))(v78, v79);
  sub_2166997CC(v116, &qword_27CABA820);
  v80 = v103;
  *v103 = v30;
  *(v80 + 8) = v31;
  (*(v96 + 32))(v80 + *(v102 + 20), v111, v97);
  type metadata accessor for MenuActionType();
  swift_storeEnumTagMultiPayload();
  v81 = v106;
  sub_2167DEF84(v80, v106, type metadata accessor for PromptBlockUserAction);
  v82 = v115;
  v83 = v109;
  (*(v115 + 16))(v109, v108, v8);
  v84 = (*(v104 + 80) + 24) & ~*(v104 + 80);
  v85 = (v105 + *(v82 + 80) + v84) & ~*(v82 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = v90;
  sub_2167DEF84(v81, v86 + v84, type metadata accessor for PromptBlockUserAction);
  (*(v82 + 32))(v86 + v85, v83, v8);
  v87 = type metadata accessor for MenuAction();
  v88 = (a4 + *(v87 + 20));
  *v88 = sub_2167DEAFC;
  v88[1] = v86;
  __swift_storeEnumTagSinglePayload(a4, 0, 1, v87);
}

uint64_t sub_2167DD8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a3;
  v8 = sub_2170075A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v121 = v10;
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for RemoveFollowerAction();
  v119 = *(v117 - 8);
  v12 = *(v119 + 64);
  v13 = MEMORY[0x28223BE20](v117);
  v120 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = (&v100 - v14);
  v116 = sub_21700CFB4();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v125 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = sub_217005EF4();
  v106 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21700D704();
  v113 = *(v114 - 8);
  v17 = MEMORY[0x28223BE20](v114);
  v112 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v124 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v107 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v123 = &v100 - v23;
  v111 = sub_21700D284();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v122 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v4 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_userSocialProfileCoordinator);
  if (v25[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded] == 1)
  {
    v26 = type metadata accessor for SocialProfileDescriptor(0);
    if (*(a1 + *(v26 + 36)) == 1)
    {
      v27 = v26;
      v101 = a2;
      v102 = v11;
      v103 = v9;
      v104 = v8;
      v28 = (a1 + *(v26 + 24));
      v29 = v28[1];
      if (!v29)
      {
        goto LABEL_14;
      }

      v30 = *v28;
      v31 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v31 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (!v31 || (v100 = a4, v32 = *&v25[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock], v33 = *(v32 + 16), v34 = v25, os_unfair_lock_lock(v33), v35 = *&v34[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile], v36 = *(v32 + 16), v37 = v35, v38 = v36, a4 = v100, os_unfair_lock_unlock(v38), v34, !v35) || (v39 = sub_2167DEA8C(v37), !v40))
      {
LABEL_14:
        v43 = (a1 + *(v27 + 20));
        v45 = *v43;
        v44 = v43[1];
        v46 = v4;
        v47 = *(v4 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_socialGraphController);
        sub_21700DF14();
        v48 = sub_216F0706C();
        if (sub_216F07FB4(v48) == 1718379891 && v49 == 0xE400000000000000)
        {
        }

        else
        {
          v51 = sub_21700F7D4();

          if ((v51 & 1) == 0)
          {
            v52 = *(v47 + 32);
            v53 = *(v52 + 16);
            sub_21700DF14();

            os_unfair_lock_lock(v53);
            v54 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_followersProfileIDs;
            swift_beginAccess();
            v55 = *(v47 + v54);
            sub_21700DF14();
            v56 = sub_216CE11AC(v45, v44, v55);

            if (v56)
            {
              v57 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_removedFollowersProfileIDs;
              swift_beginAccess();
              v58 = *(v47 + v57);
              sub_21700DF14();
              v59 = sub_216CE11AC(v45, v44, v58);

              os_unfair_lock_unlock(*(v52 + 16));

              if ((v59 & 1) == 0)
              {
                v100 = v44;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_217013D90;
                *(inited + 32) = 0x4E6E6F6974636573;
                *(inited + 40) = 0xEB00000000656D61;
                v61 = (v108 + *(type metadata accessor for MenuConfiguration(0) + 36));
                v62 = v61[1];
                v63 = MEMORY[0x277D837D0];
                *(inited + 48) = *v61;
                *(inited + 56) = v62;
                *(inited + 72) = v63;
                *(inited + 80) = 1684957547;
                *(inited + 120) = v63;
                *(inited + 88) = 0xE400000000000000;
                strcpy((inited + 96), "socialProfile");
                *(inited + 110) = -4864;
                sub_21700DF14();
                v64 = sub_21700E384();
                v65 = v123;
                v66 = v109;
                __swift_storeEnumTagSinglePayload(v123, 1, 1, v109);
                sub_21700D6F4();
                v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
                *&v128 = v64;
                sub_2166EF9C4(&v128, &v127);
                v67 = MEMORY[0x277D84F98];
                swift_isUniquelyReferenced_nonNull_native();
                v126 = v67;
                sub_2166EF9D4();
                v68 = v126;
                v129 = v63;
                *&v128 = 0x7463656C6573;
                *(&v128 + 1) = 0xE600000000000000;
                sub_2166EF9C4(&v128, &v127);
                swift_isUniquelyReferenced_nonNull_native();
                v126 = v68;
                sub_2166EF9D4();
                v69 = v126;
                v70 = v107;
                sub_2167DE934(v65, v107);
                if (__swift_getEnumTagSinglePayload(v70, 1, v66) == 1)
                {
                  sub_2166997CC(v70, &qword_27CABA820);
                }

                else
                {
                  v74 = v106;
                  v75 = v105;
                  (*(v106 + 32))(v105, v70, v66);
                  v76 = sub_217005DE4();
                  v129 = v63;
                  *&v128 = v76;
                  *(&v128 + 1) = v77;
                  sub_2166EF9C4(&v128, &v127);
                  swift_isUniquelyReferenced_nonNull_native();
                  v126 = v69;
                  sub_2166EF9D4();
                  v69 = v126;
                  (*(v74 + 8))(v75, v66);
                }

                v109 = v45;
                if (qword_280E46040 != -1)
                {
                  swift_once();
                }

                v78 = sub_21700CF84();
                v79 = __swift_project_value_buffer(v78, qword_280E73DB0);
                v80 = v125;
                MEMORY[0x21CE9DD70](0xD000000000000014, 0x8000000217082540, 0x6E6F74747562, 0xE600000000000000, v69, v79);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
                v81 = v115;
                v82 = (*(v115 + 80) + 32) & ~*(v115 + 80);
                v83 = swift_allocObject();
                *(v83 + 16) = xmmword_217013DA0;
                v84 = v83 + v82;
                v85 = v116;
                (*(v81 + 16))(v84, v80, v116);
                v86 = v113;
                v87 = v124;
                v88 = v114;
                (*(v113 + 16))(v112, v124, v114);
                sub_21700D244();
                (*(v81 + 8))(v125, v85);
                (*(v86 + 8))(v87, v88);
                sub_2166997CC(v123, &qword_27CABA820);
                v89 = v118;
                v90 = v100;
                *v118 = v109;
                *(v89 + 8) = v90;
                (*(v110 + 32))(v89 + *(v117 + 20), v122, v111);
                type metadata accessor for MenuActionType();
                swift_storeEnumTagMultiPayload();
                v125 = type metadata accessor for RemoveFollowerAction;
                v91 = v120;
                sub_2167DEF84(v89, v120, type metadata accessor for RemoveFollowerAction);
                v92 = v103;
                v93 = v102;
                v94 = v104;
                (*(v103 + 16))(v102, v101, v104);
                v95 = (*(v119 + 80) + 24) & ~*(v119 + 80);
                v96 = (v12 + *(v92 + 80) + v95) & ~*(v92 + 80);
                v97 = swift_allocObject();
                *(v97 + 16) = v46;
                sub_2167DEF84(v91, v97 + v95, v125);
                (*(v92 + 32))(v97 + v96, v93, v94);
                v98 = type metadata accessor for MenuAction();
                v99 = (a4 + *(v98 + 20));
                *v99 = sub_2167DE9A4;
                v99[1] = v97;
                __swift_storeEnumTagSinglePayload(a4, 0, 1, v98);
              }
            }

            else
            {
              os_unfair_lock_unlock(*(v52 + 16));
            }
          }
        }

        v71 = type metadata accessor for MenuAction();
        return __swift_storeEnumTagSinglePayload(a4, 1, 1, v71);
      }

      if (v30 == v39 && v29 == v40)
      {
      }

      else
      {
        v42 = sub_21700F7D4();

        if ((v42 & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v73 = type metadata accessor for MenuAction();

  return __swift_storeEnumTagSinglePayload(a4, 1, 1, v73);
}

uint64_t sub_2167DE658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v11[3] = a4(0);
  v11[4] = sub_2167DF0C8(a5, a6);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_2167DF110(a2, boxed_opaque_existential_1, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_2167DE72C()
{

  v1 = OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_2167DE7B4()
{
  sub_2167DE72C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SocialProfileMenuActionProvider()
{
  result = qword_280E2FD08;
  if (!qword_280E2FD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167DE860()
{
  sub_216692BBC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2167DE934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167DE9A4()
{
  v0 = type metadata accessor for RemoveFollowerAction();
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, type metadata accessor for RemoveFollowerAction, qword_280E3BA38, type metadata accessor for RemoveFollowerAction, v3);
}

uint64_t sub_2167DEA8C(void *a1)
{
  v2 = [a1 handle];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21700E514();

  return v3;
}

uint64_t sub_2167DEAFC()
{
  v0 = type metadata accessor for PromptBlockUserAction();
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, type metadata accessor for PromptBlockUserAction, qword_280E39F40, type metadata accessor for PromptBlockUserAction, v3);
}

uint64_t sub_2167DEBE4()
{
  v0 = type metadata accessor for UnblockUserAction();
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, type metadata accessor for UnblockUserAction, qword_280E3F590, type metadata accessor for UnblockUserAction, v3);
}

uint64_t sub_2167DECCC()
{
  v0 = type metadata accessor for FollowUserAction();
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, type metadata accessor for FollowUserAction, qword_280E412C0, type metadata accessor for FollowUserAction, v3);
}

uint64_t sub_2167DEDB4()
{
  v0 = type metadata accessor for CancelFollowUserRequestAction();
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, type metadata accessor for CancelFollowUserRequestAction, &qword_27CAB7F10, type metadata accessor for CancelFollowUserRequestAction, v3);
}

uint64_t sub_2167DEE9C()
{
  v0 = type metadata accessor for UnfollowUserAction();
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, type metadata accessor for UnfollowUserAction, qword_280E3E4B8, type metadata accessor for UnfollowUserAction, v3);
}

uint64_t sub_2167DEF84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2167DEFE0()
{
  v0 = type metadata accessor for OpenSocialProfileEditAction();
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, type metadata accessor for OpenSocialProfileEditAction, &qword_27CAB7F18, type metadata accessor for OpenSocialProfileEditAction, v3);
}

uint64_t sub_2167DF0C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2167DF110(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2167DF17C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = sub_21700EA34();
  v2[4] = sub_21700EA24();
  v4 = *(type metadata accessor for AddRecentSearchMusicItemAction() + 20);
  v7 = (*MEMORY[0x277D2A698] + MEMORY[0x277D2A698]);
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_2167DF260;

  return v7(a2 + v4);
}

uint64_t sub_2167DF260()
{
  *(*v1 + 48) = v0;

  v3 = sub_21700E9B4();
  if (v0)
  {
    v4 = sub_2167DF46C;
  }

  else
  {
    v4 = sub_2167DF3BC;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2167DF3BC()
{
  v1 = *(v0 + 16);

  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2167DF46C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2167DF4D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2166DFAC0;

  return sub_2167DF17C(a1, a2);
}

unint64_t sub_2167DF580(uint64_t a1)
{
  result = sub_2167B3CE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2167DF5AC()
{
  result = qword_280E47F78;
  if (!qword_280E47F78)
  {
    type metadata accessor for AddRecentSearchMusicItemAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E47F78);
  }

  return result;
}

uint64_t sub_2167DF650@<X0>(uint64_t a1@<X8>)
{
  v612 = a1;
  v581 = sub_217006F54();
  OUTLINED_FUNCTION_1();
  v551 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v579 = v3;
  v573 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F20);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  v575 = v5;
  v597 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F28);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  v576 = v7;
  OUTLINED_FUNCTION_4_1();
  v548 = type metadata accessor for ReportAConcern();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v539 = v9;
  v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F30);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_105();
  v550 = v11;
  OUTLINED_FUNCTION_4_1();
  v12 = type metadata accessor for ReportableMusicItem();
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v580 = v14;
  v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F38);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v596 = v16;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F40);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  v571 = v18;
  v595 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F48);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v574 = v20;
  v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F50);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_105();
  v598 = v22;
  v577 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F58);
  OUTLINED_FUNCTION_1();
  v549 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_105();
  v570 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB6AF0);
  OUTLINED_FUNCTION_36(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  v569 = v28;
  v578 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F60);
  OUTLINED_FUNCTION_1();
  v547 = v29;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  v567 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AE8);
  OUTLINED_FUNCTION_36(v32);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  v565 = v34;
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F68);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  v563 = v36;
  v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F70);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_105();
  v568 = v38;
  OUTLINED_FUNCTION_4_1();
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v592 = v40;
  v593 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_0();
  v561 = v41;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47_1();
  v566 = v43;
  OUTLINED_FUNCTION_4_1();
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v588 = v45;
  v589 = v44;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_0();
  v560 = v46;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47_1();
  v562 = v48;
  v599 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_105();
  v601 = v50;
  v585 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F80);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_105();
  v586 = v52;
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F88);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_105();
  v591 = v54;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F90);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_105();
  v603 = v56;
  OUTLINED_FUNCTION_4_1();
  v554 = sub_217007324();
  OUTLINED_FUNCTION_1();
  v546 = v57;
  v59 = *(v58 + 64);
  v61 = MEMORY[0x28223BE20](v60);
  v542 = &v538 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_47_1();
  v553 = v62;
  OUTLINED_FUNCTION_4_1();
  sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v558 = v64;
  v559 = v63;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_0();
  v557 = v65;
  OUTLINED_FUNCTION_4_1();
  v587 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v582 = v66;
  v68 = *(v67 + 64);
  v70 = MEMORY[0x28223BE20](v69);
  v555 = &v538 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v70);
  v73 = &v538 - v72;
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_47_1();
  v552 = v74;
  v75 = OUTLINED_FUNCTION_4_1();
  v76 = type metadata accessor for GoToArtistContext(v75);
  v77 = OUTLINED_FUNCTION_2(v76);
  v541 = v78;
  v80 = *(v79 + 64);
  v81 = MEMORY[0x28223BE20](v77);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_47_1();
  v544 = v82;
  OUTLINED_FUNCTION_4_1();
  v584 = type metadata accessor for ContentDescriptor();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_1_0();
  v545 = v84;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v85);
  v543 = &v538 - v86;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_47_1();
  v583 = v88;
  OUTLINED_FUNCTION_4_1();
  v608 = type metadata accessor for FlowActionPageView();
  OUTLINED_FUNCTION_1();
  v540 = v89;
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v609 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F98);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_105();
  v611 = v94;
  v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FA0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_105();
  v605 = v96;
  v610 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FA8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_105();
  v607 = v98;
  v99 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v99);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v100);
  v102 = &v538 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for FlowAction(0);
  sub_2167E70B8(v613 + *(v103 + 20), v102);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_79_6();
      OUTLINED_FUNCTION_60_0();
      sub_216683A80(v104, v105, v106);

      sub_216EB0ED4(v617 + 8);
      OUTLINED_FUNCTION_68_1();
      v107 = swift_allocObject();
      OUTLINED_FUNCTION_19_14(v107);
      *&v617[4] = sub_2167E7308;
      OUTLINED_FUNCTION_54_8(v108);
      v618 = 0;
      v623[80] = 0;
      v109 = OUTLINED_FUNCTION_85_2();
      sub_2166CBFB4(v109, v110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8040);
      sub_2166B5298();
      OUTLINED_FUNCTION_36_4();
      sub_2167E68E4(v111, v112);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_53_6();
      OUTLINED_FUNCTION_35_8();
      v624 = 0;
      v623[81] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8038);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8048);
      sub_2167E6124();
      sub_2167E61C8();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      v625 = 0;
      v621 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_58_3();
      sub_216683A80(v73, v611, &qword_27CAB7FA8);
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();
      sub_2166CE064(v617);
      OUTLINED_FUNCTION_36_4();
      sub_2166997CC(v113, v114);
      goto LABEL_36;
    case 1u:
      OUTLINED_FUNCTION_48_6();
      v326 = OUTLINED_FUNCTION_79_6();
      sub_216683A80(v326, v327, v328);
      v329 = OUTLINED_FUNCTION_7_4();
      sub_2167E70B8(v329, v330);
      v331 = (*(v540 + 80) + 56) & ~*(v540 + 80);
      v332 = swift_allocObject();
      v333 = *&v623[16];
      *(v332 + 16) = *v623;
      *(v332 + 32) = v333;
      *(v332 + 48) = *&v623[32];
      sub_2167E7110(&v538 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0), v332 + v331);
      type metadata accessor for BootstrapState();
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v334, v335);

      OUTLINED_FUNCTION_73_4();
      v336 = sub_217008684();
      v618 = 1;
      OUTLINED_FUNCTION_82_4(v336, v337);
      *&v623[34] = v617[0];
      *&v623[16] = sub_2167E6C8C;
      *&v623[24] = v332;
      *&v623[32] = 257;
      *&v623[50] = v617[1];
      *&v623[64] = *(&v617[1] + 14);
      v623[80] = v338;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8040);
      sub_2166B5298();
      OUTLINED_FUNCTION_73_4();
      sub_2167E68E4(v339, v340);
      OUTLINED_FUNCTION_50_6();
      sub_217009554();
      OUTLINED_FUNCTION_35_8();
      v624 = 0;
      v623[81] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8038);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8048);
      sub_2167E6124();
      sub_2167E61C8();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_73_4();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      v625 = 0;
      v621 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_73_4();
      sub_217009554();
      memcpy(v605, v623, 0x53uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      v341 = v607;
      sub_217009554();
      sub_216683A80(v341, v611, &qword_27CAB7FA8);
      OUTLINED_FUNCTION_57_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      sub_217009554();

      v342 = OUTLINED_FUNCTION_7_4();
      sub_2166997CC(v342, v343);
      v344 = v614;
      v345 = &qword_27CAB6AB8;
      return sub_2166997CC(v344, v345);
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0);
      v202 = v583;
      sub_2167E7110(v102, v583);
      OUTLINED_FUNCTION_42();
      sub_2167E389C(v203, v204, v205);

      memcpy(v617, v623, sizeof(v617));
      memcpy(v623, v617, 0x50uLL);
      v624 = 0;
      v623[80] = 0;
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v206, v207, v208);
      v209 = OUTLINED_FUNCTION_7_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v209);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8058);
      sub_2167E626C();
      sub_2167E68E4(&qword_280E3AB40, &qword_27CAB8058);
      OUTLINED_FUNCTION_50_6();
      sub_217009554();
      OUTLINED_FUNCTION_35_8();
      v625 = 1;
      v623[81] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8038);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8048);
      sub_2167E6124();
      sub_2167E61C8();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_82_2();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      LOBYTE(v614[0]) = 0;
      v621 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();
      OUTLINED_FUNCTION_42();
      sub_2166997CC(v210, v211);
      v212 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v212, v213);
      v214 = type metadata accessor for ContentDescriptor;
      goto LABEL_14;
    case 3u:
      sub_2167E7220(v102, type metadata accessor for FlowAction.Destination);
      LOBYTE(v622[0]) = 0;
      v620 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8050);
      sub_2167E626C();
      OUTLINED_FUNCTION_25_6();
      sub_217009554();
      memcpy(v586, v623, 0x51uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8088);
      sub_2167E65DC();
      sub_2167E6668();
      sub_217009554();
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v323, v324, v325);
      goto LABEL_50;
    case 5u:
      v202 = v544;
      sub_2167E7110(v102, v544);
      OUTLINED_FUNCTION_12_13();
      sub_2167E70B8(v202, &v538 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
      v215 = (*(v541 + 80) + 16) & ~*(v541 + 80);
      v216 = swift_allocObject();
      sub_2167E7110(&v538 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0), v216 + v215);
      type metadata accessor for BootstrapState();
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v217, v218);

      v219 = sub_217008684();
      v624 = 1;
      OUTLINED_FUNCTION_82_4(v219, v220);
      *&v623[34] = v617[0];
      *&v623[16] = sub_2167E6C60;
      *&v623[24] = v216;
      *&v623[32] = 257;
      *&v623[50] = v617[1];
      *&v623[64] = *(&v617[1] + 14);
      v623[80] = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8058);
      sub_2167E626C();
      sub_2167E68E4(&qword_280E3AB40, &qword_27CAB8058);
      OUTLINED_FUNCTION_50_6();
      sub_217009554();
      OUTLINED_FUNCTION_35_8();
      v625 = 1;
      v623[81] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8038);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8048);
      sub_2167E6124();
      sub_2167E61C8();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_82_2();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      LOBYTE(v614[0]) = 0;
      v621 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();

      v221 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v221, v222);
      v214 = type metadata accessor for GoToArtistContext;
LABEL_14:
      v223 = v214;
      v224 = v202;
      goto LABEL_58;
    case 6u:
      v265 = v102[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80E8) + 48)];
      v266 = v582;
      v267 = *(v582 + 32);
      v268 = v552;
      v269 = OUTLINED_FUNCTION_46_1();
      v270 = v587;
      v267(v269);
      OUTLINED_FUNCTION_12_13();
      v271 = v268;
      v272 = v270;
      (*(v266 + 16))(v73, v271, v270);
      v273 = (*(v266 + 80) + 16) & ~*(v266 + 80);
      v274 = v273 + v68;
      v275 = swift_allocObject();
      v276 = v275 + v273;
      v277 = v275;
      (v267)(v276, v73, v272);
      *(v277 + v274) = v265;
      type metadata accessor for BootstrapState();
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v278, v279);
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_82_2();
      v280 = sub_217008684();
      v624 = 0;
      OUTLINED_FUNCTION_82_4(v280, v281);
      *&v623[34] = v617[0];
      *&v623[16] = sub_2167E6BD0;
      *&v623[24] = v277;
      OUTLINED_FUNCTION_62_1(*v617, v617[1]);
      v623[80] = 0;

      OUTLINED_FUNCTION_74_4();
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v282, v283);
      sub_2166B5298();
      OUTLINED_FUNCTION_50_6();
      sub_217009554();
      OUTLINED_FUNCTION_35_8();
      v625 = 0;
      v623[81] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8068);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8078);
      sub_2167E637C();
      sub_2167E6420();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_82_2();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      LOBYTE(v614[0]) = 1;
      v621 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();

      v284 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v284, v285);
      return (*(v266 + 8))(v552, v587);
    case 7u:
      v346 = OUTLINED_FUNCTION_46_1();
      v347(v346);
      sub_21700BF44();
      if (!v348)
      {
        sub_21700BFF4();
      }

      v349 = v348;
      v350 = v611;
      v623[0] = 1;
      v351 = *(v584 + 24);
      v352 = sub_217005EF4();
      v353 = v583;
      OUTLINED_FUNCTION_88(v583 + v351, v354, v355, v352);
      OUTLINED_FUNCTION_47_6(19);
      *(v353 + 112) = 1;
      v356 = type metadata accessor for SongDetailPageIntent();
      v615 = v356;
      v616 = sub_2166B4AF8(&qword_27CAB80E0, type metadata accessor for SongDetailPageIntent);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v614);
      OUTLINED_FUNCTION_38_5(boxed_opaque_existential_1);
      v358 = *(v356 + 20);
      v359 = type metadata accessor for ReferrerInfo();
      OUTLINED_FUNCTION_88(v349 + v358, v360, v361, v359);
      v362 = OUTLINED_FUNCTION_79_6();
      sub_216683A80(v362, v363, v364);

      sub_216EB0ED4(v617 + 8);
      OUTLINED_FUNCTION_68_1();
      v365 = swift_allocObject();
      OUTLINED_FUNCTION_19_14(v365);
      *&v617[4] = sub_2167E7308;
      OUTLINED_FUNCTION_54_8(v366);
      v618 = 1;
      v623[80] = 1;
      v367 = OUTLINED_FUNCTION_85_2();
      sub_2166CBFB4(v367, v368);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8070);
      OUTLINED_FUNCTION_36_4();
      sub_2167E68E4(v369, v370);
      sub_2166B5298();
      OUTLINED_FUNCTION_50_6();
      sub_217009554();
      OUTLINED_FUNCTION_35_8();
      v624 = 0;
      v623[81] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8068);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8078);
      sub_2167E637C();
      sub_2167E6420();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      v625 = 1;
      v621 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      v371 = v607;
      OUTLINED_FUNCTION_58_3();
      sub_216683A80(v371, v350, &qword_27CAB7FA8);
      OUTLINED_FUNCTION_57_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_30_4();
      sub_2166CE064(v617);
      OUTLINED_FUNCTION_36_4();
      sub_2166997CC(v372, v373);
      OUTLINED_FUNCTION_4_18();
      sub_2167E7220(v353, v374);
      (*(v582 + 8))(v555, v587);
      v344 = v614;
      v345 = &qword_27CAB6AB8;
      return sub_2166997CC(v344, v345);
    case 8u:
      v375 = OUTLINED_FUNCTION_46_1();
      v376(v375);
      sub_2170073C4();
      if (!v377)
      {
        sub_217007374();
      }

      v378 = v377;
      v379 = v611;
      v623[0] = 1;
      v380 = *(v584 + 24);
      v381 = sub_217005EF4();
      v382 = v583;
      OUTLINED_FUNCTION_88(v583 + v380, v383, v384, v381);
      OUTLINED_FUNCTION_47_6(20);
      *(v382 + 112) = 1;
      v385 = type metadata accessor for TVEpisodeDetailPageIntent();
      v615 = v385;
      v616 = sub_2166B4AF8(&qword_27CAB80D8, type metadata accessor for TVEpisodeDetailPageIntent);
      v386 = __swift_allocate_boxed_opaque_existential_1(v614);
      OUTLINED_FUNCTION_38_5(v386);
      v387 = *(v385 + 20);
      v388 = type metadata accessor for ReferrerInfo();
      OUTLINED_FUNCTION_88(v378 + v387, v389, v390, v388);
      OUTLINED_FUNCTION_79_6();
      OUTLINED_FUNCTION_60_0();
      sub_216683A80(v391, v392, v393);

      sub_216EB0ED4(v617 + 8);
      OUTLINED_FUNCTION_68_1();
      v394 = swift_allocObject();
      OUTLINED_FUNCTION_19_14(v394);
      *&v617[4] = sub_2167E6BC8;
      OUTLINED_FUNCTION_54_8(v395);
      v618 = 0;
      v623[80] = 0;
      v396 = OUTLINED_FUNCTION_85_2();
      sub_2166CBFB4(v396, v397);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8080);
      sub_2166B5298();
      OUTLINED_FUNCTION_36_4();
      sub_2167E68E4(v398, v399);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_53_6();
      OUTLINED_FUNCTION_35_8();
      v624 = 1;
      v623[81] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8068);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8078);
      sub_2167E637C();
      sub_2167E6420();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      v625 = 1;
      v621 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      v400 = v607;
      OUTLINED_FUNCTION_58_3();
      sub_216683A80(v400, v379, &qword_27CAB7FA8);
      OUTLINED_FUNCTION_57_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      OUTLINED_FUNCTION_30_4();
      sub_2166CE064(v617);
      OUTLINED_FUNCTION_36_4();
      sub_2166997CC(v401, v402);
      OUTLINED_FUNCTION_4_18();
      sub_2167E7220(v382, v403);
      (*(v558 + 8))(v557, v559);
LABEL_36:
      v344 = v614;
      v345 = &qword_27CAB6AB8;
      return sub_2166997CC(v344, v345);
    case 9u:
      v459 = v546;
      v460 = *(v546 + 32);
      v461 = v553;
      v462 = v554;
      v460(v553, v102, v554);
      OUTLINED_FUNCTION_12_13();
      v463 = v542;
      (*(v459 + 16))(v542, v461, v462);
      v464 = (*(v459 + 80) + 16) & ~*(v459 + 80);
      v465 = swift_allocObject();
      v460(v465 + v464, v463, v462);
      type metadata accessor for BootstrapState();
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v466, v467);

      OUTLINED_FUNCTION_82_2();
      v468 = sub_217008684();
      v624 = 1;
      OUTLINED_FUNCTION_82_4(v468, v469);
      *&v623[34] = v617[0];
      *&v623[16] = sub_2167E6B9C;
      *&v623[24] = v465;
      OUTLINED_FUNCTION_62_1(*v617, v617[1]);
      v623[80] = 1;

      OUTLINED_FUNCTION_74_4();
      sub_2166B5298();
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v470, v471);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_53_6();
      OUTLINED_FUNCTION_35_8();
      v625 = 1;
      v623[81] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8068);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8078);
      sub_2167E637C();
      sub_2167E6420();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_82_2();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      LOBYTE(v614[0]) = 1;
      v621 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();

      v472 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v472, v473);
      return (*(v459 + 8))(v553, v554);
    case 0xCu:
      v448 = v551;
      v449 = OUTLINED_FUNCTION_46_1();
      v450(v449);
      OUTLINED_FUNCTION_12_13();
      sub_2167E4A98(*(v452 + v451), v623);
      if (v623[33])
      {
        v453 = 256;
      }

      else
      {
        v453 = 0;
      }

      *(v619 + 8) = *&v623[8];
      *&v619[0] = *v623;
      *(&v619[1] + 1) = *&v623[24];
      LOWORD(v619[2]) = v453 | v623[32];
      BYTE2(v619[2]) = 1;
      v613 = *&v623[8];

      OUTLINED_FUNCTION_74_4();
      v454 = OUTLINED_FUNCTION_54_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v454);
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v455, v456);
      OUTLINED_FUNCTION_77_3(&qword_280E3AB18);
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_76_4();
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v457);
      BYTE3(v619[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8000);
      sub_2167E5D04();
      sub_2167E5E38();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v458);
      BYTE4(v619[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF0);
      sub_2167E5C78();
      sub_2167E5EF4();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_18_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_22_17();

      return (*(v448 + 8))(v579, v581);
    case 0xDu:
      v168 = &v102[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0) + 48)];
      v170 = *v168;
      v169 = v168[1];
      v171 = OUTLINED_FUNCTION_46_1();
      v172(v171);
      v173 = sub_21700C0B4();
      if (!v174)
      {
        v173 = sub_21700C164();
      }

      v175 = v173;
      v176 = v174;
      v177 = OUTLINED_FUNCTION_86_4();
      v178 = v543;
      OUTLINED_FUNCTION_88(&v102[v543], v179, v180, v177);
      OUTLINED_FUNCTION_52_4(4);
      *(v178 + 88) = v175;
      *(v178 + 96) = v176;
      *(v178 + 104) = 0;
      if (v169)
      {
        v181 = v170;
      }

      else
      {
        v181 = 0;
      }

      *(v178 + 112) = 1;
      sub_2167E389C(v181, v169, __src);

      memcpy(v622, __src, 0x50uLL);
      LOBYTE(v617[0]) = 1;
      memcpy(v619, __src, sizeof(v619));
      v620 = 1;
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v182, v183, v184);
      v185 = OUTLINED_FUNCTION_7_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v185);
      sub_2167E626C();
      OUTLINED_FUNCTION_25_6();
      sub_217009554();
      memcpy(v586, v623, 0x51uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8088);
      sub_2167E65DC();
      sub_2167E6668();
      OUTLINED_FUNCTION_64_5();
      sub_217009554();
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v186, v187, v188);
      OUTLINED_FUNCTION_69_4();
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      OUTLINED_FUNCTION_72_4();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v189, v190);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v191, v192, v193);
      OUTLINED_FUNCTION_63_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v194, v195);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v196, v197, v198);
      OUTLINED_FUNCTION_57_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      OUTLINED_FUNCTION_30_4();
      sub_2166997CC(v622, &qword_27CAB8050);
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v199, v200);
      OUTLINED_FUNCTION_4_18();
      sub_2167E7220(v178, v201);
      v166 = *(v588 + 8);
      v167 = v562;
      goto LABEL_17;
    case 0xEu:
      v286 = &v102[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8) + 48)];
      v288 = *v286;
      v287 = v286[1];
      v289 = OUTLINED_FUNCTION_46_1();
      v290(v289);
      v291 = sub_21700C764();
      if (!v292)
      {
        v291 = sub_21700C7C4();
      }

      v293 = v291;
      v294 = v292;
      v295 = OUTLINED_FUNCTION_86_4();
      v296 = v545;
      OUTLINED_FUNCTION_88(&v102[v545], v297, v298, v295);
      OUTLINED_FUNCTION_52_4(14);
      *(v296 + 88) = v293;
      *(v296 + 96) = v294;
      *(v296 + 104) = 0;
      if (v287)
      {
        v299 = v288;
      }

      else
      {
        v299 = 0;
      }

      *(v296 + 112) = 1;
      sub_2167E389C(v299, v287, v623);

      memcpy(v619, v623, sizeof(v619));
      memcpy(v563, v623, 0x50uLL);
      swift_storeEnumTagMultiPayload();
      sub_216683A80(v619, v622, &qword_27CAB8050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8050);
      sub_2167E626C();
      v300 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8090);
      v301 = sub_2167E68E4(&qword_280E3AB60, &qword_27CAB8090);
      v622[0] = v300;
      v622[1] = v301;
      OUTLINED_FUNCTION_3_30();
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_64_5();
      sub_217009554();
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v302, v303, v304);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8088);
      sub_2167E65DC();
      sub_2167E6668();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v305, v306);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v307, v308, v309);
      OUTLINED_FUNCTION_69_4();
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      OUTLINED_FUNCTION_72_4();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v310, v311);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v312, v313, v314);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v315, v316);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v317, v318, v319);
      OUTLINED_FUNCTION_57_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      OUTLINED_FUNCTION_30_4();
      sub_2166997CC(v619, &qword_27CAB8050);
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v320, v321);
      OUTLINED_FUNCTION_4_18();
      sub_2167E7220(v296, v322);
      v166 = *(v592 + 8);
      v167 = v566;
      goto LABEL_26;
    case 0x10u:
      v233 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0) + 48);
      v234 = OUTLINED_FUNCTION_46_1();
      v235(v234);
      sub_2167C5834(&v102[v233], v565, &qword_27CAB6AE8);
      OUTLINED_FUNCTION_12_13();
      v236 = v567;
      v237 = OUTLINED_FUNCTION_64_5();
      sub_2167E3F24(v237, v238, v239, v240);
      v241 = v547;
      v242 = v578;
      (*(v547 + 16))(v563, v236, v578);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8050);
      sub_2167E626C();
      v243 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8090);
      v244 = sub_2167E68E4(&qword_280E3AB60, &qword_27CAB8090);
      *v623 = v243;
      *&v623[8] = v244;
      OUTLINED_FUNCTION_3_30();
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v245, v246, v247);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8088);
      sub_2167E65DC();
      sub_2167E6668();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v248, v249);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v250, v251, v252);
      OUTLINED_FUNCTION_69_4();
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v253, v254);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v255, v256, v257);
      OUTLINED_FUNCTION_63_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v258, v259);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();
      v260 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v260, v261);
      (*(v241 + 8))(v567, v242);
      sub_2166997CC(v565, &qword_27CAB6AE8);
      v166 = *(v588 + 8);
      v167 = v560;
LABEL_17:
      v262 = v589;
      return v166(v167, v262);
    case 0x11u:
      v134 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8) + 48);
      v135 = OUTLINED_FUNCTION_46_1();
      v136(v135);
      sub_2167C5834(&v102[v134], v569, qword_27CAB6AF0);
      OUTLINED_FUNCTION_12_13();
      v137 = v570;
      v138 = OUTLINED_FUNCTION_64_5();
      sub_2167E4474(v138, v139, v140, v141);
      v142 = v549;
      v143 = v577;
      (*(v549 + 16))(v571, v137, v577);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_74_4();
      v144 = OUTLINED_FUNCTION_54_3();
      v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v144);
      v146 = OUTLINED_FUNCTION_77_3(&qword_280E3AB58);
      *v623 = v145;
      *&v623[8] = v146;
      OUTLINED_FUNCTION_3_30();
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v147, v148);
      OUTLINED_FUNCTION_83_4();
      OUTLINED_FUNCTION_53_6();
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v149, v150, v151);
      swift_storeEnumTagMultiPayload();
      sub_2167E67E4();
      sub_2167E6938();
      OUTLINED_FUNCTION_67_4();
      v152 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v152, v153);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v154, v155, v156);
      OUTLINED_FUNCTION_69_4();
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v157, v158);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v159, v160, v161);
      OUTLINED_FUNCTION_63_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v162, v163);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();
      v164 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v164, v165);
      (*(v142 + 8))(v570, v143);
      sub_2166997CC(v569, qword_27CAB6AF0);
      v166 = *(v592 + 8);
      v167 = v561;
LABEL_26:
      v262 = v593;
      return v166(v167, v262);
    case 0x14u:
      v404 = v580;
      sub_2167E7110(v102, v580);
      sub_216B29C5C();
      if (v406 == -1)
      {
        v418 = 1;
        v417 = v550;
        v415 = v548;
      }

      else
      {
        v407 = v405;
        sub_216B29D34();
        sub_216B2A098();
        OUTLINED_FUNCTION_110();
        type metadata accessor for ReportAConcernPresenter();
        swift_allocObject();
        OUTLINED_FUNCTION_54_3();
        OUTLINED_FUNCTION_60_0();
        v413 = sub_2169C3904(v408, v409, v410, v411, v407, v412, v404);
        v414 = v539;
        *v539 = sub_2167D8C58;
        *(v414 + 8) = v413;
        *(v414 + 16) = 0;
        v415 = v548;
        v416 = *(v548 + 20);
        *(v414 + v416) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0);
        swift_storeEnumTagMultiPayload();
        v417 = v550;
        sub_2167E7110(v414, v550);
        v418 = 0;
      }

      __swift_storeEnumTagSinglePayload(v417, v418, 1, v415);
      sub_216683A80(v417, v575, &qword_27CAB7F30);
      swift_storeEnumTagMultiPayload();
      sub_2167E69C4();
      sub_2167E6A78();
      sub_217009554();
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v518, v519, v520);
      swift_storeEnumTagMultiPayload();
      sub_2167E67E4();
      sub_2167E6938();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v521, v522);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v523, v524, v525);
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v526, v527);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v528, v529, v530);
      OUTLINED_FUNCTION_46_1();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v531, v532);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v533, v534, v535);
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v536, v537);
      sub_2166997CC(v417, &qword_27CAB7F30);
      v223 = type metadata accessor for ReportableMusicItem;
      v224 = v580;
      goto LABEL_58;
    case 0x16u:
      v419 = *(v102 + 4);
      v420 = *(v102 + 5);
      OUTLINED_FUNCTION_12_13();
      v421 = swift_allocObject();
      v422 = *(v102 + 1);
      *(v421 + 16) = *v102;
      *(v421 + 32) = v422;
      *(v421 + 48) = v419;
      *(v421 + 56) = v420;
      type metadata accessor for BootstrapState();
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v423, v424);
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_82_2();
      v425 = sub_217008684();
      v426 = v571;
      *v571 = v425;
      v426[1] = v427;
      v426[2] = sub_2167E6B8C;
      v426[3] = v421;
      *(v426 + 16) = 257;
      swift_storeEnumTagMultiPayload();

      OUTLINED_FUNCTION_74_4();
      v428 = OUTLINED_FUNCTION_54_3();
      v429 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v428);
      v430 = OUTLINED_FUNCTION_77_3(&qword_280E3AB58);
      *v623 = v429;
      *&v623[8] = v430;
      OUTLINED_FUNCTION_3_30();
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v431, v432);
      OUTLINED_FUNCTION_83_4();
      OUTLINED_FUNCTION_53_6();
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v433, v434, v435);
      swift_storeEnumTagMultiPayload();
      sub_2167E67E4();
      sub_2167E6938();
      OUTLINED_FUNCTION_67_4();
      v436 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v436, v437);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v438, v439, v440);
      OUTLINED_FUNCTION_69_4();
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v441, v442);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v443, v444, v445);
      OUTLINED_FUNCTION_63_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v446, v447);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();

      v344 = OUTLINED_FUNCTION_15_8();
      return sub_2166997CC(v344, v345);
    case 0x17u:
      *v575 = *v102;
      swift_storeEnumTagMultiPayload();
      sub_2167E69C4();
      sub_2167E6A78();
      sub_217009554();
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v493, v494, v495);
      swift_storeEnumTagMultiPayload();
      sub_2167E67E4();
      sub_2167E6938();
      sub_217009554();
      OUTLINED_FUNCTION_42();
      sub_2166997CC(v496, v497);
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v498, v499, v500);
LABEL_50:
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      sub_217009554();
      OUTLINED_FUNCTION_42();
      sub_2166997CC(v501, v502);
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v503, v504, v505);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_42();
      sub_2166997CC(v506, v507);
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v508, v509, v510);
      OUTLINED_FUNCTION_57_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_22_17();
      OUTLINED_FUNCTION_42();
      return sub_2166997CC(v344, v345);
    case 0x19u:
      OUTLINED_FUNCTION_12_13();
      v483 = swift_allocObject();
      memcpy((v483 + 16), v102, 0x88uLL);
      type metadata accessor for BootstrapState();
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v484, v485);
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_82_2();
      v486 = sub_217008684();
      OUTLINED_FUNCTION_80_3(v486, v487);
      *&v619[1] = sub_2167E6B60;
      *(&v619[1] + 1) = v483;
      OUTLINED_FUNCTION_55_6();

      OUTLINED_FUNCTION_74_4();
      v488 = OUTLINED_FUNCTION_54_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v488);
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v489, v490);
      OUTLINED_FUNCTION_77_3(&qword_280E3AB18);
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_76_4();
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v491);
      BYTE3(v619[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8000);
      sub_2167E5D04();
      sub_2167E5E38();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v492);
      BYTE4(v619[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF0);
      sub_2167E5C78();
      sub_2167E5EF4();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_18_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_22_17();

      goto LABEL_55;
    case 0x1Au:
      v115 = *v102;
      OUTLINED_FUNCTION_12_13();
      type metadata accessor for BootstrapState();
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v116, v117);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_82_2();
      v118 = sub_217008684();
      OUTLINED_FUNCTION_80_3(v118, v119);
      *&v619[1] = sub_2167E6B58;
      *(&v619[1] + 1) = v115;
      OUTLINED_FUNCTION_55_6();

      OUTLINED_FUNCTION_74_4();
      v120 = OUTLINED_FUNCTION_54_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v120);
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v121, v122);
      OUTLINED_FUNCTION_77_3(&qword_280E3AB48);
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_76_4();
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v123);
      BYTE3(v619[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC8);
      sub_2167E5B18();
      sub_2167E5BD4();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v124);
      BYTE4(v619[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF0);
      sub_2167E5C78();
      sub_2167E5EF4();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_18_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_22_17();

    case 0x1Cu:
      OUTLINED_FUNCTION_12_13();
      *&v619[0] = *(v264 + v263);
      BYTE8(v619[0]) = 0;
      goto LABEL_53;
    case 0x1Du:
      OUTLINED_FUNCTION_12_13();
      *&v619[0] = *(v512 + v511);
      BYTE8(v619[0]) = 1;
LABEL_53:
      sub_2167E5D90();
      sub_2167E5DE4();
      swift_retain_n();
      OUTLINED_FUNCTION_25_6();
      sub_217009554();
      *&v619[0] = *v623;
      *(&v619[0] + 1) = v623[8];
      memset(&v619[1], 0, 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8000);
      sub_2167E5D04();
      sub_2167E5E38();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_23_5();
      sub_217009554();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v513);
      BYTE4(v619[2]) = 0;
      goto LABEL_54;
    case 0x1Fu:
      OUTLINED_FUNCTION_12_13();
      type metadata accessor for BootstrapState();
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v126, v127);

      OUTLINED_FUNCTION_51();
      v128 = sub_217008684();
      OUTLINED_FUNCTION_80_3(v128, v129);
      *&v619[1] = sub_2167E5108;
      *(&v619[1] + 1) = 0;
      LOWORD(v619[2]) = 257;
      BYTE2(v619[2]) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FD8);
      OUTLINED_FUNCTION_51();
      sub_2167E68E4(v130, v131);
      sub_2167E68E4(&qword_280E3AB48, &qword_27CAB7FD8);
      OUTLINED_FUNCTION_8_12();
      sub_217009554();
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v132);
      BYTE3(v619[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC8);
      sub_2167E5B18();
      sub_2167E5BD4();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_23_5();
      sub_217009554();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v133);
      BYTE4(v619[2]) = 1;
      goto LABEL_54;
    case 0x20u:
      OUTLINED_FUNCTION_12_13();
      type metadata accessor for BootstrapState();
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v225, v226);

      OUTLINED_FUNCTION_51();
      v227 = sub_217008684();
      OUTLINED_FUNCTION_80_3(v227, v228);
      *&v619[1] = sub_2167E5140;
      *(&v619[1] + 1) = 0;
      OUTLINED_FUNCTION_55_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FB0);
      OUTLINED_FUNCTION_51();
      sub_2167E68E4(v229, v230);
      OUTLINED_FUNCTION_25_6();
      sub_217009554();
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v231);
      BYTE3(v619[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC8);
      sub_2167E5B18();
      sub_2167E5BD4();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_23_5();
      sub_217009554();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v232);
      BYTE4(v619[2]) = 1;
LABEL_54:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF0);
      sub_2167E5C78();
      sub_2167E5EF4();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_23_5();
      sub_217009554();
      v514 = *&v623[32];
      v515 = v623[36];
      v516 = *&v623[16];
      v517 = v611;
      *v611 = *v623;
      v517[1] = v516;
      *(v517 + 8) = v514;
      *(v517 + 36) = v515;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      OUTLINED_FUNCTION_60_0();
      sub_217009554();
LABEL_55:

      break;
    default:
      memset(v619, 0, 34);
      BYTE2(v619[2]) = 1;
      v474 = OUTLINED_FUNCTION_7_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v474);
      OUTLINED_FUNCTION_42();
      sub_2167E68E4(v475, v476);
      OUTLINED_FUNCTION_25_6();
      sub_217009554();
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v477);
      BYTE3(v619[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC8);
      sub_2167E5B18();
      sub_2167E5BD4();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_42();
      sub_217009554();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v478);
      BYTE4(v619[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF0);
      sub_2167E5C78();
      sub_2167E5EF4();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_42();
      sub_217009554();
      v479 = *&v623[32];
      v480 = v623[36];
      v481 = *&v623[16];
      v482 = v611;
      *v611 = *v623;
      v482[1] = v481;
      *(v482 + 8) = v479;
      *(v482 + 36) = v480;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      OUTLINED_FUNCTION_49_2();
      sub_217009554();
      v223 = type metadata accessor for FlowAction.Destination;
      v224 = v102;
LABEL_58:
      result = sub_2167E7220(v224, v223);
      break;
  }

  return result;
}

uint64_t sub_2167E389C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FlowAction(0);
  sub_216B6FAAC(a1, a2, v4 + *(v8 + 36), &v23);
  if (*(&v24 + 1))
  {
    v26[0] = v23;
    v26[1] = v24;
    v27 = v25;
    v9 = *(v4 + *(type metadata accessor for FlowActionPageView() + 20));
    OUTLINED_FUNCTION_27_8();
    sub_216683A80(v10, v11, v12);

    sub_216EB0ED4(v28);
    sub_2166997CC(v26, &qword_27CAB6AB8);
    v18 = v28[1];
    v19 = v28[0];
    v13 = v29;
    OUTLINED_FUNCTION_68_1();
    result = swift_allocObject();
    *(result + 16) = v20;
    *(result + 32) = v21;
    v16 = v18;
    v15 = v19;
    *(result + 48) = v22;
    v17 = sub_2167E7308;
  }

  else
  {
    sub_2166997CC(&v23, &qword_27CAB8140);
    v9 = 0;
    v17 = 0;
    result = 0;
    v13 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *a3 = v9;
  *(a3 + 8) = v15;
  *(a3 + 24) = v16;
  *(a3 + 40) = v13;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = v17;
  *(a3 + 72) = result;
  return result;
}

double sub_2167E3A0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8108);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  sub_2167E70B8(a2, a3);
  *(a3 + *(type metadata accessor for GoToArtistViewModel() + 20)) = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8110);
  swift_storeEnumTagMultiPayload();
  sub_216683A80(v11, v9, &qword_27CAB8108);

  sub_21700AEA4();
  sub_2166997CC(v11, &qword_27CAB8108);
  v13 = *(v12 + 40);
  v15[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118);
  sub_21700AEA4();
  result = *&v16;
  *(a3 + v13) = v16;
  return result;
}

double sub_2167E3BA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8120);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v19 - v12;
  v14 = sub_21700C084();
  (*(*(v14 - 8) + 16))(a4, a2, v14);
  v15 = type metadata accessor for GoToAlbumViewModel();
  *(a4 + *(v15 + 20)) = a3;
  *(a4 + *(v15 + 24)) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8128);
  swift_storeEnumTagMultiPayload();
  sub_216683A80(v13, v11, &qword_27CAB8120);

  sub_21700AEA4();
  sub_2166997CC(v13, &qword_27CAB8120);
  v17 = *(v16 + 40);
  v19[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118);
  sub_21700AEA4();
  result = *&v20;
  *(a4 + v17) = v20;
  return result;
}

double sub_2167E3D6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8130);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = sub_217007324();
  (*(*(v12 - 8) + 16))(a3, a2, v12);
  *(a3 + *(type metadata accessor for GoToTVShowViewModel() + 20)) = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8138);
  swift_storeEnumTagMultiPayload();
  sub_216683A80(v11, v9, &qword_27CAB8130);

  sub_21700AEA4();
  sub_2166997CC(v11, &qword_27CAB8130);
  v14 = *(v13 + 40);
  v16[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118);
  sub_21700AEA4();
  result = *&v17;
  *(a3 + v14) = v17;
  return result;
}

uint64_t sub_2167E3F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v38 = a1;
  v43 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AE8);
  v39 = *(v4 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v32 - v5;
  v35 = sub_21700C1E4();
  v6 = *(v35 - 8);
  v36 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = sub_21700DA84();
  v33 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  sub_21700DA74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  v21 = MEMORY[0x277D837D0];
  *(inited + 32) = 1701273968;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = v21;
  strcpy((inited + 48), "albumLibrary");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  v44 = sub_21700E384();
  sub_21700DA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  sub_21700DA24();
  (*(v10 + 8))(v12, v9);

  v22 = *(v14 + 8);
  v32 = v14 + 8;
  v34 = v22;
  v22(v17, v13);
  v23 = v8;
  v24 = v8;
  v25 = v35;
  (*(v6 + 16))(v24, v38, v35);
  v26 = v37;
  sub_216683A80(v41, v37, &qword_27CAB6AE8);
  v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = (v36 + *(v39 + 80) + v27) & ~*(v39 + 80);
  v29 = swift_allocObject();
  (*(v6 + 32))(v29 + v27, v23, v25);
  sub_2167C5834(v26, v29 + v28, &qword_27CAB6AE8);
  type metadata accessor for BootstrapState();
  sub_2166B4AF8(&qword_280E43828, type metadata accessor for BootstrapState);

  v44 = sub_217008684();
  v45 = v30;
  v46 = sub_2167E6D04;
  v47 = v29;
  v48 = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8090);
  sub_2167E68E4(&qword_280E3AB60, &qword_27CAB8090);
  sub_21700A1A4();

  return v34(v19, v33);
}

uint64_t sub_2167E4474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v38 = a1;
  v43 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB6AF0);
  v39 = *(v4 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v32 - v5;
  v35 = sub_21700C924();
  v6 = *(v35 - 8);
  v36 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = sub_21700DA84();
  v33 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  sub_21700DA74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  v21 = MEMORY[0x277D837D0];
  *(inited + 32) = 1701273968;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = v21;
  *(inited + 48) = 0x7473696C79616C70;
  *(inited + 56) = 0xEF7972617262694CLL;
  v44 = sub_21700E384();
  sub_21700DA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  sub_21700DA24();
  (*(v10 + 8))(v12, v9);

  v22 = *(v14 + 8);
  v32 = v14 + 8;
  v34 = v22;
  v22(v17, v13);
  v23 = v8;
  v24 = v8;
  v25 = v35;
  (*(v6 + 16))(v24, v38, v35);
  v26 = v37;
  sub_216683A80(v41, v37, qword_27CAB6AF0);
  v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = (v36 + *(v39 + 80) + v27) & ~*(v39 + 80);
  v29 = swift_allocObject();
  (*(v6 + 32))(v29 + v27, v23, v25);
  sub_2167C5834(v26, v29 + v28, qword_27CAB6AF0);
  type metadata accessor for BootstrapState();
  sub_2166B4AF8(&qword_280E43828, type metadata accessor for BootstrapState);

  v44 = sub_217008684();
  v45 = v30;
  v46 = sub_2167E6EBC;
  v47 = v29;
  v48 = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8098);
  sub_2167E68E4(&qword_280E3AB58, &qword_27CAB8098);
  sub_21700A1A4();

  return v34(v19, v33);
}

uint64_t sub_2167E49C8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for LibraryImportWebView(0) + 20);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0);
  swift_storeEnumTagMultiPayload();
  v7 = swift_allocObject();
  memcpy((v7 + 16), a2, 0x88uLL);
  *(v7 + 152) = a1;
  *a3 = sub_2167E7050;
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  sub_2167E705C(a2, v9);
}

uint64_t sub_2167E4A98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v32 = a1;
  v31 = type metadata accessor for RoutedPageIntent();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v31);
  v6 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  sub_217006F14();
  v18 = sub_217005EF4();
  if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
  {
    v30 = v3;
    sub_217006F24();
    v19 = sub_217007114();
    if (__swift_getEnumTagSinglePayload(v11, 1, v19) == 1)
    {
      sub_2166997CC(v11, &qword_27CAB81B0);
      v20 = 1;
    }

    else
    {
      sub_217007104();
      (*(*(v19 - 8) + 8))(v11, v19);
      v20 = 0;
    }

    __swift_storeEnumTagSinglePayload(v17, v20, 1, v18);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v18);
    v3 = v30;
    if (EnumTagSinglePayload != 1)
    {
      sub_2166997CC(v15, &qword_27CABA820);
    }
  }

  else
  {
    (*(*(v18 - 8) + 32))(v17, v15, v18);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  }

  sub_216683A80(v17, &v8[*(v31 + 20)], &qword_27CABA820);
  v22 = type metadata accessor for ReferrerInfo();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v22);
  sub_2167E70B8(v8, v6);
  v23 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v24 = swift_allocObject();
  sub_2167E7110(v6, v24 + v23);
  type metadata accessor for BootstrapState();
  sub_2166B4AF8(&qword_280E43828, type metadata accessor for BootstrapState);

  v25 = sub_217008684();
  v27 = v26;
  sub_2167E7220(v8, type metadata accessor for RoutedPageIntent);
  result = sub_2166997CC(v17, &qword_27CABA820);
  *a2 = v25;
  *(a2 + 8) = v27;
  *(a2 + 16) = sub_2167E7168;
  *(a2 + 24) = v24;
  *(a2 + 32) = 257;
  return result;
}

uint64_t sub_2167E4EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for MusicStackAuthority();
  sub_2166B4AF8(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
  v6 = sub_217008CF4();
  *a3 = a2;
  a3[1] = a1;
  a3[2] = v6;
  a3[3] = v7;
}

double sub_2167E4F80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_216683A80(a2, v12, &qword_27CAB6AB8);
  sub_216EB0ED4(v13);
  LOBYTE(v9[0]) = 1;
  sub_21700AEA4();
  v5 = *(&v10[0] + 1);
  *a3 = v10[0];
  *(a3 + 8) = v5;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_216683A80(v10, v9, &qword_27CAB8100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8100);
  sub_21700AEA4();
  sub_2166997CC(v10, &qword_27CAB8100);
  sub_216683A80(v12, v10, &qword_27CAB6AB8);
  type metadata accessor for ChartsPageView.ChartsPagePresenter();
  swift_allocObject();

  v9[0] = sub_216DEBAE0(v10, a1);
  sub_21700AEA4();
  sub_2166997CC(v12, &qword_27CAB6AB8);
  v6 = *(&v10[0] + 1);
  *(a3 + 96) = *&v10[0];
  *(a3 + 104) = v6;
  result = *v13;
  v8 = v13[1];
  *(a3 + 112) = v13[0];
  *(a3 + 128) = v8;
  *(a3 + 144) = v14;
  return result;
}

uint64_t sub_2167E5108@<X0>(void *a1@<X8>)
{

  return sub_216C2EAE0(v2, a1);
}

uint64_t sub_2167E5140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MusicStackAuthority();
  sub_2166B4AF8(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
  v4 = sub_217008CF4();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = sub_2167E7274;
  *(a2 + 32) = a1;
  *(a2 + 40) = 0;
  return swift_retain_n();
}

void sub_2167E51E4(uint64_t a1, uint64_t a2)
{
  *(&v10 + 1) = type metadata accessor for RoutedPageIntent();
  v11 = sub_2166B4AF8(&qword_27CAB81B8, type metadata accessor for RoutedPageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  sub_2167E70B8(a2, boxed_opaque_existential_1);
  v12 = 0u;
  v13 = 0u;
  LOWORD(v14) = 1;

  sub_216CCC700(&v9, a1, &v12, 0, 0, v5, v6, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2167E52BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8150);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = sub_21700C1E4();
  (*(*(v14 - 8) + 16))(a4, a2, v14);
  v15 = type metadata accessor for LibraryAlbumViewModel();
  sub_216683A80(a3, a4 + *(v15 + 20), &qword_27CAB6AE8);
  *(a4 + *(v15 + 24)) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8158);
  swift_storeEnumTagMultiPayload();
  sub_216683A80(v13, v11, &qword_27CAB8150);

  sub_21700AEA4();
  sub_2166997CC(v13, &qword_27CAB8150);
  v17 = *(v16 + 40);
  v28[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118);
  sub_21700AEA4();
  *(a4 + v17) = v29;
  type metadata accessor for MusicEntityAnnotationWrapper();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v18 = v29;
  sub_2166B4AF8(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  v19 = sub_217007D54();
  v20 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8160) + 36));
  *v20 = v19;
  v20[1] = v18;
  type metadata accessor for ExplicitBadgingPresenter();
  sub_21700E094();
  v21 = v29;
  sub_2166B4AF8(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);
  v22 = sub_217007D54();
  v23 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8168) + 36));
  *v23 = v22;
  v23[1] = v21;
  type metadata accessor for PlaybackPresenter();
  sub_21700E094();
  v24 = v29;
  sub_2166B4AF8(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  v25 = sub_217007D54();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8170);
  v27 = (a4 + *(result + 36));
  *v27 = v25;
  v27[1] = v24;
  return result;
}

uint64_t sub_2167E5644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8178);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - v12;
  v14 = sub_21700C924();
  (*(*(v14 - 8) + 16))(a4, a2, v14);
  v15 = type metadata accessor for LibraryPlaylistViewModel();
  sub_216683A80(a3, a4 + *(v15 + 20), qword_27CAB6AF0);
  *(a4 + *(v15 + 24)) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8180);
  swift_storeEnumTagMultiPayload();
  sub_216683A80(v13, v11, &qword_27CAB8178);

  sub_21700AEA4();
  sub_2166997CC(v13, &qword_27CAB8178);
  v17 = *(v16 + 40);
  v31[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118);
  sub_21700AEA4();
  *(a4 + v17) = v32;
  type metadata accessor for MusicEntityAnnotationWrapper();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v18 = v32;
  sub_2166B4AF8(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper);
  v19 = sub_217007D54();
  v20 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8188) + 36));
  *v20 = v19;
  v20[1] = v18;
  type metadata accessor for ExplicitBadgingPresenter();
  sub_21700E094();
  v21 = v32;
  sub_2166B4AF8(&qword_280E36A20, type metadata accessor for ExplicitBadgingPresenter);
  v22 = sub_217007D54();
  v23 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8190) + 36));
  *v23 = v22;
  v23[1] = v21;
  type metadata accessor for PlaybackPresenter();
  sub_21700E094();
  v24 = v32;
  sub_2166B4AF8(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter);
  v25 = sub_217007D54();
  v26 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8198) + 36));
  *v26 = v25;
  v26[1] = v24;
  type metadata accessor for SingConnectedStatusWrapper();
  sub_21700E094();
  v27 = v32;
  sub_2166B4AF8(qword_280E33F98, type metadata accessor for SingConnectedStatusWrapper);
  v28 = sub_217007D54();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81A0);
  v30 = (a4 + *(result + 36));
  *v30 = v28;
  v30[1] = v27;
  return result;
}

uint64_t sub_2167E5A54()
{
  type metadata accessor for ObjectGraph();
  sub_2167E6FFC();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700A1E4();
}

unint64_t sub_2167E5B18()
{
  result = qword_280E2AB78;
  if (!qword_280E2AB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FC0);
    sub_2167E68E4(&qword_280E3AB20, &qword_27CAB7FD0);
    sub_2167E68E4(&qword_280E3AB48, &qword_27CAB7FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB78);
  }

  return result;
}

unint64_t sub_2167E5BD4()
{
  result = qword_27CAB7FE0;
  if (!qword_27CAB7FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FC8);
    sub_2167E68E4(&qword_27CAB7FB8, &qword_27CAB7FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7FE0);
  }

  return result;
}

unint64_t sub_2167E5C78()
{
  result = qword_280E2A9C8;
  if (!qword_280E2A9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FE8);
    sub_2167E5D04();
    sub_2167E5E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9C8);
  }

  return result;
}

unint64_t sub_2167E5D04()
{
  result = qword_280E2AB68;
  if (!qword_280E2AB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FF8);
    sub_2167E5D90();
    sub_2167E5DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB68);
  }

  return result;
}

unint64_t sub_2167E5D90()
{
  result = qword_280E38980[0];
  if (!qword_280E38980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E38980);
  }

  return result;
}

unint64_t sub_2167E5DE4()
{
  result = qword_280E2E000[0];
  if (!qword_280E2E000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2E000);
  }

  return result;
}

unint64_t sub_2167E5E38()
{
  result = qword_280E2AB80;
  if (!qword_280E2AB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8000);
    sub_2167E68E4(&qword_280E3AB28, &qword_27CAB8008);
    sub_2167E68E4(&qword_280E3AB18, &qword_27CAB8010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB80);
  }

  return result;
}

unint64_t sub_2167E5EF4()
{
  result = qword_27CAB8018;
  if (!qword_27CAB8018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FF0);
    sub_2167E5B18();
    sub_2167E5BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8018);
  }

  return result;
}

unint64_t sub_2167E5F80()
{
  result = qword_280E2A908;
  if (!qword_280E2A908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7FA8);
    sub_2167E600C();
    sub_2167E64C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A908);
  }

  return result;
}

unint64_t sub_2167E600C()
{
  result = qword_280E2A928;
  if (!qword_280E2A928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8028);
    sub_2167E6098();
    sub_2167E62F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A928);
  }

  return result;
}

unint64_t sub_2167E6098()
{
  result = qword_280E2A9C0;
  if (!qword_280E2A9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8030);
    sub_2167E6124();
    sub_2167E61C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9C0);
  }

  return result;
}

unint64_t sub_2167E6124()
{
  result = qword_280E2AB60;
  if (!qword_280E2AB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8038);
    sub_2166B5298();
    sub_2167E68E4(&qword_280E3AB50, &qword_27CAB8040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB60);
  }

  return result;
}

unint64_t sub_2167E61C8()
{
  result = qword_280E2AB40;
  if (!qword_280E2AB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8048);
    sub_2167E626C();
    sub_2167E68E4(&qword_280E3AB40, &qword_27CAB8058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB40);
  }

  return result;
}

unint64_t sub_2167E626C()
{
  result = qword_280E35B40;
  if (!qword_280E35B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8050);
    sub_2166B5298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E35B40);
  }

  return result;
}

unint64_t sub_2167E62F0()
{
  result = qword_280E2A9D0;
  if (!qword_280E2A9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8060);
    sub_2167E637C();
    sub_2167E6420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A9D0);
  }

  return result;
}

unint64_t sub_2167E637C()
{
  result = qword_280E2AB88;
  if (!qword_280E2AB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8068);
    sub_2167E68E4(&qword_280E3AB30, &qword_27CAB8070);
    sub_2166B5298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB88);
  }

  return result;
}

unint64_t sub_2167E6420()
{
  result = qword_280E2AB58;
  if (!qword_280E2AB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8078);
    sub_2166B5298();
    sub_2167E68E4(&qword_280E3AB38, &qword_27CAB8080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB58);
  }

  return result;
}

unint64_t sub_2167E64C4()
{
  result = qword_280E2A918;
  if (!qword_280E2A918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F90);
    sub_2167E6550();
    sub_2167E6758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A918);
  }

  return result;
}

unint64_t sub_2167E6550()
{
  result = qword_280E2A958;
  if (!qword_280E2A958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F88);
    sub_2167E65DC();
    sub_2167E6668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A958);
  }

  return result;
}

unint64_t sub_2167E65DC()
{
  result = qword_280E2AA08;
  if (!qword_280E2AA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8088);
    sub_2167E626C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA08);
  }

  return result;
}

unint64_t sub_2167E6668()
{
  result = qword_280E2AB48;
  if (!qword_280E2AB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F70);
    sub_2167E626C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8090);
    sub_2167E68E4(&qword_280E3AB60, &qword_27CAB8090);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AB48);
  }

  return result;
}

unint64_t sub_2167E6758()
{
  result = qword_280E2A960;
  if (!qword_280E2A960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F50);
    sub_2167E67E4();
    sub_2167E6938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A960);
  }

  return result;
}

unint64_t sub_2167E67E4()
{
  result = qword_280E2AA38;
  if (!qword_280E2AA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8098);
    sub_2167E68E4(&qword_280E3AB58, &qword_27CAB8098);
    swift_getOpaqueTypeConformance2();
    sub_2167E68E4(qword_280E3AB68, &qword_27CAB80A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA38);
  }

  return result;
}

uint64_t sub_2167E68E4(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_2167E6938()
{
  result = qword_280E2ABB0;
  if (!qword_280E2ABB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F28);
    sub_2167E69C4();
    sub_2167E6A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2ABB0);
  }

  return result;
}

unint64_t sub_2167E69C4()
{
  result = qword_280E42E00;
  if (!qword_280E42E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7F30);
    sub_2166B4AF8(qword_280E42E40, type metadata accessor for ReportAConcern);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E42E00);
  }

  return result;
}

unint64_t sub_2167E6A78()
{
  result = qword_280E3F8D0;
  if (!qword_280E3F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3F8D0);
  }

  return result;
}

unint64_t sub_2167E6ACC()
{
  result = qword_27CAB80A8;
  if (!qword_27CAB80A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8020);
    sub_2167E5C78();
    sub_2167E5EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB80A8);
  }

  return result;
}

double sub_2167E6BD0()
{
  OUTLINED_FUNCTION_66_5();
  v3 = sub_21700C084();
  OUTLINED_FUNCTION_2(v3);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_2167E3BA8(v0, v6, v7, v2);
}

double sub_2167E6C8C()
{
  OUTLINED_FUNCTION_66_5();
  v3 = type metadata accessor for FlowActionPageView();
  OUTLINED_FUNCTION_36(v3);

  return sub_2167E4F80(v0, v1 + 16, v2);
}

uint64_t objectdestroy_34Tm(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a1(0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = *(v11 + 64);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_2(v13);
  v15 = (v10 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  (*(v9 + 8))(v4 + v10, v7);
  v16 = a4(0);
  if (!__swift_getEnumTagSinglePayload(v4 + v15, 1, v16))
  {
    OUTLINED_FUNCTION_50();
    (*(v17 + 8))(v4 + v15, v16);
  }

  return swift_deallocObject();
}

uint64_t sub_2167E6EF8(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t))
{
  v8 = a2(0);
  OUTLINED_FUNCTION_2(v8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_36(v13);
  v15 = v5 + ((v10 + v12 + *(v14 + 80)) & ~*(v14 + 80));

  return a5(a1, v5 + v10, v15);
}

unint64_t sub_2167E6FFC()
{
  result = qword_27CAB81A8;
  if (!qword_27CAB81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB81A8);
  }

  return result;
}

uint64_t sub_2167E70B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_2167E7110(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_2167E7194(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OUTLINED_FUNCTION_66_5();
  v7 = v6(v5);
  OUTLINED_FUNCTION_36(v7);
  v9 = v4 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a3(v3, v9);
}

uint64_t sub_2167E7220(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2167E727C()
{
  result = qword_27CAB81C0;
  if (!qword_27CAB81C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB81C8);
    sub_2167E5F80();
    sub_2167E6ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB81C0);
  }

  return result;
}

uint64_t sub_2167E7340@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v56[4] = *MEMORY[0x277D85DE8];
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v46 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v47 = v17;
  v48 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for EngagementEventAction() + 20);
  v21 = sub_21700E384();
  v49 = a3;
  v50 = v21;
  *(a3 + v20) = v21;
  v53 = a1;
  sub_21700CE04();
  v22 = v54;
  (*(v7 + 16))(v10, v54, v5);
  v23 = v51;
  sub_21700D224();
  if (v23)
  {
    (*(v7 + 8))(v22, v5);
    (*(v12 + 8))(v53, v52);
  }

  v45 = v20;
  v25 = v12;
  v51 = v5;
  (*(v47 + 32))(v49, v19, v48);
  sub_2170058C4();
  swift_allocObject();
  v26 = sub_2170058B4();
  v27 = v46;
  sub_21700CE04();
  sub_2167E78CC();
  v28 = v52;
  v29 = sub_2170058A4();
  v44[1] = v26;
  v30 = *(v25 + 8);
  v32 = v31;
  v30(v27, v28);
  v33 = objc_opt_self();
  v34 = sub_217005F94();
  v56[0] = 0;
  v35 = [v33 JSONObjectWithData:v34 options:0 error:v56];

  if (!v35)
  {
    v38 = v56[0];
    sub_217005D34();

    swift_willThrow();
    sub_21677A524(v29, v32);

    v39 = OUTLINED_FUNCTION_1_18();
    v40(v39);
    v30(v53, v28);
    (*(v47 + 8))(v49, v48);
  }

  v36 = v56[0];
  sub_21700F1E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  if (swift_dynamicCast())
  {
    v37 = v55;
  }

  else
  {
    v37 = sub_21700E384();
  }

  sub_21677A524(v29, v32);

  v41 = v45;
  v42 = OUTLINED_FUNCTION_1_18();
  v43(v42);
  v30(v53, v28);

  *(v49 + v41) = v37;
  return result;
}

unint64_t sub_2167E78CC()
{
  result = qword_280E2A2B8;
  if (!qword_280E2A2B8)
  {
    sub_21700CDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A2B8);
  }

  return result;
}

uint64_t sub_2167E794C()
{
  result = sub_217009DE4();
  qword_280E73B50 = v1;
  return result;
}

uint64_t sub_2167E796C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_217009EB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E2C400 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_280E73B18);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_217009D84();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  if (qword_280E2C418 != -1)
  {
    swift_once();
  }

  v9 = sub_217009E04();
  sub_2167E7B50(v2);
  result = (*(v4 + 8))(v6, v3);
  qword_280E73B48 = v9;
  return result;
}

uint64_t sub_2167E7B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2167E7BE0(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

uint64_t type metadata accessor for DownloadStatusIndicator()
{
  result = qword_280E38690;
  if (!qword_280E38690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167E7CE0()
{
  sub_2167E7D64();
  if (v0 <= 0x3F)
  {
    sub_2167D1C30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2167E7D64()
{
  if (!qword_280E2A3F0)
  {
    sub_21700BBA4();
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2A3F0);
    }
  }
}

uint64_t sub_2167E7DD8@<X0>(uint64_t a1@<X8>)
{
  v190 = a1;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_105();
  v187 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v155 - v5;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81F8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v155 - v8;
  v10 = sub_217009314();
  v11 = OUTLINED_FUNCTION_0(v10, v197);
  v169 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v13);
  v14 = sub_217006614();
  v15 = OUTLINED_FUNCTION_0(v14, v198);
  v171 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v17);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8200);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8208);
  OUTLINED_FUNCTION_0(v20, &v199);
  v177 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v23);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8210);
  OUTLINED_FUNCTION_34();
  v25 = MEMORY[0x28223BE20](v24);
  v186 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v166 = &v155 - v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_70(&v155 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8218);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &v155 - v32;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8220);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8228);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v38);
  v39 = sub_2170099D4();
  v40 = OUTLINED_FUNCTION_0(v39, &v201);
  v184 = v41;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v42);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8230);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8238);
  OUTLINED_FUNCTION_0(v45, v193);
  v165 = v46;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8240);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81E0);
  v53 = MEMORY[0x28223BE20](v52 - 8);
  v55 = (&v155 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v53);
  v57 = &v155 - v56;
  sub_2166A6E54(v191, &v155 - v56, &qword_27CAB81E0);
  v58 = sub_21700BBA4();
  if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
  {
    goto LABEL_2;
  }

  v155 = v3;
  v156 = v6;
  v157 = v9;
  v161 = v49;
  v158 = v30;
  v160 = v36;
  v159 = v57;
  sub_2166A6E54(v57, v55, &qword_27CAB81E0);
  v66 = *(v58 - 8);
  v67 = (*(v66 + 88))(v55, v58);
  if (v67 == *MEMORY[0x277D2AFD8])
  {
    (*(v66 + 96))(v55, v58);
    v68 = *v55;
    if (qword_27CAB58E0 != -1)
    {
      OUTLINED_FUNCTION_10_10();
    }

    sub_21700AC54();
    (*(v171 + 104))(v173, *MEMORY[0x277D26A90], v172);
    LOBYTE(v196) = 0;
    v69 = v174;
    sub_217006604();
    type metadata accessor for DownloadStatusIndicator();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    sub_2170082C4();
    sub_21700B3B4();
    sub_2170083C4();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8258);
    OUTLINED_FUNCTION_5_18(v69 + *(v70 + 36));
    v71 = sub_217009C74();
    sub_217007F24();
    v72 = v175;
    v73 = v69 + *(v175 + 36);
    *v73 = v71;
    *(v73 + 8) = v74;
    *(v73 + 16) = v75;
    *(v73 + 24) = v76;
    *(v73 + 32) = v77;
    *(v73 + 40) = 0;
    v78 = v183;
    sub_2170099A4();
    v79 = sub_2167E9724();
    v80 = v176;
    sub_21700A784();
    OUTLINED_FUNCTION_67();
    v81(v78, v185);
    sub_216699778(v69, &qword_27CAB8200);
    OUTLINED_FUNCTION_19_15();
    sub_217009264();
    OUTLINED_FUNCTION_16_16();
    v155 = 30;
    v82 = OUTLINED_FUNCTION_14_11();
    v84 = v83;
    v86 = v85;
    v194 = v72;
    v195 = v79;
    OUTLINED_FUNCTION_4_19();
    v87 = v178;
    sub_21700A4E4();
    sub_21678817C(v82, v84, v86 & 1);

    OUTLINED_FUNCTION_67();
    v88(v80, v87);
    v89 = round(v68 * 100.0);
    if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v89 > -9.22337204e18)
    {
      if (v89 < 9.22337204e18)
      {
        v192 = v89;
        v194 = sub_21700F784();
        v195 = v90;
        MEMORY[0x21CE9F490](37, 0xE100000000000000);
        v91 = v166;
        v92 = v186;
        sub_217008954();

        sub_216699778(v92, &qword_27CAB8210);
        v93 = v168;
        sub_2170092D4();
        v94 = v167;
        sub_2170089A4();
        OUTLINED_FUNCTION_67();
        v95(v93, v170);
        sub_216699778(v91, &qword_27CAB8210);
        sub_2166A6E54(v94, v180, &qword_27CAB8210);
        swift_storeEnumTagMultiPayload();
        sub_2167E9218();
        sub_2167E962C();
        v96 = v182;
        sub_217009554();
        sub_2166A6E54(v96, v33, &qword_27CAB8228);
        OUTLINED_FUNCTION_20_12();
        OUTLINED_FUNCTION_1_19();
        sub_2167E98B4(v97, &qword_27CAB8228, &unk_217019238, v98);
        OUTLINED_FUNCTION_0_34();
        sub_2167E98B4(v99, v100, v101, v102);
        sub_217009554();
        sub_216699778(v96, &qword_27CAB8228);
        v103 = v94;
        v104 = &qword_27CAB8210;
LABEL_20:
        sub_216699778(v103, v104);
        v57 = v159;
        return sub_216699778(v57, &qword_27CAB81E0);
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v67 == *MEMORY[0x277D2AFE8])
  {
    sub_21700ADB4();
    v72 = v162;
    if (qword_280E2C458 == -1)
    {
LABEL_12:
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_23_6(KeyPath);
      sub_217009D94();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250);
      sub_2167E947C();
      sub_21700A304();

      if (qword_27CAB58E0 != -1)
      {
        OUTLINED_FUNCTION_10_10();
      }

      v106 = qword_27CAB81D8;
      v107 = swift_getKeyPath();
      v108 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248) + 36));
      *v108 = v107;
      v108[1] = v106;
      type metadata accessor for DownloadStatusIndicator();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
      sub_2170082C4();
      sub_21700B3B4();
      OUTLINED_FUNCTION_15_9();
      v109 = v163;
      OUTLINED_FUNCTION_5_18(v72 + *(v163 + 36));
      v110 = v183;
      sub_2170099A4();
      v111 = sub_2167E9310();
      v112 = v72;
      v113 = v164;
      sub_21700A784();
      OUTLINED_FUNCTION_67();
      v114(v110, v185);
      sub_216699778(v112, &qword_27CAB8230);
      sub_217009264();
      OUTLINED_FUNCTION_16_16();
      v155 = 38;
      v115 = OUTLINED_FUNCTION_14_11();
      v117 = v116;
      v119 = v118;
      v121 = v120;
      v194 = v109;
      v195 = v111;
      OUTLINED_FUNCTION_4_19();
      OUTLINED_FUNCTION_7_15();
      sub_21700A4E4();
      sub_21678817C(v115, v117, v119 & 1);

      OUTLINED_FUNCTION_67();
      v122(v113, v111);
      OUTLINED_FUNCTION_22_18(v109, &v200);
      swift_storeEnumTagMultiPayload();
      sub_2167E9218();
      sub_2167E962C();
      OUTLINED_FUNCTION_17_15();
      sub_217009554();
      v123 = &qword_27CAB8228;
      sub_2166A6E54(v121, v33, &qword_27CAB8228);
      OUTLINED_FUNCTION_20_12();
      OUTLINED_FUNCTION_1_19();
      sub_2167E98B4(v124, &qword_27CAB8228, &unk_217019238, v125);
      OUTLINED_FUNCTION_0_34();
      sub_2167E98B4(v126, v127, v128, v129);
LABEL_19:
      sub_217009554();
      sub_216699778(v121, v123);
      v103 = v109;
      v104 = &qword_27CAB8240;
      goto LABEL_20;
    }

LABEL_26:
    OUTLINED_FUNCTION_9_20();
    goto LABEL_12;
  }

  if (v67 == *MEMORY[0x277D2AFD0])
  {
    sub_21700ADB4();
    v130 = v33;
    if (qword_280E2C458 != -1)
    {
      OUTLINED_FUNCTION_9_20();
    }

    v131 = swift_getKeyPath();
    OUTLINED_FUNCTION_23_6(v131);
    sub_217009D94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8250);
    sub_2167E947C();
    v132 = v162;
    sub_21700A304();

    v133 = [objc_opt_self() tertiaryLabelColor];
    v134 = sub_21700AC44();
    v135 = swift_getKeyPath();
    v136 = (v132 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8248) + 36));
    *v136 = v135;
    v136[1] = v134;
    type metadata accessor for DownloadStatusIndicator();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40);
    sub_2170082C4();
    sub_21700B3B4();
    OUTLINED_FUNCTION_15_9();
    v109 = v163;
    OUTLINED_FUNCTION_5_18(v132 + *(v163 + 36));
    v137 = v183;
    sub_2170099A4();
    v138 = sub_2167E9310();
    v139 = v164;
    sub_21700A784();
    OUTLINED_FUNCTION_67();
    v140(v137, v185);
    sub_216699778(v132, &qword_27CAB8230);
    OUTLINED_FUNCTION_19_15();
    sub_217009264();
    OUTLINED_FUNCTION_16_16();
    v155 = 29;
    v141 = OUTLINED_FUNCTION_14_11();
    v143 = v142;
    v145 = v144;
    v121 = v146;
    v194 = v109;
    v195 = v138;
    OUTLINED_FUNCTION_4_19();
    OUTLINED_FUNCTION_7_15();
    sub_21700A4E4();
    sub_21678817C(v141, v143, v145 & 1);

    OUTLINED_FUNCTION_67();
    v147(v139, v138);
    OUTLINED_FUNCTION_22_18(v109, &v186);
    swift_storeEnumTagMultiPayload();
    sub_2167E9218();
    sub_2167E9570();
    OUTLINED_FUNCTION_17_15();
    sub_217009554();
    v123 = &qword_27CAB81F8;
    sub_2166A6E54(v121, v130, &qword_27CAB81F8);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_19();
    sub_2167E98B4(v148, v149, v150, v151);
    OUTLINED_FUNCTION_0_34();
    sub_2167E98B4(v152, &qword_27CAB81F8, &unk_217019208, v153);
    goto LABEL_19;
  }

  (*(v66 + 8))(v55, v58);
  v57 = v159;
  v9 = v157;
  v6 = v156;
LABEL_2:
  v59 = v187;
  sub_21700A4F4();
  sub_2166A6E54(v59, v6, &qword_27CAB81E8);
  swift_storeEnumTagMultiPayload();
  sub_2167E9218();
  sub_2167E9570();
  sub_217009554();
  sub_2166A6E54(v9, v33, &qword_27CAB81F8);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_19();
  sub_2167E98B4(v60, v61, v62, v63);
  OUTLINED_FUNCTION_0_34();
  sub_2167E98B4(v64, &qword_27CAB81F8, &unk_217019208, v65);
  sub_217009554();
  sub_216699778(v9, &qword_27CAB81F8);
  sub_216699778(v59, &qword_27CAB81E8);
  return sub_216699778(v57, &qword_27CAB81E0);
}

unint64_t sub_2167E9218()
{
  result = qword_280E2B148;
  if (!qword_280E2B148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8230);
    sub_2167E9310();
    swift_getOpaqueTypeConformance2();
    sub_2167E986C(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B148);
  }

  return result;
}

unint64_t sub_2167E9310()
{
  result = qword_280E2AFD8;
  if (!qword_280E2AFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8230);
    sub_2167E939C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFD8);
  }

  return result;
}

unint64_t sub_2167E939C()
{
  result = qword_280E2B1A0;
  if (!qword_280E2B1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8250);
    sub_2167E947C();
    swift_getOpaqueTypeConformance2();
    sub_2167E9520(&qword_280E2A718, &qword_27CAB7BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1A0);
  }

  return result;
}

unint64_t sub_2167E947C()
{
  result = qword_280E2B0D0;
  if (!qword_280E2B0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8250);
    sub_2167E9520(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0D0);
  }

  return result;
}

uint64_t sub_2167E9520(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2167E9570()
{
  result = qword_280E2B078;
  if (!qword_280E2B078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB81E8);
    sub_2167E986C(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B078);
  }

  return result;
}

unint64_t sub_2167E962C()
{
  result = qword_280E2B150;
  if (!qword_280E2B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8200);
    sub_2167E9724();
    swift_getOpaqueTypeConformance2();
    sub_2167E986C(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B150);
  }

  return result;
}

unint64_t sub_2167E9724()
{
  result = qword_280E2B038;
  if (!qword_280E2B038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8200);
    sub_2167E97B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B038);
  }

  return result;
}

unint64_t sub_2167E97B0()
{
  result = qword_280E2B220;
  if (!qword_280E2B220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8258);
    sub_2167E986C(&qword_280E4A4A8, MEMORY[0x277D26A98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B220);
  }

  return result;
}

uint64_t sub_2167E986C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2167E98B4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    sub_2167E9218();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2167E9934()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  result = sub_21700AC44();
  qword_27CAB81D8 = result;
  return result;
}

uint64_t sub_2167E9974()
{
  result = sub_217009E94();
  qword_280E2C460 = result;
  return result;
}

unint64_t sub_2167E9994()
{
  result = qword_280E2A978;
  if (!qword_280E2A978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8260);
    sub_2167E98B4(&qword_280E2AA78, &qword_27CAB8228, &unk_217019238, sub_2167E962C);
    sub_2167E98B4(&qword_280E2AA80, &qword_27CAB81F8, &unk_217019208, sub_2167E9570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A978);
  }

  return result;
}

void sub_2167E9A78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  [a1 setBackButtonDisplayMode_];
  if ((a5 & 1) == 0)
  {
    [a1 setLargeTitleDisplayMode_];
    [a1 _setSupportsTwoLineLargeTitles_];
  }

  v9 = sub_2167EA10C(a1);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v18 = v10;
  sub_2167E9C44(&v18, a3, a4, a5 & 0x101);
  if (v11)
  {
    v12 = v11;
    v13 = [v11 setHidden_];
    v17 = v12;
    MEMORY[0x28223BE20](v13);
    v16[2] = &v17;
    sub_216CA1CB4(sub_2167EA204, v16, v10);
    if (v14)
    {
    }

    else
    {
      v15 = v12;
      MEMORY[0x21CE9F610]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      sub_21700E8C4();
      sub_2167EA16C(v18, a1);
    }
  }

  else
  {
  }
}

void sub_2167E9C44(void *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = *a1;
  v6 = sub_2166BF3C8(*a1);
  sub_21700DF14();
  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CEA0220](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    type metadata accessor for PageViewNavigationItemAdaptor.AccountBarButtonItem();
    if (swift_dynamicCastClass())
    {

      return;
    }
  }

  if ((a4 & 0x100) != 0)
  {
    type metadata accessor for PageViewNavigationItemAdaptor.AccountBarButtonItem();

    sub_2167E9D50(v10);
  }
}

id sub_2167E9D50(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SocialProfileButtonView(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 28);
  *&v7[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = 0;
  *v7 = sub_2167EA268;
  *(v7 + 1) = v9;
  v7[16] = 0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8268));

  v10 = sub_2170087C4();
  v11 = [objc_allocWithZone(v2) initWithCustomView_];
  [v11 _setPrefersNoPlatter_];

  return v11;
}

id sub_2167E9EA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageViewNavigationItemAdaptor.AccountBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2167E9EFC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PageViewNavigationItemAdaptor.AccountBarButtonItem();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2167E9F90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PageViewNavigationItemAdaptor.AccountBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2167E9FF0(void *a1, uint64_t a2)
{
  if (*(v2 + 18))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v2 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_2167E9A78(a1, a2, *v2, *(v2 + 8), v3 | v4 | *(v2 + 16));
}

uint64_t sub_2167EA034(char a1)
{
  if (a1 == 4)
  {
    return 0;
  }

  else
  {
    return qword_2170193C8[a1];
  }
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_2167EA078(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2167EA0B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2167EA10C(void *a1)
{
  v1 = [a1 rightBarButtonItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2167EA224();
  v3 = sub_21700E824();

  return v3;
}

void sub_2167EA16C(uint64_t a1, void *a2)
{
  sub_2167EA224();
  v3 = sub_21700E804();

  [a2 setRightBarButtonItems_];
}

unint64_t sub_2167EA224()
{
  result = qword_280E29D18;
  if (!qword_280E29D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E29D18);
  }

  return result;
}

_BYTE *_s7StylingOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2167EA350()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167EA3A4(char a1)
{
  if (a1)
  {
    return 0x6B63697262;
  }

  else
  {
    return 0x657261757173;
  }
}

uint64_t sub_2167EA3F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2167EA350();
  *a1 = result;
  return result;
}

uint64_t sub_2167EA428@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167EA3A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2167EA458()
{
  result = qword_27CAB8270;
  if (!qword_27CAB8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB8270);
  }

  return result;
}

uint64_t sub_2167EA4AC(_DWORD *a1, unsigned int a2)
{
  result = swift_getAssociatedTypeWitness();
  v5 = *(*(result - 8) + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(*(result - 8) + 84);
  }

  v7 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v15 = *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v5, result);
    }
  }

  else
  {
    v8 = ((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = a2 - v6 + 1;
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

    switch(v12)
    {
      case 1:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = v13 - 1;
        if (v9)
        {
          v14 = 0;
          LODWORD(v9) = *a1;
        }

        result = v6 + (v9 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}