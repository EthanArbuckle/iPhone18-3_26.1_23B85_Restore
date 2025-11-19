uint64_t sub_2436C5FA4()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action;
  v2 = *(v1 + 8);
  return (*v1)();
}

double sub_2436C5FDC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2436C5CA8(a1);
}

unint64_t sub_2436C5FE4()
{
  result = qword_27ED80478;
  if (!qword_27ED80478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80470, &qword_2436D3050);
    sub_2436C6070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80478);
  }

  return result;
}

unint64_t sub_2436C6070()
{
  result = qword_27ED80480;
  if (!qword_27ED80480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80488, &qword_2436D3058);
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80480);
  }

  return result;
}

uint64_t sub_2436C6130@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2436CB288();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2436C61B8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x245D3B420]();
  *a1 = result;
  return result;
}

uint64_t sub_2436C61E4(uint64_t *a1)
{
  v1 = *a1;

  return sub_2436CB1D8();
}

unint64_t sub_2436C6214()
{
  result = qword_27ED80498;
  if (!qword_27ED80498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80490, &qword_2436D30D8);
    sub_243671838(&qword_27ED804A0, &qword_27ED804A8, &qword_2436D3158);
    sub_243671838(&qword_27ED804B0, &qword_27ED804B8, &unk_2436D3160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80498);
  }

  return result;
}

unint64_t sub_2436C6334()
{
  result = qword_27ED804C0;
  if (!qword_27ED804C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED804C0);
  }

  return result;
}

double sub_2436C63B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_2436CAB78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  if (v12)
  {
    sub_243688FE8(a5, a1, v12, a2, a3);
    sub_2436CB678();
  }

  else
  {
    sub_2436CB308();
    sub_2436CB668();
  }

  sub_2436CB398();
  result = *&v14;
  *a4 = v14;
  *(a4 + 16) = v15;
  *(a4 + 32) = v16;
  return result;
}

uint64_t sub_2436C6508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2436CB508();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED804C8, &qword_2436D32D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  *v14 = sub_2436CB2F8();
  *(v14 + 1) = 0x4034000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED804D0, &qword_2436D32E0);
  sub_2436C675C(a1, a2, &v14[*(v15 + 44)]);
  v16 = sub_2436CB948();
  KeyPath = swift_getKeyPath();
  v18 = &v14[*(v11 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_2436CB4F8();
  sub_2436C752C();
  sub_2436CB7A8();
  (*(v7 + 8))(v10, v6);
  sub_243671AC8(v14, &qword_27ED804C8, &qword_2436D32D8);
  v19 = *(a2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel_alert);
  type metadata accessor for EMSAlertViewModel();
  sub_2436C76B8(&qword_27ED7F0F0, type metadata accessor for EMSAlertViewModel);

  v20 = sub_2436CB098();
  v22 = v21;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED804F0, &qword_2436D3320);
  v24 = (a3 + *(result + 36));
  *v24 = v20;
  v24[1] = v22;
  return result;
}

uint64_t sub_2436C675C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED804F8, &qword_2436D3328);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  type metadata accessor for EMSFacePortalViewModel();
  sub_2436C76B8(&qword_27ED80240, type metadata accessor for EMSFacePortalViewModel);
  v25 = sub_2436CB098();
  v13 = v12;
  sub_2436CBB48();
  sub_2436CB068();
  v14 = v27;
  v15 = v31;
  v23 = v32;
  v24 = v29;
  v34 = v28;
  v33 = v30;
  *v11 = sub_2436CB368();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80500, &qword_2436D3378);
  sub_2436C69F0(v26, a2, &v11[*(v16 + 44)]);
  LOBYTE(a2) = v34;
  v17 = v33;
  sub_2436714A8(v11, v9, &qword_27ED804F8, &qword_2436D3328);
  v18 = v24;
  *a3 = v25;
  *(a3 + 8) = v13;
  *(a3 + 16) = v14;
  *(a3 + 24) = a2;
  *(a3 + 32) = v18;
  *(a3 + 40) = v17;
  v19 = v23;
  *(a3 + 48) = v15;
  *(a3 + 56) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80508, &qword_2436D3380);
  sub_2436714A8(v9, a3 + *(v20 + 48), &qword_27ED804F8, &qword_2436D3328);
  v21 = a3 + *(v20 + 64);
  *v21 = 0;
  *(v21 + 8) = 1;

  sub_243671AC8(v11, &qword_27ED804F8, &qword_2436D3328);
  sub_243671AC8(v9, &qword_27ED804F8, &qword_2436D3328);
}

uint64_t sub_2436C69F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v42 = a1;
  v38 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80510, &qword_2436D3388);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_2436C63B4(v49[0], v50, v51, v64, 17.0);
  v15 = v64[0];
  v41 = v64[1];
  v40 = v64[2];
  v39 = v64[3];
  v16 = v65;

  v17 = sub_2436CB5A8();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v43 = sub_2436CB5C8();
  sub_243671AC8(v14, &qword_27ED7F790, &qword_2436D2640);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (LOBYTE(v49[0]) == 1)
  {
    v18 = [objc_opt_self() lightGrayColor];
    v19 = sub_2436CB8E8();
  }

  else
  {
    v19 = sub_2436CB968();
  }

  v36 = v19;
  v20 = swift_getKeyPath();
  v35 = v20;
  v62 = v16;
  v21 = swift_getKeyPath();
  v34 = v21;
  v63 = 0;
  *v10 = sub_2436CB2F8();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80518, &qword_2436D3480);
  sub_2436C6EF0(a2, &v10[*(v22 + 44)]);
  sub_2436714A8(v10, v8, &qword_27ED80510, &qword_2436D3388);
  *&v44 = v15;
  v23 = v41;
  *(&v44 + 1) = v41;
  v24 = v40;
  *&v45 = v40;
  v42 = v10;
  v25 = v16;
  v26 = v39;
  *(&v45 + 1) = v39;
  LOBYTE(v46) = v25;
  *(&v46 + 1) = *v61;
  DWORD1(v46) = *&v61[3];
  v27 = KeyPath;
  *(&v46 + 1) = KeyPath;
  *&v47 = v43;
  *(&v47 + 1) = v20;
  v28 = v36;
  *v48 = v36;
  *&v48[8] = v21;
  *&v48[16] = 1;
  v48[24] = 0;
  v29 = v38;
  v38[4] = *v48;
  *(v29 + 73) = *&v48[9];
  v30 = v45;
  *v29 = v44;
  v29[1] = v30;
  v31 = v47;
  v29[2] = v46;
  v29[3] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80520, &qword_2436D3488);
  sub_2436714A8(v8, v29 + *(v32 + 48), &qword_27ED80510, &qword_2436D3388);
  sub_2436C7638(&v44, v49);
  sub_243671AC8(v42, &qword_27ED80510, &qword_2436D3388);
  sub_243671AC8(v8, &qword_27ED80510, &qword_2436D3388);
  v49[0] = v15;
  v49[1] = v23;
  v50 = v24;
  v51 = v26;
  v52 = v25;
  *v53 = *v61;
  *&v53[3] = *&v61[3];
  v54 = v27;
  v55 = v43;
  v56 = v35;
  v57 = v28;
  v58 = v34;
  v59 = 1;
  v60 = 0;
  return sub_243671AC8(v49, &qword_27ED80528, &qword_2436D3490);
}

uint64_t sub_2436C6EF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v59 = a1;
  v3 = sub_2436CB158();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80530, &qword_2436D3498);
  v7 = *(v6 - 8);
  v64 = v6;
  v65 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80538, &qword_2436D34A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v66 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v63 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v55 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_2436732AC();
  v19 = sub_2436CB698();
  v21 = v20;
  v23 = v22;
  v24 = sub_2436CB5A8();
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  sub_2436CB5C8();
  sub_243671AC8(v18, &qword_27ED7F790, &qword_2436D2640);
  v25 = sub_2436CB658();
  v27 = v26;
  v29 = v28;

  sub_243679F68(v19, v21, v23 & 1);

  sub_2436CB978();
  v30 = sub_2436CB648();
  v62 = v31;
  v60 = v32;
  v34 = v33;

  sub_243679F68(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v67)
  {
    type metadata accessor for CRKUIButtonViewModel();
    sub_2436C76B8(&qword_27ED7E878, type metadata accessor for CRKUIButtonViewModel);

    v67 = sub_2436CB098();
    v68 = v35;
    v36 = v56;
    sub_2436CB148();
    sub_24367A178();
    sub_2436C76B8(&qword_27ED80548, MEMORY[0x277CDDB18]);
    v37 = v30;
    v38 = v34;
    v39 = v55;
    v40 = v58;
    sub_2436CB6E8();
    (*(v57 + 8))(v36, v40);

    v41 = sub_2436CB928();

    v42 = swift_getKeyPath();
    v43 = v64;
    v44 = &v39[*(v64 + 36)];
    *v44 = v42;
    v44[1] = v41;
    v45 = v39;
    v34 = v38;
    v30 = v37;
    v46 = v63;
    sub_2436C7700(v45, v63);
    v47 = 0;
    v48 = v43;
  }

  else
  {
    v46 = v63;
    v48 = v64;
    v47 = 1;
  }

  (*(v65 + 56))(v46, v47, 1, v48);
  v49 = v66;
  sub_2436714A8(v46, v66, &qword_27ED80538, &qword_2436D34A0);
  v51 = KeyPath;
  v50 = v62;
  *a2 = v30;
  *(a2 + 8) = v50;
  v52 = v60 & 1;
  *(a2 + 16) = v60 & 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = v51;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80540, &qword_2436D3538);
  sub_2436714A8(v49, a2 + *(v53 + 48), &qword_27ED80538, &qword_2436D34A0);
  sub_24366C090(v30, v50, v52);

  sub_243671AC8(v46, &qword_27ED80538, &qword_2436D34A0);
  sub_243671AC8(v49, &qword_27ED80538, &qword_2436D34A0);
  sub_243679F68(v30, v50, v52);
}

unint64_t sub_2436C752C()
{
  result = qword_27ED804D8;
  if (!qword_27ED804D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED804C8, &qword_2436D32D8);
    sub_243671838(&qword_27ED804E0, &qword_27ED804E8, &qword_2436D3318);
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED804D8);
  }

  return result;
}

uint64_t sub_2436C7638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80528, &qword_2436D3490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2436C76B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2436C7700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80530, &qword_2436D3498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2436C7774()
{
  result = qword_27ED80550;
  if (!qword_27ED80550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED804F0, &qword_2436D3320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED804C8, &qword_2436D32D8);
    sub_2436C752C();
    swift_getOpaqueTypeConformance2();
    sub_2436932A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80550);
  }

  return result;
}

uint64_t sub_2436C7868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2436CB358();
  v19 = 0;
  sub_2436C7960(a1, v15);
  v5 = v15[0];
  v6 = v15[1];
  v7 = v16;
  v14 = v17;
  v8 = v18;
  LOBYTE(v15[0]) = v16;
  v9 = v19;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = 0x4028000000000000;
  *(v10 + 32) = v9;
  *(v10 + 40) = v5;
  *(v10 + 48) = v6;
  *(v10 + 56) = v7;
  *(v10 + 64) = v14;
  *(v10 + 80) = v8;
  v11 = [objc_opt_self() systemBackgroundColor];
  v12 = sub_2436CB8E8();
  result = sub_2436CB538();
  *a2 = sub_2436C7B08;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_2436C7960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2436CAC58();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_27ED7DEF0 != -1)
  {
    swift_once();
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_24369B50C();
  v8 = sub_2436CB688();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_2436C01B4();
  type metadata accessor for CRKUIButtonViewModel();
  sub_2436C7BC4();
  v15 = sub_2436CB098();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  sub_24366C090(v8, v10, v12 & 1);

  sub_243679F68(v8, v10, v12 & 1);
}

uint64_t sub_2436C7ABC()
{
  sub_243679F68(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2436C7B08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = v2;
  v11 = *(v1 + 80);
  v3 = v11;
  v4 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_2436C7B54(v8, v7);
}

uint64_t sub_2436C7B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80558, &qword_2436D35C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2436C7BC4()
{
  result = qword_27ED7E878;
  if (!qword_27ED7E878)
  {
    type metadata accessor for CRKUIButtonViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E878);
  }

  return result;
}

unint64_t sub_2436C7C20()
{
  result = qword_27ED80560;
  if (!qword_27ED80560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80568, &qword_2436D35D0);
    sub_243671838(&qword_27ED80570, &qword_27ED80578, &qword_2436D35D8);
    sub_243671838(&qword_27ED7E7F0, &qword_27ED7E7F8, &qword_2436CE2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80560);
  }

  return result;
}

uint64_t sub_2436C7D04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436C7DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v11 == a1 && v12 == a2)
  {
  }

  else
  {
    v9 = sub_2436CC2E8();

    if ((v9 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v11 = a1;

      sub_2436CAEE8();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v11 != a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = a3;

    sub_2436CAEE8();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v11 != a4)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_2436CAEE8();
  }

  return result;
}

uint64_t sub_2436C7FD8()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__title;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__color;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EAD8, &unk_2436CE7D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel__mascot;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBE0, &qword_2436CE7C8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit30EMSCourseSearchResultViewModel_selectionHandler + 8);

  v8 = *(*v0 + 12);
  v9 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t type metadata accessor for EMSCourseSearchResultViewModel()
{
  result = qword_27ED805A0;
  if (!qword_27ED805A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436C8188()
{
  sub_24367BAD8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_24367BB28(319, &qword_27ED7EAC0, type metadata accessor for CRKCourseColorType);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_24367BB28(319, &qword_27ED7EAC8, type metadata accessor for CRKCourseMascotType);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_2436C82E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSCourseSearchResultViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_2436C8320@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2436C83A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t EasyMAIDSignInTesterApp.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED805B0, &qword_2436D3760);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_2436C86EC();
  sub_2436CAFF8();
  sub_2436C8740();
  sub_2436CB018();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2436C8648@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for EMSConfigurationPickerViewModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_24368E240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED805C8, "<e");
  sub_2436CB9E8();
  sub_2436C88FC();
  result = sub_2436CB098();
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  return result;
}

unint64_t sub_2436C86EC()
{
  result = qword_27ED805B8;
  if (!qword_27ED805B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED805B8);
  }

  return result;
}

unint64_t sub_2436C8740()
{
  result = qword_27ED805C0;
  if (!qword_27ED805C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED805B0, &qword_2436D3760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED805C0);
  }

  return result;
}

uint64_t sub_2436C87C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED805B0, &qword_2436D3760);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_2436C86EC();
  sub_2436CAFF8();
  sub_2436C8740();
  sub_2436CB018();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_2436C88FC()
{
  result = qword_27ED7E568;
  if (!qword_27ED7E568)
  {
    type metadata accessor for EMSConfigurationPickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E568);
  }

  return result;
}

uint64_t sub_2436C8954@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_2436C89D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2436CAEE8();
  return sub_2436C8A4C();
}

uint64_t sub_2436C8A4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if ((v1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_2436CAEE8();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    v5 = -1;
    v3 = 0u;
    v4 = 0u;
    v1 = 0u;
    v2 = 0u;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();
  }

  return result;
}

uint64_t sub_2436C8C2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436C8CA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v7 = v5;
  v6[2] = v3;
  v6[3] = v4;
  v6[0] = v1;
  v6[1] = v2;
  if (v5 != 255)
  {
    sub_2436C9410(v6);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if ((v5 != 255) != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_2436CAEE8();
    return sub_2436C8A4C();
  }

  return result;
}

__n128 sub_2436C8DEC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_2436C8E8C()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit17EMSAlertViewModel__isPresented;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit17EMSAlertViewModel__contents;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED805F8, &unk_2436D3960);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for EMSAlertViewModel()
{
  result = qword_27ED805E0;
  if (!qword_27ED805E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436C8FD4()
{
  sub_2436803AC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2436C90A0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2436C90A0()
{
  if (!qword_27ED805F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED7F770, &qword_2436D2370);
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED805F0);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2436C9134(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2436C917C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_2436C91F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSAlertViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

__n128 sub_2436C9230@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  result = v8;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_2436C92D8(__int128 *a1, uint64_t *a2)
{
  v3 = a1[3];
  v15[2] = a1[2];
  v15[3] = v3;
  v16 = *(a1 + 64);
  v4 = a1[1];
  v15[0] = *a1;
  v15[1] = v4;
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[3];
  v12 = a1[2];
  v13 = v6;
  v14 = *(a1 + 64);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;

  sub_2436C9398(v15, v9);
  sub_2436CAEE8();
  return sub_2436C8CA0();
}

uint64_t sub_2436C9398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F770, &qword_2436D2370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2436C9410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F770, &qword_2436D2370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EMSMonotonicTimestamp.bootIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

ClassroomUIKit::EMSMonotonicTimestamp __swiftcall EMSMonotonicTimestamp.init(bootIdentifier:uptime:)(Swift::String bootIdentifier, Swift::Double uptime)
{
  *v2 = bootIdentifier;
  *(v2 + 16) = uptime;
  result.bootIdentifier = bootIdentifier;
  result.uptime = uptime;
  return result;
}

uint64_t EMSMonotonicTimestamp.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2436CC078();
  MEMORY[0x245D3C000](60, 0xE100000000000000);
  MEMORY[0x245D3C000](0xD000000000000015, 0x80000002436D3950);
  MEMORY[0x245D3C000](0xD000000000000014, 0x80000002436E8710);
  MEMORY[0x245D3C000](v1, v2);
  MEMORY[0x245D3C000](0x656D69747075202CLL, 0xEB00000000203D20);
  sub_2436CBE78();
  MEMORY[0x245D3C000](4095264, 0xE300000000000000);
  return 0;
}

uint64_t sub_2436C95E8()
{
  if (*v0)
  {
    result = 0x656D69747075;
  }

  else
  {
    result = 0x6E656449746F6F62;
  }

  *v0;
  return result;
}

uint64_t sub_2436C962C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656449746F6F62 && a2 == 0xEE00726569666974;
  if (v6 || (sub_2436CC2E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D69747075 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2436CC2E8();

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

uint64_t sub_2436C9724(uint64_t a1)
{
  v2 = sub_2436C9934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2436C9760(uint64_t a1)
{
  v2 = sub_2436C9934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EMSMonotonicTimestamp.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80600, &qword_2436D3988);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2436C9934();
  sub_2436CC3B8();
  v16 = 0;
  v12 = v14;
  sub_2436CC278();
  if (!v12)
  {
    v15 = 1;
    sub_2436CC288();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2436C9934()
{
  result = qword_27ED80608;
  if (!qword_27ED80608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80608);
  }

  return result;
}

uint64_t EMSMonotonicTimestamp.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80610, &qword_2436D3990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2436C9934();
  sub_2436CC3A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v18[15] = 0;
  v11 = sub_2436CC258();
  v13 = v12;
  v14 = v11;
  v18[14] = 1;
  sub_2436CC268();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2436C9BB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2436C9C00(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2436C9C64(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2436CAD38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_2436C9D24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2436CAD38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EMSUserInterfaceRecord()
{
  result = qword_27ED80618;
  if (!qword_27ED80618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2436C9E14()
{
  result = sub_24367A54C();
  if (v1 <= 0x3F)
  {
    result = sub_2436CAD38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2436C9EA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2436C9EE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2436C9F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2436C9F9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_2436CA11C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EMSMonotonicTimestamp.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EMSMonotonicTimestamp.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2436CA4C0()
{
  result = qword_27ED806A8;
  if (!qword_27ED806A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED806A8);
  }

  return result;
}

unint64_t sub_2436CA518()
{
  result = qword_27ED806B0;
  if (!qword_27ED806B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED806B0);
  }

  return result;
}

unint64_t sub_2436CA570()
{
  result = qword_27ED806B8;
  if (!qword_27ED806B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED806B8);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27ED83A58 == -1)
  {
    if (qword_27ED83A60)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27ED83A60)
    {
      goto LABEL_3;
    }
  }

  if (qword_27ED83A50 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27ED83A44 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27ED83A44 >= a3)
      {
        result = dword_27ED83A48 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27ED83A60;
  if (qword_27ED83A60)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27ED83A60 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x245D3C740](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27ED83A44, &dword_27ED83A48);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}