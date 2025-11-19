uint64_t sub_255CCA980@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v32 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3B0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v32 - v9);
  v11 = sub_255D06CE8();
  v12 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3B8) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3C0) + 28);
  v14 = *MEMORY[0x277CE1048];
  v15 = sub_255D06D48();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v10 = v11;
  v16 = sub_255D06808();
  v17 = *(*(v16 - 8) + 56);
  v17(v3, 1, 1, v16);
  sub_255D06898();
  sub_255C76B94(v3, &qword_27F7DF2D8);
  sub_255D06848();
  v18 = sub_255D068A8();

  KeyPath = swift_getKeyPath();
  v20 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3C8) + 36));
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = sub_255D06738();
  v22 = v10 + *(v5 + 44);
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  sub_255CCADA4(&v34);
  sub_255D06828();
  v17(v3, 1, 1, v16);
  v23 = sub_255D06898();
  sub_255C76B94(v3, &qword_27F7DF2D8);
  v24 = swift_getKeyPath();
  sub_255C7299C(v10, v7, &qword_27F7DF3B0);
  v25 = v33;
  sub_255C7299C(v7, v33, &qword_27F7DF3B0);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3D0) + 48));
  v27 = v35;
  v38[0] = v34;
  v38[1] = v35;
  v28 = v36;
  v38[2] = v36;
  v39 = v37;
  *&v40 = v24;
  *(&v40 + 1) = v23;
  *v26 = v34;
  v26[1] = v27;
  v29 = v39;
  v30 = v40;
  v26[2] = v28;
  v26[3] = v29;
  v26[4] = v30;
  sub_255C7299C(v38, v41, &qword_27F7DF370);
  sub_255C76B94(v10, &qword_27F7DF3B0);
  v41[0] = v34;
  v41[1] = v35;
  v41[2] = v36;
  v41[3] = v37;
  v42 = v24;
  v43 = v23;
  sub_255C76B94(v41, &qword_27F7DF370);
  return sub_255C76B94(v7, &qword_27F7DF3B0);
}

uint64_t sub_255CCADA4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000001CLL;
  *(a1 + 8) = 0x8000000255D191D0;
  *(a1 + 16) = 0;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0xD000000000000015;
  *(a1 + 40) = 0x8000000255D191F0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v1;
  sub_255C8A25C(0xD00000000000001CLL, 0x8000000255D191D0, 0);

  sub_255C8A25C(0xD000000000000015, 0x8000000255D191F0, 0);

  sub_255C8A038(0xD000000000000015, 0x8000000255D191F0, 0);

  sub_255C8A038(0xD00000000000001CLL, 0x8000000255D191D0, 0);
}

uint64_t sub_255CCAEA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 66);
  return result;
}

unint64_t sub_255CCAFA0()
{
  result = qword_27F7DF3A8;
  if (!qword_27F7DF3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF3A8);
  }

  return result;
}

uint64_t sub_255CCB004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF398);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255CCB088()
{
  result = qword_27F7DF3D8;
  if (!qword_27F7DF3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF3E0);
    sub_255CCB10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF3D8);
  }

  return result;
}

unint64_t sub_255CCB10C()
{
  result = qword_27F7DF3E8;
  if (!qword_27F7DF3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF398);
    sub_255CCAFA0();
    sub_255CC8D9C(&qword_27F7DEEA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF3E8);
  }

  return result;
}

uint64_t sub_255CCB1F4@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = &v49 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF0C8);
  v7 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v49 - v8;
  v9 = sub_255D063E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = a1;
  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v14 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v13 = v54;
  }

  swift_getKeyPath();
  v54 = v13;
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v15 = *(v13 + 65);

  if (v15 != 1)
  {
    goto LABEL_15;
  }

  v16 = a1;
  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v17 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v16 = v54;
  }

  swift_getKeyPath();
  v54 = v16;
  sub_255D05CA8();

  v18 = *(v16 + 48);

  if (!*(v18 + 16) || (v19 = sub_255C7B7C4(0x68746E6F6DLL, 0xE500000000000000), (v20 & 1) == 0))
  {

LABEL_15:
    v47 = 1;
    v46 = v53;
    return (*(v7 + 56))(v46, v47, 1, v52);
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v22 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    a1 = v54;
  }

  swift_getKeyPath();
  v54 = a1;
  sub_255D05CA8();

  v23 = *(a1 + 48);

  if (!*(v23 + 16) || (v24 = sub_255C7B7C4(1918985593, 0xE400000000000000), (v25 & 1) == 0))
  {

    goto LABEL_15;
  }

  v26 = v21;
  v27 = *(*(v23 + 56) + 8 * v24);

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_255D075A8();

  v54 = 0x85EBB0A1EC9CA0ECLL;
  v55 = 0xAE00203A949BEC84;
  v28 = [v26 description];
  v29 = sub_255D070D8();
  v31 = v30;

  MEMORY[0x259C4B5D0](v29, v31);

  MEMORY[0x259C4B5D0](764713964, 0xA400000000000000);
  v32 = [v27 description];
  v33 = sub_255D070D8();
  v35 = v34;

  MEMORY[0x259C4B5D0](v33, v35);

  v36 = sub_255D06808();
  v37 = v50;
  (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
  sub_255D06898();
  sub_255CC8C3C(v37);
  v38 = sub_255D06958();
  v40 = v39;
  LOBYTE(v35) = v41;
  v43 = v42;

  v54 = v38;
  v55 = v40;
  v56 = v35 & 1;
  v57 = v43;
  v44 = v51;
  sub_255D06B98();

  sub_255C8A038(v38, v40, v35 & 1);

  v45 = v53;
  sub_255CC8CA4(v44, v53);
  v46 = v45;
  v47 = 0;
  return (*(v7 + 56))(v46, v47, 1, v52);
}

uint64_t sub_255CCB8FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 48);
}

uint64_t sub_255CCB9D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 65);
  return result;
}

uint64_t sub_255CCBB2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  sub_255CCBDEC(a1, a2 & 1, &v32[-v10]);
  type metadata accessor for LegalAndRegulatorySettingsListState();
  sub_255CCC370();
  v12 = sub_255D05F38();
  v37 = v13;
  v14 = sub_255D05F38();
  v36 = v15;
  v16 = sub_255D05F38();
  v35 = v17;
  v18 = sub_255D05F38();
  v34 = v19;
  v20 = sub_255D05F38();
  v33 = v21;
  v22 = sub_255D05F38();
  LOBYTE(a1) = v23;
  v38 = v8;
  sub_255CCC3C8(v11, v8);
  sub_255CCC3C8(v8, a3);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF408);
  v25 = a3 + v24[12];
  *v25 = v12;
  *(v25 + 8) = v37 & 1;
  v26 = a3 + v24[16];
  *v26 = v14;
  *(v26 + 8) = v36 & 1;
  v27 = a3 + v24[20];
  *v27 = v16;
  *(v27 + 8) = v35 & 1;
  v28 = a3 + v24[24];
  *v28 = v18;
  *(v28 + 8) = v34 & 1;
  v29 = a3 + v24[28];
  *v29 = v20;
  *(v29 + 8) = v33 & 1;
  v30 = a3 + v24[32];
  *v30 = v22;
  *(v30 + 8) = a1 & 1;

  sub_255C76B94(v11, &qword_27F7DF400);

  return sub_255C76B94(v38, &qword_27F7DF400);
}

uint64_t sub_255CCBDEC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = sub_255D06CF8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255D063E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF400);
  MEMORY[0x28223BE20](v26[0]);
  v14 = v26 - v13;
  if (a2)
  {
    v34 = a1;
  }

  else
  {

    sub_255D07438();
    v15 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    a1 = v34;
  }

  swift_getKeyPath();
  *&v32[0] = a1;
  sub_255CCC370();
  sub_255D05CA8();

  v16 = *(a1 + 88);

  sub_255D06CC8();
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v5);
  v17 = sub_255D06D58();

  (*(v6 + 8))(v8, v5);
  v18 = sub_255D06778();
  v36 = 1;
  v35 = 1;
  v27 = v17;
  LOWORD(v28) = 1;
  BYTE8(v28) = v18;
  v29 = 0u;
  v30 = 0u;
  v31 = 1;
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v19 = qword_27F7E5E40;
  v20 = sub_255D06988();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF410);
  sub_255CCC5E4(&qword_27F7DF418, &qword_27F7DF410, &unk_255D0F918, sub_255CCC51C);
  sub_255D06AF8();
  sub_255C8A038(v20, v22, v24 & 1);

  v32[2] = v29;
  v32[3] = v30;
  v33 = v31;
  v32[0] = v27;
  v32[1] = v28;
  sub_255C76B94(v32, &qword_27F7DF410);
  sub_255D061C8();
  return sub_255C76B94(v14, &qword_27F7DF400);
}

double sub_255CCC2CC@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = sub_255D064C8();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3F0);
  sub_255CCBB2C(v3, v4, a1 + *(v5 + 44));
  v6 = sub_255D06738();
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF3F8) + 36);
  *v7 = v6;
  result = 0.0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 1;
  return result;
}

unint64_t sub_255CCC370()
{
  result = qword_27F7DF2E0;
  if (!qword_27F7DF2E0)
  {
    type metadata accessor for LegalAndRegulatorySettingsListState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF2E0);
  }

  return result;
}

uint64_t sub_255CCC3C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_255CCC438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CCC370();
  sub_255D05CA8();

  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

unint64_t sub_255CCC51C()
{
  result = qword_27F7DF420;
  if (!qword_27F7DF420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF420);
  }

  return result;
}

uint64_t sub_255CCC5E4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_255CCC668()
{
  result = qword_27F7DF438;
  if (!qword_27F7DF438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF438);
  }

  return result;
}

uint64_t sub_255CCC6F8@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF2D8);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = &v37 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF0C8);
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v37 - v8;
  v9 = sub_255D063E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = a1;
  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v14 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v13 = v41;
  }

  swift_getKeyPath();
  v41 = v13;
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v15 = *(v13 + 40);

  if (v15 != 1)
  {
    goto LABEL_10;
  }

  v16 = a1;
  if ((a2 & 1) == 0)
  {
    sub_255D07438();
    v17 = sub_255D066C8();
    sub_255D05D88();

    sub_255D063D8();
    swift_getAtKeyPath();

    (*(v10 + 8))(v12, v9);
    v16 = v41;
  }

  swift_getKeyPath();
  v41 = v16;
  sub_255D05CA8();

  v18 = *(v16 + 56);

  if (v18)
  {
    v41 = 0xB9E5A080E9BDA3E8;
    v42 = 0xAD000020BDBBE4B4;

    if ((a2 & 1) == 0)
    {
      sub_255D07438();
      v19 = sub_255D066C8();
      sub_255D05D88();

      sub_255D063D8();
      swift_getAtKeyPath();

      (*(v10 + 8))(v12, v9);
      a1 = v45;
    }

    swift_getKeyPath();
    v45 = a1;
    sub_255D05CA8();

    v20 = *(a1 + 56);

    v45 = v20;
    v21 = sub_255D076B8();
    MEMORY[0x259C4B5D0](v21);

    v22 = sub_255D06808();
    v23 = v37;
    (*(*(v22 - 8) + 56))(v37, 1, 1, v22);
    sub_255D06898();
    sub_255CC8C3C(v23);
    v24 = sub_255D06958();
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v41 = v24;
    v42 = v26;
    v31 = v28 & 1;
    v43 = v28 & 1;
    v44 = v30;
    v32 = v38;
    sub_255D06B98();
    sub_255C8A038(v24, v26, v31);

    v33 = v40;
    sub_255CC8CA4(v32, v40);
    v34 = v33;
    v35 = 0;
  }

  else
  {
LABEL_10:
    v35 = 1;
    v34 = v40;
  }

  return (*(v7 + 56))(v34, v35, 1, v39);
}

uint64_t sub_255CCCCEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_255CCCDE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CC8D9C(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_255CCCF10@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF448);
  MEMORY[0x28223BE20](v16);
  v15 = &v15 - v1;
  v2 = sub_255D064C8();
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 sf_serialNumberQRImage];

  v5 = sub_255D06CC8();
  v6 = sub_255D06778();
  v23 = 1;
  v22 = 1;
  sub_255D06F58();
  sub_255D06278();
  *(&v24[6] + 7) = *&v24[21];
  *(&v24[8] + 7) = *&v24[23];
  *(&v24[10] + 7) = *&v24[25];
  *(&v24[12] + 7) = v25;
  *(v24 + 7) = *&v24[15];
  *(&v24[2] + 7) = *&v24[17];
  *(&v24[4] + 7) = *&v24[19];
  *(v20 + 8) = 0u;
  *(&v20[1] + 8) = 0u;
  *(&v20[6] + 9) = *&v24[8];
  *(&v20[7] + 9) = *&v24[10];
  *(&v20[8] + 9) = *&v24[12];
  *(&v20[2] + 9) = *v24;
  *(&v20[3] + 9) = *&v24[2];
  *(&v20[4] + 9) = *&v24[4];
  v18 = v2;
  LOBYTE(v19) = 1;
  *(&v19 + 1) = v5;
  LOBYTE(v20[0]) = v6;
  BYTE8(v20[2]) = 1;
  *(&v20[9] + 1) = *(&v25 + 1);
  *(&v20[5] + 9) = *&v24[6];
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v7 = qword_27F7E5E40;
  v8 = sub_255D06988();
  v10 = v9;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF450);
  sub_255CCD2B8();
  v13 = v15;
  sub_255D06AB8();
  sub_255C8A038(v8, v10, v12 & 1);

  v21[8] = v20[6];
  v21[9] = v20[7];
  v21[10] = v20[8];
  v21[11] = v20[9];
  v21[4] = v20[2];
  v21[5] = v20[3];
  v21[6] = v20[4];
  v21[7] = v20[5];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = v20[0];
  v21[3] = v20[1];
  sub_255C76B94(v21, &qword_27F7DF450);
  sub_255D061C8();
  return sub_255C76B94(v13, &qword_27F7DF448);
}

unint64_t sub_255CCD2B8()
{
  result = qword_27F7DF458;
  if (!qword_27F7DF458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF450);
    sub_255CCD344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF458);
  }

  return result;
}

unint64_t sub_255CCD344()
{
  result = qword_27F7DF460;
  if (!qword_27F7DF460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF468);
    sub_255CCD3D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF460);
  }

  return result;
}

unint64_t sub_255CCD3D0()
{
  result = qword_27F7DF0A8;
  if (!qword_27F7DF0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF0A8);
  }

  return result;
}

unint64_t sub_255CCD438()
{
  result = qword_27F7DF470;
  if (!qword_27F7DF470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF448);
    sub_255CCD2B8();
    sub_255CCD4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF470);
  }

  return result;
}

unint64_t sub_255CCD4C4()
{
  result = qword_27F7DEEA0;
  if (!qword_27F7DEEA0)
  {
    sub_255D066B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEEA0);
  }

  return result;
}

id sub_255CCD540()
{
  type metadata accessor for FindLegalAndRegulatorySettingsSupportClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F7E5E40 = result;
  return result;
}

uint64_t sub_255CCD598()
{
  v0 = sub_255D05DB8();
  __swift_allocate_value_buffer(v0, qword_27F7E5E48);
  __swift_project_value_buffer(v0, qword_27F7E5E48);

  return sub_255D05DA8();
}

uint64_t sub_255CCD624(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v74 = a4;
  v9 = sub_255D05B78();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = (&v68 - v14);
  v15 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v76 = a1;
  v16 = sub_255D05AF8();
  v17 = [v15 initWithURL_];

  v78 = v17;
  if (!v17)
  {
    if (qword_27F7DD820 != -1)
    {
      swift_once();
    }

    v28 = sub_255D05DB8();
    __swift_project_value_buffer(v28, qword_27F7E5E48);
    (*(v10 + 16))(v12, v76, v9);
    v29 = sub_255D05D98();
    v30 = v9;
    v31 = sub_255D07428();
    if (os_log_type_enabled(v29, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v79[0] = v33;
      *v32 = 136315138;
      sub_255CCE6A4();
      v34 = sub_255D076B8();
      v36 = v35;
      (*(v10 + 8))(v12, v30);
      v37 = sub_255CBF790(v34, v36, v79);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_255C4F000, v29, v31, "Bundle(url:) is nil for %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x259C4C620](v33, -1, -1);
      MEMORY[0x259C4C620](v32, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v12, v30);
    }

    return 0;
  }

  v72 = v10;
  v18 = sub_255CCDE70(a2, a3);
  v19 = v18;
  v75 = a3;
  v70 = a2;
  v71 = a5;
  if (!a5)
  {
    v38 = *(v18 + 16);
    if (v38)
    {
      v39 = v9;
      v40 = 0;
      v27 = (v18 + 40);
      v9 = &unk_279811000;
      while (v40 < *(v19 + 16))
      {
        v41 = *(v27 - 1);
        v42 = *v27;

        v43 = sub_255D070C8();
        v44 = [v78 pathForResource:v43 ofType:0];

        if (v44)
        {
          v48 = sub_255D070D8();
          v50 = v66;
LABEL_37:

          v67 = sub_255CCE0AC(v48, v50, v41, v42, v70, v75);

          return v67;
        }

        ++v40;
        v27 += 2;
        if (v38 == v40)
        {

          v9 = v39;
          goto LABEL_31;
        }
      }

      goto LABEL_39;
    }

LABEL_31:
    v38 = v72;
    v27 = v73;
    if (qword_27F7DD820 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  v20 = [v78 localizations];
  if (!v20)
  {
    sub_255D07278();
    v20 = sub_255D07268();
  }

  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_255D0AA80;
  *(v22 + 32) = v74;
  *(v22 + 40) = a5;
  v23 = sub_255D07268();

  v24 = [v21 matchedLanguagesFromAvailableLanguages:v20 forPreferredLanguages:v23];

  v25 = sub_255D07278();
  v26 = v25[2];
  v69 = v9;
  if (v26)
  {
    v27 = v25[5];
    v77 = v25[4];
  }

  else
  {
    v77 = 0;
    v27 = 0;
  }

  v9 = *(v19 + 16);
  if (!v9)
  {
LABEL_27:

    v9 = v69;
    goto LABEL_31;
  }

  v38 = 0;
  v45 = (v19 + 40);
  while (v38 < *(v19 + 16))
  {
    v41 = *(v45 - 1);
    v42 = *v45;

    v46 = sub_255D070C8();
    if (v27)
    {

      v47 = sub_255D070C8();
    }

    else
    {
      v47 = 0;
    }

    v44 = [v78 pathForResource:v46 ofType:0 inDirectory:0 forLocalization:v47];

    if (v44)
    {
      v48 = sub_255D070D8();
      v50 = v49;

      goto LABEL_37;
    }

    ++v38;

    v45 += 2;
    if (v9 == v38)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  swift_once();
LABEL_32:
  v51 = sub_255D05DB8();
  __swift_project_value_buffer(v51, qword_27F7E5E48);
  (*(v38 + 16))(v27, v76, v9);
  v52 = v71;

  v53 = sub_255D05D98();
  v54 = v27;
  v55 = sub_255D07428();

  if (os_log_type_enabled(v53, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v80 = v57;
    *v56 = 136315650;
    sub_255CCE6A4();
    v58 = sub_255D076B8();
    v60 = v59;
    (*(v38 + 8))(v54, v9);
    v61 = sub_255CBF790(v58, v60, &v80);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_255CBF790(v70, v75, &v80);
    *(v56 + 22) = 2080;
    v79[0] = v74;
    v79[1] = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DD9F8);
    v62 = sub_255D07118();
    v64 = sub_255CBF790(v62, v63, &v80);

    *(v56 + 24) = v64;
    _os_log_impl(&dword_255C4F000, v53, v55, "localizedPath or foundImageNameCandidate is nil for bundleURL: %s, resource: %s, languageOverride: %s", v56, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C4C620](v57, -1, -1);
    MEMORY[0x259C4C620](v56, -1, -1);
  }

  else
  {

    (*(v38 + 8))(v54, v9);
  }

  return 0;
}

uint64_t sub_255CCDE70(uint64_t a1, unint64_t a2)
{
  v28 = 46;
  v29 = 0xE100000000000000;
  v27 = &v28;

  v5 = sub_255CCE2E4(0x7FFFFFFFFFFFFFFFLL, 1, sub_255CBAE00, v26, a1, a2, v4);
  if (v5[2] == 2)
  {
    v6 = v5[4];
    v7 = v5[5];
    v9 = v5[6];
    v8 = v5[7];
    v10 = v5[8];
    v25 = v5[9];
    v12 = v5[10];
    v11 = v5[11];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_255D0FB20;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    v28 = MEMORY[0x259C4B570](v6, v7, v9, v8);
    v29 = v14;
    MEMORY[0x259C4B5D0](779629120, 0xE400000000000000);
    v15 = MEMORY[0x259C4B570](v10, v25, v12, v11);
    MEMORY[0x259C4B5D0](v15);

    v16 = v29;
    *(v13 + 48) = v28;
    *(v13 + 56) = v16;
    v17 = MEMORY[0x259C4B570](v6, v7, v9, v8);
    v19 = v18;

    v28 = v17;
    v29 = v19;
    MEMORY[0x259C4B5D0](779629376, 0xE400000000000000);
    v20 = MEMORY[0x259C4B570](v10, v25, v12, v11);
    v22 = v21;

    MEMORY[0x259C4B5D0](v20, v22);

    v23 = v29;
    *(v13 + 64) = v28;
    *(v13 + 72) = v23;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_255D0AA80;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
  }

  return v13;
}

uint64_t sub_255CCE0AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v37[0] = 47;
  v37[1] = 0xE100000000000000;
  v36 = v37;

  v11 = sub_255CCE2E4(0x7FFFFFFFFFFFFFFFLL, 0, sub_255CBAD10, v35, a1, a2, v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v37[0] = MEMORY[0x277D84F90];
    sub_255C977B8(0, v12, 0);
    v13 = v37[0];
    v14 = a3;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v15 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v16 = (v11 + 56);
    v34 = a3;
    do
    {
      v18 = *(v16 - 3);
      v17 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *v16;
      v23 = v19 == v14 && v20 == a4 && v18 >> 16 == 0 && v17 >> 16 == v15;
      if (v23 || (sub_255D076A8() & 1) != 0)
      {
        v24 = a6;

        v25 = a5;
      }

      else
      {

        v25 = MEMORY[0x259C4B570](v18, v17, v19, v20);
        v24 = v26;
      }

      v37[0] = v13;
      v28 = *(v13 + 16);
      v27 = *(v13 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_255C977B8((v27 > 1), v28 + 1, 1);
        v13 = v37[0];
      }

      *(v13 + 16) = v28 + 1;
      v29 = v13 + 16 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v24;
      v16 += 4;
      --v12;
      v14 = v34;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v37[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDA00);
  sub_255C743A0();
  v30 = sub_255D07068();

  return v30;
}

unint64_t sub_255CCE2E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_255D07228();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_255C97160(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_255C97160((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_255D07218();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_255D07188();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_255D07188();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_255D07228();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_255C97160(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_255D07228();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_255C97160(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_255C97160((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_255D07188();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_255CCE6A4()
{
  result = qword_27F7DEFE0;
  if (!qword_27F7DEFE0)
  {
    sub_255D05B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DEFE0);
  }

  return result;
}

uint64_t LegalAndRegulatorySettingsList.init(legalAndRegulatorySettingsListState:)()
{
  v0 = sub_255D05C38();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_255D05A78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255D070B8();
  MEMORY[0x28223BE20](v5 - 8);
  type metadata accessor for LegalAndRegulatorySettingsList();
  sub_255D070A8();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v6 = [qword_27F7E5E40 bundleURL];
  sub_255D05B28();

  (*(v2 + 104))(v4, *MEMORY[0x277CC9118], v1);
  sub_255D05BF8();
  sub_255D05A98();
  type metadata accessor for LegalAndRegulatorySettingsListState();
  sub_255CD07A0(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  return sub_255D06F18();
}

uint64_t type metadata accessor for LegalAndRegulatorySettingsList()
{
  result = qword_27F7DF4D0;
  if (!qword_27F7DF4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegalAndRegulatorySettingsList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCB0);
  MEMORY[0x28223BE20](v2 - 8);
  v69 = &v50 - v3;
  v64 = sub_255D05B78();
  v71 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_255D06F98();
  v70 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v68 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF488);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF490);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF498);
  v62 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v15 = &v50 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4A0);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v66 = &v50 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4A8);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v50 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4B0);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v50 - v18;
  sub_255D06F08();
  swift_getKeyPath();
  sub_255D06F28();

  v19 = *(v7 + 8);
  v59 = v6;
  v19(v9, v6);
  v79 = v73;
  v80 = v74;
  v81 = v75;
  v63 = v1;
  v72 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4B8);
  sub_255CB3338();
  sub_255C810A8(&qword_27F7DF4C0, &qword_27F7DF4B8);
  sub_255D068E8();
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v20 = qword_27F7E5E40;
  v21 = sub_255D06988();
  v23 = v22;
  v25 = v24;
  v26 = sub_255C810A8(&qword_27F7DF4C8, &qword_27F7DF490);
  sub_255D06AD8();
  sub_255C8A038(v21, v23, v25 & 1);

  (*(v11 + 8))(v13, v10);
  v27 = type metadata accessor for LegalDocumentModel(0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE48);
  v73 = v10;
  v74 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_255CD07A0(&qword_27F7DEE88, type metadata accessor for LegalDocumentModel);
  v31 = sub_255CBBA04();
  v32 = v65;
  v50 = v28;
  sub_255D06B68();
  (*(v62 + 8))(v15, v32);
  v33 = v68;
  *v68 = 0xD00000000000002BLL;
  v33[1] = 0x8000000255D19470;
  (*(v70 + 104))();
  sub_255CCFC90();
  v34 = v69;
  sub_255D05B48();
  v35 = v64;
  result = (*(v71 + 48))(v34, 1, v64);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for LegalAndRegulatorySettingsList();
    v37 = v71;
    v38 = v60;
    (*(v71 + 32))(v60, v69, v35);
    v73 = v65;
    v74 = v27;
    v75 = v50;
    v76 = OpaqueTypeConformance2;
    v77 = v30;
    v78 = v31;
    v39 = swift_getOpaqueTypeConformance2();
    v40 = v53;
    v41 = v68;
    v42 = v52;
    v43 = v66;
    sub_255D06A08();

    (*(v37 + 8))(v38, v35);
    (*(v70 + 8))(v41, v67);
    (*(v51 + 8))(v43, v42);
    sub_255D06EF8();
    v44 = type metadata accessor for LegalAndRegulatorySettingsListState();
    v73 = v42;
    v74 = v39;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = sub_255CD07A0(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    v47 = v54;
    v48 = v57;
    sub_255D06A68();

    (*(v55 + 8))(v40, v48);
    v73 = v48;
    v74 = v44;
    v75 = v45;
    v76 = v46;
    swift_getOpaqueTypeConformance2();
    v49 = v58;
    sub_255D069F8();
    return (*(v56 + 8))(v47, v49);
  }

  return result;
}

uint64_t sub_255CCF4B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255CD07A0(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_255CCF5B4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF0C8);
  MEMORY[0x28223BE20](v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4F0);
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  MEMORY[0x28223BE20](v3);
  v44 = &v33 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4F8);
  v36 = *(v40 - 8);
  v5 = v36;
  MEMORY[0x28223BE20](v40);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF500);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v38 = &v33 - v14;
  sub_255CCFA88(&v33 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF488);
  sub_255D06EF8();
  v16 = sub_255CD4B34();

  v46 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF508);
  sub_255C810A8(&qword_27F7DF510, &qword_27F7DF508);
  sub_255CD06F8();
  sub_255CD074C();
  v35 = v9;
  sub_255D06EB8();
  sub_255CCFFC4();
  sub_255CC1CD0();
  sub_255CD07E8();
  v17 = v44;
  sub_255D06ED8();
  v18 = v12;
  v37 = v12;
  sub_255CD083C(v15, v12);
  v19 = *(v5 + 16);
  v21 = v39;
  v20 = v40;
  v19(v39, v9, v40);
  v22 = *(v45 + 16);
  v23 = v2;
  v24 = v42;
  v22(v23, v17, v42);
  v25 = v43;
  sub_255CD083C(v18, v43);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF530);
  v27 = v20;
  v19((v25 + *(v26 + 48)), v21, v20);
  v28 = v25 + *(v26 + 64);
  v29 = v34;
  v22(v28, v34, v24);
  v30 = *(v45 + 8);
  v30(v44, v24);
  v31 = *(v36 + 8);
  v31(v35, v27);
  sub_255CD08AC(v38);
  v30(v29, v24);
  v31(v21, v27);
  return sub_255CD08AC(v37);
}

uint64_t sub_255CCFA88@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF538);
  v13 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - v3;
  v5 = objc_opt_self();
  v6 = [v5 currentDevice];
  v7 = [v6 sf_isCarrierInstall];

  if (v7 && (v8 = [v5 currentDevice], v9 = objc_msgSend(v8, sel_sf_isInternalInstall), v8, (v9 & 1) == 0))
  {
    sub_255CD0914();
    sub_255D06EE8();
    (*(v13 + 32))(a1, v4, v2);
    return (*(v13 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v10 = *(v13 + 56);

    return v10(a1, 1, 1, v2);
  }
}

uint64_t sub_255CCFC78@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  *a2 = v2;
  *(a2 + 8) = v3;
}

uint64_t sub_255CCFC90()
{
  v0 = sub_255D05C38();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_255D05A78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255D070B8();
  MEMORY[0x28223BE20](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF4E8);
  sub_255D05A88();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_255D0AA80;
  sub_255D070A8();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v7 = [qword_27F7E5E40 bundleURL];
  sub_255D05B28();

  (*(v2 + 104))(v4, *MEMORY[0x277CC9118], v1);
  sub_255D05BF8();
  sub_255D05A98();
  return v6;
}

uint64_t sub_255CCFF48@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LegalAndRegulatorySettingsListState();
  sub_255CD07A0(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  result = sub_255D05F38();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_255CCFFC4()
{
  v0 = sub_255D064B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D06478();
  if (qword_27F7DD818 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7E5E40;
  v5 = sub_255D06988();
  v7 = v6;
  v12[1] = v5;
  v12[2] = v6;
  v9 = v8 & 1;
  v13 = v8 & 1;
  v14 = v10;
  sub_255D064A8();
  sub_255D06B78();
  (*(v1 + 8))(v3, v0);
  sub_255C8A038(v5, v7, v9);
}

uint64_t sub_255CD01B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF488);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_255D05A88();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_255CD02C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF488);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_255D05A88();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_255CD03C8()
{
  sub_255CD044C();
  if (v0 <= 0x3F)
  {
    sub_255D05A88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255CD044C()
{
  if (!qword_27F7DF4E0)
  {
    type metadata accessor for LegalAndRegulatorySettingsListState();
    v0 = sub_255D06F38();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7DF4E0);
    }
  }
}

uint64_t sub_255CD04A4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF4B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF4A8);
  type metadata accessor for LegalAndRegulatorySettingsListState();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF4A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF498);
  type metadata accessor for LegalDocumentModel(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DEE48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7DF490);
  sub_255C810A8(&qword_27F7DF4C8, &qword_27F7DF490);
  swift_getOpaqueTypeConformance2();
  sub_255CD07A0(&qword_27F7DEE88, type metadata accessor for LegalDocumentModel);
  sub_255CBBA04();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_255CD07A0(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255CD06F8()
{
  result = qword_27F7DF518;
  if (!qword_27F7DF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF518);
  }

  return result;
}

unint64_t sub_255CD074C()
{
  result = qword_27F7DF520;
  if (!qword_27F7DF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF520);
  }

  return result;
}

uint64_t sub_255CD07A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255CD07E8()
{
  result = qword_27F7DF528;
  if (!qword_27F7DF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF528);
  }

  return result;
}

uint64_t sub_255CD083C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255CD08AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255CD0914()
{
  result = qword_27F7DF540;
  if (!qword_27F7DF540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF540);
  }

  return result;
}

uint64_t sub_255CD0968()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 67);
}

uint64_t sub_255CD0A08()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_255CD0AB8()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 64);
}

uint64_t sub_255CD0B58()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 17);
}

uint64_t sub_255CD0BF8()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_255CD0CA8()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 66);
}

uint64_t sub_255CD0D48()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 65);
}

uint64_t sub_255CD0DE8()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();
}

id sub_255CD0E8C()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_255CD0F3C()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 40);
}

uint64_t sub_255CD0FDC()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 56);
}

uint64_t sub_255CD107C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_255C97370(result, v8, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 16);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_255CD11B0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = v3[2];
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= v3[3] >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v3 = sub_255C97498(isUniquelyReferenced_nonNull_native, v9, 1, v3);
      if (*(v4 + 16))
      {
LABEL_14:
        v10 = (v3[3] >> 1) - v3[2];
        result = type metadata accessor for LegalDocumentModel(0);
        if (v10 < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v11 = v3[2];
          v12 = __OFADD__(v11, v5);
          v13 = v11 + v5;
          if (v12)
          {
            goto LABEL_23;
          }

          v3[2] = v13;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_255CD1318()
{
  swift_getKeyPath();
  sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
  sub_255D05CA8();

  return *(v0 + 16);
}

uint64_t sub_255CD13B8(unsigned __int8 a1)
{
  result = *(v1 + 16);
  if (result == 11)
  {
    if (a1 == 11)
    {
      goto LABEL_13;
    }

LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  if (a1 == 11)
  {
    goto LABEL_5;
  }

  v5 = sub_255CB30B8(result);
  v7 = v6;
  if (v5 != sub_255CB30B8(a1) || v7 != v8)
  {
    v10 = sub_255D076D8();

    if (v10)
    {
      goto LABEL_13;
    }

    goto LABEL_5;
  }

LABEL_13:
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_255CD1548(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD1658(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_255D076D8() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }
}

uint64_t sub_255CD17B8(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD18C8(uint64_t a1)
{

  sub_255CD409C(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }
}

uint64_t sub_255CD1A1C(uint64_t result)
{
  if (*(v1 + 56) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD1B20(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD1C30(uint64_t result)
{
  if (*(v1 + 65) == (result & 1))
  {
    *(v1 + 65) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD1D40(uint64_t result)
{
  if (*(v1 + 66) == (result & 1))
  {
    *(v1 + 66) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD1E50(uint64_t result)
{
  if (*(v1 + 67) == (result & 1))
  {
    *(v1 + 67) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }

  return result;
}

uint64_t sub_255CD1F60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72) == a1 && *(v2 + 80) == a2;
  if (v5 || (sub_255D076D8() & 1) != 0)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }
}

void sub_255CD20C0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  sub_255CD4F3C(0, &qword_27F7DF570);
  v5 = v4;
  v6 = sub_255D07478();

  if (v6)
  {
    v7 = *(v2 + 88);
    *(v2 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_255CD4FC4(&qword_27F7DF2E0, type metadata accessor for LegalAndRegulatorySettingsListState);
    sub_255D05C98();
  }
}

uint64_t sub_255CD222C()
{
  v0 = type metadata accessor for LegalDocumentModel(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v87 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v85 = &v81 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v81 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v81 - v9;
  v11 = SFAcknowledgementsDocumentFilePath();
  v90 = v10;
  if (v11)
  {
    v12 = v11;
    sub_255D070D8();

    sub_255D05AD8();

    type metadata accessor for LegalDocumentModel.DocumentType(0);
    swift_storeEnumTagMultiPayload();
    *v10 = 0;
    v13 = &v10[*(v0 + 24)];
    *v13 = 0;
    v13[1] = 0;
    v14 = &v10[*(v0 + 28)];
    *v14 = 0;
    v14[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1D8);
    v15 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v16 = swift_allocObject();
    v93 = xmmword_255D0AA80;
    *(v16 + 16) = xmmword_255D0AA80;
    sub_255CD4D88(v10, v16 + v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580);
    inited = swift_initStackObject();
    *(inited + 16) = v93;
    *(inited + 32) = v16;
    v18 = inited + 32;
    v88 = sub_255CD11B0(inited);
    swift_setDeallocating();
    sub_255C76B94(v18, &qword_27F7DF100);
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  v19 = SFLicenseFilePath();
  sub_255D070D8();

  sub_255D05AD8();

  v20 = type metadata accessor for LegalDocumentModel.DocumentType(0);
  swift_storeEnumTagMultiPayload();
  *v7 = 1;
  v21 = &v7[*(v0 + 24)];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v7[*(v0 + 28)];
  *v22 = 0;
  v22[1] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1D8);
  v24 = *(v1 + 72);
  v25 = *(v1 + 80);
  v26 = (v25 + 32) & ~v25;
  v27 = swift_allocObject();
  v93 = xmmword_255D0AA80;
  *(v27 + 16) = xmmword_255D0AA80;
  v86 = v27;
  sub_255CD4D88(v7, v27 + v26);
  v28 = SFWarrantyFilePath();
  v91 = v24;
  v92 = v23;
  v89 = v20;
  v84 = v0;
  if (v28)
  {
    v29 = v28;
    sub_255D070D8();

    v30 = v0;
    v31 = v90;
    sub_255D05AD8();

    swift_storeEnumTagMultiPayload();
    *v31 = 2;
    v32 = &v31[*(v30 + 24)];
    *v32 = 0;
    v32[1] = 0;
    v33 = &v31[*(v30 + 28)];
    *v33 = 0;
    v33[1] = 0;
    v34 = swift_allocObject();
    *(v34 + 16) = v93;
    sub_255CD4D88(v31, v34 + v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580);
    v35 = swift_initStackObject();
    *(v35 + 16) = v93;
    *(v35 + 32) = v34;
    v36 = v35 + 32;
    v83 = sub_255CD11B0(v35);
    swift_setDeallocating();
    sub_255C76B94(v36, &qword_27F7DF100);
  }

  else
  {
    v83 = MEMORY[0x277D84F90];
  }

  v37 = v25;
  v38 = (v25 + 32) & ~v25;
  if (SFShouldShowRoHSCompliance())
  {
    v39 = SFRoHSComplianceDocumentFilePath();
    v40 = v90;
    v41 = v84;
    if (v39)
    {
      v42 = v39;
      sub_255D070D8();

      sub_255D05AD8();

      swift_storeEnumTagMultiPayload();
      *v40 = 6;
      v43 = &v40[v41[6]];
      *v43 = 0;
      v43[1] = 0;
      v44 = &v40[v41[7]];
      *v44 = 0;
      v44[1] = 0;
      v45 = swift_allocObject();
      *(v45 + 16) = v93;
      sub_255CD4D88(v40, v45 + v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580);
      v46 = swift_initStackObject();
      *(v46 + 16) = v93;
      *(v46 + 32) = v45;
      v47 = v46 + 32;
      v82 = sub_255CD11B0(v46);
      swift_setDeallocating();
      sub_255C76B94(v47, &qword_27F7DF100);
    }

    else
    {
      v82 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v82 = MEMORY[0x277D84F90];
    v40 = v90;
    v41 = v84;
  }

  v48 = v85;
  v49 = &v85[v41[5]];
  v50 = SFRFExposureDocumentHTMLString();
  v51 = sub_255D070D8();
  v53 = v52;

  *v49 = v51;
  v49[1] = v53;
  swift_storeEnumTagMultiPayload();
  *v48 = 3;
  v54 = &v48[v41[6]];
  *v54 = 0;
  v54[1] = 0;
  v55 = &v48[v41[7]];
  *v55 = 0;
  v55[1] = 0;
  v56 = swift_allocObject();
  *(v56 + 16) = v93;
  v90 = v56;
  sub_255CD4D88(v48, v56 + v38);
  if (SFShouldShowChinaBlueSticker())
  {
    swift_storeEnumTagMultiPayload();
    *v40 = 4;
    v57 = &v40[v41[6]];
    *v57 = 0;
    v57[1] = 0;
    v58 = &v40[v41[7]];
    *v58 = 0;
    v58[1] = 0;
    v59 = swift_allocObject();
    *(v59 + 16) = v93;
    sub_255CD4D88(v40, v59 + v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580);
    v60 = swift_initStackObject();
    *(v60 + 16) = v93;
    *(v60 + 32) = v59;
    v61 = v60 + 32;
    v62 = sub_255CD11B0(v60);
    swift_setDeallocating();
    sub_255C76B94(v61, &qword_27F7DF100);
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  v63 = v87;
  swift_storeEnumTagMultiPayload();
  *v63 = 5;
  v64 = &v63[v41[6]];
  *v64 = 0;
  v64[1] = 0;
  v65 = &v63[v41[7]];
  *v65 = 0;
  v65[1] = 0;
  v85 = v37;
  v66 = swift_allocObject();
  *(v66 + 16) = v93;
  sub_255CD4D88(v63, v66 + v38);
  if (SFShouldShowBuiltInApps() && (v67 = SFBuiltInAppsDocumentFilePath()) != 0)
  {
    v68 = v67;
    sub_255D070D8();

    sub_255D05AD8();

    swift_storeEnumTagMultiPayload();
    *v40 = 7;
    v69 = &v40[v41[6]];
    *v69 = 0;
    v69[1] = 0;
    v70 = &v40[v41[7]];
    *v70 = 0;
    v70[1] = 0;
    v71 = swift_allocObject();
    *(v71 + 16) = v93;
    sub_255CD4D88(v40, v71 + v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580);
    v72 = swift_initStackObject();
    *(v72 + 16) = v93;
    *(v72 + 32) = v71;
    v73 = v72 + 32;
    v74 = sub_255CD11B0(v72);
    swift_setDeallocating();
    sub_255C76B94(v73, &qword_27F7DF100);
  }

  else
  {
    v74 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580);
  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_255D0FC60;
  *(v75 + 32) = v88;
  v77 = v82;
  v76 = v83;
  *(v75 + 40) = v86;
  *(v75 + 48) = v76;
  v78 = v90;
  *(v75 + 56) = v77;
  *(v75 + 64) = v78;
  *(v75 + 72) = v62;
  *(v75 + 80) = v66;
  *(v75 + 88) = v74;
  v79 = sub_255CD11B0(v75);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF100);
  swift_arrayDestroy();
  return v79;
}

uint64_t sub_255CD2B10()
{
  v0 = type metadata accessor for LegalDocumentModel(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = SFAudioAccessoryAcknowledgementsDocumentFilePath();
  if (v7)
  {
    v8 = v7;
    sub_255D070D8();

    sub_255D05AD8();

    type metadata accessor for LegalDocumentModel.DocumentType(0);
    swift_storeEnumTagMultiPayload();
    *v6 = 8;
    v9 = &v6[*(v0 + 24)];
    *v9 = 0;
    v9[1] = 0;
    v10 = &v6[*(v0 + 28)];
    *v10 = 0;
    v10[1] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1D8);
    v11 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v12 = swift_allocObject();
    v34 = xmmword_255D0AA80;
    *(v12 + 16) = xmmword_255D0AA80;
    sub_255CD4D88(v6, v12 + v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580);
    inited = swift_initStackObject();
    *(inited + 16) = v34;
    *(inited + 32) = v12;
    v14 = inited + 32;
    v33 = sub_255CD11B0(inited);
    swift_setDeallocating();
    sub_255C76B94(v14, &qword_27F7DF100);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v15 = SFAudioAccessoryLicenseFilePath();
  sub_255D070D8();

  sub_255D05AD8();

  type metadata accessor for LegalDocumentModel.DocumentType(0);
  swift_storeEnumTagMultiPayload();
  *v3 = 9;
  v16 = &v3[*(v0 + 24)];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v3[*(v0 + 28)];
  *v17 = 0;
  v17[1] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1D8);
  v19 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v20 = swift_allocObject();
  v34 = xmmword_255D0AA80;
  *(v20 + 16) = xmmword_255D0AA80;
  sub_255CD4D88(v3, v20 + v19);
  v21 = SFAudioAccessoryWarrantyFilePath();
  if (v21)
  {
    v22 = v21;
    sub_255D070D8();
    v32 = v18;

    sub_255D05AD8();

    swift_storeEnumTagMultiPayload();
    *v6 = 10;
    v23 = &v6[*(v0 + 24)];
    *v23 = 0;
    v23[1] = 0;
    v24 = &v6[*(v0 + 28)];
    *v24 = 0;
    v24[1] = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = v34;
    sub_255CD4D88(v6, v25 + v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580);
    v26 = swift_initStackObject();
    *(v26 + 16) = v34;
    *(v26 + 32) = v25;
    v27 = v26 + 32;
    v28 = sub_255CD11B0(v26);
    swift_setDeallocating();
    sub_255C76B94(v27, &qword_27F7DF100);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF580);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_255D0FB20;
  *(v29 + 32) = v33;
  *(v29 + 40) = v20;
  *(v29 + 48) = v28;
  v30 = sub_255CD11B0(v29);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF100);
  swift_arrayDestroy();
  return v30;
}

uint64_t LegalAndRegulatorySettingsListState.__allocating_init()()
{
  v24 = SFShouldShowIndiaBIS();
  v0 = SFIndiaBISNumber();
  if (v0)
  {
    v1 = v0;
    v2 = sub_255D070D8();
    v22 = v3;
    v23 = v2;
  }

  else
  {
    v22 = 0xE000000000000000;
    v23 = 0;
  }

  v21 = SFShouldShowYearOfManufacture();
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 sf_monthAndYearOfManufacture];

  if (v6)
  {
    sub_255CD4F3C(0, &qword_27F7DF550);
    v20 = sub_255D07008();
  }

  else
  {
    v20 = sub_255CD4A30(MEMORY[0x277D84F90]);
  }

  v7 = [v4 currentDevice];
  v8 = [v7 sf_yearOfManufacture];

  v9 = SFShouldShowEyesightWarning();
  v10 = SFShouldShowMonthOfManufacture();
  v11 = SFShouldShowAlertMark();
  LOBYTE(v7) = SFShouldShowCountryOfOrigin();
  v12 = SFShouldShowChinaBlueSticker();
  v13 = SFCountryOfOrigin();
  v14 = sub_255D070D8();
  v16 = v15;

  v17 = SFRegulatoryImage();
  v18 = swift_allocObject();
  *(v18 + 16) = 11;
  sub_255D05CB8();
  *(v18 + 17) = v24;
  *(v18 + 24) = v23;
  *(v18 + 32) = v22;
  *(v18 + 40) = v21;
  *(v18 + 48) = v20;
  *(v18 + 56) = v8;
  *(v18 + 64) = v9;
  *(v18 + 65) = v10;
  *(v18 + 66) = v11;
  *(v18 + 67) = v7;
  *(v18 + 68) = v12;
  *(v18 + 72) = v14;
  *(v18 + 80) = v16;
  *(v18 + 88) = v17;
  return v18;
}

Swift::Void __swiftcall LegalAndRegulatorySettingsListState.handleURL(_:)(Swift::OpaquePointer a1)
{
  sub_255D07538();
  if (*(a1._rawValue + 2) && (v2 = sub_255C7B604(v5), (v3 & 1) != 0))
  {
    sub_255CB7E68(*(a1._rawValue + 7) + 32 * v2, v6);
    sub_255C7DF4C(v5);
    if (swift_dynamicCast())
    {
      v4 = sub_255CB3508();
      if (v4 != 11)
      {
        sub_255CD13B8(v4);
      }
    }
  }

  else
  {
    sub_255C7DF4C(v5);
  }
}

uint64_t LegalAndRegulatorySettingsListState.handleURL(_:)@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DEE60);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v47 - v2;
  v59 = type metadata accessor for LegalDocumentModel(0);
  v53 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_255D061A8();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v47 - v9;
  v10 = sub_255D05B78();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF558);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v47 - v15;
  v17 = sub_255D058C8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255D06FD8();
  sub_255D058A8();
  (*(v11 + 8))(v13, v10);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_255C76B94(v16, &qword_27F7DF558);
    sub_255D06FC8();
    sub_255D06FE8();
    return (*(v55 + 8))(v7, v56);
  }

  else
  {
    v51 = v18;
    v52 = v17;
    (*(v18 + 32))(v20, v16, v17);
    sub_255D06FC8();
    v63 = sub_255D058B8();
    v64 = v22;
    v61 = 47;
    v62 = 0xE100000000000000;
    sub_255C8407C();
    v23 = sub_255D074D8();

    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = 0;
      v58 = 0x8000000255D19530;
      v26 = v23 + 40;
      v49 = v24 - 1;
      v27 = MEMORY[0x277D84F90];
      v50 = v23 + 40;
      do
      {
        v28 = (v26 + 16 * v25);
        v29 = v25;
        while (1)
        {
          if (v29 >= *(v23 + 16))
          {
            __break(1u);
            return result;
          }

          v31 = *(v28 - 1);
          v30 = *v28;
          v32 = HIBYTE(*v28) & 0xF;
          if ((*v28 & 0x2000000000000000) == 0)
          {
            v32 = v31 & 0xFFFFFFFFFFFFLL;
          }

          if (v32)
          {
            if (v31 != 0xD00000000000001ALL || 0x8000000255D19510 != v30)
            {
              result = sub_255D076D8();
              if ((result & 1) == 0 && (v31 != 0xD000000000000014 || v58 != v30))
              {
                result = sub_255D076D8();
                if ((result & 1) == 0)
                {
                  break;
                }
              }
            }
          }

          ++v29;
          v28 += 2;
          if (v24 == v29)
          {
            v38 = v20;
            goto LABEL_28;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v63 = v27;
        if ((result & 1) == 0)
        {
          result = sub_255C977B8(0, *(v27 + 2) + 1, 1);
          v27 = v63;
        }

        v35 = *(v27 + 2);
        v34 = *(v27 + 3);
        v36 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          v39 = v35 + 1;
          v48 = v35;
          result = sub_255C977B8((v34 > 1), v35 + 1, 1);
          v36 = v39;
          v35 = v48;
          v27 = v63;
        }

        v25 = v29 + 1;
        *(v27 + 2) = v36;
        v37 = &v27[16 * v35];
        *(v37 + 4) = v31;
        *(v37 + 5) = v30;
        v26 = v50;
        v38 = v20;
      }

      while (v49 != v29);
    }

    else
    {
      v38 = v20;
      v27 = MEMORY[0x277D84F90];
    }

LABEL_28:

    v40 = *(v27 + 2);
    if (v40)
    {
      v41 = v54;
      v42 = (v53 + 48);
      while (1)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v27;
        if (!isUniquelyReferenced_nonNull_native || (v40 - 1) > *(v27 + 3) >> 1)
        {
          v27 = sub_255C96444(isUniquelyReferenced_nonNull_native, v40, 1, v27);
          v63 = v27;
        }

        sub_255CD4CC8(0, 1, 0);
        v44 = sub_255CB3508();
        if (v44 == 11)
        {

          v46 = v60;
          v38 = v20;
          goto LABEL_41;
        }

        sub_255CD39A0(v44, v41);
        v45 = (*v42)(v41, 1, v59);
        v46 = v60;
        v38 = v20;
        if (v45 == 1)
        {
          break;
        }

        sub_255CD4D88(v41, v4);
        sub_255CD4FC4(&qword_27F7DEE88, type metadata accessor for LegalDocumentModel);
        sub_255D06198();
        sub_255CBFC44(v4);
        v40 = *(v27 + 2);
        if (!v40)
        {
          goto LABEL_38;
        }
      }

      sub_255C76B94(v41, &qword_27F7DEE60);
    }

    else
    {
      v46 = v60;
LABEL_38:
    }

LABEL_41:
    sub_255D06FE8();
    (*(v55 + 8))(v46, v56);
    return (*(v51 + 8))(v38, v52);
  }
}

size_t sub_255CD39A0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v61) = a1;
  v55 = a2;
  v66 = type metadata accessor for LegalDocumentModel(0);
  v2 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v67 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_255CD4B34();
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = result + 40;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
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
        return result;
      }

      v10 = *v8;
      v11 = *(*v8 + 16);
      v12 = v9[2];
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_102;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v13 <= v9[3] >> 1)
      {
        if (*(v10 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v14 = v12 + v11;
        }

        else
        {
          v14 = v12;
        }

        result = sub_255C97498(result, v14, 1, v9);
        v9 = result;
        if (*(v10 + 16))
        {
LABEL_15:
          if ((v9[3] >> 1) - v9[2] < v11)
          {
            goto LABEL_104;
          }

          swift_arrayInitWithCopy();

          if (v11)
          {
            v15 = v9[2];
            v16 = __OFADD__(v15, v11);
            v17 = v15 + v11;
            if (v16)
            {
              goto LABEL_105;
            }

            v9[2] = v17;
          }

          goto LABEL_4;
        }
      }

      if (v11)
      {
        goto LABEL_103;
      }

LABEL_4:
      ++v7;
      v8 += 16;
      if (v6 == v7)
      {
        goto LABEL_20;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_20:

  v56 = v9[2];
  if (v56)
  {
    v18 = 0;
    v19 = 0xEE0079746E617272;
    v20 = 0xED000065736E6563;
    v21 = 0x694C656369766564;
    v60 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v65 = 0x8000000255D184D0;
    v63 = 0x8000000255D184F0;
    v64 = 0x8000000255D184B0;
    v58 = 0x8000000255D18450;
    v59 = 0x8000000255D18470;
    v22 = v61;
    v61 = v2;
    v62 = 0x8000000255D18490;
    v57 = 0x8000000255D18420;
    while (v18 < v9[2])
    {
      v23 = v67;
      sub_255CBBAC0(&v60[*(v2 + 72) * v18], v67);
      v24 = *v23;
      if (v24 <= 4)
      {
        v30 = 0xD000000000000016;
        if (v24 == 3)
        {
          v30 = 0xD000000000000010;
        }

        v26 = v58;
        v25 = v59;
        if (v24 == 3)
        {
          v31 = v58;
        }

        else
        {
          v31 = v59;
        }

        if (v24 == 2)
        {
          v30 = 0x6157656369766564;
          v31 = v19;
        }

        v32 = 0xD000000000000012;
        if (*v23)
        {
          v32 = v21;
        }

        v27 = v57;
        if (*v23)
        {
          v33 = v20;
        }

        else
        {
          v33 = v57;
        }

        if (*v23 <= 1u)
        {
          v28 = v32;
        }

        else
        {
          v28 = v30;
        }

        if (*v23 <= 1u)
        {
          v29 = v33;
        }

        else
        {
          v29 = v31;
        }
      }

      else
      {
        v26 = v58;
        v25 = v59;
        v27 = v57;
        if (*v23 > 7u)
        {
          if (v24 == 8)
          {
            v28 = 0xD000000000000013;
            v29 = v63;
          }

          else if (v24 == 9)
          {
            v28 = 0x4C646F50656D6F68;
            v29 = 0xEE0065736E656369;
          }

          else
          {
            v28 = 0x57646F50656D6F68;
            v29 = 0xEF79746E61727261;
          }
        }

        else if (v24 == 5)
        {
          v28 = 0xD000000000000017;
          v29 = v62;
        }

        else
        {
          if (v24 == 6)
          {
            v28 = 0xD000000000000014;
          }

          else
          {
            v28 = 0xD000000000000011;
          }

          if (v24 == 6)
          {
            v29 = v64;
          }

          else
          {
            v29 = v65;
          }
        }
      }

      ++v18;
      v34 = 0xD000000000000013;
      v35 = 0x57646F50656D6F68;
      if (v22 == 9)
      {
        v35 = 0x4C646F50656D6F68;
      }

      v36 = 0xEF79746E61727261;
      if (v22 == 9)
      {
        v36 = 0xEE0065736E656369;
      }

      if (v22 != 8)
      {
        v34 = v35;
      }

      v37 = v63;
      if (v22 != 8)
      {
        v37 = v36;
      }

      v38 = 0xD000000000000017;
      v39 = 0xD000000000000014;
      if (v22 != 6)
      {
        v39 = 0xD000000000000011;
      }

      v40 = v65;
      if (v22 == 6)
      {
        v40 = v64;
      }

      if (v22 != 5)
      {
        v38 = v39;
      }

      v41 = v62;
      if (v22 != 5)
      {
        v41 = v40;
      }

      if (v22 <= 7)
      {
        v34 = v38;
        v37 = v41;
      }

      v42 = 0xD000000000000016;
      if (v22 == 3)
      {
        v42 = 0xD000000000000010;
        v43 = v26;
      }

      else
      {
        v43 = v25;
      }

      if (v22 == 2)
      {
        v42 = 0x6157656369766564;
        v43 = v19;
      }

      v44 = 0xD000000000000012;
      v45 = v21;
      if (v22)
      {
        v44 = v21;
      }

      v46 = v20;
      if (v22)
      {
        v47 = v20;
      }

      else
      {
        v47 = v27;
      }

      if (v22 <= 1)
      {
        v42 = v44;
        v43 = v47;
      }

      if (v22 <= 4)
      {
        v48 = v42;
      }

      else
      {
        v48 = v34;
      }

      if (v22 <= 4)
      {
        v49 = v43;
      }

      else
      {
        v49 = v37;
      }

      if (v28 == v48 && v29 == v49)
      {

LABEL_99:

        v53 = v55;
        sub_255CD4D88(v67, v55);
        v52 = 0;
        v2 = v61;
        return (*(v2 + 56))(v53, v52, 1, v66);
      }

      v50 = v19;
      v51 = sub_255D076D8();

      if (v51)
      {
        goto LABEL_99;
      }

      result = sub_255CBFC44(v67);
      v19 = v50;
      v20 = v46;
      v21 = v45;
      v2 = v61;
      if (v56 == v18)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_106;
  }

LABEL_97:

  v52 = 1;
  v53 = v55;
  return (*(v2 + 56))(v53, v52, 1, v66);
}

uint64_t LegalAndRegulatorySettingsListState.deinit()
{

  v1 = OBJC_IVAR____TtC33LegalAndRegulatorySettingsSupport35LegalAndRegulatorySettingsListState___observationRegistrar;
  v2 = sub_255D05CC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LegalAndRegulatorySettingsListState.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC33LegalAndRegulatorySettingsSupport35LegalAndRegulatorySettingsListState___observationRegistrar;
  v2 = sub_255D05CC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_255CD409C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_255C7B7C4(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_255CD4F3C(0, &qword_27F7DF550);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_255D07478();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

unint64_t sub_255CD421C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF598);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC58);
    v7 = sub_255D07658();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_255C7299C(v9, v5, &qword_27F7DF598);
      result = sub_255C7B568(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_255D05B78();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255CD4404(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF5A0);
    v3 = sub_255D07658();
    v4 = a1 + 32;

    while (1)
    {
      sub_255C7299C(v4, v13, &qword_27F7DDCC8);
      result = sub_255C7B604(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_255C7E138(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255CD4540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF590);
    v3 = sub_255D07658();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_255C7B648(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_255CD4630(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCA0);
  v3 = sub_255D07658();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_255C7B700(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_255C7B700(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_255CD474C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC50);
    v3 = sub_255D07658();
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_255C7B780(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v12 = v3[7] + 32 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255CD484C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDC98);
    v3 = sub_255D07658();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255C7B7C4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255CD4950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DDCA8);
    v3 = sub_255D07658();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_255C7B780(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255CD4A30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF588);
    v3 = sub_255D07658();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_255C7B7C4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_255CD4B34()
{
  v0 = sub_255CD222C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DE1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255D0AA80;
  *(inited + 32) = 0;
  *(inited + 40) = v0;
  if ([objc_opt_self() areAnySpeakersConfigured])
  {
    v2 = sub_255CD2B10();
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_255D0AA80;
    *(v3 + 32) = 1;
    *(v3 + 40) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF578);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_255D0AA80;
    *(v4 + 32) = v3;
    v5 = v4 + 32;
    v6 = sub_255CD107C(v4);
    swift_setDeallocating();
    sub_255C76B94(v5, &qword_27F7DF508);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF578);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_255D0B6E0;
  *(v7 + 32) = inited;
  *(v7 + 40) = v6;
  v8 = sub_255CD107C(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7DF508);
  swift_arrayDestroy();
  return v8;
}

unint64_t sub_255CD4CC8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_255CD4D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegalDocumentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LegalAndRegulatorySettingsListState()
{
  result = qword_27F7DF560;
  if (!qword_27F7DF560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255CD4E40()
{
  result = sub_255D05CC8();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_255CD4F3C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_255CD4F8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  v4 = v2;
}

uint64_t sub_255CD4FC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255CD502C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 72) = v0[3];
  *(v1 + 80) = v2;
}

uint64_t sub_255CD50D0()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_255CD5144()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t get_enum_tag_for_layout_string_33LegalAndRegulatorySettingsSupport9BlockNodeO(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 8)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
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

uint64_t sub_255CD520C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 33))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 32);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_255CD5254(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_255CD529C(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_255CD52C8(char a1, char a2)
{
  if (qword_255D10458[a1] == qword_255D10458[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_255D076D8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

void sub_255CD5330()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = MEMORY[0x277D84F90];
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        return;
      }

      v10 = v1[2];
      if (v10)
      {
        v55 = MEMORY[0x277D84F90];
        sub_255C97818(0, v10, 0);
        v3 = v55;
        v11 = v1 + 5;
        do
        {
          v12 = *v11;
          v14 = *(v55 + 16);
          v13 = *(v55 + 24);
          v15 = v14 + 1;

          if (v14 >= v13 >> 1)
          {
            sub_255C97818((v13 > 1), v14 + 1, 1);
          }

          *(v55 + 16) = v15;
          *(v55 + 8 * v14 + 32) = v12;
          v11 += 2;
          --v10;
        }

        while (v10);
      }

      else
      {
        v15 = *(MEMORY[0x277D84F90] + 16);
        if (!v15)
        {
          goto LABEL_79;
        }
      }

      v34 = 0;
      v35 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v34 >= *(v3 + 16))
        {
          goto LABEL_82;
        }

        v36 = *(v3 + 8 * v34 + 32);
        v37 = *(v36 + 16);
        v38 = *(v35 + 2);
        v39 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          goto LABEL_85;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v39 <= *(v35 + 3) >> 1)
        {
          if (*(v36 + 16))
          {
            goto LABEL_57;
          }
        }

        else
        {
          if (v38 <= v39)
          {
            v41 = v38 + v37;
          }

          else
          {
            v41 = v38;
          }

          v35 = sub_255C96758(isUniquelyReferenced_nonNull_native, v41, 1, v35);
          if (*(v36 + 16))
          {
LABEL_57:
            if ((*(v35 + 3) >> 1) - *(v35 + 2) < v37)
            {
              goto LABEL_91;
            }

            swift_arrayInitWithCopy();

            if (v37)
            {
              v42 = *(v35 + 2);
              v32 = __OFADD__(v42, v37);
              v43 = v42 + v37;
              if (v32)
              {
                goto LABEL_94;
              }

              *(v35 + 2) = v43;
            }

            goto LABEL_46;
          }
        }

        if (v37)
        {
          goto LABEL_88;
        }

LABEL_46:
        if (v15 == ++v34)
        {
          goto LABEL_79;
        }
      }
    }

    v16 = *(v0 + 16);
    v17 = *(v16 + 16);
    if (v17)
    {
      v56 = MEMORY[0x277D84F90];
      sub_255C97818(0, v17, 0);
      v3 = v56;
      v18 = (v16 + 32);
      do
      {
        v19 = *v18;
        v21 = *(v56 + 16);
        v20 = *(v56 + 24);
        v22 = v21 + 1;

        if (v21 >= v20 >> 1)
        {
          sub_255C97818((v20 > 1), v21 + 1, 1);
        }

        *(v56 + 16) = v22;
        *(v56 + 8 * v21 + 32) = v19;
        ++v18;
        --v17;
      }

      while (v17);
    }

    else
    {
      v22 = *(MEMORY[0x277D84F90] + 16);
      if (!v22)
      {
        goto LABEL_79;
      }
    }

    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v44 >= *(v3 + 16))
      {
        goto LABEL_83;
      }

      v46 = *(v3 + 8 * v44 + 32);
      v47 = *(v46 + 16);
      v48 = *(v45 + 2);
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_86;
      }

      v50 = swift_isUniquelyReferenced_nonNull_native();
      if (v50 && v49 <= *(v45 + 3) >> 1)
      {
        if (*(v46 + 16))
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v48 <= v49)
        {
          v51 = v48 + v47;
        }

        else
        {
          v51 = v48;
        }

        v45 = sub_255C96758(v50, v51, 1, v45);
        if (*(v46 + 16))
        {
LABEL_75:
          if ((*(v45 + 3) >> 1) - *(v45 + 2) < v47)
          {
            goto LABEL_92;
          }

          swift_arrayInitWithCopy();

          if (v47)
          {
            v52 = *(v45 + 2);
            v32 = __OFADD__(v52, v47);
            v53 = v52 + v47;
            if (v32)
            {
              goto LABEL_95;
            }

            *(v45 + 2) = v53;
          }

          goto LABEL_64;
        }
      }

      if (v47)
      {
        goto LABEL_89;
      }

LABEL_64:
      if (v22 == ++v44)
      {
        goto LABEL_79;
      }
    }
  }

  if (!*(v0 + 32))
  {

    return;
  }

  if (v2 == 1)
  {
    v4 = v1[2];
    if (v4)
    {
      v54 = MEMORY[0x277D84F90];
      sub_255C97818(0, v4, 0);
      v3 = v54;
      v5 = v1 + 4;
      do
      {
        v6 = *v5;
        v8 = *(v54 + 16);
        v7 = *(v54 + 24);
        v9 = v8 + 1;

        if (v8 >= v7 >> 1)
        {
          sub_255C97818((v7 > 1), v8 + 1, 1);
        }

        *(v54 + 16) = v9;
        *(v54 + 8 * v8 + 32) = v6;
        ++v5;
        --v4;
      }

      while (v4);
      goto LABEL_26;
    }

    v9 = *(MEMORY[0x277D84F90] + 16);
    if (v9)
    {
LABEL_26:
      v23 = 0;
      v24 = MEMORY[0x277D84F90];
      do
      {
        if (v23 >= *(v3 + 16))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          return;
        }

        v25 = *(v3 + 8 * v23 + 32);
        v26 = *(v25 + 16);
        v27 = *(v24 + 2);
        v28 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          goto LABEL_84;
        }

        v29 = swift_isUniquelyReferenced_nonNull_native();
        if (v29 && v28 <= *(v24 + 3) >> 1)
        {
          if (!*(v25 + 16))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v27 <= v28)
          {
            v30 = v27 + v26;
          }

          else
          {
            v30 = v27;
          }

          v24 = sub_255C96758(v29, v30, 1, v24);
          if (!*(v25 + 16))
          {
LABEL_27:

            if (v26)
            {
              goto LABEL_87;
            }

            goto LABEL_28;
          }
        }

        if ((*(v24 + 3) >> 1) - *(v24 + 2) < v26)
        {
          goto LABEL_90;
        }

        swift_arrayInitWithCopy();

        if (v26)
        {
          v31 = *(v24 + 2);
          v32 = __OFADD__(v31, v26);
          v33 = v31 + v26;
          if (v32)
          {
            goto LABEL_93;
          }

          *(v24 + 2) = v33;
        }

LABEL_28:
        ++v23;
      }

      while (v9 != v23);
    }

LABEL_79:
  }
}

uint64_t sub_255CD5888(unsigned __int8 *a1, int8x16_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v4 = *(a1 + 1);
  v5 = a1[32];
  if (v5 > 4)
  {
    if (a1[32] <= 6u)
    {
      if (v5 == 5)
      {
        if (a2[2].i8[0] == 5)
        {
          if ((v2 | (v3 << 8)) == a2->i64[0] && v4 == a2->i64[1])
          {
            goto LABEL_69;
          }

LABEL_70:

          return sub_255D076D8();
        }

        goto LABEL_65;
      }

      if (a2[2].i8[0] != 6)
      {
        goto LABEL_65;
      }

      v23 = a2->i64[0];
      v24 = v2 | (v3 << 8);
    }

    else
    {
      if (v5 != 7)
      {
        if (v5 != 8)
        {
          if (a2[2].i8[0] == 9)
          {
            v32 = vorrq_s8(*a2, a2[1]);
            if (!*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)))
            {
              goto LABEL_69;
            }
          }

          goto LABEL_65;
        }

        if (a2[2].i8[0] != 8)
        {
          goto LABEL_65;
        }

        v10 = a2->i64[1];
        if ((sub_255C8EA80(v2 | (v3 << 8), a2->i64[0]) & 1) == 0)
        {
          goto LABEL_65;
        }

        return sub_255C8EB48(v4, v10);
      }

      if (a2[2].i8[0] != 7 || (v2 | (v3 << 8)) != a2->i64[0])
      {
        goto LABEL_65;
      }

      v23 = a2->i64[1];
      v24 = *(a1 + 1);
    }

    return sub_255C8E694(v24, v23);
  }

  if (a1[32] <= 1u)
  {
    if (!a1[32])
    {
      if (!a2[2].i8[0])
      {
        v11 = v2 | (v3 << 8);
        v12 = a2->i64[0];
        v13 = *(v11 + 16);
        if (v13 == *(a2->i64[0] + 16))
        {
          if (v13 && v12 != v11)
          {
            v14 = v11 + 32;
            v15 = v12 + 32;
            do
            {
              v16 = *v14;
              v17 = *(v14 + 16);
              v35 = *(v14 + 32);
              v34[0] = v16;
              v34[1] = v17;
              v18 = *v15;
              v19 = *(v15 + 16);
              v37 = *(v15 + 32);
              v36[0] = v18;
              v36[1] = v19;
              sub_255C76B38(v34, v33);
              sub_255C76B38(v36, v33);
              v20 = sub_255CD5888(v34, v36);
              sub_255C76BF4(v36);
              sub_255C76BF4(v34);
              if ((v20 & 1) == 0)
              {
                break;
              }

              v15 += 40;
              v14 += 40;
              --v13;
            }

            while (v13);
            return v20 & 1;
          }

          goto LABEL_69;
        }
      }

      goto LABEL_65;
    }

    if (a2[2].i8[0] != 1 || ((v2 ^ a2->u8[0]) & 1) != 0)
    {
      goto LABEL_65;
    }

    v22 = a2->i64[1];
    v7 = *(a1 + 1);
  }

  else
  {
    v7 = *(a1 + 2);
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        if (a2[2].i8[0] == 3 && ((v2 ^ a2->u8[0]) & 1) == 0)
        {
          v8 = a2->i64[1];

          return sub_255C8C980(v4, v8);
        }

        goto LABEL_65;
      }

      if (a2[2].i8[0] == 4)
      {
        v25 = *(a1 + 3);
        v26 = a2->i64[1];
        v27 = a2[1].i64[0];
        v28 = a2[1].i64[1];
        if (v4)
        {
          if (v26)
          {
            v29 = (v2 | (v3 << 8)) == a2->i64[0] && v4 == v26;
            if (v29 || (v30 = v7, v31 = sub_255D076D8(), v7 = v30, (v31 & 1) != 0))
            {
LABEL_67:
              if (v7 == v27 && v25 == v28)
              {
LABEL_69:
                v20 = 1;
                return v20 & 1;
              }

              goto LABEL_70;
            }
          }
        }

        else if (!v26)
        {
          goto LABEL_67;
        }
      }

LABEL_65:
      v20 = 0;
      return v20 & 1;
    }

    if (a2[2].i8[0] != 2)
    {
      goto LABEL_65;
    }

    v20 = 0;
    if (((v2 ^ a2->u8[0]) & 1) != 0 || v4 != a2->i64[1])
    {
      return v20 & 1;
    }

    v22 = a2[1].i64[0];
  }

  return sub_255C8B060(v7, v22);
}

uint64_t sub_255CD5C50(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1) | ((*(v1 + 5) | (v1[7] << 16)) << 32);
  v5 = *(v1 + 1);
  v6 = v1[32];
  if (v6 > 4)
  {
    if (v1[32] <= 6u)
    {
      if (v6 == 5)
      {
        MEMORY[0x259C4BB60](5);
LABEL_38:

        return sub_255D07058();
      }

      MEMORY[0x259C4BB60](6);
      v24 = *((v3 | (v4 << 8)) + 0x10);
      result = MEMORY[0x259C4BB60](v24);
      if (v24)
      {
        v25 = ((v3 | (v4 << 8)) + 56);
        do
        {
          v26 = *(v25 - 3);
          v27 = *(v25 - 2);
          v28 = *(v25 - 1);
          v29 = *v25;
          v25 += 32;
          sub_255C74200(v26, v27, v28, v29);
          sub_255D02110(a1, v26, v27, v28, v29);
          result = sub_255C7429C(v26, v27, v28, v29);
          --v24;
        }

        while (v24);
      }
    }

    else if (v6 == 7)
    {
      MEMORY[0x259C4BB60](7);
      MEMORY[0x259C4BB60](v3 | (v4 << 8));
      v18 = *(v5 + 16);
      result = MEMORY[0x259C4BB60](v18);
      if (v18)
      {
        v19 = (v5 + 56);
        do
        {
          v20 = *(v19 - 3);
          v21 = *(v19 - 2);
          v22 = *(v19 - 1);
          v23 = *v19;
          v19 += 32;
          sub_255C74200(v20, v21, v22, v23);
          sub_255D02110(a1, v20, v21, v22, v23);
          result = sub_255C7429C(v20, v21, v22, v23);
          --v18;
        }

        while (v18);
      }
    }

    else if (v6 == 8)
    {
      MEMORY[0x259C4BB60](8);
      sub_255CDC454(a1, v3 | (v4 << 8));
      v9 = *(v5 + 16);
      result = MEMORY[0x259C4BB60](v9);
      if (v9)
      {
        v10 = (v5 + 32);
        do
        {
          v11 = *v10++;

          sub_255CD68F8(a1, v11);

          --v9;
        }

        while (v9);
      }
    }

    else
    {
      return MEMORY[0x259C4BB60](9);
    }
  }

  else
  {
    if (v1[32] > 1u)
    {
      v7 = *(v1 + 2);
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          MEMORY[0x259C4BB60](3);
          sub_255D07748();

          return sub_255CDC4C0(a1, v5);
        }

        MEMORY[0x259C4BB60](4);
        sub_255D07748();
        if (v5)
        {
          sub_255D07058();
        }

        goto LABEL_38;
      }

      MEMORY[0x259C4BB60](2);
      sub_255D07748();
      MEMORY[0x259C4BB60](v5);
      v16 = a1;
      v17 = v7;
      goto LABEL_31;
    }

    if (v1[32])
    {
      MEMORY[0x259C4BB60](1);
      sub_255D07748();
      v16 = a1;
      v17 = v5;
LABEL_31:

      return sub_255CDC5AC(v16, v17);
    }

    MEMORY[0x259C4BB60](0);
    v12 = *((v3 | (v4 << 8)) + 0x10);
    result = MEMORY[0x259C4BB60](v12);
    if (v12)
    {
      v13 = (v3 | (v4 << 8)) + 32;
      do
      {
        v14 = *v13;
        v15 = *(v13 + 16);
        v32 = *(v13 + 32);
        v31[0] = v14;
        v31[1] = v15;
        sub_255C76B38(v31, v30);
        sub_255CD5C50(a1);
        result = sub_255C76BF4(v31);
        v13 += 40;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t sub_255CD6014()
{
  sub_255D07728();
  sub_255CD5C50(v1);
  return sub_255D07768();
}

uint64_t sub_255CD6058()
{
  sub_255D07728();
  sub_255CD5C50(v1);
  return sub_255D07768();
}

unint64_t sub_255CD609C()
{
  result = qword_27F7DF5A8;
  if (!qword_27F7DF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5A8);
  }

  return result;
}

uint64_t sub_255CD60F0(uint64_t a1)
{
  sub_255D07728();
  v2 = *(a1 + 16);
  MEMORY[0x259C4BB60](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 16);
      v8[0] = *v3;
      v8[1] = v4;
      v9 = *(v3 + 32);
      sub_255C76B38(v8, &v6);
      sub_255CD5C50(v7);
      sub_255C76BF4(v8);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_255D07768();
}

uint64_t sub_255CD6188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_255D07748();
  v5 = *(a3 + 16);
  result = MEMORY[0x259C4BB60](v5);
  if (v5)
  {
    v7 = a3 + 32;
    do
    {
      v8 = *(v7 + 16);
      v10[0] = *v7;
      v10[1] = v8;
      v11 = *(v7 + 32);
      sub_255C76B38(v10, v9);
      sub_255CD5C50(a1);
      result = sub_255C76BF4(v10);
      v7 += 40;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255CD6218(uint64_t a1, uint64_t a2)
{
  sub_255D07728();
  sub_255D07748();
  v3 = *(a2 + 16);
  MEMORY[0x259C4BB60](v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v5 = *(v4 + 16);
      v9[0] = *v4;
      v9[1] = v5;
      v10 = *(v4 + 32);
      sub_255C76B38(v9, &v7);
      sub_255CD5C50(v8);
      sub_255C76BF4(v9);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return sub_255D07768();
}

uint64_t sub_255CD62C0(uint64_t a1)
{
  sub_255D07728();
  v2 = *(a1 + 16);
  MEMORY[0x259C4BB60](v2);
  if (v2)
  {
    v3 = (a1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v3 += 32;
      sub_255C74200(v4, v5, v6, v7);
      sub_255D02110(v9, v4, v5, v6, v7);
      sub_255C7429C(v4, v5, v6, v7);
      --v2;
    }

    while (v2);
  }

  return sub_255D07768();
}

uint64_t sub_255CD6398()
{
  v1 = *(v0 + 8);
  sub_255D07728();
  sub_255D07748();
  MEMORY[0x259C4BB60](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v5 = v3[1];
      v10 = *(v3 + 32);
      v9[0] = v4;
      v9[1] = v5;
      sub_255C76B38(v9, &v7);
      sub_255CD5C50(v8);
      sub_255C76BF4(v9);
      v3 = (v3 + 40);
      --v2;
    }

    while (v2);
  }

  return sub_255D07768();
}

uint64_t sub_255CD6448()
{
  sub_255D07728();
  sub_255D07058();

  return sub_255D07768();
}

uint64_t sub_255CD64A4()
{
  sub_255D07058();
}

uint64_t sub_255CD64E4()
{
  sub_255D07728();
  sub_255D07058();

  return sub_255D07768();
}

uint64_t sub_255CD653C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255CDC68C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_255CD6588()
{
  v1 = *v0;
  sub_255D07728();
  sub_255CD68F8(v3, v1);
  return sub_255D07768();
}

uint64_t sub_255CD65D8()
{
  v1 = *v0;
  sub_255D07728();
  sub_255CD68F8(v3, v1);
  return sub_255D07768();
}

unint64_t sub_255CD662C()
{
  result = qword_27F7DF5B0;
  if (!qword_27F7DF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5B0);
  }

  return result;
}

unint64_t sub_255CD6684()
{
  result = qword_27F7DF5B8;
  if (!qword_27F7DF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5B8);
  }

  return result;
}

unint64_t sub_255CD66DC()
{
  result = qword_27F7DF5C0;
  if (!qword_27F7DF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5C0);
  }

  return result;
}

unint64_t sub_255CD6734()
{
  result = qword_27F7DF5C8;
  if (!qword_27F7DF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7DF5C8);
  }

  return result;
}

uint64_t sub_255CD6790(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x259C4BB60](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v6 += 32;
      sub_255C74200(v7, v8, v9, v10);
      sub_255D02110(a1, v7, v8, v9, v10);
      result = sub_255C7429C(v7, v8, v9, v10);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_255CD6838()
{
  v1 = *v0;
  sub_255D07728();
  MEMORY[0x259C4BB60](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v3 += 32;
      sub_255C74200(v4, v5, v6, v7);
      sub_255D02110(v9, v4, v5, v6, v7);
      sub_255C7429C(v4, v5, v6, v7);
      --v2;
    }

    while (v2);
  }

  return sub_255D07768();
}

uint64_t sub_255CD68F8(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x259C4BB60](*(a2 + 16));
  v803 = *(a2 + 16);
  if (v803)
  {
    v5 = 0;
    v802 = a2 + 32;
LABEL_5:
    v804 = v5;
    v6 = *(v802 + 8 * v5);
    result = MEMORY[0x259C4BB60](*(v6 + 16));
    v814 = *(v6 + 16);
    if (!v814)
    {
      goto LABEL_4;
    }

    v809 = v6 + 32;

    v7 = 0;
    while (1)
    {
      v12 = v809 + 32 * v7;
      v13 = *(v12 + 8);
      v880 = *v12;
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      v860 = v7;
      if (v15 <= 3)
      {
        break;
      }

      if (v15 <= 5)
      {
        v812 = v13;
        v838 = v14;
        if (v15 == 4)
        {
          MEMORY[0x259C4BB60](6);
          MEMORY[0x259C4BB60](*(v880 + 16));
          v61 = *(v880 + 16);
          if (!v61)
          {
            goto LABEL_9;
          }

          v62 = v880 + 32;

          v63 = 0;
          v806 = v61;
          while (1)
          {
            v287 = v62 + 32 * v63;
            v289 = *v287;
            v288 = *(v287 + 8);
            v290 = *(v287 + 16);
            v291 = *(v287 + 24);
            if (v291 > 3)
            {
              if (v291 > 5)
              {
                if (v291 != 6)
                {
                  if (v291 != 7)
                  {
                    if (v290 | v288 | v289)
                    {
                      MEMORY[0x259C4BB60](2);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](1);
                    }

                    goto LABEL_288;
                  }

                  MEMORY[0x259C4BB60](9);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v290 + 16));
                  v292 = *(v290 + 16);
                  if (!v292)
                  {
                    sub_255C7429C(v289, v288, v290, 7u);
                    goto LABEL_288;
                  }

                  v820 = v289;
                  v845 = v290;
                  v857 = v63;
                  v293 = 0;
                  v294 = v290 + 32;
                  v887 = *(v290 + 16);
                  v866 = v290 + 32;
                  while (1)
                  {
                    v295 = v294 + 32 * v293;
                    v296 = *v295;
                    v297 = *(v295 + 8);
                    v298 = *(v295 + 16);
                    v299 = *(v295 + 24);
                    if (v299 <= 3)
                    {
                      if (v299 <= 1)
                      {
                        if (v299)
                        {
                          MEMORY[0x259C4BB60](3);

                          sub_255D07058();
                          sub_255C7429C(v296, v297, v298, 1u);
                        }

                        else
                        {
                          MEMORY[0x259C4BB60](0);

                          sub_255D07058();
                          sub_255C7429C(v296, v297, v298, 0);
                        }

                        goto LABEL_296;
                      }

                      if (v299 == 2)
                      {
                        MEMORY[0x259C4BB60](4);

                        sub_255D07058();
                        sub_255C7429C(v296, v297, v298, 2u);
                        goto LABEL_296;
                      }

                      v930 = v298;
                      MEMORY[0x259C4BB60](5);
                      MEMORY[0x259C4BB60](*(v296 + 16));
                      v322 = *(v296 + 16);
                      if (!v322)
                      {
                        goto LABEL_296;
                      }

                      v323 = (v296 + 56);
                      do
                      {
                        v324 = *(v323 - 3);
                        v325 = *(v323 - 2);
                        v326 = *(v323 - 1);
                        v327 = *v323;
                        v323 += 32;
                        sub_255C74200(v324, v325, v326, v327);
                        sub_255D02110(a1, v324, v325, v326, v327);
                        sub_255C7429C(v324, v325, v326, v327);
                        --v322;
                      }

                      while (v322);
                      v306 = v296;
                      v307 = v297;
                      v308 = v930;
                      v309 = 3;
                    }

                    else if (v299 <= 5)
                    {
                      v928 = v298;
                      if (v299 == 4)
                      {
                        MEMORY[0x259C4BB60](6);
                        MEMORY[0x259C4BB60](*(v296 + 16));
                        v310 = *(v296 + 16);
                        if (!v310)
                        {
                          goto LABEL_296;
                        }

                        v311 = (v296 + 56);
                        do
                        {
                          v312 = *(v311 - 3);
                          v313 = *(v311 - 2);
                          v314 = *(v311 - 1);
                          v315 = *v311;
                          v311 += 32;
                          sub_255C74200(v312, v313, v314, v315);
                          sub_255D02110(a1, v312, v313, v314, v315);
                          sub_255C7429C(v312, v313, v314, v315);
                          --v310;
                        }

                        while (v310);
                        v306 = v296;
                        v307 = v297;
                        v308 = v928;
                        v309 = 4;
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](7);
                        MEMORY[0x259C4BB60](*(v296 + 16));
                        v328 = *(v296 + 16);
                        if (!v328)
                        {
                          goto LABEL_296;
                        }

                        v329 = (v296 + 56);
                        do
                        {
                          v330 = *(v329 - 3);
                          v331 = *(v329 - 2);
                          v332 = *(v329 - 1);
                          v333 = *v329;
                          v329 += 32;
                          sub_255C74200(v330, v331, v332, v333);
                          sub_255D02110(a1, v330, v331, v332, v333);
                          sub_255C7429C(v330, v331, v332, v333);
                          --v328;
                        }

                        while (v328);
                        v306 = v296;
                        v307 = v297;
                        v308 = v928;
                        v309 = 5;
                      }
                    }

                    else if (v299 == 6)
                    {
                      MEMORY[0x259C4BB60](8);

                      sub_255D07058();
                      MEMORY[0x259C4BB60](*(v298 + 16));
                      v316 = *(v298 + 16);
                      if (!v316)
                      {
                        sub_255C7429C(v296, v297, v298, 6u);
                        goto LABEL_296;
                      }

                      v929 = v298;
                      v317 = (v298 + 56);
                      do
                      {
                        v318 = *(v317 - 3);
                        v319 = *(v317 - 2);
                        v320 = *(v317 - 1);
                        v321 = *v317;
                        v317 += 32;
                        sub_255C74200(v318, v319, v320, v321);
                        sub_255D02110(a1, v318, v319, v320, v321);
                        sub_255C7429C(v318, v319, v320, v321);
                        --v316;
                      }

                      while (v316);
                      v306 = v296;
                      v307 = v297;
                      v308 = v929;
                      v309 = 6;
                    }

                    else
                    {
                      if (v299 != 7)
                      {
                        if (v298 | v297 | v296)
                        {
                          MEMORY[0x259C4BB60](2);
                        }

                        else
                        {
                          MEMORY[0x259C4BB60](1);
                        }

                        goto LABEL_296;
                      }

                      MEMORY[0x259C4BB60](9);

                      sub_255D07058();
                      MEMORY[0x259C4BB60](*(v298 + 16));
                      v300 = *(v298 + 16);
                      if (!v300)
                      {
                        sub_255C7429C(v296, v297, v298, 7u);
                        goto LABEL_296;
                      }

                      v927 = v298;
                      v301 = (v298 + 56);
                      do
                      {
                        v302 = *(v301 - 3);
                        v303 = *(v301 - 2);
                        v304 = *(v301 - 1);
                        v305 = *v301;
                        v301 += 32;
                        sub_255C74200(v302, v303, v304, v305);
                        sub_255D02110(a1, v302, v303, v304, v305);
                        sub_255C7429C(v302, v303, v304, v305);
                        --v300;
                      }

                      while (v300);
                      v306 = v296;
                      v307 = v297;
                      v308 = v927;
                      v309 = 7;
                    }

                    sub_255C7429C(v306, v307, v308, v309);
                    v292 = v887;
                    v294 = v866;
LABEL_296:
                    if (++v293 == v292)
                    {
                      v283 = v820;
                      v284 = v288;
                      v285 = v845;
                      v286 = 7;
                      goto LABEL_287;
                    }
                  }
                }

                MEMORY[0x259C4BB60](8);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v290 + 16));
                v376 = *(v290 + 16);
                if (!v376)
                {
                  sub_255C7429C(v289, v288, v290, 6u);
                  goto LABEL_288;
                }

                v822 = v289;
                v847 = v290;
                v857 = v63;
                v377 = 0;
                v378 = v290 + 32;
                v889 = *(v290 + 16);
                v868 = v290 + 32;
                while (1)
                {
                  v379 = v378 + 32 * v377;
                  v380 = *v379;
                  v381 = *(v379 + 8);
                  v382 = *(v379 + 16);
                  v383 = *(v379 + 24);
                  if (v383 <= 3)
                  {
                    if (v383 <= 1)
                    {
                      if (v383)
                      {
                        MEMORY[0x259C4BB60](3);

                        sub_255D07058();
                        sub_255C7429C(v380, v381, v382, 1u);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](0);

                        sub_255D07058();
                        sub_255C7429C(v380, v381, v382, 0);
                      }

                      goto LABEL_382;
                    }

                    if (v383 == 2)
                    {
                      MEMORY[0x259C4BB60](4);

                      sub_255D07058();
                      sub_255C7429C(v380, v381, v382, 2u);
                      goto LABEL_382;
                    }

                    v938 = v382;
                    MEMORY[0x259C4BB60](5);
                    MEMORY[0x259C4BB60](*(v380 + 16));
                    v406 = *(v380 + 16);
                    if (!v406)
                    {
                      goto LABEL_382;
                    }

                    v407 = (v380 + 56);
                    do
                    {
                      v408 = *(v407 - 3);
                      v409 = *(v407 - 2);
                      v410 = *(v407 - 1);
                      v411 = *v407;
                      v407 += 32;
                      sub_255C74200(v408, v409, v410, v411);
                      sub_255D02110(a1, v408, v409, v410, v411);
                      sub_255C7429C(v408, v409, v410, v411);
                      --v406;
                    }

                    while (v406);
                    v390 = v380;
                    v391 = v381;
                    v392 = v938;
                    v393 = 3;
                  }

                  else if (v383 <= 5)
                  {
                    v936 = v382;
                    if (v383 == 4)
                    {
                      MEMORY[0x259C4BB60](6);
                      MEMORY[0x259C4BB60](*(v380 + 16));
                      v394 = *(v380 + 16);
                      if (!v394)
                      {
                        goto LABEL_382;
                      }

                      v395 = (v380 + 56);
                      do
                      {
                        v396 = *(v395 - 3);
                        v397 = *(v395 - 2);
                        v398 = *(v395 - 1);
                        v399 = *v395;
                        v395 += 32;
                        sub_255C74200(v396, v397, v398, v399);
                        sub_255D02110(a1, v396, v397, v398, v399);
                        sub_255C7429C(v396, v397, v398, v399);
                        --v394;
                      }

                      while (v394);
                      v390 = v380;
                      v391 = v381;
                      v392 = v936;
                      v393 = 4;
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](7);
                      MEMORY[0x259C4BB60](*(v380 + 16));
                      v412 = *(v380 + 16);
                      if (!v412)
                      {
                        goto LABEL_382;
                      }

                      v413 = (v380 + 56);
                      do
                      {
                        v414 = *(v413 - 3);
                        v415 = *(v413 - 2);
                        v416 = *(v413 - 1);
                        v417 = *v413;
                        v413 += 32;
                        sub_255C74200(v414, v415, v416, v417);
                        sub_255D02110(a1, v414, v415, v416, v417);
                        sub_255C7429C(v414, v415, v416, v417);
                        --v412;
                      }

                      while (v412);
                      v390 = v380;
                      v391 = v381;
                      v392 = v936;
                      v393 = 5;
                    }
                  }

                  else if (v383 == 6)
                  {
                    MEMORY[0x259C4BB60](8);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v382 + 16));
                    v400 = *(v382 + 16);
                    if (!v400)
                    {
                      sub_255C7429C(v380, v381, v382, 6u);
                      goto LABEL_382;
                    }

                    v937 = v382;
                    v401 = (v382 + 56);
                    do
                    {
                      v402 = *(v401 - 3);
                      v403 = *(v401 - 2);
                      v404 = *(v401 - 1);
                      v405 = *v401;
                      v401 += 32;
                      sub_255C74200(v402, v403, v404, v405);
                      sub_255D02110(a1, v402, v403, v404, v405);
                      sub_255C7429C(v402, v403, v404, v405);
                      --v400;
                    }

                    while (v400);
                    v390 = v380;
                    v391 = v381;
                    v392 = v937;
                    v393 = 6;
                  }

                  else
                  {
                    if (v383 != 7)
                    {
                      if (v382 | v381 | v380)
                      {
                        MEMORY[0x259C4BB60](2);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](1);
                      }

                      goto LABEL_382;
                    }

                    MEMORY[0x259C4BB60](9);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v382 + 16));
                    v384 = *(v382 + 16);
                    if (!v384)
                    {
                      sub_255C7429C(v380, v381, v382, 7u);
                      goto LABEL_382;
                    }

                    v935 = v382;
                    v385 = (v382 + 56);
                    do
                    {
                      v386 = *(v385 - 3);
                      v387 = *(v385 - 2);
                      v388 = *(v385 - 1);
                      v389 = *v385;
                      v385 += 32;
                      sub_255C74200(v386, v387, v388, v389);
                      sub_255D02110(a1, v386, v387, v388, v389);
                      sub_255C7429C(v386, v387, v388, v389);
                      --v384;
                    }

                    while (v384);
                    v390 = v380;
                    v391 = v381;
                    v392 = v935;
                    v393 = 7;
                  }

                  sub_255C7429C(v390, v391, v392, v393);
                  v376 = v889;
                  v378 = v868;
LABEL_382:
                  if (++v377 == v376)
                  {
                    v283 = v822;
                    v284 = v288;
                    v285 = v847;
                    v286 = 6;
                    goto LABEL_287;
                  }
                }
              }

              if (v291 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v289 + 16));
                v334 = *(v289 + 16);
                if (!v334)
                {
                  goto LABEL_288;
                }

                v821 = v289;
                v846 = v290;
                v857 = v63;
                v335 = v289 + 32;

                v336 = 0;
                v888 = v334;
                v867 = v335;
                while (1)
                {
                  v337 = v335 + 32 * v336;
                  v338 = *v337;
                  v339 = *(v337 + 8);
                  v340 = *(v337 + 16);
                  v341 = *(v337 + 24);
                  if (v341 <= 3)
                  {
                    if (v341 <= 1)
                    {
                      if (v341)
                      {
                        MEMORY[0x259C4BB60](3);

                        sub_255D07058();
                        sub_255C7429C(v338, v339, v340, 1u);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](0);

                        sub_255D07058();
                        sub_255C7429C(v338, v339, v340, 0);
                      }

                      goto LABEL_342;
                    }

                    if (v341 == 2)
                    {
                      MEMORY[0x259C4BB60](4);

                      sub_255D07058();
                      sub_255C7429C(v338, v339, v340, 2u);
                      goto LABEL_342;
                    }

                    v934 = v340;
                    MEMORY[0x259C4BB60](5);
                    MEMORY[0x259C4BB60](*(v338 + 16));
                    v364 = *(v338 + 16);
                    if (!v364)
                    {
                      goto LABEL_342;
                    }

                    v365 = (v338 + 56);
                    do
                    {
                      v366 = *(v365 - 3);
                      v367 = *(v365 - 2);
                      v368 = *(v365 - 1);
                      v369 = *v365;
                      v365 += 32;
                      sub_255C74200(v366, v367, v368, v369);
                      sub_255D02110(a1, v366, v367, v368, v369);
                      sub_255C7429C(v366, v367, v368, v369);
                      --v364;
                    }

                    while (v364);
                    v348 = v338;
                    v349 = v339;
                    v350 = v934;
                    v351 = 3;
                  }

                  else if (v341 <= 5)
                  {
                    v932 = v340;
                    if (v341 == 4)
                    {
                      MEMORY[0x259C4BB60](6);
                      MEMORY[0x259C4BB60](*(v338 + 16));
                      v352 = *(v338 + 16);
                      if (!v352)
                      {
                        goto LABEL_342;
                      }

                      v353 = (v338 + 56);
                      do
                      {
                        v354 = *(v353 - 3);
                        v355 = *(v353 - 2);
                        v356 = *(v353 - 1);
                        v357 = *v353;
                        v353 += 32;
                        sub_255C74200(v354, v355, v356, v357);
                        sub_255D02110(a1, v354, v355, v356, v357);
                        sub_255C7429C(v354, v355, v356, v357);
                        --v352;
                      }

                      while (v352);
                      v348 = v338;
                      v349 = v339;
                      v350 = v932;
                      v351 = 4;
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](7);
                      MEMORY[0x259C4BB60](*(v338 + 16));
                      v370 = *(v338 + 16);
                      if (!v370)
                      {
                        goto LABEL_342;
                      }

                      v371 = (v338 + 56);
                      do
                      {
                        v372 = *(v371 - 3);
                        v373 = *(v371 - 2);
                        v374 = *(v371 - 1);
                        v375 = *v371;
                        v371 += 32;
                        sub_255C74200(v372, v373, v374, v375);
                        sub_255D02110(a1, v372, v373, v374, v375);
                        sub_255C7429C(v372, v373, v374, v375);
                        --v370;
                      }

                      while (v370);
                      v348 = v338;
                      v349 = v339;
                      v350 = v932;
                      v351 = 5;
                    }
                  }

                  else if (v341 == 6)
                  {
                    MEMORY[0x259C4BB60](8);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v340 + 16));
                    v358 = *(v340 + 16);
                    if (!v358)
                    {
                      sub_255C7429C(v338, v339, v340, 6u);
                      goto LABEL_342;
                    }

                    v933 = v340;
                    v359 = (v340 + 56);
                    do
                    {
                      v360 = *(v359 - 3);
                      v361 = *(v359 - 2);
                      v362 = *(v359 - 1);
                      v363 = *v359;
                      v359 += 32;
                      sub_255C74200(v360, v361, v362, v363);
                      sub_255D02110(a1, v360, v361, v362, v363);
                      sub_255C7429C(v360, v361, v362, v363);
                      --v358;
                    }

                    while (v358);
                    v348 = v338;
                    v349 = v339;
                    v350 = v933;
                    v351 = 6;
                  }

                  else
                  {
                    if (v341 != 7)
                    {
                      if (v340 | v339 | v338)
                      {
                        MEMORY[0x259C4BB60](2);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](1);
                      }

                      goto LABEL_342;
                    }

                    MEMORY[0x259C4BB60](9);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v340 + 16));
                    v342 = *(v340 + 16);
                    if (!v342)
                    {
                      sub_255C7429C(v338, v339, v340, 7u);
                      goto LABEL_342;
                    }

                    v931 = v340;
                    v343 = (v340 + 56);
                    do
                    {
                      v344 = *(v343 - 3);
                      v345 = *(v343 - 2);
                      v346 = *(v343 - 1);
                      v347 = *v343;
                      v343 += 32;
                      sub_255C74200(v344, v345, v346, v347);
                      sub_255D02110(a1, v344, v345, v346, v347);
                      sub_255C7429C(v344, v345, v346, v347);
                      --v342;
                    }

                    while (v342);
                    v348 = v338;
                    v349 = v339;
                    v350 = v931;
                    v351 = 7;
                  }

                  sub_255C7429C(v348, v349, v350, v351);
                  v334 = v888;
                  v335 = v867;
LABEL_342:
                  if (++v336 == v334)
                  {
                    v283 = v821;
                    v284 = v288;
                    v285 = v846;
                    v286 = 4;
                    goto LABEL_287;
                  }
                }
              }

              MEMORY[0x259C4BB60](7);
              MEMORY[0x259C4BB60](*(v289 + 16));
              v460 = *(v289 + 16);
              if (!v460)
              {
                goto LABEL_288;
              }

              v824 = v289;
              v849 = v290;
              v857 = v63;
              v461 = v289 + 32;

              v462 = 0;
              v891 = v460;
              v870 = v461;
              while (1)
              {
                v463 = v461 + 32 * v462;
                v464 = *v463;
                v465 = *(v463 + 8);
                v466 = *(v463 + 16);
                v467 = *(v463 + 24);
                if (v467 <= 3)
                {
                  if (v467 <= 1)
                  {
                    if (v467)
                    {
                      MEMORY[0x259C4BB60](3);

                      sub_255D07058();
                      sub_255C7429C(v464, v465, v466, 1u);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](0);

                      sub_255D07058();
                      sub_255C7429C(v464, v465, v466, 0);
                    }

                    goto LABEL_465;
                  }

                  if (v467 == 2)
                  {
                    MEMORY[0x259C4BB60](4);

                    sub_255D07058();
                    sub_255C7429C(v464, v465, v466, 2u);
                    goto LABEL_465;
                  }

                  v946 = v466;
                  MEMORY[0x259C4BB60](5);
                  MEMORY[0x259C4BB60](*(v464 + 16));
                  v490 = *(v464 + 16);
                  if (!v490)
                  {
                    goto LABEL_465;
                  }

                  v491 = (v464 + 56);
                  do
                  {
                    v492 = *(v491 - 3);
                    v493 = *(v491 - 2);
                    v494 = *(v491 - 1);
                    v495 = *v491;
                    v491 += 32;
                    sub_255C74200(v492, v493, v494, v495);
                    sub_255D02110(a1, v492, v493, v494, v495);
                    sub_255C7429C(v492, v493, v494, v495);
                    --v490;
                  }

                  while (v490);
                  v474 = v464;
                  v475 = v465;
                  v476 = v946;
                  v477 = 3;
                }

                else if (v467 <= 5)
                {
                  v944 = v466;
                  if (v467 == 4)
                  {
                    MEMORY[0x259C4BB60](6);
                    MEMORY[0x259C4BB60](*(v464 + 16));
                    v478 = *(v464 + 16);
                    if (!v478)
                    {
                      goto LABEL_465;
                    }

                    v479 = (v464 + 56);
                    do
                    {
                      v480 = *(v479 - 3);
                      v481 = *(v479 - 2);
                      v482 = *(v479 - 1);
                      v483 = *v479;
                      v479 += 32;
                      sub_255C74200(v480, v481, v482, v483);
                      sub_255D02110(a1, v480, v481, v482, v483);
                      sub_255C7429C(v480, v481, v482, v483);
                      --v478;
                    }

                    while (v478);
                    v474 = v464;
                    v475 = v465;
                    v476 = v944;
                    v477 = 4;
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](7);
                    MEMORY[0x259C4BB60](*(v464 + 16));
                    v496 = *(v464 + 16);
                    if (!v496)
                    {
                      goto LABEL_465;
                    }

                    v497 = (v464 + 56);
                    do
                    {
                      v498 = *(v497 - 3);
                      v499 = *(v497 - 2);
                      v500 = *(v497 - 1);
                      v501 = *v497;
                      v497 += 32;
                      sub_255C74200(v498, v499, v500, v501);
                      sub_255D02110(a1, v498, v499, v500, v501);
                      sub_255C7429C(v498, v499, v500, v501);
                      --v496;
                    }

                    while (v496);
                    v474 = v464;
                    v475 = v465;
                    v476 = v944;
                    v477 = 5;
                  }
                }

                else if (v467 == 6)
                {
                  MEMORY[0x259C4BB60](8);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v466 + 16));
                  v484 = *(v466 + 16);
                  if (!v484)
                  {
                    sub_255C7429C(v464, v465, v466, 6u);
                    goto LABEL_465;
                  }

                  v945 = v466;
                  v485 = (v466 + 56);
                  do
                  {
                    v486 = *(v485 - 3);
                    v487 = *(v485 - 2);
                    v488 = *(v485 - 1);
                    v489 = *v485;
                    v485 += 32;
                    sub_255C74200(v486, v487, v488, v489);
                    sub_255D02110(a1, v486, v487, v488, v489);
                    sub_255C7429C(v486, v487, v488, v489);
                    --v484;
                  }

                  while (v484);
                  v474 = v464;
                  v475 = v465;
                  v476 = v945;
                  v477 = 6;
                }

                else
                {
                  if (v467 != 7)
                  {
                    if (v466 | v465 | v464)
                    {
                      MEMORY[0x259C4BB60](2);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](1);
                    }

                    goto LABEL_465;
                  }

                  MEMORY[0x259C4BB60](9);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v466 + 16));
                  v468 = *(v466 + 16);
                  if (!v468)
                  {
                    sub_255C7429C(v464, v465, v466, 7u);
                    goto LABEL_465;
                  }

                  v943 = v466;
                  v469 = (v466 + 56);
                  do
                  {
                    v470 = *(v469 - 3);
                    v471 = *(v469 - 2);
                    v472 = *(v469 - 1);
                    v473 = *v469;
                    v469 += 32;
                    sub_255C74200(v470, v471, v472, v473);
                    sub_255D02110(a1, v470, v471, v472, v473);
                    sub_255C7429C(v470, v471, v472, v473);
                    --v468;
                  }

                  while (v468);
                  v474 = v464;
                  v475 = v465;
                  v476 = v943;
                  v477 = 7;
                }

                sub_255C7429C(v474, v475, v476, v477);
                v460 = v891;
                v461 = v870;
LABEL_465:
                if (++v462 == v460)
                {
                  v283 = v824;
                  v284 = v288;
                  v285 = v849;
                  v286 = 5;
LABEL_287:
                  sub_255C7429C(v283, v284, v285, v286);
                  v62 = v880 + 32;
                  v61 = v806;
                  v63 = v857;
                  goto LABEL_288;
                }
              }
            }

            if (v291 <= 1)
            {
              if (v291)
              {
                MEMORY[0x259C4BB60](3);

                sub_255D07058();
                sub_255C7429C(v289, v288, v290, 1u);
              }

              else
              {
                MEMORY[0x259C4BB60](0);

                sub_255D07058();
                sub_255C7429C(v289, v288, v290, 0);
              }

              goto LABEL_288;
            }

            if (v291 == 2)
            {
              MEMORY[0x259C4BB60](4);

              sub_255D07058();
              sub_255C7429C(v289, v288, v290, 2u);
              goto LABEL_288;
            }

            MEMORY[0x259C4BB60](5);
            MEMORY[0x259C4BB60](*(v289 + 16));
            v418 = *(v289 + 16);
            if (v418)
            {
              break;
            }

LABEL_288:
            if (++v63 == v61)
            {
              v8 = v880;
              v9 = v812;
              v10 = v838;
              v11 = 4;
              goto LABEL_8;
            }
          }

          v823 = v289;
          v848 = v290;
          v857 = v63;
          v419 = v289 + 32;

          v420 = 0;
          v890 = v418;
          v869 = v419;
          while (2)
          {
            v421 = v419 + 32 * v420;
            v422 = *v421;
            v423 = *(v421 + 8);
            v424 = *(v421 + 16);
            v425 = *(v421 + 24);
            if (v425 <= 3)
            {
              if (v425 <= 1)
              {
                if (v425)
                {
                  MEMORY[0x259C4BB60](3);

                  sub_255D07058();
                  sub_255C7429C(v422, v423, v424, 1u);
                }

                else
                {
                  MEMORY[0x259C4BB60](0);

                  sub_255D07058();
                  sub_255C7429C(v422, v423, v424, 0);
                }

                goto LABEL_423;
              }

              if (v425 == 2)
              {
                MEMORY[0x259C4BB60](4);

                sub_255D07058();
                sub_255C7429C(v422, v423, v424, 2u);
                goto LABEL_423;
              }

              v942 = v424;
              MEMORY[0x259C4BB60](5);
              MEMORY[0x259C4BB60](*(v422 + 16));
              v448 = *(v422 + 16);
              if (!v448)
              {
LABEL_423:
                if (++v420 == v418)
                {
                  v283 = v823;
                  v284 = v288;
                  v285 = v848;
                  v286 = 3;
                  goto LABEL_287;
                }

                continue;
              }

              v449 = (v422 + 56);
              do
              {
                v450 = *(v449 - 3);
                v451 = *(v449 - 2);
                v452 = *(v449 - 1);
                v453 = *v449;
                v449 += 32;
                sub_255C74200(v450, v451, v452, v453);
                sub_255D02110(a1, v450, v451, v452, v453);
                sub_255C7429C(v450, v451, v452, v453);
                --v448;
              }

              while (v448);
              v432 = v422;
              v433 = v423;
              v434 = v942;
              v435 = 3;
            }

            else if (v425 <= 5)
            {
              v940 = v424;
              if (v425 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v422 + 16));
                v436 = *(v422 + 16);
                if (!v436)
                {
                  goto LABEL_423;
                }

                v437 = (v422 + 56);
                do
                {
                  v438 = *(v437 - 3);
                  v439 = *(v437 - 2);
                  v440 = *(v437 - 1);
                  v441 = *v437;
                  v437 += 32;
                  sub_255C74200(v438, v439, v440, v441);
                  sub_255D02110(a1, v438, v439, v440, v441);
                  sub_255C7429C(v438, v439, v440, v441);
                  --v436;
                }

                while (v436);
                v432 = v422;
                v433 = v423;
                v434 = v940;
                v435 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v422 + 16));
                v454 = *(v422 + 16);
                if (!v454)
                {
                  goto LABEL_423;
                }

                v455 = (v422 + 56);
                do
                {
                  v456 = *(v455 - 3);
                  v457 = *(v455 - 2);
                  v458 = *(v455 - 1);
                  v459 = *v455;
                  v455 += 32;
                  sub_255C74200(v456, v457, v458, v459);
                  sub_255D02110(a1, v456, v457, v458, v459);
                  sub_255C7429C(v456, v457, v458, v459);
                  --v454;
                }

                while (v454);
                v432 = v422;
                v433 = v423;
                v434 = v940;
                v435 = 5;
              }
            }

            else
            {
              if (v425 != 6)
              {
                if (v425 == 7)
                {
                  MEMORY[0x259C4BB60](9);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v424 + 16));
                  v426 = *(v424 + 16);
                  if (v426)
                  {
                    v939 = v424;
                    v427 = (v424 + 56);
                    do
                    {
                      v428 = *(v427 - 3);
                      v429 = *(v427 - 2);
                      v430 = *(v427 - 1);
                      v431 = *v427;
                      v427 += 32;
                      sub_255C74200(v428, v429, v430, v431);
                      sub_255D02110(a1, v428, v429, v430, v431);
                      sub_255C7429C(v428, v429, v430, v431);
                      --v426;
                    }

                    while (v426);
                    v432 = v422;
                    v433 = v423;
                    v434 = v939;
                    v435 = 7;
                    break;
                  }

                  sub_255C7429C(v422, v423, v424, 7u);
                }

                else if (v424 | v423 | v422)
                {
                  MEMORY[0x259C4BB60](2);
                }

                else
                {
                  MEMORY[0x259C4BB60](1);
                }

                goto LABEL_423;
              }

              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v424 + 16));
              v442 = *(v424 + 16);
              if (!v442)
              {
                sub_255C7429C(v422, v423, v424, 6u);
                goto LABEL_423;
              }

              v941 = v424;
              v443 = (v424 + 56);
              do
              {
                v444 = *(v443 - 3);
                v445 = *(v443 - 2);
                v446 = *(v443 - 1);
                v447 = *v443;
                v443 += 32;
                sub_255C74200(v444, v445, v446, v447);
                sub_255D02110(a1, v444, v445, v446, v447);
                sub_255C7429C(v444, v445, v446, v447);
                --v442;
              }

              while (v442);
              v432 = v422;
              v433 = v423;
              v434 = v941;
              v435 = 6;
            }

            break;
          }

          sub_255C7429C(v432, v433, v434, v435);
          v418 = v890;
          v419 = v869;
          goto LABEL_423;
        }

        MEMORY[0x259C4BB60](7);
        MEMORY[0x259C4BB60](*(v880 + 16));
        v580 = *(v880 + 16);
        if (!v580)
        {
          goto LABEL_9;
        }

        v581 = v880 + 32;

        v582 = 0;
        v808 = v580;
        while (2)
        {
          v587 = v581 + 32 * v582;
          v589 = *v587;
          v588 = *(v587 + 8);
          v590 = *(v587 + 16);
          v591 = *(v587 + 24);
          if (v591 > 3)
          {
            if (v591 > 5)
            {
              if (v591 != 6)
              {
                if (v591 != 7)
                {
                  if (v590 | v588 | v589)
                  {
                    MEMORY[0x259C4BB60](2);
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](1);
                  }

                  goto LABEL_594;
                }

                MEMORY[0x259C4BB60](9);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v590 + 16));
                v592 = *(v590 + 16);
                if (!v592)
                {
                  sub_255C7429C(v589, v588, v590, 7u);
                  goto LABEL_594;
                }

                v826 = v589;
                v851 = v590;
                v859 = v582;
                v593 = 0;
                v594 = v590 + 32;
                v897 = *(v590 + 16);
                v875 = v590 + 32;
                while (2)
                {
                  v595 = v594 + 32 * v593;
                  v596 = *v595;
                  v597 = *(v595 + 8);
                  v598 = *(v595 + 16);
                  v599 = *(v595 + 24);
                  if (v599 <= 3)
                  {
                    if (v599 <= 1)
                    {
                      if (v599)
                      {
                        MEMORY[0x259C4BB60](3);

                        sub_255D07058();
                        sub_255C7429C(v596, v597, v598, 1u);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](0);

                        sub_255D07058();
                        sub_255C7429C(v596, v597, v598, 0);
                      }

                      goto LABEL_602;
                    }

                    if (v599 == 2)
                    {
                      MEMORY[0x259C4BB60](4);

                      sub_255D07058();
                      sub_255C7429C(v596, v597, v598, 2u);
                      goto LABEL_602;
                    }

                    v950 = v598;
                    MEMORY[0x259C4BB60](5);
                    MEMORY[0x259C4BB60](*(v596 + 16));
                    v622 = *(v596 + 16);
                    if (!v622)
                    {
LABEL_602:
                      if (++v593 == v592)
                      {
                        v583 = v826;
                        v584 = v588;
                        v585 = v851;
                        v586 = 7;
                        goto LABEL_593;
                      }

                      continue;
                    }

                    v623 = (v596 + 56);
                    do
                    {
                      v624 = *(v623 - 3);
                      v625 = *(v623 - 2);
                      v626 = *(v623 - 1);
                      v627 = *v623;
                      v623 += 32;
                      sub_255C74200(v624, v625, v626, v627);
                      sub_255D02110(a1, v624, v625, v626, v627);
                      sub_255C7429C(v624, v625, v626, v627);
                      --v622;
                    }

                    while (v622);
                    v606 = v596;
                    v607 = v597;
                    v608 = v950;
                    v609 = 3;
                  }

                  else if (v599 <= 5)
                  {
                    v948 = v598;
                    if (v599 == 4)
                    {
                      MEMORY[0x259C4BB60](6);
                      MEMORY[0x259C4BB60](*(v596 + 16));
                      v610 = *(v596 + 16);
                      if (!v610)
                      {
                        goto LABEL_602;
                      }

                      v611 = (v596 + 56);
                      do
                      {
                        v612 = *(v611 - 3);
                        v613 = *(v611 - 2);
                        v614 = *(v611 - 1);
                        v615 = *v611;
                        v611 += 32;
                        sub_255C74200(v612, v613, v614, v615);
                        sub_255D02110(a1, v612, v613, v614, v615);
                        sub_255C7429C(v612, v613, v614, v615);
                        --v610;
                      }

                      while (v610);
                      v606 = v596;
                      v607 = v597;
                      v608 = v948;
                      v609 = 4;
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](7);
                      MEMORY[0x259C4BB60](*(v596 + 16));
                      v628 = *(v596 + 16);
                      if (!v628)
                      {
                        goto LABEL_602;
                      }

                      v629 = (v596 + 56);
                      do
                      {
                        v630 = *(v629 - 3);
                        v631 = *(v629 - 2);
                        v632 = *(v629 - 1);
                        v633 = *v629;
                        v629 += 32;
                        sub_255C74200(v630, v631, v632, v633);
                        sub_255D02110(a1, v630, v631, v632, v633);
                        sub_255C7429C(v630, v631, v632, v633);
                        --v628;
                      }

                      while (v628);
                      v606 = v596;
                      v607 = v597;
                      v608 = v948;
                      v609 = 5;
                    }
                  }

                  else
                  {
                    if (v599 != 6)
                    {
                      if (v599 == 7)
                      {
                        MEMORY[0x259C4BB60](9);

                        sub_255D07058();
                        MEMORY[0x259C4BB60](*(v598 + 16));
                        v600 = *(v598 + 16);
                        if (v600)
                        {
                          v947 = v598;
                          v601 = (v598 + 56);
                          do
                          {
                            v602 = *(v601 - 3);
                            v603 = *(v601 - 2);
                            v604 = *(v601 - 1);
                            v605 = *v601;
                            v601 += 32;
                            sub_255C74200(v602, v603, v604, v605);
                            sub_255D02110(a1, v602, v603, v604, v605);
                            sub_255C7429C(v602, v603, v604, v605);
                            --v600;
                          }

                          while (v600);
                          v606 = v596;
                          v607 = v597;
                          v608 = v947;
                          v609 = 7;
                          break;
                        }

                        sub_255C7429C(v596, v597, v598, 7u);
                      }

                      else if (v598 | v597 | v596)
                      {
                        MEMORY[0x259C4BB60](2);
                      }

                      else
                      {
                        MEMORY[0x259C4BB60](1);
                      }

                      goto LABEL_602;
                    }

                    MEMORY[0x259C4BB60](8);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v598 + 16));
                    v616 = *(v598 + 16);
                    if (!v616)
                    {
                      sub_255C7429C(v596, v597, v598, 6u);
                      goto LABEL_602;
                    }

                    v949 = v598;
                    v617 = (v598 + 56);
                    do
                    {
                      v618 = *(v617 - 3);
                      v619 = *(v617 - 2);
                      v620 = *(v617 - 1);
                      v621 = *v617;
                      v617 += 32;
                      sub_255C74200(v618, v619, v620, v621);
                      sub_255D02110(a1, v618, v619, v620, v621);
                      sub_255C7429C(v618, v619, v620, v621);
                      --v616;
                    }

                    while (v616);
                    v606 = v596;
                    v607 = v597;
                    v608 = v949;
                    v609 = 6;
                  }

                  break;
                }

                sub_255C7429C(v606, v607, v608, v609);
                v592 = v897;
                v594 = v875;
                goto LABEL_602;
              }

              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v590 + 16));
              v676 = *(v590 + 16);
              if (!v676)
              {
                sub_255C7429C(v589, v588, v590, 6u);
                goto LABEL_594;
              }

              v828 = v589;
              v853 = v590;
              v859 = v582;
              v677 = 0;
              v678 = v590 + 32;
              v899 = *(v590 + 16);
              v877 = v590 + 32;
              while (2)
              {
                v679 = v678 + 32 * v677;
                v680 = *v679;
                v681 = *(v679 + 8);
                v682 = *(v679 + 16);
                v683 = *(v679 + 24);
                if (v683 <= 3)
                {
                  if (v683 <= 1)
                  {
                    if (v683)
                    {
                      MEMORY[0x259C4BB60](3);

                      sub_255D07058();
                      sub_255C7429C(v680, v681, v682, 1u);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](0);

                      sub_255D07058();
                      sub_255C7429C(v680, v681, v682, 0);
                    }

                    goto LABEL_688;
                  }

                  if (v683 == 2)
                  {
                    MEMORY[0x259C4BB60](4);

                    sub_255D07058();
                    sub_255C7429C(v680, v681, v682, 2u);
                    goto LABEL_688;
                  }

                  v958 = v682;
                  MEMORY[0x259C4BB60](5);
                  MEMORY[0x259C4BB60](*(v680 + 16));
                  v706 = *(v680 + 16);
                  if (!v706)
                  {
LABEL_688:
                    if (++v677 == v676)
                    {
                      v583 = v828;
                      v584 = v588;
                      v585 = v853;
                      v586 = 6;
                      goto LABEL_593;
                    }

                    continue;
                  }

                  v707 = (v680 + 56);
                  do
                  {
                    v708 = *(v707 - 3);
                    v709 = *(v707 - 2);
                    v710 = *(v707 - 1);
                    v711 = *v707;
                    v707 += 32;
                    sub_255C74200(v708, v709, v710, v711);
                    sub_255D02110(a1, v708, v709, v710, v711);
                    sub_255C7429C(v708, v709, v710, v711);
                    --v706;
                  }

                  while (v706);
                  v690 = v680;
                  v691 = v681;
                  v692 = v958;
                  v693 = 3;
                }

                else if (v683 <= 5)
                {
                  v956 = v682;
                  if (v683 == 4)
                  {
                    MEMORY[0x259C4BB60](6);
                    MEMORY[0x259C4BB60](*(v680 + 16));
                    v694 = *(v680 + 16);
                    if (!v694)
                    {
                      goto LABEL_688;
                    }

                    v695 = (v680 + 56);
                    do
                    {
                      v696 = *(v695 - 3);
                      v697 = *(v695 - 2);
                      v698 = *(v695 - 1);
                      v699 = *v695;
                      v695 += 32;
                      sub_255C74200(v696, v697, v698, v699);
                      sub_255D02110(a1, v696, v697, v698, v699);
                      sub_255C7429C(v696, v697, v698, v699);
                      --v694;
                    }

                    while (v694);
                    v690 = v680;
                    v691 = v681;
                    v692 = v956;
                    v693 = 4;
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](7);
                    MEMORY[0x259C4BB60](*(v680 + 16));
                    v712 = *(v680 + 16);
                    if (!v712)
                    {
                      goto LABEL_688;
                    }

                    v713 = (v680 + 56);
                    do
                    {
                      v714 = *(v713 - 3);
                      v715 = *(v713 - 2);
                      v716 = *(v713 - 1);
                      v717 = *v713;
                      v713 += 32;
                      sub_255C74200(v714, v715, v716, v717);
                      sub_255D02110(a1, v714, v715, v716, v717);
                      sub_255C7429C(v714, v715, v716, v717);
                      --v712;
                    }

                    while (v712);
                    v690 = v680;
                    v691 = v681;
                    v692 = v956;
                    v693 = 5;
                  }
                }

                else
                {
                  if (v683 != 6)
                  {
                    if (v683 == 7)
                    {
                      MEMORY[0x259C4BB60](9);

                      sub_255D07058();
                      MEMORY[0x259C4BB60](*(v682 + 16));
                      v684 = *(v682 + 16);
                      if (v684)
                      {
                        v955 = v682;
                        v685 = (v682 + 56);
                        do
                        {
                          v686 = *(v685 - 3);
                          v687 = *(v685 - 2);
                          v688 = *(v685 - 1);
                          v689 = *v685;
                          v685 += 32;
                          sub_255C74200(v686, v687, v688, v689);
                          sub_255D02110(a1, v686, v687, v688, v689);
                          sub_255C7429C(v686, v687, v688, v689);
                          --v684;
                        }

                        while (v684);
                        v690 = v680;
                        v691 = v681;
                        v692 = v955;
                        v693 = 7;
                        break;
                      }

                      sub_255C7429C(v680, v681, v682, 7u);
                    }

                    else if (v682 | v681 | v680)
                    {
                      MEMORY[0x259C4BB60](2);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](1);
                    }

                    goto LABEL_688;
                  }

                  MEMORY[0x259C4BB60](8);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v682 + 16));
                  v700 = *(v682 + 16);
                  if (!v700)
                  {
                    sub_255C7429C(v680, v681, v682, 6u);
                    goto LABEL_688;
                  }

                  v957 = v682;
                  v701 = (v682 + 56);
                  do
                  {
                    v702 = *(v701 - 3);
                    v703 = *(v701 - 2);
                    v704 = *(v701 - 1);
                    v705 = *v701;
                    v701 += 32;
                    sub_255C74200(v702, v703, v704, v705);
                    sub_255D02110(a1, v702, v703, v704, v705);
                    sub_255C7429C(v702, v703, v704, v705);
                    --v700;
                  }

                  while (v700);
                  v690 = v680;
                  v691 = v681;
                  v692 = v957;
                  v693 = 6;
                }

                break;
              }

              sub_255C7429C(v690, v691, v692, v693);
              v676 = v899;
              v678 = v877;
              goto LABEL_688;
            }

            if (v591 == 4)
            {
              MEMORY[0x259C4BB60](6);
              MEMORY[0x259C4BB60](*(v589 + 16));
              v634 = *(v589 + 16);
              if (!v634)
              {
                goto LABEL_594;
              }

              v827 = v589;
              v852 = v590;
              v859 = v582;
              v635 = v589 + 32;

              v636 = 0;
              v898 = v634;
              v876 = v635;
              while (2)
              {
                v637 = v635 + 32 * v636;
                v638 = *v637;
                v639 = *(v637 + 8);
                v640 = *(v637 + 16);
                v641 = *(v637 + 24);
                if (v641 <= 3)
                {
                  if (v641 <= 1)
                  {
                    if (v641)
                    {
                      MEMORY[0x259C4BB60](3);

                      sub_255D07058();
                      sub_255C7429C(v638, v639, v640, 1u);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](0);

                      sub_255D07058();
                      sub_255C7429C(v638, v639, v640, 0);
                    }

                    goto LABEL_648;
                  }

                  if (v641 == 2)
                  {
                    MEMORY[0x259C4BB60](4);

                    sub_255D07058();
                    sub_255C7429C(v638, v639, v640, 2u);
                    goto LABEL_648;
                  }

                  v954 = v640;
                  MEMORY[0x259C4BB60](5);
                  MEMORY[0x259C4BB60](*(v638 + 16));
                  v664 = *(v638 + 16);
                  if (!v664)
                  {
LABEL_648:
                    if (++v636 == v634)
                    {
                      v583 = v827;
                      v584 = v588;
                      v585 = v852;
                      v586 = 4;
                      goto LABEL_593;
                    }

                    continue;
                  }

                  v665 = (v638 + 56);
                  do
                  {
                    v666 = *(v665 - 3);
                    v667 = *(v665 - 2);
                    v668 = *(v665 - 1);
                    v669 = *v665;
                    v665 += 32;
                    sub_255C74200(v666, v667, v668, v669);
                    sub_255D02110(a1, v666, v667, v668, v669);
                    sub_255C7429C(v666, v667, v668, v669);
                    --v664;
                  }

                  while (v664);
                  v648 = v638;
                  v649 = v639;
                  v650 = v954;
                  v651 = 3;
                }

                else if (v641 <= 5)
                {
                  v952 = v640;
                  if (v641 == 4)
                  {
                    MEMORY[0x259C4BB60](6);
                    MEMORY[0x259C4BB60](*(v638 + 16));
                    v652 = *(v638 + 16);
                    if (!v652)
                    {
                      goto LABEL_648;
                    }

                    v653 = (v638 + 56);
                    do
                    {
                      v654 = *(v653 - 3);
                      v655 = *(v653 - 2);
                      v656 = *(v653 - 1);
                      v657 = *v653;
                      v653 += 32;
                      sub_255C74200(v654, v655, v656, v657);
                      sub_255D02110(a1, v654, v655, v656, v657);
                      sub_255C7429C(v654, v655, v656, v657);
                      --v652;
                    }

                    while (v652);
                    v648 = v638;
                    v649 = v639;
                    v650 = v952;
                    v651 = 4;
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](7);
                    MEMORY[0x259C4BB60](*(v638 + 16));
                    v670 = *(v638 + 16);
                    if (!v670)
                    {
                      goto LABEL_648;
                    }

                    v671 = (v638 + 56);
                    do
                    {
                      v672 = *(v671 - 3);
                      v673 = *(v671 - 2);
                      v674 = *(v671 - 1);
                      v675 = *v671;
                      v671 += 32;
                      sub_255C74200(v672, v673, v674, v675);
                      sub_255D02110(a1, v672, v673, v674, v675);
                      sub_255C7429C(v672, v673, v674, v675);
                      --v670;
                    }

                    while (v670);
                    v648 = v638;
                    v649 = v639;
                    v650 = v952;
                    v651 = 5;
                  }
                }

                else
                {
                  if (v641 != 6)
                  {
                    if (v641 == 7)
                    {
                      MEMORY[0x259C4BB60](9);

                      sub_255D07058();
                      MEMORY[0x259C4BB60](*(v640 + 16));
                      v642 = *(v640 + 16);
                      if (v642)
                      {
                        v951 = v640;
                        v643 = (v640 + 56);
                        do
                        {
                          v644 = *(v643 - 3);
                          v645 = *(v643 - 2);
                          v646 = *(v643 - 1);
                          v647 = *v643;
                          v643 += 32;
                          sub_255C74200(v644, v645, v646, v647);
                          sub_255D02110(a1, v644, v645, v646, v647);
                          sub_255C7429C(v644, v645, v646, v647);
                          --v642;
                        }

                        while (v642);
                        v648 = v638;
                        v649 = v639;
                        v650 = v951;
                        v651 = 7;
                        break;
                      }

                      sub_255C7429C(v638, v639, v640, 7u);
                    }

                    else if (v640 | v639 | v638)
                    {
                      MEMORY[0x259C4BB60](2);
                    }

                    else
                    {
                      MEMORY[0x259C4BB60](1);
                    }

                    goto LABEL_648;
                  }

                  MEMORY[0x259C4BB60](8);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v640 + 16));
                  v658 = *(v640 + 16);
                  if (!v658)
                  {
                    sub_255C7429C(v638, v639, v640, 6u);
                    goto LABEL_648;
                  }

                  v953 = v640;
                  v659 = (v640 + 56);
                  do
                  {
                    v660 = *(v659 - 3);
                    v661 = *(v659 - 2);
                    v662 = *(v659 - 1);
                    v663 = *v659;
                    v659 += 32;
                    sub_255C74200(v660, v661, v662, v663);
                    sub_255D02110(a1, v660, v661, v662, v663);
                    sub_255C7429C(v660, v661, v662, v663);
                    --v658;
                  }

                  while (v658);
                  v648 = v638;
                  v649 = v639;
                  v650 = v953;
                  v651 = 6;
                }

                break;
              }

              sub_255C7429C(v648, v649, v650, v651);
              v634 = v898;
              v635 = v876;
              goto LABEL_648;
            }

            MEMORY[0x259C4BB60](7);
            MEMORY[0x259C4BB60](*(v589 + 16));
            v760 = *(v589 + 16);
            if (!v760)
            {
              goto LABEL_594;
            }

            v830 = v589;
            v855 = v590;
            v859 = v582;
            v761 = v589 + 32;

            v762 = 0;
            v901 = v760;
            v879 = v761;
            while (2)
            {
              v763 = v761 + 32 * v762;
              v764 = *v763;
              v765 = *(v763 + 8);
              v766 = *(v763 + 16);
              v767 = *(v763 + 24);
              if (v767 <= 3)
              {
                if (v767 <= 1)
                {
                  if (v767)
                  {
                    MEMORY[0x259C4BB60](3);

                    sub_255D07058();
                    sub_255C7429C(v764, v765, v766, 1u);
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](0);

                    sub_255D07058();
                    sub_255C7429C(v764, v765, v766, 0);
                  }

                  goto LABEL_771;
                }

                if (v767 == 2)
                {
                  MEMORY[0x259C4BB60](4);

                  sub_255D07058();
                  sub_255C7429C(v764, v765, v766, 2u);
                  goto LABEL_771;
                }

                v966 = v766;
                MEMORY[0x259C4BB60](5);
                MEMORY[0x259C4BB60](*(v764 + 16));
                v790 = *(v764 + 16);
                if (!v790)
                {
LABEL_771:
                  if (++v762 == v760)
                  {
                    v583 = v830;
                    v584 = v588;
                    v585 = v855;
                    v586 = 5;
LABEL_593:
                    sub_255C7429C(v583, v584, v585, v586);
                    v581 = v880 + 32;
                    v580 = v808;
                    v582 = v859;
                    goto LABEL_594;
                  }

                  continue;
                }

                v791 = (v764 + 56);
                do
                {
                  v792 = *(v791 - 3);
                  v793 = *(v791 - 2);
                  v794 = *(v791 - 1);
                  v795 = *v791;
                  v791 += 32;
                  sub_255C74200(v792, v793, v794, v795);
                  sub_255D02110(a1, v792, v793, v794, v795);
                  sub_255C7429C(v792, v793, v794, v795);
                  --v790;
                }

                while (v790);
                v774 = v764;
                v775 = v765;
                v776 = v966;
                v777 = 3;
              }

              else if (v767 <= 5)
              {
                v964 = v766;
                if (v767 == 4)
                {
                  MEMORY[0x259C4BB60](6);
                  MEMORY[0x259C4BB60](*(v764 + 16));
                  v778 = *(v764 + 16);
                  if (!v778)
                  {
                    goto LABEL_771;
                  }

                  v779 = (v764 + 56);
                  do
                  {
                    v780 = *(v779 - 3);
                    v781 = *(v779 - 2);
                    v782 = *(v779 - 1);
                    v783 = *v779;
                    v779 += 32;
                    sub_255C74200(v780, v781, v782, v783);
                    sub_255D02110(a1, v780, v781, v782, v783);
                    sub_255C7429C(v780, v781, v782, v783);
                    --v778;
                  }

                  while (v778);
                  v774 = v764;
                  v775 = v765;
                  v776 = v964;
                  v777 = 4;
                }

                else
                {
                  MEMORY[0x259C4BB60](7);
                  MEMORY[0x259C4BB60](*(v764 + 16));
                  v796 = *(v764 + 16);
                  if (!v796)
                  {
                    goto LABEL_771;
                  }

                  v797 = (v764 + 56);
                  do
                  {
                    v798 = *(v797 - 3);
                    v799 = *(v797 - 2);
                    v800 = *(v797 - 1);
                    v801 = *v797;
                    v797 += 32;
                    sub_255C74200(v798, v799, v800, v801);
                    sub_255D02110(a1, v798, v799, v800, v801);
                    sub_255C7429C(v798, v799, v800, v801);
                    --v796;
                  }

                  while (v796);
                  v774 = v764;
                  v775 = v765;
                  v776 = v964;
                  v777 = 5;
                }
              }

              else
              {
                if (v767 != 6)
                {
                  if (v767 == 7)
                  {
                    MEMORY[0x259C4BB60](9);

                    sub_255D07058();
                    MEMORY[0x259C4BB60](*(v766 + 16));
                    v768 = *(v766 + 16);
                    if (v768)
                    {
                      v963 = v766;
                      v769 = (v766 + 56);
                      do
                      {
                        v770 = *(v769 - 3);
                        v771 = *(v769 - 2);
                        v772 = *(v769 - 1);
                        v773 = *v769;
                        v769 += 32;
                        sub_255C74200(v770, v771, v772, v773);
                        sub_255D02110(a1, v770, v771, v772, v773);
                        sub_255C7429C(v770, v771, v772, v773);
                        --v768;
                      }

                      while (v768);
                      v774 = v764;
                      v775 = v765;
                      v776 = v963;
                      v777 = 7;
                      break;
                    }

                    sub_255C7429C(v764, v765, v766, 7u);
                  }

                  else if (v766 | v765 | v764)
                  {
                    MEMORY[0x259C4BB60](2);
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](1);
                  }

                  goto LABEL_771;
                }

                MEMORY[0x259C4BB60](8);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v766 + 16));
                v784 = *(v766 + 16);
                if (!v784)
                {
                  sub_255C7429C(v764, v765, v766, 6u);
                  goto LABEL_771;
                }

                v965 = v766;
                v785 = (v766 + 56);
                do
                {
                  v786 = *(v785 - 3);
                  v787 = *(v785 - 2);
                  v788 = *(v785 - 1);
                  v789 = *v785;
                  v785 += 32;
                  sub_255C74200(v786, v787, v788, v789);
                  sub_255D02110(a1, v786, v787, v788, v789);
                  sub_255C7429C(v786, v787, v788, v789);
                  --v784;
                }

                while (v784);
                v774 = v764;
                v775 = v765;
                v776 = v965;
                v777 = 6;
              }

              break;
            }

            sub_255C7429C(v774, v775, v776, v777);
            v760 = v901;
            v761 = v879;
            goto LABEL_771;
          }

          if (v591 <= 1)
          {
            if (v591)
            {
              MEMORY[0x259C4BB60](3);

              sub_255D07058();
              sub_255C7429C(v589, v588, v590, 1u);
            }

            else
            {
              MEMORY[0x259C4BB60](0);

              sub_255D07058();
              sub_255C7429C(v589, v588, v590, 0);
            }

            goto LABEL_594;
          }

          if (v591 == 2)
          {
            MEMORY[0x259C4BB60](4);

            sub_255D07058();
            sub_255C7429C(v589, v588, v590, 2u);
            goto LABEL_594;
          }

          MEMORY[0x259C4BB60](5);
          MEMORY[0x259C4BB60](*(v589 + 16));
          v718 = *(v589 + 16);
          if (!v718)
          {
LABEL_594:
            if (++v582 == v580)
            {
              v8 = v880;
              v9 = v812;
              v10 = v838;
              v11 = 5;
              goto LABEL_8;
            }

            continue;
          }

          break;
        }

        v829 = v589;
        v854 = v590;
        v859 = v582;
        v719 = v589 + 32;

        v720 = 0;
        v900 = v718;
        v878 = v719;
        while (2)
        {
          v721 = v719 + 32 * v720;
          v722 = *v721;
          v723 = *(v721 + 8);
          v724 = *(v721 + 16);
          v725 = *(v721 + 24);
          if (v725 <= 3)
          {
            if (v725 <= 1)
            {
              if (v725)
              {
                MEMORY[0x259C4BB60](3);

                sub_255D07058();
                sub_255C7429C(v722, v723, v724, 1u);
              }

              else
              {
                MEMORY[0x259C4BB60](0);

                sub_255D07058();
                sub_255C7429C(v722, v723, v724, 0);
              }

              goto LABEL_729;
            }

            if (v725 == 2)
            {
              MEMORY[0x259C4BB60](4);

              sub_255D07058();
              sub_255C7429C(v722, v723, v724, 2u);
              goto LABEL_729;
            }

            v962 = v724;
            MEMORY[0x259C4BB60](5);
            MEMORY[0x259C4BB60](*(v722 + 16));
            v748 = *(v722 + 16);
            if (!v748)
            {
LABEL_729:
              if (++v720 == v718)
              {
                v583 = v829;
                v584 = v588;
                v585 = v854;
                v586 = 3;
                goto LABEL_593;
              }

              continue;
            }

            v749 = (v722 + 56);
            do
            {
              v750 = *(v749 - 3);
              v751 = *(v749 - 2);
              v752 = *(v749 - 1);
              v753 = *v749;
              v749 += 32;
              sub_255C74200(v750, v751, v752, v753);
              sub_255D02110(a1, v750, v751, v752, v753);
              sub_255C7429C(v750, v751, v752, v753);
              --v748;
            }

            while (v748);
            v732 = v722;
            v733 = v723;
            v734 = v962;
            v735 = 3;
          }

          else if (v725 <= 5)
          {
            v960 = v724;
            if (v725 == 4)
            {
              MEMORY[0x259C4BB60](6);
              MEMORY[0x259C4BB60](*(v722 + 16));
              v736 = *(v722 + 16);
              if (!v736)
              {
                goto LABEL_729;
              }

              v737 = (v722 + 56);
              do
              {
                v738 = *(v737 - 3);
                v739 = *(v737 - 2);
                v740 = *(v737 - 1);
                v741 = *v737;
                v737 += 32;
                sub_255C74200(v738, v739, v740, v741);
                sub_255D02110(a1, v738, v739, v740, v741);
                sub_255C7429C(v738, v739, v740, v741);
                --v736;
              }

              while (v736);
              v732 = v722;
              v733 = v723;
              v734 = v960;
              v735 = 4;
            }

            else
            {
              MEMORY[0x259C4BB60](7);
              MEMORY[0x259C4BB60](*(v722 + 16));
              v754 = *(v722 + 16);
              if (!v754)
              {
                goto LABEL_729;
              }

              v755 = (v722 + 56);
              do
              {
                v756 = *(v755 - 3);
                v757 = *(v755 - 2);
                v758 = *(v755 - 1);
                v759 = *v755;
                v755 += 32;
                sub_255C74200(v756, v757, v758, v759);
                sub_255D02110(a1, v756, v757, v758, v759);
                sub_255C7429C(v756, v757, v758, v759);
                --v754;
              }

              while (v754);
              v732 = v722;
              v733 = v723;
              v734 = v960;
              v735 = 5;
            }
          }

          else
          {
            if (v725 != 6)
            {
              if (v725 == 7)
              {
                MEMORY[0x259C4BB60](9);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v724 + 16));
                v726 = *(v724 + 16);
                if (v726)
                {
                  v959 = v724;
                  v727 = (v724 + 56);
                  do
                  {
                    v728 = *(v727 - 3);
                    v729 = *(v727 - 2);
                    v730 = *(v727 - 1);
                    v731 = *v727;
                    v727 += 32;
                    sub_255C74200(v728, v729, v730, v731);
                    sub_255D02110(a1, v728, v729, v730, v731);
                    sub_255C7429C(v728, v729, v730, v731);
                    --v726;
                  }

                  while (v726);
                  v732 = v722;
                  v733 = v723;
                  v734 = v959;
                  v735 = 7;
                  break;
                }

                sub_255C7429C(v722, v723, v724, 7u);
              }

              else if (v724 | v723 | v722)
              {
                MEMORY[0x259C4BB60](2);
              }

              else
              {
                MEMORY[0x259C4BB60](1);
              }

              goto LABEL_729;
            }

            MEMORY[0x259C4BB60](8);

            sub_255D07058();
            MEMORY[0x259C4BB60](*(v724 + 16));
            v742 = *(v724 + 16);
            if (!v742)
            {
              sub_255C7429C(v722, v723, v724, 6u);
              goto LABEL_729;
            }

            v961 = v724;
            v743 = (v724 + 56);
            do
            {
              v744 = *(v743 - 3);
              v745 = *(v743 - 2);
              v746 = *(v743 - 1);
              v747 = *v743;
              v743 += 32;
              sub_255C74200(v744, v745, v746, v747);
              sub_255D02110(a1, v744, v745, v746, v747);
              sub_255C7429C(v744, v745, v746, v747);
              --v742;
            }

            while (v742);
            v732 = v722;
            v733 = v723;
            v734 = v961;
            v735 = 6;
          }

          break;
        }

        sub_255C7429C(v732, v733, v734, v735);
        v718 = v900;
        v719 = v878;
        goto LABEL_729;
      }

      if (v15 == 6)
      {
        v839 = v14;
        MEMORY[0x259C4BB60](8);

        sub_255D07058();
        MEMORY[0x259C4BB60](*(v14 + 16));
        v10 = v14;
        v502 = *(v14 + 16);
        if (v502)
        {
          v813 = v13;
          v503 = 0;
          v504 = v14 + 32;
          v807 = *(v14 + 16);
          while (1)
          {
            v509 = v504 + 32 * v503;
            v511 = *v509;
            v510 = *(v509 + 8);
            v512 = *(v509 + 16);
            v513 = *(v509 + 24);
            if (v513 <= 3)
            {
              break;
            }

            if (v513 <= 5)
            {
              v873 = v510;
              if (v513 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v511 + 16));
                v523 = *(v511 + 16);
                if (!v523)
                {
                  goto LABEL_513;
                }

                v833 = v512;

                v894 = v511;
                v524 = (v511 + 56);
                do
                {
                  v525 = *(v524 - 3);
                  v526 = *(v524 - 2);
                  v527 = *(v524 - 1);
                  v528 = *v524;
                  v524 += 32;
                  sub_255C74200(v525, v526, v527, v528);
                  sub_255D02110(a1, v525, v526, v527, v528);
                  sub_255C7429C(v525, v526, v527, v528);
                  --v523;
                }

                while (v523);
                v505 = v894;
                v506 = v873;
                v507 = v833;
                v508 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v511 + 16));
                v574 = *(v511 + 16);
                if (!v574)
                {
                  goto LABEL_513;
                }

                v835 = v512;

                v896 = v511;
                v575 = (v511 + 56);
                do
                {
                  v576 = *(v575 - 3);
                  v577 = *(v575 - 2);
                  v578 = *(v575 - 1);
                  v579 = *v575;
                  v575 += 32;
                  sub_255C74200(v576, v577, v578, v579);
                  sub_255D02110(a1, v576, v577, v578, v579);
                  sub_255C7429C(v576, v577, v578, v579);
                  --v574;
                }

                while (v574);
                v505 = v896;
                v506 = v873;
                v507 = v835;
                v508 = 5;
              }

LABEL_512:
              sub_255C7429C(v505, v506, v507, v508);
              goto LABEL_513;
            }

            if (v513 == 6)
            {
              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v512 + 16));
              v568 = *(v512 + 16);
              if (v568)
              {
                v895 = v511;
                v874 = v510;
                v834 = v512;
                v569 = (v512 + 56);
                do
                {
                  v570 = *(v569 - 3);
                  v571 = *(v569 - 2);
                  v572 = *(v569 - 1);
                  v573 = *v569;
                  v569 += 32;
                  sub_255C74200(v570, v571, v572, v573);
                  sub_255D02110(a1, v570, v571, v572, v573);
                  sub_255C7429C(v570, v571, v572, v573);
                  --v568;
                }

                while (v568);
                v505 = v895;
                v506 = v874;
                v507 = v834;
                v508 = 6;
              }

              else
              {
                v505 = v511;
                v506 = v510;
                v507 = v512;
                v508 = 6;
              }

              goto LABEL_512;
            }

            if (v513 == 7)
            {
              MEMORY[0x259C4BB60](9);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v512 + 16));
              v514 = *(v512 + 16);
              if (v514)
              {
                v892 = v511;
                v871 = v510;
                v831 = v512;
                v515 = (v512 + 56);
                do
                {
                  v516 = *(v515 - 3);
                  v517 = *(v515 - 2);
                  v518 = *(v515 - 1);
                  v519 = *v515;
                  v515 += 32;
                  sub_255C74200(v516, v517, v518, v519);
                  sub_255D02110(a1, v516, v517, v518, v519);
                  sub_255C7429C(v516, v517, v518, v519);
                  --v514;
                }

                while (v514);
                v505 = v892;
                v506 = v871;
                v507 = v831;
              }

              else
              {
                v505 = v511;
                v506 = v510;
                v507 = v512;
              }

              v508 = 7;
              goto LABEL_512;
            }

            if (v512 | v510 | v511)
            {
              MEMORY[0x259C4BB60](2);
            }

            else
            {
              MEMORY[0x259C4BB60](1);
            }

LABEL_513:
            if (++v503 == v502)
            {
              v8 = v880;
              v9 = v813;
              v10 = v839;
              v11 = 6;
              goto LABEL_8;
            }
          }

          if (v513 <= 1)
          {
            if (v513)
            {
              MEMORY[0x259C4BB60](3);

              sub_255D07058();
              v505 = v511;
              v506 = v510;
              v507 = v512;
              v508 = 1;
            }

            else
            {
              MEMORY[0x259C4BB60](0);

              sub_255D07058();
              v505 = v511;
              v506 = v510;
              v507 = v512;
              v508 = 0;
            }

            goto LABEL_512;
          }

          v872 = v510;
          if (v513 == 2)
          {
            MEMORY[0x259C4BB60](4);

            sub_255D07058();
            v505 = v511;
            v506 = v510;
            v507 = v512;
            v508 = 2;
            goto LABEL_512;
          }

          MEMORY[0x259C4BB60](5);
          MEMORY[0x259C4BB60](*(v511 + 16));
          v520 = *(v511 + 16);
          if (!v520)
          {
            goto LABEL_513;
          }

          v825 = v503;
          v832 = v512;
          v521 = v511 + 32;

          v522 = 0;
          v850 = v511 + 32;
          v858 = v520;
          v893 = v511;
          while (2)
          {
            v533 = v521 + 32 * v522;
            v534 = *v533;
            v535 = *(v533 + 8);
            v536 = *(v533 + 16);
            v537 = *(v533 + 24);
            if (v537 <= 3)
            {
              if (v537 <= 1)
              {
                if (v537)
                {
                  MEMORY[0x259C4BB60](3);

                  sub_255D07058();
                  sub_255C7429C(v534, v535, v536, 1u);
                }

                else
                {
                  MEMORY[0x259C4BB60](0);

                  sub_255D07058();
                  sub_255C7429C(v534, v535, v536, 0);
                }

                goto LABEL_534;
              }

              if (v537 == 2)
              {
                MEMORY[0x259C4BB60](4);

                sub_255D07058();
                sub_255C7429C(v534, v535, v536, 2u);
                goto LABEL_534;
              }

              MEMORY[0x259C4BB60](5);
              MEMORY[0x259C4BB60](*(v534 + 16));
              v556 = *(v534 + 16);
              if (!v556)
              {
LABEL_534:
                if (++v522 == v520)
                {
                  sub_255C7429C(v511, v872, v832, 3u);
                  v504 = v839 + 32;
                  v502 = v807;
                  v503 = v825;
                  goto LABEL_513;
                }

                continue;
              }

              v557 = (v534 + 56);
              do
              {
                v558 = *(v557 - 3);
                v559 = *(v557 - 2);
                v560 = *(v557 - 1);
                v561 = *v557;
                v557 += 32;
                sub_255C74200(v558, v559, v560, v561);
                sub_255D02110(a1, v558, v559, v560, v561);
                sub_255C7429C(v558, v559, v560, v561);
                --v556;
              }

              while (v556);
              v529 = v534;
              v530 = v535;
              v531 = v536;
              v532 = 3;
            }

            else if (v537 <= 5)
            {
              if (v537 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v534 + 16));
                v544 = *(v534 + 16);
                if (!v544)
                {
                  goto LABEL_534;
                }

                v545 = (v534 + 56);
                do
                {
                  v546 = *(v545 - 3);
                  v547 = *(v545 - 2);
                  v548 = *(v545 - 1);
                  v549 = *v545;
                  v545 += 32;
                  sub_255C74200(v546, v547, v548, v549);
                  sub_255D02110(a1, v546, v547, v548, v549);
                  sub_255C7429C(v546, v547, v548, v549);
                  --v544;
                }

                while (v544);
                v529 = v534;
                v530 = v535;
                v531 = v536;
                v532 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v534 + 16));
                v562 = *(v534 + 16);
                if (!v562)
                {
                  goto LABEL_534;
                }

                v563 = (v534 + 56);
                do
                {
                  v564 = *(v563 - 3);
                  v565 = *(v563 - 2);
                  v566 = *(v563 - 1);
                  v567 = *v563;
                  v563 += 32;
                  sub_255C74200(v564, v565, v566, v567);
                  sub_255D02110(a1, v564, v565, v566, v567);
                  sub_255C7429C(v564, v565, v566, v567);
                  --v562;
                }

                while (v562);
                v529 = v534;
                v530 = v535;
                v531 = v536;
                v532 = 5;
              }
            }

            else
            {
              if (v537 != 6)
              {
                if (v537 == 7)
                {
                  MEMORY[0x259C4BB60](9);

                  sub_255D07058();
                  MEMORY[0x259C4BB60](*(v536 + 16));
                  v538 = *(v536 + 16);
                  if (v538)
                  {
                    v539 = (v536 + 56);
                    do
                    {
                      v540 = *(v539 - 3);
                      v541 = *(v539 - 2);
                      v542 = *(v539 - 1);
                      v543 = *v539;
                      v539 += 32;
                      sub_255C74200(v540, v541, v542, v543);
                      sub_255D02110(a1, v540, v541, v542, v543);
                      sub_255C7429C(v540, v541, v542, v543);
                      --v538;
                    }

                    while (v538);
                    v529 = v534;
                    v530 = v535;
                    v531 = v536;
                    v532 = 7;
                    break;
                  }

                  sub_255C7429C(v534, v535, v536, 7u);
                }

                else if (v536 | v535 | v534)
                {
                  MEMORY[0x259C4BB60](2);
                }

                else
                {
                  MEMORY[0x259C4BB60](1);
                }

                goto LABEL_534;
              }

              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v536 + 16));
              v550 = *(v536 + 16);
              if (!v550)
              {
                sub_255C7429C(v534, v535, v536, 6u);
                goto LABEL_534;
              }

              v551 = (v536 + 56);
              do
              {
                v552 = *(v551 - 3);
                v553 = *(v551 - 2);
                v554 = *(v551 - 1);
                v555 = *v551;
                v551 += 32;
                sub_255C74200(v552, v553, v554, v555);
                sub_255D02110(a1, v552, v553, v554, v555);
                sub_255C7429C(v552, v553, v554, v555);
                --v550;
              }

              while (v550);
              v529 = v534;
              v530 = v535;
              v531 = v536;
              v532 = 6;
            }

            break;
          }

          sub_255C7429C(v529, v530, v531, v532);
          v511 = v893;
          v521 = v850;
          v520 = v858;
          goto LABEL_534;
        }

        v8 = v880;
        v9 = v13;
        v11 = 6;
LABEL_8:
        sub_255C7429C(v8, v9, v10, v11);
        goto LABEL_9;
      }

      if (v15 == 7)
      {
        v836 = v14;
        MEMORY[0x259C4BB60](9);

        sub_255D07058();
        MEMORY[0x259C4BB60](*(v14 + 16));
        v10 = v14;
        v16 = *(v14 + 16);
        if (v16)
        {
          v810 = v13;
          v17 = 0;
          v18 = v14 + 32;
          v881 = *(v14 + 16);
          while (1)
          {
            v19 = v18 + 32 * v17;
            v20 = *v19;
            v21 = *(v19 + 8);
            v22 = *(v19 + 16);
            v23 = *(v19 + 24);
            if (v23 <= 3)
            {
              if (v23 <= 1)
              {
                if (v23)
                {
                  MEMORY[0x259C4BB60](3);

                  sub_255D07058();
                  sub_255C7429C(v20, v21, v22, 1u);
                }

                else
                {
                  MEMORY[0x259C4BB60](0);

                  sub_255D07058();
                  sub_255C7429C(v20, v21, v22, 0);
                }

                goto LABEL_17;
              }

              if (v23 == 2)
              {
                MEMORY[0x259C4BB60](4);

                sub_255D07058();
                sub_255C7429C(v20, v21, v22, 2u);
                goto LABEL_17;
              }

              MEMORY[0x259C4BB60](5);
              MEMORY[0x259C4BB60](*(v20 + 16));
              v46 = *(v20 + 16);
              if (!v46)
              {
                goto LABEL_17;
              }

              v905 = v22;

              v47 = (v20 + 56);
              do
              {
                v48 = *(v47 - 3);
                v49 = *(v47 - 2);
                v50 = *(v47 - 1);
                v51 = *v47;
                v47 += 32;
                sub_255C74200(v48, v49, v50, v51);
                sub_255D02110(a1, v48, v49, v50, v51);
                sub_255C7429C(v48, v49, v50, v51);
                --v46;
              }

              while (v46);
              v30 = v20;
              v31 = v21;
              v32 = v905;
              v33 = 3;
            }

            else if (v23 <= 5)
            {
              if (v23 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v20 + 16));
                v34 = *(v20 + 16);
                if (!v34)
                {
                  goto LABEL_17;
                }

                v903 = v22;

                v35 = (v20 + 56);
                do
                {
                  v36 = *(v35 - 3);
                  v37 = *(v35 - 2);
                  v38 = *(v35 - 1);
                  v39 = *v35;
                  v35 += 32;
                  sub_255C74200(v36, v37, v38, v39);
                  sub_255D02110(a1, v36, v37, v38, v39);
                  sub_255C7429C(v36, v37, v38, v39);
                  --v34;
                }

                while (v34);
                v30 = v20;
                v31 = v21;
                v32 = v903;
                v33 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v20 + 16));
                v52 = *(v20 + 16);
                if (!v52)
                {
                  goto LABEL_17;
                }

                v906 = v22;

                v53 = (v20 + 56);
                do
                {
                  v54 = *(v53 - 3);
                  v55 = *(v53 - 2);
                  v56 = *(v53 - 1);
                  v57 = *v53;
                  v53 += 32;
                  sub_255C74200(v54, v55, v56, v57);
                  sub_255D02110(a1, v54, v55, v56, v57);
                  sub_255C7429C(v54, v55, v56, v57);
                  --v52;
                }

                while (v52);
                v30 = v20;
                v31 = v21;
                v32 = v906;
                v33 = 5;
              }
            }

            else if (v23 == 6)
            {
              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v22 + 16));
              v40 = *(v22 + 16);
              if (!v40)
              {
                sub_255C7429C(v20, v21, v22, 6u);
                goto LABEL_17;
              }

              v904 = v22;
              v41 = (v22 + 56);
              do
              {
                v42 = *(v41 - 3);
                v43 = *(v41 - 2);
                v44 = *(v41 - 1);
                v45 = *v41;
                v41 += 32;
                sub_255C74200(v42, v43, v44, v45);
                sub_255D02110(a1, v42, v43, v44, v45);
                sub_255C7429C(v42, v43, v44, v45);
                --v40;
              }

              while (v40);
              v30 = v20;
              v31 = v21;
              v32 = v904;
              v33 = 6;
            }

            else
            {
              if (v23 != 7)
              {
                if (v22 | v21 | v20)
                {
                  MEMORY[0x259C4BB60](2);
                }

                else
                {
                  MEMORY[0x259C4BB60](1);
                }

                goto LABEL_17;
              }

              MEMORY[0x259C4BB60](9);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v22 + 16));
              v24 = *(v22 + 16);
              if (!v24)
              {
                sub_255C7429C(v20, v21, v22, 7u);
                goto LABEL_17;
              }

              v902 = v22;
              v25 = (v22 + 56);
              do
              {
                v26 = *(v25 - 3);
                v27 = *(v25 - 2);
                v28 = *(v25 - 1);
                v29 = *v25;
                v25 += 32;
                sub_255C74200(v26, v27, v28, v29);
                sub_255D02110(a1, v26, v27, v28, v29);
                sub_255C7429C(v26, v27, v28, v29);
                --v24;
              }

              while (v24);
              v30 = v20;
              v31 = v21;
              v32 = v902;
              v33 = 7;
            }

            sub_255C7429C(v30, v31, v32, v33);
            v16 = v881;
            v18 = v836 + 32;
LABEL_17:
            if (++v17 == v16)
            {
              v8 = v880;
              v9 = v810;
              v10 = v836;
              goto LABEL_822;
            }
          }
        }

        v8 = v880;
        v9 = v13;
LABEL_822:
        v11 = 7;
        goto LABEL_8;
      }

      if (v14 | v13 | v880)
      {
        MEMORY[0x259C4BB60](2);
      }

      else
      {
        MEMORY[0x259C4BB60](1);
      }

LABEL_9:
      v7 = v860 + 1;
      if (v860 + 1 == v814)
      {

LABEL_4:
        v5 = v804 + 1;
        if (v804 + 1 == v803)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    if (v15 <= 1)
    {
      if (v15)
      {
        MEMORY[0x259C4BB60](3);

        sub_255D07058();
        v8 = v880;
        v9 = v13;
        v10 = v14;
        v11 = 1;
      }

      else
      {
        MEMORY[0x259C4BB60](0);

        sub_255D07058();
        v8 = v880;
        v9 = v13;
        v10 = v14;
        v11 = 0;
      }

      goto LABEL_8;
    }

    v811 = v13;
    v837 = v14;
    if (v15 == 2)
    {
      MEMORY[0x259C4BB60](4);

      sub_255D07058();
      v8 = v880;
      v9 = v13;
      v10 = v14;
      v11 = 2;
      goto LABEL_8;
    }

    MEMORY[0x259C4BB60](5);
    MEMORY[0x259C4BB60](*(v880 + 16));
    v58 = *(v880 + 16);
    if (!v58)
    {
      goto LABEL_9;
    }

    v59 = v880 + 32;

    v60 = 0;
    v805 = v58;
    while (1)
    {
      v68 = v59 + 32 * v60;
      v70 = *v68;
      v69 = *(v68 + 8);
      v71 = *(v68 + 16);
      v72 = *(v68 + 24);
      if (v72 > 3)
      {
        if (v72 > 5)
        {
          if (v72 != 6)
          {
            if (v72 != 7)
            {
              if (v71 | v69 | v70)
              {
                MEMORY[0x259C4BB60](2);
              }

              else
              {
                MEMORY[0x259C4BB60](1);
              }

              goto LABEL_65;
            }

            MEMORY[0x259C4BB60](9);

            sub_255D07058();
            MEMORY[0x259C4BB60](*(v71 + 16));
            v73 = *(v71 + 16);
            if (!v73)
            {
              sub_255C7429C(v70, v69, v71, 7u);
              goto LABEL_65;
            }

            v815 = v70;
            v840 = v71;
            v856 = v60;
            v74 = 0;
            v75 = v71 + 32;
            v882 = *(v71 + 16);
            v861 = v71 + 32;
            while (1)
            {
              v118 = v75 + 32 * v74;
              v119 = *v118;
              v120 = *(v118 + 8);
              v121 = *(v118 + 16);
              v122 = *(v118 + 24);
              if (v122 <= 3)
              {
                if (v122 <= 1)
                {
                  if (v122)
                  {
                    MEMORY[0x259C4BB60](3);

                    sub_255D07058();
                    sub_255C7429C(v119, v120, v121, 1u);
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](0);

                    sub_255D07058();
                    sub_255C7429C(v119, v120, v121, 0);
                  }

                  goto LABEL_119;
                }

                if (v122 == 2)
                {
                  MEMORY[0x259C4BB60](4);

                  sub_255D07058();
                  sub_255C7429C(v119, v120, v121, 2u);
                  goto LABEL_119;
                }

                v914 = v121;
                MEMORY[0x259C4BB60](5);
                MEMORY[0x259C4BB60](*(v119 + 16));
                v145 = *(v119 + 16);
                if (!v145)
                {
                  goto LABEL_119;
                }

                v146 = (v119 + 56);
                do
                {
                  v147 = *(v146 - 3);
                  v148 = *(v146 - 2);
                  v149 = *(v146 - 1);
                  v150 = *v146;
                  v146 += 32;
                  sub_255C74200(v147, v148, v149, v150);
                  sub_255D02110(a1, v147, v148, v149, v150);
                  sub_255C7429C(v147, v148, v149, v150);
                  --v145;
                }

                while (v145);
                v129 = v119;
                v130 = v120;
                v131 = v914;
                v132 = 3;
              }

              else if (v122 <= 5)
              {
                v912 = v121;
                if (v122 == 4)
                {
                  MEMORY[0x259C4BB60](6);
                  MEMORY[0x259C4BB60](*(v119 + 16));
                  v133 = *(v119 + 16);
                  if (!v133)
                  {
                    goto LABEL_119;
                  }

                  v134 = (v119 + 56);
                  do
                  {
                    v135 = *(v134 - 3);
                    v136 = *(v134 - 2);
                    v137 = *(v134 - 1);
                    v138 = *v134;
                    v134 += 32;
                    sub_255C74200(v135, v136, v137, v138);
                    sub_255D02110(a1, v135, v136, v137, v138);
                    sub_255C7429C(v135, v136, v137, v138);
                    --v133;
                  }

                  while (v133);
                  v129 = v119;
                  v130 = v120;
                  v131 = v912;
                  v132 = 4;
                }

                else
                {
                  MEMORY[0x259C4BB60](7);
                  MEMORY[0x259C4BB60](*(v119 + 16));
                  v151 = *(v119 + 16);
                  if (!v151)
                  {
                    goto LABEL_119;
                  }

                  v152 = (v119 + 56);
                  do
                  {
                    v153 = *(v152 - 3);
                    v154 = *(v152 - 2);
                    v155 = *(v152 - 1);
                    v156 = *v152;
                    v152 += 32;
                    sub_255C74200(v153, v154, v155, v156);
                    sub_255D02110(a1, v153, v154, v155, v156);
                    sub_255C7429C(v153, v154, v155, v156);
                    --v151;
                  }

                  while (v151);
                  v129 = v119;
                  v130 = v120;
                  v131 = v912;
                  v132 = 5;
                }
              }

              else if (v122 == 6)
              {
                MEMORY[0x259C4BB60](8);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v121 + 16));
                v139 = *(v121 + 16);
                if (!v139)
                {
                  sub_255C7429C(v119, v120, v121, 6u);
                  goto LABEL_119;
                }

                v913 = v121;
                v140 = (v121 + 56);
                do
                {
                  v141 = *(v140 - 3);
                  v142 = *(v140 - 2);
                  v143 = *(v140 - 1);
                  v144 = *v140;
                  v140 += 32;
                  sub_255C74200(v141, v142, v143, v144);
                  sub_255D02110(a1, v141, v142, v143, v144);
                  sub_255C7429C(v141, v142, v143, v144);
                  --v139;
                }

                while (v139);
                v129 = v119;
                v130 = v120;
                v131 = v913;
                v132 = 6;
              }

              else
              {
                if (v122 != 7)
                {
                  if (v121 | v120 | v119)
                  {
                    MEMORY[0x259C4BB60](2);
                  }

                  else
                  {
                    MEMORY[0x259C4BB60](1);
                  }

                  goto LABEL_119;
                }

                MEMORY[0x259C4BB60](9);

                sub_255D07058();
                MEMORY[0x259C4BB60](*(v121 + 16));
                v123 = *(v121 + 16);
                if (!v123)
                {
                  sub_255C7429C(v119, v120, v121, 7u);
                  goto LABEL_119;
                }

                v911 = v121;
                v124 = (v121 + 56);
                do
                {
                  v125 = *(v124 - 3);
                  v126 = *(v124 - 2);
                  v127 = *(v124 - 1);
                  v128 = *v124;
                  v124 += 32;
                  sub_255C74200(v125, v126, v127, v128);
                  sub_255D02110(a1, v125, v126, v127, v128);
                  sub_255C7429C(v125, v126, v127, v128);
                  --v123;
                }

                while (v123);
                v129 = v119;
                v130 = v120;
                v131 = v911;
                v132 = 7;
              }

              sub_255C7429C(v129, v130, v131, v132);
              v73 = v882;
              v75 = v861;
LABEL_119:
              if (++v74 == v73)
              {
                v64 = v815;
                v65 = v69;
                v66 = v840;
                v67 = 7;
                goto LABEL_64;
              }
            }
          }

          MEMORY[0x259C4BB60](8);

          sub_255D07058();
          MEMORY[0x259C4BB60](*(v71 + 16));
          v157 = *(v71 + 16);
          if (!v157)
          {
            sub_255C7429C(v70, v69, v71, 6u);
            goto LABEL_65;
          }

          v817 = v70;
          v842 = v71;
          v856 = v60;
          v158 = 0;
          v159 = v71 + 32;
          v884 = *(v71 + 16);
          v863 = v71 + 32;
          while (1)
          {
            v164 = v159 + 32 * v158;
            v165 = *v164;
            v166 = *(v164 + 8);
            v167 = *(v164 + 16);
            v168 = *(v164 + 24);
            if (v168 <= 3)
            {
              if (v168 <= 1)
              {
                if (v168)
                {
                  MEMORY[0x259C4BB60](3);

                  sub_255D07058();
                  sub_255C7429C(v165, v166, v167, 1u);
                }

                else
                {
                  MEMORY[0x259C4BB60](0);

                  sub_255D07058();
                  sub_255C7429C(v165, v166, v167, 0);
                }

                goto LABEL_159;
              }

              if (v168 == 2)
              {
                MEMORY[0x259C4BB60](4);

                sub_255D07058();
                sub_255C7429C(v165, v166, v167, 2u);
                goto LABEL_159;
              }

              v918 = v167;
              MEMORY[0x259C4BB60](5);
              MEMORY[0x259C4BB60](*(v165 + 16));
              v187 = *(v165 + 16);
              if (!v187)
              {
                goto LABEL_159;
              }

              v188 = (v165 + 56);
              do
              {
                v189 = *(v188 - 3);
                v190 = *(v188 - 2);
                v191 = *(v188 - 1);
                v192 = *v188;
                v188 += 32;
                sub_255C74200(v189, v190, v191, v192);
                sub_255D02110(a1, v189, v190, v191, v192);
                sub_255C7429C(v189, v190, v191, v192);
                --v187;
              }

              while (v187);
              v160 = v165;
              v161 = v166;
              v162 = v918;
              v163 = 3;
            }

            else if (v168 <= 5)
            {
              v916 = v167;
              if (v168 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v165 + 16));
                v175 = *(v165 + 16);
                if (!v175)
                {
                  goto LABEL_159;
                }

                v176 = (v165 + 56);
                do
                {
                  v177 = *(v176 - 3);
                  v178 = *(v176 - 2);
                  v179 = *(v176 - 1);
                  v180 = *v176;
                  v176 += 32;
                  sub_255C74200(v177, v178, v179, v180);
                  sub_255D02110(a1, v177, v178, v179, v180);
                  sub_255C7429C(v177, v178, v179, v180);
                  --v175;
                }

                while (v175);
                v160 = v165;
                v161 = v166;
                v162 = v916;
                v163 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v165 + 16));
                v193 = *(v165 + 16);
                if (!v193)
                {
                  goto LABEL_159;
                }

                v194 = (v165 + 56);
                do
                {
                  v195 = *(v194 - 3);
                  v196 = *(v194 - 2);
                  v197 = *(v194 - 1);
                  v198 = *v194;
                  v194 += 32;
                  sub_255C74200(v195, v196, v197, v198);
                  sub_255D02110(a1, v195, v196, v197, v198);
                  sub_255C7429C(v195, v196, v197, v198);
                  --v193;
                }

                while (v193);
                v160 = v165;
                v161 = v166;
                v162 = v916;
                v163 = 5;
              }
            }

            else if (v168 == 6)
            {
              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v167 + 16));
              v181 = *(v167 + 16);
              if (!v181)
              {
                sub_255C7429C(v165, v166, v167, 6u);
                goto LABEL_159;
              }

              v917 = v167;
              v182 = (v167 + 56);
              do
              {
                v183 = *(v182 - 3);
                v184 = *(v182 - 2);
                v185 = *(v182 - 1);
                v186 = *v182;
                v182 += 32;
                sub_255C74200(v183, v184, v185, v186);
                sub_255D02110(a1, v183, v184, v185, v186);
                sub_255C7429C(v183, v184, v185, v186);
                --v181;
              }

              while (v181);
              v160 = v165;
              v161 = v166;
              v162 = v917;
              v163 = 6;
            }

            else
            {
              if (v168 != 7)
              {
                if (v167 | v166 | v165)
                {
                  MEMORY[0x259C4BB60](2);
                }

                else
                {
                  MEMORY[0x259C4BB60](1);
                }

                goto LABEL_159;
              }

              MEMORY[0x259C4BB60](9);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v167 + 16));
              v169 = *(v167 + 16);
              if (!v169)
              {
                sub_255C7429C(v165, v166, v167, 7u);
                goto LABEL_159;
              }

              v915 = v167;
              v170 = (v167 + 56);
              do
              {
                v171 = *(v170 - 3);
                v172 = *(v170 - 2);
                v173 = *(v170 - 1);
                v174 = *v170;
                v170 += 32;
                sub_255C74200(v171, v172, v173, v174);
                sub_255D02110(a1, v171, v172, v173, v174);
                sub_255C7429C(v171, v172, v173, v174);
                --v169;
              }

              while (v169);
              v160 = v165;
              v161 = v166;
              v162 = v915;
              v163 = 7;
            }

            sub_255C7429C(v160, v161, v162, v163);
            v157 = v884;
            v159 = v863;
LABEL_159:
            if (++v158 == v157)
            {
              v64 = v817;
              v65 = v69;
              v66 = v842;
              v67 = 6;
              goto LABEL_64;
            }
          }
        }

        if (v72 == 4)
        {
          MEMORY[0x259C4BB60](6);
          MEMORY[0x259C4BB60](*(v70 + 16));
          v76 = *(v70 + 16);
          if (!v76)
          {
            goto LABEL_65;
          }

          v816 = v70;
          v841 = v71;
          v856 = v60;
          v77 = v70 + 32;

          v78 = 0;
          v883 = v76;
          v862 = v77;
          while (1)
          {
            v79 = v77 + 32 * v78;
            v80 = *v79;
            v81 = *(v79 + 8);
            v82 = *(v79 + 16);
            v83 = *(v79 + 24);
            if (v83 <= 3)
            {
              if (v83 <= 1)
              {
                if (v83)
                {
                  MEMORY[0x259C4BB60](3);

                  sub_255D07058();
                  sub_255C7429C(v80, v81, v82, 1u);
                }

                else
                {
                  MEMORY[0x259C4BB60](0);

                  sub_255D07058();
                  sub_255C7429C(v80, v81, v82, 0);
                }

                goto LABEL_81;
              }

              if (v83 == 2)
              {
                MEMORY[0x259C4BB60](4);

                sub_255D07058();
                sub_255C7429C(v80, v81, v82, 2u);
                goto LABEL_81;
              }

              v910 = v82;
              MEMORY[0x259C4BB60](5);
              MEMORY[0x259C4BB60](*(v80 + 16));
              v106 = *(v80 + 16);
              if (!v106)
              {
                goto LABEL_81;
              }

              v107 = (v80 + 56);
              do
              {
                v108 = *(v107 - 3);
                v109 = *(v107 - 2);
                v110 = *(v107 - 1);
                v111 = *v107;
                v107 += 32;
                sub_255C74200(v108, v109, v110, v111);
                sub_255D02110(a1, v108, v109, v110, v111);
                sub_255C7429C(v108, v109, v110, v111);
                --v106;
              }

              while (v106);
              v90 = v80;
              v91 = v81;
              v92 = v910;
              v93 = 3;
            }

            else if (v83 <= 5)
            {
              v908 = v82;
              if (v83 == 4)
              {
                MEMORY[0x259C4BB60](6);
                MEMORY[0x259C4BB60](*(v80 + 16));
                v94 = *(v80 + 16);
                if (!v94)
                {
                  goto LABEL_81;
                }

                v95 = (v80 + 56);
                do
                {
                  v96 = *(v95 - 3);
                  v97 = *(v95 - 2);
                  v98 = *(v95 - 1);
                  v99 = *v95;
                  v95 += 32;
                  sub_255C74200(v96, v97, v98, v99);
                  sub_255D02110(a1, v96, v97, v98, v99);
                  sub_255C7429C(v96, v97, v98, v99);
                  --v94;
                }

                while (v94);
                v90 = v80;
                v91 = v81;
                v92 = v908;
                v93 = 4;
              }

              else
              {
                MEMORY[0x259C4BB60](7);
                MEMORY[0x259C4BB60](*(v80 + 16));
                v112 = *(v80 + 16);
                if (!v112)
                {
                  goto LABEL_81;
                }

                v113 = (v80 + 56);
                do
                {
                  v114 = *(v113 - 3);
                  v115 = *(v113 - 2);
                  v116 = *(v113 - 1);
                  v117 = *v113;
                  v113 += 32;
                  sub_255C74200(v114, v115, v116, v117);
                  sub_255D02110(a1, v114, v115, v116, v117);
                  sub_255C7429C(v114, v115, v116, v117);
                  --v112;
                }

                while (v112);
                v90 = v80;
                v91 = v81;
                v92 = v908;
                v93 = 5;
              }
            }

            else if (v83 == 6)
            {
              MEMORY[0x259C4BB60](8);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v82 + 16));
              v100 = *(v82 + 16);
              if (!v100)
              {
                sub_255C7429C(v80, v81, v82, 6u);
                goto LABEL_81;
              }

              v909 = v82;
              v101 = (v82 + 56);
              do
              {
                v102 = *(v101 - 3);
                v103 = *(v101 - 2);
                v104 = *(v101 - 1);
                v105 = *v101;
                v101 += 32;
                sub_255C74200(v102, v103, v104, v105);
                sub_255D02110(a1, v102, v103, v104, v105);
                sub_255C7429C(v102, v103, v104, v105);
                --v100;
              }

              while (v100);
              v90 = v80;
              v91 = v81;
              v92 = v909;
              v93 = 6;
            }

            else
            {
              if (v83 != 7)
              {
                if (v82 | v81 | v80)
                {
                  MEMORY[0x259C4BB60](2);
                }

                else
                {
                  MEMORY[0x259C4BB60](1);
                }

                goto LABEL_81;
              }

              MEMORY[0x259C4BB60](9);

              sub_255D07058();
              MEMORY[0x259C4BB60](*(v82 + 16));
              v84 = *(v82 + 16);
              if (!v84)
              {
                sub_255C7429C(v80, v81, v82, 7u);
                goto LABEL_81;
              }

              v907 = v82;
              v85 = (v82 + 56);
              do
              {
                v86 = *(v85 - 3);
                v87 = *(v85 - 2);
                v88 = *(v85 - 1);
                v89 = *v85;
                v85 += 32;
                sub_255C74200(v86, v87, v88, v89);
                sub_255D02110(a1, v86, v87, v88, v89);
                sub_255C7429C(v86, v87, v88, v89);
                --v84;
              }

              while (v84);
              v90 = v80;
              v91 = v81;
              v92 = v907;
              v93 = 7;
            }

            sub_255C7429C(v90, v91, v92, v93);
            v76 = v883;
            v77 = v862;
LABEL_81:
            if (++v78 == v76)
            {
              v64 = v816;
              v65 = v69;
              v66 = v841;
              v67 = 4;
              goto LABEL_64;
            }
          }
        }

        MEMORY[0x259C4BB60](7);
        MEMORY[0x259C4BB60](*(v70 + 16));
        v241 = *(v70 + 16);
        if (!v241)
        {
          goto LABEL_65;
        }

        v819 = v70;
        v844 = v71;
        v856 = v60;
        v242 = v70 + 32;

        v243 = 0;
        v886 = v241;
        v865 = v242;
        while (1)
        {
          v244 = v242 + 32 * v243;
          v245 = *v244;
          v246 = *(v244 + 8);
          v247 = *(v244 + 16);
          v248 = *(v244 + 24);
          if (v248 <= 3)
          {
            if (v248 <= 1)
            {
              if (v248)
              {
                MEMORY[0x259C4BB60](3);

                sub_255D07058();
                sub_255C7429C(v245, v246, v247, 1u);
              }

              else
              {
                MEMORY[0x259C4BB60](0);

                sub_255D07058();
                sub_255C7429C(v245, v246, v247, 0);
              }

              goto LABEL_242;
            }

            if (v248 == 2)
            {
              MEMORY[0x259C4BB60](4);

              sub_255D07058();
              sub_255C7429C(v245, v246, v247, 2u);
              goto LABEL_242;
            }

            v926 = v247;
            MEMORY[0x259C4BB60](5);
            MEMORY[0x259C4BB60](*(v245 + 16));
            v271 = *(v245 + 16);
            if (!v271)
            {
              goto LABEL_242;
            }

            v272 = (v245 + 56);
            do
            {
              v273 = *(v272 - 3);
              v274 = *(v272 - 2);
              v275 = *(v272 - 1);
              v276 = *v272;
              v272 += 32;
              sub_255C74200(v273, v274, v275, v276);
              sub_255D02110(a1, v273, v274, v275, v276);
              sub_255C7429C(v273, v274, v275, v276);
              --v271;
            }

            while (v271);
            v255 = v245;
            v256 = v246;
            v257 = v926;
            v258 = 3;
          }

          else if (v248 <= 5)
          {
            v924 = v247;
            if (v248 == 4)
            {
              MEMORY[0x259C4BB60](6);
              MEMORY[0x259C4BB60](*(v245 + 16));
              v259 = *(v245 + 16);
              if (!v259)
              {
                goto LABEL_242;
              }

              v260 = (v245 + 56);
              do
              {
                v261 = *(v260 - 3);
                v262 = *(v260 - 2);
                v263 = *(v260 - 1);
                v264 = *v260;
                v260 += 32;
                sub_255C74200(v261, v262, v263, v264);
                sub_255D02110(a1, v261, v262, v263, v264);
                sub_255C7429C(v261, v262, v263, v264);
                --v259;
              }

              while (v259);
              v255 = v245;
              v256 = v246;
              v257 = v924;
              v258 = 4;
            }

            else
            {
              MEMORY[0x259C4BB60](7);
              MEMORY[0x259C4BB60](*(v245 + 16));
              v277 = *(v245 + 16);
              if (!v277)
              {
                goto LABEL_242;
              }

              v278 = (v245 + 56);
              do
              {
                v279 = *(v278 - 3);
                v280 = *(v278 - 2);
                v281 = *(v278 - 1);
                v282 = *v278;
                v278 += 32;
                sub_255C74200(v279, v280, v281, v282);
                sub_255D02110(a1, v279, v280, v281, v282);
                sub_255C7429C(v279, v280, v281, v282);
                --v277;
              }

              while (v277);
              v255 = v245;
              v256 = v246;
              v257 = v924;
              v258 = 5;
            }
          }

          else if (v248 == 6)
          {
            MEMORY[0x259C4BB60](8);

            sub_255D07058();
            MEMORY[0x259C4BB60](*(v247 + 16));
            v265 = *(v247 + 16);
            if (!v265)
            {
              sub_255C7429C(v245, v246, v247, 6u);
              goto LABEL_242;
            }

            v925 = v247;
            v266 = (v247 + 56);
            do
            {
              v267 = *(v266 - 3);
              v268 = *(v266 - 2);
              v269 = *(v266 - 1);
              v270 = *v266;
              v266 += 32;
              sub_255C74200(v267, v268, v269, v270);
              sub_255D02110(a1, v267, v268, v269, v270);
              sub_255C7429C(v267, v268, v269, v270);
              --v265;
            }

            while (v265);
            v255 = v245;
            v256 = v246;
            v257 = v925;
            v258 = 6;
          }

          else
          {
            if (v248 != 7)
            {
              if (v247 | v246 | v245)
              {
                MEMORY[0x259C4BB60](2);
              }

              else
              {
                MEMORY[0x259C4BB60](1);
              }

              goto LABEL_242;
            }

            MEMORY[0x259C4BB60](9);

            sub_255D07058();
            MEMORY[0x259C4BB60](*(v247 + 16));
            v249 = *(v247 + 16);
            if (!v249)
            {
              sub_255C7429C(v245, v246, v247, 7u);
              goto LABEL_242;
            }

            v923 = v247;
            v250 = (v247 + 56);
            do
            {
              v251 = *(v250 - 3);
              v252 = *(v250 - 2);
              v253 = *(v250 - 1);
              v254 = *v250;
              v250 += 32;
              sub_255C74200(v251, v252, v253, v254);
              sub_255D02110(a1, v251, v252, v253, v254);
              sub_255C7429C(v251, v252, v253, v254);
              --v249;
            }

            while (v249);
            v255 = v245;
            v256 = v246;
            v257 = v923;
            v258 = 7;
          }

          sub_255C7429C(v255, v256, v257, v258);
          v241 = v886;
          v242 = v865;
LABEL_242:
          if (++v243 == v241)
          {
            v64 = v819;
            v65 = v69;
            v66 = v844;
            v67 = 5;
LABEL_64:
            sub_255C7429C(v64, v65, v66, v67);
            v59 = v880 + 32;
            v58 = v805;
            v60 = v856;
            goto LABEL_65;
          }
        }
      }

      if (v72 <= 1)
      {
        if (v72)
        {
          MEMORY[0x259C4BB60](3);

          sub_255D07058();
          sub_255C7429C(v70, v69, v71, 1u);
        }

        else
        {
          MEMORY[0x259C4BB60](0);

          sub_255D07058();
          sub_255C7429C(v70, v69, v71, 0);
        }

        goto LABEL_65;
      }

      if (v72 == 2)
      {
        MEMORY[0x259C4BB60](4);

        sub_255D07058();
        sub_255C7429C(v70, v69, v71, 2u);
        goto LABEL_65;
      }

      MEMORY[0x259C4BB60](5);
      MEMORY[0x259C4BB60](*(v70 + 16));
      v199 = *(v70 + 16);
      if (v199)
      {
        break;
      }

LABEL_65:
      if (++v60 == v58)
      {
        v8 = v880;
        v9 = v811;
        v10 = v837;
        v11 = 3;
        goto LABEL_8;
      }
    }

    v818 = v70;
    v843 = v71;
    v856 = v60;
    v200 = v70 + 32;

    v201 = 0;
    v885 = v199;
    v864 = v70 + 32;
    while (1)
    {
      v202 = v200 + 32 * v201;
      v203 = *v202;
      v204 = *(v202 + 8);
      v205 = *(v202 + 16);
      v206 = *(v202 + 24);
      if (v206 <= 3)
      {
        if (v206 <= 1)
        {
          if (v206)
          {
            MEMORY[0x259C4BB60](3);

            sub_255D07058();
            sub_255C7429C(v203, v204, v205, 1u);
          }

          else
          {
            MEMORY[0x259C4BB60](0);

            sub_255D07058();
            sub_255C7429C(v203, v204, v205, 0);
          }

          goto LABEL_200;
        }

        if (v206 == 2)
        {
          MEMORY[0x259C4BB60](4);

          sub_255D07058();
          sub_255C7429C(v203, v204, v205, 2u);
          goto LABEL_200;
        }

        v922 = v205;
        MEMORY[0x259C4BB60](5);
        MEMORY[0x259C4BB60](*(v203 + 16));
        v229 = *(v203 + 16);
        if (!v229)
        {
          goto LABEL_200;
        }

        v230 = (v203 + 56);
        do
        {
          v231 = *(v230 - 3);
          v232 = *(v230 - 2);
          v233 = *(v230 - 1);
          v234 = *v230;
          v230 += 32;
          sub_255C74200(v231, v232, v233, v234);
          sub_255D02110(a1, v231, v232, v233, v234);
          sub_255C7429C(v231, v232, v233, v234);
          --v229;
        }

        while (v229);
        v213 = v203;
        v214 = v204;
        v215 = v922;
        v216 = 3;
      }

      else if (v206 <= 5)
      {
        v920 = v205;
        if (v206 == 4)
        {
          MEMORY[0x259C4BB60](6);
          MEMORY[0x259C4BB60](*(v203 + 16));
          v217 = *(v203 + 16);
          if (!v217)
          {
            goto LABEL_200;
          }

          v218 = (v203 + 56);
          do
          {
            v219 = *(v218 - 3);
            v220 = *(v218 - 2);
            v221 = *(v218 - 1);
            v222 = *v218;
            v218 += 32;
            sub_255C74200(v219, v220, v221, v222);
            sub_255D02110(a1, v219, v220, v221, v222);
            sub_255C7429C(v219, v220, v221, v222);
            --v217;
          }

          while (v217);
          v213 = v203;
          v214 = v204;
          v215 = v920;
          v216 = 4;
        }

        else
        {
          MEMORY[0x259C4BB60](7);
          MEMORY[0x259C4BB60](*(v203 + 16));
          v235 = *(v203 + 16);
          if (!v235)
          {
            goto LABEL_200;
          }

          v236 = (v203 + 56);
          do
          {
            v237 = *(v236 - 3);
            v238 = *(v236 - 2);
            v239 = *(v236 - 1);
            v240 = *v236;
            v236 += 32;
            sub_255C74200(v237, v238, v239, v240);
            sub_255D02110(a1, v237, v238, v239, v240);
            sub_255C7429C(v237, v238, v239, v240);
            --v235;
          }

          while (v235);
          v213 = v203;
          v214 = v204;
          v215 = v920;
          v216 = 5;
        }
      }

      else if (v206 == 6)
      {
        MEMORY[0x259C4BB60](8);

        sub_255D07058();
        MEMORY[0x259C4BB60](*(v205 + 16));
        v223 = *(v205 + 16);
        if (!v223)
        {
          sub_255C7429C(v203, v204, v205, 6u);
          goto LABEL_200;
        }

        v921 = v205;
        v224 = (v205 + 56);
        do
        {
          v225 = *(v224 - 3);
          v226 = *(v224 - 2);
          v227 = *(v224 - 1);
          v228 = *v224;
          v224 += 32;
          sub_255C74200(v225, v226, v227, v228);
          sub_255D02110(a1, v225, v226, v227, v228);
          sub_255C7429C(v225, v226, v227, v228);
          --v223;
        }

        while (v223);
        v213 = v203;
        v214 = v204;
        v215 = v921;
        v216 = 6;
      }

      else
      {
        if (v206 != 7)
        {
          if (v205 | v204 | v203)
          {
            MEMORY[0x259C4BB60](2);
          }

          else
          {
            MEMORY[0x259C4BB60](1);
          }

          goto LABEL_200;
        }

        MEMORY[0x259C4BB60](9);

        sub_255D07058();
        MEMORY[0x259C4BB60](*(v205 + 16));
        v207 = *(v205 + 16);
        if (!v207)
        {
          sub_255C7429C(v203, v204, v205, 7u);
          goto LABEL_200;
        }

        v919 = v205;
        v208 = (v205 + 56);
        do
        {
          v209 = *(v208 - 3);
          v210 = *(v208 - 2);
          v211 = *(v208 - 1);
          v212 = *v208;
          v208 += 32;
          sub_255C74200(v209, v210, v211, v212);
          sub_255D02110(a1, v209, v210, v211, v212);
          sub_255C7429C(v209, v210, v211, v212);
          --v207;
        }

        while (v207);
        v213 = v203;
        v214 = v204;
        v215 = v919;
        v216 = 7;
      }

      sub_255C7429C(v213, v214, v215, v216);
      v199 = v885;
      v200 = v864;
LABEL_200:
      if (++v201 == v199)
      {
        v64 = v818;
        v65 = v69;
        v66 = v843;
        v67 = 3;
        goto LABEL_64;
      }
    }
  }

  return result;
}