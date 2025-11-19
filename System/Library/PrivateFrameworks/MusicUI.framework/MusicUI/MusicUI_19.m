uint64_t sub_216878678()
{
  type metadata accessor for LibrarySearchResultsView.Model();
  swift_allocObject();
  return sub_216875C6C();
}

uint64_t sub_2168786B0()
{
  v0 = sub_217006894();
  v2 = v1;
  if (v0 == sub_217006894() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21700F7D4();
  }

  return v5 & 1;
}

uint64_t sub_216878748(uint64_t a1)
{
  v2 = sub_2170068C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  sub_21700F494();
  if (v12)
  {
    v13 = *(v3 + 16);
    v14 = (a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
    v19 = *(v3 + 72);
    v20 = v13;
    v21 = v3 + 16;
    v15 = (v3 + 8);
    do
    {
      v16 = v20;
      v20(v11, v14, v2);
      v16(v9, v11, v2);
      v16(v6, v9, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA560);
      swift_allocObject();
      sub_21687C698(v6);
      v17 = *v15;
      (*v15)(v9, v2);
      v17(v11, v2);
      sub_21700F464();
      sub_21700F4A4();
      sub_21700F4B4();
      sub_21700F474();
      v14 += v19;
      --v12;
    }

    while (v12);
  }

  return v22;
}

uint64_t sub_21687898C(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsListSection();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  sub_21700F494();
  if (v12)
  {
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_21687DB0C();
      sub_21687DB0C();
      sub_21687DB0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A8);
      swift_allocObject();
      sub_21687C83C();
      sub_21687DB64(v8, type metadata accessor for SearchResultsListSection);
      sub_21687DB64(v11, type metadata accessor for SearchResultsListSection);
      sub_21700F464();
      sub_21700F4A4();
      sub_21700F4B4();
      sub_21700F474();
      v13 += v14;
      --v12;
    }

    while (v12);
  }

  return v17;
}

double sub_216878BA0@<D0>(uint64_t a1@<X8>)
{
  sub_216878BE4(v1, &v5);
  v3 = v6;
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_216878BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_2170068C4();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  if (*(a1 + 8))
  {
    sub_216878FE8(&v35);
    v33 = v35;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5B8);
    sub_21687D644();
    sub_21687D6F4();
    result = sub_217009554();
    v15 = v35;
    v16 = v36;
  }

  else
  {
    v28 = v11;
    v32 = a2;
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    v19 = *(a1 + 40);
    type metadata accessor for LibrarySearchResultsView.Model();
    sub_21687DFB4(&qword_280E36798, type metadata accessor for LibrarySearchResultsView.Model);
    v30 = v18;
    v31 = v17;
    v29 = v19;
    sub_2170081B4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_217007DE4();

    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_216697664(v6, &qword_27CABA4E0);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v22 = v28 + 32;
      v23 = *(v28 + 32);
      v23(v13, v6, v7);
      v23(v10, v13, v7);
      v37 = *(a1 + 16);
      v24 = (*(v22 + 48) + 16) & ~*(v22 + 48);
      v21 = swift_allocObject();
      v23((v21 + v24), v10, v7);
      v25 = (v21 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
      v26 = *(a1 + 16);
      *v25 = *a1;
      v25[1] = v26;
      *(v25 + 25) = *(a1 + 25);

      sub_2166A6EA4();
      sub_2167759EC();
      v20 = sub_21687D7A4;
    }

    *&v33 = v20;
    *(&v33 + 1) = v21;
    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5B8);
    sub_21687D644();
    sub_21687D6F4();
    result = sub_217009554();
    v15 = v35;
    v16 = v36;
    a2 = v32;
  }

  *a2 = v15;
  *(a2 + 16) = v16;
  return result;
}

uint64_t sub_216878FE8@<X0>(uint64_t (**a1)()@<X8>)
{
  v48 = a1;
  v40 = sub_21700B264();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v3 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_21700B274();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_2170068C4();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = &v37 - v13;
  v14 = *(v1 + 3);
  v15 = *(v1 + 4);
  v16 = *(v1 + 40);
  type metadata accessor for LibrarySearchResultsView.Model();
  sub_21687DFB4(&qword_280E36798, type metadata accessor for LibrarySearchResultsView.Model);
  v45 = v15;
  v46 = v14;
  v44 = v16;
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v17 = v10;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_216697664(v9, &qword_27CABA4E0);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = v41 + 32;
    v41 = *(v41 + 32);
    v37 = v17;
    (v41)(v47, v9, v17);
    *v3 = xmmword_21701D000;
    (*(v38 + 104))(v3, *MEMORY[0x277CDF108], v40);
    sub_21700B284();
    v22 = v43;
    v23 = sub_21700E8A4();
    v40 = v23;
    *(v23 + 16) = 3;
    v24 = v42;
    v25 = v23 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v26 = *(v42 + 16);
    v26(v25, v6, v22);
    v27 = *(v24 + 72);
    v26(v25 + v27, v6, v22);
    v26(v25 + 2 * v27, v6, v22);
    (*(v24 + 8))(v6, v22);
    v28 = v39;
    v29 = v37;
    v30 = v41;
    (v41)(v39, v47, v37);
    v49 = *(v1 + 2);
    v31 = (*(v21 + 48) + 24) & ~*(v21 + 48);
    v32 = v31 + v11;
    v33 = (v31 + v11) & 0xFFFFFFFFFFFFFFF8;
    v20 = swift_allocObject();
    *(v20 + 16) = v40;
    v30(v20 + v31, v28, v29);
    *(v20 + v32) = 1;
    v34 = v20 + v33;
    *(v34 + 33) = *(v1 + 25);
    v35 = *v1;
    *(v34 + 24) = v1[1];
    *(v34 + 8) = v35;

    sub_2166A6EA4();
    result = sub_2167759EC();
    v19 = sub_21687DC14;
  }

  v36 = v48;
  *v48 = v19;
  v36[1] = v20;
  return result;
}

uint64_t sub_2168794FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v31 = a4;
  v40 = a1;
  v41 = a6;
  v38 = sub_217008A64();
  v8 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v39 = v9;
  v37 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2170068C4();
  v10 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v11;
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5D8);
  v30 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA638);
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  sub_217009C64();
  v42 = a2;
  v43 = a3;
  v44 = v31 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA640);
  sub_21687DCBC();
  sub_217008054();
  if (*(v32 + 16))
  {
    v45 = *(v32 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA610);
    sub_2166D9530(&unk_280E484F8, &qword_27CABA610);
    v32 = sub_217007E24();
  }

  else
  {
    sub_217007D94();
    sub_2166D9530(&qword_27CABA600, &qword_27CABA5D8);
    v32 = sub_217007E24();
    (*(v30 + 8))(v15, v13);
  }

  v19 = v12;
  v20 = v12;
  v21 = v36;
  (*(v10 + 16))(v20, a3, v36);
  v23 = v37;
  v22 = v38;
  (*(v8 + 16))(v37, v40, v38);
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = (v35 + *(v8 + 80) + v24) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v10 + 32))(v26 + v24, v19, v21);
  (*(v8 + 32))(v26 + v25, v23, v22);
  v27 = v41;
  (*(v33 + 32))(v41, v18, v34);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA660);
  *(v27 + *(result + 52)) = v32;
  v29 = (v27 + *(result + 56));
  *v29 = sub_21687DEA4;
  v29[1] = v26;
  return result;
}

uint64_t sub_2168799CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217009714();
  MEMORY[0x28223BE20](v2);
  sub_21700DF14();
  sub_2170093B4();
  sub_21687DFB4(&qword_280E2A8F0, MEMORY[0x277CE0428]);
  sub_21700F9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA668);
  sub_21687DFFC();
  sub_21700B484();
  v3 = sub_217009CA4();
  sub_217007F24();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA640);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_216879B80@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v12[1] = a3;
  v5 = sub_2170068C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA618);
  MEMORY[0x28223BE20](v8);
  sub_2170068A4();
  swift_getKeyPath();
  (*(v6 + 16))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 17) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2 & 1;
  (*(v6 + 32))(v10 + v9, v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  type metadata accessor for TopSearchLockupView(0);
  sub_2166D9530(&qword_280E2A478, &qword_27CABA618);
  sub_2166C32C0();
  sub_21687DFB4(&qword_280E3CE50, type metadata accessor for TopSearchLockupView);
  return sub_21700B154();
}

uint64_t sub_216879DDC@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TopSearchLockup();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = *(v7 + 16);
  v14(v9, a1, v6);
  v15 = sub_217006884();
  sub_216879FC8(v9, a2 & 1, v15 & 1, v13);
  sub_21687DB0C();
  v14(v9, a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF980);
  swift_allocObject();
  sub_216DC2A50();
  sub_2168027B0(v16, a3);
  return sub_21687DB64(v13, type metadata accessor for TopSearchLockup);
}

uint64_t sub_216879FC8@<X0>(char *a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v78 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB89C0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v70 - v19;
  v21 = sub_2170067A4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v82[0] = sub_217006784();
  *(&v82[0] + 1) = v25;
  sub_2166C32C0();
  sub_21700F364();
  LOBYTE(v79) = 0;
  sub_216DF6204(&v79, v82);
  v26 = sub_216C74700();
  v75 = v27;
  v76 = v26;
  if (a3)
  {
    sub_216DF6318();
  }

  else
  {
    v28 = sub_216C756EC();
  }

  v73 = v29;
  v74 = v28;
  v72 = sub_216C75FE8();
  (*(v22 + 16))(v24, a1, v21);
  v30 = (*(v22 + 88))(v24, v21);
  if (v30 == *MEMORY[0x277D2A400])
  {
LABEL_5:
    v71 = 0;
    goto LABEL_9;
  }

  if (v30 == *MEMORY[0x277D2A418])
  {
    goto LABEL_7;
  }

  if (v30 == *MEMORY[0x277D2A438] || v30 == *MEMORY[0x277D2A3C8])
  {
    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x277D2A428])
  {
    goto LABEL_7;
  }

  if (v30 == *MEMORY[0x277D2A388] || v30 == *MEMORY[0x277D2A408])
  {
    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x277D2A3B0] || v30 == *MEMORY[0x277D2A3B8])
  {
LABEL_30:
    v31 = 2;
    goto LABEL_8;
  }

  if (v30 == *MEMORY[0x277D2A440] || v30 == *MEMORY[0x277D2A450])
  {
    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x277D2A3C0] || v30 == *MEMORY[0x277D2A3D0])
  {
LABEL_7:
    v31 = 1;
    goto LABEL_8;
  }

  if (v30 == *MEMORY[0x277D2A3F8] || v30 == *MEMORY[0x277D2A430])
  {
    goto LABEL_5;
  }

  if (v30 == *MEMORY[0x277D2A458] || v30 == *MEMORY[0x277D2A448])
  {
    goto LABEL_30;
  }

  if (v30 == *MEMORY[0x277D2A420] || v30 == *MEMORY[0x277D2A3D8])
  {
    goto LABEL_5;
  }

  v31 = 2 * (v30 == *MEMORY[0x277D2A3E0]);
LABEL_8:
  v71 = v31;
LABEL_9:
  v32 = *(v22 + 8);
  v32(v24, v21);
  LOBYTE(v79) = 0;
  sub_216E017AC(&v79, 0, v20);
  v33 = sub_21700D3B4();
  if (__swift_getEnumTagSinglePayload(v20, 1, v33) == 1)
  {
    sub_216697664(v20, &qword_27CAB89C0);
    v79 = 0u;
    v80 = 0u;
    v81 = 0;
  }

  else
  {
    *(&v80 + 1) = v33;
    v81 = MEMORY[0x277D21D10];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v79);
    (*(*(v33 - 8) + 32))(boxed_opaque_existential_1, v20, v33);
  }

  sub_217006794();
  v35 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v35);
  sub_216C7CDA8(v14, v11, v17);
  v32(a1, v21);
  v36 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v36);
  v37 = type metadata accessor for TopSearchLockup();
  v38 = a4 + v37[5];
  v39 = v85;
  *v38 = v84;
  *(v38 + 16) = v39;
  *(v38 + 32) = v86;
  v40 = a4 + v37[6];
  v41 = v82[1];
  *v40 = v82[0];
  *(v40 + 16) = v41;
  *(v40 + 32) = v83;
  v42 = (a4 + v37[8]);
  v43 = v75;
  *v42 = v76;
  v42[1] = v43;
  v44 = (a4 + v37[9]);
  v45 = v73;
  *v44 = v74;
  v44[1] = v45;
  v46 = (a4 + v37[10]);
  *v46 = 0;
  v46[1] = 0;
  *(a4 + v37[11]) = v72 & 1;
  sub_2167A4788();
  v47 = a4 + v37[12];
  *(v47 + 32) = 0;
  *v47 = 0u;
  *(v47 + 16) = 0u;
  v48 = a4 + v37[13];
  *(v48 + 32) = 0;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(a4 + v37[14]) = v71;
  v49 = a4 + v37[17];
  v50 = v80;
  *v49 = v79;
  *(v49 + 16) = v50;
  *(v49 + 32) = v81;
  v51 = v37[18];
  v52 = type metadata accessor for ContentDescriptor();
  __swift_storeEnumTagSinglePayload(a4 + v51, 1, 1, v52);
  v53 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v17, 1, v53) == 1)
  {
    sub_216697664(v17, &qword_27CAB6D60);
    v54 = v37[19];
    v55 = type metadata accessor for LockupArtwork();
    v56 = a4 + v54;
    v57 = 1;
  }

  else
  {
    v58 = v37[19];
    sub_21687DBBC();
    v59 = type metadata accessor for LockupArtwork();
    swift_storeEnumTagMultiPayload();
    v56 = a4 + v58;
    v57 = 0;
    v55 = v59;
  }

  result = __swift_storeEnumTagSinglePayload(v56, v57, 1, v55);
  *(a4 + v37[15]) = v78 & 1;
  v61 = (a4 + v37[7]);
  *v61 = 0;
  v61[1] = 0;
  *(a4 + v37[16]) = 0;
  return result;
}

uint64_t sub_21687A740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a1;
  v50 = a4;
  v49 = sub_217008A64();
  v41 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = v6;
  v48 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2170068C4();
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = v8;
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5D8);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v35 = &v35 - v10;
  v11 = sub_2170086D4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5E0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5E8);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v20 = &v35 - v19;
  v44 = a2;
  v51 = a2;
  v52 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5F0);
  sub_21687D838();
  sub_217009ED4();
  sub_2170086C4();
  sub_2166D9530(&qword_280E2A6C8, &qword_27CABA5E0);
  v39 = v20;
  sub_21700ABC4();
  (*(v12 + 8))(v14, v11);
  (*(v16 + 8))(v18, v15);
  if (*(a3 + 16))
  {
    v53 = *(a3 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA610);
    sub_2166D9530(&unk_280E484F8, &qword_27CABA610);
    v21 = sub_217007E24();
  }

  else
  {
    v22 = v35;
    sub_217007D94();
    sub_2166D9530(&qword_27CABA600, &qword_27CABA5D8);
    v23 = v37;
    v21 = sub_217007E24();
    (*(v36 + 8))(v22, v23);
  }

  v24 = v38;
  v25 = v45;
  (*(v7 + 16))(v38, v44, v45);
  v26 = v41;
  v27 = v48;
  v28 = v49;
  (*(v41 + 16))(v48, v47, v49);
  v29 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v30 = (v43 + *(v26 + 80) + v29) & ~*(v26 + 80);
  v31 = swift_allocObject();
  (*(v7 + 32))(v31 + v29, v24, v25);
  (*(v26 + 32))(v31 + v30, v27, v28);
  v32 = v50;
  (*(v40 + 32))(v50, v39, v42);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA608);
  *(v32 + *(result + 52)) = v21;
  v34 = (v32 + *(result + 56));
  *v34 = sub_21687D9A8;
  v34[1] = v31;
  return result;
}

uint64_t sub_21687AD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v23 = sub_2170068C4();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA620);
  MEMORY[0x28223BE20](v25);
  v24 = &v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA618);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_2170068A4();
  (*(v9 + 16))(v12, v14, v8);
  sub_2166D9530(&qword_280E2A478, &qword_27CABA618);
  sub_2170075C4();
  (*(v9 + 8))(v14, v8);
  swift_getKeyPath();
  v15 = v23;
  (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v23);
  v29 = *(a2 + 16);
  v27 = *(a2 + 24);
  v28 = *(a2 + 40);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = *(a2 + 16);
  *v18 = *a2;
  v18[1] = v19;
  *(v18 + 25) = *(a2 + 25);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21687DA60;
  *(v20 + 24) = v17;

  sub_2166A6EA4();
  sub_2166A6EA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5F8);
  sub_2166D9530(&qword_280E48628, &qword_27CABA620);
  sub_2166C32C0();
  sub_21687D8BC();
  return sub_21700B154();
}

uint64_t sub_21687B174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v29 = a3;
  v34 = a5;
  v35 = a1;
  v36 = sub_21700DAF4();
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v30 = type metadata accessor for TopSearchLockupView(0);
  MEMORY[0x28223BE20](v30);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2170067A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TopSearchLockup();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  v20 = *(v13 + 16);
  v20(v15, a2, v12);
  v21 = sub_217006884();
  sub_216879FC8(v15, 1, v21 & 1, v19);
  sub_21687DB0C();
  v20(v15, a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF980);
  swift_allocObject();
  sub_216DC2A50();
  sub_2168027B0(v22, v11);
  sub_21687B59C();
  v23 = sub_21700D7A4();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v23);
  v24 = v31;
  sub_21700DAE4();
  sub_21687DFB4(&qword_280E3CE50, type metadata accessor for TopSearchLockupView);
  v25 = v34;
  sub_21700A1C4();
  (*(v33 + 8))(v24, v36);
  sub_216697664(v9, &qword_27CAB6D58);
  sub_21687DB64(v11, type metadata accessor for TopSearchLockupView);
  sub_21687DB64(v19, type metadata accessor for TopSearchLockup);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5F8);
  v28 = v25 + *(result + 36);
  *v28 = 0;
  *(v28 + 8) = KeyPath;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_21687B59C()
{
  v0 = sub_21700D704();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21700D774();
  MEMORY[0x28223BE20](v1 - 8);
  sub_217006784();
  sub_21700D764();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  v3 = MEMORY[0x277D837D0];
  strcpy((inited + 32), "impressionType");
  *(inited + 47) = -18;
  *(inited + 72) = v3;
  *(inited + 48) = 0x4C746E65746E6F43;
  *(inited + 56) = 0xEF6D657449747369;
  sub_21700E384();
  sub_21700D6F4();
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_217015230;
  *(v4 + 32) = 1684957547;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 48) = 0x497972617262696CLL;
  *(v4 + 56) = 0xEB000000006D6574;
  *(v4 + 72) = v3;
  *(v4 + 80) = 1701667182;
  *(v4 + 88) = 0xE400000000000000;
  *(v4 + 96) = 0x497972617262696CLL;
  *(v4 + 104) = 0xEB000000006D6574;
  *(v4 + 120) = v3;
  *(v4 + 128) = 25705;
  *(v4 + 168) = v3;
  *(v4 + 136) = 0xE200000000000000;
  *(v4 + 144) = 0x497972617262696CLL;
  *(v4 + 152) = 0xEB000000006D6574;
  sub_21700E384();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_217013DA0;
  strcpy((v5 + 32), "locationType");
  *(v5 + 45) = 0;
  *(v5 + 46) = -5120;
  *(v5 + 72) = v3;
  *(v5 + 48) = 0x4C746E65746E6F43;
  *(v5 + 56) = 0xEF6D657449747369;
  sub_21700E384();
  return sub_21700D784();
}

uint64_t sub_21687B860(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA630);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_21687BADC()
{
  sub_21700B544();
  sub_2166C32C0();
  return sub_217008A54();
}

uint64_t type metadata accessor for LibrarySearchResultsView.Model()
{
  result = qword_280E36788;
  if (!qword_280E36788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21687BC20()
{
  sub_21687BCB0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21687BCB0()
{
  if (!qword_280E48480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA4E0);
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48480);
    }
  }
}

uint64_t sub_21687BD2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_21687BD6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibrarySearchResultsView.LayoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21687BEB8()
{
  result = qword_27CABA4F0;
  if (!qword_27CABA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA4F0);
  }

  return result;
}

unint64_t sub_21687BF84()
{
  result = qword_280E2AA58;
  if (!qword_280E2AA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA510);
    sub_21687C03C();
    sub_2166D9530(qword_280E48638, &qword_27CAB9140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA58);
  }

  return result;
}

unint64_t sub_21687C03C()
{
  result = qword_280E2AF98;
  if (!qword_280E2AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA518);
    sub_21687C0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF98);
  }

  return result;
}

unint64_t sub_21687C0C8()
{
  result = qword_280E2B0F8;
  if (!qword_280E2B0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA520);
    sub_21687C184();
    sub_21687DFB4(&qword_280E460E0, _s19PageMetricsModifierVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0F8);
  }

  return result;
}

unint64_t sub_21687C184()
{
  result = qword_280E2A5F8;
  if (!qword_280E2A5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA528);
    sub_21687C208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A5F8);
  }

  return result;
}

unint64_t sub_21687C208()
{
  result = qword_280E2AA48;
  if (!qword_280E2AA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA530);
    sub_2166D9530(&qword_280E2B360, &qword_27CABA538);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA48);
  }

  return result;
}

unint64_t sub_21687C2EC()
{
  result = qword_280E2A438;
  if (!qword_280E2A438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA4F8);
    sub_21687DFB4(&qword_280E2A440, MEMORY[0x277CD7D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A438);
  }

  return result;
}

void *sub_21687C3A0@<X0>(_OWORD *a1@<X1>, void *a2@<X8>)
{
  sub_217008444();
  v5 = sub_216A1204C(v4);
  v6 = qword_217020D70[v5];
  KeyPath = swift_getKeyPath();
  v8 = a1[1];
  *v16 = *a1;
  *&v16[16] = v8;
  v9 = a1[3];
  *&v16[32] = a1[2];
  *&v16[48] = v9;
  v10 = swift_getKeyPath();
  __src[0] = *v16;
  __src[1] = *&v16[16];
  __src[2] = *&v16[32];
  __src[3] = *&v16[48];
  *&__src[4] = KeyPath;
  BYTE8(__src[4]) = v5;
  memcpy(__dst, __src, 0x49uLL);
  v13[0] = *v16;
  v13[1] = *&v16[16];
  v13[2] = *&v16[32];
  v13[3] = *&v16[48];
  v14 = KeyPath;
  v15 = v5;
  sub_2166A6EA4();
  sub_2166A6EA4();
  sub_216697664(v13, &qword_27CABA588);
  memcpy(v16, __dst, 0x50uLL);
  *&v16[80] = v10;
  *&v16[88] = 0;
  *&v16[96] = v6;
  *&v16[104] = 0;
  *&v16[112] = v6;
  memcpy(v17, __dst, sizeof(v17));
  v18 = v10;
  v19 = 0;
  v20 = v6;
  v21 = 0;
  v22 = v6;
  sub_2166A6EA4();
  sub_216697664(v17, &qword_27CABA590);
  return memcpy(a2, v16, 0x78uLL);
}

unint64_t sub_21687C5A0()
{
  result = qword_280E42940;
  if (!qword_280E42940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA550);
    sub_21687C624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E42940);
  }

  return result;
}

unint64_t sub_21687C624()
{
  result = qword_280E42948;
  if (!qword_280E42948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E42948);
  }

  return result;
}

char *sub_21687C698(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = sub_2170068C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v1[*(v3 + 144)], a1, v5);
  v8 = *(v6 + 32);
  v8(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  v8((v10 + v9), &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  *(v1 + 2) = sub_21687CE80;
  *(v1 + 3) = v10;
  return v1;
}

uint64_t *sub_21687C83C()
{
  v1 = *v0;
  v2 = type metadata accessor for SearchResultsListSection();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_21687DB0C();
  sub_21687DBBC();
  v8 = (v7 + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_21687DBBC();
  *(v9 + v8) = v1;
  v0[2] = sub_21687D4BC;
  v0[3] = v9;
  return v0;
}

uint64_t sub_21687C9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2170068C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA568);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  sub_2166A6DF8(a1, v31);
  v19 = swift_dynamicCast();
  v29 = v5;
  if (v19)
  {
    v20 = *(v5 + 16);
    v20(v18, v30 + *(*v30 + 144), v4);

    __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v4);
    v20 = *(v5 + 16);
  }

  v20(v16, a2, v4);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v4);
  v21 = *(v7 + 48);
  sub_2166A6EA4();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) != 1)
  {
    sub_2166A6EA4();
    if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v4) != 1)
    {
      v23 = v28;
      v24 = v29;
      (*(v29 + 32))(v28, &v9[v21], v4);
      sub_21687DFB4(&qword_280E4A450, MEMORY[0x277D2A520]);
      v22 = sub_21700E494();
      v25 = *(v24 + 8);
      v25(v23, v4);
      sub_216697664(v16, &qword_27CABA4E0);
      sub_216697664(v18, &qword_27CABA4E0);
      v25(v13, v4);
      sub_216697664(v9, &qword_27CABA4E0);
      return v22 & 1;
    }

    sub_216697664(v16, &qword_27CABA4E0);
    sub_216697664(v18, &qword_27CABA4E0);
    (*(v29 + 8))(v13, v4);
    goto LABEL_9;
  }

  sub_216697664(v16, &qword_27CABA4E0);
  sub_216697664(v18, &qword_27CABA4E0);
  if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v4) != 1)
  {
LABEL_9:
    sub_216697664(v9, &qword_27CABA568);
    v22 = 0;
    return v22 & 1;
  }

  sub_216697664(v9, &qword_27CABA4E0);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_21687CEAC(uint64_t a1)
{
  v2 = type metadata accessor for SearchResultsListSection();
  MEMORY[0x28223BE20](v2);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA598);
  MEMORY[0x28223BE20](v5);
  v7 = &v24[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v24[-v15];
  sub_2166A6DF8(a1, v24);
  if (swift_dynamicCast())
  {
    sub_21687DB0C();

    v17 = v16;
    v18 = 0;
  }

  else
  {
    v17 = v16;
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, 1, v2);
  sub_21687DB0C();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v2);
  v19 = *(v5 + 48);
  sub_2166A6EA4();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v2) == 1)
  {
    sub_216697664(v13, &qword_27CABA5A0);
    sub_216697664(v16, &qword_27CABA5A0);
    if (__swift_getEnumTagSinglePayload(&v7[v19], 1, v2) == 1)
    {
      sub_216697664(v7, &qword_27CABA5A0);
      v20 = 1;
      return v20 & 1;
    }

LABEL_9:
    sub_216697664(v7, &qword_27CABA598);
    v20 = 0;
    return v20 & 1;
  }

  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(&v7[v19], 1, v2) == 1)
  {
    sub_216697664(v13, &qword_27CABA5A0);
    sub_216697664(v16, &qword_27CABA5A0);
    sub_21687DB64(v10, type metadata accessor for SearchResultsListSection);
    goto LABEL_9;
  }

  sub_21687DBBC();
  if (*v10 == *v4 && v10[1] == v4[1])
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_21700F7D4();
  }

  sub_216697664(v13, &qword_27CABA5A0);
  sub_216697664(v16, &qword_27CABA5A0);
  sub_21687DB64(v4, type metadata accessor for SearchResultsListSection);
  sub_21687DB64(v10, type metadata accessor for SearchResultsListSection);
  sub_216697664(v7, &qword_27CABA5A0);
  return v20 & 1;
}

uint64_t sub_21687D2F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  sub_2166A6EA4();
  return sub_216875AD4(v2);
}

uint64_t sub_21687D3A0()
{
  v0 = sub_21700B8D4();
  OUTLINED_FUNCTION_36(v0);

  return sub_2168778C0();
}

void *sub_21687D400@<X0>(_OWORD *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = a1[3];
  v5[2] = a1[2];
  v5[3] = v3;
  return sub_21687C3A0(v5, a2);
}

void *sub_21687D434()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_8_21();

  return sub_21687D400(v1, v2);
}

uint64_t sub_21687D4E8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = a2(0);
  OUTLINED_FUNCTION_2(v5);
  OUTLINED_FUNCTION_26_2();
  v8 = *(v3 + v7);

  return a3(a1, v3 + v6, v8);
}

uint64_t sub_21687D58C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21687D5CC(uint64_t result, int a2, int a3)
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

unint64_t sub_21687D644()
{
  result = qword_280E2AD50;
  if (!qword_280E2AD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA5B0);
    sub_2166D9530(&qword_280E2AD58, &qword_27CABA5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD50);
  }

  return result;
}

unint64_t sub_21687D6F4()
{
  result = qword_280E2AD40;
  if (!qword_280E2AD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA5B8);
    sub_2166D9530(&qword_280E2AD48, &qword_27CABA5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AD40);
  }

  return result;
}

uint64_t sub_21687D7A4()
{
  v0 = OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_2(v0);
  OUTLINED_FUNCTION_26_2();
  v1 = OUTLINED_FUNCTION_8_21();

  return sub_21687A740(v1, v2, v3, v4);
}

unint64_t sub_21687D838()
{
  result = qword_280E2A4F0;
  if (!qword_280E2A4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA5F0);
    sub_21687D8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A4F0);
  }

  return result;
}

unint64_t sub_21687D8BC()
{
  result = qword_280E2B1C8;
  if (!qword_280E2B1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA5F8);
    type metadata accessor for TopSearchLockupView(255);
    sub_21687DFB4(&qword_280E3CE50, type metadata accessor for TopSearchLockupView);
    swift_getOpaqueTypeConformance2();
    sub_21681FA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1C8);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{
  sub_2170068C4();
  OUTLINED_FUNCTION_34();
  v0 = OUTLINED_FUNCTION_11_22();
  v1(v0);

  sub_2166B8588();

  return swift_deallocObject();
}

uint64_t sub_21687DA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2170068C4();
  OUTLINED_FUNCTION_2(v7);
  OUTLINED_FUNCTION_26_2();

  return sub_21687B174(a1, a2, v3 + v8, v3 + v9, a3);
}

uint64_t sub_21687DB0C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21687DB64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21687DBBC()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_21687DC14()
{
  v0 = OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_2(v0);
  v1 = OUTLINED_FUNCTION_8_21();

  return sub_2168794FC(v1, v2, v3, v4, v5, v6);
}

unint64_t sub_21687DCBC()
{
  result = qword_27CABA648;
  if (!qword_27CABA648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA640);
    sub_2166D9530(&qword_27CABA650, &qword_27CABA658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA648);
  }

  return result;
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_2170068C4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_217008A64();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return swift_deallocObject();
}

uint64_t sub_21687DEBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_2170068C4();
  OUTLINED_FUNCTION_2(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_217008A64();
  OUTLINED_FUNCTION_36(v10);
  return sub_21687B8CC(a1, v2 + v7, v2 + ((v7 + v9 + *(v11 + 80)) & ~*(v11 + 80)), a2);
}

uint64_t sub_21687DFB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21687DFFC()
{
  result = qword_27CABA670;
  if (!qword_27CABA670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA668);
    sub_21687DFB4(&qword_280E3CE50, type metadata accessor for TopSearchLockupView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA670);
  }

  return result;
}

uint64_t sub_21687E0B0()
{
  v0 = OUTLINED_FUNCTION_7_27();
  OUTLINED_FUNCTION_36(v0);
  v1 = OUTLINED_FUNCTION_8_21();

  return sub_216879DDC(v1, v2, v3);
}

uint64_t sub_21687E120(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_21687E19C()
{
  result = qword_280E2AA40;
  if (!qword_280E2AA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA680);
    sub_21687D644();
    sub_21687D6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA40);
  }

  return result;
}

uint64_t sub_21687E29C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3)
  {
    return sub_21687EB64(*a1, v3, a2);
  }

  else
  {
    return sub_21687E2B8(a2);
  }
}

uint64_t sub_21687E2B8(uint64_t a1)
{
  v2 = sub_21700D2A4();
  v54 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v52 - v6;
  v7 = sub_217006224();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v55);
  v56 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_21700D284();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v66 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowAction(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v62 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v52 - v15;
  v16 = type metadata accessor for SocialProfilePageIntent();
  MEMORY[0x28223BE20](v16);
  v67 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v21 = v70;
  if (*(v70 + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded) == 1)
  {
    v53 = v70;
    v22 = sub_216CAC650();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      v24 = 25965;
    }

    v52 = a1;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE200000000000000;
    }

    v73 = 1;
    v26 = *(v18 + 24);
    v27 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(&v20[v26], 1, 1, v27);
    *v20 = 18;
    *(v20 + 1) = 0;
    *(v20 + 2) = 0;
    *(v20 + 3) = v24;
    *(v20 + 4) = v25;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 72) = 0u;
    *(v20 + 88) = 0u;
    *(v20 + 13) = 0;
    v20[112] = 1;
    v28 = v67;
    sub_21687F3D4(v20, v67, type metadata accessor for ContentDescriptor);
    v29 = *(v16 + 24);
    v30 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v28 + v29, 1, 1, v30);
    *(v28 + *(v16 + 20)) = 1;
    sub_21700E094();
    v31 = v66;
    sub_21700D234();
    v32 = v56;
    v56[3] = v16;
    v32[4] = sub_21687F38C(&qword_27CAB94A0, type metadata accessor for SocialProfilePageIntent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    sub_21687F3D4(v28, boxed_opaque_existential_1, type metadata accessor for SocialProfilePageIntent);
    swift_storeEnumTagMultiPayload();
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    __swift_storeEnumTagSinglePayload(&v14[v12[8]], 1, 1, v27);
    v34 = v12[11];
    v35 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(&v14[v34], 1, 1, v35);
    __swift_storeEnumTagSinglePayload(&v14[v12[9]], 1, 1, v30);
    v36 = &v14[v12[10]];
    *(v36 + 32) = 0;
    *v36 = 0u;
    *(v36 + 16) = 0u;
    v38 = v57;
    v37 = v58;
    (*(v57 + 16))(v14, v31, v58);
    sub_21687F3D4(v32, &v14[v12[5]], type metadata accessor for FlowAction.Destination);
    v39 = v59;
    sub_217006214();
    v40 = sub_2170061F4();
    v42 = v41;
    (*(v60 + 8))(v39, v61);
    (*(v38 + 8))(v66, v37);
    sub_21687F43C(v32, type metadata accessor for FlowAction.Destination);
    v43 = &v14[v12[6]];
    *v43 = v40;
    v43[1] = v42;
    v14[v12[7]] = 1;
    sub_2167A66B4(&v70, v36);
    *(&v71 + 1) = v12;
    v72 = sub_21687F38C(qword_280E45BB8, type metadata accessor for FlowAction);
    v44 = __swift_allocate_boxed_opaque_existential_1(&v70);
    sub_21687F3D4(v14, v44, type metadata accessor for FlowAction);
    v46 = v63;
    v45 = v64;
    v47 = v65;
    (*(v64 + 104))(v63, *MEMORY[0x277D21E18], v65);
    v48 = v68;
    v49 = v69;
    v50 = sub_21700D5E4();

    (*(v45 + 8))(v46, v47);
    sub_21687F43C(v14, type metadata accessor for FlowAction);
    (*(v62 + 8))(v48, v49);
    sub_21687F43C(v67, type metadata accessor for SocialProfilePageIntent);
    sub_21687F43C(v20, type metadata accessor for ContentDescriptor);
    __swift_destroy_boxed_opaque_existential_1Tm(&v70);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
    (*(v54 + 104))(v4, *MEMORY[0x277D21CA0], v2);
    v50 = sub_21700E1F4();
  }

  return v50;
}

uint64_t sub_21687EB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v55 - v7;
  v70 = sub_217006224();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v56);
  v66 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_21700D284();
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x28223BE20](v10);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FlowAction(0);
  MEMORY[0x28223BE20](v63);
  v60 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v69 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v55 - v13;
  v14 = type metadata accessor for SocialProfilePageIntent();
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContentDescriptor();
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  v76 = a3;
  sub_21700E094();
  v61 = v77;
  v21 = sub_216CAC650();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 25965;
  }

  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE200000000000000;
  }

  v25 = *(v18 + 32);
  v26 = 1;
  v57 = sub_217005EF4();
  __swift_storeEnumTagSinglePayload(&v20[v25], 1, 1, v57);
  *v20 = 18;
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *(v20 + 3) = a1;
  *(v20 + 4) = a2;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 13) = 0;
  v20[112] = 1;
  v62 = v20;
  v27 = v20;
  v28 = v16;
  sub_21687F3D4(v27, v16, type metadata accessor for ContentDescriptor);
  if (v23 != a1 || v24 != a2)
  {
    v26 = sub_21700F7D4();
  }

  sub_21700DF14();

  v30 = *(v14 + 24);
  v31 = type metadata accessor for ReferrerInfo();
  __swift_storeEnumTagSinglePayload(&v16[v30], 1, 1, v31);
  v16[*(v14 + 20)] = v26 & 1;
  v58 = v16;
  sub_21700E094();
  v32 = v59;
  sub_21700D234();
  v33 = v66;
  v66[3] = v14;
  v33[4] = sub_21687F38C(&qword_27CAB94A0, type metadata accessor for SocialProfilePageIntent);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_21687F3D4(v28, boxed_opaque_existential_1, type metadata accessor for SocialProfilePageIntent);
  swift_storeEnumTagMultiPayload();
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v35 = v63;
  v36 = v60;
  __swift_storeEnumTagSinglePayload(&v60[*(v63 + 32)], 1, 1, v57);
  v37 = v35[11];
  v38 = type metadata accessor for Page.Header(0);
  __swift_storeEnumTagSinglePayload(v36 + v37, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v36 + v35[9], 1, 1, v31);
  v39 = v36 + v35[10];
  *(v39 + 32) = 0;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  v40 = v64;
  v41 = v65;
  (*(v64 + 16))(v36, v32, v65);
  sub_21687F3D4(v33, v36 + v35[5], type metadata accessor for FlowAction.Destination);
  v42 = v67;
  sub_217006214();
  v43 = sub_2170061F4();
  v45 = v44;
  (*(v68 + 8))(v42, v70);
  (*(v40 + 8))(v32, v41);
  sub_21687F43C(v33, type metadata accessor for FlowAction.Destination);
  v46 = (v36 + v35[6]);
  *v46 = v43;
  v46[1] = v45;
  *(v36 + v35[7]) = 0;
  sub_2167A66B4(&v77, v39);
  *(&v78 + 1) = v35;
  v79 = sub_21687F38C(qword_280E45BB8, type metadata accessor for FlowAction);
  v47 = __swift_allocate_boxed_opaque_existential_1(&v77);
  sub_21687F3D4(v36, v47, type metadata accessor for FlowAction);
  v49 = v71;
  v48 = v72;
  v50 = v73;
  (*(v72 + 104))(v71, *MEMORY[0x277D21E18], v73);
  v51 = v75;
  v52 = v74;
  v53 = sub_21700D5E4();

  (*(v48 + 8))(v49, v50);
  sub_21687F43C(v36, type metadata accessor for FlowAction);
  (*(v69 + 8))(v52, v51);
  sub_21687F43C(v58, type metadata accessor for SocialProfilePageIntent);
  sub_21687F43C(v62, type metadata accessor for ContentDescriptor);
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  return v53;
}

uint64_t sub_21687F38C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21687F3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21687F43C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21687F49C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v20[0] = v6;
  v7 = type metadata accessor for ReplaySwiftMusicContentView();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v11 + 28);
  memset(v21, 0, sizeof(v21));
  sub_216681B04(v21, v23, &qword_27CABA690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA690);
  sub_21700AEA4();
  sub_216697664(v21, &qword_27CABA690);
  v13 = v7[9];
  *(v10 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  v14 = v10 + v7[10];
  v23[0] = 0;
  sub_21700AEA4();
  v15 = *(&v21[0] + 1);
  *v14 = v21[0];
  *(v14 + 1) = v15;
  v16 = type metadata accessor for MappedReplayModel(0);
  sub_216BF47DC(*(v5 + *(v16 + 20)), *(v5 + *(v16 + 20) + 8), *(v5 + *(v16 + 20) + 16), *(v5 + *(v16 + 20) + 24), 0, 0, v21);
  if (*(&v21[0] + 1))
  {
    memcpy(v23, v21, 0x70uLL);
    v17 = sub_216880F68(v5, v10 + v7[5], type metadata accessor for MappedReplayModel);
    *v10 = v1;
    *(v10 + v7[6]) = v3;
    MEMORY[0x28223BE20](v17);
    v20[-2] = v5;
    sub_216C2E88C();
    v22 = 0;
    sub_21687F88C(v21, v10 + v12);
    v18 = (v10 + v7[8]);
    memcpy(v18, v23, 0x70uLL);
    v18[14] = 0;
    v19 = v20[0];
    sub_216880F68(v10, v20[0], type metadata accessor for ReplaySwiftMusicContentView);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v7);
    OUTLINED_FUNCTION_1_40();
    sub_216880FD4(v10, type metadata accessor for ReplaySwiftMusicContentView);
  }

  else
  {

    sub_216697664(v21, &qword_27CABA698);
    OUTLINED_FUNCTION_1_40();
    sub_216697664(v10 + v12, &qword_27CABA6A0);
    sub_216697664(v10 + v13, &qword_27CAB84D8);

    __swift_storeEnumTagSinglePayload(v20[0], 1, 1, v7);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t type metadata accessor for ReplaySwiftMusicContentView()
{
  result = qword_27CABA6A8;
  if (!qword_27CABA6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21687F804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  if (*(a1 + 96) == *(a2 + 8) && v2 == *(a1 + 104))
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4() & 1;
  }
}

uint64_t sub_21687F88C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21687F924()
{
  type metadata accessor for ObjectGraph();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MappedReplayModel(319);
    if (v1 <= 0x3F)
    {
      sub_21687FA98();
      if (v2 <= 0x3F)
      {
        sub_21687FB2C(319, &qword_280E2A5D0, &qword_27CABA690, &unk_217020E30, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_21687FB90(319, &qword_27CABA6C0);
          if (v4 <= 0x3F)
          {
            sub_21687FB2C(319, &qword_280E2B440, &qword_27CAB8600, &unk_217020AD0, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_21687FB90(319, &qword_280E2A590);
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

void sub_21687FA98()
{
  if (!qword_27CABA6B8)
  {
    type metadata accessor for ReplayModel(255);
    sub_216880D74(&qword_27CAB6FA0, type metadata accessor for ReplayModel);
    v0 = type metadata accessor for CatalogPagePresenter();
    if (!v1)
    {
      atomic_store(v0, &qword_27CABA6B8);
    }
  }
}

void sub_21687FB2C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_21687FB90(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21700AEE4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21687FBF8()
{
  OUTLINED_FUNCTION_49();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6C8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  type metadata accessor for ReplaySwiftMusicContentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6A0);
  sub_21700AED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D0);
  sub_21700AED4();
  sub_21687FE5C();
  v6 = v5;
  sub_216697664(&v12, &qword_27CAB8C98);
  sub_216697664(&v13, &qword_27CABA6D8);
  sub_217009C64();
  v10 = v0;
  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6E0);
  sub_2166D9530(&qword_27CABA6E8, &qword_27CABA6E0);
  sub_217008054();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6F0);
  type metadata accessor for ReplayPageGeometry(0);
  sub_217007FF4();
  KeyPath = swift_getKeyPath();
  v8 = &v4[*(v1 + 36)];
  *v8 = KeyPath;
  v8[8] = 1;
  type metadata accessor for ObjectGraph();
  sub_216880B70();
  sub_21700A1E4();

  sub_216697664(v4, &qword_27CABA6C8);
  OUTLINED_FUNCTION_26();
}

void sub_21687FE5C()
{
  OUTLINED_FUNCTION_49();
  v20 = v1;
  v21 = v0;
  v3 = v2;
  v19 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v18 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  type metadata accessor for ObjectGraph();
  sub_21700D5F4();
  sub_216681B04(v5, v22, &qword_27CABA6D8);
  sub_216681B04(v3, &v23, &qword_27CAB8C98);
  swift_weakInit();
  swift_weakAssign();
  v16 = *(v7 + 16);
  v16(v13, v10, v6);
  sub_216881080();
  sub_21700D5A4();
  sub_2168810D4(v22);
  v17 = *(v7 + 8);
  v17(v10, v6);
  sub_216681B04(v19, v22, &qword_27CAB8C98);
  swift_weakInit();
  swift_weakAssign();
  v16(v15, v13, v6);
  sub_216881128();
  sub_21700D5A4();
  sub_21688117C(v22);
  v17(v13, v6);
  sub_216E9C508(v15);
  v17(v15, v6);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168800E4@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_21700B354();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA720);
  return sub_216880144(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_216880144@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v41 = a3;
  v4 = sub_217009714();
  MEMORY[0x28223BE20](v4);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA728);
  v38 = *(v40 - 8);
  v5 = MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v35 - v7;
  v8 = type metadata accessor for BackgroundGradientView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA730);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  type metadata accessor for ReplaySwiftMusicContentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6A0);
  sub_21700AEB4();
  if (v42[1])
  {
    memcpy(v43, v42, 0x80uLL);
    sub_216880D18(v43, v10);
    sub_216C0C900();
    v10[128] = 1;
    v16 = &v10[*(v8 + 28)];
    type metadata accessor for ReplayPageGeometry(0);
    sub_216880D74(&qword_27CABA750, type metadata accessor for ReplayPageGeometry);
    v17 = sub_217008104();
    v19 = v18;
    sub_216880DBC(v43);
    *v16 = v17;
    v16[8] = v19 & 1;
    sub_216880E10(v10, v15, type metadata accessor for BackgroundGradientView);
    v20 = v15;
    v21 = 0;
  }

  else
  {
    sub_216697664(v42, &qword_27CABA690);
    v20 = v15;
    v21 = 1;
  }

  __swift_storeEnumTagSinglePayload(v20, v21, 1, v8);
  v22 = sub_2170093C4();
  MEMORY[0x28223BE20](v22);
  v23 = v36;
  *(&v35 - 2) = a1;
  *(&v35 - 1) = v23;
  v43[0] = 0;
  sub_216880D74(&qword_280E2A8F0, MEMORY[0x277CE0428]);
  sub_21700F9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA738);
  sub_2166D9530(&qword_27CABA740, &qword_27CABA738);
  v24 = v35;
  sub_217008014();
  v25 = v15;
  v26 = v37;
  sub_216681B04(v15, v37, &qword_27CABA730);
  v28 = v38;
  v27 = v39;
  v29 = *(v38 + 16);
  v30 = v40;
  v29(v39, v24, v40);
  v31 = v41;
  sub_216681B04(v26, v41, &qword_27CABA730);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA748);
  v29((v31 + *(v32 + 48)), v27, v30);
  v33 = *(v28 + 8);
  v33(v24, v30);
  sub_216697664(v25, &qword_27CABA730);
  v33(v27, v30);
  return sub_216697664(v26, &qword_27CABA730);
}

uint64_t sub_216880694@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = type metadata accessor for ReplayPageBodyView() - 8;
  v6 = MEMORY[0x28223BE20](v31);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v34 = &v31 - v8;
  v9 = type metadata accessor for ReplaySwiftMusicContentView();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_216880F68(a1, &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplaySwiftMusicContentView);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v33 = v14;
  sub_216880E10(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for ReplaySwiftMusicContentView);
  *(v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  KeyPath = swift_getKeyPath();
  v15 = *(v10 + 28);
  v16 = (a1 + *(type metadata accessor for MappedReplayModel(0) + 20) + v15);
  v18 = *v16;
  v17 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  sub_21700DF14();

  sub_21700DF14();
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D0);
  sub_21700AED4();
  v37[0] = v18;
  v37[1] = v17;
  v37[2] = v19;
  v37[3] = v20;
  v37[20] = swift_getKeyPath();
  v21 = type metadata accessor for MappedReplayYearModel(0);
  memset(&v37[21], 0, 24);
  v38 = 0;
  v22 = v34;
  sub_216880F68(v16 + *(v21 + 20), v34, type metadata accessor for MappedReplayPage);
  v23 = v31;
  *(v22 + *(v31 + 28)) = *a1;
  v24 = (v22 + *(v23 + 32));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA758);
  sub_2166D9530(&qword_27CABA760, &qword_27CABA758);
  *v24 = sub_217008CF4();
  v24[1] = v25;
  sub_216880F0C(v37, v36);
  v26 = v35;
  sub_216880F68(v22, v35, type metadata accessor for ReplayPageBodyView);
  v28 = KeyPath;
  v27 = v33;
  *a3 = sub_216880E70;
  *(a3 + 8) = v27;
  *(a3 + 16) = v28;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  sub_216880F0C(v36, a3 + 56);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA768);
  sub_216880F68(v26, a3 + *(v29 + 64), type metadata accessor for ReplayPageBodyView);

  sub_216880FC8(v28, 0, 0, 0, 0);
  sub_216880FD4(v22, type metadata accessor for ReplayPageBodyView);
  sub_21688102C(v37);
  sub_216880FD4(v26, type metadata accessor for ReplayPageBodyView);
  sub_21688102C(v36);

  return sub_21680E444(v28, 0, 0, 0, 0);
}

uint64_t sub_216880A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for ReplaySwiftMusicContentView() + 20));
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6A0);
  sub_21700AED4();
  sub_21700DC34();
  v6 = sub_21700DC24();
  sub_21700AEA4();
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 160) = v5;
  *(a3 + 168) = v6;
  *(a3 + 176) = MEMORY[0x277D221C0];
  *(a3 + 184) = a2;
}

unint64_t sub_216880B70()
{
  result = qword_27CABA6F8;
  if (!qword_27CABA6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA6C8);
    sub_216880C28();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA6F8);
  }

  return result;
}

unint64_t sub_216880C28()
{
  result = qword_27CABA700;
  if (!qword_27CABA700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA6F0);
    sub_2166D9530(&qword_27CABA708, &qword_27CABA710);
    sub_216880D74(&qword_27CABA718, type metadata accessor for ReplayPageGeometryViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA700);
  }

  return result;
}

uint64_t sub_216880D74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216880E10(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_216880E70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplaySwiftMusicContentView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_216880A8C(v1 + v4, v5, a1);
}

uint64_t sub_216880F68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216880FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_216880FD4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216881080()
{
  result = qword_27CABA770;
  if (!qword_27CABA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA770);
  }

  return result;
}

unint64_t sub_216881128()
{
  result = qword_27CABA778;
  if (!qword_27CABA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA778);
  }

  return result;
}

uint64_t sub_2168811D0(uint64_t a1)
{
  if (a1 > 3999)
  {
    return 0;
  }

  v1 = a1;
  v2 = 0;
  while (1)
  {
    v3 = (&unk_28290E740 + 24 * v2);
    v4 = v3[4];
    if (v1 >= v4)
    {
      break;
    }

LABEL_8:
    if (++v2 == 13)
    {
      return 0;
    }
  }

  v6 = v3[5];
  v5 = v3[6];
  result = sub_21700DF14();
  while (1)
  {
    v8 = __OFSUB__(v1, v4);
    v1 -= v4;
    if (v8)
    {
      break;
    }

    result = MEMORY[0x21CE9F490](v6, v5);
    if (v1 < v4)
    {

      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_216881290()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v13 - v11;
  *(v0 + 56) = v6;
  type metadata accessor for ObjectGraph();

  sub_21700E094();
  (*(v9 + 32))(v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_actionDispatcher, v12, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A30);
  OUTLINED_FUNCTION_33_15();
  sub_2166A0F18(&v14, v0 + 16);
  sub_216681B04(v4, v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_targetPlaylist, &qword_27CAB74B8);
  sub_216681B04(v2, v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_parentFolder, &qword_27CABA7C8);
  type metadata accessor for SubscriptionStatusCoordinator();
  OUTLINED_FUNCTION_33_15();

  sub_2166997CC(v2, &qword_27CABA7C8);
  sub_2166997CC(v4, &qword_27CAB74B8);
  *(v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_subscriptionStatusCoordinator) = v14;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216881458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7C8);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = sub_21700C924();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = sub_21700C734();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  v10 = swift_allocObject();
  sub_216881290();
  return v10;
}

void sub_21688156C()
{
  OUTLINED_FUNCTION_49();
  v66 = v0;
  v65 = v1;
  v64 = v2;
  v4 = v3;
  v68 = type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v6);
  v62[1] = type metadata accessor for PlaylistAddableItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v13);
  v14 = sub_21700BB34();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788);
  OUTLINED_FUNCTION_1();
  v23 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = v62 - v25;
  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v27 = sub_21700C1E4();
  sub_21700BC04();

  (*(v16 + 8))(v20, v14);
  LODWORD(v14) = (*(v23 + 88))(v26, v21);
  v28 = *MEMORY[0x277D2B048];
  (*(v23 + 8))(v26, v21);
  v62[0] = v27;
  if (v14 == v28)
  {
    OUTLINED_FUNCTION_50();
    (*(v29 + 16))(v10, v4, v27);
    swift_storeEnumTagMultiPayload();
    sub_21700C164();
    OUTLINED_FUNCTION_22_22();
    LOBYTE(v70[0]) = v30;
    v31 = v63;
    v32 = OUTLINED_FUNCTION_23_12();
    v33 = v64;
    v34 = v65;
    sub_216881BA8(v32, v35, v36, v64, v65, 0x6D75626C61, 0xE500000000000000, v37, v38);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v10, v39);
LABEL_5:
    sub_21678C1C4();
    sub_2166997CC(v31, &qword_27CAB6DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
    inited = swift_initStackObject();
    v49 = OUTLINED_FUNCTION_25_10(inited, xmmword_217013DA0);
    swift_setDeallocating();
    sub_2169FAC94();
    goto LABEL_7;
  }

  v31 = v63;
  v33 = v64;
  v34 = v65;
  if (sub_216882F84())
  {
    OUTLINED_FUNCTION_50();
    (*(v40 + 16))(v10, v4);
    swift_storeEnumTagMultiPayload();
    sub_21700C164();
    OUTLINED_FUNCTION_22_22();
    LOBYTE(v70[0]) = v41;
    v42 = OUTLINED_FUNCTION_23_12();
    sub_216881BA8(v42, v43, v44, v33, v34, 0x6D75626C61, 0xE500000000000000, v45, v46);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v10, v47);
    goto LABEL_5;
  }

  v49 = MEMORY[0x277D84F90];
LABEL_7:
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_5_25();
  v51 = v67;
  sub_21688746C(v34 + v50, v67, v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_1_41();
  sub_21688710C(v51, v54);
  if (EnumCaseMultiPayload == 7)
  {
    v70[3] = v62[0];
    v70[4] = MEMORY[0x277CD82B8];
    __swift_allocate_boxed_opaque_existential_1(v70);
    OUTLINED_FUNCTION_50();
    (*(v55 + 16))();
    v69 = 4;
    sub_2168831B8(v70, v33, v34, 0x6D75626C61, 0xE500000000000000, &v69, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    v56 = type metadata accessor for MenuAction();
    OUTLINED_FUNCTION_27_13(v31, v57, v58, v56);
    v59 = sub_21678C1C4();
    sub_2166997CC(v31, &qword_27CAB6DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_217013DA0;
    *(v60 + 32) = v59;
    sub_2167A2998(v60);
    OUTLINED_FUNCTION_26_5();
    sub_2169FAC94();
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_217013D90;
  *(v61 + 32) = v49;
  *(v61 + 40) = v59;
  sub_2167A2998(v61);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216881BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>)
{
  v170 = a5;
  v171 = a9;
  v172 = a6;
  v149 = a4;
  v159 = a2;
  *&v160 = a3;
  v168 = a1;
  v11 = type metadata accessor for OpenAddToPlaylistAction();
  v12 = *(v11 - 8);
  v144 = v11;
  v145 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v146 = v14;
  v147 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v143 = (&v128 - v15);
  v16 = sub_2170075A4();
  v150 = *(v16 - 8);
  v151 = v16;
  MEMORY[0x28223BE20](v16);
  v148 = v17;
  v152 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v134 = *(v136 - 8);
  v132 = *(v134 + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v128 - v18;
  v19 = type metadata accessor for ProcessDeepLinkAction();
  v20 = *(v19 - 8);
  v129 = v19;
  v130 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v133 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v22;
  MEMORY[0x28223BE20](v21);
  v128 = &v128 - v23;
  v137 = type metadata accessor for OpenFinancePageAction.Kind(0);
  MEMORY[0x28223BE20](v137);
  v164 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21700DFD4();
  v138 = *(v25 - 8);
  v139 = v25;
  MEMORY[0x28223BE20](v25);
  v163 = &v128 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for MenuActionType();
  MEMORY[0x28223BE20](v165);
  v140 = &v128 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7090);
  MEMORY[0x28223BE20](v28 - 8);
  v161 = &v128 - v29;
  v158 = sub_21700CFB4();
  v153 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_217005EF4();
  v142 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v162 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v141 = &v128 - v34;
  v35 = sub_21700D704();
  v155 = *(v35 - 8);
  v156 = v35;
  v36 = MEMORY[0x28223BE20](v35);
  v154 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v128 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v41 = MEMORY[0x28223BE20](v40 - 8);
  v43 = &v128 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v128 - v44;
  v46 = sub_21700D284();
  v166 = *(v46 - 8);
  v167 = v46;
  MEMORY[0x28223BE20](v46);
  v173 = (&v128 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = *a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x6F54646461;
  *(inited + 40) = 0xE500000000000000;
  v50 = MEMORY[0x277D837D0];
  v51 = 0xE800000000000000;
  *(inited + 48) = 0x7473696C79616C50;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 72) = v50;
  *(inited + 80) = 0x4E6E6F6974636573;
  *(inited + 88) = 0xEB00000000656D61;
  v52 = (v170 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v53 = v52[1];
  *(inited + 96) = *v52;
  *(inited + 104) = v53;
  *(inited + 120) = v50;
  *(inited + 128) = 1684957547;
  *(inited + 168) = v50;
  v54 = v172;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = v54;
  *(inited + 152) = a7;
  sub_21700DF14();
  sub_21700DF14();
  v55 = sub_21700E384();
  v172 = v45;
  v170 = v31;
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v31);
  v56 = v39;
  sub_21700D6F4();
  *(&v178 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v177 = v55;
  sub_2166EF9C4(&v177, &v174);
  v57 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v180 = v57;
  sub_2166EF9D4();
  v58 = v180;
  *(&v178 + 1) = v50;
  *&v177 = 6579297;
  *(&v177 + 1) = 0xE300000000000000;
  sub_2166EF9C4(&v177, &v174);
  swift_isUniquelyReferenced_nonNull_native();
  v180 = v58;
  sub_2166EF9D4();
  v59 = v180;
  v60 = 0x6472616F6279656BLL;
  switch(v48)
  {
    case 1:
      v51 = 0xE500000000000000;
      v60 = 0x79726F7473;
      break;
    case 2:
      v51 = 0xE400000000000000;
      v60 = 1701998445;
      break;
    case 3:
      v51 = 0xE500000000000000;
      v60 = 0x636972796CLL;
      break;
    case 4:
      v60 = 0xD000000000000010;
      v51 = 0x80000002170801D0;
      break;
    case 5:
      v51 = 0x80000002170801F0;
      v60 = 0xD000000000000012;
      break;
    case 6:
      v51 = 0xE900000000000075;
      v60 = 0x6E654D6570697773;
      break;
    case 7:
      v51 = 0x8000000217080210;
      v60 = 0xD000000000000015;
      break;
    default:
      break;
  }

  *(&v178 + 1) = v50;
  *&v177 = v60;
  *(&v177 + 1) = v51;
  sub_2166EF9C4(&v177, &v174);
  swift_isUniquelyReferenced_nonNull_native();
  v180 = v59;
  sub_2166EF9D4();
  v61 = v180;
  sub_216681B04(v172, v43, &qword_27CABA820);
  v62 = v170;
  if (__swift_getEnumTagSinglePayload(v43, 1, v170) == 1)
  {
    sub_2166997CC(v43, &qword_27CABA820);
  }

  else
  {
    v64 = v141;
    v63 = v142;
    (*(v142 + 32))(v141, v43, v62);
    v65 = sub_217005DE4();
    *(&v178 + 1) = v50;
    *&v177 = v65;
    *(&v177 + 1) = v66;
    sub_2166EF9C4(&v177, &v174);
    swift_isUniquelyReferenced_nonNull_native();
    v180 = v61;
    sub_2166EF9D4();
    v61 = v180;
    (*(v63 + 8))(v64, v62);
  }

  v67 = v168;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v68 = sub_21700CF84();
  v69 = __swift_project_value_buffer(v68, qword_280E73DB0);
  v70 = v157;
  MEMORY[0x21CE9DD70](v159, v160, 0x6E6F74747562, 0xE600000000000000, v61, v69);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v71 = v153;
  v72 = (*(v153 + 80) + 32) & ~*(v153 + 80);
  v73 = swift_allocObject();
  v160 = xmmword_217013DA0;
  *(v73 + 16) = xmmword_217013DA0;
  v74 = v73 + v72;
  v75 = v158;
  (*(v71 + 16))(v74, v70, v158);
  v76 = v155;
  v77 = v156;
  (*(v155 + 16))(v154, v56, v156);
  sub_21700D244();
  (*(v71 + 8))(v70, v75);
  (*(v76 + 8))(v56, v77);
  sub_2166997CC(v172, &qword_27CABA820);
  PlaylistAddableItem.addableItem.getter(&v174);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E38);
  v78 = v67;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v179 = 0;
    v177 = 0u;
    v178 = 0u;
  }

  sub_216681B04(&v177, &v174, &qword_27CAB8E30);
  v79 = v175;
  v80 = v169;
  v82 = v163;
  v81 = v164;
  v83 = v161;
  v84 = v162;
  if (!v175)
  {
    sub_2166997CC(&v174, &qword_27CAB8E30);
    v95 = sub_21700BAB4();
    __swift_storeEnumTagSinglePayload(v83, 1, 1, v95);
    goto LABEL_22;
  }

  v85 = v176;
  __swift_project_boxed_opaque_existential_1(&v174, v175);
  sub_21694EF28((v80 + 16), v79, v85);
  v86 = sub_21700BAB4();
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v86);
  __swift_destroy_boxed_opaque_existential_1Tm(&v174);
  if (__swift_getEnumTagSinglePayload(v83, 1, v86) == 1)
  {
LABEL_22:
    sub_2166997CC(v83, &qword_27CAB7090);
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7A0);
    v96 = *(type metadata accessor for PlaylistAddableItem() - 8);
    v97 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = v160;
    sub_21688746C(v78, v98 + v97, type metadata accessor for PlaylistAddableItem);
    v99 = v143;
    (*(v166 + 32))(v143 + *(v144 + 20), v173, v167);
    *v99 = v98;
    swift_storeEnumTagMultiPayload();
    v100 = v147;
    sub_2168873E0(v99, v147, type metadata accessor for OpenAddToPlaylistAction);
    v101 = v80;
    v102 = v150;
    v103 = v151;
    v104 = v152;
    (*(v150 + 16))(v152, v149, v151);
    v105 = (*(v145 + 80) + 24) & ~*(v145 + 80);
    v106 = (v146 + *(v102 + 80) + v105) & ~*(v102 + 80);
    v107 = swift_allocObject();
    *(v107 + 16) = v101;
    sub_2168873E0(v100, v107 + v105, type metadata accessor for OpenAddToPlaylistAction);
    (*(v102 + 32))(v107 + v106, v104, v103);
    v108 = type metadata accessor for MenuAction();
    v109 = v171;
    v110 = (v171 + *(v108 + 20));
    *v110 = sub_2168870E0;
    v110[1] = v107;
    __swift_storeEnumTagSinglePayload(v109, 0, 1, v108);
    goto LABEL_24;
  }

  v87 = *(v86 - 8);
  v88 = (*(v87 + 88))(v83, v86);
  v89 = v83;
  v90 = *MEMORY[0x277D2AE90];
  (*(v87 + 8))(v89, v86);
  if (v88 != v90 || (sub_216E3D990() & 1) != 0)
  {
    goto LABEL_23;
  }

  v91 = v140;
  swift_storeEnumTagMultiPayload();
  v92 = OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_actionDispatcher;
  v93 = *(v80 + 56);
  type metadata accessor for ObjectGraph();
  v94 = v139;
  v172 = v93;
  sub_21700E094();
  *v81 = 1;
  swift_storeEnumTagMultiPayload();
  sub_216B80558(v81, v82, v84);
  sub_21688710C(v81, type metadata accessor for OpenFinancePageAction.Kind);
  v112 = v128;
  sub_21700D234();
  (*(v138 + 8))(v82, v94);
  (*(v166 + 8))(v173, v167);
  v113 = v129;
  (*(v142 + 32))(v112 + *(v129 + 20), v84, v170);
  v114 = *(v113 + 24);
  v115 = type metadata accessor for ReferrerInfo();
  __swift_storeEnumTagSinglePayload(v112 + v114, 1, 1, v115);
  *(v112 + *(v113 + 28)) = 1;
  sub_2168873E0(v91, v171, type metadata accessor for MenuActionType);
  v116 = v134;
  (*(v134 + 16))(v135, v80 + v92, v136);
  v173 = type metadata accessor for ProcessDeepLinkAction;
  v117 = v133;
  sub_2168873E0(v112, v133, type metadata accessor for ProcessDeepLinkAction);
  v118 = v150;
  v119 = v151;
  (*(v150 + 16))(v152, v149, v151);
  v120 = (*(v116 + 80) + 16) & ~*(v116 + 80);
  v121 = (v132 + *(v130 + 80) + v120) & ~*(v130 + 80);
  v122 = (v131 + *(v118 + 80) + v121) & ~*(v118 + 80);
  v123 = (v148 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = swift_allocObject();
  (*(v116 + 32))(v124 + v120, v135, v136);
  sub_2168873E0(v117, v124 + v121, v173);
  (*(v118 + 32))(v124 + v122, v152, v119);
  *(v124 + v123) = v172;
  v125 = type metadata accessor for MenuAction();
  v126 = v171;
  v127 = (v171 + *(v125 + 20));
  *v127 = sub_216887160;
  v127[1] = v124;
  __swift_storeEnumTagSinglePayload(v126, 0, 1, v125);
LABEL_24:

  return sub_2166997CC(&v177, &qword_27CAB8E30);
}

uint64_t sub_216882F84()
{
  sub_2166C0578(&v8);
  v0 = v9;
  if (v9)
  {
    if (*(v9 + 16))
    {
      sub_21700F8F4();
      sub_21700E614();
      v1 = sub_21700F944();
      v2 = -1 << *(v0 + 32);
      v3 = v1 & ~v2;
      if ((*(v0 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3))
      {
        v4 = ~v2;
        while (2)
        {
          v5 = 0x80000002170817B0;
          switch(*(*(v0 + 48) + v3))
          {
            case 3:
              goto LABEL_7;
            case 5:
              v5 = 0x80000002170817F0;
LABEL_7:
              if (0x80000002170817B0 != v5)
              {
                goto LABEL_8;
              }

              v6 = 1;
              goto LABEL_12;
            default:
LABEL_8:
              v6 = sub_21700F7D4();

              if (v6)
              {
                goto LABEL_12;
              }

              v3 = (v3 + 1) & v4;
              if (((*(v0 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
              {
                goto LABEL_12;
              }

              continue;
          }
        }
      }
    }

    v6 = 0;
LABEL_12:
    sub_2166997CC(&v8, &qword_27CAC5980);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2168831B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v73 = a4;
  v72 = a3;
  v91 = a2;
  v95 = a7;
  v94 = sub_2170075A4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = v10;
  v92 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for PromptHideFromProfileAction(0);
  v86 = *(v85 - 8);
  v11 = MEMORY[0x28223BE20](v85);
  v89 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v12;
  MEMORY[0x28223BE20](v11);
  v84 = &v69 - v13;
  v83 = sub_21700CFB4();
  v14 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_217005EF4();
  v71 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v70 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_21700D704();
  v80 = *(v81 - 8);
  v18 = MEMORY[0x28223BE20](v81);
  v79 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v69 - v26;
  v78 = sub_21700D284();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a6;
  v30 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v74 = sub_21700B934();
  v75 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x724665766F6D6572;
  *(inited + 40) = 0xEA00000000006D6FLL;
  v33 = MEMORY[0x277D837D0];
  v34 = 0xE800000000000000;
  *(inited + 48) = 0x7473696C79616C50;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 72) = v33;
  *(inited + 80) = 0x4E6E6F6974636573;
  *(inited + 88) = 0xEB00000000656D61;
  v35 = (v72 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v36 = v35[1];
  *(inited + 96) = *v35;
  *(inited + 104) = v36;
  *(inited + 120) = v33;
  *(inited + 128) = 1684957547;
  *(inited + 168) = v33;
  v37 = v73;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = v37;
  *(inited + 152) = a5;
  sub_21700DF14();
  sub_21700DF14();
  v38 = sub_21700E384();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v16);
  sub_21700D6F4();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v99 = v38;
  sub_2166EF9C4(&v99, v98);
  v39 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v97 = v39;
  sub_2166EF9D4();
  v40 = v97;
  v100 = v33;
  *&v99 = 0x6D6F724665646968;
  *(&v99 + 1) = 0xEF656C69666F7250;
  sub_2166EF9C4(&v99, v98);
  swift_isUniquelyReferenced_nonNull_native();
  v97 = v40;
  sub_2166EF9D4();
  v41 = v97;
  v42 = 0x6472616F6279656BLL;
  switch(v29)
  {
    case 1:
      v34 = 0xE500000000000000;
      v42 = 0x79726F7473;
      break;
    case 2:
      v34 = 0xE400000000000000;
      v42 = 1701998445;
      break;
    case 3:
      v34 = 0xE500000000000000;
      v42 = 0x636972796CLL;
      break;
    case 4:
      v42 = 0xD000000000000010;
      v34 = 0x80000002170801D0;
      break;
    case 5:
      v34 = 0x80000002170801F0;
      v42 = 0xD000000000000012;
      break;
    case 6:
      v34 = 0xE900000000000075;
      v42 = 0x6E654D6570697773;
      break;
    case 7:
      v34 = 0x8000000217080210;
      v42 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v100 = v33;
  *&v99 = v42;
  *(&v99 + 1) = v34;
  sub_2166EF9C4(&v99, v98);
  swift_isUniquelyReferenced_nonNull_native();
  v97 = v41;
  sub_2166EF9D4();
  v43 = v97;
  sub_216681B04(v27, v25, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v25, 1, v16) == 1)
  {
    sub_2166997CC(v25, &qword_27CABA820);
  }

  else
  {
    v44 = v71;
    v45 = v70;
    (*(v71 + 32))(v70, v25, v16);
    v46 = sub_217005DE4();
    v100 = v33;
    *&v99 = v46;
    *(&v99 + 1) = v47;
    sub_2166EF9C4(&v99, v98);
    swift_isUniquelyReferenced_nonNull_native();
    v97 = v43;
    sub_2166EF9D4();
    v43 = v97;
    (*(v44 + 8))(v45, v16);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v48 = sub_21700CF84();
  v49 = __swift_project_value_buffer(v48, qword_280E73DB0);
  v50 = v82;
  MEMORY[0x21CE9DD70](v74, v75, 0x6E6F74747562, 0xE600000000000000, v43, v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v51 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_217013DA0;
  v53 = v52 + v51;
  v54 = v83;
  (*(v14 + 16))(v53, v50, v83);
  v55 = v80;
  v56 = v81;
  (*(v80 + 16))(v79, v21, v81);
  v57 = v76;
  sub_21700D244();
  (*(v14 + 8))(v50, v54);
  (*(v55 + 8))(v21, v56);
  sub_2166997CC(v27, &qword_27CABA820);
  v58 = v84;
  sub_21700D234();
  (*(v77 + 8))(v57, v78);
  sub_2167B7D58(v88, v58 + *(v85 + 20));
  type metadata accessor for MenuActionType();
  v59 = v95;
  swift_storeEnumTagMultiPayload();
  v60 = v89;
  sub_2168873E0(v58, v89, type metadata accessor for PromptHideFromProfileAction);
  v61 = v93;
  v62 = v92;
  v63 = v94;
  (*(v93 + 16))(v92, v91, v94);
  v64 = (*(v86 + 80) + 24) & ~*(v86 + 80);
  v65 = (v87 + *(v61 + 80) + v64) & ~*(v61 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v96;
  sub_2168873E0(v60, v66 + v64, type metadata accessor for PromptHideFromProfileAction);
  (*(v61 + 32))(v66 + v65, v62, v63);
  v67 = (v59 + *(type metadata accessor for MenuAction() + 20));
  *v67 = sub_216887440;
  v67[1] = v66;
}

void sub_216883DF4()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v81 = v2;
  v77 = v3;
  v86 = v4;
  v75 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v72 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v8 = OUTLINED_FUNCTION_8_0(v7);
  v78 = type metadata accessor for MenuContext(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_0(v70 - v14);
  sub_21700C8E4();
  OUTLINED_FUNCTION_1();
  v83 = v16;
  v84 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v85 = v17;
  OUTLINED_FUNCTION_4_1();
  v73 = type metadata accessor for PlaylistAddableItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v20);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v22);
  v23 = sub_21700BAB4();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7();
  v29 = v28 - v27;
  v30 = v0[5];
  v31 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v30);
  v32 = *(v31 + 144);
  v33 = sub_21700BA44();
  v34 = sub_2168874CC(&qword_280E2A420, MEMORY[0x277CD7E58]);
  v32(v86, v33, v34, v30, v31);
  v35 = (*(v25 + 88))(v29, v23);
  LODWORD(v30) = *MEMORY[0x277D2AEE0];
  (*(v25 + 8))(v29, v23);
  v70[1] = v1;
  if (v35 == v30 && (sub_216882F84() & 1) != 0)
  {
    OUTLINED_FUNCTION_50();
    v37 = v74;
    (*(v36 + 16))(v74, v86, v33);
    swift_storeEnumTagMultiPayload();
    sub_21700B9F4();
    OUTLINED_FUNCTION_22_22();
    v87[0] = v38;
    v39 = v76;
    v40 = v81;
    sub_216881BA8(v37, v41, v29, v77, v81, 0x646956636973756DLL, 0xEA00000000006F65, v87, v76);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v37, v42);
    v43 = sub_21678C1C4();
    sub_2166997CC(v39, &qword_27CAB6DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    *(inited + 32) = v43;
    v45 = sub_2167A2998(inited);
    swift_setDeallocating();
    sub_2169FAC94();
    v47 = v83;
    v46 = v84;
    v48 = v82;
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
    v47 = v83;
    v46 = v84;
    v48 = v82;
    v40 = v81;
  }

  v49 = v79;
  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_5_25();
  sub_21688746C(v40 + v50, v49, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v53 = v85;
  v54 = v80;
  if (EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_1_41();
    sub_21688710C(v49, v55);
  }

  else
  {
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    (*(v47 + 32))(v53, v49, v46);
    sub_216887070(v49 + v56, v48);
    sub_216681B04(v48, v54, &qword_27CAB74B8);
    v57 = v75;
    if (__swift_getEnumTagSinglePayload(v54, 1, v75) != 1)
    {
      v60 = v54;
      v61 = v72;
      v62 = v40;
      v63 = v71;
      (*(v72 + 32))(v71, v60, v57);
      v87[0] = 4;
      v64 = v76;
      sub_216884568(v53, v63, v77, v62, 0x646956636973756DLL, 0xEA00000000006F65, v87, v76);
      v65 = type metadata accessor for MenuAction();
      OUTLINED_FUNCTION_27_13(v64, v66, v67, v65);
      v68 = v57;
      v58 = sub_21678C1C4();
      sub_2166997CC(v64, &qword_27CAB6DF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
      v69 = swift_initStackObject();
      *(v69 + 16) = xmmword_217013DA0;
      *(v69 + 32) = v58;
      sub_2167A2998(v69);
      OUTLINED_FUNCTION_26_5();
      sub_2169FAC94();
      (*(v61 + 8))(v63, v68);
      sub_2166997CC(v48, &qword_27CAB74B8);
      (*(v47 + 8))(v85, v46);
      goto LABEL_10;
    }

    sub_2166997CC(v48, &qword_27CAB74B8);
    (*(v47 + 8))(v53, v46);
    sub_2166997CC(v54, &qword_27CAB74B8);
  }

  v58 = MEMORY[0x277D84F90];
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  v59 = swift_initStackObject();
  *(v59 + 16) = xmmword_217013D90;
  *(v59 + 32) = v45;
  *(v59 + 40) = v58;
  sub_2167A2998(v59);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216884568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v77 = a5;
  v76 = a4;
  v96 = a3;
  v93 = a2;
  v100 = a8;
  v99 = sub_2170075A4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v95 = v11;
  v97 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for RemoveFromPlaylistAction();
  v91 = *(v88 - 8);
  v12 = MEMORY[0x28223BE20](v88);
  v94 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v13;
  MEMORY[0x28223BE20](v12);
  v89 = &v74 - v14;
  v87 = sub_21700CFB4();
  v15 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_217005EF4();
  v75 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v74 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21700D704();
  v84 = *(v85 - 8);
  v19 = MEMORY[0x28223BE20](v85);
  v81 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v74 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v74 - v27;
  v83 = sub_21700D284();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a7;
  v90 = a1;
  v78 = sub_21700C874();
  v79 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = 0x724665766F6D6572;
  *(inited + 40) = 0xEA00000000006D6FLL;
  v33 = MEMORY[0x277D837D0];
  v34 = 0xE800000000000000;
  *(inited + 48) = 0x7473696C79616C50;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 72) = v33;
  *(inited + 80) = 0x4E6E6F6974636573;
  *(inited + 88) = 0xEB00000000656D61;
  v35 = (v76 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v36 = v35[1];
  *(inited + 96) = *v35;
  *(inited + 104) = v36;
  *(inited + 120) = v33;
  *(inited + 128) = 1684957547;
  *(inited + 168) = v33;
  v37 = v77;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = v37;
  *(inited + 152) = a6;
  sub_21700DF14();
  sub_21700DF14();
  v38 = sub_21700E384();
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v17);
  sub_21700D6F4();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v104 = v38;
  sub_2166EF9C4(&v104, &v103);
  v39 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v102 = v39;
  sub_2166EF9D4();
  v40 = v102;
  v105 = v33;
  *&v104 = 0x6574656C6564;
  *(&v104 + 1) = 0xE600000000000000;
  sub_2166EF9C4(&v104, &v103);
  swift_isUniquelyReferenced_nonNull_native();
  v102 = v40;
  sub_2166EF9D4();
  v41 = v102;
  v42 = 0x6472616F6279656BLL;
  switch(v30)
  {
    case 1:
      v34 = 0xE500000000000000;
      v42 = 0x79726F7473;
      break;
    case 2:
      v34 = 0xE400000000000000;
      v42 = 1701998445;
      break;
    case 3:
      v34 = 0xE500000000000000;
      v42 = 0x636972796CLL;
      break;
    case 4:
      v42 = 0xD000000000000010;
      v34 = 0x80000002170801D0;
      break;
    case 5:
      v34 = 0x80000002170801F0;
      v42 = 0xD000000000000012;
      break;
    case 6:
      v34 = 0xE900000000000075;
      v42 = 0x6E654D6570697773;
      break;
    case 7:
      v34 = 0x8000000217080210;
      v42 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v105 = v33;
  *&v104 = v42;
  *(&v104 + 1) = v34;
  sub_2166EF9C4(&v104, &v103);
  swift_isUniquelyReferenced_nonNull_native();
  v102 = v41;
  sub_2166EF9D4();
  v43 = v102;
  sub_216681B04(v28, v26, &qword_27CABA820);
  if (__swift_getEnumTagSinglePayload(v26, 1, v17) == 1)
  {
    sub_2166997CC(v26, &qword_27CABA820);
  }

  else
  {
    v44 = v75;
    v45 = v74;
    (*(v75 + 32))(v74, v26, v17);
    v46 = sub_217005DE4();
    v105 = v33;
    *&v104 = v46;
    *(&v104 + 1) = v47;
    sub_2166EF9C4(&v104, &v103);
    swift_isUniquelyReferenced_nonNull_native();
    v102 = v43;
    sub_2166EF9D4();
    v43 = v102;
    (*(v44 + 8))(v45, v17);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v48 = sub_21700CF84();
  v49 = __swift_project_value_buffer(v48, qword_280E73DB0);
  v50 = v86;
  MEMORY[0x21CE9DD70](v78, v79, 0x6E6F74747562, 0xE600000000000000, v43, v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v51 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_217013DA0;
  v53 = v52 + v51;
  v54 = v87;
  (*(v15 + 16))(v53, v50, v87);
  v55 = v84;
  v56 = v85;
  (*(v84 + 16))(v81, v22, v85);
  v57 = v80;
  sub_21700D244();
  (*(v15 + 8))(v50, v54);
  (*(v55 + 8))(v22, v56);
  sub_2166997CC(v28, &qword_27CABA820);
  v58 = v88;
  v59 = *(v88 + 20);
  v60 = sub_21700C8E4();
  v61 = v89;
  (*(*(v60 - 8) + 16))(&v89[v59], v90, v60);
  v62 = *(v58 + 24);
  v63 = sub_21700C924();
  (*(*(v63 - 8) + 16))(v61 + v62, v93, v63);
  (*(v82 + 32))(v61, v57, v83);
  type metadata accessor for MenuActionType();
  v64 = v100;
  swift_storeEnumTagMultiPayload();
  v65 = v94;
  sub_2168873E0(v61, v94, type metadata accessor for RemoveFromPlaylistAction);
  v66 = v98;
  v67 = v97;
  v68 = v99;
  (*(v98 + 16))(v97, v96, v99);
  v69 = (*(v91 + 80) + 24) & ~*(v91 + 80);
  v70 = (v92 + *(v66 + 80) + v69) & ~*(v66 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v101;
  sub_2168873E0(v65, v71 + v69, type metadata accessor for RemoveFromPlaylistAction);
  (*(v66 + 32))(v71 + v70, v67, v68);
  v72 = (v64 + *(type metadata accessor for MenuAction() + 20));
  *v72 = sub_2168872A8;
  v72[1] = v71;
}

void sub_2168851F4()
{
  OUTLINED_FUNCTION_49();
  v105 = v0;
  v93 = v1;
  v94 = v2;
  v4 = v3;
  v102 = type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v101 = v6;
  OUTLINED_FUNCTION_4_1();
  v99 = sub_21700BD94();
  OUTLINED_FUNCTION_1();
  v97 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v95 = v9;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7B0);
  OUTLINED_FUNCTION_1();
  v96 = v10;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v100 = v12;
  OUTLINED_FUNCTION_4_1();
  v90 = type metadata accessor for PlaylistAddableItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v91 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_105();
  v103 = v17;
  OUTLINED_FUNCTION_4_1();
  v18 = sub_21700BB34();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788);
  OUTLINED_FUNCTION_1();
  v27 = v26;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  v30 = &v90 - v29;
  v92 = sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v31 = sub_21700C924();
  sub_21700BC04();

  (*(v20 + 8))(v24, v18);
  v32 = (*(v27 + 88))(v30, v25);
  v33 = *MEMORY[0x277D2B048];
  (*(v27 + 8))(v30, v25);
  v104 = v31;
  if (v32 == v33)
  {
    OUTLINED_FUNCTION_50();
    v35 = v91;
    (*(v34 + 16))(v91, v4, v31);
    swift_storeEnumTagMultiPayload();
    sub_21700C7C4();
    OUTLINED_FUNCTION_17_21();
    v36 = v93;
    v37 = v94;
    OUTLINED_FUNCTION_30_10();
    sub_216881BA8(v38, v39, v40, v41, v42, v33, 0xE800000000000000, v43, v44);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v35, v45);
    v46 = v4;
LABEL_5:
    v53 = sub_21678C1C4();
    sub_2166997CC(v31, &qword_27CAB6DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    *(inited + 32) = v53;
    v55 = sub_2167A2998(inited);
    swift_setDeallocating();
    sub_2169FAC94();
    goto LABEL_7;
  }

  v31 = v90;
  v47 = v91;
  v46 = v4;
  v36 = v93;
  v37 = v94;
  OUTLINED_FUNCTION_30_10();
  if (sub_216882F84())
  {
    OUTLINED_FUNCTION_50();
    (*(v48 + 16))(v47, v4);
    swift_storeEnumTagMultiPayload();
    sub_21700C7C4();
    OUTLINED_FUNCTION_17_21();
    sub_216881BA8(v47, v49, v47, v36, v37, v33, 0xE800000000000000, v50, v51);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v47, v52);
    goto LABEL_5;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_7:
  sub_21700BE34();
  v56 = v95;
  sub_2170067E4();
  v58 = v99;
  v57 = v100;
  v94 = v46;
  v59 = v104;
  sub_21700BC04();

  (*(v97 + 8))(v56, v58);
  v60 = v96;
  v61 = v98;
  if ((*(v96 + 88))(v57, v98) == *MEMORY[0x277D2B040])
  {
    v62 = v36;
    v63 = v60;
    v64 = v33;
    (*(v63 + 96))(v57, v61);
    v65 = sub_21700BD84();
    v66 = *(v65 - 8);
    v67 = (*(v66 + 88))(v57, v65);
    v68 = v57;
    v69 = v67;
    v70 = *MEMORY[0x277D2B0F0];
    (*(v66 + 8))(v68, v65);
    if (v69 == v70)
    {
      v71 = v103;
      v36 = v62;
      sub_216885ACC(v94, v62, v103);
      v72 = type metadata accessor for MenuAction();
      OUTLINED_FUNCTION_27_13(v71, v73, v74, v72);
      sub_21678C1C4();
      sub_2166997CC(v71, &qword_27CAB6DF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
      v75 = swift_initStackObject();
      v76 = OUTLINED_FUNCTION_25_10(v75, xmmword_217013DA0);
      swift_setDeallocating();
      sub_2169FAC94();
      v33 = v64;
    }

    else
    {
      v76 = MEMORY[0x277D84F90];
      v33 = v64;
      v36 = v62;
    }

    v59 = v104;
  }

  else
  {
    (*(v60 + 8))(v57, v61);
    v76 = MEMORY[0x277D84F90];
  }

  type metadata accessor for MenuConfiguration(0);
  OUTLINED_FUNCTION_5_25();
  v78 = v101;
  sub_21688746C(v37 + v77, v101, v79);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_1_41();
  sub_21688710C(v78, v81);
  if (EnumCaseMultiPayload == 7)
  {
    v107[3] = v59;
    v107[4] = MEMORY[0x277CD85F0];
    __swift_allocate_boxed_opaque_existential_1(v107);
    OUTLINED_FUNCTION_50();
    (*(v82 + 16))();
    v106 = 4;
    v83 = v103;
    sub_2168831B8(v107, v36, v37, v33, 0xE800000000000000, &v106, v103);
    __swift_destroy_boxed_opaque_existential_1Tm(v107);
    v84 = type metadata accessor for MenuAction();
    OUTLINED_FUNCTION_27_13(v83, v85, v86, v84);
    sub_21678C1C4();
    sub_2166997CC(v83, &qword_27CAB6DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
    v87 = swift_initStackObject();
    v88 = OUTLINED_FUNCTION_25_10(v87, xmmword_217013DA0);
    swift_setDeallocating();
    sub_2169FAC94();
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  v89 = swift_initStackObject();
  *(v89 + 16) = xmmword_217015230;
  *(v89 + 32) = v55;
  *(v89 + 40) = v76;
  *(v89 + 48) = v88;
  sub_2167A2998(v89);
  swift_setDeallocating();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216885ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v5 = sub_2170075A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = type metadata accessor for OpenMoveToFolderAction();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = sub_21700C924();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  sub_21700D234();
  type metadata accessor for MenuActionType();
  v15 = a3;
  swift_storeEnumTagMultiPayload();
  sub_2168873E0(v13, v11, type metadata accessor for OpenMoveToFolderAction);
  (*(v6 + 16))(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v5);
  v16 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v17 = (v9 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  sub_2168873E0(v11, v18 + v16, type metadata accessor for OpenMoveToFolderAction);
  (*(v6 + 32))(v18 + v17, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v19 = (v15 + *(type metadata accessor for MenuAction() + 20));
  *v19 = sub_2168873B4;
  v19[1] = v18;
}

void sub_216885D6C()
{
  OUTLINED_FUNCTION_49();
  v122 = v0;
  v2 = v1;
  v111 = v3;
  v115 = v4;
  v106 = sub_21700C6E4();
  OUTLINED_FUNCTION_1();
  v104 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA780);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v10);
  v109 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v108 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_0(&v103 - v17);
  v123 = sub_21700C8E4();
  OUTLINED_FUNCTION_1();
  v119 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v20);
  v112 = type metadata accessor for PlaylistAddableItem();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0);
  OUTLINED_FUNCTION_36(v23);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v25);
  v26 = sub_21700BB34();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA788);
  OUTLINED_FUNCTION_1();
  v35 = v34;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v36);
  v38 = &v103 - v37;
  v39 = type metadata accessor for MenuContext(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  v43 = &v103 - v42;
  v44 = *(type metadata accessor for MenuConfiguration(0) + 20);
  v116 = v39;
  swift_storeEnumTagMultiPayload();
  v117 = v2;
  v114 = v44;
  LOBYTE(v2) = sub_216B88F54(v2 + v44, v43);
  OUTLINED_FUNCTION_1_41();
  sub_21688710C(v43, v45);
  if (v2)
  {
    v46 = 4;
  }

  else
  {
    v46 = 7;
  }

  sub_21700BE44();
  sub_21700BE34();
  sub_217006814();
  v47 = sub_21700C084();
  v48 = v115;
  sub_21700BC04();

  (*(v28 + 8))(v32, v26);
  v49 = (*(v35 + 88))(v38, v33);
  v50 = *MEMORY[0x277D2B048];
  (*(v35 + 8))(v38, v33);
  v110 = v46;
  if (v49 == v50)
  {
    OUTLINED_FUNCTION_50();
    v52 = v113;
    (*(v51 + 16))(v113, v48, v47);
    swift_storeEnumTagMultiPayload();
    sub_21700BFF4();
    v124 = v46;
    v53 = v120;
    OUTLINED_FUNCTION_23_12();
    v54 = v117;
    OUTLINED_FUNCTION_32_13();
    sub_216881BA8(v55, v56, v57, v58, v59, v60, v61, v62, v63);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v52, v64);
LABEL_8:
    OUTLINED_FUNCTION_31_16();
    OUTLINED_FUNCTION_28_16();
    sub_21678C1C4();
    sub_2166997CC(v53, &qword_27CAB6DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
    inited = swift_initStackObject();
    v77 = OUTLINED_FUNCTION_25_10(inited, xmmword_217013DA0);
    swift_setDeallocating();
    sub_2169FAC94();
    v78 = v118;
    goto LABEL_10;
  }

  v32 = v112;
  v33 = v113;
  v53 = v120;
  v54 = v117;
  v26 = v122;
  if (sub_216882F84())
  {
    OUTLINED_FUNCTION_50();
    (*(v65 + 16))(v33, v48, v47);
    swift_storeEnumTagMultiPayload();
    sub_21700BFF4();
    v124 = v110;
    OUTLINED_FUNCTION_32_13();
    sub_216881BA8(v66, v67, v68, v69, v70, v71, v72, v73, v74);

    OUTLINED_FUNCTION_0_54();
    sub_21688710C(v33, v75);
    goto LABEL_8;
  }

  v77 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_31_16();
  v78 = v118;
  OUTLINED_FUNCTION_28_16();
LABEL_10:
  OUTLINED_FUNCTION_5_25();
  sub_21688746C(v54 + v114, v48, v79);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v81 = v121;
  if (!EnumCaseMultiPayload)
  {
    v119 = v77;
    v84 = v26;
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0) + 48);
    v86 = v33;
    (*(v33 + 32))(v81, v48, v84);
    sub_216887070(v48 + v85, v78);
    sub_216681B04(v78, v32, &qword_27CAB74B8);
    v87 = v109;
    if (__swift_getEnumTagSinglePayload(v32, 1, v109) == 1)
    {
      sub_2166997CC(v78, &qword_27CAB74B8);
      (*(v33 + 8))(v81, v84);
      sub_2166997CC(v32, &qword_27CAB74B8);
      v83 = MEMORY[0x277D84F90];
      v77 = v119;
      goto LABEL_19;
    }

    (*(v108 + 32))(v107, v32, v87);
    v77 = v105;
    sub_21700C6F4();
    v88 = v106;
    if (__swift_getEnumTagSinglePayload(v77, 1, v106) == 1)
    {
      sub_2166997CC(v77, &qword_27CABA780);
      OUTLINED_FUNCTION_18_13();
    }

    else
    {
      v91 = v103;
      sub_21700C6D4();
      sub_2168874CC(&qword_27CABA790, MEMORY[0x277D2B310]);
      LODWORD(v118) = sub_21700F1F4();
      v92 = v54;
      v93 = *(v104 + 8);
      v94 = v91;
      v53 = v120;
      v93(v94, v88);
      v93(v77, v88);
      v54 = v92;
      v81 = v121;
      OUTLINED_FUNCTION_18_13();
      if ((v118 & 1) == 0)
      {
        (*(v108 + 8))(v107, v87);
        sub_2166997CC(v78, &qword_27CAB74B8);
        (*(v33 + 8))(v81, v123);
        goto LABEL_12;
      }
    }

    v124 = v90;
    v95 = v78;
    v96 = v107;
    sub_216884568(v81, v107, v89, v54, 1735290739, 0xE400000000000000, &v124, v53);
    v97 = type metadata accessor for MenuAction();
    OUTLINED_FUNCTION_27_13(v53, v98, v99, v97);
    sub_21678C1C4();
    sub_2166997CC(v53, &qword_27CAB6DF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
    v100 = v81;
    v101 = swift_initStackObject();
    v83 = OUTLINED_FUNCTION_25_10(v101, xmmword_217013DA0);
    swift_setDeallocating();
    sub_2169FAC94();
    (*(v108 + 8))(v96, v87);
    sub_2166997CC(v95, &qword_27CAB74B8);
    (*(v86 + 8))(v100, v123);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_1_41();
  sub_21688710C(v48, v82);
LABEL_12:
  v83 = MEMORY[0x277D84F90];
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8);
  v102 = swift_initStackObject();
  *(v102 + 16) = xmmword_217013D90;
  *(v102 + 32) = v77;
  *(v102 + 40) = v83;
  sub_2167A2998(v102);
  OUTLINED_FUNCTION_26_5();
  sub_2169FAC94();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168868A0(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for OpenAddToPlaylistAction();
  v5[4] = sub_2168874CC(&qword_27CABA7A8, type metadata accessor for OpenAddToPlaylistAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_21688746C(a2, boxed_opaque_existential_1, type metadata accessor for OpenAddToPlaylistAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_216886990(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for OpenMoveToFolderAction();
  v5[4] = sub_2168874CC(&qword_27CABA7B8, type metadata accessor for OpenMoveToFolderAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_21688746C(a2, boxed_opaque_existential_1, type metadata accessor for OpenMoveToFolderAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_216886A80(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for RemoveFromPlaylistAction();
  v5[4] = sub_2168874CC(&qword_27CAB79E8, type metadata accessor for RemoveFromPlaylistAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_21688746C(a2, boxed_opaque_existential_1, type metadata accessor for RemoveFromPlaylistAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_216886B70(uint64_t a1, uint64_t a2)
{
  v5[3] = type metadata accessor for PromptHideFromProfileAction(0);
  v5[4] = sub_2168874CC(&qword_27CABA7C0, type metadata accessor for PromptHideFromProfileAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  sub_21688746C(a2, boxed_opaque_existential_1, type metadata accessor for PromptHideFromProfileAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_216886C60()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_targetPlaylist, &qword_27CAB74B8);
  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI26PlaylistMenuActionProvider_parentFolder, &qword_27CABA7C8);

  return v0;
}

uint64_t sub_216886D20()
{
  sub_216886C60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for PlaylistMenuActionProvider()
{
  result = qword_280E342F0;
  if (!qword_280E342F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216886DCC()
{
  sub_216886F7C(319, &qword_280E2A1F0, type metadata accessor for ObjectGraph, MEMORY[0x277D21E28]);
  if (v0 <= 0x3F)
  {
    sub_216886F7C(319, &qword_280E2A360, MEMORY[0x277CD8608], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_216886F7C(319, &qword_280E2A380, MEMORY[0x277D2B3A0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_216886F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_216887070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21688710C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216887160()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for ProcessDeepLinkAction();
  OUTLINED_FUNCTION_2(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = sub_2170075A4();
  OUTLINED_FUNCTION_2(v9);

  return sub_2167D3A7C(v0 + v3, v0 + v8);
}

uint64_t sub_2168872D4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_2(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v8);
  v10 = *(v2 + 16);
  v11 = v2 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return a2(v10, v2 + v5, v11);
}

uint64_t sub_2168873E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21688746C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2168874CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21688756C(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v60 = a1;
  sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v70 = v3;
  v71 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v69 = v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  OUTLINED_FUNCTION_1();
  v64 = v5;
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  OUTLINED_FUNCTION_1();
  v65 = v8;
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - v10;
  OUTLINED_FUNCTION_4_1();
  v61 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v59 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v58 = v13;
  v14 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v14);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v17 = v16;
  OUTLINED_FUNCTION_4_1();
  v18 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v56 - v25;
  v57 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v31 = v30;
  v32 = OUTLINED_FUNCTION_4_1();
  v33 = type metadata accessor for FlowAction(v32);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  v36 = &v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21688D828(44, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    sub_21700D6D4();
    (*(v20 + 16))(v24, v26, v18);
    sub_21700D244();
    (*(v20 + 8))(v26, v18);
  }

  v37 = *(type metadata accessor for GoToSongAction() + 20);
  sub_21700C084();
  OUTLINED_FUNCTION_34();
  (*(v38 + 16))(v17, v60 + v37);
  swift_storeEnumTagMultiPayload();
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v39 = sub_217005EF4();
  OUTLINED_FUNCTION_3_27(v39);
  v40 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_3_27(v40);
  v41 = type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_3_27(v41);
  v42 = &v36[v33[10]];
  *(v42 + 32) = 0;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  v43 = v57;
  (*(v28 + 16))(v36, v31, v57);
  sub_2167B9654(v17, &v36[v33[5]], type metadata accessor for FlowAction.Destination);
  v44 = v58;
  sub_217006214();
  v60 = sub_2170061F4();
  v46 = v45;
  (*(v59 + 8))(v44, v61);
  sub_2167B96B4(v17, type metadata accessor for FlowAction.Destination);
  (*(v28 + 8))(v31, v43);
  v47 = &v36[v33[6]];
  *v47 = v60;
  v47[1] = v46;
  v36[v33[7]] = 0;
  sub_2167A66B4(&v72, v42);
  type metadata accessor for ObjectGraph();
  v48 = v63;
  v49 = v67;
  sub_21700E094();
  *(&v73 + 1) = v33;
  v74 = sub_216887C68(qword_280E45BB8, type metadata accessor for FlowAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v72);
  sub_2167B9654(v36, boxed_opaque_existential_1, type metadata accessor for FlowAction);
  v51 = v64;
  v52 = v62;
  v53 = v66;
  (*(v64 + 104))(v62, *MEMORY[0x277D21E18], v66);
  sub_21700D5E4();

  (*(v51 + 8))(v52, v53);
  __swift_destroy_boxed_opaque_existential_1Tm(&v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0);
  (*(v70 + 104))(v69, *MEMORY[0x277D21CA8], v71);
  v54 = sub_21700E1F4();
  (*(v65 + 8))(v48, v49);
  sub_2167B96B4(v36, type metadata accessor for FlowAction);
  return v54;
}

uint64_t sub_216887C68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216887CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v85 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v83 = v11;
  v84 = v10;
  v12 = MEMORY[0x28223BE20](v10);
  v76 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v72 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v78 = &v72 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v72 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v80 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PromptRemoveAppWithAccessAction();
  v27 = *(v26 + 36);
  v79 = a3;
  v28 = a3 + v27;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  v82 = a1;
  sub_21700CE04();
  v29 = v85;
  v30 = v86;
  (*(v85 + 16))(v9, v86, v5);
  v31 = v81;
  sub_21700D224();
  if (v31)
  {
    (*(v29 + 8))(v30, v5);
    return (*(v83 + 8))(v82, v84);
  }

  v81 = v26;
  v74 = v21;
  v75 = v5;
  v33 = v79;
  (*(v80 + 32))(v79, v25, v21);
  v34 = v82;
  sub_21700CE04();
  v35 = sub_21700CDB4();
  v37 = v36;
  v38 = *(v83 + 8);
  v39 = v20;
  v40 = v84;
  v41 = v83 + 8;
  v38(v39, v84);
  v42 = v33;
  v73 = v37;
  if (v37)
  {
    v43 = v40;
    v44 = (v42 + v81[5]);
    *v44 = v35;
    v44[1] = v37;
    v45 = v78;
    sub_21700CE04();
    v46 = sub_21700CDB4();
    v48 = v47;
    v38(v45, v43);
    v49 = v41;
    if (v48)
    {
      v50 = (v42 + v81[6]);
      *v50 = v46;
      v50[1] = v48;
      v51 = v77;
      v52 = v82;
      sub_21700CE04();
      v53 = sub_21700CDB4();
      v55 = v54;
      v38(v51, v43);
      v83 = v49;
      v34 = v52;
      v56 = v42;
      if (v55)
      {
        v57 = 0xD000000000000011;
        v58 = (v56 + v81[7]);
        *v58 = v53;
        v58[1] = v55;
        v59 = v76;
        v77 = 0x8000000217083540;
        sub_21700CE04();
        v78 = sub_21700CDB4();
        v61 = v60;
        v38(v59, v43);
        if (v61)
        {
          v62 = OUTLINED_FUNCTION_1_42();
          v63(v62);
          result = (v38)(v34, v43);
          v64 = (v56 + v81[8]);
          *v64 = v78;
          v64[1] = v61;
          return result;
        }

        v65 = v77;
        v66 = v38;
        LODWORD(v78) = 1;
        v67 = 1;
      }

      else
      {
        v65 = 0xEE00726569666974;
        v66 = v38;
        v67 = 0;
        LODWORD(v78) = 1;
        v57 = 0x6E6564496D657469;
      }
    }

    else
    {
      v65 = 0xE500000000000000;
      v66 = v38;
      v34 = v82;
      LODWORD(v78) = 0;
      v67 = 0;
      v56 = v42;
      v57 = 0x656C746974;
    }
  }

  else
  {
    v65 = 0xE500000000000000;
    v66 = v38;
    LODWORD(v78) = 0;
    v67 = 0;
    v56 = v42;
    v57 = 0x4449707061;
  }

  v68 = sub_21700E2E4();
  sub_216888460(&qword_280E2A0F8, MEMORY[0x277D22548]);
  swift_allocError();
  *v69 = v57;
  v69[1] = v65;
  v69[2] = v81;
  (*(*(v68 - 8) + 104))(v69, *MEMORY[0x277D22530], v68);
  swift_willThrow();
  v70 = OUTLINED_FUNCTION_1_42();
  v71(v70);
  v66(v34, v84);
  result = (*(v80 + 8))(v56, v74);
  if (v73)
  {
  }

  if (v78)
  {
  }

  if (v67)
  {
  }

  return result;
}

uint64_t sub_2168883A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = v4 + *(a4 + 36);
  result = sub_21686CE9C(*v8, *(v8 + 8));
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  return result;
}

uint64_t sub_2168883F0(uint64_t a1)
{
  result = sub_216888460(qword_280E30098, type metadata accessor for PromptRemoveAppWithAccessAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216888460(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2168884BC()
{
  result = qword_27CABA7D8;
  if (!qword_27CABA7D8)
  {
    type metadata accessor for AgeVerificationOnboardingAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA7D8);
  }

  return result;
}

uint64_t sub_216888514(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AgeVerificationManager();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 24) = a2;

  return sub_216ECDBF4(&unk_217021228, v3);
}

uint64_t sub_2168885B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_216888654;

  return sub_216914044(a3);
}

uint64_t sub_216888654()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_216888784, 0, 0);
  }
}

uint64_t sub_216888784()
{
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_216888830(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2166DFAC0;

  return sub_2168885B4(a1, v5, v4);
}

uint64_t Bootstrap.__allocating_init(configuration:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_47();
  Bootstrap.init(configuration:)(v1);
  return v0;
}

uint64_t sub_216888918()
{
  OUTLINED_FUNCTION_33();
  v1[2] = v0;
  sub_21700EA34();
  v1[3] = sub_21700EA24();
  OUTLINED_FUNCTION_47();
  v3 = sub_21700E9B4();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_2168889A8, v3, v2);
}

uint64_t sub_2168889A8()
{
  OUTLINED_FUNCTION_33();
  if (qword_280E2B918 != -1)
  {
    OUTLINED_FUNCTION_16_22();
  }

  v1 = byte_280E73A83;
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_216888A60;

  return sub_21669A5E0(v1);
}

uint64_t sub_216888A60()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;
  v5[7] = v0;

  if (v0)
  {
    v9 = v5[4];
    v10 = v5[5];
    v11 = sub_216888BD8;
  }

  else
  {
    v5[8] = v3;
    v9 = v5[4];
    v10 = v5[5];
    v11 = sub_216888B74;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_216888B74()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_216888BD8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_216888C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  sub_2166975A4(a3, v24 - v11);
  v13 = sub_21700EA74();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2166997CC(v12, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21700E9B4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21700E5D4() + 32;
      OUTLINED_FUNCTION_65_0();
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v16;
        v25[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v19;
      swift_task_create();
      OUTLINED_FUNCTION_47();

      return v16;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_65_0();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v16;
    v25[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_216888EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  sub_2166975A4(a3, v24 - v11);
  v13 = sub_21700EA74();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2166997CC(v12, &unk_27CABFAC0);
  }

  else
  {
    sub_21700EA64();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21700E9B4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_21700E5D4() + 32;
      OUTLINED_FUNCTION_65_0();
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7E8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v16;
        v25[3] = v18;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v19;
      swift_task_create();
      OUTLINED_FUNCTION_47();

      return v16;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_65_0();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA7E8);
  if (v18 | v16)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v16;
    v25[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_216889150()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 40);
  sub_21700E214();

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_2168891BC()
{
  OUTLINED_FUNCTION_31();
  sub_2166997CC(*(v0 + 2112), &qword_27CAB94C8);
  OUTLINED_FUNCTION_8_22();

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216889264()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2166AB4A4;

  return MEMORY[0x28218A820]();
}

uint64_t Bootstrap.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  sub_21700DF14();
  sub_21700DF14();

  return sub_21700DF14();
}

uint64_t sub_216889358()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  swift_willThrow();

  sub_2166997CC(v2, &qword_27CAB94C8);

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_2168893F8@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 72);
  if (sub_21678485C())
  {
    v6 = sub_217007C84();
    v7 = sub_21700EDA4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_216679000, v6, v7, "JavaScript disabled.", v8, 2u);
      MEMORY[0x21CEA1440](v8, -1, -1);
    }

    result = 0;
  }

  else
  {
    sub_216685F4C(0, &qword_280E29B78);
    sub_21700D4D4();
    v10 = v5;
    sub_21700E094();
    type metadata accessor for SourceBundle();
    v11 = swift_allocObject();
    result = sub_216889830(v10, v12, a2 & 1, v11);
  }

  *a3 = result;
  return result;
}

uint64_t sub_216889548()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2168895BC@<X0>(void *a1@<X8>)
{
  result = sub_21678485C();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    type metadata accessor for JSStackManager();
    swift_allocObject();

    v3 = sub_2166BE510(v4);
    type metadata accessor for JSIntentDispatcher();
    sub_21700D4D4();
    sub_21700E094();
    sub_2166C1594();
  }

  *a1 = v3;
  return result;
}

uint64_t Bootstrap.deinit()
{

  v1 = OBJC_IVAR____TtC7MusicUI9Bootstrap_logger;
  sub_217007CA4();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t Bootstrap.__deallocating_deinit()
{
  Bootstrap.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21688976C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_73_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_34_0(v1);

  return sub_216889264();
}

uint64_t sub_216889830(void *a1, void *a2, int a3, uint64_t a4)
{
  v5 = a3;
  v29 = a3;
  v8 = type metadata accessor for SourceBundleLoader();
  v35 = *(v8 - 8);
  v34 = *(v35 + 64);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v33 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v32 = (v27 - v11);
  v12 = sub_21700EE74();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21700EE44();
  v27[0] = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v16 = sub_21700B5E4();
  MEMORY[0x28223BE20](v16 - 8);
  *(a4 + 24) = a2;
  *(a4 + 32) = a1;
  *(a4 + 48) = v5;
  v17 = sub_216685F4C(0, &qword_280E29CD0);
  v27[1] = "ons/viewablePercentage";
  v27[2] = v17;
  v28 = a2;
  v18 = a1;
  sub_21700B5D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA808);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_217013DA0;
  sub_21700EE34();
  v36 = v19;
  sub_2166AF330();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA810);
  sub_2166AF388();
  sub_21700F214();
  (*(v30 + 104))(v14, *MEMORY[0x277D85268], v31);
  *(a4 + 40) = sub_21700EEA4();
  v20 = v18;
  v21 = v32;
  sub_216A73FA4(v20, v28, v29, v32);
  v22 = v33;
  sub_2166B1ED4(v21, v33);
  v23 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v24 = swift_allocObject();
  sub_2166B1F48(v22, v24 + v23);
  v25 = sub_2166B22C4(&unk_217021330, v24);

  sub_2166B2500(v21);
  *(a4 + 16) = v25;
  return a4;
}

uint64_t sub_216889C24(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_216889D18;

  return v5(v2 + 16);
}

uint64_t sub_216889D18()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_216889E3C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_73_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_16(v1);

  return v4(v3);
}

uint64_t sub_216889F08()
{
  OUTLINED_FUNCTION_31();
  v0 = type metadata accessor for SourceBundleLoader();
  OUTLINED_FUNCTION_36(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2166AB4A4;

  return sub_2166B2F08();
}

__n128 ContentIdentifiers.init(cloudUniversalLibraryID:socialProfileID:storeCloudAlbumID:storeCloudID:storePurchasedAdamID:storeAdamID:libraryPersistentID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, char a13)
{
  result = a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13 & 1;
  return result;
}

uint64_t ContentDescriptor.init(kind:identifiers:url:)@<X0>(_BYTE *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  memcpy(a4 + 8, a2, 0x69uLL);
  v6 = &a4[*(type metadata accessor for ContentDescriptor() + 24)];

  return sub_2166CF4DC(a3, v6);
}

uint64_t sub_21688A060()
{
  sub_21700E514();
  OUTLINED_FUNCTION_144_0();
  if (v1 == sub_21700E514() && v0 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_28_17();
  }

  return v4 & 1;
}

uint64_t sub_21688A0E0()
{
  OUTLINED_FUNCTION_71_7();
  if (v2)
  {
    OUTLINED_FUNCTION_142_0();
    v5 = v4 | 0x6948737961770000;
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x6853737961776C61;
    }

    if (v3)
    {
      v7 = 0xEA00000000006564;
    }

    else
    {
      v7 = 0xEA0000000000776FLL;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    v6 = v1;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_142_0();
    v10 = v9 | 0x6948737961770000;
    if (v8)
    {
      v1 = v10;
    }

    else
    {
      v1 = 0x6853737961776C61;
    }

    if (v8)
    {
      v11 = 0xEA00000000006564;
    }

    else
    {
      v11 = 0xEA0000000000776FLL;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v6 == v1 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_28_17();
  }

  return v13 & 1;
}

uint64_t sub_21688A1CC()
{
  OUTLINED_FUNCTION_90_4();
  if (v6)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_17();
  }

  return v7 & 1;
}

uint64_t sub_21688A26C(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 27503;
  switch(a1)
  {
    case 1:
      v3 = 0xE600000000000000;
      v4 = 0x737574617473;
      break;
    case 2:
      v4 = 0x6554737574617473;
      v5 = 29816;
      goto LABEL_5;
    case 3:
      v3 = 0xE700000000000000;
      v6 = 0x726564616568;
      goto LABEL_8;
    case 4:
      v4 = 0x7463657269646572;
      v5 = 25701;
LABEL_5:
      v3 = v5 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v4 = 7107189;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v4 = 2036625250;
      break;
    case 7:
      v3 = 0xE700000000000000;
      v6 = 0x63697274656DLL;
LABEL_8:
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE200000000000000;
  v8 = 27503;
  switch(a2)
  {
    case 1:
      v7 = 0xE600000000000000;
      v8 = 0x737574617473;
      break;
    case 2:
      v8 = 0x6554737574617473;
      v9 = 29816;
      goto LABEL_15;
    case 3:
      v7 = 0xE700000000000000;
      v10 = 0x726564616568;
      goto LABEL_18;
    case 4:
      v8 = 0x7463657269646572;
      v9 = 25701;
LABEL_15:
      v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 5:
      v7 = 0xE300000000000000;
      v8 = 7107189;
      break;
    case 6:
      v7 = 0xE400000000000000;
      v8 = 2036625250;
      break;
    case 7:
      v7 = 0xE700000000000000;
      v10 = 0x63697274656DLL;
LABEL_18:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
      break;
    default:
      break;
  }

  if (v4 == v8 && v3 == v7)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_28_17();
  }

  return v12 & 1;
}

uint64_t sub_21688A43C(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000657669;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688A4D0(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688A558(unsigned __int8 a1, char a2)
{
  v2 = 0x657261757173;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x656C63726963;
    }

    else
    {
      v4 = 0x6B63697262;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x657261757173;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656C63726963;
    }

    else
    {
      v2 = 0x6B63697262;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688A634(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688A6C0(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6E69776F6C6C6F66;
  v4 = 0xE900000000000067;
  v5 = a1;
  v6 = 0x6E69776F6C6C6F66;
  switch(v5)
  {
    case 1:
      v6 = 0x6F6C6C6F46746F6ELL;
      v4 = 0xEC000000676E6977;
      break;
    case 2:
      OUTLINED_FUNCTION_136_0();
      break;
    case 3:
      v4 = 0xE700000000000000;
      v6 = 0x64656B636F6C62;
      break;
    case 4:
      v6 = 0x4264656B636F6C62;
      v4 = 0xE900000000000079;
      break;
    case 5:
      v4 = 0xE400000000000000;
      v6 = 1718379891;
      break;
    default:
      break;
  }

  v7 = v2 + 3;
  switch(a2)
  {
    case 1:
      v3 = 0x6F6C6C6F46746F6ELL;
      v7 = 0xEC000000676E6977;
      break;
    case 2:
      v3 = 0x6574736575716572;
      v7 = 0xE900000000000064;
      break;
    case 3:
      v7 = 0xE700000000000000;
      v3 = 0x64656B636F6C62;
      break;
    case 4:
      v3 = 0x4264656B636F6C62;
      v7 = v2 + 21;
      break;
    case 5:
      v7 = 0xE400000000000000;
      v3 = 1718379891;
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17();
  }

  return v9 & 1;
}

uint64_t sub_21688A884(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6D756C6F63;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E6D756C6F63;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x7265736F706D6F63;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x746C7561666564;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_38_8(22);
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x7265736F706D6F63;
      break;
    case 2:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_71_7();
      break;
    case 3:
      OUTLINED_FUNCTION_37_12();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688A9A4(char a1, char a2)
{
  v2 = 1701736302;
  if (a1)
  {
    OUTLINED_FUNCTION_142_0();
    v5 = v4 | 0x74616E7265740000;
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x6D6574737973;
    }

    if (v3)
    {
      v7 = 0xE900000000000065;
    }

    else
    {
      v7 = 0xE600000000000000;
    }
  }

  else
  {
    v7 = 0xE400000000000000;
    v6 = 1701736302;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_142_0();
    v10 = v9 | 0x74616E7265740000;
    if (v8)
    {
      v2 = v10;
    }

    else
    {
      v2 = 0x6D6574737973;
    }

    if (v8)
    {
      v11 = 0xE900000000000065;
    }

    else
    {
      v11 = 0xE600000000000000;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v6 == v2 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_28_17();
  }

  return v13 & 1;
}

uint64_t sub_21688AA88(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688AB0C()
{
  OUTLINED_FUNCTION_134_1();
  OUTLINED_FUNCTION_133();
  v3 = 0x61746544676E6F73;
  v5 = v4;
  v6 = 0x61746544676E6F73;
  v7 = v0;
  switch(v5)
  {
    case 1:
      v7 = 0x8000000217081680;
      v6 = 0xD000000000000018;
      break;
    case 2:
      v7 = 0x8000000217081360;
      v6 = v2 + 16;
      break;
    case 3:
      v7 = 0x8000000217081390;
      v6 = v2 + 20;
      break;
    case 4:
      break;
    default:
      v7 = 0x8000000217080FD0;
      v6 = v2 + 12;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x8000000217081680;
      v3 = 0xD000000000000018;
      break;
    case 2:
      v0 = 0x8000000217081360;
      v3 = v2 + 16;
      break;
    case 3:
      v0 = 0x8000000217081390;
      v3 = v2 + 20;
      break;
    case 4:
      break;
    default:
      v0 = 0x8000000217080FD0;
      v3 = v2 + 12;
      break;
  }

  if (v6 == v3 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_62_3();
  }

  return v9 & 1;
}

uint64_t sub_21688AC68(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688ACF4(char a1, char a2)
{
  v2 = 2036427888;
  if (a1)
  {
    OUTLINED_FUNCTION_91_7();
    if (v3)
    {
      v5 = 1735289203;
    }

    else
    {
      v5 = 0x656C6666756873;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 2036427888;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_91_7();
    if (v7)
    {
      v2 = 1735289203;
    }

    else
    {
      v2 = 0x656C6666756873;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_28_17();
  }

  return v11 & 1;
}

uint64_t sub_21688AE10(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688AE94(unsigned __int8 a1, char a2)
{
  v2 = 1701602409;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701602409;
  switch(v4)
  {
    case 1:
      v5 = 0x6973616863727570;
      v3 = 0xEA0000000000676ELL;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_38_8(18);
      break;
    case 3:
      v3 = 1818845510;
      OUTLINED_FUNCTION_107_6();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6973616863727570;
      v6 = 0xEA0000000000676ELL;
      break;
    case 2:
      OUTLINED_FUNCTION_37_12();
      break;
    case 3:
      v2 = 0x6573616863727570;
      v6 = 0xEE0064656C696146;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688AFDC()
{
  OUTLINED_FUNCTION_130_0();
  v2 = 0x616974696E696E75;
  v4 = v3;
  v5 = 0x616974696E696E75;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x676E697461647075;
      break;
    case 2:
      v5 = 0x6F5464656C696166;
      v6 = 0xEC00000064616F4CLL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x7964616572;
      break;
    case 4:
      v5 = 0x69446C6169636F73;
      v6 = 0xEE0064656C626173;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE800000000000000;
      v2 = 0x676E697461647075;
      break;
    case 2:
      v2 = 0x6F5464656C696166;
      v0 = 0xEC00000064616F4CLL;
      break;
    case 3:
      v0 = 0xE500000000000000;
      v2 = 0x7964616572;
      break;
    case 4:
      v0 = 1818386803;
      OUTLINED_FUNCTION_107_6();
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_62_3();
  }

  return v8 & 1;
}

uint64_t sub_21688B168(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "gradientListRowImage";
    }

    else
    {
      v2 = "splitPosterBottomImage";
    }
  }

  else
  {
    v2 = "oLoad";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_28_17();
  }

  return v5 & 1;
}

uint64_t sub_21688B234(char a1, char a2)
{
  v2 = 0x676E696461656CLL;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x676E696C69617274;
    }

    else
    {
      v3 = 0x64657265746E6563;
    }

    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x676E696461656CLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x676E696C69617274;
    }

    else
    {
      v2 = 0x64657265746E6563;
    }

    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_17();
  }

  return v7 & 1;
}

uint64_t sub_21688B324(unsigned __int8 a1, char a2)
{
  v2 = 0x6564696C67;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6564696C67;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_38_8(19);
      break;
    case 2:
      OUTLINED_FUNCTION_126();
      break;
    case 3:
      v5 = 0x6269726373627573;
      v3 = 0xEA00000000006465;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_114_3();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_37_12();
      break;
    case 2:
      v2 = 0x6373627553746F6ELL;
      v6 = 0xED00006465626972;
      break;
    case 3:
      v2 = 0x6269726373627573;
      v6 = 0xEA00000000006465;
      break;
    case 4:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_66_8();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688B490(unsigned __int8 a1, char a2)
{
  v2 = 0x64656B6E696C6E75;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x64656B6E696C6E75;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_38_8(23);
      break;
    case 2:
      v5 = 0x656C626967696C65;
      break;
    case 3:
      v3 = 27746;
      OUTLINED_FUNCTION_124_2();
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_114_3();
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_37_12();
      break;
    case 2:
      v2 = 0x656C626967696C65;
      break;
    case 3:
      v2 = 0x6967696C45746F6ELL;
      v6 = 0xEB00000000656C62;
      break;
    case 4:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_66_8();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688B5D8()
{
  OUTLINED_FUNCTION_123_1();
  v2 = 0x577373696D736964;
  v4 = v3;
  v5 = 0x577373696D736964;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v6 = 0x800000021707FAF0;
      v5 = 0xD000000000000019;
      break;
    case 2:
      v6 = 0x800000021707FB10;
      v5 = 0xD000000000000027;
      break;
    case 3:
      v6 = 0x800000021707FB40;
      v5 = 0xD000000000000017;
      break;
    case 4:
      v5 = 0x72656C41776F6873;
      v6 = 0xE900000000000074;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x800000021707FAF0;
      v2 = 0xD000000000000019;
      break;
    case 2:
      v0 = 0x800000021707FB10;
      v2 = 0xD000000000000027;
      break;
    case 3:
      v0 = 0x800000021707FB40;
      v2 = 0xD000000000000017;
      break;
    case 4:
      v2 = 0x72656C41776F6873;
      v0 = 0xE900000000000074;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_62_3();
  }

  return v8 & 1;
}

uint64_t sub_21688B76C()
{
  OUTLINED_FUNCTION_39_9();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_21700F7D4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_21688B7D8(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE900000000000074;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688B868(char a1)
{
  v2 = "";
  switch(a1)
  {
    case 1:
      v2 = "musicAddToLibrary";
      break;
    case 2:
      v2 = "musicAddToPlaylist";
      break;
    case 3:
      v2 = "musicPlaybackUpsell";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_28_17();
  }

  return v5 & 1;
}

uint64_t sub_21688B980(char a1)
{
  if (a1)
  {
    v1 = 0xEF7265766F436E65;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688BA3C()
{
  OUTLINED_FUNCTION_90_4();
  if (v6)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_17();
  }

  return v7 & 1;
}

uint64_t sub_21688BAC4(char a1, char a2)
{
  v2 = "nded";
  if (a1)
  {
    v3 = "compactHorizontalSizeClassOnly";
  }

  else
  {
    v3 = "nded";
  }

  if (a2)
  {
    v2 = "compactHorizontalSizeClassOnly";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_21700F7D4();
  }

  return v4 & 1;
}

uint64_t sub_21688BB60(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1684828002;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1684828002;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688BBEC(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "nextPageAppearance";
    }

    else
    {
      v2 = "nextPageDisappearance";
    }
  }

  else
  {
    v2 = "tSection";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_28_17();
  }

  return v5 & 1;
}

uint64_t sub_21688BCC0(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  v5 = 0x6974616D6F747561;
  v6 = 0xE900000000000063;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = OUTLINED_FUNCTION_104_3();
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_104_3() & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      v6 = 0xEB00000000656772;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      OUTLINED_FUNCTION_103_6();
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x656772616CLL;
      break;
    case 3:
      OUTLINED_FUNCTION_103_6();
      v2 = 26482;
      OUTLINED_FUNCTION_124_2();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_62_3();
  }

  return v8 & 1;
}

uint64_t sub_21688BDE4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6448503;
  }

  else
  {
    v3 = 0x63696D616E7964;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6448503;
  }

  else
  {
    v5 = 0x63696D616E7964;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688BE70(char a1, char a2)
{
  v2 = 0xEA0000000000796CLL;
  v3 = 0x6E4F73616D6D6F63;
  v4 = "commasWithAmpersand";
  if (a1)
  {
    OUTLINED_FUNCTION_143_0();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0xED0000646E416874;
    }
  }

  else
  {
    v9 = 0x6E4F73616D6D6F63;
    v10 = 0xEA0000000000796CLL;
  }

  if (a2)
  {
    v11 = (v4 - 32) | 0x8000000000000000;
    if (a2 == 1)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0x695773616D6D6F63;
    }

    if (a2 == 1)
    {
      v2 = v11;
    }

    else
    {
      v2 = 0xED0000646E416874;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_62_3();
  }

  return v13 & 1;
}

uint64_t sub_21688BF70(unsigned __int8 a1, char a2)
{
  v2 = 0x6C6C616D73;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x72616C75676572;
    }

    else
    {
      v4 = 0x656772616CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x6C6C616D73;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x72616C75676572;
    }

    else
    {
      v2 = 0x656772616CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688C054(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x656C63726963;
  }

  else
  {
    v2 = 0x657261757173;
  }

  if (a2)
  {
    v3 = 0x656C63726963;
  }

  else
  {
    v3 = 0x657261757173;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_21700F7D4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_21688C0CC()
{
  OUTLINED_FUNCTION_90_4();
  if (v6)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE900000000000072;
  }

  OUTLINED_FUNCTION_39_9();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_17();
  }

  return v7 & 1;
}

uint64_t sub_21688C15C()
{
  OUTLINED_FUNCTION_101_3();
  v2 = 0xE600000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE800000000000000;
      v5 = 0x647261646E617473;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_104_3();
      break;
    case 3:
      v2 = 0xE700000000000000;
      v5 = 0x6B726F77747261;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v5 = 0x676E6964616F6CLL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(v0)
  {
    case 1:
      v6 = 0xE800000000000000;
      v1 = 0x647261646E617473;
      break;
    case 2:
      OUTLINED_FUNCTION_103_6();
      break;
    case 3:
      v6 = 0xE700000000000000;
      v1 = 0x6B726F77747261;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v1 = 0x676E6964616F6CLL;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688C2A0(unsigned __int8 a1, char a2)
{
  v2 = 0x6B63696C63;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6B63696C63;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_38_8(22);
      break;
    case 2:
      v5 = 0x4565727574616566;
      v6 = 0x64656761676ELL;
      goto LABEL_6;
    case 3:
      v5 = 0x6574617453696C6DLL;
      v6 = 0x65676E616843;
LABEL_6:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1701273968;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_37_12();
      break;
    case 2:
      v2 = 0x4565727574616566;
      v8 = 0x64656761676ELL;
      goto LABEL_12;
    case 3:
      v2 = 0x6574617453696C6DLL;
      v8 = 0x65676E616843;
LABEL_12:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 4:
      v7 = 0xE400000000000000;
      v2 = 1701273968;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_28_17();
  }

  return v10 & 1;
}

uint64_t sub_21688C414()
{
  OUTLINED_FUNCTION_66_8();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x6572676F72506E69;
      v2 = 0xEA00000000007373;
      break;
    case 3:
      OUTLINED_FUNCTION_136_0();
      break;
    default:
      v5 = OUTLINED_FUNCTION_38_8(30);
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      break;
    case 2:
      v1 = 0x6572676F72506E69;
      v6 = 0xEA00000000007373;
      break;
    case 3:
      v1 = 0x6574656C706D6F63;
      v6 = 0xE900000000000064;
      break;
    default:
      OUTLINED_FUNCTION_37_12();
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688C544(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEF64656464416E69;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688C5E0(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688C668(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000736E69;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688C700()
{
  OUTLINED_FUNCTION_39_9();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_21700F7D4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_21688C77C()
{
  OUTLINED_FUNCTION_71_7();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = 0x7265766F706F70;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v5 = 0x6572616873;
      break;
    case 3:
      v5 = 0x747865746E6F63;
      break;
    case 4:
      OUTLINED_FUNCTION_137_0();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v1 = 0x7265766F706F70;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v1 = 0x6572616873;
      break;
    case 3:
      v1 = 0x747865746E6F63;
      break;
    case 4:
      v1 = 0x616C506F54646461;
      v6 = 0xED00007473696C79;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688C8D4(char a1)
{
  if (a1)
  {
    v1 = 0xEE006C6169726574;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688C970(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000077;
  v3 = 0x6F4E6E657473696CLL;
  v4 = a1;
  v5 = 0x6F4E6E657473696CLL;
  v6 = 0xE900000000000077;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6573776F7262;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x6F69646172;
      break;
    case 3:
      v5 = 0x614C686372616573;
      v7 = 0x676E69646ELL;
      goto LABEL_6;
    case 4:
      v5 = 0x6552686372616573;
      v7 = 0x73746C7573;
LABEL_6:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v5 = 0x736F65646976;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x6573776F7262;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x6F69646172;
      break;
    case 3:
      OUTLINED_FUNCTION_101_3();
      v3 = v10 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      v9 = 0x676E69646ELL;
      goto LABEL_13;
    case 4:
      OUTLINED_FUNCTION_101_3();
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
      v9 = 0x73746C7573;
LABEL_13:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x736F65646976;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_62_3();
  }

  return v12 & 1;
}

uint64_t sub_21688CB18()
{
  OUTLINED_FUNCTION_90_4();
  if (v6)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_17();
  }

  return v7 & 1;
}

uint64_t sub_21688CBA4(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000079;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688CC38()
{
  OUTLINED_FUNCTION_90_4();
  if (v6)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE90000000000006ELL;
  }

  OUTLINED_FUNCTION_39_9();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_17();
  }

  return v7 & 1;
}

uint64_t sub_21688CCC8()
{
  OUTLINED_FUNCTION_90_4();
  if (v6)
  {
    v0 = 0xE700000000000000;
  }

  else
  {
    v0 = 0xE900000000000074;
  }

  OUTLINED_FUNCTION_39_9();
  if (v6)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = v1 == v2 && v0 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_17();
  }

  return v7 & 1;
}

uint64_t sub_21688CD58(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "EnableScratchpad";
    }

    else
    {
      v2 = "ApplicationScriptURL";
    }
  }

  else
  {
    v2 = "SwiftMusicDisableJavaScript";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_28_17();
  }

  return v5 & 1;
}

uint64_t sub_21688CE2C(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "laimerPresentation";
    }

    else
    {
      v2 = "isclaimerPresentation";
    }
  }

  else
  {
    v2 = "ScriptURLStoredDeviceVersion";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_28_17();
  }

  return v5 & 1;
}

uint64_t sub_21688CEF8(char a1)
{
  if (a1)
  {
    v2 = "newFeaturesNoticePresentation";
  }

  else
  {
    v2 = "privacyDisclaimerPresentation";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_80_5();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_28_17();
  }

  return v5 & 1;
}

uint64_t sub_21688CFA0(char a1)
{
  if (a1)
  {
    v2 = "UserRequestedSubscriptionHidden";
  }

  else
  {
    v2 = "isUMCachePolicyEnabled";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_80_5();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_28_17();
  }

  return v5 & 1;
}

uint64_t sub_21688D034(char a1, char a2)
{
  v3 = 0xD00000000000001BLL;
  v4 = "libraryImportWebView";
  v5 = "libraryImportWebView";
  switch(a1)
  {
    case 1:
      v5 = "SwiftMusicURLSchemeOverride";
      goto LABEL_4;
    case 2:
      v5 = "SwiftMusicURLHostOverride";
LABEL_4:
      v3 = 0xD000000000000019;
      break;
    case 3:
      v5 = "SwiftMusicURLPortOverride";
      v3 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  v6 = 0xD00000000000001BLL;
  switch(a2)
  {
    case 1:
      v4 = "SwiftMusicURLSchemeOverride";
      goto LABEL_9;
    case 2:
      v4 = "SwiftMusicURLHostOverride";
LABEL_9:
      v6 = 0xD000000000000019;
      break;
    case 3:
      v4 = "SwiftMusicURLPortOverride";
      v6 = 0xD00000000000001BLL;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688D154(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656772616CLL;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x656772616CLL;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688D1E4()
{
  OUTLINED_FUNCTION_39_9();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_21700F7D4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_21688D260(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_39_9();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688D2E4(char a1, char a2)
{
  v2 = 0x65726E6567;
  if (a1)
  {
    OUTLINED_FUNCTION_91_7();
    if (v3)
    {
      v5 = 2003789939;
    }

    else
    {
      v5 = 0x726F7461727563;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
    v5 = 0x65726E6567;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_91_7();
    if (v7)
    {
      v2 = 2003789939;
    }

    else
    {
      v2 = 0x726F7461727563;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE700000000000000;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_28_17();
  }

  return v11 & 1;
}

uint64_t sub_21688D3B8(unsigned __int8 a1, char a2)
{
  v2 = 0x6D744179626C6F64;
  v3 = 0xEA0000000000736FLL;
  v4 = a1;
  v5 = 0x6D744179626C6F64;
  switch(v4)
  {
    case 1:
      v5 = 0x64754179626C6F64;
      v3 = 0xEA00000000006F69;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x7373656C73736F6CLL;
      break;
    case 3:
      v5 = 0x736F4C7365526968;
      v6 = 0x7373656C73;
      goto LABEL_6;
    case 4:
      v5 = 0x4D6C617469676964;
      v6 = 0x7265747361;
LABEL_6:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xEA0000000000736FLL;
  switch(a2)
  {
    case 1:
      v2 = 0x64754179626C6F64;
      v7 = 0xEA00000000006F69;
      break;
    case 2:
      v7 = 0xE800000000000000;
      v2 = 0x7373656C73736F6CLL;
      break;
    case 3:
      v2 = 0x736F4C7365526968;
      v8 = 0x7373656C73;
      goto LABEL_12;
    case 4:
      v2 = 0x4D6C617469676964;
      v8 = 0x7265747361;
LABEL_12:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_28_17();
  }

  return v10 & 1;
}

uint64_t sub_21688D578(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_144_0();
  if (v4 == (a3)(a2) && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_28_17();
  }

  return v9 & 1;
}

uint64_t sub_21688D628(unsigned __int8 a1, char a2)
{
  v2 = 0x6472616F6279656BLL;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x6472616F6279656BLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x79726F7473;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1701998445;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x636972796CLL;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v3 = 0x80000002170801D0;
      break;
    case 5:
      v3 = 0x80000002170801F0;
      v5 = 0xD000000000000012;
      break;
    case 6:
      v5 = 0x6E654D6570697773;
      v3 = 0xE900000000000075;
      break;
    case 7:
      v3 = 0x8000000217080210;
      v5 = 0xD000000000000015;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x79726F7473;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1701998445;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x636972796CLL;
      break;
    case 4:
      v2 = 0xD000000000000010;
      v6 = 0x80000002170801D0;
      break;
    case 5:
      v6 = 0x80000002170801F0;
      v2 = 0xD000000000000012;
      break;
    case 6:
      v2 = 0x6E654D6570697773;
      v6 = 0xE900000000000075;
      break;
    case 7:
      v6 = 0x8000000217080210;
      v2 = 0xD000000000000015;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688D870(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_144_0();
  if (v4 == (a3)() && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_28_17();
  }

  return v8 & 1;
}

uint64_t sub_21688D900()
{
  OUTLINED_FUNCTION_39_9();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_21700F7D4();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_21688D9BC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_2168A5534(a4, a5);
  sub_21700E7C4();
  sub_21700E7C4();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_62_3();
  }

  return v8 & 1;
}

uint64_t sub_21688DA88()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688DB04()
{
  sub_21700E614();
}

uint64_t sub_21688DC00()
{
  sub_21700E614();
}

uint64_t sub_21688DC70()
{
  sub_21700E614();
}

uint64_t sub_21688DCD4()
{
  sub_21700E614();
}

uint64_t sub_21688DD54()
{
  sub_21700E614();
}

uint64_t sub_21688DDBC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_136_0();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688DEC4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_113_4();
      break;
    case 3:
      OUTLINED_FUNCTION_40();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688DF68()
{
  sub_21700E614();
}

uint64_t sub_21688DFEC()
{
  sub_21700E614();
}

uint64_t sub_21688E04C()
{
  OUTLINED_FUNCTION_134_1();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_40();
      break;
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_133();
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E11C()
{
  sub_21700E614();
}

uint64_t sub_21688E184(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_94_6();
      break;
    case 3:
      OUTLINED_FUNCTION_124_2();
      OUTLINED_FUNCTION_94_6();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E22C(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_91_7();
  }

  sub_21700E614();
}

uint64_t sub_21688E2A4()
{
  sub_21700E614();
}

uint64_t sub_21688E304(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_40();
      break;
    case 3:
      OUTLINED_FUNCTION_107_6();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E3C0()
{
  OUTLINED_FUNCTION_130_0();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_107_6();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E49C()
{
  sub_21700E614();
}

uint64_t sub_21688E538(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_40();
      break;
    case 2:
      OUTLINED_FUNCTION_126();
      break;
    case 4:
      OUTLINED_FUNCTION_44_12();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E5F8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_40();
      break;
    case 3:
      OUTLINED_FUNCTION_124_2();
      break;
    case 4:
      OUTLINED_FUNCTION_44_12();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E6B8()
{
  OUTLINED_FUNCTION_123_1();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_40();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688E7C8()
{
  sub_21700E614();
}

uint64_t sub_21688E810()
{
  sub_21700E614();
}

uint64_t sub_21688E87C()
{
  sub_21700E614();
}

uint64_t sub_21688E928()
{
  sub_21700E614();
}

uint64_t sub_21688E9D0()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688EA34()
{
  sub_21700E614();
}

uint64_t sub_21688EA90()
{
  sub_21700E614();
}

uint64_t sub_21688EAF4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_127();
  }

  sub_21700E614();
}

uint64_t sub_21688EB70()
{
  sub_21700E614();
}

uint64_t sub_21688EBEC(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_143_0();
  }

  sub_21700E614();
}

uint64_t sub_21688EC80()
{
  sub_21700E614();
}

uint64_t sub_21688ED04()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688ED70()
{
  OUTLINED_FUNCTION_120_2();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_94_6();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688EE24(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_40();
      break;
    case 2:
      OUTLINED_FUNCTION_107_6();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688EEFC()
{
  OUTLINED_FUNCTION_44_12();
  switch(v0)
  {
    case 1:
    case 2:
      break;
    case 3:
      OUTLINED_FUNCTION_136_0();
      break;
    default:
      OUTLINED_FUNCTION_40();
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688EFA8()
{
  sub_21700E614();
}

uint64_t sub_21688F020()
{
  sub_21700E614();
}

uint64_t sub_21688F084()
{
  sub_21700E614();
}

uint64_t sub_21688F0F8()
{
  sub_21700E614();
}

uint64_t sub_21688F150()
{
  OUTLINED_FUNCTION_113_4();
  switch(v0)
  {
    case 4:
      OUTLINED_FUNCTION_137_0();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688F22C()
{
  sub_21700E614();
}

uint64_t sub_21688F2A4()
{
  sub_21700E614();
}

uint64_t sub_21688F330(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
      OUTLINED_FUNCTION_120_2();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688F418()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688F480()
{
  sub_21700E614();
}

uint64_t sub_21688F4F0()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688F55C()
{
  OUTLINED_FUNCTION_89_7();
  sub_21700E614();
}

uint64_t sub_21688F5E4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_127();
  }

  sub_21700E614();
}

uint64_t sub_21688F660()
{
  sub_21700E614();
}

uint64_t sub_21688F6FC()
{
  sub_21700E614();
}

uint64_t sub_21688F77C()
{
  sub_21700E614();
}

uint64_t sub_21688F7E4()
{
  sub_21700E614();
}

uint64_t sub_21688F890()
{
  sub_21700E614();
}

uint64_t sub_21688F8E8()
{
  sub_21700E614();
}

uint64_t sub_21688F948(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_91_7();
  }

  sub_21700E614();
}

uint64_t sub_21688F9DC()
{
  sub_21700E614();
}

uint64_t sub_21688FAE8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  OUTLINED_FUNCTION_121_1();
}

uint64_t sub_21688FB5C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
    case 5:
    case 7:
      OUTLINED_FUNCTION_40();
      break;
    default:
      break;
  }

  sub_21700E614();
}

uint64_t sub_21688FCBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_121_1();
}

uint64_t sub_21688FD0C()
{
  sub_21700E614();
}

void ContentDescriptor.init(deserializing:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_22_3();
  v68 = v13;
  v15 = v14;
  v17 = v16;
  v66 = v18;
  v72 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  v24 = &v61 - v23;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22();
  v30 = MEMORY[0x28223BE20](v29);
  v67 = &v61 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v61 - v32;
  v34 = *(v26 + 16);
  v71 = v17;
  v69 = v35;
  v34(&v61 - v32, v17);
  v70 = v20;
  v36 = *(v20 + 16);
  v37 = v72;
  v36(v24, v15);
  v38 = v68;
  ContentKind.init(deserializing:using:)(v33, v24, v39, v40, v41, v42, v43, v44, v61, v62, SWORD2(v62), SBYTE6(v62), SHIBYTE(v62));
  if (v38)
  {
    (*(v70 + 8))(v15, v37);
    (*(v26 + 8))(v71, v69);
  }

  else
  {
    v62 = v36;
    v63 = v15;
    v68 = v26;
    v45 = v67;
    *v66 = a13;
    v46 = v71;
    sub_21700CE04();
    if (sub_21700CDA4())
    {
      sub_21700E2E4();
      sub_2168A5534(&qword_280E2A0F8, MEMORY[0x277D22548]);
      OUTLINED_FUNCTION_12();
      v48 = v47;
      v49 = type metadata accessor for ContentDescriptor();
      *v48 = 0x696669746E656469;
      v48[1] = 0xEB00000000737265;
      v48[2] = v49;
      OUTLINED_FUNCTION_50();
      (*(v50 + 104))(v48);
      swift_willThrow();
      (*(v70 + 8))(v63, v72);
      v51 = v69;
      v52 = *(v68 + 8);
      v52(v46, v69);
      v52(v45, v51);
    }

    else
    {
      v53 = OUTLINED_FUNCTION_109();
      v54 = v69;
      (v34)(v53);
      v62(v65, v63, v72);
      ContentIdentifiers.init(deserializing:using:)();
      v55 = v68;
      memcpy(v66 + 8, v73, 0x69uLL);
      v56 = v64;
      v57 = v71;
      sub_21700CE04();
      type metadata accessor for ContentDescriptor();
      sub_21700CD34();
      v58 = OUTLINED_FUNCTION_128();
      v59(v58);
      v60 = *(v55 + 8);
      v60(v57, v54);
      v60(v56, v54);
      v60(v67, v54);
    }
  }

  OUTLINED_FUNCTION_21_4();
}

JSValue __swiftcall ContentDescriptor.makeValue(in:)(JSContext in)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_67_0();
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __dst[0] = *v1;
    sub_216890F8C(result.super.isa, in.super.isa);
    memcpy(v15, v1 + 8, 0x69uLL);
    memcpy(v14, v1 + 8, 0x69uLL);
    sub_21686BC90(v15, __dst);
    ContentIdentifiers.makeValue(in:)(in);
    memcpy(__dst, v14, 0x69uLL);
    sub_21686BCEC(__dst);
    sub_21700F0B4();
    v8 = type metadata accessor for ContentDescriptor();
    sub_2168282D4(&v1[*(v8 + 24)], v2, &qword_27CABA820);
    v9 = sub_217005EF4();
    if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
    {
      sub_2166997CC(v2, &qword_27CABA820);
    }

    else
    {
      v10 = sub_217005DE4();
      v12 = v11;
      OUTLINED_FUNCTION_50();
      (*(v13 + 8))(v2, v9);
      v14[0] = v10;
      v14[1] = v12;
      sub_21700DD04();

      sub_21700F0B4();
    }

    return isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_216890478()
{
  switch(*v0)
  {
    case 4:
    case 0x16:
      return;
    case 5:
      OUTLINED_FUNCTION_77_6();
      break;
    case 6:
      OUTLINED_FUNCTION_69_7();
      break;
    case 7:
      OUTLINED_FUNCTION_68_6();
      break;
    case 8:
      OUTLINED_FUNCTION_48_9();
      break;
    case 9:
      OUTLINED_FUNCTION_70_4();
      break;
    case 0xA:
      OUTLINED_FUNCTION_17_5();
      break;
    case 0xB:
      OUTLINED_FUNCTION_47_10();
      break;
    case 0xC:
      OUTLINED_FUNCTION_93_6();
      break;
    case 0xD:
      OUTLINED_FUNCTION_60_4();
      break;
    case 0xE:
    case 0xF:
      OUTLINED_FUNCTION_79_8();
      break;
    case 0x10:
      OUTLINED_FUNCTION_49_9();
      break;
    case 0x11:
      OUTLINED_FUNCTION_53_8();
      break;
    case 0x12:
      OUTLINED_FUNCTION_46_10();
      break;
    case 0x13:
      OUTLINED_FUNCTION_84_7();
      break;
    case 0x14:
      OUTLINED_FUNCTION_61_4();
      break;
    case 0x15:
      OUTLINED_FUNCTION_72_7();
      break;
    default:
      OUTLINED_FUNCTION_52_6();
      break;
  }
}

uint64_t sub_216890548()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABACC0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_29();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  MEMORY[0x21CE9F090](v2);
  v5 = sub_21700E264();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2166997CC(v4, &qword_27CABACC0);
  }

  else
  {
    v6 = sub_21700E254();
    OUTLINED_FUNCTION_50();
    (*(v7 + 8))(v4, v5);
    v8 = [v6 ams_DSID];

    if (v8)
    {
      v9 = [v8 stringValue];

      sub_21700E514();
    }
  }

  return OUTLINED_FUNCTION_8();
}

MusicUI::ContentKind::AppleCuratorKind_optional __swiftcall ContentKind.AppleCuratorKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21700F5E4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContentKind.AppleCuratorKind.rawValue.getter()
{
  v1 = 2003789939;
  if (*v0 != 1)
  {
    v1 = 0x726F7461727563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726E6567;
  }
}

uint64_t sub_216890760@<X0>(uint64_t *a1@<X8>)
{
  result = ContentKind.AppleCuratorKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void ContentKind.init(deserializing:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_22_3();
  v16 = v15;
  v18 = v17;
  v19 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_125_1();
  sub_21700CE04();
  sub_21689D37C();
  sub_21700CCD4();
  if (v13)
  {
    sub_21700CF34();
    OUTLINED_FUNCTION_9_0();
    (*(v27 + 8))(v16);
    v28 = *(v21 + 8);
    v29 = OUTLINED_FUNCTION_104_0();
    v28(v29);
    (v28)(v14, v19);
  }

  else
  {
    v72 = v18;
    v30 = *(v21 + 8);
    v30(v14, v19);
    switch(a13)
    {
      case 1:
        OUTLINED_FUNCTION_105_3();
        sub_21700CE04();
        sub_21689D3D0();
        sub_21700CD14();
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v54 + 8))(v16);
        v55 = OUTLINED_FUNCTION_104_0();
        (v30)(v55);
        v30(v25, v19);
        v33 = a12;
        break;
      case 2:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v46 + 8))(v16);
        v47 = OUTLINED_FUNCTION_104_0();
        (v30)(v47);
        v33 = 5;
        break;
      case 3:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v50 + 8))(v16);
        v51 = OUTLINED_FUNCTION_104_0();
        (v30)(v51);
        v33 = 6;
        break;
      case 4:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v40 + 8))(v16);
        v41 = OUTLINED_FUNCTION_104_0();
        (v30)(v41);
        v33 = 7;
        break;
      case 5:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v58 + 8))(v16);
        v59 = OUTLINED_FUNCTION_104_0();
        (v30)(v59);
        v33 = 8;
        break;
      case 6:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v62 + 8))(v16);
        v63 = OUTLINED_FUNCTION_104_0();
        (v30)(v63);
        v33 = 9;
        break;
      case 7:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v52 + 8))(v16);
        v53 = OUTLINED_FUNCTION_104_0();
        (v30)(v53);
        v33 = 10;
        break;
      case 8:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v68 + 8))(v16);
        v69 = OUTLINED_FUNCTION_104_0();
        (v30)(v69);
        v33 = 11;
        break;
      case 9:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v44 + 8))(v16);
        v45 = OUTLINED_FUNCTION_104_0();
        (v30)(v45);
        v33 = 12;
        break;
      case 10:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v66 + 8))(v16);
        v67 = OUTLINED_FUNCTION_104_0();
        (v30)(v67);
        v33 = 13;
        break;
      case 11:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v38 + 8))(v16);
        v39 = OUTLINED_FUNCTION_104_0();
        (v30)(v39);
        v33 = 14;
        break;
      case 12:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v42 + 8))(v16);
        v43 = OUTLINED_FUNCTION_104_0();
        (v30)(v43);
        v33 = 15;
        break;
      case 13:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v60 + 8))(v16);
        v61 = OUTLINED_FUNCTION_104_0();
        (v30)(v61);
        v33 = 16;
        break;
      case 14:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v36 + 8))(v16);
        v37 = OUTLINED_FUNCTION_104_0();
        (v30)(v37);
        v33 = 17;
        break;
      case 15:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v48 + 8))(v16);
        v49 = OUTLINED_FUNCTION_104_0();
        (v30)(v49);
        v33 = 18;
        break;
      case 16:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v34 + 8))(v16);
        v35 = OUTLINED_FUNCTION_104_0();
        (v30)(v35);
        v33 = 19;
        break;
      case 17:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v56 + 8))(v16);
        v57 = OUTLINED_FUNCTION_104_0();
        (v30)(v57);
        v33 = 20;
        break;
      case 18:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v64 + 8))(v16);
        v65 = OUTLINED_FUNCTION_104_0();
        (v30)(v65);
        v33 = 21;
        break;
      case 19:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v70 + 8))(v16);
        v71 = OUTLINED_FUNCTION_104_0();
        (v30)(v71);
        v33 = 22;
        break;
      default:
        sub_21700CF34();
        OUTLINED_FUNCTION_9_0();
        (*(v31 + 8))(v16);
        v32 = OUTLINED_FUNCTION_104_0();
        (v30)(v32);
        v33 = 4;
        break;
    }

    *v72 = v33;
  }

  OUTLINED_FUNCTION_21_4();
}

void sub_216890F8C(uint64_t a1, void *a2)
{
  v4 = *v2;
  sub_216685F4C(0, &qword_280E29B58);
  sub_216890478();
  v5 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D837D0];
  v14 = v6;
  v15 = v7;
  v8 = a2;
  v9 = sub_2166F1E10(&v14, a2);
  sub_2166F1F64(v9);
  if ((v4 - 3) >= 0x14)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        v10 = 0xE400000000000000;
        v11 = 2003789939;
      }

      else
      {
        v10 = 0xE700000000000000;
        v11 = 0x726F7461727563;
      }
    }

    else
    {
      OUTLINED_FUNCTION_138_2();
    }

    v16 = v5;
    v14 = v11;
    v15 = v10;
    v12 = v8;
    v13 = sub_2166F1E10(&v14, a2);
    sub_2166F1F64(v13);
  }
}

void sub_2168910B8(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_52_6();
      break;
    case 2:
      OUTLINED_FUNCTION_77_6();
      break;
    case 3:
      OUTLINED_FUNCTION_69_7();
      break;
    case 4:
      OUTLINED_FUNCTION_68_6();
      break;
    case 5:
      OUTLINED_FUNCTION_48_9();
      break;
    case 6:
      OUTLINED_FUNCTION_70_4();
      break;
    case 7:
      OUTLINED_FUNCTION_17_5();
      break;
    case 8:
      OUTLINED_FUNCTION_47_10();
      break;
    case 9:
      OUTLINED_FUNCTION_93_6();
      break;
    case 10:
      OUTLINED_FUNCTION_60_4();
      break;
    case 11:
    case 12:
      OUTLINED_FUNCTION_79_8();
      break;
    case 13:
      OUTLINED_FUNCTION_49_9();
      break;
    case 14:
      OUTLINED_FUNCTION_53_8();
      break;
    case 15:
      OUTLINED_FUNCTION_46_10();
      break;
    case 16:
      OUTLINED_FUNCTION_84_7();
      break;
    case 17:
      OUTLINED_FUNCTION_61_4();
      break;
    case 18:
      OUTLINED_FUNCTION_72_7();
      break;
    default:
      return;
  }
}

uint64_t sub_216891180()
{
  v0 = sub_21700F7F4();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21689124C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216891180();
  *a1 = result;
  return result;
}

void sub_21689127C(void *a1@<X8>)
{
  sub_2168910B8(*v1);
  *a1 = v3;
  a1[1] = v4;
}