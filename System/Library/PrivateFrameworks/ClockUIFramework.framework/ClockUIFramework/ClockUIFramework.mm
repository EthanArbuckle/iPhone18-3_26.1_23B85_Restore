uint64_t sub_243785628(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_2437881AC();
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
      v14 = sub_24378809C();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_243785758(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_2437881AC();
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
      v13 = sub_24378809C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_243785880()
{
  sub_2437872C0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2437858FC()
{
  v0 = sub_2437881EC();
  __swift_allocate_value_buffer(v0, qword_27ED85248);
  __swift_project_value_buffer(v0, qword_27ED85248);
  return sub_2437881DC();
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

uint64_t type metadata accessor for TimeView()
{
  result = qword_27ED85278;
  if (!qword_27ED85278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243785A30()
{
  sub_243785ACC();
  if (v0 <= 0x3F)
  {
    sub_2437881AC();
    if (v1 <= 0x3F)
    {
      sub_24378809C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_243785ACC()
{
  if (!qword_27ED85288)
  {
    sub_2437883EC();
    sub_2437871DC(&qword_27ED85270, MEMORY[0x277D63F60]);
    v0 = sub_24378822C();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED85288);
    }
  }
}

uint64_t sub_243785B7C@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = sub_243787F4C();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  (MEMORY[0x28223BE20])();
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852D8, &qword_243788700);
  v60 = *(v58 - 8);
  v5 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v55 = &v49 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852E0, &qword_243788708) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v53 = &v49 - v8;
  v9 = sub_243787FCC();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v63 = &v49 - v13;
  v14 = sub_2437880DC();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2437880FC();
  v18 = *(v50 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v50);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2437880CC();
  v22 = *(v49 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v49);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = type metadata accessor for TimeView();
  v30 = v1 + *(v29 + 24);
  sub_24378807C();
  v31 = *(v29 + 20);
  sub_24378819C();
  sub_2437880BC();
  (*(v18 + 8))(v21, v50);
  v32 = *(v22 + 8);
  v33 = v49;
  v32(v26, v49);
  sub_24378818C();
  sub_2437880AC();
  (*(v51 + 8))(v17, v52);
  v32(v28, v33);
  sub_243787FBC();
  v66 = sub_24378838C();
  sub_2437874F4();
  sub_243787F8C();
  v34 = sub_24378827C();
  v35 = *(*(v34 - 8) + 56);
  v36 = v53;
  v35(v53, 1, 1, v34);
  sub_24378829C();
  sub_243787548(v36, &qword_27ED852E0, &qword_243788708);
  sub_24378828C();
  v37 = sub_2437882AC();

  v66 = v37;
  sub_2437875A8();
  sub_243787F8C();
  v35(v36, 1, 1, v34);
  sub_24378829C();
  sub_243787548(v36, &qword_27ED852E0, &qword_243788708);
  sub_24378828C();
  v38 = sub_2437882AC();

  v66 = v38;
  v39 = v63;
  sub_243787FDC();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_2437875FC();
  v40 = v55;
  sub_243787F9C();

  v42 = v61;
  v41 = v62;
  v43 = v59;
  (*(v61 + 104))(v59, *MEMORY[0x277CC8A98], v62);
  v44 = v54;
  v45 = v58;
  sub_243787FAC();
  (*(v42 + 8))(v43, v41);
  (*(v60 + 8))(v40, v45);
  sub_243787F6C();
  v46 = v57;
  v47 = *(v56 + 8);
  v47(v44, v57);
  return (v47)(v39, v46);
}

uint64_t sub_24378626C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85300, &unk_243788780);
  return sub_24378840C() & 1;
}

uint64_t sub_2437862D0(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85300, &unk_243788780);
  return sub_2437883FC();
}

void sub_243786320(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_2437875FC();
  sub_243787FEC();
  __break(1u);
}

uint64_t sub_243786364@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85290, &qword_2437886A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v29 - v6);
  v8 = type metadata accessor for TimeView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85298, &qword_2437886A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v29 - v14;
  sub_2437870A4(v2, v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_243787108(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852A0, &qword_2437886B0);
  v18 = sub_2437883CC();
  v19 = sub_2437871DC(&qword_27ED852A8, MEMORY[0x277D63E98]);
  v29[0] = v18;
  v29[1] = v19;
  swift_getOpaqueTypeConformance2();
  sub_24378839C();
  *v7 = sub_24378837C();
  v20 = *MEMORY[0x277D63BB0];
  v21 = sub_2437883AC();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v7, v20, v21);
  (*(v22 + 56))(v7, 0, 1, v21);
  sub_243787778(&qword_27ED852B0, &qword_27ED85298, &qword_2437886A8);
  sub_24378832C();
  sub_243787548(v7, &qword_27ED85290, &qword_2437886A0);
  (*(v12 + 8))(v15, v11);
  KeyPath = swift_getKeyPath();
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852B8, &qword_2437886E8) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852C0, &qword_2437886F0) + 28);
  v26 = *MEMORY[0x277CDF3C0];
  v27 = sub_2437881FC();
  result = (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = KeyPath;
  return result;
}

uint64_t sub_243786758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v52 = a1;
  v60 = a2;
  v3 = type metadata accessor for TimeView();
  v4 = v3 - 8;
  v57 = *(v3 - 8);
  v56 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_243787F7C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_2437883CC();
  v59 = *(v58 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + *(v4 + 28);
  v67 = sub_24378816C();
  v68 = v12;
  sub_24378726C();
  v13 = sub_2437882FC();
  v15 = v14;
  LOBYTE(v2) = v16;
  sub_24378826C();
  v17 = sub_2437882DC();
  v19 = v18;
  v21 = v20;

  sub_2437872C0(v13, v15, v2 & 1);

  LODWORD(v67) = sub_24378825C();
  v22 = sub_2437882CC();
  v24 = v23;
  v26 = v25;
  sub_2437872C0(v17, v19, v21 & 1);

  sub_24378836C();
  v27 = sub_2437882BC();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_2437872C0(v22, v24, v26 & 1);

  v34 = MEMORY[0x277CE0BD8];
  v35 = MEMORY[0x277D638E8];
  v69 = MEMORY[0x277CE0BD8];
  v70 = MEMORY[0x277D638E8];
  v36 = swift_allocObject();
  v67 = v36;
  *(v36 + 16) = v27;
  *(v36 + 24) = v29;
  *(v36 + 32) = v31 & 1;
  *(v36 + 40) = v33;
  v37 = v52;
  sub_243785B7C(v53);
  v38 = sub_2437882EC();
  v40 = v39;
  LOBYTE(v17) = v41;
  v43 = v42;
  v65 = v34;
  v66 = v35;
  v44 = swift_allocObject();
  v64 = v44;
  *(v44 + 16) = v38;
  *(v44 + 24) = v40;
  *(v44 + 32) = v17 & 1;
  *(v44 + 40) = v43;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v45 = v54;
  sub_2437883BC();
  v46 = v55;
  sub_2437870A4(v37, v55);
  v47 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v48 = swift_allocObject();
  sub_243787108(v46, v48 + v47);
  sub_2437871DC(&qword_27ED852A8, MEMORY[0x277D63E98]);
  v49 = v58;
  sub_24378831C();

  return (*(v59 + 8))(v45, v49);
}

uint64_t sub_243786BD8()
{
  v1 = v0;
  v2 = sub_24378815C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED852D0, &qword_2437886F8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_24378802C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED85240 != -1)
  {
    swift_once();
  }

  v16 = sub_2437881EC();
  __swift_project_value_buffer(v16, qword_27ED85248);
  v17 = sub_2437881CC();
  v18 = sub_24378841C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v12;
    v20 = v11;
    v21 = v15;
    v22 = v6;
    v23 = v1;
    v24 = v3;
    v25 = v2;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_243784000, v17, v18, "[TimeView.onSnippetTapped]: Performing punchout", v19, 2u);
    v27 = v26;
    v2 = v25;
    v3 = v24;
    v1 = v23;
    v6 = v22;
    v15 = v21;
    v11 = v20;
    v12 = v33;
    MEMORY[0x245D3E770](v27, -1, -1);
  }

  v28 = v1 + *(type metadata accessor for TimeView() + 20);
  sub_24378817C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_243787548(v10, &qword_27ED852D0, &qword_2437886F8);
  }

  (*(v12 + 32))(v15, v10, v11);
  if (*v1)
  {
    v30 = *v1;
    sub_24378801C();
    sub_24378814C();
    sub_2437883DC();

    (*(v3 + 8))(v6, v2);
    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    v31 = *(v1 + 8);
    sub_2437883EC();
    sub_2437871DC(&qword_27ED85270, MEMORY[0x277D63F60]);
    result = sub_24378820C();
    __break(1u);
  }

  return result;
}

uint64_t sub_243786FB4(uint64_t a1)
{
  v2 = sub_2437881FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24378824C();
}

uint64_t sub_2437870A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_243787108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24378716C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimeView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_243786758(v4, a1);
}

uint64_t sub_2437871DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24378726C()
{
  result = qword_27ED852C8;
  if (!qword_27ED852C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED852C8);
  }

  return result;
}

uint64_t sub_2437872C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for TimeView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_2437881AC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = sub_24378809C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2437873FC()
{
  v1 = *(type metadata accessor for TimeView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_243786BD8();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_2437874F4()
{
  result = qword_27ED852E8;
  if (!qword_27ED852E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED852E8);
  }

  return result;
}

uint64_t sub_243787548(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2437875A8()
{
  result = qword_27ED852F0;
  if (!qword_27ED852F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED852F0);
  }

  return result;
}

unint64_t sub_2437875FC()
{
  result = qword_27ED852F8;
  if (!qword_27ED852F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED852F8);
  }

  return result;
}

unint64_t sub_243787650()
{
  result = qword_27ED85308;
  if (!qword_27ED85308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED852B8, &qword_2437886E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED85298, &qword_2437886A8);
    sub_243787778(&qword_27ED852B0, &qword_27ED85298, &qword_2437886A8);
    swift_getOpaqueTypeConformance2();
    sub_243787778(&qword_27ED85310, &qword_27ED852C0, &qword_2437886F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED85308);
  }

  return result;
}

uint64_t sub_243787778(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_243787808@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_243787854(uint64_t a1)
{
  v43 = a1;
  v1 = sub_24378800C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24378813C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24378811C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2437880FC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85260, &qword_243788620);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v44 = &v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED85268, &qword_243788628);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v41 - v18;
  v20 = type metadata accessor for TimeView();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_2437881AC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2437881BC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v41 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v33, v43, v29);
  if ((*(v30 + 88))(v33, v29) == *MEMORY[0x277D617B8])
  {
    (*(v30 + 96))(v33, v29);
    v34 = *(v25 + 32);
    v41 = v24;
    v42 = v28;
    v34(v28, v33, v24);
    (*(v25 + 16))(v23 + *(v20 + 20), v28, v24);
    sub_2437883EC();
    sub_243787EA8(&qword_27ED85270, MEMORY[0x277D63F60]);
    *v23 = sub_24378821C();
    v23[1] = v35;
    v43 = *(v20 + 24);
    sub_24378805C();
    v36 = sub_24378806C();
    (*(*(v36 - 8) + 56))(v19, 0, 1, v36);
    v37 = v44;
    sub_24378803C();
    v38 = sub_24378804C();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    sub_2437880EC();
    sub_24378810C();
    sub_24378812C();
    sub_243787FFC();
    sub_24378808C();
    sub_243787EA8(&unk_27ED85320, type metadata accessor for TimeView);
    v39 = sub_24378830C();
    sub_243787EF0(v23);
    (*(v25 + 8))(v42, v41);
    return v39;
  }

  else
  {
    result = sub_24378842C();
    __break(1u);
  }

  return result;
}

uint64_t sub_243787EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_243787EF0(uint64_t a1)
{
  v2 = type metadata accessor for TimeView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}