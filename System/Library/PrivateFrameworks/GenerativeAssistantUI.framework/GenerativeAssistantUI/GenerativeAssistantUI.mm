void sub_24FE5242C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSiriSimpleActivationSourceClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SiriActivationLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SiriActivationLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27969A3A0;
    v7 = 0;
    SiriActivationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SiriActivationLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SiriSimpleActivationSource");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSiriSimpleActivationSourceClass_block_invoke_cold_1();
  }

  getSiriSimpleActivationSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SiriActivationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SiriActivationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24FE525FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void type metadata accessor for Key()
{
  if (!qword_27F3A46B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F3A46B8);
    }
  }
}

uint64_t sub_24FE526B8(uint64_t a1, id *a2)
{
  result = sub_24FEDE1D4();
  *a2 = 0;
  return result;
}

uint64_t sub_24FE52730(uint64_t a1, id *a2)
{
  v3 = sub_24FEDE1E4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24FE527B0@<X0>(uint64_t *a1@<X8>)
{
  sub_24FEDE1F4();
  v2 = sub_24FEDE1C4();

  *a1 = v2;
  return result;
}

uint64_t sub_24FE527F4()
{
  v1 = *v0;
  v2 = sub_24FEDE1F4();
  v3 = MEMORY[0x25305A4A0](v2);

  return v3;
}

uint64_t sub_24FE52830()
{
  v1 = *v0;
  sub_24FEDE1F4();
  sub_24FEDE254();
}

uint64_t sub_24FE52884()
{
  v1 = *v0;
  sub_24FEDE1F4();
  sub_24FEDE904();
  sub_24FEDE254();
  v2 = sub_24FEDE924();

  return v2;
}

uint64_t sub_24FE528F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24FEDE1F4();
  v6 = v5;
  if (v4 == sub_24FEDE1F4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24FEDE844();
  }

  return v9 & 1;
}

uint64_t sub_24FE52980@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24FEDE1C4();

  *a2 = v5;
  return result;
}

uint64_t sub_24FE529C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_24FEDE1F4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_24FE529F4(uint64_t a1)
{
  v2 = sub_24FE52B28(&qword_27F3A46D8);
  v3 = sub_24FE52B28(&qword_27F3A46E0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24FE52B28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FE52B9C()
{
  v1 = *v0;
  sub_24FEDE904();
  MEMORY[0x25305AB10](v1);
  return sub_24FEDE924();
}

uint64_t sub_24FE52C10()
{
  v1 = *v0;
  sub_24FEDE904();
  MEMORY[0x25305AB10](v1);
  return sub_24FEDE924();
}

unint64_t sub_24FE52C54()
{
  v1 = *v0;
  v2 = 0xD000000000000020;
  if (v1 != 5)
  {
    v2 = 0xD00000000000001CLL;
  }

  v3 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001CLL;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000022;
  if (v1 == 1)
  {
    v4 = 0xD000000000000019;
  }

  if (!*v0)
  {
    v4 = 0xD00000000000001FLL;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24FE52D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24FE564C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24FE52D58(uint64_t a1)
{
  v2 = sub_24FE54038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE52D94(uint64_t a1)
{
  v2 = sub_24FE54038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE52DE4(uint64_t a1)
{
  v2 = sub_24FE540F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE52E20(uint64_t a1)
{
  v2 = sub_24FE540F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE52E9C(uint64_t a1)
{
  v2 = sub_24FE542E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE52ED8(uint64_t a1)
{
  v2 = sub_24FE542E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE52F14(uint64_t a1)
{
  v2 = sub_24FE54390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE52F50(uint64_t a1)
{
  v2 = sub_24FE54390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE52F8C(uint64_t a1)
{
  v2 = sub_24FE543E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE52FC8(uint64_t a1)
{
  v2 = sub_24FE543E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE53004(uint64_t a1)
{
  v2 = sub_24FE541EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE53040(uint64_t a1)
{
  v2 = sub_24FE541EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE5307C(uint64_t a1)
{
  v2 = sub_24FE5448C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE530B8(uint64_t a1)
{
  v2 = sub_24FE5448C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24FE530F4()
{
  sub_24FEDE904();
  MEMORY[0x25305AB10](0);
  return sub_24FEDE924();
}

uint64_t sub_24FE53138()
{
  sub_24FEDE904();
  MEMORY[0x25305AB10](0);
  return sub_24FEDE924();
}

uint64_t sub_24FE53178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24FEDE844();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24FE531F8(uint64_t a1)
{
  v2 = sub_24FE54144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE53234(uint64_t a1)
{
  v2 = sub_24FE54144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeResultModels.encode(to:)(void *a1)
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A46E8, &qword_24FEDFB60);
  v81 = *(v82 - 8);
  v2 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v80 = &v65 - v3;
  v78 = type metadata accessor for GenerativeResultAttributionSnippetModel();
  v4 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v79 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A46F0, &qword_24FEDFB68);
  v76 = *(v77 - 8);
  v6 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v73 = &v65 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A46F8, &qword_24FEDFB70);
  v74 = *(v75 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v72 = &v65 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4700, &qword_24FEDFB78);
  v70 = *(v71 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v65 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4708, &qword_24FEDFB80);
  v68 = *(v66 - 8);
  v12 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  v88 = &v65 - v13;
  v67 = type metadata accessor for GenerativeMediaConfirmationSnippetModel(0);
  v14 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v87 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4710, &qword_24FEDFB88);
  v85 = *(v86 - 8);
  v16 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v65 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4718, &qword_24FEDFB90);
  v65 = *(v83 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x28223BE20](v83);
  v20 = &v65 - v19;
  v21 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for GenerativeResultModels();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4720, &qword_24FEDFB98);
  v92 = *(v91 - 8);
  v29 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  v31 = &v65 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE54038();
  v89 = v31;
  sub_24FEDE944();
  sub_24FE5408C(v90, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v90 = v21;
    v38 = v24;
    v39 = v84;
    v40 = v83;
    v41 = v85;
    v42 = v86;
    v43 = v88;
    if (!EnumCaseMultiPayload)
    {
      v53 = v38;
      sub_24FE555AC(v28, v38, type metadata accessor for GenerativeRichTextResultSnippetModel);
      LOBYTE(v98) = 0;
      sub_24FE5448C();
      v54 = v91;
      v55 = v89;
      sub_24FEDE7A4();
      sub_24FE557F4(&qword_27F3A4798, type metadata accessor for GenerativeRichTextResultSnippetModel);
      sub_24FEDE804();
      (*(v65 + 8))(v20, v40);
      sub_24FE544E0(v53, type metadata accessor for GenerativeRichTextResultSnippetModel);
      return (*(v92 + 8))(v55, v54);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v56 = v87;
      sub_24FE555AC(v28, v87, type metadata accessor for GenerativeMediaConfirmationSnippetModel);
      LOBYTE(v98) = 2;
      sub_24FE54390();
      v34 = v91;
      v35 = v89;
      sub_24FEDE7A4();
      sub_24FE557F4(&qword_27F3A4778, type metadata accessor for GenerativeMediaConfirmationSnippetModel);
      v57 = v66;
      sub_24FEDE804();
      (*(v68 + 8))(v43, v57);
      sub_24FE544E0(v56, type metadata accessor for GenerativeMediaConfirmationSnippetModel);
      return (*(v92 + 8))(v35, v34);
    }

    v45 = *v28;
    v44 = *(v28 + 1);
    LOBYTE(v98) = 1;
    sub_24FE543E4();
    v46 = v91;
    v47 = v89;
    sub_24FEDE7A4();
    *&v98 = v45;
    *(&v98 + 1) = v44;
    sub_24FE54438();
    sub_24FEDE804();
    (*(v41 + 8))(v39, v42);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v46 = v91;
    v47 = v89;
    if (EnumCaseMultiPayload != 5)
    {
      v62 = v79;
      sub_24FE555AC(v28, v79, type metadata accessor for GenerativeResultAttributionSnippetModel);
      LOBYTE(v98) = 6;
      sub_24FE540F0();
      v63 = v80;
      sub_24FEDE7A4();
      sub_24FE557F4(&qword_27F3A4738, type metadata accessor for GenerativeResultAttributionSnippetModel);
      v64 = v82;
      sub_24FEDE804();
      (*(v81 + 8))(v63, v64);
      sub_24FE544E0(v62, type metadata accessor for GenerativeResultAttributionSnippetModel);
      return (*(v92 + 8))(v47, v46);
    }

    v49 = *v28;
    v48 = *(v28 + 1);
    LOBYTE(v98) = 5;
    sub_24FE54144();
    v50 = v73;
    sub_24FEDE7A4();
    *&v98 = v49;
    *(&v98 + 1) = v48;
    sub_24FE54198();
    v51 = v77;
    sub_24FEDE804();
    (*(v76 + 8))(v50, v51);
LABEL_10:
    (*(v92 + 8))(v47, v46);
  }

  v34 = v91;
  v35 = v89;
  if (EnumCaseMultiPayload == 3)
  {
    LOBYTE(v98) = 3;
    sub_24FE542E8();
    v36 = v69;
    sub_24FEDE7A4();
    sub_24FE5433C();
    v37 = v71;
    sub_24FEDE804();
    (*(v70 + 8))(v36, v37);
    return (*(v92 + 8))(v35, v34);
  }

  v58 = *(v28 + 3);
  v100 = *(v28 + 2);
  v101 = v58;
  v102 = *(v28 + 4);
  v59 = *(v28 + 1);
  v98 = *v28;
  v99 = v59;
  LOBYTE(v93) = 4;
  sub_24FE541EC();
  v60 = v72;
  sub_24FEDE7A4();
  v95 = v100;
  v96 = v101;
  v97 = v102;
  v93 = v98;
  v94 = v99;
  sub_24FE54240();
  v61 = v75;
  sub_24FEDE804();
  (*(v74 + 8))(v60, v61);
  (*(v92 + 8))(v35, v34);
  return sub_24FE54294(&v98);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for GenerativeResultModels()
{
  result = qword_27F3A4830;
  if (!qword_27F3A4830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24FE54038()
{
  result = qword_27F3A4728;
  if (!qword_27F3A4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4728);
  }

  return result;
}

uint64_t sub_24FE5408C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeResultModels();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24FE540F0()
{
  result = qword_27F3A4730;
  if (!qword_27F3A4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4730);
  }

  return result;
}

unint64_t sub_24FE54144()
{
  result = qword_27F3A4740;
  if (!qword_27F3A4740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4740);
  }

  return result;
}

unint64_t sub_24FE54198()
{
  result = qword_27F3A4748;
  if (!qword_27F3A4748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4748);
  }

  return result;
}

unint64_t sub_24FE541EC()
{
  result = qword_27F3A4750;
  if (!qword_27F3A4750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4750);
  }

  return result;
}

unint64_t sub_24FE54240()
{
  result = qword_27F3A4758;
  if (!qword_27F3A4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4758);
  }

  return result;
}

unint64_t sub_24FE542E8()
{
  result = qword_27F3A4760;
  if (!qword_27F3A4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4760);
  }

  return result;
}

unint64_t sub_24FE5433C()
{
  result = qword_27F3A4768;
  if (!qword_27F3A4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4768);
  }

  return result;
}

unint64_t sub_24FE54390()
{
  result = qword_27F3A4770;
  if (!qword_27F3A4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4770);
  }

  return result;
}

unint64_t sub_24FE543E4()
{
  result = qword_27F3A4780;
  if (!qword_27F3A4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4780);
  }

  return result;
}

unint64_t sub_24FE54438()
{
  result = qword_27F3A4788;
  if (!qword_27F3A4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4788);
  }

  return result;
}

unint64_t sub_24FE5448C()
{
  result = qword_27F3A4790;
  if (!qword_27F3A4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4790);
  }

  return result;
}

uint64_t sub_24FE544E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t GenerativeResultModels.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47A0, &qword_24FEDFBA0);
  v123 = *(v122 - 8);
  v3 = (*(v123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v126 = &v101 - v4;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47A8, &qword_24FEDFBA8);
  v121 = *(v120 - 8);
  v5 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v132 = &v101 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47B0, &qword_24FEDFBB0);
  v118 = *(v119 - 8);
  v7 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v124 = &v101 - v8;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47B8, &qword_24FEDFBB8);
  v116 = *(v117 - 8);
  v9 = (*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v125 = &v101 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47C0, &qword_24FEDFBC0);
  v115 = *(v114 - 8);
  v11 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v131 = &v101 - v12;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47C8, &qword_24FEDFBC8);
  v113 = *(v112 - 8);
  v13 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v130 = &v101 - v14;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47D0, &qword_24FEDFBD0);
  v110 = *(v111 - 8);
  v15 = (*(v110 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v129 = &v101 - v16;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47D8, &qword_24FEDFBD8);
  v128 = *(v134 - 8);
  v17 = (*(v128 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v19 = &v101 - v18;
  v127 = type metadata accessor for GenerativeResultModels();
  v20 = *(*(v127 - 8) + 64);
  v21 = (MEMORY[0x28223BE20])();
  v109 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v107 = (&v101 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v108 = &v101 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v101 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v101 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v101 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v101 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v101 - v39;
  v42 = a1[3];
  v41 = a1[4];
  v135 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_24FE54038();
  v43 = v141;
  sub_24FEDE934();
  v141 = v43;
  if (v43)
  {
    goto LABEL_13;
  }

  v102 = v35;
  v104 = v38;
  v103 = v29;
  v105 = v32;
  v45 = v129;
  v44 = v130;
  v47 = v131;
  v46 = v132;
  v106 = v40;
  v48 = v133;
  v49 = sub_24FEDE794();
  if (*(v49 + 16) != 1 || (v50 = *(v49 + 32), v50 == 7))
  {
    v57 = sub_24FEDE664();
    v58 = swift_allocError();
    v60 = v59;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A47E0, &qword_24FEDFBE0) + 48);
    *v60 = v127;
    v62 = v134;
    sub_24FEDE714();
    sub_24FEDE654();
    (*(*(v57 - 8) + 104))(v60, *MEMORY[0x277D84160], v57);
    v141 = v58;
    swift_willThrow();
    goto LABEL_11;
  }

  if (*(v49 + 32) > 2u)
  {
    if (*(v49 + 32) <= 4u)
    {
      v51 = v128;
      if (v50 == 3)
      {
        LOBYTE(v136) = 3;
        sub_24FE542E8();
        v52 = v125;
        v53 = v134;
        v54 = v141;
        sub_24FEDE704();
        v141 = v54;
        if (v54)
        {
LABEL_31:
          (*(v51 + 8))(v19, v53);
          goto LABEL_12;
        }

        sub_24FE556BC();
        v55 = v117;
        v56 = v141;
        sub_24FEDE774();
        v141 = v56;
        if (v56)
        {
          (*(v116 + 8))(v52, v55);
          goto LABEL_31;
        }

        (*(v116 + 8))(v52, v55);
        (*(v51 + 8))(v19, v53);
        swift_unknownObjectRelease();
        v96 = v103;
      }

      else
      {
        LOBYTE(v136) = 4;
        sub_24FE541EC();
        v84 = v124;
        v53 = v134;
        v85 = v141;
        sub_24FEDE704();
        v141 = v85;
        if (v85)
        {
          goto LABEL_31;
        }

        sub_24FE55668();
        v91 = v119;
        v92 = v141;
        sub_24FEDE774();
        v93 = (v118 + 8);
        v94 = (v51 + 8);
        v141 = v92;
        if (v92)
        {
          (*v93)(v84, v91);
          (*v94)(v19, v134);
          goto LABEL_12;
        }

        (*v93)(v84, v91);
        (*v94)(v19, v134);
        swift_unknownObjectRelease();
        v99 = v139;
        v96 = v108;
        *(v108 + 2) = v138;
        *(v96 + 3) = v99;
        *(v96 + 4) = v140;
        v100 = v137;
        *v96 = v136;
        *(v96 + 1) = v100;
      }

      goto LABEL_44;
    }

    if (v50 == 5)
    {
      LOBYTE(v136) = 5;
      sub_24FE54144();
      v68 = v46;
      v53 = v134;
      v69 = v141;
      sub_24FEDE704();
      v51 = v128;
      v141 = v69;
      if (v69)
      {
        goto LABEL_31;
      }

      sub_24FE55614();
      v70 = v120;
      v71 = v141;
      sub_24FEDE774();
      v141 = v71;
      if (v71)
      {
        (*(v121 + 8))(v68, v70);
        goto LABEL_31;
      }

      (*(v121 + 8))(v68, v70);
      (*(v51 + 8))(v19, v53);
      swift_unknownObjectRelease();
      v98 = *(&v136 + 1);
      v96 = v107;
      *v107 = v136;
      v96[1] = v98;
      goto LABEL_44;
    }

    LOBYTE(v136) = 6;
    sub_24FE540F0();
    v72 = v134;
    v86 = v141;
    sub_24FEDE704();
    v141 = v86;
    if (!v86)
    {
      type metadata accessor for GenerativeResultAttributionSnippetModel();
      sub_24FE557F4(&qword_27F3A47E8, type metadata accessor for GenerativeResultAttributionSnippetModel);
      v87 = v109;
      v88 = v122;
      v89 = v126;
      v90 = v141;
      sub_24FEDE774();
      v141 = v90;
      if (v90)
      {
        (*(v123 + 8))(v89, v88);
        goto LABEL_35;
      }

      (*(v123 + 8))(v89, v88);
      (*(v128 + 8))(v19, v72);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v97 = v87;
LABEL_45:
      v78 = v106;
      sub_24FE555AC(v97, v106, type metadata accessor for GenerativeResultModels);
      v77 = v135;
      goto LABEL_46;
    }

LABEL_35:
    (*(v128 + 8))(v19, v72);
    goto LABEL_12;
  }

  if (!*(v49 + 32))
  {
    LOBYTE(v136) = 0;
    sub_24FE5448C();
    v72 = v134;
    v73 = v141;
    sub_24FEDE704();
    v141 = v73;
    if (!v73)
    {
      type metadata accessor for GenerativeRichTextResultSnippetModel(0);
      sub_24FE557F4(&qword_27F3A4818, type metadata accessor for GenerativeRichTextResultSnippetModel);
      v74 = v104;
      v75 = v111;
      v76 = v141;
      sub_24FEDE774();
      (*(v110 + 8))(v45, v75);
      (*(v128 + 8))(v19, v72);
      swift_unknownObjectRelease();
      v63 = v135;
      v141 = v76;
      if (v76)
      {
        return __swift_destroy_boxed_opaque_existential_1(v63);
      }

      v77 = v135;
      swift_storeEnumTagMultiPayload();
      v78 = v106;
      sub_24FE555AC(v74, v106, type metadata accessor for GenerativeResultModels);
LABEL_46:
      sub_24FE555AC(v78, v48, type metadata accessor for GenerativeResultModels);
      v63 = v77;
      return __swift_destroy_boxed_opaque_existential_1(v63);
    }

    goto LABEL_35;
  }

  v62 = v134;
  if (v50 == 1)
  {
    LOBYTE(v136) = 1;
    sub_24FE543E4();
    v65 = v141;
    sub_24FEDE704();
    v141 = v65;
    if (!v65)
    {
      sub_24FE55710();
      v66 = v112;
      v67 = v141;
      sub_24FEDE774();
      v141 = v67;
      if (!v67)
      {
        (*(v113 + 8))(v44, v66);
        (*(v128 + 8))(v19, v62);
        swift_unknownObjectRelease();
        v95 = *(&v136 + 1);
        v96 = v102;
        *v102 = v136;
        v96[1] = v95;
LABEL_44:
        swift_storeEnumTagMultiPayload();
        v97 = v96;
        goto LABEL_45;
      }

      (*(v113 + 8))(v44, v66);
    }

    goto LABEL_11;
  }

  LOBYTE(v136) = 2;
  sub_24FE54390();
  v79 = v141;
  sub_24FEDE704();
  v141 = v79;
  if (v79)
  {
LABEL_11:
    (*(v128 + 8))(v19, v62);
    goto LABEL_12;
  }

  type metadata accessor for GenerativeMediaConfirmationSnippetModel(0);
  sub_24FE557F4(&qword_27F3A4808, type metadata accessor for GenerativeMediaConfirmationSnippetModel);
  v80 = v105;
  v81 = v114;
  v82 = v141;
  sub_24FEDE774();
  v83 = v128;
  v141 = v82;
  if (!v82)
  {
    (*(v115 + 8))(v47, v81);
    (*(v83 + 8))(v19, v62);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v97 = v80;
    goto LABEL_45;
  }

  (*(v115 + 8))(v47, v81);
  (*(v83 + 8))(v19, v62);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v63 = v135;
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24FE555AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24FE55614()
{
  result = qword_27F3A47F0;
  if (!qword_27F3A47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A47F0);
  }

  return result;
}

unint64_t sub_24FE55668()
{
  result = qword_27F3A47F8;
  if (!qword_27F3A47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A47F8);
  }

  return result;
}

unint64_t sub_24FE556BC()
{
  result = qword_27F3A4800;
  if (!qword_27F3A4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4800);
  }

  return result;
}

unint64_t sub_24FE55710()
{
  result = qword_27F3A4810;
  if (!qword_27F3A4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4810);
  }

  return result;
}

uint64_t sub_24FE557F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE5583C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_24FE55914()
{
  result = type metadata accessor for GenerativeRichTextResultSnippetModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GenerativeMediaConfirmationSnippetModel(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for GenerativeResultAttributionSnippetModel();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeResultModels.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeResultModels.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeDismissalSnippetModel(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for GenerativeDismissalSnippetModel(_WORD *result, int a2, int a3)
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

unint64_t sub_24FE55C84()
{
  result = qword_27F3A4840;
  if (!qword_27F3A4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4840);
  }

  return result;
}

unint64_t sub_24FE55CDC()
{
  result = qword_27F3A4848;
  if (!qword_27F3A4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4848);
  }

  return result;
}

unint64_t sub_24FE55D34()
{
  result = qword_27F3A4850;
  if (!qword_27F3A4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4850);
  }

  return result;
}

unint64_t sub_24FE55D8C()
{
  result = qword_27F3A4858;
  if (!qword_27F3A4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4858);
  }

  return result;
}

unint64_t sub_24FE55DE4()
{
  result = qword_27F3A4860;
  if (!qword_27F3A4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4860);
  }

  return result;
}

unint64_t sub_24FE55E3C()
{
  result = qword_27F3A4868;
  if (!qword_27F3A4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4868);
  }

  return result;
}

unint64_t sub_24FE55E94()
{
  result = qword_27F3A4870;
  if (!qword_27F3A4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4870);
  }

  return result;
}

unint64_t sub_24FE55EEC()
{
  result = qword_27F3A4878;
  if (!qword_27F3A4878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4878);
  }

  return result;
}

unint64_t sub_24FE55F44()
{
  result = qword_27F3A4880;
  if (!qword_27F3A4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4880);
  }

  return result;
}

unint64_t sub_24FE55F9C()
{
  result = qword_27F3A4888;
  if (!qword_27F3A4888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4888);
  }

  return result;
}

unint64_t sub_24FE55FF4()
{
  result = qword_27F3A4890;
  if (!qword_27F3A4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4890);
  }

  return result;
}

unint64_t sub_24FE5604C()
{
  result = qword_27F3A4898;
  if (!qword_27F3A4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4898);
  }

  return result;
}

unint64_t sub_24FE560A4()
{
  result = qword_27F3A48A0;
  if (!qword_27F3A48A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48A0);
  }

  return result;
}

unint64_t sub_24FE560FC()
{
  result = qword_27F3A48A8;
  if (!qword_27F3A48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48A8);
  }

  return result;
}

unint64_t sub_24FE56154()
{
  result = qword_27F3A48B0;
  if (!qword_27F3A48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48B0);
  }

  return result;
}

unint64_t sub_24FE561AC()
{
  result = qword_27F3A48B8;
  if (!qword_27F3A48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48B8);
  }

  return result;
}

unint64_t sub_24FE56204()
{
  result = qword_27F3A48C0;
  if (!qword_27F3A48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48C0);
  }

  return result;
}

unint64_t sub_24FE5625C()
{
  result = qword_27F3A48C8;
  if (!qword_27F3A48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48C8);
  }

  return result;
}

unint64_t sub_24FE562B4()
{
  result = qword_27F3A48D0;
  if (!qword_27F3A48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48D0);
  }

  return result;
}

unint64_t sub_24FE5630C()
{
  result = qword_27F3A48D8;
  if (!qword_27F3A48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48D8);
  }

  return result;
}

unint64_t sub_24FE56364()
{
  result = qword_27F3A48E0;
  if (!qword_27F3A48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48E0);
  }

  return result;
}

unint64_t sub_24FE563BC()
{
  result = qword_27F3A48E8;
  if (!qword_27F3A48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48E8);
  }

  return result;
}

unint64_t sub_24FE56414()
{
  result = qword_27F3A48F0;
  if (!qword_27F3A48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48F0);
  }

  return result;
}

unint64_t sub_24FE5646C()
{
  result = qword_27F3A48F8;
  if (!qword_27F3A48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A48F8);
  }

  return result;
}

uint64_t sub_24FE564C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x800000024FEE94A0 == a2;
  if (v3 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FEE94C0 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x800000024FEE94E0 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000024FEE9510 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FEE9530 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x800000024FEE9550 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FEE9580 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t DisabledResponseView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1[1];
  v4 = v1[2];
  *a1 = sub_24FEDD504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4900, &qword_24FEE0670) + 44);
  return sub_24FE56798();
}

uint64_t sub_24FE56798()
{
  sub_24FE56B40();

  v0 = sub_24FEDD9F4();
  v2 = v1;
  v4 = v3;
  sub_24FEDD7E4();
  v5 = sub_24FEDD994();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  sub_24FE56B94(v0, v2, v4 & 1);

  LOBYTE(v0) = sub_24FEDD744();
  sub_24FEDD014();
  *&v17 = v5;
  *(&v17 + 1) = v7;
  LOBYTE(v18) = v9 & 1;
  *(&v18 + 1) = v11;
  LOBYTE(v19) = v0;
  *(&v19 + 1) = v12;
  *v20 = v13;
  *&v20[8] = v14;
  *&v20[16] = v15;
  v20[24] = 0;
  sub_24FEDD824();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4918, &unk_24FEE0730);
  sub_24FE56BA4();
  sub_24FEDDAA4();
  v21[2] = v19;
  v22[0] = *v20;
  *(v22 + 9) = *&v20[9];
  v21[0] = v17;
  v21[1] = v18;
  return sub_24FE56C28(v21);
}

GenerativeAssistantUI::DisabledResponseView __swiftcall DisabledResponseView.init(model:)(GenerativeAssistantUI::GenerativeNoResultSnippetModel model)
{
  v2 = *model.result._countAndFlagsBits;
  v3 = *(model.result._countAndFlagsBits + 8);
  *v1 = 0x4024000000000000;
  v1[1] = v2;
  v1[2] = v3;
  result.snippetModel = model;
  return result;
}

uint64_t sub_24FE56970@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1[1];
  v4 = v1[2];
  *a1 = sub_24FEDD504();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4900, &qword_24FEE0670) + 44);
  return sub_24FE56798();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24FE569F8(uint64_t a1, int a2)
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

uint64_t sub_24FE56A40(uint64_t result, int a2, int a3)
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

unint64_t sub_24FE56A94()
{
  result = qword_27F3A4908;
  if (!qword_27F3A4908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4910, &qword_24FEE0728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4908);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24FE56B40()
{
  result = qword_27F3A4CB0;
  if (!qword_27F3A4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4CB0);
  }

  return result;
}

uint64_t sub_24FE56B94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24FE56BA4()
{
  result = qword_27F3A4920;
  if (!qword_27F3A4920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4918, &unk_24FEE0730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4920);
  }

  return result;
}

uint64_t sub_24FE56C28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4918, &unk_24FEE0730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE56C90@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4930, &qword_24FEE0758);
  v1 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v112 = (&v110 - v2);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4938, &qword_24FEE0760);
  v3 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v113 = &v110 - v4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4940, &qword_24FEE0768);
  v5 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v124 = &v110 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4948, &qword_24FEE0770);
  v7 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v114 = (&v110 - v8);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4950, &qword_24FEE0778);
  v9 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v11 = &v110 - v10;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4958, &unk_24FEE0D60);
  v12 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v123 = &v110 - v13;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4960, &qword_24FEE0780);
  v14 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v115 = &v110 - v15;
  v16 = sub_24FEDDCD4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4968, &qword_24FEE0788);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v110 - v23;
  v25 = sub_24FEDCEB4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v29, v118, v25);
  v30 = (*(v26 + 88))(v29, v25);
  if (v30 == *MEMORY[0x277D0D690])
  {
    goto LABEL_2;
  }

  v58 = v11;
  v11 = v123;
  v118 = v21;
  if (v30 == *MEMORY[0x277D0D6C0])
  {
    v59 = v58;
    if (qword_27F3A4670 == -1)
    {
LABEL_5:
      v60 = qword_27F3B30D8;
      sub_24FEDDD14();
      (*(v17 + 104))(v20, *MEMORY[0x277CE0FE0], v16);
      v61 = sub_24FEDDD04();

      (*(v17 + 8))(v20, v16);
      sub_24FEDDF34();
      sub_24FEDD0F4();
      *(v127 + 6) = v131;
      *(&v127[1] + 6) = *v132;
      *(&v127[2] + 6) = *&v132[16];
      *v130 = v61;
      *&v130[8] = 0;
      *&v130[16] = 257;
      *&v130[18] = v127[0];
      *&v130[34] = v127[1];
      *&v130[50] = v127[2];
      v62 = *&v132[24];
      *&v130[64] = *&v132[24];
      v63 = *&v130[16];
      *v59 = v61;
      *(v59 + 16) = v63;
      v64 = *&v130[48];
      *(v59 + 32) = *&v130[32];
      *(v59 + 48) = v64;
      *(v59 + 64) = v62;
      swift_storeEnumTagMultiPayload();
      sub_24FE58B14(v130, v127, &unk_27F3A4D70, &qword_24FEE07C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4D70, &qword_24FEE07C0);
      sub_24FE58674();
      sub_24FE58564();
      sub_24FEDD5F4();
      sub_24FE58B14(v11, v114, &qword_27F3A4958, &unk_24FEE0D60);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
      sub_24FE589FC();
      sub_24FE584E0();
      v65 = v115;
      sub_24FEDD5F4();
      sub_24FE58B7C(v11, &qword_27F3A4958, &unk_24FEE0D60);
      v66 = &qword_27F3A4960;
      v67 = &qword_24FEE0780;
      sub_24FE58B14(v65, v124, &qword_27F3A4960, &qword_24FEE0780);
      swift_storeEnumTagMultiPayload();
      sub_24FE58970();
      sub_24FE58A88();
      sub_24FEDD5F4();
      v68 = v130;
LABEL_6:
      sub_24FE58B7C(v68, &unk_27F3A4D70, &qword_24FEE07C0);
      v55 = v65;
LABEL_18:
      v56 = v66;
      v57 = v67;
      return sub_24FE58B7C(v55, v56, v57);
    }

LABEL_32:
    swift_once();
    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x277D0D6A0])
  {
    sub_24FEDDCB4();
    (*(v17 + 104))(v20, *MEMORY[0x277CE0FE0], v16);
    v123 = sub_24FEDDD04();

    (*(v17 + 8))(v20, v16);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    LOBYTE(v131) = 1;
    *&v134[6] = *v130;
    *&v134[22] = *&v130[16];
    *&v134[38] = *&v130[32];
    LODWORD(v122) = sub_24FEDD744();
    sub_24FEDD014();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    LOBYTE(v127[0]) = 0;
    v117 = sub_24FEDDC54();
    KeyPath = swift_getKeyPath();
    sub_24FEDDC24();
    v78 = sub_24FEDDC64();

    v79 = sub_24FEDD744();
    v80 = &v24[*(v118 + 36)];
    v81 = *(sub_24FEDD284() + 20);
    v82 = *MEMORY[0x277CE0118];
    v83 = sub_24FEDD4E4();
    (*(*(v83 - 8) + 104))(&v80[v81], v82, v83);
    __asm { FMOV            V0.2D, #10.0 }

    *v80 = _Q0;
    *&v80[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D80, &unk_24FEE0D50) + 36)] = 256;
    *v24 = v123;
    *(v24 + 1) = 0;
    *(v24 + 8) = 1;
    *(v24 + 18) = *v134;
    *(v24 + 34) = *&v134[16];
    *(v24 + 50) = *&v134[32];
    *(v24 + 8) = *&v134[46];
    v24[72] = v122;
    *(v24 + 10) = v70;
    *(v24 + 11) = v72;
    *(v24 + 12) = v74;
    *(v24 + 13) = v76;
    v24[112] = 0;
    v85 = v117;
    *(v24 + 15) = KeyPath;
    *(v24 + 16) = v85;
    *(v24 + 17) = v78;
    v24[144] = v79;
    sub_24FE58B14(v24, v112, &qword_27F3A4968, &qword_24FEE0788);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
    sub_24FE584E0();
    sub_24FE58674();
    v86 = v113;
    sub_24FEDD5F4();
    sub_24FE58B14(v86, v124, &qword_27F3A4938, &qword_24FEE0760);
    swift_storeEnumTagMultiPayload();
    sub_24FE58970();
    sub_24FE58A88();
    sub_24FEDD5F4();
    sub_24FE58B7C(v86, &qword_27F3A4938, &qword_24FEE0760);
    v55 = v24;
    v56 = &qword_27F3A4968;
    v57 = &qword_24FEE0788;
    return sub_24FE58B7C(v55, v56, v57);
  }

  v59 = v124;
  if (v30 == *MEMORY[0x277D0D6D0])
  {
    if (qword_27F3A4670 != -1)
    {
      swift_once();
    }

    v87 = qword_27F3B30D8;
    sub_24FEDDD14();
    (*(v17 + 104))(v20, *MEMORY[0x277CE0FE0], v16);
    v88 = v16;
    v89 = sub_24FEDDD04();

    (*(v17 + 8))(v20, v88);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    *&v130[6] = v135;
    *&v130[22] = v136;
    *&v130[38] = v137;
    v131 = v89;
    *v132 = 257;
    *&v132[2] = *v130;
    *&v132[18] = *&v130[16];
    *&v132[34] = *&v130[32];
    *&v132[48] = *(&v137 + 1);
    v127[0] = v89;
    v127[1] = *v132;
    v127[2] = *&v132[16];
    v127[3] = *&v132[32];
    v128 = *(&v137 + 1);
    v133 = 0;
    v129 = 0;
    sub_24FE58B14(&v131, v130, &unk_27F3A4D70, &qword_24FEE07C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4D70, &qword_24FEE07C0);
    sub_24FE58564();
    sub_24FEDD5F4();
    v90 = *&v130[48];
    v91 = v114;
    v114[2] = *&v130[32];
    v91[3] = v90;
    *(v91 + 57) = *&v130[57];
    v92 = *&v130[16];
    *v91 = *v130;
    v91[1] = v92;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
    sub_24FE589FC();
    sub_24FE584E0();
    v93 = v115;
    sub_24FEDD5F4();
    v66 = &qword_27F3A4960;
    v67 = &qword_24FEE0780;
    sub_24FE58B14(v93, v59, &qword_27F3A4960, &qword_24FEE0780);
    swift_storeEnumTagMultiPayload();
    sub_24FE58970();
    sub_24FE58A88();
LABEL_17:
    sub_24FEDD5F4();
    sub_24FE58B7C(&v131, &unk_27F3A4D70, &qword_24FEE07C0);
    v55 = v93;
    goto LABEL_18;
  }

  if (v30 == *MEMORY[0x277D0D6B0])
  {
    if (qword_27F3A4670 != -1)
    {
      swift_once();
    }

    v94 = qword_27F3B30D8;
    sub_24FEDDD14();
    (*(v17 + 104))(v20, *MEMORY[0x277CE0FE0], v16);
    v95 = v16;
    v96 = sub_24FEDDD04();

    (*(v17 + 8))(v20, v95);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    *&v130[6] = v135;
    *&v130[22] = v136;
    *&v130[38] = v137;
    v131 = v96;
    *v132 = 257;
    *&v132[2] = *v130;
    *&v132[18] = *&v130[16];
    *&v132[34] = *&v130[32];
    *&v132[48] = *(&v137 + 1);
    v127[0] = v96;
    v127[1] = *v132;
    v127[2] = *&v132[16];
    v127[3] = *&v132[32];
    v128 = *(&v137 + 1);
    v133 = 1;
    v129 = 1;
    sub_24FE58B14(&v131, v130, &unk_27F3A4D70, &qword_24FEE07C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4D70, &qword_24FEE07C0);
    sub_24FE58564();
    sub_24FEDD5F4();
    v97 = *&v130[48];
    v98 = v114;
    v114[2] = *&v130[32];
    v98[3] = v97;
    *(v98 + 57) = *&v130[57];
    v99 = *&v130[16];
    *v98 = *v130;
    v98[1] = v99;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
    sub_24FE589FC();
    sub_24FE584E0();
    v93 = v115;
    sub_24FEDD5F4();
    v66 = &qword_27F3A4960;
    v67 = &qword_24FEE0780;
    sub_24FE58B14(v93, v59, &qword_27F3A4960, &qword_24FEE0780);
    swift_storeEnumTagMultiPayload();
    sub_24FE58970();
    sub_24FE58A88();
    goto LABEL_17;
  }

  if (v30 == *MEMORY[0x277D0D698])
  {
    if (qword_27F3A4670 != -1)
    {
      swift_once();
    }

    v101 = qword_27F3B30D8;
    sub_24FEDDD14();
    (*(v17 + 104))(v20, *MEMORY[0x277CE0FE0], v16);
    v102 = v16;
    v103 = sub_24FEDDD04();

    (*(v17 + 8))(v20, v102);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    *&v130[6] = v135;
    *&v130[22] = v136;
    *&v130[38] = v137;
    v131 = v103;
    *v132 = 257;
    *&v132[2] = *v130;
    *&v132[18] = *&v130[16];
    *&v132[34] = *&v130[32];
    *&v132[48] = *(&v137 + 1);
    v127[0] = v103;
    v127[1] = *v132;
    v127[2] = *&v132[16];
    v127[3] = *&v132[32];
    v128 = *(&v137 + 1);
    v133 = 0;
    v129 = 0;
LABEL_28:
    sub_24FE58B14(&v131, v130, &unk_27F3A4D70, &qword_24FEE07C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4D70, &qword_24FEE07C0);
    sub_24FE58564();
    sub_24FEDD5F4();
    v107 = *&v130[48];
    v108 = v112;
    v112[2] = *&v130[32];
    v108[3] = v107;
    *(v108 + 57) = *&v130[57];
    v109 = *&v130[16];
    *v108 = *v130;
    v108[1] = v109;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
    sub_24FE584E0();
    sub_24FE58674();
    v65 = v113;
    sub_24FEDD5F4();
    v66 = &qword_27F3A4938;
    v67 = &qword_24FEE0760;
    sub_24FE58B14(v65, v59, &qword_27F3A4938, &qword_24FEE0760);
    swift_storeEnumTagMultiPayload();
    sub_24FE58970();
    sub_24FE58A88();
    sub_24FEDD5F4();
    v68 = &v131;
    goto LABEL_6;
  }

  if (v30 == *MEMORY[0x277D0D6A8])
  {
    if (qword_27F3A4670 != -1)
    {
      swift_once();
    }

    v104 = qword_27F3B30D8;
    sub_24FEDDD14();
    (*(v17 + 104))(v20, *MEMORY[0x277CE0FE0], v16);
    v105 = v16;
    v106 = sub_24FEDDD04();

    (*(v17 + 8))(v20, v105);
    sub_24FEDDF34();
    sub_24FEDD0F4();
    *&v130[6] = v135;
    *&v130[22] = v136;
    *&v130[38] = v137;
    v131 = v106;
    *v132 = 257;
    *&v132[2] = *v130;
    *&v132[18] = *&v130[16];
    *&v132[34] = *&v130[32];
    *&v132[48] = *(&v137 + 1);
    v127[0] = v106;
    v127[1] = *v132;
    v127[2] = *&v132[16];
    v127[3] = *&v132[32];
    v128 = *(&v137 + 1);
    v133 = 1;
    v129 = 1;
    goto LABEL_28;
  }

  v21 = v118;
  v11 = v58;
  if (v30 != *MEMORY[0x277D0D6B8] && v30 != *MEMORY[0x277D0D6C8])
  {
    sub_24FEDE834();
    __break(1u);
    goto LABEL_32;
  }

LABEL_2:
  sub_24FEDDCB4();
  (*(v17 + 104))(v20, *MEMORY[0x277CE0FE0], v16);
  v118 = sub_24FEDDD04();

  (*(v17 + 8))(v20, v16);
  sub_24FEDDF34();
  sub_24FEDD0F4();
  LOBYTE(v131) = 1;
  *&v126[6] = *v130;
  *&v126[22] = *&v130[16];
  *&v126[38] = *&v130[32];
  LODWORD(v113) = sub_24FEDD744();
  sub_24FEDD014();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  LOBYTE(v127[0]) = 0;
  v112 = sub_24FEDDC54();
  v39 = swift_getKeyPath();
  sub_24FEDDC24();
  v40 = sub_24FEDDC64();

  v41 = sub_24FEDD744();
  v42 = &v24[*(v21 + 36)];
  v43 = *(sub_24FEDD284() + 20);
  v44 = *MEMORY[0x277CE0118];
  v45 = sub_24FEDD4E4();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #10.0 }

  *v42 = _Q0;
  *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D80, &unk_24FEE0D50) + 36)] = 256;
  v51 = *&v126[16];
  *(v24 + 18) = *v126;
  *v24 = v118;
  *(v24 + 1) = 0;
  *(v24 + 8) = 1;
  *(v24 + 34) = v51;
  *(v24 + 50) = *&v126[32];
  *(v24 + 8) = *&v126[46];
  v24[72] = v113;
  *(v24 + 10) = v32;
  *(v24 + 11) = v34;
  *(v24 + 12) = v36;
  *(v24 + 13) = v38;
  v24[112] = 0;
  v52 = v112;
  *(v24 + 15) = v39;
  *(v24 + 16) = v52;
  *(v24 + 17) = v40;
  v24[144] = v41;
  sub_24FE58B14(v24, v11, &qword_27F3A4968, &qword_24FEE0788);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4D70, &qword_24FEE07C0);
  sub_24FE58674();
  sub_24FE58564();
  v53 = v123;
  sub_24FEDD5F4();
  sub_24FE58B14(v53, v114, &qword_27F3A4958, &unk_24FEE0D60);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4970, &unk_24FEE0D90);
  sub_24FE589FC();
  sub_24FE584E0();
  v54 = v115;
  sub_24FEDD5F4();
  sub_24FE58B7C(v53, &qword_27F3A4958, &unk_24FEE0D60);
  sub_24FE58B14(v54, v124, &qword_27F3A4960, &qword_24FEE0780);
  swift_storeEnumTagMultiPayload();
  sub_24FE58970();
  sub_24FE58A88();
  sub_24FEDD5F4();
  sub_24FE58B7C(v54, &qword_27F3A4960, &qword_24FEE0780);
  v55 = v24;
  v56 = &qword_27F3A4968;
  v57 = &qword_24FEE0788;
  return sub_24FE58B7C(v55, v56, v57);
}

void sub_24FE583A8()
{
  v0 = sub_24FEDE1C4();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27F3B30D8 = v1;
}

uint64_t sub_24FE58418(float a1)
{
  if (a1 >= 1.0)
  {
    v1 = a1;
  }

  else
  {
    v1 = a1 * 1024.0;
  }

  if (a1 >= 1.0)
  {
    v2 = 0x424D2066322E25;
  }

  else
  {
    v2 = 0x424B2066302E25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4928, &qword_24FEE0750);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24FEE0740;
  v4 = MEMORY[0x277D83B08];
  *(v3 + 56) = MEMORY[0x277D83A90];
  *(v3 + 64) = v4;
  *(v3 + 32) = v1;

  return MEMORY[0x28211E920](v2, 0xE700000000000000, v3);
}

unint64_t sub_24FE584E0()
{
  result = qword_27F3A4E00;
  if (!qword_27F3A4E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4970, &unk_24FEE0D90);
    sub_24FE58564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4E00);
  }

  return result;
}

unint64_t sub_24FE58564()
{
  result = qword_27F3A4978;
  if (!qword_27F3A4978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F3A4D70, &qword_24FEE07C0);
    sub_24FE585F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4978);
  }

  return result;
}

unint64_t sub_24FE585F0()
{
  result = qword_27F3A4C40;
  if (!qword_27F3A4C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4980, &qword_24FEE0C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4C40);
  }

  return result;
}

unint64_t sub_24FE58674()
{
  result = qword_27F3A4DB0;
  if (!qword_27F3A4DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4968, &qword_24FEE0788);
    sub_24FE5872C();
    sub_24FE58928(&unk_27F3A49B0, &qword_27F3A4D80, &unk_24FEE0D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4DB0);
  }

  return result;
}

unint64_t sub_24FE5872C()
{
  result = qword_27F3A4DC0;
  if (!qword_27F3A4DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4988, &unk_24FEE0D70);
    sub_24FE587E4();
    sub_24FE58928(&unk_27F3A4DF0, &qword_27F3A49A8, qword_24FEE07D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4DC0);
  }

  return result;
}

unint64_t sub_24FE587E4()
{
  result = qword_27F3A4DD0;
  if (!qword_27F3A4DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4990, &qword_24FEE07C8);
    sub_24FE5889C();
    sub_24FE58928(&unk_27F3A4D10, &qword_27F3A49A0, &qword_24FEE07D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4DD0);
  }

  return result;
}

unint64_t sub_24FE5889C()
{
  result = qword_27F3A4DE0;
  if (!qword_27F3A4DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4998, &unk_24FEE0D80);
    sub_24FE58564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4DE0);
  }

  return result;
}

uint64_t sub_24FE58928(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24FE58970()
{
  result = qword_27F3A4D90;
  if (!qword_27F3A4D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4960, &qword_24FEE0780);
    sub_24FE589FC();
    sub_24FE584E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4D90);
  }

  return result;
}

unint64_t sub_24FE589FC()
{
  result = qword_27F3A4DA0;
  if (!qword_27F3A4DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4958, &unk_24FEE0D60);
    sub_24FE58674();
    sub_24FE58564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4DA0);
  }

  return result;
}

unint64_t sub_24FE58A88()
{
  result = qword_27F3A4E10;
  if (!qword_27F3A4E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4938, &qword_24FEE0760);
    sub_24FE584E0();
    sub_24FE58674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4E10);
  }

  return result;
}

uint64_t sub_24FE58B14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24FE58B7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for ResourceBundleHelper()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

id sub_24FE58C10()
{
  type metadata accessor for ResourceBundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F3B30E0 = result;
  return result;
}

void sub_24FE58C68()
{
  v1 = v0;
  v2 = (v0 + *(type metadata accessor for AttachmentConfirmationView(0) + 60));
  v3 = *v2;
  v4 = *(v2 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  sub_24FEDDD54();

  sub_24FEDDD44();
  v5 = 0;
  v6 = 0;
  if (v3 == 1)
  {
    v5 = *(v1 + 48);
    v7 = *(v1 + 56);
  }

  qword_27F3A49C0 = v5;
  qword_27F3A49C8 = v6;

  sub_24FE58D70();
}

void sub_24FE58D70()
{
  v1 = sub_24FEDDFA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24FEDDFC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + *(type metadata accessor for AttachmentConfirmationView(0) + 68);
  if (*v11)
  {
    v12 = *v11;
    v13 = sub_24FEDE0F4();

    if (v13)
    {
      sub_24FE62F4C(0, &qword_27F3A4E38, 0x277D85C78);
      v22 = sub_24FEDE504();
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_24FE62FCC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24FE5CE20;
      aBlock[3] = &block_descriptor;
      v15 = _Block_copy(aBlock);
      v21 = v13;
      v16 = v15;

      sub_24FEDDFB4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24FE62254(&qword_27F3A4EA0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EA8, &qword_24FEE0DB8);
      v20 = v6;
      sub_24FE58928(&qword_27F3A4EB0, &qword_27F3A4EA8, &qword_24FEE0DB8);
      sub_24FEDE594();
      v17 = v22;
      MEMORY[0x25305A710](0, v10, v5, v16);
      _Block_release(v16);
      swift_unknownObjectRelease();

      (*(v2 + 8))(v5, v1);
      (*(v7 + 8))(v10, v20);
    }
  }

  else
  {
    v18 = *(v11 + 8);
    sub_24FEDE134();
    sub_24FE62254(&qword_27F3A4A30, MEMORY[0x277D63F60]);
    sub_24FEDD2B4();
    __break(1u);
  }
}

uint64_t AttachmentConfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49D0, &qword_24FEE0850);
  v2 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - v3;
  v4 = type metadata accessor for AttachmentConfirmationView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = v8;
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49D8, &qword_24FEE0858);
  v10 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v12 = &v27 - v11;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49E0, &qword_24FEE0860);
  v13 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v15 = &v27 - v14;
  *v12 = sub_24FEDD514();
  *(v12 + 1) = 0x402C000000000000;
  v12[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49E8, &qword_24FEE0868);
  sub_24FE59570(v1, &v12[*(v16 + 44)]);
  v17 = *(v1 + *(v5 + 60));
  v28 = v1;
  v34 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
  sub_24FEDDD44();
  sub_24FE6229C(v1, v9, type metadata accessor for AttachmentConfirmationView);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v19 = swift_allocObject();
  sub_24FE62404(v9, v19 + v18, type metadata accessor for AttachmentConfirmationView);
  sub_24FE58928(&qword_27F3A49F8, &qword_27F3A49D8, &qword_24FEE0858);
  sub_24FEDDBC4();

  sub_24FE58B7C(v12, &qword_27F3A49D8, &qword_24FEE0858);
  sub_24FE6229C(v28, v9, type metadata accessor for AttachmentConfirmationView);
  v20 = swift_allocObject();
  sub_24FE62404(v9, v20 + v18, type metadata accessor for AttachmentConfirmationView);
  v21 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A00, &qword_24FEE0878) + 36)];
  *v21 = sub_24FE5CB78;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  v22 = sub_24FEDD7E4();
  KeyPath = swift_getKeyPath();
  v24 = v31;
  v25 = &v15[*(v30 + 36)];
  *v25 = KeyPath;
  v25[1] = v22;
  sub_24FE5C100(0, v24);
  sub_24FE60984();
  sub_24FE58928(&qword_27F3A4A28, &qword_27F3A49D0, &qword_24FEE0850);
  sub_24FEDDB64();
  sub_24FE58B7C(v24, &qword_27F3A49D0, &qword_24FEE0850);
  return sub_24FE58B7C(v15, &qword_27F3A49E0, &qword_24FEE0860);
}

uint64_t sub_24FE59570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v217 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EB8, &qword_24FEE0DC0);
  v215 = *(v3 - 8);
  v216 = v3;
  v4 = *(v215 + 64);
  MEMORY[0x28223BE20](v3);
  v200 = &v177 - v5;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EC0, &qword_24FEE0DC8);
  v6 = *(*(v179 - 8) + 64);
  MEMORY[0x28223BE20](v179);
  v188 = (&v177 - v7);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EC8, &qword_24FEE0DD0);
  v8 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v185 = &v177 - v9;
  v10 = type metadata accessor for QuickLookPreview(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v178 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4ED0, &qword_24FEE0DD8);
  v13 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v187 = &v177 - v14;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4ED8, &qword_24FEE0DE0);
  v15 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v183 = &v177 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EE0, &qword_24FEE0DE8);
  v198 = *(v17 - 8);
  v199 = v17;
  v18 = *(v198 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v182 = &v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v181 = &v177 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v189 = &v177 - v24;
  v25 = sub_24FEDC9E4();
  v190 = *(v25 - 8);
  v191 = v25;
  v26 = *(v190 + 64);
  MEMORY[0x28223BE20](v25);
  v186 = &v177 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EE8, &qword_24FEE0DF0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v197 = &v177 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v201 = &v177 - v32;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EF0, &qword_24FEE0DF8);
  v33 = *(*(v193 - 8) + 64);
  MEMORY[0x28223BE20](v193);
  v192 = (&v177 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4EF8, &qword_24FEE0E00);
  v195 = *(v35 - 8);
  v196 = v35;
  v36 = *(v195 + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v194 = &v177 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v212 = &v177 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F00, &qword_24FEE0E08);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v214 = &v177 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v218 = &v177 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F08, &qword_24FEE0E10);
  v46 = *(v45 - 8);
  v208 = v45;
  v209 = v46;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  v204 = &v177 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F10, &qword_24FEE0E18);
  v210 = *(v49 - 8);
  v211 = v49;
  v50 = *(v210 + 64);
  MEMORY[0x28223BE20](v49);
  v205 = &v177 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F18, &qword_24FEE0E20);
  v53 = *(v52 - 8);
  v207 = v52 - 8;
  v54 = *(v53 + 64);
  v55 = MEMORY[0x28223BE20](v52 - 8);
  v213 = &v177 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v206 = &v177 - v58;
  MEMORY[0x28223BE20](v57);
  v219 = &v177 - v59;
  v203 = a1;
  *&v228 = sub_24FE627A8();
  *(&v228 + 1) = v60;
  sub_24FE56B40();

  v202 = sub_24FEDD9F4();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = sub_24FE5A70C();
  v69 = v68;
  KeyPath = swift_getKeyPath();
  v71 = sub_24FEDD854();
  v72 = swift_getKeyPath();
  v73 = v64 & 1;
  LOBYTE(v228) = v64 & 1;
  v69 &= 1u;
  LOBYTE(v221) = v69;
  v74 = sub_24FEDDC74();
  v75 = swift_getKeyPath();
  *&v228 = v202;
  *(&v228 + 1) = v62;
  LOBYTE(v229) = v73;
  *(&v229 + 1) = v66;
  *&v230 = KeyPath;
  *(&v230 + 1) = v67;
  LOBYTE(v231) = v69;
  v76 = v203;
  *(&v231 + 1) = v72;
  *&v232 = v71;
  *(&v232 + 1) = v75;
  *&v233 = v74;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F20, &qword_24FEE0E28);
  v78 = sub_24FE62FEC();
  v79 = v204;
  sub_24FEDDB24();
  v235[2] = v230;
  v235[3] = v231;
  v235[4] = v232;
  v236 = v233;
  v235[0] = v228;
  v235[1] = v229;
  sub_24FE58B7C(v235, &qword_27F3A4F20, &qword_24FEE0E28);
  *&v228 = v77;
  *(&v228 + 1) = v78;
  v80 = 1;
  swift_getOpaqueTypeConformance2();
  v81 = v205;
  v82 = v208;
  sub_24FEDDB84();
  (*(v209 + 8))(v79, v82);
  sub_24FEDDF44();
  sub_24FEDD294();
  v83 = v206;
  (*(v210 + 32))(v206, v81, v211);
  v84 = (v83 + *(v207 + 44));
  v85 = v226;
  v84[4] = v225;
  v84[5] = v85;
  v84[6] = v227;
  v86 = v222;
  *v84 = v221;
  v84[1] = v86;
  v87 = v224;
  v84[2] = v223;
  v84[3] = v87;
  sub_24FE6315C(v83, v219, &qword_27F3A4F18, &qword_24FEE0E20);
  v88 = type metadata accessor for AttachmentConfirmationView(0);
  v89 = v76 + *(v88 + 56);
  v90 = *v89;
  v91 = *(v89 + 8);
  LOBYTE(v228) = v90;
  *(&v228 + 1) = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  if (v220 == 1)
  {
    v92 = sub_24FEDD434();
    v93 = v192;
    *v192 = v92;
    *(v93 + 8) = 0x402C000000000000;
    *(v93 + 16) = 0;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F48, &qword_24FEE0E40);
    sub_24FE5A7D4(v76, v93 + *(v94 + 44));
    sub_24FE58928(&qword_27F3A4F50, &qword_27F3A4EF0, &qword_24FEE0DF8);
    v95 = v212;
    sub_24FEDDA54();
    sub_24FE58B7C(v93, &qword_27F3A4EF0, &qword_24FEE0DF8);
    v96 = v76 + *(v88 + 60);
    v97 = *v96;
    v98 = *(v96 + 8);
    LOBYTE(v228) = v97;
    *(&v228 + 1) = v98;
    sub_24FEDDD44();
    if (v220 == 1)
    {
      v99 = v189;
      sub_24FE5C5B8(v189);
      v101 = v190;
      v100 = v191;
      v102 = (*(v190 + 48))(v99, 1, v191);
      v103 = v201;
      if (v102 == 1)
      {
        sub_24FE58B7C(v99, &unk_27F3A4A40, &qword_24FEE08C0);
      }

      else
      {
        v106 = v186;
        (*(v101 + 32))(v186, v99, v100);
        v107 = sub_24FEDC9C4();
        v108 = objc_opt_self();
        v109 = sub_24FEDC974();
        v110 = [v108 canPreviewItem_];

        if (v107)
        {
          sub_24FEDC9A4();
        }

        if (v110)
        {
          v111 = v178;
          (*(v101 + 16))(v178, v106, v100);
          sub_24FEDDF34();
          sub_24FEDD294();
          v112 = v111;
          v113 = v187;
          sub_24FE62404(v112, v187, type metadata accessor for QuickLookPreview);
          v114 = (v113 + *(v177 + 36));
          v115 = v233;
          v114[4] = v232;
          v114[5] = v115;
          v114[6] = v234;
          v116 = v229;
          *v114 = v228;
          v114[1] = v116;
          v117 = v231;
          v114[2] = v230;
          v114[3] = v117;
          v118 = *(sub_24FEDD284() + 20);
          v119 = *MEMORY[0x277CE0118];
          v120 = sub_24FEDD4E4();
          v121 = v188;
          (*(*(v120 - 8) + 104))(v188 + v118, v119, v120);
          __asm { FMOV            V0.2D, #20.0 }

          *v121 = _Q0;
          v127 = sub_24FEDD624();
          v128 = v179;
          *(v121 + *(v179 + 52)) = v127;
          *(v121 + *(v128 + 56)) = 256;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F60, &qword_24FEE0E50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24FEE0830;
          LOBYTE(v119) = sub_24FEDD734();
          *(inited + 32) = v119;
          v130 = sub_24FEDD754();
          *(inited + 33) = v130;
          v131 = sub_24FEDD784();
          sub_24FEDD784();
          if (sub_24FEDD784() != v119)
          {
            v131 = sub_24FEDD784();
          }

          sub_24FEDD784();
          if (sub_24FEDD784() != v130)
          {
            v131 = sub_24FEDD784();
          }

          sub_24FEDD014();
          v133 = v132;
          v135 = v134;
          v137 = v136;
          v139 = v138;
          v140 = v185;
          sub_24FE6315C(v188, v185, &qword_27F3A4EC0, &qword_24FEE0DC8);
          v141 = v140 + *(v184 + 36);
          *v141 = v131;
          *(v141 + 8) = v133;
          *(v141 + 16) = v135;
          *(v141 + 24) = v137;
          *(v141 + 32) = v139;
          *(v141 + 40) = 0;
          v142 = sub_24FEDDF34();
          v144 = v143;
          v145 = v183;
          v146 = &v183[*(v180 + 36)];
          sub_24FE6315C(v140, v146, &qword_27F3A4EC8, &qword_24FEE0DD0);
          v147 = (v146 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F68, &qword_24FEE0E58) + 36));
          *v147 = v142;
          v147[1] = v144;
          sub_24FE6315C(v187, v145, &qword_27F3A4ED0, &qword_24FEE0DD8);
          LOBYTE(v144) = sub_24FEDD754();
          sub_24FEDD014();
          v149 = v148;
          v151 = v150;
          v153 = v152;
          v155 = v154;
          (*(v101 + 8))(v106, v100);
          v156 = v182;
          sub_24FE6315C(v145, v182, &qword_27F3A4ED8, &qword_24FEE0DE0);
          v157 = v199;
          v158 = v156 + *(v199 + 36);
          *v158 = v144;
          *(v158 + 8) = v149;
          *(v158 + 16) = v151;
          *(v158 + 24) = v153;
          *(v158 + 32) = v155;
          *(v158 + 40) = 0;
          v159 = v156;
          v160 = v181;
          sub_24FE6315C(v159, v181, &qword_27F3A4EE0, &qword_24FEE0DE8);
          v103 = v201;
          sub_24FE6315C(v160, v201, &qword_27F3A4EE0, &qword_24FEE0DE8);
          v105 = v157;
          v104 = 0;
          goto LABEL_16;
        }

        (*(v101 + 8))(v106, v100);
      }

      v104 = 1;
      v105 = v199;
    }

    else
    {
      v104 = 1;
      v105 = v199;
      v103 = v201;
    }

LABEL_16:
    (*(v198 + 56))(v103, v104, 1, v105);
    v161 = v194;
    v162 = v195;
    v163 = *(v195 + 16);
    v164 = v196;
    v163(v194, v95, v196);
    v165 = v197;
    sub_24FE58B14(v103, v197, &qword_27F3A4EE8, &qword_24FEE0DF0);
    v166 = v103;
    v167 = v200;
    v163(v200, v161, v164);
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F58, &qword_24FEE0E48);
    sub_24FE58B14(v165, v167 + *(v168 + 48), &qword_27F3A4EE8, &qword_24FEE0DF0);
    sub_24FE58B7C(v166, &qword_27F3A4EE8, &qword_24FEE0DF0);
    v169 = *(v162 + 8);
    v169(v212, v164);
    sub_24FE58B7C(v165, &qword_27F3A4EE8, &qword_24FEE0DF0);
    v169(v161, v164);
    sub_24FE6315C(v167, v218, &qword_27F3A4EB8, &qword_24FEE0DC0);
    v80 = 0;
  }

  v170 = v218;
  (*(v215 + 56))(v218, v80, 1, v216);
  v171 = v219;
  v172 = v213;
  sub_24FE58B14(v219, v213, &qword_27F3A4F18, &qword_24FEE0E20);
  v173 = v214;
  sub_24FE58B14(v170, v214, &qword_27F3A4F00, &qword_24FEE0E08);
  v174 = v217;
  sub_24FE58B14(v172, v217, &qword_27F3A4F18, &qword_24FEE0E20);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F40, &qword_24FEE0E38);
  sub_24FE58B14(v173, v174 + *(v175 + 48), &qword_27F3A4F00, &qword_24FEE0E08);
  sub_24FE58B7C(v170, &qword_27F3A4F00, &qword_24FEE0E08);
  sub_24FE58B7C(v171, &qword_27F3A4F18, &qword_24FEE0E20);
  sub_24FE58B7C(v173, &qword_27F3A4F00, &qword_24FEE0E08);
  return sub_24FE58B7C(v172, &qword_27F3A4F18, &qword_24FEE0E20);
}

BOOL sub_24FE5A70C()
{
  v1 = type metadata accessor for AttachmentConfirmationView(0);
  v2 = (v0 + *(v1 + 56));
  v6 = *v2;
  v8 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  result = 0;
  if (v5 == 1)
  {
    v3 = (v0 + *(v1 + 60));
    v7 = *v3;
    v9 = *(v3 + 1);
    sub_24FEDDD44();
    if (v5)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_24FE5A7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v204 = a2;
  v201 = type metadata accessor for RemoveAttachmentButton(0);
  v200 = *(v201 - 8);
  v3 = *(v200 + 64);
  MEMORY[0x28223BE20](v201);
  v187 = &v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F70, &qword_24FEE0E60);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v203 = &v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v202 = &v176 - v9;
  v185 = type metadata accessor for FileDetailsView(0);
  v10 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v186 = &v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F78, &qword_24FEE0E68);
  v12 = *(*(v215 - 8) + 64);
  MEMORY[0x28223BE20](v215);
  v209 = &v176 - v13;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F80, &qword_24FEE0E70);
  v181 = *(v199 - 8);
  v14 = *(v181 + 64);
  MEMORY[0x28223BE20](v199);
  v180 = &v176 - v15;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F88, &qword_24FEE0E78);
  v16 = *(*(v195 - 8) + 64);
  MEMORY[0x28223BE20](v195);
  v197 = &v176 - v17;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E20, &qword_24FEE0DA0);
  v18 = *(*(v190 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v190);
  v191 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v189 = &v176 - v21;
  v208 = sub_24FEDD234();
  v207 = *(v208 - 8);
  v22 = *(v207 + 64);
  v23 = MEMORY[0x28223BE20](v208);
  v206 = &v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v205 = &v176 - v25;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49D0, &qword_24FEE0850);
  v26 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v192 = &v176 - v27;
  v178 = type metadata accessor for ImageDetailsView(0);
  v28 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v179 = &v176 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F90, &qword_24FEE0E80);
  v30 = *(*(v214 - 8) + 64);
  MEMORY[0x28223BE20](v214);
  v188 = &v176 - v31;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4F98, &qword_24FEE0E88);
  v177 = *(v193 - 8);
  v32 = *(v177 + 64);
  MEMORY[0x28223BE20](v193);
  v176 = &v176 - v33;
  v212 = sub_24FEDCEB4();
  v211 = *(v212 - 8);
  v34 = v211;
  v35 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v213 = &v176 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4FA0, &qword_24FEE0E90);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v198 = &v176 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v217 = &v176 - v41;
  v42 = type metadata accessor for AttachmentConfirmationView(0);
  v210 = *(v42 - 8);
  v43 = *(v210 + 8);
  MEMORY[0x28223BE20](v42);
  v44 = type metadata accessor for ThumbnailView(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = (&v176 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4FA8, &qword_24FEE0E98);
  v49 = v48 - 8;
  v50 = *(*(v48 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v48);
  v196 = &v176 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = &v176 - v53;
  v55 = sub_24FE5BF08();
  v218 = v42;
  v56 = *(v42 + 36);
  v57 = v34 + 16;
  v58 = *(v34 + 16);
  v59 = v47 + *(v44 + 20);
  v60 = v212;
  v183 = v57;
  v182 = v58;
  v58(v59, a1 + v56, v212);
  *v47 = v55;
  sub_24FE6229C(a1, &v176 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AttachmentConfirmationView);
  v61 = a1;
  v62 = (v210[80] + 16) & ~v210[80];
  v63 = swift_allocObject();
  sub_24FE62404(&v176 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v63 + v62, type metadata accessor for AttachmentConfirmationView);
  sub_24FE62254(&qword_27F3A4FB0, type metadata accessor for ThumbnailView);
  sub_24FEDDB14();

  sub_24FE63220(v47);
  sub_24FEDDC34();
  v64 = sub_24FEDDC64();

  v65 = *(v49 + 44);
  v210 = v54;
  v66 = &v54[v65];
  v67 = v61;
  *v66 = v64;
  *(v66 + 8) = xmmword_24FEE0840;
  *(v66 + 3) = 0x4000000000000000;
  v68 = v211;
  v69 = v213;
  v70 = v60;
  (*(v211 + 104))(v213, *MEMORY[0x277D0D6A0], v60);
  v184 = v56;
  v71 = v69;
  LOBYTE(v69) = sub_24FEDCEA4();
  v72 = v70;
  (*(v68 + 8))(v71, v70);
  v216 = v67;
  if ((v69 & 1) == 0)
  {
    v112 = v218[13];
    v113 = *(v67 + v218[12]);
    v114 = *(v67 + 48);
    v115 = *(v67 + 56);
    v116 = *(v67 + v112 + 8);
    v221 = *(v67 + v112);
    v117 = v221;
    v222 = v116;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
    sub_24FEDDD64();
    v118 = v225;
    v213 = v226;
    *&v225 = v117;
    *(&v225 + 1) = v116;
    result = sub_24FEDDD44();
    if ((v221 & 0x8000000000000000) == 0)
    {
      if (v221 < *(v113 + 16))
      {
        v119 = v113 + 40 * v221;
        LODWORD(v211) = *(v119 + 64);
        LODWORD(v188) = *(v119 + 68);
        v120 = v115;
        v121 = v216;
        v122 = *(v216 + 72);
        v179 = *(v216 + 64);
        v123 = v185;
        v124 = v186;
        v182(&v186[*(v185 + 36)], v216 + v184, v72);
        v125 = v218;
        sub_24FE58B14(v121 + v218[10], v124 + *(v123 + 40), &qword_27F3A4A38, &unk_24FEE1340);
        sub_24FE58B14(v121 + v125[11], v124 + *(v123 + 44), &unk_27F3A4A40, &qword_24FEE08C0);
        *v124 = v114;
        *(v124 + 8) = v120;
        *(v124 + 16) = v113;
        *(v124 + 24) = v118;
        v126 = v213;
        *(v124 + 32) = *(&v118 + 1);
        *(v124 + 40) = v126;
        *(v124 + 48) = v211;
        *(v124 + 52) = v188;
        *(v124 + 56) = v179;
        *(v124 + 64) = v122;

        sub_24FEDDF44();
        sub_24FEDD294();
        v127 = v209;
        sub_24FE62404(v124, v209, type metadata accessor for FileDetailsView);
        v128 = (v127 + *(v215 + 36));
        v129 = v230;
        v128[4] = v229;
        v128[5] = v129;
        v128[6] = v231;
        v130 = v226;
        *v128 = v225;
        v128[1] = v130;
        v131 = v228;
        v128[2] = v227;
        v128[3] = v131;
        v132 = v207;
        v133 = *(v207 + 104);
        v134 = v205;
        v135 = v208;
        v133(v205, *MEMORY[0x277CDF9F8], v208);
        v136 = v206;
        v133(v206, *MEMORY[0x277CDFA10], v135);
        sub_24FE62254(&qword_27F3A4E30, MEMORY[0x277CDFA28]);
        result = sub_24FEDE184();
        if (result)
        {
          v137 = *(v132 + 32);
          v138 = v189;
          v137(v189, v134, v135);
          v139 = v190;
          v137((v138 + *(v190 + 48)), v136, v135);
          v140 = v191;
          sub_24FE58B14(v138, v191, &qword_27F3A4E20, &qword_24FEE0DA0);
          v141 = *(v139 + 48);
          v142 = v192;
          v137(v192, v140, v135);
          v143 = *(v132 + 8);
          v143(v140 + v141, v135);
          sub_24FE6315C(v138, v140, &qword_27F3A4E20, &qword_24FEE0DA0);
          v144 = *(v139 + 48);
          v145 = v194;
          v137((v142 + *(v194 + 36)), (v140 + v144), v135);
          v143(v140, v135);
          v213 = sub_24FE6327C();
          v146 = sub_24FE58928(&qword_27F3A4A28, &qword_27F3A49D0, &qword_24FEE0850);
          v147 = v180;
          v148 = v215;
          v149 = v209;
          sub_24FEDDB64();
          sub_24FE58B7C(v142, &qword_27F3A49D0, &qword_24FEE0850);
          sub_24FE58B7C(v149, &qword_27F3A4F78, &qword_24FEE0E68);
          v150 = v181;
          v151 = v199;
          (*(v181 + 16))(v197, v147, v199);
          swift_storeEnumTagMultiPayload();
          v152 = sub_24FE63338();
          v221 = v214;
          v222 = v145;
          v223 = v152;
          v224 = v146;
          swift_getOpaqueTypeConformance2();
          v221 = v148;
          v222 = v145;
          v223 = v213;
          v224 = v146;
          swift_getOpaqueTypeConformance2();
          sub_24FEDD5F4();
          (*(v150 + 8))(v147, v151);
          v111 = v216;
          goto LABEL_12;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v73 = v218;
  v74 = v218[13];
  v75 = *(v67 + v218[12]);
  v76 = *(v67 + v74);
  v77 = *(v67 + v74 + 8);
  *&v225 = v76;
  *(&v225 + 1) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
  result = sub_24FEDDD44();
  if ((v221 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v221 >= *(v75 + 16))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v79 = *(v75 + 32 + 40 * v221 + 37);
  *&v225 = v76;
  *(&v225 + 1) = v77;
  result = sub_24FEDDD44();
  if ((v221 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v221 >= *(v75 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v80 = v75 + 32 + 40 * v221;
  v81 = *(v80 + 32);
  v82 = *(v80 + 36);
  v83 = v179;
  sub_24FE58B14(v67 + v73[11], &v179[*(v178 + 24)], &unk_27F3A4A40, &qword_24FEE08C0);
  *v83 = v79;
  *(v83 + 4) = v81;
  *(v83 + 8) = v82;
  sub_24FEDDF44();
  sub_24FEDD294();
  v84 = v188;
  sub_24FE62404(v83, v188, type metadata accessor for ImageDetailsView);
  v85 = (v84 + *(v214 + 36));
  v86 = v230;
  v85[4] = v229;
  v85[5] = v86;
  v85[6] = v231;
  v87 = v226;
  *v85 = v225;
  v85[1] = v87;
  v88 = v228;
  v85[2] = v227;
  v85[3] = v88;
  v89 = v207;
  v90 = *(v207 + 104);
  v91 = v205;
  v92 = v208;
  v90(v205, *MEMORY[0x277CDF9F8], v208);
  v93 = v206;
  v90(v206, *MEMORY[0x277CDFA10], v92);
  sub_24FE62254(&qword_27F3A4E30, MEMORY[0x277CDFA28]);
  result = sub_24FEDE184();
  if ((result & 1) == 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v94 = *(v89 + 32);
  v95 = v189;
  v94(v189, v91, v92);
  v96 = v190;
  v94((v95 + *(v190 + 48)), v93, v92);
  v97 = v191;
  sub_24FE58B14(v95, v191, &qword_27F3A4E20, &qword_24FEE0DA0);
  v98 = *(v96 + 48);
  v99 = v192;
  v94(v192, v97, v92);
  v100 = *(v89 + 8);
  v100(v97 + v98, v92);
  sub_24FE6315C(v95, v97, &qword_27F3A4E20, &qword_24FEE0DA0);
  v101 = *(v96 + 48);
  v102 = v194;
  v94((v99 + *(v194 + 36)), (v97 + v101), v92);
  v100(v97, v92);
  v103 = sub_24FE63338();
  v104 = sub_24FE58928(&qword_27F3A4A28, &qword_27F3A49D0, &qword_24FEE0850);
  v105 = v176;
  v106 = v214;
  v107 = v188;
  sub_24FEDDB64();
  sub_24FE58B7C(v99, &qword_27F3A49D0, &qword_24FEE0850);
  sub_24FE58B7C(v107, &qword_27F3A4F90, &qword_24FEE0E80);
  v108 = v177;
  v109 = v193;
  (*(v177 + 16))(v197, v105, v193);
  swift_storeEnumTagMultiPayload();
  v221 = v106;
  v222 = v102;
  v223 = v103;
  v224 = v104;
  swift_getOpaqueTypeConformance2();
  v110 = sub_24FE6327C();
  v221 = v215;
  v222 = v102;
  v223 = v110;
  v224 = v104;
  swift_getOpaqueTypeConformance2();
  sub_24FEDD5F4();
  v111 = v216;
  (*(v108 + 8))(v105, v109);
LABEL_12:
  v153 = *(v111 + 56);
  v154 = v202;
  v155 = v201;
  if (v153)
  {
    v215 = *(v111 + 48);
    v156 = v218;
    v157 = (v111 + v218[14]);
    v158 = *v157;
    v159 = *(v157 + 1);
    v219 = v158;
    v220 = v159;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
    sub_24FEDDD64();
    v160 = v221;
    v161 = v222;
    v162 = v223;
    v163 = (v111 + v156[16]);
    v165 = *v163;
    v164 = v163[1];
    v166 = *(v155 + 28);

    v167 = v187;
    _s21GenerativeAssistantUI0A13DismissalViewVACycfC_0();
    *v167 = v215;
    *(v167 + 8) = v153;
    *(v167 + 16) = v160;
    *(v167 + 24) = v161;
    *(v167 + 32) = v162;
    *(v167 + 40) = v165;
    *(v167 + 48) = v164;
    sub_24FE62404(v167, v154, type metadata accessor for RemoveAttachmentButton);
    v168 = 0;
  }

  else
  {
    v168 = 1;
  }

  (*(v200 + 56))(v154, v168, 1, v155);
  v169 = v210;
  v170 = v196;
  sub_24FE58B14(v210, v196, &qword_27F3A4FA8, &qword_24FEE0E98);
  v171 = v217;
  v172 = v198;
  sub_24FE58B14(v217, v198, &qword_27F3A4FA0, &qword_24FEE0E90);
  v173 = v203;
  sub_24FE58B14(v154, v203, &qword_27F3A4F70, &qword_24FEE0E60);
  v174 = v204;
  sub_24FE58B14(v170, v204, &qword_27F3A4FA8, &qword_24FEE0E98);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4FD8, &qword_24FEE0EA0);
  sub_24FE58B14(v172, v174 + *(v175 + 48), &qword_27F3A4FA0, &qword_24FEE0E90);
  sub_24FE58B14(v173, v174 + *(v175 + 64), &qword_27F3A4F70, &qword_24FEE0E60);
  sub_24FE58B7C(v154, &qword_27F3A4F70, &qword_24FEE0E60);
  sub_24FE58B7C(v171, &qword_27F3A4FA0, &qword_24FEE0E90);
  sub_24FE58B7C(v169, &qword_27F3A4FA8, &qword_24FEE0E98);
  sub_24FE58B7C(v173, &qword_27F3A4F70, &qword_24FEE0E60);
  sub_24FE58B7C(v172, &qword_27F3A4FA0, &qword_24FEE0E90);
  return sub_24FE58B7C(v170, &qword_27F3A4FA8, &qword_24FEE0E98);
}

uint64_t sub_24FE5BF08()
{
  v1 = type metadata accessor for AttachmentConfirmationView(0);
  v2 = *(v0 + *(v1 + 48));
  v19 = *(v0 + *(v1 + 52));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
  result = sub_24FEDDD44();
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(v2 + 16);
  if (v18 >= v4)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v5 = v2 + 40 * v18;
  v6 = *(v5 + 48);
  if (v6 >> 60 == 15)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
LABEL_5:
    v9 = v2 + 40 * v7;
    while (v4 != v7)
    {
      if (v7 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      ++v7;
      v10 = (v9 + 40);
      v11 = *(v9 + 48);
      v9 += 40;
      if (v11 >> 60 != 15)
      {
        v12 = *v10;
        sub_24FE62C94(*v10, v11);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24FE70C70(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_24FE70C70((v13 > 1), v14 + 1, 1, v8);
          v8 = result;
        }

        *(v8 + 16) = v14 + 1;
        v15 = v8 + 16 * v14;
        *(v15 + 32) = v12;
        *(v15 + 40) = v11;
        goto LABEL_5;
      }
    }

    if (*(v8 + 16))
    {
      v16 = *(v8 + 32);
      v6 = *(v8 + 40);
      sub_24FE62C94(v16, v6);

      goto LABEL_17;
    }

    return 0;
  }

  else
  {
    v16 = *(v5 + 40);
    sub_24FE62C94(v16, *(v5 + 48));
LABEL_17:
    sub_24FE62F4C(0, &unk_27F3A4BB8, 0x277D755B8);
    v17 = sub_24FEDE534();
    sub_24FE62CE8(v16, v6);
  }

  return v17;
}

uint64_t sub_24FE5C100@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E20, &qword_24FEE0DA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v37 - v9;
  v10 = sub_24FEDD234();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  if (a1)
  {
    v18 = v11[13];
    v18(&v37 - v16, *MEMORY[0x277CDF9F8], v10);
    v18(v15, *MEMORY[0x277CDFA10], v10);
    sub_24FE62254(&qword_27F3A4E30, MEMORY[0x277CDFA28]);
    v2 = v10;
    if (sub_24FEDE184())
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v19 = type metadata accessor for AttachmentConfirmationView(0);
  v20 = v2 + *(v19 + 56);
  v21 = *v20;
  v22 = *(v20 + 8);
  v41 = v21;
  v42 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  if (v40 == 1)
  {
    v23 = v2 + *(v19 + 60);
    v24 = *v23;
    v25 = *(v23 + 8);
    v41 = v24;
    v42 = v25;
    sub_24FEDDD44();
    if (v40 == 1)
    {
      v26 = v11[13];
      v26(v17, *MEMORY[0x277CDF9F8], v10);
      v26(v15, *MEMORY[0x277CDFA10], v10);
      sub_24FE62254(&qword_27F3A4E30, MEMORY[0x277CDFA28]);
      if ((sub_24FEDE184() & 1) == 0)
      {
        __break(1u);
        goto LABEL_8;
      }

LABEL_9:
      v29 = v8;
      v31 = v38;
      v30 = v39;
      v32 = v11[4];
      v32(v39, v17, v10);
      v32((v30 + *(v4 + 48)), v15, v10);
      sub_24FE58B14(v30, v29, &qword_27F3A4E20, &qword_24FEE0DA0);
      v33 = *(v4 + 48);
      v32(v31, v29, v10);
      v34 = v11[1];
      v34(v29 + v33, v10);
      sub_24FE6315C(v30, v29, &qword_27F3A4E20, &qword_24FEE0DA0);
      v35 = *(v4 + 48);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49D0, &qword_24FEE0850);
      v32(&v31[*(v36 + 36)], (v29 + v35), v10);
      return (v34)(v29, v10);
    }
  }

LABEL_8:
  v27 = v11[13];
  v27(v17, *MEMORY[0x277CDF9F8], v10);
  v27(v15, *MEMORY[0x277CDF9D0], v10);
  sub_24FE62254(&qword_27F3A4E30, MEMORY[0x277CDFA28]);
  result = sub_24FEDE184();
  if (result)
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_24FE5C5B8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttachmentConfirmationView(0);
  v4 = *(v1 + *(v3 + 48));
  v10 = *(v1 + *(v3 + 52));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
  result = sub_24FEDDD44();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= *(v4 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = v4 + 40 * v9;
  if (*(v6 + 56))
  {
    v7 = *(v6 + 56);

    sub_24FEDCDC4();
  }

  else
  {
    v8 = sub_24FEDC9E4();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

void sub_24FE5C6A8(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentConfirmationView(0);
  v3 = (a1 + *(v2 + 56));
  v6 = *v3;
  v8 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  if (v5 != 1 || (v4 = (a1 + *(v2 + 60)), v7 = *v4, v9 = *(v4 + 1), sub_24FEDDD44(), (v5 & 1) == 0))
  {
    sub_24FE58C68();
  }
}

uint64_t sub_24FE5C794(uint64_t a1)
{
  v2 = sub_24FEDCEF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = sub_24FEDCEC4();
    MEMORY[0x28223BE20](v11);
    v12[-4] = a1;
    v12[-3] = v7;
    v12[-2] = v9;
    v12[-1] = v8;
    v12[1] = sub_24FEDD0A4();
    sub_24FEDD094();
    sub_24FEDD274();

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for AttachmentConfirmationView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 72);

  v11 = v1[9];
  v12 = sub_24FEDCEB4();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  v13 = v1[10];
  v14 = sub_24FEDCA34();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v3 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = v1[11];
  v17 = sub_24FEDC9E4();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v5 + v16, 1, v17))
  {
    (*(v18 + 8))(v5 + v16, v17);
  }

  v19 = *(v5 + v1[12]);

  v20 = *(v5 + v1[13] + 8);

  v21 = *(v5 + v1[14] + 8);

  v22 = *(v5 + v1[15] + 8);

  v23 = *(v5 + v1[16] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE5CBA4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_24FE5CC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24FEDCED4();
  v7 = type metadata accessor for AttachmentConfirmationView(0);
  v8 = (a1 + v7[14]);
  v11 = *v8;
  v14 = *(v8 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD54();
  if (sub_24FEDCEE4())
  {
    *(*(a1 + v7[12]) + 16);
  }

  v12 = *(a1 + v7[13]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A49F0, &qword_24FEE0870);
  result = sub_24FEDDD54();
  if (qword_27F3A49C8)
  {
    if (qword_27F3A49C0 == a3 && qword_27F3A49C8 == a4 || (result = sub_24FEDE844(), (result & 1) != 0))
    {
      v10 = (a1 + v7[15]);
      v13 = *v10;
      v15 = *(v10 + 1);
      return sub_24FEDDD54();
    }
  }

  return result;
}

void *sub_24FE5CDA0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if ([result respondsToSelector_])
    {
      [v1 informHostOfViewResize_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24FE5CE20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t AttachmentConfirmationView.init(payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttachmentConfirmationView(0);
  v5 = v4[13];
  sub_24FEDDD34();
  *(a2 + v5) = v22;
  v6 = a2 + v4[14];
  sub_24FEDDD34();
  *v6 = v22;
  *(v6 + 8) = *(&v22 + 1);
  v7 = a2 + v4[15];
  sub_24FEDDD34();
  *v7 = v22;
  *(v7 + 8) = *(&v22 + 1);
  v8 = (a2 + v4[17]);
  sub_24FEDE134();
  sub_24FE62254(&qword_27F3A4A30, MEMORY[0x277D63F60]);
  *v8 = sub_24FEDD2C4();
  v8[1] = v9;
  v10 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v10;
  *(a2 + 16) = *(a1 + 16);
  v11 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v11;
  *(a2 + 48) = *(a1 + 48);
  v12 = *(a1 + 72);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = v12;
  v13 = type metadata accessor for AttachmentConfirmationPayload(0);
  v14 = v13[9];
  v15 = v4[9];
  v16 = sub_24FEDCEB4();
  (*(*(v16 - 8) + 32))(a2 + v15, a1 + v14, v16);
  sub_24FE6315C(a1 + v13[10], a2 + v4[10], &qword_27F3A4A38, &unk_24FEE1340);
  result = sub_24FE6315C(a1 + v13[11], a2 + v4[11], &unk_27F3A4A40, &qword_24FEE08C0);
  *(a2 + v4[12]) = *(a1 + v13[12]);
  v18 = (a1 + v13[13]);
  v20 = *v18;
  v19 = v18[1];
  v21 = (a2 + v4[16]);
  *v21 = v20;
  v21[1] = v19;
  return result;
}

uint64_t sub_24FE5D078@<X0>(uint64_t a1@<X8>)
{
  v35[1] = a1;
  v35[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D48, &qword_24FEE0D30);
  v2 = *(*(v35[0] - 8) + 64);
  MEMORY[0x28223BE20](v35[0]);
  v4 = v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D50, &qword_24FEE0D38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v35 - v7;
  v9 = sub_24FEDDCD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D58, &unk_24FEE0D40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v35 - v16;
  if (*v1)
  {
    v18 = *v1;
    sub_24FEDDCA4();
    (*(v10 + 104))(v13, *MEMORY[0x277CE0FE0], v9);
    v19 = sub_24FEDDD04();

    (*(v10 + 8))(v13, v9);
    sub_24FEDDF14();
    sub_24FEDD0F4();
    v37 = 1;
    *&v36[6] = v38;
    *&v36[22] = v39;
    *&v36[38] = v40;
    v20 = &v17[*(v14 + 36)];
    v21 = *(sub_24FEDD284() + 20);
    v22 = *MEMORY[0x277CE0118];
    v23 = sub_24FEDD4E4();
    (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
    __asm { FMOV            V0.2D, #10.0 }

    *v20 = _Q0;
    *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D80, &unk_24FEE0D50) + 36)] = 256;
    v29 = *&v36[16];
    *(v17 + 18) = *v36;
    *v17 = v19;
    *(v17 + 1) = 0;
    *(v17 + 8) = 257;
    *(v17 + 34) = v29;
    *(v17 + 50) = *&v36[32];
    *(v17 + 8) = *&v36[46];
    v30 = &qword_27F3A4D58;
    v31 = &unk_24FEE0D40;
    sub_24FE58B14(v17, v8, &qword_27F3A4D58, &unk_24FEE0D40);
    swift_storeEnumTagMultiPayload();
    sub_24FE62D50();
    sub_24FE62EA0();
    sub_24FEDD5F4();

    v32 = v17;
  }

  else
  {
    v33 = v1 + *(type metadata accessor for ThumbnailView(0) + 20);
    sub_24FE56C90(v4);
    v30 = &qword_27F3A4D48;
    v31 = &qword_24FEE0D30;
    sub_24FE58B14(v4, v8, &qword_27F3A4D48, &qword_24FEE0D30);
    swift_storeEnumTagMultiPayload();
    sub_24FE62D50();
    sub_24FE62EA0();
    sub_24FEDD5F4();
    v32 = v4;
  }

  return sub_24FE58B7C(v32, v30, v31);
}

uint64_t sub_24FE5D490@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a1;
  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
    swift_once();
  }

  v3 = qword_27F3B30E0;
  LOWORD(v26) = 256;
  v4 = sub_24FEDD9D4();
  v6 = v5;
  v8 = v7;
  sub_24FEDD804();
  v9 = sub_24FEDD8E4();
  v28 = v10;
  v29 = v9;
  v27 = v11;
  v30 = v12;
  sub_24FE56B94(v4, v6, v8 & 1);

  v13 = sub_24FE5D708();
  v15 = v14;
  LOBYTE(v6) = v16;
  v17 = [objc_opt_self() systemGrayColor];
  sub_24FEDDC94();
  v18 = sub_24FEDD964();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_24FE56B94(v13, v15, v6 & 1);

  *a2 = v29;
  *(a2 + 8) = v28;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22 & 1;
  *(a2 + 56) = v24;
  sub_24FE629DC(v29, v28, v27 & 1);

  sub_24FE629DC(v18, v20, v22 & 1);

  sub_24FE56B94(v18, v20, v22 & 1);

  sub_24FE56B94(v29, v28, v27 & 1);
}

uint64_t sub_24FE5D708()
{
  v1 = *(v0 + 8);
  if (*v0 != 1)
  {
    if (*(v0 + 8))
    {
      sub_24FEDD4B4();
      if (qword_27F3A4678 != -1)
      {
        swift_once();
      }

      v4 = qword_27F3B30E0;
      v5 = sub_24FEDD9D4();
      v35 = v6;
      v36 = v5;
      v8 = v7;
    }

    else
    {
      sub_24FE58418(*(v0 + 4));
      sub_24FE56B40();
      v14 = sub_24FEDD9F4();
      v16 = v15;
      v18 = v17;
      sub_24FEDD7C4();
      v19 = sub_24FEDD994();
      v35 = v20;
      v36 = v19;
      v8 = v21;

      sub_24FE56B94(v14, v16, v18 & 1);
    }

    sub_24FEDD4B4();
    if (qword_27F3A4678 != -1)
    {
      swift_once();
    }

    v22 = qword_27F3B30E0;
    v23 = sub_24FEDD9D4();
    v25 = v24;
    v27 = v26;
    sub_24FEDD7C4();
    v28 = sub_24FEDD994();
    v30 = v29;
    v32 = v31;

    sub_24FE56B94(v23, v25, v27 & 1);

    v34 = sub_24FEDD984();
    sub_24FE56B94(v28, v30, v32 & 1);

    sub_24FE56B94(v36, v35, v8 & 1);
    v3 = v34;
    goto LABEL_15;
  }

  if ((*(v0 + 8) & 1) == 0)
  {
    sub_24FE58418(*(v0 + 4));
    sub_24FE56B40();
    v9 = sub_24FEDD9F4();
    v11 = v10;
    v13 = v12;
    sub_24FEDD7C4();
    v3 = sub_24FEDD994();

    sub_24FE56B94(v9, v11, v13 & 1);
LABEL_15:

    return v3;
  }

  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
    swift_once();
  }

  v2 = qword_27F3B30E0;
  return sub_24FEDD9D4();
}

__n128 sub_24FE5DB10@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDD514();
  sub_24FE5D490(v1, v6);
  *&v5[55] = v6[3];
  *&v5[39] = v6[2];
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *(a1 + 33) = *&v5[16];
  result = *&v5[32];
  *(a1 + 49) = *&v5[32];
  *(a1 + 65) = *&v5[48];
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v5[63];
  *(a1 + 17) = *v5;
  return result;
}

uint64_t sub_24FE5DBA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C98, &qword_24FEE0C60);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v69 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CA0, &qword_24FEE0C68);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CA8, &qword_24FEE0C70);
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v68 - v15;
  v70 = a1;
  v17 = *(a1 + 64);
  v80 = *(a1 + 56);
  v81 = v17;
  v18 = sub_24FE56B40();

  v68 = v18;
  v19 = sub_24FEDD9F4();
  v21 = v20;
  LOBYTE(v17) = v22;
  v24 = v23;
  KeyPath = swift_getKeyPath();
  v80 = v19;
  v81 = v21;
  v82 = v17 & 1;
  v83 = v24;
  v84 = KeyPath;
  v26 = 1;
  v85 = 1;
  v86 = 0;
  sub_24FEDD804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CB8, &qword_24FEE0CA8);
  sub_24FE62924();
  v78 = v16;
  v28 = v71;
  v27 = v72;
  sub_24FEDDAA4();
  v29 = v19;
  v30 = v70;
  v31 = v21;
  v32 = v79;
  sub_24FE56B94(v29, v31, v17 & 1);

  if (*(*(v30 + 16) + 16) >= 2uLL)
  {
    v34 = MEMORY[0x28223BE20](v33);
    MEMORY[0x28223BE20](v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CE0, &qword_24FEE0CC0);
    sub_24FE629FC();
    sub_24FE62BD4();
    v35 = v69;
    sub_24FEDD8C4();
    (*(v28 + 32))(v32, v35, v27);
    v26 = 0;
  }

  (*(v28 + 56))(v32, v26, 1, v27);
  if (*(v30 + 52))
  {
    sub_24FEDD4B4();
    if (qword_27F3A4678 != -1)
    {
      swift_once();
    }

    v36 = qword_27F3B30E0;
    v37 = sub_24FEDD9D4();
    v39 = v38;
    v41 = v40;
  }

  else
  {
    v80 = sub_24FE58418(*(v30 + 48));
    v81 = v42;
    v43 = sub_24FEDD9F4();
    v45 = v44;
    v47 = v46;
    sub_24FEDD7C4();
    v37 = sub_24FEDD994();
    v39 = v48;
    v41 = v49;

    sub_24FE56B94(v43, v45, v47 & 1);
  }

  v50 = [objc_opt_self() systemGrayColor];
  sub_24FEDDC94();
  v51 = sub_24FEDD964();
  v53 = v52;
  LODWORD(v71) = v54;
  v72 = v55;

  sub_24FE56B94(v37, v39, v41 & 1);

  v57 = v73;
  v56 = v74;
  v58 = *(v74 + 16);
  v59 = v75;
  v58(v73, v78, v75);
  v60 = v79;
  v61 = v76;
  sub_24FE58B14(v79, v76, &qword_27F3A4CA0, &qword_24FEE0C68);
  v62 = v77;
  v58(v77, v57, v59);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CD8, &qword_24FEE0CB8);
  sub_24FE58B14(v61, &v62[*(v63 + 48)], &qword_27F3A4CA0, &qword_24FEE0C68);
  v64 = &v62[*(v63 + 64)];
  *v64 = v51;
  *(v64 + 1) = v53;
  v65 = v71;
  LOBYTE(v63) = v71 & 1;
  v64[16] = v71 & 1;
  *(v64 + 3) = v72;
  sub_24FE629DC(v51, v53, v65 & 1);

  sub_24FE58B7C(v60, &qword_27F3A4CA0, &qword_24FEE0C68);
  v66 = *(v56 + 8);
  v66(v78, v59);
  sub_24FE56B94(v51, v53, v63);

  sub_24FE58B7C(v61, &qword_27F3A4CA0, &qword_24FEE0C68);
  return (v66)(v57, v59);
}

__n128 sub_24FE5E260@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v9 = *(a1 + 3);
  v10 = a1[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D30, &qword_24FEE0D18);
  sub_24FEDDE44();
  result = v7;
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_24FE5E2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24FEDD414();
  v16 = 0;
  sub_24FE5E598(a1, &v29);
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v17 = v29;
  v18 = v30;
  v27[6] = v35;
  v27[7] = v36;
  v27[8] = v37;
  v27[2] = v31;
  v27[3] = v32;
  v27[4] = v33;
  v27[5] = v34;
  v26 = v38;
  v28 = v38;
  v27[0] = v29;
  v27[1] = v30;
  sub_24FE58B14(&v17, &v12, &qword_27F3A4D28, &qword_24FEE0CE0);
  sub_24FE58B7C(v27, &qword_27F3A4D28, &qword_24FEE0CE0);
  *&v15[103] = v23;
  *&v15[119] = v24;
  *&v15[135] = v25;
  *&v15[39] = v19;
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22;
  *&v15[7] = v17;
  *&v15[151] = v26;
  *&v15[23] = v18;
  v5 = v16;
  v6 = sub_24FEDD7C4();
  KeyPath = swift_getKeyPath();
  *&v13[97] = *&v15[96];
  *&v13[113] = *&v15[112];
  *&v13[129] = *&v15[128];
  *&v13[144] = *&v15[143];
  *&v13[33] = *&v15[32];
  *&v13[49] = *&v15[48];
  *&v13[65] = *&v15[64];
  *&v13[81] = *&v15[80];
  *&v13[1] = *v15;
  *&v12 = v4;
  *(&v12 + 1) = 0x4022000000000000;
  v13[0] = v5;
  *&v13[17] = *&v15[16];
  *&v14 = KeyPath;
  *(&v14 + 1) = v6;
  sub_24FEDD814();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CF0, &qword_24FEE0CC8);
  sub_24FE62AF0();
  sub_24FEDDAA4();
  v37 = *&v13[112];
  v38 = *&v13[128];
  v39 = *&v13[144];
  v40 = v14;
  v33 = *&v13[48];
  v34 = *&v13[64];
  v35 = *&v13[80];
  v36 = *&v13[96];
  v29 = v12;
  v30 = *v13;
  v31 = *&v13[16];
  v32 = *&v13[32];
  sub_24FE58B7C(&v29, &qword_27F3A4CF0, &qword_24FEE0CC8);
  v8 = sub_24FEDDC14();
  v9 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4CE0, &qword_24FEE0CC0);
  v11 = (a2 + *(result + 36));
  *v11 = v9;
  v11[1] = v8;
  return result;
}

uint64_t sub_24FE5E598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24FEDDCD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(a1 + 40);
  v93 = *(a1 + 24);
  v94 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D30, &qword_24FEE0D18);
  MEMORY[0x25305A020](&v85, v12);
  if ((v85 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v85 >= *(v10 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v70 = v9;
  v71 = v6;
  v72 = v5;
  v13 = v10 + 40 * v85;
  v14 = *(v13 + 32);
  v16 = *(v13 + 40);
  v15 = *(v13 + 48);
  v17 = *(v13 + 56);
  sub_24FE62C80(v16, v15);
  v69 = v17;

  if ((v14 & 1) == 0)
  {
    v76 = sub_24FEDD4B4();
    if (qword_27F3A4678 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v76 = sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_7:
  v18 = qword_27F3B30E0;
  v19 = sub_24FEDD9D4();
  v75 = v20;
  v76 = v19;
  v74 = v21;
  v73 = v22;
  v2 = &v78;
  sub_24FE62CE8(v16, v15);

  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
LABEL_11:
    swift_once();
  }

  v23 = qword_27F3B30E0;
  v24 = sub_24FEDD9D4();
  v67 = v25;
  v68 = v24;
  v66 = v26;
  v69 = v27;
  v65 = sub_24FEDDF34();
  v29 = v28;
  sub_24FEDDCB4();
  v30 = v70;
  v31 = v71;
  v32 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x277CE0FE0], v72);
  v33 = sub_24FEDDD04();

  (*(v31 + 8))(v30, v32);
  v34 = sub_24FEDD7A4();
  sub_24FEDD014();
  v2[15] = v33;
  v2[16] = 0x3FE999999999999ALL;
  *(v2 + 68) = 256;
  *(v2 + 138) = *(v2 + 98);
  *(v2 + 71) = *(v2 + 51);
  v80[24] = v34;
  *(v2 + 37) = *(v2 + 94);
  v35 = v79;
  *(v2 + 145) = v79;
  v2[19] = v36;
  v2[20] = v37;
  v2[21] = v38;
  v2[22] = v39;
  v80[64] = 0;
  *(v2 + 47) = *(&v85 + 3);
  *(v2 + 185) = v85;
  v40 = v65;
  v2[24] = v65;
  v2[25] = v29;
  v77[0] = v66 & 1;
  v41 = *(v2 + 21);
  *(v2 + 2) = *(v2 + 19);
  *(v2 + 3) = v41;
  *(v2 + 4) = *(v2 + 23);
  v2[10] = v29;
  v42 = *(v2 + 17);
  *v2 = *(v2 + 15);
  *(v2 + 1) = v42;
  v2[26] = v33;
  v2[27] = 0x3FE999999999999ALL;
  *(v2 + 112) = 256;
  v43 = *(v2 + 98);
  *(v2 + 115) = *(v2 + 51);
  *(v2 + 226) = v43;
  v81[24] = v34;
  *(v2 + 59) = *(v2 + 94);
  *(v2 + 233) = v35;
  v2[30] = v36;
  v2[31] = v37;
  v2[32] = v38;
  v2[33] = v39;
  v81[64] = 0;
  v44 = v85;
  *(v2 + 69) = *(&v85 + 3);
  v82 = v44;
  v83 = v40;
  v84 = v29;
  sub_24FE58B14(v80, &v93, &qword_27F3A4D38, &qword_24FEE0D20);
  sub_24FE58B7C(v81, &qword_27F3A4D38, &qword_24FEE0D20);
  v45 = v77[0];
  v47 = v67;
  v46 = v68;
  *&v85 = v68;
  *(&v85 + 1) = v67;
  LOBYTE(v86) = v77[0];
  *(&v86 + 1) = *(v2 + 113);
  DWORD1(v86) = *(v2 + 29);
  v48 = v69;
  *(&v86 + 1) = v69;
  v49 = *(v2 + 1);
  v89 = *(v2 + 2);
  v50 = *(v2 + 2);
  v90 = *(v2 + 3);
  v51 = *(v2 + 3);
  v91 = *(v2 + 4);
  v52 = *(v2 + 1);
  v87 = *v2;
  v53 = *v2;
  v88 = v52;
  v54 = v86;
  *(a2 + 32) = v85;
  *(a2 + 48) = v54;
  v55 = v87;
  v56 = v91;
  v57 = v89;
  *(a2 + 112) = v90;
  *(a2 + 128) = v56;
  v58 = v88;
  *(a2 + 64) = v55;
  *(a2 + 80) = v58;
  *(a2 + 96) = v57;
  v98 = v50;
  v99 = v51;
  v100 = *(v2 + 4);
  LOBYTE(v30) = v73 & 1;
  v77[120] = v73 & 1;
  *(a2 + 16) = v73 & 1;
  v59 = v2[10];
  v61 = v75;
  v60 = v76;
  v62 = v74;
  *a2 = v76;
  *(a2 + 8) = v62;
  *(a2 + 24) = v61;
  v92 = v59;
  *&v93 = v46;
  *(a2 + 144) = v59;
  *(&v93 + 1) = v47;
  LOBYTE(v94) = v45;
  *(&v94 + 1) = *(v2 + 113);
  HIDWORD(v94) = *(v2 + 29);
  v95 = v48;
  v101 = v2[10];
  v96 = v53;
  v97 = v49;
  sub_24FE629DC(v60, v62, v30);

  sub_24FE58B14(&v85, v77, &qword_27F3A4D40, &qword_24FEE0D28);
  sub_24FE58B7C(&v93, &qword_27F3A4D40, &qword_24FEE0D28);
  sub_24FE56B94(v60, v62, v30);
}

uint64_t sub_24FE5EBE0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24FEDD514();
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C90, &qword_24FEE0C58);
  return sub_24FE5DBA0(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_24FE5EC34@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5010, &qword_24FEE0F60);
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5018, &qword_24FEE0F68);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v11 = *(v1 + 3);
  v10 = *(v1 + 4);
  v12 = *(v1 + 5);
  *&v31 = v11;
  *(&v31 + 1) = v10;
  v24 = v12;
  v25 = v10;
  v32 = v12;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D30, &qword_24FEE0D18);
  sub_24FEDDE44();
  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
    swift_once();
  }

  v13 = qword_27F3B30E0;
  *&v31 = sub_24FEDD9D4();
  *(&v31 + 1) = v14;
  LOBYTE(v32) = v15 & 1;
  v33 = v16;
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5020, &qword_24FEE0F70);
  sub_24FE636C8();
  sub_24FEDDDB4();
  v17 = sub_24FE58928(&qword_27F3A5030, &qword_27F3A5010, &qword_24FEE0F60);
  v18 = v26;
  sub_24FEDDB04();
  (*(v2 + 8))(v5, v18);
  *&v31 = v11;
  *(&v31 + 1) = v25;
  v32 = v24;
  MEMORY[0x25305A020](&v30, v23);
  v31 = *v1;
  v35 = *(v1 + 2);
  v36 = v11;
  v19 = swift_allocObject();
  v20 = v1[1];
  v19[1] = *v1;
  v19[2] = v20;
  v19[3] = v1[2];
  sub_24FE58B14(&v31, v34, &qword_27F3A5038, &qword_24FEE0F78);
  sub_24FE58B14(&v35, v34, &qword_27F3A5040, &unk_24FEE0F80);
  sub_24FE63750(&v36, v34);

  v34[0] = v18;
  v34[1] = v17;
  swift_getOpaqueTypeConformance2();
  v21 = v28;
  sub_24FEDDBC4();

  return (*(v27 + 8))(v9, v21);
}

uint64_t sub_24FE5F0A0(__int128 *a1)
{
  v12 = *(a1 + 2);
  v2 = *(v12 + 16);
  v8 = 0;
  v9 = v2;
  swift_getKeyPath();
  v11 = *a1;
  v3 = *(a1 + 4);
  v10 = *(a1 + 3);
  v4 = swift_allocObject();
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v4[3] = a1[2];
  sub_24FE58B14(&v11, v7, &qword_27F3A5038, &qword_24FEE0F78);
  sub_24FE58B14(&v12, v7, &qword_27F3A5040, &unk_24FEE0F80);
  sub_24FE63750(&v10, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5048, &qword_24FEE0FA8);
  sub_24FE63804();
  return sub_24FEDDE94();
}

uint64_t sub_24FE5F1E8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a2 + 16);
  if (v6 >= *(v7 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7 + 40 * v6;
  v9 = *(v8 + 32);
  v3 = *(v8 + 40);
  v4 = *(v8 + 48);
  v10 = *(v8 + 56);
  sub_24FE62C80(v3, v4);

  if (v9)
  {
    sub_24FEDD4B4();
    if (qword_27F3A4678 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_7:
  v11 = qword_27F3B30E0;
  v12 = sub_24FEDD9D4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_24FE62CE8(v3, v4);

  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v18;
  return result;
}

uint64_t sub_24FE5F3D8(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = *result;
    v4 = *(result + 24);
    v5 = *(result + 40);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4D30, &qword_24FEE0D18);
    MEMORY[0x25305A020](&v3, v2);
    return sub_24FEDCF04();
  }

  return result;
}

uint64_t sub_24FE5F458@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_24FE5EC34(a1);
}

uint64_t sub_24FE5F494(uint64_t a1)
{
  v2 = sub_24FEDE0B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for RemoveAttachmentButton(0) + 28);
  sub_24FEDE044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C80, &qword_24FEE0C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0740;
  v13[1] = 0x7972657571;
  v13[2] = 0xE500000000000000;
  v9 = MEMORY[0x277D837D0];
  sub_24FEDE5C4();
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  *(inited + 96) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = v10;

  sub_24FE71840(inited);
  swift_setDeallocating();
  sub_24FE58B7C(inited + 32, &qword_27F3A4C88, &qword_24FEE0C50);
  sub_24FEDE0A4();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_24FE5F644@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24FEDDCD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDDCB4();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v7 = sub_24FEDDD04();

  (*(v3 + 8))(v6, v2);
  LOBYTE(v2) = sub_24FEDD744();
  sub_24FEDD014();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v58) = 1;
  LOBYTE(v52) = 0;
  LODWORD(v6) = sub_24FEDD664();
  v16 = sub_24FEDD7C4();
  KeyPath = swift_getKeyPath();
  v58 = v7;
  LOWORD(v59) = 257;
  BYTE8(v59) = v2;
  *&v60 = v9;
  *(&v60 + 1) = v11;
  *&v61 = v13;
  *(&v61 + 1) = v15;
  LOBYTE(v62) = 0;
  DWORD1(v62) = v6;
  *(&v62 + 1) = KeyPath;
  v63 = v16;
  sub_24FEDD804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C10, &qword_24FEE0C18);
  sub_24FE62618();
  v40 = a1;
  sub_24FEDDAA4();
  v48[2] = v60;
  v48[3] = v61;
  v48[4] = v62;
  v49 = v63;
  v48[0] = v58;
  v48[1] = v59;
  sub_24FE58B7C(v48, &qword_27F3A4C10, &qword_24FEE0C18);
  sub_24FEDDF34();
  sub_24FEDD0F4();
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C08, &qword_24FEE0C10) + 36));
  v19 = v41[7];
  *v18 = v41[6];
  v18[1] = v19;
  v18[2] = v41[8];
  v20 = sub_24FEDDC44();
  LODWORD(v6) = sub_24FEDD654();
  v39 = v6;
  sub_24FEDD084();
  v21 = v42;
  v22 = v43;
  LODWORD(v3) = v44;
  v23 = v45;
  v24 = v46;
  v25 = v47;
  v26 = sub_24FEDDF34();
  v28 = v27;
  v29 = sub_24FEDDF34();
  v31 = v30;
  *&v52 = v21;
  *(&v52 + 1) = __PAIR64__(v3, v22);
  *&v53 = v23;
  *(&v53 + 1) = v24;
  *&v54 = v25;
  DWORD2(v54) = v6;
  WORD6(v54) = 256;
  *&v55 = v20;
  WORD4(v55) = 256;
  *(&v55 + 10) = v50;
  HIWORD(v55) = v51;
  *&v56 = v26;
  *(&v56 + 1) = v28;
  *&v57 = v29;
  *(&v57 + 1) = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4BF0, &qword_24FEE0C08);
  v33 = (v40 + *(v32 + 36));
  v34 = v55;
  v33[2] = v54;
  v33[3] = v34;
  v35 = v57;
  v33[4] = v56;
  v33[5] = v35;
  v36 = v53;
  *v33 = v52;
  v33[1] = v36;
  *&v58 = v21;
  *(&v58 + 1) = __PAIR64__(v3, v22);
  *&v59 = v23;
  *(&v59 + 1) = v24;
  *&v60 = v25;
  DWORD2(v60) = v39;
  WORD6(v60) = 256;
  *&v61 = v20;
  WORD4(v61) = 256;
  HIWORD(v61) = v51;
  *(&v61 + 10) = v50;
  *&v62 = v26;
  *(&v62 + 1) = v28;
  v63 = v29;
  v64 = v31;
  sub_24FE58B14(&v52, v41, &qword_27F3A4C68, &qword_24FEE0C40);
  return sub_24FE58B7C(&v58, &qword_27F3A4C68, &qword_24FEE0C40);
}

uint64_t sub_24FE5FA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = sub_24FEDD614();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4BE8, &qword_24FEE0C00);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - v15;
  sub_24FE6229C(v2, v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RemoveAttachmentButton);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_24FE62404(v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for RemoveAttachmentButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4BF0, &qword_24FEE0C08);
  sub_24FE62498();
  sub_24FEDDD84();
  sub_24FEDD604();
  sub_24FE58928(&qword_27F3A4C70, &qword_27F3A4BE8, &qword_24FEE0C00);
  sub_24FE62254(&qword_27F3A4C78, MEMORY[0x277CDE0B8]);
  sub_24FEDDAB4();
  (*(v5 + 8))(v9, v4);
  return (*(v13 + 8))(v16, v12);
}

id sub_24FE5FD68()
{
  v0 = sub_24FEDCF74();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = [objc_allocWithZone(MEMORY[0x277CDAA58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4BD0, &qword_24FEE0BF8);
  sub_24FEDD704();
  [v2 setDataSource_];

  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor_];

  v5 = [v3 clearColor];
  [v2 setFullscreenBackgroundColor_];

  v6 = v2;
  sub_24FEDE4E4();
  sub_24FEDCF64();
  sub_24FEDE4F4();

  return v6;
}

id sub_24FE5FEF4(void *a1)
{
  v2 = v1;
  v13 = a1;
  v3 = sub_24FEDC9E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4BD0, &qword_24FEE0BF8);
  sub_24FEDD704();
  v8 = v14;
  v9 = OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL;
  swift_beginAccess();
  v10 = *(v4 + 16);
  v10(v7, v8 + v9, v3);

  sub_24FE62254(&qword_27F3A4BD8, MEMORY[0x277CC9260]);
  LOBYTE(v8) = sub_24FEDE194();
  result = (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    sub_24FEDD704();
    v10(v7, v2, v3);
    sub_24FE600E0(v7);

    return [v13 reloadData];
  }

  return result;
}

uint64_t sub_24FE600E0(char *a1)
{
  v2 = v1;
  v4 = sub_24FEDC9E4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL;
  swift_beginAccess();
  v13 = v5[2];
  v13(v11, v2 + v12, v4);
  swift_beginAccess();
  v14 = v5[3];
  v20 = a1;
  v14(v2 + v12, a1, v4);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_isAccessing;
  if (*(v2 + OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_isAccessing) == 1)
  {
    sub_24FEDC9A4();
  }

  v13(v9, v2 + v12, v4);
  v16 = sub_24FEDC9C4();
  v17 = v5[1];
  v17(v20, v4);
  v17(v9, v4);
  result = (v17)(v11, v4);
  *(v2 + v15) = v16 & 1;
  return result;
}

uint64_t sub_24FE602C8()
{
  v1 = v0;
  v2 = sub_24FEDC9E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_isAccessing))
  {
    v7 = OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL;
    swift_beginAccess();
    (*(v3 + 16))(v6, v1 + v7, v2);
    sub_24FEDC9A4();
    v8 = *(v3 + 8);
    v8(v6, v2);
  }

  else
  {
    v8 = *(v3 + 8);
  }

  v8((v1 + OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL), v2);
  v9 = *(*v1 + 48);
  v10 = *(*v1 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_24FE6057C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_24FEDC9E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v8(v7, v1, v3);
  v9 = type metadata accessor for QuickLookPreview.Coordinator(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v8((v12 + OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_fileURL), v7, v3);
  v13 = sub_24FEDC9C4();
  result = (*(v4 + 8))(v7, v3);
  *(v12 + OBJC_IVAR____TtCV21GenerativeAssistantUIP33_E13B720E09BAE9A3AC6F33E81C90395E16QuickLookPreview11Coordinator_isAccessing) = v13 & 1;
  *a1 = v12;
  return result;
}

uint64_t sub_24FE606FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FE62254(&qword_27F3A4BE0, type metadata accessor for QuickLookPreview);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24FE60790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FE62254(&qword_27F3A4BE0, type metadata accessor for QuickLookPreview);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24FE60824()
{
  sub_24FE62254(&qword_27F3A4BE0, type metadata accessor for QuickLookPreview);
  sub_24FEDD6E4();
  __break(1u);
}

uint64_t sub_24FE6087C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD354();
  *a1 = result;
  return result;
}

uint64_t sub_24FE608A8(uint64_t *a1)
{
  v1 = *a1;

  return sub_24FEDD364();
}

uint64_t sub_24FE608D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD374();
  *a1 = result;
  return result;
}

uint64_t sub_24FE60900@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD374();
  *a1 = result;
  return result;
}

uint64_t sub_24FE6092C(uint64_t *a1)
{
  v1 = *a1;

  return sub_24FEDD384();
}

uint64_t sub_24FE60958(uint64_t *a1)
{
  v1 = *a1;

  return sub_24FEDD384();
}

unint64_t sub_24FE60984()
{
  result = qword_27F3A4A08;
  if (!qword_27F3A4A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A49E0, &qword_24FEE0860);
    sub_24FE60A3C();
    sub_24FE58928(&qword_27F3A4A18, &qword_27F3A4A20, &unk_24FEE08B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4A08);
  }

  return result;
}

unint64_t sub_24FE60A3C()
{
  result = qword_27F3A4A10;
  if (!qword_27F3A4A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4A00, &qword_24FEE0878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A49D8, &qword_24FEE0858);
    sub_24FE58928(&qword_27F3A49F8, &qword_27F3A49D8, &qword_24FEE0858);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4A10);
  }

  return result;
}

uint64_t sub_24FE60B7C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24FE60D14(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_24FE60E98()
{
  sub_24FE61BF4(319, &qword_27F3A4A60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24FEDCEB4();
    if (v1 <= 0x3F)
    {
      sub_24FE61090(319, &qword_27F3A4A68, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_24FE61090(319, &qword_27F3A4A70, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          sub_24FE61BF4(319, &qword_27F3A4A78, &type metadata for Attachment, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            sub_24FE61BF4(319, &qword_27F3A4A80, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_24FE61BF4(319, &qword_27F3A4A88, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24FE610E4();
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

void sub_24FE61090(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24FEDE554();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24FE610E4()
{
  if (!qword_27F3A4A90)
  {
    sub_24FEDE134();
    sub_24FE62254(&qword_27F3A4A30, MEMORY[0x277D63F60]);
    v0 = sub_24FEDD2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A4A90);
    }
  }
}

uint64_t sub_24FE611A0()
{
  result = sub_24FEDC9E4();
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

uint64_t sub_24FE61238()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A49E0, &qword_24FEE0860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A49D0, &qword_24FEE0850);
  sub_24FE60984();
  sub_24FE58928(&qword_27F3A4A28, &qword_27F3A49D0, &qword_24FEE0850);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24FE61310(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC9E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FE61390(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FEDC9E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24FE61420()
{
  result = sub_24FEDC9E4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24FE614A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24FEDE064();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24FE61560(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24FEDE064();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FE61624()
{
  sub_24FE61BF4(319, &unk_27F3A4B50, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_24FEDE064();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24FE616F0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24FE61888(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_24FE61A2C()
{
  sub_24FE61BF4(319, &qword_27F3A4A60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24FE61BF4(319, &qword_27F3A4A78, &type metadata for Attachment, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24FE61BF4(319, &qword_27F3A4B70, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_24FE61BF4(319, &unk_27F3A4B78, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24FEDCEB4();
          if (v4 <= 0x3F)
          {
            sub_24FE61090(319, &qword_27F3A4A68, MEMORY[0x277CC9578]);
            if (v5 <= 0x3F)
            {
              sub_24FE61090(319, &qword_27F3A4A70, MEMORY[0x277CC9260]);
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

void sub_24FE61BF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24FE61C58(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_24FE61D28(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24FE61DF4()
{
  sub_24FE61BF4(319, &unk_27F3A4B78, MEMORY[0x277D83A90], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24FE61090(319, &qword_27F3A4A70, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24FE61EDC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_24FEDCEB4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_24FE61FA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_24FEDCEB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24FE6206C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24FE620A4()
{
  sub_24FE62128();
  if (v0 <= 0x3F)
  {
    sub_24FEDCEB4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24FE62128()
{
  if (!qword_27F3A4BB0)
  {
    sub_24FE62F4C(255, &unk_27F3A4BB8, 0x277D755B8);
    v0 = sub_24FEDE554();
    if (!v1)
    {
      atomic_store(v0, &qword_27F3A4BB0);
    }
  }
}

uint64_t sub_24FE62254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE6229C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE62304()
{
  v1 = (type metadata accessor for RemoveAttachmentButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 48);

  v9 = v1[9];
  v10 = sub_24FEDE064();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE62404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24FE62498()
{
  result = qword_27F3A4BF8;
  if (!qword_27F3A4BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4BF0, &qword_24FEE0C08);
    sub_24FE62550();
    sub_24FE58928(&qword_27F3A4C60, &qword_27F3A4C68, &qword_24FEE0C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4BF8);
  }

  return result;
}

unint64_t sub_24FE62550()
{
  result = qword_27F3A4C00;
  if (!qword_27F3A4C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4C08, &qword_24FEE0C10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4C10, &qword_24FEE0C18);
    sub_24FE62618();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4C00);
  }

  return result;
}

unint64_t sub_24FE62618()
{
  result = qword_27F3A4C18;
  if (!qword_27F3A4C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4C10, &qword_24FEE0C18);
    sub_24FE626D0();
    sub_24FE58928(&qword_27F3A4A18, &qword_27F3A4A20, &unk_24FEE08B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4C18);
  }

  return result;
}

unint64_t sub_24FE626D0()
{
  result = qword_27F3A4C20;
  if (!qword_27F3A4C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4C28, &qword_24FEE0C20);
    sub_24FE62E28(&qword_27F3A4C30, &qword_27F3A4C38, &qword_24FEE0C28);
    sub_24FE58928(&qword_27F3A4C50, &qword_27F3A4C58, &qword_24FEE0C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4C20);
  }

  return result;
}

uint64_t sub_24FE627A8()
{
  v1 = type metadata accessor for AttachmentConfirmationView(0);
  v2 = (v0 + *(v1 + 56));
  v3 = *v2;
  v4 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4E28, &unk_24FEE0DA8);
  sub_24FEDDD44();
  if (v11 == 1)
  {
    sub_24FEDDD44();
    v5 = (v0 + *(v1 + 60));
    v12 = *v5;
    v13 = *(v5 + 1);
    sub_24FEDDD44();
    v6 = 8;
    if (v11)
    {
      v6 = 24;
    }

    v7 = 16;
    if (!v11)
    {
      v7 = 0;
    }

    v8 = v0 + v7;
  }

  else
  {
    v8 = v0 + 32;
    v6 = 40;
  }

  v9 = *(v0 + v6);
  return *v8;
}

uint64_t sub_24FE628C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_24FEDD3B4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24FE628F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24FEDD3C4();
}

unint64_t sub_24FE62924()
{
  result = qword_27F3A4CC0;
  if (!qword_27F3A4CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4CB8, &qword_24FEE0CA8);
    sub_24FE58928(&qword_27F3A4CC8, &qword_27F3A4CD0, &qword_24FEE0CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4CC0);
  }

  return result;
}

uint64_t sub_24FE629DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_24FE629FC()
{
  result = qword_27F3A4CE8;
  if (!qword_27F3A4CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4CE0, &qword_24FEE0CC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4CF0, &qword_24FEE0CC8);
    sub_24FE62AF0();
    swift_getOpaqueTypeConformance2();
    sub_24FE58928(&unk_27F3A4D10, &qword_27F3A49A0, &qword_24FEE07D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4CE8);
  }

  return result;
}

unint64_t sub_24FE62AF0()
{
  result = qword_27F3A4CF8;
  if (!qword_27F3A4CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4CF0, &qword_24FEE0CC8);
    sub_24FE58928(&qword_27F3A4D00, &qword_27F3A4D08, &unk_24FEE0CD0);
    sub_24FE58928(&qword_27F3A4A18, &qword_27F3A4A20, &unk_24FEE08B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4CF8);
  }

  return result;
}

unint64_t sub_24FE62BD4()
{
  result = qword_27F3A4D20;
  if (!qword_27F3A4D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4D20);
  }

  return result;
}

uint64_t sub_24FE62C28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24FEDD354();
  *a1 = result;
  return result;
}

uint64_t sub_24FE62C54(uint64_t *a1)
{
  v1 = *a1;

  return sub_24FEDD364();
}

uint64_t sub_24FE62C80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24FE62C94(a1, a2);
  }

  return a1;
}

uint64_t sub_24FE62C94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_24FE62CE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24FE62CFC(a1, a2);
  }

  return a1;
}

uint64_t sub_24FE62CFC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24FE62D50()
{
  result = qword_27F3A4D60;
  if (!qword_27F3A4D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4D58, &unk_24FEE0D40);
    sub_24FE62E28(&qword_27F3A4978, &unk_27F3A4D70, &qword_24FEE07C0);
    sub_24FE58928(&unk_27F3A49B0, &qword_27F3A4D80, &unk_24FEE0D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4D60);
  }

  return result;
}

uint64_t sub_24FE62E28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24FE585F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24FE62EA0()
{
  result = qword_27F3A4D88;
  if (!qword_27F3A4D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4D48, &qword_24FEE0D30);
    sub_24FE58970();
    sub_24FE58A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4D88);
  }

  return result;
}

uint64_t sub_24FE62F4C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24FE62F94()
{
  MEMORY[0x25305B3B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24FE62FEC()
{
  result = qword_27F3A4F28;
  if (!qword_27F3A4F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4F20, &qword_24FEE0E28);
    sub_24FE630A4();
    sub_24FE58928(&unk_27F3A4D10, &qword_27F3A49A0, &qword_24FEE07D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4F28);
  }

  return result;
}

unint64_t sub_24FE630A4()
{
  result = qword_27F3A4F30;
  if (!qword_27F3A4F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4F38, &qword_24FEE0E30);
    sub_24FE62924();
    sub_24FE58928(&qword_27F3A4A18, &qword_27F3A4A20, &unk_24FEE08B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4F30);
  }

  return result;
}

uint64_t sub_24FE6315C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_24FE631C4()
{
  v1 = *(type metadata accessor for AttachmentConfirmationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_24FE58C68();
}

uint64_t sub_24FE63220(uint64_t a1)
{
  v2 = type metadata accessor for ThumbnailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FE6327C()
{
  result = qword_27F3A4FB8;
  if (!qword_27F3A4FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4F78, &qword_24FEE0E68);
    sub_24FE62254(&qword_27F3A4FC0, type metadata accessor for FileDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4FB8);
  }

  return result;
}

unint64_t sub_24FE63338()
{
  result = qword_27F3A4FC8;
  if (!qword_27F3A4FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4F90, &qword_24FEE0E80);
    sub_24FE62254(&qword_27F3A4FD0, type metadata accessor for ImageDetailsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A4FC8);
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

uint64_t sub_24FE63408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24FE63450(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_24FE634AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A4BE8, &qword_24FEE0C00);
  sub_24FEDD614();
  sub_24FE58928(&qword_27F3A4C70, &qword_27F3A4BE8, &qword_24FEE0C00);
  sub_24FE62254(&qword_27F3A4C78, MEMORY[0x277CDE0B8]);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24FE63618()
{
  result = qword_27F3A5000;
  if (!qword_27F3A5000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5008, &qword_24FEE0F08);
    sub_24FE62D50();
    sub_24FE62EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5000);
  }

  return result;
}

unint64_t sub_24FE636C8()
{
  result = qword_27F3A5028;
  if (!qword_27F3A5028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5020, &qword_24FEE0F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5028);
  }

  return result;
}

uint64_t objectdestroy_93Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_24FE63804()
{
  result = qword_27F3A5050;
  if (!qword_27F3A5050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5048, &qword_24FEE0FA8);
    sub_24FE63890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5050);
  }

  return result;
}

unint64_t sub_24FE63890()
{
  result = qword_27F3A5058;
  if (!qword_27F3A5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5058);
  }

  return result;
}

uint64_t sub_24FE638E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5018, &qword_24FEE0F68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5010, &qword_24FEE0F60);
  sub_24FE58928(&qword_27F3A5030, &qword_27F3A5010, &qword_24FEE0F60);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void __swiftcall GenerativeRateLimitedSnippetModel.init(message:query:modelDisclaimer:)(GenerativeAssistantUI::GenerativeRateLimitedSnippetModel *__return_ptr retstr, Swift::String message, Swift::String query, GenerativeAssistantUI::ModelDisclaimer_optional *modelDisclaimer)
{
  retstr->message = message;
  retstr->query = query;
  displayUrl = modelDisclaimer->value.displayUrl;
  retstr->modelDisclaimer.value.message = modelDisclaimer->value.message;
  retstr->modelDisclaimer.value.displayUrl = displayUrl;
  retstr->modelDisclaimer.value.url = modelDisclaimer->value.url;
}

uint64_t sub_24FE63A00()
{
  v1 = 0x7972657571;
  if (*v0 != 1)
  {
    v1 = 0x7369446C65646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_24FE63A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24FE645D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24FE63A98(uint64_t a1)
{
  v2 = sub_24FE63D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE63AD4(uint64_t a1)
{
  v2 = sub_24FE63D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeRateLimitedSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A50C0, &qword_24FEE0FC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v28 = v1[3];
  v29 = v10;
  v11 = v1[4];
  v26 = v1[5];
  v27 = v11;
  v12 = v1[6];
  v24 = v1[7];
  v25 = v12;
  v13 = v1[8];
  v22 = v1[9];
  v23 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE63D50();
  sub_24FEDE944();
  LOBYTE(v31) = 0;
  v15 = v30;
  sub_24FEDE7E4();
  if (!v15)
  {
    v18 = v24;
    v17 = v25;
    v20 = v26;
    v19 = v27;
    LOBYTE(v31) = 1;
    sub_24FEDE7E4();
    v31 = v19;
    v32 = v20;
    v33 = v17;
    v34 = v18;
    v35 = v23;
    v36 = v22;
    v37 = 2;
    sub_24FE63DA4(v19, v20);
    sub_24FE63DF4();
    sub_24FEDE7D4();
    sub_24FE63E48(v31, v32);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24FE63D50()
{
  result = qword_27F3A50C8;
  if (!qword_27F3A50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50C8);
  }

  return result;
}

uint64_t sub_24FE63DA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_24FE63DF4()
{
  result = qword_27F3A50D0;
  if (!qword_27F3A50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50D0);
  }

  return result;
}

uint64_t sub_24FE63E48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t GenerativeRateLimitedSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A50D8, &qword_24FEE0FC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE63D50();
  sub_24FEDE934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v35[0]) = 0;
  v11 = sub_24FEDE754();
  v13 = v12;
  v33 = a2;
  v14 = v11;
  LOBYTE(v35[0]) = 1;
  v15 = sub_24FEDE754();
  *(&v32 + 1) = v16;
  *&v32 = v15;
  v39 = 2;
  sub_24FE641D8();
  sub_24FEDE744();
  (*(v6 + 8))(v9, v5);
  v31 = v36;
  v17 = v37;
  v30 = *(&v36 + 1);
  v18 = *(&v37 + 1);
  v29 = *(&v38 + 1);
  v19 = v38;
  *&v34[0] = v14;
  *(&v34[0] + 1) = v13;
  v20 = v32;
  v34[1] = v32;
  v21 = *(&v32 + 1);
  v34[2] = v36;
  v34[3] = v37;
  v34[4] = v38;
  v22 = v34[0];
  v23 = v32;
  v24 = v38;
  v25 = v33;
  v26 = v36;
  v33[3] = v37;
  v25[4] = v24;
  v25[1] = v23;
  v25[2] = v26;
  *v25 = v22;
  sub_24FE6422C(v34, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v14;
  v35[1] = v13;
  v35[2] = v20;
  v35[3] = v21;
  v35[4] = v31;
  v35[5] = v30;
  v35[6] = v17;
  v35[7] = v18;
  v35[8] = v19;
  v35[9] = v29;
  return sub_24FE54294(v35);
}

unint64_t sub_24FE641D8()
{
  result = qword_27F3A50E0;
  if (!qword_27F3A50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21GenerativeAssistantUI15ModelDisclaimerVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_24FE642D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24FE64318(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GenerativeRateLimitedSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GenerativeRateLimitedSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24FE644D0()
{
  result = qword_27F3A50E8;
  if (!qword_27F3A50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50E8);
  }

  return result;
}

unint64_t sub_24FE64528()
{
  result = qword_27F3A50F0;
  if (!qword_27F3A50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50F0);
  }

  return result;
}

unint64_t sub_24FE64580()
{
  result = qword_27F3A50F8;
  if (!qword_27F3A50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A50F8);
  }

  return result;
}

uint64_t sub_24FE645D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7369446C65646F6DLL && a2 == 0xEF72656D69616C63)
  {

    return 2;
  }

  else
  {
    v6 = sub_24FEDE844();

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

GenerativeAssistantUI::GenerativeSearchWebButtonView __swiftcall GenerativeSearchWebButtonView.init(snippetModel:)(GenerativeAssistantUI::GenerativeSearchWebButtonView snippetModel)
{
  v2 = *(snippetModel.snippetModel.query._countAndFlagsBits + 8);
  *v1 = *snippetModel.snippetModel.query._countAndFlagsBits;
  v1[1] = v2;
  return snippetModel;
}

uint64_t GenerativeSearchWebButtonView.body.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  type metadata accessor for SearchWebButton();
  sub_24FE6487C();

  return sub_24FEDE004();
}

uint64_t sub_24FE6479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  _s21GenerativeAssistantUI0A13DismissalViewVACycfC_0();
  result = type metadata accessor for SearchWebButton();
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t sub_24FE647F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t type metadata accessor for SearchWebButton()
{
  result = qword_27F3A5118;
  if (!qword_27F3A5118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24FE6487C()
{
  result = qword_27F3A5100;
  if (!qword_27F3A5100)
  {
    type metadata accessor for SearchWebButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5100);
  }

  return result;
}

uint64_t sub_24FE648F0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  type metadata accessor for SearchWebButton();
  sub_24FE6487C();

  return sub_24FEDE004();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24FE6499C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24FE649E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24FE64A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FEDE064();
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

uint64_t sub_24FE64B5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FEDE064();
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

uint64_t sub_24FE64C18()
{
  result = sub_24FEDE064();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24FE64CA8(uint64_t a1)
{
  v2 = sub_24FEDE0B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24FEDE044();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C80, &qword_24FEE0C48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24FEE0740;
  v13[1] = 0x7972657571;
  v13[2] = 0xE500000000000000;
  v8 = MEMORY[0x277D837D0];
  sub_24FEDE5C4();
  v9 = (a1 + *(type metadata accessor for SearchWebButton() + 20));
  v11 = *v9;
  v10 = v9[1];
  *(inited + 96) = v8;
  *(inited + 72) = v11;
  *(inited + 80) = v10;

  sub_24FE71840(inited);
  swift_setDeallocating();
  sub_24FE65264(inited + 32);
  sub_24FEDE0A4();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_24FE64E48@<X0>(uint64_t a1@<X8>)
{
  sub_24FEDD4B4();
  if (qword_27F3A4678 != -1)
  {
    swift_once();
  }

  v2 = qword_27F3B30E0;
  result = sub_24FEDD9D4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_24FE64F30(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24FE65050(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_24FE651A0(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  return sub_24FEDDD84();
}

uint64_t sub_24FE65050(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchWebButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE650B4()
{
  v1 = (type metadata accessor for SearchWebButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_24FEDE064();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24FE651A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchWebButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE65204()
{
  v1 = *(type metadata accessor for SearchWebButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24FE64CA8(v2);
}

uint64_t sub_24FE65264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4C88, &qword_24FEE0C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *Attachment.init(localizedName:thumbnailImage:file:fileSizeInMB:isScreenshot:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = *result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 36) = BYTE4(a5) & 1;
  *(a7 + 37) = a6;
  return result;
}

uint64_t AttachmentConfirmationPayload.init(message:condensedMessage:attachmentRemovedMessage:sessionId:contentName:sourceContentType:sourceContentCreationDate:webpageURL:availableAttachments:userQuery:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 9) = a11;
  v18 = type metadata accessor for AttachmentConfirmationPayload(0);
  v19 = v18[9];
  v20 = sub_24FEDCEB4();
  (*(*(v20 - 8) + 32))(&a9[v19], a12, v20);
  sub_24FE6315C(a13, &a9[v18[10]], &qword_27F3A4A38, &unk_24FEE1340);
  result = sub_24FE6315C(a14, &a9[v18[11]], &unk_27F3A4A40, &qword_24FEE08C0);
  *&a9[v18[12]] = a15;
  v22 = &a9[v18[13]];
  *v22 = a16;
  *(v22 + 1) = a17;
  return result;
}

uint64_t sub_24FE6546C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentConfirmationPayload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE654D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentConfirmationPayload(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FE655A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24FEDE844();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24FE6562C(uint64_t a1)
{
  v2 = sub_24FE6581C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE65668(uint64_t a1)
{
  v2 = sub_24FE6581C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GenerativeMediaConfirmationSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5138, &qword_24FEE1350);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE6581C();
  sub_24FEDE944();
  type metadata accessor for AttachmentConfirmationPayload(0);
  sub_24FE65B04(&qword_27F3A5148, type metadata accessor for AttachmentConfirmationPayload);
  sub_24FEDE804();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_24FE6581C()
{
  result = qword_27F3A5140;
  if (!qword_27F3A5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5140);
  }

  return result;
}

uint64_t GenerativeMediaConfirmationSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for AttachmentConfirmationPayload(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5150, &qword_24FEE1358);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for GenerativeMediaConfirmationSnippetModel(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE6581C();
  sub_24FEDE934();
  if (!v2)
  {
    v16 = v19;
    sub_24FE65B04(&qword_27F3A5158, type metadata accessor for AttachmentConfirmationPayload);
    v17 = v21;
    sub_24FEDE774();
    (*(v20 + 8))(v10, v7);
    sub_24FE65B4C(v17, v14, type metadata accessor for AttachmentConfirmationPayload);
    sub_24FE65B4C(v14, v16, type metadata accessor for GenerativeMediaConfirmationSnippetModel);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24FE65B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24FE65B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24FE65BCC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5138, &qword_24FEE1350);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE6581C();
  sub_24FEDE944();
  type metadata accessor for AttachmentConfirmationPayload(0);
  sub_24FE65B04(&qword_27F3A5148, type metadata accessor for AttachmentConfirmationPayload);
  sub_24FEDE804();
  return (*(v3 + 8))(v6, v2);
}

GenerativeAssistantUI::Attachment::LocalizedName_optional __swiftcall Attachment.LocalizedName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24FEDE6F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Attachment.LocalizedName.rawValue.getter()
{
  if (*v0)
  {
    result = 0x68736E6565726373;
  }

  else
  {
    result = 0x746E6F436C6C7566;
  }

  *v0;
  return result;
}

uint64_t sub_24FE65DF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x68736E6565726373;
  }

  else
  {
    v4 = 0x746E6F436C6C7566;
  }

  if (v3)
  {
    v5 = 0xEB00000000746E65;
  }

  else
  {
    v5 = 0xEA0000000000746FLL;
  }

  if (*a2)
  {
    v6 = 0x68736E6565726373;
  }

  else
  {
    v6 = 0x746E6F436C6C7566;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000746FLL;
  }

  else
  {
    v7 = 0xEB00000000746E65;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24FEDE844();
  }

  return v9 & 1;
}

uint64_t sub_24FE65EA4()
{
  v1 = *v0;
  sub_24FEDE904();
  sub_24FEDE254();

  return sub_24FEDE924();
}

uint64_t sub_24FE65F34()
{
  *v0;
  sub_24FEDE254();
}

uint64_t sub_24FE65FB0()
{
  v1 = *v0;
  sub_24FEDE904();
  sub_24FEDE254();

  return sub_24FEDE924();
}

uint64_t sub_24FE6603C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24FEDE6F4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24FE6609C(uint64_t *a1@<X8>)
{
  v2 = 0x746E6F436C6C7566;
  if (*v1)
  {
    v2 = 0x68736E6565726373;
  }

  v3 = 0xEB00000000746E65;
  if (*v1)
  {
    v3 = 0xEA0000000000746FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t Attachment.thumbnailImage.getter()
{
  v1 = *(v0 + 8);
  sub_24FE62C80(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_24FE66210()
{
  v1 = *v0;
  v2 = 0x657A696C61636F6CLL;
  v3 = 1701603686;
  v4 = 0x657A6953656C6966;
  if (v1 != 3)
  {
    v4 = 0x6E65657263537369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69616E626D756874;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24FE662CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24FE68BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24FE66300(uint64_t a1)
{
  v2 = sub_24FE66618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE6633C(uint64_t a1)
{
  v2 = sub_24FE66618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Attachment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5160, &qword_24FEE1360);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v18 = *(v1 + 3);
  v19 = v9;
  v17 = *(v1 + 8);
  v23 = v1[36];
  v16[3] = v1[37];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE66618();
  sub_24FEDE944();
  LOBYTE(v21) = v8;
  v24 = 0;
  sub_24FE6666C();
  v12 = v20;
  sub_24FEDE804();
  if (!v12)
  {
    v13 = v18;
    v14 = v23;
    v21 = v19;
    v22 = v10;
    v24 = 1;
    sub_24FE62C80(v19, v10);
    sub_24FE666C0();
    sub_24FEDE7D4();
    sub_24FE62CE8(v21, v22);
    v21 = v13;
    v24 = 2;
    sub_24FEDCDD4();
    sub_24FE65B04(&qword_27F3A5180, MEMORY[0x277D74498]);
    sub_24FEDE7D4();
    LOBYTE(v21) = 3;
    v24 = v14;
    sub_24FEDE7C4();
    LOBYTE(v21) = 4;
    sub_24FEDE7F4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24FE66618()
{
  result = qword_27F3A5168;
  if (!qword_27F3A5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5168);
  }

  return result;
}

unint64_t sub_24FE6666C()
{
  result = qword_27F3A5170;
  if (!qword_27F3A5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5170);
  }

  return result;
}

unint64_t sub_24FE666C0()
{
  result = qword_27F3A5178;
  if (!qword_27F3A5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5178);
  }

  return result;
}

uint64_t Attachment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5188, &qword_24FEE1368);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE66618();
  sub_24FEDE934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  sub_24FE66A8C();
  sub_24FEDE774();
  v23 = v21;
  v24 = 1;
  sub_24FE66AE0();
  sub_24FEDE744();
  v11 = v21;
  v20 = v22;
  sub_24FEDCDD4();
  v24 = 2;
  sub_24FE65B04(&qword_27F3A51A0, MEMORY[0x277D74498]);
  sub_24FEDE744();
  v19 = v21;
  LOBYTE(v21) = 3;
  v12 = sub_24FEDE734();
  LOBYTE(v21) = 4;
  v13 = sub_24FEDE764();
  (*(v6 + 8))(v9, v5);
  v15 = v13 & 1;
  *a2 = v23;
  v16 = v11;
  *(a2 + 8) = v11;
  v17 = v19;
  v18 = v20;
  *(a2 + 16) = v20;
  *(a2 + 24) = v17;
  *(a2 + 32) = v12;
  *(a2 + 36) = BYTE4(v12) & 1;
  *(a2 + 37) = v15;
  sub_24FE62C80(v16, v18);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24FE62CE8(v16, v18);
}

unint64_t sub_24FE66A8C()
{
  result = qword_27F3A5190;
  if (!qword_27F3A5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5190);
  }

  return result;
}

unint64_t sub_24FE66AE0()
{
  result = qword_27F3A5198;
  if (!qword_27F3A5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5198);
  }

  return result;
}

uint64_t sub_24FE66B34(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x5565676170626577;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0x7265755172657375;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000019;
    if (a1 == 5)
    {
      v7 = 0xD000000000000011;
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
    v1 = 0x6567617373656DLL;
    v2 = 0xD000000000000018;
    v3 = 0x496E6F6973736573;
    if (a1 != 3)
    {
      v3 = 0x4E746E65746E6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24FE66CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24FE68D80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24FE66D0C(uint64_t a1)
{
  v2 = sub_24FE6719C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FE66D48(uint64_t a1)
{
  v2 = sub_24FE6719C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AttachmentConfirmationPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A51A8, &unk_24FEE1370);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24FE6719C();
  sub_24FEDE944();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v30) = 0;
  sub_24FEDE7E4();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v30) = 1;
    sub_24FEDE7E4();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v30) = 2;
    sub_24FEDE7E4();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v30) = 3;
    sub_24FEDE7B4();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v30) = 4;
    sub_24FEDE7E4();
    v21 = type metadata accessor for AttachmentConfirmationPayload(0);
    v22 = v21[9];
    LOBYTE(v30) = 5;
    sub_24FEDCEB4();
    sub_24FE65B04(&qword_27F3A51B8, MEMORY[0x277D0D6D8]);
    sub_24FEDE804();
    v23 = v21[10];
    LOBYTE(v30) = 6;
    sub_24FEDCA34();
    sub_24FE65B04(&qword_27F3A51C0, MEMORY[0x277CC9578]);
    sub_24FEDE7D4();
    v24 = v21[11];
    LOBYTE(v30) = 7;
    sub_24FEDC9E4();
    sub_24FE65B04(&qword_27F3A51C8, MEMORY[0x277CC9260]);
    sub_24FEDE7D4();
    v30 = *(v3 + v21[12]);
    v29[7] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5040, &unk_24FEE0F80);
    sub_24FE67AE4(&qword_27F3A51D0, sub_24FE671F0);
    sub_24FEDE804();
    v25 = (v3 + v21[13]);
    v26 = *v25;
    v27 = v25[1];
    LOBYTE(v30) = 9;
    sub_24FEDE7E4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24FE6719C()
{
  result = qword_27F3A51B0;
  if (!qword_27F3A51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A51B0);
  }

  return result;
}

unint64_t sub_24FE671F0()
{
  result = qword_27F3A51D8;
  if (!qword_27F3A51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A51D8);
  }

  return result;
}

uint64_t AttachmentConfirmationPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v66 - v8;
  v10 = sub_24FEDCEB4();
  v71 = *(v10 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A51E0, &qword_24FEE1380);
  v72 = *(v14 - 8);
  v73 = v14;
  v15 = *(v72 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - v16;
  v18 = type metadata accessor for AttachmentConfirmationPayload(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1[3];
  v23 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24FE6719C();
  v74 = v17;
  v24 = v75;
  sub_24FEDE934();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v25 = v9;
  v26 = v72;
  v27 = v73;
  v68 = v18;
  v75 = v10;
  v28 = v21;
  LOBYTE(v78) = 0;
  v30 = v21;
  *v21 = sub_24FEDE754();
  v21[1] = v31;
  LOBYTE(v78) = 1;
  v21[2] = sub_24FEDE754();
  v21[3] = v32;
  LOBYTE(v78) = 2;
  v66 = 0;
  v21[4] = sub_24FEDE754();
  v21[5] = v33;
  LOBYTE(v78) = 3;
  v21[6] = sub_24FEDE724();
  v21[7] = v34;
  LOBYTE(v78) = 4;
  v35 = sub_24FEDE754();
  v67 = 0;
  v21[8] = v35;
  v21[9] = v36;
  LOBYTE(v78) = 5;
  sub_24FE65B04(&qword_27F3A51E8, MEMORY[0x277D0D6D8]);
  v37 = v13;
  v38 = v75;
  v39 = v67;
  sub_24FEDE774();
  v67 = v39;
  if (!v39)
  {
    v46 = v68;
    (*(v71 + 32))(&v28[v68[9]], v37, v38);
    sub_24FEDCA34();
    LOBYTE(v78) = 6;
    sub_24FE65B04(&qword_27F3A51F0, MEMORY[0x277CC9578]);
    v47 = v25;
    v48 = v67;
    sub_24FEDE744();
    v49 = v48;
    if (v48)
    {
      (*(v26 + 8))(v74, v27);
      v50 = 0;
      v67 = v48;
    }

    else
    {
      sub_24FE6315C(v47, &v28[v46[10]], &qword_27F3A4A38, &unk_24FEE1340);
      sub_24FEDC9E4();
      LOBYTE(v78) = 7;
      sub_24FE65B04(&qword_27F3A51F8, MEMORY[0x277CC9260]);
      v51 = v70;
      sub_24FEDE744();
      v67 = 0;
      sub_24FE6315C(v51, &v28[v68[11]], &unk_27F3A4A40, &qword_24FEE08C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5040, &unk_24FEE0F80);
      v77 = 8;
      sub_24FE67AE4(&qword_27F3A5200, sub_24FE67B5C);
      v52 = v67;
      sub_24FEDE774();
      v67 = v52;
      if (!v52)
      {
        *&v28[v68[12]] = v78;
        LOBYTE(v78) = 9;
        v53 = sub_24FEDE754();
        v67 = 0;
        v61 = v53;
        v63 = v62;
        (*(v26 + 8))(v74, v73);
        v64 = v69;
        v65 = &v28[v68[13]];
        *v65 = v61;
        v65[1] = v63;
        sub_24FE6546C(v28, v64);
        __swift_destroy_boxed_opaque_existential_1(v76);
        return sub_24FE67BB0(v28);
      }

      (*(v26 + 8))(v74, v27);
      v50 = 1;
    }

    v54 = v75;
    __swift_destroy_boxed_opaque_existential_1(v76);
    v55 = v30[1];

    v56 = v30[3];

    v57 = v30[5];

    v58 = v30[7];

    v59 = v30[9];

    v60 = v68;
    result = (*(v71 + 8))(v30 + v68[9], v54);
    if (v49)
    {
      if (!v50)
      {
        return result;
      }
    }

    else
    {
      result = sub_24FE58B7C(v30 + v60[10], &qword_27F3A4A38, &unk_24FEE1340);
      if ((v50 & 1) == 0)
      {
        return result;
      }
    }

    return sub_24FE58B7C(v30 + v60[11], &unk_27F3A4A40, &qword_24FEE08C0);
  }

  (*(v26 + 8))(v74, v27);
  v40 = v66;
  __swift_destroy_boxed_opaque_existential_1(v76);
  v41 = *(v28 + 1);

  if (!v40)
  {
    v43 = *(v28 + 3);
  }

  v42 = *(v28 + 5);

  v44 = *(v28 + 7);

  v45 = *(v28 + 9);
}

uint64_t sub_24FE67AE4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F3A5040, &unk_24FEE0F80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24FE67B5C()
{
  result = qword_27F3A5208;
  if (!qword_27F3A5208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5208);
  }

  return result;
}

uint64_t sub_24FE67BB0(uint64_t a1)
{
  v2 = type metadata accessor for AttachmentConfirmationPayload(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24FE67CA0()
{
  result = qword_27F3A5210;
  if (!qword_27F3A5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5210);
  }

  return result;
}

uint64_t sub_24FE67D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentConfirmationPayload(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24FE67DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentConfirmationPayload(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24FE67E28()
{
  result = type metadata accessor for AttachmentConfirmationPayload(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24FE67EEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 38))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_24FE67F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Attachment.LocalizedName(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Attachment.LocalizedName(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24FE68124(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24FE682BC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_24FEDCEB4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A4A38, &unk_24FEE1340);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F3A4A40, &qword_24FEE08C0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

void sub_24FE68440()
{
  sub_24FE685A0(319, &qword_27F3A4A60, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24FEDCEB4();
    if (v1 <= 0x3F)
    {
      sub_24FE61090(319, &qword_27F3A4A68, MEMORY[0x277CC9578]);
      if (v2 <= 0x3F)
      {
        sub_24FE61090(319, &qword_27F3A4A70, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          sub_24FE685A0(319, &qword_27F3A4A78, &type metadata for Attachment, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24FE685A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for AttachmentConfirmationPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AttachmentConfirmationPayload.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Attachment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Attachment.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24FE688A4()
{
  result = qword_27F3A5238;
  if (!qword_27F3A5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5238);
  }

  return result;
}

unint64_t sub_24FE688FC()
{
  result = qword_27F3A5240;
  if (!qword_27F3A5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5240);
  }

  return result;
}

unint64_t sub_24FE68954()
{
  result = qword_27F3A5248;
  if (!qword_27F3A5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5248);
  }

  return result;
}

unint64_t sub_24FE689AC()
{
  result = qword_27F3A5250;
  if (!qword_27F3A5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5250);
  }

  return result;
}

unint64_t sub_24FE68A04()
{
  result = qword_27F3A5258;
  if (!qword_27F3A5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5258);
  }

  return result;
}

unint64_t sub_24FE68A5C()
{
  result = qword_27F3A5260;
  if (!qword_27F3A5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5260);
  }

  return result;
}

unint64_t sub_24FE68AB4()
{
  result = qword_27F3A5268;
  if (!qword_27F3A5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5268);
  }

  return result;
}

unint64_t sub_24FE68B0C()
{
  result = qword_27F3A5270;
  if (!qword_27F3A5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5270);
  }

  return result;
}

unint64_t sub_24FE68B64()
{
  result = qword_27F3A5278;
  if (!qword_27F3A5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5278);
  }

  return result;
}

uint64_t sub_24FE68BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xEE006567616D496CLL || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6953656C6966 && a2 == 0xEC000000424D6E49 || (sub_24FEDE844() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E65657263537369 && a2 == 0xEC000000746F6873)
  {

    return 4;
  }

  else
  {
    v6 = sub_24FEDE844();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24FE68D80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_24FEDE844() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FEE98F0 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FEE9910 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064 || (sub_24FEDE844() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E746E65746E6F63 && a2 == 0xEB00000000656D61 || (sub_24FEDE844() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FEE9930 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FEE9950 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5565676170626577 && a2 == 0xEA00000000004C52 || (sub_24FEDE844() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FEE9970 == a2 || (sub_24FEDE844() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7265755172657375 && a2 == 0xE900000000000079)
  {

    return 9;
  }

  else
  {
    v6 = sub_24FEDE844();

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

unint64_t sub_24FE690BC()
{
  result = qword_27F3A5280;
  if (!qword_27F3A5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F3A5280);
  }

  return result;
}

void __swiftcall GenerativeRateLimitedView.init(snippetModel:)(GenerativeAssistantUI::GenerativeRateLimitedView *__return_ptr retstr, GenerativeAssistantUI::GenerativeRateLimitedSnippetModel *snippetModel)
{
  displayUrl = snippetModel->modelDisclaimer.value.displayUrl;
  retstr->snippetModel.modelDisclaimer.value.message = snippetModel->modelDisclaimer.value.message;
  retstr->snippetModel.modelDisclaimer.value.displayUrl = displayUrl;
  retstr->snippetModel.modelDisclaimer.value.url = snippetModel->modelDisclaimer.value.url;
  query = snippetModel->query;
  retstr->snippetModel.message = snippetModel->message;
  retstr->snippetModel.query = query;
}

uint64_t GenerativeRateLimitedView.body.getter()
{
  v1 = v0[3];
  v8[2] = v0[2];
  v8[3] = v1;
  v8[4] = v0[4];
  v2 = v0[1];
  v8[0] = *v0;
  v8[1] = v2;
  v3 = swift_allocObject();
  v4 = v0[3];
  v3[3] = v0[2];
  v3[4] = v4;
  v3[5] = v0[4];
  v5 = v0[1];
  v3[1] = *v0;
  v3[2] = v5;
  sub_24FE696FC(v8, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5288, &qword_24FEE1A30);
  sub_24FE58928(&qword_27F3A5290, &qword_27F3A5288, &qword_24FEE1A30);
  return sub_24FEDE004();
}

uint64_t sub_24FE69240@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v50 = a2;
  v52 = type metadata accessor for SearchWebButton();
  v3 = *(*(v52 - 1) + 64);
  v4 = MEMORY[0x28223BE20](v52);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - v6;
  v8 = type metadata accessor for RateLimitTextView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52A8, &qword_24FEE1B38);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v54 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - v17;
  v19 = *a1;
  v20 = a1[1];
  v75 = *(a1 + 1);
  v63 = v19;
  v64 = v20;
  sub_24FE56B40();

  v53 = sub_24FEDD9F4();
  v57 = v21;
  v58 = v22;
  v24 = v23;
  v51 = sub_24FEDD764();
  sub_24FEDD014();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v56 = v24 & 1;
  LOBYTE(v63) = v24 & 1;
  LOBYTE(v59) = 0;
  v33 = *(a1 + 3);
  v77[0] = *(a1 + 2);
  v77[1] = v33;
  v77[2] = *(a1 + 4);
  v34 = *(&v77[0] + 1);
  if (*(&v77[0] + 1))
  {
    v35 = *&v77[0];
    *v12 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52C0, &qword_24FEE1EA0);
    swift_storeEnumTagMultiPayload();
    v36 = v12 + *(v8 + 20);
    *v36 = v35;
    *(v36 + 1) = v34;
    v37 = *(a1 + 4);
    *(v36 + 1) = *(a1 + 3);
    *(v36 + 2) = v37;
    sub_24FE699BC(v12, v18);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  (*(v9 + 56))(v18, v38, 1, v8);
  v76 = v75;
  sub_24FE58B14(v77, &v63, &qword_27F3A52B0, &qword_24FEE1B40);
  sub_24FE698FC(&v76, &v63);
  _s21GenerativeAssistantUI0A13DismissalViewVACycfC_0();
  *&v7[*(v52 + 5)] = v76;
  v39 = v54;
  sub_24FE58B14(v18, v54, &qword_27F3A52A8, &qword_24FEE1B38);
  v40 = v55;
  sub_24FE65050(v7, v55);
  v41 = v53;
  v52 = v18;
  *&v59 = v53;
  *(&v59 + 1) = v57;
  LOBYTE(v60) = v56;
  *(&v60 + 1) = v79[0];
  DWORD1(v60) = *(v79 + 3);
  v49 = v7;
  *(&v60 + 1) = v58;
  v42 = v51;
  LOBYTE(v61) = v51;
  *(&v61 + 1) = *v78;
  DWORD1(v61) = *&v78[3];
  *(&v61 + 1) = v26;
  *&v62[0] = v28;
  *(&v62[0] + 1) = v30;
  *&v62[1] = v32;
  BYTE8(v62[1]) = 0;
  v43 = v59;
  v44 = v60;
  v45 = v50;
  *(v50 + 57) = *(v62 + 9);
  v46 = v62[0];
  v45[2] = v61;
  v45[3] = v46;
  *v45 = v43;
  v45[1] = v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52B8, &unk_24FEE1B48);
  sub_24FE58B14(v39, v45 + *(v47 + 48), &qword_27F3A52A8, &qword_24FEE1B38);
  sub_24FE65050(v40, v45 + *(v47 + 64));
  sub_24FE58B14(&v59, &v63, &qword_27F3A4918, &unk_24FEE0730);
  sub_24FE69958(v49);
  sub_24FE58B7C(v52, &qword_27F3A52A8, &qword_24FEE1B38);
  sub_24FE69958(v40);
  sub_24FE58B7C(v39, &qword_27F3A52A8, &qword_24FEE1B38);
  v63 = v41;
  v64 = v57;
  v65 = v56;
  *v66 = v79[0];
  *&v66[3] = *(v79 + 3);
  v67 = v58;
  v68 = v42;
  *v69 = *v78;
  *&v69[3] = *&v78[3];
  v70 = v26;
  v71 = v28;
  v72 = v30;
  v73 = v32;
  v74 = 0;
  return sub_24FE58B7C(&v63, &qword_27F3A4918, &unk_24FEE0730);
}

uint64_t sub_24FE69750()
{
  v1 = v0[3];
  v8[2] = v0[2];
  v8[3] = v1;
  v8[4] = v0[4];
  v2 = v0[1];
  v8[0] = *v0;
  v8[1] = v2;
  v3 = swift_allocObject();
  v4 = v0[3];
  v3[3] = v0[2];
  v3[4] = v4;
  v3[5] = v0[4];
  v5 = v0[1];
  v3[1] = *v0;
  v3[2] = v5;
  sub_24FE696FC(v8, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5288, &qword_24FEE1A30);
  sub_24FE58928(&qword_27F3A5290, &qword_27F3A5288, &qword_24FEE1A30);
  return sub_24FEDE004();
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[7])
  {

    v3 = v0[9];

    v4 = v0[11];
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_24FE69958(uint64_t a1)
{
  v2 = type metadata accessor for SearchWebButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FE699BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RateLimitTextView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TextGenerationView.PresentationOptions.FontConfiguration.init(majorFont:regularFont:bulletFont:inlineCodeFont:inlineCodeMajorHeadingFont:codeBlockFont:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t *TextGenerationView.PresentationOptions.init(fontConfiguration:hideTopLevelShareButton:forceShowAttribution:)@<X0>(uint64_t *result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *result;
  if (*result)
  {
    MarkdownFontConfiguration.init(majorFont:regularFont:bulletFont:inlineCodeFont:inlineCodeMajorHeadingFont:codeBlockFont:)(*result, result[1], result[2], result[3], result[4], result[5], v14);
    v12 = v14[1];
    v13 = v14[0];
    v11 = v14[2];

    result = sub_24FE708C4(v7);
    v9 = v11;
    v8 = v12;
    v10 = v13;
  }

  else
  {
    v10 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a4 = v10;
  *(a4 + 16) = v8;
  *(a4 + 32) = v9;
  *(a4 + 48) = a2 & 1;
  *(a4 + 49) = a3 & 1;
  return result;
}

uint64_t sub_24FE69B78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24FEDD3E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5370, &qword_24FEE1C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TextGenerationView(0);
  sub_24FE58B14(v1 + *(v12 + 24), v11, &qword_27F3A5370, &qword_24FEE1C00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24FEDD234();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_24FEDE4D4();
    v16 = sub_24FEDD714();
    sub_24FEDCF14();

    sub_24FEDD3D4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t TextGenerationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5328, &qword_24FEE1B90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5330, &qword_24FEE1B98);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5338, &qword_24FEE1BA0);
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  *v5 = sub_24FEDD514();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5340, &qword_24FEE1BA8);
  sub_24FE6A0C0(v1, &v5[*(v15 + 44)]);
  v30 = *(v1 + *(type metadata accessor for TextGenerationView(0) + 44));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5348, &qword_24FEE1BB0);
  v17 = sub_24FE58928(&qword_27F3A5350, &qword_27F3A5328, &qword_24FEE1B90);
  sub_24FEDDA24();
  sub_24FE58B7C(v5, &qword_27F3A5328, &qword_24FEE1B90);
  v18 = (v1 + *(type metadata accessor for GenerativeRichTextResultSnippetModel(0) + 48));
  v19 = *v18;
  v20 = v18[1];
  v30 = v2;
  v31 = v16;
  v32 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v25;
  sub_24FEDDA44();
  (*(v26 + 8))(v10, v22);
  v30 = v22;
  v31 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v23 = v28;
  sub_24FEDDB14();
  return (*(v27 + 8))(v14, v23);
}

uint64_t sub_24FE6A0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5520, &qword_24FEE1F38);
  v147 = *(v3 - 8);
  v148 = v3;
  v4 = *(v147 + 64);
  MEMORY[0x28223BE20](v3);
  v133 = &v132 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5528, &unk_24FEE1F40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v151 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v150 = &v132 - v10;
  v11 = type metadata accessor for RateLimitTextView(0);
  v145 = *(v11 - 8);
  v146 = v11;
  v12 = *(v145 + 64);
  MEMORY[0x28223BE20](v11);
  v138 = (&v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52A8, &qword_24FEE1B38);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v149 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v153 = &v132 - v18;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5530, &qword_24FEE1F50);
  v19 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v143 = &v132 - v20;
  v21 = type metadata accessor for DocumentView();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v134 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v132 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5538, &qword_24FEE1F58);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v31 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v132 - v32;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5540, &qword_24FEE1F60);
  v34 = *(*(v140 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v140);
  v37 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v132 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v132 - v41;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5548, &qword_24FEE1F68);
  v43 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v136 = &v132 - v44;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5550, &qword_24FEE1F70);
  v45 = *(*(v139 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v139);
  v48 = &v132 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v137 = &v132 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A5558, &qword_24FEE1F78);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v144 = &v132 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v154 = &v132 - v54;
  v55 = type metadata accessor for TextGenerationView(0);
  v56 = *(a1 + v55[14]);
  v57 = *(a1 + v55[5]);
  v58 = a1;
  v59 = *(a1 + v55[13]);
  v142 = v55;
  if (v56 == 1)
  {
    if (v59)
    {
      v60 = MEMORY[0x277D84F90];
      v61 = v58;
    }

    else
    {
      v64 = v55[12];
      v61 = a1;
      v60 = *(a1 + v64);
      v65 = *(v58 + v64);
    }

    DocumentView.init(viewModel:linkTapped:contentsToShare:forceOffsetFirstElement:)(0, 0, v60, 0, v26);
    sub_24FE728F8(v26, v33, type metadata accessor for DocumentView);
    v66 = sub_24FEDD764();
    sub_24FE6AE48();
    sub_24FEDD014();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    sub_24FE6315C(v33, v42, &qword_27F3A5538, &qword_24FEE1F58);
    v75 = &v42[*(v140 + 36)];
    *v75 = v66;
    *(v75 + 1) = v68;
    *(v75 + 2) = v70;
    *(v75 + 3) = v72;
    *(v75 + 4) = v74;
    v75[40] = 0;
    v76 = objc_allocWithZone(sub_24FEDE134());
    v77 = sub_24FEDE124();
    sub_24FE73100(&qword_27F3A4A30, MEMORY[0x277D63F60]);
    v78 = sub_24FEDCF84();
    v79 = v136;
    sub_24FE6315C(v42, v136, &qword_27F3A5540, &qword_24FEE1F60);
    v80 = (v79 + *(v135 + 36));
    *v80 = v78;
    v80[1] = v77;
    v81 = sub_24FEDE0D4();
    v82 = *(v81 + 48);
    v83 = *(v81 + 52);
    swift_allocObject();
    v84 = sub_24FEDE0C4();
    sub_24FE73100(&qword_27F3A55B0, MEMORY[0x277D63F18]);
    v85 = sub_24FEDCF84();
    sub_24FE6315C(v79, v48, &qword_27F3A5548, &qword_24FEE1F68);
    v86 = &v48[*(v139 + 36)];
    *v86 = v85;
    v86[1] = v84;
    v87 = v137;
    sub_24FE6315C(v48, v137, &qword_27F3A5550, &qword_24FEE1F70);
    sub_24FE58B14(v87, v143, &qword_27F3A5550, &qword_24FEE1F70);
    swift_storeEnumTagMultiPayload();
    sub_24FE72D80();
    sub_24FE72EF0();
    sub_24FEDD5F4();
    sub_24FE58B7C(v87, &qword_27F3A5550, &qword_24FEE1F70);
    v88 = v153;
  }

  else
  {
    if (v59)
    {
      v62 = MEMORY[0x277D84F90];
    }

    else
    {
      v62 = *(a1 + v55[12]);
    }

    v63 = v153;

    v89 = v134;
    DocumentView.init(viewModel:linkTapped:contentsToShare:forceOffsetFirstElement:)(0, 0, v62, 0, v134);
    sub_24FE728F8(v89, v31, type metadata accessor for DocumentView);
    v90 = sub_24FEDD764();
    sub_24FE6AE48();
    sub_24FEDD014();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    sub_24FE6315C(v31, v37, &qword_27F3A5538, &qword_24FEE1F58);
    v99 = &v37[*(v140 + 36)];
    *v99 = v90;
    *(v99 + 1) = v92;
    *(v99 + 2) = v94;
    *(v99 + 3) = v96;
    *(v99 + 4) = v98;
    v99[40] = 0;
    sub_24FE6315C(v37, v40, &qword_27F3A5540, &qword_24FEE1F60);
    sub_24FE58B14(v40, v143, &qword_27F3A5540, &qword_24FEE1F60);
    swift_storeEnumTagMultiPayload();
    sub_24FE72D80();
    sub_24FE72EF0();
    sub_24FEDD5F4();
    sub_24FE58B7C(v40, &qword_27F3A5540, &qword_24FEE1F60);
    v61 = a1;
    v88 = v63;
  }

  v100 = type metadata accessor for GenerativeRichTextResultSnippetModel(0);
  v101 = *(v61 + *(v100 + 40));
  if (v101[2])
  {
    v102 = v101[4];
    v103 = v101[5];

    sub_24FE6B338(v158);

    memcpy(v157, v158, 0x139uLL);
    nullsub_1(v157);
    memcpy(v158, v157, 0x139uLL);
  }

  else
  {
    sub_24FE7300C(v158);
  }

  v104 = (v61 + *(v100 + 44));
  v105 = *v104;
  v106 = v104[1];
  v108 = v104[2];
  v107 = v104[3];
  v110 = v104[4];
  v109 = v104[5];
  v143 = v107;
  v140 = v105;
  v141 = v108;
  if (v106)
  {
    KeyPath = swift_getKeyPath();
    v112 = v61;
    v113 = v138;
    *v138 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A52C0, &qword_24FEE1EA0);
    swift_storeEnumTagMultiPayload();
    v114 = v146;
    v115 = (v113 + *(v146 + 20));
    *v115 = v105;
    v115[1] = v106;
    v115[2] = v108;
    v115[3] = v107;
    v115[4] = v110;
    v115[5] = v109;
    v116 = v113;
    v61 = v112;
    v88 = v153;
    sub_24FE728F8(v116, v153, type metadata accessor for RateLimitTextView);
    v117 = 0;
  }

  else
  {
    v117 = 1;
    v114 = v146;
  }

  (*(v145 + 56))(v88, v117, 1, v114);
  v118 = v61 + v142[15];
  if (*v118 != 1 && (*(v118 + 48) & 0x100) != 0)
  {
    sub_24FE63DA4(v140, v106);
    v120 = v133;
    sub_24FE6B574(v133);
    v122 = v147;
    v121 = v148;
    v119 = v150;
    (*(v147 + 32))(v150, v120, v148);
    (*(v122 + 56))(v119, 0, 1, v121);
  }

  else
  {
    v119 = v150;
    (*(v147 + 56))(v150, 1, 1, v148);
    sub_24FE63DA4(v140, v106);
  }

  v123 = v144;
  sub_24FE58B14(v154, v144, &qword_27F3A5558, &qword_24FEE1F78);
  memcpy(v155, v158, sizeof(v155));
  v124 = v149;
  sub_24FE58B14(v88, v149, &qword_27F3A52A8, &qword_24FEE1B38);
  v125 = v151;
  sub_24FE58B14(v119, v151, &qword_27F3A5528, &unk_24FEE1F40);
  v126 = v152;
  sub_24FE58B14(v123, v152, &qword_27F3A5558, &qword_24FEE1F78);
  v127 = v119;
  v128 = v88;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F3A55A0, &qword_24FEE1F90);
  v130 = v129[12];
  memcpy(v156, v155, 0x139uLL);
  memcpy((v126 + v130), v155, 0x139uLL);
  sub_24FE58B14(v124, v126 + v129[16], &qword_27F3A52A8, &qword_24FEE1B38);
  sub_24FE58B14(v125, v126 + v129[20], &qword_27F3A5528, &unk_24FEE1F40);
  sub_24FE58B14(v156, v157, &qword_27F3A55A8, &qword_24FEE1F98);
  sub_24FE58B7C(v127, &qword_27F3A5528, &unk_24FEE1F40);
  sub_24FE58B7C(v128, &qword_27F3A52A8, &qword_24FEE1B38);
  sub_24FE58B7C(v154, &qword_27F3A5558, &qword_24FEE1F78);
  sub_24FE58B7C(v125, &qword_27F3A5528, &unk_24FEE1F40);
  sub_24FE58B7C(v124, &qword_27F3A52A8, &qword_24FEE1B38);
  memcpy(v157, v155, 0x139uLL);
  sub_24FE58B7C(v157, &qword_27F3A55A8, &qword_24FEE1F98);
  return sub_24FE58B7C(v123, &qword_27F3A5558, &qword_24FEE1F78);
}