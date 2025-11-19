void sub_24F584F80(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for Page(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v50 - v20;
  v22 = *a1;
  v23 = *a2;
  v50[0] = a5;
  v50[1] = a6;
  v50[2] = a7;
  v50[3] = a8;
  v24 = type metadata accessor for BasePageView();
  if (*(a3 + *(v24 + 84)))
  {
    if (*(a3 + *(v24 + 84)) == 1)
    {
      v25 = qword_27F2113E0;
      if (v22 != v23)
      {
        v26 = v24;
        if (qword_27F2113E0 != -1)
        {
          swift_once();
        }

        v27 = sub_24F9220D8();
        __swift_project_value_buffer(v27, qword_27F39E7F0);
        sub_24F58E928(a4, v21, type metadata accessor for Page);
        v28 = sub_24F9220B8();
        v29 = sub_24F92BDB8();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v50[0] = v31;
          *v30 = 136315138;
          v32 = sub_24F92A6E8();
          v34 = v33;
          sub_24F58B9FC(v21, type metadata accessor for Page);
          v35 = sub_24E7620D4(v32, v34, v50);

          *(v30 + 4) = v35;
          _os_log_impl(&dword_24E5DD000, v28, v29, "Network connectivity changed for page %s, refreshing page (reloadOnChange)", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v31);
          MEMORY[0x2530542D0](v31, -1, -1);
          MEMORY[0x2530542D0](v30, -1, -1);

LABEL_21:
          sub_24F583690(a4, v26);
          return;
        }

        v49 = v21;
        goto LABEL_20;
      }
    }

    else
    {
      v25 = qword_27F2113E0;
      if (!(v22 & 1 | ((v23 & 1) == 0)))
      {
        v26 = v24;
        if (qword_27F2113E0 != -1)
        {
          swift_once();
        }

        v40 = sub_24F9220D8();
        __swift_project_value_buffer(v40, qword_27F39E7F0);
        sub_24F58E928(a4, v18, type metadata accessor for Page);
        v41 = sub_24F9220B8();
        v42 = sub_24F92BDB8();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v50[0] = v44;
          *v43 = 136315138;
          v45 = sub_24F92A6E8();
          v47 = v46;
          sub_24F58B9FC(v18, type metadata accessor for Page);
          v48 = sub_24E7620D4(v45, v47, v50);

          *(v43 + 4) = v48;
          _os_log_impl(&dword_24E5DD000, v41, v42, "Network connectivity changed from offline to online for page %s, refreshing page", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x2530542D0](v44, -1, -1);
          MEMORY[0x2530542D0](v43, -1, -1);

          goto LABEL_21;
        }

        v49 = v18;
LABEL_20:
        sub_24F58B9FC(v49, type metadata accessor for Page);
        goto LABEL_21;
      }
    }

    if (v25 != -1)
    {
      swift_once();
    }

    v36 = sub_24F9220D8();
    __swift_project_value_buffer(v36, qword_27F39E7F0);
    v37 = sub_24F9220B8();
    v38 = sub_24F92BDD8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_24E5DD000, v37, v38, "Network connectivity changed but a refresh is not required.", v39, 2u);
      MEMORY[0x2530542D0](v39, -1, -1);
    }
  }
}

uint64_t sub_24F585440@<X0>(uint64_t a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a1;
  v30 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50);
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  type metadata accessor for BasePageView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
  sub_24F926F58();
  v20 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v21 = swift_allocObject();
  sub_24E6009C8(v12, v21 + v20, &qword_27F216F50);
  v29 = sub_24F928FD8();
  sub_24F929298();
  v31 = sub_24F587A28;
  v32 = v21;
  v22 = *(v14 + 16);
  v22(v19, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248458);
  sub_24E602068(&qword_27F248460, &qword_27F248458);
  sub_24F929238();
  v23 = *(v14 + 8);
  v23(v16, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF8);
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = swift_allocObject();
  v22((v25 + v24), v19, v13);
  sub_24F929298();
  v22(v16, (v25 + v24), v13);
  swift_setDeallocating();
  v23((v25 + v24), v13);
  swift_deallocClassInstance();
  sub_24F929228();
  v23(v16, v13);
  return (v23)(v19, v13);
}

uint64_t sub_24F5857D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_24F923E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Page(0) + 88)) == 3 && qword_27F211128 != -1)
  {
    swift_once();
  }

  sub_24F769788(v11);
  v12 = *(v9 + 56);
  v12(v7, 1, 1, v8);
  v12(v4, 1, 1, v8);
  v13 = sub_24EF13DC0(v7, v4);
  sub_24E601704(v4, &qword_27F2140C0);
  sub_24E601704(v7, &qword_27F2140C0);
  (*(v9 + 8))(v11, v8);
  if (v13 + 0.0 + -20.0 >= 0.0)
  {
    *&result = v13 + 0.0 + -20.0;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_24F585A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_24F923E98();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for Page(0) + 88)) == 3 && qword_27F211128 != -1)
  {
    swift_once();
  }

  sub_24F769788(v11);
  v12 = *(v9 + 56);
  v12(v7, 1, 1, v8);
  v12(v4, 1, 1, v8);
  v13 = sub_24EF13DC0(v7, v4);
  sub_24E601704(v4, &qword_27F2140C0);
  sub_24E601704(v7, &qword_27F2140C0);
  (*(v9 + 8))(v11, v8);
  if (v13 + -20.0 >= 0.0)
  {
    *&result = v13 + -20.0;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_24F585C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X8>)
{
  v67 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50);
  MEMORY[0x28223BE20](v13 - 8);
  v51 = &v45 - v14;
  WitnessTable = *(a4 - 8);
  MEMORY[0x28223BE20](v15);
  v50 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  v73 = sub_24F924038();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = &v45 - v19;
  v70 = *(a3 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v72 = &v45 - v24;
  v81 = a3;
  v82 = a4;
  v83 = a5;
  v84 = a6;
  v63 = a6;
  v25 = type metadata accessor for BasePageView();
  sub_24F5857D4(a1);
  if (v26)
  {
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v59 = 1;
  }

  else
  {
    sub_24F927618();
    sub_24F9238C8();
    v59 = 0;
    v60 = v90[8];
    v57 = v94;
    v58 = v92;
    v56 = v95;
    LOBYTE(v79[0]) = 0;
    LOBYTE(v96) = v91;
    LOBYTE(v90[0]) = v93;
    v52 = 0;
    v53 = v91;
    v54 = v93;
    LOBYTE(v81) = 0;
  }

  (*(a2 + *(v25 + 108)))(a1);
  v66 = a5;
  sub_24E7896B8(v22, a3, a5);
  v27 = *(v70 + 8);
  v64 = v22;
  v65 = a3;
  v61 = v27;
  v62 = v70 + 8;
  v27(v22, a3);
  v28 = v50;
  (*(a2 + *(v25 + 112)))(a1);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);
  v29 = v51;
  sub_24F926F58();
  v30 = v68;
  v49 = v25;
  v31 = v63;
  sub_24F9261B8();

  sub_24E601704(v29, &qword_27F216F50);
  (*(WitnessTable + 8))(v28, a4);
  v32 = sub_24E602068(&qword_27F2484A8, &qword_27F248410);
  v90[5] = v31;
  v90[6] = v32;
  v33 = v73;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v30, v33, WitnessTable);
  v63 = *(v71 + 8);
  v63(v30, v33);
  sub_24F585A34(a1);
  if (v34)
  {
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v35 = 0;
    LODWORD(v50) = 1;
  }

  else
  {
    sub_24F927618();
    sub_24F9238C8();
    LODWORD(v50) = 0;
    v51 = v96;
    v48 = v100;
    v49 = v98;
    LOBYTE(v79[0]) = 0;
    LOBYTE(v90[0]) = v97;
    LOBYTE(v78[0]) = v99;
    v35 = v97;
    v46 = v99;
    v47 = v101;
    LOBYTE(v81) = 0;
  }

  v81 = 0;
  v82 = v52;
  v83 = v60;
  v84 = v53;
  v85 = v58;
  v86 = v54;
  v87 = v57;
  v88 = v56;
  v89 = v59;
  v90[0] = &v81;
  v37 = v64;
  v36 = v65;
  v38 = v72;
  (*(v70 + 16))(v64, v72, v65);
  v90[1] = v37;
  v39 = v68;
  v40 = v69;
  v41 = v73;
  (*(v71 + 16))(v68, v69, v73);
  v79[0] = 0;
  v79[1] = 0;
  v79[2] = v51;
  v79[3] = v35;
  v79[4] = v49;
  v79[5] = v46;
  v79[6] = v48;
  v79[7] = v47;
  v80 = v50;
  v90[2] = v39;
  v90[3] = v79;
  v78[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248408);
  v78[1] = v36;
  v78[2] = v41;
  v78[3] = v78[0];
  v74 = sub_24F58D3F0();
  v75 = v66;
  v76 = WitnessTable;
  v77 = v74;
  sub_24F57BA64(v90, 4uLL, v78);
  v42 = v63;
  v63(v40, v41);
  v43 = v61;
  v61(v38, v36);
  v42(v39, v41);
  return v43(v37, v36);
}

uint64_t sub_24F58637C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a2;
  v39 = a3;
  v14 = sub_24F924848();
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  sub_24F769764(&v36 - v21);
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v23 = type metadata accessor for BasePageView();
  sub_24F769764(v19);
  v24 = a1 + *(v23 + 56);
  v25 = *v24;
  if (*(v24 + 8) != 1)
  {

    sub_24F92BDC8();
    v26 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v25, 0);
    (*(v36 + 8))(v16, v37);
    LODWORD(v25) = v40;
  }

  v27 = sub_24F5502F0(v22, v19, v25);
  v28 = 0xCu >> (v27 & 0xF);
  v29 = 0x1000100u >> (8 * v27);
  KeyPath = swift_getKeyPath();
  v31 = type metadata accessor for MixedMediaItemView();
  *(a8 + *(v31 + 32)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  *(a8 + *(v31 + 36)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v32 = v39;
  *a8 = v38;
  *(a8 + 8) = v32;
  *(a8 + 16) = 4;
  *(a8 + 17) = v29;
  *(a8 + 18) = v28 & 1;

  v33 = sub_24F924058();
  LOBYTE(v31) = sub_24F925808();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248400);
  v35 = a8 + *(result + 36);
  *v35 = v33;
  *(v35 + 8) = v31;
  return result;
}

uint64_t sub_24F58669C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[0] = a1;
  v12[1] = a2;
  type metadata accessor for Page(255);
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  v19 = sub_24F924038();
  v20 = v2;
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v16 = MEMORY[0x277CE0880];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = sub_24E667ED0();
  v12[15] = swift_getWitnessTable();
  v12[16] = OpaqueTypeConformance2;
  v12[14] = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40);
  v3 = sub_24F924038();
  v12[12] = swift_getOpaqueTypeConformance2();
  v12[13] = sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  v12[10] = swift_getWitnessTable();
  v12[11] = sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  v12[8] = swift_getWitnessTable();
  v12[9] = sub_24E669F00();
  v12[6] = swift_getWitnessTable();
  v12[7] = sub_24E669F54();
  v12[4] = swift_getWitnessTable();
  v12[5] = sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
  v17 = v3;
  v18 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  v4 = sub_24F924038();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v17 = v3;
  v8 = swift_getOpaqueTypeConformance2();
  v9 = sub_24E602068(&qword_27F248428, &qword_27F248418);
  v12[2] = v8;
  v12[3] = v9;
  v10 = swift_getWitnessTable();
  sub_24E7896B8(v12[0], v4, v10);
  sub_24E7896B8(v7, v4, v10);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24F586C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  refreshed = type metadata accessor for OnForegroundRefreshViewModifier(0);
  MEMORY[0x28223BE20](refreshed);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F923418();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x277CDD6B8], v11, v13);
  v16 = sub_24F923408();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v18 = a3 + *(refreshed + 28);
    if ((*(v18 + 8) & 1) == 0)
    {
      v19 = *v18;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248468);
      MEMORY[0x25304CAF0](v20);
      sub_24F91F5C8();
      v22 = v21;
      result = (*(v8 + 8))(v10, v7);
      if (v19 < fabs(v22))
      {
        if (qword_27F211400 != -1)
        {
          swift_once();
        }

        v23 = sub_24F9220D8();
        __swift_project_value_buffer(v23, qword_27F39E850);
        sub_24F58E928(a3, v6, type metadata accessor for OnForegroundRefreshViewModifier);
        v24 = sub_24F9220B8();
        v25 = sub_24F92BD98();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v34 = v27;
          *v26 = 136315138;
          v28 = sub_24F92A6E8();
          v30 = v29;
          sub_24F58B9FC(v6, type metadata accessor for OnForegroundRefreshViewModifier);
          v31 = sub_24E7620D4(v28, v30, &v34);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_24E5DD000, v24, v25, "Refreshing page %s on foreground", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x2530542D0](v27, -1, -1);
          MEMORY[0x2530542D0](v26, -1, -1);
        }

        else
        {

          v32 = sub_24F58B9FC(v6, type metadata accessor for OnForegroundRefreshViewModifier);
        }

        return (*(a3 + *(refreshed + 32)))(v32);
      }
    }
  }

  return result;
}

uint64_t sub_24F587078(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = sub_24F923418();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F76A1F0(v8);
  sub_24F58E928(v2, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OnForegroundRefreshViewModifier);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_24F58EB60(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for OnForegroundRefreshViewModifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2484E0);
  sub_24E602068(&qword_27F2484E8, &qword_27F2484E0);
  sub_24F58786C(&qword_27F235EA0, MEMORY[0x277CDD6C8]);
  sub_24F926AB8();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F5872DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18 = a1;
  v19 = a2;
  ActionViewModifier = type metadata accessor for PerformPageLoadActionViewModifier(0);
  v5 = ActionViewModifier - 8;
  v6 = *(ActionViewModifier - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](ActionViewModifier);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2484F0);
  v17 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_24F58E928(v3, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PerformPageLoadActionViewModifier);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  sub_24F58EB60(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PerformPageLoadActionViewModifier);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2484F8);
  (*(*(v13 - 8) + 16))(v10, v18, v13);
  v14 = &v10[*(v8 + 36)];
  *v14 = sub_24F58EC4C;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
  sub_24E60169C(v3 + *(v5 + 32), v20, qword_27F21B590);
  LOBYTE(v5) = v21 != 0;
  sub_24E601704(v20, qword_27F21B590);
  v20[0] = v5;
  sub_24F58E928(v3, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PerformPageLoadActionViewModifier);
  v15 = swift_allocObject();
  sub_24F58EB60(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v11, type metadata accessor for PerformPageLoadActionViewModifier);
  sub_24F58EE10();
  sub_24F926AB8();

  return sub_24E601704(v10, &qword_27F2484F0);
}

uint64_t sub_24F587598()
{
  v1 = sub_24F921B58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionViewModifier = type metadata accessor for PerformPageLoadActionViewModifier(0);
  v6 = (v0 + *(ActionViewModifier + 28));
  v7 = *v6;
  v8 = *(v6 + 1);
  v15[0] = *v6;
  v16 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  result = sub_24F926F38();
  if ((v12 & 1) == 0)
  {
    sub_24E60169C(v0 + *(ActionViewModifier + 24), &v12, qword_27F21B590);
    if (v13)
    {
      sub_24E612C80(&v12, v15);
      sub_24F7695C8(&v12);
      if (v13)
      {
        v10[2] = v14;
        v10[1] = __swift_project_boxed_opaque_existential_1(&v12, v13);
        sub_24F76973C(v4);
        sub_24F9218A8();
        (*(v2 + 8))(v4, v1);
        __swift_destroy_boxed_opaque_existential_1(&v12);
      }

      else
      {
        sub_24E601704(&v12, &unk_27F212740);
      }

      LOBYTE(v12) = v7;
      *(&v12 + 1) = v8;
      v11 = 1;
      sub_24F926F48();
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    else
    {
      return sub_24E601704(&v12, qword_27F21B590);
    }
  }

  return result;
}

unint64_t sub_24F5877B0()
{
  result = qword_27F248420;
  if (!qword_27F248420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400);
    sub_24F58786C(&qword_27F2323D0, type metadata accessor for MixedMediaItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248420);
  }

  return result;
}

uint64_t sub_24F58786C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F587920()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F587A28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50);

  return sub_24F611B34();
}

uint64_t sub_24F587A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for Page(0) - 8);
  v10 = *(v9 + 64);
  v11 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v12 = *(type metadata accessor for BasePageView() - 8);
  v13 = v2 + ((v11 + v10 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_24F57FEF0(a1, v2 + v11, v13, v5, v6, v7, v8, a2);
}

uint64_t sub_24F587BBC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for BasePageView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Page(0) - 8);
  v9 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_24F583A88(v0 + v6, v9, v1, v2, v3, v4);
}

uint64_t objectdestroy_36Tm()
{
  v1 = type metadata accessor for Page(0);
  v2 = *(*(v1 - 1) + 80);
  v126 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for BasePageView();
  v128 = *(*(v3 - 1) + 80);
  v127 = (v2 + 48) & ~v2;
  v4 = v0 + v127;
  v5 = sub_24F92A708();
  (*(*(v5 - 8) + 8))(v0 + v127, v5);

  v6 = v1[6];
  v7 = sub_24F928818();
  (*(*(v7 - 8) + 8))(v0 + v127 + v6, v7);

  v8 = v0 + v127 + v1[20];
  v9 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    goto LABEL_55;
  }

  v10 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v122 = *(*(v10 - 1) + 48);
  if (!v122(v8, 1, v10))
  {

    v11 = v8 + v10[5];
    v12 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v98 = sub_24F9289E8();
          (*(*(v98 - 8) + 8))(v11, v98);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v13 = v8 + v10[7];
          v14 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v16 = sub_24F928388();
              (*(*(v16 - 8) + 8))(v13, v16);
            }
          }

          v17 = v8 + v10[10];
          if (*(v17 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v17);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v86 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v87 = type metadata accessor for JSColor();
        if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
        {
          v88 = sub_24F928388();
          (*(*(v88 - 8) + 8))(v86, v88);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v95 = sub_24F9289E8();
        v96 = *(v95 - 8);
        if (!(*(v96 + 48))(v11, 1, v95))
        {
          (*(v96 + 8))(v11, v95);
        }

        if (*(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v18 = v8 + v9[5];
  if (v122(v18, 1, v10))
  {
    goto LABEL_32;
  }

  v19 = v18 + v10[5];
  v20 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    goto LABEL_17;
  }

  v23 = swift_getEnumCaseMultiPayload();
  if (v23 <= 2)
  {
    if (!v23)
    {

      v89 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v90 = type metadata accessor for JSColor();
      if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
      {
        v91 = sub_24F928388();
        (*(*(v91 - 8) + 8))(v89, v91);
      }

      goto LABEL_17;
    }

    if (v23 == 1)
    {
      v97 = sub_24F9289E8();
      v121 = *(v97 - 8);
      if (!(*(v121 + 48))(v19, 1, v97))
      {
        (*(v121 + 8))(v19, v97);
      }

      if (*(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v23 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v23)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v100 = sub_24F9289E8();
      (*(*(v100 - 8) + 8))(v19, v100);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v21 = v18 + v10[7];
  v22 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v24 = sub_24F928388();
      (*(*(v24 - 8) + 8))(v21, v24);
    }
  }

  v25 = v18 + v10[10];
  if (*(v25 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

LABEL_32:
  v26 = v8 + v9[6];
  if (v122(v26, 1, v10))
  {
    goto LABEL_49;
  }

  v27 = v26 + v10[5];
  v28 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v28 - 8) + 48))(v27, 1, v28))
  {
    goto LABEL_34;
  }

  v31 = swift_getEnumCaseMultiPayload();
  if (v31 <= 2)
  {
    if (!v31)
    {

      v92 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
      v93 = type metadata accessor for JSColor();
      if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
      {
        v94 = sub_24F928388();
        (*(*(v94 - 8) + 8))(v92, v94);
      }

      goto LABEL_34;
    }

    if (v31 == 1)
    {
      v99 = sub_24F9289E8();
      v125 = *(v99 - 8);
      if (!(*(v125 + 48))(v27, 1, v99))
      {
        (*(v125 + 8))(v27, v99);
      }

      if (*(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v31 != 2)
    {
      goto LABEL_34;
    }

LABEL_115:

    goto LABEL_34;
  }

  switch(v31)
  {
    case 3:
      goto LABEL_115;
    case 4:
      v101 = sub_24F9289E8();
      (*(*(v101 - 8) + 8))(v27, v101);
      break;
    case 5:
      goto LABEL_115;
  }

LABEL_34:
  v29 = v26 + v10[7];
  v30 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v32 = sub_24F928388();
      (*(*(v32 - 8) + 8))(v29, v32);
    }
  }

  v33 = v26 + v10[10];
  if (*(v33 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

LABEL_49:
  v34 = v8 + v9[7];
  if (*(v34 + 56) == 1)
  {
  }

  else if (!*(v34 + 56))
  {

    if (*(v34 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1(v34 + 16);
    }
  }

  v35 = v8 + v9[8];
  v36 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v65 = swift_getEnumCaseMultiPayload();
    if (v65 == 2)
    {
      goto LABEL_156;
    }

    if (v65 != 1)
    {
      if (v65)
      {
        goto LABEL_55;
      }

      v66 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v66 - 8) + 48))(v35, 1, v66))
      {
        goto LABEL_55;
      }

      v67 = swift_getEnumCaseMultiPayload();
      if (v67 > 2)
      {
        if (v67 != 3)
        {
          if (v67 == 4)
          {
            v120 = sub_24F9289E8();
            (*(*(v120 - 8) + 8))(v35, v120);
            goto LABEL_55;
          }

          if (v67 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_156;
      }

      if (v67)
      {
        if (v67 == 1)
        {
          v118 = sub_24F9289E8();
          v119 = *(v118 - 8);
          if (!(*(v119 + 48))(v35, 1, v118))
          {
            (*(v119 + 8))(v35, v118);
          }

          if (!*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v67 != 2)
        {
          goto LABEL_55;
        }

LABEL_156:

        goto LABEL_55;
      }

      v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_175:
      v114 = v35 + v108;
      v115 = type metadata accessor for JSColor();
      if (!(*(*(v115 - 8) + 48))(v114, 1, v115))
      {
        v116 = sub_24F928388();
        (*(*(v116 - 8) + 8))(v114, v116);
      }

      goto LABEL_55;
    }

    v80 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v81 = *(*(v80 - 8) + 48);
    if (v81(v35, 1, v80))
    {
LABEL_106:
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
      v83 = v35 + *(v82 + 48);
      if (!v81(v83, 1, v80))
      {
        v84 = swift_getEnumCaseMultiPayload();
        if (v84 <= 2)
        {
          switch(v84)
          {
            case 0:

              v102 = v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v103 = type metadata accessor for JSColor();
              if (!(*(*(v103 - 8) + 48))(v102, 1, v103))
              {
                v104 = sub_24F928388();
                (*(*(v104 - 8) + 8))(v102, v104);
              }

              goto LABEL_174;
            case 1:
              v109 = sub_24F9289E8();
              v110 = *(v109 - 8);
              if (!(*(v110 + 48))(v83, 1, v109))
              {
                (*(v110 + 8))(v83, v109);
              }

              if (!*(v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
                goto LABEL_174;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_174;
          }

LABEL_168:

          goto LABEL_174;
        }

        switch(v84)
        {
          case 3:
            goto LABEL_168;
          case 4:
            v113 = sub_24F9289E8();
            (*(*(v113 - 8) + 8))(v83, v113);
            break;
          case 5:
            goto LABEL_168;
        }
      }

LABEL_174:
      v108 = *(v82 + 80);
      goto LABEL_175;
    }

    v85 = swift_getEnumCaseMultiPayload();
    if (v85 > 2)
    {
      if (v85 != 3)
      {
        if (v85 == 4)
        {
          v117 = sub_24F9289E8();
          (*(*(v117 - 8) + 8))(v35, v117);
          goto LABEL_106;
        }

        if (v85 != 5)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      if (!v85)
      {

        v105 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v106 = type metadata accessor for JSColor();
        if (!(*(*(v106 - 8) + 48))(v105, 1, v106))
        {
          v107 = sub_24F928388();
          (*(*(v107 - 8) + 8))(v105, v107);
        }

        goto LABEL_106;
      }

      if (v85 == 1)
      {
        v111 = sub_24F9289E8();
        v112 = *(v111 - 8);
        if (!(*(v112 + 48))(v35, 1, v111))
        {
          (*(v112 + 8))(v35, v111);
        }

        if (*(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_106;
      }

      if (v85 != 2)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_106;
  }

LABEL_55:
  if (*(v4 + v1[23]))
  {
  }

  v37 = v4 + v1[24];
  v38 = type metadata accessor for Page.Background(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v59 = swift_getEnumCaseMultiPayload();
    if (v59 <= 1)
    {
      if (v59)
      {
        if (v59 == 1)
        {
          v61 = sub_24F9289E8();
          (*(*(v61 - 8) + 8))(v37, v61);
          v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v63 = sub_24F922348();
          v64 = *(v63 - 8);
          if (!(*(v64 + 48))(v37 + v62, 1, v63))
          {
            (*(v64 + 8))(v37 + v62, v63);
          }
        }
      }

      else
      {
        v79 = sub_24F9289E8();
        (*(*(v79 - 8) + 8))(v37, v79);
      }
    }

    else if (v59 == 2)
    {
      v68 = sub_24F9289E8();
      v69 = *(v68 - 8);
      if (!(*(v69 + 48))(v37, 1, v68))
      {
        (*(v69 + 8))(v37, v68);
      }

      v70 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v71 = type metadata accessor for GSKVideo();
      if (!(*(*(v71 - 1) + 48))(v70, 1, v71))
      {
        v72 = sub_24F91F4A8();
        (*(*(v72 - 8) + 8))(v70, v72);
        (*(v69 + 8))(v70 + v71[5], v68);
        v73 = v71[9];
        v74 = sub_24F928698();
        v75 = *(v74 - 8);
        v123 = v73;
        v76 = v70 + v73;
        v77 = *(v75 + 48);
        if (!v77(v76, 1, v74))
        {
          (*(v75 + 8))(v70 + v123, v74);
        }

        v124 = v75;
        v78 = v71[10];
        if (!v77(v70 + v78, 1, v74))
        {
          (*(v124 + 8))(v70 + v78, v74);
        }
      }
    }

    else if (v59 == 3 || v59 == 4)
    {
      v60 = sub_24F928388();
      (*(*(v60 - 8) + 8))(v37, v60);
    }
  }

  v39 = v4 + v1[27];
  if (*(v39 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = v4 + v1[28];
  if (*(v40 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v41 = v4 + v1[29];
  if (*(v41 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = (v127 + v126 + v128) & ~v128;
  v43 = v4 + v1[30];
  if (*(v43 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v0 + v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = sub_24F925218();
    v46 = *(v45 - 8);
    if (!(*(v46 + 48))(v0 + v42, 1, v45))
    {
      (*(v46 + 8))(v0 + v42, v45);
    }
  }

  else
  {
  }

  v47 = v3[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = sub_24F925218();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v44 + v47, 1, v48))
    {
      (*(v49 + 8))(v44 + v47, v48);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v44 + v3[14]), *(v44 + v3[14] + 8));
  sub_24E62A5EC(*(v44 + v3[15]), *(v44 + v3[15] + 8));
  v50 = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = sub_24F923E98();
    (*(*(v51 - 8) + 8))(v44 + v50, v51);
  }

  else
  {
  }

  v52 = v44 + v3[17];
  v53 = sub_24F91F648();
  (*(*(v53 - 8) + 8))(v52, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0);

  __swift_destroy_boxed_opaque_existential_1(v44 + v3[19]);

  v54 = v3[24];
  v55 = sub_24F929158();
  (*(*(v55 - 8) + 8))(v44 + v54, v55);

  v56 = v44 + v3[29];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  (*(*(v57 - 8) + 8))(v56, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);

  return swift_deallocObject();
}

uint64_t sub_24F589A48(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for Page(0) - 8);
  v8 = *(v7 + 64);
  v9 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v10 = *(type metadata accessor for BasePageView() - 8);
  v11 = v1 + ((v9 + v8 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_24F584078(a1, v1 + v9, v11, v3, v4, v5, v6);
}

uint64_t objectdestroy_39Tm_0()
{
  v1 = type metadata accessor for BasePageView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for Page(0);
  v129 = *(*(v5 - 1) + 80);
  v6 = v4 + v129;
  v7 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24F925218();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  else
  {
  }

  v10 = v3 + v6;
  v11 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F925218();
    v13 = *(v12 - 8);
    v14 = v129;
    if (!(*(v13 + 48))(v7 + v11, 1, v12))
    {
      (*(v13 + 8))(v7 + v11, v12);
    }
  }

  else
  {

    v14 = v129;
  }

  v15 = v10 & ~v14;
  sub_24E62A5EC(*(v7 + v1[14]), *(v7 + v1[14] + 8));
  sub_24E62A5EC(*(v7 + v1[15]), *(v7 + v1[15] + 8));
  v16 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_24F923E98();
    (*(*(v17 - 8) + 8))(v7 + v16, v17);
  }

  else
  {
  }

  v18 = v7 + v1[17];
  v19 = sub_24F91F648();
  (*(*(v19 - 8) + 8))(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0);

  __swift_destroy_boxed_opaque_existential_1(v7 + v1[19]);

  v20 = v1[24];
  v21 = sub_24F929158();
  (*(*(v21 - 8) + 8))(v7 + v20, v21);

  v22 = v7 + v1[29];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  (*(*(v23 - 8) + 8))(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);

  v24 = v0 + v15;
  v25 = sub_24F92A708();
  (*(*(v25 - 8) + 8))(v0 + v15, v25);

  v26 = v5[6];
  v27 = sub_24F928818();
  (*(*(v27 - 8) + 8))(v0 + v15 + v26, v27);

  v28 = v0 + v15 + v5[20];
  v29 = type metadata accessor for HeaderPresentation(0);
  if (!(*(*(v29 - 1) + 48))(v28, 1, v29))
  {
    v30 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
    v31 = (*(v30 - 1) + 48);
    v128 = *v31;
    if ((*v31)(v28, 1, v30))
    {
      goto LABEL_26;
    }

    v32 = v28 + v30[5];
    v33 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33))
    {
      goto LABEL_15;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v103 = sub_24F9289E8();
          (*(*(v103 - 8) + 8))(v32, v103);
          goto LABEL_15;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_15:
          v34 = v28 + v30[7];
          v35 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v37 = sub_24F928388();
              (*(*(v37 - 8) + 8))(v34, v37);
            }
          }

          v38 = v28 + v30[10];
          if (*(v38 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1(v38);
          }

LABEL_26:
          v39 = v28 + v29[5];
          if (v128(v39, 1, v30))
          {
            goto LABEL_43;
          }

          v40 = v39 + v30[5];
          v41 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
          if ((*(*(v41 - 8) + 48))(v40, 1, v41))
          {
            goto LABEL_28;
          }

          v44 = swift_getEnumCaseMultiPayload();
          if (v44 > 2)
          {
            if (v44 != 3)
            {
              if (v44 == 4)
              {
                v106 = sub_24F9289E8();
                (*(*(v106 - 8) + 8))(v40, v106);
                goto LABEL_28;
              }

              if (v44 != 5)
              {
LABEL_28:
                v42 = v39 + v30[7];
                v43 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
                {
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                  }

                  else
                  {
                    v45 = sub_24F928388();
                    (*(*(v45 - 8) + 8))(v42, v45);
                  }
                }

                v46 = v39 + v30[10];
                if (*(v46 + 24))
                {
                  __swift_destroy_boxed_opaque_existential_1(v46);
                }

LABEL_43:
                v47 = v28 + v29[6];
                if (v128(v47, 1, v30))
                {
                  goto LABEL_60;
                }

                v48 = v47 + v30[5];
                v49 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                if ((*(*(v49 - 8) + 48))(v48, 1, v49))
                {
                  goto LABEL_45;
                }

                v52 = swift_getEnumCaseMultiPayload();
                if (v52 > 2)
                {
                  if (v52 != 3)
                  {
                    if (v52 == 4)
                    {
                      v107 = sub_24F9289E8();
                      (*(*(v107 - 8) + 8))(v48, v107);
                      goto LABEL_45;
                    }

                    if (v52 != 5)
                    {
LABEL_45:
                      v50 = v47 + v30[7];
                      v51 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
                      if (!(*(*(v51 - 8) + 48))(v50, 1, v51))
                      {
                        if (swift_getEnumCaseMultiPayload() == 1)
                        {
                        }

                        else
                        {
                          v53 = sub_24F928388();
                          (*(*(v53 - 8) + 8))(v50, v53);
                        }
                      }

                      v54 = v47 + v30[10];
                      if (*(v54 + 24))
                      {
                        __swift_destroy_boxed_opaque_existential_1(v54);
                      }

LABEL_60:
                      v55 = v28 + v29[7];
                      if (*(v55 + 56) == 1)
                      {
                      }

                      else if (!*(v55 + 56))
                      {

                        if (*(v55 + 40))
                        {
                          __swift_destroy_boxed_opaque_existential_1(v55 + 16);
                        }
                      }

                      v56 = v28 + v29[8];
                      v57 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
                      if ((*(*(v57 - 8) + 48))(v56, 1, v57))
                      {
                        goto LABEL_66;
                      }

                      v71 = swift_getEnumCaseMultiPayload();
                      if (v71 == 2)
                      {
LABEL_156:

                        goto LABEL_66;
                      }

                      if (v71 != 1)
                      {
                        if (v71)
                        {
                          goto LABEL_66;
                        }

                        v72 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                        if ((*(*(v72 - 8) + 48))(v56, 1, v72))
                        {
                          goto LABEL_66;
                        }

                        v73 = swift_getEnumCaseMultiPayload();
                        if (v73 > 2)
                        {
                          if (v73 != 3)
                          {
                            if (v73 == 4)
                            {
                              v126 = sub_24F9289E8();
                              (*(*(v126 - 8) + 8))(v56, v126);
                              goto LABEL_66;
                            }

                            if (v73 != 5)
                            {
                              goto LABEL_66;
                            }
                          }

                          goto LABEL_156;
                        }

                        if (v73)
                        {
                          if (v73 == 1)
                          {
                            v124 = sub_24F9289E8();
                            v125 = *(v124 - 8);
                            if (!(*(v125 + 48))(v56, 1, v124))
                            {
                              (*(v125 + 8))(v56, v124);
                            }

                            if (!*(v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                            {
                              goto LABEL_66;
                            }
                          }

                          else if (v73 != 2)
                          {
                            goto LABEL_66;
                          }

                          goto LABEL_156;
                        }

                        v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
LABEL_175:
                        v120 = v56 + v114;
                        v121 = type metadata accessor for JSColor();
                        if (!(*(*(v121 - 8) + 48))(v120, 1, v121))
                        {
                          v122 = sub_24F928388();
                          (*(*(v122 - 8) + 8))(v120, v122);
                        }

                        goto LABEL_66;
                      }

                      v85 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
                      v86 = *(*(v85 - 8) + 48);
                      if (v86(v56, 1, v85))
                      {
LABEL_106:
                        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348);
                        v88 = v56 + *(v87 + 48);
                        if (!v86(v88, 1, v85))
                        {
                          v89 = swift_getEnumCaseMultiPayload();
                          if (v89 <= 2)
                          {
                            switch(v89)
                            {
                              case 0:

                                v108 = v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
                                v109 = type metadata accessor for JSColor();
                                if (!(*(*(v109 - 8) + 48))(v108, 1, v109))
                                {
                                  v110 = sub_24F928388();
                                  (*(*(v110 - 8) + 8))(v108, v110);
                                }

                                goto LABEL_174;
                              case 1:
                                v115 = sub_24F9289E8();
                                v116 = *(v115 - 8);
                                if (!(*(v116 + 48))(v88, 1, v115))
                                {
                                  (*(v116 + 8))(v88, v115);
                                }

                                if (!*(v88 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                                {
                                  goto LABEL_174;
                                }

                                break;
                              case 2:
                                break;
                              default:
                                goto LABEL_174;
                            }

LABEL_168:

                            goto LABEL_174;
                          }

                          switch(v89)
                          {
                            case 3:
                              goto LABEL_168;
                            case 4:
                              v119 = sub_24F9289E8();
                              (*(*(v119 - 8) + 8))(v88, v119);
                              break;
                            case 5:
                              goto LABEL_168;
                          }
                        }

LABEL_174:
                        v114 = *(v87 + 80);
                        goto LABEL_175;
                      }

                      v90 = swift_getEnumCaseMultiPayload();
                      if (v90 > 2)
                      {
                        if (v90 != 3)
                        {
                          if (v90 == 4)
                          {
                            v123 = sub_24F9289E8();
                            (*(*(v123 - 8) + 8))(v56, v123);
                            goto LABEL_106;
                          }

                          if (v90 != 5)
                          {
                            goto LABEL_106;
                          }
                        }
                      }

                      else
                      {
                        if (!v90)
                        {

                          v111 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
                          v112 = type metadata accessor for JSColor();
                          if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
                          {
                            v113 = sub_24F928388();
                            (*(*(v113 - 8) + 8))(v111, v113);
                          }

                          goto LABEL_106;
                        }

                        if (v90 == 1)
                        {
                          v117 = sub_24F9289E8();
                          v118 = *(v117 - 8);
                          if (!(*(v118 + 48))(v56, 1, v117))
                          {
                            (*(v118 + 8))(v56, v117);
                          }

                          if (*(v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                          {
                          }

                          goto LABEL_106;
                        }

                        if (v90 != 2)
                        {
                          goto LABEL_106;
                        }
                      }

                      goto LABEL_106;
                    }
                  }
                }

                else
                {
                  if (!v52)
                  {

                    v97 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
                    v98 = type metadata accessor for JSColor();
                    if (!(*(*(v98 - 8) + 48))(v97, 1, v98))
                    {
                      v99 = sub_24F928388();
                      (*(*(v99 - 8) + 8))(v97, v99);
                    }

                    goto LABEL_45;
                  }

                  if (v52 == 1)
                  {
                    v104 = sub_24F9289E8();
                    v105 = *(v104 - 8);
                    if (!(*(v105 + 48))(v48, 1, v104))
                    {
                      (*(v105 + 8))(v48, v104);
                    }

                    if (*(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
                    {
                    }

                    goto LABEL_45;
                  }

                  if (v52 != 2)
                  {
                    goto LABEL_45;
                  }
                }

                goto LABEL_45;
              }
            }
          }

          else
          {
            if (!v44)
            {

              v94 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
              v95 = type metadata accessor for JSColor();
              if (!(*(*(v95 - 8) + 48))(v94, 1, v95))
              {
                v96 = sub_24F928388();
                (*(*(v96 - 8) + 8))(v94, v96);
              }

              goto LABEL_28;
            }

            if (v44 == 1)
            {
              v102 = sub_24F9289E8();
              v127 = *(v102 - 8);
              if (!(*(v127 + 48))(v40, 1, v102))
              {
                (*(v127 + 8))(v40, v102);
              }

              if (*(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
              {
              }

              goto LABEL_28;
            }

            if (v44 != 2)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_28;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v91 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338) + 48);
        v92 = type metadata accessor for JSColor();
        if (!(*(*(v92 - 8) + 48))(v91, 1, v92))
        {
          v93 = sub_24F928388();
          (*(*(v93 - 8) + 8))(v91, v93);
        }

        goto LABEL_15;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v100 = sub_24F9289E8();
        v101 = *(v100 - 8);
        if (!(*(v101 + 48))(v32, 1, v100))
        {
          (*(v101 + 8))(v32, v100);
        }

        if (*(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340) + 48) + 24))
        {
        }

        goto LABEL_15;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_15;
  }

LABEL_66:
  if (*(v24 + v5[23]))
  {
  }

  v58 = v24 + v5[24];
  v59 = type metadata accessor for Page.Background(0);
  if (!(*(*(v59 - 8) + 48))(v58, 1, v59))
  {
    v65 = swift_getEnumCaseMultiPayload();
    if (v65 <= 1)
    {
      if (v65)
      {
        if (v65 == 1)
        {
          v67 = sub_24F9289E8();
          (*(*(v67 - 8) + 8))(v58, v67);
          v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8) + 48);
          v69 = sub_24F922348();
          v70 = *(v69 - 8);
          if (!(*(v70 + 48))(v58 + v68, 1, v69))
          {
            (*(v70 + 8))(v58 + v68, v69);
          }
        }
      }

      else
      {
        v84 = sub_24F9289E8();
        (*(*(v84 - 8) + 8))(v58, v84);
      }
    }

    else if (v65 == 2)
    {
      v74 = sub_24F9289E8();
      v75 = *(v74 - 8);
      if (!(*(v75 + 48))(v58, 1, v74))
      {
        (*(v75 + 8))(v58, v74);
      }

      v76 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200) + 48);
      v77 = type metadata accessor for GSKVideo();
      if (!(*(*(v77 - 1) + 48))(v76, 1, v77))
      {
        v78 = sub_24F91F4A8();
        (*(*(v78 - 8) + 8))(v76, v78);
        (*(v75 + 8))(v76 + v77[5], v74);
        v79 = v77[9];
        v80 = sub_24F928698();
        v81 = *(v80 - 8);
        v82 = *(v81 + 48);
        if (!v82(v76 + v79, 1, v80))
        {
          (*(v81 + 8))(v76 + v79, v80);
        }

        v83 = v77[10];
        if (!v82(v76 + v83, 1, v80))
        {
          (*(v81 + 8))(v76 + v83, v80);
        }
      }
    }

    else if (v65 == 3 || v65 == 4)
    {
      v66 = sub_24F928388();
      (*(*(v66 - 8) + 8))(v58, v66);
    }
  }

  v60 = v24 + v5[27];
  if (*(v60 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = v24 + v5[28];
  if (*(v61 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v62 = v24 + v5[29];
  if (*(v62 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v63 = v24 + v5[30];
  if (*(v63 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  return swift_deallocObject();
}

uint64_t sub_24F58B8D0()
{
  v1 = *(type metadata accessor for BasePageView() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Page(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = type metadata accessor for BasePageView();
  return sub_24F583690(v0 + v5, v6);
}

uint64_t sub_24F58B9FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24F58BA7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for BasePageView() - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for Page(0) - 8);
  v13 = v2 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  sub_24F584F80(a1, a2, v2 + v10, v13, v5, v6, v7, v8);
}

uint64_t sub_24F58BB9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F58BC60()
{
  result = qword_27F248498;
  if (!qword_27F248498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248498);
  }

  return result;
}

uint64_t sub_24F58BCB4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for BasePageView() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Page(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  v1[6] = v11;
  *v11 = v1;
  v11[1] = sub_24F073C78;

  return sub_24F583558(v0 + v7, v0 + v10, v2, v3, v4, v5);
}

uint64_t objectdestroyTm_75()
{
  v1 = type metadata accessor for BasePageView();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v3 + v1[14]), *(v3 + v1[14] + 8));
  sub_24E62A5EC(*(v3 + v1[15]), *(v3 + v1[15] + 8));
  v9 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F923E98();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[17];
  v12 = sub_24F91F648();
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[19]);

  v13 = v1[24];
  v14 = sub_24F929158();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  v15 = v3 + v1[29];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  (*(*(v16 - 8) + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);

  return swift_deallocObject();
}

uint64_t sub_24F58C294(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for BasePageView() - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_24F58C35C@<X0>(_BYTE *a1@<X8>)
{
  sub_24F58D394();
  result = sub_24F924868();
  *a1 = v3;
  return result;
}

uint64_t sub_24F58C3F8()
{
  v1 = type metadata accessor for BasePageView();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v3 + v1[14]), *(v3 + v1[14] + 8));
  sub_24E62A5EC(*(v3 + v1[15]), *(v3 + v1[15] + 8));
  v9 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F923E98();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  v11 = v3 + v1[17];
  v12 = sub_24F91F648();
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0);

  __swift_destroy_boxed_opaque_existential_1(v3 + v1[19]);

  v13 = v1[24];
  v14 = sub_24F929158();
  (*(*(v14 - 8) + 8))(v3 + v13, v14);

  v15 = v3 + v1[29];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48);
  (*(*(v16 - 8) + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8);

  return swift_deallocObject();
}

uint64_t sub_24F58C878@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for BasePageView() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_24F58637C(v1 + v8, v10, v11, v3, v4, v5, v6, a1);
}

uint64_t sub_24F58C954()
{
  type metadata accessor for Page(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  sub_24F924038();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  swift_getOpaqueTypeConformance2();
  sub_24E667ED0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  swift_getWitnessTable();
  sub_24E669F00();
  swift_getWitnessTable();
  sub_24E669F54();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  v1 = *(sub_24F924038() - 8);
  (*(*(OpaqueTypeMetadata2 - 8) + 8))(v3 + ((*(v1 + 80) + 48) & ~*(v1 + 80)), OpaqueTypeMetadata2);
  return swift_deallocObject();
}

uint64_t sub_24F58CE64@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Page(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  sub_24F924038();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  swift_getOpaqueTypeConformance2();
  sub_24E667ED0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  swift_getWitnessTable();
  sub_24E669F00();
  swift_getWitnessTable();
  sub_24E669F54();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  v1 = *(sub_24F924038() - 8);
  v2 = v4 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_24F58669C(v2, a1);
}

unint64_t sub_24F58D394()
{
  result = qword_27F2484A0;
  if (!qword_27F2484A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2484A0);
  }

  return result;
}

unint64_t sub_24F58D3F0()
{
  result = qword_27F2484B0;
  if (!qword_27F2484B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
    sub_24E8533A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2484B0);
  }

  return result;
}

uint64_t sub_24F58D498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
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
    v12 = *(a1 + *(a3 + 24) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_24F58D588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
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
    *(a1 + *(a4 + 24) + 24) = a2;
  }

  return result;
}

void sub_24F58D654()
{
  sub_24F58D7B4(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F58DC64(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24F58D7B4(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_24F58DCC8(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F58D7B4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24F58D82C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C68);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248468);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_24F92A708();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_24F58D9AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235C68);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248468);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_24F92A708();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F58DB14()
{
  sub_24F58DC64(319, &qword_27F235C80, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F58DC64(319, &qword_27F2484D8, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_24F92A708();
      if (v2 <= 0x3F)
      {
        sub_24F58DCC8(319, &qword_27F2191B8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24E6C5550();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F58DC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24F58DCC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24F58DD18()
{
  type metadata accessor for Page(255);
  sub_24F921BC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237750);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248400);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248408);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248410);
  sub_24F924038();
  swift_getTupleTypeMetadata();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F921D68();
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  swift_getOpaqueTypeConformance2();
  sub_24E667ED0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PageBackgroundViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F6E8);
  sub_24F924038();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21EE40);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24F58786C(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8);
  swift_getWitnessTable();
  sub_24E669F00();
  swift_getWitnessTable();
  sub_24E669F54();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F21EE38, &qword_27F21EE40);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248418);
  sub_24F924038();
  sub_24F5877B0();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F248428, &qword_27F248418);
  swift_getWitnessTable();
  type metadata accessor for AdaptiveSideBySideContainerView();
  sub_24F924E38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  sub_24F926DC8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2381F0);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24E602068(&qword_27F2381F8, &qword_27F2381F0);
  swift_getWitnessTable();
  sub_24F924278();
  sub_24F924038();
  sub_24F924038();
  sub_24E602068(&qword_27F237758, &qword_27F237750);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F924288();
  type metadata accessor for OnForegroundRefreshViewModifier(255);
  sub_24F924038();
  type metadata accessor for PerformPageLoadActionViewModifier(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F254F40);
  swift_getWitnessTable();
  sub_24F58786C(&qword_27F248430, type metadata accessor for OnForegroundRefreshViewModifier);
  swift_getWitnessTable();
  sub_24F58786C(&qword_27F248438, type metadata accessor for PerformPageLoadActionViewModifier);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24E6A4C1C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24F921C58();
  sub_24F58786C(&qword_27F2477E8, MEMORY[0x277D7EC50]);
  swift_getOpaqueTypeConformance2();
  sub_24F58786C(&qword_27F248440, MEMORY[0x277D7EC80]);
  sub_24F921908();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248448);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F248450, &qword_27F248448);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24F58786C(&qword_27F23FB90, type metadata accessor for Page);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24F928FD8();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F58E928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F58E990()
{
  refreshed = type metadata accessor for OnForegroundRefreshViewModifier(0);
  v2 = (*(*(refreshed - 8) + 80) + 16) & ~*(*(refreshed - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923418();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(refreshed + 20);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248468) + 32);
  v7 = sub_24F91F648();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(refreshed + 24);
  v9 = sub_24F92A708();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_24F58EB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F58EBC8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OnForegroundRefreshViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F586C9C(a1, a2, v6);
}

uint64_t objectdestroy_116Tm()
{
  ActionViewModifier = type metadata accessor for PerformPageLoadActionViewModifier(0);
  v2 = (*(*(ActionViewModifier - 8) + 80) + 16) & ~*(*(ActionViewModifier - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    if (*(v3 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + v2);
    }
  }

  else
  {
  }

  v4 = *(ActionViewModifier + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v3 + *(ActionViewModifier + 24);
  if (*(v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return swift_deallocObject();
}

unint64_t sub_24F58EE10()
{
  result = qword_27F248500;
  if (!qword_27F248500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2484F0);
    sub_24E602068(&qword_27F248508, &qword_27F2484F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248500);
  }

  return result;
}

uint64_t sub_24F58EEC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2484E0);
  sub_24F923418();
  sub_24E602068(&qword_27F2484E8, &qword_27F2484E0);
  sub_24F58786C(&qword_27F235EA0, MEMORY[0x277CDD6C8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F58EFA8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2484F0);
  sub_24F58EE10();
  return swift_getOpaqueTypeConformance2();
}

unint64_t PlayerProfileData.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F58FAD4(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA75DB0;
  v6 = v2 + *(type metadata accessor for PlayerProfileData() + 20);
  v7 = *(v6 + 32);
  v8 = sub_24F4E70D8();
  v9 = swift_allocObject();
  v10 = *v6;
  v11 = *(v6 + 16);
  *(inited + 128) = &type metadata for PlayerProfileStats;
  *(inited + 136) = v8;
  *(inited + 104) = v9;
  *(v9 + 16) = v10;
  *(v9 + 32) = v11;
  *(v9 + 48) = v7;
  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t type metadata accessor for PlayerProfileData()
{
  result = qword_27F248528;
  if (!qword_27F248528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F58F244()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24F58F280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA75DB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F58F360(uint64_t a1)
{
  v2 = sub_24F58FA80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F58F39C(uint64_t a1)
{
  v2 = sub_24F58FA80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerProfileData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248510);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F58FA80();
  sub_24F92D128();
  LOBYTE(v14) = 0;
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for PlayerProfileData() + 20));
    v10 = *(v9 + 4);
    v11 = v9[1];
    v14 = *v9;
    v15 = v11;
    v16 = v10;
    v13[15] = 1;
    sub_24F4E7A2C();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PlayerProfileData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248520);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PlayerProfileData();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F58FA80();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v20;
  v13 = v11;
  LOBYTE(v23) = 0;
  sub_24E61C064(&qword_27F213E38);
  v14 = v21;
  sub_24F92CC68();
  sub_24E61C0A8(v22, v13);
  v26 = 1;
  sub_24F4E7A80();
  sub_24F92CC68();
  (*(v12 + 8))(v8, v14);
  v15 = v25;
  v16 = v13 + *(v9 + 20);
  v17 = v24;
  *v16 = v23;
  *(v16 + 16) = v17;
  *(v16 + 32) = v15;
  sub_24F58FAD4(v13, v19, type metadata accessor for PlayerProfileData);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F58FB3C(v13, type metadata accessor for PlayerProfileData);
}

unint64_t sub_24F58F8D4@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F58FAD4(v4, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0xD000000000000012;
  *(inited + 96) = 0x800000024FA75DB0;
  v8 = v4 + *(a1 + 20);
  v9 = *(v8 + 32);
  v10 = sub_24F4E70D8();
  v11 = swift_allocObject();
  v12 = *v8;
  v13 = *(v8 + 16);
  *(inited + 128) = &type metadata for PlayerProfileStats;
  *(inited + 136) = v10;
  *(inited + 104) = v11;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v9;
  v14 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v14;
  return result;
}

unint64_t sub_24F58FA80()
{
  result = qword_27F248518;
  if (!qword_27F248518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248518);
  }

  return result;
}

uint64_t sub_24F58FAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F58FB3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F58FBB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F58FC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F58FCA0()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F58FD28()
{
  result = qword_27F248538;
  if (!qword_27F248538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248538);
  }

  return result;
}

unint64_t sub_24F58FD80()
{
  result = qword_27F248540;
  if (!qword_27F248540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248540);
  }

  return result;
}

unint64_t sub_24F58FDD8()
{
  result = qword_27F248548;
  if (!qword_27F248548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248548);
  }

  return result;
}

uint64_t sub_24F58FE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
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

    return (v10 + 1);
  }
}

uint64_t sub_24F58FF1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for OverlappingPlayerAvatarsView()
{
  result = qword_27F248550;
  if (!qword_27F248550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F59002C()
{
  sub_24E66ED3C();
  if (v0 <= 0x3F)
  {
    sub_24F5900C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F5900C8()
{
  if (!qword_27F248560)
  {
    type metadata accessor for PlayerAvatarView(255);
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F248560);
    }
  }
}

uint64_t getEnumTagSinglePayload for OverlappingPlayerAvatarsView.TruncationRule(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OverlappingPlayerAvatarsView.TruncationRule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24F5901CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F5901E8(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

unint64_t sub_24F590224()
{
  result = qword_27F248568;
  if (!qword_27F248568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248568);
  }

  return result;
}

int *sub_24F590278@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8);
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v67 = &v56[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v56[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248578);
  MEMORY[0x28223BE20](v11);
  v13 = &v56[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248580);
  MEMORY[0x28223BE20](v14);
  v16 = &v56[-v15];
  result = type metadata accessor for OverlappingPlayerAvatarsView();
  v18 = result;
  v19 = (v1 + result[6]);
  v20 = *(v19 + 8);
  if (v20 == 2)
  {
    v21 = *(v1 + result[7]);
    *v16 = *(v1 + result[5]);
    v16[8] = v21;
    swift_storeEnumTagMultiPayload();
    sub_24F591068();
    sub_24E602068(&qword_27F2485A0, &qword_27F248578);

    return sub_24F924E28();
  }

  else
  {
    v65 = v14;
    v66 = v7;
    v22 = *v19;
    v23 = *(v1 + result[5]);
    v24 = *(v23 + 16);
    if (*v19 >= v24)
    {
      v25 = *(v23 + 16);
    }

    else
    {
      v25 = *v19;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v63 = v11;
      v64 = a1;
      if (v24 <= v22)
      {

        v29 = v23;
      }

      else
      {
        v26 = (2 * v25) | 1;
        v27 = *(type metadata accessor for PlayerAvatarView(0) - 8);
        sub_24E6B90B8(v23, v23 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), 0, v26);
        v29 = v28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
      sub_24F9237D8();
      v30 = v70;
      *v13 = sub_24F9249A8();
      *(v13 + 1) = v30;
      v13[16] = 0;
      v62 = *(v1 + v18[7]);
      if ((v20 & 1) != 0 && *(v23 + 16) > v22)
      {

        v70 = sub_24F69B160();
        v71 = v31;
        sub_24E600AEC();
        v32 = sub_24F925E18();
        v34 = v33;
        v36 = v35;
        sub_24F925A18();
        v58 = sub_24F925C98();
        v59 = v37;
        v39 = v38;
        v57 = v40;

        sub_24E600B40(v32, v34, v36 & 1);

        LODWORD(v70) = sub_24F9251C8();
        v41 = v57;
        v42 = v58;
        v60 = sub_24F925C58();
        v61 = v43;
        v45 = v44;
        v47 = v46;
        sub_24E600B40(v42, v39, v41 & 1);

        v48 = v69;
        v49 = *(v69 + 36);
        v50 = *MEMORY[0x277CE13B8];
        v51 = sub_24F927748();
        v52 = v67;
        (*(*(v51 - 8) + 104))(&v67[v49], v50, v51);
        *v52 = v60;
        *(v52 + 8) = v45;
        *(v52 + 16) = v47 & 1;
        *(v52 + 24) = v61;
        sub_24E6009C8(v52, v10, &qword_27F214BA8);
        (*(v68 + 56))(v10, 0, 1, v48);
      }

      else
      {
        (*(v68 + 56))(v10, 1, 1, v69);
      }

      v53 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248588) + 44)];
      v54 = v66;
      sub_24E60169C(v10, v66, &qword_27F248570);
      *v53 = v29;
      v53[8] = v62;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248590);
      sub_24E60169C(v54, &v53[*(v55 + 48)], &qword_27F248570);

      sub_24E601704(v10, &qword_27F248570);
      sub_24E601704(v54, &qword_27F248570);

      sub_24E60169C(v13, v16, &qword_27F248578);
      swift_storeEnumTagMultiPayload();
      sub_24F591068();
      sub_24E602068(&qword_27F2485A0, &qword_27F248578);
      sub_24F924E28();
      return sub_24E601704(v13, &qword_27F248578);
    }
  }

  return result;
}

void sub_24F5908E8(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, CGFloat a5@<D0>)
{
  *&v39 = a3;
  v42 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248608);
  MEMORY[0x28223BE20](v41);
  v9 = &v37 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248610);
  MEMORY[0x28223BE20](v40);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2485E8);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2485D8);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v25 = *a1;
  if (v25)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *(a2 + 16))
    {
      v38 = v22;
      v26 = *(type metadata accessor for PlayerAvatarView(0) - 8);
      sub_24EF8FCD0(a2 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, v14);
      sub_24F927618();
      sub_24F9238C8();
      v27 = &v14[*(v12 + 36)];
      v28 = v47;
      *v27 = v46;
      *(v27 + 1) = v28;
      *(v27 + 2) = v48;
      sub_24F925B38();
      v52.origin.x = 0.0;
      v52.origin.y = 0.0;
      v52.size.width = a5;
      v52.size.height = a5;
      CGRectGetMidY(v52);
      v53.origin.x = 0.0;
      v53.origin.y = 0.0;
      v53.size.width = a5;
      v53.size.height = a5;
      CGRectGetHeight(v53);
      v49 = 0x3FF0000000000000uLL;
      *&v50 = 0;
      *(&v50 + 1) = 0x3FF0000000000000;
      v51 = 0uLL;
      sub_24F925B08();
      sub_24F925AE8();
      v29 = v45;
      v39 = v43;
      v37 = v44;
      sub_24E6009C8(v14, v17, &qword_27F2233D0);
      v30 = &v17[*(v15 + 36)];
      v31 = v37;
      *v30 = v39;
      *(v30 + 1) = v31;
      v30[32] = v29;
      sub_24E6009C8(v17, v20, &qword_27F2485E8);
      *&v20[*(v38 + 36)] = 1.0 / (v25 + 1);
      sub_24E6009C8(v20, v24, &qword_27F2485D8);
      sub_24E60169C(v24, v11, &qword_27F2485D8);
      swift_storeEnumTagMultiPayload();
      sub_24F59127C();
      sub_24F5913EC();
      sub_24F924E28();
      v32 = v24;
      v33 = &qword_27F2485D8;
LABEL_7:
      sub_24E601704(v32, v33);
      return;
    }

    __break(1u);
  }

  else if (*(a2 + 16))
  {
    v34 = *(type metadata accessor for PlayerAvatarView(0) - 8);
    sub_24EF8FCD0(a2 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v9);
    sub_24F927618();
    sub_24F9238C8();
    v35 = &v9[*(v12 + 36)];
    v36 = v50;
    *v35 = v49;
    *(v35 + 1) = v36;
    *(v35 + 2) = v51;
    *&v9[*(v41 + 36)] = 0x3FF0000000000000;
    sub_24E60169C(v9, v11, &qword_27F248608);
    swift_storeEnumTagMultiPayload();
    sub_24F59127C();
    sub_24F5913EC();
    sub_24F924E28();
    v32 = v9;
    v33 = &qword_27F248608;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_24F590ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = qword_24FA0B878[v4];
  v6 = qword_24FA0B8A8[v4];
  v7 = qword_24FA0B8D8[v4];
  v8 = qword_24FA0B908[v4];
  *a1 = sub_24F9249A8();
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2485B8);
  swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v4;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2485C0);
  sub_24E62A6CC();
  sub_24F5911F0();
  return sub_24F927228();
}

unint64_t sub_24F591068()
{
  result = qword_27F248598;
  if (!qword_27F248598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248598);
  }

  return result;
}

unint64_t sub_24F5910D0()
{
  result = qword_27F2485A8;
  if (!qword_27F2485A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2485B0);
    sub_24F591068();
    sub_24E602068(&qword_27F2485A0, &qword_27F248578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2485A8);
  }

  return result;
}

uint64_t sub_24F5911A4()
{

  return swift_deallocObject();
}

unint64_t sub_24F5911F0()
{
  result = qword_27F2485C8;
  if (!qword_27F2485C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2485C0);
    sub_24F59127C();
    sub_24F5913EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2485C8);
  }

  return result;
}

unint64_t sub_24F59127C()
{
  result = qword_27F2485D0;
  if (!qword_27F2485D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2485D8);
    sub_24F591334();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2485D0);
  }

  return result;
}

unint64_t sub_24F591334()
{
  result = qword_27F2485E0;
  if (!qword_27F2485E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2485E8);
    sub_24E680290();
    sub_24E602068(&qword_27F2485F0, &qword_27F2485F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2485E0);
  }

  return result;
}

unint64_t sub_24F5913EC()
{
  result = qword_27F248600;
  if (!qword_27F248600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248608);
    sub_24E680290();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248600);
  }

  return result;
}

id sub_24F5914E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E69A53C();
  sub_24F91FD88();

  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact);
  *a2 = v4;

  return v4;
}

void sub_24F591578(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F556BB0(v1);
}

void sub_24F59161C(void *a1, void *a2, void *a3)
{
  v55 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_24F9289E8();
  v51 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_24F91F4A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v49 = &v46 - v21;
  v50 = a3;
  v22 = [a3 source];
  v53 = v9;
  v54 = a1;
  v52 = v3;
  if (v22 == 4 || v22 == 1)
  {
    v23 = [v55 imageData];
    if (v23)
    {
      v24 = v23;
      v25 = sub_24F91F4E8();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0xF000000000000000;
    }
  }

  else
  {
    v25 = sub_24F591BF4();
    v27 = v28;
  }

  v29 = v16;
  v30 = [objc_opt_self() defaultManager];
  sub_24F5D30C4();
  sub_24F5D3628(v25, v27, v14);
  v31 = v15;
  if ((*(v29 + 48))(v14, 1, v15) != 1)
  {
    v38 = v49;
    (*(v29 + 32))(v49, v14, v31);
    (*(v29 + 16))(v18, v38, v31);
    v48 = v25;
    v39 = v11;
    sub_24F928978();
    v46 = *(v52 + OBJC_IVAR____TtCV12GameStoreKit16AvatarEditorView11Coordinator_parent + 8);
    v47 = v30;
    v40 = v51;
    v41 = v11;
    v42 = v53;
    (*(v51 + 16))(v8, v41, v53);
    (*(v40 + 56))(v8, 0, 1, v42);
    v52 = v31;
    v43 = sub_24F91F398();
    v46(v8, v43, v44, v50, v55);

    sub_24E71CBAC(v48, v27);
    sub_24E601704(v8, &qword_27F213FB0);
    (*(v40 + 8))(v39, v42);
    (*(v29 + 8))(v38, v52);
    v37 = [v54 presentingViewController];
    if (!v37)
    {
      return;
    }

    goto LABEL_15;
  }

  sub_24E601704(v14, &qword_27F228530);
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v32 = sub_24F9220D8();
  __swift_project_value_buffer(v32, qword_27F39E8F8);
  v33 = sub_24F9220B8();
  v34 = sub_24F92BDB8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_24E5DD000, v33, v34, "There is no cached avatar URL. Was the avatar deleted?", v35, 2u);
    MEMORY[0x2530542D0](v35, -1, -1);
  }

  v36 = *(v52 + OBJC_IVAR____TtCV12GameStoreKit16AvatarEditorView11Coordinator_parent + 8);
  (*(v51 + 56))(v8, 1, 1, v53);
  v36(v8, 0, 0, 0, 0);

  sub_24E71CBAC(v25, v27);
  sub_24E601704(v8, &qword_27F213FB0);
  v37 = [v54 presentingViewController];
  if (v37)
  {
LABEL_15:
    v45 = v37;
    [v37 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_24F591BF4()
{
  v1 = [v0 imageData];
  if (!v1)
  {
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v14 = sub_24F9220D8();
    __swift_project_value_buffer(v14, qword_27F39E8F8);
    p_super = sub_24F9220B8();
    v15 = sub_24F92BDB8();
    if (os_log_type_enabled(p_super, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_24E5DD000, p_super, v15, "There is no image for the avatar. Is it deleted?", v16, 2u);
      MEMORY[0x2530542D0](v16, -1, -1);
    }

    goto LABEL_28;
  }

  v2 = v1;
  v3 = sub_24F91F4E8();
  v5 = v4;

  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24E71CBC0(v3, v5);
  v7 = sub_24F91F4C8();
  v8 = [v6 initWithData_];

  sub_24E627880(v3, v5);
  if (!v8 || (p_super = [v8 CGImage], v8, !p_super))
  {
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E8F8);
    p_super = sub_24F9220B8();
    v12 = sub_24F92BDB8();
    if (os_log_type_enabled(p_super, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24E5DD000, p_super, v12, "Could not convert image data to CGImage.", v13, 2u);
      MEMORY[0x2530542D0](v13, -1, -1);
    }

    sub_24E627880(v3, v5);
    goto LABEL_28;
  }

  [v0 cropRect];
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = 0.0;
  v33.size.height = 0.0;
  if (CGRectEqualToRect(v31, v33))
  {
    v10 = p_super;
  }

  else
  {
    [v0 cropRect];
    v10 = CGImageCreateWithImageInRect(p_super, v32);
    if (!v10)
    {
      if (qword_27F211438 != -1)
      {
        swift_once();
      }

      v26 = sub_24F9220D8();
      __swift_project_value_buffer(v26, qword_27F39E8F8);
      v27 = sub_24F9220B8();
      v28 = sub_24F92BDB8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_24E5DD000, v27, v28, "Could not get the cropped image.", v29, 2u);
        MEMORY[0x2530542D0](v29, -1, -1);
      }

      sub_24E627880(v3, v5);

      goto LABEL_28;
    }
  }

  v17 = v10;
  v18 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  v19 = UIImagePNGRepresentation(v18);
  if (!v19)
  {

    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v22 = sub_24F9220D8();
    __swift_project_value_buffer(v22, qword_27F39E8F8);
    v23 = sub_24F9220B8();
    v24 = sub_24F92BDB8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24E5DD000, v23, v24, "Could not create a PNG data from the cropped image.", v25, 2u);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    sub_24E627880(v3, v5);

LABEL_28:
    v21 = 0;
    goto LABEL_29;
  }

  v20 = v19;
  v21 = sub_24F91F4E8();

  sub_24E627880(v3, v5);
  p_super = &v20->super;
LABEL_29:

  return v21;
}

id sub_24F592164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarEditorView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24F59221C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = type metadata accessor for AvatarEditorView.Coordinator();
  v8 = *v1;
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV12GameStoreKit16AvatarEditorView11Coordinator_parent];
  *v6 = v8;
  *(v6 + 2) = v3;
  v9.receiver = v5;
  v9.super_class = v4;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24F5922A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F59260C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24F59230C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F59260C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24F592370()
{
  sub_24F59260C();
  sub_24F925628();
  __break(1u);
}

id sub_24F59239C(uint64_t a1, char *a2)
{
  v3 = sub_24F922D68();
  MEMORY[0x28223BE20](v3);
  swift_getKeyPath();
  v14 = a2;
  sub_24E69A53C();
  sub_24F91FD88();

  v4 = *&a2[OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact];
  if (!v4)
  {
    return [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  }

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 photoPickerForGameCenterWithContact_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248690);
  sub_24F925788();
  [v7 setDelegate_];

  if (qword_27F2116B8 != -1)
  {
    swift_once();
  }

  v8 = sub_24F92B098();
  [v7 setAssignActionTitleOverride_];

  v9 = *MEMORY[0x277D76838];
  v10 = v7;
  v11 = v9;
  sub_24F92BE18();
  sub_24F922D48();
  sub_24F92BE28();
  v12 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return v12;
}

void sub_24F5925DC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24F556BB0(v1);
}

unint64_t sub_24F59260C()
{
  result = qword_27F248698;
  if (!qword_27F248698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248698);
  }

  return result;
}

uint64_t sub_24F592674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F5926F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for GSKDebugMetricsExpandedSummaryView()
{
  result = qword_27F2486A8;
  if (!qword_27F2486A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5927B0()
{
  result = type metadata accessor for GSKDebugMetricsEvent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24F592840()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_24F92B098();
  [v0 setDateFormat_];

  qword_27F2486A0 = v0;
}

uint64_t sub_24F5928BC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486C0);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  sub_24F77748C();
  sub_24F926DF8();
  sub_24F924CF8();
  v14 = sub_24F924D08();
  v15 = *(v14 - 8);
  v34 = *(v15 + 56);
  v33 = v15 + 56;
  v34(v13, 0, 1, v14);
  v38 = sub_24F926E58();

  sub_24E601704(v13, &qword_27F214410);
  v16 = sub_24F925908();
  v17 = *(*(v16 - 8) + 56);
  v17(v10, 1, 1, v16);
  v37 = sub_24F925968();
  sub_24E601704(v10, &qword_27F214698);
  KeyPath = swift_getKeyPath();
  type metadata accessor for GSKDebugMetricsExpandedSummaryView();
  sub_24F9238C8();
  *v7 = sub_24F924C98();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486C8);
  sub_24F592E70(a1, &v7[*(v18 + 44)]);
  if (*(*(a1 + *(type metadata accessor for GSKDebugMetricsEvent() + 24)) + 16))
  {
    sub_24F926DF8();
    sub_24F924CE8();
    v34(v13, 0, 1, v14);
    v19 = sub_24F926E58();

    sub_24E601704(v13, &qword_27F214410);
    v17(v10, 1, 1, v16);
    v20 = sub_24F925968();
    sub_24E601704(v10, &qword_27F214698);
    v21 = swift_getKeyPath();
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v20 = 0;
  }

  v22 = v39;
  sub_24E60169C(v7, v39, &qword_27F2486C0);
  v34 = v7;
  v23 = v38;
  *&v40 = v38;
  v24 = KeyPath;
  *(&v40 + 1) = KeyPath;
  v25 = v37;
  *v41 = v37;
  *&v41[8] = v46;
  *&v41[24] = v47;
  *&v41[40] = v48;
  v26 = *v41;
  v27 = v35;
  *v35 = v40;
  v27[1] = v26;
  v28 = *&v41[32];
  v27[2] = *&v41[16];
  v27[3] = v28;
  *(v27 + 8) = *&v41[48];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486D0);
  sub_24E60169C(v22, v27 + v29[12], &qword_27F2486C0);
  v30 = v27 + v29[16];
  *v30 = 0;
  v30[8] = 1;
  v31 = (v27 + v29[20]);
  sub_24E60169C(&v40, v42, &qword_27F2128C8);
  sub_24E680F54(v19);
  sub_24E680FA4(v19);
  *v31 = v19;
  v31[1] = v21;
  v31[2] = v20;
  sub_24E601704(v34, &qword_27F2486C0);
  sub_24E680FA4(v19);
  sub_24E601704(v22, &qword_27F2486C0);
  v42[0] = v23;
  v42[1] = v24;
  v42[2] = v25;
  v43 = v46;
  v44 = v47;
  v45 = v48;
  return sub_24E601704(v42, &qword_27F2128C8);
}

uint64_t sub_24F592E70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486D8);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x28223BE20](v3);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220998);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = aEventtype_6[0];
  v12 = aEventtype_6[1];
  v13 = off_281C9F358;

  v14 = a1;
  sub_24F5C567C(v11, v12, v13, v10);

  v15 = sub_24F929458();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_24E601704(v10, &qword_27F220998);
    v17 = 0xE700000000000000;
    v18 = 0x6E776F6E6B6E55;
  }

  else
  {
    v18 = sub_24F929448();
    v17 = v19;
    (*(v16 + 8))(v10, v15);
  }

  v68 = v18;
  v69 = v17;
  sub_24E600AEC();
  v20 = sub_24F925E18();
  v22 = v21;
  v24 = v23;
  sub_24F925A28();
  v58 = sub_24F925C98();
  v59 = v25;
  v27 = v26;
  v51 = v26;
  v52 = v28;

  sub_24E600B40(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  v68 = sub_24F777ACC();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486E8);
  sub_24E602068(&qword_27F2486F0, &qword_27F2486E0);
  sub_24F593A2C();
  v29 = v62;
  sub_24F927228();
  v61 = sub_24F9249A8();
  LOBYTE(v68) = 1;
  sub_24F593620(v14, v65);
  *(v64 + 7) = v65[0];
  *(&v64[1] + 7) = v65[1];
  *(&v64[2] + 7) = v65[2];
  *(&v64[3] + 7) = v65[3];
  v60 = v68;
  v50 = sub_24F925A18();
  v49 = swift_getKeyPath();
  v57 = sub_24F9251C8();
  v30 = v54;
  v31 = v55;
  v32 = *(v55 + 16);
  v33 = v63;
  v32(v63, v29, v54);
  v34 = v58;
  v35 = v59;
  v36 = v53;
  *v53 = v58;
  v36[1] = v27;
  v52 &= 1u;
  *(v36 + 16) = v52;
  v37 = KeyPath;
  v36[3] = v35;
  v36[4] = v37;
  v36[5] = 3;
  *(v36 + 48) = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248700);
  v32(v36 + *(v38 + 48), v33, v30);
  v39 = (v36 + *(v38 + 64));
  v66 = v61;
  LOBYTE(v67[0]) = v60;
  *(&v67[3] + 1) = v64[3];
  *(&v67[2] + 1) = v64[2];
  *(v67 + 1) = v64[0];
  *(&v67[1] + 1) = v64[1];
  v40 = v49;
  v41 = v50;
  *&v67[4] = *(&v64[3] + 15);
  *(&v67[4] + 1) = v49;
  *&v67[5] = v50;
  DWORD2(v67[5]) = v57;
  v42 = v67[4];
  v39[4] = v67[3];
  v39[5] = v42;
  *(v39 + 92) = *(&v67[4] + 12);
  v43 = v67[0];
  *v39 = v66;
  v39[1] = v43;
  v44 = v67[2];
  v39[2] = v67[1];
  v39[3] = v44;
  v45 = v34;
  v46 = v51;
  LOBYTE(v34) = v52;
  sub_24E5FD138(v45, v51, v52);

  sub_24E60169C(&v66, &v68, &qword_27F248708);
  v47 = *(v31 + 8);
  v47(v62, v30);
  v72 = v64[1];
  v73 = v64[2];
  *v74 = v64[3];
  v68 = v61;
  v69 = 0;
  v70 = v60;
  v71 = v64[0];
  *&v74[15] = *(&v64[3] + 15);
  v75 = v40;
  v76 = v41;
  v77 = v57;
  sub_24E601704(&v68, &qword_27F248708);
  v47(v63, v30);
  sub_24E600B40(v58, v46, v34);
}

uint64_t sub_24F593484@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = sub_24F91F008();
  MEMORY[0x28223BE20](v8 - 8);
  if (a2)
  {

    MEMORY[0x253050C20](8250, 0xE200000000000000);
    MEMORY[0x253050C20](a1, a2);
    sub_24F777CA0(a3);

    v9 = sub_24F925DF8();
    v11 = v10;
    v13 = v12;
    sub_24F9258D8();
    v14 = sub_24F925C98();
    v16 = v15;
    v18 = v17;
    a2 = v19;

    sub_24E600B40(v9, v11, v13 & 1);

    result = swift_getKeyPath();
    v21 = v18 & 1;
    v22 = 1;
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v21 = 0;
    result = 0;
    v22 = 0;
  }

  *a4 = v14;
  *(a4 + 8) = v16;
  *(a4 + 16) = v21;
  *(a4 + 24) = a2;
  *(a4 + 32) = result;
  *(a4 + 40) = v22;
  *(a4 + 48) = 0;
  return result;
}

uint64_t sub_24F593620@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = aEventtime_0[0];
  v12 = aEventtime_0[1];
  v13 = off_281C9F538;

  sub_24F5C5694(v11, v12, v13, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &unk_27F22EC30);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (qword_27F211350 != -1)
    {
      swift_once();
    }

    v18 = qword_27F2486A0;
    v19 = sub_24F91F578();
    v20 = [v18 stringFromDate_];

    v21 = sub_24F92B0D8();
    v23 = v22;

    v37 = v21;
    v38 = v23;
    sub_24E600AEC();
    v14 = sub_24F925E18();
    v15 = v24;
    v26 = v25;
    v17 = v27;
    (*(v8 + 8))(v10, v7);
    v16 = v26 & 1;
    sub_24E5FD138(v14, v15, v26 & 1);
  }

  v28 = (a1 + *(type metadata accessor for GSKDebugMetricsEvent() + 28));
  v29 = v28[1];
  if (v29)
  {
    v37 = *v28;
    v38 = v29;
    sub_24E600AEC();

    v29 = sub_24F925E18();
    v31 = v30;
    v33 = v32;
    v35 = v34 & 1;
    sub_24E5FD138(v29, v30, v34 & 1);
  }

  else
  {
    v31 = 0;
    v35 = 0;
    v33 = 0;
  }

  sub_24E65D2B4(v14, v15, v16, v17);
  sub_24E65D2B4(v29, v31, v35, v33);
  sub_24E65D2F8(v14, v15, v16, v17);
  sub_24E65D2F8(v29, v31, v35, v33);
  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v29;
  a2[5] = v31;
  a2[6] = v35;
  a2[7] = v33;
  sub_24E65D2F8(v29, v31, v35, v33);
  return sub_24E65D2F8(v14, v15, v16, v17);
}

uint64_t sub_24F5939C8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F9249A8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2486B8);
  return sub_24F5928BC(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_24F593A2C()
{
  result = qword_27F2486F8;
  if (!qword_27F2486F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2486E8);
    sub_24E67283C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2486F8);
  }

  return result;
}

uint64_t FriendSuggestionType.rawValue.getter()
{
  v1 = 0x746E6F4368737570;
  if (*v0 != 1)
  {
    v1 = 0x79616C5068737570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736567617373656DLL;
  }
}

GameStoreKit::FriendSuggestionType_optional __swiftcall FriendSuggestionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F593BB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746E6F4368737570;
  v4 = 0xEB00000000746361;
  if (v2 != 1)
  {
    v3 = 0x79616C5068737570;
    v4 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x736567617373656DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x746E6F4368737570;
  v8 = 0xEB00000000746361;
  if (*a2 != 1)
  {
    v7 = 0x79616C5068737570;
    v8 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x736567617373656DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F593CD8()
{
  result = qword_27F248720;
  if (!qword_27F248720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248720);
  }

  return result;
}

uint64_t sub_24F593D2C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F593DDC()
{
  sub_24F92B218();
}

uint64_t sub_24F593E78()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F593F30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000746361;
  v5 = 0x746E6F4368737570;
  if (v2 != 1)
  {
    v5 = 0x79616C5068737570;
    v4 = 0xEA00000000007265;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736567617373656DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24F59405C()
{
  result = qword_27F248728;
  if (!qword_27F248728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248728);
  }

  return result;
}

uint64_t sub_24F5940C0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248740);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F594580();
  sub_24F92D128();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8);
  sub_24F5945D4(&qword_27F22D0C8, sub_24ECA4FDC);
  sub_24F92CCF8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24F594264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F5942EC(uint64_t a1)
{
  v2 = sub_24F594580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F594328(uint64_t a1)
{
  v2 = sub_24F594580();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24F594384@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_24F5943CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_24F5943CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248730);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F594580();
  sub_24F92D108();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8);
    sub_24F5945D4(&qword_27F22D0B0, sub_24ECA4F58);
    sub_24F92CC18();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_24F594580()
{
  result = qword_27F248738;
  if (!qword_27F248738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248738);
  }

  return result;
}

uint64_t sub_24F5945D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D0A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F594660()
{
  result = qword_27F248748;
  if (!qword_27F248748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248748);
  }

  return result;
}

unint64_t sub_24F5946B8()
{
  result = qword_27F248750;
  if (!qword_27F248750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248750);
  }

  return result;
}

unint64_t sub_24F594710()
{
  result = qword_27F248758;
  if (!qword_27F248758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248758);
  }

  return result;
}

uint64_t sub_24F594764@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v22 = a3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219070);
  MEMORY[0x28223BE20](v21);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248760);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-v10];
  v12 = type metadata accessor for ColorGroup();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E60169C(a1, v11, &qword_27F2190D8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F2190D8);
    *v8 = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248768);
    sub_24E602068(&qword_27F219118, &qword_27F219070);
    sub_24F594E60();
    return sub_24F924E28();
  }

  else
  {
    sub_24E77D42C(v11, v15);
    *v5 = sub_24F927618();
    v5[1] = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120);
    sub_24F594F18(v20 & 1, v15, v5 + *(v18 + 44));
    sub_24E60169C(v5, v8, &qword_27F219070);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248768);
    sub_24E602068(&qword_27F219118, &qword_27F219070);
    sub_24F594E60();
    sub_24F924E28();
    sub_24E601704(v5, &qword_27F219070);
    return sub_24E77D068(v15);
  }
}

uint64_t sub_24F594AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219070);
  MEMORY[0x28223BE20](v18[0]);
  v4 = (v18 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248760);
  MEMORY[0x28223BE20](v5);
  v7 = (v18 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for ColorGroup();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v10, &qword_27F2190D8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F2190D8);
    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248768);
    sub_24E602068(&qword_27F219118, &qword_27F219070);
    sub_24F594E60();
    return sub_24F924E28();
  }

  else
  {
    sub_24E77D42C(v10, v14);
    *v4 = sub_24F927618();
    v4[1] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120);
    sub_24F59525C(v14, v4 + *(v17 + 44));
    sub_24E60169C(v4, v7, &qword_27F219070);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248768);
    sub_24E602068(&qword_27F219118, &qword_27F219070);
    sub_24F594E60();
    sub_24F924E28();
    sub_24E601704(v4, &qword_27F219070);
    return sub_24E77D068(v14);
  }
}

unint64_t sub_24F594E60()
{
  result = qword_27F248770;
  if (!qword_27F248770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248768);
    sub_24E760430();
    sub_24E602068(&qword_27F248778, &qword_27F248780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248770);
  }

  return result;
}

uint64_t sub_24F594F18@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248788);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v12 = swift_allocObject();
  v27 = xmmword_24F93A400;
  *(v12 + 16) = xmmword_24F93A400;
  v13 = type metadata accessor for ColorGroup();
  v14 = 28;
  if (a1)
  {
    v15 = 28;
  }

  else
  {
    v15 = 32;
  }

  if (a1)
  {
    v14 = 32;
  }

  *(v12 + 32) = *(a2 + *(v13 + v15));
  *(v12 + 40) = *(a2 + *(v13 + v14));

  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v12);
  sub_24F923BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v16 = swift_allocObject();
  *(v16 + 16) = v27;
  if (a1)
  {
    *(v16 + 32) = sub_24F926C98();
    sub_24F926C88();
    v17 = sub_24F926D08();

    *(v16 + 40) = v17;
  }

  else
  {
    sub_24F926C88();
    v18 = sub_24F926D08();

    *(v16 + 32) = v18;
    *(v16 + 40) = sub_24F926C98();
  }

  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v16);
  sub_24F923BD8();
  v19 = *(v6 + 36);
  v20 = *MEMORY[0x277CE13B0];
  v21 = sub_24F927748();
  (*(*(v21 - 8) + 104))(&v11[v19], v20, v21);
  v22 = v32;
  *v11 = v31;
  *(v11 + 1) = v22;
  *(v11 + 4) = v33;
  v23 = v28;
  sub_24E60169C(v11, v9, &qword_27F248788);
  *a3 = v23;
  v24 = v29;
  *(a3 + 24) = v30;
  *(a3 + 8) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248790);
  sub_24E60169C(v9, a3 + *(v25 + 48), &qword_27F248788);

  sub_24E601704(v11, &qword_27F248788);
  sub_24E601704(v9, &qword_27F248788);
}

uint64_t sub_24F59525C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248788);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_24F93A400;
  v12 = type metadata accessor for ColorGroup();
  *(v11 + 32) = *(a1 + *(v12 + 28));
  *(v11 + 40) = *(a1 + *(v12 + 32));

  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v11);
  sub_24F923BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_24F9479A0;
  sub_24F926C98();
  *(v13 + 32) = sub_24F9273C8();
  *(v13 + 40) = v14;
  sub_24F926C98();
  *(v13 + 48) = sub_24F9273C8();
  *(v13 + 56) = v15;
  sub_24F926C88();
  sub_24F926D08();

  *(v13 + 64) = sub_24F9273C8();
  *(v13 + 72) = v16;
  sub_24F927878();
  sub_24F927898();
  sub_24F9273D8();
  sub_24F923BD8();
  v17 = *(v5 + 44);
  v18 = *MEMORY[0x277CE13B0];
  v19 = sub_24F927748();
  (*(*(v19 - 8) + 104))(&v10[v17], v18, v19);
  v20 = v29;
  *v10 = v28;
  *(v10 + 1) = v20;
  *(v10 + 4) = v30;
  v21 = v25;
  sub_24E60169C(v10, v7, &qword_27F248788);
  *a2 = v21;
  v22 = v26;
  *(a2 + 24) = v27;
  *(a2 + 8) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248790);
  sub_24E60169C(v7, a2 + *(v23 + 48), &qword_27F248788);

  sub_24E601704(v10, &qword_27F248788);
  sub_24E601704(v7, &qword_27F248788);
}

unint64_t sub_24F595594()
{
  result = qword_27F248798;
  if (!qword_27F248798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248798);
  }

  return result;
}

uint64_t sub_24F5955E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248788);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
  v11 = swift_allocObject();
  v23 = xmmword_24F93A400;
  *(v11 + 16) = xmmword_24F93A400;
  v12 = type metadata accessor for ColorGroup();
  *(v11 + 32) = *(a1 + *(v12 + 28));
  *(v11 + 40) = *(a1 + *(v12 + 32));

  sub_24F927878();
  sub_24F927898();
  MEMORY[0x25304CD70](v11);
  sub_24F923BD8();
  v13 = swift_allocObject();
  *(v13 + 16) = v23;
  *(v13 + 32) = sub_24F926C98();
  sub_24F926C88();
  v14 = sub_24F926D08();

  *(v13 + 40) = v14;
  sub_24F927898();
  MEMORY[0x25304CD70](v13);
  sub_24F923BD8();
  v15 = *(v5 + 44);
  v16 = *MEMORY[0x277CE13B0];
  v17 = sub_24F927748();
  (*(*(v17 - 8) + 104))(&v10[v15], v16, v17);
  v18 = v28;
  *v10 = v27;
  *(v10 + 1) = v18;
  *(v10 + 4) = v29;
  v19 = v24;
  sub_24E60169C(v10, v7, &qword_27F248788);
  *a2 = v19;
  v20 = v25;
  *(a2 + 24) = v26;
  *(a2 + 8) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248790);
  sub_24E60169C(v7, a2 + *(v21 + 48), &qword_27F248788);

  sub_24E601704(v10, &qword_27F248788);
  sub_24E601704(v7, &qword_27F248788);
}

uint64_t sub_24F5958D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
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

    return (v10 + 1);
  }
}

uint64_t sub_24F5959B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24F595A98()
{
  sub_24EF36C6C();
  if (v0 <= 0x3F)
  {
    sub_24F595B1C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F595B1C()
{
  if (!qword_27F2487B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214490);
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2487B0);
    }
  }
}

uint64_t sub_24F595B9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = type metadata accessor for RibbonView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2487B8);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - v8;
  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0x4020000000000000;
  v9[16] = 0;
  v23[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2487C0) + 44);
  v10 = (v2 + *(v4 + 28));
  v12 = *v10;
  v11 = v10[1];
  v25 = v12;
  v26 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2487C8);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24F59A100(v2, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RibbonView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_24F598CA4(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2487D0);
  sub_24E602068(&qword_27F2487D8, &qword_27F214490);
  sub_24E602068(&qword_27F2487E0, &qword_27F2487D0);
  sub_24F927228();
  v15 = sub_24F925A18();
  KeyPath = swift_getKeyPath();
  v17 = &v9[*(v7 + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  sub_24F598D90();
  v18 = v24;
  sub_24F9268B8();
  sub_24E601704(v9, &qword_27F2487B8);
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248800) + 36)) = 0;
  v19 = v18;
  v20 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248808);
  v22 = v19 + *(result + 36);
  *v22 = v20;
  *(v22 + 8) = 1;
  *(v22 + 16) = 0;
  return result;
}

uint64_t sub_24F595EF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a3;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v103);
  v104 = &v102 - v5;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248810);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248818);
  MEMORY[0x28223BE20](v9 - 8);
  v111 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v102 - v12;
  v13 = sub_24F924BE8();
  v120 = *(v13 - 8);
  v121 = v13;
  MEMORY[0x28223BE20](v13);
  v119 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_24F929888();
  v118 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v102 - v18;
  v20 = sub_24F925A38();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248820);
  v113 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = (&v102 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248828);
  v28 = *(v27 - 8);
  v116 = v27;
  v117 = v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v102 - v29;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248830);
  MEMORY[0x28223BE20](v123);
  v107 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v114 = &v102 - v33;
  MEMORY[0x28223BE20](v34);
  v122 = &v102 - v35;
  MEMORY[0x28223BE20](v36);
  v125 = &v102 - v37;
  v38 = *a1;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  v124 = a2;
  sub_24F9237D8();
  countAndFlagsBits = v127._countAndFlagsBits;
  *v26 = v38;
  v26[1] = countAndFlagsBits;
  type metadata accessor for RibbonView.BadgeView(0);
  v127._countAndFlagsBits = 0x4010000000000000;
  (*(v21 + 104))(v23, *MEMORY[0x277CE0A98], v20);
  sub_24E62C088();
  sub_24F9237B8();
  *(v26 + *(v24 + 36)) = 257;
  v127 = 0;
  v128 = 0u;
  memset(v126, 0, sizeof(v126));
  sub_24F9297C8();
  sub_24E601704(v126, &qword_27F2129B0);
  sub_24E601704(&v127, &qword_27F2129B0);
  LOBYTE(v126[0]) = *(v38 + 16);
  v40 = BadgeType.rawValue.getter();
  *(&v128 + 1) = MEMORY[0x277D837D0];
  v127._countAndFlagsBits = v40;
  v127._object = v41;
  sub_24F929868();
  v42 = *(v118 + 8);
  v43 = v16;
  v44 = v115;
  v42(v43, v115);
  sub_24E601704(&v127, &qword_27F2129B0);
  v45 = sub_24F598E9C();
  v46 = v113;
  sub_24F925EE8();
  v42(v19, v44);
  v47 = v26;
  v48 = v114;
  sub_24E601704(v47, &qword_27F248820);
  v49 = v119;
  sub_24F924BB8();
  v127._countAndFlagsBits = v46;
  v127._object = v45;
  swift_getOpaqueTypeConformance2();
  v50 = v116;
  sub_24F9267D8();
  (*(v120 + 8))(v49, v121);
  (*(v117 + 8))(v30, v50);
  v51 = *(v38 + 17);
  if ((v51 - 3) >= 3)
  {
    if (v51 == 2)
    {
      if (qword_27F2117E0 != -1)
      {
        swift_once();
      }

      v52 = &qword_27F39EFD8;
    }

    else
    {
      if (v51 != 13)
      {
        v53 = 0;
        v54 = 0xE000000000000000;
        goto LABEL_13;
      }

      if (qword_27F2117E8 != -1)
      {
        swift_once();
      }

      v52 = &qword_27F39EFE8;
    }

    goto LABEL_12;
  }

  if (qword_27F2117F0 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v52 = &qword_27F39EFF8;
LABEL_12:
    v53 = *v52;
    v54 = v52[1];

LABEL_13:
    v127._countAndFlagsBits = v53;
    v127._object = v54;
    sub_24E600AEC();
    v55 = v122;
    sub_24F923FF8();

    sub_24E601704(v48, &qword_27F248830);
    v56 = sub_24ECD05BC(v38);
    v48 = v57;
    v127._countAndFlagsBits = v56;
    v127._object = v57;
    sub_24F924008();

    sub_24E601704(v55, &qword_27F248830);
    v58 = (v124 + *(type metadata accessor for RibbonView(0) + 20));
    v60 = *v58;
    v59 = v58[1];
    v127._countAndFlagsBits = v60;
    v127._object = v59;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2487C8);
    sub_24F926F38();
    v61 = *&v126[0];
    if (*&v126[0] >> 62)
    {
      v62 = sub_24F92C738();
      if (!v62)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    else
    {
      v62 = *((*&v126[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v62)
      {
        goto LABEL_24;
      }
    }

    v63 = __OFSUB__(v62, 1);
    v64 = v62 - 1;
    if (v63)
    {
      break;
    }

    if ((v61 & 0xC000000000000001) != 0)
    {
      goto LABEL_28;
    }

    if ((v64 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v64 < *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v65 = *(v61 + 8 * v64 + 32);

      goto LABEL_20;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  __break(1u);
LABEL_28:
  v65 = MEMORY[0x253052270](v64, v61);
LABEL_20:

  v66 = MEMORY[0x253052150](v38 + 184, v65 + 184);

  if (v66)
  {
    v67 = 1;
    v68 = v110;
    v69 = v108;
    goto LABEL_26;
  }

LABEL_25:
  v70._object = 0x800000024FA76D30;
  v70._countAndFlagsBits = 0xD00000000000002BLL;
  v71._countAndFlagsBits = 0;
  v71._object = 0xE000000000000000;
  v127 = localizedString(_:comment:)(v70, v71);
  v72 = sub_24F925E18();
  v74 = v73;
  v76 = v75;
  v124 = v38;
  sub_24F9258F8();
  v77 = sub_24F925C98();
  v79 = v78;
  v81 = v80;

  sub_24E600B40(v72, v74, v76 & 1);

  LODWORD(v72) = sub_24F9251C8();
  v82 = *(v103 + 36);
  v83 = *MEMORY[0x277CE13B8];
  v84 = sub_24F927748();
  v85 = v104;
  (*(*(v84 - 8) + 104))(&v104[v82], v83, v84);
  *v85 = v72;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v86 = sub_24F925C58();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  sub_24E600B40(v77, v79, v81 & 1);

  sub_24E601704(v85, &qword_27F213F10);
  v127._countAndFlagsBits = v86;
  v127._object = v88;
  LOBYTE(v128) = v90 & 1;
  *(&v128 + 1) = v92;
  v93 = v106;
  sub_24F9265E8();
  sub_24E600B40(v86, v88, v90 & 1);

  v94 = v105;
  v68 = v110;
  sub_24F923FE8();
  sub_24E601704(v93, &qword_27F248810);
  v95 = v94;
  v69 = v108;
  sub_24F598F58(v95, v108);
  v67 = 0;
LABEL_26:
  (*(v109 + 56))(v69, v67, 1, v68);
  v96 = v125;
  v97 = v107;
  sub_24F598FC8(v125, v107);
  v98 = v111;
  sub_24E60169C(v69, v111, &qword_27F248818);
  v99 = v112;
  sub_24F598FC8(v97, v112);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248848);
  sub_24E60169C(v98, v99 + *(v100 + 48), &qword_27F248818);

  sub_24E601704(v69, &qword_27F248818);
  sub_24E601704(v96, &qword_27F248830);
  sub_24E601704(v98, &qword_27F248818);
  return sub_24E601704(v97, &qword_27F248830);
}

uint64_t sub_24F596C40@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v2 = sub_24F925508();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = sub_24ECD04A4(*v1);
  type metadata accessor for RibbonView.BadgeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  sub_24F9237D8();
  v6 = v13;
  v25 = 0;
  sub_24F596EEC(v1, &v13);
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v26 = v13;
  v27 = v14;
  v32[2] = v15;
  v32[3] = v16;
  v32[4] = v17;
  v32[5] = v18;
  v32[0] = v13;
  v32[1] = v14;
  sub_24E60169C(&v26, &v11, &qword_27F248870);
  sub_24E601704(v32, &qword_27F248870);
  *&v24[39] = v28;
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v7 = v25;
  v8 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  sub_24F927618();
  sub_24F9238C8();
  *(&v12[3] + 1) = *&v24[48];
  *(&v12[4] + 1) = *&v24[64];
  *(&v12[5] + 1) = *&v24[80];
  *(v12 + 1) = *v24;
  *(&v12[1] + 1) = *&v24[16];
  *&v11 = v10[0];
  *(&v11 + 1) = v6;
  LOBYTE(v12[0]) = v7;
  *(&v12[2] + 1) = *&v24[32];
  *&v12[6] = *&v24[95];
  *(&v12[6] + 1) = v8;
  sub_24F9254E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248878);
  sub_24F59941C();
  sub_24F926678();
  (*(v3 + 8))(v5, v2);
  v21 = v12[7];
  v22 = v12[8];
  v23 = v12[9];
  v17 = v12[3];
  v18 = v12[4];
  v19 = v12[5];
  v20 = v12[6];
  v13 = v11;
  v14 = v12[0];
  v15 = v12[1];
  v16 = v12[2];
  return sub_24E601704(&v13, &qword_27F248878);
}

uint64_t sub_24F596EEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 120);

  v6 = sub_24ECD02FC(v4);
  v8 = v7;
  v9 = *(v4 + 16);
  v11 = v9 == 1 || v9 == 11;
  v12 = sub_24ECD03D8(v4);
  v13 = a1[1];
  v14 = *(v4 + 136);
  v16 = v15 & 1;
  v17 = *(v4 + 24);
  v18 = *(v4 + 32);
  v19 = *(v4 + 128);
  *&v24 = v5;
  *(&v24 + 1) = v6;
  *&v25 = v8;
  BYTE8(v25) = v11;
  *v26 = v12;
  v26[8] = v15 & 1;
  *&v26[16] = v13;
  v26[24] = v14;
  *&v29[9] = *&v26[9];
  v28 = v25;
  *v29 = *v26;
  v27 = v24;
  v20 = v24;
  v21 = v25;
  v22 = *&v29[16];
  *(a2 + 32) = *v26;
  *(a2 + 48) = v22;
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 64) = v17;
  *(a2 + 72) = v18;
  *(a2 + 80) = v19;
  *(a2 + 88) = v13;

  sub_24F59958C(&v24, v30);
  v30[0] = v5;
  v30[1] = v6;
  v30[2] = v8;
  v31 = v11;
  v32 = v12;
  v33 = v16;
  v34 = v13;
  v35 = v14;
  return sub_24F5995C4(v30);
}

uint64_t sub_24F597024@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F929888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488A8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v70 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488B0);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  if (*v1)
  {
    v15 = *(v1 + 48);
    v16 = *(v1 + 56);
    *&v83 = *v1;
    *(&v83 + 1) = v15;
    v84 = v16;
    v85 = 0;
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488E8);
    sub_24F59987C();
    sub_24F5998D0();
    sub_24F924E28();
    v17 = v89;
    v18 = BYTE2(v89);
    v19 = BYTE3(v89);
    v20 = v88;
    *v14 = v87;
    *(v14 + 1) = v20;
    v14[34] = v18;
    *(v14 + 16) = v17;
    v14[35] = v19;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488C8);
    sub_24F5997F0();
    v21 = sub_24F59979C();
    *&v87 = &type metadata for StarRatingView;
    *(&v87 + 1) = v21;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();

LABEL_3:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488B8);
    return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
  }

  v24 = *(v1 + 16);
  if (v24)
  {
    v82 = v12;
    v80 = v7;
    v81 = a1;
    v25 = *(v1 + 24);
    if (*(v1 + 24))
    {
      *&v83 = *(v1 + 8);
      *(&v83 + 1) = v24;
      v84 = v25 == 1;
      LOWORD(v85) = 0;
      BYTE2(v85) = 1;
    }

    else
    {
      *&v87 = *(v1 + 8);
      *(&v87 + 1) = v24;
      sub_24E600AEC();

      v28 = sub_24F925E18();
      v30 = v29;
      v32 = v31;
      sub_24F925A18();
      sub_24F9258E8();

      v33 = sub_24F925C98();
      v35 = v34;
      v37 = v36;

      sub_24E600B40(v28, v30, v32 & 1);

      *&v87 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
      v38 = sub_24F925C58();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      sub_24E600B40(v33, v35, v37 & 1);

      *&v83 = v38;
      *(&v83 + 1) = v40;
      *&v84 = v42 & 1;
      *(&v84 + 1) = v44;
      LOWORD(v85) = 257;
      BYTE2(v85) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A920);
    sub_24F16D158();
    sub_24F59995C();
    sub_24F924E28();
    v45 = v89;
    v46 = BYTE2(v89);
    v83 = v87;
    v84 = v88;
    LOWORD(v85) = v89;
    v74 = v89;
    BYTE2(v85) = BYTE2(v89) != 0;
    HIBYTE(v85) = 1;
    v47 = *(&v87 + 1);
    v49 = v87;
    v78 = v49 >> 64;
    v48 = v49;
    v79 = v87;
    v50 = v88;
    v51 = *(&v88 + 1);
    v76 = *(&v88 + 1);
    v77 = v88;
    v75 = BYTE2(v89);
    sub_24F5999B0(v87, *(&v87 + 1), v88, *(&v88 + 1), v89, SBYTE2(v89));
    sub_24F5999B0(v48, v47, v50, v51, v45, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488E8);
    sub_24F59987C();
    sub_24F5998D0();
    sub_24F924E28();
    v52 = v87;
    v53 = v88;
    v54 = BYTE2(v89);
    v55 = v89;
    v56 = v89 | (BYTE2(v89) << 16);
    v73 = v89 | (BYTE2(v89) << 16);
    v57 = BYTE3(v89);
    *v14 = v87;
    v72 = v52;
    *(v14 + 1) = v53;
    v71 = *(&v53 + 1);
    v14[34] = v54;
    *(v14 + 16) = v55;
    v14[35] = v57;
    swift_storeEnumTagMultiPayload();
    sub_24F5999F8(v52, *(&v52 + 1), v53, *(&v53 + 1), v56, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488C8);
    sub_24F5997F0();
    v58 = sub_24F59979C();
    *&v87 = &type metadata for StarRatingView;
    *(&v87 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    v59 = v81;
    sub_24F924E28();
    v60 = v79;
    v61 = v78;
    v62 = v77;
    v63 = v76;
    v64 = v74;
    LOBYTE(v56) = v75;
    sub_24F599A08(v79, v78, v77, v76, v74, v75);
    sub_24F599A50(v72, *(&v52 + 1), v53, v71, v73, v57);
    sub_24F599A08(v60, v61, v62, v63, v64, v56);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488B8);
    return (*(*(v65 - 8) + 56))(v59, 0, 1, v65);
  }

  else
  {
    if ((*(v1 + 40) & 1) == 0)
    {
      v66 = *(v1 + 32);
      v82 = v12;
      sub_24F925A18();
      v67 = v7;
      v68 = sub_24F9258E8();

      *&v87 = v66;
      *(&v87 + 1) = 5;
      LOBYTE(v88) = 0;
      *(&v88 + 1) = 0;
      v89 = v68;
      v83 = 0u;
      v84 = 0u;
      memset(v86, 0, sizeof(v86));
      sub_24F929828();
      sub_24E601704(v86, &qword_27F2129B0);
      sub_24E601704(&v83, &qword_27F2129B0);
      v69 = sub_24F59979C();
      sub_24F925EE8();
      (*(v4 + 8))(v6, v3);

      (*(v8 + 16))(v14, v10, v67);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488C8);
      sub_24F5997F0();
      *&v87 = &type metadata for StarRatingView;
      *(&v87 + 1) = v69;
      swift_getOpaqueTypeConformance2();
      sub_24F924E28();
      (*(v8 + 8))(v10, v67);
      goto LABEL_3;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2488B8);
    v27 = *(*(v26 - 8) + 56);

    return v27(a1, 1, 1, v26);
  }
}

double sub_24F5979C0@<D0>(uint64_t a1@<X8>)
{
  sub_24F599E8C();
  sub_24F599EE0();

  sub_24F924E28();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_24F597A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v39 = a1;
  v5 = sub_24F924258();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F925A38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *(a3 + *(type metadata accessor for RibbonView.InnerText(0) + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  *a3 = v39;
  a3[1] = a2;
  *&v40 = 0x403E000000000000;
  (*(v10 + 104))(v12, *MEMORY[0x277CE0AB0], v9);
  sub_24E62C088();

  sub_24F9237B8();
  v14 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248950) + 36)) = v14;
  v15 = *(v6 + 28);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(&v8[v15], v16, v17);
  __asm { FMOV            V0.2D, #6.0 }

  *v8 = _Q0;
  LODWORD(v16) = sub_24F925198();
  sub_24F923658();
  v23 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248958) + 36);
  v24 = MEMORY[0x277CDFC08];
  sub_24F59A100(v8, v23, MEMORY[0x277CDFC08]);
  v25 = *&v40 * 0.5;
  v26 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248960) + 68);
  sub_24F59A100(v8, v26, v24);
  *(v26 + *(sub_24F924248() + 20)) = v25;
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218BF8) + 36);
  v28 = v41;
  *v27 = v40;
  *(v27 + 16) = v28;
  *(v27 + 32) = v42;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248968);
  *(v26 + *(v29 + 52)) = v16;
  *(v26 + *(v29 + 56)) = 256;
  v30 = sub_24F927618();
  v32 = v31;
  sub_24E6EB974(v8);
  v33 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248970) + 36));
  *v33 = v30;
  v33[1] = v32;
  v34 = sub_24F927618();
  v36 = v35;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248978);
  v38 = (v23 + *(result + 36));
  *v38 = v34;
  v38[1] = v36;
  return result;
}

uint64_t sub_24F597E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a1;
  v6 = sub_24F925A38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v11 = type metadata accessor for RibbonView.InnerText(0);
  *(a3 + *(v11 + 20)) = KeyPath;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  a3[1] = a2;
  v34 = a2;
  v39 = 0x403E000000000000;
  v36 = *MEMORY[0x277CE0AB0];
  v35 = *(v7 + 104);
  v35(v9);
  sub_24E62C088();
  swift_bridgeObjectRetain_n();
  sub_24F9237B8();
  v12 = sub_24F926C98();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248950);
  *(a3 + *(v13 + 36)) = v12;
  v14 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248980) + 36);
  v15 = *(sub_24F924258() + 20);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #6.0 }

  *v14 = _Q0;
  LODWORD(v16) = sub_24F9251C8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248988);
  *&v14[*(v23 + 52)] = v16;
  *&v14[*(v23 + 56)] = 256;
  v24 = sub_24F927618();
  v26 = v25;
  v27 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248990) + 36)];
  *v27 = v24;
  v27[1] = v26;
  v28 = swift_getKeyPath();
  v29 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248998) + 36));
  *(v29 + *(v11 + 20)) = v28;
  swift_storeEnumTagMultiPayload();
  v30 = v34;
  *v29 = v38;
  v29[1] = v30;
  v39 = 0x403E000000000000;
  (v35)(v9, v36, v6);
  sub_24F9237B8();
  *(v29 + *(v13 + 36)) = sub_24F926C88();
  v31 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  LOBYTE(v28) = sub_24F925808();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2489A0);
  v33 = v29 + *(result + 36);
  *v33 = v31;
  v33[8] = v28;
  return result;
}

uint64_t sub_24F598170@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RibbonView.InnerText(0);
  sub_24E60169C(v1 + *(v10 + 20), v9, &qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923E98();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_24F598380@<D0>(uint64_t a1@<X8>)
{
  v40 = sub_24F923E98();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v1;
  v6 = *v1;
  v7 = v1[1];
  *&v49 = v6;
  *(&v49 + 1) = v7;
  sub_24E600AEC();

  v8 = sub_24F925E18();
  v10 = v9;
  v12 = v11;
  sub_24F925A18();
  sub_24F9258E8();

  v13 = sub_24F925C98();
  v43 = v14;
  v44 = v13;
  v16 = v15;
  v42 = v17;

  sub_24E600B40(v8, v10, v12 & 1);

  LOBYTE(v10) = sub_24F925868();
  sub_24F923318();
  v41 = v18;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v46 = v16 & 1;
  v45 = 0;
  v25 = sub_24F9257F8();
  sub_24F598170(v5);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v3 + 8))(v5, v40);
  sub_24F923318();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v47 = 0;
  type metadata accessor for RibbonView.InnerText(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9242E8();
  *&v48[55] = v52;
  *&v48[71] = v53;
  *&v48[87] = v54;
  *&v48[103] = v55;
  *&v48[7] = v49;
  *&v48[23] = v50;
  *&v48[39] = v51;
  v34 = v43;
  *a1 = v44;
  *(a1 + 8) = v34;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v42;
  *(a1 + 32) = 257;
  *(a1 + 40) = v10;
  *(a1 + 48) = v41;
  *(a1 + 56) = v20;
  *(a1 + 64) = v22;
  *(a1 + 72) = v24;
  *(a1 + 80) = 0;
  *(a1 + 88) = v25;
  *(a1 + 96) = v27;
  *(a1 + 104) = v29;
  *(a1 + 112) = v31;
  *(a1 + 120) = v33;
  *(a1 + 128) = 0;
  v35 = *&v48[80];
  *(a1 + 193) = *&v48[64];
  *(a1 + 209) = v35;
  *(a1 + 225) = *&v48[96];
  *(a1 + 240) = *&v48[111];
  v36 = *&v48[16];
  *(a1 + 129) = *v48;
  *(a1 + 145) = v36;
  result = *&v48[32];
  v38 = *&v48[48];
  *(a1 + 161) = *&v48[32];
  *(a1 + 177) = v38;
  return result;
}

uint64_t sub_24F598720@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1)
  {
    sub_24E600AEC();

    v3 = sub_24F925E18();
    v5 = v4;
    v7 = v6;
    sub_24F925A18();
    sub_24F9258E8();

    v8 = sub_24F925C98();
    v10 = v9;
    v12 = v11;
    v14 = v13;

    sub_24E600B40(v3, v5, v7 & 1);

    result = swift_getKeyPath();
    v16 = v12 & 1;
    v17 = 1;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v16 = 0;
    v14 = 0;
    result = 0;
    v17 = 0;
  }

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v16;
  *(a2 + 24) = v14;
  *(a2 + 32) = result;
  *(a2 + 40) = v17;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_24F598850@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *v1 != 0;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t sub_24F59886C@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char a2@<W1>, double (**a3)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v38 = a1;
  v40 = a3;
  v4 = sub_24F926E68();
  v5 = *(v4 - 8);
  v37 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v34 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v35 = sub_24F9289E8();
  v12 = *(v35 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v35);
  v41 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v18 = *(v5 + 104);
  v19 = MEMORY[0x277CE1020];
  if ((a2 & 1) == 0)
  {
    v19 = MEMORY[0x277CE1010];
  }

  v20 = *v19;
  v18(v11, v20, v4, v15);
  sub_24E84AFA8();
  v21 = v4;
  (*(v5 + 8))(v11, v4);
  v22 = v36;
  v23 = v20;
  v24 = v21;
  v34 = v21;
  (v18)(v36, v23, v21);
  v38 = *(v12 + 32);
  v25 = v35;
  v38(v41, v17, v35);
  v26 = *(v5 + 32);
  v27 = v39;
  v26(v39, v22, v24);
  v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v29 = (v13 + *(v5 + 80) + v28) & ~*(v5 + 80);
  v30 = v29 + v37;
  v31 = swift_allocObject();
  v38((v31 + v28), v41, v25);
  result = (v26)(v31 + v29, v27, v34);
  *(v31 + v30) = 0;
  v33 = v40;
  *v40 = sub_24EB98724;
  v33[1] = v31;
  v33[2] = 0;
  *(v33 + 12) = 1;
  return result;
}

uint64_t sub_24F598BA4()
{
  v1 = *(type metadata accessor for RibbonView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24F598CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RibbonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F598D08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RibbonView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F595EF8(a1, v6, a2);
}

unint64_t sub_24F598D90()
{
  result = qword_27F2487E8;
  if (!qword_27F2487E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2487B8);
    sub_24E602068(&qword_27F2487F0, &qword_27F2487F8);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2487E8);
  }

  return result;
}

unint64_t sub_24F598E9C()
{
  result = qword_27F248838;
  if (!qword_27F248838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248820);
    sub_24F59A640(&qword_27F248840, type metadata accessor for RibbonView.BadgeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248838);
  }

  return result;
}

uint64_t sub_24F598F58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F598FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F59904C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24F59911C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F5991CC()
{
  sub_24EF36C6C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_24F599254()
{
  result = qword_27F248860;
  if (!qword_27F248860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248808);
    sub_24F59930C();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248860);
  }

  return result;
}

unint64_t sub_24F59930C()
{
  result = qword_27F248868;
  if (!qword_27F248868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2487B8);
    sub_24F598D90();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248868);
  }

  return result;
}

unint64_t sub_24F59941C()
{
  result = qword_27F248880;
  if (!qword_27F248880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248878);
    sub_24F5994A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248880);
  }

  return result;
}

unint64_t sub_24F5994A8()
{
  result = qword_27F248888;
  if (!qword_27F248888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248890);
    sub_24E602068(&qword_27F248898, &qword_27F2488A0);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248888);
  }

  return result;
}

uint64_t sub_24F599614(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_24F599670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24F5996E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248878);
  sub_24F59941C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F59979C()
{
  result = qword_27F2488C0;
  if (!qword_27F2488C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2488C0);
  }

  return result;
}

unint64_t sub_24F5997F0()
{
  result = qword_27F2488D0;
  if (!qword_27F2488D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2488C8);
    sub_24F59987C();
    sub_24F5998D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2488D0);
  }

  return result;
}

unint64_t sub_24F59987C()
{
  result = qword_27F2488D8;
  if (!qword_27F2488D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2488D8);
  }

  return result;
}

unint64_t sub_24F5998D0()
{
  result = qword_27F2488E0;
  if (!qword_27F2488E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2488E8);
    sub_24F16D158();
    sub_24F59995C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2488E0);
  }

  return result;
}

unint64_t sub_24F59995C()
{
  result = qword_27F2488F0;
  if (!qword_27F2488F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2488F0);
  }

  return result;
}

uint64_t sub_24F5999B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_24E5FD138(a1, a2, a3 & 1);
  }
}

uint64_t sub_24F5999F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_24F5999B0(a1, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  else
  {
  }
}

uint64_t sub_24F599A08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_24E600B40(a1, a2, a3 & 1);
  }
}

uint64_t sub_24F599A50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_24F599A08(a1, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  else
  {
  }
}

uint64_t sub_24F599A70(uint64_t *a1, int a2)
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

uint64_t sub_24F599AB8(uint64_t result, int a2, int a3)
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

uint64_t sub_24F599BD4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_24F599C50()
{
  result = qword_27F248918;
  if (!qword_27F248918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2488B8);
    sub_24F5997F0();
    sub_24F59979C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248918);
  }

  return result;
}

uint64_t sub_24F599D40()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F926E68();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

unint64_t sub_24F599E8C()
{
  result = qword_27F248920;
  if (!qword_27F248920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248920);
  }

  return result;
}

unint64_t sub_24F599EE0()
{
  result = qword_27F248928;
  if (!qword_27F248928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248928);
  }

  return result;
}

unint64_t sub_24F599F58()
{
  result = qword_27F248930;
  if (!qword_27F248930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248938);
    sub_24E602068(&qword_27F22A6B0, &qword_27F22A6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248930);
  }

  return result;
}

unint64_t sub_24F59A014()
{
  result = qword_27F248940;
  if (!qword_27F248940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248948);
    sub_24F599E8C();
    sub_24F599EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248940);
  }

  return result;
}

uint64_t sub_24F59A100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F59A17C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F59A2CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F59A408()
{
  sub_24E6CAF48();
  if (v0 <= 0x3F)
  {
    sub_24EF36C6C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F59A4A0()
{
  result = qword_27F2489B8;
  if (!qword_27F2489B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248958);
    sub_24F59A558();
    sub_24E602068(&qword_27F2489D0, &qword_27F248978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2489B8);
  }

  return result;
}

unint64_t sub_24F59A558()
{
  result = qword_27F2489C0;
  if (!qword_27F2489C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248950);
    sub_24F59A640(&qword_27F2489C8, type metadata accessor for RibbonView.InnerText);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2489C0);
  }

  return result;
}

uint64_t sub_24F59A640(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F59A68C()
{
  result = qword_27F2489D8;
  if (!qword_27F2489D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248998);
    sub_24F59A744();
    sub_24E602068(&qword_27F2489F0, &qword_27F2489F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2489D8);
  }

  return result;
}

unint64_t sub_24F59A744()
{
  result = qword_27F2489E0;
  if (!qword_27F2489E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248980);
    sub_24F59A558();
    sub_24E602068(&qword_27F2489E8, &qword_27F248990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2489E0);
  }

  return result;
}

unint64_t sub_24F59A81C()
{
  result = qword_27F248A00;
  if (!qword_27F248A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248A08);
    sub_24F59A8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248A00);
  }

  return result;
}

unint64_t sub_24F59A8A8()
{
  result = qword_27F248A10;
  if (!qword_27F248A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248A18);
    sub_24F59A934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248A10);
  }

  return result;
}

unint64_t sub_24F59A934()
{
  result = qword_27F248A20;
  if (!qword_27F248A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F248A28);
    sub_24F16D158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F248A20);
  }

  return result;
}

uint64_t sub_24F59AA08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v318 = a2;
  v325 = a1;
  v324 = a4;
  updated = type metadata accessor for UpdateFriendRequestActionImplementation();
  v323 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v321 = &v286 - v5;
  v316 = type metadata accessor for AlertActionImplementation();
  v317 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v315 = &v286 - v6;
  v313 = type metadata accessor for AddFriendActionImplementation();
  v314 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v312 = &v286 - v7;
  v310 = sub_24F921B28();
  v311 = *(v310 - 8);
  MEMORY[0x28223BE20](v310);
  v309 = &v286 - v8;
  v307 = sub_24F921B88();
  v308 = *(v307 - 8);
  MEMORY[0x28223BE20](v307);
  v306 = &v286 - v9;
  v10 = type metadata accessor for FlowAction();
  v11 = sub_24F59DEBC(&qword_27F219B98);
  v295 = v11;
  v326 = sub_24F59DEBC(&qword_27F219BA0);
  v392[0] = v10;
  v392[1] = a3;
  v392[2] = v11;
  v392[3] = v326;
  v304 = sub_24F921AC8();
  v305 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v303 = &v286 - v12;
  v301 = sub_24F921C38();
  v302 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v300 = &v286 - v13;
  v298 = sub_24F92A048();
  v299 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v297 = &v286 - v14;
  v294 = sub_24F92A228();
  v296 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v293 = &v286 - v15;
  v291 = sub_24F92A158();
  v292 = *(v291 - 8);
  MEMORY[0x28223BE20](v291);
  v290 = &v286 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248A30);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v286 - v18;
  v288 = sub_24F921AE8();
  v289 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v21 = &v286 - v20;
  v22 = sub_24F9292A8();
  v319 = *(v22 - 8);
  v320 = v22 - 8;
  v328 = v319;
  MEMORY[0x28223BE20](v22);
  v336 = &v286 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v335 = &v286 - v25;
  MEMORY[0x28223BE20](v26);
  v334 = &v286 - v27;
  MEMORY[0x28223BE20](v28);
  v333 = &v286 - v29;
  MEMORY[0x28223BE20](v30);
  v377 = &v286 - v31;
  MEMORY[0x28223BE20](v32);
  v327 = &v286 - v33;
  MEMORY[0x28223BE20](v34);
  v361 = &v286 - v35;
  MEMORY[0x28223BE20](v36);
  v391 = &v286 - v37;
  MEMORY[0x28223BE20](v38);
  v358 = &v286 - v39;
  MEMORY[0x28223BE20](v40);
  v390 = &v286 - v41;
  MEMORY[0x28223BE20](v42);
  v355 = &v286 - v43;
  MEMORY[0x28223BE20](v44);
  v389 = &v286 - v45;
  MEMORY[0x28223BE20](v46);
  v352 = &v286 - v47;
  MEMORY[0x28223BE20](v48);
  v388 = &v286 - v49;
  MEMORY[0x28223BE20](v50);
  v349 = &v286 - v51;
  MEMORY[0x28223BE20](v52);
  v387 = &v286 - v53;
  MEMORY[0x28223BE20](v54);
  v345 = &v286 - v55;
  MEMORY[0x28223BE20](v56);
  v386 = &v286 - v57;
  MEMORY[0x28223BE20](v58);
  v343 = &v286 - v59;
  MEMORY[0x28223BE20](v60);
  v385 = &v286 - v61;
  MEMORY[0x28223BE20](v62);
  v341 = &v286 - v63;
  MEMORY[0x28223BE20](v64);
  v384 = &v286 - v65;
  MEMORY[0x28223BE20](v66);
  v339 = &v286 - v67;
  MEMORY[0x28223BE20](v68);
  v383 = &v286 - v69;
  MEMORY[0x28223BE20](v70);
  v337 = &v286 - v71;
  MEMORY[0x28223BE20](v72);
  v382 = &v286 - v73;
  MEMORY[0x28223BE20](v74);
  v338 = &v286 - v75;
  MEMORY[0x28223BE20](v76);
  v381 = &v286 - v77;
  MEMORY[0x28223BE20](v78);
  v340 = &v286 - v79;
  MEMORY[0x28223BE20](v80);
  v380 = &v286 - v81;
  MEMORY[0x28223BE20](v82);
  v342 = &v286 - v83;
  MEMORY[0x28223BE20](v84);
  v379 = &v286 - v85;
  MEMORY[0x28223BE20](v86);
  v344 = &v286 - v87;
  MEMORY[0x28223BE20](v88);
  v378 = &v286 - v89;
  MEMORY[0x28223BE20](v90);
  v346 = &v286 - v91;
  MEMORY[0x28223BE20](v92);
  v347 = &v286 - v93;
  MEMORY[0x28223BE20](v94);
  v348 = &v286 - v95;
  MEMORY[0x28223BE20](v96);
  v350 = &v286 - v97;
  MEMORY[0x28223BE20](v98);
  v351 = &v286 - v99;
  MEMORY[0x28223BE20](v100);
  v353 = &v286 - v101;
  MEMORY[0x28223BE20](v102);
  v354 = &v286 - v103;
  MEMORY[0x28223BE20](v104);
  v356 = &v286 - v105;
  MEMORY[0x28223BE20](v106);
  v357 = &v286 - v107;
  MEMORY[0x28223BE20](v108);
  v359 = &v286 - v109;
  MEMORY[0x28223BE20](v110);
  v360 = &v286 - v111;
  MEMORY[0x28223BE20](v112);
  v362 = &v286 - v113;
  MEMORY[0x28223BE20](v114);
  v363 = &v286 - v115;
  MEMORY[0x28223BE20](v116);
  v364 = &v286 - v117;
  MEMORY[0x28223BE20](v118);
  v365 = &v286 - v119;
  MEMORY[0x28223BE20](v120);
  v366 = &v286 - v121;
  MEMORY[0x28223BE20](v122);
  v367 = &v286 - v123;
  MEMORY[0x28223BE20](v124);
  v368 = &v286 - v125;
  MEMORY[0x28223BE20](v126);
  v369 = &v286 - v127;
  MEMORY[0x28223BE20](v128);
  v370 = &v286 - v129;
  MEMORY[0x28223BE20](v130);
  v371 = &v286 - v131;
  MEMORY[0x28223BE20](v132);
  v372 = &v286 - v133;
  MEMORY[0x28223BE20](v134);
  v373 = &v286 - v135;
  MEMORY[0x28223BE20](v136);
  v374 = &v286 - v137;
  MEMORY[0x28223BE20](v138);
  v375 = &v286 - v139;
  MEMORY[0x28223BE20](v140);
  v376 = &v286 - v141;
  MEMORY[0x28223BE20](v142);
  v329 = &v286 - v143;
  MEMORY[0x28223BE20](v144);
  v330 = &v286 - v145;
  MEMORY[0x28223BE20](v146);
  v331 = &v286 - v147;
  MEMORY[0x28223BE20](v148);
  v332 = &v286 - v149;
  v287 = v19;
  sub_24F59DF00(v325, v19);
  v150 = v295;
  sub_24F921AD8();
  v151 = v288;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v289 + 8))(v21, v151);
  sub_24F59DF70(v392);
  v152 = v290;
  sub_24F92A148();
  v153 = v291;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v292 + 8))(v152, v153);
  v154 = v293;
  sub_24F92A218();
  v155 = v294;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v296 + 8))(v154, v155);
  v156 = v297;
  sub_24F92A038();
  v157 = v298;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v299 + 8))(v156, v157);
  v158 = v300;
  sub_24F921C28();
  v159 = v301;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v302 + 8))(v158, v159);
  v160 = v325;
  v161 = v287;
  sub_24F59DF00(v325, v287);
  v162 = v303;
  v163 = v10;
  v164 = v326;
  sub_24F921AB8();
  v165 = v304;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v305 + 8))(v162, v165);
  sub_24F59DF00(v160, v161);
  v166 = v306;
  sub_24F921B78();
  v167 = v307;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v308 + 8))(v166, v167);
  sub_24F59DF00(v160, v161);
  v168 = v309;
  sub_24F921B18();
  v169 = v310;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v311 + 8))(v168, v169);
  CGSizeMake(a3, v170, v171);
  type metadata accessor for AcceptChallengeActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  v172 = v312;
  sub_24F71ED20();
  v173 = v313;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v314 + 8))(v172, v173);
  sub_24F59DF00(v160, v161);
  v174 = v315;
  sub_24ED09178(v161, a3, v163, v150, v164);
  v175 = v316;
  swift_getWitnessTable();
  sub_24F929268();
  (*(v317 + 8))(v174, v175);
  ArcadeLaunchAttributionActionImplementation.init()(a3);
  type metadata accessor for ArcadeLaunchAttributionActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  ArcadeSubscriptionStateActionImplementation.init()(a3);
  type metadata accessor for ArcadeSubscriptionStateActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v176, v177);
  type metadata accessor for CallActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v178, v179);
  type metadata accessor for CallInviteActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v180, v181);
  type metadata accessor for CancelFriendInvitationActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CancelPreorderActionImplementation.init()(a3);
  type metadata accessor for CancelPreorderActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v182, v183);
  type metadata accessor for ClearCachesDebugActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v184, v185);
  type metadata accessor for CreateChallengeRematchActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v186, v187);
  type metadata accessor for InviteChallengeViaMessagesActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v188, v189);
  type metadata accessor for DismissDashboardActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v190, v191);
  type metadata accessor for DraftPlayTogetherActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  GSKTabChangeActionImplementation.init()(a3);
  type metadata accessor for GSKTabChangeActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v192, v193);
  type metadata accessor for GSKWrappedActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v194, v195);
  type metadata accessor for InvitePlayersToChallengeActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v196, v197);
  type metadata accessor for InvitePlayersToMultiplayerActivityActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v198, v199);
  type metadata accessor for LaunchChallengeDefinitionActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v200, v201);
  type metadata accessor for LaunchGameActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v202, v203);
  type metadata accessor for LaunchGameActivityActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v204, v205);
  type metadata accessor for LaunchGameClipActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v206, v207);
  type metadata accessor for LaunchDashboardActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v208, v209);
  type metadata accessor for LeaveChallengeActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v210, v211);
  type metadata accessor for OpenURLActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v212, v213);
  type metadata accessor for PresentPromptActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v214, v215);
  type metadata accessor for ProgressPerformActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  RateLimitedActionImplementation.init()(a3);
  type metadata accessor for RateLimitedActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v216, v217);
  type metadata accessor for RefreshAppStateUpdateRegistryActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v218, v219);
  type metadata accessor for RefreshChallengeDetailActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v220, v221);
  type metadata accessor for RefreshFeedsActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v222, v223);
  type metadata accessor for RematchChallengeActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v224, v225);
  type metadata accessor for RemoveFriendActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v226, v227);
  type metadata accessor for RemoveFriendSuggestionActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v228, v229);
  type metadata accessor for ReportFriendRequestDidSendActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v230, v231);
  type metadata accessor for ReportPromptDidPresentActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v232, v233);
  type metadata accessor for ResetRequestReviewPropertiesIfNeededActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v234, v235);
  type metadata accessor for ResetDebugSettingsActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v236, v237);
  type metadata accessor for ResetTipDatastoreDebugSettingsActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  v238 = v318;
  v239 = v318;
  sub_24F14CED0(v238);
  v240 = type metadata accessor for RequestReviewActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  (*(*(v240 - 8) + 8))(v392, v240);
  CGSizeMake(a3, v241, v242);
  type metadata accessor for SaveAvatarActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v243, v244);
  type metadata accessor for SaveRecentSearchActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v245, v246);
  type metadata accessor for SetContactsIntegrationConsentActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v247, v248);
  type metadata accessor for SetNicknameActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v249, v250);
  type metadata accessor for SetProfilePrivacyActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v251, v252);
  type metadata accessor for UpdateActivityDefinitionActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v253, v254);
  type metadata accessor for UpdateActivityInstanceActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v255, v256);
  type metadata accessor for UpdateChallengeDefinitionActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v257, v258);
  type metadata accessor for UpdateChallengeLeaderboardActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v259, v260);
  type metadata accessor for UpdateChallengePlayersToInviteActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  v261 = v321;
  sub_24F63BE24();
  v262 = updated;
  swift_getWitnessTable();
  v263 = v327;
  sub_24F929268();
  (*(v323 + 8))(v261, v262);
  CGSizeMake(a3, v264, v265);
  type metadata accessor for UpdateFriendRequestsPrivacyStateActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v266, v267);
  type metadata accessor for UpdateGamedActivityInstanceActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v268, v269);
  type metadata accessor for UpdateNotificationTopicsActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v270, v271);
  type metadata accessor for UpdatePlayTogetherGameActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  CGSizeMake(a3, v272, v273);
  type metadata accessor for WaitActionImplementation();
  swift_getWitnessTable();
  sub_24F929268();
  sub_24F92CD98();
  v274 = *(v319 + 72);
  v275 = v328;
  swift_allocObject();
  v326 = sub_24F92B5C8();
  v277 = v276;
  v278 = *(v275 + 16);
  v278(v276, v332, v22);
  v278(v277 + v274, v331, v22);
  v278(v277 + 2 * v274, v330, v22);
  v278(v277 + 3 * v274, v329, v22);
  v278(v277 + 4 * v274, v376, v22);
  v278(v277 + 5 * v274, v375, v22);
  v278(v277 + 6 * v274, v374, v22);
  v278(v277 + 7 * v274, v373, v22);
  v278(v277 + 8 * v274, v372, v22);
  v278(v277 + 9 * v274, v371, v22);
  v278(v277 + 10 * v274, v370, v22);
  v278(v277 + 11 * v274, v369, v22);
  v278(v277 + 12 * v274, v368, v22);
  v278(v277 + 13 * v274, v367, v22);
  v278(v277 + 14 * v274, v366, v22);
  v278(v277 + 15 * v274, v365, v22);
  v278(v277 + 16 * v274, v364, v22);
  v278(v277 + 17 * v274, v363, v22);
  v278(v277 + 18 * v274, v362, v22);
  v278(v277 + 19 * v274, v360, v22);
  v278(v277 + 20 * v274, v359, v22);
  v278(v277 + 21 * v274, v357, v22);
  v278(v277 + 22 * v274, v356, v22);
  v278(v277 + 23 * v274, v354, v22);
  v278(v277 + 24 * v274, v353, v22);
  v278(v277 + 25 * v274, v351, v22);
  v278(v277 + 26 * v274, v350, v22);
  v278(v277 + 27 * v274, v348, v22);
  v278(v277 + 28 * v274, v347, v22);
  v278(v277 + 29 * v274, v346, v22);
  v278(v277 + 30 * v274, v378, v22);
  v278(v277 + 31 * v274, v344, v22);
  v278(v277 + 32 * v274, v379, v22);
  v278(v277 + 33 * v274, v342, v22);
  v278(v277 + 34 * v274, v380, v22);
  v278(v277 + 35 * v274, v340, v22);
  v278(v277 + 36 * v274, v381, v22);
  v278(v277 + 37 * v274, v338, v22);
  v278(v277 + 38 * v274, v382, v22);
  v278(v277 + 39 * v274, v337, v22);
  v278(v277 + 40 * v274, v383, v22);
  v278(v277 + 41 * v274, v339, v22);
  v278(v277 + 42 * v274, v384, v22);
  v278(v277 + 43 * v274, v341, v22);
  v278(v277 + 44 * v274, v385, v22);
  v278(v277 + 45 * v274, v343, v22);
  v278(v277 + 46 * v274, v386, v22);
  v278(v277 + 47 * v274, v345, v22);
  v278(v277 + 48 * v274, v387, v22);
  v278(v277 + 49 * v274, v349, v22);
  v278(v277 + 50 * v274, v388, v22);
  v278(v277 + 51 * v274, v352, v22);
  v278(v277 + 52 * v274, v389, v22);
  v278(v277 + 53 * v274, v355, v22);
  v278(v277 + 54 * v274, v390, v22);
  v278(v277 + 55 * v274, v358, v22);
  v278(v277 + 56 * v274, v391, v22);
  v278(v277 + 57 * v274, v361, v22);
  v278(v277 + 58 * v274, v263, v22);
  v278(v277 + 59 * v274, v377, v22);
  v279 = v333;
  v278(v277 + 60 * v274, v333, v22);
  v280 = v334;
  v278(v277 + 61 * v274, v334, v22);
  v281 = v335;
  v278(v277 + 62 * v274, v335, v22);
  v282 = v277 + 63 * v274;
  v283 = v336;
  v278(v282, v336, v22);
  sub_24EEB6DF8();
  sub_24F929258();

  v284 = *(v328 + 8);
  v284(v283, v22);
  v284(v281, v22);
  v284(v280, v22);
  v284(v279, v22);
  v284(v377, v22);
  v284(v327, v22);
  v284(v361, v22);
  v284(v391, v22);
  v284(v358, v22);
  v284(v390, v22);
  v284(v355, v22);
  v284(v389, v22);
  v284(v352, v22);
  v284(v388, v22);
  v284(v349, v22);
  v284(v387, v22);
  v284(v345, v22);
  v284(v386, v22);
  v284(v343, v22);
  v284(v385, v22);
  v284(v341, v22);
  v284(v384, v22);
  v284(v339, v22);
  v284(v383, v22);
  v284(v337, v22);
  v284(v382, v22);
  v284(v338, v22);
  v284(v381, v22);
  v284(v340, v22);
  v284(v380, v22);
  v284(v342, v22);
  v284(v379, v22);
  v284(v344, v22);
  v284(v378, v22);
  v284(v346, v22);
  v284(v347, v22);
  v284(v348, v22);
  v284(v350, v22);
  v284(v351, v22);
  v284(v353, v22);
  v284(v354, v22);
  v284(v356, v22);
  v284(v357, v22);
  v284(v359, v22);
  v284(v360, v22);
  v284(v362, v22);
  v284(v363, v22);
  v284(v364, v22);
  v284(v365, v22);
  v284(v366, v22);
  v284(v367, v22);
  v284(v368, v22);
  v284(v369, v22);
  v284(v370, v22);
  v284(v371, v22);
  v284(v372, v22);
  v284(v373, v22);
  v284(v374, v22);
  v284(v375, v22);
  v284(v376, v22);
  v284(v329, v22);
  v284(v330, v22);
  v284(v331, v22);
  return (v284)(v332, v22);
}

uint64_t sub_24F59DEBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F59DF00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F59DF70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F929638();
  v3 = MEMORY[0x277D21FB0];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_24F929628();
}

uint64_t sub_24F59DFC8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F59E098(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F59E168()
{
  sub_24F59E214();
  if (v0 <= 0x3F)
  {
    sub_24F5A39D4(319, &qword_27F215E10, sub_24E66ED98);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F59E214()
{
  if (!qword_27F248A48)
  {
    type metadata accessor for LockupViewModel();
    sub_24F5A2B1C(&qword_27F2282E0, type metadata accessor for LockupViewModel);
    v0 = sub_24F923C48();
    if (!v1)
    {
      atomic_store(v0, &qword_27F248A48);
    }
  }
}

uint64_t sub_24F59E2C4()
{
  v1 = type metadata accessor for LockupContentView.VerticalContent(0);
  MEMORY[0x28223BE20](v1);
  v3 = (v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248A50);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v7 = type metadata accessor for LockupContentView.HorizontalContent(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 8);
  v11 = sub_24F59E65C();
  if (*(v10 + 25))
  {
    *v3 = v10;
    v3[1] = v11;
    *(v3 + 2) = v12;
    v13 = *(v1 + 24);
    *(v3 + v13) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v18[1] = 0x4055400000000000;
    sub_24E66ED98();

    sub_24F9237C8();
    v14 = type metadata accessor for LockupContentView.VerticalContent;
    sub_24F5A2B64(v3, v6, type metadata accessor for LockupContentView.VerticalContent);
    swift_storeEnumTagMultiPayload();
    sub_24F5A2B1C(&qword_27F248A58, type metadata accessor for LockupContentView.HorizontalContent);
    sub_24F5A2B1C(&qword_27F248A60, type metadata accessor for LockupContentView.VerticalContent);
    sub_24F924E28();
    v15 = v3;
  }

  else
  {
    *v9 = v10;
    v9[1] = v11;
    *(v9 + 2) = v12;
    v16 = *(v7 + 24);
    *(v9 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v14 = type metadata accessor for LockupContentView.HorizontalContent;
    sub_24F5A2B64(v9, v6, type metadata accessor for LockupContentView.HorizontalContent);
    swift_storeEnumTagMultiPayload();
    sub_24F5A2B1C(&qword_27F248A58, type metadata accessor for LockupContentView.HorizontalContent);
    sub_24F5A2B1C(&qword_27F248A60, type metadata accessor for LockupContentView.VerticalContent);

    sub_24F924E28();
    v15 = v9;
  }

  return sub_24F5A2BCC(v15, v14);
}

double sub_24F59E65C()
{
  type metadata accessor for LockupContentView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  sub_24F9237D8();
  return v1;
}

uint64_t sub_24F59E6E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AA8);
  v111 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v92 = &v92 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AB0);
  MEMORY[0x28223BE20](v4 - 8);
  v115 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v92 - v7;
  v107 = type metadata accessor for LockupContentView.TextStack(0);
  MEMORY[0x28223BE20](v107);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AB8);
  MEMORY[0x28223BE20](v106);
  v112 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v105 = &v92 - v13;
  MEMORY[0x28223BE20](v14);
  v117 = &v92 - v15;
  v16 = type metadata accessor for LockupContentView.Ordinal(0);
  MEMORY[0x28223BE20](v16);
  v110 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v92 - v19);
  v21 = *a1;
  v22 = *(*a1 + 16);
  v23 = *(v22 + 72);
  *v20 = *(v22 + 64);
  v20[1] = v23;
  v118 = 0x4040000000000000;
  sub_24E66ED98();

  sub_24F9237C8();
  v118 = 0x4053800000000000;
  sub_24F9237C8();
  v118 = 0x4018000000000000;
  sub_24F9237C8();
  v118 = 0x4052C00000000000;
  sub_24F9237C8();
  v118 = 0x4049000000000000;
  v109 = v20;
  sub_24F9237C8();
  v24 = a1[1];
  v25 = a1[2];
  v108 = *(*(v21 + 16) + 48);

  v26 = sub_24F59F1A0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v27 = 0;
  v28 = 0;
  if ((v118 & 1) == 0)
  {
    v27 = *(*(v21 + 16) + 80);
  }

  v29 = *(v21 + 24) > 1u;
  v104 = v28;
  v102 = v27;
  if (v29)
  {
    v30 = sub_24F925A18();
  }

  else
  {
    v30 = sub_24F9259E8();
  }

  v103 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v31 = *(v21 + 16);
  v32 = 96;
  if (v118)
  {
    v32 = 272;
  }

  v33 = 104;
  if (v118)
  {
    v33 = 280;
  }

  v34 = *(v31 + v33);
  v101 = *(v31 + v32);
  v35 = v34;

  v100 = sub_24F41C130();
  if (*(v21 + 24) - 2 >= 2)
  {
    if (*(v21 + 24))
    {
      v99 = sub_24F9258D8();
      goto LABEL_16;
    }

    sub_24F925A18();
  }

  else
  {
    sub_24F9258D8();
  }

  sub_24F925918();
  v99 = sub_24F9259A8();

LABEL_16:
  v98 = sub_24F41C320();
  v97 = v36;
  if (*(v21 + 25) != 1 || *(v21 + 26) == 1)
  {
    goto LABEL_21;
  }

  sub_24F41C3E0();
  if (v37 || (sub_24F41C4F8(), v38))
  {

LABEL_21:
    v39 = 1;
    goto LABEL_22;
  }

  v39 = 2;
LABEL_22:
  v96 = v39;
  v95 = sub_24F41C3E0();
  v94 = v40;
  sub_24F41C3E0();
  if (v41)
  {

    v42 = *(*(v21 + 16) + 336);
  }

  else
  {
    v42 = 0;
  }

  v43 = sub_24F41C4F8();
  v93 = v44;
  v45 = *(v21 + 26);
  v114 = v8;
  if (v45 == 1)
  {
    v46 = *(v21 + 16);
    v47 = 0;
    if ((*(v46 + 56) & 1) != 0 || (v48 = *(v46 + 160)) == 0)
    {
      v51 = 1;
    }

    else
    {
      v49 = v48;
      sub_24F91FE38();
      v47 = v50;

      v51 = 0;
      if (*(v21 + 26) != 1)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        goto LABEL_35;
      }
    }

    v55 = *(v21 + 16);
    if (*(v55 + 56))
    {
      v52 = 0;
      v53 = 0;
      v54 = 1;
    }

    else
    {
      v53 = *(v55 + 168);
      v52 = *(v55 + 176);

      v54 = 0;
    }

    goto LABEL_35;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 1;
  v47 = 0;
LABEL_35:
  v56 = sub_24F41C654();
  v57 = *(v21 + 25);
  v58 = v104;
  *v10 = v102;
  *(v10 + 1) = v58;
  v59 = v101;
  *(v10 + 2) = v103;
  *(v10 + 3) = v59;
  v60 = v100;
  *(v10 + 4) = v35;
  *(v10 + 5) = v60;
  v61 = v98;
  *(v10 + 6) = v99;
  *(v10 + 7) = v61;
  v62 = v96;
  *(v10 + 8) = v97;
  *(v10 + 9) = v62;
  v63 = v94;
  *(v10 + 10) = v95;
  *(v10 + 11) = v63;
  *(v10 + 12) = v42;
  *(v10 + 13) = v43;
  *(v10 + 14) = v93;
  *(v10 + 15) = v47;
  v10[128] = v51;
  *(v10 + 17) = v53;
  *(v10 + 18) = v52;
  v10[152] = v54;
  v10[153] = v56 & 1;
  v10[154] = v57;
  v118 = 0x4028000000000000;
  sub_24E62C088();
  sub_24F9237C8();
  v64 = v105;
  sub_24F5A33A4(v10, v105);
  *(v64 + *(v106 + 36)) = 0x3FF0000000000000;
  sub_24E6009C8(v64, v117, &qword_27F248AB8);
  if (*(v21 + qword_27F39E5A0) == 1)
  {
    v65 = *(v21 + 32);
    v66 = type metadata accessor for OfferButtonView(0);
    v118 = 0x4052000000000000;

    v67 = v92;
    sub_24F9237C8();
    v68 = *(v66 + 24);
    *(v67 + v68) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
    swift_storeEnumTagMultiPayload();
    v69 = *(v66 + 28);
    *(v67 + v69) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
    swift_storeEnumTagMultiPayload();
    *v67 = sub_24E690E30;
    *(v67 + 8) = v65;
    *(v67 + 16) = 0;
    LOBYTE(v65) = sub_24F925838();
    sub_24F923318();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AC8) + 36);
    *v78 = v65;
    *(v78 + 8) = v71;
    *(v78 + 16) = v73;
    *(v78 + 24) = v75;
    *(v78 + 32) = v77;
    *(v78 + 40) = 0;
    v79 = v113;
    v80 = v114;
    *(v67 + *(v113 + 36)) = 0x4008000000000000;
    sub_24E6009C8(v67, v80, &qword_27F248AA8);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v79 = v113;
    v80 = v114;
  }

  (*(v111 + 56))(v80, v81, 1, v79);
  v83 = v109;
  v82 = v110;
  sub_24F5A2B64(v109, v110, type metadata accessor for LockupContentView.Ordinal);
  v84 = v117;
  v85 = v112;
  sub_24E60169C(v117, v112, &qword_27F248AB8);
  v86 = v115;
  sub_24E60169C(v80, v115, &qword_27F248AB0);
  v87 = v116;
  sub_24F5A2B64(v82, v116, type metadata accessor for LockupContentView.Ordinal);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AC0);
  v89 = v87 + v88[12];
  *v89 = v108;
  *(v89 + 8) = v24;
  *(v89 + 16) = v25;
  *(v89 + 24) = v26;
  *(v89 + 32) = 0;
  *(v89 + 40) = 0x4000000000000000;
  sub_24E60169C(v85, v87 + v88[16], &qword_27F248AB8);
  v90 = v87 + v88[20];
  *v90 = 0;
  *(v90 + 8) = 0;
  sub_24E60169C(v86, v87 + v88[24], &qword_27F248AB0);

  sub_24E601704(v80, &qword_27F248AB0);
  sub_24E601704(v84, &qword_27F248AB8);
  sub_24F5A2BCC(v83, type metadata accessor for LockupContentView.Ordinal);
  sub_24E601704(v86, &qword_27F248AB0);
  sub_24E601704(v85, &qword_27F248AB8);

  return sub_24F5A2BCC(v82, type metadata accessor for LockupContentView.Ordinal);
}

double sub_24F59F1A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140C0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = sub_24F923E98();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LockupContentView.HorizontalContent(0);
  sub_24F769788(v9);
  v10 = *(v7 + 56);
  v10(v5, 1, 1, v6);
  (*(v7 + 104))(v2, *MEMORY[0x277CDF988], v6);
  v10(v2, 0, 1, v6);
  v11 = sub_24EF13DC0(v5, v2);
  sub_24E601704(v2, &qword_27F2140C0);
  sub_24E601704(v5, &qword_27F2140C0);
  (*(v7 + 8))(v9, v6);
  return v11;
}

double sub_24F59F3C0@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F9249A8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248A98);
  sub_24F59E6E8(v1, a1 + *(v3 + 44));
  sub_24F927618();
  sub_24F9238C8();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AA0) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

__n128 sub_24F59F46C@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  *v5 = sub_24F924C98();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AD8);
  sub_24F59F5CC(v1, &v5[*(v6 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v5, a1, &qword_27F248AD0);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AE0) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_24F59F5CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AE8);
  MEMORY[0x28223BE20](v105);
  v110 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v100 = &v86 - v5;
  v102 = type metadata accessor for LockupContentView.TextStack(0);
  MEMORY[0x28223BE20](v102);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AF0);
  MEMORY[0x28223BE20](v104);
  v108 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v103 = &v86 - v10;
  MEMORY[0x28223BE20](v11);
  v111 = &v86 - v12;
  v13 = sub_24F923E98();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  v19 = a1[2];
  v107 = *(*(*a1 + 16) + 48);

  v106 = sub_24F925828();
  v99 = type metadata accessor for LockupContentView.VerticalContent(0);
  v101 = a1;
  sub_24F769788(v16);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v14 + 8))(v16, v13);
  sub_24F923318();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v131 = 1;
  v128 = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v28 = 0;
  v29 = 0;
  if ((v118[0] & 1) == 0)
  {
    v28 = *(*(v17 + 16) + 80);
  }

  v30 = *(v17 + 24) > 1u;
  v97 = v29;
  if (v30)
  {
    v31 = sub_24F925A18();
  }

  else
  {
    v31 = sub_24F9259E8();
  }

  v98 = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v32 = *(v17 + 16);
  v33 = 96;
  if (LOBYTE(v118[0]))
  {
    v33 = 272;
  }

  v34 = 104;
  if (LOBYTE(v118[0]))
  {
    v34 = 280;
  }

  v35 = *(v32 + v34);
  v96 = *(v32 + v33);
  v36 = v35;

  v95 = sub_24F41C130();
  if (*(v17 + 24) - 2 >= 2)
  {
    if (*(v17 + 24))
    {
      v94 = sub_24F9258D8();
      goto LABEL_16;
    }

    sub_24F925A18();
  }

  else
  {
    sub_24F9258D8();
  }

  sub_24F925918();
  v94 = sub_24F9259A8();

LABEL_16:
  v93 = sub_24F41C320();
  v92 = v37;
  if (*(v17 + 25) != 1 || *(v17 + 26) == 1)
  {
    goto LABEL_21;
  }

  sub_24F41C3E0();
  if (v38 || (sub_24F41C4F8(), v39))
  {

LABEL_21:
    v40 = 1;
    goto LABEL_22;
  }

  v40 = 2;
LABEL_22:
  v91 = v40;
  v90 = sub_24F41C3E0();
  v89 = v41;
  sub_24F41C3E0();
  if (v42)
  {

    v43 = *(*(v17 + 16) + 336);
  }

  else
  {
    v43 = 0;
  }

  v88 = sub_24F41C4F8();
  v87 = v44;
  if (*(v17 + 26) != 1)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 1;
    v46 = 0;
    goto LABEL_35;
  }

  v45 = *(v17 + 16);
  v46 = 0;
  if ((*(v45 + 56) & 1) != 0 || (v47 = *(v45 + 160)) == 0)
  {
    v50 = 1;
  }

  else
  {
    v48 = v47;
    sub_24F91FE38();
    v46 = v49;

    v50 = 0;
    if (*(v17 + 26) != 1)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      goto LABEL_35;
    }
  }

  v54 = *(v17 + 16);
  if (*(v54 + 56))
  {
    v51 = 0;
    v52 = 0;
    v53 = 1;
  }

  else
  {
    v52 = *(v54 + 168);
    v51 = *(v54 + 176);

    v53 = 0;
  }

LABEL_35:
  v55 = sub_24F41C654();
  v56 = *(v17 + 25);
  v57 = v97;
  *v7 = v28;
  *(v7 + 1) = v57;
  v58 = v96;
  *(v7 + 2) = v98;
  *(v7 + 3) = v58;
  v59 = v95;
  *(v7 + 4) = v36;
  *(v7 + 5) = v59;
  v60 = v93;
  *(v7 + 6) = v94;
  *(v7 + 7) = v60;
  v61 = v91;
  *(v7 + 8) = v92;
  *(v7 + 9) = v61;
  v62 = v89;
  *(v7 + 10) = v90;
  *(v7 + 11) = v62;
  v63 = v88;
  *(v7 + 12) = v43;
  *(v7 + 13) = v63;
  *(v7 + 14) = v87;
  *(v7 + 15) = v46;
  v7[128] = v50;
  *(v7 + 17) = v52;
  *(v7 + 18) = v51;
  v7[152] = v53;
  v7[153] = v55 & 1;
  v7[154] = v56;
  v118[0] = 0x4028000000000000;
  sub_24E62C088();
  sub_24F9237C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  sub_24F9237D8();
  sub_24F927618();
  sub_24F9238C8();
  v64 = v103;
  sub_24F5A33A4(v7, v103);
  v65 = (v64 + *(v104 + 36));
  v66 = v133;
  *v65 = v132;
  v65[1] = v66;
  v65[2] = v134;
  v67 = v64;
  v68 = v111;
  sub_24E6009C8(v67, v111, &qword_27F248AF0);
  v69 = *(v17 + 32);
  v70 = type metadata accessor for OfferButtonView(0);
  v118[0] = 0x4052000000000000;

  v71 = v100;
  sub_24F9237C8();
  v72 = *(v70 + 24);
  *(v71 + v72) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v73 = *(v70 + 28);
  *(v71 + v73) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
  swift_storeEnumTagMultiPayload();
  *v71 = sub_24F5A41BC;
  *(v71 + 8) = v69;
  *(v71 + 16) = 0;
  *(v71 + *(v105 + 36)) = 0x4000000000000000;
  v74 = v108;
  sub_24E60169C(v68, v108, &qword_27F248AF0);
  v75 = v110;
  sub_24E60169C(v71, v110, &qword_27F248AE8);
  v76 = v107;
  *&v112 = v107;
  *(&v112 + 1) = v18;
  v113 = v19;
  LOBYTE(v114) = 1;
  *(&v114 + 1) = *v130;
  DWORD1(v114) = *&v130[3];
  v77 = v106;
  BYTE8(v114) = v106;
  HIDWORD(v114) = *&v129[3];
  *(&v114 + 9) = *v129;
  *&v115 = v21;
  *(&v115 + 1) = v23;
  *&v116 = v25;
  *(&v116 + 1) = v27;
  v117 = 0;
  v78 = v114;
  v79 = v115;
  v80 = v116;
  v81 = v109;
  *(v109 + 80) = 0;
  v81[3] = v79;
  v81[4] = v80;
  v82 = v112;
  v81[1] = v113;
  v81[2] = v78;
  *v81 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248AF8);
  sub_24E60169C(v74, v81 + v83[12], &qword_27F248AF0);
  v84 = v81 + v83[16];
  *v84 = 0x402C000000000000;
  v84[8] = 0;
  sub_24E60169C(v75, v81 + v83[20], &qword_27F248AE8);
  sub_24E60169C(&v112, v118, &qword_27F248B00);
  sub_24E601704(v71, &qword_27F248AE8);
  sub_24E601704(v111, &qword_27F248AF0);
  sub_24E601704(v75, &qword_27F248AE8);
  sub_24E601704(v74, &qword_27F248AF0);
  v118[0] = v76;
  v118[1] = v18;
  v118[2] = v19;
  v118[3] = 0;
  v119 = 1;
  *v120 = *v130;
  *&v120[3] = *&v130[3];
  v121 = v77;
  *v122 = *v129;
  *&v122[3] = *&v129[3];
  v123 = v21;
  v124 = v23;
  v125 = v25;
  v126 = v27;
  v127 = 0;
  return sub_24E601704(v118, &qword_27F248B00);
}

uint64_t sub_24F5A00C8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BC0);
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BC8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = *v1;
  if (*v1)
  {
    v16 = v1[2];
    v40 = v1[1];
    v15 = v40;
    v41 = v16;
    v43 = v10;
    v17 = type metadata accessor for SwiftUIArtworkView(0);
    v42 = a1;
    v18 = v17;
    v19 = *(v17 + 24);
    v20 = *MEMORY[0x277CE1010];
    v21 = sub_24F926E68();
    (*(*(v21 - 8) + 104))(&v5[v19], v20, v21);
    *v5 = v14;
    *(v5 + 1) = v15;
    *(v5 + 2) = v16;
    v5[24] = 0;
    v22 = &v5[v18[7]];
    *v22 = 0;
    *(v22 + 1) = 0;
    v22[16] = 1;
    v5[v18[8]] = 2;
    v5[v18[9]] = 0;
    LOBYTE(v18) = *(v14 + 64);
    v46[0] = 0;

    sub_24F926F28();
    LOBYTE(v19) = v47;
    v23 = *(&v47 + 1);
    LOBYTE(v47) = 1;
    v24 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226430) + 36)];
    *v24 = v18;
    *(v24 + 1) = *v46;
    *(v24 + 1) = *&v46[3];
    *(v24 + 1) = v15;
    *(v24 + 2) = v16;
    *(v24 + 3) = 0;
    *(v24 + 4) = 0;
    v24[40] = 1;
    *(v24 + 41) = *v45;
    *(v24 + 11) = *&v45[3];
    v24[48] = v19;
    *(v24 + 49) = *v44;
    *(v24 + 13) = *&v44[3];
    *(v24 + 7) = v23;
    sub_24F927618();
    sub_24F9238C8();
    v25 = &v5[*(v3 + 36)];
    v26 = v48;
    *v25 = v47;
    *(v25 + 1) = v26;
    *(v25 + 2) = v49;
    LOBYTE(v18) = sub_24F925858();
    sub_24F923318();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_24E6009C8(v5, v8, &qword_27F248BC0);
    v35 = &v8[*(v6 + 36)];
    *v35 = v18;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    sub_24E6009C8(v8, v13, &qword_27F248BC8);
    v36 = v42;
    sub_24E6009C8(v13, v42, &qword_27F248BC8);
    return (*(v43 + 56))(v36, 0, 1, v6);
  }

  else
  {
    v38 = *(v10 + 56);

    return v38(a1, 1, 1, v6, v11);
  }
}

uint64_t sub_24F5A04DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v4 - 8);
  v173 = &v156[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B68);
  v175 = *(v6 - 8);
  v176 = v6;
  MEMORY[0x28223BE20](v6);
  v174 = &v156[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B70);
  MEMORY[0x28223BE20](v8 - 8);
  v196 = &v156[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v204 = &v156[-v11];
  v12 = *(a1 + 8);
  v197 = a1;
  if (v12)
  {
    v232 = *a1;
    v233 = v12;
    sub_24E600AEC();

    v13 = sub_24F925E18();
    v15 = v14;
    v17 = v16;
    sub_24F9259E8();
    v18 = sub_24F925C98();
    v20 = v19;
    v22 = v21;
    v208 = v23;

    sub_24E600B40(v13, v15, v17 & 1);
    a1 = v197;

    LOBYTE(v232) = 0;
    sub_24ED1A304();
    v24 = sub_24F925C58();
    v194 = v25;
    v195 = v24;
    LOBYTE(v13) = v26;
    v193 = v27;
    sub_24E600B40(v18, v20, v22 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v20) = sub_24F925828();
    sub_24F923318();
    v190 = v29;
    v191 = v28;
    v188 = v31;
    v189 = v30;
    LOBYTE(v232) = v13 & 1;
    LOBYTE(v228[0]) = 0;
    LOBYTE(v221) = 0;
    v185 = v13 & 1;
    v187 = 0;
    v186 = v20;
    v184 = 1;
    v32 = *(a1 + 32);
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_6:
    v208 = 0;
    v202 = 0;
    v203 = 0;
    v199 = 0;
    v200 = 0;
    v201 = 0;
    v207 = 0;
    v48 = *(a1 + 64);
    if (v48)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v194 = 0;
  v195 = 0;
  KeyPath = 0;
  v193 = 0;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v190 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  v32 = *(a1 + 32);
  if (!v32)
  {
    goto LABEL_6;
  }

LABEL_3:
  v232 = *(a1 + 24);
  v233 = v32;
  sub_24E600AEC();

  v33 = sub_24F925E18();
  v35 = v34;
  v37 = v36;
  v38 = sub_24F925C98();
  v40 = v39;
  v42 = v41;
  sub_24E600B40(v33, v35, v37 & 1);

  LOBYTE(v232) = 0;
  sub_24ED1A304();
  v208 = sub_24F925C58();
  v202 = v44;
  v203 = v43;
  LOBYTE(v33) = v45;
  v46 = v38;
  a1 = v197;
  sub_24E600B40(v46, v40, v42 & 1);

  v201 = *(a1 + 40);
  v47 = swift_getKeyPath();
  LOBYTE(v232) = v33 & 1;
  LOBYTE(v228[0]) = 0;
  v199 = v33 & 1;
  v200 = v47;
  v207 = 0x10000;
  v48 = *(a1 + 64);
  if (v48)
  {
LABEL_4:
    v232 = *(a1 + 56);
    v233 = v48;
    sub_24E600AEC();

    v49 = sub_24F925E18();
    v51 = v50;
    v53 = v52;
    LOBYTE(v232) = 1;
    sub_24ED1A304();
    v54 = sub_24F925C58();
    v56 = v55;
    v58 = v57;
    sub_24E600B40(v49, v51, v53 & 1);

    sub_24F925A18();
    v59 = sub_24F925C98();
    v61 = v60;
    LODWORD(v206) = v62;
    v64 = v63;

    v65 = v54;
    a1 = v197;
    sub_24E600B40(v65, v56, v58 & 1);

    v181 = *(a1 + 72);
    v66 = swift_getKeyPath();
    v183 = v59;
    v205 = v206 & 1;
    v206 = v61;
    sub_24E5FD138(v59, v61, v205);
    v182 = v64;

    v198 = v66;

    goto LABEL_8;
  }

LABEL_7:
  v182 = 0;
  v183 = 0;
  v205 = 0;
  v206 = 0;
  v198 = 0;
  v181 = 0;
LABEL_8:
  v67 = 0;
  if (*(a1 + 128))
  {
    v179 = 0;
    v180 = 0;
    v177 = 0;
    v178 = 1;
    v169 = 0;
    v170 = 0;
    v167 = 0;
    v168 = 0;
  }

  else
  {
    v68 = *(a1 + 120);
    v69 = *(a1 + 144);
    v179 = *(a1 + 136);
    v180 = v68;
    v178 = v69;

    v70 = sub_24F925818();
    sub_24F923318();
    v169 = v72;
    v170 = v71;
    v167 = v74;
    v168 = v73;
    LOBYTE(v232) = 0;
    v177 = v70;
  }

  v75 = *(a1 + 152);
  if (v75 == 1)
  {
    v76 = sub_24F925818();
    sub_24F923318();
    v67 = v77;
    v164 = v79;
    v165 = v78;
    v163 = v80;
    v162 = v76;
    v81 = *(a1 + 88);
    if (v81)
    {
LABEL_13:
      v82 = *(a1 + 80);
      v83 = sub_24F9249A8();
      v84 = v174;
      *v174 = v83;
      *(v84 + 8) = 0x4010000000000000;
      *(v84 + 16) = 0;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B88);
      sub_24F5A1280(a1, v82, v81, v84 + *(v85 + 44));
      LOBYTE(v82) = sub_24F925818();
      sub_24F923318();
      v86 = v176;
      v87 = v84 + *(v176 + 36);
      *v87 = v82;
      *(v87 + 8) = v88;
      *(v87 + 16) = v89;
      *(v87 + 24) = v90;
      *(v87 + 32) = v91;
      *(v87 + 40) = 0;
      v92 = v204;
      sub_24E6009C8(v84, v204, &qword_27F248B68);
      v93 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v162 = 0;
    v164 = 0;
    v165 = 0;
    v163 = 0;
    v81 = *(a1 + 88);
    if (v81)
    {
      goto LABEL_13;
    }
  }

  v93 = 1;
  v92 = v204;
  v86 = v176;
LABEL_16:
  (*(v175 + 56))(v92, v93, 1, v86);
  v94 = *(a1 + 112);
  v166 = v67;
  if (v94)
  {
    v232 = *(a1 + 104);
    v233 = v94;
    sub_24E600AEC();

    v95 = sub_24F925E18();
    v97 = v96;
    v99 = v98;
    v100 = *(a1 + 153);
    v157 = v75;
    if (v100 == 1)
    {
      type metadata accessor for LockupContentView.TextStack(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
      sub_24F9237D8();
      v101 = sub_24F925908();
      v102 = v173;
      (*(*(v101 - 8) + 56))(v173, 1, 1, v101);
      sub_24F925968();
      sub_24E601704(v102, &qword_27F214698);
    }

    else
    {
      sub_24F925A18();
    }

    v107 = sub_24F925C98();
    v109 = v108;
    v111 = v110;
    v173 = v112;

    sub_24E600B40(v95, v97, v99 & 1);

    LOBYTE(v232) = 0;
    sub_24ED1A304();
    v113 = sub_24F925C58();
    v175 = v114;
    v176 = v113;
    v116 = v115;
    v174 = v117;
    sub_24E600B40(v107, v109, v111 & 1);

    v173 = swift_getKeyPath();
    LOBYTE(v109) = sub_24F925818();
    sub_24F923318();
    v160 = v119;
    v161 = v118;
    v105 = v120;
    v106 = v121;
    LOBYTE(v232) = v116 & 1;
    LOBYTE(v228[0]) = 0;
    LOBYTE(v221) = 0;
    v104 = v116 & 1;
    v172 = 0;
    v171 = v109;
    v103 = 1;
    a1 = v197;
    LOBYTE(v75) = v157;
  }

  else
  {
    v175 = 0;
    v176 = 0;
    v173 = 0;
    v174 = 0;
    v103 = 0;
    v171 = 0;
    v172 = 0;
    v104 = 0;
    v160 = 0;
    v161 = 0;
    v105 = 0;
    v106 = 0;
  }

  v158 = v103;
  v159 = v104;
  LODWORD(v197) = *(a1 + 154);
  v122 = v196;
  sub_24E60169C(v204, v196, &qword_27F248B70);
  *&v209 = v195;
  *(&v209 + 1) = v194;
  *&v210 = v185;
  *(&v210 + 1) = v193;
  *&v211 = KeyPath;
  *(&v211 + 1) = v184;
  *&v212 = v187;
  *(&v212 + 1) = v186;
  *&v213 = v191;
  *(&v213 + 1) = v190;
  *&v214 = v189;
  *(&v214 + 1) = v188;
  v215 = 0;
  *(a2 + 96) = 0;
  v123 = v214;
  *(a2 + 64) = v213;
  *(a2 + 80) = v123;
  v124 = v210;
  *a2 = v209;
  *(a2 + 16) = v124;
  v125 = v212;
  *(a2 + 32) = v211;
  *(a2 + 48) = v125;
  v126 = v203;
  *(a2 + 104) = v208;
  *(a2 + 112) = v126;
  v127 = v202;
  *(a2 + 120) = v199;
  *(a2 + 128) = v127;
  v128 = v201;
  *(a2 + 136) = v200;
  *(a2 + 144) = v128;
  v129 = v207;
  *(a2 + 154) = BYTE2(v207);
  *(a2 + 152) = v129;
  v131 = v205;
  v130 = v206;
  *(a2 + 160) = v183;
  *(a2 + 168) = v130;
  v132 = v182;
  *(a2 + 176) = v131;
  *(a2 + 184) = v132;
  v133 = v198;
  *(a2 + 192) = v198;
  v134 = v133;
  v135 = v180;
  *(a2 + 200) = v181;
  *(a2 + 208) = 0;
  *&v216 = v135;
  *(&v216 + 1) = v179;
  *&v217 = v178;
  *(&v217 + 1) = v177;
  v137 = v169;
  v136 = v170;
  *&v218 = v170;
  *(&v218 + 1) = v169;
  v139 = v167;
  v138 = v168;
  *&v219 = v168;
  *(&v219 + 1) = v167;
  v220 = 0;
  v140 = v217;
  *(a2 + 216) = v216;
  v141 = v218;
  v142 = v219;
  *(a2 + 280) = 0;
  *(a2 + 264) = v142;
  *(a2 + 248) = v141;
  *(a2 + 232) = v140;
  *(a2 + 288) = v162;
  *&v141 = v165;
  *(a2 + 296) = v166;
  *(a2 + 304) = v141;
  *&v141 = v163;
  *(a2 + 312) = v164;
  *(a2 + 320) = v141;
  *(a2 + 328) = 0;
  *(a2 + 329) = v75 ^ 1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B78);
  sub_24E60169C(v122, a2 + v143[28], &qword_27F248B70);
  v144 = a2 + v143[32];
  *&v221 = v176;
  *(&v221 + 1) = v175;
  *&v222 = v104;
  *(&v222 + 1) = v174;
  *&v223 = v173;
  *(&v223 + 1) = v103;
  *&v224 = v172;
  *(&v224 + 1) = v171;
  v146 = v160;
  v145 = v161;
  *&v225 = v161;
  *(&v225 + 1) = v160;
  *&v226 = v105;
  *(&v226 + 1) = v106;
  v147 = v226;
  *(v144 + 64) = v225;
  *(v144 + 80) = v147;
  *(v144 + 96) = 0;
  v148 = v222;
  *v144 = v221;
  *(v144 + 16) = v148;
  v149 = v224;
  *(v144 + 32) = v223;
  *(v144 + 48) = v149;
  v150 = a2 + v143[36];
  v227 = 0;
  sub_24E60169C(&v209, &v232, &qword_27F232198);
  sub_24ED1A264(v208, v203, v199, v202);
  v151 = v182;
  v152 = v183;
  v154 = v205;
  v153 = v206;
  v198 = v134;
  sub_24ED1A264(v183, v206, v205, v182);
  sub_24E60169C(&v216, &v232, &qword_27F248B80);
  sub_24E60169C(&v221, &v232, &qword_27F232198);
  sub_24ED1A2B4(v152, v153, v154, v151);
  *v150 = 0;
  *(v150 + 8) = 0;
  *(v150 + 9) = (v197 & 1) == 0;
  sub_24E601704(v204, &qword_27F248B70);
  v228[0] = v176;
  v228[1] = v175;
  v228[2] = v159;
  v228[3] = v174;
  v228[4] = v173;
  v228[5] = v158;
  v228[6] = v172;
  v228[7] = v171;
  v228[8] = v145;
  v228[9] = v146;
  v228[10] = v105;
  v228[11] = v106;
  v229 = 0;
  sub_24E601704(v228, &qword_27F232198);
  sub_24E601704(v196, &qword_27F248B70);
  v230[0] = v180;
  v230[1] = v179;
  v230[2] = v178;
  v230[3] = v177;
  v230[4] = v136;
  v230[5] = v137;
  v230[6] = v138;
  v230[7] = v139;
  v231 = 0;
  sub_24E601704(v230, &qword_27F248B80);
  sub_24ED1A2B4(v152, v206, v205, v151);
  sub_24ED1A2B4(v208, v203, v199, v202);
  v232 = v195;
  v233 = v194;
  v234 = v185;
  v235 = v193;
  v236 = KeyPath;
  v237 = v184;
  v238 = v187;
  v239 = v186;
  v240 = v191;
  v241 = v190;
  v242 = v189;
  v243 = v188;
  v244 = 0;
  return sub_24E601704(&v232, &qword_27F232198);
}

uint64_t sub_24F5A1280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B90);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B98);
  MEMORY[0x28223BE20](v77);
  v13 = &v72 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BA0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v72 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BA8);
  MEMORY[0x28223BE20](v20 - 8);
  v79 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = *(a1 + 96);
  v81 = &v72 - v25;
  if (v24)
  {
    v73 = v14;
    v74 = a2;
    v75 = a3;
    v26 = type metadata accessor for SwiftUIArtworkView(0);
    v27 = v26[6];
    v28 = *MEMORY[0x277CE1010];
    v29 = sub_24F926E68();
    (*(*(v29 - 8) + 104))(&v11[v27], v28, v29);
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    *v11 = v24;
    v11[24] = 1;
    v30 = &v11[v26[7]];
    *v30 = 0;
    *(v30 + 1) = 0;
    v30[16] = 1;
    v11[v26[8]] = 2;
    v11[v26[9]] = 0;
    v31 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BB8) + 36)];
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
    v33 = *MEMORY[0x277CE1050];
    v34 = sub_24F926E78();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    *v31 = swift_getKeyPath();
    v35 = &v11[*(v9 + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0) + 28);

    sub_24F924CD8();
    v37 = sub_24F924D08();
    (*(*(v37 - 8) + 56))(v35 + v36, 0, 1, v37);
    *v35 = swift_getKeyPath();
    if (*(a1 + 153))
    {
      type metadata accessor for LockupContentView.TextStack(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
      sub_24F9237D8();
      v38 = sub_24F925908();
      v39 = v78;
      (*(*(v38 - 8) + 56))(v78, 1, 1, v38);
      v40 = sub_24F925968();
      sub_24E601704(v39, &qword_27F214698);
    }

    else
    {
      v40 = sub_24F925A18();
    }

    v41 = v73;
    KeyPath = swift_getKeyPath();
    sub_24E6009C8(v11, v13, &qword_27F248B90);
    v43 = &v13[*(v77 + 36)];
    *v43 = KeyPath;
    v43[1] = v40;
    sub_24E6009C8(v13, v17, &qword_27F248B98);
    v17[*(v41 + 36)] = 1;
    v44 = v76;
    sub_24E6009C8(v17, v76, &qword_27F248BA0);
    v45 = v44;
    v46 = v81;
    sub_24E6009C8(v45, v81, &qword_27F248BA0);
    (*(v15 + 56))(v46, 0, 1, v41);
    a2 = v74;
    a3 = v75;
  }

  else
  {
    (*(v15 + 56))(v23);
  }

  v82 = a2;
  v83 = a3;
  sub_24E600AEC();

  v47 = sub_24F925E18();
  v49 = v48;
  v51 = v50;
  LOBYTE(v82) = 1;
  sub_24ED1A304();
  v52 = sub_24F925C58();
  v54 = v53;
  v56 = v55;
  sub_24E600B40(v47, v49, v51 & 1);

  if (*(a1 + 153) == 1)
  {
    type metadata accessor for LockupContentView.TextStack(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234078);
    sub_24F9237D8();
    v57 = sub_24F925908();
    v58 = v78;
    (*(*(v57 - 8) + 56))(v78, 1, 1, v57);
    sub_24F925968();
    sub_24E601704(v58, &qword_27F214698);
  }

  else
  {
    sub_24F925A18();
  }

  v59 = sub_24F925C98();
  v61 = v60;
  v63 = v62;
  v65 = v64;

  sub_24E600B40(v52, v54, v56 & 1);

  v66 = swift_getKeyPath();
  v67 = v81;
  v68 = v79;
  sub_24E60169C(v81, v79, &qword_27F248BA8);
  v69 = v80;
  sub_24E60169C(v68, v80, &qword_27F248BA8);
  v70 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248BB0) + 48);
  *v70 = v59;
  *(v70 + 8) = v61;
  v63 &= 1u;
  *(v70 + 16) = v63;
  *(v70 + 24) = v65;
  *(v70 + 32) = v66;
  *(v70 + 40) = 1;
  *(v70 + 48) = 0;
  sub_24E5FD138(v59, v61, v63);

  sub_24E601704(v67, &qword_27F248BA8);
  sub_24E600B40(v59, v61, v63);

  return sub_24E601704(v68, &qword_27F248BA8);
}

uint64_t sub_24F5A1ACC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924C98();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F248B60);
  return sub_24F5A04DC(v1, a1 + *(v3 + 44));
}

uint64_t sub_24F5A1B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v40 = sub_24F925A18();
  v41 = sub_24F925858();
  sub_24F923318();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v48) = 0;
  if (a2)
  {
    *&v48 = a1;
    *(&v48 + 1) = a2;
    sub_24E600AEC();

    v16 = sub_24F925E18();
    v18 = v17;
    v20 = v19;
    v39 = 1;
    LOBYTE(v48) = 1;
    sub_24ED1A304();
    v21 = sub_24F925C58();
    v23 = v22;
    v25 = v24;
    sub_24E600B40(v16, v18, v20 & 1);

    sub_24F925A18();
    v26 = sub_24F925C98();
    v28 = v27;
    v38 = v29;
    v31 = v30;

    sub_24E600B40(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v33 = v38 & 1;
    sub_24E5FD138(v26, v28, v38 & 1);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v33 = 0;
    v31 = 0;
    KeyPath = 0;
    v39 = 0;
  }

  *&v42 = a4;
  *(&v42 + 1) = 5;
  LOBYTE(v43) = 0;
  *(&v43 + 1) = v69[0];
  HIDWORD(v43) = *(v69 + 3);
  v44 = 0;
  *&v45 = v40;
  BYTE8(v45) = 1;
  HIDWORD(v45) = *&v68[3];
  *(&v45 + 9) = *v68;
  LOBYTE(v46) = v41;
  DWORD1(v46) = *&v67[3];
  *(&v46 + 1) = *v67;
  *(&v46 + 1) = v9;
  *v47 = v11;
  *&v47[8] = v13;
  *&v47[16] = v15;
  v47[24] = 0;
  v48 = v42;
  v49 = v43;
  *&v52[9] = *&v47[9];
  v51 = v46;
  *v52 = *v47;
  v50 = v45;
  sub_24E60169C(&v42, v53, &qword_27F248C38);
  sub_24ED1A264(v26, v28, v33, v31);
  sub_24ED1A2B4(v26, v28, v33, v31);
  v34 = v51;
  *(a3 + 32) = v50;
  *(a3 + 48) = v34;
  v35 = *&v52[16];
  *(a3 + 64) = *v52;
  *(a3 + 80) = v35;
  v36 = v49;
  *a3 = v48;
  *(a3 + 16) = v36;
  *(a3 + 96) = v26;
  *(a3 + 104) = v28;
  *(a3 + 112) = v33;
  *(a3 + 120) = v31;
  *(a3 + 128) = KeyPath;
  *(a3 + 136) = v39;
  *(a3 + 144) = 0;
  sub_24ED1A2B4(v26, v28, v33, v31);
  *v53 = a4;
  v53[1] = 5;
  v54 = 0;
  *v55 = v69[0];
  *&v55[3] = *(v69 + 3);
  v56 = 0;
  v57 = v40;
  v58 = 1;
  *v59 = *v68;
  *&v59[3] = *&v68[3];
  v60 = v41;
  *&v61[3] = *&v67[3];
  *v61 = *v67;
  v62 = v9;
  v63 = v11;
  v64 = v13;
  v65 = v15;
  v66 = 0;
  return sub_24E601704(v53, &qword_27F248C38);
}

double sub_24F5A1E98@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = sub_24F924978();
  v25 = 0;
  sub_24F5A1B20(v4, v5, &v14, v3);
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v26 = v14;
  v27 = v15;
  v36[6] = v20;
  v36[7] = v21;
  v36[8] = v22;
  v36[2] = v16;
  v36[3] = v17;
  v36[4] = v18;
  v36[5] = v19;
  v35 = v23;
  v37 = v23;
  v36[0] = v14;
  v36[1] = v15;
  sub_24E60169C(&v26, &v13, &qword_27F248C30);
  sub_24E601704(v36, &qword_27F248C30);
  *&v24[55] = v29;
  *&v24[39] = v28;
  *&v24[103] = v32;
  *&v24[119] = v33;
  *&v24[135] = v34;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v7 = *&v24[112];
  *(a1 + 113) = *&v24[96];
  *(a1 + 129) = v7;
  *(a1 + 145) = *&v24[128];
  v8 = *&v24[48];
  *(a1 + 49) = *&v24[32];
  *(a1 + 65) = v8;
  v9 = *&v24[80];
  *(a1 + 81) = *&v24[64];
  *(a1 + 97) = v9;
  result = *v24;
  v11 = *&v24[16];
  *(a1 + 17) = *v24;
  v24[151] = v35;
  v12 = v25;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 161) = *&v24[144];
  *(a1 + 33) = v11;
  return result;
}

double sub_24F5A2030@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924978();
  v19 = 0;
  sub_24F5A2160(&v10);
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v28[0] = v10;
  v28[1] = v11;
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[5] = v15;
  v28[6] = v16;
  v28[7] = v17;
  sub_24E60169C(&v20, &v9, &qword_27F248C28);
  sub_24E601704(v28, &qword_27F248C28);
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[103] = v26;
  *&v18[119] = v27;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  *&v18[55] = v23;
  v3 = *&v18[64];
  *(a1 + 97) = *&v18[80];
  v4 = *&v18[112];
  *(a1 + 113) = *&v18[96];
  *(a1 + 129) = v4;
  v5 = *v18;
  *(a1 + 33) = *&v18[16];
  result = *&v18[32];
  v7 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = v7;
  *(a1 + 81) = v3;
  v8 = v19;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 144) = *&v18[127];
  *(a1 + 17) = v5;
  *(a1 + 152) = 1;
  return result;
}

uint64_t sub_24F5A2160@<X0>(uint64_t a1@<X8>)
{
  v29 = sub_24F926DF8();
  v2 = sub_24F9259E8();
  KeyPath = swift_getKeyPath();
  v4._object = 0x800000024FA76D80;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  sub_24F9259E8();
  v6 = sub_24F925C98();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = sub_24F9257F8();
  sub_24F923318();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v10 & 1;
  LOBYTE(v34[0]) = v10 & 1;
  v23 = sub_24F926DF8();
  v24 = sub_24F9259E8();
  v25 = swift_getKeyPath();
  *&v30 = v6;
  *(&v30 + 1) = v8;
  LOBYTE(v31) = v22;
  *(&v31 + 1) = v12;
  LOBYTE(v32) = v13;
  *(&v32 + 1) = v15;
  *v33 = v17;
  *&v33[8] = v19;
  *&v33[16] = v21;
  v26 = v30;
  *(a1 + 40) = v31;
  v27 = *v33;
  *(a1 + 56) = v32;
  v33[24] = 0;
  *(a1 + 72) = v27;
  *(a1 + 81) = *&v33[9];
  *a1 = v29;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v2;
  *(a1 + 24) = v26;
  *(a1 + 104) = v23;
  *(a1 + 112) = v25;
  *(a1 + 120) = v24;

  sub_24E60169C(&v30, v34, &qword_27F217790);
  v34[0] = v6;
  v34[1] = v8;
  v35 = v22;
  v36 = v12;
  v37 = v13;
  v38 = v15;
  v39 = v17;
  v40 = v19;
  v41 = v21;
  v42 = 0;
  sub_24E601704(v34, &qword_27F217790);
}

void *sub_24F5A23AC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  if (v2 == 0.0)
  {
    sub_24F5A3C10(v89);
  }

  else
  {
    v3 = *v1;

    v32 = sub_24F926C98();
    type metadata accessor for LockupContentView.Ordinal(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    sub_24F9237D8();
    sub_24F927618();
    sub_24F9238C8();
    v30 = v82;
    v31 = v80;
    v26 = v83;
    v27 = v81;
    v28 = v85;
    v29 = v84;
    v89[0] = v3;
    v89[1] = v2;
    sub_24E600AEC();
    v4 = sub_24F925E18();
    v24 = v5;
    v7 = v6;
    v21 = v8;
    KeyPath = swift_getKeyPath();
    v25 = swift_getKeyPath();
    v20 = v7 & 1;
    v79[0] = v7 & 1;
    LOBYTE(__dst[0]) = 0;
    v9 = sub_24F92B098();
    sub_24F9237D8();
    CTFontCreateWithNameAndOptions(v9, v89[0], 0, 0x20000uLL);

    v23 = sub_24F925A78();
    v22 = swift_getKeyPath();
    v33 = sub_24F9251C8();
    sub_24F9237D8();
    sub_24F9237D8();
    sub_24F927618();
    sub_24F9238C8();
    *&v36[4] = v86;
    *&v36[20] = v87;
    *&v36[36] = v88;
    v10 = sub_24F927618();
    v12 = v11;
    sub_24F5A2924(__dst);
    *&v37[0] = v10;
    *(&v37[0] + 1) = v12;
    v37[1] = __dst[0];
    v37[2] = __dst[1];
    v37[4] = __dst[3];
    v37[5] = __dst[4];
    *&v79[64] = __dst[3];
    *&v79[80] = __dst[4];
    v37[6] = __dst[5];
    v37[7] = __dst[6];
    *&v79[96] = __dst[5];
    *&v79[112] = __dst[6];
    *v79 = v37[0];
    *&v79[16] = __dst[0];
    v37[3] = __dst[2];
    *&v79[32] = __dst[1];
    *&v79[48] = __dst[2];
    v38[0] = v10;
    v38[1] = v12;
    v39 = __dst[0];
    v40 = __dst[1];
    v44 = __dst[5];
    v45 = __dst[6];
    v42 = __dst[3];
    v43 = __dst[4];
    v41 = __dst[2];
    sub_24E60169C(v37, v89, &qword_27F248B50);
    sub_24E601704(v38, &qword_27F248B50);
    sub_24F9237D8();
    *&v13 = v89[0] * 0.5 + -11.0;
    v18 = sub_24F927618();
    v19 = v14;
    *&__src[0] = v4;
    *(&__src[0] + 1) = v24;
    LOBYTE(__src[1]) = v20;
    *(&__src[1] + 1) = *v47;
    DWORD1(__src[1]) = *&v47[3];
    *(&__src[1] + 1) = v21;
    *&__src[2] = KeyPath;
    *(&__src[2] + 1) = 1;
    LOBYTE(__src[3]) = 0;
    *(&__src[3] + 1) = *v46;
    *(&__src[3] + 1) = v25;
    *&__src[4] = 0x3FE999999999999ALL;
    *(&__src[4] + 1) = v22;
    *&__src[5] = v23;
    DWORD1(__src[3]) = *&v46[3];
    DWORD2(__src[5]) = v33;
    *(&__src[5] + 12) = *v36;
    *(&__src[6] + 12) = *&v36[16];
    *(&__src[7] + 12) = *&v36[32];
    HIDWORD(__src[8]) = *&v36[48];
    __src[13] = *&v79[64];
    __src[14] = *&v79[80];
    __src[15] = *&v79[96];
    __src[16] = *&v79[112];
    __src[9] = *v79;
    __src[10] = *&v79[16];
    __src[11] = *&v79[32];
    __src[12] = *&v79[48];
    __src[17] = v13;
    *&__src[18] = v18;
    *(&__src[18] + 1) = v14;
    memcpy(__dst, __src, sizeof(__dst));
    v49[0] = v4;
    v49[1] = v24;
    v50 = v20;
    *v51 = *v47;
    *&v51[3] = *&v47[3];
    v52 = v21;
    v53 = KeyPath;
    v54 = 1;
    v55 = 0;
    *v56 = *v46;
    v57 = v25;
    v58 = 0x3FE999999999999ALL;
    v59 = v22;
    v60 = v23;
    *&v56[3] = *&v46[3];
    v61 = v33;
    v62 = *v36;
    v63 = *&v36[16];
    v64 = *&v36[32];
    v65 = *&v36[48];
    v70 = *&v79[64];
    v71 = *&v79[80];
    v72 = *&v79[96];
    v73 = *&v79[112];
    v66 = *v79;
    v67 = *&v79[16];
    v68 = *&v79[32];
    v69 = *&v79[48];
    v74 = v13;
    v75 = 0;
    v76 = v18;
    v77 = v19;
    sub_24E60169C(__src, v89, &qword_27F248B58);
    sub_24E601704(v49, &qword_27F248B58);
    *v79 = v32;
    *&v79[8] = v31;
    v79[16] = v27;
    *&v79[24] = v30;
    v79[32] = v26;
    *&v79[40] = v29;
    *&v79[48] = v28;
    memcpy(&v79[56], __dst, 0x130uLL);
    CGSizeMake(v79, v15, v16);
    memcpy(v89, v79, 0x168uLL);
  }

  return memcpy(a1, v89, 0x168uLL);
}